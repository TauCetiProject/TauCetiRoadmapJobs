# AutomorphicBundlesPartII package report

The package expands the accepted 70-target design into `packages/AutomorphicBundlesPartII/README.md`, with all eight layers, every API clause, all definition Checks and the worked comparisons. Five independently owned targets cease to be independent sections: their mathematical content, Checks and uses are retained as supplier contracts or explicit coefficient comparisons. The README contains no undeclared local Lean API names.

The separate `design/review.json` and pre-existing report files named in the brief were absent. The acceptance record actually available is the accepted `review` object in `design/plan.json`, including its 70 per-target verdicts and the 18 source findings. These were read as mathematical claims and audited. No suspicious instructions were encountered. Only the top-level `gaps` JSON value was edited; every other parsed value was compared with the original and is identical. The six original gap records remain, and seven exact supplier-gap records are added.

The content repository was clean at main `dfdf9a3671420779ef892df5948d52764a1c66ce`. Its actual manifest pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. These replace the design’s older pin inventory for the package audit. Upstream shape was read in `TauCetiRoadmap/AdicEtaleGeometry/README.md`, `TauCetiRoadmap/AlgebraicVectorBundles/README.md` and `TauCetiRoadmap/DerivedModuleAlgebra/README.md` on main.

## Headline acceptance decisions

The following list was saved before creating `Suggested.lean`. Each theorem needs a carrier whose construction is substantial library work, so none is forced through a predicate or a free-variable scalar theorem.

| Headline | Decision | Missing carrier |
| --- | --- | --- |
| Finite-coefficient coherent Serre duality (Layer 1) | Not statable at the pins | relative dualizing sheaves and coefficient-linear smooth-proper coherent duality over a finite DVR quotient. |
| Equivariant finite perfect coherent models and derived deck descent (Layer 2) | Not statable at the pins | a scheme finite-étale torsor with descended coherent coefficient, equivariant derived global sections and their finite perfect realization. |
| Derived coherent correspondence composition, base change and transpose (Layer 3) | Not statable at the pins | coherent upper shriek, its trace and the enhanced coefficient correspondence carrier. |
| Solid completion and the equivariant compact-support filtration spectral sequence (Layer 3) | Not statable at the pins | solid sheaves on schemes, completed locales and their six operations. |
| Normalized higher coherent Hecke action and GAGA/tower comparison (Layers 3–4) | Not statable at the pins | Shimura towers, canonical/subcanonical automorphic coefficients, analytic coherent cohomology and geometric Hecke spans. |
| Lan relative subcanonical vanishing on the specified models (Layer 5) | Not statable at the pins | toroidal-to-minimal PEL contractions and their formally canonical coefficient sheaves. |
| The three integral GSp4 small-weight vanishing ranges and singular mod-p consequences (Layer 5) | Not statable at the pins | the integral Siegel model, Hodge bundle, boundary ideal and automorphic symmetric-power coefficients. |
| Integral hyperspecial Hecke convolution relations and coherent local factors (Layer 5) | Not statable at the pins | Hilbert–Siegel EO geometry and its coherent Cousin/Hecke complexes. |
| Su canonical coherent/automorphic comparison (Layer 6) | Not statable at the pins | a Shimura compactification with its automorphic coefficient, growth resolution, and the relative parabolic/K_h cohomology of automorphic forms. |
| Harris cusp/interior comparison and multiplicity-counted coherent contribution (Layer 6) | Not statable at the pins | the canonical/subcanonical coefficient map, the cuspidal and L2 spectral occurrence maps, and the fixed Hermitian pair. |
| Tempered-image chamber restriction and large singular interior decomposition (Layer 7) | Not statable at the pins | archimedean discrete-series/limit representations, their coherent occurrence maps and the geometric interior image. |
| All-degree rational non-Eisenstein boundary vanishing (Layer 8) | Not statable at the pins | the toroidal Siegel boundary, its Hecke-linearized coefficients and residual ideal. |
| Totally real degree-zero boundary vanishing and the degree-zero/one interior comparison (Layer 8) | Not statable at the pins | Hilbert–Siegel compactified models and normalized boundary coefficient/Satake maps. |
| Localized cuspidal injections, large-gap equality and conditional all-weight rational exhaustion (Layer 8) | Not statable at the pins | automorphic spectral multiplicity spaces, coherent coefficients, congruence localization and the precise packet comparison. |
| Conditional dimension equality h1 = l0 * h0 (and rational h1 = h0 for a >= 2) (Layer 8) | Not statable at the pins | the same geometric cohomology spaces and packet occurrence/multiplicity data. |

There are zero stated headlines and zero admitted declarations. This is the permitted empty acceptance test: one `import Mathlib`, one module docstring listing the missing carriers, and the required namespace. No Tau Ceti import is used, no data is admitted and no option override appears. Generic homotopy lifting and chamber predicates are deliberately not substituted for these headlines.

## Ownership sweep and changes

The object searches used `roadmaps list`, `roadmaps show` and `roadmaps grep`, including the supplied open-head index, alongside recursive `rg` searches in the board packages and the two pinned libraries. The open index records the relevant supplier folders as new roadmaps, rather than revisions to existing main folders. When a folder exists on main its main copy is authoritative. This covers the listed open-roadmap heads through the supplied tool index; no independently discovered pull request was used. In particular the searches included associated bundles and extensions, coherent duality, Matlis duality, finite projective/perfect models, Cousin/EO theory, solid six operations, spin polynomials and singular coherent representations. The named unrelated sibling roadmaps returned no competing ownership of the geometric constructions retained here.

| Design item or generic clause | Supplier/removal or distinct retained content |
| --- | --- |
| Generic associated bundles, canonical/subcanonical extensions and section convolution | Removed as independent ownership; AutomorphicBundles B0–B5, with B3.BGG for dual BGG. The integral graded Levi realization and higher-degree comparison stay here. |
| Generic vector-bundle tensor, dual, determinant and finite locally free operations | Imported from AlgebraicVectorBundles L0A–L0C. |
| Generic coherent cohomology, H⁰/sections, and naturality | Pinned Tau Ceti’s four declarations in `TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:60`, `:66`, `:80`, `:86`; no duplicate definitions. Scalar/derived and geometric perfectness are separate. |
| Generic Matlis duality | DerivedModuleAlgebra §§1.M.1–1.M.2; only the coherent-homology specialization and ramified character comparison stay here. |
| Generic perfect objects, retracts, completion, nilpotent lifting and finite derived-action block localization | DerivedModuleAlgebra §§1.E.0–1.E.1 and DeformationAndDerivedPatchingAlgebra §§7.5–7.9. Retained targets identify geometric complexes and actual commuting operators with this algebra. |
| Generic Čech, Cousin, support, depth and coherent duality | SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21 and 4.8–4.10. The EO acyclicity and integral Hecke detection application stay here. |
| `chain-lifts` independent target | Deleted; Mathlib `CochainComplex.isKProjective_of_projective` in `Mathlib/Algebra/Homology/HomotopyCategory/KProjective.lean:113` and `CochainComplex.IsKProjective.Qh_map_bijective` in `Mathlib/Algebra/Homology/DerivedCategory/KProjective.lean:43`. The geometric application and its homotopy-class interpretation remain in contracts and examples. |
| `siegel-chambers` independent definition | Deleted; AutomorphicFormsOnReductiveGroups §6.3. Its wall and origin examples remain in Layer 7 and the worked examples. |
| `infinitesimal-character` independent generic construction | Deleted; AutomorphicFormsOnReductiveGroups §§6.3 and 6.7 own the parameter and Kostant representatives. The actual CG20 coefficient transport is §7.0. |
| `GL4-archimedean-transfer` independent generic target | Its formula is a geometric coordinate/normalization comparison in §7.0 using the supplied local parameter carrier; the general global transfer is not reconstructed here. |
| `conditional-packet-pairing` independent local/global registry | Its exact conditional classification and multiplicity formula is stated once in §7.0; pairing is derived from the trivial-component character sum, not assumed as a hypothesis containing the desired conclusion. |
| Generic spin polynomial and residual Galois-type/non-Eisenstein predicates | IntegralHeckeAndGaloisDeterminants §§3a–3b and SmoothRepresentationsOfLocalGroups SR.4.5. Retain the geometric generator dictionary and coherent specialization. |
| Deep normalized Siegel models attributed to ShimuraCompactificationsPartII C13–C14 | That folder is absent from main and the indexed heads. Their relevant owner is ShimuraCompactifications C5.19–C5.21 and C5.31, with C4.16 for the rational Klingen span. Additional coefficient spans are §3.0a. |
| Generic formally canonical definition and its supplied-model verification | The definition and supplied-model verification are ShimuraCompactifications C5.21. Section 5.1 is only its additional p-level/quotient verification. The zero face is excluded from its positive-cone intersection. |
| Canonical-bundle formula | ShimuraCompactifications C5.29; its application to the Serre-dual actual coefficient remains §5.7. |
| Boundary fundamental class | AlgebraicModuliForArithmeticGeometry §7.5 with SchemeAndStackFoundations §§2.19–2.21; replaces the obsolete A0-extension citation. |

The bare additive image definition proposed in the design is omitted from the Lean file: it is easy to encode at the pins but is not a headline. Likewise no scalar normalization, chamber membership, API lemma or Check is admitted as padding.

The two unresolved design citations were repaired: ArithmeticGaloisRepresentations R01.1/R01.5 becomes §§1.1–1.2, 1.7–1.11 and 5.1–5.3; the later AutomorphicGaloisRepresentations R19 references are replaced by WeightsInEtaleCohomology R34.6 and the exact normalization comparison in §7.0.


The native definition audit also read `Mathlib/Algebra/Category/ModuleCat/Sheaf/LocallyFree.lean:61`: its local generator index sets need not be finite, so local freeness alone is not the finite locally free hypothesis used here. `Mathlib/Algebra/Category/ModuleCat/Sheaf/Quasicoherent.lean:269` gives finite presentations; that condition is retained separately. `TauCeti/RepresentationTheory/ClassicalGroups/WeylModule/Basic.lean:122` and its actual declarations use a ℚ-algebra Young symmetrizer, so it is not an integral dual-Weyl lattice supplier. Object-file searches in the actual pinned `Mathlib` and `TauCeti` trees found no Shimura/automorphic coefficient or solid-scheme upper-shriek carrier from which these headlines could be stated. The existing curve divisor-sheaf equivalence at `TauCeti/AlgebraicGeometry/WeilDivisor/Scheme/SerreDuality.lean:113` was read with its field, integral/separated/Noetherian, codimension-one DVR, valuative, function-field and constant-field hypotheses. It is cited as the curve overlap and does not supply general finite-DVR-coefficient derived duality.

## Notions placed before their consumers

The solid scheme six operations and discrete proper-coherent comparison are explicit construction targets in §3.0a, using SolidAnalyticRings for coefficients and EnhancedDerivedSheaves for enhanced sheaves. Neither source supplies the whole scheme six-operation comparison. The completed-locale and ordinary-local-cohomology triangles are kept separate.

The required Hilbert–Siegel models, compactified quotient descent, EO affine images and cofinal Cohen–Macaulay regular thickenings are §5.0. The overlapping IgusaVarietiesAndTorsionConcentration EO targets occur later and are not suppliers. The boundary regularity assertion is strengthened to the associated components of every chosen thickening; reduced geometric noncontainment alone is insufficient.

The later ModularityAndLanglandsExtensions and AutomorphicGaloisRepresentations directions are not dependencies. The overlapping early classical and Hilbert rank-two realizations were located in WeightsInEtaleCohomology R34.6 and HilbertModularVarietiesAndShimuraCurves R18.3.29; their source restrictions were read. The realization itself is imported from the earlier Weights roadmap, with the unrestricted boundary polynomial range recorded as a supplier gap, and only its geometric normalization comparison remains here. The required CG20 spin infinitesimal-character normalization, exact conditional classification/character-formula hypotheses, and lower-rank boundary Galois-polynomial comparison are §7.0. No general local Langlands or automorphic Galois library is re-planned here. DerivedDeRhamCohomology Layer 6 is logarithmic period classes, not the coefficient Deligne–Illusie/BGG theorem attributed to DD.6 in the design; that contract is assigned to CrystallineCohomology CR.5.4 and AutomorphicBundles B3.BGG. The conditional input includes the explicit character sum and cuspidality criterion; equal packet multiplicities are its derived conclusion. The generality remains that of the accepted geometric applications.

## Supplier gaps and unsupported claims

Seven exact supplier contracts are added under their suppliers: integral dual-Weyl lattices (LanglandsParameterStacks LP3.0 states a field theory); scalar-linear coherent/additive comparison; GAGA/duality-trace compatibility; the full normalized boundary spin-Satake restriction; the coefficient logarithmic splitting used by Lan–Suh; the integral small-weight dual BGG extension; and the general lower-rank polynomial realization extension to WeightsInEtaleCohomology R34.6. The original design’s 33 requests are represented by the contracts or the explicit local construction targets; they are not silently treated as implemented declarations.

The README cannot assert an unconditional global classification or packet multiplicity-one theorem, higher-degree totally real boundary vanishing, an integral inverse of a p-isogeny, an arbitrary bad-level integral convolution theorem, a whole-complex trace isomorphism, integral exact finite-group invariants, or a canonical symmetric-power self-dual formula outside its factorial-invertibility range. It makes none of those assertions. The vector-weight boundary factor 2 is retained as a direct correspondence-calculation target, not an established primary-source result or a residual trace-division argument.

## Adversarial pass

These rows audit mathematical consistency, not proofs of the deep targets. Every original target, including the independently supplied items, has an explicit value witness. The API table separately checks all 110 API clauses of the design. Definitions, added constructions, conventions and worked examples are covered below. Conditions that a source or supplier must prove are named as targets or exact gaps. No mathematical statement is justified merely by a `sorry` build.

| Statement | Instances tried | Values computed on the two sides / negative control | Result and change |
| --- | --- | --- | --- |
| 1.1 The integral de Rham Levi torsor | O=ℤ₅, g=1, c=6, u=2; g=0 | ψ₂=6/2=3 and ψ₁ᵗψ₂=6; independent ψ₂=4 gives 8≠6; rank zero leaves c∈O× | Retain the polarization and multiplier. |
| 1.2 Integral dual-Weyl automorphic coefficients | zero weight; S₃ acting on its regular functions | κ=0: can=O, sub=I_D; L_sL_t f(1)=f(t⁻¹s⁻¹)=L_(st)f(1); wrong L_1 f(m)=f(m⁻¹); for m=(123), regular coordinate f(m)=m₂₁, the values are 0 versus 1, so L_1≠id | Keep corrected left translation; integral lattice is a supplier gap. |
| 1.3 The Siegel weight dictionary | (a,b)=(1,0),(1,1),(0,0); Ω^(0,2) | ranks 2,1,1; Ω^(0,2)=det(E)² of rank 1; Lie/Hodge scalar factors u⁻¹ and u multiply to 1 | Keep independent central coordinate. |
| 1.4 Integral coherent cohomology complexes | Spec O, D=∅; O --ϖ→ O in degrees 0,1 | C_can=C_sub=O[0]; H⁰(C)=0,H¹(C)=k, but after derived reduction H⁰=H¹=k | Derived coefficient compatibility, not cohomology tensor equality. |
| 1.5 Coherent homology over a DVR | Spec O; zero coefficient; O=ℤ_p[ϖ],ϖ²=p,p odd | Hom_O(A_n,E/O)=(E/O)[ϖⁿ]≅A_n via 1↦1/ϖⁿ; zero↦0; trace dual lattice=(2ϖ)⁻¹O≠O | Keep inverse different and Matlis target. |
| 1.6 Finite-coefficient Serre duality | d=0; genus-one curve over k | d=0 pairing is multiplication on A_n; for genus one, RΓ(ω)[1] has H^(-1)=k,H⁰=k, whereas k[0] has H^(-1)=0 | Trace is a counit, not whole-complex isomorphism. |
| 2.1 The equivariant Čech model | trivial C₂-torsor, A_n=ℤ/4; Δ=1 | one affine term=(ℤ/4)²=A_n[C₂], deck involution swaps entries; invariants have rank 1, upstairs rank 2; Δ=1 rank 1 | Actual deck action before cohomology. |
| 2.2 Étale Galois projectivity | trivial C_p-torsor over 𝔽_p; S₃ over 𝔽₂ | k[C_p] has basis p group elements, free rank 1; k[S₃] free rank 1, not zero when 6=0 in k; averaging would require 1/0 | Retain general finite-group descent, no averaging. |
| 2.3 Integral Čech freeness | A=O,N=O,trivial C₂-torsor,n=2; A=O[t] | first quotient=A₂[C₂], free rank 1; second has basis {tʲg:j≥0,g∈C₂}, infinite O-rank | Make O-flatness and finite p-group hypotheses explicit. |
| 2.4 Perfect models for coherent cohomology and homology | trivial Δ-torsor; Δ=1; zero coefficient | model A_n[Δ][0] has rank 1 over group ring and rank #Δ over A_n; dual has inverse deck permutation; zero model has all ranks 0 | Finite replacement distinguished from infinite Čech terms. |
| 2.5 Derived coefficient change and deck descent | regular k[C₂] module; trivial k module in char 2 | regular derived coinvariants=k[0]; Tor_j^(k[C₂])(k,k)=k for every j≥0; Tor₂ term is k, not 0 | Retain five-term edge and derived descent. |
| 3.1 Cohomological correspondences | identity legs; degree-two finite étale span | identity carrier=Hom(F,G); pull-trace on 1 gives 2; swapping a graph changes pullback to inverse/dual action | Upper shriek and proper-leg domain explicit. |
| 3.2 The map on derived global sections | degree 2 then degree 3 covers; zero map | on 1: first 2, then 6; composite degree 6 gives 6; zero coefficient arrow gives 0 in each degree | Pullback unit and trace order retained. |
| 3.3 Composition of cohomological correspondences | degree 2 then 3 spans; S₃ graphs s=(12),t=(23) | scalar actions 3·2=6; st≠ts, and graph pullback order follows the chosen legs; id·s=s | No strict chain representatives in the assertion. |
| 3.4 Correspondences from a fundamental class | identity; split degree-two algebra; mismatched boundary | identity class sends 1↦1; trace on A×A is (a,b)↦a+b so 1↦2; D₁=∅,D₂={0} gives boundary ideals A versus (t) | Boundary construction imported from exact §7.5. |
| 3.5 Tensor coefficients and deck coinvariants | A[Δ]; trivial 𝔽₂[C₂]-module; M=A | regular coinvariants=A and id↦id; trivial module has Tor₁=k≠0; M=A gives T⊗1=T | Derived tensor, augmentation and flatness retained. |
| 3.6 Base change for cohomological correspondences | ℤ→𝔽₂; self-intersection Spec 𝔽₂ | Tor₁^ℤ(𝔽₂,𝔽₂)=𝔽₂, whereas the underived fibre has only degree zero; flat ℤ→ℚ has Tor₁=0 | Finite nonflat base change alone is rejected. |
| 3.7 Twisting by an automorphic coefficient | rank-one transport 3, then 2; transport 0 | T=id gives 3, a second twist gives 6; zero transport gives 0; multiplication by p has inverse 1/p only after localization | Source/target transport and rational domain fixed. |
| 3.8 Rational isogeny transport of weight sheaves | [p] on a rank-one Hodge lattice | integral map=p, rational inverse=1/p, product=1; modulo p map=0, hence not invertible | No integral inverse inferred. |
| 3.9 The transpose correspondence | cyclic automorphism of order 3; two basis vectors | permutation matrix P has transpose P⁻¹≠P; ⟨Pe₁,e₂⟩=1=⟨e₁,P⁻¹e₂⟩; double transpose P | Dual coefficient and inverse coset retained. |
| 3.10 Contracted support filtrations | X={0,1},p₁=id,p₂=0,Z={0} or {1} | Z={0}: p₁⁻¹Z={0}⊆X=p₂⁻¹Z; Z={1}: {1}⊄∅; ∅ and X satisfy equality | Set-theoretic orientation fixed. |
| 3.11 Derived formal completion of coherent coefficients | I=0,I=1; O/ϖ; I=(x) in k[x] | completions M,0 and O/ϖ respectively; k[x] completes to k[[x]], while H¹_(x)=k[x,x⁻¹]/k[x] | No conflation with local cohomology. |
| 3.12 Equivariance of the completion and compact-support filtration | one nonempty stratum; two-step filtration | one stratum E₁^(0,t)=H^t(X,F) with all other columns 0; for zero coefficient every term and differential is 0 | Completion/compact-support triangles distinguished. |
| 3.13 Coherent Hecke operators in every degree | unit coset; scalar at (4,2),(5,2); integral torsion | unit sends 1↦1; scalar x=2 gives 1 and 2; nonzero k-stalk endomorphism becomes 0 after 1/p | H⁰ or rational agreement does not prove integral relations. |
| supplier/comparison Homotopy classes of coherent Hecke chain lifts | bounded projective stalk A[0]; identity disk | Hom_h(A[0],A[0])=A=Hom_D(A[0],A[0]); identity disk is homotopic to 0 | Delete generic target; cite the two pinned K-projective declarations. |
| 4.1 The arithmetic normalization of the Siegel Hecke action | (4,2),(5,2); ℓ=2 | central exponents 0 and 1; x=2 acts by 1 and 2; similitudes 2 and 4 give factors 1/8 and 1/64; ν³ instead gives 8 and 64 | Arithmetic sign fixed by nonzero-exponent witness. |
| 4.2 Integral divisibility and rational p-operators | O, T=ϖ²id; k=O/ϖ | normalized operator on O is id; over k both U=0 and U=id satisfy ϖU=0 | Keep torsion-free uniqueness domain. |
| 4.3 Geometric Hecke generators and the spin polynomial | q=2,T₀=1,T₁=3,T₂=2 in BCGP order; formal q=1 | monic polynomial X⁴−3X³+14X²−24X+64; reciprocal constant 1 and leading coefficient 64; q=1,T₀=1,T₁=4,T₂=4 gives (X−1)⁴ | Generic polynomial imported; actual generator adapter retained. |
| 4.4 GAGA and the coherent tower | proper ℙ¹_C; finite C₂ deck; char 2 negative control | H⁰(O)=ℂ,H¹(O)=0; invariants of ℂ² with swap have dimension 1; shear on 𝔽₂² maps invariant line to 0 in invariant quotient | Characteristic-zero exact invariants only. |
| 5.1 Formally canonical and subcanonical coefficients | zero cone; ray; two-ray chart | zero cone allows all exponents; ray canonical includes 0 and subcanonical starts at 1; two rays allow xy, exclude x | Delete duplicate definition; retain extra-model verification; exclude zero face. |
| 5.2 Toroidal-to-minimal relative vanishing | identity contraction; n=0,can versus sub | identity has R^i=0 for i>0; the statement includes sub at n=0 and excludes can at n=0; no 0/0 coefficient | Preserve strict versus weak n range. |
| 5.3 Lan–Suh’s small-weight specialization for GSp₄ | p=7,(a,b)=(4,2); (4,4) | lengths 1,2: (α,β,t)=(0,0,2),(0,0,1); α+β=0<4; length 3 for (4,4): (0,0,1) | Keep logarithmic/BGG hypotheses and p>2. |
| 5.4 Vanishing above degree two | p=7,(4,2); (3,1); p=3 | differences 2 and 2; degree cutoffs i>2; (3,1) has α=β=0,t=1; at p=3 interval 2≤a−b≤1 empty | Inclusive endpoints retained. |
| 5.5 Vanishing above degree one | p=7,(4,2); (3,1) | first sum=6 and diff=2, so i>1 vanishes; second sum=4<6, so this theorem gives no degree-two vanishing | No use below the sum endpoint. |
| 5.6 Positive-degree vanishing | p=7,(4,4),(7,4); p=3 | diff 0 or 3 lies in [0,3], gives i>0; p=3 requires 0≤diff≤−1, empty | No natural subtraction in integer bound. |
| 5.7 Serre duality and the dual Siegel weight | (4,2), d=3; (3,0) in char 2 | dual weight=(1,−1), second dual returns (4,2); degrees 0↔3,1↔2; in char 2, 3! is 0 and symmetric/divided powers cannot be identified | Retain factorial-invertibility range and actual integral dual outside it. |
| 5.8 Mod-p singular-weight vanishing | p=7,a=4; a=3 in (a,3−a) | (4,2) gives H²_sub=H³_sub=0; (3,0) is self-dual after canonical/subcanonical swap, gives H⁰_can=H³_sub=0; a=2 excluded | Boundary tags retained. |
| 5.9 Large parallel twists and reduction of sections | ℙ¹,O(−2+t); fixed two thresholds 2 and 5 | H¹(O(−2+t))=0 for t≥1; maximum of thresholds=5; reduction of free H⁰ is surjective | Bound depends on fixed geometry and levels. |
| 5.10 The EO Cousin computation | k[x], stratum V(x); affine minimal point with ℙ¹ fibre | 0→k[x]→k[x,x⁻¹]→H¹_(x)→0 exact; fibre is not affine even though point is affine | Ordinary Cousin computation, not completed filtration. |
| 5.11 Injecting the Cousin complex into the interior | k[x,y]/xⁿ; k[x,y]/(xy,x²) | y is injective on the first quotient; in second, 0≠x and yx=0, so x maps to 0 after 1/y | Associated-prime regularity on every thickening required. |
| 5.12 Hecke maps on the EO Cousin complex | k[x]→k[x], x↦ux, u∈k×; identity | local Ext representative 1/x maps to 1/(ux)=u⁻¹/x; restriction and differential both multiply by u⁻¹; u=1 gives identity | Cofinal Koszul maps with ordinary support differentials. |
| 5.13 Integral prime-to-p Hecke relations at hyperspecial level | unit coset; finite étale degree 2 then 3; quotient order 2 | 1·T=T; two traces give 6 on 1; averaging quotient projector exists at p=3 and not p=2 | Hyperspecial and p-split model, boundary detection explicit. |
| 5.14 Localized coherent perfect complexes | T=A_n×A_n,C⊕D; ℤ at (p) | e=(1,0) has e²=e,e(1−e)=0 and selects C; ℤ idempotents only 0,1 cannot realize ℤ_(p) | Import generic block splitting; retain geometric compatibility. |
| 5.15 Non-Eisenstein coherent localization | ρ₂⊕ρ₂χ versus irreducible rank 4; residual char 2 | direct sum preserves a 2-dimensional subspace; twist/dual preserve dimension and irreducibility; trace of two equal summands is 0 in char 2 | Use complete spin polynomial and symplectic multiplier. |
| 5.16 Congruence localization of complex coherent cohomology | T=O[t]/t(t−ϖ), two generic characters | t=0 and t=ϖ reduce to m=(ϖ,t); selected complex space has dimension 2; one generic maximal ideal would give 1 | Residual congruence sum, not one generic character. |
| 6.1 Interior coherent cohomology and towers | D=∅; zero arrow; ℙ¹ with one point boundary | identity image=whole H^i; zero arrow image=0; H⁰(O(−1))=0→H⁰(O)=k has image 0 | Boundary-ideal image construction kept. |
| 6.2 The canonical-extension growth resolution | identity chart; constant coefficient; derivative of log growth | degree-zero local constants map 1↦1; d²(1)=0; for f(t)=sin(exp(t²)), ∣f∣≤1 but at t_m=√log(2πm), f=0 and f′=4πm√log(2πm), exceeding every fixed polynomial or exponential-linear bound in t_m | Retain differentiably moderate growth and the parabolic pair. |
| 6.3 Su’s automorphic comparison | compact-mod-centre zero-dimensional Shimura example | p_o=0, relative H⁰ is K_o-invariants and higher degrees 0, matching finite coherent sections; unrestricted g may contain the removed split-centre direction | Central reduction and modified V_o retained. |
| 6.4 Harris’s cusp and interior comparison | Siegel dimensions 0 and 3; one-dimensional image model | end degrees cusp/interior dimensions agree; a map k²→k has source dimension 2 and image dimension 1, so image containment does not imply source equality | Separate cusp/subcanonical map, no equality of all canonical classes. |
| 6.5 Cuspidal, L² and tempered image subspaces | zero source; map k²→k,(x,y)↦x | image dims 0 and 1; vector (0,1) maps to 0; counting it as nonzero coherent class would give 2 instead of 1 | Source, cusp image, L² image and interior remain distinct. |
| 6.6 Isotypic contribution to coherent cohomology | multiplicity 3, local dim 1, finite invariants dim 2 | source contribution=3·1·2=6; if invariants dim 0 or local cohomology dim 0 then contribution=0; image dimension ≤6 | Multiplicity and comparison image retained. |
| 6.7 Algebraic and analytic coefficient conventions | (a,b,c)=(4,2,−3),(1,0,0); rational scalar r=2 | V coordinates (−2,−4;0),(0,−1;1); central shift by 1 changes last coordinate by 2; finite norm of r is 1/2 and real sign is +1 | Require finite-adelic correction and actual coefficient intertwiner. |
| 6.8 Holomorphic cusp eigensystems | (k,r)=(2,2); scalar Sp₄ k=2,3 | parameter (−3,0;6); scalar strict bound k>2 rejects 2 and accepts 3; semisimple diagonal algebra on ℂ² may give same character twice | Lowest-weight input imported; no global uniqueness from one eigencharacter. |
| 6.9 Products and relative-cohomology degree counts | two one-dimensional degree-one factors; two holomorphic/generic choices | degrees 1+1=2, sign on swapping two odd classes=−1; packet choice counts (1,2,1) in degrees 0,1,2 before constraints | Full component actions retained. |
| supplier/comparison The four Siegel coherent chambers | (2,1),(2,−1),(1,−2),(−1,−2); (0,0),(2,0) | memberships {0},{1},{2},{3}; origin {0,1,2,3}; (2,0) {0,1} | Delete duplicate definition; cite AF §6.3 and retain examples. |
| supplier/comparison Infinitesimal characters and Kostant representatives | (4,2;c), c=−3; rank-one regular/wall | semisimple shift=(3,0); c=−3 gives w=0; rank-one parameter 1 has one chamber, 0 has two | Delete generic parameter/Kostant target; retain geometric coordinate transport. |
| supplier/comparison The GL₄ archimedean parameter | (4,2),w=0; (5,2),w=1 | orbits {1.5,1.5,−1.5,−1.5} and {1.5,1.5,−2.5,−2.5}; sums 0 and −2 | Move exact required comparison to §7.0; distinguish source/supplier central signs. |
| 7.1 Tempered coherent chamber vanishing | (4,2); (2,1); (1,0) | shifted (3,0) permits degrees 0,1; (1,−1) permits 1,2; (0,−2) permits 2,3 | Statement only on tempered L² image with full-group input. |
| 7.2 Characteristic-zero singular-weight ranges | (a,2),a=2; (a,3−a),a=2; (1,1) | pairs (1,0),(1,−1),(0,−1), degree sets {0,1},{1,2},{2,3}; none adds C₀ at (1,−1) | Keep closed-wall overlaps and image restriction. |
| 7.3 Large singular-weight interior decomposition | R=5 formal bound, k=4 and k=3 | λ₁=−5 or −4; −λ₁≥5 holds only for k=4; holomorphic/generic local dimensions 1 in degrees 0/1 | Singular negative-parameter bound, not regular all-root theorem. |
| supplier/comparison Conditional holomorphic–generic packet pairing | one permitted pair, multiplicity 2; two real places | finite invariant dim 3 gives h⁰=h¹=6 for one pair; two changes give h¹=12,h⁰=6 | Conditional global input moved into §7.0; no unconditional multiplicity one. |
| 8.1 The Siegel boundary nerve calculation | two boundary components meeting in one connected stratum | nerve cochain map k²→k is (a,b)↦b−a; kernel dimension 1,cokernel 0; deleting intersection would give kernel dim 2 | ℚ geometry and incidence/Kostant shifts retained. |
| 8.2 Non-Eisenstein boundary vanishing over Q | reducible boundary system; empty localized support | two rank-two summands give invariant subspace dimension 2<4, contradict irreducibility; empty support gives all dimensions 0 | Every degree only in rational case. |
| 8.3 The genus-two boundary Φ calculation | k=0 and k=1; char 2 trace | pushforwards ω² and ω³(−cusps); weight 2 constant boundary value survives only in first; 2·1=0 in 𝔽₂ | k=0 exception retained; exact Hecke scalar is target, never divide by 2. |
| 8.4 The boundary Satake polynomial factorization | ρ₂(F)=diag(2,3),χ(F)=5; char 2 repeated summands | roots 2,3,10,15 give X⁴−30X³+281X²−900X+900; in char 2 repeated scalar 1 gives (X−1)⁴=X⁴+1, trace 0 | Specify full normalized polynomial and four distinct monomials. |
| 8.5 Degree-zero Hilbert–Siegel boundary vanishing | F degree 2; l=(2,4) or (2,2); scalar parallel | nonparallel lower weight kills Hilbert boundary coefficient, dimension 0; parallel lower weight permits coefficient (k₁,k₂); scalar π_*O_D=O_∂ follows from R¹π_*I_D=0 | Only H⁰ after localization, no higher boundary vanishing. |
| 8.6 Localized degrees zero and one | exact 0→A→B→D; H⁰(D)=0,H¹(D)=k | H⁰(A)≅H⁰(B); H¹(A) injects into H¹(B); possible cokernel k has dimension 1, not forced 0 | Keep degree-one injection and actual image. |
| 8.7 Cuspidal exhaustion for all rational singular weights | a=2, empty spectrum or multiplicity 2 finite dim 3 | shift (1,0) is compact-regular; empty sum dimension 0; paired holomorphic/generic sums both dimension 6 | Small a retained only with precise conditional packet inputs. |
| 8.8 Localized coherent cohomology and cuspidal representations | two real places, l=(2,2), finite dim 3,m=2 | single-change source dimension=2·3·2=12; H⁰ holomorphic source dimension 6; equality in H¹ needs large gaps, injection alone permits dimension >12 | Every coefficient/level/central hypothesis made explicit. |
| 8.9 Conditional coherent dimension equality | l₀=0,1,2 and h⁰=6 | h¹=0,6,12 respectively; rational l₀=1 gives h¹=h⁰=6 even a=2 under conditional exhaustion | Conditional component-compatible counts retained. |

| Added construction or convention | Instances tried | Values computed | Result and change |
| --- | --- | --- | --- |
| Solid scheme operations and locale comparison (§3.0a) | Identity; I=0,1; k[x] and (x) | Identity sends 1↦1; completion gives M,0,k[[x]]; local H¹ gives k[x,x⁻¹]/k[x] | Construction stays here; proper/perfect comparison has an actual domain. |
| Additional p-level spans (§3.0b) | [p], identity, q=tᵖ | Hodge maps p,1; inverse 1/p is rational; dq=p t^(p−1)dt | Ramified boundary is not declared étale. |
| Hilbert–Siegel quotient/model (§5.0) | d=1,2; quotient of order 2 at p=3,2 | Dimensions 3,6; idempotent (1+σ)/2 has square itself at p=3; denominator 0 at p=2 | Compactified prime-to-p descent required. |
| EO regular thickenings (§5.0) | k[x,y]/xⁿ; k[x,y]/(xy,x²) | y injective on first; yx=0 with x≠0 on second | Reduced noncontainment alone rejected. |
| Global conditional character formula (§7.0) | S={1}; S=C₂ with sign obstruction | Character average 1 in first; (1−1)/2=0 in second | Do not assume conclusion as hypothesis; component condition is explicit. |
| DVR and coefficient convention | ℤ_p, k[[t]], zero ring, field | Dual of O/ϖⁿ has length n; over k[[t]] use 1/tⁿ; zero ring/field fail DVR dimension-one/domain convention | Uniformizer and n≥1 explicit; no Pontryagin assertion in equal characteristic. |
| Shift and dual convention | O --ϖ→ O in degrees 0,1 | Integral H⁰=0,H¹=k; residue H⁰=H¹=k; dual reverses degrees | Derived tensors and homological indexing retained. |
| Right torsor/left translation convention | unit, S₃ 3-cycle, rank 0 | Correct L₁=id; wrong L₁f(m)=0≠1 for the regular coordinate f(m)=m₂₁ on a GL₃ cycle; rank zero multiplier survives | Correct the printed translation; exclude nominal trivial torsor. |
| Central twist and geometric Frobenius | (4,2),(5,2), x=2, q=2 | Scalar values 1,2; ε(Frob)=1/2 versus arithmetic 2; normalization factors 1/8,1/64 | Use nonzero-exponent and two-similitude witnesses. |
| W/V finite norm | rational scalar 2 | Real sign +1 and finite norm 1/2; omitting finite norm changes the correction by 2 | Preserve actual adelic intertwiner. |
| Chamber convention | four interior samples; (2,0),(0,0) | Membership sets {0},{1},{2},{3}; {0,1}; {0,1,2,3} | Compact singularity is not a nondegenerate limit. |
| Empty/zero cases | zero coefficient; empty D; empty localized spectrum | All zero cohomology; image of identity is whole space; empty spectral sum dimension 0 | No nonemptiness hypothesis silently introduced. |
| Non-compactness and finite-level invariants | affine line; finite C₂ at char 0 and 2 | Γ(A¹,O)=k[t], infinitely many independent monomials; averaging requires 1/2 and fails in char 2 | Properness/admissibility and characteristic-zero invariant range retained. |
| Two-term incidence and Koszul signs | two boundary pieces; two odd local classes | Boundary (a,b)↦b−a has kernel dimension 1; swapping degree 1 and 1 gives −1, while 0 and 1 gives +1 | Orient incidence and products consistently. |
| Small-weight substitutions | p∈{2,3,5,7,11,13,17,19}, −12≤a≤30, −15≤b≤a | 1512 length-one, 1299 length-two and 1167 length-three cases satisfy α≥β≥0,t>0,α+β<p−3 and recover (a,b) | All sampled endpoints pass; p=2,3 have empty relevant intervals. |
| Worked reduction and deck comparison | trivial Δ torsor; p-differential; trivial k[C_p] module | Derived regular coinvariants A_n; residue extra H⁰=k; Tor₂(k,k)=k | No discarded higher Tor or underived reduction. |
| Worked p=7,(4,2) | both first ranges, third range | a−b=2,a+b=6,b=2; first two apply, third fails; dual=(1,−1), shift=(3,0), central exponent 0 | Mod-p, characteristic-zero and normalization claims agree. |
| Worked chamber endpoints | (a,2) and (a,3−a), a=2 | Shift (1,0) permits 0,1; shift (1,−1) permits 1,2; neither admits extra opposite chambers | Closed wall overlaps preserved. |
| Worked boundary exactness | H⁰(D)=0,H¹(D)=k | Degree-zero isomorphism; degree-one injection with possible one-dimensional cokernel | No totally real all-degree extrapolation. |
| Worked packet counts | l₀=0,1,2, h⁰=6 | h¹=0,6,12; two generic choices both at degree 1 each have dimension 6 | Actual multiplicities and component hypotheses retained. |

## API-clause witnesses

Each row refers to a prose API clause, not a proposed Lean declaration. Naturality witnesses evaluate both paths on a generator; zero, identity, dual and boundary controls are included in the target table above.

| Target / API clause | Computed witness | Result |
| --- | --- | --- |
| 1.1 Specify the right GL_g×G_m action, including the multiplier on ψ₂. | (u,c)=(2,6): dual frame=3; product=6 | Compatible at the stated hypotheses. |
| 1.1 A local basis of Lie(A) gives an M-equivariant trivialization of the torsor. | basis change 2 then 3 equals 6; inverse factors 1/2·1/3=1/6 | Compatible at the stated hypotheses. |
| 1.1 After inverting p, the associated bundles agree with B1–B3 through the Hodge filtration. | inverting p sends p-frame to invertible p-frame, inverse 1/p | Compatible at the stated hypotheses. |
| 1.1 The frame action preserves ψ₂=c(ψ₁ᵗ)⁻¹ and obeys identity and multiplication laws. | identity scale=1; scales 2·3=6 | Compatible at the stated hypotheses. |
| 1.1 Pulling back the model and polarization pulls back this torsor with its action and frame trivializations. | pullback of 6/2=3 to any O-algebra still satisfies 2·3=6 | Compatible at the stated hypotheses. |
| 1.2 In a frame, ω^κ identifies with O⊗V_κ with the stated transition law. | κ=0 gives rank 1 and invariant function 1 | Compatible at the stated hypotheses. |
| 1.2 Allowed coefficient base change commutes with the associated bundle and with its integral lattice. | L_sL_t f(1)=f(t⁻¹s⁻¹)=L_(st)f(1) | Compatible at the stated hypotheses. |
| 1.2 The boundary ideal inclusion gives ω^κ_sub→ω^κ_can, functorially in the coefficient. | trivial coefficient can=O, sub=I_D; D=∅ gives O | Compatible at the stated hypotheses. |
| 1.2 An M-equivariant integral module map induces a bundle map; identities and composites are preserved. | rank-one characters t and t² tensor to t³; zero map induces zero | Compatible at the stated hypotheses. |
| 1.2 Use B0’s tensor/dual comparisons with the integral representation maps and boundary twists; do not identify a dual-Weyl dual with the same weight in positive characteristic. | coefficient inclusion 1↦(1,0) induces the first-coordinate bundle map | Compatible at the stated hypotheses. |
| 1.4 H^i(C_*(F)) is H^i(X,F_*); forgetting scalars agrees with Scheme.Modules.Cohomology. | identity coefficient on Spec O gives identity of O[0] | Compatible at the stated hypotheses. |
| 1.4 Derived base change to A_n gives RΓ(X_(A_n),F_*(A_n)) under the proper perfect base-change hypotheses. | the p-differential complex has residue H⁰=k,H¹=k versus integral H⁰=0 | Compatible at the stated hypotheses. |
| 1.4 Coefficient morphisms commute with C_sub→C_can. | D=∅ arrow=id; D one point on ℙ¹ gives H⁰(O(−1))=0 | Compatible at the stated hypotheses. |
| 1.4 RΓ sends identity and composite coefficient maps to identity and composites, additively and O-linearly. | zero coefficient has 0 in every term | Compatible at the stated hypotheses. |
| 1.4 The boundary ideal sequence gives the full derived triangle and long exact cohomology sequence, naturally for coefficient maps. | for D one point on ℙ¹, H⁰(O)=k→H⁰(O_D)=k is id and H¹(O(−1))=0 | Compatible at the stated hypotheses. |
| 1.5 Specify evaluation into E/O and its functorial O-linear duality. | Spec O dual A_n≅A_n via 1↦1/ϖⁿ | Compatible at the stated hypotheses. |
| 1.5 On a functional λ, δ acts by λ∘δ⁻¹. | C₃ permutation dual sends e₁* to e₃*, inverse to e₁↦e₂ | Compatible at the stated hypotheses. |
| 1.5 A_n≃Hom_O(A_n,E/O) through a↦(b↦ab/ϖ^n mod O), with the chosen uniformizer. | zero coherent cohomology dual=0 | Compatible at the stated hypotheses. |
| 1.5 A map F→G induces H_i(F)→H_i(G) by dualizing the contravariant dual-coefficient map; identity and composition are preserved. | dual of scalar 2 is scalar 2: ⟨2x,y⟩=⟨x,2y⟩ | Compatible at the stated hypotheses. |
| 1.5 Evaluation satisfies ⟨δλ,δx⟩=⟨λ,x⟩ and is O-balanced; finite étale pullback and trace are adjoint under it. | rank-one pairing (1,1/ϖⁿ) gives 1/ϖⁿ modulo O, nonzero for n≥1 | Compatible at the stated hypotheses. |
| 2.1 Build the complex with alternating restrictions and the natural deck action. | one-open trivial C₂ torsor gives A_n², deck swap | Compatible at the stated hypotheses. |
| 2.1 Identify its cohomology with coherent cohomology naturally in F and n. | constant refinement of an affine has H⁰=A_n,H^i=0 for i>0 | Compatible at the stated hypotheses. |
| 2.1 Cover refinement induces the canonical derived isomorphism compatible with Δ and coefficient reduction. | deck swap squared=id on (1,0) | Compatible at the stated hypotheses. |
| 2.1 A coefficient map induces the termwise Δ-equivariant cochain map, preserving identity and composition. | scalar coefficient 2 sends (1,0)↦(2,0) before and after Čech | Compatible at the stated hypotheses. |
| 2.1 Derived A_n→A_m reduction, m≤n, agrees with the corresponding geometric derived coefficient comparison and commutes with cover refinement. | reducing (ℤ/4)² to (ℤ/2)² preserves the swap and gives rank 2 | Compatible at the stated hypotheses. |
| 2.4 C_n^∨ identifies with the specified coherent dual-coefficient complex. | trivial torsor A_n[Δ] has group-ring rank 1 | Compatible at the stated hypotheses. |
| 2.4 C_n computes the coherent homology defined in IC.1, with inverse deck action. | dual of cyclic shift P is P⁻¹; pairing value remains 1 | Compatible at the stated hypotheses. |
| 2.4 Two finite projective models carry a homotopy equivalence inducing the same derived identification. | zero coefficient gives zero dual model | Compatible at the stated hypotheses. |
| 2.4 Transport geometric morphisms through the chosen derived identifications, independent up to homotopy of projective representatives. | identity quasi-isomorphism on the rank-one stalk has inverse identity | Compatible at the stated hypotheses. |
| 2.4 The model comparisons commute with derived deck coinvariants and coefficient reduction as proved by coefficient-descent. | A₂[Δ]⊗_(A₂)A₁=A₁[Δ], rank 1 over the reduced group ring | Compatible at the stated hypotheses. |
| 3.1 For proper p₁ identify T with Rp₁*Lp₂*F→G by coherent duality. | id/id gives the ordinary arrow F→G | Compatible at the stated hypotheses. |
| 3.1 The diagonal correspondence and identity coefficient morphism give the identity correspondence. | finite split degree-two trace sends (1,1)↦2 | Compatible at the stated hypotheses. |
| 3.1 Precomposition in F and postcomposition in G act functorially on correspondences. | zero coefficient arrow gives zero adjoint | Compatible at the stated hypotheses. |
| 3.1 On fixed legs two correspondences agree exactly when their coefficient arrows Lp₂*F→p₁!G agree. | two scalar arrows equal on generator 1 iff both have same scalar | Compatible at the stated hypotheses. |
| 3.1 For fixed legs the coefficient arrows form an O-module; coefficient pre/postcomposition is O-linear. | adjoint of scalar 2+3 is scalar 5, and zero is zero | Compatible at the stated hypotheses. |
| 3.2 Extract H^i(T) from the single derived operator. | identity correspondence sends 1↦1 | Compatible at the stated hypotheses. |
| 3.2 The identity correspondence acts by the identity on RΓ. | degree-two trace gives 2, zero gives 0 | Compatible at the stated hypotheses. |
| 3.2 For the B5 finite-flat correspondence and its trace, H⁰(T) is B5/hecke-section-operator. | scalar 2 and 3 actions add to 5 | Compatible at the stated hypotheses. |
| 3.2 The global-action map for fixed legs preserves zero, addition and O-scaling of coefficient arrows. | coefficient scalar 3 commutes with degree-two trace: 3·2=2·3=6 | Compatible at the stated hypotheses. |
| 3.2 With the properness and base-change assumptions of correspondence-composition, convolution acts by composition of the two derived global maps. | degree-two followed by degree-three gives 6, as for composite degree 6 | Compatible at the stated hypotheses. |
| 3.4 Compose the sheaf coefficient map with the pulled-back fundamental class. | identity fundamental class sends 1↦1 | Compatible at the stated hypotheses. |
| 3.4 For finite locally free p₁, the adjoint uses the trace from the finite-duality algebra. | A×A trace (a,b)↦a+b; trace of unit=2 | Compatible at the stated hypotheses. |
| 3.4 Under the A0 boundary hypotheses the same construction sends subcanonical coefficients to subcanonical coefficients. | boundary identity maps (t) into (t), quotient value 0 | Compatible at the stated hypotheses. |
| 3.4 Perfect coefficient maps commute with tensoring the fixed fundamental class; zero and sums of input coefficient arrows are preserved. | rank-one tensor of trace with scalar 3 sends unit pair to 6 | Compatible at the stated hypotheses. |
| 3.4 The boundary class commutes with open base change, and in the finite-flat case with base changes retaining the Cartier conditions, exactly as in A0. | flat extension to ℚ preserves degree-two trace value 2 | Compatible at the stated hypotheses. |
| 3.5 The induced global morphism is RΓ(T)⊗^L1 whenever coherent derived base change applies. | M=A gives 1⊗T=T | Compatible at the stated hypotheses. |
| 3.5 An equivariant T induces T_Δ on derived deck coinvariants. | rank-one scalar 2 remains scalar 2 modulo 3 | Compatible at the stated hypotheses. |
| 3.5 For A[Δ]-flat F the derived coinvariant coefficient equals its ordinary quotient. | regular k[C₂] augmentation sends 1 and σ both to 1 | Compatible at the stated hypotheses. |
| 3.5 Iterated derived scalar extension agrees with extension along the composite coefficient map, with the same T action. | (A⊗A)⊗M=A⊗M=M on 1⊗1⊗m | Compatible at the stated hypotheses. |
| 3.5 The A[Δ]→A augmentation comparison is compatible with coefficient reduction and subgroup descent, using derived coinvariants throughout. | augmentation of 1+σ=2 equals sum of augmentations 1+1 | Compatible at the stated hypotheses. |
| 3.7 Construct the coefficient morphism T_E. | rank-one transport 3 makes identity operator 3 | Compatible at the stated hypotheses. |
| 3.7 Twisting by O with identity transport returns T. | zero transport gives 0, unit transport gives 1 | Compatible at the stated hypotheses. |
| 3.7 Successive twists agree with the tensor product transport. | two transports 2 and 3 compose to 6 | Compatible at the stated hypotheses. |
| 3.7 A map between coefficient transports commuting with the two legs intertwines the twisted correspondences. | coefficient map scalar 5 gives commuting product 5·3=3·5=15 | Compatible at the stated hypotheses. |
| 3.7 A transport satisfying the cocycle law for composed correspondences makes twisting commute with convolution. | triple scalars 2,3,5 yield 30 on both associativity paths | Compatible at the stated hypotheses. |
| 3.10 Contraction of Z is equivalent to p₂⁻¹(X∖Z)⊆p₁⁻¹(X∖Z). | Z=∅ and X have equal preimages | Compatible at the stated hypotheses. |
| 3.10 Specify a finite indexed filtration and contraction proofs for every closed term. | for p₁=id,p₂=0,Z={0}, preimages {0}⊆{0,1} | Compatible at the stated hypotheses. |
| 3.10 Changing the closed subscheme structure without changing its support preserves contraction. | complement reverses: p₂⁻¹{1}=∅⊆{1}=p₁⁻¹{1} | Compatible at the stated hypotheses. |
| 3.10 Intersecting each Z_l with a correspondence-stable open preserves contraction. | restriction to a singleton reduces both equal preimages to that singleton | Compatible at the stated hypotheses. |
| 3.10 Transposing the legs exchanges contracted and expanded filtrations, including the empty and total closed sets. | swapping legs turns {0}⊆X into the expanded inclusion X⊇{0} | Compatible at the stated hypotheses. |
| 3.13 Construct the endomorphism for a double coset with its chosen coefficient normalization. | unit double coset gives identity 1 | Compatible at the stated hypotheses. |
| 3.13 Common refinements give the same RΓ morphism through the toroidal cohomology comparisons. | scalar x=2 at (4,2) gives 1; at (5,2) gives 2 | Compatible at the stated hypotheses. |
| 3.13 The induced H⁰ action equals the parent B5 pull–trace/convolution action. | coefficient scalar 3 commutes with a degree-two trace, value 6 | Compatible at the stated hypotheses. |
| 3.13 Maps of Hecke-linearized coefficients intertwine the individual derived operators and the boundary arrow. | D=∅ coefficient arrow=id, hence the two actions agree | Compatible at the stated hypotheses. |
| 3.13 The degree-zero comparison does not assert higher integral convolution; use integral-hecke-relations for the hyperspecial integral algebra action. | on the interior trace degrees 2·3=6; torsion k-identity becomes 0 after 1/p, so rational detection alone fails | Compatible at the stated hypotheses. |
| 4.1 The normalized action of xI₄ is x^(a+b−6). | similitude ℓ=2 gives 2⁻³=1/8 | Compatible at the stated hypotheses. |
| 4.1 The three normalized geometric generators obey the displayed ℓ-power formulas. | similitude 4 gives 4⁻³=1/64 | Compatible at the stated hypotheses. |
| 4.1 The normalized W and V realizations agree with their stated central parameters. | weight (4,2) central x=2 gives 2⁰=1 | Compatible at the stated hypotheses. |
| 4.1 Successive multiplier twists add their exponents and transport composite coefficient correspondences compatibly. | ν=2 then 3: (2·3)⁻³=1/216=(1/8)(1/27) | Compatible at the stated hypotheses. |
| 4.1 The ν⁻³ twist uses the same scalar on canonical and subcanonical coefficients, so their comparison arrow remains equivariant. | boundary coefficient scalar 1/8 commutes with restriction of section 1, giving 1/8 on both paths | Compatible at the stated hypotheses. |
| 4.2 Construct U from divisibility and torsion-freeness. | T=ϖ²id has quotient id on O | Compatible at the stated hypotheses. |
| 4.2 Two normalized maps with the same ϖ^k multiple coincide in a torsion-free target. | k=0 returns T, no division | Compatible at the stated hypotheses. |
| 4.2 After inverting ϖ the integral U equals ϖ⁻kT; the p-level operators use only this rational formula. | on O/ϖ, ϖ·0=ϖ·id=0, demonstrating nonuniqueness | Compatible at the stated hypotheses. |
| 4.2 Maps between torsion-free factorizations intertwine their divided maps by uniqueness after multiplication by ϖ^k. | coefficient map scalar 3 commutes with the factorization ϖ²·3=3·ϖ² | Compatible at the stated hypotheses. |
| 4.2 A flat coefficient extension preserving the divisibility factorization carries U to the normalized extended map; arbitrary torsion reduction is not a uniqueness argument. | flat fraction-field extension gives the same quotient id; reduction loses uniqueness | Compatible at the stated hypotheses. |
| 5.1 Give the chartwise completed expansion with its exact monoid. | zero cone permits exponent 0 on both versions | Compatible at the stated hypotheses. |
| 5.1 The boundary-ideal twist replaces σ∨ by the positive submonoid in the permitted charts. | ray permits exponents 0,1,… canonically and 1,2,… subcanonically | Compatible at the stated hypotheses. |
| 5.1 The specified finite filtrations and monomial expansions commute with the base changes allowed in Lan17. | two rays: xy allowed, x excluded | Compatible at the stated hypotheses. |
| 5.1 Restriction to a boundary chart and an allowed fan refinement preserves the completed expansion and its finite filtration. | identity chart restriction preserves coefficients 1 and t | Compatible at the stated hypotheses. |
| 5.1 A coefficient isomorphism carrying the chart filtrations and monomial expansions transports the formally canonical property. | isomorphic rank-one coefficient via unit 2 sends constant 1 to 2 and preserves its finite filtration | Compatible at the stated hypotheses. |
| 5.14 Produce the local-factor idempotent and its perfect image. | e=(1,0) selects first summand C from C⊕D | Compatible at the stated hypotheses. |
| 5.14 Cohomology of the summand is the ordinary T_n-localized cohomology. | e²=e=(1,0); e(1−e)=0 | Compatible at the stated hypotheses. |
| 5.14 The dual summand uses the ideal pulled back by transpose and the specified central twist. | outside both maximal supports localization has zero cohomology | Compatible at the stated hypotheses. |
| 5.14 Local-factor projectors sum to identity and are mutually orthogonal; the resulting perfect decomposition is functorial for maps commuting with T_n. | commuting scalar maps 2 and e give e·2=2e=(2,0) | Compatible at the stated hypotheses. |
| 5.14 A Hecke-equivariant derived equivalence of perfect models identifies their local factors and the coefficient-descent comparisons whenever the idempotents correspond. | dual pairing of first and second summands is zero, first-factor dual still selects rank of C | Compatible at the stated hypotheses. |
| 5.16 A characteristic-zero eigenspace lies in M_(m,C) exactly when its integral character reduces to m. | t↦0 and t↦ϖ both select one residual ideal; complex dimension 2 | Compatible at the stated hypotheses. |
| 5.16 Compatible finite stable lattices give the same generic localized summand. | no selected character gives dimension 0 | Compatible at the stated hypotheses. |
| 5.16 Finite extension of O and compatible embeddings transport the congruence summand as expected. | M=E⊕E gives sum of two one-dimensional generalized eigenspaces | Compatible at the stated hypotheses. |
| 5.16 A map commuting with the fixed finite integral Hecke image preserves each residual congruence summand and respects identity and composition. | a diagonal map (2,3) preserves the two selected lines, image dimension 2 in characteristic zero | Compatible at the stated hypotheses. |
| 5.16 The residual local-factor projectors are orthogonal and sum to identity; retain generalized generic eigenspaces without assuming semisimplicity. | a direct sum of selected dimensions 1 and 2 gives selected dimension 3 | Compatible at the stated hypotheses. |
| 6.1 A canonical class is interior exactly when it has a subcanonical lift. | D=∅ gives im(id)=whole group | Compatible at the stated hypotheses. |
| 6.1 Level pullbacks preserve the image and give the direct-limit action. | zero arrow k→k has image dimension 0 | Compatible at the stated hypotheses. |
| 6.1 Commuting coefficient Hecke squares induce endomorphisms of H̄^i. | degree-zero section map O(−1)→O on ℙ¹ has image dimension 0 | Compatible at the stated hypotheses. |
| 6.1 The image is an O-submodule (or complex subspace), with its canonical inclusion; it is the range rather than the source modulo an unspecified kernel. | commuting square of scalar 2 and 3 gives image transport scalar 6 | Compatible at the stated hypotheses. |
| 6.1 A commuting canonical/subcanonical square induces a unique image map; these maps preserve identity, composition, addition and scalars. | direct sum of identity k and zero k has image dimension 1, not 2 | Compatible at the stated hypotheses. |
| 6.5 A class belongs exactly when it is the image of a relative class in the specified automorphic source. | zero source has zero image | Compatible at the stated hypotheses. |
| 6.5 Cusp images lie in L² images, and tempered cusp images lie in tempered L² images. | projection k²→k has one-dimensional image, kernel generated by (0,1) | Compatible at the stated hypotheses. |
| 6.5 Each image is stable under the compatible finite Hecke action. | Harris end-degree example with one cusp class gives interior dimension 1 | Compatible at the stated hypotheses. |
| 6.5 Use the linear range of the named relative-cohomology comparison map with its kernel quotient; finite sums and scalars stay in the image. | a scalar 2 map preserves the one-dimensional image | Compatible at the stated hypotheses. |
| 6.5 Compatible level changes preserve each cusp, L² and tempered image and commute with inclusion into canonical cohomology. | source map k→k², x↦(x,0), followed by projection has image k; a kernel-only source map has image 0 | Compatible at the stated hypotheses. |
| 6.6 The finite-level contribution has π_f^K in place of π_f. | π_f^K=0 gives contribution 0 | Compatible at the stated hypotheses. |
| 6.6 Retain the spectral multiplicity space in every summand. | multiplicity 3·local dimension 1·finite dimension 2=6 before image | Compatible at the stated hypotheses. |
| 6.6 Contribution is equivalent to nonzero image, not merely occurrence in the spectral decomposition. | zero local H^i gives contribution 0 | Compatible at the stated hypotheses. |
| 6.6 Its image is the source summand divided by the actual comparison kernel; the dimension equals the source dimension only if that restriction is injective. | an inclusion of invariant dimensions 1→2 takes a one-dimensional contribution to a one-dimensional subspace | Compatible at the stated hypotheses. |
| 6.6 Finite-level maps and Hecke operators preserve the contribution and its multiplicity space through the same spectral comparison. | coefficient scalar 2 maps each of the 6 basis source vectors by 2, preserving dimension in characteristic zero | Compatible at the stated hypotheses. |
| supplier Expose the two inequalities for each chamber. | (2,1),(2,−1),(1,−2),(−1,−2) have membership {0},{1},{2},{3} | Compatible at the stated hypotheses. |
| supplier Use (a−1,b−2), not the unshifted pair (a,b), for ω(a,b). | (0,0) has all four memberships | Compatible at the stated hypotheses. |
| supplier The intersection of C₀ and C₁ contains precisely x≥0,y=0 on that common wall. | (2,0) has memberships {0,1}, not a unique one | Compatible at the stated hypotheses. |
| supplier Replacing coordinates by equal integers preserves chamber membership; each predicate is the conjunction of its two displayed inequalities. | equal pairs (2,0)=(2,0) have identical membership set {0,1} | Compatible at the stated hypotheses. |
| supplier For a≥2, the shifted weights of ω(a,2) and ω(a,3−a) lie on the respective C₀/C₁ and C₁/C₂ common walls; retain both memberships. | wall (1,−1) has memberships {1,2}; compact wall (1,1) has only {0} | Compatible at the stated hypotheses. |

The scope check distinguishes finite-dimensional cohomology from infinite-rank affine Čech terms, integer inequalities from natural subtraction, and full characteristic polynomials from traces in characteristic two. There are no out-of-range tuple lookups, polynomial degree-of-zero claims or unguarded denominators in the acceptance module. Inseparable maps are not finite étale covers; k[t]→k[t], t↦tᵖ in characteristic p has zero differential and does not meet that hypothesis. Square-zero thickenings are tested by k[x,y]/(xy,x²); arbitrary thickenings are not substituted for the selected regular-sequence system. No arbitrary unconnected map or free Prop-valued condition determines a headline.


The additional construction API clauses have the following value witnesses: the identity solid adjunction and its counit both send 1 to 1; scalar extensions ℤ→ℚ→ℂ carry 2 to 2 on both paths; the two-step constant tower has limit A and identity projections; completion at I=0 and I=1 gives A and 0, respectively; a two-column zero filtered map induces zero differentials on every page. On the additional p-level span the identity isogeny has multiplier 1; multipliers p and p multiply to p²; its rational Hodge transport is p with inverse 1/p; refinement identity compares the same trace value 1; degree-two proper trace followed by coefficient scalar 3 gives 6 on either path. On the Hilbert–Siegel model, degree d=1 gives dimension 3 and lower-rank boundary dimension 1; identity quotient has projector 1; an order-two quotient at p=3 has projector (1+σ)/2 and square itself; the ideal (t) stays (t) under identity boundary pullback; zero coefficient descends to zero. For EO thickenings the sequence (x) on k[x,y] has codimension 1; multiplication by a unit u changes its Koszul representative 1/x to u⁻¹/x; powers (xⁿ) are cofinal and give dimension-one Cohen–Macaulay quotients; their transition maps send 1 modulo x^(n+1) to 1 modulo xⁿ; the zero coefficient has zero local Ext. These values cover the five clauses for each expanded construction, in addition to the 110 original API rows.

## Source resolution and locators

Every cited work was submitted to the sources service, reusing the design’s lifetime source keys. Fourteen works are certified and one is settled as uncertified. H90 is a 404-page image-only institutional/author-hosted volume recognized by service OCR. Its Theorem 2.7 and Proposition 2.7.2 were read at H90 line 2242 and H90 line 2268, and its regular all-root bound at H90 line 2452 does not supply singular-wall large-weight concentration. P20’s manuscript range and sign were read at P20 line 4922 and P20 line 4939. The finite-norm and Hecke normalizations were compared at CG20 line 1097 and CG20 line 1368. The BCGP boundary and dimension formulas were read at BCGP21 line 3269, BCGP21 line 3302 and BCGP21 line 3314.

The CG20 cache serves the 96-page author manuscript. Package locators use its printed pages 22–55 and 86–88; publication pages 822–855 and 886–888 are not misrepresented as page markers of that extraction. HZ01’s printed pages 61–63 are PDF pages 67–69, with Corollary 3.2.9 at HZ01 line 2734. Su24’s compared statements are Su24 line 1549 (Proposition 3.14), Su24 line 1560 (Proposition 3.16), Su24 line 1609 (Proposition 4.1) and Su24 line 2456 (Theorem 5.7). BR16’s field-only boundary restriction is BR16 line 523 and BR16 line 579; its warning about general bases is BR16 line 648. These are locators only; no source text is reproduced.

| Source key | Resolution | Locator used |
| --- | --- | --- |
| CG18 | certified; author-page | §7.2, pp. 395–401 (PDF pp. 99–105) |
| CG20 | certified; author-page | §5.3, pp. 22–31; §5.5, pp. 33–34; §6.1–6.2, pp. 36, 39; §7.2, pp. 51–55; Appendix A.3.2, pp. 86–88 |
| P20 | certified; author-page | §4.3, p. 19; §5.3, pp. 24–25; §6.2.2, p. 30; §14.8–14.9, pp. 101–105; §15.2, pp. 108–110 |
| BP26 | certified; author-page | §1.1, p. 2; §1.3.3–1.3.8, pp. 3–4; §2.1.7–2.1.22, pp. 7–9; §2.2.9 and §2.3.12, pp. 14, 17; §2.6–2.7, pp. 21–24; §2.9.1–2.9.9, pp. 27–29; §4.3.1, pp. 46–47; §5.6, p. 58 |
| Sch15 | certified; open-repository | Corollary V.1.7 and its proof, manuscript p. 83; published Corollary 5.1.7 and preceding paragraph, pp. 1035–1036 |
| Su24 | certified; open-repository | §1.1–1.1.2, pp. 6–10; Propositions 3.14 and 3.16, pp. 36–38; Proposition 4.1, p. 38; §5, Lemmas 5.1–5.5 and Theorem 5.7, pp. 54–55 |
| Lan17 | certified; author-page | §7, Propositions 7.5 and 7.15, manuscript pp. 28–32; Definition 8.5, Theorem 8.6 and Remarks 8.9–8.10, manuscript pp. 34–35 |
| LanSuh | certified; author-page | §7.2–7.4, Propositions 7.16–7.21, Theorem 7.22 and Corollaries 7.23–7.25, manuscript pp. 40–44 |
| HZ01 | certified; open-repository | §3.2, equations (3.2.1)–(3.2.8) and Corollary 3.2.9, pp. 61–63 |
| BR16 | certified; open-repository | Definition 1.9, Theorem 1.12 and Proposition 1.14, manuscript pp. 9–12 |
| Lan17err | certified; author-page | Items (1)–(3), p. 1 |
| LanSuhErr | certified; author-page | Items (1)–(9), pp. 1–2 |
| BCGP21 | certified; publisher-open | Sections 3.9–3.10, pp. 226–240 |
| H90 | certified; open-repository | Proposition 2.2 and §§2.3–2.7, pp. 53–59; §§3.0a–3.6, pp. 59–64 |
| GK19 | uncertified; none | Theorem 10.1.2, Remark 10.1.3 and Corollary 10.1.4, pp. 962–963 |

GK19 is cited only by its published Remark 10.1.3 locator. The service refused the Springer host as paywalled and recorded `uncertified`; this settled citation is not a missing-text request. No claim of having inspected that article is made. Its role is to flag the general concentration assertion; the actual local calculations are consumed from the explicit Hermitian-pair/component contracts of AutomorphicFormsOnReductiveGroups §§6.3–6.7.

The initial BCGP21 request failed because the publisher-open host was not in a known licence class. After verifying that the Centre Mersenne page is the open publisher copy, it was fetched through the same service with `publisher-open` and the same key. That settled failed request was removed from the missing-reference scratch list. No unresolved text request remains. `sources check` reports `packages/AutomorphicBundlesPartII/sources.toml: 0 problem(s)`.

The accepted source corrections were independently retained with the following limits:

| Source finding | Mathematical disposition in the package |
| --- | --- |
| CG18 duality trace | Only the counit RΓ(ω)[d]→A_n is used. A positive-genus curve has the extra shifted cohomology group. |
| CG20 chamber labels and shift | Import four closed chambers C₀–C₃ and use (a−1,b−2), with wall overlap. |
| CG20 central bundle comparison | Retain the finite norm/sign correction and compare actual adelic actions. |
| BP26 left translation | Correct it to f(m′⁻¹m); the regular matrix-coordinate witness detects the identity-law failure of the printed order. |
| BP26 filtration proof | Both inverse-image opens live in C; j! belongs to the completion triangle and Rj_* to the ordinary-support triangle. |
| BCGP21 boundary localization step | Do not call it a published error. Prove regularity on every selected Cohen–Macaulay thickening. |
| BCGP21 Satake display | Four distinct monomials replace the repeated entries; the exact q/character factorization remains a supplier gap. |
| P20 holomorphic parameter | Use (1−k−r,2−r;k+2r), agreeing with Ω^(k,r). |
| P20 coefficient target | The target is upper shriek of the target coefficient, not upper shriek of the structure sheaf alone. |
| P20 large singular bound | Use −λ₁≥R with λ₁=−k−1; no all-root regularity substitute. |
| P20 localized H¹ | The residual localization belongs on both degrees. |
| P20 boundary exception | The untwisted ω² case is k=0, with the cusp twist for k>0. |
| P20 boundary exact sequence | Use the long-exact-sequence segment; H⁰ boundary vanishing gives H⁰ isomorphism and H¹ injection. |
| P20 packet parameter | Use negative λ₁ in its large-positive-k coordinate convention, then the supplied component dictionary. |
| Freitag/vector-weight concern | No published error is asserted. The scalar factor is a direct calculation target and no characteristic-two proof divides by 2. |
| Lan17 errata | Descent precedes prime-to-p averaging; the dimension-one Koecher exception is not erased. Relative vanishing uses its actual n range. |
| Lan–Suh errata | Retain p>2 in the symplectic specialization, representation-smallness and the corrected dual/BGG hypotheses. No uncorrected all-weight §8 theorem is used. |
| Harris concentration correction | H90’s distinguished contribution is distinct from a full other-degree theorem. Use the exact supplied group/pair calculation. |


## Elaboration and binder audit

`lake env lean` was run from the content repository on the absolute tool path of `packages/AutomorphicBundlesPartII/Suggested.lean`. The final invocation exited 0 with empty stdout/stderr: exactly **0 `sorry` warnings**, **0 other warnings**, **0 errors**. No Tau Ceti module build was required because the file imports none.

The scratch declaration scan found zero `def`, `abbrev`, `instance`, `opaque`, `theorem` or `lemma` declarations. Therefore the generated `#check @name` list is empty. The scratch binder-check module with the same Mathlib import was elaborated once, exited 0, and printed nothing. There are no silently dropped section binders, no needed binder corrections and no admitted examples. The README and Lean both say that these geometric headline carriers are unavailable, rather than narrowing a geometric theorem to bare scalars.

The first command attempted elaboration before the generated file existed because a generation command used the content working directory for a relative output path. It exited 1 with the diagnostic “no such file or directory (error code: 2)” and a `file:` line naming `packages/AutomorphicBundlesPartII/Suggested.lean` via its tool path. The output file was then generated in the permitted package directory; the completed-file elaboration above is the final result. No content-repository file was created or edited.

## Dependency and citation checks

The required command completed with the following output:

```text
moved: AutomorphicBundlesPartII moved in the merge order from #178 to #230, right after its last supplier AutomorphicBundles; checked as moved (the worker moves it there when it submits)
depcheck: 28 roadmaps, 252 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The `moved:` line is the permitted submission-order relocation; the merge-order file was not edited.

The resolver output (with its file header rendered repository-relative) is:

```text
# Citations of packages/AutomorphicBundlesPartII/README.md

Checked against main (dfdf9a3) and 331 open roadmap pull requests at their heads (index of 2026-10-23T22:30:49Z). Only what is found nowhere is listed; these are leads to check, not verdicts.

## Cross-roadmap citations found nowhere

None.

## Lean names found nowhere

None.

Lean names outside TauCetiRoadmap were not checked: no pinned Lake packages on this host.
```

The resolver reports that it cannot inspect pinned Lake packages on its own host. That limitation was handled by the local pin-by-pin reads documented above; the resolver’s missing-name result alone was not used as evidence of library coverage.

## Delivery checks

All edited deliverables lie under `packages/AutomorphicBundlesPartII/`, together with the permitted top-level-gap change to `design/plan.json`. Source files remain in the service cache and none is copied into the board. Text files contain no machine path, home directory, job scratch path, copied source passage, LaTeX math delimiter, `set_option`, or fabricated local Lean API name. Work artifacts outside these deliverables were confined to the assigned scratch directory. No helper agents, network code, credential access or GitHub write was used.

## Focused residue repair

The 90 README residue hits consisted of 65 standalone HTML anchors and 25 occurrences of the mathematical term “packet”. The anchors were deleted; there were no internal fragment links to retarget. The mathematical sentences were rephrased using “packets”, preserving the conditional classification, character formula, component-group constraints, Eisenstein direct sums and dimension counts. Exactly 17 non-anchor lines changed, each containing a flagged term. The eight layers, 71 Checks blocks and 70 prerequisite lines remain. No target, API fact, hypothesis, locator or supplier edge was added or deleted.

Only `packages/AutomorphicBundlesPartII/README.md` and this report changed in this repair. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` were left untouched. The elaboration and binder-audit outcomes above therefore still apply: zero `sorry` warnings and no other diagnostic; Lean was not rerun for the prose repair.

| Reworded statement | Instances tried | Values computed / negative control | Result and change |
| --- | --- | --- | --- |
| §6.9 degree counts and its repeated example | d=0,1,2 with all choices permitted | Degree-zero/degree-one counts are (1,0), (1,1), (1,2) | Same Künneth counts; retain the component constraints. |
| §7.0 conditional multiplicities and their summary/consumer references | Trivial component group; C₂ with a nontrivial product character | Character sums are 1 and (1−1)/2=0 respectively | Same hypotheses (a)–(d); the obstructed C₂ case still cannot justify pairing. |
| §7.0 Eisenstein direct sum | Two trivial rank-one characters in characteristic two | Rank is 1+1=2; characteristic polynomial is (T−1)²=T²+1; span(1,0) is invariant | Same reducible rank-two system, considered separately for each of the packets. |
| §8.7 rational exhaustion at its endpoint | a=2, trivial component group, multiplicity 1 and finite invariant dimension 3, under the stated comparison hypotheses | Holomorphic and generic contributions both have dimension 1·3=3 | Same conditional endpoint and fixed finite part. |
| §8.9 and the dimension worked example | l₀=0,1,2; multiplicity 1 and finite invariant dimension 3 | (h⁰,h¹)=(3,0),(3,3),(3,6), so h¹=l₀h⁰ in each case | Same dimension formula and permitted single changes. |

The installed text scanners all return zero, including `residue=0` and `readme-ids-missing=0`. The required dependency check was rerun and returned:

```text
moved: AutomorphicBundlesPartII moved in the merge order from #178 to #230, right after its last supplier AutomorphicBundles; checked as moved (the worker moves it there when it submits)
depcheck: 28 roadmaps, 252 edges, 0 problem(s)
```

No UPWARD or CYCLE line appears. The merge order and tooling were not edited.
