# Review of ClassicalGroups (pull request #1192 at a8f7108)
Folder: `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/`

**Verdict:** needs changes

Seven findings: three P2 and four P3. This is a full review of the README and all six listed Lean files at the specified head. The PR was not edited. Below, unqualified README/Lean basenames refer to the folder above; Mathlib and Tau Ceti paths refer to the pinned libraries. Computed examples test the stated instances, not universal proofs.

## R01 (P2) — Register the LR supplier contract

**Location:** `README.md:232–241`, “What SchurWeyl must provide (gap:skew-tableau-lr-product)”; `README.md:960`, “the supplier gap's finite tableau/product bijection”.

**Claim:** The general LR product is available through a declared supplier gap.

**Witness:** No readable ClassicalGroups `design/plan.json` registers this slug. Main `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:323–350` supplies Frobenius/RSK, not this skew-tableau LR contract. Its open revision cannot supply an extension to an existing roadmap.

**Repair:** Register the matching slug, named supplier and precise section through the package gap mechanism, with a minimal mathematical need, or cite an eligible existing contract. Keep the README and plan synchronized. The intended reading order and product are sound: at (2,3), s_(1)²=25=19+6; in one variable at 2, 4=4+0. Keep horizontal Pieri on `TauCeti.hsymm_mul_diagramSchurPoly`. This finding concerns registration, not the present implementation status of a properly declared gap.

## R02 (P2) — Put the additional programmes in a continuation

**Location:** `README.md:14–15`, “Its diagonal-overgroup and all-linear-map comparisons are specified in Layers 6A and 2A”; Layers 0A/2A/6A and the ordinary-Kan/mixed-contraction/Pieri worked sections.

**Claim:** These new construction programmes extend the existing base roadmap in place.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:169–423` has Layers 0–6, without these programmes. `TauCetiRoadmap/ClassicalGroupsPartII/README.md:30–60` already assigns that continuation a GSp scope.

**Repair:** Keep the base corrections and missing comparisons here; move the genuinely additional programmes and their acceptance signatures into a distinct continuation that states where the base stops. Coordinate its ownership with the existing Part II. Preserve their generality: the empty Schur functor sends the zero arrow to id_ℂ, whereas the degree-one functor sends it to zero. These two tests must survive the move. A scope split can repair this PR; the mathematical programmes themselves are not rejected.

## R03 (P2) — Delete the duplicate generic matrix-monoid extension

**Location:** `PolynomialMonoidExtensionTargets.lean:24–36`, “∃ Φ : Representation ℂ (Matrix (Fin N) (Fin N) ℂ) W”.

**Claim:** This theorem tests the remaining native-coordinate/comodule comparison.

**Witness:** Main `TauCetiRoadmap/ReductiveGroups/README.md:1933–1947` already owns the polynomial End(V) extension, its uniqueness and coefficient factorization. The companion mentions neither that supplied action nor a comparison map.

**Repair:** Delete the duplicate theorem. Keep only the genuine comparison promised by §0A, specifying both the supplied and native presentations; name it as not statable while its comparison carriers are missing. For N=1, weight 2 sends 2 to 4 and 0 to 0 in both presentations; degree zero sends 0 to 1. The present statement merely reasserts existence for those same actions and does not compare presentations.

## R04 (P3) — Apply the required Lean form to every retained companion

**Location:** the first 1–4 lines of all five companion files; `U3PieriTargets.lean:11`, “set_option autoImplicit false”.

**Claim:** All listed Lean files obey the acceptance-file rules.

**Witness:** Every companion imports Mathlib submodules instead of `import Mathlib`. U3 retains an option override. Kan and mixed-polynomial definitions lack declaration docstrings; companion module docstrings lack the required headline inventory and README name correspondence.

**Repair:** For retained files use one `import Mathlib` followed by used TauCeti modules, remove the override, and supply the required documentation and name correspondence. Remove files made unnecessary by R02/R03/R05. This repair was tested on scratch copies of all five companions: all elaborate under default options, exit 0. For the mixed definition, document the actual unnormalized operator: Δ(x₁²y₁³)=6x₁y₁², not x₁y₁². The green gate does not waive these directly observed violations.

## R05 (P3) — Delete the Kan acceptance padding

**Location:** `EndomorphismKanExtension.lean:48–66`, “theorem restrictionIso_hom”; “Iso.refl _”.

**Claim:** These declarations add acceptance tests for the roadmap's deep conclusions.

**Witness:** `restrictionIso_hom` is `rfl`; `unit_isIso` is one application of `IsPointwiseLeftKanExtension.isIso_hom`; `colimitModel` is `Iso.refl`. The full/faithful instances unpack identity hom-set maps.

**Repair:** Delete these acceptance declarations and definitions used only to support them, just as padding is deleted from `Suggested.lean`; do not prove them in place. Keep the native citations and substantive coend comparison in the README. At X=ℂ, both unit coordinates send w to [id,w], and evaluation returns w; the identity records no additional comparison. The native lemma is at `Mathlib/CategoryTheory/Functor/KanExtension/Pointwise.lean:398`.

## R06 (P3) — Finish exact locators and the source manifest

**Location:** `README.md:274–294`, `585–606`, `626–632`, `1212–1241`, and `2084–2107`; for example, “The corresponding statement for SLₙ”.

**Claim:** Every claim has a precise source locator and the bibliography is recorded.

**Witness:** §§0.2/0.3/3.1/3.2/3.4/6.5 have no claim-level source locator; §6.6 gives an equation without its page. There is no `sources.toml`. Broad lecture lists do not locate individual theorems.

**Repair:** Attach theorem/section and printed-page locators, distinguishing direct source theorems from combinations of supplied results. Record each work once in `sources.toml`, with legal provenance and the appropriate verified/uncertified status. Use the source ledger below, without copying passages. For rational twists retain the transport argument: weight (1,−1) has character 19/6 at (2,3), whereas shape (2) has character 19. Polynomial character references alone need that extra twist. Missing text is reported below rather than silently certified.

## R07 (P3) — Give the Capelli definition its discriminating Checks

**Location:** `README.md:1223–1241`, “Define generator (k,r) … to be its coefficient of u^(k−r)”.

**Claim:** Each definition has at least three discriminating Checks.

**Witness:** §6.6 defines the ordered determinant and coefficient operators, but supplies no three-Check block testing their column shift, coefficient indexing and determinant-shift normalization. The layer's generic Examples do not perform these tests.

**Repair:** Add explicit Checks for k=1, weight −1: A₁(u)=u−1; k=2, weight (2,1): A₂(u)=u(u+2), with coefficients 2 and 0; and common shift +1: A₂ becomes (u+3)(u+1)=A₂(u+1). The unshifted wrong model gives coefficients 3 and 2 in the second test and is excluded. Also retain rank-zero generator count 0. These calculations agree with Molev (2.21)–(2.22); no acceptance-file padding is needed.

## Verified sound

### Previous findings checked first

This comparison is against `PRREVIEW-ClassicalGroups_r3`, at 402b5cb, finding by finding. Quotations are from the new head. No supplied repair report marked these findings “not actionable in this package”.

| Previous finding | New-head passage and disposition |
| --- | --- |
| R01: missing character/dimension ownership | README:174–212 distinguishes native special cases; §4.2 says “Prove `schur_character`”; §5.1 states the actual finrank comparison. **Repaired.** The native one-row/one-column results are no longer mistaken for the general result. |
| R02: absent statable headlines | Suggested:72 `schur_character`; :81 `rational_dimension`. **Repaired.** Both elaborate and cover shape (2,1), negative determinant shifts, empty ranks and tall-shape vanishing where applicable. |
| R03: unregistered LR gap | README:232 “What SchurWeyl must provide (gap:skew-tableau-lr-product)”. **Not repaired:** R01 above. |
| R04: new programmes in the base | README:15 “Layers 6A and 2A”. **Not repaired:** R02 above. |
| R05: duplicate monoid extension | PolynomialMonoidExtensionTargets:24 “theorem polynomial_monoid_extension”. **Not repaired:** R03 above. |
| R06: unspecified orthogonal branching/basis | README:1084–1144 supplies both consecutive inequalities; :1245–1313 supplies the source-coordinate embeddings and orthogonal operators, citing “Theorems 4.1–4.4”. **Repaired.** SO₃↓SO₂ gives three weights; SO₄↓SO₃ gives 3+1. Source formulas and the even-to-odd factor of i were rechecked. |
| R07: companion form | U3PieriTargets:11 “set_option autoImplicit false”; all five companion import blocks remain. **Not repaired:** R04 above. |
| R08: Kan padding | EndomorphismKanExtension:61 “:= rfl”, :66 “Iso.refl _”. **Not repaired:** R05 above. |
| R09: exact locators/manifest | README:299 “Milne, Theorem 22.42, printed pp. 478–479”; :1038 gives Macdonald examples/pages. **Partly repaired:** source coverage improved, but R06 remains. |
| R10: definition Checks/dependencies | Hodge, coend and mixed-contraction sections now contain explicit normalization tests and dependencies. **Partly repaired:** e.g. §6.6 still lacks the required Checks (R07). |

### Gate, signatures and padding probes

The worker's gate for this exact head reports `OK`, every counter zero, including targeted build, dependency check and outside-folder checks. The prescribed outside-folder diff is empty. The family index was read. The independently rerun dependency command returned:

```text
depcheck: 204 roadmaps, 1493 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line appeared. The citation resolver’s 11 library-name leads all resolve to this roadmap’s own `DiagonalOvergroups` declarations in Suggested:109–191; none is a missing library supplier. The gate does not detect the directly observed companion violations above. Main reference: `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`; Mathlib pin: `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin: `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The manifest and checkouts agree.

Direct `lake env lean` on `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/Suggested.lean` exits 0 with exactly **10 sorry warnings** and no other diagnostics. Scratch copies appended `#check @name` for **all 45 declarations**: 21 in Suggested and 24 across the five companions. All six runs exit 0. Rationality, finite dimension, simplicity, the scalar-character condition, the complex-direction condition, Kan universes, the polynomial extension's finite basis, and the contraction bidegree/rank hypotheses survive elaboration. No binder repair was needed or made.

For all **15 sorried theorems**, scratch probes tried `simp`, `rfl` and `infer_instance`, counting success only when the tactic closed the goal. None closed. The fallback admission is not a proof. Candidate native one-lemma routes were checked by reading their actual pinned statements; the surviving Kan padding already exhibits its one-tactic proofs in the file. All five companion form-repair copies also elaborate after replacing Mathlib subimports by `import Mathlib` and deleting the option override. Lean invocations were sequential and have finished.

### Headline inventory

| README headline | Acceptance coverage |
| --- | --- |
| Rational complete reducibility, §0.4 | `rationalRep_isSemisimple`, Suggested:50. |
| Unique rational GL classification and Schur identification, §3.3 | `rational_irreducible_classification`, :59; `schurFunctor_iso_irreducible`, :64. The height guard is present only where needed. |
| Full Schur character, rational character and Weyl dimension, Layers 4–5 | `schur_character`, :72, and `rational_dimension`, :81; rational character follows through the supplied determinant twist. |
| GL branching and dimension by patterns, §6.1/6.5 | `rationalWeyl_branching`, :89, plus rational dimension and native pattern-count identity. |
| SO/Sp classification/characters/branching, §§3A/6.2 | Main docstring names the missing rational highest-weight models and compatible differentiation interface; no sorry'd model is substituted. |
| Normalized GL GT basis and Capelli, §§6.4/6.6 | Docstring names missing differentiated action and source-normalized lowering operators. |
| SO/Spin and symplectic GT operators, §§6.7/6B | Docstring names the rational models and Mickelsson-operator deficiency. These are real constructions, not arbitrary scalar functions. |
| General LR representation multiplicity, §4.1 | Docstring names the missing finite skew LR-tableau carrier; registration still needs R01. |
| All-linear-map Schur comparison, §2A | Docstring names the missing Young-image functor/natural column embedding. Additional scope needs R02. |
| Connected complex diagonal overgroups and tensor restriction, §6A | Suggested:157, :175, :184, :191 state the actual groups/modules. Additional scope needs R02. |
| Mixed contraction and U3 Pieri | Actual polynomial-submodule and rational-Weyl signatures in their companions; main docstring points to them. R02/R04 apply. |
| Coordinate antidiagonal comparison | Two actual matrix statements in AntidiagonalTargets; no arbitrary form stand-in. R04 applies. |
| Matrix-monoid and ordinary Kan programmes | Companions exist, but generic duplicate/padding must be removed (R03/R05). |

### Adversarial mathematics

Every section and its API/Checks was read, including unchanged text. The following rows record the sampled targets, the headline theorems, definitions/conventions used by them, and the statements touched by findings. “Pass” means the displayed instance agrees; it does not assert a universal proof. Characteristic, connectedness and nonvanishing counter-controls are outside the stated hypotheses and explain their necessity. Characteristic-p, DVR and nonreduced inputs are not silently admitted into statements fixed over ℂ.

Exact arithmetic enumerated GT patterns and tableaux, checked the contraction identities on **1,725 monomials** (N=2,3,4; a,b=0,…,3), and compared full weight dictionaries for **25 U3 products** (a,b=0,…,4). The other displayed matrix, weight and coefficient calculations are small direct computations.

| Statement / convention | Instances | Computed values on the two sides / wrong model | Result; change |
| --- | --- | --- | --- |
| §0.1 standard action/trace | diag(2,3); n=0 | Trace=2+3=5; zero-dimensional trace=0 | Pass; none |
| §0.1 dual convention | diag(2,3) | Dual trace=1/2+1/3=5/6, versus standard 5 | Pass; inverse, not transpose-only action |
| §0.2 SL volume invariant | diag(2,1/2); diag(2,3) | Top wedge scalar=1 and 6, respectively | Pass; second is excluded from SL |
| §0.2 O form versus determinant | diag(−1,1) | AᵀA=I but det A=−1 | Pass; O need not preserve volume |
| §0.2 Sp form | diag(t,t⁻¹), t=2 | AᵀJA=J; determinant=1 | Pass; alternating pairing preserved |
| §0.2 small groups | n=0,1 | O₀={1}; O₁={±1}; SO₁={1} | Pass; rank-zero/one split retained |
| §0.3 rational versus polynomial | GL₁ weight −1 at t=2; conjugation at i | t⁻¹=1/2, not a polynomial character; conjugation gives −i versus algebraic weight-one value i | Pass; rationality restricts abstract actions |
| §0.3 basis invariance | Conjugate diag(2,3) by swap | Entries change to diag(3,2); trace remains 5, determinant 6 | Pass; existence of polynomial entries basis independent |
| §0.4 semisimplicity | GL₁ weights −1,1; zero module | Dimension 2=1+1; zero module 0 is empty sum | Pass; zero not a simple object |
| §0A extension | GL₁ weights 2,0 at 0 and 2 | Degree 2: 0,4; degree 0: 1,1 | Pass mathematics; duplicate R03 |
| §1.1 tensor action/character | diag(2,3), d=2; d=0 | Trace 25=5²; empty tensor trace 1, including n=0 | Pass; 0⁰ convention is tensor unit |
| §1.2 symmetric character | n=2,k=2 at (2,3) | 4+6+9=19=h₂(2,3) | Pass; none |
| §1.2 exterior character | n=2,k=2,3 | 6=e₂(2,3); 0=e₃(2,3) | Pass; height vanishing |
| §1.3 tensor-square splitting | (2,3); n=1,t=2 | 25=19+6; 4=4+0 | Pass; source and native splitting agree |
| §1.3 projector denominator | char 0; char 2 control | (1+swap)/2 is a projector over ℂ; 2=0 in F₂ has no inverse | Pass; do not generalize without 2 invertible |
| §2.1 permutation image | S₃ on (ℂ¹)⊗³; transposition on e₁⊗e₂⊗e₁ | Image algebra dimension 1 versus group algebra 6; latter tensor goes to e₂⊗e₁⊗e₁ | Pass; image, not faithful group algebra, is used |
| §2.2 row/column Schur images | Shapes (2), (1,1), rank 2 | Dimensions 3 and 1; characters 19 and 6 | Pass; shape and transpose not interchangeable |
| §2.3 Schur–Weyl decomposition | n=2,d=3 | 8=4·1+2·2; height-three term 0 | Pass; Specht multiplicity retained |
| §2A all-linear-map functoriality | Degree 2 scalars 2,3; zero map | S(6)=36=4·9; S(0)=0 | Pass; new scope R02 |
| §2A nonadditivity/empty shape | Scalars 2+2; zero arrow | S²(4)=16 versus S²(2)+S²(2)=8; S_empty(0)=1 | Pass; no additive-source claim |
| §2A column embedding | Shape (2,1), n=3 | Highest tensor e₁⊗(e₁∧e₂) nonzero; Schur dimension 8 versus ambient 3·3=9 | Pass; proper image distinguished |
| §3.1 torus/weight spaces | Standard rank 2; det⁻¹ | Weight values 2,3; weight (−1,−1) gives 1/6 | Pass; integer lattice includes negative weights |
| §3.2 dominance/poly criterion | (1,−1),(0,1), empty | First dominant but nonpolynomial; second fails dominance; empty polynomial, dimension 1 | Pass; no out-of-range last coordinate |
| §3.3 rational classification | Rank 1 weights −1,0,1 at 2 | Characters 1/2,1,2 distinguish labels | Pass; central shift retained |
| §3.3 Schur identification | (2,1), n=2; (1,1), n=1 | Valid dimension 2; tall Schur image 0 cannot be simple | Pass; height hypothesis necessary |
| §3.4 SL classification | GL₂ weights (2,1),(1,0) | At diag(2,1/2), both traces 5/2; at diag(2,3), traces 30 and 5 | Pass; quotient by common shift only after SL restriction |
| §3.5 disconnected O extension | O₁ and SO₁ | Two O₁ characters restrict to the single trivial SO₁ character | Pass; component action cannot be omitted |
| §3A isotropic basis | u=e₁+i e₂, v=(e₁−i e₂)/2 | B(u,u)=B(v,v)=0; B(u,v)=1 | Pass; factor 1/2 fixed |
| §3A reverse adjoint | n=2, A=diag(2,3) | A^♯=diag(3,2); (A^♯)^♯=A, whereas conjugating would change imaginary entries | Pass; bilinear, not Hermitian |
| §3A orthogonality equivalence | A=diag(2,1/2); A=diag(2,3) | AᵀJA=J and AA^♯=I; control gives 6J and 6I | Pass both directions on positive/negative instances |
| §3A SO/Spin lattice | SO₃ and Spin₃ | Integral weight 1 has dimension 3; spin weight 1/2 has dimension 2 and does not descend | Pass; group lattice guards retained |
| §3A low-rank SO | SO₂ weight −1; SO₄ standard | Torus value 1/2 at 2; SO₄ dimension 4 | Pass; not forced into simple D₁/D₂ conventions |
| §3A.2 group/Lie fixed spaces | Trivial module; disconnected sign | Trivial: dimensions 1=1; sign: group fixed 0, Lie fixed 1 | Pass; connectedness excludes counterexample |
| §3A.2 char-zero requirement | G_m weight 3 in char 3 | Differential 3=0; at 2, character 2³=2≠1 | Pass; char-p counterexample excluded |
| §3A.2 stabilizer tangent | Dual numbers 1+εX on U | Preservation iff XU⊆U, since coefficient of ε is Xu | Pass; first-order law identifies tangent, not just points |
| §3A.3 primitive symplectic wedge | Sp₄ Λ² | Dimension 6=5+1; e₁∧e₂ contracts to 0, paired e₁∧f₁ contracts nontrivially | Pass; zero contraction map excluded |
| §3A.3 Hodge normalization | Middle wedge, ranks r=1,2,3,4 | Highest eigenvalues −i,1,−i,1; opposite eigenvalues i,−1,i,−1; squares −1,1,−1,1 | Pass; orientation/rescaling discriminated |
| §3A.3 Cartan component | sl₂ standard⊗standard | Highest weight 2 gives dimension 3 inside total 4; complement dimension 1 | Pass; highest component not whole tensor product |
| §4.1 LR product/height | s₁² at (2,3), at one variable 2 | 25=19+6; 4=4+0 | Pass math; availability R01 |
| §4.1 empty/failed containment | Empty shape; wrong size | Unit count 1; failed size/containment count 0 | Pass; finite independent tableau definition required |
| §4.1 bialternant convention | Coincident eigenvalues (1,1), shape (2) | Polynomial value 3; pointwise numerator/denominator 0/0 | Pass; polynomial divisibility precedes evaluation |
| §4.2 full Schur character | (2,1), n=2, t=(2,3) | Two tableau monomials 12+18=30; representation det⊗standard trace 6·5=30 | Pass; restored headline covers nonspecial shape |
| §4.2 empty/tall/zero rank | Empty at rank 0; nonempty at rank 0; (1,1) at rank 1 | Character and Schur values 1=1, 0=0, 0=0 | Pass; no unnecessary height guard |
| §4.3 Laurent twist | Weight (1,−1), t=(2,3) | (4+6+9)/6=19/6 | Pass; negative determinant handled |
| §5.1 Weyl dimension | (), (−1), (2,1), (2,1,0), (1,0,−1) | Module/test-model dimensions 1,1,2,8,8; exact product 1,1,2,8,8 | Pass; denominators j−i positive |
| §5.1 evaluation at one | Shape (2,1), rank 3 | 8 tableaux = Schur value 8 = 2·2·2 | Pass; no analytic 0/0 specialization |
| §6.1 GL branching | Top (2,1,0) | Lower dimensions 2+1+3+2=8 | Pass; all four interlacing rows |
| §6.1 signed branching | GL₂ top (1,−1) to GL₁ | Weights −1,0,1, trace 1/2+1+2=7/2 | Pass; partitions alone would miss −1 |
| §6.1 rank-zero endpoint | GL₁ weight −1 to GL₀ | One empty lower row, dimension 1=1 | Pass; block inclusion still defined |
| §6.2 B→D consecutive | SO₃ weight 1 to SO₂ | Weights −1,0,1, dimensions 1+1+1=3 | Pass; endpoint absolute value correct |
| §6.2 D→B consecutive | SO₄ vector to SO₃ | Dimensions 3+1=4 | Pass; last absolute value correct |
| §6.2 wrong orthogonal chain control | SO₅ vector to SO₃ | 5=3+1+1, trivial multiplicity 2 | Pass; not confused with consecutive multiplicity-free chain |
| §6.2 symplectic rank drop | Sp₄ standard to Sp₂ | 4=2+1+1; zero lower weight has multiplicity 2 | Pass; explicitly not multiplicity-free |
| §6.3 pattern order | Top (2,1,0), middle (2,0), bottom 1 | 2≥2≥1≥0≥0 and 2≥1≥0; shifted middle 2,−1 distinct | Pass; nonzero denominator difference 3 |
| §6.4 algebraic GT action | That pattern raised in middle position 2 | E₂₃ coefficient 1; reverse E₃₂ coefficient 1/2; product 1/2 | Pass; cannot rescale both to integer unit coefficients |
| §6.4 invalid move/shift | Raise middle first entry 2 to 3; shift every row +1 | Invalid vector 0; off-diagonal coefficients unchanged, E_ii increases by 1 | Pass; common differences determine coefficients |
| §6.4 norm/unit endpoint | Trivial top row, empty row | Highest vector norm 1; empty lowering product 1 | Pass; normalization names actual vector |
| §6.5 pattern dimension | Tops (), (−1), (2,1), (2,1,0), (1,0,−1) | Pattern counts 1,1,2,8,8 = dimension product values | Pass; native count alone is not module comparison |
| §6.6 Capelli coefficients | k=2, λ=(2,1) | Shifted entries (2,0); A₂=u²+2u, e₁=2,e₂=0; wrong unshifted gives 3,2 | Pass formula; add Checks R07 |
| §6.6 determinant shift/rank | λ→λ+(1,1); n=0,3 | (u+3)(u+1)=A₂(u+1); generator counts 0 and 6 | Pass; add explicit Check R07 |
| §6.6 separation | Rows (2,1),(2,0) | Coefficient pairs (2,0) versus (1,−2) | Pass; shifted row recovered, not scalar Lie center |
| §6.7 orthogonal action | SO₃ standard basis (u,w,−v) | F₂₁: u→w→−v→0; F₁₂ on this ordered list: 0,u,w | Pass; source-normalized signs agree |
| §6.7 even→odd embedding | q=(u+v)/√2, w'=i(u−v)/√2 | B(q,q)=B(w',w')=1, B(q,w')=0 | Pass; dropping i would give −1 for second norm |
| §6.7 source operator convention | Native generator vs source difference | w'=i(u−v)/√2 implies native short-root generator = i times source difference | Pass; complex coordinate comparison explicit |
| §6B type-C diagonal shift | Nodes g₁=−1/2,g₂=−5/2, evaluate at −5/2 | Interpolation coefficients (0,1); omitting +1/2 gives (11/32,21/32) | Pass; wrong convention excluded |
| §6B symplectic signed matrices | F₁₁ in rank 2 | e₂→−e₂ and f₂→f₂; infinitesimal equation XJ+JXᵀ=0 | Pass; signed matrix unit fixed |
| §6B multiplicity rows | Sp₄ standard | Over μ=0 two rows; over standard μ one row: 2·1+1·2=4 | Pass; multiplicity vectors necessary |
| §6A diagonal subgroup | T=I+E₁₂; pair (T,I) | (T,T) belongs; (T,I) does not | Pass; wrong full subgroup excluded |
| §6A scalar-diagonal subgroup | (2I,I); (T,I) | First belongs with scalar 2; second has nonscalar ratio and fails | Pass; distinguishes from determinant-equal |
| §6A determinant ratio/kernel | D=diag(2,1), T=I+E₁₂ | r(D,I)=2, r(I,D)=1/2, r(T,I)=1, r(2I,I)=4 | Pass; quotient direction fixed |
| §6A scalar parameter map | (T,2); rank 1 (3,2/3); rank 0 | Images (2T,T), (2,3); in rank 0 every scalar has same image | Pass; positive-rank injectivity guard |
| §6A dimensions/classification | n=2 | dim Δ=4, H_sc=5, H_det=7, P=8 | Pass; four distinct candidates |
| §6A Δ not normal in P | D,T as above | DTD⁻¹=I+2E₁₂≠T | Pass; coset space not quotient group |
| §6A homogeneous-space map | (g,h)→gh⁻¹, multiply right by (k,k) | (gk)(hk)⁻¹=gh⁻¹; at (D,I), value D | Pass; right-coset convention |
| §6A normal kernel | H_det, first-factor kernel | det g=1; T included, D excluded | Pass; kernel is SL₂ |
| §6A normalizer | Conjugate T by D | Ratio acquires E₁₂ coefficient 2 instead of 1; D noncentral | Pass; normalizer of diagonal uses scalar ratio |
| §6A matrix Lie lattice | gl₂ conjugation submodules | Dimensions 0,1,3,4; [E₂₁,E₁₂]=diag(−1,1) excludes lone E₁₂ line | Pass; native Lie inputs apply |
| §6A trace splitting negative control | rank 2 over F₂ | trace I=0; scalar line lies in sl₂ | Pass; complex characteristic-zero setting necessary |
| §6A complex tangent hypothesis | Compact scalar-ratio circle, X=(iI,0) | At real t, determinant ratio e^(2it) has modulus 1; for iX, ratio e^(−2t) generally does not | Pass; real closed subgroup excluded by hcomplex |
| §6A exponential normalization | X=E₁₂, X²=0 | exp(tX)=I+tX, determinant 1 | Pass; realDirections genuinely tests all t |
| §6A intersection/product | n=2; (diag(4,1),I) | Intersection scalar has λ²=1, two components; factor (2I,I)(diag(2,1/2),I) equals given pair | Pass; connected factors can have disconnected intersection |
| §6A small ranks | n=1; n=0 | H_det=Δ, H_sc=P; rank 0 all four trivial | Pass; theorem assumes n≥2 |
| §6A external tensor action | Rank-one weights −1,2 at (3,2) | External scalar 3⁻¹·2²=4/3; diagonal at 3 gives 3 | Pass; factor order fixed |
| §6A scalar restriction lattice | Same weights at scalar map (3,2) | Pair (6,3) acts by 6⁻¹·3²=3/2=2⁻¹·3 | Pass; invertible scalar preserves same subspaces |
| §6A SL irreducibility | GL₂ standard; rank-one det powers | SL₂ standard remains dimension 2 simple; SL₁ restriction dimension 1 simple | Pass; zero module excluded by irreducibility |
| §6A equal-det tensor irreducibility | Two GL₂ standards | H_det restriction has independent SL₂×SL₂ action, dimension 4; diagonal restriction splits 3+1 | Pass; distinction from diagonal is substantive |
| Ordinary Kan coend relation | X=ℂ, F(a)=a² | [6,1]=[3,4], evaluation 36=36 | Pass; relation direction fixed |
| Ordinary Kan nonadditivity | f=2 versus 1+1 | [2,1] evaluates 4; [1,1]+[1,1] evaluates 2 | Pass; ordinary, not enriched, extension |
| Ordinary Kan X=0 | Constant value ℂ; Y=0 or ℂ | Each indexing category has one object; extension value dimension 1 in both cases | Pass; not required to vanish at zero |
| Ordinary Kan restriction | X=ℂ | w→[id,w]→w; scalar 3 returns 3 | Pass; one-tactic identities are padding R05 |
| Mixed bidegree/operator | x₁²y₁³ | Degree (2,3); Δ=6x₁y₁² of degree (1,2) | Pass; normalized contraction would give 1 instead of 6 |
| Mixed radius | N=2 | r=x₁y₁+x₂y₂; Δr=2 | Pass; zero map/one summand excluded |
| Mixed commutator | N=2, degree (2,3) | Δ(rf)−rΔf=7f=(N+a+b)f | Pass; signs and Euler weights fixed |
| Mixed harmonic kernel | x₁y₂, x₁y₁, x₁² | Δ values 0,1,0 | Pass; actual kernel, no arbitrary harmonic predicate |
| Mixed finite right inverse | N=2,a=b=1,f=x₁y₁ | S(f)=rf/4−r²/24; ΔS=(4f+r)/4−6r/24=f | Pass; all denominators positive |
| Mixed exact arithmetic test | N=2,3,4; a,b=0,…,3 | 1,725 monomials: every ΔS(f) coefficient equals f; every commutator coefficient equals (N+a+b)f | Pass; no residual coefficient |
| Mixed decomposition | N=2,3, bidegree (1,1) | 4=3+1; 9=8+1 | Pass; harmonic plus radial summands |
| Mixed factorial adjoint | 1 and x₁y₁ | Inner products for Δ and r both 1 | Pass; multiplication/differentiation normalization agrees |
| Mixed highest vector | x₁^m y_N^n, N≥2 | Δ=0 and all raising operators give 0 | Pass; weight (m,0,…,−n) retained |
| Mixed harmonic dimension | N=3;(m,n)=(1,1),(2,1),(3,2),(0,2) | Polynomial differences 8,15,42,6 = Weyl products 8,15,42,6 | Pass; pure boundary included |
| U3 weight multiplicities | H₁₁ weight 0; H₂₁ weight (0,0,1) | Multiplicities 2 and 2; wrong central total gives 0 | Pass; central coordinate and internal multiplicity retained |
| U3 symmetric-square Pieri | (a,b)=(0,0),(1,1),(3,2) | Summand dimensions [6], [3,6,15,24], [10,27,35,35,64,81]; sums 6,48,252=6 dim H_ab | Pass; boundary guards remove terms |
| U3 full character test | 25 pairs a,b=0,…,4 | Every weight coefficient in H_ab·Sym² equals the summed six guarded characters | Pass; stronger than dimension-only test |
| U3 multiplicity negative control | a=b=0, μ=(2,0,0) or (1,1,0) | Hom dimensions 1 and 0; horizontal increments require x₂=x₃=0 | Pass; no false vertical-strip term |
| U3 det exponent/Hom scaling | All summands; rescale a Hom generator by 2 | Central total a−b+2 on both sides; inverse comparison rescales by 1/2 | Pass; unmarked scalar is not a canonical map |

### Lean declaration cross-check

All 45 elaborated declarations are accounted for below. Native aliases/definitions have real bodies. The table records independent positive/negative or small-rank tests, including the section hypotheses; it is not a list of additional Lean targets.

| Declaration (file:line) | Values compared | Result |
| --- | --- | --- |
| Suggested:50 rationalRep_isSemisimple | GL₁ weights ±1: 2=1+1; zero: 0=empty sum | Pass |
| :59 rational_irreducible_classification | Rank-one −1,0,1 at 2: 1/2,1,2; unique empty rank-zero label | Pass |
| :64 schurFunctor_iso_irreducible | Rank-two (2,1): dimensions 2=2; tall (1,1) in rank one excluded | Pass |
| :72 schur_character | (2,1) at (2,3): 30=30; tall: 0=0; empty: 1=1 | Pass |
| :81 rational_dimension | Weights (2,1,0),(1,0,−1): 8=8 | Pass |
| :89 rationalWeyl_branching | 8=2+1+3+2; signed rank-two weights −1,0,1 | Pass |
| :103 G | n=0 one unit; n=1 nonzero scalars, 0 excluded | Pass |
| :106 P | Rank-one pair (2,3) admitted; zero first coordinate excluded | Pass |
| :109 diagonalMap | T→(T,T); product DT maps to (DT,DT) | Pass |
| :113 diagonal | (T,T) yes; (T,I) no | Pass |
| :116 determinantRatio | (D,I)→2; (I,D)→1/2 | Pass |
| :122 determinantEqual | (T,I) yes with ratio 1; (D,I) no with ratio 2 | Pass |
| :125 scalarDiagonalMap | (T,2)→(2T,T); rank-zero scalar kernel entire ℂˣ | Pass |
| :145 scalarDiagonal | (2I,I) yes; (T,I) no | Pass |
| :148 pairExp | (tE₁₂,0)→(I+tE₁₂,I); at 0 identity pair | Pass |
| :152 realDirections | (iI,0) in circle's real directions; (−I,0) fails since e^(−2) not unit modulus | Pass |
| :157 connected_complex_overgroup | n=2 dimensions 4,5,7,8; circle excluded by complex-direction hypothesis | Pass instances |
| :168 external | Weights (−1,2) at (3,2): 4/3 | Pass |
| :175 scalarRestriction_exists_orderIso | At (3,2) scalar-coordinate input, action 3/2=2⁻¹·3; invariant subspaces unchanged | Pass |
| :184 restrict_specialLinear_irreducible | Standard rank 2 stays simple dimension 2; rank-one characters stay simple dimension 1 | Pass |
| :191 external_determinantEqual_irreducible | Two standards: simple dimension 4 on SL₂×SL₂; diagonal gives 3+1 | Pass |
| Antidiagonal:14 gram | n=2 J=[[0,1],[1,0]], J²=I; n=0 empty identity | Pass |
| :17 reverseAdjoint | diag(2,3)→diag(3,2); iI→iI, not −iI | Pass |
| :21 reverseAdjoint_reverseAdjoint | diag(2,3)→diag(3,2)→diag(2,3); empty→empty | Pass |
| :28 orthogonal_iff_mul_reverseAdjoint | diag(2,1/2): J=J and I=I; diag(2,3): 6J≠J and 6I≠I | Pass |
| EndomorphismKanExtension:17 inclusion | One object→X, scalar 2→endomorphism 2, 2·3→6 | Pass |
| :21 inclusion_full | Hom 2 has preimage 2 | Pass; boilerplate |
| :26 inclusion_faithful | Images of 2 and 3 differ; image equality 2=2 implies original equality | Pass; boilerplate |
| :31 pointwise_exists | X=0 indexing singleton gives colimit ℂ, dimension 1 | Pass; native instance |
| :38 extension | X=ℂ, F(a)=a²: evaluation [3,4]→36 | Pass |
| :43 unit | w→[1,w], evaluation w | Pass |
| :48 unit_isIso | Unit followed by evaluation: 3→3 | Pass; native lemma, R05 |
| :52 restrictionIso | Inverse evaluation sends [3,4]→36; unit returns equivalent [1,36] | Pass; R05 |
| :58 restrictionIso_hom | Both maps send 3→[1,3] | Definitional padding, R05 |
| :62 colimitModel | Same colimit on both sides; identity sends [3,4] to [3,4] | Definitional padding, R05 |
| :68 matrixInclusion | n=0 zero module; n=1 End(R) acting on R with 2→2 | Pass; no finite-dimensional output assertion |
| MixedSymmetric:17 Polynomial | N=1 variables x₁,y₁; N=0 constants only | Pass |
| :19 variableWeight | x₁ weight (1,0); y₁ weight (0,1) | Pass |
| :22 bidegree | x₁²y₁³ in (2,3), not (3,2); zero belongs to every homogeneous submodule | Pass |
| :25 delta | x₁²y₁³→6x₁y₁²; x₁y₂→0 | Pass |
| :30 radius | N=2: x₁y₁+x₂y₂, Δr=2; N=0 r=0 | Pass |
| :35 contraction_surjective | N=2,f=1: q=1/2, Δ(rq)=1; N=0 impossible for f=1 and excluded | Pass; N≥2 retained |
| PolynomialMonoidExtension:24 polynomial_monoid_extension | Weight 2 at 0,2 gives 0,4; constant action gives 1,1 | True instance, duplicate R03 |
| U3PieriTargets:20 u3HarmonicHighestWeight | (a,b)=(2,1) gives (2,0,−1), decreasing; (0,0) gives (0,0,0) | Pass |
| :27 u3_symmetricSquare_pieri_multiplicity | a=b=0: μ=(2,0,0) gives 1, μ=(1,1,0) gives 0; 25 full-character comparisons | Pass |

### Source sample, checked against the text

All seven bibliography works were requested through the sources service. Four legal texts were readable, one partially: Molev v2 on arXiv, Milne's author edition, Macdonald's Berkeley course copy, and the OCR of the CIMAT Fulton–Harris scan. Source line numbers below refer to those service extractions. The roadmap explicitly cites Molev v2, so its preprint numbering is used rather than assumed to match another edition. No additional target is flagged “unverified” in the README. All **15 seeded targets** are covered below; unavailable portions are distinguished from verified supporting passages.

| Seeded target | Text and precise support / limitation |
| --- | --- |
| 0.2 subgroups and invariants | Native definitions were checked at the pin, including transpose rather than complex conjugation. The target has no exact source locator to certify. Its volume/form claims pass the computed tests above; attach a locator (R06). |
| 0.3 rational/polynomial | Native predicates/basis invariance checked at Rational:118,139,178,198. Macdonald Appendix A(8.2), p.162 (`macdonald line 6342`–6376), supports polynomial classification in the characteristic-zero algebraically closed setting, not by itself the coordinate/comodule comparison. No exact claim-level locator is supplied for that comparison (R06). |
| 0.4 complete reducibility | Milne Theorem 22.42, pp.478–479, `milne line 19859`–19877: connected reductive groups in characteristic zero have semisimple finite-dimensional rational representations. GL meets those hypotheses. Coordinate/comodule transport is a separate input. |
| 1.1 tensor power | Fulton–Harris §1.1, pp.4–5, `fulton-harris line 350`–400: tensor action and contragredient dual. Iteration and trace multiplicativity yield the displayed power formula; d=0 is the unit. |
| 1.3 first decomposition | Fulton–Harris Theorem 6.3(2), pp.77–78, `fulton-harris line 1990`–2035, specializes to the two d=2 partitions. (6.1)/(6.2) identifies their symmetric/exterior realizations. The projectors additionally use 2 invertible. |
| 3.1 torus/weights | Native rational weight-space decomposition checked. Fulton–Harris §15.1, pp.214–215, `fulton-harris line 5015`–5030, gives the diagonal Cartan/chamber dictionary in the SL setting; it does not remove GL's central coordinate. The target needs its exact group-level locator (R06). |
| 3.2 dominant weights | Fulton–Harris §15.5/Proposition 15.47, pp.231–232, `fulton-harris line 5377`–5435, retains decreasing integer GL tuples and determinant twists. Empty rank requires the stated separate convention. No false “last coordinate” evaluation at rank zero remains. |
| 3.3 highest-weight classification | Fulton–Harris Theorem 6.3, pp.77–78, `fulton-harris line 1990`–2035, supplies Schur images and height restriction; Proposition 15.47, p.232, `fulton-harris line 5377`–5435, supplies rational GL labels/determinant twists. These support the newly explicit native-carrier comparisons. |
| 3.4 SL | Fulton–Harris §15.5, pp.231–232, `fulton-harris line 5377`–5398, explains common determinant shift under restriction. The statement is consistent with integral group weights; its own locator is missing (R06). |
| 5.1 dimensions | Macdonald I§3 Examples 1 and 4, pp.44–45, `macdonald line 1910` onward and 1988–1991, supplies specializations/hook-content; Appendix A(8.4), p.163, `macdonald line 6389`–6399, supplies polynomial representation characters. The roadmap now names the native tableau/pattern/shift route for the rational module comparison. |
| 6.1 GL branching | Molev Theorem 2.1, pp.7–8, `molev line 300`–342: nonnegative integral adjacent differences and interlacing for glₙ. Integer coordinates give the rational GL subset. The rational determinant twist and native block map are explicitly retained. |
| 6.2 SO/Sp branching | Molev (4.4), pp.48–49, `molev line 2074`–2085; (4.7), p.50, `molev line 2114`–2128, are the consecutive B→D/D→B rules. Type C is §3.2, (3.13)/(3.15), pp.33–34, `molev line 1436`–1466. The repaired text distinguishes multiplicity-free orthogonal restriction from symplectic multiplicity spaces. |
| 6.4 fixed GT basis/action | Molev Theorem 2.3, p.9, `molev line 377`–400; Proposition 2.4, p.10, lines 405–424; Theorem 2.7, p.11, lines 427–479. These fix shifted entries, zero invalid-pattern vectors, algebraic normalization, contravariant norms and increasing-row lowering order. The README's algebraic and unit-normalized vectors are distinguished. |
| 6.5 GT dimension | Molev Theorem 2.3, p.9, gives a pattern-indexed basis, hence the count; lines 368–374 relate patterns to tableaux. Native combinatorial count and module comparison are correctly separated. The target should attach this exact locator (R06). |
| 6.6 Capelli | Molev (2.21)/(2.22), §2.2, printed p.16, `molev line 670`–682, gives column order, λ_i−i+1 and the eigenvalue product. Lines 677–679 state centrality/generation and refer to their proofs. Elementary symmetric coefficients, commutation and row separation follow as stated, with the supplied block/differentiated actions; add page and normalization Checks (R06/R07). |

Additional source checks: Macdonald I(3.1), p.40, `macdonald line 1780`–1806, is a polynomial quotient after divisibility; I(3.4)/(3.5), p.41, lines 1832–1836, is Jacobi–Trudi. LR reading order and prefix condition are at `macdonald line 5673`–5694, I(9.2), pp.142–143; the tableau correspondence (9.4) is at lines 5702–5712. These agree with the finite-alphabet claims, but do not resolve formal ownership (R01).

For §3A.2, Milne Proposition 10.31, p.196, `milne line 8168`–8178, identifies the stabilizer Lie algebra using dual numbers; Cartier Theorem 3.23, p.71, lines 3211–3212, supplies characteristic-zero smoothness. The target's connected-stabilizer argument is an owned combination of these inputs, not an attributed ready-made theorem.

For repaired §6.7, Molev (4.1)/(4.2), `molev line 2054`–2072, fixes the reversed-index matrix generators and dominance; (4.5), lines 2085–2112, and (4.10), lines 2139–2161, give the cleared operators, including the two short-root factors in the latter. Theorems 4.1/4.2 are on pp.49/51; Theorems 4.3/4.4 on pp.51–52, lines 2186–2240. Lines 2165–2168 fix F_ij*=F_ji. The even-to-odd source subalgebra uses (F_ni−F_n'i)/√2; the roadmap's i factor follows from its norm-one w' coordinate and is consistent.

For §6B, Molev (3.10)/(3.12), pp.31–32, `molev line 1330`–1359, fixes g_i=f_i+1/2 and right evaluation. Lemma 3.4/Theorem 3.5, pp.34–35, lines 1446–1475, supplies the multiplicity-space vectors and their action. The numerical interpolation test above uses that shift.

### Library duplication and carrier audit

The following declarations/definitions were opened at the actual pins, not looked up in newer documentation. Paths beginning `ClassicalGroups/` in this table abbreviate `TauCeti/RepresentationTheory/ClassicalGroups/`. Searches were by object as well as declaration name.

| Pinned location | What it supplies, and what it does not |
| --- | --- |
| `Mathlib/LinearAlgebra/UnitaryGroup.lean:289–313` | Orthogonal/SO definitions install the trivial coefficient involution locally. Membership uses transpose, not Hermitian conjugation. The separate determinant condition remains necessary. |
| `Mathlib/LinearAlgebra/ExteriorPower/HodgeStar.lean:48,53` | Actual Hodge operator and wedge identity. The generic native definition does not impose the README's symmetric standard form/oriented unit-volume normalization; that specialization must be explicit. |
| `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean:307` | `SpecialLinearGroup.toGLKerEquiv`, the determinant-kernel identification. |
| `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Basic.lean:52` | `center_eq_range_scalar`, avoiding a new generic GL center theorem. |
| `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Projective.lean:66,80` | `mk_eq_mk_iff` and `mk_scalar`, native PGL scalar-quotient behavior. They do not turn Δ⊂G×G into a normal subgroup. |
| `Mathlib/CategoryTheory/Functor/KanExtension/Pointwise.lean:398,589,614,628` | Full-faithful unit isomorphism; pointwise extension, unit and universal property. This is the source of R05. |
| `ClassicalGroups/Rational.lean:118,139,160,165,178,198` | Polynomial/rational predicates with a finite basis and determinant inverse powers; finite dimensionality and basis independence. They do not themselves provide the missing coordinate-comodule comparison. |
| `ClassicalGroups/Weight/Decomposition.lean:233` | `IsRationalRep.isInternal_weightSpace`; rationality is present. |
| `ClassicalGroups/TensorPower.lean:198`, `ExteriorPower.lean:138`, `Decomposition.lean:49` | Native tensor/exterior characters and equivariant tensor-square splitting. These are cited inputs. |
| `ClassicalGroups/WeylModule/Basic.lean:472` | Tall-shape vanishing; explains the zero case of the full Schur-character theorem. |
| `ClassicalGroups/WeylModule/Character.lean:94,101,133,140` | Only row/column character and dimension comparisons. They do not supply the restored general shape (2,1) theorem. |
| `ClassicalGroups/WeylModule/SchurWeyl.lean:162` | General character is still expressed through the Specht sum. This is not already the full evaluated Schur comparison. |
| `ClassicalGroups/WeylModule/Rational.lean:214` | `char_rationalWeylFDRep` is determinant twisting of the polynomial model's character; it does not evaluate that character. |
| `ClassicalGroups/GelfandTsetlin/Dimension.lean:187`, `Tableau.lean:453` | Signed-pattern/product and pattern/tableau counts, with the tableau height condition. No automatic representation-dimension identification. |
| `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Basic.lean:214` | Evaluation at one equals bounded-tableau count, on the stated semiring carrier. |
| `ClassicalGroups/WeylDimension/Basic.lean:256` | Common-shift invariance of the dimension product. |
| `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Pieri.lean:231` | `hsymm_mul_diagramSchurPoly`, horizontal Pieri over a commutative semiring, including empty/height boundary behavior. General LR is not this theorem. |
| `TauCeti/Algebra/Lie/GeneralLinear/Radical.lean:221`, `Basic.lean:341` | The stable-submodule alternative uses 2≠0; trace/scalar complement uses invertibility of the rank. Both apply over ℂ; the F₂ rank-two control explains the restriction. |

No sorry'd data, opaque placeholder operation, free condition field, or hypothesis containing the conclusion was found in the retained Lean signatures. The pin lacks the specified differentiated actions on the rational Weyl models, source-normalized Mickelsson operators and rational SO/Sp highest-weight carriers identified in the module docstring. Existing generic Lie-module carriers do not supply those comparison constructions. Searches found no distinct eligible owner of the restored general group-level Schur character/dimension comparisons; they remain base ClassicalGroups targets.

### Cross-roadmap ownership and supply

Every supplier citation and Needs line was read. Main is authoritative for existing roadmaps; their open revisions were inspected for context but not promoted to dependencies. `roadmaps grep`/`show`, main files, supplied open-head folders and board-package object searches were used. Repeated inherited copies of a base roadmap in sibling checkouts were not treated as new owners. No distinct readable roadmap declares the same fully qualified Lean names as the new signatures; matches in copies of ClassicalGroups are the same owner.

| Supplier / other roadmap | Resolved current contract and audit result |
| --- | --- |
| ReductiveGroups, main | `TauCetiRoadmap/ReductiveGroups/README.md:129–248`: Layers 0–3 coordinate/comodule/tangent/component inputs; :249 onward stabilizers; :460 Cartier; :466 linear reductivity; :627 Borel data; :1933–1947 §10D polynomial End(V). The last already owns R03's generic theorem. |
| SchurWeyl, main and open revision | `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:323–350` is Frobenius/RSK; :352–377 is double-centralizer/invariant-image scope. The open revision's added LR content cannot serve as a new-roadmap supplier. Hence R01. Native Schur images avoid a reverse construction dependency. |
| LieHighestWeight, main | `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:370–404` lattice; :405 enveloping; :537 classification; :567 semisimplicity; :773 Weyl character/dimension; :1432–1530 Layer 9 GL differentiation. Layer 9 is used after ClassicalGroups' group classification, not as its input. Generic SO/Sp group–Lie transport remains owned in §3A.2. |
| RootSystems, main | `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:218,245,274,296,356–390`: roots, Weyl groups, chambers and integral classical data. It is not cited as owner of the representation weight lattice. B/C coordinate numbering and the D fork agree. |
| SpinRepresentations, main | `TauCetiRoadmap/RepresentationTheory/SpinRepresentations/README.md:427,611,665,777–830`: Clifford/spin constructions, half-spin weights and group comparison. SO uses the integral descent lattice; the supplied half-spin parity is retained rather than reconstructed here. |
| LieGroups, main | `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:233–260,275–299,326–357`: exponentials, finite-dimensional closed-subgroup theorem and uniqueness of connected integral subgroups. The new overgroup signature retains closedness and a genuinely complex tangent condition. |
| SemisimpleAlgebras, main | `TauCetiRoadmap/RepresentationTheory/SemisimpleAlgebras/README.md:187–201,234–251`: Schur and density inputs with their finite-dimensional/division-ring conditions. Complex finite-dimensional rational restrictions satisfy them. |
| ClassicalGroupsPartII, supplied open head | `TauCetiRoadmap/ClassicalGroupsPartII/README.md:30–60` owns GSp similitude/multiplier extensions. It does not provide the proposed overgroup/ordinary-Kan programmes and must not be renamed out from under its owner. |
| TensorProductCombinatorics, supplied open head | `TauCetiRoadmap/TensorProductCombinatorics/README.md:339–345,1257–1272`: downstream contracts/applications consume the overgroup result. They are not used to prove its classification here. |

The source and dependency audits therefore find no upward edge or cycle at this head, but a green dependency graph cannot register the absent LR plan entry or resolve duplicate ownership. There is no declared gap whose supplier is `none`. The group/Lie bridge is now an actual owned theorem with stabilizer/smoothness inputs; the earlier unowned-prerequisite defect is not revived. Generality was not narrowed to good primes or a selected route. The new fixed-rank computations are presented as examples of general constructions, rather than replacements for their general statements.

The main ClassicalGroups and SemisimpleAlgebras roadmaps were read as shape references. This README has the requested summary, scope, conventions, supplier contracts, layers, Examples/Dependencies and downstream sections. Its remaining per-definition Check deficiency is R07; construction programmes inside Worked examples also require the scope split in R02. Broad source descriptions remain R06. No copied source passage was identified in the sampled comparisons.

## Not verifiable

- **Fulton–Harris, remaining lectures:** the legal CIMAT OCR scan ends within Lecture 20. The bibliography's Lectures 24–25 and appendices are absent. The sources service's bibliographic lookup and institutional scan were tried. Earlier passages listed above were read; missing pages are not certified by inference from Macdonald or Molev.
- **Weyl, The Classical Groups (1939):** the sources service's bibliographic search found no legal readable copy. No exact theorem/page locator is supplied by this README. Recorded in the missing-reference list.
- **Procesi, Lie Groups (2007):** the sources service's bibliographic search found no legal readable copy. Its broad bibliography role was not treated as a verified locator. Recorded in the missing-reference list.
- **Goodman–Wallach (2009):** the sources service returned an uncertified/paywalled result; no theorem text was obtained. No renewed request is made for this settled uncertified citation.
- **Universal proofs of additional programmes:** the exact tests above do not replace proofs of all diagonal-overgroup, mixed-contraction and normalized multiplicity-operator claims. Their readable inputs and displayed instances were checked; an unwritten formal proof is not certified.

Unavailable texts do not suspend this review. The findings are independently reproducible at the supplied head, and the report is complete. No PR file or source manifest was edited. Ownership conclusions concern main and the supplied readable open work, not inaccessible or unprovided material.

## Source issues

- **Misprint** in molev at §3 introduction, printed p.28 (molev line 1191): the source says the multiplicity space uses glₙ₋₁-highest vectors; it should use gₙ₋₁-highest vectors for the chosen B/C/D series; affects a stated result.
