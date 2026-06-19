#include <algorithm>
#include <array>
#include <cassert>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <numeric>
#include <iomanip>
#include <sstream>
#include <stdexcept>
#include <string>
#include <tuple>
#include <unordered_map>
#include <unordered_set>
#include <vector>

using namespace std;

struct Q {
    long long n;
    long long d;

    Q(long long num = 0, long long den = 1) : n(num), d(den) {
        normalize();
    }

    static __int128 abs128(__int128 x) { return x < 0 ? -x : x; }

    static __int128 gcd128(__int128 a, __int128 b) {
        a = abs128(a);
        b = abs128(b);
        while (b != 0) {
            __int128 r = a % b;
            a = b;
            b = r;
        }
        return a == 0 ? 1 : a;
    }

    static long long to_ll(__int128 x) {
        const __int128 lo = static_cast<__int128>(numeric_limits<long long>::min());
        const __int128 hi = static_cast<__int128>(numeric_limits<long long>::max());
        if (x < lo || x > hi) throw runtime_error("rational overflow");
        return static_cast<long long>(x);
    }

    static Q from128(__int128 num, __int128 den) {
        if (den == 0) throw runtime_error("zero denominator");
        if (den < 0) {
            num = -num;
            den = -den;
        }
        __int128 g = gcd128(num, den);
        return Q(to_ll(num / g), to_ll(den / g));
    }

    void normalize() {
        if (d == 0) throw runtime_error("zero denominator");
        if (d < 0) {
            n = -n;
            d = -d;
        }
        long long g = std::gcd(n < 0 ? -n : n, d);
        if (g == 0) {
            d = 1;
        } else {
            n /= g;
            d /= g;
        }
    }
};

Q operator+(const Q &a, const Q &b) {
    return Q::from128(static_cast<__int128>(a.n) * b.d + static_cast<__int128>(b.n) * a.d,
                      static_cast<__int128>(a.d) * b.d);
}

Q operator-(const Q &a, const Q &b) {
    return Q::from128(static_cast<__int128>(a.n) * b.d - static_cast<__int128>(b.n) * a.d,
                      static_cast<__int128>(a.d) * b.d);
}

Q operator-(const Q &a) { return Q(-a.n, a.d); }

Q operator*(const Q &a, const Q &b) {
    return Q::from128(static_cast<__int128>(a.n) * b.n, static_cast<__int128>(a.d) * b.d);
}

Q operator/(const Q &a, const Q &b) {
    if (b.n == 0) throw runtime_error("divide by zero");
    return Q::from128(static_cast<__int128>(a.n) * b.d, static_cast<__int128>(a.d) * b.n);
}

bool operator==(const Q &a, const Q &b) { return a.n == b.n && a.d == b.d; }
bool operator!=(const Q &a, const Q &b) { return !(a == b); }
bool operator<(const Q &a, const Q &b) {
    return static_cast<__int128>(a.n) * b.d < static_cast<__int128>(b.n) * a.d;
}
bool operator<=(const Q &a, const Q &b) { return !(b < a); }
bool operator>(const Q &a, const Q &b) { return b < a; }
bool operator>=(const Q &a, const Q &b) { return !(a < b); }

using Vec = array<Q, 3>;
using Mat = array<array<Q, 3>, 3>;
using Vec4 = array<Q, 4>;
using Mat4 = array<array<Q, 4>, 4>;
using VecI = array<int, 3>;
using Lin2 = array<Q, 3>;
using StrictLine = array<Q, 3>;
using MatCode = array<long long, 18>;

struct Aff {
    Mat M;
    Vec b;
};

const vector<string> PAIR_IDS = {"x", "y", "z", "d111", "d11m", "d1m1", "dm11"};
const vector<string> FACE_IDS = {
    "xp", "xm", "yp", "ym", "zp", "zm", "tmmm", "tmmp", "tmpm", "tmpp",
    "tpmm", "tpmp", "tppm", "tppp"
};

const array<VecI, 7> NORMALS_I = {{
    {1, 0, 0}, {0, 1, 0}, {0, 0, 1}, {1, 1, 1},
    {1, 1, -1}, {1, -1, 1}, {-1, 1, 1}
}};

const long long EXPECTED_PAIR_WORDS = 97297200LL;
const long long EXPECTED_IDENTITY_WORDS = 2468088LL;
const long long EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS = 157957632LL;
const long long STARTED_SYMMETRY_PAIR_WORD_CLASSES = 12162150LL;
const long long STARTED_SYMMETRY_TRANSLATION_CHOICE_CLASSES = 19744704LL;
const long long REVERSAL_FIXED_PAIR_WORDS = 720LL;
const long long REVERSAL_PAIR_WORD_CLASSES = (EXPECTED_PAIR_WORDS + REVERSAL_FIXED_PAIR_WORDS) / 2;
const long long REVERSAL_TRANSLATION_CHOICE_CLASSES = EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS / 2;

long long fact_small(int n) {
    long long out = 1;
    for (int i = 2; i <= n; ++i) out *= i;
    return out;
}

long long completion_count(const array<int, 7> &remaining) {
    int total = 0;
    for (int count : remaining) total += count;
    long long out = fact_small(total);
    for (int count : remaining) out /= fact_small(count);
    return out;
}

vector<int> parse_pair_prefix(const string &text) {
    vector<int> out;
    if (text.empty()) return out;
    size_t start = 0;
    while (start <= text.size()) {
        size_t comma = text.find(',', start);
        string part = text.substr(start, comma == string::npos ? string::npos : comma - start);
        if (part.empty()) throw runtime_error("empty prefix item");
        int value = stoi(part);
        if (value < 0 || value >= 7) throw runtime_error("prefix pair id out of range");
        out.push_back(value);
        if (comma == string::npos) break;
        start = comma + 1;
    }
    if (out.size() > 13) throw runtime_error("prefix too long");
    return out;
}

Vec normal_pair(int p) {
    switch (p) {
        case 0: return {Q(1), Q(0), Q(0)};
        case 1: return {Q(0), Q(1), Q(0)};
        case 2: return {Q(0), Q(0), Q(1)};
        case 3: return {Q(1), Q(1), Q(1)};
        case 4: return {Q(1), Q(1), Q(-1)};
        case 5: return {Q(1), Q(-1), Q(1)};
        case 6: return {Q(-1), Q(1), Q(1)};
    }
    throw runtime_error("bad pair");
}

Q offset_pair(int p) {
    return p < 3 ? Q(1) : Q(2);
}

Vec normal_face(int f) {
    switch (f) {
        case 0: return {Q(1), Q(0), Q(0)};
        case 1: return {Q(-1), Q(0), Q(0)};
        case 2: return {Q(0), Q(1), Q(0)};
        case 3: return {Q(0), Q(-1), Q(0)};
        case 4: return {Q(0), Q(0), Q(1)};
        case 5: return {Q(0), Q(0), Q(-1)};
        case 6: return {Q(-1), Q(-1), Q(-1)};
        case 7: return {Q(-1), Q(-1), Q(1)};
        case 8: return {Q(-1), Q(1), Q(-1)};
        case 9: return {Q(-1), Q(1), Q(1)};
        case 10: return {Q(1), Q(-1), Q(-1)};
        case 11: return {Q(1), Q(-1), Q(1)};
        case 12: return {Q(1), Q(1), Q(-1)};
        case 13: return {Q(1), Q(1), Q(1)};
    }
    throw runtime_error("bad face");
}

Q offset_face(int f) {
    return f < 6 ? Q(1) : Q(2);
}

int face_plus(int p) {
    static const int values[7] = {0, 2, 4, 13, 12, 11, 9};
    return values[p];
}

int face_minus(int p) {
    static const int values[7] = {1, 3, 5, 6, 7, 8, 10};
    return values[p];
}

struct Sym {
    bool swap_yz;
    bool neg_y;
    bool neg_z;
};

const array<Sym, 8> STARTED_SYMS = {{
    {false, false, false}, {false, false, true},
    {false, true, false}, {false, true, true},
    {true, false, false}, {true, false, true},
    {true, true, false}, {true, true, true}
}};

VecI sym_vec(const Sym &s, VecI v) {
    if (s.swap_yz) swap(v[1], v[2]);
    if (s.neg_y) v[1] = -v[1];
    if (s.neg_z) v[2] = -v[2];
    return v;
}

pair<int, bool> pair_sign_of_normal(const VecI &v) {
    for (int p = 0; p < 7; ++p) {
        if (v == NORMALS_I[p]) return {p, true};
        if (VecI{-v[0], -v[1], -v[2]} == NORMALS_I[p]) return {p, false};
    }
    throw runtime_error("unknown normal");
}

pair<int, bool> sym_face(const Sym &s, int pair_id, bool positive) {
    VecI v = NORMALS_I[pair_id];
    if (!positive) {
        v[0] = -v[0];
        v[1] = -v[1];
        v[2] = -v[2];
    }
    return pair_sign_of_normal(sym_vec(s, v));
}

int sym_pair(const Sym &s, int pair_id) {
    return sym_face(s, pair_id, true).first;
}

array<int, 13> sym_word(const Sym &s, const array<int, 13> &w) {
    array<int, 13> out{};
    for (int i = 0; i < 13; ++i) out[i] = sym_pair(s, w[i]);
    return out;
}

array<int, 13> reverse_word(const array<int, 13> &w) {
    array<int, 13> out{};
    for (int i = 0; i < 13; ++i) out[i] = w[12 - i];
    return out;
}

bool word_less(const array<int, 13> &a, const array<int, 13> &b) {
    for (int i = 0; i < 13; ++i) {
        if (a[i] != b[i]) return a[i] < b[i];
    }
    return false;
}

bool word_eq(const array<int, 13> &a, const array<int, 13> &b) {
    for (int i = 0; i < 13; ++i) if (a[i] != b[i]) return false;
    return true;
}

string word_key_ints(const array<int, 13> &w) {
    string out;
    for (int i = 0; i < 13; ++i) {
        if (i) out += ",";
        out += to_string(w[i]);
    }
    return out;
}

void signs_for_word_mask(const array<int, 13> &w, int mask, array<int, 13> &signs) {
    array<array<int, 2>, 7> pos{};
    array<int, 7> cnt{};
    for (int i = 0; i < 13; ++i) pos[w[i]][cnt[w[i]]++] = i;
    signs[pos[0][0]] = -1;
    for (int p = 1; p < 7; ++p) {
        int bit = (mask >> (p - 1)) & 1;
        signs[pos[p][0]] = bit ? 1 : -1;
        signs[pos[p][1]] = bit ? -1 : 1;
    }
}

int transported_mask(const Sym &s, const array<int, 13> &w, int mask, array<int, 13> *raw_word_out = nullptr) {
    array<int, 13> signs{};
    signs_for_word_mask(w, mask, signs);
    array<int, 13> raw = sym_word(s, w);
    if (raw_word_out) *raw_word_out = raw;
    array<int, 7> raw_seen{};
    int out = 0;
    for (int i = 0; i < 13; ++i) {
        auto mapped = sym_face(s, w[i], signs[i] > 0);
        int raw_p = mapped.first;
        bool raw_positive = mapped.second;
        if (raw_p != raw[i]) throw runtime_error("raw word/face mismatch");
        if (raw_p > 0 && raw_seen[raw_p] == 0 && raw_positive) out |= 1 << (raw_p - 1);
        raw_seen[raw_p]++;
    }
    return out;
}

pair<array<int, 13>, int> reverse_translation_choice(const array<int, 13> &w, int mask) {
    array<int, 13> signs{};
    signs_for_word_mask(w, mask, signs);
    array<int, 13> raw = reverse_word(w);
    array<int, 7> raw_seen{};
    int out = 0;
    for (int i = 0; i < 13; ++i) {
        int p = raw[i];
        int sign = signs[12 - i];
        if (p == 0) {
            if (sign != -1) throw runtime_error("reversed translation has positive x face");
        } else if (raw_seen[p] == 0 && sign > 0) {
            out |= 1 << (p - 1);
        }
        raw_seen[p]++;
    }
    return {raw, out};
}

string translation_choice_key(const array<int, 13> &w, int mask) {
    return word_key_ints(w) + "|" + to_string(mask);
}

Mat mat_id() {
    Mat I{};
    for (int i = 0; i < 3; ++i) for (int j = 0; j < 3; ++j) I[i][j] = Q(i == j ? 1 : 0);
    return I;
}

Vec vec_zero() { return {Q(0), Q(0), Q(0)}; }

Q dot(const Vec &a, const Vec &b) {
    Q s(0);
    for (int i = 0; i < 3; ++i) s = s + a[i] * b[i];
    return s;
}

Vec vec_add(const Vec &a, const Vec &b) {
    return {a[0] + b[0], a[1] + b[1], a[2] + b[2]};
}

Vec vec_sub(const Vec &a, const Vec &b) {
    return {a[0] - b[0], a[1] - b[1], a[2] - b[2]};
}

Vec vec_scale(const Q &c, const Vec &v) {
    return {c * v[0], c * v[1], c * v[2]};
}

Mat mat_mul(const Mat &A, const Mat &B) {
    Mat C{};
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            Q s(0);
            for (int k = 0; k < 3; ++k) s = s + A[i][k] * B[k][j];
            C[i][j] = s;
        }
    }
    return C;
}

Vec mat_vec(const Mat &A, const Vec &v) {
    Vec r{};
    for (int i = 0; i < 3; ++i) {
        Q s(0);
        for (int k = 0; k < 3; ++k) s = s + A[i][k] * v[k];
        r[i] = s;
    }
    return r;
}

Mat reflection_matrix(const Vec &n) {
    Q nn = dot(n, n);
    Mat R = mat_id();
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            R[i][j] = R[i][j] - Q(2) * n[i] * n[j] / nn;
        }
    }
    return R;
}

Vec reflection_delta(const Vec &n, const Q &c) {
    return vec_scale(Q(2) * c / dot(n, n), n);
}

Aff aff_id() {
    return {mat_id(), vec_zero()};
}

Aff aff_compose(const Aff &A, const Aff &B) {
    return {mat_mul(A.M, B.M), vec_add(mat_vec(A.M, B.b), A.b)};
}

Vec aff_apply(const Aff &A, const Vec &p) {
    return vec_add(mat_vec(A.M, p), A.b);
}

Aff face_reflection(int face) {
    Vec n = normal_face(face);
    return {reflection_matrix(n), reflection_delta(n, offset_face(face))};
}

string qstr(const Q &q) {
    if (q.d == 1) return to_string(q.n);
    return to_string(q.n) + "/" + to_string(q.d);
}

string json_escape(const string &s) {
    string out;
    out.reserve(s.size() + 8);
    for (char c : s) {
        if (c == '\\') out += "\\\\";
        else if (c == '"') out += "\\\"";
        else if (c == '\n') out += "\\n";
        else out.push_back(c);
    }
    return out;
}

string hex64(uint64_t value) {
    static const char *digits = "0123456789abcdef";
    string out(16, '0');
    for (int i = 15; i >= 0; --i) {
        out[i] = digits[value & 0xf];
        value >>= 4;
    }
    return out;
}

string vec_key(const Vec &v) {
    return qstr(v[0]) + "," + qstr(v[1]) + "," + qstr(v[2]);
}

string line_key(const StrictLine &line) {
    return qstr(line[0]) + "," + qstr(line[1]) + "," + qstr(line[2]);
}

string mat_key(const Mat &m) {
    string out;
    for (int i = 0; i < 3; ++i) {
        if (i) out += ";";
        out += vec_key(m[i]);
    }
    return out;
}

MatCode mat_code(const Mat &m) {
    MatCode code{};
    int k = 0;
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            code[k++] = m[i][j].n;
            code[k++] = m[i][j].d;
        }
    }
    return code;
}

struct MatCodeHash {
    size_t operator()(const MatCode &code) const {
        uint64_t h = 1469598103934665603ULL;
        for (long long value : code) {
            uint64_t x = static_cast<uint64_t>(value);
            for (int i = 0; i < 8; ++i) {
                h ^= static_cast<unsigned char>((x >> (8 * i)) & 0xff);
                h *= 1099511628211ULL;
            }
        }
        return static_cast<size_t>(h);
    }
};

string word_json(const array<int, 13> &word) {
    string out = "[";
    for (int i = 0; i < 13; ++i) {
        if (i) out += ",";
        out += "\"" + PAIR_IDS[word[i]] + "\"";
    }
    out += "]";
    return out;
}

string seq_json(const array<int, 14> &seq) {
    string out = "[";
    for (int i = 0; i < 14; ++i) {
        if (i) out += ",";
        out += "\"" + FACE_IDS[seq[i]] + "\"";
    }
    out += "]";
    return out;
}

bool mat_eq(const Mat &A, const Mat &B) {
    for (int i = 0; i < 3; ++i) for (int j = 0; j < 3; ++j) if (A[i][j] != B[i][j]) return false;
    return true;
}

bool vec_eq(const Vec &a, const Vec &b) {
    for (int i = 0; i < 3; ++i) if (a[i] != b[i]) return false;
    return true;
}

vector<vector<Q>> rref(const Mat &A, vector<int> &pivot_cols) {
    vector<vector<Q>> rows(3, vector<Q>(3));
    for (int i = 0; i < 3; ++i) for (int j = 0; j < 3; ++j) rows[i][j] = A[i][j];
    int pivot_row = 0;
    for (int col = 0; col < 3; ++col) {
        int found = -1;
        for (int row = pivot_row; row < 3; ++row) {
            if (rows[row][col] != Q(0)) {
                found = row;
                break;
            }
        }
        if (found < 0) continue;
        swap(rows[pivot_row], rows[found]);
        Q div = rows[pivot_row][col];
        for (int c = 0; c < 3; ++c) rows[pivot_row][c] = rows[pivot_row][c] / div;
        for (int row = 0; row < 3; ++row) {
            if (row == pivot_row || rows[row][col] == Q(0)) continue;
            Q factor = rows[row][col];
            for (int c = 0; c < 3; ++c) rows[row][c] = rows[row][c] - factor * rows[pivot_row][c];
        }
        pivot_cols.push_back(col);
        ++pivot_row;
    }
    return rows;
}

bool fixed_axis(const Mat &M, Vec &axis) {
    Mat A = M;
    for (int i = 0; i < 3; ++i) A[i][i] = A[i][i] - Q(1);
    vector<int> pivots;
    auto rows = rref(A, pivots);
    vector<int> free_cols;
    for (int col = 0; col < 3; ++col) {
        bool pivot = false;
        for (int p : pivots) if (p == col) pivot = true;
        if (!pivot) free_cols.push_back(col);
    }
    if (free_cols.size() != 1) return false;
    int free_col = free_cols[0];
    axis = vec_zero();
    axis[free_col] = Q(1);
    for (size_t row = 0; row < pivots.size(); ++row) axis[pivots[row]] = -rows[row][free_col];
    return true;
}

uint64_t fnv1a(const string &s) {
    uint64_t h = 1469598103934665603ULL;
    for (unsigned char c : s) {
        h ^= c;
        h *= 1099511628211ULL;
    }
    return h;
}

Lin2 lin_const(const Q &c) { return {c, Q(0), Q(0)}; }
Lin2 lin_y() { return {Q(0), Q(1), Q(0)}; }
Lin2 lin_z() { return {Q(0), Q(0), Q(1)}; }

Lin2 lin_add(const Lin2 &a, const Lin2 &b) {
    return {a[0] + b[0], a[1] + b[1], a[2] + b[2]};
}

Lin2 lin_scale(const Q &c, const Lin2 &v) {
    return {c * v[0], c * v[1], c * v[2]};
}

StrictLine lt_constraint(const Lin2 &lhs, const Lin2 &rhs) {
    return {lhs[1] - rhs[1], lhs[2] - rhs[2], rhs[0] - lhs[0]};
}

Lin2 lin_dot_vec3(const Vec &n, const array<Lin2, 3> &point) {
    return lin_add(lin_add(lin_scale(n[0], point[0]), lin_scale(n[1], point[1])),
                   lin_scale(n[2], point[2]));
}

array<Lin2, 3> translation_line_point_lin(const Vec &b, const Lin2 &t) {
    return {
        lin_add(lin_const(Q(1)), lin_scale(b[0], t)),
        lin_add(lin_y(), lin_scale(b[1], t)),
        lin_add(lin_z(), lin_scale(b[2], t)),
    };
}

bool line_less(const StrictLine &a, const StrictLine &b) {
    for (int i = 0; i < 3; ++i) {
        if (a[i] == b[i]) continue;
        return a[i] < b[i];
    }
    return false;
}

bool line_eq(const StrictLine &a, const StrictLine &b) {
    return a[0] == b[0] && a[1] == b[1] && a[2] == b[2];
}

StrictLine normalize_line(const StrictLine &line) {
    long long den = 1;
    for (const Q &q : line) den = std::lcm(den, q.d);
    array<long long, 3> ints{};
    long long content = 0;
    for (int i = 0; i < 3; ++i) {
        ints[i] = Q::to_ll(static_cast<__int128>(line[i].n) * (den / line[i].d));
        content = std::gcd(content, ints[i] < 0 ? -ints[i] : ints[i]);
    }
    if (content == 0) return line;
    return {Q(ints[0] / content), Q(ints[1] / content), Q(ints[2] / content)};
}

StrictLine weighted_sum_constraints(
    const vector<StrictLine> &constraints,
    const vector<pair<int, Q>> &terms
) {
    StrictLine total{Q(0), Q(0), Q(0)};
    for (const auto &[index, multiplier] : terms) {
        for (int i = 0; i < 3; ++i) total[i] = total[i] + multiplier * constraints[index][i];
    }
    return total;
}

bool check_farkas(const vector<StrictLine> &constraints, const vector<pair<int, Q>> &terms) {
    if (terms.empty()) return false;
    bool positive = false;
    for (const auto &[index, multiplier] : terms) {
        if (index < 0 || index >= static_cast<int>(constraints.size())) return false;
        if (multiplier < Q(0)) return false;
        if (multiplier > Q(0)) positive = true;
    }
    if (!positive) return false;
    StrictLine total = weighted_sum_constraints(constraints, terms);
    return total[0] == Q(0) && total[1] == Q(0) && total[2] <= Q(0);
}

vector<pair<int, Q>> normalize_farkas_terms(const vector<pair<int, Q>> &terms) {
    unordered_map<int, Q> combined;
    for (const auto &[index, multiplier] : terms) {
        auto it = combined.find(index);
        if (it == combined.end()) combined.emplace(index, multiplier);
        else it->second = it->second + multiplier;
    }
    vector<pair<int, Q>> normalized;
    for (const auto &[index, multiplier] : combined) {
        if (multiplier != Q(0)) normalized.push_back({index, multiplier});
    }
    sort(normalized.begin(), normalized.end(),
         [](const auto &a, const auto &b) { return a.first < b.first; });
    if (normalized.empty()) return normalized;
    long long den = 1;
    for (const auto &[_, multiplier] : normalized) den = std::lcm(den, multiplier.d);
    long long content = 0;
    for (const auto &[_, multiplier] : normalized) {
        long long value = Q::to_ll(static_cast<__int128>(multiplier.n) * (den / multiplier.d));
        content = std::gcd(content, value < 0 ? -value : value);
    }
    if (content == 0) return normalized;
    Q content_q(content, den);
    for (auto &[_, multiplier] : normalized) multiplier = multiplier / content_q;
    return normalized;
}

string farkas_terms_key(const vector<pair<int, Q>> &terms) {
    string out;
    for (size_t i = 0; i < terms.size(); ++i) {
        if (i) out += "|";
        out += to_string(terms[i].first) + ":" + qstr(terms[i].second);
    }
    return out;
}

bool find_sparse_farkas(
    const vector<StrictLine> &constraints,
    vector<pair<int, Q>> &out
) {
    int n = static_cast<int>(constraints.size());
    for (int i = 0; i < n; ++i) {
        for (int j = i + 1; j < n; ++j) {
            Q a1 = constraints[i][0], b1 = constraints[i][1];
            Q a2 = constraints[j][0], b2 = constraints[j][1];
            if (a1 * b2 - b1 * a2 != Q(0)) continue;
            Q first(1), second(0);
            if (a2 != Q(0)) second = -a1 / a2;
            else if (b2 != Q(0)) second = -b1 / b2;
            else continue;
            vector<pair<int, Q>> terms{{i, first}, {j, second}};
            if (first > Q(0) && second > Q(0) && check_farkas(constraints, terms)) {
                out = normalize_farkas_terms(terms);
                return true;
            }
        }
    }
    for (int i = 0; i < n; ++i) {
        for (int j = i + 1; j < n; ++j) {
            for (int k = j + 1; k < n; ++k) {
                Q a1 = constraints[i][0], b1 = constraints[i][1];
                Q a2 = constraints[j][0], b2 = constraints[j][1];
                Q a3 = constraints[k][0], b3 = constraints[k][1];
                array<Q, 3> values{
                    b2 * a3 - a2 * b3,
                    a1 * b3 - b1 * a3,
                    b1 * a2 - a1 * b2,
                };
                if (values[0] == Q(0) && values[1] == Q(0) && values[2] == Q(0)) continue;
                bool all_nonnegative = values[0] >= Q(0) && values[1] >= Q(0) && values[2] >= Q(0);
                bool all_nonpositive = values[0] <= Q(0) && values[1] <= Q(0) && values[2] <= Q(0);
                if (!all_nonnegative && !all_nonpositive) continue;
                if (all_nonpositive) {
                    values[0] = -values[0];
                    values[1] = -values[1];
                    values[2] = -values[2];
                }
                vector<pair<int, Q>> terms;
                if (values[0] != Q(0)) terms.push_back({i, values[0]});
                if (values[1] != Q(0)) terms.push_back({j, values[1]});
                if (values[2] != Q(0)) terms.push_back({k, values[2]});
                if (check_farkas(constraints, terms)) {
                    out = normalize_farkas_terms(terms);
                    return true;
                }
            }
        }
    }
    return false;
}

vector<vector<Q>> invert_square_q(vector<vector<Q>> rows) {
    int n = static_cast<int>(rows.size());
    vector<vector<Q>> aug(n, vector<Q>(2 * n));
    for (int i = 0; i < n; ++i) {
        if (static_cast<int>(rows[i].size()) != n) throw runtime_error("bad square matrix");
        for (int j = 0; j < n; ++j) aug[i][j] = rows[i][j];
        for (int j = 0; j < n; ++j) aug[i][n + j] = Q(i == j ? 1 : 0);
    }
    for (int col = 0; col < n; ++col) {
        int pivot = -1;
        for (int row = col; row < n; ++row) {
            if (aug[row][col] != Q(0)) {
                pivot = row;
                break;
            }
        }
        if (pivot < 0) throw runtime_error("singular matrix inverse");
        if (pivot != col) swap(aug[pivot], aug[col]);
        Q div = aug[col][col];
        for (int c = col; c < 2 * n; ++c) aug[col][c] = aug[col][c] / div;
        for (int row = 0; row < n; ++row) {
            if (row == col || aug[row][col] == Q(0)) continue;
            Q factor = aug[row][col];
            for (int c = col; c < 2 * n; ++c) {
                aug[row][c] = aug[row][c] - factor * aug[col][c];
            }
        }
    }
    vector<vector<Q>> inv(n, vector<Q>(n));
    for (int i = 0; i < n; ++i) for (int j = 0; j < n; ++j) inv[i][j] = aug[i][n + j];
    return inv;
}

Mat fixed_part(const Mat &M) {
    Mat out{};
    Mat I = mat_id();
    for (int i = 0; i < 3; ++i) for (int j = 0; j < 3; ++j) out[i][j] = M[i][j] - I[i][j];
    return out;
}

Mat transpose(const Mat &M) {
    Mat out{};
    for (int i = 0; i < 3; ++i) for (int j = 0; j < 3; ++j) out[i][j] = M[j][i];
    return out;
}

Mat cross_left(const Vec &axis) {
    return {{
        {Q(0), -axis[2], axis[1]},
        {axis[2], Q(0), -axis[0]},
        {-axis[1], axis[0], Q(0)}
    }};
}

Mat mat3_inverse(const Mat &M) {
    vector<vector<Q>> rows(3, vector<Q>(3));
    for (int i = 0; i < 3; ++i) for (int j = 0; j < 3; ++j) rows[i][j] = M[i][j];
    auto inv = invert_square_q(rows);
    Mat out{};
    for (int i = 0; i < 3; ++i) for (int j = 0; j < 3; ++j) out[i][j] = inv[i][j];
    if (!mat_eq(mat_mul(out, M), mat_id())) throw runtime_error("mat3 inverse self-check failed");
    return out;
}

Mat4 mat4_id() {
    Mat4 out{};
    for (int i = 0; i < 4; ++i) for (int j = 0; j < 4; ++j) out[i][j] = Q(i == j ? 1 : 0);
    return out;
}

Mat4 mat4_mul(const Mat4 &A, const Mat4 &B) {
    Mat4 C{};
    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            Q s(0);
            for (int k = 0; k < 4; ++k) s = s + A[i][k] * B[k][j];
            C[i][j] = s;
        }
    }
    return C;
}

Vec4 mat4_vec(const Mat4 &A, const Vec4 &v) {
    Vec4 out{};
    for (int i = 0; i < 4; ++i) {
        Q s(0);
        for (int k = 0; k < 4; ++k) s = s + A[i][k] * v[k];
        out[i] = s;
    }
    return out;
}

Mat4 mat4_inverse(const Mat4 &M) {
    vector<vector<Q>> rows(4, vector<Q>(4));
    for (int i = 0; i < 4; ++i) for (int j = 0; j < 4; ++j) rows[i][j] = M[i][j];
    auto inv = invert_square_q(rows);
    Mat4 out{};
    for (int i = 0; i < 4; ++i) for (int j = 0; j < 4; ++j) out[i][j] = inv[i][j];
    if (mat4_mul(out, M) != mat4_id()) throw runtime_error("mat4 inverse self-check failed");
    return out;
}

Vec solve_linear_system3(const Mat &A, const Vec &b) {
    array<array<Q, 4>, 3> rows{};
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) rows[i][j] = A[i][j];
        rows[i][3] = b[i];
    }
    vector<int> pivot_cols;
    int pivot_row = 0;
    for (int col = 0; col < 3; ++col) {
        int found = -1;
        for (int row = pivot_row; row < 3; ++row) {
            if (rows[row][col] != Q(0)) {
                found = row;
                break;
            }
        }
        if (found < 0) continue;
        if (found != pivot_row) swap(rows[found], rows[pivot_row]);
        Q div = rows[pivot_row][col];
        for (int c = col; c < 4; ++c) rows[pivot_row][c] = rows[pivot_row][c] / div;
        for (int row = 0; row < 3; ++row) {
            if (row == pivot_row || rows[row][col] == Q(0)) continue;
            Q factor = rows[row][col];
            for (int c = col; c < 4; ++c) rows[row][c] = rows[row][c] - factor * rows[pivot_row][c];
        }
        pivot_cols.push_back(col);
        ++pivot_row;
    }
    for (int row = pivot_row; row < 3; ++row) {
        if (rows[row][0] == Q(0) && rows[row][1] == Q(0) && rows[row][2] == Q(0) && rows[row][3] != Q(0)) {
            throw runtime_error("inconsistent linear system");
        }
    }
    Vec solution = vec_zero();
    for (size_t row = 0; row < pivot_cols.size(); ++row) solution[pivot_cols[row]] = rows[row][3];
    return solution;
}

Mat kernel_line_cross_factor(const Mat &M, const Vec &axis) {
    Mat fixed = fixed_part(M);
    Mat fixed_t = transpose(fixed);
    Mat target = cross_left(axis);
    Mat out{};
    for (int r = 0; r < 3; ++r) out[r] = solve_linear_system3(fixed_t, target[r]);
    if (!mat_eq(mat_mul(out, fixed), target)) throw runtime_error("kernel factor self-check failed");
    return out;
}

void put_uvarint(vector<unsigned char> &out, uint64_t value) {
    while (value >= 128) {
        out.push_back(static_cast<unsigned char>((value & 0x7f) | 0x80));
        value >>= 7;
    }
    out.push_back(static_cast<unsigned char>(value));
}

void put_sint(vector<unsigned char> &out, long long value) {
    uint64_t encoded;
    if (value >= 0) encoded = static_cast<uint64_t>(value) * 2ULL;
    else encoded = static_cast<uint64_t>(-value) * 2ULL - 1ULL;
    put_uvarint(out, encoded);
}

void put_rat(vector<unsigned char> &out, const Q &q) {
    put_sint(out, q.n);
    put_uvarint(out, static_cast<uint64_t>(q.d));
}

void put_vec3(vector<unsigned char> &out, const Vec &v) {
    for (const Q &q : v) put_rat(out, q);
}

void put_mat3(vector<unsigned char> &out, const Mat &M) {
    for (const auto &row : M) for (const Q &q : row) put_rat(out, q);
}

void put_mat4(vector<unsigned char> &out, const Mat4 &M) {
    for (const auto &row : M) for (const Q &q : row) put_rat(out, q);
}

string base64_encode(const vector<unsigned char> &data) {
    static const char *alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    string out;
    out.reserve(((data.size() + 2) / 3) * 4);
    for (size_t i = 0; i < data.size(); i += 3) {
        uint32_t a = data[i];
        uint32_t b = i + 1 < data.size() ? data[i + 1] : 0;
        uint32_t c = i + 2 < data.size() ? data[i + 2] : 0;
        uint32_t triple = (a << 16) | (b << 8) | c;
        out.push_back(alphabet[(triple >> 18) & 0x3f]);
        out.push_back(alphabet[(triple >> 12) & 0x3f]);
        out.push_back(i + 1 < data.size() ? alphabet[(triple >> 6) & 0x3f] : '=');
        out.push_back(i + 2 < data.size() ? alphabet[triple & 0x3f] : '=');
    }
    return out;
}

struct Sample {
    long long rank = 0;
    int mask = -1;
    array<int, 13> word{};
    array<int, 14> seq{};
    bool has_seq = false;
};

struct Group {
    string key;
    string failure;
    long long count = 0;
    vector<Sample> samples;
};

struct HistEntry {
    long long count = 0;
    string preview;
};

using HistMap = unordered_map<uint64_t, HistEntry>;

struct ChunkInfo {
    int index = 0;
    long long cert_count = 0;
    long long first_rank = 0;
    int first_mask = -1;
    long long last_rank = 0;
    int last_mask = -1;
    size_t raw_bytes = 0;
};

struct KeyedPackedChunkEmitter {
    string magic;
    string output_dir;
    long long expected_total = 0;
    bool check_expected_total = true;
    size_t target_raw_bytes = 6 * 1024 * 1024;
    vector<vector<unsigned char>> records;
    vector<pair<long long, int>> keys;
    size_t current_record_bytes = 0;
    long long total_certs = 0;
    vector<ChunkInfo> chunks;

    string chunk_path(int index) const {
        ostringstream name;
        name << output_dir << "/Chunk" << setw(4) << setfill('0') << index << ".b64";
        return name.str();
    }

    vector<unsigned char> build_blob() const {
        vector<unsigned char> metadata;
        put_uvarint(metadata, 2);
        put_uvarint(metadata, records.size());
        put_uvarint(metadata, static_cast<uint64_t>(expected_total));

        vector<unsigned char> cert_payload;
        put_uvarint(cert_payload, records.size());
        for (const auto &record : records) cert_payload.insert(cert_payload.end(), record.begin(), record.end());

        vector<pair<uint64_t, vector<unsigned char>>> sections{{1, metadata}, {2, cert_payload}};
        vector<unsigned char> blob;
        for (char c : magic) blob.push_back(static_cast<unsigned char>(c));
        blob.push_back(1);
        put_uvarint(blob, sections.size());
        for (const auto &[id, payload] : sections) {
            put_uvarint(blob, id);
            put_uvarint(blob, payload.size());
        }
        for (const auto &[_, payload] : sections) blob.insert(blob.end(), payload.begin(), payload.end());
        return blob;
    }

    void flush() {
        if (records.empty()) return;
        int index = static_cast<int>(chunks.size());
        vector<unsigned char> blob = build_blob();
        string text = base64_encode(blob);
        ofstream out(chunk_path(index), ios::binary);
        if (!out) throw runtime_error("failed to open chunk output: " + chunk_path(index));
        out << text;
        out.close();
        if (!out) throw runtime_error("failed to write chunk output: " + chunk_path(index));
        chunks.push_back({
            index,
            static_cast<long long>(records.size()),
            keys.front().first,
            keys.front().second,
            keys.back().first,
            keys.back().second,
            blob.size()
        });
        total_certs += static_cast<long long>(records.size());
        records.clear();
        keys.clear();
        current_record_bytes = 0;
    }

    void add_record(vector<unsigned char> record, long long rank, int mask = -1) {
        if (!records.empty() && current_record_bytes + record.size() >= target_raw_bytes) flush();
        current_record_bytes += record.size();
        records.push_back(std::move(record));
        keys.push_back({rank, mask});
    }

    void finish() {
        flush();
        if (check_expected_total && total_certs != expected_total) {
            throw runtime_error("packed emitter count mismatch for " + magic +
                ": " + to_string(total_certs) + " != " + to_string(expected_total));
        }
    }
};

struct AxisInfo {
    bool has_axis = false;
    Vec axis{};
};

struct Profiler {
    Mat I = mat_id();
    array<Mat, 7> RPAIR{};
    array<Vec, 7> DCAN{};
    array<Aff, 14> FACE_REFLECTIONS{};
    array<int, 13> word{};
    array<int, 7> rem{};
    array<Mat, 14> pref{};
    long long limit = -1;
    long long rank_start = 0;
    long long rank_end = -1;
    long long leaves = 0;
    long long identity = 0;
    long long nonidentity = 0;
    long long translation_assignments = 0;
    long long rank = 0;
    bool with_symmetry = false;
    bool with_reversal = false;
    bool exact_state_groups = false;
    bool exact_state_groups_formula = false;
    bool suppress_progress = false;
    bool aggregate_compression_profile = false;
    bool emit_full_fallback = false;
    KeyedPackedChunkEmitter nonid_residual_emitter;
    KeyedPackedChunkEmitter translation_farkas_emitter;
    array<Group, 4> nonid_groups{};
    array<Group, 3> translation_groups{};
    array<unordered_set<string>, 4> nonid_state_keys{};
    array<unordered_set<string>, 3> translation_state_keys{};
    unordered_set<uint64_t> farkas_hashes;
    HistMap aggregate_nonid_shapes;
    HistMap aggregate_bad_translation_shapes;
    HistMap aggregate_constraint_systems;
    unordered_map<uint64_t, uint64_t> aggregate_constraint_to_farkas;
    HistMap aggregate_farkas_shapes;
    HistMap aggregate_unresolved_constraint_systems;
    long long aggregate_constraint_cases = 0;
    long long aggregate_farkas_cases = 0;
    long long aggregate_unresolved_farkas_cases = 0;
    bool residual_subtype_profile = false;
    array<long long, 4> residual_subtype_counts{};
    array<vector<Sample>, 4> residual_subtype_samples{};
    unordered_map<string, AxisInfo> axis_cache;
    unordered_map<MatCode, AxisInfo, MatCodeHash> axis_cache_fast;
    vector<Sample> top_samples;
    long long compressed_nonidentity_linear_groups = 0;
    long long symmetry_pair_word_classes = 0;
    long long symmetry_translation_choice_classes = 0;
    long long reversal_pair_word_classes = 0;
    long long reversal_translation_choice_classes = 0;
    long long combined_pair_word_classes = 0;
    long long combined_translation_choice_classes = 0;
    int max_symmetry_pair_orbit = 0;
    int max_symmetry_translation_orbit = 0;
    int max_reversal_pair_orbit = 0;
    int max_reversal_translation_orbit = 0;
    int max_combined_pair_orbit = 0;
    int max_combined_translation_orbit = 0;
    chrono::steady_clock::time_point start = chrono::steady_clock::now();

    Profiler() {
        for (int p = 0; p < 7; ++p) {
            Vec n = normal_pair(p);
            RPAIR[p] = reflection_matrix(n);
            DCAN[p] = reflection_delta(n, offset_pair(p));
        }
        for (int f = 0; f < 14; ++f) FACE_REFLECTIONS[f] = face_reflection(f);
        rem = {1, 2, 2, 2, 2, 2, 2};
        pref[0] = I;
        nonid_groups[0].key = "case=nonidentity;failure=noFixedAxis";
        nonid_groups[0].failure = "noFixedAxis";
        nonid_groups[1].key = "case=nonidentity;failure=badDirectionSign";
        nonid_groups[1].failure = "badDirectionSign";
        nonid_groups[2].key = "case=nonidentity;failure=badPairBalance";
        nonid_groups[2].failure = "badPairBalance";
        nonid_groups[3].key = "case=nonidentity;failure=needsAxisSolveOrSimulation";
        nonid_groups[3].failure = "needsAxisSolveOrSimulation";
        translation_groups[0].key = "case=translation;failure=badTranslationVector";
        translation_groups[0].failure = "badTranslationVector";
        translation_groups[1].key = "case=translation;failure=badDirectionSign";
        translation_groups[1].failure = "badDirectionSign";
        translation_groups[2].key = "case=translation;failure=needsFarkas";
        translation_groups[2].failure = "needsFarkas";
    }

    bool complete_run() const {
        return limit < 0 && rank_start == 0 && rank_end < 0;
    }

    long long prefix_start_rank(const vector<int> &prefix) const {
        array<int, 7> remaining{1, 2, 2, 2, 2, 2, 2};
        long long start = 0;
        for (int pair_id : prefix) {
            if (pair_id < 0 || pair_id >= 7 || remaining[pair_id] <= 0) {
                throw runtime_error("invalid pair prefix");
            }
            for (int smaller = 0; smaller < pair_id; ++smaller) {
                if (remaining[smaller] <= 0) continue;
                --remaining[smaller];
                start += completion_count(remaining);
                ++remaining[smaller];
            }
            --remaining[pair_id];
        }
        return start;
    }

    void apply_prefix(const vector<int> &prefix) {
        rem = {1, 2, 2, 2, 2, 2, 2};
        pref[0] = I;
        for (size_t i = 0; i < prefix.size(); ++i) {
            int pair_id = prefix[i];
            if (pair_id < 0 || pair_id >= 7 || rem[pair_id] <= 0) {
                throw runtime_error("invalid pair prefix");
            }
            --rem[pair_id];
            word[i] = pair_id;
            pref[i + 1] = mat_mul(pref[i], RPAIR[pair_id]);
        }
        rank = prefix_start_rank(prefix);
    }

    void add_sample(Group &g, int mask = -1, const array<int, 14> *seq = nullptr) {
        if (g.samples.size() >= 3) return;
        Sample s;
        s.rank = rank;
        s.mask = mask;
        s.word = word;
        if (seq) {
            s.seq = *seq;
            s.has_seq = true;
        }
        g.samples.push_back(s);
    }

    void add_top_sample() {
        if (top_samples.size() >= 32) return;
        Sample s;
        s.rank = rank;
        s.word = word;
        top_samples.push_back(s);
    }

    void bump_hist(HistMap &m, const string &key, long long amount = 1) {
        uint64_t hash = fnv1a(key);
        auto it = m.find(hash);
        if (it == m.end()) {
            string preview = key.size() > 160 ? key.substr(0, 160) + "..." : key;
            m.emplace(hash, HistEntry{amount, preview});
        } else {
            it->second.count += amount;
        }
    }

    void bump_hist_hash(HistMap &m, uint64_t hash, const string &preview = "", long long amount = 1) {
        auto it = m.find(hash);
        if (it == m.end()) {
            string stored = preview.size() > 160 ? preview.substr(0, 160) + "..." : preview;
            m.emplace(hash, HistEntry{amount, stored});
        } else {
            it->second.count += amount;
        }
    }

    Q final_axis_dot(const Vec &axis) {
        return dot(mat_vec(pref[13], normal_pair(0)), axis);
    }

    string sign_pattern_key(const Vec &axis) {
        string out;
        out.reserve(13);
        for (int i = 0; i < 13; ++i) {
            Q d = dot(mat_vec(pref[i], normal_pair(word[i])), axis);
            if (d > Q(0)) out.push_back('+');
            else if (d < Q(0)) out.push_back('-');
            else out.push_back('0');
        }
        return out;
    }

    int first_axis_zero(const Vec &axis) {
        for (int i = 0; i < 13; ++i) {
            Q d = dot(mat_vec(pref[i], normal_pair(word[i])), axis);
            if (d == Q(0)) return i;
        }
        return -1;
    }

    array<int, 14> forced_seq(const Vec &axis) {
        array<int, 14> seq{};
        seq[0] = 0;
        for (int i = 0; i < 13; ++i) {
            Q d = dot(mat_vec(pref[i], normal_pair(word[i])), axis);
            seq[i + 1] = d > Q(0) ? face_plus(word[i]) : face_minus(word[i]);
        }
        return seq;
    }

    bool seq_omni(const array<int, 14> &seq) {
        bool seen[14] = {};
        for (int f : seq) {
            if (seen[f]) return false;
            seen[f] = true;
        }
        return true;
    }

    Mat4 axis_solve_matrix(const Aff &A, const Vec &axis) {
        Mat4 m{};
        for (int r = 0; r < 3; ++r) {
            for (int c = 0; c < 3; ++c) m[r][c] = A.M[r][c] - I[r][c];
            m[r][3] = -axis[r];
        }
        m[3][0] = Q(1);
        m[3][1] = Q(0);
        m[3][2] = Q(0);
        m[3][3] = Q(0);
        return m;
    }

    Vec4 axis_solve_rhs(const Aff &A) {
        return {-A.b[0], -A.b[1], -A.b[2], Q(1)};
    }

    Vec4 solve4(Mat4 m, Vec4 rhs) {
        array<array<Q, 5>, 4> aug{};
        for (int r = 0; r < 4; ++r) {
            for (int c = 0; c < 4; ++c) aug[r][c] = m[r][c];
            aug[r][4] = rhs[r];
        }
        for (int col = 0; col < 4; ++col) {
            int pivot = -1;
            for (int row = col; row < 4; ++row) {
                if (aug[row][col] != Q(0)) {
                    pivot = row;
                    break;
                }
            }
            if (pivot < 0) throw runtime_error("singular 4x4 axis solve");
            if (pivot != col) swap(aug[pivot], aug[col]);
            Q div = aug[col][col];
            for (int c = col; c < 5; ++c) aug[col][c] = aug[col][c] / div;
            for (int row = 0; row < 4; ++row) {
                if (row == col || aug[row][col] == Q(0)) continue;
                Q factor = aug[row][col];
                for (int c = col; c < 5; ++c) {
                    aug[row][c] = aug[row][c] - factor * aug[col][c];
                }
            }
        }
        return {aug[0][4], aug[1][4], aug[2][4], aug[3][4]};
    }

    Aff total_aff(const array<int, 14> &seq) {
        Aff T = aff_id();
        for (int i = 1; i < 14; ++i) T = aff_compose(T, FACE_REFLECTIONS[seq[i]]);
        T = aff_compose(T, FACE_REFLECTIONS[seq[0]]);
        return T;
    }

    bool xp_start_interior(const Vec &p) {
        return p[0] == Q(1) &&
            p[1] + p[2] < Q(1) &&
            p[1] - p[2] < Q(1) &&
            -p[1] + p[2] < Q(1) &&
            -p[1] - p[2] < Q(1);
    }

    Q candidate_impact_time(
        const array<int, 14> &seq,
        const array<Aff, 14> &prefixes,
        const Vec &p0,
        const Vec &w,
        int impact
    ) {
        if (impact == 0) return Q(0);
        if (impact == 14) return Q(1);
        auto [normal, offset] = copied_normal_offset(prefixes, impact, impact_face(seq, impact));
        Q denom = dot(normal, w);
        if (denom == Q(0)) throw runtime_error("candidate impact denominator is zero");
        return (offset - dot(normal, p0)) / denom;
    }

    int first_bad_candidate_ordering(const array<int, 14> &seq, const Vec &p0, const Vec &w) {
        auto prefixes = path_prefix_affs(seq);
        array<Q, 15> times{};
        for (int impact = 0; impact <= 14; ++impact) {
            times[impact] = candidate_impact_time(seq, prefixes, p0, w, impact);
        }
        for (int step = 0; step < 14; ++step) {
            if (times[step + 1] <= times[step]) return step;
        }
        return -1;
    }

    int first_bad_candidate_interior(const array<int, 14> &seq, const Vec &p0, const Vec &w) {
        auto prefixes = path_prefix_affs(seq);
        for (int impact = 0; impact <= 14; ++impact) {
            int hit = impact_face(seq, impact);
            Q t = candidate_impact_time(seq, prefixes, p0, w, impact);
            Vec point = vec_add(p0, vec_scale(t, w));
            for (int face = 0; face < 14; ++face) {
                if (face == hit) continue;
                auto [copied, offset] = copied_normal_offset(prefixes, impact, face);
                if (offset <= dot(copied, point)) return impact;
            }
        }
        return -1;
    }

    pair<int, int> first_bad_candidate_interior_face(const array<int, 14> &seq, const Vec &p0, const Vec &w) {
        auto prefixes = path_prefix_affs(seq);
        for (int impact = 0; impact <= 14; ++impact) {
            int hit = impact_face(seq, impact);
            Q t = candidate_impact_time(seq, prefixes, p0, w, impact);
            Vec point = vec_add(p0, vec_scale(t, w));
            for (int face = 0; face < 14; ++face) {
                if (face == hit) continue;
                auto [copied, offset] = copied_normal_offset(prefixes, impact, face);
                if (offset <= dot(copied, point)) return {impact, face};
            }
        }
        return {-1, -1};
    }

    int residual_subtype_index(const array<int, 14> &seq, const Vec &axis) {
        Aff A = total_aff(seq);
        Mat4 solve_matrix = axis_solve_matrix(A, axis);
        Vec4 solution = solve4(solve_matrix, axis_solve_rhs(A));
        Vec p0 = {solution[0], solution[1], solution[2]};
        if (!xp_start_interior(p0)) return 0;
        Vec w = vec_sub(aff_apply(A, p0), p0);
        if (first_bad_candidate_ordering(seq, p0, w) >= 0) return 1;
        if (first_bad_candidate_interior(seq, p0, w) >= 0) return 2;
        return 3;
    }

    void record_residual_subtype(const array<int, 14> &seq, const Vec &axis) {
        int idx = residual_subtype_index(seq, axis);
        ++residual_subtype_counts[idx];
        if (residual_subtype_samples[idx].size() < 3) {
            Sample s;
            s.rank = rank;
            s.word = word;
            s.seq = seq;
            s.has_seq = true;
            residual_subtype_samples[idx].push_back(s);
        }
    }

    vector<unsigned char> compact_nonid_residual_record(const Mat &M, const array<int, 14> &seq, const Vec &axis) {
        Aff A = total_aff(seq);
        Mat4 solve_matrix = axis_solve_matrix(A, axis);
        Mat4 solve_inverse = mat4_inverse(solve_matrix);
        Vec4 solution = mat4_vec(solve_inverse, axis_solve_rhs(A));
        if (mat4_vec(solve_matrix, solution) != axis_solve_rhs(A)) {
            throw runtime_error("axis solution self-check failed");
        }
        Vec p0{solution[0], solution[1], solution[2]};
        Q lambda = solution[3];
        Mat kernel = kernel_line_cross_factor(M, axis);

        vector<unsigned char> out;
        put_uvarint(out, static_cast<uint64_t>(rank));
        for (int p : word) put_uvarint(out, static_cast<uint64_t>(p));
        put_vec3(out, axis);
        put_mat3(out, kernel);
        for (int face : seq) put_uvarint(out, static_cast<uint64_t>(face));
        put_vec3(out, p0);
        put_rat(out, lambda);
        put_mat4(out, solve_inverse);

        if (!xp_start_interior(p0)) {
            put_uvarint(out, 0);
        } else {
            Vec w = vec_sub(aff_apply(A, p0), p0);
            int bad_step = first_bad_candidate_ordering(seq, p0, w);
            if (bad_step >= 0) {
                put_uvarint(out, 1);
                put_uvarint(out, static_cast<uint64_t>(bad_step));
            } else {
                auto [impact, bad_face] = first_bad_candidate_interior_face(seq, p0, w);
                if (impact < 0) throw runtime_error("residual case has no supported failure");
                put_uvarint(out, 2);
                put_uvarint(out, static_cast<uint64_t>(impact));
                put_uvarint(out, static_cast<uint64_t>(bad_face));
            }
        }
        return out;
    }

    void emit_nonid_residual_record(const Mat &M, const array<int, 14> &seq, const Vec &axis) {
        nonid_residual_emitter.add_record(
            compact_nonid_residual_record(M, seq, axis),
            rank,
            -1);
    }

    void process_nonidentity(const Mat &M) {
        ++nonidentity;
        if (emit_full_fallback) {
            MatCode code = mat_code(M);
            auto it = axis_cache_fast.find(code);
            if (it == axis_cache_fast.end()) {
                AxisInfo info;
                info.has_axis = fixed_axis(M, info.axis);
                it = axis_cache_fast.emplace(code, info).first;
            }
            if (!it->second.has_axis) {
                ++nonid_groups[0].count;
                return;
            }
            Vec axis = it->second.axis;
            Q fdot = final_axis_dot(axis);
            if (fdot < Q(0)) {
                for (int i = 0; i < 3; ++i) axis[i] = -axis[i];
                fdot = -fdot;
            }
            if (fdot == Q(0) || first_axis_zero(axis) >= 0) {
                ++nonid_groups[1].count;
                return;
            }
            auto seq = forced_seq(axis);
            if (!seq_omni(seq)) {
                ++nonid_groups[2].count;
                return;
            }
            ++nonid_groups[3].count;
            emit_nonid_residual_record(M, seq, axis);
            return;
        }
        string key = mat_key(M);
        auto it = axis_cache.find(key);
        if (it == axis_cache.end()) {
            AxisInfo info;
            info.has_axis = fixed_axis(M, info.axis);
            it = axis_cache.emplace(key, info).first;
        }
        if (!it->second.has_axis) {
            ++nonid_groups[0].count;
            if (emit_full_fallback) return;
            string shape_key = "failure=noFixedAxis;linear=" + key;
            if (aggregate_compression_profile) bump_hist(aggregate_nonid_shapes, shape_key);
            else nonid_state_keys[0].insert(shape_key);
            add_sample(nonid_groups[0]);
            return;
        }
        Vec axis = it->second.axis;
        Q fdot = final_axis_dot(axis);
        if (fdot < Q(0)) {
            for (int i = 0; i < 3; ++i) axis[i] = -axis[i];
            fdot = -fdot;
        }
        if (fdot == Q(0) || first_axis_zero(axis) >= 0) {
            ++nonid_groups[1].count;
            if (emit_full_fallback) return;
            string shape_key = "failure=badDirectionSign;linear=" + key +
                ";axis=" + vec_key(axis) +
                ";forcedSigns=" + sign_pattern_key(axis);
            if (aggregate_compression_profile) bump_hist(aggregate_nonid_shapes, shape_key);
            else nonid_state_keys[1].insert(shape_key);
            add_sample(nonid_groups[1]);
            return;
        }
        auto seq = forced_seq(axis);
        if (!seq_omni(seq)) {
            ++nonid_groups[2].count;
            if (emit_full_fallback) return;
            string shape_key = "failure=badPairBalance;linear=" + key +
                ";axis=" + vec_key(axis) +
                ";forcedSigns=" + sign_pattern_key(axis) +
                ";forcedSeq=" + seq_json(seq);
            if (aggregate_compression_profile) bump_hist(aggregate_nonid_shapes, shape_key);
            else nonid_state_keys[2].insert(shape_key);
            add_sample(nonid_groups[2], -1, &seq);
            return;
        }
        ++nonid_groups[3].count;
        if (emit_full_fallback) emit_nonid_residual_record(M, seq, axis);
        if (residual_subtype_profile) record_residual_subtype(seq, axis);
        if (emit_full_fallback && !residual_subtype_profile) return;
        string shape_key = "failure=needsAxisSolveOrSimulation;linear=" + key +
            ";axis=" + vec_key(axis) +
            ";forcedSigns=" + sign_pattern_key(axis) +
            ";forcedSeq=" + seq_json(seq);
        if (aggregate_compression_profile) bump_hist(aggregate_nonid_shapes, shape_key);
        else nonid_state_keys[3].insert(shape_key);
        add_sample(nonid_groups[3], -1, &seq);
    }

    void signs_for_mask(int mask, array<int, 13> &signs) {
        array<array<int, 2>, 7> pos{};
        array<int, 7> cnt{};
        for (int i = 0; i < 13; ++i) pos[word[i]][cnt[word[i]]++] = i;
        signs[pos[0][0]] = -1;
        for (int p = 1; p < 7; ++p) {
            int bit = (mask >> (p - 1)) & 1;
            signs[pos[p][0]] = bit ? 1 : -1;
            signs[pos[p][1]] = bit ? -1 : 1;
        }
    }

    Vec translation_vector(int mask, array<int, 14> &seq) {
        array<int, 13> signs{};
        signs_for_mask(mask, signs);
        Vec b = vec_zero();
        seq[0] = 0;
        for (int i = 0; i < 13; ++i) {
            Vec delta = vec_scale(Q(signs[i]), mat_vec(pref[i], DCAN[word[i]]));
            b = vec_add(b, delta);
            seq[i + 1] = signs[i] > 0 ? face_plus(word[i]) : face_minus(word[i]);
        }
        b = vec_add(b, mat_vec(pref[13], DCAN[0]));
        return b;
    }

    array<Aff, 14> path_prefix_affs(const array<int, 14> &seq) {
        array<Aff, 14> prefixes{};
        prefixes[0] = aff_id();
        for (int i = 1; i < 14; ++i) {
            prefixes[i] = aff_compose(prefixes[i - 1], FACE_REFLECTIONS[seq[i]]);
        }
        return prefixes;
    }

    int impact_face(const array<int, 14> &seq, int impact) {
        return impact < 14 ? seq[impact] : seq[0];
    }

    pair<Vec, Q> copied_normal_offset(const array<Aff, 14> &prefixes, int impact, int face) {
        int idx = impact - 1;
        if (idx < 0) idx = 0;
        if (idx > 13) idx = 13;
        Vec copied = mat_vec(prefixes[idx].M, normal_face(face));
        Q offset = offset_face(face) + dot(copied, prefixes[idx].b);
        return {copied, offset};
    }

    Q impact_denom(const array<int, 14> &seq, const Vec &b, const array<Aff, 14> &prefixes, int impact) {
        auto [normal, offset] = copied_normal_offset(prefixes, impact, impact_face(seq, impact));
        (void)offset;
        return dot(normal, b);
    }

    Lin2 impact_time_lin(
        const array<int, 14> &seq,
        const Vec &b,
        const array<Aff, 14> &prefixes,
        int impact
    ) {
        if (impact == 0) return lin_const(Q(0));
        if (impact == 14) return lin_const(Q(1));
        auto [normal, offset] = copied_normal_offset(prefixes, impact, impact_face(seq, impact));
        Q den = dot(normal, b);
        if (den == Q(0)) throw runtime_error("impact denominator is zero");
        return {(offset - normal[0]) / den, -normal[1] / den, -normal[2] / den};
    }

    vector<StrictLine> translation_constraints(const array<int, 14> &seq, const Vec &b) {
        auto prefixes = path_prefix_affs(seq);
        vector<StrictLine> constraints;
        constraints.reserve(200);
        constraints.push_back({Q(1), Q(1), Q(1)});
        constraints.push_back({Q(1), Q(-1), Q(1)});
        constraints.push_back({Q(-1), Q(1), Q(1)});
        constraints.push_back({Q(-1), Q(-1), Q(1)});
        array<Lin2, 15> times{};
        for (int impact = 0; impact <= 14; ++impact) {
            times[impact] = impact_time_lin(seq, b, prefixes, impact);
        }
        for (int i = 0; i < 14; ++i) {
            constraints.push_back(lt_constraint(times[i], times[i + 1]));
        }
        for (int impact = 1; impact <= 14; ++impact) {
            int hit = impact_face(seq, impact);
            auto point = translation_line_point_lin(b, times[impact]);
            for (int face = 0; face < 14; ++face) {
                if (face == hit) continue;
                auto [copied, copied_offset] = copied_normal_offset(prefixes, impact, face);
                constraints.push_back(
                    lt_constraint(lin_dot_vec3(copied, point), lin_const(copied_offset)));
            }
        }
        return constraints;
    }

    void put_translation_constraint_source(vector<unsigned char> &out, const array<int, 14> &seq, int index) {
        if (index < 0) throw runtime_error("negative constraint index");
        if (index < 4) {
            put_uvarint(out, 0);
            put_uvarint(out, static_cast<uint64_t>(index));
            return;
        }
        if (index < 18) {
            put_uvarint(out, 1);
            put_uvarint(out, static_cast<uint64_t>(index - 4));
            return;
        }
        int cursor = 18;
        for (int impact = 1; impact <= 14; ++impact) {
            int hit = impact_face(seq, impact);
            for (int face = 0; face < 14; ++face) {
                if (face == hit) continue;
                if (cursor == index) {
                    put_uvarint(out, 2);
                    put_uvarint(out, static_cast<uint64_t>(impact));
                    put_uvarint(out, static_cast<uint64_t>(face));
                    return;
                }
                ++cursor;
            }
        }
        throw runtime_error("constraint index out of source range");
    }

    vector<unsigned char> compact_translation_farkas_record(int mask, const array<int, 14> &seq, const Vec &b) {
        vector<StrictLine> constraints = translation_constraints(seq, b);
        vector<pair<int, Q>> terms;
        if (!find_sparse_farkas(constraints, terms)) throw runtime_error("no sparse Farkas cert for translation case");
        vector<unsigned char> out;
        put_uvarint(out, static_cast<uint64_t>(rank));
        put_uvarint(out, static_cast<uint64_t>(mask));
        put_uvarint(out, static_cast<uint64_t>(terms.size()));
        for (const auto &[index, multiplier] : terms) {
            put_translation_constraint_source(out, seq, index);
            put_rat(out, multiplier);
        }
        return out;
    }

    void emit_translation_farkas_record(int mask, const array<int, 14> &seq, const Vec &b) {
        translation_farkas_emitter.add_record(
            compact_translation_farkas_record(mask, seq, b),
            rank,
            mask);
    }

    vector<StrictLine> normalized_constraint_system(const vector<StrictLine> &constraints) {
        vector<StrictLine> normalized;
        normalized.reserve(constraints.size());
        for (const auto &line : constraints) normalized.push_back(normalize_line(line));
        sort(normalized.begin(), normalized.end(), line_less);
        vector<StrictLine> unique;
        for (const auto &line : normalized) {
            if (unique.empty() || !line_eq(unique.back(), line)) unique.push_back(line);
        }
        return unique;
    }

    string constraint_system_key(const vector<StrictLine> &system) {
        string out;
        for (size_t i = 0; i < system.size(); ++i) {
            if (i) out += "|";
            out += line_key(system[i]);
        }
        return out;
    }

    uint64_t farkas_shape_for_system(uint64_t system_hash, const vector<StrictLine> &system) {
        auto cached = aggregate_constraint_to_farkas.find(system_hash);
        if (cached != aggregate_constraint_to_farkas.end()) {
            if (cached->second == 0) bump_hist_hash(aggregate_unresolved_constraint_systems, system_hash);
            return cached->second;
        }
        vector<pair<int, Q>> terms;
        if (!find_sparse_farkas(system, terms)) {
            aggregate_constraint_to_farkas.emplace(system_hash, 0);
            bump_hist_hash(aggregate_unresolved_constraint_systems, system_hash, "unresolved");
            return 0;
        }
        string key = farkas_terms_key(terms);
        uint64_t hash = fnv1a(key);
        aggregate_constraint_to_farkas.emplace(system_hash, hash);
        bump_hist_hash(aggregate_farkas_shapes, hash, key, 0);
        return hash;
    }

    void record_aggregate_translation_constraints(const array<int, 14> &seq, const Vec &b) {
        vector<StrictLine> constraints = translation_constraints(seq, b);
        vector<StrictLine> system = normalized_constraint_system(constraints);
        string system_key = constraint_system_key(system);
        uint64_t system_hash = fnv1a(system_key);
        bump_hist_hash(aggregate_constraint_systems, system_hash, system_key);
        ++aggregate_constraint_cases;
        uint64_t farkas_hash = farkas_shape_for_system(system_hash, system);
        if (farkas_hash == 0) {
            ++aggregate_unresolved_farkas_cases;
        } else {
            bump_hist_hash(aggregate_farkas_shapes, farkas_hash);
            ++aggregate_farkas_cases;
        }
    }

    void process_identity() {
        ++identity;
        for (int mask = 0; mask < 64; ++mask) {
            ++translation_assignments;
            if (with_symmetry || with_reversal) record_translation_canonical_stats(word, mask);
            array<int, 14> seq{};
            Vec b = translation_vector(mask, seq);
            if (vec_eq(b, vec_zero())) {
                ++translation_groups[0].count;
                if (emit_full_fallback) continue;
                string shape_key = "failure=badTranslationVector;b=" + vec_key(b) +
                    ";seq=" + seq_json(seq);
                if (aggregate_compression_profile) bump_hist(aggregate_bad_translation_shapes, shape_key);
                else translation_state_keys[0].insert(shape_key);
                add_sample(translation_groups[0], mask, &seq);
                continue;
            }
            auto prefixes = path_prefix_affs(seq);
            bool bad = false;
            string denom_pattern;
            denom_pattern.reserve(13);
            for (int impact = 1; impact < 14; ++impact) {
                Q den = impact_denom(seq, b, prefixes, impact);
                if (den > Q(0)) {
                    denom_pattern.push_back('+');
                } else if (den < Q(0)) {
                    denom_pattern.push_back('-');
                    bad = true;
                } else {
                    denom_pattern.push_back('0');
                    bad = true;
                }
            }
            if (bad) {
                ++translation_groups[1].count;
                if (emit_full_fallback) continue;
                string shape_key = "failure=badDirectionSign;b=" + vec_key(b) +
                    ";seq=" + seq_json(seq) +
                    ";denominatorSigns=" + denom_pattern;
                if (aggregate_compression_profile) bump_hist(aggregate_bad_translation_shapes, shape_key);
                else translation_state_keys[1].insert(shape_key);
                add_sample(translation_groups[1], mask, &seq);
                continue;
            }
            ++translation_groups[2].count;
            if (emit_full_fallback) emit_translation_farkas_record(mask, seq, b);
            if (emit_full_fallback) continue;
            add_sample(translation_groups[2], mask, &seq);
            string key = vec_key(b) + "|" + denom_pattern + "|" + seq_json(seq);
            if (!aggregate_compression_profile) {
                translation_state_keys[2].insert("failure=needsFarkas;" + key);
                farkas_hashes.insert(fnv1a(key));
            }
            if (aggregate_compression_profile) {
                record_aggregate_translation_constraints(seq, b);
            }
        }
    }

    array<int, 13> canonical_word_for_options(const array<int, 13> &w) {
        array<int, 13> best = w;
        vector<array<int, 13>> bases;
        bases.push_back(w);
        if (with_reversal) bases.push_back(reverse_word(w));
        for (const auto &base : bases) {
            if (with_symmetry) {
                for (const Sym &s : STARTED_SYMS) {
                    auto candidate = sym_word(s, base);
                    if (word_less(candidate, best)) best = candidate;
                }
            } else if (word_less(base, best)) {
                best = base;
            }
        }
        return best;
    }

    pair<array<int, 13>, int> canonical_translation_for_options(const array<int, 13> &w, int mask) {
        pair<array<int, 13>, int> best = {w, mask};
        vector<pair<array<int, 13>, int>> bases;
        bases.push_back({w, mask});
        if (with_reversal) bases.push_back(reverse_translation_choice(w, mask));
        for (const auto &base : bases) {
            if (with_symmetry) {
                for (const Sym &s : STARTED_SYMS) {
                    array<int, 13> raw{};
                    int raw_mask = transported_mask(s, base.first, base.second, &raw);
                    pair<array<int, 13>, int> candidate = {raw, raw_mask};
                    if (word_less(candidate.first, best.first) ||
                        (word_eq(candidate.first, best.first) && candidate.second < best.second)) {
                        best = candidate;
                    }
                }
            } else if (word_less(base.first, best.first) ||
                       (word_eq(base.first, best.first) && base.second < best.second)) {
                best = base;
            }
        }
        return best;
    }

    void record_pair_word_canonical_stats(const array<int, 13> &w) {
        if (with_symmetry) {
            array<int, 13> best = w;
            array<array<int, 13>, 8> seen{};
            int seen_count = 0;
            for (const Sym &s : STARTED_SYMS) {
                auto raw = sym_word(s, w);
                bool found = false;
                for (int i = 0; i < seen_count; ++i) found = found || word_eq(seen[i], raw);
                if (!found) seen[seen_count++] = raw;
                if (word_less(raw, best)) best = raw;
            }
            if (word_eq(best, w)) ++symmetry_pair_word_classes;
            max_symmetry_pair_orbit = max(max_symmetry_pair_orbit, seen_count);
        }
        if (with_reversal) {
            auto rev = reverse_word(w);
            if (!word_less(rev, w)) ++reversal_pair_word_classes;
            max_reversal_pair_orbit = max(max_reversal_pair_orbit, word_eq(rev, w) ? 1 : 2);
        }
        if (with_symmetry || with_reversal) {
            array<int, 13> best = w;
            array<array<int, 13>, 16> seen{};
            int seen_count = 0;
            array<array<int, 13>, 2> bases{};
            bases[0] = w;
            int base_count = 1;
            if (with_reversal) bases[base_count++] = reverse_word(w);
            for (int b = 0; b < base_count; ++b) {
                const auto &base = bases[b];
                if (with_symmetry) {
                    for (const Sym &s : STARTED_SYMS) {
                        auto raw = sym_word(s, base);
                        bool found = false;
                        for (int i = 0; i < seen_count; ++i) found = found || word_eq(seen[i], raw);
                        if (!found) seen[seen_count++] = raw;
                        if (word_less(raw, best)) best = raw;
                    }
                } else {
                    bool found = false;
                    for (int i = 0; i < seen_count; ++i) found = found || word_eq(seen[i], base);
                    if (!found) seen[seen_count++] = base;
                    if (word_less(base, best)) best = base;
                }
            }
            if (word_eq(best, w)) ++combined_pair_word_classes;
            max_combined_pair_orbit = max(max_combined_pair_orbit, seen_count);
        }
    }

    void record_translation_canonical_stats(const array<int, 13> &w, int mask) {
        if (with_symmetry) {
            pair<array<int, 13>, int> best = {w, mask};
            array<pair<array<int, 13>, int>, 8> seen{};
            int seen_count = 0;
            for (const Sym &s : STARTED_SYMS) {
                array<int, 13> raw{};
                int raw_mask = transported_mask(s, w, mask, &raw);
                bool found = false;
                for (int i = 0; i < seen_count; ++i) {
                    found = found || (word_eq(seen[i].first, raw) && seen[i].second == raw_mask);
                }
                if (!found) seen[seen_count++] = {raw, raw_mask};
                pair<array<int, 13>, int> candidate = {raw, raw_mask};
                if (word_less(candidate.first, best.first) ||
                    (word_eq(candidate.first, best.first) && candidate.second < best.second)) {
                    best = candidate;
                }
            }
            if (word_eq(best.first, w) && best.second == mask) ++symmetry_translation_choice_classes;
            max_symmetry_translation_orbit = max(max_symmetry_translation_orbit, seen_count);
        }
        if (with_reversal) {
            auto rev = reverse_translation_choice(w, mask);
            bool is_canonical = !word_less(rev.first, w) && !(word_eq(rev.first, w) && rev.second < mask);
            if (is_canonical) ++reversal_translation_choice_classes;
            int orbit_size = (word_eq(rev.first, w) && rev.second == mask) ? 1 : 2;
            max_reversal_translation_orbit = max(max_reversal_translation_orbit, orbit_size);
        }
        if (with_symmetry || with_reversal) {
            pair<array<int, 13>, int> best = {w, mask};
            array<pair<array<int, 13>, int>, 16> seen{};
            int seen_count = 0;
            array<pair<array<int, 13>, int>, 2> bases{};
            bases[0] = {w, mask};
            int base_count = 1;
            if (with_reversal) bases[base_count++] = reverse_translation_choice(w, mask);
            for (int b = 0; b < base_count; ++b) {
                const auto &base = bases[b];
                if (with_symmetry) {
                    for (const Sym &s : STARTED_SYMS) {
                        array<int, 13> raw{};
                        int raw_mask = transported_mask(s, base.first, base.second, &raw);
                        bool found = false;
                        for (int i = 0; i < seen_count; ++i) {
                            found = found || (word_eq(seen[i].first, raw) && seen[i].second == raw_mask);
                        }
                        if (!found) seen[seen_count++] = {raw, raw_mask};
                        pair<array<int, 13>, int> candidate = {raw, raw_mask};
                        if (word_less(candidate.first, best.first) ||
                            (word_eq(candidate.first, best.first) && candidate.second < best.second)) {
                            best = candidate;
                        }
                    }
                } else {
                    bool found = false;
                    for (int i = 0; i < seen_count; ++i) {
                        found = found || (word_eq(seen[i].first, base.first) && seen[i].second == base.second);
                    }
                    if (!found) seen[seen_count++] = base;
                    if (word_less(base.first, best.first) ||
                        (word_eq(base.first, best.first) && base.second < best.second)) {
                        best = base;
                    }
                }
            }
            if (word_eq(best.first, w) && best.second == mask) ++combined_translation_choice_classes;
            max_combined_translation_orbit = max(max_combined_translation_orbit, seen_count);
        }
    }

    void process_leaf() {
        ++leaves;
        if (!emit_full_fallback) add_top_sample();
        if (with_symmetry || with_reversal) record_pair_word_canonical_stats(word);
        Mat M = mat_mul(pref[13], RPAIR[0]);
        if (mat_eq(M, I)) process_identity();
        else process_nonidentity(M);
        ++rank;
        if (!suppress_progress && rank % 1000000LL == 0) {
            auto elapsed = chrono::duration<double>(chrono::steady_clock::now() - start).count();
            cerr << "profiled " << rank << " pair words in " << elapsed << "s\n";
        }
    }

    void rec(int pos) {
        if (limit >= 0 && rank >= limit) return;
        if (rank_end >= 0 && rank >= rank_end) return;
        if (pos == 13) {
            process_leaf();
            return;
        }
        for (int p = 0; p < 7; ++p) {
            if (rem[p] <= 0) continue;
            --rem[p];
            long long subtree_count = completion_count(rem);
            if (rank + subtree_count <= rank_start) {
                rank += subtree_count;
                ++rem[p];
                continue;
            }
            if (rank_end >= 0 && rank >= rank_end) {
                ++rem[p];
                return;
            }
            word[pos] = p;
            pref[pos + 1] = mat_mul(pref[pos], RPAIR[p]);
            rec(pos + 1);
            ++rem[p];
            if (limit >= 0 && rank >= limit) return;
            if (rank_end >= 0 && rank >= rank_end) return;
        }
    }

    string state_key(const array<int, 7> &remaining, const Mat &M) {
        string out;
        for (int i = 0; i < 7; ++i) {
            if (i) out += ",";
            out += to_string(remaining[i]);
        }
        out += "|";
        out += mat_key(M);
        return out;
    }

    struct DPState {
        array<int, 7> remaining{};
        Mat M{};
        long long count = 0;
    };

    void profile_canonical_rec(int pos) {
        if (pos == 13) {
            record_pair_word_canonical_stats(word);
            Mat M = mat_mul(pref[13], RPAIR[0]);
            if (mat_eq(M, I)) {
                for (int mask = 0; mask < 64; ++mask) record_translation_canonical_stats(word, mask);
            }
            return;
        }
        for (int p = 0; p < 7; ++p) {
            if (rem[p] <= 0) continue;
            --rem[p];
            word[pos] = p;
            pref[pos + 1] = mat_mul(pref[pos], RPAIR[p]);
            profile_canonical_rec(pos + 1);
            ++rem[p];
        }
    }

    void profile_canonical_stats() {
        rem = {1, 2, 2, 2, 2, 2, 2};
        pref[0] = I;
        profile_canonical_rec(0);
    }

    void profile_compressed_full() {
        vector<DPState> states;
        states.push_back({array<int, 7>{1, 2, 2, 2, 2, 2, 2}, I, 1});
        for (int depth = 0; depth < 13; ++depth) {
            unordered_map<string, size_t> index;
            vector<DPState> next;
            for (const auto &state : states) {
                for (int p = 0; p < 7; ++p) {
                    if (state.remaining[p] <= 0) continue;
                    DPState ns = state;
                    --ns.remaining[p];
                    ns.M = mat_mul(state.M, RPAIR[p]);
                    ns.count = state.count;
                    string key = state_key(ns.remaining, ns.M);
                    auto it = index.find(key);
                    if (it == index.end()) {
                        index.emplace(key, next.size());
                        next.push_back(ns);
                    } else {
                        next[it->second].count += ns.count;
                    }
                }
            }
            states.swap(next);
        }

        unordered_set<string> nonidentity_linear_keys;
        leaves = 0;
        identity = 0;
        nonidentity = 0;
        for (const auto &state : states) {
            Mat M = mat_mul(state.M, RPAIR[0]);
            leaves += state.count;
            if (mat_eq(M, I)) {
                identity += state.count;
            } else {
                nonidentity += state.count;
                nonidentity_linear_keys.insert(mat_key(M));
            }
        }
        translation_assignments = identity * 64;
        compressed_nonidentity_linear_groups = static_cast<long long>(nonidentity_linear_keys.size());
        nonid_groups[3].key = "case=nonidentity;failure=compressedStateSummary";
        nonid_groups[3].failure = "compressedStateSummary";
        nonid_groups[3].count = nonidentity;
        translation_groups[2].key = "case=translation;failure=compressedStateSummary";
        translation_groups[2].failure = "compressedStateSummary";
        translation_groups[2].count = translation_assignments;
        rank = leaves;
    }

    string sample_json(const Sample &s) {
        string out = "{";
        out += "\"rank\":" + to_string(s.rank) + ",\"word\":" + word_json(s.word);
        if (s.mask >= 0) out += ",\"mask\":" + to_string(s.mask);
        if (s.has_seq) out += ",\"seq\":" + seq_json(s.seq);
        out += "}";
        return out;
    }

    string group_json(const Group &g, const string &case_name) {
        string out = "{";
        out += "\"key\":\"" + g.key + "\",";
        out += "\"count\":" + to_string(g.count) + ",";
        out += "\"details\":{\"case\":\"" + case_name + "\",\"failure\":\"" + g.failure + "\"},";
        out += "\"samples\":[";
        for (size_t i = 0; i < g.samples.size(); ++i) {
            if (i) out += ",";
            out += sample_json(g.samples[i]);
        }
        out += "]}";
        return out;
    }

    string histogram_json(const HistMap &hist, int top_n = 12) {
        long long total = 0;
        vector<pair<uint64_t, HistEntry>> top;
        top.reserve(top_n + 1);
        for (const auto &[hash, entry] : hist) {
            total += entry.count;
            if (top_n <= 0) continue;
            top.push_back({hash, entry});
            sort(top.begin(), top.end(), [](const auto &a, const auto &b) {
                if (a.second.count != b.second.count) return a.second.count > b.second.count;
                return a.first < b.first;
            });
            if (static_cast<int>(top.size()) > top_n) top.pop_back();
        }
        string out = "{";
        out += "\"distinct\":" + to_string(hist.size()) + ",";
        out += "\"total_cases\":" + to_string(total) + ",";
        out += "\"top\":[";
        for (int i = 0; i < static_cast<int>(top.size()); ++i) {
            if (i) out += ",";
            out += "{\"hash\":\"" + hex64(top[i].first) + "\",";
            out += "\"count\":" + to_string(top[i].second.count) + ",";
            out += "\"key_preview\":\"" + json_escape(top[i].second.preview) + "\"}";
        }
        out += "]}";
        return out;
    }

    string chunk_info_json(const ChunkInfo &chunk, bool include_mask) {
        ostringstream out;
        out << "{";
        out << "\"index\":" << chunk.index << ",";
        out << "\"cert_count\":" << chunk.cert_count << ",";
        out << "\"first_rank\":" << chunk.first_rank << ",";
        if (include_mask) out << "\"first_mask\":" << chunk.first_mask << ",";
        out << "\"last_rank\":" << chunk.last_rank << ",";
        if (include_mask) out << "\"last_mask\":" << chunk.last_mask << ",";
        out << "\"raw_bytes\":" << chunk.raw_bytes;
        out << "}";
        return out.str();
    }

    string chunk_infos_json(const vector<ChunkInfo> &chunks, bool include_mask) {
        string out = "[";
        for (size_t i = 0; i < chunks.size(); ++i) {
            if (i) out += ",";
            out += chunk_info_json(chunks[i], include_mask);
        }
        out += "]";
        return out;
    }

    string residual_subtype_entry_json(int index, const string &kind) {
        string out = "{";
        out += "\"failure_kind\":\"" + kind + "\",";
        out += "\"count\":" + to_string(residual_subtype_counts[index]) + ",";
        out += "\"present\":";
        out += residual_subtype_counts[index] > 0 ? "true" : "false";
        out += ",\"samples\":[";
        for (size_t i = 0; i < residual_subtype_samples[index].size(); ++i) {
            if (i) out += ",";
            out += sample_json(residual_subtype_samples[index][i]);
        }
        out += "]}";
        return out;
    }

    string residual_subtype_payload_json() {
        long long total_residual = 0;
        for (long long count : residual_subtype_counts) total_residual += count;
        ostringstream out;
        out << "{";
        out << "\"schema_version\":1,";
        out << "\"mode\":\"residual-nonidentity-subtypes\",";
        out << "\"complete\":";
        out << (complete_run() ? "true" : "false") << ",";
        out << "\"profile_limit\":";
        if (limit < 0) out << "null";
        else out << limit;
        out << ",";
        out << "\"rank_start\":" << rank_start << ",";
        out << "\"rank_end\":";
        if (rank_end < 0) out << "null";
        else out << rank_end;
        out << ",";
        out << "\"actual_counts\":{";
        out << "\"pair_words\":" << leaves << ",";
        out << "\"identity_linear_words\":" << identity << ",";
        out << "\"nonidentity_words\":" << nonidentity << ",";
        out << "\"translation_sign_assignments\":" << translation_assignments;
        out << "},";
        out << "\"residual_singleton_failure\":\"needsAxisSolveOrSimulation\",";
        out << "\"residual_singleton_cases\":" << total_residual << ",";
        out << "\"subtypes\":[";
        out << residual_subtype_entry_json(0, "axisMissesStartInterior") << ",";
        out << residual_subtype_entry_json(1, "badFirstHit") << ",";
        out << residual_subtype_entry_json(2, "badHitInterior") << ",";
        out << residual_subtype_entry_json(3, "candidatePassed");
        out << "]}";
        return out.str();
    }

    string full_fallback_payload_json() {
        ostringstream out;
        out << "{";
        out << "\"schema_version\":1,";
        out << "\"mode\":\"emit-full-fallback\",";
        out << "\"backend\":\"compiled-exact-cpp-emitter\",";
        out << "\"complete\":";
        out << (limit < 0 ? "true" : "false") << ",";
        out << "\"profile_limit\":";
        if (limit < 0) out << "null";
        else out << limit;
        out << ",";
        out << "\"actual_counts\":{";
        out << "\"pair_words\":" << leaves << ",";
        out << "\"identity_linear_words\":" << identity << ",";
        out << "\"nonidentity_words\":" << nonidentity << ",";
        out << "\"translation_sign_assignments\":" << translation_assignments << ",";
        out << "\"nonidentity_residual_singletons\":" << nonid_residual_emitter.total_certs << ",";
        out << "\"translation_farkas_cases\":" << translation_farkas_emitter.total_certs;
        out << "},";
        out << "\"nonidentity_residual\":{";
        out << "\"magic\":\"" << nonid_residual_emitter.magic << "\",";
        out << "\"output_dir\":\"" << json_escape(nonid_residual_emitter.output_dir) << "\",";
        out << "\"expected_total\":" << nonid_residual_emitter.expected_total << ",";
        out << "\"cert_count\":" << nonid_residual_emitter.total_certs << ",";
        out << "\"chunk_count\":" << nonid_residual_emitter.chunks.size() << ",";
        out << "\"chunks\":" << chunk_infos_json(nonid_residual_emitter.chunks, false);
        out << "},";
        out << "\"translation_farkas\":{";
        out << "\"magic\":\"" << translation_farkas_emitter.magic << "\",";
        out << "\"output_dir\":\"" << json_escape(translation_farkas_emitter.output_dir) << "\",";
        out << "\"expected_total\":" << translation_farkas_emitter.expected_total << ",";
        out << "\"cert_count\":" << translation_farkas_emitter.total_certs << ",";
        out << "\"chunk_count\":" << translation_farkas_emitter.chunks.size() << ",";
        out << "\"chunks\":" << chunk_infos_json(translation_farkas_emitter.chunks, true);
        out << "}}";
        return out.str();
    }

    string group_count_object_json(const array<Group, 4> &groups) {
        string out = "{";
        bool first = true;
        for (const auto &g : groups) {
            if (!first) out += ",";
            first = false;
            out += "\"" + g.failure + "\":" + to_string(g.count);
        }
        out += "}";
        return out;
    }

    string translation_group_count_object_json() {
        string out = "{";
        bool first = true;
        for (const auto &g : translation_groups) {
            if (!first) out += ",";
            first = false;
            out += "\"" + g.failure + "\":" + to_string(g.count);
        }
        out += "}";
        return out;
    }

    string aggregate_payload_json() {
        bool complete = complete_run();
        long long flat_total = nonidentity + translation_assignments;
        long long canonical_representatives =
            (with_symmetry || with_reversal)
                ? combined_pair_word_classes + combined_translation_choice_classes
                : flat_total;
        long long bad_translation_shapes =
            aggregate_compression_profile
                ? static_cast<long long>(aggregate_bad_translation_shapes.size())
                : static_cast<long long>(translation_state_keys[0].size() + translation_state_keys[1].size());
        long long constraint_family_estimate =
            static_cast<long long>(aggregate_nonid_shapes.size())
            + bad_translation_shapes
            + static_cast<long long>(aggregate_constraint_systems.size());
        long long farkas_family_estimate =
            static_cast<long long>(aggregate_nonid_shapes.size())
            + bad_translation_shapes
            + static_cast<long long>(aggregate_constraint_systems.size())
            + static_cast<long long>(aggregate_farkas_shapes.size());
        long long final_estimate = min(canonical_representatives, farkas_family_estimate);
        long long estimated_lean_bytes = 512LL * final_estimate;
        bool unresolved = aggregate_unresolved_farkas_cases != 0;
        bool fits_1gib = estimated_lean_bytes <= 1024LL * 1024LL * 1024LL;
        string status;
        string recommendation;
        if (unresolved) {
            status = "blocked_needs_deeper_compression";
            recommendation = "extend_sparse_farkas_or_add_exact_lp_dual_certificate_search";
        } else if (!fits_1gib) {
            status = "blocked_exceeds_budget";
            recommendation = "add_prefix_or_parametric_family_certificates_before_14E7";
        } else {
            status = "ready_for_14E7";
            recommendation = "update_exhaustive_real_cert_generator_to_emit_family_witnesses";
        }

        ostringstream out;
        out << "{";
        out << "\"schema_version\":1,";
        out << "\"mode\":\"aggregate-compression-profile\",";
        out << "\"backend\":\"compiled-exact-cpp-aggregate\",";
        out << "\"complete\":" << (complete ? "true" : "false") << ",";
        if (complete) out << "\"profile_limit\":null,";
        else out << "\"profile_limit\":" << limit << ",";
        out << "\"rank_start\":" << rank_start << ",";
        out << "\"rank_end\":";
        if (rank_end < 0) out << "null";
        else out << rank_end;
        out << ",";
        out << "\"options\":{";
        out << "\"with_symmetry\":" << (with_symmetry ? "true" : "false") << ",";
        out << "\"with_reversal\":" << (with_reversal ? "true" : "false") << ",";
        out << "\"reversal_proof_transport_enabled\":false},";
        out << "\"actual_counts\":{";
        out << "\"pair_words\":" << leaves << ",";
        out << "\"identity_linear_words\":" << identity << ",";
        out << "\"nonidentity_words\":" << nonidentity << ",";
        out << "\"translation_sign_assignments\":" << translation_assignments << "},";
        out << "\"canonical_counts\":{";
        out << "\"pair_word_classes\":" << combined_pair_word_classes << ",";
        out << "\"translation_choice_classes\":" << combined_translation_choice_classes << ",";
        out << "\"max_pair_word_orbit\":" << max_combined_pair_orbit << ",";
        out << "\"max_translation_choice_orbit\":" << max_combined_translation_orbit << "},";
        out << "\"nonidentity\":{";
        out << "\"failure_counts\":" << group_count_object_json(nonid_groups) << ",";
        out << "\"shape_histogram\":" << histogram_json(aggregate_nonid_shapes) << "},";
        out << "\"translation\":{";
        out << "\"failure_counts\":" << translation_group_count_object_json() << ",";
        out << "\"bad_translation_shape_count\":" << bad_translation_shapes << ",";
        out << "\"bad_translation_shape_histogram\":"
            << histogram_json(aggregate_bad_translation_shapes, 8) << ",";
        out << "\"constraint_cases\":" << aggregate_constraint_cases << ",";
        out << "\"constraint_system_histogram\":" << histogram_json(aggregate_constraint_systems) << ",";
        out << "\"farkas_cases\":" << aggregate_farkas_cases << ",";
        out << "\"farkas_shape_histogram\":" << histogram_json(aggregate_farkas_shapes) << ",";
        out << "\"unresolved_farkas_cases\":" << aggregate_unresolved_farkas_cases << ",";
        out << "\"unresolved_constraint_systems\":"
            << histogram_json(aggregate_unresolved_constraint_systems, 8) << "},";
        out << "\"size_ladder\":{";
        out << "\"flat_total_certs\":" << flat_total << ",";
        out << "\"canonical_representative_estimate\":" << canonical_representatives << ",";
        out << "\"constraint_family_estimate\":" << constraint_family_estimate << ",";
        out << "\"farkas_family_estimate\":" << farkas_family_estimate << ",";
        out << "\"final_cert_estimate\":" << final_estimate << ",";
        out << "\"estimated_lean_bytes\":" << estimated_lean_bytes << ",";
        out << "\"thresholds\":[";
        out << "{\"name\":\"1GiB\",\"limit_bytes\":" << (1024LL * 1024LL * 1024LL)
            << ",\"fits\":" << (estimated_lean_bytes <= 1024LL * 1024LL * 1024LL ? "true" : "false") << "},";
        out << "{\"name\":\"500MiB\",\"limit_bytes\":" << (500LL * 1024LL * 1024LL)
            << ",\"fits\":" << (estimated_lean_bytes <= 500LL * 1024LL * 1024LL ? "true" : "false") << "},";
        out << "{\"name\":\"100MiB\",\"limit_bytes\":" << (100LL * 1024LL * 1024LL)
            << ",\"fits\":" << (estimated_lean_bytes <= 100LL * 1024LL * 1024LL ? "true" : "false") << "}],";
        out << "\"bytes_per_certificate_proxy\":512},";
        out << "\"decision\":{";
        out << "\"status\":\"" << status << "\",";
        out << "\"ready_for_14E7\":" << (status == "ready_for_14E7" ? "true" : "false") << ",";
        out << "\"recommendation\":\"" << recommendation << "\"},";
        out << "\"nonidentity_groups\":[";
        bool first = true;
        for (const auto &g : nonid_groups) {
            if (g.count == 0) continue;
            if (!first) out << ",";
            first = false;
            out << group_json(g, "nonidentity");
        }
        out << "],";
        out << "\"translation_groups\":[";
        first = true;
        for (const auto &g : translation_groups) {
            if (g.count == 0) continue;
            if (!first) out << ",";
            first = false;
            out << group_json(g, "translation");
        }
        out << "]}";
        return out.str();
    }

    string payload_json() {
        bool complete = complete_run();
        long long flat_total = nonidentity + translation_assignments;
        long long nonid_group_count = 0;
        for (const auto &g : nonid_groups) if (g.count > 0) ++nonid_group_count;
        long long trans_group_count = 0;
        for (const auto &g : translation_groups) if (g.count > 0) ++trans_group_count;
        long long exact_nonid_group_count = 0;
        long long exact_translation_group_count = 0;
        for (const auto &s : nonid_state_keys) exact_nonid_group_count += static_cast<long long>(s.size());
        for (const auto &s : translation_state_keys) exact_translation_group_count += static_cast<long long>(s.size());
        if (exact_state_groups_formula) {
            exact_nonid_group_count = nonidentity;
            exact_translation_group_count = translation_assignments;
        }
        ostringstream out;
        out << "{";
        out << "\"schema_version\":1,";
        out << "\"mode\":\"profile-exhaustive-states\",";
        out << "\"backend\":\"compiled-exact-cpp" << (compressed_nonidentity_linear_groups ? "-compressed" : "") << "\",";
        out << "\"options\":{";
        out << "\"with_symmetry\":" << (with_symmetry ? "true" : "false") << ",";
        out << "\"with_reversal\":" << (with_reversal ? "true" : "false") << ",";
        out << "\"exact_state_groups\":" << (exact_state_groups ? "true" : "false") << ",";
        out << "\"reversal_proof_transport_enabled\":false},";
        out << "\"complete\":" << (complete ? "true" : "false") << ",";
        if (complete) out << "\"profile_limit\":null,";
        else out << "\"profile_limit\":" << limit << ",";
        out << "\"rank_start\":" << rank_start << ",";
        out << "\"rank_end\":";
        if (rank_end < 0) out << "null";
        else out << rank_end;
        out << ",";
        out << "\"expected_sanity_counts\":{";
        out << "\"pair_words\":" << EXPECTED_PAIR_WORDS << ",";
        out << "\"identity_linear_words\":" << EXPECTED_IDENTITY_WORDS << ",";
        out << "\"translation_sign_assignments\":" << EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS << "},";
        out << "\"actual_counts\":{";
        out << "\"pair_words\":" << leaves << ",";
        out << "\"identity_linear_words\":" << identity << ",";
        out << "\"nonidentity_words\":" << nonidentity << ",";
        out << "\"translation_sign_assignments\":" << translation_assignments << "},";
        out << "\"nonidentity_groups\":[";
        bool first = true;
        for (const auto &g : nonid_groups) {
            if (g.count == 0) continue;
            if (!first) out << ",";
            first = false;
            out << group_json(g, "nonidentity");
        }
        out << "],";
        out << "\"translation_groups\":[";
        first = true;
        for (const auto &g : translation_groups) {
            if (g.count == 0) continue;
            if (!first) out << ",";
            first = false;
            out << group_json(g, "translation");
        }
        out << "],";
        out << "\"size_estimates\":{";
        out << "\"flat_nonidentity_certs\":" << nonidentity << ",";
        out << "\"flat_translation_certs\":" << translation_assignments << ",";
        out << "\"flat_total_certs\":" << flat_total << ",";
        out << "\"prefix_tree_leaf_estimate\":"
            << (exact_state_groups ? (exact_nonid_group_count + exact_translation_group_count)
                                   : (nonid_group_count + trans_group_count)) << ",";
        out << "\"nonidentity_state_groups\":" << (exact_state_groups ? exact_nonid_group_count : nonid_group_count) << ",";
        out << "\"translation_state_groups\":" << (exact_state_groups ? exact_translation_group_count : trans_group_count) << ",";
        out << "\"exact_state_group_summary\":{";
        out << "\"computed\":" << (exact_state_groups ? "true" : "false") << ",";
        out << "\"formula_exact\":" << (exact_state_groups_formula ? "true" : "false") << ",";
        if (exact_state_groups_formula) {
            out << "\"formula_reason\":\"nonidentity keys include the prefix-count path; translation keys include the signed face sequence\",";
        }
        out << "\"nonidentity\":{";
        out << "\"total_groups\":" << exact_nonid_group_count << ",";
        out << "\"noFixedAxis\":" << nonid_state_keys[0].size() << ",";
        out << "\"badDirectionSign\":" << nonid_state_keys[1].size() << ",";
        out << "\"badPairBalance\":" << nonid_state_keys[2].size() << ",";
        out << "\"needsAxisSolveOrSimulation\":" << nonid_state_keys[3].size() << ",";
        out << "\"pathSensitiveUnbucketed\":" << (exact_state_groups_formula ? nonidentity : 0) << "},";
        out << "\"translation\":{";
        out << "\"total_groups\":" << exact_translation_group_count << ",";
        out << "\"badTranslationVector\":" << translation_state_keys[0].size() << ",";
        out << "\"badDirectionSign\":" << translation_state_keys[1].size() << ",";
        out << "\"needsFarkas\":" << translation_state_keys[2].size() << ",";
        out << "\"pathSensitiveUnbucketed\":" << (exact_state_groups_formula ? translation_assignments : 0) << "}},";
        out << "\"shared_farkas_groups\":" << farkas_hashes.size() << ",";
        out << "\"compressed_nonidentity_linear_groups\":" << compressed_nonidentity_linear_groups << ",";
        if (with_symmetry && complete) {
            out << "\"symmetry_classes\":\"canonical_orbit_manifest\",";
        } else if (with_symmetry) {
            out << "\"symmetry_classes\":{";
            out << "\"pair_word_classes\":" << symmetry_pair_word_classes << ",";
            out << "\"translation_choice_classes\":" << symmetry_translation_choice_classes << ",";
            out << "\"max_pair_word_orbit\":" << max_symmetry_pair_orbit << ",";
            out << "\"max_translation_choice_orbit\":" << max_symmetry_translation_orbit << ",";
            out << "\"source\":\"scripts/profile_exhaustive_states.cpp\"},";
        } else {
            out << "\"symmetry_classes\":\"not_requested\",";
        }
        if (with_reversal && complete) {
            out << "\"reversal_classes\":{";
            out << "\"pair_word_classes\":" << REVERSAL_PAIR_WORD_CLASSES << ",";
            out << "\"translation_choice_classes\":" << REVERSAL_TRANSLATION_CHOICE_CLASSES << ",";
            out << "\"max_pair_word_orbit\":2,";
            out << "\"max_translation_choice_orbit\":2,";
            out << "\"fixed_pair_word_classes\":" << REVERSAL_FIXED_PAIR_WORDS << ",";
            out << "\"fixed_translation_choice_classes\":0,";
            out << "\"exact\":true,";
            out << "\"proof_transport_enabled\":false},";
        } else if (with_reversal) {
            out << "\"reversal_classes\":{";
            out << "\"pair_word_classes\":" << reversal_pair_word_classes << ",";
            out << "\"translation_choice_classes\":" << reversal_translation_choice_classes << ",";
            out << "\"max_pair_word_orbit\":" << max_reversal_pair_orbit << ",";
            out << "\"max_translation_choice_orbit\":" << max_reversal_translation_orbit << ",";
            out << "\"exact\":true,";
            out << "\"proof_transport_enabled\":false},";
        } else {
            out << "\"reversal_classes\":\"not_requested\",";
        }
        long long canonical_estimate = nonid_group_count + trans_group_count;
        long long lean_byte_estimate = 512LL * canonical_estimate;
        if (complete && with_symmetry && with_reversal) {
            long long pair_upper = min(STARTED_SYMMETRY_PAIR_WORD_CLASSES, REVERSAL_PAIR_WORD_CLASSES);
            long long translation_upper = min(
                STARTED_SYMMETRY_TRANSLATION_CHOICE_CLASSES,
                REVERSAL_TRANSLATION_CHOICE_CLASSES);
            canonical_estimate = pair_upper + translation_upper;
            lean_byte_estimate = 512LL * canonical_estimate;
            out << "\"combined_symmetry_reversal_classes\":{";
            out << "\"status\":\"upper_bound_until_14E2A_manifest\",";
            out << "\"pair_word_classes\":" << pair_upper << ",";
            out << "\"translation_choice_classes\":" << translation_upper << ",";
            out << "\"max_pair_word_orbit\":16,";
            out << "\"max_translation_choice_orbit\":16,";
            out << "\"exact\":false,";
            out << "\"reversal_proof_transport_enabled\":false},";
            out << "\"canonical_cert_estimate\":" << canonical_estimate << ",";
            out << "\"estimated_lean_bytes\":" << lean_byte_estimate << ",";
        } else if (complete && with_symmetry) {
            canonical_estimate = STARTED_SYMMETRY_PAIR_WORD_CLASSES + STARTED_SYMMETRY_TRANSLATION_CHOICE_CLASSES;
            lean_byte_estimate = 512LL * canonical_estimate;
            out << "\"combined_symmetry_reversal_classes\":{";
            out << "\"pair_word_classes\":" << STARTED_SYMMETRY_PAIR_WORD_CLASSES << ",";
            out << "\"translation_choice_classes\":" << STARTED_SYMMETRY_TRANSLATION_CHOICE_CLASSES << ",";
            out << "\"max_pair_word_orbit\":8,";
            out << "\"max_translation_choice_orbit\":8,";
            out << "\"exact\":true,";
            out << "\"reversal_proof_transport_enabled\":false},";
            out << "\"canonical_cert_estimate\":" << canonical_estimate << ",";
            out << "\"estimated_lean_bytes\":" << lean_byte_estimate << ",";
        } else if (complete && with_reversal) {
            canonical_estimate = REVERSAL_PAIR_WORD_CLASSES + REVERSAL_TRANSLATION_CHOICE_CLASSES;
            lean_byte_estimate = 512LL * canonical_estimate;
            out << "\"combined_symmetry_reversal_classes\":{";
            out << "\"pair_word_classes\":" << REVERSAL_PAIR_WORD_CLASSES << ",";
            out << "\"translation_choice_classes\":" << REVERSAL_TRANSLATION_CHOICE_CLASSES << ",";
            out << "\"max_pair_word_orbit\":2,";
            out << "\"max_translation_choice_orbit\":2,";
            out << "\"exact\":true,";
            out << "\"reversal_proof_transport_enabled\":false},";
            out << "\"canonical_cert_estimate\":" << canonical_estimate << ",";
            out << "\"estimated_lean_bytes\":" << lean_byte_estimate << ",";
        } else if (with_symmetry || with_reversal) {
            canonical_estimate = combined_pair_word_classes + combined_translation_choice_classes;
            lean_byte_estimate = 512LL * canonical_estimate;
            out << "\"combined_symmetry_reversal_classes\":{";
            out << "\"pair_word_classes\":" << combined_pair_word_classes << ",";
            out << "\"translation_choice_classes\":" << combined_translation_choice_classes << ",";
            out << "\"max_pair_word_orbit\":" << max_combined_pair_orbit << ",";
            out << "\"max_translation_choice_orbit\":" << max_combined_translation_orbit << ",";
            out << "\"exact\":true,";
            out << "\"reversal_proof_transport_enabled\":false},";
            out << "\"canonical_cert_estimate\":" << canonical_estimate << ",";
            out << "\"estimated_lean_bytes\":" << lean_byte_estimate << ",";
        } else {
            out << "\"combined_symmetry_reversal_classes\":\"not_requested\",";
            out << "\"canonical_cert_estimate\":" << canonical_estimate << ",";
            out << "\"estimated_lean_bytes\":" << lean_byte_estimate << ",";
        }
        out << "\"budget_status\":\"report_only\",";
        out << "\"note\":\"Compiled exact profiler stores state-family groups and bounded samples; no Lean proof data is emitted.\"},";
        out << "\"samples\":[";
        for (size_t i = 0; i < top_samples.size(); ++i) {
            if (i) out << ",";
            Sample s = top_samples[i];
            out << "{\"rank\":" << s.rank << ",\"word\":" << word_json(s.word)
                << ",\"lexRank\":" << s.rank << "}";
        }
        out << "]}";
        return out.str();
    }
};

int main(int argc, char **argv) {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    Profiler profiler;
    bool force_compressed = false;
    bool force_exact_state_groups = false;
    bool aggregate_compression_profile = false;
    bool residual_nonidentity_subtypes = false;
    bool emit_full_fallback = false;
    string nonidentity_residual_dir;
    string translation_farkas_dir;
    long long nonidentity_residual_total = -1;
    long long translation_farkas_total = -1;
    size_t chunk_target_raw_bytes = 6 * 1024 * 1024;
    vector<int> emit_prefix;
    bool has_emit_prefix = false;
    for (int i = 1; i < argc; ++i) {
        string arg = argv[i];
        if (arg == "--limit") {
            if (i + 1 >= argc) throw runtime_error("--limit requires a value");
            profiler.limit = stoll(argv[++i]);
        } else if (arg == "--rank-start") {
            if (i + 1 >= argc) throw runtime_error("--rank-start requires a value");
            profiler.rank_start = stoll(argv[++i]);
        } else if (arg == "--rank-end") {
            if (i + 1 >= argc) throw runtime_error("--rank-end requires a value");
            profiler.rank_end = stoll(argv[++i]);
        } else if (arg == "--compressed-full") {
            force_compressed = true;
        } else if (arg == "--aggregate-compression-profile") {
            aggregate_compression_profile = true;
        } else if (arg == "--residual-nonidentity-subtypes") {
            residual_nonidentity_subtypes = true;
        } else if (arg == "--emit-full-fallback") {
            emit_full_fallback = true;
        } else if (arg == "--nonidentity-residual-dir") {
            if (i + 1 >= argc) throw runtime_error("--nonidentity-residual-dir requires a value");
            nonidentity_residual_dir = argv[++i];
        } else if (arg == "--translation-farkas-dir") {
            if (i + 1 >= argc) throw runtime_error("--translation-farkas-dir requires a value");
            translation_farkas_dir = argv[++i];
        } else if (arg == "--nonidentity-residual-total") {
            if (i + 1 >= argc) throw runtime_error("--nonidentity-residual-total requires a value");
            nonidentity_residual_total = stoll(argv[++i]);
        } else if (arg == "--translation-farkas-total") {
            if (i + 1 >= argc) throw runtime_error("--translation-farkas-total requires a value");
            translation_farkas_total = stoll(argv[++i]);
        } else if (arg == "--chunk-target-raw-bytes") {
            if (i + 1 >= argc) throw runtime_error("--chunk-target-raw-bytes requires a value");
            chunk_target_raw_bytes = static_cast<size_t>(stoull(argv[++i]));
        } else if (arg == "--prefix") {
            if (i + 1 >= argc) throw runtime_error("--prefix requires a value");
            emit_prefix = parse_pair_prefix(argv[++i]);
            has_emit_prefix = true;
        } else if (arg == "--exact-state-groups") {
            force_exact_state_groups = true;
        } else if (arg == "--with-symmetry") {
            profiler.with_symmetry = true;
        } else if (arg == "--with-reversal") {
            profiler.with_reversal = true;
        } else if (arg == "--no-progress") {
            profiler.suppress_progress = true;
        } else {
            throw runtime_error("unknown argument: " + arg);
        }
    }
    if (profiler.rank_start < 0) throw runtime_error("--rank-start must be nonnegative");
    if (profiler.rank_start > EXPECTED_PAIR_WORDS) {
        throw runtime_error("--rank-start exceeds pair-word count");
    }
    if (profiler.rank_end >= 0 && profiler.rank_end < profiler.rank_start) {
        throw runtime_error("--rank-end must be greater than or equal to --rank-start");
    }
    if (profiler.rank_end > EXPECTED_PAIR_WORDS) {
        throw runtime_error("--rank-end exceeds pair-word count");
    }
    if (profiler.limit >= 0 && profiler.rank_end >= 0) {
        throw runtime_error("--limit cannot be combined with --rank-end");
    }
    if (profiler.limit >= 0 && profiler.rank_start > profiler.limit) {
        throw runtime_error("--rank-start cannot exceed --limit");
    }
    if (has_emit_prefix && (profiler.rank_start != 0 || profiler.rank_end >= 0)) {
        throw runtime_error("--prefix cannot be combined with rank intervals");
    }
    if (emit_full_fallback) {
        if (nonidentity_residual_dir.empty()) {
            throw runtime_error("--emit-full-fallback requires --nonidentity-residual-dir");
        }
        if (translation_farkas_dir.empty()) {
            throw runtime_error("--emit-full-fallback requires --translation-farkas-dir");
        }
        if (nonidentity_residual_total < 0) {
            throw runtime_error("--emit-full-fallback requires --nonidentity-residual-total");
        }
        if (translation_farkas_total < 0) {
            throw runtime_error("--emit-full-fallback requires --translation-farkas-total");
        }
        profiler.emit_full_fallback = true;
        profiler.exact_state_groups = true;
        profiler.nonid_residual_emitter.magic = "CORC";
        profiler.nonid_residual_emitter.output_dir = nonidentity_residual_dir;
        profiler.nonid_residual_emitter.expected_total = nonidentity_residual_total;
        profiler.nonid_residual_emitter.check_expected_total = !has_emit_prefix;
        profiler.nonid_residual_emitter.target_raw_bytes = chunk_target_raw_bytes;
        profiler.translation_farkas_emitter.magic = "COTF";
        profiler.translation_farkas_emitter.output_dir = translation_farkas_dir;
        profiler.translation_farkas_emitter.expected_total = translation_farkas_total;
        profiler.translation_farkas_emitter.check_expected_total = !has_emit_prefix;
        profiler.translation_farkas_emitter.target_raw_bytes = chunk_target_raw_bytes;
        if (has_emit_prefix) profiler.apply_prefix(emit_prefix);
        profiler.rec(static_cast<int>(emit_prefix.size()));
        profiler.nonid_residual_emitter.finish();
        profiler.translation_farkas_emitter.finish();
        cout << profiler.full_fallback_payload_json() << "\n";
        return 0;
    }
    if (aggregate_compression_profile) {
        profiler.aggregate_compression_profile = true;
        profiler.exact_state_groups = true;
        profiler.rec(0);
        cout << profiler.aggregate_payload_json() << "\n";
        return 0;
    }
    if (residual_nonidentity_subtypes) {
        profiler.residual_subtype_profile = true;
        profiler.exact_state_groups = true;
        profiler.rec(0);
        cout << profiler.residual_subtype_payload_json() << "\n";
        return 0;
    }
    if (force_compressed || profiler.limit < 0) {
        profiler.profile_compressed_full();
        if (force_exact_state_groups) {
            profiler.exact_state_groups = true;
            profiler.exact_state_groups_formula = true;
        }
    } else {
        profiler.exact_state_groups = true;
        profiler.rec(0);
    }
    cout << profiler.payload_json() << "\n";
    return 0;
}
