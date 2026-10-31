# Repair report: SpringerResolutionAndCharacteristicCycles

## F01 (P1) — applied

Independent Springer construction → imports of NilpotentOrbits N1, N5.0 and N7, with explicit field and reductive-centre adapters. Updated Summary, Scope, contracts, §§6.1–6.3, layer dependencies and the acceptance docstring. The cone ideal, cotangent form, projection and scheme fibres are preserved. Added PGL₂/C, Q, central dual-number and pairing-rescaling Checks. Double-incidence conormals remain targets here.

## F02 (P2) — applied

Characteristic-zero invariant requests → FormalConnectionsOpers F4.3 imports; reduced fibre → NilpotentOrbits N5.0 through §6.1. Both gap copies retain only additional Lie/field/root-wall/Borel-cover comparisons. Main also supplies complex regular-semisimple geometry in ReductiveGroups §§11C–11D and flag closure criteria in SchubertGeometry S1/S2.3; imported these, updating Scope, contracts, §1.4 and dependencies.

## F03 (P2) — not actionable in this package: ownership transfer requires supplier edits

Generic descent/contraction request → SchemeAndStackFoundations §§1.1/1.16 imports and a residual linear/subbundle/incidence comparison gap, mirrored in the plan. Added frame-torsor Checks of degrees 1, −1 and 0. Transferring AutomorphicBundles B0.4's generic linear comparison to AlgebraicVectorBundles, and making B0.4 consume it, requires edits outside this package. The existing gap records the requirement; no upward dependency was added.

## F04 (P2) — applied

Requested finiteness/finite-normal comparison → pinned finiteness theorem and SchemeAndStackFoundations §4.11 imports. Both gap copies now concern completed component quotients and cycle comparisons only. Sections 2.3/3.9 and their dependencies name the inputs; §3.9 retains integral, proper, birational, normal-target and quasi-finite assumptions and gains the identity local-ring Check. The native implication closes by one exact in scratch.

## F05 (P2) — applied

Local filtration existence with global flag restriction → global existence and a global two-sided bounded comparison for every stated Y. Section 8.4 uses a finite affine cover, coherent-submodule extension and the finite generating sum; the maximum of local bounds gives the global bound. Added the s-chart construction and A¹ global filtrations. No projectivity or extra field hypothesis was introduced.

## F06 (P2) — applied

Holonomic-dimensional CC domain → all irreducible characteristic components for every coherent D-module, in the ungraded native cycle group. Updated §8.6's definition, proof, API, Checks, Examples and dependencies; §9.8 now explicitly uses this cycle. Added D_A¹ and the split mixed-dimensional counterexample to unrestricted additivity. Section 9.5 retains holonomic additivity. Updated the acceptance docstring.

## F07 (P2) — applied

G-characters → the actual X*(T) lattice with its differential. Updated Conventions, supplier contracts and §§10.1/12.1, including Levi dominance and parabolic integration. Finite-dimensional rational integration is imported from main ReductiveGroups §§10A–10B. Added SL₂ and PGL₂ lattice Checks. Distinguished the three lattice notions without asserting strict inequality: for a torus X*(G)=X*(T).

## F08 (P3) — applied

Characteristic-two double line as the actual quotient → actual invariants k[t], reduced diagonal and coincident Weyl graph labels. Section 13.2 separately identifies the double line as reduction of the integral square-invariant quotient, with ε≠0 and ε²=0. The characteristic-zero theorem is unchanged; the negative control now tests the quotient actually defined.

## F09 (P3) — applied

Incorrect sampled locations → corrected §1.1–§1.4, §4.2 and §13.5 locators. Completion contracts and all affected Layer 13/14 Needs/dependencies include DeformationAndDerivedPatchingAlgebra §1.16. Section 9.8 cites legally fetched EH18 §4.3.1, explicitly respecting its algebraically closed scope and stating the field/descent extension. Added the completed polynomial-map Check; updated sources.toml and References.

## Evidence and ownership

All verdicts and calculations were made directly; no helper supplied a mathematical verdict. The main checkout inspected was bbed953ce7f4abc20c898ee8cfdefff235ed9804. Its lake-manifest.json pins Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The design plan's older baseline was not changed: only its top-level gaps list is authorized for editing.

| Finding | Evidence opened | Consequence |
| --- | --- | --- |
| F01 | TauCetiRoadmap/NilpotentOrbits/README.md, N1, N5.0, N7; BHS19 line 842 | Complex construction has an owner; extension compares actual quotient ideals, bundles and maps. N7 uses the Killing pairing, so comparisons match the chosen form. |
| F02 | FormalConnectionsOpers open-head F4.3, finite export before the loop-gauge construction; TauCetiRoadmap/ReductiveGroups/README.md §§11C–11D; TauCetiRoadmap/SchubertGeometry/README.md S1/S2.3 | Coaction invariants, central factors, Q descent, generators and unique regular-nilpotent Borels are supplied. Complex regular-semisimple and flag-closure inputs are consumed at their actual scope. |
| F03 | TauCetiRoadmap/SchemeAndStackFoundations/README.md §§1.1, 1.16; AutomorphicBundles open-head B0.4; TauCetiRoadmap/AlgebraicVectorBundles/README.md L0B–L2B | Generic geometric contraction and descent are supplied. B0.4 explicitly constructs the linear comparison, so its ownership transfer cannot be effected by editing this package. |
| F04 | Mathlib/AlgebraicGeometry/ZariskisMainTheorem.lean:372; TauCetiRoadmap/SchemeAndStackFoundations/README.md §4.11 | The pinned theorem needs exactly properness and local quasi-finiteness. The finite modification theorem retains integral source/target and normal target. |
| F05 | M23 line 754, Proposition 3.24; M23 line 771, Proposition 3.25; M23 line 777; M23 line 843, Proposition 3.33; SchemeAndStackFoundations §0.4 | The finite extension-and-sum argument works for the entire Noetherian separated finite-type scope, including non-quasi-projective schemes. |
| F06 | M23 line 2728, Definition 6.40; M23 line 2737, Proposition 6.41; M23 line 2769, Proposition 6.42 | Definition and independence are coherent-module statements; exact additivity there is holonomic. Local cancellation in the independence proof occurs at common support generic points with finite lengths. |
| F07 | BHS19 line 468; BHS19 line 874; BHS19 line 1023; ReductiveGroups §§10A–10B | Weights are characters of T for the chosen isogeny form; dominant weights integrate through the supplied rational-action interface. Infinite-dimensional parabolic integrability remains the distinct §12.1 target. |
| F08 | Weyl reflection on the SL₂ Cartan sends t to −t; direct calculation over characteristic two | After reduction −t=t, so invariants are k[t], whereas reducing Z[t²] gives a different quotient. |
| F09 relative position | BHS19 line 470, printed p. 310 | Orbit construction and dimensions are on p. 310; the characteristic hypothesis at BHS19 line 458 remains correctly cited as p. 309. |
| F09 evaluation | BR12 line 1346, Proposition 2.6.7; BR12 line 1413, Proposition 2.8.1; BR12 line 1579, §2.10 | Concentration/generation are cited separately from their evaluation-map consequence on p. 571. |
| F09 smoothness | BHS19 line 1116 and BHS19 line 1120; proof at BHS19 line 1143 | Proposition 2.5.3(ii) is stated on p. 326 and proved across pp. 326–327. |
| F09 completion | DeformationAndDerivedPatchingAlgebra open-head §1.16 | This section states the induced local completion map, flatness and completed closed fibre; §§1.13–1.15 alone are not that contract. |
| F09 strong equivariance | EH18 line 1581, chapter convention; EH18 line 1725, §4.3.1; EH18 line 1734, compatibility; EH18 line 1738, Definition 4.10 | General smooth-variety algebraic group actions are treated over algebraically closed characteristic-zero fields. The new arbitrary-field comparison is stated and given a smooth-coordinate/faithful-descent proof route here, rather than attributed to the thesis. |

EH18 was fetched through the prescribed sources service from the University of Warwick institutional repository. Its single manifest key includes author, title, year, locator, hash and legal-access metadata. All six manifest works are certified and readable. No missing-reference request is outstanding; there are no waived or uncertified entries to reopen. No source passages were copied into the package or report.

Object-based ownership searches used roadmaps grep, followed by roadmaps show for the relevant open heads and direct reads of main. They covered nilpotent/Springer incidence, all-component characteristic cycles, good filtrations, invariant restriction, contracted products and linear associated coefficients. Accessible board package READMEs were searched as well. The named open roadmap index was searched; this is not a claim that every file of every open roadmap was read. Separate board heads listed only in the board index were not independently inspected, and no global absence claim relies on them. No other general owner of this package's coherent D-module characteristic-cycle construction was identified in these searches; the representation-theoretic and adic uses of “good filtration” have different objects.

Every cross-roadmap citation was re-resolved. The relevant contracts in SchemeAndStackFoundations §§0.4, 0.7–0.9, 0.16–0.21, 0.30, 1.1, 1.16, 2.6, 2.18, 2.22, 4.11, 4.13, 5.1; AlgebraicVectorBundles L0A–L2B; EnhancedDerivedSheaves §§0.1–0.4, E1.3–E1.4; RepresentationTheory/LieHighestWeight Layers 3–4, 7, 9; ReductiveGroups Layers 2–3, 7–11; and the relevant open-head F2.2/F4.3 and completion/cycle sections were checked at their supplied copies. They retain their hypotheses. NilpotentOrbits, AlgebraicVectorBundles and Completed/IntegralLattices were read for upstream shape before editing; the existing package layers and all 69 numbered target groups were retained.

## Adversarial mathematics pass

The rows below recompute the roadmap's definitions, target statements, APIs and convention witnesses, with additional rows for the distinct assertions introduced by these repairs. They are mathematical checks, not claimed formal proofs. Rows with dimension statements use closed geometric points unless another point is specified. Symbols e,s have the fixed SL₂ Weyl labels. Characteristic-zero examples use k of characteristic zero; p=2 is outside the Layers 2–5 structural hypotheses for type A₁. There are no denominators at characteristic two in the new calculations.

| Statement | Instances tried | Values on the two sides / wrong-model value | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: dimensions and characteristic bound | Trivial group, rank-r torus, SL₂; p=2,3 | (N,r,D)=(0,0,0),(0,r,r),(1,1,3); A₁: 2>2 false, 3>2 true | Boundaries agree | None |
| Conventions: associated action | Right frame torsor of O(1), weights 1,−1,0 | Degrees 1,−1,0; reversed action gives −1,1,0 | Inverse convention fixed | F03 Checks |
| Conventions: Cartan direction | GL₃ 3-cycle on diag(1,2,4) | w⁻¹z=(2,4,1), wz=(4,1,2); coordinates differ | Nonabelian S₃ witness detects inverse | Retained |
| Conventions: moment sign | Two A¹ covectors, a=1 | −dx+dx=0, dx+dx=2dx≠0 | Sign fixed | Retained |
| Conventions: lattice and rho | SL₂, PGL₂, torus | SL₂: ρ=ω, X*(G)=0; PGL₂: ρ=ω outside 2Zω, −2ρ=−2ω inside; torus: X*(G)=X*(T), ρ=0 | All principal weights lie in actual lattice | F07 |
| Conventions: shift | Point immersion in A¹, identity | Tor₁δ=k, Tor₀δ=0; Li*δ[−1]=k[0]; identity shift 0 | Hⁱ(K[a])=Hⁱ⁺ᵃ(K) respected | Retained |
| Conventions: multiplicity | Dual numbers and zero | length(k[ε]/ε²)=2=1+1; length(k)=1; length(0)=0 | No reduction of coefficient module | Retained |
| §1.1 flag quotient | Torus, SL₂, GL₃ | F=point,P¹,full flags; dimensions 0,1,3 versus line-only GL₃ space dimension 2 | Correct quotient object | F09 locator |
| §1.2 projectivity and dimension | Trivial group, SL₂, torus | N=0,1,0; dim B=0,2,r; D=r+2N gives 0,3,r | No rho-integrality assumption | F09 locator |
| §1.3 relative orbits | SL₂ equal/distinct flags; torus | U_e=diagonal, U_s=distinct pairs, torus sole point; closures diagonal and P¹×P¹ | Representatives give same orbit | F09 locator |
| §1.4 orbit closure order | SL₂ e≤s | Dimensions N+ℓ(e)=1, N+ℓ(s)=2; closure s contains e, closure e excludes s | Both directions of order distinguished | Import existing closure criterion |
| §1.5 intersection subbundle | Coordinate lines, equal lines, dual-number thickening | Ranks 0,1; over k[ε]/ε² actual intersection εke₁, closed-fibre intersection ke₁; not a direct summand | Reducedness needed | Retained |
| §2.1 Grothendieck bundle | Torus; GL₂; ψ=0 | q=id_t; rank b=3 plus dim P¹=1 gives 4; q⁻¹0=P¹ | Bundle projection and operator projection differ | Retained |
| §2.2 regularity | SL₂ E₁₂,0,diag(1,−1); torus | Centralizer dimensions 1,3,1; r=1: regular yes,no,yes; semisimple no,yes,yes; torus all regular | Zero and nilpotent distinguished | Reduced supplier contract |
| §2.3 regular covering | SL₂ regular semisimple, regular nilpotent; torus | Flag counts 2,1,1; SL₂ regular-nilpotent full q-fibre can have length 2, while Springer fibre length 1 | No étale assertion at regular nilpotent | Native finiteness input |
| §3.1 double incidence | Torus, GL₂ coordinate flags, zero | t×_t t=t, dimension r versus 2r; common operators diag(a,b), dimension 2; zero fibre F² | Pullback is actual incidence | Retained |
| §3.2 Cartan maps | GL₂ diag(a,b) on opposite flags; upper nilpotent | Coordinates (a,b),(b,a); at E₁₂ with coincident invariant flags both 0 | Quotient by u fixed | Retained |
| §3.3 strata | SL₂ e,s | Fibres b of dimension 2 and t of dimension 1; at zero both strata contain their orbit section | Strata include toral directions | Retained |
| §3.4 bundle rank | SL₂ e,s; torus | Base+rank=1+2=3,2+1=3; torus 0+r=r | D for every stratum | Retained |
| §3.5 closure | SL₂ X_e,X_s | X_e=g̃ with equal flags; X_s has equation 2a+b(x+y)=0; X_e∩V_s empty; X_s≠X | Closure not full orbit inverse image | Retained |
| §3.6 Bruhat support | SL₂ both labels | Images diagonal and P¹×P¹; X_e∩V_s=∅; X_s∩V_e contains x=y=0,b=1,a=c=0 | v≤w direction correct | Retained |
| §3.7 reduced component/lci dimensions | SL₂, torus | Ambient 5 minus 2 equations=3; torus r−0=r; local product equation (x−y)(2a+b(x+y))=0 | Expected codimension attained | Retained |
| §3.8 reducedness | Generic SL₂ components; ramified quadratic family | Generic factors have multiplicity 1; k[t,x]/(x²−t) reduced, t=0 fibre length 2 | Reduced source need not have reduced fibres | Retained |
| §3.9 projections | SL₂ components, torus, identity normal scheme | Component degrees 1,1 versus q degree 2; identity degree 1 and O_x→O_x=id | Finite normal modification input applies | F04 |
| §4.1 fibre dimensions | SL₂ and torus | D−r=3−1=2; r−r=0, including zero fibres | Matching upper/lower dimensions | Retained |
| §4.2 CM/convolution | A₁ p=5, empty word | 5>2; empty kernel O_diagonal has depth=dimension=3; zero kernel would act by 0 rather than id | No zero-kernel surrogate | F09 locator |
| §4.2 crystalline centre | Weyl algebra over F₃ | [∂³,x]=3∂²=0, [∂,x³]=3x²=0 | Frobenius centre retained | Retained |
| §4.2 weight regularity | A₁ p=3, λ=0,2ρ | Pairings 1,3 modulo 3: nonzero,zero | Correct regular weight domain | Retained |
| §4.2 evaluation | Empty word over the affine quotient used by f | On an affine chart evaluation O⊗O→O is 1⊗1↦1, image O; zero map has image 0 | Surjection convention meaningful | Cite §2.10 p.571 |
| §4.3 CM extension | A₁ p=3; escaping flat component | Depth=dimension=3 for A₁; Q[x,y]/(x²,xy) depth 0<dimension 1 while special fibre of disjoint union depth=dimension=0 | Flat special fibre alone insufficient | Retained scaling route |
| §4.4 local flatness criterion | Point⊔A¹→A¹ and SL₂ Cartan map | Bad point: local dimensions 0≠1+0 although global fibre dimension 0; SL₂ closed point: 3=1+2 | Local formula retained | Retained |
| §5.1 Weyl relation | GL₃ 3-cycle; ψ=0 | κ₂=(2,4,1)=w⁻¹κ₁, not (4,1,2); zero ideals equal 0 on zero locus | Correct inverse | Retained |
| §5.2 smooth affine fibres | SL₂ e,s; zero toral subspace | N−ℓ(e)=1,N−ℓ(s)=0; fibres A¹,point; zero restriction has same dimensions | Geometric irreducibility plausible models fixed | Retained |
| §5.3 root wall | SL₂ E₁₂, GL₃ diag(a,a,c)+E₁₂, a≠c | Centralizer dimensions 1,3 equal respective ranks; removing E₁₂ yields dimensions 3,5 | Nonzero root coordinate necessary | Precise residual request |
| §5.4 normality | SL₂ components and their union | Each component regular dimension 3; union has two intersecting branches, hence non-domain local ring at intersection | No union normality conclusion | Retained |
| §6.1 quotient-ideal adapter | PGL₂ over C and Q; rank-one torus | a²+bc=0 gives dimension 2 and radical ideal in both fields; torus quotient identity, zero fibre point | Adapter preserves specified ideal | F01/F02 |
| §6.1 central thickening | Torus over k[ε]/ε², coordinate ε and 0 | ad ε=0 but quotient coordinate ε≠0; at 0 coordinate=0 | Ad-nilpotence is insufficient | New negative control |
| §6.1 invariant form | gl₂ trace form versus Killing form | Trace pairing I with I gives 2≠0; Killing pairing I with everything gives 0 | Centre form must be specified | Retained |
| §6.2 Springer adapter | PGL₂/C and SL₂; central torus | Source O_P¹(−2) dimension 2; zero fibre P¹, regular fibre one reduced point; torus source/target point | Same maps and scheme fibres as owner | F01 |
| §6.2 bundle and field laws | Split Q-model→C; u rank N | For A₁ rank u=1, dim F=1, total 2; μ([1,E₁₂])=E₁₂ before/after extension | No extra central direction | New adapter |
| §6.3 cotangent identification | SL₂ at ke₁, trace form and twice trace form | tr(E₁₂E₂₁)=1; 2tr((E₁₂/2)E₂₁)=1; wrong unchanged E₁₂ gives 2 | Map tied to pairing | New Check |
| §6.3 signed conormal | SL₂; torus | −ψ+ψ=0 versus 2ψ; cotangent product dimension 4 versus Grothendieck product 6; torus cotangent point versus 2r | Sign and factors fixed | F01 adapter |
| §6.4 reduced Steinberg | SL₂ labels; torus | Z_e=T*P¹ diagonally, Z_s=P¹×P¹ at 0; both dimension 2, intersection dimension 1; torus point | Support/components correct | Retained |
| §6.5 scheme comparison | Spec k and dual numbers | Reduction iso iff nilradical 0; lengths 1=1 versus 1≠2 | Both directions of conditional tested | Retained |
| §6.6 conormal components | SL₂ e,s; torus | Orbit+conormal ranks 1+1=2,2+0=2,0+0=0 | No CM assumption on Z_w | Retained |
| §7.1 basis subgroup | Axes, point, A¹, empty scheme | Groups Z²,Z,Z,0; basis coordinates (1,0),(0,1); [0] has degree 0 not 1 | Injection and grading distinguished | Retained |
| §7.2 module cycles | Dual numbers; axes; exact ε sequence | 2[point]; coefficients (1,1); 2=1+1; smaller-dimensional top cycle 0 | Full scheme multiplicity kept | Retained |
| §7.3 zero fibres | SL₂ e,s; torus | Cycles (1,0),(1,1); torus coefficient 1; Z_s alone is (0,1) | Zero fibre differs from its named conormal | Retained |
| §7.4 fibre CM/dimension | SL₂, torus, quadratic family | Depth=dimension 2,0; k[x,t]/(x²−t) mod t has length 2 | CM does not remove multiplicity | Retained |
| §8.1 coherent D-modules | Point,A¹,D_A¹ | D_point=k; [∂,x]=1≠0; D has D-rank 1 and infinite O-rank | D-coherent includes D itself | Retained |
| §8.2 PBW and Noetherian comparison | A¹ order 0,1,2 | Ranks 1,2,3; symbols 1,ξ,ξ² in k[x,ξ]; commutator symbol vanishes | Order and monomial filtrations agree | Retained |
| §8.3 good filtration | O,D,constant all-integer filtration | gr O=k[x],ξ=0; gr D=k[x,ξ]; constant nonzero filtration gr=0 but no lower bound | Wrong model excluded | Retained |
| §8.4 global construction | s affine charts, s=1; O,D on A¹ | s coherent extensions→one sum M₀; s=1 gives one generator submodule; gr O=k[x], gr D=k[x,ξ] | No flag restriction | F05 |
| §8.4 comparison | O filtration shifted by 1; two local bounds 1,3 | Global bound max(1,3)=3; single shift bound 1 gives both inclusions | Quantifiers uniform in j | F05 |
| §8.4 strict exactness | Doubled delta with induced filtrations | Generic lengths 2=1+1; choosing unrelated quotient degree shift can destroy degreewise exactness | Induced filtrations required | Retained |
| §8.5 characteristic support | O,δ,D,D/Dx²,0 on A¹ | Supports ξ=0,x=0,A²,x=0,∅; dimensions 1,1,2,1,empty | Thickness absent from support only | Retained |
| §8.6 all-component cycle | O,D,D/Dx²,0 | Cycles [ξ=0],[A²],2[x=0],0; generic lengths 1,1,2,0 | Coherent domain now includes D | F06 |
| §8.6 filtration independence | O filtration and its shift | Same ungraded module k[x] supported ξ=0; both generic lengths 1 | Grading shift cannot alter length | F06 general proof |
| §8.6 mixed-dimensional additivity boundary | D⊕O on A¹ | Support A², generic length 1, CC=[A²]; sum of end cycles [A²]+[ξ=0]≠[A²] | Unrestricted additivity rejected | New Check |
| §8.6 connection rank | Trivial connections of ranks 0,1,2 | Cycles 0,[ξ=0],2[ξ=0] | Rank retained | Retained |
| §9.1 transfer and duality | Identity, point, point immersion | Transfer id=D, shift 0; dual k²=(k²)* in degree 0; x∂δ=−δ | Handedness and shift fixed | Retained |
| §9.1 two-term normalization | [k[x]→x k[x]] in degrees −1,0 | Dual nonzero cohomology k in degree 1; [1] moves it to degree 0 | Shift sign checked | Retained |
| §9.2 Kashiwara | δ,δ⊕δ and identity | ker x dimensions 1,2; coker x=0; Tor₁=k,k² and Tor₀=0; inverse shift gives degree 0 | Correct Tor index | Retained |
| §9.3 Bernstein | O,δ,D and point | Dimensions 1≥1,1≥1,2≥1,0≥0; finite nonzero Weyl module trace commutator 0≠dimension | Componentwise lower bound | Retained |
| §9.4 holonomicity | O,δ,D,0 | 1≤1,1≤1,2>1; empty characteristic support for 0 | All-component CC specializes to degree n | F06 agrees |
| §9.5 length/additivity | Double delta and zero | Lengths 2,0; cycles 2[x=0]=[x=0]+[x=0] | Holonomic additivity retained | No broadening |
| §9.6 intermediate extension | Identity,G_m⊂A¹,point⊂A¹ | E↦E; j_!*O=O versus j_+O=O[x⁻¹] with quotient δ; point↦δ | Boundary quotient excluded | Retained |
| §9.7 regularity | Trivial,delta,exponential | Pole orders 0,point case,2 at infinity; ∂e=e gives −dt/t² | Irregular connection excluded from regular category | Retained |
| §9.8 strong differential condition | G_m on point, weights 0,1 | Differentiated values 0,1 versus tangent action 0: equality true,false | Strong/weak distinction | F09 source and equivalence |
| §9.8 coherent invariance | H=1 on A¹, M=D | Ch=A², CC=[A²]; invariance [A²]=[A²] | Former domain mismatch resolved | F06 |
| §9.8 field/descent and nonconnected group | k→K char0, finite constant group of order 2 on a point | Weight-1 G_m differential 1→1≠0; finite group Lie=0, sign action differential 0=0 and cocycle (−1)²=1 | Nonconnected algebraic data retained, not forced trivial | New comparison route |
| §9.9 moment/orbit classification | SL₂ diagonal action on F² | Two orbits, two trivial-connection simples; signed moment −ψ+ψ=0 | Connected-stabilizer hypothesis used | Retained |
| §10.1 global operators/D-affinity | Torus,SL₂ | Central generator z→0 gives U_χ=k; ΓO_P¹=k,H¹=0; ordinary BB parameter ρ | Strict central action fixed | F07 lattice |
| §10.1 actual algebraic lattice | SL₂ ω; PGL₂ ω,2ω | Highest module dimensions 2; excluded,3 respectively; X*(SL₂)=0 | Supplier integration applies to T-weights | F07; import RG10 |
| §10.2 localisation | Torus and trivial SL₂ representation | Loc(k)=O_F, ΓO_F=k; for torus both functors identity on k-modules | Units/counits compatible | Retained |
| §10.3 induction | Torus,O_F,delta_eB | Identity; O_F² with cycle Z_w₀; diagonal direct image with cycle Z_e; inverse shift i†[N]=Li* | Labels and restriction fixed | Retained |
| §10.4 strict principal category | SL₂,torus,dual-number central action | M_e=L_e; M_s has L_e+L_s, L_s=k; torus k[z]/z² has z≠0 and is excluded, k included; zero length 0 | Strict versus generalized reduction separated | F07 conventions apply |
| §11.1 Verma cycles | SL₂ e,s; torus | (1,0),(1,1); torus (1) | Verma quotient not its simple cycle | Retained |
| §11.2 simple triangularity | SL₂ smooth orbit closures | a_ee=a_ss=1,a_se=a_es=0; simple cycles (1,0),(0,1) | Smaller-stratum smoothness rule passes | Retained |
| §11.3 KL multiplicities | A₁; A₃ polynomial | Matrix ((1,0),(1,1)); P_s,e=0,P_e,s=1; 1+q takes 1,2,3 at q=0,1,2 | Both w₀ prefixes needed | Retained |
| §11.4 three bases | A₁ and torus | A=I; M=((1,0),(1,1)), det 1, inverse ((1,0),(−1,1)); torus (1) | Integer negative inverse retained | Retained |
| §12.1 parabolic integrability | SL₂ λ_e,λ_s; PGL₂ | Pairings −2,0→I=∅,{α}→B,G; −α=−2ω lies in actual lattice; ω outside PGL₂ lattice | Local nilpotence criterion has applicable weights | F07 |
| §12.2 cycle invariance | SL₂ w=s and ψ=E₁₂ | Z_s at ψ=0 fixed under first G; moving ke₁ to ke₂ at E₁₂ yields E₁₂e₂=e₁ outside ke₂ | No invariance of all Z asserted | Retained |
| §13.1 Cartan graphs | SL₂ char0,torus,GL₃ cycle | Ring k[x,y]/(x²−y²), graphs ±; torus diagonal; (1,2,4)→(2,4,1) | Quotient and inverse label correct | Retained |
| §13.2 reduced components | SL₂ char0 and char2 | Char0: two distinct linear factors, nilradical 0; char2 actual quotient diagonal ring k[t], nilradical 0, graph labels e=s | Outside-domain Check corrected | F08 |
| §13.2 reduction of different quotient | Integral square-invariant quotient reduced mod 2 | k[x,ε]/ε² has ε≠0,ε²=0; actual invariant quotient imposes ε=0 | Two constructions distinguished | F08 |
| §13.3 completion detects graph | SL₂ at origin; torus | On e: y−x=0,y+x=2x≠0; on s: y+x=0,y−x=−2x≠0; torus only one label | Closed-point coincidence insufficient | Retained |
| §13.3 completed map and flatness | k[x]_(x)→k[x,y]_(x,y); identity | Completions k[[x]]→k[[x,y]], closed fibre k[[y]], dimensions 2=1+1; identity 1=1+0 | Actual local map retained | F09 §1.16 |
| §13.4 tangent bound | SL₂ (e,e),(s,e),(s,s); torus | 1+1+1=3,2+0+1=3,2+1+0=3; torus 0+r+0=r | Same component dimension with different fixed spaces | Retained |
| §13.5 smoothness criterion | SL₂(s,e),(s,s); torus | Codimensions 1=1−0 and 0=1−1; tangent/local dimensions 3=3; torus r=r | Sufficient criterion valid in witnesses | F09 locator |
| §14.1 cycle completion | A¹ at 0,node,axes at (1,0) | k[[t]] coefficient 1; node branches y∓x√(1+x) each length 1; axes coefficients (1,0) | All surviving branches retained | F04 precise gap |
| §14.2 module completion | Point k²,node,smaller-support point on curve | 2=2·1; global coefficient 1→branch coefficients (1,1); degree-1 point cycle 0→0 | Multiplicity/dimension preserved | Retained |
| §14.3 simple completion | SL₂ at zero,at E₁₂; torus | At zero separate component coefficients 1; E₁₂ off Z_s gives L̂_s=0; torus coefficient 1 | Missing-component convention explicit | Retained |
| §14.4 completed KL | SL₂ on both components,off Z_s; torus | (1,1)=(1,0)+(0,1); off Z_s 1=1+0; torus 1=1 | No missing branch or coefficient | Retained |
| Lie supplier gap | A₁ p=3; central p-isogeny in characteristic p | Root-vector centralizer dimension 1=r at p=3; G_m p-power map has zero differential and degree p, excluded by invertible-degree hypothesis | Characteristic and isogeny restrictions explicit | F02 residual only |
| Associated-bundle supplier gap | Frame O(1), dual,unit,rank-zero representation | Bundles O(1),O(−1),O,0; degrees 1,−1,0; zero rank 0 | Linear comparison must preserve inverse convention and zero | F03 residual |
| Completion supplier gap | Node,closed point on A¹,nonclosed generic point | Closed-point branch dimensions 1,1; completed A¹ local dimension 1=d; at generic point completion is a field dimension 0≠global d=1 | Closed-point hypothesis essential | F04 residual |
| Derived-bimodule supplier gap | Point coefficients k,identity transfer; two odd shifts | k⊗_k k=k, RHom(k,k)=k; shift interchange sign (−1)^(1·1)=−1 | Additive and action coherence retained | Unchanged contract |

The worked SL₂ local equations were recomputed: substituting c=2ax+bx² into the second incidence equation yields (x−y)(2a+b(x+y))=0. On X_s, a=−b(x+y)/2 and κ₁=a+bx=b(x−y)/2. Its zero divisor is b(x−y)=0, with coefficients 1 on each branch. Substitution x=y=0,b=1 gives a=c=0 and ψ=E₁₂, showing the boundary is not confined to zero operator. These values agree with §§3.6, 7.3, 11.1 and 14.4 after all repairs.

The nodal completion calculation uses (1+x)^(1/2)=1+x/2−x²/8+… in characteristic zero. The two factors have distinct formal branches and each generic length is 1; multiplicity 2 gives (2,2). The inverse Cartan label remains the same S₃ witness in Conventions, §5.1 and §13.1. The signed moment witness remains −ψ+ψ=0 in §§6.3, 6.4, 9.9 and 12.2. No additional formalization carrier or boundary theorem was inserted into Suggested.lean.

## Check outcomes

- Final package elaboration: `lake env lean` on packages/SpringerResolutionAndCharacteristicCycles/Suggested.lean, run from the supplied pinned content checkout, exited 0 with empty output, no warnings and no errors. No TauCeti module is imported, so no targeted object-file build was required. Nothing remains running.
- Elaborated-signature audit: Suggested.lean has zero definitions, instances and theorems. The mandated list of `#check @name` for package declarations is empty, so there are no implicit hypotheses to lose and no changed declaration binders. The docstring lists all unstatable headline groups and their missing geometric carriers, including the repaired §6.1–§6.6 comparisons and general coherent characteristic cycles. No surrogate theorem was added.
- A separate scratch signature file elaborated the four used native signatures for finiteness, AlgebraicCycle, length and exact length additivity, and proved the proper locally quasi-finite implication by one exact. It exited 0 with the expected signatures and no errors. The finiteness theorem has only the two advertised typeclass hypotheses; length additivity retains injectivity, surjectivity and Function.Exact.
- Native carrier inspection: Mathlib/AlgebraicGeometry/AlgebraicCycle/Basic.lean:44 is the locally finitely supported function carrier with no dimension constraint. TauCeti/AlgebraicGeometry/FinitelyPresentedSheaf/Basic.lean:48 is the finite-presentation full subcategory of ordinary structure-sheaf modules. TauCeti/Algebra/Lie/HighestWeight/Verma.lean:140–146,195 retains characteristic zero, finite-dimensional Killing-semisimple Lie algebra, split Cartan and root-base parameters. None supplies an actual D-sheaf, Springer incidence or its conormal scheme. Object searches at the pins found no native version of those missing geometric headline carriers.
- Citation resolution after the repairs: no cross-roadmap citation found nowhere; no Lean name found nowhere. The resolver's pinned-library check was unavailable in its service environment, so the native declarations above were independently checked against the worker's actual pinned files and scratch elaboration.
- Structural audit: 69 numbered target groups retained; no new Lean declarations or names; one `import Mathlib`; no `set_option`, admitted data or examples. The parsed design/plan.json agrees with its original outside the top-level gaps list. All four gap slugs, suppliers and needs agree exactly with their README contract lines. sources.toml parses and has six distinct source keys.
- No gate failures were supplied in the brief. The dependency check exited 0, with this complete output:

```text
depcheck: 54 roadmaps, 598 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The merge-order file and tooling were not edited. git diff --check passed. Only the four authorized package inputs and this required report were changed; metadata.toml was unchanged.

## Maintainer consequences

F03 requires a human-coordinated ownership transfer: AlgebraicVectorBundles L0B–L2B must own the generic linear/geometric associated-bundle comparison requested by gap:associated-bundle-descent, and AutomorphicBundles B0.4 must consume that earlier owner. AutomorphicBundles is at merge-order line 228, while this package is at line 70; importing it here would violate supply direction. The gap is declared, not claimed supplied, and this report makes no supplier edit or external decision.

The independent general characteristic-cycle construction here remains the supplier for downstream coherent/holonomic consumers; holonomic cycle identities and their Weyl labels have not changed. NilpotentOrbits keeps its complex cone and resolution ownership. No Lean names were added, deleted or renamed, so no consumer needs a declaration-name migration. No commit, push, pull-request edit or comment was made.
