# Review of RicciFlow (pull request #1023 at 9622607)

**Verdict:** needs changes

Gate at 9622607: every check passes (data from the worker). Dependency check run by this review:
`depcheck: 204 roadmaps, 1422 edges, 0 problem(s)` (no UPWARD or CYCLE line; RicciFlow is line
196 of the merge order, after every supplier it names). `lake env lean` on
`TauCetiRoadmap/RicciFlow/Suggested.lean`: eleven `declaration uses sorry` warnings, nothing else
(5.1 s). One-tactic probe (`rfl`, `simp`, `infer_instance`, `intros; simp_all`) on a scratch copy:
none of the eleven sorried theorems closes, so there is no padding. The one blocking finding is
R01; the rest are the author's to take or leave.

## Repairs of the previous review (at d658efa)

- r2 R01 (headlines absent): **partly repaired.** `Suggested.lean` lines 274–331 now state
  Hamilton, Brendle–Schoen (metric and diffeomorphism forms), the surface theorem and the global
  quarter-pinched theorem. Böhm–Wilking is declared not statable on a premise that is false at
  the pin: see R01 below.
- r2 R02 (`reactionTensor` chosen from a sorried existence theorem): **repaired.** Lines 178–200
  define `coordFourTensor`, `reactionComponent` and `reactionTensor` with real bodies; the targets
  are `reactionTensor_apply_orthonormalBasis` and `reactionTensor_mem`, and
  `reaction_mem_positive_tangentCone_pic2` is stated on `⟨reactionTensor r.1, reactionTensor_mem …⟩`.
- r2 R03 (revision hashes and two absent names): **repaired.** No `b9ec`, `a91d`,
  `exists_memLp…` or `…galerkinSolution` in the README; 2.2 cites PDE Lane F items 24–25 by
  section and states what it adds ("the weak solution's `L²(0,T;H⁻¹)` time derivative … and its
  `C⁰([0,T];L²)` representative with exact pivot trace").
- r2 R04 (not in house shape): **repaired.** `# Roadmap:` title, `**Summary.**`, Scope,
  Conventions, supplier table, build order, Layers 1–8 with `### k.n` prose, `**Checks.**`
  lists (three or more per definition), `*Needs:*` per target, `### Examples`/`### Dependencies`
  per layer, Downstream consumers, References. Locators are at the claims.
- r2 R05 (process instructions and foreign names): **repaired.** The external development is
  one sentence under References ("its interfaces informed the shape of Layers 2–3, and nothing
  here imports it"); the four names are gone.
- r2 R06 (unauthorized copies, Math240 scan): **repaired.** Cheeger–Ebin and Petersen are cited
  by edition and locator, "uncertified"; no `Math240`/`0226` in the README; 8.4 cites
  Brendle–Schoen 2009 Theorem 1.1, Topping Theorem 10.1.1 and Böhm–Wilking Theorem 1 instead.
- r2 R07 (namespace, section comments): **repaired.** `namespace TauCetiRoadmap.RicciFlow`
  (line 61), `/-! ## Layer k: … -/` comments at lines 63, 131, 137, 262, 309.
- r2 R08 (`curvatureFourTensor` backticked but undeclared): **repaired.** The name no longer
  appears; 5.1 describes the map in prose.
- r2 R09 (HopfRinow link): **repaired.** Line 67 links `../../Completed/HopfRinow/README.md`.

## R01 (P2) — Böhm–Wilking is statable at the pins and absent; the docstring's reason is false at the pin

Location: `TauCetiRoadmap/RicciFlow/Suggested.lean` lines 37–43: "the curvature operator is a
self-adjoint operator on the bivector space `Λ²T_xM` with its Gram inner product … and no
bivector carrier exists at the pins. Its special case, positive curvature operator, lacks the
same carrier." `README.md` line 6 lists Böhm–Wilking among the end theorems; 7.1 is its layer.

Claim: the bivector carrier with its Gram inner product exists at the pinned Mathlib:
`Mathlib/Analysis/InnerProductSpace/ExteriorPower.lean` line 121 gives
`NormedAddCommGroup (⋀[ℝ]^n E)` and line 124 `InnerProductSpace ℝ (⋀[ℝ]^n E)` for a
finite-dimensional real inner product space `E`, with `⟪v₁∧v₂, w₁∧w₂⟫ = det(⟪v_j, w_i⟫)`;
`exteriorPower.ιMulti` (`Mathlib/LinearAlgebra/ExteriorPower/Basic.lean` line 56) gives the
decomposable bivectors. Since decomposables span `⋀²`, the symmetric bilinear form `B` with
`B(u∧v, z∧w) = g_x(R(u,v)w, z)` is unique, and 2-positivity is "`B(ω₁,ω₁) + B(ω₂,ω₂) > 0` for every
orthonormal pair of bivectors". So Böhm–Wilking's theorem (closed connected `n ≥ 3`, 2-positive
curvature operator, carries a metric of constant positive sectional curvature) is statable with
one simple definition on native carriers, exactly as the other sphere theorems are stated.

Witness: a scratch file in the form below elaborated against the pins with only the `sorry`
warning (`#check` of both declarations printed the expected types, with `[CompactSpace M]`
`[ConnectedSpace M]` `[I.Boundaryless]` kept):

```lean
/-- The curvature operator of `g` at `x` is 2-positive: the symmetric bilinear form `B` on
`⋀²T_xM` (Gram inner product of `g_x`) with `B(u∧v, z∧w) = g_x(R(u,v)w, z)` has positive trace
on every orthonormal pair of bivectors. -/
def IsTwoPositiveCurvatureOperator (g : SmoothMetric I M) (x : M) : Prop :=
  letI : RiemannianBundle (TangentSpace I : M → Type _) := ⟨g.toRiemannianMetric⟩
  letI : FiniteDimensional ℝ (TangentSpace I x) := ‹FiniteDimensional ℝ E›
  ∀ B : ⋀[ℝ]^2 (TangentSpace I x) →ₗ[ℝ] ⋀[ℝ]^2 (TangentSpace I x) →ₗ[ℝ] ℝ,
    (∀ u v z w : TangentSpace I x,
      B (exteriorPower.ιMulti ℝ 2 ![u, v]) (exteriorPower.ιMulti ℝ 2 ![z, w]) =
        inner ℝ ((CovariantDerivative.leviCivitaConnection I M).curvatureTensor x u v w) z) →
    ∀ ω₁ ω₂ : ⋀[ℝ]^2 (TangentSpace I x), Orthonormal ℝ ![ω₁, ω₂] →
      0 < B ω₁ ω₁ + B ω₂ ω₂

theorem boehmWilking_twoPositive [CompactSpace M] [ConnectedSpace M]
    (h3 : 3 ≤ Module.finrank ℝ E) (g : SmoothMetric I M)
    (hpos : ∀ x : M, IsTwoPositiveCurvatureOperator g x) :
    ∃ (g' : SmoothMetric I M) (κ : ℝ), 0 < κ ∧
      Bundle.ContMDiffRiemannianMetric.IsConstantCurvatureTensor g' κ := by
  sorry
```

The predicate is checked on the instances of the table below: on the unit `S³`, `B` is the
identity form on `⋀²` and every orthonormal pair gives `2 > 0`; on `S² × S²` the pair
`e₁∧e₃, e₂∧e₄` gives `0 + 0`, so the predicate fails, as 7.1's Check requires; in dimension three
with `Rop = diag(λ₁ ≤ λ₂ ≤ λ₃)` the minimum over orthonormal pairs is `λ₁ + λ₂`, the smallest
Ricci eigenvalue, so the predicate is the positive-Ricci condition of `hamilton_positiveRicci_dim3`.

Repair: add the definition and the theorem to the Layer 7 section (Böhm–Wilking, Theorem 1,
arXiv p. 1 and Theorem 5.1, p. 12), name both in 7.1's API bullets, and replace the docstring
bullet by the statement that Böhm–Wilking is stated through the pinned inner product on
`⋀[ℝ]^2 (TangentSpace I x)`. Optionally state the four-dimensional positive-operator theorem
(`0 < B ω ω` for `ω ≠ 0`) the same way. If the operator form is preferred, the bilinear form can
also be built with `exteriorPower.alternatingMapLinearEquiv` (`ExteriorPower/Basic.lean` line
212) from the two pair skew-symmetries (`CovariantDerivative.IsMetricCompatible.inner_curvatureTensor_eq_neg`,
Tau Ceti `Curvature/Metric.lean` line 111, and the first-pair antisymmetry in
`Curvature/Tensor.lean`), but the universally quantified form above needs no proof and
elaborates as is.

## R02 (P3) — Topping locators in 1.2: Propositions 2.3.9 and 2.3.12 are swapped, (1.2.4) is on p. 9

Location: `README.md` 1.2, "`∂_t g⁻¹ = …`, `∂_t dμ_g = ½ tr_g(h) dμ_g`, and `∂_t Γ^k_ij = …`
(Topping, Propositions 2.3.1 and 2.3.9, pp. 28–31)" and "`∂_t Scal = −⟨h, Ric⟩ + div div h −
L_g tr_g h` (Topping, Proposition 2.3.12, p. 32)"; 1.4, "(Topping, equation (1.2.4), p. 10)".

Witness: TOP06 line 873 (printed p. 31) is Proposition 2.3.9, the scalar-curvature variation
`∂R/∂t = −⟨Ric,h⟩ + δ²h − Δ(tr h)`; line 897 (printed p. 32) is Proposition 2.3.12, the volume
variation `∂(dV)/∂t = ½(tr h) dV`. Equation (1.2.4) is line 260, on the page whose printed number
is 9 (line 282); the README's p. 10 is the PDF page.

Repair: cite 2.3.1 (Christoffel, p. 28) and 2.3.12 (volume, p. 32) for the first sentence and
2.3.9 (p. 31) for the scalar variation; (1.2.4) at p. 9.

## R03 (P3) — Santoro locator in 8.1: the Harnack inequality is Theorem 4.4.2, the entropy is 4.4.3

Location: `README.md` 8.1, "integrate along space-time paths to obtain Hamilton's Harnack
inequality with the time factor `exp(rτ) − 1` … (Santoro, Theorem 4.4.3, p. 41)", followed by
the entropy sentence ("`Z′ ≥ Z² + rZ` … the entropy is nonincreasing") with no locator.

Witness: SANT12 line 1165 (p. 40) is Theorem 4.4.2, the Harnack inequality
`(e^{rτ} − 1)R(ξ,τ) ≤ e^{Δ/4}(e^{rT} − 1)R(X,T)`, whose proof (lines 1170–1212) contains the `Q`
evolution and the path integration; line 1216 (p. 41) is Theorem 4.4.3, "`∫ R log R` is
decreasing", proved through `Z` and `dZ/dt ≥ Z² + rZ`. Also, line 898 (Lemma 4.2.1) is the soliton
identity "`R + |∇f|² + rf` depends only on time", not the construction of the potential; the
potential `Δf = R − r` is introduced at the opening of §4.2 (pp. 32–33) and the time
normalization is Lemma 4.2.2 (line 914).

Repair: "(Santoro, Theorem 4.4.2, p. 40)" on the Harnack sentence and "(Santoro, Theorem 4.4.3,
p. 41)" on the entropy sentence; cite "§4.2 and Lemma 4.2.2, pp. 32–34" for the potential.

## R04 (P3) — Cheeger–Ebin theorem number for the `n ≥ 3` Klingenberg estimate is given as both 5.9 and 5.10

Location: `README.md` 6.2: "the injectivity radius is at least `π` (Cheeger–Ebin, Theorem 5.9;
Brendle–Schoen 2009, §1)" and later in the same subsection "This proves the `n ≥ 3`
strict-quarter bound through Cheeger–Ebin Theorem 5.10's strict-pinch route"; References:
"Theorems 5.9–5.10 (the injectivity-radius estimates)".

Claim: the same statement is attributed to two theorem numbers. In the standard numbering
(uncertified here, see Not verifiable) 5.9 is Klingenberg's even-dimensional estimate and 5.10
the strict-quarter-pinched one in every dimension, which is what the 6.2 text itself uses at the
second mention; the first citation should then read 5.10, and the even-dimensional sentence
("The even-dimensional argument (Petersen, §6.2)") can cite 5.9.

Repair: one theorem number per statement, as above, once the author checks the edition cited.

## R05 (P3) — `ProperCone.map` does not exist at the pinned Mathlib

Location: `README.md` supplier table, "`ConvexCone`, `ProperCone` (…) and `ProperCone.map`";
5.3, "Use the same `ProperCone` carrier for the deformed families and `ProperCone.map` for
their invertible deformation maps; prove the underlying set is the image".

Witness: `Mathlib/Analysis/Convex/Cone/Basic.lean` line 60, `abbrev ProperCone := ClosedSubmodule
R≥0 E`; no `ProperCone.map` anywhere in the pinned Mathlib (grep over every file with
`namespace ProperCone`). The map is `ClosedSubmodule.map`
(`Mathlib/Topology/Algebra/Module/ClosedSubmodule.lean` line 221), defined for a continuous
`ℝ≥0`-linear map as the *closure* of the image; dot notation `C.map f` reaches it through the
abbreviation.

Repair: name `ClosedSubmodule.map` (with the `ℝ≥0`-linear restriction of `ℓ_(a,b)`, for example
`ContinuousLinearMap.restrictScalars`), and keep 5.3's clause that in finite dimension the
closure is the image for an invertible `ℓ`.

## R06 (P3) — Broken relative link to Poincare3D

Location: `README.md` Scope ("the inputs of [Poincare3D](../Poincare3D/README.md)") and
Downstream consumers (same link).

Witness: no `TauCetiRoadmap/Poincare3D` on main; Poincare3D is a new-roadmap pull request of
another author (not among the heads this review was given). GeometricTopology, linked the same
way, is on main.

Repair: name Poincare3D in plain text, or link it once it is on main. (A consumer is not a
supplier; no direction problem.)

## R07 (P3) — Two Checks are mis-stated

Location: `README.md` 3.2 Checks, "On the round sphere `∇Rm = 0`, so every Shi bound holds with
equality at `k = 0` only"; 5.3 Checks, "the Ricci-type tensor `A ∧ g` with `A = diag(1,−1,0,0)`
has isotropic expression `(A₁₁ + A₃₃) + (A₁₁ + A₄₄) + (A₂₂ + A₃₃) + (A₂₂ + A₄₄) = 2 tr A = 0`".

Claim: on the sphere the `k ≥ 1` bounds hold with the left side `0`, and the `k = 0` bound
`|Rm| ≤ C K` is an equality only when `C = 1` and `|Rm| = K`; the Check does not discriminate
anything. In 5.3, with the README's own wedge convention (5.1: `(A ∧ Id)(u∧v) = ½(Au∧v + u∧Av)`,
so `K(e_i,e_j) = ½(A_ii + A_jj)`) the four-term sum is `tr A`, not `2 tr A`; the displayed sum is
the Kulkarni–Nomizu value. Both values are `0`, so the conclusion stands.

Repair: replace the 3.2 Check by "on the round sphere every `∇^k Rm` vanishes for `k ≥ 1`, so the
content of the Shi bounds is the `k ≥ 1` decay on non-round flows"; in 5.3 write `½(…) = tr A = 0`
or say the sum is taken in the Kulkarni–Nomizu normalization.

## Verified sound

**Gate, build, direction, probe.** Gate at 9622607 all checks pass (worker). `lake env lean`
on `Suggested.lean`: eleven `sorry` warnings only. `depcheck: 204 roadmaps, 1422 edges,
0 problem(s)`. `git diff --stat origin/main...HEAD` outside the folder: empty. One-tactic probe
on a scratch copy of the file (each `sorry` replaced by `first | rfl | simp | infer_instance |
(intros; simp_all)`): all eleven fail to close; no padding. `metadata.toml` is `topic =
"math.DG"`; no stray file.

**Signatures.** `#check @` on all 25 declarations (the worker's list) compared with the README.
The binders the list marks as dropped (`[I.Boundaryless]` and `[FiniteDimensional ℝ E]` on
`SmoothMetric`, `metricRicci`, `metricScalar`, `metricSectional`, `IsSmoothMetricFamilyOn`,
`IsRicciFlowOn`; `[FiniteDimensional ℝ V]` and `[InnerProductSpace ℝ V]` on `FourTensor`,
`IsAlgebraicCurvature`, `algebraicCurvatureSubmodule`, `coordFourTensor`, `reactionComponent`,
`pic2Expression`, `IsPIC2FourFrame`) are not needed by those types. Every theorem keeps
`[I.Boundaryless]` and `[CompactSpace M]`; the sphere theorems keep `[ConnectedSpace M]` or
`[SimplyConnectedSpace M]`; `reactionTensor` keeps `[FiniteDimensional ℝ V]` (it uses
`stdOrthonormalBasis`); the PIC2 theorems carry `4 ≤ Module.finrank ℝ V`, without which
`IsPIC2FourFrame` is vacuous.

**Pinned declarations opened.** Mathlib `6b7abb3c`, Tau Ceti `a91d3aa` (the worktree's
`lake-manifest.json`). `Bundle.ContMDiffRiemannianMetric.IsConstantCurvatureTensor`
(Tau Ceti `Curvature/Metric.lean` line 172: the Levi-Civita connection of `g` satisfies
`R(w,u)v = κ(⟪u,v⟫w − ⟪w,v⟫u)` at every point, line 148); `CovariantDerivative.sectionalCurvature`
(`Curvature/Sectional.lean` line 70, `⟪R(u,v)v,u⟫ / det Gram(u,v)`, a junk value on dependent
pairs, as the Conventions say); `curvatureTensor` (`Curvature/Tensor.lean` line 148, trilinear);
`ricciTensor` and `ricciTensor_eq_sum` (`Curvature/Ricci.lean` lines 57, 71); `scalarCurvature`
and `scalarCurvature_eq_sum` (`Curvature/Scalar.lean` lines 53, 62);
`IsMetricCompatible.inner_curvatureTensor_eq_neg` (`Curvature/Metric.lean` line 111);
`contMDiffOn_leviCivitaConnection` and the `ContMDiffCovariantDerivative` instance
(`LeviCivita/Regularity.lean` lines 163, 294); `riemannianVolume`
(`Riemannian/VolumeDensity/Isometry.lean` line 181); `contMDiffOn_maximalIntegralCurve`
(`Riemannian/Geodesic/Flow.lean` line 110). Mathlib: the sphere's `ChartedSpace`
(`Geometry/Manifold/Instances/Sphere.lean` line 358) and `IsManifold (𝓡 n) ω` (line 417)
instances on `Metric.sphere (0 : EuclideanSpace ℝ (Fin (n+1))) 1`; `IsPicardLindelof` and
`exists_eq_forall_mem_Icc_eq_picard` (`Analysis/ODE/PicardLindelof.lean` lines 79, 720);
`ProperCone` (`Analysis/Convex/Cone/Basic.lean` line 60); `ClosedSubmodule.map`
(`Topology/Algebra/Module/ClosedSubmodule.lean` line 221); the exterior-power inner product
(`Analysis/InnerProductSpace/ExteriorPower.lean` lines 121, 124) and `exteriorPower.ιMulti`,
`alternatingMapLinearEquiv` (`LinearAlgebra/ExteriorPower/Basic.lean` lines 56, 212).

**Cross-roadmap citations resolved** (on main unless stated). RiemannianGeometry: `## R1.`
line 179 (item 3 Schur line 200), `## R2.` line 300, `### R3.2.` line 431, `## R4.` line 607
with item 1 (Rauch, Günther volume comparison) line 609, item 5 Bonnet–Myers line 683, item 6
`inj` line 687, item 7 round models line 717, `### R7.0.` line 1295 (scalar Bochner, first
eigenvalue); line 173 records that RicciFlow owns the differentiable sphere theorem and
Hamilton's theorem. SmoothBundlesConnections B2–B4. DifferentialGeometry 2.3 line 357, 2.4
line 362, 3.5 line 400 (`exists_timeDependentFlow`), Layer 5 line 503. PDE Lane F line 341,
item 24 line 343, item 25 line 346, F27.1 line 356, F27.2 line 406, F27.3 line 433, F27.5
line 493. ComplexKahlerGeometry K5a line 570, `BundleSobolev` line 728. MorseTheory M1–M3
lines 90, 124, 430. HopfRinow and UniversalCovers under `Completed/`. At open heads:
PseudodifferentialOperators (head `636402fc`) P1 line 149, P5 line 914, §5.4 line 1323, P6
line 1470, P7 line 1584, §7.1 line 1586; VariationalMethods (head `7ea28a3b`) §3.1 line 562,
§3.4 line 649, §4.4 line 782, §5.3 line 924. Both are new-folder pull requests by other authors,
and both precede RicciFlow in the merge order. Supply direction: every `*Needs:*` line names an
earlier subsection or an earlier layer, except the documented reversed order 5.1–5.2 before 4.1–4.3
and 4.3 before 5.3 (no cycle: 4.1–4.3 need only 5.1–5.2; 5.3–5.6 need 4.3), and 7.2 needs 7.3
while 7.3 needs 2.4 and 6.4 only.

**Ownership.** `roadmaps grep` over main and the 437 open pull requests for "Ricci flow",
"DeTurck", "isotropic curvature", "sphere theorem", "Böhm", "quarter pinch": outside this pull
request the hits are Poincare3D (#1740) and GeometricTopology (consumers), RiemannianGeometry
line 173 (assigns ownership here), and unrelated uses of "sphere theorem" in HomotopySpheres,
SpinRepresentations and Yamabe. No other roadmap builds these objects.

**Sources read** (cache ids): BS08 `3b1dab75` (arXiv 0705.0766v3), BW08 `e9de36e8`
(math/0606187v1), BS09 `59b4942d` (0904.2604v2), SANT12 `08a42f3c` (1205.1039v1), CLT06
`fcb95492` (math/0505163v2), TOP06 `1d0ad8a6` (author's March 2006 notes; printed page =
PDF page − 1). Locators checked at the text, with the arXiv page numbers the README uses:
- 1.1: a construction target with no theorem locator; its Checks computed (ranks 3 and 6 versus
  1 and 3, `det [[1,2],[2,1]] = −3`, Hessian 2 versus Taylor coefficient 1).
- 1.3: TOP06 §1.2.3 line 330 (printed 11): `ĝ(t) = λ g(t/λ)` is a Ricci flow, Ricci invariant,
  sectional and scalar scale by `λ⁻¹`, connection invariant. Sound.
- 1.4: TOP06 line 224 (`(1−2λt)g₀`, printed 8), line 260 ((1.2.4), printed 9: R02).
- 2.1: the Euclidean model is PDE F27.1 line 356; the extension construction is the standard
  Seeley reflection, Checks computed (`a₁ = 3, a₂ = −2`). Sound.
- 2.4: TOP06 line 840 (Proposition 2.3.7, printed 30: `∂Ric = −½Δ_L h − ½L_{(δG(h))♯}g`), line
  1864 ((5.2.1), printed 61), line 1935 (Theorem 5.2.1, printed 62). Sound.
- 3.1: no theorem locator; derived from 2.4 (restriction, restart, gluing). Sound.
- 3.2: TOP06 line 1485 (Theorem 3.3.1, printed 49). 3.3: line 1976 (Theorem 5.3.1, printed 63),
  lines 1359, 1369 (Theorem 3.2.1, Corollary 3.2.4, printed 46). Sound.
- 4.1: TOP06 lines 1226, 1259, 1298 (Propositions 2.5.1, 2.5.4, (2.5.8), printed 41–43). 4.2:
  line 3831 (Theorem 9.6.1, printed 112). 5.3: line 4031 (Theorem 9.7.5, printed 118,
  preservation of `Ric ≥ εRg`). 7.1: line 4203 (Theorem 10.1.1, printed 123, Hamilton with a
  limit metric of constant positive sectional curvature). Sound.
- 4.3: Mathlib Picard–Lindelöf at the pin (above); the `εI` perturbation is BS08 lines 551–560
  (Proposition 11, p. 13). Sound.
- 5.1: Tau Ceti carriers as above; the `IsConstantCurvatureTensor` Check recomputed (below).
- 5.2: BS08 line 184 (p. 5), `Q(R)_ijkl = R_ijpq R_klpq + 2R_ipkq R_jplq − 2R_iplq R_jpkq`, the
  README's and the Lean's component formula. Sound.
- 5.4: BW08 line 79 (Theorem 2, p. 2: `ℓ_{a,b}` and `D_{a,b}` as the README displays them),
  line 267 (Corollary 2.3, p. 7), line 290 (Theorem 3.1, p. 7), lines 292–295 (2-nonnegativity
  attributed to Hamilton, p. 7), line 299 (Proposition 3.2, p. 7, hypotheses and the range
  `0 < b ≤ (√(2n(n−2)+4) − 2)/(n(n−2))`, `2a = 2b + (n−2)b²`), line 337 (Corollary 3.3, p. 8,
  `ℓ_{a(b),b}(C∖{0})` inside the positive operators), line 363 (Lemma 3.4, p. 9: `a`, `p`,
  invariant on `[0,½]`, transverse on `(0,½]`), line 429 (Lemma 3.5, p. 10: `a = (1+s)/2`,
  `p = 1 − 4/(n+2+4s)`). All match the README's `A_b`, `D_b`, `E_u`. Sound.
- 5.5: BS08 lines 592 (Proposition 12, p. 14), 635–649 (Propositions 13–14, p. 16: the two
  parameter branches), 655 (Proposition 15), 820 (Proposition 21, p. 20, the four-frame
  characterization), 333, 474, 532 (Propositions 8, 9, Corollary 10, pp. 8–13). Sound.
- 5.6: BS08 lines 173–176 (remark after Theorem 3, p. 4, Berger's inequality), lines 870–876
  (Corollary 22: `|R₁₂₃₄| ≤ 2` for curvatures in `[1,4]`, the `(2/3)(b−a)` bound at `b = 4a`).
  Sound.
- 6.1: BW08 line 482 (Theorem 4.1, p. 11), BS08 lines 667, 709 (Propositions 16–17, pp. 16–17).
  Sound.
- 6.4: BS09 line 1137 (Theorem 4.7, p. 22: `g(t)/(2(n−1)(T−t))` converges to curvature one).
  Sound.
- 7.1: BW08 line 22 (Theorem 1, p. 1), line 531 (Theorem 5.1, p. 12, `n ≥ 3`, interior of
  `C(0)`). 7.2: BS08 line 28 (Theorem 1, p. 1, `n ≥ 4`, pointwise pinching defined at lines
  23–27 as `0 < K(π₁) < 4K(π₂)`, the Lean's `hpinch`), line 167 (Theorem 3, p. 4). Sound.
- 8.1: SANT12 lines 674–760 (§4.1, pp. 26–28), 914, 926, 942 (Lemmas 4.2.2–4.2.3, Theorem 4.2.1,
  pp. 34–35: `∂h = Δh − 2|M|² + rh`, `−C ≤ R ≤ Ce^{rt} + r`), 1165 (Theorem 4.4.2, p. 40), 1216
  (Theorem 4.4.3, p. 41): R03 for the attribution. 8.2: line 1324 (Theorem 4.4.4, p. 44,
  `c ≤ R ≤ C`). 8.3: line 1344 (Lemma 4.4.1, p. 45), CLT06 lines 26, 47 (Lemma 1 p. 1,
  Proposition 2 p. 2). 8.4: BS09 line 22 (Theorem 1.1, p. 1). Sound.

**Adversarial table.**

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| `hamilton_positiveRicci_dim3` | unit `S³`; `RP³`; `S² × S¹`; `M = ∅` | `Ric = 2g`: hypothesis holds, conclusion with `g' = g`, `κ = 1`; `RP³` same, conclusion a space form not `S³` (no diffeomorphism claimed); `S² × S¹`: `Ric(∂_θ,∂_θ) = 0` fails `v ≠ 0 → 0 < Ric(v,v)`, and `π₁ = ℤ` excludes a positive space form; `∅` excluded by `[ConnectedSpace M]` | hypotheses exact | none |
| `IsConstantCurvatureTensor g' κ` as "constant positive sectional curvature" | `κ = 1`, `n = 2, 3` | pin: `R(w,u)v = κ(⟪u,v⟫w − ⟪w,v⟫u)`; `Ric(u,v) = tr(w ↦ R(w,u)v) = κ(n−1)⟪u,v⟫`; `K(u,v) = ⟪R(u,v)v,u⟫/det Gram = κ(‖u‖²‖v‖² − ⟪u,v⟫²)/det Gram = κ` | the predicate is constant sectional curvature `κ` | none |
| `brendleSchoen_pointwise_quarterPinched` hypothesis | `S⁴` (`K ≡ 1`); `CP²` (`K ∈ [1,4]`); `K ∈ [1,3]` at one point and `[5,7]` at another | `0 < 1 < 4·1` holds; `CP²`: `K(π) = 4`, `K(π') = 1` gives `4 < 4` false, excluded as 7.2's Check requires; two-point example: pointwise `3 < 4·1` and `7 < 4·5` hold, globally `7 < 4·1` fails, so the pointwise theorem applies and the global one does not | `hpinch` is BS08's definition (lines 23–27) | none |
| `brendleSchoen_diffeomorph_sphere` | `RP⁴` with `K ≡ 1`; `n = 4` on `S⁴` | `RP⁴` is pointwise pinched and not `S⁴`: excluded by `[SimplyConnectedSpace M]`; `S⁴`: `Diffeomorph I (𝓡 4) M (sphere ⊂ ℝ⁵)` has the identity-type witness | hypotheses exact | none |
| `positiveScalar_surface` | round `S²`; `RP²`; Klein bottle; torus | `Scal = 2K = 2 > 0`, conclusion with `g' = g`, `κ = 1`; `RP²` likewise; Klein bottle and torus: `∫ Scal dμ = 4πχ = 0`, so `Scal > 0` everywhere is impossible, hypothesis excludes them | sound | none |
| `global_quarterPinched_diffeomorph_sphere` | `n = 2` round `S²` (`a = b = 1`); `n = 3`, `K ∈ [1,3]`; `CP²`; `n = 1`; `n = 0` | `1 ≤ K ≤ 1`, `1 < 4` holds, `S² ≃ S²`; `n = 3`: `Ric ≥ 2g > 0`, Hamilton plus simple connectivity gives `S³`; `CP²`: `b = 4 < 4a = 4` false, excluded; `n = 1`: no independent pairs, hypothesis vacuous, excluded by `2 ≤ n`; `n = 0` likewise | hypotheses exact | none |
| `metricSectional` junk value | `v = 2u` | `det Gram = 0`, Lean quotient `x/0 = 0`; every hypothesis quantifies over `LinearIndependent ℝ ![u, v]`, so the junk value is never constrained | no vacuity | none |
| `IsRicciFlowOn` sign | unit `Sⁿ` | `Ric = (n−1)g`, `∂_t g = −2(n−1)g`, `g(t) = (1 − 2(n−1)t)g₀` shrinking; TOP06 line 227 same | agrees | none |
| `reactionTensor` body versus the contraction | `r = κ(δ_ik δ_jl − δ_il δ_jk)`, `n = 3, 4`; rank-one `S² × ℝ^(n−2)` | `reactionComponent` sums: `2κ²(δ_ik δ_jl − δ_il δ_jk) + 2κ²((n−2)δ_ik δ_jl + δ_ij δ_kl) − 2κ²((n−2)δ_il δ_jk + δ_ij δ_kl) = 2(n−1)κ² (δ_ik δ_jl − δ_il δ_jk)`, so `Q(κI) = 2(n−1)κ² I`; rank-one: `Q_1212 = r_1212² + r_1221² = 2 = 2r_1212`, `Q = 2r` | matches 5.2's Checks and `κ' = 2(n−1)κ²` | none |
| `reactionTensor_apply_orthonormalBasis` | `dim V = 0`; `b` any orthonormal basis | both sides `0`; each `Σ_pq` is a full contraction over an orthonormal basis, basis independent; expansion in `stdOrthonormalBasis` reproduces it by multilinearity | true as stated | none |
| `reactionTensor_mem` | `r = κI`; `r` rank-one | `2(n−1)κ r` and `2r` are in the submodule | consistent; general case is Hamilton's lemma | none |
| `IsAlgebraicCurvature` Check (5.1) | `r = κ(⟨u,z⟩⟨v,w⟩ − ⟨u,w⟩⟨v,z⟩)`; the wrong model `⟨u,z⟩⟨v,w⟩` | Bianchi sum of the three cyclic terms cancels pairwise; `r(u,v,u,v) = κ(|u|²|v|² − ⟨u,v⟩²)`; the wrong model gives `r(u,v,z,w) + r(v,u,z,w) = ⟨u,z⟩⟨v,w⟩ + ⟨v,z⟩⟨u,w⟩ ≠ 0` at `u = v = z = w ≠ 0` | discriminating | none |
| `pic2Expression` and Berger (5.6) | `λ = μ = 1`; `λμ = 0`; `CP²` | `4m − (4/3)(M − m) = (4/3)(4m − M)`; `m(1 + λ² + μ²) ≥ m`; `CP²`: `R(X,JX,Y,JY) = 2 = (2/3)(4 − 1)`, expression `0` at `λ = μ = 1` | strict hypothesis needed | none |
| PIC2 Checks (5.5) | constant `κ`; `S² × S²` two frames | `κ(1 + λ²)(1 + μ²)`; `0` and `1 + λ²μ²` | boundary versus interior as stated | none |
| Böhm–Wilking 2-positivity predicate (R01) | unit `S³`; `S² × S²`; `n = 3` diagonal `Rop` | `B = ⟨·,·⟩`, every orthonormal pair gives `2`; `e₁∧e₃, e₂∧e₄` gives `0 + 0`, fails; `min(λ_i + λ_j) = λ₁ + λ₂` = smallest Ricci eigenvalue | predicate discriminates | R01 |
| `D_b`, `E_u` joins and Proposition 3.2's range (5.4) | `b = ½`; `n = 4` | `a_{1/2} = ((n+2)/4)/((n+2)/2) = ½`, `p_{1/2} = (n−2)/(n+2) = 1 − 4/(n+2) = p_0`; `b_* = (√20 − 2)/8 = 0.309`, `n(n−2)b_*² + 4b_* − 2 = 0.764 + 1.236 − 2 = 0` | BW08 lines 363, 429, 299 agree | none |
| `A_{b_*} ∩ D_0 = A_{b_*}` and the strict join | `n ≥ 4` | BW08 lines 343–357: `ℓ_{a(b_*),b_*}(C₂∖{0}) ⊂ {R > 0}`, so `A_{b_*} ⊆ D_0`; strictness at the join is Proposition 3.2's (`b_* > 0`) | README's join argument is the source's | none |
| Rank-one ray at `b = 0` (5.4 Check) | `S² × ℝ^(n−2)` | `Q(R) = 2R` tangent to the ray; `Ric = diag(1,1,0,…)`, `Scal = 2`, `Ric ≥ (p_b/n)·2·Id` fails for `p_b > 0` | excluded from `D_b`, `b > 0` | none |
| 3.3 Checks | unit `Sⁿ` | `|Rm|² = κ² Σ(δ_ik δ_jl − δ_il δ_jk)² = 2n(n−1)κ²`, `Q = √(2n(n−1))/(2(n−1)(T−t)) = √(n/(2(n−1)))/(T−t)`, `D⁺Q = Q²/√(n/(2(n−1)))`; `Scal = n(n−1)κ`, `s₀/(1 − 2s₀t/n) = n(n−1)/(1 − 2(n−1)t)`, `T = n/(2s₀) = 1/(2(n−1))` | all equalities hold | none |
| 4.1 Checks | unit `Sⁿ` | `|Ric|² = n(n−1)²κ²`, `∂_t Scal = n(n−1)·2(n−1)κ² = 2|Ric|²`; `d/dt (1−2(n−1)t)^{n/2} = −n(n−1)κ·Vol`; frame: `−2Ric + Ric + Ric = 0` versus `−4Ric` for the wrong sign | hold | none |
| 1.2 Checks | `g_t = c(t)g₀`; radial field | `tr_g h = nc'/c`, `½ tr h dμ = (nc'/2c)dμ`; `∂_t Scal = −c'c⁻² Scal₀ = −⟨h,Ric⟩`; `L_x g = 2g` | hold | none |
| 1.3, 1.4 Checks | Einstein `(1−2λt)g₀`; `S² × S²` radii `ρ_i`; Gaussian soliton | `a = (1−2λt)⁻¹`, `τ = −log(1−2λt)/(2λ)`; factor lifetimes `ρ_i²/2`; `Hess(λ|x|²/2) = λg` | hold | none |
| 2.1 extension Check | `b = (−1, −2)` | `a₁ + a₂ = 1`, `−a₁ − 2a₂ = 1` give `(3, −2)`; derivative `(−3 + 4)u'(0)` | holds | none |
| 6.4 inverse scale | round `Sⁿ`, `κ₀ = 1` | `b = 1/a`, `db/dt = (2/n)b·Vol'/Vol = −(2/n)r̄(ĝ)`; `b/(T−t) → 2(n−1)κ_∞`; `g(t)/(2(n−1)(T−t)) = g₀` | holds, factors `4`, `6` | none |
| 8.1 Checks | `n = 2`; Harnack ODE | `−2Ric + r̄g = (r − R)g`; `Q = −r/(1 − e^{−rτ})` solves `Q' = Q² + rQ` exactly (`r²e^{−rτ}/(1 − e^{−rτ})²` both sides); `∫R dμ = 4πχ` | hold | none |
| 8.2 Lichnerowicz Check | `R ≥ 2c` | `Ric ≥ c g`, `λ₁ ≥ (n/(n−1))c = 2c`; round sphere of curvature `c`: `λ₁ = 2c` | sharp | none |
| 8.3 Checks | `H = sin s` on `[0,π]` | `∫₀^π sin s cos² s ds = [−cos³s/3]₀^π = 2/3`; `Ric − Hess f = (r/2)g` traced: `Δf = R − r` | hold | none |
| `exists_shortTime_ricciFlow`, `ricciFlow_unique` | `M = ∅`; `n = 0, 1`; noncompact | `∅`: any `T`; `n ≤ 1`: `Ric = 0`, constant flows equal from `g 0 = h 0`; noncompact excluded by `[CompactSpace M]` | hypotheses present | none |

## Not verifiable

- Cheeger–Ebin, *Comparison Theorems in Riemannian Geometry*, Lemmas 4.11, 5.6, Theorems
  5.9–5.10 (6.2): in-copyright book, cited uncertified; not read. The statements used are the
  standard ones and agree with BW08 lines 27 and 574 and BS09 line 22; R04 concerns only which
  number is which.
- Petersen, *Riemannian Geometry*, 3rd ed., §6.2 (even-dimensional injectivity estimate): same.
- Hamilton 1982 and 1986 (References, uncertified): the theorems are checked against TOP06
  Theorem 10.1.1 and BW08 Theorem 1 instead.
- Ownership against open pull requests was checked only through `roadmaps grep` over the index
  of 437 pull requests and the heads this brief lists; Poincare3D (#1740) was read only through
  that grep.

## Source issues

- **Misprint** in SANT12 at (4.21), printed page 40: the squared tensor is written as the Hessian
  of `log R` minus one half of `(R − r)` times the metric; it should be plus, so that its trace is
  `Q` and the inequality `Q² ≤ 2|·|²` on the next line holds; affects nothing.
- **Misprint** in SANT12 at the ODE comparison after (4.21), printed page 41: the bound on `Q` is
  written with `≤`; it should be `≥`, the lower bound the path integration on the same page uses;
  affects nothing.
- **Misprint** in SANT12 at Lemma 4.4.1, printed page 45: the Laplacian term on the right is
  written as the Laplacian of `|M|`; it should be the Laplacian of `|M|²`, as the left side and the
  proof's computation require; affects nothing.
