# Package report: ColemanPowerSeriesPartII

The package expands all 55 accepted targets into ten layers, with each definition’s API and discriminating Checks and all three worked-example families. The auxiliary quadratic-field table retains all 13 rows and all reduced forms. The only change to design/plan.json is its top-level gaps value; the other JSON values were compared with the original and are identical. No content-repository file, library pin or merge-order file was edited.

The separate design/review.json and the initial sources.toml described in the brief were absent. The acceptance review embedded in design/plan.json was read in full, including its 55 node verdicts and non-blocking notes. There were no initial package reports. A new sources manifest records six legally fetched works and two uncertified paywalled locators. The upstream shape was compared with LocalFieldsRamification, PadicMeasuresIwasawaAlgebras and Completed/ArithmeticDirichletSeries.

## Headline theorems, listed before writing Suggested.lean

| Headline | Acceptance-test status |
|---|---|
| Two-variable local-unit freeness and anticyclotomic rank two | Not statable at the pins: The quadratic Lubin–Tate division tower, its norm-compatible principal-unit O-module and its actual completed Galois action are not carriers at the pins. |
| Height-two Lubin–Tate Coleman interpolation | Not statable at the pins: The Lubin–Tate formal O-module with marked Tate basis, its analytic torsion evaluation and its arithmetic norm tower are missing. |
| Perfect formal Kummer duality and Wiles reciprocity | Not statable at the pins: The Lubin–Tate torsion realization, formal-norm tower and the Kummer/Artin pairing on that tower are missing. |
| Signed annihilator theorem | Not statable at the pins: The actual character derivatives on the anticyclotomic unit quotient and the signed formal-point carriers are missing. |
| Existence of an optimal plus unit | Not statable at the pins: The signed anticyclotomic unit module and its normalized Coates–Wiles augmentation derivative are missing. |
| Existence of the primitive formal-CM local-point trace system | Not statable at the pins: Marked quasi-canonical elliptic quotients and their local ring-class fields, the modular-image system and its formal comparison are missing. |
| Minus divisible-point invariants and minus quotient/kernel freeness | Not statable at the pins: The signed formal-point module, actual tower action and signed unit quotient are missing. |
| Rubin’s integral decomposition and signed rank-one freeness | Not statable at the pins: The actual inverse-twisted anticyclotomic local-unit quotient and its two derivative-kernel submodules are missing. |
| Nonvanishing of every matching-parity derivative of every signed generator | Not statable at the pins: The signed unit module and its character Coates–Wiles derivatives are missing. |

There are zero stated headline theorems and no new definitions. None of these missing constructions is a small wrapper around a native carrier: the marked division tower, its analytic evaluations and norm-compatible arithmetic unit module must first be built. Generic rank-two modules, arbitrary scalar-valued functions and a free predicate for the Coleman map would not state these headlines. The auxiliary calculations in the README are not substituted for the end theorems.

Suggested.lean uses exactly `import Mathlib` and the required namespace. It contains no Tau Ceti import, admitted data, declaration catalogue, `set_option` or admitted example. The source files at the pins do have native elliptic formal groups and formal points; the absence claim concerns the specified Lubin–Tate O-action/tower and the signed arithmetic modules, not formal group laws in general.

## Corrections and unsupported inferences

1. Character derivatives take values in the compositum of the division field and character-value field, inside the fixed algebraic closure in ℂ_p. The design’s bare Φ(χ) codomain was too small. At an anticyclotomic order-p character, the degree-p anticyclotomic field and degree-(p−1) character-value field are distinct; its eigenperiod generally lives in their compositum. The n used for that finite codomain is now bound explicitly.
2. The general CM image and signed-value statements retain either root sign. Only the optimal-plus-unit specialization uses the split-at-2 auxiliary field and canonical sign +1. Applying that positive-sign choice to the entire family would make the negative-sign/trivial-character branch vacuous. BKO2021 lines 366–383 and 479–488 separate these hypotheses.
3. Replaced the design’s old build hashes by verification against the supplied lake-manifest pins: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The roadmap checkout’s main is a4a8652e46fe27e56355bbcf74579562b503fbc3.
4. Replaced obsolete ModularCurvesPartII R13.4/R14.1/R14.5 citations by §§3.1–3.5, 5.2–5.3, 5.10, 9.1, 9.9, 13.1–13.2 and 16.6–16.8. The inherited composite-model request was reduced to the exact genus-formula gap: general mixed-level models, smooth prime-to-level coarse curves and the j-map degree are supplied. The remaining integral Hecke point comparison is a separate gap.
5. ArithmeticGaloisDuality’s abelian-variety local duality is in §D7.6, not the design’s R02.4 target label. The limit/adjoint-O compatibility is requested explicitly rather than inferred from finite class-formation duality.
6. The form/ideal dictionary is consumed directly from IntegralLattices §§B1–B2 and B5. Its reference is to the active roadmap on main, not Completed/IntegralLattices, which is a different earlier lattice roadmap. ImaginaryQuadraticClassNumber §§H1.3 and H2.1–H2.2 supply the unweighted maximal-order count, quadratic character and analytic formula. The native Dedekind-zeta residue was also located at the pins. ComplexMultiplicationAndExplicitReciprocity supplies CM-point comparisons, not a second binary-form dictionary.
7. NonordinaryCMSpecialValues now has an accepted board design with explicit NCM.0–NCM.4 stages, which were read. The old G4 ownership gap was replaced by those exact contracts; ordinary Katz theory is not invoked for the inert prime. EllipticCurvesPartII’s supplied design is an import index for Legendre/finite-torsion work, and does not own the required mass/trace-class census; the explicit supersingular-trace-counts gap remains with EllipticCurves Layer 3.
8. Preserved the review’s coefficient-extension correction: flatness alone cannot recover a tensor-valued vanishing statement from a single ℂ_p embedding. The conjugation-stable family of all opposite-parity characters is required. A tensor with images 0 and −2√5 under its two embeddings is the negative control below.
9. Preserved the inverse twist, genuine π-adic basis, alternating π/p comparison, conductor/order indexing, opposite unit/point parity and the factor δ₁=(1+p⁻¹)δ. Every denominator has its stated nonzero or unit condition: π≠0; p^n≠0 in characteristic zero; f(v_n) is a unit; λ′(v_n) is nonzero by the normalized invariant differential; p²−1 is prime to p; 2 is a unit; and Ω≠0.
10. Preserved every reviewed source correction E1–E15. In particular: q-Frobenius [s p] uses parameter s p; the printed p=47 lower bound is 0; forward neighbours use x_(s+1) and Δ′ of size p+1; the auxiliary conductor ℓ^m uses layer m−1; the minus quotient is starred; χ=1 is included in minus-unit vanishing and negative root-sign vanishing; the finite Galois group is over Φ; stabilizer indices belong to the j-map; the primed local-field degree has the primed label; Rubin’s numerical upper bound is 1000; augmentation covariance is required for Rubin’s generation lemma; forward lattice numerators require θ; and an unramified base estimate does not prove vanishing at every ramified coordinate.
11. The Manin-constant supplier request retains the full statement of Abbes–Ullmo Théorème A for every prime not dividing the conductor, including 2. The application in this roadmap still has its standing p≥5 hypothesis. No arbitrary modular isogeny’s differential constant is asserted to be a unit.

The README does not claim that an original Wiles proof or Kato’s normalization proof has been read. Wiles1978 and Kato1993 are recorded as uncertified, by locator only. The trace-law statement was read at BKO2021 lines 543–546 and Rubin1987 lines 318–324; the standalone dual-exponential comparison remains an exact supplier target, not a deduction from the word “nondegenerate”. Hazewinkel1977 lines 37–49 explicitly assume an absolutely unramified base. Fesenko1998 lines 54–64 concern additive ramification/cohomology criteria and do not themselves prove the claimed formal-group norm vanishing. These proof obligations remain visible in the eight exact supplier gaps; they are not advertised as closed proofs.

The full PadicHodgeRegulators roadmap text was not present on main, in the supplied head index or in its board folder (which contained reports and a sources manifest). The earlier-owner name and exact missing interface are therefore retained as a supplier gap, without claiming that an unread L1 section states this normalization. No additional open pull requests were sought outside the supplied index.

## Duplication sweep and ownership

The sweep searched mathematical objects in main, all indexed open roadmap README/Suggested heads using the supplied roadmaps tool, all board Markdown packages, and the pinned library files. It covered unit norm limits, inverse Tate twists, completed actions, Coleman interpolation, character/logarithm kernels, Kummer and Wiles duality, CM zeta-class projections, supersingular/twist counts, modular fibres, marked lattice neighbours, trace systems, cohomological invariants and integral rank-one decomposition. Searches of the board were grouped into nine object families; every retained target belongs to one. The exact named supplier passages were read, rather than treating grep matches as verdicts.

The supplied open heads K2SymbolsBrauerPartII, K3BlochGroups, HabiroCohomologyFoundations, HabiroNahmSeries, HabiroRings, Polylogarithms, HeegnerPointEulerSystems, OverconvergentAutomorphicForms, ProbabilisticAndMetricNumberTheory, MultiquadraticPartII, PolynomialGaloisGroupsPartII, ArithmeticKTheory, ArithmeticDirichletSeriesPartII, ComputationalNumberTheory, ConformalMappingPartII, EffectiveClassNumbers, AbelianSchemesAndArithmeticModuliPartII, GanGrossPrasadUnitaryGroups, SelmerIwasawaCohomologyPartII, QSeriesPartitionsAndMockModularForms, K3SurfacesAndSymplecticBoundedness, CohomologyComparisonsPartII, ColemanIntegrationPartII, QWittVectors, ErdosProgressionPowers and ArithmeticDynamics were included in the indexed object search. ColemanIntegrationPartII concerns integration and indices, not the Coleman unit-interpolation operator; EffectiveClassNumbers confirms the quadratic-form suppliers. For open pull requests outside the supplied readable index/files, ownership was not checked.

The design’s AnticyclotomicLocalUnits duplicate was read directly in packages/AnticyclotomicLocalUnits/design. Its ALU.0–ALU.8 targets describe the same continuation and its embedded review already identifies the two ids as aliases. This package follows that accepted single-owner interpretation: it does not import ALU as an independent supplier or add an edge between the aliases. Both design folders remain read-only. Publishing both as separate libraries would duplicate nearly the whole subject; intake must apply their recorded alias/merge decision.

| Construction excluded as independent work here | Owner consumed, exact locator |
|---|---|
| Principal-unit subgroup and depth-one identification | Tau Ceti NumberTheory/LocalField/UnitFiltration/Basic.lean: definition at line 99 and depth-one theorem in that file; the definition is the mapped kernel of reduction. |
| Formal derivative and unit-series criterion | Mathlib RingTheory/PowerSeries/Derivative.lean lines 49,59; Inverse.lean line 109. No second derivative or unit criterion is declared. |
| Finite determinant norm and field trace | Mathlib RingTheory/Norm/Defs.lean, Algebra.norm; RingTheory/Trace/Defs.lean, Algebra.trace. Only their arithmetic interpolation comparisons are targets. |
| Generic completed group algebra and compact-module action | Tau Ceti Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean lines 114–145 and Module.lean line 344; PMIA §§1.7,4.2–4.5,5.2 for coefficient/coordinate comparisons. |
| Elliptic formal group and parameter-to-point injection/range | Tau Ceti AlgebraicGeometry/EllipticCurve/FormalGroup/Basic.lean line 58; Point/AdicCompletion.lean lines 273,292 and Point/Range.lean line 158. The completion adapter and trace comparison remain §6.3. |
| Generic Lubin–Tate geometry, marked quotient and lattice-neighbour classification | LubinTateFormalModulesAndQuasiCanonicalLifts LT.0–LT.2, LT.4–LT.9. Definitions of T_s and A_s in §6.2 are applications, not new foundational carriers. |
| Canonical Gross character, existence, attachment and good reduction | ComplexMultiplicationAndExplicitReciprocity §4.3 at its supplied head. |
| Elliptic-unit zeta class, norm-twist map, disjointness, semilocal splitting, root signs, Finis theorem | NonordinaryCMSpecialValues NCM.0–NCM.4. The local image ξ_ν remains here; components of its composite are imported. |
| Reduced binary forms, reduction and ideal-class dictionary | Tau Ceti NumberTheory/BinaryQuadraticForm/Reduced.lean lines 60,76 and Reduction.lean lines 185,192,204; IntegralLattices B1–B2,B5; ImaginaryQuadraticClassNumber H1.3. The predicate alone admits (0,0,1), so negativity/primitivity are retained. |
| Zeta residue and imaginary quadratic class-number formula | Mathlib NumberTheory/NumberField/DedekindZeta.lean lines 56,60,77; ImaginaryQuadraticClassNumber H2.1–H2.2. |
| Generic coarse j-map, mixed moduli, good-level smoothness and its degree | ModularCurves §§7D,8A–8D,9C–9E; ModularCurvesPartII §§3.1–3.5,5.2–5.3,5.10. Section 5.4 here is the scalar-Frobenius application. |
| Generic isogeny correspondence and modular elliptic quotient | ModularCurvesPartII §§9.1,9.9,13.1–13.2,16.6–16.8; EllipticCurveModularity R29.5. The integral local-point eigenrelation remains an explicit supplier extension. |
| Local abelian-variety duality | ArithmeticGaloisDuality §D7.6, with the formal/limit adapter explicitly requested. |

These are removals of duplicated foundational work from the expanded package, not deletions of any accepted mathematical output: each application, API fact and Check remains in its layer. No Lean declaration has been given the fully qualified name of an existing roadmap declaration. No notion had to move down from a later independent roadmap. Early CM inputs are now owned by the earlier NonordinaryCMSpecialValues design; the downstream p-adic L-function and main conjecture are never suppliers.

## Elaboration, signatures and identifiers

The prescribed `lake env lean` command was run on packages/ColemanPowerSeriesPartII/Suggested.lean from the content roadmap checkout, using its absolute file argument as required by the brief. Final outcome: exit 0; exactly 0 sorry warnings; 0 other warnings or errors; diagnostic output empty. No Tau Ceti import is used, so no module build was needed. Nothing remains running.

The declaration inventory was mechanically extracted before preparing the scratch signature file. It contains zero definitions, instances, structures and theorems; consequently the required list of `#check @name` commands is empty. The scratch file containing the single Mathlib import was elaborated once: exit 0, output empty. There are no hidden section binders to drop and no change was needed after comparison with the README. The README claims zero backticked identifiers as declarations of this roadmap; the remaining backticks are native library identifiers or repository-relative module paths. The resolver found no missing Lean name against the supplied pins.

## Source and citation verification

Six sources were fetched by the required sources service, not downloaded by a separate client. Their SHA-256 values agree with the design’s recorded versions: BKO2021, Rubin1987, Hazewinkel1977, Wintenberger1980, AbbesUllmo1996 and Fesenko1998. Rubin’s image-only article was read through the service’s numbered OCR extraction. Every target carries a page/theorem locator and a BKO2021 line locator. The original sources stay outside the package. The Caltech source was delivered by its institutional object storage; its temporary delivery URL is normalized to the stable repository record in the manifest, with a delivery note and the exact PDF hash retained. Wiles and Kato have one key each and are uncertified, not fictitiously read; there is no unsettled missing-text request.

The citation resolver’s three remaining “not on main or in an open pull request” leads are LubinTateFormalModulesAndQuasiCanonicalLifts, NonordinaryCMSpecialValues and the AnticyclotomicLocalUnits alias. The first two were resolved directly against their accepted earlier board design/README.md and plan.json sections, and the third against the accepted duplicate design. They are available inputs under the brief. Obsolete modular citations were corrected. PadicHodgeRegulators is handled as the explicit missing supplier contract described above. Sources validation ends with 0 problems.

## Adversarial mathematics pass

The rows below test the actual equations, hypotheses and normalizations, not the truth of an admitted Lean proof. Arithmetic was recomputed in scratch: all 13 reduced-form lists, inertness and class numbers; generic-bound values; finite-field point counts; signed component dimensions; trace signs; and lattice-index powers. Linear normal forms are used only to detect mistakes in quotient, duality or rank arguments and are not substitute headline statements. A conditional δ(x)=1, λ(y)=5 witness uses the actual normalized maps at p=5: δ₀(x)=−1/4 since its tame trace is −6, so the pairing at tensor denominator π is −6/5 modulo O, a nonzero class. This fixes the Artin/π convention and the inverse character pairing.

| Statement | Instances and values on the two sides | Result | Change |
|---|---|---|---|
| §0.1 Anticyclotomic conductor parity | χ=1, order 5, order 25: c=0,2,3; parity +,+,−. Using order exponent gives 0,1,2 and reverses both nontrivial signs. | Retained | Conductor rather than order parity. |
| §0.2 Norm-compatible principal units | N(1)=1 at every level, so the identity family is additive 0. At u_1=1,u_0=6, N(u_1)=1≠6, so the family is excluded. At p=5 the projector denominator is 24, a 5-unit. | Retained | No independent principal-unit carrier. |
| §0.3 Inverse Tate twist | κ(g)=2: κ·κ⁻¹=1, whereas κ²=4. For v′=2v the tensor coefficient doubles and inverse basis halves: 2·1/2=1. | Retained | Star is an inverse Tate twist. |
| §0.4 Anticyclotomic local-unit quotient | p=5, κ(σ)=6: the untwisted relation gives σu=6u; the inverse-twisted relation gives σx=x. In O[[S,T]], the relations are S−5 and S. | Retained | Separate actions and quotients. |
| §0.5 Two-variable local-unit freeness | Free normal form O[[S,T]]² has rank 2; S=0 specialization gives O[[T]]², still rank 2. At p=5, tame exponents 1 and 6 modulo 24 are distinct and both are nonzero. | Retained | Exceptional trivial/cyclotomic components are excluded from the freeness input. |
| §1.1 Lubin–Tate Coleman series | For u_n=1, f=1 gives f(v_n)=1 and norm product 1. At levels 0,1, [−p]w_1=−w_0 for an unchanged p-basis, rather than w_0. | Retained | Genuine π-basis; tensors handled by linear extension. |
| §1.2 Coates–Wiles derivatives | f=1 gives δ=δ_n=0; the two-term unit 1+aX has augmentation dlog a. For basis multiplier 2, the inverse chain factor is 1/2 and the balancing coefficient 2, product 1. | Retained | No tensor-valued multiplicative sequence. |
| §1.3 Twisted derivative covariance | After twisting, the κ(g)=2 factor cancels to 1; augmentation of γ−1 is 0, hence δ((γ−1)x)=0. For δ(x)=1, δ(5x)=5. | Retained | Augmentation covariance is explicit. |
| §1.4 Character derivatives | χ(β)=ζ₅: reindexing gives ζ₅⁴, not ζ₅. At χ=1,n=0, (−1/5)Tr δ₀=(−1/5)(−6δ)=6δ/5. | Corrected | Finite compositum codomain, with n bound. |
| §1.5 Anticyclotomic derivative descent | χ(σ)=1 gives δ_χ((σ−1)x)=(1−1)δ_χ(x)=0. A character with χ(σ)=ζ₅ gives (ζ₅⁴−1)δ_χ(x), which need not vanish. | Corrected | Anticyclotomic hypothesis and containing level explicit. |
| §1.6 Trivial-character normalization | p=5, π=−5: Tr δ₀=−6δ and π⁻¹Tr δ₀=6δ/5; for δ=1 the valuation is −1, rather than 0. The factor 6/5 is nonzero. | Retained | δ₁ is Φ-valued and has the same kernel as δ. |
| §2.1 Formal Kummer exact sequence | At y=0 the connecting cocycle is 0; over Φ, F(5O)/[5] has 25 classes, matching the index [5O:25O]=25. At k=0 the quotient is 0, while the stated tower uses k≥1. | Retained | Actual formal points and connecting sequence. |
| §2.2 Height-two universal norm vanishing | Height-two depths at n=1,…,6 are 1,2,2,3,3,4. A model inverse system with bottom group 0 and all higher groups ℤ₅ has a compatible (0,1,1,…) family: zero base does not imply zero coordinates. | Supplier obligation | Ramified finite-base estimate remains explicit. |
| §2.3 Formal-to-elliptic Tate duality comparison | q=25 and q-trace −10 give #B(𝔽₂₅)=25+1+10=36, with 5-primary part 0. The formal Kummer zero class and its elliptic image both give 0. | Supplier obligation | Actual elliptic duality and its formal/limit adapter, not class-formation duality alone. |
| §2.4 Full-tower Kummer pairing | In the O-dual normal form, 1/5 paired with 1 gives 1/5≠0 modulo O, while 0 paired with 1 is 0. Tensor balancing [π]y⊗π⁻²=y⊗π⁻¹ multiplies numerator and denominator by the same −5. | Retained | Continuous dual and fixed scalar contraction. |
| §2.5 Anticyclotomic Kummer duality | The σ−1 quotient forces σx=x and hence pairing difference 0. A nonzero π-torsion point would require tame degree 24 at p=5, which divides no 5^n. | Retained | Invariants/tensor equality uses the Kummer defect, not a general invariant-tensor assertion. |
| §2.6 Wiles’s explicit Kummer formula | For p=5, δ(x)=1, λ(y)=5, δ₀=−1/4: the tame traced numerator is 24·(−5/4)=−30. At k=0 the quotient is 6=0 mod O; at k=1 it is −30/25=−6/5≠0 mod O. | Normalization obligation | Arithmetic Artin and π=−p fixed in supplier gap. |
| §2.7 Wiles’s dual-exponential comparison | At n=0 the character normalization has π⁻¹=−1/5; the actual δ₁ witness is 6/5, whereas the augmentation δ witness is 1. These cannot be interchanged without their Euler factor. | Normalization obligation | Exact factor belongs to the explicit reciprocity contract; original proof uncertified. |
| §3.1 Character logarithms | A base point with λ=5 has λ₁=5 and λ_χ=0 for χ≠1. For χ(β)=ζ₅, the log factor ζ₅ times derivative factor ζ₅⁴ equals 1. Repeating each term five times cancels the next 5 denominator. | Retained | Direct log character, inverse derivative character. |
| §3.2 Signed formal points | At Ψ₀ and Ψ₁ the plus dimensions are 0,0 and minus dimensions 1,5. A nonzero order-25/conductor-125 component has dimension 20 and belongs to A⁺, not A⁻. | Retained | Point signs kill the same conductor parity. |
| §3.3 Signed anticyclotomic units | δ(x)=1 at p=5 gives δ₁(x)=6/5, so x is not minus. A plus vector has zero derivative at conductor exponent 3. In K⊗K, √5⊗1−1⊗√5 has embedding values 0 and −2√5. | Retained | All conjugate equations are needed for coefficient extension. |
| §3.4 Divisible signed-point sum | At level 2,p=5, rational component dimensions are 20+5=25, intersection 0. Projector denominator is 25: 25F(Ψ₂) lies in the lattice sum, not automatically F(Ψ₂) itself. | Retained | Finite-index integral sum is not called an integral equality. |
| §3.5 Infinite rank of both point signs | Minus dimensions at n=0,1,2,3,4 are 1,5,5,105,105; plus dimensions are 0,0,20,20,520. Both grow along alternating levels. | Retained | Deep logarithm lattices give actual independent formal points. |
| §3.6 Signed annihilator theorem | The base λ₁=5 component belongs to A⁻; a minus unit has δ₁=0, pairing 0. A plus δ=1 unit pairs with its π-divided base point by −6/5≠0, so it is not in Ann(A⁻). | Retained | Same displayed sign on the annihilator. |
| §3.7 Signed intersection and rank bounds | Rank V=2 and positive ranks of both quotients give each kernel rank≤1. The normal form Λ/(T) has Λ-rank 0 and O-rank 1, while Λ/(5) is O-torsion and cannot be allowed in the characteristic-zero-kernel quotient argument. | Retained | O-torsion-free step explicit before Weierstrass. |
| §4.1 Auxiliary imaginary quadratic field | All 13 rows give (D/p)=−1, D mod8=1 and h<p; at p=53 the upper bound is 52.76118677823919<53. The ratio derivative has sign −log(8p)<0. | Retained | Direct form/class-number suppliers and no computational algorithm target. |
| §4.2 Early CM special-value input | D=−7 has (2/D)=+1; D=−11 gives −1 and is outside the split-at-2 specialization. At ℓ=5, conductor25 uses order5 and layer degree5; ν=1 uses m=0 and degree1. | Corrected | General CM image permits both signs; unit-value witness uses the positive canonical specialization only. |
| §4.3 Localized auxiliary elliptic unit | For ℓ=5,m=2 the group-ring generator maps to ζ₅, not ζ₅⁴. At ν=1 the trivial factor maps 1↦1 by augmentation; m−1 is not used. Norming an identity class gives 0 along either composite. | Retained | Conductor index m and layer index m−1 separated. |
| §4.4 Auxiliary-unit derivative formulas | If δ(ξ)=1 at p=5, δ₁(ξ)=6/5. Deleting the inert p-factor multiplies the augmentation value by 1−(−5)/25=6/5, so both formulas agree. | Retained | Only φ is conjugated; p-factor retained for the unit argument. |
| §4.5 Auxiliary-unit sign | W(φ)=+1,c=3 gives −1 and central value0; W(φ)=−1,c=0 also gives −1 and value0. Omitting c=0 would omit a required minus equation. | Corrected | Negative-sign branch is nonvacuous in the general CM family. |
| §4.6 Optimal signed unit | If the image ideal were 5^aO with a≥1, in a coefficient DVR of ramification e every image has valuation≥ae>0 and cannot equal a unit of valuation0. Thus a=0 and I=O. | Retained | No plus freeness assumed. |
| §5.1 Auxiliary supersingular rational elliptic curve | y²=x³+1 over 𝔽₅ has 6 points and trace0, discriminant3; y²=x³−x over 𝔽₇ has 8 points and trace0, discriminant1. The first equation at p=2,3 has discriminant0, excluding those models. | Retained | Nonsingular lift and good-reduction hypotheses. |
| §5.2 Optimal parametrization and separable reduction | Normalized differential has first coefficient1; multiplying by p-unit c retains nonzero residue. At p=5, multiplying by6 gives differential6≡1; multiplying by5 gives 0 and can destroy separability. | Retained | Optimal Néron normalization and full good-prime Manin contract. |
| §5.3 Ramification bound | N=27: μ=36,ν∞=6 gives 2g−2=6−6=0. N=32: μ=48,ν∞=8 gives 8−8=0. Riemann–Hurwitz then permits 0 ramification points, not a positive number. | Retained | Different multiplicities are separate from the number of support points. |
| §5.4 Prime-to-p modular j-fibres | For μ=36 the fibre lower bounds are 36,12,18 at generic j,0,1728. Scalar −5 sends every cyclic subgroup to itself, but a point of order7 is multiplied by2 modulo7 and need not be rational. | Retained | Scalar Frobenius proves subgroup stability, not pointwise rationality. |
| §5.5 Nonelliptic supersingular count | At p=13,31,37,41,43,47 printed coefficients are 1,1,3,1,2,0; sharper coefficients are 1,2,3,3,3,3. At p=47, 0 is not >1/6 but 3 is >1/6. | Retained | Incorrect p=47 inference is excluded; stronger supplied count covers it. |
| §5.6 Exceptional supersingular count | For μ=36, μ/3=12 and μ/2=18 both exceed μ/6=6. p=5 uses j=0, p=7 uses j=1728, and p=47 satisfies both exceptional criteria. | Retained | All primes p≥5 covered without a historical numerical proof input. |
| §5.7 Fine-level unramified lift | p=5,s=+1 gives M=4 with 12 primitive points; s=−1 gives M=6 with 24 primitive points, both counts prime to5. The target reduction-killing factor is36≡1 mod5. | Retained | Fine auxiliary level and étale completed-local isomorphism explicit. |
| §5.8 Primitive formal CM point | Under λ:F(5O)≃5O, λ(Q)=5 is not in25O; 0 and25 fail primitivity. Multiplication by6 gives30, still not in25O. | Retained | Full base logarithm lattice, not only an unspecified deep inverse. |
| §6.1 Dedekind completion models | p=5 primed degrees at s=0,1,2,3 are 1,6,30,150. The quotient at s=1 has (25−1)/(5−1)=6 elements; it is not the full 24-element Lubin–Tate tame quotient. | Retained | Ring-class/ray-class distinction and chosen prime retained. |
| §6.2 Modular quasi-canonical points | s=0: T₀/T=0, quotient is A and x₀=Q. At s=1 the quotient lattice has index5 and marked field degree6. Taking Δ′ invariants of the degree30 level gives degree5. | Retained | Quotients and markings are imported LT applications. |
| §6.3 Formal image of the modular points | P maps to0; its Frobenius twist maps to 0^p=0. The native range sends formal parameter0 to the elliptic identity, and formal trace of zero is zero under either route. | Retained | Coarse Frobenius argument; no fixed fine-level marking assumed. |
| §7.1 Optimal local point system | p=5: Δ′ trace has6 terms; on a base Q it is6Q, not24Q. The first traced point is x₁ and y₀=0, while x₀=Q≠0. | Retained | Formal trace and primed index shift fixed. |
| §7.2 Primitive base point | λ(Q)=5 and λ(y)=6·5=30: modulo25 these are5 and5, both nonzero and generators of5O. [5]Q has logarithm25 and fails. | Retained | Uses rank-one O lattice, not an arbitrary module. |
| §7.3 Hecke relation on marked lattice neighbours | p=5,s=1: the θ-bearing forward vectors give5 distinct cosets, plus1 backward neighbour. Without θ all5 printed vectors give the same lattice because their differences lie in T_s. At s=0 all6 neighbours form Δ′, not Δ of size24. | Retained | Corrected two-coordinate lattice list and actual point-correspondence identity. |
| §7.4 Optimal-point trace identities | In units of y at p=5: y₀=0, Tr y₁=−1, Tr_(2/1)y₂=0, Tr_(3/0)y₃=5 and Tr_(5/0)y₅=−25. No index−1 is evaluated. | Retained | Boundary equations separated from s≥1 recurrence. |
| §8.1 Minus-point invariant theorem | n=1,3,5: primitive trace coefficients are −1,5,−25; their O-indices are1,25,625. Herbrand quotients are1,25,625, so each H¹ has size1. | Retained | Residue size25, rather than5, fixes the exponent. |
| §8.2 Minus quotient freeness | Coinvariants Q⁻/TQ⁻≃O require one generator. A cyclic Λ/(I) has positive fraction-field rank only for I=0: Λ/(T) has rank0, Λ has rank1. | Retained | Positive rank is used after Nakayama. |
| §8.3 Minus kernel freeness | The split normal form Λ²→Λ,(a,b)↦a has kernel 0⊕Λ, rank1. Rank0 would give total rank1; rank2 would give total rank3. | Retained | Projective splitting and locality, not a bare UFD assertion. |
| §9.1 Augmentation-unit generation | For Λ=O[[T]], δ=constant term: δ(T)=0, δ(5)=5 and δ(1+T)=1. Coefficient-of-T instead sends T↦1 while T is not a unit, disproving the continuity-only lemma. | Retained | Augmentation covariance required. |
| §9.2 Rubin’s integral decomposition | In O², generators e₁,e₂ give addition determinant1. Replacing e₁ by5e₁ gives determinant5 and a cokernel O/5 of size25, despite becoming an isomorphism over Φ. | Retained | Integral surjectivity, not rational splitting. |
| §9.3 Signed local-unit freeness | The direct sum has ranks1+1=2; the plus generator projects to a unit generator of Q⁻. A plus vector5ξ has quotient coordinate5 and fails to generate integrally. | Retained | Optimal unit generates after integral quotient comparison. |
| §9.4 Nonzero character derivative on the full module | At χ=1 the optimal δ=1 gives δ₁=6/5≠0. A zero map on a primitive character orbit would give pairing0 against its entire Fourier component, contrary to a dual witness value1/5≠0. | Retained | Nonzero full derivative uses duality, not signed decomposition. |
| §9.5 Correct-parity generator nonvanishing | For a generator v, multiplying by γ changes δ_χ by χ(γ)⁻¹, e.g. ζ₅⁴≠0. The nongenerator (γ−1)v has trivial-character derivative (1−1)δ₁(v)=0; zero is never a generator. | Retained | Every matching character, including1, and every generator. |
| §9.6 Historical numerical range regression | 1001=7·11·13, so prime ranges≤1000 and≤1001 coincide. p=13 is1 mod12 and p=47 gives printed bound0; both are included by the universal theorem. | Retained | Historical range is only a specialization. |

Each API bullet of the accepted design is tested separately below. The labels identify design facts and are not claimed Lean declarations.

| Statement | Instances and values on the two sides | Result | Change |
|---|---|---|---|
| §0.1: data, conductorExponent | c(1)=0; c(order5)=2, c(order25)=3. | Retained API fact | Prose only; no Lean padding. |
| §0.1: characterisation, parity_partition | Even/odd partition of 0,2,3 is +,+,− with no overlap. | Retained API fact | Prose only; no Lean padding. |
| §0.1: compatibility, primitive_conductor | Exact orders5 and25 have conductors25 and125. | Retained API fact | Prose only; no Lean padding. |
| §0.2: constructor, units_mk | In the coefficient basis 1,θ, 0⊗1+0⊗θ=0; coefficient vectors (1,0),(0,1) remain distinct. | Retained API fact | Prose only; no Lean padding. |
| §0.2: projection, units_projection | Projection of the identity family is1 multiplicatively and0 additively; N(1)=1. | Retained API fact | Prose only; no Lean padding. |
| §0.2: extensionality, units_ext | Coordinate difference0 at every n gives the zero family; difference at n=0 equal5 is detected there. | Retained API fact | Prose only; no Lean padding. |
| §0.2: characterisation, omega_projector | At p=5, projector on ω has eigenvalue1; on a distinct tame character its character sum is0/24=0. | Retained API fact | Prose only; no Lean padding. |
| §0.2: structure, units_completed_action | A group element γ acts on each finite projection by the same γ, and identity acts as1, not0. | Retained API fact | Prose only; no Lean padding. |
| §0.3: equivalence, twist_eval_basis | On κ-line evaluation, g contributes2·1/2=1. | Retained API fact | Prose only; no Lean padding. |
| §0.3: simp, twist_action | On a trivial underlying line, inverse twist contributes1/2; positive twist would contribute2. | Retained API fact | Prose only; no Lean padding. |
| §0.3: compatibility, twist_change_basis | v′=2v requires coefficient2, giving2·1/2=1. | Retained API fact | Prose only; no Lean padding. |
| §0.3: functoriality, twist_map | Identity map remains identity1; zero linear map gives0 after twisting. | Retained API fact | Prose only; no Lean padding. |
| §0.4: projection, quotient_mk | The two representatives σx,x differ by(σ−1)x and have quotient difference0. | Retained API fact | Prose only; no Lean padding. |
| §0.4: universal-property, quotient_lift | Augmentation kills(σ−1) and sends1↦1; coefficient-of-S does not killS. | Retained API fact | Prose only; no Lean padding. |
| §0.4: equivalence, quotient_twist | At p=5 the untwisted σ action6 becomes6·1/6=1. | Retained API fact | Prose only; no Lean padding. |
| §0.4: compatibility, quotient_generator_independence | Replacing σ byσ² multiplies the relation byσ+1, of augmentation2, a5-unit; inverse quotient comparisons give1. | Retained API fact | Prose only; no Lean padding. |
| §1.1: characterisation, coleman_eval | f=1 evaluates to1 at v₀ and v₁. | Retained API fact | Prose only; no Lean padding. |
| §1.1: relation, coleman_norm_fixed | The product of q=25 values of1 is1, agreeing with norm1. | Retained API fact | Prose only; no Lean padding. |
| §1.1: compatibility, coleman_mul | Interpolating identity times identity gives1·1=1. | Retained API fact | Prose only; no Lean padding. |
| §1.1: functoriality, coleman_basis_change | [2⁻¹]([2]v_n)=v_n, so the changed-basis series evaluates to u_n; the wrong factor would use[4]v_n. | Retained API fact | Prose only; no Lean padding. |
| §1.2: structure, delta_linear | δ(x)=1 implies δ(2x)=2 and δ(0)=0. | Retained API fact | Prose only; no Lean padding. |
| §1.2: structure, delta_level_linear | δ₀(x)=−1/4 at p=5 gives δ₀(2x)=−1/2. | Retained API fact | Prose only; no Lean padding. |
| §1.2: compatibility, delta_basis_independent | Basis factors2 and1/2 multiply to1. | Retained API fact | Prose only; no Lean padding. |
| §1.2: characterisation, delta_invariant_derivation | At0, λ′(0)=1 and dlog(1+aX)(0)=a; omitting λ′ at other points is not invariant. | Retained API fact | Prose only; no Lean padding. |
| §1.4: compatibility, delta_character_level_independence | Tr δ_(n+1)=−5δ_n cancels the added denominator−5, giving factor1. | Retained API fact | Prose only; no Lean padding. |
| §1.4: relation, delta_character_covariance | χ(β)=ζ₅ gives ζ₅⁴, notζ₅. | Retained API fact | Prose only; no Lean padding. |
| §1.4: compatibility, delta_character_evaluation | Evaluation of γ−1 is ζ₅⁴−1; atχ=1 it is0. | Retained API fact | Prose only; no Lean padding. |
| §1.4: functoriality, delta_character_coefficients | The scalar0 remains0 under every embedding; tensor √5⊗1−1⊗√5 has components0,−2√5, so a compositum/embedding must be specified. | Retained API fact | Prose only; no Lean padding. |
| §2.4: data, kummer_pair | Pair(0,x)=0; dual normal form Pair(1/5,1)=1/5≠0. | Retained API fact | Prose only; no Lean padding. |
| §2.4: equivalence, kummer_dual_equiv | Hom_O^cont(O,Φ/O) is identified by its value at1; value1/5 gives a nonzero dual, unlike the zero map. | Retained API fact | Prose only; no Lean padding. |
| §2.4: compatibility, kummer_transfer | For degree5 trace on a base point is[5], giving Pair([5]y,x)=Pair(y,5x). | Retained API fact | Prose only; no Lean padding. |
| §2.4: relation, kummer_galois | For character factorsζ₅ andζ₅⁴, the product factor is1. | Retained API fact | Prose only; no Lean padding. |
| §3.1: compatibility, character_log_level_independence | At level increase the sum and denominator both gain5, ratio1. | Retained API fact | Prose only; no Lean padding. |
| §3.1: relation, character_log_covariance | A ζ₅ eigencomponent gainsζ₅; the inverse would giveζ₅⁴. | Retained API fact | Prose only; no Lean padding. |
| §3.1: compatibility, character_log_trace | For a base logarithm5, degree5 trace has logarithm25=5·5. | Retained API fact | Prose only; no Lean padding. |
| §3.1: characterisation, character_log_resolution | At level2, dimensions20+5=25 and character orthogonality gives total projection1; zero map would sum0. | Retained API fact | Prose only; no Lean padding. |
| §3.2: characterisation, signed_points_mem | A conductor125 component has minus character parity and is in A⁺, failing A⁻. | Retained API fact | Prose only; no Lean padding. |
| §3.2: functoriality, finite_signed_points_inclusion | The zero plus group at level1 embeds as0 at level2; a level2 plus component has dimension20. | Retained API fact | Prose only; no Lean padding. |
| §3.2: compatibility, finite_signed_points_trace | Forχ at the lower layer, tracing multiplies λ_χ by5, so0 stays0. | Retained API fact | Prose only; no Lean padding. |
| §3.2: relation, signed_points_union | At levels0,1,2 the plus dimensions0,0,20 agree with the increasing union; no new base component is inserted. | Retained API fact | Prose only; no Lean padding. |
| §3.2: compatibility, base_minus_points | Base logarithm5 gives A⁻ membership; A⁺ requires5=0 and fails. | Retained API fact | Prose only; no Lean padding. |
| §3.3: characterisation, signed_units_mem | Atχ=1, δ₁=6/5 excludes a δ=1 vector from minus. | Retained API fact | Prose only; no Lean padding. |
| §3.3: structure, signed_units_closed | Intersection of kernels contains0; multiplying a zero derivative by any scalar still gives0. | Retained API fact | Prose only; no Lean padding. |
| §3.3: relation, minus_delta_zero | δ₁=(6/5)δ and6/5≠0 forceδ=0 on minus. | Retained API fact | Prose only; no Lean padding. |
| §3.3: compatibility, signed_units_base_change | In K⊗K, √5⊗1−1⊗√5 has embedding values0,−2√5; the full conjugate family eliminates this false single-embedding zero. | Retained API fact | Prose only; no Lean padding. |
| §4.3: projection, xi_finite_level | Atν=1,m=0 the finite map usesL₀ and sends identity class to0. | Retained API fact | Prose only; no Lean padding. |
| §4.3: compatibility, xi_norm_compatibility | Corestriction sends0 to0 at both adjacent p-levels; no reversed arrow occurs. | Retained API fact | Prose only; no Lean padding. |
| §4.3: relation, xi_galois_equivariant | At an auxiliary generatorh evaluation isζ₅, and the local inverse Tate factor remainsκ⁻¹. | Retained API fact | Prose only; no Lean padding. |
| §4.3: functoriality, xi_coefficient_extension | Unit scalar1 maps to1 and zero to0 under a further coefficient extension; no new normalization factor appears. | Retained API fact | Prose only; no Lean padding. |
| §5.8: projection, primitive_point_image | The chosen lift has λ(f(P))=λ(Q)=5. | Retained API fact | Prose only; no Lean padding. |
| §5.8: characterisation, primitive_point_nondivisible | 5 is outside25O, while0 and25 are in25O. | Retained API fact | Prose only; no Lean padding. |
| §5.8: equivalence, formal_cm_comparison | Target q-Frobenius has trace−10 and parameter−5; a source trace+10 retains parameter+5. | Retained API fact | Prose only; no Lean padding. |
| §5.8: compatibility, primitive_point_base_change | Under coefficient extension 5 stays5 and the transported markings stay the same; the base field does not change the scalar. | Retained API fact | Prose only; no Lean padding. |
| §6.2: simp, modular_point_zero | s=0:T₀/T=0, A₀=A andx₀=Q. | Retained API fact | Prose only; no Lean padding. |
| §6.2: data, modular_point_field | At p=5 the fields ofz₁,z₂ have degrees6,30, not5,25. | Retained API fact | Prose only; no Lean padding. |
| §6.2: compatibility, modular_point_level | The p-isogeny on prime-to-p M-torsion is invertible: multiplication by5 modulo4 is1. | Retained API fact | Prose only; no Lean padding. |
| §6.2: functoriality, modular_point_galois | At s=1 there are5 forward Galois conjugates, rather than one unmarked lattice. | Retained API fact | Prose only; no Lean padding. |
| §7.1: data, optimal_point_field | The Δ′ trace is invariant under a6-element group atp=5 and lies in its fixed field. | Retained API fact | Prose only; no Lean padding. |
| §7.1: characterisation, optimal_point_tame_trace | On a base point the6-term trace is[6]Q, not[24]Q. | Retained API fact | Prose only; no Lean padding. |
| §7.1: simp, optimal_point_base | λ(Q)=5 gives λ(y)=30 by[p+1]. | Retained API fact | Prose only; no Lean padding. |
| §7.1: compatibility, optimal_point_trace_square | Around the tame/pro-p rectangle both composite degrees are6·5=30 and both traces on a base point are[30]. | Retained API fact | Prose only; no Lean padding. |

The README Checks were then compared with their own section formulas. Every bullet is covered individually in the following table; repeated normalizations are recomputed rather than assigned a blanket verdict.

| Statement | Instances and values on the two sides | Result | Change |
|---|---|---|---|
| §0.1 Check 1: c(1)=0 and 1∈Ξ⁺. | c(1)=0, even, so sign+. | Agrees | Kept as a mathematical Check. |
| §0.1 Check 2: A character of exact order p has exponent 2 and belongs to Ξ⁺. | Order5 givesc=2 and sign+. | Agrees | Kept as a mathematical Check. |
| §0.1 Check 3: A character of exact order p² has exponent 3 and belongs to Ξ⁻. | Order25 givesc=3 and sign−. | Agrees | Kept as a mathematical Check. |
| §0.2 Check 1: The sequence of multiplicative identities is additive zero at every level. | Each multiplicative1 is additive0, withN(1)=1. | Agrees | Kept as a mathematical Check. |
| §0.2 Check 2: A family with N(u_(n+1))≠u_n at one level is excluded. | u₁=1,u₀=6 gives norm1≠6. | Agrees | Kept as a mathematical Check. |
| §0.2 Check 3: An eigenvector for a distinct tame character has e_ω-image zero. | A distinct tame character has weighted sum0, so projected value0. | Agrees | Kept as a mathematical Check. |
| §0.3 Check 1: Twisting the κ-line makes its Galois action trivial. | 2·2⁻¹=1. | Agrees | Kept as a mathematical Check. |
| §0.3 Check 2: Using κ rather than κ⁻¹ fails the previous test for κ(g)²≠1. | Positive twist instead gives2²=4≠1. | Agrees | Kept as a mathematical Check. |
| §0.3 Check 3: A Δ-invariant inverse tensor has underlying ω-eigenvector, not an ω⁻¹-eigenvector. | Δ-invariance meansω(d)·ω(d)⁻¹=1; inverse underlying eigenvalue would giveω(d)⁻², e.g.1/4≠1. | Agrees | Kept as a mathematical Check. |
| §0.4 Check 1: The images of σx and x agree in V_∞*. | The quotient ofσx−x is0. | Agrees | Kept as a mathematical Check. |
| §0.4 Check 2: In V_∞, σu=κ(σ)u, which need not equal u. | Atp=5,σu=6u rather thanu. | Agrees | Kept as a mathematical Check. |
| §0.4 Check 3: Replacing σ by σ^a, a∈Z_p×, gives inverse comparison maps. | Forσ², relation multiplierσ+1 has augmentation2∈O×. | Agrees | Kept as a mathematical Check. |
| §1.1 Check 1: The identity system gives f=1, hence every logarithmic derivative is zero. | f=1 givesδ=δ_n=0. | Agrees | Kept as a mathematical Check. |
| §1.1 Check 2: At v′_n=[b]v_n, composition with [b⁻¹] evaluates to u_n; without the inverse it evaluates at [b | [b⁻¹]([b]v)=v; wrong positive substitution gives[b²]v. | Agrees | Kept as a mathematical Check. |
| §1.1 Check 3: At n=0,1 the unchanged p-compatible basis has [−p]w_1=−w_0; the corrected π-basis has [−p]v_1=v | w₀=v₀,w₁=−v₁ gives[p]w₁=w₀, while unchanged[−p]w₁=−w₀. | Agrees | Kept as a mathematical Check. |
| §1.2 Check 1: For f=1 the two derivatives are zero; this detects an added constant. | dlog1=0 at0 andv_n. | Agrees | Kept as a mathematical Check. |
| §1.2 Check 2: For the local two-term unit series 1+aX, the augmentation derivative is a; this checks the firs | coefficients of1+aX are1,a, givinga/1=a. | Agrees | Kept as a mathematical Check. |
| §1.2 Check 3: Changing the Tate basis to bv introduces b⁻¹ in the derivative and b in the tensor coordinate,  | 2·(1/2)=1 under basis balancing. | Agrees | Kept as a mathematical Check. |
| §1.4 Check 1: At χ=1 and n=0 the formula is π⁻¹Tr_(Φ₀/Φ)δ₀; no negative level appears. | Atn=0,δ₁=(−1/5)Trδ₀=6δ/5. | Agrees | Kept as a mathematical Check. |
| §1.4 Check 2: For χ(β)=ζ₅ the covariance factor is ζ₅⁻¹=ζ₅⁴, which differs from ζ₅. | ζ₅⁻¹=ζ₅⁴≠ζ₅. | Agrees | Kept as a mathematical Check. |
| §1.4 Check 3: At the next layer Tr δ_(n+1)=πδ_n cancels exactly the extra π denominator; replacing π=−p by p  | Added trace factor−5 divided by added denominator−5 gives1. | Agrees | Kept as a mathematical Check. |
| §2.4 Check 1: The formal identity has value zero against every unit. | Pair(0,x)=0. | Agrees | Kept as a mathematical Check. |
| §2.4 Check 2: The tensor representatives [π]y⊗π^(−k−1) and y⊗π^(−k) have the same value, by the balancing rel | π·π⁻(k+1)=π⁻k, so balancing factor1. | Agrees | Kept as a mathematical Check. |
| §2.4 Check 3: A point with nonzero class must give a nonzero value for some unit; a pairing identically zero  | The dual witness1/5 paired with1 has value1/5≠0. | Agrees | Kept as a mathematical Check. |
| §3.1 Check 1: For a base point with logarithm a, λ₁=a and every nontrivial component is zero. | For base log5,λ₁=5 and nontrivial sums0. | Agrees | Kept as a mathematical Check. |
| §3.1 Check 2: For an order-p² character and a point defined at Ψ_1, the sum on Ψ_2 is zero because the kernel | A new order25 character on a point atlevel1 has kernel sum1+ζ₅+⋯+ζ₅⁴=0. | Agrees | Kept as a mathematical Check. |
| §3.1 Check 3: For χ(β)=ζ₅, the logarithm covariance factor is ζ₅; the derivative factor is ζ₅⁴, so the produc | ζ₅·ζ₅⁴=1, fixing the paired covariance. | Agrees | Kept as a mathematical Check. |
| §3.2 Check 1: At Ψ_0, the plus formal-point group is zero because λ₁=λ is injective there. | Atbaseλ₁=λ; injectivity gives plus kernel0. | Agrees | Kept as a mathematical Check. |
| §3.2 Check 2: Every base formal point lies in the minus group because its nontrivial components are zero. | Every nontrivial base component is0, giving minus membership. | Agrees | Kept as a mathematical Check. |
| §3.2 Check 3: A nonzero conductor-p³ logarithm component lies in the plus group and fails the minus condition | The new level2 component hasc=3; plus allows its dimension20, minus excludes it. | Agrees | Kept as a mathematical Check. |
| §3.3 Check 1: If δ(v)=1 at p=5, then δ₁(v)=6/5≠0 and v fails the minus condition. | δ=1 givesδ₁=6/5≠0, failing minus. | Agrees | Kept as a mathematical Check. |
| §3.3 Check 2: A plus vector has zero derivatives at every exact-order-p² character, since its conductor expon | Order25 givesc=3, so plus requires derivative0. | Agrees | Kept as a mathematical Check. |
| §3.3 Check 3: For any completed-algebra multiplier, a zero character derivative remains zero even when the mu | The new value isev(λ)·0=0, includingev(λ)=0. | Agrees | Kept as a mathematical Check. |
| §4.3 Check 1: At ν=1 use the class at modulus f and augmentation of the trivial L_0 factor; there is no L_(−1 | ν=1 usesL₀ degree1 andaugmentation1↦1. | Agrees | Kept as a mathematical Check. |
| §4.3 Check 2: At ℓ=5,m=2 the source character has order 5 and evaluation sends a generator to ζ₅ rather than  | Atℓ=5,m=2, the generator image isζ₅ rather thanζ₅⁴. | Agrees | Kept as a mathematical Check. |
| §4.3 Check 3: The two composites from p-level n+1 to n agree by corestriction transitivity; replacing corestr | On an identity class both composites give0; corestriction degrees multiply in the same order. | Agrees | Kept as a mathematical Check. |
| §5.8 Check 1: The point Q=0 has logarithm 0 and fails primitivity. | λ(0)=0∈25O, failing primitivity. | Agrees | Kept as a mathematical Check. |
| §5.8 Check 2: A point [p]R has logarithm in p²O and fails the nonzero class test modulo pF(pO). | λ([5]R)=5λ(R)∈25O. | Agrees | Kept as a mathematical Check. |
| §5.8 Check 3: At p=5 logarithm 5 gives a generator of 5O; multiplying by p+1=6 gives 30, still a generator, w | λ(Q)=5 andλ([6]Q)=30 are both nonzero modulo25. | Agrees | Kept as a mathematical Check. |
| §6.2 Check 1: At s=0, T_0=T, A_0=A and x_0=Q; omitting the original marking changes the moduli point. | T₀/T=0 andA₀=A. | Agrees | Kept as a mathematical Check. |
| §6.2 Check 2: At p=5 the first primed degree is 6, not 5. | Atp=5, [Ψ′₁:Φ]=6≠5. | Agrees | Kept as a mathematical Check. |
| §6.2 Check 3: The tame-fixed field of Ψ′_2 is Ψ_1 at p=5, of degree 5; using Ψ′_1 would give the base field. | [Ψ′₂:Φ]/6=30/6=5=[Ψ₁:Φ]. | Agrees | Kept as a mathematical Check. |
| §7.1 Check 1: At p=5 the tame trace has 6 terms, rather than the 24 terms of the full Lubin–Tate tame group. | Atp=5 the sum has6 terms, not24. | Agrees | Kept as a mathematical Check. |
| §7.1 Check 2: The point y_0 is traced from x_1 and equals zero by the Hecke relation; x_0 is the primitive Q. | y₀=Trx₁=0, whereasx₀=Q haslog5. | Agrees | Kept as a mathematical Check. |
| §7.1 Check 3: The parameter is the iterated formal sum: its logarithm is the sum of conjugate logarithms, whe | Formal sum has log5+10=15; substituting an arbitrary additive law is not justified by parameter sums. | Agrees | Kept as a mathematical Check. |

Standing conventions, supplier normalizations, exceptional inputs and worked examples are covered explicitly here. Zero/non-domain or non-characteristic-zero examples are rejected by hypotheses, rather than evaluated through division conventions.

| Statement | Instances and values on the two sides | Result | Change |
|---|---|---|---|
| Prime/local datum | p=2,3 fail p≥5; p=5,7 give q=25,49. The zero ring has1=0 and is not the chosen DVR; characteristic-p fields havep=0 and fail characteristic zero. | Domain fixed | No arbitrary-DVR/ℤ_p ambiguity. |
| No q=1 degeneration | q=p²≥25, so q−1≥24 and q≠1. | Excluded by hypotheses | Projector never divides by0. |
| Abelian compact Galois actions | G⁺,G⁻ are ℤ₅-lines; S₃ has commutator subgroupA₃ of order3, so it is not Γ≃ℤ₅². A noncompact discreteℤ is not the profinite Γ. | Excluded by hypotheses | No nonabelian/continuous-dual generalization claimed. |
| Principal-unit depth | Overℚ₅, 1+5=6 reduces to1 and belongs atdepth1; 2 reduces to2 and fails depth1 though it is a unit atdepth0. | Agrees | Uses native depth1. |
| Invariant differential denominators | λ′(0)=1; transported invariant differential is everywhere nonvanishing on the formal group. f(v_n) is a unit, unlike a series with constant term0. | Agrees | No zero denominator inδ_n. |
| Tate sign in supplier and Layers1–2 | Atlevels0,1, w₀=v₀,w₁=−v₁ and[p]w₁=w₀; the missing sign yields−w₀. | Agrees | Same convention retained throughout. |
| Frobenius and source/target formal parameters | Atp=5, (X+5)² has trace−10 and parameter−5; (X−5)² has trace+10 and parameter+5. Both have determinant25. | Agrees | Source sign not silently changed to target sign. |
| Two tame groups and level shift | p=5 gives card Δ=24, card Δ′=6, [Ψ′₂:Φ]=30 and [Ψ₁:Φ]=5. | Agrees | No Δ/Δ′ identification. |
| Twist and quotient coefficient coordinate | κ(σ)=6 atp=5: evaluation relationσ=6 twists toσ=1. Replacingσ byσ² gives coefficient2 in its first-order relation, a5-unit. | Agrees | Closed quotient is generator independent. |
| Kummer pairing convention | δ=1,δ₀=−1/4,λ(y)=5 gives traced numerator−30; k=0 gives6=0 modO, k=1 gives−6/5≠0 modO. | Agrees | Fixes sign and tensor denominator. |
| Fourier finite-level signs | Atp=5,n=0,1,2,3, (plus,minus) dimensions are(0,1),(0,5),(20,5),(20,105); sums1,5,25,125. | Agrees | Trivial component only in minus formal points. |
| Canonical-root-sign specialization | D=−7 gives split2 and sign+; D=−11 gives non-split2 and sign−. | Corrected | Negative general family is retained. |
| Auxiliary-value algebraicity and period | Ω is nonzero; Ω→2Ω multipliesΩ⁻¹L by1/2 and period-normalized class by1/2. Atp=5 this is a unit rescaling. There is no ℂ→ℂ_p field map. | Agrees | Actual algebraic avatar used. |
| Finite scalar extension and image ideal | I=5O remains an ideal of positive valuatione in any finite extension of ramificatione; a unit has valuation0. I=O extends toR. | Agrees | Unit witness descends without signed freeness. |
| Native reduced predicate junk input | The native reduced predicate holds at(0,0,1), with discriminant0; native reducedForms0 isempty. At D=−7, (1,1,2) has discriminant−7 and is primitive. | Agrees | D<0 and primitive count explicit. |
| Coarse models over a square-zero base | Base-changing a smooth prime-to-level model fromk tok[ε]/ε² preserves smoothness and its fibre degreeμ; a merely coarse-point bijection gives no completed-local isomorphism. Residue rings have ranks1 and2 overk respectively. | Supplier hypothesis retained | No reduction-point bijection substituted for étaleness. |
| Separability negative control | Atp=5,[6] has tangent6≡1; [5] has tangent5≡0. Identity map has differential1 and degree1. | Agrees | Scalar map used to kill reduction is a p-unit. |
| Ramification and elliptic stabilizers | Forμ=36, j-fibre counts are≥36,12,18, while ramification bound is6; forN=27 the different degree is0. | Agrees | Bounds attach to the correct maps. |
| p=47 lower bounds | Printed coefficient0, sharper3, exceptional1/3 and1/2; comparisons to1/6 give false,true,true,true. | Agrees | No uncovered prime. |
| Trace boundaries and parity | Relative toy values in units ofy:0,−1,0,5,−25 at the stated total traces. Atp=5, λ(Q)=5, λ(y)=30. | Agrees | n=0 treated separately. |
| Herbrand cardinal convention | Atoddn=1,3,5, [O:5^((n−1)/2)O]=1,25,625=p^(n−1); replacing residue cardinal25 by5 gives1,5,25 and is wrong. | Agrees | O-rank versus ℤ_p-rank distinguished. |
| Rank-zero/zero module controls | Λ has rank1, Λ² rank2, zero module rank0. Λ/(T) has fraction-field rank0; the actual rank-two unit module is not quantified as arbitrary input. | Agrees | No vacuous arbitrary-module headline. |
| Integral versus rational direct sum | diag(1,1) has determinant1; diag(5,1) has determinant5 and index25 overO, but both have rational rank2. | Agrees | Unit rather than nonzero determinant required. |
| Augmentation and Rubin4.2 correction | Constant term(T)=0, coefficient-of-T(T)=1 and constant term(1+T)=1. | Agrees | Continuity alone does not detect generators. |
| Generator nonvanishing boundary | δ₁(v)≠0 for plus generator; δ₁((γ−1)v)=0. Atχ(γ)=ζ₅, multiplying byγ gives factorζ₅⁴≠0. | Agrees | Every generator, no claim that every nonzero vector is a generator. |
| Historical range | 1001=7·11·13; its primality indicator is0. p=13 and47 remain in universal scope. | Agrees | Not a proof input. |
| Auxiliary field worked row p=5 | D=-7, D mod8=1, (D/p)=-1; reduced forms=1, h=1<p; every b²−4ac equals-7. | Agrees | Full list retained. |
| Auxiliary field worked row p=7 | D=-15, D mod8=1, (D/p)=-1; reduced forms=2, h=2<p; every b²−4ac equals-15. | Agrees | Full list retained. |
| Auxiliary field worked row p=11 | D=-23, D mod8=1, (D/p)=-1; reduced forms=3, h=3<p; every b²−4ac equals-23. | Agrees | Full list retained. |
| Auxiliary field worked row p=13 | D=-15, D mod8=1, (D/p)=-1; reduced forms=2, h=2<p; every b²−4ac equals-15. | Agrees | Full list retained. |
| Auxiliary field worked row p=17 | D=-71, D mod8=1, (D/p)=-1; reduced forms=7, h=7<p; every b²−4ac equals-71. | Agrees | Full list retained. |
| Auxiliary field worked row p=19 | D=-39, D mod8=1, (D/p)=-1; reduced forms=4, h=4<p; every b²−4ac equals-39. | Agrees | Full list retained. |
| Auxiliary field worked row p=23 | D=-47, D mod8=1, (D/p)=-1; reduced forms=5, h=5<p; every b²−4ac equals-47. | Agrees | Full list retained. |
| Auxiliary field worked row p=29 | D=-31, D mod8=1, (D/p)=-1; reduced forms=3, h=3<p; every b²−4ac equals-31. | Agrees | Full list retained. |
| Auxiliary field worked row p=31 | D=-7, D mod8=1, (D/p)=-1; reduced forms=1, h=1<p; every b²−4ac equals-7. | Agrees | Full list retained. |
| Auxiliary field worked row p=37 | D=-39, D mod8=1, (D/p)=-1; reduced forms=4, h=4<p; every b²−4ac equals-39. | Agrees | Full list retained. |
| Auxiliary field worked row p=41 | D=-167, D mod8=1, (D/p)=-1; reduced forms=11, h=11<p; every b²−4ac equals-167. | Agrees | Full list retained. |
| Auxiliary field worked row p=43 | D=-87, D mod8=1, (D/p)=-1; reduced forms=6, h=6<p; every b²−4ac equals-87. | Agrees | Full list retained. |
| Auxiliary field worked row p=47 | D=-95, D mod8=1, (D/p)=-1; reduced forms=8, h=8<p; every b²−4ac equals-95. | Agrees | Full list retained. |

No unresolved counterexample to a retained target was found in these instances. This is an adversarial statement audit, not a proof of the arithmetic headlines or a claim that the explicit supplier gaps have been implemented.

## Dependency check

Ran the prescribed dependency command, with --name ColemanPowerSeriesPartII, --movable and the supplied merge-order/ORDER.txt. Its final output is:

```text
depcheck: 27 roadmaps, 239 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The alias is only an ownership statement, not a supplier edge. Each internal dependency was compared with its local section and keeps the one-way sequence: unit and derivative foundations → Kummer duality → signs → independent optimal plus unit and local points → minus quotient → integral direct sum. The proof of optimal-unit existence does not consume signed freeness; the nonzero full derivative proof does not consume the final decomposition.
