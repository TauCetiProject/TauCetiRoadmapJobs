# Review of ClassicalGroups (pull request #1192 at 402b5cb)
Folder: `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/`

**Verdict:** needs changes

Independent AI review. This is a full review of all seven listed files at the stated head. The PR was not edited. Below, `README.md` and Lean basenames refer to the folder above; library paths start with `Mathlib/` or `TauCeti/`. Findings have reproducible witnesses; numerical checks establish the tested instances, not general proofs.

## R01 (P1) — Restore ownership of the missing character and dimension results

**Location:** `README.md:174–184`: “`TauCeti.char_weylFDRepOfShape_diagramOf_diagonal` and `TauCeti.finrank_weylModuleOfShape`”; “`TauCeti.finrank_rationalWeylFDRep`”.

**Claim:** The pinned library supplies the full Schur-character and rational Weyl-dimension formulas, so Layers 4–5 only consume them.

**Witness:** At Tau Ceti `a91d3aa`, `WeylModule/Character.lean:101,140` proves only one-row/one-column dimensions. `WeylModule/Dimension.lean` does not exist. Exact declaration searches over the entire pin find none of the three cited theorems.

**Repair:** Restore the full character/dimension comparisons as owned targets, with the actual proof inputs, or cite an eligible existing owner and its precise contract. Retain only genuine pinned identities as inputs. In particular `char_rationalWeylFDRep` at `WeylModule/Rational.lean:214` expresses a determinant twist of an **unevaluated Weyl character**; it does not identify that character with a Schur polynomial. Shape (2,1) has character 30 at diag(2,3); weight (2,1,0) has dimension 8. Neither is a one-row/one-column case. The repaired full claims must cover these two instances. The native GT theorem counts patterns; it does not identify their count with module dimension without the representation comparison.

## R02 (P2) — Put the statable character and dimension headlines back in the acceptance test

**Location:** `Suggested.lean:17–19`: “Schur-character identities, Weyl dimensions and signed-pattern count are consumed from the native declarations”.

**Claim:** All statable, unsupplied headlines occur in the acceptance test.

**Witness:** Scratch signatures for the full Schur character and rational Weyl dimension elaborate at these pins with only their two `sorry` warnings. Neither occurs in `Suggested.lean`; R01's purported suppliers are absent.

**Repair:** Add the full character and dimension headlines on the native carriers after correcting R01. These tested signatures need no stand-in:

```lean
theorem schur_character (n : ℕ) (μ : YoungDiagram) (t : Fin n → ℂˣ) :
    (TauCeti.schurFunctor n μ).character (TauCeti.diagGL t) =
      MvPolynomial.eval (fun i => (t i : ℂ))
        (TauCeti.diagramSchurPoly n ℂ μ) := sorry

theorem rational_dimension (n : ℕ) (l : TauCeti.DominantWeight n) :
    Module.finrank ℂ (TauCeti.rationalWeylFDRep ℂ n l) =
      TauCeti.weylDimension l := sorry
```

The probe imports `Mathlib`, `TauCeti.RepresentationTheory.ClassicalGroups.WeylModule.Rational`, `TauCeti.RepresentationTheory.ClassicalGroups.WeylDimension.Basic`, and `TauCeti.RingTheory.MvPolynomial.Symmetric.Schur.Basic`. For the first signature a taller shape gives zero on both sides, so no artificial height restriction is needed. Empty shape/rank zero gives 1; (2,1) at (2,3) gives 30; (2,1,0) and (1,0,−1) both give dimension 8.

## R03 (P2) — Register the LR gap before consuming it

**Location:** `README.md:210–221`, `869–880`: “What SchurWeyl must provide (gap:skew-tableau-lr-product)”; “the supplier gap's finite tableau/product bijection”.

**Claim:** The missing skew-tableau/product input is a declared supplier contract.

**Witness:** There is no readable ClassicalGroups `design/plan.json`, and the package search finds no matching registered slug. Main SchurWeyl Layer 7, `README.md:323–350`, has Frobenius and RSK, not this LR contract. The open revision is ineligible as a dependency.

**Repair:** Register the same slug, named supplier, precise section and a minimal single-sentence need through the package gap mechanism, keeping the matching README contract, or point to an eligible existing contract. The prose alone does not make the gap declared under this review's rules. Keep horizontal Pieri on the pinned `TauCeti.hsymm_mul_diagramSchurPoly`. The intended LR contract itself has the correct reading direction: s_(1)² gives 25=19+6 at (2,3), and 4=4+0 in one variable at 2. This is a registration/availability defect, not an objection to consuming a properly declared gap or demanding that its implementation already exist.

## R04 (P2) — Separate the additional programmes from the existing base roadmap

**Location:** `README.md:14–15`, Layers 0A/2A/6A and the mixed-contraction/ordinary-Kan worked sections: “Its diagonal-overgroup and all-linear-map comparisons are specified in Layers 6A and 2A.”

**Claim:** These additional programmes belong in the existing ClassicalGroups plan.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:169–423` develops Layers 0–6. It contains no all-linear-map/ordinary-Kan programme, diagonal-overgroup classification or mixed-contraction/Pieri programme. These additions remain here after previous R07.

**Repair:** Preserve the base's corrections and native-carrier comparisons, but move these genuinely additional programmes and their acceptance signatures into a named continuation, stating where the base stops. Coordinate with `ClassicalGroupsPartII`'s existing GSp scope; do not reuse that name for a competing owner. Preserve the generality in the move: e.g. the empty Schur functor sends the zero arrow to id_ℂ, whereas the row-(1) functor sends it to 0; both cases remain required. Moving scope is a repair, so this is not a rejection of the mathematical programme. No repair report marking previous R07 “not actionable in this package” was supplied or found in the named package reports.

## R05 (P2) — Remove the second generic matrix-monoid extension target

**Location:** `PolynomialMonoidExtensionTargets.lean:24–36`: “`∃ Φ : Representation ℂ (Matrix (Fin N) (Fin N) ℂ) W`”.

**Claim:** The companion tests the remaining comparison with ReductiveGroups §10D.

**Witness:** Main `TauCetiRoadmap/ReductiveGroups/README.md:1933–1947` already owns existence, uniqueness and polynomial coefficients of the End(V) extension. The companion states that extension again and mentions neither the supplied coaction nor a comparison map.

**Repair:** Delete this duplicate acceptance theorem. Keep §0A's genuine coordinate/comodule comparison, with the supplied and native presentations both identified; state that comparison only when its carriers exist. Do not test a generic extension in its place. At N=1 and weight 2 both presentations send 2↦4 and 0↦0; the degree-zero action sends 0↦1. Those values distinguish unital polynomial extension from an additive map, but do not distinguish this theorem from the existing owner's theorem. The README ownership repair of previous R04 is therefore only partial.

## R06 (P2) — Specify the consecutive orthogonal branching and basis theorem

**Location:** `README.md:977–985`, `1086–1098`: “the SOₙ rule interlaces with its own betweenness”; “Molev v2 Theorems 2.3/2.7 for normalized vectors”.

**Claim:** The roadmap specifies SOₙ↓SOₙ₋₁ branching and normalized SO GT bases, with their prerequisites and source normalization.

**Witness:** Molev Theorems 2.3/2.7 are for glₙ. Section 3.2 follows same-series rank drops, including o_N↓o_(N−2). Consecutive orthogonal restrictions are (4.4)/(4.7), printed pp.48/50, and the vectors are Theorems 4.1–4.4, pp.49–52.

**Repair:** State both actual inequalities and embeddings: B_r→D_r has λ₁≥μ₁≥…≥λ_r≥|μ_r|; D_r→B_(r−1) has λ₁≥μ₁≥…≥λ_(r−1)≥μ_(r−1)≥|λ_r|. Fix the integral SO lattice, the separate Spin half-integral lattice, low-rank branches, and actual source-normalized lowering vectors/actions under the chosen coordinate comparison. Supply per-target Needs including §3A and the genuine orthogonal operator construction; cite Molev (4.4), (4.7) and Theorems 4.1–4.4, not the GL theorem. In SO₃ weight 1, restriction to SO₂ has weights −1,0,1, each once, with trace 1/2+1+2=7/2 at t=2. SO₄ weight (1,0) restricts to SO₃ as dimensions 3+1=4. By contrast SO₅↓SO₃ fixes a two-dimensional plane, so the standard module has two trivial copies. This explicitly separates the cited rank-drop chain from the promised consecutive one. Source evidence: `molev line 2074`, `molev line 2080`, `molev line 2125`, `molev line 2186`, `molev line 2220`.

## R07 (P3) — Apply the Lean form rules to the five companion files

**Location:** the first 1–4 lines of each companion; `U3PieriTargets.lean:11`: “`set_option autoImplicit false`”.

**Claim:** The listed Lean files obey the same acceptance-file form.

**Witness:** All five companions omit `import Mathlib` and import Mathlib submodules instead. U3 retains its option override. Kan definitions/instances and the mixed-polynomial definitions also lack declaration docstrings; companion module docstrings do not give the required headline inventory.

**Repair:** For every retained companion replace the submodule imports with one `import Mathlib`, remove the option override, and give the required module/declaration documentation and README name correspondence. Delete files/declarations made unnecessary by R04/R05/R08. Elaborate retained signatures under defaults. Original companion signature copies all elaborate, but that does not waive the form rule. As a concrete documentation check, distinguish Δ(x₁²y₁³)=6x₁y₁² from a normalized contraction and identify its source/target. The green gate does not scan these violations effectively; no gate code was changed.

## R08 (P3) — Delete the surviving Kan padding

**Location:** `EndomorphismKanExtension.lean:48–66`: “`theorem restrictionIso_hom`”; “`Iso.refl _`”.

**Claim:** The companion declarations are additional acceptance goals for the roadmap.

**Witness:** `restrictionIso_hom` is proved by `rfl`; `unit_isIso` is one `exact` application of the native full-faithful Kan theorem; `colimitModel` is `Iso.refl`. The full/faithful instances just unpack identity maps on hom-sets.

**Repair:** Delete these padded acceptance declarations and the definitions kept only to support them from the companion, just as the analogous padding was deleted from `Suggested.lean`. Keep native citations and any substantive coend comparison target in the README; do not “repair” padding by proving it in place. At X=ℂ, both sides of the unit-coordinate identity send w to [id,w], and evaluation returns w. That definitional equality is precisely why it adds no acceptance test. The main file's eight remaining admissions did not close under the tested single tactics.

## R09 (P3) — Attach precise source locators and record the bibliography

**Location:** `README.md:275–282`, `348–366`, `399–429`, `536–594`, `1689–1715` and the unsourced mixed/overgroup sections: “Lecture 6, 15”; “Lecture 24-25”.

**Claim:** The sources identify each claimed theorem and its hypotheses.

**Witness:** Most seeded targets have no claim-level theorem/page locator; broad textbook lecture lists do not identify them. There is no `sources.toml`. Readable texts locate LR at Macdonald I(9.2), p.143, and Schur characters at Appendix A(8.4), p.163.

**Repair:** Add exact legal-source locators at claims and a single manifest key per work; identify original combinations of ingredients as such. Record inaccessible references as uncertified, without claiming to have read them. The source ledger below distinguishes verified passages from missing locators/text. In particular attach the group-level transport hypotheses to Lie-algebra sources and retain the rational determinant twists. For λ=(1,−1), the torus character is 19/6 at (2,3), not the polynomial value 19; a locator for only polynomial weights does not supply the rational statement by itself. Correct the orthogonal source mismatch through R06. No source passage should be copied into the roadmap.

## R10 (P3) — Finish per-definition Checks and per-target dependencies

**Location:** `README.md:444–513`, `770–838`, `1248–1404`, `1490–1640`.

**Claim:** Every definition has its API and three discriminating Checks, and every target names its own prerequisites.

**Witness:** Whole layers now have three Checks, but e.g. the Hodge operator has no three-check block, the ordinary Kan/coend construction has none, and the several mixed operators share narrative examples. §6.7 has an incorrect shared GL Needs line.

**Repair:** Retain the improved layer headings, then add per-definition API/Checks and per-target Needs where missing; move construction programmes out of Worked examples through R04. For Hodge star test *u=−iu, *v=iv, and *²=−1 in dimension 2, plus a higher-rank highest-wedge sign; for the coend test [f∘a,w]=[f,F(a)w], the X=0 constant case, and failure of additivity in f for a degree-two action. These discriminate wrong normalizations instead of repeating a definition. Fix `λ n` for `Fin n` weights and explicitly split n=0 where a last coordinate is invoked: weight (−1) has value 1/2 at 2; rank zero has no last coordinate and dimension 1. Keep supplied native facts in supplier contracts rather than repeated construction requests.

## Verified sound

### Previous findings, checked individually

The comparison is against the actual previous report, not its conclusions taken on trust. Quotations below are from this head unless marked deleted.

| Previous finding | Passage at this head and disposition |
| --- | --- |
| R01, type-C shift | README:1161 “g_i=f_i+1/2”. **Repaired**; coefficients at u=−5/2 are (0,1), recomputed below and checked against Molev. |
| R02, generic bridge supplier | README:729–766 “prove that a subspace U⊆W is G-stable if and only if it is Lie(G)-stable”. **Repaired** as an owned target with tangent/stabilizer/Cartier inputs and characteristic-p/disconnected negative controls. |
| R03, LR revision | README:210 “What SchurWeyl must provide (gap:skew-tableau-lr-product)”. **Partly repaired**: no false claim that main already has it, but registration is missing (new R03). |
| R04, monoid duplication | README:312 “not another construction of its coordinate bialgebra or extension theorem”. **Partly repaired** in prose; the unchanged companion still states the generic extension (new R05). |
| R05, GL classification | Suggested:56 “rational_irreducible_classification”; its conclusion is ∃! dominant weight. **Repaired** including ranks 0/1 and negative weights. |
| R06, admitted data | Suggested:29 “no unspecified representation, vector or endomorphism replaces them”. **Repaired**: all sixteen old admitted data sites and their dependent substitutes are gone; retained definitions have real bodies. |
| R07, extension scope | README:15 “Layers 6A and 2A”. **Not repaired**; additions remain in the base (new R04). |
| R08, options | Main option deleted; U3:11 still “set_option autoImplicit false”. **Partly repaired** (new R07). |
| R09, companion imports | Antidiagonal:1 still “import Mathlib.Data.Fin.Rev”; analogous imports remain in all five. **Not repaired** (new R07). |
| R10, commit-pinned link | The old `blob/149fe79…` link is deleted from this README. **Repaired**; LR availability is tracked separately. |
| R11, padding | Main padding deleted; Kan:61 still “:= rfl”. **Partly repaired** (new R08). The old review's claimed full character/dimension suppliers were independently rechecked and are not available at the pin (new R01/R02). |
| R12, locators | README:738 gives “Proposition 10.31, printed p.196”; type-C also gains pages. **Partly repaired**; many sampled targets and the bibliography manifest remain incomplete (new R09). |
| R13, shape | “Scope and ownership”, “Exact supplier contracts”, Needs and layer Examples/Dependencies now exist. **Partly repaired**, not yet per-definition/per-target throughout (new R10). |
| R14, Schubert citation | README:1573 “this calculation uses no SchubertGeometry input”. **Repaired**: the nonexistent S4.4a citation is gone; 18−3=15 remains correct. |

### Gate, signatures and one-tactic probes

The worker's gate at this exact head reports every counter zero and `OK`, including targeted build, dependency check, outside-folder and dirty checks. Its green result does not cover the companion violations in R07 or the mathematical supplier errors. Independently running the prescribed dependency check produced exactly:

```text
depcheck: 204 roadmaps, 1492 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The prescribed outside-folder diff is empty. The family index was read. Main reference is `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`; Mathlib is `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, checked against the manifest and actual checkout.

`lake env lean` on the actual Suggested file exits 0, with exactly eight `sorry` warnings and no other diagnostics. A scratch copy appending `#check @name` for all **19** named main declarations also exits 0. All **24** companion declarations were checked likewise, in five separate scratch copies; all five exit 0. No required section binder disappeared: rationality and finite-dimensionality survive the semisimplicity and restriction signatures; both module structures survive `external` and its lattice theorem; Kan's ring and module universe parameters survive; the polynomial extension quantifies the finite basis, and U3's condition retains all three weight coordinates. No PR signature was changed.

For all **13** admitted theorems (eight main, five companions), scratch probes tried `simp`, `rfl`, and `infer_instance`, requiring the selected tactic to close the goal before recording success. None closed. The probe files themselves use an admission fallback, so their successful elaboration is not reported as proof. Native single-lemma routes were also checked by reading the actual supplied statements; the surviving Kan padding is already proved by one tactic in its file. The two missing headline signatures in R02 separately elaborate successfully. All Lean runs were sequential; no build/update/cache command outside the permitted scope was run.

### Headline inventory

| README headline | Acceptance coverage at this head |
| --- | --- |
| Rational complete reducibility, §0.4 | `rationalRep_isSemisimple`, main:47. |
| Rational GL classification and Schur identification, §3.3 | Main:56 and 61, with actual rational models and height guard. |
| Schur/rational characters and Weyl dimensions, Layers 4–5 | Statable but absent; purported native supply fails (R01/R02). Native determinant twisting alone remains valid. |
| GL representation branching and GT dimension, §6.1/6.5 | `rationalWeyl_branching`, main:69; module-dimension identification needs R01/R02. Pattern count alone is supplied. |
| SO/Sp classification and character/dimension comparisons, §3A | Docstring identifies missing rational models/differentiation carriers; no admitted models replace them. |
| Normalized GL bases/Capelli, §6.4/6.6 | Docstring identifies missing differentiated/source-normalized operators. |
| SO/Spin branching and bases, §6.2/6.7 | Missing models are recorded, but exact README targets/normalization still need R06. |
| Sp multiplicity Hom bases and evaluation, §6B | Docstring identifies missing Mickelsson operators and models. |
| Four diagonal overgroups and external restriction, §6A | Main:137,155,164,171; mathematically meaningful native-carrier signatures, with scope repair R04. |
| All-linear-map Schur comparison, §2A | Docstring names missing image functor/column embedding. |
| Mixed contraction and U3 Pieri | Companions state actual polynomial surjectivity and rational-module Hom dimension; no fake harmonic carrier. Broader Fischer/highest-weight comparison stays in prose, subject to scope/coverage repair. |
| Ordinary Kan extension / matrix monoid extension | Native Kan instantiation is padding; generic monoid extension duplicates its owner (R05/R08). |

### Resolved suppliers and duplication by object

Ownership searches used the roadmap service by objects (Schur functors, skew tableaux, polynomial monoid actions, group/Lie comparisons, Mickelsson operators, diagonal overgroups, Fischer decomposition and Kan extensions), the main content checkout, the board packages, and the relevant provided open heads. Other open revisions of existing roadmaps were inspected only for comparison, never promoted to suppliers. Three main roadmap shapes consulted were ClassicalGroups, SchurWeyl and SemisimpleAlgebras. All Needs lines in this README were read. No copied-source passage or computational-algorithm programme was identified; finite products and small enumerations here are mathematical formulas and checks.

| Supplier / object | Resolved contract and limit |
| --- | --- |
| ReductiveGroups | Main README:129 (Layer0),176 (Layer1),227 (Layer2),234 (Layer3),249–277 (3A stabilizers),464 (5P Cartier),466–477 (Layer6),627 (Layer7),1933–1947 (§10D). These support the named coordinate, tangent, stabilizer, smoothness, reductivity, Borel and monoid inputs. |
| LieHighestWeight | Main README:370,405,537,567,773 give weights, enveloping modules, classification, reducibility and Weyl theory. Layer9:1495–1531 is the GL-specific differentiation/LR application, not a generic SO/Sp bridge. §3A.2 now owns that missing comparison. |
| RootSystems | Main README:218,245,274,296,356 give Layers1–4 and6. Root/Weyl geometry is separated from the group character lattice constructed here; SO₃ weight1 is not the spin half-weight. |
| SchurWeyl | Main README:178–220 (tableau/Young material),323–350 (finite Schur/Frobenius/RSK),352–376 (mutual image centralizers/decomposition),378–479 (Brauer). The open head adds skew/LR in §7.1 onward, but it revises an existing folder and cannot supply R03. |
| SpinRepresentations | Main README:665–776 (Fock/half-spin and Lie comparisons),777–838 (B/D weights, including B-spin restriction to two D-half-spin modules at815). It does not replace this roadmap's SO chain construction with GL formulas. |
| LieGroups | Main README:233–259 (exponential),275–299 (finite-dimensional closed subgroups),300–322 (differentiation/BCH),326–355 (connected integral subgroup uniqueness). Complex matrix comparisons remain owned here. |
| SemisimpleAlgebras | Main README:186–198 (finite-dimensional Schur),233–247 (density, finiteness over the commutant). Over ℂ, finite-dimensional rational modules supply the needed finite commutant dimensions; the zero module is excluded by irreducibility. |
| ClassicalGroupsPartII | Provided open head, Scope:30–65 and Conventions:90 onward, owns GSp multiplier/lattice, primitive rational forms, and representation rings. Its form is −J; that scalar sign preserves the stabilizer. It is a scope boundary here, not an input required by the complex Sp construction. |
| TensorProductCombinatorics | Provided open §2.7 consumes the two diagonal-overgroup gaps. The README under review does not consume hive counts in its group classification, so no reverse input is introduced here. |
| SchubertGeometry | The former S4.4a dependency is deleted; dim H_(2,1)=15 is independently computed here. |

The native Schur image and polynomial functors on arbitrary linear maps are different levels of generality; the latter's comparison can be new work in a continuation. A broad object search found no competing provided owner for the specific mixed V/V* contraction programme; ordinary Kan existence is already Mathlib. No new duplicate fully qualified name with an unrelated readable roadmap was found; the main ClassicalGroups names of course refer to this same existing roadmap.

### Pinned declarations actually opened

Paths below are at the revisions recorded above. Each entry states what the declaration supplies, rather than inferring its contents from its name.

| Pinned file and line | Inspected supply |
| --- | --- |
| `TauCeti/RepresentationTheory/ClassicalGroups/Rational.lean:118,139` | `IsPolynomialRep` and `IsRationalRep` existentially require a basis indexed by Fin(finrank), so they enforce finite dimension; rational coefficients use one nonnegative denominator exponent. They do not provide a comodule equivalence or complete reducibility. |
| `TauCeti/RepresentationTheory/ClassicalGroups/Weight/Basic.lean:110` | `weightSpace` is the intersection of actual torus eigenspaces; it does not impose nonzero membership as part of the submodule definition. |
| `TauCeti/RepresentationTheory/ClassicalGroups/Weight/Decomposition.lean:233` | Rational weight-space internal decomposition. |
| `TauCeti/RepresentationTheory/ClassicalGroups/TensorPower.lean:198` | Tensor trace equals (standard trace)^d. |
| `TauCeti/RepresentationTheory/ClassicalGroups/ExteriorPower.lean:138` | Torus exterior character is the elementary symmetric polynomial. |
| `TauCeti/RepresentationTheory/ClassicalGroups/Decomposition.lean:49` | Actual equivariant tensor-square splitting, not just a character equality. |
| `TauCeti/RepresentationTheory/ClassicalGroups/WeylModule/Basic.lean:472,504` | Height-vanishing and the bundled complex Schur image. |
| `TauCeti/RepresentationTheory/ClassicalGroups/WeylModule/Character.lean:101,140,172` | Row/column special cases and the indiscrete-partition character, **not** the full theorem cited in R01. |
| `TauCeti/RepresentationTheory/ClassicalGroups/WeylModule/Rational.lean:94,172,214` | Genuine determinant-twisted Weyl action/bundle and character-twist identity. |
| `TauCeti/RepresentationTheory/ClassicalGroups/WeylDimension/Basic.lean:182` | Integer quotient converted to ℕ; positive/divisible product, not a module-dimension theorem. |
| `TauCeti/RepresentationTheory/ClassicalGroups/GelfandTsetlin/Dimension.lean:187` | Signed top-row pattern cardinality equals that numerical Weyl product. |
| `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Basic.lean:174` | Schur polynomial on bounded tableaux, finite alphabet. |
| `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Pieri.lean:231` | Horizontal-strip product in every finite alphabet, including strip0/tall vanishing. |
| `TauCeti/Algebra/Lie/GeneralLinear/Radical.lean:221` | Every matrix Lie ideal contains sl or lies in the center, assuming 2≠0. |
| `TauCeti/Algebra/Lie/GeneralLinear/Basic.lean:341` | Complementary scalar center/derived subalgebra when the rank is invertible. |
| `Mathlib/GroupTheory/Goursat.lean:66` | Normality of `goursatFst` requires surjective first projection, provided by containing Δ. |
| `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Basic.lean:52` | Matrix-group center is scalar range. |
| `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean:307` | Actual SL-to-determinant-kernel equivalence. |
| `Mathlib/CategoryTheory/Functor/KanExtension/Pointwise.lean:637–646` | Constructed pointwise extension is universal/left Kan; the companion invokes native full-faithful unit invertibility. |

This ledger gives **19 inspected file entries**, including the failed full-character/dimension supply; it is not a claim that every name in the long generic supplier catalogue was separately elaborated. The 11 worker citation warnings are all names declared in this folder's Suggested file, as the signature output confirms; none is a missing external supplier. Conversely the resolver's absence of a warning did not certify R01's purported native declarations.

### Adversarial mathematics: README statements and conventions

The following table records **126** instance computations across the README; the subsequent table covers **43** retained Lean declarations.

Notation: D=diag(2,3), T=I+E₁₂, S=diag(2,1). Matrix-group tests use actual multiplication, including noncommuting S,T; permutation tests include S₃. Values were recomputed in this review. The contraction commutator/right inverse was checked by exact rational polynomial arithmetic on **361 monomials**, N=2,3,4 and 0≤a,b≤2. U3 weight counts and the entire Pieri weight convolution were independently enumerated for **25 pairs**, 0≤a,b≤4. “Pass” means the displayed instance agrees; source/ownership defects are tracked separately. Cases outside the stated coefficient/connectedness hypotheses are negative controls, not proposed counterexamples to the correctly qualified theorem.

| Statement | Instances tried | Computed left and right values | Result / change |
| --- | --- | --- | --- |
| Complex/rational convention | GL₁, t↦t⁻¹; t=2 | Value 1/2; polynomial t² gives 4 | Distinction sound. |
| Characteristic-free powers versus decomposition | V=F₂², d=2 | 2=0, so 1/2 is unavailable; over ℂ the two projectors have ranks3,1 | Averaging requires 2 invertible. |
| §0.1 standard and dual | D; zero-dimensional V | trace5 and dual trace5/6; at V=0 both traces0 | Pass. |
| §0.2 form preservation | Sp₂, diag(2,1/2); diag(2,3) | AJAᵀ=J versus6J; volume factors1 versus6 | Pass; nonzero contraction needs nonzero rank. |
| §0.3 rational/polynomial predicates | GL₁ weight−1; zero module | 1/2 at2; zero module has empty coefficient matrix and both predicates true | No false nonzero assumption. |
| §0.4 semisimplicity | GL₁ weights−1,2; trivial group on ℂ² | diag(1/2,4) has two invariant lines; ℂ²=ℂ⊕ℂ | Pass. |
| §0.4 hypothesis control | additive group acting by [[1,t],[0,1]] | span(e₁) invariant, invariant complementary line count0 | Excluded: not a reductive classical-group assertion. |
| §0A polynomial extension | N=1, degrees2/0; N=0 | Φ₂(0)=0, Φ₀(0)=1; sole empty matrix acts id | Pass; duplicate target R05. |
| §0A uniqueness/basis comparison | scalar t²; basis rescaled by3 | coefficient remains t²; at2 both4 | Distinct presentations agree. |
| §1.1 tensor powers | D, d=0,1,2; n=0 | traces1,5,25; for n=0 traces1,0,0 | Supplied identity passes. |
| §1.2 symmetric powers | D, degree2; n=1 | 4+6+9=19=h₂(2,3); one variable gives4 | Pass. |
| §1.2 exterior powers | D, k=0,2,3 | traces1,6,0=e₀,e₂,e₃ | Pass, top exterior is det. |
| §1.3 tensor-square splitting | D; n=1 | 25=19+6; 4=4+0 | Supplied representation splitting agrees. |
| §2.1 permutation action/commutation | S₃ cycle on e₁⊗e₂⊗e₁; D | Both orders produce scalar12 times the permuted tensor | Nonabelian action passes. |
| §2.1 mutual centralizers | n=1,d=3 | S₃ group algebra dim6, action image dim1; commutant dim1 | Image qualification essential. |
| §2.2 Young symmetrizer | d=2 | (1±swap)²=2(1±swap); normalized projector squares itself | No unnormalized idempotent assumption. |
| §2.2 Schur image/height | n=1, shape(1,1); n=2 | dimensions0 and1; swap eigenvalue−1 on e₁⊗e₂−e₂⊗e₁ | Pass. |
| §2.2 tableau relabeling | row(2), transposition | row image dimension3 before/after; column image scalar sign−1 | Requires actual permutation intertwiner, not arbitrary scalar choice. |
| §2.3 Schur–Weyl decomposition | n=2,d=3 | 8=4·1+2·2+0·1 | Pass including tall vanishing. |
| §2A functor identity/composition | shape(2), maps ×2 then ×3 | S(6)=36=S(3)S(2)=9·4 | Pass; new-scope R04. |
| §2A nonadditivity | shape(2), f=g=×2 | S(f+g)=16; S(f)+S(g)=8 | Correctly avoids additive functor claim. |
| §2A empty/zero-arrow convention | empty shape and row(1) | S_empty(0)=id has rank1; S_(1)(0)=0 rank0 | Pass. |
| §2A singular/rectangular image | Λ² of rank1/rank2 ℂ²→ℂ³ | ranks0,1; Λ²(image) dimensions0,1 | Rank formula passes. |
| §2A injectivity/surjectivity | inclusion ℂ→ℂ²; projection reverse, Sym² | ranks1 and1; induced maps injective/surjective respectively | Pass. |
| §2A column/Cartan embedding | λ=(2,1), dim V=2 | ambient V⊗Λ²V has dim2; highest vector e₁⊗(e₁∧e₂) has coefficient1 | Correct image and normalization instance. |
| §2A fixed-N extension nonuniqueness | N=1; extra Λ² functor | evaluation Λ²ℂ=0; evaluation Λ²ℂ² has dim1 | Same fixed-N value need not fix functor. |
| §3.1 torus/weight space | standard GL₂ and dual, D | weights (1,0),(0,1) give2,3; negatives give1/2,1/3 | Pass; zero vector belongs to every weight space. |
| §3.1 differentiation | GL₁ weight−1 | (e^s)^−1 derivative at0 =−1 | Group/Lie sign agrees. |
| §3.2 dominant/polynomial indexing | (1,−1), (0,1); n=0 | first dominant/nonpolynomial; second nondominant; empty weight unique | Last-coordinate notation needs R10. |
| §3.3 GL classification | rank1 weights−1,0,1; rank0 | characters at2:1/2,1,2; rank0 one simple line | Distinguishes central twists. |
| §3.3 Schur comparison height guard | n=1, μ=(1,1) | Schur dim0; truncated weight(1) Weyl dim1 | hμ excludes false comparison. |
| §3.3 determinant twist | λ=(2,1); (1,−1) atD | 30=6·5; 19/6=6^−1·19 | Pass. |
| §3.4 SL quotient lattice | GL₂ weights(2,1),(1,0) | Difference(1,1); both restrict to SL₂ standard dimension2 | Pass. |
| §3.5 form-group lattices | SO₃ weight1; Spin₃ half-weight | dimensions3 and2; central −1 acts+1 and−1 | Spin does not descend. |
| §3A regular coefficients | standard Sp₂; conjugate torus character | coordinate value2; conjugation at i gives−i while same candidate Laurent t gives i | Nonregular wrong model excluded. |
| §3A.1 isotropic basis | u=(1,i),v=(1,−i)/2 | u·u=v·v=0, u·v=1; Hermitian u-norm²=2 | Bilinear convention pinned. |
| §3A.1 antidiagonal Gram | n=2 | J=[[0,1],[1,0]], J²=I | Pass. |
| §3A.1 reverse adjoint | diag(i,1); diag(2,3) | Aᴿ=diag(1,i), diag(3,2); double adjoint gives A | No conjugation. |
| §3A.1 form-equation iff | A=diag(2,1/2), diag(2,3) | First: J=J and I=I; second:6J≠J and6I≠I | Both directions tested. |
| §3A.1 Borel semidirect law | t=diag(2,1), u=T | tut⁻¹=I+2E₁₂; a direct product would retain coefficient1 | Conjugation law correct. |
| §3A.1 scalar kernel/PGL | 2I and I; T and I | first projective images equal; second unequal | Pass. |
| §3A.1 low-rank branches | SO₀,SO₁,SO₂,Sp₀,Sp₂ | first two/Sp₀ trivial; SO₂ weight−1 gives1/2; Sp₂ weight1 dim2 | No semisimple theorem applied to torus. |
| §3A.2 stabilizer tangent test | U=span e₁, X=E₂₁ | (I+εX)e₁=e₁+εe₂ outside U[ε]; Xe₁=e₂ outside U | Dual-number equivalence discriminates. |
| §3A.2 fixed vectors | standard Sp₂, SO₃ | Sp Cartan kernel0; SO torus fixed line w is moved by Xw=u, so full fixed dimension0 | Both group/Lie fixed spaces0. |
| §3A.2 characteristic-p control | Gₘ, char3, weight3,t=2 | derivative3=0 but 2³=2≠1; Lie fixed dim1, group dim0 | Char0 hypothesis necessary. |
| §3A.2 disconnected control | sign of {±1} | Lie action0, group value−1; fixed dimensions1 versus0 | Connectedness necessary. |
| §3A.2 Hom comparison | distinct GL₁ weights1,2; same weight1 | group/Lie Hom dimensions0/0; same-weight dimensions1/1 | Pass. |
| §3A.3 C primitive exterior | r=2,k=2; r=1,k=1 | 6−1=5; 2−0=2 | Nonnegative degree boundary handled. |
| §3A.3 B exterior blocks | B₁ k=1; B₂ k=2 | dimensions3 and10; terminal weights2ω₁ and2ω₂ | No spin substitution. |
| §3A.3 D exterior/Hodge | r=3 | Λ³ dimension20=10+10; Λ² dimension15 | Middle split correct. |
| §3A.3 Hodge signs | r=1,2,3 | κ=−i,1,−i; κ²=−1,1,−1=(-1)^(r²) | Companion highest wedge has opposite sign. |
| §3A.3 dominant monoid | D terminal coefficients(1,1),(1,0) | first gives integral coordinates; second gives half-integers | Parity law excludes wrong group. |
| §3A.3 Cartan component | sl₂ standards tensor standards | highest e₁⊗e₁ generates dim3; whole tensor dim4 | Correctly takes generated submodule. |
| §3A.3 O extension | O₀,O₁,O₂ | 1 simple; two characters±; SO₂ weights±1 induce dim2 O₂ standard | Needs component action, not just Lie algebra. |
| §3A.3 Brauer image | O₁,d=2 | three Brauer diagrams all act on one line; image dim1, abstract algebra dim3 | Image/quotient wording correct. |
| §4.1 LR reading convention | words12 and21 | prefixes:12 has counts(1,0) then(1,1), valid;21 first(0,1), invalid | Agrees with Macdonald. |
| §4.1 LR/product multiplicities | s_(1)², two/one variables | 25=19+6;4=4+0 | Math passes, registration R03. |
| §4.1 size/empty controls | λ=μ=empty; wrong-size ν=(1) | c_empty=1; wrong-size count0 | Correct finite count convention. |
| §4.2 Schur character | λ=(2,1),D | monomial sum12+18=30=det(D)trace(D) | Formula sound; missing supply R01. |
| §4.2 denominator-cleared bialternant | n=2, λ=(1), x=(1,1) | numerator0, Vandermonde0; polynomial s_(1)=2 | Literal quotient 0/0 rejected. |
| §4.3 rational Laurent character | λ=(1,−1),D | 19/6 versus polynomial19 | Determinant inverse necessary. |
| §5.1 Weyl dimension | (),(-2),(2,1),(2,1,0),(1,0,−1) | products1,1,2,8,8 equal intended dimensions | Numerically sound; R01/R02. |
| §5.1 denominators | n=3, i<j | differences1,2,1; no zero factors | Rational products, not successive ℕ truncation. |
| §6.1 GL branching | λ=(2,1,0); GL₁→GL₀ | dimensions2+1+3+2=8; any integer GL₁ character yields one unit | Signature includes negative weights. |
| §6.2 consecutive SO branching | SO₃ weight1; SO₄ weight(1,0) | 3=1+1+1;4=3+1 | Missing exact specification R06. |
| §6.3 signed patterns/tableaux | top(2,1,0); subtract1 | middle-row counts2,1,3,2 on both; totals8,8 | Negative entries retained. |
| §6.3 bounded tableau requirement | one box, alphabet size2 | bounded tableaux2; unbounded natural entries infinitely many | Native bounded subtype correct. |
| §6.4 normalized highest vector | standard vector e₁ and2e₁ | lex-first coefficients1 and2 | Normalization excludes rescaling. |
| §6.4 GT lowering and matrix action | GL₂ standard, top(1,0), bottom1→0 | E₂₁e₁=e₂; reverse E₁₂e₂=e₁ | Source-normalized instance passes. |
| §6.4 GL₃ adjacent edge | top(2,1,0), middle(1,0)↔(2,0),bottom1 | raising3/2, reverse lowering1/3; product1/2 | Not integral under arbitrary rescaling. |
| §6.4 row denominators/nonpatterns | middle(1,0); lower beyond boundary | shifted entries1,−1, difference2; inadmissible vector0 | No division-by-zero camouflage. |
| §6.4 determinant shift | top(2,1,0)→(1,0,−1) | off-diagonal fractions unchanged; every Eᵢᵢ eigenvalue decreases1 | Pass. |
| §6.4 contravariant norm | sl₂ standard with norm(e₁)=1 | E₂₁ coefficient1 and E₁₂ coefficient1 force norm(e₂)=1 | Algebraic/unit conventions compatible. |
| §6.5 GT dimension | top(2,1,0); empty pattern | count8=2+1+3+2; empty count1 | Count theorem does not itself prove module dimension. |
| §6.6 ordered Capelli | gl₂ standard; trivial module | (u+E₁₁)(u−1+E₂₂)−E₂₁E₁₂=(u²−1)I; trivial u(u−1) | Shift/order agrees with source. |
| §6.6 spectral separation | middle rows(1,0),(2,0) | shifted pairs(1,−1),(2,−1); elementary sums0,1 and products−1,−2 | Distinct spectra distinguish rows. |
| §6.7 SO versus same-series chain | standard SO₅→SO₄ versusSO₃ | 5=4+1 versus5=3+1+1 | Wrong source chain exposes R06. |
| §6.7 Spin boundary | Spin₅ spin→Spin₄; Spin₄ half→Spin₃ | 4=2+2;2=2 | Retain half-integral lattice separately. |
| §6B native inclusion | Sp₄ fixing first plane | last-plane diag(2,1/2) acts by diag(1,2,1,1/2) | Matches signed index removal. |
| §6B signed F generators | r=2, source F₂₂,F₁₁ | F₂₂e₁=−e₁;F₁₁e₂=−e₂; source(0,−1)→native(1,0) | Negation and reversal both needed. |
| §6B shifted interpolation | λ=(0,−1), u=−5/2 | g²=(1/4,25/4), coefficients(0,1); old shift(11/32,21/32) | Previous R01 repaired. |
| §6B endpoint/rank1 | λ_r=−1,ν_r=0,r=2 | spectral product contains exactly −5/2; rank1 interpolation product1 | Correct half-integer finite interval. |
| §6B multiplicity rows | standard Sp₄→Sp₂ | trivial rows(0,0),(1,0):count2; standard row(1,0):count1 | 2·1+1·2=4. |
| §6B Hom evaluation | maps1↦e₁,1↦f₁ | images independent, rank2; evaluation f⊗1↦f(1) | Actual Hom basis discriminates zero map. |
| §6B center nonseparation | two trivial Sp₂ copies | both subgroup-center characters equal1; multiplicity dimension2 | Centers alone cannot choose two vectors. |
| §6A diagonal/scalar/determinant groups | (2I,I),(T,I),n=2 | determinant ratios4,1; scalar membership yes,no | Intermediates incomparable. |
| §6A scalar-map injectivity | n=1,(g,u)=(3,2); n=0,u=2,3 | image(6,3) recovers both; rank0 both same point | Positive-rank condition essential. |
| §6A determinant ratio/quotient | (diag(u,1),I),u=2 | ratio2; kernel ratio1; quotient coordinate2 | Surjective iff positive rank (rank0 image{1}). |
| §6A right-coset map | (2T,T)(k,k) | ratio2Tkk⁻¹T⁻¹=2I, same as original | Well-defined on right cosets; Δ not normal inP. |
| §6A normal kernel iff | H=H_det,(D,I),(T,I) | ratiosD,T have det6,1; membership false,true | Both directions match. |
| §6A semidirect multiplication | a=I,h=S,b=T | first coordinate STS⁻¹=I+2E₁₂, not T | Not a direct-product group equivalence. |
| §6A connectedness correspondence | H_det; det-ratio∈{±1} | N=SL₂ connected; latter N/H each have2 components | Both directions discriminate. |
| §6A projective comparison | 2I,I andT,I | projective equality true,false; scalar membership true,false | Pass. |
| §6A normalizers | conjugation by(S,I) of(T,T) | (I+2E₁₂,T), ratioT, outside scalar diagonal | N(Δ)=H_sc; N(H_sc)=H_sc instance. |
| §6A tangent four cases | n=2 | quotient stable dims0,1,3,4; preimage dims4,5,7,8 | Four models distinct. |
| §6A excluded candidate line | span E₁₂ under conjugation/Lie bracket | [E₂₁,E₁₂]=E₂₂−E₁₁, outside span E₁₂ | Invariance excludes spurious fifth submodule. |
| §6A rank/characteristic guard | gl₂(F₂) center andsl₂ | trace(I)=0, center⊆sl₂; direct sum fails | ℂ/invertible-rank qualification essential. |
| §6A closed complex classification | H=Δ,H_sc,H_det,P, n=2 | dimensions4,5,7,8 and memberships as above | No counterexample to qualified theorem. |
| §6A real-circle control | X=(iE₁₁,0) | real exp has ratio e^(it)∈S¹; at z=i ratio e^−1∉S¹ | hcomplex excludes real fifth group. |
| §6A algebraic/exponential comparison | H_det, X=(E₁₂,0) | det(exp(zE₁₂))=det(I+zE₁₂)=1 for allz | Entire-polynomial route has correct test. |
| §6A intersection and join | n=2,u=−1,2; diag(4,1) | u²=1,4; (diag(4,1),I)=(2I,I)(diag(2,1/2),I) | Intersection2 components; product all in example. |
| §6A low ranks | n=1 and0 | dimensions1,2,1,2; rank0 all0 | No four-distinct claim at small rank. |
| §6A external/central character | standard factors, D,u=2,e₁⊗e₂ | external scalar-diagonal value12=2·6 | Correct first-factor character. |
| §6A scalar invariant lattices | GL₂ standards | diagonal/scalar-diagonal invariant summands dims3,1 on same subspaces | Identity-on-carrier law discriminates arbitrary iso. |
| §6A SL irreducibility | GL₂ det⊗standard; GL₁ weight−1 | restrictions standard dim2; trivial line dim1 | Pass, including integer negative twists. |
| §6A determinant-equal irreducibility | two GL₂ standards | separate SL₂ factors act on dim4; no common Sym²/Λ² invariant splitting | Distinguishes diagonal restriction. |
| Ordinary Kan inclusion | X=ℂ, maps×2,×3 | composition×6 preserved; values2≠3 at1 | Full and faithful hom-set identity. |
| Ordinary coend relation | X=ℂ,f=×3,a=×2,F(a)=×4 | [6,w]=[3,4w]; atV=X evaluation gives36w both sides for Sym² | No additivity in arrow index. |
| Ordinary Kan unit/constant case | X=0; X=ℂ at itself | E(V)=F(0); w↦[id,w]↦w | Correct universes/full-faithful route. |
| Mixed polynomial/action comparison | x₁,y₁ andD | action2x₁,(1/2)y₁; x₁y₁ fixed | Uses V and V*, not two copies ofV. |
| Mixed bidegree/delta | x₁²y₁³ | degree(2,3), Δ=6x₁y₁² degree(1,2); Δx₁²=0 | Pass. |
| Mixed radius/Euler/commutator | N=2,f=x₁²y₁³ | E_x f=2f,E_y f=3f; [Δ,r]f=7f=(2+2+3)f | Exact check, plus361 monomials. |
| Mixed averaged contraction | m=2,n=3, same monomial | Δ coefficient6; chosen-pair contraction coefficient1=6/(2·3) | Factor mn correct. |
| Mixed right inverse | N=2,a=b=1,f=x₁y₁ | S=rf/4−r²/24; ΔS=f | Denominators4,6 nonzero. |
| Mixed radius injection/isomorphism | N=2,a=b=0 | r·1=r≠0; Δ(r/2)=1 | Nonzero polynomial gives injectivity. |
| Mixed Fischer projection | N=3,m=n=1 | P dimension9; projection f↦f−rΔf/3; H dimension8, radial1 | 9=8+1, projection killsr. |
| Mixed factorial adjoint | N=1,1 andxy | ⟨r·1,xy⟩=1=⟨1,Δxy⟩ | Norm factorials match unaveraged Δ. |
| Mixed highest vector | N=3,m=2,n=1 | x₁²y₃ killed by Δ and all raising operators; weight(2,0,−1) | Nonzero top vector; wrong x₃²y₁ not highest. |
| Mixed dimension formula | (N,m,n)=(3,1,1),(3,2,1),(3,3,2) | 9−1=8;18−3=15;60−18=42 | Agrees with Weyl product. |
| Mixed zero-degree convention | N=3,m=0,n=2 | H=P dimension6; no negative-degree target | Correct second-term-zero convention. |
| U3 multiplicities | H_(1,1),ν=0;H_(2,1),ν=(0,0,1) | L=1: P multiplicity3, H multiplicity2 in each | Source multiplicity-one shortcut avoided. |
| U3 wrong coordinate sum/outside support | H_(1,1),ν=(1,0,0);ν=(2,−2,0) | first wrong sum→0; second L=−1→0 | Both exclusions needed. |
| U3 symmetric-square Pieri | a=b=0; a=b=1 | 6=6;48=24+15+6+3 | Guards exclude negative-degree terms. |
| U3 full convolution | a,b≤4 | all25 weight dictionaries equal; at(3,2), total252=10+27+35+35+64+81 | Tested beyond dimension alone. |
| U3 determinant labels | a=b=1, increment(0,1,1) | highest weight(1,1,0)=det⊗H_(0,1); central exponent2 | Central coordinates retained. |
| U3 rescaling of Hom maps | inclusion f replaced by2f | image unchanged; inverse coordinate multiplied1/2; product2·1/2=1 | Required inverse normalization sound. |

### Adversarial mathematics: every retained Lean declaration

This table includes all 19 main declarations and all 24 companion declarations; repeated formulas are tested on the actual definitions, not admitted data. Locations are declaration starting lines.

| Declaration / location | Instances tried | Computed sides or defining-value comparison | Result / change |
| --- | --- | --- | --- |
| main `rationalRep_isSemisimple`:47 | trivial group onℂ²; GL₁ weights−1,2 | decomposition dimensions2=1+1; action at2 diag(1/2,4) | Pass instance. |
| `rational_irreducible_classification`:56 | GL₁ weight−1; GL₀ | unique parameter−1, value1/2; unique empty parameter, dim1 | Nonvacuous. |
| `schurFunctor_iso_irreducible`:61 | n=2,(1,1); tall n=1 | dims1=1; tall false guard prevents0=1 | Correct guard. |
| `rationalWeyl_branching`:69 | (2,1,0); GL₁−2 | 8=2+1+3+2; GL₀ output1=1 | Correct index/order. |
| `G`:83 | n=0,1 | one element; ℂˣ with2·3=6 | Native alias. |
| `P`:86 | n=1,(2,3) | inverse(1/2,1/3), product(1,1) | Native product. |
| `diagonalMap`:89 | T andI | T↦(T,T); I↦(I,I) | Definite map. |
| `diagonal`:93 | (T,T),(T,I) | membership true,false | Correct range. |
| `determinantRatio`:96 | (D,I),(I,D) | values6,1/6 | Direction pinned. |
| `determinantEqual`:102 | (T,I),(D,I) | kernel test1=1,6≠1 | Discriminates. |
| `scalarDiagonalMap`:105 | n=2,(T,2); n=0 | image(2T,T), ratio4; all scalars same rank0 point | Correct unital map. |
| `scalarDiagonal`:125 | (2I,I),(T,I) | membership true,false | Correct range. |
| `pairExp`:128 | (0,0),(E₁₂,0) | (I,I),(T,I) | Actual exponential. |
| `realDirections`:132 | H=Δ, X=(E₁₂,E₁₂)/(E₁₂,0) | membership true/false at t=1 | Genuine predicate. |
| `connected_complex_overgroup`:137 | four n=2 models; ratio-circle | dims4,5,7,8; circle fails z=i with ratioe^−1 | Correct contextual hypotheses. |
| `external`:149 | standards,(D,I),e₁⊗e₂ | value2e₁⊗e₂ | Pullbacks in correct order. |
| `scalarRestriction_exists_orderIso`:155 | standard factors; V=0 | same dim3,1 summands; zero module one invariant subspace | Identity-on-carrier law nonvacuous. |
| `restrict_specialLinear_irreducible`:164 | det^−1⊗standard; n=0 | standard dim2; unique trivial simple line dim1 | Pass. |
| `external_determinantEqual_irreducible`:171 | GL₂ standards; rank1 characters | dimension4 remains simple; rank1 tensor line dim1 | Pass. |
| Antidiagonal `gram`:14 | n=2,0 | J=[[0,1],[1,0]],J²=I; empty J=I | Real body. |
| `reverseAdjoint`:17 | diag(i,1) | diag(1,i), not diag(1,−i) | Bilinear. |
| `reverseAdjoint_reverseAdjoint`:21 | diag(i,1),E₁₂ | double outputs diag(i,1),E₁₂ | Identity instance. |
| `orthogonal_iff_mul_reverseAdjoint`:28 | diag(2,1/2),diag(2,1) | J=J iffI=I;2J≠J iff2I≠I | Both directions. |
| Kan `inclusion`:17 | X=ℂ,×2 | output×2, value2 at1 | Ordinary functor. |
| `inclusion_full`:21 | same target×2 | preimage×2 maps to×2 | Identity-surjective. |
| `inclusion_faithful`:26 | ×2 versus×3 | images evaluate2 versus3 | Identity-injective. |
| `pointwise_exists`:31 | X=0 | diagram has one object/arrow, colimitF(0) | Native colimits suffice. |
| `extension`:38 | X=0,Y=ℂ | outputF(0), not necessarily0 | Correct ordinary construction. |
| `unit`:43 | X=ℂ,w=1 | value[id,1] | Direction F→J⋙E. |
| `unit_isIso`:48 | [a,w] atX | evaluationF(a)w; [id,F(a)w]=[a,w] | Native one-lemma padding R08. |
| `restrictionIso`:52 | w=1,0 | roundtrip1,0 | Derived native iso. |
| `restrictionIso_hom`:58 | w=1 | [id,1]=[id,1] | rfl padding R08. |
| `colimitModel`:62 | X=0 | same colimitF(0) on both sides | Iso.refl padding R08. |
| `matrixInclusion`:68 | R=ℤ,n=1 | lifted ×2 acts on lifted1 by lifted2 | Actual object universe lift. |
| Mixed `Polynomial`:17 | N=0,1 | ℂ; ℂ[x₁,y₁] | Native polynomial ring. |
| `variableWeight`:19 | x₁,y₁ | (1,0),(0,1) | Two gradings distinct. |
| `bidegree`:22 | x₁²y₁³,0 | first in(2,3), not(3,2); zero inboth | Correct submodule. |
| `delta`:25 | x₁²y₁³,x₁² | outputs6x₁y₁²,0 | Actual derivatives. |
| `radius`:30 | N=2 | r=x₁y₁+x₂y₂, Δr=2 | Fixed normalization. |
| `contraction_surjective`:35 | N=2,a=b=1,f=x₁y₁ | q=f/4−r/24 gives Δ(rq)=f |361 tested monomials. |
| Polynomial `polynomial_monoid_extension`:24 | GL₁ degree2/0 | Φ(0)=0/1 and Φ(2)=4/1 | True intended extension, duplicate R05. |
| U3 `u3HarmonicHighestWeight`:20 | (a,b)=(0,1),(0,0) | (0,0,−1),(0,0,0) | Central coordinate retained. |
| `u3_symmetricSquare_pieri_multiplicity`:27 | a=b=0, μ=(2,0,0)/(1,1,0) | Hom dimensions1/0; guards true/false |25-pair convolution agrees. |

### Seeded source audit

All **15** seeded targets were compared with readable text or marked below when the precise cited text was unavailable. No README passage labels a further locator “unverified”. All seven bibliography works were requested through the sources service. Four yielded readable texts: `molev` v2, `milne` 2022, `macdonald` second edition, and a **partial** `fulton-harris` scan. Macdonald was read from the [Berkeley course copy](https://math.berkeley.edu/~corteel/MATH249/macdonald.pdf), Fulton–Harris from the [CIMAT course copy](https://www.cimat.mx/~gil/docencia/2008/representaciones/fulton-harris.pdf), Milne from the [author's edition](https://www.jmilne.org/math/Books/iAG2022.pdf), and Molev from [arXiv v2](https://arxiv.org/abs/math/0211289v2). Printed pages, not PDF page positions, are used below. OCR in the books sometimes interleaves facing pages and loses inequality signs; such artifacts are not treated as source errors.

| Seeded target | Text opened, hypotheses and comparison |
| --- | --- |
| 0.4 Complete reducibility over ℂ | `fulton-harris line 3180`, Theorem 9.19, p.128, splits finite-dimensional **semisimple Lie-algebra** representations. It is not by itself a theorem for arbitrary abstract GLₙ-representations. The roadmap keeps rationality and names ReductiveGroups Layer 6 for the reductive-group input; a precise claim-level source locator is still needed (R09). |
| 1.1 Tensor power | `fulton-harris line 372`, §1.1, and line 2019, Theorem 6.3, pp.77–78: tensor actions use the same factor maps. Their character gives (2+3)²=25. The pinned tensor theorem independently supplies the identity; no new tensor construction is needed. |
| 1.2 Symmetric/exterior powers | `fulton-harris line 2004` through 2016, §6.1, (6.1)/(6.2), p.77: characters are complete/elementary symmetric polynomials over ℂ. At (2,3) the degree-two values are 19 and 6. Tall exterior powers vanish; degree zero is the unit representation. |
| 2.1 Symmetric-group action | `fulton-harris line 2197` through 2241, §6.2, Lemmas 6.22/6.23 and Exercise 6.29, pp.84–87: double centralizers concern the **image** of the group algebra. At n=1,d=3 its dimension is 1 although dim ℂ[S₃]=6. The roadmap's image qualification is correct. |
| 3.1 Torus and weights | `fulton-harris line 5015` through 5030, §15.1, pp.214–215, gives the slₙ Cartan lattice/chamber; lines 5377–5431, §15.5, pp.231–232, add the GL central coordinate. These do not identify arbitrary abstract torus characters with integer weights. Rationality and the native torus decomposition retain the needed restriction. |
| 3.2 Dominant weights | Same §15.1 and Proposition 15.47, p.232 (`fulton-harris line 5429`): GL labels are decreasing integer tuples; polynomial labels are nonnegative. Weights (1,−1) and (2,0) both have dimension 3 but scalar exponents 0 and 2. |
| 3.3 Highest-weight classification | `fulton-harris line 5429`, Proposition 15.47, p.232, and `macdonald line 6353`, Appendix A(8.2), p.162. Macdonald assumes an algebraically closed characteristic-zero field and proves **polynomial** classification; determinant twists give rational GL labels. Fulton–Harris Theorem 6.3, pp.77–78, lines 2019–2035, supplies Schur models and the height bound. The repaired Lean height guard is necessary. |
| 3.4 SLₙ | `fulton-harris line 5377` through 5398, §15.5, pp.231–232: restriction forgets a common determinant shift. Weights (2,1) and (1,0) give the same two-dimensional SL₂ representation. The group statement uses the integral weight lattice. |
| 3.5 SO/O/Sp | `fulton-harris line 6785` through 6794, Theorems 19.19/19.22, pp.296–297, separates O and SO behavior. Line 6011, Theorem 17.11, p.263, gives the symplectic Weyl construction with the rank/height condition; §17.2, pp.260–261, lines 5959 onward, treats its integral dominant cone. Spin half-weights require descent and cannot be folded into SO labels. The distinction is correct; the exact subclaims need locators (R09). |
| 4.1 Schur products/multiplicities | `macdonald line 5673` fixes right-to-left, top-row-first reading; lines 5688–5694 give lattice prefixes and I(9.2), p.143. I(9.4), lines 5702–5712, supplies the tableau bijection. The combinatorics matches; formal supplier registration is missing (R03). Representation multiplicities additionally need complete reducibility and the full character theorem (R01). |
| 4.2 Schur characters | `fulton-harris line 2019`, Theorem 6.3(3), p.77, and `macdonald line 6389`, Appendix A(8.4), p.163, identify polynomial characters with Schur polynomials. Macdonald extends from diagonalizable matrices by density. Rational twists must be explicit. Source support exists; the claimed pinned formal supply does not (R01/R02). |
| 6.1 GLₙ↓GLₙ₋₁ | `molev line 299` through 342, Theorem 2.1, p.8: finite-dimensional glₙ highest weights have nonnegative integral adjacent differences and restriction interlaces. Integral top rows give the rational GL subset; arbitrary complex common shifts need not integrate to GL. Top row (2,1,0) gives 2+1+3+2=8. The README's §2.1 contains the result but should pinpoint theorem/page. |
| 6.2 SO/Sp branching | `molev line 1436`, C-type inequalities (3.15), p.33, and Lemma 3.4/Theorem 3.5, pp.34–35, support the symplectic construction. Consecutive SO branching instead uses (4.4)/(4.7), pp.48/50, lines 2080/2125. Section 3.2 follows a different orthogonal chain (R06). |
| 6.4 Fixed algebraic GL GT basis | `molev line 375` through 424, Theorem 2.3/Proposition 2.4, pp.9–10, and lines 460–479, Theorem 2.7, p.11: shift λ_ki−i+1, interlacing, invalid-pattern vectors zero, and increasing-row lowering product. The README uses these algebraic vectors rather than an unmarked orthonormal rescaling. Its tested action/norm values agree. |
| 6.7 Orthogonal/Spin bases | `molev line 2110`, Theorem 4.1, p.49; line 2159, Theorem 4.2, p.51; lines 2186/2220, Theorems 4.3/4.4, pp.51–52. Integral and half-integral rows are distinguished; lines 2165–2167 fix contravariant normalization. The cited Theorems 2.3/2.7 concern GL and do not supply these vectors (R06). |

Additional locators checked: `milne line 8157`, Proposition 10.31, p.196, identifies the Lie algebra of a stabilizer; `milne line 3210`, Theorem 3.23, p.71, supplies characteristic-zero smoothness. These support the owned connected-stabilizer proof in §3A.2, not a ready-made generic group/Lie theorem. `molev line 1355` fixes gᵢ=fᵢ+1/2 and right evaluation in (3.10)/(3.11), pp.31–32; line 1765 uses the same shift in §3.4. Lines 670–682 give ordered Capelli (2.21) and eigenvalue (2.22), with λᵢ−i+1. `macdonald line 1780` through 1806 gives the **polynomial quotient** bialternant I(3.1), p.40, not pointwise division at coincident eigenvalues; lines 3033–3042 give horizontal/vertical Pieri I(5.16)/(5.17), p.73. These agree with the numerical rows above.

## Not verifiable

- **Full Fulton–Harris text:** the legal CIMAT scan stops within Lecture 20. Lectures 24–25 and the appendices cited in the bibliography are absent. The service's bibliographic search and this institutional copy were tried. Earlier lectures were read as listed; missing pages are not certified by inference from another book. Macdonald and Molev independently support several associated statements.
- **Weyl, The Classical Groups (1939):** the sources service's bibliographic search found no legal readable text. The README supplies no theorem/page to certify. Listed with the missing references.
- **Procesi, Lie Groups (2007):** the sources service's bibliographic search found no legal readable text. Its broad bibliographic role was not treated as a verified theorem locator. Listed with the missing references.
- **Goodman–Wallach (2009):** the service returned an uncertified/paywalled result. No readable theorem text was obtained; no new missing-text request is made for this settled uncertified citation.
- **Universal proofs of new programmes:** finite exact tests do not prove the general diagonal-overgroup classification, mixed-contraction construction, or normalized type-C basis/action comparisons. This review verifies the recorded instances and accessible inputs; it does not certify an unwritten formal proof. The orthogonal basis specification remains incomplete (R06).

Unavailable texts do not suspend this review: independent checks are complete, and the verdict rests on reproducible defects at this head. No source manifest or PR file was edited. Ownership searches used main and supplied open-head material available to the roadmap tools; no conclusion is asserted about inaccessible or unprovided work.

## Source issues

- **Misprint** in molev at §3 introduction, printed p.28 (molev line 1191): the source says the multiplicity space consists of glₙ₋₁-highest vectors; it should be gₙ₋₁-highest vectors for the chosen B/C/D series; affects a stated result.
