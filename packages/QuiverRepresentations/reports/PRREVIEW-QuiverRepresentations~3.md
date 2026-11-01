# Review of QuiverRepresentations (pull request #1397 at 472e13c)
Folder: `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/`

**Verdict:** needs changes

🤖 Incremental AI re-review of **0 changed lines since ca98ae0**. All 19 previous findings remain; R20 records the newly reported build-gate failure. There are **20 findings, 17 blocking (P1/P2)**. This is a review of this folder, including its inherited text, not a separate review of ArtinAlgebras. No pull-request source was changed.

The mathematical witnesses and unchanged adversarial rows are carried from [the previous review][r1], checked against the passages at this head. Library references and supplier boundaries were refreshed at the supplied pins and checkouts. No repair report marking any finding “not actionable in this package” was supplied or found in this roadmap’s reports.

## R01 (P1) — Admissibility uses the wrong ideal

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/Suggested.lean:177`, especially lines 181–182; README lines 280–282 and 303–309. The signature uses `Ring.jacobson (pathAlgebra k Q)`.

**Claim:** Every finite-dimensional algebra over an algebraically closed field has the stated Morita presentation with kernel between powers of that Jacobson radical.

**Witness:** For the one-loop presentation of `k[ε]/(ε²)`, `kQ=k[X]`, `Jac(k[X])=0`, and the kernel is `(X²)≠0`. The required upper inclusion is `(X²)≤0`, which is false.

**Repair:** Use the arrow ideal J, not the Jacobson radical of the unquotiented path algebra; require finite vertices and arrows and a two-sided kernel with `J^N ≤ ker f ≤ J²`. Consume `TauCeti.IsAdmissibleIdeal` in `TauCeti/RepresentationTheory/Quiver/AdmissibleIdeal/Basic.lean:102`. The repaired dual-number example has `J=(X)` and `N=2`, so both inclusions are equality. This is not repaired by choosing another quiver: a quotient by an ideal inside the Jacobson radical retains the vertex simples, so a Morita presentation of the dual numbers must have exactly one vertex. Its path algebra is a free associative algebra, with Jacobson radical zero; the displayed upper bound then forces an isomorphism. A finite-dimensional free algebra has no generators and is k, which is not Morita equivalent to the dual numbers. Do not weaken the presentation to an arbitrary surjection.

## R02 (P1) — The reflection dimension theorem admits infinite-dimensional inputs

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/Suggested.lean:222`. There is no `IsFinDim k Q M` hypothesis.

**Claim:** Excluding the sink-simple summand is enough for the stated equality of finrank vectors.

**Witness:** On `1→2`, take `V=k^(ℕ)` and a surjective shift `V→V` with one-dimensional kernel. There is no sink-simple summand. The input finrank vector is `(0,0)`; reflection gives `(0,1)`.

**Repair:** Require pointwise finite-dimensional M and use the native reflection construction. `Module.finrank_of_not_finite`, `Mathlib/LinearAlgebra/Dimension/Free.lean:268`, explains the zero input coordinates. On a finite-dimensional surjection `k²→k`, the repaired formula reads `(2,1)=(2,2−1)`. Keep the shift as a negative-control Check. The proposed opaque reflection must first be replaced as in R12.

## R03 (P1) — Coxeter dimension equality needs a survival hypothesis

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:343`, “`dim (coxeterFunctor M) = c · dim M`”.

**Claim:** The equality holds for every representation.

**Witness:** For A₁ and its simple S, the only sink reflection kills S. Thus `dim C⁺S=0`, while the Coxeter element sends its dimension `1` to `−1`.

**Repair:** State the identity when each successive reflection input has no summand equal to that step’s sink simple, or state the usual indecomposable dichotomy with a killed case. Fix the composition order explicitly. The repaired A₁ statement assigns S to the killed case; it does not equate 0 and −1. The previous review verified BGP Theorem 1.1, printed pp.21–22, distinguishes precisely the killed simple from the reflection formula (`bgp` line 173).

## R04 (P1) — The A₂ worked reflection contradicts the definition

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:430`, “carrying `P₁ ↦ P₁` and `S₁ ↦ S₂`”, followed by “realizing `s₁`”.

**Claim:** These are the images under reflection at sink 2, with vertices identified.

**Witness:** At vertex 2 the new space is a kernel. `ker(id:k→k)=0`, `ker(k→0)=k`, and `ker(0→k)=0`; images have vectors `(1,0)`, `(1,1)`, `(0,0)` respectively.

**Repair:** Write `F₂⁺P₁=S₁'`, `F₂⁺S₁=P₂'`, `F₂⁺S₂=0` for the reflected quiver `1←2`, and use `s₂(a,b)=(a,a−b)` on the surviving objects. The three displayed kernel computations test the correction. The previous review verified Etingof’s preprint Definition 5.26, printed p.90, gives this construction (`etingof` line 4007).

## R05 (P1) — Algebra Cartan and root Cartan matrices are different

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:452`, “the algebra’s `cartanMatrix` and the Tits form’s Gram matrix … reproduce the ADE Cartan matrix”.

**Claim:** The composition-multiplicity Cartan matrix equals the ADE root matrix.

**Witness:** For `1→2`, with the README’s rows indexed by projectives, `C=[[1,1],[0,1]]`. The polarized Tits matrix is `B=[[2,−1],[−1,2]]`. Already A₁ gives `[1]≠[2]`.

**Repair:** Keep the two matrices distinct. For this row convention put `E=C⁻¹`; the root matrix is `E+Eᵀ`, not C. On A₂, `E=[[1,−1],[0,1]]`, giving exactly B. State the transpose adapter to GrothendieckEulerForms, whose conventions use columns for projectives (`TauCetiRoadmap/GrothendieckEulerForms/README.md:77` on main).

## R06 (P1) — Arrows alone do not generate the path algebra

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:221`; also `Suggested.lean:59`. “The subalgebra generated by the arrows is all of `kQ`.”

**Claim:** Vertex idempotents are unnecessary as generators.

**Witness:** For two isolated vertices, `kQ=k×k`. There are no arrows; their generated unital k-subalgebra is `{(a,a)}`, of dimension 1, whereas `k×k` has dimension 2.

**Repair:** Generate by arrows together with all vertex idempotents. Cite `TauCeti.PathAlgebra.adjoin_vertexIdempotents_union_arrows`, `TauCeti/RepresentationTheory/Quiver/PathAlgebra/Basic.lean:1084`. In the test, adjoining `(1,0)` and `(0,1)` gives all pairs. Retain this disconnected example even though the classification theorem is connected.

## R07 (P1) — Basicness is not the stated endomorphism-ring condition

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:299`, “equivalently `A ≅ End of a minimal faithful projective`”, and the following Morita reduction.

**Claim:** This characterizes basic algebras and gives the left-module basic algebra with the indicated endomorphism ring.

**Witness:** The basic A₂ algebra has dimension 3. Its faithful indecomposable projective `P₁=(k→k)` is minimal faithful, but `End_A(P₁)=k`, of dimension 1.

**Repair:** Delete the claimed equivalence. Retain the semisimple-quotient characterization. For a basic progenerator P consisting of one projective cover per simple, the left-module Morita reduction uses `End_A(P)ᵐᵒᵖ`. In the basic A₂ example, take `P=P₁⊕P₂=A`; then `End_A(A)=Aᵐᵒᵖ`, so the extra opposite recovers A. Do not confuse a minimal faithful projective with a progenerator.

## R08 (P1) — Sink-admissible descent is not strictly height-decreasing

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:370`, “under an admissible sequence … decreasing `Base.height`”.

**Claim:** The reflection route can decrease root height at each admissible step.

**Witness:** Orient D₄ toward its centre and take dimension 1 at all four vertices. It is a positive root: `q=4−3=1`, height 4. The only sink is the centre; reflection changes its coefficient to 2, height 5.

**Repair:** Replace strict height descent with the actual admissible-reflection termination argument, allowing increases and specifying its termination input; alternatively separate unrestricted root-height reduction from sink-admissible functor transport and supply their comparison. The example must allow the first step `4→5`. Cite the exact result/argument used, rather than treating the height slogan as that input.

## R09 (P1) — The Tits zero locus is not all imaginary roots

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/Suggested.lean:191`, “its zero locus the imaginary roots”.

**Claim:** Imaginary roots have Tits value zero for the quivers allowed by the signature.

**Witness:** For the three-arrow Kronecker quiver, `(1,1)` is the dimension of an indecomposable representation with arrow maps `(1,0,0)`. Its Tits value is `1+1−3=−1`, an imaginary, nonisotropic root.

**Repair:** Describe the zero locus as the isotropic vectors and remove the general imaginary-root identification. If discussing affine roots, give that hypothesis and exclude the zero vector from the root statement. For two arrows `(1,1)` has value 0; for three it has value −1. These discriminate the two cases.

## R10 (P1) — Vertex projectives are not always projective covers

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/Suggested.lean:103`, calling `Pᵢ` “the projective cover of `Sᵢ`”; README lines 245–249 also describe injectives by a path basis without a finite-path qualification.

**Claim:** This cover description holds with only the displayed field and quiver assumptions.

**Witness:** For one loop, `P=k[X]→k=S`, evaluation at 0, has kernel `(X)`. The proper submodule `(X−1)` still surjects onto S, so the kernel is not superfluous.

**Repair:** Qualify the projective-cover assertion by finite paths (in particular finite acyclic Q). For arbitrary Q retain the projective representation without the cover claim. Define the dual injective by the full dual of the path space; only finite path sets give the stated dual path basis. A₁ then has the identity cover `k→k`; the one-loop evaluation remains a negative control. Over a finite field, `Hom_k(k[X],k)=k^ℕ` is not the free space `k^(ℕ)`.

## R11 (P1) — Simple reflection fixes the wrong hyperplane

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/Suggested.lean:213`, “fixing the coordinate hyperplane and negating `αᵢ`”.

**Claim:** The fixed hyperplane is the coordinate hyperplane.

**Witness:** For A₂, `s₂(1,0)=(1,1)`, although `(1,0)` lies in the coordinate hyperplane `d₂=0`. The actual fixed line is `2d₂−d₁=0`; `(2,1)` is fixed.

**Repair:** Use the hyperplane orthogonal to αᵢ under the polarized Tits form. Require a loopless vertex for a genuine reflection and use the pinned `TauCeti.vertexReflection`; the unrestricted map is `vertexPreReflection`. This fixes `(2,1)` and negates `(0,1)`. Etingof Definition 5.20 and Remark 5.21, p.89 (`etingof` line 3977), and `TauCeti/RepresentationTheory/Quiver/Reflection/DimensionVector.lean:68` give the distinction.

## R12 (P2) — Thirteen admitted data declarations fail the gate

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/Suggested.lean:54` and lines 56, 61, 93, 98, 106, 160, 204, 209, 215, 232, 307, 371.

**Claim:** These provide the ring/algebra, basis, equivalence, vertex objects, Cartan matrix, reflected arrows, reflection/Coxeter functors, translate and AR arrows needed by the acceptance test.

**Witness:** All 13 bodies are `sorry`. In particular the ring instance supplies no concatenation law, and the AR-arrow instance supplies no relationship to `rad/rad²`. The worker reports `sorry-data=13` and `FAIL`.

**Repair:** Import the implementations present at the pin and remove private copies. Keep only simple, real definitions needed for genuinely new headlines. For a genuinely unavailable heavy carrier, name the affected headline and missing carrier in the module docstring instead of admitting data. Recheck A₂ products `e₂a=a=ae₁`, the three reflection images in R04, and its AR arrows `S₂→P₁→S₁` against the actual implementations. A successful `sorry` elaboration does not resolve this gate failure.

## R13 (P2) — Existing pinned theory is specified again as new work

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:157`, “What is missing (build here)”, and `Suggested.lean:47` onward.

**Claim:** The listed foundational constructions and theorems are missing and should be built in this roadmap.

**Witness:** The pin already implements path algebras, representation/module equivalence, Krull–Schmidt, Euler forms and the Gabriel dichotomy. Exact declarations, source files and current line numbers are listed in the pinned-library table below.

**Repair:** Inventory the actual pinned declarations in scope/ownership and exact supplier contracts, remove repeated targets, and formulate remaining acceptance theorems on their carriers. Do not replace an existing base roadmap with a new plan: this is maintenance of its specification; any new extension belongs in a Part II. For the witness, the imported Euler form has values `E(e₁,e₂)=−1`, `E(e₂,e₁)=0`, and the imported algebra has the same later-factor-first product, so no alternate convention justifies a duplicate. The duplication inventory below also covers native acyclicity, finite-dimensional representations, dimension vectors, finite type, admissibility and almost-split structures.

## R14 (P2) — The acceptance statements omit or narrow the promised headlines

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:329` and 387–418; `Suggested.lean:265`, 275, 347 and 355.

**Claim:** The Lean file tests the advertised finite-dimensional classification and AR theory for arbitrary finite-dimensional `A=kQ/I`, including uniqueness as short complexes fixing the endpoint.

**Witness:** The AR signatures only allow unbound quivers with finitely many paths, excluding `k[ε]/(ε²)`. The uniqueness conclusion only compares objects, not sequence maps. The two root signatures quantify over representations without `IsFinDim`.

**Repair:** State the remaining general AR headlines on finite-dimensional modules over a finite-dimensional algebra, using native `ModuleCat`, `ShortComplex` and almost-split predicates (in the finite-dimensional full subcategory where intended). Include a short-complex isomorphism with prescribed endpoint component in uniqueness. Match the root signatures to the finite-dimensional README domain. List the Euler–Hom–Ext identity, presentation, classification/root correspondence, AR duality, existence/uniqueness and finite AR-quiver goal in the module docstring, and state every remaining statable headline; give a specific missing carrier for any omitted one. For dual numbers, the test is `0→k→A→k→0`, with ε acting through the inclusion/projection: this is within the repaired scope and outside the present finite-path scope. No narrowing to hereditary algebras discharges the advertised general theorem.

## R15 (P2) — Finite-dimensionality is compared over the wrong scalar ring

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:86`, especially “`FiniteDimensional (pathAlgebra k Q)`-finiteness”.

**Claim:** Pointwise finite-dimensionality agrees with this path-algebra finiteness condition.

**Witness:** For one loop, the regular module `k[X]` is generated by 1 over `k[X]`, but its sole vertex space is infinite-dimensional over k. Also `FiniteDimensional` requires a division ring, which kQ generally is not.

**Repair:** Compare pointwise `FiniteDimensional k` with `Module.Finite k` on the representation’s total module after restricting scalars along `k→kQ`. State any comparison with `Module.Finite kQ` separately under finite-dimensionality of kQ. The one-loop regular module then fails both k-finiteness tests; the A₂ regular module has total k-dimension 3 on both sides.

## R16 (P2) — Loop classification silently assumes a splitting field

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:440`, “the finite-dimensional indecomposables are the Jordan blocks `k[X]/(X − λ)ⁿ`”.

**Claim:** This is the classification over the standing arbitrary field.

**Witness:** Over ℝ, `ℝ[X]/(X²+1)` is a simple two-dimensional module. It has no real eigenvalue and is not `ℝ[X]/(X−λ)ⁿ` for any real λ.

**Repair:** Give the general classification `k[X]/(fⁿ)` for monic irreducible f and positive n; derive the linear-factor version over a splitting/algebraically closed field. The ℝ example is obtained by `f=X²+1,n=1`; over ℂ all irreducible f are linear. Explicitly exclude n=0, which gives the zero, non-indecomposable module.

## R17 (P3) — Four signatures close with one library lemma

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/Suggested.lean:78`, 122, 128 and 135.

**Claim:** These are useful unfinished acceptance targets at the pins.

**Witness:** At this head, a scratch copy elaborated all four replacements: `exact (pathAlgebraBasis k Q).finiteDimensional_of_finite`; `exact TauCeti.isLocalRing_end_of_isIndecomposable hM h`; `exact TauCeti.exists_indecomposable_decomposition hM`; `exact TauCeti.exists_equiv_linearEquiv_of_finset hM hs his ht hit`.

**Repair:** Delete them from `Suggested.lean`; do not prove them in place. Cite the supplied mathematics in the README. The basis implication is true for both the zero-dimensional empty-quiver algebra and three-dimensional A₂, but is an immediate finite-basis consequence. The other three are existing library theorems, not new summits. The probe imported the individual pinned modules and completed with exit 0; the other unchanged one-tactic results are carried from the previous review.

## R18 (P3) — No exact locator for the sampled presentation theorem

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:303` and references at 481–502.

**Claim:** The references support the individual targets at verifiable locators.

**Witness:** The presentation target has no theorem number or page; the reference gives only ASS Chapters II–III. There is no `sources.toml`. The previous source check found Paquette’s domain was pointwise finite-dimensional.

**Repair:** Attach exact source theorem/section and printed page to each target and record the works in the source manifest through the prescribed service. Supply a legal readable text/locator for the presentation theorem and match its arrow-ideal and basic/algebraically closed hypotheses. For Paquette, cite only what its domain supports (`paquette` lines 55–59, 349–353), or provide the separate argument/source for claims about the full functor category. The sample’s theorem number, page and source agreement are **not certified**; R01’s algebraic counterexample is independent of that access limitation.

## R19 (P3) — Missing contracts, per-definition Checks and headline-only form

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:1`, 104, 199 and 457; `Suggested.lean:4`.

**Claim:** The files supply the required roadmap build specification and acceptance-test form.

**Witness:** Missing: Summary, Scope and ownership, Exact supplier contracts, per-target Needs, per-definition three-Check blocks and layer Examples/Dependencies. The module docstring has no inventory of unavailable headlines.

**Repair:** Restructure the same mathematical scope into the required sections, with explicit API, dependencies, exact locators and at least three discriminating Checks for each kept definition. Use the counterexamples above, zero/A₁ controls and the computed table below. Remove process wording and the trailing `</content>`. Reconcile names: the README advertises `gabriel_indecomposable_equiv_posRoot`, whereas the file uses two separate root/uniqueness theorems and a bridge not named there. The file must contain only remaining headlines and their few simple definitions; simple/projective API assertions belong in the README. Resolve the contradictory field conventions (README lines 44–53 versus 184, 204, 350 and 467) in favour of the full arbitrary-field ADE theorem.

## R20 (P1) — The worker's build gate rejects a module-system warning

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/Suggested.lean:1`, `import Mathlib` without a preceding module header.

**Claim:** The acceptance module builds with only the permitted `sorry` warnings.

**Witness:** The targeted build exits 0 but warns that Mathlib requires the module system. The worker records `build=1 FAIL`; direct `lake env lean` does not emit that Lake warning.

**Repair:** Add `module` before the imports, keeping the required `import Mathlib`, and rerun the targeted build and warning gate. A scratch copy with this header elaborates successfully under the defaults. Do not suppress the warning with `set_option`. This is P1 under the brief's build-gate rule, not a claim that Lean reported a type error. Removing the 13 admitted data bodies remains separately necessary (R12).

## Previous findings

- R01 — not repaired: `Suggested.lean:181–182` still bounds the kernel by powers of the path algebra’s Jacobson radical.
- R02 — not repaired: `Suggested.lean:222–227` still quantifies over arbitrary representations without pointwise finite-dimensionality.
- R03 — not repaired: `README.md:343–346` still states the unconditional Coxeter dimension equality.
- R04 — not repaired: `README.md:430–431` still gives the same incorrect images and reflection index.
- R05 — not repaired: `README.md:452–455` still identifies the algebra Cartan matrix with the root Cartan matrix.
- R06 — not repaired: `README.md:221–222` and `Suggested.lean:59–60` still claim arrows alone generate the algebra.
- R07 — not repaired: `README.md:299–302` still uses minimal faithful projectives and omits the left-module opposite.
- R08 — not repaired: `README.md:370–372` still requires height-decreasing sink-admissible descent.
- R09 — not repaired: `Suggested.lean:191–192` still identifies the Tits zero locus with all imaginary roots.
- R10 — not repaired: `Suggested.lean:103–106` still calls the unrestricted vertex projective a cover; the path-dual qualification is absent from `README.md:245–249`.
- R11 — not repaired: `Suggested.lean:213–216` still specifies the coordinate hyperplane and lacks a loopless-vertex guard.
- R12 — not repaired: All 13 admitted data declarations remain at the same lines; both gate records detect them.
- R13 — not repaired: `README.md:157–188` still lists implemented objects as missing. The updated pin retains the cited implementations; their current locators are below.
- R14 — not repaired: `Suggested.lean:347–360` still restricts AR theory to finite-path quivers and concludes only object isomorphisms; the headline inventory remains incomplete.
- R15 — not repaired: `README.md:86–88` still compares vertexwise k-finiteness with path-algebra finite-dimensionality.
- R16 — not repaired: `README.md:440–444` still gives only linear-factor Jordan blocks under the arbitrary-field convention.
- R17 — not repaired: The four declarations at `Suggested.lean:78,122,128,135` remain; their one-lemma replacements still elaborate at the updated pin.
- R18 — not repaired: `README.md:303–309` still lacks an exact presentation locator; no source manifest has been added.
- R19 — not repaired: The unchanged README still lacks the required contract/Check structure; the Lean docstring still presents an API catalogue.

## Verified sound

### Incremental scope, gates and elaboration

- Verified head `472e13c8324cb89670efc2e87dbc4572d699065f`. The target-folder diff against `ca98ae0` is empty. The family README is also unchanged since that review. The large outside-folder change list includes merged main-branch changes; it is not the PR's ownership diff. Against `origin/main...HEAD`, only the two ArtinAlgebras files, this folder’s README, and the family README change. The prescribed exclusion diff has no entries.
- Rechecked all **19** previous finding locations and compared the worker’s **39** elaborated named signatures to the README. Independently checked **43** declarations in one scratch elaboration, naming the four anonymous instances only in that copy. No dropped section binder was found. Missing hypotheses in R02/R14 are still absent, rather than silently dropped. The admitted AR translate remains unrestricted.
- Direct `lake env lean` on the original file: **exit 0, 29 `sorry` warnings, no other diagnostics**. Targeted `lake build TauCetiRoadmap.RepresentationTheory.QuiverRepresentations.Suggested`: **exit 0, 29 `sorry` warnings plus one module-system warning**. Thus successful elaboration does not clear the worker’s warning gate.
- The worker gate reports **`sorry-data=13`, `build=1`, FAIL**, with all other counters zero. The prescribed standalone gate rerun exits 1 with **`sorry-data=13`, `outside-folder=3`, FAIL** and stops before its build stage. Its three outside-folder lines are the two ArtinAlgebras files and `TauCetiRoadmap/RepresentationTheory/README.md`, explicitly authorized as this PR’s own by the brief; those are not findings. No files were deleted or changed to satisfy the scanner.
- Built only the named Krull–Schmidt modules needed by the scratch probe. All **four** R17 one-lemma replacements still elaborate at this pin. A separate scratch copy tests the `module` header proposed in R20 and prints all 43 original signatures. Combining the header change with the three Krull–Schmidt one-lemma proofs initially failed because the native predicate is not exposed across module boundaries; the padding probe passes in the original legacy-module setting. This does not affect the recommendation to delete those duplicates and use native carriers. The previous exhaustive `simp`/`rfl`/`infer_instance` probes on the unchanged 16 theorem statements are carried forward, not represented as newly rerun.
- No new declarations, formulas, conventions or source locators were added to this folder. The seeded Gabriel-presentation target therefore retains its previous source-verification status; its dual-number counterexample is still applicable. No declared supplier gap exists. No new route-specific restriction, algorithm, copied passage or `set_option` was introduced.

The dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1486 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The README still has **zero per-target `*Needs:*` lines**, so this graph result does not discharge R19’s missing contracts.

### Changed boundary and supplier resolution

Resolved the same **three outgoing roadmap boundaries** against their present text, and **three related consumer/comparison boundaries**:

- **RootSystems on main:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:224` defines positive roots; Layer 2 at 245 supplies the Weyl/Coxeter interface; Layer 5 at 321 supplies Dynkin data, with classification at 336 and 350. The substantive targets remain. The loose name `classification` should be replaced with the actual section/target name. An open revision was not substituted for the main supplier.
- **SemisimpleAlgebras on main:** `TauCetiRoadmap/RepresentationTheory/SemisimpleAlgebras/README.md:90` lists Wedderburn inputs; lines 125–131 supply the simple/block/primitive-idempotent dictionary. The base roadmap’s use of this supplier is unchanged.
- **ArtinAlgebras at this PR head:** the changed scope at `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:54` and contract at 216 preserve the direction from the base quiver theory to its generalization. Sections 4.1–4.3 (lines 744–797) retain translate, AR formulas and almost-split existence over Artinian coefficients. Section 5.3 at 875 explicitly recovers field arrow counts from valuations. The citation at this folder’s README:396–398 is a downstream boundary, not a new prerequisite. Do not turn it into a reverse supply edge.
- **QuiverRepresentationsPartII at the supplied head:** `TauCetiRoadmap/QuiverRepresentationsPartII/README.md:7` and 73–79 retain base Layers 1, 2 and 5 as suppliers; its namespace is `TauCetiRoadmap.QuiverRepresentationsPartII`. This remains an extension, not a second owner of the base Gabriel theory.
- **GrothendieckEulerForms on main:** `TauCetiRoadmap/GrothendieckEulerForms/README.md:77` retains the column-projective Cartan convention, so R05’s transpose adapter is still needed.
- **CountingBundlesAndHallAlgebrasOfCurves package:** `packages/CountingBundlesAndHallAlgebrasOfCurves/README.md:11` and 67 retain the representation/module and module Krull–Schmidt contracts; general categorical decomposition belongs to ArtinAlgebras. No new base-quiver construction is requested there.

The family index at `TauCetiRoadmap/RepresentationTheory/README.md:100` still describes ArtinAlgebras as the generalization and consumer. Its new-on-main empty `Suggested.lean` is an index-only module, not an additional quiver acceptance test. The prescribed `roadmaps grep` object search was rerun on the available index; matches for revisions of existing roadmaps were not treated as new suppliers. The supplied Part II checkout and the relevant board package were reread. The existing base roadmap remains the owner of its unfinished quiver-specific theory; R13 concerns consuming its implemented parts. This incremental audit does not claim a new exhaustive audit of unrelated open proposals.

### Adversarial values

Each of the following **66 unchanged rows** is carried from [the previous review][r1], as indicated on every row. “Pass” denotes those computed instances, not a proof of an admitted theorem; “intended” distinguishes the mathematical construction from its unconstrained admitted Lean data. A₂ vectors are ordered `(1,2)`; D₄ vectors `(centre;leaf₁,leaf₂,leaf₃)`. The three additional boundary checks below address the revised sibling interface consumed by the unchanged scope sentence.

| Statement / target | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| Quiver/path conventions | Empty quiver; A₁; A₂; loop | Numbers of paths `0;1;3;ℵ₀`; loop has lengths `0,1,2,…` | Pass; native paths retain direction and length ; carried from [r1] |
| Later-factor-first path multiplication | A₂ arrow a | `e₂a=a=ae₁`; `e₁a=ae₂=0`; `a²=0` | Pass intended convention; R12 for opaque instance ; carried from [r1] |
| Unit and orthogonal vertex idempotents | Empty; A₂ | Empty `1=0=∑∅`; A₂ `(e₁+e₂)a=a`, `e₁e₂=0` | Pass; zero algebra allowed ; carried from [r1] |
| Associativity | Chain `1→2→3→4`, arrows a,b,c | `(cb)a=c(ba)` is the unique length-3 path; mismatched products are 0 | Pass intended multiplication ; carried from [r1] |
| Acyclicity | Empty; A₂; loop | Closed paths: only nil for first two; loop path length `1≠0` | Pass ; carried from [r1] |
| `finite_paths_of_isAcyclic` and converse | A₂; loop; infinite parallel-arrow control | `3<∞`, `ℵ₀` for loop; infinite parallel-arrow quiver is acyclic but has `ℵ₀` paths | Pass with stated finite-arrow assumption ; carried from [r1] |
| Path basis and finite dimension | Empty; A₁; A₂; Kronecker | Basis cardinality / k-dimension `0/0;1/1;3/3;4/4` | Pass intended; R12/R17 ; carried from [r1] |
| Generation by arrows | Two isolated vertices | Arrow-generated algebra dimension `1`, whole algebra dimension `2` | Fail R06; add e₁,e₂ ; carried from [r1] |
| `QuiverRep` and abelian operations | A₂ map `k²→k` projection | Pointwise kernel `(k,0)`, cokernel `(0,0)`; identity path acts as identity | Pass native functor category ; carried from [r1] |
| `quiverRepEquivalence` | A₂ regular module; zero module | Idempotent components of regular module have dimensions `(1,2)`, total `3`; zero gives `(0,0)` | Pass intended; inverse direction in prose must match displayed functor direction ; carried from [r1] |
| Finite-dimensional representation convention | One-loop regular module | `Module.Finite k[X] k[X]=true`; `Module.Finite k k[X]=false` | Fail R15; restrict scalars to k ; carried from [r1] |
| `simpleRep`, simplicity and exhaustion | A₁; A₂; one loop | Vertex simples have one coordinate 1; loop scalar 0 and scalar 1 give nonisomorphic simples with same dimension | Pass acyclic exhaustion; specify zero arrow maps ; carried from [r1] |
| `indecProjRep` and projectivity | A₂ | `P₁=(1,1)`, `P₂=(0,1)`; `Hom(Pᵢ,M)` has dimension `dim Mᵢ` | Pass intended projective formula ; carried from [r1] |
| Vertex projective is a cover | One-loop evaluation; A₁ | `(X−1)+(X)=(1)` with `(X−1)≠(1)`; A₁ identity has kernel 0 | Fail R10 outside finite-path setting ; carried from [r1] |
| Vertex injective and dual path-space convention | A₂; loop over 𝔽₂ | `I₁=(1,0)`, `I₂=(1,1)`; loop dual has carrier cardinal `2^ℵ₀`, free path span cardinal `ℵ₀` | Finite-path basis passes; general basis claim fails R10 ; carried from [r1] |
| `IsIndecomposableModule` | `0`, `k`, `k²`; dual numbers regular module | Truth values `false,true,false,true`; `k²=k⊕k`, dual-number idempotents only 0,1 | Pass real predicate; native duplicate ; carried from [r1] |
| Fitting kernel/image decomposition | `f=diag(0,1)` on k²; ε on dual numbers | First `ker f⊕im f=k⊕k`; second `f²=0`, `ker f²=A`, `im f²=0` | Pass ; carried from [r1] |
| `isLocalRing_end_of_isIndecomposable`, converse | k, k², zero | End rings `k`, `M₂(k)`, zero; local truth values `true,false,false`, matching indecomposability | Pass; native theorem, R17 ; carried from [r1] |
| `exists_indecomposable_decomposition` | Zero; k²; dual numbers | Index counts `0,2,1`; total dimensions `0,1+1,2` | Pass; native theorem, R17 ; carried from [r1] |
| `krullSchmidt_unique` | Coordinate axes and lines spanned by `(1,0),(1,1)` in k² | Both decompositions have two dimension-1 summands, including over 𝔽₂ | Pass; native theorem, R17 ; carried from [r1] |
| Primitive idempotents / semiperfect frame | `M₂(k)`; dual numbers | `1=e₁₁+e₂₂`; matrix ring has one simple class with multiplicity 2; dual numbers have one primitive idempotent 1 | Pass when indexing classes, not individual idempotents ; carried from [r1] |
| Radical nilpotence / semisimple quotient | `M₂(k)`; dual numbers | Radicals `0` and `(ε)`; powers `0¹=0`, `(ε)²=0`; quotients `M₂(k)` and k | Pass ; carried from [r1] |
| `exists_projectiveCover`, injective envelope | Dual numbers and k | Dual-number cover `A→k`, kernel/socle `(ε)`; envelope `k→A`; field case both identities | Pass finite-algebra theorem ; carried from [r1] |
| Algebra `cartanMatrix`, Hom multiplicities | A₂; division algebra ℂ over ℝ | A₂ `[[1,1],[0,1]]`; `Hom(P₂,P₁)` dimension 1. For ℂ: composition multiplicity 1, real Hom dimension 2 | Pass with stated split/basic comparison hypotheses ; carried from [r1] |
| Cartan path count after relations | `1→2→3`, kill composite | Before: one path `1→3`; after: quotient path space dimension 0 | Use dimension of quotient path space, not raw count of equivalence classes of paths ; carried from [r1] |
| `IsBasic` reduced semisimple quotient | k; `M₂(k)`; dual numbers | Quotients reduced `true,false,true`; `e₁₂²=0≠e₁₂` detects matrix block | Pass predicate ; carried from [r1] |
| Minimal faithful projective characterization | A₂ | `dim A=3`, `dim End(P₁)=1`, although P₁ is faithful and minimal | Fail R07 ; carried from [r1] |
| Morita reduction orientation | P=A as left regular module | Composition of right multiplications is reversed: `r_a∘r_b=r_{ba}` | Use opposite End for left modules, R07 ; carried from [r1] |
| Admissible ideal / Gabriel presentation sample | A₂; one-loop dual numbers | A₂ `J²=0`, I=0 works; loop `J=(X)`, `I=(X²)=J²`, but `Jac(k[X])²=0` | Fail R01; arrow-ideal repair passes both ; carried from [r1] |
| Ext-quiver arrow direction | A₂ simples | `dim Ext¹(S₁,S₂)=1`, `dim Ext¹(S₂,S₁)=0`; corresponding radical blocks have dimensions 1,0 | Pass arrow-count orientation; do not imply a choice-free identification with the dual space ; carried from [r1] |
| `dimVector` and finite-dimensional additivity | `S₁⊕S₂`; infinite shift sequence | Finite vector `(1,1)=(1,0)+(0,1)`; shift dimensions give `0≠1+0` | Pass finite case; R02/R15 require guard ; carried from [r1] |
| `eulerForm` bilinearity / order | A₂ simples; characteristic 2,3 coefficients | `E(e₁,e₂)=−1`, `E(e₂,e₁)=0`, `E(e₁+e₂,e₁)=1=1+0`; values live in ℤ | Pass; signs do not reduce modulo char k ; carried from [r1] |
| `titsForm` and polarization | A₁; A₂; empty | `q(n)=n²`; `q(a,b)=a²+b²−ab`; empty q=0; A₂ polarization matrix `[[2,−1],[−1,2]]` | Pass formula; fail algebra-matrix identification R05 ; carried from [r1] |
| Tits zero locus versus imaginary roots | Two-/three-arrow Kronecker | At `(1,1)`, q is respectively `0` and `−1`; zero vector has q=0 but is not a root | Fail R09 ; carried from [r1] |
| Heredity / length-one resolution | A₂ S₁; dual numbers control | A₂ `0→P₂→P₁→S₁→0`; dual numbers have nonzero `Extⁿ(k,k)=k` for every n≥1 | Pass acyclic unbound scope; bound quotients need separate theory ; carried from [r1] |
| Euler–Hom–Ext identity | A₂ `(S₁,S₂)`, `(S₂,S₁)`, `(P₁,P₁)` | Respectively `−1=0−1`, `0=0−0`, `1=1−0` | Pass finite acyclic scope; headline inventory R14 ; carried from [r1] |
| Brick / rigidity distinction | Kronecker regular Jordan block of size 2 | `dim End=2`, `dim Ext¹=2`, `q(2,2)=0=2−2`; indecomposable is not a brick | Pass warning against equating indecomposable and brick ; carried from [r1] |
| `ReflectedQuiver` | A₂ reflect sink 2 twice | Arrow directions `1→2`, then `1←2`, then `1→2` | Pass intended; opaque instance R12 ; carried from [r1] |
| `reflectionFunctor` / source inverse | A₂ `P₁,S₁,S₂` | Sink images `(1,0),(1,1),0`; source reflection takes first two back to `(1,1),(1,0)` | Fail README images R04; intended inverse works away from killed simple ; carried from [r1] |
| `vertexReflection` fixed space | A₂ sink 2 | `s₂(1,0)=(1,1)`, `s₂(2,1)=(2,1)`, `s₂(0,1)=(0,−1)` | Fail coordinate hyperplane R11 ; carried from [r1] |
| `dimVector_reflectionFunctor` | `k²→k`; surjective infinite shift | Finite `(2,1)=(2,2−1)`; infinite actual `(0,1)`, asserted `s₂(0,0)=(0,0)` | Fail R02 ; carried from [r1] |
| `coxeterFunctor`, Coxeter action | A₁ S; A₂ sink order `[2,1]` | A₁ `0≠−1`; A₂ `C⁺S₁=S₂`, `s₁s₂(1,0)=(0,1)` | Conditional identity passes; universal one fails R03 ; carried from [r1] |
| `IsFinDim` | Zero; k at one vertex; k^(ℕ) at one vertex | Truth values `true,true,false` | Pass real predicate; duplicates native one ; carried from [r1] |
| `IsFiniteRepType` | Empty; A₁; A₂; Kronecker | Skeleton sizes `0,1,3,∞`; over finite fields Kronecker still has unbounded `(n,n+1)` indecomposables | Pass definition and field-independent boundary ; carried from [r1] |
| `gabriel_finiteRepType_iff` | Empty; A₁; A₂; one loop; Kronecker | `true/true`, `true/(n²>0 for n≠0)`, `true/positive`, `false/q(1)=0`, `false/q(1,1)=0` | Pass tests; empty signature is consistent but not a nonempty ADE graph ; carried from [r1] |
| ADE admissible ordering | A₂; D₄ central sink | A₂ `[2,1]`; D₄ centre then three leaves makes each selected vertex a sink | Pass existence ; carried from [r1] |
| Reflection preserves indecomposability | A₂ `P₁` and `S₂` | Image of P₁ is simple of dimension `(1,0)`; image of sink simple is 0 | Pass with exclusion ; carried from [r1] |
| Height-descent proof route | D₄ `(1;1,1,1)` | q before `4−3=1`, after `(2;1,1,1)` q=`7−6=1`; heights `4→5` | Fail R08 ; carried from [r1] |
| `indecomposable_unique_of_dimVector_eq` | A₂ over 𝔽₂, 𝔽₃ | A nonzero arrow `k→k` is isomorphic to identity; zero arrow splits; each of `(1,0),(0,1),(1,1)` has one indecomposable class | Pass finite case; signatures need agreed scope R14 ; carried from [r1] |
| `dimVector_isRoot_iff` | A₂ d=0, `(1,1)`, `(2,0)` | Existence/condition pairs `false/false` (q=0), `true/true` (q=1), `false/false` (q=4) | Pass finite classification; align domain R14 ; carried from [r1] |
| `exists_rootPairing_titsForm` | A₁; A₂ | Root sets `±1`; `±(1,0),±(0,1),±(1,1)`; Cartan matrices `[2]` and `[[2,−1],[−1,2]]` | Pass bridge tests; Nonempty excludes rank-zero irreducibility ; carried from [r1] |
| Indecomposable/root counts | A₀ boundary; A₁; A₂; D₄ | `0=0·1/2`, `1=1·2/2`, `3=2·3/2`; D₄ `3+8+1=12` | Pass; do not count centre simple twice ; carried from [r1] |
| ADE brick and rigidity assertions | A₂ three indecomposables | Each `dim End=1`, `dim Ext¹=0`, q=1 | Pass ; carried from [r1] |
| `arTranslate=D Tr` | A₂ S₁ and projectives; dual numbers k | A₂ `τS₁=S₂`, `τPᵢ=0`; dual numbers `τk=k` | Pass intended finite-algebra object; unrestricted admitted definition R12/R14 ; carried from [r1] |
| `IsIrreducibleMorphism` | A₂ injection `S₂→P₁`, projection `P₁→S₁`, identity | First two irreducible, identity not (it splits); composite from S₂ to S₁ is 0 | Pass predicate; use native one ; carried from [r1] |
| Category radical and square | `k[ε]/(ε³)`, regular indecomposable | End radical `(ε)`, square `(ε²)`, quotient dimension 1; ε² is radical but not irreducible | Specify irreducible representatives as nonzero classes in rad/rad², not all radical maps ; carried from [r1] |
| Minimal projective presentation / transpose | Dual-number simple | `A --ε→ A → k →0`; dual differential is ε, cokernel k, k-dual k | Pass finite-algebra input; owns no arbitrary-module minimal presentation ; carried from [r1] |
| AR duality milestone | A₂ `M=S₁,N=S₂` | `dim Ext¹(M,N)=1`, `dim stable-injective Hom(N,τM)=1`; dual dimension still 1 | Finite test passes; exact formula/quotient needs named target R14/R19 ; carried from [r1] |
| `IsAlmostSplit` | A₂ `0→S₂→P₁→S₁→0`; split counterpart | Nonsplit middle vector `(1,1)` with arrow id, split middle same vector with arrow 0; splitting truth `false/true` | Predicate excludes split wrong model; tau clause still depends on admitted data ; carried from [r1] |
| `exists_almostSplitSequence` | A₂ S₁; projective S₂; dual-number k | S₁ has displayed sequence; S₂ excluded; dual-number k has `0→k→A→k→0` | Pass intended theorem; Lean scope fails to cover bound example R14 ; carried from [r1] |
| `almostSplitSequence_unique` | Rescale A₂ injection by nonzero a | Endpoint-fixing comparison has middle map 1, left map a⁻¹ and right map 1; all squares commute; object isomorphisms alone omit these equations | Strengthen conclusion R14 ; carried from [r1] |
| `arQuiver` and finiteness | A₁; A₂; Kronecker | Vertex/arrow counts `1/0`, `3/2`, `∞/∞`; A₂ mesh `S₂→P₁→S₁`, τS₁=S₂ | Pass intended examples; admitted arrows are unconstrained R12 ; carried from [r1] |
| A₂ triangular-matrix model | Fix e₁=E₁₁,e₂=E₂₂ | Arrow a corresponds to E₂₁, hence lower triangular; swapping vertex labels gives upper triangular | Abstract upper-triangular isomorphism valid; labelled Check should specify the swap ; carried from [r1] |
| Kronecker worked example | Two arrows; n=0,1,2 | Path-algebra dimension 4; `q(n,n)=0`, `q(n,n+1)=1`; n=0 gives simples `(0,1),(1,0)` | Pass; imaginary-root family requires n≥1 ; carried from [r1] |
| Loop worked example | k[X]; ℝ irreducible X²+1; exponent 0 | Infinite basis `1,X,…`; irreducible quotient dimension 2; exponent 0 quotient dimension 0 | Fail classification R16; infinite type remains correct ; carried from [r1] |
| D₄ worked example | Centre coefficient 1, any leaf subset; highest root | Eight centre-supported vectors each q=1, three leaf simples q=1, highest `(2;1,1,1)` q=1 | Pass count 12 ; carried from [r1] |

| Revised boundary / target | Instances tried | Computed values on each side | Result / change |
|---|---|---|---|
| ArtinAlgebras §4.1 restricts to the field translate | A₂ nonprojective simple; dual numbers simple | `D_k Tr(S₁)=S₂`; for `A=k[ε]/(ε²)`, `Tr(k)=k`, `D_k(k)=k`, so `τk=k` | Matches the intended base field interface; does not repair R14’s narrower Lean scope |
| ArtinAlgebras §4.2 field AR formula | A₂ `M=S₁,N=S₂`; semisimple A=k | A₂ dimensions `dim Ext¹=1=dim D_k stableHom`; semisimple dimensions `0=0` | Field restriction agrees; no new reverse dependency |
| ArtinAlgebras §5.3 arrow-count adapter | A₂ mesh; semisimple A=k | Both A₂ arrows have `b=1`, `dim_k F_M=1`, hence `dim_k Irr=1=1·1`; field simple has `Irr=0`, count `0=0·1` | Updated general formula specializes to the existing unvalued counts |

### Current pinned-library evidence

Pins from `lake-manifest.json`, confirmed against both library checkouts: Mathlib **`f6090c7095e1e56b3464c1daba5f24631f1290d2`**; Tau Ceti **`358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`**. The following **25 declaration locations in 24 files** were opened at these pins. Paths are relative to the respective library repository. Old line numbers are not assumed stable: notably the path-algebra definition moved to line 111, the generator theorem to 1084, the local-endomorphism theorem to 282, and the admissible-radical file split into a subdirectory.

| Pinned file and line | Declaration / actual contract |
|---|---|
| `Mathlib/Combinatorics/Quiver/Basic.lean:37` | `Quiver.Hom` is a type for each ordered vertex pair; no finiteness or acyclicity |
| `Mathlib/Combinatorics/Quiver/Path.lean:32` | `Quiver.Path`, inductively nil or a path extended by an arrow |
| `Mathlib/CategoryTheory/PathCategory/Basic.lean:32` | `Paths`; categorical morphisms and concatenation at 43; `Paths.of` at 51 |
| `Mathlib/CategoryTheory/Limits/Shapes/BinaryBiproducts.lean:1096` | `CategoryTheory.Indecomposable`: nonzero and the biproduct condition; no finite-dimensionality |
| `Mathlib/LinearAlgebra/Dimension/Free.lean:268` | `Module.finrank_of_not_finite`: finrank equals zero for a nonfinite module |
| `Mathlib/LinearAlgebra/FiniteDimensional/Defs.lean:105` | `Module.Basis.finiteDimensional_of_finite`, the successful finite-basis padding probe |
| `Mathlib/Order/JordanHolder.lean:454` | `CompositionSeries.jordan_holder`, equal endpoints give equivalent composition series |
| `Mathlib/LinearAlgebra/RootSystem/Defs.lean:81` | `RootPairing`; `reflection` at 234 is a linear equivalence built from root/coroot pairing |
| `TauCeti/RepresentationTheory/Quiver/PathAlgebra/Basic.lean:111` | `TauCeti.pathAlgebra`, native path Finsupp carrier |
| `TauCeti/RepresentationTheory/Quiver/PathAlgebra/Basic.lean:1084` | `TauCeti.PathAlgebra.adjoin_vertexIdempotents_union_arrows`, both vertices and arrows are included |
| `TauCeti/RepresentationTheory/Quiver/Representation/Basic.lean:53` | `TauCeti.QuiverRep`, the native path-functor category |
| `TauCeti/RepresentationTheory/Quiver/Representation/AsModule.lean:574` | `TauCeti.quiverRepEquivalence`, field coefficients, finite vertices, explicit universe management |
| `TauCeti/RepresentationTheory/Quiver/Acyclic/Basic.lean:40` | `TauCeti.Quiver.IsAcyclic`, closed paths are nil |
| `TauCeti/RingTheory/KrullSchmidt/Indecomposable.lean:88` | `TauCeti.IsIndecomposableModule`; finite-length local-endomorphism theorem at 282 |
| `TauCeti/RingTheory/KrullSchmidt/Existence.lean:178` | `TauCeti.exists_indecomposable_decomposition`, finite-length internal decomposition |
| `TauCeti/RingTheory/KrullSchmidt/Uniqueness.lean:228` | `TauCeti.exists_equiv_linearEquiv_of_finset`, same matching conclusion |
| `TauCeti/Algebra/Module/ProjectiveCover/ModuleCat.lean:128` | `TauCeti.exists_projectiveCover`, algebra finite over Artinian coefficients; no module-length requirement, but a specified module universe |
| `TauCeti/RepresentationTheory/Quiver/AdmissibleIdeal/Basic.lean:102` | `TauCeti.IsAdmissibleIdeal`, two-sided ideal and bounds by powers of the arrow ideal |
| `TauCeti/RepresentationTheory/Quiver/AdmissibleIdeal/Radical/Basic.lean:45` | `TauCeti.IsAdmissibleIdeal.jacobson_eq_map_arrowIdeal`, radical of the quotient equals the image of the arrow ideal |
| `TauCeti/RepresentationTheory/Quiver/EulerForm.lean:57` | Native bilinear `TauCeti.eulerForm`; quadratic `TauCeti.titsForm` at 99 |
| `TauCeti/RepresentationTheory/Quiver/Reflection/DimensionVector.lean:68` | `TauCeti.vertexPreReflection`; loopless linear-equivalence `vertexReflection` at 132 |
| `TauCeti/RepresentationTheory/Quiver/FiniteRepType/Gabriel.lean:100` | `TauCeti.isFiniteRepType_iff_titsForm_posDef`, arbitrary field and connected underlying graph |
| `TauCeti/RepresentationTheory/Quiver/FiniteRepType/Basic.lean:87` | `TauCeti.IsFiniteRepType`, skeleton of finite-dimensional indecomposables |
| `TauCeti/RepresentationTheory/Quiver/Representation/Translate.lean:85` | `TauCeti.arTranslate`, explicit pointwise finite-dimensionality within finite-path hypotheses |
| `TauCeti/CategoryTheory/AlmostSplit/Sequence.lean:129` | `CategoryTheory.ShortComplex.IsAlmostSplit`, short exactness and left/right almost-split maps; no arbitrary τ parameter |

The four one-lemma proofs in R17 are mechanically rechecked, not inferred from similarly named declarations. The generator theorem’s correct namespace is `TauCeti.PathAlgebra`, correcting the shortened name in the previous report. The unrestricted dimension-vector issue remains visible directly in Mathlib’s native finrank convention.

### Headline inventory

Carried from the unchanged README: representation/module equivalence; finite-length Krull–Schmidt; projective covers and basic Morita reduction; Gabriel’s admissible-ideal presentation; the hereditary Euler–Hom–Ext identity; BGP reflection and Coxeter action; finite type iff ADE; positive-root existence/uniqueness and root-system realization; AR translate/duality; almost-split existence and endpoint-preserving uniqueness; the finite AR quiver and its translation.

The file still gives many of these through admitted data, does not test the general Euler–Ext and AR-duality interfaces, and restricts the general bound-algebra AR scope to finite-path unbound quivers. The updated pin has not repaired these acceptance signatures. R12–R14 specify the needed changes; the unused-hypothesis and nonheadline concerns are not treated as new mathematical counterexamples.

## Not verifiable

- **Seeded target, Gabriel’s presentation theorem:** unchanged README:303–309 still gives no theorem number or printed page. Carry forward the previous review’s unsuccessful legal lookup of ASS through Cambridge and the institutional `homepage.mi-ras.ru` copy (timeout). Neither the theorem/page nor exact source hypotheses are certified. The dual-number computation in R01 is independent of source access.
- The previous review could not retrieve readable **ars** or **derksen_weyman** texts from the Cambridge and AMS records. **gabriel** and **schiffler** were classified as uncertified publisher-only sources. These unchanged references were not reopened or renamed in this zero-line review. No source fetch, source manifest edit or new missing-reference request was made.
- Previous source evidence for **etingof** (arXiv:0901.0827v5, Theorem 5.23 and Definition 5.26, pp.89–90), **bgp** (author-hosted English translation, Theorems 1.1–1.2, pp.21–23), and **paquette** (arXiv:1104.1195v1, category on p.2, Theorem 3.5 on p.8) is explicitly inherited from [r1]. Those source locators were not reverified against new downloads. No changed source passage required such a check. In particular, the presentation sample remains uncertified and the Paquette limitation in R18 remains.
- The admitted data still prevents treating a successful Lean run as a proof of the intended constructions. The tables record finite computations and counterexamples, not certification of the remaining `sorry` proofs.

## Source issues

- none

[r1]: packages/QuiverRepresentations/reports/PRREVIEW-QuiverRepresentations~1.md
