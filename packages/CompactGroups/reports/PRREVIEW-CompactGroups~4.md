# Review of CompactGroups (pull request #1047 at 144ba10)
Folder: `TauCetiRoadmap/RepresentationTheory/CompactGroups/`
**Verdict:** needs changes

:robot: Independent AI review of the repaired head. Six findings: three P2 and three P3. The worker's gate passes and the dependency check is clean; the mathematics of the fourteen admitted statements survived the adversarial pass. The three blocking findings are placement (the completed base roadmap is overwritten in its own folder), the four companion Lean files that still break the Lean form rules, and one unowned input of the Layer 6 proof route.

## R01 (P2) — Put the new programme in CompactGroups Part II; the base roadmap is done and cited by layer number

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:1–7` and the whole file; `Suggested.lean:1–232`. Summary: "The comparison targets concern invariant metrics, G-finite vectors in Banach representations, metrizability, duals of arbitrary products".

**Claim:** Re-raised: r3 R02 (also r2 R05). This head still replaces the roadmap on main (504-line README, 509-line Suggested.lean, all seven layers recorded as done) by a different programme in the same folder, renumbering the layers. No repair report marks the finding not actionable.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/STATUS.md:6` records Layers 0–6 of this folder as `done` with a pinned `readme_sha`, and `STATUS.md:43` lists CompactGroups under Done; the family index `README.md:47` (unchanged by this head) still describes the folder as Haar through Peter–Weyl. Consumers cite main's numbering: `RepresentationTheory/LieHighestWeight/README.md:915` links `CompactGroups/README.md#layer-6-characters-of-compact-groups`, a fragment that does not exist at this head (Layer 6 is now "global forms"); PseudodifferentialOperators cites "CompactGroups Layers 0–3 normalized averaging", NoncompactQuantumSymmetry "Layer 4 coefficient orthogonality", CharacteristicClasses "Layer 0's normalized bi-invariant Haar probability", BordismFormalGroups "Layers 1–2 unitarizability", AutomorphicFormsOnReductiveGroups and SmoothBanachRepresentations "Layer 5" for representative-function density. At this head Layer 0 is comparisons, 1 metrics, 4 product duals, 5 abelian Fourier.

**Exact repair:** Restore main's `README.md` and `Suggested.lean` in this folder, with at most the corrections this pull request found necessary. Create `TauCetiRoadmap/RepresentationTheory/CompactGroupsPartII/` carrying this head's README and `Suggested.lean` (namespace `TauCetiRoadmap.CompactGroupsPartII`), with an introduction saying where the base stops (native Haar, unitarization, Peter–Weyl, characters, SU(2)) and importing the base by its main section numbers; update the family index line, which is this pull request's own. This also removes the nominal cycle in which LieHighestWeight's Layer 6 precursor consumes CompactGroups Layers 0–6 while this head's Layer 6 consumes LieHighestWeight Layers 0–6.

**Repair test:** No statement changes: the fourteen admitted theorems, the Circle^J obstruction, the U(2) parity criterion and the SU(2) counts 0,0,1,1,3 are carried over verbatim; every consumer fragment and layer citation listed above resolves again on main's text.

## R02 (P2) — Delete the four companion Lean files: forbidden options, missing `import Mathlib`, duplicated admissions

**Location:** `AbelianFourierTargets.lean:1–2,10`, `CountabilityTargets.lean:1–2,9`, `InvariantMetricTargets.lean:1–2,9`, `ProductDualTargets.lean:4–7`: "set_option autoImplicit false".

**Claim:** Re-raised: r3 R05. The companions are unchanged since the previous head. Three contain `set_option` (a blocking principle in this brief, whatever the gate's single-file scan reports), three lack the single `import Mathlib` line and two import Mathlib submodules; all four keep obsolete module descriptions ("not exhaustive", "future targets"). Ten of their eleven admissions restate statements of `Suggested.lean` under a second namespace `TauCetiRoadmap.RepresentationTheory.CompactGroups`.

**Witness:** `set_option autoImplicit false` at `AbelianFourierTargets.lean:10`, `CountabilityTargets.lean:9`, `InvariantMetricTargets.lean:9`; `import Mathlib.Topology.Algebra.PontryaginDual` at `AbelianFourierTargets.lean:2`; `ProductDualTargets.lean:25,40,53` repeat `Suggested.lean:111,126,139`. The worker's gate reports `set_option=0` because it scans `Suggested.lean` only.

**Exact repair:** Delete the four files. The one statement without a twin, `gramForm_invariant_iff_commutes`, is already §1.1 prose and the README names no Lean counterpart for it, so nothing is lost.

**Repair test:** `Suggested.lean` elaborated alone at the pins with 14 `sorry` warnings and no other diagnostic (this review's run); the README's backticked names all point into `Suggested.lean`, so `readme-ids` stays at 0 after the deletion.

## R03 (P2) — Own, or cite, the compact-to-complex-semisimple dictionary that §6.6 uses

**Location:** `README.md:877–902` (§6.6): "integrate the derived highest-weight module to K_der,sc by LieGroups Layer 4" and "its Lie highest weight and actual torus character give exactly that dominant element of X"; Needs line at 903–905.

**Claim:** The route applies LieHighestWeight's highest-weight theory, stated for a complex semisimple Lie algebra with a splitting Cartan subalgebra, to the compact derived algebra. The inputs it silently uses, that `(𝔨_der)⊗ℂ` is semisimple, that `𝔱_der⊗ℂ` is a Cartan subalgebra on which ad is diagonalizable with the roots LieHighestWeight expects, and that Knapp's dominant analytically integral functionals are LieHighestWeight's dominant integral weights under the 2π/i normalization of §6.2, are provided by no layer, no named supplier section and no pinned declaration. §6.5 owns only the center/derived splitting and the finite cover.

**Witness:** Knapp proves the dictionary as a theorem, not a definition: `knapp line 10666–10688` (§IV.5, printed pp.253–254, decomposition (4.31)) derives it from ad-diagonalizability (Proposition 4.24) and Proposition 2.13. Main `LieGroups/README.md:383–405` (Layer 6) states the Weyl-group identification as "a stated milestone" and `407–427` (Layer 7, not cited here) states the group complexification and the representation dictionary; neither states the Cartan/root identification. CharacteristicClasses C5.1 cites a "LieGroups Layer5A" for exactly this input, and no such layer exists on main.

**Exact repair:** Add a §6.5 target, with its own API and three Checks, stating: for compact connected K with maximal torus T, `(𝔨_der)⊗ℂ` is semisimple, `(𝔱∩𝔨_der)⊗ℂ` is a splitting Cartan subalgebra with ad-diagonalizable action, its roots are the roots of LieHighestWeight Layer 1 for this pair, and the analytically integral dominant functionals of Proposition 4.58 correspond to LieHighestWeight's dominant integral weights (Knapp, Proposition 4.24, p.249; §IV.5, pp.253–254, (4.31)). Add it to §6.6's and §6.7's Needs lines; alternatively cite LieGroups Layer 7 for whatever part it states, with the rest owned here.

**Repair test:** For SU(2), `𝔰𝔲(2)⊗ℂ=𝔰𝔩₂` with diagonal Cartan line, roots ±α where α(diag(iθ,−iθ))=2iθ, and weight n of `Sym^n` corresponds to the torus character z^n; for U(2) the central line carries the determinant direction and contributes no root, and the pair (q,a) of §6.5's third Check is unchanged; for a torus the derived algebra is 0 and the dictionary is empty.

## R04 (P3) — Align the G-finite supplier with the consumer's recorded gap

**Location:** `README.md:388–393` (§2.1): "Construct its submodule of vectors. Its underlying set is exactly {v | IsGFinite ρ v}"; `Suggested.lean:51–63`.

**Claim:** AutomorphicFormsOnReductiveGroups records `gap:banach-gfinite-density` against "CompactGroups Layer 5" and names `gFiniteSubmodule`, `gFinite_add`, `gFinite_smul`, `gFinite_map` and `gFiniteSubmodule_dense`; this head supplies `IsGFinite` and `gFinite_dense` in Layer 2 and leaves the submodule unnamed. The mathematics agrees; the names and the layer do not.

**Witness:** AutomorphicFormsOnReductiveGroups README (roadmap service text) lines 52, 302 and 308–309; `SmoothBanachRepresentations/README.md:58` repeats the same contract.

**Exact repair:** Name the submodule and its three API facts in §2.1 prose, record the gap slug and the consumer's expected names under Downstream consumers, and either keep `gFinite_dense` and say so there or rename it to the consumer's `gFiniteSubmodule_dense`. The layer number resolves itself under R01.

**Repair test:** For the trivial action on ℂ, the submodule is all of ℂ and density is trivial; for rotations on C(S¹) it is the trigonometric polynomials, and the two names denote the same density statement.

## R05 (P3) — Record the sources, including the uncertified Conway citation

**Location:** `README.md:1142–1153` (References): "J. B. Conway, *A Course in Functional Analysis*, second edition, Springer (1990), VII.9, Exercises 8–11".

**Claim:** Carried from r3 R06. The theorem-and-page locators are now present for Knapp and Etingof and the claim-level deductions are labelled as such, but the folder has no `sources.toml`, and Conway resolves only to a paywalled page: it must be recorded as `uncertified` with the exercise locator, not presented as a read source.

**Witness:** The sources service returned `uncertified: the citation resolves only to a paywalled page` for DOI `10.1007/978-1-4757-4383-8`; Knapp and Etingof fetched from the author page and MIT OpenCourseWare respectively.

**Exact repair:** Add `sources.toml` with one entry each for Knapp (author-page, Proposition 4.8/Corollary 4.9 p.240, Corollary 4.25 p.249, Theorem 4.29 pp.250–251, Proposition 4.58 pp.264–265, Theorem 4.69 p.268, Theorem 5.110 pp.335–336), Etingof (institutional, §37.1 p.199, Theorem 37.5 p.202) and Conway (`uncertified`, VII.9 Exercises 8–11).

**Repair test:** Every locator above was read at the cached page markers in this review (PDF page = printed page + 18 for Knapp; Etingof page 1 = printed 199).

## R06 (P3) — Typography residue in Layers 4–6

**Location:** `README.md:562,564,583–584,588,617,639,964` ("coordinates are1", "χ is1 on", "converge to1", "exercise11", "dimension1", "norm1", "Exterior powers1,…,n"); `747–748,776–777,806–808,882,922–923,963` (`chi`, `ell_chi`, `lambda` as prose); `955,957,959,997,1007` (leading-space paragraph starts, "SU2"/"SO3" in prose, "DISTINCT").

**Claim:** Missing spaces before numerals, ASCII transliterations of Greek letters in prose, and stray leading spaces at paragraph starts; the house style wants Unicode in prose and ASCII only inside code spans.

**Witness:** The lines quoted.

**Exact repair:** Insert the spaces; write χ, ℓ_χ, λ, SU(2), SO(3) in prose (or put the ASCII forms in code spans); drop the leading spaces and the capitals.

**Repair test:** A read of §§4.1, 5.1 and 6.2–6.9 with no number glued to a word.

## Verified sound

These are finite checks and interface audits, not proofs of the admitted theorems. No false identity was found among the admitted statements or the README's worked values.

**Previous findings, checked first.** No repair report marks any finding not actionable.

| r3 finding | This head's passage | Disposition |
| --- | --- | --- |
| R01 (P1) su(2) simplicity supplier | `README.md:1087–1103`: kernel via `TauCeti.SU2.exists_isConj_torusHom` and `symPower_torusHom_weightBasis`; "This route requires no simplicity theorem." Both declarations exist at the pin (`SU2/TorusConjugacy.lean`, `SU2/Weight.lean:134`, weight `2i−d` at `Weight.lean:105`). | Repaired. |
| R02 (P2) Part II placement | README still replaces main's done roadmap; no Part II folder. | Not repaired; R01. |
| R03 (P2) missing headlines | `Suggested.lean:38` scalar metric classification; `Suggested.lean:190` U(2) weight recognition. | Repaired. |
| R04 (P2) consume integrated action | Supplier contract `README.md:127–139`; §2.1 `406–413` uses `integratedOperatorL1`, `_toL1`, `norm_…_le`, `comp_…`, `tendsto_…_apply`; all five exist at `Continuous/Integrated/Basic.lean:141,178,188,198,403`. | Repaired. |
| R05 (P3) companion files | Unchanged. | Not repaired; R02. |
| R06 (P3) locators and inventory | §0.1 and §0.2 labelled deductions with their inputs; §1.2–1.3 cite Proposition 4.8/Corollary 4.9 p.240; §6.2–6.6 cite 4.58/4.25/4.29/4.69/5.110; SmoothBanachRepresentations label is now §4.1. No `sources.toml`. | Partly; R05. |
| R07 (P3) per-construction Checks | §§6.1–6.9 each with API bullets and three Checks; §6.3 has the scalar, involution and opposite-weight tests; §6.4 the SU(3) non-commuting reflections. | Repaired. |

**Gate, order and build.** HEAD is `144ba101c09698890dcef6ecfb7c9714ccebc1e5`; the worktree is clean; the prescribed outside-folder diff is empty; the family index files are unchanged against main. The worker's gate reports every check at 0 (`depcheck=0`, `build=0`, `stray-files=0`, `outside-folder=0`). The dependency command run by this review printed exactly:

```text
depcheck: 204 roadmaps, 1489 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. Pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`; the shared package checkout was at the branch pin with no flip for four hours. `lake env lean` on `Suggested.lean` exited 0 with 14 `declaration uses sorry` warnings and nothing else. A scratch file with `#check @name` for all 18 own declarations (16 of `Suggested.lean`, the two local instances, plus the companion-only `gramForm_invariant_iff_commutes`) elaborated; every elaborated type carries the binders its README statement needs (compactness, Hausdorffness, completeness, orbit continuity, `IsUnitary`, `DecidableEq J`), and `compactCharacter` correctly keeps only `CommGroup`/`TopologicalSpace`. The one-tactic probe (`first | rfl | simp | infer_instance`) on a scratch copy left all 17 admissions open: no padding. No sorried data, no `set_option`, no `lemma` in `Suggested.lean`.

**Headline inventory.** The README promises: (1) categorical and continuous-kernel comparisons (§0, heavy carriers, named unstated in the docstring for 0.2); (2) scalar and multiplicity-space metric classification (§1; scalar stated, multiplicity-space named unstated); (3) Banach G-finite density (stated); (4) four-way countability and the Circle^J obstruction (three statements; metrizable ↔ second countable for compact Hausdorff is Mathlib); (5) product duals and Circle^J characters (three statements); (6) abelian irreducible/character bijection, uniform density, exact Fourier basis (three statements); (7) global forms, `R(K)≃ℤ[X]^W` (named unstated) and U(2) recognition (stated); (8) SU(2) multiplicities, realization and faithfulness (two statements); the partition count is a combinatorial consequence of (8) and is not raised.

**Pinned declarations opened** (file and line at the pins): `Mathlib/RepresentationTheory/Continuous/Basic.lean` (`ContRepresentation`, `ContIntertwiningMap`); `Irreducible.lean:29` (`IsIrreducible` as `IsSimpleOrder`); `Character.lean:55` (`Representation.character` is the trace); `FDRep.lean:63`; `Topology/Algebra/Module/FiniteDimension.lean:282`; `Topology/Algebra/PontryaginDual.lean:84` (discrete for compact domain, proved by the small-arc lemma); `Analysis/SpecialFunctions/Complex/Circle.lean:122,435,483`; `Topology/Algebra/InfiniteSum/ENNReal.lean:553`; `MeasureTheory/Function/ContinuousMapDense.lean`; `GroupTheory/MonoidLocalization/GrothendieckGroup.lean:36` (`Algebra.GrothendieckAddGroup` by `to_additive`). Tau Ceti: `Compact/Haar.lean:93,97,113`; `Compact/Averaging.lean:59`; `Compact/Unitarizable.lean:125,271`; `Compact/UnitaryModel.lean:92`; `Continuous/Unitary/Basic.lean:52` (`IsUnitary` = inner-product preservation); `Continuous/Schur.lean:86`; `Continuous/MatrixCoefficient.lean:73`; `Compact/MatrixCoefficient.lean:73`; `Compact/SchurOrthogonality.lean:109`; `Compact/RepresentativeDensity.lean:142` (no Hausdorff hypothesis); `Continuous/Integrated/Basic.lean:141,178,188,198,403` (additive group, strong continuity and uniform bound as hypotheses, `-h+g` covariance, mass-one/bounded/concentrating weights); `Compact/PeterWeyl.lean:142,668,675,721` (`IrrepModel` with `dim : ℕ`, unitary, irreducible; `IrrepClass` a quotient); `Compact/Character/Basis.lean:346,356`; `Compact/FrobeniusSchur/InvariantForm.lean`, `StructureMap.lean:130`; `SU2/Basic.lean:182` (`torusHom`); `SU2/Weight.lean:105,134`; `SU2/TorusConjugacy.lean`; `SU2/Exhaustion.lean:99,299`; `SU2/Weyl/Integration.lean:146`; `Compact/FourierPeterWeyl.lean:123,147`; `Analysis/Fourier/AddCircle.lean:246` (`TauCeti.fourierPontryaginDualEquiv`); `Geometry/Hodge/Conjugation.lean:112,124,143` (`TauCeti.Hodge.complexificationConjugation`, `_toEquiv_tmul`, root-namespace `LinearMap.map_eigenspace_baseChange`); `CharacterTable/VirtualCharacter.lean:132`. Every name in the supplier contracts resolves at the pin with the namespace the README gives.

**Cross-roadmap citations resolved.**

| Citation | Where read | Result |
| --- | --- | --- |
| LieGroups Layers 0, 2, 3, 4, 5, 6 | Main `LieGroups/README.md:233,275,300,326,358,383` | Exponential local diffeomorphism; Cartan and automatic smoothness; Lie functor natural against exp, faithful on connected groups; `Hom(G,G')≃Hom(𝔤,𝔤')` for simply connected G; universal covers with covering homomorphism; tori are `Circle^r`, conjugacy into a maximal torus, `W=N(T)/T`. All as cited. Layer 7 (`407`) is the uncited complexification layer of R03. |
| LieHighestWeight Layers 0–6, 7, 9 | Main `LieHighestWeight/README.md:319,351,370,405,537,567,773,931,1432` | Layer 6 has `weylWeightOrbit`, `weightOrbitSum`, `dominantWeightBelow`, `finite_dominantWeightBelow`, `formalCharacter_eq_orbitSum_add_lower`, exactly the orbit-sum and lower-weight inputs §6.7 names; Layers 7 and 9 are ownership boundaries only. Its Layer 6 precursor (`608–773`) consumes main's CompactGroups Layers 0–6 and links `#layer-6-characters-of-compact-groups` (R01). |
| OperatorTheory/OperatorIdeals Part C, OI-C01–OI-C11 | Main `OperatorTheory/OperatorIdeals/README.md:530–558` | Column model relative to a Hilbert basis, represented operator, norm identity `‖f‖₂²=Σ‖T_f bᵢ‖²`; supports §0.2's route. |
| CharacterTheory Layers 0–4; CharacteristicClasses C5.1; Completed/OrthogonalL2Bases Part B | Main `CharacterTheory/README.md:260–713`; `CharacteristicClasses/README.md:1060` item 1; `Completed/OrthogonalL2Bases/README.md:245` | Boundaries exist as described. |
| AutomorphicFormsOnReductiveGroups §2.1, §2.7 | Roadmap service text lines 300–309, 468 | §2.1 consumes the gap (R04) and owns the locally convex extension; §2.7 owns smooth Fréchet representations and complex smooth vectors. Direction correct: AutomorphicFormsOnReductiveGroups is a consumer. |
| SmoothBanachRepresentations §4.1 | `rev/1145 …/SmoothBanachRepresentations/README.md:284–294` | Real approximation and compact-finite comparison, consuming AutomorphicFormsOnReductiveGroups §§2.1, 2.7 and the CompactGroups gap. Label now correct. |

**Seeded source sample.** Knapp (author-distributed digital second edition, PDF page = printed + 18) and Etingof (MIT 18.755 Lecture 11, PDF page 1 = printed 199) were fetched through the sources service; Conway is uncertified.

| Target | Locator inspected | Result |
| --- | --- | --- |
| 0.1 categorical comparison | README labels it a deduction from `LinearMap.continuous_of_finiteDimensional` (`FiniteDimension.lean:282`, hypotheses `T2Space`, `FiniteDimensional`) and the defining equations. | Inputs exist; no external locator claimed. |
| 1.1 Gram operators | Deduction from finite-dimensional Riesz duality; scalar convention checked in the table below. | Sound. |
| 1.2 scalar metrics | Corollary 4.9 (`knapp line 10115`, printed p.240): a commuting endomorphism of a finite-dimensional irreducible is scalar; `exists_eq_smul_one_of_isIrreducible` at `Schur.lean:86` needs only `IsAlgClosed`, finite dimension and a monoid. | Supports the statement at the Lean's generality (no compactness). |
| 1.3 multiplicity spaces | Proposition 4.8 (`knapp line 10109`): an intertwiner between irreducibles is zero or bijective. | Gives Hom = 0 for inequivalent and ℂ for equal irreducibles, as cited. |
| 2.1 Banach G-finite | Pinned `Integrated/Basic.lean:141–423` and `RepresentativeDensity.lean:142`; deduction labelled. | Inputs at the generality used (no separability, no operator-norm continuity). |
| 3.1 countability | `etingof line 6–12` (§37.1, p.199: countable base, equivalent to metrizable for compact Hausdorff); `line 151–157` (Theorem 37.5, p.202: countable `Irrep G`, `L²` decomposition, uniform density). | Locators correct; README rightly limits Etingof to the countable-base setting. |
| 4.1 product characters | Conway VII.9 Exercise 11: uncertified. The finite-coordinate argument was checked against `PontryaginDual.lean:84–100`, which runs the same small-arc argument. | Mathematics checked; locator uncertified. |
| 5.1 abelian Fourier | Conway VII.9 Exercises 8–10: uncertified. | Mathematics checked (table); locator uncertified. |
| 6.1 representation ring | Deduction from native complete reducibility and orthogonality; `GrothendieckGroup.lean:36`. | Sound. |
| 6.3 complexification | `Conjugation.lean:112,124,143`: `c(z⊗v)=conj(z)⊗v` and eigenspace-to-conjugate-eigenspace. | Sound. |
| 6.4 Weyl action | LieGroups Layer 6 normalizer quotient. | Convention checked (table). |
| 6.6 descent | Theorem 5.110 (`knapp line 14203`, printed p.335, proof p.336): compact connected G, irreducibles ↔ dominant analytically integral λ. Proposition 4.58 (`line 11115`, p.264): λ(H)∈2πiℤ on ker exp ↔ a character ξ_λ with ξ_λ(exp H)=e^{λ(H)}. Corollary 4.25 (`line 10501`, p.249), Theorem 4.29 (`line 10549`, pp.250–251), Theorem 4.69 (`line 11261`, p.268). | All as cited; the compact-semisimple dictionary used in between is R03. |
| 6.7 torus restriction | Deduction from 5.110 and LieHighestWeight Layer 6's orbit-sum expansion (`LieHighestWeight/README.md:790–800`). | Sound as a route. |
| 6.8 classical forms | Deductions; U(n) congruence computed below. | Sound. |
| 6.9 U(2) recognition | Deduction from 5.110 and `SU2/Weight.lean:105`. | Sound; statement verified below. |
| 7.1 SU(2) actions | `SU2/Exhaustion.lean:99,299`, `TorusConjugacy`, `Weight.lean:134`. | Kernel computation and counts verified below. |

**Adversarial mathematics: 48 rows.** Values are computed on both sides; "pass" means the instances agree, not that the theorem is proved.

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Coefficient and trace convention | Circle scalar action, g=i, v=w=1 | ⟨i·1,1⟩=conj(i)=−i; trace i; conj χ=−i | Pass | None |
| S₃ standard coefficient | three-cycle, e₁ | ⟨π(g)e₁,e₁⟩=cos(2π/3)=−1/2; identity 1 | Pass | None |
| Irreducibility excludes 0 | V=0, ℂ, ℂ² trivial | subrepresentation lattices 1, 2, >2 elements; `IsSimpleOrder` false, true, false | Pass | None |
| §0.1 tensor/dual on characters | C₃ character ω | tensor square trace ω², dual trace ω⁻¹=ω²; "dual = original" would give ω | Pass | None |
| §0.2 HS identity | two points of mass ½, k=1 | orthonormal basis e_i=√2·1_{i}; A_k e_i=½(e₁+e₂); HS²=2·½=1=∫|k|² | Pass | None |
| §0.2 adjoint vs transpose | k(1,2)=i | A_k entry i/2 at (1,2); adjoint entry −i/2 at (2,1); both HS²=¼ | Pass | None |
| §0.2 zero measure | μ=0, k=1 | A_k=0, ∫|k|²=0 | Pass | None |
| §1.1 scalar slot | T=2I on ℂ, h(1,i) | ⟨1,2i⟩=2i; wrong slot conj gives −2i | Pass | None |
| §1.1 invariance vs commutation | trivial ℂ² with diag(1,2); swap action | h(e₁,e₁)=1, h(e₂,e₂)=2; swap: h(πe₁,πe₁)=2≠1 and diag(1,2) does not commute with the swap | Pass both ways | None |
| `positive_selfIntertwiner_existsUnique_scalar` | irreducible ℂ, T=2I; V=0 | c=2 unique; on V=0 every c works but `IsIrreducible` fails | Pass | None |
| §1.2 rescaling isometry | h₂=4h₁ | h₂(v/2,v/2)=h₁(v,v); inverse ×2 | Pass | None |
| §1.3 commutant | S, S⊕S, empty | ℂ, M₂(ℂ), one-element algebra; dims 1,4,0; E₁₂E₂₁=E₁₁, E₁₂†=E₂₁ | Pass | None |
| Finite-group averaging | C₃ trivial | average (h+h+h)/3=h; unnormalized 3h | Pass | None |
| `IsGFinite` body | v=0; nonzero trivial vector over ℂ and 𝔽₂ | span dims 0 and 1; `FiniteDimensional` true in both fields | Pass | None |
| G-finite sum/scalar | modes 0 and 1 on C(S¹) | dims 1,1; sum dim 2≤2; zero scalar dim 0 | Pass | None |
| `gFinite_dense` | trivial action; rotations on C(S¹), f=Σ_{k≥1}2⁻ᵏzᵏ | distance 0; N-term tail ≤2⁻ᴺ→0; E=0 trivially dense | Pass | None |
| Strong vs norm continuity | rotation by θ≠0 on C(S¹) | ‖R_θ−I‖=2 for all θ≠0; each orbit map continuous by uniform continuity | Pass; hypothesis necessary | None |
| Noncompact control | ℤ shift on ℓ²(ℤ), δ₀ | translates orthonormal, orbit span infinite-dimensional; outside the theorem | Pass | None |
| Integrated action normalization | trivial ℂ, f of mass 1, 2, 0 | T_f 1=1, 2, 0 | Pass | None |
| Left covariance | S₃ regular, f=6·1_{t}, h=(12), t=(23) | T_f=π(t); π(h)T_f=T_{f(h⁻¹·)}=π(ht), ht=(123); reversed order (132) | Pass | None |
| Approximate-identity estimate | C_π=2, ‖v‖=3, ‖p−u‖₁<ε/24 | second error <6·ε/24=ε/4, first <ε/2; total <3ε/4<ε | Pass | None |
| `secondCountable_iff_countable_irrepClass` | {1}, S₃, Circle, Circle^J uncountable | second countable T,T,T,F; dual sizes 1,3,ℵ₀,≥|J| | Pass both directions | None |
| `separable_L2_iff_countable_irrepClass` | S₃; Circle^J | dim L²=1+1+4=6, separable, 3 classes; uncountable J: √2-separated family, both false | Pass both directions | None |
| Hilbert-basis bridge | zero space; ℓ²(ℕ); ℓ²(J) | index 0, ℵ₀, |J|; separable T,T,F; ball radius ⅓<√2/2 | Pass | None |
| `not_separable_L2_circleProduct` | J uncountable; J=∅ control | ∫conj(χ_j)χ_k=0 (j≠k), ‖χ_j−χ_k‖²=2; empty product has L²≅ℂ and the premise fails | Pass | None |
| Borel instances | J=∅, Circle², uncountable J | σ-algebra {∅,G}; arc cylinders Borel; complement of the identity Borel but not cylinder-measurable | Pass | None |
| `character_finite_coordinates` | J=∅; S₃×C₃ sign·χ; x=y·h split | empty product 1; value −ω at (transposition, generator); coordinatewise y·h=x with χ(h)=1 | Pass without commutativity | None |
| Small-arc lemma use | z=1, −1, i | powers of 1 in the arc; −1 fails at n=1; i fails at n=2 | Pass | None |
| `exists_productDualEquiv` | Circle², exponents (1,−1) at (i,−1) | forward i·(−1)⁻¹=−i; restrictions i and −1; generator equation χ(x_j) | Pass | None |
| Direct-sum topology | Circle^ℕ, χ_n=z_n | each coordinate restriction eventually 1; χ_n(−1,−1,…)=−1 for all n; no convergence in the discrete dual | Pass | None |
| `circleProduct_character` uniqueness | one coordinate, exponents 1 and 5 at e^{iπ/3} | e^{iπ/3}≠e^{5iπ/3}; empty J unique zero family | Pass | None |
| `exists_irrepClass_characterEquiv` | {1}, C₃; S₃ control | dims 1; C₃ scalars 1, ω, ω² at the generator; S₃ has a 2-dimensional irreducible and is not `CommGroup` | Pass | None |
| Scalar-action equation excludes inversion | Circle at i | π(i)=i·id vs inverse −i·id | Pass | None |
| `compactCharacter` multiplication/conjugation | χ=z, ψ=z² at i | c_χc_ψ=i·(−1)=−i=c_{χψ}; conj(i)=−i=c_{χ⁻¹}(i) | Pass | None |
| Coefficient reindexing | scalar action n=1 | native coefficient z⁻¹ = character index −1; c_χ ↔ model χ⁻¹ | Pass | None |
| `compactCharacter_span_dense` | {1}, C₃ | span dims 1, 3 = dim C(G) | Pass | None |
| `exists_characterBasis` | Circle at i; C₃ | b_χ(i)=i; ‖c_χ‖₂²=∫1=1; C₃ pairings δ | Pass | None |
| Parseval | f=c_χ+2c_ψ, χ≠ψ; f=0 | coefficients 1, 2; Σ|f̂|²=5=‖f‖²; 0=0 | Pass | None |
| §6.1 ring | {1}; Circle t, t⁻¹; −[ℂ] | R=ℤ; t·t⁻¹=1, traces i·(−i)=1; dim −1 outside the cone | Pass | None |
| §6.2 weights and periods | z↦z⁻¹; period 2π; functional ½ | weight −1, trace −i at i; exp(2πi)=1; exp(iπ)=−1 not a character | Pass; matches Proposition 4.58's 2πi | None |
| §6.3 conjugation | rotation plane, v=e₁−ie₂ | R_θv=e^{iθ}v (weight +1); c(v)=e₁+ie₂ weight −1; c(iv)=−ic(v); c²=id | Pass | None |
| §6.4 Weyl action order | SU(3), s₁=(12), s₂=(23), (w·χ)(t)=χ(n⁻¹tn) | n_σ⁻¹diag(t)n_σ=diag(t_{σ(j)}), so σ·e_i=e_{σ(i)}; (s₁s₂)·e₁=e₂, (s₂s₁)·e₁=e₃; wall (1,1,0) orbit of size 3 | Pass; left action law consistent | None |
| §6.5 covers | Circle, SO(3), U(2) | Lie dims 1+0, 0+3, 1+3; kernels of size 1, 2, 2; U(2) kernel {(1,I),(−1,−I)}, (q,a)↦(−1)^{q−a}: (1,1) descends, (0,1) not | Pass | None |
| §6.6 descent | SU(2) weights 1, 2 to SO(3); (1,1)⊗(−1,1) | −I acts −1, +1; product scalar 1; 2I descends and pulls back to 2I | Pass | None |
| §6.7 orbit sums | SU(2) λ=2, λ=0; t²+t⁻² | χ₂=(t²+t⁻²)+1; χ₀=1 not 2; t²+t⁻²=χ₂−χ₀ virtual | Pass | None |
| §6.8 U(n) congruence | U(3) λ=(2,1,−1); (1,0); U(1); U(0) | q=2, a=(1,2), 1+4=5≡2; ζ^{0−1}≠1; mod 1 empty; U(0) ring ℤ | Pass | None |
| `u2_weight_character_iff` | f=0; (−1,−1); 1,2,1 at (2,0),(1,1),(0,2); ±(1,−1); (1,0),(0,1) | dims 0, 1, 4, –, 2; outward differences nonneg except f(1,−1)=1>f(0,0)=0; Sym²⊕det has m_{(1,1)}=2−1=1, m_{(2,0)}=1; standard rep weights (1,0),(0,1) | Pass both directions | None |
| `su2_multiplicities_and_faithfulness` | n=0; Sym¹⊕Sym¹; Sym²⊕Sym⁰ | m=0, injective false, no odd d; m₁=2, dim 4, kernel {I}, injective; kernel {±I}∩SU(2)={±I}, no odd d | Pass both directions | None |
| Kernel of Sym^d | d=0,1,2,3; z=i, −1 | weights 2i−d; z²=1 forces z=±1 for d≥1; −I acts (−1)^d; kernels SU(2), {I}, {±I}, {I}; eigenvalues at i: (−i,i), (−1,1,−1) | Pass | None |
| `exists_su2_of_multiplicities` | m=0; m₀=2, m₁=1 | dims 0 and 2+2=4; character at −I: 0 and 2−2=0 | Pass | None |
| Partition count | n=0…4 | p=1,1,2,3,5; p_odd=1,1,1,2,2; differences 0,0,1,1,3 | Pass | None |

**Duplication and ownership.** The objects of Layers 1–7 were searched by object through the roadmap service across the open heads and main. Generic integrated operators, Peter–Weyl, characters and the SU(2) classification are native and are consumed, not restated. The Circle^J obstruction, product duals, abelian Fourier basis, U(2) recognition and SU(2) embedding classification have no other owner among the supplied checkouts; LieHighestWeight Layer 6 builds a Lie-algebra Grothendieck ring, a different object from §6.1's continuous group ring. No `Suggested.lean` of a readable roadmap declares a fully qualified name of this file. Ownership against open pull requests without supplied files was not checked.

## Not verifiable

- **Conway**, *A Course in Functional Analysis*, second edition, VII.9 Exercises 8–11: the sources service resolved DOI `10.1007/978-1-4757-4383-8` only to a paywalled page (`uncertified`). The exercise numbering, pages and hypotheses could not be checked; Layers 4–5 were verified mathematically instead (table above).
- The §0.2 Hilbert–Schmidt identity and the §2.1 Banach density carry no literary locator; both are labelled deductions with named inputs, and their finite controls are in the table.

## Source issues

- **Misprint** in etingof at Corollary 37.7 proof, printed p.203 (`etingof line 174–176`): the source defines the kernel with the first m irreducibles and then writes the unitary group of the sum of the first n; it should be m in both places; affects the proof.
