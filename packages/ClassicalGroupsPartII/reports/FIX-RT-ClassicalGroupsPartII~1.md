# Repair report: ClassicalGroupsPartII

Finding identifiers below retain each review's original numbering. The two groups distinguish identically numbered findings. Shared repairs are described once mathematically and referenced explicitly in the other finding's disposition.

# Review r1a

## F01 (P1) — applied

Unrestricted support equivalence → `mem_positiveSubring` with explicit g and 0<g binders. The positive presentation also explicitly requires positive rank. README §CG.3.1 computes B₀=Z, cone(t)=1 and t∉B₀; the multiplier Check explicitly assumes g≥1. The admitted multiplier example was deleted with the other examples.

## F02 (P1) — applied differently

Nonexistent Monoidal import → no Tau Ceti imports, since the retained headlines use Mathlib carriers only. Every Grothendieck-ring link now names Monoidal/Basic.lean at Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039; every Mathlib link uses 6b7abb3c7686292736be2955bd3eb9ebf63b456a. SplitK0 signatures were read at those pins.

## F03 (P1) — applied differently

Admitted coordinate/representation/equivalence data → README construction targets and explicit missing-carrier explanations in the module docstring. Real elementary definitions support three headline theorems: full invariant presentation, support criterion and positive invariant presentation. Both presentations existentially quantify equivalences and specify generator images. Unneeded lattice-degree/root-order prototypes remain mathematical README requirements rather than extra Lean definitions.

## F04 (P3) — applied differently

All 58 admitted examples → prose Checks in the README, with no Lean examples. The acceptance file contains only necessary definitions and three deep theorem admissions. No quota of replacement examples or boundary-case theorems was introduced. The root-order, contraction, rank-zero and orbit-coefficient Checks were strengthened where the old tests did not discriminate.

## F05 (P3) — applied

Eleven Mathlib subimports, the option, old namespace and lemma/API declarations → one `import Mathlib`, namespace TauCetiRoadmap.ClassicalGroupsPartII, documented real definitions and three `theorem` declarations. The module docstring identifies the roadmap and missing carriers. Layer comments match the README order. All 24 retained declaration names occur in the README.

## F06 (P1) — not actionable in this package: supplier statements require supplier edits

ReductiveGroups Layers 1 and 3 do not state the two claimed contracts. README Exact supplier contracts and the plan's top-level gaps now register generated-vector-base-change, central-quotient-representations and finite-comodule-category. Native tensor, braiding and preadditivity remain inputs. This package cannot add those generic supplier statements; no claim that they already exist remains.

## F07 (P2) — applied

Independent split classification/descent and generic formal-character proof plans → consumption of ReductiveGroups §10A–10B. Scope, Layer CG.1 introduction, rational models, classification comparison and formal-character construction now consistently specialize those supplied results. The retained work identifies X_g and the explicit primitive-tensor component with the supplied simple, then transports classification and extension.

## F08 (P2) — applied

Generic exterior-coaction request → native Comodule.exteriorPower, Hom.exteriorPowerMap and baseChange_subtype_endOfPoint_ιMulti from ExteriorAlgebra/Power.lean. The supplier contract and §CG.1.2 reuse these declarations. Only GSp bundling, boundary identifications and comparison with the abstract trace calculation remain specialized targets. No exterior construction is added to Suggested.lean.

## F09 (P1) — applied differently

Cover/reductivity after root data → §CG.0.2, immediately after the coordinate presentation. Kernel and fppf lifts use only coordinates and Sp. Connectedness follows from the quotient; reductivity follows from the faithful standard action and Milne Corollary 19.18. The torus, Borel and Weyl interface follow. Parity and representation descent remain in §CG.0.6.

## F10 (P3) — applied

Chapter 22 classification citation for Hom/weight comparison → Milne Chapter 4 §i, Corollary 4.34 and Exercise 4-4(a,b), pp.96–97. Weight spaces use invariants after inverse-character twisting. Chapter 22 remains attached to classification. The source manifest and References include the corrected locators.

## F11 (P3) — applied differently

Homogeneity/unit/unique-preimage Checks → nonzero signed contraction values and coefficient-sensitive inverse images. Sections CG.1.4, CG.2.4, CG.2.6, CG.3.2 and CG.3.5 now test κ₂(e₁∧f₁)=1, its reversed value −1, x₁²−2t and the three terms of Sym²V. No admitted Lean examples or Check-mirroring declarations remain.

## F12 (P3) — applied differently

Unregistered prototype names → a necessary-definition acceptance file with all 24 names registered in README contracts. Deleted API identifiers no longer promise Lean declarations. Root order and simple roots have explicit formulas and positive, negative and central-degree Checks in §CG.0.3; coneValue has its own three numerical Checks in §CG.3.1. Retained elementary definitions have coefficient-sensitive Checks.

## F13 (P3) — applied

Absent manifest → sources.toml with the three lifetime keys yu, milne and sternberg. All three were fetched through the sources service from legal copies, certified, and recorded with bibliography, locators, cited-for mappings, URL, hash and retrieval metadata. No source text was copied into the package. No reference request is outstanding.

# Review r1b

## F01 (P2) — applied differently

Unstated ClassicalGroups comodule comparisons → the GSp-specific standard point comparison target in §CG.1.2, using ReductiveGroups Layer 1's dictionary and schematic density. Checks separate torus stability from GSp stability. General-k alternating-image splitting now cites ClassicalGroups Layer 2; the rational projector supplies its K-form. The missing GSp carriers preclude a Lean declaration of this comparison.

## F02 (P3) — applied

Field-list/TeX format → summary, ownership, conventions, exact supplier subsections, build order, numbered topics, closing Needs sentences, Checks and layer Examples/Dependencies. The title identifies ClassicalGroups Part II. All eight displays preserve their mathematics in code spans. Renumbered topic headings have corresponding internal-link updates; the earlier anchor-tag removal is preserved.

## F03 (P3) — applied differently

Unused and indirect Tau Ceti imports → removal of every Tau Ceti import after the admitted representation API was eliminated. The surviving real definitions and headlines use only Mathlib, so adding the suggested replacement imports would leave unused dependencies. The exterior modules remain accurately cited in the README's native supplier contracts.

## F04 (P3) — applied differently

Easy admitted proof fields and admitted API examples → deletion of the unnecessary declarations and all examples. Necessary permutation/flip definitions have genuine proofs; exterior characters use polynomial coefficients with a signed-degree guard. Boundary calculations remain README Checks. No theorem that closes by a routine library tactic is retained as a deep target or proved in place.

# Evidence and ownership

The main checkout is a07e202; pinned revisions are the Mathlib and Tau Ceti hashes recorded under F02. Cross-roadmap sections and heading links were checked against main, not against progress revisions. Roadmap search checked objects across main and the indexed open heads, including the supplied sibling heads; the board packages were also searched. No sibling owns the integral reciprocal invariant presentation or this GSp primitive-tensor comparison. General split classification and scalar extension belong to ReductiveGroups, while the three missing generic contracts are supplier gaps. No ownership was moved to a later roadmap.

| Evidence | Exact location and consequence |
| --- | --- |
| Integral cone and two rings | yu line 3730, line 3736, line 3745, line 3761 and line 3766: independent multiplier, reciprocal substitutions, support condition and primitive generators. Version is arXiv v5, dated 18 July 2022, with §7.1 on p.64. |
| Hom and invariants | milne line 4245, line 4256 and line 4281: schematic-density comparison, invariant base change, Hom comparison and infinite-field isomorphism reflection. |
| Highest weights | milne line 19285, line 19291, line 19304, line 19308, line 19313 and line 19317: actual root order, classification, scalar endomorphisms and field extension. |
| Central parity | milne line 19360 and line 19367: central character and finite-index lattice under a central isogeny. These are used after reductivity, not to prove it. |
| Early reductivity | milne line 16488, line 16492 and line 16502: faithful semisimple action criterion and the standard Sp action. The early target uses this route without root data. |
| Semisimplicity | milne line 19813 and line 19859: scalar descent and the characteristic-zero connected reductivity equivalence. |
| Primitive construction | sternberg line 5024, line 5043 and line 5143: Cartan tensor top line, contraction to degree k−2 and second fundamental dimension. The lower binomial index printed at line 5054 is erroneous; the roadmap retains k−2, as required by the displayed target and rank-nullity. |
| ReductiveGroups ownership | TauCetiRoadmap/ReductiveGroups/README.md, Layer 1 lines 176–225; Layer 3 lines 234–247; Layer 6 lines 466–477; Layer 7 lines 627–647; §10A–10B lines 1731–1782. The missing contracts are not silently attributed to these sections. |
| ClassicalGroups comparison | TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md, Layer 0 lines 177–191; Layer 1 lines 201–213; Layer 2 lines 216–235. Layer 1's tensor-square decomposition does not supply the general column-Schur statement. |
| Lie classification | TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md, Layer 4, beginning line 537: the abstract classification is consumed, not rebuilt. |
| Native finite category | TauCeti/Algebra/Coalgebra/Comodule/Finite/Basic.lean:64,96; Finite/Preadditive.lean:48; Finite/Monoidal.lean:161; Finite/Symmetric.lean:81; Finite/Product.lean:158. Finite generation, preadditivity, tensor, braiding and biproducts do not themselves assert the additional gap contracts. |
| Native exterior operations | TauCeti/Algebra/Coalgebra/Comodule/ExteriorAlgebra/Power.lean:73,110,166: exterior coaction, exterior morphism and pure-wedge point action; no reducedness restriction on the value algebra. |
| Native kernels and coefficients | TauCeti/Algebra/Coalgebra/Subcomodule/Comap.lean:238,249 and Comodule/MatrixCoefficient/Subcoalgebra.lean:53,92. Flatness and Noetherianity, respectively finite freeness, are supplied by field coefficients and finite dimension. |
| Native base change and weights | TauCeti/Algebra/Coalgebra/Comodule/BaseChange.lean:166; TauCeti/Algebra/AlgebraicGroup/DiagonalizableGroup/Weight.lean:83,105,112. Coefficient coalgebra and module both change under extension; weightSpace's module argument is explicit. |
| Grothendieck ring | TauCeti/CategoryTheory/GrothendieckGroup/Monoidal/Basic.lean:114,179,263,324: actual category hypotheses, tensor class formula, lifting and additive monoidal functor map. The old Monoidal.lean file is absent. |
| Existing coordinates and trace | TauCeti/Algebra/AlgebraicGroup/Symplectic/Basic.lean:104; GeneralLinear/Coordinate/HopfAlgebra.lean:479; TauCeti/RepresentationTheory/ClassicalGroups/ExteriorPower.lean:138. These provide Sp, GL and the abstract exterior trace, not the independent GSp coordinate algebra. |
| Mathlib carriers | Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean:42 is the unit group of the matrix algebra; Mathlib/Algebra/MonoidAlgebra/Basic.lean:302 is domain transport; Mathlib/RingTheory/MvPolynomial/Symmetric/FundamentalTheorem.lean:340 is the integral symmetric-polynomial equivalence. |

# Adversarial mathematics pass

Each row records computed values, including the changed statements and their consumers. Numerical checks supplement the algebraic arguments and source verification; they are not proofs of the general results. Representation statements retain g≥1 and characteristic-zero field coefficients. The integral constructions admit g=0; only the full presentation extends to that rank. Finite positive-characteristic examples are negative controls, not a narrowing to selected primes. Unrelated topological, DVR and noncommutative-group inputs are not admitted by these carriers.

| Statement | Instances tried and values on both sides | Result | Change |
| --- | --- | --- | --- |
| Weight | g=0 gives Z; g=1 gives Z²; (−1,0) remains a lattice element | Matches independent multiplier | Genuine alias |
| Laurent | g=0 has basis t^m; coefficients of 1,t,t⁻¹ at weight 0 are 1,0,0 | Distinct free basis elements | Genuine alias |
| monomial | [0]=1; [a][−a]=[0]; coefficient of [a] at a is 1 and at a+e_t is 0 | Addition of weights matches multiplication | Genuine body |
| t | Weight (1,0); scalar degree 2; coefficient at (1,0) is 1 | Independent multiplier | Genuine body |
| tInv | Weight (−1,0); t·tInv=[0]=1; scalar degree −2 | Correct inverse | Genuine body |
| z | g=1 weight (0,1), degree 1; coefficient at (1,−1) is 0 | First letter distinct from its partner | Genuine body |
| pairedZ | g=1 weight (1,−1), degree 1; z·pairedZ=t | Reciprocal letter, not z⁻¹ | Genuine body |
| Coordinate algebra | g=1, h=diag(2,3): hJhᵀ=6J and det(h)=6 | s=det in rank one | Prose target |
| Matrix-entry coordinates | At diag(2,3), x₁₁=2, x₂₂=3, x₁₂=x₂₁=0 | Generic entries evaluate correctly | Prose interface |
| Multiplier coordinate | At 2I, s=4 and s⁻¹=1/4; at I both are 1 | Group-like/invertible normalization | Prose interface |
| Coordinate Hopf operations | h=diag(2,3), k=diag(5,7): hk=diag(10,21) has multiplier 210=6·35; I has multiplier 1; h⁻¹ has multiplier 1/6 | Coproduct, counit and antipode conventions agree | Retained |
| Points equivalence | diag(2,3) ↔ s=6; zero 2×2 matrix has det 0 and no invertible point | Both directions use invertibility | Retained |
| Zero value algebra | In the zero K-algebra I=0 and its unique matrix is a unit; both point sets have one element | Functor allows the zero algebra consistently | Retained |
| Multiplier-one quotient | diag(2,1/2) has s=1 and belongs to Sp; diag(2,3) has s=6 and does not | Hopf fibre, not selected rational points | Retained |
| Form convention | ω(e₁,f₁)=1, ω(f₁,e₁)=−1; diag(2,3) scales both by 6 | hJhᵀ and hᵀJh agree at multiplier 6 | Retained |
| Early central cover | π(a,c)=ca has multiplier c²; c=−1,a=−I gives I | Kernel contains diagonal μ₂ | Moved earlier |
| Exact kernel | ca=I gives a=c⁻¹I; symplectic equation gives c²=1, hence a=cI | Reverse inclusion computed | Retained |
| fppf lift | s=2: basis {1,C}, C²=2, C⁻¹=C/2 and (C⁻¹h) multiplier 1 | Rank-two faithfully flat algebra | Moved earlier |
| Q-point obstruction | diag(1,2) would need c²=2 in Q; no such rational c | Field-point surjectivity fails | Negative control retained |
| Nonreduced lift | In Q[ε]/ε², (1+ε/2)²=1+ε, and its inverse is 1−ε/2 | Nonreduced value algebra supported | Added Check |
| Connectedness/reductivity route | Over an algebraic closure, a nonzero vector extends to a symplectic basis; its Sp orbit is all nonzero vectors, so invariant subspaces have dimension 0 or 2g | Faithful absolutely simple defining action meets Corollary 19.18 | No root prerequisite |
| Rank-zero matrix group | GL₀ has one matrix while every unit can be a multiplier; the equation has no entry fixing s | Representation carrier requires g≥1 | Excluded explicitly |
| Central degree | d(e_t)=2, d(e_i)=1, d(e_t−e_i)=1; d(−e_t)=−2 | Distinguishes multiplier exponent and scalar degree | README interface |
| Dominance | (−1,0) is dominant; (0,(−1)) is not; g=2, u=(1,2) is not antitone | m unrestricted, u chamber fixed | Retained |
| Cover-weight injection | (m,u)=(−1,(2,−3)) maps to ((2,−3),−3); (−3−(−1))/2=−1 | Recovers m uniquely | README interface |
| Cover-weight image | g=1, (u,d)=(1,0) gives (d−u)/2=−1/2, absent; (1,1) gives m=0 | Exactly the parity lattice | Retained |
| Simple roots | g=1 α=(−1,2), degree 0; g=2 roots (0,1,−1),(−1,0,2), both degree 0 | Correct long-root multiplier sign | Added Checks |
| Coroots | At g=2, u=(2,1) pairs as (1,1); u=(1,2) gives (−1,2) | Correct dominant chamber | Retained |
| Root-order reflexivity | μ−μ=0, all root coefficients 0 | μ≤μ | Added Check |
| Root-order direction | 0≤α uses coefficient 1; α≤0 would require coefficient −1 | Reverse direction fails | Added Check |
| Root-order degree restriction | d(0)=0 and d(e_t)=2; neither difference is a sum of degree-zero simple roots | Both directions excluded | Added Check |
| Root-order transitivity | 0≤α≤2α uses coefficients 1 and 1, with sum 2; in rank one 2α=(−2,4) | Nonnegative coefficients add | Retained |
| Diagonal torus | t=6,z=2 gives diag(2,3); t=1,z=2 gives diag(2,1/2) | Similitude multiplier 6, respectively 1 | Retained |
| Scalar subtorus | c=2 gives t=4,z_i=2 and paired entries 4/2=2 | Matrix equals 2I | Retained |
| Torus coordinate restriction | Off-diagonal entries give 0; first paired entry gives z; second gives t/z; their product gives t | Coordinate source and target fixed | Retained |
| permWeight | At g=2, swap (−1,2,−3)=(−1,−3,2), twice recovers (−1,2,−3) | Correct relabelling | Real equivalence |
| Permutation direction | Cycle (1 2 3) sends z₁ to z₂ via u∘σ⁻¹; u∘σ would give z₃ | Inverse convention distinguished | Added Check |
| flipWeight | g=1, flip(−1,2)=(1,−2), twice returns (−1,2); degrees both 0 | Correct multiplier shift | Real equivalence |
| flipWeight additivity | flip((0,1)+(0,−1))=(0,0); (1,−1)+(−1,1)=(0,0) | Map-add proof has actual body | Repaired proof field |
| permLaurent | Swap sends z₁² to z₂²; t⁻¹→t⁻¹ and −3→−3 | Exponents move, coefficients remain fixed | Real domain transport |
| flipLaurent | z²→t²/z², t⁻¹→t⁻¹ and −3→−3 | Ordinary inversion gives wrong t power | Real domain transport |
| Weyl relations | On (−1,2,−3), flip₁flip₂ and flip₂flip₁ both give (−2,−2,3); conjugate relabels pair index | Relations computed independently | README interface |
| Normalizer Weyl group | At rank one, r=[[0,1],[−1,0]] has r²=−I and conjugates diag(z,t/z) to diag(t/z,z); its normalizer class has order 2 | Reciprocal flip, not ordinary inversion | Retained |
| Nonabelian Weyl test | At g=2, swap·flip₁ sends e₁ to (1,0,−1), while flip₁·swap sends it to e₂=(0,0,1); g=3 permutations include the six-element S₃ subgroup | Semidirect action is noncommutative; only distinct flips commute | Retained |
| Scalar degree under Weyl action | Above weight has degree −3; both flips give degree −3 and swap also gives −3 | Central degree preserved | Retained |
| invariantSubring | Rank one: 1,t,x fixed; z maps to t/z≠z. Rank two: x₁ maps under swap to x₂≠x₁ | Both generator families needed | Real equalizer intersection |
| Rank-zero invariants | No flips, only identity permutation: fixed ring equals Z[t±1], including t⁻¹ | Full presentation valid at g=0 | Explicit Check |
| Central parity descent | Standard Sp weight sum 1 with d=1 gives (−1)²=1; d=0 gives −1 | Correct diagonal kernel action | After early cover |
| Multiplier parity | u=0,d=±2 gives even parity; m=±1 | Both ν and ν⁻¹ descend | Retained |
| Finite representation category | Zero module dimension 0, tensor unit dimension 1; 1⊗0 has dimension 0 | Native finite-comodule carrier appropriate | Category additions are a gap |
| Split Grothendieck ring | [0]=0, [1]=1, [1⊕1]=2 and [1⊗1]=1 | Native biproduct and tensor relations | No new K₀ construction |
| Dimension map | dim(V⊕1)=2g+1; dim(V⊗V)=4g²; at g=1 values 3 and 4 | Additive and multiplicative | README target |
| Standard coaction | δ(e_b)=Σ_a e_a⊗x_ab; evaluation at diag(2,3) sends e₁ to 2e₁ and e₂ to 3e₂ | Column action, not inverse/transpose | Retained |
| Standard point comparison | At 2I, V acts by 2, inverse action by 1/2 and multiplier by 4 | Actual matrix restriction fixed | Added target |
| Subcomodule versus point stability | K e₁ has torus eigenvalue z₁ but pair swap sends e₁ to −f₁; zero/whole have dimensions 0,2g | Torus-only criterion fails | Added Checks |
| Exterior comodule | g=1: Λ⁰V has dimension 1, Λ¹V dimension 2, Λ²V dimension 1, Λ³V dimension 0 | Boundary values align with native exterior powers | Reused pin |
| Nonreduced exterior point action | For h=(1+ε)I over Q[ε]/ε², action on Λ² is (1+ε)²=1+2ε | Native value-algebra action has no reducedness assumption | Explicit evidence |
| Tensor powers | V^⊗0=1; at g=1 dimensions for d=0,1,2 are 1,2,4 | Zeroth power included | Retained |
| Multiplier twists | ν⁰=1, ν¹(cI)=c², ν⁻¹(2I)=1/4 | Negative twists are algebraic | Retained |
| Tensor and dual multiplier laws | At c=2, ν¹ν⁻¹=4·1/4=1; ν¹ν¹=16=ν² | Tensor exponent addition and dual negation | Retained |
| Alternating pairing | At e₁,f₁ values 1 and −1 on reversal; at 2e₁,2f₁ value 4 | Zero map and sign reversal excluded | Stronger Check |
| Contraction target | g≥2, κ₂(e₁∧f₁)=1 in ν; scalar 2 sends it to 4, trivial target would keep 1 | ν twist required | Stronger Check |
| Higher contraction signs | κ₃(e₁∧e₂∧f₁)=−e₂; omission positions (1,3) have sign (−1)³=−1 | Omission order matters | Sign recomputed |
| Primitive definition | P₀=1, P₁=V; at g=2, Λ² dimension 6 and contraction rank 1 gives dim P₂=5 | Kernel not whole exterior power | Retained |
| Primitive inclusion | e₁∧e₂ maps into Λ² with contraction 0; e₁∧f₁ has contraction 1 and is outside P₂ | Positive and negative kernel witnesses | Retained |
| Raising map normalization | L₀(1)=Σe_i∧f_i; κ₂L₀(1)=g, hence g=2 gives 2 | Plus sign matches pairing | Explicit source/target added |
| Lefschetz commutator | On Λ⁰ at g=2: κL−Lκ=2; on Λ¹ at g=2: value 1; on Λ²: value 0 | Formula g−k, not k−g | Recomputed |
| Primitive surjectivity | k=2,g=2: target dimension 1, κ(e₁∧f₁)=1; k=3,g=3: dimensions 20→6, kernel 14 | Correct range k≤g | Retained |
| Primitive decomposition | g=2,k=2: 6=5+1; g=3,k=3: 20=14+6; k=1: 2g=2g+0 | Dimension and correction agree | Retained |
| Fundamental highest weight | e₁∧e₂ at g=2 has weight (0,1,1), degree 2; P₁ highest weight (0,1,0), degree 1 | Explicit kernel vectors identify supplied simples | Comparison target |
| Antisymmetrization splitting | k=0 projector 1; k=1 identity; k=2 projector (1−swap)/2 has eigenvalues 1 on e∧f and 0 on symmetric tensors | All-k column-Schur owner is Layer 2 | Citation corrected |
| Characteristic restriction | In characteristic 2, 1/2 is undefined and 2=0 in κL₀ at g=2; char0 has 2≠0 | Splitting proof needs char0, no selected-prime scope | Standing hypothesis retained |
| Coordinate field extension | Q→K carries x_ab,s,s⁻¹ to 1⊗x_ab,1⊗s,1⊗s⁻¹; relation s s⁻¹−1 remains 0 | Native base change transports both structures | Specialized target |
| Morphism field extension | a⊗f sends 1⊗v to a⊗f(v); for f=0 output 0, for f=id output a⊗v | Actual map specified | Retained |
| Hom comparison | M=N=1, K⊗_F F→K sends a⊗b↦ab; dimensions 1 and 1 over K | Surjective after tensoring | Locator corrected |
| Non-fullness | Q→C: unextended Hom image is Q; multiplication by i is absent, and i⊗id in C⊗_Q Hom_Q(1,1) maps to multiplication by i | Extension of Hom is essential | Negative control retained |
| Weight-space extension | Standard rank one has two spaces, dimensions 1,1 over Q and K; nonexistent zero weight has dimension 0 on both sides | Twist by inverse character has invariant dimension 1 or 0 accordingly | Corrected source |
| Reflection of maps/isomorphisms | Unit map multiplication by 2 has determinant 2≠0 over F and K; zero map determinant 0 over both | Faithful extension reflects invertibility | Retained |
| Generated-vector supplier gap | v=0 generates dimension 0; tensor top vector is nonzero and has top multiplicity 1 after extension | Needed generic compatibility stated as gap | No invented supplier theorem |
| Cartan exponents | u=(3,1,0) gives a=(2,1,0); Σk a_k=2+2=4=Σu_i | Chosen tensor has right top weight and degree | GSp-specific comparison |
| Rational Cartan model | g=1,u=2 gives Sym²V of dimension 3; m=−1 gives det⁻¹ Sym²V, degree 0 | Explicit model matches supplied split simple | Replaced duplicate classification |
| Twist law for models | ν⁻¹⊗L(1,u)=L(0,u); at u=0 characters t⁻¹t=1 | Unrestricted integer exponent | Retained |
| Zero and direct-sum classification | The zero object has all simple multiplicities 0; 1⊕1 has unit multiplicity 2 and dimension 2; a unit has multiplicity 1 and dimension 1 | Multiplicity classification includes zero and distinguishes repeated simples | Imported §10B and semisimplicity |
| Classification comparison | g=1,(m,u)=(−1,0),(0,1),(1,0) give dimensions 1,2,1 and degrees −2,1,2 | Distinct labels, negative twist present | Imported §10B |
| Scalar endomorphisms | Unit End_Q=Q and End_C=C each have dimension 1 over the coefficient field | No category equivalence asserted | Imported §10B |
| Scalar-extension ring equivalence | Q→Q fixes [V],[ν]; Q→C sends their characters to the same x and t, each with coefficient 1 | Simple basis preserved | Specialized consequence |
| formalCharacter | Unit coefficients: at 0 value 1; zero object all coefficients 0; standard rank one coefficients at z and t/z are 1 each | Finite integral weight sum | Imported §10A, specialized |
| Character addition/multiplication | ch(V⊕1)=x+1; ch(V⊗V)=x²=z²+2t+t²/z² | Multiplicity 2 at t, not 1 | Native SplitK0 lift |
| Trace on value algebras | At t=6,z=2, x=2+3=5 equals trace diag(2,3); at 2I, trace V=4 for g=1 | Trace agrees with formal character evaluation | Retained |
| Augmentation | t=z_i=1 gives ch(V)=2g, ch(ν)=1; g=2 F₂ evaluates 4+1=5 | Dimension recovered | Retained |
| Weyl character invariance | Rank-one V weights (0,1),(1,−1) are exchanged with coefficients 1,1 | Normalizer preserves weight dimensions | Imported/specialized |
| Character injectivity | Rank-one finite relation a t^m x^u has coefficient a at highest monomial t^m z^u; for a=−2 it is −2, not 0 | Highest-weight triangular coefficient detects relation | Retained |
| pairSum | g=1 x=z+t/z, coefficients 1,1; augmentation 2; flip(x)=x | Opposite-pair convention fixed | Genuine body |
| exteriorCharacter negative boundary | E_(−1)=0, E₀=1; converting −1 to natural zero without guard would give 1 | Signed guard necessary | Genuine body |
| exteriorCharacter range | g=0 E₁=0; g=1 E₃=0; g=2 E₅=0 | Outside degree range gives zero | Coefficient definition |
| Exterior generating polynomial | g=1: 1+xU+tU², so E₁=x,E₂=t; g=2 E₂=x₁x₂+2t | Pair quadratic coefficient correct | Real definition matches subset sum |
| Top exterior character | g=0 E₀=1=t⁰; g=1 E₂=t; g=2 E₄=t² | Determinant t^g | Retained |
| Triangular expansion | g=3: E₂=e₂+3t and E₃=e₃+2t e₁ | Binomial factors 3 and 2 | Recomputed |
| fundamentalCharacter | F₁=x; at g=2 F₂=e₂+t; at g=3 F₃=e₃+t e₁, augmentation 8+6=14 | Correction uses k−2 | Genuine body |
| MultLaurent | Exponents −2,0,2 give distinct basis elements; T⁻²·T²=1 | Laurent coefficient ring includes both directions | Genuine alias |
| coeffT | Coefficients at 1,0,−1 are 1,0,0; T·T⁻¹=1 | Positive coefficient generator fixed | Genuine body |
| coeffTInv | Coefficients at −1,0,1 are 1,0,0; (T⁻¹)² has exponent −2 | Negative coefficient generator fixed | Genuine body |
| Orbit recurrence | p₀=2,p₁=x; p₂=x²−2t=z²+(t/z)²; p₃=x³−3tx | Recurrence coefficients 2 and 3 | Single zero orbit remains 1 |
| Full invariant presentation | g=0 Z[T±1]→Z[t±1]; g=1 X→x,T→t; g=2 e₂↦X₂−T | Correct coefficients and generators | Existential headline |
| Integral odd orbit | z²+(t/z)² has coefficients 1,1 and inverse X²−2T; constant orbit has coefficient 1 and inverse 1 | No averaging or doubling | Stronger Check |
| Primitive character identity | g=2 ch(P₂)=E₂−tE₀=x₁x₂+t; dimension 6−1=5 | Actual primitive, not arbitrary virtual generator | Retained |
| Rational character isomorphism | Rank one [V]↦x,[ν]↦t,[ν⁻¹]↦t⁻¹; Sym² gives x²−t | Images specify canonical map | README headline, carrier missing |
| positiveSubring | g=1 contains z,w,zw=t; t⁻¹ has cone −1 and is absent; −x also belongs | Coefficient signs unrestricted | Genuine closure |
| coneValue | At g=1: h(0,1)=0,h(1,−1)=0,h(0,−1)=−1 | Boundary letters versus inverse z | Genuine body |
| Cone nonadditivity | h(0,1)+h(0,−1)=−1, whereas h(0,0)=0 | Superadditive, not homomorphism | Explicit Check |
| Cone subset inequalities | g=2,(m,u)=(2,1,−2): subset values 2,3,0,1, minimum 0=h | Exactly all subset sums nonnegative | Retained |
| Cone normal form | (2,1,−2) gives h=0 and z₁w₂², with m=2,u=(1,−2); (3,1,−2) gives t z₁w₂², h=1 | Both directions reconstruct exponent | Retained |
| mem_positiveSubring | g=1, f=−z−w has two cone-zero terms and belongs; z⁻¹ has cone −1 and fails | Signed coefficients allowed | Explicit 0<g binder |
| Rank-zero support counterexample | g=0, h(t)=1≥0 but empty generators yield only exponent 0; t is exponent 1 | Equivalence fails without rank hypothesis | Repaired |
| Positive Weyl stability | flip(z)=w and flip(w)=z; permutation relabels pairs; h(z)=h(w)=0 | Generators permuted | README API |
| positiveInvariantSubring | −x belongs; z fails fixedness; t⁻¹ fails positivity; at g=0 only Z remains | Intersection enforces both requirements | Genuine intersection |
| Positive orbit coefficients | z²+w²=x²−2t and t have nonnegative t exponent; single zero orbit is 1 | No denominators needed | Recomputed |
| positiveInvariantPresentation | g=1, none→t,some 0→x; g=2, some 1→x₁x₂+t; g=0 target B₀=Z would not contain t | Correct rank domain and generator equations | Existential headline with 0<g |
| Localization compatibility | At g=1, inverting T in Z[T,X] gives Z[T±1,X]; X²−2T has same image in both | Positive/full inclusion commutes | Retained |
| Tensor constituent definition | Degree 0 gives unit class 1; g=1, ν occurs at degree 2, but ν⁻¹ would need degree −2 | All summands, not only [V] | README target |
| Constituent Z-span | g=1, [V]²=[Sym²V]+[ν], dimensions 4=3+1 | Products decompose into constituent classes | Retained |
| Standard-only subring control | Rank one R=Z[t±1,x], C=Z[t,x]; t has x-degree 0 and independent t-degree 1, so t∉Z[x] | Constituents enlarge generated subring | Retained |
| Exact tensor occurrence | g=1: L(0,2) and L(1,0) occur at degree 2; L(−1,2) has degree 0 but m<0 and does not occur | Both m≥0 and exact degree needed | Retained |
| Trivial constituent control | L(0,0) occurs at degree 0; at degree 2 scalar cI acts by c², so no invariant vector (take c=2, value 4≠1) | GSp differs from Sp invariant tensors | Retained |
| Cartan tensor degree | u=(3,1), a=(2,1): primitive degrees 1,2 give 2·1+1·2=4=Σu; adding ν gives degree 6 | Exact sufficiency degree | Retained |
| Tensor character restriction | Rank one C maps to Z[t,x]; Sym² maps to z²+t+w² with all coefficients 1, cone values 0,1,0 | Coefficient-sensitive comparison | Stronger Check |
| Inverse multiplier excluded | ch(ν⁻¹)=t⁻¹ has h=−1, whereas all constituent weights have h≥0 | Negative virtual coefficients do not change support | Retained |
| Integral tensor generators | g=1 P₁=V; g=2 [P₂]=[Λ²V]−[ν], dimensions 5=6−1 | k=1 has zero negative exterior term | Retained |
| Multiplier localization | t⁻²x+t⁻¹ becomes x+t after multiplying by t²; ν⁻¹ becomes 1 after multiplying by ν | Nonnegative multiplier powers clear all finite negative exponents | Retained |
| Field generality | Q→Q(t),Q→C preserve characters x,t and simple multiplicities 1; no embedding Q(t)→C is specified or needed | General field extension supplied by §10B | Removed duplicate descent route |
| Category universe | Coefficients/modules in Type u give tensor unit and zero in Type u; 1⊗1 has dimension 1, not a universe-dependent extra copy | Matching universes explicit | Category compatibility remains gap |

The scratch calculation independently exhausted 780 lattice/parity inputs at ranks 0–3; 2,150 flip/degree/cone inputs; 6,150 commuting-flip pairs; 4,030 permutations; 11,775 conjugacy cases; 7,380 superadditivity pairs; 229 allowed-support normal forms; 10 exterior triangular identities; 6 primitive dimensions; 12 orbit recurrences; and 85 exterior-basis commutators. It also verified 25 GL₂ constituents through degree 8, with total dimensions 1,2,4,8,16,32,64,128,256. Every assertion succeeded. These finite computations do not replace the general proof routes.

# Validation outcomes

- Final elaboration: `lake env lean` on packages/ClassicalGroupsPartII/Suggested.lean from the pinned content checkout exited 0. The only diagnostics were the three intended “declaration uses sorry” warnings, for fullInvariantPresentation, mem_positiveSubring and positiveInvariantPresentation. There are no admitted data, instances, proof fields or examples. No Tau Ceti object-file build was needed because no retained signature imports a Tau Ceti module.
- Elaborated signatures: one scratch file containing the final definitions and `#check @name` for each of the 24 declarations elaborated with exit 0. Every type was compared with its README contract. Both positive-rank headlines explicitly retain `0 < g`; the full presentation quantifies over all natural g. The other 21 declarations are real definitions or aliases, with only the g and index arguments their bodies require. No standing field, finiteness or positivity instance silently disappears. Compared with the original prototypes, unnecessary section variables were eliminated and the support/presentation rank assumptions became explicit theorem arguments.
- Required dependency command: exit 0, with the exact output below. There is no UPWARD, CYCLE or moved line.

```text
depcheck: 14 roadmaps, 101 edges, 0 problem(s)
```

- Candidate dependency gate: exit 0; output was the same dependency line above. This CLI mode checks dependencies, not package text.
- Package text gate: the installed worker’s unmodified `scan_folder` was run directly on the package with the pinned Tau Ceti source path; exit 0, every count zero (set_option, blob, latex, tex, prnum, sorry-data, sorry-examples, residue, private-paths, imports, mathlib-subimports, no-import-mathlib, lean-lines, forbidden, dropped, readme-ids-missing, empty-sections, round-labels, long-fences, layer-ids). The worker’s source-material tree scanner returned an empty list. The package contains README.md, Suggested.lean, metadata.toml and sources.toml.
- Full-worktree CLI wrapper: the board uses packages/ rather than the wrapper’s TauCetiRoadmap/ layout. A scratch symlink layout ran the same content scans with every package count zero; the wrapper exited 1 solely because the scratch layout has no Git repository (`git: 1`). No Git repository or tooling was altered to bypass that check. The worker must run its submission/Git checks in its own checkout.
- Source manifest check: exit 0, `packages/ClassicalGroupsPartII/sources.toml: 0 problem(s)`. All three works are certified; no needs-references file was needed.
- Citation resolution: no cross-roadmap citation or package Lean name was found missing. The resolver did not itself inspect pinned Lake libraries, so the native declarations were separately inspected in the pinned files listed in the evidence table.
- Package agreement: 24 of 24 retained declaration names occur in the README; zero broken internal heading links. The source manifest, README, acceptance file and this report contain no machine-local paths. Whitespace validation with `git diff --check` exited 0.

# Gate failures repaired

| Initial failure | Change |
| --- | --- |
| missing sources.toml | Created the v1 manifest using service fetches for yu, milne and sternberg; completed the bibliographic fields and exact target locators. Source check reports zero problems. |
| set_option | Deleted the override. The final file elaborates under defaults. |
| latex | Replaced all eight display-delimiter blocks with equivalent code-span mathematics. No delimiter is outside code. |
| tex | Replaced the TeX-only expressions in those displays by Unicode and explicit code-span notation; updated heading links after topic numbering. |
| sorry-data | Eliminated every admitted data definition and instance. Necessary light definitions have actual bodies; heavy constructions remain README targets. |
| sorry-examples | Deleted all 58 admitted examples, including admitted unit/proof arguments in their types. Boundary values remain prose Checks. |
| residue | Removed all 65 lemma declarations with the API prototype block. There are no Lean process commands or placeholders; the earlier removal of 26 anchor tags was preserved. |
| imports | Eliminated unused Tau Ceti imports and the nonexistent Monoidal import. Corrected all native declaration links to the pinned Monoidal/Basic.lean path. |
| mathlib-subimports | Replaced the eleven subimports by the single root import. |
| no-import-mathlib | The first line is `import Mathlib`. |

# Maintainer consequences

No commit, push or external message was made. Only the authorized package files and this report were edited. metadata.toml is unchanged. The previously absent design/plan.json contains only the authorized top-level gaps list, with all three matching README slugs and supplier sections.

The generic supplier contracts in F06 need an upstream decision/edit in ReductiveGroups. They are explicit gaps, not assertions that another roadmap already promises them. This is the reason F06 is not actionable solely in this package; re-raising it without a supplier change requires the human decision specified in the brief.

The prior suggested namespace TauCeti.GSpCharacter and its admitted representation/API prototypes are no longer declared. The surviving names use TauCetiRoadmap.ClassicalGroupsPartII; fullInvariantEquiv and positiveInvariantEquiv are replaced by the existential headline names fullInvariantPresentation and positiveInvariantPresentation. No readable supplier or supplied sibling was found to cite the deleted fully qualified names. The mathematical representation-ring endpoints and their full characteristic-zero field generality remain in the README. All renumbered topic links within the package were updated; no merge-order file or other roadmap was edited.
