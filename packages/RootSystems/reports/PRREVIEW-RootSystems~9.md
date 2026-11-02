# Review of RootSystems (pull request #1278 at f33895a)
Folder: `TauCetiRoadmap/RepresentationTheory/RootSystems/`
**Verdict:** needs changes

Incremental re-review of 22 changed lines since `a857ef5`. One P2 ownership finding remains; two P3 findings remain. The new source locators are correct. The gate, dependency check, targeted build and direct elaboration pass. No pull-request file was changed.

## R01 (P2) — Complete the ownership transfer of general geometric faithfulness

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:32` — “The ownership boundary with EnriquesSurfaces §5.2 places the general arbitrary-index geometric sign, faithfulness and integral comparison results here in §1.”

**Claim:** EnriquesSurfaces consumes this general theory, but its supplied head still independently owns it.

**Witness:** `TauCetiRoadmap/EnriquesSurfaces/README.md:525–533` constructs arbitrary-index faithfulness, root signs and transport. Its `Suggested.lean:36` states the same injectivity theorem. Both give reflection −1 in rank one and infinite-dihedral orbit value (3,2).

**Exact repair:** Keep the general theory in RootSystems §1. In the consumer's own repair, make EnriquesSurfaces §5.2 consume these named sections and remove its duplicate general construction and signature; retain its T246 and surface/congruence applications. Do not add a reverse supplier edge. On the witnesses this leaves one general action with values −1 and (3,2), plus its specialized application. No edit outside this folder is requested in this pull request. This repeats r8 R01; no repair report marking it not actionable was supplied or found among this package's reports.

## R02 (P3) — Delete the duplicate geometric companion

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/GeometricFaithfulnessTargets.lean:13` — `theorem geometricRepresentation_injective`; also lines 1 and 4–8.

**Claim:** This is an additional acceptance theorem in the required Lean form.

**Witness:** It duplicates `Suggested.lean:59`. A fresh scratch probe closes it with `exact TauCetiRoadmap.RepresentationTheory.RootSystems.geometric_faithfulness cs`. The companion lacks `import Mathlib` and a declaration docstring and refers to nonexistent section “3G”.

**Exact repair:** Delete `GeometricFaithfulnessTargets.lean`; retain `geometric_faithfulness` in `Suggested.lean`. This loses no headline: both statements give the one-point injective map in rank zero, distinct [1]/[−1] in rank one, and orbit values (1,0),(3,2),(5,4) in infinite dihedral type. The passing gate does not detect these companion defects. This repeats r8 R02.

## R03 (P3) — Record the cited works in the source manifest

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:627–643`, the References list; the folder has no `sources.toml`.

**Claim:** The five cited works have reproducible source records. The revised classification/type-A locators now do identify the intended passages, but their records remain absent.

**Witness:** No `TauCetiRoadmap/RepresentationTheory/RootSystems/sources.toml` exists. The accessible replacement locators resolve to `humphreys-coxeter line 579`, line 1657 and line 1756; their legal provenance and the other works' settled access outcomes are unrecorded in the folder.

**Exact repair:** Add the five source records under the established keys `humphreys-coxeter`, `bourbaki-lie`, `humphreys-lie`, `bjorner-brenti`, `kac90`, retaining the established access outcomes without claiming unread text was verified. Record the newly verified Humphreys locators and preserve the distinction between real source statements and the native algebraic extensions. This is the remaining part of r8 R03. The A₁ comparison still has one type and order 2; A₂ still has six bases, order 6 and longest length 3. No mathematical change is required.

## Previous findings

- R01 — not repaired: `README.md:32–37` is unchanged; the supplied EnriquesSurfaces §5.2 and `Suggested.lean:36` still independently own general faithfulness and signs. Repeated as R01.
- R02 — not repaired: `GeometricFaithfulnessTargets.lean:1–17` is unchanged, including its duplicate theorem, missing Mathlib import/docstring and obsolete “3G” references. Repeated as R02.
- R03 — partly repaired: `README.md:514–517,532–535,571–575,631–634` adds correct claim-level locators and distinguishes real statements from algebraic extensions. Source records remain absent; only that residual defect is repeated as R03.

## Verified sound

### Scope, gate and elaboration

The head is `f33895a5b297f27ff165d0ed2da8c7cea5c3145c`. The diff from `a857ef5` changes only 22 lines in this README; both Lean files are byte-for-byte unchanged. The prescribed outside-folder diff is empty, and the permitted family index still links RootSystems at `TauCetiRoadmap/RepresentationTheory/README.md:29`. The worktree remains clean. Repository README and CONTRIBUTING were read; unchanged shape checks against main's family roadmaps and ReflectionInvariantTheory are carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md).

The supplied worker gate passes including `build=0`. The fresh scanner/dependency gate reports:

```text
gate RootSystems: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The separately rerun prescribed dependency check reports:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. All seven `Needs` blocks retain their earlier direction; the new lines name pinned library inputs and Layer 2, not new roadmap suppliers. No supplier gap is declared.

The permitted targeted build of `TauCetiRoadmap.RepresentationTheory.RootSystems.Suggested` and `TauCetiRoadmap.CFSGStatement.Suggested` passed (9058 jobs). Direct `lake env lean` elaboration of `Suggested.lean` then exited 0 with exactly nine `sorry` warnings and no other warning. The worker's earlier missing-object signature failure is resolved by this build.

A scratch copy elaborated `#check @name` for all **11 declarations** across the two listed Lean files, and **four native signatures** needed by the revised classification route. No hypothesis disappeared: classification retains finite nonempty indices, spanning, reducedness, crystallographicity and irreducibility; the coefficient ring is a characteristic-zero domain. Rational classification uses ℚ. Type A retains finite reduced crystallographic indices and n≥1 but deliberately does not require spanning. No signature changed during review.

The **nine headlines** are rank-two nonnegativity; root sign/right descent; geometric faithfulness; integral realization; marked Weyl presentation injectivity; presented length equals inversions; base-independent classification; rational classification; and the type-A symmetric-group equivalence. All nine remain stated on native carriers, using one simple positivity definition. The docstring accounts for them and claims no missing carrier. Fresh one-tactic scratch probes (`simp`, `rfl`, `infer_instance`) left all nine main admissions open. The companion closed with the single `exact` recorded in R02. Nearest-library-lemma padding checks for unchanged targets are carried from r8; the newly cited based classification and rigidity statements do not themselves assert the base-independent or rational classification headlines.

### Computed adversarial table

There are **63 rows: 57 carried from r8 and six recomputed for the revised passages and their dependent statements**. Each carried row cites r8 explicitly; these are retained evidence, not claims of a fresh full mathematical review. Rows 52,56,N08,N09,N11 of r8 are replaced by the new rows below. All seven seeded subsections, all nine headlines and all findings are represented. Products act with the rightmost factor first.

| Statement | Instances | Computed values on the two sides | Result / change |
|---|---|---|---|
| 1. GeometricPositive definition | αᵢ, 0, αᵢ−αⱼ | Coefficients (1,0),(0,0),(1,−1); positivity true,false,false | Pass; zero and mixed signs excluded Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 1. |
| 2. Positivity iff weak cone and nonzero | Same three vectors | RHS true,false,false = LHS true,false,false | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 2. |
| 3. Positive scalar preservation/reflection | v=(1,2), scalars 2,0,−1 | 2v=(2,4) positive; 0v=0 not positive; −v=(−1,−2) not positive | Pass; strict scalar hypothesis necessary Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 3. |
| 4. Addition of positive vectors | (1,0)+(0,1) | Sum=(1,1), both coefficients ≥0 and first >0 | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 4. |
| 5. Opposite signs disjoint | v=(1,1) and −v | Positive(v)=true, Positive(−v)=false | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 5. |
| 6. Standard-root orbit definition | A₁; empty index | Orbit={1,−1}, not {0,1,−1}; empty orbit=∅ | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 6. |
| 7. Orbit stability | A₂, σᵢ acting on its six roots | ±αᵢ↔∓αᵢ; αⱼ↔αᵢ+αⱼ and their negatives | Six roots map to six roots Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 7. |
| 8. Root nonzero and B-norm 1 | A₂, v=(1,1) | B(v,v)=1+1−1=1≠0; orbit vectors nonzero | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 8. |
| 9. Positivity does not define roots or norm positivity | Infinite dihedral v=(1,1); orthogonal v=(1,−1) | First: positive, norm 0, not root; second: neither sign, norm 2 | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 9. |
| 10. Root sign partition | A₂ roots ±(1,0),±(0,1),±(1,1) | Three positive, three negative, intersection empty, union size 6 | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 10. |
| 11. Simple reflection permutes other positives | A₂ σᵢ | (0,1)↔(1,1); (1,0)→(−1,0) | Pass; own root must be excluded Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 11. |
| 12. Root on one simple line is ±αᵢ | v=tαᵢ, norm 1 | t²=1 gives t=±1; t=2 gives norm 4 | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 12. |
| 13. Infinite-index finite-support convention | I=ℕ, all off-diagonals 2, word s₀s₁ | α₂→α₂, coefficient 1 at 2; α₀→−α₀ | Pass; unused coordinates fixed Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 13. |
| 14. Gram conventions | m=1,2,3,0 | −cos π=1; −cos(π/2)=0; −cos(π/3)=−1/2; −cos(π/0)=−1 using total division | Pass; m=0 is infinite exponent Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 14. |
| 15. Alternating word and multiplication order | A₂ k=1,2 | Words [j],[i,j]; images αᵢ→(1,1),(0,1); reversed product gives (−1,−1) | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 15. |
| 16. RankTwo_nonnegative, equal indices | i=j, m=1 | k<1 forces k=0; image αᵢ=1αᵢ+0αᵢ | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 16. |
| 17. RankTwo_nonnegative, orthogonal | m=2, k=0,1; excluded k=2 | Images (1,0),(1,0); at k=2: (−1,0) | Pass; strict endpoint necessary Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 17. |
| 18. RankTwo_nonnegative, A₂ | m=3, k=0,1,2; excluded 3 | (1,0),(1,1),(0,1); at 3: (0,−1) | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 18. |
| 19. Rank-two trigonometric formula | m=4, k=0,1,2,3 | Formula and action both (1,0),(1,√2),(1,√2),(1,0) | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 19. |
| 20. Noncrystallographic recurrence | m=5, φ=(1+√5)/2 | k=1,2,3 give (1,φ),(φ,φ),(φ,1) on both sides | Pass; not narrowed to crystallographic types Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 20. |
| 21. Rank-two m=6 recurrence | k=1,2,3,4,5 | Both sides (1,√3),(2,√3),(2,√3),(1,√3),(1,0) | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 21. |
| 22. Infinite recurrence without division | m=0, k=0,…,4 | S(k)=k; formula/action (1,0),(1,2),(3,2),(3,4),(5,4) | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 22. |
| 23. Finite sine denominator | m=2,3,4,6 | sin θ=1,√3/2,√2/2,1/2, all nonzero | Pass; i=j not subjected to denominator argument Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 23. |
| 24. Positive sign iff right ascent | A₂ w=sᵢsⱼ | ℓ(w)=2; ℓ(wsᵢ)=3; wαᵢ=(0,1) positive; true↔true | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 24. |
| 25. Negative sign iff right descent | Same w, root j | ℓ(wsⱼ)=1; wαⱼ=(−1,−1); −wαⱼ=(1,1) positive; true↔true | Pass; swapped left criterion fails Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 25. |
| 26. Both sign equivalences, rank one | w=1,s | Length pairs (0,1),(1,0); root images +1,−1; positive iff no descent, negative iff descent | Pass in both directions Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 26. |
| 27. Parabolic induction reduces length | A₂ w=sᵢsⱼ, J={i,j} | u=1,v=w: 2=0+2, v≠1, 0<2; v ends j | Pass; induction not circular Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 27. |
| 28. Geometric_faithfulness, empty index | W=1, zero space | Domain and image cardinalities 1=1 | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 28. |
| 29. Geometric_faithfulness, rank one | W=C₂ | Images [1],[−1] are distinct; kernel={1} | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 29. |
| 30. Faithfulness with degenerate form | Infinite dihedral | det B=0; (σᵢσⱼ)ⁿαᵢ=(2n+1,2n), n=0,1,2 gives (1,0),(3,2),(5,4) | Pass; no nondegeneracy needed Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 30. |
| 33. Parabolic extension by zero | A₂ J={i}, u=1 | Eσ(1)=−αᵢ=σᵢE(1); B(E1,E1)=1=Bⱼ(1,1) | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 33. |
| 34. Parabolic injectivity/image | A₂ J=∅,{i},I | Source/image orders 1=1,2=2,6=6 | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 34. |
| 35. Composition/identity of transports | A₂ T=node swap | T²αᵢ=αᵢ; nested ∅⊂{i}⊂I sends 0→0 by either route | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 35. |
| 36. Representation product and inverse laws | A₂ σᵢ,σⱼ | σᵢσⱼ=[[0,−1],[1,−1]]; inverse=[[−1,1],[−1,0]]; product=identity | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 36. |
| 37. Finsupp-to-functions transport | Two finite coordinates, x=(2,3) | Both carriers give σᵢx=(1,3); Tρ(sᵢ)T⁻¹x=(1,3) | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 37. |
| 38. Integral realization and scalar inclusion | A=[2], x=1 | Integer action −1; cast(−1)=−1=real action(cast 1) | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 38. |
| 39. Integral Gram hypothesis rejects wrong scale | A=[1], x=1 | hA would require 1=2, false; wrong action 1−1=0 | Pass; zero map excluded Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 39. |
| 40. Integral reflection and form preservation | A₂, x=eⱼ | σᵢx=(1,1); xᵀAx=2=(σᵢx)ᵀAσᵢx | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 40. |
| 41. Integral action on degenerate lattice | A=[[2,−2],[−2,2]] | Product sends eᵢ→(3,2), integral cast same; norm 2=2(3−2)² | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 41. |
| 42. Integral image and group laws | Rank one on ℤ | Image={1,−1}=generated reflection group; (−1)²=1 | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 42. |
| 43. Transport to a specified integral basis | Rank-one L′=ℤ, marked basis e=−1 | Coordinate 1 maps to −1; reflected coordinate −1 maps to +1, matching reflection of −1 | Pass; marking retained Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 43. |
| 44. Reduction is not faithful | Rank one mod 2 and mod 3 | −1=1 mod 2, kernel size 2; −1=2≠1 mod 3, kernel size 1 | Pass; no modular faithfulness claimed Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 44. |
| 45. Nonintegral type excluded only from integral comparison | I₂(5) | Off-diagonal 2B=−φ∉ℤ; general real sign theorem still applies | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 45. |
| 47. Presentation marking negative control | A₂ generator swap | Intended image of αᵢ is (−1,0); swapped image is (1,1) | Excluded by native generator equation Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 47. |
| 48. Root-word braid and cancellation route | A₂ 121,212,11 | 121=212=w₀, both minimal length 3; 11=1 with minimal length 0 | Pass; actual list length 2 is not minimal length Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 48. |
| 50. Lowering supplier and negative control | A₂ αᵢ+αⱼ; H=[[2,−3],[−3,2]], β=(1,1) | A₂ height 2→1; H-norm β=−2, both reflections height 2→3 | Pass; infinite countermodel excluded by finite ι Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 50. |
| 51. Longest and closed-chamber examples | A₂,G₂; A₂ x=0 | Longest lengths/positive counts 3=3,6=6; orbit(0)∩closed chamber={0}, stabilizer order 6 | Pass; uniqueness of orbit point is not freeness Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 51. |
| 55. Finite type is definite, not semidefinite | [2], empty, affine A₁ matrix | q(1)=2>0; empty condition vacuous; affine q(1,1)=0, so rejected | Pass Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row 55. |
| N01. Supplied Cartan transport (§§1.3/3.1 contracts) | B₂ relabelling; A₁ over ℚ×ℚ | T[[2,−2],[−1,2]]T=[[2,−1],[−2,2]]=reindex C. Over ℚ×ℚ, root 1/coroot 2 gives integer Cartan [2] before and after identity transport, though (1,0)(0,1)=0 | Pass. Native identity needs characteristic zero/crystallographicity, not a domain or finite root indices; previous R02 repaired Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row N01. |
| N02. Canonical positive form and its root-span restriction | Non-spanning A₁ in ℚ², roots ±e₁ and coroots ±2e₁ | Canonical sum of coroot squares at e₁ is 2²+(−2)²=8>0; at e₂ it is 0, but e₂ is outside the root span | Pass. Corrected files supply the form and positivity on the stated span, not ambient positive definiteness Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row N02. |
| N03. Native reindexing equivalence and inverse | Three orthogonal nodes, e=(0 1 2); identity | Inverse native map sends s₀→s′₁; forward native map sends s′₀→s₂. Inverse(e(i))=(0,1,2); identity sends each sᵢ→sᵢ | Pass. The new three-cycle Check detects the wrong direction Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row N03. |
| N04. Reindexed form and reflection | A₂ transposition T | TᵀBT=B=[[1,−1/2],[−1/2,1]]; TS₀=S₁T=[[0,1],[−1,1]]; TS₀e₀=−e₁ | Pass. Geometric comparison retained, supplied abstract map consumed Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row N04. |
| N05. Reindexed representation and composition | A₂ w=s₀s₁, transposition | f(w)=s′₁s′₀; Tρ(w)e₀=(1,0)=ρ′(f(w))Te₀. T²=identity and inverse reindexing fixes both generators | Pass. New word and inverse Checks are true Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row N05. |
| N06. Marked Weyl presentation at corrected source locator | Ranks zero/one; A₂ | Presented/image orders 1=1,2=2,6=6. A₂ generator s₀ sends e₀→(−1,0); swapped generator sends e₀→(1,1) | Pass. Marking excludes the swap; source §1.9 pp.16–18 is correct Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row N06. |
| N07. Presented length equals inversions at corrected source locator | A₂ words [],[0],[0,1],[0,1,0]; rank zero | Permutations (0,1,2),(1,0,2),(1,2,0),(2,1,0) have inversion counts 0,1,2,3, equal to respective minimal lengths; empty system gives 0=0 | Pass. §1.7 Corollary p.14 supplies equality; previous locator defect repaired Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row N07. |
| N10. New non-spanning type-A Check | ℚ² dot pairing, roots ±(1,0), coroots ±(2,0) | Pairing of matching root/coroot=2; reflection S=diag(−1,1), S²=I, S≠I, Se₁=−e₁, Se₂=e₂. Root and coroot spans both have dimension 1<2; Weyl order 2=order S₂ | Pass. Removing spanning is valid; Layer 2 already treats root pairings without it Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row N10. |
| N12. Competing ownership and duplicate companion | Empty, rank one, infinite dihedral; retained length conventions | Both general signatures give one-point injectivity in rank zero, distinct [1]/[−1] in rank one, and (2n+1,2n)=(1,0),(3,2),(5,4) for n=0,1,2. B₂/G₂/F₄ long-node sets remain {0}/{1}/{0,1} | Mathematical statements agree; duplicate ownership R01 and duplicate companion R02 remain Carried from [r8](packages/RootSystems/reports/PRREVIEW-RootSystems~8.md), row N12. |

| U01. §3.1 base transitivity and positive-system induction | A₁; A₂ with the opposite positive system | A₁: two bases with matrices [2]=[2], reflection sends 1→−1. A₂: 6 bases=6 Weyl translates; disagreement counts along permutations (210),(120),(102),(012) are 3,2,1,0 | Pass. §1.4 Theorem and proof p.10 gives exactly the real induction; the finite algebraic sign argument preserves its decrement |
| U02. §3.1 base-independent classification and unbased transport | B₂ node swap; B₃/C₃; rank zero | T[[2,−2],[−1,2]]T=[[2,−1],[−2,2]]=reindexed matrix. Valid(B2)=true, Valid(C2)=false; B₃/C₃ have 2/1 long simple nodes. Rank zero has 0 valid types | Pass. Orientation and simultaneous reindexing distinguish the models; nonempty excludes rank zero. Supplied based classification is not replanned |
| U03. §3.1 rational classification via native models | A₁ roots ±1/coroots ±2 versus native roots ±2/coroots ±1; A₂,G₂ | Forward root map x↦2x gives 1→2; forward coroot map y↦y/2 gives 2→1; pairing 1·2=2·1=2. Root/rank pairs are (2,1),(6,2),(12,2) on both sides | Pass. ℚ permits the inverse scale; source p.39 is expressly a real summary, and the pinned rational models plus rigidity supply the rational existence route |
| U04. §3.2 type-A and marked adjacent generators | A₁,A₂,A₃; A₂ node reversal | Group orders 2=2!,6=3!,24=4!. A₂ generator images (01),(12) give products (120)≠(201); reversing the nodes swaps these two images | Pass. The cited coordinate action has n+1 labels, and marking depends on the specified relabelling |
| U05. §3.2 roots, counts and inversion length | Coordinate A₁,A₂,A₃; A₂ words [],[0],[0,1],[0,1,0] | Total/positive roots (2,1),(6,3),(12,6) equal n(n+1),n(n+1)/2. The four words give permutations (012),(102),(120),(210) and minimal lengths=inversions 0,1,2,3; longest A₃ length=6=positive count | Pass. §2.10 p.41 supplies coordinate roots and action; §1.7 Corollary p.14 supplies root-inversion length |
| U06. §3.2 transport to domain-valued non-spanning pairings | ℚ², roots ±(1,0), coroots ±(2,0); ℤ[1/2] rank one | Matching pairing 2; reflection diag(−1,1) squares to I, negates (1,0), fixes (0,1); root span dimension 1<2, Weyl order 2=S₂ order. Over ℤ[1/2], reflection −1 again has order 2 | Pass. Layer 2 has no spanning hypothesis; this route avoids applying ambient Cartan rigidity to a non-spanning pairing |

The changed prose does not narrow the general library targets or attribute an arbitrary-domain theorem to a real-vector-space source. Zero rings and positive characteristic are excluded by the explicit domain/characteristic-zero hypotheses. The positive-system induction uses finiteness and the simple-reflection sign law; it does not need an order on the coefficient domain. No new mathematical counterexample was found.

### Source sample and changed locators

The source-service cache for `humphreys-coxeter` identifies the legal University of Washington institutional copy and its OCR extraction. A fresh service fetch was started and stopped after that existing extraction was located; no new source or source text was placed in the repository. The following source lines were read for the changed passages. No README locator is explicitly flagged unverified.

| Seeded target | Evidence and disposition |
|---|---|
| 1.1 Positive vectors and standard roots | Unchanged: carry r8's §5.4 p.111 verification, `humphreys-coxeter line 4302` and line 4309, and table rows 1–12 |
| 1.2 Rank-two positivity and sign/length | Unchanged: carry r8's §5.4 Theorem pp.111–113 verification, `humphreys-coxeter line 4324`, line 4364 and line 4370; finite-support extension remains an explicit roadmap argument |
| 1.3 Faithfulness and transport | Unchanged: carry r8's §5.3 generator formula and §5.4 Corollary p.113 verification, `humphreys-coxeter line 4213`, line 4226 and line 4386; companion and ownership rechecked in R01–R02 |
| 1.4 Integral comparison | Unchanged: carry r8's derived-integral-statement verification against §5.3/§5.4, `humphreys-coxeter line 4226` and line 4386 |
| 2.1 Completeness and length | Completeness locator unchanged: carry r8's §1.9 Theorem pp.16–18 verification, `humphreys-coxeter line 809`. Re-read §1.7 Corollary p.14 at line 717 because §3.2 now cites it; it equates root inversion count and word length |
| 3.1 Classification independent of a base | Re-read §1.4 p.10: the simple-reflection sign lemma is at `humphreys-coxeter line 566`, conjugacy theorem at line 579, disagreement-count induction at line 581. Re-read §2.9 p.39 at line 1657: it summarizes classification and refers elsewhere for proof. The README accurately calls it a summary; the rational result explicitly uses pinned classification, realization and rigidity |
| 3.2 Type A | Re-read §2.10 p.41 at `humphreys-coxeter line 1756`: n≥1, sum-zero subspace in n+1 coordinates, n(n+1) roots, consecutive coordinate differences as simples and Sₙ₊₁ permuting coordinates (line 1763). Combine with §1.7 Corollary p.14, line 717, for inversion length. The domain-valued extension is assigned to Layer 2 |

The page numbers are printed pages, not scan indices. The unnumbered theorem in §1.4 and corollary in §1.7 are identified by section and page. The new wording is a paraphrase, not a copied source passage. No new inaccessible citation was introduced; the existing books and settled limitations below were not reopened.

### Pinned dependencies and ownership

The checked package commits agree with `lake-manifest.json`: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

| File at pin | Opened declaration and role |
|---|---|
| `TauCeti/LinearAlgebra/RootSystem/FiniteType/Classification.lean:127` | `TauCeti.existsUnique_dynkinType` classifies a specified base under finite, nonempty, spanning, reduced, crystallographic, irreducible characteristic-zero domain hypotheses; it does not quantify simultaneously over every base |
| `TauCeti/LinearAlgebra/RootSystem/Isomorphism.lean:137` | `TauCeti.nonempty_equiv_of_hasCartanType` gives equivalence of two spanning finite reduced crystallographic pairings of the same type over the same characteristic-zero domain; standing hypotheses are at lines 51–58 |
| `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/Rational.lean:80` | `DynkinType.rationalRootSystem` is the actual ℚ base change, with root indices `Fin t.numRoots` and coordinate indices `Fin t.rank`; `rationalBase` is at line 87 and `hasCartanType_rationalRootSystem` at line 191 |
| `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:377` | `RootPairing.Base.map_equiv_cartanMatrix` supplies simultaneous Cartan transport; its signature omits domain and finite-index assumptions. `equivOfCartanMatrixEq` at line 355 does require spanning for the rigidity route |
| `TauCeti/GroupTheory/Coxeter/Geometric.lean:99` | Explicitly distinguishes the constructed geometric action and exact rank-two orders from the still-unproved general faithfulness theorem; it does not discharge R01's duplicated target |

Object searches used pinned root-system/Coxeter sources, the `roadmaps grep` service over main/open heads, and board package README/Lean files. The changed paragraphs cite existing based classification, rational realization and rigidity rather than rebuilding them. RootSystems on main already owns the type-A and classification direction: this revision builds on that specification. Other revisions of that same roadmap are not imported as suppliers. The general-theory conflict with the supplied EnriquesSurfaces head persists. No new declaration name or additional competing owner was introduced by the 22-line diff.

All **seven cross-roadmap references** were resolved again against the allowed copies:

- `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:351,370` on main: root-space/weight-lattice and integrality interfaces in Layers 1–2.
- `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:237` on main: Layer 3 specializes the root/Weyl and highest-weight theories.
- `TauCetiRoadmap/ReflectionInvariantTheory/README.md:68` on main: §4 consumes RootSystems and owns degrees/exponents/root-height comparisons.
- `TauCetiRoadmap/RootSystemsPartII/README.md:69,115,201` at the supplied new-roadmap head: integral dominance/Stembridge, orthogonal folding, and general finite diagram folding. These are scope deferrals, not inputs to geometric faithfulness.
- `TauCetiRoadmap/CFSGStatement/README.md:195` on main: L0 consumes numbered integral data; its targeted acceptance build passes.
- `TauCetiRoadmap/ReductiveGroups/README.md:1092` on main: Layer 9 consumes numbered root data for pinned Chevalley–Demazure groups.
- `TauCetiRoadmap/EnriquesSurfaces/README.md:523` and `Suggested.lean:36` at the supplied new-roadmap head: §5.2 still duplicates general faithfulness and signs. Its specialized convention uses the same factor 2 between integral Gram and geometric form.

The resolver reports no unresolved roadmap citations or local Lean names. Its statement that it did not check external libraries was not used as evidence about native names; the pin reads and signature checks above provide that evidence. The unchanged broader duplication and shape audits are carried from r8. No new route restriction, computational algorithm, admitted data, `set_option`, upward supplier or dependency cycle occurs in this repair.

## Not verifiable

- **bourbaki-lie**, DOI 10.1007/978-3-540-34491-9, IV §1 and VI §§1,4: inherited `uncertified` paywalled publisher outcome. Its remaining unchanged citations were not reopened. The changed classification/type-A claims now have the accessible Humphreys locators checked above.
- **humphreys-lie**, DOI 10.1007/978-1-4612-6398-2, §§9–11: inherited `uncertified` paywalled publisher outcome; exact text remains unread.
- **bjorner-brenti**, DOI 10.1007/3-540-27596-7, §3.3: inherited `uncertified` paywalled publisher outcome; unchanged abstract word-property citation not reopened.
- **kac90**, DOI 10.1017/CBO9780511626234, Ch.4: the previous review records a Cambridge landing page but no legal full text. This unchanged terminology citation remains unverified and supplies no new prerequisite in the diff.
- Textual independence from inaccessible books is not certified. No new missing-text request is needed for this incremental review.

## Source issues

The rank-zero issue recorded in r8 was reread at `humphreys-coxeter line 4160` and retained. No new source mistake was found in the changed locators.

- **Error** in humphreys-coxeter at §5.1, Proposition, printed p.107: the source says every Coxeter system has a surjective sign homomorphism to {1,−1}; it should be surjective for nonempty generators, and only a homomorphism in rank zero; affects a stated result.
