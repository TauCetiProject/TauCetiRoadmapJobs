# Review of RootSystems (pull request #1278 at 7c91bd8)
Folder: `TauCetiRoadmap/RepresentationTheory/RootSystems/`
**Verdict:** needs changes

:robot: Independent AI review by Codex. Four findings: two P2 and two P3. No counterexample was found to the nine main acceptance statements under their elaborated hypotheses. The supplied gate passes. Ownership and remaining duplication prevent acceptance. No pull-request file was changed; final `git status --short` and `git diff --exit-code` are clean.

### Previous findings, checked first

The comparison is with the supplied review at `13a294c`, finding by finding, followed by a full review of all three files. Quotations below are from the revised files unless identified as previous finding titles. No repair report marking a finding “not actionable in this package” was supplied or found among this package's reports. The separate report for pull request #1196 is not a repair disposition for #1278.

| Previous finding | Passage at this head and disposition |
|---|---|
| R01, impossible realization carrier | **Repaired.** `Suggested.lean:18`: “root indices `Fin t.numRoots` and coordinate indices `Fin t.rank`.” The theorem at 111 uses the native rational model. A₁ has 2 root indices and 1 coordinate. |
| R02, lowering without finiteness | **Repaired.** `README.md:128`: “requires finite root indices”; the local theorem is gone. The negative control at 456–459 retains height 2 increasing to 3 in the infinite system. |
| R03, six admitted data definitions | **Repaired.** `Suggested.lean:36` gives the sole new definition a real body. The other data are native; no admitted definition or instance remains. |
| R04, replanning supplied theory | **Largely repaired, with a residual defect.** `README.md:19`: “These are not additional construction targets.” Classification, chambers, inversions and abstract word theory are now supplier contracts. The remaining Cartan-transport duplication is R02 below. |
| R05, unmarked Coxeter structure | **Repaired.** `Suggested.lean:85`: `Function.Injective (TauCeti.weylCoxeterHom P b)`. This fixes the generators through the native homomorphism, whose marking is explicit at `README.md:153–154`. |
| R06, two geometric-faithfulness owners | **Not repaired.** `README.md:32–33`: “places the general arbitrary-index geometric sign, faithfulness and integral comparison results here”. EnriquesSurfaces still independently constructs the same general sign/faithfulness theory; R01 below. |
| R07, absent statable headlines | **Repaired.** `Suggested.lean:41,50,59,66` now states rank-two positivity, signs, faithfulness and integral comparison. The other five headlines appear at 81,89,101,111,119. |
| R08, nine padding declarations | **Repaired in the main module.** The old nine declarations are absent. The surviving duplicate companion is separately addressed by R03 below. |
| R09, claim-level shape and Checks | **Mostly repaired.** Seven numbered subsections have Checks and Needs; each layer has Examples and Dependencies. `README.md:299`: “Humphreys assumes a finite generating set” explicitly distinguishes the extension. Remaining source records/locators are R04 below. |
| R10, companion form | **Not repaired.** `GeometricFaithfulnessTargets.lean:1` still imports only the Tau Ceti module; its docstring still says “RootSystems 3G”. R03 below. |
| R11, supplier qualifications/gate flags | **Repaired for the five Cartan names.** `README.md:91–95` uses `RootPairing.Base` qualifications, and the gate has `readme-ids-missing=0`. A separate file-locator correction is included in R04. |

## R01 (P2) — Reconcile the two owners of general geometric faithfulness

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:32` — “The ownership boundary with EnriquesSurfaces §5.2 places the general arbitrary-index geometric sign, faithfulness and integral comparison results here in §1.”

**Claim:** EnriquesSurfaces is only the application of the general geometric results owned here. Its supplied open head does not agree with that boundary.

**Witness:** `TauCetiRoadmap/EnriquesSurfaces/README.md:525–533` constructs arbitrary-index faithfulness and root signs. `Suggested.lean:36` there states the identical injectivity theorem. Both give ρ(s)=−1 in rank one and ρ(sᵢsⱼ)αᵢ=(3,2) in infinite dihedral type.

**Exact repair:** Complete the ownership transfer in the two specifications: RootSystems owns the general sign, faithfulness and coordinate/integral comparisons; EnriquesSurfaces §5.2 consumes the named RootSystems sections and retains its T246 lattice, surface geometry and congruence-kernel results. Remove the duplicate general construction/signature from that consumer through its own repair, not an unauthorized edit in this folder's PR. Do not add a reverse supply edge. Rechecking the rank-one and infinite-dihedral witnesses then leaves one general theorem with the same values and one specialized application. A unilateral ownership sentence does not resolve the existing duplicate.

## R02 (P2) — Consume the existing Cartan and abstract reindexing maps

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:491` — “Transporting a base along a root-pairing equivalence preserves its Cartan entries under the induced support bijection.” Also the abstract group equivalence at 333.

**Claim:** These comparison ingredients belong to the new construction programme. The pinned Mathlib already supplies the Cartan identity and the marked abstract group reindexing equivalence; neither appears in the exact supplier contracts.

**Witness:** `RootPairing.Base.map_equiv_cartanMatrix`, `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:377`, proves the exact transport identity. `CoxeterMatrix.reindexGroupEquiv`, `Mathlib/GroupTheory/Coxeter/Basic.lean:127`, already gives the group equivalence, with generator equations at 137 and 140.

**Exact repair:** Add those exact declarations to the Mathlib contract and consume them at §§1.3 and 3.1. Retain the genuinely new real-form/reflection/representation intertwining and base transitivity. For e:I≃J, use the inverse of the native `reindexGroupEquiv` to obtain the requested I-to-J direction, with its `reindexGroupEquiv_symm_apply_simple` equation. A scratch Cartan-transport statement closes with `exact b.map_equiv_cartanMatrix e`. Under the A₂ node swap, both Cartan matrices are [[2,−1],[−1,2]], and the generator indexed 0 maps to generator 1. For an asymmetric B₂ Cartan matrix, simultaneous swapping gives [[2,−1],[−2,2]], which is exactly reindexing, not equality without relabelling.

## R03 (P3) — Delete the obsolete geometric companion

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/GeometricFaithfulnessTargets.lean:13` — `theorem geometricRepresentation_injective`; also its import at line 1 and module note at line 4.

**Claim:** The companion supplies a necessary additional acceptance statement and obeys the Lean form rules.

**Witness:** Its conclusion is identical to `Suggested.lean:59`. A scratch copy closes it by one `exact TauCetiRoadmap.RepresentationTheory.RootSystems.geometric_faithfulness cs`. It also lacks `import Mathlib`, the required module explanation and a declaration docstring.

**Exact repair:** Delete `GeometricFaithfulnessTargets.lean`; keep the main-file headline. The companion's obsolete “3G” reference and name absent from the README disappear with it. Rank zero, rank one and infinite dihedral type have identical statements in both files: respectively the injective one-point map, matrices 1 and −1, and orbit values (1,0),(3,2),(5,4). This is duplication, not a request to prove the main headline in place. The passing scanner did not cover these companion violations.

## R04 (P3) — Complete the source records and fix the remaining locators

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:437` — “(Humphreys, §1.6 and §1.9).” Also the source list at 591 and the `posRootForm` file attribution at 105–108.

**Claim:** Every retained claim has an exact reproducible source locator and the cited works have source records.

**Witness:** Length equals inversions is Humphreys §1.7, Corollary, printed p.14 (`humphreys-coxeter line 717`); §1.6 gives the lower bound. No `sources.toml` exists. `RootPairing.posRootForm` is defined in `Finite/CanonicalBilinear.lean:346`.

**Exact repair:** Cite the §1.7 corollary for the equality, and §1.9 Theorem, pp.16–18 for completeness. Record all five works under their existing source ids in `sources.toml`, preserving uncertified outcomes rather than inventing certification. Add precise theorem/page locators for the broad Bourbaki VI §§1,4 and Humphreys Lie §§10–11 citations after consulting the texts or an operator-provided locator. Split the positive-form file attribution: `posRootForm` is in `CanonicalBilinear.lean`, while `posRootForm_rootFormIn_posDef` is in `Nondegenerate.lean:205`. State the cited Humphreys copy's edition accurately: its front matter records a corrected paperback printing in 1992/1994 (`humphreys-coxeter line 73`), with the checked printed numbering. On the A₂ words [],[i],[i,j],[i,j,i], the corrected length corollary gives exactly 0=0,1=1,2=2,3=3. This is a record/locator repair, not a change to those identities.

## Verified sound

### Gate, pins, scope and elaboration

The reviewed head is `7c91bd8814fde5d57a9a6b65a4cc21a07932bfa8`. The checked package commits equal the manifest: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The outside-folder diff using the brief's exclusions is empty. The RepresentationTheory index points to this folder and describes its finite root/Weyl foundation. Its lack of a detailed geometric extension synopsis is not a separate mathematical defect.

The worker's gate at this head reports:

```text
gate RootSystems: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

I ran the prescribed dependency check:

```text
depcheck: 204 roadmaps, 1486 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. All seven Needs blocks were read. Their supplies are pinned APIs or earlier internal results. The sign-dependent API in §1.1 is expressly placed after §1.2; §1.2 needs only the earlier definition of positivity. This is a split within a subsection, not a mathematical circular proof. Parabolic length additivity and the alternating-word theorem are established independently of geometric faithfulness at the pin. Layer 2 expressly owns the root-word braid/completeness step and does not apply abstract Matsumoto to an as-yet-unidentified Weyl Coxeter system. No declared gap exists, and no missing external proof ingredient was identified in the stated routes.

I built the missing `TauCeti.GroupTheory.Coxeter.Geometric` object with the permitted targeted command, then ran `lake env lean` on the main acceptance file: exit 0, exactly **nine admission warnings** and no other warnings. A scratch concatenation of both files with `#check @name` for **all eleven declarations** (one definition, nine main theorems, one companion theorem) and **thirteen exported aliases** also elaborated: ten admission warnings. Explicit binders preserve finiteness, reducedness, spanning where required, nonemptiness for classification, the given base, characteristic zero/domain assumptions and arbitrary index/group universes. No hypothesis silently disappeared. Nothing was edited to achieve these results.

The **nine main headlines** are rank-two nonnegativity, geometric sign/length, geometric faithfulness, integral geometric realization, injectivity of the marked Weyl presentation, its length/inversion formula, base-independent classification, rational classification and type-A Weyl/permutation equivalence. All appear directly in `Suggested.lean`, with native carriers and one small positivity predicate. The module docstring correctly says none of these nine requires a missing carrier. The type-A acceptance signature is the existence theorem; its marked refinement and root/inversion API remain explicit README targets. No arbitrary predicate or assumed-conclusion stand-in occurs.

A scratch one-tactic search tried `simp`, `rfl` and `infer_instance` on each of the nine main admissions; none closed. Reading the candidate native results shows why the closest `exact` candidates do not suffice: pairwise geometric orders do not prove faithfulness or signs, presentation surjectivity does not prove injectivity, least length in actual reflections is not presented-group length, and classification of one base is not simultaneous classification of every base. The native rank-two Weyl equivalences do not supply all type A ranks. The companion alone closes by one `exact`, as R03 records. These unsuccessful probes establish absence of the tested padding patterns, not mathematical proofs of the targets.

### Computed adversarial pass

The following **58 rows** cover all seven sampled subsections, all ten sorried declarations, the new definition, their API clauses, conventions, supplied examples and every finding touching mathematics. Coordinates are in the ordered simple basis; products act with the rightmost factor first. For geometric rank two set c=cos(π/m), with c=1 at m=0. The reflection matrices used are σᵢ=[[-1,2c],[0,1]] and σⱼ=[[1,0],[2c,−1]]. Exact small values below were also checked by matrix multiplication; the sine recurrence was cross-checked numerically for m=2,3,4,5,6 through k=m and for m=0 through k=4. Numerical checks supplement the exact calculations, not replace proofs.

| Statement | Instances | Computed values on the two sides | Result / change |
|---|---|---|---|
| 1. GeometricPositive definition | αᵢ, 0, αᵢ−αⱼ | Coefficients (1,0),(0,0),(1,−1); positivity true,false,false | Pass; zero and mixed signs excluded |
| 2. Positivity iff weak cone and nonzero | Same three vectors | RHS true,false,false = LHS true,false,false | Pass |
| 3. Positive scalar preservation/reflection | v=(1,2), scalars 2,0,−1 | 2v=(2,4) positive; 0v=0 not positive; −v=(−1,−2) not positive | Pass; strict scalar hypothesis necessary |
| 4. Addition of positive vectors | (1,0)+(0,1) | Sum=(1,1), both coefficients ≥0 and first >0 | Pass |
| 5. Opposite signs disjoint | v=(1,1) and −v | Positive(v)=true, Positive(−v)=false | Pass |
| 6. Standard-root orbit definition | A₁; empty index | Orbit={1,−1}, not {0,1,−1}; empty orbit=∅ | Pass |
| 7. Orbit stability | A₂, σᵢ acting on its six roots | ±αᵢ↔∓αᵢ; αⱼ↔αᵢ+αⱼ and their negatives | Six roots map to six roots |
| 8. Root nonzero and B-norm 1 | A₂, v=(1,1) | B(v,v)=1+1−1=1≠0; orbit vectors nonzero | Pass |
| 9. Positivity does not define roots or norm positivity | Infinite dihedral v=(1,1); orthogonal v=(1,−1) | First: positive, norm 0, not root; second: neither sign, norm 2 | Pass |
| 10. Root sign partition | A₂ roots ±(1,0),±(0,1),±(1,1) | Three positive, three negative, intersection empty, union size 6 | Pass |
| 11. Simple reflection permutes other positives | A₂ σᵢ | (0,1)↔(1,1); (1,0)→(−1,0) | Pass; own root must be excluded |
| 12. Root on one simple line is ±αᵢ | v=tαᵢ, norm 1 | t²=1 gives t=±1; t=2 gives norm 4 | Pass |
| 13. Infinite-index finite-support convention | I=ℕ, all off-diagonals 2, word s₀s₁ | α₂→α₂, coefficient 1 at 2; α₀→−α₀ | Pass; unused coordinates fixed |
| 14. Gram conventions | m=1,2,3,0 | −cos π=1; −cos(π/2)=0; −cos(π/3)=−1/2; −cos(π/0)=−1 using total division | Pass; m=0 is infinite exponent |
| 15. Alternating word and multiplication order | A₂ k=1,2 | Words [j],[i,j]; images αᵢ→(1,1),(0,1); reversed product gives (−1,−1) | Pass |
| 16. RankTwo_nonnegative, equal indices | i=j, m=1 | k<1 forces k=0; image αᵢ=1αᵢ+0αᵢ | Pass |
| 17. RankTwo_nonnegative, orthogonal | m=2, k=0,1; excluded k=2 | Images (1,0),(1,0); at k=2: (−1,0) | Pass; strict endpoint necessary |
| 18. RankTwo_nonnegative, A₂ | m=3, k=0,1,2; excluded 3 | (1,0),(1,1),(0,1); at 3: (0,−1) | Pass |
| 19. Rank-two trigonometric formula | m=4, k=0,1,2,3 | Formula and action both (1,0),(1,√2),(1,√2),(1,0) | Pass |
| 20. Noncrystallographic recurrence | m=5, φ=(1+√5)/2 | k=1,2,3 give (1,φ),(φ,φ),(φ,1) on both sides | Pass; not narrowed to crystallographic types |
| 21. Rank-two m=6 recurrence | k=1,2,3,4,5 | Both sides (1,√3),(2,√3),(2,√3),(1,√3),(1,0) | Pass |
| 22. Infinite recurrence without division | m=0, k=0,…,4 | S(k)=k; formula/action (1,0),(1,2),(3,2),(3,4),(5,4) | Pass |
| 23. Finite sine denominator | m=2,3,4,6 | sin θ=1,√3/2,√2/2,1/2, all nonzero | Pass; i=j not subjected to denominator argument |
| 24. Positive sign iff right ascent | A₂ w=sᵢsⱼ | ℓ(w)=2; ℓ(wsᵢ)=3; wαᵢ=(0,1) positive; true↔true | Pass |
| 25. Negative sign iff right descent | Same w, root j | ℓ(wsⱼ)=1; wαⱼ=(−1,−1); −wαⱼ=(1,1) positive; true↔true | Pass; swapped left criterion fails |
| 26. Both sign equivalences, rank one | w=1,s | Length pairs (0,1),(1,0); root images +1,−1; positive iff no descent, negative iff descent | Pass in both directions |
| 27. Parabolic induction reduces length | A₂ w=sᵢsⱼ, J={i,j} | u=1,v=w: 2=0+2, v≠1, 0<2; v ends j | Pass; induction not circular |
| 28. Geometric_faithfulness, empty index | W=1, zero space | Domain and image cardinalities 1=1 | Pass |
| 29. Geometric_faithfulness, rank one | W=C₂ | Images [1],[−1] are distinct; kernel={1} | Pass |
| 30. Faithfulness with degenerate form | Infinite dihedral | det B=0; (σᵢσⱼ)ⁿαᵢ=(2n+1,2n), n=0,1,2 gives (1,0),(3,2),(5,4) | Pass; no nondegeneracy needed |
| 31. Reindexing form and reflection | A₂ coordinate swap T | Tαᵢ=αⱼ; Tσᵢαᵢ=−αⱼ=σⱼTαᵢ; B(αᵢ,αⱼ)=−1/2 before/after | Pass; use supplied abstract map, R02 |
| 32. Reindexing group/representation intertwiner | A₂ swap, w=sᵢsⱼ | f(w)=sⱼsᵢ; Tρ(w)αᵢ=αᵢ=ρ(f(w))Tαᵢ | Pass; wrong unchanged-generator map fails |
| 33. Parabolic extension by zero | A₂ J={i}, u=1 | Eσ(1)=−αᵢ=σᵢE(1); B(E1,E1)=1=Bⱼ(1,1) | Pass |
| 34. Parabolic injectivity/image | A₂ J=∅,{i},I | Source/image orders 1=1,2=2,6=6 | Pass |
| 35. Composition/identity of transports | A₂ T=node swap | T²αᵢ=αᵢ; nested ∅⊂{i}⊂I sends 0→0 by either route | Pass |
| 36. Representation product and inverse laws | A₂ σᵢ,σⱼ | σᵢσⱼ=[[0,−1],[1,−1]]; inverse=[[−1,1],[−1,0]]; product=identity | Pass |
| 37. Finsupp-to-functions transport | Two finite coordinates, x=(2,3) | Both carriers give σᵢx=(1,3); Tρ(sᵢ)T⁻¹x=(1,3) | Pass |
| 38. Integral realization and scalar inclusion | A=[2], x=1 | Integer action −1; cast(−1)=−1=real action(cast 1) | Pass |
| 39. Integral Gram hypothesis rejects wrong scale | A=[1], x=1 | hA would require 1=2, false; wrong action 1−1=0 | Pass; zero map excluded |
| 40. Integral reflection and form preservation | A₂, x=eⱼ | σᵢx=(1,1); xᵀAx=2=(σᵢx)ᵀAσᵢx | Pass |
| 41. Integral action on degenerate lattice | A=[[2,−2],[−2,2]] | Product sends eᵢ→(3,2), integral cast same; norm 2=2(3−2)² | Pass |
| 42. Integral image and group laws | Rank one on ℤ | Image={1,−1}=generated reflection group; (−1)²=1 | Pass |
| 43. Transport to a specified integral basis | Rank-one L′=ℤ, marked basis e=−1 | Coordinate 1 maps to −1; reflected coordinate −1 maps to +1, matching reflection of −1 | Pass; marking retained |
| 44. Reduction is not faithful | Rank one mod 2 and mod 3 | −1=1 mod 2, kernel size 2; −1=2≠1 mod 3, kernel size 1 | Pass; no modular faithfulness claimed |
| 45. Nonintegral type excluded only from integral comparison | I₂(5) | Off-diagonal 2B=−φ∉ℤ; general real sign theorem still applies | Pass |
| 46. Marked Weyl presentation | Ranks 0,1; A₂ | Source/image orders 1=1,2=2,6=6; generator i sends αᵢ→−αᵢ | Pass |
| 47. Presentation marking negative control | A₂ generator swap | Intended image of αᵢ is (−1,0); swapped image is (1,1) | Excluded by native generator equation |
| 48. Root-word braid and cancellation route | A₂ 121,212,11 | 121=212=w₀, both minimal length 3; 11=1 with minimal length 0 | Pass; actual list length 2 is not minimal length |
| 49. Presentation_length_eq_inversions | A₂ [],1,12,121; rank zero | Length/count pairs (0,0),(1,1),(2,2),(3,3); empty (0,0) | Pass; locator R04 |
| 50. Lowering supplier and negative control | A₂ αᵢ+αⱼ; H=[[2,−3],[−3,2]], β=(1,1) | A₂ height 2→1; H-norm β=−2, both reflections height 2→3 | Pass; infinite countermodel excluded by finite ι |
| 51. Longest and closed-chamber examples | A₂,G₂; A₂ x=0 | Longest lengths/positive counts 3=3,6=6; orbit(0)∩closed chamber={0}, stabilizer order 6 | Pass; uniqueness of orbit point is not freeness |
| 52. Classification_independent_base and base transitivity | A₁,A₂ | A₁: two bases, each [2], reflection swaps; A₂: six bases, all type A₂ with determinant 3 | Pass |
| 53. Cartan transport under equivalence | A₂ swap; B₂ relabelling | A₂ C′=C=[[2,−1],[−1,2]]; B₂ C′=[[2,−1],[−2,2]]=reindex C | Mathematics passes; already supplied, R02 |
| 54. Valid-type uniqueness/boundaries | Empty, B₂/C₂, B₃/C₃ | No valid rank-0 type; Valid(B2)=true, Valid(C2)=false; B₃ has two long simple roots versus C₃ one | Pass; orientation and nonempty constraints needed |
| 55. Finite type is definite, not semidefinite | [2], empty, affine A₁ matrix | q(1)=2>0; empty condition vacuous; affine q(1,1)=0, so rejected | Pass |
| 56. Rational_classification and index distinction | Native A₁,A₂,G₂; integral A₁ | Root/rank pairs (2,1),(6,2),(12,2); A₁ integral root span 2ℤ, coroot span ℤ, rational spans both ℚ | Pass; wrong one-root A₁ carrier removed |
| 57. Type-A Weyl/permutation theorem and API | A₁,A₂,A₃ | Group orders 2=2!,6=3!,24=4!; over ℤ[1/2], roots ±1/coroots ±2 also give W=C₂; positive counts 1,3,6=n(n+1)/2; roots 2,6,12; A₂ longest [2,1,0] has 3 inversions; (01)(12)≠(12)(01) | Pass; rank versus number of labels distinguished |
| 58. Companion, ownership, long-root conventions | Same rank-one/infinite-dihedral systems; B₂,G₂,F₄ | Both faithfulness signatures give [−1] and (3,2); long nodes {0},{1},{0,1}; G₂ squared lengths 1:3 | Same object in both owners/companions, R01/R03; conventions agree |

Zero rings and positive-characteristic root-pairing inputs are excluded by the explicit domain/characteristic-zero assumptions; the real geometric statements fix ℝ. There is no DVR, inseparable-extension, scheme, ideal, polynomial-degree or topological-completion parameter in these targets. Adding tests on such unrelated carriers would not exercise a quantifier in these statements. The relevant exceptional characteristic is the expressly separate mod-two reduction in row 44.

### Pinned-library and ownership audit

I searched by objects, not just local declaration names, in the pinned root-system/Coxeter files, main roadmaps, board package READMEs/Lean files and the open-roadmap index using `roadmaps grep`. I read the matching definitions and theorem signatures, including surrounding hypothesis blocks. The README's 97 qualified library names were resolved by declaration searches (the `DynkinType` enum separately); no missing declaration was established. The file-location slip and the two omitted suppliers are R04 and R02. The following grouped inventory records the declarations actually inspected, with file/line locators at the pins:

| Pinned file | Opened declarations and locations |
|---|---|
| `Mathlib/LinearAlgebra/RootSystem/Defs.lean` | `RootPairing` 81, `IsRootSystem` 120, `ne_neg` 422: perfect pairing, injective families, reflection laws and value 2 do not imply finiteness/spanning |
| `Mathlib/LinearAlgebra/RootSystem/Base.lean` | `Base` 68, `Base.map` 122, `height` 457, `IsPos` 536, `IsPos.reflectionPerm` 638: finite support, independent root/coroot families, separate sign expansions |
| `Mathlib/LinearAlgebra/RootSystem/BaseExists.lean` | `RootPairing.nonempty_base` 321, under the field/finite/reduced/crystallographic hypotheses |
| `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean` | `cartanMatrix` 106, diagonal 112, off-diagonal sign 130, possible entries 135, root-string identity 150, nondegeneracy 172, `equivOfCartanMatrixEq` 355, `map_equiv_cartanMatrix` 377 |
| `Mathlib/LinearAlgebra/RootSystem/RootPositive.lean` | `RootPositiveForm.posForm` 129 and `rootLength` 171: the latter is squared length |
| `Mathlib/LinearAlgebra/RootSystem/Finite/CanonicalBilinear.lean`; `Finite/Nondegenerate.lean` | `posRootForm` 346; `posRootForm_rootFormIn_posDef` 205 |
| `Mathlib/LinearAlgebra/RootSystem/WeylGroup.lean` | `weylGroup` 55, `ofIdx` 62, `weylGroupToPerm` 162: subgroup generated by actual reflections |
| `Mathlib/GroupTheory/Coxeter/Basic.lean` | `Group` 108, `reindexGroupEquiv` 127 and generator equations 137/140, `toCoxeterSystem` 163, `lift` 329, `wordProd` 367, `alternatingWord` 396, braid equality 516 |
| `Mathlib/GroupTheory/Coxeter/Length.lean` | `length` 74, `length_mul_simple` 195, `IsRightDescent` 268, `exists_rightDescent_of_ne_one` 294 |
| `Mathlib/LinearAlgebra/Finsupp/Defs.lean` | `linearEquivFunOnFinite` 60, `lmapDomain` 148 |
| `TauCeti/GroupTheory/Coxeter/Geometric.lean` | Form 125, Gram entries 131, reflection 161/formula 168, representation 479/generators 485/invariance 490, exact pairwise orders 525; no general faithfulness theorem |
| `TauCeti/GroupTheory/Coxeter/StrongExchange.lean`; `Matsumoto.lean` | `strongExchange` 413, `exchangeCondition` 434, `deletionCondition` 463; `TauCeti.matsumoto` 138 |
| `TauCeti/GroupTheory/Coxeter/Parabolic.lean`; `Dihedral.lean` | `parabolic` 101, minimal representative existence 236, length additivity 280, descent characterization 311; alternating-word representation 167 |
| `TauCeti/GroupTheory/Coxeter/Bruhat.lean`; `Poincare.lean` | `BruhatLE` 159/antisymmetry 195; `poincarePolynomial` 87/evaluation at one 146 |
| `TauCeti/LinearAlgebra/RootSystem/Positive.lean`; `Lowering.lean` | `posRoots` 114, `negRoots` 117; `exists_mem_support_height_reflectionPerm_lt` 92 |
| `TauCeti/LinearAlgebra/RootSystem/Inversions/Basic.lean`; `Exchange.lean`; `Length.lean` | `inversions` 50, image comparison 153/cardinality 170; one-step count 138; `isLeast_ncard_inversions` 148 |
| `TauCeti/LinearAlgebra/RootSystem/Weyl/Group.lean` | `weylGroupToPerm_injective` 153, `finite_weylGroup` 337 |
| `TauCeti/LinearAlgebra/RootSystem/SimpleReflections.lean`; `Coxeter/Matrix.lean`; `Coxeter/Presentation.lean` | Simple generation 124; native base matrix 278; marked map 57/generator 66/word 75/surjectivity 82 |
| `TauCeti/LinearAlgebra/RootSystem/BraidRelation.lean` | Root-reflection product orders 211/228/247; agreement with the base Coxeter matrix 297 |
| `TauCeti/LinearAlgebra/RootSystem/Chamber.lean`; `FundamentalDomain.lean`; `LongestElement.lean` | Closed/open chambers 137/140; wall stabilizer 186/closed-orbit uniqueness 232; longest element 194/inversions 200/square 235/count 266 |
| `TauCeti/LinearAlgebra/RootSystem/DynkinType.lean` | Native enum 108, validity 156, matrix 222, `HasCartanType` 416 and common support relabelling 437 |
| `TauCeti/LinearAlgebra/RootSystem/FiniteType/Basic.lean`; `Classification.lean` | `IsFiniteType` 121, finite type of base matrix 748; `TauCeti.existsUnique_dynkinType` 127, explicitly attached to one base |
| `TauCeti/LinearAlgebra/RootSystem/Isomorphism.lean` | Marked root-index transport 65, transported base 111, same-type rigidity 137 |
| `TauCeti/LinearAlgebra/RootSystem/RootLength.lean`; `NumberOfRoots.lean` | Length dictionary 123, `IsLongSimpleRoot` 241; `numRoots` 47 |
| `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/Assembly.lean`; `Rational.lean` | Integral datum 79/base 94/type 498/coroot span 513; rational system 80/base 87/Cartan matrix 235 |
| `TauCeti/LinearAlgebra/RootSystem/Weyl/Dihedral.lean` | `nonempty_dihedralGroup_mulEquiv_weylGroup_of_hasCartanType_G2` 138 and adjacent A₂/B₂ results |

The two main roadmap examples read for repository shape were `RepresentationTheory/LieHighestWeight/README.md` and `ReflectionInvariantTheory/README.md`; I also opened ClassicalGroups and the main RootSystems specification. This is an update of the existing RootSystems owner consuming completed native work, rather than a second plan for its completed classification, chambers and root combinatorics. The general geometric extension still needs the ownership reconciliation in R01.

Cross-roadmap citations were resolved on main or at the supplied new-roadmap head, not accepted from memory:

- `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:351,370`: Layers 1–2 fix root-space and weight-lattice/integrality interfaces and consume the RootSystems engine. The broader fundamental-weight dictionary continues in Layer 6.
- `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:237`: Layer 3 consumes root data/chambers and highest weights for matrix groups; no general geometric-faithfulness ownership there.
- `TauCetiRoadmap/ReflectionInvariantTheory/README.md:68`: §4 owns invariant degrees, exponents and the root-height comparison, consuming the Weyl/Coxeter dictionary. Its §3 finite orthogonal-reflection presentation has a different input carrier; it specializes to the RootSystems Weyl presentation rather than replacing arbitrary Coxeter faithfulness.
- `TauCetiRoadmap/RootSystemsPartII/README.md:69,115` and Layer 3 at 201 at the supplied head: integral dominance/Stembridge, orthogonal folding and general finite folding. These extend the existing root-system theory; they do not own the general real Coxeter sign theorem. Their integral and orbit-sum normalization differs from §1.4's symmetric matrix A=2B and is not silently interchanged with it.
- `TauCetiRoadmap/CFSGStatement/README.md:195`: L0 consumes the numbered integral root datum and ReductiveGroups' pinned group construction. The native enum aliases retained here preserve the namespace used by its acceptance module; no new enum is introduced.
- `TauCetiRoadmap/ReductiveGroups/README.md:1092`, Layer 9: owns pinned Chevalley–Demazure groups and uses the numbered root datum. Its group-scheme and signed-folding constructions are not supplied by this geometric representation theorem.
- `TauCetiRoadmap/EnriquesSurfaces/README.md:523` and `Suggested.lean:36`, supplied head: resolved but inconsistent ownership, R01. Its negative intersection form is converted by −intersection=2B, agreeing with the sign/factor convention here.

The citation-resolver run reported no unresolved roadmap citations or local Lean names, but explicitly said it did not check external library names on its host; the pin audit above supplies that check. Searches of the provided open-work context and board packages found no additional verified competing owner for the retained finite Weyl comparison/classification targets. No new fully qualified name in this main acceptance file was found duplicated in another supplied roadmap. The separate companion repeats a theorem within this folder under a second namespace, as R03 records. No upward dependency was introduced to resolve ownership.

### Seeded source audit

All five referenced works were submitted to the source service. For Humphreys' reflection-group book the service started redundant OCR; I stopped that once I located and read its existing line-numbered service cache, whose header records the legal University of Washington institutional URL. I also inspected the printed images of pp.106,107,112 where hypotheses or OCR mattered. No source text or PDF was copied into the repository or report. The source is **humphreys-coxeter**, retaining the previous review's work id. No README locator is expressly flagged unverified.

| Seeded subsection | Text and locator checked | Outcome |
|---|---|---|
| 1.1 Positive vectors and standard roots | §5.4, printed p.111, `humphreys-coxeter line 4302` (orbit/unit norm), line 4309 (signs) | Supports the orbit definition and coefficient sign convention. The separate nonzero condition is needed for all vectors; roots already have norm 1. |
| 1.2 Rank-two positivity and sign/length | §5.4 unnumbered Theorem p.111/proof pp.112–113: lines 4324,4338,4364,4366,4370,4380 | Correct right-descent direction and strict k<m. The displayed sine formula is the README's derived recurrence, not a formula quoted from the source. |
| 1.3 Faithfulness and transport | §5.4 Corollary p.113, lines 4386–4389; §5.3 pp.109–110, lines 4213,4226,4266; §5.5 p.113, lines 4394–4405 | Faithfulness and restriction-to-parabolic comparison supported. Reindexing/intertwining equations follow from the stated generator formula; arbitrary indices are an explicit extension. |
| 1.4 Integral comparison | §5.3 reflection formula p.109, line 4226; §5.4 Corollary p.113, line 4386 | Not a separately stated integral theorem in the source. The roadmap correctly presents the derivation: integral generators and inverses preserve the integer lattice, coefficient inclusion intertwines, real basis spanning transfers faithfulness. No determinant hypothesis is used. |
| 2.1 Completeness and length bridge | §1.9 Theorem pp.16–18, lines 809–865; §1.7 Corollary p.14, line 717 | Presentation theorem verified for finite real reflection systems. Algebraic extension uses the native exchange/deletion inputs here. The length-equality locator needs R04; §1.6 alone gives the bound at line 678. |
| 3.1 Base-independent and rational classification | Cited Bourbaki VI §§1,4 and Humphreys Lie §§10–11 were not legally readable through the service | Uncertified source hypotheses/pages. Independently, the accessible reflection book §1.4 Theorem p.10, line 579 verifies base transitivity in the real finite setting; the characteristic-zero-domain route and native classification/rigidity were checked separately. |
| 3.2 Type A | Cited Bourbaki VI §4 was not legally readable through the service | Uncertified at the cited locator. Native type-A matrices and small permutation/root tests were checked; these are not a claim to have read Bourbaki. |

The finite-generator convention is explicit at `humphreys-coxeter line 4101`, printed p.106. The README acknowledges it and explains the extension: induction on finite word length, rank-two parabolics, finite-support vectors, and arbitrary-index pinned abstract results. The norm may be degenerate: the source's infinite-dihedral calculation at lines 4258–4260 gives (3,2). The apparent coefficient interchange in OCR line 4368 disappears in the printed p.112 image, which writes the second simple vector first; it is an OCR issue, not an erratum.

## Not verifiable

- **bourbaki-lie**, *Lie Groups and Lie Algebras, Chapters 4–6*, DOI 10.1007/978-3-540-34491-9, VI §§1,4: the source service returned `uncertified`, paywalled publisher. The exact theorem numbers, pages and hypotheses for the sampled classification/type-A claims were not read. No renewed missing-text request was made for this settled uncertified outcome.
- **humphreys-lie**, *Introduction to Lie Algebras and Representation Theory*, DOI 10.1007/978-1-4612-6398-2, §§10–11: the service returned `uncertified`, paywalled publisher. Exact text not certified.
- **bjorner-brenti**, *Combinatorics of Coxeter Groups*, DOI 10.1007/3-540-27596-7, §3.3: the service returned `uncertified`, paywalled publisher. The native abstract word theorem was inspected, but the book text was not.
- **kac90**, *Infinite-Dimensional Lie Algebras*, DOI 10.1017/CBO9780511626234, Ch.4: the service found the Cambridge landing page but no legal full text. This is recorded in the single missing-reference file. It concerns terminology here, not an unstated prerequisite. The review is complete and is not awaiting that text.
- Copied wording could be compared against the accessible Humphreys passages only; no copied source passage was identified there. Inaccessible books cannot be certified for textual independence.

## Source issues

- **Error** in humphreys-coxeter at §5.1, Proposition, printed p.107: the source says every Coxeter system has a surjective sign homomorphism to {1,−1}; it should be surjective when the generating set is nonempty, and merely a homomorphism in rank zero; affects a stated result.

The last item is visible in the printed page, not inferred from OCR. The definition at p.105 and finite-set convention at p.106 impose no nonemptiness; for S=∅ the domain has one element and the sign image is {1}. It does not affect the roadmap's correctly stated rank-zero faithfulness or its sign criterion (which quantifies over a simple index).
