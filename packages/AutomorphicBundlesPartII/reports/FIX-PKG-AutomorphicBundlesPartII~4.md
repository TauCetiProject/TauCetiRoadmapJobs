# Repair report: AutomorphicBundlesPartII

## F01 (P2) — applied

Finite locally free legs and finite-flat proof route → smooth separated finite-type schemes over a Noetherian base, perfect coefficients, derived pullbacks and lci tensor-duality. Both legs must be proper for the two global actions; proper X makes joint properness sufficient. Added blow-up, shifted closed-point and finite-flat trace Checks. The transpose headline remains unstatable at the pins.

## F02 (P3) — applied

Added the five requested local prerequisites. The pattern sweep also made §3.0a explicit in §§3.6, 3.10 and 3.12, and §5.0 explicit in §5.13. Section 3.9’s revised statement separately lists §§3.1 and 3.0a. Discrete supplier prerequisites remain attached to their branches. The expanded local graph has no cycles.

## Mathematical evidence and scope

BP26 line 1182 specifies smooth C and X and finite locally free coefficients, without a finite or flat condition on either leg. BP26 line 1187 proves the dual of pullback identity; BP26 line 1194 uses an invertible relative dualizing object for the reverse identity. These are tensor-duality arguments and apply to perfect complexes, with derived pullbacks. The extension is justified by these identities, rather than attributed to a broader printed statement.

Write K_X=f!O_S and K_C=c!O_S. A morphism between the smooth separated S-schemes factors through its graph, a regular section of the smooth projection C×_S X→C, followed by the smooth projection to X. Thus each leg is lci. The supplier's lci formula gives p!K≃Lp*K⊗p!O_X, with p!O_X invertible. Consequently D_C(p!G)≃Lp*D_XG and D_C(Lp*F)≃p!D_XF. All these objects are perfect and bounded coherent. Biduality here is tensor biduality on perfect objects; it does not assert that O_S is a dualizing complex for an arbitrary Noetherian S.

SchemeAndStackFoundations §2.19 supplies the Noetherian separated-finite-type upper shriek, its lci formula and proper counit. Its §2.20 supplies sheafified proper duality for D⁻_coh inputs and D⁺_QCoh coefficients. These include the perfect objects used here. Its §§2.18–2.21 supply the ambient categories and coherence. Relative pushforward Rf_* gives the adjoint maps over S; the displayed RΓ pairing is explicitly the affine-base specialization. With f proper, both projections X×_S X→X are proper, so joint properness implies properness of both legs. No general nonproper RΓ trace is inferred.

For the blow-up witness, ω_C=b*ω_X⊗O_C(E). The exact sequence with cokernel O_E(−1), whose H⁰ and H¹ both vanish, together with Rb_*O_C=O_X, identifies the pushed-forward fundamental class with identity. The counit is identity on the dense complement and therefore on O_X. The two actions are 1 on H⁰(O_X)=k and 1 on H²(ω_X)=k. This works in characteristics 2 and 3 as well. Section 3.13's common-refinement Hecke maps and §5.7's transpose application retain the same operator convention; neither imposed the erroneous finite-leg restriction. Sections 5.14–5.15 also retain the inverse/dual coefficient convention. The only occurrences of the restricted transpose statement and proof were in §3.9, and both were replaced.

F02 is a dependency-list repair. BCGP21 line 3022 identifies the hyperspecial EO filtration, BCGP21 line 3037 states its Cousin computation, and BCGP21 line 3057 states the restriction injection. Sections 5.0, 5.10 and 5.11 distinguish geometric regular thickenings from their later cohomological application. Multiplication by y has kernel 0 on k[x,y]/(x²); on k[x,y]/(xy,x²) it kills the nonzero x. Thus the named local input is substantive. The extra dependency edits record the same already stated inputs; they introduce no target or new supplier.

## Ownership, citations and pins

Read the main-branch shape references TauCetiRoadmap/ComplexTori/README.md and TauCetiRoadmap/LocalGaloisGroups/README.md. Searched by object with the roadmap service over main and indexed open heads, and with rg over board packages, for coherent correspondences, upper shriek, transpose, six operations, EO strata and Cousin complexes. Generic coherent duality and Cousin theory remain with SchemeAndStackFoundations; analytic coefficient categories remain with SolidAnalyticRings and VStackSheavesAndLisseCategories. AutomorphicBundles B0–B5 stops at bundles and section operators. This package owns their higher coherent correspondence application. No generic carrier or supplier target was introduced, and no ownership moved.

All cross-roadmap citations were re-resolved against main and indexed heads. The named supplier texts were obtained through roadmaps show; existing main roadmaps were used at main rather than at a revision head. The following contracts were inspected by their section labels and objects:

| Supplier | Resolved sections / contract |
|---|---|
| AutomorphicBundles | B0–B5, B3.10, B3.BGG.1–3, B5.10: parent coefficients, integral good-prime realization, BGG and section operators. |
| AlgebraicVectorBundles | L0A–L0C: module-sheaf tensor/Hom, pullback, polynomial operations and finite locally free comparisons. |
| SchemeAndStackFoundations | §§1.1, 2.6–2.8, 2.18–2.21, 2.23, 4.8–4.10: descent, coherent operations/duality, supports and formal functions. |
| DerivedModuleAlgebra | §§0.2–0.3, 1.1.1, 1.3–1.5, 1.E.0–1.E.1, 1.M.1–1.M.2, S.1: tensor/Hom, object completion, effectivity, Matlis duality and spectral sequences. |
| DeformationAndDerivedPatchingAlgebra | §§7.1–7.10: lifts, signed duals, strict towers, finite Hom completion, blocks and coefficient spectral sequences. No longer listed as a necessary input to §3.9's geometric transpose. |
| ShimuraCompactifications | C3–C5, especially C4.16, C5.19–C5.21 and C5.31: models, common refinements, formal coefficients and normalized p-level models. C5.20 explicitly permits proper nonfinite refinements. |
| LanglandsParameterStacks | LP3.0: field-valued highest-weight theory; integral lattices remain the declared gap. |
| ComplexComparisonPartII | C1.9, C2, C3.3: proper coherent and derived GAGA; trace compatibility remains the declared gap. |
| SmoothRepresentationsOfLocalGroups | SR.0–SR.4, especially SR.4.5: towers, convolution/opposite convention, induction and spin Satake normalization. |
| IntegralHeckeAndGaloisDeterminants | §§2.2–2.3, 3a.1–3a.2, 3b.1–3b.2: finite derived Hecke images, local factors, full polynomials and residual dual/twist transport. |
| AutomorphicFormsOnReductiveGroups | §§1.1–1.3, 4.1–4.2, 6.1–6.7: cochains, components, chambers, coherent occurrence and separate global/singular bounds. |
| AutomorphicSpectralTheory | §§4.1–4.5, 4.10, 5.1–5.8: multiplicities, cuspidality, full-pair regularization and finite-character acyclicity; parabolic regularization remains the declared gap. |
| EndoscopicTransferAndUnitaryTraceComparison | §11.1 with GSp4ClassificationInputs: conditional general-type packets, local parameters and multiplicity one. |
| ArithmeticGaloisRepresentations | §§1.1–1.12, 2.2, Layer 5: representations, lattices, full-polynomial recognition and Frobenius/dual transport. |
| WeightsInEtaleCohomology | R34.5–R34.6: classical higher-weight and source-qualified Hilbert realizations; weight one remains the declared gap. |
| ModularCurvesPartII | §§14.1–14.4a: coefficient systems, parabolic realization and finite/adic comparison. |
| HilbertModularVarietiesAndShimuraCurves | R18.3.29(a) and its Normalization paragraph: parallel k≥2, including even-degree existence; arithmetic realization is dualized for geometric Frobenius. |
| CrystallineCohomology | CR.5.1, CR.5.3–CR.5.4, CR.DDR.6.11–14: logarithmic structures/comparisons; coefficient vanishing remains the declared gap. |
| EnhancedDerivedSheaves | §§0.1–0.3, E1.3, E2:towers, E3.2–E3.3, E5:abstract: enhancements, coherent diagrams and derived tensor/Hom/limits. |
| SolidAnalyticRings | §§1.5, 2.2, 6.4, 7.1–7.2: solidity, reflection, completed tensor and scalar extension. |
| VStackSheavesAndLisseCategories | VS2.2 analytic measures: analytic rings and complete modules; distinct from this package's scheme operations. |
| AlgebraicModuliForArithmeticGeometry | §7.5: finite-flat and determinant fundamental classes, retaining the boundary and base-change restrictions. |

The separately named open pull requests were not supplied as sibling filesystem paths: ownership against those sibling checkouts was not checked, and no additional checkouts were sought. Available indexed heads were searched through the required service. This is not a claim of exhaustive inspection of inaccessible sibling files.

The pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Native declarations were read at those pins: TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:61, :66, :80; TauCeti/AlgebraicGeometry/Cohomology/Module/Base.lean:45, :57, :110, :127; TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85; TauCeti/AlgebraicGeometry/Modules/TensorProduct.lean:63; TauCeti/Algebra/Category/ModuleCat/Sheaf/ExteriorPower.lean:49. The base module uses restriction of scalars along the actual base-to-global-sections map, with no properness or finiteness assumption. Mathlib's K-projective results were read in Mathlib/Algebra/Homology/HomotopyCategory/KProjective.lean:113 and Mathlib/Algebra/Homology/DerivedCategory/KProjective.lean:43. They require bounded projective terms or a K-projective source, respectively; they do not provide a strict algebra action. Object searches found curve/divisor and line-bundle Serre duality, including TauCeti/AlgebraicGeometry/WeilDivisor/Scheme/SerreDuality.lean:113, rather than the relative coherent upper shriek needed to state transpose.

All sixteen source keys were retained. The repair uses the supplied legal cached texts; no source fetch or manifest edit was necessary. GK19 remains settled as uncertified and was not requested again. No unresolved reference request was created. No source text was copied into the repository.

## Computed adversarial mathematics pass

These are mathematical computations on the definitions, signs, hypotheses and theorem interfaces, not claims that examples prove the geometric theorems. Each numbered target is represented below; additional rows separate its independent conventions and new transpose identities. Unchanged targets retain their hypotheses. All new boundary examples stay in README prose.

| Statement | Instances tried | Values computed / wrong model | Result | Change |
|---|---|---|---|---|
| DVR convention and coefficient quotient | O=ℤ₃, n=0,1,2 | Quotients 0, 𝔽₃, ℤ/9; in the last, 3≠0 and 3²=0 | n>0 excludes zero quotient | None |
| Coefficients beyond mixed characteristic | O=k[[t]], k=𝔽₂ or ℂ, n=2 | k[t]/t², t≠0 and t²=0 in both cases | No ℤ_p restriction | None |
| Integer cohomology definition | Spec A₂, F=O, i=−1,0,1; F=0 | 0,A₂,0; zero F gives 0 in every degree | Negative degree is zero, not A₂ | None |
| §1.1 polarized frames | g=1, ψ₁=2, c=3; g=0 | ψ₂=3/2 gives product 3; ψ₂=2 gives 4; rank zero leaves G_m | Polarization and multiplier retained | None |
| §1.2 coefficients and boundary | κ=0, empty/nonempty boundary | Coefficients O and I_D; empty D gives I_D=O | Boundary ideal determines extension | None |
| §1.2 translation | Three-cycle matrix m, f=m₂₁, acting identity | f(m)=1 but f(m⁻¹)=0 | Wrong evaluation inverse fails identity | None |
| §1.2 integral lattice | Characteristic 2, symmetric/divided square | Mixed coefficients 2=0 versus 1 | Integral distinction necessary | None |
| §1.3 weight dictionary | (1,0),(1,1),(2,2); Ω^(0,2) | Ranks 2,1,1; Ω^(0,2)=det² | Wrong Sym² has rank 3 | None |
| §1.3 dual Hodge weights | ((1,0);−1) | Dual ((0,−1);1), not multiplier −1 | Dual reverses multiplier | None |
| §§1.3, 4.1, 6.7 scalar convention | (a,b)=(5,2), x=2 | 128·4⁻³=2; wrong twist gives 8192 | Same character in every occurrence | None |
| §1.4 coherent complexes | [O→ϖO] in degrees 0,1 | H=(0,k); derived reduction H=(k,k) | Ordinary H⁰ reduction loses k | None |
| §1.4 deck perfectness | k=𝔽₂, Δ=C₂, trivial k | Tor_j over k[Δ] is k for all j≥0; over k, higher Tor=0 | Base perfectness does not imply deck perfectness | None |
| §1.5 Matlis self-duality | A₂ and zero module | 1 pairs with 1/ϖ² modulo O; zero dual is 0 | Chosen uniformizer fixes identification | None |
| §1.5 inverse action | k=𝔽₅, δ=2, λ(1)=1 | δλ(1)=3; 3·2=1, versus 2·2=4 | Contragredient direction forced | None |
| §1.5 ramified comparison | ϖ²=p, p odd | Different (2ϖ); trace-dual lattice (2ϖ)⁻¹O≠O | Extra character/different datum needed | None |
| §1.6 finite duality | X=ℙ¹_A, A=ℤ/9 or k[t]/t², F=O(2) | H⁰(F)=A³; H¹(F∨ω)=A³; other paired groups 0 | Dual ranks 3=3 and 0=0 | None |
| §1.6 trace | Genus-one curve, F=O | RΓ(ω)[1] has H⁻¹=k,H⁰=k; k[0] has 0,k | Trace is not an isomorphism | None |
| §1.6 base/coefficient exclusions | B=k[ε,δ]/(ε,δ)², F=k | dim Hom_B(k,B)=2; bidual dimension 4≠1 | Not a DVR quotient with locally free F | None |
| §2.1 equivariant Čech | Trivial C₂ torsor, one-open cover | Upstairs Aₙ-rank 2; invariants rank 1; Δ=1 rank 1 | Invariants cannot replace upstairs complex | None |
| §2.2 torsor projectivity | Split C₂ torsor over 𝔽₂ | Basis (1,0),(0,1), rank 1 over k[C₂]; trace(1,0)=1 | No averaging by group order 0 | None |
| §2.3 infinite-rank lifting | N=⊕O; N=k over A₂ with Δ=1 | Quotient ⊕A₂[Δ]; nonflat k has ϖk=0, not A₂-free | Flatness and infinite rank distinguished | None |
| §2.4 dual perfect model | ℙ¹_k, F=O | Cochain F has (k,0), dual coefficient ω has (0,k) | Coefficient and degree reversal necessary | None |
| §2.5 hyper-Tor edge | R=𝔽₂[t]/t², C=[R —t→ R] in degrees 1,0 | H₁=H₀=k; Tor₂(k,k)→H₁⊗k is id; next map k→k is 0 | No false injection after deleting Tor₂ | None |
| §3.0a scheme solid structure | A=k[x], invert x | D(x) is open; H¹_(x)=k[x,x⁻¹]/k[x], completion H⁰=k[[x]] | Opposite localization triangle changes degrees | None |
| §3.0a operations and limits | Identity, I=(0),(1), coefficient O | Identity sends 1→1; completions O and 0; complements empty and X | Zero counit or swapped support fails | None |
| §3.0b additional spans | Identity; multiplication p; q=tᵖ | Operators 1; lattice map p with rational inverse 1/p; dq at 0 is 0 | No automatic flatness/étaleness | None |
| §3.1 actual coefficient arrow | Identity legs on Spec ℚ, T=×2 or 0 | Adjoints 1→2 and 1→0 | Formalism preserves the given arrow | Explicit solid input |
| §3.2 global action | Split r-point cover, unit coefficient | Unit followed by sum sends 1→r; zero arrow sends 1→0 | Trace, rather than arbitrary map | None |
| §3.3 composition | x→x+1 then x→2x | x→2x+1; reversed order x→2x+2 | Order fixed | Explicit solid coherence |
| §3.4 fundamental class | Identity; t²=s over char 2; q=t² over char 0 | Identity 1; inseparable algebra trace 0; derivative 2t vanishes at 0 | Existing class need not be invertible | None |
| §3.5 derived coinvariants | k=𝔽₂, Δ=C₂, regular and trivial modules | Regular coinvariants k[0]; trivial module has H_j=k for all j≥0 | Flatness separates ordinary/derived | None |
| §3.6 base change | Spec k→Spec O pulled back along itself | k⊗ᴸ_Ok has H⁻¹=k,H⁰=k; ordinary tensor only H⁰=k | Non-Tor-independent square rejected | Explicit solid comparison input |
| §3.7 tensor twist | O-line transport 1,0,p | Operators 1,0,p; inverse transport requires 1/p∉O | Transport need not be invertible | None |
| §3.8 rational transport | Multiplication p on Hodge line | p·(1/p)=1 in E; 1/p∉O | Rational isomorphism does not give integral inverse | None |
| §3.9 dual of pullback | Identity on Spec k, F=k[1] | D(F)=k[−1] on both sides of D(Lp*F)≃p!D(F) | Perfect complexes and shifts admitted | General transpose |
| §3.9 dual of shriek | Closed point i into 𝔸¹, F=O, G=O[1] | i!O=k[−1]; D_XG=O; i!G=i!D_XF=k; T=Tᵗ=id_k | Underived/zero-shift replacement fails | New README Check |
| §3.9 invertible shriek | Same point, K=O_X | i!K=k[−1]=Li*K⊗k[−1] | lci formula uses shifted invertible object | General proof route |
| §3.9 proper nonfinite action | b:Bl_point ℙ²→ℙ², both legs | Exceptional fibre ℙ¹; b!O=O(E); H⁰(O_E(−1))=H¹=0; actions 1 and 1 | Pairing 1=1, finite-leg condition rejected | New README Check |
| §3.9 permutation adjoint | Three-cycle σ on ℚ³ | ⟨σe₁,e₂⟩=1=⟨e₁,σ⁻¹e₂⟩; same σ on right gives 0 | Transpose is inverse, not same cycle | Retained Check |
| §3.9 finite-flat trace | Split two-point cover, char 0,2,3 | Scalar 2; in char 2, 0=0; in char 3, 2=2; averaged scalar 1 when defined | No division by degree | New README Check |
| §3.9 biduality/degeneracy | F=0; k[1]; scalar T=×2 on k | Zero dual 0; dual shifts −1 then +1; double transpose scalar 2 | Perfect biduality, no Gorenstein-base assumption | General proof route |
| §3.9 nonreduced base | B=k[ε,δ]/(ε,δ)², X=C=S=Spec B, F=G=O, T=×ε | D_BO=B and D_BD_BO=B; evaluation at (1,1) gives ε=ε; ε²=0 | Perfect relative duality needs no Gorenstein base | General transpose |
| §3.9 properness boundary | C=X=𝔸¹, p₁=id, p₂=constant 0 | Joint map closed; p₂ fibre 𝔸¹ nonproper; global pullback x→0 | Transposed unrestricted trace not asserted | Explicit properness hypotheses |
| §3.10 contracted supports | {0,1}, p₁=id,p₂=0,Z={1} | Inverse images {1},∅; both complementary inclusions fail | Orientation tested both ways | Explicit enhanced input |
| §3.10 multiplicities | p₂:t→t², Z=V(t); Frobenius | Supports {0}={0}; ideals (t)≠(t²); Frobenius inverse support Z | Set-theoretic definition, empty/total also valid | None |
| §3.11 completion | A=k[x], I=(x),(0),(1), F=A | H⁰=k[[x]],A,0; unit sends x→x for (x) | Object completion, not Hom completion | None |
| §3.12 filtered action | One stratum, coefficient k[0], T=×2; empty stratum | E₁=k, abutment k, both maps ×2; empty term 0 | One enhanced filtered morphism | Explicit solid coherence |
| §3.13 derived Hecke detection | C=O[0]⊕O[−1], projector onto second term | Projector H⁰=0,H¹=id; zero H⁰=0,H¹=0 | Degree-zero equality does not imply derived equality | None |
| Layer 4 lifts | Projective complex O[0], scalar endomorphism 2 | Derived and chain scalar both 2; opposite composition 2·3=6 | Supplied bijection preserves actual map | None |
| §4.1 generator normalization | ℓ=2, similitudes 2,4 | Factors 1/8,1/64; scalar weight (4,2) gives 64/64=1 | Generator labels distinguished | None |
| §4.2 division | O-line T=ϖ²id; k at k-exponents 0,1 | Divided map id over O; multiplication kernels 0,k on residue coefficient | Torsion-free uniqueness; k=0 endpoint retained | None |
| §4.3 spin polynomial | q=2, BCGP generators (1,3,2) | Monic coefficients 1,−3,14,−24,64; reciprocal has constant 1, leading 64 | q-powers/order retained | None |
| §4.3 repeated-root specialization | Formal q=1, generators (1,4,4) | (X−1)⁴, coefficients 1,−4,6,−4,1 | No field of size 1 asserted | None |
| §4.4 tower descent | C₂ on 𝔽₂ versus ℚ | H¹=k versus 0; invariant augmentation (1+σ)→0 | Characteristic-zero exactness not reused integrally | None |
| §5.0 model/quotient | [F:ℚ]=1; order-2 quotient at p=3,2 | Dimensions 3,2,≤1; (1+σ)/2 idempotent at p=3; denominator absent at 2 | Model and quotient hypotheses necessary | None |
| §5.0 boundary stabilizer | t→−t on G_m⊂𝔸¹ over ℚ | No open fixed point; 0 fixed on boundary | Open freeness insufficient | None |
| §5.0 EO geometry | g=2, degree-one F; k[x,y]/xⁿ | Codimensions 0,1,2,3; quotient dimension 1, Koszul H⁰ that quotient, negative H=0 | Regular thickenings, not arbitrary supports | None |
| §5.0 boundary regularity | k[x,y]/x²; k[x,y]/(xy,x²) | y-kernel 0 versus nonzero x; localization preserves/kills x | Associated-prime input discriminates | None |
| §5.1 formal coefficients | Zero cone; ray; q=t² | Empty face condition; exponents ≥0 versus >0; ideals (t²)≠(t) | Quotient/p-level verification retained | Explicit quotient-descent input |
| §5.2 relative vanishing | Canonical n=0,1; subcanonical n=0 | Inclusion in theorem false,true,true | Strict positive twist only in canonical case | None |
| §5.3 length shifts | d=3, i=4, lengths 0,1,2,3 | Degrees 4,3,2,1; cutoffs >3,>2,>1,>0 | Shift not suppressed | None |
| §5.3 substitutions | p=7, α=β=0, t=1,2,0 | At 1: (3,1),(4,2),(4,4); at 2: (4,2),(5,3),(5,5); t=0 fails positivity | All three ranges retained | None |
| §5.4 degree-two range | p=7,(3,1),(6,1),(7,1) | Differences 2,5,6; α+β=0,3,4; last fails 4<4 | Endpoints correct | None |
| §5.5 degree-one range | p=7,(4,2),(6,1),(3,1) | Sums 6,7,4; first two admitted, last fails ≥6 | First vanishing degree 2 | None |
| §5.6 positive-degree range | p=7,(4,4),(7,4),(8,4) | Differences 0,3,4; last fails ≤3 | First vanishing degree 1 | None |
| §5.7 dual weight | (4,2), then dual again; char 2 degree-two symmetric power | (1,−1) then (4,2); mixed coefficient 0 versus divided coefficient 1 | Involution and factorial restriction retained | General transpose applies |
| §5.8 singular mod-p range | p=5,a=4,3,6 | At 4: H²_sub=H³_sub=0; at 3: H⁰_can=H³_sub=0 for (3,0); 6 excluded | Distinct coefficient tags retained | None |
| §5.9 reduction of sections | ϖ differential versus O[0] | Reduction H⁰ map 0→k nonsurjective versus O→k surjective | H¹ torsion obstruction explicit | None |
| §5.10 Cousin input | k[x,y], (x,y); k[x,y]/xy, (x) | Koszul H⁰=k, negative H=0; wrong quotient H⁻¹=(y)≠0 | Codimension alone insufficient | Explicit EO geometry input |
| §5.11 interior restriction | k[x,y]/x² versus /(xy,x²), invert y | Kernel 0 versus kernel containing x≠0 | Termwise injection only under regularity | Explicit boundary-regularity input |
| §5.12 Hecke chain map | k→id k, maps (id,id),(id,0) | dT=Td=id versus dT=id,Td=0 | Differential compatibility necessary | None |
| §5.13 integral relations | Identity/zero on k[0] | Generic actions both 0; integral actions 1 and 0 | Generic fibre cannot detect torsion relation | Explicit quotient-descent input |
| §5.14 local factors | T=A₂×A₂; ℤ at prime (3) | e₁²=e₁,e₁e₂=0,e₁+e₂=1; ℤ idempotents only 0,1 | Artinian factors, not arbitrary prime localization | None |
| §5.15 residual form | Eigenvalues 1,1,1,2 over ℚ | Symplectic pairing would require products 2=1 | GL₄ data alone not symplectic | None |
| §5.16 congruence | T=O[t]/t(t−ϖ), generic characters 0,ϖ | Both reduce to (ϖ,t); localized complex dimension 2 versus individual generic dimension 1 | Residual congruence not a complex maximal ideal | None |
| §5.16 separated blocks | T=O×O on O² | Residual factors ℂ×0 and 0×ℂ | Orthogonal projectors select correct space | None |
| §6.1 interior image | (t)→k[t], empty boundary, zero map | Image (t) excludes 1; empty boundary gives k[t]; zero gives 0 | Actual image, not full canonical space | None |
| §6.2 growth resolution | Trivial SL₂ coefficient; constant modular section | Full relative H²=ℂ; parabolic C²=0; boundary restriction 1 | Pair and extension are fixed | None |
| §6.3 Su comparison | V=0; central action 2; f(y)=y | Both complexes 0; 2·(1/2)=1 versus 4; weighted tail ∫(log y)^(−2n)dy=∞ | Correct inverse tower action and distinct growth spaces | None |
| §6.4 Harris map | Constant section, nonempty cusp divisor | Boundary value 1≠0; no subcanonical lift | Cusp/interior excludes constant class | None |
| §6.5 spectral images | ℂ²→ℂ, (x,y)→x | Source dimension 2, image 1; (0,1) maps to 0 | Kernel not counted as coherent class | None |
| §6.6 contribution | Relative dimension 1, multiplicity 3, level dimension 2 or 0 | Source dimension 6 or 0; image ≤6 or 0 | Multiplicities retained | None |
| §6.7 coefficient linearization | (5,2), c=−7 then −4 | V central parameter −7 then −1; finite scalar 128 then 2 | Underlying bundle does not fix Hecke action | None |
| §6.8 holomorphic limit | Ω^(0,2); diagonal Hecke (1,2) on ℂ² | Parameter (−1,0;4); second coordinate 0; image algebra ℂ×ℂ | Limit retained, no multiplicity inference from eigencharacter | None |
| §6.9 product count | Two admitted local packet choices | Degree counts 1,2,1; finite dimension 3 gives contributions 3,6,3 | Subject to full component/packet hypotheses | None |
| §7.0 central transport | (a,b)=(5,2),c=−4 | Coefficient −1, balanced +1, sum 0; wrong sign sum −2; dual orbit sum −2 | Same normalization in preceding layers | None |
| §7.0 spin orbit | (a,b;c)=(3,2;0) | Dual orbit 7/2,7/2,3/2,3/2 sums 10; balanced orbit sums −10 | Dual convention necessary | None |
| §7.0 residual exclusion | Two nonzero rank-two summands, including char 2 | Invariant dimension 2<4 | Not absolutely irreducible | None |
| §7.1 chambers | (2,1),(2,−1),(1,−2),(−1,−2); (0,0) | Memberships {0},{1},{2},{3}; origin {0,1,2,3} | Closed membership not unique or a nondegenerate limit | None |
| §7.2 singular families | (2,2),(2,1),(1,0) | Shifted (1,0),(1,−1),(0,−2); memberships {0,1},{1,2},{2,3} | Dual families/degrees agree | None |
| §7.3 singular threshold | R_sing=5, k=4,3 | −λ₁=5,4, admitted/rejected; λ₁≥5 rejects both | Negative-parameter bound retained | None |
| §8.1 boundary nerve | Two-open cover, (1,1),(1,0) | Alternating difference 0,−1 | Restriction sign fixed | None |
| §8.2 boundary exactness | H⁰(D)=0,H¹_sub=0,H¹_can=H¹(D)=ℂ | H¹ cokernel dimension 1; all-degree boundary vanishing forces 0 | Rational all-degree input necessary | None |
| §8.3 boundary coefficient | k=0,1; boundary eigenvalue 1 in char 0,2 | ω² versus ω³(−cusps); 1∉(q), q∈(q); Hecke values 2,0 | Endpoint and factor 2 retained | None |
| §8.4 Satake factorization | q=2, α=1,β=2,u=4,D=2,T₀=1 | Roots 1,2,4,8; coefficients 1,−15,70,−120,64; uD=q³T₀=8 | Normalization agrees with geometric dictionary | None |
| §8.4 small characteristic | α=β=u=1, then char 2 | (X−1)⁴; mod 2 gives X⁴+1 | No division by root difference or 2 | None |
| §8.5 Hilbert boundary weights | Two places, scalar weights (4,4),(6,6) versus equal (4,4) | Nonparallel case excludes point term; equal pair is parallel; residual direct sum has invariant rank 2 | No positive-degree conclusion inferred | None |
| §8.6 localized exactness | H⁰(D)=0,H¹(D)=ℂ | H⁰ iso; H¹ injection with possible cokernel dimension 1 | Image H̄¹ distinguished from full H¹_can | None |
| §8.7 rational endpoint | a=2, finite invariant dimension d=0,1 | Shift (1,0); paired contributions (0,0),(1,1); missing generic partner gives (1,0) | Packet hypotheses retained, no large threshold | None |
| §8.8 gap threshold | R_sep=3,R_gap=5; (8,4),(12,6),(8,2),(10,6) | Pairings (5,7,9,2),(7,11,15,4),(7,7,7,0),(5,9,13,4); gap hypotheses false,true,true,false | Separation conversion and permitted zero wall agree | None |
| §8.8 central reduction | Real scalar 2; unipotent element | 4·1/4=1 versus wrong 16; ν(unipotent)=1 | Correct twist preserves constant-term vanishing | None |
| §8.9 conditional dimensions | l₀=0,1,2; finite dimension 3 | H⁰=3,H¹=0,3,6; l₀H⁰=0,3,6 | Equality with packet and gap inputs | None |
| Worked coefficient example | Trivial Δ torsor, Δ=1,C₂ | Aₙ[Δ] has rank 1,2 over Aₙ; derived coinvariants Aₙ in both cases | Upstairs/downstairs convention agrees | None |
| Worked weight example | p=7,(a,b)=(4,2) | Length-one (0,0,2), length-two (0,0,1); dual (1,−1); scalar exponent 0; spin orbit ±3/2 twice | All layers' computations agree | None |
| Worked packet example | Two l_v=2 places, finite dimension 3, then one place | Contributions (H⁰,H¹)=(3,6), then (3,3) | Conditional full-packet count | None |

No added declaration is a scalar surrogate or a theorem mirroring a Check. No hypothesis identifying a map was replaced by a free parameter. The repaired theorem names the actual correspondence and constructed dualities.

## Mechanical checks and maintainer notes

- Required elaboration, from the pinned content checkout: lake env lean on packages/AutomorphicBundlesPartII/Suggested.lean exited **0**. Its only diagnostic was **Suggested.lean:67:8: warning: declaration uses `sorry`**. All four used Tau Ceti imports resolved; no targeted module build was needed. No Lean process remains running.
- A scratch copy containing the acceptance file followed by **#check @name for every declaration**, all three, also exited **0**. Compared its elaborated types with §§1.4–1.6 and the supplied signatures: dvrCoefficientRing retains O, CommRing and universe parameters; integerCoherentCohomology retains R, CommRing, X and the structural-map instance; finiteCoefficientSerreDuality retains IsDomain, DVR, maximal-ideal-adic completeness, irreducible ϖ, n>0, smooth relative dimension, properness, local freeness, finite presentation and integer d−i. **No binder was lost; no signature changed.**
- Suggested.lean remains unchanged. The finite-coefficient duality headline is still present. Its module docstring individually records the other missing headline carriers, including coherent upper shriek, trace and enhanced correspondence objects for composition/base change/transpose. Broadening §3.9 does not make these carriers available. The three own Lean names still occur in the README, with no new own backticked name.
- Local dependency extraction: **69 numbered sections, 70 Needs lines, 158 → 169 edges, zero cycles**. It expands local section ranges and whole-layer inputs. Nine additions repair F02: §§3.1, 3.3, 3.6, 3.10, 3.12 → §3.0a and §§5.1, 5.10, 5.11, 5.13 → §5.0. The revised §3.9 adds its own two edges to §§3.1 and 3.0a. No local prerequisite was deleted. Layer summaries were also inspected; no reverse dependence was introduced.
- The exact required merge-order gate exited **0** with this output:

```text
depcheck: 52 roadmaps, 603 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. Tooling and merge order were not edited.

- The citation resolver exited **0**: cross-roadmap citations found nowhere **None**; Lean names found nowhere **None**. It used main 794d0fc and the 363 indexed open heads. Its stated lack of pinned-package checking was addressed by reading the actual pinned files and by elaboration above.
- git diff --check exited **0**. Only packages/AutomorphicBundlesPartII/README.md and this requested report changed. Suggested.lean, metadata.toml, sources.toml and design/plan.json are unchanged, including every existing supplier gap. No gate failure was supplied for this repair round.
- No target, Lean name, source key, supplier gap or layer was added or renamed. Existing consumers of §3.9 may now use proper nonfinite smooth refinements, while retaining perfect coefficients and the explicit duality/properness hypotheses. Its finite-flat specialization and inverse-coset convention are preserved. No other roadmap needs a name migration. Nothing was committed or published.
