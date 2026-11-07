# Design report: GaussianIsoperimetryAndClusters

Deliverables: `packages/GaussianIsoperimetryAndClusters/design/README.md`, `packages/GaussianIsoperimetryAndClusters/design/plan.json` (9 layers, 46 targets, no gaps), `packages/GaussianIsoperimetryAndClusters/sources.toml` (locators and `cited_for` refreshed; no key added or renamed). No `needs-references.toml` was written: every text the design relies on is either certified in the cache or settled as uncertified and cited by locator.

## What the design covers

Every final target of the brief is planned, several in corrected or generalized form:

| Brief target | Where | Form in the design |
| --- | --- | --- |
| 1 weighted perimeter = weighted variation | §2.1–§2.2 | for every `C¹` weight (brief: `C^∞`); duality definition, density-bounded fields, `∫ e^{−W} d|Du|`, reduced and essential boundary |
| 2 invariances, classical domains | §2.1, §2.3, §2.7 | null sets, complements, frontier bound, open convex sets and bounded Lipschitz domains, half-spaces `φ(s)`, balls, isometries and cylinders |
| 3 lsc and compactness | §2.4 | lsc for every weight; compactness in `L¹(μ)` for finite total mass |
| 4 Gauss–Green and coarea | §2.5–§2.6 | compact `C¹` fields and bounded fields; Gaussian translation formula; Lipschitz and BV coarea |
| 5 clusters and interfaces | §3.1–§3.3 | (3.4)–(3.5) as stated; (3.6) corrected to equality of closures (see the adversarial table); `L_A` positive definite for every weight |
| 6 existence | §3.4–§3.5 | every probability density; finiteness of the profile via concentric annuli |
| 7 model clusters and model profile | §4.1–§4.7 | Lemma 2.1 (with repaired injectivity and an invariance-of-domain-free surjectivity), Definition 2.2, Lemma 2.3, Proposition 2.4, easy inequality |
| 8 Ehrhard symmetrisation | §5.3, §6.1–§6.6 | sublevel convention (the brief's formula had the wrong side); CFMP Lemmas 4.4–4.6 and Theorem 4.3 in the Milman–Neeman normalization |
| 9 single bubble with uniqueness | §7.1–§7.4 | CFMP §4.2 Steps I–IV; all `n ≥ 1`; Φ-form; two-cell cluster form |
| 10 integrated, functional, concentration | §8.1–§8.5 | thickening form for every Borel set and every `multivariateGaussian m S`; Minkowski content; Bobkov via subgraph sets in `E × ℝ`, with converse; median concentration (strict superlevel set); Gaussian maxima |
| 11 Ehrhard's inequality for convex sets | §9.1–§9.5 | Ehrhard's closed symmetrals, Lemma 3.3, planar approximation, composition, Théorème 3.2 in Φ-form |
| 12 multi-bubble statement | §4.7, §7.4, closing section | `q = 2` proved; `I^{(q−1)} ≤ I_m^{(q−1)}` proved; `q ≥ 3` stated in the closing section labelled as motivation for a future roadmap |

Generality decisions: weighted perimeter, clusters and existence are stated for a positive density `e^{−W}` with `W ∈ C¹` (the definition needs `∇W`; every proof uses only continuity and positivity of the density and `C¹` of `W`). Milman–Neeman assume `C^∞`, which they need only for regularity, outside this roadmap. Everything is intrinsic on a finite-dimensional real inner product space `E` with `n = dim E ≥ 1`.

## Adversarial-pass table

Values are computed (Python, double precision, quadrature where stated); `φ, Φ` are the standard normal density and lower distribution function.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Normalization (Conventions) | half-space `{x_1 > 1}` | ours `φ(1) = 0.241971`; CFMP `e^{−1/2} = 0.606531`; ratio `2.506628 = √(2π)` | the brief's warning confirmed; CFMP (2.5) integrates against the probability measure and is in our normalization, inconsistent with their own definition (1.2) by `√(2π)` | MN normalization fixed; comparison stated once; witness Check |
| Outward normal sign | `U = (−∞, s)` on `ℝ`, `C¹_c` field | `∫_{−∞}^s (X′ − tX)φ = X(s)φ(s)` | consistent with GMT `Dχ_U = −ν_U |Dχ_U|`; CFMP use the inner normal | Check; CFMP formulas restated with outward normal |
| Symmetral convention (brief target 8) | `{⟨x,e⟩ < a}`, `a = 1` | brief's `{y > Φ⁻¹(v)}` has measure `1 − v = 0.158655` instead of `0.841345` | brief formula false with lower `Φ` (it is CFMP's formula with their upper-tail `Φ`) | sublevel convention `{Φ(t) < v}`; negative-control Check |
| `μHE[n − 1]` at `n = 0` | `n = 0` | `n − 1 = 0` in `ℕ`, so `μHE[0]` is counting measure | junk | `n ≥ 1` throughout; noted in Conventions |
| 1.1 profile `I` | `v = 1/2, 1 − Φ(1), 1/3, 0, 1, 0.3` | `0.398942, 0.241971, 0.363600`; `I(0) = 0` vs junk `φ(quantile 0) = 0.398942`; `I″(0.3) = −2.876104 = −1/I(0.3)`, `I′(0.3) = 0.524401 = −Φ⁻¹(0.3)` | holds; quantile junk at `0` | separate definition at `0, 1`; Checks |
| 1.2 tails | `r = 0, 1, 2` | `0.5 = 0.5`; `0.158655 < 0.241971`, `< 0.303265`; `0.022750 < 0.067668` | holds; equality only at `0` | none |
| 1.3 splitting | `F = ℝ(e_1+e_2)/√2`; `E^{(2)}` coordinates; `F = {0}` | `Φ(1) = 0.841345`; `1 − Φ(√1.5) = 0.110336` (wrong factor gives `0.207108`); density `0.159155` at `0` in `ℝ²` | holds | none |
| 2.1 weighted variation | `W = 0` on `ℝ`; `γ` on `ℝ²`; definition without `−⟨∇W,X⟩` | `P((0,∞)) = 1`, `P((0,1)) = 2`; disc `0.606531`; wrong definition gives `P(ℝ) = 0.797885` | holds; wrong model excluded by complement invariance | Checks |
| 2.2 identification | `(−1,1)`; punctured disc | `0.483941`; `0.606531` unchanged | holds | none |
| 2.3 frontier, convex sets, balls | `n = 1, 2`, `r = 1`; translated half-space | `0.483941` (`ω_1 = 2`); `0.606531` vs `I = 0.384633`; `0.398942` vs `0.241971` | holds; Gaussian perimeter is not translation invariant | statement restricted to open convex sets and bounded Lipschitz domains (G6's class), unbounded convex via locality |
| 2.4 lsc / compactness | `{x_1 < k}`; `(k, k+1)` with `W = 0`; `(−1,1) ∪ (1+1/k, 2)` | `φ(k) → 0`; perimeter `2`, no `L¹` limit; `0.779903` vs limit `0.295962` | holds; finite mass needed | finite-mass hypothesis on the compactness half only |
| 2.5 Gauss–Green | half-line; translation of `{x_1 < s}`; `U = E` | `X(s)φ(s)`; derivative `φ(s)` with outward normal; `∫ −x_1 dγ = 0` | holds | bounded-field extension with explicit hypotheses (`μ(E) < ∞`, `P_μ(U) < ∞`, `⟨∇W, X⟩ ∈ L¹`) |
| 2.6 coarea | `f = ‖x‖` on `ℝ²`; `u(t) = t` | `1.000000` both sides; `1 = 1` | holds | none |
| 2.7 cylinders | `ℝe_1 ⊂ ℝ²`; `F = {0}` | `φ(s)` both sides; `0` | holds | none |
| 3.1 clusters | three intervals; `(E, ∅)`; infinite-perimeter cell | `φ(a) + φ(b)` (without `½`: double); `0`; excluded | holds | none |
| 3.2 interface decomposition (brief: `∂*Ω_i = ⋃ Σ_ij` as sets) | `q = 2`; three intervals; half-annuli `{x_2 > 0, 2^{−2k−1} ≤ ‖x‖ < 2^{−2k}}` against `{x_2 < 0}` | `A_12 = P`; `φ(a), φ(b), 0`; each half-annulus boundary has Gauss–Green vector `0` and length `2^{−2k}(3π/2 + 1)`, so `0 ∈ ∂*Ω_1 ∖ (∂*Ω_2 ∪ ∂*Ω_3)` | literal set equality (3.6) false; MN's support argument proves only equality of closures | stated as equality of closures; counterexample as negative-control Check |
| 3.3 `L_A` positive definite | three intervals; `(E,∅,∅)` | quadratic form `φ(a)(a_1−a_2)² + φ(b)(a_2−a_3)²`; `L_A = 0` at the boundary | holds in the interior only | route via BV Poincaré, valid for every weight (MN use the Gaussian isoperimetric inequality) |
| 3.4 profile finiteness | `ρ = c(1+y²)exp(−x²(1+y²)⁴)` on `ℝ²` | `∫ρ = c π^{3/2}` finite, `∫ρ(0,y)dy = ∞`; the only half-plane of measure `1/2` has infinite perimeter | MN's "clearly non-empty" needs a construction; slabs fail | finiteness via concentric annuli (spheres are compact) |
| 3.5 existence | `γ`, `v = (1/2,1/2)`; `W = 0` | exists, perimeter `0.398942`; `(k,k+1)` escapes | holds with `μ(E) = 1` | none |
| 4.1 model cluster | `q = 2` at `tu`; `q = 3` at `0`; conormals | `Φ(−t), φ(t)`; `A = 1/(2√(2π)) = 0.199471`, total `0.598413`; conormal sum `0` | holds | factorization of `A^m_ij` and balancing identity made explicit |
| 4.2 simplicial clusters | `q = 2`; equilateral `q = 3`; collinear `0,1,2` in `ℝ` | half-spaces; sectors of measure `1/3`; collinear not simplicial | holds | none |
| 4.3 `Ψ` diffeomorphism | `q = 2`, `t = 0.7`; `q = 3`, `x = 0`; `y − x = (1,1,−2)` | `−φ(0.7) = −0.312254` (difference quotient `−0.312254`); `DΨ = −0.423142 Id`; tie: no open cell contains `y − x` | MN's injectivity step ("`y ∈ x + Ω_i` for some `i`") fails at ties; MN use invariance of domain | injectivity via a maximal coordinate; surjectivity via openness (inverse function theorem) and properness |
| 4.4 model profile | `v = (1/2,1/2)`; centre of `Δ^{(2)}`; wrong evaluation point | `0.398942`; `0.598413 > I(1/3) = 0.363600`; evaluating at `v − (1/q,…)` gives `0.355065` vs `0.241971` | holds | none |
| 4.5 boundary behaviour | `(1/2,1/2,0)`; vertex | `0.398942`; `0` | holds | none |
| 4.6 Hessian identity | `q = 2`; `q = 3` centre | `I″/2 = −1/(2A_12)`; `∇²I_m = −1.671086 Id`, `−tr[(∇²I_m)⁻¹] = 1.196827 = 2 × 0.598413`; apex terms `0.159155⟨w,η⟩` cancel | holds | route made explicit (hyperplane Gauss–Green plus conormal balancing) |
| 4.7 easy inequality | `q = 2, 3`; `n = 1, q = 3` | `≤ 0.398942`; `≤ 0.598413`; three intervals give `0.727200` | holds for `n ≥ q − 1`; not claimed below | none |
| 5.1 structure on `ℝ` | `(0,1) ∪ (1,2)`; `ℚ`; accumulating intervals | `T = {0,2}`, `0.452933`; `0`; not locally finite at `0` | holds | owned here (no supplier states it) |
| 5.2 shifting | `(0,1)`; `(−1,0)` shifted right | `0.640913 → 0.366963`; `0.664218`, `0.722510 > 0.640913` | holds only for `a + b ≥ 0` | negative-control Check |
| 5.3 one-dimensional theorem | `(−∞, −0.430727)`; `(−1,1)`; `(−∞,0) ∪ ℚ` | `0.363600 = I(1/3)`; `0.483941 > 0.356343`; equality up to null sets | holds; characterization only a.e. | none |
| 6.1 symmetral | half-space; disc; `ℚe` | fixed; measure `0.393469`, section `(−∞, 0.475231)`; `∅` / `E` | holds | none |
| 6.2 slicing (CFMP (4.1)) | `{x_2 < m x_1}` over `[0,1]`; vertical boundary | both sides `1`; reciprocal Jacobian gives `1 + m² = 2`; `0` | holds | owned here from G2 tangential area formula and Isoperimetry I4 |
| 6.3 section measure (CFMP Lemma 4.4) | `{x_2 < a + bx_1}`, `a = b = 1` | formula `bφ(a + bz)` matches `v_U′`; bound `0.219695 ≤ 0.310697`; CFMP's printed weight would give `√(2π)bφ` | CFMP (4.8)–(4.9) have a `(2π)^{−1/2}` slip in their own normalization | restated with probability normalization and outward normal |
| 6.4 lower bound (CFMP Lemma 4.6) | tilted half-plane; slab `{|x_2| < 1}` | `0.310697 = 0.310697` (quadrature); slab equality `0.483941` though not a symmetral | holds; equality condition sufficient only | Check |
| 6.5 upper bound (CFMP Lemma 4.5) | `{x_2 < a}`; tilted half-plane | `φ(a)`; `0.439392 > 0.310697` | holds; weaker than 6.4 | route by mollification (avoids Reshetnyak continuity) |
| 6.6 Ehrhard symmetrisation | disc; reflected half-plane | `P_γ(S_e(disc)) = 0.516961 ∈ [0.384633, 0.606531]` (quadrature); `φ(s)` | holds | none |
| 7.1–7.2 minimizers | half-space; disc; `{x_1 < 0} ∪ ℚ²` | half-line sections; disc section `(−1,1)`; `H^{(1)} = {x_1 < 0}` | holds | none |
| 7.3 isoperimetric theorem | disc, slab, `∅`, `γ(U) = 0` | `0.606531 > 0.384633`; `0.483941 > 0.356343`; `∅` equality not a half-space; Φ-form vacuous at `0` | holds with the disjunct `γ(U) ∈ {0,1}` | Φ-form; route confirmed not to use CFMP Sections 5–7 (the brief's "reduction to `n − 1` symmetric sets" belongs to the quantitative part and is not used) |
| 7.4 cluster form `q = 2` | `(1/2,1/2)`; `(1,0)` | `0.398942`; `0` by `(E,∅)` | uniqueness only in the interior | none |
| 8.1 Borell–Sudakov–Tsirelson (brief: `A + r·closedBall`, `r ≥ 0`) | half-space; disc `r = 1`; `r = 0`; `S = 0` | equality `Φ(a + r)`; `0.864665 ≥ 0.767217`; `Metric.thickening 0 A = ∅`; `δ_m` case | `A + r·closedBall` may be non-measurable for Borel `A`; open form fails at `r = 0` | open thickening for `r > 0`, closed thickening for `r ≥ 0`, inner-measure form noted (Borell states inner measure); general Gaussian via pullback with outer measure, valid for every `S` in Mathlib's convention |
| 8.2 Minkowski content | half-space; disc; `ℚ²` | `φ(a)`; `0.606531 ≥ 0.384633`; quotient `1/r → ∞` | holds | none |
| 8.3 subgraph sets, Bobkov | `Φ(x)`, `Φ(2x)`, `min(x²,1)`, constants | `0.398942 = 0.398942` twice; `0.398619 < 0.647454`; `I(c) = I(c)` | holds | route through the isoperimetric theorem in `E × ℝ` (no Ornstein–Uhlenbeck semigroup needed) |
| 8.4 concentration (brief: `γ(f ≥ m + r)`, `r ≥ 0`) | `f = x_1`; `f ≡ m` at `r = 0`; `|x_1|` | equality; `γ({f ≥ m}) = 1 > 1/2`; median `0.674490` vs mean `0.797885` | brief's non-strict form false at `r = 0` | strict superlevel set `{f > m + Lr}` for `r ≥ 0` |
| 8.5 Gaussian maxima | one coordinate; two independent; `S = 0` | equality; `0.010899 ≤ 0.022750`; trivial | holds | none |
| 9.1 closed symmetrals | disc, `F = ℝ²`; ball in `ℝ³` by composition; direction reversal | `{⟨y,u⟩ ≤ −0.270289}`; both give `{x_3 ≤ −0.846102}` (measure `0.198748`); `{⟨x,u⟩ ≥ −a}` | holds; closedness from semicontinuity (Ehrhard's regularizing machinery not needed for it) | none |
| 9.2 Lemma 3.3 | Hessians at `(−1,1), (0,2), (−3,−0.5), (0.5,0.6)` | determinants `0.163502, 0.015519, 0.000142, 15.273135`, diagonal entries negative | concave at all points tried | none |
| 9.3 planar approximation | angles; disc | `90°, 135°, 157.5° → 180°`; limit `{⟨x,u_1⟩ ≥ 0.270289}` | holds | sign conventions mirrored explicitly |
| 9.5 Ehrhard convex | `[−1,1], [−3,3]`; half-spaces; log-concavity; Borell limit | `1.690143 ≥ 1.628703`; equality; `0.954500 ≥ 0.948312 ≥ 0.825134`; `λ = 0.9`: `1.554146 ≤ 1.690143` | holds | Φ-form handles empty or null sets |

## Notions moved down from later roadmaps

None. The Voronoi cells of the open pull request PointProcesses (point configurations, ties included) are a different object; this roadmap defines simplicial clusters directly as strict Voronoi cells of equidistant points and does not consume PointProcesses, which is not earlier in the merge order.

## Ownership

Checked by object with `roadmaps grep` over main (c9a16a0) and all 455 open roadmap pull-request heads, and over the board packages: no hits for Ehrhard, Gaussian perimeter or isoperimetry, Borell, Bobkov, Sudakov, multi-bubble, Minkowski content, isoperimetric profile, weighted perimeter or variation, Vol'pert. Neighbours: RandomMatrices 2.2 (log-Sobolev, Poincaré, Herbst mean concentration — not re-proved); BanachSpaceTheory (sphere concentration for Dvoretzky by its own route); OptimalTransport (Ornstein–Uhlenbeck flow, unrelated); the Varifolds target on the board only notes that the multi-bubble theorem needs interface regularity. The Gaussian splitting identity of §1.3 is owned here: StandardDistributions 5.3 proves independence of orthogonal projections but does not identify their laws as `stdGaussian` of the subspaces. The one-dimensional structure theorem (§5.1) and the projection area formula on the reduced boundary (§6.2) are owned here because no supplier states them in the needed form; Isoperimetry I4 supplies the Euclidean slicing theorem along lines.

## Proposed Part IIs

- **GaussianIsoperimetryAndClustersPartII**: the Gaussian double- and multi-bubble theorems for `3 ≤ q ≤ n + 1` (Milman–Neeman Sections 5–11). It needs a supplier for regularity of minimizing clusters (Almgren interface regularity, Taylor–White–Colombo–Edelen–Spolaor singular sets, curvature integrability near quadruple points); that is naturally a GeometricMeasureTheory Part II or the roadmap that grows out of the Varifolds target. Ehrhard's inequality for arbitrary Borel sets (Borell 2003, van Handel 2017) fits the same Part II or a separate one.

## Gaps

None: every prerequisite is a pinned declaration, a section of GeometricMeasureTheory (G2–G6), Isoperimetry (I4) or StandardDistributions (Layer 7.2), all on main, or an earlier target here. Supplier maturity: GeometricMeasureTheory G5–G6 are partial or untouched on main per its status page, so Layers 2.2–2.5, 3.2, 6 and everything after them wait on them; Layer 1, the definitions of Layers 2–4 and Layer 5 do not.

## Deviations from the brief

- Weight class `C¹` instead of `C^∞` (wider; all proofs work).
- Target 5's set equality replaced by equality of closures (false otherwise).
- Target 8's symmetral formula corrected to the sublevel convention.
- Target 9's route: CFMP Theorem 4.1 is proved by existence plus symmetrisation plus convexity (Section 4.2), not by reduction to `(n − 1)`-symmetric sets; Sections 5–7 are not used.
- PDE Lane A is not a supplier: the `W^{1,1}_loc` perimeter formula (4.6) of the symmetral is not needed by any target.
- Target 10(a) restated with thickenings (measurability) and for every `S` in Mathlib's convention; target 10(c) with the strict superlevel set.
- Target 10(b)'s proof goes through the isoperimetric theorem in `E × ℝ`, not the Ornstein–Uhlenbeck semigroup, which no roadmap owns and which is not needed.
- Consumers: RandomMatrices and BanachSpaceTheory are on main and do not import this roadmap; they are listed as neighbours, not consumers.

## Sources

Read and certified: MilmanNeeman2022 (arXiv v3), CianchiFuscoMaggiPratelli2011 (cvgmt preprint; locators refer to it), Ehrhard1983 (OCR; formulas partly garbled, statements read), Borell1975 (OCR), Ledoux1993, Ledoux1999, Maggi2012 (extract: contents and Part IV synopsis; chapter locators from the published book). Not readable or not read, cited by locator: SudakovTsirelson1974, Ledoux1996, CarlenKerce2001, AmbrosioFuscoPallara2000, Bogachev1998 (settled uncertified), Bobkov1997 (text layer unusable; the inequality is taken from Ledoux1999 (1.11)). No source is needed beyond these, so no request was filed. No passage is copied into any file.

## Suspicious text

None encountered in the brief's inputs, sources or roadmaps read.

## Suggested.lean outlook (for packaging)

The headlines expressible with a single `import Mathlib` and no sorry'd data: the Φ-form isoperimetric inequality and its equality case for `stdGaussian E` with the duality definition of Gaussian perimeter (`LinearMap.trace` of `fderiv` for the divergence), the thickening form of Borell–Sudakov–Tsirelson, median concentration, Ehrhard's inequality in Φ-form, existence of minimizing clusters for a weight, and the two-cell cluster form. The profile `I` needs `Φ⁻¹`; with a single Mathlib import it can be written with `Function.invFun` of `cdf (gaussianReal 0 1)` or avoided by Φ-forms. No `q ≥ 3` statement belongs in it.

## Dependency check

```
candidate: GaussianIsoperimetryAndClusters is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 236 roadmaps, 2180 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README reports no cross-roadmap citation or Lean name found nowhere.
