# Review of ArtinAlgebras (pull request #1397 at 65401f2)
Folder: `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/`

**Verdict:** accepted

## R01 (P3) — Finish the remaining claim locators and source inventory

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:404,520,1175–1177`: “no source is cited”; “no read source is cited for them”. The folder still has no `sources.toml`.

**Claim:** previous R02 is only partly repaired. Chase and INP now have appropriate numbered locators, and Müller is correctly restricted to a field. The functor equivalences and the Artinian-base marked correspondence still lack exact supporting locators; the required one-entry-per-work inventory is absent. Explaining a deduction does not supply the requested bibliographic locator.

**Witness:** chase line 139 begins Theorem 2.1 on coherence; muller lines 117–134 give Theorem 2 and its following reconstruction remark over a field. Neither locates the general Artinian-base correspondence or the projective-restriction equivalence.

**Repair:** add the inventory, preserving previously settled source keys/statuses. Cite the supporting results with exact pages, marking deductions explicitly: for the finite-class generator argument, use §0.3 together with Krause Theorem 4.2/Corollary 4.3, p. 9; for the field correspondence include Müller's following remark, p. 401. Locate the functor equivalences and the general Artinian-base result separately; do not attribute the latter to the field theorem. This is a documentation note, not a mathematical counterexample. The repairs must retain `mod(proj B)` evaluating to finitely presented B-modules, and distinguish the marked objects k and k², whose endomorphism dimensions are 1 and 4. Those computations pass below.

## R02 (P3) — Move the supplied local-ring direction into scope

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:253–257`: “Local endomorphism rings give indecomposables (supplied)”.

**Claim:** the duplication itself is repaired, but its replacement remains a standalone supplied block in the target layers. The specified house form puts such deferrals in Scope and ownership, with the exact declaration in the supplier contracts.

**Witness:** the paragraph identifies `TauCeti.indecomposable_of_injective_of_isLocalRing`; the same declaration is now correctly listed at README:171. Its specialization is exactly the direction previously reported as already implemented.

**Repair:** move the supplied-direction explanation into Scope and ownership; retain the supplier entry and repointed prerequisites. Keep Fitting's converse as the §0.1 target and attach the relevant examples there. This does not change the valid tests: k has local end ring and is indecomposable, 0 has neither property, and ℤ remains an indecomposable with nonlocal end ring.

## Previous findings

The identifiers below refer to `packages/ArtinAlgebras/reports/PRREVIEW-ArtinAlgebras~3.md`, at f452446. No supplied repair report marks a finding not actionable.

- R01 — repaired: README:171 and 253–257 cite the native local-ring criterion and explain its identity-map specialization; subsequent prerequisites point to it. The remaining placement issue is this report's P3 R02.
- R02 — partly repaired: README:512,722 and 1175 add Chase, INP and Müller locators with appropriate scope. Claims at 404,520 and 1177 remain unlocated, and the source inventory is absent; carried as P3 R01.
- R03 — repaired: README:566–568 evaluates the cover at B and S; 922–924 gives transport/opposite APIs; 1112–1119 gives coresolution independence, the copresentation equivalence and Morita invariance, with computed controls at 1123–1130.
- R04 — repaired: README:1219–1222 distinguishes nonzero semisimple algebras from the zero algebra, and pd(k²)=0 from pd(0)=⊥.
- R05 — repaired: README:1084 and Suggested.lean:224 state the finite-module supremum for arbitrary rings. The elaborated signature has no Noetherian hypothesis; the independent left/right comparison retains both Noetherian hypotheses.

## Verified sound

This is an **incremental re-review of 97 changed lines since f452446**, not a second full review. I examined the changed passages, their cited inputs and consumers, all five previous findings, and the changed file outside the folder. Unchanged mathematical checks are explicitly carried from the previous report below. The root README's Writing a roadmap section and CONTRIBUTING were read; the instructed parent copies were absent. EffectiveBounds and OrthogonalL2Bases on main were read for shape. This is an AI review; acceptance means ready for human final approval, not approval or merge.

### Scope, gate and elaboration

The worktree head is exactly `65401f28e5cd450cef6778176bae26a3e5bcacb1`. Library commits are Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2` and Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`; supplier main is `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. No PR file was edited, and the worktree remains clean.

The supplied head-specific worker gate passes every check, including the targeted build. Independent direct elaboration of Suggested.lean and `lake build TauCetiRoadmap.RepresentationTheory.ArtinAlgebras.Suggested` both exit 0, with **19 sorry warnings and no other diagnostics**.

The standalone default gate returned these two context-sensitive failures:

    depcheck: NOT IN ORDER: ArtinAlgebras (insert it after its last supplier)
    outside-folder: TauCetiRoadmap/RepresentationTheory/README.md

These are false positives for this brief: absence from the configured order is explicitly not a defect, and the family index is explicitly authorized. Rerunning with the supplied candidate order removes the first; only the authorized family index remains flagged. All other counters are zero. The separate prescribed dependency check returns exactly:

    depcheck: 205 roadmaps, 1496 edges, 0 problem(s)

There is no UPWARD or CYCLE line. No tooling or order file was changed. Acceptance uses the passing head-specific worker gate, corroborated by the independent checks with those explicit scope exceptions; it does not conceal the raw standalone output.

The changed sibling `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md` removes the added reverse link and now matches the merge-base version: its net PR diff is empty. The remaining external diff is only the authorized family index, whose new entry and dependency paragraph agree with the roadmap. The requested exclusion diff is empty.

All **26 declarations** were re-elaborated with `#check @name` on a scratch copy. The seven suspected binder losses are false alarms: the category hypotheses appear in the class/theorem types; the presentation predicate itself does not need finite biproducts, while its criterion retains them. Generator predicates are meaningful for arbitrary rings; correspondence theorems retain the Artinian scalar base and module finiteness. The explicit `include R` continues to retain the Artin hypotheses in existence and Brauer–Thrall. The sole signature change is the intended removal of Noetherianity at line 224.

All **19 sorried theorems** were tried with `simp`, `rfl`, and `infer_instance` on that copy, requiring each attempted tactic to close the goal. All 19 remained open. Focused pinned-library searches found no single existing lemma proving the changed arbitrary-ring finite-module supremum statement. The previous single-lemma audit for unchanged headlines is carried forward; no new padding was established.

### Headline coverage

| README headlines | Acceptance file |
| --- | --- |
| Krull–Schmidt characterization, idempotent completeness, uniqueness, Artinian recognition | Four theorems at Suggested.lean:88,93,98,105. |
| Freyd–Auslander criterion | Suggested.lean:126, with a real presentation predicate at 120. |
| Finite injective cogenerator and Matlis biduality | Suggested.lean:141,148. |
| Almost-split sequences for Artin algebras | Suggested.lean:166. |
| Harada–Sai and Brauer–Thrall I | Suggested.lean:185,198. |
| Cyclic and finite suprema, Noetherian left/right comparison, semiprimary quotient | Suggested.lean:218,224,231,237. The changed theorem now has arbitrary-ring generality. |
| Morita–Tachikawa forward, converse, marked injectivity | Suggested.lean:271,281,294; concrete generator-cogenerator/copresentation predicates. |
| Auslander correspondence forward and converse | Suggested.lean:305,315. |
| Exact-category Ext¹/AR duality/existence; Matlis-valued translate and AR formulas; valued AR quiver and bounded-component theorem; infinite-radical criterion; numerical dominant dimension; abelian mod C | Each is named in the module docstring at Suggested.lean:49–57 with the missing carrier. No substitute was added in this diff. |

### Computed adversarial table

Notation: k is a field, B=k[ε]/(ε²), S=B/(ε), i:S→B sends 1 to ε, and p:B→S is the quotient. Thus p∘i=0 and i∘p=ε. For T₂(k), U,V,W are respectively the simple projective, the length-two projective-injective, and the simple nonprojective; the almost-split sequence is 0→U→V→W→0. Native pd(0)=⊥.

The first table recomputes every changed mathematical claim and the affected controls. These are computations and proof checks, not claims to have formalized the general theorems.

| Statement | Instances tried | Values on both sides / negative control | Result; change |
| --- | --- | --- | --- |
| C01 / §0.1 native local-end criterion and repointed prerequisites | k, 0, ℤ as modules | Local/indecomposable values: (true,true), (false,false), (false,true). The identity map of End has φ(0)=0, φ(id)=1, φ(e²)=φ(e)² and is injective. | Correct native specialization; previous R01 mathematical defect repaired. |
| C02 / §0.5 full-subcategory closure | add B; {0}; finite free modules over k×k | Indecomposable classes: {B}; empty; one free rank-one object with End=k×k. The last category omits the retract (k,0); the first two contain every required local summand. | Closure argument correct; missing claim locator remains R01 here. |
| C03 / §0.5 generator transport and enlargement | B⊕S, S⊕B, B⊕S⊕S | Multiplicity pairs (1,1), (1,1), (1,2); each has both retractions onto B and S. B alone has (1,0) and misses S. | Isomorphism/enlargement preserve generator status. |
| C04 / §0.5 finite-class criterion | mod B; zero category; Kronecker algebra | Class counts 2,0,∞; generators B⊕S,0,none. The Kronecker preprojectives have distinct dimension vectors (n,n+1), so no finite decomposition contains all of them. | Both directions follow from uniqueness; zero uses the empty sum. |
| C05 / §1.3 evaluation equivalence | A=B; A=k | At B, h_B evaluates to B and coker(h_ε) to B/εB=S. Over k, h_(kⁿ) evaluates to kⁿ and reconstructs the same functor. | Native left-module/right-End convention retained; locator incomplete. |
| C06 / §1.3 coherence citation | B; A=k[x,y₁,y₂,…]/(xyᵢ) | ann_B(ε)=εB is generated by one element; ann_A(x)=(y₁,y₂,…) needs infinitely many. Weak kernels/kernel closure are true/true and false/false. | Chase Theorem 2.1 correctly supports coherence, not the evaluation equivalence. |
| C07 / §1.3 restriction to projectives | C=mod B; objects S and B | S restricts to coker(h_B --ε→ h_B); evaluation gives S of length 1. B restricts to h_B, evaluating to length-2 B. | Projective presentations reconstruct both objects. |
| C08 / §1.3 progenerator handedness | P=A and A², including noncommutative A | End_A(A)=Aᵒᵖ, End_A(A²)=Mat₂(A)ᵒᵖ. Right End_A(A)-modules are left A-modules; no unintended opposite remains. | Yoneda route is sound; source locator still absent. |
| C09 / §1.5 computed projective cover | h_B→S_B at B and S; zero functor; proj ℤ | Values B→k (kernel εB) and k→0 (kernel k). A fixing endomorphism is 1+cε, inverse 1−cε, also in characteristics 2 and 3. Over ℤ, ×3 fixes ℤ→ℤ/2 but is not invertible. | Replaces the repeated assertion with a discriminating computation; previous R03 repaired here. |
| C10 / §3.3 located extension-class criterion | ξ from 0→S→B→S→0; split extension | Ext¹_B(S,S)=k, ξ≠0; i_*ξ lies in Ext¹_B(S,B)=0. Identity pushout gives ξ but identity is split mono and excluded. Split class=0. | INP Theorem 2.9/Proposition 2.10 apply because KS indecomposables have local end rings. |
| C11 / §5.2 transport API | U→V→Z with τZ=U and labels (1,2),(2,1); relabel vertices 0,1,2 | After relabelling τ(2)=0. Incoming label (2,1) reverses to outgoing (1,2) before and after transport; both incidence tests are true. | Compatible valued-quiver isomorphisms preserve the condition. |
| C12 / §5.2 opposite API and new Check | Same mesh; opposite; isolated vertex | Opposite arrows Z→V→U have labels (1,2),(2,1), respectively, and τ_op(U)=Z. Each individual arrow has its original pair swapped. Empty τ stays empty. Leaving τ with domain {Z} fails at Z. | Inverse partial translation and label exchange are correct. |
| C13 / §5.2 negative and self-dual controls | Two arrows labelled (1,2),(1,2); B mesh | First mesh requires (1,2)=(2,1), false. B has τS=S and both labels (1,1), so reversal gives (1,1)=(1,1). | Definition still discriminates wrong valuations; previous R03 API repair sound. |
| C14 / §7.2 generalized finite-module supremum, Lean:224 | 0,k,ℤ,B,k[x₁,x₂,…] | sup(cyclic pd)=sup(finite pd)=sup(all pd) equals ⊥,0,1,∞,∞, respectively. In the last ring, quotient by (x₁,…,xₙ) has pd n for every n. The unit ideal contributes pd(0)=⊥. | Noetherianity unnecessary; both inequalities and the cyclic theorem prove the generalization. |
| C15 / §7.3 dominant-dimension definition | B, T₂(k), Γ=End_B(B⊕S), zero algebra | Initial projective-injective lengths ∞,1,2,∞; the n=0 condition is true for all four. For B, the coresolution begins B→B→0; for T₂(k), the next injective is nonprojective. | Definition and new locator leave the values unchanged. |
| C16 / §7.3 independence of coresolution | B; add an injective contractible summand to a copresentation | Minimal beginning B --id→ B→0 has projective terms B,0. Enlarged beginning B→B⊕B→B, maps x↦(x,0) and (x,y)↦y, has kernel B⊕0 and the same minimal summand. | Uniqueness of hulls and splitting remove the extra summand; numerical value stays ∞. |
| C17 / §7.3 copresentation iff dom.dim≥2 | B,T₂(k),Γ,0 | Copresentation/inequality truth pairs (T,T),(F,F),(T,T),(T,T). For T₂(k), hull(U)=V but its cokernel W has injective hull W, which is not projective; no larger injective copresentation can remove this summand. | Both directions and the new positive/negative Checks agree. |
| C18 / §7.3 Morita invariance API | B and Mat₂(B); T₂(k) and Mat₂(T₂(k)) | Corresponding minimal coresolution terms are transported by the exact equivalence; projective/injective flags are unchanged. Dominant dimensions are ∞=∞ and 1=1. | §7.1 supplies the stated route; no new supplier. |
| C19 / §7.4 marked correspondence and Müller citation | (k,k),(k,k²),(Mat₂(k),k²) | Endomorphism dimensions 1,4,1. First and second marked pairs differ despite equal additive closure; first and third correspond under Morita equivalence and have End=k. | Theorem 2 plus its following remark support the field description; full Artin-base locator remains absent. |
| C20 / §7.4 Artinian-base extension control | R=A=ℤ/4; M=A and M=A⊕ℤ/2 | D_R(A)=A and D_R(ℤ/2)=ℤ/2. End(A) has 4 elements and dom.dim∞. End(M) has 4·2·2·2=32 elements. Its length-3 projective-injective Q has factors L_A,L_S,L_A; the regular module coresolves through Q²,Q, then the nonprojective injective Q/soc Q. Thus dom.dim=2. | Finite Matlis duality supports the general-base route; a field-vector-space replacement cannot cover characteristic 4. |
| C21 / §7.5 repaired semisimple Check | Mat₂(k), its simple k², its zero module; A=M=0 | gl.dim Mat₂(k)=0, pd(k²)=0, pd(0)=⊥≤0; End_0(0)=0 and gl.dim 0=⊥. Thus the new nonzero-algebra qualification excludes precisely the old counterexample. | Previous R04 repaired; no Lean boundary theorem added. |

The following **96 unchanged rows** are carried from the previous report. Each row cites [r3], meaning `packages/ArtinAlgebras/reports/PRREVIEW-ArtinAlgebras~3.md`, Computed adversarial pass, with its original row number. This preserves its computed evidence without claiming a new full pass. The 16 replaced rows are covered and expanded in the 21 rows above; all 112 former rows are accounted for.

| Previous statement | Instances tried | Previously computed values | Result; provenance |
| --- | --- | --- | --- |
| 01 / Artin-algebra coefficients | `ℤ/p²ℤ`, p=2,3; zero ring | Base lengths of the regular module are 2 and 0; finite over the Artinian base in each case. `ℤ/4ℤ` cannot be a field algebra: characteristic 4. | Full coefficient scope retained. Carried from previous report, row 01 [r3]. |
| 02 / Hom-finite convention | End of S,B; End of ℤ | R-lengths 1,2; `length_ℤ ℤ=∞`. Only the first two satisfy the finite-endomorphism hypothesis. | End-only recognition scope agrees with Lean. Carried from previous report, row 02 [r3]. |
| 04 / Fitting converse | B; free modules over `k×k` | In B, ε²=0 and units have nonzero residue. Free rank-one `k×k` is indecomposable within free modules, but `(1,0)` is a nontrivial idempotent. | Idempotent completeness separates the bad case. Carried from previous report, row 04 [r3]. |
| 05 / Krull–Schmidt definition | zero category; `mod B`; finite abelian groups | Decomposition lengths of 0,S,B are 0,1,1. ℤ has one indecomposable summand but its end ring is nonlocal. | Correct empty-family and negative cases. Carried from previous report, row 05 [r3]. |
| 06 / Equivalence invariance of KS | `mod k ≌ mod Mat₂(k)` | kⁿ maps to n copies of k²; summand multiplicity n on both sides; simple end rings both k. | Transport preserves the definition. Carried from previous report, row 06 [r3]. |
| 07 / Indecomposable iff local in KS | S,B,S²,0 | `(indecomp,local)` equals `(T,T),(T,T),(F,F),(F,F)`; `End(S²)=Mat₂(k)`. | Both directions tested. Carried from previous report, row 07 [r3]. |
| 08 / KS implies split idempotents | `S⊕B`, projection to S | e²=e; image S and complement B; inclusion followed by projection is `id_S`. | Correct. Carried from previous report, row 08 [r3]. |
| 09 / Split idempotents + semiperfect recognition | `mod B`; free `k×k` modules | End(B) is local/semiperfect; in free rank one over `k×k`, idempotent `(1,0)` has no free image. | Second conjunct cannot replace splitting. Carried from previous report, row 09 [r3]. |
| 10 / Uniqueness of KS decomposition | 0; `S⊕B` versus `B⊕B` | Empty index cardinalities 0=0; lengths 3 versus 4, multiplicities `(1,1)` versus `(0,2)`. | Correct; nonmatching decompositions not isomorphic. Carried from previous report, row 10 [r3]. |
| 11 / Failure without local end rings | `I=(2,1+√−5)` over `ℤ[√−5]` | I has rank 1, nontrivial ideal class of order 2; `I⊕I` and `R²` have rank 2 and principal determinant, but `I≄R`. | Correct negative control. Carried from previous report, row 11 [r3]. |
| 12 / Primitive idempotent decomposition | End=`k×k`; zero end ring | `(1,0)+(0,1)=(1,1)`, cross products 0, both corners k; zero uses empty sum 0=id. | No categorical splitting assumed. Carried from previous report, row 12 [r3]. |
| 13 / Hom-finite idempotent-complete recognition | `Karoubi(Mat_ C₁)` for End(C₁)=`k×k` | Objects have ranks `(m,n)`, with m copies `(1,0)` and n copies `(0,1)`; end corners k. | Corrected recognition example. Carried from previous report, row 13 [r3]. |
| 14 / Karoubi alone negative control | `Karoubi C₁` | Ranks are `(0,0),(1,0),(0,1),(1,1)`; `(1,0)+(1,0)=(2,0)` is absent. | Finite-biproduct hypothesis genuinely fails. Carried from previous report, row 14 [r3]. |
| 16 / Module/quiver KS instances | `mod ℤ/4ℤ`; A₂ representations | Indecomposable lengths `{1,2}` and `{1,2,1}`; every object decomposes with these multiplicities. | Existing specialized results remain comparison cases. Carried from previous report, row 16 [r3]. |
| 17 / Additive-generator predicate | `M=B⊕S`, B, S | Both B and S retract from M; S does not retract from B and B does not retract from S. | True,false,false respectively. Carried from previous report, row 17 [r3]. |
| 20 / Radical defining condition | End(B); End(S) | `1−gε` has inverse `1+gε`; for f=1 choose g=1 and obtain 0, not a unit. End(S) radical is 0. | ε admitted, identity excluded. Carried from previous report, row 20 [r3]. |
| 21 / Radical matrix criterion | `S⊕B` | Off-diagonal i,p are radical; B diagonal radical εB; S diagonal radical 0. A diagonal `id_S` fails both tests. | Componentwise criterion agrees. Carried from previous report, row 21 [r3]. |
| 22 / Radical powers versus ring powers | B,S | `i∘p=ε≠0`; `p∘i=0`; every three-map radical composite is 0. Ring radical `(ε)²=0`, categorical `rad²(B,B)=kε`. | Distinction correct; n=0 power is the whole ideal. Carried from previous report, row 22 [r3]. |
| 23 / Radical transport | Swap labels in B⊕S decomposition | Matrix off-diagonal positions swap; the subspace `rad²(B,B)=kε` and vanishing `rad³=0` are unchanged. | Correct equivalence API. Carried from previous report, row 23 [r3]. |
| 24 / Irreducibility and endpoint hypotheses | i; `(i,0):S²→B` | Both are nonzero in rad/rad²; i is irreducible. The second factors via projection `S²→S` (not mono) and i (not epi). | Repaired hypothesis excludes the second map. Carried from previous report, row 24 [r3]. |
| 25 / Finitely presented predicate | `h_B=(-,B)`,0 | Presentations `0→h_B→h_B` and `0→0→0` have cokernels h_B and 0. | Real presentation body, no arbitrary Prop. Carried from previous report, row 25 [r3]. |
| 26 / Additivity of quotient functor | quotient `h_B→S_B` | At B: B→k; at S: k→0. For lifts x,y, the induced action on `f+g` is `F(f)x+F(g)x`; surjectivity removes lift dependence. | No missing additivity hypothesis. Carried from previous report, row 26 [r3]. |
| 27 / Closure under cokernels and finite sums | on `proj B`, multiplication ε | Cokernel evaluates to S; sum of two representables evaluates to B²; both finitely presented. | Correct. Carried from previous report, row 27 [r3]. |
| 28 / Closure under extensions | on `proj B`, `0→S→B→S→0` | End terms have presentation `B --ε→ B → S`; middle is rank-one representable. Extension length `1+1=2`. | Correct extension-closure control. Carried from previous report, row 28 [r3]. |
| 29 / Representables projective and enough | `h_B`; quotient `h_B→S_B` | Natural maps out of h_B are values at B; surjection B→k lifts 1 to 1. | Projectivity and presentation direction correct. Carried from previous report, row 29 [r3]. |
| 30 / Finite generation negative control | `C=mod k`, infinite-dimensional K | At k the target is K; a map from h_V has image dimension at most `dim V<∞`, never all K. | Not finitely generated, as claimed. Carried from previous report, row 30 [r3]. |
| 31 / Freyd–Auslander positive direction | `proj B`, `mod B` | Weak kernel of ε:B→B in proj B is ε:B→B; image and actual kernel both εB. In mod B an actual kernel is S. | Both functor categories are abelian. Carried from previous report, row 31 [r3]. |
| 32 / Freyd–Auslander negative direction | `A=k[x,y₁,…]/(xyᵢ)` | `ann(x)=(y₁,y₂,…)`; any finite set involves finitely many yᵢ and misses a fresh yⱼ. No finite projective image equals this kernel. | Both weak-kernel and abelian-closure conditions fail. Carried from previous report, row 32 [r3]. |
| 37 / Kernel criterion for pd≤2 in mod C | C=`mod B`, `proj ℤ`, `proj B` | First category: simple functor at S has pd2. Second: kernel(×2:ℤ→ℤ)=0. Third: ε has no representable kernel and cokernel S has pd∞. | Bound/converse discriminate. Carried from previous report, row 37 [r3]. |
| 39 / Projective-cover negative control | `proj ℤ`, quotient ℤ→ℤ/2 | Multiplication by 3 fixes the quotient but is not invertible. Every finite free surjection has the analogous ×3 obstruction. | No projective cover. Carried from previous report, row 39 [r3]. |
| 40 / Artinian local-factor decomposition | `R=k×k`; zero ring | Maximal-factor quotients are k,k and product map is identity; zero ring has no maximal ideals, empty product is zero ring. | Degenerate factor decomposition correct. Carried from previous report, row 40 [r3]. |
| 41 / Injective hull E_R, field and length-two base | k; `ℤ/p²ℤ` | E=k and R respectively; socles k and pR; lengths 1 and 2. For p=2,3 the socle inclusion is multiplication by p. | Correct; simple modules embed. Carried from previous report, row 41 [r3]. |
| 42 / E_R is not always R | `R=k[x,y]/(x,y)²` | `E=D_k R` has length3 and socle dimension1; R has length3 and socle dimension2. | E≄R despite equal length. Carried from previous report, row 42 [r3]. |
| 43 / D_R definition and variance | `M=R,S` over B | D(B)=B, D(S)=S; D(p) is i and D(i) is p under standard identifications. | Source/target directions correct. Carried from previous report, row 43 [r3]. |
| 44 / Bidual evaluation | kⁿ, S over B,0 | `x↦(φ↦φ(x))` has rank n,1,0 respectively; kernels 0 and equal domain/codomain lengths. | Bijective in all three cases. Carried from previous report, row 44 [r3]. |
| 45 / Finite-length necessity | infinite-dimensional k-space V | V is the direct sum on a basis; V* is the product. Evaluation spans only finite linear combinations of coordinate evaluations in V**; additional linear functionals exist. | Surjectivity fails outside finite length. Carried from previous report, row 45 [r3]. |
| 46 / Length and simple duals | R=B; R=`k×k` | Lengths of D(B),D(S) are 2,1; `D(k,0)=(k,0)`, `D(0,k)=(0,k)`, each length1. | Correct; zero gives 0=0. Carried from previous report, row 46 [r3]. |
| 47 / Artin left/right duality | A=`T₂(k)` | Dual of each simple is the corresponding opposite-side simple; applying twice restores vertex spaces and arrow transpose twice. Dimensions 1,2,1 unchanged. | Anti-equivalence direction correct. Carried from previous report, row 47 [r3]. |
| 48 / Exchange of projectives/injectives | `T₂(k)`; B | Dual regular modules are injective cogenerators; over B regular B is both projective and injective. | No self-injectivity imposed generally. Carried from previous report, row 48 [r3]. |
| 49 / Nakayama equivalence | `T₂(k)` projectives U,V | νU=V (length1→2), νV=W (length2→1); these are the injective hulls of their simple tops. | Correct; ν need not preserve length. Carried from previous report, row 49 [r3]. |
| 50 / Finite injective hull via dual cover | S over B; U over `T₂(k)` | Projective cover of D(S) is B, dual hull B of length2; hull(U)=V of length2. | Correct finite assembly. Carried from previous report, row 50 [r3]. |
| 51 / Ext¹ definition and zero | S over B; split exact structure | Ordinary `Ext¹(S,S)=k`; split exact Ext¹=0. Class of B is nonzero; class of S⊕S is 0. | Definitions distinguish exact structures. Carried from previous report, row 51 [r3]. |
| 52 / Ext¹ for finite abelian groups | `ℤ/2`, middle ℤ/4 | Two classes; Baer sum of the nonzero class with itself is 0. Same two classes in `mod ℤ/4`. | Correct finite-group Check. Carried from previous report, row 52 [r3]. |
| 53 / Pullback, pushout and linearity | class ξ of B extension | Scalar a acts by aξ; identity pullback/pushout gives ξ, zero gives 0; at p=2, ξ+ξ=0. | Variance and additive laws agree. Carried from previous report, row 53 [r3]. |
| 54 / First long exact sequence | W=S, `S --i→ B --p→ S` | Hom sequence begins `k --≅→ k --0→ k --≅→ k --0→ 0`; kernels equal preceding images. | Correct connecting direction. Carried from previous report, row 54 [r3]. |
| 55 / Dual long exact sequence | W=S, same conflation | Begins `k --≅→ k --0→ k --≅→ k --0→ 0` contravariantly; boundary sends id_S to ξ. | Correct dual direction. Carried from previous report, row 55 [r3]. |
| 56 / Ext-trivial ideals | id_S, id_B in `mod B` | `Ext¹(id_S,S)=id_k≠0`; Ext¹(B,−)=0 and Ext¹(−,B)=0, so id_B lies in both ideals. | Identities not indiscriminately killed. Carried from previous report, row 56 [r3]. |
| 57 / Factoring-ideal comparison | map S→B→S; split exact category | p∘i=0; every map through B acts trivially on Ext¹. In split structure all maps are trivial and quotient Hom groups all 0. | Enough-projective comparison and split case agree. Carried from previous report, row 57 [r3]. |
| 58 / No-enough-projectives example | finite abelian groups, S=`ℤ/p` | No nonzero projective objects; `Ext¹(S,S)=𝔽_p`, and id_S induces multiplication by1. | Ext-trivial definition remains meaningful. Carried from previous report, row 58 [r3]. |
| 59 / Almost-split conflation definition | `0→S→B→S→0`; split sequence | First class ξ≠0 and i,p nonsplit; second class0 and projection split. | Positive and negative examples distinguished. Carried from previous report, row 59 [r3]. |
| 60 / Endpoint indecomposability and uniqueness | nonzero extensions of S by S over B | Any nonzero scalar multiple of ξ has middle B and is isomorphic after endpoint rescaling; end lengths1 and1. Split middle has length2 but wrong class. | Unmarked conflation uniqueness correct. Carried from previous report, row 60 [r3]. |
| 62 / Right almost-split image criterion | p:B→S; id_S | At S, image Hom(S,B)→Hom(S,S) is0=rad(S,S); at B it is k=rad(B,S). id_S instead has full image k at S. | Correct. Carried from previous report, row 62 [r3]. |
| 63 / Simple functors and finite presentation | S_S and S_B in `mod(mod B)` | Values on (S,B) are `(k,0)` and `(0,k)`; each simple has end ring k and a finite presentation. | Correct classification in this test. Carried from previous report, row 63 [r3]. |
| 64 / Minimal projective resolution of simple functor | S_S; S_B | S_S resolution uses `h_S→h_B→h_S`, length2; S_B uses `h_S→h_B`, length1. Nonzero differentials are radical. | pd2 and pd1; no projective endpoint conflation invented. Carried from previous report, row 64 [r3]. |
| 65 / AR duality definition | ordinary versus split exact `mod B` | Ordinary stable End(S)=k and Ext¹(S,S)=k, dual dimension1=1. Split stable Hom=0 and Ext¹=0. | Pairing rules exclude a zero duality in ordinary case. Carried from previous report, row 65 [r3]. |
| 66 / Existence iff AR duality | `mod B`; split structure | Ordinary: one nonprojective indecomposable S and one AS sequence; split: none on either side, quotient categories zero. | Both branches and vacuous case agree. Carried from previous report, row 66 [r3]. |
| 67 / Product-base assembly | `R=k×k`, categories over two B factors | Ext and Hom decompose into two blocks; cross terms0; D exchanges no factors; each nonzero block has dimension1. | Central-idempotent factorization is compatible. Carried from previous report, row 67 [r3]. |
| 68 / Translate definition and τ=0 criterion | S,B over B | Minimal presentation of S is `B --ε→ B`; transpose S and dual S give τS=S. Minimal presentation of B has P₁=0, so τB=0. | Projective/nonprojective criterion holds. Carried from previous report, row 68 [r3]. |
| 69 / Translate inverse and direction | U,V,W over `T₂(k)` | τW=U, τ⁻U=W; τU=τV=0. U is projective but not injective. | Correct direction; not τW=W. Carried from previous report, row 69 [r3]. |
| 70 / Stable equivalence | B and S over B | B becomes0 in both quotients; S has stable end ring k and is fixed by τ. | Correct on objects and Hom spaces. Carried from previous report, row 70 [r3]. |
| 71 / First AR formula | M=N=S over B; M=B | Values are k versus D(k)=k for S,S; Ext¹(B,S)=0 versus D(Hom(S,0))=0 for B,S. | Correct injectively stable Hom. Carried from previous report, row 71 [r3]. |
| 72 / Second AR formula | M=N=S; N=B | k versus D(k)=k; Ext¹(S,B)=0 versus D(Hom(0,S))=0. | Correct projectively stable Hom. Carried from previous report, row 72 [r3]. |
| 73 / Almost-split existence headline | S over ℤ/4,ℤ/9,B; W over `T₂(k)` | Middle modules ℤ/4,ℤ/9,B,V; endpoint lengths1+1=2. A projective endpoint cannot have a nonsplit extension. | Artin and nonprojective hypotheses retained. Carried from previous report, row 73 [r3]. |
| 74 / Source and sink maps | projective-injective B | Sink is i:S→B with image εB=rad B; source is p:B→S with kernel εB=soc B. | Direction correct for p=2,3 too. Carried from previous report, row 74 [r3]. |
| 75 / Irreducible maps as summands of sink | i:S→B; `(i,0):S²→B` | i is the minimal sink itself; adding a zero summand creates a noninvertible endomorphism fixing the map. | Minimality excludes the bad map. Carried from previous report, row 75 [r3]. |
| 76 / Irr quotient carrier | S→B, B→S, B→B | rad/rad² has dimensions1,1,0: the last numerator and denominator both kε. | Reuses native quotient correctly. Carried from previous report, row 76 [r3]. |
| 77 / Commuting endomorphism actions | class of i, scalars a,b | Post/precomposition gives aib=(ab)i=b(ai); ε on B acts as εi=0. | Radicals act trivially and actions descend. Carried from previous report, row 77 [r3]. |
| 78 / Equivariance of class map | i and B endomorphism `a+cε` | Class of `(a+cε)i` equals a[i]; cεi=0. | Class-map API correct. Carried from previous report, row 78 [r3]. |
| 79 / Valuation orientation | real-complex triangular algebra | For successive arrows the Irr space has real dimension2; endpoint division rings `(ℝ,ℂ)` give `(a,b)=(1,2)`, then `(ℂ,ℝ)` give `(2,1)`. | Detects reversal. Carried from previous report, row 79 [r3]. |
| 81 / AR vertices and translation domain | B; `T₂(k)` | Vertices `{S,B}` and `{U,V,W}`; domains `{S}` and `{W}`; τ values S and U. | Exact nonprojective domain. Carried from previous report, row 81 [r3]. |
| 82 / Middle multiplicity formula | real-complex triangular mesh | Middle V occurs once; `b_{VZ}=1=a_{τZ,V}`. The other two dimensions equal2 and would give a false multiplicity. | Convention agrees in both layers. Carried from previous report, row 82 [r3]. |
| 83 / Valued mesh property | same example; B | Incoming `(2,1)` matches outgoing `(1,2)` under reversal; B matches `(1,1)` with itself. | Correct. Carried from previous report, row 83 [r3]. |
| 84 / Field arrow-count comparison | real-complex example; algebraically closed k | `dim_ℝ Irr=2=2·1=1·2`; with both division rings k, dimensions `(n,n)` and n basis arrows. | Correct comparison with sibling 6F. Carried from previous report, row 84 [r3]. |
| 85 / Chain composite definition | empty, one and two maps | `chainComp 0=id`; `chainComp 1=f₀`; for p then i, `chainComp 2=ε`. | Indexing and direction correct. Carried from previous report, row 85 [r3]. |
| 86 / Harada–Sai bound | b=0,1,2 | b0 forces length0, contradicting indecomposable nonzero; b1 bound1 and noniso simple map0; b2 bound3, two-map ε≠0 but three-map composites0. | Natural subtraction at b0 causes no false case. Carried from previous report, row 86 [r3]. |
| 87 / Radical nilpotence consequence | `mod B`; Kronecker | `rad²(B,B)=kε≠0`, `rad³=0`; Kronecker has nonzero composites of arbitrary finite length. | Bound and finiteness hypothesis discriminate. Carried from previous report, row 87 [r3]. |
| 88 / Bounded-component Auslander theorem | B; `k×k` | B component has 2 vertices, max length2, equals whole quiver. Product has two singleton components, each bounded, but neither whole. | Connectedness excludes counterexample. Carried from previous report, row 88 [r3]. |
| 89 / Brauer–Thrall headline | B, zero algebra, Kronecker | B has 2 indecomposable classes; zero has0; Kronecker lengths `2n+1` are unbounded. | Finite skeleton conclusion agrees. Carried from previous report, row 89 [r3]. |
| 90 / Infinite-radical criterion | B; Kronecker regular tower | B intersection is0 since rad³=0. A nonzero map from the sink simple to a regular simple factors through regular Jordan modules of every length, hence lies in every radⁿ. | Finite/infinite control agrees; broad source inaccessible. Carried from previous report, row 90 [r3]. |
| 91 / Connected finite AR quiver | B; `k×k` | Underlying component counts1 and2 respectively; algebra central idempotents count2 and4. | Correct nontrivial connected case. Carried from previous report, row 91 [r3]. |
| 92 / Projectivization | M=B⊕S | Γ end dimension `2+1+1+1=5`; Hom(M,M)=right Γ, Hom(M,B),Hom(M,S) are its two projective summands. | Sources, targets and handedness correct. Carried from previous report, row 92 [r3]. |
| 93 / Double centralizer | M=A, A noncommutative | Γ=Aᵒᵖ by right multiplication; commuting left actions recover `End_Γ A=A`; action map a↦left multiplication by a. | Correct; no opposite lost. Carried from previous report, row 93 [r3]. |
| 94 / Morita equivalence | k,Mat₂(k),`k×k` | Simple-class counts1,1,2. k↔Mat₂(k) takes k to k²; k and k×k cannot be equivalent. | Correct invariant and negative control. Carried from previous report, row 94 [r3]. |
| 95 / Morita preservation | B and Mat₂(B) | Both have 2 indecomposable classes; corresponding lengths unchanged as modules over their own rings; gl.dim∞, dom.dim∞ on both. | Correct invariance control. Carried from previous report, row 95 [r3]. |
| 96 / Global-dimension definition | 0,k,ℤ,B | Suprema of pd are `⊥,0,1,∞`; zero objects contribute ⊥, not0. | Native convention agrees. Carried from previous report, row 96 [r3]. |
| 97 / Cyclic-module supremum headline | 0,k,ℤ,B | Quotients realizing values: zero; k; ℤ/2 with pd1; S over B with pd∞. Sup(all)=sup(cyclic) in each. | Correct, including unit ideal yielding zero. Carried from previous report, row 97 [r3]. |
| 99 / Left/right Noetherian comparison headline | `T₂(k)`,B,ℤ,0 | Opposite-ring global dimensions `1,∞,1,⊥`, equal to original values. | Both Noetherian assumptions retained. Carried from previous report, row 99 [r3]. |
| 100 / Semiprimary quotient headline | `T₂(k)`,B,k,0 | `pd(A/J)` is respectively1,∞,0,⊥, matching global dimension. | Correct quotient and zero cases. Carried from previous report, row 100 [r3]. |
| 103 / Generator-cogenerator predicate | B,B⊕S,S over B | Only indecomposable projective/injective is B; retraction exists for first two, fails for S by length2>1. | T,T,F. Carried from previous report, row 103 [r3]. |
| 104 / Generator-cogenerator add/duality API | A=`T₂(k)`, `A⊕D A` | A contains U,V; D A contains V,W; union includes every projective/injective class. Adding any summand retains them. | Correct and invariant under equivalence. Carried from previous report, row 104 [r3]. |
| 105 / Scalar compatibility of endomorphism isomorphisms | R=k×k, A=k via distinct projections | End rings both k, but `(1,0)` acts as1 versus0. An R-algebra isomorphism would force1=0. | Repaired hypothesis excludes prior counterexample. Carried from previous report, row 105 [r3]. |
| 106 / Morita–Tachikawa forward headline | M=B and B⊕S | Ends B and Γ have dominant dimensions∞ and2; both satisfy the concrete copresentation predicate. | Correct. Carried from previous report, row 106 [r3]. |
| 107 / Morita–Tachikawa converse headline | Γ=k,Mat₂(k),End_B(B⊕S) | Reconstructed pairs can be `(k,k)`, `(k,k²)`, `(B,B⊕S)`; end dimensions1,4,5 match Γ. | Marked reconstruction preserves multiplicity. Carried from previous report, row 107 [r3]. |
| 109 / Auslander forward pd bound | B⊕S; semisimple generator k² | Γ simples have pd2 and1; Mat₂(k) nonzero modules have pd0, zero has⊥. All satisfy pd≤2. | Lean headline sound; the associated README Check is recomputed below. Carried from previous report, row 109 [r3]. |
| 110 / Auslander converse headline | Γ=End_B(B⊕S); Γ=B | First gl2/dom2 gives additive generator B⊕S. Second gl∞/dom∞ fails gl≤2 and cannot trigger converse. | Dominant dimension alone insufficient. Carried from previous report, row 110 [r3]. |
| 111 / Correspondence on Morita classes | marked `(k,k)` and `(k,k²)` | Their end rings differ (dimensions1,4) but are Morita equivalent; input underlying algebras both k. | Correct distinction between the two quotient formulations. Carried from previous report, row 111 [r3]. |

### Seeded source sample and changed references

The 15 requested seeded sections are accounted for below. “Carried” denotes unchanged evidence from [r3]; it does not assert a fresh source certification. Fresh readings used legal source-service fetches for Kr, inp, chase and muller, and the existing source-service extraction for auslander1955. Source keys are retained from [r3]; README [Ch], [INP], [Mü] and [Au55] correspond to chase, inp, muller and auslander1955.

| Seeded target | Source/locator and outcome at this head |
| --- | --- |
| 0.3 Uniqueness | Reopened Kr lines 451–477, Theorem 4.2/Corollary 4.3, p. 9, because §0.5 now cites the deduction through §0.3. Finite decompositions with local end rings are the hypotheses actually used. |
| 0.4 Recognition | Kr lines 478–487, Corollary 4.4, pp. 9–10, rechecked as the input to closure/generators. The Artinian-endomorphism route and En §3.2 specialization are otherwise unchanged. |
| 0.5 Closure and generators | Recomputed above; Kr lines 399–401 and 451–477 support the definition/uniqueness deduction. Exact local citations remain incomplete (R01). |
| 0.6 Radical ideal | Carried [r3] rows 20–24 and source audit: matrix radical and local-endpoint criterion. No changed claim or new locator here. |
| 1.1 mod C | Carried rows 25–30; rechecked its use in the changed §1.3 presentation argument. No located source for the entire closure/equivalence API was added. |
| 1.3 Finitely presented modules/enough projectives | chase lines 139–144, Theorem 2.1, p. 460, freshly read: finite relations for finitely generated submodules/ideals characterize left coherence. The text correctly distinguishes that result from the two Yoneda equivalences. Kr lines 162–176 give projectivization, not the full missing citation. |
| 1.5 Projective covers | Kr lines 316–324,377–397,402–433: Corollary 3.5 p. 6, Proposition 3.10 pp. 7–8, Proposition 4.1 p. 8. The new B/S evaluation and residue-one minimality argument are correct. |
| 2.2 Duality | Unchanged, carried rows 43–46 and [r3]'s Matlis supplier check. Re-read DerivedModuleAlgebra §1.M.2 at main for the local input used by the changed general-base correspondence route. |
| 3.4 Functorial picture | Unchanged, carried rows 62–64 and [r3]'s En Proposition A.2 p. 23 reading; remains consistent with the changed §1.5 cover Check and §3.3 criterion. ASS IV.6.11 remains uncertified here. |
| 3.5 AR duality/existence | Unchanged, carried rows 65–67 and [r3]'s En/INP/Lenzing–Zuazua audit. No changed hypotheses or generality. |
| 4.1 Translate | Unchanged, carried rows 68–69 and [r3]'s native transpose audit; ARS IV.1.10(f) p. 107 remains unread. |
| 4.2 Stable equivalence/formulas | Unchanged, carried rows 70–72 and [r3]'s exact duality/stable-quotient conventions. No new source certification of ARS IV.4/ASS IV.2.13. |
| 5.3 Valued quiver | Carried rows 76–84; new §5.2 opposite/transport API recomputed above. Its swapped valuations preserve b_(W,Z)=a_(τZ,W)=1 in the unequal-valued mesh. ARS VII.1.3 p. 230 and VII.1.5 p. 231 remain unread. |
| 6.1 Representation-finiteness/Harada–Sai | Unchanged, carried rows 85–87. [r3]'s Harada–Sai Lemmas 11–12 p. 339 reading gives eventual vanishing; the sharper cited bound was not source-certified and is not newly certified here. |
| 7.4 Morita–Tachikawa | muller lines 8–9,112–134, Theorem 2 and following remark, p. 401, freshly read. The field hypothesis and generator-cogenerator definition match; the following remark addresses marked reconstruction. The general Artinian-base extension is now correctly identified as the roadmap's argument, not as Müller's stated generality. Its missing exact reference remains R01. |

Other changed references: inp lines 779–811, Theorem 2.9 and Proposition 2.10 p. 12, explicitly require a nonzero extension and the local endpoint for the one-sided criterion. The standing Krull–Schmidt hypothesis supplies it. auslander1955 lines 40–44, Theorem 1 p. 68, has no Noetherian restriction; its proof of Theorem 4 at lines 127–133 uses the finite-module consequence. The source's separate pd(0)=−1 convention is explicit at line 252; the roadmap's bottom-valued convention is deliberate. The new ARS §VI.5 p. 211 citation could not be read legally (below).

For the general-base correspondence, the route uses projectivization, the double centralizer and finite exact Matlis duality already owned in §§2.2–2.3 and 7.1. It does not require a field-only dimension count: duality exchanges finite projectives/injectives and preserves the finite reconstruction diagrams. The nonfield computation in C20 checks that replacing D_R with vector-space duality would lose valid inputs. This is a mathematical route check, not certification that Müller's text states that generality.

The readable publisher sources used for the changed citations are [Chase's paper](https://www.ams.org/journals/tran/1960-097-03/S0002-9947-1960-0120260-3/S0002-9947-1960-0120260-3.pdf) and [Müller's paper](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/40AA7493D7083513CD09EABE68FF54FF/S0008414X00051750a.pdf/the-classification-of-algebras-by-dominant-dimension.pdf).

### Pinned declarations and ownership

Focused object searches covered local endomorphism rings, finite presentations, projective-injective copresentations, dominant/global dimension, marked generator-cogenerators and valued translation quivers, in the pins and through the roadmap search service across main and open heads. The board package index was inspected for competing ownership. No new competing general owner or namespace collision was found. Unchanged ownership results are carried from [r3]; this round does not claim to repeat that full audit.

| Pinned file and line opened | Verified content |
| --- | --- |
| `Mathlib/RingTheory/LocalRing/Defs.lean:30` | IsLocalRing extends Nontrivial; the zero end ring cannot meet the premise. |
| `TauCeti/CategoryTheory/Preadditive/Indecomposable.lean:119` | The faithful-map local-ring criterion takes nonzeroness plus preservation of zero, identity and squares. The identity specialization claimed by the repair satisfies these premises. |
| `TauCeti/Algebra/Module/Injective/Envelope/Basic.lean:172` | exists_linearEquiv identifies two hulls by a linear equivalence commuting with their embeddings. Iteration supplies the new coresolution-independence argument. It does not itself assert the numeric dominant-dimension API. |
| `Mathlib/CategoryTheory/Abelian/Projective/Dimension.lean:265` | Projective dimension takes values in WithBot ℕ∞; :295 identifies ≤n with HasProjectiveDimensionLE; :303 identifies ⊥ exactly with zero objects. These verify the semisimple repair. |

The generic library criterion is now imported rather than re-planned (remaining placement note R02). The general dominant-dimension and valued-quiver APIs remain this roadmap's work. The enlarged finite-supremum theorem generalizes PurityOfBranchLocus's commutative result, which is still explicitly imported rather than rebuilt in that case. No supplier gap is newly introduced.

### Supplier resolutions refreshed

All supplier paragraphs and the 35 Needs lines were read. The cross-roadmap resolver reports no missing roadmap citation. Its one Lean-name lead, PurityOfBranchLocus.globalDimension_le_iff, is not drift: it is explicitly a target at that roadmap's README:168, although absent from its Suggested.lean. It must not be represented as an implemented library declaration.

| Supplier | Passage read at main/current cited folder | Contract resolved |
| --- | --- | --- |
| DerivedModuleAlgebra §1.M.2 | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:2290` | Arbitrary-residue-field Noetherian-local hulls, completion action and Matlis duality. Local Artinian factors are complete. |
| GrothendieckEulerForms Layer 0 | `TauCetiRoadmap/GrothendieckEulerForms/README.md:178` | Exact structures, kernel-cokernel pairs, conflation-exact functors and abelian/split examples. |
| StablePeriodicCurved Layer 0 | `TauCetiRoadmap/StablePeriodicCurved/README.md:154` | Morphism ideals/quotients, relative projectives/injectives and enough objects; no unsupported identification with Ext-trivial maps. |
| GeometricRepresentationCategories §R5.2 | `TauCetiRoadmap/GeometricRepresentationCategories/README.md:361` | Generic comparison of Baer addition with native extClass in an abelian category with HasExt. |
| PurityOfBranchLocus §0.3 | `TauCetiRoadmap/PurityOfBranchLocus/README.md:162` | Commutative global dimension, finite/cyclic criteria and localization bounds. |
| QuiverRepresentations Layer 6/6F | `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:385` | Field-specialized AR theory and basis-arrow quiver; its text assumes an algebraically closed field. The general formula dim_k Irr=b·dim_k F_M specializes to its arrow count. |

The removed sibling backlink introduces no reverse dependency. CountingBundlesAndHallAlgebrasOfCurves §1.2 consumes, rather than owns, this generic Krull–Schmidt theory. The previous audit's specialized quiver/geometry consumers remain consumers. There is no new upward edge, cycle, unowned prerequisite or computational algorithm in the reviewed changes.

## Not verifiable

- **ars:** the source service's attempt at DOI 10.1017/CBO9780511623608 reached the Cambridge landing page without legal readable full text. The new dominant-dimension locator, §VI.5 p. 211, is therefore not source-certified. The unchanged ARS locators for translate, formulas, valued quivers, sharp Harada–Sai and the correspondences retain [r3]'s limitation. This item remains in the missing-reference inventory.
- **General Artinian-base marked correspondence:** the readable Müller Theorem 2 and following remark are field results. The general construction was checked as an argument using this roadmap's owned Matlis theory, not against an accessible exact reference at that generality. The documentation omission is R01.
- **Carried source limitations from [r3]:** ass (Cambridge book page without readable full text); auslander1971 and roiter (no legal copy from the service's bibliographic searches); auslander1974 (publisher HTTP 403); yoneda (no readable legal copy). Their unchanged claims were not re-certified in this incremental round. auslander1966, freyd and tachikawa retain the previous settled uncertified treatment; they were not reopened or renamed.

The initial bibliographic searches for chase and muller failed, but explicit legal publisher PDF fetches succeeded; neither remains a missing source. No source passage was copied into the PR or this report, no paywall was bypassed, and the review is complete without parking for a source.

## Source issues

The Krause issue was rechecked in this round; the Enomoto entry is carried from [r3], whose source passage was unchanged and not reopened. No new source error was established.

- **Misprint** in Kr at Proposition 3.10 proof, p. 8 (Kr lines 395–397): the source places the image of the presentation map in the radical with reversed endpoints; it should be Rad(FP₁,FP₀) and the corresponding source radical; affects the proof.
- **Misprint** in En at Definition A.6(2), p. 25 (En line 1531): the source names the composite dual functor using F after quantifying G; it should be DG; affects a stated result.
