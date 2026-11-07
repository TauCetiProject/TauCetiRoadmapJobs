# PKG-LevelOneAutomorphicFormsForClassicalGroups: package report

Deliverables: `packages/LevelOneAutomorphicFormsForClassicalGroups/README.md` (eight layers, 110 target
subsections, each with a `*Needs:*` line and at least three Checks), `Suggested.lean`, `metadata.toml`
(`topic = "math.NT"`), `sources.toml`, and the top-level `gaps` list of `design/plan.json` (the diff of
`plan.json` touches only that list).

## Headline theorems

| Headline | Source | Status |
|---|---|---|
| Spinor obstruction on characteristic polynomials of integral `SO(q)` elements | CT20 Prop. 3.7 | stated: `spinor_charpoly_obstruction` |
| Isometry-invariant alternating `g`-forms of the Leech lattice: dimension 1 at `g ∈ {0,8,12,16,24}`, else 0 | CT19a (1), Prop. 1.4 | stated: `finrank_invariantAlternatingForms_of_rootless` |
| Lattices spanned by roots have no invariant alternating `g`-forms, `g ≥ 1` | CT19a Prop. 4.1 | stated: `invariantAlternatingForms_eq_bot_of_roots_span` |
| Harmonic Leech theta series in genera 8, 12, 16, 24 are nonzero (a nonzero Fourier coefficient) | CT19a Thm. 2 | stated: `exists_thetaCoefficient_ne_zero_of_rootless` |
| Exact value `±n_g e_g` of the `Q_g`-coefficient | CT19a Thm. 2 | not statable: needs the Leech lattice in Conway's Golay coordinates, the `M₂₄` normalization of `ω_g` and the lattices `Q_g` |
| Computability of `dim S_k(Γ_g)`, `g ≤ 8`, `k_g > g` | CT20 Thm. 1 | not statable: no Siegel modular forms of genus ≥ 2 at the pins |
| The 29 nonscalar and 32 scalar rows in weight ≤ 13 | CT20 Thm. 2, Tables 5–6 | not statable: same |
| `S₁₃(Γ_g)` is a line exactly for `g = 8, 12, 16, 24` | CT20 Cor. 1 | not statable: same |
| Eichler basis theorem in weights 4, 8, 12 | CT20 Cor. 5.10 | not statable: same, and no genus-`g` theta map |
| Harmonic theta realization and alternating theta isomorphism | CT20 Prop. 5.12, Cor. 5.13 | not statable: same |
| Stable dimensions, stable `Φ`, stable theta isomorphism | CT20 Prop. 5.14, Cor. 5.15 | not statable: same |
| Classifications in motivic weight ≤ 22, 23 (top-simple), 24 (regular self-dual), GRH restriction | CL14 Thm. F; CT20 Thms. 3–5, Prop. 4.1 | not statable: no cuspidal automorphic representations of `GL_m(𝔸_ℚ)` |
| Miller's vanishing; repeated-weight `PGL₄` vanishing; Stark–Odlyzko cone inequality | CT20 §§2.4.1, 2.4.7, Prop. 2.2 | not statable: same, and no Rankin–Selberg `L`-functions |
| Masses for `SO_d`, `d ≤ 17`, and `Sp_{2n}`, `n ≤ 8` | CT20 Thms. 6–7 | not statable: no `L²`-Lefschetz trace formula or orbital integrals |

The module docstring of `Suggested.lean` lists each non-statable headline with the missing carrier. The
design's prototype definitions (a doubled-weight predicate, the nonnegative cone, a two-coordinate
quadratic, block averages, the `SO₃` matrix and masses) are not headlines; they are README Checks
(§§1.6, 2.9, 2.12, 2.15, 4.12) and are not in the Lean file.

## What the README could not support from the texts read

- The cardinalities that live only in the authors' data archive are carried over from the accepted design
  and were not re-derived here: the dimension range 10–38 of the 181-element set `V` (§5.4; the HAL text
  prints 14–42), the enumeration counts 223/58 and 198/58 (§7.4; the HAL text gives the 199/59 genus-zero
  form), and the sizes 1260/1256 (§5.9). Everything else numerical was recomputed (table below).
- Originals not read and cited through CT20's statements and locators: Weissauer's Satz 3, Resnikoff,
  Freitag (1975, 1977), Zharkovskaya, Rallis, Mœglin–Waldspurger, Gross's motive theorem, Böcherer 1989
  Theorem 5. Koike–Terada (KT87) is recorded as `uncertified` with its page range only; its determinantal
  formulas were checked directly on `Sp₂` (λ = (1), (2)) and `SO₃` (λ = (1), (2)).
- CT20 is cited in the HAL version hal-02265675v1. The published PDF host (Centre Mersenne) is in no licence
  class for the sources service, so it was not fetched. The HAL numbering of the statements of §§5.3–5.5 is
  one lower than the published numbering used by the design (Corollary 5.10 here, 5.11 there); the README
  and `sources.toml` use the HAL numbering and do not cite published page numbers.

## Notions moved down, and notions owned here because no supplier states them

Moved down from a later roadmap: SiegelModularForms (an open pull request that consumes this roadmap's
theta maps) states the Siegel `Φ`-operator, `ker Φ = S` (its §§3.1–3.2) and the singular-range vanishing
`S_k(Γ_g) = 0` for `2k < g` (its §2.6). This roadmap needs them before that roadmap, so they are stated here
as targets: §6.1 (Siegel operator, kernel, Hecke compatibility, Zharkovskaya relation) and §6.2 (odd- and
negative-weight vanishing, Wallach, Weissauer, Resnikoff–Freitag, Freitag's spanning theorem).

Owned here because no roadmap on main, earlier in the order, or in an open pull request states them (searched
with `roadmaps grep` over main and 448 open pull requests): the Zassenhaus spinor-norm formula (§4.6); the
Koike–Terada determinants (§4.10); Taïbi's explicit proper-Levi terms and the level-one geometric side (§4.3);
Kneser neighbour operators on `ℂ[X_n]` (§6.3); the genus-`g` and harmonic lattice theta maps (§§6.4, 6.7;
ThetaSeries lists Siegel theta series as not owned, and SiegelModularForms imports them from here); the
low-genus Eichler basis theorem (§6.8); the standard `L`-function of an Arthur parameter (§3.1); `M₂₄` as the
automorphism group of the Golay code with its orientable subsets and average characteristic polynomial, the
Mathieu forms `ω_g`, the sublattices `Q_g`, and `det = 1` on `O(Leech)` (§§8.4–8.6); the Stark–Odlyzko method
and Miller's theorem (Layer 2).

## Duplication removals and supplier citations

| Design item | Disposition |
|---|---|
| Mestre–Weil explicit formula requested from "AN.3" | exists: AnalyticNumberTheoryPartI §§1.3, 1.8 (it names this consumer); cited, not restated |
| Closed digamma formulas of the eight scalars, written out in the design | exist: ComputationalNumberTheory §§4.17, 4.17a, 4.18; the formulas were deleted from the README and cited; §2.4 keeps only the comparison theorem |
| Rank-16 and rank-24 completeness, Leech uniqueness, `|O(Leech)|` (design: "GN.3", "OTLM 7I", "IntegralLattices 6C/6D/6E") | exist: OrthogonalTamagawaAndLatticeMass §§4.1–4.2; the IntegralLattices layers 6C–6E do not exist on main (Completed/IntegralLattices has Layers 1–5) |
| Leech construction | exists: Rank24LatticeConstructions Layer 6 |
| Arthur parameters, packets, multiplicity formula, Adams–Johnson, Mœglin–Renard (design: "ML.0", "ML.4") | exist: ModularityAndLanglandsExtensions §§3.4, 3.8, 3.15, 3.17, 3.20–3.22, with standing premises (TWFL, trace inputs) carried as hypotheses in place of the design's "dependency gate" |
| Archimedean factors, Rankin–Selberg theory, strong multiplicity one (design: "AL.1–AL.3") | exist: AutomorphicLFunctionsAndLocalFactors Conventions, §§AL.1.4, AL.3.6, AL.3.7, AL.3.9 |
| Real LLC, Flath, purity, scalar holomorphic discrete series, `GL₂` adelization, algebraic modular forms (design: "AF.1–AF.5") | exist: AutomorphicFormsOnReductiveGroups §§2.2, 2.4, 2.5, 3.2–3.5, 4.2, 5.1, 5.5, 6.7, 6.8, 7.2, 7.2a, 7.4, 7.5 |
| Finite multiplicities, `L²`-Lefschetz formula, EP functions, Wallach criterion (design: "AS.4", "AS.6") | exist: AutomorphicSpectralTheory §§4.4, 4.5, 4.10, 6.9, 6.17, 6.19, 6.20 |
| Classical Siegel forms, cusp forms, Hecke, Fourier–Jacobi (design: "B4", "B5") | exist: AutomorphicBundles §§11.1, 11.2, 11.9, 11.16, 12.10, 12.11, 12.13, 12.15 |
| Theta kernel, dual pairs, Howe duality, first occurrence, Rallis unramified (design: "MP.3", "MP.5", "MP.6") | exist: MetaplecticAutomorphicForms §§0.15, 2.4c, 3.1, 3.4, 3.5, 3.7, 3.10, 3.21, 5.1, 5.6, 6.14 |
| Interval arithmetic, Gram witnesses, multiplicity lift, ellipsoid covers (design: "CN.4", "CN.5") | exist: ComputationalNumberTheory §§4.1–4.7, 4.26, 4.29–4.34, 5.1 |
| Golay code, symplectic group scheme, Rayleigh eigenvector, level-one dimension formula | exist at the pins: `TauCeti.BinaryGolay.code`, `TauCeti.Symplectic.groupScheme`, `IsSelfAdjoint.hasEigenvector_of_isLocalExtrOn`, `ModularForm.dimension_level_one`, `CuspForm.discriminantEquiv` |
| Field spinor norm | exists: OrthogonalSpinGroups Layer 1 |
| Design's proposed "OrthogonalSpinGroups Part II" and "IntegralLattices Part II" | not created; replaced by the gap on GeometryOfNumbersAndQuadraticArithmetic §2.4 and the citations of OrthogonalTamagawaAndLatticeMass §4.2 and Rank24LatticeConstructions Layer 6 |
| "FiniteFieldsAndCharacterSums FF.4" (`M₂₄` data) | no such supplier in the order; the `M₂₄` statements are owned here (§8.4), with the Golay code from AlgebraicCodingTheory Layer 5 and the order from SporadicOrders Layer 1 |
| Algorithmic targets (certified search, manifests, dataset comparison) | restated as mathematics: §2.16 (soundness of a negative witness), §5.1 (cover and exclusion interpretation theorem), §4.18 (the mass values and their zeros) |

The design's twelve internal implementation gaps are now ordinary targets in the layers; the `gaps` list of
`plan.json` holds only the seven supplier gaps below.

## Supplier gaps (`plan.json` gaps, stated in the README supplier contracts)

| Slug | Supplier, section | Need |
|---|---|---|
| `sp2g-lowest-weight-modules` | AutomorphicFormsOnReductiveGroups §6.8 | vector-valued holomorphic discrete series and scalar unitary lowest-weight modules of `Sp_{2g}(ℝ)` with the Enright–Howe–Wallach existence criterion |
| `siegel-adelic-lift` | AutomorphicFormsOnReductiveGroups §7.2a | level-one `Sp_{2g}` adelization of square-integrable Siegel forms, Hecke- and cusp-compatible |
| `gross-volume-rationality` | AutomorphicSpectralTheory §6.17 | rationality of centralizer volumes via Gross's motive at non-positive critical integers |
| `same-type-pair-root-number` | ModularityAndLanglandsExtensions §3.4 | `ε(1/2, π × π′) = 1` for same-type self-dual cuspidal pairs (Arthur 1.5.3(b)) |
| `boecherer-theta-image` | MetaplecticAutomorphicForms §6.14 | Böcherer's theta-image criterion |
| `integral-spinor-norm-units` | GeometryOfNumbersAndQuadraticArithmetic §2.4 | spinor norms of `SO(q)(ℤ_p)` are unit classes for regular `q`, `p = 2` included |
| `split-orthogonal-regular-form` | ReductiveGroups Layer 9 | Chevalley–Demazure types `B_n`, `D_n` over `ℤ` are `SO` of the standard regular split forms, compatibly over `ℤ₂` |

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `spinor_charpoly_obstruction` (§4.7) | `n = 0`; hyperbolic plane `diag(t, t⁻¹)`; `SO₃` with `Φ₁Φ₆`, `Φ₁Φ₄`, `Φ₁Φ₃`; `E₈`-type `Φ₅Φ₁₀` | `n = 0`: charpoly `1` forces `a = b = 0`, `Q = 1`, `|1| = 1²`; plane: `Q(−1) = (1+t)²/t`, `Q(1) = −(1−t)²/t`, even valuations; `Φ₆(−1) = 3`, `Φ₄(−1) = 2` non-squares, `Φ₃(−1) = 1` square; `Φ₅Φ₁₀`: `Q(1) = Q(−1) = 5` | true in every case; obstruction matches the zero `SO₃` masses at orders 4, 6 | none |
| `IsRegularIntegralForm` | `x₁x₃ + x₂²`, `x₁x₂`, `x₁² + x₂²` | `det(c + cᵀ) = −2, −1, 4` | regular, regular, not regular | odd-rank Check added (§1.3) |
| `specialOrthogonalPoints` over `ℤ_p` | `det = 1` cut versus Dickson invariant | `ℤ_p` is a domain with `2 ≠ 0`, so `det = 1` is the right `SO` | definition scoped in its docstring to such rings | none |
| `finrank_invariantAlternatingForms_of_rootless` | `g = 0`, `g = 24`, `g > 24`, `g = 1` | constants (dim 1); det form (needs `det = 1` on `O(Leech)`); `⋀^g = 0`; average char poly coefficient of `t²³` is `0` | matches `t²⁴ + t¹⁶ + t¹² + t⁸ + 1` | none |
| `invariantAlternatingForms_eq_bot_of_roots_span` | rank 0; `ℤx` with `x·x = 2`; Golay Construction A lattice (roots `2e_i`, norm 2 for halved dot product); reflection is an isometry | `B(s y, s z) − B(y, z) = −2B(x,y)B(x,z) + 2B(x,y)B(x,z) = 0`; rank 0: span ∅ = ⊤, all `g ≥ 1` forms are 0 | true; general integral lattices, as CT19a Prop. 4.1 | generalized from the design's rank-24 version to the source's generality |
| `exists_thetaCoefficient_ne_zero_of_rootless` | `g = 24`, basis `u` of Leech | coefficient `= Σ_{γ ∈ O(Leech)} ω₂₄(γu) = ±|O(Leech)| ≠ 0` | true; for `g = 8, 12, 16` it is `±n_g e_g` | none |
| `thetaCoefficient` convention | Fourier coefficient of `Σ ω(x) q^{Gram/2}` at `n` | coefficient at `n` = sum over `Gram(x) = 2n`; the definition indexes by `T = Gram` | consistent | docstring says "at `T/2`" |
| Explicit formula factor `1/2` (§2.6) | Mestre with `Λ₁ = Λ(s, π^∨ × π′)`, `Λ₂` its reflection, `F` even | prime side `2B_f`, gamma side `2B∞`, poles `Φ(0) + Φ(1) = 2A_F δ`, zeros once | `B_f + B∞ + Z/2 = A_F δ` | Check rewritten with this derivation |
| Odlyzko functions (§2.2) | `g(0)`, `g(1)`, `g′(1)`, `g″(1)`; `A_F`; `Ĝ(i/4π)` | `g(0) = 1`; `g(1) = g′(1) = g″(1) = 0`; `A_F = ℓ·2(2/π)² = 8ℓ/π²`; `Ĝ(i/4π) = ℓ·8π²cosh²(ℓ/4)/(ℓ²/4+π²)² = 4π²ℓ(1+cosh(ℓ/2))/(ℓ²/4+π²)²` | all as stated | none |
| `Γ(s, I₀)` (§1.4) | duplication formula | `Γ_ℝ(s)Γ_ℝ(s+1) = 2^{1−s}π^{−s}Γ(s) = Γ_ℂ(s)`; `ε(I₀) = i = i^{0+1}` | consistent | Check added |
| Pair root numbers (§1.8) | `Δ₁₁ × Δ₁₅`; `Δ₁₇ × 1` | `i²⁷·i⁵ = 1`; `i¹⁸ = −1` | same type `+1`, opposite type `−1` | none |
| `ε_ψ` generator formula (§3.2) | Arthur adjoint decomposition; Saito–Kurokawa `Δ_w[2] ⊕ [1]`, `w = 2k − 3` | only opposite-type pairs give symplectic `μ_α`; `ε_ψ(s₁) = i^{w+1} = (−1)^{k−1}`, `χ(s₁) = −1` | lift exists iff `k` even, as known | Checks added (§§3.2, 3.3) |
| Lowest-weight existence (§3.4) | `g=1,k=0`; `g=2,k=(1,1)`; `g=3,k=(1,0,0)` | `0 ≥ 0` true; `1 ≥ 0` true; `0 ≥ 1/2` false | exists, exists, does not exist | one Check corrected (`v = 1`) |
| Cases (I)/(H1) overlap (§§3.7, 3.13) | `g = k = 12`, `ψ = Δ₁₁[12] ⊕ [1]` | shifted weights `11..0`, `0..−11` plus `0`; `d_{i₀} = 1 = 2(g−k)+1`; `χ = (−1)^{6} = 1 = ε(Δ₁₁) = i¹²` | both cases hold, characters agree | two invalid Checks (built on `[3]` at `g = k = 1`, wrong infinitesimal character) replaced by this one |
| Sign identity (§3.9) | `ε = −1, a = 1`; `ε = 1, a = 3` | `(−1)^{⌊−1/2⌋} = −1 = (+1)(−1)·…`; `(−1)^1 = (+1)(−1)(+1)` | holds | none |
| `P(G)` counts (§4.9) | exact enumeration of cyclotomic exponent vectors | `Sp: 3,12,32,92,219,530,1158,2521`; `SO P: 5,12,19,59,92,165,419,530,1001,2257,2521,4877`; `P₁: 3,6,12,34,40,99,244,211,598,1339,992,2948` | all match; `Sp₁₄` is 1158 (HAL Table 2 prints 1157) | none |
| `SO₃` calibration (§4.12) | 5×5 trace matrix, RHS `(1/2, −1/2⁴)`; dimension check at `k = 0, 1, 5, 11` | `det = 288`; `m = (−1/12, 1/4, 1/3, 0, 0)`; `dim S₂, S₄, S₁₂, S₂₄ = 0, 0, 1, 2` | consistent with Mathlib's formula | none |
| Koike–Terada determinants (§4.10) | `Sp₂`, `λ = (2)`; `SO₃`, `λ = (2)` at `Φ₁³` | `e₁² − e₂ = x² + 1 + x⁻²`; `e₁² − e₂ − 1 = 5` at identity | correct | none |
| Zassenhaus (§4.6) | `−1` on a plane; order-3 and order-4 rotations of `x² + y²` | `sn = disc`; `Φ₃(−1) = 1`; `Q(1)Q(−1) = 4 ≡ disc = 4` | consistent | none |
| Compression (§2.15) | `A = K = 1`, block of size two | expanded `[[0,−1],[−1,0]]`, min `−1`; compressed `−1/2` | negativity agrees, minima differ | none |
| Two-coordinate criterion (§2.12) | `b = ±2`, `a = c = 1`; `b² = ac` | `(1,1)` value `−2`; `+2` nonnegative on cone; boundary `0` | as stated | none |
| Principal faces (§2.11) | `[[1,2],[2,1]]` | eigenvalues `3`, `−1` with mixed-sign eigenvector; `μ = 1` on singletons | as stated | none |
| Miller (§2.19) | ranks and determinants | ranks `2n+2`, `2n+1` ≤ 26; `det(e^n + I₂ + … + I_{2n}) = e^{2n} = 1`; Mil02 Thm. 1.6 range `1 < N < 27` | consistent | none |
| `PGL₄` vanishing (§2.21) | known-set sizes | `dim S₂₄ = dim M₁₂ = 2`, `dim S₅₄ = dim M₄₂ = 4`; 27 odd `w ≤ 53` | as stated | none |
| Rallis relation (§6.9) | `n = 8`, `g₀ = 0`, `g = 8`; `n = 24`, `g = 12`, `Δ₁₁[12]` | `[7]⊕[1]⊕[9]`, dim `17 = 2·8+1`; with `g₀` the block length is negative; `Δ₁₁[12]⊕[1]` | actual genus is correct | harmonic version added (needed by §8.9) |
| Degree rule (§6.8) | rank 8, 16, 24 examples | `7 − 2g₀ = 7 ⇒ 0`; `15 − 2g₀ = 7 ⇒ 4`; `23 − 2g₀ = 15 ⇒ 4`; cumulative `1,…,24` | consistent with CL14 | Check arithmetic corrected |
| `T₂` on `E₈` (§6.3) | isotropic lines of `E₈/2E₈` (plus type, `m = 4`) | `(2⁴ − 1)(2³ + 1) = 135` | eigenvalue 135 | invalid Check replaced |
| Scalar table (§7.9) | weight 12 versus CL14 Théorème D | `1,1,1,2,2,3,3,4,2,2,1,1` for `g = 1..12` both | agree | Check added |
| Weight-13 parameters (§7.10) | infinitesimal multisets for `g = 8, 16, 24` | `g=8`: `12..9`, `8..5`, `0`; `g=16`: `±12..±5` once, `±4` once, `±3..±1` twice, `0` thrice; `g=24`: `±12` once, `±1..±11` twice, `0` thrice | all match `0, ±(13−i)` | none |
| (H2) remainder (§7.7) | `(16, 13)` | omitted weight `g − k + 1 = 4`; remainder weights `±12..±5, ±3, ±2, ±1, 0, 0` | consistent | none |
| Small-weight dimensions (§8.2) | cumulative sums | weight 12: `1,2,3,4,6,8,11,14,18,20,22,23,24`; weight 8: `2` from `g = 4` | as stated | none |
| Böcherer orders (§8.7) | five rows; `ω₂₄` and `γ` orders | rows sum to `0`; `#{i ≤ 24 : 24 − 2i < 0} = 12`; odd `i ∈ [9,15]` gives `−4` | as in BoechererNote | none |
| Stable range (§8.11) | case (H2) and (I) at `g ≥ 2k`; `k = 2` | (H2) forces `g ≤ 2k − 2`; (I) needs `k − 1 > g − k`; `(−1)^{1} ≠ 1` | (H1) only; `M₂ = 0` | wrong justification in a Check corrected |
| Stable `Φ` (§8.13) | `g = 2k − 1` | needs `S_k(Γ_{2k}) = 0`, not given by §6.2 | not claimed | Check reworded |
| Mass rationality (§4.2) | `ζ(−1)` vs `ζ(2)` | `−1/12 ∈ ℚ`, `π²/6 ∉ ℚ` | non-positive critical integers (the HAL text says non-negative) | kept the corrected range |
| Context of Lean declarations | `#check @name` for all eight | every binder explicit in each signature; no section variables used | matches README | none |

## Elaboration

`lake env lean packages/LevelOneAutomorphicFormsForClassicalGroups/Suggested.lean`, run from the content
checkout at the pins (Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`, Mathlib
`f6090c7095e1e56b3464c1daba5f24631f1290d2`): no errors; exactly **4** warnings, all `declaration uses
'sorry'` (lines 80, 123, 136, 148); no other message. The first run reported
`elaboration function for 'Mathlib.Tactic.subscriptTerm' has not been implemented` at the `*ᵥ` notation
and two deprecation warnings for `Set.mem_setOf_eq`; the notation was replaced by `Matrix.mulVec` and the
proofs by `change`, after which the output is the four `sorry` warnings only. The `#check @name` scratch
run is recorded in the adversarial table; nothing changed after it.

The file is a module, as the pinned Mathlib and Tau Ceti modules it imports are: it opens with
`module`, imports `public import Mathlib` and the five `public import TauCeti.LinearAlgebra.IntegralLattice.*`
modules, and its declarations sit in an `@[expose] public section`, in the same form as
`TauCetiRoadmap/CoboundaryExpansion/Suggested.lean` on main. This clears the toolchain warning that a file
importing `Mathlib` should be a module. No statement changed, and the output is the same four `sorry` warnings.

## Dependency check

```
depcheck: 208 roadmaps, 1716 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. The citation resolver reports no cross-roadmap citation and no Lean
name found nowhere.

## Ownership against open pull requests and sources

Ownership was checked with `roadmaps grep` against main and all open roadmap pull requests (index of
2026-11-04). The only roadmap citing this one is SiegelModularForms (open), which consumes §§6.4, 6.7; no
open roadmap plans the Chenevier–Taïbi method, the level-one classifications, the masses, the Leech
alternating forms or Böcherer's criterion as a target. No `Suggested.lean` declaration shares a fully
qualified name with another roadmap.

Sources: CT20 (HAL), Tai17 (Numdam), CL14 (arXiv v2), CT19a (arXiv v1), BoechererNote (author copy) and
Mil02 (arXiv v1) were read; KT87 is `uncertified`. No text is missing, so no `needs-references.toml` was
written. No fetched text contained instructions.
