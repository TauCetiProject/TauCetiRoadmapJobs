# Review of ClassicalGroups (pull request #1192 at d7f7648)
Folder: `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/`

**Verdict:** needs changes

Six findings: three P2 and three P3. This is an incremental re-review of 95 changed lines since a8f7108, with unchanged mathematical tests carried forward explicitly from [review 4](PRREVIEW-ClassicalGroups~4.md). The gate passes. No pull-request file was changed. This is an AI review; acceptance would mean readiness for human final approval only.

Below, README and Lean basenames refer to the folder above. Library paths refer to the manifest pins. “Pass” in a computed table means the displayed instances agree, not that a universal theorem has been proved.

## R01 (P2) — Register the LR supplier contract

**Location:** `README.md:231–241`, “What SchurWeyl must provide (gap:skew-tableau-lr-product)”; `README.md:997`, “the supplier gap's finite tableau/product bijection”.

**Claim:** The general LR product is supplied by a declared extension contract.

**Witness:** There is still no readable `packages/ClassicalGroups/design/plan.json`. Main `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:323–350` supplies Frobenius/RSK, not the stated skew-tableau LR contract. Its open revision is not an eligible new-roadmap supplier.

**Repair:** Register the same slug, named supplier, section and precise mathematical need through the package gap mechanism, synchronized with the README; alternatively cite an eligible existing contract. Registration, not completion of a declared supplier's implementation, is required. Preserve the finite-alphabet tests: at (2,3), s_(1)²=25=19+6; in one variable at 2, 4=4+0. Keep horizontal Pieri supplied by `TauCeti.hsymm_mul_diagramSchurPoly`.

## R02 (P2) — Put additional programmes in a continuation

**Location:** `README.md:14–15`, “Its diagonal-overgroup and all-linear-map comparisons are specified in Layers 6A and 2A”; `README.md:1813–2091`, the Kan, mixed-contraction and U3 Pieri programmes.

**Claim:** These additional construction programmes extend the existing base roadmap in place.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:169–423` has the base Layers 0–6 without these programmes. The existing `TauCetiRoadmap/ClassicalGroupsPartII/README.md:30–60` already assigns its continuation a GSp scope.

**Repair:** Preserve base corrections and missing comparisons here; move the genuinely additional programmes and their acceptance signatures into a distinct continuation stating where the base stops. Coordinate the continuation's name and ownership with the existing Part II. Preserve generality and the discriminating zero-arrow tests: the empty Schur functor sends zero to id_ℂ=1, whereas the degree-one functor sends it to 0. A scope split can repair this PR.

## R03 (P2) — Remove the duplicate matrix-monoid existence theorem

**Location:** `PolynomialMonoidExtensionTargets.lean:24–36`, “∃ Φ : Representation ℂ (Matrix (Fin N) (Fin N) ℂ) W”; compare the new `Suggested.lean:36–39`.

**Claim:** The retained companion is an acceptance signature for Layer 0A's native-coordinate/comodule comparison.

**Witness:** Main `TauCetiRoadmap/ReductiveGroups/README.md:1933–1947` owns the polynomial End(V) extension and coefficient factorization. The companion still mentions neither that supplied action nor a comparison map.

**Repair:** Delete the duplicate theorem and the now unnecessary companion. Retain the new docstring's honest explanation of the unavailable comparison carriers, and the README's actual comparison target. At N=1, weight 2 acts by 4 at 2 and 0 at 0 in both presentations; degree zero acts by 1 at 0. Existence alone compares neither presentation. The new docstring is correct but does not remove this duplicate.

## R04 (P3) — Apply the required Lean form to the companions

**Location:** the import blocks of all five companion files; `U3PieriTargets.lean:11`, “set_option autoImplicit false”; `EndomorphismKanExtension.lean:17–68` and `MixedSymmetricContractionTargets.lean:17–30`.

**Claim:** Each listed Lean file follows the acceptance-file rules.

**Witness:** All five companions retain Mathlib submodule imports; U3 retains the option override. Kan and mixed-polynomial definitions lack declaration docstrings, and the companion module docstrings still omit the required headline inventory/name correspondence.

**Repair:** For retained companions, use one `import Mathlib` followed by used Tau Ceti modules, remove the override, and supply the required documentation and README name correspondence. Delete files made unnecessary by R02/R03/R05. Review 4's scratch form-repair copies elaborated under default options; these files are byte-for-byte unchanged. Preserve the mixed operator's actual normalization: Δ(x₁²y₁³)=6x₁y₁², not x₁y₁². The passing gate does not detect these directly observed companion violations.

## R05 (P3) — Delete the Kan acceptance padding

**Location:** `EndomorphismKanExtension.lean:48–66`, “theorem restrictionIso_hom” and “Iso.refl _”.

**Claim:** These declarations test substantive remaining roadmap conclusions.

**Witness:** `restrictionIso_hom` is `rfl`; `unit_isIso` directly applies `IsPointwiseLeftKanExtension.isIso_hom` at `Mathlib/CategoryTheory/Functor/KanExtension/Pointwise.lean:398`; `colimitModel` is an identity isomorphism. Fullness/faithfulness unpack identity hom-set maps.

**Repair:** Delete these acceptance declarations and definitions used only to support them, just as padding is deleted from `Suggested.lean`; do not prove them in place. Keep the native citations and substantive coend comparison in the README. At X=ℂ, the unit sends 3 to [id,3], evaluation returns 3, and the displayed colimit isomorphism sends [3,4] to itself. These identities introduce no new comparison.

## R06 (P3) — Record the sources in the required manifest

**Location:** `README.md:2143–2170`, “## References”; the folder has no `sources.toml`.

**Claim:** The bibliography and its legal verification/provenance are recorded as required.

**Witness:** The directory contains the README and six Lean files only. The newly precise Milne, Molev, Macdonald and Fulton–Harris citations still have no manifest entries.

**Repair:** Add one entry per cited work in `sources.toml`, with the required schema, exact locators, legal provenance and verified/uncertified status. Reuse the existing source keys. The previously identified missing claim-level locators are now repaired; do not remove them. The rational-twist witness remains 19/6 for weight (1,−1) at (2,3), compared with 19 for polynomial shape (2), so retain the stated transport argument.

## Previous findings

- R01 — not repaired: README:231 still declares `gap:skew-tableau-lr-product`, but there is no matching readable plan entry; the general LR route at :997 still consumes it.
- R02 — not repaired: README:14–15 and Layers 2A/6A plus the Kan, mixed-contraction and U3 programmes still extend the base in place.
- R03 — partly repaired: Suggested:36–39 correctly names the missing native-coordinate/comodule comparison, but PolynomialMonoidExtensionTargets:24–36 still duplicates the supplier's generic extension theorem.
- R04 — not repaired: all five companion import blocks, U3:11's option override, and the missing declaration/module documentation are unchanged.
- R05 — not repaired: EndomorphismKanExtension:48–66 still contains the one-lemma unit theorem, definitional hom equality and identity colimit isomorphism.
- R06 — partly repaired: README §§0.2/0.3/3.1/3.2/3.4/6.5/6.6 now have precise locators and transport explanations; the source manifest is still absent.
- R07 — repaired: README:1288–1300 supplies the negative rank-one weight, shifted rank-two coefficients, both determinant-shift directions, and rank-zero generator count. All computed values agree.

## Verified sound

### Scope of this re-review and mechanical checks

The diff changes only the README and the Suggested module docstring: **no Lean declaration or proof changed**, and all five companions are unchanged. The prescribed outside-folder diff is empty; the nested family index was read. Main ClassicalGroups and SemisimpleAlgebras were used as shape references. The target remains at d7f764824063719ca5b4bf5de2dd0e35940b64dc and the worktree remains clean.

The supplied gate has every counter zero, including its targeted build. An independent gate rerun returned OK with every reported counter zero. A separate targeted `lake build TauCetiRoadmap.RepresentationTheory.ClassicalGroups.Suggested` succeeded (9078 jobs). Direct `lake env lean` of Suggested succeeded with **10 sorry warnings and no other diagnostics**.

The prescribed dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1499 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Every Needs line was read; supplier citations were resolved against main or the supplied eligible open head, as detailed below. The citation resolver's 11 leads are this roadmap's own DiagonalOvergroups names, all present at Suggested:113–195.

Scratch copies appended `#check @name` for **all 45 declarations**: 21 in Suggested, 4 antidiagonal, 11 Kan, 6 mixed, 1 monoid and 2 U3. All six elaborations exited 0; the only warnings were the **15 existing theorem admissions**. Explicit finite dimension, rationality, simplicity, scalar character, complex tangent condition, polynomial basis and contraction degree/rank hypotheses remain in scope. No signature changed or needed a binder repair. In particular, Suggested:188 agrees with the newly explicit §3.4 restriction theorem, including trivial ranks.

The 15 one-tactic admission probes from review 4 are carried forward because all statements and pins are unchanged; that review tried `simp`, `rfl`, `infer_instance` and inspected candidate single-library-lemma routes. No admitted theorem closed in those probes. The existing Kan one-tactic proofs were reread at this head (R05). No new padding or stand-in was introduced by the docstring edit.

### Changed statements: newly computed adversarial cases

The following **21 rows** cover the changed mathematical claims and Checks, together with the docstring's comparison distinction. Exact rational arithmetic independently recomputed the dual-number expansion, characters, pattern counts, Weyl products and Capelli coefficients. Rank zero uses empty sums/products; every Weyl denominator j−i is positive.

| Statement / convention | Instances tried | Values computed on each side / wrong model | Result; change |
| --- | --- | --- | --- |
| §0.2 SL volume | diag(2,1/2), diag(2,3), rank 0 | Top wedge scalars 1 and 6; empty determinant 1 | Pass; added locator supports determinant-one restriction |
| §0.2 orthogonal invariant | diag(−1,1) on symmetric identity form | AᵀA=I, det A=−1 | Pass; form preservation does not assert volume preservation for O |
| §0.2 symplectic invariant | A=diag(2,1/2), J=[[0,1],[−1,0]] | AᵀJA=J, det A=1; rank-zero form map is the zero-space isomorphism | Pass; alternating duality retained |
| §0.3 basis-independent coefficients/comodule | Standard GL₂, swap basis; universal column e₂ | diag(2,3) becomes diag(3,2), trace 5=5; coaction evaluated on e₂ yields 3e₂ in both presentations | Pass; native predicates alone do not supply comodule comparison |
| §0.3 nonreduced coefficient test | A=[[1,2ε],[0,1]], ε²=0 | Coaction and point action both send e₂ to e₂+2εe₁ | Pass; natural group-scheme comparison is stronger than field-point data |
| §0.3 power polynomiality and rational twists | diag(2,3), degree 2; GL₁ weight −1 at 2 | Tensor trace 25; symmetric 19; exterior 6; det⁻¹=1/2 | Pass; first three have polynomial coefficients, last has a pole at zero |
| §3.1 standard torus decomposition | GL₂ standard at diag(2,3); zero module | Weights give 2+3=5; zero module gives 0=empty sum | Pass; new standard Check correct |
| §3.1 negative torus weight | det⁻¹ at diag(2,3) | 2⁻¹3⁻¹=1/6; nonnegative-only lattice omits this line | Pass; new negative-weight Check correct |
| §3.1 differential direction | Weight (1,−1), diag(1+2ε,1+3ε) | (1+2ε)(1−3ε)=1−ε; derivative 2−3=−1 | Pass; opposite character would give +1 |
| §3.1 central coordinate | det⁻¹, infinitesimal scalar diag(ε,ε) | Differential −1−1=−2, whereas quotienting common shifts gives 0 | Pass; central coordinate must remain |
| §3.2 polynomial/rational labels | (1,−1), (0,1), empty weight | (1,−1)=−(1,1)+(2,0), character 19/6; (0,1) is not decreasing; empty dimension 1 | Pass; determinant transport and rank-zero convention correct |
| §3.4 equality modulo common shift | GL₂ weights (2,1),(1,0) | On diag(2,1/2): 5/2=5/2; on diag(2,3): 30≠5 | Pass; quotient applies after restriction |
| §3.4 converse control | GL₂ weights (1,0),(0,0) | Restricted dimensions 2≠1; difference (1,0) is not constant | Pass; nonconstant shifts are not identified |
| §3.4 exhaustion and low ranks | SL₂ highest weight m=2; SL₁ and SL₀ | GL₂ weight (2,0) restricts with dimension 3=m+1; every GL₁ m has 1^m=1; empty rank has dimension 1 | Pass; trivial groups treated separately from A-type positive rank |
| §6.5 branching count and Weyl product | Top rows (), (−1), (2,1), (2,1,0), (1,0,−1) | Pattern counts 1,1,2,8,8 equal products 1,1,2,8,8 | Pass; rational common shifts preserve counts |
| §6.5 tableau comparison | Rank 3, top (1,0,−1) shifted to (2,1,0) | 8 signed patterns = 8 shifted patterns = 8 tableaux; no shape with a negative row is asserted | Pass; source tableau dictionary is used after the shift |
| §6.6 rank-one coefficient | k=1, λ=−1 | A₁(u)=u−1, coefficient −1 | Pass; negative weight retained |
| §6.6 column shift/indexing | k=2, λ=(2,1) | A₂(u)=u²+2u; coefficients (2,0); unshifted polynomial has (3,2) | Pass; new Check excludes the wrong normalization |
| §6.6 determinant translation | (2,1) shifted by +1 and −1 | +1: u²+4u+3=A₂(u+1); −1: u²−1=A₂(u−1) | Pass; translation direction fixed |
| §6.6 empty rank and separation | Rank 0; rows (2,1),(2,0) | Empty A₀=1, 0 generators; coefficient pairs (2,0) and (1,−2) differ | Pass; no generator from the constant empty determinant |
| Suggested:36–39, comparison versus extension existence | GL₁ weight 2, degree zero, rank-zero matrix monoid | Both presentations give 2↦4,0↦0; degree zero 0↦1; rank-zero 0=1 acts as identity | Correct docstring; retained existence-only companion still R03 |

### Unchanged mathematical tests carried forward

Each row below cites **[r4](PRREVIEW-ClassicalGroups~4.md)** as its evidence. These are the previous report's computed rows for statements untouched by the diff, not new claims of rerunning its 1,725-monomial or 25-character computations. Changed statement rows have been replaced by the fresh table above. Finding references R01–R05 still refer to the same defects.

| Statement / convention | Instances | Computed values on the two sides / wrong model | Result; change |
| --- | --- | --- | --- |
| §0.1 standard action/trace | diag(2,3); n=0 | Trace=2+3=5; zero-dimensional trace=0 | Pass; none; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §0.1 dual convention | diag(2,3) | Dual trace=1/2+1/3=5/6, versus standard 5 | Pass; inverse, not transpose-only action; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §0.4 semisimplicity | GL₁ weights −1,1; zero module | Dimension 2=1+1; zero module 0 is empty sum | Pass; zero not a simple object; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §0A extension | GL₁ weights 2,0 at 0 and 2 | Degree 2: 0,4; degree 0: 1,1 | Pass mathematics; duplicate R03; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §1.1 tensor action/character | diag(2,3), d=2; d=0 | Trace 25=5²; empty tensor trace 1, including n=0 | Pass; 0⁰ convention is tensor unit; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §1.2 symmetric character | n=2,k=2 at (2,3) | 4+6+9=19=h₂(2,3) | Pass; none; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §1.2 exterior character | n=2,k=2,3 | 6=e₂(2,3); 0=e₃(2,3) | Pass; height vanishing; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §1.3 tensor-square splitting | (2,3); n=1,t=2 | 25=19+6; 4=4+0 | Pass; source and native splitting agree; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §1.3 projector denominator | char 0; char 2 control | (1+swap)/2 is a projector over ℂ; 2=0 in F₂ has no inverse | Pass; do not generalize without 2 invertible; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §2.1 permutation image | S₃ on (ℂ¹)⊗³; transposition on e₁⊗e₂⊗e₁ | Image algebra dimension 1 versus group algebra 6; latter tensor goes to e₂⊗e₁⊗e₁ | Pass; image, not faithful group algebra, is used; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §2.2 row/column Schur images | Shapes (2), (1,1), rank 2 | Dimensions 3 and 1; characters 19 and 6 | Pass; shape and transpose not interchangeable; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §2.3 Schur–Weyl decomposition | n=2,d=3 | 8=4·1+2·2; height-three term 0 | Pass; Specht multiplicity retained; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §2A all-linear-map functoriality | Degree 2 scalars 2,3; zero map | S(6)=36=4·9; S(0)=0 | Pass; new scope R02; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §2A nonadditivity/empty shape | Scalars 2+2; zero arrow | S²(4)=16 versus S²(2)+S²(2)=8; S_empty(0)=1 | Pass; no additive-source claim; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §2A column embedding | Shape (2,1), n=3 | Highest tensor e₁⊗(e₁∧e₂) nonzero; Schur dimension 8 versus ambient 3·3=9 | Pass; proper image distinguished; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3.3 rational classification | Rank 1 weights −1,0,1 at 2 | Characters 1/2,1,2 distinguish labels | Pass; central shift retained; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3.3 Schur identification | (2,1), n=2; (1,1), n=1 | Valid dimension 2; tall Schur image 0 cannot be simple | Pass; height hypothesis necessary; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3.5 disconnected O extension | O₁ and SO₁ | Two O₁ characters restrict to the single trivial SO₁ character | Pass; component action cannot be omitted; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A isotropic basis | u=e₁+i e₂, v=(e₁−i e₂)/2 | B(u,u)=B(v,v)=0; B(u,v)=1 | Pass; factor 1/2 fixed; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A reverse adjoint | n=2, A=diag(2,3) | A^♯=diag(3,2); (A^♯)^♯=A, whereas conjugating would change imaginary entries | Pass; bilinear, not Hermitian; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A orthogonality equivalence | A=diag(2,1/2); A=diag(2,3) | AᵀJA=J and AA^♯=I; control gives 6J and 6I | Pass both directions on positive/negative instances; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A SO/Spin lattice | SO₃ and Spin₃ | Integral weight 1 has dimension 3; spin weight 1/2 has dimension 2 and does not descend | Pass; group lattice guards retained; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A low-rank SO | SO₂ weight −1; SO₄ standard | Torus value 1/2 at 2; SO₄ dimension 4 | Pass; not forced into simple D₁/D₂ conventions; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A.2 group/Lie fixed spaces | Trivial module; disconnected sign | Trivial: dimensions 1=1; sign: group fixed 0, Lie fixed 1 | Pass; connectedness excludes counterexample; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A.2 char-zero requirement | G_m weight 3 in char 3 | Differential 3=0; at 2, character 2³=2≠1 | Pass; char-p counterexample excluded; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A.2 stabilizer tangent | Dual numbers 1+εX on U | Preservation iff XU⊆U, since coefficient of ε is Xu | Pass; first-order law identifies tangent, not just points; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A.3 primitive symplectic wedge | Sp₄ Λ² | Dimension 6=5+1; e₁∧e₂ contracts to 0, paired e₁∧f₁ contracts nontrivially | Pass; zero contraction map excluded; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A.3 Hodge normalization | Middle wedge, ranks r=1,2,3,4 | Highest eigenvalues −i,1,−i,1; opposite eigenvalues i,−1,i,−1; squares −1,1,−1,1 | Pass; orientation/rescaling discriminated; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §3A.3 Cartan component | sl₂ standard⊗standard | Highest weight 2 gives dimension 3 inside total 4; complement dimension 1 | Pass; highest component not whole tensor product; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §4.1 LR product/height | s₁² at (2,3), at one variable 2 | 25=19+6; 4=4+0 | Pass math; availability R01; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §4.1 empty/failed containment | Empty shape; wrong size | Unit count 1; failed size/containment count 0 | Pass; finite independent tableau definition required; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §4.1 bialternant convention | Coincident eigenvalues (1,1), shape (2) | Polynomial value 3; pointwise numerator/denominator 0/0 | Pass; polynomial divisibility precedes evaluation; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §4.2 full Schur character | (2,1), n=2, t=(2,3) | Two tableau monomials 12+18=30; representation det⊗standard trace 6·5=30 | Pass; restored headline covers nonspecial shape; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §4.2 empty/tall/zero rank | Empty at rank 0; nonempty at rank 0; (1,1) at rank 1 | Character and Schur values 1=1, 0=0, 0=0 | Pass; no unnecessary height guard; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §4.3 Laurent twist | Weight (1,−1), t=(2,3) | (4+6+9)/6=19/6 | Pass; negative determinant handled; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §5.1 Weyl dimension | (), (−1), (2,1), (2,1,0), (1,0,−1) | Module/test-model dimensions 1,1,2,8,8; exact product 1,1,2,8,8 | Pass; denominators j−i positive; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §5.1 evaluation at one | Shape (2,1), rank 3 | 8 tableaux = Schur value 8 = 2·2·2 | Pass; no analytic 0/0 specialization; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.1 GL branching | Top (2,1,0) | Lower dimensions 2+1+3+2=8 | Pass; all four interlacing rows; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.1 signed branching | GL₂ top (1,−1) to GL₁ | Weights −1,0,1, trace 1/2+1+2=7/2 | Pass; partitions alone would miss −1; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.1 rank-zero endpoint | GL₁ weight −1 to GL₀ | One empty lower row, dimension 1=1 | Pass; block inclusion still defined; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.2 B→D consecutive | SO₃ weight 1 to SO₂ | Weights −1,0,1, dimensions 1+1+1=3 | Pass; endpoint absolute value correct; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.2 D→B consecutive | SO₄ vector to SO₃ | Dimensions 3+1=4 | Pass; last absolute value correct; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.2 wrong orthogonal chain control | SO₅ vector to SO₃ | 5=3+1+1, trivial multiplicity 2 | Pass; not confused with consecutive multiplicity-free chain; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.2 symplectic rank drop | Sp₄ standard to Sp₂ | 4=2+1+1; zero lower weight has multiplicity 2 | Pass; explicitly not multiplicity-free; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.3 pattern order | Top (2,1,0), middle (2,0), bottom 1 | 2≥2≥1≥0≥0 and 2≥1≥0; shifted middle 2,−1 distinct | Pass; nonzero denominator difference 3; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.4 algebraic GT action | That pattern raised in middle position 2 | E₂₃ coefficient 1; reverse E₃₂ coefficient 1/2; product 1/2 | Pass; cannot rescale both to integer unit coefficients; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.4 invalid move/shift | Raise middle first entry 2 to 3; shift every row +1 | Invalid vector 0; off-diagonal coefficients unchanged, E_ii increases by 1 | Pass; common differences determine coefficients; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.4 norm/unit endpoint | Trivial top row, empty row | Highest vector norm 1; empty lowering product 1 | Pass; normalization names actual vector; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.7 orthogonal action | SO₃ standard basis (u,w,−v) | F₂₁: u→w→−v→0; F₁₂ on this ordered list: 0,u,w | Pass; source-normalized signs agree; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.7 even→odd embedding | q=(u+v)/√2, w'=i(u−v)/√2 | B(q,q)=B(w',w')=1, B(q,w')=0 | Pass; dropping i would give −1 for second norm; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6.7 source operator convention | Native generator vs source difference | w'=i(u−v)/√2 implies native short-root generator = i times source difference | Pass; complex coordinate comparison explicit; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6B type-C diagonal shift | Nodes g₁=−1/2,g₂=−5/2, evaluate at −5/2 | Interpolation coefficients (0,1); omitting +1/2 gives (11/32,21/32) | Pass; wrong convention excluded; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6B symplectic signed matrices | F₁₁ in rank 2 | e₂→−e₂ and f₂→f₂; infinitesimal equation XJ+JXᵀ=0 | Pass; signed matrix unit fixed; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6B multiplicity rows | Sp₄ standard | Over μ=0 two rows; over standard μ one row: 2·1+1·2=4 | Pass; multiplicity vectors necessary; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A diagonal subgroup | T=I+E₁₂; pair (T,I) | (T,T) belongs; (T,I) does not | Pass; wrong full subgroup excluded; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A scalar-diagonal subgroup | (2I,I); (T,I) | First belongs with scalar 2; second has nonscalar ratio and fails | Pass; distinguishes from determinant-equal; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A determinant ratio/kernel | D=diag(2,1), T=I+E₁₂ | r(D,I)=2, r(I,D)=1/2, r(T,I)=1, r(2I,I)=4 | Pass; quotient direction fixed; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A scalar parameter map | (T,2); rank 1 (3,2/3); rank 0 | Images (2T,T), (2,3); in rank 0 every scalar has same image | Pass; positive-rank injectivity guard; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A dimensions/classification | n=2 | dim Δ=4, H_sc=5, H_det=7, P=8 | Pass; four distinct candidates; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A Δ not normal in P | D,T as above | DTD⁻¹=I+2E₁₂≠T | Pass; coset space not quotient group; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A homogeneous-space map | (g,h)→gh⁻¹, multiply right by (k,k) | (gk)(hk)⁻¹=gh⁻¹; at (D,I), value D | Pass; right-coset convention; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A normal kernel | H_det, first-factor kernel | det g=1; T included, D excluded | Pass; kernel is SL₂; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A normalizer | Conjugate T by D | Ratio acquires E₁₂ coefficient 2 instead of 1; D noncentral | Pass; normalizer of diagonal uses scalar ratio; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A matrix Lie lattice | gl₂ conjugation submodules | Dimensions 0,1,3,4; [E₂₁,E₁₂]=diag(−1,1) excludes lone E₁₂ line | Pass; native Lie inputs apply; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A trace splitting negative control | rank 2 over F₂ | trace I=0; scalar line lies in sl₂ | Pass; complex characteristic-zero setting necessary; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A complex tangent hypothesis | Compact scalar-ratio circle, X=(iI,0) | At real t, determinant ratio e^(2it) has modulus 1; for iX, ratio e^(−2t) generally does not | Pass; real closed subgroup excluded by hcomplex; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A exponential normalization | X=E₁₂, X²=0 | exp(tX)=I+tX, determinant 1 | Pass; realDirections genuinely tests all t; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A intersection/product | n=2; (diag(4,1),I) | Intersection scalar has λ²=1, two components; factor (2I,I)(diag(2,1/2),I) equals given pair | Pass; connected factors can have disconnected intersection; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A small ranks | n=1; n=0 | H_det=Δ, H_sc=P; rank 0 all four trivial | Pass; theorem assumes n≥2; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A external tensor action | Rank-one weights −1,2 at (3,2) | External scalar 3⁻¹·2²=4/3; diagonal at 3 gives 3 | Pass; factor order fixed; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A scalar restriction lattice | Same weights at scalar map (3,2) | Pair (6,3) acts by 6⁻¹·3²=3/2=2⁻¹·3 | Pass; invertible scalar preserves same subspaces; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A SL irreducibility | GL₂ standard; rank-one det powers | SL₂ standard remains dimension 2 simple; SL₁ restriction dimension 1 simple | Pass; zero module excluded by irreducibility; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| §6A equal-det tensor irreducibility | Two GL₂ standards | H_det restriction has independent SL₂×SL₂ action, dimension 4; diagonal restriction splits 3+1 | Pass; distinction from diagonal is substantive; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Ordinary Kan coend relation | X=ℂ, F(a)=a² | [6,1]=[3,4], evaluation 36=36 | Pass; relation direction fixed; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Ordinary Kan nonadditivity | f=2 versus 1+1 | [2,1] evaluates 4; [1,1]+[1,1] evaluates 2 | Pass; ordinary, not enriched, extension; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Ordinary Kan X=0 | Constant value ℂ; Y=0 or ℂ | Each indexing category has one object; extension value dimension 1 in both cases | Pass; not required to vanish at zero; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Ordinary Kan restriction | X=ℂ | w→[id,w]→w; scalar 3 returns 3 | Pass; one-tactic identities are padding R05; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Mixed bidegree/operator | x₁²y₁³ | Degree (2,3); Δ=6x₁y₁² of degree (1,2) | Pass; normalized contraction would give 1 instead of 6; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Mixed radius | N=2 | r=x₁y₁+x₂y₂; Δr=2 | Pass; zero map/one summand excluded; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Mixed commutator | N=2, degree (2,3) | Δ(rf)−rΔf=7f=(N+a+b)f | Pass; signs and Euler weights fixed; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Mixed harmonic kernel | x₁y₂, x₁y₁, x₁² | Δ values 0,1,0 | Pass; actual kernel, no arbitrary harmonic predicate; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Mixed finite right inverse | N=2,a=b=1,f=x₁y₁ | S(f)=rf/4−r²/24; ΔS=(4f+r)/4−6r/24=f | Pass; all denominators positive; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Mixed exact arithmetic test | N=2,3,4; a,b=0,…,3 | 1,725 monomials: every ΔS(f) coefficient equals f; every commutator coefficient equals (N+a+b)f | Pass; no residual coefficient; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Mixed decomposition | N=2,3, bidegree (1,1) | 4=3+1; 9=8+1 | Pass; harmonic plus radial summands; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Mixed factorial adjoint | 1 and x₁y₁ | Inner products for Δ and r both 1 | Pass; multiplication/differentiation normalization agrees; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Mixed highest vector | x₁^m y_N^n, N≥2 | Δ=0 and all raising operators give 0 | Pass; weight (m,0,…,−n) retained; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| Mixed harmonic dimension | N=3;(m,n)=(1,1),(2,1),(3,2),(0,2) | Polynomial differences 8,15,42,6 = Weyl products 8,15,42,6 | Pass; pure boundary included; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| U3 weight multiplicities | H₁₁ weight 0; H₂₁ weight (0,0,1) | Multiplicities 2 and 2; wrong central total gives 0 | Pass; central coordinate and internal multiplicity retained; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| U3 symmetric-square Pieri | (a,b)=(0,0),(1,1),(3,2) | Summand dimensions [6], [3,6,15,24], [10,27,35,35,64,81]; sums 6,48,252=6 dim H_ab | Pass; boundary guards remove terms; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| U3 full character test | 25 pairs a,b=0,…,4 | Every weight coefficient in H_ab·Sym² equals the summed six guarded characters | Pass; stronger than dimension-only test; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| U3 multiplicity negative control | a=b=0, μ=(2,0,0) or (1,1,0) | Hom dimensions 1 and 0; horizontal increments require x₂=x₃=0 | Pass; no false vertical-strip term; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |
| U3 det exponent/Hom scaling | All summands; rescale a Hom generator by 2 | Central total a−b+2 on both sides; inverse comparison rescales by 1/2 | Pass; unmarked scalar is not a canonical map; carried from [r4](PRREVIEW-ClassicalGroups~4.md) |

### Lean declaration tests carried forward

The following **45 rows** carry review 4’s computed declaration tests. Suggested line numbers have been updated by +4 for the docstring insertion; companion line numbers are unchanged. Signatures were independently re-elaborated this round as described above.

| Declaration (file:line) | Values compared | Result |
| --- | --- | --- |
| Suggested:54 rationalRep_isSemisimple | GL₁ weights ±1: 2=1+1; zero: 0=empty sum | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :63 rational_irreducible_classification | Rank-one −1,0,1 at 2: 1/2,1,2; unique empty rank-zero label | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :68 schurFunctor_iso_irreducible | Rank-two (2,1): dimensions 2=2; tall (1,1) in rank one excluded | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :76 schur_character | (2,1) at (2,3): 30=30; tall: 0=0; empty: 1=1 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :85 rational_dimension | Weights (2,1,0),(1,0,−1): 8=8 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :93 rationalWeyl_branching | 8=2+1+3+2; signed rank-two weights −1,0,1 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :107 G | n=0 one unit; n=1 nonzero scalars, 0 excluded | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :110 P | Rank-one pair (2,3) admitted; zero first coordinate excluded | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :113 diagonalMap | T→(T,T); product DT maps to (DT,DT) | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :117 diagonal | (T,T) yes; (T,I) no | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :120 determinantRatio | (D,I)→2; (I,D)→1/2 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :126 determinantEqual | (T,I) yes with ratio 1; (D,I) no with ratio 2 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :129 scalarDiagonalMap | (T,2)→(2T,T); rank-zero scalar kernel entire ℂˣ | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :149 scalarDiagonal | (2I,I) yes; (T,I) no | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :152 pairExp | (tE₁₂,0)→(I+tE₁₂,I); at 0 identity pair | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :156 realDirections | (iI,0) in circle's real directions; (−I,0) fails since e^(−2) not unit modulus | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :161 connected_complex_overgroup | n=2 dimensions 4,5,7,8; circle excluded by complex-direction hypothesis | Pass instances; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :172 external | Weights (−1,2) at (3,2): 4/3 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :179 scalarRestriction_exists_orderIso | At (3,2) scalar-coordinate input, action 3/2=2⁻¹·3; invariant subspaces unchanged | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :188 restrict_specialLinear_irreducible | Standard rank 2 stays simple dimension 2; rank-one characters stay simple dimension 1 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :195 external_determinantEqual_irreducible | Two standards: simple dimension 4 on SL₂×SL₂; diagonal gives 3+1 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| Antidiagonal:14 gram | n=2 J=[[0,1],[1,0]], J²=I; n=0 empty identity | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :17 reverseAdjoint | diag(2,3)→diag(3,2); iI→iI, not −iI | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :21 reverseAdjoint_reverseAdjoint | diag(2,3)→diag(3,2)→diag(2,3); empty→empty | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :28 orthogonal_iff_mul_reverseAdjoint | diag(2,1/2): J=J and I=I; diag(2,3): 6J≠J and 6I≠I | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| EndomorphismKanExtension:17 inclusion | One object→X, scalar 2→endomorphism 2, 2·3→6 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :21 inclusion_full | Hom 2 has preimage 2 | Pass; boilerplate; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :26 inclusion_faithful | Images of 2 and 3 differ; image equality 2=2 implies original equality | Pass; boilerplate; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :31 pointwise_exists | X=0 indexing singleton gives colimit ℂ, dimension 1 | Pass; native instance; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :38 extension | X=ℂ, F(a)=a²: evaluation [3,4]→36 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :43 unit | w→[1,w], evaluation w | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :48 unit_isIso | Unit followed by evaluation: 3→3 | Pass; native lemma, R05; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :52 restrictionIso | Inverse evaluation sends [3,4]→36; unit returns equivalent [1,36] | Pass; R05; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :58 restrictionIso_hom | Both maps send 3→[1,3] | Definitional padding, R05; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :62 colimitModel | Same colimit on both sides; identity sends [3,4] to [3,4] | Definitional padding, R05; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :68 matrixInclusion | n=0 zero module; n=1 End(R) acting on R with 2→2 | Pass; no finite-dimensional output assertion; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| MixedSymmetric:17 Polynomial | N=1 variables x₁,y₁; N=0 constants only | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :19 variableWeight | x₁ weight (1,0); y₁ weight (0,1) | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :22 bidegree | x₁²y₁³ in (2,3), not (3,2); zero belongs to every homogeneous submodule | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :25 delta | x₁²y₁³→6x₁y₁²; x₁y₂→0 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :30 radius | N=2: x₁y₁+x₂y₂, Δr=2; N=0 r=0 | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :35 contraction_surjective | N=2,f=1: q=1/2, Δ(rq)=1; N=0 impossible for f=1 and excluded | Pass; N≥2 retained; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| PolynomialMonoidExtension:24 polynomial_monoid_extension | Weight 2 at 0,2 gives 0,4; constant action gives 1,1 | True instance, duplicate R03; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| U3PieriTargets:20 u3HarmonicHighestWeight | (a,b)=(2,1) gives (2,0,−1), decreasing; (0,0) gives (0,0,0) | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |
| :27 u3_symmetricSquare_pieri_multiplicity | a=b=0: μ=(2,0,0) gives 1, μ=(1,1,0) gives 0; 25 full-character comparisons | Pass; computed evidence [r4](PRREVIEW-ClassicalGroups~4.md) |

### Source checks at the changed locators

Four source works were checked for the changes: Milne's 2022 author edition, Molev's explicitly cited arXiv v2, Macdonald's institutional Berkeley copy, and the existing sources-service OCR of the institutional CIMAT Fulton–Harris scan. Fetches used the sources service. The Fulton–Harris bibliographic lookup failed; after locating the existing legal extraction, its required pages were read there and the redundant institutional re-fetch was stopped. The resulting temporary missing request was cleared, rather than requesting pages already readable.

The seeded sample meets this diff at **§§0.2, 3.2, 3.4 and 6.5**. Each was rechecked against its text. The other sampled targets are unchanged and their computed rows are carried above; this is not a second full source review. No new “unverified” locator is introduced. Bibliography edits were also checked against the passages they newly locate.

| Changed passage | Text inspected and support |
| --- | --- |
| §0.2 and Milne reference | Milne §2.10, printed pp.42–43: `milne line 2068`–2115 defines the form stabilizer and the orthogonal/symplectic matrices. It uses transpose and, for the orthogonal family, characteristic different from 2; ℂ satisfies this. The volume claim is explicitly derived from determinant one, not attributed to a nonexistent form-preservation theorem for SL. |
| §0.3 and Milne reference | §2.8, p.41: `milne line 2019`–2039 gives the localized GL coordinate ring and matrix comultiplication. Remark 4.1 and Example 4.2, pp.84–85: `milne line 3746`–3790 gives the representation/coaction dictionary, coefficient identities and standard coaction. The polynomial tensor/symmetric/exterior statements are identified as multilinear consequences. |
| §3.1 and Milne reference | Theorem 12.12, pp.234–235: `milne line 9692`–9756 gives the direct sum over group characters. The diagonal torus is split; this is not a claim about arbitrary commuting endomorphisms. The following rank-two example, `milne line 9774`–9785, retains both integer coordinates. Differentiation is an explicitly owned comparison, not part of that theorem. |
| §3.2 polynomial labels | Macdonald Appendix A(8.2), printed p.162: `macdonald line 6342`–6376 classifies the polynomial modules by partitions at the stated height. The rational determinant shift is correctly supplied separately. The source's characteristic-zero setting matches ℂ. |
| §§3.2/3.4 rational labels, restriction, and revised Fulton–Harris bibliography | §15.5 and Proposition 15.47, pp.231–232: `fulton-harris line 5377`–5435 describes determinant powers, lifting SL modules, the common-shift relation and unique decreasing GL labels. The roadmap keeps algebraic/rational representations and handles ranks 0 and 1 separately. Its type A_(n−1) claim starts at n=2. |
| Revised tensor/Young-image reference | Fulton–Harris §1.1, pp.4–5, `fulton-harris line 350`–400 supplies tensor and contragredient constructions. Equations (6.1)/(6.2) and Theorem 6.3, pp.77–78, `fulton-harris line 1990`–2035 identify the extreme shapes and tensor decomposition. The tensor-square splitting is the degree-two consequence, using invertibility of 2. |
| §6.5 | Molev Theorem 2.1, p.8, `molev line 315`–342 gives interlacing branching; Remark 2.2 and Theorem 2.3, p.9, `molev line 368`–400 give the partition/tableau dictionary and pattern basis. Its Lie weights may have a nonintegral common coordinate; the added integer-weight/determinant transport is therefore necessary and correct. |
| §6.6 | Molev (2.21)/(2.22), p.16, `molev line 670`–682 gives increasing column order, central coefficients and scalar product with shifts λ_i−i+1. Restricting the basis of Theorem 2.3 to every block gives the rowwise action. Strict decrease of shifted entries makes the coefficient separation argument valid. |
| Expanded Molev bibliography | Theorem 2.3 is on p.9 (`molev line 377`); Proposition 2.4 on p.10 (line 410); Theorem 2.7 on p.11 (line 467); (3.10) on p.31 (lines 1334–1343); Lemma 3.4 on p.34 (line 1443), and Theorem 3.5 starts on p.34 and continues onto p.35 (line 1466 onward). The advertised ranges include the cited statements. The unchanged orthogonal locators retain review 4's verification. |

No copied source passage was found in these additions. The new SL and Capelli Checks distinguish the intended conventions from constant-shift, sign and unshifted alternatives. They remain in the README, with no acceptance padding added.

### Library declarations and ownership checked at the pins

Mathlib is `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti is `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The manifest and both checkout heads agree. Main is `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`.

The following **10 pinned declarations** were reopened for the changed interfaces or surviving findings. Object searches for polynomial monoid actions, coefficient coactions and Capelli operators supplemented declaration-name searches.

| Pinned file and line | Declaration and conclusion relevant here |
| --- | --- |
| `TauCeti/RepresentationTheory/ClassicalGroups/Rational.lean:118` | `TauCeti.IsPolynomialRep` is an existence condition for a finite basis and polynomial matrix entries on GL(ℂ). It contains no matrix-monoid coaction. |
| Same file:139 | `TauCeti.IsRationalRep` uses polynomial entries divided by one fixed determinant power. It does not impose a false nonnegative-weight restriction. |
| Same file:178 | `TauCeti.isPolynomialRep_iff_forall_mem_polynomialFunctions` supplies basis independence. |
| Same file:198 | `TauCeti.isRationalRep_iff_forall_mem_rationalFunctions` supplies rational basis independence. |
| `TauCeti/RepresentationTheory/ClassicalGroups/Weight/Decomposition.lean:233` | `TauCeti.IsRationalRep.isInternal_weightSpace` already supplies the group weight-space decomposition, with rationality explicitly present. The new source paragraph is explanatory; the Needs line continues to consume this theorem. |
| `TauCeti/RepresentationTheory/ClassicalGroups/GelfandTsetlin/Dimension.lean:187` | `TauCeti.GTPattern.card_topRow_eq_weylDimension` identifies pattern count with the product, not with a representation's dimension. The latter remains the roadmap's comparison. |
| `TauCeti/RepresentationTheory/ClassicalGroups/WeylDimension/Basic.lean:81` | `TauCeti.DominantWeight.rhoShift` is λ_i−i with zero-based i, agreeing with Molev's one-based λ_i−i+1. |
| Same file:90 | `TauCeti.DominantWeight.rhoShift_strictAnti` supplies strictness of shifted rows, as required by coefficient separation. |
| Same file:256 | `TauCeti.weylDimension_shift` supplies determinant-shift invariance of the product, without asserting the missing representation comparison. |
| `Mathlib/CategoryTheory/Functor/KanExtension/Pointwise.lean:398` | `IsPointwiseLeftKanExtension.isIso_hom` gives the full-faithful unit isomorphism, confirming R05. |

The native GL polynomial predicate is intentionally over ℂ: over a finite field, testing polynomial functions on the finite set GL_n(k) would be too weak. The new dual-number Check is a test of the supplied scheme/coaction comparison, not an illicit evaluation of the native ℂ-point predicate on dual-number matrices. Generic coaction vocabulary alone does not construct the particular polynomial End(V) coaction promised by Layer 0A.

Cross-roadmap searches used `roadmaps grep` and `roadmaps show`, plus the readable main/open-head and board-package files. The changed sections introduce no new supplier or fully qualified Lean declaration. The existing comparisons keep their owners; no notion was moved between roadmaps in this read-only review.

| Roadmap | Resolved contract at this round |
| --- | --- |
| ReductiveGroups, main | `TauCetiRoadmap/ReductiveGroups/README.md:129–248` supplies the point/Hopf/comodule/tangent dictionary; §3A closed stabilizers, Layer 5P Cartier and Layer 6 reductivity remain the cited inputs. §10D at :1933–1947 owns the polynomial End(V) extension, uniqueness and coefficient factorization. This confirms R03. |
| SchurWeyl, main; open revision inspected | `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:323–377` supplies finite Schur/Frobenius/RSK and the two action images/decomposition. Its added open-revision LR targets do not make it an eligible new-roadmap supplier; the matching package gap is still absent (R01). |
| LieHighestWeight, main | `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:370–404` supplies the semisimple weight dictionary; Layers 3–6 supply enveloping/classification/character theory. Layer 9 at :1432 onward keeps the central coordinate and distinguishes general Lie weights from rational group weights. It consumes the GL Schur models/characters, so §3.3 does not use it to prove its own classification. |
| RootSystems, main | `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:218–320` supplies roots/Weyl/chambers; :356–390 supplies the classical integral data and numbering. Its scope is not misrepresented as supplying the representation weight lattice. |
| SpinRepresentations, main | `TauCetiRoadmap/RepresentationTheory/SpinRepresentations/README.md:427–445` fixes the actual form/cover carriers; Layers 3–5 and :777–830 fix the Lie comparison, spin weights and parity. SO retains the integral descent lattice; half-integral weights stay with Spin. |
| LieGroups, main | `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:233–260,275–299,326–357` supplies exponential/one-parameter theory, the finite-dimensional closed-subgroup theorem and connected integral-subgroup comparison. These remain inputs to the unchanged overgroup programme. |
| SemisimpleAlgebras, main | `TauCetiRoadmap/RepresentationTheory/SemisimpleAlgebras/README.md:187–201,234–251` supplies Schur/density under the finite-dimensional/division-endomorphism hypotheses used here. |
| ClassicalGroupsPartII, supplied open head | `TauCetiRoadmap/ClassicalGroupsPartII/README.md:30–60` is the GSp multiplier/lattice continuation; it does not already own the new diagonal-overgroup or ordinary-Kan programmes (R02). |
| TensorProductCombinatorics, supplied open head | `TauCetiRoadmap/TensorProductCombinatorics/README.md:339–350,1257–1272` consumes diagonal-overgroup restrictions in §2.7. It is a downstream use, not a proof input. |

The 11 citation-resolver leads were checked against the 21 current Suggested declarations and are not missing-library findings. No new duplicate ownership was introduced by the diff; the surviving duplicate is R03. Ownership conclusions concern the main and readable open work supplied in the brief, not unspecified external work.

### Headline inventory at this head

| README headline | Acceptance coverage |
| --- | --- |
| Rational complete reducibility, §0.4 | `rationalRep_isSemisimple`, Suggested:54. |
| Unique rational GL classification and Schur identification, §3.3 | `rational_irreducible_classification`, :63; `schurFunctor_iso_irreducible`, :68. |
| Full Schur character and rational Weyl dimension, §§4.2/5.1 | `schur_character`, :76; `rational_dimension`, :85; determinant-twist character is a supplied input. |
| Representation-level GL branching and dimension by patterns, §§6.1/6.5 | `rationalWeyl_branching`, :93, plus rational dimension and native pattern/product equality. |
| SL irreducibility under restriction, §3.4 | `restrict_specialLinear_irreducible`, :188; rationality, finite dimension and irreducibility survive elaboration. |
| SO/Sp classification, characters and branching | Main docstring names missing rational highest-weight models and compatible differentiation carriers. No arbitrary replacement was added. |
| Normalized GL GT basis and Capelli; SO/Spin and symplectic GT operators | Docstring names the missing differentiated action, lowering operators and Mickelsson construction on actual models. The new Capelli Checks do not pretend to implement them. |
| General LR multiplicities | Docstring identifies the absent finite skew LR-tableau carrier; R01 remains about contract registration. |
| All-linear-map Schur comparison | Docstring identifies the Young-image functor/natural column embedding; R02 remains about continuation scope. |
| Native-coordinate/comodule comparison, §0A | Newly and correctly named as not statable on the specified comparison carriers, Suggested:36–39. The generic extension companion must still be deleted (R03). |
| Diagonal overgroups and tensor restrictions, §6A | Actual group/module signatures at Suggested:161,179,188,195; scope finding R02 remains. |
| Mixed contraction, U3 Pieri, antidiagonal coordinate comparison | Existing native-carrier companions and their explicit tests are unchanged; R02/R04 apply as specified. |
| Ordinary Kan comparison | Native unit identities remain padding rather than a test of the substantive coend comparison (R05). |

## Not verifiable

- **Fulton–Harris outside the readable scan:** the CIMAT OCR contains the passages now cited, including §§1.1/6/15.5, but ends within Lecture 20. Review 4's inability to inspect Lectures 24–25 does not affect the revised bibliography, which no longer cites them. The new locators are verified; absent later pages are not certified.
- **Weyl (1939) and Procesi (2007):** unchanged broad references retain review 4's “no legal readable copy found” status after its sources-service searches. They were not guessed or treated as support for the new claims.
- **Goodman–Wallach (2009):** retain review 4's settled uncertified/paywalled status; no renewed request was made.
- **Universal proofs:** the computed tables and successful sorry elaborations do not certify universal proofs of the roadmap targets. Unchanged exhaustive finite tests are explicitly attributed to review 4.

No missing text suspends this review. All six findings are independently reproducible without the unavailable works. No PR file, manifest, dependency pin, merge-order file or GitHub object was modified.

## Source issues

- **Misprint** in milne at §2.10(b), printed p.42 (`milne line 2088`): the source says the last hyperbolic cross-term repeats x_n y_(2n); it should be x_n y_(2n) + x_(2n) y_n, matching its displayed Gram matrix; affects a stated result.
- **Misprint** in milne at §2.10(c), printed p.42 (`milne line 2096`): the source says the symplectic matrices lie in GL_n(R); it should be GL_(2n)(R), matching the displayed matrix and underlying space; affects a stated result.
- **Misprint** in molev at §3 introduction, printed p.28 (`molev line 1191`): the source says the multiplicity space uses gl_(n−1)-highest vectors; it should use g_(n−1)-highest vectors for the chosen B/C/D series; affects a stated result.
