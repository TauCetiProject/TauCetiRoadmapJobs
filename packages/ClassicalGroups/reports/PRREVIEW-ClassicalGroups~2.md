# Review of ClassicalGroups (pull request #1192 at 4fd9f66)
Folder: `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/`

**Verdict:** needs changes

AI-assisted independent review. Locations abbreviated `README` and `Suggested` below are in the folder named above. The findings concern this folder only. The PR worktree was not edited.

## R01 (P1) — Restore the half-unit shift in the type-C interpolation operators

**Location:** `README.md:768–777`: “`f_i=g_i=F_ii−i`”.

**Claim:** These are Molev's operators (3.10), with his multiplicity vectors and their specified normalization.

**Witness:** `molev line 1355` defines gᵢ=fᵢ+1/2; `molev line 1765` repeats the convention. For the C₂ highest weight (0,−1), at u=−5/2 the README's interpolation coefficients are (11/32,21/32), whereas Molev's are (0,1).

**Repair:** Keep ρᵢ=−i and fᵢ=Fᵢᵢ−i, but set gᵢ=fᵢ+1/2. Retain lᵢ=λᵢ−i+1/2 and the right-evaluation convention for the noncommutative polynomial. Add the displayed C₂ interpolation test. Substitution gives g=(−1/2,−5/2), so the corrected coefficients are exactly (0,1); changing only the prose without changing the operator is insufficient. Source: (3.10)–(3.12), printed pp.31–32, and (3.30), p.41, in the cited v2.

## R02 (P1) — The generic SO/Sp group–Lie bridge is not supplied on main

**Location:** `README.md:480–495`: “Consume LieHighestWeight Layer9's connected rational fixed-vector comparison”.

**Claim:** An earlier generic theorem for finite-dimensional rational modules of smooth connected affine reductive groups supplies the SO/Sp stable-subspace and Hom comparisons.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:1501–1512` specifies a GLₙ bridge, consuming ClassicalGroups Layers 2–4. The generic fixed-vector contract occurs only in the supplied open revision, at `README.md:1983–2001`.

**Repair:** Supply this precisely scoped generic theorem as an owned prerequisite in an eligible earlier continuation, or make its proof an explicit target here with the actual stabilizer and Cartier inputs. Do not consume a revision of an existing roadmap as though it had merged, or reuse the GL-specific theorem for SO/Sp. The repaired contract must cover Sp₂ and SO₃; it must exclude the characteristic-p weight-p character of Gₘ (zero differential, nontrivial action) and a disconnected group's sign representation. These controls distinguish the required theorem from the available GL specialization. No matching declared gap exists.

## R03 (P1) — The LR tableau supplier contract exists only in an ineligible revision

**Location:** `README.md:583–592`: “consume that Layer7's finite skew LR-tableau carrier and its weight-preserving tableau-product bijection”.

**Claim:** SchurWeyl Layer 7 supplies the particular `LRTableau` carrier, ballot convention, bijection and product theorem used here.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:323–350` has Frobenius/Schur functions and RSK, but no LR carrier/product theorem. The open revision defines `LRTableau` at 462–464. Pinned Pieri does not supply general LR.

**Repair:** Cite an eligible earlier owner of the full LR contract or declare the exact missing contract through the permitted gap mechanism. An open revision of SchurWeyl is not an eligible dependency. For the horizontal-two-strip application, use pinned `TauCeti.hsymm_mul_diagramSchurPoly` directly. Recheck the repaired general contract on s_(1)²=s_(2)+s_(1,1), including one variable where the second term is zero. Do not count a commit link to the revision as resolving ownership.

## R04 (P2) — The matrix-monoid extension is already owned by ReductiveGroups

**Location:** `README.md:190–237`: “This matrix-monoid specialization is owned here”.

**Claim:** This roadmap constructs the coordinate bialgebra, unique polynomial extension and nonnegative-weight criterion.

**Witness:** Main `TauCetiRoadmap/ReductiveGroups/README.md:1933–1947`, §10D, already requests the End(V) extension, its coordinate-bialgebra laws, uniqueness, scalar degrees and nonnegative-weight criterion over every field.

**Repair:** Import ReductiveGroups §10D by name and specify only the concrete comparison to `TauCeti.IsPolynomialRep` and the native matrix representation carrier. Delete the second generic construction and its duplicate acceptance target. Preserve any genuinely additional comparison by stating exactly how it differs. At N=1, both descriptions give A↦Aᵈ for d≥0 and exclude A↦A⁻¹; at N=0 both give the identity action. There is no different mathematical object here to justify two owners.

## R05 (P2) — State the statable GL classification headline

**Location:** `README.md:385–398`; `Suggested.lean:161–189`.

**Claim:** Dominant integer weights classify all irreducible rational GLₙ representations, including uniqueness.

**Witness:** No theorem classifies an arbitrary rational irreducible W. The scratch signature `∃! l, Nonempty (W ≅ highestWeightRep n l)` elaborates at the pins; existing statements only construct models and compare Schur modules.

**Repair:** Add that classification theorem for `(W : FDRep ℂ (GL (Fin n) ℂ)) [Simple W]` with `TauCeti.IsRationalRep W.ρ`. List the other headlines explicitly in the module docstring and identify the missing carrier for every genuinely unstatable one. Do not use character identities as substitutes for promised representation isomorphisms. The n=1 test requires every integer character, including t↦t⁻¹; n=0 requires the unique empty dominant weight. Both are expressed by the tested signature.

## R06 (P2) — Remove admitted data from the acceptance test

**Location:** `Suggested.lean:252`, and the declarations listed below.

**Claim:** The file tests GT vectors/operators and SO/Sp representations on definite mathematical objects.

**Witness:** The gate reports sixteen data declarations whose bodies contain `sorry`. For example, `gtGenerator` and `matrixUnitAction` have no construction; subsequent equations refer to admitted endomorphisms rather than the advertised differentiated action.

The sixteen sites are `interlacingShapes` (252), `gtBasis` (282), `gtGenerator` (303), `matrixUnitAction` (334), `normalizedHighestVector` (365), `sourceGTLowering` (373), `spTorus` (408), `spHighestWeightRep` (416), `soOddHighestWeightRep` (433), `soEvenHighestWeightRep` (436), `soTwoCharacter` (439), `spLastPlaneInclusion` (454), the `SpIntermediate` Fintype instance (463), `spMultiplicityBasis` (472), `spMultiplicityEvaluation` (481), and `scalarRestrictionSubrepOrderIso` (738).

**Repair:** Keep only small necessary definitions with real bodies. State existential headline theorems on native carriers where that states the actual result; put unavailable normalized constructions in the README and name their missing carriers in the module docstring. Remove every dependent acceptance declaration that still mentions admitted data. Rank zero demands a one-dimensional unit and nonzero highest vector; a bare admitted vector/endomorphism supplies no computable value, whereas an existential theorem can require the genuine nonzero/unit laws. Rerun the gate until `sorry-data=0`.

## R07 (P2) — Put new programmes in a continuation of the existing roadmap

**Location:** `README.md:188–252`, `294–365`, `824–1008`, `1038–1186`.

**Claim:** A new matrix-monoid/functor programme, complete diagonal-overgroup classification and mixed-contraction programme are added to this base roadmap.

**Witness:** Main ClassicalGroups already plans Layers 0–6. It has no Layers 0A, 2A, 6A, ordinary Kan-extension programme or mixed-contraction/Pieri programme. The PR adds those programmes to the existing plan.

**Repair:** Preserve corrections and native-API citations to the existing base, but place genuinely additional programmes in an explicitly named continuation with an introduction saying where the base stops. Coordinate with the readable ClassicalGroupsPartII's existing GSp ownership; do not create a second owner under that same name. Import the general matrix-monoid theorem from ReductiveGroups as in R04. This is repairable by separating scope, so the verdict is needs changes rather than rejection of the whole mathematical programme.

## R08 (P3) — Remove both option overrides

**Location:** `Suggested.lean:48`; `U3PieriTargets.lean:11`.

**Claim:** The signatures are acceptable under the pinned defaults.

**Witness:** The files set `backward.isDefEq.respectTransparency false` and `autoImplicit false`. The gate reports the first; the same form rule applies to the companion.

**Repair:** Remove both `set_option` commands. Make necessary instances/type arguments explicit, then elaborate with default options. The successful original build is not evidence that the signatures elaborate without the first override; no default-option repair was made in this read-only review.

## R09 (P3) — Apply the import rule to all five companions

**Location:** `AntidiagonalTargets.lean:1–4`, `EndomorphismKanExtension.lean:1–3`, `MixedSymmetricContractionTargets.lean:1–3`, `PolynomialMonoidExtensionTargets.lean:1–2`, `U3PieriTargets.lean:1–4`.

**Claim:** The companions satisfy the same Lean form as Suggested.

**Witness:** All five import Mathlib submodules and omit the required single `import Mathlib`; U3 also imports `Mathlib.Tactic`. The worker's import counters cover Suggested and do not certify these files.

**Repair:** Replace each companion's Mathlib submodule imports by one `import Mathlib`, retaining only individually used Tau Ceti imports. Give each file the prescribed module docstring and each retained declaration a mathematical docstring. Re-elaborate the actual companion modules; existing submodule imports are not an exception to the stated rule.

## R10 (P3) — Replace the commit-pinned roadmap link

**Location:** `README.md:574`.

**Claim:** The SchurWeyl link is a standing supplier citation.

**Witness:** The URL contains `blob/149fe79fc7f66b28ec635f15ec6553c7eff79b17`. The gate reports `blob=1`.

**Repair:** Cite SchurWeyl by roadmap name and section on main. First repair R03: changing only the URL would point the claimed LR contract at a section that does not contain it. The corrected citation must resolve to the actual supplier text.

## R11 (P3) — Delete padding and native theorem restatements

**Location:** `Suggested.lean:95`, `100`, `107`, `156`, `170`, `198`, `292`, `705`, `708`, `720`; `EndomorphismKanExtension.lean:53–57`.

**Claim:** These declarations are headline acceptance theorems.

**Witness:** Scratch probes close `char_tensorPowerRep` and `char_extPowerRep_diagonal` with `simp`, `external_diagonal` with `rfl`, and, with the native Decomposition import, `weightSpace_isInternal` with `exact TauCeti.IsRationalRep.isInternal_weightSpace h`.

The file already proves `highestWeightRep_simple` by `infer_instance`, `schurPoly_isSymmetric` by one native theorem, and `card_gtPatterns_eq_weylDimension` by one native theorem. `tensorSquare_char` mirrors the worked acceptance Check; `rank_one_equalities` and `rank_zero_equalities` are boundary cases. The Kan companion's `restrictionIso_hom` is `rfl`. The membership APIs at Suggested lines 542–550 merely unpack the three subgroup definitions; they belong beside those definitions in the README, not among the deep end theorems.

**Repair:** Delete them from `Suggested.lean` (and delete the analogous padding from the companion). Keep the mathematical Checks in the README; replace duplicated library targets there by exact supplier citations. Do not “fix” these by proving them in place. The n=2 diagonal (2,3) tests still read 25=25 for the tensor character and 6=6 for Λ²; their truth does not make the declarations new acceptance goals.

## R12 (P3) — Give sampled claims exact legal-source locators

**Location:** `README.md:283–289`, `409–556`, `609–620`, `833–970`, `1038–1186`, `1232–1249`.

**Claim:** The reference list supports the statements at identifiable locations.

**Witness:** Young-symmetrizer/Weyl-dimension claims cite broad book sections; torus, Hodge, overgroup, contraction and U(3) claims lack claim-level locators. Knutson/Haiman provenance from the PR is absent from the references, and there is no `sources.toml`.

**Repair:** Attach theorem/section and printed-page locators to each claim, in the author's own words, and record every work under one manifest key. For statements proved by an original combination of sources, identify the ingredients and own the connecting argument. Record inaccessible books as uncertified rather than claiming their contents were verified. The sample ledger below records the precise access limits; this finding is about absent locators, not a presumption that inaccessible sources are false.

## R13 (P3) — Restore per-definition Checks and per-target dependencies

**Location:** `README.md:26–161`, `163–970`, `1188–1230`.

**Claim:** The document provides the required buildable roadmap structure.

**Witness:** There are no `*Needs:*` lines, `**Checks.**` blocks or layer-ending Examples/Dependencies. The antidiagonal-adjoint and regular-coefficient definitions each lack three discriminating Checks. Scope/ownership and Exact supplier contracts sections are absent.

**Repair:** Organize the existing mathematics into the prescribed sections; give every definition its API and at least three computed discriminating Checks, and every target its actual statement/proof-route inputs. Resolve the shared ownership in R02–R04 there. Examples below provide controls: transpose versus conjugate transpose, n=0 scalar-kernel behavior, and the missing type-C half shift. One global Ordering paragraph does not distinguish early construction inputs from later classification inputs.

## R14 (P3) — Remove the nonexistent SchubertGeometry section citation

**Location:** `README.md:1118–1119`: “SchubertGeometry S4.4a's independent early 15-dimensional kernel calculation”.

**Claim:** That calculation has the cited owner and locator.

**Witness:** Neither main nor the supplied SchubertGeometry head has S4.4a. The supplied head has ‘4.4 Characters and tensor components’, not the asserted early kernel calculation.

**Repair:** Delete this non-prerequisite comparison or replace it with the exact existing calculation and locator. Keep the independent calculation here: for N=3, (m,n)=(2,1), the dimensions are 18−3=15. The numerical result is correct; its claimed section is not.
## Verified sound

I read all seven requested files, the family index, the main ClassicalGroups baseline, the normative README/CONTRIBUTING, and comparison material from main LieHighestWeight, RootSystems and SemisimpleAlgebras. The outside-folder diff is empty. The pinned revisions are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`; the inspected content main is `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`.

**Gate and elaboration.** The supplied gate passes the targeted build and dependency check but fails `set_option=1`, `blob=1`, `sorry-data=16`; the other reported counters are zero. I built the missing imported `TauCeti.Algebra.Lie.GeneralLinear.Radical` object and ran the specified `lake env lean` elaboration of Suggested: exit 0, 73 `sorry` warnings and no other diagnostics. The independently rerun dependency check printed exactly:

```text
depcheck: 204 roadmaps, 1487 edges, 0 problem(s)
```

It printed no UPWARD, CYCLE or moved line. This does not establish the existence of the more specific supplier contracts in R02/R03. The revised LHW/SchurWeyl ordering is not a repair to main; pinned native constructions can remove the duplicated construction edges.

**Signatures and probes.** A scratch copy appended `#check @…` for all 132 named declarations in Suggested. Its elaboration succeeded; I compared the explicit binders and the Restriction section's inferred parameters with the prose. Finite-dimensionality and rationality survive in the semisimplicity/classification-comparison signatures; both V/W module structures survive in the admitted order-isomorphism family. The anonymous Fintype declaration explicitly binds r,a,c. No lost-section-variable defect was found. The SO/Sp admissions still lack implementations; retaining binders is not a cure for R06. Companion signature copies cover a further 24 named declarations. No PR signature was changed.

For all 57 admitted theorem declarations in Suggested, separate scratch probes tried `rfl`, `simp`, and `infer_instance`, with an admission fallback only after the tactic failed to close the goal. The successful basic probes were lines 95 and 100 (`simp`), and line 720 (`rfl`); `infer_instance` closed no admitted theorem. After adding the existing `TauCeti.RepresentationTheory.ClassicalGroups.Weight.Decomposition` import to the scratch copy, an exact-native-lemma probe closes line 156. Directly proved one-step restatements and boundary/Check padding were also inspected (R11). Failed attempts are not reported as successful proofs. The classification signature in R05 was separately elaborated. These are interface/padding tests, not proofs of the remaining admissions.

**Pinned objects opened.** Each location below is relative to its named pinned library root. The table resolves native contracts and duplication witnesses.

| Library file and line | Declaration and what its actual contract supplies |
| --- | --- |
| Mathlib `LinearAlgebra/UnitaryGroup.lean:289–313` | `orthogonalGroup` and `specialOrthogonalGroup` use `starRingOfComm`, so orthogonality is transpose, not conjugate transpose. SO additionally imposes determinant one. |
| Mathlib `LinearAlgebra/Matrix/GeneralLinearGroup/MvPolynomial.lean:31` | `MvPolynomial.eq_of_eval_eq_on_gl` needs an infinite field, finite matrix indices, and equality on all invertible matrices. It is sufficient for the complex density step, not an extension theorem by itself. |
| Mathlib `GroupTheory/Goursat.lean:43`, `:59`, `:65` | `goursatFst`, membership `(g,1)∈H`, and `normal_goursatFst` under surjectivity of the first projection. Containment of the diagonal supplies that hypothesis. |
| Mathlib `CategoryTheory/Functor/KanExtension/Pointwise.lean:398`, `:589`, `:614` | Full-faithful pointwise extension has an invertible unit; `pointwiseLeftKanExtension` and its unit use actual colimits. They assert neither additivity in source arrows nor finite outputs. |
| Mathlib `RingTheory/MvPolynomial/WeightedHomogeneous.lean:128` | `weightedHomogeneousSubmodule` uses the supplied variable weights and degree. Zero belongs to every degree; it does not itself provide a group action. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/DominantWeight.lean:117`, `:204`, `:257` | `detShift` is 0 at rank zero; `weightOfShape` truncates rows; `detShiftShape` shifts before taking a shape. The row bound on Schur/irreducible comparison is essential. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/Weight/Decomposition.lean:233` | `IsRationalRep.isInternal_weightSpace`: exactly the admitted weight-decomposition target, over its native finite-dimensional rational carrier. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/Weight/HighestWeight.lean:288` | `IsRationalRep.exists_highestWeightVector` requires nonzero W; existence of such a vector is not the full classification bijection. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/TensorPower.lean:73`, `:198` | Permutation/tensor-action commutation and tensor-power character. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/ExteriorPower.lean:80`, `:138` | Top exterior action and torus character. The latter is exactly the exterior-character admission. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/SymmetricPower.lean:76` | Symmetric-power torus character in complete homogeneous polynomials. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/WeylModule/Basic.lean:393`, `:472` | Young-image vanishing iff the shape has too many rows; this should be consumed, not reconstructed. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/WeylModule/Irreducible.lean:179` | `simple_schurFunctor_iff` requires precisely the row bound. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/WeylModule/Rational.lean:94`, `:172`, `:197`, `:214` | Actual determinant-twisted carrier, bundled module, simplicity instance, and its character twist. Simplicity of these models does not assert exhaustiveness. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/WeylModule/SpecialLinear.lean:116` | Equality of restricted determinant twists on the same carrier; this alone is not the new irreducibility restriction theorem. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/WeylModule/SchurWeyl.lean:150` | The actual Schur-image torus character expressed using Specht characters, a valid input to the character route. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/GelfandTsetlin/Basic.lean:99–108` | Entries outside `i<j≤n` are forced to zero. Thus those junk entries cannot defeat the proposed eigenvalue injectivity. |
| Tau Ceti `RepresentationTheory/ClassicalGroups/GelfandTsetlin/Dimension.lean:187` | `card_topRow_eq_weylDimension`, already proved at the pin. |
| Tau Ceti `RingTheory/MvPolynomial/Symmetric/Schur/Symmetric.lean:141` | `isSymmetric_diagramSchurPoly`, already proved. |
| Tau Ceti `RingTheory/MvPolynomial/Symmetric/Schur/Pieri.lean:231` | `hsymm_mul_diagramSchurPoly`, for all horizontal-strip sizes including zero, with taller shapes vanishing; enough for the rank-three symmetric-square comparison. |
| Tau Ceti `Algebra/Lie/GeneralLinear/Radical.lean:221` | `slIdeal_le_or_le_center` assumes 2≠0; it provides the two branches, not by itself the four-subspace classification. |

**Resolved roadmap ownership.** Searches used the roadmap service by objects (GT patterns, Cartan components, LR tableaux, rational fixed vectors, polynomial monoid actions, mixed tensors and overgroups), main files, the provided relevant open heads, and board-package design material. Matching inherited copies of ClassicalGroups in unrelated checkouts were not treated as independent owners. No new fully qualified declaration-name collision with a different readable roadmap was established. The resolved citations are:

| Cited owner | Resolution and consequence |
| --- | --- |
| RootSystems, root/Weyl geometry | Main `RepresentationTheory/RootSystems/README.md:44–51` assigns lattices and ρ to LieHighestWeight, agreeing with this roadmap's separation. No weight-lattice theorem was inferred from a root-system name. |
| LieHighestWeight, lattice/highest weight/Weyl theory | Main Layers 2, 4, 6 and 9 exist. The actual GL differentiation statement is at 1501–1512 and its dependency order at 1791–1803. The generic early SO/Sp contract is R02, not resolved by the open revision. |
| ReductiveGroups, Layers 1–3, 5P, 6 and §10D | Main has comodules, tangents, stabilizers, characteristic-zero smoothness and reductivity. Layer 5P at 460–464 contains the Cartier input, but not by itself the claimed LHW fixed-vector theorem. §10D's extension criterion at 1933–1947 is R04's earlier owner. |
| SchurWeyl, Layers 2, 7–9 | Main has Young symmetrizers, Frobenius/Schur functions, duality and Brauer-image theory. Main Layer 7 does not contain the specific LR contract. The open revision at 462–464 and 1106–1115 confirms the proposed replacement, but is not an eligible supplier. |
| LieGroups, Layers 0–4 | Main has exponentials (233 onward), the closed-subgroup theorem and Lie/group integration. This is the relevant general owner for the overgroup argument, not later compact-group tensor theory. |
| SemisimpleAlgebras, Layers 1/3 | Main 186 onward and 233–247 supplies Schur/density comparisons with finiteness over the commutant; over ℂ the scalar-commutant reduction is required and valid. |
| SpinRepresentations | Main Layers 4–6, at 665, 777 and 839 onward, owns spin/half-spin and low-rank comparisons. Integer SO weights do not import the entire spin half-lattice. |
| TensorProductCombinatorics | The supplied head's contract at 330–350 names diagonal-overgroup/restriction gaps from ClassicalGroups. It is a downstream request, not a proof of the classification and not an input here. “H2” is older shorthand; its current Layer 2 has the applications. |
| SchubertGeometry S4.4a | Missing in both main and the supplied head: R14. No mathematical prerequisite was inferred from that sentence. |
| ClassicalGroupsPartII | The supplied head's CG.1.4–CG.1.8 develops primitive exterior modules and highest weights for GSp with multiplier twists and field descent. Those extra structures distinguish its ownership from the complex Sp specializations here. It must be coordinated with any continuation required by R07. |

**Headline inventory.** The README promises complete rational GL/SL and SO/Sp/O classification; Schur-image identification and character/Laurent character/dimension formulas; tensor/LR decompositions; GL/SO branching and normalized GT bases with Capelli separation; symplectic Hom bases and evaluation decomposition; polynomial matrix-monoid extension and all-map Schur functors; the four diagonal overgroups and restriction theorems; ordinary Kan extension; mixed Fischer decomposition, harmonic classification/dimensions and U(3) weights; and the symmetric-square Pieri family. Suggested states character/dimension and overgroup headlines, but omits the statable full GL classification, uses admitted data for normalized/form-group constructions, and does not identify unstatable headlines in its docstring. Companion targets cover only selected extension, adjoint, surjectivity and Pieri assertions. R05/R06 address those distinctions; “not exhaustive” is not the required missing-carrier inventory.

### Adversarial values: README and sampled mathematical targets

All calculations below concern the stated complex/characteristic-zero lane unless a row explicitly tests an excluded input. “Pass” means the displayed instances agree; it is not a claim to have proved the general theorem. There are 199 adversarial rows: 42 README claims/conventions, 132 named Suggested declarations, its anonymous instance, and 24 companion declarations. Rows for admitted data compare the intended mathematical model and a wrong model, and explicitly do not certify an evaluation of the admitted Lean term.

| Statement / location | Instances | Computed values on the two sides | Result / change |
| --- | --- | --- | --- |
| Young symmetrizer and row/column images, 283–289 | d=2; n=1,2 | c_row=1+swap has c²=2c; ranks 1,3. c_col=1−swap has ranks 0,1. | Pass; do not use unnormalized c as an idempotent. |
| Schur-Weyl dimension decomposition, 290–292 | n=2,d=3, including S₃ | dim tensor=8; Sym³ contributes 4·1 and shape (2,1) contributes 2·2; 4+4=8. | Pass; taller shape contributes 0. |
| Weyl dimension formula, 609–620 | (), (−2), (2,1), (2,1,0), (1,0,−1) | Products 1,1,2,8,8; representation dimensions 1,1,2,8,8. Denominators for n=3 are 1,2,1. | Pass, including empty products and twists. |
| Hook-content comparison | n=2, shape (2,1) | Contents give (2/3)·3·1=2; weight product gives (2−1+1)/1=2. | Pass; factors must be rational before conversion to ℕ. |
| Tori, lattices and differentiation, 409–427 | u=(1,i), v=(1,−i)/2; character t^m | u·u=v·v=0; u·v=1. At t=e^s derivative is m, including m=−1. | Pass; Hermitian pairing would give u·u=2 instead. |
| Antidiagonal Gram and adjoint, 429–449 | r=1; A=diag(i,1) | Gram is [[0,1],[1,0]]; A^R=diag(1,i); (A^R)^R=A. Hermitian adjoint gives diag(1,−i). | Pass; no conjugation. |
| Form equation iff reverse-adjoint inverse | A=diag(2,1/2); A=diag(2,1) | First: AᵀJA=J and AA^R=I. Second: 2J≠J and 2I≠I. | Both directions tested. |
| Borel semidirect product, 449–454 | t=diag(2,1), u=I+E₁₂ in GL₂ comparison | t u t⁻¹=I+2E₁₂; product law uses this coefficient 2, not 1. | Pass; conjugation action required. |
| Group lattices and low ranks, 465–478 | SO₂, SO₃, SO₄, Sp₂ | SO₂ has weights −1,0,1 of dimension1; SO₃ m=1 has sl₂ weight2, dim3; SO₄ (1,0) gives cover (1,1), dim4; Sp₂ weight1 has dim2. | Pass; the SO₃ spin weight1/2 is excluded. |
| Earlier generic bridge, 480–497 | Gₘ weight1; characteristic-p weight p; sign of O₁ | Over ℂ, action t and derivative1 are both nontrivial; in char p derivative p=0 although t^p≠1; sign has Lie action0 but value−1. | Hypotheses discriminate correctly; supplier absent (R02). |
| C primitive exterior block, 501–524 | r=2,k=2; r=1,k=1 | Dimensions 6−1=5 and 2−0=2; contractions have ranks1 and0. | Pass, negative-index binomial treated as0. |
| B exterior block, 503 | B₁,k=1; B₂,k=2 | Dimensions 3 and10; highest weights 2ω₁ and2ω₂. | Pass; not spin modules. |
| D middle Hodge normalization, 504–517 | r=1,2,3 | κ_r=−i,1,−i; squares −1,1,−1 equal (−1)^(r²). The companion highest wedge has eigenvalue −κ_r. | Pass for the stated bilinear star convention. |
| D block dimensions and admissible monoid, 525–539 | D₃; terminal coefficients (1,1),(1,0) | Middle Λ³ has dim20=10+10. (1,1) is integral; (1,0) has half-integer coordinates and is excluded. | Pass; equal terminal parity matters. |
| O extension boundary, 550–556 | O₀,O₁,O₂ | O₀ has one character; O₁ has ± characters; SO₂ weights ±1 induce the dimension2 O₂ standard. | Pass; Lie algebra alone loses the O₁ distinction. |
| GL branching, 624–630 | λ=(2,1,0); n=1 to0 | Middle rows give dimensions 2+1+3+2=8; any GL₁ integer character restricts to one trivial GL₀ copy. | Pass; partitions alone omit negative twists. |
| GL GT action, 674–691 | top(2,1,0); rows (1,0)↔(2,0), bottom1 | E₂₃ coefficient 3/2, reverse E₃₂ coefficient1/3; product1/2. Shifted row entries differ by2 or3, never0. | Pass; integral coefficients would fail. |
| Capelli ordering, 699–716 | gl₂ standard; trivial module | C₂(u)=(u+E₁₁)(u−1+E₂₂)−E₂₁E₁₂ gives (u²−1)I on standard; u(u−1) on trivial. Eigenvalue products agree. | Pass; omitting the staircase gives a different polynomial. |
| Signed-coordinate dictionary, 741–762 | r=2, F₂₂ and F₁₁ on native e₁,e₂ | F₂₂e₁=−e₁; F₁₁e₂=−e₂. Source(0,−1) becomes native(1,0); removing ±2 fixes e₁,f₁. | Pass; reversing without negating fails. |
| Actual operators and shifts, 764–779 | source(0,−1), u=−5/2 | Old coefficients (11/32,21/32); source coefficients (0,1). | Fail R01; corrected shift passes. |
| Spectral product endpoints, 782–794 | λ_r=−1,ν_r=0,r=2 | l_r=−5/2,γ_r=−3/2; exactly one evaluation at −5/2, not two and not an integer argument. | Pass after R01's operator correction. |
| Symplectic Hom multiplicities, 812–821 | standard Sp₄↓last-plane Sp₂ | μ=0 has rows (0,0),(1,0), hence dim Hom2; μ=1 has one row, dim Hom1; 2·1+1·2=4. | Pass; chain centers cannot split the two trivial copies. |
| Four subgroup maps, 833–850 | n=2; scalar2; T=I+E₁₂ | (2I,I) has ratio4, in H_sc but not H_det; (T,I) has ratio1, in H_det but not H_sc. | Pass; intermediates incomparable. |
| Normal-kernel multiplication, 852–864 | S=diag(2,1), b=T | S T S⁻¹=I+2E₁₂, versus T=I+E₁₂ for a false direct-product law. | Pass; ratio map is a space equivalence, generally semidirect as groups. |
| Normalizers, 869–870 | n=2, conjugation by (S,I) | (T,T) maps to (I+2E₁₂,T), neither diagonal nor scalar-ratio. | Pass negative control. |
| Category and complete classification, 872–938 | n=2; n=1; n=0 | Complex dimensions 4,5,7,8; at n=1 the list collapses to1,2; at n=0 all are0. Real r⁻¹(S¹) has dim15 versus complex candidates' real dims8,10,14,16. | Pass; real case excluded. |
| Intersection and join, 924–931 | n=2, λ=−1 and λ=2 | λ²=1 versus4; intersection has two components. For ratio4 choose λ=2 to reduce to H_det. | Pass; no global regular root section asserted. |
| Restriction and characters, 940–969 | V=W=standard GL₂; scalar2 | On H_sc scalar factor2 multiplies diagonal Sym²⊕Λ², dims3+1=4; on H_det the external SL₂×SL₂ module is irreducible dim4. | Pass; scalar factor is fixed across both summands. |
| Polynomial monoid extension, 205–248 | GL₁ weights 0,1,−1; N=0 | At zero, extensions act1,0; weight−1 has no polynomial value. N=0 has only the identity endomorphism. | Pass; generic ownership R04. |
| Schur maps and ranks, 296–337 | f=diag(1,0), λ=(2),(1,1),∅ | Ranks 1,0,1; evaluations s_λ(1) give1,0,1. For nonempty λ, S_λ(0)=0; for ∅ it is idℂ. | Pass; cannot require zero preservation for the empty shape. |
| Column/Cartan injection, 339–357 | λ=(2,1),dim V=3 | Cartan image dim8; V⊗Λ²V dim9=8+1. If dim V=1 both the Schur image and exterior ambient factor vanish. | Pass; ambient tensor is not simple. |
| Fixed-N functor extension nonuniqueness, 359–365 | N=1, add Λ² | Λ²(ℂ)=0 but Λ²(ℂ²) has dim1. | Pass; evaluation at one dimension does not determine the functor. |
| Ordinary Kan extension, 976–1008 | X=0; X=k at V=X | Unique arrow from0 gives E(V)=F(0). At X=k, [a,w]↦F(a)w and [id,w]↦w are inverse modulo relations. | Pass; no additivity in a imposed. |
| Mixed action, 1040–1050 | g=diag(2,3); x₁y₂ | Weight factor2/3 on both tensor and polynomial models; x₁y₁ has factor1. | Pass; using the standard action on y gives6, wrong. |
| Operators and normalization, 1052–1064 | N=3, f=x₁²y₁³ | Δf=6x₁y₁²; one averaged pair gives x₁y₁². [Δ,r]f=8f=(3+2+3)f. | Pass; mn factor is essential. |
| Surjectivity coefficients, 1066–1082 | N=2,a=b=1,f=x₁y₁ | c₀=1/4,c₁=−1/24; Δ(rf)=4f+r, Δ(r²)=6r; ΔS=f. | Pass; 1,725 additional monomial tests all give residual0. |
| Fischer decomposition, 1083–1098 | N=3,m=n=2 | dimP=36; dimH₂₂+dimH₁₁+dimH₀₀=27+8+1=36; kernels split by r. | Pass; r is injective over ℂ. |
| Fischer adjointness | x₁²y₁³ and x₁y₁² | Norms12 and2; contraction coefficient6 gives 12=6·2. | Pass; unweighted monomial norms would fail. |
| Highest weights and dimensions, 1100–1119 | N=3,(m,n)=(1,1),(2,1),(3,2) | Dimensions9−1=8,18−3=15,60−18=42; Weyl products8,15,42. E_ij(x₁^m y₃^n)=0. | Pass; nonexistent source comparison is R14. |
| U(3) weight diagram, 1121–1131 | (1,1),ν=0; (2,1),ν=(0,0,1); (3,2),ν=(1,0,0) | L=1,1,2; P multiplicities3,3,6 and H multiplicities2,2,3. Wrong coordinate sum gives0. | Pass; 25 degree-pair families independently counted. |
| Symmetric-square Pieri, 1140–1186 | (a,b)=(0,0),(1,0),(0,1),(1,1),(3,2) | Summand dimensions6;10+8=18;15+3=18;24+15+6+3=48;81+64+35+35+27+10=252. Each equals6·dimH. | Pass; guards exclude negative degrees. |
| Excluded coefficient regimes | char2; char3; zero ring; DVR | 1/2 is undefined in char2; for N=3,a=b=0 the denominator is0 in char3; ℂ does not admit these field structures. | Correctly outside stated decomposition lane, not silently tested as complex cases. |

### Adversarial values: every Suggested declaration

Notation for this table: D=diag(2,3), T=I+E₁₂, S=diag(2,1), e₁=(1,0); h is the highest vector of the stated actual mathematical representation. “Model/R06” records that the Lean data is admitted, so the displayed intended value is not an evaluation of that data. It calls for R06's repair, not acceptance. References to 8-dimensional GT data use the eight patterns enumerated above.

| Declaration (Suggested line) | Instance / computed comparison | Result / change |
| --- | --- | --- |
| `stdRep` 58 | D e₁=2e₁; traceD=5 | Native model agrees. |
| `IsRationalRep` 68 | n=1,t↦t⁻¹ has denominator exponent1; t↦t has exponent0 | Rational includes both; polynomial excludes inverse. |
| `rationalRep_isSemisimple` 73 | standard plus trivial at D has eigenvalues2,3,1 and direct-sum dimensions2+1=3 | Pass instance; retain rational hypothesis. |
| `tensorPowerRep` 80 | D on e₁⊗e₁ gives4e₁⊗e₁; d=0 gives1 | Pass. |
| `symPowerRep` 83 | Sym²D eigenvalues4,6,9 | trace19, dim3. |
| `extPowerRep` 88 | Λ²D acts by6; Λ³ℂ² has dim0 | Pass. |
| `diagGL` 92 | D⁻¹=diag(1/2,1/3); productI | Pass. |
| `char_tensorPowerRep` 95 | trace(D⊗D)=4+6+6+9=25=5² | Padding R11; simp closes. |
| `char_extPowerRep_diagonal` 100 | traceΛ²D=6=e₂(2,3) | Padding R11; simp closes. |
| `tensorSquare_char` 107 | 25=19+6 | Worked-Check padding R11. |
| `permTensorAction` 116 | swap(e₁⊗e₂)=e₂⊗e₁, swap²=id | Pass; d=0 gives idℂ. |
| `schurWeyl_commute` 122 | both orders send e₁⊗e₂ to6e₂⊗e₁ | Native theorem already cited. |
| `schurFunctor` 131 | n=2,λ=(1,1): dim1; n=1: dim0 | Native image; vanishing bound matters. |
| `diagonalTorus` 140 | D belongs; T has off-diagonal1 and does not | Discriminating. |
| `DominantWeight` 148 | (1,−1) passes 1≥−1; (−1,1) fails | Integers, not nonnegative-only. |
| `weightSpace` 151 | standard e₁ has weight(1,0); weight(0,0) has dim0 | Pass. |
| `weightSpace_isInternal` 156 | standard decomposes into two lines:1+1=2 | Exact native theorem; R11. |
| `highestWeightRep` 166 | λ=(2,1) is det⊗standard: dimension2 | Native carrier; not full classification. |
| `highestWeightRep_simple` 170 | λ=(2,1): only invariant subspaces0,V; dim V=2 | Existing instance; R11. |
| `weightOfShape` 176 | n=1,shape(1,1) truncates to(1), while Schur image dim0 | Row bound is necessary. |
| `schurFunctor_iso_irreducible` 182 | n=2,shape(2,1): both dimensions 2; forbidden n=1 gives0 versus1 | Pass with explicit bound. |
| `schurPoly` 194 | s_(2,1)(2,3)=12+18=30 | Native polynomial. |
| `schurPoly_isSymmetric` 198 | s_(2,1)(3,2)=18+12=30 | Native theorem; R11. |
| `char_schurFunctor_diagonal` 201 | det(D)trace(D)=6·5=30=s_(2,1)(2,3) | Pass instance. |
| `finrank_schurFunctor` 205 | shape(2,1),n=2: dim2=two bounded tableaux; taller column has0=0 | Pass. |
| `character_irreducible_eq_schurPoly` 212 | λ=(2,1),D:30=30; rank0 empty shape1=1 | Pass. |
| `DominantWeight.detShift` 220 | (1,0,−1)↦−1; empty weight↦0 | Native boundary retained. |
| `DominantWeight.detShiftShape` 224 | (1,0,−1)↦(2,1); row lengths(2,1,0) | Pass. |
| `character_irreducible_eq_detTwist` 229 | GL₂ weight(0,−1),D:1/2+1/3=5/6=(2+3)/6 | Pass, genuinely Laurent. |
| `weylDimension` 240 | (2,1,0):2·2·2=8; empty product1 | Pass. |
| `character_irreducible_one_eq_weylDimension` 244 | adjoint det-shift:trace(id)=8=Weyl8 | Pass. |
| `interlacingShapes` 252 | intended top(2,1,0) admits(1,0),(1,1),(2,0),(2,1), count4 | Data unavailable; R06. |
| `schurPoly_branching` 256 | top(2,1),x=(2,1):6=s_(1)(2)+s_(2)(2)=2+4 | Intended pass; admitted index-set dependence R06. |
| `GTPattern` 268 | top(2,1,0) gives8 patterns; all off-triangle entries0 | Native zeros law excludes extra junk patterns. |
| `GTPattern.topRow` 269 | row3 reads(2,1,0), not row2(1,0) | Pass. |
| `gtPatternEquivSSYT` 272 | n=2,shape(2,1):two patterns↔two bounded tableaux | Native equivalence; alphabet bound essential. |
| `gtBasis` 282 | intended λ=(2,1,0) has8 independent vectors; n=0 has one unit vector | Model/R06; cardinality alone does not normalize. |
| `finrank_irreducible_eq_card_gtPatterns` 288 | 8=2+1+3+2; n=0:1=1 | Pass intended independent branching count. |
| `card_gtPatterns_eq_weylDimension` 292 | 8=8 for both(2,1,0),(1,0,−1) | Already pinned; R11. |
| `gtGenerator` 303 | intended gl₂ standard C₂ coefficients0 and−1 | Model/R06; arbitrary scalar operator is not specified. |
| `gtEigenvalue` 308 | row(2,1) shifted(2,0):e₁=2,e₂=0 | Real definition; correct staircase. |
| `gtGenerator_apply_gtBasis` 315 | standard top(1,0):degree2 eigenvalue−1; action must be−ξ | Model/R06. |
| `gtEigenvalue_injective` 322 | GL₂ top(1,0),bottom0 versus1:level1 eigenvalues0 versus1 | Pass separation; n=0 domain singleton. |
| `matrixUnitAction` 334 | intended E₁₂e₂=e₁ and E₁₂e₁=0 | Model/R06; zero family fails first value. |
| `capelliActionPolynomial` 339 | intended gl₂ standard C₂(u)=(u²−1)I | Correct ordered expression; depends on admitted action. |
| `capelliGenerator` 351 | standard:coeff u¹=0, coeff u⁰=−I | Degrees agree; dependent R06. |
| `capelliGenerator_eq_gtGenerator` 355 | both intended constant generators−I | Cannot certify arbitrary admitted generator; R06. |
| `capelliGenerator_commute_matrixUnit` 359 | [−I,E₁₂]=0; reversing columns changes determinant expression | Intended pass; R06. |
| `normalizedHighestVector` 365 | standard intended h=e₁, first coefficient1; 2e₁ would have2 | Model/R06; declared theorem only excludes0. |
| `normalizedHighestVector_ne_zero` 368 | e₁≠0 but also2e₁≠0 | Nonzero law does not normalize; R06. |
| `sourceGTLowering` 373 | GL₂ standard lowering E₂₁ sends e₁↦e₂, zero operator↦0 | Model/R06. |
| `gtBasis_eq_sourceLowering` 377 | standard lower pattern should give e₂=E₂₁e₁ | Model/R06, both sides admitted. |
| `Sp` 383 | r=1,diag(2,1/2) preserves [[0,−1],[1,0]] | Native group correct. |
| `SO` 384 | SO₁={1}; SO₂ eigenvalues t,t⁻¹; determinant1 | Trivial-star carrier correct. |
| `HasRegularMatrixCoefficients` 388 | identity action has constant1 coefficients; zero vector space has a basis indexed byFin0 | Real predicate enforces finite basis, not arbitrary infinite dimension. |
| `SpWeight` 397 | (1,0) allowed; (1,−1) rejected | Correct nonnegative chamber. |
| `BWeight` 401 | rank1 m=1 allowed, spin1/2 not an integer | Correct group lattice. |
| `DWeight` 404 | r=0 means SO₄: (1,−1) allowed, (0,−1) rejected | Correct absolute-value final bound. |
| `spTorus` 408 | intended r=1,t=2 givesdiag(2,1/2) | Model/R06. |
| `spTorus_entries` 410 | diagonal blocks2 and1/2; wrong inverse-free blocks2 and2 give4J | Intended law discriminates, data admitted. |
| `spHighestWeightRep` 416 | rank1 weight1 intended dimension 2; rank0 intended dimension 1 | Model/R06. |
| `spHighestWeightRep_regular` 418 | rank1 standard entries are degree1 polynomials | Intended pass; same-carrier data R06. |
| `spHighestWeightRep_simple` 423 | standard SL₂ has dimension 2 and no proper invariant line | Intended pass; R06. |
| `spHighestWeightRep_exhaustive` 426 | rank1 trivial corresponds0; standard corresponds1 | Correct intended classification, carrier admitted. |
| `soOddHighestWeightRep` 433 | r=0 means SO₃; m=1 intended dimension 3, not2 | Model/R06. |
| `soEvenHighestWeightRep` 436 | r=0 means SO₄;(1,0) intended dimension 4 | Model/R06. |
| `soTwoCharacter` 439 | m=−1, t=2 gives1/2; m=0 gives1 | Model/R06; all integer characters required. |
| `soOddHighestWeightRep_simple` 441 | SO₃ standard dimension 3; no invariant line | Intended pass; R06. |
| `soEvenHighestWeightRep_simple` 444 | SO₄ standard dimension 4 corresponds2⊗2 of cover | Intended pass; R06. |
| `spHighestWeightRep_highest_torus` 448 | rank1 weight1,e₁,t=2 gives2e₁ on both sides | Necessary weight law, not a constructed highest-vector proof. |
| `spLastPlaneInclusion` 454 | Sp₂ t=2 in Sp₄ acts by diag(1,2,1,1/2) on(e₁,e₂,f₁,f₂) | Correct intended first-plane fix; R06. |
| `SpIntermediate` 457 | top(1,0),bottom0 gives b=(0,0),(1,0); bottom1 only(1,0) | Actual inequalities give counts2,1. |
| Fintype instance 463 | same finite fibers have2 and1 elements | Finite claim correct, admitted instance forbidden. |
| `SpBranchingHom` 466 | standard Sp₄ toSp₂:Hom(trivial,Res) has dimension 2 | Correct direction; reverse Hom has a different evaluation domain. |
| `spMultiplicityBasis` 472 | two trivial maps send1 to e₁ and f₁; coefficient matrix rank2 | Model/R06; counting alone is insufficient. |
| `spMultiplicity_finrank` 475 | μ=0:2=2; μ=1:1=1 | Intended pass; admitted model R06. |
| `spMultiplicityEvaluation` 481 | f_e⊗1↦e₁, f_f⊗1↦f₁ | Model/R06; zero map fails. |
| `spMultiplicityEvaluation_tmul` 485 | f_e(1)=e₁ equals intended evaluation | Defining API, not a standalone deep headline. |
| `G` 500 | GL₀ has1 element; GL₁=ℂˣ | Native alias. |
| `P` 501 | n=1,(2,3) has inverse(1/2,1/3) | Native product. |
| `M` 502 | n=2,E₁₂E₂₁=E₁₁, reverse=E₂₂ | Noncommutative carrier retained. |
| `diagonalMap` 504 | T↦(T,T); maps1↦(1,1) | Real body correct. |
| `diagonal` 507 | (T,T) belongs; (T,I) does not | Definition discriminates. |
| `determinantRatio` 509 | (D,I)↦6; (I,D)↦1/6 | Direction correct. |
| `determinantEqual` 514 | (T,I) has ratio 1; (D,I) has ratio 6 | Kernel correct. |
| `determinantEqual_normal` 516 | conjugateT byS has determinant 1 still | Kernel normality. |
| `scalarDiagonalMap` 521 | (I,2)↦(2I,I), ratio4 at n=2 | Correct scalar placement. |
| `scalarDiagonal` 540 | (2I,I) belongs; (T,I) fails scalar ratio | Correct range. |
| `mem_diagonal` 542 | (T,T):true↔true; (T,I):false↔false | Definitional API; R11. |
| `mem_determinantEqual` 544 | (T,I):1=1; (D,I):6≠1 | Definitional API; R11. |
| `mem_scalarDiagonal` 548 | (2I,I):u=2; (T,I):no scalaru | Definitional API; R11. |
| `diagonal_le_scalarDiagonal` 552 | (T,T) hasu=1 | Definitional inclusion. |
| `diagonal_le_determinantEqual` 554 | detT/detT=1 | Definitional inclusion. |
| `normalKernel` 557 | H=Δ gives{1}; H=H_det givesSL₂ | Native Goursat object. |
| `normalKernel_normal` 559 | S T S⁻¹=I+2E₁₂ remainsSL₂ | Existing normality theorem supplies this. |
| `mem_iff_ratio_mem_normalKernel` 564 | H=H_det,(D,D):ratioI∈SL₂; (D,I):det6≠1 | Both directions pass. |
| `ratioEquiv` 569 | (2T,T)↦(2I,T)↦(2T,T) | Inverses computed. |
| `ratioHomeomorph` 580 | same (2T,T) round trip; multiplication/inversion continuous | Native topology, not discrete substitution. |
| `ratioEquiv_mul` 586 | a=I,h=S,b=T givesfirst componentSTS⁻¹=I+2E₁₂ | Semidirect law correct. |
| `connected_iff_normalKernel` 592 | H_det↔SL₂ both connected; ratio−1 torsion preimage gives2 components on both | Both directions discriminate. |
| `scalarDiagonalMap_injective` 597 | n=1 output(6,3) recovers(g,u)=(3,2); n=0 scalar2 and3 have same output | Positive-rank hypothesis essential. |
| `scalarDiagonalEquiv` 600 | (3,2)↔(6,3) at n=1 | Native range equivalence correct. |
| `determinantRatio_surjective` 606 | targetu=2 reached by(diag(2,1),I); n=0 image{1} | Hypothesis essential. |
| `determinantQuotient` 609 | coset(diag(2,1),I) maps2; kernel maps1 | First-isomorphism comparison. |
| `scalarDiagonal_iff_projective_equal` 614 | 2I andI have same projective class; T andI do not | Both directions pass. |
| `normalizer_diagonal` 618 | (2I,I) normalizes; (S,I) sends(T,T) outsideΔ | Pass. |
| `normalizer_scalarDiagonal` 621 | (S,I) sends(T,T) to(T²,T), ratioT not scalar | Negative control passes. |
| `diagonalLie` 625 | (E₁₂,E₁₂) belongs; (E₁₂,0) fails | Correct range. |
| `scalarLie` 628 | (I,0) belongs; (E₁₂,0) fails | Adds one dimension at n=2. |
| `determinantLie` 631 | (E₁₂,0) trace difference0; (I,0) difference2 | Correct kernel. |
| `invariant_matrix_submodule` 636 | n=2 stable dimensions0,1,3,4; spanE₁₂ fails since[E₂₁,E₁₂]=E₂₂−E₁₁ | Discriminating stable-submodule hypothesis. |
| `intermediate_lieSubalgebra` 648 | preimages of dimensions0,1,3,4 have dimensions4,5,7,8 | Pass instances; uses actual brackets. |
| `pairExp` 654 | X=(0,0) gives(I,I); X=(E₁₂,0) gives(T,I) | Correct exponential carrier. |
| `realDirections` 658 | forΔ,(E₁₂,E₁₂) allowed;(E₁₂,0) fails at t=1 | Genuine membership predicate. |
| `connected_complex_overgroup` 661 | n=2 four candidates dims4,5,7,8; real ratio-circle has dimension 15 real and fails i-closure | Hypotheses discriminate. |
| `ChartIndex` 667 | n=2 has 2·4+2=10 coordinates; n=0 has 2 | Empty matrices retain inverse-det constants. |
| `chartCoordinates` 669 | (D,I) inverse-det coordinates1/6,1; entries2,3,1,1 | Correct localization chart. |
| `polynomial_locus_complex_directions` 674 | H_det equationdet g−det h=0; exp(E₁₂) has determinant 1 for all complex z | Pass; wrong real circle is not such a complex zero locus. |
| `connected_algebraic_overgroup` 680 | H_det dim7 is on list; connectedness used is analytic `IsPreconnected` | Prose additionally owns Zariski/analytic comparison. |
| `four_closed_connected` 690 | n=0 list repeats the trivial group four times, each one point; n=1 dims1,2,1,2 | No distinctness asserted at small rank. |
| `scalar_determinant_intersection` 694 | n=2,u=−1:1=1; u=2:4≠1; n=0:u⁰=1 | All-rank formula correct. |
| `scalar_determinant_join` 697 | (diag(4,1),I)=(2I,I)(diag(2,1/2),I) | Factors in respective subgroups. |
| `proper_incomparable` 700 | n=2 witnesses(2I,I),(T,I),(S,I) separate all four | Correct rank bound. |
| `rank_one_equalities` 705 | detg=deth means g=h; any g/h is scalar | Boundary padding R11. |
| `rank_zero_equalities` 708 | all matrices/groups singleton, all subgroups⊤ | Boundary padding R11. |
| `external` 715 | (D,I)(e₁⊗e₂)=2e₁⊗e₂ | Pullback order correct. |
| `external_diagonal` 720 | (D,D)(e₁⊗e₂)=6e₁⊗e₂ | rfl padding R11. |
| `rational_irreducible_scalar_character` 724 | weight(2,1),scalar2:2³=8; det⁻¹ has2⁻²=1/4 | Pass; integer central exponent retained. |
| `external_scalar_formula` 730 | standards,g=D,u=2,e₁⊗e₂:12=2·6 | Pass. |
| `scalarRestrictionSubrepOrderIso` 738 | standard modules of GL₂:Sym²/Λ² submodules have dims3,1 on both sides | Intended carrier identity; R06. |
| `scalarRestrictionSubrepOrderIso_carrier` 745 | symmetric line-span subspace dimension3 maps to the same dimension-3 subspace | Model/R06; law ties carriers if constructed. |
| `restrict_specialLinear_irreducible` 753 | det⊗standard GL₂ restricts to standard SL₂, dim2 | Pass; determinant line alone becomes trivial of dimension 1. |
| `external_determinantEqual_irreducible` 758 | standard modules of GL₂ restrict to SL₂×SL₂ external module, dimension 4, no Sym²/Λ² invariance | Pass; distinguish from diagonal restriction. |
### Adversarial values: companion declarations

All five companion signature copies elaborate. The five admitted companion theorems were also probed with each of `rfl`, `simp` and `infer_instance`; none closed. The Kan companion contains no admissions. Its full-faithful extension is directly instantiated from Mathlib, so its extra definitional APIs are not new acceptance goals.

| File / declaration | Instance / computed comparison | Result / change |
| --- | --- | --- |
| Antidiagonal: `gram` | n=2 gives J=[[0,1],[1,0]]; J²=I. n=0 gives the empty identity. | Correct native permutation matrix. |
| `reverseAdjoint` | diag(i,1) maps to diag(1,i), whereas conjugate transpose would give diag(1,−i). | Correct bilinear convention. |
| `reverseAdjoint_reverseAdjoint` | diag(i,1)→diag(1,i)→diag(i,1); E₁₂ maps to E₁₂ twice. | Pass instances. |
| `orthogonal_iff_mul_reverseAdjoint` | diag(2,1/2): J=J and I=I; diag(2,1):2J≠J and2I≠I. | Both directions discriminate. |
| Kan: `inclusion` | X=ℂ, endomorphism ×2 maps to the same ×2; ×2∘×3=×6 on both sides. | Ordinary, not additive, functor. |
| `inclusion_full` | For X=ℂ, target map ×2 has preimage ×2. | Surjectivity on the one hom-set is identity. |
| `inclusion_faithful` | Maps ×2 and ×3 remain distinct: values at1 are2 and3. | Injectivity is identity. |
| `pointwise_exists` | X=0 has one arrow to Y and one endomorphism; its diagram colimit is F(0). | Correct small-universe colimit input. |
| `extension` | X=0,Y=ℂ: output F(0); X=ℂ,Y=X: output is isomorphic to F(X). | No finite-dimensionality or polynomiality follows. |
| `unit` | At X=ℂ, w maps to [id,w]; inverse evaluation gives w. | Correct direction. |
| `unit_isIso` | [a,w] evaluates to F(a)w; [id,F(a)w]=[a,w]. | Full-faithful Kan theorem applies. |
| `restrictionIso` | w→[id,w]→w; at w=0 both values0. | Correct inverse comparison. |
| `restrictionIso_hom` | Both maps take w to [id,w]. | `rfl`; padding R11. |
| `colimitModel` | X=0,Y=ℂ: both carriers are the same F(0) colimit. | `Iso.refl`; definitional API. |
| `matrixInclusion` | n=0: one endomorphism; n=1,R=ℤ: ×2 maps to ×2. | ULift moves objects; no unsupported universe coercion. |
| Mixed: `Polynomial` | N=1 has two independent variables x₁,y₁; N=0 has only constants. | Correct native polynomial carrier. |
| `variableWeight` | x₁ has(1,0), y₁ has(0,1); x₁²y₁³ has(2,3). | Distinguishes the two factors. |
| `bidegree` | x₁²y₁³ belongs to(2,3), not(3,2); zero belongs to both. | Correct homogeneous submodule convention. |
| `delta` | Δ(x₁²y₁³)=6x₁y₁²; Δ(x₁²)=0. | Actual unaveraged contraction. |
| `radius` | N=2: r=x₁y₁+x₂y₂; Δr=2. | Zero/rescaled polynomial fails the normalization. |
| `contraction_surjective` | N=2,a=b=1,f=x₁y₁: q=f/4−r/24 gives Δ(rq)=f. | Pass, same bidegree; 1,725 monomial tests. |
| Polynomial: `polynomial_monoid_extension` | N=1,ρ(t)=t²: Φ(0)=0, Φ(2)=4; trivial ρ has Φ(0)=1. Zero W has empty coefficient family. | Correct existence signature; generic theorem already owned (R04). |
| U3: `u3HarmonicHighestWeight` | (a,b)=(0,1) gives(0,0,−1); (0,0) gives(0,0,0). | Retains determinant/central coordinate. |
| `u3_symmetricSquare_pieri_multiplicity` | a=b=0: μ=(2,0,0) gives1, μ=(1,1,0) gives0. a=b=1 gives four weights, each1; dimensions24+15+6+3=48. | Correct strip guards and tensor-Hom direction. |

### Seeded source sample

No additional locator is explicitly marked “unverified” in the README. Every one of the 15 named sample targets is recorded below. Only Molev's cited v2 was obtained as full legal text. Accordingly, the numerical rows above are independent checks, not substitutes for unavailable source comparison.

| Sample target | Locator inspected / outcome |
| --- | --- |
| Young symmetrizer | README cites Fulton–Harris Lectures 6/15, without a theorem or page. Text unavailable; exact support uncertified (R12). Native Young images were checked separately. |
| Weyl dimension formula | Fulton–Harris Lectures 24–25 and general Weyl references lack printed pages; unavailable. Native GT dimension theorem and independent Weyl products checked. |
| Tori, lattices and differentiation | No claim-level locator; unavailable source support. Bilinear pairing and integer characters checked directly; native SO uses trivial star. |
| Antidiagonal matrix and Borel adapter | Haiman1087_001 physical p.2 appears only in PR provenance; no legal text found. Transpose/reversal and conjugation tested directly. |
| The earlier generic bridge and this specialization | No book locator. The named main LieHighestWeight contract is only GL-specific (R02); the generic open-revision statement was read at its actual locator. |
| Direct construction, before harmonic/Brauer classification | No exact source locator for the B/C/D blocks or normalized Hodge star. Primitive/exterior dimensions and parity tested; this does not certify the cited books. |
| The signed-coordinate dictionary | Molev §3.1, printed p.29, (3.3)–(3.6), `molev line 1216` through `molev line 1242`: signed generators and form agree after the explicit index reversal/negation. |
| The actual operators and spectral shifts | Molev (3.10)–(3.12), printed pp.31–32, `molev line 1334` through `molev line 1355`; (3.29)–(3.31), p.41, `molev line 1765`. The g shift is wrong (R01). Lemma 3.4/Theorem 3.5, p.34, `molev line 1443` through `molev line 1484`, support the finite highest-vector construction, with the stated integral interlacing. |
| Four actual subgroups and their maps | No claim-level literature locator. Native Goursat definitions and direct GL₂ witnesses checked; source support remains unverified. |
| Category and complete classification | No exact source locator. Connected complex/real-category distinction tested. General Lie-subgroup and conjugation-submodule inputs have named owners; their combination remains this roadmap's target. |
| Restriction and characters | No exact locator for these restriction theorems. GL₂ scalar/SL₂×SL₂ tests agree; a scalar-twist equality alone is not their irreducibility proof. |
| The operators and their normalization | Knutson semester1 pp.151–155 from PR provenance, text unavailable. Δ, r, the commutator, factorial inner product and averaged-contraction factor tested independently. |
| Surjectivity and the decomposition | Same unavailable Knutson locator. Explicit inverse coefficients and 1,725 monomials agree, as does the 36=27+8+1 decomposition. |
| Highest weights and dimensions | No exact README locator; Knutson provenance unavailable. Dimensions8,15,42 agree with Weyl products; the Schubert comparison locator fails (R14). |
| The U(3) weight diagram | Knutson pp.151–155 and the symmetric-square continuation pp.166–168 unavailable. Independently enumerated multiplicities agree for all 25 pairs 0≤m,n≤4. Diagram labels and alleged source mistakes were not certified. |

Further legal-text verification covered the GL GT action (Theorem 2.3, printed p.9, `molev line 375`–`molev line 400`), the norm and adjoint convention (Proposition 2.4, p.10, `molev line 405`–`molev line 424`), the lowering-product order (Theorem 2.7, p.11, `molev line 460`–`molev line 479`), and the ordered Capelli determinant (2.21)–(2.22), p.16, `molev line 670`–`molev line 682`. These agree with the corresponding README targets under dominant integral highest weights, nonpatterns interpreted as zero and source normalization. The inspected edition is [arXiv v2](https://arxiv.org/abs/math/0211289v2), exactly the version the README names; published-version pagination was not substituted.

## Not verifiable

- **Fulton–Harris**, *Representation Theory: A First Course* (1991), key `fulton-harris`: the sources service could not obtain legal full text by the book citation. Additional author/institutional web searches did not produce an accessible copy. Lectures 6, 15, 24–25 and Appendix A therefore remain uncertified; no theorem/page numbering was guessed.
- **Goodman–Wallach**, *Symmetry, Representations, and Invariants* (2009), key `goodman-wallach`: the service reached the Springer publisher record and classified it **uncertified** (paywalled). This settled access status is not a new missing-text request. The README supplies no precise theorem/page for its uses.
- **Weyl**, *The Classical Groups* (1939), key `weyl`, and **Procesi**, *Lie Groups* (2007), key `procesi`: sources-service book-citation searches found no readable legal text. Their broad references do not identify the sampled claims precisely.
- **Macdonald**, *Symmetric Functions and Hall Polynomials*, second edition (1995), key `macdonald`: the service attempted the book citation and publisher DOI `10.1093/oso/9780198534891.003.0002`; the Oxford page returned HTTP 403. Chapter I was not verified. The DOI resolved chapter metadata, not an inspected full-book edition.
- **Knutson semester1** and **Haiman1087_001**, keys `knutson-semester1` and `haiman1087`: the service searched the supplied bibliographic descriptions; author/institutional searches did not identify readable matching texts. These references occur in PR provenance, not the README bibliography. I did not certify their page numbering, diagram labels or alleged errors.
- **Admitted constructions:** the 16 data admissions cannot be evaluated as the advertised maps/bases. Model calculations in the tables deliberately do not certify those Lean terms. The full type-C localization proof was not independently reconstructed beyond the inspected finite-dimensional formulas and theorems.

These limits are recorded without parking the review. Unavailable-source entries were preserved and consolidated under their existing keys; the PR's manifest and files were not edited. Ownership was checked against main and the relevant open files provided in the brief, not against inaccessible or unprovided open work.

## Source issues

- **Misprint** in molev at §3 introduction, printed p.28 (`molev line 1191`): the source says the multiplicity space consists of glₙ₋₁-highest vectors; it should be gₙ₋₁-highest vectors for the specified B/C/D chain; affects a stated result.
