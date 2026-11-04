# Review of RiemannianGeometry (pull request #1327 at 6c811a8)

**Verdict:** needs changes

RiemannianGeometry is a roadmap on main; this head amends it (R1.2 reconstruction identity, R3.3c stereographic Hopf block, R6 ownership of the squared-distance theory, R8.3 convention bridge, `*Needs:*` lines and Checks through R2–R8) and rewrites `TauCetiRoadmap/RiemannianGeometry/Suggested.lean` as a fourteen-declaration acceptance test. The gate passes on this head, the dependency check reports no UPWARD or CYCLE line, the file elaborates with only `sorry` warnings, every formula of the amended passages recomputes (table below), and no other roadmap on main or at an open head states Rauch, Bishop–Gromov, Synge or Killing–Hopf. Two findings block: the module docstring declares Synge not statable because the pin "needs an orientability predicate for manifolds, absent at the pin", but `TauCeti.Orientable` exists at the pin and Synge elaborates (R01); and it declares the curved-model Bishop–Gromov comparison not statable for lack of the model volume `V_κ(r)`, which is a one-line interval integral of the file's own `modelSine` (R02). Both statements were elaborated in a scratch copy at the pins.

**Previous review (pull request #1327 at fda77cf), finding by finding.** R01 (three statable R4 headlines absent): repaired. `rauch_norm_ge_of_sectional_le` (`Suggested.lean` line 148, with `modelSine` at line 138), `bishopGromov_flat` (line 180), `killingHopf_euclidean`, `killingHopf_sphere`, `killingHopf_hyperbolic` (lines 234, 244, 256) are stated, the README names them at R4.1 (lines 847–852, 886) and R4.7 (lines 1035–1045) with their hypotheses, and the docstring now names Synge and Lichnerowicz as unstatable (lines 36–39; the Synge reason is wrong, R01 below). R02 (README shape): partly repaired. Every `##`/`###` section from R2 to R8.5 now ends with a `*Needs:*` line, and Checks were added for the H¹ carrier (R3.1), the discrete energy and admissibility (R3.2), `modelSine` (R4.1), B/S/H (R5a), Q/L (R5b), the rough Laplacian and `ℛ_p` (R7), H_d (R8.1); the PDE labels read "A.1–A.6, D.16–D.19, E.20–E.22" (line 94). What remains is R03 below. R03 (process sentence): repaired, "Compile prototypes against the real Tau Ceti imports; remove supplier mirrors…" is gone (lines 2029–2030 now end at "before its headline theorem").

## R01 (P2) — Synge's theorem is statable at the pin and absent; the docstring's reason is false

Location: `TauCetiRoadmap/RiemannianGeometry/Suggested.lean` lines 36–37: "Synge's theorem (R4.6), which needs an orientability predicate for manifolds, absent at the pin"; README R4.6 lines 988–993 (the Synge target and its odd-dimensional orientability consequence).

Claim: the pinned Tau Ceti (`a91d3aa`) has `TauCeti.Orientable I n M` at `TauCeti/Geometry/Manifold/Orientation.lean` line 345 (`class Orientable [NeZero n] : Prop`, "the `C^n` manifold `M` has an oriented atlas"), already consumed by `TauCeti/LowDimTopology/Geometrization.lean` line 146 as `[Orientable (𝓡 3) ∞ M]`. Positive sectional curvature is statable with the pinned `curvatureTensor` and `LinearIndependent ℝ ![u, v]` (the form the pin's own `HasSectionalCurvatureAt`, `Curvature/Sectional.lean` line 140, uses). So the even-dimensional Synge theorem and its odd-dimensional corollary are headlines statable at the pins and absent, and the docstring's "not statable" entry is wrong.

Witness: a scratch copy of the head with `public import TauCeti.Geometry.Manifold.Orientation` and the two declarations below appended to section `GlobalDistance`, elaborated with `lake env lean` at the pins: no error, exactly one `declaration uses sorry` warning per probe.

```lean
/-- R4.6, Synge: a compact connected orientable even-dimensional Riemannian manifold of
positive sectional curvature is simply connected. -/
theorem synge [ConnectedSpace M] [CompactSpace M] [TauCeti.Orientable I ∞ M]
    (heven : Even (Module.finrank ℝ E)) (hpos : 0 < Module.finrank ℝ E)
    (hK : ∀ x (u v : TangentSpace I x), LinearIndependent ℝ ![u, v] →
      0 < inner ℝ ((CovariantDerivative.leviCivitaConnection I M).curvatureTensor x u v v) u) :
    SimplyConnectedSpace M := by
  sorry

/-- R4.6, Synge, odd dimension: compact connected with positive sectional curvature is orientable. -/
theorem synge_orientable_of_odd [ConnectedSpace M] [CompactSpace M]
    (hodd : Odd (Module.finrank ℝ E))
    (hK : ∀ x (u v : TangentSpace I x), LinearIndependent ℝ ![u, v] →
      0 < inner ℝ ((CovariantDerivative.leviCivitaConnection I M).curvatureTensor x u v v) u) :
    TauCeti.Orientable I ∞ M := by
  sorry
```

Both are true as written (table rows "Synge probe"): `RP²` (compact, K = 1, even-dimensional, not orientable) is excluded by the orientability binder and `RP³` (odd-dimensional, K = 1, π₁ = ℤ/2) by the parity binder, and the degenerate dimension 0 is excluded by `hpos` (a point is orientable and simply connected anyway, but the even-dimensional statement with `finrank = 0` is vacuous in `hK`, so the guard keeps the theorem honest).

Repair: state the two theorems in `Suggested.lean` (section `GlobalDistance` after `bonnetMyers_distance`, with the import above), name them in README R4.6 with backticks, and delete the Synge entry from the docstring's "not statable" list. Keep `[CompactSpace M]`: it is the hypothesis of the classical theorem (do Carmo, *Riemannian Geometry*, Chapter 9, Theorem 3.7 and its corollary), and the complete noncompact case is the soul theorem, outside this roadmap.

## R02 (P2) — the curved-model Bishop–Gromov comparison is statable with the file's own model function

Location: `TauCetiRoadmap/RiemannianGeometry/Suggested.lean` lines 32–34: "the Günther and Bishop–Gromov comparisons with a curved model (R4.1), which need the model volume `V_κ(r)` of a ball in the space form of curvature `κ`, absent at the pin"; README R4.1 lines 884–886 ("prove Vol(B(p,r))/Vκ(r) is nonincreasing … In particular for κ=0 …").

Claim: the headline of the "Ricci lower bounds and relative volume" block is the general-κ monotonicity; the stated `bishopGromov_flat` is its κ = 0 case. The ratio `Vol(B(p,r))/V_κ(r)` is the ratio `Vol(B(p,r)) / ∫₀ʳ s_κ(t)^{n−1} dt` up to the constant `ω_{n−1}`, which cancels in the monotonicity statement, and `s_κ` is the file's `modelSine`. So the general theorem is statable with one simple definition with a real body, which the acceptance-test rules allow; "absent at the pin" is not a reason for a quantity the file can define in one line. (For Günther the obstacle is different and real: the pin has no injectivity radius, and Günther's full-ball range needs `r < inj(p)`; the docstring should say that.)

Witness: the scratch copy also elaborated, with one `sorry` warning and no error,

```lean
/-- R4.1: the model ball volume up to the constant `ω_{n−1}`: `∫₀ʳ s_κ(t)^(n−1) dt`. -/
def modelBallVolume (κ : ℝ) (n : ℕ) (r : ℝ) : ℝ :=
  ∫ t in (0 : ℝ)..r, modelSine κ t ^ (n - 1)

/-- R4.1, Bishop–Gromov: on a connected complete `M` with `Ric ≥ (n−1)κ g`,
`vol(B(p,r))/V_κ(r)` is nonincreasing in `r`, before the model pole when `κ > 0`. -/
theorem bishopGromov [ConnectedSpace M] [CompleteSpace M]
    [MeasurableSpace M] [BorelSpace M] [SecondCountableTopology M]
    [IsContinuousRiemannianBundle E (fun x : M => TangentSpace I x)] (p : M) {κ : ℝ}
    (hRic : ∀ x (v : TangentSpace I x),
      ((Module.finrank ℝ E : ℝ) - 1) * κ * ‖v‖ ^ 2 ≤
        (CovariantDerivative.leviCivitaConnection I M).ricciTensor x v v)
    {r s : ℝ} (hr : 0 < r) (hrs : r ≤ s) (hmodel : 0 < κ → s < Real.pi / Real.sqrt κ) :
    (TauCeti.riemannianVolume I M (Metric.ball p s)).toReal /
        modelBallVolume κ (Module.finrank ℝ E) s ≤
      (TauCeti.riemannianVolume I M (Metric.ball p r)).toReal /
        modelBallVolume κ (Module.finrank ℝ E) r := by
  sorry
```

Values (table rows "Bishop–Gromov curved probe"): on the unit `S²` with κ = 1 the ratio `2π(1−cos r)/∫₀ʳ sin` is `6.2832` at r = 0.5, 1, 2, 3 (constant, as equality demands); on the circle of length 7 (n = 1, `modelSine^0 = 1`) the ratio `min(2r,7)/r` reads `2, 2, 2, 2, 1.75, 0.7` at r = 0.5, 1, 2, 3.5, 4, 10, nonincreasing; the guard `s < π/√κ` is needed because `∫₀ʳ sin^{n−1}` stops being the model volume past π (for n = 3 it decreases). Natural-number subtraction `n − 1` at n = 0 gives exponent 0 and model `r`, and the point satisfies `vol/s ≤ vol/r` since `r ≤ s`.

Repair: add the definition and theorem to `Suggested.lean` (section `GlobalDistance` next to `bishopGromov_flat`; the flat theorem may stay as the consumer-facing special case PositiveMass §2.3 cites, or be deleted), name them in README R4.1 with backticks, give `modelBallVolume` its API bullets (`V′ = s_κ^{n−1}`, positivity on `(0, π/√κ)` resp. `(0,∞)`, scaling) and three Checks (n = 1 gives `r`; κ = 1, n = 2 gives `1 − cos r`; κ = 0 gives `rⁿ/n`), and rewrite the docstring entry so that only Günther remains unstatable, for want of an injectivity radius at the pin.

## R03 (P3) — README shape outside the amended passages

Location: README R2 (lines 372–427), R1 items 1 and 3 and the generic connection/submersion lane with the projective block (lines 181–372), R4.6 (lines 966–999), R6 (lines 1593–1687), R4.9.0–R4.9.7 (lines 1122–1353); the headings `## Conventions and suppliers` (line 14) and `## Dependency order and validation` (line 2003).

Claim: `IsJacobiFieldOn` is a definition of `Suggested.lean` and the README gives it no `**Checks.**` list (the three natural ones are on the unit sphere: `sin t·E` along a great circle is Jacobi, `t·γ′` is the tangential field, and a field with the curvature term's sign reversed fails the equation). The definitions of R1 (`∇R`, `Rop`, the conformal tensor `A`, the O'Neill tensors `A_X Y`, `T_X Y`, the bi-invariant metric), of R4.6 (`inj`, the cut locus, the cut time), of R6 (the normal exponential, focal points, `I_M`) and of R4.9.0–R4.9.3 (`d_V`, the component cover `E`, `a_cover`, `α`, the widths `c_i`, the defect `D_η`) have no Checks lists; R1 item 1, item 3, the generic lane and the projective block, and every R4.9.x subsection carry no `*Needs:*` line, so the dependency check sees none of their supplier edges (GeneralizedCohomology G4.0b, TopologicalKTheory T6.6, K7.1/K7.2, LieGroups L0–L2, SBC B1.4 for R1; ConformalMapping, GMT, Isoperimetry, CharacteristicClasses for R4.9 are named only in the R4.9 head line). The house headings (`## Scope and ownership`, `## Exact supplier contracts`, `### Examples`/`### Dependencies` per layer) are still absent.

Repair: a `**Checks.**` list for `IsJacobiFieldOn` under R2 and for the definitions named above; a `*Needs:*` line per R1 block and per R4.9.x subsection; the two headings.

## R04 (P3) — two Check sentences overstate what the wrong definition would do

Location: README line 1573–1574: "A Jacobi operator with the potential added, `Δ⁺+(|A|²+Ric)`, would call every closed minimal hypersurface stable"; line 525: "`sup|γ_k−γ_j|≤1/(2k)`".

Claim: with the potential added, `Q(φ,φ)=∫|∇φ|²+(|A|²+Ric_N(ν,ν))φ²` is nonnegative only when `|A|²+Ric_N(ν,ν) ≥ 0` along the hypersurface (true in `S³`, where the Check lives, false for a minimal surface in a hyperbolic 3-manifold with `|A|² < 2`), so "every closed minimal hypersurface" is more than the wrong sign gives. The triangular waves satisfy `sup|γ_k| = 1/(2k)` (computed: max `0.1` at k = 5), so `sup|γ_k−γ_j| ≤ 1/(2·min(k,j))`, which is `1/(2k)` only for `j ≥ k`.

Repair: "would call every closed minimal hypersurface of `S³` stable, since there `|A|²+Ric(ν,ν) ≥ 2`" and "`sup|γ_k−γ_j| ≤ 1/(2 min(k,j))`".

## Verified sound

**Gate and tooling.** The worker's gate at this head: every counter 0, `build=0`, OK. Dependency check rerun from the worktree: `depcheck: 204 roadmaps, 1658 edges, 0 problem(s)`, no UPWARD, CYCLE or `moved:` line (RiemannianGeometry is on main and not listed in the merge order). `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. `git diff --stat origin/main...HEAD` outside the folder: empty. Folder contents: `README.md`, `Suggested.lean`, `metadata.toml`. Pins of the worktree manifest: Tau Ceti `a91d3aa`, Mathlib `6b7abb3c`; every declaration below was opened at these pins.

**Elaboration and form.** `lake env lean TauCetiRoadmap/RiemannianGeometry/Suggested.lean`: fourteen `declaration uses sorry` warnings (lines 65, 74, 100, 112, 125, 148, 180, 194, 204, 234, 244, 256, 284, 310), nothing else, 13.8 s. Form: `module`, `public import Mathlib` plus eight `TauCeti.*` modules, each with its object file at the pin; one module docstring; two definitions with real bodies (`IsJacobiFieldOn`, `modelSine`); no `lemma`, `set_option`, `#eval`, `#print axioms`, `True` placeholder or sorry'd data; a docstring on every declaration; section comments in README order (R1, R2, R3/R4, R4.1, R4, R4.7, R4.9, R7.8). README and Lean agree: all sixteen declared names appear backticked exactly once in the README (`modelSine` twice), and the other backticked tokens of the roadmap's own (`u_i`, `v_i`, `e_N`, `t_i`, `C_glue`, `C_J`, `N_s`, `b_gap`, `b_exit`, `kN`) are notation. Policy greps for process words, pull-request numbers, local paths, "optional", "deferred", "later": none (the word "lemma" occurs only in prose).

**Elaborated signatures.** `#check @` of all sixteen declarations in a scratch copy, compared with the README: `constant_sectional_tensor_iff`, `schur` (`[ConnectedSpace M]`, `3 ≤ finrank`), `IsJacobiFieldOn` (drops `[I.Boundaryless]`, as a `def` should), `jacobi_eq_of_initial_data`, `exists_jacobi_initial_data`, `jacobi_eq_zero_of_nonpositive_curvature` (as at fda77cf); `modelSine : ℝ → ℝ → ℝ`; `rauch_norm_ge_of_sectional_le` keeps all seven hypotheses of README R4.1 lines 847–852 (`0 < b`, Jacobi on `Icc 0 b`, unit speed, `X 0 = 0`, normal initial derivative, global `K ≤ κ`, `0 < κ → b < π/√κ`); `bishopGromov_flat` carries `[ConnectedSpace M] [CompleteSpace M] [MeasurableSpace M] [BorelSpace M] [SecondCountableTopology M] [IsContinuousRiemannianBundle …]` and the `0 < r`, `r ≤ s` order of README line 886; `killingHopf_euclidean` has no dimension guard, `killingHopf_sphere` has `2 ≤ n`, `killingHopf_hyperbolic` has `1 ≤ n`, all three carry `[ConnectedSpace M] [CompleteSpace M] [SimplyConnectedSpace M]` and the order-one and order-two bundle instances as explicit binders (implied by the smooth one, so no generality is lost); `three_simple_closed_geodesics` and `riemannianDist_eq_sSup_smooth` as before. No `sorry`'d theorem lost a hypothesis its README statement carries; the Lean `bishopGromov_flat` is more general than README line 884's "n>=2" and is true in dimensions 0 and 1 (table).

**One-tactic probe.** A scratch copy with every `sorry` replaced by `first | rfl | simp | infer_instance | (exact fun _ => by simp) | sorry`: ten declarations fell through to `sorry`; four (`jacobi_eq_of_initial_data`, `jacobi_eq_zero_of_nonpositive_curvature`, `rauch_norm_ge_of_sectional_le`, `three_simple_closed_geodesics`) left unsolved goals after `simp` made progress; none closed. No padding.

**Library declarations opened at the pins.** Tau Ceti: `TauCeti.Orientable` (`Geometry/Manifold/Orientation.lean:345`, R01), `sectionalCurvature` (`Curvature/Sectional.lean:70`, `⟨R(u,v)v,u⟩/det Gram`), `HasSectionalCurvatureAt` (140, over `LinearIndependent ℝ ![u, v]`), `HasConstantSectionalCurvature` (164), `IsConstantCurvatureTensor` (`Curvature/Metric.lean:141`), `ricciTensor` (`Curvature/Ricci.lean:57`, trace of `w ↦ R(w,u)v`, so `Ric = (n−1)g` on the unit sphere and the signs of `hRic` in `bishopGromov_flat` and `bonnetMyers_distance` are right), `riemannianVolume` (`VolumeDensity/Volume.lean:76`; its section needs `[IsManifold I 1 M] [MeasurableSpace M] [BorelSpace M] [LindelofSpace M] [IsContinuousRiemannianBundle …]`, which `bishopGromov_flat`'s binders supply, Lindelöf through second countability), `RiemannianIsometry` (`Riemannian/Isometry/Basic.lean:44`: a `Diffeomorph I J M N ∞` preserving `inner`, with no distance condition on the target, so the chordal `MetricSpace` on the sphere subtype is irrelevant to `killingHopf_sphere`), `sphereRoundMetric` and `instRiemannianBundleSphere` (`Riemannian/Sphere.lean:57, 76`, the induced round metric under `[Fact (finrank ℝ E = n + 1)]`), `UpperHalfSpace` (`Hyperbolic/UpperHalfSpace.lean:91`, "the open upper half-space of `E × ℝ` with the Riemannian metric `(‖dx‖² + dt²)/t²`; for `1 ≤ n`, `E = EuclideanSpace ℝ (Fin (n−1))` gives `ℍⁿ`", its `RiemannianBundle` instance at line 338 and `isPretransitive_isom` at 483; the file notes that curvature `−1` and completeness are not proved there, which the headline's statement does not need), `IsGeodesicCurveOn` (`Geodesic/Basic.lean:98`), `ODE_solution_unique_of_mem_Icc` (Mathlib `Analysis/ODE/ExistUnique.lean:251`), `IsPicardLindelof` (`Analysis/ODE/PicardLindelof.lean:79`), `IsLocalDiffeomorph` (`Geometry/Manifold/LocalDiffeomorph.lean:275`), `SimplyConnectedSpace` (`AlgebraicTopology/FundamentalGroupoid/SimplyConnected.lean:40`), `ContDiffBump` (`Analysis/Calculus/BumpFunction/Basic.lean:70`), `MvPolynomial.IsHomogeneous` (`RingTheory/MvPolynomial/Homogeneous.lean:46`), `MvPolynomial.pderiv` (`Algebra/MvPolynomial/PDeriv.lean:61`), `integral_image_eq_integral_abs_det_fderiv_smul`, `hasDerivAt_integral_of_dominated_loc_of_deriv_le`, `intervalIntegral.integral_eq_sub_of_hasDerivAt`, `addHaar_image_eq_zero_of_det_fderivWithin_eq_zero` (`MeasureTheory/Function/Jacobian.lean`), `Besicovitch.exist_disjoint_covering_families`, `IsCoveringMap` (`Topology/Covering/Basic.lean:287`), the flat `RiemannianBundle` on an inner product space (`Geometry/Manifold/Riemannian/Basic.lean:124`, the target of `killingHopf_euclidean`), `TauCeti.exists_isTubularNeighborhood_normalBundle` (`TubularNeighborhood/Euclidean.lean:454`), `manifoldMorseIndex`, `RealProjectiveSpace.fundamentalGroupMulEquivAt` (`…/FundamentalGroup/Basic.lean:134`, `2 ≤ n`), `pathLoopSpaceMulEquiv` (`HomotopyGroup/LoopSpace.lean:361`), `affineIsometryMulEquiv` (`Isometry/Euclidean.lean:123`), `unitSphereIsomHom` (`Isometry/Sphere.lean`), `completeSpace_ofRiemannianMetric_of_isPretransitive_isom` (`Riemannian/Homogeneous.lean:79`), `HyperbolicMetric` (`Riemannian/Hyperbolic.lean:46`), the `ClassicalGroups/WeylDimension/{OddOrthogonal,EvenOrthogonal}.lean` files. Absent at the pins (grep of `TauCeti/Geometry` and `Mathlib/Geometry`): any Laplacian on functions or forms, a second fundamental form, de Rham cohomology, an injectivity radius or cut locus, and any statement named Rauch, Bishop, Synge or Killing–Hopf; so the remaining "not statable" entries of the docstring hold and nothing stated duplicates the library.

**Cross-roadmap citations resolved.** On main: HopfRinow (Completed) Layers 0–4 (`Completed/HopfRinow/README.md` lines 229–495); SBC B1.4/B1.5 (line 31), B2 (33), B5.0 (199), B6.0 (214); MorseTheory M1, M2, M5 (611), M6 (649); AlgebraicTopology Stage 2 (326), 4.4 (358), 4.6 (271), 8.1, 8.5 (746), 8.11a (1949–1950 with `finiteSourceMappingCWType`, `basedLoopCWType`), `reducedSuspensionSphereHomeomorph` (544); DGFloer Layers 1–2 (442, 837); CharacteristicClasses C1.5 (59), C2.0 (552, `bundleDiskSphereRelCW` 553, `bundleDiskAttachmentCWModel` 586), C3; GeometricTopology Layer 1, 7, 8 and the smoothing-and-triangulation comparison (930); DifferentialGeometry Layers 5.6 (535), 10 (877), 12 (910); UniversalCovers (Completed); ComplexKahlerGeometry K5a, K7.1, K7.2 (1444); Yamabe Y9; SpinGeometry G1.2/G2.2/G3.4 as item labels of G1–G3; PDE Lanes A, D, E item labels; ConformalMapping (Completed) L3, L5 (133); GeometricMeasureTheory G1, G3, G6 (275); Isoperimetry I3, I6; GeneralizedCohomology G4.0b; TopologicalKTheory T6.6; OptimalTransport Layer 7 (901); ClassicalGroups Layers 3 and 5 (237, 297); CompactGroups complete reducibility; LieGroups Layers 0–2; AffineMorseLefschetz (line 21 still cites "RiemannianGeometry R5a/R6"); NoncommutativeGeometry. At open heads: PseudodifferentialOperators P1.0, P1.1, P7a; LieGroupoidsPoisson G0.0; PositiveMass §2.3 (line 49, which consumes this roadmap's Bishop–Gromov equality API); CalibratedGeometry C3 (line 42, consuming R5a.1), C6; VariationalMethods 2.3, 5.2 (line 882); UnboundedOperators §4.7 "Closed forms and the Friedrichs extension (UO-D06)" (its own pull request, heading at line 513 of `roadmaps show`); HomotopySpheres §3A.1 (663), §5.0, 4B; RicciFlow (Hamilton and the sphere theorem, lines 1 and 5). None is later than this roadmap in the merge order or cited upward; open-pull-request suppliers appear in `*Needs:*` lines only where the merge order lists them earlier or they are new roadmap folders.

**Ownership.** `roadmaps grep` over main and the 440 open heads for `Rauch`, `Bishop`, `Synge`, `Killing`, `space form`, `Hopf fibration`: the only hits outside this roadmap are consumers (RicciFlow lines 44, 1135, 1150, 1252; PositiveMass 42; HomotopySpheres 1575, 1607; DGFloer 1048, 1670; SymplecticFieldTheory 255) or unrelated words (Bishop–Phelps, "killing a class"); no roadmap states these theorems. Ownership against the open pull requests whose files the brief lists was checked through that index; the board packages index lists none in this area.

**Sources.** `lyons-hopf` line 347 (section "Seeing the Hopf fibration"), lines 374–380 (projection from `(1,0,0,0)` in quaternion coordinates), 391–402 (Investigation (L): the axis fibre projects to a line, the others to circles linked with it), 449–450 (Figure 10 caption): as the README's Hopf block says. `andrews-dg-ch16` line 101 (`K(σ)=R(e₁,e₂,e₁,e₂)`), lines 104–139 (p. 154, Proposition 16.2.1, the orthonormal polarization with the Bianchi step at line 134): the locator and the slot-convention caveat of README line 219–222 are right; the README's own identity is the sign-free four-vector form (table). O'Neill, Milnor and Fulton–Harris are `uncertified` in `sources.toml` and cited by locator; their formulas were recomputed (table).

**Adversarial table.** Rows cover the sampled targets, every declaration of `Suggested.lean`, the probes of R01 and R02 and the Checks added at this head.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| R1.2 `24r = B_Q(x,w;y,z) − B_Q(y,w;x,z)` | sum of six Kulkarni–Nomizu squares in ℝ⁵, random x,y,z,w | `24r = 369.854585`, RHS `369.854585`; skew `0`, pair `−1.6e−14`, Bianchi `7e−15` | holds | none |
| R1.2 Check 1 | K = 1, orthonormal x,y, z = y, w = x | `B_Q(x,x;y,y) = 16`, `B_Q(y,x;x,y) = −8`, difference `24 = 24·r(x,y,y,x)` | matches | none |
| R1.2 Check 3 (no Bianchi) | `r = ω⊗ω` on ℝ⁴ | `B₁ = 8`, `B₂ = −8`, RHS `16`, `24r = 24`; Bianchi sum `1 ≠ 0`, skew and pair `0` | fails as the Check says | none |
| `constant_sectional_tensor_iff` | dim 0, 1 (no independent pair; tensor identity `R(w,u)v = κ(⟨u,v⟩w − ⟨w,v⟩u)` with w,u parallel gives 0 = 0), dim ≥ 2 | both sides true in dim ≤ 1; R1.2 in dim ≥ 2 | holds | none |
| `schur` | n = 2 excluded by `3 ≤ finrank`; n ≥ 3 connected | planes exist, κ constant | matches R1.3 | none |
| `IsJacobiFieldOn` | unit sphere, `J = sin t·E` | `D_t²J = −J`, `R(J,γ′)γ′ = J` with the pin's `R(u,v)w`, sum 0 | right sign; no README Checks (R03) | R03 |
| `jacobi_eq_of_initial_data`, `exists_jacobi_initial_data` | dim 1 (`X = (a+bt)γ′`); constant geodesic | linear ODE on a fixed fibre, unique and solvable on `Icc a b` | hold | none |
| `jacobi_eq_zero_of_nonpositive_curvature` | dim 1; flat ℝⁿ | `X = (a+bt)γ′` zero at a,b ⇒ 0 | holds | none |
| `modelSine` API and Checks | κ = 4, −4, 0; c = 3, κ = 4, −4, 0, t = 0.7 | `s_4(π/4) = 0.5` vs `sin(π/2) = 1`; `s_4′(0) = 1.0000`, `s_{−4}′(0) = 1.0000`; `s_4(π/2) = 6e−17`; `s_{κ/9}(2.1) = 3 s_κ(0.7)`: `1.47817 = 1.47817`, `2.85645 = 2.85645`, `2.1 = 2.1` | matches | none |
| Rauch guard Check | sphere of radius 5/2, K = 4/25 ≤ 1 | field `(5/2)sin(2t/5)` at `5π/2`: `3e−16`; `s_1(5π/2) = 1`; `1·1 ≤ 0` false | guard needed, as the Check says | none |
| `rauch_norm_ge_of_sectional_le` | dim 1 (`hK` reads `0 ≤ κ·0`); unit sphere κ = 1, b < π; κ < 0 with dependent u,v | dim 1: normal initial derivative forces `X ≡ 0`, `0 ≤ 0`; sphere: equality `|J| = sin t·|J′(0)|`; RHS of `hK` is `κ·0 = 0` on dependent pairs | true, model-side conjugacy guard right (do Carmo Ch. 10) | none |
| `bishopGromov_flat` | n = 0 point; n = 1 line and circle of length 7; unit `S²`; flat torus of side 1 | point: `vol/1 ≤ vol/1`; line `2`; circle `2,2,2,2,1.75,0.7` at r = 0.5…10; `S²`: `3.139, 3.0767, 2.8884, 2.2245, 1.3893` at r = 0.1…3; torus `3.1416, 3.1416, 2.7778, 1.0` at r = 0.3, 0.5, 0.6, 1 | nonincreasing in every case, true beyond README's n ≥ 2 | none |
| Bishop–Gromov curved probe (R02) | unit `S²`, κ = 1; circle; n = 0 | `2π(1−cos r)/(1−cos r) = 6.2832` at r = 0.5, 1, 2, 3; circle as above; point `vol/s ≤ vol/r` | true, elaborates | state it |
| `cartanHadamard_isCoveringMap` | flat ℝⁿ; dim 0; `ℝ → S¹` | `exp_0 = id`; `{0} → pt`; the covering | holds | none |
| `bonnetMyers_distance` | unit `Sⁿ`, `λ = n−1`, n = 2 | `π√(1/1) = π` = diameter | sharp | none |
| Synge probe (R01) | `RP²` (K = 1, even, non-orientable); `RP³` (K = 1, odd, π₁ = ℤ/2); `S²`; dim 0 | `RP²` excluded by `Orientable`, `RP³` by `Even`; `S²` simply connected; dim 0 excluded by `0 < finrank`; odd corollary: `RP³` orientable (det of antipodal map `(−1)⁴ = 1`) | true, elaborates | state it |
| `killingHopf_euclidean` | n = 0; n = 1 (circle excluded by simple connectivity); flat torus (excluded) | point ≅ `ℝ⁰`; line ≅ `ℝ`; torus has π₁ = ℤ² | holds | none |
| `killingHopf_sphere` | n = 1 (`S¹` not simply connected, line not a sphere) | guard `2 ≤ n` sharp; `Sⁿ` simply connected for n ≥ 2 | holds | none |
| `killingHopf_hyperbolic` | n = 0 (`n − 1 = 0`, target `UpperHalfSpace ℝ⁰` is 1-dimensional); n = 1 | guard `1 ≤ n` sharp; `ℍ¹ = (0,∞)` with `dt²/t²` ≅ `ℝ` by `log` | holds | none |
| `three_simple_closed_geodesics` | round `S²`; constant curve | three great circles; constant curve fails `InjOn` on `Ico 0 T` | holds | none |
| `riemannianDist_eq_sSup_smooth` | `f = 0`; `(0,1) ⊂ ℝ`, `f = id` | `sup = |x − y|` without completeness | holds | none |
| Projective block `K ∈ [1,4]`, `−½Re tr(X²) = |Xe_{d+1}|²` | d = 2, random `v ∈ ℂ²`; `u(1)` element `0.7i` | `−½Re tr X² = 11.670179 = |Xe₃|²`; `u(1)`: `0.245` vs `0.49` (half, as stated); `CP¹` radius ½ area `π = π` | matches | none |
| O'Neill `K_B = K_M + ¾|[X,Y]^v|²` | `[X,Y]^v = 2⟨X,JY⟩Jz` | `K = 1 + 3⟨X,JY⟩²`, `Y ⊥ JX`: 1, `Y = JX`: 4 | matches | none |
| Hopf `j(u) ∈ S³`, `σ(j(u))` | `u = 0.3 − 0.4i`, `0`, `1`, `0.8i` | `|j|² = 1.0` each; `σ(j(u)) = (0.3, −0.4, 0)`, `(0,0,0)`, `(1,0,0)`, `(0,0.8,0)`; `j(0) = (0,−i)`, `j(1) = (1,0)` | matches | none |
| orbit relation | `u = 0.3 − 0.4i` | second coordinate `−0.6i = −is`, `s = 0.6` | unique | none |
| torus slope | `r = 0.6`, `θ = 0.9` | `(α,β) = (0.9, 0.9)` | diagonal | none |
| `H`, north fibre, framing | `ζ = e^{0.7i}`, `b = (1,0)` | `H(0,ζ) = (0,0,1)`, `H(1,0) = (0,0,−1)`; `dH(ζ/2,0) = (1.0, 0, −2.5e−7)`, `dH(iζ/2,0) = (0, 1.0, −2.5e−7)`; `det R = +1` | matches | none |
| R3.1 Checks | `t²v`; `γ_k`, k = 5 | `Energy = 0.66667 = 2/3`; `sup γ_5 = 0.1 = 1/(2k)`, endpoints 0 | match; bound wording (R04) | R04 |
| R3.2 Checks | circle, `T = 1`, `t = (0,½,1)`, c = 20; r = 2 | `E_Δ = 19.7392 = 2π² < 20`; `ρ > 4.4721 > π/2 = 1.5708`; `√2·d` vs `d` | match | none |
| R5a Checks | unit sphere; Clifford torus; cylinder | `K = 1`; `K = 1 + (1)(−1) − 0 = 0`; `K = 0`, `H = −ν/2` | match | none |
| R5b Checks | Clifford torus; equator; φ = 1 | `Scal_P = 6 − 4 + 0 − 2 = 0`; potential `2 + 2 = 4`; `0 ≥ 8·Area` false | match; "every closed minimal hypersurface" overstates (R04) | R04 |
| R7 Clifford Check | `e¹∧e²` in ℝ² | `a₂*a₁*a₁a₂(e¹∧e²) = e¹∧e²`, `a₁*a₂*a₁a₂(e¹∧e²) = −e¹∧e²`; `Σa_i*a_i e¹ = e¹` | matches | none |
| R7 section-norm Check | `φ = x` on ℝ | `−2 + 2 = 0 = 2⟨0,φ⟩`; negative Laplacian gives 4 | matches | none |
| R8.1 Checks | m = 1, 2; coefficient | `dim H_d = 1,2,2,2,2` and `1,3,5,7,9`; `2·1·(0+3+2−2) = 6`, `2·(2+2+2−2) = 8` | match | none |
| R8.3 Checks | `θ = 0.6`, `x = (0.37,−0.81)` | `Ru₁/u₁ = 0.82534 − 0.56464i = e^{−0.6i}`, `Rv₁/v₁ = e^{0.6i}`; `KR_θK = R_{−θ}` entrywise; `Ku₁ = (1,−i) = 2v₁`, `Kv₁ = u₁/2`; `B(u₁,v₁) = 1`, `B(u₁,u₁) = 0`; `(R·p)/p = e^{0.6i}`, `(R·q)/q = e^{−0.6i}`; dims `1,3,5,7,9` (N = 3), `1,4,9,16,25 = (d+1)²` (N = 4); `det K = −1` for N = 2, 3, `det(−K) = 1` | match | none |
| R6 regression `I_M(X,X) = 1/b − 1` | unit circle, `X = (1−t/b)e₂` | `∫₀ᵇ(1/b)² = 1/b`, boundary term 1 | matches | none |

**Read but not re-derived.** R4.9.0–R4.9.7, R5a.2's helicoid/paraboloid/Clairaut computations, R7.1–R7.7's Weitzenböck spectral bounds and R8.4–R8.5 are unchanged since main; they were read for policy, citation and shape defects (R03) and their analytic estimates were not recomputed in this round.

## Not verifiable

- J. M. Lee, *Introduction to Riemannian Manifolds*, 2nd ed.: paywalled; the principal convention reference, cited by locator only.
- J. Milnor, *Morse Theory*: JSTOR, paywalled; §6 Lemma 6.5 and Theorem 6.6 (R6) and §§13–18 (R3.2) cited by locator; `sources.toml` records it `uncertified`.
- B. O'Neill, *The fundamental equations of a submersion* (1966): Project Euclid landing page only; Theorem 2 and Corollary 1 cited by locator (`uncertified`); the formula was verified by computation (table).
- W. Fulton, J. Harris, *Representation Theory*: Springer, paywalled; Lecture 18 §18.1 and Lecture 19 cited by locator (`uncertified`); the convention was verified by computation (table).
- Lyons, published pagination (Mathematics Magazine 76, 87–98): only the arXiv v1 text was read; its own preface (`lyons-hopf` lines 9–11) says it differs from print only in minor details and places Figure 10 at printed p. 96.

## Source issues

- **Misprint** in lyons-hopf at Figure 10, printed p. 96 (published version): the label of the 3-sphere carries a stray minus sign; it should read S³; affects nothing; corrected in print at the arXiv v1 preface (lyons-hopf lines 20–22).
- **Misprint** in lyons-hopf at the quaternion product display, printed p. 89 (published version): the middle line of a worked product has two slips; it should be the three-line computation the preface gives; affects nothing; corrected in print at the arXiv v1 preface (lyons-hopf lines 13–19).
- **Misprint** in andrews-dg-ch16 at §16.1, printed p. 151 (andrews-dg-ch16 line 12): the definition of `R(X,Y)Z` reads `∇_Y(∇_X Z) − ∇_Y(∇_Y Z) − ∇_[Y,X] Z`; it should be `∇_Y(∇_X Z) − ∇_X(∇_Y Z) − ∇_[Y,X] Z`; affects nothing (the sign convention is clear from the rest of the lecture).
