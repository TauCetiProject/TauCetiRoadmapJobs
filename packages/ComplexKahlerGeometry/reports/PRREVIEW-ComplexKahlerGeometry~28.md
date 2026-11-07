# Review of ComplexKahlerGeometry (pull request #1234 at f44628f)

**Verdict:** needs changes

Incremental re-review of the 86 lines changed in `TauCetiRoadmap/ComplexKahlerGeometry/` since `0cad4c7`: the RealAlgebraicGeometry link (`README.md:36`), the K4.P ownership paragraphs (`README.md:589–597, 668–675`) and the module form of `Suggested.lean` (lines 1–5, 51). The same range merges main, which bumps the pins from Tau Ceti `a91d3aa` / Mathlib `6b7abb3` to Tau Ceti `2fd255d` / Mathlib `1b1ccf4`. R01, R03 and R04 come from that bump. The library claims of `Suggested.lean` that were true at the old pin are false at the new one. The previous review could not have raised them.

## R01 (P2) — Headlines now statable at the pins are absent, and the docstring says they cannot be stated

Location: `TauCetiRoadmap/ComplexKahlerGeometry/Suggested.lean:19–27`, quoted in part: "`SmoothAlmostComplexStructure` has no comparison with the almost-complex structure induced by a complex `IsManifold` atlas … the pinned libraries have no `(p,q)`-form carrier or Dolbeault complex".

Claim: at Tau Ceti `2fd255d` both reasons are false. Newlander–Nirenberg (K1, `README.md:186–187`), the polydisc Dolbeault–Grothendieck lemma (K2, `README.md:203–204, 211`) and "odd real Betti numbers are even" (K6.1, `README.md:1456–1457`) are README headlines. Each of them can now be stated on native carriers, and none is stated.

Witness: Tau Ceti `2fd255d` has `SmoothAlmostComplexStructure.ofComplexManifold` (`TauCeti/Geometry/Manifold/Complex/AlmostComplexStructure.lean:76`), `SmoothForm.IsOfType` (`…/DifferentialForm/AlmostComplexType.lean:201`), `.delBar` (`…/Dolbeault/Basic.lean:95`) and `deRhamCohomology` (`…/DeRham/Basic.lean:127`). None of them is in `a91d3aa`. #1807's `Suggested.lean:76, 101, 288` states the same theorems.

Repair: state the three theorems. The block below elaborates in module form at the pins, with only `sorry` warnings (exit 0, scratch copy, `lake env lean`). The imports go in the file's import block:

```lean
public import TauCeti.Geometry.Symplectic.Manifold.Nijenhuis
public import TauCeti.Geometry.Symplectic.Manifold.JHolomorphic
public import TauCeti.Geometry.Manifold.Complex.AlmostComplexStructure
public import TauCeti.Geometry.Manifold.DifferentialForm.Dolbeault.Basic
public import TauCeti.Geometry.Manifold.DeRham.Basic

open TauCeti

theorem newlander_nirenberg
    {E H M : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    [TopologicalSpace H] {I : ModelWithCorners ℝ E H} [I.Boundaryless]
    [TopologicalSpace M] [T2Space M] [ChartedSpace H M] [IsManifold I ∞ M]
    {n : ℕ} (hdim : Module.finrank ℝ E = 2 * n)
    (J : SmoothAlmostComplexStructure I M) (hJ : J.nijenhuis = 0) (x : M) :
    ∃ φ : M → (Fin n → ℂ), IsLocalDiffeomorphAt I 𝓘(ℝ, Fin n → ℂ) ∞ φ x ∧
      ∃ U ∈ nhds x, IsPseudoholomorphicOn J
        (SmoothAlmostComplexStructure.ofComplexManifold (Fin n → ℂ) (Fin n → ℂ)) φ U := by
  sorry

def polydisc {n : ℕ} (c : Fin n → ℂ) (r : Fin n → ℝ) : TopologicalSpace.Opens (Fin n → ℂ) :=
  ⟨Set.univ.pi fun k ↦ Metric.ball (c k) (r k),
    isOpen_set_pi Set.finite_univ fun _ _ ↦ Metric.isOpen_ball⟩

theorem dolbeault_grothendieck_polydisc {n : ℕ} (c : Fin n → ℂ) (r : Fin n → ℝ) (p q : ℕ)
    (φ : SmoothForm 𝓘(ℝ, Fin n → ℂ) (polydisc c r) ℂ (p + q + 1))
    (hφ : φ.IsOfType (SmoothAlmostComplexStructure.ofComplexManifold _ (polydisc c r)) p (q + 1))
    (hφc : (SmoothAlmostComplexStructure.ofComplexManifold _ (polydisc c r)).delBar φ = 0) :
    ∃ ψ : SmoothForm 𝓘(ℝ, Fin n → ℂ) (polydisc c r) ℂ (p + q),
      ψ.IsOfType (SmoothAlmostComplexStructure.ofComplexManifold _ (polydisc c r)) p q ∧
      (SmoothAlmostComplexStructure.ofComplexManifold _ (polydisc c r)).delBar ψ = φ := by
  sorry

theorem even_finrank_deRhamCohomology_odd [CompactSpace M]
    (form : SmoothTwoForm I M) (J : SmoothAlmostComplexStructure I M)
    (hK : IsKahler form J) (k : ℕ) :
    Even (Module.finrank ℝ (deRhamCohomology I M (2 * k + 1))) := by
  sorry
```

The last theorem goes in the `LocalGeometry` section, with `IsKahler` as R03 rewrites it. `#check @` keeps `[FiniteDimensional ℝ E] [T2Space M] [I.Boundaryless] [CompactSpace M]`. Name the three theorems in K1, K2 and K6.1 of the README. Rewrite the docstring's first two bullets and recheck the rest at `2fd255d`:

- The Dolbeault cohomology quotients behind finiteness, Serre duality and Hodge symmetry are submodule quotients of the pinned `delBar`. #1807's `Suggested.lean:199–227` states them.
- The K4.P bullet should say that `TauCeti.holomorphicStructureSheaf` exists (`…/StructureSheaf/Basic.lean:68`) and that what is missing is its sheaf of units.
- The K7 bullet's reason is no longer that a carrier is absent. `Projectivization.instIsManifold` exists (`TauCeti/Geometry/Manifold/Instances/Projectivization.lean:82`), but `import Mathlib` together with it fails: both define `Projectivization.instTopologicalSpace`.

If this pull request is rebased on #1807 (R07), take #1807's statements instead and do not restate them.

Test: on ℂ with `J = i`, `n = 1`, `φ = id`. Dolbeault–Grothendieck with `n = 1, p = q = 0, φ = z̄ dz̄`: `ψ = z̄²/2`. Odd Betti on `T²`: `b₁ = 2`. Values are in the table.

## R02 (P2) — Two owners of the exponential sequence and its Chern-class identification

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:589–594`: "K4.P owns, on every complex manifold, the holomorphic exponential sequence … It answers K3SurfacesAndSymplecticBoundedness's integral-Chern comparison request, and ComplexComparisonPartII C5.4, K3Surfaces 1.1 and GeometricQuantization §3.3 consume this construction".

Claim: ComplexComparisonPartII C5.4 (#848) also owns this object on every complex manifold. Every named consumer takes it from C5.4, and no request from K3SurfacesAndSymplecticBoundedness exists.

Witness: `ComplexComparisonPartII/README.md:145, 3601–3610` (#848) proves the connecting map equals `integralLineBundleChernClass`. `K3Surfaces/README.md:13–14, 361` (#1285), `GeometricQuantization/README.md:19–21, 649` (#1186) and `K3SurfacesAndSymplecticBoundedness/README.md:200` (#1375) cite C5.4. None cites K4.P.

Repair: choose one owner and make every sentence agree with that choice.

- (a) K4.P stays the owner. It is earlier in the order, because this roadmap is on main and #848 consumes its K2–K4.
  - Replace `README.md:592–594` with "ComplexComparisonPartII C5.4 (for its analytic-space and cycle comparisons), K3Surfaces 1.1 and GeometricQuantization §3.3 consume this segment and its `c₁` identification".
  - Delete the K3SurfacesAndSymplecticBoundedness clause.
  - Say in the pull request's merge-order paragraph that #848, #1285 and #1186 must cite K4.P in place of C5.4's exponential items.
- (b) K4.P cedes the object.
  - K4.P keeps `Pic_hol(M)≃H¹(M,𝒪×)` (`README.md:599–606`; K3Surfaces lines 14–16 assign it to this roadmap), units and automorphisms.
  - The exponential segment (`README.md:608–624`), the `c₁` identification, the conditional isomorphism and the continuous-line corollary (`625–657`), and Checks 2–4 (`685–694`) go to C5.4. This roadmap must not consume them, because that would bring back the cycle with ComplexComparisonPartII that the earlier round removed.

Test: afterwards, `roadmaps grep -i 'exponential sequence'` over main and the open heads shows one owner of the complex-manifold segment.

## R03 (P3) — `nijenhuisOnFields` and its tensoriality restate the pinned Nijenhuis tensor

Location: `Suggested.lean:66–86` (`nijenhuisOnFields`, `nijenhuisOnFields_eq_of_eq`); `README.md:172–173`.

Claim: Tau Ceti `2fd255d` defines the Nijenhuis tensor through `TensorialAt.mkHom₂` and proves that its value on fields is this exact expression. Tensoriality therefore follows in three lines.

Witness: `TauCeti/Geometry/Symplectic/Manifold/Nijenhuis.lean:158, 170` (`nijenhuis`, `nijenhuis_apply`). In a scratch copy, `nijenhuisOnFields_eq_of_eq` is proved by two `nijenhuis_apply` instances and `simp only [nijenhuisOnFields, ← h1, ← h2, hXx, hYx]` (exit 0, no `sorry`).

Repair:

- Delete both declarations.
- Define `IsKahler form J := form.IsClosed ∧ form.Compatible J ∧ J.nijenhuis = 0`. It elaborates, and `nijenhuis_eq_zero_iff` (line 188) with vector extension makes it equivalent to the field-wise condition.
- In `README.md:170–180`, consume `nijenhuis`, `nijenhuis_apply`, `nijenhuis_antisymm`, the `baseChange_nijenhuis_*` type identities and `delBar_delBar_apply`/`del_del_apply` (`…/Dolbeault/Basic.lean:405, 414`), and keep only what they do not give.

Test: flat ℂ with `J = i`. Both forms of the condition give 0.

## R04 (P3) — `realified_isManifold_analytic` closes in one tactic at the pin

Location: `Suggested.lean:139–146`; `README.md:313–320`.

Claim: Tau Ceti `2fd255d` proves exactly this statement.

Witness: `exact IsManifold.restrictScalars_of_ne_zero (m := ∞) ω (by simp) inferInstance` closes it in a scratch copy (exit 0). Source: `TauCeti/Geometry/Manifold/Complex/Analytic.lean:115`.

Repair:

- Delete it from `Suggested.lean` and from the docstring's list at line 14.
- In K3.0, consume `IsManifold.restrictScalars_of_ne_zero`, `TauCeti.contMDiff_iff_mdifferentiable` (`Analytic.lean:174`) and Osgood's `ContinuousOn.analyticAt_of_differentiableAt_update` (`TauCeti/Analysis/Complex/CauchyIntegralPolydisc.lean:292`). Drop the targets they already prove, which are "Prove Osgood separate holomorphy" and the realified atlas.

## R05 (P3) — Two definitions make no headline statable (re-raised from the previous review's R03)

Location: `Suggested.lean:182–195` (`complexBesselMultiplier`, `complexBesselDistributionMultiplier`); `README.md:957–958`.

Claim: no theorem in the file mentions them.

Witness: `grep -n complexBesselMultiplier Suggested.lean` returns only the two definitions.

Repair: delete them and their backticks in `README.md:957–958`, or state the imaginary-axis `L²` isometry with `complexBesselMultiplier`. The previous review gave that signature, which elaborates at the old pin.

## R06 (P3) — A Check names the wrong "plausible wrong model" (re-raised from the previous review's R04)

Location: `README.md:1787–1788`: "a convention taking `F(A_t x)=t^(−k)F(x)` would attach `V` instead of `V*` to `k=1`".

Claim: under that convention the `k=1` space is `{F : F(tv)=t⁻¹F(v)}`, which is zero, and `V*` sits at `k=−1`.

Witness: for `φ=v₁`, `φ(tv)=tφ(v)`, which is degree `+1` under the README's convention and `−1` under the inverse one.

Repair: "a convention taking `F(A_t x)=t^(−k)F(x)` would make the `k=1` space zero and put `V*` at `k=−1`".

Test: `d=2`, `φ=v₁`.

## R07 (P3) — Two other open revisions of this roadmap conflict with this one, and no order is stated

Location: pull request description (merge-order paragraph); `scratch/overlaps.md`.

Claim: #1807 and #1398 rewrite both files of this folder and conflict with this head. Neither this description nor the README says which pull request is rebased on which.

Witness: #1807's README is a full rewrite with a different Summary, Scope and Layers, and contains no K4.P, TautologicalIncidence, RationalQuartic or FlatDegreeZero. #1398 differs from this head in 2008 diff lines.

Repair: state the order in the description. Given R01, the shorter path is to rebase this pull request's insertions (K4.P, K6.0 frames, the Fubini–Study block, K7.2.TautologicalIncidence, K7.2.RationalQuartic, K7.FlatDegreeZero) onto #1807 and not to restate its `Suggested.lean`.

## Previous findings

- R01 — not repaired: `README.md:591–592` still reads "It answers K3SurfacesAndSymplecticBoundedness's integral-Chern comparison request". #1375's head now makes no request (its line 200). Carried into R02.
- R02 — partly repaired: the SchubertGeometry sentence is fixed (`README.md:673–675`: "neither an input nor a consumer of K4.P"). "ComplexComparisonPartII C5.4, K3Surfaces 1.1 and GeometricQuantization §3.3 consume this construction" (`README.md:593–594`) is still false at all three heads. Carried into R02.
- R03 — not repaired: `Suggested.lean:182–195` is unchanged and nothing uses the two multipliers. Carried as R05.
- R04 — not repaired: `README.md:1787–1788` still reads "would attach `V` instead of `V*` to `k=1`". Carried as R06.
- R05 — not repaired: `Suggested.lean:23–27` still withholds every `(p,q)` statement. At the bumped pin the general form can be stated on native carriers. Carried into R01, which supersedes the coordinate `(0,1)` version.

## Verified sound

**Gate** (rerun on `f44628f`): `set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`. The worker's gate also reports `build=0`.

**Dependency check**, exact output:

```text
depcheck: 239 roadmaps, 2361 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line.

**Outside the folder**: `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/ComplexKahlerGeometry'` is empty. The 651 outside paths in the change summary come from merging main. `PROGRESS.md` and `STATUS.md` in the folder are main's generated files and are not in the pull request's diff against main.

**Lean**: `lake env lean TauCetiRoadmap/ComplexKahlerGeometry/Suggested.lean` exits 0 with five `sorry` warnings (lines 78, 113, 142, 153, 177) and nothing else. The module form (`module`, `public import Mathlib`, two `public import TauCeti.*`, `@[expose] public noncomputable section`) passes the gate's import checks. Both Tau Ceti modules exist at `2fd255d`; the `AlmostComplex` to `AlmostComplex.Basic` rename comes from main's pin bump.

**Section-binder audit** (`scratch/signatures.md`, 11 elaborated types):

- Unchanged from the previous review. `nijenhuisOnFields` and `IsKahler` drop `[CompleteSpace E] [FiniteDimensional ℝ E] [T2Space M] [I.Boundaryless]`, which their types do not need. The two multipliers drop `[CompleteSpace G]`, which the pinned `fourierMultiplierCLM` does not need. The theorems keep their binders.
- The "structure `induced`" at line 21 is a misparse of the docstring word "induced".
- After R01/R03, `#check @IsKahler` shows `[FiniteDimensional ℝ E]` kept, as the native `nijenhuis` requires.

**Padding probes at the new pin** (scratch copies):

- `realified_isManifold_analytic`: closed by one `exact` (R04).
- `nijenhuisOnFields_eq_of_eq`: three lines (R03).
- `complexBesselSymbol_temperate`: `fun_prop`, `unfold; fun_prop` and `simp [complexBesselSymbol]` all fail. Mathlib `Analysis/Distribution/TemperateGrowth.lean:327` has only the real-exponent `hasTemperateGrowth_one_add_norm_sq_rpow`, so this is not padding.
- `hartogs_extension_across_point` and `exists_mixed_parameter_dbar_solution`: neither pin has a complex-analytic Hartogs theorem (the Tau Ceti hits are `AlgebraicGeometry/…/Hartogs`) or a Cauchy–Green `∂̄` solver, so neither is padding.

**Pinned declarations opened** (Tau Ceti `2fd255d`, Mathlib `1b1ccf4`; each file is new since `a91d3aa`, checked with `git cat-file`):

| Declaration | File:line | What it gives / lacks |
| --- | --- | --- |
| `IsManifold.restrictScalars_of_ne_zero`, `TauCeti.contDiffGroupoid_eq_of_ne_zero`, `TauCeti.contMDiff_iff_mdifferentiable` | `TauCeti/Geometry/Manifold/Complex/Analytic.lean:115, 88, 174` | complex `C^m`, `m≠0`, finite-dimensional ⇒ real `C^n` every `n`; holomorphic ⇔ `C^n` |
| `ContinuousOn.analyticAt_of_differentiableAt_update`, `…analyticOnNhd…`, `TauCeti.analyticOnNhd_iff_continuousOn_and_differentiableAt_update` | `TauCeti/Analysis/Complex/CauchyIntegralPolydisc.lean:292, 311, 318` | Osgood, on open sets |
| `SmoothAlmostComplexStructure.nijenhuis`, `nijenhuis_apply`, `nijenhuis_eq_zero_iff`, `nijenhuis_antisymm`, `baseChange_nijenhuis_antiholomorphicPart_antiholomorphicPart` | `TauCeti/Geometry/Symplectic/Manifold/Nijenhuis.lean:158, 170, 188, 207, 346` | needs `FiniteDimensional ℝ E`; no `1/4`; Mathlib bracket sign |
| `SmoothAlmostComplexStructure.ofComplexManifold`, `nijenhuis_ofComplexManifold` | `TauCeti/Geometry/Manifold/Complex/AlmostComplexStructure.lean:76, 221` | `J = i` on the realified manifold; integrable |
| `IsPseudoholomorphicOn`, `IsPseudoholomorphicWithinAt` | `TauCeti/Geometry/Symplectic/Manifold/JHolomorphic.lean:96, 81` | derivative intertwines the structures |
| `SmoothForm.IsOfType`, `typeProjection` | `TauCeti/Geometry/Manifold/DifferentialForm/AlmostComplexType.lean:201, 282` | `p+q=k` and the `J`-derivation eigenvalue `(p−q)i` |
| `SmoothAlmostComplexStructure.del`, `.delBar`, `delBar_delBar_apply` | `…/DifferentialForm/Dolbeault/Basic.lean:86, 95, 405` | `∂̄²f(v,w) = −¼∂f(N(v,w))`, the README K1 pin |
| `delBar_delBar_ofComplexManifold` | `…/Dolbeault/ComplexManifold.lean:166` | `∂̄²=0` on complex manifolds (read; olean not built) |
| `TauCeti.deRhamCohomology` | `TauCeti/Geometry/Manifold/DeRham/Basic.lean:127` | real, homology of the de Rham complex |
| `TauCeti.SmoothForm.instModule` | `…/DifferentialForm/MapCoeff.lean:273` | the K1 complex module |
| `TauCeti.holomorphicStructureSheaf` | `…/Complex/StructureSheaf/Basic.lean:68` | `TopCat.Sheaf CommRingCat`; no units sheaf |
| `Projectivization.instIsManifold` | `TauCeti/Geometry/Manifold/Instances/Projectivization.lean:82` | cannot be imported with `import Mathlib` (environment clash) |

**Citations resolved** (changed passages and findings):

| Citation | Copy | Result |
| --- | --- | --- |
| RealAlgebraicGeometry Layer 7, new path `../../Completed/RealAlgebraicGeometry/README.md#layer-7-…` | main `eaf17b1` | the heading is at `Completed/RealAlgebraicGeometry/README.md:479`; "Analytic inversion and implicit roots" and complexification are at lines 519–537 |
| GeometricQuantization §3.3 | #1186 `663f762`, `README.md:624–651` | proves `H^q(K/H,𝒪)=0` by harmonic invariance and `T`-weights, then `Pic_hol≃H²≃P_I`, as the README says, but from C5.4's segment (R02) |
| SchubertGeometry S5 | main `README.md:70–76`; #1224 `README.md:23` | algebraic splitting; "No layer here constructs or consumes a holomorphic Picard group", so the new sentence is correct |
| ComplexComparisonPartII C5.4 | #848 `1a0a82d`, `README.md:145, 3590–3625` | owns the exponential/`c₁` identification on complex manifolds; no `K4.P` anywhere (R02) |
| K3Surfaces 1.1; K3SurfacesAndSymplecticBoundedness | #1285 `23b0674` `README.md:13–17, 349, 361`; #1375 `c1d6da0` `README.md:9, 200` | `Pic_hol≃H¹(𝒪×)` assigned to this roadmap; exponential/`c₁` to C5.4; `integral-topology` absent (0 hits) |
| Resolver leads `ComplexManifolds M2.1`, `CompactFormPair.operatorDomainV` | main `ComplexManifolds/README.md:197–203`; #1028 `VariationalMethods/README.md:845` | false positives: Milestone 2 item 1, and a VariationalMethods target |

**Ownership by object**:

- `roadmaps overlaps` reports no id dropped either way.
- Of the nearest roadmaps in vocabulary, ComplexComparisonPartII is the one with a shared object, the exponential sequence (R02).
- GeometricQuantization and the others hand nothing back to this roadmap.
- #1807 and #1398 are revisions of this roadmap itself (R07).

**Seeded sample.** None of the fifteen sampled targets falls in the changed passages. Their locator checks and adversarial rows carry over from the previous review, which read `ballmann-kahler` 1990–2016, `berwick-evans-tripathy` 287–292, `knutson-borel-weil` 12–72 and `lojasiewicz-triangulation` 512–515. The README flags no locator as unverified, and the changed passages add none.

**Adversarial pass.** New rows cover the changed statements and every statement re-evaluated at the new pins. Rows marked (r7) carry over from the previous review for untouched statements.

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| `newlander_nirenberg` (proposed) | `M=ℂ`, `J=i`, `n=1`, `φ=id` | `finrank ℝ ℂ=2=2·1`; `N=0` (`nijenhuis_ofComplexManifold`); `dφ=id` intertwines `i`,`i` | Pass | R01 |
| same, degenerate | `E=0`, `n=0`; `E=ℂ`, `n=2` | discrete `M`, constant `φ` to the point is a local diffeo; `2≠4` excluded by `hdim` (no local diffeo `ℝ²→ℝ⁴`) | Pass | R01 |
| same, negative | `N_J≠0` | pulling back `i` by a local pseudoholomorphic diffeo gives `N=0`; excluded by `hJ` | Pass | R01 |
| `dolbeault_grothendieck_polydisc` (proposed) | `n=1,p=q=0`, `φ=z̄dz̄` | `ψ=z̄²/2`: `dψ(v)=z̄v̄`, `dψ(iv)=−iz̄v̄`, `(z̄v̄+i(−iz̄v̄))/2=z̄v̄` ✓; `∂̄φ` is a `(0,2)`-form, 0 in dimension 1 | Pass | R01 |
| same, degenerate | some `r k≤0`; `q+1>n`; `n=0` | empty set, `φ=0=∂̄0`; no nonzero `(p,q+1)` forms; point, positive degree 0 | Pass | R01 |
| same, negative | `n=2`, `φ=z̄₂dz̄₁` | `∂̄φ=dz̄₂∧dz̄₁≠0`, excluded by `hφc` | Pass | R01 |
| `even_finrank_deRhamCohomology_odd` (proposed) | `T²`, `ω=dx∧dy`, `J=i`; empty `M` | `b₁=2`, `b₃=0`; `finrank 0` | Pass | R01 |
| same, negative | Hopf `S¹×S³`; Kodaira–Thurston | `b₁=1`, `b₁=3`: odd, and neither admits `IsKahler` | Pass | R01 |
| `realified_isManifold_analytic` | one `exact` | `(∞ : WithTop ℕ∞)≠0` by `simp`; closes | Padding | R04 |
| `nijenhuisOnFields_eq_of_eq` | three-line proof | `nijenhuis_apply` at `(X,Y)` and `(X',Y')`, rewrite `X x=X' x` | Duplicate | R03 |
| `IsKahler` field-wise vs `J.nijenhuis=0` | flat ℂ, `J=i` | both 0; equivalence by `nijenhuis_eq_zero_iff` and `extend` | Pass | R03 |
| `complexBesselSymbol_temperate` at new pin | `fun_prop`; `simp` | both fail; `z=−3`: `(1+‖ζ‖²)^(−3/2)`; `z=5i`: modulus 1 | Pass | — |
| K4.P owner (`README.md:589–594`) | #848, #1285, #1186, #1375 heads | owners of the exponential `c₁` identification: K4.P and C5.4 (2); citations of K4.P by the three consumers: 0 | Two owners | R02 |
| K3SurfacesAndSymplecticBoundedness request | #1375 | `integral-topology` hits: 0; line 200: no contract with this roadmap | False | R02 |
| GeometricQuantization §3.3 (`README.md:670–672`) | #1186 lines 640–651 | vanishing `q>0` ✓; `Pic_hol(K/H)≃H²≃P_I` ✓; segment source C5.4, not K4.P | Partly | R02 |
| SchubertGeometry S5 (`README.md:673–675`) | main S5 item 5; #1224 line 23 | algebraic `H^q(X(w),Lλ)=0`; no holomorphic Picard group | Pass | — |
| `README.md:36` link | main | anchor `layer-7-analytic-preparation-and-mccallum-projection` = heading line 479 | Pass | — |
| Homogeneity Check (`README.md:1787–1788`) | `d=2`, `φ=v₁` | `φ(tv)=tφ(v)`; inverse convention: `k=1` space `0`, `V*` at `k=−1` | Wording | R06 |
| multiplier definitions | — | no statement uses them | — | R05 |
| (r7) Conventions `h_T=g+iω` | standard ℂ, `u=1,v=i` | `h(1,i)=i`, `g=0`, `ω(1,i)=1`; `(i/2)dz∧dz̄=dx∧dy` | Pass | — |
| (r7) `exists_mixed_parameter_dbar_solution` | `Ω=ℂ`, `Q=ℂ×`, `P` a point, `f=pq` | `u=pq·z̄`: `(pq+i(−i·pq))/2=pq` ✓; `∂̄_q u=0` | Pass | — |
| (r7) same, degenerate | `Q=∅`, `Ω=∅` | domain empty, `u=0` | Pass | — |
| (r7) same, `∂̄` convention | `u=z` | `(1+i·i)/2=0` | Pass | — |
| (r7) Parameter Cauchy–Green [sample] | `χ≡1` on `|z|<1`, `f=z̄` | `∂̄T(χz̄)=z̄` on the disc; holomorphic off `tsupport χ` | Pass | — |
| (r7) `hartogs_extension_across_point` | `ℂ²`, `f=z₁z₂`; `ℂ`, `1/z` | extends; `1/z` excluded by `2≤finrank` | Pass | — |
| K3.HolomorphicStalk [sample] (no r7 row; computed here) | `f=w²−z`; `f=(w−z)eʷ`; `f=z`; stalk units | order 2: unit 1, monic `w²−z`, `a₀=−z`, `a₀(0)=0`; order 1: unit `eʷ`, `w−z`; `f(0,w)≡0` has no finite order, so it is excluded; `1+z` is a unit, `z` is not (`isUnit_stalk_iff`); Newton: roots `±√z`, `p₁=0=e₁`, `p₂=2z=e₁²−2e₂` with `e₂=−z` | Pass | — |
| (r7) K3.MeromorphicGermField [sample] | `f=(z−a)^(−2)+1` | principal part `(z−a)^(−2)`; coefficient `(2πi)^(−1)∮f(z)(z−a)dz=1` | Pass | — |
| (r7) K4.ComponentwiseFiniteRankAssembly [sample] | `M=ℕ`, `r(j)=j`; empty base; rank 0 | fibres `ℂ^j` unbounded; unique empty family; zero bundle | Pass | — |
| (r7) K4.P exactness and point Check | stalk; `M=pt` | `exp(2πif)=1⟺f∈ℤ`; `Pic=0`; `f↦exp f` kernel `2πiℤ` | Pass | — |
| (r7) K4.P `ℂP¹` normalisation | `O(1)`, `h=(1+|z|²)^(−1)` | `iΘ/2π=ω_FS`, `∫=1`; `O(−1)`: `−1` | Pass | — |
| (r7) K4.P torus and torsion Checks | `E_τ`; Enriques | `H¹(𝒪)=ℂ`, `c₁` not injective; 2-torsion `t`, curvature class 0 | Pass | — |
| (r7) K5a star and Gram [sample] | `ℝ²` | `*dx=dy`, `*dy=−dx`, `*²=−1` | Pass | — |
| (r7) K5a.DistributionLocalStructure | `m=2,k=0,w=δ₀` | `F=x₊`, `D²F=δ₀`; partial sums `1,3,7` | Pass | — |
| (r7) K5a.SmoothSectionMontel | `M=ℕ` rank 1; `C⁰` ball on `ℝ` | `ℂ^ℕ` boxes compact; `C⁰` ball not compact | Pass | — |
| (r7) K5a.ComponentwiseCompact [sample] | ranks 0,1,2 | `L²=0⊕ℂ⊕ℂ²`, `‖(0,3,(0,4))‖²=25` | Pass | — |
| (r7) `complexBesselSymbol` | `ζ=0`; `‖ζ‖=1, z=2+2i`; `z=it` | `1`; modulus 2; modulus 1 | Pass | — |
| (r7) K5b.0 [sample] | standard ℂ | `ω=vol`; `|dz|²=2`; `*dz=−i dz`; `barStar dz=i dz̄` | Pass | — |
| (r7) K5b.1 [sample] | `ℂP¹, O(−1)`; elliptic trivial line | `h⁰=h¹=0`; `h^(p,q)=1` | Pass | — |
| (r7) K6.0 coordinate change, two-jet, `ℂP¹` Check | `z=w−½Γ(w,w)`; `H=(1+π|w|²)^(−2)` | linear term 0 by `dω(p)=0`; `H(0)=1`, `dH(0)=0`, `|H−1|≤2π|w|²` | Pass | — |
| (r7) K6.0 negative control | `H=diag(1+z₂+z̄₂,1)` | `dω(0)≠0`, so `dH(0)=0` impossible | Pass | — |
| (r7) K7.1 [sample] | `n=0`; `[2:4]`; `OnePoint` | point; `[1:2]=[2:4]`; `∞↦[1:0]` | Pass | — |
| (r7) FS chart matrix and Checks | `z=(1,0)`; `w=(1,i)/√2`; `∫` over `ℂP¹` | `1/π`; `h(e₁,e₂)=i/(8π)`; `∫=1` | Pass | — |
| (r7) K7.2 [sample]: TautologicalIncidence charts | transitions on `ℓ_i,ℓ_k≠0` | `z'_i=1/z_k`, `z'_j=z_j/z_k`, `a'=az_k` | Pass | — |
| (r7) K7.2.TautologicalIncidence [sample]: `b*` and homogeneity | `d=2,k=−1`; `k=0`; `d=1` | `f(tv)=t⁻¹f(v)` forces `f=0`; constant; `h⁰(O(k))=1` on a point | Pass | — |
| (r7) K7.2.RationalQuartic [sample] | basis `s⁴…t⁴`; `n=2` | image `{b₂=0}`; `h⁰=9`, kernel `x₀x₃−x₁x₂`; induction `[0,4n]+{0,1,3,4}` | Pass | — |
| (r7) K7.FlatDegreeZero [sample] | `ρ=1`; `τ=i`, `ρ(m+ni)=(−1)^m` | holonomy `ρ(λ)^(−1)`; `H⁰=H¹=0`; `f=exp(πix)` | Pass | — |
| (r7) K8.NilpotentCentralReduction [sample] | Heisenberg, integer lattice; `G=ℝ²` | `Γ∩A=ℤ`, base `ℝ²/ℤ²`, fibre `S¹`; torus | Pass | — |

The r7 test of its own R05 (`f=z̄`, `u=|z|²`) was miscomputed. `∂̄|z|²=z`, not `z̄`; the correct witness is `u=z̄²/2`, recomputed above. The finding itself was unaffected. 47 rows in total. They cover the fifteen sampled targets, every declaration of `Suggested.lean`, the three proposed headlines and every target a finding touches.

## Not verifiable

- A full audit of the README's other targets against Tau Ceti `2fd255d` was not done, because this is an incremental review. K3.MeromorphicGermField (`TauCeti.meromorphicGerms`), K7.1 (`Projectivization.instIsManifold`) and K1's complex form module are now partly in the library. R01, R03 and R04 cover only the passages tied to `Suggested.lean`. The next full review should check the rest.
- #1807's `Suggested.lean` was read through `roadmaps show`, not elaborated. R01's witness is this review's own elaborated probe.
- Griffiths–Harris chapter 0, Wells, Webster 1989, Hörmander, Demailly II §4.4, Sakane and Angella are cited outside the changed passages. They are carried as in the previous review, and the uncertified ones (`webster-nn`, `hormander-alpdo1`, `wells-dacm`) are settled.
- The adversarial rows check instances; they are not proofs.

## Source issues

- none
