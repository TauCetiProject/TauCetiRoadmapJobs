# Repair report: AutomorphyLiftingBeyondTaylorWiles

## F01 (P1) — applied

README §§3.1–3.5: integral intersection → determinant kernel Γ∩PSL₂(F), with actual component lattices and finite determinant quotients. Added the conjugated-level Check: γAγ⁻¹=(0,2;−1/2,2), integral intersection index 3, repaired kernel index 1. CG18 line 4823 contains the incorrect integral identification; ALS.0.7 explicitly permits conjugating component stabilizers.

## F02 (P2) — applied

README §§3.2–3.5: principal-prime two-copy presentation → actual adjacent stabilizers at components [a] and [at_x], their edge inclusions, coefficient intertwiners and component-sum Lyndon comparison, oriented for the stated squared operator. Squared operators use local adelic elements. Principal formulas are Checks; the nonprincipal norm-7 ideal is retained. CG18 line 4836 announces, but does not specify, this extension.

## F03 (P1) — applied

Supplier contract, §§1.4, 1.6, 2.2 and dependencies: §2.23 identification → §2.16 in its semisimple domain plus gap:nonsemisimple-two-scalar-taylor-wiles. README and plan specify identical representability, scalar-inertia, tangent and augmentation requirements. Jordan-complement and dual-number Checks retain tangent contribution 1. CG18 line 4454 and line 4457 allow the broader datum.

## F04 (P1) — applied

Supplier contracts, §§3.6–3.7 and dependencies: nonexistent ALS tower assertion → CompletedCohomologyPartII §6.2 plus gap:tame-place-fixed-exponent-descent, identically recorded in the plan. The contract covers GLₙ/PGLₙ, principal tame levels, continuous derived invariants, arithmetic groupoids, coefficients, Hecke actions and localization. ALS.6.2 remains the finite-cover input. Added trivial-module and regular-point-tower Checks.

## F05 (P2) — applied

README §§2.2, 2.5, 2.7, 4.4 and downstream qualification: top-cover equality → every intermediate level, degree and coefficient exponent, naturally extended to finite O-modules. Equality now holds in the defining simultaneous image. Added the square-zero module pair; ε acts as 0 on k and nonzero on k[ε]/ε², so top-level equality alone fails.

## F06 (P2) — applied

README §4.1: derived action of the cohomological image ring → abstract correspondence endomorphisms for the projector and compatible image actions on cohomology and quotient models. Added the Ext¹ ghost Check. DDPA §8.6 explicitly exports cohomology actions; ALS.3.3 does not establish factorization through their image. No derived vanishing of the ghost is claimed.

## F07 (P2) — applied

README §5.7: shared lowest-degree conclusion → separate degree-q₀ support in branch (a), total residual support in branch (b). Added the degree-q₀+1 countermodel. Section 5.8 now explicitly invokes §§4.4 and 5.1 under the full patching hypotheses to obtain lowest-degree support. CG18 line 3529 requires only an initial mod-p class.

## F08 (P1) — applied

Plan: deleted the supplier-less res-pgl-distinct-eigenvalue-comparison gap; §3.7 retains local ownership. README §§2.4–2.5, 3.7, 5.5, downstream consumers and Lean docstring retain the successive-level block hypothesis and strengthened inertia–diamond clause. CGH20 line 230 supplies no derivation of those additions. Added the two-prime Check listing all four block conditions.

## F09 (P3) — applied

README §§1.2, 4.2, 5.9–5.10: corrected the regular-unipotent citations to §§2.8/2.21, tested framed presentations before augmentation, and compared R∞ with S∞^□. At q=3 the framed dimensions are 7, versus unframed 4. Theorem locators now use CG18 line 192, line 225 and line 3324, pp.301–302,379; line 3497 remains for Theorem 5.16.

## Mathematical verification

The table records actual computations and inference tests, not proofs inferred from elaboration. Rows for conditional arithmetic theorems test their formulas, hypotheses and algebraic deductions. Finite-module countermodels diagnose implications; they are not advertised as constructed arithmetic Galois representations. Each numbered target is included, with separate rows for the additional constructions and conventions changed here.

| Statement | Instances tried | Values on the compared sides | Result | Change |
|---|---|---|---|---|
| Coefficient and rank conventions | n=0,1; p=2; zero ring; equal-characteristic DVR; exponent 0 | Main domain n≥2,p>n excludes the first ranks and p=2; O has characteristic 0 and O/ϖ⁰=0, whereas permitted coefficients have a≥1 | No assertion on these excluded inputs; rank one has its separate §1.8 | None |
| Dimension convention | PGL₂ over ℚ, imaginary quadratic, real quadratic; PGL₃/ℚ; PGL₂/CM quartic | (d,q₀,ℓ₀)=(2,1,0),(3,1,1),(4,2,0),(5,2,1),(6,2,2); 2q₀+ℓ₀ equals d in each case | Consistent | None |
| Arithmetic Frobenius and L-shift | Rank two, trace 3 and determinant 7 | det(1−r(F)T)=1−3T+7T²; inverse Frobenius gives 1−(3/7)T+(1/7)T²; normalized Satake determinant 1 becomes 7 | Arithmetic direction and s−1/2 shift distinguish inversion | None |
| Oddness convention | Identity in rank four over 𝔽₅; balanced involution of type (2,2) | Both trace −1 and trace 0 are possible respectively; invariant adjoint dimensions 15 versus 7 | Trace alone does not imply balanced oddness | None |
| Dual character and degree direction | χ(g)=ζₚ; homological degrees 1,2 | Pairing scalar ζₚζₚ⁻¹=1, versus ζₚ²≠1; reflected patching degrees 1,0 | Inverse character and reflection retained | None |
| §0.1 Iwahori-character descent | Tuples (θ,θ⁻¹) and (θ,1), θ of order 3 | On the scalar diagonal their values are 1 and θ respectively | Product-one condition excludes the second model | None |
| §0.1 reduction and pullback | χ(g)=ζₚ; trivial χ; level map away from R | Reduction ζₚ↦1; trivial character gives O; pullback keeps scalar ζₚ | Local system and coefficient API agree | None |
| §0.2 parahoric quotient | n=3, scalar multiplication by c and diag(u,1,1) | det(B)a⁻² changes by c²c⁻²=1; diagonal element maps to u⁻² | Scalar invariance and nontrivial diamond coordinate both retained | None |
| §0.2 central operators and Q=∅ | diag(ϖ,…,ϖ), identity correspondence; empty prime set | PGL class and central operator equal 1; Δ∅=1 and K∅=L∅ | Empty and central cases agree | None |
| §§0.2,2.1 Hecke normalization | n=2, norm 2 over 𝔽₇ | Unnormalized constant coefficient 2; multiplying T_i by 2⁻ⁱ without changing the exponent gives 2⁻¹=4 | Wrong normalization detected away from norm 1 | None |
| §0.3 simultaneous image | T=k[ε]/ε² on k and T | ε acts by 0 and by the nonzero map 1↦ε; ε²=0 on both | Top-cover action cannot determine simultaneous image | Used also in §2.2 |
| §0.3 all coefficient exponents | C=[O→O] with differential ϖ | Integral cohomology (0,k); modulo ϖᵃ, kernel and cokernel each have length 1 for every a≥1 | Integral action alone omits a coefficient action | None |
| §0.3 local-factor decomposition | O[t]/(t(t−1)) | Evaluation identifies it with O×O; t=(0,1), 1−t=(1,0), their product 0 and sum 1 | Finite-algebra decomposition has the right summands | None |
| §0.3 level-one control | F=ℚ,n=2,p>3 | PSL₂(ℤ)=C₂*C₃ has H⁰=k and higher Hⁱ=0; T_λ on H⁰ is 1+λ; image O | Eisenstein factor is retained, not declared non-Eisenstein | None |
| §0.4 factorial projector | V=diag(2,4) over 𝔽₇; Q(X)=X−4 | Q(V)=diag(5,0); for large factorial powers this is diag(1,0) | Chosen root survives, other root dies | None |
| §0.4 additional local-factor projection | Extra V=1 factor; repeated root 1 | Q(1)=−3 is a unit in the first test, so e keeps an unwanted line; for repeated polynomial (X−1)², Q(1)=0 and the chosen line dies | The selected-factor projection and simple-root hypothesis are both needed | None |
| §0.5 residual independence and duality | χ(g)=ζₚ and χ=1; nonzero boundary at level one | Both reduce to k; dual uses ζₚ⁻¹; H⁰=k=H₀ while H²_c=k≠0=H² | Coefficient duality does not require boundary vanishing | None |
| §0.5 bad stabilizers | C₃ over 𝔽₃ inside the modular group | H¹(C₃,k)=k=H₁(C₃,k), and H²(C₃,k)=k | Degreewise duality retains stabilizer cohomology | None |
| §0.6 minimal residual modularity | Reducible 1⊕ε̄; R=∅; torsion-only class | Reducible datum fails absolute irreducibility; empty R gives hyperspecial level; a torsion class contributes residual dimension 1 without an O-eigenline | Definition concerns residual support | Its later use corrected in §5.7 |
| §0.6 coefficient extension | One-dimensional eigenspace and finite k′/k | k⊗k k′=k′, with dimension 1 and unchanged Hecke scalars | Coefficient extension differs from unasserted cyclic-field-base-change stability | None |
| §1.1 ramification partition | R=∅; a single residual unipotent block; nontrivial unramified Frobenius at an avoidance place | T=Sₚ≠∅; rank of (1,1;0,1)−1 is 1; a nontrivial residual representation is not the trivial datum | R_reg and R_triv remain distinct | None |
| §1.2 literal local quotient | O=ℤ₃,q=7, a²=6a=0, Φ=diag(1+X,7/(1+X)), Σ=diag(1+a,1−a) | det Φ=7, det Σ=1, tr Σ=2, Σ⁷=Σ; tr(Φ(Σ−1))=a((1+X)−7/(1+X))≠0 and is killed by 6 | Coefficient flatness would be false | None |
| §1.2 regular-unipotent factor | n=2, residual inertia a nontrivial Jordan block | Fixed-determinant minimal ring has 3 smooth variables; the trivial residual datum of §2.26 has inertia rank 0 instead of 1 | The two loci differ | Citation corrected |
| §1.3 completed product dimensions | n=2, imaginary quadratic, one p-place, R=∅ | dim R_loc=1+3+2=6; both character sides coincide and have one component | Dimension adds relative dimensions, retaining one coefficient dimension | None |
| §1.3 necessity of trivial residual data | Distinct residual Frobenius eigenlines and distinct reciprocal inertia characters | Two possible assignments of the inertia characters to the Frobenius lines give two components, rather than one | Existing negative control excludes this datum | None |
| §1.4 local condition at nonsemisimple Frobenius | Φ=diag(4,J₂(3)) over 𝔽₇ | det=4·9=1; selected eigenspace dimension 1; complementary Jordan block has size 2 | Simple line does not force semisimplicity | Supplier gap added |
| §1.4 tangent count for that datum | Same Φ, unramified fixed determinant | Centralizer dimensions: gl₃ gives 1+2=3, trace-zero gives 2; unramified tangents have dimension 2, scalar inertia adds 1, giving 3−2=1 | Broad two-scalar tangent count retained | Gap requests this exact generality |
| §1.4 two scalar inertia characters | n=2,p=5,q=11, dual numbers | (1+ε)(1−ε)=1−ε²=1; ramified tangent dimension 1. Requiring the complement unramified gives ε=0 and dimension 0 | §2.23 cannot identify the chosen problem | False identification deleted |
| §1.4 inertia factorization and augmentation | θηⁿ⁻¹=1; θ=1; n=1 negative test | Scalar conjugation gives θ^(q−1)=η^(q−1)=1; since p∤n−1, θ=1 gives η=1. Fixed determinant in rank one leaves 0 ramified parameters | Augmentation is unramifiedness only in the stated rank domain | Explicit in contract and proof route |
| §1.4 deck coordinate | n=2; n=3,p=5, Δ=C₅ | n=2 gives (u⁻¹)⁻¹=u. For n=3 exponent 3 has inverse 2 and 3·2=1 mod 5; θ(d³)²=θ(d), whereas θ(d³) is generally θ(d)³ | Existing coordinate correction remains necessary | Propagated to all-level compatibility |
| §1.4 empty and residual problems | Q=∅ and χ≡1 mod ϖ | O[Δ∅]=O; augmentation is identity; both residual inertia polynomials become (X−1)ⁿ | Global residual comparison respects the same deck map | None |
| §1.5 framing | n=2, |T|=1,2,0 | n²|T|−1=3,7,−1; T=0 excluded. For ad⁰=0 the displayed Euler formula gives 0=0 | Nonempty framing hypothesis is essential | None |
| §1.6 archimedean count | Balanced n=2,3,4,5 | a²+b²−1=1,4,7,12; n(n−1)/2+⌊(n−1)/2⌋ gives the same values | Balanced oddness gives the stated count | None |
| §1.6 auxiliary numerical coincidence | Imaginary quadratic, n=2, |T|=1,q=3; q=0 negative test | g=0,j=3,dim R_loc=6,dim R∞=6=1+3+3−1; q=0 would give g=−3 | Selmer selection must put q in the nonnegative presentation range | General local gap included in the tangent input |
| §1.6 exact cardinality and avoidance | Empty dual Selmer space and q=0; positive-dimensional space | Empty Q has size 0 and detects a zero space; its localization map has rank 0 and cannot detect a positive-dimensional space | Padding and detection remain separate parts of the selection contract | None |
| §1.7 deformation point | O⟦X⟧→O′, X↦0; crystalline n=3,p=5 | Quotient is O, whereas O′ may be larger; weights 0,1,2 are in [0,3] | No surjectivity onto the coefficient extension is asserted | None |
| §1.8 rank-one illustration | ℚ, imaginary quadratic, real quadratic; class-group p-part C₃ | Unit-rank defects 0,0,1; O[C₃] has rank 3 and residual relation (t−1)³=0 | GL₁ conventions and imported class field theory remain separate | None |
| §2.1 residual and completed realization | 1⊕ε̄; T=k[ε]/ε²→k | Hecke polynomial X²−(1+λ)X+λ has determinant λ and is reducible; quotient kernel (ε) is nonzero with square 0 | Reducible and quotient realizations do not meet the honest irreducible-lift clause | None |
| §2.2 all-level inertia–diamond equality | M_top=k, M_inter=k[ε]/ε² | ε sends every top element to 0 but sends 1 on the intermediate module to ε≠0; cor∘res=p=0 in k | Top-level inference rejected; strengthened hypothesis detects it | Every level, degree and exponent required |
| §2.2 finite coefficient extension | O⟦z⟧/(ϖ²,z²,ϖz) | O-module is O/ϖ²⊕kz; actions agreeing naturally on both summands agree on the whole module | Naturality under all coefficient maps removes dependence on a cyclic decomposition | Finite-module clause and §4.4 linked |
| §2.3 range and boundary | PGL₂/imaginary quadratic, PGL₃/ℚ, PGL₂/CM quartic | Allowed degrees [1,2],[2,3],[2,4]; an Eisenstein H⁰=k violates each range. Zero boundary makes H_c→H an isomorphism; level-one H²_c=k versus H²=0 shows why the boundary condition matters | Range and boundary are independent inputs | None |
| §2.4 Taylor–Wiles comparison | Q=∅ and two distinct old roots | Empty projector and pullback are 1; two old copies become one after selecting α | Correct selected factor, with conditional block route distinguished | Consumer wording qualified |
| §2.5 strengthened bundle | Empty Q; omission of B^van | Empty Q removes auxiliary clauses (2),(6), leaving (1),(3); dropping vanishing removes an actual constraint, e.g. H⁰=k at the Eisenstein ideal | CGH20's hypothesis cannot be literally identified with this bundle | Source comparison qualified |
| §2.6 dévissage | 0→k→O/ϖ²→k→0 and [O→O] with differential ϖ | Exact coefficient sequence propagates zero groups outside the interval; integral H⁰=0 versus residual H⁰=k shows why a single isolated degree does not suffice | All-degree naturality retained | None |
| §2.7 image surjection and scalar containment | Empty Q; simultaneous square-zero model | Empty group-ring map is O→O; top-only equality has residual difference ε≠0 on the intermediate action. All-level equality has difference 0 in every defining factor | Equality is in the simultaneous image by definition | Surjection argument repaired |
| §2.8 low-rank vanishing | (d,q₀,ℓ₀)=(5,2,1),(6,2,2) | Excluded degrees within [0,d] are {0,1,4,5} and {0,1,5,6}; dual degree of 1 is 4 or 5 | Independent total range and duality contracts are still needed | None |
| §3.1 determinant kernel | h=diag(2,1), Γ=hPSL₂(ℤ)h⁻¹ | γAγ⁻¹=(0,2;−1/2,2); integral intersection has index 3, determinant kernel index 1 and Φ=1 | Integral intersection is not normal; repaired restriction is identity | Definition and consumers changed |
| §3.1 invariant functor | C₂ swap over 𝔽₃ versus 𝔽₂ | (a,b)↦((a+b)/2,(a+b)/2) is an idempotent at 3; at 2, denominator 0 and H¹(C₂,k)=k | Only the finite 2-quotient is averaged | Odd-prime requirement retained |
| §3.2 adjacent lattice groups | v₀=[O²],v₁=[O⊕ϖO],g=diag(ϖ,ϖ⁻¹) | Distances 1 and 2 respectively; t⁻¹(a,b;c,d)t=(a,bϖ;c/ϖ,d), so intersection requires c∈ϖO; vertex index q+1 | Local convention and inclusions agree | Applied to actual components |
| §3.2 nonprincipal prime | F=ℚ(√−5),x=(7,3+√−5),p=3 | Residue √−5↦4 has square 2 mod 7, hence norm 7. Norm equation has no solutions: b=0 requires a²=7, b=±1 requires a²=2, and larger b gives ≥20. Index is 8 | No global generator can occur in the general statement | Adelic element replaces it |
| §3.2 common determinant quotient | F=ℚ, maximal away level | Ĥ/H¹ has determinant classes {1,−1}; both vertices and edge surject onto C₂. For every coset, edge transitivity supplies an element fixing the chosen edge, so the image has the same size 2 on all terms | One common quotient acts on the chain sequence | Explicit descent construction added |
| §3.2 coefficient transports | at_x=γa_dκ, coefficient character ψ | Transported character on h is ψ(κ⁻¹(a_d⁻¹γ⁻¹hγa_d)κ)=ψ(a_d⁻¹γ⁻¹hγa_d); t_x has R-component 1 | Source and target coefficient actions agree, with the specified fibre intertwiner | Explicit pr₀,pr₁ and intertwiners added |
| §3.2 nonabelian group control | S₃ over 𝔽₅; Q₈ over 𝔽₃ | Group orders 6=1 mod 5 and 8=2 mod 3 are units; averaging the trivial action gives 1, and higher cohomology is 0 | Imported restriction/transfer arguments do not assume the arithmetic group is abelian | None |
| §3.3 squared correspondence and normalization | q=7 over ℤ/9 | Edge degree 49=4, augmentation 1; q⁻²=7, normalized edge degree 1, normalized augmentation 7; (7−1)²=0 | Edge degree differs from augmentation action | All component labels retained |
| §3.3 root action | Roots a,b; nonprincipal norm-7 prime with i,−i over 𝔽₉ | Squared eigenvalues are a²/q²,b²/q²; in the residual test i²=(−i)²=2 and 2−1=1 | Selected edge localization inverts U²−1 without a principal ideal | General-prime Check added |
| §3.4 chain map and sign | Edge v₁→v₀, q=7; degree zero constants | Vertex augmentations 8−7=1 and 56−56+1=1; 49 terminal edges; constant restrictions give c−c=0 | Boundary F(v₀)−F(v₁) matches res₀−res₁ | Component and coefficient sequence specified |
| §3.4 direction witness | v₀=[O²],v₁=[O⊕ϖO],s=diag(ϖ,1) | sv₁=v₀; the three-step path v₁→v₀→sv₀→s²v₀ ends with s² applied to the oriented edge. Distances from the initial vertex are 0,1,2,3 | Reversing e selects the opposite correspondence | Chain orientation and restriction sign pinned together |
| §3.4 localization | q=7, coefficients ℤ/9 | On amalgam cohomology U²−1=6 and 6²=0; inverting this nilpotent annihilates it. On the selected nonprincipal 𝔽₉ edge term the difference is 1 | Adjacent amalgam terms disappear for the right reason | Middle comparison uses full component sums |
| §3.5 Gram determinant | p=7,q=29, roots 2,4; roots 1,1 | 4−(2+4)²=3 and 2²−1=3; repeated roots give 0 and 0 | Distinct reciprocal roots give both required units | General-prime route repaired |
| §3.6 fixed-exponent descent | Trivial discrete k under ℤₚ; trivial group | H⁰_cts(ℤₚ,k)=k, H¹_cts(ℤₚ,k)=k; H¹(1,k)=0 | Finite-cover statement cannot be substituted for tower descent | Named tame-place supplier gap |
| §3.6 actual regular tower | Finite torsors U/U_t over a point | Smooth colimit C_cts(U,k) has H⁰_cts=k and Hⁱ_cts=0 for i>0; abutment is point cohomology | Tower module must be the actual colimit, not arbitrary trivial k | Positive and negative tower controls added |
| §§3.6–3.7 distinct-root block | n=3,p=7, roots 1,2,4 and repeated roots 1,1,1 | Distinct product 8=1; for selected 1, Q(1)=(1−2)(1−4)=3≠0. Repeated roots give Q(1)=0 | Distinctness is necessary but does not assert the block condition | Hypothesis retained |
| §3.7 successive levels | Q={x,y}; Q=∅ | Required pairs (x,∅),(x,{y}),(y,∅),(y,{x}) number 4; only minimal-level assumptions number 2. Empty Q gives identity | Consumer must carry all four conditions | Added Check and qualifications |
| §3.7 central descent | Central Cₚ with k coefficients | H⁰(Cₚ,k)=k and H¹(Cₚ,k)=k, while discarding it gives only degree 0 | Full derived descent is required | Local ownership retained; stale gap deleted |
| §4.1 minimal complexes | Residual [k→k] with zero differential; [O→O] with differential 1; ℓ₀=0 | Residual ranks (1,1); contractible disk has minimal ranks (0,0); defect zero leaves one free stalk | Nonzero seed and minimality matter | None |
| §4.1 ghost action | C=k[0]⊕k[1] over a DVR | Resolution O→O with differential ϖ gives Ext¹(k,k)=k. Nonzero off-diagonal t has H*(t)=0,t²=0,t≠0 in D(O) | A cohomological image ring need not act on C | Stronger derived API deleted |
| §4.2 reflection | q₀=ℓ₀=1 | Correct T⁰=H²∨, T¹=H¹∨; alternate formula gives 0,H⁰∨ | Lowest arithmetic degree belongs in top patching degree | None |
| §4.2 framed presentations | g,j≥1, model O⟦X,Z⟧→O⟦x,z⟧ | (X,Z)↦(x,z) and (x+z²,z) are surjective, with inverse substitution x=X−Z² in the second case; difference z²≠0 mod ϖ, but difference 0 after z=0 | Final unframed φ_N cannot detect this failure | Check moved before augmentation |
| §4.2 dimension formula | Real quadratic,n=2,|T|=1,q=3 | g=1,j=3,dim R_loc=6; dim R∞=7=1+3+3−0; dim S∞^□=7,dim S∞=4 | Framing changes the comparison | Used again in §5.10 |
| §4.3 coefficient comparison | C=[O→O] with differential ϖ | Top H¹=k reduces to k=coker(0:k→k); lower integral kernel 0 reduces to 0, whereas residual kernel is k | Top cokernel base change does not imply arbitrary-degree base change | None |
| §4.3 bottom cohomology dual | B^van below q₀ | Universal-coefficient left term H^(q₀−1)(E/O)/ϖ=0; right map identifies H^q₀(k) with H^q₀(E/O)[ϖ] | H/ϖ equals the stated top residual dual without an initial nonvanishing assertion | None |
| §4.4 nonflat coefficient actions | O⟦z⟧/(ϖ²,z²,ϖz) | Constant summand has length 2, z-summand length 1; module length 3, not a free O/ϖ²-module | Actions must be constructed on actual quotient coefficients | All-level finite-coefficient equality propagated |
| §§4.4–5.1 concentration | Nonzero minimal complex over regular S of dimension d, amplitude ℓ₀ | If first nonzero cohomology is in degree m, support dimension ≥d−m; upper bound d−ℓ₀ forces m=ℓ₀. For d=7,ℓ₀=1 this is 6 | Nonzero total residual seed suffices only with the dimension and amplitude inputs | Explicitly invoked for branch (b) |
| §5.1 augmentation and nonvanishing | Nonzero rank-one stalk S in degree 0; contractible disk | Stalk depth dim S and augmentation O≠0; disk cohomology 0 and all minimal residual ranks 0 | Acyclic disk cannot replace a nonzero residual complex | None |
| §5.2 near faithfulness | A=k[ε]/ε²,M=k | Ann M=(ε), (Ann M)²=0, support one point=Spec A, but action kernel nonzero | Near faithfulness is weaker than faithfulness | None |
| §5.3 support lifting | A=O⟦x,y⟧/(xy),M=A/(x) | ϖ acts injectively; residual support V(x) misses V(y) | Regularity of ϖ alone cannot replace residual full support | None |
| §5.3 augmentation descent | Free rank r module and quotient ideal a | R^r/aR^r=(R/a)^r; for r=0 this is 0 | Nonzero module is needed for faithfulness | None |
| §5.4 near-faithful arithmetic endpoint | A=O[ε]/ε² acting on O | Kernel (ε) has square 0; reduced quotient is O; every map to a reduced coefficient ring kills ε | Correct conclusion controls reduced points | All-level clause is inherited |
| §5.5 smooth R=T | Free module R^r, r≥1; zero module | Ann R^r=0 for r≥1; Ann 0=R | Smoothness plus nonzero freeness yields injectivity, not nilpotence alone | CGH20 application qualified |
| §5.6 cuspidal recognition | Residual block Speh(σ,2) in rank four at norm 1 mod p | Residual roots (a,a,b,b) have multiplicities ≥2, whereas bigness supplies an element with a simple root | Residual alternative is excluded using the named spectral contract | None |
| §5.7(a) characteristic-zero seed | Integral eigensummand O^r, r≥1 | Reduction k^r has dimension r>0, preserving the residual Hecke eigenvalues in degree q₀ | Lowest-degree support follows for this branch | Conclusion kept |
| §5.7(b) torsion seed | Graded k in degree q₀+1 | Total dimension 1, degree-q₀ dimension 0 | Total support does not definitionally imply bottom support | Conclusions separated |
| §5.8 support-to-eigenclass deduction | O⟦X⟧→O′,X↦0; A=O[ε]/ε²,M=O | Image order O has fraction field E, then may extend to E′; kernel (ε) vanishes at every reduced point; fibre of O at its generic point is E≠0 | Correct fibre and reduced-point argument; torsion-only seed upgraded using patching | Explicit §§4.4/5.1 use added |
| §5.9 imaginary-quadratic application | F=ℚ(i),R=∅,q=3; split p=5 and inert p=7 | (q₀,ℓ₀)=(1,1); |T|=2 gives g=1, |T|=1 gives g=0 | Both splitting types remain within scope | Source locators corrected |
| §5.10 defect-zero application | Real quadratic,n=2,|T|=1,q=3 | q₀=2,ℓ₀=0,g=1,j=3; dim R∞=7=dim S∞^□, while dim S∞=4 | Framed equality now agrees with the adjacent Check | Unframed equality corrected |
| New local supplier contract | Semisimple rank two versus Jordan-complement rank three | Tangent differences 2−1=1 and 3−2=1; unramified-complement rank-two difference 1−1=0 | Gap specifies the intended extension rather than pretending §2.23 supplies it | README/plan exact match |
| New tower supplier contract | Actual regular tower and arbitrary trivial module | Regular point tower has higher derived invariants 0; arbitrary trivial k under ℤₚ has H¹=k | Arithmetic descent needs the actual level system and derived invariants | README/plan exact match |

The denominator witnesses are explicit: q is a unit because x∤p; 2 is a unit because p>2; n and n−1 are prime to p because p>n; factorial projectors use finite coefficient rings rather than division by factorials. Norm q=1 is outside the domain of a finite residue field. The defining formulas for vertex augmentations nevertheless evaluate to 1,1 at q=1; no exceptional prime restriction is introduced. Natural-number truncation is not used for generator counts: the g=−3 diagnostic is rejected before variables are indexed. No statement uses an empty cover as an arithmetic cover or an inseparable extension as a number-field coefficient extension.

## Source and ownership audit

Read the existing legal cached texts under their existing manifest keys. CG18 line 4453–4463 distinguishes a simple generalized eigenline from semisimple total Frobenius; CG18 line 4815–4843 exposes the component/principal-prime simplification; CG18 line 4846–4880 gives the squared-operator normalization being tested. CG18 line 5093–5104 displays the smooth tower spectral sequences; CG18 line 5200–5224 uses framed presentations and cohomology actions. CG18 line 3524–3539 confirms the residual-only branch. CGH20 line 210–239 gives the distinct-root application without the extra block premise; KT17 line 1893–1917 is its GLₙ ordinary-completed-cohomology comparator. The three corrected theorem locators were opened at CG18 line 192, line 225 and line 3324. No new reference was needed and no missing text was requested. The manifest and metadata are unchanged.

For upstream shape, read `TauCetiRoadmap/FreeGroupsAndLimitGroups/README.md` and `Completed/IntegralLattices/README.md` on main. The package retains all 43 numbered targets, their prose APIs and at least three Checks each, with the existing layer order and examples. Changes outside the directly cited lines are the consumers and normalization witnesses listed under F01–F09; no new arithmetic endpoint was added.

The supplied roadmap search tools were used on the indexed open heads and main, and the board's available package READMEs were searched by object. The main identity reported by the resolver is 5f173a7; its open-head index contains 362 pull requests. Supplier statements were read through that interface rather than inferred from a name match. In particular:

| Object | Read owner/interface | Boundary respected |
|---|---|---|
| Arithmetic components, coefficients and Hecke maps | ArithmeticLocallySymmetricSpaces ALS.0.7, ALS.1.1–ALS.1.8, ALS.3.3–ALS.3.9, ALS.3.14 | Component stabilizers change by rational conjugation; generic construction remains there |
| Finite-cover descent | ArithmeticLocallySymmetricSpaces ALS.6.1–ALS.6.3 | Its scope explicitly excludes level-system assembly |
| Fixed-exponent smooth descent | CompletedCohomologyPartII §§0.1–0.3,1.1,6.2 | Its p-level setting requires the registered tame extension, including groupoid stabilizers |
| Local two-scalar versus unramified-complement problems | LocalGaloisDeformationRings §§2.16,2.23 | First is semisimple and two-scalar; second fixes the complementary inertia to 1 |
| Regular-unipotent minimal problem | LocalGaloisDeformationRings §§2.8,2.21, versus §2.26 | Regular residual block differs from trivial-residual Steinberg closure |
| Framing, augmentation and Selmer selection | GlobalGaloisDeformations §§3.3–3.7,4.3–4.4,5.5–5.8,7.2–7.4 | Rank-two augmentation is used in rank two; existing rank-n selection gap retained |
| Trace, image conditions and archimedean counts | ArithmeticGaloisRepresentations §§7.2,7.4,7.7–7.12; ArithmeticGaloisDuality R02.5.1–R02.5.2,R02.6.1–R02.6.2 | Existing big-image contract is not replaced by adequacy or enormity |
| Adjacent tree and amalgam | ReductiveGroupsPartII RG2.2.4; FreeGroupsAndLimitGroups §§4.5,4.8; AdelicAlgebraicGroups §4.2 | Generic tree, segment pushout and strong approximation remain supplied; this package owns the component-indexed arithmetic assembly |
| Modular principal-level comparison | ModularCurvesPartII §§15.4,15.8 | Principal level over ℚ with its stated coefficient/central-action hypotheses is only a Check |
| Distinct-root block and derived invariants | SmoothRepresentationsOfLocalGroups SR.5.3 | GLₙ local theorem is not silently promoted to PGLₙ arithmetic cohomology |
| Cohomology-action patching, support and depth | DeformationAndDerivedPatchingAlgebra §§3.1–3.4,6.1–6.8,7.3,7.6,8.6,9.1–9.2 | §8.6 explicitly withholds a strict or derived deformation-ring action |
| Hecke images, factors and residual systems | IntegralHeckeAndGaloisDeterminants §§1.2–1.3,2.1–2.3,3a.1,3b.1–3b.2 | A ghost kernel can be nilpotent without zero; simultaneous all-degree finiteness remains a named gap |
| Recognition and degree range | AutomorphicFormsOnReductiveGroups §§5.3,5.5; AutomorphicSpectralTheory §§4.14a,5.12–5.14 | Spectral support alone does not establish the boundary-or-residual alternative; existing gap retained |
| Local weights and arithmetic characters | PadicHodgeTheory §§6.1–6.2; ClassFieldTheory Layers 7,11; Chebotarev Layer 10; AdelicAlgebraicGroups AA.5 | Native positive weights and arithmetic Artin/Frobenius direction retained |
| Character factorization | KTheoryLowDegrees §11.6 | Does not supply localized H¹ vanishing without the separate ALS gap |
| Existing lifting endpoints | PotentialAutomorphyInfrastructure Layers 3–5; ModularityAndLanglandsExtensions §§2.7–2.8 | CM theory and GLₙ endpoint remain there; this package retains its Res PGLₙ strengthened variant |

The all-component O(ψ)-coefficient amalgam/Lyndon construction is owned here because its generic tree/group-theoretic inputs and its principal modular-curve specialization have those earlier owners, but none states the number-field component and coefficient transport assembly. The PGLₙ conditional comparison likewise remains the local §3.7 target, rather than a supplier request. No other roadmap's declaration is redeclared.

Ownership against the named open roadmap heads was searched with the supplied index. Other authors' board package heads for which this brief supplies no readable checkout were not fetched separately; ownership against those additional package heads was not checked. The available board packages were searched read-only. No supplier or open pull request was edited.

## Pinned-library and acceptance-signature audit

Verified the pins in `lake-manifest.json`: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The citation resolver's notice that it did not search pinned Lake packages was not treated as a library audit; these declarations were opened locally.

| Native declaration | Location and actual content | Consequence |
|---|---|---|
| `Field.absoluteGaloisGroup` | `Mathlib/FieldTheory/AbsoluteGaloisGroup.lean:42`, body `AlgebraicClosure K ≃ₐ[K] AlgebraicClosure K`, with topological-group structure | No arithmetic deformation problem is included |
| `Representation` | `Mathlib/RepresentationTheory/Basic.lean:48`, body `G →* V →ₗ[k] V` | Continuity and local arithmetic conditions are additional data |
| `IsHeckeTriple`, `HeckeCoset`, `HeckeRing` | `Mathlib/NumberTheory/HeckeRing/Defs.lean:75`, `:157`, `:189` | Commensurability is a hypothesis; the ring carrier is finitely supported double-coset coefficients, not an arithmetic cohomology carrier |
| `Module.support_eq_zeroLocus` | `Mathlib/RingTheory/Support.lean:216`, in the `[Module.Finite R M]` section | Support calculations use finite modules; full support does not mean a faithful action |
| `Monoid.PushoutI` | `Mathlib/GroupTheory/PushoutI.lean:60`, native amalgamation-congruence quotient | The generic pushout is imported, not replanned |
| `groupCohomology.coindIso` | `Mathlib/RepresentationTheory/Homological/GroupCohomology/Shapiro.lean:58`, subgroup and representation over a commutative ring | Discrete Shapiro, with no finite-index restriction; does not state continuous tower descent |
| `TauCeti.MonoidAlgebra.augmentation` | `TauCeti/Algebra/MonoidAlgebra/Exactness.lean:115`, coefficient-sum map, with singleton formula at line 120 | [g]↦1, [g]−1↦0, and 2[g]+3[h]↦5 |

Object searches at these pins found generic Galois groups, matrices, group cohomology, complexes, Hecke cosets and Selmer-named objects, but no arithmetic universal deformation rings or Res PGLₙ quotient/tower/coefficient carriers needed for the headlines. A Taylor–Wiles text match in Mathlib's FLT file is historical documentation, not such a carrier. Native cohomology and derived categories do not by themselves encode the specified arithmetic quotient. Consequently the Lean module still declares no theorem or data definition. Its docstring now reflects the component transports and conditional successive-level block hypothesis; no weakened theorem or free predicate was substituted.

All eleven headline categories remain named with their missing carriers in `Suggested.lean`: local-ring comparison, numerical coincidence/auxiliary selection, rank-two comparison, GLₙ comparison, conditional PGLₙ comparison, paired patched complexes/concentration, near faithfulness, smooth R=T, cuspidal recognition, support-to-eigenclass lifting, and the imaginary-quadratic/defect-zero applications. There are zero own declarations and hence zero elaborated signatures to compare, zero silently dropped binders and zero one-tactic sorried statements. The mechanical scratch signature file therefore had an empty list of `#check @name` commands; it was elaborated successfully. No definition or theorem name was added or deleted.

## Required checks and maintainer notes

- Prescribed `lake env lean` elaboration of `packages/AutomorphyLiftingBeyondTaylorWiles/Suggested.lean`, from the pinned content checkout: exit 0, no diagnostics. The module has 54 lines, the single import `Mathlib`, no `set_option`, no declarations and no TauCeti import requiring a targeted build.
- Scratch signature audit: exit 0, no diagnostics; the declaration list is empty. An initial scratch setup used the wrong working directory and therefore created no file; the corrected audit was then created and elaborated once successfully.
- Exact-gap audit: all 11 gap entries contain slug, needs, supplier and section; every needs sentence matches its README contract exactly. Comparing JSON after removing top-level `gaps` confirms that no other plan value changed.
- README shape: 43 numbered targets, each with at least three Checks; the six layers retain Examples and Dependencies. The source manifest still has exactly the same three legal-source keys.
- Citation resolver: no cross-roadmap citations found nowhere and no Lean names found nowhere, checked against main and the indexed open heads. Pinned declarations were independently checked as above.
- `git diff --check`: exit 0, no whitespace errors.
- Gate failure tex=18: converted all 18 exposed braced indices in README §§3.2–3.4 and 5.8 to ASCII formulas in inline code spans: two stabilizers, one amalgam, fourteen squared-operator occurrences and one cohomological degree. Only notation changed; hypotheses, maps and computed Checks are identical. The text scanners now report latex=0 and tex=0, and all other static text checks pass.
- Repeated the prescribed acceptance elaboration after the notation repair: exit 0, no diagnostics. The dependency check was repeated with the prescribed package name, order and `--movable`; complete output:

```text
depcheck: 51 roadmaps, 598 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. No tooling, merge order, other package, pull-request text, source text or content-checkout file was edited. No commit or network write was made.

Two supplier obligations remain explicit: the arbitrary-Frobenius two-scalar local extension belongs to LocalGaloisDeformationRings §2.16, and tame fixed-exponent descent belongs to CompletedCohomologyPartII §6.2. Registering these gaps does not assert that their suppliers already state or prove them. Consumers must retain the strengthened all-level inertia–diamond hypothesis and, when using §3.7, its successive-level principal-series block premise. The local comparison target remains owned here; its obsolete supplier gap was deleted. No Lean API name cited by another roadmap changed.

The historical target catalogue and audit annotations in `packages/AutomorphyLiftingBeyondTaylorWiles/design/plan.json` outside top-level `gaps` still contain earlier formulations, including the integral intersection, tower-version phrase, derived image action and unframed dimension Check. The edit boundary expressly excludes those fields. They were searched and left untouched; the repaired mathematical statements are in the README, and only the permitted gap records changed in the plan.
