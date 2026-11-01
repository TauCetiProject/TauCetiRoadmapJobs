# Review of ArithmeticStatisticsPartVI (pull request #1176 at 88461f2)

**Verdict:** needs changes

## R01 (P1) — The marked-quartic denominator has infinite height fibres

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:2207`, “up to the source twisted PGL₂(Q) action, ordered by invariant height of Jac(C)”.

**Claim:** These objects have finite height sublevels and their denominator is asymptotic to the sum of `#Sel₂(E)−1` over minimal elliptic curves.

**Witness:** For `f_t=t⁴(x⁴+y⁴)`, `t≥1`, the invariant is `I=12t⁸`, so the twisted orbits are distinct. All curves are soluble and isomorphic, with minimal Jacobian `y²=x³−4x`, height 256.

Indeed `x⁴+1` is irreducible over Q (translate by one and apply Eisenstein at two), and `[1:0:t²]` is a rational point. The change `z↦z/t²` identifies the curves. The conventions use the unique minimal elliptic pair; changing the quartic's scalar does not change that Jacobian height. Thus every cutoff greater than 256 contains infinitely many stated objects. `Nat.card` would give its infinite-type junk value, not a denominator for an average.

**Repair:** Define the marked family over minimal nonsingular pairs, with a nonidentity two-Selmer class, and use the fixed-invariant quartic dictionary, including the stated exceptional-orbit estimate. In the integral convention already used in §4.1, require invariants `(16I(E),64J(E))`. Alternatively specify and prove an equivalent quotient that also identifies the scalar/model changes. BSS actually fixes these invariants in its proof: bss-second lines 2185–2202. For the witness, the normalized representative is `4(x⁴+y⁴)`, with invariants `(192,0)` for the height-256 Jacobian; `4t⁴(x⁴+y⁴)` meets that normalization only when `t=1`. Keep this as a negative-control Check.

## R02 (P2) — Prove the numerical mass input to the full-family rank bounds

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:2140`, “Assume numerical lower bounds … with Σ_j b_j>5501/10000”; consumers at lines 2154, 2171 and 2188.

**Claim:** The roadmap reaches the numerical five-Selmer rank applications, but its root-balanced-family target assumes the numerical estimate that produces them.

**Witness:** bs-five lines 1455–1462 constructs the sign strata and derives their densities from Propositions 34, 35 and 37. Here no target proves the residue masses, product estimate or numerical lower bound supplied as a hypothesis.

This is a proof obligation removed from an unconditional source result, rather than a new family parameter. The hypotheses containing the desired numerical density also make its displayed conclusion a substitution into the denominator formula.

**Repair:** Add mathematical targets evaluating the dyadic and 3-adic residue proportions, the good-prime factors, and a rigorous tail estimate; derive the numerical lower bound. Specify the actual sign weights, `1/5` and `4/5`, and discharge the numerical hypotheses of all three consumers. The test instance is discriminant-sign conditioning: the rounded source values give `(1/5)·0.40914+(4/5)·0.58534=0.55010`, whereas averaging with equal weights gives `0.49724`. Strictly greater than `0.5501` requires retaining enough precision or a strict lower estimate. Once that is done, the rank mixtures themselves are correct: `88497/100000`, `100501/120000`, and `16503/80000`.

## R03 (P2) — Restore the acceptable infinite-family second-moment theorem

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:1143`, `:1173`; `TauCetiRoadmap/ArithmeticStatisticsPartVI/Suggested.lean:181`.

**Claim:** Both the factorial-moment input and the upper second-moment theorem cover only finite congruence families.

**Witness:** bss-second lines 55–59 explicitly includes acceptable infinite congruence conditions; its proof starts with an acceptable collection at lines 2185–2189. The Lean theorem requires only `IsFiniteCongruenceFamily`.

**Repair:** State and prove the marked bound and second-moment bound for the source's acceptable positive-mass infinite families, with their exact local-weight and tail hypotheses. Retain coupled finite unions as a specialization. The native definitions `IsLargeFamily`, `shortPairAverage` and `twoSelmerSize` already make the usual positive-mass large-family version statable; add that headline signature. Test the extension on a family excluding square discriminants at all sufficiently large primes, and retain the zero-local-mass family as an excluded control. The algebraic repair is unchanged: `N²=(N−1)(N−2)+3N−2`, hence `8+9−2=15`; the missing work is the family generality and its counting input.

## R04 (P2) — Missing proof interfaces do not prevent stating the rank-only headlines

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVI/Suggested.lean:32`, which omits “the numerical full-family mixtures” because modular comparison data are unavailable; README lines 2154, 2171 and 2188.

**Claim:** The full-family average-rank and low-rank-density headlines cannot be stated at the pins.

**Witness:** `fiveSelmer_basic_rank_bounds`, lines 167–176, already states both a rank average and a rank-indicator density on `shortPairAverage` and `Module.finrank ℤ (shortCurve ab).Point`. Those same carriers express all three numerical conclusions.

**Repair:** Include the unconditional rank-only headlines from bs-five Theorems 3–5 on the full minimal-pair family: eventual upper average `88497/100000+ε`, and eventual lower indicator averages `67/80−ε` and `1031/5000−ε`. Plan the existence/transport of the necessary modular input as proof work, with an earlier owner or a target here; do not use missing proof machinery as a reason to omit a statable conclusion or weaken the source theorem. Keep the genuinely analytic-rank statements separate in the docstring. On the existing rank-one and rank-two tests, the very same rank function takes values 1 and 2 and the indicators are respectively `(1,0)` for rank-at-most-one and `(0,0)` for rank-zero; no new carrier or free predicate is needed.

## R05 (P3) — The recorded gate fails on 130 HTML anchors

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:75` and the other 129 `<a id=…>` lines.

**Claim:** The README passes the required form gate.

**Witness:** The worker's exact-head gate reports `residue=130` and `FAIL`; its residue rule explicitly forbids `<a id=` tags. The first offending line is the rational-orbit-weight anchor.

**Repair:** Replace these anchors with ordinary Markdown headings and retarget the internal and reference links to their generated anchors. Update external links whose supplier headings have changed, including the Part I/III and AnalyticNumberTheoryPartII links. Re-run the gate: the acceptance condition is `residue=0`, with the mathematical target still reachable from its links. This is the only failed rule in the supplied gate; it prevents acceptance even though its severity is P3.

## R06 (P3) — API bullets claim Lean declarations that the acceptance file does not declare

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:85`, `:1199`, `:1339`, `:1783`, `:2345`, and analogous API lists.

**Claim:** Backticked own names such as `orbitWeight`, `ArithmeticSelmerRefinement.admissible_threshold` and `regulatorConstant_zero` name declarations in `Suggested.lean`.

**Witness:** The complete file has 24 declarations, all under `TauCetiRoadmap.ArithmeticStatisticsPartVI.Selmer`; none of those three names occurs in it. The citation resolver also identifies the admissibility, restriction and rank-one-family API names as unresolved.

**Repair:** Write these APIs as mathematical prose, removing undeclared declaration labels. Keep backticked own names only for the 24 actual declarations and any new headline definitions/theorems justified by the acceptance rules. For example, retain the threshold characterization of admissibility as a prose fact without `ArithmeticSelmerRefinement.admissible_threshold`. Do not fill the Lean file with these API facts; they are not headline acceptance tests.

## R07 (P3) — Add discriminating Checks for the retained coefficient predicates

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:1668`; `TauCetiRoadmap/ArithmeticStatisticsPartVI/Suggested.lean:206` through `:232`.

**Claim:** The polynomial, smooth-sublevel, point, odd-degree-point and local-solubility definitions are specified by their APIs and at least three discriminating Checks.

**Witness:** The README names these definitions together but supplies only the local-Div¹ warning at line 1676. It does not test the infinity disjunct, descending coefficient convention, degree guard or finite-extension cutoff individually.

**Repair:** Add prose API and three discriminating Checks for each definition, sharing a worked example where appropriate. For genus one, `(1,0,0,0,1)` gives `X⁴+1`, is smooth, and has the infinity points because the leading coefficient is 1. `(-1,0,0,0,-1)` has no real point, so fails local solubility. A zero leading coefficient fails the smooth-model sublevel even if the lower-degree polynomial is separable. Cutoff `m=0` admits no positive odd extension degree, while `m=1` tests Q-points. These controls distinguish wrong definitions; keep them in the README, not as sorried Lean padding.

## Verified sound

The review read the complete target README and Lean file, the repository's normative README and CONTRIBUTING, the supplied gate and citation output, and the relevant supplier texts. No outside-folder changes occur in the PR diff. No sorry'd data, `set_option`, extra imports, computational algorithm target, or new duplicate fully qualified Lean name was found in this folder. The new work is an extension of Parts I–V; it does not replace their carriers or orbit counts.

**Build and signatures.** The pinned dependency `TauCeti.AlgebraicGeometry.EllipticCurve.MordellWeil.SelmerGroup` was built first. Direct elaboration of `Suggested.lean` then succeeded, with exactly nine `sorry` warnings and no other warning. A scratch copy with `#check @name` for all **24 declarations** succeeded. All **15 definitions and nine theorems** retain their necessary parameters: in particular primality is retained by the local definitions, the genus guard is present on positive index two, the family hypotheses survive, and the height/genus limits have the intended order. Nothing was changed. A separate scratch tactic probe did not close any of the nine headline admissions with `simp`; reading their definitions and the pinned library also rules out `rfl`, instance synthesis, or a single existing headline theorem. No padding finding is made. A further scratch copy added the four proposed signatures from R03/R04 (large-family second moment and all three full-family rank conclusions); it elaborated successfully with only the expected `sorry` warnings. This tests statability, not truth.

The gate's complete rule summary is zero except `residue=130`; `build=0`, `depcheck=0`, `outside-folder=0`, `stray-files=0`, `sorry-data=0`, `imports=0` and `dropped=0`. The separately executed dependency audit returned:

```text
depcheck: 205 roadmaps, 1460 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. This does not override the semantic and form findings above.

**Headline coverage.** The README's end results are: means 3, 4, 7 and 6 for Selmer orders 2, 3, 4 and 5; upper second moment 15 and marked-Jacobian upper mean 6; upper rank bounds 3/2, 7/6, 21/20 and the sharper full-family mixtures; torsion/Sha consequences; hyperelliptic upper average 2, restricted order-k bounds and their genus limit; positive even/odd Selmer parities; disappearance of bounded odd-degree points; positive empty degree-one Selmer sets, index two and nontrivial Sha; positive simultaneous rank one; positive plane-cubic solubility; three-Selmer algebraic/analytic rank-zero applications and the conditional rank-one proportion; and the aggregate nonlifting lower average 3/5. The nine Lean statements cover the two versions of mean 3, three rank bounds (one also states the low-rank density), upper moment 15, plane cubics, and the two equation-model hyperelliptic consequences. The docstring correctly distinguishes missing higher Selmer groups, the four-to-two map, elliptic Sha comparison, and unpointed Picard/Selmer torsors. R03 and R04 identify omissions that are statable with the retained native coefficient and rank carriers.

**Adversarial calculations.** The following **145 rows** are diagnostic computations and hypothesis tests, not claims to prove asymptotic theorems by finite enumeration. `R` is the target README; `L` is its `Suggested.lean`. Each row names a target or convention and records actual values on both sides. The tests cover all 15 seeded sections, all nine Lean headlines, and each finding. Definitions/API variants sharing an object use the same explicit controls. The finite-field enumeration checked every coefficient vector at q=2,3,5,7 and every nonzero projective input at odd q.

| Statement / location | Instances and computed values | Result / change |
|---|---|---|
| Quartic invariants and sign, R27 | `x⁴−y⁴`: `I=−12,J=0`; `4I³−J²=−6912=27·(−256)` | Sign and factor 27 agree. |
| Minimal elliptic height convention, R27 | `A=−1,B=0`: `H_E=4`, `(I,J)=(3,0)`, `H_IJ=27`; `27·4=4·27=108` | Same normalization in the suppliers. |
| Integral representative scaling, R27 | `(I,J)=(3,0)→(48,0)`; heights `27→110592=4096·27` | Factor `2¹²`, not `2⁶`. |
| Empty and finite cardinal conventions, R25 | Empty set: `0/0=0`; a singleton with value 7: `7/1=7`; an infinite type has `Nat.card=0` | Infinite fibres must never be treated as finite; R01. |
| Rational orbit weight, R77 | S₃ on three letters, Γ=1, Y={0}: two transporters, one orbit; `w=2,n=1` | Distinguishes weight from orbit count. |
| Weight invariance and stabilizers, R89–103 | Move 0 to 1 in that S₃ example: two transporters again; stabilizer quotient `2/1=2` | Right-coset direction consistent. |
| Cyclic orbit control, R77 | C₆, Γ={0,3}, Y={0,1,3,4}: transporter cosets `{0,3}`, `{1,4}`; `w=n=2` | Equality with free stabilizers. |
| Full/empty Y and top Γ, R77 | Γ=G,Y=V gives one coset and one orbit; Y=∅ gives both zero | Both membership directions tested. |
| Locally soluble attached sets, R127 | `x³y−16xy³`: `(I,J)=(48,0)=(16·3,64·0)` and root `(0,1)`; `x³y−xy³` has I=3 | First meets scaled all-family condition; second fails it. |
| Singular and real-negative controls, R127 | `x⁴` has Δ=0; `−x⁴−y⁴<0` off zero | Both excluded for the stated reasons. |
| Local mass definition, R165 | All-family p=2 coefficient mass `1023/1024`, Selmer mass `1023/512`; p=3 mass `(1−3⁻¹⁰)/81` | Ratio two only at two; invariant adapter costs 81 at three. |
| Real mass definition, R165 | At X=1: positive-discriminant volume `8/5`, negative `32/5`, total 8; soluble mass total 4 | Real sign weights 1/5,4/5; ratio 1/2. |
| Height average and addition, R211 | Values 2,4 on two objects: mean 3; adding constant one gives `(3+5)/2=4`; empty mean 0 | Addition/constant formulas require eventual nonempty denominator. |
| Stabilizer-sum identity, R259 | S₃ witness: one Γ-orbit contributes `2/1=2=w`; inverse weight gives `1/2=1/#Stab_G` | Correct reciprocal convention. |
| Cartan valuation description, R281 | `diag(p,p)`: `(a,b)=(1,1),k=0`; `diag(1,p²)`: `(0,2),k=2` | Scalar quotient retained. |
| Cartan right-coset index, R281 | p=2, k=1,2 gives 3,6; p=3 gives 4,12; inversion changes `(0,k)` to `(-k,0)` with same k | Matches RG2.4.4. |
| Nonintegral translate, R301 | `p²x⁴+y⁴→x⁴+p²y⁴`; Δ=`256p⁶`; p=2 gives 16384, divisible by 4 | Works at two and three, not only good primes. |
| Class-number-one adapter, R319 | `diag(1,2)` has local distance one at two and zero elsewhere; scalar `2I` has distance zero everywhere | Primitive representative needed for intersection. |
| Global weight product, R339 | `4x⁴+y⁴`: Δ=`2¹⁴`; all odd factors equal 1, and the two distinct integral cosets at two give `m=m₂≥2` | Finite exceptional-prime product. |
| Finite-field nonsingular count, R359 | Exhaustive counts at q=2,3,5,7: `12,144,2400,14112`; formula `q⁵−q⁴−q³+q²` gives the same four values | Binary discriminant, including two. |
| Finite-field solubility, R377 | At q=3,5,7 respectively `144,2400,14112` nonsingular forms; insoluble counts `0,0,0` | Odd-characteristic hypothesis retained. |
| Local solubility away from square Δ, R397 | `x⁴−y⁴` has the exact zero `(1,1)` at every odd prime; `p²∤−256` there | Correct positive control; no dyadic claim imported. |
| Local constancy, R419 | `2x⁴+4x²y²+3xy³+2y⁴` has value 2 at every primitive F₃ input; nonzero squares are {1} | Whole mod-three ball is insoluble. |
| Real solubility iff, R437 | `x⁴+y⁴` gives 1 at (1,0), its negative gives −1 and no nonnegative value; `x³y−xy³` gives 0 at (0,1) | Both directions, definite and root cases. |
| Orbit Jacobian, R457 | On `x³y−(I/3)xy³−(J/27)y⁴`, columns for E₁₁,E₁₂,E₂₁,∂I,∂J have determinant `−1/27` | Agrees with the specified ordered differential. |
| PGL₂ volume, R475 | `#PGL₂(F₂)=6`, `6/8=3/4`; F₃ gives `24/27=8/9` | Includes small primes. |
| Change of measure, R493 | Unit integrand requires orbit mass `|27|p/(1−p⁻²)`; at p=3 this is `1/24`, multiplied by `27·8/9` gives 1 | Jacobian absolute value not inverted. |
| Congruence change-of-measure Checks, R505 | At p=3, I≡3 mod9 has mass `24/243=8/81`; RHS `27·(8/9)·3⁻⁵=8/81` | Both sides agree. |
| Weighted change of measure, R513 | One rational orbit with two integral pieces and stabilizer ratios 1,1 has m=2; sum of weighted pieces `1/2+1/2=1` | Removing 1/m gives wrong value 2. |
| Integral-domain guard for representatives, R513 | At p=2 the required invariant divisibilities are 16 and 64; `(I,J)=(3,0)` fails, `(48,0)` passes | No undefined unrestricted representative sum. |
| Local family mass formula, R531 | Factors at 2,3,5: `1/1024,27,1`; product `27/1024`, inverse real factor `1024/27` | Product equals 1. |
| Finite-index doubling, R551 | Z₂×C₂: quotient 4, kernel 2, ratio2; Z₃×C₂²: quotient4, kernel4, ratio1 | Imported cross-multiplication used with finite nonzero factors. |
| Local elliptic doubling, R571 | Open Z₂ subgroup: quotient2/kernel1; open Z₃ subgroup: quotient1/kernel1 | Finite-index passage preserves ratios 2 and1. |
| Real doubling, R591 | Circle: quotient1/kernel2; two circles: quotient2/kernel4 | Both ratios 1/2. |
| Local Selmer ratios, R611 | `2·(1/2)·1=1` for the two exceptional places and any odd place | No missing factor two. |
| Local-global attached-set equality, R633 | Δ=0 excluded on both sides; scaled identity quartic `(48,0)` passes every local test | Relies on the declared all-prime family membership, not mere arbitrary closures. |
| Selmer weighted numerator, R651 | Selmer sizes 1,2,4 have nonidentity counts 0,1,3 | Identity is added once, after orbit count. |
| Bad forms, R669 | Nonintegral translate of `4x⁴+y⁴` has Δ=16384; `x⁴−y⁴` has no odd bad weight prime | Square-discriminant divisibility agrees. |
| Real integral orbit count, R687 | Soluble components over Δ>0 are four-root and positive-definite; negative-definite contributes 0; over Δ<0 only the two-root component | Distinct from counting all real forms. |
| Invariant lattice count, R707 | Box at invariant height1 has side lengths2 and4, volume8; scaling X→64 scales it by `64^(5/6)=32` | Exponent 5/6 matches weights 1/3 and1/2. |
| Square-divisor tail, R725 | Summable prime majorants bounded by `Σ_{n>M}n⁻²≤1/M`; at M=10 bound 1/10 | Height limit precedes removal of prime cutoff. |
| Cubic short representative and Thue fibre, R743 | Reducible nonsingular cubic `x(x²−y²)=1` has only `(1,0)` over Z: count1≤12 | Reducible case retained; no algorithm target. |
| Elliptic uniformity, R759 | For X=T⁶, main scale T⁵; an `O(X^(1/2))` exceptional count is `O(T³)`, ratio `O(T⁻²)` | Not sufficient for unbounded Selmer weights without their own tail. |
| Large-family denominator, R779 | All invariant local product `1/(81ζ(10))`; real coefficient8 gives `8/(81ζ(10))>0` in H′ | Correct invariant-lattice factor. |
| Zero-mass denominator, R779 | A required local singleton has Haar mass0; proposed leading coefficient0, so division is disallowed | Explicit zero-mass branch retained. |
| Locally soluble orbit asymptotic, R803 | Mean nonidentity numerator2D plus o(D), denominatorD>0 gives ratio2 | Boundary and weighted tail remain proof inputs. |
| Euler-product average, R823 | At two factor `2·3/4=3/2`; real ratio1/2; odd product cancels ζ(2) | Final nonidentity mean2. |
| PGL₂ Tamagawa number, R841 | `2ζ(2)/ζ(2)=2`; truncating at2,3 gives `2π²/9≈2.19325` | Partial product is not the final value. |
| Mean-two headline, R859 / L127 | `2·(2·1/2)+1=3`; omitting dyadic ratio gives2 | Large-family headline has positive local masses. |
| Finite congruence positivity, R885 | Modulus1 admits all minimal pairs; empty residue set gives no pair and fails nonemptiness | Excludes an empty-family mean of zero. |
| Congruence mean headline, R905 / L135 | Disjoint component counts D₁,D₂ with numerators3D₁,3D₂ give total mean3 even if D₁≠D₂ | Coupled sign/residue unions permitted. |
| Rational two-torsion density, R927 | B=0 contributes `O(X^(1/3))` against `X^(5/6)`, ratio `O(X⁻¹/²)`; general integral-root count `O(X^1/2)` gives `O(X⁻¹/³)` | Infinite does not mean positive density. |
| Rank 3/2 headline, R945 / L144 | r=0,1,2,3: `2r=0,2,4,6`; `2^r=1,2,4,8`; mean-size3 gives3/2 | No equality of rank with Selmer dimension. |
| Sha rank bound, R967 | `(rank,torsion dimension,Sha dimension)=(0,2,0)` gives Selmer dimension2, order4; `(0,0,2)` gives the same | Cannot discard either summand pointwise. |
| Height moments, R987 | Constant2 has moments2,4; even-integer indicator has every positive moment1/2 | Indicator and higher moments distinguished. |
| Nonadditivity/Markov, R987 | Alternating dyadic blocks have upper densities2/3 each, sum4/3; values0,4 equally weighted give mean2, tail at4 of1/2=2/4 | Actual upper/lower limits retained. |
| Rational p-torsion density, R1041 | Enclose weighted box in square of side `X^1/2`: thin-set bound `O(X^3/4 log X)` divided by X^5/6 tends0 | IG.2's cube bound suffices; no unsupported weighted estimate necessary. |
| Mean-three, R1063 | Nonidentity average3 plus identity1 gives4 | Higher Selmer carrier genuinely missing at pins. |
| Rank 7/6 headline, R1083 / L156 | r=0,1,2,3: `6r−3=−3,3,9,15≤1,3,9,27`; `(4+3)/6=7/6` | Native rank signature appropriate. |
| Mean-four, R1103 | Order-four mean4 plus order-dividing-two mean3 gives7 | Not the prime formula p+1 at p=4. |
| Mean-five, R1123 | Identity1 plus nonidentity5 gives6 | Uses its own representation and local factors. |
| Marked factorial moment, R1143 | N=1,2,4,8 gives `(N−1)(N−2)=0,0,6,42`; `N(N−1)=0,2,12,56` | Correct two distinguished classes; extend families under R03. |
| Upper second moment headline, R1173 / L181 | For N=1,2,4,8 both sides of `N²=(N−1)(N−2)+3N−2` are1,4,16,64; `8+9−2=15` | Correct algebra; R03 scope repair. |
| Admissibility, R1195 | Full local locus passes with threshold0; changing only p=2 still passes with threshold2; empty loci at every large p exclude the point-bearing polynomial `x^n+1` | Threshold and finite-change API distinguish wrong models. |
| Degree-one comparison, R1223 | A divisor of odd degree3 minus one hyperelliptic fibre has degree1; gcd(2,3)=1; only even degrees have index2 | Actual-divisor hypothesis essential. |
| Generic Weierstrass class, R1233 | S₄ on four roots has no invariant odd partition and no nonzero invariant even partition modulo complement; the zero class is nevertheless a separate candidate | Full symmetric group, not mere irreducibility. |
| Pencil weight, R1251 | `A=I₄` makes `q_A(v)>0` for nonzero real v: orbit weight0 despite roots of invariant `x(x−y)(x−2y)(x−3y)` | Invariant solubility alone does not define orbit solubility. |
| Soluble pencil control, R1251 | Supplied matrices have `det(xA−yB)=x⁴−xy³−y⁴`, Δ=−283, and both quadratic forms vanish at e₁ | Discriminant sign and isotropic-vector convention agree. |
| Pencil weighted count, R1267 | Trivial rational stabilizer gives total weight1; stabilizer order2 gives weighted mass1/2 | Must not replace by unweighted1 before exceptional estimate. |
| Hyperelliptic local ratios, R1279 | g=1: `(ρ∞,ρ₂)=(1/2,2)`; g=2: `(1/4,4)`; both products1 | Empty torsor has numerator0 and is excluded. |
| Pencil measure comparison, R1293 | Rescaling rational Jacobian constant by2 changes real factor by2 and two-adic factor by1/2 | Total factor1; no independent Haar renormalization. |
| Central quotient Tamagawa, R1303 | n=4: required τ=2, while simply connected SL₄ has τ=1 | Group-scheme quotient matters. |
| Hyperelliptic weighted bound, R1317 | τ2 times local product1 gives2 times the same coefficient denominator; no extra identity yields3 | One-sided bound, not equality. |
| Restricted Selmer set, R1335 | On {0,1,2}, restrictions {0,1} and {1,2} yield {1}, size1; no restrictions yields3; empty image yields0 | Membership, monotonicity, empty-set API. |
| Odd component bound, R1369 | `(m,k)=(3,1),(5,3),(3,9)` gives3,15,4 versus denominators4,16,4; `(0,0)` gives0 versus natural-power junk1 | m>0 required for saturation. |
| Effective real divisors, R1407 | m=4, k=1: fraction4/8=1/2; k=3:8/8=1; a conjugate pair contributes degree2 but parity0 | Translation by (k−1)/2 fibres consistent. |
| Number-field coefficient count, R1425 | K=Q,N=2, one residue mod3: density1/9; residue degree2,N=2:1/p⁴; unit ideal density1; empty residues0 | Exponent rN, norm exponent N. |
| Number-field tail, R1444 | Empty envelope contributes0; two zero coordinates give local density1/p²; one zero coordinate gives1/p | Codimension two is a real restriction. |
| Number-field twist height, R1462 | α=1/2,t=2 gives β=2 and H(βf)=2H(f); in Q(√2), multiplication by1+√2 takes (0,1) to(2,1), height1→2 although norm has absolute value1 | Matrix norm retained, field norm alone insufficient. |
| Isogeny quotient, R1480 | Identity: Q=1; multiplication by3 with rank1 and one divisible Sha summand: Q=3²=9, not3 | Divisible Sha retained. |
| Selmer self-duality, R1499 | Trivial group on Qₚ² gives dual dimension2; zero representation gives0 on both sides | No Sha-finiteness assertion inferred. |
| Regulator parity, R1519 | C₂² relation on trivial character: `(1/2)⁻³(1/4)²=1/2`, square class2; nontrivial character gives2 | All four characters have odd two-valuation. |
| Biquadratic formula, R1537 | A quotient with two-valuation1 has inverse valuation−1; both are1 mod2 | Direction change harmless only after parity. |
| Four-twist local parity, R1553 | Distinguished toric factor has valuation1, all good/cyclic factors valuation0; sum1 mod2 | Extra local-point condition retained for finite dimensions. |
| Mod-eight family, R1570 | `(2Y+x)²−x²=4Y²+4xY`; dividing by4 yields `Y²+xY`; twist x² residues1,7,2,6 | Corank conclusion only. |
| Odd-residue model factorization, R1580 | `x³=x·x²`: squarefree factor x and square factor x are not coprime; for n=3,q=37, `q+1−n√q>19>3` | Roadmap correctly repairs the source proof. |
| Full-family parity density, R1594 | n=3: `8⁻⁴·2⁻⁴=2⁻¹⁶=1/65536`; four residue labels distinct | No double-counting of blocks. |
| Admissible-family parity, R1604 | At degree n=4, Q coefficient exponent5; quadratic field exponent10; fixed twist of height factorC costs C⁻⁵ or C⁻¹⁰ | Auxiliary twists fixed before limits. |
| Hyperelliptic upper mean, R1622 | Common denominator cX^(n+1), numerator≤2cX^(n+1)+o gives≤2 for c>0; c=0 gives no quotient inference | Explicit envelope/positivity retained. |
| Order-k strict bound, R1640 | g=3,k=1, fully split m=4 gives4/8=1/2<1 | Positive measure of this real stratum needed. |
| Order-k vanishing bound, R1650 | k=1,m=10 gives10/512; conditioning on an event of probability≥1/2 multiplies a small exceptional probability by at most2 | Correct height-then-genus limits. |
| Small odd-degree points headline, R1666 / L238 | Degrees1,3 reach k=3 by adding one or zero degree-two fibres; k=0 cannot be positive odd; fixed m=1 gives Q-points | Genuine point-at-infinity and odd-degree definitions; R07. |
| Empty Selmer proportion, R1684 | N=100,E=20,B=0,T≤200 forces `200≥240−4Z`, hence Z≥10=E/2 | Empty torsor size0, not1. |
| Positive index-two headline, R1694 / L247 | Degree subgroup2Z has gcd2 and no odd degrees; adjoining degree3 makes gcd(2,3)=1 | g≥1 and local solubility present. |
| Nontrivial Sha two, R1706 | Nonzero [J¹] killed by2 has order exactly2; trivial class has order1 | No full-Sha finiteness needed. |
| Degree-one empty/infinite, R1716 | Finite odd-order group C₃ has quotient by2 of size1; Z has quotient size2 and infinitely many points | Nonzero Kummer W class forces positive rank after torsion removal. |
| Corrected two-prime criterion, R1726 | (p,q)=(5,3): (5/3)=(3/5)=−1; Q₂(√5) unramified quadratic and Q₂(√3) ramified quadratic give degree4 | Two has a unique prime; dyadic condition necessary for cited proof. |
| Rank-one converse, R1747 | A one-dimensional local map F₅→F₅ is either zero or injective; zero image lies in the torsion-image subspace | Dimension alone is insufficient. |
| Twisted converse, R1763 | D=−39 is1 mod8,1 mod5,3 mod7; signs at2,5,7 are +,+,− | Applies squarefree conductor hypothesis to E, not its ramified twist. |
| Rank-one coefficient family, R1779 | (−208,464): Δ₀=30182656, d=117901=7·16843, Δ₀ mod39=10=7²,864B mod7=6,#E(F₅)=7 | Explicit positive member. |
| Rank-one negative controls, R1803 | (−208,656) has c₆ test1 square mod7; (208,464) has d=−163315; (−880,464) has #E(F₅)=6 | Three independent exclusions. |
| Dyadic family repair, R1813 | (−208,464) gives `y²+y=x³−13x+7`, Δ=117901; cylinder mass1/(32·64)=1/2048 | Corrected valuation-four model. |
| Source dyadic counterexample, R1825 | (−136,16): v₂(c₄)=7,v₂(Δ)=12; scaling discriminant to a unit would give v₂(c₄)=3 | Cannot be an integral good-reduction model; source issue below. |
| Local five quotient comparison, R1829 | Torsion orders1,5 give quotient orders5,25; quotient modulo actual torsion image has order5 in both ordinary cases | Cardinal-only identification insufficient. |
| Five-label equidistribution, R1845 | Q of size5: each label mean1; size25: each label mean1/5; all labels total5 | Counts nonidentity elements, not curves. |
| Torsion-image bound, R1864 | Selmer dimensions1,2,3 have at least0,4,24 nonidentity elements in a kernel of codimension≤1 | Correct costs p−1,p²−1 at p=5. |
| Saturated count, R1881 | `1−2/(5−1)=1/2`; odd-dimension and dimension-zero original subsets are disjoint | No double-counting twists at different height. |
| Positive simultaneous rank one, R1898 | Raw twist height factor39⁶=3518743761; count cost39⁵=90224199 | Lower bound `c_F/(2c_E·90224199)>0`. |
| Soluble three-Selmer elements, R1916 | Rank1 contributes `3¹−1=2` nonidentity Kummer classes; rank0 contributes0 absent torsion | Flex-free generic classes, not the identity. |
| Cubic height/orbit transfer, R1932 | Scalar matrix λI acts by λ³/λ³=1; coefficient dilation t scales invariant height by t¹² | PGL₃ rather than SL₃(Q). |
| Fundamental-region count, R1949 | Height X=t¹² gives X^5/6=t¹⁰; multiplicity M=2 divides a distinct-vector lower count by at most2 | Same convention in total and soluble count. |
| Plane-cubic headline, R1966 / L191 | Zero vector evaluates to0 for every cubic and is excluded; `x³+y³+z³` has nonzero root(1,−1,0); cube at T=1 contains3¹⁰=59049 models | Model count, not isomorphism count. |
| Balanced three rank zero, R1984 | Half odd of size3 and even masses1/4 at size1,1/4 at size9: mean `1/4+3/2+9/4=4` | Trivial-Selmer lower proportion1/4. |
| Balanced three rank one, R2001 | Masses1/2 at size1,5/12 at size3,1/12 at size27 give mean4 | Bound5/12; finite Sha needed to turn dimension1 into rank1. |
| Positive three ranks, R2018 | A root-reversing involution on a finite height set pairs signs (+,−): each orbit contributes one of each | Does not assume global root balance. |
| Analytic rank-zero criterion, R2035 | Trivial finite Selmer gives corank0; augmentation vanishing would force corank≥1 | Contradiction uses supplied divisibility, not control alone. |
| Positive analytic rank zero, R2052 | Exceptional proportion0 deleted from an available1/4 leaves1/4 in the positive-density family | Residual ramification retained. |
| Positive weak BSD, R2069 | The proved pair of ranks is(0,0); no leading-coefficient value follows | Scope is rank equality only. |
| Two-Selmer nonlifting, R2088 | `(a,b)=(1,1)` in C₄ᵃ×C₂ᵇ: Sel₂ size4,image size2,nonlift2; aggregate `3−12/5=3/5`, divided by3 gives1/5 | Elements, not a curve-density claim. |
| Five basic rank headline, R2104 / L167 | r=0,1,2,3 gives `20r−15=−15,5,25,45≤1,5,25,125`; `(6+15)/20=21/20`; `1·19/24+25·5/24=6` | Both native rank bounds. |
| Five balanced bounds, R2123 | Masses3/8,1/2,1/8 at dimensions0,1,2 give mean6,rank3/4,low-rank7/8,rank-zero3/8 | Simultaneous finite-height inequalities justify limiting bounds. |
| Root-balanced mass, R2140 | Sign weights1/5,4/5 and rounded conditional densities give0.55010; weights1/2,1/2 give0.49724 | R02: actual numerical estimates must be proved. |
| Full average-rank mixture, R2154 | `.5501·.75+.4499·1.05=.88497<.885` | Arithmetic correct; R02/R04. |
| Full low-rank mixture, R2171 | `.5501·7/8+.4499·19/24=100501/120000`; `67/80=100500/120000` | Correct rounding; R02/R04. |
| Full rank-zero mixture, R2188 | `.5501·3/8=16503/80000`; `.2062=16496/80000` | Correct rounding; R02/R04. |
| Marked Jacobian mean, R2207 | f₁=x⁴+y⁴ has I=12; f₂=16(x⁴+y⁴) has I=3072; both minimal Jacobian heights256 | R01: distinct orbits at the same height. |
| Normalized marked mean, R2209 | Numerator bound `8+2·2=12`, marked denominator mean2; quotient12/2=6 | Valid after the normalization repair. |
| Modular comparison and twists, R2231 | Trivial twist multiplier1; −39 raw height multiplier39⁶ | Equality of Euler factors does not itself construct an isogeny. |
| Ordinary ideal direction, R2245 | In Qₚ[[T]], `(T²)⊆(T)`; L=T and char=T² both vanish at augmentation | Required containment direction, rational periods retained. |
| Anticyclotomic implication, R2261 | A Selmer line mapping by a nonzero scalar to a local line has strict kernel dimension0; zero map has kernel1 | Local injectivity cannot be omitted. |
| Heegner logarithm/low rank, R2277 | A simple zero of product with orders(0,1) has order1; orders(1,1) give2 | Correct isolation of the twist factor. |
| Fixed-real-root probability, R2295 | Uniform[−1,1] variance1/3; multiplying by√3 gives1; odd degree and even root count is impossible | Source fixed-k theorem supports this; no endpoint claim. |
| Primitive anticyclotomic character, R2299 | p=3,n=1: character order9 is primitive, order3 factors through prior layer | Good-prime-only restriction not introduced. |
| Character multiplicity, R2315 | p=3,n=1: rational primitive dimension(3−1)·3=6; restriction is three copies of dimension2 | Arithmetic descent primary text remains unverified below. |
| Elliptic p-parity, R2331 | `(s_p,t_p)=(0,0)` gives even0; `(1,1)` also even0; omitting torsion in latter gives odd1 | Finite/corank/rank distinctions preserved. |
| Brauer regulator definitions, R2345 | Zero relation gives1; C₂² trivial character gives1/2 and others2; all are square class2 | Pairing scaling cancels by the Brauer dimension relation. |
| minimalShortPairs / shortCurve, L47,L81 | (0,0) singular; (−1,0) minimal nonsingular; (−16,0) fails at2 since 2⁴ divides A and2⁶ divides0 | Native carriers exclude singular averages. |
| localPairClosure / pairHaar, L53,L60 | Empty family closure∅,mass0; full coefficient lattice mass1; one mod-p pair residue has mass p⁻² | Closure does not itself assert null boundary. |
| IsLargeFamily, L68 | Empty family fails positive mass; all minimal pairs have local masses1−p⁻¹⁰>0; excluding a unit-Δ residue at infinitely many p fails largeness | Predicate relates F to its actual closures. |
| shortPairSublevel / Average, L87,L93 | Pair(−1,0) has height4: absent at X=4, present at X=5; singleton average c/counter1=c | Strict cutoff and empty convention agree. |
| twoSelmerSize, L101 | Singular(0,0) gives0; smooth E:y²=x³−x has rational two-torsion dimension2, so Selmer size≥4 | Native descent includes finite and real local conditions. |
| IsFiniteCongruenceFamily, L117 | N=1 permits full minimal family; C=∅ fails nonempty cutoff; N=0 is excluded by0<N | Coupled sign/residue data retained. |
| Hyperelliptic polynomial/sublevel, L206,L211 | g=1,a=(1,0,0,0,1) gives X⁴+1,degree4,separable; zero leading coefficient fails guard | R07 adds explicit README controls. |
| Hyperelliptic point/local predicates, L219,L232 | X⁴+1 has infinity square1; −X⁴−1 has neither affine real points nor square leading coefficient−1 | Point at infinity is not lost. |
| Odd-degree predicate, L226 | m=0 admits no positive extension degree; m=1 permits degree1; degree2 fails Odd | All finite extensions, not only Galois ones. |

**Source sample.** All 15 seeded targets were compared against the cited editions and their hypotheses. No additional locator is explicitly flagged unverified by this README. Keys below identify the legal service extractions; paragraph summaries are in my own words.

| Seeded section | Text and locator checked | Outcome |
|---|---|---|
| 4.2 | bs-quartic, arXiv v3, Proposition3.6 pp.24–25, lines1330–1372; Proposition3.18 p.32, lines1914 onward | Stabilizer weights and finite local product supported; all-prime translate extension has the displayed elementary discriminant proof. |
| 4.4 | bs-quartic §2.1 p.8, §2.7 p.19; Theorem3.19 proof p.33 | Real components and local regularity route agree; null boundary is an explicit extra hypothesis, correctly not inferred for an arbitrary closed subset. |
| 4.7 | bs-quartic Theorem3.5 p.24 and §3.3–3.6 pp.25–34; lines1330–1372 and1950–2015 | Fixed invariants, nonidentity numerator, reciprocal stabilizers and local ratios agree. |
| 4.8 | bs-quartic Proposition3.16 pp.31–32 and Theorem3.17 p.32, lines1850–1913 | Quartic-to-cubic fibre estimate and positive-denominator count; zero-mass qualifications checked. |
| 4.11 | bs-quartic Corollary1.2 and identity(2), p.2; bklpr Lemma5.7 p.19, lines958–967 | Rank bound and torsion-density use the correct pointwise comparison; no full-Sha finiteness inferred. |
| 4.14 | bs-three Theorems1,3; bs-four Theorem25 and conclusion pp.20–21; bs-five Theorem31 p.21; bss-second Theorem1.1 p.2, lines55–59, §7 pp.39–47 | Means and upper-moment algebra supported; infinite-family omission is R03. |
| 4.16 | bgw §11 pp.32–33, lines1370–1405, Theorem41/(21) | Local factors and τ=2 agree; one-sided bound and actual local torsor points retained. |
| 4.18 | bgw TheoremA.3 p.36, lines1554–1562, A.7/A.8 pp.37–39; dd-quotients Theorem4.3 pp.17–18, lines911–945 | Finite Sha quotient and extra four-twist local-point hypothesis retained. |
| 4.20 | bgw Theorem7 and (23) pp.33–34, lines1440–1479; Corollary8 p.3; dpsz-roots Theorem1.2 p.2, lines69–75 | Fixed odd k, real component fraction and ordered limits supported; endpoint overstatement corrected. |
| 4.21 | bgw Theorems1,2,5,12 pp.1–4; Theorem44 pp.34–35, lines1495–1506; A.3 p.36 | Empty/index/Sha deductions use actual divisors; dyadic correction supported. |
| 4.22 | bs-rank-one Theorems3–4 pp.2–3, Propositions11–12 pp.11–13, lines441–542; skinner-converse TheoremsB,C pp.331–332 | Exact local-torsion labels and twist hypotheses retained; coefficient-family correction checked numerically. |
| 4.25 | bs-three Theorems41–44 pp.21–23, lines1135–1243; su-main Theorems1,2(b) pp.2–3 | Rank-zero/one constants and analytic criterion have the necessary parity/Sha/ordinary/residual conditions. |
| 4.26 | bs-four Theorem3 p.2 and proof pp.21–22, lines1147–1166 | Aggregate nonlift bound3/5 and element fraction1/5 supported. |
| 4.27 | bs-five Theorem6 pp.4–5, Propositions35–37 pp.23–28, lines1455–1462; Propositions38–40 pp.28–29, lines1466–1518 | Constants supported; missing mass proof is R02 and Lean coverage R04. |
| 4.28 | bss-second Theorem1.2 p.2, lines47–64; §7 p.39, lines2185–2210; Lemma7.3 through Theorem7.14 pp.41–46 | Fixed-invariant proof supports normalized statement; literal orbit/height formulation has R01. |

BCDT’s author-hosted preprint was also obtained and read: Theorem A, p.1, bcdt line16, and the equivalent L-function, Galois and classical parametrization statements on p.3, bcdt lines89–103. This is the prepublication page numbering, not the journal pagination. It does not by itself provide every marked quaternionic comparison.

Additional legal texts opened were poonen-rains arXiv v2; bklpr arXiv v2 (notably Remark5.12, lines1021–1035, on moment tails); b-plane arXiv v1; dd-selfdual arXiv v2 Theorem1.1; dd-regulators arXiv v3; Cornut–Vatsal's author text, §4.1 Theorem4.2; Poonen–Stoll's author copies of the density paper and corrected pairing paper. The author copy of dpsz-roots has Theorem1.2 on p.2, with the fixed-count conclusion used here. Sources were fetched through the prescribed service; no source file or extraction was added to the roadmap.

**Pinned libraries and ownership.** Pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Concrete declarations opened or located at those pins include:

| Library location | Declaration and contract checked |
|---|---|
| `Mathlib/GroupTheory/Coset/Defs.lean:106` | `QuotientGroup.rightRel`, with criterion `y*x⁻¹∈H`: matches Γg. |
| `Mathlib/GroupTheory/GroupAction/Quotient.lean:184` | `MulAction.card_orbit_mul_card_stabilizer_eq_card_group`; finite group/orbit/stabilizer hypotheses present. |
| `Mathlib/Data/Set/Card.lean:613` | `Set.ncard`, expressly zero for infinite sets; does not supply finiteness. |
| `Mathlib/MeasureTheory/Measure/Haar/Basic.lean:520` | `haarMeasure`/generated `addHaarMeasure`, normalized on specified positive compact set; total mass1 here comes from choosing the compact lattice. |
| `Mathlib/NumberTheory/Chebyshev.lean:796` | `Chebyshev.eventually_primeCounting_le`: positive ε and eventual bound with log4+ε. |
| `Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:913` and `:978` | `resultant_eq_zero_iff`, `resultant_deriv`; field/positive-degree guards retained. |
| `Mathlib/FieldTheory/Perfect.lean:327` | `PerfectField.separable_iff_squarefree`; not a claim for arbitrary imperfect coefficients. |
| `Mathlib/Algebra/CubicDiscriminant.lean:465` | `Cubic.discr_eq_prod_three_roots`; leading coefficient nonzero. |
| `Mathlib/RingTheory/Polynomial/RationalRoot.lean:114` | `isInteger_of_is_root_of_monic`; monicity essential. |
| `Mathlib/NumberTheory/Padics/Hensel.lean:459` | `hensels_lemma`; p-adic statement, not a universal-DVR shortcut. |
| `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Projective.lean:41` and `Card.lean:120` | `Matrix.ProjGenLinGroup`, `Matrix.card_GL_field`; used for matrix quotients/finite-field counts, not the rational points of every central group-scheme quotient. |
| `Mathlib/LinearAlgebra/FreeModule/PID.lean:532` | `Submodule.smithNormalForm`; finite basis/PID context. |
| `Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean:98` | `riemannZeta_eulerProduct_tprod`, with real part>1. |
| `Mathlib/NumberTheory/LSeries/HurwitzZetaValues.lean:226` | `riemannZeta_two`; nonzero π²/6 allows cancellation. |
| `Mathlib/AlgebraicGeometry/EllipticCurve/Reduction.lean:323` and `:345` | `HasGoodReduction`, `HasMultiplicativeReduction`, extending minimality. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FinitePoint.lean:53` | `WeierstrassCurve.Affine.finite_point`; finite base-field point carrier. |
| `TauCeti/GroupTheory/Index/NSmul.lean:136` | generated `AddSubgroup.index_range_nsmul_mul_card_ker`; cross-multiplied identity for finite-index subgroups, not a ratio with arbitrary infinite torsion. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroup.lean:104`, `:128`, `:142` | `selmerGroup₂`, `card_range_μ`, `pow_rank_le_card_of_range_μ_le`; finiteness and finite generation are not supplied by the definition. |

Object searches used the prescribed roadmap search across main and the indexed open heads, plus the supplied sibling files and board packages. Relevant overlap is handled as follows:

- Part I owns families, heights, quartic invariants and finite-field squarefree counts; the inspected target paragraphs are at `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:174`, `:434`, `:546`, `:600`, `:836`, `:876`, `:894`, `:944`, `:1288`, `:1742`, `:1782`. Their objects are imported, with the rank/point definitions here serving only to state headlines.
- Part II owns the rational quartic and Selmer dictionaries (`README.md:1083`, `:1119`, `:1323`, `:1375`), integral pencil representations (`:1903`, `:1957`, `:2033`, `:2053`) and marked embedding (`:2093`). The marked embedding explicitly preserves the original curve before monicization. Its supporting descent block at `:2340` supplies the named `GenusOneModel` interfaces; these are roadmap targets, not declarations already present in a pinned library.
- Part III supplies cusp/weighted counts and sieve tails (`README.md:650`, `:852`, `:1112`, `:1821`, `:1833`, `:1849`, `:1859`, `:1879`, `:1909`, `:1941`, `:1971`, `:1979`). The fixed-A count has `10θ+62δ<λ`, reciprocal stabilizer normalization and fixed smooth support. The coefficient tail explicitly requires a fixed codimension-two envelope. Part V's cubic ramification tail is at `README.md:300`.
- AnalyticNumberTheoryPartII §§5.4–5.7 (`README.md:656`, `:673`, `:696`, `:714`) owns the projective cubic-algebra and weighted coefficient interfaces. It is a supplier, not a consumer. Its sections exist even though the old `s5-*` links no longer resolve as literal anchors.
- `TauCetiRoadmap/EllipticCurves/README.md:1200`, `:1262`, `:1395` supplies Mordell–Weil, the finite Selmer exact sequence and minimal short-pair uniqueness. `TauCetiRoadmap/SchemeAndStackFoundations/README.md:4905` and `:4946` supplies the unpointed Picard/Brauer/Abel constructions; `TauCetiRoadmap/JacobianChallenge/README.md:300` supplies the Abel map.
- `TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md:829` supplies local doubling; `:1837`, `:1870`, `:1902` supplies the pencil dictionary/count, local masses, central-quotient Tamagawa number, isogeny Euler comparison and parity. Its qualitative real-root probability target at `:1937` is sufficient for the genus limit. This roadmap's fixed-count rate is a stronger supporting assertion, with a separate source.
- `TauCetiRoadmap/ReductiveGroupsPartII/README.md:6213` and `:6662` supplies Cartan and the PGL₂ indices. The retained addition is the valuation description and right-coset adapter, not another tree construction. AdelicAlgebraicGroups AA.3.3 (`README.md:3073`) supplies GLₙ finite class number one; GeometryOfNumbersAndQuadraticArithmetic §4.1 (`README.md:1377`) supplies the corrected Davenport estimate. InverseGaloisAndArithmeticFundamentalGroups IG.2 (`README.md:2108`) supplies the thin-set cube bound, which already suffices for the weighted elliptic box by enclosure.
- `TauCetiRoadmap/SelmerIwasawaCohomology/README.md:2509` supplies the reduced Cassels–Tate pairing contract, including the dyadic distinction. ClassFieldTheory Layer10 (`README.md:1552`) supplies the global Brauer comparison, and ModularForms Layer7 (`README.md:708`) supplies the modular L-function interface.
- The later ModularIwasawaMainConjectures §1.3 (`README.md:850`) also discusses the ordinary Skinner–Urban result. It cannot become an upward supplier here. This earlier roadmap must own the precise rational divisibility needed for its applications, while the later assembly uses that result with its more general modular forms and integral period comparisons. Likewise the later HeegnerPointEulerSystems and RankZeroOneBSDPartII texts import this roadmap's specialized analytic targets. No suggestion to cite those later roadmaps as suppliers is made.

The listed supplier locations refer to the main copy where present and otherwise the indexed new-roadmap head returned by the prescribed service. The citation resolver found no nonexistent cross-roadmap section. Its 22 unresolved Lean-name leads were checked as leads: imported `GenusOneModel` names are supplier targets; the own API labels are R06. The source and supplier distinctions matter: a source citation does not establish that an arithmetic construction already exists in Mathlib or Tau Ceti.

## Not verifiable

- **nekovar-euler**, Theorem3.2, *The Euler system method for CM points on Shimura curves*, needed for the character-level descent in README line2315: the author's IMJ URL returned HTTP403; the CiteSeer institutional route returned a missing archived page. dd-quotients lines1480–1483 confirms the intended combination of this theorem with Cornut–Vatsal, but is not a substitute for checking the primary theorem's hypotheses. Its full stated bad/ramified-p generality remains uncertified here.
- **monsky-parity**, *Generalizing the Birch–Stephens theorem. I: Modular curves*, Math. Z.221 (1996),415–420: the source service returned `uncertified` for the paywalled Springer DOI. The p=2 primary proof was not read; dd-quotients line1440 identifies it as the p=2 input. No missing-source re-request is made for this settled paywall result.
- **friedberg-hoffstein**, TheoremB, auxiliary twist nonvanishing: the service reached the JSTOR landing page but found no legally readable text. The use in bs-rank-one's proof was checked; the primary theorem itself was not certified.

These limitations are reported without parking the review or editing a source manifest. They are independent of the concrete blocking witnesses R01–R04.

## Source issues

- **Error** in bss-second at Theorem1.2, p.2: the source says quartic PGL₂-orbits are counted by their Jacobian's minimal height without normalizing invariants; it should fix minimal Jacobian invariants as in §7; affects a stated result.
- **Gap** in bgw at Definition39 and Proposition42, pp.31–33: the source says a condition on reduction images supplies the excluded-coefficient sieve tail; it should require the excluded local tuples themselves to reduce into the fixed codimension-two envelope; affects the proof.
- **Gap** in bgw at Theorem44, pp.34–35: the source says the two odd-prime conditions suffice for the four-twist argument; it should also impose A.3's hypotheses at dyadic places with full decomposition group; affects the proof.
- **Error** in bgw at LemmaA.5(3), p.37: the source says the squarefree part and the removed square factor can be chosen coprime; it should allow a common factor, as in x³=x·x², and avoid all bad roots when lifting; affects the proof.
- **Gap** in bgw at proof of Theorem7, p.34: the source says the cited real-root theorem covers the cutoff log n/log log n; it should use a little-o cutoff or finitely many fixed root counts; affects the proof.
- **Error** in bgw at proof of TheoremA.2, p.37: the source says a field-norm power controls coefficient-coordinate height under twisting; it should use norms of the multiplication matrix and its inverse in a fixed integral basis; affects the proof.
- **Error** in bs-rank-one at the definition of F, §2 pp.3–4 and §5 p.14: the source says valuation three of A yields the asserted odd good-reduction model; it should use valuation four and the compatible B congruence modulo64; affects the proof.
- **Misprint** in bs-rank-one at proof of Lemma16, p.16: the source says a nonzero odd-dimensional Selmer group has at least p³ elements; it should exclude dimension one in that branch; affects the proof.
- **Gap** in bs-five at proof of Proposition40, equation(33), p.29: the source says a single total mean bounds the sum of separate conditional limsups; it should combine the finite-height inequalities before taking a limit; affects the proof.
- **Error** in bs-three at proof of Lemma33, p.16: the source says there is one rational isomorphism class of genus-one degree-three pairs for each j-invariant; it should use the stabilizer-weighted mass, retaining twists; affects the proof.
