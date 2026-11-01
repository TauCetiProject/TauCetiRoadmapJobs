# Review of RicciFlow (pull request #1023 at fff2322)

**Verdict:** accepted

Incremental re-review of the 134 lines changed since 9622607 (98 insertions, 36 deletions, both
files of the folder, nothing outside it). Gate at fff2322: every check passes (the worker's run and
an independent run of the text scanners by this review). `lake env lean` on
`TauCetiRoadmap/RicciFlow/Suggested.lean`: twelve `declaration uses sorry` warnings, nothing else
(5.2 s). Dependency check run by this review: `depcheck: 204 roadmaps, 1421 edges, 0 problem(s)`
(no UPWARD or CYCLE line; RicciFlow is line 196 of the merge order).
`git diff --stat origin/main...HEAD` outside the folder: empty. Every finding of the previous
review is repaired (accounting below); the one note of this report is a P3 the author may take or
leave.

## R01 (P3) — The Scope paragraph on bivectors no longer matches 7.1

Location: `README.md` Scope, RiemannianGeometry bullet: "The curvature operator on bivectors is
RiemannianGeometry R1's object on SmoothBundlesConnections B2's exterior square; this roadmap
compares its four-tensor carrier with it and never builds a second one."

Claim: 7.1 now states the Böhm–Wilking hypothesis through a symmetric bilinear form `B` on
Mathlib's pointwise exterior square `⋀[ℝ]^2 (T_xM)` with its Gram inner product, characterized by
`B(u∧v, z∧w) = r(u,v,z,w)`, and says explicitly that this "uses the pointwise exterior square with
its pinned inner product, not the bivector bundle of RiemannianGeometry R1, with which 5.1
identifies it". The Scope paragraph still names only the four-tensor carrier, so a reader of the
Scope does not learn that a pointwise bivector form appears in a headline hypothesis.

Witness: `Suggested.lean` lines 279–287 (`IsTwoPositiveCurvatureOperator` quantifies over
`B : ⋀[ℝ]^2 (TangentSpace I x) →ₗ[ℝ] ⋀[ℝ]^2 (TangentSpace I x) →ₗ[ℝ] ℝ`); `README.md` 7.1,
sentence beginning "State the hypothesis pointwise".

Repair: add one clause to the Scope sentence, for example "…never builds a second one; the
pointwise bilinear form on Mathlib's `⋀[ℝ]^2 (T_xM)` that 7.1 uses to state 2-positivity is
characterized by the four-tensor and is identified with R1's operator in 5.1."

## Previous findings

- R01 — repaired: `Suggested.lean` lines 270–298 define `IsTwoPositiveCurvatureOperator` with a
  real body and state `boehmWilking_twoPositive` (closed connected, `3 ≤ finrank`, 2-positive at
  every point, constant positive curvature metric); docstring lines 25, 35–40 name both; README 7.1
  names them in prose and API bullets with four new Checks and a `*Needs:*` entry.
- R02 — repaired: 1.2 cites "Propositions 2.3.1 and 2.3.12, pp. 28 and 32" for the connection and
  volume variations and "Proposition 2.3.9, p. 31" for the scalar variation; 1.4 cites "(1.2.4),
  p. 9". All four verified at TOP06 (below).
- R03 — repaired: 8.1 cites "§4.2, p. 33" for `L_g f = R − r`, "Lemma 4.2.2, p. 34" for the time
  normalization, "Theorem 4.4.2, p. 40" for the Harnack inequality and "Theorem 4.4.3, p. 41" for
  the entropy. All verified at SANT12 (below).
- R04 — repaired: 6.2 cites Theorem 5.10 for the `n ≥ 3` strict-quarter estimate (both mentions)
  and Theorem 5.9 for the even-dimensional argument; the References split the two theorems the same
  way. Consistent; the book itself is not readable here (Not verifiable).
- R05 — repaired: the supplier table and 5.3 name `ClosedSubmodule.map` as the closure of the
  image under a continuous `ℝ≥0`-linear map, applied to the `ℝ≥0`-restriction of scalars, with
  the clause that the underlying set is the image by finite-dimensional invertibility; `*Needs:*`
  lists `ClosedSubmodule.map` and `ContinuousLinearMap.restrictScalars`. Both exist at the pin.
- R06 — repaired: Poincare3D is plain text in Scope and in Downstream consumers.
- R07 — repaired: the 3.2 Check now says the `k ≥ 1` bounds have left side `0` on the sphere and
  the content of the Shi bounds is the `k ≥ 1` decay on non-round flows; the 5.3 Check computes
  `½[…] = tr A = 0` in 5.1's wedge normalization and notes the Kulkarni–Nomizu value `2 tr A`.

## Verified sound

**Gate, build, direction, probe.** Gate at fff2322 all checks pass (worker; text scanners re-run
by this review with the same result). `lake env lean` on `Suggested.lean`: twelve `sorry`
warnings only (lines 115, 122, 202, 213, 236, 249, 293, 303, 314, 327, 340, 352). `depcheck: 204
roadmaps, 1421 edges, 0 problem(s)`. No change outside the folder. One-tactic probe on a scratch
copy, `sorry` of `boehmWilking_twoPositive` replaced by `first | rfl | simp | infer_instance |
(intros; simp_all) | exact?`: not closed (`exact?` could not close the goal); the eleven other
sorried theorems are unchanged since the previous probe. No padding. `metadata.toml` is the only
other file in the folder.

**Signatures.** `#check @IsTwoPositiveCurvatureOperator` and `#check @boehmWilking_twoPositive`
elaborated on the scratch copy. The definition's type keeps `[FiniteDimensional ℝ E]` (needed for
the inner product on `⋀[ℝ]^2`) and drops `[I.Boundaryless]`, which its type does not mention; the
theorem keeps `[I.Boundaryless]`, `[CompactSpace M]`, `[ConnectedSpace M]`, `3 ≤ Module.finrank ℝ E`,
`∀ x, IsTwoPositiveCurvatureOperator g x`, and concludes `∃ g' κ, 0 < κ ∧
IsConstantCurvatureTensor g' κ`, exactly the README's 7.1 bullet. The other 25 declarations are
unchanged since the previous report, whose binder comparison stands.

**Pinned declarations opened** (Mathlib `6b7abb3c`, Tau Ceti `a91d3aa`, the worktree's
`lake-manifest.json`). Mathlib `Analysis/InnerProductSpace/ExteriorPower.lean`: line 121
`NormedAddCommGroup (⋀[ℝ]^n E)` and line 124 `InnerProductSpace ℝ (⋀[ℝ]^n E)`, both under
`[FiniteDimensional ℝ E]`; line 127 `exteriorPower.inner_ιMulti_ιMulti`,
`⟪ιMulti x, ιMulti y⟫ = det (of fun i j ↦ ⟪x j, y i⟫)`, the name the supplier table now cites.
`Topology/Algebra/Module/ClosedSubmodule.lean` lines 221–222: `ClosedSubmodule.map (f : M →L[R] N)`
is the closure of `s.toSubmodule.map f`, so for `ProperCone = ClosedSubmodule ℝ≥0 E` the map must be
`ℝ≥0`-linear, as 5.3 now says; `ContinuousLinearMap.restrictScalars` is in
`Topology/Algebra/Module/ContinuousLinearMap/RestrictScalars.lean`. Tau Ceti
`Curvature/Tensor.lean` line 148 `curvatureTensor x u v w` (the value of
`curvatureOperator X Y σ` at `x` on smooth extensions), line 187 `curvatureTensor_antisymm`
(`R(u,v) = −R(v,u)` for every connection); `Curvature/Basic.lean` line 85 `curvatureOperator X Y σ
= ∇_X∇_Y σ − ∇_Y∇_X σ − ∇_[X,Y] σ`, the README's Conventions; `Curvature/Metric.lean` line 111
`IsMetricCompatible.inner_curvatureTensor_eq_neg` (last-pair skew-adjointness, under
`[ContMDiffCovariantDerivative cov ∞]` and `[IsContMDiffRiemannianBundle I 2 F V]`, which the
Levi-Civita connection of a `SmoothMetric` has), lines 141–150 and 172–176
`IsConstantCurvatureTensor`: `R(w,u)v = κ(⟪u,v⟫w − ⟪w,v⟫u)` at every point. These two lemmas are
exactly the inputs the docstring names for the existence of `B` (alternating in each pair), so the
universally quantified predicate is not vacuous in any dimension `≥ 3`.

**Sources read at the changed locators** (cache ids as in the previous report; TOP06 printed page =
PDF page − 1, SANT12 and BW08 printed = marker).
- TOP06 line 778 Proposition 2.3.1 (connection variation) with the printed footer `28` at
  line 780; line 873 Proposition 2.3.9 (`∂R/∂t = −⟨Ric,h⟩ + δ²h − Δ(tr h)`), PDF page 32 = printed
  31; line 897 Proposition 2.3.12 (`∂(dV)/∂t = ½(tr h) dV`), PDF 33 = printed 32; line 260
  equation (1.2.4) `−2Ric(g₀) = L_Y g₀ − 2λg₀`, printed `9` at line 282. 1.2 and 1.4 match.
- SANT12 line 866 §4.2 opens on page 32, line 890 `Δf = R − r` on page 33 (printed `33` at
  line 870); line 914 Lemma 4.2.2 (the time constant giving `∂f/∂t = Δf + rf`), page 34; line
  1165 Theorem 4.4.2 (Harnack), page 40; line 1216 Theorem 4.4.3 (`∫ R log R` decreasing), page
  41. 8.1 matches.
- BW08 line 22 Theorem 1 (compact manifold, 2-positive curvature operator, normalized flow
  converges to constant sectional curvature), page 1; line 531 Theorem 5.1 (`n ≥ 3`, curvature
  operator in the interior of `C(0)`), page 12. The Lean theorem's hypotheses (closed, connected,
  `n ≥ 3`, 2-positive at every point) and conclusion (a metric of constant positive curvature) are
  the theorem's metric form; connectedness is needed for a single `κ`.

**Cross-roadmap citations and ownership.** RiemannianGeometry on main line 173 still records that
RicciFlow owns the differentiable sphere theorem and Hamilton's theorem; its README line 35 and
line 222 own the curvature operator on the bivector bundle `Λ²TM` (SmoothBundlesConnections B2's
exterior square), and its `Suggested.lean` declares no exterior-power or 2-positivity predicate.
`roadmaps grep` over main and the 437 open pull requests for `2-positive`, `twoPositive`,
`2-nonnegative` and `Wilking`: outside this pull request the hits are completely-positive maps in
CStarAlgebras and FactorRigidity and `slTwoPositiveBase` in LieHighestWeight, none about curvature
operators; no roadmap states Böhm–Wilking. Poincare3D (#1740) consumes RicciFlow R1–R5 and uses
"nonnegative curvature operator" only as a property of three-dimensional blow-up limits; it is a
consumer, not a second owner. The `*Needs:*` lines the diff touched (5.3, 7.1) name earlier
subsections and Mathlib declarations only.

**Adversarial table.** Rows for the changed statements carry computed values; rows for the
untouched statements are carried from the previous report (PRREVIEW-RicciFlow~3) as noted.

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| `IsTwoPositiveCurvatureOperator g x`: existence and uniqueness of `B` | any `n`; the wrong model "some `B` exists" | `r(u,v,z,w) = ⟪R(u,v)w, z⟫` is alternating in `(u,v)` by `curvatureTensor_antisymm` and in `(z,w)` by `inner_curvatureTensor_eq_neg`, so `B` exists via the universal property of `⋀²` in each slot; decomposables span `⋀²`, so two such `B` agree; the predicate is "the unique `B` is 2-positive", not vacuous | sound | none |
| `IsTwoPositiveCurvatureOperator` sign and normalization | unit `Sⁿ`, Tau Ceti convention `R(w,u)v = κ(⟪u,v⟫w − ⟪w,v⟫u)` with `κ = 1` | `⟪R(u,v)w, z⟫ = ⟪v,w⟫⟪u,z⟫ − ⟪u,w⟫⟪v,z⟫`; Mathlib `inner_ιMulti_ιMulti` with `x = ![u,v]`, `y = ![z,w]`: `det [[⟪u,z⟫, ⟪v,z⟫],[⟪u,w⟫, ⟪v,w⟫]] = ⟪u,z⟫⟪v,w⟫ − ⟪v,z⟫⟪u,w⟫`, equal; so `B = ⟪·,·⟫` on `⋀²`, orthonormal pair gives `1 + 1 = 2 > 0`; the opposite sign gives `−2` | the README's 7.1 Check is exact | none |
| `IsTwoPositiveCurvatureOperator` versus the two smallest eigenvalues | `n = 3`, `Rop = diag(λ₁ ≤ λ₂ ≤ λ₃)` on `e₂∧e₃, e₃∧e₁, e₁∧e₂` | Ky Fan: `min` over orthonormal pairs of `B(ω₁,ω₁) + B(ω₂,ω₂)` is `λ₁ + λ₂`; `Ric(e₁,e₁) = K₁₂ + K₁₃ = λ₃ + λ₂`, so Ricci eigenvalues are the pair sums and the smallest is `λ₁ + λ₂`; `S² × S¹`: eigenvalues `1, 0, 0`, sum `0 + 0 = 0`, predicate fails and `Ric(∂_θ,∂_θ) = 0`; `RP³`: `1 + 1 = 2` | predicate is positive Ricci in `n = 3`, as 7.1 and `hamilton_positiveRicci_dim3` require | none |
| `IsTwoPositiveCurvatureOperator` degenerate dimensions | `n = 0, 1, 2`; `S² × S²` | `dim ⋀² = 0, 0, 1`: no orthonormal pair, predicate vacuously true for every metric, excluded from the theorem by `3 ≤ finrank`; `S² × S²`: eigenvalues `1, 1, 0, 0, 0, 0`, pair `e₁∧e₃, e₂∧e₄` gives `0 + 0`, fails, as the Check says | hypotheses exact | none |
| `boehmWilking_twoPositive` | unit `S³` and `S⁴`; `RP³`; `S² × S²`; `M = ∅`; disconnected `S³ ⊔ S³` with radii `1, 2` | spheres: `B = ⟪·,·⟫`, hypothesis holds, conclusion with `g' = g`, `κ = 1`; `RP³`: same, conclusion a space form (no diffeomorphism claimed); `S² × S²`: hypothesis fails at every point (`0 + 0`) and the manifold is not a space form (`b₂ = 2`), so no overclaim; `∅` and the disjoint union excluded by `[ConnectedSpace M]` (the union would need two different `κ`) | hypotheses exact; BW08 Theorem 1 line 22, Theorem 5.1 line 531 | none |
| 3.2 Check (Shi bounds on the sphere) | unit `Sⁿ`, `k = 0, 1` | `∇Rm = 0` so `|∇^k Rm| = 0 ≤ C K t^(−k/2)` for `k ≥ 1`; `k = 0`: `|Rm| = √(2n(n−1)) κ ≤ C K` is the standing hypothesis | Check now discriminating | none |
| 5.3 Check (PIC not salient) | `A = diag(1,−1,0,0)`, wedge normalization `(A ∧ Id)(u∧v) = ½(Au∧v + u∧Av)` | `K(e_i,e_j) = ½(A_ii + A_jj)`; isotropic sum on `(e₁,e₂,e₃,e₄)` with `λ = μ = 1`: `½[(1+0)+(1+0)+(−1+0)+(−1+0)] = 0 = tr A`; `R₁₂₃₄ = ⟨(A∧Id)(e₁∧e₂), e₃∧e₄⟩ = 0` since `A` is diagonal; Kulkarni–Nomizu `A ⊙ g`: `K = A_ii + A_jj`, sum `2 tr A = 0` | both normalizations give `0`; Check correct | none |
| 1.2 locators | Topping Propositions 2.3.1, 2.3.9, 2.3.12 | TOP06 lines 778 (p. 28), 873 (p. 31), 897 (p. 32): connection, scalar, volume variations respectively | match the README's assignment | none |
| 8.1 locators | Santoro §4.2, Lemma 4.2.2, Theorems 4.4.2, 4.4.3 | SANT12 lines 890 (p. 33, `Δf = R − r`), 914 (p. 34), 1165 (p. 40, Harnack), 1216 (p. 41, entropy) | match | none |
| `hamilton_positiveRicci_dim3` | unit `S³`; `RP³`; `S² × S¹`; `∅` | as PRREVIEW-RicciFlow~3 | hypotheses exact | none |
| `IsConstantCurvatureTensor g' κ` as constant sectional curvature | `κ = 1`, `n = 2, 3` | as PRREVIEW-RicciFlow~3 | sound | none |
| `brendleSchoen_pointwise_quarterPinched`, `brendleSchoen_diffeomorph_sphere` | `S⁴`, `CP²`, two-point example, `RP⁴` | as PRREVIEW-RicciFlow~3 | hypotheses exact | none |
| `positiveScalar_surface`, `global_quarterPinched_diffeomorph_sphere` | `S²`, `RP²`, Klein bottle, torus; `n = 0, 1, 2, 3`, `CP²` | as PRREVIEW-RicciFlow~3 | hypotheses exact | none |
| `metricSectional` junk value, `IsRicciFlowOn` sign | `v = 2u`; unit `Sⁿ` | as PRREVIEW-RicciFlow~3 | no vacuity; sign agrees with TOP06 line 227 | none |
| `reactionTensor`, `reactionTensor_apply_orthonormalBasis`, `reactionTensor_mem` | `κI`, rank-one, `dim V = 0` | as PRREVIEW-RicciFlow~3 (`Q(κI) = 2(n−1)κ² I`, `Q = 2r` on the rank-one ray) | sound | none |
| `IsAlgebraicCurvature`, `pic2Expression`, PIC2 Checks, `strict_quarterPinching_isPIC2` | constant `κ`; wrong model `⟨u,z⟩⟨v,w⟩`; `CP²`; `S² × S²` | as PRREVIEW-RicciFlow~3 | sound | none |
| 5.4 (`D_b`, `E_u`, Proposition 3.2 range, `A_{b_*} ∩ D_0`), rank-one ray | `b = ½`, `n = 4`, `S² × ℝ^(n−2)` | as PRREVIEW-RicciFlow~3 | agree with BW08 lines 299, 363, 429 | none |
| 1.1–1.4, 2.1, 3.3, 4.1, 6.4, 8.1–8.3 Checks | as listed in PRREVIEW-RicciFlow~3 | as PRREVIEW-RicciFlow~3 | hold | none |
| `exists_shortTime_ricciFlow`, `ricciFlow_unique` | `∅`; `n = 0, 1`; noncompact | as PRREVIEW-RicciFlow~3 | hypotheses present | none |

**Seeded sample.** Of the sampled targets, 1.2, 1.4 and 3.2 fall in the diff and are verified
above; 7.1 (not in the sample) is the main change and is verified above. 1.1, 2.1, 2.3, 3.1, 4.1,
5.1, 5.4, 6.1, 6.3, 7.2, 8.2 and 8.3 are untouched by the diff and are neither cited by nor
dependent on the changed passages except 5.1, whose wedge normalization and `Rop` convention the
new 5.3 Check and 7.1 text use and which this report recomputed (rows 2 and 7 above); their
verification in PRREVIEW-RicciFlow~3 stands.

## Not verifiable

- Cheeger–Ebin, *Comparison Theorems in Riemannian Geometry*, Lemmas 4.11, 5.6, Theorems 5.9
  and 5.10 (6.2 and References): in-copyright book, cited uncertified; not read. The README's
  assignment (5.9 even-dimensional, 5.10 strict quarter pinching in every dimension) is now
  internally consistent and agrees with the standard numbering; BW08 line 27 and BS09 line 22 state
  the `n ≥ 3` estimate without a theorem number.
- Petersen, *Riemannian Geometry*, 3rd ed., §6.2: same.
- Ownership against open pull requests was checked through `roadmaps grep` over the index of 437
  pull requests and `roadmaps show` of Poincare3D (#1740), not by reading every head.

## Source issues

- none
