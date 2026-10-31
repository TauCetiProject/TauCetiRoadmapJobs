# Repair report: HeckeStacksAndLocalShtukasPartII

## F01 (P2) — applied

Three asserted roadmap owners → explicit scope boundaries retaining every excluded topic. Downstream applications are described without invented owners or a purported notation dictionary. The introductory integral assignment is deleted; §7.5 is titled “Proper-Levi image comparison”. No occurrence of the three names or “continuation” remains in the README.

## F02 (P2) — applied

Supplier-owned ADLV comparison → §4.3 target, with nonemptiness, minimum component codimension, both directions of the equal-characteristic equidimensionality criterion, and the numerical comparison in either characteristic. Delete gap:newton-cell-adlv-dimension; extend gap:newton-cell-greatest only with cell stratifications and completions. Repoint §4.6 and Layer 4 dependencies; synchronize the manifest and Lean headline description (mv20 line 358; he15 line 1373).

## F03 (P2) — applied

Unspecified supplier coefficient → local ownership in §7.4, following option (a). Delete the final cocenter-gap clause in both files. State the positive twisted-Coxeter comparison with γ≠0 and full σ-support; add gap:demazure-product to §7.4 and Layer 7 dependencies. The new A₁ Check computes basic coefficient 1 (he14 line 1244).

## F04 (P3) — applied

Abstract finite-Weyl cancellation contract → the pinned RootPairing.weylGroup with finite root indices, a base, and inversion-count length in ℤ. Add the three pinned declarations and their exact files under “From Tau Ceti”. Keep the supplier gap and add A₂, rank-zero and failed-sign Checks (gh10 line 414).

## F05 (P3) — applied

Positivity of λ in an allegedly irreducible geometric root system → positivity of λ^♦ on every component, using F-simplicity and transitivity of σ on components. Add the quadratic restriction-of-scalars Check: λ=(α∨,0), λ^♦=(α∨/2,α∨/2). The basic theorem and its λ=0 branch retain their hypotheses.

## F06 (P3) — applied

The long Lean docstring line → wrapped lines, maximum length 86. Replace the GS2 colon citation with “GeometricSatakeAndFusion GS2, rational-special-fibre-convolution”. Delete the redundant standalone hn14 locator sentence; retain the locators on the contracts themselves. Both requested style searches have empty output.

## Mathematical evidence and ownership

The repaired roadmap, acceptance file, source manifest and design are under packages/HeckeStacksAndLocalShtukasPartII. In packages/HeckeStacksAndLocalShtukasPartII/design/plan.json, only the top-level gaps array changes; all other JSON values and the text outside that array are unchanged. Metadata is unchanged.

| Finding | Evidence read and conclusion |
|---|---|
| F01 | The roadmap index and searches of main, open heads, board packages and merge order contain no roadmap folder for any of the three names. Another package's design mentions the Kottwitz candidate, but supplies neither that roadmap nor its targets. A mention is not ownership. |
| F02 | mv20 line 187 fixes equal characteristic and mv20 line 191 allows quasi-split connected reductive G. mv20 line 281 defines bounded admissible quotients; line 316 gives admissible Newton strata; line 323 introduces their completed models. The ADLV factor is part of the local product comparison at mv20 line 358. The componentwise formula is at mv20 line 370, the minimum-codimension formula and equidimensionality equivalence at mv20 line 378, and the generic corollary at mv20 line 387. Thus the comparison must follow this package's §0.5. |
| F02, numerical generality | he15 line 1366 allows a σ-stable parahoric, and he15 line 1373 states the numerical comparison; its proof at line 1376 uses the ADLV reduction. The new target normalizes the cell to ℓw by subtracting dim(I/I_n). No mixed-characteristic closure or equidimensionality conclusion is added. |
| F03 | he14 line 1244 requires the finite factor to have full twisted support, a nonzero translation and a minimal left-coset representative. For J=S its other finite factor is 1. The package's a, dominant γ≠0 and t^γ satisfy those conditions. The induction uses the Demazure product at he14 line 1258 and positivity at he14 line 1184. Its coefficient comparison is now stated and proved only in §7.4; the supplier still owns the generic cocenter, positivity and recursion. |
| F03, printed indices | At he14 line 1245 the support condition uses an undefined letter; here it consistently concerns a. The induction at he14 line 1279 uses the shifted reflection σ(i); that shift must persist in the following induction step. Neither a literal undefined letter nor ordinary support is imported. |
| F04 | gh10 line 414 has precisely the root-sign hypothesis. At the pins, TauCeti/LinearAlgebra/RootSystem/Inversions/Basic.lean:50 defines positive indices with negative image. Inversions/Length.lean:148 gives least simple-word length, and :172 gives subadditivity, with the finite, reduced, crystallographic and characteristic-zero domain hypotheses visible at :82–85. These results do not state the requested cancellation equality. |
| F05 | In the adjoint datum no nonzero central direction survives. Averaging a nonzero dominant vector over a based finite-order action remains nonzero and dominant. An F-simple quasi-split group has one σ-orbit of geometric irreducible components. The average is therefore nonzero on each component. Within each finite irreducible component, the inverse Cartan matrix has positive entries, so a nonzero dominant vector has positive simple-coroot coordinates. This proves the route with λ^♦. he21 line 196 supplies F-simplicity, not absolute simplicity. |

The algebraic positivity cone in §7.4 is the finite-sum cone with coefficients in ℕ[z], for z=v−v⁻¹. A twisted Coxeter element has one simple reflection per σ-orbit, so full σ-support forces ℓa≥ℓc. Its exponent is consequently a nonnegative integer, including exponent zero. The comparison is an input to the basic seed, not a replacement for the supplier's generic class-polynomial theorem.

The A₁ labels in the new Check respect this README's base alcove (−1,0): s₁ acts by u↦−u, s₀ by u↦−2−u, and t^α∨=s₀s₁ acts by u↦u−2. Thus a t^γ=s₁s₀s₁. The review's coefficient test has the same coefficient after cyclicity and the extended adjoint conjugacy; no apartment convention is changed.

## Cross-roadmap and pinned-library audit

The content checkout is main at 86e155c. Its manifest pins Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039; both library checkouts match. The roadmap service's resolution snapshot is main 86e155c and 362 open roadmap heads, indexed 2026-10-25T11:51:01Z.

Read TauCetiRoadmap/RepresentationTheory/RootSystems/README.md and TauCetiRoadmap/SchemeAndStackFoundations/README.md for the upstream form. Cross-roadmap claims were checked against the named main files, the supplied open-head files through the roadmap service, and the RootSystemsPartII board design on origin/main. No additional pull requests were sought outside that interface.

| Supplier | Contracts re-resolved |
|---|---|
| ReductiveGroupsPartII, head 1383569 | RG2.0.4; RG2.1 apartments and reduced roots; RG2.3 parahoric-subgroup, associated-parahorics, lang-theorem, lang-for-pro-algebraic-groups; RG2.4 iwahori-weyl-group, affine-tits-system, length-and-bruhat-order, dominant-coinvariant-cocharacters, dominant-normal-form, translation-length-formula, kottwitz-quotient, iwahori-bruhat-decomposition and simple-cell-multiplication. The explicit parameter and positive-root transport in this package is retained. |
| RootSystems, main | Layers 3, 4 and 6: Coxeter theory, chambers, longest element and integral root data. |
| RootSystemsPartII, board origin/main design | RS2.1, integral-order. This is a design package at merge-order line 26, not an absent roadmap proposal. Its affine and subtraction extensions remain six explicit supplier gaps, not purported RS2.1 declarations. |
| BunGAndNewtonStrata, head 0d1e747 | §§0.5–0.6; §§1.7–1.8; §§1.10–1.11; §§1.13–1.15; §§1.18, 1.21, 1.27, 1.30, 1.43 and 1.45. Section 1.43 retains its p-adic scope. Its Newton order and straight-class classification contain no ADLV or cell/ADLV product comparison. |
| GeometricSatakeAndFusion, head 0652974 | GS0 Witt bounds, perfect-model-and-etale-comparison, equal-characteristic-schubert-models, parahoric-ind-projectivity, flag-incidence-correspondences and flag-convolution-fibres; GS1 semi-infinite-affineness; GS2 convolution-diagram and rational-special-fibre-convolution. |
| SchemeAndStackFoundations, main | §0.7 fibre_dimension_formula and local dimension; §0.9 approximation; §§0.23–0.26 homeomorphisms, perfection and pfp models; Layer 1 torsors, descent and fibre products. The new §4.3 uses bounded models with these hypotheses. |
| TraceFormula, head 4bd7237 | Layer 11 Grothendieck–Lefschetz, with separated finite-type finite-field models, constructibility, finite Tor dimension, compact supports and coefficients prime to p; geometric Frobenius convention. |
| SmoothRepresentationsOfLocalGroups, head 1383569 | SR.1.5 iwahori-matsumoto: the unnormalized quadratic relation and generic split algebra. The general normalized twisted cocenter remains a gap. No supplier coefficient for the §7.4 seed is asserted. |
| HeckeStacksAndLocalShtukas, head 48d21c7 | HS0–HS4 checked for the scope boundary and downstream discussion only. It is not a supplier to this package. |

Object searches used the roadmap service over main and open heads, and board packages, for affine Deligne–Lusztig loci, relative Frobenius, semi-modules, shrunken chambers, cordiality, virtual dimension, class polynomials, Demazure products and superbasic classes. Matches outside this package were references, isocrystal changes of framing, generic flag geometry or other meanings of class polynomials/virtual dimension. The SchubertGeometry revision's Demazure mention is not a new supplier; the main roadmap has no such contract. DiamondsAndVStacksPartII's specialization/component applications do not own the cell/ADLV local product comparison. This package owns that comparison because it owns its ADLV factor and its geometric pullbacks.

Pinned declarations opened directly:

- Mathlib/GroupTheory/DoubleCoset.lean:37, :44 and :51: DoubleCoset.doubleCoset, DoubleCoset.mem_doubleCoset and DoubleCoset.doubleCoset_eq_of_mem. The first accepts arbitrary sets; the last uses subgroups. No normality hypothesis is introduced.
- Mathlib/GroupTheory/Coset/Defs.lean:66 and :71: QuotientGroup.leftRel and QuotientGroup.leftRel_apply, with relation x⁻¹y∈I.
- Mathlib/Data/Finset/Defs.lean:75: the duplicate-free finite carrier used for residue bases.
- TauCeti/GroupTheory/DoubleCoset/Basic.lean:100: DoubleCoset.mul_mem_doubleCoset_iff, requiring the multiplying element to belong to the left subgroup.
- TauCeti/GroupTheory/Coxeter/Parabolic.lean:101, :233, :280 and :330: CoxeterSystem.parabolic, CoxeterSystem.IsMinimalCosetRep, CoxeterSystem.length_mul_of_isMinimalCosetRep and CoxeterSystem.existsUnique_isMinimalCosetRep_mul.
- Mathlib/LinearAlgebra/RootSystem/WeylGroup.lean:55: RootPairing.weylGroup is the subgroup generated by reflections inside automorphisms of the pairing.
- TauCeti/LinearAlgebra/RootSystem/Inversions/Basic.lean:50 and Inversions/Length.lean:148, :172: the three declarations added for F04. Length.lean:68 explicitly distinguishes this word-length characterization from an identification using a Weyl Coxeter-system construction.

Searches of both pinned libraries found no affine flag moduli, ADLV loci, general Kottwitz-set interface, Newton-stratified Iwahori cells or twisted affine cocenter. The Iwahori-Hecke matches are relations in Burau/Jimbo representations, and the Deligne–Lusztig match is a nonsplit finite-torus representation discussion. Neither supplies the required geometric carriers. The acceptance file therefore still has no declarations: it names each geometric headline and its missing carrier, including the §4.3 comparison. No statable headline was replaced by scalar algebra or a free predicate.

## Adversarial mathematics pass

Each row gives evaluated values rather than treating elaboration as evidence of truth. Unchanged targets and their Checks were also compared with the repaired conventions. Model dimensions below are normalized when they concern loop-group cells. The component-dimension patterns used to test an equivalence are conditional arithmetic tests of that equivalence, not assertions that an arbitrary prescribed pattern is realized by an ADLV.

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| Field/residue conventions | p=2,3; f=1; proposed q=1 | q=2,3; q=1 cannot equal p^f with f≥1 | Included small primes; rejected q=1 | None |
| Apartment and translation orientation | A₁, n=1,2 | (−1,0) maps to (2,3),(4,5); ℓ=3,5; d=(3+1)/2=2,(5+1)/2=3 | Consistent | None |
| Translation/κ transport | GL₂ diag(ϖ,1), diag(ϖ²,1), inverses | README λ=1,2; supplier label −1,−2; κ=1,2; inverse κ=−1,−2 | Parameter change is not inversion | None |
| F-split defect | GL₂, basic slope 1/2 | rank difference 2−1=1; pairing 1/2; spherical value 1/2−1/2=0 | Sign and rank fixed | None |
| Frobenius on cohomology | A¹, q=2,3 | geometric traces 2,3; arithmetic 1/2,1/3; H¹_c trace 0 | Inverse conventions distinguished | None |
| Extended dimension arithmetic | empty, point and line | dim ∅=−∞; dim point=0; dim A¹=1; 1+max(−∞,−∞)=−∞ | No empty subtraction | None |
| Universe/test-algebra boundary | Spec(0); k[ε]/ε² | empty test scheme has singleton sheaf value; ε≠0 but ε^p=0 for p=2,3 | Empty sheaf distinguished; nonperfect algebra excluded | None |
| §0.1 relative Frobenius | S₃, b=(12), g=(123), σ=id | g⁻¹bg=(13); bσ(g)g⁻¹=(12), different | Noncommutative order matters | None |
| §0.1 representative descent | g↦gi, σ(I)=I | r_b(gi)=i⁻¹r_b(g)σ(i); both factors belong to I; double coset is unchanged | No normality needed | None |
| §0.1 extreme levels and trivial group | I=1,b=1; I=H; H=1 | r_1(g)=1; full locus iff w=1; H/H and trivial-group locus each have one point | Extremes agree | None |
| §0.1 commutative case | H abelian, σ=id | r_b(g)=b for every g; locus full if b∈IwI, empty otherwise | Both directions | None |
| §0.2 η and virtual dimension | A₁ s; GL₂ t^(1,0); GL₂ s t^(1,0), basic | d=1; (1+0)/2−1/2=0; (2+1−1)/2=1 | Correct halves | None |
| §0.2 twisted finite factor | A₂, σ(s₁)=s₂, x=s₁,y=s₂ | η=σ⁻¹(s₂)s₁=1, ℓη=0; wrong yx=s₂s₁ has length 2 and adds 1 to d | Twisting necessary | None |
| §0.2 differences and products | virtual pairs (4,3); two rank-one factors with values 1,1 | difference 1, b-terms cancel; product value 1+1=2 | Formal identities agree | None |
| §0.3 critical strips | A₁ intervals (−1,0),(0,1),(−2,−1); endpoints −1,0 | first rejected, other intervals accepted; endpoint values are not in the open strip | Open boundaries retained | None |
| §0.3 large numerical bound | A₂, λ=6ω₁∨ | λ=4α₁∨+2α₂∨; λ−2ρ∨=2α₁∨; ⟨α₂,λ⟩=0 | Numerical bound does not imply shrunkenness | None |
| §0.4 exact versus bounded | GL₂ b=1, μ=(1,−1) | 0≤_ℤμ with difference α∨; 0≠μ | Identity is in bounded union, outside exact stratum | None |
| §0.4 torus and monotonicity | G_m, μ=0, b=ϖ; bounds μ≤μ′ | κ difference 1; both loci empty; bound inclusion is transitive order inclusion | Equality of semisimple ν is insufficient | None |
| §0.4 forgetting I-level | GL₂ b=1 over standard lattice | s-fibre P¹ minus P¹(𝔽_q), dimension 1; identity fibre q+1 fixed flags | Forgetting flags need not be an isomorphism | None |
| §0.5 perfect realization | A¹ and its perfection; infinite discrete torus locus | dimensions 1=1; infinite union of points has dimension 0 | Finite type/component count not inferred | None |
| §0.5 fibre lower bounds | Y×Aⁿ→Y, n=0,1,2; empty Y | dimensions dim Y, dim Y+1, dim Y+2; empty remains −∞ | Bounded-model formula agrees | None |
| §0.6 framing map | S₃ b=(12), h=(123) | b′=hbh⁻¹=(23); h⁻¹bh=(13); r_b′(hg)=r_b(g) | Correct direction | None |
| §0.6 centralizer and κ | h=j∈J_b; GL₂ two diagonal permutations | b′=b; κ_T=(1,0),(0,1), κ_G=1 for both | Action fixes framing; Levi labels remain distinct | None |
| §1.1 minimal-class dimension | GL₂ straight translation; A₁ finite reflection; κ mismatch | 1−1=0; 1−0=1; mismatch gives −∞ | Nonemptiness hypothesis needed | None |
| §1.2 reduction recurrence | w=s₀s₁s₀, b=1; b a matching straight translation | basic: 1+max(−∞,1)=2; nonbasic: 1+max(0,−∞)=1 | Open/closed recurrence agrees | None |
| §1.2 empty and length-preserving cases | two empty branches; unchanged length | 1+max(−∞,−∞)=−∞; unchanged fibre dimension 0 gives equal dimensions | No spurious point | None |
| §1.3 normalization | U_s²=(q−1)U_s+q, q=v² | v⁻²U_s²=(v−v⁻¹)T_s+1=zT_s+1 | Correct basis | None |
| §1.3 class-polynomial dimensions | minimal w; s₀s₁s₀, basic and straight classes | minimal coefficient 1 has degree 0; basic (3+1+0)/2=2; straight (3+2+1)/2−2=1 | Equals reduction values | None |
| §1.3 wrong degree/zero controls | unnormalized q term; zero polynomial | v-degree gives 3, q-degree gives 5/2, both differ from 2; deg 0=−∞ | Wrong normalization rejected | None |
| §1.4 advantage/preorder | D_w=3,D_v=2,d_w=4,d_v=3; reflexivity; composition | 3−2=4−3=1; normalized differences −1=−1; reflexive 0≥0; successive differences add | Correct inequality direction | None |
| §2.1 residue basis and normalization | h=1; h=2,m=1, A=ℕ and 1+ℕ | basis {0} and type (m); basis {0,1}, sum 1, type (0,1); shifted sum 3 and normalized translate ℕ | Unique translation detected | None |
| §2.1 nonexamples | empty set; even nonnegative integers, m=1 | empty has 0 basis elements instead of 2; 0+1=1 is absent from evens | Nonempty/stability conditions needed | None |
| §2.2 extended semi-module | A=ℕ,h=2,m=1 | φ(a)=floor((a+1)/2); φ(a+2)=φ(a)+1; initial values 0,1; V=∅ | Cyclic type and dimension 0 | None |
| §2.2 failed support/growth | constant 0 on A; finite φ(−1) | growth would require 0≥1; −1∉A requires −∞ | Wrong models excluded | None |
| §2.3 lattice assignment | standard h=2,m=1 lattice | ϖ⁻ⁿbσ(e_a)=e_(a+1−2n); membership iff n≤(a+1)/2 | Matches φ | None |
| §2.3 determinant and central shifts | A↦A+1; b↦ϖb | residue-basis sum increases by h, determinant by 1; φ increases by 1 | Signs agree across lattice Checks | None |
| §2.4 chart geometry | μ=(0,1), V=∅; perfected A¹ | dim A⁰=0=card V; dim perfected A¹=1=dim A¹ | Geometric realization used | None |
| §2.5 superbasic GL dimension | (h,m,μ)=(2,1,(0,1)),(2,1,(−1,2)),(3,4,(0,0,4)) | 1/2−1/2=0; 3/2−1/2=1; 4−1=3 | All worked values agree | None |
| §2.5 central shift/h=1 | (m,μ)↦(m+h,μ+1); h=1 | μ−ν unchanged; h−1=0 and ρ=0 give dimension 0 | No extra nonnegativity restriction | None |
| §3.1 Lang dimension | GL₂ root slopes 2,−2; N=1 | min(2,0)=0, min(−2,0)=−2; dominant-reordering pairings 0,−2; empty root sum 0 | Normalized signs agree | None |
| §3.1 small-characteristic filtration | upper GL₃, p=2,3 | [1+E₁₂,1+E₂₃]=1+E₁₃; quotients G_a²,G_a; additive commutator would be 1 | Whole-group logarithm excluded | None |
| §3.1 additive Lang/Frobenius | q=2; A¹ cohomology | u²−u has roots 0,1 and derivative 1; geometric H²_c trace 2, H¹_c trace 0 | Trace and characteristic conventions agree | None |
| §3.2 adjoint components | GL₂→PGL₂; adjoint identity | ℤ→ℤ/2 sends 0,2 to 0; identity has one preimage of each point | Componentwise statement only | None |
| §3.3 superbasic reduction | GL₂ m=1,2; h=1 | gcd(1,2)=1 gives defect 1; m=2 is central and meets torus Levi; h=1 defect 0 | Rank-one/trivial-adjoint boundary respected | None |
| §3.3 anisotropy criterion | ordinary and basic GL₂ | rank(J_b/Z(G))=1 for G_m²/G_m; rank 0 for basic division group quotient | Center of G cannot be replaced by center of J_b | None |
| §3.4 Levi dimensions | M=G; GL₂ M=T,b=1,μ=(1,−1),μ_M=0 | M=G: 0+0=0 correction; torus case 0+1+0−0=1 | Intersection term necessary | None |
| §3.4 nonzero Newton correction | GL₂ ordinary b, μ=μ_M=(1,0) | d=1; Lang term 0; ⟨2ρ_N,ν_M⟩=1; total 0+1−1=0 | All correction terms retained | None |
| §3.5 iterated locus | d=1; torus; GL₂ two bounds (1,0) | single step recovers bound; torus endpoint Σμ and fibre dimension 0; smaller GL₂ endpoint (1,1) fibre dimension 1 | Intermediate data retained | None |
| §3.6 ordered norm | d=1,2,3; U,V with Frobenius-fixed entries | d=1 identity; UV=[[2,1],[1,1]], VU=[[1,1],[1,2]]; degree-3 (1,U,V) gives UV in inverse cycle | Order/cycle detected | None |
| §3.6 norm in residue characteristic 2 | same U,V mod 2 | UV=[[0,1],[1,1]], VU=[[1,1],[1,0]]; restricted basic GL₂ defect remains 2−1=1 | No characteristic or degree multiplier | None |
| §3.7 convolution fibres | two GL₂ minuscule bounds | top (2,0): 0; endpoint (1,1): dim P¹=1=⟨ρ,(1,−1)⟩ | Exact endpoints distinguished | Citation form only |
| §3.8 spherical dimensions | GL₂ minuscule basic; b=1,μ=(1,−1); determinant mismatch | 1/2−1/2=0; 1; mismatch κ 0≠1 gives empty while scalar is 1/2 | Nonemptiness required | None |
| §3.8 iterated dimensions | GL₂ b=ϖ·1, bounds (1,0),(1,0) | total formula ⟨ρ,(1,−1)⟩=1; endpoint (1,1) contributes 0+dim P¹=1 | Top/bounded dimension consistent | None |
| §3.9 upper bound | GL₂ t^(1,0); A₁ s | actual 0, virtual (1+0)/2−1/2=0; A₁ actual/virtual 1; reversed sign would give 1 in GL₂ | Newton sign fixed | None |
| §4.1 spherical criterion | G_m valuation mismatch; GL₂ basic and ν=(2,−1) | mismatch 1≠0; λ−ν_basic=α∨/2≥0; λ−(2,−1)=−α∨ | Both κ and Newton conditions needed | None |
| §4.2 generic class | τ; t^(1,0); mismatching κ | ν_τ basic; translation generic ν=(1,0); κ 0 excluded from κ 1 cell | Greatestness is within a κ-fibre | Cell stratification kept with supplier |
| §4.3 normalized definition | GL₂ w=s t^(1,0), Iwahori-model congruence quotients I₁,I₂ | dim(I/I_n)=4,8; basic quotient dimensions 5,9 give 1,1; ordinary 6,10 give 2,2; cell 6,10 gives 2,2 | Truncation independent | Added local target |
| §4.3 numerical comparison | same GL₂ basic, ordinary | basic dim_I N=1=dim X 1+pairing 0; ordinary 2=1+1 | Correct correction term | Moved from supplier |
| §4.3 minimum codimension | same basic, ordinary | c=2−1=1,2−2=0; ADLV dimensions 2−0−1=1,2−1−0=1 | Matches §4.6 | Added Check |
| §4.3 equidimensionality iff | local component dimensions (1,1) or (1,2), unipotent dimension 1 | product dimensions (2,2) or (2,3); constant dimension on one side iff on the other | Both directions tested | Equal characteristic only |
| §4.3 generic corollary | GL₂ translation; finite A₁ simple cell | c=0; 1−1=0; 1−0=1 | Generic formula recovered | Repointed to local comparison |
| §4.3 empty/torus boundary | G_m w=1,b=ϖ and b=1 | mismatch gives dim X=−∞ and no finite c; matching gives dim X=dim_I N=c=0 | No minimum over empty components | Added Check |
| §4.4 cordiality equivalence | identity; GL₂ translation; A₁ reflection | 0=0; 1−0=1−0; 1−1=0−0; generic dim=d in each case | Uses generic class | None |
| §4.5 mutual advantage | D_w=3,D_v=2,d_w=4,d_v=3 | dim−d is −1 on both; reverse inequalities force equality; reflexive value 0 | One direction insufficient | None |
| §4.6 saturation/dimension | GL₂ s t^(1,0), basic≤ordinary | d_basic=(2+1−1)/2=1; d_ordinary=(2+1)/2−1/2=1; chain length (1+1−0)/2=1 | Numerical statements agree | Uses §4.3 |
| §4.6 closures and singleton interval | same GL₂; split torus | codimensions 1,0; basic closure basic, ordinary closure both; torus has one class and dimension 0 | Equal-characteristic closure retained | Uses §4.3 |
| §4.7 translation-family cordiality | GL₂ x=s,λ=(1,0); A₁ x=s,λ=0 | 2−1=1=⟨ν,2ρ⟩−0; at λ=0, 1−1=0; I and IsI disjoint but I⊂closure(IsI) | Closure inclusion not cell inclusion | None |
| §5.1 normalized subtraction | A₁ y=s,λ=2ω∨ and ω∨; y=1 | 2ω∨−_dom2ω∨=0; 0−_domω∨=ω∨; J=∅ gives λ | Odd coset not clipped | None |
| §5.1 twisted correction | unitary A₂,J={s₁},λ=ρ∨ | ρ_J∨=η_J∨=ω₁∨; λ^♭♭=ω₁∨; lower difference α₁∨; λ−λ^♭♭=ω₂∨∉Q∨ | Conditional upper bound necessary | None |
| §5.1 twisted lattice/coinvariants | same datum, λ=ω₁∨ | λ^♭♭=ω₂∨; λ−λ^♭♭=(α₁∨−α₂∨)/3; lower difference α₁∨+α₂∨; (ℤ/3)_σ=0 | Images agree, not integral representatives | None |
| §5.2 factorization | split A₁ x=y=s,λ=2ω∨ | w₁=s t^ω∨,w₂=t^ω∨s; product t^(−2ω∨); lengths 2+0=2; β=γ=2ω∨ | Product/length directions agree | None |
| §5.2 twisted factorization/support | unitary A₂ x=y=s₁,λ=ρ∨ | β=γ=ω₁∨; w₁=t^ω₂∨,w₂=t^(−ω₁∨+ω₂∨); product t^α₂∨; lengths 2+2=4; a=s₂*s₂=s₂ | Ordinary square 1 would lose support | None |
| §6.1 endpoint correspondences | u=1; u=v=s | identity intermediate flag; ordinary fibre A¹ with (1+1−0)/2=1; Demazure fibre G_m with 1+1−1=1 | Different fibres, same dimension | None |
| §6.1 twisted rotation | A₂ u=s₁,v=s₂,σ swaps nodes | vσ(u)=s₂s₂=1; vu=s₂s₁ has length 2 | Frobenius cannot be omitted | None |
| §6.2 chain maps | y=1; split A₁ factorization; unitary factorization | identity steps vanish; split A=1; unitary A=s₁,B of length 1; terminal σ(a),σ(t^γ) retained | Restrictions not claimed surjective | None |
| §6.3 lower bounds | split A₁ factorization | N₁=(0+2−2)/2=0; N₂=0; d_w−d_target=0 | Bounds agree | None |
| §6.3 twisted lower bounds | unitary A₂ factorization | N₁=(1+2−3)/2=0; N₂=1+1−1=1; virtual difference (6−4)/2=1 | Both halves correct | None |
| §6.4 reduction invariant ledger | split and unitary factors | split γ=2ω∨,a=1, support ∅⊇∅; unitary γ=ω₁∨≥_ℤλ^♭♭,σ-support S, κ=0 | Original-lattice comparison still separate | None |
| §7.1 P-alcove conjugator | A₂ x=s₁,y=s₂,λ=2ρ∨ | correct x⁻¹wσ(x)=t^λs₂s₁; using y gives t^(−2α₂∨)s₂s₁ | Conjugator is x | None |
| §7.1 full Levi boundary | J=S | N_J=1; subgroup inclusion 1⊂1 | Unipotent condition vacuous | None |
| §7.2 all-class obstruction | GL₂ diagonal torus; J=S | two Levi classes (1,0),(0,1) map to κ_G=1; full Levi reduces to κ mismatch | No nonbasic uniqueness assumed | None |
| §7.3 strict-gap support obstruction | A₁ t^(nα∨), n≥1, b=1 or b=t^(nα∨) | η=1; positive gap nα∨ gives empty; zero gap gives dimension 2n−2n=0 | Strictness necessary | None |
| §7.4 zero-translation seed | A₁ a=s,q=2; A₂ a=s₁s₂ | P¹(𝔽₄) minus P¹(𝔽₂) has 5−3=2 points and dimension 1; A₂ Coxeter locus dimension (2+2)/2=2 | Nonempty seed without shrunken hypothesis | None |
| §7.4 shrunken negative control | same zero-translation examples | A₁ alcove values (0,1), shrunken; A₂ α₂-values (−1,0), not shrunken | Full support does not imply shrunkenness | None |
| §7.4 positive cocenter comparison | A₁ a=s₁,γ=α∨,c=s₁ | exponent 1−1=0; T_(s₁s₀s₁)≡zT_(s₀s₁)+T_s₀; remainder zT_(s₀s₁) positive | Required minimal-class coefficient 1 | Explicit local target and Check |
| §7.4 twisted commutator/positive cone | unitary A₂ σ(s₁)=s₂; basis unit | [T_s₁,1]_σ=T_s₁−T_s₂≠0 in ℋ, while the ordinary commutator is 0; T_1 and zT_s₁ have nonnegative z-coefficients, −T_1 has coefficient −1 | Definitions distinguish plausible wrong models | Added convention Check |
| §7.4 dimension from coefficient | same A₁ basic class | coefficient degree 0; (3+1+0)/2=2 | Agrees with §1.2 and §1.3 | Added Check |
| §7.4 σ-support/failed support | unitary A₂ a=s₂; A₁ a=1,γ>0 | σ-support {s₁,s₂} versus ordinary {s₂}; s₂*s₂=s₂; positive straight translation has no basic class | Twisted support and Demazure input necessary | Dependency added |
| §7.5 quotient-map invariance | q=2,G_m,ζ∈𝔽₄ of order 3 | σζ=ζ²; (1,1)∼(ζ,ζ); ζ·ζ·ζ⁻²=1; wrong pair (ζ,1) maps to ζ²≠1 | Twisted relation fixed | Heading only |
| §7.5 image index/fibres | GL₂ torus; J=S | fibre of B(T)→B(G) has two classes; required κ_T=(1,0) selects one; J=S quotient map identifies with identity | Matching-class condition retained | None |
| §7.6 cordial interval from seed | GL₂ a=s,γ=(1,0) | basic≤ordinary in κ=1; both dimensions 1; κ=0 excluded | Actual lower endpoint supplied | None |
| §8.1 shrunken criterion | PGL₂ s t^(nα∨) and t^(nα∨), n=1,2 | same κ and strict gaps; η-support {s} versus ∅; first nonempty, second empty | Both directions agree | None |
| §8.2 final dimension | same rank-one family | (3+1)/2=2; (5+1)/2=3 | Agrees with all rank-one occurrences | None |
| §8.2 twisted dimension | unitary A₂ example, b=1 | λ^♦=ρ∨; (λ^♭♭)^♦=ρ∨/2; ℓw=4,ℓη=2; dim=3 | No unconditional integral upper bound used | None |
| §8.3 basic specialization, λ=0 | A₂ w=w₀; w≠w₀ | dimension (3+3)/2=3; any positive root retained positive by w⁻¹ keeps values (−1,0) | λ=0 handled separately | None |
| §8.3 positivity across components | Res_(E/F)PGL₂, unramified degree 2 | λ coefficients (1,0); average (1/2,1/2); ν_b=0; strict gaps (1/2,1/2) | Average repairs argument | Added Check and route |
| §8.3 irreducible positivity mechanism | A₂ dominant fundamental coweights | ω₁∨=(2/3,1/3),ω₂∨=(1/3,2/3) in simple coroots; both coefficients positive | Applied componentwise after averaging | Explained in report |
| §8.4 large range | A₁ λ=α∨; A₂ λ=6ω₁∨ | A₁ 2ρ∨=α∨ gives dimension 2; A₂ difference 2α₁∨≥0 but α₂-value remains 0 | Separate shrunken hypothesis retained | None |
| §8.4 double-flat correction | unitary A₂,J={s₁} | 2ρ∨−ρ_J∨−η_J∨=2ω₂∨ dominant, coroot coefficients (2/3,4/3) | Averaged lower bound valid | None |
| gap:unipotent-linearization | GL₃ over ℤ,𝔽₂,𝔽₃ | quotients G_a²,G_a; [E₁₂,E₂₃]=E₁₃ | Noncommutative group distinguished from graded quotients | None |
| gap:demazure-product | s*s; length-zero τ swapping affine A₁ nodes | s*s=s, ℓ=1=1+0; τ*s₁=s₀τ | Transported support union required | New consumer §7.4 |
| gap:twisted-redmin | affine A₁ s₀s₁s₀ | s₀-conjugation gives s₁, length 3→1 | Terminal word not substituted for minimum | None |
| gap:straight-finite-parabolic | finite A₁ s; straight translation t^α∨ | finite factor s, straight factor 1 gives lengths 1+0; translation has finite factor 1 and length 2 | Both factors needed | None |
| gap:finite-coxeter-basic-class | adjoint A₁ τ=1, finite s₁; μ=0,α∨ | minima s₁ and s₀=t^α∨s₁ each have length 1, but simple-reflection conjugations do not link them | (J,c) must depend on input | None |
| gap:parabolic-root-length | A₂ w₀,y=s₁s₂ | N(y⁻¹)={α₁,α₁+α₂}⊂N(w₀); w₀y=s₁; 1=3−2 | Pinned inversion convention agrees | Added API/Check |
| gap:parabolic-root-length boundaries | rank zero; A₁ w=y=s; w=1,y=s | 0=0−0; 0=1−1; failed-sign equality would be 1=−1 | Integers expose false instance | Added Checks |
| gap:dominant-subtraction | A₁ λ=2ω∨, successive ω∨ | (2ω∨−_domω∨)−_domω∨=0=2ω∨−_dom2ω∨ | Iterated law agrees | None |
| gap:superbasic-classification | GL₂ basic/ordinary; h=1 | quotient split ranks 0/1; PGL₁ has semisimple rank 0 | Simple adjoint factor requires positive rank | None |
| gap:newton-poset-length | GL₂ basic≤ordinary in κ=1 | (⟨2ρ,(1/2,−1/2)⟩+1−0)/2=(1+1)/2=1 | One-step interval | None |
| gap:newton-cell-strong-purity | same GL₂ interval | basic codimension 1 inside ordinary closure; maximal predecessor bound 1≤1 | Equal-characteristic hypothesis retained | None |
| gap:newton-cell-greatest | GL₂ s t^(1,0); length-zero τ | generic ordinary, c=0; basic c=1; τ-cell one class c=0 | Cell-only input sufficient | Added stratification/completions, no ADLV formula |
| gap:levi-intersection-dimension | GL₂ M=T,μ=(1,−1),μ_M=0; M=G | bound and value 1=⟨ρ,μ⟩; M=G gives ⟨ρ,2μ⟩−⟨2ρ,μ⟩=0 | Separate general-Levi obligation remains | None |
| gap:twisted-affine-cocenter | affine A₁ s₀s₁s₀ | coefficients z and 1, degrees 1 and 0; positivity survives integral recursion | Generic algebra has one supplier | Deleted seed clause |
| Native parabolic factorization | A₂ J={s₁}, w=s₂s₁; J=∅,S | u=s₂,v=s₁, lengths 1+1=2; extremes (w,1),(1,w) | Pinned coset direction agrees | None |
| Native inversion-length inputs | A₂ s₁,s₂,w₀; identity | inversion counts 1,1,3,0; ℓ(s₁s₂)=2≤1+1; w₀-word length 3 | Imports give bounds, not cancellation theorem | Added exact declarations |

All new Checks are README prose. There is no new Lean boundary theorem, example, API lemma, data definition or assumed condition. The values also recompute the overlapping examples in the Conventions, §§1.2–1.3, 4.6–4.7, 5.1–5.2, 6.3, 7.6 and 8.1–8.4. No other positivity argument in this README replaces an F-simple group by an absolutely irreducible geometric root system.

## Check outcomes

- Required elaboration: `lake env lean` on packages/HeckeStacksAndLocalShtukasPartII/Suggested.lean, invoked from the content checkout with the supplied absolute target, exited 0 with no diagnostics. No TauCeti import or targeted build was needed.
- Binder audit: a mechanical declaration scan finds zero definitions, instances or theorems. The scratch list of `#check @name` commands is empty. Its import-only audit file elaborates once with no diagnostics. No binders can disappear, and no elaborated signature changed.
- Lean form: one `import Mathlib`, one module docstring and the required namespace; no other import, no `set_option`, no sorry'd data and no declarations used as padding. Maximum line length 86; the over-100-character search returns no lines.
- Dependency check, using the required name, merge order and movable flag, exits 0:

```text
depcheck: 51 roadmaps, 586 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line for this roadmap.

- Gap audit: 13 unique slugs, all with slug/needs/supplier/section, matching the README contracts after whitespace normalization. Every gap reference is declared. The deleted dimension slug has no occurrence in the README, source manifest or gaps array. Comparing the JSON and the unchanged text outside the array confirms that no other plan content changed.
- Citation resolver: no missing Lean names; its sole cross-roadmap lead is “RootSystemsPartII RS2.1: no roadmap RootSystemsPartII on main or in an open pull request”. This is a false positive for the board design: packages/RootSystemsPartII/design/README.md on origin/main contains RS2.1 and integral-order, and the merge order includes it at line 26. The resolver also reports that its service did not check non-roadmap Lean names; those were instead opened directly in the pinned checkouts as listed above.
- F01/F06 searches: zero occurrences of ComponentsPartII, IntegralPartII, KottwitzPartII, continuation or GS2: in the README. The redundant hn14 sentence is absent; the substantive hn14 contract locators remain.
- Manifest: packages/HeckeStacksAndLocalShtukasPartII/sources.toml parses with schema tauceti-roadmap-sources/v1, 15 distinct keys and 15 existing legal cached extractions. No work acquired a second key. The mv20 locator now records Definitions 3.3/3.7, Corollary 3.6 and Theorem 3.10/Corollary 3.11. No missing-reference request or new fetch was necessary.
- Final whitespace/diff check: `git diff --check` exits 0, no output. Changes are confined to the four permitted package files and this requested report. No gate failures beyond the six supplied findings were listed in the brief.

## Maintainer consequences

No Lean declaration name was introduced, renamed or deleted. Section numbers remain unchanged; §4.3 now owns the cell/ADLV comparison, and §7.5 has a descriptive heading. Consumers of gap:newton-cell-adlv-dimension should instead use this package's §4.3; the package/open-head searches found no other consumer of that slug. BunGAndNewtonStrata is asked only for the Newton-cell stratification, purity and greatestness, not a theorem mentioning this package's ADLV object. SmoothRepresentationsOfLocalGroups is no longer asked for the §7.4 seed coefficient.

The six existing RootSystemsPartII extension gaps still require supplier adoption or maintainer reassignment: its accepted design supplies integral dominance and routes the affine extensions to a proposed separate direction. This report does not create that proposal as a supplier. GeometricSatakeAndFusion's generic flag-incidence text likewise refers to a Demazure input from RG2.4 that is not stated there; this package records its actual need as gap:demazure-product. Neither other roadmap nor the merge order was edited.

All six findings were settled locally. No finding is being presented as accepted by this repair itself; independent review remains the next mathematical check. No commit, push or external message was made.
