# Package report: AnticyclotomicLocalUnits

The package is written in packages/AnticyclotomicLocalUnits/README.md, Suggested.lean, metadata.toml and sources.toml. The README has nine layers and all 50 accepted targets, specialized where their generic objects have a supplier. The original definition API facts, Checks and five worked-example topics are retained in prose. It has no phantom declarations or target-number catalogue. Only the top-level gaps list changed in design/plan.json; the remainder was compared structurally with the saved original and is identical.

The separate design/review.json and pre-existing package reports named in the brief were absent. The accepted review and its per-target verdicts are embedded in design/plan.json; those were read and applied, including its G11 coefficient warning and non-blocking ownership/source notes. The skeleton was generated from every node’s statement, hypotheses, API, tests, source locators and prerequisites before the prose was written. Style references read on main were ProfiniteArithmetic, LocalGaloisGroups and PadicMeasuresIwasawaAlgebras.

## Headline inventory and statability

The inventory was saved before Suggested.lean was written. None of the twelve headlines below is statable on its actual arithmetic carriers at the pins with only a few simple definitions. Suggested.lean explicitly records each missing carrier; it contains no declarations, stand-ins, sorry data or algebraic API substitutes.

| Headline | Status at the pins | Missing actual carrier or comparison |
|---|---|---|
| Rank-two local-unit limit and anticyclotomic quotient, §§0.3, 0.5 | Not statable | Actual LT division tower, norm-compatible arithmetic unit module and inverse Tate twist |
| Height-two Coleman interpolation, §1.1 | Not statable | Formal O-module, division points and analytic interpolation carrier |
| Universal formal norms and perfect arithmetic Kummer duality, §§2.2–2.4 | Not statable | Formal LT point towers, arithmetic Kummer map and finite obstruction comparison |
| Wiles trace reciprocity, §2.5 | Not statable | Actual Kummer pairing and native Coates–Wiles derivatives |
| Signed annihilators and rank bounds, §§3.6–3.7 | Not statable | Arithmetic Fourier logarithms, derivatives and signed submodules |
| Optimal plus unit with unit derivative, §4.5 | Not statable | Anticyclotomic local-unit module and its actual derivative |
| Primitive modular formal CM point and optimal local trace system, §§5.9, 6.4–6.5 | Not statable | Actual integral modular parametrization and LT/quasi-canonical formal-point carriers |
| Minus H¹ vanishing and exact divisible invariants, §§7.2–7.3 | Not statable | Signed arithmetic point modules with their actual discrete actions |
| Free minus quotient and kernel, §7.4 | Not statable | Actual ambient local-unit module and minus submodule |
| Integral signed decomposition, §8.2 | Not statable | Arithmetic rank-two anticyclotomic module and its signed summands |
| All-character and signed-generator derivative nonvanishing, §§8.3–8.4 | Not statable | Same actual signed module and character derivatives |
| Compatible injective finite signed Kummer images, §8.5 | Not statable | Signed formal points, LT torsion coefficients and their Kummer embeddings |

The auxiliary finite-field counts and abstract power-series algebra are not replacements for these headlines. Mathlib’s FormalGroup is a formal group law, not a Lubin–Tate O-action with its division tower. Tau Ceti’s elliptic FormalGroupPoint is an actual maximal-ideal parameter carrier, not that tower or its Coleman interpolation. General continuous cohomology and the native completed algebra likewise do not determine the arithmetic modules in these statements.

## Ownership and duplication removals

The content main is 66576b61d0440aec1f04a10b179f7e7163140b96. The actual package pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, both confirmed against the manifest and package HEADs. The older design pin audit was not reused as a claim about the actual pins.

Object searches used roadmaps list and repeated roadmaps grep queries against main and the 332 indexed open heads, including the named open roadmap folders, together with rg over board designs and both pinned source trees. Focused searches covered local units, formal norms, LT/Coleman interpolation, Coates–Wiles derivatives, twists/coinvariants, completed actions, Cartier/Kummer duality, signed Fourier kernels, CM coefficients, mass/trace counts, modular good models, lattice neighbors and cyclic cohomology. Every positive supplier citation was read in its main copy or new-roadmap head. Existing-roadmap revisions were not taken as dependencies. Board designs of LubinTateFormalModulesAndQuasiCanonicalLifts and NonordinaryCMSpecialValues were read directly. PadicHodgeRegulators is supplied by the board package at the explicitly indexed head 5eff35d; its §§1.4 and 1.7 were read there with a read-only API request.

The following duplicate constructions and theorem blocks were removed as owned constructions here; their application targets remain under their distinct local arithmetic scope. Every item is recorded in Scope and ownership and the exact supplier contracts.

| Removed duplicate object or theorem | Owner consumed | Kept arithmetic variant |
|---|---|---|
| Principal-unit subgroup and filtration | Native TauCeti.unitFiltration and unitFiltration_one; LocalFieldsRamification Layer 1 | §0.2’s actual norm limit and ω-projection |
| Generic continuous ℤ_p powers on abelian pro-p groups | TauCeti.IsProP.module and continuousSMul_module; ProfiniteArithmetic §1.3 | Prove the principal groups satisfy its hypotheses |
| Generic completed algebra, projection/constructor/ext and compact action | Native CompletedGroupAlgebra Basic and Module | Arithmetic completed action on the specified norm limit |
| Generic Hom evaluation/twisting construction | Native O-linear Hom and supplied Tate module | §0.4’s inverse twist of the actual arithmetic modules |
| Multiplicative determinant norm and cyclotomic interpolation | IntegralIwasawaTheory §7.1; ColemanPowerSeries Layer 1 | Height-two rank-p² interpolation in §1.1 |
| Generic formal logarithm, LT construction, torsion and Tate character | LubinTateFormalModulesAndQuasiCanonicalLifts LT.0–LT.2 | Evaluation and derivatives on those specific objects |
| Generic scalar-Frobenius equality and Honda/LT recognition | Same supplier LT.4 | §5.3 descends prime-to-p cyclic-level subgroups |
| Generic quasi-canonical quotient, exact endomorphism order and primed fields | Same supplier LT.5–LT.8 | §6.1 builds their actual modular images |
| Generic p+1 lattice-neighbor classification and orbit transitivity | Same supplier LT.7/lattice-neighbors | §6.3 identifies those orbits with the modular Hecke trace |
| Generic formal traces and tame/adjacent-field comparison | Same supplier LT.9 | §6.2’s marked point trace and §6.4’s recurrence |
| Generic finite Cartier duality | Native affine finite locally free Cartier duality | §2.1 compares the actual finite formal Kummer sequence and its dual |
| Formal-to-elliptic homomorphism, injectivity and range | Native AdicCompletion, Range and KerReduction modules | Transport them through the exact completion realization |
| Generic canonical CM characters, periods, normalized early classes, root signs and Finis theorem | NonordinaryCMSpecialValues NCM.0–NCM.4 | §§4.1–4.5 assemble the chosen auxiliary field, projection and primitive unit |
| Unramified CM coefficients and scalar-to-tensor injectivity | NonordinaryCMSpecialValues NCM.5 | Prove the derivative lands in the supplied tensor, then descend coordinates |
| General dual exponential and adjunction | PadicHodgeRegulators §§1.4, 1.7 | §4.3 compares that fixed normalization with Coleman derivatives |
| Composite-level proper models, integral Hecke objects and genuine modular quotients | ModularCurvesPartII §§5.2–5.3, 9.9–9.11, 13.2, 13.7, 16.6 | §5.2’s good-prime Manin application and the explicit missing comparisons |
| Generic modular genus/index formula | ModularForms Layer 10B | §5.5’s Riemann–Hurwitz ramification bound |
| Generic finite-field Frobenius, supersingular predicate, twists and reduction | EllipticCurves Layers 1, 3–5 | §5.4 applies the requested general trace-class input |
| Generic cyclic Tate cohomology and Herbrand formalism | ClassFieldTheory Layer 0 | §7.1’s arithmetic signed-lattice computation |
| Generic finite-coefficient limits | ArithmeticGaloisDuality §§R02.1.2–R02.1.3 | Actual obstruction and discrete point cocycle arguments |
| Generic Weierstrass, Nakayama, finite local-projective freeness and constant-coefficient unit criterion | PMIA §§4.2–4.5, 5.2; Mathlib | §8.1 applies augmentation linearity on the actual quotient |
| Generic form/class-number/splitting and analytic class-number formula | ImaginaryQuadraticClassNumber H1–H2 | §4.1 constructs an auxiliary field using the requested uniform upper bound |
| Design-era algebraic signature controls and API-name catalogues | README mathematics; no Lean headline carrier | Omitted from Suggested.lean; the acceptance file records the actual missing headlines |

Ownership against the available open heads was checked. Neither HeegnerPointEulerSystems nor SelmerIwasawaCohomologyPartII supplies the local signed objects here; their global constructions consume them. ColemanPowerSeriesPartII’s board design contains overlapping inert-tower material and is later in the merge order. Its early local notions remain owned here under the accepted design; it is not a supplier, and no fully qualified declaration from it is introduced. General LT and early CM objects have moved to their earlier named suppliers, rather than being reconstructed from that later overlap. No mathematical target was dropped for its difficulty or for a source-access problem.

## Supplier gaps and the eleven design boundaries

Only the allowed gaps list was replaced, with nine exact one-sentence requests. Their slug, supplier, section and needs sentence agree with the corresponding What ... must provide paragraphs in the README. The new requests concern two-variable O coordinates, compact coefficient/dual comparisons, general unit norm control, completion realization, supersingular trace classes, mixed fine-level disks, good-model Hecke comparison, integral congruence comparison and the quadratic class-number upper bound.

The eleven historical boundaries were reconciled as follows: G1 is covered by the named LT sections except the completion-realization request; G2 by NCM.0–NCM.4; G3 by the EllipticCurves Layer 3 request; G4 by supplied composite proper models plus three explicit modular comparison requests; G5 by the IntegralIwasawaTheory §7.2 request; G6 is the height-two construction in §1.1; G7 the finite formal Cartier/Kummer comparison in §2.1; G8 the ramified-base shrinking theorem explicitly included in §2.2; G9 the actual explicit-reciprocity proof obligations of §§2.5 and 4.3 with the original locator uncertified; G10 the ImaginaryQuadraticClassNumber H2.3 request; G11 is stated by NCM.5 and is consumed exactly at tensor membership. A named supplier target is an input to a roadmap, not a claim that its proof has been completed.

## Corrections and unsupported assertions

- The unramified p=53 auxiliary-field upper bound evaluates to 52.7611867782, not the draft’s rounded 52.7487. Its ratio to p is 0.9954940902. The decreasing-ratio argument has derivative sign −log(8p) times a positive factor.
- A rank-one subtower is not cofinal in the rank-two tower. Section 2.2 now kills each coordinate using a totally ramified ℤ_p subtower above its finite base; the needed shrinking estimate is proved at that base. Hazewinkel’s exact unramified depth formula is never applied at a ramified base or at n=0.
- The integral pⁿ signed-point bound does not follow from a rational normal basis alone. Section 3.3 requires the actual integral formal trace projectors, and §3.4 cites Rubin87 Lemma 5.5(vi), not merely (v).
- The evaluation equivalence in §0.4 explicitly requires an O-basis; evaluation at pv has image pM. The inverse character is κ⁻¹.
- The invariant derivative retains λ′ in its denominator. Formal logarithmic derivative and analytic evaluation are distinguished. Nonzero denominator arguments are stated.
- The trivial character has conductor exponent zero; exact order pʳ has exponent r+1. This applies independently to the auxiliary l-character’s conductor/source field.
- Unit and point parity are opposite conventions, and the two weighted sums use opposite character powers. The trivial Euler factor is 1+1/p. At p=5 the values 6/5 and 1 differ, although their kernels agree. The review’s rejected allegation that BKO21 p.960 prints δ₁=δ was not repeated.
- Scalar vanishing does not imply tensor-kernel membership for arbitrary finite free coefficients. The ζ_p tensor counterexample is retained, and the actual NCM.5 unramified normalization is required before basis descent. The proof no longer assumes plus freeness. Its unused signed-rank prerequisite was dropped.
- The BKO21 p.958 degree-label typo is distinguished from its correct p.959 tame-fixed-field relation: primed degree p^(s−1)(p+1), and Ψ_s=(Ψ′_(s+1))^Δ′. The two tame groups have sizes p²−1 and p+1.
- The outward lattice list uses the independent θ-coordinate. Omitting θ gives identical scalar lattices, not p distinct neighbors. The orbit consists of next-level x_(s+1), and the conductor-zero trace uses Δ′.
- The p=47 weak count equals zero. The generic-j count is 3μ and proves existence. Exceptional counts divide μ by 3 or 2 for the j-map, while parametrization ramification is controlled by its different.
- The scalar-Frobenius/Honda sign is εp with type p−εX². Trace −2p gives parameter −p. Generic scalar/Honda theory is imported from LT.4.
- The minus quotient is V∞*/V∞*,− throughout. The first trace is −y, while y₀=0; these are distinct boundaries.
- Continuity alone in Rubin87 Lemma 4.2 does not force generation. Coefficient extraction at T sends T to 1. Augmentation linearity sends it to 0 and supplies the needed constant-coefficient argument on the actual quotient.
- The formal-point range declaration at these pins is in Point/Range.lean, not Point/AdicCompletion.lean. The new native Point/KerReduction.lean identification and equivalence are consumed as well. The Mathlib local-freeness theorem is Module.free_of_flat_of_isLocalRing, with finite/flat/local binders, not a guessed Module.Free.of_projective name.
- The modular-Jacobian contract is ModularCurvesPartII §§13.2 and 16.6; its §14.5 is the weight-two Hecke-equivariant Shimura comparison and is not used as a substitute. PadicHodgeRegulators’s exact dual-exponential subsection is §1.4. The LT sign target is LT.8/sign-generator-comparison.
- The finite signed Kummer export needs the finite comparison and saturation, not the integral decomposition as an extra prerequisite; its unused §8.2 edge was dropped. No arbitrary finite-invariant control statement is asserted.
- The additive formal-group coordinate example explicitly says it transports the additive law by Z=X+X². It is a coordinate-convention negative control, not an assertion that a particular LT coordinate has that inverse expansion.
- Haz77 is in Duke Mathematical Journal 44, not Journal of Pure and Applied Algebra. AU96 has both a Proposition 3.2 and Zagier’s Lemma 3.2; the latter is located explicitly at p.278.

The README cannot certify the original Wiles proof or any supplier’s eventual implementation. Those are not silently assumed as completed library theorems. Its mathematical claims are roadmap targets with exact hypotheses and source locators. All five primary texts used for local statements were read; no missing theorem or source passage was invented. No suspicious external instruction was acted on.

## Source resolution

All six cited works have one manifest key. Rubin87, Haz77, Win80 and AU96 were fetched through the source service and their exact line-numbered extracts read. BKO21’s published PDF already existed in the source-service cache and has exactly the accepted SHA-256 77ff329057e17cbad573cc309fce3f69f4ba6b73619c4ca203a4ed79a1cb790e; that legal institutional cached copy and its existing extraction were read. New retrieval attempts failed on the delivery-host classifier or alternate endpoints. The manifest explicitly records cache reuse and its cache-file timestamp instead of presenting a refetch as successful. The extraction and all source PDFs remain outside the repository.

Wiles78 is a settled uncertified published locator, DOI 10.2307/1971143, pp.235–254; the source service reached restricted JSTOR access. Its original text was not read, no internal lemma is claimed, and the actual local formula was read at Rubin87 Theorem 5.3 and BKO21 §4. The failed-fetch entries created during this run were cleared because BKO21 is readable in the legal cache and Wiles78 is explicitly locator-only uncertified. There is no unresolved missing-text request. The final sources check is recorded below.

## Pin verification and binder audit

Pinned locations read directly include Mathlib/RingTheory/PowerSeries/Basic.lean:76,139; Derivative.lean:49; Inverse.lean:109; Mathlib/FieldTheory/Galois/NormalBasis.lean:120,127; Mathlib/RingTheory/LocalRing/Module.lean:299; Mathlib/RingTheory/LinearDisjoint.lean:232; TauCeti/NumberTheory/LocalField/UnitFiltration/Basic.lean:88,99,192; TauCeti/Topology/Algebra/Group/Profinite/ProP/PadicPow.lean:454,473; CompletedGroupAlgebra/Basic.lean:145,161,179,186; Module.lean:344,387; TauCeti/AlgebraicGeometry/EllipticCurve/FormalGroup/Point/AdicCompletion.lean:273,292; Range.lean:158; KerReduction.lean:79,87; and TauCeti/AlgebraicGeometry/AffineGroupScheme/CartierDuality/FiniteLocallyFree.lean:271,331. The definition bodies and surrounding hypotheses were read, not merely their names. Mathlib/RingTheory/FormalGroup/Basic.lean:56 has no O-action, torsion tower or Lubin–Tate condition, and commutativity is the separate FormalGroup.IsComm class at line 74. In particular the formal-point carrier’s topology is complete, Hausdorff and linear, and the congruence subgroup does not itself bundle pro-p or completed-action data.

The mechanical declaration inventory in Suggested.lean has zero declarations. The requested #check @name pass was therefore performed on an empty owned-declaration list; there are no implicit standing hypotheses to disappear and no declaration types to repair. A scratch Lean file was elaborated once with #check for the seven Mathlib inputs below. It confirmed the following actual types, including the finite/flat/local binders and the ring-level unit criterion. No TauCeti module is imported by Suggested.lean, so no object-file build is needed.

```lean
@PowerSeries.coeff : {R : Type u_1} → [inst : Semiring R] → ℕ → PowerSeries R →ₗ[R] R
@PowerSeries.constantCoeff : {R : Type u_1} → [inst : Semiring R] → PowerSeries R →+* R
@PowerSeries.derivative : {R : Type u_1} → [inst : CommSemiring R] → Derivation R (PowerSeries R) (PowerSeries R)
@PowerSeries.isUnit_iff_constantCoeff : ∀ {R : Type u_1} [inst : Ring R] {φ : PowerSeries R},
  IsUnit φ ↔ IsUnit (PowerSeries.constantCoeff φ)
@Module.free_of_flat_of_isLocalRing : ∀ {R : Type u_1} {P : Type u_2} [inst : CommRing R] [inst_1 : AddCommGroup P]
  [inst_2 : Module R P] [IsLocalRing R] [Module.Finite R P] [Module.Flat R P], Module.Free R P
Algebra.norm : (R : Type u_1) → {S : Type u_2} → [inst : CommRing R] → [inst_1 : Ring S] → [Algebra R S] → S →* R
Algebra.trace : (R : Type u_1) →
  (S : Type u_2) → [inst : CommRing R] → [inst_1 : CommRing S] → [inst_2 : Algebra R S] → S →ₗ[R] R
```

The following short native-definition quotations fix precisely which existing objects are consumed; they are Lean code, not passages of mathematical source text.

```lean
-- TauCeti/NumberTheory/LocalField/UnitFiltration/Basic.lean:99
-- Field/valuation/topology/local-field binders are supplied above the definition.
def unitFiltration (i : ℕ) : Subgroup Kˣ :=
  ((Units.map (Ideal.Quotient.mk (𝓂[K] ^ i)).toMonoidHom).ker).map
    (Units.map (Subring.subtype 𝒪[K]).toMonoidHom)
```

This congruence-kernel body supplies a subgroup; compactness and the abelian pro-p scalar action require their separate instances and proofs.

```lean
-- TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145
def completedGroupAlgebra : Type (max u v) := completedGroupAlgebra.subalgebra R Γ
```

The preceding private subalgebra is the compatible-family subalgebra of the product of quotient group algebras. This body imposes compatibility, not compactness for an arbitrary coefficient ring.

```lean
-- TauCeti/AlgebraicGeometry/EllipticCurve/FormalGroup/AdicPoint.lean:69
structure FormalGroupPoint (W : WeierstrassCurve O) (I : Ideal O) where
  val : O
  property : val ∈ I
```

The surrounding complete, Hausdorff, uniform and linear-topology hypotheses are part of its setting. The native formal-group addition is installed separately. The fields themselves do not give a formal O-module or the actual LT division tower.

## Adversarial pass

The following are necessary-case mathematical calculations, not proofs of the roadmap’s infinite theorems. Where a carrier is not implemented, the row identifies a finite or symbolic model of the stated formula; it does not claim that an unimplemented arithmetic map was executed. Source hypotheses and proof inputs were checked separately as recorded above. The field computations, Euler residues, reduced forms, mass/twist values, recurrence products, depth sequence and real bound were independently computed with integer/rational arithmetic and the real elementary functions. Every target has a row, followed by one row per retained API fact and by convention/interface rows. The numerical Checks and worked examples are also evaluated against these same formulas.

| Statement | Instances tried | Computed left values | Computed right values / negative control | Result and change |
|---|---|---|---|---|
| §0.1: Conductor parity of anticyclotomic characters | p=5; orders 1,5,25 | c=0,2,3; parity +,+,− | minimal quotient levels 0,1,2; conductor exponents 0,2,3 | Consistent necessary cases. Retained trivial-character boundary and inverse invariance. |
| §0.2: The principal-unit limit and its omega component | p=5; zero family, ω/η eigenvectors, fixed scalar norm | N(1)=1; e_ω on ω=1, on η=0; fixed scalar norm a²⁵ | zero additive coordinate=1; projector squares 1,0; degree=25 | Consistent necessary cases. Reuse native filtration/action, specialize only the arithmetic limit. |
| §0.3: Two-variable omega-unit freeness | p=5,n=0,1; tame characters | coinvariant O-ranks 2,50; tame exponents 1,6 mod 24 | 2·5^(2n)=2,50; 1≠6 mod 24 | Consistent necessary cases. Keep nonexceptional hypotheses; general unit control is a supplier gap. |
| §0.4: The inverse Tate twist | T=Ov; trivial M=O; κ(g)=2; basis −v,pv | evaluations 1,−1,p; twisted action 1/2 | inverse character=1/2; evaluation at pv has image pO, excluding 1 | Consistent necessary cases. Basis binder explicit; action is contragredient. |
| §0.5: The twisted anticyclotomic quotient | free Λ₂²; a=1+p; p=5 | specialized rank 2; σ relation 0; normalized linear term 6 | Λ² rank 2; κ⁻¹κ−1=0; 6 is a unit | Consistent necessary cases. Use closed quotient and actual completed action; O-coordinate gap explicit. |
| §1.1: Lubin–Tate Coleman interpolation | identity family; transported additive formal coordinate; n=0,1 | f=1,Nf=1; inverse −Z+2Z²; [−p](−w₁)=w₀ | evaluation=1; inverse of Z=X+X²; required transition w₀ | Consistent necessary cases. Height-two rank p² construction stays here; ordinary negation is excluded. |
| §1.2: The Coates–Wiles derivatives | f=1; tangent rescaling b=−1,2; p=5 | derivative 0; factors (−a)(−h)=ah and 2h/(2λ′)=h/λ′; trace −5d | δ(0)=0; basis-invariant value ah and h/λ′; πd=−5d | Consistent necessary cases. Retain invariant differential and prove every denominator nonzero. |
| §1.3: Character Coates–Wiles derivatives | p=5,n=0,1; χ(g)=ζ₅ | π⁻¹=−1/5; π⁻²=1/25; covariance ζ₅⁴ | next sum −5A yields (−5A)/25=−A/5; inverse ζ₅⁻¹=ζ₅⁴ | Consistent necessary cases. Keep inverse covariance, full finite group and exact LT normalization. |
| §1.4: The trivial-character Euler factor and descent | p=5; h(0)=1 | (π−1)/π=6/5; δ₁=6/5 | 1+1/p=6/5, not 1 | Consistent necessary cases. Euler values distinguished from equality of kernels. |
| §1.5: Signed anticyclotomic unit modules | p=5; W=O² and W=O[ζ₅] | tensor derivatives (a,b); ramified z=ζ₅⊗1−1⊗ζ₅≠0 | kernel requires a=b=0; multiplication sends z to 0 | Consistent necessary cases. Canonical NCM.5 scalar-to-tensor comparison required before coordinate descent. |
| §2.1: Finite formal Kummer and Cartier comparison | k=1; π-multiple; unramified residue trace | connecting map of [π]z=0; Tr_(𝔽₂₅/𝔽₅)(1)=2 | kernel [π]F(L); evaluation trace coefficient 2 | Consistent necessary cases. Native Cartier dual imported; no formal self-duality assumed. |
| §2.2: Vanishing of universal formal norms | h=2,n=0,1,2,3,4; height-one negative control | identity trace at n=0; depths 1,2,2,3 at n≥1 | n−floor((n−1)/2)=1,2,2,3; height-one norm cokernel has size pⁿ | Consistent necessary cases. Do not apply exact depth formula at ramified bases or n=0; prove coordinatewise shrinking there. |
| §2.3: The two-variable Kummer pairing | free rank-one O pairing model, k=1; zero point | pairing (e/π,e∨)=1/π mod O, π·value=0; zero pairs to 0 | π⁻¹O/O; zero functional 0 | Consistent necessary cases. Finite cup/Artin comparison determines actual pairing; model alone is not its construction. |
| §2.4: Descent of Kummer duality to the anticyclotomic tower | σ action a=κ(σ), inverse Tate twist | σ−1 action κ(σ)⁻¹a−1=0 | dual of Γ⁺-coinvariants has Γ⁺-invariant action 1 | Consistent necessary cases. Subtracting κ again gives 1−κ, wrong unless κ=1. |
| §2.5: Wiles’s trace formula in the pi normalization | p=5,m=k=0 and m+1; zero argument | A/π=−A/5; next πA/π²=−A/5; zero=0 | same residue class; both zero pairings 0 | Consistent necessary cases. Quantifier is every m above a threshold depending on point and denominator. |
| §3.1: Character logarithms of formal points | base log a; degree 5; order-5 character | λ₁=a; next 5a/5=a; nontrivial sum 0 | direct covariance ζ₅a; derivative covariance ζ₅⁴a | Consistent necessary cases. Point normalization is p⁻m, not π⁻m−1. |
| §3.2: Signed formal-point modules | p=5,n=0,1; inclusion pO⊂O | (rank A⁻,rank A⁺)=(1,0),(5,0); tensor-kernel size 25 for pO⊂O | same-parity support; p⁻¹O/O has 25 elements | Consistent necessary cases. Keep saturation; arbitrary tensor inclusions are not injective. |
| §3.3: Fourier decomposition of finite formal lattices | p=5,n=0,1,2 regular representations | orbit dimensions (1),(1,4),(1,4,20); totals 1,5,25 | field degrees 1,5,25; Fourier denominators 1,5,25 | Consistent necessary cases. Integral formal trace projectors are required in addition to rational normal basis. |
| §3.4: The sum of the signed divisible-point modules | p=5,n=0,1,2,3 | minus ranks 1,5,5,105; plus ranks 0,0,20,20 | sum ranks 1,5,25,125; integral multipliers 1,5,25,125 | Consistent necessary cases. Divisible sum does not imply directness; cite Lemma 5.5(vi) for pⁿ bound. |
| §3.5: Finite-level saturation of formal points | πz fixed; torsion-free tower; nonsaturated pO⊂O | [π](gz−z)=0 forces gz−z=0; bad quotient O/pO size 25 | actual fixed point; bad tensor map has 25-element kernel | Consistent necessary cases. Use torsion-free descent, not Fourier support alone. |
| §3.6: The signed annihilator theorem | plus support in Ξ⁻; p=5 order-25 orbit | point logarithm in minus-parity component; plus derivative there=0; product 0 | same-sign annihilator V*,+ and D⁺ gives pairing 0 | Consistent necessary cases. Keep inverse dual action and same-sign annihilator labeling. |
| §3.7: Disjointness and rank upper bounds | ambient rank 2; finite minus ranks 5,105 | positive quotient ranks ≥1; signed ranks ≤2−1=1 | each quotient must have unbounded O-corank dual | Consistent necessary cases. No prior signed freeness used. |
| §4.1: An auxiliary CM field and character | 13 small primes 5–47; p=53 bound | Euler residues p−1 for all choices; h=1,2,3; upper bound 52.7611867782 | inert symbol −1; all p∤h; 52.7611867782<53 | Consistent necessary cases. Corrected rounded bound; upper estimate is the precise H2.3 supplier gap. |
| §4.2: Projection of the early CM zeta class | exact-order-l ν; basis [g],[1],[h]; p=5 | conductor exponent 2; evaluation ν(g),1; H augmentation 1; Δ size 24 | source conductor l²; direct character; tame unit average 24⁻¹ | Consistent necessary cases. Keep all seven maps and actual source fields; Δ′ size 6 is not used here. |
| §4.3: Wiles reciprocity in dual-exponential form | p=5,n=0,1; trivial de Rham representation | finite factors −1/5,1/25; dualExp(log χ_cyc)=1 | π⁻n−1; positive ordered adjunction normalization 1 | Consistent necessary cases. Comparison with actual supplied exponential is a target, not its definition. |
| §4.4: CM-class derivative values and sign | p=5,χ=1,orders 5 and 25 | Euler factor 6/5; root signs +,+,−; wrong-sign value 0 | δ₁=(6/5)δ; conductor exponents 0,2,3 | Consistent necessary cases. Conjugate φ alone; scalar zeros require NCM.5 tensor comparison. |
| §4.5: A plus unit with unit derivative | finite free W; all coordinate derivatives in pO | tensor derivative lies in pW, valuation ≥1 | unit derivative has valuation 0 | Consistent necessary cases. Contradiction gives a unit coordinate only after tensor-kernel membership; no freeness assumed. |
| §5.1: An auxiliary rational supersingular elliptic curve | models y²+y=x³ at p=5,11; y²=x³−x at p=7 | projective counts 6,12,8; all traces 0 | p+1=6,12,8; p² counts 36,144,64 | Consistent necessary cases. Retained exceptional conductors 27 and 32 and all-prime modularity. |
| §5.2: The optimal parametrization has separable reduction | good optimal prime; disk maps t+t² and t^p | Manin valuation 0; reduction derivatives 1 and 0 | separable disk at first map; purely inseparable second map | Consistent necessary cases. Integral nonzero differential, not characteristic-zero nonconstancy, proves separability. |
| §5.3: Scalar Frobenius and the corrected Honda sign | p=5, traces ±10; cyclic orders 6,7 | Frob scalars ±5; counts 16,36; −5 mod 6=1, mod 7=2 | both scalar actions preserve cyclic subgroup; order-7 points are not fixed | Consistent necessary cases. Import scalar/Honda theorem; keep subgroup descent as arithmetic application. |
| §5.4: Supersingular mass and Frobenius classes | p=5,7,47, mass and rational twist classes | (m,d,e)=(0,1,0),(0,0,1),(3,1,1); N(±2p)=1,1,5 | N(±p)=2,0,2; N(0)=0,2,2; mass p−1=4,6,46 | Consistent necessary cases. Counts imported from EllipticCurves extension; geometric j count kept distinct from twists. |
| §5.5: The ramification bound for the parametrization | N=27,32; identity genus-one map | μ=36,48; g=1 gives different degree 0 | bounds 6,8; identity different 0 | Consistent necessary cases. Different includes wild contribution; elliptic indices belong to j-map. |
| §5.6: The generic supersingular-point bound | p=5,13,47 | generic factors 0,1,3; weak factors −2,1,0 | existence for 13,47 since μ,3μ>μ/6; no generic conclusion at 5 | Consistent necessary cases. Correct weak-bound failure at 47 by actual generic fibres. |
| §5.7: The two exceptional supersingular-point bounds | p=5,N=27; p=7,N=32; p=13 negative control | exceptional lower counts 12,24 | ramification bounds 6,8; neither exceptional condition at 13 | Consistent necessary cases. Use separate j-map stabilizer and parametrization bounds. |
| §5.8: An unramified lift to fine level | p=5,7; fine M=6,8 | φ(M)=2,4; p∤Mφ(M); exact M torsion rational | M≥6; at N=27,32 residual elliptic stabilizers eliminated | Consistent necessary cases. Mixed-level completed-disk contract remains explicit. |
| §5.9: A primitive formal CM point | p=5; primitive λ(Q)=p·u; scaling 36 or 5 | valuations 1 and 2 for Q,[p]Q; 36≡1 mod 5, 5≡0 | primitive/nonprimitive; unit/nonunit derivative | Consistent necessary cases. Reuse native formal-point/ker-reduction equivalence after completion realization. |
| §6.1: Modular points from quasi-canonical lifts | p=5,s=0,1,2 | primed degrees 1,6,30; C₀=0; x₀=Q | p^(s−1)(p+1)=6,30 only for s≥1; base separate | Consistent necessary cases. Import fields and quotient theory; construct only modular images and marked transport. |
| §6.2: The optimal local-point system | p=5; Δ′ trace and primitive multiplier | 6 summands, y=6Q primitive; y₀=trace x₁=0 | not 24 summands or x₀=Q; 6 mod 5=1 | Consistent necessary cases. Keep conductor shift and distinction of y from y₀. |
| §6.3: Hecke neighbours in a two-vector lattice basis | p=5,s=1; independent θ coordinate | outward (1,a), a=0,…,4; pair determinants 1,2,3,4; inward (0,1) | six distinct lines; orbit sizes 5 and 1; omitted θ gives only one outward lattice | Consistent necessary cases. Import classification; retain actual modular Hecke trace. |
| §6.4: The optimal point trace relations | p=5; first two wild levels | y₀=0; Tr y₁=−6Q; Tr y₂=0 | −y=−6Q; −y₀=0 | Consistent necessary cases. First boundary is −y, never confused with y₀. |
| §6.5: Parity of the optimal points | p=5,n=1,2,3,5 | odd total traces −y,5y,−25y; even n=2 trace 0 | (−1)^((n+1)/2)5^((n−1)/2)y | Consistent necessary cases. Inherited intermediate trace gives factor p with the displayed alternating sign. |
| §7.1: The minus-point Herbrand quotient | p=5,n=1,3,5; residue degree 2 | Herbrand products 1,25,625 | 5^(n−1)=1,25,625; degree-one coefficient guess gives 5 at n=3 | Consistent necessary cases. Generic cohomology imported from ClassFieldTheory Layer 0. |
| §7.2: Vanishing of minus-point first cohomology | p=5,n=3; primitive y and y′=5y | norm-index bound 25 for y; 625 for y′ | h=25 forces ∣H¹∣≤1 only with primitive y | Consistent necessary cases. Proof of continuous passage uses finite cocycle image and torsion-free open stabilizer. |
| §7.3: The minus divisible-point invariants | base F(Φ) logarithm pO; k=1,p=5 | D⁻ invariants have 25 π-torsion elements; actual base tensor inclusion | Φ/O π-torsion size 25; map pO⊗Φ/O→O⊗Φ/O instead has 25-element kernel | Consistent necessary cases. Do not identify the actual base inclusion with multiplication by p in an unrelated lattice. |
| §7.4: The minus quotient and kernel are free | p=5; X⁻ coinvariant O; torsion Λ/(T) | residual vector-space dimensions both 1; residual cardinality 25 | Λ-ranks 1 and 0 distinguish free quotient from torsion model | Consistent necessary cases. Positive rank retained; finite projective kernel uses local freeness. |
| §8.1: Generation detected by the augmentation derivative | O[[T]]; f=T,1+pT,p+T | constant coefficients 0,1,p; coeff_T(T)=1 | units false,true,false; augmentation(T)=0 | Consistent necessary cases. Continuity counterexample repaired by actual augmentation linearity. |
| §8.2: The integral signed decomposition | signed basis; false rational complement e₁,e₁+pe₂ | addition matrix determinant 1; false complement determinant p | first quotient 0; false complement quotient O/pO, size 25 at p=5 | Consistent necessary cases. Integral plus surjectivity required before rationalization. |
| §8.3: Nonzero character derivatives on the full unit module | χ=1 and order-25 character at p=5 | optimal δ₁=(6/5)δ≠0; nontrivial orbit dimension 20 | rational normal-basis component nonzero, not an empty orbit | Consistent necessary cases. Saturation and sufficiently large denominator needed to get nonzero divisible class. |
| §8.4: Every matching-parity derivative of a signed generator is nonzero | plus/minus generator; χ=1 and order 25; generator sign change | δ(v₊) valuation 0; δ(v₋)=0; change by −1 negates value | matching nonzero, opposite zero; −1 has unit specialization | Consistent necessary cases. Trivial Euler factor does not turn δ₁ into an integral unit assertion. |
| §8.5: Finite signed points and their Kummer images | n=0,p=5; base logarithm a; one trace step | plus Kummer image 0; minus full base image; λ₁(Tr y)=5a | pλ₁(y)=5a; πλ₁(y)=−5a is wrong | Consistent necessary cases. No assertion of finite-invariants control without an H¹ calculation. |

Each API row below names the exact final README bullet in its subsection. Zero, identity and finite-linear tests establish its stated boundary behavior; they do not replace the full arithmetic compatibility proof.

| Statement | Instances tried and values computed on the two sides | Result / correction |
|---|---|---|
| §0.1, API 1: The exponent is the minimal ramification conductor, with c(1)=0. | c(1)=0; c(order 5)=2 | Boundary values agree; negative cases excluded as stated. |
| §0.1, API 2: χ∈Ξ⁺ iff c(χ) is even, and χ∈Ξ⁻ iff c(χ) is odd. | 0 and 2 are even, 3 odd; disjoint signs have empty intersection | Boundary values agree; negative cases excluded as stated. |
| §0.1, API 3: c(χ⁻¹)=c(χ); parity is preserved by coefficient embeddings and inversion. | c(order 25 inverse)=3=3; ζ₂₅ and its embedding keep exact order 25 | Boundary values agree; negative cases excluded as stated. |
| §0.2, API 1: The n-th projection has codomain P_n⊗O and norm of projection n+1 equals projection n. | N(1⊗1)=1⊗1 at consecutive coordinates | Boundary values agree; negative cases excluded as stated. |
| §0.2, API 2: Two compatible families are equal exactly when all finite-level coordinates agree. | all zero additive coordinates agree as (1,1,…); a differing coordinate prevents equality | Boundary values agree; negative cases excluded as stated. |
| §0.2, API 3: x belongs to U∞ iff d·x=ω(d)x for every d∈Δ. | projector eigenvalues (1,0) equal membership indicators on ω,η | Boundary values agree; negative cases excluded as stated. |
| §0.2, API 4: Finite-level group-ring projections of the completed action agree with the Galois action on principal units. | identity group-ring element acts as 1 at every quotient; zero acts as 0 | Boundary values agree; negative cases excluded as stated. |
| §0.2, API 5: A norm-compatible family u_n∈P_n⊗O gives a unique element of Ũ∞; applying e_ω gives its omega component, and e_ω fixes an omega-equivariant family. | the compatible family (1,1,…) constructs zero; e_ω(0)=0 | Boundary values agree; negative cases excluded as stated. |
| §0.2, API 6: e_ω²=e_ω; it commutes with every norm and Γ-action. The zero family is the multiplicative identity at each principal-unit coordinate. | 1²=1 and 0²=0; N(0)=0 and e_ω(0)=0 | Boundary values agree; negative cases excluded as stated. |
| §0.4, API 1: Evaluation at an O-basis v:T gives an O-linear equivalence M*→M; its inverse sends m to the unique linear map taking v to m. | h(v)=1 gives evaluation 1 and inverse sends 1 to h | Boundary values agree; negative cases excluded as stated. |
| §0.4, API 2: Under evaluation at v, g acts by κ(g)⁻¹ times its action on M. | κ=2 on trivial M gives 1/2=2⁻¹ | Boundary values agree; negative cases excluded as stated. |
| §0.4, API 3: Replacing v by bv changes evaluation to b times the old evaluation, b∈O×; evaluations compose with all O-linear equivariant maps. | h(−v)=−1=(−1)h(v); doubling postcomposition gives −2 both ways | Boundary values agree; negative cases excluded as stated. |
| §0.4, API 4: Two O-linear maps T→M agree iff they agree at a chosen O-basis vector; evaluation is an equivalence only for a basis vector, not for an arbitrary v∈T. | pv evaluates to p; 1 has no preimage under multiplication by p | Boundary values agree; negative cases excluded as stated. |
| §0.4, API 5: An O-linear equivariant map M→N induces M*→N* by postcomposition, preserving identities, composition and the compact topology. | id postcomposition sends h(v)=1 to 1; ×2 then ×3 sends it to 6=×6 | Boundary values agree; negative cases excluded as stated. |
| §0.5, API 1: A continuous O-linear equivariant map from U∞* factors uniquely through V∞* iff it kills (σ−1)U∞*. | evaluation at S=0 kills S; evaluation at S=p sends S to p≠0 and cannot factor | Boundary values agree; negative cases excluded as stated. |
| §0.5, API 2: (U∞/(σ−κ(σ))) * identifies with U∞*/(σ−1), compatibly with quotient maps. | inverse action κ⁻¹κ=1, so both relation images are 0 | Boundary values agree; negative cases excluded as stated. |
| §0.5, API 3: The identity on U∞ induces the canonical quotient equivalence for σ and σ^a, for a∈ℤ_p×. | a=6 has inverse in ℤ₅; normalized relation linear coefficient=6 is a unit | Boundary values agree; negative cases excluded as stated. |
| §0.5, API 4: The canonical map U∞*→V∞* is continuous and surjective; q(x)=q(y) iff x−y∈(σ−1)U∞*. | S and 0 have same class; 1 and 0 do not since difference has constant 1 | Boundary values agree; negative cases excluded as stated. |
| §0.5, API 5: The induced Γ⁻ action commutes with q, and q(σx)=q(x); use the existing quotient-module map and equality API. | q(σx)=q(x) because q((σ−1)x)=0; q(0)=0 | Boundary values agree; negative cases excluded as stated. |
| §1.1, API 1: The series relative to v evaluates to u_n at every v_n, with [π]v_(n+1)=v_n. | f=1 evaluated at v_n is 1=u_n | Boundary values agree; negative cases excluded as stated. |
| §1.1, API 2: The interpolating unit series is fixed by N_F, and the interpolation values determine it uniquely. | N(1)=1; the identity family determines that constant interpolant | Boundary values agree; negative cases excluded as stated. |
| §1.1, API 3: The unit-series assignment is a continuous multiplicative map on the norm-compatible unit limit. | f_1 f_1=1·1=1=f_(1·1) | Boundary values agree; negative cases excluded as stated. |
| §1.1, API 4: For v′=bv, the new series is f_u∘[b⁻¹]_F, preserving evaluation at the new torsion basis. | b=−1: [−1]([−1]v_n)=v_n, so evaluation is again u_n | Boundary values agree; negative cases excluded as stated. |
| §1.1, API 5: The interpolating series is uniquely determined by all finite values; coefficient extension and same-parameter formal coordinate change preserve these values. | coefficient embedding sends constant 1 to 1; its finite values remain 1 | Boundary values agree; negative cases excluded as stated. |
| §1.2, API 1: δ and δ_n are continuous O-linear maps on the inverse twist. | δ(0+0)=0+0=0; δ(2x)=2δ(x) in the linear model | Boundary values agree; negative cases excluded as stated. |
| §1.2, API 2: The simultaneous changes v→bv, a→ba, f→f∘[b⁻¹] leave δ and every δ_n unchanged. | (−a)(−h)=ah; tangent rescaling 2 cancels as 2h/2λ′ | Boundary values agree; negative cases excluded as stated. |
| §1.2, API 3: δ_n(gx)=gδ_n(x) and δ(gx)=δ(x); thus δ(r x)=aug(r)δ(x). | invariant base value 1 maps to 1 under a base-fixing g; δ(Tx)=0 as aug(T)=0 | Boundary values agree; negative cases excluded as stated. |
| §1.2, API 4: Tr_(Φ_(n+1)/Φ_n)δ_(n+1)(x)=π δ_n(x). | at p=5 trace numerator −5d equals πd=−5d | Boundary values agree; negative cases excluded as stated. |
| §1.2, API 5: δ(0)=0 and δ_n(0)=0, where zero of the additive unit limit is the compatible family of multiplicative units 1. | identity family has f′=0 and hence δ=δ_n=0 | Boundary values agree; negative cases excluded as stated. |
| §1.3, API 1: Evaluating at any larger admissible Φ_m yields the same value after the canonical embedding. | next weighted sum −5A divided by 25 is −A/5 | Boundary values agree; negative cases excluded as stated. |
| §1.3, API 2: δ_χ(r x)=r(χ⁻¹)δ_χ(x), for the completed character specialization. | r=g gives factor ζ₅⁴=ζ₅⁻¹, not ζ₅ | Boundary values agree; negative cases excluded as stated. |
| §1.3, API 3: Coefficient embeddings transport δ_χ to the derivative for the embedded character. | embedding ζ₅↦ζ₅² changes inverse factor ζ₅⁴ to ζ₅³ on both sides | Boundary values agree; negative cases excluded as stated. |
| §1.3, API 4: The finite sum gives an O-linear continuous map with δ_χ(0)=0; after descent to V∞* its Λ action is through χ⁻¹, and the quotient map computes the same value. | δ_χ(0)=0; value on (σ−1)x is (1−1)δ_χ(x)=0 | Boundary values agree; negative cases excluded as stated. |
| §1.5, API 1: x∈V∞*,ε iff δ_χ(x)=0 for every opposite-parity χ. | zero derivatives yield membership; optimal plus δ₁=6δ/5≠0 rules out same-sign kernel | Boundary values agree; negative cases excluded as stated. |
| §1.5, API 2: Each signed unit module is a closed finite Λ-submodule of V∞*. | model kernels in O² are Oe₁,Oe₂ with zero closed intersection; zero scalar acts by 0 | Boundary values agree; negative cases excluded as stated. |
| §1.5, API 3: δ vanishes on V∞*,− because 1∈Ξ⁺. | δ₁=(6/5)δ and δ₁(x)=0 imply δ(x)=0 | Boundary values agree; negative cases excluded as stated. |
| §1.5, API 4: For finite free W/O, tensor-valued derivatives δ_χ,W=δ_χ⊗id_W land in C_p⊗_O W, and (V∞*,ε)⊗_O W=⋂_(χ∈Ξ^(−ε))ker δ_χ,W by finite basis coordinates. Scalar evaluation into C_p is a different map; its kernels require the canonical coefficient comparison of NonordinaryCMSpecialValues NCM.5. | O²-valued output (a,b) is zero iff a=b=0; ramified ζ⊗1−1⊗ζ multiplies to 0 | Boundary values agree; negative cases excluded as stated. |
| §1.5, API 5: An element x of V∞* together with vanishing of its opposite-parity derivatives gives an element of the signed submodule. Equality is equality in V∞*, and inclusion preserves zero, addition and Λ-scalars. | zero certificate gives zero signed point; inclusion sends 2·0 to 0=2·0 | Boundary values agree; negative cases excluded as stated. |
| §2.3, API 1: At finite torsion order this is connecting map, cup product, and the standard local invariant. | k=1 model value 1/π mod O is killed by π; zero connecting class has value 0 | Retain actual native map and stated hypotheses; source comparison required. |
| §2.3, API 2: ⟨g y,g x⟩=⟨y,x⟩ after the inverse Tate twist. | direct factor a times inverse factor a⁻¹ gives 1; at a=2 product=1 | Retain actual native map and stated hypotheses; source comparison required. |
| §2.3, API 3: The discrete formal-point module equals the continuous O-dual of U∞*. | O/π versus π⁻¹O/O pairing has 25 elements on each finite side for p=5 | Retain actual native map and stated hypotheses; source comparison required. |
| §3.1, API 1: The normalized sums at m and m+1 agree for an inflated character. | 5a/5=a at successive levels | Boundary values agree; negative cases excluded as stated. |
| §3.1, API 2: λ_χ(g y)=χ(g)λ_χ(y), with the direct character, opposite to δ_χ covariance. | χ(g)=ζ₅ gives λ_χ(gy)=ζ₅λ_χ(y) | Boundary values agree; negative cases excluded as stated. |
| §3.1, API 3: λ_χ(y)=0 if χ is nontrivial on Gal(Ψ_m/Ψ_n). | 1+ζ₅+ζ₅²+ζ₅³+ζ₅⁴=0 | Boundary values agree; negative cases excluded as stated. |
| §3.1, API 4: λ_1(y)=p^(−n)Tr_(Ψ_n/Φ)λ(y). | base a has trace 5a and normalization 1/5 gives a | Boundary values agree; negative cases excluded as stated. |
| §3.1, API 5: λ_χ is an O-linear map for formal addition and the formal O-action; λ_χ(0)=0, and inclusion into a higher field commutes with it. | λ_χ(0)=0; λ_χ([2]y)=2λ_χ(y) | Boundary values agree; negative cases excluded as stated. |
| §3.2, API 1: y∈A^ε iff its same-parity character logarithms vanish. | base point with λ(y)≠0 has all odd logarithms 0 but trivial logarithm nonzero | Boundary values agree; negative cases excluded as stated. |
| §3.2, API 2: A_n^ε is the same-parity kernel intersection on F(Ψ_n); all higher characters vanish automatically. | at n=1 all 5 characters are plus, so A₁⁺ rank 0 and A₁⁻ rank 5 | Boundary values agree; negative cases excluded as stated. |
| §3.2, API 3: If a≠0 in O and [a]y∈A^ε, then y∈A^ε. | 2a=0 in characteristic zero implies a=0; a=0 multiplier would falsely admit all points | Boundary values agree; negative cases excluded as stated. |
| §3.2, API 4: D^ε→D is the injective map induced by the actual inclusion of formal points. | saturated summand Oe₁⊂O² gives injective first-coordinate tensor map; nonsaturated pO⊂O has kernel size 25 | Boundary values agree; negative cases excluded as stated. |
| §3.2, API 5: A formal point with all same-parity logarithms zero gives a signed point; two signed points agree iff their underlying formal points agree. The inherited O-submodule operations need no new group law. | ambient zero remains 0 in either sign and equality; inherited sum 0+0=0 | Boundary values agree; negative cases excluded as stated. |
| §3.2, API 6: Field inclusions and formal traces carry the signed submodules to the same sign, and their maps commute with the inclusions into F(Ψ∞). | a vanishing component stays 0 under inclusion, and trace changes it to p·0=0 | Boundary values agree; negative cases excluded as stated. |
| §4.2, API 1: The finite-level image is the specified localization/projection composite, with every source, target, Galois action and tensor coefficient retained. | basis [g] maps to ν(g), [1] to 1; after H augmentation [h] maps to 1 | Retain actual native map and stated hypotheses; source comparison required. |
| §4.2, API 2: Corestriction in the p-tower corresponds to norm of the unit coordinates, giving an element of the actual inverse limit. | zero class corestricts to 0; unit identity norms to 1, its additive zero | Retain actual native map and stated hypotheses; source comparison required. |
| §4.2, API 3: Extending R or changing the chosen prime by its Galois transport commutes with the projected class. | coefficient embedding fixes [1] evaluation 1 and sends ν(g) to its embedded value | Retain actual native map and stated hypotheses; source comparison required. |
| §4.2, API 4: The anticyclotomic class is its image in V∞*⊗R, using σ−1 after inverse twisting. | the quotient kills (σ−1)x, with finite character factor 1−1=0 | Retain actual native map and stated hypotheses; source comparison required. |
| §4.2, API 5: The localization/projection composite is linear on the early cohomology classes: it sends zero to zero and sums to sums, and is compatible with extension of the coefficient ring. | projection of 0+0 is 0=0+0; projection of [g]+[1] is ν(g)+1 | Retain actual native map and stated hypotheses; source comparison required. |
| §5.8, API 1: The lift carries a cyclic order-N subgroup and an exact-order-M point, with p∤NM. | p=5,N=27,M=6: 5∤162 and point order exactly 6 | Retain actual native map and stated hypotheses; source comparison required. |
| §5.8, API 2: Forgetting the order-M point maps P̄′ to P̄ and identifies the corresponding completed local disks. | identity residue disk t maps to t; residue value 0 maps to 0 | Retain actual native map and stated hypotheses; source comparison required. |
| §5.8, API 3: The represented elliptic curve is an actual family on the fine model; a coarse moduli point alone is not sufficient. | fine exact-order-6 marking kills the residual automorphism; unmarked j=0 retains order 3 | Retain actual native map and stated hypotheses; source comparison required. |
| §5.8, API 4: Extension of the unramified coefficient ring transports the marked curve, cyclic subgroup, exact-order-M point and forgetful map; it preserves their represented moduli class. | unramified field extension preserves exact torsion order 6 and degree-27 marking | Retain actual native map and stated hypotheses; source comparison required. |
| §5.8, API 5: Extending the unramified coefficient field transports the marked fine-level point, its reduction and the completed local-disk comparison. | base-changed identity disk still sends t to t and reduces 0 to 0 | Retain actual native map and stated hypotheses; source comparison required. |
| §5.9, API 1: The chosen modular point maps to Q and Q is not in [p]F(Φ). | λ(Q)=5u with u a unit has valuation 1; λ([5]Q)=25u has valuation 2 | Retain actual native map and stated hypotheses; source comparison required. |
| §5.9, API 2: The completed local map at the chosen residue points is an O-isomorphism, so it lifts every formal Q uniquely. | formal disk t↦t+t² has derivative 1; its inverse begins t−t², composition coefficient t=1 | Retain actual native map and stated hypotheses; source comparison required. |
| §5.9, API 3: In an adic-completion realization, Q is mapped to the elliptic point by the pinned formalPointHomAdicCompletion and lies in its stated range. | zero formal point maps to elliptic zero; a nonzero parameter of valuation 1 has x valuation −2 (multiplicative value>1) | Retain actual native map and stated hypotheses; source comparison required. |
| §5.9, API 4: The chosen point is supplied together with its modular preimage and formal O-module identification; transport of these markings preserves the image equality and primitivity. | marking change by a unit preserves valuation 1; [5] raises it to 2 and is excluded | Retain actual native map and stated hypotheses; source comparison required. |
| §6.1, API 1: z_s represents the actual quotient A/C_s with transported level structure. | s=0: C₀=0 and quotient A/C₀=A; transported prime-to-p marking has same order N | Retain actual native map and stated hypotheses; source comparison required. |
| §6.1, API 2: x_s is the image under the chosen scaled modular parametrization and x_0=Q. | x₀=f_E(z₀)=Q, with logarithm valuation 1 | Retain actual native map and stated hypotheses; source comparison required. |
| §6.1, API 3: For s≥1 the ring-class field degree is p^(s−1)(p+1); Ψ′_0=Φ is a separate base case. | at p=5 degrees for s=0,1,2 are 1,6,30; formula applies only to 6,30 | Retain actual native map and stated hypotheses; source comparison required. |
| §6.1, API 4: Each x_s reduces to the identity, using the Frobenius reduction of the marked chain. | each modular image reduces to 0; Frobenius sends 0 to 0 | Retain actual native map and stated hypotheses; source comparison required. |
| §6.1, API 5: The quotient isogeny A→A_s transports the prime-to-p cyclic marking isomorphically and commutes with the Galois action, so z_s and x_s have the asserted field of definition. | a degree-5 isogeny on a cyclic group of order 27 induces an isomorphism since gcd(5,27)=1 | Retain actual native map and stated hypotheses; source comparison required. |
| §6.1, API 6: Changing the Tate marking transports the lattice quotient and its cyclic-level point equivariantly; its field and formal-image comparisons use the transported markings. | unit marking change does not change stabilizer field degree 6 or 30 | Retain actual native map and stated hypotheses; source comparison required. |
| §6.2, API 1: y_s is fixed by Δ′ and belongs to F(Ψ_s). | p=5 Δ′ has six elements; permutation of their sum leaves the sum unchanged | Boundary values agree; negative cases excluded as stated. |
| §6.2, API 2: y=[p+1]Q is primitive because p+1 is a unit. | [6]Q has logarithm 6·5u and valuation 1; [5]Q has valuation 2 | Boundary values agree; negative cases excluded as stated. |
| §6.2, API 3: The trace has p+1 terms from x_(s+1), rather than p²−1 terms from x_s. | at s=0 sum is from six copies in the x₁ orbit, not 24 in x₀ | Boundary values agree; negative cases excluded as stated. |
| §6.2, API 4: The tame trace is the sum in the existing formal group, hence O-linear and Galois-equivariant. Inclusion into a larger field commutes with that sum. | trace of 2·0 is 0=2 trace(0); base scalar trace of a is 6a | Boundary values agree; negative cases excluded as stated. |
| §6.2, API 5: Formal traces commute with the specified O-action and with further traces; equality of systems is equality of all finite formal-point coordinates. | successive base scalar traces multiply 6·5a=30a, agreeing with total trace 30a | Boundary values agree; negative cases excluded as stated. |

| Convention or additional proof statement | Instances and computed values | Result and change |
|---|---|---|
| Prime, field and unramified coefficient hypotheses | O/pO has p² elements: 25 at p=5; characteristic-p ring instead has p=0, so π⁻¹ is undefined as an arithmetic inverse | Field, mixed characteristic and p≥5 stay in scope; zero rings and equal characteristic are outside it |
| p=2,3 boundaries | At p=2, (1±c)/2 is not an integral projector; at p=3 elliptic residual stabilizer 3 is wild | No extension to excluded primes inferred; generic suppliers retain their own stated generality |
| κ and arithmetic Artin direction | κ(Art(2))=1/2; inverse-twist action on that element is 2; product 1 | Same inverse convention used in unit and dual comparisons |
| Conjugation on the two directions | c(u)=u⁻¹ gives c(u)u=1; fixed plus v gives c(v)v⁻¹=1 | Directions not interchanged |
| Tate sign at two consecutive levels | [−p](−w₁)=w₀ and [−p]w₁=−w₀ | Alternating π/p transition required |
| Field degree and tame shift | p=5: full tame 24, primed tame 6; primed s=0,1,2 gives 1,6,30; fixed fields give 1,5 | No natural subtraction at s=0 or confusion of Δ with Δ′ |
| Coefficient trace and ramification | Unramified quadratic residue Tr(1)=2; for a ramified coefficient field the inverse different can strictly contain O | Use actual unramified trace dual; no arbitrary self-dual coefficient lattice |
| Quotient topologies and compactness | On compact Λ² a continuous bijective signed sum has one preimage per vector; the discrete module Φ/O instead satisfies pD=D and D/pD=0 despite D≠0 | Compact Hausdorff Nakayama hypotheses retained; no discrete counterexample admitted |
| Cyclic versus nonabelian norm formula | On trivial O with C₅, norm=5 and quotient O/5O has 25 elements; on a nontrivial character the eigen-sum is 0 | Cyclic cohomology formulas are used only for cyclic G_n, not S₃ or Q₈ |
| Generic scalar-action abelianness | In Q₈, i²j²=1 while (ij)²=−1; in S₃, (12)²(23)²=id while ((12)(23))² is a nonidentity 3-cycle | Ordinary squaring is not a homomorphism on these nonabelian groups; the scalar-module supplier is applied only to actual abelian principal-unit groups |
| Empty character intersections and level zero | At level zero there is one character, not an empty set; plus point kernel is 0 and minus point kernel full | No empty-intersection convention substitutes the wrong base condition |
| Explicit opposite point/unit sign Check | At p=5 an exact-order-5 character has c=2; λ_χ(A⁺)=0 while δ_χ(v₊)≠0 and δ_χ(V*,−)=0 | The same character discriminates the two different signed definitions |
| Tensor base change | W=O² gives output (a,b); scalar multiplication for W=O[ζ₅] kills nonzero ζ₅⊗1−1⊗ζ₅ | Finite basis descent only in literal tensor kernels |
| Formal logarithm coordinate and primitivity | λ(Q)=5u, λ([5]Q)=25u, λ([6]Q)=30u: valuations 1,2,1 | Formal multiplication distinguished from ordinary coordinate multiplication |
| All normalization denominators | p≥5 and π=−p are nonzero; p²−1 and p+1 have valuations 0; f(v_n) is a unit and λ′(v_n)≠0 | No totalized division by zero or nonunit averaging is used |
| Integral parity denominator | At p=5,n=2 rational orbit dimensions 1+4+20=25; clearing averaging requires at most 25 | Integral projector target kept separate from rational basis |
| Herbrand multiplicativity witness | n=3: p⁴·p⁻²=p²; n=5: p⁸·p⁻⁴=p⁴ | Residue degree two is essential; O replaced by ℤ_p would change the cardinalities |
| Continuous cocycle passage | Finite image in a torsion-free lattice has only trivial finite additive subgroup: cardinal 1 | Kills restriction to open stabilizer; no finite-lattice coefficient theorem misapplied to A⁻ |
| Plus and minus generator change | A Λ-unit and its inverse specialize to a product 1; at −1 the two values are −1 and −1 with product 1 | Specialization cannot vanish; augmentation is an O-unit |
| Small auxiliary discriminants | Reduced-form cardinalities at −7,−15,−31 are 1,2,3; the 13 Euler residues are 4,6,10,12,16,18,22,28,30,36,40,42,46 | Each equals p−1 for its listed p; h mod p is 1,2 or 3, never 0 |
| Fine-level rigidification and coarse counterexample | At p=5, M=6 and φ(M)=2; forgetting all markings at j=0 leaves an automorphism of residual order 3 | Fine universal family used before extracting the formal CM lift |
| Separability witness | t+t² has derivative 1 at 0, whereas t^p in characteristic p has derivative 0 | Good-prime integral Manin comparison necessary |
| Scalar Frobenius and group scheme descent | At p=5, [−5] acts by 2 on a point of order 7 but preserves its cyclic subgroup; on order 6 it acts by 1 | Subgroup rationality does not claim rationality of all prime-to-p torsion points |
| Nonreduced base change | Identity disk after O→O[ε]/ε² still has derivative 1; t↦pt has derivative p, nonunit at the residue fibre | Fine-model/base-change comparison includes the actual family; no inference from a coarse point alone |
| Identity map and trivial group | Identity trace and identity Kummer transition send 0 to 0 and every base logarithm a to a | Positive-level factors p and π not inserted into identity transitions |
| Rational complement negative model | det(e₁,e₁+5e₂)=5, quotient has 25 elements over O; actual signed basis determinant 1, quotient 0 | Rational splitting alone is insufficient |

## Elaborations, citations and dependency check

Suggested.lean was elaborated with lake env lean and its absolute file argument, from the content checkout, as requested. Exit status was 0. Exact count of sorry warnings: **0**. Errors: **0**. Any other message, verbatim: **none (empty output)**. It has one import Mathlib, one module docstring and the required namespace, no declarations and no set_option. No Lean processes remain running. The binder-check scratch elaboration also exited 0; its only output was the seven #check types reproduced above.

The README identifier scan found no missing Lean identifiers. The roadmap resolver reports PadicHodgeRegulators §1.4 missing from main/open-roadmap heads; that is a resolver limitation, not an unavailable input: the supplied board head 5eff35d contains §1.4 and was read, as recorded above. Its message “Lean names outside TauCetiRoadmap were not checked: no pinned Lake packages on this host.” describes the resolver’s search host; the native names were independently verified in the actual pinned sources and the Mathlib names elaborated in the worker’s content checkout. No missing identifier finding was suppressed on the basis of the resolver alone.

The final source check reports:

```text
packages/AnticyclotomicLocalUnits/sources.toml: 0 problem(s)
```

The final mechanical dependency command used gate --depcheck with packages/AnticyclotomicLocalUnits/README.md, name AnticyclotomicLocalUnits, merge-order/ORDER.txt and --movable. Its output is reproduced below after the final run. No merge-order or tooling file was edited.

```text
depcheck: 29 roadmaps, 260 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The final structural check found nine layers, 50 target subsections, sixteen definition/construction API blocks each with at least three discriminating Checks, nine exact supplier-gap sentence matches, no machine paths in deliverables, and no change outside the plan’s top-level gaps.
