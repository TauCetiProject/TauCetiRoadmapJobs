# Review of QuiverRepresentations (pull request #1397 at ca98ae0)
Folder: `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/`

**Verdict:** needs changes

🤖 AI review. This is the requested full-folder review, including inherited text and signatures. The actual change to this folder is the ArtinAlgebras boundary sentence; the findings below are not all introduced by that sentence. No pull-request file was changed.

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

**Repair:** State the identity when each successive reflection input has no summand equal to that step’s sink simple, or state the usual indecomposable dichotomy with a killed case. Fix the composition order explicitly. The repaired A₁ statement assigns S to the killed case; it does not equate 0 and −1. BGP Theorem 1.1, printed pp.21–22, distinguishes precisely the killed simple from the reflection formula (`bgp` line 173).

## R04 (P1) — The A₂ worked reflection contradicts the definition

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:430`, “carrying `P₁ ↦ P₁` and `S₁ ↦ S₂`”, followed by “realizing `s₁`”.

**Claim:** These are the images under reflection at sink 2, with vertices identified.

**Witness:** At vertex 2 the new space is a kernel. `ker(id:k→k)=0`, `ker(k→0)=k`, and `ker(0→k)=0`; images have vectors `(1,0)`, `(1,1)`, `(0,0)` respectively.

**Repair:** Write `F₂⁺P₁=S₁'`, `F₂⁺S₁=P₂'`, `F₂⁺S₂=0` for the reflected quiver `1←2`, and use `s₂(a,b)=(a,a−b)` on the surviving objects. The three displayed kernel computations test the correction. Etingof’s preprint Definition 5.26, printed p.90, gives this construction (`etingof` line 4007).

## R05 (P1) — Algebra Cartan and root Cartan matrices are different

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:452`, “the algebra’s `cartanMatrix` and the Tits form’s Gram matrix … reproduce the ADE Cartan matrix”.

**Claim:** The composition-multiplicity Cartan matrix equals the ADE root matrix.

**Witness:** For `1→2`, with the README’s rows indexed by projectives, `C=[[1,1],[0,1]]`. The polarized Tits matrix is `B=[[2,−1],[−1,2]]`. Already A₁ gives `[1]≠[2]`.

**Repair:** Keep the two matrices distinct. For this row convention put `E=C⁻¹`; the root matrix is `E+Eᵀ`, not C. On A₂, `E=[[1,−1],[0,1]]`, giving exactly B. State the transpose adapter to GrothendieckEulerForms, whose conventions use columns for projectives (`TauCetiRoadmap/GrothendieckEulerForms/README.md:77` on main).

## R06 (P1) — Arrows alone do not generate the path algebra

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:221`; also `Suggested.lean:59`. “The subalgebra generated by the arrows is all of `kQ`.”

**Claim:** Vertex idempotents are unnecessary as generators.

**Witness:** For two isolated vertices, `kQ=k×k`. There are no arrows; their generated unital k-subalgebra is `{(a,a)}`, of dimension 1, whereas `k×k` has dimension 2.

**Repair:** Generate by arrows together with all vertex idempotents. Cite `TauCeti.adjoin_vertexIdempotents_union_arrows`, `TauCeti/RepresentationTheory/Quiver/PathAlgebra/Basic.lean:1071`. In the test, adjoining `(1,0)` and `(0,1)` gives all pairs. Retain this disconnected example even though the classification theorem is connected.

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

**Witness:** The pin already has the path algebra (`PathAlgebra/Basic.lean:209`), equivalence (`Representation/AsModule.lean:574`), Krull–Schmidt (`KrullSchmidt/Uniqueness.lean:228`), Euler form (`EulerForm.lean:57`) and Gabriel dichotomy (`FiniteRepType/Gabriel.lean:100`). All paths have prefix `TauCeti/` as detailed below.

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

**Witness:** A scratch copy elaborated all four replacements: `exact (pathAlgebraBasis k Q).finiteDimensional_of_finite`; `exact TauCeti.isLocalRing_end_of_isIndecomposable hM h`; `exact TauCeti.exists_indecomposable_decomposition hM`; `exact TauCeti.exists_equiv_linearEquiv_of_finset hM hs his ht hit`.

**Repair:** Delete them from `Suggested.lean`; do not prove them in place. Cite the supplied mathematics in the README. The basis implication is true for both the zero-dimensional empty-quiver algebra and three-dimensional A₂, but is an immediate finite-basis consequence. The other three are existing library theorems, not new summits. The probe imported the individual pinned modules and completed with exit 0.

## R18 (P3) — No exact locator for the sampled presentation theorem

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:303` and references at 481–502.

**Claim:** The references support the individual targets at verifiable locators.

**Witness:** The presentation target gives neither a theorem number nor a page; its reference only gestures to ASS Chapters II–III. No `sources.toml` is present. Paquette’s Theorem 3.5 concerns pointwise finite-dimensional `rep(Q,I)`, not the claimed infinite-dimensional Kronecker example.

**Repair:** Attach exact source theorem/section and printed page to each target and record the works in the source manifest through the prescribed service. Supply a legal readable text/locator for the presentation theorem and match its arrow-ideal and basic/algebraically closed hypotheses. For Paquette, cite only what its domain supports (`paquette` lines 55–59, 349–353), or provide the separate argument/source for claims about the full functor category. The sample’s theorem number, page and source agreement are **not certified**; R01’s algebraic counterexample is independent of that access limitation.

## R19 (P3) — Missing contracts, per-definition Checks and headline-only form

**Location:** `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:1`, 104, 199 and 457; `Suggested.lean:4`.

**Claim:** The files supply the required roadmap build specification and acceptance-test form.

**Witness:** There is no Summary, Scope and ownership, Exact supplier contracts, per-target `*Needs:*`, or per-definition three-Check block. Layers are bullet catalogues without Examples/Dependencies endings. The docstring describes selected milestones and contains no inventory of unavailable headlines.

**Repair:** Restructure the same mathematical scope into the required sections, with explicit API, dependencies, exact locators and at least three discriminating Checks for each kept definition. Use the counterexamples above, zero/A₁ controls and the computed table below. Remove process wording and the trailing `</content>`. Reconcile names: the README advertises `gabriel_indecomposable_equiv_posRoot`, whereas the file uses two separate root/uniqueness theorems and a bridge not named there. The file must contain only remaining headlines and their few simple definitions; simple/projective API assertions belong in the README. Resolve the contradictory field conventions (README lines 44–53 versus 184, 204, 350 and 467) in favour of the full arbitrary-field ADE theorem.

## Verified sound

The entries below distinguish sound calculations from counterexamples. “Pass” records the stated finite test, not a proof of a sorried theorem. “Fail” names a finding; “intended” means the mathematical object described in prose, since admitted data cannot determine its Lean value.

### Gate, signatures and principles

- Reviewed the complete 503-line README and 373-line Lean file, the family index, relevant ArtinAlgebras boundaries, the normative README and CONTRIBUTING, and three main-roadmap comparators (RootSystems, SemisimpleAlgebras and GrothendieckEulerForms).
- Head verified as `ca98ae00e944bab24ce4f5a6595a175730695d18`. The outside-folder diff command from the brief produced no entries. The only target-folder diff is README lines 396–398. No git changes were made.
- Worker gate: `sorry-data=13`, all other listed counters 0, `FAIL`. Its targeted build passed. I independently built the missing import `TauCeti.RepresentationTheory.Quiver.EulerForm` and ran `lake env lean` on the original `Suggested.lean`: exit 0, only `sorry` warnings. No `set_option`, forbidden import, admitted example, or computational algorithm was found in the target files. The word “computable” does not itself specify an algorithm.
- Mechanically printed the elaborated signatures of **43 declarations**, including the four originally anonymous instances (named only in a scratch copy), in one successful elaboration. No section-variable loss was found. The elaborated types confirm the absent finite-dimensionality guard in R02, unrestricted translate input, arbitrary-field ADE signatures and finite-path restriction in AR existence. Source files were unchanged.
- Tried `simp`, `rfl`, and `infer_instance` separately on **all 16 sorried theorems** in a copy. None closed under those three probes. A subsequent one-lemma probe closed the **four** declarations listed in R17. The other declarations were read against the pinned definitions; no further one-tactic closure is claimed. A projective-cover library comparison exists but has universe packaging differences, so it is not counted among the successful probes.
- There is no declared supplier gap. The folder is an existing roadmap, not a newly proposed replacement, so “rejected for re-planning” is not the verdict. The readable sources yielded no evidence of copied passages; inaccessible books cannot be certified for that comparison.

### Adversarial values

Vectors for A₂ are ordered `(1,2)`. D₄ vectors are `(centre;leaf₁,leaf₂,leaf₃)`. Unless indicated otherwise k is any field, including 𝔽₂ and 𝔽₃. The **66 rows** address definitions, identities, theorems, conventions and named examples; purely bibliographic/interface checks follow the table.

| Statement / target | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| Quiver/path conventions | Empty quiver; A₁; A₂; loop | Numbers of paths `0;1;3;ℵ₀`; loop has lengths `0,1,2,…` | Pass; native paths retain direction and length |
| Later-factor-first path multiplication | A₂ arrow a | `e₂a=a=ae₁`; `e₁a=ae₂=0`; `a²=0` | Pass intended convention; R12 for opaque instance |
| Unit and orthogonal vertex idempotents | Empty; A₂ | Empty `1=0=∑∅`; A₂ `(e₁+e₂)a=a`, `e₁e₂=0` | Pass; zero algebra allowed |
| Associativity | Chain `1→2→3→4`, arrows a,b,c | `(cb)a=c(ba)` is the unique length-3 path; mismatched products are 0 | Pass intended multiplication |
| Acyclicity | Empty; A₂; loop | Closed paths: only nil for first two; loop path length `1≠0` | Pass |
| `finite_paths_of_isAcyclic` and converse | A₂; loop; infinite parallel-arrow control | `3<∞`, `ℵ₀` for loop; infinite parallel-arrow quiver is acyclic but has `ℵ₀` paths | Pass with stated finite-arrow assumption |
| Path basis and finite dimension | Empty; A₁; A₂; Kronecker | Basis cardinality / k-dimension `0/0;1/1;3/3;4/4` | Pass intended; R12/R17 |
| Generation by arrows | Two isolated vertices | Arrow-generated algebra dimension `1`, whole algebra dimension `2` | Fail R06; add e₁,e₂ |
| `QuiverRep` and abelian operations | A₂ map `k²→k` projection | Pointwise kernel `(k,0)`, cokernel `(0,0)`; identity path acts as identity | Pass native functor category |
| `quiverRepEquivalence` | A₂ regular module; zero module | Idempotent components of regular module have dimensions `(1,2)`, total `3`; zero gives `(0,0)` | Pass intended; inverse direction in prose must match displayed functor direction |
| Finite-dimensional representation convention | One-loop regular module | `Module.Finite k[X] k[X]=true`; `Module.Finite k k[X]=false` | Fail R15; restrict scalars to k |
| `simpleRep`, simplicity and exhaustion | A₁; A₂; one loop | Vertex simples have one coordinate 1; loop scalar 0 and scalar 1 give nonisomorphic simples with same dimension | Pass acyclic exhaustion; specify zero arrow maps |
| `indecProjRep` and projectivity | A₂ | `P₁=(1,1)`, `P₂=(0,1)`; `Hom(Pᵢ,M)` has dimension `dim Mᵢ` | Pass intended projective formula |
| Vertex projective is a cover | One-loop evaluation; A₁ | `(X−1)+(X)=(1)` with `(X−1)≠(1)`; A₁ identity has kernel 0 | Fail R10 outside finite-path setting |
| Vertex injective and dual path-space convention | A₂; loop over 𝔽₂ | `I₁=(1,0)`, `I₂=(1,1)`; loop dual has carrier cardinal `2^ℵ₀`, free path span cardinal `ℵ₀` | Finite-path basis passes; general basis claim fails R10 |
| `IsIndecomposableModule` | `0`, `k`, `k²`; dual numbers regular module | Truth values `false,true,false,true`; `k²=k⊕k`, dual-number idempotents only 0,1 | Pass real predicate; native duplicate |
| Fitting kernel/image decomposition | `f=diag(0,1)` on k²; ε on dual numbers | First `ker f⊕im f=k⊕k`; second `f²=0`, `ker f²=A`, `im f²=0` | Pass |
| `isLocalRing_end_of_isIndecomposable`, converse | k, k², zero | End rings `k`, `M₂(k)`, zero; local truth values `true,false,false`, matching indecomposability | Pass; native theorem, R17 |
| `exists_indecomposable_decomposition` | Zero; k²; dual numbers | Index counts `0,2,1`; total dimensions `0,1+1,2` | Pass; native theorem, R17 |
| `krullSchmidt_unique` | Coordinate axes and lines spanned by `(1,0),(1,1)` in k² | Both decompositions have two dimension-1 summands, including over 𝔽₂ | Pass; native theorem, R17 |
| Primitive idempotents / semiperfect frame | `M₂(k)`; dual numbers | `1=e₁₁+e₂₂`; matrix ring has one simple class with multiplicity 2; dual numbers have one primitive idempotent 1 | Pass when indexing classes, not individual idempotents |
| Radical nilpotence / semisimple quotient | `M₂(k)`; dual numbers | Radicals `0` and `(ε)`; powers `0¹=0`, `(ε)²=0`; quotients `M₂(k)` and k | Pass |
| `exists_projectiveCover`, injective envelope | Dual numbers and k | Dual-number cover `A→k`, kernel/socle `(ε)`; envelope `k→A`; field case both identities | Pass finite-algebra theorem |
| Algebra `cartanMatrix`, Hom multiplicities | A₂; division algebra ℂ over ℝ | A₂ `[[1,1],[0,1]]`; `Hom(P₂,P₁)` dimension 1. For ℂ: composition multiplicity 1, real Hom dimension 2 | Pass with stated split/basic comparison hypotheses |
| Cartan path count after relations | `1→2→3`, kill composite | Before: one path `1→3`; after: quotient path space dimension 0 | Use dimension of quotient path space, not raw count of equivalence classes of paths |
| `IsBasic` reduced semisimple quotient | k; `M₂(k)`; dual numbers | Quotients reduced `true,false,true`; `e₁₂²=0≠e₁₂` detects matrix block | Pass predicate |
| Minimal faithful projective characterization | A₂ | `dim A=3`, `dim End(P₁)=1`, although P₁ is faithful and minimal | Fail R07 |
| Morita reduction orientation | P=A as left regular module | Composition of right multiplications is reversed: `r_a∘r_b=r_{ba}` | Use opposite End for left modules, R07 |
| Admissible ideal / Gabriel presentation sample | A₂; one-loop dual numbers | A₂ `J²=0`, I=0 works; loop `J=(X)`, `I=(X²)=J²`, but `Jac(k[X])²=0` | Fail R01; arrow-ideal repair passes both |
| Ext-quiver arrow direction | A₂ simples | `dim Ext¹(S₁,S₂)=1`, `dim Ext¹(S₂,S₁)=0`; corresponding radical blocks have dimensions 1,0 | Pass arrow-count orientation; do not imply a choice-free identification with the dual space |
| `dimVector` and finite-dimensional additivity | `S₁⊕S₂`; infinite shift sequence | Finite vector `(1,1)=(1,0)+(0,1)`; shift dimensions give `0≠1+0` | Pass finite case; R02/R15 require guard |
| `eulerForm` bilinearity / order | A₂ simples; characteristic 2,3 coefficients | `E(e₁,e₂)=−1`, `E(e₂,e₁)=0`, `E(e₁+e₂,e₁)=1=1+0`; values live in ℤ | Pass; signs do not reduce modulo char k |
| `titsForm` and polarization | A₁; A₂; empty | `q(n)=n²`; `q(a,b)=a²+b²−ab`; empty q=0; A₂ polarization matrix `[[2,−1],[−1,2]]` | Pass formula; fail algebra-matrix identification R05 |
| Tits zero locus versus imaginary roots | Two-/three-arrow Kronecker | At `(1,1)`, q is respectively `0` and `−1`; zero vector has q=0 but is not a root | Fail R09 |
| Heredity / length-one resolution | A₂ S₁; dual numbers control | A₂ `0→P₂→P₁→S₁→0`; dual numbers have nonzero `Extⁿ(k,k)=k` for every n≥1 | Pass acyclic unbound scope; bound quotients need separate theory |
| Euler–Hom–Ext identity | A₂ `(S₁,S₂)`, `(S₂,S₁)`, `(P₁,P₁)` | Respectively `−1=0−1`, `0=0−0`, `1=1−0` | Pass finite acyclic scope; headline inventory R14 |
| Brick / rigidity distinction | Kronecker regular Jordan block of size 2 | `dim End=2`, `dim Ext¹=2`, `q(2,2)=0=2−2`; indecomposable is not a brick | Pass warning against equating indecomposable and brick |
| `ReflectedQuiver` | A₂ reflect sink 2 twice | Arrow directions `1→2`, then `1←2`, then `1→2` | Pass intended; opaque instance R12 |
| `reflectionFunctor` / source inverse | A₂ `P₁,S₁,S₂` | Sink images `(1,0),(1,1),0`; source reflection takes first two back to `(1,1),(1,0)` | Fail README images R04; intended inverse works away from killed simple |
| `vertexReflection` fixed space | A₂ sink 2 | `s₂(1,0)=(1,1)`, `s₂(2,1)=(2,1)`, `s₂(0,1)=(0,−1)` | Fail coordinate hyperplane R11 |
| `dimVector_reflectionFunctor` | `k²→k`; surjective infinite shift | Finite `(2,1)=(2,2−1)`; infinite actual `(0,1)`, asserted `s₂(0,0)=(0,0)` | Fail R02 |
| `coxeterFunctor`, Coxeter action | A₁ S; A₂ sink order `[2,1]` | A₁ `0≠−1`; A₂ `C⁺S₁=S₂`, `s₁s₂(1,0)=(0,1)` | Conditional identity passes; universal one fails R03 |
| `IsFinDim` | Zero; k at one vertex; k^(ℕ) at one vertex | Truth values `true,true,false` | Pass real predicate; duplicates native one |
| `IsFiniteRepType` | Empty; A₁; A₂; Kronecker | Skeleton sizes `0,1,3,∞`; over finite fields Kronecker still has unbounded `(n,n+1)` indecomposables | Pass definition and field-independent boundary |
| `gabriel_finiteRepType_iff` | Empty; A₁; A₂; one loop; Kronecker | `true/true`, `true/(n²>0 for n≠0)`, `true/positive`, `false/q(1)=0`, `false/q(1,1)=0` | Pass tests; empty signature is consistent but not a nonempty ADE graph |
| ADE admissible ordering | A₂; D₄ central sink | A₂ `[2,1]`; D₄ centre then three leaves makes each selected vertex a sink | Pass existence |
| Reflection preserves indecomposability | A₂ `P₁` and `S₂` | Image of P₁ is simple of dimension `(1,0)`; image of sink simple is 0 | Pass with exclusion |
| Height-descent proof route | D₄ `(1;1,1,1)` | q before `4−3=1`, after `(2;1,1,1)` q=`7−6=1`; heights `4→5` | Fail R08 |
| `indecomposable_unique_of_dimVector_eq` | A₂ over 𝔽₂, 𝔽₃ | A nonzero arrow `k→k` is isomorphic to identity; zero arrow splits; each of `(1,0),(0,1),(1,1)` has one indecomposable class | Pass finite case; signatures need agreed scope R14 |
| `dimVector_isRoot_iff` | A₂ d=0, `(1,1)`, `(2,0)` | Existence/condition pairs `false/false` (q=0), `true/true` (q=1), `false/false` (q=4) | Pass finite classification; align domain R14 |
| `exists_rootPairing_titsForm` | A₁; A₂ | Root sets `±1`; `±(1,0),±(0,1),±(1,1)`; Cartan matrices `[2]` and `[[2,−1],[−1,2]]` | Pass bridge tests; Nonempty excludes rank-zero irreducibility |
| Indecomposable/root counts | A₀ boundary; A₁; A₂; D₄ | `0=0·1/2`, `1=1·2/2`, `3=2·3/2`; D₄ `3+8+1=12` | Pass; do not count centre simple twice |
| ADE brick and rigidity assertions | A₂ three indecomposables | Each `dim End=1`, `dim Ext¹=0`, q=1 | Pass |
| `arTranslate=D Tr` | A₂ S₁ and projectives; dual numbers k | A₂ `τS₁=S₂`, `τPᵢ=0`; dual numbers `τk=k` | Pass intended finite-algebra object; unrestricted admitted definition R12/R14 |
| `IsIrreducibleMorphism` | A₂ injection `S₂→P₁`, projection `P₁→S₁`, identity | First two irreducible, identity not (it splits); composite from S₂ to S₁ is 0 | Pass predicate; use native one |
| Category radical and square | `k[ε]/(ε³)`, regular indecomposable | End radical `(ε)`, square `(ε²)`, quotient dimension 1; ε² is radical but not irreducible | Specify irreducible representatives as nonzero classes in rad/rad², not all radical maps |
| Minimal projective presentation / transpose | Dual-number simple | `A --ε→ A → k →0`; dual differential is ε, cokernel k, k-dual k | Pass finite-algebra input; owns no arbitrary-module minimal presentation |
| AR duality milestone | A₂ `M=S₁,N=S₂` | `dim Ext¹(M,N)=1`, `dim stable-injective Hom(N,τM)=1`; dual dimension still 1 | Finite test passes; exact formula/quotient needs named target R14/R19 |
| `IsAlmostSplit` | A₂ `0→S₂→P₁→S₁→0`; split counterpart | Nonsplit middle vector `(1,1)` with arrow id, split middle same vector with arrow 0; splitting truth `false/true` | Predicate excludes split wrong model; tau clause still depends on admitted data |
| `exists_almostSplitSequence` | A₂ S₁; projective S₂; dual-number k | S₁ has displayed sequence; S₂ excluded; dual-number k has `0→k→A→k→0` | Pass intended theorem; Lean scope fails to cover bound example R14 |
| `almostSplitSequence_unique` | Rescale A₂ injection by nonzero a | Endpoint-fixing comparison has middle map 1, left map a⁻¹ and right map 1; all squares commute; object isomorphisms alone omit these equations | Strengthen conclusion R14 |
| `arQuiver` and finiteness | A₁; A₂; Kronecker | Vertex/arrow counts `1/0`, `3/2`, `∞/∞`; A₂ mesh `S₂→P₁→S₁`, τS₁=S₂ | Pass intended examples; admitted arrows are unconstrained R12 |
| A₂ triangular-matrix model | Fix e₁=E₁₁,e₂=E₂₂ | Arrow a corresponds to E₂₁, hence lower triangular; swapping vertex labels gives upper triangular | Abstract upper-triangular isomorphism valid; labelled Check should specify the swap |
| Kronecker worked example | Two arrows; n=0,1,2 | Path-algebra dimension 4; `q(n,n)=0`, `q(n,n+1)=1`; n=0 gives simples `(0,1),(1,0)` | Pass; imaginary-root family requires n≥1 |
| Loop worked example | k[X]; ℝ irreducible X²+1; exponent 0 | Infinite basis `1,X,…`; irreducible quotient dimension 2; exponent 0 quotient dimension 0 | Fail classification R16; infinite type remains correct |
| D₄ worked example | Centre coefficient 1, any leaf subset; highest root | Eight centre-supported vectors each q=1, three leaf simples q=1, highest `(2;1,1,1)` q=1 | Pass count 12 |

### Pinned-library audit

Pins read from `lake-manifest.json`: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. These are source paths within the respective pinned repositories, not a newer library checkout. The following **24 source locations** were opened and compared with the objects/signatures (related declarations on the same line block are grouped).

| Pinned file and line | Declaration / actual contract |
|---|---|
| `Mathlib/Combinatorics/Quiver/Basic.lean:37` | `Quiver.Hom : V → V → Type v`; imposes neither finiteness nor acyclicity |
| `Mathlib/Combinatorics/Quiver/Path.lean:32` | `Quiver.Path`; length at 63, composition at 92 |
| `Mathlib/CategoryTheory/PathCategory/Basic.lean:32` | `Paths`; at 43 its morphisms are paths and composition is path concatenation; `Paths.of` at 51, `Paths.lift` at 111 |
| `Mathlib/CategoryTheory/Limits/Shapes/BinaryBiproducts.lean:1096` | `CategoryTheory.Indecomposable` includes nonzero and the biproduct condition, but no finite-dimensionality |
| `Mathlib/LinearAlgebra/Dimension/Free.lean:268` | `Module.finrank_of_not_finite`: infinite-dimensional junk value is zero |
| `Mathlib/LinearAlgebra/FiniteDimensional/Defs.lean:105` | `Module.Basis.finiteDimensional_of_finite`, successful R17 probe |
| `Mathlib/Order/JordanHolder.lean:454` | `CompositionSeries.jordan_holder` supplies composition-series equivalence |
| `Mathlib/LinearAlgebra/RootSystem/Defs.lean:81` | `RootPairing`; reflection at 234 is a linear equivalence, not a coordinate sign change |
| `TauCeti/RepresentationTheory/Quiver/PathAlgebra/Basic.lean:209` | `TauCeti.pathAlgebra`, native Finsupp-backed carrier with implemented multiplication; generation theorem at 1071 includes vertices |
| `TauCeti/RepresentationTheory/Quiver/Representation/Basic.lean:53` | `TauCeti.QuiverRep`, the same path-functor category |
| `TauCeti/RepresentationTheory/Quiver/Representation/AsModule.lean:574` | `TauCeti.quiverRepEquivalence`, finite vertices and field coefficients, with explicit universe management |
| `TauCeti/RepresentationTheory/Quiver/Acyclic/Basic.lean:40` | `TauCeti.Quiver.IsAcyclic`, same closed-path predicate |
| `TauCeti/RingTheory/KrullSchmidt/Indecomposable.lean:86` | `TauCeti.IsIndecomposableModule`; local-endomorphism theorem at 266, converse at 276 |
| `TauCeti/RingTheory/KrullSchmidt/Existence.lean:178` | `TauCeti.exists_indecomposable_decomposition`, same finite-length theorem |
| `TauCeti/RingTheory/KrullSchmidt/Uniqueness.lean:228` | `TauCeti.exists_equiv_linearEquiv_of_finset`, same uniqueness theorem |
| `TauCeti/Algebra/Module/ProjectiveCover/ModuleCat.lean:128` | `TauCeti.exists_projectiveCover`, algebra finite over Artinian coefficients, no module-length hypothesis, but particular module universe |
| `TauCeti/RepresentationTheory/Quiver/AdmissibleIdeal/Basic.lean:102` | `TauCeti.IsAdmissibleIdeal`, powers of arrow ideal and two-sidedness |
| `TauCeti/RepresentationTheory/Quiver/AdmissibleIdeal/Radical.lean:45` | `TauCeti.IsAdmissibleIdeal.jacobson_eq_map_arrowIdeal`: Jacobson radical of the quotient, not of kQ |
| `TauCeti/RepresentationTheory/Quiver/EulerForm.lean:57` | Native bilinear `eulerForm`; quadratic `titsForm` at 99 |
| `TauCeti/RepresentationTheory/Quiver/Reflection/DimensionVector.lean:68` | `vertexPreReflection`; loopless reflection interface and orthogonal fixed hyperplane |
| `TauCeti/RepresentationTheory/Quiver/FiniteRepType/Gabriel.lean:100` | `isFiniteRepType_iff_titsForm_posDef` over an arbitrary field, finite connected graph |
| `TauCeti/RepresentationTheory/Quiver/FiniteRepType/Basic.lean:87` | Native `IsFiniteRepType`: skeleton of finite-dimensional indecomposables, same object as the private predicate |
| `TauCeti/RepresentationTheory/Quiver/Representation/Translate.lean:85` | Native `arTranslate` explicitly requires pointwise finite-dimensionality, within finite-path hypotheses |
| `TauCeti/CategoryTheory/AlmostSplit/Sequence.lean:129` | `CategoryTheory.ShortComplex.IsAlmostSplit`; exactness and left/right almost-split maps, without a free τ parameter |

Additional declarations located by object search include native `IsFinDim` (`Representation/FiniteDimensional.lean:66`), `dimVector` (`Representation/DimensionVector.lean:48`), vertex projective/injective representations, reflection functors and their composites. Their existence further refutes a blanket “missing” inventory. Mathlib object searches did not find a path algebra, module Krull–Schmidt theorem or injective-envelope construction; this does not negate the extensive Tau Ceti implementations. No newer implementation asserted by a sibling document was treated as present without checking this pin.

### Ownership and supplier direction

The required `roadmaps grep` object search was run over open heads and main; board-package README/plan files were separately searched for path algebras, Krull–Schmidt, Gabriel and Euler forms. Relevant open text was read through `roadmaps show` and the supplied checkouts. The base folder remains the owner of quiver-specific path algebras, representations, their module comparison and Gabriel theory; the adjacent work explicitly builds on it. This is not an ownership rejection of the existing folder.

Resolved **three outgoing roadmap boundaries** and **three consumer/comparison boundaries**:

- **RootSystems on main:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:224` supplies positive roots; Layer 5 at 321 and the classification at 350 supply Dynkin data/classification. These substantive targets exist. Replace the vague `classification` spelling by the actual target/section and cite the Weyl-action section explicitly. Root-system realization from this quiver’s form remains a legitimate quiver-specific bridge, subject to native duplication checks.
- **SemisimpleAlgebras on main:** `TauCetiRoadmap/RepresentationTheory/SemisimpleAlgebras/README.md:90` supplies the pinned Wedderburn inputs; its simple/block and primitive-idempotent dictionary is described at 125–131. Use those contracts rather than a second generic block theory.
- **ArtinAlgebras at this head:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:80` and its Layer 4 explicitly extend the field case and describe comparisons replacing field-specific implementations. The added sentence is a downstream scope boundary, not an input needed to prove this base roadmap. It should stay that way to avoid a reverse dependency.
- **QuiverRepresentationsPartII at its supplied open head:** `TauCetiRoadmap/QuiverRepresentationsPartII/README.md:74` consumes base Layers 1, 2 and 5, and owns graded-window/multisegment constructions. It does not duplicate the base Gabriel theorem. Its namespace is distinct.
- **GrothendieckEulerForms on main:** `TauCetiRoadmap/GrothendieckEulerForms/README.md:11` leaves quiver theory here, while lines 77–79 choose the transposed Cartan convention. An explicit adapter is required as in R05; the two choices need not be silently identified.
- **CountingBundlesAndHallAlgebrasOfCurves package:** `packages/CountingBundlesAndHallAlgebrasOfCurves/README.md:11` and 67 use the base quiver/module/Krull–Schmidt theory and place its coherent-sheaf transfer there. No second generic quiver carrier is justified here by that application.

The target README has **zero `*Needs:*` lines**; the Ordering section supplies coarse layer edges but does not replace per-target contracts. No claim of an absent supplier section is made solely from the resolver. No duplicate fully qualified name with the distinct Part II or ArtinAlgebras namespaces was found; the problem is duplication of objects against libraries, not a namespace collision with those extensions.

The prescribed mechanical dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1485 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. This is a check of the recognized graph, not evidence that unspecified proof inputs or R08’s termination argument have been supplied. Main roadmaps are valid suppliers independently of open revisions; no open revision of an existing supplier was substituted for its main contract.

### Headline inventory and sources actually read

The README’s deep deliverables are: representation/module equivalence; finite-length Krull–Schmidt; projective covers and basic Morita reduction; Gabriel’s admissible-ideal presentation; the hereditary Euler–Hom–Ext identity; BGP reflection and Coxeter action; finite type iff ADE; uniqueness/existence of the positive-root correspondence and root-system bridge; AR translate/duality; almost-split existence and endpoint-preserving uniqueness; and the finite AR quiver with translation. The Lean file partly represents these, frequently via admitted constructions, omits a test of the Euler–Ext and general AR-duality interfaces, and narrows the general bound-algebra AR scope. Its many already implemented ingredients should be imported and removed from the unfinished headline list, not recatalogued as new work.

The README marks no individual locator as unverified; its exact presentation locator is absent. All **seven README references**, plus **Paquette** from the Lean docstrings, were attempted through the sources service. Three full texts were obtained legally:

- **etingof:** arXiv:0901.0827v5. Read the ADE statement, Theorem 5.23, printed p.89 (`etingof` lines 3991–3994), and reflection Definition 5.26, p.90 (lines 4007–4020), plus the reflection formula/orthogonal hyperplane at lines 3977–3984. These confirm the corrected A₂ calculation and fixed hyperplane. This is a preprint with different chapter numbering from the README’s published-book reference; published/preprint locator equivalence was not presumed. [Preprint](https://arxiv.org/abs/0901.0827).
- **bgp:** author-hosted English translation. Read the finite-dimensional, arbitrary-field setting, printed p.17 (`bgp` lines 17–26), Theorem 1.1, pp.21–22 (lines 173–189), and the admissible-sequence/orientation result, Theorem 1.2, p.23 (lines 234–255). They support arbitrary-field reflection theory, with the killed-simple exception; they do not justify an unconditional Coxeter dimension formula. [Author’s copy](https://www.math.tau.ac.il/~bernstei/Publication_list/publication_texts/BGG-CoxeterF-Usp.pdf).
- **paquette:** arXiv:1104.1195v1. Read the category definitions on printed p.2 (`paquette` lines 50–59), and Theorem 3.5, p.8 (lines 349–353). The theorem is about `rep(Q,I)`, whose vertex spaces are finite-dimensional, so it does not by itself certify the docstring’s assertion about infinite-dimensional Kronecker objects in the full category. [Preprint](https://arxiv.org/abs/1104.1195).

## Not verifiable

- **Seeded target: Gabriel’s presentation theorem.** The README supplies no theorem number or printed page. The `ass` service lookup reached Cambridge’s book page but supplied no readable theorem text. An institutional teaching copy at the Steklov Institute’s `homepage.mi-ras.ru` was then requested through the service and timed out. Accordingly neither a theorem/page locator nor exact agreement with that source is certified. In particular, a guessed “II.3.7” lookup is not a verified citation and is not presented as one. The independent dual-number computation still refutes the ideal choice in R01.
- **ars**, Auslander–Reiten–Smalø: service reached the Cambridge landing page and did not obtain legal readable text. General AR textbook locators/hypotheses were not certified from this work.
- **derksen_weyman**: service reached the AMS GSM 184 landing page but did not retrieve readable text. Its Euler/Tits and reflection locators were not certified from that book.
- **gabriel**, *Unzerlegbare Darstellungen I*, and **schiffler**, *Quiver Representations*: the service classified these as **uncertified**, resolving only to paywalled publisher records. No bypass was attempted and they are not new missing-text requests.
- The unresolved `ass`, `ars` and `derksen_weyman` entries are retained in `needs-references.toml`, including the additional institutional attempt for `ass`. No manifest or source file was added to the pull request. The review is complete with these limits; it is not parked pending sources, and the verdict does not rely on their inaccessible contents.
- General truths involving admitted data are not established by the successful Lean run. The table computes the intended mathematical models and explicitly marks false statements and scope failures; it does not certify all the remaining sorried proofs.

## Source issues

- none
