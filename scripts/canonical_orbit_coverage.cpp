#include <array>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <numeric>
#include <stdexcept>
#include <string>
#include <vector>

using namespace std;

struct Q {
    long long n;
    long long d;

    Q(long long num = 0, long long den = 1) : n(num), d(den) { normalize(); }

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
        if (g == 0) d = 1;
        else {
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
Q operator*(const Q &a, const Q &b) {
    return Q::from128(static_cast<__int128>(a.n) * b.n, static_cast<__int128>(a.d) * b.d);
}
Q operator/(const Q &a, const Q &b) {
    if (b.n == 0) throw runtime_error("divide by zero");
    return Q::from128(static_cast<__int128>(a.n) * b.d, static_cast<__int128>(a.d) * b.n);
}
bool operator==(const Q &a, const Q &b) { return a.n == b.n && a.d == b.d; }

using Word = array<int, 13>;
using VecI = array<int, 3>;

struct Mat {
    Q a[3][3];
};

const long long EXPECTED_PAIR_WORDS = 97297200LL;
const long long EXPECTED_IDENTITY_WORDS = 2468088LL;
const long long EXPECTED_TRANSLATION_CASES = 157957632LL;

const array<VecI, 7> NORMALS = {{
    {1, 0, 0}, {0, 1, 0}, {0, 0, 1}, {1, 1, 1},
    {1, 1, -1}, {1, -1, 1}, {-1, 1, 1}
}};

Mat mat_id() {
    Mat m{};
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) m.a[i][j] = Q(i == j ? 1 : 0);
    }
    return m;
}

Mat mat_mul(const Mat &A, const Mat &B) {
    Mat C{};
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            Q s(0);
            for (int k = 0; k < 3; ++k) s = s + A.a[i][k] * B.a[k][j];
            C.a[i][j] = s;
        }
    }
    return C;
}

bool mat_eq(const Mat &A, const Mat &B) {
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            if (!(A.a[i][j] == B.a[i][j])) return false;
        }
    }
    return true;
}

Mat refl(const VecI &n) {
    int nn = n[0] * n[0] + n[1] * n[1] + n[2] * n[2];
    Mat R{};
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            R.a[i][j] = Q(i == j ? 1 : 0) - Q(2 * n[i] * n[j], nn);
        }
    }
    return R;
}

array<Mat, 7> pair_refls() {
    array<Mat, 7> R;
    for (int i = 0; i < 7; ++i) R[i] = refl(NORMALS[i]);
    return R;
}

struct Sym {
    bool swap_yz;
    bool neg_y;
    bool neg_z;
};

const array<Sym, 8> SYMS = {{
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
        if (v == NORMALS[p]) return {p, true};
        if (VecI{-v[0], -v[1], -v[2]} == NORMALS[p]) return {p, false};
    }
    throw runtime_error("unknown normal");
}

pair<int, bool> sym_face(const Sym &s, int pair_id, bool positive) {
    VecI v = NORMALS[pair_id];
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

Word sym_word(const Sym &s, const Word &w) {
    Word out{};
    for (int i = 0; i < 13; ++i) out[i] = sym_pair(s, w[i]);
    return out;
}

bool word_less(const Word &a, const Word &b) {
    for (int i = 0; i < 13; ++i) {
        if (a[i] != b[i]) return a[i] < b[i];
    }
    return false;
}

bool word_eq(const Word &a, const Word &b) {
    for (int i = 0; i < 13; ++i) if (a[i] != b[i]) return false;
    return true;
}

bool vec_eq(const VecI &a, const VecI &b) {
    for (int i = 0; i < 3; ++i) if (a[i] != b[i]) return false;
    return true;
}

bool same_sym_action(const Sym &a, const Sym &b) {
    const array<VecI, 3> basis = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}};
    for (const VecI &v : basis) {
        if (!vec_eq(sym_vec(a, v), sym_vec(b, v))) return false;
    }
    return true;
}

bool same_composed_action(const Sym &left, const Sym &right, const Sym &candidate) {
    const array<VecI, 3> basis = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}};
    for (const VecI &v : basis) {
        if (!vec_eq(sym_vec(left, sym_vec(right, v)), sym_vec(candidate, v))) return false;
    }
    return true;
}

void validate_symmetry_group() {
    for (const Sym &s : SYMS) {
        if (sym_pair(s, 0) != 0) throw runtime_error("started symmetry does not fix x pair");
    }
    for (size_t i = 0; i < SYMS.size(); ++i) {
        for (size_t j = i + 1; j < SYMS.size(); ++j) {
            if (same_sym_action(SYMS[i], SYMS[j])) throw runtime_error("duplicate started symmetry action");
        }
    }
    for (const Sym &left : SYMS) {
        for (const Sym &right : SYMS) {
            bool found = false;
            for (const Sym &candidate : SYMS) {
                if (same_composed_action(left, right, candidate)) {
                    found = true;
                    break;
                }
            }
            if (!found) throw runtime_error("started symmetry actions are not closed under composition");
        }
    }
}

Word canonical_word(const Word &w) {
    Word best = w;
    for (const Sym &s : SYMS) {
        Word candidate = sym_word(s, w);
        if (word_less(candidate, best)) best = candidate;
    }
    return best;
}

bool mask_bit(int mask, int pair_id) {
    if (pair_id == 0) return false;
    return ((mask >> (pair_id - 1)) & 1) != 0;
}

int transported_mask(const Sym &s, const Word &w, int mask, Word *raw_word_out = nullptr) {
    Word raw = sym_word(s, w);
    if (raw_word_out) *raw_word_out = raw;
    array<int, 7> seen{};
    array<int, 7> raw_seen{};
    int out = 0;
    for (int i = 0; i < 13; ++i) {
        int p = w[i];
        bool positive;
        if (p == 0) positive = false;
        else {
            bool first = mask_bit(mask, p);
            positive = seen[p] == 0 ? first : !first;
        }
        seen[p]++;

        auto mapped = sym_face(s, p, positive);
        int raw_p = mapped.first;
        bool raw_positive = mapped.second;
        if (raw_p != raw[i]) throw runtime_error("raw word/face mismatch");
        if (raw_p > 0 && raw_seen[raw_p] == 0 && raw_positive) {
            out |= 1 << (raw_p - 1);
        }
        raw_seen[raw_p]++;
    }
    return out;
}

pair<Word, int> canonical_translation_choice(const Word &w, int mask) {
    Word best_word = w;
    int best_mask = mask;
    for (const Sym &s : SYMS) {
        Word raw{};
        int raw_mask = transported_mask(s, w, mask, &raw);
        if (word_less(raw, best_word) || (word_eq(raw, best_word) && raw_mask < best_mask)) {
            best_word = raw;
            best_mask = raw_mask;
        }
    }
    return {best_word, best_mask};
}

int unique_word_orbit_size(const Word &w) {
    vector<Word> seen;
    for (const Sym &s : SYMS) {
        Word raw = sym_word(s, w);
        bool found = false;
        for (const Word &old : seen) found = found || word_eq(raw, old);
        if (!found) seen.push_back(raw);
    }
    return static_cast<int>(seen.size());
}

int unique_translation_orbit_size(const Word &w, int mask) {
    vector<pair<Word, int>> seen;
    for (const Sym &s : SYMS) {
        Word raw{};
        int raw_mask = transported_mask(s, w, mask, &raw);
        bool found = false;
        for (const auto &old : seen) found = found || (word_eq(raw, old.first) && raw_mask == old.second);
        if (!found) seen.push_back({raw, raw_mask});
    }
    return static_cast<int>(seen.size());
}

struct Coverage {
    long long pair_words = 0;
    long long identity_words = 0;
    long long translation_cases = 0;
    long long canonical_word_classes = 0;
    long long canonical_translation_classes = 0;
    int max_word_orbit = 0;
    int max_translation_orbit = 0;
    long long limit = -1;
};

array<Mat, 7> RPAIR;
Mat ID;
Word word{};
array<int, 7> remaining{};
array<Mat, 14> pref{};
Coverage coverage;

void process_leaf() {
    long long rank = coverage.pair_words;
    coverage.pair_words++;

    Word canon = canonical_word(word);
    if (word_eq(canon, word)) coverage.canonical_word_classes++;
    if (coverage.max_word_orbit < 8) {
        coverage.max_word_orbit = max(coverage.max_word_orbit, unique_word_orbit_size(word));
    }

    Mat total = mat_mul(pref[13], RPAIR[0]);
    if (!mat_eq(total, ID)) return;
    coverage.identity_words++;
    for (int mask = 0; mask < 64; ++mask) {
        coverage.translation_cases++;
        auto canon_choice = canonical_translation_choice(word, mask);
        if (word_eq(canon_choice.first, word) && canon_choice.second == mask) {
            coverage.canonical_translation_classes++;
        }
        if (coverage.max_translation_orbit < 8) {
            coverage.max_translation_orbit = max(
                coverage.max_translation_orbit, unique_translation_orbit_size(word, mask));
        }
    }
}

void rec(int pos) {
    if (coverage.limit >= 0 && coverage.pair_words >= coverage.limit) return;
    if (pos == 13) {
        process_leaf();
        return;
    }
    for (int p = 0; p < 7; ++p) {
        if (remaining[p] == 0) continue;
        remaining[p]--;
        word[pos] = p;
        pref[pos + 1] = mat_mul(pref[pos], RPAIR[p]);
        rec(pos + 1);
        remaining[p]++;
        if (coverage.limit >= 0 && coverage.pair_words >= coverage.limit) return;
    }
}

void print_json() {
    bool complete = coverage.limit < 0;
    cout << "{";
    cout << "\"schema_version\":1,";
    cout << "\"mode\":\"canonical-orbit-coverage\",";
    cout << "\"complete\":" << (complete ? "true" : "false") << ",";
    if (coverage.limit >= 0) cout << "\"limit\":" << coverage.limit << ",";
    else cout << "\"limit\":null,";
    cout << "\"expected_sanity_counts\":{";
    cout << "\"pair_words\":" << EXPECTED_PAIR_WORDS << ",";
    cout << "\"identity_linear_words\":" << EXPECTED_IDENTITY_WORDS << ",";
    cout << "\"translation_sign_assignments\":" << EXPECTED_TRANSLATION_CASES << "},";
    cout << "\"symmetry_group_checks\":{";
    cout << "\"started_symmetries\":" << SYMS.size() << ",";
    cout << "\"xp_pair_fixed\":true,";
    cout << "\"actions_distinct\":true,";
    cout << "\"closed_under_composition\":true,";
    cout << "\"canonical_rule\":\"lexicographic_minimum_over_started_symmetry_group\"},";
    cout << "\"transform_policy\":{";
    cout << "\"proof_reducing_transforms\":[\"started_symmetry\"],";
    cout << "\"grouping_only_transforms\":[\"reversal\"],";
    cout << "\"reversal_proof_transport_enabled\":false,";
    cout << "\"canonical_rule\":\"lexicographic_minimum_over_started_symmetry_group\",";
    cout << "\"combined_exact_manifest_step\":\"14E.2A\"},";
    cout << "\"actual_counts\":{";
    cout << "\"pair_words\":" << coverage.pair_words << ",";
    cout << "\"identity_linear_words\":" << coverage.identity_words << ",";
    cout << "\"translation_sign_assignments\":" << coverage.translation_cases << "},";
    cout << "\"canonical_counts\":{";
    cout << "\"pair_word_classes\":" << coverage.canonical_word_classes << ",";
    cout << "\"translation_choice_classes\":" << coverage.canonical_translation_classes << ",";
    cout << "\"max_pair_word_orbit\":" << coverage.max_word_orbit << ",";
    cout << "\"max_translation_choice_orbit\":" << coverage.max_translation_orbit << "}}";
    cout << "\n";
}

int main(int argc, char **argv) {
    coverage.limit = -1;
    for (int i = 1; i < argc; ++i) {
        string arg = argv[i];
        if (arg == "--limit") {
            if (i + 1 >= argc) throw runtime_error("--limit requires a value");
            coverage.limit = stoll(argv[++i]);
        } else {
            throw runtime_error("unknown argument: " + arg);
        }
    }

    RPAIR = pair_refls();
    ID = mat_id();
    validate_symmetry_group();
    pref[0] = ID;
    remaining = {1, 2, 2, 2, 2, 2, 2};
    rec(0);
    if (coverage.limit < 0) {
        if (coverage.pair_words != EXPECTED_PAIR_WORDS) throw runtime_error("pair-word count mismatch");
        if (coverage.identity_words != EXPECTED_IDENTITY_WORDS) throw runtime_error("identity count mismatch");
        if (coverage.translation_cases != EXPECTED_TRANSLATION_CASES) {
            throw runtime_error("translation count mismatch");
        }
    }
    print_json();
    return 0;
}
