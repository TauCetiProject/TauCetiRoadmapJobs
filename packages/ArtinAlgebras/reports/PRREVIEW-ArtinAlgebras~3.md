# Review of ArtinAlgebras (pull request #1397 at f452446)
Folder: `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/`

**Verdict:** needs changes

## R01 (P2) — Cite the existing general local-endomorphism criterion

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:251–263`: “an object whose endomorphism ring is local is indecomposable”. The subsection presents this as a target, with only Mathlib prerequisites.

**Claim:** this direction already exists at the pinned Tau Ceti, for general preadditive categories with binary biproducts. It is not part of the new categorical generalization that this roadmap needs to construct.

**Witness:** `TauCeti/CategoryTheory/Preadditive/Indecomposable.lean:119`, `TauCeti.indecomposable_of_injective_of_isLocalRing`, applied to the identity map of `End X`, proves exactly this target. A scratch proof elaborated without admissions.

**Repair:** remove the standalone construction target and add the native theorem, with this specialization, to scope and supplier contracts. Repoint the subsequent local-ring-criterion prerequisites to it. Keep the new converse under Krull–Schmidt hypotheses and the recognition theorem. Localness supplies nontriviality, hence the theorem's `¬ IsZero X` premise: a zero object would give `1 = 0` in `End X`. On k the specialization gives indecomposability; the zero object is excluded; the indecomposable ℤ-module ℤ still refutes the unrestricted converse. No weaker library theorem or module-only replacement is being proposed.

## R02 (P3) — Finish exact locators and the source inventory

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:375–401,462–469,503–512,703–711,1138–1145`; the last passage cites only “Müller; Tachikawa”. There is no `sources.toml` in the folder.

**Claim:** several sampled targets still have no claim-level theorem/section and page locator. The bibliography does not locate the closure/generator statements, functor-category equivalences, or the marked Morita–Tachikawa correspondence. This is distinct from a properly located but inaccessible source.

**Witness:** §0.5 has no source citation; §1.3 attributes coherence to Chase without a locator; §3.3 gives the extension-class criterion without one. In contrast, inp line 779 locates its criterion at Theorem 2.9, p. 12.

**Repair:** attach exact locators to these claims and the other unlocated API claims, and supply the required one-entry-per-work source inventory, preserving settled uncertified works. For §3.3 use INP Theorem 2.9 and Proposition 2.10, p. 12, after specializing to exact categories and using local endomorphism rings. For §1.3 distinguish the evaluation/restriction equivalence from Chase's coherence theorem; Chase Theorem 2.1, p. 460, supports the coherence condition, not both equivalences. Müller Theorem 2, p. 401, supplies the finite-dimensional-field case; locate the Artin-base extension separately rather than attributing that generality to Müller. The repaired §3.3 criterion gives a nonzero class for `0 → S → B → S → 0`, while the split sequence has class zero. The marked-pair tests remain endomorphism dimensions 1 and 4 for k and k². Source inaccessibility itself is recorded below, not counted as an additional finding.

## R03 (P3) — Complete definition APIs and replace the repeated projective-cover Check

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:553–558,904–915,1089–1103`. The projective-cover Check repeats “`(-, X) → S_X` is a projective cover”.

**Claim:** that Check merely repeats the preceding target. The valued translation-quiver and dominant-dimension definitions still have no explicit API list. Three examples attached to a definition do not substitute for its API.

**Witness:** §5.2 goes directly from the defining condition to Checks; §7.3 does the same. The second §1.5 Check has precisely the same hypotheses and conclusion as line 553.

**Repair:** replace the repeated Check with an evaluated cover, for example over `B = k[ε]/(ε²)`, evaluate `(-, B) → S_B` at B and S: the maps are `B → k` with kernel εB, and `k → 0`, respectively. An endomorphism fixing the quotient has residue 1 and is invertible. Add prose API bullets for transporting valued translation quivers by isomorphism and for the opposite quiver with inverse partial translation and exchanged valuations. For dominant dimension, state independence of the chosen minimal coresolution and the `≥ 2` copresentation equivalence explicitly, with locators and prerequisites; link the Morita-invariance target in §7.1. Test the former on valuations `(1,2)` and `(2,1)`, and the latter on `T₂(k)` and `End_B(B ⊕ S)`, where the copresentation condition is respectively false and true. Keep these APIs and Checks in the README.

## R04 (P3) — Respect the bottom-valued projective dimension in the semisimple Check

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:1187–1189`: “every module is projective, so projective dimensions are 0”.

**Claim:** the zero module is projective but has projective dimension `⊥`, not 0, under the pinned convention. The preceding semisimple-algebra assertion also includes the zero algebra, whose global dimension is `⊥`.

**Witness:** `Mathlib/CategoryTheory/Abelian/Projective/Dimension.lean:303`, `CategoryTheory.projectiveDimension_eq_bot_iff`, gives `pd(0)=⊥`. README:1076 and 1197–1198 already use that convention. Take the zero module over `Mat₂(k)`, or `A=M=0`.

**Repair:** say every module over `Mat₂(k)` has projective dimension at most 0; it is 0 for nonzero modules and `⊥` for zero. Qualify the semisimple global-dimension value by `A ≠ 0`, retaining the zero-algebra value `⊥`. These repairs give `pd(k²)=0`, `pd(0)=⊥`, `gl.dim Mat₂(k)=0`, and `gl.dim 0=⊥`, consistently with §7.2. No Lean boundary-case theorem is needed.

## R05 (P3) — Drop the unnecessary Noetherian restriction on the finite-module supremum

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:1066–1068`; `Suggested.lean:224`: “for a left Noetherian ring it is the supremum over the finitely generated modules”.

**Claim:** the immediately preceding arbitrary-ring cyclic-module theorem already implies this equality for every ring. Noetherianity is unnecessary here; it remains necessary in the separate cited left/right comparison theorem.

**Witness:** Always `sup(cyclic pd) ≤ sup(finite pd) ≤ sup(all pd)`; the cyclic theorem identifies the outer terms. For non-Noetherian `k[x₁,x₂,…]`, the quotients by `(x₁,…,xₙ)` have pd n; all three suprema are ∞.

**Repair:** remove `[IsNoetherianRing A]` from `leftGlobalDimension_eq_iSup_finite` and the corresponding prose restriction. Use the two supremum inequalities and §7.2's cyclic theorem as the route. The non-Noetherian example above satisfies the repaired theorem, and the zero ring still gives `⊥ = ⊥`. The generalized signature also elaborates in a scratch copy with only sorry warnings. This is a generality correction, not a request to add an API lemma or another acceptance theorem.

## Verified sound

The review covered all 1275 README lines and the entire acceptance file, including unchanged passages. References to README and Lean below mean the two files in `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/`. The normative root README and CONTRIBUTING were read; the relative parent copies named in the folder instructions were absent. Two completed main-branch roadmaps, EffectiveBounds and OrthogonalL2Bases, were read for the house shape. No pull-request file was edited.

### Previous findings checked first

All eleven findings from the review of `472e13c` were checked against this head before the new full pass. No supplied repair report marked any of them “not actionable in this package”.

| Previous finding | Passage at this head | Result |
| --- | --- | --- |
| R01: scalar action lost in ring isomorphism | Lean:299 requires `Module.End A M ≃ₐ[R] Module.End A' M'`; README:1124 says “A ring isomorphism does not suffice”. | Repaired. The two projections `k×k → k` cannot satisfy this algebra-isomorphism hypothesis. |
| R02: marked pairs replaced by additive closures | README:1140 says “carries `M` itself to an object isomorphic to `M'`”; Lean:302 requires `Nonempty (F.functor.obj M ≅ M')`. | Repaired. k and k² remain distinct marked objects; their endomorphism dimensions are 1 and 4. |
| R03: non-sorry build diagnostics | Lean:1 is `module`; imports at 3–5 are permitted. | Repaired. Gate passes and direct elaboration has only the 19 sorry warnings. |
| R04: missing local-endpoint hypotheses | README:426 says “Between objects with local endomorphism rings”; 439–442 supplies `(i,0):S⊞S→B`. | Repaired. The bad map is radical but not irreducible; its source end ring is not local. |
| R05: three missing global-dimension headlines | Lean:218,224,237 now contains the cyclic, finite and semiprimary-quotient statements. | Repaired. All three signatures elaborate. R05 above concerns only the avoidable restriction on one of them. |
| R06: rebuilding the irreducible quotient | README:877 says “The carrier is Tau Ceti's `TauCeti.irreducibleMorphismSpace`”; 171–175 lists its native API. | Repaired. The new target is the division-ring bimodule structure and valuations. |
| R07: forbidden import and definitional comparison | Lean:3–5 contains Mathlib and two Tau Ceti imports; the old comparison declaration is absent. | Repaired. The commutative agreement remains in README:1058–1062. |
| R08: missing README identifiers | README:375–401 states closure and transport in prose; the global-dimension names match the new declarations. | Repaired. Gate reports `readme-ids-missing=0`; all 26 declared names are accounted for. |
| R09: locators and inventory | README:1065 now gives “Thm. 1, p. 68”; 724 gives “Prop. A.2, p. 23”. | Partly repaired. The particular global-dimension and simple-functor references are fixed; R02 lists remaining omissions. |
| R10: Karoubi envelope lacks additive hull | README:361–365 explicitly uses `Karoubi (Mat_ C₁)` and gives all rank pairs `(m,n)`. | Repaired. `(2,0)` exists in the replacement and is absent from `Karoubi C₁`. |
| R11: APIs, Checks, downstream and acceptance description | README:1109 gives generator-cogenerator invariance; 1116 tests S negatively; 1204 is “Downstream consumers”. Lean:49–57 names the unstated infinite-radical criterion. | Partly repaired. The principal omissions from the previous examples are fixed; R03 isolates remaining definition/API and Check defects. |

### Gate, signatures and acceptance-file coverage

The actual pins match README:143–144: Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2` and Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`. The reviewed Git head is `f45244675c1ccbbcb449cc2e811ee29cff6eab05`. The authorized-folder exclusion diff is empty. The family index and sibling QuiverRepresentations Layer 6 were inspected.

The supplied head-specific gate reports every counter zero and `OK`, including build, imports, dropped binders, README identifiers, stray files, outside-folder changes and dependency checks. Independent direct elaboration of the exact `Suggested.lean` exits 0 with **19 sorry warnings and no other diagnostics**. The individual pinned indecomposable module was built before using it in the scratch duplication probe. No broad Lake build, update or cache operation was used.

All **26 declarations** were checked again with `#check @name` on a scratch copy. The seven binder-loss leads did not reveal a false signature: the finitely presented predicate is meaningful without a finite-biproduct instance, while its criterion retains that instance; the generator predicates are deliberately defined for arbitrary rings, while their theorems retain the Artinian base, algebra and finite-module assumptions. The explicit `include R` on existence and Brauer–Thrall retains the otherwise unmentioned Artin-algebra hypotheses. The Hom-finite recognition theorem intentionally requires finite endomorphism modules, as Convention 2 allows. No binder correction was made.

Every one of the **19 sorried theorems** was tried with `simp`, `rfl` and `infer_instance` on a scratch copy. All nineteen remained open; the resulting file still has nineteen sorry warnings. Inspection of the native statements did not identify a single-library-lemma proof of any whole retained headline. In particular, the existing module Krull–Schmidt statements do not prove the arbitrary-category equivalence, recognition or uniqueness statements by specialization. R01 is a duplicate README target, not padding in this Lean file.

| README headline | Acceptance-file disposition |
| --- | --- |
| Krull–Schmidt local-ring characterization, idempotent completeness, uniqueness, Artinian recognition | Four theorems at Lean:88,93,98,105; `IsKrullSchmidt` has a real finite-biproduct definition at 78. |
| Freyd–Auslander criterion | Lean:126, using the genuine presentation predicate at 120. Additivity follows from being an objectwise quotient of an additive representable; it is not a free assumed predicate. |
| Finite injective cogenerator and Matlis biduality | Lean:141,148; the map is the native evaluation map, not arbitrary duality data. |
| General exact-category Ext¹, AR duality and existence | Named as not statable in the module docstring: the exact-category Ext¹ construction is missing. |
| Artin-algebra translate and natural AR formulas | Named as not statable: the Matlis-valued translate is still a construction target. |
| Existence of almost-split sequences for Artin algebras | Lean:166, on native finite-module categories and native almost-split short complexes. |
| Valued AR quiver, mesh and multiplicities; bounded-component Auslander theorem | Named as not statable: the valued quiver carrier is missing. |
| Harada–Sai and Brauer–Thrall I | Lean:185,198; the recursive chain composite at 178 is a simple real definition. |
| Infinite-radical representation-finiteness criterion | Named as not statable: the radical ideal and its powers are missing. |
| Four global-dimension theorems | Lean:218,224,231,237, with the native projective-dimension supremum at 213. |
| Morita–Tachikawa forward, converse and marked injectivity | Lean:271,281,294; generator-cogenerator and copresentation predicates at 251,264 have concrete bodies. |
| Auslander correspondence forward and converse | Lean:305,315; additive-generator predicate at 259. The finite-module bound combines with the stated global-dimension criterion to give the advertised global bound. |
| Dominant dimension as a number, and mod C with its abelian structure | Identified in the docstring as missing constructions. The genuine finite copresentation predicate states the needed `≥2` bound without a free Prop-valued stand-in. |

### Computed adversarial pass

The table records **112 statement/contract checks**, including every seeded target, every retained Lean declaration and every target touched by a finding. Closely related API laws are separated where they test a different construction. These are mathematical computations and negative controls, not claims to have formalized the general proofs.

Notation: k is a field (the dual-number computations also work for `k=𝔽₂` and `𝔽₃`); `B=k[ε]/(ε²)`, `S=B/(ε)`, `i:S→B` sends 1 to ε, and `p:B→S` is the quotient. Thus `p∘i=0` and `i∘p` is multiplication by ε. For `T₂(k)` write U for the simple projective, V for the length-two projective-injective and W for the simple nonprojective; the almost-split sequence is `0→U→V→W→0`. Here `pd` uses `⊥` for a zero object.

| # / statement | Instances tried | Values computed on the two sides / negative control | Result; change |
| --- | --- | --- | --- |
| 01 / Artin-algebra coefficients | `ℤ/p²ℤ`, p=2,3; zero ring | Base lengths of the regular module are 2 and 0; finite over the Artinian base in each case. `ℤ/4ℤ` cannot be a field algebra: characteristic 4. | Full coefficient scope retained. |
| 02 / Hom-finite convention | End of S,B; End of ℤ | R-lengths 1,2; `length_ℤ ℤ=∞`. Only the first two satisfy the finite-endomorphism hypothesis. | End-only recognition scope agrees with Lean. |
| 03 / Local endomorphisms imply indecomposable | k,0,ℤ as modules | For k: local/indecomposable = true/true; zero: false/false; ℤ: false/true. | Correct direction; cite native theorem, R01. |
| 04 / Fitting converse | B; free modules over `k×k` | In B, ε²=0 and units have nonzero residue. Free rank-one `k×k` is indecomposable within free modules, but `(1,0)` is a nontrivial idempotent. | Idempotent completeness separates the bad case. |
| 05 / Krull–Schmidt definition | zero category; `mod B`; finite abelian groups | Decomposition lengths of 0,S,B are 0,1,1. ℤ has one indecomposable summand but its end ring is nonlocal. | Correct empty-family and negative cases. |
| 06 / Equivalence invariance of KS | `mod k ≌ mod Mat₂(k)` | kⁿ maps to n copies of k²; summand multiplicity n on both sides; simple end rings both k. | Transport preserves the definition. |
| 07 / Indecomposable iff local in KS | S,B,S²,0 | `(indecomp,local)` equals `(T,T),(T,T),(F,F),(F,F)`; `End(S²)=Mat₂(k)`. | Both directions tested. |
| 08 / KS implies split idempotents | `S⊕B`, projection to S | e²=e; image S and complement B; inclusion followed by projection is `id_S`. | Correct. |
| 09 / Split idempotents + semiperfect recognition | `mod B`; free `k×k` modules | End(B) is local/semiperfect; in free rank one over `k×k`, idempotent `(1,0)` has no free image. | Second conjunct cannot replace splitting. |
| 10 / Uniqueness of KS decomposition | 0; `S⊕B` versus `B⊕B` | Empty index cardinalities 0=0; lengths 3 versus 4, multiplicities `(1,1)` versus `(0,2)`. | Correct; nonmatching decompositions not isomorphic. |
| 11 / Failure without local end rings | `I=(2,1+√−5)` over `ℤ[√−5]` | I has rank 1, nontrivial ideal class of order 2; `I⊕I` and `R²` have rank 2 and principal determinant, but `I≄R`. | Correct negative control. |
| 12 / Primitive idempotent decomposition | End=`k×k`; zero end ring | `(1,0)+(0,1)=(1,1)`, cross products 0, both corners k; zero uses empty sum 0=id. | No categorical splitting assumed. |
| 13 / Hom-finite idempotent-complete recognition | `Karoubi(Mat_ C₁)` for End(C₁)=`k×k` | Objects have ranks `(m,n)`, with m copies `(1,0)` and n copies `(0,1)`; end corners k. | Corrected recognition example. |
| 14 / Karoubi alone negative control | `Karoubi C₁` | Ranks are `(0,0),(1,0),(0,1),(1,1)`; `(1,0)+(1,0)=(2,0)` is absent. | Finite-biproduct hypothesis genuinely fails. |
| 15 / Full-subcategory closure | `add B`, `{0}`, free `k×k` modules | Indecomposable classes respectively `{B}`, empty, and a rank-one object with nonlocal end ring; missing summand `(1,0)` in last category. | Closure hypotheses discriminate. |
| 16 / Module/quiver KS instances | `mod ℤ/4ℤ`; A₂ representations | Indecomposable lengths `{1,2}` and `{1,2,1}`; every object decomposes with these multiplicities. | Existing specialized results remain comparison cases. |
| 17 / Additive-generator predicate | `M=B⊕S`, B, S | Both B and S retract from M; S does not retract from B and B does not retract from S. | True,false,false respectively. |
| 18 / Generator invariance and enlargement | `B⊕S ≅ S⊕B`; `B⊕S⊕S` | Both required retractions survive permutation or adding a summand; multiplicities `(1,1)` and `(1,2)` both suffice. | Correct; preserve marked-object distinction later. |
| 19 / Finite indecomposable classes iff generator | `mod B`; Kronecker algebra | B has 2 classes and generator B⊕S. Kronecker preprojectives have dimension vectors `(n,n+1)`, giving infinitely many classes and no finite generator. | Both implications discriminated. |
| 20 / Radical defining condition | End(B); End(S) | `1−gε` has inverse `1+gε`; for f=1 choose g=1 and obtain 0, not a unit. End(S) radical is 0. | ε admitted, identity excluded. |
| 21 / Radical matrix criterion | `S⊕B` | Off-diagonal i,p are radical; B diagonal radical εB; S diagonal radical 0. A diagonal `id_S` fails both tests. | Componentwise criterion agrees. |
| 22 / Radical powers versus ring powers | B,S | `i∘p=ε≠0`; `p∘i=0`; every three-map radical composite is 0. Ring radical `(ε)²=0`, categorical `rad²(B,B)=kε`. | Distinction correct; n=0 power is the whole ideal. |
| 23 / Radical transport | Swap labels in B⊕S decomposition | Matrix off-diagonal positions swap; the subspace `rad²(B,B)=kε` and vanishing `rad³=0` are unchanged. | Correct equivalence API. |
| 24 / Irreducibility and endpoint hypotheses | i; `(i,0):S²→B` | Both are nonzero in rad/rad²; i is irreducible. The second factors via projection `S²→S` (not mono) and i (not epi). | Repaired hypothesis excludes the second map. |
| 25 / Finitely presented predicate | `h_B=(-,B)`,0 | Presentations `0→h_B→h_B` and `0→0→0` have cokernels h_B and 0. | Real presentation body, no arbitrary Prop. |
| 26 / Additivity of quotient functor | quotient `h_B→S_B` | At B: B→k; at S: k→0. For lifts x,y, the induced action on `f+g` is `F(f)x+F(g)x`; surjectivity removes lift dependence. | No missing additivity hypothesis. |
| 27 / Closure under cokernels and finite sums | on `proj B`, multiplication ε | Cokernel evaluates to S; sum of two representables evaluates to B²; both finitely presented. | Correct. |
| 28 / Closure under extensions | on `proj B`, `0→S→B→S→0` | End terms have presentation `B --ε→ B → S`; middle is rank-one representable. Extension length `1+1=2`. | Correct extension-closure control. |
| 29 / Representables projective and enough | `h_B`; quotient `h_B→S_B` | Natural maps out of h_B are values at B; surjection B→k lifts 1 to 1. | Projectivity and presentation direction correct. |
| 30 / Finite generation negative control | `C=mod k`, infinite-dimensional K | At k the target is K; a map from h_V has image dimension at most `dim V<∞`, never all K. | Not finitely generated, as claimed. |
| 31 / Freyd–Auslander positive direction | `proj B`, `mod B` | Weak kernel of ε:B→B in proj B is ε:B→B; image and actual kernel both εB. In mod B an actual kernel is S. | Both functor categories are abelian. |
| 32 / Freyd–Auslander negative direction | `A=k[x,y₁,…]/(xyᵢ)` | `ann(x)=(y₁,y₂,…)`; any finite set involves finitely many yᵢ and misses a fresh yⱼ. No finite projective image equals this kernel. | Both weak-kernel and abelian-closure conditions fail. |
| 33 / Evaluation equivalence mod(proj A) | A=B and k | `h_B` evaluates to B; cokernel of h_ε to S. For k, a finite-dimensional value kⁿ represents the functor. | Correct handedness and fp carrier. |
| 34 / Coherence criterion | B; noncoherent ring of row 32 | `ann_B(ε)=εB` is cyclic; `ann_A(x)` is not finitely generated. Kernel closure is respectively true and false. | Correct; locator repair R02. |
| 35 / Restriction with enough projectives | C=`mod B` | S restricts to cokernel `h_B --ε→ h_B`; evaluation reconstructs S. B restricts to h_B. | Correct reconstruction. |
| 36 / Progenerator and End-opposite convention | P=A and A² | `End_A A=Aᵒᵖ`; `End_A A²=Mat₂(A)ᵒᵖ`; right modules over first equal left A-modules. | Correct, including noncommutative A. |
| 37 / Kernel criterion for pd≤2 in mod C | C=`mod B`, `proj ℤ`, `proj B` | First category: simple functor at S has pd2. Second: kernel(×2:ℤ→ℤ)=0. Third: ε has no representable kernel and cokernel S has pd∞. | Bound/converse discriminate. |
| 38 / Projective-cover definition and uniqueness | `h_B→S_B`; zero functor | At B, endomorphism fixing the quotient is multiplication by `1+cε`, inverse `1−cε`; zero has cover h_0. | Correct definition; improve Check per R03. |
| 39 / Projective-cover negative control | `proj ℤ`, quotient ℤ→ℤ/2 | Multiplication by 3 fixes the quotient but is not invertible. Every finite free surjection has the analogous ×3 obstruction. | No projective cover. |
| 40 / Artinian local-factor decomposition | `R=k×k`; zero ring | Maximal-factor quotients are k,k and product map is identity; zero ring has no maximal ideals, empty product is zero ring. | Degenerate factor decomposition correct. |
| 41 / Injective hull E_R, field and length-two base | k; `ℤ/p²ℤ` | E=k and R respectively; socles k and pR; lengths 1 and 2. For p=2,3 the socle inclusion is multiplication by p. | Correct; simple modules embed. |
| 42 / E_R is not always R | `R=k[x,y]/(x,y)²` | `E=D_k R` has length3 and socle dimension1; R has length3 and socle dimension2. | E≄R despite equal length. |
| 43 / D_R definition and variance | `M=R,S` over B | D(B)=B, D(S)=S; D(p) is i and D(i) is p under standard identifications. | Source/target directions correct. |
| 44 / Bidual evaluation | kⁿ, S over B,0 | `x↦(φ↦φ(x))` has rank n,1,0 respectively; kernels 0 and equal domain/codomain lengths. | Bijective in all three cases. |
| 45 / Finite-length necessity | infinite-dimensional k-space V | V is the direct sum on a basis; V* is the product. Evaluation spans only finite linear combinations of coordinate evaluations in V**; additional linear functionals exist. | Surjectivity fails outside finite length. |
| 46 / Length and simple duals | R=B; R=`k×k` | Lengths of D(B),D(S) are 2,1; `D(k,0)=(k,0)`, `D(0,k)=(0,k)`, each length1. | Correct; zero gives 0=0. |
| 47 / Artin left/right duality | A=`T₂(k)` | Dual of each simple is the corresponding opposite-side simple; applying twice restores vertex spaces and arrow transpose twice. Dimensions 1,2,1 unchanged. | Anti-equivalence direction correct. |
| 48 / Exchange of projectives/injectives | `T₂(k)`; B | Dual regular modules are injective cogenerators; over B regular B is both projective and injective. | No self-injectivity imposed generally. |
| 49 / Nakayama equivalence | `T₂(k)` projectives U,V | νU=V (length1→2), νV=W (length2→1); these are the injective hulls of their simple tops. | Correct; ν need not preserve length. |
| 50 / Finite injective hull via dual cover | S over B; U over `T₂(k)` | Projective cover of D(S) is B, dual hull B of length2; hull(U)=V of length2. | Correct finite assembly. |
| 51 / Ext¹ definition and zero | S over B; split exact structure | Ordinary `Ext¹(S,S)=k`; split exact Ext¹=0. Class of B is nonzero; class of S⊕S is 0. | Definitions distinguish exact structures. |
| 52 / Ext¹ for finite abelian groups | `ℤ/2`, middle ℤ/4 | Two classes; Baer sum of the nonzero class with itself is 0. Same two classes in `mod ℤ/4`. | Correct finite-group Check. |
| 53 / Pullback, pushout and linearity | class ξ of B extension | Scalar a acts by aξ; identity pullback/pushout gives ξ, zero gives 0; at p=2, ξ+ξ=0. | Variance and additive laws agree. |
| 54 / First long exact sequence | W=S, `S --i→ B --p→ S` | Hom sequence begins `k --≅→ k --0→ k --≅→ k --0→ 0`; kernels equal preceding images. | Correct connecting direction. |
| 55 / Dual long exact sequence | W=S, same conflation | Begins `k --≅→ k --0→ k --≅→ k --0→ 0` contravariantly; boundary sends id_S to ξ. | Correct dual direction. |
| 56 / Ext-trivial ideals | id_S, id_B in `mod B` | `Ext¹(id_S,S)=id_k≠0`; Ext¹(B,−)=0 and Ext¹(−,B)=0, so id_B lies in both ideals. | Identities not indiscriminately killed. |
| 57 / Factoring-ideal comparison | map S→B→S; split exact category | p∘i=0; every map through B acts trivially on Ext¹. In split structure all maps are trivial and quotient Hom groups all 0. | Enough-projective comparison and split case agree. |
| 58 / No-enough-projectives example | finite abelian groups, S=`ℤ/p` | No nonzero projective objects; `Ext¹(S,S)=𝔽_p`, and id_S induces multiplication by1. | Ext-trivial definition remains meaningful. |
| 59 / Almost-split conflation definition | `0→S→B→S→0`; split sequence | First class ξ≠0 and i,p nonsplit; second class0 and projection split. | Positive and negative examples distinguished. |
| 60 / Endpoint indecomposability and uniqueness | nonzero extensions of S by S over B | Any nonzero scalar multiple of ξ has middle B and is isomorphic after endpoint rescaling; end lengths1 and1. Split middle has length2 but wrong class. | Unmarked conflation uniqueness correct. |
| 61 / Extension-class criterion | ξ; pushout along i:S→B | `i_*ξ∈Ext¹(S,B)=0`; pushout along id_S gives ξ≠0, but id is split mono and excluded. | Correct iff under KS endpoint hypotheses; R02 locator. |
| 62 / Right almost-split image criterion | p:B→S; id_S | At S, image Hom(S,B)→Hom(S,S) is0=rad(S,S); at B it is k=rad(B,S). id_S instead has full image k at S. | Correct. |
| 63 / Simple functors and finite presentation | S_S and S_B in `mod(mod B)` | Values on (S,B) are `(k,0)` and `(0,k)`; each simple has end ring k and a finite presentation. | Correct classification in this test. |
| 64 / Minimal projective resolution of simple functor | S_S; S_B | S_S resolution uses `h_S→h_B→h_S`, length2; S_B uses `h_S→h_B`, length1. Nonzero differentials are radical. | pd2 and pd1; no projective endpoint conflation invented. |
| 65 / AR duality definition | ordinary versus split exact `mod B` | Ordinary stable End(S)=k and Ext¹(S,S)=k, dual dimension1=1. Split stable Hom=0 and Ext¹=0. | Pairing rules exclude a zero duality in ordinary case. |
| 66 / Existence iff AR duality | `mod B`; split structure | Ordinary: one nonprojective indecomposable S and one AS sequence; split: none on either side, quotient categories zero. | Both branches and vacuous case agree. |
| 67 / Product-base assembly | `R=k×k`, categories over two B factors | Ext and Hom decompose into two blocks; cross terms0; D exchanges no factors; each nonzero block has dimension1. | Central-idempotent factorization is compatible. |
| 68 / Translate definition and τ=0 criterion | S,B over B | Minimal presentation of S is `B --ε→ B`; transpose S and dual S give τS=S. Minimal presentation of B has P₁=0, so τB=0. | Projective/nonprojective criterion holds. |
| 69 / Translate inverse and direction | U,V,W over `T₂(k)` | τW=U, τ⁻U=W; τU=τV=0. U is projective but not injective. | Correct direction; not τW=W. |
| 70 / Stable equivalence | B and S over B | B becomes0 in both quotients; S has stable end ring k and is fixed by τ. | Correct on objects and Hom spaces. |
| 71 / First AR formula | M=N=S over B; M=B | Values are k versus D(k)=k for S,S; Ext¹(B,S)=0 versus D(Hom(S,0))=0 for B,S. | Correct injectively stable Hom. |
| 72 / Second AR formula | M=N=S; N=B | k versus D(k)=k; Ext¹(S,B)=0 versus D(Hom(0,S))=0. | Correct projectively stable Hom. |
| 73 / Almost-split existence headline | S over ℤ/4,ℤ/9,B; W over `T₂(k)` | Middle modules ℤ/4,ℤ/9,B,V; endpoint lengths1+1=2. A projective endpoint cannot have a nonsplit extension. | Artin and nonprojective hypotheses retained. |
| 74 / Source and sink maps | projective-injective B | Sink is i:S→B with image εB=rad B; source is p:B→S with kernel εB=soc B. | Direction correct for p=2,3 too. |
| 75 / Irreducible maps as summands of sink | i:S→B; `(i,0):S²→B` | i is the minimal sink itself; adding a zero summand creates a noninvertible endomorphism fixing the map. | Minimality excludes the bad map. |
| 76 / Irr quotient carrier | S→B, B→S, B→B | rad/rad² has dimensions1,1,0: the last numerator and denominator both kε. | Reuses native quotient correctly. |
| 77 / Commuting endomorphism actions | class of i, scalars a,b | Post/precomposition gives aib=(ab)i=b(ai); ε on B acts as εi=0. | Radicals act trivially and actions descend. |
| 78 / Equivariance of class map | i and B endomorphism `a+cε` | Class of `(a+cε)i` equals a[i]; cεi=0. | Class-map API correct. |
| 79 / Valuation orientation | real-complex triangular algebra | For successive arrows the Irr space has real dimension2; endpoint division rings `(ℝ,ℂ)` give `(a,b)=(1,2)`, then `(ℂ,ℝ)` give `(2,1)`. | Detects reversal. |
| 80 / Valued translation-quiver definition | isolated vertex; B mesh; wrong unequal labels | Empty τ has no conditions; B has τS=S, both labels `(1,1)`. Two successive `(1,2)` labels fail required reversal `(2,1)`. | Correct negative control; API repair R03. |
| 81 / AR vertices and translation domain | B; `T₂(k)` | Vertices `{S,B}` and `{U,V,W}`; domains `{S}` and `{W}`; τ values S and U. | Exact nonprojective domain. |
| 82 / Middle multiplicity formula | real-complex triangular mesh | Middle V occurs once; `b_{VZ}=1=a_{τZ,V}`. The other two dimensions equal2 and would give a false multiplicity. | Convention agrees in both layers. |
| 83 / Valued mesh property | same example; B | Incoming `(2,1)` matches outgoing `(1,2)` under reversal; B matches `(1,1)` with itself. | Correct. |
| 84 / Field arrow-count comparison | real-complex example; algebraically closed k | `dim_ℝ Irr=2=2·1=1·2`; with both division rings k, dimensions `(n,n)` and n basis arrows. | Correct comparison with sibling 6F. |
| 85 / Chain composite definition | empty, one and two maps | `chainComp 0=id`; `chainComp 1=f₀`; for p then i, `chainComp 2=ε`. | Indexing and direction correct. |
| 86 / Harada–Sai bound | b=0,1,2 | b0 forces length0, contradicting indecomposable nonzero; b1 bound1 and noniso simple map0; b2 bound3, two-map ε≠0 but three-map composites0. | Natural subtraction at b0 causes no false case. |
| 87 / Radical nilpotence consequence | `mod B`; Kronecker | `rad²(B,B)=kε≠0`, `rad³=0`; Kronecker has nonzero composites of arbitrary finite length. | Bound and finiteness hypothesis discriminate. |
| 88 / Bounded-component Auslander theorem | B; `k×k` | B component has 2 vertices, max length2, equals whole quiver. Product has two singleton components, each bounded, but neither whole. | Connectedness excludes counterexample. |
| 89 / Brauer–Thrall headline | B, zero algebra, Kronecker | B has 2 indecomposable classes; zero has0; Kronecker lengths `2n+1` are unbounded. | Finite skeleton conclusion agrees. |
| 90 / Infinite-radical criterion | B; Kronecker regular tower | B intersection is0 since rad³=0. A nonzero map from the sink simple to a regular simple factors through regular Jordan modules of every length, hence lies in every radⁿ. | Finite/infinite control agrees; broad source inaccessible. |
| 91 / Connected finite AR quiver | B; `k×k` | Underlying component counts1 and2 respectively; algebra central idempotents count2 and4. | Correct nontrivial connected case. |
| 92 / Projectivization | M=B⊕S | Γ end dimension `2+1+1+1=5`; Hom(M,M)=right Γ, Hom(M,B),Hom(M,S) are its two projective summands. | Sources, targets and handedness correct. |
| 93 / Double centralizer | M=A, A noncommutative | Γ=Aᵒᵖ by right multiplication; commuting left actions recover `End_Γ A=A`; action map a↦left multiplication by a. | Correct; no opposite lost. |
| 94 / Morita equivalence | k,Mat₂(k),`k×k` | Simple-class counts1,1,2. k↔Mat₂(k) takes k to k²; k and k×k cannot be equivalent. | Correct invariant and negative control. |
| 95 / Morita preservation | B and Mat₂(B) | Both have 2 indecomposable classes; corresponding lengths unchanged as modules over their own rings; gl.dim∞, dom.dim∞ on both. | Correct invariance control. |
| 96 / Global-dimension definition | 0,k,ℤ,B | Suprema of pd are `⊥,0,1,∞`; zero objects contribute ⊥, not0. | Native convention agrees. |
| 97 / Cyclic-module supremum headline | 0,k,ℤ,B | Quotients realizing values: zero; k; ℤ/2 with pd1; S over B with pd∞. Sup(all)=sup(cyclic) in each. | Correct, including unit ideal yielding zero. |
| 98 / Finite-module supremum headline | same rings; infinite polynomial ring | Values `⊥,0,1,∞`; for `k[x₁,x₂,…]`, cyclic quotients by first n variables have pd n, so both suprema∞. | Remove redundant restriction, R05. |
| 99 / Left/right Noetherian comparison headline | `T₂(k)`,B,ℤ,0 | Opposite-ring global dimensions `1,∞,1,⊥`, equal to original values. | Both Noetherian assumptions retained. |
| 100 / Semiprimary quotient headline | `T₂(k)`,B,k,0 | `pd(A/J)` is respectively1,∞,0,⊥, matching global dimension. | Correct quotient and zero cases. |
| 101 / Dominant dimension definition | B,`T₂(k)`,Γ=End(B⊕S),0 | Initial projective-injective segment lengths∞,1,2,∞; for n0 the condition is empty and true in all. | Correct; definition API repair R03. |
| 102 / Copresentation predicate | same four algebras | Predicate values T,F,T,T; `dom.dim≥2` has same values. For zero take I₀=I₁=0; `0→0` is mono and exact. | Genuine predicate, no false zero exception. |
| 103 / Generator-cogenerator predicate | B,B⊕S,S over B | Only indecomposable projective/injective is B; retraction exists for first two, fails for S by length2>1. | T,T,F. |
| 104 / Generator-cogenerator add/duality API | A=`T₂(k)`, `A⊕D A` | A contains U,V; D A contains V,W; union includes every projective/injective class. Adding any summand retains them. | Correct and invariant under equivalence. |
| 105 / Scalar compatibility of endomorphism isomorphisms | R=k×k, A=k via distinct projections | End rings both k, but `(1,0)` acts as1 versus0. An R-algebra isomorphism would force1=0. | Repaired hypothesis excludes prior counterexample. |
| 106 / Morita–Tachikawa forward headline | M=B and B⊕S | Ends B and Γ have dominant dimensions∞ and2; both satisfy the concrete copresentation predicate. | Correct. |
| 107 / Morita–Tachikawa converse headline | Γ=k,Mat₂(k),End_B(B⊕S) | Reconstructed pairs can be `(k,k)`, `(k,k²)`, `(B,B⊕S)`; end dimensions1,4,5 match Γ. | Marked reconstruction preserves multiplicity. |
| 108 / Marked injectivity headline | `(k,k)` versus `(k,k²)`; `(Mat₂(k),k²)` | First end dimensions1≠4, so no isomorphism. First and last end rings both k; Morita equivalence carries marked simple to marked simple. | Correct equivalence relation. |
| 109 / Auslander forward pd bound | B⊕S; semisimple generator k² | Γ simples have pd2 and1; Mat₂(k) nonzero modules have pd0, zero has⊥. All satisfy pd≤2. | Lean headline sound; README Check R04. |
| 110 / Auslander converse headline | Γ=End_B(B⊕S); Γ=B | First gl2/dom2 gives additive generator B⊕S. Second gl∞/dom∞ fails gl≤2 and cannot trigger converse. | Dominant dimension alone insufficient. |
| 111 / Correspondence on Morita classes | marked `(k,k)` and `(k,k²)` | Their end rings differ (dimensions1,4) but are Morita equivalent; input underlying algebras both k. | Correct distinction between the two quotient formulations. |
| 112 / Semisimple and zero Check | `A=M=0`; zero and simple Mat₂(k)-modules | Claimed0 versus actual⊥ for zero algebra/module; actual simple pd0. | R04 repair yields consistent values. |

For row 79/82 the actual two-term witness can be written as representations of the real-complex triangular algebra: U=`(ℝ,0)`, V=`(ℂ,ℂ,id)` and Z=`(ℝ,ℂ,Re)`, with structure map `ℂ ⊗_ℂ W → V_ℝ`. The sequence uses the imaginary-axis inclusion `ℝ→ℂ` and `Re:ℂ→ℝ`, with identity at the complex vertex. Its end rings are ℝ,ℂ,ℝ and each successive Irr space has real dimension2. This computes the unequal valuations without relying on an arrow-orientation recollection.

No denominator or characteristic restriction is hidden in these examples. The inverse `1+cε ↦ 1−cε` works in characteristics2 and3. Projective/injective endpoints and zero objects are explicitly separated. The source/target conventions for transpose, Matlis dual, left/right End actions and both stable quotients agree across the layers and the field-specialization supplier.

### Source sample and unverified locators

All **15 seeded sections** were examined. All works flagged “not read here” were either attempted through the source service or retained as previously settled uncertified sources. Ten works were readable, six attempts did not produce readable text, and three works retain their settled uncertified status. No unreadable theorem is represented here as source-certified. Source IDs below are the cache/service IDs; Kr, En and inp correspond to README keys [Kr], [En] and [INP].

| Seeded target | Text and locator examined | Result of locator/hypothesis check |
| --- | --- | --- |
| 0.2 Krull–Schmidt categories | Kr lines398–433,451–495: Proposition4.1 p.8; Theorem4.2 and Corollaries4.3–4.4 pp.9–10. | Local summands, uniqueness, split idempotents and semiperfect end rings have the claimed meanings. Corollary4.4's proof supplies the splitting direction. |
| 0.5 Closure, instances and additive generators | Kr lines155–176,398–433,451–495. | Projectivization and finite local decompositions support the route, but the README supplies no precise locator for its separate closure/generator assertions: R02. These assertions were also tested directly above. |
| 0.6 Radical as a morphism ideal | Kr lines488–495, plus the native radical definitions and criterion. | Matrix radical behavior agrees. The README correctly restricts the irreducible characterization to local endpoints. Ideal packaging/powers are new targets; no exact claim-level source locator is given. |
| 1.1 Category mod C | inp lines1223–1232, p.20; Kr lines375–397, Proposition3.10 pp.7–8. | INP states the finitely presented functor setting; Krause discusses projective presentations. These are not a located reference for every closure API claim in §1.1: R02. |
| 1.2 Freyd–Auslander criterion | inp lines1223–1232, p.20. | Explicitly records equivalence of abelianness, closure under kernels and weak kernels, attributed to Auslander. Original Auslander/Freyd works remain uncertified. |
| 1.3 Modules and enough projectives | Kr lines162–176, Proposition2.3 and Remark2.4 p.3; chase lines139–144, Theorem2.1 p.460. | Projectivization has right-End-module direction. Chase supports the left-coherence condition; neither passage is the missing exact locator for the whole enough-projectives equivalence. |
| 2.3 Artin algebras | matlis lines638–645, Theorem4.2 p.526; DerivedModuleAlgebra §1.M.2. ARS II.3/II.4 requested. | Local biduality and supplier generality verified. ARS's numbered duality/Nakayama/hull references could not be checked against the book. |
| 3.2 Ext-trivial ideals | inp lines523–539, Definition1.21 p.8 and Remark1.22 p.9; En lines1484–1496 p.24; lenzing lines58–84 p.170. | Variance, universal Ext-triviality and comparison with factoring through projectives/injectives under enough objects agree. No enough-projectives hypothesis was silently added to the definition. |
| 3.3 Almost-split conflations | En lines1419–1472 p.23; inp lines779–810, Theorem2.9 and Proposition2.10 p.12. | KS local endpoints justify the one-sided nonzero-extension criterion. Uniqueness/minimality is supported. Missing README locator is R02, not a mathematical counterexample. |
| 3.5 AR duality and existence | En lines1501–1522, PropositionA.5 p.24, and1557–1564, TheoremA.9 p.25; inp lines1022–1045 p.16 and1066–1136 pp.17–18; lenzing lines21–44, Theorem1.1 p.169. | En's global theorem needs enough projectives/injectives; the README correctly distinguishes this from its objectwise proposition. INP is over a field. Its assembly uses finite perfect pairings; Artinian Matlis duality supplies the same exact biduality and length comparison. Lenzing–Zuazua is an abelian, Ext-finite result, not itself the full exact-category theorem. The Artinian-product step is a stated construction route, not a quote from those sources. |
| 4.1 Translate | Pinned transpose/translate definitions and stable equivalence; ARS IV.1.10(f), p.107 requested. | Native transpose is general-ring; the existing `Module.Dual` translate is not the Matlis-cogenerator construction. Minimal-presentation convention agrees. The ARS locator is not independently certified. |
| 4.3 AS sequences, sources and sinks | En PropositionA.2 and native almost-split maps; ARS V.1.15 p.145 requested. | Finite-example existence and source/sink directions agree; ARS theorem/page and the full source/sink discussion could not be read. |
| 5.3 Valued AR quiver | ARS VII.1.3 p.230 and VII.1.5 p.231 requested; sibling QuiverRepresentations6F read. | Book locators unverified. Independent unequal-valuation computation gives `b_{WZ}=a_{τZ,W}=1`, not2, and matches the sibling field formula. |
| 7.2 Global dimension | auslander1955 lines40–44, Theorem1 p.68;123–135, Theorem4/Corollary5 p.70;211–238, Corollaries9/11 p.73. | Arbitrary cyclic criterion, both-Noetherian left/right equality and semiprimary quotient formula verified. Source's zero-module numerical convention is translated to native ⊥. The finite supremum follows without Noetherianity: R05. |
| 7.4 Morita–Tachikawa | muller lines8,112–134, Theorem2 p.401; Tachikawa retained uncertified. | Müller works with finite-dimensional algebras over a field and uses generator-cogenerators in the marked reconstruction. It does not by itself certify the general Artin R-algebra version. R02 requests its precise general-base locator. |

Other flagged citations were examined too: haradasai lines639–665, Lemmas11–12 p.339, proves eventual uniform vanishing, not the sharp `2^b−1` claim; the README makes that distinction. hoshino lines30–41, p.275, defines dominant dimension using flat injective-resolution terms and explicitly identifies the Artinian case with the projective version. The sharp bound remains dependent on the unread ARS/ASS references. The Auslander1971/1974, Roiter and Yoneda attempts are listed below.

### Pinned-library and ownership audit

Searches were by objects as well as names: local end rings/idempotents, decomposition, finitely presented additive functors/weak kernels, radical quotient and powers, Ext-trivial ideals, injective cogenerators/Matlis duality, transpose/stable categories, global/dominant dimension and generator-cogenerator correspondences. The searches included Mathlib, Tau Ceti, main roadmaps, board packages, the roadmap index and the supplied open-head checkouts. Relevant matches were opened; keyword matches were not treated as ownership conclusions.

The following **19 audit rows** record pinned source locations opened and used in the audit (several contain multiple declarations):

| Pinned file and line | Declaration/object and implication |
| --- | --- |
| `Mathlib/RingTheory/LocalRing/Defs.lean:30` | `IsLocalRing` includes nontriviality; zero end rings are excluded. |
| `TauCeti/CategoryTheory/Preadditive/Indecomposable.lean:119` | General local-ring criterion, the proven specialization behind R01. |
| `TauCeti/Algebra/Category/ModuleCat/Indecomposable.lean:78` | Module finite-length local-end criterion; does not own the full arbitrary-category converse. |
| `TauCeti/Algebra/Category/ModuleCat/KrullSchmidt.lean:73` | Existence of module decompositions; uniqueness at98 retains Noetherian/Artinian module hypotheses. |
| `Mathlib/CategoryTheory/Preadditive/Yoneda/Basic.lean:58` | Native preadditive Yoneda carrier used by the presentation predicate. |
| `TauCeti/CategoryTheory/Preadditive/Radical/Basic.lean:207` | Radical subgroup, square at417, irreducibility characterization at518; latter needs local endpoints and binary biproducts. |
| `TauCeti/CategoryTheory/Preadditive/Radical/Quotient.lean:150` | `irreducibleMorphismSpace`, additive/module structures at154–159, class map at166 and following universal property. |
| `TauCeti/CategoryTheory/AlmostSplit/Basic.lean:125` | Left/right almost-split predicates (right at132), with endpoint consequences later in the file. |
| `TauCeti/CategoryTheory/AlmostSplit/Sequence.lean:129` | Native almost-split short complex includes the actual short exact sequence and almost-split maps; not just endpoint data. |
| `TauCeti/CategoryTheory/AlmostSplit/Uniqueness.lean:188` | Native uniqueness has extra ambient hypotheses including balancedness; it was not incorrectly substituted for arbitrary exact-category uniqueness. |
| `TauCeti/Algebra/Module/Injective/Envelope/Basic.lean:172` | Injective-envelope uniqueness; does not by itself give finite-length hulls. |
| `TauCeti/Algebra/Module/ProjectiveCover/ModuleCat.lean:128` | Projective-cover existence at the Artinian base. Finite generation of a cover of a finite module follows from lifting generators and essentiality; it is not an extra field hypothesis. |
| `TauCeti/Algebra/Module/AuslanderReiten/Transpose.lean:608` | Transpose comparison for minimal presentations, with the actual cokernel construction earlier in the file. |
| `TauCeti/Algebra/Module/AuslanderReiten/Translate.lean:113` | Translate formed with `Module.Dual`; its general coefficient parameter does not turn it into `Hom_R(-,E_R)`. |
| `TauCeti/Algebra/Module/AuslanderReiten/Equivalence.lean:179` | Stable transpose equivalence for finitely presented modules, usable before Matlis duality is added. |
| `TauCeti/CategoryTheory/Exact/Stable/Basic.lean:123` | Projective stable ideal in exact categories; comparisons with factoring ideals have their own hypotheses. |
| `Mathlib/CategoryTheory/Abelian/Projective/Dimension.lean:265` | Native `WithBot ℕ∞` dimension, `projectiveDimension_le_iff` at295 and zero-object criterion at303. |
| `Mathlib/RingTheory/Flat/Basic.lean:82` | Commutative-semiring context for `Module.Flat` at113; the claimed missing noncommutative flatness API is accurate at this pin. |
| `TauCeti/RingTheory/Morita/Corner.lean:451` | Full-idempotent corner Morita equivalence. Finite-module restriction was also resolved to `TauCeti/Algebra/Category/ModuleCat/CartanMap/Morita.lean:98`. |

The broad owner remains ArtinAlgebras: no other inspected roadmap owns the general nonlocal-Artinian Matlis assembly, categorical Krull–Schmidt/finitely-presented-functor theory, or its marked correspondences. The additional native ownership omission established by this review is R01. The repaired native Irr quotient is properly reused. The namespace `TauCetiRoadmap.RepresentationTheory.ArtinAlgebras` has no colliding declaration in the inspected sibling roadmaps.

The relevant open-head hits were distinguished from suppliers: CountingBundlesAndHallAlgebrasOfCurves §1.2 consumes the generic Krull–Schmidt theory; SheafTheoreticSmithTheory uses a geometric parity specialization; QuiverRepresentationsPartII adds graded/persistence constructions. None provides a competing general owner. The specialized quiver constructions remain the documented field comparisons, not a second generic construction.

### Supplier resolution and order

Every `*Needs:*` line and supplier paragraph was read. The independent dependency check returned exactly:

    depcheck: 205 roadmaps, 1494 edges, 0 problem(s)

There was no UPWARD or CYCLE line. No supplier gaps are declared. The family/sibling changes are within the brief's authorized PR scope.

| Citation resolved | File/location inspected | Contract found |
| --- | --- | --- |
| DerivedModuleAlgebra §1.M.2 | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:2290` | Noetherian-local injective hull, completion action and Matlis duality; local Artinian rings meet completeness. |
| GrothendieckEulerForms, exact structures | `TauCetiRoadmap/GrothendieckEulerForms/README.md`, Layer0, exact-structure paragraphs | Quillen exact structures, conflation-exact functors, abelian/split and extension-closed examples. |
| StablePeriodicCurved Layer0 | `TauCetiRoadmap/StablePeriodicCurved/README.md`, Layer0 | Morphism ideals/quotients, relative projectives/injectives, enough objects and Frobenius comparison. The new Ext-trivial ideals are not assumed to equal factoring ideals without enough objects. |
| GeometricRepresentationCategories §R5.2 | `TauCetiRoadmap/GeometricRepresentationCategories/README.md:283,361–364` | Baer addition versus native extension-class addition in an abelian category with `HasExt`. |
| PurityOfBranchLocus §0.3 | `TauCetiRoadmap/PurityOfBranchLocus/README.md:164–170`; `Suggested.lean:132–137` | Commutative global dimension and its planned criteria. The resolver's lone `globalDimension_le_iff` lead is not supplier drift: the named target is present in README:168, though not in that Lean file. |
| QuiverRepresentations Layer6/6F | `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:385–418` at this head | Field specialization and basis-arrow quiver. The finite-dimensional/algebraically-closed setting is not confused with the general valued construction. |

The layer graph is consistent: 0–2 supply3, 2–3 supply4, 0/4 supply5, 0/4/5 supply6, and 0–2 supply7. §4.2 uses the **definition** in §3.5, not the application of its existence theorem in §4.3, so that is not a proof cycle. The field-case agreement cited in the supplier list is an output comparison; the general proof does not depend on proving the field case first. EnhancedDerivedSheaves is explicitly excluded as a supplier. No new upward prerequisite or nonexistent supplier section was established.

## Not verifiable

The following limitations concern source certification, not counterexamples to the repaired mathematical statements. No paywall was bypassed, and no source text was copied into the repository or report.

- **ars — Auslander–Reiten–Smalø, Representation Theory of Artin Algebras.** The source service reached the Cambridge DOI landing page for `10.1017/CBO9780511623608`; no readable legal full text was obtained. Thus the specified II.2/II.3/II.4, IV.1/IV.4, V.1, VI.1/VI.5 and VII.1 theorem/page references remain unverified, including the four seeded sections2.3,4.1,4.3,5.3 and the sharp Harada–Sai bound.
- **ass — Assem–Simson–Skowroński, Elements…, Vol.1.** DOI `10.1017/CBO9780511614309` resolved to the Cambridge book page without readable full text. IV.2.13 pp.117–118, IV.5.2–5.3 pp.139–141, and IV.6.11 pp.152–153 could not be checked. In particular the proof step extending the field AR formula through Matlis duality is not source-certified here.
- **auslander1971 — Representation dimension of Artin algebras.** The source service's author/title/year search supplied no legal readable copy. The general correspondence locator is still missing in the README.
- **auslander1974 — Representation theory of Artin algebras II.** The DOI `10.1080/00927877409412807` returned HTTP403 at the publisher. The infinite-radical and bounded-component citations could not be checked in this work.
- **roiter — Unboundedness of the dimensions….** The source service's author/title/year search supplied no readable legal copy; the README's indirect ARS citation is also unreadable here.
- **yoneda — On Ext and exact sequences.** The source service's author/title/year search supplied no readable legal copy. The general exact-category assertions were checked mathematically and against the other cited frameworks, not certified from this paper.
- **auslander1966, freyd, tachikawa.** These retain the preceding review's settled **uncertified** treatment. They were not reopened or assigned replacement keys. INP p.20 independently supports the Freyd–Auslander criterion; Müller's readable field theorem does not certify Tachikawa's entire Artin-base generalization.

The six unresolved works are retained in the scratch missing-reference inventory. All remaining review work was completed; the verdict does not depend on obtaining a new source or on parking the review.

## Source issues

- **Misprint** in Kr at Proposition3.10 proof, p.8 (Kr lines395–397): the source places the image of `φ:P₁→P₀` in the radical with reversed endpoints; it should be `Rad(FP₁,FP₀)` and the matching source radical; affects the proof.
- **Misprint** in En at DefinitionA.6(2), p.25 (En line1531): the source names the composite dual functor using F after quantifying G; it should be DG; affects a stated result.
