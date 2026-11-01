# Review of FuchsianOrbifolds (pull request #1168 at 401a026)

**Verdict:** rejected

The verdict is `rejected` rather than `needs changes` because the blocking defects cannot be repaired by edits inside `TauCetiRoadmap/FuchsianOrbifolds/`: the pull request extends a roadmap that is already on main (with three of its layers built in Tau Ceti) by four new layers whose suppliers are open pull requests, one of which consumes this roadmap. The repair is a new roadmap folder; everything below is written so that it carries over to that folder.

## R01 (P1) — Re-plans the on-main roadmap; Layers 4a, 7, 8, 9 are a new roadmap

- Location: `TauCetiRoadmap/FuchsianOrbifolds/README.md` lines 21–77 (scope), 398–436 (Layer 4a), 516–1160 (Layer 7), 1162–1383 (Layer 8), 1385–1465 (Layer 9); `git diff a08dc283..401a0269 -- TauCetiRoadmap/FuchsianOrbifolds/README.md` is 1365 lines on a 431-line file.
- Claim: `FuchsianOrbifolds` exists on main (README 431 lines, Layers 0–6; `STATUS.md` records Layers 0, 1 and 3 done and `Subgroup.CompactifiedQuotient`, `CuspDatum`, `jBiholomorph` in Tau Ceti). The pull request rewrites the scope section, Layer 0 item 2, Layer 2 item 1, Layer 5 and Layer 6 item 1, and adds 950 lines of new layers (arithmetic lattices, Tamagawa numbers, Odlyzko bounds, Takeuchi finiteness, commensurators, Gassmann covers). A Tau Ceti roadmap is built on, never re-planned; extensions are Part roadmaps.
- Witness: section diff against main: `Layer 1`, `Layer 3`, `Layer 4` unchanged; `Layer 0`, `Layer 2`, `Layer 5`, `Layer 6`, `Pinned conventions`, `Scope`, `Ownership` changed; `Layer 4a`, `Layer 7`, `Layer 8`, `Layer 9`, `Secondary implementation provenance` new. `FuchsianOrbifoldsPartII` (open pull request #1696) already states "FuchsianOrbifolds stops at … Layers 0–6" (its README line 7) and owns a different extension (Nielsen cores), so the name "Part II" is taken.
- Repair: leave the base folder as it is on main (the only legitimate maintenance in this pull request is Layer 5's switch from self-declared degree carriers to the native `TauCeti.Analysis.Complex.RiemannSurface.*` modules, which can be a small separate change). Put Layers 4a, 7, 8 and 9 in a new roadmap folder (for example `ArithmeticFuchsianLattices`), whose introduction says where `FuchsianOrbifolds` stops, placed in the merge order after its last supplier. `QuaternionArithmetic` (open pull request #1722) already cites "FuchsianOrbifolds Layer 7" for the maximal-order covolume formula (its README lines 47–48 and 175–185) and must be repointed to the new folder.

## R02 (P1) — Cycle: `TeichmullerGeometry` consumes Layers 0–8, Layer 9 consumes `TeichmullerGeometry`

- Location: README lines 27–31 ("`Teichmuller T0,T4a,T9,T10 → Fuchsian L9`"), 1385–1388, 1462–1465; `TeichmullerGeometry` (open pull request #1169, merge order line 263) README lines 215–220 (`Fuchsian L1/L4/L5 → T7`, `Fuchsian L7 → T8`, `Fuchsian L0–L6/L4a → T9`, `Teich T9/T10 + Fuchsian L8 → Fuchsian L9`).
- Claim: the README says "this section-level graph is acyclic". The merge order and the build are per roadmap, not per section: `FuchsianOrbifolds` is on main and therefore a supplier of every open roadmap, while its Layer 9 needs four milestones of a roadmap that needs its Layers 0–8. That is a roadmap-level cycle, a design defect under the single-direction-of-supply principle.
- Witness: `TeichmullerGeometry` is at line 263 of `ORDER.txt`; `FuchsianOrbifolds` is on main and not in the order. The depcheck does not parse the "`Teichmuller T0 … → Fuchsian L9`" form, which is why it reports no CYCLE line.
- Repair: the Gassmann application (Layer 9) lives in the new roadmap of R01, placed after `TeichmullerGeometry`; nothing in the on-main `FuchsianOrbifolds` may cite `TeichmullerGeometry`.

## R03 (P2) — Upward suppliers: an on-main roadmap citing open pull requests

- Location (gate depcheck, data): `UPWARD: FuchsianOrbifolds (on main) -> AdelicAlgebraicGroups (#29) at README lines [130]`, `-> PseudodifferentialOperators (#7) at README lines [152]`, `-> ZerosOfLFunctions (#75) at README lines [130, 1129]`. Not parsed by the depcheck but of the same kind: `NoncompactQuantumSymmetry M1` (open #1015, order line 138) at line 150; `TeichmullerGeometry` at lines 27–31; `SurfaceTopology` and `PlanarTopology` (only in open pull request #271, absent from `ORDER.txt`) at lines 57–60, 97–100, 440–445; `QuaternionicModularForms §0.3` (open #934, absent from `ORDER.txt`) at line 1145.
- Claim: a roadmap on main may consume only Mathlib, Tau Ceti and main. Each of these is an upward supply, and `SurfaceTopology`/`PlanarTopology` are not placed anywhere yet.
- Witness: `ls content/TauCetiRoadmap` and `content/Completed` contain none of `AdelicAlgebraicGroups`, `PseudodifferentialOperators`, `ZerosOfLFunctions`, `NoncompactQuantumSymmetry`, `TeichmullerGeometry`, `SurfaceTopology`, `PlanarTopology`, `QuaternionicModularForms`; the depcheck output is quoted under *Verified sound*.
- Repair: as R01. In the new roadmap these citations are ordinary downward supplies once it is placed after them; `SurfaceTopology`/`PlanarTopology` can only be cited once #271 is in the order. Layer 5's genus bridge (lines 440–445) must not cite them from the on-main folder.

## R04 (P1) — `set_option` in `Suggested.lean`

- Location: `TauCetiRoadmap/FuchsianOrbifolds/Suggested.lean` lines 491–492, 499–500, 528–529, 536–537, 548–549 (`set_option maxRecDepth 10000 in` / `set_option maxHeartbeats 10000000 in`).
- Claim: never `set_option` of any kind; a statement that only elaborates with an override is restated.
- Repair: delete the p85 block (R08); if a finite-pair statement is wanted, it belongs in the README as a Check.

## R05 (P1) — Sorried data

- Location: `Suggested.lean` line 43 `pslAction`, line 76 `pslBoundaryAction`, line 320 `instance compactifiedTopologicalSpace`, line 325 `compactifiedChartedSpace`; `TauCetiRoadmap/FuchsianOrbifolds/SurfaceInvariants.lean` line 29 `surfaceEulerCharacteristic`, line 35 `genus` (both `:= by sorry`), and everything that mentions them (`genus`, `surfaceEulerCharacteristic`, `branchedCover_eulerCharacteristic`, `riemannHurwitz`, `TauCeti.RiemannSurface.genus`, `RiemannSurface.genus`, every `CuspDatum` theorem, `compactified_isManifold`).
- Claim: no `def`, `instance` or `abbrev` whose body is `sorry`, and nothing that mentions one. A theorem about a sorried `genus` pins no mathematics: with `genus := 0` and `surfaceEulerCharacteristic := 2`, `branchedCover_eulerCharacteristic` reads `2 = 2d − R`, false for the identity map of degree 1 with `R = 0` only if `d ≠ 1`, and false for any degree-2 unramified map (`2 = 4`).
- Witness: the gate's `sorry-data (4)` plus the two `SurfaceInvariants.lean` definitions (that file is outside the gate's scan).
- Repair: delete these declarations; cite the pinned library objects (R06). A genus carrier for compact complex curves exists nowhere at the pin (`grep` of `TauCeti` finds `genus` only for ribbon graphs, knots and function fields), so the Riemann–Hurwitz headline is not statable: the module docstring says so and nothing is stated in its place.

## R06 (P2) — Duplicates of objects the pinned Tau Ceti already has

- Location: `Suggested.lean` lines 43–330.
- Claim: the pinned Tau Ceti (`a91d3aaf`, the worktree manifest) already provides what the file re-declares with `sorry`. At the pin: `MulAction PSL(2, ℝ) ℍ` and `FaithfulSMul PSL(2, ℝ) ℍ` (`TauCeti/Analysis/Complex/UpperHalfPlane/PSL/Action.lean` lines 132, 176) for `pslAction`, `pslAction_injective`, `pslSubgroupMulAction`; proper discontinuity for every discrete `Subgroup PSL(2, ℝ)` (`TauCeti/Analysis/Complex/Fuchsian/ProperAction.lean` line 33) for `properlyDiscontinuous_pslSubgroup`; `Subgroup.IsCuspPoint`, `BoundaryOrbit`, `CuspOrbit` (`Fuchsian/Cusp/Basic.lean` lines 54, 117, 137); `Subgroup.CuspDatum` with fields `cusp`, `scaling`, `generator`, `width`, `width_pos`, `zpowers_generator`, `scaling_mul_generator_mul_inv` and theorems `mem_stabilizer_iff`, `mem_stabilizer_iff_conj` (`Fuchsian/Cusp/Datum.lean` lines 167–254) for `CuspDatum` and its three stabilizer theorems; `Subgroup.CompactifiedQuotient` with `ofQuotient`, `ofCusp`, `equivSum` (`Fuchsian/Compactification/Basic.lean` lines 74–85), its topology and `IsManifold 𝓘(ℂ) ∞` instance (`Compactification/Manifold.lean`) for `CompactifiedQuotient`, `equivSum`, `compactifiedTopologicalSpace`, `compactifiedChartedSpace`, `compactified_isManifold`; `TauCeti.TriangleOrder` with `elliptic`/`cusp`/`reciprocal` (`Fuchsian/TriangleOrder.lean` lines 44–57) for `TriangleOrder`; `Subgroup.IsCofinite` and `isCofinite_iff_covolume_ne_top` (`Fuchsian/Covolume.lean` line 122); `TauCeti.ModularGroup.jBiholomorph` (`Fuchsian/LevelOne/Sphere.lean`) for the Layer 6 endpoint.
- Witness: all of these elaborate from `import Mathlib` plus the named `TauCeti.*` modules in the worktree (my `#check` file, under *Verified sound*).
- Repair: delete the duplicates and cite the library by name in the supplier contracts; the Layer 6 endpoint and Layers 0, 1, 3 are done and are recorded as such, not restated as targets.

## R07 (P2) — Statable headlines absent; docstring silent on the unstatable ones

- Location: `Suggested.lean` lines 16–27 (module docstring) and the whole file.
- Claim: the README's headline theorems are (1) cofinite ⇒ compact compactified quotient, (2) `X(1) ≃ P¹` (already proved at the pin), (3) Poincaré's polygon theorem, (4) Riemann–Hurwitz for finite holomorphic maps, (5) the compact-orbifold minimum `π/21` and the finite-area minimum `π/3`, (6) Takeuchi's fixed-signature finiteness, (7) the commensurator dichotomy, (8) the non-isometric isospectral degree-eight covers. (1) is statable now: `Γ.IsCofinite → CompactSpace Γ.CompactifiedQuotient` on the pinned carriers. (5) is statable now: for discrete `Γ` with compact coarse quotient, `π/21 ≤ covolume` through `Fuchsian/Covolume.lean`'s fundamental-domain API and `volume : Measure ℍ`. Neither is stated. (4), (6), (7), (8) are not statable (no genus carrier, no arithmetic-lattice carrier) and the docstring does not say so; (4) is instead forced through the sorried `genus` (R05). The file states API-level targets (`cuspCoordinate_vadd`, `CuspDatum.width_change`, …) and a finite-group computation instead.
- Repair: state (1) and (5) on the library carriers; name (4), (6), (7), (8) in the docstring with the missing carrier; delete the rest.

## R08 (P3) — Padding in `Suggested.lean`

- Location: `Suggested.lean` lines 456–573 (the p85 block: `p85_card`, `p85H₁_card`, `p85H₂_card`, `p85H₁_subgroup_card`, `p85H₂_subgroup_card`, `p85AlmostConjugate`, `p85_not_conjugate`, `p85_normalForm`, `p85_generates`, all closed by `decide`); lines 283 and 287 (`cyclicQuotientCoordinate_differentiable`, `cyclicQuotientCoordinate_eq_zero`); lines 70, 90, 142, 230 (`pslSubgroup_smul`, `pslBoundarySubgroup_smul`, `descendInvariant_quotientMk`, `cuspCoordinate_ne_zero`, proved by `rfl` or one lemma); lines 106–122 (four Mathlib `example`s).
- Witness: on a scratch copy, `example (m : ℕ) : Differentiable ℂ (cyclicQuotientCoordinate m) := differentiable_id.pow m` and `example {m} (hm : 0 < m) (z : ℂ) : cyclicQuotientCoordinate m z = 0 ↔ z = 0 := pow_eq_zero_iff hm.ne'` elaborate without error. The p85 theorems compute values of a group of order 32.
- Repair: delete them from `Suggested.lean`; the README keeps the finite-pair facts as Checks (they are correct, see the table).

## R09 (P3) — Imports, namespaces and the companion Lean file

- Location: `Suggested.lean` lines 1–14 (no `import Mathlib`; eleven `import Mathlib.<submodule>` lines; `import TauCetiRoadmap.FuchsianOrbifolds.SurfaceInvariants`); lines 404–450 (declarations inside `namespace TauCeti.RiemannSurface` and `namespace RiemannSurface`, including `abbrev Divisor` and `export` lists); `SurfaceInvariants.lean` (a second module with `module`/`public section` form).
- Claim: the header is the single line `import Mathlib` followed by the `TauCeti.*` modules used, never another roadmap module; every declaration lives in `namespace TauCetiRoadmap.FuchsianOrbifolds`; a roadmap file does not declare into the library's namespace.
- Witness: gate `imports (1)`, `mathlib-subimports (11)`, `no-import-mathlib (1)`.
- Repair: fix the header; delete `SurfaceInvariants.lean` once R05 is applied; drop the `TauCeti.RiemannSurface`/`RiemannSurface` aliases. `ModularForms/Suggested.lean` on main imports `TauCetiRoadmap.FuchsianOrbifolds.Suggested` and `#check`s `RiemannSurface.genus` and `RiemannSurface.riemannHurwitz` (its lines 2 and 91–99); that cross-roadmap import is against the Lean form rules on its own side, and the fix is for `ModularForms` to cite the native `TauCeti.RiemannSurface` names and drop the two genus names until a genus carrier exists, not for this file to keep aliases of sorried data alive.

## R10 (P3) — Blob links, TeX, process artefacts

- Location: README lines 57, 60, 88, 92, 99, 100, 117, 131, 132, 133, 148, 150, 152, 321, 1372 (eighteen `github.com/…/blob/<sha>/…` links); lines 810–811 (`Z_{k_i−1}` outside a code span, gate `tex (2)`); line 278 (`\begin{pmatrix}…` inside a code span); lines 1585–1590 (`## Secondary implementation provenance` naming an audit artefact `root-odlyzko-estimates4-5-all-signatures-certificate-20261016T173212Z`).
- Repair: name the roadmap and section instead of a pinned link; put the display formula in one code span; write the matrix as `[[a,b],[c,d]]`; delete the provenance section (process narrative with a timestamped artefact id).

## R11 (P3) — Shape, missing sources, invented vocabulary

- Location: whole README; Layer 9 (lines 1385–1465) has no `**Source spine:**`; Layer 8's spine (line 1382) cites "the source article's cited 1974 ICM theorem" without naming the article; `## References` (lines 1545–1583) omits Takeuchi 1975 and 1983, Maclachlan–Reid, Vignéras, Margulis and Odlyzko 1977, all cited in the text; "the p85 order-32 Gassmann pair" (lines 149, 1385) is not a term of the literature.
- Claim: the README is not in the house shape (no `## Scope and ownership`, `## Conventions`, `## Exact supplier contracts`, `## How to read the build`; no `### k.n` subsections, no `**Checks.**` bullets, no per-layer `### Examples`/`### Dependencies`); Layer 7 is one 645-line layer whose item 2 runs 110 lines; every definition has zero discriminating Checks in the required form.
- Repair: for the new roadmap of R01, write in the house shape; cite Sunada (Ann. Math. 121, 1985) or Brooks for the Gassmann construction and say that `Q` is the affine group of `ℤ/8` with `H₁` its unit subgroup; add the missing references; name the article behind Layer 8.

## R12 (P2) — Computational certificates written as roadmap content

- Location: README lines 846–895 (rational directed-interval certificates with stated margins to ten decimals; Bernstein bisection "six leaves at depths at most 5", "four leaves at depths at most 3", polynomial identity checked "at 84 and 66 distinct rational points"); lines 1010–1080 (quadrature with "explicit integration error bounds", 31 cutoffs, 35 degree checks, the ratio `1.20369`).
- Claim: mathematics, not algorithms: executable procedures, certificates and large computations are not roadmap content. The mathematics behind them (Odlyzko's Theorem 1, equations (8)–(13), the tables as cited facts, the reduction of inequality (11) to `x = 1` by harmonicity) is welcome.
- Repair: state the two estimates (4) and (5), the Table 1 data and the Table 2/4 rows as cited inputs with their locators; state the needed inequalities (`e^(−70) > 10^(−34)`, `58.6^(3/2)/(4π²) > 10`, `B_n^n > a₀R₀^n` for `n ≤ 35`) as targets with their values; drop the prescribed certificate algorithms.

## R13 (P3) — Backticked own names that nothing declares

- Location: README line 520 `tamagawaNumberOne_SL1_quaternion`; 420 `minimum_area_finite_area_orbifold`; 707–708 `invariant_squared_trace_data_finite_index`, `invariant_squared_trace_data_commensurable`; 728 `integral_trace_lattice_order`; 738 `squared_trace_integrality_of_commensurable_arithmetic_group`; 1113 `global_reduced_norm_localization`; 1202 `dense_commensurator_squared_trace_field_is_number_field`.
- Claim: a backticked name of the roadmap's own claims that `Suggested.lean` declares it; none of the eight is declared anywhere (`grep` of `Suggested.lean`, Mathlib and Tau Ceti at the pin).
- Repair: write them as prose names.

## R14 (P3) — Local-volume wording in Layer 7.2(c)

- Location: README lines 651–652: "Hence a division place replaces the split factor by `(q−1)⁻¹`".
- Claim: the same paragraph gives the division-place volume as `(1−q⁻²)/(q−1)`, so the division place *multiplies* the split factor `1−q⁻²` by `(q−1)⁻¹`. Values: `q = 2`: split `3/4`, division `3/4`; `q = 3`: split `8/9`, division `4/9`; "replaces by `(q−1)⁻¹`" would give `1` and `1/2`.
- Repair: "multiplies the split factor by `(q−1)⁻¹`".

## Verified sound

**Gate (data, quoted).** `gate FuchsianOrbifolds: set_option=10 blob=18 latex=0 tex=2 prnum=0 sorry-data=4 sorry-examples=0 residue=0 private-paths=0 imports=1 mathlib-subimports=11 no-import-mathlib=1 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=3 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 FAIL`. The build passes. Depcheck, rerun by me:

```
UPWARD: FuchsianOrbifolds (on main) -> AdelicAlgebraicGroups (#29) at README lines [130]
UPWARD: FuchsianOrbifolds (on main) -> PseudodifferentialOperators (#7) at README lines [152]
UPWARD: FuchsianOrbifolds (on main) -> ZerosOfLFunctions (#75) at README lines [130, 1129]
depcheck: 204 roadmaps, 1434 edges, 3 problem(s)
```

No change outside the folder (`git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/FuchsianOrbifolds'` is empty). `PROGRESS.md`, `STATUS.md`, `metadata.toml` are the generated files already on main.

**Elaboration.** `lake env lean TauCetiRoadmap/FuchsianOrbifolds/Suggested.lean` from the worktree: 21 `declaration uses 'sorry'` warnings, no other diagnostic, 22 s. A `#check @name` file for all 66 declarations elaborated; every type agrees with the README's wording (`CuspDatum.conjugates_generator` is translation by `width`, matching the library's `upperRightHom width`; `TriangleOrder.reciprocal` gives `1/m` and `0`; `riemannHurwitz` has `2g_X − 2 = d(2g_Y − 2) + R` with `R = ramificationDegree`). Pinned names confirmed by elaboration against `import Mathlib` plus the `TauCeti.*` modules: `Subgroup.CompactifiedQuotient`, `.ofQuotient`, `.equivSum`, `Subgroup.CuspDatum`, `.mem_stabilizer_iff`, `Subgroup.IsCuspPoint`, `Subgroup.CuspOrbit`, `Subgroup.IsCofinite`, `isCofinite_iff_covolume_ne_top`, `TauCeti.ModularGroup.jBiholomorph`, `TauCeti.TriangleOrder`, `MulAction PSL(2, ℝ) ℍ`, `FaithfulSMul PSL(2, ℝ) ℍ`, `NumberField.finite_of_discr_bdd` (Mathlib `NumberTheory/NumberField/Discriminant/Basic.lean` line 494), `MeasureTheory.Integrable.fourierInv_fourier_eq` and `Continuous.fourierInv_fourier_eq` (`Analysis/Fourier/Inversion.lean` lines 165, 174), `jacobson_density`, `Module.Finite.toModuleEnd_moduleEnd_surjective`, `UpperHalfPlane.volume_def`, `UpperHalfPlane.dist_eq` (`dist z w = 2 arsinh(|z−w|/(2√(y y′)))`, equivalent to the README's `arcosh(1 + |z−w|²/(2yy′))` since `cosh(2 arsinh x) = 1 + 2x²`), `TauCeti.dedekindZeta_eulerProduct_hasProd` (hypothesis `1 < re s`), `TauCeti.RiemannSurface.card_fiber_add_sum_localMultiplicity_sub_one`, `TauCeti.finsum_finrank_singularHomology_of_finite_cwComplex`, `isCoveringMapOn_quotientMk_of_properlyDiscontinuousSMul`. Tau Ceti has `cocycleOfSplitting` (`TauCeti/Algebra/CrossedProduct/Splitting/*.lean`) and `ramificationDegree` (`Analysis/Complex/RiemannSurface/Ramification.lean` line 76, `∑ᶠ x, (localMultiplicity f x − 1)`).

**Cross-roadmap citations resolved** (main unless stated): `InductionRestriction` Layer 2.1 almost-conjugacy with `ConjClasses` (README line 346; the "IR2.1" label is the author's alias); `ReductiveGroupsPartII` RG2.2.1 (line 2846) with `Building.exists_fixedPoint_of_bounded` (2955), RG2.2.2 (2973), RG2.2.4 (3408) with `BTTree`, `type_smul`, `sl2_preserves_type` (3658–3666); `LFunctions` Layer 3 Dedekind zeta (730); `ClassFieldTheory` Layer 10 Brauer sequence (1552), `inv_restrict`, `invMap_brRes` (1254); `GlobalQuadraticForms` 0.1, 0.2, 6.1 (191, 223, 694); `QuadraticFormInvariants` 6D, 7B, `cocycleOfSplitting`, `brauerCohomologyEquiv_quaternionClass`; `SemisimpleAlgebras` Layers 3, 4, 6 (233, 249, 293); `ThetaSeries` 1C, 1D, 2A, 2C (462–471, 128); `Completed/GlobalNumberFields` `weakApproximation_denseRange` (162); `ComplexManifolds` Milestones 3–6 (221–296); `ComplexKahlerGeometry` K7; `ModularForms` 10B(v), 10B(vi) (1095, 1108); `GeometricTopology` Layer 1 (177); `AlgebraicTopology` 4.7 `simplicialRealizationCW`, `standardCellBallToOrderedSimplex` (817–820); `RiemannianGeometry` R4 item 7 (native half-space model, line 717); at open heads: `TeichmullerGeometry` T0, T4a, T7, T8, T9, T10 (#1169 lines 40–198); `NoncompactQuantumSymmetry` M1 (#1015 line 992); `PseudodifferentialOperators` P7a (#952 line 1919); `ZerosOfLFunctions` Layers 1, 3, 4, 5, 8 (#253; the sub-labels 1.4/3.4/4.8/5.6/8.4 are not headings there and were resolved only at layer level); `AdelicAlgebraicGroups` 2.4, 3.4 with `Reduction.finite_classes`, 4.2 (#792 lines 1886, 3141, 3191, 4150); `SurfaceTopology` Layer 5 `IsBranchedCover` with topological Riemann–Hurwitz and Layer 8 classification (#271 lines 527, 659–663, 860); `PlanarTopology` Radó/Hauptvermutung (#271); `QuaternionicModularForms` §0.3 (#934 lines 46, 82). Ownership against open pull requests: `QuaternionArithmetic` #1722 consumes this Layer 7 and owns Shimura curves `X_0(D;N)` over `ℚ`; `GroupActionsOnRiemannSurfaces` #1728 states the Hurwitz bound with equality at `(0;2,3,7)` (its line 89), the same signature minimisation as Layer 4a but a different theorem; no open roadmap owns Takeuchi finiteness, the commensurator dichotomy or the Gassmann covers.

**Sources (seeded sample and locators).** `odlyzko1977` (J-STAGE scan, read as images for pages 210 and 215): Theorem 1 on p. 210 with `f₁`, `f₂` exactly as transcribed at README lines 821–829 and estimates (4) `D ≥ (60.1)^r₁(22.2)^(2r₂)e^(f₁−254)`, (5) `D ≥ (58.6)^r₁(21.8)^(2r₂)e^(f₂−70)`; Theorem 2 (6) on p. 210; equation (8) on p. 212 (`odlyzko1977 line 92`), (10)–(12) on p. 213 (lines 111–118), the reduction to `x = 1, y ≥ 0` on p. 214 (lines 131–142), "several hundred subintervals" on p. 215 (line 157), the two tables on p. 215 with all 12 and 9 rows `(k_i, σ_i, a_i)` as at README lines 814–820, p. 216 the estimate-(6) table. Each `a_i` is half the printed coefficient of `Z_(k_i−1)(σ_i)` in `f₁`, `f₂` (12 + 9 products checked). `odlyzko-table2` (`e24ab07f` lines 16–46) and `odlyzko-table4` (`4c63fd3e` lines 23–105): all 31 README rows `(n₀, b, B; A, E)` agree. `takeuchi1983` (`6c4f44cf` line 66): Theorem 2.1 is finiteness for an arbitrary signature `(g; e₁,…,e_t)` up to `SL₂(ℝ)`-conjugation, as cited. `takeuchi1975` (`6fe5afdf` lines 50–64): Theorems 1 and 2 (trace-field characterisation). `bgls2010` (arXiv v2, `2d00ba36`): §2 generators (line 134), §3 counting maximal arithmetic subgroups (278), §4 uniform Fuchsian bounds (499), Theorem 1.3 for `PSL₂(ℝ)` (57). Bader–Furman (arXiv v1 `6c10dd01`): Definition 2.3 boundary pair (line 130), Theorem 2.5 `G/P` is a boundary (152), Lemma 2.6 `P/A′` isometrically ergodic by Mautner (163), Theorem 3.2 characteristic maps for convergence actions (321), Lemma 4.2 extension to a dense subgroup (566); the README cites the Annals 2021 numbering, which I could not compare.

**Adversarial table.**

| Statement | Instances | Values | Result |
|---|---|---|---|
| L4a compact minimum `π/21` | `(0;2,3,7)`, `(0;2,4,5)`, `(0;2,5,5)`, `(0;3,3,4)`, `(1;2)`, `(0;2,2,2,3)`, `r ≥ 5` | gaps `1/42, 1/20, 1/10, 1/12`; `g=1,r=1`: bracket `1/2` (area `π`); `r=4`: `2 − 11/6 = 1/6`; `r=5`: `≥ 1/2`; `2π/42 = 0.14960 = π/21` | holds; equality only `(0;2,3,7)` |
| L4a finite-area table | `(0;2,3;1)`, `(0;2,4;1)`, `(0;3,3;1)`, `(0;2;2)`, `(0;;3)`, `(1;;1)`, `(0;2,2,2;1)` | brackets `1/6, 1/4, 1/3, 1/2, 1, 1, 1/2` → areas `π/3, π/2, 2π/3, π, 2π, 2π, π` | holds; min `π/3` at `(0;2,3;1)` |
| L7.2 area formula | `k=ℚ`, `B=M₂(ℚ)` | `8π·ζ(2)/(4π²) = 8π(π²/6)/(4π²) = π/3 = 1.0472` | agrees with `Area(PSL₂(ℤ)\ℍ)` |
| L7.2 Tamagawa chain `1 = Δ^(−3/2)(π/2)·Area·(4π²)^(n−1)ζ_k(2)^(−1)∏(N𝔭−1)^(−1)` | `k=ℚ` split; general rearrangement | `(π/2)(π/3)(6/π²) = 1`; solving gives `Area = 8πΔ^(3/2)ζ_k(2)∏(N𝔭−1)/(4π²)^n` | consistent with the displayed formula |
| L7.2 Gram determinants | `(a,b)_F` basis `1,i,j,ij`; split basis `e₁₁,e₁₂,e₂₁,e₂₂` | `2·2a·2b·(−2ab) = −16a²b²`; trace matrix with rows `(1,0,0,0),(0,0,1,0),(0,1,0,0),(0,0,0,1)`, det `−1` | holds |
| L7.2 local volumes | `q = 2, 3` | split `1−q⁻² = 3/4, 8/9`; division `(1−q⁻²)/(q−1) = 3/4, 4/9`; ratio `1/(q−1)`; `vol(𝒪_B)=q⁻¹` from `[𝔓⁻¹:𝒪_B]=q²` | holds; wording defect R14 |
| L7.2 `vol(SL₁(ℍ)) = 4π²` | reduced-trace Gram `|det| = 16` on `ℍ` | self-dual measure `4·dx`; fibre over `nrd = 1`: `4·(1/2)·vol(S³) = 2·2π² = 4π²` | holds |
| L7.3 trace identities | `λ = 2` (hyperbolic lift), `m = 2` | `t = λ²+λ⁻² = 17/4`; `(tr)² = (5/2)² = 25/4 = t + 2`; `t₂ = λ⁴+λ⁻⁴ = 257/16 = t² − 2 = P₂(t)` | holds |
| L7.3b constants | — | `3^70 = 2.5·10^33 < 10^34` so `e^(−70) > 10^(−34)`; `58.6^(3/2)/(4π²) = 11.363 > 10`; `8π = 25.13 ≥ 24` | holds |
| L7.3b `Δ ≤ (C_sig(4π²)^n/(8π))^(2/3)` | `ζ_k(2) ≥ 1`, `∏(N𝔭−1) ≥ 1` | from `8πΔ^(3/2)/(4π²)^n ≤ Area(Λ\ℍ) ≤ C_sig` | holds |
| L7.4 generator and index bounds | `(0;2,3,7)`: `A = π/21`, `d = 3`; `r₀ = 3` | `d ≤ A/π + 4 = 4.05`; `[Γ:Γ^(2)] ≤ 2³`; index-`m` subgroups of a `d`-generated group `≤ m(m!)^d`; `[N(K):K] ≤ Area(K\ℍ)/(π/21)` | holds |
| L7.6 `Δ ≥ a₀R₀^n`, `a₀ = 2439/10⁷`, `R₀ = 29.099` | all `n ≤ 35` with Table 2 cutoffs; `n ≥ 36` | `min_n (B_n/R₀)^n/a₀ = 1.203691` at `n = 9`; `29.582 > 29.099` | holds; the README's `1.20369` is right |
| L8.3 index two | `det < 0` coset | `PGL₂(ℝ)/PSL₂(ℝ)` has order 2; `Comm_PGL ∩ PSL = Comm_PSL` | holds |
| L9 group `Q = (ℤ/8)ˣ ⋉ ℤ/8` | conjugation `(u,a)(v,b)(u,a)⁻¹` | `= (v, ub + (1−v)a)`; `|Q| = 32` | holds |
| L9.2 class sizes | eleven representatives | sizes `1,4,2,1,4,4,2,4,2,4,4`, sum 32 | holds |
| L9.2 almost conjugacy | `H₁ = {(u,0)}`, `H₂ = {(1,0),(3,4),(5,4),(7,0)}` | both intersection sequences `1,0,0,0,1,0,1,0,0,1,0`; `H₂` closed: `(3,4)(5,4) = (7,0)`, `(3,4)² = (1,0)` | holds |
| L9.2 non-conjugacy | conjugate of `H₁` by `(u₀,a₀)` | needs `6a₀ ≡ 4` (so `a₀ ≡ 2 mod 4`) and `4a₀ ≡ 4` (so `a₀` odd) | contradiction, holds |
| L9.2 generation and cores | normal form `(1,1)^a(3,0)^j(5,0)^k = (3^j5^k, a)` | 32 distinct elements; core of `H₁`: `(1−u)a = 0 ∀a` forces `u = 1`; core of `H₂`: `(3,4)` conjugated by `(1,1)` is `(3,2) ∉ H₂` | holds |
| L9.2 permutation characters | `q = (3,0),(5,0),(7,0)` | fixed cosets `|cl∩H|·|C_Q(q)|/|H| = 8/4, 16/4, 8/4 = 2, 4, 2`; identity `8` | holds |
| L9 genus of the covers | `g = 3`, degree 8 unramified | `2g′−2 = 8·4` so `g′ = 17 = 8g − 7` | holds |
| L9.1 `r ≤ 2g+2−4h`, codimension `g+h−2` | `g=2,h=0,r=6` (hyperelliptic); `g=3` | `6 ≤ 6`, codim `0`; `g=3`: codim `≥ 1` | holds; genus-three threshold justified |
| L2.1 distance | `z = i`, `w = 2i` | `arcosh(1 + 1/(2·2)) = arcosh(5/4) = log 2`; Mathlib `2 arsinh(1/(2√2)) = log 2` | agree |
| `CuspDatum.conjugates_generator` vs library | `scaling * generator * scaling⁻¹ = upperRightHom width` | both say the conjugated generator is `z ↦ z + width` | same convention |
| `riemannHurwitz` with sorried `genus` | model `genus := 0`, `χ := 2` | `branchedCover_eulerCharacteristic` for a degree-2 unramified map reads `2 = 4` | statement pins nothing (R05) |

## Not verifiable

- Voight, *Quaternion Algebras* (Main Theorems 29.10.1(c), 29.11.3, Lemma 29.11.1, Lemma 29.8.24(b), p. 536): the sources service records the DOI as paywalled and refuses `link.springer.com`; the author's page lists no PDF. Recorded `uncertified`; the residue formulas, the measure normalisations `τ = D(B)^(−1/2)μ` and the exact sequence `1 → B̲¹ → B̲^(1) → F̲_Ω^(1) → 1` were not checked against the text.
- Katok, Beardon, Farkas–Kra, Miranda, Forster, Diamond–Shurman, Serre, Stillwell (the Source spines of Layers 0–6), Maclachlan–Reid (Theorems 11.2.1, 11.3.1, p. 346), Vignéras, Margulis Chapter IX, Weil *Adeles and Algebraic Groups*: books; Katok found nowhere legal, the others paywalled at Springer. Borel 1981 and Prasad 1989 were not fetched.
- Bader–Furman: numbering checked at arXiv v1 only (the README cites the Annals version).
- ZerosOfLFunctions sub-labels 1.4, 3.4, 4.8, 5.6, 8.4: not headings at the #253 head; resolved at layer level only.

## Source issues

- none
