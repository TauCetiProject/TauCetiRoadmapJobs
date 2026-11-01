# Review of KTheoryLowDegrees (pull request #1248 at 91f4cf2)

**Verdict:** needs changes

## R01 (P2) — Import the remaining Dedekind results from their existing owner

**Location:** `TauCetiRoadmap/KTheoryLowDegrees/README.md:321`: “Establish directly that `I` is a finite projective rank-one module and is not free.” Also :553, the construction of the additive Picard inclusion and rank splitting, and :583, the quadratic ideal class.

**Claim:** These passages assign this roadmap the nonprincipal norm-two ideal and the additive Dedekind K₀ classification. ClassicalArithmeticCompletion already owns both on main. The supplier contract at :121 stops at its pseudobasis and stable-class sections and misses §§7.84 and 7.94. The additional determinant comparison, square-zero multiplication and explicit retraction can remain here.

**Witness:** `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:16445` gives the additive rank–Steinitz equivalence and its inverse; :16451 gives the ideal-class inverse. At :16662 and :16670 it gives the same norm-two ideal, nonprincipality, nonzero K₀ class and order two.

**Repair:** Add §§7.84 and 7.94 to scope and supplier contracts, import the additive equivalence and ideal example by those sections, and delete their independent construction/proof obligations here. Retain the explicit splitting maps in §2.3, the Steinitz-to-determinant identification and the ring enhancement on `TrivSqZeroExt`; retain `rank_pic_equiv_exists` as that enhancement's acceptance theorem. Make §5.3 consume the supplied order-two class.

**Repair check:** For a field the imported map gives K₀=ℤ and Pic=0. For A=ℤ[√−5], I=(2,1+√−5), it sends [I]−[A] to (0,[I]), a nonzero element of order two. The new multiplication still needs the additional calculation ([I]−1)²=0. The displayed retraction still has πι(a)=a. Thus importing the existing results preserves every example and leaves a concrete new comparison to prove.

## R02 (P3) — Keep the graded-line coordinate order consistent

**Location:** `TauCetiRoadmap/KTheoryLowDegrees/README.md:1777`: “Its component map is (rank,det)”.

**Claim:** The target in this subsection is Picᶻ, whose objects are ordered (line,grade). The preceding component formula at :1768 correctly uses (det,rank). The API bullet reverses that convention without inserting a coordinate-swap identification.

**Witness:** At :1739 the functor sends P to (det P,rk P). For a free rank-two module its component is (O,2), whereas the bullet requests (2,O), which has the wrong coordinate types.

**Repair:** Change this bullet to “Its component map is (det,rank)”. Keep (rank,det) for the separate H⋉Pic ring of §4.2. With that change both formulas send a free rank-two module to (O,2), and a negative line class to (L⁻¹,−1).

## Verified sound

Read the complete 1,922-line README and 261-line Lean file at the requested head. The review covers all 14 layers, the 15 seeded source targets, all 25 Lean declarations and the 13 admitted headline theorems. The computations below are falsification checks, not proofs of the proposed library.

**Previous findings, checked individually.**

| Previous finding | Current passage and verification | Disposition |
| --- | --- | --- |
| R01, absent rank-two CSP signatures | README :1389 names “`rankTwo_congruence_subgroup_property` and `rankTwo_congruence_subgroup_failure`”; Suggested.lean :242 and :253 state them. Elaborated signatures retain the place-count bound, finite S and exceptional/nonexceptional alternatives. | Repaired. |
| R02, duplicate finite perfection | README :720: “its perfection is the imported AlgebraicKTheory §1.3 (A1) theorem”. The supplier's README :236 explicitly includes finite perfection for n≥3. | Repaired. R01 above is a different ownership overlap on main. |
| R03, incorrect source locators | README :951 now cites “Ex. II.2.3, p. 78” and II.2.4(a), p. 79; :1134 cites BMS Lemmas 9.1–9.6, pp. 112–114; :1381 uses Moore 12.2, p. 58 and 12.3, pp. 59–60; :579 uses Weibel Ex. I.3.8(a),(c), p. 29. Each was reopened in the source text. | Repaired. |
| R04, nonexistent local API names | README :594 calls the construction “The index ideal of a map of lines”; :1138 uses “its left multipliers”; :1134 describes the transpose in prose. The §6.2–§6.3 supplier interface at :125 is mathematical prose. The named local Lean declarations all exist. | Repaired. |
| R05, per-target needs and API lists | README :1323: “No S-unit-rank hypothesis is used.” This finite-generation target is separated from :1329's positive-rank normalizer target. §1.4's needs no longer point forward to Layers 6–7; the substantive constructions now have API bullets and per-paragraph needs. | Repaired. |

No supplied repair report marks any finding “not actionable in this package”; neither new finding re-raises a settled item.

**Principles, shape and build.** The roadmap explicitly extends GrothendieckEulerForms as Part II. It retains arbitrary-ring and nonexceptional/exceptional arithmetic cases, including primes above 2 and 3. The pivot, norm and small finite-group computations are mathematical identities and Checks, not computational algorithms. No copied source passage, sorry'd data, `set_option`, admitted example, stray file or outside-folder edit was found. Every layer has Examples and Dependencies. Definitions' APIs and discriminating examples were read, including the prose Checks accompanying the small Lean specializations. The coordinate typo is R02.

The worker's gate reports every check passing, including `stray-files=0`, `outside-folder=0`, `sorry-data=0`, `set_option=0`, `imports=0`, `depcheck=0` and `build=0`. Independently, `lake build TauCetiRoadmap.KTheoryLowDegrees.Suggested` succeeded. Direct `lake env lean` on Suggested.lean exited 0 with exactly 13 sorry warnings and no other warning. HEAD equals the requested commit; the diff outside this folder is empty. No review edit was made in the worktree.

The independent dependency command with `--movable` returned:

```text
depcheck: 205 roadmaps, 1472 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. All needs and supplier citations were read; the named prerequisite layers precede their applications. No gap is declared. The ownership repair in R01 uses an existing roadmap on main and adds no upward edge.

**Signatures and padding.** A scratch copy appended `#check @name` for every one of the 25 declarations and elaborated once. Finite projectivity, Dedekind-domain, number-field, finite-S, positive-place-count and finite-index assumptions survive in the types. In particular, `IsDedekindDomain` excludes the zero ring but includes fields; the two rank-two theorems retain their explicit `hRank`. No signature repair is needed. Another copy tried `first | simp | rfl | infer_instance` in each of the 13 sorry proofs; none closed. The object search and reading of the pinned declarations found no single-library-lemma replacement for these full signatures. Their native categorical, Picard, quotient-ring and matrix definitions have real bodies and are used by the headlines.

**Headline inventory.**

| README theorem family | Acceptance test or named missing carrier |
| --- | --- |
| Rank section and semilocal classification, §§2.1–2.2 | `rank_exists_split`, `semilocal_rank_equiv_exists`. |
| Positive-rank Steinitz decomposition and Dedekind rank–Picard ring equivalence, §§5.1–5.2 | `steinitz_decomposition`, `rank_pic_equiv_exists`; the latter retains its new ring enhancement after R01. |
| Euclidean elementary generation, §8.1 | `euclidean_elementary_generation`, all finite ranks. |
| Stable nonvanishing of the real-circle rotation, §8.4 | `circle_rotation_not_stably_elementary`, all identity paddings. |
| S-integer absolute and relative elementary generation, §11.3 | `sinteger_elementary_generation`, `sinteger_relative_elementary_generation`, n≥3. |
| Higher-rank CSP and exceptional failure, §11.3 | `congruence_subgroup_property`, `congruence_subgroup_failure`. |
| Arithmetic SL₂ finite generation, §11.4 | `arithmeticSL2_finitelyGenerated`, every finite-index subgroup, no positive-unit-rank assumption. |
| Rank-two CSP and exceptional failure, §11.5 | `rankTwo_congruence_subgroup_property`, `rankTwo_congruence_subgroup_failure`, with positive unit rank. |
| Exterior/λ/γ/Adams, determinant and norm comparisons, §§3–5 | Module docstring names missing projective-operation and determinant interfaces. The numerical identities remain README targets. |
| Stable/relative K₁, Mennicke extension and congruence completions, §§7–11 | Docstring names missing stable GL/E, relative K₁, patching and defect/completion carriers. Native finite-group consequences are stated above. |
| Curve K₀/G₀ and signed K-space/Steinberg boundary comparisons, §§12–13 | Docstring names missing scheme Grothendieck groups, plus constructions, stable Steinberg groups and based boundaries. |
| Graded, perfect and Witt-supported determinant; finite-length filtration comparison, §14 | Docstring names missing graded-line spectra and enhanced supported K-theory. No scalar or free-predicate substitute is used. |

**Source verification.** No target is labelled unverified. All cited works were obtained through the sources service from legal author, institutional, arXiv, Numdam or Stacks locations. The sample below checks numbers, printed pages and hypotheses against text, including steps used inside proofs. Source identifiers refer to the service's line-numbered extractions, not to material copied into this repository.

| Seeded target | Text and locator opened | Result |
| --- | --- | --- |
| 1.4 row patching/opposite ring | weibel2013 line 930, I.2.7, pp. 13–14; line 4297, II.2.9, pp. 76–77; line 4345, II.2.10, p. 77 | One surjective leg suffices; patched-minus-free sign matches. Transpose/opposite is the roadmap's specified coordinate calculation. |
| 5.1 Steinitz/cancellation | weibel2013 line 1253, I.3.4, p. 19, through the determinant discussion, p. 20 | Positive-rank decomposition and determinant cancellation agree. Field and rank-zero cases are separated. Existing ownership is R01. |
| 6.2 elementary identities | weibel2013 line 10008, III.1.2.1, p. 180; line 10124, III.1.3–1.3.4, pp. 182–183 | Coefficient order, third-index requirement, signed block factorization and stable Whitehead result agree. Finite perfection is imported. |
| 7.1 matrix-ring normalization | weibel2013 line 9993, III.1.1.4, p. 180 | Positive matrix size and block flattening agree; scalar uI_d represents u^d over a commutative field. |
| 7.3 tensor/restriction | weibel2013 line 10353, III.1.6.1–1.6.3, pp. 185–186; line 10429, III.1.7–1.7.1, p. 187 | Tensor action requires commutative central scalars; restriction requires finite projectivity on the stated module side. |
| 8.4 real circle | weibel2013 line 10316, III.1.5.4, p. 185; morris2015 line 9633, Theorem 7.1.1 and Exercises 1,3–4, pp. 152–154 | Stable rotation obstruction is supported. Positive-diagonal QR is continuous; the normalized deformation and Spin lift are additional explicit comparisons with named inputs. |
| 10.1 universal symbols | bms1967 line 319, Definition 2.5, p. 67; lines 348,362,368,406, Lemmas 2.9–2.11 and Proposition 2.13, pp. 68–71 | Relative row conditions, image commutativity, reciprocity and level relations match; ambient target groups need not be abelian. |
| 10.3 stable range/extension | bms1967 line 1693, (7.2), Lemma 7.3 and Theorem 7.5, p. 106; lines 1740–1814, (8.2)–(8.4), Propositions 8.5–8.6 and Lemma 8.8, pp. 107–109 | Bass-bound indexing, relative congruences and the stronger extension-stage hypotheses are retained. Absolute perfection is not substituted for relative perfection. |
| 11.3 higher-rank completion | bms1967 line 2574, Theorem 14.1 and proof, pp. 129–130; line 1719, Theorem 7.5(e), p. 106 | n≥3, elementary-level cofinality, density and finite central kernel agree. Exceptional imaginary fields are not discarded. |
| 11.4 Serre rank two | serre1970 lines 80,120,152,198,246,303,346, §§1.2–2.4, pp. 490–497; morris2015 lines 3623 and 23828, Proposition 4.7.4 and §19.3(i), pp. 61–62,395–396 | SL₂-normal closure, rank-free finite generation and positive-rank centrality remain distinct. Morris's proof uses exactly the open-cover/finite-overlap argument; separate proper-discontinuity language is unnecessary once these conditions are assumed. |
| 12.2 divisor/curve classification | weibel2013 line 8124, II.8.2.1, pp. 146–147; stacks09N9 line 3584; stacks0GML line 1484; stacks0GMM line 4279 | The point class has positive divisor determinant. The extension to nonseparated regular noetherian curves is supported by affine intersections and the resolution property, not by removing “separated” from Weibel's theorem. |
| 12.3 degree/projective line | weibel2013 line 8124, II.8.2.1, pp. 146–147, and line 8338, II.8.5–8.6, p. 149 | Basis O,O(−1), square-zero reduced generator and proper Euler degree match. The degree image may be a proper subgroup of ℤ. |
| 13.2 roots/signed prism | weibel2013 lines 12439,12632,12780, III.5.1–5.8, pp. 217–223; line 15144, IV.1.2, p. 262; line 16014, Ex. IV.1.15, p. 275 | Stable roots and universal extension match. The source uses incoming fibre paths; the roadmap explicitly reverses them, uses H and H⁻¹ on the two maps and retains the interchange sign. |
| 14.1 graded lines | bhattScholze2015 line 821, Construction 5.1, p. 18; line 2699, §§12.14–12.15, pp. 58–59 | Locally constant integer degree, scalar automorphisms and Koszul symmetry match. The forgetful splitting is E₁, not symmetric. |
| 14.5 supported determinant | bhattScholze2015 line 921, Theorem 5.7 and proof, p. 20; preceding lines 877–920 | Perfect characteristic-p inputs, supported α, sheafified first truncation and extension with its comparison agree. The regular-noetherian input uses the supplier's smooth approximation/continuity route, not an assumed lift of every regular algebra. |

Also reopened the corrected locators of previous R03, Moore 12.2–12.3 (moore1968 lines 2398,2444), Serre's correction (serre1974 lines 33–59), the regular-curve Stacks tags and the source errors listed below. The all-profinite coefficient version in §11.5 has its finite-quotient argument stated separately; it is not attributed verbatim to Moore's finite-coefficient theorem.

**Adversarial calculations.** Each row records actual values or explicit objects on both sides. “Retain” means the attempted counterexample did not refute the statement. Identities of multiplicative groups are 1, additive zero is 0. The finite E₂/E₃ derived-subgroup orders, the three S₃ multiplier examples and the elliptic-curve point list were independently recomputed by finite multiplication/enumeration; the other rows are direct mathematical calculations.

| Statement | Instances tried | Values computed on the two sides | Result / change |
| --- | --- | --- | --- |
| Conventions: left rows versus right columns | Quaternion coefficients i,j | (i,0)e₁₂(j)=(i,k); reversed multiplication gives (i,−k) | Retain opposite-ring transport. |
| Conventions: two stabilizations | Rank-one identity/idempotent | GL padding diag(1,1) has rank 2; projective padding diag(1,0) has rank 1 | Retain distinction. |
| 1.1 idempotent presentation | e=[[1,1],[0,0]] | e²=e; row image={(a,a)}, column image={(a,0)} | Retain row convention. |
| 1.1 complement and stabilization | e and 1−e over a field; zero module | R²=eR²⊕(1−e)R² has ranks 1+1=2; zero idempotent has rank 0 | Retain. |
| 1.2 class and split relation | Field, finite vector spaces of ranks 2 and 3 | [k²⊕k³]=5=2+3; [0]=0 | Retain. |
| 1.2 stable equality/finite generation | k⊕k^(ℕ)≅k^(ℕ) | Infinite swindle would force 1=0; finite K₀(k)=ℤ has 1≠0 | Finite projectivity excludes wrong model. |
| 1.3 base change without flatness | ℤ→𝔽₂, module ℤ | Extended module has rank 1=rank ℤ; tensoring arbitrary exact sequences is not claimed | Retain. |
| 1.3 products and transfer | k→k×k | Extension 1↦(1,1); restriction (a,b)↦a+b; composite 1↦2 | Retain. |
| 1.3 Morita regular/simple normalization | M₂(k) and k | Simple column class↦1; regular M₂(k) class↦2; scalar restriction regular rank=4 | Retain, distinguishes the two maps. |
| 1.3 duality versus side conversion | Invertible ideal class L of order 3 | Dual class L⁻¹=L²; side conversion class L | Retain distinction. |
| 1.4 identity/lifted transition | Identity, empty matrix, endpoint unit | Patched class−free class=0 in each case | Retain. |
| 1.4 boundary sign and inverse | ℤ× over 𝔽₅ ℤ, residue 2; over 𝔽₇, residue 2 | 𝔽₅ˣ/{±1} has [2] of order 2; 𝔽₇ˣ/{±1} has [2] of order 3, inverse [4]≠[2] | Retain; 𝔽₇ detects the sign that 𝔽₅ cannot. |
| 1.4 row/column opposite transpose | Quaternion row (i,0), e₁₂(j) | Transposed equation over ℍᵒᵖ has coordinate k, matching the row; untransported equation has −k | Retain. |
| 2.1 locally constant rank | R=k×k, e=(1,0) | ranks(eR)=(1,0), ranks((1−e)R)=(0,1), sum=(1,1) | Retain full rank function. |
| 2.1 rank section/rank_exists_split | Clopen rank (1,2); zero ring | Corresponding projective has ranks (1,2); empty spectrum gives unique zero function and zero K₀ | Retain. |
| 2.1 projectivity hypothesis/native rank | ℤ/2 over Spec ℤ | Native stalk finrank is 0 at every prime; residue-fibre dimension is 1 at (2), 0 generically | Finite flat hypothesis excludes it; native rank is not arbitrary fibre dimension. |
| 2.2 semilocal classification | Connected ℤ localized at the two primes 2,3 | Two maximal ideals, but one connected rank coordinate: K₀=ℤ, not ℤ² | Retain component count. |
| 2.2 field and zero-ring boundaries | 𝔽₂ and zero ring | K₀(𝔽₂)=ℤ, Pic=0; K₀(0)=0, not ℤ | Retain nonempty connected qualification. |
| 2.3 quadratic ideal retraction | A=ℤ[s], s²=−5, I=(2,1+s) | Composite on a∈I equals a((−1+s)−(1+s)²/2)=a | Retain explicit retraction; import nonprincipality under R01. |
| 2.3 nonprincipal rank-one ideal | Same I | Local rank=1 everywhere; norm equation x²+5y²=2 has no integer solution | Nontrivial class invisible to rank; import supplied result under R01. |
| 3.1 exterior sum | Two rank-two summands, exterior degree 2 | Graded ranks 1,4,1 sum to 6=binom(4,2) | Retain ordered restriction of native equivalence. |
| 3.1 wedge ordering/base change | One vector in each summand | M-before-N gives e₁∧e₂; reversal gives −e₁∧e₂; in characteristic 2 both signs equal 1 | Retain signed ordered formula. |
| 3.1 virtual exterior operations | Class −1 | λ_t(−1)=1−t+t²−t³+…; λ²=1, λ³=−1 | Retain inverse-series rule. |
| 3.2 pre-λ axioms | Proposed λⁿ(x)=xⁿ, x=y=1,n=2 | λ²(2)=4; sum convolution=1+1+1=3 | Wrong model rejected. |
| 3.2 special unit axiom | λ_t(m)=(1+t+t²)^m | Sum rule holds, but λ²(1)=1 instead of 0 | Pre-λ and special notions distinguished. |
| 3.2 λ-ideal condition | Ideal (2) in binomial ℤ | 2∈(2), λ²(2)=1∉(2) | Correct nonexample. |
| 3.3 product polynomial | Ranks 3 and 2 | 3²·1+2²·3−2·3·1=15=binom(6,2) | Retain. |
| 3.3 composition polynomial | Rank 4, λ²λ² | 4·4−1=15=binom(6,2) | Retain. |
| 3.4 γ versus λ | Integer rank 3 | γ²(3)=6, λ²(3)=3; substitution distinguishes them | Retain. |
| 3.4 positive filtration | ℤ[C₂], u=σ−1 | u²=−2u; u³=4u; F²=2ℤu, F³=4ℤu | Retain integral/nonvanishing filtration. |
| 3.4 degree zero and rank quotient | ℤ and k×k | Empty product gives F⁰=whole ring; degree-zero rank functions include (1,0), not just diagonal integers | Retain. |
| 4.1 determinant with variable rank | Two clopens, ranks 1 and 2 | L^(1,2) restricts to L and L², not a single global power | Retain clopen construction. |
| 4.1 compound matrix determinant | diag(2,3,5), exterior degree 2 | det Λ²=6·10·15=900; det(g)^binom(2,1)=30²=900 | Retain. |
| 4.1 exterior endpoint degrees | Rank 3, j=0 and j=3 | Λ⁰ determinant=1; Λ³ determinant=30 | Retain separate degree-zero handling. |
| 4.2 square-zero rank–Picard multiplication | Reduced classes (0,L),(0,M) | Product=(0,1), i.e. additive zero; rank product=0 | Retain supplied formula. |
| 4.2 rank–determinant section | Virtual class s(f)+[L]−1 | Rank=f+1−1=f; determinant=1·L·1=L | Retain comparison. |
| 4.2 F² kernel | A and a nontrivial Dedekind ideal I | [A] has (1,1), excluded; [I]−[A] has (0,I), excluded when I≠1 | Retain simultaneous kernel. |
| 4.3 Adams normalization | Integer −1 and a line L | ψ²(−1)=−1; ψ²(L)=L²; reduced line quotient doubles | Retain. |
| 4.3 characteristic-2 congruence | General λ-ring, ψ²(x)=x²−2λ²(x) | Difference ψ²(x)−x²=−2λ²(x), hence 0 mod 2 | Retain. |
| 5.1 Steinitz positive rank | Rank-one I; I of order two | I≅A⁰⊕I; I⊕I has determinant I²=1 and is A² | Retain r+1 bound in Lean. |
| 5.1 zero module | Rank 0 | Determinant=1, K₀ class=0; it is not A^(−1)⊕1 | Zero case separate. |
| 5.2 rank_pic_equiv_exists | Virtual pair (−1,L) | [L]−2[A] maps to (−1,L); reduced products vanish | Retain ring enhancement; import the additive classification under R01. |
| 5.2 field and residue base change | Field k; Dedekind A→κ(p) | Pic(k)=0; (n,L)↦n and L becomes trivial | Retain. |
| 5.3 localization | PID; fraction field of nonprincipal Dedekind A | PID gives ℤ→ℤ identity; fraction field kills all Pic and preserves n | Retain localization; import the quadratic class under R01. |
| 5.3 quadratic order | I=(2,1+√−5) | I²=(2), so twice reduced class=0; norm-2 obstruction makes class nonzero | Correct value; import the existing order-two result under R01. |
| 5.3 disconnected negative control | k×k, invert (1,0) | Rank group ℤ²→ℤ is projection, not rank-preserving on a fixed domain | Dedekind-domain hypothesis excludes it. |
| 5.4 index-ideal definition | ℤ-line maps 0,1,6 | Index ideals (0),(1),(6); multiplication by 6 has source class (6)·target class | Retain mathematical definition. |
| 5.4 semilocal norm valuation | ℤ_(5)[i], J=(i−2) | Residue lengths 1 and 0, degrees 1 and 1; sum=1=ord₅(5) | Retain sum over primes, not a product-ring assumption. |
| 5.5 norm correction | Identity extension; trivial S-line | d=1,s=1 gives N(L)=L; general N(S)=s·s⁻¹=1 | Retain correction factor. |
| 5.5 transfer negative rank | Pair (−1,1) | Output (−d,s⁻¹); add output of (1,1)=(d,s) to obtain (0,1) | Retain. |
| 5.5 projection formula | (n,L), finite extension degree d | f_*f*(n,L)=(dn,L^d s^n)=(n,L)·(d,s) | Retain; omitting s^n changes the determinant. |
| 5.5 inseparable boundary | k(t)⊂k(u), u^p=t | Restriction of a line has rank p; scalar a has norm a^p | No separability needed. |
| 5.5 finite/empty products | k×k over k; empty product | (a,b)↦a+b; empty sum=0, empty determinant product=1 | Retain. |
| 6.1 stable matrices/block sum | u=2 over ℚ | diag(2,1)≠diag(1,2) as stable matrices; both determinant classes=2 | Retain distinction. |
| 6.1 contiguous block dependence | u=2,v=3 | diag(2,1,3)≠diag(2,3,1); both K₁ values=6 | No block operation on arbitrary stable representatives. |
| 6.2 coefficient order | Distinct roots, a=i,b=j in ℍ | Opposite-root coefficient −ba=−ji=k, whereas −ab=−k | Retain noncommutative refinement. |
| 6.2 signed Weyl word | Integral 2×2 roots at 1,−1,1 | w=[[0,1],[−1,0]], w²=−I; in characteristic 2, w²=I | Retain. |
| 6.2 finite perfection | E₂(𝔽₂),E₂(𝔽₃),E₃(𝔽₂) | Group/derived orders 6/3,24/8,168/168 | Retain imported AlgebraicKTheory §1.3; previous R02 repaired. |
| 6.2 finite/stable centralizer | Central scalar uI_n, u≠1; new-index root | Finite commutator=1; after padding, new-index coefficient changes from 1 to u | Finite scalars survive; stable centralizer only 1. |
| 7.1 Morita K₁ normalization | M₂(ℚ), units diag(2,1) and 2I | Underlying determinants 2 and 4 | Retain, excludes assigning both class 2. |
| 7.1 triangular radical | T₂(𝔽₂), upper unipotent | Stable determinant/class=1 | Retain radical calculation. |
| 7.2 projective automorphism/complement | Swap of k², then ⊕id on k | Both determinants=−1; characteristic 2 gives 1 | Retain complement independence. |
| 7.2 variable-rank determinant | R=k×k, module k×0, automorphism −1 | Componentwise determinant=(−1,1); a globally nonfree carrier's default determinant is not the intended construction | Retain componentwise normalization. |
| 7.2 opposite module side | e₁₂(a) | Right-column e₂↦e₂+a e₁; left-row conversion uses transpose over Rᵒᵖ | Same coefficient, not inverse. |
| 7.3 tensor action | Rank-r vector space acting on class u | Tensor automorphism determinant=u^r; r=0 gives 1 | Retain. |
| 7.3 restriction/norm | ℂ/ℝ, i and 1+i | Real determinants 1 and 2; norms 1 and 2 | Retain. |
| 7.3 product restriction | k×k, class (u,v) | Underlying determinant uv; restricting a supported factor (u,1) gives u | Retain. |
| 8.1 determinant splitting | ℤ, diag(−1),diag(−1,−1) | Classes −1 and +1; split projection followed by section returns the unit | Retain imported splitting. |
| 8.1 Euclidean generation | ℤ, n=0,1,2; signed rotation | Empty/size-one determinant-one matrices are identity; w is a product of three roots | Retain all finite ranks; no positive-rank binder needed. |
| 8.2 stable range | ℤ pair (2,5); field | 2+5b never ±1; over a field a nonzero coordinate can give 1 | Retain sharp distinction between range 2 and range 1. |
| 8.2 quotient/zero ring | ℤ/6; zero ring | Semilocal range=1; in zero ring unit equation 0=1 holds | Retain n≥1 convention. |
| 8.3 Schur complement | [[1,2],[3,4]] over ℚ | 1·(4−3·1⁻¹·2)=−2=ordinary determinant | Retain order. |
| 8.3 division-ring/small-rank exception | ℍ, n=1; 𝔽₂,n=2 | [i,j]=−1 has norm1 while E₁=1; GL₂(𝔽₂)=E₂ has order6, derived subgroup order3 | Retain distinction between kernel and finite commutator. |
| 8.3 quaternion scalar normalization | Scalars −1 and 2 | Norms 1 and 4, not −1 and 2 | Retain squared norm. |
| 8.4 circle charts | Plus chart t=0,1; minus chart t=0 | (1,0),(0,1),(−1,0); x²+y²=1 in each | Retain both charts. |
| 8.4 determinant-preserving deformation | diag(2,1/2), halfway linear interpolation to I | Intermediate diagonal (3/2,3/4), determinant9/8; dividing by sqrt(9/8) restores determinant1 | Retain normalization. |
| 8.4 Spin obstruction | Positive full rotation | Lift starts 1, ends −1; stabilization leaves this endpoint −1 | Retain stable, not only size-two, obstruction. |
| 9.1 relative normal closure | Dual numbers k[ε]/ε² | (1+aε)(1+bε)=1+(a+b)ε; relative units identify with additive k | Retain nilpotent case. |
| 9.1 Jacobson versus radical ideal | Ideal (6)⊂ℤ | (6) is radical, but Jac(ℤ)=0 and (6) is not contained in it | Correct stronger hypothesis retained. |
| 9.2 augmented multiplication | I=2ℤ, (1,2) | Square=(1,8); pullback coordinates (1,3) square to (1,9) | Retain corrected source locator. |
| 9.2 zero/unit ideal | I=0 and I=A | Relative K₀=0 and K₀(A), respectively | Retain. |
| 9.2 projection and central factor | A=k×k,I=k×0 | Relative class n maps by add to (n,0); pr maps it to 0 | Retain, distinguishes projections. |
| 9.2 boundary/opposite/inverse | A patched class of order 3 | Opposite-transpose preserves class 1 mod3; inverse transition gives 2 mod3 | Retain. |
| 9.3 denominator-clearing boundary | v₂(12), clear denominator by 2 | 2=3−1; diag(π,π⁻¹) gives 1−1=0 | Retain positive valuation. |
| 9.3 ramification/residue degree | Ramified quadratic DVR, e=2,f=1 | Pullback of π has valuation2; norm valuation of upstairs uniformizer=1 | Retain distinct e and f rules. |
| 10.1 universal symbol and identity levels | I=0; A=ℤ,I=A | Only trivial symbol at zero level; absolute integer stable defect=1 | Retain. |
| 10.1 image commutativity | Symbol image C₂ inside C₂×S₃ | Image commutator=1; ambient S₃ still has nontrivial commutators | Retain image-only assertion. |
| 10.2 completion/level | [[5,2],[12,5]] | det=25−24=1; congruent I mod2, not mod4 | Retain exact ideal level. |
| 10.2 transpose/inverse | Diagonal unit completion | Symbol of unit numerator=1; transpose sends symbol value to its inverse, also 1 here | Nonunit order-three test above detects inverse. |
| 10.3 relative unimodularity | Columns (3,2,0),(2,1,0),(3,6,0), level2 | First: gcd1 and e₁ mod2; second: gcd1 but wrong residue; third: right residue but gcd3 | Retain both conditions. |
| 10.3 relative perfectness caution | E₃(ℤ,2ℤ) | Commutators are I mod4, while e₁₂(2) is not | Do not infer relative perfection from absolute perfection. |
| 10.3 oriented reduction | e₁₂(2), contraction parameter t | t=1 gives e₁₂(2); t=0 gives I | Retain direction. |
| 10.4 L-standard form multiplication | Scalar blocks a=2,b=3,y=5,z=7 | L product block=6, off-block az+y=19 | Retain order of coefficients. |
| 10.4 R-standard form multiplication | a=2,b=3,p=5,q=7 | R product block=6, off-block q+pb=22 | Retain distinct right formula. |
| 10.5 multiplier definition | S₃, f=id, square, constant1 | (size H,size N)=(6,1),(1,3),(6,6) | Retain mathematical definition. |
| 10.5 stabilizer versus kernel | S₃,f=id | Every conjugation preserves {1}; only identity preserves all values | Retain stronger condition. |
| 10.5 endpoint reflection | Rank4, e₀₁(t) | Transpose+swap endpoints gives e₁₃(t); full reversal gives e₂₃(t) | Retain endpoint-only convention. |
| 10.5 GE versus E | ℤ, diag(−1,1) | determinant−1; in GE₂, not E₂ | Retain diagonal generators. |
| 10.6 last interchange/rank two | Determinant value of swap, rank2 | Value−1; ordinary integers have stable-range bound2, insufficient for the bound1 special argument | Retain stronger rank-two hypotheses. |
| 10.7 finite universal defect | SL₃(𝔽₂), I=whole field | SL₃ and E₃ both order168; quotient order1 | Retain special-linear, not unrestricted GL, defect. |
| 11.1 ramified higher units | ℚ₂(i), h=0,1,2,3,4,5,6 | Formula gives r=1,1,1,1,2,2,4 | Retain ramification-dependent threshold, including p=2. |
| 11.1 roots and tame orientation | ℚ₇, cubic residue, unit3 | 3² mod7=2; inverse symbol corresponds to4 | Retain transposition to BMS order. |
| 11.2 finite defect orders | ℤ[ζ₃], levels6,12,18,36 | Orders1,2,3,6 from the 2- and 3-primary thresholds | Retain. |
| 11.2 transition exponent | μ₄→μ₂ | i↦i²=−1; identity on μ₂ is not restriction of i↦i | Retain power transition. |
| 11.2 corrected extension exponent | ℚ(ζ₈)/ℚ(√2), and /ℚ(√−2) | Norm ζ₈=ζ₈⁸=1 in first, ζ₈⁴=−1 in second; both extensions degree2 | Retain norm-on-roots rule; degree-only rule fails. |
| 11.3 higher-rank kernel | SL₃(ℤ); SL₃(ℤ[i]); invert one finite prime | Kernel orders1,4,1 respectively | Retain place hypotheses. |
| 11.3 absolute/relative elementary generation | Nonexceptional S-integers, I=0 and I=A | Zero level gives 1=1; unit level reduces to SL_n=E_n | Retain; n≥3 still required. |
| 11.3 arithmetic nonzero level | Field 𝔽₂ versus number-field ring | Over field only nonzero ideal is whole field, so identity subgroup cannot contain its full SL₃ of order168 | Number-field arithmetic hypothesis essential. |
| 11.4 coarse-domain generation | ℤ on ℝ, U=(−0.1,1.1) | Overlap set={−1,0,1}, generating ℤ | Retain. |
| 11.4 connectedness | Infinite direct sum C₂ acting discretely on itself | U={0} has overlap set {0}, yet generated subgroup is {0}, not whole group | Connectedness excludes false inference. |
| 11.4 arithmetic tree quotient | SL₂(ℤ[1/p]) | Two vertex orbits, one edge; common stabilizer has lower-left entry0 mod p | Retain both vertex types. |
| 11.4 Serre closure versus bare roots | ℤ,I=2ℤ | e₀₁(1)e₁₀(2)e₀₁(−1)=[[3,−2],[2,−1]]; top-left3 mod4 versus bare even-root words1 mod4 | Retain ambient SL₂ normal closure. |
| 11.4 zero and field levels | I=0; I=k over 𝔽₂,𝔽₃ | Serre closure orders1;6;24 | Retain, no small-field perfectness assumption. |
| 11.4 finite generation versus centrality | ℚ,S=∅ | Unit rank0; SL₂(ℤ) finitely generated; positive-unit-rank premise false | Retain separate bounds and the new per-target dependencies. |
| 11.5 relative extension zero coefficient | M=1 | Hom(C,1) has one element; split relative extension has one isomorphism class | Retain. |
| 11.5 rank-two kernel/CSP | ℚ,S={p}; ℚ,empty; CM quartic ℚ(ζ₅),empty | Place counts2,1,2; kernel orders1,infinite,10 | Retain; both rank-two native headlines are now present. |
| 11.5 finite-generation inference | Finitely generated abelian ℤ^r⊕T | Profinite completion contains ℤ̂^r; finite completion forces r=0, leaving T | Retain finiteness prerequisite. |
| 11.6 prime-to-p descent | C=C₄, k=𝔽₅ or 𝔽₂ | Hom(C₄,𝔽₅) has1 element; Hom(C₄,𝔽₂) has2 | Retain p∤size C. |
| 11.6 PGL determinant quotient | Exponent2 quotient, characteristic5 | 2a=0 forces a=0; characteristic2 admits nonzero a | Retain p>n. |
| 11.6 common neighborhood | Two characters with kernels U,V | Both vanish on U∩V; finite intersection open; infinitely many p-adic levels intersect in {0}, not open | Retain finite-dimensional qualification. |
| 12.1 regular curve resolution | Doubled affine line, skyscraper at one origin | 0→O(−D)→O→k_D→0; rank terms1−1=0 | Retain nonseparated curves. |
| 12.1 dimension-zero component | Spec k | Finite vector-space resolution already degree0; K₀=G₀=ℤ | Retain dimension≤1. |
| 12.2 curve rank/determinant | Point class D on ℙ¹ | [O]−[O(−D)] has rank0, determinant O(D) | Retain positive divisor sign. |
| 12.2 curve square-zero ideal | Two reduced line classes | (0,L)(0,M)=(0,1) | Retain curve rank–Picard ring. |
| 12.3 projective-line coordinates | O(1),O(−1), basis O,O(−1) | Coordinates(2,−1),(0,1); rank/degree(1,1),(1,−1); Euler characteristics2,0 | Retain. |
| 12.3 reduced multiplication | z=[O]−[O(−1)] | rank/degree(z)=(0,1); z²=(0,0) | Retain z²=0. |
| 12.4 doubled origins | Coordinate t on doubled line | Divisor(t)=D₀+D₁, so [D₁]=−[D₀]; Pic=ℤ; K₀=ℤ² | Retain correction of Weibel example. |
| 12.4 elliptic finite field | y²=x³−x over 𝔽₅ | Seven affine points+infinity=8; 2(2,1)=(0,0), order4; three nonzero 2-torsion points | Group C₄×C₂, not cyclic C₈. |
| 12.4 anisotropic conic | Real conic without real points | Degrees over ℝ form2ℤ; after ℂ base change degrees formℤ | Retain actual degree image. |
| 13.1 absolute/support Euler class | [ℤ —p→ ℤ] | Absolute K₀ class1−1=0; supported length class1 | Retain support distinction. |
| 13.1 nonprincipal resolution/Cartan | I→A; dual numbers over k | Euler class[A]−[I]; Cartan of free dual-number module has k-length2 | Retain. |
| 13.1 automorphism transfer loop | ℂ/ℝ multiplication i | Underlying block determinant1 equals norm1 | Retain θ-normalization. |
| 13.2 Steinberg coefficient order | Roots ij(i),jk(j) over ℍ | Commutator root ik(k); reversed factors would give −k | Retain. |
| 13.2 quotient roots/prism | Quotient map identity versus zero; integer class3 | Root kernel {1} versus whole St; transposing the two interval coordinates has degree −1, sending 3 to −3 | Retain explicit quotient and sign. |
| 13.3 congruence loop | I=0; I=A and scalar−1 over ℤ | Zero ideal has trivial relative loop; unit ideal contains loop of−1 of order2 | Retain based relative, not absolute-zero, construction. |
| 13.4 inverse lifted-word boundary | Boundary coordinate3 in an infinite cyclic target | Inverse word gives−3, not3; identity word gives0 | Retain negative normalization. |
| 13.4 split quotient | Split dual-number reduction k[ε]→k | Lifted source loops give boundary0 | Retain, excludes arbitrary nonzero boundary. |
| 13.5 double comparison | ℤ/4→ℤ/2, lift coordinates (1,3) | Square=(1,1); first projection1, second3 | Retain two projections separately. |
| 14.1 graded-line symmetry | Degrees1,1; −1,1;1,2 | Signs−1,−1,+1; characteristic2 gives+1 in all cases but grades remain distinct | Retain integer grading and Koszul rule. |
| 14.1 automorphism group | Trivial line over 𝔽₅; empty scheme | Four scalar automorphisms; empty scheme has one | Retain groupoid rather than Picard set. |
| 14.2 symmetric determinant | Swaps of ranks1/1 and1/2 | Determinants−1 and+1 equal (−1)^(rs) | Retain. |
| 14.2 scalar/isomorphism naturality | Scalar2 on one ℚ-line | Determinant scalar2, not1 | Retain actual morphisms. |
| 14.3 first truncation | Field 𝔽₅ and field 𝔽₂ | π₀=ℤ; π₁ sizes4 and1; graded-line units have same sizes | Retain τ≤1, no full-spectrum equivalence asserted. |
| 14.3 loop determinant | ℚ-line automorphism−1 | Loop maps to scalar−1 | Retain fixed orientation. |
| 14.4 shift and acyclic trivialization | Line in degree−1; [ℚ —2→ ℚ] | Grade−1 and dual line; acyclic grade0 and coefficient1/2 | Agrees with PadicMeasures §5.1. |
| 14.4 divisor perfect complex | O(−1)→O on ℙ¹ | Determinant O(1), grade0 | Retain triangle order. |
| 14.4 descent compatibility | Overlap identifying grades1 and2 | Equality1=2 fails, so no descent datum; matching grade1 retains scalar-unit cocycle | Retain graded descent. |
| 14.5 supported extension | α of line L | Output(L,1), not(L,0); W(k) itself has nonzero p-inversion | Retain specified support and extension homotopy. |
| 14.5 filtration/shift difference | Two degree-zero lines; C→0→C[1] | Filtration grade1+1=2; triangle grades r+(−r)=0 | Retain no alternating filtration signs. |
| 14.5 uniqueness data | Swap two rank-one factors | Comparison scalar−1; erasing coherence would give+1 | Retain specified comparison homotopy. |
| 14.6 constant finite length | Q=0,k,W(k)/p² | Grades0,1,2; lines1,det(k),det(k)⊗det(k) | Retain. |
| 14.6 nontrivial factors/trivial product | Q=k², tautological line on perfected ℙ¹ | Determinants O(−1),O(1); productO, degrees−1+1=0 | Retain product theorem, not factor triviality. |
| 14.6 basis normalization | One-dimensional k-line, basis multiplied by a≠1 | Chosen generator changes by a; isomorphism class remains trivial | Retain trivializable, not preferred trivialization. |
| Lean carriers: FiniteProjectives, RingK0, projectiveClass | k² and k³; ℤ/2 over ℤ | finite projective classes 2+3=5; ℤ/2 has no projective-object witness | Retain genuine full subcategory, not an arbitrary carrier. |
| Lean freeProjective and Picard scalar instances | n=0,2; additive Picard class a | free classes 0,2; left and opposite integer action by −2 both give −2a | Retain zero rank and matching central actions. |
| Lean lineProjective | trivial line and a nonprincipal invertible ideal | ranks 1,1; reduced classes 0 and nonzero [I]−1 | Retain class normalization; R01 supplies additive classification. |
| Lean finiteElementaryGroup | rank 0,1; field rank2 | no distinct root indices give trivial groups in ranks0,1; E₂(𝔽₂) has6 elements | Retain exact native closure. |
| Lean CircleRing/circleRotation | real evaluations (1,0),(0,1) | rotation matrices I and [[0,−1],[1,0]], both determinant1 | Retain honest quotient and inverse data. |
| Lean principalCongruence | I=0 and I=R | kernels {1} and whole SL_n respectively | Retain nonzero-ideal requirement in CSP. |
| Lean relativeElementaryGroup | I=0, I=R; rank1 | normal closures {1}, E_n; rank1 always {1} | Retain normal closure inside E, distinct from Serre closure. |
| 1.1 idempotent conjugation | e=diag(1,0), g=[[1,1],[0,1]] | g⁻¹eg=[[1,1],[0,0]]; its row image is the image of e followed by g | Retain conjugation direction. |
| 1.2 invariant-basis-number criterion | zero ring versus M₂(k) | η:ℤ→0 has kernelℤ; η for M₂(k) is n↦2n, injective but not onto | Retain the specified η, not an abstract K₀≅ℤ. |
| 1.3 projection formula direction | k→k×k, class(1,0) | extension after restriction gives(1,1) ≠ 2(1,0)=(2,0); restriction after extension gives2 | Retain only the justified projection formula. |
| 2.1 clopen rank section is multiplicative | k×k, idempotents e=(1,0), f=(0,1) | eR⊗fR=0; rank product(1,0)(0,1)=(0,0) | Retain ring section. |
| 2.3 retraction integrality | a=2 and a=1+s, s²=−5 | ι(2)=(−1+s,−1−s); ι(1+s)=(−3,2−s), both in A² | Retain extra retraction calculation after R01. |
| 3.1 exterior degree zero and above rank | rank-one line L | Λ⁰L=R, Λ¹L=L, Λ²L=0; ranks1,1,0 | Retain real exterior powers. |
| 3.4 line γ-series | x=[L]−1 | γ_t(x)=1+xt, so γ²(x)=0; λ²(x)=−x | Retain substitution, not coefficient renaming. |
| 4.1 determinant tensor powers | ranks2 and3, determinants L,M | det(P⊗Q)=L³M²; for diagonal(2,3) and identity rank3 determinant=6³=216 | Retain cross exponents. |
| 5.1 cancellation | rank-one ideals I,J; I⊕A≅J⊕A | determinants I and J must agree; zero summand leaves I≅J | Retain positive-rank decomposition and separate zero case. |
| 5.2 multiplication coordinates | (2,L),(3,M) | product(6,L³M²); reduced pairs(0,L),(0,M) multiply to(0,1) | Retain the new square-zero ring enhancement. |
| 5.4 composition of line indices | ℤ multiplication2 then3; zero map | indices(2)(3)=(6)=index(6); composing zero gives(0) | Retain map-level multiplicativity. |
| 7.2 automorphism zero and sum | zero object; line scalars2 and3 | zero automorphism class1; direct sum determinant6=2·3 | Retain actual automorphism-class normalization. |
| 7.3 projection formula | rank2 module, ℂ/ℝ scalar1+i | restriction norm2, then rank2 action4; norm((1+i)²)=norm(2i)=4 | Retain. |
| 8.4 elementary nullhomotopy | continuous e₁₂(f), scale f by t | at t=0 identity, at t=1 original shear; determinant1 for all t | Retain continuous stable obstruction. |
| 9.1 relative square-zero non-excision control | strict upper radical J of T₂(k) | 1+aE₁₂ elementary, so ambient relative K₁ class1; unitization retains additive parameter a | Retain distinction between ambient relative and nonunital models. |
| 10.3 relative-row equivalence direction | t=0 and t=1 in displayed homotopy | at0 the elementary correction contracts toI; at1 the original correction remains | Retain specified endpoints. |
| 11.1 arithmetic parameter exclusions | F=ℚ,S=∅; F=ℚ,S={2}; p=2 | place counts1,2; S-unit ranks0,1; ramified exponent uses e=2, not e=1 | Retain finite S and ramification. |
| 11.3 congruence_subgroup_failure witness | F=ℚ(i),n=3,I=(1+i)⁶ | Γ(I)/E(I) has order4; finite-index E(I) contains no nonzero principal level | Retain exceptional failure headline. |
| 11.4 noncentral normalizer condition | central {±I}⊂SL₂(F), F infinite | all its matrices have off-diagonal entries0; e₀₁(t) with t≠0 is absent | Retain noncentral premise. |
| 11.5 rankTwo_congruence_subgroup_property | ℚ,S={2}; ℚ,S=∅ | rank bound2≤2 is true, congruence kernel1; 2≤1 false, kernel infinite | Retain explicit hRank in Lean. |
| 11.5 rankTwo_congruence_subgroup_failure | ℚ(ζ₅),S=∅; ℚ(i),S=∅ | r₂=2 gives hRank true and kernelμ₁₀; r₂=1 fails hRank | Retain exceptional positive-rank scope. |
| 12.3 proper Euler degree | ℙ¹ and O(−2) | χ(O(−2))=−1, rank1, χ(O)=1; degree=−1−1=−2 | Retain integer subtraction and properness. |
| 13.2 quotient-root surjectivity | identity quotient and R→0 | St(identity) is identity; St(0)=1, so quotient map is onto in both cases | Retain group-presentation route. |
| 13.4 supported non-excision control | ℝ[t], I=(t²−t) | relative defect C₂ can be nontrivial while absolute SK₁(ℝ[t])=1 | Retain relative group rather than absolute kernel shortcut. |
| 14.1 object definition and wrong model | field k, grades0,1 with same line | Hom((k,0),(k,1)) empty; Aut((k,0))=k× | Retain groupoid and full integer degree. |
| 14.1 forgetting degree | two odd ℚ-lines | graded self-swap scalar−1; ungraded line self-swap scalar+1 | Retain E₁ splitting, reject symmetric splitting. |
| 14.3 component coordinate order | k² and negative line class | actual (O,2),(L⁻¹,−1); API bullet gives (2,O),(−1,L⁻¹) | R02: change only the bullet to (det,rank). |
| 14.5 support at p=2 | W(𝔽₂)=ℤ₂, cone(2), cone(4) | supported lengths1,2; ordinary Euler ranks0,0 | Retain p=2 and support; no good-prime restriction. |
| 14.6 refinement and change of filtration | length2 module, two length1 quotients | sum grades1+1=2; determinant product equals the fixed length2 line | Retain unalternated filtration and coherent comparison. |

**Pinned library audit.** These 21 groups of declarations were opened at Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths below are relative to the corresponding library repository.

| File and line at the pin | Declaration and scope checked |
| --- | --- |
| `Mathlib/RingTheory/Finiteness/Projective.lean:28` | `Module.Finite.exists_comp_eq_id_of_projective`: finite projective over a semiring has a finite-free retraction. No commutativity assumption. |
| `Mathlib/Algebra/Module/Projective.lean:164`; `Mathlib/LinearAlgebra/Projection.lean:566` | `Module.Projective.of_split`; `LinearMap.isProj_iff_isIdempotentElem`. These provide the native retraction/projection facts. |
| `Mathlib/RingTheory/DedekindDomain/Basic.lean:149` | `IsDedekindDomain` extends `IsDomain` and `IsDedekindRing`: zero ring excluded, fields included. |
| `Mathlib/RingTheory/LocalRing/Module.lean:299` | `Module.free_of_flat_of_isLocalRing`: finite flat over a commutative local ring; not the arbitrary associative extension. |
| `Mathlib/RingTheory/Spectrum/Prime/FreeLocus.lean:180`, :221, :238, :308, :319 | `rankAtStalk` is stalk-module finrank. Local constancy requires finite presentation and flatness. Equivalence, product and base-change formulas retain their native hypotheses. |
| `Mathlib/LinearAlgebra/ExteriorAlgebra/Product.lean:109`, :114 | `prodEquivTensor` and its pure-wedge inverse use the graded tensor product and `Fin.append`, M before N. |
| `Mathlib/RingTheory/PicardGroup.lean:429`, :444, :459, :876 | `CommRing.Pic`, `AsModule`, `mk`, `ClassGroup.equivPic`. Pic is the shrunk unit group of a module skeleton, not based lines; the class-group comparison needs a domain. |
| `Mathlib/RingTheory/Morita/Matrix.lean:187` | `ModuleCat.matrixEquivalence R i`: chosen index i ensures nonempty matrix size. |
| `Mathlib/LinearAlgebra/Matrix/Transvection.lean:226`; `SpecialLinearGroup.lean:225`, :788 | Scalar-centralizer formula in commutative generality, `SpecialLinearGroup.map`, and field `SL2.transvection_induction`. They do not supply the full Euclidean-ring headline. |
| `TauCeti/Algebra/Category/ModuleCat/CartanMap/Basic.lean:124`, :231, :576, :621 | `finiteProjectiveModules` has predicate “Module.Finite R M ∧ Module.Projective R M”; split exact structure, Euler and Cartan class normalizations. No basis or constant rank is included. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Split.lean:124`, :142, :150, :172, :195 | `of`, `of_biprod`, zero-object relation, `exists_eq_sub`, `hom_ext`; the existing presentation is used. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Exact.lean:625` | `ExactK0.fromSplitEquiv` requires all conflations to split. |
| `TauCeti/CategoryTheory/GrothendieckGroup/FiniteDimensionalVectorSpace.lean:148`, :226 | Split and abelian `finrankEquiv` over division rings retain `Small` for the module universe. |
| `TauCeti/Algebra/Category/ModuleCat/FiniteProjective/Monoidal.lean:38`, :51 | Tensor closure and symmetric tensor structure on the actual finite-projective subcategory. |
| `TauCeti/Algebra/Category/ModuleCat/Equivalence.lean:58`, :78, :91 | Submodule order isomorphism, finite-generation transport, projectivity transport; the last retains ring smallness assumptions. |
| `TauCeti/Algebra/Category/ModuleCat/CartanMap/Morita.lean:104`, :215, :234 | Restricted finite-projective equivalence and exact K₀ equivalence with the actual object-class formula; split form follows through the supplied comparison. |
| `TauCeti/LinearAlgebra/ExteriorPower/Basic.lean:276`, :287; `BaseChange.lean:68`, :85, :103 | Top-exterior determinant formulas require a basis/free module; exterior base change works for arbitrary modules without flatness. |
| `TauCeti/RingTheory/ClassGroup/RelNorm.lean:143`, :153 | Existing `ClassGroup.relNorm` induced by `Ideal.relNorm`, with its integral-ideal class formula. The roadmap compares determinant norms with it. |
| `TauCeti/RingTheory/DedekindDomain/SInteger/Unit.lean:105`, :130, :149 | Valuation, kernel and `unit_fg`; finite S and ordinary-unit finite generation are required, the latter supplied by Dirichlet. |
| `TauCeti/NumberTheory/Multiquadratic/MinusFive/ClassNumber.lean:249` | `classNumber_adjoinRoot_sqrt_neg_five_eq_two` concerns the actual AdjoinRoot number field; a ring-of-integers comparison is still required. |
| `TauCeti/LinearAlgebra/CliffordAlgebra/Spin/Rotation.lean:45`; `TauCeti/Topology/Algebra/CliffordAlgebra/Spin/Rotation.lean:73`; `Spin/Covering.lean:52` | Ordered Clifford rotation, the half-angle path and real Spin covering. The covering theorem requires nonzero dimension and compact Spin carrier; the README records both. |

Object searches covered finite-projective presentations, rank, exterior powers, determinant, ideal/class-group norms, finite elementary groups, stable and relative K₁, Mennicke symbols, congruence kernels, graded lines and Witt support. A matching name alone was not treated as matching mathematics. Native `SL2Z_generators` in `Mathlib/LinearAlgebra/Matrix/FixedDetMatrices.lean:274` concerns SL₂(ℤ), not all Euclidean rings and all finite ranks. No duplicate fully qualified declaration of this module was found in the readable sibling acceptance files.

**Resolved ownership and supply.** Used the roadmap tools' object searches and `show`, the board package inventory, main and the supplied open checkouts. Main was `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. Existing roadmaps were read on main, including completed ones; new roadmap suppliers were read at their available open heads. The following 23 supplier/consumer families were resolved. Line references identify their README files; all are under `TauCetiRoadmap/` except the explicitly completed roadmaps.

| Roadmap and file locator | Contract resolved and boundary of ownership |
| --- | --- |
| `GrothendieckEulerForms/README.md:178`, :215, :238, :283, :331, :383 | Layers 0–5, intrinsic exact structures, the common K₀ presentation, resolutions, Cartan maps and Euler classes. This is the base roadmap, not work to rebuild. |
| `AlgebraicKTheory/README.md:19`, :75, :202, :235, :274, :331, :404, :493, :534 | Conventions and A0–A6. Right columns, additive K₁, finite perfection, stable GL/E, relative normal closures, stable range, Steinberg groups and patching. Local multiplicative notation and left rows are explicit transports. |
| `GeneralAlgebraicKTheory/README.md:97`, :615, :645, :899, :1538, :1638, :1696, :1773, :2197 | Incoming paths, split/Q, normalized absolute comparison, automorphism K₁, transfer, inverse-parameter patching, relative adapters, DVR boundary and Morita. §3.14 contains the comparison locally called classicalK1Comparison; lack of that literal string is not lack of the theorem. |
| `StableHomotopyKTheory/README.md:559`, :1321, :1792 | §§2.4–2.10, 3.29–3.30 and 4.25–4.26: based boundaries/pasting, universal-central-extension comparison and coherent Picard Γ-model. The signed ring-specific prism remains here. |
| `GeneralizedCohomology/README.md:405`, :533 | G2.7–G2.10, truncations, group completion and the actual outgoing-path fibre. Path reversal to GeneralAlgebraicKTheory is explicit. |
| `EnhancedDerivedSheaves/README.md:187`, :1153, :1624, :2375 | E0, E3, E5:presentability and E2.7: enhanced categories, localization, spectra, sheafification/truncation. Mapping-space statements retain coherences. |
| `SchemeKTheoryOperations/README.md:342`, :1017, :1146, :1670, :1895, :2128, :2256, :2479, :2814 | Resolution, local K₁/DVR maps, Witt support/α, descent, projective bundles, λ/γ operations and integral specialness. §§3.8 and 4.11 supply the actual α and first-truncation equivalence; the integer-graded determinant extension remains here. |
| `SchemeAndStackFoundations/README.md:4713`, :6987 | §§3.3 and 5.7: Euler degree, vector-bundle/coherent K₀, resolution hypothesis, rank/determinant and proper coherent pushforward. The cited names occur in the source section. |
| `AlgebraicVectorBundles/README.md:228` and L0C | Finite locally free sheaves, affine dictionary, exterior powers and componentwise determinant; not arbitrary-map determinant without equal ranks. |
| `PadicMeasuresIwasawaAlgebras/README.md:3172`, :3196, :3247, :3268 | §5.1, parity-graded affine determinant, inverse-determinant acyclic trivialization, cone comparison with coherent data. Integer grades/spectra/descent are genuine enhancements. |
| `ClassicalArithmeticCompletion/README.md:713`, :769, :1320, :1549; §§1.52,7.0,7.6–7.7,7.23; :16443, :16660 | Hilbert symbols use first argument in arithmetic Artin; target transposes to BMS. Lattice and stable-class inputs resolve. Omitted §§7.84 and 7.94 are R01. |
| `Completed/HeightsAndUnits/README.md:439` | §4.2 gives finite-S rank and fundamental system, including `Set.unit_finrank_numberField` at :443. |
| `AdelicAlgebraicGroups/README.md:3587`, :3605 | AA.3.6 fixed-K finite cover and overlaps. The open enlargement and application to SL₂ are targets here. |
| `ReductiveGroupsPartII/README.md:3647`, :3658 | RG2.2 sl2-tree, homothety classes, two vertex types and the named BTTree API. Arithmetic orbit/stabilizer comparisons are owned here. |
| `ClassFieldTheory/README.md:1312`, :1683, :1724, :1799, :1872 | Layers 7 and 11–14, arithmetic Frobenius normalization, reciprocity, existence, norm and Hilbert laws. No metaplectic classification is silently imported from abelian class field theory. |
| `Completed/GlobalNumberFields/README.md:259`, :279, :439, :459 | Layers 1–2 and 6–7, approximation, ray moduli and congruence conditions including real signs. |
| `Completed/Chebotarev/README.md:370`, :410 | Layers 9–10 provide prime selection in the required abelian/Frobenius classes. |
| `ReductiveGroups/README.md:129`, :176, :432, :1092 | Group-scheme/comodule and diagonalizable dictionaries, integral split groups; no substitution of complex characters for integral representation theory. |
| `RepresentationTheory/ClassicalGroups/README.md:237`, :272 | Complex weights and characters only; the integral operation input correctly comes from SchemeKTheoryOperations §6.3. |
| `JacobianChallenge/README.md:111`, :218, :448 | Line bundles/divisors, Picard and Abel–Jacobi interfaces. The elliptic Picard decomposition is consumed, not reconstructed. |
| `OperatorTheory/PolarDecomposition/README.md:353` | PD-B21 gives finite-dimensional polar existence, not a continuous deformation. The roadmap separately states the normalized QR deformation. |
| `Completed/ProfiniteArithmetic/README.md:441` | §2 concerns continuous automorphisms and outer actions. The roadmap correctly excludes it as a supplier of arithmetic metaplectic classification. |
| `ModularCurvesPartII/README.md:3914` | §15.3 is the Q,{p} congruence specialization. This is downstream, not an upward dependency used to prove the general rank-two theorem here. |

The worker's nine unresolved-citation leads resolve to module paths, planned geometric declarations, existing supplier statements and explicitly declared local notation. In particular the Witt α and support category are explicitly constructed in SchemeKTheoryOperations §3.8, even though its prose uses α_R and Perf(W(R) on R). These are not unowned prerequisites.

The open-work object search also covered GeneralAlgebraicKTheoryPartII, StableHomotopyKTheoryPartII, SchemeKTheoryOperationsPartII, ArithmeticKTheory, K2SymbolsBrauerPartII, K3BlochGroups, MotivicEtaleKTheory and the regulator/Habiro consumers available in the brief. The generic category, operation and spectrum constructions stay with their suppliers; this roadmap's additional formulas and signed/graded comparisons have a defined owner here. The remaining duplicated main-branch targets are precisely R01. No ownership judgment relies on an unread open revision replacing a roadmap on main.

## Not verifiable

No sampled source was inaccessible: all 15 seeded targets were checked in legally obtained texts. There is no missing-text request and no conditional acceptance. Elaboration verifies types, not the admitted theorems; the 189 computed rows and source comparisons above do not replace their eventual proofs.

## Source issues

These entries concern the sources, not additional roadmap findings. The roadmap avoids the false conclusions and supplies the regular-perfection proof route explicitly.

- **Error** in weibel2013 at Example II.2.5.4, printed p. 74: the source says characteristic-zero group algebras have one simple factor per ordinary conjugacy class; it should be restricted to a splitting field; Q[C₃] has two simple factors, so K₀=ℤ² rather than ℤ³; affects a stated result.
- **Misprint** in weibel2013 at Proposition II.2.6, proof, printed p. 74: the source says the sum uses ΛⁱQ⊗ΛʲP while the bounds use P's rank for i; it should be ΛⁱP⊗ΛʲQ with i+j=m+n; affects the proof.
- **Error** in weibel2013 at Exercise II.2.2(b–c), printed p. 78: the source says both extension/restriction composites multiply by the algebra class and have rank-power-torsion kernels; it should be limited to the base-ring composite; for k→k×k the other sends (1,0) to (1,1) and kills (1,−1); affects a stated result.
- **Error** in weibel2013 at III.1.2.4, printed p. 181: the source says the GLₙ/Eₙ identification has an exception for n=2 over F₂; it should be the finite commutator identification that is exceptional; GL₂(F₂)/E₂(F₂)=1=F₂×; affects a stated result.
- **Error** in weibel2013 at Remark V.3.4.2, printed p. 387: the source says the doubled affine line has vector-bundle K₀=ℤ but G₀=ℤ²; it should be K₀=G₀=ℤ², using its resolution property and Picard group ℤ; affects a stated result.
- **Error** in bms1967 at (A.23)(b), printed p. 90: the source says the extension exponent depends only on degree and the two roots-of-unity orders; it should be determined by the norm on roots; equal degree/order data can produce different exponents; affects a stated result; corrected in print at serre1974, Theorem 1, printed pp. 241–242.
- **Error** in bms1967 at the proof of (A.23), printed p. 91: the source says a cyclotomic extension splits into stages each increasing root-of-unity order by a prime; it should be replaced by Serre's corrected argument, since those stages need not exist; affects the proof; corrected in print at serre1974, §3, printed pp. 243–244.
- **Gap** in bhattScholze2015 at Corollary 5.6, proof, printed p. 19: the source says affine coherent-cohomology vanishing provides a Frobenius lift for an arbitrary regular algebra; it should be justified beyond the smooth case, or replaced by smooth approximation, supported continuity and completion; affects the proof.
- **Misprint** in stacks0FDJ at Lemma 36.38.5, proof, printed p. 99: the source says the second short exact sequence ends in F^(a+3); it should be F^(a+2), continuing the preceding cokernel sequence; affects the proof.
