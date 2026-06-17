#include <array>
#include <cassert>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <numeric>
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

using Vec = array<Q, 3>;
using Mat = array<array<Q, 3>, 3>;
using VecI = array<int, 3>;

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

Aff face_reflection(int face) {
    Vec n = normal_face(face);
    return {reflection_matrix(n), reflection_delta(n, offset_face(face))};
}

string qstr(const Q &q) {
    if (q.d == 1) return to_string(q.n);
    return to_string(q.n) + "/" + to_string(q.d);
}

string vec_key(const Vec &v) {
    return qstr(v[0]) + "," + qstr(v[1]) + "," + qstr(v[2]);
}

string mat_key(const Mat &m) {
    string out;
    for (int i = 0; i < 3; ++i) {
        if (i) out += ";";
        out += vec_key(m[i]);
    }
    return out;
}

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
    long long leaves = 0;
    long long identity = 0;
    long long nonidentity = 0;
    long long translation_assignments = 0;
    long long rank = 0;
    bool with_symmetry = false;
    bool with_reversal = false;
    bool exact_state_groups = false;
    bool exact_state_groups_formula = false;
    array<Group, 4> nonid_groups{};
    array<Group, 3> translation_groups{};
    array<unordered_set<string>, 4> nonid_state_keys{};
    array<unordered_set<string>, 3> translation_state_keys{};
    unordered_set<uint64_t> farkas_hashes;
    unordered_map<string, AxisInfo> axis_cache;
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

    void process_nonidentity(const Mat &M) {
        ++nonidentity;
        string key = mat_key(M);
        auto it = axis_cache.find(key);
        if (it == axis_cache.end()) {
            AxisInfo info;
            info.has_axis = fixed_axis(M, info.axis);
            it = axis_cache.emplace(key, info).first;
        }
        if (!it->second.has_axis) {
            ++nonid_groups[0].count;
            nonid_state_keys[0].insert("failure=noFixedAxis;linear=" + key);
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
            nonid_state_keys[1].insert(
                "failure=badDirectionSign;linear=" + key +
                ";axis=" + vec_key(axis) +
                ";forcedSigns=" + sign_pattern_key(axis));
            add_sample(nonid_groups[1]);
            return;
        }
        auto seq = forced_seq(axis);
        if (!seq_omni(seq)) {
            ++nonid_groups[2].count;
            nonid_state_keys[2].insert(
                "failure=badPairBalance;linear=" + key +
                ";axis=" + vec_key(axis) +
                ";forcedSigns=" + sign_pattern_key(axis) +
                ";forcedSeq=" + seq_json(seq));
            add_sample(nonid_groups[2], -1, &seq);
            return;
        }
        ++nonid_groups[3].count;
        nonid_state_keys[3].insert(
            "failure=needsAxisSolveOrSimulation;linear=" + key +
            ";axis=" + vec_key(axis) +
            ";forcedSigns=" + sign_pattern_key(axis) +
            ";forcedSeq=" + seq_json(seq));
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

    void process_identity() {
        ++identity;
        for (int mask = 0; mask < 64; ++mask) {
            ++translation_assignments;
            if (with_symmetry || with_reversal) record_translation_canonical_stats(word, mask);
            array<int, 14> seq{};
            Vec b = translation_vector(mask, seq);
            if (vec_eq(b, vec_zero())) {
                ++translation_groups[0].count;
                translation_state_keys[0].insert(
                    "failure=badTranslationVector;b=" + vec_key(b) +
                    ";seq=" + seq_json(seq));
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
                translation_state_keys[1].insert(
                    "failure=badDirectionSign;b=" + vec_key(b) +
                    ";seq=" + seq_json(seq) +
                    ";denominatorSigns=" + denom_pattern);
                add_sample(translation_groups[1], mask, &seq);
                continue;
            }
            ++translation_groups[2].count;
            add_sample(translation_groups[2], mask, &seq);
            string key = vec_key(b) + "|" + denom_pattern + "|" + seq_json(seq);
            translation_state_keys[2].insert("failure=needsFarkas;" + key);
            farkas_hashes.insert(fnv1a(key));
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
        add_top_sample();
        if (with_symmetry || with_reversal) record_pair_word_canonical_stats(word);
        Mat M = mat_mul(pref[13], RPAIR[0]);
        if (mat_eq(M, I)) process_identity();
        else process_nonidentity(M);
        ++rank;
        if (rank % 1000000LL == 0) {
            auto elapsed = chrono::duration<double>(chrono::steady_clock::now() - start).count();
            cerr << "profiled " << rank << " pair words in " << elapsed << "s\n";
        }
    }

    void rec(int pos) {
        if (limit >= 0 && rank >= limit) return;
        if (pos == 13) {
            process_leaf();
            return;
        }
        for (int p = 0; p < 7; ++p) {
            if (rem[p] <= 0) continue;
            --rem[p];
            word[pos] = p;
            pref[pos + 1] = mat_mul(pref[pos], RPAIR[p]);
            rec(pos + 1);
            ++rem[p];
            if (limit >= 0 && rank >= limit) return;
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

    string payload_json() {
        bool complete = limit < 0;
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
    for (int i = 1; i < argc; ++i) {
        string arg = argv[i];
        if (arg == "--limit") {
            if (i + 1 >= argc) throw runtime_error("--limit requires a value");
            profiler.limit = stoll(argv[++i]);
        } else if (arg == "--compressed-full") {
            force_compressed = true;
        } else if (arg == "--exact-state-groups") {
            force_exact_state_groups = true;
        } else if (arg == "--with-symmetry") {
            profiler.with_symmetry = true;
        } else if (arg == "--with-reversal") {
            profiler.with_reversal = true;
        } else if (arg == "--no-progress") {
            // Progress is intentionally always sparse; this flag is accepted for
            // caller compatibility.
        } else {
            throw runtime_error("unknown argument: " + arg);
        }
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
