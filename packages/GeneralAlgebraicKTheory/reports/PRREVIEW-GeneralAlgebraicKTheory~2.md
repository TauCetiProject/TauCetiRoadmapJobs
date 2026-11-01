# Review of GeneralAlgebraicKTheory (pull request #1212 at 1cb5cc3)
**Verdict:** needs changes

## R01 (P2) — Define the acyclic subpair of the weak-inflation replacement

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:2552`, “Restrict to weak inflations i to obtain the replacement C, with the `C₀`.”

Claim: this constructs a Frobenius pair whose section and projection are connective K-equivalences. The ambient category C is specified, but C₀ is not. Its objects, exact structure and inclusion determine the weak equivalences, so this is missing mathematical data, not just notation.

Witness: schlichting-2003-11 line 1066 first saturates both pairs; line 1075 defines C₀ as the inflation category of F₀. Lines 1076–1082 identify componentwise weak equivalences and the natural weak equivalence proving the retraction assertion.

For F=id on bounded k-complexes with acyclic subpair, `(k[0],id)` must survive: its Euler class is 1. Choosing C₀=C instead makes its derived class 0; the same displayed ambient C then cannot give the asserted equivalence. All three existing Checks concern objects of C and leave this ambiguity unresolved.

Repair: explicitly pass to saturated subpairs, explaining that this preserves the Waldhausen weak equivalences, and define C₀ as the full triples with a∈A₀ and b∈B₀, with the induced conflations and projective-injectives. Prove that the inclusion is a Frobenius-pair inclusion and that weak maps are precisely the componentwise weak maps. Use the natural weak equivalence `(id,i)` for the section/projection comparison, as in the cited proof; alternatively list the actual additivity input in *Needs*. Add the negative control `(k[0],id)∉C₀` and the positive control `(I,id)∈C₀` for contractible I. With this repair their classes are respectively 1 and 0, and the section/projection composite preserves both.

## R02 (P3) — Correct the exact base-change module citation

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:49`, “`TauCeti.CategoryTheory.Exact.AdmissibleBaseChange`”.

Claim: the named pinned module supplies exact base change. That module does not exist at the Tau Ceti pin.

Witness: `TauCeti/CategoryTheory/Exact/BaseChange.lean:145` and `:169` declare `ExactStructure.conflation_cobaseChange` and `ExactStructure.conflation_baseChange`.

Repair: cite `TauCeti.CategoryTheory.Exact.BaseChange` and those declarations. This supplies the requested input without a new target or gap. On the split sequence k→k²→k, base change along 0→k gives k→k→0; the replacement citation covers exactly that construction.

## R03 (P3) — Make the finite-domination negative control an actual example

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:2747`, “A supplied homotopy `(fg)²≃fg` does not justify an idempotent-completion object (D,fg).”

Claim: this is the third Check for finite domination. It states a caution but computes no instance; the definition has only two actual example Checks.

Witness: take V=D to be the contractible cochain complex ℤ --id→ℤ in degrees 0,1, with f=2id and g=id. The contraction gives gf≃id, but (fg)²=4id≠2id=fg.

Repair: replace the quoted Check with that example, specifying the degree −1 homotopy h=id from degree 1 to degree 0. Then dh+hd=id=gf−id, whereas the proposed strict projector fails by 2id. This distinguishes genuine finite-domination data from an actual Karoubi idempotent. Keep the example in the README, not Suggested.lean.

## Verified sound

### Previous findings

All ten previous findings were checked against this head, not assumed closed from the size of the repair. The identifiers in this table refer to the previous review.

| Previous finding | Passage at this head | Assessment and witness |
|---|---|---|
| R01, contractible additivity fibre | §5.4: “pᵧ is a homotopy equivalence” | Repaired. The target of p_y is δC, not a point. At the zero vertex and finite-dimensional k-vector spaces, both fibre and δC have π₁=ℤ. |
| R02, shift mistaken for a swindle | §11.5: “T(A)=⊕ᵢ≥₀tⁱA” | Repaired. The countable sum has dimension ℵ₀; 1+ℵ₀=ℵ₀. A shift alone would give 1+1=2. |
| R03, plus/Q proof cycle | §3.12: “This comparison needs neither a stable matrix group nor a choice of ring-side normalization.” | Repaired. Split-exact group completion precedes projective cofinality (§3.13), then the normalized comparison (§3.14). |
| R04, duplicate relative triples and additive K₁ | Scope: “Sections 3.2–3.3 supply the relative triple group” | Repaired. §4.16 adds the split-exact Q comparison; §4.17 extends target-K₁ exactness beyond fullness. The algebraic supplier still owns the presentation and boundary. |
| R05, duplicate Quillen A signatures | Suggested.lean: “Quillen's Theorem A and its dual … belong to the supplier” | Repaired. Neither duplicate theorem nor its wrapper is declared. |
| R06, missing resolution refinement | §4.5: “Assume also the refinement property: every deflation M↠P” | Repaired. Over ℤ the module ℤ/2 has a length-one projective resolution; over k[ε]/ε² the simple module has covers but infinite projective dimension. |
| R07, scalar-extension locator | §3.1: “Weibel II, Remark 2.8 and Example 2.8.1, p.76” | Repaired. The cited passage concerns finite projectives; ℤ→ℤ/2 takes a split free retraction to a split free retraction without flatness. |
| R08, nonexistent local API names | §12.5: “`FiniteChainDomination`: finite A-complex D, chain maps f,g and homotopy `gf≃id`.” | Repaired. The remaining local names resolve to this Lean file. The scanner's supplier-name leads resolve in StableHomotopyKTheory; the distinct module error is R02 above. |
| R09, Lean form and missing-headline explanation | “General algebraic K-theory: target signatures”; Layer 11/12 markers; §11.4a omission explained | Repaired. Five substantive target statements remain, with native carriers and no sorry'd data. |
| R10, stable automorphism locator | §4.16: “Weibel IV, T 4.10, pp.IV.43–44, C 4.11.1, p.IV.45” | Repaired. Countable cofinality and faithful translations are retained for the stable automorphism description; they are not imposed on the general intrinsic K₁ comparison. |

### Gate, build, signatures and shape

The worker's gate at this exact head reports every check passing, including the targeted build. Independently confirmed HEAD, an empty outside-folder diff and a clean tracked worktree. No `set_option`, sorry'd data, extra imports, algorithms, route-specific prime restrictions or copied source passages were identified. The p>3 restriction in the Artin numerical example is the corrected theorem's range, not a restriction on the general library.

Independent supplier-order check:

```text
depcheck: 205 roadmaps, 1457 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. Read the *Needs* lines and the supplier/consumer contracts. No declared supplier gap exists. R02 is a wrong module locator for an existing input, not an unowned theorem.

Built the two individual imported Tau Ceti modules, then ran `lake env lean` on the original `Suggested.lean`: exit 0, exactly five `sorry` warnings. A scratch signature probe elaborated all five target signatures and `FiniteChainDomination`. The printed signatures retain smallness, triangulation, repleteness, density, full faithfulness, additivity, finite support and the actual domination homotopy as appropriate. No lost section hypothesis was found. Both local instances were also named and `#check`ed in a scratch copy; their elaborated types retain all their displayed inputs. Their bodies were inspected; they supply binary biproducts and additive Karoubi extension, not mathematical targets.

Each of the five admitted theorems was tried with `simp`, `rfl` and `infer_instance` on a scratch copy; none closed. Object searches in the pinned libraries found no single existing theorem furnishing these conclusions. The three dense-subcategory targets do not restate the definition of triangulated K₀; rectification and the Euler obstruction are likewise substantive. No padding deletion is requested.

The README has 13 layers and 172 numbered subsections. Definition API lists, labelled Checks, layer examples and dependencies are present. Section 12.5 needs the concrete third Check in R03. The manuscript's main incompleteness is the missing defining subpair in R01. The shape was compared with the main-branch GrothendieckEulerForms and ClassifyingSpaces roadmaps.

### Headline coverage

The headline families are: Q/plus/S comparisons; exact and Waldhausen additivity; resolution and dévissage; Serre/Waldhausen localization and approximation; cofinality; multiplicative K-theory and transfers; relative/nonunital theory and excision; projective-line splitting; Nil comparison and the Fundamental Theorem; Bass/nonconnective constructions and uniqueness; Frobenius localization and enhanced derived invariance; dense-subcategory classification; triangulated completion; finite-domination rectification and its Euler obstruction; cone/Bass/Frobenius comparison and negative vanishing; finite-field K-groups and the Artin counterexample.

The five native-carrier statements cover §11.4's membership, classification and injectivity, §12.6's finite-model conclusion and §12.7's Euler criterion. Suggested.lean's module docstring names the other headline families and the missing Q/S, spectrum, exact-derived-model or KU/BU carriers. The pins do not supply those constructions. No substitute predicate or invented K-group is used. The local finite-poset criterion and elementary matrix/rank computations are supporting targets, not substitute headline signatures.

### Seeded source audit

All 15 seeded targets were compared with legally fetched text, including hypotheses and proof steps. There are no README locators explicitly marked unverified. References to the 2003 Schlichting manuscript and the Cárdenas–Pedersen preprint use those versions' numbering. In the table, Weibel line numbers refer to the separately paginated chapter when its locator is prefixed III/IV, and to the combined book for other locators.

| Target | Source text opened | What the source supports |
|---|---|---|
| 1.1 | schlichting-2003-11 line 1263, Appendix A.10, p.26; Weibel IV §§3.1–3.3 | Nonempty category; nullhomotopies for all finite-poset functors imply contractibility. The connectivity proof has the minor gap recorded below. |
| 3.4 | weibel-1 line 158, III §1.3, pp.III.4–5 | Elementary stable commutator/perfection theorem; unstable rank-two exceptions are not discarded. |
| 3.11 | weibel-1 line 2993, IV proof of Theorem 7.1, p.IV.64; line 3040, Exercise 7.3, p.IV.65 | Contractibility of the localized total extension category, including the exact-category extension beyond the split fibre calculation. |
| 4.9 | weibel-1 line 24107, V Claims 5.1.2–5.1.3, pp.403–404 | Common quotient models and the QB fibre; kernels and cokernels must lie in the Serre subcategory. |
| 4.16 | weibel-1 line 2058, IV Theorem 4.10, pp.IV.43–44; line 2115, Corollary 4.11.1, p.IV.45 | Stable automorphism homology/plus description under cofinality and faithful translation, and additive K₁ identification. |
| 9.5 | quillen-2 line 2369, canonical resolution and Lemma 1.14, pp.133–134; line 2493, associative-ring adaptation, p.135 | Evaluation resolution of a regular bundle; its first term is a twist of a projective section module, not itself necessarily regular. |
| 9.6 | quillen-2 line 2453, Lemma 2.2 and proof, p.134 | Twisted regular subcategories have equivalent K-theory, using the Koszul/additivity argument. The roadmap reverses the source's twist parameter consistently. |
| 9.8 | weibel-1 line 7604, II Lemma 7.8.2 and (7.8.3), p.138 | Nil objects correspond to finitely presented t-power-torsion modules of projective dimension at most one. Checked the printed page as well as extraction: the characteristic resolution is t−ν. |
| 9.17 | weibel-1 line 26009, V Theorem 8.2 and its splitting, pp.430–431 | The section uses the t-class in the first factor with the specified positive boundary. |
| 10.8 | weibel-1 line 1711, III §4, pp.III.31–32 | Negative-theory axioms, cone/suspension dimension shifting and uniqueness; flasqueness is essential. |
| 10.12a | weibel-1 line 6779, II Theorem 6.5, p.122; line 7031, Exercise 6.13; II §7.8 | Polynomial invariance of G₀ and its regular-ring K₀ consequence; the G₀ evaluation map includes both quotient and kernel terms. |
| 11.1 | schlichting-2003-11 line 376, §§3.3–3.5, pp.8–9; line 490, §§5.3–5.4, p.11 | Frobenius pairs, stable/derived quotient and degreewise split complexes. The acyclic subpair uses complexes homotopy equivalent to acyclic complexes. |
| 11.9 | schlichting-2003-11 line 1055, Proposition 11.15 proof, pp.22–23 | Ambient triples and weak-inflation restriction agree. The source's C₀ and saturation step are missing from the target: R01. |
| 12.8 | carlsson-pedersen-17 line 816, Proposition 4.7, p.751; line 853, proof of Theorem 4.1, pp.751–752; cardenas-pedersen-16 line 626, §7.2 | Bounded quotient lifting and the equivalence between quotient contractibility and finite domination, using actual filtration refinements. |
| 12.9 | cardenas-pedersen-16 line 606, Theorem 7.1; line 617, Proposition 7.2; lines 643–679 and 744–763, §§7.4–7.8, pp.18–24 | Complex approximation, restricted idempotent completion and its homotopy-fibre consequence. The subgroup H is the image preimage, not the zero subgroup. |

Also opened thomason-9 line 241 (Theorem 2.1), line 299 (Lemma 2.2) and its Corollary 2.3 for the three dense-subcategory signatures; Ranicki's Propositions 2.1, 3.1–3.2 for the finite-complex signatures; and dugger-shipley line 810 (Remark 4.9) for the corrected finite-ring range. These supplement, rather than replace, the primary-source limitations below.

### Ownership and supplier resolution

Compared the main checkout, the named open checkouts, the roadmap search service and board package README/Lean files by objects: dense triangulated subcategories, finite domination, Karoubi filtrations, Q/S comparisons, stable elementary groups, relative triples, cone/suspension and Nil theory. The extra targets here are exact-category/ring comparisons and nonconnective constructions. GeneralAlgebraicKTheoryPartII explicitly begins from this ordinary library; SchemeKTheoryOperationsPartII and the arithmetic K-theory directions consume it. They are consumers, not prerequisites. No new declaration here has a fully qualified name already declared in the readable sibling Lean files.

Resolved supplier contracts against these actual sections:

| Supplier | Location read | Boundary verified |
|---|---|---|
| AlgebraicKTheory | `TauCetiRoadmap/AlgebraicKTheory/README.md`, A0–A2, §§2.2, 3.2–3.3, A6 | Associative extension, stable matrices, intrinsic additive K₁ and relative triples remain there. Fullness belongs to its stronger stable-isomorphism criterion, not to the definition of the boundary. |
| StableHomotopyKTheory | `TauCetiRoadmap/StableHomotopyKTheory/README.md`, §§1.1–1.34, 2.17–2.35, 3.1–3.28, 4.3–4.21, 6.1–6.2, 7.9 | The named realization, plus, group-completion, S/additivity and relative-S steps exist. In particular the simplex fibre contracts over its quotient, not to a point. |
| GeneralizedCohomology | `TauCetiRoadmap/GeneralizedCohomology/README.md:556`, G2.10; G2.3–G2.7, G3.4/G3.7, G5.4 | Outgoing mapping paths, spectral comparisons, telescope maps and represented KU are supplied. Incoming paths here reverse that actual carrier. |
| DerivedModuleAlgebra | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1403`, §1.T.1 | Tower difference is xₙ−φₙxₙ₊₁; kernel/cokernel and maps are reused through the StableHomotopyKTheory aliases. |
| GrothendieckEulerForms | `TauCetiRoadmap/GrothendieckEulerForms/README.md:238`, Layers 2–3 | Algebraic K₀, bounded Euler and resolution comparisons are inputs. Higher Q/S resolution is additional. |
| DGAInfinity | `TauCetiRoadmap/DGAInfinity/README.md:431`, Layers 5–7 | Enhanced perfect categories, derived Morita and DG quotients are supplied. General triangulated completion and nonconnective K-theory are not reconstructed from a bare equivalence. |
| AlgebraicTopology; UniversalCovers | `TauCetiRoadmap/AlgebraicTopology/README.md`, Stages 2, 4, 5, 8; `Completed/UniversalCovers/README.md:63`, Stages 0–3 | Local coefficients, CW and spectral-sequence inputs, Whitehead, covers and higher homotopy comparisons. The connected/local-path/semilocal hypotheses for covers are retained. |
| AlgebraicVectorBundles; SchemeAndStackFoundations | `TauCetiRoadmap/AlgebraicVectorBundles/README.md:228`, L0B; `TauCetiRoadmap/SchemeAndStackFoundations/README.md:6721`, §5.4 | Affine finite-projective/finite-locally-free comparison and scheme projective bundles stay there. The associative-ring gluing category here is a different object. |

The outbound GeometryOfNumbersAndQuadraticArithmetic §§6.1.1–6.1.7 and §6.10 contract was also resolved: its ordinary names are aliases; its first-to-second clutching parameter u is this roadmap's α=u⁻¹. No supplier edge back to that consumer was found.

Pinned declaration evidence (Mathlib `6b7abb3`, Tau Ceti `a91d3aa`):

| File at pin | Declaration and content inspected |
|---|---|
| `Mathlib/CategoryTheory/Triangulated/Subcategory.lean:177` | `ObjectProperty.IsTriangulated` includes zero, shifts and triangle closure; repleteness is a separate hypothesis retained in Lean. |
| `Mathlib/CategoryTheory/ObjectProperty/Retract.lean:86` | `retractClosure` is existence of an actual retract of an object satisfying the property, not merely equality of classes. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Triangulated.lean:139` | Native `TriangulatedK0`; triangle relation at line 154, shift negation at 193, induced map at 327. |
| `TauCeti/CategoryTheory/GrothendieckGroup/BoundedComplex.lean:202` | `SplitK0.eulerChar` is the finite alternating sum; support independence follows nearby; homotopy invariance at 277. |
| `TauCeti/CategoryTheory/Exact/Conflation.lean:566` | Existing conflation-category carrier; §4.2 adds its componentwise exact structure. |
| `TauCeti/CategoryTheory/Exact/BaseChange.lean:145` | Cobase change, and base change at 169: the actual replacement for R02. |
| `TauCeti/CategoryTheory/Exact/HomologicalComplex/Frobenius.lean:200` | Split-complex Frobenius structure; the ℤ up/down specializations at 210/217 apply. Boundedness and the homotopy-acyclic subpair remain local targets. |

The native Karoubi category has actual idempotents and additive functor extensions; the pin does not provide its shift/pretriangulation. Searches found no native exact-category Q or higher algebraic K-spectrum carrier that would make the omitted headline families statable by a few simple definitions.

### Adversarial computations

The following 174 rows cover all 172 numbered subsections, the seeded targets and the five Lean theorems. They record finite or structural test values, not a claim that examples prove the general theorems. “Pass” means the stated hypotheses survive these tests. Let k be a field, D=k[ε]/ε², C the exact category of finite-dimensional k-vector spaces, and T=Kᵇ(C). Homotopy/K-group values use the stated constructions and the checked source theorems; numerical consequences of unread primary calculations are explicitly conditional.

| Statement | Instances and computed values on the two sides | Result; change |
|---|---|---|
| 1.1 | Terminal category: π₀=1, higher π=0. Two discrete objects: π₀=2, and the two-point functor has no constant homotopy. Empty realization has 0 points. | Pass; nonemptiness/π₀ retained. |
| 1.2 | fib(id_X) is contractible; fib(X→*)=X. On ΩS¹ path reversal sends winding 1 to −1; reversing twice gives 1. | Pass; sign is retained. |
| 1.3 | Constant point bisimplicial set: both realizations are *. Subdivision of Δ¹ is an interval, with the same two endpoints. | Pass. |
| 1.4 | Identity functor: each relevant comma category has a terminal/initial object, hence π₀=1 and higher π=0; comparison is id. | Pass; imported. |
| 1.5 | Perfect subgroup 1: plus leaves π₁ unchanged. For A₅ with P=A₅, quotient π₁=1 while H₀=ℤ on both sides. | Pass; not an arbitrary quotient. |
| 1.6 | Free ranks: monoid ℕ completes to ℤ, 2−3=−1. An abelian group already completes to itself; zero category gives 0. | Pass. |
| 1.7 | C=0: every K-level is a point and all integer π vanish. For vector spaces π₀=ℤ, whereas raw level zero is not the corrected Ω-model. | Pass. |
| 1.8 | Sphere interchange in degrees (1,1) has determinant −1; (1,2) gives +1; (0,2) gives +1. | Pass. |
| 2.1 | Zero category Q has one object and one arrow. In C, spans representing 0←k→k exist; an isomorphism-only model would miss the resulting generator. | Pass. |
| 2.2 | In the zero category all universal structure maps are id₀; both sides of every composition square are id₀. | Pass on the degenerate instance. |
| 2.3 | Skeleton {kⁿ} and C: dimensions 0,1,2 are unchanged and the class of k is 1 in both K₀ groups. | Pass; no universe equality assumed. |
| 2.4 | The sequence k→k²→k gives loop relation 2=1+1; for zero category both π₁BQ and K₀ are 0. | Pass. |
| 2.5 | K₀(C)=π₁BQC=ℤ; K₀(0)=0. π₀BQ is instead a singleton, excluding the off-by-one definition. | Pass. |
| 2.6 | C×C gives K₀=ℤ², generator (k,0)=(1,0). Passing to opposites preserves that vector; zero product has K=0. | Pass. |
| 3.1 | ℤ→ℤ/2 sends the rank-one free module to rank one, despite Tor₁(ℤ/2,ℤ/2)=ℤ/2. Split retractions still compose to id. | Pass; no flatness added. |
| 3.2 | Zero ring: GL∞=1 and K₀=0. For k×k, K₀=ℤ²; rank alone would lose (1,0). | Pass. |
| 3.3 | e₁₂(a)e₁₂(b)=e₁₂(a+b); at a=b=1 over 𝔽₂ both sides are I. Stabilization appends an identity block. | Pass; imported algebra. |
| 3.4 | E₂(𝔽₂)=S₃ has commutator A₃≠S₃. In rank three [e₁₃(1),e₃₂(1)]=e₁₂(1). | Pass; stable range essential. |
| 3.5 | Corner k→M₂k has e=diag(1,0), e²=e. eM₂k is projective; h=0 gives e=0 and zero functor. | Pass. |
| 3.6 | Above quotient 0 the extension k→k→0 corresponds to k; its automorphism group is k×, not 1. | Pass; fibre not discretized. |
| 3.7 | Extensions k→k²→k combined over k give kernel dimension 2 and middle dimension 3: 3=2+1. Unit extension has kernel 0. | Pass. |
| 3.8 | Pullback of k→k²→k along 0→k is k→k→0. Its map to the original has quotient 0→k, not k→0. | Pass; source typo avoided. |
| 3.9 | Split extension over k is translated from kernel 0; group-completed action quotient has π₀=1. Identity homotopic to doubling gives x=2x, hence x=0. | Pass. |
| 3.10 | At quotient 0 the localized fibre is group completion of C: π₀=ℤ. Thus a point fibre would incorrectly give 0. | Pass. |
| 3.11 | Zero category localized total space is *. For C, total is contractible although its quotient-zero fibre has π₀=ℤ. | Pass; total and fibre distinguished. |
| 3.12 | C: π₀ΩBQC=ℤ=π₀B(S⁻¹S), [k]↦1. Projectives over k×k give ℤ² on both sides. | Pass. |
| 3.13 | Free modules over k×k have image {(n,n)} in ℤ²; (k,0) has complement (0,k) and sum rank (1,1). | Pass; positive cofinality not K₀ surjectivity. |
| 3.14 | Over 𝔽₅, inverse transpose takes scalar 2 to 3; the inverse/opposite adapter returns 3⁻¹=2. | Pass; normalized K₁ map fixes 2. |
| 3.15 | k×k has K₀=ℤ² but BGL⁺ is connected. A product description needs its actual K₀ factor, not a single rank copy ℤ. | Pass. |
| 4.1 | Split 3×3 diagram with all generating corners k: middle ranks are 1,2,1 in each short exact row; 2−1−1=0. | Pass. |
| 4.2 | Object k→k²→k has evaluation dimensions (1,2,1); direct sum with itself gives (2,4,2), preserving 4=2+2. | Pass; new exact structure on supplied carrier. |
| 4.3 | Extension object above maps to (1,1) in K₀(C)²; total class 2 equals 1+1. | Pass. |
| 4.4 | ℤ/2 has resolution ℤ --2→ℤ→ℤ/2; Euler class 1−1=0 in G₀(ℤ), matching its torsion class. | Pass. |
| 4.5 | pdℤ(ℤ/2)=1, while pd_D(k)=∞ (successive syzygies k). Both have projective covers; only the former has finite resolution. | Pass; repaired refinement retained. |
| 4.6 | For a field resolution length is 0 and K₀ map ℤ→ℤ is id. Over ℤ the torsion class resolves to 1−1=0. | Pass. |
| 4.7 | In k², lines ke₁ and ke₂ have intersection 0 and sum k²: 1+1=0+2. Equal lines give 1+1=1+1. | Pass; both intersection routes agree. |
| 4.8 | D has a two-step simple filtration: [D]=2[k] in G₀(D)=ℤ; the simple class generates G₀, not the free generator. | Pass. |
| 4.9 | Serre subcategory 0: quotient is identity and the model fibre reduces to QB with π₁=K₀(B). Serre subcategory B: quotient category is 0. | Pass. |
| 4.10 | For quotient object 0 and kernel in the Serre category, kernel functor returns that kernel; identity presentation has kernel 0. | Pass. |
| 4.11 | Identity epimorphism k→k has kernel 0; k²→k has kernel k. The kernel invariant records 0 versus 1. | Pass. |
| 4.12 | Identity quotient model already is epimorphic; choosing it again leaves kernel 0 and induced quotient id. | Pass on identity case. |
| 4.13 | Two finite subobjects ke₁,ke₂ admit common sum k², dimensions 1,1→2; a single intersection would have dimension 0 and fail enlargement. | Pass. |
| 4.14 | DVR O with fraction field F: K₀(k)→K₀(O) is 1↦0, K₀(O)→K₀(F) is 1↦1; boundary of uniformizer is 1. | Pass. |
| 4.16 | C over 𝔽₃: stable additive automorphisms abelianize to 𝔽₃×=C₂; Q-theoretic K₁ is C₂. Zero category gives 0. | Pass; countable/faithful stable description scoped. |
| 4.17 | T=id: relative K₀=0, ker δ=K₁. For finite free ℤ→ℚ, diag(2,1/2) has determinant 1, so K₁ class 0 although the matrix need not lift. | Pass; fullness not silently used. |
| 5.1 | In vector spaces with iso weak maps, k→0 cannot factor as mono then iso (1≤0 fails). For complexes the mapping cylinder supplies factorization. | Pass; extra axiom explicit. |
| 5.2 | Flag 0⊂k⊂k² has increments (1,1); an objectwise monic diagram with relative latching k→0 is not a cofibration. | Pass. |
| 5.3 | Natural isomorphism id⇒id induces equal endpoint maps; on rank-one object both loops represent 1. | Pass; supplier alias. |
| 5.4 | At zero vertex π₁Fᵧ=ℤ→π₁δC=ℤ is id; a contraction to a point would give ℤ→0. Quotient dimension stays 1 during pushout. | Pass; prior R01 repaired. |
| 5.6 | Additivity gives π₁δS₂C=ℤ²→π₁(δC×δC)=ℤ², (1,1)↦(1,1). | Pass; supplier alias. |
| 5.7 | Object loop k represents 1 in K₀=ℤ; zero object represents 0. Taking unlooped realization would instead give one component. | Pass. |
| 5.8 | Edgewise subdivision sends [0] to [1]; zero diagonal entries stay zero, and a one-step object k retains class 1. | Pass. |
| 5.9 | C has K₀ from S=ℤ and from Q=ℤ; the comparison sends the k-loop 1 to 1, not −1. | Pass. |
| 5.10 | k→k²→k induces 2=1+1 on K₀. A natural map k→0 alone would give 0≠1 and has no such additivity assertion. | Pass. |
| 5.11 | F=id: relative path construction is contractible. F:0→C: homotopy fibre of K(0)→K(C) is ΩK(C); F:C→0 gives K(C). | Pass. |
| 5.12 | Mapping cylinder of id_{k[0]} retracts to k[0]; its homology is k in degree 0, 0 elsewhere, matching the target. | Pass; no functorial choice assumed. |
| 5.13 | Empty finite poset yields initial/zero latching object; for a two-element chain the second latching map is the single structure arrow. | Pass; latching ranks 0 then 1. |
| 5.14 | Constant identity weak string contributes a contractible extra nerve direction: π₀=1 and higher π=0; forgetting it fixes object rank 1. | Pass. |
| 6.1 | With v=w=isomorphisms, trivial cofibrations are isomorphisms: comparison is id, rank 1↦1. | Pass. |
| 6.2 | Identity exact functor gives a contractible relative path object on both models, all homotopy groups 0. | Pass. |
| 6.3 | v=w implies acyclic subcategory consists of v-zero objects; fibre K is 0 and K(C,v)→K(C,w) is id. | Pass. |
| 6.4 | Identity approximation lifts 0⊂k⊂k² without change: subquotient dimensions (1,1) on both sides. | Pass. |
| 6.5 | Cylinder of zero complex is zero; cylinder of id_{k[0]} has Euler class 1+1−1=1. | Pass. |
| 6.6 | Empty boundary extension supplies a zero latching object; extending a constant k simplex preserves Euler class 1. | Pass on boundary/constant cases. |
| 6.7 | Identity approximation's comma category has the identity object; its realization has π₀=1 and higher π=0. | Pass. |
| 6.8 | Identity functor satisfies App1/App2 and induces id on K₀=ℤ; zero functor C→0 fails reflection at k→0. | Pass; excludes false equivalence ℤ≅0. |
| 6.9 | Degree-zero k maps to complex k[0], Euler 1. Contractible k --id→ k maps to Euler 1−1=0. | Pass. |
| 6.10 | Single-vertex poset uses one factorization; empty poset has unique diagram and zero latching object. | Pass; no uniform functorial factorization used. |
| 6.11 | Identity functor again gives contractible approximation commas; zero functor would send class 1 to 0 and fails the assumptions. | Pass. |
| 6.12 | Identity Frobenius-pair map preserves the complex k[0] and Euler 1; existential factorization suffices, no chosen global cylinder required. | Pass. |
| 6.13 | For identical weak classes, acyclic-cofibration comparison acts as id on the sole zero-object component; π₀=1 on both nerves. | Pass. |
| 6.14 | Nested classes v=v give fibre 0→K(C)→K(C), so kernel and image agree at 0. | Pass. |
| 6.15 | Euler p: k[0]→0 compares 1≠0, hence not weak; k[0]⊕k[1]→0 compares 0=0, hence weak though not a quasi-isomorphism. | Pass. |
| 6.16 | For G=ℤ, two increments (1,−1) have middle face 0; degeneracy inserts 0. Resulting BG has π₁=ℤ, π₀=1. | Pass on algebra; primary TT proof unavailable. |
| 6.17 | Euler quotient ℤ→ℤ has kernel 0 and discrete target ℤ; zero-Euler complexes give precisely component class 0. | Pass on this instance. |
| 6.18 | Finite free k×k modules give diagonal ℤ↪ℤ², quotient ℤ via (a,b)↦a−b. Positive cofinality does not assert K₀ surjectivity. | Pass. |
| 6.19 | Same free category has K₀=diagonal ℤ; replacing E′ by all projectives yields ℤ². Contractible complex on any retained object has Euler 0. | Pass; completion correction essential. |
| 7.1 | Flags with increments (1,2),(2,1) give tensor-grid increments (2,1,4,2), total 9=3·3. | Pass; direct sum would give (3,2,4,3). |
| 7.2 | On K₀(C), [k²]·[k³]=6; representatives at successive S-levels still give 6. | Pass. |
| 7.3 | Associating k²⊗k³⊗k gives rank 6 in either parenthesization; the natural isomorphism preserves class 6. | Pass. |
| 7.4 | Tensor of zero with k is 0; joint pushout product of 0→k and 0→k is 0→k, a cofibration. | Pass. |
| 7.5 | Odd/odd interchange gives xy=−yx, hence 2x²=0; even/odd gives xy=yx. It does not force x²=0 when 2-torsion exists. | Pass. |
| 7.6 | Tensor unit [k]=1; [k²]·1=2, [0]·2=0. For k×k, (1,0)(0,1)=(0,0). | Pass. |
| 7.7 | Degree-two extension E/k: transfer(1)=2; transfer(res(3)·1)=6=3·2. | Pass. |
| 7.8 | Purely inseparable degree-p E/F: E⊗F E has one residue field E of length p, so sum= p·id. Separable quadratic self-base-change has two length-one factors, sum=2·id. | Pass; multiplicities retained. |
| 8.1 | Relative K(id)=0; relative K(R→0)=K(R). On components identity has kernel 0. | Pass. |
| 8.2 | R=k×k→k: relative fibre has K₀=ℤ from the second factor; it is not the fibre for the other projection with its marked map. | Pass; map/ideal retained. |
| 8.3 | Unitization of unital k is ℤ×k: (1,0) maps to (1,1), augmentation kernel to (0,k). I=0 gives identity augmentation and zero fibre. | Pass. |
| 8.4 | Identity clutching α=1 yields equal chart coordinates and the trivial patch. Replacing u by α=u⁻¹ reverses the boundary: δ(u⁻¹)=−δ(u). | Pass; same ordered charts used. |
| 8.5 | Identity Milnor square gives K₁(A)→K₁(A)² diagonally, followed by (x,y)↦x−y; (x,x) maps to 0. | Pass. |
| 8.6 | Same square has boundary 0, kernel of difference=diagonal and K₀ pullback map diagonal; exact at all four interior terms. | Pass. |
| 8.7 | T=id: triple (P,id,P) has difference [P]−[P]=0 and relative fibre is 0. Nonzero difference cannot represent that triple. | Pass; supplier presentation retained. |
| 8.8 | Ideal I=0 gives ker(K₀ℤ→K₀ℤ)=0; the augmented patch is the identity square. | Pass. |
| 8.9 | Unital ideal k in k×k: relative K₀ of projection is ℤ=K₀(k); zero ideal gives 0=0. | Pass. |
| 8.10 | I=0 satisfies excision with 0 groups; unital direct-factor ideal has both relative spectra K(k). These do not justify excision for arbitrary ideals. | Pass; hypotheses not dropped. |
| 8.11 | Multiplication by uniformizer on O has kernel 0 and cokernel k: index=1−0=1. Identity has index 0−0=0. | Pass. |
| 8.12 | In a DVR, ∂(π²u)=2 and ∂(π⁻¹)=−1; normalized valuations give 2 and −1 as well. Works in equal and mixed characteristic. | Pass. |
| 8.13 | Right multiplication by rank r=2: ∂([π]·2)=2=∂[π]·2. Moving an odd factor across [π] instead adds a minus sign. | Pass. |
| 9.1 | Line twists u₀,u₁,u₂ have (H⁰,H¹)=(k,0),(0,0),(0,k); χ=1,0,−1. | Pass; gluing direction distinguishes twists. |
| 9.2 | Twisted Koszul line sequence gives χ(O(n))−2χ(O(n−1))+χ(O(n−2))=(n+1)−2n+(n−1)=0. | Pass including n=0,1. |
| 9.3 | O(−2) has H¹ dimension 1; twisting by 1 gives O(−1) with H¹=0, and by 2 gives O with H⁰=k. | Pass; eventual regularity, not initial regularity. |
| 9.4 | O(1): evaluation k²⊗O→O(1) is onto with kernel O(−1). O(−1) has H⁰=0 and is not generated by sections. | Pass. |
| 9.5 | For O(1), T₀=k² and T₁=k; resolution 0→O(−1)→O²→O(1)→0 has ranks 1→2→1 and χ 0→2→2. | Pass; kernel twist may not be regular. |
| 9.6 | For O, condition O(−n) regular holds for n≤0 and fails at n=1 since regularity requires H¹(O(−n−1))=0: H¹(O(−2))=k. Filtration decreases with n. | Pass; source's opposite parameter accounted for. |
| 9.7 | Over k, K₀(P¹)=ℤ² with basis [O],[O(−1)]; O(1)=2[O]−[O(−1)], coefficients (2,−1). | Pass. |
| 9.8 | Nil(k): (k,0) gives k[t]/t and resolution t:k[t]→k[t]. ν=1 is not nilpotent and k[t]/(t−1) is not t-power torsion. | Pass. |
| 9.9 | Zero endomorphism's chart resolution has equal projective terms P[t], hence Euler [P[t]]−[P[t]]=0. | Pass. |
| 9.10 | Zero torsion module admits the zero resolution; its resolution fibre has π₀=1, higher π=0. | Pass on zero case. |
| 9.11 | Laurent rank-one lattices t^a k[t], t^b k[t] have common over-lattice t^min(a,b)k[t]; a=0,b=1 gives k[t]. | Pass; finite refinements suffice. |
| 9.12 | Over k, chart restriction K₀(P¹)=ℤ²→ℤ sends (a,b)↦a+b; kernel generated by (1,−1). | Pass. |
| 9.13 | k[t]→k[t,t⁻¹]: ∂[t]=1 in K₀(t-torsion)=ℤ; its image in K₀(k[t]) is 1−1=0. | Pass; localization exact. |
| 9.14 | Nil object (P,ν) has characteristic resolution P[t] --(t−ν)→P[t]; image class in K₀(k[t]) is 0. | Pass. |
| 9.15 | Over k, reduced Nil₀=0=NK₁(k). Over D, 1+εt has inverse 1−εt, evaluation 1 and nontrivial determinant, giving a nonzero NK₁ class. | Pass; reduced term required. |
| 9.16 | For k, K₁(k[t,t⁻¹])=k×⊕ℤ, with t↦(1,1); both NK₁ terms vanish. For D the preceding Nil class prevents deleting NK. | Pass. |
| 9.17 | x=[k²] gives ∂{t,x}=2; replacing t by t⁻¹ gives −2; x=0 gives 0. | Pass; first-factor sign fixed. |
| 10.1 | Γk is flasque and K₀=0; k has K₀=ℤ with 1≠0 and is not flasque. Zero ring swindle gives 0=0. | Pass. |
| 10.2 | Constant functor ℤ has NF=LF=0; 1↦(1,1)↦1−1=0. Using sum would give 2. | Pass. |
| 10.3 | Iteration n=0 at k gives ℤ; n=1 gives 0. At k×k the values are ℤ² and 0. | Pass; no natural subtraction ambiguity. |
| 10.4 | For k, LK₁=ℤ=K₀, LK₀=0=K₋₁. A constant functor has N=L=0 under either iteration order. | Pass. |
| 10.5 | At k, j=0: ℤ=ℤ⊕0⊕0⊕0; j=1: k×⊕ℤ=k×⊕ℤ⊕0⊕0. | Pass. |
| 10.6 | K₀(M₂k)=ℤ via a minimal projective; [M₂k]=2. Corner map is ×1 under Morita, unital scalar inclusion is ×2; n=0 would give 0. | Pass; finite nonempty index retained. |
| 10.7 | Zero ring has every negative group 0. Cone ring has 0 groups; omitting cone vanishing would permit an extra uncontrolled summand. | Pass on specified axioms. |
| 10.8 | Cone suspension identifies K₋₁(k)=K₀(Σk)=0; for ΣΓk both sides also vanish. Comparison on K₀(k) fixes 1. | Pass; normalization part of uniqueness. |
| 10.9 | Identity Milnor square in degree −1 is diagonal/difference on the same group: (a,a)↦0; at k all groups are 0. | Pass. |
| 10.10 | Bass spectrum of k has π₀=ℤ, π₋₁=0; zero ring yields zero spectrum. | Pass on field/zero cases. |
| 10.11 | k: connective and Bass π₀ both ℤ, both positive K₁=k×, Bass π₋₁=LK₀=0. | Pass. |
| 10.12 | I=k as direct-factor ideal: nonpositive relative group in degree 0 is ℤ; negative groups 0. I=0 gives 0 in every tested degree. | Pass. |
| 10.12a | Evaluation on k[t] gives [k]−0=1; on t-killed k gives [k]−[k]=0. Omitting the kernel term incorrectly gives 1. | Pass. |
| 10.13 | Field and DVR have finite global dimensions 0 and 1; negative K-groups vanish in both cases. D is not finite-global-dimensional, so the hypothesis excludes it. | Pass; no singular vanishing inferred. |
| 11.1 | Contractible k --id→k is projective-injective in the split-complex Frobenius category and maps to 0; k[0] has homology k and derived class 1. | Pass. |
| 11.2 | Identity k[0] factors through its mapping cylinder with weak comparison on homology k→k=id; the zero complex factorizes through zero. | Pass. |
| 11.3 | Even-Euler subcategory A⊂T: stable classes form ℤ/2; χ(k)=1, χ(k²)=0 mod 2, and 1+1=0. | Pass; density supplies inverses. |
| 11.4 membership | For even-Euler A, k is outside and 1∉2ℤ; k² is inside and 2∈2ℤ. Both directions agree. | Pass; Lean target 1. |
| 11.4 classification | H=0 gives zero-Euler objects, containing k⊕k[1] with 1−1=0; H=ℤ gives all T; H=2ℤ gives parity objects. | Pass; Lean target 2. |
| 11.4 injectivity | K₀(A)=2ℤ↪ℤ has kernel {0}; represented generator maps to 2, not 0. Zero subcategory alone is not dense in T. | Pass; Lean target 3. |
| 11.4a | Idempotent diag(1,0) on free rank-two k×k data splits after Karoubi completion; p²=p. Zero and identity idempotents split to 0 and the original object. | Pass; no homotopy idempotent substitution. |
| 11.5 | dim T(k)=ℵ₀ and dim(k⊕T(k))=ℵ₀. Shift t(k) has dimension 1, so k⊕t(k) has 2≠1. | Pass; corrected swindle. |
| 11.6 | Zero setup gives IK₀=0 and all negative groups 0. A finite-free k×k model has completion-corrected IK₀=ℤ², not just diagonal ℤ. | Pass. |
| 11.7 | Identity exact model sequence has quotient 0, connecting map 0 and identical kernel/image. Completion obstruction vanishes in this case. | Pass. |
| 11.8 | Split functors id→id⊕id→id induce x↦2x=x+x in every group; zero functor gives 0. | Pass. |
| 11.9 | F=id on bounded k-complexes: (k[0],id) must have class 1; (contractible I,id) class 0. C₀=C instead makes both 0. | Fails to determine the intended pair; R01. |
| 11.10 | Identity replacement, b′=b and identity map: choose c₃=c, both comparison maps id, cone 0. | Pass once R01 fixes weak classes. |
| 11.11 | Identity enhanced map induces id on K₀=ℤ; zero functor would send 1↦0 and is not a derived equivalence. | Pass once replacement is specified. |
| 11.12 | Dense even-Euler inclusion gives K₀ image 2ℤ, positive groups unchanged; it is not a surjection ℤ←2ℤ at degree 0. | Pass. |
| 11.13 | Equal weak classes yield zero acyclic fibre and identity K-map; nested saturation changes no weak maps. | Pass. |
| 11.14 | Finite free k×k: connective K₀ is diagonal ℤ, completed IK₀ is ℤ²; completion adds (1,0). | Pass; degree-zero distinction retained. |
| 11.15 | Sequence 0→A→A gives zero boundary and identity maps in every degree; no bare triangulated functor is substituted. | Pass. |
| 11.16 | For C with its usual exact structure, completion changes nothing and IK₀=ℤ=K₀(C); zero category gives 0. | Pass. |
| 12.1 | A=0: quotient U/A=U; A=U: every identity factors through A and quotient is zero. For finite-rank summands, two supports {0},{1} refine to {0,1}. | Pass. |
| 12.2 | Right unilateral shift has kernel 0 and cokernel k: cokernel-minus-kernel=1. Reverse shift gives 0−1=−1. | Pass; orientation explicit. |
| 12.3 | Cone category is flasque: K₀(CA)=0. For A=P(k), first negative group K₀((SA)♮)=0. | Pass. |
| 12.4 | k and M₂k: Bass K₋₁=0 and cone K₀ of suspension=0; Morita identifications preserve 0 and [minimal projective]=1 in degree 0. | Pass. |
| 12.5 | Finite complex has f=g=id. On contractible ℤ --id→ℤ, f=2id,g=id gives gf≃id but (fg)²=4id≠2id=fg. | Definition passes; R03 supplies its missing computed negative control. |
| 12.6 | Degree-zero strict projector p=diag(1,0) has p²=p and rank 1. Top (n,p)=(0,1),(1,1),(2,0) gives 1,0,0. Euler ranks 2,3 give −1. | Pass; Lean rectification target and parity. |
| 12.7 | Free k×k category: (k,0) has χ=(1,0)∉diagonal ℤ, hence cannot return; its identity two-term complex has χ=0 and returns to zero. | Pass in both directions; Lean Euler target. |
| 12.8 | A=0: quotient contractible iff contractible, equivalently dominated by 0. A=U: quotient is zero and every bounded U-complex dominates itself. | Pass at both extremes. |
| 12.9 | A=0: H={0}, fibre is contractible complexes with K=0. A=U: H=im(K₀U→K₀(U♮)), quotient K=0 and fibre recovers K(U) through the restricted completion. | Pass with the image/preimage convention. |
| 12.10 | P(k): Bass and Frobenius π₀=ℤ, π₋₁=0; normalized cone boundary sends the shift defect to +1 in degree 0. | Pass. |
| 12.10a | Zero exact category has zero unbounded derived category. Bounded k[0] embeds with Hom(k[0],k[0])=k and identity 1, not zero. | Pass. |
| 12.11 | Noetherian abelian finite-dimensional k-spaces: IK₋₁=IK₋₂=0. The roadmap explicitly excludes general all-negative abelian vanishing; it does not set Neeman's nonzero K₋₂ to 0. | Pass on scoped examples. |
| 13.1 | I=0: fibre of id is 0. I=ℤ: unitization ℤ×ℤ, fibre of first projection is the second Kᴮ(ℤ). | Pass. |
| 13.2 | Corner e=diag(1,0): e²=e and eB is a summand. Zero homomorphism gives e=0, hence zero induced map. | Pass. |
| 13.3 | Unitization coordinates (z,c)=(1,0),(0,1),(1,1) give diag(0,1),diag(1,0),I₂; Morita corner sends generator 1 to 1. | Pass. |
| 13.4 | Finite product k×k gives π₀=ℤ², not ℤ; filtered union of identity copies k has colimit ℤ=K₀(k). No infinite-product assertion used. | Pass. |
| 13.5 | M₁k→M₂k→⋯ via corners gives ℤ --id→ℤ --id→⋯, colimit ℤ. Using scalar diagonals would incorrectly give multiplication maps. | Pass. |
| 13.6 | Identity enhanced model map fixes rank 1. The later p=5 pair has equivalent triangulated stable categories but candidate K₄ exponents 25 and 5. | Pass; bare equivalence does not supply enhancement. |
| 13.7 | Identity relative map has fibre 0 and transfer degree 1, so both compatibility composites are id on absolute rank and 0 on relative rank. | Pass. |
| 13.8 | For ℤ/p² and 𝔽_p[ε]/ε², the simple module has stable endomorphism field 𝔽_p and suspension again simple; free length-two module becomes 0. | Pass; includes p=2,3 for this comparison. |
| 13.8a | BU: π₂=ℤ, π₄=ℤ; ψ^q acts by q and q². Trivial group's completion is ℤ and KU¹(*)=0. | Pass on normalization. |
| 13.8b | q=2: q−1=1, q²−1=3, giving fibre π₁=0, π₃=C₃. At q=3, rank-zero GL₁ character is sign−1. | Pass on these consequences; Quillen primary proof unread. |
| 13.8c | q=2 gives K₁=0,K₃=C₃,K₄=0; q=4 gives K₁=C₃; q=5 gives K₃=C₂₄ and K₄=0. | Pass; q=1 is not an allowed field cardinality. |
| 13.9 | Cartan map on K₀ sends 1↦2, cokernel C₂. Residue scalar extension sends 1↦1 and would incorrectly give cokernel 0. | Pass. |
| 13.9a | At p=5, asserted groups C₂₅ and C₅² both have order 25 but exponents 25 and 5. p=3 is outside this numerical target. | Consistent with corrected secondary source; primary calculations not certified. |
| 13.10 | Since K₄(𝔽₅)=0 and K₃(𝔽₅)=C₂₄ has no 5-torsion, the two Cartan kernels retain the asserted exponents 25 and 5. | Conditional calculation correct; same primary-source limit. |

## Not verifiable

- `quillen-3`: the Annals entry for Quillen's 1972 finite-field paper yielded the bibliographic landing page, not the paper. Theorem 8 and the detailed finite-GL cohomology/Brauer-lift proof in §§2–11 were not certified against that primary text. Weibel IV Theorem 1.12 supplies the stated group values; the displayed q=2,4,5 arithmetic was recomputed independently.
- `evens-friedlander`: the DOI resolved to the JSTOR landing page; no legal full text was obtained. The specialized K₃ calculation in §13.9a was checked only against Schlichting §1.6 and Dugger–Shipley's correction, not its primary proof.
- `aisbett-lluis-puebla-snaith`: the DOI resolved to the AMS Memoirs landing page; no legal full text was obtained. The same limitation applies to the dual-number K₃ input and to the primary location of the p=3 error.
- `thomason-trobaugh-8`: the cited institutional PDF did not return a readable text after an extended fetch attempt. The TT-specific approximation/cofinality proof locators in Layers 6 and 11 were not certified against that text. The seeded §11.9 comparison was checked in Schlichting's explicit replacement proof instead. This is a source-access limitation, not evidence that the stated TT results are false.

Every cited work was attempted through the sources service. The unresolved texts are recorded together in the scratch reference request; resolved Thomason and Dugger–Shipley attempts are not retained as missing. No source or extracted passage was placed in the pull-request folder. The review is complete with these explicit limits; the blocking finding is R01, not an inference from inaccessible text.

## Source issues

- **Misprint** in weibel-1 at IV Lemma 7.7 proof, printed p.IV.63: the source says the final natural-map arrow goes from E to φ*E; it should be φ*E to E, as in the statement; affects the proof.
- **Gap** in schlichting-2003-11 at Appendix A.10 proof, printed p.26: the source says apply the finite-poset hypothesis to the discrete category of all connected components; it should be applied to two chosen components at a time, since there may be infinitely many; affects the proof.
- **Error** in schlichting-2002-12 at §1.6, printed p.114: the source says the displayed finite-ring K₃ distinction applies to every odd prime; it should be restricted to p>3 in this argument; affects the proof; corrected in print at Dugger–Shipley, Remark 4.9, p.156.
