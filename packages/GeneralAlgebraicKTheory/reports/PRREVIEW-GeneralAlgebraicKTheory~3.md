# Review of GeneralAlgebraicKTheory (pull request #1212 at 43e9df6)
**Verdict:** accepted

🤖 AI review. No new findings; all three findings from the previous review are repaired. This verdict means ready for human final approval, not approval or merge by the AI.

Incremental re-review of 38 changed lines since 1cb5cc3. The changes are confined to the Tau Ceti supplier contract, §11.9 and one §12.5 Check in `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md`. `Suggested.lean`, the library pins and toolchain are unchanged. The outside-folder diff is empty and the tracked worktree is clean. Unchanged mathematics is carried forward from [R2], with its limitations, rather than claimed as a new full review.

## Previous findings

- R01 — repaired: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:2552` saturates the pairs; lines 2554–2558 define C₀, its induced conflations, projective-injectives, componentwise weak maps, and the natural weak equivalence sp→id. The six Checks distinguish acyclicity from Euler-class vanishing.
- R02 — repaired: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:49` cites `TauCeti.CategoryTheory.Exact.BaseChange` and the two actual conflation base-change theorems, with the correct pushout/pullback directions.
- R03 — repaired: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:2757` gives the two-term integral complex, f=2id, g=id and h¹=id. Its homotopy equation is 1=2−1; strict idempotence fails by 4−2=2.

## Verified sound

### Repairs and their mathematical dependencies

The changed seeded target §11.9 was checked against the legally fetched June 2003 manuscript, Proposition 11.15, printed pp.22–23: schlichting-2003-11 line 1055 states the hypothesis; line 1059 defines the inflation category; line 1064 gives its Frobenius structure; line 1066 passes to saturation; line 1069 restricts to weak inflations; line 1075 identifies C₀; line 1076 identifies componentwise weak maps; line 1079 constructs the retraction and its natural weak comparison. The new prose retains the source's exact pair-map and projective-injective-preservation hypotheses.

The saturation assertion is also supported by the proof of Theorem 11.10, printed p.22, schlichting-2003-11 line 1033 and line 1036. Mathematically, the kernel of the derived-quotient functor is the thick closure of the original stable acyclic subcategory. Localizing at it gives the same quotient. Its inverse image contains the ambient projective-injectives and is closed under extensions and the relevant kernels/cokernels; taking the usual Frobenius resolutions therefore stays inside it. This justifies the induced exact structure and shows that the replacement preserves the original weak maps.

For C, the weak-cokernel condition is likewise closed under these operations and contains the projective-injectives of the full inflation category. Enough projectives/injectives restrict, and a projective of the restricted category is a retract of one of those resolutions. Hence the new componentwise characterization introduces no extra projectives. Saturation identifies C₀ with the inflation category of F₀, and its inclusion preserves these objects.

The six changed *Needs* inputs at line 2582 resolve: §§11.1 and 11.2 provide the pairs and factorizations; §§5.2 and 5.7 provide objectwise weak S-diagrams and their K-space; §1.1 imports natural-transformation homotopies; the corrected Tau Ceti contract supplies exact base change. In each S-degree, (id,i) is an actual arrow of the weak-map category, even when i is not an isomorphism. Thus the nerve homotopy applies without an additivity assumption or a circular appeal to derived invariance.

Read the dependent §§11.10–11.16. Schlichting's strictification and pullback construction, schlichting-2003-11 line 1111 through line 1133, still apply to the specified replacement. The other seeded target in this dependency chain, §11.12, agrees with Proposition 11.17, pp.23–24, schlichting-2003-11 line 1134: positive homotopy is unchanged and π₀ is injective, not necessarily surjective. The corrected replacement supplies the previously conditional step in §§11.10–11.11.

For §12.5, computed the homotopy in each nonzero degree and checked the signs against native `Homotopy.comm`. In both degrees dh+hd=1; for 2h it equals 2, which is (fg)²−fg=4−2. In all other degrees the maps are zero. Both Euler classes are 1−1=0. Read §§12.6–12.9: they still require rectification to an actual idempotent and retain the image, rather than zero-class, obstruction. The new example does not change their hypotheses or the two corresponding Lean headlines.

The other seeded targets (§§1.4, 5.8, 9.2, 9.6, 9.9, 9.12, 10.2, 10.3, 10.9, 12.2, 12.3, 13.1 and 13.8c) are unchanged. Their computed rows are carried below from [R2]; their source audits were not restarted in this incremental review. No changed locator is marked unverified.

### Gate, elaboration and signatures

The worker's exact-head gate reports every check passing, including build=0. Independently reran the gate; all reported scanner, dependency, metadata, stray-file, dirty and outside-folder counters are zero. That invocation did not print a build counter, so the targeted build was also run separately and succeeded.

Independent dependency-check output:

```text
depcheck: 205 roadmaps, 1465 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. Read all *Needs* lines and the supplier contracts, with detailed rechecking of the changed dependency chain. No new supplier, ownership move or declared gap is introduced.

`lake build TauCetiRoadmap.GeneralAlgebraicKTheory.Suggested` and direct `lake env lean` elaboration of `TauCetiRoadmap/GeneralAlgebraicKTheory/Suggested.lean` both exited 0 with exactly five `sorry` warnings and no other warnings. A scratch copy with `#check @name` elaborated the five theorem declarations, `FiniteChainDomination`, and both local instances (given names only in the scratch copy): eight signature checks. Smallness, triangulation, repleteness, density, full faithfulness, additivity and finite-support binders remain in their required signatures. The domination structure retains its actual maps and homotopy. No binder or generality changed.

The prior one-tactic padding probes and native-carrier audit are carried forward from [R2]: the unchanged five theorems did not close with `simp`, `rfl` or `infer_instance`, and the prior object search found no single pinned lemma supplying their conclusions. No new theorem, definition, instance, import, stand-in or sorry'd data was added. The new finite-domination arithmetic stays in the README. The changed §11.9 has its API and six discriminating Checks; §12.5 now has three computed Checks. Main-branch GrothendieckEulerForms and ClassifyingSpaces were read for the repository's prose and dependency shape.

### Pinned declarations and ownership

Pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, unchanged since [R2]. Four declarations were reopened for the changed claims:

| File at pin | Declaration inspected | Consequence |
|---|---|---|
| `TauCeti/CategoryTheory/Exact/BaseChange.lean:145` | `ExactStructure.conflation_cobaseChange` | A specified pushout of the first map of a conflation preserves its cokernel and conflation property. |
| `TauCeti/CategoryTheory/Exact/BaseChange.lean:169` | `ExactStructure.conflation_baseChange` | A specified pullback of the last map preserves its kernel and conflation property. |
| `Mathlib/Algebra/Homology/Homotopy.lean:125` | `Homotopy`, especially `comm` at line 128 | The first chain map equals the differential/homotopy terms plus the second map; this gives the sign used in §12.5. |
| `Mathlib/CategoryTheory/Idempotents/Karoubi.lean:43` | `Karoubi`, field `idem` at line 49 | Requires equality p≫p=p, not a homotopy between the two maps. |

Fresh roadmap-service object searches for weak inflations, finite domination and conflation base change found no competing owner for the changed construction. The board's package README/Lean search likewise found no separate weak-inflation or finite-domination construction. The corresponding pinned exact-category, homotopy and Karoubi files supply the underlying structures, not this Frobenius-pair replacement. GeneralAlgebraicKTheory remains its owner.

Resolved the relevant open supplier using `roadmaps show`: `TauCetiRoadmap/StableHomotopyKTheory/README.md:229`, §1.10, supplies homotopies from natural transformations without invertible components; line 2173, §6.1, supplies S-diagrams and objectwise weak maps; §6.2 supplies the connective model. These are the actual inputs used through §§1.1, 5.2 and 5.7. The prior scanner's names such as `S.waldhausenStructure`, `S.twoEquiv`, `kSpectrum.pi0K0Equiv`, `BisimplicialSet.diagonalRealizationIso`, `SInvS.pi0Equiv` and the tower aliases resolve in that supplier (§§6.1, 2.18, 4.5 and 7.9); the local dense-class and rectification names resolve in Suggested.lean. They are not missing library declarations.

The service's full cross-roadmap resolution against main and the indexed open heads reports no unresolved cross-roadmap citations. Its fresh run explicitly skipped pinned-library names, so that output was not used to certify the two corrected Tau Ceti names; they were opened at the pin as above. AlgebraicKTheory's A0–A3/A6 sections still identify the separate low-degree ring owner. `TauCetiRoadmap/GeneralAlgebraicKTheoryPartII/README.md:9` explicitly consumes this roadmap's classical comparisons and Layers 10–12. It is a consumer, not a replacement owner or upward prerequisite. The unchanged broad ownership and supplier-boundary audit is carried from [R2].

### Headline coverage

The unchanged headline families are Q/plus/S comparisons; exact and Waldhausen additivity; resolution and dévissage; localization and approximation; cofinality; products and transfers; relative/nonunital excision; projective-line splitting, Nil comparison and the Fundamental Theorem; Bass/nonconnective constructions and uniqueness; Frobenius localization and enhanced derived invariance; dense-subcategory classification and triangulated completion; finite-domination rectification and the Euler obstruction; cone/Bass/Frobenius comparison and negative vanishing; finite-field K-groups and the Artin counterexample.

The five Lean headlines remain dense membership, classification and injectivity (§11.4), finite-model rectification (§12.6), and the Euler criterion (§12.7). The module docstring names the remaining families and their missing Q/S, spectrum, enhanced-derived-model, KU/BU or Karoubi triangulation carriers. Neither repair makes another headline statable at the unchanged pins. The unchanged statability audit is [R2]; the fresh signature and dependency checks above found no regression.

### Adversarial computations for changed statements

Let k be any field, I the contractible complex k --id→ k, and X=k[0]⊕k[1] with zero differential. The rows below are newly computed; the following table carries the unchanged rows from [R2]. Computations test claims and conventions, rather than proving the general theorems.

| Statement | Instances tried | Values computed on each side | Result; change |
|---|---|---|---|
| Supplier contract: pullback | k→k²→k, pull back last map along 0→k | Pullback is k; kernel and first term both k; new dimensions 1→1→0, 1=1+0. | Pass; R02 repaired. |
| Supplier contract: pushout | Same sequence, push out first map along k→0 | Pushout is k; cokernel and last term both k; new dimensions 0→1→1, 1=0+1. | Pass; correct dual direction. |
| §11.9 saturation and quotient | Even-Euler complexes inside bounded k-complexes | k[0] is a summand of k[0]⊕k[1] of Euler 0; thick closure is all objects. Quotient is 0 before and after saturation; all maps are weak in both. | Pass; saturation is more than literal membership. |
| §11.9 saturated Frobenius structure | Ordinary acyclic subpair | I has H*=0 and is projective-injective on both sides of the inclusion; k[0] has H⁰=k and is excluded on both. | Pass; ambient projective-injectives retained. |
| §11.9 triple morphisms | F=id, both structure arrows id_k | With u=v=id, vi=i′u=1. With u=id and v=0, vi=0≠1=i′u. | Pass; commuting-square condition excludes the wrong pair. |
| §11.9 conflations | Diagonal triples of k[0]→k²[0]→k[0] | a- and b-sequences both have dimensions 1→2→1; cokernels of structure arrows are 0→0→0. Both Euler relations give 2=1+1. | Pass; component and quotient tests agree. |
| §11.9 C versus C₀ | Diagonal k[0] and diagonal I | Structure cokernel is 0 in both, hence both in C. Their derived images are k[0] and 0, Euler 1 and 0; only I belongs to C₀. | Pass; R01's original ambiguity excluded. |
| §11.9 acyclicity versus Euler zero | Diagonal X | Euler=1−1=0 but total cohomology dimension=2, not 0. X lies in C and outside C₀. | Pass; Euler-zero wrong model excluded. |
| §11.9 weak inflation iff acyclic cokernel | 0→I and 0→k[0] | Cokernel cohomology is 0 and k respectively; first map is weak, second is not. Euler values 0 and 1 agree with the Checks. | Pass. |
| §11.9 projective-injectives and inclusion | (I,I,id), (0,I,0), (k[0],k[0],id) | First two have contractible a,b and are projective-injective; third has nonzero H⁰=k in each component and is not. C₀→C keeps the first two unchanged. | Pass; no new projectives in restriction. |
| §11.9 weak morphisms | Zero and identity endomorphisms of diagonal k[0] | Component H⁰ maps are (0,0) and (1,1); the former have rank 0, the latter rank 1. Only the identity is weak. | Pass in both components. |
| §11.9 s,p,q and ps=id | Diagonal k[0], diagonal I | p∘s preserves Euler 1 and 0; q∘s=F gives the same 1 and 0; split conflation relation stays 2=1+1. | Pass; exact pair maps retain classes. |
| §11.9 natural sp→id and K-equivalence | c=(0,I,0); diagonal k[0] | sp(c)=0. Comparison 0→I is a quasi-isomorphism (H*=0→0) but not an isomorphism (degree maps 0→k). At k[0] comparison is id, H⁰=1. Induced p,s composites preserve K₀ classes 0 and 1. | Pass; natural weak maps suffice on wSₙ. |
| §11.9 zero and identity pairs | Zero category; pair (A,A) | All triples in the zero category are 0. For (A,A), C₀=C and both derived quotients and K-spaces are 0/contractible. | Pass; killing everything only in the intended case. |
| §12.5 domination and support | V=D=(ℤ --1→ ℤ), f=2id, g=id, h¹=1 | At degrees 0,1: dh+hd=1=gf−id=2−1. Elsewhere both sides are 0; support {0,1}. | Pass; R03 repaired, native homotopy sign agrees. |
| §12.5 strict versus homotopy idempotence | Same integral complex | fg=2id, (fg)²=4id, difference 2id≠0; d(2h)+(2h)d=2id. Euler(V)=Euler(D)=1−1=0. | Pass; fails Karoubi.idem, satisfies homotopy-idempotence. |
| §12.6–12.9 dependence on repaired example | Same contractible V=D | A rectified finite model may be 0: H*=0 on both sides and χ=0 lies in im(K₀A→K₀A♮). Quotient is contractible and V is finitely dominated. | Pass; existence and Euler criteria do not assert fg is strict. |

### Carried adversarial rows

172 unchanged statement rows from [R2] are retained below, each with its computed values and citation. Together with the 17 fresh rows, this gives 189 rows. The old §11.9 and §12.5 rows are replaced above; the conditional results for §§11.10–11.11 now have their missing premise supplied. All 15 seeded targets and all five Lean headlines are represented.

| Statement | Instances and computed values on the two sides | Result; provenance |
|---|---|---|
| 1.1 | Terminal category: π₀=1, higher π=0. Two discrete objects: π₀=2, and the two-point functor has no constant homotopy. Empty realization has 0 points. | Pass; nonemptiness/π₀ retained.  [R2]. |
| 1.2 | fib(id_X) is contractible; fib(X→*)=X. On ΩS¹ path reversal sends winding 1 to −1; reversing twice gives 1. | Pass; sign is retained.  [R2]. |
| 1.3 | Constant point bisimplicial set: both realizations are *. Subdivision of Δ¹ is an interval, with the same two endpoints. | Pass.  [R2]. |
| 1.4 | Identity functor: each relevant comma category has a terminal/initial object, hence π₀=1 and higher π=0; comparison is id. | Pass; imported.  [R2]. |
| 1.5 | Perfect subgroup 1: plus leaves π₁ unchanged. For A₅ with P=A₅, quotient π₁=1 while H₀=ℤ on both sides. | Pass; not an arbitrary quotient.  [R2]. |
| 1.6 | Free ranks: monoid ℕ completes to ℤ, 2−3=−1. An abelian group already completes to itself; zero category gives 0. | Pass.  [R2]. |
| 1.7 | C=0: every K-level is a point and all integer π vanish. For vector spaces π₀=ℤ, whereas raw level zero is not the corrected Ω-model. | Pass.  [R2]. |
| 1.8 | Sphere interchange in degrees (1,1) has determinant −1; (1,2) gives +1; (0,2) gives +1. | Pass.  [R2]. |
| 2.1 | Zero category Q has one object and one arrow. In C, spans representing 0←k→k exist; an isomorphism-only model would miss the resulting generator. | Pass.  [R2]. |
| 2.2 | In the zero category all universal structure maps are id₀; both sides of every composition square are id₀. | Pass on the degenerate instance.  [R2]. |
| 2.3 | Skeleton {kⁿ} and C: dimensions 0,1,2 are unchanged and the class of k is 1 in both K₀ groups. | Pass; no universe equality assumed.  [R2]. |
| 2.4 | The sequence k→k²→k gives loop relation 2=1+1; for zero category both π₁BQ and K₀ are 0. | Pass.  [R2]. |
| 2.5 | K₀(C)=π₁BQC=ℤ; K₀(0)=0. π₀BQ is instead a singleton, excluding the off-by-one definition. | Pass.  [R2]. |
| 2.6 | C×C gives K₀=ℤ², generator (k,0)=(1,0). Passing to opposites preserves that vector; zero product has K=0. | Pass.  [R2]. |
| 3.1 | ℤ→ℤ/2 sends the rank-one free module to rank one, despite Tor₁(ℤ/2,ℤ/2)=ℤ/2. Split retractions still compose to id. | Pass; no flatness added.  [R2]. |
| 3.2 | Zero ring: GL∞=1 and K₀=0. For k×k, K₀=ℤ²; rank alone would lose (1,0). | Pass.  [R2]. |
| 3.3 | e₁₂(a)e₁₂(b)=e₁₂(a+b); at a=b=1 over 𝔽₂ both sides are I. Stabilization appends an identity block. | Pass; imported algebra.  [R2]. |
| 3.4 | E₂(𝔽₂)=S₃ has commutator A₃≠S₃. In rank three [e₁₃(1),e₃₂(1)]=e₁₂(1). | Pass; stable range essential.  [R2]. |
| 3.5 | Corner k→M₂k has e=diag(1,0), e²=e. eM₂k is projective; h=0 gives e=0 and zero functor. | Pass.  [R2]. |
| 3.6 | Above quotient 0 the extension k→k→0 corresponds to k; its automorphism group is k×, not 1. | Pass; fibre not discretized.  [R2]. |
| 3.7 | Extensions k→k²→k combined over k give kernel dimension 2 and middle dimension 3: 3=2+1. Unit extension has kernel 0. | Pass.  [R2]. |
| 3.8 | Pullback of k→k²→k along 0→k is k→k→0. Its map to the original has quotient 0→k, not k→0. | Pass; source typo avoided.  [R2]. |
| 3.9 | Split extension over k is translated from kernel 0; group-completed action quotient has π₀=1. Identity homotopic to doubling gives x=2x, hence x=0. | Pass.  [R2]. |
| 3.10 | At quotient 0 the localized fibre is group completion of C: π₀=ℤ. Thus a point fibre would incorrectly give 0. | Pass.  [R2]. |
| 3.11 | Zero category localized total space is *. For C, total is contractible although its quotient-zero fibre has π₀=ℤ. | Pass; total and fibre distinguished.  [R2]. |
| 3.12 | C: π₀ΩBQC=ℤ=π₀B(S⁻¹S), [k]↦1. Projectives over k×k give ℤ² on both sides. | Pass.  [R2]. |
| 3.13 | Free modules over k×k have image {(n,n)} in ℤ²; (k,0) has complement (0,k) and sum rank (1,1). | Pass; positive cofinality not K₀ surjectivity.  [R2]. |
| 3.14 | Over 𝔽₅, inverse transpose takes scalar 2 to 3; the inverse/opposite adapter returns 3⁻¹=2. | Pass; normalized K₁ map fixes 2.  [R2]. |
| 3.15 | k×k has K₀=ℤ² but BGL⁺ is connected. A product description needs its actual K₀ factor, not a single rank copy ℤ. | Pass.  [R2]. |
| 4.1 | Split 3×3 diagram with all generating corners k: middle ranks are 1,2,1 in each short exact row; 2−1−1=0. | Pass.  [R2]. |
| 4.2 | Object k→k²→k has evaluation dimensions (1,2,1); direct sum with itself gives (2,4,2), preserving 4=2+2. | Pass; new exact structure on supplied carrier.  [R2]. |
| 4.3 | Extension object above maps to (1,1) in K₀(C)²; total class 2 equals 1+1. | Pass.  [R2]. |
| 4.4 | ℤ/2 has resolution ℤ --2→ℤ→ℤ/2; Euler class 1−1=0 in G₀(ℤ), matching its torsion class. | Pass.  [R2]. |
| 4.5 | pdℤ(ℤ/2)=1, while pd_D(k)=∞ (successive syzygies k). Both have projective covers; only the former has finite resolution. | Pass; repaired refinement retained.  [R2]. |
| 4.6 | For a field resolution length is 0 and K₀ map ℤ→ℤ is id. Over ℤ the torsion class resolves to 1−1=0. | Pass.  [R2]. |
| 4.7 | In k², lines ke₁ and ke₂ have intersection 0 and sum k²: 1+1=0+2. Equal lines give 1+1=1+1. | Pass; both intersection routes agree.  [R2]. |
| 4.8 | D has a two-step simple filtration: [D]=2[k] in G₀(D)=ℤ; the simple class generates G₀, not the free generator. | Pass.  [R2]. |
| 4.9 | Serre subcategory 0: quotient is identity and the model fibre reduces to QB with π₁=K₀(B). Serre subcategory B: quotient category is 0. | Pass.  [R2]. |
| 4.10 | For quotient object 0 and kernel in the Serre category, kernel functor returns that kernel; identity presentation has kernel 0. | Pass.  [R2]. |
| 4.11 | Identity epimorphism k→k has kernel 0; k²→k has kernel k. The kernel invariant records 0 versus 1. | Pass.  [R2]. |
| 4.12 | Identity quotient model already is epimorphic; choosing it again leaves kernel 0 and induced quotient id. | Pass on identity case.  [R2]. |
| 4.13 | Two finite subobjects ke₁,ke₂ admit common sum k², dimensions 1,1→2; a single intersection would have dimension 0 and fail enlargement. | Pass.  [R2]. |
| 4.14 | DVR O with fraction field F: K₀(k)→K₀(O) is 1↦0, K₀(O)→K₀(F) is 1↦1; boundary of uniformizer is 1. | Pass.  [R2]. |
| 4.16 | C over 𝔽₃: stable additive automorphisms abelianize to 𝔽₃×=C₂; Q-theoretic K₁ is C₂. Zero category gives 0. | Pass; countable/faithful stable description scoped.  [R2]. |
| 4.17 | T=id: relative K₀=0, ker δ=K₁. For finite free ℤ→ℚ, diag(2,1/2) has determinant 1, so K₁ class 0 although the matrix need not lift. | Pass; fullness not silently used.  [R2]. |
| 5.1 | In vector spaces with iso weak maps, k→0 cannot factor as mono then iso (1≤0 fails). For complexes the mapping cylinder supplies factorization. | Pass; extra axiom explicit.  [R2]. |
| 5.2 | Flag 0⊂k⊂k² has increments (1,1); an objectwise monic diagram with relative latching k→0 is not a cofibration. | Pass.  [R2]. |
| 5.3 | Natural isomorphism id⇒id induces equal endpoint maps; on rank-one object both loops represent 1. | Pass; supplier alias.  [R2]. |
| 5.4 | At zero vertex π₁Fᵧ=ℤ→π₁δC=ℤ is id; a contraction to a point would give ℤ→0. Quotient dimension stays 1 during pushout. | Pass; prior R01 repaired.  [R2]. |
| 5.6 | Additivity gives π₁δS₂C=ℤ²→π₁(δC×δC)=ℤ², (1,1)↦(1,1). | Pass; supplier alias.  [R2]. |
| 5.7 | Object loop k represents 1 in K₀=ℤ; zero object represents 0. Taking unlooped realization would instead give one component. | Pass.  [R2]. |
| 5.8 | Edgewise subdivision sends [0] to [1]; zero diagonal entries stay zero, and a one-step object k retains class 1. | Pass.  [R2]. |
| 5.9 | C has K₀ from S=ℤ and from Q=ℤ; the comparison sends the k-loop 1 to 1, not −1. | Pass.  [R2]. |
| 5.10 | k→k²→k induces 2=1+1 on K₀. A natural map k→0 alone would give 0≠1 and has no such additivity assertion. | Pass.  [R2]. |
| 5.11 | F=id: relative path construction is contractible. F:0→C: homotopy fibre of K(0)→K(C) is ΩK(C); F:C→0 gives K(C). | Pass.  [R2]. |
| 5.12 | Mapping cylinder of id_{k[0]} retracts to k[0]; its homology is k in degree 0, 0 elsewhere, matching the target. | Pass; no functorial choice assumed.  [R2]. |
| 5.13 | Empty finite poset yields initial/zero latching object; for a two-element chain the second latching map is the single structure arrow. | Pass; latching ranks 0 then 1.  [R2]. |
| 5.14 | Constant identity weak string contributes a contractible extra nerve direction: π₀=1 and higher π=0; forgetting it fixes object rank 1. | Pass.  [R2]. |
| 6.1 | With v=w=isomorphisms, trivial cofibrations are isomorphisms: comparison is id, rank 1↦1. | Pass.  [R2]. |
| 6.2 | Identity exact functor gives a contractible relative path object on both models, all homotopy groups 0. | Pass.  [R2]. |
| 6.3 | v=w implies acyclic subcategory consists of v-zero objects; fibre K is 0 and K(C,v)→K(C,w) is id. | Pass.  [R2]. |
| 6.4 | Identity approximation lifts 0⊂k⊂k² without change: subquotient dimensions (1,1) on both sides. | Pass.  [R2]. |
| 6.5 | Cylinder of zero complex is zero; cylinder of id_{k[0]} has Euler class 1+1−1=1. | Pass.  [R2]. |
| 6.6 | Empty boundary extension supplies a zero latching object; extending a constant k simplex preserves Euler class 1. | Pass on boundary/constant cases.  [R2]. |
| 6.7 | Identity approximation's comma category has the identity object; its realization has π₀=1 and higher π=0. | Pass.  [R2]. |
| 6.8 | Identity functor satisfies App1/App2 and induces id on K₀=ℤ; zero functor C→0 fails reflection at k→0. | Pass; excludes false equivalence ℤ≅0.  [R2]. |
| 6.9 | Degree-zero k maps to complex k[0], Euler 1. Contractible k --id→ k maps to Euler 1−1=0. | Pass.  [R2]. |
| 6.10 | Single-vertex poset uses one factorization; empty poset has unique diagram and zero latching object. | Pass; no uniform functorial factorization used.  [R2]. |
| 6.11 | Identity functor again gives contractible approximation commas; zero functor would send class 1 to 0 and fails the assumptions. | Pass.  [R2]. |
| 6.12 | Identity Frobenius-pair map preserves the complex k[0] and Euler 1; existential factorization suffices, no chosen global cylinder required. | Pass.  [R2]. |
| 6.13 | For identical weak classes, acyclic-cofibration comparison acts as id on the sole zero-object component; π₀=1 on both nerves. | Pass.  [R2]. |
| 6.14 | Nested classes v=v give fibre 0→K(C)→K(C), so kernel and image agree at 0. | Pass.  [R2]. |
| 6.15 | Euler p: k[0]→0 compares 1≠0, hence not weak; k[0]⊕k[1]→0 compares 0=0, hence weak though not a quasi-isomorphism. | Pass.  [R2]. |
| 6.16 | For G=ℤ, two increments (1,−1) have middle face 0; degeneracy inserts 0. Resulting BG has π₁=ℤ, π₀=1. | Pass on algebra; primary TT proof unavailable.  [R2]. |
| 6.17 | Euler quotient ℤ→ℤ has kernel 0 and discrete target ℤ; zero-Euler complexes give precisely component class 0. | Pass on this instance.  [R2]. |
| 6.18 | Finite free k×k modules give diagonal ℤ↪ℤ², quotient ℤ via (a,b)↦a−b. Positive cofinality does not assert K₀ surjectivity. | Pass.  [R2]. |
| 6.19 | Same free category has K₀=diagonal ℤ; replacing E′ by all projectives yields ℤ². Contractible complex on any retained object has Euler 0. | Pass; completion correction essential.  [R2]. |
| 7.1 | Flags with increments (1,2),(2,1) give tensor-grid increments (2,1,4,2), total 9=3·3. | Pass; direct sum would give (3,2,4,3).  [R2]. |
| 7.2 | On K₀(C), [k²]·[k³]=6; representatives at successive S-levels still give 6. | Pass.  [R2]. |
| 7.3 | Associating k²⊗k³⊗k gives rank 6 in either parenthesization; the natural isomorphism preserves class 6. | Pass.  [R2]. |
| 7.4 | Tensor of zero with k is 0; joint pushout product of 0→k and 0→k is 0→k, a cofibration. | Pass.  [R2]. |
| 7.5 | Odd/odd interchange gives xy=−yx, hence 2x²=0; even/odd gives xy=yx. It does not force x²=0 when 2-torsion exists. | Pass.  [R2]. |
| 7.6 | Tensor unit [k]=1; [k²]·1=2, [0]·2=0. For k×k, (1,0)(0,1)=(0,0). | Pass.  [R2]. |
| 7.7 | Degree-two extension E/k: transfer(1)=2; transfer(res(3)·1)=6=3·2. | Pass.  [R2]. |
| 7.8 | Purely inseparable degree-p E/F: E⊗F E has one residue field E of length p, so sum= p·id. Separable quadratic self-base-change has two length-one factors, sum=2·id. | Pass; multiplicities retained.  [R2]. |
| 8.1 | Relative K(id)=0; relative K(R→0)=K(R). On components identity has kernel 0. | Pass.  [R2]. |
| 8.2 | R=k×k→k: relative fibre has K₀=ℤ from the second factor; it is not the fibre for the other projection with its marked map. | Pass; map/ideal retained.  [R2]. |
| 8.3 | Unitization of unital k is ℤ×k: (1,0) maps to (1,1), augmentation kernel to (0,k). I=0 gives identity augmentation and zero fibre. | Pass.  [R2]. |
| 8.4 | Identity clutching α=1 yields equal chart coordinates and the trivial patch. Replacing u by α=u⁻¹ reverses the boundary: δ(u⁻¹)=−δ(u). | Pass; same ordered charts used.  [R2]. |
| 8.5 | Identity Milnor square gives K₁(A)→K₁(A)² diagonally, followed by (x,y)↦x−y; (x,x) maps to 0. | Pass.  [R2]. |
| 8.6 | Same square has boundary 0, kernel of difference=diagonal and K₀ pullback map diagonal; exact at all four interior terms. | Pass.  [R2]. |
| 8.7 | T=id: triple (P,id,P) has difference [P]−[P]=0 and relative fibre is 0. Nonzero difference cannot represent that triple. | Pass; supplier presentation retained.  [R2]. |
| 8.8 | Ideal I=0 gives ker(K₀ℤ→K₀ℤ)=0; the augmented patch is the identity square. | Pass.  [R2]. |
| 8.9 | Unital ideal k in k×k: relative K₀ of projection is ℤ=K₀(k); zero ideal gives 0=0. | Pass.  [R2]. |
| 8.10 | I=0 satisfies excision with 0 groups; unital direct-factor ideal has both relative spectra K(k). These do not justify excision for arbitrary ideals. | Pass; hypotheses not dropped.  [R2]. |
| 8.11 | Multiplication by uniformizer on O has kernel 0 and cokernel k: index=1−0=1. Identity has index 0−0=0. | Pass.  [R2]. |
| 8.12 | In a DVR, ∂(π²u)=2 and ∂(π⁻¹)=−1; normalized valuations give 2 and −1 as well. Works in equal and mixed characteristic. | Pass.  [R2]. |
| 8.13 | Right multiplication by rank r=2: ∂([π]·2)=2=∂[π]·2. Moving an odd factor across [π] instead adds a minus sign. | Pass.  [R2]. |
| 9.1 | Line twists u₀,u₁,u₂ have (H⁰,H¹)=(k,0),(0,0),(0,k); χ=1,0,−1. | Pass; gluing direction distinguishes twists.  [R2]. |
| 9.2 | Twisted Koszul line sequence gives χ(O(n))−2χ(O(n−1))+χ(O(n−2))=(n+1)−2n+(n−1)=0. | Pass including n=0,1.  [R2]. |
| 9.3 | O(−2) has H¹ dimension 1; twisting by 1 gives O(−1) with H¹=0, and by 2 gives O with H⁰=k. | Pass; eventual regularity, not initial regularity.  [R2]. |
| 9.4 | O(1): evaluation k²⊗O→O(1) is onto with kernel O(−1). O(−1) has H⁰=0 and is not generated by sections. | Pass.  [R2]. |
| 9.5 | For O(1), T₀=k² and T₁=k; resolution 0→O(−1)→O²→O(1)→0 has ranks 1→2→1 and χ 0→2→2. | Pass; kernel twist may not be regular.  [R2]. |
| 9.6 | For O, condition O(−n) regular holds for n≤0 and fails at n=1 since regularity requires H¹(O(−n−1))=0: H¹(O(−2))=k. Filtration decreases with n. | Pass; source's opposite parameter accounted for.  [R2]. |
| 9.7 | Over k, K₀(P¹)=ℤ² with basis [O],[O(−1)]; O(1)=2[O]−[O(−1)], coefficients (2,−1). | Pass.  [R2]. |
| 9.8 | Nil(k): (k,0) gives k[t]/t and resolution t:k[t]→k[t]. ν=1 is not nilpotent and k[t]/(t−1) is not t-power torsion. | Pass.  [R2]. |
| 9.9 | Zero endomorphism's chart resolution has equal projective terms P[t], hence Euler [P[t]]−[P[t]]=0. | Pass.  [R2]. |
| 9.10 | Zero torsion module admits the zero resolution; its resolution fibre has π₀=1, higher π=0. | Pass on zero case.  [R2]. |
| 9.11 | Laurent rank-one lattices t^a k[t], t^b k[t] have common over-lattice t^min(a,b)k[t]; a=0,b=1 gives k[t]. | Pass; finite refinements suffice.  [R2]. |
| 9.12 | Over k, chart restriction K₀(P¹)=ℤ²→ℤ sends (a,b)↦a+b; kernel generated by (1,−1). | Pass.  [R2]. |
| 9.13 | k[t]→k[t,t⁻¹]: ∂[t]=1 in K₀(t-torsion)=ℤ; its image in K₀(k[t]) is 1−1=0. | Pass; localization exact.  [R2]. |
| 9.14 | Nil object (P,ν) has characteristic resolution P[t] --(t−ν)→P[t]; image class in K₀(k[t]) is 0. | Pass.  [R2]. |
| 9.15 | Over k, reduced Nil₀=0=NK₁(k). Over D, 1+εt has inverse 1−εt, evaluation 1 and nontrivial determinant, giving a nonzero NK₁ class. | Pass; reduced term required.  [R2]. |
| 9.16 | For k, K₁(k[t,t⁻¹])=k×⊕ℤ, with t↦(1,1); both NK₁ terms vanish. For D the preceding Nil class prevents deleting NK. | Pass.  [R2]. |
| 9.17 | x=[k²] gives ∂{t,x}=2; replacing t by t⁻¹ gives −2; x=0 gives 0. | Pass; first-factor sign fixed.  [R2]. |
| 10.1 | Γk is flasque and K₀=0; k has K₀=ℤ with 1≠0 and is not flasque. Zero ring swindle gives 0=0. | Pass.  [R2]. |
| 10.2 | Constant functor ℤ has NF=LF=0; 1↦(1,1)↦1−1=0. Using sum would give 2. | Pass.  [R2]. |
| 10.3 | Iteration n=0 at k gives ℤ; n=1 gives 0. At k×k the values are ℤ² and 0. | Pass; no natural subtraction ambiguity.  [R2]. |
| 10.4 | For k, LK₁=ℤ=K₀, LK₀=0=K₋₁. A constant functor has N=L=0 under either iteration order. | Pass.  [R2]. |
| 10.5 | At k, j=0: ℤ=ℤ⊕0⊕0⊕0; j=1: k×⊕ℤ=k×⊕ℤ⊕0⊕0. | Pass.  [R2]. |
| 10.6 | K₀(M₂k)=ℤ via a minimal projective; [M₂k]=2. Corner map is ×1 under Morita, unital scalar inclusion is ×2; n=0 would give 0. | Pass; finite nonempty index retained.  [R2]. |
| 10.7 | Zero ring has every negative group 0. Cone ring has 0 groups; omitting cone vanishing would permit an extra uncontrolled summand. | Pass on specified axioms.  [R2]. |
| 10.8 | Cone suspension identifies K₋₁(k)=K₀(Σk)=0; for ΣΓk both sides also vanish. Comparison on K₀(k) fixes 1. | Pass; normalization part of uniqueness.  [R2]. |
| 10.9 | Identity Milnor square in degree −1 is diagonal/difference on the same group: (a,a)↦0; at k all groups are 0. | Pass.  [R2]. |
| 10.10 | Bass spectrum of k has π₀=ℤ, π₋₁=0; zero ring yields zero spectrum. | Pass on field/zero cases.  [R2]. |
| 10.11 | k: connective and Bass π₀ both ℤ, both positive K₁=k×, Bass π₋₁=LK₀=0. | Pass.  [R2]. |
| 10.12 | I=k as direct-factor ideal: nonpositive relative group in degree 0 is ℤ; negative groups 0. I=0 gives 0 in every tested degree. | Pass.  [R2]. |
| 10.12a | Evaluation on k[t] gives [k]−0=1; on t-killed k gives [k]−[k]=0. Omitting the kernel term incorrectly gives 1. | Pass.  [R2]. |
| 10.13 | Field and DVR have finite global dimensions 0 and 1; negative K-groups vanish in both cases. D is not finite-global-dimensional, so the hypothesis excludes it. | Pass; no singular vanishing inferred.  [R2]. |
| 11.1 | Contractible k --id→k is projective-injective in the split-complex Frobenius category and maps to 0; k[0] has homology k and derived class 1. | Pass.  [R2]. |
| 11.2 | Identity k[0] factors through its mapping cylinder with weak comparison on homology k→k=id; the zero complex factorizes through zero. | Pass.  [R2]. |
| 11.3 | Even-Euler subcategory A⊂T: stable classes form ℤ/2; χ(k)=1, χ(k²)=0 mod 2, and 1+1=0. | Pass; density supplies inverses.  [R2]. |
| 11.4 membership | For even-Euler A, k is outside and 1∉2ℤ; k² is inside and 2∈2ℤ. Both directions agree. | Pass; Lean target 1.  [R2]. |
| 11.4 classification | H=0 gives zero-Euler objects, containing k⊕k[1] with 1−1=0; H=ℤ gives all T; H=2ℤ gives parity objects. | Pass; Lean target 2.  [R2]. |
| 11.4 injectivity | K₀(A)=2ℤ↪ℤ has kernel {0}; represented generator maps to 2, not 0. Zero subcategory alone is not dense in T. | Pass; Lean target 3.  [R2]. |
| 11.4a | Idempotent diag(1,0) on free rank-two k×k data splits after Karoubi completion; p²=p. Zero and identity idempotents split to 0 and the original object. | Pass; no homotopy idempotent substitution.  [R2]. |
| 11.5 | dim T(k)=ℵ₀ and dim(k⊕T(k))=ℵ₀. Shift t(k) has dimension 1, so k⊕t(k) has 2≠1. | Pass; corrected swindle.  [R2]. |
| 11.6 | Zero setup gives IK₀=0 and all negative groups 0. A finite-free k×k model has completion-corrected IK₀=ℤ², not just diagonal ℤ. | Pass.  [R2]. |
| 11.7 | Identity exact model sequence has quotient 0, connecting map 0 and identical kernel/image. Completion obstruction vanishes in this case. | Pass.  [R2]. |
| 11.8 | Split functors id→id⊕id→id induce x↦2x=x+x in every group; zero functor gives 0. | Pass.  [R2]. |
| 11.10 | Identity replacement, b′=b and identity map: choose c₃=c, both comparison maps id, cone 0. | Pass; prior condition discharged by repaired R01.  [R2]. |
| 11.11 | Identity enhanced map induces id on K₀=ℤ; zero functor would send 1↦0 and is not a derived equivalence. | Pass; replacement now specified.  [R2]. |
| 11.12 | Dense even-Euler inclusion gives K₀ image 2ℤ, positive groups unchanged; it is not a surjection ℤ←2ℤ at degree 0. | Pass.  [R2]. |
| 11.13 | Equal weak classes yield zero acyclic fibre and identity K-map; nested saturation changes no weak maps. | Pass.  [R2]. |
| 11.14 | Finite free k×k: connective K₀ is diagonal ℤ, completed IK₀ is ℤ²; completion adds (1,0). | Pass; degree-zero distinction retained.  [R2]. |
| 11.15 | Sequence 0→A→A gives zero boundary and identity maps in every degree; no bare triangulated functor is substituted. | Pass.  [R2]. |
| 11.16 | For C with its usual exact structure, completion changes nothing and IK₀=ℤ=K₀(C); zero category gives 0. | Pass.  [R2]. |
| 12.1 | A=0: quotient U/A=U; A=U: every identity factors through A and quotient is zero. For finite-rank summands, two supports {0},{1} refine to {0,1}. | Pass.  [R2]. |
| 12.2 | Right unilateral shift has kernel 0 and cokernel k: cokernel-minus-kernel=1. Reverse shift gives 0−1=−1. | Pass; orientation explicit.  [R2]. |
| 12.3 | Cone category is flasque: K₀(CA)=0. For A=P(k), first negative group K₀((SA)♮)=0. | Pass.  [R2]. |
| 12.4 | k and M₂k: Bass K₋₁=0 and cone K₀ of suspension=0; Morita identifications preserve 0 and [minimal projective]=1 in degree 0. | Pass.  [R2]. |
| 12.6 | Degree-zero strict projector p=diag(1,0) has p²=p and rank 1. Top (n,p)=(0,1),(1,1),(2,0) gives 1,0,0. Euler ranks 2,3 give −1. | Pass; Lean rectification target and parity.  [R2]. |
| 12.7 | Free k×k category: (k,0) has χ=(1,0)∉diagonal ℤ, hence cannot return; its identity two-term complex has χ=0 and returns to zero. | Pass in both directions; Lean Euler target.  [R2]. |
| 12.8 | A=0: quotient contractible iff contractible, equivalently dominated by 0. A=U: quotient is zero and every bounded U-complex dominates itself. | Pass at both extremes.  [R2]. |
| 12.9 | A=0: H={0}, fibre is contractible complexes with K=0. A=U: H=im(K₀U→K₀(U♮)), quotient K=0 and fibre recovers K(U) through the restricted completion. | Pass with the image/preimage convention.  [R2]. |
| 12.10 | P(k): Bass and Frobenius π₀=ℤ, π₋₁=0; normalized cone boundary sends the shift defect to +1 in degree 0. | Pass.  [R2]. |
| 12.10a | Zero exact category has zero unbounded derived category. Bounded k[0] embeds with Hom(k[0],k[0])=k and identity 1, not zero. | Pass.  [R2]. |
| 12.11 | Noetherian abelian finite-dimensional k-spaces: IK₋₁=IK₋₂=0. The roadmap explicitly excludes general all-negative abelian vanishing; it does not set Neeman's nonzero K₋₂ to 0. | Pass on scoped examples.  [R2]. |
| 13.1 | I=0: fibre of id is 0. I=ℤ: unitization ℤ×ℤ, fibre of first projection is the second Kᴮ(ℤ). | Pass.  [R2]. |
| 13.2 | Corner e=diag(1,0): e²=e and eB is a summand. Zero homomorphism gives e=0, hence zero induced map. | Pass.  [R2]. |
| 13.3 | Unitization coordinates (z,c)=(1,0),(0,1),(1,1) give diag(0,1),diag(1,0),I₂; Morita corner sends generator 1 to 1. | Pass.  [R2]. |
| 13.4 | Finite product k×k gives π₀=ℤ², not ℤ; filtered union of identity copies k has colimit ℤ=K₀(k). No infinite-product assertion used. | Pass.  [R2]. |
| 13.5 | M₁k→M₂k→⋯ via corners gives ℤ --id→ℤ --id→⋯, colimit ℤ. Using scalar diagonals would incorrectly give multiplication maps. | Pass.  [R2]. |
| 13.6 | Identity enhanced model map fixes rank 1. The later p=5 pair has equivalent triangulated stable categories but candidate K₄ exponents 25 and 5. | Pass; bare equivalence does not supply enhancement.  [R2]. |
| 13.7 | Identity relative map has fibre 0 and transfer degree 1, so both compatibility composites are id on absolute rank and 0 on relative rank. | Pass.  [R2]. |
| 13.8 | For ℤ/p² and 𝔽_p[ε]/ε², the simple module has stable endomorphism field 𝔽_p and suspension again simple; free length-two module becomes 0. | Pass; includes p=2,3 for this comparison.  [R2]. |
| 13.8a | BU: π₂=ℤ, π₄=ℤ; ψ^q acts by q and q². Trivial group's completion is ℤ and KU¹(*)=0. | Pass on normalization.  [R2]. |
| 13.8b | q=2: q−1=1, q²−1=3, giving fibre π₁=0, π₃=C₃. At q=3, rank-zero GL₁ character is sign−1. | Pass on these consequences; Quillen primary proof unread.  [R2]. |
| 13.8c | q=2 gives K₁=0,K₃=C₃,K₄=0; q=4 gives K₁=C₃; q=5 gives K₃=C₂₄ and K₄=0. | Pass; q=1 is not an allowed field cardinality.  [R2]. |
| 13.9 | Cartan map on K₀ sends 1↦2, cokernel C₂. Residue scalar extension sends 1↦1 and would incorrectly give cokernel 0. | Pass.  [R2]. |
| 13.9a | At p=5, asserted groups C₂₅ and C₅² both have order 25 but exponents 25 and 5. p=3 is outside this numerical target. | Consistent with corrected secondary source; primary calculations not certified.  [R2]. |
| 13.10 | Since K₄(𝔽₅)=0 and K₃(𝔽₅)=C₂₄ has no 5-torsion, the two Cartan kernels retain the asserted exponents 25 and 5. | Conditional calculation correct; same primary-source limit.  [R2]. |

## Not verifiable

No changed source assertion remains unread. The following source-access limits are carried from [R2], not new failures or claims of primary-source certification:

- `quillen-3`: the prior attempt obtained the Annals bibliographic page, not the 1972 paper. Theorem 8 and §§2–11's primary finite-field proof remain uncertified. The inherited §13.8c values use the prior Weibel cross-check.
- `evens-friedlander`: the prior DOI attempt obtained the JSTOR landing page only. The §13.9a numerical input was checked against secondary discussion, not its primary proof.
- `aisbett-lluis-puebla-snaith`: the prior DOI attempt obtained the AMS Memoirs landing page only. The dual-number calculation and original p=3 error location retain that limit.
- `thomason-trobaugh-8`: the previous institutional-PDF attempt did not produce readable text. This round independently checked the repaired replacement, its approximation continuation and cofinality in Schlichting's accessible proof; it does not certify the TT proof locators.

No source manifest or pull-request file was edited. There is no new missing-source request. The incremental verdict uses the supplied rule permitting completion with recorded source-access limitations.

## Source issues

No new source issue was found in the changed locators. The existing errata from [R2] remain recorded here with their original scope:

- **Misprint** in weibel-1 at IV Lemma 7.7 proof, printed p.IV.63: the source says the final natural-map arrow goes from E to φ*E; it should be φ*E to E, as in the statement; affects the proof.
- **Gap** in schlichting-2003-11 at Appendix A.10 proof, printed p.26: the source says apply the finite-poset hypothesis to the discrete category of all connected components; it should be applied to two chosen components at a time, since there may be infinitely many; affects the proof.
- **Error** in schlichting-2002-12 at §1.6, printed p.114: the source says the displayed finite-ring K₃ distinction applies to every odd prime; it should be restricted to p>3 in this argument; affects the proof; corrected in print at Dugger–Shipley, Remark 4.9, p.156.

[R2]: PRREVIEW-GeneralAlgebraicKTheory~2.md
