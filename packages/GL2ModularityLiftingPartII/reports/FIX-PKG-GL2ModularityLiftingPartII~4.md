# Repair report: GL2ModularityLiftingPartII

## F01 (P2) — applied

The unrestricted CDT import → gap:vexing-norm-twist-selector at GL2AutomorphicRepresentationsAndTransfer §§R16.2.11, R16.3.9. Section 5.1 specifies the inflated, determinant-twisted lattice, quotient and contragredient; §6.3 consumes that extension. Both layers' dependencies and the plan agree. The conductor-equality branch remains. The witness now has Hom dimension 1, versus 0 for the incorrect construction. Both Lean headlines retain all vexing primes.

## F02 (P2) — applied

An implicit global assertion in a local gap → separate gap:scalar-variable-global-type at GL2ModularityLifting §§3.7, 4.1–4.2. Its identical README/plan sentence requests finite flat Cohen–Macaulay type three, with verification of local factors and the numerical parameter bound. Sections 7.2–7.5 explicitly retain this condition. The rank-four orders distinguish socle dimensions 3 and 1 despite identical generic fibres.

## F03 (P2) — applied

Re-requested fixed-character finiteness → import PotentialModularityAndCompatibleSystems §8.8 in Scope, contracts, §7.2 Needs and Layer 7 Dependencies. The conductor-comparison gap now requests the presentation, numerical bound and component comparison, including the new variable-determinant extension. The ≤2m-generator quotient Check isolates inherited finiteness. No dependency from GL2ModularityLifting to the later finiteness supplier is introduced.

## F04 (P2) — applied

A Katz witness without its modularity input → ClassicalSerreModularity R27.5/hypothesis-H-and-theorem-9-1 followed by SerreWeightAndLevelOptimisation §3.13. Contracts, §0.2 Needs, its route and Layer 0 Dependencies specify both steps. The S₃ representation from X³−2 supplies the Check. Both Lean headlines retain their unconditional modularity conclusions; no witness hypothesis was added.

## F05 (P3) — applied

Section 6.1's tensor determinant 4 → scalar-block determinant 4 and full rank-four determinant 1 over 𝔽₅. The Check displays the actual matrix. Both determinants are units; selecting one root retains one rank-two coefficient copy. The scalar-block Checks in Layer 1 already have the correct value 4 and remain unchanged.

## F06 (P3) — applied

Layer 1 now lists Matrix.charpoly and Matrix.aeval_self_charpoly; Layer 10 lists ArithmeticLocallySymmetricSpaces ALS.5b.5–ALS.5b.8. Comparing all eleven summaries also found Layer 6's missing R15.2 boundary input, which is added. Each of these four inputs now has (Needs occurrences, summary occurrences) = (1,1). New inputs from F01–F04 also occur in their layer summaries.

## Evidence and ownership

The claims were treated as mathematical data, not instructions. No suspicious instruction was found in the review. The six numbered findings above are all the findings; the review's soundness discussion is not an additional finding list.

| Finding | Evidence read and mathematical conclusion |
|---|---|
| F01 | TauCetiRoadmap/GL2AutomorphicRepresentationsAndTransfer/README.md §§R16.2.11 and R16.3.9 explicitly impose a(θ/θ^σ)=a(θ). For θ₀ of order 8, θ₀/θ₀^σ=θ₀⁻⁴ has conductor 1; its norm twist by λ of conductor 2 has conductor 2. The unramified quadratic induction has conductor 4. In the finite character inner product the central contribution is 16 and the noncentral contribution is −16, giving 0/24=0. Tensoring both representations by λ∘det is an invertible functor, so the corrected Hom equals the depth-zero Hom of dimension 1. cg18 line 1823 gives the source's conductor-level construction; cg18 line 1930 fixes that sections select the dual coefficient lattice. The broader selector is explicitly a supplier gap. |
| F02 | TauCetiRoadmap/LocalGaloisDeformationRings/README.md §6.18 proves a local type-three result. TauCetiRoadmap/GL2ModularityLifting/README.md §4.2 requires the relation bound and dimension comparison for its global conclusion. cg18 lines 2697–2718 use a global presentation and a parameter system including π. The explicit orders below show why generic support and finiteness alone cannot replace this integral input. |
| F03 | TauCetiRoadmap/PotentialModularityAndCompatibleSystems/README.md §8.8 supplies O-finiteness for the unframed fixed-character scalar ring and its quadratic eigenvalue extension, including p=3 and exceptional nonadequate images. Taking a quotient preserves any finite set of O-generators. This is consumed directly here; the conductor-specific comparison remains with GL2ModularityLifting. |
| F04 | TauCetiRoadmap/SerreWeightAndLevelOptimisation/README.md §3.13 starts with a Katz witness or an already modular residual representation. TauCetiRoadmap/ClassicalSerreModularity/README.md R27.5/hypothesis-H-and-theorem-9-1 supplies qualitative modularity for S-type data. cg18 line 315 invokes Serre modularity to remove residual modularity as an external hypothesis. |
| F05 | det([[2,3],[3,4]])=8−9=−1=4 in 𝔽₅; det(A⊗I₂)=det(A)²=1. The displayed rank-four matrix also has determinant 1 by direct expansion. |
| F06 | Mathlib/LinearAlgebra/Matrix/Charpoly/Basic.lean lines 132 and 214 contain Matrix.charpoly and Matrix.aeval_self_charpoly. The indexed head of TauCetiRoadmap/ArithmeticLocallySymmetricSpaces/README.md has ALS.5b.5 at line 4324 and ALS.5b.8 at line 4519. Layer 6 §6.1 directly consumes AlgebraicModularFormsAndSerreWeights R15.2's boundary calculation. |

Object searches used the roadmap service over main and the indexed open heads, plus the board's packages, for compact CDT types, norm/determinant twists, scalar ordinary finiteness and variable-determinant type three. The identified owners are retained. The new selector extension belongs to the earlier compact-type supplier; the integral global scalar result belongs to the earlier global comparison supplier. Neither is re-planned as a generic construction here. No declaration name changed or moved.

Cross-roadmap citations were resolved anew against main a8132fb and the indexed open heads. Relevant supplier sections were opened through the roadmap service, including the existing representation, deformation, patching, modular-curve and Hecke-image owners. The source-shape comparison used Completed/NumberFieldArithmetic/README.md and TauCetiRoadmap/ClassFieldTheory/README.md on main.

AutomorphyLiftingBeyondTaylorWiles has no main or open-head README exposed by the service. Its BT.3/lemma-9-6 was inspected in packages/AutomorphyLiftingBeyondTaylorWiles/design/README.md; it assumes full B^gal, so the existing residual-only gap remains necessary. Ownership against an unavailable open pull-request head was not checked. No unavailable head was invented or used to broaden that contract.

The initial citation leads IntBar and IsFrobAt are definitions in the ClassicalSerreModularity signature file, lines 48 and 56 of the service's rendering. LocallySymmetric.IsEisensteinCG is specified in ArithmeticLocallySymmetricSpaces ALS.4.10; it is a supplier target, not a pinned library declaration. These citations do not claim an import from an unmerged roadmap. The citation resolver reported no unresolved cross-roadmap citations. Its library-name phase said no pinned Lake packages were available to it; library evidence was checked directly in the supplied pinned checkout.

The pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Native declarations were checked by object and by name: Ideal.inertia in Mathlib/RingTheory/Ideal/Defs.lean:154; IsArithFrobAt and its inertia comparison in Mathlib/RingTheory/Frobenius.lean:183,200; Matrix.det_fin_two in Mathlib/LinearAlgebra/Matrix/Determinant/Basic.lean:809; scalar matrices in Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean; groupHomology.indIso in Mathlib/RepresentationTheory/Homological/GroupHomology/Shapiro.lean; analytic forms in Mathlib/NumberTheory/ModularForms/Basic.lean:72,80. The latter are complex analytic forms, not torsion Katz cohomology.

TauCeti/NumberTheory/ModularForms/Newforms/Newform.lean:104 supplies the actual nonzero normalized newform carrier; its eigenform and uniqueness inputs are in Eigenform.lean and Newforms/StrongMultiplicityOne.lean. TauCeti/NumberTheory/Chebotarev/Density/Chebotarev.lean:51,74 supplies density and infinitude. TauCeti/Algebra/MonoidAlgebra/Exactness.lean:115,120 supplies augmentation and its basis values. The modular-symbol Hecke algebra in TauCeti/NumberTheory/ModularForms/ModularSymbols/Hecke/Finite.lean:54 is an endomorphism algebra of modular symbols; it does not provide a Galois action on Jacobian torsion. Object searches found no replacement for the missing arithmetic carriers listed in Suggested.lean.

## Adversarial mathematics pass

The values below were recomputed from the definitions, matrices, character sums, module bases and source hypotheses. These are discriminating tests and proof-route audits, not proofs of the planned deep theorems. Every numbered target has its own row; shared definitions, conventions and the new contracts have separate rows. Every new Check is prose in the README. No boundary theorem or API lemma was added to Suggested.lean.

| Statement | Instances tried | Values computed on both sides | Result | Change |
|---|---|---|---|---|
| Coefficients and CNL maps | ℤ₃; 𝔽₃[[t]]; zero ring | Characteristics 0,3,1; residue cardinalities 3,3,1 | Only the first meets the coefficient convention; compatible residue maps have equal scalar images | None |
| Reciprocity | Arithmetic character value 2 in 𝔽₇ | Geometric value 4; 2·4=1 | Inverse convention fixed | None |
| Good Hecke coefficients | j=1,x=2,n=1,d=3,a₂=4,a₀=1 | Guarded a_(j/x) term 0, answer 4; unguarded answer 7 | Nondivisible-index convention necessary | None |
| Bianchi ordinary/flat conventions | μₚ⊕ℤ/p; Kummer class p versus a unit | Inertial characters ε̄,1, product ε̄; valuations 1 versus 0 | Ordinary line alone does not give finite flatness | None |
| IsUnramifiedAt | Trivial inertia; diag(ζ₃,1); ℓ=1 | I₂; nonidentity; no prime over the unit ideal | Prime binders avoid vacuous arithmetic output | None |
| Arithmetic Frobenius | 𝔽₂₇, t³=t+1 | Arithmetic t↦t+1; inverse t↦t+2; t²⁷=t | Directions differ | None |
| twist | diag(2,3),η=2 over 𝔽₇; inverse η=4 | diag(4,6),trace 3=2·5,det 3=4·6; inverse restores diag(2,3) | Identity, composition, inverse and determinant-square laws agree | None |
| IsAdicallyContinuous | Field; O[e]/e² | Maximal ideal 0 gives discrete topology; (π,e)²=(π²,πe) | Nilpotents remain visible | None |
| IsReducibleOn | Diagonal; S₃ standard over 𝔽₅; H=1 | Coordinate line dimension 1; S₃ common invariant lines 0; H=1 every line invariant | Absolute and subgroup tests discriminate | None |
| inertiaInvariants | I₂; diag(u,1),u−1 unit; diag(4,1) over ℤ/9 | A²; Ae₂; 3Ae₁⊕Ae₂ of cardinality 27 versus 9 for a free line | Actual fixed submodule required | None |
| IsWeightOneResidual | p=3,c=diag(1,2); diagonal global action; p=2 | det c=2=−1; diagonal invariant line dimension 1; 3≤2 false | Oddness, irreducibility and p-bound visible | None |
| IsMinimalLift | k=𝔽₃,det 4 or 1 in ℤ/9; new inertia kernel | 4²=7≠1; 1²=1; two distinct lifts with equal reduction violate injectivity | Teichmüller determinant and full inertia retained | None |
| Minimal modularity headline | ρ=ρ₀ψ²,η=ψ,ψ³=1 | ηρ=ρ₀; (detρ)²=ψ²≠1; trace/det 5,6 before η=2 become 3,3 in 𝔽₇ | Conclusion concerns original ρ | No weakening |
| Finite-image headline | Same twists; image sizes a,b | Untwisted image size ≤ab; cubic case bound ≤3a | Finite untwist preserves conclusion | No weakening |
| Duality convention | n=2,x=2,section eigenvalue 2; n=1 | Homological eigenvalue 2⁻¹·2=1; factor at n=1 is 1 | Dual direction fixed | None |
| Hasse socle convention | θV₃(q) in ℤ/9 versus 𝔽₃ | 3q³≠0 versus 0 | Theta argument is on the socle | None |
| 0.1 Level datum | Q=∅,Δ=1; p=3,class (1,2) | Degree 1; ratio 1 versus r=r⁻¹=2; class density 1/cardinality(G)>0 | Fine model and conductor descent distinct | None |
| 0.2 Hecke datum | X³−2 standard S₃ representation over 𝔽₅ | Transposition det 4=−1; 3-cycle trace 4,det 1; −108≡2 mod5; common lines 0 | Modularity precedes Katz optimization | F04 |
| 0.3 Dual coherent homology | Degrees 0,1; torsion k | Corresponding degrees 1,0; dual length 1 versus generic dimension 0 | Shift preserves integral torsion | None |
| 0.4 Weight-one duality | n=1 and n=2,x=2 | Scalars 1 and 1/2; eigenvalue 2 becomes 1 in weight 2 | Higher-weight scalar retained | None |
| 1.1 Correspondence matrices | x=2,T=0,d=3 over ℚ | U=[[0,6],[−1/2,0]],U²=−3I; charpoly X²+3 | Columns fix normalization | None |
| 1.2 Selected root | x=1,roots 1,2 in 𝔽₅; roots 1,1 | Pairing det 8−9=4=−(1−2)²; repeated det 0 | One selected copy needs distinct roots | None |
| 1.3 Harmless multiplicity | x=2,roots 1,1 in 𝔽₅; roots 2,1 | Determinants 3,0; repeated U−I≠0 but (U−I)²=0 | Repeated-root factor has two copies | None |
| 1.4 Coherent descent | Δ=1; trivial k over O[C₃] | Tor₁(−,O)=0 for Δ=1; C₃ resolution maps on k are 0,so Tor₁=k | Right-exact edge term necessary | None |
| 1.5 Balanced homology | Δ=1,M=k; M=Sʳ; M=0 | Betti pairs (1,1),(r,0),(0,0),defects 0,r,0 | Rank-minus-Tor agrees | None |
| 2.1 Hasse action | T=0,d=3 over ℚ; T=3,d=2 in 𝔽₅ | Ue₂=(3,0),U²=−3I; roots 1,2,det 2 | Column and unit tests hold | None |
| 2.2 Individual projections | T=3,d=2 in 𝔽₅ | Eigenvectors (4,1),(3,1); e₁=v₁+4v₂; whole-double projector kernel dimension 1 | First-column injectivity is the claim | None |
| 2.3 Ordinary image algebras | O²→O; π acting on O/π² | Kernel 0×O,image O; π operator nonzero before mod-π reduction,zero after | Images not automatically injective or flat-base-change images | None |
| 2.4 Quadratic doubling | Split roots 1,2 in 𝔽₅; repeated root 1 | Full dimension 2,selected dimension 1; repeated length 2 versus reduction length 1 | Full algebra required | None |
| 3.1 Wiese criterion | Jordan cyclic module; S₃ standard module | Diagonal/difference sequence dimensions 2→4→2,composite 0; Jordan N≠0,N²=0; S₃ common lines 0 | Split sequence works for nonabelian groups too | None |
| 3.2 Doubling annihilator | A=T̃; A⊂A[X]/monic quadratic | Relative modules 0,AX; annihilators A,0 | Extreme ideals in correct direction | None |
| 3.3 Scalar comparison | c=2,U=6 in 𝔽₇; A⊂A[β]/β² | Normalized U=4·6=3; relative free line annihilator 0 | Normalization and nilpotents retained | None |
| 3.4 Three Frobenius cases | diag(1,2),Jordan(1),I₂ in 𝔽₅ | (trace,det)=(3,2),(2,1),(2,1); repeated eigenspace dimensions 1,2 | Discriminant cannot detect scalar case | None |
| 3.5 Hecke-valued representation | Square root of 4 in 1+3ℤ/9; p=2 control | 7²=4,unique in {1,4,7}; roots of 1 mod4 are 1,3 | Odd-prime normalization necessary | None |
| 4.1 Weight-one patching | q=1; Δ=C₃ | q−1=0,A∞=O; augmentation of 1,g,g² is 1 | Variable count and coefficient-sum correct | None |
| 4.2 Minimal R=T | R=T=k,H=k; H=0 | Free rank 1,annihilator 0; zero module annihilator R | O-flatness unnecessary; H≠0 necessary | Upstream F04 |
| 4.3 Torsion rank one | T=k[e]/e² | Length 2; dual m-eigenspace dimension 1; generic dimension 0 | Generic fibre cannot prove torsion rank | None |
| 4.4 Minimal modularity | diag(2,3); new p-power inertial determinant | Trace/det 5,6; inverse 5/6,1/6; Teich(χ̄)ψ≠Teich(χ̄) | Frobenius and minimality discriminate | Upstream F04 |
| 4.5 Universal finite image | Torsion ideal size s; O[e]/e² | Matrix fibres ≤s⁴; {I+aeE₁₂} infinite for infinite O | Reducedness and torsion kernel both needed | None |
| 5.1 Vexing coefficient datum | x=5,p=3,ord θ₀=8,ord λ=5,aλ=2; λ=1 | aθ=2,a(θ/θσ)=1,induction conductor 4; m=1,n=2; corrected Hom 1 versus wrong (16−20+4)/24=0; λ=1 gives n=m,Hom 1 | No vexing prime excluded | F01 |
| 5.2 Invariant-pushforward bundles | G=1,W=O; tame exponent 2,e=5 | L=O,Lsub=O(−C); invariant line q²O[[q⁵]] with inverse character in W | Bundles differ at the cusp | None |
| 5.3 Freeness/base change | Same tame line; free C₃ torsor in characteristic 3; W=0 | Reduction q²k[[q⁵]] rank 1; torsor descent rank 1 versus averaging norm 3=0; W=0 rank 0 | Torsor/tame descent replaces global averaging | None |
| 5.4 Cusp duality | e=5,i=2 and i=0 | q⁻²·q⁵=q³; trivial-character subline q⁵O[[q⁵]] | Downstairs cusp twist correct | None |
| 5.5 High-weight vanishing | Trivial W,n=2; W=0 | Dual full obstruction cusp weight 0 has dimension 0; dual subcuspidal obstruction full weight 0 has constants dimension 1; W=0 gives both 0 | Thresholds n>1,n>2 differ | None |
| 5.6 Type Hecke correspondences | Diamond 2 in 𝔽₇; trivial W | Transpose 4,second transpose 2; trivial coefficients recover original matrices | Inverse-diamond convention consistent | None |
| 6.1 Typed degeneracy | A=[[2,3],[3,4]],tensor rank 2 in 𝔽₅ | det A=4; det(A⊗I₂)=1; selected dimension 2 versus full old dimension 4 | Both determinants units | F05 |
| 6.2 Typed balancedness | Trace 5,det 6,diamond 2 in 𝔽₇; r=2,Tor-dimension 1 | Dual trace 2,diamond 4; defect 2−1=1 | Transported residual ideal correct | None |
| 6.3 Typed Galois representation | Two interchanged components; x=5 norm twist | Equivariance transports 0 to both components; diag(0,1) fails equivariance; corrected Hom 1 versus wrong 0 | Correct type precedes descent | F01 |
| 6.4 Typed R=T/rank | Diamond 2,dual 4; generic selector dimension 1 or 0 | Double inverse 2; r·1=1 forces r=1,r·0=0 holds for every r | Nonzero generic fibre necessary | Upstream F01 |
| 6.5 Twist-general conclusions | Cubic ψ,ρ=ρ₀ψ²,η=ψ; image sizes a,b,c | ηρ=ρ₀ψ³=ρ₀; (detρ)²=ψ²≠1; untwisted image ≤abc | Original ρ in both conclusions | Upstream F01,F04 |
| 7.1 Multiplicity characters | Φ=C₃; C₂ control | Squaring sends (1,g,g²) to (1,g²,g); on C₂ both squares 1 | Half-twist uses odd p | None |
| 7.2 Integral global type | A=O·1+πO⁴; B=O[t]/∏(t−iπ),i=0,1,2,3 | Both rank 4,generic K⁴; A/πA basis 1,x₁,x₂,x₃,radical square 0,socle dimension 3; B/πB basis 1,t,t²,t³,socle dimension 1 | Generic fibre does not determine integral type | F02 |
| 7.2 Numerical parameter step | Toy source A[[z]] for preceding A;r=1,j=0 | Source dimension 2=0+1+1; (z,π) parameter sequence; quotient by z is A of type 3,not a regular ring | Regular sequence,not regular quotient ring | F02 pattern repair |
| 7.2 Fixed-character finiteness | m O-generators; monic quadratic adjunction; Steinberg quotient | Generators r_i,αr_i,count ≤2m; quotient images still ≤2m | Finiteness inherited from earlier owner | F03 |
| 7.2 Variable determinant collision | (ψ,1),(1,ψ⁻¹),ψ odd order >1 | Determinants ψ≠ψ⁻¹; both normalized unordered pairs {ψ¹ᐟ²,ψ⁻¹ᐟ²} | Normalization does not prove injectivity | Separate local/global contracts |
| 7.3 Integral twisting | O[C₃]; congruence order in O² | Three group basis terms recovered; congruence order index cardinality(k),both generic K² | Integral generators necessary | F02 condition explicit |
| 7.4 Scalar multiplicity | Connected dimension 3,étale dimension 1; residual dimension 2 | 3≤d≤4; {3,4}∩2ℤ={4}; multiplicity 4/2=2 | Isotypy supplies evenness; m-torsion only left exact | F02 condition explicit |
| 7.5 Other multiplicities | Jordan(1),I₂; p=3 quotient test | Both discriminants 0;nonscalar multiplicity 1 versus conditional scalar 2;3≠3 false | Quotient restrictions retained | F02 condition explicit |
| 8.1 Bianchi minimal data | Flat ordinary residual; quadratic-twisted unipotent inertia | Flat example determinant ε̄; quadratic χ eigenvalue −1≠1 with nonzero unipotent part | Flat precedence and local-type distinctions necessary | None |
| 8.2 Bianchi types/levels | Scalar aI;quadratic ψ;norm 7 versus 5,p=3 | a/d=1,ψ(a²)=1;p-parts of norm−1 have sizes 3,1 | Quadratic selector descends;diamond dimensions retained | None |
| 8.3 Bianchi Hecke images | U=2,diamond 3 in 𝔽₇;π-torsion image | Changed U=6 versus 2;π acts 0 | Uniformizer invariance needs trivial residual diamond | None |
| 8.4 Conjecture A | T=k[e]/e²;one auxiliary level versus all | e≠0 in T but 0 in k;Q=∅ covers 1 level,not the family | Whole-image and all-level hypotheses retained | None |
| 8.5 Galois-to-Hecke map | Roots 2,4 in 𝔽₇,det 1;repeated 1,1 | Trace 6,derivatives 5,2;repeated derivative 0 | Chosen Hensel root recovered in distinct case | None |
| 9.1 Diamond cover | Δ=1,C₃ | Regular module ranks 1,3;coinvariant ranks 1,1;augmentation [g]=1 | Groupoid homology,not coarse quotient | None |
| 9.2 Selected-root homology | Norm 1,roots 2,4 in 𝔽₇;repeated roots | Pair det 4−36=3=−(2−4)²;α²−1=3;repeated det 0 | Residual-only gap and distinct roots retained | None |
| 9.3 Amplitude/boundary | C₃ point in characteristic 3;coarse point;component exchange | H₃ dimensions 1,0;degree-two exchange eigenvalues 2,−2 versus 2,2 for 2I | Stabilizers and component permutations matter | None |
| 9.3 Boundary prime condition | F=ℚ(i),p=3;F=ℚ(√−3) | Unit order 4≡1 mod3 invertible;second discriminant −3 divisible by3 | Boundary/interior 3-torsion inputs separate | None |
| 9.4 Bianchi balancedness | Δ=1,M=Oʳ⊕kˢ;r=2,Tor-dimension 1 | Betti dimensions r+s,s,defect r;edge bound gives 2−1=1 | Torsion retained in defect | None |
| 10.1 Bianchi patching | q=1,a=1,p=3 | A∞ has 0 variables;Δ=C₃ has 3 basis terms,augmentation kernel rank 2 | H₃ hypothesis does not replace all-level Conjecture A | None |
| 10.2 Bianchi R=T | T=k,H=k²;H=0 | Free rank 2,generic dimension 0;zero module annihilator T | No universal rank-one/O-flat conclusion | None |
| 10.3 Dimension-zero CI | O/(π²);O/(0) | Dimensions 0,1;lengths 2,infinite;regular π² versus zero divisor 0 | Dimension hypothesis necessary | None |
| 10.4 Generic automorphic rank | Global multiplicity 1,local dimensions 2,3;S-only factors | 1·2·3=6;all local dimensions 1 gives 1 | Actual finite-level multiplicity retained | F06 |
| 10.5 Semistable lifting | π-killed Hecke ring,target O | π=0 in source but π≠0 in O | O-point forces nonzero generic fibre | None |
| 10.6 GL/PGL obstruction | C₃;h=9,𝔽₁₉×,g=2,α=g³=8 | Scalar rank 1 versus group-ring rank 3;α⁶=1,α²=7≠1 | Cubic test does not give ninth-power splitting | None |
| New selector contract | m=1,aλ=2;λ=1;quotient kernel | n=max(1,2)=2;n=max(m,0)=m;on 1+xⁿ matrices both type and determinant character act as 1 | Quotient kills both actions | F01 |
| New global type contract | The two rank-four orders above | Equal rank 4,generic K⁴,length 4;unequal types 3,1 | Integral type/local-factor/parameter verification explicitly requested | F02 |

For the enlarged type quotient, the tame cusp argument still uses cusp inertia, not all of GL₂(Z/xⁿ). At a vexing x its non-scalar cusp group has factors of orders dividing powers of x and x−1; x≡−1 mod p makes both prime to p. Thus the tame character-line checks in §§5.2–5.6 remain applicable. The two-component and inverse-diamond witnesses were recomputed in Layer 6. No invertibility of the whole type-group order was introduced.

The fixed-character local complete-intersection argument in §7.2 is separated from the variable-determinant family: its global type is the explicit new deliverable, not an inference from the local type at p. The eigenvalue normalization remains c⁻¹Uₚ, homological coefficients remain contragredient, and arithmetic/geometric reciprocity remains inverse. Added formulas have nonvanishing denominators: x≠p is a unit in O, p is odd for half-twists, and selector exponents have m≥1.

## Checks and exact outcomes

- Required elaboration of the absolute pathname of packages/GL2ModularityLiftingPartII/Suggested.lean, using lake env lean from the supplied content checkout: **exit 0**. Only the two expected “declaration uses sorry” warnings at lines **136** and **178**. The used Tau Ceti Newform object file was present; no targeted build was necessary.
- One scratch signature file containing the acceptance file followed by #check @name for **all nine declarations** elaborated once: **exit 0**. The seven real-bodied definitions agree with the README conventions. Both theorem types retain DVR, finite ℤₚ-algebra, characteristic-zero, local scalar-map, finite residue-field, residue-characteristic and completeness hypotheses. The CNL theorem also retains Noetherianity and commuting residue identifications. Both retain continuity and finite-image/unramifiedness of the twist; minimality is on the normalized twist, and conclusions concern the original representation. **No binder or Lean signature needed changing.**
- Suggested.lean is unchanged: seven necessary simple definitions, two deep admitted headlines, one Mathlib import and one used Tau Ceti module. The module docstring identifies each remaining headline and its missing carrier. No API, boundary-case, or computation declaration was introduced.
- The final dependency-direction command, with --name GL2ModularityLiftingPartII --movable and the supplied README/order arguments: **exit 0**, with exactly:

    depcheck: 56 roadmaps, 644 edges, 0 problem(s)

There is no UPWARD, CYCLE or moved line. PotentialModularityAndCompatibleSystems is earlier than this roadmap. The two new gaps also name earlier suppliers; the merge-order file is untouched.

- All **20** unique supplier gaps have exactly matching supplier/needs sentences in README and plan. Structural comparison proves every top-level plan value except gaps is unchanged. The local gap's explanatory detail now assigns only local work; the separate global gap owns its integral conclusion.
- All eleven layer summaries were compared with external Needs. The three inputs specified in F06 and the additional Layer 6 boundary input each changed from (1,0) to **(1,1)**. Grouped Layer 9 section citations already cover its individual Needs and remain unchanged.
- Independent scratch arithmetic calculation: **exit 0**. Scalar/tensor determinants **4,1**; character contributions **16,−16**, wrong-selector Hom **0**; S₃ transposition determinant **4**, 3-cycle trace/determinant **4,1**, discriminant residue **2**; Kummer powers **1,7**. Module-basis calculations give socle dimensions **3,1**.
- git diff --check passed. No separate gate failures were listed in the brief. The citation resolver found no missing cross-roadmap citation; its unavailable library-name phase was supplemented by direct pinned-source checks.

Only packages/GL2ModularityLiftingPartII/README.md, its permitted top-level plan gaps, and this report changed. Metadata and sources are unchanged. No source was missing: cg18 and cg20 were read in the legal cache; cg22 remains settled as uncertified at pp. 855–856 without another request. No source passage was copied into this package or report. No GitHub write, commit, order edit or library edit was made. No Lean process remains running.

The maintainer should carry the two new gap deliverables to their named earlier owners. Their future proofs are not certified here. All existing headline names, all vexing primes, p=3, and the explicit scalar/Bianchi conditional extensions are preserved. No consumer needs a Lean-name migration.
