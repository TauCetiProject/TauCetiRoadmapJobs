# Review of RootSystems (pull request #1196 at 9d2d091)
Folder: `TauCetiRoadmap/RepresentationTheory/RootSystems/`
**Verdict:** needs changes

AI-assisted independent review by Codex. Five findings, three P2 and two P3. The supplied gate passes, and the main acceptance module elaborates. The blocking findings concern coverage and ownership, not a counterexample to one of its nine admitted conclusions under its actual hypotheses.

## R01 (P2) — Remove the extra module-irreducibility assumption from type A

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:119`, “[P.IsCrystallographic] [P.IsReduced] [P.IsIrreducible]”; compare `README.md:538` in the same folder, “For the standing system with base of native type Aₙ”.

**Claim:** The signature tests the type-A identification at the README's characteristic-zero-domain generality. It does not: native module irreducibility is stronger than having a connected type-A Cartan matrix over a domain.

**Witness:** Take R=ℤ[1/2], M=N=R, dot pairing, roots ±1 and coroots ±2. Then C=[2] and W={±1}≅S₂, but 3R is a nonzero proper reflection-stable submodule. Native irreducibility fails.

Both roots and coroots span because 2 is a unit; their paired values are ±2, and the positive singleton is a base. The properness assertion is explicit: 1 cannot equal 3a/2ᵏ for an integer a. Mathlib's `IsIrreducible` requires every nonzero reflection-invariant submodule to be the whole module (`Mathlib/LinearAlgebra/RootSystem/Irreducible.lean:147`). The supplied implication from Cartan type to that predicate is deliberately over a **field** (`TauCeti/LinearAlgebra/RootSystem/FiniteType/Irreducible.lean:290`, theorem at 295).

**Repair:** Delete `[P.IsIrreducible]` from this signature; retain its actual type-A hypothesis and all the standing finite/reduced/crystallographic/spanning/domain assumptions. Do not narrow the README to repair the mismatch. The corrected signature elaborates at the pins. The displayed A₁ model is then admitted and gives the promised two-element Weyl group; retain it as the negative control distinguishing diagram connectedness from module irreducibility over a ring.

## R02 (P2) — State the based-automorphism identification in the acceptance file

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:290`, “identify its based subgroup with the permutations of its simple support preserving every Cartan entry”; `Suggested.lean:64` through 76 contains only complement statements for Layer 2.

**Claim:** The acceptance module covers the new automorphism-group conclusions. The identification of the actual based factor with oriented diagram symmetries is absent, and the module docstring does not name it as unstatable. A complement theorem alone does not express this identification.

**Witness:** A₂ has two Cartan-preserving simple permutations and two based automorphisms; D₄ has six of each. The only Layer 2 conclusions in the file are `IsComplement'`; neither quantifies over a simple-node permutation.

**Repair:** Add the marked existence-and-uniqueness statement: for each permutation σ of `b.support` satisfying `∀ i j, b.cartanMatrix (σ i) (σ j) = b.cartanMatrix i j`, there is exactly one `g : basedAut P b` with `g.val.indexEquiv i = σ i` on simple indices. Together with the native Cartan-preservation law this expresses the promised identification without a new carrier. A scratch signature with precisely these binders elaborates over the standing characteristic-zero domain, using only the existing imports and `basedAut`. A₂ reversal and D₄ triality satisfy it; B₂'s node swap fails the Cartan hypothesis because −2≠−1. Keep the intermediate integral-lattice restriction in the README; do not assert unrestricted diagram symmetry for it.

## R03 (P2) — Consume the pinned G₂ recognition theorem

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:128`, “TauCeti.HasCartanType P b .G2 ∧ Nonempty”; `README.md:549`, “its base has native G₂ Cartan type”.

**Claim:** Recognition of the Cartan type from `P.IsG2` remains new work here.

**Witness:** `TauCeti.hasCartanType_G2_of_isG2`, `TauCeti/LinearAlgebra/RootSystem/RankTwo.lean:354`, already proves that exact recognition statement. The scratch recognition theorem closes with `exact TauCeti.hasCartanType_G2_of_isG2 inferInstance b`.

**Repair:** Move this recognition result into the Tau Ceti supplier contract with its exact declaration and file. Remove the supplied conjunct from the acceptance target and retain the genuinely new `Nonempty (P.weylGroup ≃* DihedralGroup 6)` conclusion. For short-first G₂, both the supplied recognition and the intended model give `[[2,−1],[−3,2]]`; the remaining group has 12 elements and rotation order 6. This is the remaining part of previous R03, rather than a request to remove the concrete Weyl-group theorem.

## R04 (P3) — Delete the obsolete metric companion

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/InvariantMetricTargets.lean:1` and 13, “import Mathlib.LinearAlgebra.RootSystem.Irreducible” and “set_option autoImplicit false”; duplicate theorems at 22 and 28.

**Claim:** All listed Lean files obey the specified form and contain only necessary acceptance statements.

**Witness:** The companion still has five Mathlib submodule imports, no `import Mathlib`, and a `set_option`. Its two signatures duplicate `Suggested.lean:82` and 90 exactly; each closes by one `exact` using the corresponding main-file theorem.

**Repair:** Delete the companion file. Its two headlines now live in `Suggested.lean`, where they belong. This simultaneously removes the prohibited option/import form, obsolete docstring and names absent from the README. Do not delete or prove the two main-file headlines as a response to this finding. A₁ scale 3 and the B₂ squared-length set {1,2} have identical conclusions in both copies. The supplied gate reports zeros because it did not catch these companion-file violations; that does not waive the brief's file-wide rule. Previous R09 is not repaired for this file.

## R05 (P3) — Complete the source records and repair the residual locators

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:335`, “Milne C.43 and C.51, pp. 617, 620”; also 375, 400 and References at 575. There is no `sources.toml` in this folder.

**Claim:** The retained claims have the required exact, reproducible source records and locators.

**Witness:** C.43 starts on printed p.618 (`milne17 line 25314`), not 617. C.23 states decomposition; its identification with diagram components is C.55, p.625 (`milne17 line 25585`). No source manifest records the four cited works.

**Repair:** Correct C.43 to p.618, add C.55 to §3.1, and record all four existing source ids through the source service in `sources.toml`, preserving the two uncertified textbook outcomes described below. Supply printed-page locators for the numbered SGA claims and the §1.2 book references. Distinguish §3.2's noncrystallographic/nonreduced generalization from Milne's reduced crystallographic setting: explicitly derive it from the native invariant-form identity and irreducibility, rather than attribute that full generality to C(g). The derivation gives scale 3 in A₁ and excludes the zero-space ambiguity; C.43 still gives index 2 for GL₂ at its corrected page. This review changed no manifest.

## Verified sound

### Disposition of the previous eleven findings

This was a full review, including unchanged passages. No supplied repair report marked any previous finding “not actionable in this package”. The following short quotations are from this head, not instructions adopted from the previous review.

| Previous finding | Passage at this head | Disposition |
|---|---|---|
| R01, infinite lowering counterexample | README:120, “finite, reduced, crystallographic, characteristic-zero domain”; 192–198 gives the indefinite example | Repaired: the false local signature is gone; the native theorem retains finiteness. |
| R02, eight admitted data definitions | Suggested:60–62, `Subgroup P.Aut :=` followed by native stabilizer/comap | Repaired: one real definition, no admitted data. |
| R03, replanned pinned theory | README:17, “These are inputs, not construction targets here.” | Mostly repaired: native classification, chambers, exchange, longest element and family replace local copies. G₂ recognition remains duplicated; current R03. |
| R04, unmarked Coxeter generators | Suggested:43, `cs.simple i = RootPairing.weylGroup.ofIdx P (i : ι)` | Repaired; swapped A₂ generators fail that equation. |
| R05, unmarked local integral transport | README:19, “no second enumeration or transport to a local copy is needed” | Repaired by deletion of the redundant local datum/comparison. The coefficient reindexing in §4.3 retains root-index equations. |
| R06, absent metric/greatest-root headlines | Suggested:82, 90, 103 names `invariantMetric_unique_scale`, `squared_lengths_two_values`, `existsUnique_greatest_positive_root` | Repaired: all three are in the built acceptance module. |
| R07, algorithms | README:459, “equality of sets, not an enumeration procedure” | Repaired: reflection identities/orbit equality remain mathematical targets. |
| R08, old padding | Suggested:39–128 contains the nine substantive targets | Repaired for the listed old declarations; none remains. The now-redundant companion is current R04. |
| R09, companion and docstrings | InvariantMetricTargets:13, `set_option autoImplicit false` | Partly repaired: main-file form/docstrings fixed; companion unchanged. |
| R10, shape/locators/Checks/dependencies | README:71, “Exact supplier contracts”; 226, “Needs”; 279, “Checks” | Partly repaired: required shape, APIs and discriminating Checks are present. Residual source-record/locator defects are current R05. |
| R11, unresolved ownership citations | README:35, “owns affine diagrams, quivers and gradings”; 571, “its Layer 8 consumes lengths for Bruhat cell dimensions” | Repaired: actual main sections support these narrower ownership/consumer statements. |

### Head, gate, elaboration and signature checks

The inspected head is `9d2d0917f9d5c66b37bd4bb7ed3bbe5a5f12292d`. The requested outside-folder diff is empty, the family index resolves its RootSystems link, and the worktree remained unchanged. The pins were checked directly: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`; the content checkout is main `fa41b374`.

The worker's gate is **OK**, with every counter zero, including build, dependency check, admitted data, stray files and outside-folder edits. I did not infer truth from that result. After the permitted targeted builds of the used Tau Ceti imports, `lake env lean` on the absolute `Suggested.lean` path exited 0 with **nine `sorry` warnings and no other warnings/errors**. The additional RankTwo import used only in the recognition probe was built separately. No broad build or dependency update was run.

A scratch copy with `#check @name` covered all **12 explicit declarations**: the main file's nine theorems and `basedAut`, plus the companion's two theorems copied into the same native context. All twelve elaborated. The four finite/free integral binders survive on `full_datum_complement`; finiteness and the spanning/reduced/crystallographic binders survive on the Coxeter and greatest-root targets; both metric hypotheses and irreducibility survive. No silent loss of a section hypothesis was found. R01 is an explicitly **extra** hypothesis, not a dropped one. The exported Dynkin names are aliases of the native family, not fresh data definitions.

For each of the eleven admitted theorem signatures, a scratch probe tried `simp`, `rfl`, then `infer_instance`; none closed. The two companion statements subsequently closed by single `exact` applications of the identical main-file statements. These latter tests establish redundancy only, not proofs from the pinned library. A separate `exact` probe proved the G₂ recognition conjunct from the pinned RankTwo theorem. No whole retained main headline was shown to be one-tactic padding. The stronger scope in R01 and the missing statement in R02 were separately checked to elaborate after the proposed repairs.

### Adversarial mathematics: computed values

These are computations and separating models, not proofs of the general targets. Rows distinguish definition/API clauses when their conclusions differ. “Pass” means the tested values agree with the stated mathematics; a reported repair is an interface or ownership change unless the row says otherwise. Matrix calculations use root rows, coroot columns and left actions. The 81-row table includes every sampled subsection, all acceptance declarations, and each mathematical target touched by a finding.

| Statement | Instances tried | Values computed on the two sides | Result / change |
|---|---|---|---|
| RootPairing versus spanning mixin | A₁ and a root-free real line | A₁ root/coroot spans have dimension 1=1; empty roots on a line have span dimension 0≠1 | Pass: spanning is explicit where used. |
| Irreducibility convention | Zero space; A₁ over ℚ; A₁ over ℤ[1/2] | Zero space fails nontriviality; ℚ has no proper nonzero subspace; 3ℤ[1/2] is invariant and proper | R01; ring-module and diagram irreducibility differ. |
| Integral root basis versus weight lattice | Simply connected A₁ | Root coefficient 1 evaluates to weight 2; fundamental weight 1 has root coefficient 1/2, outside the integer root lattice | Pass. |
| Root/coroot normalization | A₁ root 2, coroot 1 | Pairing 2·1=2; reflection sends (2,1) to (−2,−1), preserving pairing 2 | Pass. |
| Cartan row/column convention | B₂, c=(1,0), short node | Correct changed coordinate 0−(−2)=2; wrong transpose convention gives 1 | Pass. |
| Left-action inversion convention | A₂, s₁s₂ | Images of α₁,α₂,α₁+α₂ are α₂,−(α₁+α₂),−α₁; inversion set is {α₂,α₁+α₂} | Pass. |
| Contravariant cocharacter direction | σ=(123), standard dual bases | Forward weight e₁→e₂; contravariant coweight e₁→e₃; inverse e₁→e₂; pairings 1 versus wrong 0 | Pass. |
| Native finite type | Empty matrix; [2]; affine A₁ | Empty positivity vacuous; q(1)=2>0; affine q(1,1)=0, so not positive definite | Pass. |
| Native valid family labels | A₀,A₁,B₁,B₂,C₂,D₃ | Validity values false,true,false,true,false,false; B₂ and C₂ matrices become equal after node exchange | Pass. |
| Cartan-to-Coxeter conversion | Diagonal; A₁²,A₂,B₂,G₂ | Cartan products 4;0,1,2,3 give Coxeter entries 1;2,3,4,6 | Pass; junk product 9 maps to 0 and is excluded by finite root hypotheses. |
| Lowering supplier | A₂ and infinite H=[[2,−3],[−3,2]] | A₂ (1,1): height 2→1; H-model (1,1): height 2→3 under either simple reflection | Pass with finiteness; previous false signature removed. |
| Infinite-model reflection iteration | H-model, e₁ | s₁s₂ iterates (1,0)→(8,3)→(55,21)→(377,144); each quadratic norm is 2 | Pass as a finiteness negative control. |
| §1.1 marked presentation | Rank 0,A₁,A₂ | Group orders 1,2,6 on both sides; A₂ s₁²=s₂²=(s₁s₂)³=1 | Pass. |
| §1.1 marking, wrong model | Swap A₂ generators | Intended generator 0 sends (1,0)→(−1,0); swapped generator sends it→(1,1) | Marking excludes wrong model. |
| §1.2 `length_eq_inversions` | All six A₂ elements | Minimal lengths 0,1,1,2,2,3; inversion cardinalities 0,1,1,2,2,3 | Pass. |
| Reduced/minimal expressions | A₂ words 11,121,212 | 11 represents identity, lengths 2 versus minimum 0; 121 and 212 both length 3 and represent w₀ | Pass. |
| Native exchange/Matsumoto use | A₂, 121 shortened by s₁ | Delete first letter to get 21: length 3→2; 121=212 as permutations | Pass; imported, not replanned. |
| Longest length | Empty,A₁,A₂,G₂ | Lengths 0,1,3,6 equal positive-root counts 0,1,3,6; all longest elements square to identity | Pass. |
| Poincaré comparison | Empty,A₁,A₂; q=0,1 | Polynomials 1,1+q,1+2q+2q²+q³; A₂ evaluations 1 and 6 equal constant coefficient and group order | Pass. |
| Bruhat subword comparison | A₂ w=s₁s₂ | Subwords give {1,s₁,s₂,s₁s₂}; s₂s₁ is absent and not ≤w | Pass in both directions. |
| §2.1 `basedAut` | A₁,A₂,empty spanning system | Stabilizer orders 1,2,1; A₁ reflection sends {+} to {−}, so fails membership | Pass; genuine subgroup body. |
| Based support closure | A₂ reversal δ | δ²=1 and δ⁻¹=δ; each sends the two-element support to itself | Pass. |
| Base/open-chamber correspondence | A₁ x=1,0,−1 | Coroot values 1,0,−1; open chamber contains only 1 of these, closed chamber also contains 0; reflection swaps signs | Pass. |
| Weyl normality | A₂ reversal δ | δs₁δ⁻¹=s₂; both sides send α₁→α₁+α₂ and α₂→−α₂ | Pass. |
| `weyl_based_complement` | A₁,A₂,rank 0 | Aut orders 2=2·1,12=6·2,1=1·1; intersections have one element | Pass. |
| Semidirect multiplication | A₂, δ reversal | (1,δ)(s₁,1)=(s₂,δ); forward products both s₂δ=δs₁ | Pass; conjugation, not direct product. |
| Semidirect inverse and transport | A₂ g=s₁δ | g⁻¹=δs₁=s₂δ; multiplying gives 1; (g⁻¹g)α₁=α₁ and likewise for coroots | Pass. |
| §2.2 oriented diagram identification | A₁,A₂,D₄,E₆ | Diagram and based group orders respectively 1=1,2=2,6=6,2=2 | Mathematics passes; missing acceptance statement R02. |
| Oriented diagram negative control | B₂ node swap | Original off-diagonals (−2,−1); swapped (−1,−2), unequal | Pass; R02 repair excludes it. |
| Lattice stabilizer definition | D₄ intermediate lattice determined by one nonzero discriminant class | Three nonzero classes form an S₃-orbit of size 3; class stabilizer has 6/3=2 elements, not 6 | Pass. |
| Lattice restriction/extension inverses | A₁ X=ℤ, Y=ℤ, roots ±2, coroots ±1 | Weight/coweight −1 extend to rational −1 and restrict back to −1; pairing (−2)(−1)=2 | Pass. |
| Based lattice restriction | Same A₁ and D₄ intermediate form | A₁ based subgroup has order 1 before/after restriction; D₄ restricted subgroup has order 2 before/after | Pass. |
| Reducible lattice gluing | A₁², discriminant (ℤ/2)², lattice class generated by (1,0) | Component swap sends (1,0) to (0,1), outside the chosen class subgroup | Pass: preserving individual component types is insufficient. |
| §2.3 `full_datum_complement` | Root-free ranks 0,1,2 | W=1 in all three; Aut=1,{±1},GL₂(ℤ); multiplication 1×Aut→Aut is bijective | Pass; finiteness of Aut is not asserted. |
| Infinite central automorphisms | Root-free rank 2 | [[1,1],[0,1]]ᵏ=[[1,k],[0,1]]; distinct k give distinct automorphisms | Pass. |
| Integral central/derived gluing | GL₂, columns (1,−1),(1,1) | Determinant 2, hence index 2; not an integral direct sum equal to ℤ² | Pass. |
| Rational scalar extension/projection | GL₂ x=(1,0) | Root projection (1/2,−1/2), central part (1/2,1/2), sum (1,0); root-coroot value 1 before/after | Pass; half coordinates explain the integral obstruction. |
| Cylinder chamber stabilizer | GL₂ and a root-free torus | GL₂ chamber inequality x₁−x₂≥0; root reflection negates it. Root-free chamber is whole space and every GLᵣ(ℤ) map preserves it | Pass. |
| Integral spanning negative control | Simply connected A₁ | Roots generate 2ℤ≠ℤ; coroots generate ℤ; both rational spans equal ℚ | Pass; full datum theorem correctly omits integral spanning. |
| §3.1 graph/component spaces | A₂,A₁²,empty | Component dimensions [2],[1,1],[]; sums 2,2,0 equal ambient dimensions | Pass. |
| Unique root component | A₁² and A₂ | A₁² roots (±1,0),(0,±1) each lie in one line; (1,1) is absent. A₂ (1,1) is a root in its sole component | Pass. |
| Independence from base/transport | A₁² sign change and component swap | Sign change preserves the two axis subspaces; swap exchanges them; partition sizes remain 2 and 2 | Pass. |
| Cross-component orthogonality | A₁², symmetric matrix [[a,b],[b,c]] | Invariance under diag(−1,1) gives b=−b, hence b=0 over ℝ | Pass. |
| Restriction and orthogonal reconstruction | A₁², diag(2,5) | Restrictions have values 2 and 5; reconstructing gives diag(2,5), value 7 at (1,1) | Pass. |
| §3.2 `invariantMetric_unique_scale` | A₁ B(x,y)=xy, C(x,y)=3xy | At (1,1), 3=c·1 forces c=3>0; c=0 gives 0 and c=2 gives 2 | Pass; same companion theorem. |
| Scale uniqueness, excluded zero model | Zero space | B=C=0, and both c=1 and c=2 give C=cB; zero space fails native irreducibility | Pass as negative control. |
| Generality beyond crystallographic/reduced systems | Rank-one roots ±1,±√2 with paired coroots ±2,±√2 | Cross pairing √2 is nonintegral; all reflections are −1; B=xy and C=3xy still force scale 3 | Pass; full generality is a derivation, not Milne C(g)'s stated scope. |
| Invariant-form coroot identity | B₂ α=e₂, x=e₁+e₂, Euclidean B | 2B(x,α)=2; coroot value 2 times B(α,α)=1 also gives 2 | Pass. |
| `squared_lengths_two_values` | A₁,B₂,G₂ | Length sets {1},{1,2},{1,3}; choose (s,r)=(1,1),(1,2),(1,3) | Pass; same companion theorem. |
| Type-dependent length refinement | A₂,D₄,E₆; B₂,C₄,F₄; G₂ | Normalized simple lengths all 1; respectively both 1 and 2; respectively 1 and 3. Reflections preserve them | Pass. |
| Ordinary versus squared ratio | B₂,G₂ | Squared ratios 2,3; ordinary ratios √2,√3, whose squares recover 2,3 | Pass. |
| Irreducibility in two-length theorem | A₁³, diag(1,2,5) | Set {1,2,5} has three members; no two-element set {s,rs} contains it | Pass: excluded by irreducibility. |
| Componentwise metric parameterization | A₁³ and empty system | Scales (1,2,5) reconstruct diag(1,2,5); restriction returns (1,2,5). Empty scale tuple and zero form each form a singleton | Pass; construction correctly named in docstring. |
| Metric transport/reindexing | Swap first two A₁³ components | Pullback of diag(1,2,5) is diag(2,1,5); scale tuple changes (1,2,5)→(2,1,5) | Pass. |
| §4.1 coefficient reflection and evaluation | B₂ c=(1,0), short node | Coordinates (1,0)→(1,2); evaluations e₁−e₂→e₁+e₂ agree with actual reflection | Pass. |
| Coefficient involution | Same B₂ and A₁ | (1,0)→(1,2)→(1,0); 1→−1→1 | Pass. |
| Coefficient linearity | B₂ s₂, u=(1,0),v=(0,1) | s₂(u+v)=(1,1); s₂u+s₂v=(1,2)+(0,−1)=(1,1) | Pass. |
| Reindexing compatibility | Swap B₂ nodes, J | J C J=Cᵀ; J(1,2)=(2,1), equal to corresponding reflected swapped coordinate | Pass. |
| Root-orbit union equality | A₁,B₂ | Simple-orbit unions have 2 and 8 elements, equal to full root sets; long B₂ orbit alone has 4 | Pass; both orbit inclusions tested. |
| Nonnegative orbit part | A₁,B₂; zero vector | Positive parts {1} and {(1,0),(0,1),(1,1),(1,2)}; zero belongs to neither full orbit set | Pass. |
| §4.2 `existsUnique_greatest_positive_root` | A₁,A₂,B₂ | Greatest vectors (1),(1,1),(1,2); each dominates every listed positive vector coordinatewise | Pass. |
| Greatest-root negative controls | A₁²; empty | Positive set {(1,0),(0,1)} has no greatest member; empty set has zero positive members | Pass: irreducibility excludes both. |
| Positive weighted maximum | A₂ weights (2,1) | Values 2,1,3 on (1,0),(0,1),(1,1); unique maximum 3 agrees with greatest root | Pass; zero weighting would lose uniqueness. |
| Simply-laced unit ascent | A₂,A₇,E₆,E₇,E₈ | Every nongreatest positive root has a +1 height reflection; zero exceptions among 2,27,35,62,119 roots respectively | Pass by exact integer calculations. |
| Maximal increasing sequences | A₂ from either simple | Heights 1→2; terminal root (1,1); in A₁ only the length-zero path ending at (1) | Pass. |
| Nonsimply-laced ascent negative control | B₂ β=(1,1) | s₁β=(0,1), height 1; s₂β=β, height 2; β+α₂=(1,2) is a root of height 3 | Pass. |
| Root-string membership test | B₂, β=α₁, direction α₂ | β+nα₂ is a root for n=0,1,2 and not 3; top coefficient 2 gives exactly n≤2 | Pass; independent-root hypothesis retained. |
| §4.3 E-family node transport | Extra node r attached to chain node 3 | Map sends r→Bourbaki 2 and 3→Bourbaki 4; the extra edge becomes (2,4); every chain edge remains an edge | Pass. |
| E₆ numbered comparison | Chain order in README | 72 roots, 36 positive; greatest (1,2,3,2,1,2), height 11; all equal printed values | Pass. |
| E₇ numbered comparison | Chain order in README | 126 roots, 63 positive; greatest (2,3,4,3,2,1,2), height 17; all equal printed values | Pass. |
| E₈ numbered comparison | Chain order in README | 240 roots, 120 positive; greatest (2,4,6,5,4,3,2,3), height 29; all equal printed values | Pass. |
| A₇ numbered comparison | A₇ chain | 56 roots, 28 positive; greatest (1,1,1,1,1,1,1), height 7 | Pass. |
| C-family counts and greatest root | C₄,C₉,C₁₃ | Positive counts 16=4²,81=9²,169=13²; greatest (2,…,2,1), heights 7,17,25 | Pass. |
| C₄ printed positive set | All sixteen printed tuples | Calculated and printed sets both have 16 members; their symmetric difference is empty | Pass, not merely count agreement. |
| C-family update orientation | Last adjacent pair | C entries (−1,−2); A=2I−Cᵀ gives entries (2,1), as printed | Pass. |
| §5.1 type-A Weyl group | A₁,A₂,A₇ | Orders 2=2!,6=3!,40320=8!; positive counts 1,3,28 equal n(n+1)/2 | Mathematics passes; domain signature R01. |
| Type-A adjacent generators | A₂ in sum-zero ℚ³ | s₁ swaps coordinates 1,2; s₂ swaps 2,3; products are distinct 3-cycles, so group is nonabelian S₃ | Pass. |
| Type-A ring scope | A₁ over ℤ[1/2] | Reflection x↦x−2x=−x; W has two elements; invariant proper ideal 3R prevents native irreducibility | R01; repaired signature admits it. |
| §5.2 G₂ recognition | Short-first G₂ | Cartan [[2,−1],[−3,2]], off-diagonal product 3; supplied theorem returns the same type | R03: import recognition. |
| G₂ dihedral group | Simple reflection matrices [[−1,3],[0,1]], [[1,0],[1,−1]] | Product [[2,−3],[1,−1]] has cube −I and sixth power I; 6 rotations + 6 reflections =12 | Pass; retain new target. |
| G₂ positives/longest | Short-first coefficients | Positives (1,0),(0,1),(1,1),(2,1),(3,1),(3,2); longest −I inverts all 6 | Pass. |

The integer reflection computations were carried out independently in scratch, including the complete C₄ set comparison and all exceptional highest-root vectors. The other rows give explicit arithmetic/group/submodule calculations. Characteristic 2 or 3, the zero ring and inseparable coefficient extensions are excluded by the standing characteristic-zero-domain assumption. No result here has a DVR, residue-field, scheme smoothness, compactness, cardinality-bound, or nonreduced-scheme premise to test. Root-free data and reducible systems, which really are admitted by the carriers, were tested rather than conflated with those unrelated cases. No denominator was evaluated at zero: half-root calculations use ℚ or ℤ[1/2], and metric ratios use strictly positive root self-values.

### Pinned APIs and duplication by object

I opened native definitions, statements and relevant surrounding hypotheses, rather than relying on matching declaration names. The following inventory records the principal evidence; paths are relative to the indicated library. Multiple declarations in a row are the same consumed interface, not additional local targets.

| Library file and line | Declarations / content verified |
|---|---|
| Mathlib `Mathlib/LinearAlgebra/RootSystem/Defs.lean:81`, 111, 120 | `RootPairing` has a perfect pairing, two embeddings and compatible reflection permutations; `RootDatum` adds no finite-generation condition; `IsRootSystem` adds exactly the two spanning equations. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/Base.lean:68`, 405, 457, 536, 699 | `Base`, integer root-span basis, height, positivity, and induction by simple reflections. Root and coroot signed expansions are separate fields. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/Irreducible.lean:147` | Actual invariant-submodule definition and both nontriviality fields; this is essential to R01 and the zero-space metric control. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/RootPositive.lean:50`, 66 | `InvariantForm` includes symmetry, nonzero root self-values and reflection invariance; it does not include positive definiteness. `two_mul_apply_root_root` fixes the coroot normalization. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:109`, 355 | Native integer Cartan matrix and `Base.equivOfCartanMatrixEq`; root-system, finite, reduced and characteristic-zero-domain context, with a simultaneous node equivalence. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/Chain.lean:110`, 120, 138 | `chainTopCoeff`, `chainBotCoeff`, `root_add_nsmul_mem_range_iff_le_chainTopCoeff`; the last includes linear independence, while dependent-root coefficients use zero. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/Hom.lean:305`, 538, 565, 614, 638, 674 | Contravariant `coweightEquiv`, reflection transport, `Aut`, and the weight/coweight/index homomorphisms; the coweight homomorphism targets the opposite group. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/Finite/CanonicalBilinear.lean:346`; `Finite/Nondegenerate.lean:205` | `posRootForm` and root-span positive definiteness. Positivity is on the stated span, not an arbitrary central ambient direction. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/BaseChange.lean:43`, 72, 132 | Balanced pairings and `restrictScalars'`/`restrictScalars`; this is restriction to spans, not a general finite-free integral extension construction. |
| Mathlib `Mathlib/GroupTheory/SemidirectProduct.lean:230`, 238 | `monoidHomSubgroup` and `mulEquivSubgroup`; normality of the first factor and the complement hypothesis are required. |
| Mathlib `Mathlib/LinearAlgebra/RootSystem/Finite/G2.lean:67` | `IsG2` extends crystallographicity, reducedness and irreducibility, and asserts a pairing −3. The concise G₂ signature therefore has these assumptions. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/Positive.lean:114`, 117, 280 | Positive/negative roots and the actual integral positive monoid; no real-cone substitution. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/Lowering.lean:92` | `exists_mem_support_height_reflectionPerm_lt` with finite, domain, reduced and inherited crystallographic/characteristic-zero hypotheses. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/Inversions/Basic.lean:50`; `Inversions/Length.lean:142`, 149 | Inversions are positive indices made negative by the forward action; minimal simple-word length as inversion count is already supplied, distinct from the new native-Coxeter-length comparison. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/Coxeter/Matrix.lean:93`, 278 | `coxeterOrder` and `coxeterMatrixOfBase`, including the total-function fallback 0 outside finite Cartan products. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/Coxeter/Presentation.lean:57`, 66, 82 | `weylCoxeterHom`, its generator equation, and surjectivity. Injectivity is not proved in this file; retaining §1.1 is justified. |
| Tau Ceti `TauCeti/GroupTheory/Coxeter/StrongExchange.lean:413`; `Matsumoto.lean:138` | Abstract strong exchange and the monoid-valued reduced-word braid theorem. Neither by itself identifies a root Weyl group with the presented group. |
| Tau Ceti `TauCeti/GroupTheory/Coxeter/Bruhat.lean:159`, 450; `Poincare.lean:87`, 92 | Native Bruhat order/subword criterion and finite-group length polynomial. The new comparisons use them, not replacement definitions. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/Chamber.lean:137`, 140; `FundamentalDomain.lean:186`, 199 | Closed/open dominant chambers, wall stabilizers and uniqueness of dominant representatives. The open chamber definition is in `Chamber.lean`, re-exported through `Weyl/Chamber.lean`. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/Weyl/Chamber.lean:112`, 243, 280, 363 | Translated open chambers, uniqueness, stabilizer and covering of regular weights, with the native ordered/reduced context. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/Weyl/Group.lean:153`, 337; `LongestElement.lean:194`, 200, 235 | Faithful root action, finite Weyl group, actual longest element, its inversions and square. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/DynkinType.lean:416`; `FiniteType/Basic.lean:121`; `FiniteType/Classification.lean:127` | `HasCartanType`, positive rational symmetrizer definition, unique valid type under the actual irreducible/nonempty hypotheses. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/FiniteType/Irreducible.lean:254`, 295 | Connected diagram and valid Cartan type imply native irreducibility **over a field**. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/RootLength.lean:123`, 207, 241 | Squared simple-length table, its root-row Cartan equation, and long-root predicate. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/Weyl/Orbit.lean:58`, 82, 101 | Every root is in a simple-root orbit; invariance of lengths and occurrence of each root length on a simple root. Coefficient transport in §4.1 is an additional comparison. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/Assembly.lean:79`, 94, 205, 498 | Uniform finite root-index carrier, integral datum/base, simple-index map, and Cartan type. No second enum or datum is needed. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/Rational.lean:80`, 87, 191; `BaseChange.lean:124`, 235 | Rational pairing/base and marked Cartan type; existing extension is on dot-product coordinate modules. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/DiagramAutomorphism.lean:107`, 267, 298, 363 | Native rational/integral diagram actions, determination by simple indices and diagram homomorphism. General based-factor identification remains the §2.2 target. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/InvariantForm/Basic.lean:40` | `two_mul_apply_root` works for an arbitrary first vector, not merely a second root. |
| Tau Ceti `TauCeti/LinearAlgebra/RootSystem/RankTwo.lean:354`, 428 | G₂ recognition and its iff are already proved; R03. |

The source/ownership search used objects—root-system components, based automorphisms, Weyl complements, invariant forms, positive scales, highest roots, Coxeter presentations and integral diagram actions—in the pins, main, board packages and indexed open roadmaps. Broad search hits were narrowed and relevant files opened. No competing fully qualified declaration was found for the nine retained main theorems. The two metric companion names are a same-folder duplicate, not an independent supplier.

### Cross-roadmap ownership and supplier order

Two main-branch roadmaps were read for shape and ownership: `TauCetiRoadmap/ReflectionInvariantTheory/README.md` and `Completed/IntegralLattices/README.md`. The root-system roadmap on main was also compared: its type-A sum-zero realization and concrete A/G₂ Weyl groups are existing work (`TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:346`, 393, 407), not targets to transfer to an unrelated new owner.

All **eight named cross-roadmap references** were resolved to their actual sections:

| Roadmap / source of text | Resolved ownership or consumer citation |
|---|---|
| LieHighestWeight, main | `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:351`, 370 and Layer 6: root-space/weight-lattice and Weyl-formula programme. |
| ReflectionInvariantTheory, main | `TauCetiRoadmap/ReflectionInvariantTheory/README.md:40`, 68: general reflection arrangement/Coxeter construction and Weyl degrees/exponents. Its Weyl specialization explicitly consumes RootSystems. |
| RootSystemsPartII, supplied open head | `TauCetiRoadmap/RootSystemsPartII/README.md:5`, 201, 218, 343: integral steps, finite folds, adjacent reversal and ambient export. Its uses of based automorphisms and type-A coordinates extend the base programme; they do not supply the base complement theorem. |
| ReductiveGroups, main | `TauCetiRoadmap/ReductiveGroups/README.md:1230`, 1272: §9A.1a-L owns kernel-fixing ADE cover lifts and explicitly consumes the Weyl/based factorization. No cover-lift construction is replanned here. |
| ZigzagPreprojective, main | `TauCetiRoadmap/ZigzagPreprojective/README.md:205`: Layer 0 supplies affine diagrams, doubled quivers and grading; no game-classification ownership is now claimed. |
| ClassicalGroups, main | `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:237`, 251: maximal tori/weights and the classical Weyl-group specialization. |
| CFSGStatement, main | `TauCetiRoadmap/CFSGStatement/README.md:195`, 215, 298: L0–L1 consume numbered data for ambient groups and Steinberg maps. |
| LieGroups, main | `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md`, Layer 6 and line 428: maximal-torus Weyl action and Layer 8 Bruhat cells. No nonexistent “8N” citation remains. |

Completed IntegralLattices owns dual lattices, discriminant forms and overlattice gluing; it explicitly leaves roots, Weyl groups and root data to this owner. Here the target is restriction of a **root-datum automorphism** to specified dual lattices, not rebuilding generic discriminant-form theory. ReflectionInvariantTheory's general finite reflection-group presentation must compare to this owner's crystallographic presentation; it is not used backwards as a prerequisite. RootSystemsPartII's even-A folded realization is a new fold comparison, not a competing owner of the base type-A Weyl group.

The citation resolver found no cross-roadmap citation or roadmap Lean name missing. It explicitly reported that it had not checked external-library names, so the pin checks above were performed independently. Revisions of existing roadmaps were not treated as suppliers; ownership was read on main. Open-work ownership was checked using the supplied indexed tools and the relevant supplied sibling files; this is not a claim to have read every open roadmap in full.

Every `*Needs:*` line was read. The dependencies of Layers 1–5 are on native APIs and earlier local targets. There is no named external roadmap used as a mathematical supplier in those lines, no declared gap, and no newly required upward edge. The mechanical output was:

```text
depcheck: 204 roadmaps, 1485 edges, 0 problem(s)
```

There was no `UPWARD`, `CYCLE` or `moved:` line. The root-span/chamber and finite-free extension work needed by §2.3 is explicitly owned there. Native restriction of scalars does not silently supply arbitrary integral scalar extension.

### Headline coverage and shape

The nine main-file theorems cover marked presentation, length/inversions, real and full integral complements, unique metric scale, two squared lengths, greatest positive root, type-A symmetric group and type-G₂ dihedral group. The automorphism-factor identification is the additional statable endpoint missing under R02. The componentwise metric parameterization and arbitrary finite-free scalar-extension/cylinder comparison are named in the module docstring with the missing constructions. Native carriers make the two metric and greatest-root statements statable, and they are now present.

Normality and the generic semidirect-product API explain how the complement theorem yields the semidirect endpoint; a second generic semidirect API is not requested. The simple-generator marking is present in both presentation and length statements. The orbit/reflection-coordinate comparisons and simply-laced ascent are README API targets, not small-value acceptance padding. The root-count examples remain Checks.

The README now has the prescribed opening, scope, conventions, supplier contracts, build explanation, five layers with Examples/Dependencies, consumers and references. Its retained definitions—base stabilizer, lattice-preserving subgroup, root component spaces and coefficient reflections—have API lists and at least three discriminating checks. Scalar extension and componentwise reconstruction have explicit comparison requirements and rank-zero/central checks. No algorithm deliverable, admitted data, copied source passage, vacuous free predicate, route-specific good-prime restriction, or local replacement Dynkin family was found in the repaired main roadmap. R04 and R05 remain file-form/source exceptions.

### Seeded source verification

All **twelve sampled subsections** were visited. No locator is explicitly labelled unverified in this README. The two legally readable source texts were fetched through the sources service. The links here identify those texts; numbered source lines below are the service's extraction, not web line numbers: [Milne's author edition](https://www.jmilne.org/math/Books/iAG2017.pdf) and [SGA 3 XXI, Gille–Polo edition of 13 October 2024](https://webusers.imj-prg.fr/~patrick.polo/SGA3/Exp21-13oct24.pdf).

| Sample | Text and locator inspected | Support and limits |
|---|---|---|
| 1.1 Completeness of the relations | milne17 line 25096, C.22 p.612; line 25018, C.11 p.610; line 24910, standing hypotheses | C.22 gives the Coxeter group on the simple reflections, via C.11. The text uses characteristic-zero fields; the roadmap's domain statement requires its native integral-coordinate transport, not a claim that Milne literally states the ring version. |
| 1.2 Length and reduced expressions | bourbaki46 VI §1 no.6; bjornerbrenti05 §2.2, Thm 3.3.1 | Both texts uncertified; not read. The native length, exchange, Matsumoto, Bruhat and Poincaré statements and all A₂ values were checked separately. |
| 2.1 The actual base stabilizer | sga3iii line 1374, XXI Prop.6.7.2 p.99; line 1368, Lemma6.7.1 p.98; line 1051, Prop.6.1.3 p.90; milne17 line 25554, C.53 p.624 | Semidirect factor is the actual base stabilizer; conjugation transports reflections; chambers/positive systems transport. SGA permits central lattice directions. |
| 2.2 Oriented diagrams and actual isogeny lattices | sga3iii line 1627, Cor.7.3.4 p.105; line 1654, Cor.7.4.5 p.105; line 1660, Rem.7.4.6 p.106; milne17 line 25559, p.624 | SGA's unrestricted diagram identification is simply connected or adjoint, as the README now says. General real identification follows Cartan determination; intermediate integral forms must preserve the lattice. D₄ order-2 stabilizer confirms the restriction. |
| 2.3 Full integral data and central directions | sga3iii line 19, finite-free dual lattices; line 1374, Prop.6.7.2; milne17 line 25314, C.43 p.618; line 25401, C.51 p.620 | Full-data complement and finite-index central/derived sum are supported. The README's page 617 for C.43 is wrong. No integral splitting is claimed by the source. |
| 3.1 Irreducible components | milne17 line 25102, C.23 p.612; line 25585, C.55 p.625 | C.23 gives unique direct-sum decomposition; C.55 explicitly relates it to diagram components. The latter is the missing precise locator at the construction. |
| 3.2 Positive invariant forms and squared lengths | milne17 line 25421, C(g) p.621; line 25438, table (180) p.621; line 25611, C.56 p.625, diagrams p.626 | Scalar uniqueness and classified crystallographic length ratios are supported. The source is reduced/crystallographic after C.18. The more general scalar theorem is sound via the native identity, but is a generalization requiring its own stated derivation. |
| 4.1 Integral coordinates and reflection orbits | sga3iii line 26, §1.1.1 formula (1), p.63; line 41, §1.1.2 formulas (2)–(3), p.64; milne17 line 25088 and 25096, C.21–22 p.612 | Reflection, involution and union of simple-root Weyl orbits are supported. Translating to a coefficient column gives the printed transpose, as independently tested in B₂. |
| 4.2 Greatest positive roots | milne17 line 25111, C.24 p.612 | Explicit greatest coefficient vector, not just a maximal element, for indecomposable systems. The simply-laced ascent citation to Bourbaki was not text-verified; its sampled arithmetic was checked. |
| 4.3 Numbered family comparisons | bourbaki46 VI §4, Planches I–IX | Text unavailable. E and C values were independently recomputed, including the C₄ full set and exceptional node transport; that is not certification of the plate locator. |
| 5.1 Type A | milne17 line 25053, C.16 p.611; line 25116, C.25 pp.612–613 | Sum-zero roots, coordinate transpositions and Sₙ₊₁ are supported. C.25 has the sign/inequality slips recorded below; the roadmap's coordinates/counts do not inherit them. |
| 5.2 Type G₂ | milne17 line 25476 and 25494, C(g) p.622, convention on line 25498 p.623 | Short-first diagram has twelve roots and W=D₆; Dₙ is explicitly order 2n. The extra type-recognition work is already supplied at the pin. |

## Not verifiable

- **bourbaki46**, *Lie Groups and Lie Algebras, Chapters 4–6*, 2002: the source service resolved the bibliographic citation only to a paywalled Springer work and returned `uncertified`. I did not read VI §1 nos.3,6,8 or the §4 plates. This affects textual certification of §1.2, the simply-laced ascent locator in §4.2, and §4.3. Independent computations and native declarations are recorded above, not substituted for a source read.
- **bjornerbrenti05**, *Combinatorics of Coxeter Groups*, 2005: bibliographic lookup initially found no legal text. A publisher search identified DOI `10.1007/3-540-27596-7`; the source service then returned `uncertified` for that DOI. §2.2 and Theorem 3.3.1 were not read. The failed preliminary request is superseded by the settled paywalled outcome; no unresolved request remains and this review is not parked.
- The repaired type-A and diagram-extension signatures were elaborated, not proved. The ℤ[1/2] separating root-pairing model is the explicit mathematical construction in R01, not a fully mechanized Lean countermodel.

## Source issues

- **Misprint** in milne17 at Example C.25, printed p.612 (milne17 line 25120): the source says positive type-A roots have i>j for its decreasing-coordinate vector; it should be i<j, with the subsequent decomposition inequalities and intermediate indices reversed consistently; affects a stated result.
- **Error** in milne17 at Appendix C(g), printed p.622 (milne17 line 25453): the source says both off-diagonal simple-root pairings are negative; it should be nonpositive, with both zero for the displayed A₁×A₁ system; affects a stated result.
