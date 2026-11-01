# Review of LieHighestWeight (pull request #1220 at 4e66439)
Folder: `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/`

**Verdict:** needs changes

Filenames are relative to the reviewed folder; `Mathlib/` and `TauCeti/` paths refer to the pins. Suppliers are main unless identified as supplied new heads.

## R01 (P1) — The rational compact-complexification supplier is absent

**Location:** README.md:844–851, “complete LieGroups Layer 7 compact-real-form-pair morphism theorem”.

**Claim:** That section supplies a regular extension of a compact-pair homomorphism, including a graph/polar algebraicity proof, before the character argument.

**Witness:** `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:407–426` supplies complexification and an equivalence with **holomorphic** representations. It contains neither the claimed regular-morphism theorem nor its graph/polar proof.

**Repair:** Cite an actual existing rationality theorem, or declare the precise missing supplier contract through the prescribed matching gap records; otherwise own the missing comparison as a target in the appropriate extension. An open revision of an existing roadmap cannot replace its main-branch contract. Check the repaired contract on U(1): the character z↦z⁻¹ must extend to the regular Gₘ-character t↦t⁻¹, with evaluation at t=2 equal to 1/2. A holomorphic-extension statement alone does not express this algebraic conclusion. Also remove the unsupported assertion that ClassicalGroups' main-branch classification is constructed by transvections independently of Lie highest weights: its Layer 3 explicitly consumes LieHighestWeight.

## R02 (P1) — The explicit LR tableau supplier is absent on main

**Location:** README.md:1733–1741, “whose skew carrier requires λ≤ν”; also 1085 and 2178.

**Claim:** SchurWeyl Layer 7 supplies the specified `LRTableau` carrier, reading-word convention and weight-preserving tableau-product bijection.

**Witness:** `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:323–351` contains finite Schur polynomials, Jacobi–Trudi, Frobenius characteristic and RSK, but none of that LR carrier/product contract. The links instead pin a different commit.

**Repair:** Import an existing exact owner or declare a precise SchurWeyl supplier gap; do not treat an unmerged revision of existing SchurWeyl as its main contract. Retain the Lie differentiation/application here. Test the supplied count on λ=μ=(1): ν=(2) and (1,1) must each have count 1; in one variable the second Schur polynomial must vanish, leaving x²=x². Merely naming unspecified structure constants does not repair the requested tableau count.

## R03 (P1) — Opposition applications cite nonexistent main-branch sections

**Location:** README.md:791 and 815–824, “RootSystems4A”, “CompactGroups6a”, and “CompactGroups6b”.

**Claim:** These sections supply the root comparison, actual compact character lattice and Frobenius–Schur criterion.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:296–319` has Layer 4, but no 4A. Main `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:369–390` has Layer 6 followed by SU(2), with no 6a or 6b.

**Repair:** Repoint the available opposition operations to pinned `TauCeti.opposition`, `root_opposition`, `coroot'_opposition`, `opposition_involutive` and `oppositionPerm` in `TauCeti/LinearAlgebra/RootSystem/Opposition.lean:101,107,119,146,198`. Give any remaining root-realization comparison its actual owner. Register precise missing compact-group contracts instead of citing the revision as supplied. Test both actual lattices in type A₁: SU(2) allows weight 1 and SO(3) only even weights; the weight-1 module has Frobenius–Schur sign −1, the weight-2 module +1. Root opposition alone is the identity in both cases and cannot supply these distinctions.

## R04 (P2) — Admitted data make the headline tests about stand-ins

**Location:** Suggested.lean:1668, “def Octonion : Type → Type := sorry”; 1748 `AlbertAlgebra`; 2196 `glIrreducible`; also Sl2TensorOrthogonalityTargets.lean:49 `polynomialSymmetric`.

**Claim:** The Lean files test the actual constructions in the README.

**Witness:** The gate finds 47 admitted data declarations in Suggested.lean. Entire carriers, multiplication/module instances, translations, graded comparison maps and equivalences are admitted. The tensor companion adds an admitted equivalence and admitted proof fields inside definitions.

**Repair:** Delete admitted data and everything depending on it. State genuine headline existence/isomorphism theorems on pinned carriers, with `sorry` only as theorem proofs. In particular use `TauCeti.Octonion K` and `TauCeti.AlbertAlgebra K` for the split exceptional comparisons, and the native glₙ objects where available. Keep only simple definitions with real bodies needed for those headlines. Name genuinely unavailable carriers and their omitted headlines in the module docstring. A monomial-normalized polynomial/symmetric-power comparison can be an existential theorem, rather than admitted data followed by admitted normalization laws. Check d=2: x y must map to its actual symmetric monomial and average to (x⊗y+y⊗x)/2. An arbitrary rescaled equivalence would not satisfy that equation. For octonions, verify the split norm-zero nonzero vector and the real positive-norm carrier separately; dimension alone cannot select either multiplication.

The prohibition also includes admitted structure-law proofs in `def`/`instance` bodies.

## R05 (P2) — Existing native results are still presented as new construction work

**Location:** Suggested.lean:105–141, 1677–1736, 1758–1771, 2297–2319; README.md:1441–1443 and 744–753.

**Claim:** The file must establish the integer spectrum, split-octonion/Albert dimensions and a new glₙ Casimir; prose still asks to build some objects immediately after saying to consume them.

**Witness:** The pins already provide `TauCeti.exists_int_of_hasEigenvalue` (Sl2/Spectrum.lean:147), `finrank_eq_of_hasPrimitiveVectorWith` (Sl2/WeightString.lean:324), `Octonion.finrank_derivationLieAlgebra` (Octonion/Derivation.lean:995), and the Albert dimensions (AlbertAlgebra/Basic.lean:213,366).

**Repair:** Delete these duplicate construction targets/aliases and cite their exact pinned owners in the supplier contracts. Retain genuinely new normalized comparisons and exceptional Lie-algebra identifications. Use the existing `TauCeti.glCasimir` and its highest-weight scalar theorem in `TauCeti/Algebra/Lie/GeneralLinear/Casimir.lean:245`; do not reconstruct an opaque local Casimir. On V(2), the existing spectrum is {2,0,−2} and dimension 3; on the split octonions Der has dimension 8+3+3=14; on the Albert carrier dimensions are 3+3·8=27 and 26. These are exactly the values requested again, with no mathematical variant distinguishing the duplicates. The gl₂ trace-Casimir at (3/2,1/2) is 7/2 under both statements.

## R06 (P2) — The complete-reducibility signature silently narrows the field

**Location:** Suggested.lean:548–550 and README.md:734–735, 759–768.

**Claim:** Complete reducibility is available over every characteristic-zero field, without algebraic closure.

**Witness:** `#check @TauCetiRoadmap.RepresentationTheory.LieHighestWeight.weyl_complete_reducibility` includes `[IsAlgClosed K]`. Pinned `TauCeti.exists_isCompl_of_isKilling` at `TauCeti/Algebra/Lie/HighestWeight/CompleteReducibility.lean:259` does not.

**Repair:** Delete this one-lemma alias from the acceptance test and cite the arbitrary-field native theorem. If documenting its signature elsewhere, explicitly omit the inherited algebraic-closure variable. Test K=ℝ, L=sl₂(ℝ), M=ℝ²⊕ℝ²: the first summand has the second as complement (intersection 0, sum dimension 4), while the displayed local alias cannot be instantiated over ℝ. Do not narrow the README to hide the extra binder.

## R07 (P3) — Delete one-tactic and example-level padding

**Location:** Suggested.lean:1938, 1948, 2093, 2104, 2111; also 243 and 1788.

**Claim:** These are substantive acceptance targets, including the “right alternative” identity.

**Witness:** The scratch one-tactic probes close `right_alternative`, `derivation_apply_one`, `center_matrix_toSubmodule`, `hasCentralRadical_matrix`, and `exists_centralWeight_of_isIrreducible`. Both sides of `y * x * x = (y * x) * x` are definitionally identical.

**Repair:** Delete them from `Suggested.lean`; retain the mathematical statements as README targets/Checks or native citations. Correct the README right-alternative law to the genuinely parenthesized `(y*x)*x=y*(x*x)` wherever spelling it out. Delete the rank-one polynomial-algebra example and the numerical Λ³(K⁹) dimension Check from Suggested.lean as well. They are examples, not the exceptional-model headline. For x=i,y=j the genuine law has value −j on both sides; the submitted equality would hold for every arbitrary multiplication, even one that fails right alternativity. The exterior-power computation is just C(9,3)=84.

The exact one-lemma probes for the matrix center and central weight used `TauCeti.center_matrix_toSubmodule_eq_span_one K (Fin n)` and `TauCeti.exists_centralWeight_of_isIrreducible K L M`; the reductivity instance closes with `infer_instance`. The derivative-at-one target closes with `simp`. Existing proved wrappers such as ReductiveCenterTargets.lean:96–100 also belong in the README/native contracts, not an API catalogue accompanying the acceptance test.

## R08 (P3) — Restore the required roadmap and acceptance-test structure

**Location:** README.md:3, 75, 169, 313; Suggested.lean:36–41; the four companion module docstrings.

**Claim:** These files provide the roadmap's construction contracts and executable acceptance boundary.

**Witness:** There is no `**Summary.**`, `## Scope and ownership`, `## Exact supplier contracts`, or per-target `*Needs:*` line. There are no `**Checks.**` blocks. The Lean docstring instead calls the file nonexhaustive suggested milestone signatures.

**Repair:** Organize the retained work in the required layer/subsection form, give every definition its API and at least three discriminating Checks, and put exact dependency lists at the targets. Replace the illustrative-interface docstrings with headline inventories, naming unavailable carriers for every omitted headline. Remove the prototype narrative after References (README.md:2231–2233). For the new Hermitian-form definition, three distinct Checks are d=0 norm²(1)=1, d=2 norm²(xy)=1/2, and orthogonality of x² and xy; the unweighted coefficient form fails the second. Global worked examples do not supply this per-definition coverage.

## R09 (P3) — Several sampled targets have no resolvable source locator

**Location:** README.md:855–989, 1796–1873, 2027–2056, 2231–2233; bibliography at 2189.

**Claim:** The type-A route, center comparisons, closed-alcove assertions and prototype/chart discussion can be checked at their source locators.

**Witness:** The type-A text cites unidentified “notes” p5/p6; the center text refers to a “questioned source algebra chain”; the closed-alcove block and prototype paragraph give no source locator. The bibliography cannot identify those works.

**Repair:** Supply the work/version, theorem or section, and printed page for each claim, distinguishing source statements from new comparisons. Identify the type-A source before alleging a printed indexing correction. Add exact locators for the Weyl formulas rather than only a range of textbook chapters. Record bibliography sources under stable keys when packaging; this review has not edited a manifest. Recheck the locator against the GL₃ λ=(2,1,0) branching example: four middle rows with dimensions 2,1,3,2 sum to 8. For closed alcoves, ensure the source proves uniqueness for boundary points, not only simple transitivity on open alcoves; in A₁ the endpoint stabilizer has order 2 while an interior stabilizer is trivial. Unavailable texts are listed below, rather than guessed.

## R10 (P3) — Normalize imports in all five Lean files

**Location:** Suggested.lean:2; AffinePBWFirstOrderTargets.lean:1–2; Sl2TensorOrthogonalityTargets.lean:2–3; ReductiveCenterTargets.lean:1–6.

**Claim:** The files follow the required single-`Mathlib` import form.

**Witness:** Suggested.lean imports `Mathlib.RingTheory.TensorProduct.Basic`; three companions also use `Mathlib.<submodule>` imports, and two do not start with `import Mathlib`. The gate reports both `imports` and `mathlib-subimports` failures.

**Repair:** Use one initial `import Mathlib`, followed only by the individual used TauCeti modules. The scratch combined companion elaboration with precisely this normalization succeeds; original Suggested.lean also elaborates, so this is a form failure, not a compiler failure.

## R11 (P3) — Remove commit-pinned supplier links and process references

**Location:** README.md:619, 1085, 1476, 1734, 2178.

**Claim:** The references are timeless supplier links and mathematical roadmap text.

**Witness:** The gate reports three `blob` links pinned to a commit, one PR-number reference (`Mathlib PR41919`), and the raw anchor `<a id="affine-pbw-first-order-example"></a>` as `residue`.

**Repair:** Use repository-relative supplier links plus section/target names, describe the actual proposed Cayley–Dickson convention without a PR number, and replace the raw anchor by a normal subsection heading. Resolve R02 before replacing the SchurWeyl links: changing the URL alone does not supply the missing theorem. The ordered-pair multiplication and the example (ij)ℓ=−i(jℓ) remain unchanged by this editorial repair.

## R12 (P3) — The build emits non-sorry warnings

**Location:** Suggested.lean:346, 356, 364, 548, 651–670 and the remaining locations in the worker's gate.

**Claim:** Only `sorry` warnings remain.

**Witness:** The supplied gate records `build=39`, all non-sorry warnings: unused section variables/binders and proof-instance style warnings. A fresh targeted build and direct Lean elaboration both succeed but reproduce non-sorry warnings.

**Repair:** Remove unnecessary inherited binders, delete the padded wrappers, and use ordinary proof bindings where indicated. R06 shows why inspecting the resulting signatures matters. Rerun the targeted build and gate until these warnings disappear; do not suppress them with `set_option`. This is not a failed compilation and is therefore P3, not P1.

## Verified sound

**Scope.** Read all six files, family context, normative README/CONTRIBUTING and two main examples (ReflectionInvariantTheory, Completed/OrthogonalL2Bases). HEAD matches. Outside-folder diff and worktree status are clean. No `set_option`, admitted example, stray source, copied passage or executable algorithm was identified.

The targeted build `lake build TauCetiRoadmap.RepresentationTheory.LieHighestWeight.Suggested TauCetiRoadmap.RepresentationTheory.AdoIwasawa.Suggested` succeeded (9177 jobs). Direct `lake env lean` on the absolute Suggested.lean path succeeded. Scratch `#check @name` elaborations covered **432 named declarations**: 331 in Suggested.lean and 101 in the companions. Anonymous instance bodies were read separately. The signature defect found is R06; characteristic-zero binders for the polynomial-density claims and the explicit lattice data in `RationalizedAffineDatum` were retained. No source file was changed.

One-tactic scratch probes covered **177 admitted theorems** (137 in Suggested.lean, 40 in the companions), trying `simp`, `rfl`, `infer_instance`, with the native exact-lemma probes reported in R07. Five Suggested.lean admissions closed; no additional companion admission closed by these three tactics. Failure of a probe is not evidence of depth or truth.

The dependency check's complete output was:

```text
depcheck: 204 roadmaps, 1448 edges, 0 problem(s)
```

There was no UPWARD or CYCLE output. The missing-contract findings are separate from this graph result. All literal `*Needs:*` lines were checked: there are zero, which is part of R08.

The worker gate remains **FAIL**: `blob=3`, `prnum=1`, `sorry-data=47`, `residue=1`, `private-paths=1`, `imports=1`, `mathlib-subimports=1`, `build=39`; all its other counters are zero. The `private-paths` hit at README.md:1459 is a **false positive**: Baez’s public “The Octonions” author page, node 12, on `math.ucr.edu` is Baez's public author-page URL, not a machine path. It is recorded here rather than recommending removal of a legal source. Every other nonzero rule is addressed above. No acceptance is claimed while the gate fails.

**Ownership.** Used index `grep`/`show`, supplied heads, main, pins and board packages. No competing `TauCeti.CayleyDickson`/`TauCeti.DivisionOctonionReal` declaration was found. This roadmap owns the compact algebra comparison; consumers own projective geometry. Noncommutative PBW/Rees is distinct from GroebnerGeometry's commutative construction. R04–R05 address native split objects.

Resolved cross-roadmap cuts include:

| Supplier and location | Contract actually read; boundary |
| --- | --- |
| LieGroups, `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:326–356,383–426` | Lie-homomorphism integration and compact Weyl integration; complexification supplies holomorphic, not the asserted regular, extension (R01). |
| ClassicalGroups, `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:237–295,310–348` | Highest weights, Schur-character identification and interlacing/GT lines exist. Classification consumes LieHighestWeight; LR combinatorics is delegated to SchurWeyl. |
| RootSystems, `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:296–319,356` | Chamber/longest-element and finite-type data; no main 4A (R03). |
| CompactGroups, `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:369–390` | Character orthogonality; no main 6a/6b (R03). |
| SchurWeyl, `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:323–351` | Finite Schur/Jacobi–Trudi/Frobenius/RSK; no exact LR-count contract (R02). |
| TensorProductCombinatorics, supplied new-roadmap head, `TauCetiRoadmap/TensorProductCombinatorics/README.md:694–959,1192` | §1.6 localization/cone Fourier boundary construction and §2.6 type-A comparison. The resolver's H1.6 miss is a heading-format miss, not an absent supplier. |
| LieGroupoidsPoisson, supplied head, `TauCetiRoadmap/LieGroupoidsPoisson/README.md:1325–1376` | G4.6A positive group Lie–Poisson convention and G4.6B connected coadjoint leaves. |
| HamiltonianReduction, `TauCetiRoadmap/SymplecticGeometry/HamiltonianReduction/README.md:127–156` | KKS convention is ω(ξ_O,η_O)=ν([ξ,η]); positive Lie–Poisson sign agrees. It consumes the leaf/orbit result, not vice versa. |
| CharacteristicClasses, `TauCetiRoadmap/CharacteristicClasses/README.md:1061–1095` | C5.1 consumes the Lie Chevalley result and owns compact invariance/root transport/real descent. |
| ReductiveGroups, `TauCetiRoadmap/ReductiveGroups/README.md:227–262,460–464` | Layer 2 tangent tools and Layer 5P characteristic-zero closed-subgroup Cartier smoothness are expressly present. |
| GroebnerGeometry, `TauCetiRoadmap/GroebnerGeometry/README.md:254–273` | Commutative Rees ownership does not supply the noncommutative PBW comparison. |
| SpinRepresentations, `TauCetiRoadmap/RepresentationTheory/SpinRepresentations/README.md:1010–1095` | Clifford commutator versus left action, CAR staircase and dimensions; consumes this roadmap's reductive Pieri rule. |
| TangentialBordism, supplied head, `TauCetiRoadmap/TangentialBordism/README.md:2053–2138` | B3.6 idempotent charts and B3.7 compact automorphism geometry consume the positive algebra. They do not construct a competing octonion algebra. |

The other resolver lead, `TauCeti.Algebra.Lie.HighestWeight.CentralCharacter.DotOrbit`, is a real pinned module and builds successfully.

**Pinned declarations opened:**

| Pinned file and line | Declaration / exact scope inspected |
| --- | --- |
| `TauCeti/Algebra/Lie/Sl2/Spectrum.lean:147` | `exists_int_of_hasEigenvalue`, characteristic-zero finite-dimensional module, arbitrary triple, no irreducibility. |
| `TauCeti/Algebra/Lie/Sl2/WeightString.lean:324` | `finrank_eq_of_hasPrimitiveVectorWith`, irreducibility over the triple subalgebra. |
| `TauCeti/Algebra/Lie/Sl2/Standard.lean:1110` | `exists_isIrreducible_hasPrimitiveVectorWith`, triple spanning the ambient algebra. |
| `TauCeti/Algebra/Lie/HighestWeight/CompleteReducibility.lean:259` | `exists_isCompl_of_isKilling`, arbitrary characteristic-zero field. |
| `TauCeti/Algebra/Lie/Weights/Diagonalizable.lean:185` | Cartan action semisimplicity, with its finite-dimensional/split hypotheses. |
| `TauCeti/Algebra/Lie/HighestWeight/Weyl/Character.lean:319` | `formalCharacter_mul_weylDenominator_eq_weylNumerator`, actual highest vector and cyclicity. |
| `TauCeti/Algebra/Lie/HighestWeight/Weyl/Dimension.lean:112` | `finrank_eq_prod_coweightPairing_div`; positive-root denominators are nonzero. |
| `TauCeti/Algebra/Lie/HighestWeight/KostantMultiplicity.lean:73,82` | Character coefficient and weight-space rank versions of Kostant. |
| `TauCeti/Algebra/Lie/Weights/Central.lean:268` | `exists_centralWeight_of_isIrreducible`, scalar action of the center. |
| `TauCeti/Algebra/Lie/Reductive.lean:458` | `isIrreducible_restrict_derivedSeries`. |
| `TauCeti/Algebra/Lie/GeneralLinear/Basic.lean:255,303` | `center_matrix_toSubmodule_eq_span_one`, `derivedSeries_one_eq_slIdeal`. |
| `TauCeti/Algebra/Lie/GeneralLinear/Radical.lean:313,318` | `hasCentralRadical_matrix` and characteristic-zero instance. |
| `TauCeti/Algebra/Lie/GeneralLinear/Restriction.lean:132` | `gl_equiv_of_sl_equiv_of_central_scalar`, with matching scalar actions. |
| `TauCeti/Algebra/Lie/GeneralLinear/TraceForm.lean:126,148,157` | Actual trace bilinear form, nondegeneracy over a commutative semiring, dual matrix-unit formula, including empty indices. |
| `TauCeti/Algebra/Lie/GeneralLinear/Casimir.lean:245,262` | Trace-Casimir scalar and staircase value. |
| `TauCeti/Algebra/Lie/UniversalEnveloping/Prod.lean:163,169` | `prodEquivTensor`, canonical generator ↦ ι(z)⊗1+1⊗ι(s). |
| `Mathlib/Algebra/Algebra/Subalgebra/Centralizer.lean:170` | `centralizer_range_includeRight_eq_center_tensorProduct`, requiring the left factor to be module-free. |
| `TauCeti/Algebra/Octonion/Basic.lean:123,247,416,486,498,619` | Zorn carrier; dimension 8; norm multiplication; genuine left/right alternative laws; imaginary dimension 7. |
| `TauCeti/Algebra/Octonion/Derivation.lean:995` | Derivation dimension 14, commutative ring with strong rank condition. This is not yet the asserted G₂ identification. |
| `TauCeti/Algebra/AlbertAlgebra/Basic.lean:104,213,366` | Cyclic coordinate carrier and dimensions 27/26. These do not by themselves prove the Jordan identity or F₄ identification. |
| `TauCeti/LinearAlgebra/RootSystem/Opposition.lean:101,107,119,146,198` | Actual −w₀ root/coroot equations, involution and base permutation. |
| `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Bialternant.lean:243` | `diagramSchurPoly_mul_alternant`, division-free identity with the row bound; no group-character identification is assumed. |

**Headline inventory.** The README's summits are rank-one classification/tensor orthogonality; PBW and Verma universality; dominant-integral classification/complete reducibility; Weyl/dimension/Kostant and isotypic/Pieri formulas; duality/opposition; type-A Haar identification/branching; Lie Chevalley, filtered HC and central characters; Serre presentation; exceptional models and positive real algebra comparisons; reductive/glₙ classification/Casimir/Pieri/centers; affine closed-alcove and diagram/lattice comparisons. Native results are imports. R04 addresses admitted-carrier substitutes; R08 addresses missing docstring explanations for compact-Albert and affine-quotient headlines. Companions are not imported by Suggested.lean.

**Seeded source sample.** The repeated Weyl sample covers the development list and Layer 6; type-A is separate. No locator explicitly marked “unverified” was found. Readable evidence follows.

| Sample | Source/locator check and outcome |
| --- | --- |
| Weyl character formula, README.md:275 | Bibliography gives Humphreys Ch. VI §§22–24, without theorem/page. Sources service returned that book uncertified/paywalled. Native denominator-cleared theorem opened at the pin; textual locator not certified. |
| Weyl character formula, README.md:1031 | Same unavailable textbook locator; hypotheses and the integral denominator-cleared normalization agree with the opened native theorem. No claim of having checked the book text. |
| Integral weights, finite induction and virtual characters, README.md:855 | Unidentified notes; exact score/properness and orbit-sum computations below pass. Source attribution remains unverified (R09). |
| Polynomiality before character identification, README.md:894 | Native tableau-defined Schur bialternant at the pin supports the division-free algebraic input; the unidentified notes cannot be certified. |
| Haar norm and identification, README.md:929 | Checked the factor 1/n!, numerator norm and singular-torus behavior below. LieGroups' Haar contract exists; the claimed rationality input fails R01. Original notes unidentifiable. |
| Type-A coefficient and branching applications, README.md:956 | Interlacing checked in ClassicalGroups main Layer 6 and computed below. The alleged printed p5 correction is not certified without the work. |
| Positive division-octonion algebra/invariant tensors, README.md:1505 | `baez2002 line 340` (§2.2, printed pp8–10) and `baez2002 line 1695` (printed pp37–39) read. Coordinate conventions differ; (a,b)↦(a,conj b) gives the comparison for these two displayed doubling laws. The trilinear sign is independently computed below. |
| Complex scalar-extension boundary, README.md:1537 | Baez supports the algebraic real/split distinction and complexification background; the specific Lean map and Leibniz-kernel base-change theorem are new comparison targets, not verified numbered theorems in that text. |
| Connected groups/three center comparisons, README.md:1796 | `etingof2024 line 2981` (§13.3, Thm13.5, p69) and `etingof2024 line 3029` (§14.1, Thm14.1, pp70–71) read: complex semisimple center/symmetrization/HC, not the full reductive-group bridge as written. ReductiveGroups' Cartier cut checked separately. |
| Matrices and trace duality, README.md:1836 | Actual trace form/nondegeneracy read at the pins. `etingof2024 line 2147` (§10.1, Thm10.1, pp51–53) is complex semisimple Chevalley; it is not a locator for the entire glₙ arbitrary-field comparison. |
| Closed alcoves and point orbits, README.md:2027 | No locator in the block. The PR data mentions unidentified Knutson S2 pages, which could not identify a legal text. A₁ boundaries/intermediate lattices computed below. |
| Prototype carrier and chart boundary, README.md:2231 | Code and stated coordinate choices inspected; no identified external source for this paragraph. Norm, scalar-extension and chart examples computed below. |

Additional readable inputs: `baez2002 line 1469` (printed p32, Albert trace-power determinant); `gutt2019 line 899` (slide14, positive linear-Poisson/PBW averaging, not the unidentified UEAlgebra10 source); `stacks02ml line 13996` (tag 02ML, Lemma 122.11, finite type/localization hypotheses). 

**Adversarial values.** The table retains computed instances for every seeded sample, the headline theorems and finding witnesses; routine per-target rows are omitted. Equivalent native aliases share rows. “Pass” is an instance check, not a proof. Exact rational tests covered **225 tensor-string vectors** (0≤m,n≤4) and **343 imaginary-octonion basis triples**. Dimension-only comparisons are labeled.

In the rank-one rows, [h,e]=2e, [h,f]=−2f, [e,f]=h, ω(h)=1 and κ(h,h)=8. Write t for the weight monomial e^ω. Thus the inverse Killing form has (ω,ω)=1/8. Polynomial x,y are the ordered coordinates used in Layer 0T/PBW, not Lie-algebra elements unless stated.

| Statement / defining operation | Instance and computed values on both sides | Result / change |
| --- | --- | --- |
| `sl2_hAction_eigenvalue_isInt` | V(2): h eigenvalues 2,0,−2 equal the casts of integers 2,0,−2. Zero module: no nonzero eigenvector. | Pass; native duplicate R05. |
| `sl2_finrank_of_hasPrimitiveVector` | V(0),V(1),V(2): ranks 1,2,3 equal n+1. sl₃ adjoint restricted to an α₁-triple: primitive weight 1, ambient rank 8≠2. | Restricted irreducibility correctly excludes the latter. |
| `sl2_irreducible_ext` | Two V(1) copies: ladder map sends v↦v′, fv↦fv′ and h matrices are both diag(1,−1). Extra central actions 0 and 1 prevent an ambient equivalence. | Conclusion correctly uses the triple subalgebra. |
| `sl2_exists_irreducible` | n=0,1,2 gives dimensions 1,2,3; highest vectors have h-values 0v,1v,2v and e-value 0. | Pass; native construction exists. |
| Polynomial carrier P(d), `monomial`, `e` | d=0,i=0: 1 of degree 0. d=2,i=1: xy of degree 2. d=2,i=3: e=0, while the unguarded monomial would be y³. | Zero extension prevents nat-subtraction junk. |
| `symmetricMonomial`, `polynomialSymmetric_e` | d=2,i=1: xy must map to the class of y⊗x; i=3: both guarded vectors 0. | Required normalization; admitted family R04. |
| `polynomialSymmetric_inverse` | Inverse of normalized degree-2 comparison takes [y⊗x] to xy, and 0 to 0. Multiplying the comparison by 2 instead yields xy/2. | Normalization excludes rescaling; R04. |
| `hermitian` | d=0 norm²(1)=1; d=2 norms²(x²,xy,y²)=(1,1/2,1); ⟨x²,xy⟩=0. | Positive weights; unweighted form fails. |
| `averagedSymmetrization` | d=2: xy↦(x⊗y+y⊗x)/2 with tensor norm² 1/2; x²↦x⊗x with norm² 1. Raw permutation sum has twice these vectors. | Factorial averaging is essential. |
| `strings_orthogonal` | m=n=1: ⟨y⊗x+x⊗y,x⊗y−y⊗x⟩=−1+1=0. | Pass; all tested different strings orthogonal. |
| `highestNorm`, `highest_norm` | m=n=2,r=0,1,2: norm sums 1,1/2+1/2=1,1+4/4+1=3. | Matches direct form. |
| `lowered_norm` | m=n=1,r=0,k=1,2: norms² 2,4 equal k!·2!/(2−k)! times 1. | Pass. |
| `strings_span` | m=n=2: string lengths 5+3+1=9=(2+1)². m=0,n=3: one string of length 4. | Pass in all tested dimensions. |
| PBW filtration and exhaustive union | One-dimensional abelian L: F₀=K,F₁=span(1,x),F₂=span(1,x,x²); x^d lies in F_d. | Correct nonnegative filtration. |
| `pbwGradedMonomial`, `basisPbwGraded_apply` | Abelian rank 1: degree-d basis has one vector [x^d]; rescaling to 2^d[x^d] violates the stated evaluation for d=1. | Body admitted; R04. |
| `pbwBasis`, injectivity, domain/noetherian claims | L=0: U=K, ι:0→K injective; L=K abelian: U=K[x], no zero divisors; finite rank gives noetherian polynomial example. | Native facts consumed; no finite-rank hypothesis needed for domain. |
| `module_finite_of_central_monic_relations` | U=K[x], R=K[x²]: x²−t=0, bounded basis {1,x}, rank 2. Empty generators: U=K, rank 1. | Positive degree is correctly required. |
| Rank-one polynomial algebra example | Abelian dimension 1: ι(x) corresponds to polynomial X, ranks in degrees 0,1 both 1. | Correct Check, padding R07. |
| Affine PBW/Rees relation | [x,y]=y, ordered Y then X: XY−YX=ħY. Mod ħ: xy−yx=0; at ħ=1: xy−yx=y. | General characteristic version consistent. |
| Rees zero and nonzero fibers | Rank 1: ħ-fiber 0 retains class of X as degree-1 generator although ambient evaluation X=ħx↦0; a=2 over ℚ maps X↦2x invertibly. Over ℤ, 2 is not a unit. | Unit condition is necessary. |
| Rees Casimir leading symbol | sl₂ Ω=h²+2h+4fe homogenizes to H²+2ħH+4FE; degree-2 symbol h²+4ef. | Correct lower-order term; symmetric splitting separately char 0. |
| `slTwoDiagonalCartan`, membership | h=diag(1,−1) lies in H; e=E₁₂ does not; dim H=1. | Definitions should be real/native, R04. |
| Verma module and universal property | sl₂ M(λ): f^k v has weight λ−2k; f^0v=v. At λ=0, f v is nonzero in Verma but maps to 0 in the trivial quotient. | Universal map determined by v; quotient not confused with Verma. |
| Irreducible quotient and uniqueness | λ=0 gives dim1; λ=1 gives dim2; different dimensions forbid equivalence. The quotient highest line has dimension1 in both. | Pass; native aliases. |
| Dominant-integral predicate/classification | sl₂ λ(h)=0,1,2 are dominant with dimensions1,2,3; λ=−1 or 1/2 is not dominant integral and L(λ) is not finite-dimensional. | Correct characteristic-zero scope. |
| Casimir centrality/scalar | Ω=h²+2h+4fe=8·Casimir; on V(n), Ω=n(n+2), so Casimir for n=0,1,2 is 0,3/8,1. | Correct Killing normalization. |
| Complete reducibility | ℝ²⊕ℝ² as sl₂(ℝ)-module: N∩N′=0 and dim(N+N′)=4. | Mathematics sound; local signature fails R06. |
| Weyl denominator and numerator | A₁ λ=2ω: D=1−t⁻², N=t²−t⁻⁴; (t²+1+t⁻²)D=t²−t⁻⁴. | Both sampled Weyl occurrences agree. |
| Weyl dimension formula | A₁ n=0,1,2: (n+1)/1=1,2,3. A₂ (a,b): (a+1)(b+1)(a+b+2)/2 gives 3,3,8,6,10,27 for (1,0),(0,1),(1,1),(2,0),(3,0),(2,2). | Nonzero denominators. |
| Kostant multiplicity | A₁ V(2): multiplicity at0 is P(2ω)=1; atω is0. A₂ adjoint: P(α₁+α₂)=2 and other shifted contributions vanish, so zero-weight multiplicity2. | Pass. |
| Ordinary duality / opposition | A₁ −w₀=1, V(1)*≅V(1). A₂ −w₀ interchanges ω₁,ω₂; standard dimension3 dual is the other fundamental module. | Distinguishes contragredient from identity. |
| `exists_invariantForm_iff_neg_longest_smul_eq` | A₁ V(1): determinant alternating form exists, δ(ω)=ω; A₂ standard: δ(ω₁)=ω₂≠ω₁, no invariant bilinear pairing with itself. | Pass. |
| `invariantForm_isSymm_iff_tits_sign` | A₁ V(1): Tits sign (−1)^1=−1, skew form; V(2): (+1), symmetric Killing form. | Self-dual does not imply real/symmetric type. |
| Every-module self-duality / diagram distinction | D₄ w₀=−1 so δ=1, while diagram group has order6; A₂ δ≠1. Rootless torus weight1 dual is−1. | Scope correctly semisimple; R03 supplier repair needed. |
| Isotypic component/rank | M=V(1)⊕V(1)⊕V(0): V(1)-component dimension4=2·2, trivial component dimension1. | Pass. |
| `isotypic_decomposition_equiv` | Same M: direct-sum ranks4+1=5; zero module: empty nonzero components, rank0. | Pass. |
| `IsMinuscule`, `minuscule_pieri` | A₁ ω has weights {±ω}, each1. λ=0: λ+ω dominant, λ−ω not; only V(1) remains. V(2) is not minuscule (extra0 weight). | Dominance filter essential. |
| `weightEvaluation`, `weightTranslation_evaluation` | p=t, μ=1, λ=0: translated evaluation=1=p(0+1); identity-map impostor gives0. | Translation body admitted, R04. |
| Raw/linear HC and dot action | Ω=h²+2h+4fe: raw HC=t²+2t; τ_(−ρ) gives t²−1. At λ=2 raw=8; linear at λ+ρ=3 gives8. Reflection λ↦−λ−2 sends2↦−4, also8. | Shift sign correct. |
| HC filtered maps / inverse filtration | Ω∈F₂, HC(Ω)=t²+2t degree2; constants map to constants in F₀. Ω² has degree4 and leading h⁴. | Pass in rank one. |
| Graded inclusion and symbol equation | [Ω] maps to h²+4ef in degree2; scalar1 maps to1 in degree0. | Actual map needed, R04. |
| Graded multiplication / invariant iso | [Ω]²=[Ω²], symbols (h²+4ef)² on both sides. Degrees2+2=4. | Compatibility test passes; admitted data removed under R04. |
| Lie Chevalley restriction/isomorphism | A₁ q↦h² induces K[q]≃K[h²]; degree2 and constants preserved. | Correct model; general theorem not proved by this test. |
| Symmetrization equivariance / center criterion | q=h²+4ef↦h²+2h+4fe=Ω, central; e maps to e with [h,e]=2e≠0. | Invariant/non-invariant distinguished. |
| HC–symmetrization lower discrepancy | q=h²+4ef: HC(sym q)=h²+2h versus restriction(q)=h², difference2h degree1<2. | Nonmultiplicativity not silently assumed. |
| `weightTranslationDotLinearIso` / HC bijectivity | K[t²+2t] translated by−1 becomes K[t²−1]=K[t²]; Ω↦t²−1 generates target. | Rank-one surjectivity/injectivity. |
| `centralCharacter_eq_iff_dotOrbit` | λ=2, μ=−4: Ω-values8,8 and μ=−λ−2. λ=0, μ=1: values0,3, distinct. | Both directions tested in A₁. |
| Dominant uniqueness / central-character injection | λ=2 has dot orbit {2,−4}, only2 dominant. λ=0 gives {0,−2}, only0 dominant. | No order on ℂ required. |
| Freudenthal top and non-top formula | V(2): top multiplicity1; at μ=0 inverse-Killing denominator(9−1)/8=1, RHS2·(4/8)=1. At top denominator0, so no divided formula. | Actual/non-top conditions essential. |
| Chevalley system / Serre transpose | A₁ [e,f]=h, [h,e]=2e. B₃ nonsymmetric edge with A₂₃=−1,A₃₂=−2 gives [h₂,e₃]=−2e₃ and Serre exponent3. | Transpose convention essential. |
| Serre lift injectivity/presentation | A₁ presentation spans e,h,f, images are three independent matrices: rank3 and kernel0. | General finite-type spanning still a substantive target. |
| Split octonion carrier/norm/alternative | Zorn diag(1,0) is nonzero with norm0; dimension8=2+3+3. Basis units satisfy alternative laws. | Native carrier; no positive real norm claim. |
| Split imaginary and derivation dimensions | Imaginary dimension1+3+3=7; derivations sl₃⊕K³⊕K³ give8+3+3=14. | Native results; R05. |
| Split G₂ comparison | Root count12+Cartan rank2=14, matching Der dimension14. | Dimension consistency only, not proof of isomorphism. |
| Split Albert carrier/trace/trace-zero | Diagonal3 plus three octonions gives27; trace(a,b,c)=a+b+c has rank1, kernel dimension26. | Native values; R04–R05. |
| Albert Jordan identity / F₄ comparison | Diagonal A=(1,2,3), B=(2,0,1): Jordan identity reduces coordinatewise to a³b=a³b=(2,0,27). F₄ roots48+rank4=52. | Test does not establish nonassociative Jordan or F₄ theorem. |
| Exterior/Vinberg and E-series dimensions | C(9,3)=84, dim sl₉=80, total80+84+84=248; E₆=72+6=78, E₇=126+7=133. | Dimension consistency; exterior Check is padding. |
| Cayley–Dickson pair/product/Star | x=(1,i): star x=(1,−i), x star x=(2,0), N(x)=2; pointwise pair conjugation has wrong second-component behavior at (0,1). | Real positive carrier distinguished. |
| Baez-coordinate comparison | F(a,b)=(a,conj b). Roadmap (i,0)(0,1)=(0,i), F gives(0,−i), also Baez product of F inputs. | Required convention adapter exhibited. |
| Trace/norm/Euclidean norm | x=(1,i): T=2, x+star x=(2,0)=T·1, N=2=norm². x=0: both norm squares0. | Positivity excludes nonzero split null vector. |
| Norm multiplication | x=(1,i),y=(0,1): product(−i,1), norm2=2·1. | Cross terms cancel. |
| Left/right alternative, flexibility | x=i,y=j: x²y=−j=x(xy); (yx)x=−j=y(x²); x(yx)=j=(xy)x. | Genuine laws agree; submitted right law tautological R07. |
| Tautology negative control | With arbitrary multiplication a*b=a+2b, x=1,y=0: submitted sides4=4; right alternativity instead compares4 and6. | Vacuous accepted test, delete R07. |
| Moufang identities | x=i,y=j,z=ℓ: x(y(xz)) and ((xy)x)z both give jℓ; (xy)(zx) and x((yz)x) both give jℓ. | Two parenthesizations agree. |
| Star involution / anti-multiplication | x=i,y=j: star(ij)=−k; (star j)(star i)=ji=−k; star²i=i. | Correct reversed order. |
| Inverse and cancellation | x=(1,i), star x/2=(1/2,−i/2); both products equal1. x=0 would give0, not1. | Nonzero hypothesis necessary. |
| `derivation_apply_one` / generated algebra | D=0 gives D1=0; for any derivation D1=D1+D1 forces0. Generators i,j yield span(1,i,j,k), associative. | D1 target padding; Artin target substantive. |
| `span_three_vectors_associative` | Span(1,i,j) lies in ℍ; at x=i,y=j,z=i both bracketings give j. For i,j,ℓ in the full algebra bracketings differ. | Smaller span is consistent, not a substitute for full Artin. |
| Smooth multiplication/Star/inverse | Pair multiplication is coordinate-degree2, Star degree1; inverse has denominator N. Along x=t·1, inverse=1/t for t≠0 and derivative−1/t². | Correct open nonzero domain. |
| Imaginary space, metric, product | i,j imaginary: g(i,j)=0, ij=k=i×j; i²=−1, g(i,i)=1, i×i=0. | Positive metric and product signs. |
| Cross repeated-vector identity | i×(i×j)=i×k=−j; g(i,j)i−g(i,i)j=−j. | Pass. |
| Associator correction | (ij)ℓ=e₇, i(jℓ)=−e₇; associator2e₇. Cross-product discrepancy also2e₇, metric correction0. | All343 basis triples pass. |
| Complex-linear conjugation | On i_ℂ⊗1, extended real conjugation gives i_ℂ⊗1; tensor Star gives−i_ℂ⊗1. | Explicitly distinguishes the two operations. |
| Complexification unit/product/bijection | Real positive model has no nonzero norm-zero vector; complexification contains u=1+i_ℂ e₁ with N(u)=1−1=0. Both complex carriers have dimension8. | Necessary consistency, not a construction of the comparison. |
| Derivation base change/congruence | A 14-dimensional real derivation space complexifies to complex dimension14; zero derivation maps to0 and preserves the Leibniz equation0=0+0. | Dimensions/zero control only; kernel comparison remains a target. |
| Derivation exponential | D=0: exp(tD)=Id and Id(xy)=Id(x)Id(y). Infinitesimal equation at t=0 is D(xy)=Dx·y+x·Dy. | Does not assume norm preservation to obtain multiplication preservation. |
| Compact Albert determinant/characteristic identity | A=diag(1,2,3): tr=6,tr A²=14,tr A³=36; det6=(216−252+72)/6. At eigenvalue2:8−24+22−6=0. | Normalization and division conditions agree. |
| Compact trace positivity / formal reality | A with only one real diagonal entry1: tr(A²)=1; off-diagonal octonion u in one pair gives2N(u)>0 if u≠0. Split null u gives0. | Positive and split carriers distinguished. |
| Prototype/projective chart boundary | (x,y)=(0,0): P=diag(1,0,0). (1,0): 2×2 all-1/2 block, P²=P, trace1. Denominator1+N(x)+N(y) is1 or2, never0. | Carrier side consistent; charts owned downstream. |
| Reductive splitting / complete reducibility | gl₂=KI⊕sl₂ has dimensions1+3=4. Abelian1-d algebra acting by nonzero Jordan J, J²=0: central action not semisimple, no invariant complement to ker J. | Central-semisimplicity condition essential. |
| Matrix center / derived algebra | gl₂ center KI dimension1, derived sl₂ dimension3; gl₁ center dimension1 and derived0; gl₀ both0. | No spurious rank-one center in gl₀. |
| Central weight / derived restriction | gl₂ irreducible highest λ=(3/2,1/2): I acts by2, sl₂ highest difference1, dimension2. Changing central shift changes scalar while preserving sl₂ type. | Matching central scalar necessary. |
| gl dominance / highest classification | λ=(3/2,1/2) has difference1∈ℕ, so dim2; common shift1/2 is allowed. Difference−1 is not dominant. | Lie weights need not have integral coordinates. |
| `glIrreducible`, finiteness and highest vector | n=1, λ=c: one-dimensional scalar module of weight c, raising conditions empty; n=0 only trivial irreducible dimension1. | General boundary sound, admitted carrier R04. |
| gl dual-standard Pieri | λ=(3/2,1/2): summands (1/2,1/2) dimension1 and (3/2,−1/2) dimension3; total4=2·2. | Both dominant; endpoints handled. |
| gl isotypic criterion | Two copies of weight λ=(3/2,1/2): all highest lines of that weight, dimension4=2·2; adding trivial module adds a different highest weight0. | Discriminating non-example. |
| Trace gl Casimir/scalar | C(λ)=Σλ_i(λ_i+n−1−2i); n=2 staircase gives7/2, lowered weights give1/2 and9/2. | Correct trace, not Killing, form; native duplicate. |
| Tensor center inclusion/injectivity/range | S=sl₂,Z=K: center is K[z,Ω]; z⊗Ω maps to zΩ, nonzero; 1⊗e not central since [h,e]=2e. | Commutes with both factors; native centralizer input has freeness. |
| Central tensor representation/kernel descent | U(1)×SU(2) cover of U(2): kernel contains (−1,−I); character z^m and SU₂ highest n give scalar(−1)^(m+n). (m,n)=(1,1) gives1, (0,1) gives−1. | Descent iff parity even in this example. |
| Connected group/Lie fixed-vector comparison | Gₘ weight1 in char0: differential1, no invariants. In char p weight p has differential0 but nonconstant character a^p; disconnected C₂ sign has differential0 but action−1. | Both excluded counterexamples are needed. |
| Three center comparisons | sl₂: sym(q)=Ω; symbols q↔[Ω]; HC(Ω)=h²+2h. These values differ from unshifted restriction(q)=h². | Linear, graded and algebra maps are not conflated. |
| Trace pairing / dual matrix units | B(E₁₂,E₂₁)=1; B(E₁₂,E₁₂)=0. Empty matrix space has its unique zero vector and nondegenerate pairing. | Correct dual indices, including rank0. |
| Scalar/derived projections | A=diag(2,0), n=2: tr A=2,c=1, scalar I, derived diag(1,−1); sum A. In char2, I has trace0 and lies in both factors. | Invertibility of n required. |
| Central generator versus projection coordinate | Symbol of ι(I) evaluated at diag(2,0) is tr=2; coefficient of I in the projection is1. n=0 center U=K; n=1 K[t]. | Factor n and zero-rank branch correct. |
| Matrix invariant polynomial restriction | n=2: tr and det restrict to a+b and ab (degrees1,2); on sl₂ diag(a,−a), tr0, det−a² (degree2 only). | Correct generator degrees. |
| Type-A weights, rho, permutation | n=2: rho=(1,0); transposition sends (a,b)↦(b,a). n=0 has one empty weight, rho=0. | Actual integral lattice. |
| Laurent monomials/evaluation/multiplication | β=(−1,0),γ=(0,1), torus (2,3): evaluations1/2,3, product3/2=evaluate(t^βt^γ). | Negative weights allowed. |
| Type-A orbit sum / group character | λ=(1,1) orbit singleton, sum=t₁t₂, not twice it. Standard GL₂ character=t₁+t₂; at(2,3) trace5=evaluation5. | Stabilizers not overcounted. |
| Group-character triangular expansion | Sym² standard: ch=t₁²+t₁t₂+t₂²=m_(2,0)+m_(1,1). Both orbit coefficients1. | Highest line/cone/Weyl hypotheses used. |
| Central degree/dominance/score | x=(3,2,1), λ=(3,1,−2): degree2, score9; gap identity baseline4 plus gaps2+3 gives9. | Exact properness identity. |
| Finite score sublevel / ties | Same x: weights (1,1,−2),(2,−1,−1) both degree0 and score3; n=1 fixed degree S gives one weight. | Finiteness does not require tie-free scores. |
| Finite dominance ideal / virtual induction | λ=(2,0): lower dominant weight(1,1), no others; m_(2,0)=ch Sym²−ch det. | Integral coefficient −1 permitted. |
| Staircase alternant/denominator | n=2: A_rho=t₁−t₂=t₁(1−t₂/t₁). n=0: both empty products1. | Correct negative-root convention. |
| Candidate polynomiality/top/support | λ=(1,0): candidate=t₁+t₂; top coefficient1, other weight(0,1) dominated. λ=(−1,−1): candidate=(t₁t₂)⁻¹. | Determinant shift needed. |
| Candidate times denominator | (t₁+t₂)(1−t₂/t₁)=t₁−t₂²/t₁=N. At(1,1), candidate2 but D=N=0. | No 0/0 evaluation. |
| Numerator coefficient norm / Haar norm | n=2 numerator has coefficients1,−1; squared sum2=2!. Haar norm is2/2!=1, whereas unweighted torus norm of t₁+t₂ is2. | Correct Haar factor. |
| Virtual norm-one identification | Integer coefficients with sum of squares1 are one ±1; top monomial coefficient1 rules out the minus sign. λ=(1,0) selects standard character. | Arithmetic step sound, supplier R01 unresolved. |
| Type-A deep tensor formula | n=2, λ=(3,0),μ=(1,0): gap3>spread1; summands (4,0),(3,1) dimensions5+3=8=4·2. n=0:1·1=1. | Strict spread bound retained. |
| Branching determinant/GL₁ exponent | λ=(2,1,0): rows μ=(1,0),(1,1),(2,0),(2,1), exponents2,1,1,0, dimensions2+1+3+2=8. μ=(3,0) has determinant0; valid μ have1. | Interlacing and degree checked. |
| Fourier boundary convention | A₁ n=1: t/(1−t⁻²)+t⁻¹/(1−t²)=t+t⁻¹; common negative-root expansions cancel all tails. | Polarization needed, not two unrelated series. |
| Affine realization / lattice injection | A₁ coordinate t=α(x): coroot translations2ℤ, coweight translationsℤ; inclusion2ℤ→ℤ has kernel0 and index2. | Distinguishes Q∨ and P∨. |
| Affine reflections/open alcove | s₀(t)=2−t,s₁(t)=−t; s₀s₁ translates by2. Open alcove(0,1). | Correct affine wall offset. |
| Closed-alcove orbit uniqueness | Abar=[0,1]; t=3/2 moves to1/2. Endpoints0 and1 are different Q∨⋊W orbits. | Boundary statement stronger than open-alcove transitivity. |
| Wall stabilizer/quotient topology | In A₁, stabilizer at0 has order2; at1/2 is trivial. Rank0: space, closed alcove and quotient each one point. | Boundary/rank0 controls. |
| Intermediate lattice and Ω action | P∨ gives Ω=C₂ acting t↦1−t: endpoints identified; midpoint Ω-stabilizer order2. Q∨ gives Ω_Y=1. | Abar/Ω_Y required. |
| Full stabilizer semidirect product | A₁ extended action at1/2: affine stabilizer1, Ω-stabilizerC₂, full order2; at0: affineC₂, Ω-stabilizer1, full order2. | Product formula matches both. |
| Diagram automorphisms | A₁ ΩC₂, Γ1: order2. D₄ ΩC₂², ΓS₃: order24. E₆ ΩC₃, ΓC₂: order6. | Orientation/action retained. |
| Actual center versus affine stabilizer | A₁ simply connected Y=Q∨: Ω_Y=1 but center P∨/Y=C₂. Adjoint Y=P∨: Ω_Y=C₂ but center1. | Quotients correctly separated. |
| Compact periods/root characters | SU₂ coroot circle diag(e^(it),e^(−it)): period2π; root evaluates e^(2it), differential2i. Dimensionless coroot maps to2π times compact coroot. | No missing 2π factor. |


## Not verifiable

Bibliography lookups used the source service; no paywall was bypassed.

- **Uncertified/paywalled:** Humphreys (1972), Bourbaki Chapters 7–8, Goodman–Wallach (2009). Text unavailable; no renewed request was made.
- **No readable legal text returned by the service's author/title or DOI lookup:** Serre (1987); Fulton–Harris (1991), Lecture 25; Humphreys (2008), AMS GSM 94; Jantzen, *Lectures on Quantum Groups* and *Representations of Algebraic Groups*; Jacobson (1971); Schafer (1966); Dixmier (1996), §1.6. Recorded together as missing.
- **Wrong work returned:** the Molev (2007) lookup returned the 1994 Molev–Nazarov–Olshanski paper. Not used for the monograph.
- **Unidentified texts:** type-A notes p5/p6, rank-one notes p49/p172, Knutson S2 pages 116–118 and 129–131, and UEAlgebra10 p2. Bibliography and legal searches did not identify them; alleged misprints remain uncertified.
- **Ambiguous bibliography:** Landsberg–Manivel is cited without a title. The service obtained *The projective geometry of Freudenthal's magic square*, but correspondence with the intended work/numbering could not be established.
- The prototype/chart paragraph has no locator. Etingof's complex setting does not certify arbitrary-field comparisons.

## Source issues

- none
