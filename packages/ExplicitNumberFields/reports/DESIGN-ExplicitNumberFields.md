# DESIGN-ExplicitNumberFields

## What the design covers

The design plans the roadmap `ExplicitNumberFields` in seven layers (0–6) with 35 targets and 16
named gaps, in `packages/ExplicitNumberFields/design/README.md` and `design/plan.json`, with the
manifest `packages/ExplicitNumberFields/sources.toml`. Every final target of the triaged target is
planned, with these decisions:

- Target 0 (Layer 0): the Minkowski constant is defined with the agreement lemma against Mathlib's
  `exists_ideal_in_class_of_norm_le`, not against `minkowskiBound`, whose value is
  `2^{r₁+r₂}√d_K` (see the adversarial table). The relative class number is a natural number for
  every CM-field, with the divisibility `h_{K⁺} ∣ h_K` proved through the Hilbert class field;
  the relative class-number formula is derived from the two Mathlib residue definitions and the
  regulator ratio. Aramata–Brauer is consumed from AnalyticNumberTheoryPartI §2.39b, so
  `dedekindConjecture_of_isGalois` is stated for every Galois `K/ℚ`, not only abelian `K`.
- Target 1: Rademacher's Dedekind instance, with the height factor `(|1+s|/(2π))ⁿ` (the filed
  statement omitted the `n`-th power).
- Targets 2–4 (Layer 2): Sunley's and Lee's counts (Lee's constant read in closed form), Debaene's
  two counts, and Gun–Ramaré–Sivaraman's count on Tau Ceti's narrow ray class groups, all over an
  explicit Lipschitz lattice-point count with Widmer's constant, owned here (Tau Ceti has the
  existential form).
- Targets 5, 6, 8, 9 (Layer 3): the zero-dependent bound (quoted form in `louboutin2003`), the
  prime-2 bound (its display is missing from the text layer; the inequality is derived from the
  positive Mellin comparison and the derivation is recorded below), Friedman's unconditional lower
  bound, Stark's lower bound conditional on the predicate `QuadraticRealZeroGap c₈` (the filed
  `0.0014480` bound rests on a constant Garcia–Lee call "likely admissible"), Louboutin's
  zero-dependent lower bounds with the Table 1 thresholds, and Garcia–Lee's conditional two-sided
  bound through an explicit Duke theorem stated on unit-disc Euler-product records.
- Target 7 (Louboutin 2015, the Li-type bound) is not planned: the only text is waived and the
  majorant `B(n, d_K)` cannot be defined from a legal text. Recorded as a Part II.
- Targets 10–14 (Layer 5): the four `h_K R_K` forms, the abelian and totally real abelian forms,
  Bordellès' bounds including the general-`a` form, the quartic bound, the relative class-number
  upper bound (quoted at `louboutin2003` line 605) and the four lower bounds (12), (13), (17), (18)
  with the paper's displays; (18) has `(πe log ρ_K)^{n−1}` in the denominator (the filed reading
  had it in the numerator); Theorem 13 is conditional on `QuadraticRealZeroGap (π/6)` because its
  input on real zeros of imaginary quadratic L-functions is cited from an unpublished source.
- Targets 15–18 (Layer 4): Trudgian's and Hasanalizade–Shen–Wong's formulae on the symmetric count
  `N±(T)`; Stark's lemma, the real-zero counting lemmas, Louboutin's Stark-like regions; Kadiri's
  regions with an absolute existential threshold `D₀`; Lee's Theorem 1 without a threshold and
  Theorem 2 with one, from the arXiv text fetched this round.
- Targets 19–22 (Layer 6): Vinogradov's identity on a finite cyclic group; McGown–Trudgian's
  Theorem 3 with the Burgess moment estimate as a gap (the proof does not use Treviño's tables,
  which are only compared); Grosswald under `GRHMod p` with two computational Props; the
  Kerr–McGown–Trudgian bound `h(p) < p^{0.99}` for odd `p` with three computational Props. Chen's
  `p^{0.74}` is not planned (no legal text; its finite-range hypothesis is unknown).

Computational hypotheses declared here: `McGownTrudgianFiniteChecks`, `GrosswaldFiniteRange`,
`GrosswaldSieveVerification`, `PaszkiewiczTable`, `SmallPrimitiveRootsModPSquare`. Conjectural
predicates: `DedekindConjecture`, `CMPositivity`, `GRHMod`, `QuadraticRealZeroGap` (the last is new
against the filed statement; it carries the two unproved inputs named above).

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 0.1 `minkowskiConstant`, `b_K` | ℚ(i); ℚ(√−14); ℚ(√5); ℚ; Mathlib's `minkowskiBound` | ℚ(i): (4/π)(2/4) = 0.6366, b = 1.273; ℚ(√−14): b = 0.6366·7.483 = 4.764 (= ClassicalArithmeticCompletion §5.1); ℚ(√5): 1/2, b = 1.118; ℚ: 1, 1; `minkowskiBound ℚ(i) 1 = 2^{2−1}·√4 = 4` | the filed agreement lemma `minkowskiBound K = M_K √d_K` is false (4 ≠ 1.273) | agreement stated against `exists_ideal_in_class_of_norm_le`'s notation `M K`; negative Check added |
| 0.1 `minkowskiConstant ≤ 1` | n = 1, 2, 3, 4 with maximal r₂ | 1; 0.637; (4/π)(6/27) = 0.283; (4/π)²(24/256) = 0.152 | decreasing, ≤ 1 | API bullet kept; the wrong exponent r₁ gives 4/π at ℚ |
| 0.2 `localFactor` | ℚ(i) at 2, 3, 5; ℚ; p = 0, 1; inert/split | 2; 9/8; 25/16; p/(p−1); 1 and the full product; (1 − p^{−n})⁻¹, (p/(p−1))ⁿ | correct; p = 0 is not junk-free | documented, never evaluated |
| 0.3 `a_K(m) ≤ τ_n(m)`, `h_K ≤ Σ τ_n` | ℚ(i) at m = 3, 4, 5; ℚ(i) and ℚ(√−14) sums; ℚ | 0 ≤ 2, 1 ≤ 3, 2 = 2; Σ_{m≤1} = 1 ≥ 1, Σ_{m≤4} = 8 ≥ 4; 1 = 1 | holds | none |
| 0.4 `relativeClassNumber_eq` | ℚ(i); ℚ(√−3); ℚ(√−5); ℚ(ζ₈); regulator power | 1·4·2·(π/4)/(2π) = 1; 6√3(π/(3√3))/(2π) = 1; 1·2·√20·1.405/(2π) = 2.0; 8·√32·0.8724/(4π²) = 1.000; with 2ⁿ/Q instead of 2^{n−1}/Q: 2 | holds; Mathlib's `rank K = n − 1` confirmed at the pin | none |
| 0.4 `h_{K⁺} ∣ h_K` | ℚ(√−5) (h = 2, h⁺ = 1); ℚ(ζ₂₃) (h = 3, h⁺ = 1); the argument's step K ∩ H = K⁺ | H totally real, K totally complex, so the only candidate subfields are K⁺ and K | route sound; needs the Artin norm compatibility | `gap:artin-norm-compatibility` declared |
| 0.5 `DedekindConjecture` | ℚ(i), ℚ(√2), ℚ, s = 1, S₃ cubic | F = L(·,χ₋₄), L(·,χ₈), 1; at s = 1 both sides junk; S₃ holds but not via the theorem | the "∀ s" variant is false at s = 1 | definition excludes s = 1 and ζ(s) = 0 |
| 0.5 `CMPositivity` | ℚ(√−3); ℚ(i); endpoints | termwise positive series; alternating series positive; L(0,η), L(1,η) finite | holds on the open interval | none |
| 0.5 `GRHMod` | q = 1, 2, 4 | ↔ RH; ↔ RH (zero at 2πi/log 2 has Re = 0); ↔ DedekindERH ℚ(i) | consistent with §1.6 | none |
| 0.5 `QuadraticRealZeroGap c` | ℚ(i) at c = π/6; d > 3·10⁸ at c = 1/6.035; c → 0 | 1 − 3/π = 0.045; EZB 18 implies it; impossible | hypothesis only | the two unproved inputs (Bessel, Stark's c₈) are carried as this predicate |
| 0.6 `leastPrimitiveRoot` | p = 2, 3, 7, 409; h(3), h(5), h(2); m = 1; g = 0 | 1, 2, 3, 21; 2, 2, 3; junk 0; order 0 ≠ φ(m) | h(2) = 3 > 2^{0.99} = 1.99 | 6.5 stated for odd p |
| 1.1 Rademacher | ℚ, η = 1/2, s = 1/2; s = 1 + η; ℚ(i), s = 1/2 + 10i; the filed height factor | 11.49 ≥ 1.460; 3(2+η)/η ζ(1+η) ≥ ζ(1+η); 66.5 ≥ ≈ 3; `(d_K|1+s|/(2π))` gives 2.54 vs 3.22 | the filed statement lacks the n-th power on the height | corrected to `(|1+s|/(2π))ⁿ` |
| 2.1 Widmer | D = 1, S = [0,X]; disc of radius R; thin lattice ℤ × 10⁻³ℤ | error ≤ 1 ≤ 2; bound 128πR vs true O(R^{2/3}); i = 1 term scales by 10³ | correct as an upper bound; successive minima needed | none |
| 2.2 Sunley | n = 1; ℚ(i), x = 10; 0 < x < 1 | excluded (⌊x⌋); 13 vs 7.85 within e^{61.4}; κx < κ ≤ bound | holds | none |
| 2.3 Lee's constant | n = 2, 3 against Table 1; filed 8.80·10¹¹; n = 1 | 𝔪(2) = 2.467, λ(2) = 1.4735·10⁹, Λ(2) = 2.492·10¹⁰ = Table 2.49133·10¹⁰; 8.45·10¹¹ = Table; 𝔪(1) < 1 undefined | closed form verified against the table; the filed value is neither entry | constant defined from the closed form |
| 2.4 Debaene | ℚ(i), x = 10; class sum vs total; x < 1 | error 2^{40}√10 vs 5.15; h·R^{1/n} ≥ (Rh)^{1/n}; κ/2 vs x^{1−1/n} < 1 | consistent | none |
| 2.5 GRS | K = ℚ, 𝔮 = ℤ; F ≥ 1; ℚ(√3) narrow vs ordinary | bound ≥ 1 ≥ \|⌊x⌋ − x\|; F = [𝓞ˣ:U_𝔪] ≥ 1; narrow h = 2, h = 1 | main term equals `rayClassIdealMainTerm 𝔪` since φ(𝔮)/N𝔮 = ∏(1 − N𝔭⁻¹) | stated on the narrow modulus |
| 3.1 zero-dependent | ℚ(√5); β < 1/2; n = 1 | 0.4304 ≤ (1−β)·1.197 ⇒ no zero in [0.64,1); kernel monotone only for u ≥ 1/2; vacuous | hypothesis β ≥ 1/2 is exactly what the route uses | none |
| 3.2 prime-2 bound | 2 inert; 2 split; n = 2, d = 3; cubic d = 23 with 2 inert | factor 1/(2ⁿ−1); factor 1; s* = 2.82 and g(6) ≤ 1 fails for (0,1); 0.4256 ≤ 9.21 | derivation: (1 − 2^{−s})ⁿ ≤ 2^{−n} e^{n(n−1) log 4/log d_K} gives exactly the filed exponential factor | inequality restated from the derivation; (14) not planned |
| 3.3 Friedman | ℚ(i), ℚ(√5), ℚ(ζ₅); n = 2 factor | 0.785 ≥ 0.181; 0.4304 ≥ 0.162; 0.3397 ≥ 0.0324; 2^{r₁}(2π)^{r₂} ≥ 4 | holds | source uncertified; quoted form cited |
| 3.3 Stark-type | c₈ = π/6 justification; Galois cubic d = 49 | "likely" at GL lines 1277–1279, 1306–1310; 0.6749 > 0.00149 | the filed unconditional `0.0014480` bound is not proved in any text | stated under `QuadraticRealZeroGap c₈` |
| 3.4 Louboutin lower bounds | m = 1, S = ∅, d ≥ 270², β = 1 − 1/log d; tables | κ ≥ 1/(2e log d); 270·8.485 = 2291 ≠ 36000 | tables are not products | three table definitions |
| 3.5 explicit Duke | χ₋₄; m = 0; ζ | \|log(π/4)\| = 0.24 ≤ 13.53; trivial; pole | hypotheses entire + degree ≥ 1 needed | stated on unit-disc records with shifts in {0,1} |
| 3.6 two-sided GRH | ℚ(i); n = 1; n ≤ 4 | 1/(e^{17.81}·0.3266) ≤ 0.785 ≤ e^{17.81}·0.3266; log log 1 undefined; conjecture known but kept | holds | none |
| 4.1 N_K(T) convention | ℚ, T = 15; ℚ(i), T = 100 | N±(15) = 2 (one-sided 1); 58 + 2·50.6 ≈ 159 within 156.6 ± 19.5, while 58 + 50 = 108 would violate the bound | symmetric count is the sources' (trudgian2015 line 17, hsw line 27) and is the only consistent one | convention pinned with the witness |
| 4.2 HSW | ℚ, T = 15; r₁ shifts; Trudgian's Table 2 | 2.87 ≤ 27.78; ℚ(√2) shift 1/2 = 2·(1/4); table rows repaired by HSW | holds | Table 2 rows not targets |
| 4.3 Stark/Louboutin real zeros | m = 1; ℚ(√5), m = 2; ℚ(ζ₇)⁺; ℚ | c₁ = 0.3431 > 1/4, c'₁ = 0.6207 for d > 3.46; at most 2 in σ ≥ 0.334, none; no zero in σ ≥ 0.7246 (d = 49 ≥ 21); log 1 = 0 excluded | hypotheses of Corollary 4 hold for all Galois odd n ≥ 3 by `abs_discr_ge` | n ≥ 3 added to Corollary 4 |
| 4.4 S₀ and the regions | quartic at 0, √2, 0.4543; D1; (1/4,1/4) ⊆ (D1,D1); (0.59110,1/4) ⊇ (1/1.7,1/4); d ≤ 8 | 2, 6, 0.0001; 2(0.33925)/2.45433 = 0.27645; D1 > 1/4; 0.59110 > 0.58823; excluded | holds | none |
| 4.5 Kadiri | ℚ at t = 14.13; "sufficiently large" | 0.9885 vs classical 0.932; no numeral in the text | threshold existential and absolute | stated with ∃ D₀ |
| 4.6 Lee | ℚ at t = 14.13; threshold; 0.0501 vs 0.05017; R = 12.43436 vs 12.74 | 0.9637; Theorem 1 has none; arXiv value used; wider one-zero region, narrower than (0.10379,1) in σ | consistent | version note recorded |
| 5.1 hR forms | ℚ(√5); ℚ(i); ℚ(√−3); the 2ⁿ bookkeeping | 2.446 ≥ 0.4812; 2.40 ≥ 1; 2.47 ≥ 1; κ/2ⁿ = (1/2)(e log d/(4n−4))^{n−1} | the filed forms are exactly the residue bounds times the formula | none |
| 5.2 abelian forms | imaginary quadratic (d = 163); ℚ(√5); ℚ(ζ₅); (5 − log 36)/4 | 13.2 ≥ 1 and equals Ramaré's odd bound; 0.899 ≥ 0.4812; 31.0 ≥ 0.962; = (5 − 2 log 6)/4 | holds; Σ_{χ≠1} log f_χ = log d_K via f_1 = 1 | none |
| 5.3 Bordellès | ℚ(√−14); ℚ; ℚ(√5) at a = 2/log 5 and a = 3; n = 2 for the 2006 bound; log d ≥ 2(n−1)/3 | 11.2 ≥ 4, b < 6 excludes form 2, 60.2; 1 = 1; 4.03 ≥ 1, a = 3 recovers 2^{n−1}; not stated; from `abs_discr_ge'`: 0.82 ≥ 0.67 at n = 2, 2.18 ≥ 1.33 at n = 3 | third form valid for all n via Minkowski | route recorded |
| 5.4 quartic | b = 193 threshold; ℚ(ζ₅) (b = 2.76) | 9420 ≥ Σ_{m≤193} τ₄(m); excluded | holds | none |
| 5.5 h⁻ upper | ℚ(i); ℚ(√−3); d = 163; ℚ(ζ₈); exponent n | 4.80, 4.94, 56.3 ≥ 1; 12.7 ≥ 1 and L(1,η) = 0.8724 ≤ 11.1; nontrivial character ⇒ exponent n | the L(1,η) form is equivalent through 0.4 | both forms stated |
| 5.6 (12) at n = 1 | d = 163 | L(1,χ) ≥ 2/(e log 163): 0.587 ≤ h = 1 | consistent under CMPositivity | none |
| 5.6 second inequality of (12) | Qw ≥ 2, √(d_K/d_k) ≥ ρ_K^{n/2}, log d_K = 2n log ρ_K | c/(2n v_n e^{c/2−1}) (√ρ_K/(πe log ρ_K))ⁿ | derived | corollary, not a target |
| 5.6 Theorem 13 direction | n = 3, ρ_K = 2800 | denominator form 9.5·10⁻⁴; numerator form 20000 | numerator form implausible and inconsistent with the paper's second display | denominator form stated; filed reading corrected |
| 5.6 Theorem 13 input | Lemma 8(5) source | louboutin2003 line 394–395: announced, never published | cannot be a target | hypothesis `QuadraticRealZeroGap (π/6)` |
| 5.6 thresholds | ρ_K ≥ 2800 | d_K ≥ 2800^{2n} | filed 2800ⁿ is weaker and asserted nothing | corrected |
| 6.1 Vinogradov | trivial group; ℤ/2 at 0, 1; ℤ/6 at 1, 2; ℤ/2 × ℤ/2 | 1; 0, 1; 1, 0; non-cyclic excluded | holds | none |
| 6.2 interval count | X = 2 (A(2) < 0); p = 101, H = 4, h = 2; 2HX ≥ p | lower bound vacuous; 10 integer points within B·(6/π²)·8 = 21.3; disjointness is of the enlarged intervals | the count is with multiplicity | Check records this |
| 6.3 McGown–Trudgian | 0.999√p < √p − 2; r = 2 in Corollary 1; p = 3; δ ≤ 0; proof inputs | iff p > 4·10⁶; needs ω ≤ 8; no parameters; e = 2 with nine odd primes; Table 1 only compared (line 57–64) | the filed claim that Treviño's tables are consumed is wrong: Proposition 1's moment estimate is | `gap:burgess-moment-estimate` declared; tables kept for the comparison |
| 6.4 Grosswald | p = 409, 2791; p ≈ 10⁹, ω = 5; GRH form; sieve for ω ∈ {12,13,14} | 21 > 18.22, 53 > 50.83; Theorem 2 gives 1.06·10⁶; principal character needs RH (Bach (3)); exception lists empty after a computation (lines 211–240) | a second computational Prop is needed | `GrosswaldSieveVerification` declared |
| 6.5 h(p) < p^{0.99} | p = 2; p = 3; p = 40487; p < 10¹² handling | 3 > 1.99 false; 2 < 2.97; h = 10; Paszkiewicz's table + COST + small primes | the filed H3 range "p ≤ P₁ from Chen" is replaced by the three readable inputs | Props `PaszkiewiczTable`, `SmallPrimitiveRootsModPSquare`; Chen not planned |
| Conventions: log d_K > 0 | n = 1; n = 2 | d_ℚ = 1; d_K ≥ 3 by `abs_discr_ge` (16/(1.62·4) = 2.47) | every log d_K denominator needs n ≥ 2 | hypotheses added throughout |

## Notions moved down

- The explicit Lipschitz lattice-point count with Widmer's constant (2.1): Tau Ceti and
  GeometryOfNumbersAndQuadraticArithmetic §4.1 have only the existential form; no later roadmap
  plans the explicit one.
- The explicit Duke short-sum theorem (3.5) on unit-disc Euler-product records: no roadmap plans
  it; it is stated at the generality the Garcia–Lee proof supports (real shifts in {0, 1}).
- Nothing was moved down from a later roadmap in the merge order.

## Proposed Part IIs and motivation

- `ExplicitNumberFields, Part II`: Louboutin's explicit Li-type residue bound (Moscow Math. J.
  2015, waived), Chen's `h(p) ≤ p^{0.74}` (no legal text), inequality (14) of Louboutin 2005
  Theorem 10 (display unreadable), Kadiri–Ng's zero-density estimates for `ζ_K`, and the
  explicit versions of the Dedekind constants with numerical thresholds in place of the
  existential `D₀`, `D₁`.
- `ExplicitZetaBounds` must provide the eight gaps listed under its contract; if its design states
  Backlund's lemma for degree one only, the degree-free form here is what 4.1–4.2 need.

## Gaps

Sixteen gaps, all to roadmaps on the board or in open pull requests: ExplicitZetaBounds (8),
ExplicitCharacterSumsAndSieves (3), ExplicitMultiplicativeFunctions (3), ExplicitPrimeCounting (1),
ClassFieldTheory Layer 12 (1, the ideal-theoretic norm compatibility of the Artin map, which the
roadmap on main states in its local and tower forms but not in the form 0.4 uses). The three
sibling explicit roadmaps are at the target stage; their contracts are cited by target number as
their targets name them.

## Sources that could not be read, and texts read this round

- Fetched this round: `lee2021zerofree` (arXiv 2002.05456v3, open; the manifest key was
  `uncertified` because the service had found no copy), `widmer2010` (arXiv 1204.0927v1),
  `friedman1989` (paywalled, `uncertified`; the service resolved the DOI to a different paper and
  the entry was corrected by hand to Friedman's title and DOI `10.1007/BF01393839`).
- Not readable: `rademacher1959`, `louboutin2000`, `louboutin2001`, `cullyhugilltrudgian2021`,
  `chen2022`, `friedman1989` (paywalled), `louboutin2015mmj` (waived), `ramare2001` (consumed
  from ExplicitZetaBounds). Rademacher's Theorem 4 is quoted at `lee2023ideals` lines 173–179 and
  `sunley1973` line 105; Louboutin 2000's Theorem 1 at `louboutin2003` line 605; Louboutin 2001's
  Theorem 1 at `louboutin2003` lines 297–300; Friedman's bound at `garcialee2022mertens` line
  1215. Chen 2022 and Louboutin 2015 could not be stated from any readable text and are not
  planned.
- `louboutin2005`: the displayed inequalities of Theorem 10 are absent from the Numdam text layer
  (the scan has a text layer, so the service does not OCR it); (13) is restated from its proof
  route and verified by the derivation in the adversarial table; (14) is not planned.
- `lee2023ideals`: the OCR text garbles the closed form of the constant; it was read from the
  arXiv HTML rendering of the same version and checked against the paper's Table 1.
- The manifest entry `ahnkwon2014` recorded a work whose authors and title did not match its key
  (Espinoza's paper under an Ahn–Kwon key); the design cites it nowhere and the entry was removed.
- A request for Paszkiewicz 2009 (Math. Comp.) found no legal copy; the design cites the fact it
  needs from `kerrmcgowntrudgian2020` lines 41–43 instead, and the request was withdrawn, so
  `needs-references.toml` is not left behind.

## Ownership

Ownership was checked by object against main, the board packages and the open roadmap pull
requests through `roadmaps grep` for: the `O*` predicate (nowhere), the Minkowski constant
(ClassicalArithmeticCompletion §5.1 uses it as notation, no definition), the relative class number
(CyclotomicClassGroupsAndStickelberger §3.4, abelian, rational), Aramata–Brauer
(AnalyticNumberTheoryPartI §2.39b), the Vinogradov sieve identity and primitive-root bounds
(nowhere), the explicit lattice-point count (Tau Ceti existential; GeometryOfNumbers §4.1 Henk's
bounds), successive minima (SuccessiveMinima, Tau Ceti). Open pull requests whose files the brief
lists were searched through the same tool; ownership against pull requests not listed there was
not checked.

## Dependency check

    candidate: ExplicitNumberFields is not in the merge order yet; checked as if placed after ComputationalNumberTheory (the intake inserts it when its design is accepted)
    depcheck: 241 roadmaps, 2367 edges, 0 problem(s)

No UPWARD or CYCLE line. The citation resolver lists two leads, `ExplicitMultiplicativeFunctions
T7.5` and `ExplicitCharacterSumsAndSieves Layer 3`, both target-stage siblings with no roadmap
folder yet; they are cited through named gaps.
