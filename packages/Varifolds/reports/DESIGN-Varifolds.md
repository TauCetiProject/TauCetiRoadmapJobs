# Design report: DESIGN-Varifolds

Deliverables: `packages/Varifolds/design/README.md` (nine layers, 34 targets),
`packages/Varifolds/design/plan.json` (same plan as data, no gaps), `packages/Varifolds/sources.toml`
(two sources added, every `cited_for` list synchronised with the README; `sources check`: 0
problems). No `needs-references.toml` request: every text the design relies on was read, or is a
settled `uncertified` citation.

## What the design covers

- **Layer 1.** Grassmannian of E as rank-k self-adjoint idempotents (`IsStarProjection`), operator-norm
  metric; Grassmann bundle G_k(W) as a subspace of the endomorphism bundle, compared with
  GeometricCurrents G6's unoriented bundle (G6's compactness and Radon compactness transported);
  varifolds, weight, mass, support, restriction; varifold convergence and compactness.
- **Layer 2.** Approximate tangent spaces of Radon measures on manifolds and Simon's rectifiability
  criterion 11.8 (owned here: GeometricMeasureTheory G2 states only the direction "rectifiable ⇒
  approximate tangent planes"); v(Γ, θ), rectifiable and integral varifolds; [Σ] for C¹ embedded Σ.
- **Layer 3.** Push-forward with `LinearMap.normDet` Jacobians; dilations and normal-coordinate
  blow-ups; tangent spaces with multiplicity, fibre measures, first rectifiability theorem.
- **Layer 4.** δV, the derivative-of-mass theorem along `TauCeti.globalFlow`, stationarity, locally
  bounded first variation, the Riesz representation for vector fields (owned bridge), the Riesz
  decomposition (H_V, Z_V, σ_V, η_V), and a pointwise comparison of first variations for two metrics
  with its normal-coordinate blow-up form.
- **Layer 5.** First variation of C² submanifolds (agreement with RiemannianGeometry R5a.2); intrinsic
  versus ambient comparison for M ⊆ ℝ^L.
- **Layer 6.** Euclidean monotonicity identity (with first-variation term) and weighted identity;
  intrinsic Riemannian monotonicity (Scharrer); densities (existence, measurability, upper
  semicontinuity in x and under convergence, lower bound); constancy theorem; convex hull property.
- **Layer 7.** Varifold tangents; semicontinuity of lower density bounds, Allard rectifiability,
  rectifiable compactness, Allard's multiplicity lemma and integral compactness, all stated for
  metrics g_i → g in C² on compacts (fixed metric and blow-ups are special cases).
- **Layer 8.** Rectifiable and integral tangent cones.
- **Layer 9.** reg^r/sing^r for r ∈ {1, …, ∞}; locality and isometry invariance; comparison theorem
  with GeometricCurrents G6's auxiliary varifold; the Simon 2023 and Edelen–Spolaor 2023 statements as
  statement-level examples.

All ten final targets of `target.md` are planned (target 1: 1.1–1.4; 2: 2.1–2.3, 3.3; 3: 3.1–3.2;
4: 4.1–4.4; 5: 5.1; 6: 6.1–6.3; 7: 7.1, 7.3–7.6; 8: 7.2, 8.1–8.2; 9: 5.2, 9.1–9.2; 10: 9.4), with the
corrections listed below.

## Corrections to the triaged target

1. **δV "depends only on X on spt‖V‖" (target 4) is false in general.** Witness: V the vertical lift of
   H¹⌞(x-axis) in ℝ², X = ψ(y) y_2 e_2. X = 0 on spt‖V‖ = x-axis, but div_S X = ∂_2(ψ y_2) = ψ on the
   axis, so δV(X) = ∫ψ(t, 0) dt ≠ 0. The README states the correct locality (vanishing on an open set
   containing spt‖V‖ ∩ spt X), and dependence on X|spt‖V‖ only under locally bounded first variation
   (4.2), and records the witness as a Check (4.1).
2. **Target 7's Check misattributes the obstruction.** Integral varifolds have Θ ≥ 1 a.e., so the
   density hypothesis holds for every integral sequence; what excludes a limit of density ½ is the
   first-variation bound. Witness: i segments of length 1/(2i) in [0, 1] × {0}: Θ = 1 a.e.,
   ‖δV_i‖ = 2i → ∞, limit ½ v(segment). The constant sequence ½ v(L, 1) shows the density
   hypothesis is needed for non-integral sequences (7.1 Checks).
3. **Ambient mean curvature on an embedded M (target 9).** For a general (non-rectifiable) V,
   "ι_#V has generalised mean curvature tr_S B_M" is not a function of x; the correct statement is
   H_{ι_#V}(x) = H_V(x) + ∫ tr_S B_M(x) dν^x(S) with the fibre measures ν^x (5.2), reducing to
   tr_{T_xΓ} B_M for rectifiable V, with |H| ≤ k|B_M| when V is stationary in M.
4. **"Upper semicontinuity under varifold convergence (Simon 40.6)" (target 6).** Simon 40.6 is the
   semicontinuity of a *lower* density bound (now 7.1); upper semicontinuity of Θ under convergence
   with a uniform first-variation ratio is stated separately in 6.3, with route.
5. **Riemannian monotonicity (target 6)** needs only an upper sectional-curvature bound κ, a normal
   ball and √κ ρ_0 ≤ π/2, and gives e^{(Λ + k√κ)ρ}ρ^{−k}‖V‖(B̄_ρ) non-decreasing (Scharrer2022 Lemma
   3.3, Remark 3.4), for locally bounded first variation, not only stationary V.
6. **Varifold tangents (target 8)** need Θ finite, not positive: for Θ = 0, VarTan = {0} (Check: Lebesgue
   measure with a constant line).
7. **[Σ] (target 2)** is defined for C¹ embedded Σ with locally finite area, closed in W or not
   (closedness only affects the support and the boundary measure).
8. **Acceptance statements (target 10)** are examples, not headline targets: the roadmap does not
   prove them. Simon's strict stability (a second-variation notion, RiemannianGeometry R5b) is not
   restated; Edelen–Spolaor is stated for n ≥ 8, where every C_{p,q} is area minimizing (their Remark
   1.2), so no current-minimality notion is needed. Simon 2023 defines sing via smooth regularity,
   hence reg^r is planned for every class r, with sing^∞ used there.
9. **Added targets the theory needs:** the constancy theorem (6.4; used in the proof of Allard's
   rectifiability theorem), the Riesz representation for vector fields (4.3), the rectifiability
   criterion for measures (2.1), the two-metric comparison (4.5), the convex hull property (6.5).

## The Riemannian structure theorems and a defect in a source

AgnolettoCorreaHoyosDaSilvaNardulli2025 (arXiv 2504.10758v3), line 1799–1805, proves Allard's
rectifiability on a Riemannian manifold by pushing V into a chart and asserting that "the
hypotheses of locally bounded first variation ... are preserved under pushforward". For a C²
diffeomorphism f, δ(f_#V)(Y) = ∫ J_S f · tr(Q_{x,S} DZ) dV + (bounded terms), Z = f^*Y, where Q is
the oblique projection df⁻¹P_{df S}df; its non-orthogonal part pairs P_S^⊥ ∘ DZ ∘ P_S with an
S-dependent coefficient, a term of anisotropic (curvature-varifold) type that sup|Y| does not
control in general; the same paper's introduction (line 45–52) calls the chart route anisotropic. I
found no source proving the invariance. The design therefore cites that paper only for statements
(Definition 1.2, Proposition 2.6, Proposition 2.10, Lemma 2.22, Theorem 2.30, Theorem 2.32) and gives
its own routes: the pointwise two-metric inequality 4.5 (whose sup|DX| term is shown necessary by a
Dirac-varifold Check), uniform intrinsic monotonicity 6.2, and the C²-varying-metric versions of
Simon 40.6, 42.7, 42.8–42.10 (7.1, 7.4–7.6), applied to normal-coordinate blow-ups whose metrics
converge to g_x. The same paper's proof of its Proposition 2.6 identifies the flow of X with
t ↦ exp_x(tX(x)), which is not the flow; the design cites only the statement and routes the
derivative through L_X g (4.1).

The varying-metric statements 7.1, 7.4–7.6 and the almost-Euclidean multiplicity lemma 7.5 go
beyond their sources (Simon proves them for the Euclidean metric); their routes say which steps
change. 7.5's hypotheses are quoted from Simon 42.9, whose displayed formulas are damaged in the OCR
text (Simon1983 line 7991–8011); the implementer reads them there.

## Notions moved down / owned here

None moved down from a later roadmap. Owned here because no earlier roadmap states them at this
generality: the Riesz representation for compactly supported continuous vector fields on a
Riemannian manifold (GeometricMeasureTheory G3 states the Euclidean BV case, GeometricCurrents G1 the
form/current case); Simon's rectifiability criterion 11.8 on manifolds; the two-metric first-variation
comparison. Weak-* compactness of Radon measures on the bundle is cited from GeometricCurrents G6
("establish the Radon compactness/local tightness comparisons"), with its precise reading in the
supplier contracts and a route (Simon 4.4, Tau Ceti Prokhorov) should the reading be narrow.

## Proposed Part IIs

- **Varifolds, Part II**: Allard's regularity theorem, Euclidean (Allard1972 Section 8) and intrinsic
  Riemannian (AgnolettoCorreaHoyosDaSilvaNardulli2025 Section 3), starting from Layers 1–8.

## Gaps

None. Every prerequisite is a pinned declaration (checked at Mathlib 1b1ccf4b and Tau Ceti 2fd255d9,
file and namespace opened), a section of a roadmap on main (GeometricMeasureTheory G2;
GeometricCurrents G1, G2, G5, G6; RiemannianGeometry R4 item 1, R5a, R5a.2; DifferentialGeometry 12.3,
12.5; HopfRinow Layers 0–2), or an earlier target.

## Ownership and overlaps

- `roadmaps grep` for varifold, Grassmann bundle, monotonicity formula, first variation of a
  varifold/measure, stationary varifold, Allard, vague topology, Besicovitch (main and 464 open heads,
  index of 2026-11-07): the only varifold material is GeometricCurrents G6's auxiliary varifold,
  handled by 9.3. PointProcesses (an open new roadmap, not in the merge order) owns a vague topology on
  locally finite measures; it is not cited. No board package plans varifolds (the
  GaussianIsoperimetryAndClusters target only mentions this one).
- `roadmaps overlaps Varifolds`: the roadmap is not yet on main or in a pull request. Suppliers'
  overlaps: GeometricCurrents none; GeometricMeasureTheory changed only by a toolchain bump;
  RiemannianGeometry is restructured by two open revisions, whose heads keep the labels cited here
  (R4 item 1, R5a, R5a.2); R1 is not cited.
- Open pull requests were checked through the tool's index only.

## Sources

Read (certified): Simon1983 (§4, §9, §11, §§15–19, §§38–42), Scharrer2022 (arXiv 2105.13211v2: §1.1,
Lemmas 2.5, 2.7, 3.3, 3.5, Remark 3.4, Theorem 3.6), AgnolettoCorreaHoyosDaSilvaNardulli2025 (arXiv
2504.10758v3: §1–§2.4), Simon2023 (Theorems 1.1, 3.7, the definition of sing), EdelenSpolaor2023
(Definition 1.1.1, Remarks 1.2–1.3, Theorem 1.4). Not read (settled `uncertified`, cited by locator):
Allard1972, Federer1969, Maggi2012. B. White's lectures (arXiv 1308.3325) were consulted for a
Riemannian monotonicity statement and found to use isometric embeddings; not cited.

No fetched text contained instructions.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.1 G(E,k), metric | lines ℓ_θ of ℝ²; k = 0, N; [[1,t],[0,0]]; diag(1,1,0) | P_θ − P_0 = sin θ·R, R² = I, ‖·‖ = \|sin θ\| (Frobenius √2\|sin θ\|); {0}, {1}; not self-adjoint, ‖·‖ unbounded in t; trace 2 | sound | operator norm pinned |
| 1.2 bundle, metric dependence | ℝ², S², k = 0, N; h = diag(1,4), u = (1,1) | fibre circle; π proper; P^h e_1 = u/5, P^e e_1 = u/2; h = 4g identical | sound | canonical homeomorphism added |
| 1.3 varifold, weight | horizontal/vertical lifts of H¹⌞axis | equal weights; test χ tr(P diag(1,0)): ∫χ vs 0; mass on unit disc 2 | sound | none |
| 1.4 convergence, compactness | δ_{(1/j,P)}, δ_{(je_1,P)}, alternating lifts, jδ | limits δ_{(0,P)}, 0 (mass 1 → 0), none, none | sound | none |
| 2.1 criterion, chart comparison | H¹⌞L, 2H¹⌞L, Lebesgue (k=1), δ_0 (k=1), φ = 2id | multiplicities 1, 2; πλ → 0; λ⁻¹ → ∞; φ_*H¹⌞L = ½H¹⌞L, multiplicity 1/J = ½ | sound | chart law stated |
| 2.2 v(Γ,θ) | v(L,½), countable Γ, k = 0, crossing lines | rectifiable non-integral; 0 for k ≥ 1; Σθδ for k = 0; crossing point H¹-null | sound | k = 0 case recorded |
| 2.3 [Σ] | unit circle, open half-line, figure eight | mass 2π; spt = [0,∞)×{0}; not embedded | sound | closedness dropped (generalised) |
| 3.1 push-forward | 2·id, projection, t², non-proper collapse | mass 2; f_#V = 0; ∫φ(t²)\|2t\| = 2∫_0^1 φ; infinite mass | sound | Γ⁺ in area formula |
| 3.2 blow-ups | segment, line through x, great circle on S² | mass λ⁻¹; fixed; ‖V_{x,λ}‖(B_ρ) = 2ρ exactly for λρ < π | sound | none |
| 3.3 tangent spaces, 38.3 | crossing lines, Lebesgue lift, vertical lift, v(L,1) | V_{0,λ} = V not θv(T); πλ → 0; weight tangent but varifold limit vertical; ν^x = δ_{P_L} | sound | Vitali-family route on M stated (density in (0,∞)) |
| 4.1 δV, derivative | circle with X = ψy; normal translation; k = N; vertical lift | δ = 2π = d/dt(2πe^t); 0; ∫div X = 0; δV(X) = ∫ψ ≠ 0 with X = 0 on spt | target's locality claim false | corrected (Correction 1) |
| 4.2 locally bounded | line, circle, vertical lift with X_n = n⁻¹ψ sin(ny_2)e_2, Lebesgue+constant P | stationary; ‖δ‖ = H¹⌞C; sup\|X_n\| ≤ 1/n, δV(X_n) = ∫ψ; ∫tr(P DX) = 0 | sound | none |
| 4.3 Riesz for fields | ⟨X(0),v⟩; cancelling pair; ∫(X¹+X²) | \|v\|δ_0, η = v/\|v\|; 0; √2·Lebesgue (not 2) | sound | none |
| 4.4 decomposition, sign | half hyperplane; θ = 1 + y_1²; S^k; dilated circle | δ = −∫X¹ dH^{N−2}: η = −e_1, H = 0; H = (θ'/θ)e_1 tangential; H = −kx; \|H\| = λ/R | sound | co-normal sign pinned |
| 4.5 two metrics | h = c²g; Dirac δ_{(0,P)} with X = ψAy; great circle blow-ups | \|c^k − 1\|\|δV(X)\| ≤ k\|c^k−1\|sup\|DX\|‖V‖; difference \|tr((JP^h − P^g)A)\| ~ \|h−g\|\|A\| with sup\|X\| small; blow-ups are lines, δ = 0 | sound; sup\|DX\| term necessary | added as owned target |
| 5.1 smooth case | S^k with X = ψx; great sphere in S^N; half hyperplane; k = N; hypersurface S^{N−1} | both sides kH^k(S^k); totally geodesic ⇒ 0; minimal, σ ≠ 0; B = 0; S_ν = −id, H = −(N−1)x | sound; closedness necessary | none |
| 5.2 embedded comparison | great k-sphere in S^N ⊆ ℝ^{N+1}; affine M; V = 0 | tr B = −kx, H = −kx; B = 0; 0 = 0 | target's H formula wrong for non-rectifiable V | corrected (Correction 3) |
| 6.1 identity | line y_2 = a; unit circle at 0; plane through x | 2√(ρ²−a²)/ρ both sides; 2π/ρ = 2π − 2π(1 − 1/ρ), plus sign gives 4π − 2π/ρ ≠; ratio = multiplicity | sound; sign of δ term pinned | none |
| 6.2 Riemannian | κ = 0; great circle on S² (κ = 1); √κr = π | 6.1 without \|P^⊥\|²; ratio 2 constant, c(π/2) = 2/π ≤ 1; cot π → −∞ | sound | upper curvature bound only |
| 6.3 densities | circle; crossing lines; triple junction; step θ = 1/2 on halves (1 and 2); v(L,½) | Θ = 1/0; Θ(0) = 2 vs 1 nearby; ‖V‖(B_ρ) = 3ρ, Θ = 3/2; δV(X) = −X¹(0), Θ(0) = 3/2 < 2 = lim; Θ = ½ | sound; σ_V = 0 needed for usc | Correction 4 |
| 6.4 constancy | v(L,3); parallel lines (1,2); k = N; half-line | θ_0 = 3; stationary non-constant ⇒ connectedness needed; vol multiple; σ = δ_0 | sound | added (needed by 7.3) |
| 6.5 convex hull | segment; circle with K = disc and K = {0}; δ_{(0,P)} | spt in hull; H = −y ≠ 0 so hypothesis fails for {0}; {0} | sound | none |
| 7.1 lower density semicontinuity | half-density segments; ½v(L,1); g_i = (1+1/i)²e | ‖δV_i‖ = 2i → ∞, limit density ½; density ½ preserved; Θ = 1 | target Check misattributed | Correction 2 |
| 7.2 varifold tangents | two planes; triple junction; Lebesgue + constant line; great circle | Θ = 2, 3/2; Θ = 0 ⇒ {0}; diameter blow-ups | sound | Θ = 0 allowed (Correction 6) |
| 7.3 Allard rectifiability | Lebesgue + constant line; triple junction; vertical lift | stationary, Θ = 0, not rectifiable; θ = 1; not loc. bounded | sound; positive density necessary | route avoids chart transport |
| 7.4 rectifiable compactness | zigzags slope ±1; circles of radius 1/i; lines y_2 = 1/i | ‖δV_i‖ = √2·#corners → ∞, limit planes ±45°, weight √2H¹; ‖δ‖ = 2π, limit 0; limit x-axis | sound; δ-bound necessary | none |
| 7.5 multiplicity lemma | m·plane; two sheets at ±ε/2; tilted plane | m ≤ (1+δ)m + δ; fibre sum 2 vs ratio 2; tilt ~ α fails hypotheses | sound (hypotheses as in Simon 42.9) | almost-Euclidean form owned |
| 7.6 integral compactness | v(L,1)+v(L_i,1); ½v(L,1); half-density segments | limit v(L,2); not integral; unbounded δ | sound | varying metrics |
| 8.1 rectifiable cones | planes, junction; ½v(L,1); step multiplicity | cones; hypothesis fails yet cone; ρ^0·1 = 1 ↛ 0 | sound (sufficient only) | none |
| 8.2 integral cones | smooth minimal surface; two planes; C_{p,q} | plane mult. 1; density 2; self-tangent | sound | none |
| 9.1 reg/sing | crossing lines; graph of \|t\|^{3/2}; V = 0; ½v(L); C_{p,q} | {0}; 0 ∈ reg¹∖reg² (f' = (3/2)\|t\|^{1/2}sgn t, f'' unbounded); ∅; reg = L; {0} | sound | classes r recorded |
| 9.2 invariance | rotated crossing lines; arc restriction; dilated circle | Θ(0) = 2; same H, σ = 0 inside; \|H\| = λ/R, Θ = 1 | sound | none |
| 9.3 G6 comparison | oriented plane mult. 2, reversal; [[P]] + (−[[P]]); closed curve | v(P,2) both; 0 vs v(P,2); H = curvature | sound | none |
| 9.4 acceptance | K = ∅; V_i = C_{p,q}; n = 7 | sing = ∅; y_i = 0; C_{1,5} (p + q = 6) is not among the minimizing cones listed in Remark 1.2, so n ≥ 8 | sound as examples | stability dropped, n ≥ 8 (Correction 8) |
| Conventions (trace H vs averaged) | unit sphere S^k | R5a: B = −g·x, averaged H = −x; H_{[S^k]} = tr B = −kx; δ(ψx) = kH^k(S^k) = −∫⟨−kx, x⟩ | sound | factor k recorded |

Context checks: every statement needing k ≥ 1 sits in Layers 6–9 (standing hypothesis stated at
Layer 6); Riemannian statements carry their normal-ball and curvature hypotheses; varying-metric
statements carry C² convergence (needed for uniform curvature and normal-radius control).
Generality: README statements and plan statements agree; Euclidean special cases are Checks.

## Dependency check

```
candidate: Varifolds is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2352 edges, 0 problem(s)
```

No UPWARD or CYCLE line. All suppliers are on main (GeometricMeasureTheory, GeometricCurrents,
RiemannianGeometry, DifferentialGeometry) or completed (HopfRinow). `roadmaps resolve` on the
README: no cross-roadmap citation and no Lean name found nowhere; library names were checked by hand
at the pins (the tool reported that it had no pinned packages).
