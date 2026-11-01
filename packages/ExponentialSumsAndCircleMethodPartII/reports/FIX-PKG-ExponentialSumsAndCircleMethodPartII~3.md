# Repair report: exponential sums and the circle method, part II

## F01 (P2) — applied

Specialization of the Fourier filtration → spreading constant-coefficient geometric cohomology, followed by abstract transport of the finite-fibre spectral sequence and filtration. Repaired Exact supplier contracts and §10.1, including its API, route, Needs and Checks. Removed the EDC §5.9 invocation. Added the derivative control and the forty-variable comparison witness. Evidence: BS20 line 619 through line 641.

## F02 (P3) — applied

Unassigned primitive-rank input → EtaleDualityAndPerverseSheaves §4.7, specialized at hypersurface dimension n₁−1. Updated Scope, Exact supplier contracts, §6.5's route and Needs, and Layer 6 Dependencies; §6.3's new rank Check also names this supplier. The supplier's formula gives 6 and 21 at the two stated inputs. The Goursat application remains owned here.

## F03 (P3) — applied

Undefined binary Ψ(a,y) → the defined unary form Ψ₁(y)=2y and linear contribution −aΨ₁(y)=−2ay. Added a=y=1, giving linear contribution −2 and full difference −3; retained the cubic +6auv comparison. Searched every occurrence of the difference and polarization conventions. No Lean declaration changes. Evidence: BS20 line 1732 and line 1942; direct subtraction.

## F04 (P3) — applied

Nondiscriminating twist Checks → a third §6.3 Check on the Fermat cubic pair over 𝔽₂₅: primitive boundary rank 6, eigenvalue 25, closure rank 10, affine middle rank 16. An extra twist gives 625. Added rank, trace and weight suppliers to its Needs and Layer 6 Dependencies. Evidence: BS20 line 1369; the computed point and line checks below.

## Verification outcomes

- Required elaboration of `packages/ExponentialSumsAndCircleMethodPartII/Suggested.lean`, from the pinned content checkout: **exit 0**, exactly two warnings, at lines 98 and 123, both `declaration uses sorry`. No Tau Ceti imports occur, so no targeted module build was needed. No Lean process remains running.
- Elaborated one scratch copy with `#check @name` for **all nine declarations**: **exit 0**, the same two warnings. Compared every type with §§3.1, 3.4, 4.1, 8.1, 8.8–8.9 and 10.8: **zero lost binders and no signature changes needed**. In particular the count retains finite-field instances, geometric Jacobian, degree, characteristic and rank exclusion; irreducibility retains algebraic closedness, both Jacobian conditions, incidence, nonzero vector and both strict range conditions.
- Required dependency-direction command: **exit 0**, complete output:

```text
depcheck: 52 roadmaps, 590 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line occurred. The extra supplier edge for the normalization Check is to an earlier roadmap.

- `git diff --check`: **exit 0**, no output.
- Static consistency: **89 numbered subsections, 14 layers, seven real-bodied Lean definitions and two admitted headline theorems**. Every Lean declaration still appears in the README. No names were added, renamed or deleted. `Suggested.lean` remains unchanged: no Check declarations or padding were introduced.
- All **12** top-level gap slugs agree with the README's **12** exact contracts and its **12** distinct used slugs. `design/plan.json`, `metadata.toml` and `sources.toml` are unchanged. No supplier target was invented.
- The citation resolver found **no missing own Lean names**. Its sole roadmap lead is AlgebraicTopologyPartII AT2.2, already an explicit supplier gap; the corresponding six contracts and supplied board design were inspected. This is the previously settled supplier issue, not a new finding. The resolver's generic inability to find pinned Lake packages was checked against the actual pins by opening the declarations directly.
- No separate gate failures were listed. No further source fetch was necessary: all four manifest works and the additional STACKS Homology extraction are legally cached and readable. No missing-reference request was created.

## Source, ownership and pattern audit

Read the main forms of `TauCetiRoadmap/DGFloer/README.md`, `TauCetiRoadmap/AlgebraicTopology/README.md` and `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md` for shape and ownership. Content main is `e98875dbbea872d0496e323bc880e2b7fd00beb9`. The manifest and both package checkouts agree on Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

Used `roadmaps show`, `roadmaps grep` and board object searches. The global indexed searches include the named sibling heads and main; no separate live pull requests were sought. Existing primitive ranks belong to EDC §4.7, not this package. Its positive-dimensional hypothesis holds: n₁≥3 gives n₁−1≥2. Spreading constant-coefficient compact cohomology belongs to ECF; the finite-field Fourier filtration and its noncanonical vector-space use remain the application here. No new construction or Lean name was introduced for which ownership moves elsewhere.

Resolved the cross-roadmap suppliers against their actual main or indexed head copies:

| Supplier | Resolved sections and mathematical boundary |
| --- | --- |
| SchemeAndStackFoundations, main | §§0.2–0.3, 0.7–0.9, 5.12: relative algebraic geometry, finite-type dimension, spreading and cumulative intersection-degree inequality. The existing fibre-strata extension stays a gap. |
| EtaleCohomologyFoundations, main | §§0.6–0.7, F.0–F.4.6, F.5–F.6: enhanced localization, compact-support arbitrary base change, bounded constructible finiteness, generic lissity and rational realization. In particular F.1 supplies generic lissity, F.2.4 the compact-support exchange, F.3 finiteness and path-aware transport, F.4 rational coefficients. These apply to the geometric constant-coefficient data in §10.1. |
| EtaleDualityAndPerverseSheaves, indexed head | §§0.6, 3.2–3.8, 4.1, 4.3, 4.6–4.7: rational duality, finite coefficient extension, comparison, affine vanishing, primitive quotient/kernel comparison and rank calculation. Section 4.7's displayed formula is in `TauCetiRoadmap/EtaleDualityAndPerverseSheaves/README.md:4654`. Section 5.9 starts with a complex variety and specified residual constituents; it does not lift arbitrary characteristic-p character sheaves. This package no longer consumes it. |
| InverseGaloisAndArithmeticFundamentalGroups, indexed head | IG.5.1 supplies unit-difference configurations and the root-ordering torsor, including m=0,1; the finite-cover criterion inside IG.5.7 applies to smooth connected-fibre surjections and normal dense opens. IG.0.T4 supplies the geometric-Frobenius trace for all extension degrees. |
| DeligneWeightsAndPurity, indexed head | §§8.1, 8.8 give the constant-sheaf upper weight bound after separated finite-type compact direct image. This gives absolute value at most 25 in degree 2 over 𝔽₂₅; maximal positive trace forces the computed eigenvalues. |
| LefschetzPencilsAndVanishingCycles, indexed head | §§5.1, 5.8, 5.10 give general-pencil image, symplectic openness and the orthogonal open-or-finite alternative over ℚ_ℓ. The residual finite-image exclusion is still the existing gap. |
| AlgebraicTopology, main; DGFloer, main | Stages 4, 6, 8 and Layer 1 item 1 / Layer 2 items 2–3 supply cofibrations, singular cohomology, homotopy comparison, degree-one Hurewicz and restriction fibrations. None asserts uniform germ control. |
| ClassicalArithmeticCompletion, main | §6.44 is the infinite eventual leading-Hankel determinant criterion. It does not duplicate the finite rectangular rank/Padé statement here. |
| AlgebraicTopologyPartII; GeometryOfNumbersAndQuadraticArithmeticPartII | Read the supplied board designs for AT2.2–AT2.5 and FunctionFieldLatticesAndShrinking FL.4. Their named needs remain explicit gaps; no design proposal is represented as an implemented supplier theorem. |

Opened the pinned declarations at all sixteen README file/line locators, including the prime-progressions coprimality condition, the minimal-prime height inequality, local closedness in Jacobson detection and the positive circle orientation. Native `Ideal.IsPrime` requires a proper ideal; `Ideal.radical` is power membership; `ringKrullDim` uses the prime spectrum. Hence prime radical does not imply that the coefficient ideal is reduced. `Matrix.rank` is a field-point rank here, not a rank assertion about the zero ring. The pinned Hankel positivity theorem concerns bounded positive-semidefinite sequences, and the pinned Artin–Schreier polynomial identity concerns rings; neither supplies the rank strata or character sheaf.

The whole-package pattern search covered spreading, specialization, primitive ranks/twists and finite differences. F01's incorrect claims occurred in the EDC contract and §10.1's statement, API, route and Needs; all were replaced. Sections 10.2, 10.8 and 13.2 already promise vector-space consequences only, and retain their generality. F02 also changes Scope and the Layer 6 dependency list. F03 changes the only undefined arity; the quadratic/cubic signs in §§8.1, 8.7–8.9 and the Layer 8 example agree. F04 changes no normalization elsewhere: Conventions, §5.7 and §§6.2–6.6 continue to use geometric Frobenius and the same restriction sequence.

For §10.1 there is no circular proof input: construct the finite-fibre sequence by §7.5; prove its finite-field comparison by the localization/vanishing argument in §10.2 without using spreading; then transport the comparison to K. The abstract sequence has an abutment in all degrees, but its identification and transported filtration on mapping cohomology are asserted only in the known comparison degrees. Coefficients can first be ℚ_ℓ and extended after the good finite-field fibre is chosen. Positive characteristic retains the original p and prescribed admissible ℓ.

## Adversarial mathematics pass

Each row gives an actual computed instance, including each numbered target. Rows for propositions or supplied data test their stated content, not their existence. Unless the final column says otherwise, the row verifies the retained formulation and requires no edit. API laws and the layer Examples use the same objects and values.

| Statement | Instances tried | Computed values on both sides | Result / change |
| --- | --- | --- | --- |
| Degree, dimension and subtraction conventions | n=40,k=3,d=2; n=24,k=3,d=4 | D=2·37=74 and 4·21=84; tδ=1·3=3 and 2·1=2 | Strict irreducibility holds only in the first case. |
| Coefficient and Tate conventions | Point; affine line over 𝔽₂₅ | H_c⁰=E, trace 1; H_c²=E(−1), trace 25 | Shifts −0 and −2; twists 0 and −1. |
| Infinity norm and total-function endpoints | 0,1,T over 𝔽₂[T]; h=0 | Norms 0,1,2; strict ball contains only 0 | No division by zero or degree-zero-polynomial inference. |
| Permutation convention | Transposition of two degree-3 or degree-4 classes | (−1)^9=−1; (−1)^16=1 | Matches n=4 and n=5 signs. |
| Circle and Hurewicz conventions | Positive loop, reciprocal; S₃ | Winding +1,−1; S₃ᵃᵇ=ℤ/2 | Orientation fixed; nonabelian π₁ is not identified with H₁. |
| §0.1 intersection and equation bounds | Coordinate planes in A³; disjoint lines | 1=2+2−3; empty intersection has dimension −∞ | Meeting hypothesis is essential. |
| §0.2 Cartesian-grid bound | Line plus off-line point, S={0,1}; parabola sliced at x=0 | Count 3=2+1≤2·2=4; section degree 1≤2 | Cumulative degree and inequality, rather than equality, work. |
| §0.3 fibre strata | Coordinate axes projected to x-axis; point outside image | Fibre dimensions 1 at 0 and 0 elsewhere; inverse dimensions 1=0+1 and 1=1+0; empty fibre −∞ | Strata and empty case separated. |
| §1.1 polynomial box | 𝔽₂[T],h=2, affine line and plane; h=0 | Counts 4=2² and 16=2⁴; h=0 count 1 at the origin | Inclusive source height N=1 equals strict h=2. |
| §2.1 coefficient prime | p=5,ℓ=19; p=2 | 19≡−1 mod5, order 2; −1≡1 mod2, order 1 | Oddness of p matters. |
| §2.2 residue prime | ℓ=2,p=13; ℓ=3,p=5 | 2⁶≡−1 mod13, order 12; (3/5)=−1 and (2/3)=−1 | Fixed coefficient prime and even order are attainable. |
| §3.1 mapping scheme | d=2,x=(1,0); dual-number test; zero test algebra | Tuple degrees (2,≤1); ε²=0 allows nonzero ε; zero algebra has exactly 1 tuple | Functor retains nilpotents and avoids degree claims over zero algebra. |
| mappingPolynomial | d=3,n=1; d=0 | xT³+a₂T²+a₁T+a₀; empty sum gives constant x | Definition has real body and correct endpoint. |
| mappingEquation | f=0,1; f=Y₁,d=1,x₁=1 | Evaluations 0,1,T+a₀ | Full equation, including leading coefficient. |
| mappingIdeal | Same three inputs | Ideals (0),⊤,⊤; zero loci affine space,empty,empty | Proper-prime requirement excludes both empty models. |
| §3.2 componentwise lower bound | d=2,n=40,k=3 | 80 variables−6 equations=74 | Bound holds on every nonempty component. |
| §3.3 smooth closure | Parallel affine lines Y₁(Y₁−1)=0 | Affine gradients at roots are −1,+1; leading derivative 2Y₁ vanishes at boundary Y₁=0 | Smooth affine space alone does not suffice; leading hypothesis rejects this case. |
| §3.4 residuePhase | f=Y₁³−Y₂³+1,d=1,x=(1,1) | Coefficients a³−c³+1, 3(a²−c²), 3(a−c); adding 1 changes phase by b₁ | Whole f retained; b=0 gives 0. |
| §3.5 exponential complex | Zero frequency with dn=2; nonzero linear phase | E[−4](−2), trace Q²; zero complex, trace 0 | Character cancellation does not kill zero frequency. |
| §3.6 Fourier recovery | One frequency coordinate, zero versus nonzero coefficient | Fibre E[−2](−1) versus 0; recovery adds [2](1) | Shift and twist cancel in the zero-coefficient case. |
| §4.1 hankelMatrix and rank arcs | L=9,m=4,b₅=1; m=5; L=0 | Anti-identity rank 5, determinant +1; four rows give rank≤4≤5; empty matrix rank 0 | Odd-length threshold and empty rows correct. |
| §4.2 nesting | L=3,b=(1,2,4); b=0 | H₀ rank 1 and H₁ rank 1, hence b∈A₁ but not A₀; 0∈A₀⊂A₁ | Both closed stages have intended point conditions. |
| §4.3 automatic fullness | L=9,m=4,5; L=0 | Rank 5>4 at m=4; maximum rank 4≤5 at m=5; A⁰ is a point | Ceiling 5, not floor 4. |
| §4.4 Padé equivalence | α=T⁻³,L=3,m=1; α=0 | h₁=0,h₂=1,m′=0; error exponent −3=−L−1+m−m′; zero error for α=0 | Smaller-denominator branch retained. |
| §4.5 uniqueness on exact stratum | (0,0,1) and (1,2,4),L=3,m=1 | Both rank 1; data (0,1,m′=0) with leading error 1 versus (1,T−2,m′=1) with remainder −8T⁻⁴ | Unique monic reduced data, distinct branches. |
| §4.6 exact denominator chart | m=0,1 | Pair (0,1); pair (c,T−a),c≠0 gives b_r=ca^(r−1) | Excludes zero numerator when denominator has positive degree. |
| §4.7 pair model and boundary dimension | m=1,m′=1 or 0 | Open dimension 2; boundary bound m+m′=1≤2 | Boundary not inferred from open-chart dimension alone. |
| §5.1 boundary cancellation | k=3,d=2,m=1,α=T⁻⁶,x=(1,1),f=Y₁³−Y₂³+1 | Phase 3(a₁−c₁); translation g₁↦g₁+λT changes it by 3λ≠0 for λ=1,p>3 | The smaller-denominator stratum cancels. |
| §5.2 remainder fibration | Divide xT²+a₁T+a₀ by T−b; m=d | Remainder xb²+a₁b+a₀; quotient xT+a₁+xb; at m=d fibre rank 0 | Monic division and fixed leading term agree. |
| §5.3 residue-class complex | h₂=T−a,h₁=h≠0; m=0 | Residue h f(remainder); at m=0 no remainder variables and complex E | Correct domain excludes h=0 for m=1. |
| §5.4 affine factor | One quotient coordinate; no quotient coordinates | H_c²=E(−1) versus H_c⁰=E | Shifts −2,0 and twists −1,0. |
| §5.5 CRT multiplicativity | l₁=T,l₂=T−1,h₁=h₂=1 | 1/T+1/(T−1)=(2T−1)/(T(T−1)) | Cross numerator is 2T−1, not 1. |
| §5.6 repeated-root cancellation | Local f=a; local f=a³+1 at a=0 | Derivative 1 in first branch; derivative 0 but value 1 in second | Nonzero linear character supplied in either branch. |
| §5.7 reduced trace fibre | One and two copies of A^a | Fibres of E(−a)→E(−a) and E²(−a)→E(−a) have ranks 0 and 1 in degree 2a | Trace reduction is not basepoint reduction. |
| §5.8 one-variable Fourier application | g=a; g=0; g=a^p−a,h=1 | Total complex 0; H_c⁴=E(−2); a-fibre H_c²=E(−1) | Nonconstancy and degree<p needed in the route. |
| §5.9 linear modulus | Cubic Fermat n=3, denominators T and T−1 | Both fibres have rank 8 in degree 2+2=4 after the outer shift | Root translation introduces no character or degree change. |
| §5.10 configuration descent | m=0,1,2; ℓ=2 and E=ℚ₂ | Tensor units give rank 1 at m=0; m=1 action trivial; averaging scalar at m=2 is 1/2∈ℚ₂ | No finite-characteristic obstruction to invariants. |
| §5.11 stratum complex | m=0; m=d=2,n=4 | E[−16](−8) at m=0; quotient rank n(d−m)=0 at m=2 | Affine quotient factor retained exactly once. |
| §5.12 middle concentration | Affine plane cubic with three smooth points at infinity | H_c⁰=0, dim H_c¹=2+3−1=4, H_c²=E(−1); trace fibre keeps rank 4 only in degree 1 | n=2 endpoint valid. |
| §5.13 parity tensors | dim V=2,m=2,n=4 or 5; m=0 | Exterior dimension 1; symmetric dimension 3; tensor unit dimension 1 | Sign exponent n−1 and unit correct. |
| §5.14 stratum degree formula | n=4,d=2,m=1; m=0 | Configuration index a+3−16=a−13; a=15 gives H_c²; at m=0 a=16 | m=1 twist −1−4=−5; m=0 twist −8. |
| §6.1 universal pair | Fermat cubic, x=(1,−1,0,…); x=0 | f₀(x)=1−1=0; x and 2x distinct; 0 has f₀=0 but fails x≠0 | Vector, not projective-line, incidence retained. |
| §6.2 relative support | Cubic affine threefold, n=4 | Middle degree 3 rank 16; top degree 6 rank 1 with eigenvalue Q³ | Lissity comes from the smooth proper pair, not rank constancy alone. |
| §6.3 primitive extension | Fermat cubic pair over 𝔽₂₅ | Boundary rank (2⁴+2)/3=6 in degree 2; closure rank (2⁵−2)/3=10 in degree 3; affine rank 16=6+10 | Added discriminating Check; restriction injects the untwisted boundary term. |
| §6.3 boundary twist and Frobenius | Same pair; erroneous added twist | #Z=801; primitive trace 801−1−625−25=150=6·25, versus 6·625=3750 with extra twist | Six eigenvalues 25, not 625; line classes also prove scalar action. |
| §6.4 fundamental-group pullback | Smooth binary cubic; smooth plane cubic | Binary boundary has 3 points and punctured cone has 3 components; plane cubic is connected and its punctured cone is a connected G_m-bundle | n≥3 excludes the disconnected-fibre model. |
| §6.5 Goursat rank and eigenvalue | (k,n₁)=(3,3),(4,3),(3,5); Jordan extension | Ranks 6,21,22; matrix ((−1,1),(0,−1)) squares to ((1,−2),(0,1)) | Added EDC rank owner; sole eigenvalue −1 does not mean −Id. |
| §6.6 relative strata | n=4,d=2,m=0,1 | Zero stratum degree 16, twist −8; m=1 configuration index a−13 and twist −5 | Same fibre formula as §5.14, with diagonal monodromy. |
| §7.1 localization spectral sequence | {0}⊂A¹; single stratum | d₁:E=H_c⁰({0})→H_c¹(G_m)=E is an isomorphism; H_c⁰(A¹)=H_c¹(A¹)=0; single-stratum page equals abutment | Differential bidegree (1,0) and convergence agree. |
| §7.2 unshifted page | n=4,d=2,m=0 | s−16=0 forces total degree 16; number of columns d+1=3 | Unshifted zero column not placed at degree 0. |
| §7.3 relative page | Same parameter and m=0; m=1,2 parity | Zero term E[−16](−8); eigenvalues −1 and +1 on columns 1 and 2 | Equivariance excludes maps between opposite generalized eigenvalues. |
| §7.4 odd differentials | ℓ=2,p=7,n=5,k=3,d=1 | ord₇(2)=3; columns m and m+1 still have opposite eigenvalues | Even coefficient order not needed for parity; cubic n=3,4 exceptions remain. |
| §7.5 normalized page | n=40,k=3,d=2,m=0 | L=6, nd=80; twist 6−80=−74 and total degree 0 | Zero column is one-dimensional E(−74). |
| §8.1 difference locus | G=a²,N=1; k=1 constant/nonconstant; k=3 retained | Δ_yG=−2ay−y², V₂={0}; V₁ point/empty; V₃=A² with dimension 2 | Order parameter cannot be silently lowered. |
| iteratedPhaseDifference | r=0,1,2; G=a³,a=u=v=1 | r=0 gives G; r=1 coefficients +1,−1; r=2 gives 1−8−8+27=12 | Subset signs yield +6auv plus constant 6 at this cubic input. |
| §8.2 compact cohomological degree | N=1,G=constant,a,a^p−a | Degrees 2,−∞,2 respectively | Nonconstant polynomial need not have nonconstant Artin–Schreier sheaf. |
| §8.3 coefficient conjugation | p=5,ℓ=2; p=7,ℓ=2 | 2²≡−1 mod5, order 4; powers mod7 are 1,2,4, so −1 absent | Inversion automorphism exists only in the first test. |
| §8.4 tensor/difference degree | Constant G,N=1; nonzero linear G | 2+2=4=cd of zero polynomial on A²; −∞+−∞=−∞ and Δ has a nonzero linear y term | Extended addition and coordinate isomorphism agree. |
| §8.5 closed-point detection | Spec 𝔽_(q²) over 𝔽_q | Rational points 0 over 𝔽_q, 2 over 𝔽_(q²) | All extensions, not the first rational fibre alone. |
| §8.6 Weyl inequality | N=1,G=a²,k=2 or 3; constant G,k=3 | Bounds (0+1)/1=1 and (2+2)/2=2; constant gives (2+2)/2=2=cd | Retaining k after degree drop gives the intended weaker bound. |
| §8.7 polar definition and dimension | Scalar cubic in char 5; scalar cubic in char 3 | Ψ(u,v)=6uv, diagonal 6u²; dimension 1, degree 2; char3 gives Ψ=0 and dimension 2 | Factorial and p>k essential. |
| §8.7 quadratic sign | G=a²,k=2,a=y=1; cubic a=u=v=1 | Ψ₁(1)=2; linear −1·2=−2, full difference −3; cubic linear coefficient +6 | F03 corrects arity; signs disagree with reversed differences. |
| §8.8 polarCount and shrinking | Scalar cubic,d=2,α=T⁻⁴; α=0 over 𝔽₅ | N=2·5³−5²=225; N₁=2·5−1=9, so 225=5²·9; α=0 gives 625=25·25 | Finite-function constancy equals the formal linear-coefficient condition. |
| §8.9 minor_arc_polar_count | Same nonzero frequency over 𝔽₅,𝔽₇; b=0; char3 | Counts 225≤250, 637≤686; b=0 gives 625>250; char3 gives 81>54 | Rank 3>m=2 and p>k exclude both negative controls. |
| §8.10 dimension detection | A^e; Spec 𝔽_(q²); dual numbers | Counts q^(re); 0 for odd r and 2 for even r; 1 for all r with dimension 0 | Multiples of descent degree and nilpotent invariance necessary. |
| §9.1 differencing dimension | Scalar cubic,d=2,m=2,α=T⁻⁴; b=0 | N=2Q³−Q² gives dimension 3=4−1; b=0 dimension 4 | Rank exclusion lowers dimension by 1. |
| §9.2 support cutoff | Scalar cubic,d=2,m=2; L=9,m=5 | Cutoff 4−1/2=3.5 gives vanishing for integer a≥4; second open empty since 5=ceil(9/2) | Strict degree and saturated case correct. |
| §9.3 minor-arc cover | L=9,d=3; L=12,d=4 | Indices m=3,4; m=4,5 | Includes final odd-length stratum m=4. |
| §9.4 conservative bound | k=3,d=4,n=24,m=5 | q=2,r=1,δ=1; B=192−24+24=192; global cutoff 192+8−8=192 | Retains 4(r+1)=8. |
| §9.5 sharp-bound proposition | Same input; degree a=190 or 188 | Sharp cutoff 192+4−8=188; 190>188 but 190≤192; 188>188 false | Extra hypothesis not proved by conservative bound. |
| §10.1 geometric spread and abstract transport | K=ℂ,k=3,d=2,n=40; characteristic 5 with prescribed ℓ=2 | D=74,tδ=3, comparison i>−4, zero-column dimension 1; in char5, ord₅(2)=4 and p remains 5 | F01 repaired; no generic-fibre character sheaf or Fourier-map specialization. |
| §10.1 Artin–Schreier negative control | y⁵−y over char5 and ℂ | Derivatives −1 and 5y⁴−1; zero critical points versus 4 | Étale special-fibre cover does not provide an étale characteristic-zero cover. |
| §10.2 conservative comparison | n=40,k=3,d=2 | Minor cutoff 160+8−12=156; normalize by 160 to get i>−4; i=−3 uses degrees 157,158, both >156 | Adjacent-degree vanishing and shift 2D=148 agree. |
| §10.3 conditional sharp comparison | Same input; tδ=1 boundary | Sharp i>−8 versus conservative i>−4; i=−6 needs sharp hypothesis; at tδ=1, i>0 excludes i=0 | Conditional range retained. |
| §10.4 first-page support | m=1,2,n=40 | s=−38 for m=1; −77≤s≤−76 for m=2; configuration degrees 2 and 3,4 | Matches configuration range m+1 through 2m. |
| §10.5 abutment support bands | Same input | Total degrees −37 and [−75,−74]; −1 and +1 absent | H_c^147=0; no extension beyond comparison range. |
| §10.6 top degeneration | n=4,r=2 | Threshold 1−2·2·1=−3; possible support arrow (m,s)=(4,−11)→(6,−12) has totals −7→−6 | Potential higher differential lies below the claimed near-top range. |
| §10.7 componentwise criterion | A¹; A¹ disjoint a point; empty scheme | Top rank 1 at degree 2 in both nonempty cases; component dimensions {1} versus {1,0}; empty top rank 0 | Lower bound on every component removes false converse. |
| §10.8 mapping_geometrically_irreducible | Cubic Fermat n=40,d=2; n=24,d=4 | D=74, 3>2; D=84, 2>2 false | First is within theorem, equality boundary is excluded. |
| §10.9 small-degree excess | n=3,k=3,d=1; n=2 | g₂=0 gives g₃³+1=0, three choices and free g₁ constant term: dimension 1>D=0; at n=2, equation 1=0 | Nonempty example requires n≥3 and d<k−1. |
| §10.10 degeneration proposition | n=40,i=0; toy nonzero d₂ | Sum at i=0 has rank 1 from m=0; an isomorphism d₂:E→E changes two rank-1 terms to rank 0 | Odd-page vanishing does not supply this proposition. |
| §11.1 prescribed germ | Fermat reference; normal coordinates 2z^d and z^(d+1) | Normal ratios 1,2,z; leading values 1,2,0 | Only first has required normalized order-d germ. |
| §11.2 compact-open topology | Escaping loop, real T=R | Normal ratio at moving s is −1, deviation 2; projective normal size R^(−d)→0 | Ambient compact-open continuity does not imply normalized uniformity. |
| §11.3 polynomial inclusion | Lower coefficients bounded by M, R≥1 | After division by T^d the error is at most dM/R→0; limit [x:0] | Fixed nonzero x gives joint extension; x→0 loses normalization. |
| §11.4 phase definition | r=1/4,s=0,3/8,1 | h=0,1/2,1 and σ=1,−1,1 | Endpoint lift difference 1 gives positive circle degree. |
| §11.5 nonuniform eventual agreement | s fixed versus s=3r/2 | For fixed s>0, r<s/2 gives σ=1; moving s gives σ=−1 | Pointwise eventual equality and failure of uniform equality coexist. |
| §11.6 Fermat reference | k=3,d=2,x=(1,−1,0,…), g=(T²,−T²,1,0,…) | Sum of cubes T⁶−T⁶+1=1; leading f₀(x)=1−1=0 | Smooth gradients cannot vanish on power sum 1 or a nonzero projective point. |
| §11.7 escaping loop | s=0,1 and moving s=3r(R)/2 | F₀=F₁=g; modulus abs(a_s(R))=R^d; moving a_s(R)=−R^d | Continuous based loop with no uniform eventual agreement. |
| §11.8 common chart | Escaping family at abs(T)=R | First homogeneous coordinate normalized to 1; normal v=T^(−d)σ⁻¹ has size R^(−d)≠0 | Uniform chart exists, while normalized deviation can equal 2. |
| §11.9 end winding | Constant loop, escaping loop, its double | Normal ratios 1,σ⁻¹, concatenation of σ⁻¹ twice; windings 0,−1,−2 | Sign fixed by reciprocal normal coordinate. |
| §11.10 invariance and additivity | Two large radii R,2R; loop followed by reverse | Lift endpoint differences −1 at both radii; sum −1+1=0 | Common homotopy tail is necessary for descent. |
| §11.11 infinite loop class | Powers of escaping loop | endWind(F^j)=−j; j=1 gives −1≠0 | Onto ℤ, infinite order, no filling disc. |
| §11.12 compact-open obstruction | Cubic Fermat n=40,d=2 | Bouquet spheres dimension 39 give π₂X=π₃X=0; endWind on Hco takes value −1 | Double loop is simply connected, Hco is not. |
| §12.1 controlled collar | u=az,w=1+bz; w=1.1; w=−1 | Weighted norms abs(a),abs(b); constant offset gives 0.1/abs(z)→∞; w=−1 has deviation 2>1/2 | Wrong constant-normal models excluded. |
| §12.2 straightening | z=1/10,u=z,w=1+z,t=1,χ=1/2 | u_t=1/20,w_t=21/20; deviation 1/20<1/2 | Nonvanishing and weighted continuity; transition annulus can move. |
| §12.3 extension space | X=point; X=S²,β constant | Extension space point versus components ℤ=π₂S², as for Ω²S² | Reference extension essential; fibre identification has correct basepoint. |
| §12.4 StrongGermData | Escaping loop; bounded linear collars | Moving weighted normal deviation 2R→∞; u=az,w=1+bz gives bounds abs(a),abs(b) | Hco fails required compact-family condition; no existence claimed. |
| §12.5 conditional loop comparison | Point; Fermat Hco | Point extension and double loop each have 1 point; Hco has ℤ quotient, Fermat double-loop π₁=0 | Conditional statement uses supplied comparison data, not Hco. |
| §13.1 trace-pairing proposition | n=40,k=3,d=2,j=0,1,8 | j=0 algebraic rank 1; j=1 algebraic rank 0 versus nonzero H¹(Hco,ℚ); 8<8 false | Conjectural perfection false for Hco; endpoint excluded. |
| §13.2 trace counterexample | Same Fermat input | D=74, 147=2D−1, i=−1>−4 and 0≤1<8; zero algebraic factor versus winding rank at least 1 | Failure strictly inside both relevant ranges. |
| §13.3 conditional degeneration | n=40,k=3,d=2,j=1; one-sphere loop controls n=4,5 | j=1<8≤74=d(n−3); n=4 S³ double-loop series 1+t; n=5 S⁴ series (1+t⁵)/(1−t²) has degrees 0,2,4,5 of rank 1 | Known comparison still required; different topology and pairing are explicit hypotheses. |

The line-class calculation in the new §6.3 Check can be verified without inferring semisimplicity from eigenvalues. Write 𝔽₂₅=𝔽₅[u]/(u²−2), and put r₀=−1,r₁=3+2u,r₂=3+3u; each r_i³=−1. The three partitions of four coordinates into two pairs, with the two ratios independently in {r₀,r₁,r₂}, give 3·3²=27 distinct rational lines. Six skew ones are the three lines Y₁=r_iY₂,Y₃=r_iY₄, together with the three lines Y₁=r_iY₃,Y₂=r_(i+1)Y₄ (indices modulo 3). Their pairwise intersections are zero; each self-intersection is −1. With the hyperplane class h, h²=3 and h·L_i=1, the seven-class Gram determinant is (−1)⁶(3+6)=9≠0. The plane section Y₁=r₀Y₂ is a sum of three of the 27 lines, so h is itself in their span. Since b₂=7, the line classes span H², so geometric Frobenius acts as 25 on the whole group, not merely with that sole eigenvalue. Quotienting the hyperplane leaves E(−1)⁶. Independent finite-field arithmetic gives 19225 zeros on the affine cone, hence (19225−1)/24=801 projective points, agreeing with 1+7·25+25².

The scalar polar-count tests used the actual full second difference of G(a₀,a₁)=a₁³+6a₀a₁+4a₁. Enumerating constancy in both base variables gives 225 and 637 over 𝔽₅ and 𝔽₇. The bilinear and linear summands contribute only base-independent terms after two differences. In characteristic 3 the cubic function is additive and the same definition admits all 81 increment tuples; this verifies the negative control against the native finite-function definition, rather than just a formal polar equation.

## Existing supplier contracts: boundary computations

No supplier-gap contract was added or expanded. These computations test the domains still consumed by the repaired roadmap.

| Contract | Instances tried | Computed values | Result |
| --- | --- | --- | --- |
| sf-fibre-strata | Two coordinate axes projected to one axis | Fibre dimensions 1 at 0, 0 off 0, −∞ outside image | Empty and nonempty strata distinguished. |
| ecf-character-fourier | Zero and nonzero linear phase on A¹ | E[−2](−1), trace Q versus complex 0, trace 0 | Nontriviality indispensable. |
| ecf-one-variable-fourier | g=a and g=0 | Nonzero-frequency transform 0 versus a nonzero H_c⁴=E(−2) in the total constant test | Degree 1≤deg g<p retained. |
| edc-top-components | Line disjoint point; dual-number point | Top degree 2 rank 1; top degree 0 rank 1 | Top dimension alone does not count smaller components; nilpotents do not change cohomology. |
| lpv-universal-monodromy | Cubic surface; quartic surface | Primitive ranks 6 and 21; cubic surface finite Weyl image versus infinitude requested outside exception | Exact exception preserved. |
| symmetric-lattice-shrinking | Scalar γ=0,Q=5,a=c=1,s=1; n=0 | N=5≤5·1=5; n=0 gives 1≤1 | Strict balls, equality case and zero rank agree. |
| at2-arrangement-cohomology | m=0,1,2 | PConf₀ degree 0 rank 1; PConf₁ degree 2 rank 1; PConf₂=A¹×G_m has degrees 3,4 each rank 1 | Endpoints m+1 and 2m correct. |
| at2-stable-diagonal | dim V=1,n=4,d=1,j=0,1 | Configuration diagonal dimensions 1,1, agreeing with 1+t | Sign and j≤d(n−3)=1 retained. |
| at2-tame-polynomial | f=z^k; homogeneous Fermat form | abs(f′)=kabs(z)^(k−1); on unit sphere Fermat gradient has strictly positive minimum | Normalized gradient cannot vanish away from zero. |
| at2-tame-bouquet | n=2 cubic Fermat; n=4 cubic Fermat | Milnor numbers 2²=4 and 2⁴=16 | Sphere dimensions 1 and 3, matching compact middle ranks. |
| at2-double-loop-betti | One sphere in dimensions 3 and 4 | Ω²S³ rational series 1+t; Ω²S⁴ series (1+t⁵)/(1−t²) | Connected full-space formula starts at n=4. |
| at2-fermat-loop-connectivity | n=40 cubic Fermat | Sphere dimension 39; π₂=π₃=0, so π₀Ω² and π₁Ω² trivial | Does not transfer connectivity to Hco. |

## Maintainer consequences

Only `packages/ExponentialSumsAndCircleMethodPartII/README.md` and this report changed. The two acceptance headlines, seven definitions, twelve gap contracts and all downstream declaration names are unchanged. Consumers of the general-field spectral sequence receive a noncanonical vector-space sequence and its filtration on mapping cohomology in the comparison range; they cannot consume a specialization of a geometric Fourier diagram or a characteristic-zero Artin–Schreier sheaf. EDC §4.7 is an existing input, not additional work assigned to that supplier. No scope or merge-order decision is requested. No commit or external write was performed.
