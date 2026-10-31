# Repair report: HeckeStacksAndLocalShtukasPartII

## F01 (P1) — applied

Equal-characteristic pointwise functor → reduced scheme-theoretic graph pullbacks, with the point criterion restricted to geometric fields. Updated §0.4’s API and hyperspecial comparison, §0.5’s identification, §3.5’s construction, endpoint-square API and one-step Check, and §3.6’s transport. Added the square-zero GL₂ negative control. Perfect test-algebra bounds remain unchanged.

Evidence: zhu17 line 2114 explicitly restricts the functor’s test algebras to perfect ones; zhu17 line 2195 gives the endpoint pullback construction. He14’s classical geometric point condition is at he14 line 208. For the witness, E₁₂²=0 and ε^q=0, so g⁻¹=1−εt⁻¹E₁₂, σ(g)=1 and r_b(g)=1−εt⁻¹E₁₂. Its nonzero negative coefficient excludes membership in GL₂(R[[t]]) even fppf locally. Reduction cannot add a point failing the graph condition. The identity passes. Reducing a cartesian scheme diagram need not preserve its ordinary scheme fibre product; §3.5 now specifies the pullback category as well.

## F02 (P2) — applied

Unconditional equality in the extended semi-module API → equality everywhere if and only if cyclic. Added Example 3.5’s fully specified noncyclic type, normalization and five sequences to §2.2. General extended types remain in §§2.3–2.5; the cyclic chart statement and cyclic attainment statement retain their existing hypotheses.

Evidence: vie06 line 137 permits strict inequality, vie06 line 146 defines cyclicity, and vie06 line 152 supplies the example. The basis sum is −2−1+2+5+6=10. The upper bound at −1 is 1, while φ(−1)=0. The five initial values are (0,0,2,2,0), with sum 4 and increasing rearrangement μ. The exceptional successor is −1→6, exceeding −1+5=4. No Lean declaration was added for this Check.

## F03 (P3) — applied

Implicit indexing/intersection definitions → explicit membership, finiteness, empty-dimension and K_M-orbit API in §3.4. Defined K_M=M(O_L), gave the identifying multiplication map, and added the third Check with both Newton corrections nonzero, together with an empty-position control. The supplied general-Levi intersection geometry remains imported.

Evidence: ham15 line 162 defines the occurrence and integral-κ index, ham15 line 173 bounds the positions by the finite dominant interval, and ham15 line 178 defines d and its K_M-orbit invariance. Ham15 line 202 states the fibre formula. At ν_M=(0,1), ν_G=(1,0), the pairings are −1 and −1. The intersection dimension is 0, giving fibre dimension 0−1−(−1)=0.

## F04 (P3) — applied

Corrected §0.2 to equation (2.1) followed by unnumbered definitions; §4.2 to pp. 1026–1028; §7.1 to ghn15 §3.3 and he21 p. 13. Corrected the existing ghn15 manifest locator in place. Searched the whole README and manifest for each inaccurate form; none remains.

Evidence: he21 line 201 labels (2.1), whereas he21 line 208 is unnumbered. Vie14 line 713 begins Proposition 5.5 before the p. 1027 marker; vie14 line 768 gives Corollary 5.6 on p. 1028. Ghn15 line 390 heads §3.3. He21 line 488 heads §6.1 on p. 13. Existing supplier-contract and vie14 manifest page ranges already include p. 1026. No duplicate source key was created.

## F05 (P3) — applied

“The repaired lower-bound difference” → “the lower-bound difference” in §5.1. The equation is unchanged. A whole-README search found no other occurrence of “repaired”.

The calculation is ω₂∨−(ω₁∨−2ω₁∨)=ω₁∨+ω₂∨. In A₂, α₁∨=2ω₁∨−ω₂∨ and α₂∨=−ω₁∨+2ω₂∨, so this is α₁∨+α₂∨. The comparison λ−λ_w^♭♭=(α₁∨−α₂∨)/3 still has a negative simple-coroot coefficient and is not rationally positive. The operator’s inputs are specified in he21 line 342.

## Adversarial mathematics pass

The following are computations of statement instances, not formal proofs of the planned geometric theorems. Dimensions of empty loci and degrees of zero polynomials are −∞. Root coordinates and coweight coordinates are distinguished; α∨=2ω∨ in adjoint A₁. Each numbered target has a row, with additional rows for the repaired API clauses and shared supplier conventions. A retained result means the computed instance agrees with its stated hypotheses and conclusion.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
|---|---|---|---|---|
| Conventions: local field and perfect domain | q=2,3; dual numbers; zero algebra | ε²=ε³=0 with ε≠0, so Frobenius has a kernel; Spec(0)=∅ has sheaf value a singleton; q=1 is not p^f with f≥1 | Domains distinguished | F01 |
| Conventions: apartment, length, halves | A₁, s t^(nα∨), n=1,2 | Alcove (−1,0) goes to (2,3),(4,5); lengths 3,5; virtual dimensions (3+1)/2=2 and (5+1)/2=3 | Retained | None |
| Conventions: trace Frobenius | A¹ over 𝔽₂,𝔽₃ | Point counts 2,3 equal geometric H²_c traces 2,3; arithmetic traces 1/2,1/3; H¹_c trace 0 | Retained in §3.1 and supplier bridge | None |
| Conventions: lattice volume | h=2; leading bases {0,1},{1,2} | Sums 1,3; determinant components (1−1)/2=0 and (3−1)/2=1 | Retained | None |
| RG2.4 sign bridge | diag(t,1), diag(t²,1), their inverses | Here labels (1,0),(2,0), κ=1,2; supplier labels (−1,0),(−2,0); inverses have κ=−1,−2 and dominant slopes (0,−1),(0,−2) | Retained on identical representatives | None |
| Integral-order supplier | A₁ retained lattice ℤ, positive coroot 2; rank zero | Difference 2=1·2 passes; 1≠n·2 for n∈ℕ fails; empty root cone is {0}, so only equality passes | Retained | None |
| Unipotent-filtration supplier | Upper unipotent GL₃ in characteristics 2,3 | [1+E₁₂,1+E₂₃]=1+E₁₃≠1; graded dimensions 2,1; whole additive model would give commutator 1 | Retained | None |
| Demazure-product supplier | s*s; extension with τ(s₀)=s₁ | s*s=s has length 1 versus s²=1 of length 0; τ*s₀=s₁τ has Coxeter support {s₁}, not {s₀} | Retained | None |
| Twisted Red-Min supplier | Split affine A₁, w=s₀s₁s₀ | Conjugation by s₀ gives s₁; lengths 3→1; same basic class | Retained | None |
| Straight–finite-parabolic supplier | Finite s and straight t^α∨ in A₁ | First has u=s,x=1 and Newton 0; second u=1,x=t^α∨ has length 2 and Newton α∨ | Retained | None |
| Finite-Coxeter basic-class supplier | A₁, μ=0 and μ=α∨, τ=1 | t^0s=s₁ and t^α∨s=s₀, both minimal length 1 in their classes; finite parabolics generated by s₁ and s₀ | Retained | None |
| Root-sign cancellation supplier | A₂, w=s₁s₂,y=s₂; w=y=1 | ℓ(wy)=1=2−1; y⁻¹ has the single inversion α₂ and wα₂ is negative; identity gives 0=0−0 | Retained | None |
| Dominant-subtraction supplier | A₁, subtract ω∨ from 0; subtract 2ω∨ from 2ω∨ | Required odd coset has least dominant value ω∨, not 0; even zero difference has least dominant value 0 | Retained | None |
| Superbasic supplier | GL₂ slopes (1/2,1/2) and (1,0) | Division-algebra J_b/Z(G) split rank 0; ordinary torus quotient split rank 1 | Retained | None |
| Newton-poset supplier | GL₂ κ=1, basic≤ordinary | Pairing difference 1 and defects 1,0 give chain length (1+1−0)/2=1; singleton interval gives 0 | Retained | None |
| Strong-purity and greatest-cell suppliers | GL₂ w=s t^(1,0), basic/ordinary | Ordinary codimension 0; basic codimension 1; largest Newton point (1,0) dominates (1/2,1/2) | Retained | None |
| General-Levi intersection supplier | GL₂ μ=(1,0), M=T, μ_M=(0,1),(1,0) | d=0,1 equals 〈ρ,μ+μ_M〉=0,1 since ρ_M=0; empty position (2,−1) has d=−∞ | Retained | F03 API |
| Twisted cocenter supplier | A₁ quadratic relation; unitary A₂ twist | T_s²=zT_s+1; at z=0 it is 1; twisted commutator T_s₁−T_s₂ maps to 0, whereas ordinary [T_s₁,1]=0 already in the algebra | Retained | None |
| §0.1 point locus | Trivial group; cyclic group; S₃, b=(12),g=(123), I=1 or 〈(12)〉 | Trivial locus has one point; cyclic r_b(g)=b; S₃ r=(13); replacing g by gi gives i⁻¹rσ(i) and the same double coset | Retained in both membership directions | None |
| §0.2 virtual dimension | GL₂ translation ordinary, s-translation basic; twisted A₂ x=s₁,y=s₂ | 1/2−1/2=0; (2+1−1)/2=1; η=σ⁻¹(s₂)s₁=1 versus untwisted s₂s₁ of length 2 | Retained | F04 locator |
| §0.3 shrunken chambers | A₁ strips; A₂ λ=6ω₁∨ | (−1,0) rejected, (0,1) accepted, endpoints −1,0 retained; λ−2ρ∨=2α₁∨ but α₂(λ)=0 | Retained | None |
| §0.4 exact and bounded | G_m valuation 1 at bound 0; GL₂ b=1,μ=(1,−1) | Torus κ:1≠0 gives ∅; identity position 0 is ≤μ but unequal to μ | Retained | F01 functor |
| §0.4 scheme graph and reduction | GL₂ dual numbers, g=1+εt⁻¹E₁₂; g=1 | Geometric position 0 for both; r(g)=1−εt⁻¹E₁₂ has coefficient −ε≠0 at t⁻¹, versus r(1)=1; graph membership false/true | Old pointwise definition fails | F01 negative control |
| §0.4 parahoric specialization and forgetting | G_m I=K; GL₂ finite reflection over standard lattice | Torus conditions identical; GL₂ s-locus fibre P¹∖P¹(𝔽_q) has dimension 1, identity fibre has q+1 points and dimension 0 | Retained after reduction/perfection | F01 comparisons |
| §0.5 geometric dimension and comparisons | A¹ and its perfection; torus identity/mismatch; A¹×A²→A¹ | Dimensions 1=1; infinite discrete torus locus 0, empty mismatch −∞; projection dimensions 3=1+2 | Retained | F01 field-point wording |
| §0.6 framing | S₃ b=(12),h=(123),σ=id | hbh⁻¹=(23); h⁻¹bh=(13); (hg)⁻¹(hbh⁻¹)(hg)=g⁻¹bg | Retained direction | None |
| §1.1 minimal classes | GL₂ t^(1,0); A₁ s; mismatched κ | 1−1=0; 1−0=1; mismatch dimension −∞ | Retained | None |
| §1.2 geometric reduction | A₁ w=s₀s₁s₀, basic; both branches empty | 1+max(−∞,1)=2; 1+max(−∞,−∞)=−∞ | Retained | None |
| §1.3 dimension equals degree | Same word, basic and nonbasic translation classes | T_w≡zT_(s₁s₀)+T_s₁; (3+1+0)/2=2; (3+2+1)/2−2=1; deg(0)=−∞ | Retained normalized z-degree | None |
| §1.4 advantage | Nonempty dimensions 3,2 and virtual values 4,3; identity; empty target | Normalized values −1=−1, dimension difference 1 equals correction 1; identity correction 0; empty target imposes zero conditions | Retained | None |
| §2.1 semi-module | (h,m)=(2,1), ℕ,1+ℕ, evens,∅; h=1 | Basis sums 1 and 3; normalization shift −1; evens fail +1; empty set has 0 rather than 2 residue representatives; h=1 basis {0} | Retained | None |
| §2.2 cyclicity | (2,1), A=ℕ; constant zero φ; wrong support at −1 | φ(0)=0,φ(1)=1 equal upper bounds; constant zero gives 0≥1 false; finite φ(−1) contradicts −1∉A | Retained cyclic positive control | F02 characterization |
| §2.2 noncyclic example | (h,m)=(5,4), B={−2,−1,2,5,6} | Sum 10; B+4={2,3,6,9,10}⊂A; at −1, φ=0<1=upper bound; at 4, φ=2>φ(−1)+1=1 | General extended type passes, cyclicity fails | F02 Check |
| §2.2 sequence decomposition | Starts −2,2,5,4,−1 | First four φ sequences: (0,1,2,3),(0,1,2,3),(2,3,4,5),(2,3,4,5); last −1,6,11,16 has (0,1,2,3); initials sort to (0,0,0,2,2) | All sequence laws agree | F02 Check |
| §2.3 lattice assignment | Standard shift (2,1); shift b by t; leading-index shift by 1 | t⁻ⁿbσ(e_a)=e_(a+1−2n), so φ=floor((a+1)/2); tb raises φ by 1; basis sum 1→3 raises determinant component 0→1 | Retained for all extended types | None |
| §2.4 chart dimension | Cyclic (2,1) type; new noncyclic (5,4) type | First V=∅, dimension 0; second V={(4,6),(4,7),(5,6),(5,7)}, cardinality 4 | Noncyclic stratum retained | None |
| §2.5 superbasic dimension | Increasing μ=(0,1),(−1,2) for (2,1); μ=(0,0,4) for (3,4); μ=(0,0,0,2,2) for (5,4) | Pairing minus defect/2: 1/2−1/2=0; 3/2−1/2=1; 4−1=3; 6−2=4 | New chart satisfies the bound with equality | None |
| §3.1 Lang dimension | Upper GL₂ slopes (2,0),(0,2); N=1; q=2 | Root minima 0,−2 match reordering pairings 0,−2; empty root sum 0; u²−u has derivative 1 and two roots | Retained | None |
| §3.2 adjoint components | GL₂→PGL₂; adjoint group | κ labels 0 and 2 both go to 0 mod 2; identity adjoint map preserves each label | No global injectivity inferred | None |
| §3.3 superbasic reduction | GL₂ shifts m=1,2; h=1 | gcd(1,2)=1, defect 1; m=2 is scalar t and meets a proper Levi; GL₁ defect 0 | Retained | None |
| §3.4 indexing API | GL₂ M=T,μ=(1,0),κ_T(b)=(0,1) | Occurring positions (1,0),(0,1); κ selects only (0,1); (2,−1) has negative matrix entry valuation and empty intersection | Membership and finiteness agree | F03 |
| §3.4 intersection and orbit API | μ_M=(0,1), m=k_M t^μ_M; empty μ_M=(2,−1) | n(u)t^μ_M=[[1,ut],[0,t]]; integral exactly for u∈t⁻¹k[[t]], quotient a point, d=0; multiplying by k_M preserves d=0; empty d=−∞ | Both positive and empty models fixed | F03 |
| §3.4 fibre dimension | M=G; GL₂ M=T,b=1,μ=(1,−1); b=diag(1,t),μ=(1,0) | First 0+0−0=0; second 1+0−0=1; third 0−1−(−1)=0, whereas deleting first correction gives 1 | Correct signs detected | F03 |
| §3.5 iterated locus and category | d=1; torus bounds 1,2; nilpotent GL₂ deformation | Endpoint 1+2=3, convolution fibre dimension 0; d=1 equation is r_b itself; dual-number deformation fails r_b∈K, identity passes | Same reduced/perfect branch on both sides | F01 |
| §3.6 norm isomorphism | Degrees 1,2,3, Frobenius-fixed U=[[1,1],[0,1]],V=[[1,0],[1,1]] | Degree 1 identity; UV=[[2,1],[1,1]]≠VU=[[1,1],[1,2]], also mod 2; inverse embedding cycle selects UV in degree 3; defect stays 1 | Retained through reduction/perfection | F01 transport |
| §3.7 convolution | GL₂ bounds (1,0),(1,0), endpoints (2,0),(1,1) | Top fibre point, dimension 0; lower fibre P¹, dimension 1=〈ρ,(1,−1)〉 | Retained | None |
| §3.8 spherical and iterated dimensions | GL₂ minuscule basic; b=1,μ=(1,−1); κ mismatch; two minuscule steps with b=t·1 | Dimensions 0,1; mismatch −∞ despite numerical 1/2; iterated value 〈ρ,(1,−1)〉=1 | Retained with nonemptiness hypotheses | None |
| §3.9 flag upper bound | GL₂ straight ordinary; finite A₁ reflection | Actual/virtual 0=1/2−1/2; 1=(1+1)/2; wrong plus-Newton sign gives 1 in the first case | Retained | None |
| §4.1 nonemptiness | GL₂ λ=(1,0), ν=(1/2,1/2),(2,−1); G_m mismatch | Differences α∨/2 and −α∨ give yes/no although both GL₂ κ=1; torus κ=0≠1 gives no | Retained | None |
| §4.2 generic class | GL₂ t^(1,0) and s t^(1,0) | Both greatest Newton points (1,0); second also has basic point (1/2,1/2) below it by α∨/2 | Retained | F04 locator |
| §4.3 normalized cell comparison | GL₂ s t^(1,0), basic/ordinary, congruence depths 1,2 | Basic 5−4=9−8=1=dim X+0; ordinary 6−4=10−8=2=dim X+1; codimensions 1,0 give ADLV dimension 1,1 | Retained | None |
| §4.3 empty/equidimensional boundary | G_m w=1,b=1 or t | At 1: dim X=dim_I N=0,c=0, both equidimensional; at t: both empty, no finite minimum codimension | Retained | None |
| §4.4 cordiality | Identity; GL₂ translation; A₁ s | Length-minus-η values 0,1,0 equal Newton-minus-defect values 0,1,0 | Retained | None |
| §4.5 mutual advantage | Identity relation; dimensions 3,2 and virtual values 4,3 | Normalized differences −1=−1; mutual occurrence implications give identical class sets; identity correction 0 | Retained | None |
| §4.6 saturation | GL₂ s t^(1,0); torus singleton | Ordinary/basic dimensions (2+1)/2−1/2=1 and (2+1−1)/2=1; interval length 1; codimensions 0,1; torus length 0 | Retained; closure conclusions stay equal-characteristic | None |
| §4.7 translation family | GL₂ x=s,λ=(1,0); A₁ x=s,λ=0 | 2−1=1−0; 1−1=0−0; cells I,IsI disjoint with I in the closure of IsI | Retained | None |
| §5.1 double-flat | Split A₁ λ=2ω∨ or ω∨,y=s; y=1 | Double-flat values 0,ω∨; for y=1, J=∅ and λ^♭♭=λ | Retained | None |
| §5.1 twisted difference | Unitary A₂ λ=ρ∨ or ω₁∨,y=s₁ | First lower difference α₁∨, second ω₁∨+ω₂∨=α₁∨+α₂∨; second λ−λ^♭♭=(α₁∨−α₂∨)/3 has coefficients 1/3,−1/3 | Retained equation | F05 wording |
| §5.2 factorization | Split A₁ x=y=s,λ=2ω∨; unitary A₂ x=y=s₁,λ=ρ∨ | A₁ product (s t^ω∨)(t^ω∨s)=t^(−2ω∨), lengths 2+0=2,a=1; A₂ product t^ω₂∨t^(−ω₁∨+ω₂∨)=t^α₂∨, lengths 2+2=4,a=s₂*s₂=s₂ | Retained | None |
| §6.1 endpoint correspondences | u=1; u=v=s; unitary A₂ u=s₁,v=s₂ | First fibre a point; ordinary endpoint 1 has A¹ fibre, Demazure endpoint s has G_m fibre, both dimension 1; vσ(u)=1≠vu | Retained directions and twist | None |
| §6.2 five chain spaces | Split A₁ factorization; unitary A₂ factorization | A₁ A=1, B=t^ω∨s, Bσ(w₁)=t^(2ω∨); A₂ A=s₁, B=t^ω₁∨s₁, Bσ(w₁)=s₁t^ω₂∨=σ(s₂t^ω₁∨), A*σ(s₂)=s₁=σ(a) | Restricted endpoints agree | None |
| §6.3 fibre corrections | Same A₁; unitary A₂; u=v=s | A₁ N₁=(0+2−2)/2=0,N₂=0; A₂ N₁=(1+2−3)/2=0,N₂=1+1−1=1; simple-square bounds both 1, not 1/2 | Retained | None |
| §6.4 cordial reduction | A₁ x=y=s,λ=2ω∨ | Target a=1,γ=2ω∨; virtual dimensions both 1, correction 0; support inclusion ∅⊇∅ | Retained without a full-support seed claim | None |
| §7.1 P-alcove definition | J=S; A₂ x=s₁,y=s₂,λ=2α₁∨+2α₂∨ | N=1 makes inclusion vacuous; x-conjugation gives translation coordinates (2,2), y-conjugation gives (0,−2) | Retained conjugator | F04 locator |
| §7.2 all-Levi-class obstruction | GL₂ ordinary class, diagonal torus; J=S | Torus labels (1,0),(0,1) are distinct with group κ=1; J=S reduces to equality of group κ | Retained all-class quantifier | None |
| §7.3 proper support | A₁ positive translation, b=1 or matching translation | η=1 gives empty support; gap nα∨>0 gives empty locus; matching b gives gap 0 and dimension 0 | Strictness retained | None |
| §7.4 basic seed | A₁ a=s,γ=0 or α∨; A₂ finite Coxeter at γ=0 | First finite locus dimension 1 even q=2; positive translation cocenter zT_(s₀s₁)+T_s₀ has basic coefficient 1 and dimension (3+1)/2=2; A₂ finite Coxeter dimension 2 despite nonshrunken alcove | Retained independent seed | None |
| §7.5 twisted product | J=S; G_m, q=2, ζ³=1,ζ≠1 | Quotient map reduces to identity; (1,1) and (ζ,ζ) both map to 1 since ζ²/σ(ζ)=1; wrong pair (ζ,1) maps to ζ⁻¹≠1 | Retained twisted quotient and injectivity hypotheses | None |
| §7.6 interval propagation | GL₂ a=s,γ=(1,0) | Basic/ordinary κ=1 and dimensions 1,1; κ=0 class excluded; Newton endpoint difference α∨/2 | Retained seed before saturation | None |
| §8.1 shrunken criterion | PGL₂ b=1, w=s t^(nα∨) or t^(nα∨),n=1,2 | Matching κ in both; η-support full/empty gives nonempty/empty; gaps nα∨>0 | Retained both directions | None |
| §8.2 dimension | Same full-support A₁; unitary A₂ x=y=s₁,λ=ρ∨,b=1 | A₁ dimensions 2,3; A₂ λ^♦=ρ∨,(λ^♭♭)^♦=ρ∨/2, and (4+2)/2=3 | Retained | None |
| §8.3 basic specialization | A₂ λ=0,w=w₀; Res quadratic PGL₂,λ=(α∨,0) | Finite dimension (3+3)/2=3 despite zero strict gap; σ-average (α∨/2,α∨/2) has both coefficients 1/2 | Retained zero and component-cycle cases | None |
| §8.4 large range | A₁ λ=α∨; A₂ λ=6ω₁∨ | A₁ bound equals 2ρ∨ and dimension 2; A₂ λ−2ρ∨=2α₁∨ but α₂(λ)=0 retains critical strip | Shrunkenness remains independent | None |

For the new noncyclic type, φ agrees with the residue-class upper-bound function except at −1. Away from the transition −1→4, φ(a+5)=φ(a)+1. The five sequences partition A, and the tail starting at 2 contains every integer ≥2, where equality with the upper bound holds. Thus the displayed finite calculations establish the exceptional behaviour rather than merely sampling an arbitrary function. The computed V is exhaustive: every a∈A outside B has a−5∈A; except at a=4, φ(a)=φ(a−5)+1, leaving no integer strictly between these values. Only a∈B or a=4 can contribute, and evaluating those possibilities gives the four pairs in the table.

For the new Levi witness, write g=n(u). Its relative-Frobenius matrix is [[1,σ(u)−tu],[0,t]]. Negative valuation of u gives the same negative valuation for σ(u)−tu, since the two summands have distinct valuations. Thus the zero-dimensional fibre really has only the integral-u coset, independently confirming the two-correction calculation. At μ_M=(2,−1), the bottom diagonal entry t⁻¹ prevents position (1,0). For orbit invariance, m=k_M t^μ_M k′_M and k′_M∈K; multiplication by k_M has inverse multiplication by k_M⁻¹, normalizes N and preserves the K-orbit Gr_μ. This proves the new API’s isomorphism with its source and target specified.

## Ownership, citations and acceptance signatures

Read the main-branch LocalGaloisGroups and PerfectoidSpaces roadmaps for shape. Main was 7922565e8b5d3420ff251821a1b3b042fabe96c8. Cross-roadmap checks used main, the available board designs, and `roadmaps show` at the indexed heads for new roadmap folders. Object searches with `roadmaps grep` covered the available open roadmap index and main; board-package searches were also performed. This includes an ownership check against open work, rather than an assumption that it was unavailable.

The revised constructions remain this package’s relative-Frobenius pullbacks of GeometricSatakeAndFusion GS0/GS2 moduli. Generic semi-infinite intersection geometry remains GS1’s; the required general-Levi dimension extension is already `gap:levi-intersection-dimension`. No new supplier theorem is invented, no ownership moves, and no gap is added. The README’s 13 contract slugs agree exactly with the plan’s 13 top-level gaps.

Rechecked ReductiveGroupsPartII RG2.0.4, RG2.1, RG2.3 and RG2.4, including the translation sign and normal-form targets; BunGAndNewtonStrata §§0.5–0.6, 1.7–1.8, 1.10–1.11, 1.13–1.15, 1.21, 1.27, 1.30, 1.43 and 1.45; GeometricSatakeAndFusion GS0’s named model/incidence targets, GS1 semi-infinite-affineness and GS2 convolution and rational-special-fibre-convolution; SchemeAndStackFoundations §§0.7, 0.9, 0.23–0.26 and Layer 1; TraceFormula Layer 11; SmoothRepresentationsOfLocalGroups SR.1.5; RootSystems Layers 3, 4 and 6; and HeckeStacksAndLocalShtukas HS0–HS4. The supplier gaps continue to denote obligations rather than existing declarations.

The supplied citation lead says `RootSystemsPartII RS2.1: no roadmap RootSystemsPartII on main or in an open pull request`. That search result is accurate for those locations, but the cited target exists in the available board design: `packages/RootSystemsPartII/design/README.md:30` heads RS2.1 and line 38 names integral-order; lines 40–65 specify the retained integral cone, flipped order and API. Its design plan names the same target. Thus no nonexistent package target was manufactured to answer the lead, and the citation is retained. The additional affine-combinatorial obligations remain explicit gaps. The board design routes those extensions separately; changing that ownership or another package is outside this repair’s findings and authorized file scope.

Pinned Mathlib is 6b7abb3c7686292736be2955bd3eb9ebf63b456a; pinned Tau Ceti is a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, from `lake-manifest.json`. Reopened the actual native declarations: Mathlib `DoubleCoset.doubleCoset`, `mem_doubleCoset`, `doubleCoset_eq_of_mem` at `Mathlib/GroupTheory/DoubleCoset.lean:37`, :44 and :51; `QuotientGroup.leftRel` and `leftRel_apply` at `Mathlib/GroupTheory/Coset/Defs.lean:66` and :71; `Finset` at `Mathlib/Data/Finset/Defs.lean:75`. These supply arbitrary-set double cosets, subgroup cosets without normality, and duplicate-free finite sets, not affine moduli.

Reopened Tau Ceti’s subgroup-factor theorem at `TauCeti/GroupTheory/DoubleCoset/Basic.lean:100`, parabolic carrier and minimality at `TauCeti/GroupTheory/Coxeter/Parabolic.lean:101` and :233, length addition at :280 and unique factorization at :330; inversion set at `TauCeti/LinearAlgebra/RootSystem/Inversions/Basic.lean:50`, least length and subadditivity at `TauCeti/LinearAlgebra/RootSystem/Inversions/Length.lean:148` and :172. Searches by affine flag, affine Grassmannian, Deligne–Lusztig, Kottwitz and twisted cocenter found no geometric carriers for the headlines; the Deligne–Lusztig mention in the nonsplit-torus file is not such a carrier.

Suggested.lean remains unchanged: one `import Mathlib`, one module docstring explaining each unavailable geometric headline, the required namespace, and no declarations. Its declaration/signature inventory is empty. Consequently the requested `#check @name` comparison has zero entries, and no binder was added, dropped or changed. No substitute theorem, data definition, API padding or boundary declaration was added. README and acceptance-test generality remain aligned.

All 15 source keys remain unique and certified. The legal cached extracts suffice for all five findings; no source fetch or missing-reference request was needed. Added §0.4 to the existing he14 entry’s cited-for list. Metadata and the design plan are unchanged.

## Check outcomes and maintainer consequences

- Elaboration: `lake env lean <Suggested.lean>` from the content checkout, using the absolute package-file argument required by the job, exited **0**, with **empty stdout/stderr**. No TauCeti module build was needed because the file imports only Mathlib. No Lean process remains running.
- Declaration/signature audit: **0 declarations**, **1 import** (`import Mathlib`), **0 set_option occurrences**; the elaborated-signature comparison is empty, with no signature changes.
- Dependency check: the required `gate --depcheck` invocation with this package name, the prescribed order and `--movable` exited **0**. Its complete output was:

```text
depcheck: 53 roadmaps, 595 edges, 0 problem(s)
```

- No UPWARD, CYCLE or moved line was emitted. No merge-order file was edited.
- `git diff --check` exited **0**, with no output.
- Manifest syntax and source-key check passed: **15 sources, 15 distinct ids**, all certified. README/plan gap comparison passed: **13/13 matching slugs**.
- Whole-document recurring-pattern search found no remaining inaccurate forms from F04 and no “repaired” wording from F05. Cyclic equality is conditional throughout; §§2.3–2.5 still quantify over general extended semi-modules. Equal-characteristic point-functor identifications in §§0.4–0.5 and 3.5–3.6 now consistently use reduction or geometric field points.
- No separate gate failures were listed in the brief. The provided citation lead was resolved against the existing board design as explained above.

Consumers must use the reduced graph-pullback functor in equal characteristic; a geometric-point bound alone does not define its value on nilpotent algebras. Numerical dimension statements are unchanged. No Lean name changed and no downstream name migration is required. Only this package’s README, existing source-manifest entries and this report were changed; no commit, push or external write was performed.
