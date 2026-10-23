# Mathematical repair report

The first twenty-one findings below are from pass a; the final two are from pass b. Overlaps use one repair, with both findings accounted for. Paths below are repository-relative. Verdicts concern the mathematics and package contracts; they are not independent acceptance.

## F01 (P1) — applied

The split representation-ring formula → separate split and unramified nonsplit formulas in GS.1.11. Added the norm-one torus control; propagated twisted characters and coefficients through GS.3.6, GS.5.3, GS.5.10 and GS.7.1. Its invariant cocharacter lattice is 0, giving E rather than E[z,z⁻¹]. Source: VL §§12.3.1–12.3.2; the exact SR.4.1 contract was read.

## F02 (P1) — applied

GS.2.11’s construction across Hecke support → construction where all legs avoid that support. Extension across a good place is exclusively the later GS.3.6 theorem. Creation in GS.3.1 consequently consumes only the earlier away-from-support action. Xue-I lines 2605–2618 distinguish these two domains explicitly. This breaks the reported internal proof cycle.

## F03 (P2) — applied

The unqualified slope bound → the finite-determinant bound, translated after undoing the constant twist in general. Added rank-one Frobenius-q and translated rank-two controls in GS.6.2. LL lines 11421–11436 explicitly include finite determinant. Normalized slopes of q and 1 are respectively 1 and 0, against the rank-one bound 0.

## F04 (P3) — applied

The two stale hashes → Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, matching the supplied manifest. Rechecked the named Mathlib interfaces at these pins, including the added independence theorem. No library pin changed.

## F05 (P2) — applied

Deleted both admitted algebra API declarations. GS.5.7 now imports Algebra.isMulCommutative_adjoin and FiniteDimensional.finiteDimensional_subalgebra, whose pinned files are Mathlib/Algebra/Algebra/Subalgebra/Lattice.lean:757 and Mathlib/LinearAlgebra/FiniteDimensional/Basic.lean:634. Geometric excursion realization and the direct-sum decomposition remain README targets. Other elementary abstract declarations were also removed under the binding headline-only acceptance contract.

## F06 (P2) — applied

Reconstruction of Picard-stack infrastructure → identification with SchemeAndStackFoundations §3.7, retaining its gerbe, automorphisms, tensor product and base change. Added the exact supplier contract and GS.0.15 Needs. The owned extension is the Frobenius–Lang fibre and central quotient. Three controls distinguish the gerbe, Pic⁰ and degree translates. The supplier’s §3.7 was read on main.

## F07 (P1) — applied

Clearing rational factorial denominators → the integral coefficient-natural Cayley–Hamilton construction. GS.3.7 now quantifies over arbitrary finitely generated W and an auxiliary finite-free M, with enlarged HN bound and restricted 0-leg. Added integral Satake to Needs and updated GS.4.12’s consumer. Xue-I lines 2583–2598 and 2619–2638 give precisely this distinction. The F₂ control has 2·Id=0 but Id(1)=1.

## F08 (P1) — applied

An arbitrary splitting extension → the kernel quotient of the pinned action on the full based root datum; larger descent covers must be étale on U. Updated Conventions, GS.1.13 and GS.5.10. Added the rejected F₃(t)(√t) control. VL lines 8299–8305 require the pinning-action quotient and establish its unramifiedness on U. Full root data retain the torus action.

## F09 (P2) — applied

A Frobenius-stable lattice in E6 → continuity on the geometric kernel and rational Frobenius–Weil descent. Added this explicit target and three controls in GS.4.3; GS.4.12 invokes it. Xue-S lines 440–452 distinguish this continuity from integral lisse descent. Frobenius λ⁻¹ has nth-iterate valuation −n, so no stable lattice exists.

## F10 (P1) — not actionable in this package: missing supplier contracts

Removed the three nonexistent supplier names and the unsupported FunctionFieldArithmetic row. Oriented products and Orgogozo’s theorem are imported from the actual ClassicalAdicEtaleCohomology §5.4 owner. Four precise gaps record the remaining arithmetic, classical-centre, equal-characteristic GL_r and elliptic-sheaf requirements in README and design. FunctionFieldArithmetic is eligible in the supplied order, but its text is absent. Supplying these contracts requires other packages.

## F11 (P2) — applied

Finite-Q coefficients as a full arithmetic category → the full continuous arithmetic representation category, followed by its specified finite-form coefficient subfunctor in GS.1.13. Preserved the geometric/pinned action comparison. Ric lines 905–927 state the full absolute-Galois category. The rank-one Frobenius 1+ℓ object has infinite order, whereas Frobenius −1 factors through a quotient of order two.

## F12 (P2) — applied

Unlevelled torus classes under arbitrary N → Bun(T,N)(F_q)/Ξ and, for G_m, ray Picard classes. Updated GS.3.8 and both layer examples. On P¹/F₃ with N={0,∞}, the degree-zero group is (F₃××F₃×)/F₃×, of order 2; erasing level gives order 1. Empty level specializes to the ordinary Picard quotient.

## F13 (P3) — applied

Absent source manifest → 28 unique entries with bibliographic data, exact locators, target associations and service provenance: 27 certified texts and Del73 uncertified. Added direct AH19, Ric16 and EX24 references. AH19 Theorem 3.15 supplies algebraicity and level maps, not a deformation-smoothness theorem. EX24 A.9 supplies nearby-cycle composition after modification, used with ULA in GeL’s comparison.

## F14 (P2) — applied differently

Spanning alone → independence and spanning of the actual cusp-space character blocks in GS.5.7, with the pinned independence theorem in the proof route. The abstract spanning declaration is deleted rather than replaced: it is algebra on an arbitrary family, not the geometric headline. Suggested.lean explains that the cusp-space and geometric-operator carriers are missing. The Jordan control remains in prose.

## F15 (P3) — applied differently

Added f(A,A)=2 versus tr(A²)=17/4 in GS.5.2. Recomputed and made explicit the Euler, zero-rank, constant-shift and consecutive-block controls in GS.0.5 and GS.0.8. No Lean mirrors were added: the binding acceptance contract keeps numerical Checks and API tests in README. The elementary definitions and their examples no longer appear in Suggested.lean.

## F16 (P2) — applied differently

The abstract coefficient’s asserted regularity → pointwise invariance, with regularity requiring the algebraic representation in GS.5.2. Added |a/b| as the nonregular diagonally invariant control. Removed the abstract Lean definition with the other nonheadline API. No empty regularity predicate was introduced; the geometric invariant-function indexing target retains its algebraic hypothesis.

## F17 (P1) — not actionable in this package: the adelic volume input requires a supplier contract

The circular “apply the Siegel mass formula” route → a determinant-fibre argument consuming gap:function-field-sl-volume from AdelicAlgebraicGroups AA.2.4/AA.3.1. The exact missing SL_r Tamagawa and gauge comparison is recorded in both files. Sch lines 1034–1043 confirm that its formula invokes HN75 rather than proving the required volume input. The separate torsion and coherent-sheaf arguments remain.

## F18 (P2) — applied

Added the actual ReductiveGroupsPartII RG2.3.7 lang-theorem contract and Needs in GS.0.7, GS.0.15 and GS.4.1. Its text was read at the indexed head. The groups are respectively the smooth connected special fibre, Pic⁰ and GL_n. The disconnected full Picard scheme is excluded from the connected-group application. The finite-field group quotient and henselian lifting are kept explicit.

## F19 (P3) — applied

Repeated step rules → complete tuples testing both adjacency and closure in GS.2.8. For empty Σ and Σ∞, the r=0 and r=2 tuples have support dimensions 0 and 2. The r=1 rising tuple passes adjacency but has Nr−N₀=1 and is rejected. General step and parity consequences remain in the definition and construction.

## F20 (P3) — applied

Deleted the closing unavailable-name catalogue and process wording. Suggested.lean has one module docstring listing the mathematical headline theorems and the actual carrier each lacks, one import Mathlib and the required namespace. No weakened or abstract substitute is stated. The remaining target specifications and APIs are prose in README.

## F21 (P2) — applied differently

Arbitrary coherent base → coherent irreducible base, finite presentation, invertible positive torsion exponent and bounded constructible coefficients in GS.7.3. Org lines 86–91 verify the missing hypothesis. Ownership search found the entire modification theorem already in ClassicalAdicEtaleCohomology §5.4, so it is imported rather than replanned. Added integral-product and reducible-base controls.

The following two sections answer pass b.

## F01 (P3) — applied differently

Deleted the admitted pointwise diagonal-invariance declaration rather than proving it in place, as the binding one-tactic rule requires. The proposed calculation is correct: map_mul, evaluation of endomorphism composition, right invariance of x and left invariance of ξ give the equality immediately. GS.5.2 keeps this as pointwise API, with its algebraic-regularity distinction.

## F02 (P3) — applied

The escaped quotient expression → a code span in GS.5.10, preserving its literal left quotient backslash. The related shift escapes in GS.3.3, GS.3.4 and E1 now use literal bracket formulas in code spans. Both the quotient and shift conventions retain their mathematical meaning; no anchor tags were restored.

## Gate repairs

- Missing sources.toml: added the tauceti-roadmap-sources/v1 manifest for all 28 cited works. Every work was requested through the sources service; author/publisher URL classifications resolved the initial LL and Sch failures. There is no unresolved missing-reference request. Exact result locators remain beside each claim, with compact per-work manifest locators.
- latex=10: all ten escaped delimiter occurrences are gone from prose. Quotient and shift expressions use literal code spans. The final content scan reports latex=0.
- tex=173: braced mathematical indices and powers throughout README are inside code spans. The final content scan reports tex=0. Heading text and internal heading targets retain their existing slugs; the previously removed anchor tags remain absent.

## Mathematical adversarial pass

Each numbered target below includes its stated API. These are computed boundary audits, not proofs of the deep target. “Conditional” records a declared supplier gap, not an assumed theorem. Equalities are compared in the specified setting; rank-zero numerical totalizations are separated from geometric objects.

| Statement | Instances and computed values on the two sides | Result | Change |
|---|---|---|---|
| Conventions: field and coefficients | F₂, F₃: q=2,3 and q−1=1,2; q=1 would give q−1=0 | q=1 excluded by finite-field hypothesis; ℓ≠p retained | No hypothesis weakened |
| Conventions: Frobenius and reciprocity | An unramified character with geometric value a has arithmetic value a⁻¹; for a=2 these are 2 and 1/2 | Inversion visible | Retained |
| Conventions: shifts and half twists | A one-dimensional GL₂ open stratum has perverse trace −q_v^(−1/2), normalized h has +q_v^(−1/2); two odd tensor factors contribute (−1)(−1)=1 | Signs consistent | Code formatting only |
| Conventions: HN systems | GL₂ modifications of O² can produce O(1)⊕O(−1), instability 0→2 | Fixed bound is not preserved | Retained |
| GS.0.1 bundles | G=1: one object, automorphisms 1; G_m/F₃: automorphisms 2; O(m)⊕O(−m): instability 2m | Stack and unboundedness distinguished | API names in prose |
| GS.0.2 deformations | G_m on P¹: h⁰=1,h¹=h²=0, dimension −1; genus one: 1−1=0 | −χ has correct sign | None |
| GS.0.3 level | N=∅: level group 1; G_m at doubled rational point over F₃: units count (3−1)·3=6 versus 2 on reduction | Nilpotent level retained | API typography |
| GS.0.4 fractional flags | n=1 twist degree 1; n=2 half-twist squared gives degree-one tensor, trivial on PGL₂; degree-two place splits into 2 flags | Period and residue degree retained | API typography |
| GS.0.5 HN/Euler | χ((1,0),(1,1))=2 and reversed=0 at g=0; χ(O,O)=1−g; slopes (0,3)=∞,(2,1)=1/2 | Sign and zero convention distinguished | Explicit numerical controls |
| GS.0.6 bounded loci | GL₂ degree 0 and instability 2m are unbounded; G_m instability 0 has all degrees Z | Central and adjoint bounds independent | None |
| GS.0.7 adelic groupoids | G_m/F₃ line: stabilizer size 2 on both descriptions; G=1: size 1 | Lang applies to connected smooth fibres; arithmetic contract conditional | Lang Needs and arithmetic gap |
| GS.0.8 shifted HN | T=(1,−1): line and whole slopes 0,0; T=0: 1,0. T=(3,2,0), block (1,3], d=4: 1 versus wrong −1/2 | Constant shift d/r−c on both sides | Strengthened controls |
| GS.0.9 parabolic instability | Opposite flags on O²/P¹ give minima 0 at ∅ and {0,∞}; single toggles give 1,1 | Uniqueness restricted to positive instability | None |
| GS.0.10 central lattice | GL₂ and line degree 1 shift total degree by 2, quotient Z/2; degree-zero generator shifts by 0 and leaves Z | Degree injectivity required | API typography |
| GS.0.11 mass weights | G_m/F₃: orbit mass 1/2, diagonal kernel 2, product 1; F₂: 1·1=1 | Weighted mass differs from counting | None |
| GS.0.12 descent | Identity splitting datum gives one identical bundle; a nontrivial pure-inner class remains indexed by α rather than 0 | Class is not discarded | Arithmetic gap made explicit |
| GS.0.13 masses | P¹/F₃: r=1 mass 1/2; r=2 mass 1/32; SL₂ volume 1/16 times determinant factor 1/2 gives 1/32. Rank-zero formal value 3/2 versus actual 1; torsion coefficient 4/2=2 | Formula checks; proof conditional on volume gap | Circular input replaced |
| GS.0.14 cusp functions | Torus: 0 proper-parabolic conditions; GL₂ indicator of O² has positive constant term from split extension; no central quotient leaves infinitely many degrees | Support and cusp conditions differ | Arithmetic gap |
| GS.0.15 Picard Lang fibres | P¹/F₃: automorphisms 2 and mass 1/2; Pic⁰ Lang kernel order 1, full Picard has Z components | Connected-group Lang not applied to disconnected Pic | Imported Picard stack; three controls |
| GS.1.1 BD Grassmannian | G_m: geometric exponents Z; 1+εt⁻¹ over dual numbers has exponent 0 but is not a positive loop; GL₂ minuscule support dimension 1 | Nonreduced geometry retained | API typography |
| GS.1.2 Schubert bounds | Zero bound: dimension 0; torus exponents 1+(-1)=0; GL₂ (2,0) includes lower (1,1), unlike a single orbit | Closure required | API typography |
| GS.1.3 Hecke chains | Empty chain gives (E,E); torus modifications 1 then −1 compose to 0 | Both endpoints and identity retained | API typography |
| GS.1.4 stack sheaves | B S₃: 1/6+1/2+1/3=1; B G_m/F₂: Σ2⁻ⁱ=1; H_c^(−2i)=Q_ℓ(i) gives that trace | Automorphisms, negative degrees and convergence necessary | API typography |
| GS.1.5 smallness | Two GL₂ minuscule legs collide: fibre dimension 1, central stratum codimension 2, so 2·1=2 | Collision is semismall, not small | None |
| GS.1.6 Iwahori chart | r=0 gives relative dimension 0; n=2,r=1 gives bundle dimension 2, bundle-and-leg dimension 1; ab=0 singular, A² smooth | Base and total smoothness distinguished | API typography |
| GS.1.7 Satake category | G=1: one-dimensional Frobenius +1 and −1 have equal geometric dimension 1 but distinct descent; G_m weights 2 and 3 convolve to 5 | Arithmetic data additional | Full arithmetic category supplied later |
| GS.1.8 commutativity sign | Odd+odd Koszul sign −1 corrected by −1 gives +1; torus dimension 0 gives +1 already | Sign correction pinned | None |
| GS.1.9 Satake equivalence | G_m weight m gives one-dimensional dual character m; GL₂ 2⊗2 has dimensions 3+1=4 | Fibre dimensions match | API typography |
| GS.1.10 central loops | G_m positive units act trivially on lattice cosets; a dual weight-one representation has central scalar a | Geometric action not dual central character | None |
| GS.1.11 spherical Satake | Split torus gives E[Z]; norm-one unramified torus has Z^(−1)=0 and algebra E; GL₂ trace changes −q_v⁻¹ᐟ² to +q_v⁻¹ᐟ² | Nonsplit counterexample repaired | Split/twisted formulas |
| GS.1.12 determinant/opposition | Quotient rank 0 gives R; over Q, scaling one basis by 2 gives determinant 2, inverse would 1/2; swap gives −1, or +1 in char 2; IH⁰/IH² signs +1/−1 | Dual and parity conventions fixed | API typography |
| GS.1.13 arithmetic Satake | Frobenius (1+ℓ)^n≠1 for n>0; (−1)²=1; norm-one torus lattice action −1 | Finite quotient does not describe full category | Full category and controls |
| GS.1.14 integral Satake | At unit, k⊗ᴸ_O k has H⁻¹=k,H⁰=k; zeroth perverse tensor gives k, with free O tensor O giving O | Torsion and flat branches differ | API typography |
| GS.2.1 shtukas | G_m coweights 1,−1 sum 0; one weight 1 gives impossible degree equality d+1=d | Degree constraint detects emptiness | API typography |
| GS.2.2 truncations | G=1 gives point; unlevelled G_m/F₃ has stabilizer 2, killed by rational-point full level | Scheme claims require deep level | None |
| GS.2.3 local model | G=1 gives relative dimension 0; GL₂ with one jet gives 1·4=4 | Smooth shift tied to jet group dimension | Typography |
| GS.2.4 fractional infinity | r=1, μ=−1: n·(−1/n)=−1; D∞=0 with μ=1 gives 1≠0 | Sign and degree balance agree | API typography |
| GS.2.5 cohomology systems | I=∅, W=1: degree-zero functions; B(F_q×) rational cohomology has H⁰=E,Hⁱ>⁰=0 | Groupoid, not coarse moduli, retained | API typography |
| GS.2.6 twisted inner forms | n=2 invariants 1/2 and 1/2 sum to 1=0 in Q/Z; single 1/2 would fail reciprocity | Balance essential | Arithmetic contract conditional |
| GS.2.7 elliptic comparison | n=2,g=0 selected degree −1; degree-one tensor gives +1. Negative modification −1 matches 2·(−1/2); positive +1 does not | Comparison conditional on carrier gap | Explicit degree and three controls |
| GS.2.8 horocycle indices | Empty-level tuples r=0: #I=0; r=2 rise/fall: #I=2; r=1 rise: endpoint difference 1 | Supports dimensions 0,2; last tuple rejected | Complete tuple tests |
| GS.2.9 partial Frobenius | Degree-two closed point needs 2 iterates to return; two legs have degrees (1,0),(0,1), product (1,1) | One-iterate replacement fails | API typography |
| GS.2.10 coalescence | Merge {1,2}→{0}: V⊠V∨ becomes V⊗V∨ of dimension d², not V of dimension d | Restriction uses both factors | None |
| GS.2.11 Hecke correspondences | Unit coset acts by 1; torus δ₁δ₋₁=δ₀ and adjoint of δ₁ is δ₋₁ | Construction only off support; later extension separate | Cycle removed |
| GS.3.1 leg maps | Unit pairing 1→Id; zero covector gives 0; trace on d-dimensional V at identity is d | Chosen vectors retained | API typography |
| GS.3.2 Hecke finiteness | Integral scalar a preserves O·m; inverse λ gives λ⁻ⁿ of valuation −n; zero vector uses rank-zero witness | Rational dimension 1 does not imply integral finiteness | Routine Lean API removed |
| GS.3.3 horocycle images | r=0,#I=0: d=0, shift 0; r=2,#I=2: d=1, [−2](−1) followed by [4](2) gives [2](1) | Positive normalized shift | Escapes replaced |
| GS.3.4 ind-perverse system | Finite truncation stays constructible; symmetric PGL₂ coset equals inverse and hence adjoint; infinite sum of boundary pieces has unbounded rank | Colimit not a finite constructible object | API typography |
| GS.3.5 constant-term kernel | Torus: empty intersection=whole space; GL₂ trivial-bundle indicator has nonzero constant term | Compact support alone insufficient | API typography |
| GS.3.6 Hecke from Frobenius | V=1: operator 1; deg v=2: F²; GL₂ open trace −q_v⁻¹ᐟ² versus h=+q_v⁻¹ᐟ² | Iteration/sign and twisted descent retained | Nonsplit branch explicit |
| GS.3.7 Eichler–Shimura | d=1: S_M−F=0; d=2 on eigenvalues a,b: ab−(a+b)a+a²=0; over F₂, 2Id=0 but Id(1)=1 | Rational projector cannot prove integral relation | Integral arbitrary-W theorem |
| GS.3.8 no-leg cusp | G_m/P¹,F₃,two-point level: 2 ray classes versus 1 ordinary class; zero proper parabolics | Level survives cusp identification | Level correction |
| GS.3.9 boundary constants | Fixed-degree Pic⁰ translations preserve N; degree-one tensor sends N to N+1; r=2 high support gives perverse degree 0 | Translation must change summand index | Retained |
| GS.3.10 integral cusp | Zero cusp module is finite of rank 0; finite O-lattice O^d rationalizes to E^d but E^d is not finite over O for d>0 | Integral/rational quantifiers distinct | Typography |
| GS.3.11 PGL₂ Eisenstein | Eisenstein degree algebra E[z,z⁻¹]^ι=E[z+z⁻¹] has dimension 1; isolated point dimension 0 | Whole V need not be finite-dimensional | None |
| GS.3.12 one local Hecke algebra | A=O[t], M=A: one generator over A, infinitely many independent powers over O; torsion submodule 0 killed by λ⁰=1 | Hecke-module finiteness not O-finiteness | Typography |
| GS.3.13 finite core | r=0,#Σ∞=2: 0<2 gives finite type; r=2,#Σ∞=2: equality permits infinitely many high strata; both satisfy parity | Strict inequality retained | None |
| GS.4.1 finite Drinfeld | I={1}: original finite-cover category; empty finite set has cardinal 0; GL_n Lang applies to connected dimension n² group | No assertion for nonétale dual numbers | Named Lang input |
| GS.4.2 integral lisse | Unit Frobenius preserves O and each O/λ^s; λ⁻¹ sends 1 outside O | Integral and rational descents distinct | None |
| GS.4.3 FWeil and rational descent | Degree maps (1,0)+(0,1)=(1,1); λ⁻¹ acts on 1 by valuation −n after n steps while geometric action is 1 | Rational descent needs no stable lattice | Explicit rational target |
| GS.4.4 fusion/Frobenius | Merge two blocks gives F₁F₂; unit missing block contributes exponent 0 | Product of commuting operators retained | None |
| GS.4.5 finite envelopes | Degree-two monic relation T²=aT+b spans m,Tm; T³m=(a²+b)Tm+abm | Finite box follows from monic recurrence | Integral input corrected upstream |
| GS.4.6 specialization | On unit coefficient, specialization E→E sends 1 to 1; inverse also 1→1 | Restricted to Hecke-finite part | None |
| GS.4.7 product Galois | Two coordinates give independent degree pairs; on a finite stable lattice every image lies in GL_d(O), bounded valuation | Compact integral action supports profinite descent | None |
| GS.4.8 H functors | Empty legs give cusp space; trivial added factor has dimension 1; V⊠V∨ restricts to dimension d² | Coefficient and leg functoriality compatible | Typography |
| GS.4.9 coalescence action | Merge restricts (γ₁,γ₂) along γ↦(γ,γ); it is not multiplication of arbitrary γ₁,γ₂ | Direction fixed | Typography |
| GS.4.10 naturality | Unit coefficient and γ=1 give Id; inserted V⊠V∨ at (A,1) yields 5/2 while (1,1) yields 2 | Inserted action cannot be commuted away | None |
| GS.4.11 choices | Replacing transport c by cu produces (cu)u⁻¹Tu(cu)⁻¹=cTc⁻¹ | Conjugations cancel in complete composite | None |
| GS.4.12 full Weil descent | O[t]/(λt−1)=E, with t=λ⁻¹; O[t]/(λ,t)=k finite; first has no stable lattice | Separate maximal-ideal cases essential | Rational descent invoked correctly |
| GS.4.13 ind-smoothness | Constant sheaf E has specialization 1→1; infinite direct union of E^n has unbounded ranks n | Ind-smooth need not finite-rank lisse | None |
| GS.5.1 excursions | ξ=0 gives 0; all γ=1 gives ξ(x)Id; V=E² coevaluation/evaluation at identity gives 2Id | Pairing normalization retained | API typography |
| GS.5.2 regular indexing | A=diag(2,1/2): f(A,1)=5/2,f(A,A)=2, wrong tr(A²)=17/4; abs(a/b) at a/b=−1 gives 1 versus regular character −1 | Inverse and algebraicity tested separately | New negative controls |
| GS.5.3 Satake scalars | V=1 and d=0 or 1 gives 1; trace at A=5/2; nonsplit norm-one torus still has algebra E | Twisted data required nonsplit | Split hypothesis and twisted reference |
| GS.5.4 full compact cohomology | I=∅ pairs to scalar ξ(x); a noncuspidal GL₂ indicator remains in domain; J coordinates receive 1 | Full domain not cusp restriction | API typography |
| GS.5.5 identities | In S₃ choose γ=(12),γ′=(123),γ″=1; γ(γ′)⁻¹=(13), while (γ′)⁻¹γ=(23); γ=γ′=γ″ gives γ | Order matters for nonabelian groups | None |
| GS.5.6 unramifiedness | Identity inertia gives same tuple; norm-one torus unramified inertia acts 1 while Frobenius acts −1 | Entire good open respected | Correct finite quotient upstream |
| GS.5.7 primary decomposition | J=(1 1;0 1): (J−1)e₂=e₁≠0,(J−1)²e₂=0; generalized block dimension 2, eigenspace dimension 1. Zero module: empty sum=0=top | Both independence and spanning required | Stronger README target; library API imported |
| GS.5.8 reconstruction | Rank one values a,b multiply to ab; two distinct characters with values 2 and 3 at one generator give distinct parameters | All-tuples reconstruction retained | None |
| GS.5.9 cusp decomposition | Zero cusp space has sum 0; a scalar Hecke value a and its adjoint commute, giving normality; a nonzero Jordan off-diagonal is not normal | Actual Hecke scalars separate from generalized excursions | None |
| GS.5.10 nonsplit decomposition | Split torus Q=1; F₃(t)(√t) has ramification index 2 at 0 and ∞, forbidden on U=P¹; unramified lattice inertia action 1 | Arbitrary ramified auxiliary quotient rejected | Pinning quotient fixed |
| GS.5.11 modular blocks | Reduction of (1 λ;0 1) is identity; reduction of (1 1;0 1) remains a Jordan block | No characteristic-ℓ normality inference | API typography |
| GS.5.12 conditional eigensheaf | At unit tuple the trace is ξ(x), so unit coefficient gives 1; zero trace function belongs to every zero contribution | Partial-Frobenius compatibility remains an explicit assumption | None |
| GS.5.13 multiplicity conjecture | I=∅,W=1 gives (Aσ)^(Sσ); zero multiplicity contributes 0; no claim forces Jordan algebra E[ε]/ε² to be reduced | Conjecture not an input theorem | Typography |
| GS.6.1 constant twist | Rank one eigenvalue q twisted by q⁻¹ gives determinant 1 and weight 0; before twist weight 2 | Algebraic/plain conditions distinct from weight | None |
| GS.6.2 companions/slopes | r=1 bound 0; q root slope 1→0 after twist; r=2 bound 1/2 shifts to interval [1/2,3/2] under q multiplication | Missing finite determinant restored | Slope controls added |
| GS.6.3 GL_r comparison | r=1 invokes no positive smaller ranks; reducible rank-two χ₁⊕χ₂ would give diagonal pair-factor poles from its two factors | Induction separate from earlier correspondence | None |
| GS.7.1 unramified comparison | Unit coefficient has trace 1 and unit Hecke operator; GL₂ standard at A gives 5/2; norm-one torus quotient has dimension 0 | Nonsplit twisted traces retained | Updated coefficient quantifier |
| GS.7.2 restricted shtukas | I=∅ gives BG(O_nv); r=0 uses D₋₁=nv; one partial Frobenius changes budget r→r−1 | Fixed-budget endomorphism would be wrong | Correct AH19/Ric16 primary contracts |
| GS.7.3 nearby cycles | Empty product is Spec k of dimension 0; Y² integral has dimension 2; crossing two components has 2 generic points | Last instance excluded by irreducibility | Imported exact theorem |
| GS.7.4 transport/Gabber | Identity specialization chain gives Id=Id∘Id; (m,d)=(2,−1) lands at 1, whereas (0,−1) lands at −1 and is excluded | Composition theorem and iteration domain separated | EX24 A.4/A.9 locators |
| GS.7.5 convolution | f=1 acts by volume-one unit; scalar f=0 acts by 0; spherical trace at identity representation gives 1 | Finite torsion construction respects level | API typography |
| GS.7.6 centre parameter | Unit Frobenius has valuation 0; λ⁻¹ has powers of valuation −n and cannot have compact profinite image | General branch remains Weil | Classical-centre gap explicit |
| GS.7.7 integral limits | On Z, function f(n)=λ^n for n≥0 has finite support mod λ^s (n<s) but infinite integral support | Decay is weaker than finite support | API typography |
| GS.7.8 local–global | Unit parameter restricts to unit at both good and bad places; GL₂ Steinberg/trivial have equal semisimple Weil eigenvalues | Semisimple comparison does not determine N | Correct quotient inherited |
| GS.7.9 monodromy | Steinberg has N of rank 1; trivial representation has N rank 0; same semisimple eigenvalues | Frobenius semisimplification retains N | None |
| GS.7.10 gamma | q=2,s=0: ratio 0/(1/2)=0; s=2: (3/4)/(−1)=−3/4; zero representation gives 1. ψ(ϖ·) at s=0 gives √2, two copies give 2 | Ratio and self-dual-measure exponent agree | API typography; Del73 uncertified |
| GS.7.11 GL_r ramified comparison | Rank one N=0; rank-two Steinberg/trivial have N ranks 1/0 | Full WD distinction required, conditional on local LLC gap | Supplier replaced by precise gap |
| Gap: function-field arithmetic | P¹/F₃ ray degree-zero group has order 2; unlevelled order 1; differential character requires nonzero differential | Existing arithmetic interfaces must be identified, not bypassed | External contract |
| Gap: classical centre | f(n)=λ^n example has infinitely many nonzero integral values although every torsion support is finite | Completed corners alone do not imply ordinary finite support | External contract |
| Gap: local GL_r | Steinberg and trivial GL₂ have the same semisimple part and monodromy ranks 1 versus 0 | Semisimple reconstruction insufficient for requested LLC | External contract |
| Gap: elliptic carrier | n=2,g=0 selected degree −1; tensor by degree 1 changes it to +1 | A chain without degree data cannot support the comparison | External contract |
| Gap: SL_r volume | r=1 gives empty product 1; P¹/F₃,r=2 gives 3⁻³/((1−3⁻²)(1−3⁻¹))=1/16 | Required normalization quantitatively pinned | External contract |

## Ownership, sources and signature audit

Read main roadmaps ReductiveGroups, AlgebraicCurves and SchemeAndStackFoundations before editing. Retrieved the indexed texts of every named supplier with roadmaps show and searched the full main/open index by object with roadmaps grep. Also searched the board packages and all thirteen supplied sibling-head directories. The exact Picard-stack, Lang, Hecke-centre and oriented-product contracts were read. The rational FWeil lemma is owned here because it concerns the same product-generic cohomology descent as GS.4 and no earlier owner of that lemma was found. The finite restricted-shtuka comparison remains this roadmap’s specialization, using the generic parahoric/algebraicity inputs rather than replanning them.

FunctionFieldArithmetic appears earlier in the supplied order but roadmaps show returns no text; it therefore remains a declared supplier requirement, not a verified FA target. EtaleDualityAndPerverseSheavesPartII, ExcursionOperatorsAndSpectralAction and DrinfeldModulesAndTModules are absent as eligible suppliers. DrinfeldModulesAndTModules remains a downstream consumer only. The other missing contracts are recorded as needs, never represented as existing statements of their named suppliers. Creating or extending those supplier statements is outside this package.

Source witnesses read for the repairs include VL lines 8299–8305; LL lines 11421–11443; Xue-I lines 2583–2598, 2605–2638; Xue-S lines 440–452; Ric lines 905–927; Sch lines 1015–1043; Org lines 86–91; AH19 lines 798–806; Ric16 lines 47–49; EX24 lines 1564–1566 and 1607–1624. In particular, AH19’s actual title is Uniformizing the moduli stacks of global G-shtukas; its Theorem 3.15 is an algebraicity theorem. EX24’s A.9 is nearby-cycle composition, not the ULA property itself. These distinctions were corrected before submission. Del73 stays uncertified, cited by printed locators; no claim of reading its text is made. No source passage is copied into this package.

Compared the supplied old signature inventory with README. The six elementary definitions, nine admitted abstract/API declarations and eleven examples were removed under the headline-only rules; their mathematics remains as appropriate prose targets or Checks. The final Suggested.lean has zero declarations, so there are no surviving declaration binders to lose and no own names requiring a #check. The final scratch signature file checks the nineteen imported Mathlib interfaces actually cited in the contracts, including IsStack and both generalized-eigenspace interfaces. Their elaborated signatures agree with the limited uses stated here. Pseudofunctor.IsStack supplies effective descent, not algebraicity; an algebraic stack carrier is still missing. Representation on an abstract group does not supply algebraic regularity. The indexed search found no external consumer of the removed fully qualified names.

## Validation outcomes

- Suggested.lean: the prescribed lake env lean invocation from the pinned content checkout exited 0, with empty diagnostic output. Import is solely Mathlib; no TauCeti object build was needed.
- Signature probe: lake env lean exited 0; all nineteen #check commands succeeded. No own declaration remains to compare for implicit section-binder retention.
- Source manifest: sources check reports 0 problem(s). All 28 reference keys occur exactly once; 27 texts are certified, one is uncertified, and the missing-reference file has no entries.
- Dependency check: the prescribed command with the supplied order and --movable exited 0. Output is recorded below; it contains no UPWARD or CYCLE line.

```text
depcheck: 14 roadmaps, 117 edges, 0 problem(s)
```

- Citation resolver: no cross-roadmap citations or Lean names found nowhere. Its generic library-search warning was addressed by the separate pinned #check probe, rather than treated as evidence of library availability.
- Package content gate: run through a scratch TauCetiRoadmap layout pointing at this package. All mathematical-format, import, path, source-material and dependency counts are zero. The full checkout gate additionally sees the untracked scratch layout as dirty; no commit was made to hide that. This is a repository-state check, not a remaining listed content failure.
- Internal target Needs graph: acyclic, including the nonsplit trace-comparison input and rational descent input. git diff --check exited 0.
- Internal headings and links: the worker’s heading-slug conversion was retained; no explicit anchor tags were reintroduced. Source and formula formatting did not change heading text.
- Only README.md, Suggested.lean, sources.toml, the permitted top-level gaps list of design/plan.json, and this report were edited. The design file was absent and now contains only that gaps list. Metadata and sibling roadmaps were untouched. No commit, push or external write was made.

## Maintainer consequences

The package has five explicit supplier gaps. Four answer F10; the fifth is the volume prerequisite of F17. Their resolution requires supplier work or an ownership decision outside this package; their presence is not a claim that the suppliers already prove the requested statements. The dependency direction itself passes. No mathematical target was narrowed to selected primes, minuscule bounds or empty level.

Suggested.lean now honestly has no statable geometric headline at the pins. Names removed are eulerForm, slope, shiftedSlope, HeckeFinite and its finiteLattice/map/smul API, finiteLattice_of_monic_recurrence, not_heckeFinite_inv_ell, excursionFunction, excursionFunction_diagonal_invariant, excursionAlgebra, excursionAlgebra_commute, excursionAlgebra_finiteDimensional and iSup_generalizedCharacterSpace_eq_top. README uses prose specifications for the remaining planned API rather than claiming those declarations exist. No dependent roadmap citing these fully qualified names was found.
