# Review of RootSystems (pull request #1278 at a857ef5)
Folder: `TauCetiRoadmap/RepresentationTheory/RootSystems/`
**Verdict:** needs changes

:robot: Independent AI review by Codex. One P2 finding remains, concerning duplicate ownership of general geometric faithfulness; two P3 findings remain. The gate and targeted build pass. This is an incremental re-review of 68 changed lines since `7c91bd8`: unchanged mathematical checks are explicitly carried forward, not presented as a fresh full review. No pull-request file was changed.

## R01 (P2) — Complete the ownership transfer of general geometric faithfulness

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:32` — “The ownership boundary with EnriquesSurfaces §5.2 places the general arbitrary-index geometric sign, faithfulness and integral comparison results here in §1.”

**Claim:** EnriquesSurfaces consumes the general theory owned here. Its supplied head still independently owns that same theory.

**Witness:** `TauCetiRoadmap/EnriquesSurfaces/README.md:525–533` constructs arbitrary-index faithfulness, root signs and transport. Its `Suggested.lean:36` states the identical injectivity theorem. Both specifications give rank-one reflection −1 and infinite-dihedral image (3,2).

**Exact repair:** Retain general signs, faithfulness and coordinate/integral comparisons in RootSystems §1. Through the consumer's own repair, make EnriquesSurfaces §5.2 consume those named sections and remove its duplicate general construction and signature; retain its T246 lattice and surface/congruence applications. Do not introduce a reverse dependency. On the rank-one and infinite-dihedral witnesses this leaves one owner of precisely the same general action, with values −1 and (3,2), and a separate specialized application. No edit to that other folder is requested in this pull request. This is previous R01, still unresolved at the supplied heads; no repair report marking it not actionable was supplied or found in this package's reports.

## R02 (P3) — Delete the duplicate geometric companion

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/GeometricFaithfulnessTargets.lean:13` — `theorem geometricRepresentation_injective`; also lines 1 and 4–8.

**Claim:** The companion provides an additional acceptance theorem in the required Lean form.

**Witness:** Its conclusion duplicates `Suggested.lean:59`. The scratch probe closes it with `exact TauCetiRoadmap.RepresentationTheory.RootSystems.geometric_faithfulness cs`. It lacks `import Mathlib` and a declaration docstring, and still refers to nonexistent section “3G”.

**Exact repair:** Delete `GeometricFaithfulnessTargets.lean`; retain `geometric_faithfulness` in `Suggested.lean`. The deletion removes duplication and the obsolete reference without losing a headline. In rank zero both statements concern the injective one-point map; in rank one both distinguish [1] from [−1]; in infinite dihedral type both give orbit values (1,0),(3,2),(5,4). This repeats previous R03. The passing gate does not detect these companion defects.

## R03 (P3) — Finish the source records and precise classification locators

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:514–515` — “(Bourbaki, Ch. VI §1 and §4; Humphreys, *Introduction to Lie Algebras and Representation Theory*, §§10–11).” Also the reference list at lines 619–635.

**Claim:** The retained classification/type-A sources have reproducible claim-level locators and the cited works have source records.

**Witness:** No `sources.toml` exists in the folder. Classification and type A still cite broad sections without theorem/page locators. The corrected length locator now matches `humphreys-coxeter line 717`, so that part of previous R04 is repaired.

**Exact repair:** Record the five works in `sources.toml`, reusing `humphreys-coxeter`, `bourbaki-lie`, `humphreys-lie`, `bjorner-brenti` and `kac90`, preserving the previous uncertified outcomes. Obtain precise theorem/page locators for classification and type A from a legal text or operator-provided locator; do not invent source certification. Keep the corrected §1.7 corollary, §1.9 theorem, edition and positive-form file attributions. On A₂ words [],[i],[i,j],[i,j,i], the repaired length reference supports 0=0,1=1,2=2,3=3. A₁ still has one valid type and Weyl order 2; this remaining record repair changes neither value.

## Previous findings

- R01 — not repaired: `README.md:32–37` retains the unilateral ownership boundary; EnriquesSurfaces §5.2 and its `coxeterGeometricFaithful` theorem still construct the same general theory. Repeated as R01.
- R02 — repaired: `README.md:102–105,126–130,343–346,512–513` cites and consumes the native Cartan identity and inverse reindexing equivalence. The three-cycle Check distinguishes the two directions.
- R03 — not repaired: `GeometricFaithfulnessTargets.lean:1–17` is unchanged; the duplicate theorem, missing Mathlib import/docstring and obsolete “3G” references remain. Repeated as R02.
- R04 — partly repaired: `README.md:111–115,443,457–458,619–623` corrects file locations, length/completeness locators and edition. Source records and precise classification/type-A locators remain absent. Repeated as R03.

## Verified sound

### Scope, gate and elaboration

Reviewed head: `a857ef518abee2e9b0d43a72839cbda0aa5cd643`. Both checked package commits agree with the manifest: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The incremental diff changes only this folder's README and main acceptance file. The prescribed outside-folder diff is empty; the family's index at `TauCetiRoadmap/RepresentationTheory/README.md:29` still links the root/Weyl foundation. There are no newly introduced declarations or imports. Final `git diff --exit-code` returned 0 and `git status --short` was empty.

The supplied worker gate includes `build=0 OK`. My fresh scanner/dependency gate reports:

```text
gate RootSystems: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The separately rerun prescribed dependency check reports:

```text
depcheck: 204 roadmaps, 1491 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line occurred. All seven `Needs` blocks were read; the changed edges point to pinned Mathlib declarations, not another roadmap. The ownership conflict does not require adding a supplier here. There are no declared supplier gaps.

The permitted targeted build of `TauCetiRoadmap.RepresentationTheory.RootSystems.Suggested` and `TauCetiRoadmap.CFSGStatement.Suggested` completed successfully. Then `lake env lean` on the absolute path of `Suggested.lean`, from the worktree, exited 0 with exactly nine `sorry` warnings and no other warning. The worker's earlier missing-object signature failure is therefore resolved by the build, not a present failure.

I elaborated `#check @name` for all eleven declarations across the two listed Lean files (one definition, nine main theorems, one companion theorem), and checked nine relevant native signatures. The broadened type-A theorem has `[Finite ι]`, `[P.IsCrystallographic]`, `[P.IsReduced]`, characteristic zero, a domain, the chosen base, `1 ≤ n`, and `HasCartanType`; `[P.IsRootSystem]` is absent as intended. The classification signatures still retain spanning and nonempty root indices. No needed hypothesis silently disappeared, and no signature adjustment was needed during review.

The nine headlines remain: rank-two nonnegativity; root sign/right descent; geometric faithfulness; integral realization; injectivity of the marked Weyl presentation; length equals inversion count; base-independent classification; rational classification; and type-A Weyl/permutation equivalence. All nine are stated on native carriers, with the same single simple positivity definition. The docstring names all headline families and correctly states that none needs a missing carrier. Marked type-A generator compatibility remains an explicit README refinement.

One-tactic scratch probes tried `simp`, `rfl`, and `infer_instance` on every main admission; none closed. The companion alone closed by the single `exact` in R02. Native `weylCoxeterHom_surjective` is not injectivity, and the native rank-two dihedral comparison is not the all-ranks symmetric-group comparison; neither deletes the type-A work. Unchanged nearest-lemma audits are carried from the previous report. These probes check the listed padding patterns, not the truth of the admitted theorems.

### Computed adversarial table

There are **62 rows: 50 carried from the previous report and 12 checked for this revision**. Each carried row identifies its source explicitly. Previous rows 31,32,46,49,53,54,57,58 are replaced below because their statements, citations, Checks or findings are touched. All seven seeded subsections and all nine headlines are represented. Products act with the rightmost factor first. For A₂, use S₀=[[-1,1],[0,1]], S₁=[[1,0],[1,−1]], T=[[0,1],[1,0]]. Exact matrix/permutation calculations were recomputed for the changed passages.

| Statement | Instances | Computed values on the two sides | Result / change |
|---|---|---|---|
| 1. GeometricPositive definition | αᵢ, 0, αᵢ−αⱼ | Coefficients (1,0),(0,0),(1,−1); positivity true,false,false | Pass; zero and mixed signs excluded  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 1. |
| 2. Positivity iff weak cone and nonzero | Same three vectors | RHS true,false,false = LHS true,false,false | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 2. |
| 3. Positive scalar preservation/reflection | v=(1,2), scalars 2,0,−1 | 2v=(2,4) positive; 0v=0 not positive; −v=(−1,−2) not positive | Pass; strict scalar hypothesis necessary  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 3. |
| 4. Addition of positive vectors | (1,0)+(0,1) | Sum=(1,1), both coefficients ≥0 and first >0 | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 4. |
| 5. Opposite signs disjoint | v=(1,1) and −v | Positive(v)=true, Positive(−v)=false | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 5. |
| 6. Standard-root orbit definition | A₁; empty index | Orbit={1,−1}, not {0,1,−1}; empty orbit=∅ | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 6. |
| 7. Orbit stability | A₂, σᵢ acting on its six roots | ±αᵢ↔∓αᵢ; αⱼ↔αᵢ+αⱼ and their negatives | Six roots map to six roots  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 7. |
| 8. Root nonzero and B-norm 1 | A₂, v=(1,1) | B(v,v)=1+1−1=1≠0; orbit vectors nonzero | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 8. |
| 9. Positivity does not define roots or norm positivity | Infinite dihedral v=(1,1); orthogonal v=(1,−1) | First: positive, norm 0, not root; second: neither sign, norm 2 | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 9. |
| 10. Root sign partition | A₂ roots ±(1,0),±(0,1),±(1,1) | Three positive, three negative, intersection empty, union size 6 | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 10. |
| 11. Simple reflection permutes other positives | A₂ σᵢ | (0,1)↔(1,1); (1,0)→(−1,0) | Pass; own root must be excluded  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 11. |
| 12. Root on one simple line is ±αᵢ | v=tαᵢ, norm 1 | t²=1 gives t=±1; t=2 gives norm 4 | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 12. |
| 13. Infinite-index finite-support convention | I=ℕ, all off-diagonals 2, word s₀s₁ | α₂→α₂, coefficient 1 at 2; α₀→−α₀ | Pass; unused coordinates fixed  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 13. |
| 14. Gram conventions | m=1,2,3,0 | −cos π=1; −cos(π/2)=0; −cos(π/3)=−1/2; −cos(π/0)=−1 using total division | Pass; m=0 is infinite exponent  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 14. |
| 15. Alternating word and multiplication order | A₂ k=1,2 | Words [j],[i,j]; images αᵢ→(1,1),(0,1); reversed product gives (−1,−1) | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 15. |
| 16. RankTwo_nonnegative, equal indices | i=j, m=1 | k<1 forces k=0; image αᵢ=1αᵢ+0αᵢ | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 16. |
| 17. RankTwo_nonnegative, orthogonal | m=2, k=0,1; excluded k=2 | Images (1,0),(1,0); at k=2: (−1,0) | Pass; strict endpoint necessary  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 17. |
| 18. RankTwo_nonnegative, A₂ | m=3, k=0,1,2; excluded 3 | (1,0),(1,1),(0,1); at 3: (0,−1) | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 18. |
| 19. Rank-two trigonometric formula | m=4, k=0,1,2,3 | Formula and action both (1,0),(1,√2),(1,√2),(1,0) | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 19. |
| 20. Noncrystallographic recurrence | m=5, φ=(1+√5)/2 | k=1,2,3 give (1,φ),(φ,φ),(φ,1) on both sides | Pass; not narrowed to crystallographic types  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 20. |
| 21. Rank-two m=6 recurrence | k=1,2,3,4,5 | Both sides (1,√3),(2,√3),(2,√3),(1,√3),(1,0) | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 21. |
| 22. Infinite recurrence without division | m=0, k=0,…,4 | S(k)=k; formula/action (1,0),(1,2),(3,2),(3,4),(5,4) | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 22. |
| 23. Finite sine denominator | m=2,3,4,6 | sin θ=1,√3/2,√2/2,1/2, all nonzero | Pass; i=j not subjected to denominator argument  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 23. |
| 24. Positive sign iff right ascent | A₂ w=sᵢsⱼ | ℓ(w)=2; ℓ(wsᵢ)=3; wαᵢ=(0,1) positive; true↔true | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 24. |
| 25. Negative sign iff right descent | Same w, root j | ℓ(wsⱼ)=1; wαⱼ=(−1,−1); −wαⱼ=(1,1) positive; true↔true | Pass; swapped left criterion fails  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 25. |
| 26. Both sign equivalences, rank one | w=1,s | Length pairs (0,1),(1,0); root images +1,−1; positive iff no descent, negative iff descent | Pass in both directions  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 26. |
| 27. Parabolic induction reduces length | A₂ w=sᵢsⱼ, J={i,j} | u=1,v=w: 2=0+2, v≠1, 0<2; v ends j | Pass; induction not circular  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 27. |
| 28. Geometric_faithfulness, empty index | W=1, zero space | Domain and image cardinalities 1=1 | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 28. |
| 29. Geometric_faithfulness, rank one | W=C₂ | Images [1],[−1] are distinct; kernel={1} | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 29. |
| 30. Faithfulness with degenerate form | Infinite dihedral | det B=0; (σᵢσⱼ)ⁿαᵢ=(2n+1,2n), n=0,1,2 gives (1,0),(3,2),(5,4) | Pass; no nondegeneracy needed  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 30. |
| 33. Parabolic extension by zero | A₂ J={i}, u=1 | Eσ(1)=−αᵢ=σᵢE(1); B(E1,E1)=1=Bⱼ(1,1) | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 33. |
| 34. Parabolic injectivity/image | A₂ J=∅,{i},I | Source/image orders 1=1,2=2,6=6 | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 34. |
| 35. Composition/identity of transports | A₂ T=node swap | T²αᵢ=αᵢ; nested ∅⊂{i}⊂I sends 0→0 by either route | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 35. |
| 36. Representation product and inverse laws | A₂ σᵢ,σⱼ | σᵢσⱼ=[[0,−1],[1,−1]]; inverse=[[−1,1],[−1,0]]; product=identity | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 36. |
| 37. Finsupp-to-functions transport | Two finite coordinates, x=(2,3) | Both carriers give σᵢx=(1,3); Tρ(sᵢ)T⁻¹x=(1,3) | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 37. |
| 38. Integral realization and scalar inclusion | A=[2], x=1 | Integer action −1; cast(−1)=−1=real action(cast 1) | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 38. |
| 39. Integral Gram hypothesis rejects wrong scale | A=[1], x=1 | hA would require 1=2, false; wrong action 1−1=0 | Pass; zero map excluded  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 39. |
| 40. Integral reflection and form preservation | A₂, x=eⱼ | σᵢx=(1,1); xᵀAx=2=(σᵢx)ᵀAσᵢx | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 40. |
| 41. Integral action on degenerate lattice | A=[[2,−2],[−2,2]] | Product sends eᵢ→(3,2), integral cast same; norm 2=2(3−2)² | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 41. |
| 42. Integral image and group laws | Rank one on ℤ | Image={1,−1}=generated reflection group; (−1)²=1 | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 42. |
| 43. Transport to a specified integral basis | Rank-one L′=ℤ, marked basis e=−1 | Coordinate 1 maps to −1; reflected coordinate −1 maps to +1, matching reflection of −1 | Pass; marking retained  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 43. |
| 44. Reduction is not faithful | Rank one mod 2 and mod 3 | −1=1 mod 2, kernel size 2; −1=2≠1 mod 3, kernel size 1 | Pass; no modular faithfulness claimed  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 44. |
| 45. Nonintegral type excluded only from integral comparison | I₂(5) | Off-diagonal 2B=−φ∉ℤ; general real sign theorem still applies | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 45. |
| 47. Presentation marking negative control | A₂ generator swap | Intended image of αᵢ is (−1,0); swapped image is (1,1) | Excluded by native generator equation  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 47. |
| 48. Root-word braid and cancellation route | A₂ 121,212,11 | 121=212=w₀, both minimal length 3; 11=1 with minimal length 0 | Pass; actual list length 2 is not minimal length  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 48. |
| 50. Lowering supplier and negative control | A₂ αᵢ+αⱼ; H=[[2,−3],[−3,2]], β=(1,1) | A₂ height 2→1; H-norm β=−2, both reflections height 2→3 | Pass; infinite countermodel excluded by finite ι  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 50. |
| 51. Longest and closed-chamber examples | A₂,G₂; A₂ x=0 | Longest lengths/positive counts 3=3,6=6; orbit(0)∩closed chamber={0}, stabilizer order 6 | Pass; uniqueness of orbit point is not freeness  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 51. |
| 52. Classification_independent_base and base transitivity | A₁,A₂ | A₁: two bases, each [2], reflection swaps; A₂: six bases, all type A₂ with determinant 3 | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 52. |
| 55. Finite type is definite, not semidefinite | [2], empty, affine A₁ matrix | q(1)=2>0; empty condition vacuous; affine q(1,1)=0, so rejected | Pass  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 55. |
| 56. Rational_classification and index distinction | Native A₁,A₂,G₂; integral A₁ | Root/rank pairs (2,1),(6,2),(12,2); A₁ integral root span 2ℤ, coroot span ℤ, rational spans both ℚ | Pass; wrong one-root A₁ carrier removed  Carried from [r7](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md), row 56. |

| N01. Supplied Cartan transport (§§1.3/3.1 contracts) | B₂ relabelling; A₁ over ℚ×ℚ | T[[2,−2],[−1,2]]T=[[2,−1],[−2,2]]=reindex C. Over ℚ×ℚ, root 1/coroot 2 gives integer Cartan [2] before and after identity transport, though (1,0)(0,1)=0 | Pass. Native identity needs characteristic zero/crystallographicity, not a domain or finite root indices; previous R02 repaired |
| N02. Canonical positive form and its root-span restriction | Non-spanning A₁ in ℚ², roots ±e₁ and coroots ±2e₁ | Canonical sum of coroot squares at e₁ is 2²+(−2)²=8>0; at e₂ it is 0, but e₂ is outside the root span | Pass. Corrected files supply the form and positivity on the stated span, not ambient positive definiteness |
| N03. Native reindexing equivalence and inverse | Three orthogonal nodes, e=(0 1 2); identity | Inverse native map sends s₀→s′₁; forward native map sends s′₀→s₂. Inverse(e(i))=(0,1,2); identity sends each sᵢ→sᵢ | Pass. The new three-cycle Check detects the wrong direction |
| N04. Reindexed form and reflection | A₂ transposition T | TᵀBT=B=[[1,−1/2],[−1/2,1]]; TS₀=S₁T=[[0,1],[−1,1]]; TS₀e₀=−e₁ | Pass. Geometric comparison retained, supplied abstract map consumed |
| N05. Reindexed representation and composition | A₂ w=s₀s₁, transposition | f(w)=s′₁s′₀; Tρ(w)e₀=(1,0)=ρ′(f(w))Te₀. T²=identity and inverse reindexing fixes both generators | Pass. New word and inverse Checks are true |
| N06. Marked Weyl presentation at corrected source locator | Ranks zero/one; A₂ | Presented/image orders 1=1,2=2,6=6. A₂ generator s₀ sends e₀→(−1,0); swapped generator sends e₀→(1,1) | Pass. Marking excludes the swap; source §1.9 pp.16–18 is correct |
| N07. Presented length equals inversions at corrected source locator | A₂ words [],[0],[0,1],[0,1,0]; rank zero | Permutations (0,1,2),(1,0,2),(1,2,0),(2,1,0) have inversion counts 0,1,2,3, equal to respective minimal lengths; empty system gives 0=0 | Pass. §1.7 Corollary p.14 supplies equality; previous locator defect repaired |
| N08. Base-independent type with simultaneous Cartan reindexing | B₂/C₂; B₃/C₃; empty | B₂ swap gives [[2,−1],[−2,2]] rather than [[2,−2],[−1,2]]; Valid(B2)=true, Valid(C2)=false. B₃/C₃ have respectively 2/1 long simple roots; valid rank-zero types=0 | Pass. Oriented reindexing preserves the type without asserting literal entry equality |
| N09. Broadened type-A equivalence | A₁,A₂,A₃; ℤ[1/2] rank-one pairing | Weyl/permutation orders 2=2!,6=3!,24=4!; roots ±1/coroots ±2 over ℤ[1/2] give s=−1 and order 2 | Pass. General root-pairing statement remains compatible with ordinary spanning examples |
| N10. New non-spanning type-A Check | ℚ² dot pairing, roots ±(1,0), coroots ±(2,0) | Pairing of matching root/coroot=2; reflection S=diag(−1,1), S²=I, S≠I, Se₁=−e₁, Se₂=e₂. Root and coroot spans both have dimension 1<2; Weyl order 2=order S₂ | Pass. Removing spanning is valid; Layer 2 already treats root pairings without it |
| N11. Type-A root/action and inversion API without spanning | A₂ with a fixed extra rational direction; node reversal | Six roots, three positives, Weyl order 6. Adjacent products give (1,2,0)≠(2,0,1); longest permutation (2,1,0) has 3 inversions. Every Weyl element sends extra basis vector e₃→e₃ | Pass. Use the marked-presentation route; no ambient isomorphism to a spanning model is needed |
| N12. Competing ownership and duplicate companion | Empty, rank one, infinite dihedral; retained length conventions | Both general signatures give one-point injectivity in rank zero, distinct [1]/[−1] in rank one, and (2n+1,2n)=(1,0),(3,2),(5,4) for n=0,1,2. B₂/G₂/F₄ long-node sets remain {0}/{1}/{0,1} | Mathematical statements agree; duplicate ownership R01 and duplicate companion R02 remain |

The root-pairing hypotheses exclude zero rings and positive characteristic; the geometric statements fix ℝ. In N10 the perfect dot pairing and independent one-element base satisfy the native carrier conditions even though neither family spans the ambient plane. Its extra direction is fixed. More generally the first proof route in §3.2 uses Layer 2's non-spanning marked presentation, so it does not apply `equivOfCartanMatrixEq` outside that lemma's spanning hypotheses. No counterexample or new mathematical defect was found in the changed statements.

### Pinned declarations, duplication and ownership

The following are the declarations opened again for the changes and their dependencies, at the manifest pins. Unchanged library inventory and mathematical audits are carried from [the previous report](packages/RootSystems/reports/PRREVIEW-RootSystems~7.md).

| File at pin | Declarations and verified role |
|---|---|
| `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:377` | `RootPairing.Base.map_equiv_cartanMatrix`: mapped Cartan matrix is reindexed by `supportMapEquiv`; `omit [IsDomain R] [Finite ι]` and the elaborated signature confirm the new contract's generality |
| `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:355` | `equivOfCartanMatrixEq`: rigidity for spanning systems; it is not a general ambient-isomorphism theorem for N10 |
| `Mathlib/GroupTheory/Coxeter/Basic.lean:127` | `CoxeterMatrix.reindexGroupEquiv`: reindexed group to original group; generator equations at 137/140 give e⁻¹/e respectively |
| `Mathlib/LinearAlgebra/RootSystem/Finite/CanonicalBilinear.lean:85` | `RootForm`, with sum-of-coroot-products formula at 92; `posRootForm` at 346 is the corrected construction locator |
| `Mathlib/LinearAlgebra/RootSystem/Finite/Nondegenerate.lean:205` | `posRootForm_rootFormIn_posDef`: positivity of the restricted form; native signature includes the ordered coefficient ring and domain hypotheses |
| `Mathlib/LinearAlgebra/RootSystem/WeylGroup.lean:55` | `weylGroup`: subgroup generated by actual root reflections; `ofIdx` at 62 and `weylGroupToPerm` at 162 identify the relevant objects |
| `TauCeti/LinearAlgebra/RootSystem/Coxeter/Presentation.lean:57` | `weylCoxeterHom`, generator equation at 66, word equation at 75, surjectivity at 82: finite crystallographic pairings over characteristic-zero domains; reducedness for surjectivity; no spanning |
| `TauCeti/LinearAlgebra/RootSystem/Weyl/Group.lean:153` | `weylGroupToPerm_injective` requires spanning. The new type-A route does not claim this lemma applies to the whole ambient pairing in N10 |
| `TauCeti/LinearAlgebra/RootSystem/Weyl/Dihedral.lean:121` | Native A₂ dihedral comparison covers rank two, not the new theorem for every n |

Object searches used the pinned Coxeter/root-system trees, the `roadmaps grep` service over main/open heads, and board package READMEs/Lean files. The native Cartan and reindexing ingredients are now consumed, not redeclared. The existing RootSystems specification on main is the owner being extended; another revision of that same roadmap is not treated as a new supplier or a competing new roadmap. The retained general geometric construction still conflicts with EnriquesSurfaces, as witnessed in R01. No additional competing owner for the changed finite Weyl comparison was established. The change introduces no new fully qualified name.

All seven cross-roadmap references were resolved again at the copies allowed by the brief:

- `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:351,370` on main: Layers 1–2 cover root-space/weight-lattice and integrality interfaces.
- `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:237` on main: Layer 3 specializes the root/Weyl and highest-weight theories to matrix groups.
- `TauCetiRoadmap/ReflectionInvariantTheory/README.md:68` on main: §4 owns degrees, exponents and the root-height dictionary and consumes RootSystems.
- `TauCetiRoadmap/RootSystemsPartII/README.md:69,115,201` at its supplied new-roadmap head: integral dominance/Stembridge, orthogonal folding and general finite diagram folding, respectively.
- `TauCetiRoadmap/CFSGStatement/README.md:195` on main: L0 consumes the numbered integral datum; the targeted CFSG acceptance build still succeeds.
- `TauCetiRoadmap/ReductiveGroups/README.md:1092` on main: Layer 9 owns pinned Chevalley–Demazure group schemes and consumes the numbered root datum.
- `TauCetiRoadmap/EnriquesSurfaces/README.md:523–542` and `Suggested.lean:36` at the supplied new-roadmap head: the general theory still has duplicate ownership; its specialized normalization −intersection=2B agrees with this roadmap.

The resolver reported no unresolved roadmap citations or local Lean names. Its notice that it did not inspect external libraries is not taken as evidence about those names; the pin checks above supply that evidence. Repository shape was compared with main's ReflectionInvariantTheory and the LieHighestWeight/other family layers; no changed definition loses its API or discriminating Checks. No route-specific restriction, computational algorithm, new admitted data, `set_option`, upward supply or cycle is introduced by this revision.

### Seeded source sample

The legal source-service cache for **humphreys-coxeter** identifies the University of Washington institutional copy and the OCR extraction. I read the changed locators from that cache; a redundant fetch was stopped after the existing text was located. No source material was copied into the worktree or this report. Other works and their access limitations are carried from the previous report; an unchanged uncertified source is not reopened by this incremental review. No locator in the README is explicitly marked unverified.

| Seeded subsection | Evidence and incremental disposition |
|---|---|
| 1.1 Positive vectors and standard roots | Unchanged; carry r7's §5.4 p.111 audit, `humphreys-coxeter line 4302` and line 4309. Root orbit/unit norm and coefficient signs agree with rows 1–12 |
| 1.2 Rank-two positivity and sign/length | Unchanged; carry r7's §5.4 Theorem pp.111–113 audit, `humphreys-coxeter line 4324`, line 4364 and line 4370. Right multiplication and k<m remain essential; arbitrary-index extension is explicitly a roadmap argument |
| 1.3 Faithfulness and transport | Changed transport checked against the generator formula in §5.3 pp.109–110, `humphreys-coxeter line 4213`, line 4226 and line 4266, plus native reindexing. Source §5.4 Corollary p.113 at line 4386 proves faithfulness; §5.5 at line 4394 describes parabolic comparison. N03–N05 fix the direction explicitly |
| 1.4 Integral comparison | Unchanged; carry r7's derived-integral-statement audit using §5.3 and §5.4, `humphreys-coxeter line 4226` and line 4386. It is not presented as a separately numbered integral theorem in the book |
| 2.1 Completeness and length | Re-read §1.9 Theorem pp.16–18 at `humphreys-coxeter line 809` through line 865 and §1.7 Corollary p.14 at line 717. New locators are correct. Book setting is finite real reflection groups; the root-pairing extension uses the explicit native algebraic inputs and local completeness target |
| 3.1 Classification independent of a base | Changed transport step checked directly against the pinned Cartan identity. Bourbaki VI §§1,4 and Humphreys Lie §§10–11 remain uncertified; no claim is made to have read their exact hypotheses/pages |
| 3.2 Type A | The broadened root-pairing signature and its non-spanning Check were tested in N09–N11. The first route is supported at the same generality by Layer 2; Bourbaki VI §4's exact text remains uncertified |

Front matter at `humphreys-coxeter line 72–73` gives first publication in 1990 and corrected paperback printings in 1992/1994, supporting the revised bibliographic description. The finite-generator convention is at line 4101; the explicit arbitrary-index extension is not attributed verbatim to that source. The revised paragraphs are not copied from the accessible source passages.

## Not verifiable

- **bourbaki-lie**, DOI 10.1007/978-3-540-34491-9, VI §§1,4: previous source-service outcome was `uncertified`, paywalled publisher. Exact classification and type-A theorem/page locators and source hypotheses remain unread; this limitation is inherited, not a new missing-text request.
- **humphreys-lie**, DOI 10.1007/978-1-4612-6398-2, §§10–11: previous `uncertified` paywalled outcome retained. Exact source text remains uncertified.
- **bjorner-brenti**, DOI 10.1007/3-540-27596-7, §3.3: previous `uncertified` paywalled outcome retained; its unchanged abstract word-property citation was not reopened.
- **kac90**, DOI 10.1017/CBO9780511626234, Ch.4: r7 found the Cambridge landing page but no legal full text. This unchanged terminology citation remains unverified. It supplies no new prerequisite in this diff, and this review is complete without reopening the request.
- Textual independence can be certified only against the accessible Humphreys passages. The inaccessible books were not compared for copied wording.

## Source issues

The previously reported rank-zero issue is retained; the relevant source statement was reread at `humphreys-coxeter line 4160`. No new source error was found in the changed locators.

- **Error** in humphreys-coxeter at §5.1, Proposition, printed p.107: the source says every Coxeter system has a surjective sign homomorphism to {1,−1}; it should be surjective for nonempty generators, and only a homomorphism in rank zero; affects a stated result.
