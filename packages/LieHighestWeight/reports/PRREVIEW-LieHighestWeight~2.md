# Review of LieHighestWeight (pull request #1220 at f236423)
Folder: `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/`

**Verdict:** needs changes

Ten findings, six blocking (P1/P2). Locations without a directory prefix are relative to the folder above. `Mathlib/` and `TauCeti/` locations refer to the pinned libraries. Supplier locations refer to main unless explicitly identified as a supplied new-roadmap head. This review changes no pull-request file.

## R01 (P1) — Three required external contracts remain unowned prerequisites

**Location:** README.md:49–67: “The following external contracts are required by the indicated applications and are not assertions about the cited roadmap sections”.

**Claim:** The Haar, LR and compact-opposition applications retain their full conclusions while requiring algebraic compact-complexification, a specified skew-tableau product theorem, and actual-character-lattice/Frobenius–Schur comparisons.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:407`, `SchurWeyl/README.md:323`, and `CompactGroups/README.md:369` supply holomorphic extension, Schur/RSK, and character orthogonality, respectively. They do not supply the acknowledged strengthenings; no matching declared gaps exist.

**Repair:** Register separate precise supplier gaps with the same slugs in the design's gaps and README Exact supplier contracts, or assign the missing constructions to appropriate extension targets. Naming unmet requirements in Scope alone does not establish the prescribed contract. Preserve these distinguishing tests: U(1)'s inverse character extends regularly to Gₘ with value 1/2 at 2; the product of two one-box Schur characters has coefficients 1 for shapes (2) and (1,1); SU(2)'s standard character does not descend to SO(3), and its invariant form has sign −1. Holomorphicity, unnamed structure constants, and the full simply connected weight lattice do not express those requirements.

## R02 (P1) — The compact period comparison is attributed to a nonexistent supplier target

**Location:** README.md:2242–2258: “After LieGroups Layer 7 has constructed the actual compact torus period quotient”; “normalization supplied by LieGroups Layer 6–7”.

**Claim:** The center calculation consumes an actual period-lattice comparison and its rank-one normalization from those layers.

**Witness:** `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:383–426` specifies maximal tori/Weyl integration and holomorphic complexification. It does not specify the claimed period quotient, coroot-circle calibration, or commuting algebraic/compact cocharacter square.

**Repair:** Declare that precise supplier gap, or construct this comparison as an owned target before applying it. Keep the test SU(2): diag(exp(it),exp(−it)) has period 2π, its root is exp(2it), and its differential is 2i. The dimensionless coroot must map to 2π times the compact coroot. Then the center calculation gives order 2 for SU(2) and order 1 for SO(3). The lattice calculation itself does not supply the missing exponential comparison.

## R03 (P2) — Ownership is reversed for three generic constructions

**Location:** README.md:35–47: “Layer 6.2 owns the lattice cone expansions, Fourier boundary maps and directional endpoint comparisons”; the same passage claims the smooth Fourier estimates and smooth Lie–Poisson bracket.

**Claim:** TensorProductCombinatorics, PseudodifferentialOperators and LieGroupoidsPoisson consume these constructions from this roadmap.

**Witness:** Supplied new heads: `TauCetiRoadmap/TensorProductCombinatorics/README.md:694,2575` owns the cone/Fourier/Todd comparisons; `PseudodifferentialOperators/README.md:699` owns smooth periodic Fourier decay; `LieGroupoidsPoisson/README.md:1325` owns positive smooth Lie–Poisson. Each gives the opposite supply direction.

**Repair:** Restore the imports of these owners by section and retain the PBW/polynomial comparison and Weyl-character applications here. Main LieHighestWeight already does this at README.md:487 and :870; a revision cannot silently reverse those contracts. The common objects agree on the discriminating instances: list (2) has partition values (1,0,1) at 0,1,2, with toric contributions 1/2+(-1)^b/2; the affine bracket [x,y]=y has {x,y}(2,3)=3. These are the same generic constructions, not distinct variants. This is a repairable ownership defect, not a reason to discard the roadmap's independent comparisons.

## R04 (P2) — Admitted data remain in the tensor target file

**Location:** Sl2TensorOrthogonalityTargets.lean:31–79: “noncomputable def polynomialSymmetric : ∀ d : ℕ, P d ≃ₗ[ℂ] S d := by sorry”.

**Claim:** The file defines a polynomial/symmetric-power equivalence and homogeneous raising/lowering maps, then states results using them.

**Witness:** The equivalence at :49 is admitted data; `e` at :31 and `E`/`F` at :72/:77 also contain admitted construction obligations. `action` at :57 depends on the admitted equivalence.

**Repair:** Delete admitted definitions and dependent acceptance statements. Retain normalized existence theorems on native carriers, as the main file now does, with only genuinely simple definitions having complete bodies. For degree 2 require xy to correspond to the standard symmetric monomial with coefficient 1; averaged tensor symmetrization is (x⊗y+y⊗x)/2 and its squared norm is 1/2. This excludes rescaling by 2 and fixes the same normalization used by the orthogonality theorem. The rule applies to every listed Lean file, not only Suggested.lean.

## R05 (P2) — The isotypic dictionary is still planned despite existing pinned implementations

**Location:** README.md:964–973: “the enveloping-algebra dictionary ... is its own named milestone”.

**Claim:** Construct Lie multiplicities, isotypic components, their dimension formula and the Lie/U(L)-submodule dictionary through ring-level machinery.

**Witness:** The pins already provide `LieModule.isotypicMultiplicity` (TauCeti/Algebra/Lie/Multiplicity.lean:126), `LieModule.isotypicComponent` (Isotypic.lean:97), `TauCeti.UniversalEnvelopingAlgebra.lieSubmoduleOrderIsoAsModule` (UniversalEnveloping/Module.lean:562), and `LieModule.finrank_isotypicComponent` (UniversalEnveloping/Multiplicity.lean:227).

**Repair:** Delete those construction targets and cite the exact declarations, with their hypotheses, under supplier contracts. Retain only additional highest-weight indexing or reductive semisimplicity adapters not supplied by them. On M=V₂⊕V₀⊕V₀ for sl₂, the existing multiplicities are 1 and 2 and component dimensions are 3 and 2; the order isomorphism preserves the same underlying submodule elements. No new dictionary changes those values. In particular, do not claim that the general reductive central-semisimplicity adapter is already proved by a theorem requiring a complemented submodule lattice.

## R06 (P2) — The type-A character headline is statable but absent

**Location:** README.md:750–915 (integral type-A characters from Haar measure); Suggested.lean:33–36 lists missing compact-extension comparisons instead of stating the resulting character identification.

**Claim:** Identify the integral Laurent candidate with the actual rational irreducible GLₙ-character of highest weight λ.

**Witness:** TypeAHaarTargets.lean:49 and :75 already define both sides on native carriers. A scratch theorem equating `groupWeightCharacter r` and `candidate l`, with rationality, irreducibility, one-dimensional top weight and dominance-cone hypotheses, elaborates at the pins.

**Repair:** State that headline in Suggested.lean with only its necessary real-bodied definitions, or cite the existing owner and state the genuinely new comparison promised here. A missing proof input is not a missing statement carrier. Do not substitute only polynomiality, top coefficients and Fourier numerator norm. The statement distinguishes λ=(1,0), where both sides are x+y and evaluate to 5 at (2,3), from λ=(−1,−1), where both are (xy)⁻¹ and evaluate to 1/6. It also has the n=0 value 1. The scratch signature uses no admitted data, arbitrary character predicate, or assumed character equality.

The successful scratch signature, in the existing `TypeAHaar` namespace, was:

```lean
theorem character_headline_statable {n : ℕ} {V : Type*}
    [AddCommGroup V] [Module ℂ V] [FiniteDimensional ℂ V]
    (r : Representation ℂ (Matrix.GeneralLinearGroup (Fin n) ℂ) V)
    (hr : TauCeti.IsRationalRep r) (hirr : r.IsIrreducible)
    (l : TauCeti.DominantWeight n)
    (htop : Module.finrank ℂ (TauCeti.weightSpace r l.1) = 1)
    (hcone : ∀ β, TauCeti.weightSpace r β ≠ ⊥ → dominanceLE β l.1) :
    groupWeightCharacter r = candidate l := sorry
```

## R07 (P3) — Companion target files do not follow the required Lean form

**Location:** AffinePBWFirstOrderTargets.lean:1–11; ReductiveCenterTargets.lean:1–6; Sl2TensorOrthogonalityTargets.lean:1–3. For example, “import Mathlib.Algebra.MvPolynomial.PDeriv”.

**Claim:** These are acceptance-test files subject to the same import, docstring, declaration and headline rules as Suggested.lean.

**Witness:** AffinePBW and ReductiveCenter have no single `import Mathlib`; all three use forbidden Mathlib submodule imports. AffinePBW calls itself illustrative/non-exhaustive. Numerous companion declarations have no individual mathematical docstring or layer heading.

**Repair:** After removing non-headline material, normalize each retained file to one `import Mathlib`, only actually used TauCeti imports, the prescribed module docstring, layer order and declaration documentation. Prefer consolidating the genuinely statable headlines into Suggested.lean. The passing targeted gate does not certify these additional files' form.

## R08 (P3) — The companion files retain API and Check padding

**Location:** ReductiveCenterTargets.lean:76,91–95,111; AffinePBWFirstOrderTargets.lean:23; Sl2TensorOrthogonalityTargets.lean:198–214.

**Claim:** Center-membership transport, trace-pairing evaluation, generator coefficients and the three displayed tensor cross-products belong in the acceptance test.

**Witness:** `splitEnveloping_mem_center_iff` closes with one `exact MulEquivClass.apply_mem_center_iff (splitEnveloping K Z S e)`. The trace and representation application equations are `rfl`; the affine generator equations already use one `simp`. The tensor examples mirror README checks.

**Repair:** Delete this padding from Suggested.lean and its companion acceptance files; keep the mathematical statements as README API or Checks. Do not replace their admissions by proofs in place. For the center transport test, Ω in U(sl₂) maps to a central element, while e does not since [h,e]=2e. The native equivalence lemma already transports precisely this distinction. The d=n=2 cross-products are 0,0,0; they are worked examples, not the general orthogonal-decomposition headline.

## R09 (P3) — Several sampled targets still lack exact source locators

**Location:** README.md:367–490, :679–748, :750–915 and :2240–2269: the concrete tensor, opposition/sign, Haar and compact-center target blocks.

**Claim:** These blocks have theorem-level, legally checkable source support.

**Witness:** They have supplier references and background bibliography, but no exact theorem/section-and-page locator for the new normalization, sign, Haar identification or period/center claims. Dixmier is cited only broadly at §1.6; Gutt's slide is a real characteristic-zero discussion.

**Repair:** Attach exact locators to the new claims, distinguish derived adapters from statements actually in a source, and specify the derivation's inputs. For arbitrary-ring free-Lie Rees/PBW claims, use a source or native theorem at that generality rather than treating the real symmetrization slide as certification. Preserve xy's averaged coefficient 1/2, the sl₂ signs −1/+1, Haar norm 2/2!=1, and the SU(2) period 2π when selecting the locators. Unavailable texts are recorded below; no contents were guessed.

## R10 (P3) — The restored headings do not yet provide per-definition APIs and Checks

**Location:** README.md:367–490, :1255–1589 and :1735–1810, containing the polynomial comparison, polynomial restriction carriers and compact Albert constructions.

**Claim:** Every definition has its API, at least three discriminating Checks, and individually identifiable dependencies.

**Witness:** The polynomial/symmetric-power dictionary has no three-Check list of its own; the large polynomial-carrier and compact-Albert blocks introduce several maps under shared prose and layer-level dependencies. Layer-end examples do not supply three tests for each definition.

**Repair:** Give each retained definition a prose API and three discriminating Checks, and separate Needs lines where statement/proof inputs differ. For the polynomial dictionary use degree 0's unit, xy's coefficient-one image, and rejection of a factor-two rescaling. For the compact Albert determinant use diag(1,2,3) giving 6, the cyclic off-diagonal example in the table giving 2, and a split null off-diagonal vector showing why positivity needs the compact carrier. These checks distinguish the maps and conventions rather than merely restating their definitions.

## Previous findings: repair audit

This is a full review of the changed and unchanged content. Each quoted passage is from this head; finding identifiers in this table refer to the preceding review at 4e66439. No supplied repair report marks any of these findings settled as not actionable.

| Previous finding | Current passage or concrete change | Status |
|---|---|---|
| R01 rational compact-complexification | “LieGroups Layer 7 supplies a holomorphic extension and does not specify this algebraic strengthening” (README:54–55). ClassicalGroups' dependence on Lie highest weights is now acknowledged at :25. | Partly repaired: honest scope, but missing declared contract remains R01. |
| R02 LR supplier | “SchurWeyl Layer 7 specifies finite Schur polynomials and RSK but not that contract” (:58–59). | Partly repaired; R01. |
| R03 RootSystems/CompactGroups locators | “RootSystems, Layer 4” (:697) replaces the nonexistent 4A; “CompactGroups, Layer 6” (:724) replaces 6a/6b. | Locator repair succeeds; actual compact lattice/sign inputs remain R01. |
| R04 admitted data | “∃ e : ... ≃ₗ[ℂ] ...” (Suggested:56) replaces admitted main-file comparison data. | Main file repaired; companion admitted data remain R04. |
| R05 native duplication | “rank-one classification ... are already in Tau Ceti” (README:13–18). | Many duplicates removed; isotypic dictionary remains R05. |
| R06 algebraic closure on complete reducibility | “native arbitrary-field complete reducibility” (:923); duplicate local theorem removed. | Repaired. Pinned theorem has no algebraic-closure premise. |
| R07 padding and right-alternative tautology | Main file now has 15 substantial admitted theorems; compact alternative laws are prose targets, not the former tautology theorem. | Main tautology repaired; companion padding remains R08. |
| R08 shape | “## Scope and ownership”, “## Exact supplier contracts”, numbered Layers, Examples and Dependencies now occur. | Partly repaired; per-definition obligations remain R10. |
| R09 locators | Etingof Theorems 10.1, 13.5 and 14.1 now have printed pages; Landsberg–Manivel has a title/version. | Partly repaired; R09 and Not verifiable distinguish the remainder. |
| R10 imports | Suggested begins “import Mathlib” followed by individual TauCeti modules. | Main file repaired; companions R07. |
| R11 stale pinned links/process narrative | The main-file supplier declarations now point to native APIs; the Cayley–Dickson paragraph no longer uses a Mathlib pull-request dependency. | The cited defects repaired; no need to revive the old finding. |
| R12 non-sorry warnings | Direct elaboration and targeted build emit only sorry warnings. | Repaired for the required main module; normalized companion signature probe also has only sorry warnings. |

## Verified sound

I read all 2,441 README lines, all five listed Lean files, the family index, the normative repository README and CONTRIBUTING, the supplied previous review and change set. ReflectionInvariantTheory and Completed/OrthogonalL2Bases on main were the shape comparisons. The worktree head matches f236423; the prescribed outside-folder diff is empty. No PR file was edited.

The supplied gate reports all checks passing. Independently, the permitted targeted build of LieHighestWeight.Suggested and AdoIwasawa.Suggested succeeds (9,170 jobs); direct `lake env lean` on Suggested.lean succeeds with only sorry warnings. The dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1460 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. This does not resolve R01–R03: two concerns are unstated prerequisite contracts, and the third is an ownership reversal expressed as downstream prose. I checked every Needs line and the supplier paragraphs against this distinction.

I printed `#check @name` for all 121 named declarations in one scratch copy, with imports normalized solely in that copy. All elaborated. In particular, the general HC/minuscule/form theorems retain algebraic closure; Serre's split-field theorem does not require it; PBW symmetrization retains characteristic zero without finite dimension; central monic finiteness and the product-center theorem retain their arbitrary-field scope. The definitions `symmetricDegreeLE` and `lieCartanRestriction` legitimately have fewer binders than the later theorems. No further lost-binder counterexample was found. Admitted data in the companion file still invalidate its acceptance-test form, regardless of elaboration.

All 55 sorried theorems were probed with single `simp`, `rfl` and `infer_instance` tactics on a scratch copy. None closed in that probe. The separate exact-library-lemma probe closes center-membership transport as recorded in R08. I also inspected already-proved one-line equations and README Check mirrors; failing the three-tactic probe does not make an API lemma a headline.

The 15 main-file headline statements are: normalized polynomial/symmetric-power comparison; central-monic module finiteness; normalized equivariant filtered PBW symmetrization; minuscule tensor multiplicities; invariant-form Tits sign; Lie–Chevalley restriction; filtered Harish–Chandra; central-character/dot-orbit separation; split Serre injectivity; split octonion/G₂ and Albert/F₄ identifications; E₈ dimension; E₆/E₇ dimensions; dual-standard glₙ Pieri; normalized product center. All have computed controls below. The README additionally promises the general tensor/Hermitian decomposition, type-A Haar character identification, Rees/Poisson comparison, cone boundary/endpoint comparisons, compact real exceptional comparisons, affine closed-alcove and compact-center comparisons, and LR/category-O applications. The docstring identifies missing construction carriers for the last groups. It does not justify omitting the statable character equality (R06). A dimension theorem alone does not assert an exceptional-model isomorphism; the docstring correctly distinguishes them.

### Pinned declarations and ownership checked

The following 23 groups of source locations were opened at the pins.

| Pinned file and line | What the declaration actually supplies and limits |
|---|---|
| Mathlib/RepresentationTheory/Irreducible.lean:29 | `Representation.IsIrreducible` is simple order on subrepresentations; the headline probe uses it on the actual representation. |
| Mathlib/Algebra/Group/Center.lean:150 | `MulEquivClass.apply_mem_center_iff`; proves R08's transport statement. |
| Mathlib/Algebra/Algebra/Subalgebra/Basic.lean:905,922,934 | Center consists of elements commuting with every element, with membership and equivalence transport. |
| Mathlib/Algebra/Algebra/Subalgebra/Centralizer.lean:170 | Tensor-factor centralizer comparison has a freeness premise; it is available over the fields used here, not an arbitrary-ring shortcut. |
| Mathlib/Analysis/Fourier/AddCircleMulti.lean:247,268,320 | Negative-frequency Fourier coefficient, Fourier basis, and continuous-function Fourier reconstruction under summability; this is not all smooth derivative-seminorm estimates. |
| TauCeti/Algebra/Lie/Multiplicity.lean:126,207 | Hom-finrank multiplicity and irreducible self-multiplicity 1. |
| TauCeti/Algebra/Lie/Isotypic.lean:47,68,97 | Lie isotypic predicates and actual sum of isomorphic simple submodules. |
| TauCeti/Algebra/Lie/UniversalEnveloping/Module.lean:562,575 | Order equivalence for Lie/enveloping submodules and underlying membership equation. |
| TauCeti/Algebra/Lie/UniversalEnveloping/Multiplicity.lean:227 | Isotypic dimension formula under algebraic closure and finite-dimensional/irreducibility hypotheses. |
| TauCeti/Algebra/Lie/GeneralLinear/Isotypic.lean:208 | Decomposition under a complemented-lattice hypothesis; it does not by itself prove reductive central semisimplicity implies that hypothesis. |
| TauCeti/Algebra/Lie/HighestWeight/Minuscule.lean:197 | Minuscule includes dominant integrality and the actual companion-weight orbit condition. |
| TauCeti/Algebra/Lie/HighestWeight/Tensor.lean:90,126 | Tensor multiplicity as a Hom dimension, and the character product expansion. |
| TauCeti/Algebra/Lie/HighestWeight/CentralCharacter/DotOrbit.lean:180,203,222 | Dot-orbit invariance, dot-invariant subalgebra and HC inclusion; the missing isomorphism is not assumed. The resolver's unresolved module-path lead is a false positive. |
| TauCeti/Algebra/Lie/HighestWeight/CompleteReducibility.lean:259 | Complete reducibility over a characteristic-zero field without algebraic closure. |
| TauCeti/Algebra/Lie/Sl2/WeightString.lean:324,329 | Rank-one irreducible dimension and weights with the stated finite/noetherian hypotheses. |
| TauCeti/LinearAlgebra/RootSystem/Opposition.lean:101,107 | Opposition map and its root action. |
| TauCeti/Algebra/Lie/Weights/WeightLattice.lean:100 | Integer coweight pairing uses an inverse to integer cast; integral/dominant hypotheses are essential to exclude its unspecified nonintegral value. |
| TauCeti/Algebra/Lie/GeneralLinear/TraceForm.lean:126,148 | Trace pairing and nondegeneracy on finite matrices, including the empty matrix space. |
| TauCeti/Algebra/Lie/GeneralLinear/Casimir.lean:245 | Trace-form highest-weight scalar Σ μᵢ(μᵢ+N−1−2i), on the stated cyclic vector. |
| TauCeti/Algebra/Octonion/Derivation.lean:995 | Dimension 14 for the native split derivation model; not a compact positive model. |
| TauCeti/Algebra/AlbertAlgebra/Basic.lean:107,213,230,366 | Cyclic off-diagonal convention, dimension 27, symmetrized product and trace-zero dimension 26. |
| TauCeti/LinearAlgebra/SymmetricPower/Basic.lean:180,207,220,229 | Tensor symmetrization sums all permutations; composing with the quotient gives d!, and injectivity needs invertible d!. Averaging is therefore necessary. |
| TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Finite.lean:112,139,174 | Native finite-PBW input used by the arbitrary-field central-monic adapter; a finite ordered basis and positive monic degrees are explicit in the target. |

Cross-roadmap citations were resolved against main for existing roadmaps and the supplied heads for new roadmaps, not against revisions of existing roadmaps. Main RootSystems Layers 1–6 (:296–319 and :356–390 for chamber/opposition data), ClassicalGroups Layers 2–4 (:237–295), CompactGroups Layer 6 (:369–390), SchurWeyl Layer 7 (:323–351), LieGroups Layers 4/6/7, SemisimpleAlgebras' isotypic inputs, ReductiveGroups Layer 2 (:229) and Layer 5P (:460–464), ComplexKahlerGeometry K5a (:570 onward), CharacteristicClasses C5.1 (:1066–1092), and SpinRepresentations Layer 9 (:1050–1090) were read. CharacteristicClasses consumes the generic Lie restriction theorem and owns compact transport/descent; SpinRepresentations owns the CAR isotypy and consumes gl Pieri. Their directions are consistent. The supplied TangentialBordism B3 contract owns compact Albert idempotent geometry/transitivity. GroebnerGeometry G4 (:252) constructs commutative weight-Rees families, so it does not duplicate this noncommutative PBW Rees comparison.

The required roadmap search/show tools and searches of main, supplied open heads and board packages were used by object (cone/Fourier, Lie–Poisson, PBW, isotypic, compact octonion/Albert). The generic conflicts are R03 and R05. No other-owner collision was found for the retained fully qualified main-file theorem names. The noncommutative PBW comparison, Lie restriction/HC maps, split exceptional identifications and normalized center comparison are appropriate objects here. No unavailable open-PR file was treated as evidence of ownership.

### Seeded source sample

All 18 bibliography works were submitted to the legal source service; six readable works, three uncertified/paywalled works, eight unavailable books and one wrong-work response were distinguished. Source extracts were read outside the repository. No source manifest was edited. The README has no additional explicitly marked unverified locator. A sample with no locator is recorded as such, not assigned an invented theorem number.

| Sample | Text/locator inspected | Outcome |
|---|---|---|
| 0.1 concrete polynomial strings/Hermitian orthogonality | No exact source locator in the target; Fulton–Harris lookup unavailable. Native symmetric symmetrization was opened at the pin. | Normalization and finite examples computed below; source certification unavailable, R09. |
| 3.1 PBW, Rees and linear Poisson | gutt lines 898–947, printed slide 14/28 (PDF pp.44–45). | Positive bracket and averaged real characteristic-zero symmetrization agree. This does not certify the arbitrary-ring Rees extension. |
| 3.2 ordered/symmetrized first order | Same Gutt normalization; explicit polynomial differentiation below. | Ordered coefficient is y in (x,y), zero in (y,x); corrected symmetric coefficient is ±y/2. |
| 5.1 opposition/duality/sign | RootSystems Layer 4 and native opposition opened; no exact source locator for the new form/sign comparison; Fulton–Harris unavailable. | A₁/A₂ and sign witnesses pass; bibliographic certification incomplete. |
| 5.2 integral type-A Haar | Actual Laurent and rational-representation carriers inspected; compact/classical suppliers read; no theorem/page locator for the Haar identification. | Haar factor, negative determinant shift and finite-score argument computed; R01/R06/R09 remain. |
| 6.2 Fourier boundary/endpoint | dcpv lines 300–342, 475–481, 517–570, 838–902: equation (4), Definitions 2.5–2.6/2.19, Theorems 2.15/2.23/2.25/3.3, Proposition 3.2 (printed pp.7–13,19–20). | Checked spanning, unimodularity where required, alcove direction, shifted open factors, and all toric vertices in the nonunimodular formula. The analytic boundary extension has additional construction inputs, not a verbatim theorem of this paper. |
| 7.1 polynomial carriers | etingof lines 2149–2238, Theorem 10.1 and Remark 10.2, printed pp.51–53; stacks-02ml lines 13996–14006, Lemma 10.122.11, printed p.298. | Etingof's complex semisimple trace/polarization route and reductive remark match; Stacks finite-type/minimal-prime/localized-finiteness hypotheses retained. Arbitrary-field variants are adapters, not established by the complex source alone. |
| 9.2 reductive centers/invariant maps | etingof lines 2981–3000 and 3028–3082, Theorems 13.5/14.1, printed pp.69–71. | Equivariant symmetrization is linear, HC is filtered algebraic, graded restriction is another map; shifts and leading symbols agree. |
| 9.3 normalized product map | Dixmier §1.6 unavailable; native product/abelian enveloping maps and center definitions inspected. | Algebraic controls below pass; exact source theorem/page remains uncertified. |
| 10.2 compact-center application | LieGroups main Layers 4,6–7 and root-lattice calculations; no source theorem/page locator at the claim. | SU(2)/SO(3) values agree; claimed period supplier absent, R02. |

Additional readable checks: baez lines 354–398 establish the Cayley–Dickson convention comparison and alternative/norm inputs; lines 1471–1481 give the determinant/trace formulas with the source issue below. The source's printed pp.10 and 32 were also viewed as page images. The roadmap's cyclic off-diagonal convention avoids the determinant error. In Baez's displayed layout, diagonal 0 and x=z=i,y=1 give actual determinant 2 but the printed cubic term −2. Landsberg–Manivel's named v1 is complex magic-square background, as the README now explicitly says; it is not evidence for arbitrary-field bracket identifications.

### Adversarial computations

“Pass” means the computed controls agree, not a proof of the general theorem. Admitted definitions are tested against their intended formulas and still require R04. “Retain” requests no mathematical change.

#### Main-file headline and normalization controls

| Statement | Instances | Computed values | Result and change |
|---|---|---|---|
| `exists_polynomialSymmetric` | d=0,2 | 1↔1; xy↔sym(x,y) with coefficient 1, averaged tensor coefficients 1/2,1/2 | Pass; retain normalization |
| `module_finite_of_central_monic_relations` | L=Kx, R=K[x^p], p=2,3; L=0 | x^p−r=0; bounded spanning ranks 2,3; empty basis rank 1 | Pass; positive degrees retained |
| `exists_pbwSymmetrization` | affine [x,y]=y; sl₂; empty word | sym(xy)=YX+Y/2; sym(h²+4ef)=h²+2h+4fe; sym(1)=1 | Pass; not multiplicative |
| `minuscule_pieri` | A₁ λ=μ=ω, then λ=0 | multiplicities at 2ω,0,4ω: 1,1,0; with λ=0 only ω has 1 | Pass; dominance excludes −ω |
| `invariantForm_isSymm_iff_tits_sign` | A₁ n=1,2; rank 0 | signs −1,+1; alternating determinant/symmetric form respectively; rank 0 sign +1 | Pass; nonzero form essential |
| `symmetricDegreeLE` | A₁ H=Kh, n=0,1 | F₀=K, F₁=K+Kh; h² is outside F₁ | Pass; retain |
| `linearInvariants` | A₁ reflection h↦−h | h² fixed, h not fixed: h versus −h | Pass; retain |
| `lieInvariantSymmetricAlgebra` | sl₂, q=h²+4ef and e | adjoint derivative of q is 0; [h,e]=2e≠0 | Pass; retain |
| `lieCartanRestriction` | sl₂, q and e | q↦h²; e↦0; 1↦1 | Pass; actual Cartan projection |
| `exists_lieChevalleyRestrictionIso` | sl₂ and zero Lie algebra | K[q]→K[h²], q↦h², degrees 2=2; K→K identity | Pass; retain |
| `exists_harishChandraIso` | sl₂ Ω=h²+2h+4fe | raw image t²+2t; Ω² maps (t²+2t)², degrees 4=4 | Pass; filtered inverse distinguished |
| `centralCharacter_eq_iff_dotOrbit` | A₁ weights 1,−3 and 0,1 | Ω-values 3=3, reflection 1↦−3; 0≠3 for second pair | Pass in both directions |
| `serreLift_injective_of_base` | A₁ over ℚ; nonsymmetric B₃ edge | e,h,f independent, kernel dimension 0; transposed off-diagonals −1,−2 give exponents 2,3 in corresponding directions | Pass; split scope |
| `derivationOctonion_equiv_g2` | split ℚ and ℝ | derivations dimension 8+3+3=14; G₂ 12 roots+2=14 | Dimension control only; retain split identification target |
| `derivationAlbert_equiv_f4` | split ℚ and ℝ | Albert dimension 27; expected derivations 52=48 roots+4 | Dimension control only; not compact identification |
| `finrank_e8` | characteristic-zero split model | 80+84+84=248; root count 240+8=248 | Pass dimension control |
| `finrank_e6_e7` | split E₆,E₇ | 72+6=78 and 126+7=133 | Pass dimension control |
| `gl_dual_standard_pieri` | gl₂ μ=(3/2,1/2); n=0 | summand dimensions 1+3=4=2·2; empty standard gives 0=empty sum | Pass; nonintegral central shift allowed |
| `productEnveloping` | Z=Kz,S=sl₂; Z=S=0 | (z,e)↦z⊗1+1⊗e; 1↦1⊗1 in K | Pass; normalized map |
| `exists_productCenterEquiv` | same product | z⊗Ω↦zΩ≠0; 1⊗e excluded since commutator with h is 2e | Pass; actual inclusion fixed |

#### Companion-file controls for the seeded sample and findings

| Statement | Instances | Computed values | Result and change |
|---|---|---|---|
| `polynomialSymmetric` | d=2 | intended xy↦sym(x,y); inverse coefficient 1 | R04 admitted data |
| `action` | diagonal(2,3), d=2 | x²↦4x², xy↦6xy, y²↦9y² | Intended action; R04 dependency |
| `E` | d=2,xy | intended x², degree 2 retained | R04 admitted linear map |
| `F` | d=2,xy | intended y², degree 2 retained | R04 admitted linear map |
| `hermitian` | d=2,xy and x² | norms 1/2,1; mixed pairing 0 | Pass; binomial denominator |
| `tensorHermitian` | m=n=2,xy⊗xy | norm 1/4=(1/2)(1/2) | Pass; positive factor normalization |
| `averagedSymmetrization` | d=0,2, sym(x,y) | 1↦1; tensor coefficients 1/2,1/2, norm 1/2 | Pass; unaveraged gives norm 2 |
| `adjoint_E_F` | d=2,p=xy,q=x² | left norm(x²)=1; right <xy,2xy>=1 | Pass; unweighted form would give 1≠2 |
| `SU2_invariance` | degree 2, unitary rotation taking x to (x+y)/√2 | transformed coefficients (1/2,1,1/2), norm 1/4+1/2+1/4=1 | Pass; R04 action still admitted |
| `strings_orthogonal` | m=n=1, symmetric/alternating weight-0 vectors | <y⊗x+x⊗y,x⊗y−y⊗x>=1−1=0 | Pass; equal weight does not imply equal string |
| `highestNorm_factorials` | 55 triples m,n≤4, r≤min; (2,2,2) | all rational sums equal factorial quotients; example 3=3 | Pass exact arithmetic |
| `lowered_norm` | m=n=1,r=0,k=1,2 | norms 2,4; factorial expression 1!2!/1!=2, 2!2!/0!=4 | Pass |
| `strings_independent` | same four vectors | coefficient determinant magnitude 4≠0 | Pass; char 0 required |
| `strings_span` | same; rank 0 | rank 4=dim tensor 4; rank 1=dim 1 | Pass |
| `source_three_cross_products` | n=2; weight-zero Gram diag(1,1/4,1) | vectors (2,8,2),(1,0,−1),(1,−2,1); pairings 0,0,0 | Pass; R08 delete Check theorem |
| `candidate` | λ=(1,0),(−1,−1); n=0 | x+y, (xy)⁻¹, 1 | Pass; substantive identity absent R06 |
| `groupWeightCharacter` | standard and Sym² GL₂ | x+y and x²+xy+y² | Pass; rationality not built into definition |
| `finite_dominant_score_sublevel` | n=2,x=(2,1),S=2,B=4 | weights (1,1),(2,0), scores 3,4; larger (3,−1) score 5 excluded | Pass; no rational independence needed |
| `candidate_mul_denominator` | n=2,λ=(1,0) | (x+y)(1−y/x)=x−y²/x; at x=y=1 both sides 0 | Pass; candidate itself equals 2 at identity |
| `candidate_top_coefficient` | λ=(1,0),(−1,−1) | coefficients at λ are 1,1 | Pass |
| `candidate_support_dominated` | λ=(2,0) | supports (2,0),(1,1),(0,2), prefix bounds 2,1,0≤2 | Pass |
| `numerator_coefficient_norm` | n=2,λ=(1,0); n=0 | 1²+(−1)²=2=2!; 1=0! | Pass |
| `tensorCenterInclusion_injective` | polynomial central factors | coefficient of z⊗Ω is 1 before and after inclusion | Pass control; field ensures faithful tensoring |
| `tensorCenterInclusion_range` | S=sl₂,Z=Kz | central polynomials K[z,Ω]; 1⊗e fails with commutator 2e | Pass control; no arbitrary-ring claim |
| `splitEnveloping_mem_center_iff` | Ω and e | true↔true for Ω; false↔false for e | Pass; exact native lemma, R08 |
| `matrixTracePairing_apply` | same pairs | tr(E₁₁)=1; tr(0)=0 | Pass; rfl padding |
| `matrixTracePairing_nondegenerate` | matrix units; n=0 | Eᵢⱼ paired with Eⱼᵢ gives 1; zero-dimensional radical {0} | Pass; exact native theorem padding |
| `centralTensorRepresentation_apply` | m=n=1, same element | (+1)v=v; m=0,n=1 gives −v | Pass; rfl padding |
| `orderedFirstOrder` | p=x,q=y; reversed; p=x²,q=y | y,0,2xy | Pass; ordered coefficient not antisymmetric |
| `generator_coefficients` | x,y | y=y and 0=0 over ℤ and 𝔽₂ | Pass; simp padding R08 |
| `splittingCorrection` | x,y,xy,x²y | 0,0,y/2,xy | Pass; defined over ℚ |
| `symmetric_firstOrder` | x,y; y,x; x²,y | y−y/2=y/2; 0−y/2=−y/2; 2xy−xy=xy | Pass; first-order coefficient is half bracket |

#### README controls for the sample, headlines and findings

These rows retain the sampled comparisons, headline controls and finding witnesses.

| Statement | Instances | Computed values on the two sides / negative control | Result and change |
|---|---|---|---|
| Tensor decomposition and Hermitian norm convention | P₂⊗P₂; P₀⊗P₂ | string lengths 5+3+1=9=3·3; 3=1·3 | Pass; general decomposition meaningful, R04 form repair |
| Sesquilinearity and orthonormal basis | d=2, xy and ixy | <ixy,xy>=−i/2; norm(√2 xy)²=1 | Pass; conjugate-linear first slot |
| Three concrete string norms | n=2,3,4 | norms of F²w₁,Fw₂,w₃: (24,2,3),(40,5/2,2),(60,3,5/3) | Pass; cross-products 0 in each case |
| General Rees relation and fibers | affine algebra, ħ=0,1 | XY−YX=ħY becomes 0 at 0 and Y at 1 | Pass; source generality R09 |
| Nonzero Rees fiber requires a unit | rank 1, parameter 2 over ℚ versus ℤ | X↦2x invertible over ℚ; 1/2 not in ℤ | Pass; retain unit hypothesis |
| Rees zero fiber is a quotient, not ambient evaluation | X=ħx in rank 1 | class of X has graded degree 1 and is nonzero; ambient evaluation at ħ=0 sends it to 0 | Pass; excludes wrong fiber map |
| PBW commutator division and dual numbers | [x,y]=y over ℤ, then ε²=0 | [X,Y]/ħ=Y; ordered x⋆y=xy+εy, y⋆x=xy | Pass; no inverse 2 needed for ordered comparison |
| Casimir homogenization/leading symbol | sl₂ Ω | H²+2ħH+4FE at ħ=1 gives Ω; at 0 gives h²+4ef | Pass; lower term degree changes correctly |
| Smooth positive linear Poisson | affine Lie algebra, ξ=(2,3) | {ℓx,ℓy}(ξ)=ξ([x,y])=3; reversed bracket −3 | Pass; import geometric owner R03 |
| Polynomial/smooth comparison injectivity | affine coordinate polynomials 1,x,y | values at (0,0),(1,0),(0,1) give matrix determinant 1 | Pass control; zero polynomial maps to 0 |
| Opposite and ordinary dual | A₁,A₂,D₄ | A₁ −w₀=1; A₂ swaps ω₁,ω₂; D₄ opposition identity while diagram group order 6 | Pass; opposition not whole diagram group |
| Self-duality versus symmetry | A₁ standard and A₂ standard | A₁ self-dual with alternating nonzero form; A₂ standard dual has other highest weight and no self-pairing | Pass; compact sign contract R01 |
| Actual compact character lattice | SU(2),SO(3) | weight 1 is allowed for SU(2), only even weights descend through {±I} | Pass; do not substitute full weight lattice |
| Haar versus torus norm | GL₂/U(2) standard candidate x+y | torus norm²=2; Weyl weighted Haar norm²=2/2!=1 | Pass; R09 locator |
| Fixed-central-degree properness with tied scores | x=(3,2,1) | (1,1,−2),(2,−1,−1) both degree 0, score 3 | Pass; finiteness does not need injective score |
| Virtual character inversion | dominant ideal below (2,0) | x²+y²=ch(Sym²)−ch(det); coefficients 1,−1 | Pass; negative virtual coefficient not a subrepresentation |
| Character equality at a pole | λ=(1,0), x=y=1 | candidate 2; numerator and denominator both 0 | Pass; use polynomial identity, never evaluate 0/0 |
| Norm-one virtual identification | integer expansion coefficients | sum aᵢ²=1 forces one ±1; leading coefficient +1 excludes −1 | Pass; missing headline R06 |
| Density of dominant integral weights | rank 1 and rank 0 | polynomial t vanishes at 0 but not 1; rank 0 constants vanish on its sole point iff zero | Pass; all dominant weights required |
| Isotypic multiplicity/decomposition | V₂⊕V₀⊕V₀; zero module | component ranks 3 and 2, total 5; empty nonzero-component sum rank 0 | Pass; existing dictionary R05 |
| Rational cone expansion and polarization | A=(1), b=−1,0,1 | positive coefficients 0,1,1; opposite coefficients −1,0,0 | Pass; shifted strict endpoint for reversed factor |
| Repeated-vector counting | A=(1,1), b=2 | solutions (0,2),(1,1),(2,0): count 3=coefficient of (1−z)⁻² | Pass; multiplicities retained |
| Nonsaturated lattice image | A=(2), b=0,1,2 | counts 1,0,1; toric terms 1/2+(-1)^b/2 give 1,0,1 | Pass; all vertices needed, R03 |
| Abel regularization | A=(1), ε=log 2, θ=0 | positive geometric sum 2=1/(1−1/2); opposite sum −1=−(1/2)/(1−1/2) | Pass; different polarized boundaries |
| Fourier coefficient sign | δ_b coefficient sequence, b=1 | pairing with z⁻¹ is 1; with z is 0 | Pass; agrees with native negative-frequency convention |
| Wall crossing | positive minus negative A=(1) | sequence difference 1 at every integer; Fourier distribution δ₀ | Pass; not zero away from a chosen expansion |
| Cone versus box measure | A=(1) | cone density 1 on positive ray; box mass ∫₀¹1=1; Fourier removable value at 0 equals 1 | Pass; measures, not boundary point functions |
| Distributional derivative sign | A=(1), test φ(x)=x on support | <∂B,φ>=−∫₀¹1=−1; <δ₀−δ₁,φ>=−1 | Pass; minus sign fixed |
| Continuous versus discrete vector partition | A=(e₁,e₂,e₁+e₂), b=(2,3) | count min(2,3)+1=3; cone density min(2,3)=2 | Pass; no lattice count/density conflation |
| Box/cone finite-difference identity | A=(1) | 1_[0,∞)(x)−1_[1,∞)(x)=1_[0,1)(x) almost everywhere | Pass; endpoint interpretation separately required |
| Polynomial/Dahmen–Micchelli equations | A=(1,1), p=x²,f(b)=b² | ∂²p=2 and Δ²f=2, so neither belongs to the corresponding degree≤1 kernel | Pass; excludes too-large space |
| Nonunimodular DM solutions | A=(2), f(b)=(-1)^b | f(b)−f(b−2)=0; f(1)=−1≠f(0)=1 | Pass; polynomial-only space would omit solution |
| Directional Todd endpoint | A=(1), point 0 | right-direction count 1, opposite-direction value 0 | Pass; chosen alcove direction essential |
| Unimodular interpolation versus general formula | A=(1), window {-1 or 0 by alcove}; A=(2) | one lattice degree of freedom for first; two independent residue values for second | Pass; no unjustified unimodular reduction |
| Weyl rational fixed-point sum | A₁ n=1 | t/(1−t⁻²)+t⁻¹/(1−t²)=t+t⁻¹ | Pass; tails cancel in one common chamber |
| ρ need not be an actual character | SO(3) with A₁ root α | ρ=α/2 outside root lattice; wρ−ρ=−α inside | Pass; normalized exponent fixes lattice |
| HC versus ordinary invariants | sl₂ Ω | raw t²+2t; translation by −ρ gives t²−1; value at λ=2 equals 8=3²−1 | Pass; shift sign fixed |
| Central-character separation/dominant uniqueness | λ=2 dot orbit | orbit {2,−4}; only 2 dominant, both Ω-values 8 | Pass; finite Weyl orbit matters |
| Graded center and symmetrization | sl₂ q=h²+4ef | symbol Ω=q; symbol Ω²=q²; restriction q=h²; raw HC(sym q)−res q=2h | Pass; discrepancy lower degree, sym not algebra map |
| Trace/polarization density route | sl₂ standard, h=diag(t,−t) | tr h=0, tr h²=2t²; hence h² obtained by division by 2 | Pass control; characteristic-zero denominator |
| Trace polynomial gl₂ restriction | diag(a,b), then sl₂ diag(a,−a) | tr=a+b, det=ab; on sl₂ tr=0, det=−a² | Pass; center removed on derived factor |
| Generic dominant map/finiteness step | t↦t² over ℂ | algebraic relation t²−s=0, generic fiber size 2; at 0 one underlying point | Pass control; finite-type premise retained |
| Split Serre orientation | A₁ and B₃ nonsymmetric edge | [h,e]=2e; distinct off-diagonal pairings −1,−2 require exponents 2,3 | Pass; no accidental transpose symmetry |
| Split octonion norm and compact contrast | nonzero Zorn diag(1,0) | split norm 0; positive real model has N(x)>0 for x≠0 | Pass; never transfer positivity to split model |
| Albert product, trace, determinant | A=diag(1,2,3) | tr 6,tr(A²)14,tr(A³)36; det=(216−252+72)/6=6 | Pass |
| Albert cyclic off-diagonal sign | native cyclic (x₀,x₁,x₂)=(i,1,−i), diagonal 0 | trace((i·1)(−i))=2, det=2; tr(A³)/3=6/3=2 | Pass roadmap; source layout error below |
| Trace form positivity/formal reality | one off-diagonal compact u; split null u | compact tr(A²)=2N(u)>0; split null gives 0 for nonzero A | Pass; compact carrier essential |
| Reductive reconstruction and semisimplicity | gl₂; abelian algebra acting by nonzero J²=0 | dimensions 1+3=4; ker J has dimension 1 and no invariant complement | Pass; central semisimplicity cannot be dropped |
| glₙ weights and derived restriction | μ=(3/2,1/2); n=0,1 | central scalar 2, sl₂ weight 1, dimension 2; n=0 trivial dimension 1, gl₁ arbitrary scalar dimension 1 | Pass; no integral-coordinate restriction on Lie weights |
| LR comparison | standard⊗standard for GL₂ | dimensions 4=3+1, coefficients c_(1),(1)^(2)=c_(1),(1)^(1,1)=1 | Pass control; precise tableau supplier missing R01 |
| Connected algebraic group/Lie invariants | Gₘ weight 1 in char 0; weight p in char p; C₂ sign | differential 1/no fixed vectors; differential 0 but nontrivial a^p; differential 0 but sign −1 | Pass; char 0 and connectedness necessary |
| Scalar/derived projection | A=diag(2,0) in gl₂; char 2 | tr 2, scalar coefficient 1, derived diag(1,−1); in char 2 scalar I has trace 0 and belongs to sl₂ | Pass; invertibility of n required |
| Central generator versus projection coordinate | same A | evaluation of symbol ι(I) is tr A=2; scalar projection coefficient is 1 | Pass; factor n retained |
| Compact center versus affine Ω | SU(2),SO(3) | Ω orders 1,2; center orders 2,1 respectively | Pass; distinct quotients |
| Compact coroot periods | SU(2) diag(exp(it),exp(−it)) | period 2π, root exp(2it), derivative 2i; dimensionless coroot↦2π compact coroot | Mathematical control passes; supplier R02 |
| Central torus boundary | reductive Gₘ versus semisimple rank 0 | center Gₘ infinite; trivial semisimple group center order 1 | Pass; finite-center claim correctly confined to semisimple factor |

The full declaration inventory was checked during review. This shortened report retains the headline controls, every seeded target and finding witness; unread sources remain uncertified.

## Not verifiable

- **Uncertified/paywalled source texts:** Humphreys (1972), Bourbaki Chapters 7–8, and Goodman–Wallach (2009). The service returned uncertified status. Their theorem contents were not inferred from the bibliographic descriptions, and no renewed missing-text request was added for these settled statuses.
- **No readable legal text returned:** serre1987 (Serre, *Complex Semisimple Lie Algebras*); fulton-harris (*Representation Theory*, including the needed form/sign and tensor discussion); humphreys2008 (*BGG Category O*); jantzen-quantum (*Lectures on Quantum Groups*); jantzen-groups (*Representations of Algebraic Groups*); jacobson (*Exceptional Lie Algebras*); schafer (*An Introduction to Nonassociative Algebras*); dixmier (*Enveloping Algebras*, §1.6). Searches used the source service's author/title and DOI resolution; the AMS landing pages did not yield readable open text. These are recorded together in the requested missing-reference file, without changing the roadmap manifest.
- **Wrong work returned:** molev, the 2007 *Yangians and Classical Lie Algebras* lookup returned Molev–Nazarov–Olshanski's 1994 paper instead (returned text lines 5–16). It was not used to certify the monograph's Chapters 1–2. The original key is retained in the missing-text record.
- **No exact locator to inspect:** the four target blocks in R09, and broad book citations for several remaining prose constructions. The calculations above check mathematical conventions but do not replace the required source locators.
- **Generality beyond the readable source:** Etingof's complex semisimple presentation does not alone certify arbitrary-field split identifications; Gutt's real characteristic-zero slide does not alone certify arbitrary-ring Rees statements. These are not asserted false: they need their stated general proof inputs and sources.

## Source issues

- **Error** in baez at §3.4, printed p. 32: the displayed Hermitian matrix is assigned cubic term 2 Re(xyz); it should be 2 Re((xy)z*) for that layout; affects a stated result.
- **Misprint** in baez at §2.2, printed p. 10: the doubling sequence orders quaternions before complex numbers; it should be ℝ, ℂ, ℍ, 𝕆; affects nothing.
