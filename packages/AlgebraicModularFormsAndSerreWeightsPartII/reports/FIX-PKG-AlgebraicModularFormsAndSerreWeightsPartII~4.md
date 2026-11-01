# Repair report: algebraic modular forms and Serre weights, Part II

## F01 (P1) — applied

Arbitrary tame literal degree p+1 → e(p+1), with e-element integrality fibers and corrected neighbor counts. Spherical formulas now use the actual local p-correspondence with transported tame markings. Repaired §§5.2–5.3, 5.6–5.7, 6.1–6.3, 7.3, 7.6–7.7, 9.4, conventions, supplier contracts, downstream and worked examples; aligned the acceptance docstring. Added level-35, p-divisible-e and characteristic-two controls.

### Mathematical evidence and scope of the repair

The finding is correct. Write J=Γ̄∩gΓ̄g⁻¹. For γ∈Γ̄, the condition g⁻¹γg∈SL₂(ℤ) is divisibility of its upper-right entry by p. Its additional tame condition is red_N(γ)∈H∩gHg⁻¹. Reduction modulo Np is surjective and p∤N, so the two conditions give independent factors p+1 and e in [Γ̄:J]. The image of adj(M)ᵗ is unchanged by M→Mγ. Its rank-one reduction detects exactly the obstruction to integrality of p⁻¹adj(M)Qadj(M)ᵗ. Thus each projective root has e literal preimages.

Independent finite enumeration gave |SL₂(𝔽₃)|=24, triangular subgroup size 6, |Stab⟨(1,1)⟩⊂SL₂(𝔽₅)|=20 and intersection size 4. The 20 quotient representatives have five occurrences over each of the four projective points. Admissible counts for 0,x²,x²+y²,xy are 20,5,0,10, respectively. These calculations verify the review's counterexample without imposing a smaller level class.

The local element has p-component diag(p,1) and identity tame component. Its hyperspecial binary Levi branches are the p+1 index-p lattice modifications. The target marking travels through the prime-to-p isogeny isomorphism; it is part of the coefficient, not a forgotten label. The literal tame comparison uses intermediate group H∩gHg⁻¹, source inclusion, and target conjugation by g⁻¹. Equality of the sums requires e=1 and the specified tame relabeling. No equality of transported sums is inferred by dividing a cardinality by e.

The repair also retains the central marking in local reciprocity: a branch and its dual compose to [p]. The normalized binary index is unchanged by pI₂, while tame marking η becomes [p]η and the degree-d symmetric coefficient map is p^d. The literal Γ(5) orientation example therefore survives; neither orientation nor the coefficient map becomes an unmarked inverse.

CG20 Lemma 8.3 and its accompanying tame-level assertion are at internal p.58 (858), CG20 line 2273–2303; Lemma 8.4 and the scalar formulas are at pp.58–59, CG20 line 2306–2346. Definition 8.19 and Lemmas 8.20–8.21 are at pp.72–73, CG20 line 2773–2815. The tame-level assertion does not justify discarding the extra index. P20 §5.1.3, p.21, P20 line 902–910 defines the spherical local Hecke algebra. Its use here is distinguished from the literal rational binary double coset.

All added controls are README prose. No new Lean declaration was added, and no existing declaration was renamed or deleted. The repair changes the meaning of the prose symbols Z and Z₂ at arbitrary tame level to the local spherical operators; Z_Δ and UZ_Δ denote the literal sums. Consumers of the former literal interpretation must use those separate sums and their tame transports.

### Ownership, citations and pinned inputs

The main checkout inspected was 7922565e8b5d3420ff251821a1b3b042fabe96c8. The three shape examples read were TauCetiRoadmap/AlgebraicVectorBundles/README.md, TauCetiRoadmap/ModularForms/README.md and TauCetiRoadmap/SchemeAndStackFoundations/README.md. Main copies were used where present; the roadmap service supplied the indexed open heads for the other named suppliers. Cross-roadmap citations were resolved again, and the cited supplier sections were opened.

| Supplier and section | Verified boundary of supply |
|---|---|
| AlgebraicModularFormsAndSerreWeights R15.1–R15.6 | Elliptic geometric forms, integral coefficients, Hasse/theta, Serre weights and classical residual attachment; genus two remains this Part II. |
| AlgebraicVectorBundles L0A–L0C | Sheaf tensor, finite locally free operations, symmetric/exterior powers and determinant; no new generic bundle target was introduced. |
| ModularForms Layer 2 | Generic Hecke ring, finite coset theory, elementary divisors and full-level/Γ₀/Γ₁ cases; no arbitrary-Γ degree-p+1 theorem. |
| AdelicAlgebraicGroups §4.5 | Finite-adelic Hecke correspondence and relative-index degree, including the example supported at p and identity elsewhere. Its finite-coset/rational maps are imported; this package owns the binary cusp comparison and integral extension. |
| ClassicalArithmeticCompletion §1.17 | Nonzero odd-characteristic binary form has 1+(Δ/p) projective zeros; identically zero form has p+1. The root theorem itself requires no repair. |
| AutomorphicBundles B2.1; B3.2–B3.4, B3.10; B4.19–B4.20; B5.10–B5.11, B5.14–B5.15, B5.19 | Actual coefficient sheaves, sheaf-first modules, all-component expansions and rational pullback/trace with source/target cusp data. B5.11 requires the actual Mackey decomposition, not an arbitrary Cartesian level square. |
| ShimuraCompactifications C3.8–C3.9; C5.3–C5.4, C5.10, C5.12, C5.16–C5.17, C5.23 | Spherical models, refinement, boundary charts, component detection, logarithmic Kodaira–Spencer, minimal contraction, ampleness and Koecher. The parahoric extension remains its existing declared gap. |
| AbelianSchemesAndArithmeticModuli A4.3, A4.7, A4.9–A4.11 | De Rham on the stated base, structured deformation and ordinary weighted coordinates. Rank-one, logarithmic and trace-ideal additions retain their declared gaps. |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.2.2, R07.2.21–R07.2.23 | Constant-rank filtration, determinant Hasse/LF, exact crystalline complexes, dual coranks and odd-prime polarization hypotheses. |
| HodgeTateAndCanonicalSubgroups §§0.12, 0.14–0.16, 5.1–5.2 | Lattice-first normalized determinant, primary semiabelian Hasse, minimal descent and Hilbert Igusa torsors; the full genus-two tower remains its declared gap. |
| SchemeAndStackFoundations §§0.6, 2.5–2.7, 2.19–2.20, 4.9 | Hartogs, colimits, ample vanishing, supports, duality and proper formal functions. The open-formal, fundamental-class and propagation extensions retain their declared gaps. |
| ReductiveGroupsPartII RG2.3.7 | Smooth geometrically connected finite-type Frobenius Lang theorem, including the named Lang.lang_surjective. This settles the supplied citation lead: it is a supplier target, not a pinned-library assertion. |
| OverconvergentAutomorphicForms Layers 5–6 | Analytic coefficients and comparisons; no competing owner for the integral binary cusp calculation. |

The ownership search used `roadmaps grep` across main and the indexed open heads, and object searches in board package/design READMEs and Lean files. Generic local correspondences belong to AdelicAlgebraicGroups §4.5, and generic full-level/congruence Hecke decompositions to ModularForms Layer 2. The new work here is their marked binary-index comparison and tame-fiber calculation. The CM lattice-neighbor discussion in LubinTateFormalModulesAndQuasiCanonicalLifts concerns CM conductor levels; it does not supply this binary coefficient comparison. The GSp4NonregularModularityLifting design consumes the binary-neighbor argument. Ownership against open pull requests without supplied/indexed readable files was not checked.

The frozen design prose also contains the old determinant-p count in packages/AlgebraicModularFormsAndSerreWeightsPartII/design/README.md and the plan's node text. Those files/fields are outside this repair's edit permission; they were not changed. The authoritative package README and acceptance file carry the corrected statements. No new supplier gap is needed: the generic correspondence already has an earlier owner, and the specialized comparison is explicitly a target here. All eight existing gap slugs still match their Exact supplier contracts.

Pins read from lake-manifest.json were Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039.

| Pinned declaration and file | Evidence used |
|---|---|
| HeckeRing.GL2.degree_diagCoset_prime_pow, TauCeti/NumberTheory/HeckeRing/GL2/Degree.lean:54 | Degree p^(k−1)(p+1), with p prime and k>0, at full level. Imported rather than rebuilt. |
| HeckeRing.GL2.doubleCoset_natDiagGL_eq_iUnion_rightCosets_of_prime, TauCeti/NumberTheory/HeckeRing/GL2/Gamma1/CoprimeCosets.lean:325 | Γ₁(N), prime and twist-matrix hypotheses. The arbitrary-subgroup theorem at line 305 proves distinctness, not covering. |
| HeckeRing.GL2.doubleCoset_natDiagGL_Gamma0_eq_iUnion_rightCosets_of_prime, TauCeti/NumberTheory/HeckeRing/GL2/Gamma0/Diagonal/PrimeCosets.lean:124 | Γ₀(N), prime and twist-matrix hypotheses; translate its ΓM orientation. |
| Representation.symmetricPower, TauCeti/RepresentationTheory/SymmetricPower.lean:47 | Real-body induced action on native symmetric tensors; coefficient type in Type, commutative semiring, monoid. |
| TauCeti.stdSLRep and stdSLRep_apply, TauCeti/RepresentationTheory/ClassicalGroups/Restriction.lean:44,49 | Standard SL action is multiplication on columns; coefficient extension is entrywise. |
| Representation.IsIrreducible, Mathlib/RepresentationTheory/Irreducible.lean:29 | IsSimpleOrder on subrepresentations; nonzero one-dimensional trivial representations are allowed. |
| TauCeti.SU2.isIrreducible_symPower, TauCeti/RepresentationTheory/SU2/Irreducible.lean:164 | Complex SU(2) theorem, not finite SL₂ in characteristic p. It does not make the kept headline an imported one-line theorem. |

Searches of both pinned libraries found no integral genus-two moduli/Igusa/Klingen carriers or matching finite-SL₂ symmetric-power irreducibility theorem. The repaired geometric headlines still require the missing carriers listed in Suggested.lean; no arbitrary predicate or unmarked scalar substitute was introduced. All eight lifetime source entries remain certified and unique. The repair uses the supplied legal CG20 and P20 extractions and needs no additional source or reference request. No source passage was copied.

### Computed adversarial mathematics pass

Each row records explicit values, including negative models. Rows for geometric targets test their defining formulas, domains and boundary examples; these finite checks do not prove the geometric theorems. Every numbered subsection and every changed construction is represented below. “Retained” means its computed control remained valid; “repaired” refers to the changes described under F01.

| Statement | Instances tried | Values computed / competing value | Result | Change |
|---|---|---|---|---|
| Coefficient convention | O=ℤ₃; ϖ²=3; characteristic-3 DVR; zero module | v_ϖ(3)=1 or 2; in equal characteristic 3=0, so that DVR is outside finite-over-ℤ₃ scope; tensor with 0 gives 0 | Domains distinguish ramification and zero coefficients | Retained |
| Weight convention | (j,k)=(2,2),(3,2),(1,2) | Symmetric degrees 0,1,−1; last excluded, not truncated to 0 | Negative determinant powers and symmetric degree separated | Retained |
| Index and central conventions | Q=x²+y²; diag(2,1),diag(1,−1),3I₂ | Transforms 2x²+y²/2, −x²−y², Q; discriminants −4,−4,−4; last coefficient map at d=1 is ×3 | Cone and coefficient transports have different domains | Retained; central transport explicit in reciprocity |
| Local versus literal convention | p=3, full level and level 35 | Degrees 4=1·4, 20=5·4; local constant always 4 | Literal index cannot define the spherical middle branch sum | Repaired |
| §1.1 sheaf-first form/cusp modules | M=0; O[t], D=(t), M=O/ϖ² | Sections with M=0 are 0; tM[t]→M[t] has kernel 0; quotient is M, not 0 | Boundary inclusion survives arbitrary coefficients | Retained |
| §1.1 coefficient exact sequence | Boundary-free zero sheaf; H¹[ϖ^m] term | Zero sheaf gives 0→0→0→0; a nonzero connecting class is an element of H¹[ϖ^m], with no lift from H⁰/ϖ^m | Tensoring H⁰ is not the definition | Retained |
| §1.2 normalized action and native dictionary | Q=x², upper unipotent T | Normalized T·Q=x²; native T•Q=x²−2xy+y²; native (Tᵗ)⁻¹•Q=x² | Transpose-inverse fixes convention | Retained |
| §1.2 primitive/discriminant distinction | x²; x²+y² at p=3 | Δ=0 but first reduction nonzero; second Δ=−4≡2, det=1 | Primitive is not discriminant-nonzero | Retained |
| §1.3 support and all-component expansion | m=n=1; m=n=N; X₁⊔X₂, section (0,1) | Middle indices −2,…,2 and minimum −2N; expansions (0,1), first-component restriction 0 | No global Laurent lower bound or one-component detection | Retained |
| §1.4 saturation | Constants ϖ,1/ϖ,0 | Coefficients ϖ,1/ϖ,0; only first is divisible by ϖ integrally, second is not integral, third corresponds to M=0 | Correct lattice controls | Retained |
| §2.1 rank loci | Ordinary surface, torus plus supersingular elliptic curve, superspecial surface | Multiplicative ranks 2,1,0; rank-one point satisfies both ≤1 and ≥1 | Boundary not discarded | Retained |
| §2.2 dimensions and splitting | r=0,1,2; p=3 | Dimensions 1,2,3; codimension 3−1=2; superspecial point count 3²+1=10; Hodge degrees −1,3; λ degree 2 | Spherical component data consistent | Retained |
| §2.2 maximal bundle degree | Sym^(a−b)(O(−1)⊕O(p))⊗O(b(p−1)) | Maximum p(a−b)+b(p−1)=pa−b; p=5,a=b=−1 gives −4 | Exact weight formula | Retained |
| §2.3 crystalline sign and tangent determinant | Fe₂=−pe₃, Fe₃=e₂; Y=ε in k[ε]/ε² | Pairing p versus −p for unsigned model; det[[−Y,0],[−Z,1]]=−ε≠0 | Sign and simple zero witnessed | Retained |
| §2.3 tangent constraints | X=Z, X=0, Z=0 with Y=ε | Hasse linear term −ε in each case; adding Y=0 would give 0 | Both paramodular branches retain transverse direction | Retained |
| §2.4 Hasse multiplication | Split torus; rank-one fiber; p=5 | det I₂=1; rank-one determinant 0; h·1=h≠0 and Θh=0 at weight 4 | Section injection differs from fiber invertibility/theta | Retained |
| §3.1 secondary section and boundary | p=3, μ_p⊕I_(1,1)⊕ℤ/p; connected part | Weight (3−1)(3+1)=8; h=0, h′ a unit; height 4→3, Hodge dimension 2→2 | Connected recipe necessary | Retained |
| §3.2 duality | Normalized split height-four input; connected height-three boundary | Secondary values 1→1→1; height-three dual dimension is 1, rather than 2 | Self-dual claim has correct height domain | Retained |
| §3.3 canonical subgroup and line maps | V*=[[0,1],[0,t]]; rank-one open | Image a free rank-one summand; orders of V_H*,W,Z are 1,1,0; on multiplicative open V_H* is a unit | Image-of-V construction distinguishes subgroup | Retained |
| §3.4 normal extension | V_H*=W=t,Z=1; rational t⁻¹ | Valuation (p+1)−(p−1)=2; t⁻¹ has square t⁻² of valuation −2 | Square-regular criterion excludes a pole | Retained |
| §3.4 two rank-drop directions | Multiplicative-only and étale-only drop | Orders of (A,B_D) are (2,0) and (0,2); product has order 2 in each | Product records both drops | Retained |
| §3.5 Iwahori quotients | a=y=0,x=−bc; x=0,y=−ac | Both relations 0; quotient dimensions 2 and 3; imposing ab=0 yields dimension 2 | Ambient three-space not mistaken for surface | Retained |
| §3.5 nodal union | (a,b)=(1,0),(0,1),(1,1),(0,0) | ab=0,0,1,0; first two rank-one, last intersection | Branch controls discriminate | Retained |
| §3.6 gluing and secondary multiplicity | Branch sections a²,b² and incompatible 1,0 | Intersection restrictions 0=0 versus 1≠0; glued section a²+b²; local secondary order 2 | Gluing and nonreduced zero scheme distinguished | Retained |
| §3.7 polarized root | p=3,5,2; local t; polarization ×2 at p=5 | Root weights 4,12,3/2; last excluded; lengths of R/(t),R/(t²) are 1,2; root factor 2²=−1, square factor 2⁴=1 | Polarization fixes root; oddness necessary | Retained |
| §3.8 normalized isogeny | [p] on μ_(p∞) and its square; identity | p⁻¹p=1,p⁻²p²=1,1; raw reduced differentials 0,0,1 | Normalize character lattice before reduction | Retained |
| §4.1 chosen lift | p=3, lifts 1 and 4 modulo 9 | 1≠4 but 1³=1≡64=4³ modulo 9; pullback deck action fixes both | Lift itself is not canonical | Retained |
| §4.2 canonical powers | p=2,n=2; p=3,n=2; n=1 | 3²−1=8≡0 mod4; 4³−1=63≡0 mod9; exponent at n=1 is 1 | Small primes and starting index correct | Retained |
| §4.2 ramified congruence | ϖ²=3,m=2 | (1+ϖ)³−1=2ϖ³+ϖ⁴, valuation 3≥2; v_ϖ(p)=2≠1 | No unramified substitution | Retained |
| §4.3 weight shift | p=3,m=2,r=1,s=3; multiplier 1+ϖ | t=6; j−k unchanged; (1+ϖ)(1−ϖ)=1 modϖ² | Torsion injection has integral meaning | Retained |
| §4.4 descent and cover | p=3; ordinary/rank-one/rank-zero; cusp normalization k[t²,t³]⊂k[t] | Weights both 8N; nonzero patterns (1,*),(0,1),(0,0); t absent but t³ present downstairs | Power descent and two-open support consistent | Retained |
| §5.1 formal coefficient carrier | d=1,diag(3,1); K/O; zero module | x→3x,y→y versus wrong 9x,3y; 3(1/3+O)=0; module at M=0 is 0 | Full module coefficients retained | Retained |
| §5.2 literal degree and projective fibers | Γ(7)∩red₅⁻¹Stab⟨(1,1)⟩, p=3 | 24/6=4;20/4=5; degree20; four fiber sizes 5,5,5,5 | Original degree4 false | Repaired |
| §5.2 integrality and root counts | Same group; Q=0,x²,x²+y²,xy | Literal counts20,5,0,10; local counts4,1,0,2 | Fiber multiplier appears in each case | Repaired |
| §5.2 nonabelian tame group | Matrices A=[[2,0],[4,3]], B=[[0,1],[4,2]] in Stab⟨(1,1)⟩⊂SL₂(𝔽₅) | AB=[[0,2],[2,0]]; BA=[[4,3],[1,1]], unequal | Index argument does not assume an abelian tame group | No additional change |
| §5.2 N=1 and principal level | Full level; Γ(5),p=3 | H trivial in each relevant quotient, e=1; degree4; Γ(5) tame matrix diag(3,1) differs from I | Count equality does not erase marking | Repaired comparison; retained oriented example |
| §5.2 characteristic two | Full level,p=2; 0,x²,x²+y² | Three projective points; root counts3,1,1 | Binary polynomial criterion works without r/2 | Added Check |
| §5.2 noninvertible multiplicity | p=3, Γ(5)∩red₇⁻¹⟨[[0,−1],[1,−1]]⟩ | h³=I; \|H\|=3, intersection size1, e=3; literal12≡0 versus local4≡1 mod3 | Division by e unavailable | Added Check |
| §5.2 direction of integrality map | diag(3,1),diag(1,3); Q=x² | Points[1:0],[0:1]; transforms x²/3,3x²; first inadmissible, second integral | Adjugate transpose, not ambiguous kernel | Added explicit two-term Check |
| §5.2 frame/representative law | d=1,γ=[[1,1],[0,1]],v=y | ρ(γ)y=x+y; ρ(γ⁻¹)y=−x+y; composition gives y | Transport cancels frame change | Explicit law retained |
| §5.3 U,V | Primitive coefficient1; constant family1 | UV coefficient1; VU primitive coefficient0; U1=V1=1 | UV=1, VU a projection | Retained |
| §5.3 local/literal constants | p=3, level35; scalar constant family1 | Z1=Z₂1=4; Z_Δ1=(UZ_Δ)1=20 | Finite sums distinguish operators | Repaired |
| §5.3 UZ₂=Z₂U | M=diag(3,1), Q=x²+y² | Both read coefficient at 3x²+27y², with same ρ(M); intermediate M⁻¹·3Q=x²+9y² integral | Commutation survives transported branches | Retained for local and separately literal sums |
| §5.4 X₂ and U₂ | p=3; x²+y²,3(x²+y²),x² | Scalar pairs(−1,−4),(3,8),(0,−1); residues(2,2),(0,2),(0,2) | Primitive and zero-reduction rules distinct | Retained |
| §5.5 UX₂=0 | p=3, index3Q | Integral multiplier3 becomes0 mod3 | Relation uses characteristic p | Retained |
| §5.5 X₂³=X₂ | Multipliers −1,0,1 | Cubes −1,0,1 | Both sides equal | Retained |
| §5.5 Z₂X₂=0 | p=3, Q=x²+y²,M=diag(3,1) | R=x²+9y²; det R=9≠0 rationally; Δ(R)=−36≡0 mod3 | Vanishing uses reduction, independent of extra tame branches | Retained |
| §5.6 rational T decomposition | p=3, weights(2,2),(3,3) | Coefficients of(U,Z,V):(1,1,3),(1,3,27); local constant in first weight1+4+3=8 versus literal replacement1+20+3=24 | Local comparison essential | Repaired scope |
| §5.6 rational T₂ and central normalization | p=3,(3,3),(2,2) | T₂ coefficients of(1,X₂,Z₂,V₂):(−1,3,1,27); central scalar at(2,2)=1/9 | Negative powers restricted to K | Retained, local scope explicit |
| §5.6 integral residual naturality | Class1/3+O; residual coefficient multiplier a | 27(1/3+O)=0; division by27 undefined; multiplying an integral summand by a commutes with coefficient map ×a | Natural integral sum precedes torsion reduction | Retained |
| §5.7 cancellation and reduction | p=3,(2,2),(3,3) | Q₂ coefficients(X₂,Z₂,V₂,1):(1,1,3,3),(3,1,27,9); residues(1,1,0,0),(0,1,0,0) | Correct cancellation and weight bounds | Local scope explicit |
| §6.1 multiset versus support | p=5,Q=x²+y²,full level | Roots[2:1],[3:1]; occurrence count2; class support1; zero form count6 | No deduplication | Retained; literal/local realization separated |
| §6.1 coefficient realization | d=1,M=diag(3,1),v=x,y | Weighted values3x,y versus unweighted x,y | Orbit count cannot replace coefficient map | Retained for both sums |
| §6.2 primitive and zero formulas | p=3,discriminants−4,0,1; e=5 | Root counts0,1,2; literal0,5,10; zero literal20 versus erroneous primitive value5 | Both primitive and zero cases corrected | Repaired |
| §6.3 literal orientation | Γ(5),p=3,M=[[3,5],[30,51]],Q=x² | detM=3; transformed coefficients(867,−1020,300)≡(2,0,0) mod5; next forward(4,0,0); reverse(1,0,0) | Same forward relation not symmetric | Retained |
| §6.3 index/coefficient/marking reversal | M=diag(3,1),adjM=diag(1,3) | Product3I₂ fixes Q under normalized action; ρ₁ product=3I₂=0 mod3; tame full-level-5 marking multiplied by3≠1 | No inverse coefficient or erased central marking | Explicit local comparison |
| §6.3 tame reverse index | Level35,p=3 | Forward and reverse intersections size4 in groups size20; e=e^∨=5; unique-root literal occurrence count5 versus local1 | Each literal occurrence retains transport | Added Check |
| §7.1 finite-correspondence domain | p=3,ordinary fiber; rank-one and superspecial α_p parts | Point counts1,4,1 total6; generic degree(3+1)(9+1)=40; α_p lines unique at a-number1 versus ℙ¹(k) at a-number2 | Point count not generic degree; rank zero excluded | Retained |
| §7.2 trace divisibility | (d,r)=(0,2),(1,3),(0,1) | Raw orders(4,3,3),(7,4,3),(2,2,3); last fails bound3 in mixed case | r≥2 essential | Retained |
| §7.3 normalized T | p=3,d=0,r=2 | Normalized factors3⁴/3³=3,3²·3/3³=1,3³/3³=1 | Integral factorization before reduction | Local branch comparison explicit |
| §7.4 finite/formal Hartogs | Punctured plane and line; zero H⁰ inverse system | H⁰ plane=k[x,y], line=k[t,t⁻¹]≠k[t]; H²_support has1/(xy)≠0; lim¹0=0 on both sides | No H² injection or unjustified H¹-limit equality | Retained |
| §7.5 paramodular composite | p=3,j=k=2,3 | C₂−Q₂=10≡1; C₃−Q₂=30≡0; raw factor orders4 and≥1 at d=0,r=2 | Central correction retained integrally | Retained |
| §7.6 global/local expansion comparison | p=3,(2,2),Q=0,level35 | X₂ constant3≡0; local Z₂ constant4≡1; Q₂ residue1; literal substitution20≡2 gives residue2 | Expansion must use local middle sum | Repaired |
| §7.7 Hasse equivariance | p=3,weights(3,3)→(5,5); p=5,(2,2)→(6,6) | Local Z₂ constant4≡1 at both p=3 weights; literal20≡2; at k=2 local extra Z constant6≡1 disappears after shift | Hasse transports all cusps; low-weight exception persists | Repaired control |
| §8.1 contraction | d=2; x²⊗y²,y²⊗x²; highest-weight tensor | Values4/12=1/3,1/3; three numerator terms4+4+4=12 give1 | No extra determinant of Q | Retained |
| §8.1 denominator and central equivariance | p=5,d=3,4; scalar tI₂ | Denominators24≡4,40≡0; source degree d+2 equals target(d−2)+4 | Endpoint and det² twist correct | Retained |
| §8.2 theta coefficients | p=7,Q=x²+y² or x² | Scalar det1 versus Δ3; rank-one vector y² gives1/3=5 while scalar determinant0; Θh=0 | Scalar/vector formulas distinguished | Retained |
| §8.3 standardSL2 | p=3, upper/lower unipotents U,L | Ux=x,Uy=x+y; Lx=x+y,Ly=y; ULx=2x+y,ULy=x+y | Column action and product order fixed | Retained |
| §8.3 image and irreducibility | p=2,k=𝔽₄,d=0,1; p=3,d=2,3 | Image sizes6 versus SL₂(𝔽₄) size60; degree0 dimension1; degree2 binomials1,2,1; cubic subspace⟨x³,y³⟩ dimension2<4 | Absolute small-degree statement and boundary discriminated | Retained headline |
| §8.3 evaluation bound | p=3, x³y−xy³ | Degree4, values0 on all9 vectors; nonzero polynomial coefficients1,−1 | Excluded d=p+1 control | Retained |
| §8.4 scalar/vector nonvanishing | p=7,k=2; p=11,(6,2); k=p | Scalar6/9≡3 mod7; exceptional coefficient−3≠0 mod11; k(2k−1)=0 modp for k=p | Exact numerical exclusions | Retained |
| §8.4 normalized blocks and frames | Origin; upper unipotent; p=3,C=[[0,i],[i,0]],i²=−1 | A(0)=0,B=I; CCᵗ=[[2,1],[1,1]]≠I; C^(3)Cᵗ=I,detC=1 | Auxiliary block not Hasse–Witt block | Retained |
| §8.4 Lang and conjugacy direction | J=[[0,1],[−1,0]],upper unipotent A₀; constant C₂ | JA₀J⁻¹=[[1,0],[−1,1]]; B_L^(p)=JB_L makes fixedness equivalent to A₀^(p)=A₀; disconnected C₂ Lang image size1<2 | Sign and connectedness required | Retained |
| §8.5 negative weights | p=5,(a,b)=(−1,−1),(0,0);p=7 | Maxima−4,0; H⁰(O(−4))=0,H⁰(O) contains1; root/primary decrements144,36 | Strict inequality, proper divisors necessary | Retained |
| §8.6 scalar injectivity | p=5,k=2,3,4,5,6 | k(2k−1) residues1,0,3,0,1; allowed2,6; Hasse k4 has nonzero kernel; k6 degree24<26 and residual weight2 | Correct exclusion and endpoint induction | Retained |
| §8.7 vector injectivity | p=7,j=4,5;p=11,j=6;p=5 | Degrees26,33<50; post-Hasse weights(−4,−8) give−36; interval4≤j<4 empty | Bounds match vanishing route | Retained |
| §9.1 ordinary weight/action | p=3,d=2,r=1,diag(2,1) | Character2³=8 versus reversed2; differential first frame factor1/2; full group48 versus diagonal4 | Full frames, upper Borel and inverse transpose fixed | Retained |
| §9.2 ordinary saturation | Functions1,1/3;48 frames modulo3 | Constant coefficients1,1/3 on all48 frames; second nonintegral | All-frame lattice detection | Retained |
| §9.3 classical comparison | p=3,x³y−xy³;d=0 | Values0 on9 residue vectors, value−24 at(1,3) overℤ₃; d0 characterdet^r | Integral injection does not imply arbitrary finite-level injection | Retained |
| §9.4 marked trace and full local sum | p=2,3,5,weight0 | Branch totals16,81,625; divisions by8,27,125 give2,3,5; local Z₂ constants3,4,6 | Marked Klingen and spherical sums distinct | Scope made local |
| §9.4 tame negative control | Level35,p=3 | Marked constant3,local4,literal20; residues0,1,2 | Both markings and tame multiplicity matter | Added Check |
| §9.4 coefficient normalization | p=3,d=1,r=1; continuous κ | Raw9x,3y; normalized3x,y; κ(1)=1,κ(3) undefined | Normalize before reduction; character only on units | Retained |
| All changed sums on zero/torsion coefficients | M=0;M=O/3;M=K/O | Every sum on M=0 is0; e=3 acts as0 on O/3;3(1/3+O)=0 | No hidden cancellation/division hypothesis | Retained generality |

### Required checks and exact outcomes

- The prescribed `lake env lean` elaboration of packages/AlgebraicModularFormsAndSerreWeightsPartII/Suggested.lean, run from the pinned content checkout, exited 0. Its only diagnostic was `Suggested.lean:65:8: warning: declaration uses sorry`. Both individually imported Tau Ceti modules had object files; no targeted module build was needed. No Lean process remains running.
- A scratch copy of the acceptance file with `#check @name` for both declarations also exited 0, with the same single admitted-theorem warning. The elaborated signatures below agree with README §8.3. No section binder disappeared and no binder change was needed.
- The prescribed dependency command with `--movable` exited 0 and printed exactly:

```text
depcheck: 53 roadmaps, 599 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Neither the merge order nor tooling was edited.

```lean
TauCetiRoadmap.AlgebraicModularFormsAndSerreWeightsPartII.standardSL2 : (p : ℕ) →
  (k : Type) →
    [inst : Field k] → [CharP k p] → Representation k (Matrix.SpecialLinearGroup (Fin 2) (ZMod p)) (Fin 2 → k)
TauCetiRoadmap.AlgebraicModularFormsAndSerreWeightsPartII.smallSymmetricPower_irreducible : ∀ (p : ℕ)
  [Fact (Nat.Prime p)] (k : Type) [inst : Field k] [inst_1 : CharP k p],
  ∀ d ≤ p - 1,
    ((TauCetiRoadmap.AlgebraicModularFormsAndSerreWeightsPartII.standardSL2 p k).symmetricPower d).IsIrreducible
```

The citation resolver exited 0 with no unresolved cross-roadmap citations or Lean names. Its notice that it did not inspect pinned Lake packages was addressed by direct reads at the pins, including the three newly cited Hecke declarations. Metadata and sources TOML and the unchanged plan JSON parse. There are eight distinct certified source keys and eight matching supplier-gap contracts. Suggested.lean has 70 lines, one admitted headline theorem, one real-body definition, no admitted data, no examples, no set_option and only the permitted imports. Every retained Lean name occurs in the README. The report, README and acceptance file contain no machine paths.

The whitespace check `git diff --check` exited 0. No gate failures were separately listed in the repair brief. The mathematical F01 failure and every affected occurrence in the authoritative package files are addressed above. Metadata, sources and plan were unchanged. No commit, push, pull-request edit or other external write was made. Fresh independent review remains required; this report is not acceptance.
