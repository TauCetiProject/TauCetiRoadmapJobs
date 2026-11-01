# Review of TensorProductCombinatorics (pull request #1107 at ddaf7b3)

**Verdict:** needs changes

Gate at this head: every check passes (`depcheck=0 build=0`). `Suggested.lean`, `GTReconstructionTargets.lean` and `FourierConeTargets.lean` all elaborate with `lake env lean` after `lake build` of the four `TauCeti.*` imports; the only diagnostics are `declaration uses sorry` (30, 3 and 7 respectively). The mathematics of the README and of the Lean statements is sound everywhere I computed it (table below). The blocking findings are structural: one sorry'd datum in a companion file, two section-level supply cycles with roadmaps on main that the dependency check cannot see because the README carries almost no `*Needs:*` lines, a second owner of the diagonal-overgroup layer in an open pull request, and statable headline theorems missing from `Suggested.lean`.

## R01 (P1) — `latticeDistribution` is sorry'd data

Location: `TauCetiRoadmap/TensorProductCombinatorics/FourierConeTargets.lean` lines 64–68, `def latticeDistribution : … → TemperedDistribution (Ambient r) ℂ := by sorry`.

Claim: the file states "no sorry'd data" targets; the pull-request text says the same for the repair commit.

Witness: `lake env lean` on the file reports `FourierConeTargets.lean:64:4: warning: declaration uses sorry` on a `def`; `periodicBoundary` (line 83), `latticeDistribution_apply` (70) and `latticeDistribution_pairing_summable` (76) all mention it. The brief's Lean rule ("no `def` … whose body is `sorry`, and nothing that mentions one") applies to every listed `.lean` file; the gate's `sorry-data` scanner only reads `Suggested.lean`.

Repair: delete `latticeDistribution`, `periodicBoundary` and `latticeDistribution_apply`. Keep the one statement that does not need the datum, restated on the coefficient function alone: `Summable (fun b : Lattice r => c b * φ (embed b))` under the growth bound (that is `latticeDistribution_pairing_summable` with its first conclusion removed). The construction of the distribution stays a README target in H1.6.2, where it already is.

## R02 (P2) — supply cycle with LieHighestWeight Layer 6F

Location: `README.md` line 569 ("LieHighestWeight Layer6's Fourier comparison supplies the finite Weyl alternating numerator/denominator and coefficient cancellation; it consumes the generic construction here"), together with Conventions item 4 (consume LieHighestWeight Layer 6), H2.3 and H2.6 (HW3), H2.5 (HW9).

Claim: a single direction of supply between the two roadmaps.

Witness: on main, `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md` line 872–876 (Layer 6F) consumes "TensorProductCombinatorics H1.6's localization, common-chamber series and Fourier/distribution comparisons". So LieHighestWeight Layer 6 → this roadmap (Conventions 4, H2.3, H2.5, H2.6) and this roadmap H1.6.5 → LieHighestWeight 6F → this roadmap H1.6.1–4. The pull-request text describes exactly this interleaving ("only H1.6's terminal applications consume that later result"). Both citations are prose links, not `*Needs:*` lines, so the dependency check reports `0 problem(s)`.

Repair, in this folder: H1.6.5 must not consume Layer 6F. Compute the GL₂, SU₂ and A₂ terminal examples from ClassicalGroups Layer 4's Weyl character formula (which consumes nothing of this roadmap) and name LieHighestWeight 6F under downstream consumers only. The roadmap-level loop that remains (Layer 6 supplies this roadmap, 6F consumes H1.6) can only be closed by splitting H1.5–H1.6 (the generic vector-partition/Fourier-cone theory, which the README itself says has no hive or character premise) into its own roadmap placed before LieHighestWeight, or by LieHighestWeight dropping the 6F citation; that is a decision for the author and a human, and the report records it.

## R03 (P2) — supply cycle with SchubertGeometry S9.5

Location: `README.md` line 147 ("SchubertGeometry S9.5 owns the generic-to-concrete comparison maps; H8 consumes those SAME maps") and line 1254 (H8.3, "Consume S9.5's mutually inverse maps between its reparametrization quotient and the generic specialized path carrier").

Claim: H8 adds no return dependency into SchubertGeometry.

Witness: on main, `TauCetiRoadmap/SchubertGeometry/README.md` line 117 (S9.5) "construct[s] the comparison with TPC H8's `RationalPath`, straight-path component, column paths and row/semistandard-tableau paths": S9.5 is built on this roadmap's carriers (H8.3–H8.4), and H8.3 is built on S9.5's maps. The README's own construction order ("H8's concrete coordinate and tableau objects, then S9.5's generic-to-concrete maps on those objects, then the tensor/hive and H9 comparisons") interleaves the two roadmaps. SchubertGeometry S4.1–5 has no such premise.

Repair: H8.3 owns the comparison maps between `RationalPath` (and the column/tableau path carriers of H8.4) and the generic specialized carrier of SchubertGeometry S4.1–5, with the inverse laws, reparametrization comparison and operator transport stated as targets here; cite S4.1–5 only, and list SchubertGeometry S9.5 under downstream consumers as the roadmap that restates these maps. Remove "S9.5 owns" from Conventions 9.

## R04 (P2) — two owners of the diagonal-overgroup classification

Location: `README.md` H2.7 (lines 798–846): H_sc, H_det, `goursatFst`, the four-subgroup classification for n ≥ 2 and the restriction formulas, with `*Needs:* LieGroups Layers 2–4, ClassicalGroups Layer 3`.

Claim (pull-request text): H2.7 consumes ClassicalGroups Layer 6A.

Witness: ClassicalGroups on main has Layers 0–6 and no 6A; the open revision pull request #1192 of ClassicalGroups adds "Layer 6A: diagonal overgroups of the complex general linear group" (its README line 824 onward) building the same H_sc, H_det, Goursat normal subgroup, four-case Lie-algebra classification and restriction maps. A revision pull request is never a dependency, so this roadmap may not cite 6A; but two open pull requests now each build the object.

Repair: declare it as a supplier gap in the form the intake reads, `What ClassicalGroups must provide (gap:diagonal-overgroups): the closed connected complex Lie subgroups of GLₙ(ℂ)×GLₙ(ℂ) containing the diagonal are Δ, H_sc, H_det and the whole group for n ≥ 2, with H ↦ goursatFst H an order isomorphism onto normal subgroups`, with the matching `gaps` entry in `design/plan.json`, and reduce H2.7 to the restriction comparison of `V_λ⊠V_μ` (which is this roadmap's business). Alternatively keep H2.7 as is and have #1192 drop Layer 6A; either way one owner.

## R05 (P2) — statable headline theorems absent from `Suggested.lean`

Location: `TauCetiRoadmap/TensorProductCombinatorics/Suggested.lean` module docstring (lines 7–24) and the file as a whole.

Claim: the file states the roadmap's headline theorems; the docstring lists what is not declared.

Witness: three headlines are statable at the pins and are neither stated nor named in the docstring.

- The hive model of Littlewood–Richardson coefficients (KTW2 Theorem 1, `ktw2` line 194; KT1 Theorem 4, `kt1` line 1451), the theorem the title names: for polynomial `λ μ : TauCeti.DominantWeight n` and any `N`, `diagramSchurPoly N ℤ λ.shape * diagramSchurPoly N ℤ μ.shape = ∑ᶠ γ, (hiveCount (productBoundary λ μ γ) : ℤ) • diagramSchurPoly N ℤ γ.shape`. `TauCeti.diagramSchurPoly` is at `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Basic.lean:174`, `TauCeti.DominantWeight.shape` and `IsPolynomial` at `TauCeti/RepresentationTheory/ClassicalGroups/DominantWeight.lean:170,143`; the support is finite by H1.2 and the non-polynomial γ have count 0 (γₙ ≥ λₙ+μₙ).
- The type-A PRV theorem (H4.4): `Antitone (fun i => λ.1 (σ i) + μ.1 (τ i)) → 0 < hiveCount (productBoundary λ μ (TauCeti.dominantWeightOf …))`, with `dominantWeightOf` at `DominantWeight.lean:404`.
- Multiplicity-one stretching (H6.8, KTW §6): `hiveCount B = 1 → hiveCount (d • B) = 1` for `d ≥ 1`, on the hive carrier alone.

Repair: state the three (each with `sorry`), or name each in the docstring with the carrier it lacks if the author holds that `∑ᶠ` is a stand-in.

## R06 (P3) — README not in TauCetiRoadmap form, and the missing `*Needs:*` lines hide the supplier graph

Location: `README.md` throughout: the title is not `# Roadmap: …`, there is no `**Summary.**`, no `## Scope and ownership`, `## Conventions`, `## Exact supplier contracts`, `## How to read the build`, no `## Layer k:` / `### k.n` headings (sections are `## H0.` … with numbered paragraphs), no `**Checks.**` bullets (Checks are inline prose), `### Examples`/`### Dependencies` only in H0, no `## Downstream consumers`, and the references sit under `## Source acceptance and references`. Only H2.7 carries a `*Needs:*` line.

Witness: the dependency check reads `*Needs:*` lines; with one such line it sees none of the twenty suppliers cited in prose (SchurWeyl, ClassicalGroups, LieHighestWeight, RootSystems, TopologicalKTheory, ModularCurves, LieGroups, ReductiveGroups, AlgebraicTopology, CharacteristicClasses, ComplexKahlerGeometry, DifferentialGeometry, PolarDecomposition, HamiltonianReduction, ConvexityToric, SchubertGeometry, GroebnerGeometry, CompactGroups, PseudodifferentialOperators, GrothendieckEulerForms), and so cannot see R02 and R03.

Repair: restructure to the house shape (two or three roadmaps on main as models) and give every target its `*Needs:*` line, item by item.

## R07 (P3) — commit hashes, a Mathlib pull-request link and beyond-pin declarations in the README

Location: `README.md` lines 102–106 and 976–981: "Mathlib Grassmannian scheme design #14686", "Tau Ceti `4f1bd4f`, beyond the `a91d3aaf` Lake pin", `Module.Grassmannian.chart`, `chartEquiv`, `chartHomEquiv`, `glueData`, `scheme`, `toSpec`.

Witness: the pinned Tau Ceti has no file mentioning `Grassmannian` outside `LinearAlgebra/TotallyReal/`; the pinned Mathlib has `RingTheory/Grassmannian.lean` (the quotient-rank functor `G(k, M; R)`, line 62) and no charts or scheme. Pull-request references and pin bookkeeping are process narrative.

Repair: cite only what exists at the pins (the Mathlib functor, with its quotient-rank convention, which the README states correctly), state the chart/gluing comparison as an H6.1 target or a Scope deferral, and drop the hashes and the link.

## R08 (P3) — Lean form of the three files

Location: `Suggested.lean` line 28 `namespace TensorProductCombinatorics` (main uses `TauCetiRoadmap.<Name>`: `SchubertGeometry/Suggested.lean`, `TopologicalKTheory/Suggested.lean`); `FourierConeTargets.lean` lines 1–5 import a roadmap module and four `Mathlib.<submodule>` lines; `GTReconstructionTargets.lean` lines 1–2 have no `import Mathlib`; neither companion has the "<title>: target signatures" docstring; `Suggested.lean` has one `/-! ## … -/` section comment for H1.5/H2.6 and none for the H1–H9 layers it states.

Repair: `namespace TauCetiRoadmap.TensorProductCombinatorics`; in each companion the single `import Mathlib` plus the `TauCeti.*` modules used (fold the companions into `Suggested.lean` if they are to be acceptance tests at all); layer comments in README order.

## R09 (P3) — padding in the Lean files

Location and repair "delete it from the Lean file; the README keeps the statement":

- `Suggested.lean`: `boundary_trace` (73, a telescoping identity), `boundary_antitone_real` (70, duplicate of 67 over ℝ; state once on the generic carrier), `boundary_castReal` (92, proved by `simp`), `octahedronMove_involutive` (114, proved by `omega`), `finite_chambers` (250, `infer_instance`), `unit_maximal_minors_of_totallyUnimodular` (263, proved API lemma), `typeA_degree_arithmetic` (328), `typeA_rank_one` (331), `typeA_A2` (334), `typeA_empty` (346) (small values and boundary cases that mirror the H1.5/H2.6 Checks), `intervalMatrix_height` (316), `intervalMatrix_fullrank` (319), `count_eq_zero_outside` (304), `typeA_support` (325) (API lemmas).
- `FourierConeTargets.lean`: `positiveRay`, `negativeOpenRay`, `boundary_difference` (121–127, a proved small-value lemma).

The one-tactic probe (`simp`, `subsingleton`, `simp_all` with the unfolded definitions, on a scratch copy) closed none of the sorried ones; the classification above rests on what they state, not on the probe.

## R10 (P3) — Checks and duplicated text

- H0.1 (README line 194): "a definition that compares the two boxes as if the inner cell were present gives three" names no definition that yields 3; a straight (2,1) tableau count in two letters is 2 (`s_(2,1)(x₀,x₁) = x₀²x₁ + x₀x₁²`). Name the wrong model or drop the clause.
- H6.2 (lines 984 and 996) states `λ_i = q+i−p_i`, its inverse and the reversal law twice; H8.2 (lines 1231 and 1233) states the transport through `gtPatternEquivSSYT` twice.
- `gt_reconstruction_iff` (`GTReconstructionTargets.lean` 34) uses `∃!` where uniqueness is automatic (the values are prescribed by the chart formula); `∃` says the same.

## R11 (P3) — sources: no manifest, two unreadable primary texts, one paywalled

- The folder has no `sources.toml`; the README's reference list should become `## References` with a manifest entry per work.
- Knutson's "hives" handout and the two "Lie Groups notebooks" (S1, S2, cited by page throughout H0–H9 and in "Source acceptance") have no legal online copy; the service found nothing for the handout. A reader cannot check "S1p81", "WCFandGC4–6" or the rank-5/rank-6 inequalities against them. State where these texts are held, or cite the published equivalents (KT1 §§2–6, KTW §§2–6, KTW2 §§2–5, HK §§3–7, Buch §§1–3) which I did verify.
- Littelmann, Annals 142 (1995), is reachable only through a JSTOR landing page: record it `uncertified` with the locators 2.4–2.5, 3.1, 5.5–5.7, 6.1–6.3, 7.1. Fulton, *Young Tableaux*, is a book with no legal text online.

## Verified sound

**Build and signatures.** `lake env lean` on `Suggested.lean`: 30 `sorry` warnings, nothing else; on `GTReconstructionTargets.lean`: 3; on `FourierConeTargets.lean`: 7. A scratch file with `#check @name` for the 20 principal declarations elaborated; every elaborated type carries exactly the binders the README states (hives over ℤ and ℝ, `Fin 3 → Fin n → ℤ` boundaries, pointedness via an integer height, full row rank over ℚ, maximal minors in {0, ±1}, closed full-dimensional chambers inside the support). Nothing changed.

**Dependency check.** `gate --depcheck … --movable`: `depcheck: 204 roadmaps, 1421 edges, 0 problem(s)`. This roadmap is line 275 of the merge order; every cited supplier is on main except PseudodifferentialOperators (line 8, earlier). The two cycles of R02/R03 are invisible to it (see R06).

**Cross-roadmap citations resolved on main (or at the given head).** SchurWeyl Layer 0 (`RepresentationTheory/SchurWeyl/README.md` 166) and Layer 7 (323; finite alphabet, Jacobi–Trudi, Frobenius characteristic, RSK; the stable ring "deferred", evacuation "optional appendix"), so H0's skew/LR/jeu-de-taquin/evacuation/stable-ring ownership is correct; ClassicalGroups Layers 3–6 (237–373; `GTPattern`, `gtPatternEquivSSYT`, Schur-constant = tensor multiplicity in Layer 4); LieHighestWeight Layer 3 Kostant (524), Layer 6 (773), 6F (870); SchubertGeometry S4.1–5 (54–70) and S9.5 (117); TopologicalKTheory T1.5 (`TopologicalKTheory/README.md` 280–300: finite Grassmannian, Schubert cells, characteristic maps); ModularCurves 0G (427; relative Grassmannian of quotients over a base, "Mathlib supplies the module-valued Grassmannian functor"); GroebnerGeometry G2 (103); ComplexKahlerGeometry K5a (570) and K7 (1405); PseudodifferentialOperators P3 at its open head (its README line 702: smooth periodic Fourier expansions and rapid decay); PolarDecomposition PD-A50–A53 (252–260: eigenbasis form, Courant–Fischer, monotonicity, Weyl); HamiltonianReduction R1 (33), R2 (127); ConvexityToric T3 (106); LieGroups Layers 2–4 (275–358) and 8 (428: Borel–Weil with `L_λ = G×_B ℂ_{−λ}`); CharacteristicClasses C2 (550), C3 (720); AlgebraicTopology Stages 2–6; DifferentialGeometry 10.2 Sard (884); GrothendieckEulerForms Layers 1–2 (215, 238); RootSystems Layer 3 (274) and the `Aₙ` realization in the sum-zero hyperplane of ℚ^{n+1} (346); CompactGroups Layer 0 Haar (205), Layer 6 (369).

**Library declarations opened at the pins.** Tau Ceti `a91d3aaf`: `GTPattern` with `entry i j`, `zeros'` and `interlacing'` exactly as H2.1 uses them (`GelfandTsetlin/Basic.lean:92–100`), `topRow` (196), `topWeight` (208), `finite_topRow_eq` (445); `DominantWeight` (`DominantWeight.lean:87`), `shift` (98), `detShiftShape` (257), `weightOfShape` (204), `shapeEquivPolynomialWeight` (232), `dominantWeightOf` (404); `IsKostantPartition` and `kostantPartition` (`KostantPartition/Basic.lean:84,163`); `posRoots` (`RootSystem/Positive.lean:114`); `IsConvexPolyhedron` (`Analysis/Convex/Polyhedron.lean:56`, finitely many continuous affine inequalities, no boundedness); `IsPiecewiseAffineOn` (`Topology/PL/Map.lean:87`); `diagramSchurPoly` (`Schur/Basic.lean:174`), `hsymm_mul_diagramSchurPoly` (`Schur/Pieri.lean:231`), `schurPolyBasis` (`Schur/Basis.lean:301`), `symmetricHomogeneousSubmodule` (`Symmetric/Homogeneous.lean:45`), `BoundedSSYT` (`Young/Kostka.lean:206`), `rowInsert`/`reverseRowInsert`/`rowInsertEquiv` (`Young/Schensted.lean:154,354,588`), `benderKnuth`, `benderKnuth_involutive`, `content_benderKnuth` (`Young/BenderKnuth.lean:602,674,732`), `tensorMultiplicity` for Lie algebras with Killing form (`Algebra/Lie/HighestWeight/Tensor.lean`), `SplitK0` (`CategoryTheory/GrothendieckGroup/Split.lean:114`), Gordan/Stiemke/Tucker alternatives (`Geometry/Convex/Cone/Alternative.lean:144–225`). No hive, honeycomb, puzzle, LR-tableau or jeu-de-taquin object exists at the pin. Mathlib: `Subgroup.goursatFst` (`GroupTheory/Goursat.lean:43`) and `normal_goursatFst` (66, under surjective first projection), `Matrix.GeneralLinearGroup.center_eq_range_scalar` (`GeneralLinearGroup/Basic.lean:52`), `Matrix.IsTotallyUnimodular` (`TotallyUnimodular.lean:38`), `IsHermitian.eigenvalues₀` (`Analysis/Matrix/Spectrum.lean:59`), `eigenvalues₀_antitone` (62), `charpoly_eq` (156, in terms of `eigenvalues`), `isSymmetric_toEuclideanLin_iff` (`Analysis/Matrix/Hermitian.lean:56`), `UnitAddTorus.mFourier`/`mFourierCoeff`/`mFourierBasis` (`Fourier/AddCircleMulti.lean:49,247,266`), `TemperedDistribution` (`Distribution/TemperedDistribution.lean:53`), `ProperCone.hyperplane_separation'` (`Convex/Cone/InnerDual.lean:96`), `Module.Grassmannian` as the quotient-rank functor (`RingTheory/Grassmannian.lean:62`).

**Ownership against open work.** `roadmaps grep` over main and the 437 open pull requests: hives, honeycombs, puzzles, the octahedron recurrence, Kempf–Ness and the hive commutor occur only here (plus SchubertGeometry's and ClassicalGroups #1192's references to this roadmap); skew tableaux and jeu de taquin only here and in SchurWeyl #1164 (a revision pull request, which adds none of them); the Littelmann path model generically in SchubertGeometry S4 (main) and KacMoody #1124, of which this roadmap consumes S4.1–5 only, as a type-A specialization. The one duplicate found is R04.

**Adversarial table.** Values computed by brute force in a scratch script (hives enumerated on Δₙ by the rhombus inequalities of Conventions 2, LR coefficients independently by Schur-polynomial multiplication in n variables and by ballot tableaux):

| Statement | Instances | Values each side | Result |
|---|---|---|---|
| Conventions 2, n=2 slack `h(m_AB)+h(m_CA)−h(A)−h(m_BC) = −(λ₂+μ₁+ν₂) = λ₁+μ₂+ν₁` | λ=(5,2), μ=(1,−1), γ=(6,1), ν=γ* | 3 = 3 = 3; the opposite sign gives −3 | sound |
| Conventions 2, unit-edge restriction | h=49−x² on Δ₇ | unit-rhombus mixed differences ∈ {0,−2}; at p=(3,4,0), v=(2,−3,1), w=(−3,−1,4): v·w=1, all four points in Δ₇, D_vD_w h=12 | sound |
| H1.1 boundary antitone from rhombi (KTW2 Prop 1) | all enumerated hives, n=2,3 | every boundary difference list weakly decreasing; two rhombi at a boundary vertex sum to a_i ≥ a_{i+1} | sound |
| `boundary_trace` | n=2,3 | telescoping A→B→C→A gives 0 | sound (padding, R09) |
| `IsRhombus` = unit rhombus with short diagonal q0q2 | lattice vectors of sqDist 2 | exactly the six unit edges; q1≠q3 forced by sqDist 6 | sound |
| H2.1 chart `(i,j)↦(n−j,j−i,i)`, difference/inverse formulas, two GT families = native interlacing, third family | n=2 (83 triples), n=3 (53 triples) with entries ≤ 3 resp. 2 | #hives = #{GT patterns, top row μ, weight γ−λ, third family} in every case | sound |
| H2.1 input gap `λ_r−λ_{r+1} ≥ μ₁−μₙ` makes the third family automatic | same triples, those with the gap | #hives = #{whole weight fibre} in every gapped case | sound |
| H2.3 counterexample without the gap | n=3, λ=(1,0,−1), μ=ν=0 | 2 GT patterns of weight 0, 0 hives | sound |
| H2.2/H2.3 hive count = LR coefficient (KTW2 Thm 1) | 136 triples, n=2,3 | hives = Schur-product coefficient = ballot tableaux | sound |
| H0.3 `c^{(3,2,1)}_{(2,1),(2,1)} = 2` | n=3 | 2 = 2; without ballot 3, increasing-word 1 | sound |
| Source acceptance `V_(2,1,0)²` | n=3 | {(4,2,0):1,(4,1,1):1,(3,3,0):1,(3,2,1):2,(2,2,2):1}, dims 27+10+10+16+1=64 (hook-content) | sound; KT1 line 397 agrees |
| H0.2 Knuth checks | 021≡201, 012≢210 | insertion tableaux `01/2`, `01/2`; `012` vs column | sound |
| H0.4 evacuation on (2,1), (2,2) | by hand | `01/2`↔`02/1`; `01/23`, `02/13` fixed | sound |
| H0.5 ranks | Λ⁴ vs 2 variables | 5 vs 3 | sound |
| H2.4 vertical Pieri (KTW2 Prop 4) | n=3, λ∈{(3,1,0),(2,2,1)}, k=0..3 | every output γ−λ a 0/1 vector of sum k, multiplicity 1 | sound |
| H2.6/H1.6.5 A₂ count | columns e₁,e₂,e₁+e₂ | (2,3)↦3, (3,3)↦4, (0,0)↦1, (1,−1)↦0; wall a=b: a+1 = b+1; density min(a,b) | sound |
| H1.6.1 polarized coefficient | m=1, h(a)<0 | (−1)·#{c: −ca = b+a} = −1 iff b∈{−a,−2a,…}; matches −Σ_{n≥1} z^{−na} | sound |
| H1.6.3 `F(B_X)` and `B_X *_d P_X^h = T_X^h` | m=1, a>0 flipped | ∏(1−e^{−2πi⟨a,ξ⟩})/(2πi⟨a,ξ⟩); −Σ_{n≥1}[−na,−(n−1)a] = −T_{(−a)}; B_X = B_{X^h}+a | sound |
| H1.6.4 Todd inversion `c-limit(Todd(X)_pw(B_X *_d K)) = K` | X=(1): constant pieces; X=(1,1): linear pieces | piece on (b,b+1) is K(b)(x−b)+K(b−1)(b+1−x); (1+∂)f at x=b gives K(b); the sign ∂/(1−e^{∂}) would give 2K(b−1)−K(b) | sound |
| H2.7 overgroups | n=2, λ=μ=(1,0); n=1; n=0 | V⊗V=V_(2,0)⊕V_(1,1), χ(c)=c; H_sc=P, H_det=Δ; all trivial | sound |
| H4.3 tropical convolution | rank 1 ⊞ rank 1 | boundary differences max(λ,λ'), max(μ,μ'), max(ν,ν') = sorted unions | sound |
| H4.4 PRV | n=3, 1325 dominant wλ+vμ with entries ≤2 | hive count > 0 in every case | sound |
| H5.2 puzzle functional sign (KTW Thm 2) | rank 5 words 00010,00010,00100 and 00010,00100,00010; rank 6 words 000110,000101,010100 | λ₄+μ₄+ν₃ ≤ 0 and λ₄+μ₃+ν₄ ≤ 0 on all 1369 invariant triples (entries ≤2); rank-6 inequality on all 84 | sound as necessary conditions |
| Source acceptance counterexample | λ=(1⁴,0), μ=(1³,0²), γ=(2,2,1,1,1) | c=1, ν=(−1,−1,−1,−2,−2), λ₄+μ₃+ν₃=1>0 (43 violations overall), corrected sums 0,0 | sound |
| H6.2 word→partition, reversal | 0011,0101,0110,1001,1010,1100 (k=2,q=2) | ∅,(1),(1,1),(2),(2,1),(2,2); reverse(0101)=1010 ↦ (2,1) = (1)∨ | sound |
| Source acceptance Gr₂(ℂ⁴) | σ₁², σ₁⁴ | σ₁²=σ_(2)+σ_(1,1)=σ1001+σ0110; σ₁⁴[Gr₂]=2 | sound; Buch line 508 agrees |
| H7.5 Horn recursion `T_r^N` with `T_1^N=U_1^N` | N=3: 435 integral triples with entries ≤3 | Horn system holds ⟺ LR coefficient > 0, no exception; `T_2^3` has 6 triples | sound |
| H7.5 dictionary `λ(I)_a = i_{r+1−a}−(r+1−a)`, third weight dualized | N=3 (12 triples), N=4 (47 triples) | (I,J,K)∈T_r^N ⟺ c^{λ(K)}_{λ(I)λ(J)} > 0 | sound |
| H8.1/H8.2 GL₃ shape-(2,1) crystal under HK's tensor rule | all 8 vertices | f₁: 112→122, 113→123→223, 133→233; f₂: 112→113, 122→132→133, 223→233; all other actions undefined; 123 and 132 both weight 0 | sound; matches `hk` lines 951–955 |
| `hasSpectrum_iff_charpoly` | sorted spectra | both directions via multiset of roots and antitone sorting | sound |
| `hermitian_iff_hive` | n=1 | a+b+c=0 ⟺ λ+μ+ν=0 ⟺ a Δ₁ hive | sound |
| `exists_chamberPolynomial` degenerate | r=0 | hpos forces ι=∅, count=1, P=1, degree 0 ≤ 0 | sound |
| `typeA_support` | N≤1 | both sides `univ` | sound |
| `gt_reconstruction_iff`, `gt_completion_of_uniform_input_gap`, `exists_stable_gt_equiv` | n=2,3 as above | the right side is exactly the third rhombus family; boundary reads (λ, μ, γ*) along `edgePoint` | sound |

**Sources sample (every target found at its locator).** `kt1`: Theorem 4 (line 1451), Example 5 (397), §5 superharmonic weights `w(α) > (1/6)Σ w(α_i)` (1039–1041), Theorem 2 (1225: no 6-valent vertex, regular ⇒ multiplicity 1, simply degenerate ⇒ acyclic), §6 Theorem 3 and the saturation Corollary (1285, 1323), Figure 18 (1012), overlay Corollary (929), Appendix 2 Proposition 4 (1492). `ktw`: Theorem 1 (239, puzzles read clockwise), Theorem 2 (535, 0-edge functional ≥ 0), Proposition 1 (775, dimension 3n−1), Theorem 3 (964), Theorem 4 (983, chamber inequalities essential iff n>2), Theorems 5–7 (1216–1392, gentle loops ⟺ non-rigid), §5 (45), §6 (46). `ktw2`: Proposition 1 (175), Theorem 1 (194), Lemma 1 (258), Proposition 3 (263), Lemma 2 (295), Proposition 4 (327), Theorem 2 (389). `hk`: recurrence (5) (228, 237), Lemma 3.1 (379), region A (451), quarter-octahedron (714), tensor rule (951, 955), Yang–Baxter failure (1176–1186), Theorem 7.4 (1276), 7.8–7.10 (1416–1446), 7.15 (90), `r₀(x,y,z)=(x,y,n−z)` (1492). `dls`: Theorem 1.1 (37), wall agreement at the end of §3 (483). `bgr`: §1.3 (315), §1.4 (346), Lemma 1.6 (384), Lemma 4.3 (784), §7.1 (1248). `buch`: Theorem 2.4 (241), Propositions 2.13/2.15 (312, 326), Proposition 3.4 (406), Theorem 3.9 (454), Theorem 3.18 (578). `dpv`: §§1–3 (25–36). `lenz`: §2.2 (297). `bhs`: Theorem 7, Lemma 8, Theorem 9 (278–303), unimodular cones (511).

## Not verifiable

- Knutson, *Hives* handout (seven pages): no legal online copy found by the sources service; every "Handout hives1–7" locator and the handout's own cyclic GT statement (H2.3) are unchecked.
- The two "Lie Groups notebooks" S1, S2 (cited as S1pp78–82, 83, 84–89, 90–97, 93–100, 106, 108–111, 177–180, 182–190; S2pp5, 69–73, 90–92): unpublished course material, not available; the rank-5/rank-6 inequalities were tested as necessary conditions only.
- Littelmann, *Paths and root operators*, Annals 142 (1995): paywalled (JSTOR landing page); locators 2.4–2.5, 3.1, 5.5–5.7, 6.1–6.3, 7.1 unchecked, to be recorded `uncertified`.
- Fulton, *Young Tableaux*, §§1–3, §5, §§9–10, Appendix A: book, no legal text online.
- Ownership against open pull requests was checked through `roadmaps grep` and the sibling checkouts the brief lists; packages on the board (five, none related) were read from the index only.

## Source issues

- none
