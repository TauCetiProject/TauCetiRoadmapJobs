# Repair report: AutomorphyLiftingBeyondTaylorWiles

## F01 (P1) — applied

Forward middle cohomology arrow → `p_{1*} c_g p_2^*` in §0.2. Explicit inverse-coset homology adjunction and transported scalar actions agree in §§0.5, 1.4, 2.2 and 4.1. §§3.3–3.4 identify the oriented chain map through precomposition. Cyclic, character, tree and rank-three negative controls are added; the unnormalized polynomial is unchanged.

### Mathematical evidence and propagation

ArithmeticLocallySymmetricSpaces ALS.3.5 names K_g=K∩gKg⁻¹, r_g:Y(K_g)→Y(g⁻¹Kg∩K), p₁ the first level projection and p₂ the projection after r_g. Its coefficient morphism has source `p_2^*V` and target `p_1^*V`. Pullback along p₂, coefficient transport and trace along p₁ therefore give the supplied positive double coset. The former forward middle cohomology arrow was pushforward along the isomorphism r_g, hence the opposite correspondence. ALS.3.6 supplies the groupoid corestriction and its restriction identities; this repair imposes no neatness or stabilizer-order restriction.

CG18 line 4632 and CG18 line 4638 describe transfer, forward translation and pushforward on homology. That direction cannot also be used as the middle pullback on cohomology. CG18 line 4688 fixes the polynomial which the repair retains. CG18 line 4764 and CG18 line 5138 explain the dual ideal used in the patching construction. ArithmeticLocallySymmetricSpaces ALS.5a.4 supplies the inverse-double-coset adjunction; IntegralHeckeAndGaloisDeterminants §3a.1 supplies the unnormalized polynomial and Satake coefficients.

The homological convention is now explicit: T_H(g) denotes the left homology action with inverse translation; T(g)^∨=T_H(g⁻¹). Its geometric transpose is transfer along p₁ followed by forward translation and pushforward along the second level projection. Consequently standard homological diamonds have the inverse eigencharacter at m*=ι(m). The scalar action transported from cohomology to its dual instead sends [δ] to T_H(δ⁻¹). This distinction is made in §4.1 so the deformation and scalar actions in §§2.7, 4.2–4.4 and 5.1 remain compatible. No inverse-eigenvalue formula for an arbitrary noninvertible parahoric operator is assumed: the entire projector is transposed.

The pattern search covered every pullback, trace, transfer, translation, diamond, adjoint, normalization and squared correspondence in the README. The other edited occurrences are §0.2's interface and Needs line, §0.5's statement and duality argument, §1.4's group-algebra coordinate and witness, §2.2's homological compatibility clause, §3.3's definition of V_x, §3.4's passage from permutation chains to cochains, and §4.1's projector, scalar action, action comparison and proof. In §§3.2 and 3.5 the two degeneracy maps and their Gram matrix already agree with ALS.3.14. In §§0.3, 2.1, 2.7, 3.6–3.7 and 5.6–5.10 the operators consume §0.2; their polynomial, root and Frobenius conventions remain the positive ones.

The rank-three witness is over ℤ₅, not just its residue field. The two polynomials agree modulo 5 and differ modulo 25. Recording that distinction prevents the new negative control from becoming another test which cannot detect the defect.

### Computed adversarial pass on the repair

These are exact finite-set, permutation-module, character and rational-polynomial computations. They check directions and identities; they do not establish global arithmetic existence or discharge the eleven supplier contracts. A finite regular-tree ball containing the paths was used to compare every vertex coefficient of the boundary identity, for q=2 and q=7.

| Statement, including its consumers | Instances tried | Computed values on the compared sides | Result and change |
| --- | --- | --- | --- |
| §0.2 source and target of the middle cohomology map | K_g and L_g; r_g:Y(K_g)→Y(L_g) | Pullback has source H*(Y(L_g)) and target H*(Y(K_g)); forward pushforward has the reversed source and target | Replaced the forward arrow by r_g^* inside p₁-trace/p₂-pullback |
| §0.2 positive degree-one correspondence | C₃, r_g(i)=i+1, f=δ₀ | Pullback (0,0,1); forward pushforward (0,1,0); for g=1 both (1,0,0) | Added direction and identity controls |
| §0.2 left action under right translation | S₃, g=(12), h=(23), f=δ₁, x=(132) | gh=(123), hg=(132); (r_g^*r_h^*f)(x)=f(xgh)=1, reversed product gives 0 | Pullback composition has the required order; no commutativity argument is used |
| §§0.2 and 0.5 homology operator and its transpose | C₃, f=δ₀, y=e₂ | ⟨r_g^*f,e₂⟩=1; ⟨f,(r_g)_*e₂⟩=1; ⟨f,(r_g⁻¹)_*e₂⟩=0 | Specified T(g)^∨=T_H(g⁻¹), preserving m* |
| §§0.2, 1.4 and 2.2 deck coordinate | n=3, Δ=C₅, θ(d)=ζ₅ | 1−n=3 mod 5; inverse exponent 2; θ((d³)²)=ζ₅⁶=ζ₅; wrong direct coordinate gives ζ₅³ | Retained the inverse exponent and explicitly labelled the action as pullback |
| §§1.4 and 2.2 direction of the diamond character | r_d^*f=ζ₅²f | r_{d³}^* has eigenvalue ζ₅; its forward pushforward has ζ₅⁻¹ | Added the character direction witness |
| §§0.5, 2.2 and 4.1 dual coefficients, standard homology and transported scalars | A character line with cohomological eigenvalue ζ₅²; χ(g)=ζ₃ | Standard homology: ζ₅⁻²; transported scalar T_H(d⁻¹): ζ₅²; evaluation coefficient product ζ₃ζ₃⁻¹=1, versus ζ₃²≠1 | Preserved inverse coefficients and distinguished the two scalar actions |
| §0.2 positive spherical generators; IHG §3a.1 | n=3, q=2, s=(2,3,1/6) | Product sᵢ=1; T₁=2·31/6=31/3; T₂=2·41/6=41/3; T₃=1 | Added rank-three control using the supplier's Satake normalization |
| §§0.2 and 2.1 characteristic polynomial; §5.8 eigenclass endpoint | Arithmetic roots (4,6,1/3) | Sum=31/3; pair sum=82/3; product=8; coefficients (1,−31/3,82/3,−8) | Positive cohomological formula gives the intended polynomial in all consumers |
| Inverse-correspondence negative control in §0.2 | Inverted normalized Satake roots, same q=2 | Arithmetic roots (1,2/3,12); sum=41/3; pair sum=62/3; product=8 | Opposite correspondence gives a different polynomial; no Frobenius convention is changed |
| Finite coefficient powers in §§0.2–0.3 | Previous two coefficient tuples over ℤ₅ | Modulo 5 both (1,3,4,2); modulo 25 respectively (1,23,19,17) and (1,3,4,17); 3⁻¹=17 mod 25 | Added both reductions; a residue-only test would miss F01 |
| §3.3 positive Iwahori square | Tree valencies 3 and 8 | Positive edge operator has respectively q²=4 and 49 terminal terms; q⁻²V_x² equals the normalized squared operator by positive coset composition | V_x explicitly uses the positive cohomological formula |
| §3.4 oriented edge and its dual cochain | e=v₁→v₀; e⁺ terminal on a forward length-three path; f=δ_{e⁺} | (F^*f)(e)=1; inverse squared correspondence gives 0, for q=2 and 7 | Added an oriented non-spherical direction test |
| §3.4 chain boundary and augmentation | q=2 and q=7, all vertices in the relevant tree ball | Every coefficient of ∂F−F∂ is 0; vertex augmentations (1,1) in both cases; edge augmentations 4 and 49 | Identified precomposition on Hom with p₁-trace/p₂-pullback; res₀−res₁ is retained |
| §§3.3–3.5 normalized augmentation and selected localization | q=7, coefficients ℤ/9 and 𝔽₉ | q²=4 mod 9; q⁻²=7 mod 9; q²q⁻²=1; mod 3 augmentation is 1, while i²−1=2−1=1 on the selected edge | Normalization and localization proof survive the direction repair |
| §4.1 homological projector and scalar compatibility | Cohomological d-eigenvalue ζ₅²; class of diag(d,1,1) is d³ | Standard homological d-eigenvalue ζ₅⁻²; adjoint scalar d has ζ₅²; scalar d³ has ζ₅, not ζ₅⁻¹ | Added Check and explicit transported S_N-action |

### Computed pass through all numbered targets and conventions

Each row covers the named target, its equivalent API assertions and the Checks using that same object. Independent direction and normalization assertions within §§0.2, 0.5, 1.4, 2.2, 3.3–3.4 and 4.1 are separated above. The examples of Layers 0–5 repeat the projector, dimension, coefficient-sequence, Gram, degree-reflection and nilpotent-annihilator computations below. Conditional theorems retain their precise source and supplier hypotheses; the finite algebra models below are tests of their formulas and necessary distinctions, not assertions that these models are arithmetic realizations.

| Statement | Instances tried | Values computed on the compared sides | Result and change |
| --- | --- | --- | --- |
| Coefficient domain and rank conventions | n=0,1,2; p=2,3; zero ring and equal-characteristic ring | n<2 and p≤n fail the standing inequalities; n=2,p=3 has weights {0,1}=[0,p−2]; zero/equal-characteristic rings are not integer rings of finite extensions of ℚₚ | Retained the domain, including the allowed p=3 case |
| Norm, denominator and coefficient-exponent domain | q=0,1,2,7; a=0,1; p=2,3,5 | An actual residue norm is at least 2; q=1 would give q⁻²−1=0 but no residue field; q=0 has no inverse; O/ϖ⁰=0, O/ϖ=k; 2⁻¹=2 mod 3 and 3⁻¹=17 mod 25 | x∤p, a≥1 and p>n exclude the invalid inputs; every used denominator is a unit |
| Dimension conventions | PGL₂ over ℚ, imaginary quadratic and real quadratic fields; PGL₃/ℚ; PGL₂/CM quartic | (d,q₀,ℓ₀)=(2,1,0),(3,1,1),(4,2,0),(5,2,1),(6,2,2); 2q₀+ℓ₀=d in each case | No change |
| Arithmetic Frobenius and Euler normalization | Rank two, trace 3, determinant 7 | Arithmetic polynomial X²−3X+7; inverse Frobenius X²−(3/7)X+1/7; normalized product 1 gives determinant 7 | Retained arithmetic Frobenius and the shift s−1/2 |
| Dual and degree conventions | χ(g)=ζ₃; homological degrees 1,2 with q₀=ℓ₀=1 | Coefficient product with χ⁻¹ is 1; reflection gives cohomological degrees 1,0, so the top term is H¹∨ | No change; repair preserves both conventions |
| §0.1 character local system and its API | Trivial ψ; order-three θ; tuples (θ,θ⁻¹) and (θ,1) | Scalar evaluations 1 and θ; ζ₃ mod ϖ=1; dual character θ⁻¹; trivial system has rank one | Product-one and residual/dual laws retained |
| §0.2 Hecke and diamond definitions | Identity element; Q=∅; n=3 scalar representative c | Identity operator 1; empty deck group 1; determinant quotient changes by c²c⁻²=1; diag(u,1,1) has class u⁻² | Direction repaired above; central operator T_n remains 1 |
| §0.3 simultaneous image and finiteness interface | A=k[ε]/ε² on k and A; O[t]/t(t−1); empty cohomology | ε acts as 0 and nonzero respectively; t maps to (0,1), 1−t to (1,0), their product 0 and sum 1; zero-module image is the zero ring with no maximal ideals | All-level image retained; finiteness still uses its declared supplier gap |
| §0.3 coefficient-power Check | O --ϖ→ O in degrees 0,1; level-one PSL₂(ℤ), p>3 | Integral cohomology (0,k); modulo ϖᵃ both kernel and cokernel have length 1; level-one H⁰=O/ϖᵃ, higher groups 0, T_λ=1+λ, simultaneous image O | Coefficient powers and the Eisenstein example remain consistent |
| §0.4 selected ideal and factorial projector | V=diag(2,4) over 𝔽₇, Q(X)=X−4; add V=1; repeated root 1 | Q(V)=diag(5,0), factorial limit diag(1,0); Q(1)=4 gives limit 1 on the extra line; repeated-root value 0 gives limit 0 | Both simple-root hypothesis and selected-factor projection retained |
| §0.5 residual coefficients and finite duality | C₃ in characteristic 3; Eisenstein modular example | H¹(C₃,k)=H₁(C₃,k)=k; modular H⁰ and H₀ have dimension 1; H²_c has dimension 1 whereas H² has dimension 0 | Boundary-independent universal coefficient duality retained; adjunction clarified above |
| §0.6 minimal-level residual modularity | k in degree q₀+1; reducible 1⊕ε̄; empty ramification support | Total residual dimension 1, degree-q₀ dimension 0; reducible representation has two invariant lines; empty support gives hyperspecial level | No characteristic-zero or lowest-degree seed inserted |
| §1.1 standing local and oddness conditions | n=4,p=5; balanced involution (2,2) and identity (4,0); rank-two regular inertia | Trace of identity 4=−1; adjoint invariant dimensions 7 and 15; rank of J₂(1)−1 is 1 | Balancedness and regular/trivial ramification distinction retained |
| §1.2 Fontaine–Laffaille and regular local rings | n=2, imaginary quadratic field, one degree-two p-place, R=∅; one regular tame factor | Relative p-dimension 3+2=5, Krull dimension 6; a regular tame factor contributes 3 relative variables | Fixed determinant and all labelled weights retained |
| §1.2 literal unipotent quotient | O=ℤ₃, q=7, a²=6a=0, Φ=diag(1+X,7/(1+X)), Σ=diag(1+a,1−a) | det Φ=7, det Σ=1, tr Σ=2, Σ⁷=Σ; tr(Φ(Σ−1)) has nonzero reduction 2aX+… and is killed by 6 | Literal quotient remains distinct from its flat closure |
| §1.3 local comparison and components | Smooth n=2, degree-two p-place, card(T)=1; nonscalar residual Frobenius with two character assignments | Dimension 1+3+2=6; trivial/character reductions coincide; two distinct eigenline assignments give two generic components | Trivial residual hypothesis and completed-product gap retained |
| §1.4 two-scalar problem | Φ=diag(4,J₂(3)) over 𝔽₇; rank two over 𝔽₅[ε]/ε² | det Φ=4·9=1; trace-zero centralizer dimension 2, dim L=3; (1+ε)(1−ε)=1, versus ε=0 if the complement is forced unramified | Generalized complementary block and two scalar inertia parameters remain correct |
| §1.4 augmentation and coordinate API | n=2 and n=3; Δ=C₅; θ=1 | b=−1 in rank two; in rank three 3·2=1 mod 5; θ=1 forces η^(n−1)=1 and η=1 in the pro-p group | Augmentation remains precisely unramifiedness; action direction clarified |
| §1.5 framing, relative presentation and Euler count | n=2, card(T)=1,2,0; zero trace-zero adjoint | Framing counts 3,7,−1; the empty case is excluded; for the zero adjoint every dimension in the relative Euler identity is 0 | Nonempty framing and exact annihilator conditions retained |
| §1.6 auxiliary count and numerical coincidence | Imaginary quadratic, n=2, card(T)=1, q=3; real quadratic, n=2 | g=0, j=3, dim R_loc=6, dim R_∞=1+3+3−1=6; real-quadratic g=q+card(T)−3; formal q=0 in the first tuple gives g=−3 | Counts and the requirement to establish nonnegativity retained; no negative number indexes variables |
| §1.7 type-S point and image order | O⟦X⟧→O′, X↦0; nontrivial unipotent inertia | Kernel (X), image O, fraction field E; a Jordan unipotent has characteristic polynomial (X−1)² but inertia is not the identity | Type S and unramifiedness remain distinct; quotient is the image order |
| §1.8 GL₁ specialization | ℚ, real quadratic, imaginary quadratic; class-group p-part C₃ | Unit-rank defects 0,1,0; O[C₃] has rank 3; residual relation (t−1)³=0 | Separate GL₁ defect and supplied class-field-theory interpretation retained |
| §2.1 residual and integral Galois hypotheses | n=2,q=2,p=7; rescaled operators; rank-three example above | Eisenstein roots (1,2) have trace 3 and determinant 2; wrong rank-two rescaling gives determinant 2⁻¹=4 in 𝔽₇; rank-three positive coefficients are (1,−31/3,82/3,−8) | Hypothesis and positive unnormalized polynomial retained |
| §2.2 strengthened local compatibility | Δ=C₅; A=k[ε]/ε²; top k and intermediate A | Correct diamond scalar ζ₅, opposite scalar ζ₅⁻¹; ε·1=0 on k and ε·1=ε≠0 on A; for a degree-p cover cor∘res=p=0 in k | All-level finite-coefficient equality retained; inverse homology character made explicit |
| §2.3 range and boundary hypothesis | ℓ₀=0; imaginary quadratic PGL₂; PGL₃/ℚ | Allowed degrees {q₀}, {1,2}, {2,3}; in the last case excluded degrees {0,1,4,5}; Eisenstein H⁰ has dimension 1 outside the desired range | Hypothesis is not inferred from Galois existence |
| §2.4 Taylor–Wiles comparison | Q=∅; two old lines with eigenvalues 2,4 over 𝔽₇ | Empty projector and pullback are 1; two old lines have dimension 2; selected projector diag(1,0) has image dimension 1 | Comparison retains the selected factor; unprojected pullback is insufficient |
| §2.5 conjunction of hypotheses | Q=∅; level-one Eisenstein ideal | Auxiliary clauses have empty conjunction 1 and B^tw=1; H⁰=k has dimension 1, so B^van(a)=0 at that ideal | Full package remains a hypothesis; range is not silently supplied |
| §2.6 dévissage | O --ϖ→ O; coefficients O, k and O/ϖ² | Integral H⁰=0, residual H⁰=k; modulo ϖ² kernel ϖ(O/ϖ²) and cokernel k both have length 1 | All-degree naturality, rather than an isolated-degree assertion, is retained |
| §2.7 deformation-to-Hecke surjection | O[C₅]→O[C₅], deck d sent to the square of inertia generator u; scalar-only comparison O→O[C₅] | [d³] maps to [u⁶]=[u], evaluating to ζ₅ at u↦ζ₅; the scalar-only image O misses [u] in the rank-five group ring | Clause (6) remains necessary for the claimed scalar-linear surjection |
| §2.8 small-rank range deduction | PGL₃/ℚ and PGL₂/CM quartic; real quadratic PGL₂ | (d,range)=(5,[2,3]),(6,[2,4]); complements {0,1,4,5} and {0,1,5,6}; real-quadratic middle degree 2 | Independent total-range, duality and localized-H¹ contracts retained |
| §3.1 determinant kernel and invariants | Γ=diag(2,1)PSL₂(ℤ)diag(2,1)⁻¹; C₂ acting by swap | Determinant kernel index 1; integral intersection index 3 and conjugate matrix (0,2;−1/2,2) is nonintegral; averaging (1,0) over 𝔽₃ gives (2,2); H¹(C₂,𝔽₂) has dimension 1 | Rational determinant kernel and odd-p descent retained |
| §3.2 adjacent-vertex amalgam and coefficients | ℚ and a=1; nonprincipal x=(7,3+√−5) | Both edge indices q+1=8; a²+5b²=7 has no integral solution; diag(1,ϖ) moves distance 1, diag(ϖ,ϖ⁻¹) distance 2 | Actual stabilizers, component maps and coefficient intertwiners retained |
| §3.3 squared operator | q=7 over ℤ/9; roots i,−i over 𝔽₉ | Edge degree 49=4; normalized edge degree 1; amalgam scalar 7⁻²=7 mod 9 and 1 mod 3; i²−1=1 in 𝔽₉ | Positive cohomological label made explicit; normalization unchanged |
| §3.4 Lyndon comparison | q=2,7; vertex values f(v₀)=1,f(v₁)=0; selected α=i | Boundary defects 0 at every vertex; augmentations 1,1; res₀−res₁ gives 1 rather than −1; selected squared difference i²−1=1 while amalgam difference is 0 mod 3 | Precomposition clarified and oriented Check added |
| §3.5 rank-two no-new-level theorem | p=7,q=29, α=2,β=4; repeated roots 1,1 | Gram determinant 4−6²=3 mod 7; α²−1=3; repeated-root determinant and squared difference both 0 | Both localizations remain necessary; degeneracy maps agree with ALS.3.14 |
| §3.6 GLₙ smooth-tower comparison | U=ℤₚ, trivial k and C_cts(U,k) | Trivial module has (dim H⁰,dim H¹)=(1,1); regular function module has (1,0); invariants of the trivial group have H¹=0 | Continuous derived descent and principal-series block hypotheses retained |
| §3.7 conditional PGLₙ comparison | Q={x,y}; central Cₚ; roots 1,2,4 over 𝔽₇ | Four successive-level conditions; H¹(Cₚ,k)=k versus H¹(1,k)=0; root product 1 and Q(1)=3≠0; repeated roots give Q(1)=0 | No GLₙ/PGLₙ cohomology identification inserted |
| §4.1 minimal complexes and image actions | (q₀,ℓ₀)=(1,1); an Ext¹ ghost; Δ=C₅ | Residual ranks lie in degrees 1,2; Ext¹_O(k,k)=k, a nonzero off-diagonal t has H*(t)=0 and t²=0; transported scalar eigenvalue ζ₅² versus standard homological ζ₅⁻² | Adjoint projector and scalar action clarified; no derived image factorization asserted |
| §4.2 two finite data and reflected degrees | q₀=ℓ₀=1; presentation x versus x+z² | T⁰=H²∨, T¹=H¹∨; presentation difference z²≠0 mod ϖ before augmentation and 0 after z=0 | Reflection and compatibility before augmentation retained |
| §4.3 residual and top-degree comparisons | O --ϖ→ O in degrees 0,1; O in degree q₀ | Top cokernel k reduces to k; degree-zero kernel 0 becomes k after reduction; (E/O)[ϖ]=k and its dual has residue dimension 1 | Only the justified top-cokernel and lowest-degree comparisons are used |
| §4.4 finite framing-quotient actions and nonzero seed | I=(z²,ϖz), coefficient modulus ϖ²; O⟦z⟧ --z→ O⟦z⟧ | Coefficient module O/ϖ²⊕kz has length 3; integral kernel 0 becomes O after z=0; a one-dimensional nonzero minimal residual term cannot be an exact minimal stalk | Geometric quotient actions retained; §4.1 now identifies their transported scalars |
| §5.1 patched concentration and depth | S=O⟦x,y⟧, complex S --x→ S in degrees 0,1; R=S/(x) | dim S=3; only H¹=R, dim/depth_R R=2; amplitude=codimension=1; augmentation gives O≠0 | Exact concentration/depth formula and nonzero seed retained |
| §5.2 near faithfulness on the χ side | A=k[ε]/ε², M=k; quotient by ε | ann M=(ε), (ann M)²=0, support has one point; quotient module is k with annihilator 0 | Near faithfulness remains weaker than faithfulness |
| §5.3 support transfer and coefficient regularity | A=O⟦x,y⟧/(xy), M=A/(x) | ϖ is injective on M, but support of M/ϖ is only V(x), missing V(y); for M=A both components occur | Regularity alone does not supply full special support; hypotheses retained |
| §5.4 arithmetic near faithfulness | A=O[ε]/ε², H=O | Action kernel (ε) is nonzero, its square is 0; A_red=O and image ring O has the same reduced spectrum | Conditional near faithfulness conclusion, rather than integral R=T, retained |
| §5.5 smooth R=T and freeness | Free modules R¹ and R⁰ over a nonzero regular local R | Annihilators 0 and R respectively; positive-rank free action is injective, zero-module action is not | Nonzero seed and regular-source hypothesis retained |
| §5.6 cuspidal recognition | Speh length 2 in rank 4; q=1 mod p | Reduced roots (a,a,b,b), multiplicities 2 and 2; a simple-root detector requires multiplicity 1 and therefore excludes this pattern | Boundary/residual alternative and big-image inputs retained |
| §5.7 initial characteristic-zero versus residual branches | Lattice O²; residual k in degree q₀+1 | Reduction of O² has dimension 2; residual total dimension 1, degree-q₀ dimension 0 | The residual branch still asserts total support only |
| §5.8 support-to-eigenclass deduction | A=O[ε]/ε²→O′, ε↦0; H=O; rank-three polynomial | Image order O, κ=E, dim_κ(H⊗κ)=1; ε maps to 0; positive polynomial coefficients (1,−31/3,82/3,−8) | Reduced-point argument and positive arithmetic polynomial agree after repair |
| §5.9 imaginary-quadratic specialization | F=ℚ(i), n=2, q=3, R=∅, p=5 and 7 | d=3,q₀=ℓ₀=1; card(T)=2 and 1; g=1 and 0 respectively | Fontaine–Laffaille/split-ramification specialization and remaining conditional clauses retained |
| §5.10 defect-zero specialization | Real quadratic F, n=2, card(T)=1, q=3 | ℓ₀=0,q₀=2,g=1,j=3; dim R_∞=7=dim S_∞^□; unframed scalar dimension 4 | Framed dimension comparison retained |

### Supplier, source and ownership checks

All cross-roadmap references were resolved afresh using the supplied roadmap interface; the cited sections were located in those returned main/head copies. The substantive direction comparison used the complete statements of ALS.3.5, ALS.3.6, ALS.5a.4 and ALS.3.14, and IntegralHeckeAndGaloisDeterminants §3a.1. The remaining contracts and their domain boundaries were checked at the following locators. No stronger statement was inferred merely because a section exists.

| Supplier | Locators consumed and boundary retained |
| --- | --- |
| ArithmeticLocallySymmetricSpaces | ALS.0.7–0.10, ALS.1.1–1.8, ALS.2.2–2.4, ALS.3.3–3.9/3.14, ALS.4.1/4.9–4.12, ALS.5a.2–5a.6, ALS.5b.4–5b.6/5b.8, ALS.6.1–6.3; localized orbifold range/perfectness remain explicit gaps |
| CompletedCohomologyPartII | §§0.1–0.3, 1.1, 6.2; the tame-place extension remains a gap |
| IntegralHeckeAndGaloisDeterminants | §§1.2–1.3, 2.1–2.3, 3a.1, 3b.1–3b.2; simultaneous orbifold finiteness remains a gap |
| LocalGaloisDeformationRings | §§F.1–F.3, 1.6/1.10/1.13, 2.8/2.10/2.15/2.16/2.21/2.23; semisimple and unramified-complement restrictions are not conflated |
| GlobalGaloisDeformations | §§3.3–3.7, 4.3–4.4, 5.1/5.5–5.8, 7.2–7.4; rank-n selection remains its named gap |
| ArithmeticGaloisRepresentations | §§7.2/7.4/7.7–7.12; the exact big-image detector remains its named gap |
| ArithmeticGaloisDuality | R02.5.1–5.2, R02.6.1–6.2; balanced archimedean count and exact annihilator conditions retained |
| DeformationAndDerivedPatchingAlgebra | §§1.12, 3.1–3.4/3.10, 4.6, 6.1–6.8, 7.3/7.6, 8.6, 9.1–9.2; literal-ring products and paired actions remain gaps |
| ReductiveGroupsPartII | RG2.2.4, adjacent-vertex SL₂/PSL₂ amalgam |
| FreeGroupsAndLimitGroups | §§4.5, 4.8, segment pushout and tree-action structure theorem |
| ModularCurvesPartII | §§15.2, 15.4, 15.8; only its principal-level rational case is imported |
| SmoothRepresentationsOfLocalGroups | SR.5.3, distinct-eigenvalue block and derived hyperspecial–parahoric comparison, on GLₙ |
| AutomorphicFormsOnReductiveGroups | Layers 4–6, especially §§5.3, 5.5; defect, tempered range and purity |
| AutomorphicSpectralTheory | §§4.14a, 5.12–5.14; proper-support boundary/residual alternative remains a gap |
| KTheoryLowDegrees | §11.6; character factorization is kept distinct from localized H¹ vanishing |
| PadicHodgeTheory | §§6.1–6.2; contravariant comparison and its coefficient/weight range |
| AdelicAlgebraicGroups | §4.2 and Layer AA.5, especially §5.1; strong approximation and GL₁ logarithmic tori |
| ClassFieldTheory; Chebotarev | Layers 7/11; Layer 10 respectively, including arithmetic reciprocity and finite avoidance |
| PotentialAutomorphyInfrastructure | Layers 3–5; CM lifting ownership remains distinct from this conditional number-field variant |
| ModularityAndLanglandsExtensions | §§2.7–2.8; its GLₙ hypothesis and endpoint are imported by name, with the kept Res PGLₙ variant distinguished |

The object searches used the supplied `roadmaps grep` interface across main and indexed open roadmap heads, and read the named suppliers with `roadmaps show`. The positive correspondence and its adjunction are already owned by ArithmeticLocallySymmetricSpaces; no generic Hecke construction is added here. The arithmetic component assembly remains owned by §§3.2–3.4, as distinguished from the rational principal-level target of ModularCurvesPartII. No ownership or merge-order move is required. Ownership against other board pull-request heads whose files were not supplied was not checked; no absence is asserted there. Main-branch shape examples read were `TauCetiRoadmap/ComplexTori/README.md` and `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md`.

All three manifest sources remain certified under their existing keys. Only the cached legal texts were used; no additional source or missing-reference request was needed. The direction and duality passages opened were CG18 line 4588, CG18 line 4628, CG18 line 4650, CG18 line 4684, CG18 line 4764, CG18 line 4782, CG18 line 4843, CG18 line 4875 and CG18 line 5111; the distinct-root comparisons were also read at CGH20 line 169, CGH20 line 210 and KT17 line 1871/KT17 line 1893. No new claim about published/preprint cross-numbering or a published correction is made.

All eleven top-level supplier gaps have the same slugs, suppliers, sections and needs as before; each slug still occurs under Exact supplier contracts. F01 concerns a supplied convention, so it needs no new gap. `design/plan.json`, `metadata.toml` and `sources.toml` were not edited.

### Acceptance file and pinned API audit

Pins read from the supplied content manifest: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The native declarations named in Exact supplier contracts were opened at those pins:

| Declaration | Pinned locator and content relevant to the audit |
| --- | --- |
| `Field.absoluteGaloisGroup` | `Mathlib/FieldTheory/AbsoluteGaloisGroup.lean:42`; algebraic automorphisms of the algebraic closure, with the Krull topology supplied in the same file |
| `Representation` | `Mathlib/RepresentationTheory/Basic.lean:48`; body `G →* V →ₗ[k] V`, with no continuity field |
| `IsHeckeTriple`, `HeckeCoset`, `HeckeRing` | `Mathlib/NumberTheory/HeckeRing/Defs.lean:75`, :157, :189; commensurability, quotient and finitely supported coefficient carriers, rather than arithmetic cohomology |
| `Module.support_eq_zeroLocus` | `Mathlib/RingTheory/Support.lean:216`; finite-module support/annihilator comparison |
| `Monoid.PushoutI` | `Mathlib/GroupTheory/PushoutI.lean:60`; native amalgamation quotient |
| `groupCohomology.coindIso` | `Mathlib/RepresentationTheory/Homological/GroupCohomology/Shapiro.lean:58`; Shapiro without a finite-index assumption |
| `TauCeti.MonoidAlgebra.augmentation` | `TauCeti/Algebra/MonoidAlgebra/Exactness.lean:115`; singleton law at :120 gives [g]↦1, [g]−1↦0, and 2[g]+3[h]↦5 |

Object searches at the pins found generic Hecke, matrix, representation, group-cohomology, support and complex carriers, but no arithmetic quotient/coefficient/tower carriers or the local/global arithmetic deformation objects required by the headline signatures. The finite-field complex principal series at `TauCeti/RepresentationTheory/CharacterTable/GL2/PrincipalSeries/Basic.lean:245` is not the smooth local block required here. The missing-carrier explanations in `Suggested.lean` continue to apply individually to the corrected local comparison, numerical coincidence, three level comparisons, paired arithmetic patching, near faithfulness, smooth R=T, cuspidal recognition, support deduction and two specializations. F01 adds no statable headline.

`Suggested.lean` remains unchanged: one `import Mathlib`, its module docstring and namespace, and no declarations. There are zero definitions, instances, theorems, admitted examples, sorry'd data or `set_option` commands, and no one-tactic padding candidates. The mechanical signature audit enumerated every declaration, producing an empty list of `#check @name` commands. A scratch copy with that complete empty appended list elaborated once. There were no elaborated binders to compare or repair, and no Lean names added, deleted or renamed.

### Exact validation outcomes

- Prescribed package elaboration, `lake env lean` on `packages/AutomorphyLiftingBeyondTaylorWiles/Suggested.lean` from the supplied pinned content environment: exit 0, no diagnostics or warnings. There were no TauCeti imports requiring a targeted module build.
- Mechanical declaration/signature audit copy, elaborated separately after the package invocation finished: exit 0, no diagnostics or warnings; zero declarations and zero signature discrepancies.
- Prescribed movable dependency check: exit 0, with the complete output below. No UPWARD, CYCLE or moved line occurred.

```text
depcheck: 52 roadmaps, 600 edges, 0 problem(s)
```

- Citation resolver: exit 0; no unresolved cross-roadmap citations and no unresolved Lean names. The final invocation reported main `ce9dea7` and 363 open roadmap pull requests in the index of 2026-10-25T15:10:46Z. Its library-name phase reported that pinned Lake packages were unavailable to that service; the separate direct pin audit above checked those declarations locally.
- Exact arithmetic and finite direction computations: exit 0; all assertions passed, including both tree boundary comparisons, cyclic adjunction, noncommutative composition, the two rational cubics, both finite reductions, normalization modulo 9 and the C₅ coordinate.
- TOML/JSON parsing and gap correspondence: both TOML files parsed; eleven JSON gaps were present, each with its README contract; no edits to these files.
- Whitespace/diff check: `git diff --check` exited 0. The only package content change is `README.md`, together with this required report.
- Reported notation failure `tex=6`: six formulas in README §§0.2, 1.4, 2.2 and 3.4 were converted to ASCII code spans (projection subscript, translation composition, cube translation, both character powers and edge indicator). The installed text-scanner suite exited 0 with `latex=0`, `tex=0` and every other scanner count 0. An exact reverse-substitution comparison confirmed that all other README bytes were preserved; the mathematical statements and computed values are unchanged. The prescribed package elaboration and movable dependency check were repeated after this notation repair: exit 0 without Lean diagnostics, and the same dependency output shown above. The unchanged acceptance file still has zero declarations, so no signature or binder changes arise.

### Maintainer consequences

The polynomial and all headline conclusions retain their scope and hypotheses. Consumers of the positive cohomological Hecke operators now receive the supplier's convention. Consumers of homology must preserve both the adjoint ideal/projector and the transported scalar action specified in §4.1; taking the same-labelled homology diamond would invert the deformation coordinate. The eleven pre-existing supplier gaps remain prerequisites. No external roadmap, merge-order file, pull-request text, library pin or tool was changed, and no commit was made.
