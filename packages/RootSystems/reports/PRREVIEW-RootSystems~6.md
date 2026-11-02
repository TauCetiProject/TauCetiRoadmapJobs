# Review of RootSystems (pull request #1196 at 976a24c)
Folder: `TauCetiRoadmap/RepresentationTheory/RootSystems/`

**Verdict:** needs changes

## R01 (P2) — Delete the companion that violates the acceptance-file rules

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/InvariantMetricTargets.lean:13`, `set_option autoImplicit false`; also imports at lines 1–5 and duplicate targets at lines 22 and 28.

**Claim:** The rules apply to every listed Lean file. This companion still contains a prohibited option, five Mathlib submodule imports, and two redundant admissions. The passing gate does not inspect these violations successfully.

**Witness:** Line 13 contains the option literally. Both companion conclusions close by one `exact` application of `invariantMetric_unique_scale` or `squared_lengths_two_values` from `Suggested.lean`, respectively.

**Repair:** Delete `InvariantMetricTargets.lean`. Keep the two main-file headlines. The main module already builds and elaborates independently, with ten admissions. The duplicate scalar conclusion still gives c=3 on A₁; the duplicate length conclusion still gives {1,2} on B₂. Deleting the companion loses neither acceptance target.

This carries forward previous R04. Its previous P3 classification understated the brief's explicit binding rule that a `set_option` is blocking; P2 here records that acceptance failure, not a newly alleged mathematical error. The redundant signatures and import style alone would be P3. No supplied repair report marks this finding not actionable.

## R02 (P3) — Record the references and finish the remaining page locators

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:241`, “Bourbaki, Chapter VI §1, no. 6; Björner–Brenti, §2.2 and Theorem 3.3.1”; references at lines 609–622. The folder has no `sources.toml`.

**Claim:** Previous R05 is only partly repaired. The corrected Milne and SGA references and the metric derivation resolve its mathematical/locator concerns, but the four source records and the §1.2 printed-page locators are still missing.

**Witness:** The folder contains exactly `README.md`, `Suggested.lean`, and `InvariantMetricTargets.lean`. The §1.2 citations give sections/theorem numbers but no pages; all four source ids occur only in the README.

**Repair:** Add the source-service records under the existing ids `milne17`, `sga3iii`, `bourbaki46`, and `bjornerbrenti05`, preserving the last two books' settled uncertified outcomes. Add page locators from an authorized bibliographic/textual verification, without guessing. Keep the repaired C.43 p.618, C.55 p.625, and the SGA re-edition pagination. GL₂'s central/derived index remains 2, and A₂'s length/inversion list remains 0,1,1,2,2,3; this repair changes references, not mathematics.

## Previous findings

- R01 — repaired: `Suggested.lean:128–134` drops module irreducibility from type A; `README.md:571–575` retains the ℤ[1/2] example with proper invariant submodule 3R.
- R02 — repaired: `Suggested.lean:74–82` states marked unique extension of every Cartan-preserving simple permutation; `README.md:294–308` gives the matching domain hypotheses and native comparison route.
- R03 — repaired: `README.md:158–161` imports G₂ recognition by exact pinned name; `Suggested.lean:137–141` now asks only for the dihedral Weyl-group equivalence.
- R04 — not repaired: `InvariantMetricTargets.lean:1–13` retains submodule imports and `set_option`; its two signatures still duplicate the main module. Current R01.
- R05 — partly repaired: `README.md:345,387,411–423` corrects Milne pages, adds C.55, and derives general metric uniqueness; SGA pages are supplied. Source records and §1.2 page locators remain absent. Current R02.

## Verified sound

AI-assisted independent incremental re-review of **108 changed lines since 9d2d091**. The changed passages and their dependencies were reviewed directly; unchanged mathematical rows below are explicitly carried from [r5]. This is not a second full review.

### Head, gate, builds, and signatures

The inspected head is `976a24c9a3481396762adf43c451e53fb0d1fe75`. The incremental diff changes only the README and Suggested file. The requested full outside-folder diff is empty; the family index's RootSystems link resolves. No pull-request file was changed.

Pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The supplied content snapshot is `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`.

The supplied gate reports every counter zero, including `build=0`, and OK. The independently rerun gate returned:

```text
gate RootSystems: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The rerun does not print a build counter. Separately, the permitted targeted build of `TauCetiRoadmap.RepresentationTheory.RootSystems.Suggested` and `TauCetiRoadmap.CFSGStatement.Suggested` completed successfully (8996 jobs). Direct `lake env lean` elaboration of the requested Suggested file exited 0 with **ten sorry warnings and no other diagnostics**. This resolves the earlier missing-object-file failure in the supplied signature attempt.

A scratch copy printed `#check @name` for **all 13 explicit declarations**: ten main theorems, `basedAut`, and both companion theorems. The companion declarations were checked in the main module's native context, without copying its forbidden option/import configuration. All signatures elaborated. In particular:

- The new diagram-extension target retains finite root indices, spanning, reducedness, crystallographicity, characteristic zero, domain coefficients, and the Cartan-preservation premise.
- The type-A target no longer requires module irreducibility. Its n≥1 and actual Cartan-type premises remain.
- The G₂ target retains `IsG2`; the native class supplies crystallographicity, reducedness and irreducibility.
- Both positive-definiteness premises and irreducibility remain on metric uniqueness; all four finite/free lattice assumptions remain on the full-data complement.
- `basedAut` intentionally has only the assumptions needed to define a stabilizer; it asserts no finiteness, spanning, or complement property.

The three changed admitted theorems did not close under the one-tactic `simp`, `rfl`, or `infer_instance` probes. Reading the pinned Cartan comparison confirms that obtaining the new marked unique-extension statement requires stabilizer membership and uniqueness, not just one application of that data constructor. Both companion theorems close by single `exact` applications of the corresponding main-file statements. That proves duplication, not the underlying admitted mathematics. The unchanged main-theorem padding probes are carried from [r5].

### Changed mathematical statements: computed witnesses

These **25 rows** record actual values, including the statements whose only edit is a locator. General proofs are not inferred from these examples. Matrix coordinates use root rows, coroot columns, and left actions.

| Statement | Instances tried | Values computed on the two sides | Result / change |
|---|---|---|---|
| §2.1 base/open-chamber correspondence | A₁, x=1,0,−1 | Coroot evaluations 2,0,−2; reflection sends 1→−1 and the positive base to the negative base; identity preserves both | Pass; corrected SGA p.90. |
| §2.1 reflection conjugation | A₂ base reversal δ | δs₁δ⁻¹=s₂; both send α₁→α₁+α₂ and α₂→−α₂ | Pass; corrected SGA p.98. |
| §2.1 complement | A₁, A₂, empty spanning system | Orders Aut=2,12,1 equal W·based=2·1,6·2,1·1; intersection orders are 1 | Pass; corrected SGA p.99. |
| New marked based-automorphism extension, existence | Empty, A₁, A₂, D₄ | Cartan-preserving node permutations number 1,1,2,6; the corresponding basis-permutation root automorphisms also number 1,1,2,6 | Pass; new acceptance statement. |
| New marked extension, uniqueness | A₂ identity and reversal | Specified basis images are (e₁,e₂) or (e₂,e₁); their unique linear matrices are I or [[0,1],[1,0]]; reversal squared is I | Pass; marking excludes the other map. |
| Oriented-diagram hypothesis | B₂ node swap | C₁₂=−2, C₂₁=−1; after swapping the pair is (−1,−2), unequal to (−2,−1) | Pass; forbidden symmetry excluded. |
| Domain scope versus module irreducibility | A₁ over ℤ[1/2] | Root/coroot product 1·2=2; both span R; reflection 3→−3 preserves 3R, while 1∉3R since 3a≠2ᵏ | Pass; removed assumption was stronger than type A. |
| §2.3 full-data complement | Root-free integral ranks 0,1,2 | W=1; based subgroup=Aut=1,{±1},GL₂(ℤ), respectively; every g factors uniquely as 1·g | Pass; full central directions retained. |
| §2.3 central/derived finite index | GL₂ columns (1,−1),(1,1) | Determinant 2 gives index 2; projections of (1,0) are (1/2,−1/2)+(1/2,1/2)=(1,0) | Pass; C.43 p.618 supports finite index, not integral splitting. |
| §3.1 graph/irreducible decomposition | A₂, A₁², empty | A₂ has one connected block of dimension 2; A₁² has two blocks of dimension 1, total 2; empty has 0 blocks and dimension 0 | Pass; C.55 supplies the graph identification. |
| §3.2 positive scale | A₁, B=xy, C=3xy | C(1,1)/B(1,1)=3/1=3; C(1,1)=3=3B(1,1), whereas c=2 gives 2 | Pass; uniqueness and positivity retained. |
| §3.2 denominator and radical argument | Nonreduced roots ±1,±2; paired coroots ±2,±1 | At α=2, B(α,α)=4>0, C(α,α)=12, c=12/4=3; D(3,2)=18−3·6=0; D is zero, radical dimension 1 | Pass; no division by zero or reducedness premise. |
| New nonreduced example is a root pairing | Same four roots/coroots | Each paired product is 2; every reflection is x−2x=−x, permuting both four-element sets; spans have dimension 1=1 | Pass; 2 is a root twice another, so reducedness really fails. |
| General metric scope and reflection-stable radical | Roots ±1,±√2, coroots ±2,±√2; B=xy, C=3xy | Cross pairing √2 is not integral; at α=√2 the quotient is 6/2=3; D(x,α)=0 and reflection is −1 | Pass; neither crystallographicity nor reducedness is used in the derivation. |
| Coroot identity used in that derivation | Nonreduced α=2, α∨=1, x=3 | 2B(3,2)=12=3·4; 2C(3,2)=36=3·12; subtraction gives 0=0 for D | Pass; apply native identity separately to B and C, not to a nonexistent nondegenerate D. |
| §4.1 coefficient reflection | B₂ c=(1,0), short node | c₂−ΣⱼCⱼ₂cⱼ=0−(−2)=2; (2I−Cᵀ)c at node 2 minus c₂ is also 2; vector is (1,2), and reflecting again gives (1,0) | Pass; SGA pp.63–64 and transpose agree. |
| §5.1 type-A identification and counts | A₁ and A₂ | Reflection groups have 2 and 6 elements, equal to 2! and 3!; positive counts 1 and 3 equal n(n+1)/2 | Pass; changed Lean scope matches README. |
| §5.1 nonabelian generator convention | A₂ adjacent coordinate swaps | (12)(23)=(123), (23)(12)=(132), distinct; both have order 3 | Pass; gives S₃, not an abelian order-six model. |
| §5.1 ring example | A₁ over ℤ[1/2] | x−⟨x,2⟩·1=−x; W={1,−1} has 2 elements, equal to S₂; coweight 2 is a unit | Pass; repaired signature admits this model. |
| §5.1 rank-zero negative control | Empty system, n=0 or n≥1 | W order 1; at n=0, 1≤0 is false; at n≥1, empty support has size 0≠n | Pass; no incorrect A₁ identification. |
| §5.2 supplied G₂ recognition | Short-first G₂ | Cartan matrix [[2,−1],[−3,2]] equals the native G₂ matrix; off-diagonal product 3 | Pass; ownership moved to the pinned theorem. |
| §5.2 retained dihedral headline | G₂ simple reflection matrices | Product [[2,−3],[1,−1]] has cube −I and sixth power I; six rotations plus six reflections give 12=2·6 | Pass; no recognition conjunct remains. |
| §5.2 six positives and longest length | G₂ coefficient roots | Positives (1,0),(0,1),(1,1),(2,1),(3,1),(3,2); −I makes all six negative, giving inversion count 6 | Pass; fixes the dihedral parameter and length convention. |
| Companion unique-scale duplicate | A₁ B=xy, C=3xy | Main and companion conclusions both force c=3 by 3=c·1 | R01; same theorem under another name. |
| Companion squared-length duplicate | B₂ Euclidean form | Both conclusions admit (s,r)=(1,2), with actual length set {1,2}={s,rs} | R01; same theorem under another name. |

### Unchanged mathematical evidence carried forward

The following **61 rows** retain the computed values from [r5], rather than claiming that unchanged work was recomputed in this incremental review. Their section references are mathematical topics, not stale source line numbers. Changed claims and prior defective dispositions have been replaced by the table above.

| Statement | Instances tried | Values computed on the two sides | Result / change |
|---|---|---|---|
| RootPairing versus spanning mixin | A₁ and a root-free real line | A₁ root/coroot spans have dimension 1=1; empty roots on a line have span dimension 0≠1 | Pass: spanning is explicit where used. Carried from [r5]. |
| Integral root basis versus weight lattice | Simply connected A₁ | Root coefficient 1 evaluates to weight 2; fundamental weight 1 has root coefficient 1/2, outside the integer root lattice | Pass. Carried from [r5]. |
| Root/coroot normalization | A₁ root 2, coroot 1 | Pairing 2·1=2; reflection sends (2,1) to (−2,−1), preserving pairing 2 | Pass. Carried from [r5]. |
| Cartan row/column convention | B₂, c=(1,0), short node | Correct changed coordinate 0−(−2)=2; wrong transpose convention gives 1 | Pass. Carried from [r5]. |
| Left-action inversion convention | A₂, s₁s₂ | Images of α₁,α₂,α₁+α₂ are α₂,−(α₁+α₂),−α₁; inversion set is {α₂,α₁+α₂} | Pass. Carried from [r5]. |
| Contravariant cocharacter direction | σ=(123), standard dual bases | Forward weight e₁→e₂; contravariant coweight e₁→e₃; inverse e₁→e₂; pairings 1 versus wrong 0 | Pass. Carried from [r5]. |
| Native finite type | Empty matrix; [2]; affine A₁ | Empty positivity vacuous; q(1)=2>0; affine q(1,1)=0, so not positive definite | Pass. Carried from [r5]. |
| Native valid family labels | A₀,A₁,B₁,B₂,C₂,D₃ | Validity values false,true,false,true,false,false; B₂ and C₂ matrices become equal after node exchange | Pass. Carried from [r5]. |
| Cartan-to-Coxeter conversion | Diagonal; A₁²,A₂,B₂,G₂ | Cartan products 4;0,1,2,3 give Coxeter entries 1;2,3,4,6 | Pass; junk product 9 maps to 0 and is excluded by finite root hypotheses. Carried from [r5]. |
| Lowering supplier | A₂ and infinite H=[[2,−3],[−3,2]] | A₂ (1,1): height 2→1; H-model (1,1): height 2→3 under either simple reflection | Pass with finiteness; previous false signature removed. Carried from [r5]. |
| Infinite-model reflection iteration | H-model, e₁ | s₁s₂ iterates (1,0)→(8,3)→(55,21)→(377,144); each quadratic norm is 2 | Pass as a finiteness negative control. Carried from [r5]. |
| §1.1 marked presentation | Rank 0,A₁,A₂ | Group orders 1,2,6 on both sides; A₂ s₁²=s₂²=(s₁s₂)³=1 | Pass. Carried from [r5]. |
| §1.1 marking, wrong model | Swap A₂ generators | Intended generator 0 sends (1,0)→(−1,0); swapped generator sends it→(1,1) | Marking excludes wrong model. Carried from [r5]. |
| §1.2 `length_eq_inversions` | All six A₂ elements | Minimal lengths 0,1,1,2,2,3; inversion cardinalities 0,1,1,2,2,3 | Pass. Carried from [r5]. |
| Reduced/minimal expressions | A₂ words 11,121,212 | 11 represents identity, lengths 2 versus minimum 0; 121 and 212 both length 3 and represent w₀ | Pass. Carried from [r5]. |
| Native exchange/Matsumoto use | A₂, 121 shortened by s₁ | Delete first letter to get 21: length 3→2; 121=212 as permutations | Pass; imported, not replanned. Carried from [r5]. |
| Longest length | Empty,A₁,A₂,G₂ | Lengths 0,1,3,6 equal positive-root counts 0,1,3,6; all longest elements square to identity | Pass. Carried from [r5]. |
| Poincaré comparison | Empty,A₁,A₂; q=0,1 | Polynomials 1,1+q,1+2q+2q²+q³; A₂ evaluations 1 and 6 equal constant coefficient and group order | Pass. Carried from [r5]. |
| Bruhat subword comparison | A₂ w=s₁s₂ | Subwords give {1,s₁,s₂,s₁s₂}; s₂s₁ is absent and not ≤w | Pass in both directions. Carried from [r5]. |
| §2.1 `basedAut` | A₁,A₂,empty spanning system | Stabilizer orders 1,2,1; A₁ reflection sends {+} to {−}, so fails membership | Pass; genuine subgroup body. Carried from [r5]. |
| Based support closure | A₂ reversal δ | δ²=1 and δ⁻¹=δ; each sends the two-element support to itself | Pass. Carried from [r5]. |
| Semidirect multiplication | A₂, δ reversal | (1,δ)(s₁,1)=(s₂,δ); forward products both s₂δ=δs₁ | Pass; conjugation, not direct product. Carried from [r5]. |
| Semidirect inverse and transport | A₂ g=s₁δ | g⁻¹=δs₁=s₂δ; multiplying gives 1; (g⁻¹g)α₁=α₁ and likewise for coroots | Pass. Carried from [r5]. |
| Lattice stabilizer definition | D₄ intermediate lattice determined by one nonzero discriminant class | Three nonzero classes form an S₃-orbit of size 3; class stabilizer has 6/3=2 elements, not 6 | Pass. Carried from [r5]. |
| Lattice restriction/extension inverses | A₁ X=ℤ, Y=ℤ, roots ±2, coroots ±1 | Weight/coweight −1 extend to rational −1 and restrict back to −1; pairing (−2)(−1)=2 | Pass. Carried from [r5]. |
| Based lattice restriction | Same A₁ and D₄ intermediate form | A₁ based subgroup has order 1 before/after restriction; D₄ restricted subgroup has order 2 before/after | Pass. Carried from [r5]. |
| Reducible lattice gluing | A₁², discriminant (ℤ/2)², lattice class generated by (1,0) | Component swap sends (1,0) to (0,1), outside the chosen class subgroup | Pass: preserving individual component types is insufficient. Carried from [r5]. |
| Infinite central automorphisms | Root-free rank 2 | [[1,1],[0,1]]ᵏ=[[1,k],[0,1]]; distinct k give distinct automorphisms | Pass. Carried from [r5]. |
| Cylinder chamber stabilizer | GL₂ and a root-free torus | GL₂ chamber inequality x₁−x₂≥0; root reflection negates it. Root-free chamber is whole space and every GLᵣ(ℤ) map preserves it | Pass. Carried from [r5]. |
| Integral spanning negative control | Simply connected A₁ | Roots generate 2ℤ≠ℤ; coroots generate ℤ; both rational spans equal ℚ | Pass; full datum theorem correctly omits integral spanning. Carried from [r5]. |
| Unique root component | A₁² and A₂ | A₁² roots (±1,0),(0,±1) each lie in one line; (1,1) is absent. A₂ (1,1) is a root in its sole component | Pass. Carried from [r5]. |
| Independence from base/transport | A₁² sign change and component swap | Sign change preserves the two axis subspaces; swap exchanges them; partition sizes remain 2 and 2 | Pass. Carried from [r5]. |
| Cross-component orthogonality | A₁², symmetric matrix [[a,b],[b,c]] | Invariance under diag(−1,1) gives b=−b, hence b=0 over ℝ | Pass. Carried from [r5]. |
| Restriction and orthogonal reconstruction | A₁², diag(2,5) | Restrictions have values 2 and 5; reconstructing gives diag(2,5), value 7 at (1,1) | Pass. Carried from [r5]. |
| Scale uniqueness, excluded zero model | Zero space | B=C=0, and both c=1 and c=2 give C=cB; zero space fails native irreducibility | Pass as negative control. Carried from [r5]. |
| `squared_lengths_two_values` | A₁,B₂,G₂ | Length sets {1},{1,2},{1,3}; choose (s,r)=(1,1),(1,2),(1,3) | Pass; same companion theorem. Carried from [r5]. |
| Type-dependent length refinement | A₂,D₄,E₆; B₂,C₄,F₄; G₂ | Normalized simple lengths all 1; respectively both 1 and 2; respectively 1 and 3. Reflections preserve them | Pass. Carried from [r5]. |
| Ordinary versus squared ratio | B₂,G₂ | Squared ratios 2,3; ordinary ratios √2,√3, whose squares recover 2,3 | Pass. Carried from [r5]. |
| Irreducibility in two-length theorem | A₁³, diag(1,2,5) | Set {1,2,5} has three members; no two-element set {s,rs} contains it | Pass: excluded by irreducibility. Carried from [r5]. |
| Componentwise metric parameterization | A₁³ and empty system | Scales (1,2,5) reconstruct diag(1,2,5); restriction returns (1,2,5). Empty scale tuple and zero form each form a singleton | Pass; construction correctly named in docstring. Carried from [r5]. |
| Metric transport/reindexing | Swap first two A₁³ components | Pullback of diag(1,2,5) is diag(2,1,5); scale tuple changes (1,2,5)→(2,1,5) | Pass. Carried from [r5]. |
| Coefficient involution | Same B₂ and A₁ | (1,0)→(1,2)→(1,0); 1→−1→1 | Pass. Carried from [r5]. |
| Coefficient linearity | B₂ s₂, u=(1,0),v=(0,1) | s₂(u+v)=(1,1); s₂u+s₂v=(1,2)+(0,−1)=(1,1) | Pass. Carried from [r5]. |
| Reindexing compatibility | Swap B₂ nodes, J | J C J=Cᵀ; J(1,2)=(2,1), equal to corresponding reflected swapped coordinate | Pass. Carried from [r5]. |
| Root-orbit union equality | A₁,B₂ | Simple-orbit unions have 2 and 8 elements, equal to full root sets; long B₂ orbit alone has 4 | Pass; both orbit inclusions tested. Carried from [r5]. |
| Nonnegative orbit part | A₁,B₂; zero vector | Positive parts {1} and {(1,0),(0,1),(1,1),(1,2)}; zero belongs to neither full orbit set | Pass. Carried from [r5]. |
| §4.2 `existsUnique_greatest_positive_root` | A₁,A₂,B₂ | Greatest vectors (1),(1,1),(1,2); each dominates every listed positive vector coordinatewise | Pass. Carried from [r5]. |
| Greatest-root negative controls | A₁²; empty | Positive set {(1,0),(0,1)} has no greatest member; empty set has zero positive members | Pass: irreducibility excludes both. Carried from [r5]. |
| Positive weighted maximum | A₂ weights (2,1) | Values 2,1,3 on (1,0),(0,1),(1,1); unique maximum 3 agrees with greatest root | Pass; zero weighting would lose uniqueness. Carried from [r5]. |
| Simply-laced unit ascent | A₂,A₇,E₆,E₇,E₈ | Every nongreatest positive root has a +1 height reflection; zero exceptions among 2,27,35,62,119 roots respectively | Pass by exact integer calculations. Carried from [r5]. |
| Maximal increasing sequences | A₂ from either simple | Heights 1→2; terminal root (1,1); in A₁ only the length-zero path ending at (1) | Pass. Carried from [r5]. |
| Nonsimply-laced ascent negative control | B₂ β=(1,1) | s₁β=(0,1), height 1; s₂β=β, height 2; β+α₂=(1,2) is a root of height 3 | Pass. Carried from [r5]. |
| Root-string membership test | B₂, β=α₁, direction α₂ | β+nα₂ is a root for n=0,1,2 and not 3; top coefficient 2 gives exactly n≤2 | Pass; independent-root hypothesis retained. Carried from [r5]. |
| §4.3 E-family node transport | Extra node r attached to chain node 3 | Map sends r→Bourbaki 2 and 3→Bourbaki 4; the extra edge becomes (2,4); every chain edge remains an edge | Pass. Carried from [r5]. |
| E₆ numbered comparison | Chain order in README | 72 roots, 36 positive; greatest (1,2,3,2,1,2), height 11; all equal printed values | Pass. Carried from [r5]. |
| E₇ numbered comparison | Chain order in README | 126 roots, 63 positive; greatest (2,3,4,3,2,1,2), height 17; all equal printed values | Pass. Carried from [r5]. |
| E₈ numbered comparison | Chain order in README | 240 roots, 120 positive; greatest (2,4,6,5,4,3,2,3), height 29; all equal printed values | Pass. Carried from [r5]. |
| A₇ numbered comparison | A₇ chain | 56 roots, 28 positive; greatest (1,1,1,1,1,1,1), height 7 | Pass. Carried from [r5]. |
| C-family counts and greatest root | C₄,C₉,C₁₃ | Positive counts 16=4²,81=9²,169=13²; greatest (2,…,2,1), heights 7,17,25 | Pass. Carried from [r5]. |
| C₄ printed positive set | All sixteen printed tuples | Calculated and printed sets both have 16 members; their symmetric difference is empty | Pass, not merely count agreement. Carried from [r5]. |
| C-family update orientation | Last adjacent pair | C entries (−1,−2); A=2I−Cᵀ gives entries (2,1), as printed | Pass. Carried from [r5]. |

Characteristic 2 or 3 and the zero ring are excluded by the domain/characteristic-zero premises; they are not extra cases of the new domain statements. Rank zero and non-field domains are admitted and tested. The metric argument uses real coefficients and strictly positive root self-values. There is no scheme, DVR, residue-field or inseparability parameter to vary in these changed statements.

### Pinned declarations opened and ownership audit

The following **ten library interfaces** were opened at the manifest pins, including their enclosing assumptions. Unchanged library evidence remains in [r5].

| Pinned file and line | Verified content and consequence |
|---|---|
| Mathlib `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:355` | `RootPairing.Base.equivOfCartanMatrixEq` constructs an equivalence from the specified simple-node equivalence and Cartan equality. Its finite, reduced, spanning, crystallographic, characteristic-zero-domain assumptions match the new theorem; it does not itself state unique membership in the locally defined based subgroup. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/Isomorphism.lean:65`, 79, 111 | `equivOfCartanMatrixEq_indexEquiv_apply`, its forward-coroot equation, and `map_equivOfCartanMatrixEq` expose the marking and base transport of that construction. These support the proposed route and preserve the chosen node permutation. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/Hom.lean:271`, 305, 674 | Native root-pairing equivalences carry the linear and index maps with compatibility; `coweightEquiv` is contravariant and `Equiv.indexHom` gives the action used by `basedAut`. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/Irreducible.lean:147` | `IsIrreducible` has both nontriviality fields and the invariant-submodule equal-top laws. It excludes the zero-space scale ambiguity and is stronger than a connected Cartan diagram over a general domain. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/RootPositive.lean:50` | `InvariantForm` includes a symmetric bilinear form, nonzero root self-values, and reflection invariance. It does **not** include positive definiteness. The difference D in the new argument is a bilinear form, not an `InvariantForm` with nonzero self-values. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/InvariantForm/Basic.lean:40` | `RootPairing.InvariantForm.two_mul_apply_root` holds for an arbitrary first vector and any root. Applying it separately to B and C makes the chosen root lie in the radical of C−cB. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/FiniteType/Irreducible.lean:219`, 254 | `RootPairing.isIrreducible_of_connected_diagramGraph_cartanMatrix` is over a field. Thus it applies to the real component construction and cannot reinstate the deleted type-A assumption over ℤ[1/2]. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/RankTwo.lean:354` | `hasCartanType_G2_of_isG2` proves recognition for every base under the listed finite characteristic-zero-domain assumptions. The new supplier contract points to the correct owner. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/Finite/G2.lean:67` | `IsG2` extends crystallographicity, reducedness and irreducibility and asserts a pairing of −3. The shortened target has not silently dropped those assumptions. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/RankTwo.lean:332` | The reverse recognition theorem is explicitly separate from the forward theorem at 354. The new contract consumes the correct direction. |

Object searches covered the pinned root-system directories, main roadmaps, board package README/Lean files, and the indexed open roadmaps using `roadmaps grep`; `roadmaps show RootSystemsPartII --pr 1731` supplied the relevant open head. Searches included based root automorphisms, Cartan-preserving permutations, positive metric scales, and concrete Weyl groups, followed by opening the relevant declarations.

The new general based-subgroup identification is not replaced by the library's numbered-family diagram action. Conversely, G₂ recognition is already supplied and has correctly ceased to be an acceptance target. The only same-object redundancy left among the listed files is the companion in R01. Searches for the changed declaration names found the base roadmap's own main declarations and revisions, not another roadmap's independent owner. The type-A and G₂ endpoints are already this roadmap's work on main (`TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:369,377`); refining them here does not re-plan another roadmap.

### Cross-roadmap citations and supplier direction

All **eight named roadmap references** were resolved again. Existing-roadmap revisions were not substituted for main as suppliers. The two main examples used to compare roadmap shape were ReflectionInvariantTheory and Completed/IntegralLattices.

| Roadmap | Current section/file evidence |
|---|---|
| LieHighestWeight, main | `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:351,370,773`: Layers 1–2 develop root/weight interfaces; Layer 6 owns character and dimension formulas. |
| ReflectionInvariantTheory, main | `TauCetiRoadmap/ReflectionInvariantTheory/README.md:40,68`: general finite reflection arrangements and invariant degrees; its crystallographic specialization consumes RootSystems. It is not a supplier for this owner's presentation. |
| RootSystemsPartII, supplied open head | `TauCetiRoadmap/RootSystemsPartII/README.md:201,218`, Layers 2–4: finite folds and fixed Weyl groups, the case theorem for based automorphisms, adjacent even-A reversal and lattice export. These extend the base programme rather than own its general based complement. |
| ReductiveGroups, main | `TauCetiRoadmap/ReductiveGroups/README.md:1230,1272`: §9A.1a-L owns kernel-fixing ADE cover lifts and consumes the root Weyl/based factorization. |
| ZigzagPreprojective, main | `TauCetiRoadmap/ZigzagPreprojective/README.md:205`: Layer 0 owns affine diagrams, doubled quivers and gradings. |
| ClassicalGroups, main | `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:237,251`: Layer 3 specializes weights and the type-A Weyl action to classical matrix groups. |
| CFSGStatement, main | `TauCetiRoadmap/CFSGStatement/README.md:195,215`: L0–L1 consume numbered integral data for ambient groups and Steinberg maps. Its historical layer labels were not treated as new incoming dependencies. The consumer's acceptance module also built. |
| LieGroups, main | `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:383,434`: Layer 6 consumes finite Weyl groups and Layer 8 uses lengths for Bruhat-cell dimensions. |

Completed IntegralLattices explicitly leaves root-system and weight-lattice developments to their existing owner (`Completed/IntegralLattices/README.md:23,147`). The unchanged lattice-restriction target acts on specified dual lattices; it does not duplicate generic discriminant-form or overlattice theory.

The resolver reported no missing cross-roadmap citations or local Lean names. Its external-library-name check was unavailable, so the pin inspection above was done independently. Open-work searches were limited to the supplied index and checkouts; no unlisted pull request was fetched.

Every `*Needs:*` line was read. The changed routes use native APIs and earlier local statements. There is no new roadmap supplier, no undeclared gap or upward edge, and no migration of ownership to a later roadmap. The mechanical output was:

```text
depcheck: 204 roadmaps, 1486 edges, 0 problem(s)
```

There was no UPWARD, CYCLE, or moved line.

### Headline coverage and shape

The README's statable headlines now appear as **ten theorems**: marked Weyl Coxeter presentation; Coxeter length/inversion count; real based complement; marked unique extension of Cartan symmetries; full integral complement; unique positive metric scale; two squared root lengths; greatest positive root; type-A symmetric group; type-G₂ dihedral group.

The module docstring identifies the componentwise metric parameterization and the arbitrary finite-free scalar-extension/cylinder comparison as needing their constructed carriers. The general semidirect-product endpoint follows the complement together with normality and the native semidirect API; it does not need a replacement group carrier.

The new diagram-extension signature has the same domain generality and marking as its README statement. Its source's integral simply connected/adjoint setting is not silently used as a theorem about arbitrary integral isogeny lattices: that restriction remains explicit, while the spanning domain statement uses the native Cartan comparison. The expanded metric proof identifies a nonzero root, a positive denominator, a symmetric reflection-invariant difference, a nonzero invariant radical, and uniqueness by evaluation. Spanning plus native nontriviality supplies a root; no circular metric uniqueness input occurs.

The README retains the required layers, dependencies, API and Checks, and adds three discriminating type-A Checks. No new admitted data, substitute predicate, algorithm deliverable, copied source passage, route-specific restriction, or mathematical counterexample was found in the changed passages. R01 is the remaining file-form exception.

### Seeded sample and source checks

The **eight changed sampled subsections** were checked directly against legally fetched texts through the sources service: [Milne's author edition](https://www.jmilne.org/math/Books/iAG2017.pdf) and [SGA 3 XXI, Gille–Polo re-edition of 13 October 2024](https://webusers.imj-prg.fr/~patrick.polo/SGA3/Exp21-13oct24.pdf). The other **four sampled subsections** are unchanged and carry their textual findings from [r5]. No locator in the target is labelled unverified. No manifest was edited.

| Sample | Verification at this round |
|---|---|
| 1.1 Completeness of the relations | Unchanged; carry [r5]: Milne C.22 p.612, milne17 line 25096, gives the simple-reflection Coxeter presentation in the field setting. The domain version uses native integral-coordinate comparison. |
| 1.2 Length and reduced expressions | Unchanged; carry [r5]'s uncertified book status and native API/computed A₂ evidence. Missing printed pages remain R02. |
| 2.1 The actual base stabilizer | Read sga3iii line 1051, Prop.6.1.3 p.90; line 1368, Lemma6.7.1 p.98; line 1374, Prop.6.7.2 p.99; milne17 line 25554, C.53 p.624. They support transport, conjugation and the actual based semidirect factor. All newly supplied pages agree. |
| 2.2 Oriented diagrams and actual isogeny lattices | Read sga3iii line 1608, Prop.7.3.2 pp.104–105; line 1627, Cor.7.3.4 p.105; line 1654, Cor.7.4.5 p.105; line 1660, Rem.7.4.6 p.106. The unique extension is for reduced simply connected/adjoint data there. The domain route is justified by the separate pinned comparison; intermediate lattices still require preservation. |
| 2.3 Full integral data and central directions | Read sga3iii line 19, finite-free dual lattices, and line 1374; milne17 line 25314, C.43 p.618, and line 25401, C.51 p.620. The corrected page and finite-index gluing agree; the text supplies no integral direct-sum equality. |
| 3.1 Irreducible components | Read milne17 line 25102, C.23 p.612, and line 25585, C.55 p.625. C.55 explicitly identifies graph components with irreducible summands, completing the previous locator. |
| 3.2 Positive invariant forms and squared lengths | Read milne17 line 25421, Appendix C(g) p.621, and line 25438, table (180). The README now distinguishes Milne's reduced crystallographic setting from its independently derived general metric theorem. |
| 4.1 Integral coordinates and reflection orbits | Read sga3iii lines 19–42, §1.1.1–1.1.2, formulas (1)–(3), pp.63–64. Coefficient substitution gives cᵢ−ΣⱼCⱼᵢcⱼ; thus the stated 2I−Cᵀ convention is correct. |
| 4.2 Greatest positive roots | Unchanged; carry [r5]: milne17 line 25111, C.24 p.612, gives a greatest coefficient vector, not merely a maximal root. Bourbaki ascent locator remains uncertified. |
| 4.3 Numbered family comparisons | Unchanged; carry [r5]'s exact E/C computations and uncertified Bourbaki plate status. |
| 5.1 Type A | Read milne17 line 25116, C.25 pp.612–613, for the coordinate-permutation group and positive-root model; the new ℤ[1/2] Check is independently calculated above. The old source sign error is not copied into the roadmap. |
| 5.2 Type G₂ | Read milne17 lines 25476,25494, rank-two diagrams p.622, with the dihedral order convention at line 25498 p.623. The twelve roots/Weyl elements and rotation order six agree; recognition is now supplied by RankTwo.lean. |

[r5]: packages/RootSystems/reports/PRREVIEW-RootSystems~5.md

## Not verifiable

- **bourbaki46**, *Lie Groups and Lie Algebras, Chapters 4–6*, 2002: carry the previous source-service outcome, uncertified publisher/paywalled text. Chapter VI §1 nos.3,6,8 and §4 Planches I–IX were not read here. This affects unchanged §1.2, ascent in §4.2 and §4.3. The settled outcome was not reopened or put into a new missing-reference request.
- **bjornerbrenti05**, *Combinatorics of Coxeter Groups*, 2005, DOI 10.1007/3-540-27596-7: carry the previous uncertified publisher outcome. §2.2 and Theorem 3.3.1 were not text-verified; no new missing-reference request was created.
- The general admitted targets were elaborated and mathematically audited, not proved. The ℤ[1/2] model is an explicit mathematical construction, not a fully mechanized Lean countermodel.
- Unchanged source and mathematical rows marked [r5] are inherited evidence under the incremental-review rule, not fresh source certification.

## Source issues

The following two issues were already recorded in [r5] and are visible in the source passages revisited here. No additional source error is asserted.

- **Misprint** in milne17 at Example C.25, printed p.612 (milne17 line 25120): the source says positive type-A roots have i>j for its decreasing-coordinate vector; it should be i<j, with the subsequent decomposition inequalities and intermediate indices reversed consistently; affects a stated result.
- **Error** in milne17 at Appendix C(g), printed p.622 (milne17 line 25453): the source says both off-diagonal simple-root pairings are negative; it should be nonpositive, with both zero for the displayed A₁×A₁ system; affects a stated result.
