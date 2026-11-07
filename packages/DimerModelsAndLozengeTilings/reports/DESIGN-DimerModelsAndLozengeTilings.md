# Design report: DimerModelsAndLozengeTilings

Deliverables: `packages/DimerModelsAndLozengeTilings/design/README.md` (the design, in roadmap
form), `packages/DimerModelsAndLozengeTilings/design/plan.json` (52 targets in 10 layers, no
gaps), and the updated `packages/DimerModelsAndLozengeTilings/sources.toml` (locators and
`cited_for` per target; no new source).

## What the design covers

Ten layers, built from Mathlib and Tau Ceti at the pins (Mathlib `f6090c7`, Tau Ceti `358314d`)
and one roadmap on main (PadicMeasuresIwasawaAlgebras §6.4):

1. the triangular lattice, faces, lozenges, the dual hexagonal graph, regions, tilings; tilings are
   Mathlib perfect matchings (1.5);
2. integer edge cochains, combinatorial simple connectivity with a bridge from Mathlib's
   `IsSimplyConnected` of the union of faces (2.4), height functions of plane tilings (2.5) and of
   regions (2.6), boundary heights (2.7), the lattice of heights and flip connectivity (2.8),
   Thurston's criterion (2.9), lozenge counts under finite changes (2.10);
3. Kasteleyn's theorem (3.2) and the local statistics formula (3.4) for finite simply connected
   regions, through the generalised cofactor identity (3.3) derived from PadicMeasuresIwasawaAlgebras
   §6.4;
4. tail σ-algebras for proper countable-group actions, invariant events almost surely tail (4.2),
   Bernoulli ergodicity (4.3), the weak topology and cylinder criterion (4.4), specifications
   (4.5), the face property and closedness (4.6);
5. perfect-matching configuration spaces of locally finite periodic graphs, the weighted dimer
   specification with its cylinder-identity form, and the lozenge instance (5.1–5.4);
6. slopes, the corners and the edges of the slope triangle (6.1–6.3), and the non-ergodic extreme
   point of a slope fibre (6.4);
7. torus tilings, height changes, torus measures, torus limits in `𝒢_inv` of the prescribed slope
   (7.1–7.3);
8. twisted Kasteleyn matrices, the sign of a torus tiling, the four-determinant formula, torus
   correlations, Fourier diagonalisation (8.1–8.5);
9. the infinite inverse Kasteleyn kernel, good torus sizes and Riemann sums, the determinantal
   Gibbs measure of liquid weights, mixing and ergodicity, ergodic Gibbs measures of every slope,
   the incomplete beta kernel and process, the discrete sine kernel (9.1–9.7);
10. local-statistics convergence of tilings of growing regions and Gibbsianity of limits of
    uniform measures (10.1–10.3).

### Map from the target's final targets

| Target | Where | Status |
| --- | --- | --- |
| 1 tilings are dimer coverings | 1.4, 1.5 | planned; a tiling now requires interior edges (the target's wording described free tilings) |
| 2 configuration space | 4.4, 5.1, 5.4 | planned at the generality of a closed subshift with a proper countable-group action |
| 3(a) heights of plane tilings | 2.5 | planned |
| 3(b) heights on domains, boundary height | 2.6, 2.7 | planned with the hypothesis "boundary graph connected", proved for finite simply connected regions; false for infinite domains (strip) |
| 3(c) Thurston's criterion | 2.9 | planned in Aggarwal's normalisation (neutral increments `0,0,1`), plus the non-simply-connected form |
| 4(a) Gibbs property | 4.5, 5.2 | planned as DLR, conditional-expectation form and cylinder identities |
| 4(b) ergodic = extreme, face, conditioning | 4.2, 4.6, 5.3 | planned; ergodic ⟺ extreme is Tau Ceti's `ErgodicSMul.iff_mem_extremePoints` |
| 4(c) closedness, compactness | 4.4, 4.6(c), 5.3 | planned |
| 5 slopes | 6.1, 6.4 | planned; the clause "fibres meet `𝒢_inv` in sets whose extreme points are ergodic" is false and is not stated (6.4 records the counterexample) |
| 6 existence by torus limits | 7.3, 9.5 | torus limits are invariant Gibbs of the right slope (7.3); ergodic existence for every slope via 6.2, 6.3, 9.3–9.4, because the target's Krein–Milman step fails |
| 7 Sheffield's uniqueness | proposed Part II | moved (see below); both of the target's stated consequences are false or unproved as stated |
| 8 failure of uniqueness on the boundary | 6.3 | planned; the second ergodic measure is a phase-randomised block measure |
| 9 Kasteleyn, finite and torus | 3.2, 3.4, 8.3, 8.4 | planned, with explicit torus signs |
| 10 explicit kernel | 9.1–9.7 | planned; `μ_{s,t}` is defined as `μ_{ξ(s,t)}`; the target's injectivity claim is false and is corrected |
| 11 local-statistics convergence | 10.1–10.3 | planned; Theorem 1.5 is expressible here only on its lattice side |

### Why Sheffield's theorem is a Part II

Sheffield's Theorem 9.1.1 (sheffield2005 lines 5443–5445) concerns minimal gradient phases; turning
it into "a unique ergodic Gibbs measure of each interior slope" (kos2006 Theorem 2.1) needs the
specific free energy and the variational principle that ergodic Gibbs measures minimise it
(sheffield2005 Chapters 2–3 and 6), cluster swapping and log-concavity (Chapter 8), the FKG
inequality for extremal Gibbs measures, and the homotopy argument for measures on `{0,1}^{ℤ²}` in a
countably punctured plane (Sections 9.2–9.4). gorin2021 (lines 4654–4656) calls the key claim
difficult and defers to Sheffield. This is a roadmap in itself, and its natural companions (surface
tension, variational principle, limit shapes, the continuum side of Aggarwal's theorem, the full
convergence `μ^{s,t}_n → μ_{s,t}`) are already named by the target as Part II material. The design
therefore plans everything Sheffield's theorem is about (ergodic Gibbs measures, slopes, an
ergodic Gibbs measure of every slope, the explicit kernel) and leaves the uniqueness statement to
the proposed DimerModelsAndLozengeTilingsPartII. Two consequences stated with target 7 are not
correct as written: "the translation-invariant Gibbs measures of slope `(s,t)` reduce to
`{μ_{s,t}}`" is false (`ν₃ = (δ_{M₁}+δ_{M₂}+δ_{M₃})/3` is translation-invariant, Gibbs, of slope
`(1/3,1/3)`, not ergodic), and "`μ^{s,t}_n → μ_{s,t}`" needs, beyond uniqueness, that the limit
points are ergodic, which uses the variational principle (kos2006 Theorem 2.1 cites Sheffield
Chapters 8–9 for it).

## Proposed Part II

**DimerModelsAndLozengeTilingsPartII.** Introduction: where this roadmap stops — ergodic Gibbs
measures of every slope exist, the explicit ones are `μ_{ξ}`, torus limits are invariant Gibbs
measures of the right slope, but uniqueness and the variational theory are not proved. Contents:
specific free energy and surface tension (Lobachevsky formula, aggarwal2023 (1.3)); the variational
principle that ergodic Gibbs measures of slope `u` minimise specific free energy; Sheffield's
uniqueness for interior slopes and the convergence `μ^{s,t}_n → μ_{ξ(s,t)}`; the Cohn–Kenyon–Propp
variational principle and limit shapes; the continuum objects and the statement of Aggarwal's
Theorem 1.5; general periodic weights and amoebae; general periodic bipartite planar graphs, the
planar Kasteleyn theorem and domino tilings (these need planar embeddings; the PlanarTopology
roadmap proposal supplies plane graphs). It consumes Layers 2, 5–7, 9 and 10 of this roadmap.

## Notions moved down from later roadmaps

None. No roadmap later in the merge order owns anything this design needs.

## Gaps

None. Every prerequisite is a pinned Mathlib or Tau Ceti declaration, a target of this roadmap, or
PadicMeasuresIwasawaAlgebras §6.4 (on main): `Matrix.compound`, `Matrix.compound_mul`, the unit rule
`C_r(1) = 1`, `Matrix.higherAdjugate`, `Matrix.compound_mul_higherAdjugate` (read in its README
§6.4 and its `Suggested.lean`; stated for `Fin m`-indexed matrices over a commutative ring).

## Ownership and duplication checks

- Libraries at the pins (read in the files): Mathlib has no lattice tilings, heights, Kasteleyn
  matrices, Gibbs specifications or tail σ-algebra of a product space (the tail σ-algebra appears
  only as `limsup` in `Mathlib/Probability/Independence/ZeroOne.lean`); `Ergodic.iff_mem_extremePoints`
  is for one map. Tau Ceti has the countable-group version `ErgodicSMul.iff_mem_extremePoints`
  (`TauCeti/MeasureTheory/Group/ErgodicExtreme.lean`, multiplicative only), the face lemma
  `isExtreme_setOf_measure_eq_zero`, and one-sided shift ergodicity of i.i.d. laws; these are cited,
  not replanned. No Jacobi complementary-minor identity at either pin.
- `roadmaps grep` over main and the open roadmap pull requests (index of 2026-11-05): "dimer",
  "lozenge", "Kasteleyn", "honeycomb", "Gibbs measure", "DLR", "specification", "tail σ-algebra",
  "Bernoulli shift", "complementary minor". Results: TemperleyLiebOperatorAlgebras has the
  Potts–Fortuin–Kasteleyn identity (unrelated); TensorProductCombinatorics §1.1 owns the finite
  hive array `Δₙ` with unit rhombi (a different carrier, recorded in Scope); PDE mentions a
  stochastic-quantisation Gibbs measure (unrelated); PadicMeasuresIwasawaAlgebras §6.4 owns compound
  matrices and higher adjugates (consumed); SchurWeyl uses a complementary-minor identity for
  Toeplitz matrices only. RandomMatrices §8.3–8.4 (continuous determinantal processes, sine kernel)
  and GraphConnectivityAndFlows §6.7 (finite bipartite multigraph matchings) are recorded as not
  used. PointProcesses excludes determinantal and infinite-volume Gibbs processes. PlanarTopology
  owns Jordan-curve and PL surface topology, not lattice simple connectivity; 2.4 uses only Mathlib.
- Board packages: only `packages/ConstructiveFieldTheoryPhi4/target.md` mentions this target, as a
  vocabulary-only neighbour; the packages-under-review index lists nothing related.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. It does
  not check Mathlib names on this host; every Mathlib and Tau Ceti name in the supplier contracts was
  read in its file at the pin (namespaces checked: `MeasureTheory.Measure.infinitePi`,
  `ProbabilityTheory.measure_zero_or_one_of_measurableSet_limsup`, `AddCircle.isCoveringMap_coe`,
  `IsCoveringMap.existsUnique_continuousMap_lifts`, `IsPiSystem.tendsto_probabilityMeasure_of_tendsto_of_mem`,
  `MeasureTheory.ProbabilityMeasure.tendsto_measure_of_isClopen_of_tendsto`,
  `MeasureTheory.exists_measure_symmDiff_lt_of_generateFrom_isSetRing`, `IsSimplyConnected`,
  `tendsto_integral_exp_inner_smul_cocompact`).

## Errors found in the sources and in the target

- kenyon2009 Section 5.4 (lines 860–866) deduces ergodicity of the torus limit from "the extreme
  points of the fibre are ergodic"; `ν₃` is an extreme point of the fibre over `(1/3,1/3)` and is not
  ergodic (6.4). The target's targets 5 and 6 repeat this step.
- gorin2021 Lemma 4.7 (line 1766): "for large `n`, `n` or `n+2` lies in `W_θ`" fails at `θ = π/2`,
  where every even `n` has `j = n/2`; `n` or `n + 1` is correct for `θ ∉ πℤ` (9.2). The angle `π/2`
  occurs for right-triangle weights.
- aggarwal2023 lines 465–467: a plane tiling is not determined by its type-1 positions merely when
  they are nonempty (the two tilings of 9.7's third Check); the target's target 10 repeats this.
  The correct statement (9.7(f)) asks that no two consecutive rows lack type-1 lozenges.
- Target 3(b): independence of the boundary height fails for infinite simply connected domains
  (the strip, 2.7); the design adds the connected-boundary hypothesis and proves it for finite
  simply connected regions by a Mayer–Vietoris argument on the plane.
- Target 3(c) mixes Gorin's boundary rule (`+1` along positive boundary edges in Gorin's directions)
  with Aggarwal's height; restated with the neutral increments `c₀ = (0,0,1)`.
- Target 9: the correlation formula needs pairwise distinct lozenges (a repeated lozenge gives `0` on
  the right and a positive probability on the left).
- Target 11: Theorem 1.5 is not expressible from targets 2–10 alone (the surface tension, admissible
  functions and the maximiser are continuum objects); 10.3 states the lattice side only.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Incidence convention | `W(0)`, `B(0)`, edge `(0,1)` | `W(0)`, `B(0)` share only `(0,3)`; `(0,1) ∈ W(0), B(−e₂)`; `(1,0) ∉ B(0)` | holds | Check 1.1 |
| Lozenge types = Aggarwal's | type-1 with inner edge `(v,1)` | vertices `v−e₂, v, v+e₁, v+e₃` = `(x,y),(x,y+1),(x+1,y+1),(x+1,y+2)` at `(x,y) = v−e₂` | match | none |
| Height increments | `W(v)` cases; `M₁, M₂, M₃` | `(a,b) ∈ {(0,0),(1,0),(0,1)}` give exactly one `M`-edge; `H = x, y, 0` | consistent | convention witness |
| Gorin's height | `M₃` | `h_G = x + y`: `+1` along `e₁`, `−2` along `−e₃` | matches gorin2021 lines 449–452 | recorded |
| Rotation on heights | `M₁` | `H_{ρM₁}(w) = (w₂ − w₁) + w₁ = w₂ = H_{M₂}` | holds | witness |
| Translation convention | `S_w` vs `τ_w` | `S_w = τ_{−w}` | same invariance | recorded |
| Complex slope | `s = t = 1/3` | `ξ = e^{πi/3}`; inverse `(arg ξ, −arg(1−ξ))/π = (1/3, 1/3)` | holds | API 9.6 |
| Kernel arc side | diagonal | across `(0,1)`: `s`; across `(−∞,0)`: `−(1−s)` | side matters | Check 9.6 |
| 1.3 counting `3|R| = 2|E°| + |E∂|` | `{W(0)}`, `R₆` | `3 = 0 + 3`; `18 = 12 + 6` | holds | Checks |
| 1.4 tiling definition | `{W(0)}` with `M = {(0,1)}` | every face has one `M`-edge but `(0,1)` is a boundary edge | target's wording gives free tilings | interior-edge condition added |
| 1.5 tilings = perfect matchings | `∅`, `{W(0)}`, `R₆` | `1↔1`, `0↔0`, `2↔2` | holds | Checks |
| 2.1 simple connectivity | `{W(0)}`, `R_ring`, `R₆` | primitive exists; dual-path cochain sums to `1` round `W(0)`; shelling | discriminates | Checks |
| 2.2 plane | plane minus `W(0)` | same cochain closed, not exact | every face needed | Check |
| 2.3 holes | `R_ring`, five-face fan | hypothesis holds / fails at `B(e₁)` | consistent | Checks |
| 2.4 bridge | triangle, wedge at `(1,1)`, `R_ring` | both notions hold, hold, fail | consistent; converse not stated | none |
| 2.5 plane heights | `⌊(x+y)/2⌋`, `x + y` | height function; increment `2` along `e₃` | holds | Checks |
| 2.6 region heights | `{W(0)}`; `R_ring` tiling `T` | heights `(1,1),(0,1),(0,0)`, no tiling; winding `0+0−1 = −1` | simple connectivity needed | hypothesis kept |
| 2.7 boundary heights | `R₆`; strip; wedge | `h = 0,0,0,−1,−1,−1`; top line `0` vs `1`; no `h` | target 3(b) false for the strip | connected-boundary hypothesis; lemma for finite simply connected |
| 2.8 flips | `R₆`; 2×2 torus class `(1,0)` | `H_max(0) − H_min(0) = 1`, black partners permuted by a 3-cycle; two tilings, no flip | holds on simply connected regions | Check |
| 2.9 Thurston | `R₆`, `{W(0)}`, `R₆'` | holds; `c₀` sums to `−1`; `h(1,1) − h(2,1) = 1 > 0 = ρ` | holds | restated with `c₀` and `ρ_R` |
| 2.10 counts | `T_a ∖ T_b`, `T_b ∖ T_a`; `M₁` vs `M₃` | one edge of each direction each side; infinite difference | holds | Checks |
| 3.1 Kasteleyn matrix | `R₆`, weighted `R₆` | `det = 2`, column swap `−2`; `2abc` | absolute value needed | Checks |
| 3.2 Kasteleyn | `R₆`, `R₆'`, `R_ring` | `2 = 2`; `0 = 0`; `det = 0 ≠ Z = 2` (odd 6-cycle) | simple connectivity needed | negative control |
| 3.3 cofactor identity | `k = 1`, `2 × 2`, repeated row | adjugate; `−1 = −1`; `0 = 0` | holds | Checks |
| 3.4 local statistics | `R₆` one and two lozenges; shared face; weights | `1/2`; `det[[1/2,1/2],[−1/2,1/2]] = 1/2`; `0`; `c·ab/(2abc) = 1/2` | holds with distinct pairs | distinctness hypothesis added |
| 4.1–4.2 tail lemma | trivial `ℤ`-action on a point; trivial group | invariant event of measure `1/2`, not a.s. tail | properness and infinite `Γ` needed | hypotheses |
| 4.3 Bernoulli | `Bern(1/2)`, `δ_a`, mixture of `Bern(1/3)`, `Bern(2/3)` | ergodic; ergodic; invariant event of measure `1/2` | holds | Checks |
| 4.4 weak topology | indicators of `[n,∞)`; one-point functions; `[0,n]` | limit `δ_0`; `1/4` vs `1/2`; limit leaves the finitely supported set | closedness needed | Checks |
| 4.5 specifications | trivial, independent, inconsistent | all measures Gibbs; only `ν^{⊗I}`; none | discriminates | Checks |
| 4.6 face property | non-tail density `2·1_{ω(0)=1}` | resulting measure has `ω(0) = 1` a.s., not Gibbs | tail hypothesis needed | Check |
| 5.1 dimer space | `ℤ`; infinite-degree star; `C₆` | two configurations; `{c x_k} → ∅`; two | local finiteness needed | hypothesis |
| 5.2 dimer specification | `ℤ`; `C₆`; gauge | every measure Gibbs; masses `1/2`; weights scale by `∏ g(v)` | holds | Checks |
| 5.3 dimer face theorem | `ℤ` with `2ℤ`; `ℤ` with `ℤ` | `𝒢_inv` a segment, midpoint not ergodic; `δ_even` Gibbs, not invariant | holds | Checks |
| 5.4 magnetic invariance | `R₆` with type weights | both tilings weigh `abc` | holds | Check |
| 6.1 slope | `δ_{M_k}`, `ν₃`, Bernoulli rows | `(1,0),(0,1),(0,0)`; `(1/3,1/3)`; `(s,0)` | holds | Checks |
| Target 5 "fibre extreme points are ergodic" | `ν₃` at `(1/3,1/3)` | `ν₃` extreme in the fibre, invariant event `M = M₁` of measure `1/3` | false | clause not stated; 6.4 |
| 6.2 corners | step tiling `ε = 1_{[0,∞)}` | `μ{(0,1) ∈ M} = 1`, `μ ≠ δ_{M₁}` | invariance needed | Check |
| 6.3 edges | `Bern(1/2)` vs `β_{1/2}` | `P(ε₀ = ε₁ = 1) = 1/4` vs `3/8` | two distinct ergodic measures | block measure replaces the target's Markov chain (ergodicity from 4.3) |
| 7.1 height changes | 1×1, 2×2 floor, `(2,1)` | three tilings; no type 3 (`4−2−2 = 0`); not attainable | holds | Checks |
| 7.3 torus limits | `(0,0)`, `(1/2,0)`, `n = 3` | `δ_{M₃}`; `C(2m−k,m−j)/C(2m,m) → 2^{−k}`; slope exact | holds | ergodicity not claimed |
| Target 6 Krein–Milman step | fibre over `(1/3,1/3)` | extreme point `ν₃` not ergodic | false | existence via 9.5 |
| 8.2 torus signs | 1×1; 2×2 floor; all 2×2; all 1×2 | `(−1)^b, (−1)^a`; `−1`; `−3`; `3, −1, 5, 1` | match the determinants | none |
| 8.3 four determinants | 1×1; 2×2; 1×2 | `w₁+w₂+w₃`; `9`; `5` (direct counts `9`, `5`) | table equals gorin2021 (3.4) and kenyon2009 (3) | none |
| 8.4 torus correlations | 1×1 type 3; 2×2 coefficients; shared white face | `w₃/Z`; `3/18, 5/18, 5/18, 5/18`; `0` | holds | Checks |
| 8.5 Fourier | 2×2; 3×3 uniform | `3·1·1·(−1) = −3`, `5`; eigenvalue `0`, `det K₀₀ = 0` | determinants may vanish | 8.4 uses complementary minors |
| 9.1 kernel | `(1,1,1)`, `(1,1,3)`, `(1,1,2)` | `G(0) = 1/3`, `G(0,−2) = √3/(2π) − 1/3`; `w₃G(0) = 1`; singular zero | liquid hypothesis needed | Checks |
| 9.1 row formula | general liquid `w` | `w₁G(m,−1) = (−1)^m sin(θ₁m)/(πm)`, diagonal `θ₁/π` | holds | API |
| 9.2 good sizes | `θ = π/2`; `θ = 2π/3` | no even `n` in `W_{π/2}`; `3 ∉ W`, `4 ∈ W` (`π/12 > 1/8`) | Gorin's `n+2` false | `n+1` |
| 9.3 determinantal measure | uniform, type-1 at `(0,0),(0,1)` | `1/9 − (1/3)(√3/(2π) − 1/3) = 2/9 − √3/(6π) ≈ 0.130` | holds | Check |
| 9.4 mixing | type-3 covariance; `ν₃` | `−w₃²G(d)G(−d) → 0`; `1/3 ≠ 1/9` | holds | Checks |
| 9.5 every slope | `(1/3,1/3)`, `(1/2,1/4)`, `(1/2,0)` | liquid; `1 < √2` liquid; `w = (1,0,1)` not positive | edges need 6.3 | Checks |
| 9.6–9.7 incomplete beta | uniform pair via `K_ξ`; row `s = 1/2` | `s² + (1/3)(1/3 − √3/(2π)) = 2/9 − √3/(6π)`, equal to the `G` value, gauge `(−1)^{x+y}`; `1/4 − 1/π² ≈ 0.149` | conventions agree | Checks |
| Target 10 / Aggarwal injectivity | heights `1_{x>0}` on rows `y ≤ 0`, `1` or `y` above | two tilings, same `X(M) = {(0,y): y ≤ 0}` | false | 9.7(f) |
| Target 7 consequence | `ν₃` | invariant Gibbs of slope `(1/3,1/3)` not equal to an ergodic one | false | not stated |
| 10.1 local convergence | constant; translated hexagons; `+v_N` | `μ`; `(δ_{T_a}+δ_{T_b})/2`; `δ_∅` | exhaustion needed | Checks |
| 10.2 limits are Gibbs | forced step region; forced squares; corner tiling `min(0,x,y)` | `δ_{M_ε}` non-invariant; `δ_{M₃}`; non-Gibbs `δ_{M_c}` (flip at `0`) | uniformity needed; invariance not claimed | Checks |
| Target 11 expressibility | continuum objects | not defined here | partly false | 10.3 lattice side only |

Context and generality checks: every theorem's standing hypotheses are in its statement (Layer 4
and 5 headers fix `Γ` countable infinite with a proper action; 3.2–3.4 require finite simply
connected regions and, for 3.2, equal colour counts; 9.x require liquid weights). Generality was
kept at the sources' level for the measure-theoretic layers (any proper countable-group action on a
finite-alphabet subshift; any locally finite periodic graph) and for Kasteleyn's theorem (any
positive edge weights); the torus Fourier layer uses type weights, which is what the explicit
kernel needs; general periodic weights are Part II.

## Sources

All citations are to sources already in the manifest, read in the cached texts. Certified:
aggarwal2023 (arXiv v4, cited in that version's numbering), sheffield2005 (arXiv v3), kos2006
(arXiv v1), kenyon2009 (arXiv v1), okounkov-reshetikhin2003 (arXiv v3), cohn-kenyon-propp2001
(arXiv v3), kenyon1997 (Numdam), gorin2021 (author's copy, printed numbering). Settled as
uncertified and cited by locator only: thurston1990 (2.9, alongside gorin2021 Theorem 1.4) and
georgii2011 (Theorem 14.15, for 4.2 and 4.6, alongside sheffield2005 Lemma 3.2.2). No source was
fetched and no text is requested; no `needs-references.toml` was written. `sources check` reports
`0 problem(s)`. No fetched text contained instructions.

## Dependency check

```
candidate: DimerModelsAndLozengeTilings is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 236 roadmaps, 2180 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The only roadmap supplier is PadicMeasuresIwasawaAlgebras (main).

## Notes for packaging

`Suggested.lean` should state, with `sorry` and a single `import Mathlib`: `isTiling_iff_isPerfectMatching`
(1.5), `planeHeight_bijective` (2.5), `thurston_tileable_iff` (2.9), `partitionFunction_eq_abs_det`
and `lozenge_correlation_eq_det` (3.2, 3.4), `gibbsInvariant_extreme_iff_ergodic` (4.6),
`slopeEdge_ergodicGibbs_equiv` and `two_ergodicGibbs_of_slopeEdge` (6.3),
`torusLimit_mem_gibbsInvariant_slope` (7.3), `torus_partitionFunction_eq` (8.3),
`exists_ergodicGibbs_of_slope` (9.5), `incompleteBetaProcess_exists_unique` (9.7) and
`localLimit_isLozengeGibbs` (10.2), over the simple definitions `TriEdge`, `TriFace`, `hexGraph`,
`IsTiling`, `IsPlaneTiling`, `IsSimplyConnectedRegion`, `kasteleynMatrix`, `partitionFunction`,
`IsLozengeGibbs`, `incompleteBetaKernel`. The incomplete beta measure is stated as `∃!`, not
defined by choice, so that no data is `sorry`'d. Tau Ceti's ergodicity lemmas are multiplicative:
the `ℤ²` action enters through `Multiplicative (ℤ × ℤ)` or through additive restatements proved
by transport.
