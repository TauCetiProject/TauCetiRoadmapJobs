# Roadmap: automorphic congruences and reverse main-conjecture divisibilities

**Summary.** Eisenstein congruences produce integral Galois extension classes and lower bounds for Selmer groups. This roadmap builds the source-specific ordinary and semi-ordinary congruence arguments, their period and local-condition comparisons, and their transport to universal deformation families and cyclotomic towers. The endpoints are the Skinner–Urban divisibilities, the precisely localized Castella–Liu–Wan bounds, the Fouquet–Wan family and pointwise theorems, and the rational and conditional integral ordinary elliptic-curve main conjectures of Burungale–Castella–Skinner. Each retains its own residual, local, coefficient-ring and period hypotheses. The roadmap is this README; [Suggested.lean](Suggested.lean) gives representative signatures where the pinned libraries supply the carriers.

## Scope and ownership

This roadmap owns the SU, CLW, FW and Wan instances of Eisenstein data, integral boundary and Fourier-coefficient identities, congruence-to-Selmer bounds, and the compatibility maps assembling those endpoints. It does not construct a second general theory of modular forms, continuous cohomology, deformation rings, Selmer structures, determinant lines, or characteristic divisors.

| Neighbour | Imported interface and boundary |
| --- | --- |
| [PadicFamilies](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/PadicFamilies/README.md), L1, L4, L5 | Generic congruence modules and period lines, big ordinary GL₂ representations and Hilbert Hida theory, including the abelian and CM-character p-adic L-functions and Rankin/Katz comparisons of L5. This roadmap identifies the precise SU/Wan lattices and periods; the integral homology/cohomology and Hilbert pairing comparisons remain explicit obligations. PadicFamilies does not plan p-irregular families; FW's comparison at equal Satake parameters is a target of [L2.12](#ac-l2-fw-crystalline-main-conjecture) here. |
| [IntegralHeckeAndGaloisDeterminants](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/IntegralHeckeAndGaloisDeterminants), Layers 2, 4, 6 | Existing roadmap for integral Hecke images, determinants and the rank-two two-character Ribet/Fitting theorem. The polarized three-block shape 1+n+1 of SU, and Wan's 1+2+1 over a totally real field, is not a case of the rank-two theorem. This roadmap owns the polarized lattice theorem in that generality, for a CM quadratic extension of a totally real field and any middle rank n≥1: [L0.5](#ac-l0-su-lattice-datum)–[L0.7](#ac-l0-lattice-construction). |
| [ProfiniteCohomology](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/ProfiniteCohomology), Layer 7, and the current Tau Ceti library | Continuous Shapiro for discrete coefficients. Finite p-primary coefficients and their direct limits, or the discrete Iwasawa dual coefficient, are used through the requested Selmer adapter; the compact Tate lattice is not a discrete coefficient module. |
| [EllipticCurves](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/EllipticCurves), Layers 2 and 7, and Tau Ceti's quadratic-twist API | Existing torsion/Tate-module plan, discrete-coefficient Selmer kernels and point-group twist equivariance. The integral inverse-limit, ordinary-filtration and Selmer dictionaries are comparisons required here, not a second construction of elliptic geometry or a new generic Selmer kernel. |
| [PadicMeasuresIwasawaAlgebras](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/PadicMeasuresIwasawaAlgebras/README.md), L4–L5 | Normal-domain characteristic divisors, principal characteristic ideals over UFDs and graded determinants of perfect complexes. The divisorial-ideal realization over a nonfactorial normal domain, principal-majorant specialization and faithful coefficient descent below refine these existing interfaces. |
| [SelmerIwasawaCohomology](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/SelmerIwasawaCohomology/README.md), L2–L4 | Selmer structures, Pontryagin duals, ordinary and unramified local conditions, derived control and Poitou–Tate. L0 and L5b instantiate these with the exact source conventions and coefficient maps. |
| [PhiGammaModulesAndIwasawaCohomology](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/PhiGammaModulesAndIwasawaCohomology/README.md), Layers 4–5; [ArithmeticGaloisDuality](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/ArithmeticGaloisDuality/README.md), D7 | Relative Herr and ψ-complexes over affinoid coefficients, their perfectness, Euler characteristic, duality and derived coefficient change, and the analytic Iwasawa comparison (§§4.4–4.5, 5.4); derived continuous cochains, derived tensor products and derived duality (D7.1, D7.3–D7.5). FW's analytic Selmer-complex comparison over the quasi-Stein algebra Λ_K,∞ is built from these and is a target of [L2.12](#ac-l2-fw-crystalline-main-conjecture) here. |
| [AutomorphicPadicLFunctions](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/AutomorphicPadicLFunctions/README.md), L3h, L4, L4e, L5; [AutomorphicBundles](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/AutomorphicBundles/README.md) | Nonvanishing inputs, unitary PEL varieties, compactifications, bundles, Igusa towers, local doubling and the analytic Klingen carrier. L1, L2s, L2 and L5w own their source-specific control, coefficient divisibility and congruence arguments. |
| [MetaplecticAutomorphicForms](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/MetaplecticAutomorphicForms/README.md), MP.6; [AutomorphicLFunctionsAndLocalFactors](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/AutomorphicLFunctionsAndLocalFactors/README.md), AL.3 | Jacobi groups, the Schrödinger–Weil representation, Fourier–Jacobi extraction and the Rallis inner product formula (MP §§6.13, 6.17–6.19); local factors and local zeta integrals (AL). Neither plans Ikeda's theorem on Fourier–Jacobi coefficients of Siegel Eisenstein series on unitary groups or Ichino's triple-product formula. Their source-qualified statements, in the generality used, are targets here: Ichino's formula in [L2s.4](#ac-l2s-fourier-jacobi-primitivity), Ikeda's theorem in [L2.4](#ac-l2-fw-fourier-jacobi-unit). |
| [AutomorphicGaloisRepresentationsPartII](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/AutomorphicGaloisRepresentationsPartII/README.md), AG2.2, AG2.5, AG2.6 | Unitary Galois representations and local–global compatibility. The precise imaginary-quadratic descent and ordinary filtration required by SU are recorded adapters. |
| [OrdinaryAutomorphicFormsAndModularityLifting](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/OrdinaryAutomorphicFormsAndModularityLifting/README.md), R21.4; [GlobalGaloisDeformations](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/GlobalGaloisDeformations/README.md), R04.6 | The exact Fujiwara minimal totally real R=T, freeness and minimal-lift contracts. L5w applies them and verifies local types; it does not replan general modularity lifting. |
| [CompletedCohomologyAndLocalGlobalCompatibility](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/CompletedCohomologyAndLocalGlobalCompatibility/README.md), R31.4; [PadicLocalLanglandsForGL2Qp](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/PadicLocalLanglandsForGL2Qp/README.md), R30.5–R30.6; [SmoothRepresentationsOfLocalGroups](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/SmoothRepresentationsOfLocalGroups/README.md), SR.5 | Completed (co)homology, local–global factorization, p-adic local Langlands and co-Whittaker families. L3 owns their zeta-morphism application, with the BM/smooth-dual, essential-vector and p=3 refinements retained. |
| [PadicHodgeRegulators](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/PadicHodgeRegulators/README.md), L3–L4 | Coleman maps, Wach-module bases and noncritical refinements. Its package plans no Yager module; the Yager module of the unramified ℤ_p-extension, its normal-basis description and the unramified-by-cyclotomic exponential are targets of [L2.11](#ac-l2-unramified-exponential-boundedness) here, which also proves the short-crystalline denominator bound. |
| [KatoEulerSystems](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/KatoEulerSystems/README.md), Layers 0–7 | Kato classes, reciprocity, nonvanishing and the opposite (cyclotomic) divisibility, rationally and integrally under its SL₂(ℤ_p) image hypothesis. Two refinements are targets here rather than requests: the integral cyclotomic bound under the weaker image condition (im) used by BCS ([L5b.7](#ac-l5b-four-twist-kato-bound)), and the two-variable Perrin-Riou/Greenberg equivalence over K ([L5a.1](#ac-l5a-ordinary-two-variable-equivalence)), which is proved from the Beilinson–Flach classes and reciprocity laws of Layer L2. |
| [ModularSymbolsPadicLFunctions](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/ModularSymbolsPadicLFunctions/README.md), L1–L2 | MSD functions, Néron periods, ordinary interpolation and uniqueness; L5b proves the four-twist cyclotomic comparison with the required units. |
| [ModularIwasawaMainConjectures](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/ModularIwasawaMainConjectures/README.md), L0–L4 | Scalar ordinary main conjectures, canonical-period and curve-to-form transport, and final assembly. It imports L1/L2/L4/L5b endpoints directly. L5 here is only an aggregate. |
| [HeegnerPointEulerSystems](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/HeegnerPointEulerSystems/README.md), HE.8b; [RankZeroOneBSD](https://github.com/CBirkbeck/tauceti-explorer/tree/main/content/campaign/RankZeroOneBSD/README.md), BSD.6a–BSD.7a | The former consumes the early L5a input; its anticyclotomic endpoint is not a prerequisite of L5b. The latter owns its BSD and supersingular applications and imports the shared Beilinson–Flach and CLW contracts. |

A main conjecture for arbitrary unitary representations, a general CM-field main conjecture and a stronger theorem over the full possibly nonfactorial deformation ring are outside these endpoints. The polarized SU construction retained below has three residual blocks of dimensions 1+n+1; this differs from the existing two-character rank-two Ribet theorem.

**Prerequisite order.** Every supplier cited in this README is of one of three kinds. (a) Mathlib and Tau Ceti at the pins, and the TauCetiRoadmap roadmaps EllipticCurves, NumberFieldArithmetic, ProfiniteCohomology, IntegralHeckeAndGaloisDeterminants, SmoothRepresentationsOfLocalGroups and PadicMeasuresIwasawaAlgebras. (b) Roadmaps that are open TauCetiRoadmap pull requests: PadicFamilies (#1019), SelmerIwasawaCohomology (#869), ArithmeticGaloisDuality (#858), PhiGammaModulesAndIwasawaCohomology (#1310), AutomorphicLFunctionsAndLocalFactors (#924), DirichletPadicLFunctions (#1039), MetaplecticAutomorphicForms (#1063), AutomorphicBundles (#1069), AutomorphicSpectralTheory (#925), AutomorphicGaloisRepresentationsPartII (#1006), CompletedCohomologyAndLocalGlobalCompatibility (#1270), PadicLocalLanglandsForGL2Qp (#1312), GL2ModularityLifting (#1071), OrdinaryAutomorphicFormsAndModularityLifting (#1066), GlobalGaloisDeformations (#920), LocalGaloisDeformationRings (#923), DeformationAndDerivedPatchingAlgebra (#1034), SerreWeightAndLevelOptimisation (#1013), IntegralIwasawaTheory (#1306), EulerSystemsAndKolyvaginSystems (#1272) and ModularSymbolsPadicLFunctions (#968). (c) Three atlas roadmaps that are not yet upstream and must precede this one: AutomorphicPadicLFunctions (L3h, L4, L4e, L5), KatoEulerSystems (Layers 0–7) and PadicHodgeRegulators (L3–L4). None of the three cites this roadmap or ModularIwasawaMainConjectures, so the order "AutomorphicPadicLFunctions, KatoEulerSystems and PadicHodgeRegulators, then this roadmap, then (or bundled with it) ModularIwasawaMainConjectures" has no cycle. ModularIwasawaMainConjectures is not a supplier: it imports L1, L2, L4 and L5b and is named here only as their consumer, so it follows this roadmap or travels with it as a bundle. HeegnerPointEulerSystems and RankZeroOneBSD likewise only consume endpoints. Every notion that no supplier of kinds (a)–(c) plans is a target below.

The current Tau Ceti library also supplies `TauCeti.fittingIdeal`, completed group algebras of profinite groups, compact-module infrastructure, tame and wild inertia, quadratic composita and quadratic-twist point equivariance. These are imported algebraic and local carriers. Their existence does not identify an integral Tate lattice with a discrete cohomological coefficient, establish an ordinary Selmer control theorem, or compare the analytic period lattices. LocalGaloisGroups and ProfiniteArithmetic retain ownership of local Galois groups and their profinite structure; IntegralLattices retains integral quadratic-lattice theory.

## Conventions

- **Fields and towers.** K is imaginary quadratic in the SU/CLW/FW and BCS descent arguments. In the Hilbert engine F is totally real and M/F is CM quadratic; in the quartic application F is real quadratic and M=FK. The suffix g^F or E^F means quadratic twist over Q, while g_F means base change to F. Γ_K has cyclotomic and anticyclotomic directions Γ_K⁺ and Γ_K⁻. Coefficient rings and completed tensor products are specified at each target.
- **Selmer conditions.** Σ relaxes conditions only at places away from p. At every v|p the chosen Greenberg condition remains in force, even if v∈Σ. In the inertia-kernel convention T_v=0 means unramified at p; it is not the strict zero local condition. Primitive, inertia-kernel and locally-trivial conditions are compared by explicit maps before being identified. Compact integral Tate lattices, discrete p-divisible representations and their Iwasawa dual coefficients are distinct carriers.
- **Characteristic divisors.** For a finite torsion module over a noetherian normal domain, Ch or char denotes the divisorial ideal determined by its height-one lengths. Such an ideal need not be principal on a normal Hida branch. Principal characteristic generators are used only with the required UFD hypothesis. Some source theorems extend the characteristic ideal to zero for non-torsion modules; that convention gives no torsion proof. Control specializes a principal analytic majorant with nonzero specialization, not an arbitrary nonprincipal characteristic ideal.
- **Containment direction.** Ch(X)⊆(L) is the reverse divisibility: L divides a characteristic generator when a generator exists. Kato supplies the opposite containment (L)⊆Ch(X). All products, cancellations and scalar descent take place in the coefficient ring stated, with nonzero/torsion hypotheses retained.
- **Forms and ideals.** ℰ_D denotes an Eisenstein family, I_D the ideal of Hecke-operator differences in the cuspidal algebra, and 𝔈_D=ker(Λ_D→h_D/I_D) its coefficient-ring ideal. Context-dependent E_D notation in the sources is separated here into the family ℰ_D and the coefficient ideal 𝔈_D. A nonvanishing hypothesis modulo a prime concerns ℰ_D. Full and cuspidal Hecke algebras are distinguished; a full Eisenstein eigencharacter need not lift the cuspidal quotient character to Λ_D.
- **Frobenius and twists.** Each source retains its own reciprocity convention. SU Lemma 3.2.17 uses det(1−X·frob_ℓ⁻¹ | (T⊗Frac A)^{I_ℓ}) and substitutes ℓ⁻¹ε(frob_ℓ). Nakamura's newform Euler polynomial is 1−a_ℓX+ℓ^{k−1}ε(ℓ)X². Passing to Mathlib's det(T·I−M), a dual representation or a Tate twist requires the explicit reciprocal-polynomial/representation dictionary.
- **Periods.** SU uses its cohomological canonical periods Ω_f⁺Ω_f⁻, with the stabilization and archimedean factors of Lemma 12.2.2. Wan's Hilbert canonical period uses Definition 79. MSD functions for curves use the specified Néron periods and Manin-constant comparison. A p-adic unit comparison preserves ideals; a rational scalar comparison preserves them only after p-inversion. No canonical/Gross-period identity is assumed.
- **Localizations and nonvanishing.** Inverting p differs from localizing the entire cyclotomic coefficient subring. CLW's addendum supplies two rational Klingen families whose Fourier–Jacobi values jointly avoid every height-one prime away from p. One chooses a family locally at each prime; no single-family unit coefficient is inferred. The auxiliary ℓ-power nonvanishing repair is separate from the p-power μ=0 input. Its general-weight FW form is the two-family theorem of L2.4, whose only weight-dependent ingredient is the archimedean constant 1/(k−1).
- **Quadratic splitting.** At an odd unramified prime use the Jacobi criterion for a fundamental discriminant D. At 2 with D odd, splitting means D≡1 mod 8 and inertia means D≡5 mod 8. The auxiliary-field conditions include this case when 2 divides a level.
- **Universal families.** FW's regular subring Λ=O[[X₁,X₂,X₃]] and the finite free deformation/Hecke algebra T have different roles. Restriction of scalars uses a determinant norm. For a primal line trivialization t and its dual t∨, t∨(Δ⁻¹)=αΛ corresponds to t(Δ)=α⁻¹Λ. The full fundamental line has local corrections at Σ∖{p}, and its base change requires Iwasawa suitability.


For characteristic divisors over a normal domain, multiplication of characteristic ideals means the divisorial hull of their ordinary ideal product. Height-one valuations are additive. In a UFD or for principal factors this agrees with the ordinary ideal product. The ideal containments against a principal analytic ideal therefore have their usual literal meaning. Arithmetic applications use mixed-characteristic coefficient integer rings O finite over Z_p, with uniformizer ϖ; no argument replaces ϖ by p when O is ramified.

## Exact supplier contracts

The following interfaces specify the imported mathematics. A refinement named here is required with the stated hypotheses before any endpoint using it is proved. An existing theorem with weaker hypotheses or a different coefficient normalization does not supply the refinement.

### From Mathlib and Tau Ceti

The signatures use Mathlib `082e2d37e8b0463410cdb532e111cd43d5a66174` and Tau Ceti `f790474821cf4256814db967cb154e7af3d0c369`. Mathlib supplies `Module.length`, `LocalizedModule`, `Ideal.span`, `Ideal.map`, `Ideal.comap`, `RingHom.ker`, `Matrix.charpoly`, `MvPowerSeries`, `IsDiscreteValuationRing`, `IsLocalRing`, `IsReduced`, `IsRegularLocalRing` and `UniqueFactorizationMonoid`. Ideal extension preserves products and generated ideals; contraction is a preimage, and arbitrary kernel specialization does not follow from either fact. `Matrix.charpoly` uses det(TI−M), so it must be converted to the reciprocal polynomial used by SU.

The Eisenstein quotient presentation uses `RingHom.quotientKerEquivOfSurjective` from `Mathlib.RingTheory.Ideal.Quotient.Operations`, applied to f=(Λ→𝕋→𝕋/I_E). The kernel is the contraction E_E by `RingHom.comap_ker` and `Ideal.mk_ker`. Its `quotientKerEquivOfSurjective_apply_mk` gives the compatibility e([r])=[ι(r)], hence the required Λ-algebra compatibility. These statements already apply to arbitrary commutative coefficient and Hecke rings; no local, finite or domain hypothesis is needed. Surjectivity onto the quotient is essential: constants Z→Z[X] with all operator differences zero leave X outside the image.

Tau Ceti supplies `TauCeti.ContCohomology.H1`, the additive quotient of continuous cocycles by coboundaries; `WeierstrassCurve.quadraticTwistPointEquiv_map_eq_quadraticCharacter_smul_map`; `NumberField.ncard_primesOver_multiquadratic_iff` for odd primes avoiding the radicands; and `TauCeti.Multiquadratic.isGalois` when 2≠0 in the base field. Point equivariance must still be restricted to p-power torsion, passed through compatible inverse limits and matched to the ordinary filtration. The splitting criterion verifies selected fields; it does not select them.

### From PadicMeasuresIwasawaAlgebras L5

Supply the Knudsen–Mumford graded determinant line of perfect complexes, its distinguished-triangle identifications, derived base change and acyclic trivialization. For [A→(1−α)A] in degrees 0,1 the standard determinant basis maps to 1−α over the fraction field when that scalar is nonzero. The inverse determinant gives the reciprocal lattice. This exact graded-determinant interface is required in addition to characteristic ideals.

Used in [L3.4](#ac-l3-fundamental-line).

### From AutomorphicLFunctionsAndLocalFactors AL.3

Import Whittaker models, local Rankin–Selberg factors and the adjoint and triple-product local L-factors at the finite places. AutomorphicLFunctionsAndLocalFactors does not plan Ichino's triple product formula, so its statement in the generality used is the target `ichinoTripleProduct` of [L2s.4](#ac-l2s-fourier-jacobi-primitivity): for a definite quaternion algebra D over ℚ (equivalently the definite unitary group U(2) used by CLW and FW) and three cuspidal representations of GL₂ over ℚ with trivial product of central characters and Jacquet–Langlands transfers to D^×, the product of the two global trilinear periods divided by the three Petersson pairings equals C/8·ζ(2)²·L^Σ(1/2, Π, r)/L^Σ(1, Π, Ad) times the product over v ∈ Σ of the normalized local integrals I_v, where I_v carries the factor ζ_v(2)^{−2}L_v(1, Π_v, Ad)/L_v(1/2, Π_v, r) and C is the Tamagawa constant of D^×. The variant with translated pairings ⟨φ_i, π(g′_i)φ̃_i⟩ is the form used when the untranslated pairings vanish. The local integrals at split, nonsplit and supercuspidal places are those of CLW Props 7.9.1–7.12.1 and FW Prop. 7.27/Cor. 7.28; the archimedean integral in the vector-valued case is FW's constant 1/(k−1), p. 95.

The statement is taken from [Wan-2020](https://arxiv.org/pdf/1408.4044v5), §8.4, pp. 79–80, which restates Ichino 2008, Duke Math. J. 145, 281–307, together with the translated variant. Ichino's original was not reachable for this package (the publisher route served a challenge page); its theorem number and the comparison of its measure normalization with Wan's restatement are left to a sources follow-up, which does not change the statement used.

Used in [L2s.4](#ac-l2s-fourier-jacobi-primitivity), [L2.4](#ac-l2-fw-fourier-jacobi-unit).

### From DirichletPadicLFunctions L4

The Kubota–Leopoldt p-adic L-function of a Dirichlet character as an element of A[[Γ_ℚ]] with Σ-imprimitive Euler factors, and its image under γ ↦ (1+W)^{-1}γ²_+ in 𝕀[[Γ_K]] (SU's L^Σ_{χ̄_fξ̄′}, CLW's L_{ξ,ℚ} of (6.1.1)).

Used in [L1.3](#ac-l1-eisenstein-datum).

### From SerreWeightAndLevelOptimisation R20.6

Existence of a classical eigenform of the Serre weight and minimal level whose residual representation is a given odd absolutely irreducible ρ̄ (Khare–Wintenberger with weight optimisation), in the form FW Lemma 2.2, Lemma 2.8 and the proof of Prop. 2.4 use, including the crystalline-short and ordinary cases up to twist.

Used in [L3.3](#ac-l3-smooth-classical-points).

### From KatoEulerSystems Layers 4–7

Import Kato's Euler system, its explicit reciprocity law, the rational zeta morphisms of §§5.1 and 5.4, the one-variable structure of §§4.3–4.4 and the cyclotomic upper bounds of §§7.2–7.5, rationally and integrally under Kato's own hypothesis (12.5.2), that the image of Gal(ℚ̄/ℚ(μ_{p^∞})) contains SL₂(ℤ_p) in some basis (Kato, Theorem 12.5(4), pp. 221–222). The two-variable Perrin-Riou/Greenberg equivalence over K is not a Kato statement: it is the target of [L5a.1](#ac-l5a-ordinary-two-variable-equivalence), proved from the Beilinson–Flach classes of [L2.7](#ac-l2-klz-beilinson-flach-classes) and the reciprocity laws of [L2.8](#ac-l2-bf-explicit-reciprocity), specialized to a fixed weight-two newform.

Used in [L5a.1](#ac-l5a-ordinary-two-variable-equivalence).

Import the ordinary-selmer-divisibility and elliptic-ordinary-and-multiplicative-divisibility statements, with the MSD/Néron periods and primitive ordinary Selmer group, rationally. The integral form under the weaker condition (im) of BCS, that some σ ∈ G_{ℚ(μ_{p^∞})} has T/(σ−1)T ≅ ℤ_p, is the target `katoIntegralBound_im` of [L5b.7](#ac-l5b-four-twist-kato-bound): it applies Rubin's divisibility char(X_∞) | ind_Λ(c) under Hyp(ℚ_∞, T) (EulerSystemsAndKolyvaginSystems Layers 8.2 and 8.37, Rubin Theorem II.3.3) to Kato's Euler system. The SL₂(ℤ_p) criterion (12.5.2) and its error p^t are not silently identified with (im). Export the separately proved CM rational elliptic-unit case for the elliptic endpoint; do not apply the non-CM theorem there. Use its `analytic-twist-nonvanishing` theorem before cancellation.

Used in [L5b.3](#ac-l5b-cyclotomic-control), [L5b.6](#ac-l5b-rank-one-image-twist), [L5b.7](#ac-l5b-four-twist-kato-bound).

### From [ProfiniteCohomology](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/ProfiniteCohomology) Layer 7

Import (existing Tau Ceti layer): Shapiro's lemma for coinduced discrete modules, used to restrict the quartic-CM Selmer group to K and split it by the characters of Gal(M/K); the compact-coefficient comparison is SelmerIwasawaCohomology:L3's.

Used in [L5a.2](#ac-l5a-quartic-cm-selmer-restriction).

Use the existing continuous Shapiro theorem for discrete coefficients: the finite-level p-primary modules followed by their filtered direct limit, or the discrete Iwasawa coefficient T⊗Λ∨ with reciprocal action. It does not apply directly to the compact nondiscrete Tate lattice. The Selmer L2/L3 requests supply the integral-lattice/discrete-coefficient comparison, continuity, Pontryagin duality and compatible global/local maps; no upstream Shapiro theory is replanned.

Used in [L5b.2](#ac-l5b-quadratic-selmer-decomposition).

### From AutomorphicPadicLFunctions L4

Instantiate the unitary PEL data at signature (2,2) and (3,1) in Skinner–Urban's and Castella–Liu–Wan's normalizations: ordinary and semi-ordinary Igusa towers, q-expansion and Fourier–Jacobi expansions, Siegel-operator boundary sequences and the ordinary Hecke algebras; and supply Wan 2015's GU(2,2) p-adic L-function over a totally real field with the base-change interpolation comparison used in BCS Lemma 5.1.2 (Wan's Prop. 84).

Used in [L1.1](#ac-l1-gu22-ordinary-hermitian-forms), [L5a.3](#ac-l5a-quartic-cm-l-function-factorization).

Provide Wan 2015 §§4–7 local sections, pullback/doubling, GU(2,2)/F ordinary module and q-expansion/Siegel-operator interface, Theorems 82/88 with all cusp and degenerate coefficients, correct ψ, ξ, α_p and period normalization. The abelian Katz object alone is not the Hilbert Rankin function. Analytic carrier/existence is owned here; L5w proves the source-specific congruence and arithmetic compatibility.

Used in [L5w.4](#ac-l5w-klingen-interpolation).

### From PadicFamilies L5: abelian and CM-character functions

Hida's GL₂ × GL₂ Rankin–Selberg p-adic L-function of a CM Hida family against a fixed form or Hida family, with its comparison to Katz's p-adic L-function on the line interpolating values at 1 (Wan20 §7E, CLW proof of Thm 8.2.1(2), FW Cor. 7.21). The required comparison is part of the abelian/CM-character refinement of PadicFamilies L5. PadicFamilies:L1/branch-l-functions is the cyclotomic family L-function of one form and does not cover it.

Used in [L2s.8](#ac-l2s-clw-integrality-and-p-inverted), [L2.3](#ac-l2-greenberg-function-factorization).

Supply the Hida Rankin–Selberg function for f against the ordinary CM theta family g, including its fractional congruence-ideal target, both orderings, critical twist and Katz/class-number normalization. PadicFamilies:L4/two-variable-l-function varies one form and a cyclotomic character and does not furnish this CM Rankin function.

Used in [L2.3](#ac-l2-greenberg-function-factorization), [L2.8](#ac-l2-bf-explicit-reciprocity).

Provide the abelian CM-character p-adic L-function and canonical congruence-period unit comparison used in Wan 88 and 96; the argument needs the specified character infinity type, conductors and Euler units, not just existence of a Katz measure.

Used in [L5w.5](#ac-l5w-fourier-coefficient-coprimality).

### From AutomorphicPadicLFunctions L3h

Export Hsieh's Theorems A, B and C to AutomorphicCongruences:L2s and L2 as well as L5a: µ = 0 of the anticyclotomic Rankin–Selberg function under the Steinberg-twist hypotheses of FW Thm 7.32 and CLW Thm 8.2.1(2), Hsieh 2012's nonvanishing for the auxiliary characters of CLW §5.6, and the Vatsal 2003 congruence-constant formula with the unit comparison giving µ = 0 under SU Prop. 12.3.6's hypotheses (specified in L1.5). For auxiliary ℓ-power twists use only the infinitely-many nonvanishing statements of CLW addendum Thms 1.0.1–1.0.2 and §3, together with its finite-exception avoidance. Do not use the superseded cofinite assertion to choose three simultaneous units. This correction does not weaken the p-tower µ=0 Theorem B.

Used in [L1.5](#ac-l1-su-padic-l-function), [L2.5](#ac-l2-exceptional-height-one-primes), [L2s.3](#ac-l2s-semi-ordinary-klingen-family), [L2s.8](#ac-l2s-clw-integrality-and-p-inverted).

Supply the corrected auxiliary ℓ-tower nonvanishing and finite-set avoidance needed by CLW addendum §3 (including its cited Hung input). The old almost-all assertion cannot be used for simultaneous three-unit selection. Prove the exact two-data-set choice, while keeping Hsieh’s p-tower µ=0 theorem separate.

Used in [L2s.3](#ac-l2s-semi-ordinary-klingen-family), [L2s.4](#ac-l2s-fourier-jacobi-primitivity), [L2.4](#ac-l2-fw-fourier-jacobi-unit), [L2.14](#ac-l2-wan-rankin-selberg-divisibility).

Supply Hung’s theorem used in Wan 86 and the exact quaternionic/canonical-period comparison domain, primitive NV1/NV2 for p≥5 including the empty n− degree-two case. Supply the CM auxiliary-character unit value and Fourier–Jacobi pairing inputs of Wan 96; retain nonsplit imprimitive Euler μ terms.

Used in [L5w.3](#ac-l5w-quaternionic-period-primitivity), [L5w.5](#ac-l5w-fourier-coefficient-coprimality).

### From PadicHodgeRegulators L3–L4

Import the Bloch–Kato exponential and its integral comparisons, Coleman maps, Wach-module bases and the noncritical refinement (PadicHodgeRegulators L3–L4). That package plans no Yager module, so the Yager module of the unramified ℤ_p-extension, its normal integral basis, its completed tensor with the cyclotomic tower and the unramified-by-cyclotomic exponential of FW §4.2.2 are targets of [L2.11](#ac-l2-unramified-exponential-boundedness) here, together with the short-crystalline denominator bound and the scaled saturated line.

Used in [L2.11](#ac-l2-unramified-exponential-boundedness), [L2.12](#ac-l2-fw-crystalline-main-conjecture).

### From MetaplecticAutomorphicForms MP.6

Import the Jacobi group, the Schrödinger–Weil representation, Fourier–Jacobi extraction and the Rallis inner product formula (MetaplecticAutomorphicForms §§6.13, 6.17–6.19). MetaplecticAutomorphicForms does not plan Ikeda's theorem on Fourier–Jacobi coefficients of Siegel Eisenstein series on unitary groups; its statement in the form used is the target `ikeda_fourierJacobi_denseImage` of [L2.4](#ac-l2-fw-fourier-jacobi-unit). It concerns the Jacobi-representation comparison and the lower-rank Siegel integral used by FW §7.4.2, pp.92–93, with β≠0, a fixed additive character ψ_β and Weil splitting character λ, in Ikeda's §2, case 2, m=1, n=2. FW invokes Ikeda Proposition 1.3 for a map from the Weil representation tensored with the lower-rank representation having dense image, and Theorem 3.2 for its realization by Siegel Eisenstein series on U(2,2). Density alone is not an algebraic finite-sum assertion. FW's additional nearly holomorphic, lowest-weight and finite-length hypotheses imply that only finitely many pairs of K-types contribute to the chosen K-type; this gives surjectivity on K-finite vectors and the finite sum in FW Lemma 7.26. Preserve this extra argument, the theta pairing referred to Ikeda p.620, the integral comparison referred to p.628, and the finite-place sections in FW (7.4.3). MetaplecticAutomorphicForms owns the Jacobi group of a symplectic space and Fourier–Jacobi extraction; the unitary Jacobi group N′U(2,2) is its restriction along the hermitian-to-symplectic embedding, and L2.4 owns the weight-specific application.

The Ikeda locators above are those given by FW. Ikeda's original (J. Math. Kyoto Univ. 34 (1994), 615–636) was not reachable for this package; the first page of the article, as indexed from the publisher's copy, states that a Fourier–Jacobi coefficient of a nonholomorphic Eisenstein series is not a finite sum of products of theta functions and Eisenstein series but is approximated by such sums, which is the dense-image statement used. The finite sum for the nearly holomorphic K-finite vectors is FW's own lowest-weight argument, so finite algebraic surjectivity for arbitrary smooth vectors is never attributed to Ikeda. Checking Ikeda's numbered statements against FW's citation is a sources follow-up.

Used in [L2s.4](#ac-l2s-fourier-jacobi-primitivity), [L2.4](#ac-l2-fw-fourier-jacobi-unit).

### From AutomorphicGaloisRepresentationsPartII AG2.2

Galois representations of cohomological cuspidal representations of GU(2,2) and U(3,1) over an imaginary quadratic K in SU Thm 7.1.1's form: polarized, unramified outside S with the Hecke-polynomial characteristic polynomial of Frobenius, crystalline at the primes above p when π_p is unramified, and with the ordinary (resp. semi-ordinary) filtration at p for p-ordinary π. The present AG2 existence statement has [F⁺:Q]≥2; an explicit base-change/descent adapter to imaginary quadratic K is required. Discrete assembly may be used only after its cuspidal constituent representations are attached, and must not itself be treated as CAP exclusion.

Used in [L1.8](#ac-l1-gu22-galois-pseudocharacter), [L2s.6](#ac-l2s-cap-exclusion).

### From CompletedCohomologyAndLocalGlobalCompatibility R31.4

Emerton's local–global compatibility for completed cohomology localized at a non-Eisenstein ρ̄, in the form of Nakamura Thm 2.2 and FW Thm 6.10 (with co-Whittaker π_ℓ at ℓ ∈ Σ_0), and its dual for completed Borel–Moore homology (Nakamura Cor. 2.5), with p ≥ 5 removed by Paškūnas's 2016 generalization.

Used in [L3.5](#ac-l3-completed-homology-factorization).

### From PadicLocalLanglandsForGL2Qp R30.5

Paškūnas's identification of the projective envelope P̃ with the dual of the universal deformation of π̄ and the removal of P̃ from Hom, under Nakamura's conditions (N1), (N3), (N4), as used in Nakamura §4.1; and Paškūnas's freeness result (Nakamura Thm 4.7) for M^⋄(k, τ) at potentially semistable points (R30.6). R30.5's targets assume p ≥ 5; FW extend Nakamura's theorem to p = 3 through Paškūnas's 2016 generalization (Props 2.13 and 2.33, pp. 1312 and 1327–1328, cited in FW's remark after Thm 3.6, p. 24). The p = 3 case of the projective-envelope and freeness statements is the target `paskunas2016_projectiveEnvelope` of [L3.5](#ac-l3-completed-homology-factorization) here, used in L3.7–L3.8: Paškūnas 2016, Propositions 2.13 and 2.33, in the form FW's remark uses them to replace p ≥ 5 by p ≥ 3 in Nakamura §4.1 and Thm 4.7, with the residual conditions retained.

Used in [L3.7](#ac-l3-nakamura-universal-zeta-morphism), [L3.8](#ac-l3-nakamura-specialization-theorem).

### From SmoothRepresentationsOfLocalGroups SR.5

For uniqueness use FW Proposition 6.7 over a reduced complete noetherian local p-torsion-free W(F)-algebra, with a torsion-free co-Whittaker module and the prescribed generic local Langlands fibers at every minimal prime. For the explicit GL₂ models and specialization use the domain and coefficient-map setting of FW §6.2, Proposition 6.8, with unchanged monodromy filtration (the minimal-lift condition). Its principal-series, special and supercuspidal models give the unconditional comparison needed here. In Proposition 6.9 set m equal to the common conductor exponent of ρ and ρ_λ. Only at this essential level K₁(ϖ^m) are the invariant lines asserted free of rank one with the displayed base-change isomorphism. Co-Whittaker top-derivative rank one alone supplies neither this invariant-line statement nor a comparison through conductor jumps. The conditional general local Langlands-family interface of SR.5 must be refined to these unconditional GL₂ cases.

Used in [L3.5](#ac-l3-completed-homology-factorization), [L3.7](#ac-l3-nakamura-universal-zeta-morphism).

### From GL2ModularityLifting R32.4

Pan's modularity theorem in the form cited by FW [95, Thm 1.0.4]: an odd ρ: G_ℚ → GL₂(O), unramified outside finitely many primes, with ρ̄|_{G_{ℚ_p}} absolutely irreducible and de Rham with distinct Hodge–Tate weights, is modular; and Kisin's crystalline lifting theorem in CLW's non-ordinary CAP-exclusion step.

Used in [L2s.6](#ac-l2s-cap-exclusion).

### From IntegralHeckeAndGaloisDeterminants IHG.6

Import the existing upstream generic GMA/reducibility tools. Its rank-two Ribet statements do not supply the polarized 1+n+1 theorem, which is [L0.7](#ac-l0-lattice-construction) here, stated for every middle rank n≥1 over a CM quadratic extension of a totally real field. The n=0 case does not satisfy the middle-constituent datum.

Used in [L0.7](#ac-l0-lattice-construction).

The current upstream layer supplies the rank-two two-character integral Ribet/Fitting theorem (including the residual-coincidence refinement). Wan Proposition 98, §§9.2.1–9.2.2, pp.84–88, additionally needs a polarized rank-four χ′⊕ρ⊕χ lattice/extension and length theorem with all ten hypotheses, local plus/minus disjointness and the scalar-character Selmer term. That theorem is the case n=2 over (F, M) of [L0.7](#ac-l0-lattice-construction), owned here. The written rank-two theorem and determinants are not its proof, and the existing rank-two theorem is not replanned.

Used in [L5w.8](#ac-l5w-galois-selmer-instance).

### From PadicMeasuresIwasawaAlgebras L4

For finite presented torsion modules over general noetherian normal domains, supply the divisorial fractional ideal associated to charDivisor, its equality with the divisorial hull of Fitt_0, exact-sequence multiplicativity and principal-majorant specialization. The principal `charIdeal` interface assumes a UFD; SU’s normal Hida branches need the divisor interface.

Used in [L0.1](#ac-l0-sigma-primitive-selmer), [L0.3](#ac-l0-selmer-specialization-control).

Extend the written principal/UFD characteristic-ideal and multiplicativity targets to finite torsion modules over the normal noetherian/Krull Hida coefficient ring: divisorial characteristic ideals by height-one lengths, multiplicativity, detection of inclusion in a principal ideal, and transport of lengths under the specified localized completed coefficient extension. Supply SU Corollary 3.2.9’s specialization of a principal analytic majorant with nonzero specialization and its precise Fitting/Tor conditions. For finite coefficient integer-ring extensions O→O′, prove faithful flat characteristic base change for O[[Γ]]→O′[[Γ]] (and p-inversions) and contraction of extended ideals, together with the analytic unit comparison. The restriction-of-scalars norm interface is distinct from extension/contraction or arbitrary kernel specialization.

Used in [L5w.7](#ac-l5w-height-one-congruence), [L5w.8](#ac-l5w-galois-selmer-instance), [L5w.9](#ac-l5w-exceptional-height-one-primes), [L5w.10](#ac-l5w-wan-family-divisibility), [L5w.11](#ac-l5w-arithmetic-specialization), [L5w.12](#ac-l5w-quartic-cm-divisibility), [L5b.2](#ac-l5b-quadratic-selmer-decomposition), [L5b.3](#ac-l5b-cyclotomic-control), [L5b.4](#ac-l5b-cyclotomic-analytic-factorization), [L5b.5](#ac-l5b-four-factor-product-bound), [L5b.8](#ac-l5b-factor-separation), [L5b.9](#ac-l5b-rational-cyclotomic-endpoint), [L5b.10](#ac-l5b-integral-cyclotomic-endpoint).

### From OrdinaryAutomorphicFormsAndModularityLifting R21.4

Supply Fujiwara v2 Definition 6.11, Theorems 11.1/11.2 and Corollary 11.5 for the actual nearly ordinary minimal totally real problem: determinant/twist type, local flat restrictions, Hypotheses 6.7 and applicable 5.9, p=5 exception, free quaternionic/Hilbert module, finite flat Hida lift and Gorenstein duality. Existing nice-prime Skinner–Wiles targets are insufficient for this exact contract. Also supply the ordinary lifting/CAP alternative of Wan 9.2 condition (10).

Used in [L5w.1](#ac-l5w-fujiwara-instance), [L5w.3](#ac-l5w-quaternionic-period-primitivity), [L5w.8](#ac-l5w-galois-selmer-instance), [L5w.13](#ac-l5w-selected-base-change-hypotheses).

### From GlobalGaloisDeformations R04.6

Export the exact minimal modular lift for the selected residual elliptic representation and its quadratic base change; prove all six Fujiwara 6.11 clauses under the specified local splitting pattern, with determinant/Teichmuller types fixed. Distinguish existence, modularity, and preservation of local minimality.

Used in [L5w.1](#ac-l5w-fujiwara-instance), [L5w.13](#ac-l5w-selected-base-change-hypotheses).

### From PadicFamilies L5

Use L5/totally-real-weight-algebra, L5/hida-freeness, L5/hida-hecke-finite, L5/hida-control-nearly-ordinary and L5/algebraic-primes-dense. Extend their exact contract to Wan’s parallel ordinary Hilbert branch through g_F, with its integral eigenlattice and fixed arithmetic specialization. Supply ordinary GU(2,2) form/boundary control with compatible coefficient change, rather than merely GL2 eigenforms.

Used in [L5w.1](#ac-l5w-fujiwara-instance), [L5w.4](#ac-l5w-klingen-interpolation), [L5w.11](#ac-l5w-arithmetic-specialization).

### From AutomorphicPadicLFunctions L5

Supply the actual Perrin–Riou/Hida Rankin normalization on the elliptic cyclotomic line, matching CGS 1.2.2–1.2.4, and the MSD comparison for both E and E^F. Track Manin constants, modular degrees, Néron periods, p unit roots, discriminant character units and primitive local Euler factors.

Used in [L5b.4](#ac-l5b-cyclotomic-analytic-factorization).

### Further analytic-family and representation comparisons

PhiGammaModulesAndIwasawaCohomology supplies the local analytic theory: relative Herr and ψ-complexes over affinoid coefficients, perfect of amplitude [0, 2] with the Euler characteristic −[K:ℚ_p]·rank, local duality, derived coefficient change along any affinoid map, and the comparison of analytic Iwasawa cohomology with the ψ-complex of D_rig (its §§4.4, 4.5 and 5.4, after KPX Theorems 4.4.2–4.4.6 and Corollary 4.4.11). ArithmeticGaloisDuality D7 supplies derived continuous cochains, derived tensor products with their Tor spectral sequences and derived global duality. The global analytic Selmer complex over Pottharst’s quasi-Stein coefficient algebra Λ_K,∞, with FW's finite-slope local conditions, its base change to affinoids and to points, and the Poitou–Tate identifications of FW §4.5 (Propositions 4.28, 4.30 and 4.43 and Corollary 4.44) are the target `fw_analyticSelmerComparison` of [L2.12](#ac-l2-fw-crystalline-main-conjecture). It identifies the analytic Beilinson–Flach class with the algebraic ordinary specialization and retains all Tor and local correction terms; an algebraic kernel-control theorem alone does not supply it.

PadicFamilies L4 supplies Coleman families and their regulator, but no p-irregular family. The comparison at a point with equal Satake parameters, FW §4.7, Proposition 4.53, pp.66–67, with the three-variable modular-symbol p-adic L-function of Betina–Williams, is the target `fw_pIrregular_comparison` of [L2.12](#ac-l2-fw-crystalline-main-conjecture). The specialization must have the same refinement, coefficient field and interpolation factors as the distinct-Satake analytic family.

The big ordinary GL₂ representation from PadicFamilies L4 must include the explicit lattice/dual/Tate-twist dictionary between its Hida–Ochiai convention and SU, CW and FW. Require a Galois-equivariant lattice isomorphism preserving the chosen ordinary submodule and the reciprocal Frobenius polynomial; label whether the source uses a representation or its dual. The same isomorphism must induce the local and global cohomology maps used here. A rational trace identity alone cannot identify integral Selmer groups.

AutomorphicSpectralTheory supplies the spectral decomposition and Eisenstein series, but not the holomorphic CAP exclusion of Harris (1984), Theorem 2.5.6. That exclusion, in the weight range used by SU Theorem 7.3.1, p.104, CLW's proof of Theorem 8.2.1, pp.79–80, and FW's proof of Theorem 7.32, p.97, is the target `harris_noHolomorphicKlingenCAP` of [L2s.6](#ac-l2s-cap-exclusion). It is used only after GL₂ modularity of the two-dimensional constituent has been proved. The statement follows the three applications, which agree: a cuspidal holomorphic representation of U(3,1) of the sufficiently regular weights (0,0,t⁺;t⁻) with 0 ≫ t⁺ ≫ −t⁻ has no Hecke eigensystem of Klingen–Eisenstein type. Harris's original (Ann. of Math. 119 (1984), 59–94) was not reachable for this package; confirming its exact regularity bound is a sources follow-up, and the weight range above is the one all three applications use.

### From Layer L0

The exact supplied prototypes are [L0.8](#ac-l0-canonical-period-congruence-number), [L0.5](#ac-l0-su-lattice-datum), [L0.7](#ac-l0-lattice-construction), [L0.6](#ac-l0-extension-class-local-conditions), [L0.1](#ac-l0-sigma-primitive-selmer), [L0.2](#ac-l0-primitive-imprimitive-comparison) and [L0.3](#ac-l0-selmer-specialization-control). Extend the period and Selmer/control contracts to Wan’s totally real setting as specified in the Hilbert applications: Hilbert Gorenstein congruence-line comparison (Definition 79), primitive/inertia/local-trivial comparison, ordinary extension-to-Selmer bridge and finite Fitting-to-characteristic control. Apply [L0.7](#ac-l0-lattice-construction) over (F, M) with n=2 for Wan 98 and verify the source-localized intersection/quotient, P-primary saturation and equality of lengths. The generic Eisenstein coefficient kernel is already supplied by [L0.4](#ac-l0-eisenstein-ideal) and is specialized to the Hilbert Hecke eigenpacket in L5w.

Used in [L5w.2](#ac-l5w-canonical-period-duality), [L5w.8](#ac-l5w-galois-selmer-instance), [L5w.9](#ac-l5w-exceptional-height-one-primes), [L5w.12](#ac-l5w-quartic-cm-divisibility), [L5b.3](#ac-l5b-cyclotomic-control), [L5w.11](#ac-l5w-arithmetic-specialization).

### From Layer L1

Extend [L1.1](#ac-l1-gu22-ordinary-hermitian-forms) and [L1.2](#ac-l1-gu22-hida-control) from Q/imaginary quadratic K to the totally real F ordinary GU(2,2) boundary exact sequence and cuspidal lifting used by Wan 27/97, with integral coefficient change, flatness and all-cusp q-expansion checks. The geometric carrier and local doubling machinery stay with AutomorphicPadicLFunctions:L4.

Used in [L5w.4](#ac-l5w-klingen-interpolation), [L5w.7](#ac-l5w-height-one-congruence).

### From IntegralHeckeAndGaloisDeterminants IHG.2

Import the current upstream roadmap’s actual integral Hecke images and localized reduced cuspidal Hecke algebra, with the eigenvalue polynomial/central/U_p dictionary used for the Wan quotient. The coefficient square and all inverse-generator eigenvalues must be preserved.

Used in [L5w.6](#ac-l5w-eisenstein-coefficient-ideal).

### From IntegralHeckeAndGaloisDeterminants IHG.4

Import current upstream determinant interpolation with the actual rank-four GU(2,2) Hecke polynomial normalization, coefficient ring and ramification set; obtain the integral trace/determinant data needed for Wan 9.2.

Used in [L5w.8](#ac-l5w-galois-selmer-instance).

### From IntegralIwasawaTheory I.5

Supply the odd-prime totally real abelian-character main-conjecture bound used in Wan Theorem 100, pp.87–88, and identify its class/Galois module with the scalar Selmer module for χ′/χ and the stated local conditions and cyclotomic twist. Prove its valuation is zero at the non-pulled-back prime after the specified coefficient transport. DirichletPadicLFunctions L4 plans GL1 Eisenstein coefficient families, not this totally real main conjecture.

Used in [L5w.8](#ac-l5w-galois-selmer-instance).

### From SelmerIwasawaCohomology L4

Provide the exact Poitou–Tate primitive/Σ-imprimitive sequence of Wan 101, local H¹_f characteristic Euler factors, and vanishing of the compact global term under stated torsion/torsion-free hypotheses.

Used in [L5w.9](#ac-l5w-exceptional-height-one-primes).

### From SelmerIwasawaCohomology L3

In addition to the existing kernel-control and derived-control targets, prove the precise ordinary coefficient specialization, cyclotomic quotient and torsion lifting used by Wan/BCS/SU, including localization-image, local Euler and Tor terms. A nonzero characteristic ideal requires torsion; Wan 101’s zero-extended convention does not prove it. Supply the quartic-CM torsion verification from early Kato bounds and compatible quadratic descent without using the final endpoint. Supply the discrete Iwasawa coefficient and tower-control adapter used with upstream Shapiro; arithmetic specialization uses a principal analytic majorant over the normal big ring and nonzero specialization, not an unjustified image of its characteristic ideal.

Used in [L5w.8](#ac-l5w-galois-selmer-instance), [L5w.11](#ac-l5w-arithmetic-specialization), [L5w.12](#ac-l5w-quartic-cm-divisibility), [L5b.2](#ac-l5b-quadratic-selmer-decomposition), [L5b.3](#ac-l5b-cyclotomic-control).

### From SelmerIwasawaCohomology L2

Supply the integral p-divisible Tate-module and ordinary-filtration comparison under unramified quadratic twisting, and the actual classical elliptic p-primary Selmer versus BCS ordinary Selmer identification, including finite/inertia/local-trivial away-p conventions. Distinguish the compact integral Tate lattice from its discrete p-divisible module and the discrete Iwasawa dual coefficient; compare finite-level Shapiro, filtered direct limits and ordinary/away-p local conditions for quadratic restriction.

Used in [L5b.1](#ac-l5b-four-twist-lattice-dictionary), [L5b.2](#ac-l5b-quadratic-selmer-decomposition), [L5b.9](#ac-l5b-rational-cyclotomic-endpoint).

### From ModularSymbolsPadicLFunctions L1

Supply MSD p-adic functions with the precise Néron periods for E and its three twists, modular parametrization/Manin-constant comparison of CGS 1.2.3, and good-period alignment with Kato’s dual-form lattice.

Used in [L5b.4](#ac-l5b-cyclotomic-analytic-factorization).

### From ModularSymbolsPadicLFunctions L2

Supply ordinary refinement/interpolation with the chosen unit root and finite-character normalization, plus the uniqueness principle in the bounded measure space used for CGS cyclotomic factorization.

Used in [L5b.4](#ac-l5b-cyclotomic-analytic-factorization).

### From Layer L5a

The early integral bound of BCS Proposition 5.2.1 and original Lemma 5.2.3 field existence are supplied at target level by [L5a.6](#ac-l5a-two-variable-product-containment) and [L5a.4](#ac-l5a-auxiliary-field-existence), with quartic-to-K Lemmas 5.1.1–5.1.2 owned there. Complete their recorded Beilinson–Flach ([L5a.1](#ac-l5a-ordinary-two-variable-equivalence)), period/Euler/lattice, torsion/nonzero-function and coefficient-map contracts, and the added auxiliary-field-narrow-delta refinement: a new finite ramification prime of K outside D_F while preserving all original field conditions. These comparisons are required with their displayed maps and local conditions. Neither HE.8b nor the L5b endpoint is an input.

Used in [L5b.5](#ac-l5b-four-factor-product-bound), [L5b.9](#ac-l5b-rational-cyclotomic-endpoint).

### From [EllipticCurves](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/EllipticCurves) Layer 2

Import the existing torsion/Tate-module construction, retaining the integral inverse limit, twist-equivariant transition maps and Weil-pairing determinant; no new elliptic geometry roadmap is planned.

Used in [L5b.1](#ac-l5b-four-twist-lattice-dictionary).

## How to read the build

The real-bodied definitions `EisensteinIdeal.hecke` and `EisensteinIdeal.base` in Suggested.lean give the generic operator ideal and its coefficient contraction in L0.4. The domain-valued `factorSeparation` milestone belongs to L5b.8. All arithmetic definitions and endpoints remain stated here with their full hypotheses.

L0 fixes the Selmer, period and polarized-lattice conventions; L1 gives the ordinary SU application. L2s and L2 give the weight-two and general-weight GU(3,1) route. L3 and L4 use its seed points to construct and trivialize universal fundamental lines. The independent totally real engine L5w feeds the early two-variable product bound L5a; L5b projects it to the cyclotomic line, compares four twists and separates the four factors using the opposite Kato bounds. L5 only collects the resulting endpoints. The selected-field theorem in L5w is conditional on its field hypotheses; their existence is established separately in L5a.

## Layer L0: Congruence ideals and ordinary Selmer classes

<a id="ac-l0-sigma-primitive-selmer"></a>

### L0.1 Σ-primitive ordinary Selmer groups over Iwasawa towers

Let F be a number field, A a profinite ℤ_p-algebra, T a free A-module of finite rank with a continuous A-linear G_F-action, and for each place v | p a G_{F_v}-stable A-direct summand T_v ⊆ T with T/T_v free. For a finite set Σ of finite places, Sel^Σ_F(T,(T_v)) is the kernel of the restriction from H¹(F, T ⊗_A A^∨) (A^∨ the Pontryagin dual) to the product over v ∉ Σ, v ∤ p of H¹(I_v, T ⊗ A^∨) and over v | p of H¹(I_v, (T/T_v) ⊗ A^∨): no condition at Σ away from p, unramified elsewhere away from p, and the ordinary (Greenberg) condition at p. Its dual X^Σ_F = Hom_A(Sel^Σ_F, A^∨) is finitely generated over A. For an extension E/F inside a ℤ_p^d-tower, Sel^Σ_E is the direct limit over finite subextensions and X^Σ_E the inverse limit, and Shapiro's lemma identifies Sel^Σ_{F_∞}(T) with Sel^Σ_F(T ⊗_A Λ_{F,A}(ε_F^{-1})) as Λ_{F,A}-modules, where Λ_{F,A} = A ⊗̂ ℤ_p[[Gal(F_∞/F)]] and ε_F is the tautological character. When A is noetherian and normal, Ch^Σ_{F,A}(T) denotes the characteristic ideal of X^Σ_F(T) and Ft^Σ_{F,A}(T) its Fitting ideal. The p-condition is imposed for every v|p regardless of membership in Σ. For torsion X, Ch means the divisorial ideal of its length divisor; noetherian normal does not imply principal. Use SU’s zero characteristic-ideal convention if X is not torsion.

Assume T free of finite rank over the profinite ℤ_p-algebra A, with a continuous action of G_F; T_v free direct summands with free quotients for v | p. Σ is finite. If S contains Σ, p and the ramification of T, the same kernel may be computed using H¹(G_{F,S},−); membership of p in Σ does not remove its local condition. The characteristic ideal is used only over noetherian normal A, as the divisorial ideal of height-one lengths.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §3.1.3, p. 18. Skinner–Urban define the Σ-primitive Selmer group by unramified conditions outside Σ ∪ {p} and the ordinary condition given by T_v at p, with its Pontryagin dual X^Σ. [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §3.1.8, pp. 20–21, and Prop. 3.2.3, p. 21. Characteristic and Fitting ideals of X^Σ, and Shapiro's identification of the tower Selmer group with one over Λ_{F,A}. [CLW](https://arxiv.org/pdf/2109.08375v1), (1.0.1)–(1.0.2) p. 3 and proof of Thm 8.2.1, p. 79. CLW use the instance with relaxed condition at one prime above p and unramified at the other, and its Σ ∪ {ℓ,ℓ′}-primitive variant.

The proof proceeds as follows. Instantiate the imported Selmer kernel with relaxed conditions at Σ away from p, unramified conditions at other non-p places, and Greenberg conditions from T_v at all v|p. Finite generation of the dual: H¹(G_{F,S}, M ⊗ A^∨) is cofinitely generated for finitely generated M (SU Lemma 3.1.9, after Greenberg). Shapiro: the coinduced module of A^∨ along Gal(F_n/F) has direct limit Λ_{F,A}^∨(ε_F^{-1}); the restriction maps at v correspond to the products over places of F_n above v (SU 3.1.2, Prop. 3.2.3). Define Ch^Σ via the height-one length divisor of X^Σ and Ft^Σ via Fitting ideals of a presentation.

The interface is used in SU-2014 Thm 3.6.1, p. 41 to Ch^Σ_{K_∞}(f) is the characteristic ideal of the Σ-primitive dual over the two-variable tower; in CLW-v1 proof of Thm 8.2.1, p. 79 to the Σ ∪ {ℓ,ℓ′}-primitive Selmer group in the lattice argument; in BCS-v2 §2, p. 6 to the ordinary Selmer group H¹_{F_Λ}(M, M_g) over a quartic CM tower, consumed by L5a; in [L5b.3](#ac-l5b-cyclotomic-control) to the Σ-primitive groups whose specialization L5b controls.

Provide `SigmaSelmer.mk`: Sel^Σ_F(T,(T_v)) as an A-submodule of H¹(F, T ⊗_A A^∨), defined by the local conditions above.

Provide `SigmaSelmer.dual`: X^Σ_F = Hom_A(Sel^Σ_F, A^∨), finitely generated over A.

Provide `SigmaSelmer.mono`: Σ ⊆ Σ′ gives an inclusion Sel^Σ ⊆ Sel^{Σ′} and a surjection X^{Σ′} → X^Σ.

Provide `SigmaSelmer.shapiro`: Sel^Σ_{F_∞}(T) ≅ Sel^Σ_F(T ⊗_A Λ_{F,A}(ε_F^{-1})) as Λ_{F,A}-modules, compatibly with the local conditions.

Provide `SigmaSelmer.charIdeal`: For finite torsion X over a noetherian normal domain, Ch is the divisorial ideal corresponding to div(X). In a UFD this agrees with PMIA’s native charIdeal. Its comparison with the divisorial hull of Fitt uses the finite-presentation/normal-ring theorem requested below.

Provide `SigmaSelmer.baseChange`: For an ideal 𝔞 with A/𝔞 profinite, the natural map X^Σ(T)/𝔞 → X^Σ(T/𝔞T) (an isomorphism under [L0.3](#ac-l0-selmer-specialization-control)).

Provide `SigmaSelmer.of_upstream`: Agreement with the imported Selmer kernel whose local conditions are relaxed at non-p places of Σ, unramified at other non-p places and Greenberg at every p-place.

Provide `SigmaSelmer.ext`: Two classes in Sel^Σ are equal iff their images in global H¹ agree; membership is exactly the vanishing of the stated localization maps.

**Checks.**

- With T_v=T and Σ containing all non-p ramification, Sel^Σ_F is full H¹(G_{F,Σ∪p},T⊗A^∨).
- For the zero coefficient module T=0 all local/global groups and X vanish; Ch=(1). This rejects a construction that inserts a coefficient-independent local summand.
- With T_v=0 the condition is unramified at p, not strict zero: for trivial Q_p/Z_p coefficients at Q_p, a nonzero unramified homomorphism G_Qp/I_p→Q_p/Z_p belongs to this local kernel. A strict zero local condition excludes it.
- For the relaxed/unramified/Greenberg structure, SigmaSelmer.of_upstream identifies the module with SelmerIwasawaCohomology:L2/galois-selmer-group.
- If T_v=T at all p-places and S contains Σ, p and ram(T), then Sel^Σ_F=H¹(G_{F,S},T⊗A^∨) when S=Σ∪{v|p}∪ram(T) and ram(T) away from p lies in Σ.
- For Σ⊂Σ′ the quotient embeds in the sum of changed local-condition quotients; surjectivity onto all local terms needs the additional hypotheses of primitive-imprimitive-comparison.

This uses SelmerIwasawaCohomology L2 (`selmer-data`), SelmerIwasawaCohomology L2 (`greenberg-condition`), SelmerIwasawaCohomology L2 (`unramified-condition`), SelmerIwasawaCohomology L2 (`galois-selmer-group`), SelmerIwasawaCohomology L2 (`pontryagin-dual`), SelmerIwasawaCohomology L3 (`iwasawa-shapiro`), SelmerIwasawaCohomology L3 (`iwasawa-cohomology`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal-api-0`), `TauCeti.ContCohomology.H1` (Tau Ceti), `Module.length` (Mathlib), `LocalizedModule` (Mathlib).

<a id="ac-l0-primitive-imprimitive-comparison"></a>

### L0.2 Primitive against Σ-primitive Selmer groups and the removed Euler factors

Let T, (T_v) and A be as in [L0.1](#ac-l0-sigma-primitive-selmer) with A noetherian normal, F any number field, and S a finite set of finite places not above p at which T is unramified, contained in Σ. Then (i) Ch^Σ_{F,A}(T) ⊇ Ch^{Σ∖S}_{F,A}(T) · ∏_{v∈S} det_A(1 − q_v^{-1} frob_v^{-1} | T) (SU Lemma 3.2.15, Cor. 3.2.16); (ii) over ℚ_∞, the Pontryagin dual of H¹_Σ(ℚ_∞, T ⊗ A^∨) = ∏_{v∈Σ, v∤p} H¹(ℚ_{∞,v}, T ⊗ A^∨) is a finitely generated torsion Λ_{ℚ,A}-module with no nonzero pseudo-null submodule, and its characteristic ideal is generated by ∏_{ℓ∈Σ} P_{T,ℓ}(ℓ^{-1} ε_ℚ(frob_ℓ)), P_{T,ℓ}(X) = det(1 − X frob_ℓ^{-1} | (T⊗_A Frac A)^{I_ℓ}) (SU Lemma 3.2.17); (iii) when the primitive dual is torsion and the global-to-local map is surjective (Greenberg–Vatsal), Ch^Σ = Ch^∅ · ∏_{ℓ∈Σ} P_{T,ℓ}(ℓ^{-1}ε(frob_ℓ)) (SU Prop. 3.2.18). On the analytic side the Σ-imprimitive p-adic L-functions are defined by multiplying the primitive ones by the same Euler-factor elements, so every removed factor is matched by the identical element of Λ.

For (i), A is noetherian normal and T is unramified at S, a finite set away from p. For the local cyclotomic module in (ii), use the compact finite-type coefficients of SU §3.2.2; the characteristic-divisor assertion also requires normal noetherian A. For the exact sequence in (iii), A admits decreasing ideals I_n with intersection zero and each A/I_n finite free over Z_p; the primitive X_Q∞(T,T_p) is Λ_Q,A-torsion; T* (the Pontryagin dual in SU §3.1.3) has no nonzero A-submodule with trivial G_Q action; Σ∪{p} contains ram(T). For every finite Σ′⊂Σ, localization onto H¹_{Σ\Σ′} is then surjective (SU Prop. 3.2.18). The Euler polynomial of Lemma 3.2.17 uses inverse frob_ℓ on rational inertia invariants. A rank-one invariant space gives 1−αX, where α is the eigenvalue of that precise inverse Frobenius. Integral lattices and analytic conventions must be compared explicitly.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Lemma 3.2.15 and Cor. 3.2.16, author-copy p. 26; Lemma 3.2.17, pp. 26–27; Prop. 3.2.18, p. 27. The three comparisons of Selmer groups as Σ varies, with the Euler-factor characteristic ideals. [CLW](https://arxiv.org/pdf/2109.08375v1), proof of Thm 8.2.1, p. 79. CLW reduce to the Σ ∪ {ℓ,ℓ′}-primitive inclusion using that unramified local cohomology is controlled by local Euler factors (Greenberg–Vatsal Prop. 2.4).

The proof proceeds as follows. (i): the cokernel of Sel^{Σ∖S} → Sel^Σ injects into ∏_{v∈S} H¹(I_v, T ⊗ A^∨)^{G_{F_v}}, whose dual has characteristic ideal det(1 − q_v^{-1}frob_v^{-1}|T) because T is unramified at v. (ii): Shapiro over ℚ_∞ and local Tate duality compute the local terms; each is Λ-torsion with characteristic ideal the displayed Euler factor, and has no pseudo-null submodule. (iii): with the localization map surjective the sequence 0 → Sel^∅ → Sel^Σ → H¹_Σ → 0 is exact, and multiplicativity of characteristic ideals gives equality. Analytic matching: the Σ-imprimitive p-adic L-function is by definition the primitive one times ∏_{ℓ∈Σ} P_ℓ(ℓ^{-1}γ_ℓ), so the comparison of characteristic ideals and of analytic functions involves the same elements.

**Checks.**

- Transfer a primitive/imprimitive bound only after matching identical Euler elements on the arithmetic and analytic sides; do not cancel a vanishing specialization.
- A Steinberg Euler element is a unit in the local power-series ring exactly when its residue at augmentation is nonzero. With ℓ=11, p=5 and α=1, 1−ℓ^{-1}γ has augmentation 10/11, so it is not a unit even though the residual representation can be ramified.

This uses [L0.1](#ac-l0-sigma-primitive-selmer), SelmerIwasawaCohomology L2 (`condition-change-triangle`), PadicMeasuresIwasawaAlgebras L4 (`pseudo-null`), ArithmeticGaloisDuality R02.4 (`poitou-tate`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal-api-0`).

<a id="ac-l0-selmer-specialization-control"></a>

### L0.3 Specializing Σ-primitive Selmer groups and their characteristic ideals

Let F_∞ be ℚ_∞, K_∞ or K^+_∞, A a profinite ℤ_p-algebra, 𝔞 ⊂ A an ideal and T as in [L0.1](#ac-l0-sigma-primitive-selmer). Assume the explicit SU Prop. 3.2.8 hypotheses below, so that X^Σ_{F_∞}(T)/𝔞 ≅ X^Σ_{F_∞}(T/𝔞T). Then (i) Ft^Σ_{F,A/𝔞}(T/𝔞T) = Ft^Σ_{F,A}(T) mod 𝔞; (ii) if A and A/𝔞 are noetherian normal domains and (f) ⊇ Ch^Σ_{F,A}(T) is principal, then f mod 𝔞 divides Ch^Σ_{F,A/𝔞}(T/𝔞T); in particular when A is factorial Ch^Σ_{F,A}(T) mod 𝔞 divides Ch^Σ_{F,A/𝔞}(T/𝔞T). (iii) For the descent K_∞ → K^+_∞ along I^- = ker(Λ_K → Λ_ℚ), X^Σ_{K_∞}(T)/I^- ≅ X^Σ_{K^+_∞}(T), and when A is factorial Ch^Σ_{K_∞}(T) mod I^- divides Ch^Σ_{K^+_∞}(T).

In SU Prop. 3.2.8, inertia at p acts on T/T_p through Γ_Q; Σ∪{p} contains ram(T); F∞ is Q∞, K∞ or K⁺∞; T* (the Pontryagin dual in SU §3.1.3) has no nonzero A-subquotient on which G_F acts trivially. These hypotheses apply for every ideal 𝔞 under consideration, not merely a presumed control isomorphism. The control isomorphism for a general ideal 𝔞 of the coefficient ring is SU Prop. 3.2.8 and is owned here; the upstream derived control (SelmerIwasawaCohomology:L3) covers the specialization to finite layers of a one-variable tower and is used only there. The control isomorphism needs SU Prop. 3.2.8's hypotheses; without them only a map with kernel and cokernel controlled by H⁰ and local terms exists. Characteristic ideals do not commute with base change in general; only the principal majorant transfers (ii). A specialization at which f vanishes gives no information.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Prop. 3.2.8, p. 23; Cor. 3.2.9, Prop. 3.2.11, p. 24. The control isomorphism, the Fitting base change, the principal-majorant divisibility and the descent from K_∞ to K^+_∞. [BCS-v2](https://arxiv.org/pdf/2405.00270v2), proof of Lemma 5.1.1, p. 9. BCS apply SU Props 3.6–3.7 and Cor. 3.8 (journal numbering) to restrict from a quartic CM tower to K.

The proof proceeds as follows. Fitting ideals commute with base change of a presentation (i). The characteristic ideal is the smallest divisorial ideal containing the Fitting ideal; a principal ideal is divisorial, so (f) ⊇ Ch ⊇ Ft and reduction gives f mod 𝔞 ∣ Ft(T/𝔞) ⊆ Ch(T/𝔞) (ii). For (iii), Shapiro along Γ^-_K and Prop. 3.2.8 identify Sel^Σ_{K^+_∞} with the I^- torsion of Sel^Σ_{K_∞}, and (ii) applies.

**Checks.**

- Vanishing check: if f ∈ 𝔞 the conclusion of (ii) is empty, and no cancellation of f against the specialized characteristic ideal is allowed.
- Used by [L1.11](#ac-l1-su-cyclotomic-divisibility) (descent from two variables to the cyclotomic line) and by [L5a.2](#ac-l5a-quartic-cm-selmer-restriction).

This uses [L0.1](#ac-l0-sigma-primitive-selmer), SelmerIwasawaCohomology L3 (`derived-control`), PadicMeasuresIwasawaAlgebras L6 (`higher-fitting-base-change`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal-api-0`).

<a id="ac-l0-eisenstein-ideal"></a>

### L0.4 The Eisenstein ideal of an Eisenstein family

Let Λ be a noetherian complete local domain, 𝕋 a reduced finite Λ-algebra generated over Λ by the images of a set 𝒯 of Hecke operators acting on a space of Λ-adic cusp forms, and λ: 𝒯 → Λ the system of eigenvalues of a Λ-adic Eisenstein family E (a Λ-algebra homomorphism from the abstract Hecke algebra). The Eisenstein ideal I_E ⊆ 𝕋 is the ideal generated by t − λ(t) for t ∈ 𝒯; when the structure map Λ → 𝕋/I_E is surjective, the Eisenstein ideal of Λ is its kernel E_E, so that Λ/E_E ≅ 𝕋/I_E. When I_E is proper, 𝕋_E denotes the localization of 𝕋 at the maximal ideal containing I_E.

Assume 𝕋 is generated over Λ by 𝒯 together with the U_p-operators, so Λ → 𝕋/I_E is surjective; otherwise E_E is defined as the kernel on the image. The Hecke operators are those at primes outside a fixed finite set Σ, the U_p-operators, and the central or diamond operators used by the source.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §6.5.3, pp. 97–98, (6.5.3.a). Skinner–Urban define I_D by the coefficients of Q_v(X) − Q_{v,D}(X), the U_p-relations and the central operators, and 𝔈_D as the kernel of Λ_D → h_D/I_D. [FW](https://arxiv.org/pdf/2107.13726v3), Def. 7.30, p. 96. Fouquet–Wan define I_D by t − λ(t) for the Klingen Eisenstein family and 𝔈_D as its inverse image in O[[Γ_K]]. [CLW](https://arxiv.org/pdf/2109.08375v1), proof of Thm 8.2.1, p. 79. The ideal E_{π,ξ} used in the set-up (5).

The proof proceeds as follows. Define I_E as the ideal generated by {t − λ(t) : t ∈ 𝒯} and E_E := ker(Λ → 𝕋/I_E). Surjectivity follows because the generators of 𝕋 over Λ act by scalars of Λ modulo I_E.

The interface is used in [L1.3](#ac-l1-eisenstein-datum) to the SU generators of I_D; in [L2s.5](#ac-l2s-clw-eisenstein-congruence) to E_{π,ξ} bounded below by L_{π,K,ξ}L_{ξ,ℚ}; in [L2.4](#ac-l2-fw-fourier-jacobi-unit) to Lemma 7.31's comparison ord_P(L) ≤ ord_P(𝔈_D); in [L0.7](#ac-l0-lattice-construction) to the ideal J := E_E A and I := I_E R of the abstract set-up.

Provide `EisensteinIdeal.hecke`: I_E ⊆ 𝕋 generated by t − λ(t), t ∈ 𝒯.

Provide `EisensteinIdeal.base`: E_E := ker(Λ → 𝕋/I_E).

Provide `EisensteinIdeal.localize`: Formation of I_E and its contraction E_E commutes with flat coefficient base change, in particular Λ→Λ_P and Λ_P→Λ̂_P. Here 𝕋 is transported by tensor product; noetherianity makes the completion flat. Completing a chosen local Hecke factor also requires the compatible factor decomposition. No assertion is made for arbitrary quotient specialization, which need not preserve kernels.

Provide `EisensteinIdeal.proper_iff`: For a unital structure map, E_E≠⊤ iff I_E≠⊤. For finite local Λ-algebras, this is equivalent to existence of a residue-field cuspidal eigensystem satisfying the specified congruences.

Provide `EisensteinIdeal.mono`: Enlarging 𝒯 enlarges I_E; restricting to a direct factor of 𝕋 enlarges E_E.

Provide `EisensteinIdeal.ext`: Equality of the generated Hecke ideals implies equality of their contractions; membership in E is equivalent to the image in 𝕋/I being zero.

**Checks.**

- For weight 12, level 1 cusp forms over ℤ_691 with E = E_12 (λ(T_ℓ) = 1 + ℓ^{11}), 𝕋 = ℤ_691 and E_E = (691). Ramanujan's congruence gives containment in (691), and τ(2)−(1+2¹¹)=−2073=−3·691 gives equality; replacing the ideal by (691²) fails this check.
- If no cusp form is congruent to E, then I_E = 𝕋 and E_E = Λ (for example weight 12 at p = 5).
- In a weight-two prime-level Mazur setting, I_E in the cuspidal Hecke algebra is generated by the appropriate T_ℓ−1−ℓ and 1+w_N. E_E is its contraction along Λ→𝕋, an ideal in Λ; it is not identified with that Hecke ideal.
- E_E differs from the congruence ideal of a cuspidal eigenform: for weight 12, level 1 and p = 691 the congruence ideal of Δ in the cuspidal Hecke algebra is the unit ideal (𝕋 = ℤ_p), while E_E = (691).
- The congruence statements of L1, L2 and L2s are lower bounds ord_P(E_E) ≥ ord_P(L) for height-one primes P of Λ, from a cuspidal family congruent to E.
- For Λ=Z, 𝕋=Z[X], the constant structure map and one equal operator/eigenvalue pair 7, I_E=0 and E_E=0. The induced coefficient map still misses X. Thus vanishing operator differences alone cannot replace the algebra-generation or quotient-surjectivity hypothesis. The proved polynomial example in Suggested.lean detects this failure.

This uses `Ideal.span` (Mathlib), `RingHom.ker` (Mathlib), `Ideal.map` (Mathlib).

<a id="ac-l0-su-lattice-datum"></a>

### L0.5 The Skinner–Urban lattice datum

Let H = G ⋊ {1, c} with c of order two, A a complete discrete valuation ring with fraction field F and maximal ideal m, and R a local reduced finite flat A-algebra with R/M = A/m. A lattice datum consists of: (1) a character ν: H → A^×; (2) a character χ: G → A^× with χ̄ ≠ ν̄χ̄^{-c}, and χ′ := νχ^{-c}; (3) a representation ρ: G → Aut_A(V), V ≅ A^n, with ρ^c ≅ ρ^∨ ⊗ ν, ρ̄ absolutely irreducible and ρ residually disjoint from χ and χ′ (some x ∈ A[G] has coprime residual characteristic polynomials); (4) a representation σ: G → Aut_{R⊗F}(M), M ≅ (R ⊗ F)^{n+2}, with σ^c ≅ σ^∨ ⊗ ν, tr σ(G) ⊆ R and finitely generated R[G]-orbits; (5) a proper ideal I ⊂ R with J := A ∩ I ≠ 0, A/J ≅ R/I and tr σ ≡ χ′ + tr ρ + χ mod I. Local data at a subgroup D ⊂ G: a D-stable free summand M^+ ⊆ M with free quotient, a D-stable free summand V^+ ⊆ V, and the congruence Ch(M^+, x, T) ≡ Ch(V^+, x, T)(1 − Tχ(x)) mod I for x ∈ R[D]. The datum is ν-polarized when ν is compatible (Φ^t = −ν(c)Φ) with the polarization of ρ.

Assume the polarization conditions are those of SU 4.2.2; residual disjointness is in the sense of SU 4.1.2. In applications G = G_{M,Σ} and H = G_{F,Σ} for a totally real field F and a CM quadratic extension M/F, with c a complex conjugation; D is a decomposition group at a place of M above p, A the completion of a localization of an Iwasawa algebra at a height-one prime P, and R a completed local Hecke algebra. SU, CLW and FW take F = ℚ and M = K imaginary quadratic; Wan 2015 takes F totally real and n = 2. SU §4.3 requires the common residue field κ to have at least n+2 nonzero elements. To deduce compatibility of ν with σ from Lemma 4.3.3, require char κ≠2 and absolute irreducibility of every field factor σ_i; otherwise compatibility with σ is a separate hypothesis of the Selmer consequence. SU Ch(θ,x,T)=det(1−Tθ(x)); convert Mathlib’s det(TI−θ(x)) before invoking polynomial congruences.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §4.1.2, Lemma 4.1.3, p. 48; §4.2.1–4.2.3, pp. 48–49; §4.5.1–4.5.3, p. 59. The rings A and R, the polarized data (1)–(5) and the local conditions with their congruence of characteristic polynomials. [CLW](https://arxiv.org/pdf/2109.08375v1), proof of Thm 8.2.1, p. 79. CLW list the data (1)–(5) for GU(3,1), taking ν trivial and σ from the pseudo-representation of the semi-ordinary Hecke algebra. [Wan-2020](https://arxiv.org/pdf/1408.4044v5), introduction, p. 4. Wan's U(3,1) argument follows the SU set-up; its lattice construction (Prop. 9.2, set-up (1)–(9)) is the variant used by CLW and FW. [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), §9.2.1, set-up (1)–(10) and Proposition 98, pp. 84–86. The same datum for H = G_{F,Σ} ⊃ G = G_{M,Σ} with middle rank two, its polarization sign Φ^t = −ν(c)Φ and the plus/minus local pieces at every place above p.

The proof proceeds as follows. Record the data (1)–(5) and the local data 4.5.1–4.5.3 as fields; derive the congruence for the quotients M^- and V^- from 4.3.1. Residual disjointness gives projectors x_1, x_2 ∈ B[G] with x_i acting as identity on one summand and zero on the other (SU Lemma 4.1.3, via the Henselian property).

The interface is used in [L1.9](#ac-l1-su-selmer-lower-bound) to the instance of SU 7.3.2 with A = Λ̂_{D,P} and R = 𝕋̂_{D,Q}; in [L2s.7](#ac-l2s-clw-main-divisibility) to the GU(3,1) instance with ν trivial; in [L2.6](#ac-l2-fw-greenberg-divisibility) to the general-weight GU(3,1) instance; in [L5w.8](#ac-l5w-galois-selmer-instance) to the Hilbert GU(2,2) instance over a totally real field.

Provide `LatticeDatum.chiPrime`: χ′ = νχ^{-c}.

Provide `LatticeDatum.trace_congr`: tr σ ≡ χ′ + tr ρ + χ modulo I.

Provide `LatticeDatum.residualProjectors`: The elements x_1, x_2 ∈ R[G] separating the residually disjoint constituents (SU Lemma 4.1.3).

Provide `LatticeDatum.localize`: Given descent data satisfying SU §4.4 and the freeness/residual conditions, localization and completion produce the datum; preservation of absolute irreducibility and disjointness must be checked, not inferred for arbitrary base change.

Provide `LatticeDatum.localData`: The D-stable summands M^±, V^± with the congruence of characteristic polynomials and its consequence for the quotients.

Provide `LatticeDatum.toGMA`: The R[G]-span of a lattice in M carries a generalized-matrix-algebra structure of type (1, n, 1) relative to the residual decomposition.

Provide `LatticeDatum.mk`: Construct from the five SU §4.2.3 fields, compatibility with ρ, and the explicitly specified local data.

Provide `LatticeDatum.ext`: Isomorphisms of the coefficient representations preserving χ,ν,I and the chosen local summands transport the datum and its trace/polynomial identities.

**Checks.**

- Rank n=0 is excluded by the absolutely irreducible middle-constituent requirement. A bare two-character Ribet datum cannot be passed to this constructor; the rank-two Ribet theorem is a distinct supplier contract.
- In SU 7.3.2, χ = σ_{χ̄_f,0}σ^c_ψ ε^{-3}, ρ_0 = ρ_f ⊗ σ_{χ̄_f,0}σ^{-c}_ξ σ^c_ψ ε^{-2}, χ′ = σ_{χ̄_f,0}ε^{-1}det ρ_f σ^{-1}_{ξ′}σ^c_ψ, and ν is fixed by χ^cχ′ = σ^2_{χ̄_f,0}ε^{-7}ε_ℚ^{-2}; these satisfy χ′ = νχ^{-c}, and the trace of ρ_D in (6.5.2.a) is χ + tr ρ_0 + χ′.
- If χ̄ = ν̄χ̄^{-c} then condition (2) fails; SU (dist) and CLW's ξ_p ≢ ξ_p̄ are exactly what rule this out.
- For a lattice datum with σ residually multiplicity free, LatticeDatum.toGMA agrees with IntegralHeckeAndGaloisDeterminants:IHG.1/generalized-matrix-algebra.
- The SU instance (SU 7.3.2), the CLW instance (proof of CLW Thm 8.2.1, items (1)–(5)) and the FW instance (proof of FW Thm 7.32) are all lattice data with n = 2 and (F, M) = (ℚ, K).
- Wan's Hilbert datum (Wan 2015 §9.2.2, p. 87: ρ = ρ_f ⊗ σ_ξ^{−c}σ_ψ^c ε^{−2}, χ = σ_ψ^c ε^{−3}, χ′ = νχ^{−c}) is a lattice datum with n = 2 over a totally real F ≠ ℚ; its trace is χ′ + tr ρ + χ, of total rank 4. A datum whose groups are taken over ℚ when F ≠ ℚ has the wrong local subgroups at the places above p and is rejected by the local-data clause.

This uses IntegralHeckeAndGaloisDeterminants IHG.1 (`generalized-matrix-algebra`), IntegralHeckeAndGaloisDeterminants IHG.1 (`henselian-idempotent-lifting`), IntegralHeckeAndGaloisDeterminants IHG.1 (`reducibility-ideal`), `IsDiscreteValuationRing` (Mathlib), `IsReduced` (Mathlib), `Matrix.charpoly` (Mathlib).

<a id="ac-l0-extension-class-local-conditions"></a>

### L0.6 Local conditions satisfied by the automorphic extension classes

For a [L0.5](#ac-l0-su-lattice-datum) with a stable lattice, its residual block projectors and the SU §4.4 off-diagonal cocycle c_φ(g)=(φ⊗id)(χ⁻¹(g)σ(g)ε̄*−ε̄*), the classes [c_φ] obtained from the off-diagonal blocks of σ satisfy, after multiplication by an element t ∉ P: (a) at every place v ∉ Σ they are unramified, since σ is unramified outside Σ; (b) at the primes above p they lie in the kernel of restriction to H¹(D, V^-_0 ⊗ A_0^∨(χ^{-1})) for D = G_{K,p} (the ordinary condition), and by the polarization the corresponding statement holds at G_{K,p̄}; (c) at places v ∈ Σ, v ∤ p, no condition is imposed (Σ-primitive). At a Steinberg place, pass between Σ-primitive and primitive objects using the precise Euler element of primitive-imprimitive-comparison; residual ramification alone does not make that element a unit.

Assume the residual disjointness of V^+ ⊕ A(χ) and V^- ⊕ A(χ′) modulo P (SU (7.3.3.a)) is what produces the D-projector; it is verified in each instance (SU proof of Thm 7.3.5, CLW and FW checks). The same local bridge is required over a totally real F and its CM quadratic M/F for the Wan 98 characters specified in [L5w.8](#ac-l5w-galois-selmer-instance), at every v|p. The imported polarized extension theorem and the exact local plus/minus disjointness hypotheses are retained.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Prop. 4.5.4, pp. 59–60; proof of Thm 7.3.5, p. 107. The ordinary local condition at p from the projector, and the verification of residual disjointness of the four characters at p. [FW](https://arxiv.org/pdf/2107.13726v3), Thm 1.6(2), p. 6; Assumption 3.7, p. 25. Thm 1.6(2) has both the inertia-dimension and decomposition-invariants conditions; Assumption 3.7 has only the former.

The proof proceeds as follows. (a) σ, hence every block, factors through G_{K,Σ}. (b) is SU Prop. 4.5.4(ii): the projector x^+ acts as identity on M^+ and kills M^-, so the extension restricted to D splits along the filtration. At Steinberg places compute the Euler element by local duality. FW Assumption 3.7 imposes dim ρ̄^{I_ℓ}=1; Thm 1.6(2) additionally imposes dim ρ̄^{G_ℓ}=0. Neither substitutes for the unit criterion of primitive-imprimitive-comparison.

**Checks.**

- Checks the three kinds of local condition named by the stage: unramified, Steinberg via relaxing and Euler factors, ordinary at p.

This uses [L0.5](#ac-l0-su-lattice-datum), [L0.2](#ac-l0-primitive-imprimitive-comparison), SelmerIwasawaCohomology L2 (`greenberg-condition`), SelmerIwasawaCohomology L2 (`unramified-condition`), IntegralHeckeAndGaloisDeterminants IHG.5 (`lattice-class-local-conditions`).

<a id="ac-l0-lattice-construction"></a>

### L0.7 The lattice construction: Eisenstein ideals bound Selmer groups

Let F be totally real, M/F a CM quadratic extension in which every place above p splits, and Σ a finite set of places of F containing those above p and ∞. Let (ν, χ, ρ, σ, I) be a ν-polarized lattice datum ([L0.5](#ac-l0-su-lattice-datum)) of middle rank n ≥ 1 with H = G_{F,Σ}, G = G_{M,Σ}, and local data at D_w = G_{M_w} for one place w above each place of F above p (the places of a p-adic CM type), satisfying SU 4.5.1–4.5.3 at each D_w, with V^+_0 ⊕ A(χ) and V^-_0 ⊕ A(χ′) residually disjoint modulo P, where A = Â_{0,P} for a height-one prime P of a noetherian normal domain A_0, and J = A ∩ I. Then (i) ord_P Ch^Σ_ℚ(ψν) ≥ ℓ_P(L(χ′)/J(χ′)); (ii) ord_P Ch^Σ_K(ρ_0 ⊗ χ^{-1}) ≥ ℓ_P(N/N′), and in particular ord_P Ch^Σ_K(ρ_0 ⊗ χ^{-1}) ≥ ord_P(J) when N′ = 0 (SU Prop. 4.5.6); (iii) if ord_P Ch^Σ_ℚ(ψν) = 0 then ord_P Ch^Σ_K(ρ_0 ⊗ χ^{-1}) ≥ ord_P(J) (SU Cor. 4.5.7); (iv) under SU Lemma 4.3.11, if ord_P(J) > ord_P Ch^Σ_ℚ(ψν) then ord_P Ch^Σ_K(ρ_0 ⊗ χ^{-1}) ≥ 1 (SU Prop. 4.5.8). Here the Selmer groups are the Σ-primitive ones of [L0.1](#ac-l0-sigma-primitive-selmer) for the pairs (A_0(ψν), 0) and (V_0(χ^{-1}), V^+_0(χ^{-1})); for general (F, M) the subscripts ℚ and K are read as F and M. SU states and proves (i)–(iv) for (F, M) = (ℚ, K) and every n; Wan 2015 Proposition 98 proves the case n = 2 for a general totally real F. The construction of SU §§4.3–4.4 uses only the profinite pair G ⊂ H of index two, the polarization and the local subgroups, and §4.5 uses only the Selmer conditions at the places of M, so the same proof gives the general statement. The variant of Wan20 Prop. 9.2 replaces the irreducibility of σ by condition (9): every specialization σ_λ is absolutely irreducible or contains an absolutely irreducible two-dimensional subrepresentation with trace ≡ χ + χ′ modulo I.

Assume P is a height-one prime of A_0 with A_0 noetherian normal; the polarization ν is compatible with the polarization of ρ (4.5.5.a). The bound concerns the Σ-primitive groups; primitive versions follow by [L0.2](#ac-l0-primitive-imprimitive-comparison). The excluded case ord_P Ch^Σ_ℚ(ψν) > 0 is where the abelian Selmer group may absorb the extensions; CLW and Wan exclude such P explicitly. Use SU §4.4 descent: A_0 is a profinite Krull domain with height-one P and completion A; R_0 is a reduced local finite A_0-algebra with Q over P and completed R; ρ descends to the free A_0-representation V_0, σ has trace in R_0 and finite R_0[G]-orbits, and I_0,J_0 are the contractions. G,H are profinite and representations continuous. For SU §4.5.5 require ν compatible with the polarization Φ of σ, and V⁺_0 an A_0-free direct summand stable under G_Qp. This compatibility follows from Lemma 4.3.3 only in odd residue characteristic with each σ_i absolutely irreducible. The Wan20 Prop. 9.2 variant requires all its setup (1)–(9), including a rank-one local M⁺ character congruence and disjoint M⁻ constituent. Its condition (9) permits a two-dimensional absolutely irreducible subrepresentation whose trace is congruent to χ+χ′, not χ+χ^{-c} unless ν=1. The auxiliary one-dimensional Selmer factor must have valuation zero for the full length-of-J bound.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §4.3–4.5, Props 4.4.4–4.4.5, 4.5.4, 4.5.6, Cor. 4.5.7, Prop. 4.5.8, pp. 52–61. The cocycle construction, the local conditions at p and the length bounds. [CLW](https://arxiv.org/pdf/2109.08375v1), proof of Thm 8.2.1, pp. 79–80. CLW verify Wan20's properties (6)–(9), with (9) by the CAP-exclusion argument, then apply Wan20 Prop. 9.2 at height-one P with ord_P(E_{π,ξ}) > 0 and (X_{ξ∘Nm} ⊗ ℚ)_P = 0. [FW](https://arxiv.org/pdf/2107.13726v3), proof of Thm 7.32, pp. 96–97. Fouquet–Wan apply the lattice construction (Wan20 Prop. 9.2) to the semi-ordinary GU(3,1) pseudo-character. [Wan-2020](https://arxiv.org/pdf/1408.4044v5), §9, setup (1)–(9) and Prop. 9.2, PDF pp. 93–94. The variant’s complete local/descent setup and alternative irreducibility condition, with its complete local and descent hypotheses. [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), §9.2.1, Proposition 98, pp. 84–86. The totally real, middle-rank-two form with its ten set-up conditions, including the alternative condition (10) for a characteristic-zero specialization.

The proof proceeds as follows. Choose a lattice ℒ ⊂ M stable under R[G]; the residual projectors of the datum decompose ℒ into pieces ℒ(χ′), ℒ(ρ), ℒ(χ) with submodules 𝒥(·) cut out by I (SU 4.3, Cor. 4.3.9). Off-diagonal blocks define cocycles: φ ↦ c_φ(g) = (φ ⊗ id)(χ^{-1}(g)σ(g)ε̄* − ε̄*) gives Hom_{A_0}(N, A_0^∨) → H¹(G, V_0 ⊗ A_0^∨(χ^{-1})), whose dual is surjective after localizing at P (SU Props 4.4.4–4.4.5). Local conditions: the projector x^+ ∈ R[D] splits the D-extension, so a multiple t ∉ P of the image lies in the kernel of restriction to H¹(D, V^-_0 ⊗ A_0^∨(χ^{-1})), i.e. satisfies the ordinary condition (SU Prop. 4.5.4); by polarization the same holds at the conjugate prime. Lengths: the dual Selmer group surjects onto Hom(N, A_0^∨)^∨ localized at P, giving (ii); (iii) and (iv) follow from (i), Lemma 4.3.8 and Lemma 4.3.11. For Wan20 Prop. 9.2 read and verify setup (1)–(9), retaining its rank-one ordinary line and alternative two-dimensional irreducible-subrepresentation case. This source-specific polarized construction is not a specialization of the supplier’s two-dimensional local Ribet theorem.

**Checks.**

- A height-one prime with ord_P(J) = 2 and N′ = 0 must give ord_P(Ch) ≥ 2, not just ≥ 1.
- Over F = ℚ(√5) with M/F CM, the datum of Wan 2015 §9.2.2 is admissible with n = 2, and the conclusion bounds a Selmer group over M; a version with H = G_{ℚ,Σ} cannot express Wan's local conditions at the two places of F above a split p.
- Excluded-prime check: when ord_P Ch^Σ_ℚ(ψν) > 0 and Lemma 4.3.11 fails, no conclusion is drawn.
- The extension classes are those of the automorphic family; the theorem does not presuppose any divisibility of characteristic ideals.

This uses [L0.5](#ac-l0-su-lattice-datum), [L0.1](#ac-l0-sigma-primitive-selmer), [L0.6](#ac-l0-extension-class-local-conditions), IntegralHeckeAndGaloisDeterminants IHG.1 (`gma-extension-module`), IntegralHeckeAndGaloisDeterminants IHG.1 (`gma-extension-injection`), `Module.length` (Mathlib), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal-api-0`).

<a id="ac-l0-canonical-period-congruence-number"></a>

### L0.8 Canonical periods, Petersson norms and the congruence number

For the p-stabilized ordinary newform f over a finite integral extension R⊂Q̄_p of Z_p satisfying (irred) and (dist), SU Lemma 12.2.2 gives η_f = u_f·2^{-3}(2i)^{κ+1} S(f)·⟨f,f^c|W_{p^rM}⟩/(Ω_f^+Ω_f^-), with u_f∈R^× and S(f) the explicit stabilization correction of SU (11.7.3.b). Under the stated integral/Gorenstein hypotheses η_f generates the congruence ideal. For a primitive ordinary family over an integral finite Λ-algebra I satisfying (irred),(dist), the family congruence generator η_I specializes to the η_f choices (SU pp. 194–195); Lemma 12.2.7 supplies the integral functional used in the canonical-period-normalized Eisenstein coefficients. No canonical/Gross period comparison or unproved identification of EPW homology and SU cohomology period lattices is used.

Assume (irred) and (dist) for f, which give the freeness of the relevant Hecke modules and the Gorenstein property used to make the congruence module cyclic. The unit u_{f_φ} in SU Thm 12.3.1(ii) depends only on f_φ and is not specified further. The Hilbert extension uses Wan Definition 79: the Gorenstein pairing identifies the intersection of the integral Hecke algebra with its rational f-eigenline with the principal congruence line. It requires the same finite free Hecke module and paired eigenlattice; its generator defines the period only up to the compatible coefficient unit, as specified in [L5w.2](#ac-l5w-canonical-period-duality).

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Thm 12.3.1 (i)–(ii), p. 199; Thm 12.4.1, pp. 202–203. The Petersson-normalized and the Ω^+Ω^--normalized interpolation formulas, the latter integral under (irred) and (dist). [FW](https://arxiv.org/pdf/2107.13726v3), remark before Thm 1.6, p. 6. Deducing Thm 1.6 from SU would need a comparison of the canonical and Gross periods, which Fouquet–Wan say may not exist in the literature in the generality needed. [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Lemma 12.2.2 and family discussion, author-copy pp. 194–195; Lemma 12.2.7, pp. 197–198; (11.7.3.b). The full congruence-period formula and the family integral functional.

The proof proceeds as follows. Use SU’s integral cohomological lattice and Lemma 12.2.2, retaining S(f) and every displayed normalization; do not replace the formula by an unqualified Petersson quotient. Use the family construction on p. 195 and the functional of Lemma 12.2.7 (pp. 197–198) to obtain the two normalizations of Thm 12.3.1 and Thms 12.4.1–12.4.2. The generic congruence module remains PadicFamilies:L1’s. Its EPW integral period dictionary to SU’s cohomological normalization requires the separately recorded comparison.

**Checks.**

- The integral normalization is the one in which the lattice construction measures congruences; replacing Ω^+Ω^- by a non-integral period breaks the integrality of ℰ_D's coefficients.

This uses PadicFamilies L1 (`congruence-module`), PadicFamilies L1 (`congruence-ideal`), PadicFamilies L1 (`family-congruence-module`), PadicFamilies L1 (`family-period-line`), PadicFamilies L1 (`period-change-of-trivialisation`).

<a id="ac-l0-hida-tilouine-anticyclotomic"></a>

### L0.9 CM theta-family congruence and Katz normalization for the CLW integrality input

Let K be imaginary quadratic, p ≥ 3 a prime split in K, ξ a Hecke character as in CLW §5.2 with ξ_p ≢ ξ_p̄ modulo the maximal ideal of O_L, and g the ordinary CM Hida family through the CM form σ_ξ, with coefficients in the anticyclotomic ring O^{ur}[[Γ_K^−]]. Let H(g) generate the congruence ideal of g, which is the denominator of Hida's Rankin–Selberg p-adic L-function for g against a fixed form, and let L^{Katz}_ξ be the anticyclotomic Katz p-adic L-function of the branch character, with h_K the class number of K. Prove `cmCongruence_dvd_katz`: H(g) divides h_K·L^{Katz}_ξ in O^{ur}[[Γ_K^−]] in each of the following cases.

- (A) p ≥ 5 and the branch character satisfies the hypotheses of Hid06's theorem listed below. Then the divisibility is an equality up to a unit: h_K·L^{Katz}_ξ generates the congruence ideal (Hid06, main theorem, pp. 466–467, as applied in Wan-2020 §7.5, p. 64, under (irred) and (dist) for g_ξ).
- (B) p ≥ 3, including p = 3: the branch character is primitive outside p, HT94's ordinarity and Leopoldt-type conditions Ord(K,p) and (L_{K∞,Σ}) hold, either χ(D) ⊄ μ_{p^∞} (case (i) of HT94 Theorem 0.3) or the trivial-zero element 𝒱(T) is shown prime to H(g), and p ∤ φ(𝔫)·∏_{𝔩|c″}(1+N𝔩), where 𝔫 = Nc is the conductor in HT94 Theorem 0.3 and c″ is the part of the auxiliary conductor supported on primes inert or ramified in K. HT94 Theorem 0.3, p. 92, gives H | h_K·∏_{𝔩|c″}(1+N𝔩)·𝒱(f) after inverting φ(𝔫), with f the characteristic series of the anticyclotomic Iwasawa module; under the displayed unit condition nothing is inverted. Rubin's main conjecture for K, as invoked in HT94's comment on p. 91 and in CGS23 Lemma 1.4.4, p. 9, identifies f with L^{Katz}_ξ up to a unit.
- (C) Rationally: for every p ≥ 3, under the hypotheses of (B) except the unit condition, the divisibility holds in O^{ur}[[Γ_K^−]] ⊗ ℚ.

Consequently the CLW normalization L^{Hida}_{π,K,ξ}, the product of Hida's Rankin–Selberg function and h_K·L^{Katz}_ξ, is integral in cases (A) and (B) and lies in O^{ur}[[Γ_K]] ⊗ ℚ in case (C). The direction matters: HT93 Theorem I and HT94 Theorems 0.1–0.2 prove the opposite divisibility, of H by the Katz function, after ⊗ℚ, and they do not give integrality.

Register the residual case as the open target `cmCongruence_dvd_katz_residual`: the integral divisibility at p = 3 when 3 divides φ(𝔫)·∏_{𝔩|c″}(1+N𝔩), or when the trivial-zero factor is not controlled. CLW Thm 8.2.1(2), p. 78, asserts integrality for every p ≥ 3 with ξ_p ≢ ξ_p̄, but the inputs cited in its proof, p. 81 (HT93, HT94, Hid06), do not cover this case: Hid06 assumes p > 3, and HT94 Theorem 0.3 inverts φ(𝔫). No endpoint of this roadmap uses the residual target; the integral CLW endpoint is stated in cases (A) and (B) only.

Assume all hypotheses of CLW Thm 8.2.1(2), in particular ξ_p≢ξ_p̄, together with the hypotheses of the case used. The congruence ideal and the Katz factor are compared integrally, at the stated tame conductor, ordinary refinement and period normalization; an identity in the fraction field does not give the integral cases.

The source is [CLW](https://arxiv.org/pdf/2109.08375v1), proof of Thm 8.2.1(2), p. 81. CLW deduce integrality of L^Hida_{π,K,ξ} from the anticyclotomic main conjecture of Hida–Tilouine and Hida (HT93, HT94, Hid06). [Wan-2020](https://arxiv.org/pdf/1408.4044v5), Thm 1.1 and the remark after Thm 1.2, pp. 2–3, and §7.5, p. 64. Wan proves integrality of Hida's p-adic L-function under (irred) and (dist) for the CM form g_ξ, within Theorem 1.1, whose hypothesis (a) is p ≥ 5; §7.5 deduces it from Hid06's theorem (Hid06, p. 468, (F)), so it is case (A).

The original normalization formulas are [HT93](https://www.numdam.org/article/ASENS_1993_4_26_2_189_0.pdf), Thm 7.1, printed p. 242 (PDF p. 55), with the primitivity and local choices of (7.3a,b), pp. 240–241, and (8.8b), printed p. 251 (PDF p. 64); and [Hid91](https://aif.centre-mersenne.org/item/10.5802/aif.1258.pdf), Lemma 5.3(vi), printed p. 355 (PDF p. 46). These retain adjoint Euler factors and the chosen primitive form. [Hid06](https://ems.press/content/book-chapter-files/27475?nt=1), pp. 466–467, assumes p>3 unramified in M, a p-ordinary CM type, and a finite anticyclotomic character ψ of order prime to p. Its prime-to-p conductor is split in M/F, ψ is nontrivial at every chosen p-place, and its restriction to G_{M(√p*)} is nontrivial. The theta-family application also uses Thm 6.3, p. 509, and its (h1)–(h4); the integral pairing and adjoint formula are (7.15)–(7.17), pp. 526–527. The main-conjecture identity is over the completed unramified coefficient extension and is only up to a unit there.

[HT94](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0117/LOG_0011.pdf), Theorems 0.1 and 0.2, printed p.91 (PDF p.4), admit odd p but state the anticyclotomic divisibility and Katz-to-congruence divisibility after tensoring with Q. Theorem 0.3, p.92 (PDF p.5), keeps the class-number ratio, nonsplit conductor Euler factors, localization at φ(Nc), and a further exceptional-zero factor in its second case. The local congruence module and its cotangent comparison are (5.1)–(5.4) and Proposition 5.1, p.139; the application on p.140 completes at a height-one prime away from the specified exceptional zeros. Theorem 7.1 and its proof, p.146, use these comparisons with ordinarity, the stated Leopoldt-type condition and p∤Ncφ(Nc). These statements do not provide an unrestricted integral equality at every tame level or determine a p-power discrepancy removed by rationalization.

The two routes of the cases above are, for (A), Hid06's main conjecture for the CM family with its p > 3, split-conductor and global restriction hypotheses, and for (B), HT94 Theorem 0.3 with the localization at φ(𝔫) and the factors ∏(1+N𝔩) and 𝒱(T), followed by Rubin's theorem. [CGS23](https://arxiv.org/pdf/2303.04373v1), Lemma 1.4.4 and proof, p. 9, carries out route (B) for the CM family through the weight-one Eisenstein series, where the trivial-zero factor is excluded by BDP22 Theorem A(i). Distinguishedness at p alone verifies neither Hid06's global restriction nor its split-conductor condition.

The proof proceeds as follows. Identify the CM theta family and its residual irreducibility and distinguishedness from ξ_p≢ξ_p̄, which make its local Hecke algebra Gorenstein, so that H(g) is a congruence power series in HT94's sense. In case (A) apply Hid06's theorem to the branch character after checking the hypotheses (h1)–(h4) of its Thm 6.3, p. 509, and the integral pairing (7.15)–(7.17), pp. 526–527. In case (B) apply HT94 Theorem 0.3 (with Proposition 5.1, p. 139, and Theorem 7.1, p. 146, on which it rests), check that the unit condition makes the localization trivial, and replace f by the Katz function by Rubin's theorem. Multiply Hida's Rankin–Selberg function, whose denominator is H(g), by h_K·L^{Katz}_ξ to obtain the integrality of L^{Hida}. Retain the integral normalization throughout; vanishing of μ does not prove the divisibility.

**Checks.**

- Consumed by L2s/clw-integrality (CLW's integrality of L_{π,K,ξ} through L^Hida) and by HeegnerPointEulerSystems HE.8b for the same integral CM-theta comparison.
- Over O[[T]], the ideals (p) and (1) become equal after inverting p but have different lengths at the prime generated by the uniformizer. Thus a rational Katz-to-congruence divisibility cannot establish the integral p-primary comparison.
- If p=3 divides φ(𝔫), localizing by the factor allowed in HT94 Theorem 0.3 also inverts 3, so that theorem then controls nothing 3-primary: this is the residual target, not case (B). For 𝔫 = 7, φ(7) = 6 is divisible by 3; for 𝔫 = 5, φ(5) = 4 is a 3-adic unit and case (B) applies when its other conditions hold.
- Direction: the rational divisibility of H by the Katz function (HT93 Theorem I) gives no bound on the denominator of L^{Hida}. With H = 3 and Katz value 1 it holds, while a Rankin–Selberg value u/3 with u a unit gives L^{Hida} = u/3, which is not integral.
- Changing an integral CM period by a unit preserves the congruence ideal. Multiplication by a uniformizer changes its valuation even though the corresponding fraction-field lines agree; equality of those lines is not the required lattice map.

This uses PadicFamilies L5 (`katz-hida-tilouine-tame`), AutomorphicPadicLFunctions L3h (`hida-katz-mu-vanishing`), PadicFamilies L1 (`congruence-module`), [L0.7](#ac-l0-lattice-construction).

### Examples

For the single operator 8 and scalar eigenvalue 3 over Z, the Hecke difference is 5, hence I_E=(5) and, for the identity coefficient map, 𝔈_E=(5). Equal values 7 and 7 give (0); the difference 2−1 gives the unit ideal. Under Z→F₅, equal operator and eigenvalue instead give I_E=0 and 𝔈_E=(5), because contraction sees the coefficient kernel. Equal constant values in Z[X] also give the zero Hecke ideal, but the coefficient map misses X, as its degree-one coefficient is 0 for constants and 1 for X. These are the proved examples of the kept definitions in Suggested.lean. For Δ at ℓ=2 the difference −24−(1+2¹¹)=−2073=−3·691 has 691-adic valuation one. At p=5 that same difference is a unit.

The reciprocal-polynomial convention has a direct witness: for M=diag(2,3) over Q, det(TI−M)=T²−5T+6, whereas det(1−XM)=1−5X+6X². Replacing M by M⁻¹ gives 1−(5/6)X+(1/6)X². Thus a change to dual or inverse Frobenius changes both coefficients. If an additional twist multiplies eigenvalues by u, the linear coefficient is multiplied by u and the quadratic one by u².

For the inertia-kernel ordinary condition with T_v=0 and trivial Q_p/Z_p coefficients, the continuous unramified homomorphism sending Frobenius to an element of order p is nonzero and satisfies the local condition. A strict zero local condition rejects it. For T=0 every Selmer module is zero and its characteristic ideal is the unit ideal. At a Steinberg prime ℓ=11 with p=5 and normalized eigenvalue α=1, the Euler element has augmentation 1−1/11=10/11, which is a nonunit in Z₅. Ramification alone cannot justify canceling it.

### Dependencies

ArithmeticGaloisDuality R02.4 (`poitou-tate`), AutomorphicPadicLFunctions L3h (`hida-katz-mu-vanishing`), IntegralHeckeAndGaloisDeterminants IHG.1 (`generalized-matrix-algebra`), IntegralHeckeAndGaloisDeterminants IHG.1 (`gma-extension-injection`), IntegralHeckeAndGaloisDeterminants IHG.1 (`gma-extension-module`), IntegralHeckeAndGaloisDeterminants IHG.1 (`henselian-idempotent-lifting`), IntegralHeckeAndGaloisDeterminants IHG.1 (`reducibility-ideal`), IntegralHeckeAndGaloisDeterminants IHG.5 (`lattice-class-local-conditions`), PadicFamilies L1 (`congruence-ideal`), PadicFamilies L1 (`congruence-module`), PadicFamilies L1 (`family-congruence-module`), PadicFamilies L1 (`family-period-line`), PadicFamilies L1 (`period-change-of-trivialisation`), PadicFamilies L5 (`katz-hida-tilouine-tame`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal-api-0`), PadicMeasuresIwasawaAlgebras L4 (`pseudo-null`), PadicMeasuresIwasawaAlgebras L6 (`higher-fitting-base-change`), SelmerIwasawaCohomology L2 (`condition-change-triangle`), SelmerIwasawaCohomology L2 (`galois-selmer-group`), SelmerIwasawaCohomology L2 (`greenberg-condition`), SelmerIwasawaCohomology L2 (`pontryagin-dual`), SelmerIwasawaCohomology L2 (`selmer-data`), SelmerIwasawaCohomology L2 (`unramified-condition`), SelmerIwasawaCohomology L3 (`derived-control`), SelmerIwasawaCohomology L3 (`iwasawa-cohomology`), SelmerIwasawaCohomology L3 (`iwasawa-shapiro`), `Ideal.map` (Mathlib), `Ideal.span` (Mathlib), `IsDiscreteValuationRing` (Mathlib), `IsReduced` (Mathlib), `LocalizedModule` (Mathlib), `Matrix.charpoly` (Mathlib), `Module.length` (Mathlib), `RingHom.ker` (Mathlib), `TauCeti.ContCohomology.H1` (Tau Ceti).

## Layer L1: The ordinary GU(2,2) construction over Q

<a id="ac-l1-gu22-ordinary-hermitian-forms"></a>

### L1.1 Ordinary p-adic Hermitian modular forms on GU(2,2) and their Hecke algebra

Let K be an imaginary quadratic field in which p splits, G = G_2 = GU(2,2) the unitary similitude group of the skew-Hermitian form w_2 = (0 1_2; −1_2 0) over O_K, and K′ ⊂ G(𝔸^p_f) a neat open compact subgroup. On the ordinary locus of the integral model of the Shimura variety S_G(K′K_p) (with its toroidal and minimal compactifications), and over its Igusa tower, define the space V^q_{a,ord} (dual of the ordinary p-adic Hermitian modular forms; q = 0 for cusp forms, q = 1 for all forms) of weight a with coefficients in Λ_2 = ℤ_p[[Γ_2]], Γ_2 = (1 + pℤ_p)^4 ⊂ T_2(ℤ_p), with the q-expansions at the cusps x = diag(u, t ū^{-1}), the Hecke operators at unramified places, the U_p-operators u_t for t = diag(p^{a_1},…,p^{a_4}), the ordinary projector e = lim u_t^{n!}, and the universal ordinary cuspidal Hecke algebra h_{Σ,0}(K′; Λ). Specializations at arithmetic weights are classical holomorphic Hermitian modular forms of weight (κ, κ; 0, 0)-type when the weight is sufficiently regular. Write M^q=Hom_Λ(V^q,Λ) for the module of forms carrying q-expansions: V and M are dual carriers and are not identified without a pairing.

Assume p splits in K; K′K_p neat; the p-adic weights are characters of T_2(ℤ_p) through Γ_2 and µ_{p−1}^4. The Shimura variety, its compactifications, the automorphic bundles and the ordinary Igusa tower are imported from AutomorphicPadicLFunctions:L4 (unitary PEL data) and AutomorphicBundles; this target instantiates them for GU(2,2) in SU's normalization.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §5 (groups G_n §5.1, Shimura varieties §5.2, cusps and boundary §5.4–5.5, Cor. 5.5.9), pp. 61–80; §6.1–6.2, pp. 81–91. Skinner–Urban's unitary similitude groups, Shimura varieties and ordinary automorphic forms with q-expansions and Hecke operators. [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §6.3–6.4 (Thms 6.3.3, 6.3.10, 6.4.1), pp. 91–95. Λ-adic ordinary forms and the universal ordinary Hecke algebra h_{S,0}.

The proof proceeds as follows. Instantiate AutomorphicPadicLFunctions:L4's unitary PEL datum at signature (2,2) and its ordinary forms, using SU §5 conventions (G_n, the Siegel parabolic, cusps C_{n−1}(K)). Define the ordinary projector by the profinite ordinary projector of PadicFamilies:L0a applied to u_t on the p-adic forms. q-expansions at x and the Fourier–Jacobi expansions along the Klingen parabolic come from AutomorphicBundles:B5.

The interface is used in [L1.2](#ac-l1-gu22-hida-control) to the spaces whose freeness and control are proved; in [L1.6](#ac-l1-padic-eisenstein-family) to ℰ_D is an element of M^{ord}_a(K′; Λ_D); in [L1.8](#ac-l1-gu22-galois-pseudocharacter) to the Hecke algebra h_D on which the pseudo-character lives; in [L5w.4](#ac-l5w-klingen-interpolation) to the totally real analogue over F imports the same carrier through AutomorphicPadicLFunctions:L4.

Provide `GU22Forms.space`: V^q_{a,ord}(K′; Λ_2) and M^q_{a,ord}(K′; Λ_2) for q ∈ {0, 1} (cusp forms, all forms).

Provide `GU22Forms.qExp`: The cusp q-expansion of a form in M^q=Hom_Λ(V^q,Λ), with injectivity on M^q by the q-expansion principle; it is not a q-expansion map on the compact dual V^q.

Provide `GU22Forms.hecke`: The Hecke operators T_v, Z_{ℓ,0}, Z^{(i)}_{ℓ,0} and u_t, commuting, with e the ordinary projector.

Provide `GU22Forms.specialize`: Specialization at an arithmetic weight φ lands in classical holomorphic ordinary forms of weight φ for sufficiently regular φ.

Provide `GU22Forms.siegelOperator`: The Siegel operator Φ to the boundary, fitting in the exact sequence of Cor. 5.5.9 and Thm 6.3.10.

Provide `GU22Forms.heckeAlgebra`: h_{Σ,0}(K′; Λ) := the Λ-algebra generated by the Hecke operators acting on ordinary cusp forms; finite and reduced over Λ_D after base change.

Provide `GU22Forms.ext`: Forms in M^q are equal when every coefficient at every permitted cusp agrees.

**Checks.**

- For n = 1 the same construction for GU(1,1) gives ordinary p-adic elliptic modular forms twisted by Hecke characters of K, with Hida's ordinary projector.
- A form whose q-expansions vanish at every cusp x with x_p ∈ Q(ℤ_p) is zero (q-expansion principle on each connected component).
- For the Eisenstein family with nonzero boundary value, ℰ_D belongs to M^1 and not M^0. This rejects confusing the boundary kernel with the full space or the forms with their compact duals.
- e ∘ e = e and e commutes with every T_v; on a classical form of weight a whose u_t-eigenvalue is a p-adic unit, e acts as the identity.
- The degree-one analogue GU(1,1) recovers elliptic modular forms twisted by characters of K, which is how the Eisenstein family is built from a Hida family f.

This uses AutomorphicPadicLFunctions L4 (`ehls-unitary-datum`), AutomorphicPadicLFunctions L4 (`ehls-ordinary-forms-hecke`), AutomorphicPadicLFunctions L4 (`dl-siegel-hermitian-varieties`), AutomorphicBundles B5 (`global-fj-expansion`), AutomorphicBundles B5 (`fj-injectivity`), PadicFamilies L0a (`profinite-ordinary-projector`), `MvPowerSeries` (Mathlib).

<a id="ac-l1-gu22-hida-control"></a>

### L1.2 Hida theory for GU(2,2): freeness, control and the boundary sequence

For n = 2 and q = 0 (cusp forms) or q = 1 (all forms): (i) V^q_{a,ord} is free of finite rank over Λ_n, and its specializations at finite-order characters ψ of level s have rank independent of ψ and of the weight (SU Thm 6.3.3); (ii) for any Λ_n-algebra A there is a short exact sequence 0 → M^0_{a,ord}(K^p, A) → M^1_{a,ord}(K^p, A) →Φ ⊕_{[g] ∈ C_{n−1}(K)} M^0_{a′,ord}(K^p_{n−1,g}, Λ_{n−1}) ⊗ A → 0, Φ the sum of the Siegel operators to the boundary components (cusp forms on G_{n−1} = GU(1,1)) (SU Thm 6.3.10, from Cor. 5.5.9); (iii) for every sufficiently regular algebraic dominant weight k the canonical surjection h^{S,q}(K^p; Λ_n) ⊗ Λ_n/P_k ↠ h^{S,q}_{k,ord}(K) has nilpotent kernel, so every ℚ̄_p-valued character of the Λ-adic Hecke algebra at P_k comes from a classical ordinary eigenform of weight k (SU Thm 6.4.1). Consequently h_{Σ,0}(K′; Λ) is finite over Λ_2 and its arithmetic points of regular weight are Zariski dense.

Assume weights sufficiently regular in the sense of SU 6.2; neat level; p split in K.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Thm 6.3.3, p. 91; Thm 6.3.10 and Thm 6.4.1, p. 95; Cor. 5.5.9, p. 78. Freeness of ordinary forms over Λ_n, the boundary exact sequence and control in sufficiently regular weight.

The proof proceeds as follows. Freeness from vertical control on the Igusa tower (SU §6.2–6.3, Props 6.2.5, Cor. 6.2.6, Thm 6.2.10). Boundary exact sequence: the Siegel operator surjects onto boundary ordinary forms (SU Cor. 5.5.9, Thm 6.3.10). Control of the Hecke algebra in sufficiently regular weight (nilpotent kernel, SU Thm 6.4.1); density of such weights in Spec Λ_2.

**Checks.**

- The boundary sequence is what lets one subtract an Eisenstein family from a lift and obtain a cusp form congruent to it.

This uses [L1.1](#ac-l1-gu22-ordinary-hermitian-forms), PadicFamilies L0a (`ordinary-part-complexes`), PadicFamilies L0a (`profinite-projector-exact`), AutomorphicPadicLFunctions L4 (`ehls-ordinary-forms-hecke`).

<a id="ac-l1-eisenstein-datum"></a>

### L1.3 The p-adic Eisenstein datum and its Eisenstein ideal

A p-adic Eisenstein datum D = (A, 𝕀, 𝐟, ψ, ξ, Σ) consists of the ring of integers A of a finite extension of ℚ_p containing ℤ[µ_{M_D p}, i, D_K^{1/2}], a normal domain 𝕀 finite over Λ_{W,A}, an 𝕀-adic ordinary eigenform 𝐟 of tame level M, finite idele class characters ψ and ξ of 𝔸_K^× (ψ|_{𝔸^×} = χ_𝐟), and a finite set of primes Σ containing those dividing M p D_K and the ramification of ξ. Put Λ_D = 𝕀[[Γ^-_K × Γ_K]], a finite local reduced Λ_2-algebra via α ⊗ β (SU 6.5.1), the characters σ_ψ, σ_ξ, σ_{ξ′} = σ_ξσ^c_ξ, and the semisimple representation ρ_D = σ_{χ̄_f,0}σ^c_ψε^{-3} ⊕ (ρ_𝐟 ⊗ σ_{χ̄_f,0}σ^{-c}_ξσ^c_ψε^{-2}) ⊕ σ_{χ̄_f,0}ε^{-1}det ρ_𝐟 σ^{-1}_{ξ′}σ^c_ψ of G_K over Frac Λ_D (6.5.2.a). The Eisenstein ideal I_D ⊆ h_D = h_{Σ,0}(K′; Λ_D) is generated by the coefficients of Q_v(X) − Q_{v,D}(X) (v ∉ Σ), the relations u_t − ∏β_i^{a_i} for the U_p-operators with the prescribed (β_1,…,β_4), and the central operators Z_{ℓ,0}, Z^{(i)}_{ℓ,0} minus their values on the Eisenstein characters; 𝔈_D ⊆ Λ_D is the kernel of Λ_D → h_D/I_D, so Λ_D/𝔈_D ≅ h_D/I_D (6.5.3.a), and 𝕋_D is the localization of h_D at the maximal ideal containing I_D. The two p-adic L-functions attached to D are L^Σ_{𝐟,K,ξ} ∈ 𝕀[[Γ_K]] ([L1.5](#ac-l1-su-padic-l-function)) and L^Σ_{χ̄_𝐟ξ̄′}, the image of the Kubota–Leopoldt function of the Dirichlet character χ̄_𝐟ξ̄′; their product is L_D.

Assume ψ exists with ψ|_{𝔸^×} = χ_𝐟 and unramified outside Σ (SU Thm 12.3.1 hypothesis); (irred)_𝐟 and (dist)_𝐟 when 𝕋_D is used.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §6.5.1–6.5.3, pp. 96–98. The datum D, the ring Λ_D, the representation ρ_D, the generators of I_D and the isomorphism Λ_D/𝔈_D ≅ h_D/I_D.

The proof proceeds as follows. Define Λ_D, the characters and ρ_D as in SU 6.5.1–6.5.2. Instantiate [L0.4](#ac-l0-eisenstein-ideal) with the Hecke operators listed in SU 6.5.3 and the eigensystem of ρ_D and the U_p-characters.

The interface is used in [L1.6](#ac-l1-padic-eisenstein-family) to Thm 6.5.4 bounds ord_P(𝔈_D) below by ord_P(L_D); in [L1.9](#ac-l1-su-selmer-lower-bound) to the lattice datum of SU 7.3.2 takes J_0 = 𝔈_D and I_0 = I_D; in [L1.8](#ac-l1-gu22-galois-pseudocharacter) to the residual pseudo-character of 𝕋_D is tr ρ̄_D.

Provide `EisensteinDatum.lambdaD`: Λ_D = 𝕀[[Γ^-_K × Γ_K]] with its Λ_2-algebra structure via α ⊗ β.

Provide `EisensteinDatum.rhoD`: The semisimple G_K-representation ρ_D of (6.5.2.a), unramified outside Σ, with det(1 − ρ_D(g)X) ∈ Λ_D[X].

Provide `EisensteinDatum.heckeIdeal`: I_D ⊆ h_D generated as in SU 6.5.3.

Provide `EisensteinDatum.ideal`: 𝔈_D := ker(Λ_D → h_D/I_D).

Provide `EisensteinDatum.quotientEquiv`: Λ_D/𝔈_D ≃ h_D/I_D (6.5.3.a).

Provide `EisensteinDatum.LD`: L_D = L^Σ_{𝐟,K,ξ}·L^Σ_{χ̄_𝐟ξ̄′} ∈ Λ_D.

Provide `EisensteinDatum.specialize`: At an arithmetic φ ∈ X^a_D with an associated Eisenstein series, φ(ρ_D) is that series' Galois representation and φ(Q_{v,D}) its Hecke polynomial.

Provide `EisensteinDatum.ext`: Transport of A,I, the family and characters preserving their stated identities transports ρ_D, I_D and 𝔈_D; equality of all generator eigenvalues identifies the ideals.

**Checks.**

- tr ρ_D is the sum of two characters and the trace of a twist of ρ_𝐟; its reduction modulo the maximal ideal is the residual trace used in Thm 7.3.1, with exactly one irreducible two-dimensional constituent under (irred)_𝐟.
- 𝔈_D ≠ Λ_D exactly when some cuspidal ordinary eigensystem is residually congruent to the eigensystem of ρ_D.
- At an arithmetic quotient I→O of a genuine finite Iwasawa branch, Λ_D⊗_I O≅O[[Γ_K^-×Γ_K]] has three Iwasawa variables and Krull dimension four. The original I still has its weight variable; I=O is not a finite extension of O[[W]].
- Replacing h_D by the GL₂ Hecke algebra of 𝐟 does not give an Eisenstein ideal of this datum: ρ_D has rank four and its Hecke polynomials Q_v have degree four.
- The specialization of ρ_D at an arithmetic point with an associated Eisenstein series is the Galois representation of that Eisenstein series (SU remark after (6.5.2.a)).

This uses [L0.4](#ac-l0-eisenstein-ideal), [L1.1](#ac-l1-gu22-ordinary-hermitian-forms), IntegralHeckeAndGaloisDeterminants IHG.3 (`gln-hecke-polynomial`), PadicFamilies L4 (`ordinary-big-galois-representation`), DirichletPadicLFunctions L4.

<a id="ac-l1-klingen-eisenstein-series"></a>

### L1.4 Klingen Eisenstein series on GU(2,2) as pullbacks of Siegel Eisenstein series on GU(3,3)

For a cuspidal eigenform f on GU(1,1) (from an elliptic newform and a character ψ), a character ξ of 𝔸_K^× and a choice of local sections at the places of Σ and at p, construct the holomorphic Klingen-type Eisenstein series E_D(Z, x) on GU(2,2), induced from the Klingen parabolic with Levi GU(1,1) × Res_{K/ℚ}𝔾_m, of weight κ > 6 (SU §9, 'good Eisenstein series' Prop. 9.3.3), its Hecke eigenvalues and Satake parameters (SU §9.5–9.6), and its expression through the pullback of a Siegel Eisenstein series on GU(3,3) along GU(2,2) × GU(1,1) ↪ GU(3,3) paired against f (SU §11, Prop. 11.2.3). Distinguish this raw series from G_D=M^{κ/2}W′(f)^{-1}L_D^{(2)}|µ(x)|_Q^{-κ}E_D, the normalized series of SU (11.7.5.a), p. 181. Write C_D(β,x) for the coefficients of G_D. Local Whittaker calculations and the global pairing determine C_D (SU Cors 11.7.5–11.7.6 and §11.8); these coefficients are not identified with the coefficients of E_D. The integral singular-coefficient divisibility belongs to the canonical-period-normalized family interpolating G_D/(Ω_f^+Ω_f^-), as in SU Thm 12.4.2(ii), p. 203.

Assume κ > 6 for the absolutely convergent range; the sections at p have conductor dividing p as in (12.4.2.a) when the family is formed. The doubling/pullback formalism, the Siegel Eisenstein series on unitary groups and the local doubling integrals are imported; this target owns the Klingen-specific choices and coefficient formulas.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §9 (Props 9.2.6, 9.3.3, 9.5.3, 9.6.1, 9.6.2), pp. 113–135. The Klingen-type cuspidal Eisenstein series on GU(2,2), their Hecke eigenvalues and U_p-behaviour. [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §11 (Prop. 11.2.3; §11.4, especially Props 11.4.13, 11.4.17, 11.4.18 and 11.4.23; Props 11.6.1–11.6.2; Cor. 11.6.3; Props 11.7.1–11.7.2, Lemma 11.7.3 and Prop. 11.7.4; Cors 11.7.5–11.7.6; Prop. 11.8.2), pp. 140–190. Siegel Eisenstein series on GU(3,3), their pullbacks and the computation of Fourier coefficients. Normalization is (11.7.5.a), p. 181, and the integral family and divisibility are Thms 12.4.1–12.4.2, pp. 202–203.

The proof proceeds as follows. Pullback (doubling) formula: restricting E^{Sieg}_{GU(3,3)} to GU(2,2) × GU(1,1) and integrating against f gives the Klingen series times the standard L-value (SU Prop. 11.2.3, from Shimura/Garrett). Local computations at unramified places, at Σ and at p (SU §11.4, Props 11.4.13, 11.4.17, 11.4.18, 11.4.23) and the Fourier coefficients (SU §11.6–11.7). Hecke eigenvalues: E is an eigenform with Hecke polynomial Q_{v,D} (SU §9.5–9.6).

The interface is used in [L1.6](#ac-l1-padic-eisenstein-family) to the classical members G_{D_φ} interpolated by ℰ_D; in [L1.7](#ac-l1-nonsingular-coefficient-coprimality) to the nonsingular coefficients c_D(β_i, x) analysed in §13; in [L5w.4](#ac-l5w-klingen-interpolation) to Wan 2015's Hilbert analogue uses the same pullback pattern.

Provide `KlingenEisenstein.series`: The raw E_D(Z,x) on GU(2,2) from (f, ψ, ξ, Σ, local sections).

Provide `KlingenEisenstein.pullback`: The pairing of the pullback of E^{Sieg}_{GU(3,3)} with f equals the Klingen series times the scalar obtained from SU Prop. 11.2.3 and the local calculations of §11.4, retaining its L-value and local normalizations.

Provide `KlingenEisenstein.normalized`: G_D=M^{κ/2}W′(f)^{-1}L_D^{(2)}|µ(x)|_Q^{-κ}E_D with its specified nonzero Atkin–Lehner scalar W′(f). Multiplication by this scalar scales every Fourier coefficient by that same factor.

Provide `KlingenEisenstein.fourierCoeff`: C_D(β,x) is the coefficient of the normalized G_D, obtained from the local Whittaker integrals and global pairing of SU Cors 11.7.5–11.7.6. At the arithmetic points of L1.6, the integral coefficient c_D(β,x) specializes to u_φ C_{D_φ}(β,x)/(Ω_{f_φ}^+Ω_{f_φ}^-), with u_φ a coefficient unit independent of β.

Provide `KlingenEisenstein.singular_dvd`: Under the family, cusp and local-section hypotheses of SU Thm 12.4.2(ii), det β=0 implies c_D(β,x)∈(L^Σ_{f,K,ξ}L^Σ_{χ̄_fξ̄′}) in Λ_D. Its arithmetic specialization is the corresponding canonical-period-normalized product of complex L-values with all interpolation factors retained. This ideal containment is not asserted for coefficients of the raw E_D.

Provide `KlingenEisenstein.hecke`: E is a Hecke eigenform with Hecke polynomials Q_{v,D} at v ∉ Σ and the U_p-eigenvalues ∏β_i^{a_i}.

Provide `KlingenEisenstein.siegelOperator`: The Klingen constant term of the raw E_D is its inducing section ϕ_D(z_κ), by SU Lemma 9.3.2(ii), pp. 125–126. The corresponding boundary coefficient of G_D is multiplied by the full scalar in (11.7.5.a). The canonical-period-normalized family has the product divisibility of L1.6; that product is not inserted into the raw constant term.

Provide `KlingenEisenstein.ext`: Equality follows from equality of all q-expansion coefficients at the specified cusps; compatible coefficient extension carries the local-section integrals and their eigenvalues to the extended series.

**Checks.**

- In the absolutely convergent holomorphic range, the raw Klingen constant term equals ϕ_D(z_κ), since the intertwining term vanishes (SU Lemma 9.3.2). Normalizing E_D to G_D multiplies this term by exactly M^{κ/2}W′(f)^{-1}L_D^{(2)}|µ(x)|_Q^{-κ}; a definition inserting that scalar twice fails this check.
- The Siegel Eisenstein series on GU(2,2) itself (induced from the Siegel parabolic) has Hecke polynomials of a different shape (four characters, no two-dimensional constituent) and is not E.
- At v ∉ Σ, the Hecke polynomial of E equals φ(Q_{v,D}), the characteristic polynomial of Frob_v on the specialization of ρ_D ([L1.3](#ac-l1-eisenstein-datum)).
- In the normalized integral family, at the cusps admitted by SU Thm 12.4.2(ii), all singular coefficients lie in the displayed product ideal; the nonsingular ones need not. Rescaling G_D by a nonunit rescales its coefficient lattice and cannot preserve the same integral normalization.

This uses AutomorphicPadicLFunctions L4 (`doubling-global-identity`), AutomorphicPadicLFunctions L4 (`local-zeta-at-p`), AutomorphicPadicLFunctions L4 (`ehls-eisenstein-measure`), AutomorphicPadicLFunctions L4e (`ew-pullback-and-local-computations`), [L1.1](#ac-l1-gu22-ordinary-hermitian-forms).

<a id="ac-l1-su-padic-l-function"></a>

### L1.5 The Skinner–Urban three-variable p-adic L-function

Let A, 𝕀, 𝐟, ξ and Σ be as in a p-adic Eisenstein datum, and suppose there is a finite A-valued idele class character ψ with ψ|_{𝔸^×} = χ_𝐟, unramified outside Σ. (i) There is L̃^Σ_{𝐟,K,ξ} ∈ Frac(𝕀) ⊗_𝕀 𝕀_K whose value at every φ ∈ X_{𝕀_K,A}(𝐟, ψ, ξ) is the Petersson-normalized algebraic part of L^Σ_K(f_φ, χ̄_{f_φ}ξ_φ, κ_φ − 1) (SU Thm 12.3.1(i)); (ii) under (irred)_𝐟 and (dist)_𝐟 there is L^Σ_{𝐟,K,ξ} ∈ 𝕀_K whose value at φ is u_{f_φ} times the same L-value normalized by the canonical periods Ω^+_{f_φ}Ω^-_{f_φ}, u_{f_φ} a p-adic unit (SU Thm 12.3.1(ii)). (iii) If moreover χ_𝐟 = 1, ξ = ξ̄^c with conductor dividing (p), (M, D_K) = 1, M = M^+M^- with M^- squarefree with an odd number of primes, all inert in K, and ρ̄_𝐟 ramified at every ℓ | M^-, then L^Σ_{𝐟,K,ξ} lies in no prime of 𝕀[[Γ_K]] of the form Q·𝕀[[Γ_K]] with Q a height-one prime of 𝕀[[Γ^+_K]] (SU Prop. 12.3.6, from Vatsal's µ = 0). Precisely, the common numerator at φ is a(p,f_φ)^{-ord_p Nm(f_{χ̄_f ξ_φ})}·((κ_φ−2)!)²·g(χ̄_f ξ_φ)·Nm(f_{ξ_φ}d)^{κ_φ−2}·L_K^Σ(f_φ,χ̄_f ξ_φ,κ_φ−1). In (i) divide it by (−2πi)^{2κ_φ−2}·2^{-3}(2i)^{κ_φ+1}S(f_φ)⟨f_φ,f_φ^c|W_{N_φ}⟩; in (ii) divide by (−2πi)^{2κ_φ−2}Ω^+_{f_φ}Ω^-_{f_φ} and multiply by u_{f_φ}.

Retain the stated hypotheses; the interpolation set X_{𝕀_K,A}(𝐟, ψ, ξ) is defined in SU §12.3 (conductor conditions at p). A contains i, sqrt(D_K), and the local Gauss sums g(ξ_ℓ^c,a_ℓδ_K), g(χ̄_f,ℓ ξ_ℓ^c,b_ℓδ_K), g(χ_f,ℓ ξ̄′_ℓ) for ℓ∈Σ\{p}, with conductors as in Prop. 12.2.5. In (iii), every prime of M⁺ splits in K; the stated inert conditions apply to M⁻.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Thm 12.3.1, p. 199; Prop. 12.3.6, p. 202. The two interpolation statements and the non-divisibility by pulled-back height-one primes from Vatsal's theorem. [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Prop. 12.2.5, author-copy p. 196; Thm 12.3.1, p. 199. The coefficient/Gauss-sum conditions and all factors of the two interpolation formulas.

The original [Vatsal](https://personal.math.ubc.ca/~vatsal/research/mew3.pdf), Thm 1.1, author-copy p. 3, computes µ=ord_λ(C_Eis²C_csp), not unconditional vanishing. Its congruence constants and periods are in §2.4, pp. 10–11; the coefficient nonvanishing argument is §4.6 and Prop. 4.7, pp. 18–19, with its reduction in §5.9, p. 26. The application must show that both constants are units under the SU hypotheses and match SU's canonical-period lattice. The residual irreducibility and ramification conditions in (iii) must remain in that comparison.

The proof proceeds as follows. Apply the interpolation lemma 12.2.7 to the family g = f^{(1)}_{D,1/M,1} of Prop. 12.2.5; Cor. 11.7.5 identifies the specializations (proof of SU Thm 12.3.1). Density of X′_D and independence of φ|_{Γ^-_K} place L̃ in Frac(𝕀) ⊗ 𝕀_K; the integral version N_g of Lemma 12.2.7(ii) gives (ii) ([L0.8](#ac-l0-canonical-period-congruence-number)). (iii): expand in γ^- − 1; the anticyclotomic specialization at a weight-two point has µ = 0 by Vatsal (through AutomorphicPadicLFunctions:L3h/finis-divisibility), so some coefficient is a unit and the series lies in no prime pulled back from 𝕀[[Γ^+_K]].

**Checks.**

- Integrality (ii) requires (irred) and (dist); without them only (i) holds.
- The interpolation uses the canonical periods Ω^±; the anticyclotomic restriction is compared with Bertolini–Darmon's function only up to a unit (SU 3.6.14).

This uses [L1.4](#ac-l1-klingen-eisenstein-series), [L0.8](#ac-l0-canonical-period-congruence-number), AutomorphicPadicLFunctions L3h (`finis-divisibility`), AutomorphicPadicLFunctions L3h (`mod-p-nonvanishing`), PadicFamilies L1 (`family-period-line`).

<a id="ac-l1-padic-eisenstein-family"></a>

### L1.6 The Λ_D-adic Klingen Eisenstein family and its constant terms

Let D be a p-adic Eisenstein datum with cond(ψ_p), cond(ξ_p) | p, (irred)_𝐟 and (dist)_𝐟, and K′ ⊆ K′_D with K′K_p neat. (i) There is ℰ_D ∈ M^{a,ord}(K′; Λ_D) whose specialization at every φ ∈ X″_D is u_φ·G_{D_φ}/(Ω^+_{f_φ}Ω^-_{f_φ}) with |u_φ|_p = 1, G_{D_φ} the classical Klingen Eisenstein series (SU Thm 12.4.2(i), Thm 12.4.1); (ii) for x with x_p ∈ Q(ℤ_p) and det β = 0, the β-Fourier coefficient c_D(β, x) lies in L^Σ_{𝐟,K,ξ}·L^Σ_{χ̄_𝐟ξ̄′}·Λ_D (Thm 12.4.2(ii)); (iii) The full ordinary Hecke algebra h_D^full acting on all forms has the Eisenstein eigencharacter λ_D^full:h_D^full→Λ_D. The cuspidal Hecke algebra h_D^cusp only acquires this eigensystem modulo 𝔈_D, through Λ_D/𝔈_D≅h_D^cusp/I_D. SU uses h_D for the full algebra on p. 204 and the cuspidal algebra in §6.5.3. Consequently, if P ⊂ Λ_D is a height-one prime with ℰ_D ≢ 0 modulo P, then ord_P(𝔈_D) ≥ ord_P(L_D) (SU Thm 6.5.4): subtracting a lift of ℰ_D's constant terms produces a cuspidal family congruent to ℰ_D modulo L_D. Here ℰ_D denotes the Eisenstein form and 𝔈_D the coefficient-ring ideal; a hypothesis that the form is nonzero modulo P concerns ℰ_D.

Assume (irred)_𝐟, (dist)_𝐟; A satisfies the hypotheses of SU Prop. 12.2.5; conductor condition (12.4.2.a) at p. The conclusion of Thm 6.5.4 is conditional on ℰ_D being nonzero modulo P; [L1.7](#ac-l1-nonsingular-coefficient-coprimality) supplies this.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Thms 12.4.1–12.4.2, pp. 202–203; Thm 6.5.4 and the paragraph before it, p. 98. The Λ_D-adic Eisenstein series, divisibility of its singular coefficients by L_D, and the resulting lower bound for the Eisenstein ideal.

The proof proceeds as follows. Interpolate each q-expansion coefficient by Lemma 12.2.7 applied to f^{(2)}_{D,β,x} (proof of SU Thm 12.4.1), using Cor. 11.7.6. Assemble a Λ_D-adic ordinary form by the q-expansion principle and Hida theory ([L1.2](#ac-l1-gu22-hida-control)). Thm 6.5.4: if ord_P(L_D) = r and ℰ_D ≢ 0 mod P, the boundary exact sequence lets one subtract a Λ_D-adic lift of ℰ_D's boundary values times L_D^{-1}·(unit), producing a cusp form H ≡ ℰ_D mod P^r, whence 𝕋_D/I_D surjects onto Λ_D/(𝔈_D, P^r).

**Checks.**

- The congruence is with the whole family ℰ_D, not with an individual Eisenstein series; an interpolation formula for ℰ_D alone does not give it.
- Excluded case: if ℰ_D ≡ 0 mod P no bound is claimed.

This uses [L1.4](#ac-l1-klingen-eisenstein-series), [L1.2](#ac-l1-gu22-hida-control), [L1.3](#ac-l1-eisenstein-datum), [L1.5](#ac-l1-su-padic-l-function), [L0.4](#ac-l0-eisenstein-ideal), [L0.8](#ac-l0-canonical-period-congruence-number), AutomorphicPadicLFunctions L4 (`ehls-eisenstein-measure`).

<a id="ac-l1-nonsingular-coefficient-coprimality"></a>

### L1.7 A nonsingular Fourier coefficient is prime to the p-adic L-function

Let A be the ring of integers of a finite extension of ℚ_p, 𝕀 a domain finite over Λ_{W,A}, 𝐟 ∈ M^{ord}(M, 1; 𝕀) an 𝕀-adic newform with (irred)_𝐟 and (dist)_𝐟, and Σ_0 ⊇ {ℓ | pMD_K}. There is a finite Σ ⊇ Σ_0 such that for D = (A, 𝕀, 𝐟, 1, 1, Σ) the set C_D of nonsingular coefficients c_D(β_i, x) of ℰ_D satisfies: (i) every height-one prime of Λ_D containing C_D is of the form PΛ_D with P a height-one prime of 𝕀[[Γ^+_K]]; (ii) if M = M^+M^- with M^- squarefree with an odd number of prime factors, all inert in K, and ρ̄_𝐟 ramified at every ℓ | M^-, then no height-one prime of Λ_D contains both L^Σ_{𝐟,K,1} and C_D (SU Prop. 13.4.1).

Assume the hypotheses of SU Prop. 12.2.5 on A; the auxiliary primes of Prop. 13.2.5 (a set of primes split in K not dividing the level) are part of the choice of Σ.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Prop. 13.4.1 and the paragraph before it, p. 217; Props 13.2.5, 13.3.4, pp. 210–213. Existence of a datum whose nonsingular coefficients share no height-one prime with L^Σ_{𝐟,K,1}. [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §1.4.5, p. 9. The proof uses formulas from §11 and the mod-p nonvanishing results of Vatsal and Finis.

The proof proceeds as follows. Express a Λ_D-combination of the c_D(β_i, x) as a product of Hecke L-values attached to auxiliary CM forms (SU §13.2–13.3, Props 13.2.5, 13.3.4). Apply the mod-p nonvanishing results of Vatsal and Finis for anticyclotomic twists (AutomorphicPadicLFunctions:L3h/finis-divisibility, mod-p-nonvanishing) to show that combination is not divisible by any height-one prime other than those pulled back from 𝕀[[Γ^+_K]]. Combine with [L1.5](#ac-l1-su-padic-l-function) (iii), which excludes the pulled-back primes from L^Σ_{𝐟,K,1}, to get (ii).

**Checks.**

- This is what makes ℰ_D nonzero modulo every height-one prime dividing L^Σ_{𝐟,K}, so that Thm 6.5.4 applies at those primes.

This uses [L1.6](#ac-l1-padic-eisenstein-family), [L1.5](#ac-l1-su-padic-l-function), AutomorphicPadicLFunctions L3h (`finis-divisibility`), AutomorphicPadicLFunctions L3h (`mod-p-nonvanishing`), AutomorphicPadicLFunctions L3h (`hsieh-hecke-nonvanishing`).

<a id="ac-l1-gu22-galois-pseudocharacter"></a>

### L1.8 The four-dimensional pseudo-character of the ordinary GU(2,2) Hecke algebra

For a neat K = K^0_pK^p ⊂ G(𝔸_f) and a finite set S of primes containing p and the primes where K_ℓ is not hyperspecial, there is a pseudo-representation T^S_{K^p}: G_K → h_{S,0}(K^p) of dimension four such that tr R_p(π) = λ^{ord}_π ∘ T^S_{K^p} for every p-ordinary cuspidal π of weight k with π_f^{K^p} ≠ 0 (SU Prop. 7.2.1), where R_p(π) is the four-dimensional Galois representation attached to π (imported from AutomorphicGaloisRepresentationsPartII: polarized, unramified outside S, crystalline at p when π_p is unramified, with the ordinary filtration at the primes above p). For a datum D, T_D is its composite with h_D, R_D the semisimple representation over the total fraction ring of h_D with trace T_D, and for each irreducible component J, R_J is either absolutely irreducible or, over a finite extension of Frac J, R_1 ⊕ R_2 with two-dimensional R_i satisfying R_i^c ≅ R_i^∨ ⊗ ε^{-3}ω^{1+c}_{K′} (SU Thm 7.3.1).

Assume k regular for the attachment of R_p(π) (SU Thm 7.1.1, from Morel and Shin as explained in Skinner 2010); (irred)_𝐟 and (dist)_𝐟 for Thm 7.3.1. The Galois representations of cuspidal representations of GU(2,2) and their local–global compatibility at p are imported, not constructed here.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Thm 7.1.1, p. 99; Prop. 7.2.1 and its proof, p. 101. The Galois representations of ordinary cuspidal representations of GU(2,2) and the pseudo-representation on the universal ordinary Hecke algebra. [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Thm 7.3.1 and its proof, pp. 103–105. Components of the Hecke algebra give irreducible or polarized-reducible representations.

The proof proceeds as follows. Define T(frob_v) := T_v (the Hecke operator giving −1 times the X^3-coefficient of the Hecke polynomial) for v ∉ S ∪ {p}, extend by continuity using Chebotarev density and compactness of h, and check independence of the approximating sequence on a Zariski-dense set of arithmetic points (proof of SU Prop. 7.2.1). The pseudo-representation identities hold because they hold at each classical point and these are dense. Thm 7.3.1: if R_J were a sum of two characters and an irreducible two-dimensional piece, specialize at a regular-weight point unramified at p to get a CAP representation, excluded by the residual shape tr ρ̄_D; otherwise R_J = R_1 ⊕ R_2 with the stated polarization.

The interface is used in [L1.9](#ac-l1-su-selmer-lower-bound) to σ of the lattice datum is the representation R_D over the localized Hecke algebra; in [L2s.6](#ac-l2s-cap-exclusion) to CLW and FW use the same pseudo-character argument on GU(3,1) (SU Prop. 7.2.1 cited there).

Provide `GU22PseudoChar.T`: T^S_{K^p}: G_K → h_{S,0}(K^p), a continuous four-dimensional pseudo-representation.

Provide `GU22PseudoChar.specialize`: λ^{ord}_π ∘ T = tr R_p(π) for every ordinary cuspidal π of level K^p.

Provide `GU22PseudoChar.frob`: T(frob_v) = T_v for v ∉ S ∪ {p}; the characteristic polynomial of frob_v is the Hecke polynomial Q_v.

Provide `GU22PseudoChar.polarization`: T(c g c) = T(g^{-1})·(similitude character) — the polarization inherited from each R_p(π).

Provide `GU22PseudoChar.components`: Dichotomy of Thm 7.3.1 for components J of 𝕋_D.

Provide `GU22PseudoChar.residual`: T_D modulo the maximal ideal is tr ρ̄_D.

Provide `GU22PseudoChar.ext`: Continuous pseudocharacters agreeing at all unramified Frobenius classes agree by Chebotarev density; compatible Hecke quotient maps transport the pseudocharacter.

**Checks.**

- T(1) = 4.
- The cuspidal pseudocharacter modulo I_D agrees with tr ρ_D modulo 𝔈_D through Λ_D/𝔈_D≅h_D^cusp/I_D. It need not admit an Eisenstein eigencharacter into Λ_D itself.
- A pseudo-character of dimension two (the GL₂ one of 𝐟) does not satisfy GU22PseudoChar.specialize: its value at 1 is 2.
- No component J has R_J = character ⊕ character ⊕ irreducible two-dimensional (the CAP shape), under (irred)_𝐟 and (dist)_𝐟.
- The residual pseudo-character of 𝕋_D is tr ρ̄_D: two characters and one irreducible two-dimensional constituent.

This uses AutomorphicGaloisRepresentationsPartII AG2.2 (`shin-regular-geometric-existence`), AutomorphicGaloisRepresentationsPartII AG2.2 (`discrete-unitary-galois-assembly`), AutomorphicGaloisRepresentationsPartII AG2.5 (`good-prime-unramified-polynomial`), AutomorphicGaloisRepresentationsPartII AG2.6 (`polarized-branch-de-rham-and-crystalline`), IntegralHeckeAndGaloisDeterminants IHG.4 (`classical-interpolation`), IntegralHeckeAndGaloisDeterminants IHG.4 (`frobenius-determinant-uniqueness`), [L1.1](#ac-l1-gu22-ordinary-hermitian-forms), [L1.3](#ac-l1-eisenstein-datum).

<a id="ac-l1-su-selmer-lower-bound"></a>

### L1.9 The Skinner–Urban Selmer lower bound from the Eisenstein ideal

Assume (irred)_𝐟, (dist)_𝐟 and 𝕀 integrally closed. Let T = (T_𝐟 ⊗_𝕀 𝕀[[Γ_K]])(det ρ_𝐟^{-1}σ^{-c}_ξε^{-c}_K) with its ordinary summand T^+, and Ch^Σ_K(ρ_𝐟 ⊗ σ_ξε_K) ⊆ 𝕀[[Γ_K]] the characteristic ideal of X^Σ_K(T, T^+). For a height-one prime P_0 ⊂ 𝕀[[Γ_K]] with P = P_0Λ_D such that the four G_{K,p}-characters of SU (7.3.3.a) are residually distinct modulo P: (i) if ord_P(L^Σ_{χ̄_𝐟ξ̄′}) = 0 then ord_{P_0}(Ch^Σ_K(ρ_𝐟 ⊗ σ_ξε_K)) ≥ ord_P(𝔈_D) (SU Thm 7.3.3); (ii) if ℰ_D ≢ 0 modulo P and ord_P(L^Σ_{𝐟,K,ξ}) ≥ 1, then ord_P(Ch^Σ_K) ≥ 1, and if moreover ord_P(L^Σ_{χ̄_𝐟ξ̄′}) = 0 then ord_P(Ch^Σ_K) ≥ ord_P(L^Σ_{𝐟,K,ξ}) (SU Thm 7.3.5).

The residual disjointness condition (7.3.3.a) is verified in the proof of Thm 7.3.5: the four characters δ²_fσ^{-1}_{χ_f}ε_Wε, δ_fσ^{-1}_{χ_f}σ_ξε_W, δ_fσ^{-1}_{χ_f}σ^c_ξε_W, σ_{χ_f}ε^{-1}_Wσ^{-1}_{ξ′}ε are not ≡ 1 modulo P, by (dist)_𝐟 and a codimension count.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §7.3.2 set-up, Thm 7.3.3, p. 105; Thm 7.3.5 and proof, pp. 107–108. The SU instance of the lattice construction and the passage from the Eisenstein ideal to the p-adic L-function.

The proof proceeds as follows. Set up the lattice datum of SU 7.3.2: A_0 = Λ_D, A = Λ̂_{D,P}, J_0 = 𝔈_D, R_0 = 𝕋_D, I_0 = I_D, V_0 = T_𝐟 ⊗ Λ_D, ρ_0 = ρ_𝐟 ⊗ σ_{χ̄_f,0}σ^{-c}_ξσ^c_ψε^{-2}, V^±_0 from T^+_𝐟, χ, χ′, ν, and σ from R_D. Apply [L0.7](#ac-l0-lattice-construction) (Prop. 4.5.6 and Cor. 4.5.7) and Shapiro ([L0.1](#ac-l0-sigma-primitive-selmer)) to pass from ρ_0 ⊗ χ^{-1} over Λ_D to ρ_𝐟 ⊗ σ_ξε_K over 𝕀[[Γ_K]]. Thm 7.3.5 combines (i) with [L1.6](#ac-l1-padic-eisenstein-family) (Thm 6.5.4) and checks (7.3.3.a).

**Checks.**

- The bound is height-one-prime by height-one-prime and needs ℰ_D ≢ 0 mod P; [L1.7](#ac-l1-nonsingular-coefficient-coprimality) supplies this at every P dividing L^Σ_{𝐟,K}.

This uses [L0.7](#ac-l0-lattice-construction), [L0.5](#ac-l0-su-lattice-datum), [L0.1](#ac-l0-sigma-primitive-selmer), [L1.3](#ac-l1-eisenstein-datum), [L1.8](#ac-l1-gu22-galois-pseudocharacter), [L1.6](#ac-l1-padic-eisenstein-family).

<a id="ac-l1-su-two-variable-theorem"></a>

### L1.10 Skinner–Urban's two-variable divisibility over K

Let L ⊆ ℚ̄_p be a finite extension of ℚ_p containing ℚ[µ_{Np}, i, D_K^{1/2}], 𝕀 a normal domain finite over Λ_{W,O_L}, and 𝐟 an 𝕀-adic ordinary eigenform of tame level N with χ_𝐟 = 1. Suppose N = N^+N^- with N^+ divisible only by primes split in K and N^- only by primes inert in K, N^- squarefree with an odd number of prime factors, (irred)_𝐟 and (dist)_𝐟, and ρ̄_𝐟 ramified at every ℓ | N^-. For every finite Σ containing the primes dividing ND_K, Ch^Σ_{K_∞}(𝐟) ⊆ (L^Σ_{𝐟,K}) (SU Thm 3.6.1). For a classical p-ordinary eigenform f ∈ S_k(Np^r, χ; L), k ≥ 2, with χ = ω^{k−2}χ_1 (χ_1 of p-power order and conductor) and the same hypotheses, Ch^Σ_{K_∞,L}(f) ⊆ (L^Σ_{f,K}) (SU Cor. 3.6.2).

Retain the stated hypotheses; the hypotheses on N^- and ρ̄_𝐟|_{I_ℓ} enter through Vatsal's theorem ([L1.5](#ac-l1-su-padic-l-function) (iii)); χ_𝐟 = 1 enters there and in the Galois argument; Σ ⊇ primes dividing ND_K avoids local–global compatibility away from p (SU remarks (i)–(v) after Thm 3.6.1).

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Thm 3.6.1 and remarks (i)–(v), pp. 41–42; Cor. 3.6.2 and proof, p. 42; end of §7, p. 108. The two-variable divisibility for Hida families and its specialization to classical forms.

The proof proceeds as follows. For each height-one prime P_0 of 𝕀[[Γ_K]] dividing L^Σ_{𝐟,K}, choose the datum of [L1.7](#ac-l1-nonsingular-coefficient-coprimality) so that ℰ_D ≢ 0 mod P = P_0Λ_D. If ord_P L^Σ_{χ̄_𝐟ξ̄′} = 0 apply [L1.9](#ac-l1-su-selmer-lower-bound) (ii); the Dirichlet factor is a unit at P because it lives in the cyclotomic variable only and P_0 is not pulled back ([L1.5](#ac-l1-su-padic-l-function) (iii)). Conclude ord_{P_0}(Ch^Σ) ≥ ord_{P_0}(L^Σ_{𝐟,K}) for every height-one P_0, hence the divisorial containment (end of SU §7, p. 108). Cor. 3.6.2: specialize along 𝕀 → O_L using (3.3.12.b), [L0.3](#ac-l0-selmer-specialization-control) (ii) and the comparison of L^Σ_{𝐟,K} with L^Σ_{f,K} (SU 3.4.6).

**Checks.**

- Oriented: the characteristic ideal is contained in the ideal of the p-adic L-function (L divides the characteristic power series).
- Integral, not after inverting p, under the stated hypotheses.

This uses [L1.9](#ac-l1-su-selmer-lower-bound), [L1.7](#ac-l1-nonsingular-coefficient-coprimality), [L1.5](#ac-l1-su-padic-l-function), [L0.3](#ac-l0-selmer-specialization-control), [L0.2](#ac-l0-primitive-imprimitive-comparison), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal-api-0`).

<a id="ac-l1-su-cyclotomic-divisibility"></a>

### L1.11 Skinner–Urban's cyclotomic divisibility

Let f ∈ S_k(Np^r, χ; L), k ≥ 2, be a p-ordinary cuspidal eigenform with (irred) and (dist) for ρ_f, χ = ω^{k−2}χ_1 with χ_1 of p-power order and conductor, and a prime q ≠ p with q ∥ N at which ρ̄_f is ramified; choose an imaginary quadratic K in which p splits, every prime dividing N/q splits and q is inert, so N^- = q. Then for every finite set of primes Σ, Ch^Σ_{ℚ_∞,L}(f)·Ch^Σ_{ℚ_∞,L}(f ⊗ χ_K) ⊆ (L^Σ_f·L^Σ_{f⊗χ_K}) (SU Cor. 3.6.3). This is the reverse divisibility exported to ModularIwasawaMainConjectures:L1/su-ordinary-theorem, in the normalization of the Σ-imprimitive ordinary Selmer dual and the canonical-period p-adic L-function; the equality (SU Thm 3.6.4, with Kato) is assembled there, not here.

Retain the stated hypotheses; the integral containment needs only these hypotheses. The integral equality additionally uses Kato's image condition (a basis with image containing SL₂(ℤ_p)), owned by the consumer. The identification with ModularIwasawaMainConjectures:L0's ordinary Selmer dual and canonical-period p-adic L-function is made in that roadmap's range (trivial character, p ∤ N, the range of SU Thm 3.6.4); outside it the statement is about SU's own Σ-primitive Selmer group and L^Σ_f.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Cor. 3.6.3 and proof, p. 42; proof of Thm 3.6.4 (choice of K), p. 43. The cyclotomic product divisibility and the choice of the auxiliary imaginary quadratic field.

The proof proceeds as follows. Reduce to Σ ∪ {p} containing all primes dividing ND_K (SU Lemma 3.2.17 and [L0.2](#ac-l0-primitive-imprimitive-comparison)). Apply [L1.10](#ac-l1-su-two-variable-theorem) (Cor. 3.6.2), then descend from K_∞ to the cyclotomic line: [L0.3](#ac-l0-selmer-specialization-control) (iii) (SU Prop. 3.2.11, Lemma 3.2.5, Cor. 3.2.9) gives Ch^Σ_{K^+_∞} = Ch^Σ_{ℚ_∞}(f)·Ch^Σ_{ℚ_∞}(f ⊗ χ_K) by Shapiro, and the restriction of L^Σ_{f,K} to Γ^+_K is L^Σ_f·L^Σ_{f⊗χ_K} up to unit (SU 3.4.6).

**Checks.**

- Matches the request of ModularIwasawaMainConjectures for SU Thm 3.6.1 and Cor. 3.6.3 in its stated source range; the auxiliary field K is allowed to depend on f.

This uses [L1.10](#ac-l1-su-two-variable-theorem), [L0.3](#ac-l0-selmer-specialization-control), [L0.2](#ac-l0-primitive-imprimitive-comparison), [L0.1](#ac-l0-sigma-primitive-selmer), [L1.5](#ac-l1-su-padic-l-function), ModularSymbolsPadicLFunctions L1.

### Examples

At an arithmetic quotient I→O, the SU coefficient ring becomes O[[Γ_K⁻×Γ_K]], with three independent pro-p variables. Its Krull dimension is four; the original Hida branch retains its additional weight direction. This distinguishes specialization from the invalid choice I=O as a finite branch over O[[W]].

At a residual Eisenstein point the trace is χ′+tr ρ₀+χ, so its value at the identity is 1+2+1=4 and its reciprocal characteristic polynomial has constant coefficient 1. The GL₂ family alone has trace 2 at the identity and cannot furnish this eigenpacket. A nonzero boundary coefficient of ℰ_D remains the product of the two specified analytic factors times the inducing form; it puts the form in M¹ rather than its cuspidal kernel M⁰. Reducing that boundary product to zero modulo (L_D), while retaining a nonconstant coefficient outside P, is exactly what produces a nonzero cuspidal congruence modulo (L_D).

### Dependencies

AutomorphicBundles B5 (`fj-injectivity`), AutomorphicBundles B5 (`global-fj-expansion`), [L0.8](#ac-l0-canonical-period-congruence-number), [L0.4](#ac-l0-eisenstein-ideal), [L0.7](#ac-l0-lattice-construction), [L0.2](#ac-l0-primitive-imprimitive-comparison), [L0.3](#ac-l0-selmer-specialization-control), [L0.1](#ac-l0-sigma-primitive-selmer), [L0.5](#ac-l0-su-lattice-datum), AutomorphicGaloisRepresentationsPartII AG2.2 (`discrete-unitary-galois-assembly`), AutomorphicGaloisRepresentationsPartII AG2.2 (`shin-regular-geometric-existence`), AutomorphicGaloisRepresentationsPartII AG2.5 (`good-prime-unramified-polynomial`), AutomorphicGaloisRepresentationsPartII AG2.6 (`polarized-branch-de-rham-and-crystalline`), AutomorphicPadicLFunctions L3h (`finis-divisibility`), AutomorphicPadicLFunctions L3h (`hsieh-hecke-nonvanishing`), AutomorphicPadicLFunctions L3h (`mod-p-nonvanishing`), AutomorphicPadicLFunctions L4 (`dl-siegel-hermitian-varieties`), AutomorphicPadicLFunctions L4 (`doubling-global-identity`), AutomorphicPadicLFunctions L4 (`ehls-eisenstein-measure`), AutomorphicPadicLFunctions L4 (`ehls-ordinary-forms-hecke`), AutomorphicPadicLFunctions L4 (`ehls-unitary-datum`), AutomorphicPadicLFunctions L4 (`local-zeta-at-p`), AutomorphicPadicLFunctions L4e (`ew-pullback-and-local-computations`), DirichletPadicLFunctions L4, IntegralHeckeAndGaloisDeterminants IHG.3 (`gln-hecke-polynomial`), IntegralHeckeAndGaloisDeterminants IHG.4 (`classical-interpolation`), IntegralHeckeAndGaloisDeterminants IHG.4 (`frobenius-determinant-uniqueness`), ModularSymbolsPadicLFunctions L1, PadicFamilies L0a (`ordinary-part-complexes`), PadicFamilies L0a (`profinite-ordinary-projector`), PadicFamilies L0a (`profinite-projector-exact`), PadicFamilies L1 (`family-period-line`), PadicFamilies L4 (`ordinary-big-galois-representation`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal-api-0`), `MvPowerSeries` (Mathlib).

## Layer L2s: Weight-two semi-ordinary GU(3,1) congruences

<a id="ac-l2s-semi-ordinary-weight-space"></a>

### L2s.1 The semi-ordinary weight space and projector for GU(3,1)

Let K be imaginary quadratic with p = v_0v̄_0 split, and GU(3,1) the unitary similitude group of signature (3,1), so that GU(3,1)(ℚ_p) ≅ GL_4(ℚ_p) × ℚ_p^× and the diagonal torus of the p-adic group gives a four-coordinate p-adic weight space (after fixing the similitude character) of characters (a_1, a_2, a_3; b_1). The semi-ordinary torus T_so(ℤ_p) ⊂ T(ℤ_p) is the two-dimensional subtorus of weights (0, 0, t^+; t^-), with Iwasawa algebra Λ_so = ℤ_p[[T_so(1+pℤ_p)]]. On the p-adic forms V on the Igusa tower put U_p := U^+_{p,2}U^+_{p,3}U^-_{p,1}; for every f ∈ V the limit e_so f := lim_{r→∞} U_p^{r!} f exists and defines the semi-ordinary projector e_so. A classical form is semi-ordinary if it is fixed by e_so; this asks unit U_p-eigenvalues only in the two directions of T_so, so it allows forms whose GL_2 part at p is not ordinary (a_p = 0 is allowed). Keep the finite character of T_so(ℤ_p)/T_so(1+pℤ_p) when using the full group algebra; it is not another power-series variable.

Assume p ≥ 3 split in K; the operators U^±_{p,i} are those of CLW (3.0.7)–(3.0.8) on p-integral forms. The convergence of U_p^{r!} on every f uses the finiteness property (F) of CLW Thm 4.6.1, proved there; the generic profinite projector is imported.

The source is [CLW](https://arxiv.org/pdf/2109.08375v1), Thm 2.9.1(1), p. 13; Thm 4.6.1 and proof, p. 29. The operator U_p = U^+_{p,2}U^+_{p,3}U^-_{p,1}, convergence of U_p^{r!} on every p-adic form, and the semi-ordinary projector e_so. [CLW](https://arxiv.org/pdf/2109.08375v1), §1, p. 3. The modular form is not assumed ordinary at p, so the standard Hida theory does not apply; the semi-ordinary theory replaces it.

The proof proceeds as follows. Define U_p and verify property (F) for forms in V^♭ by CLW Prop. 3.0.2 and Prop. 4.5.2, and for all of V by Prop. 4.5.3. Apply the profinite ordinary projector of PadicFamilies:L0a to the locally finite endomorphism U_p to obtain e_so.

The interface is used in [L2s.2](#ac-l2s-semi-ordinary-hida-theory) to the freeness and control theorems are for e_so-parts; in [L2s.3](#ac-l2s-semi-ordinary-klingen-family) to E^{Kling} is a measure valued in e_so V; in [L2.1](#ac-l2-general-weight-semi-ordinary-control) to FW §7.3 extends the same projector to general weight.

Provide `SemiOrd.torus`: The two-dimensional torus T_so; Λ_so=Z_p[[T_so(1+pZ_p)]] and its finite-character components inside Z_p[[T_so(Z_p)]].

Provide `SemiOrd.Up`: U_p = U^+_{p,2}U^+_{p,3}U^-_{p,1} acting on p-adic forms.

Provide `SemiOrd.proj`: e_so = lim U_p^{r!}, an idempotent commuting with the Hecke operators away from p.

Provide `SemiOrd.proj_idem`: e_so ∘ e_so = e_so.

Provide `SemiOrd.ord_le_so`: e_so ∘ e_ord = e_ord: ordinary forms are semi-ordinary.

Provide `SemiOrd.weight`: The weight map from Λ_so-families to characters (τ^+, τ^-) of T_so(ℤ_p).

Provide `SemiOrd.ext`: Two semi-ordinary forms are equal iff their ambient forms are equal; membership is e_so(f)=f. The projector transports along equivariant maps.

**Checks.**

- On a classical eigenform whose U_p-eigenvalue is a p-adic unit u, U_p^{r!}f = u^{r!}f → f because u^{r!} → 1 in ℤ_p^× along r!; on an eigenform with U_p-eigenvalue in pℤ_p the limit is 0.
- In the unitary normalization, a good supersingular weight-two GL₂ constituent has Satake valuations 0,0. It can occur in CLW’s semi-ordinary Klingen family although its classical GL₂ U_p roots have valuation 1/2,1/2. The extreme unitary valuations ±1/2 describe the ordinary case; they are not the supersingular example.
- After fixing a_1=a_2=0, Λ_so has two weight variables and Krull dimension three over Z_p; the finite torus character is retained separately. The unfixed weight tuple has four coordinates.
- Using the ordinary projector in place of e_so on the weight-two forms of a supersingular π gives zero, so it cannot produce the Klingen family of [L2s.3](#ac-l2s-semi-ordinary-klingen-family).
- Semi-ordinary is weaker than ordinary: an ordinary form is semi-ordinary, while a form whose GL_2 constituent at p has a_p = 0 can be semi-ordinary and is killed by the ordinary projector.

This uses PadicFamilies L0a (`locally-finite-action`), PadicFamilies L0a (`locally-finite-ordinary-projector`), PadicFamilies L0a (`profinite-ordinary-projector`), AutomorphicPadicLFunctions L4 (`ehls-unitary-datum`), AutomorphicPadicLFunctions L4 (`ehls-ordinary-forms-hecke`), `MvPowerSeries` (Mathlib).

<a id="ac-l2s-semi-ordinary-hida-theory"></a>

### L2s.2 Semi-ordinary Hida theory and the fundamental exact sequence

With e_so as in [L2s.1](#ac-l2s-semi-ordinary-weight-space): (1) the duals V^{0,*}_so = Hom(e_so V^0, ℚ_p/ℤ_p) and V^*_so = Hom(e_so V, ℚ_p/ℤ_p) are free of finite rank over Λ_so (vertical control, CLW Thm 3.0.7 for cusp forms, Thm 4.6.1 for all forms); (2) the spaces of Λ_so-families of tame level K^p_f, M^0_so = Hom_{Λ_so}(V^{0,*}_so, Λ_so) and M_so = Hom_{Λ_so}(V^*_so, Λ_so), specialize isomorphically at every weight (τ^+, τ^-) with 0 ≥ t^+ ≥ −t^- + 4 onto the limits of e_so-parts of mod p^m forms of that weight, and classical semi-ordinary forms embed into the specialization after inverting p (CLW (2.9.1)); (3) Thm 2.9.1(4) gives the exact sequence 0→M_so^0→M_so→⊕_g M_(0,0)(K′_{f,g};Z_p)⊗_Zp Z_p[[T_so(Z_p)]]→0. Thus the boundary uses the full torus group algebra, with its finite-character action. Only after the specified ξ/Γ_K base change does one obtain the boundary form used in Thm 8.1.1. Thm 2.9.1(3) gives surjectivity onto classical cuspidal forms for t^-≥A(t^+); this extra condition is not automatic from the cone in (2).

Assume the weights in (2) satisfy 0 ≥ t^+ ≥ −t^- + 4; for the Klingen family, 0 ≫ t^+ ≫ −t^-. The Shimura variety of GU(3,1), its toroidal and minimal compactifications, the Igusa tower and the boundary strata are imported from AutomorphicPadicLFunctions:L4 and AutomorphicBundles. Retain the finite torus character when passing from Λ_so to the full boundary group algebra. Classical cusp-surjectivity additionally requires t^-≥A(t^+).

The source is [CLW](https://arxiv.org/pdf/2109.08375v1), Thm 2.9.1, PDF pp. 13–14; Thm 3.0.7, p. 19; Prop. 4.4.1, p. 24; Thm 4.6.1, p. 29. Freeness, control, the boundary exact sequences and the vertical control theorem for semi-ordinary forms on GU(3,1). [CLW](https://arxiv.org/pdf/2109.08375v1), proof of Thm 8.1.1, p. 77. The fundamental exact sequence in the form used for the congruence.

The proof proceeds as follows. Base change and q-expansion: CLW Props 3.0.1–3.0.6; vertical control for cusp forms (Thm 3.0.7). The boundary: restriction to the strata Z_{g,n} gives the exact sequences (4.4.2)–(4.4.3) with the Siegel operators Φ_g (Prop. 4.4.1), whose global sections are forms on the zero-dimensional Shimura variety of GU(2). Finiteness (F) and the vertical control for all forms (Props 4.5.1–4.5.3, Thm 4.6.1); combine into Thm 2.9.1.

**Checks.**

- The exactness on the right is what allows a Λ_so-adic lift of the boundary values of the Klingen family, hence a cuspidal family congruent to it.

This uses [L2s.1](#ac-l2s-semi-ordinary-weight-space), PadicFamilies L0a (`profinite-projector-exact`), PadicFamilies L0a (`ordinary-part-complexes`), AutomorphicBundles B5 (`global-fj-expansion`), AutomorphicBundles B5 (`fj-injectivity`), AutomorphicPadicLFunctions L4 (`ehls-ordinary-forms-hecke`).

<a id="ac-l2s-semi-ordinary-klingen-family"></a>

### L2s.3 The semi-ordinary Klingen Eisenstein family on GU(3,1)

Let π and ξ satisfy CLW §5.2: π is weight two, each π_v is unramified, Steinberg or its unramified quadratic twist, π_p is unramified, some nonsplit q has π_q ramified, π is ramified at 2 if 2 is nonsplit, ρ̄_π|G_K is irreducible, and ξ has infinity type (0,k_0) with k_0 even. CLW addendum Thm 4.0.1 constructs two families E^{Kling}_i (i=1,2) in the specified space of ♮ semi-ordinary measures tensored with Q. They use different auxiliary data, have the same unramified/U_p eigensystem, and specialize to the semi-ordinary holomorphic Klingen series at ξτ of type (0,k), k≥6 even. Every constant term of either family is divisible by L^{Σ∪{ℓ,ℓ′}}_{ξ,Q}L^{Σ∪{ℓ,ℓ′}}_{π,K,ξ} in R[1/p], R=O_L^{ur}[[Γ_K]]. No integral unscaled measure or single-family unit coefficient is asserted.

Use the two auxiliary data sets of CLW addendum §3, not the original simultaneous-unit choice. The weakened ℓ-tower nonvanishing and the additional finite-set avoidance there are required. The Siegel Eisenstein measures on unitary groups, the pullback formula and the local doubling integrals are imported from AutomorphicPadicLFunctions:L4 and L4e (Eischen–Wan's ordinary U(3,1) family is their r = 2 case); CLW's semi-ordinary sections at p, which replace Eischen–Wan's ordinary ones, and the Klingen choices are owned here.

The source is [CLW](https://arxiv.org/pdf/2109.08375v1), §5.2–5.4, p. 31; Thm 5.5.1, p. 34; Prop. 5.6.1 and §5.6, pp. 35–36; Thm 5.9.1, p. 42; Prop. 5.10.1, p. 44. Set-up, doubling formula, auxiliary choices, the p-adic Siegel measure and the semi-ordinary Klingen family. [CLW](https://arxiv.org/pdf/2109.08375v1), §6.1, (6.1.1)–(6.1.2) and Thm 6.1.1, p. 46. Divisibility of the degenerate Fourier–Jacobi coefficients by L_{ξ,ℚ}·L_{π,K,ξ}. [CLW-addendum](https://web.math.ucsb.edu/~castella/CLW-addendum.pdf), §§2–3, pp. 2–3; Thm 4.0.1, pp. 4–5. Two ♮ Klingen families with the same eigensystem and rational constant-term divisibility.

The proof proceeds as follows. Choose the quaternion transfer and two local auxiliary data sets as in the addendum §§2–3. Its weakened nonvanishing suffices to make two selected factors units for each set, rather than all three for one set. Interpolate the Siegel Eisenstein series on GU(3,3) into a measure (Thm 5.9.1) and pull back along GU(3,1) × GU(0,2) ↪ GU(3,3) against π_D (Thm 5.5.1, doubling formula), applying e_so (Prop. 5.10.1). Use the local calculations of CLW §§5–7 and addendum Thm 4.0.1: both ♮ measure families have the same eigensystem and the specified constant-term divisibility in R[1/p]. CLW’s nonordinary p-sections are owned here; the ordinary local-zeta-at-p supplier does not supply them.

The interface is used in [L2s.4](#ac-l2s-fourier-jacobi-primitivity) to the joint ideal of the two families’ Fourier–Jacobi functional values avoids every height-one prime after inverting p; in [L2s.5](#ac-l2s-clw-eisenstein-congruence) to the congruence of E^{Kling} with a cuspidal family bounds E_{π,ξ}; in [L2.2](#ac-l2-vector-valued-klingen-family) to FW's general-weight analogue.

Provide `SemiOrdKlingen.family`: An indexed pair E_i in the ♮ semi-ordinary measure space tensored with Q, as in CLW addendum Thm 4.0.1; no unscaled integral measure is claimed.

Provide `SemiOrdKlingen.specialize`: Its value at τ is e_so of the holomorphic Klingen Eisenstein series of weight given by ξτ (∞-type (0,k), k ≥ 6).

Provide `SemiOrdKlingen.constantTerm`: For i=1,2 every constant term is divisible by L_{ξ,Q}L_{π,K,ξ} in R[1/p].

Provide `SemiOrdKlingen.hecke`: E^{Kling}_φ is an eigenvector for the unramified Hecke operators and U_p, with eigensystem λ_{π,ξ} defining the Eisenstein ideal E_{π,ξ}.

Provide `SemiOrdKlingen.fourierJacobi`: Its Fourier–Jacobi coefficients along the Klingen parabolic, valued in sections of line bundles on the boundary abelian scheme.

Provide `SemiOrdKlingen.sharedData`: Both families share π,ξ and the eigensystem; their auxiliary characters and local sections are indexed by i. A general-weight adaptation must retain that index.

Provide `SemiOrdKlingen.ext`: Equality of measure-valued forms follows from all permitted cusp Fourier–Jacobi expansions; integrating a character and extracting a coefficient commute wherever the construction is defined.

**Checks.**

- The interpolation theorem asserts the convergent holomorphic construction at type (0,k) with k≥6 even. It makes no assertion of nonexistence or nonconvergence at every smaller weight.
- At an interpolation point of either indexed family, its standard constant term has the complex L-value factors and local normalizations of CLW (6.1.1)–(6.1.2). On the family their divisibility is in R[1/p], not an unproved integral measure lattice.
- The Galois representation of an interpolation point is ρ_π|_{G_K} twisted, plus two characters: three constituents of dimensions 2, 1, 1.
- For a supersingular π (a_p = 0) the ordinary-projected Klingen family vanishes, while E^{Kling}_φ does not.
- Shared local test data: the sections at p and the auxiliary characters are fixed before any arithmetic conclusion, and FW's general-weight family ([L2.2](#ac-l2-vector-valued-klingen-family)) reuses them.

This uses [L2s.2](#ac-l2s-semi-ordinary-hida-theory), AutomorphicPadicLFunctions L4e (`klingen-family`), AutomorphicPadicLFunctions L4e (`ew-siegel-eisenstein-measure`), AutomorphicPadicLFunctions L4e (`ew-pullback-and-local-computations`), AutomorphicPadicLFunctions L4e (`constant-term-divisibility`), AutomorphicPadicLFunctions L4 (`doubling-global-identity`), AutomorphicPadicLFunctions L3h (`hsieh-hecke-nonvanishing`), AutomorphicPadicLFunctions L3h (`theorem-c`).

<a id="ac-l2s-fourier-jacobi-primitivity"></a>

### L2s.4 Joint height-one coprimality of two semi-ordinary Fourier–Jacobi families

For the pair E_i of [L2s.3](#ac-l2s-semi-ordinary-klingen-family), let J⊂R[1/p] be the ideal generated by all β=1 Fourier–Jacobi functional values indexed by i and the permitted (g,u) of CLW addendum Thm 4.0.1. Then J is contained in no height-one prime of R[1/p]. This does not assert that either single family has a unit coefficient or that J is the unit ideal. The local expansions, triple-product identities and Rallis pairings are those of CLW §7; the addendum replaces the original auxiliary-unit choice.

Use precisely the two auxiliary data sets of addendum §3. Its first set makes L_5,L_6 units with L_1 nonzero; its second makes L_1,L_5 units with L_6 nonzero, while L_2 remains a fixed nonzero scalar. Prove `ichinoTripleProduct` in the form stated under the AutomorphicLFunctionsAndLocalFactors supplier contract (Wan-2020 §8.4, pp. 79–80), with the translated-pairing variant, and apply it with the local triple product integrals of CLW Props 7.9.1–7.12.1.

The source is [CLW](https://arxiv.org/pdf/2109.08375v1), §7: Prop. 7.4.2 p. 57, Prop. 7.6.1 p. 61, Prop. 7.7.1 p. 64, Prop. 7.9.1 p. 67, Props 7.11.1–7.11.3 pp. 68–73, Prop. 7.12.1 p. 73. The Fourier–Jacobi computation: Jacobi-group expansion, CM family, Rallis inner products, triple product integrals at nonsplit places. [Wan-2020](https://arxiv.org/pdf/1408.4044v5), introduction, steps (1)–(5), pp. 5–6. The five-step pattern: Fourier–Jacobi coefficient of the Siegel series, restriction, pairing with θ⋆ and h, interpolation, Ichino's formula. [CLW-addendum](https://web.math.ucsb.edu/~castella/CLW-addendum.pdf), §3, pp. 2–3; Thm 4.0.1 and proof, pp. 4–5. The two auxiliary choices and joint height-one coprimality, proved using independent variable directions.

The proof proceeds as follows. The β-th Fourier–Jacobi coefficient of the Siegel Eisenstein series on GU(3,3) is a finite sum of products of Siegel Eisenstein series on U(2,2) and theta functions on the unitary Jacobi group (CLW Prop. 7.4.2; the Jacobi group and Fourier–Jacobi periods are MetaplecticAutomorphicForms:MP.6's). Restrict to (N·U(2)) × U(2), pair with θ⋆ and then with h via the doubling formula; the result is a triple product integral ∫ h θ f (Props 7.6.1, 7.7.1). Apply addendum Thm 4.0.1: after its finite integral coefficient extension and power map, J contains, up to units, the nonzero factors L_{1,1} and L_{6,2} in independent rank-one directions. They have no common height-one prime. Descend this assertion along the finite integral extension; it gives height-one avoidance for J in R[1/p].

**Checks.**

- For each P∤p choose one indexed family and functional whose value is not in P. This local choice, rather than a global unit from one family, is the input to the congruence proof.

This uses [L2s.3](#ac-l2s-semi-ordinary-klingen-family), MetaplecticAutomorphicForms MP.6 (`unitary-jacobi-group`), MetaplecticAutomorphicForms MP.6 (`fourier-jacobi-period`), MetaplecticAutomorphicForms MP.6 (`rallis-inner-product`), MetaplecticAutomorphicForms MP.6 (`theta-integral-factorization`), AutomorphicPadicLFunctions L3h (`hsieh-hecke-nonvanishing`), AutomorphicPadicLFunctions L3h (`theorem-b`), PadicFamilies L5 (`katz-padic-l-function`), AutomorphicLFunctionsAndLocalFactors AL.3 (Whittaker models and local factors).

<a id="ac-l2s-clw-eisenstein-congruence"></a>

### L2s.5 The CLW Eisenstein ideal is bounded by the p-adic L-functions

Let ϕ be as in CLW Prop. 7.11.2 and E_{π,ξ} ⊆ Ô^{ur}_L[[Γ_K]] the Eisenstein ideal ([L0.4](#ac-l0-eisenstein-ideal)) of the semi-ordinary cuspidal Hecke algebra 𝕋^0_{so,ξ,Γ_K} for the eigensystem of E^{Kling}_ϕ. For every height-one prime P of Ô^{ur}_L[[Γ_K]] with P ∩ Ô^{ur}_L = 0, ord_P(L^{Σ∪{ℓ,ℓ′}}_{π,K,ξ}·L^{Σ∪{ℓ,ℓ′}}_{ξ,ℚ}) ≤ ord_P(E_{π,ξ}) (CLW Thm 8.1.1).

Assume P not containing p (P ∩ Ô^{ur}_L = 0).

The source is [CLW](https://arxiv.org/pdf/2109.08375v1), Thm 8.1.1 and proof, p. 77. The congruence between the semi-ordinary Klingen family and cusp forms, measured by L_{π,K,ξ}L_{ξ,ℚ}. [CLW-addendum](https://web.math.ucsb.edu/~castella/CLW-addendum.pdf), Thm 5.0.1, PDF p. 6. The repaired proof of CLW Thm 8.1.1, choosing an indexed family separately at each height-one prime.

The proof proceeds as follows. Fix P∤p and choose one of the two families with a Fourier–Jacobi functional value outside P (addendum Thm 5.0.1). Use the fundamental exact sequence to lift its boundary values divided by L_{π,K,ξ}L_{ξ,Q} modulo P^r. Subtract to obtain a cuspidal family modulo P^r; its chosen functional value is a P-unit, so the congruence class is nonzero. The eigensystem therefore yields E_{π,ξ}⊂P^r locally for r=ord_P(L·L); hence ord_P(E_{π,ξ})≥r. The original proof’s final ≤ sign on PDF p. 78 is reversed, while its theorem statement is correct.

**Checks.**

- The bound is height-one prime by height-one prime and excludes P ∋ p; it is one-sided.

This uses [L2s.2](#ac-l2s-semi-ordinary-hida-theory), [L2s.3](#ac-l2s-semi-ordinary-klingen-family), [L2s.4](#ac-l2s-fourier-jacobi-primitivity), [L0.4](#ac-l0-eisenstein-ideal).

<a id="ac-l2s-cap-exclusion"></a>

### L2s.6 Irreducibility of the GU(3,1) pseudo-character: excluding CAP components

Let 𝕋 be the semi-ordinary (or ordinary) cuspidal Hecke algebra of GU(3,1) localized at the Eisenstein maximal ideal, T: G_K → 𝕋 its four-dimensional pseudo-character (built as in [L1.8](#ac-l1-gu22-galois-pseudocharacter) from the Galois representations of cuspidal representations of U(3,1)), and suppose ρ̄_π|_{G_K} is irreducible. Then for every Frac(A)-algebra map λ: 𝕋 ⊗ Frac(A) → K′, the representation σ_λ is absolutely irreducible or contains an absolutely irreducible two-dimensional subrepresentation whose trace is ≡ χ + χ′ (with χ′=χ^{-c} here because ν=1) modulo I — Wan20's property (9) (CLW proof of Thm 8.2.1). If instead T = δ_1 + δ_2 + δ_3 with δ_3 two-dimensional and residually tr ρ̄_π, then at an arithmetic point x of weight (0,0,t^+;t^-) with 0 ≫ t^+ ≫ −t^-, a twist of the specialization of δ_3 descends to a G_ℚ-representation ρ′_{3,x} which is modular (ordinary case: as in SU Thm 7.3.1; non-ordinary case: ρ_Π|_{G_{K,p}} is crystalline by a Jacquet-module argument and the semi-ordinary slopes, and Kisin's theorem applies; in general weight FW uses Pan's theorem), so Π is CAP, which Harris's Thm 2.5.6 excludes in these weights.

Assume ρ̄_π|_{G_K} irreducible; arithmetic points in the absolutely convergent range of sufficiently regular weight. The unitary forms and Hecke operators are the AutomorphicPadicLFunctions:L4 carriers; the semi-ordinary projector is L2s's own, since L4 plans only the ordinary one. The CAP input is `harris_noHolomorphicKlingenCAP` (Harris (1984), Theorem 2.5.6, as applied in SU Theorem 7.3.1, CLW pp. 79–80 and FW p. 97): holomorphic U(3,1) representations in the sufficiently regular weight range cannot have a Klingen-type CAP eigensystem. This holomorphic exclusion is the target `harris_noHolomorphicKlingenCAP` of this subsection, stated under the AutomorphicSpectralTheory supplier contract, and is used in addition to the GL₂ modularity theorem.

The source is [CLW](https://arxiv.org/pdf/2109.08375v1), proof of Thm 8.2.1, property (9), pp. 79–80. The CAP-exclusion argument in the ordinary case (SU Thm 7.5, Harris Thm 2.5.6) and the non-ordinary case (Jacquet modules, crystallinity, Kisin). [FW](https://arxiv.org/pdf/2107.13726v3), proof of Thm 7.32, p. 97. The same argument in general weight, with modularity from Pan's Thm 1.0.4.

The proof proceeds as follows. Suppose the pseudo-character is a sum δ_1 + δ_2 + δ_3; residual irreducibility of ρ̄_π gives a two-dimensional 𝕋-valued representation for δ_3. Ordinary π: the specialization of δ_3 at x is ordinary and modular by the SU argument. Non-ordinary π: Edixhoven makes ρ̄_π|_{G_{ℚ_p}} irreducible; Jacquet modules show Π_p is an unramified principal series (the semi-ordinary valuations (8.2.4)–(8.2.5) force distinct ratios ≠ p^{±1}), so ρ_Π|_{G_{K,p}} and ρ′_{3,x} are crystalline; ρ̄′_{3,x} is not induced from ℚ(√p*), so Kisin's modularity lifting applies (FW: Pan's Fontaine–Mazur theorem for de Rham ρ with ρ̄|_{G_{ℚ_p}} absolutely irreducible). Modularity of ρ′_{3,x} makes Π CAP (Klingen type), contradicting Harris Thm 2.5.6 for the chosen weights.

**Checks.**

- In both [L2s.7](#ac-l2s-clw-main-divisibility) and [L2.6](#ac-l2-fw-greenberg-divisibility) the modularity theorem for the two-dimensional constituent and holomorphic CAP exclusion must both be applied. Attaching its Galois representation alone is insufficient.

This uses [L1.8](#ac-l1-gu22-galois-pseudocharacter), AutomorphicGaloisRepresentationsPartII AG2.2 (`discrete-unitary-galois-assembly`), AutomorphicGaloisRepresentationsPartII AG2.6 (`polarized-branch-de-rham-and-crystalline`), GL2ModularityLifting R32.4 (`pan-residually-irreducible-fontaine-mazur`), GL2ModularityLifting R32.2 (`odd-prime-de-rham-lifting`).

<a id="ac-l2s-clw-main-divisibility"></a>

### L2s.7 The Castella–Liu–Wan divisibility over the cyclotomic-localized ring

Let K be imaginary quadratic, p ≥ 3 split in K, and π, ξ as in CLW §5.2. Let Γ^+_K ⊂ Γ_K be the rank-one ℤ_p-submodule on which complex conjugation acts by +1 and R := O^{ur}_L[[Γ_K]] ⊗_{O_L[[Γ^+_K]]} Frac(O_L[[Γ^+_K]]), the localization inverting every nonzero element of the cyclotomic coefficient subring O_L[[Γ^+_K]]. Then, as fractional ideals of R, (L_{π,K,ξ}) ⊇ char_R(X^{ur}_{π,K,ξ} ⊗_{A} R), where X_{π,K,ξ} is the dual of the Selmer group of T_{π,K,ξ} = T_π(ε^2_{cyc})|_{G_K}(ξ^{-1}) ⊗ ℤ_p[[Γ_K]](Ψ^{-1}_K) with relaxed condition at p, unramified condition at p̄, and unramified conditions at every place away from p (CLW Thm 8.2.1(1)). The localization is in the cyclotomic subring; it is not the inversion of p. Here A=O_L^{ur}[[Γ_K]] and X^{ur} denotes extension to A first. The final tensor is over A; tensoring the A-module X again over the smaller cyclotomic subring would duplicate variables. This localization also inverts p, but inverts many additional elements.

Assume CLW §5.2; the excluded height-one primes are exactly those with P ∩ O_L[[Γ^+_K]] ≠ 0 (pulled back from the cyclotomic line) — in particular primes where (X_{ξ∘Nm} ⊗ ℚ)_P ≠ 0 may be among them. If X_{π,K,ξ} is not torsion its characteristic ideal is 0 and the statement is empty.

The source is [CLW](https://arxiv.org/pdf/2109.08375v1), Thm 8.2.1(1), p. 78; proof pp. 79–81. The divisibility over R and its proof by the lattice construction, with the explicit exclusion of cyclotomic height-one primes. [CLW](https://arxiv.org/pdf/2109.08375v1), (1.0.1)–(1.0.2), p. 3. The Selmer group with relaxed condition at p and unramified condition at p̄. [CLW-addendum](https://web.math.ucsb.edu/~castella/CLW-addendum.pdf), Thm 5.0.2, PDF p. 6. The main theorem’s statements remain unchanged after the repair.

The proof proceeds as follows. Reduce to the Σ ∪ {ℓ,ℓ′}-primitive inclusion ([L0.2](#ac-l0-primitive-imprimitive-comparison); JSW Thm 6.1.6 and Greenberg–Vatsal Prop. 2.4). For P with P ∩ O_L[[Γ^+_K]] = 0, the inequality ord_P(L) ≤ length(X_P) follows from ord_P(E_{π,ξ}) ≤ length(X_P) by [L2s.5](#ac-l2s-clw-eisenstein-congruence) (L_{ξ,ℚ} lives in the cyclotomic variable, hence is a unit at P). Set up the lattice datum (1)–(5) with ν trivial, χ = ξΨ_K, ρ from ρ_π, σ the pseudo-representation of the semi-ordinary Hecke algebra, I = E_{π,ξ}A_P; check (6)–(8) as in Wan20 and (9) by [L2s.6](#ac-l2s-cap-exclusion); apply [L0.7](#ac-l0-lattice-construction) (Wan20 Prop. 9.2) where ord_P(E_{π,ξ}) > 0 and (X_{ξ∘Nm} ⊗ ℚ)_P = 0.

**Checks.**

- The statement is one-sided and localized; neither torsion of X nor equality is proved here.
- Height-one primes pulled back from O_L[[Γ^+_K]] are not controlled: CLW cannot prove the analogue of Wan20 Lemma 9.3 with π fixed.

This uses [L2s.5](#ac-l2s-clw-eisenstein-congruence), [L2s.6](#ac-l2s-cap-exclusion), [L0.7](#ac-l0-lattice-construction), [L0.5](#ac-l0-su-lattice-datum), [L0.1](#ac-l0-sigma-primitive-selmer), [L0.2](#ac-l0-primitive-imprimitive-comparison), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`).

<a id="ac-l2s-clw-integrality-and-p-inverted"></a>

### L2s.8 Integrality of the CLW p-adic L-function and the p-inverted divisibility

In the setting of [L2s.7](#ac-l2s-clw-main-divisibility): (a) if ξ_p ≢ ξ_p̄ modulo the maximal ideal of O_L and the CM family through σ_ξ satisfies case (A) or (B) of [L0.9](#ac-l0-hida-tilouine-anticyclotomic), then L_{π,K,ξ} ∈ O^{ur}_L[[Γ_K]]; under case (C) alone, L_{π,K,ξ} ∈ O^{ur}_L[[Γ_K]] ⊗ ℚ; (b) if ξ_p ≢ ξ_p̄, case (C) of L0.9 holds, and moreover ξ|_{𝔸_ℚ^×} = ω² (ω the Teichmüller character) with k_0 ≡ 0 mod 2(p − 1), the local base-change root number ε_v(1/2, BC(π) × ξ_0) equals 1 at every finite place v nonsplit in K, and the conductor of ξ is divisible only by primes split in K, then (L_{π,K,ξ}) ⊇ char_{O^{ur}_L[[Γ_K]] ⊗ ℚ}(X_{π,K,ξ} ⊗ ℚ) (CLW Thm 8.2.1(2)): the containment holds after inverting p, without the cyclotomic localization. This is the source-qualified input that RankZeroOneBSD:BSD.6a imports for its supersingular branch; it is not a nonordinary equality. CLW state (a) under ξ_p ≢ ξ_p̄ alone for every p ≥ 3; the extra conditions are those of the CM congruence theorems their proof cites, and the remaining integral case at p = 3 is L0.9's open residual target, which no endpoint here uses. Part (b) is after inverting p, so it needs only case (C), and it keeps p = 3.

Assume (a) needs residual distinctness ξ_p ≢ ξ_p̄, which gives (irred) and (dist) for the CM form σ_ξ, and case (A) or (B) of L0.9 for the integral statement. (b) adds the four listed conditions to case (C); the containment is only after ⊗ ℚ. Under the conductor condition of (b) every prime of the conductor of ξ splits in K, so the factor ∏_{𝔩|c″}(1+N𝔩) of L0.9(B) is empty.

The source is [CLW](https://arxiv.org/pdf/2109.08375v1), Thm 8.2.1(2), p. 78; proof of (2), p. 81. Integrality via L^{Hida}, Hida–Tilouine and Hida's anticyclotomic main conjecture, and the second containment from Hsieh's µ = 0. [Wan-2020](https://arxiv.org/pdf/1408.4044v5), Thm 1.1, pp. 2–3. Wan's three-variable theorem under conditions (a)–(g), with L^{Hida} integral when g_ξ satisfies (dist) and (irred). [CLW-addendum](https://web.math.ucsb.edu/~castella/CLW-addendum.pdf), Thm 5.0.2, PDF p. 6. The integrality and main-divisibility statements survive the two-family correction.

The proof proceeds as follows. (a): as in Wan20 §7E, build L^{Hida}_{π,K,ξ} as the product of Hida's Rankin–Selberg p-adic L-function for the ordinary CM family g through σ_ξ and the newform f, and Katz's p-adic L-function on the line interpolating values at 1; only the ordinarity of g is used. Apply `cmCongruence_dvd_katz` of [L0.9](#ac-l0-hida-tilouine-anticyclotomic) in the case at hand: CLW p. 81 invokes HT93 Thm 7.1 and (8.8b) and Hid91 Lemma 5.3(vi) for the Petersson-norm normalization, and HT93/HT94/Hid06 for the congruence ideal. Hida's Rankin–Selberg function has denominator H(g), so L^{Hida} is integral in cases (A) and (B) and rational-integral in case (C). The application is confined to the stated CM-theta families. (b): Hsieh's vanishing of the anticyclotomic µ-invariant shows L_{π,K,ξ} lies in no height-one prime pulled back from O_L[[Γ^+_K]] other than possibly (p), so combining with [L2s.7](#ac-l2s-clw-main-divisibility) the excluded primes contribute nothing after inverting p.

**Checks.**

- The µ=0 comparison uses AutomorphicPadicLFunctions L3h, Theorem B; the integral coefficient statement also needs the CM congruence divisibility of L0.9. Vanishing µ alone does not prove the latter.
- At p = 3 with a tame conductor 𝔫 = 7, φ(7) = 6 is divisible by 3, so neither case (A) nor case (B) applies: (a) is then only claimed in the ⊗ℚ form, while (b) still holds. At p = 3 with 𝔫 = 5 and the other conditions of (B), (a) holds integrally.
- Case (A) at p = 3 is never available, since Hid06 assumes p > 3; a statement deriving p = 3 integrality from Hid06 alone is rejected.

This uses [L2s.7](#ac-l2s-clw-main-divisibility), [L0.9](#ac-l0-hida-tilouine-anticyclotomic), AutomorphicPadicLFunctions L3h (`theorem-b`), AutomorphicPadicLFunctions L3h (`theorem-a`), PadicFamilies L5 (`katz-padic-l-function`), PadicFamilies L5 (`katz-hida-tilouine-tame`), PadicFamilies L5.

### Examples

On a semi-ordinary eigenvector with U_p-eigenvalue 1, U_p^{r!} is the identity; on one with eigenvalue p it tends to zero. A supersingular weight-two GL₂ constituent has slopes 1/2,1/2 for its classical roots, yet the two unitary-normalized Satake valuations used here are 0,0. Replacing the semi-ordinary projector by the GL₂ ordinary projector kills this permitted constituent.

For the commutative-algebra model A=k[[X,Y]], the ideal (X,Y) is proper but lies in no height-one prime: a height-one prime containing X is (X), which does not contain Y. Thus joint height-one avoidance neither says that the coefficient ideal is A nor that one coefficient is globally a unit. Localizing at (X) makes Y a unit; localizing at (Y) makes X a unit. This is the distinction required by the two indexed rational families of the CLW addendum. Their denominators remain inverted; the computation does not construct an unscaled integral family.

### Dependencies

AutomorphicBundles B5 (`fj-injectivity`), AutomorphicBundles B5 (`global-fj-expansion`), [L0.4](#ac-l0-eisenstein-ideal), [L0.9](#ac-l0-hida-tilouine-anticyclotomic), [L0.7](#ac-l0-lattice-construction), [L0.2](#ac-l0-primitive-imprimitive-comparison), [L0.1](#ac-l0-sigma-primitive-selmer), [L0.5](#ac-l0-su-lattice-datum), [L1.8](#ac-l1-gu22-galois-pseudocharacter), AutomorphicGaloisRepresentationsPartII AG2.2 (`discrete-unitary-galois-assembly`), AutomorphicGaloisRepresentationsPartII AG2.6 (`polarized-branch-de-rham-and-crystalline`), AutomorphicLFunctionsAndLocalFactors AL.3, AutomorphicPadicLFunctions L3h (`hsieh-hecke-nonvanishing`), AutomorphicPadicLFunctions L3h (`theorem-a`), AutomorphicPadicLFunctions L3h (`theorem-b`), AutomorphicPadicLFunctions L3h (`theorem-c`), AutomorphicPadicLFunctions L4 (`doubling-global-identity`), AutomorphicPadicLFunctions L4 (`ehls-ordinary-forms-hecke`), AutomorphicPadicLFunctions L4 (`ehls-unitary-datum`), AutomorphicPadicLFunctions L4e (`constant-term-divisibility`), AutomorphicPadicLFunctions L4e (`ew-pullback-and-local-computations`), AutomorphicPadicLFunctions L4e (`ew-siegel-eisenstein-measure`), AutomorphicPadicLFunctions L4e (`klingen-family`), GL2ModularityLifting R32.2 (`odd-prime-de-rham-lifting`), GL2ModularityLifting R32.4 (`pan-residually-irreducible-fontaine-mazur`), MetaplecticAutomorphicForms MP.6 (`fourier-jacobi-period`), MetaplecticAutomorphicForms MP.6 (`rallis-inner-product`), MetaplecticAutomorphicForms MP.6 (`theta-integral-factorization`), MetaplecticAutomorphicForms MP.6 (`unitary-jacobi-group`), PadicFamilies L0a (`locally-finite-action`), PadicFamilies L0a (`locally-finite-ordinary-projector`), PadicFamilies L0a (`ordinary-part-complexes`), PadicFamilies L0a (`profinite-ordinary-projector`), PadicFamilies L0a (`profinite-projector-exact`), PadicFamilies L5, PadicFamilies L5 (`katz-hida-tilouine-tame`), PadicFamilies L5 (`katz-padic-l-function`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`), `MvPowerSeries` (Mathlib).

## Layer L2: General weights, reciprocity and seed main conjectures

<a id="ac-l2-general-weight-semi-ordinary-control"></a>

### L2.1 Semi-ordinary Hida theory on GU(3,1) in general weight

For f a normalized cuspidal eigenform of even weight k ≥ 2 and the vector-valued semi-ordinary forms on GU(3,1) of weight k = (a_1, a_2, a_3; b_1) in the family set X_ρ of Fouquet–Wan: the semi-ordinary parts e_α·V_k(K_0(p,p^n)) are p-divisible with uniformly bounded classical dimensions (Props 7.9–7.10); for each weight k = (a_1, a_2, a_3; b_1) ∈ X_ρ there is A(a) such that, for b_1 large compared with A(a), the restriction e_α M_k(K_0(p), O) ⊗ ℚ_p/ℤ_p → e_α·V_k(K_0(p)) is an isomorphism (FW Thm 7.11); for q = 0 or ∅ the Λ̃-adic families V^q_so are free of finite rank and M^q_so(K, Λ̃) ⊗ Λ̃/P_k ≅ e_α M^q_k(K, O) at such weights (Thm 7.12), with Thm 7.15 and the weight-k boundary sequence of Thm 7.17; and the short sequence of cusp forms, forms and boundary forms is exact (Thm 7.18). These extend [L2s.2](#ac-l2s-semi-ordinary-hida-theory) (CLW, weight two) to general weight and are the only new Hida-theoretic input L2 owns.

Assume weights in FW's set X_ρ; level K_0(p, p^n); the unitary Shimura data and Igusa varieties as in FW §7.3.1–7.3.3, imported from AutomorphicPadicLFunctions:L4. Fix ρ=(a_1,a_2). The full torus algebra has four variables; the fixed-ρ family varies (a_3,b_1). Thm 7.11 requires b_1>A(a,n); Thm 7.12 identifies classical specializations only in its sufficiently regular range. Prop. 7.13 additionally assumes ρ̄_f|G_Qp irreducible, a_1=a_2=0, a_3≡b_1≡0 mod p−1, and a_2−a_3 and a_3+b_1 sufficiently large; its conclusion gives the required unramified principal-series points.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), §7.3.4–7.3.5: Props 7.5, 7.7–7.10, Thms 7.11, 7.12, Prop. 7.13, Thms 7.15, 7.17, 7.18, pp. 83–88. Semi-ordinary forms and control theorems on GU(3,1) for general weight. [FW](https://arxiv.org/pdf/2107.13726v3), §7.1, p. 80. The Hida theory of CLW §§2–4 (with its fundamental exact sequence) is the input; §7.3 develops what is needed in general weight.

The proof proceeds as follows. Vertical control for the vector-valued sheaves (FW Props 7.5, 7.7–7.10) following CLW §§3–4. Uniform boundedness of dimensions and classicality (Thm 7.11, Prop. 7.13). Freeness and the boundary exact sequence (Thms 7.12, 7.15, 7.17, 7.18), with the Siegel operators of L2s.

**Checks.**

- At the weight-two scalar specialization the control map is the L2s semi-ordinary control map. Varying the other highest-weight coordinates requires the vector-valued control and its separate regularity bound.

This uses [L2s.2](#ac-l2s-semi-ordinary-hida-theory), [L2s.1](#ac-l2s-semi-ordinary-weight-space), AutomorphicPadicLFunctions L4 (`ehls-ordinary-forms-hecke`), PadicFamilies L0a (`profinite-projector-exact`).

<a id="ac-l2-vector-valued-klingen-family"></a>

### L2.2 The vector-valued Klingen Eisenstein family and the Greenberg p-adic L-function

Let p≥3 split in the imaginary quadratic field K, let π = π_f be the unitary automorphic representation of a weight-k form f, and let Σ be a finite set containing the bad primes. (i) There is L^Σ_{f,K,ξ_0} ∈ Λ_{K,O^{ur}} ⊗ ℚ_p interpolating, at characters ξ_φ of Γ_K that are avatars of Hecke characters of conductor p and infinity type (κ_φ/2 + m_φ, −κ_φ/2 − m_φ) with κ_φ ≥ 6 even and m_φ ≥ (k−2)/2, the values L^Σ(π̃, ξ_φ, (κ_φ − 1)/2) times the stated periods and local factors (FW Prop. 7.19(i), from Eischen–Wan Thm 1.2); (ii) there is a family of formal q-expansions E_{f,ξ_0} whose specializations at a Zariski-dense set of arithmetic points are the Fourier–Jacobi expansions of the highest weight vectors of the holomorphic vector-valued Klingen Eisenstein series on GU(3,1) built by the pullback formula, eigen for U_{t+} with nonzero eigenvalue (Prop. 7.19(ii)); (iii) the constant terms a_{t,[g]}(0) are divisible by L^Σ_{f,K,ξ_0}·L^Σ_{τ̄′} (Prop. 7.19(iii)). After the reparametrization t^{-c}_{ξ′_0}, L^{Gr,Σ}_{f,K} := t^{-c}_{ξ′_0}(L_{f,K,ξ_0}) is the Greenberg Rankin–Selberg p-adic L-function, it equals L^{Hida}_{f⊗g}·L^{Katz}_K·h_K (FW Cor. 7.21, [L2.3](#ac-l2-greenberg-function-factorization)) and lies in O^{ur}[[Γ_K]] (FW Lemma 7.22). The multiplier in Prop. 7.19(i) is Ω_p^{4m+2κ}/Ω_∞^{4m+2κ} · c′_φ · p^{κ−3} · g(ξ_{φ,2})² · ∏_{i=1}²(χ_i^{-1}ξ_{φ,2}^{-1})(p), where Lemma 7.20 gives c′_φ=Γ(κ+m−k/2)Γ(κ+m+k/2−1)2^{−3κ−4m+1}π^{1−2κ−2m}i^{k−κ−2m−1}. The highest weight is (m+(k−2)/2,m−(k−2)/2,0;κ); after reparametrization it is ((k−2)/2,−(k−2)/2,−m;κ+m).

Assume Eischen–Wan's distinct-Satake-parameter assumption is unnecessary in the U(2) case (FW remark after Prop. 7.19). The Klingen family of Eischen–Wan (AutomorphicPadicLFunctions:L4e) is the analytic carrier; FW's reparametrization, the Ikeda-type archimedean factorization and the integrality are owned here.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Prop. 7.19 and the reparametrization after it, p. 88; Cor. 7.21 and Lemma 7.22, p. 89. The Klingen family on U(3,1), its constant terms divisible by the Rankin–Selberg and Dirichlet p-adic L-functions, the factorization and the integrality. [FW](https://arxiv.org/pdf/2107.13726v3), Lemma 7.20 and Cor. 7.21, PDF p. 89. The gamma, power-of-two, π and i factors and the change of highest weight.

The proof proceeds as follows. Translate Eischen–Wan Thm 1.2 to the semi-ordinary GU(3,1) setting with the shared local data of [L2s.3](#ac-l2s-semi-ordinary-klingen-family) (FW Prop. 7.19). Reparametrize by t^{-c}_{ξ′_0} (γ′ ↦ γ′ξ′_0(γ′)^{-1}, then γ′ ↦ γ′^{-c}). Apply FW Lemma 7.22 with its two independent denominator bounds: one supported at p and the explicit Euler factors and one in the CM-family variable. Prove that these supports are disjoint using that lemma; a nonzero rational scalar alone does not prove integrality.

**Checks.**

- Only the vector-valued, general-weight construction is new here; the weight-two scalar family is L2s's.

This uses [L2s.3](#ac-l2s-semi-ordinary-klingen-family), [L2.1](#ac-l2-general-weight-semi-ordinary-control), AutomorphicPadicLFunctions L4e (`klingen-family`), AutomorphicPadicLFunctions L4e (`ew-padic-l-function`), AutomorphicPadicLFunctions L4e (`constant-term-divisibility`), AutomorphicPadicLFunctions L4 (`archimedean-zeta-integral`).

<a id="ac-l2-greenberg-function-factorization"></a>

### L2.3 Factorization of the Greenberg function into Hida and Katz factors

With the normalizations of FW §4.5.2 and Appendix B, the Greenberg Rankin–Selberg p-adic L-function of f over K factors as L^{Gr}_K(f) = L^{Hida}_{f⊗g}·L^{Katz}_K·h_K, where L^{Hida}_{f⊗g} is Hida's Rankin–Selberg p-adic L-function of f against the canonical CM Hida family g, L^{Katz}_K is Katz's p-adic L-function of K restricted to the relevant line and h_K the class number factor (FW Cor. 7.21, with Prop. 4.35 for the Katz normalization). The factorization is an identity in Frac(O^{ur}[[Γ_K]]) obtained by comparing interpolation formulas on a Zariski-dense set; it carries the class-number, period and local factors explicitly and is not routed to L5a.

Assume the interpolation formulas of FW Prop. 7.19 and Prop. 4.35 on both sides; the set of comparison points is Zariski dense.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Cor. 7.21 and the lemma before it, p. 89; Prop. 4.35, p. 57. L^{Hida}_{f⊗g}·L^{Katz}_K h_K = L^{Gr}_K(f), from the interpolation formulas.

The proof proceeds as follows. Compare interpolation formulas at the arithmetic points of Prop. 7.19 using the doubling interpolation on one side and Hida's Rankin–Selberg plus Katz's interpolation on the other (FW Lemma before Cor. 7.21). Density of the comparison points and the Weierstrass preparation in O^{ur}[[Γ_K]] give the identity.

**Checks.**

- Requested by RankZeroOneBSD:BSD.6a (castella-higher-weight-input) together with FW Thm 4.41; the erratum's citation of a corollary in another paper does not apply.

This uses [L2.2](#ac-l2-vector-valued-klingen-family), PadicFamilies L5 (`katz-padic-l-function`), PadicFamilies L5.

<a id="ac-l2-fw-fourier-jacobi-unit"></a>

### L2.4 General-weight Fourier–Jacobi values: the two-family theorem

Let f be a normalized cuspidal eigenform of even weight k ≥ 2, trivial character and conductor N prime to p, and K imaginary quadratic with p split, as in [L2.6](#ac-l2-fw-greenberg-divisibility); let R = O^{ur}[[Γ_K]] and let 𝔈_D be the Eisenstein ideal of [L0.4](#ac-l0-eisenstein-ideal) for the semi-ordinary Klingen eigensystem of [L2.2](#ac-l2-vector-valued-klingen-family). Prove `fourierJacobi_twoFamily_avoidance`: there are two auxiliary data sets (c_{v,i}, χ_{θ,i}, χ_{h,i}), i = 1, 2, each satisfying the conditions (1)–(5) of CLW §5.6 in weight k, and two vector-valued semi-ordinary Klingen Eisenstein families E_1, E_2 of [L2.2](#ac-l2-vector-valued-klingen-family) with the same Hecke eigensystem, such that the ideal of R ⊗ ℚ generated by all β = 1 Fourier–Jacobi values FJ^{h_i}_{β,θ_i⋆}(E_i)(g, u), over i and the permitted (g, u), lies in no height-one prime of R ⊗ ℚ. Consequently, for every height-one prime P ≠ (p) of R, ord_P(L^{Gr,Σ}_{f,K}) ≤ ord_P(𝔈_D) (FW Lemma 7.31), with i chosen separately at each P.

Assume the hypotheses of FW Thm 7.32 and the local data of FW §7.4. This replaces FW Prop. 7.29, whose proof makes L_1, L_5, L_6 simultaneously units by the cofinite nonvanishing theorems of Hsieh; those theorems rest on Hida 2004 Theorem 3.2, whose proof has a gap, and the available replacements give only infinitely many good characters (CLW addendum §1, Theorems 1.0.1–1.0.2). The two-family statement is the published repair in weight two (CLW addendum Theorem 4.0.1). In weight k it is not stated in the literature; it is a target of this roadmap, with the proof below, which uses no input beyond the cited ones.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), §7.4.2, Props 7.27, Cor. 7.28, Prop. 7.29, Def. 7.30, Lemma 7.31, pp. 90–96, for the Fourier–Jacobi computation, the triple-product evaluation (7.4.4)–(7.4.5) and the Eisenstein-ideal bound; p. 95 for the vector-valued archimedean triple-product integral, which equals the fixed constant 1/(k−1) by Schur orthogonality because the pairing of an L_{k−2}-valued form with an L_{k−2}^∨-valued one is (k−1) times any single coordinate integral. [CLW-addendum](https://web.math.ucsb.edu/~castella/CLW-addendum.pdf), §1, Theorems 1.0.1–1.0.2, p. 1, for the weakened nonvanishing, stated for characters of infinity type (k+m, −m) and for forms of any weight t; §3, pp. 2–3, for the two auxiliary data sets; Theorem 4.0.1 and its proof, (4.0.2)–(4.0.5), pp. 4–5, and Theorem 5.0.1, p. 6, for the weight-two argument. [FW](https://arxiv.org/pdf/2107.13726v3), §1.2.1, p. 11, for the role of Ikeda's theory and Ichino's formula.

Prove `ikeda_fourierJacobi_denseImage`: for β ∈ ℚ^×, the additive character ψ_β and the fixed splitting character λ, in Ikeda's §2, case 2, with m = 1 and n = 2, the β-th Fourier–Jacobi coefficients of a Siegel Eisenstein series on U(3,3) generate a representation π of the Jacobi group N′U(2,2), and the map ω_ψ ⊗ I → π, from the Weil representation tensored with the space I of Ikeda's integrals, has dense image; I lies in the space of Siegel Eisenstein series on U(2,2) with the fixed character (Ikeda Proposition 1.3, Lemma 1.1 and Theorem 3.2, as cited in FW §7.4.2, pp. 92–93). For a nearly holomorphic Siegel Eisenstein series, FW's lowest-weight argument then gives surjectivity on K-finite vectors, (7.4.2), and the finite sum of Lemma 7.26: π, ω_ψ and I are lowest-weight (g, K)-modules, the U(1)(ℝ)-weights in a lowest-weight module generated by one vector increase with finite-dimensional eigenspaces, the induced representation is of finite length, and so only finitely many pairs of K-types contribute to a fixed K-type of π.

The proof proceeds as follows.

- Fix ℓ split and ℓ′ inert in K, with π_ℓ, π_ℓ′ unramified, and base data χ_{θ,0}, χ_{h,0} satisfying CLW §5.6 (1)–(5) in weight k. By the addendum's Theorems 1.0.1–1.0.2, which allow forms of any weight, there are infinitely many η_1, η_2, η_3 in the ℓ-power anticyclotomic characters making the three normalized weight-k L-values of addendum (3.0.1) p-adic units, and by Hung's theorem all but finitely many make (3.0.2) a unit and (3.0.3) nonzero; choose them, then ν_i, μ_i with ν_1μ_1^c = ν_2μ_2^c = η_1, ν_1μ_1 = η_2, ν_2μ_2 = η_3, and put χ_{θ,i} = ν_iχ_{θ,0}, χ_{h,i} = μ_iχ_{h,0}.
- Build E_1, E_2 from the two data sets by [L2.2](#ac-l2-vector-valued-klingen-family). Their constant terms are bounded by L^{Gr,Σ}_{f,K}L^Σ_{τ̄′} for both i, since the boundary does not depend on the auxiliary characters.
- For each i, `ikeda_fourierJacobi_denseImage`, FW (7.4.4)–(7.4.5) and `ichinoTripleProduct` express the Fourier–Jacobi value, up to a unit of R ⊗ ℚ, as C_i·L_{1,i}L_{2,i}L_{5,i}L_{6,i} times a fixed nonzero pairing, with C_i ∈ Q̄_p^× and the archimedean contribution 1/(k−1). The vector-valued structure enters only through constants independent of the Iwasawa variables.
- By the choices, L_{2,i} is a nonzero constant, data set 1 makes L_{5,1}, L_{6,1} units and data set 2 makes L_{1,2}, L_{5,2} units, as in addendum (4.0.3). The remaining factors satisfy addendum (4.0.2): after the N-th power map P_N, L_{1,1} lies in the anticyclotomic one-variable subring and L_{6,2} in the cyclotomic one, read off from their interpolation formulas. L_{1,1} ≠ 0 because the anticyclotomic μ-invariant of Hsieh's function is finite (addendum p. 5, from Hsieh's proof of Theorem B), and L_{6,2} ≠ 0 because it interpolates nonzero Hecke L-values in the range of absolute convergence.
- Hence P_N of the joint ideal contains (L_{1,1}, L_{6,2}). Two nonzero elements of the two independent one-variable subrings lie in no common height-one prime, and P_N is an integral extension, so the joint ideal lies in no height-one prime of R ⊗ ℚ. At a height-one P ≠ (p) choose i with the value outside P, and run FW's proof of Lemma 7.31 with that family, exactly as addendum Theorem 5.0.1 does in weight two.

The steps above are recorded as three named targets of the general-weight argument, each for every admissible even k, including k = 2.

Provide `FourierJacobi.weightFunctional`: for each fixed k and auxiliary datum, the K-finite functional of FW (7.4.2)–(7.4.3), built from a basis φ_{4,i,∞} contributing to the surjection on the K-type of ω_ψ and its dual basis φ_{2,i,∞} for the pairing of Ikeda p. 620, compatible with the pullback, local sections and triple-product pairing. These archimedean Schwartz functions depend only on k, and the archimedean triple-product integral is the constant 1/(k−1). At k = 2 it is the scalar functional of [L2s.4](#ac-l2s-fourier-jacobi-primitivity). The weight k of f is fixed along the family, so no specialization in k is involved.

Provide `FourierJacobi.twoFamilyChoice`: the two data sets and families of the first two steps, with the same unramified and U_p eigenvalues and boundary divisor L^{Gr,Σ}_{f,K}L^Σ_{τ̄′}, and the two product identities for their functional values ν_1, ν_2 ∈ R[1/p] of the third step, with the comparison scalars, local Euler factors and the two remaining nonunit factors L_{1,1}, L_{6,2}.

Provide `FourierJacobi.jointHeightOneAvoidance`: for those values, every height-one prime P of R[1/p] omits ν_1 or ν_2; equivalently no such P contains (ν_1, ν_2). The proof uses the independent variable directions of L_{1,1} and L_{6,2} and their nonvanishing; nonvanishing of ν_1 and ν_2 alone is insufficient.

**Checks.**

- Scalar versus vector-valued: the vector-valued computation is FW's addition over [L2s.4](#ac-l2s-fourier-jacobi-primitivity).
- In B=Q_p[[X,Y]], the values X and Y are each nonunits, but no height-one prime contains both: the joint ideal (X,Y) has height two. Thus joint height-one avoidance does not assert a unit value or the unit ideal.
- Values X and X² are nonzero and share the height-one prime (X), so nonvanishing of both values does not establish the required avoidance. A construction leaving the same variable direction twice fails.
- Specializing Y to 0 sends the first pair to X,0 and loses avoidance at (X). Hence a scalar or arithmetic specialization alone cannot prove the comparison of families before specialization.
- A map with dense image into an infinite-dimensional smooth completion need not express every vector as a finite tensor sum. The finite K-type and lowest-weight hypotheses are essential to the passage used in Lemma 7.26; β=0 is outside that nontrivial-character Jacobi argument.
- Archimedean constant: for k = 2 the coefficient representation is one-dimensional and 1/(k−1) = 1, recovering the scalar computation; for k = 4 it is 1/3, a nonzero constant, so it changes no ideal of R ⊗ ℚ. A factor depending on the Iwasawa variables in its place would break the argument.
- A single data set with only two of L_1, L_5, L_6 units leaves one nonunit factor; if it is L_{1,1}, every height-one prime containing L_{1,1} is missed by the bound. The second data set, whose nonunit factor L_{6,2} lies in the other variable, is what covers those primes.

This uses [L2.2](#ac-l2-vector-valued-klingen-family), [L2.1](#ac-l2-general-weight-semi-ordinary-control), [L2s.4](#ac-l2s-fourier-jacobi-primitivity), [L0.4](#ac-l0-eisenstein-ideal), MetaplecticAutomorphicForms MP.6 (`fourier-jacobi-period`), MetaplecticAutomorphicForms MP.6 (`fourier-jacobi-extraction`), MetaplecticAutomorphicForms MP.6 (`rallis-inner-product`), AutomorphicLFunctionsAndLocalFactors AL.3, AutomorphicPadicLFunctions L3h (`hsieh-hecke-nonvanishing`).

<a id="ac-l2-exceptional-height-one-primes"></a>

### L2.5 Removing the excluded height-one primes

Let L ∈ O^{ur}[[Γ_K]] be L^{Gr}_K(f) (or Wan's L_{f,K,ξ}). If the anticyclotomic restriction of L has vanishing µ-invariant — which holds when every prime ℓ | N nonsplit in K is ramified in K with π_ℓ the appropriately twisted Steinberg representation and the residual and conductor hypotheses of Hsieh's Theorem B are met — then L lies in no height-one prime of O^{ur}[[Γ_K]] of the form Q·O^{ur}[[Γ_K]] with Q a height-one prime of O[[Γ^+]]; hence it is prime to the cyclotomic Dirichlet factor L^Σ_{τ̄′} of the constant terms, and a divisibility proved up to those pulled-back primes extends over them (any independent p-power ambiguity must also be removed). For a Hida family, Wan20 Lemma 9.3 gives the same conclusion; for a single form outside the µ = 0 range the exceptional primes remain excluded.

Assume the hypotheses of AutomorphicPadicLFunctions:L3h/theorem-b (Hsieh's µ = 0) for the anticyclotomic specialization; the auxiliary-field choice of [L2.10](#ac-l2-auxiliary-field-selection) must preserve them (no nonsplit-prime or minimality condition dropped). The CLW addendum weakens the auxiliary ℓ-tower nonvanishing used for Fourier–Jacobi choices, not Hsieh’s p-tower µ=0 theorem. Do not replace one by the other.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), proof of Thm 7.32, last paragraph, p. 97. The Steinberg-twist assumption lets Fouquet–Wan apply the vanishing of the anticyclotomic µ-invariant, so L is in no height-one prime of O[[Γ^+]]. [CLW](https://arxiv.org/pdf/2109.08375v1), proof of Thm 8.2.1(1), p. 81. In Wan20 such primes need not be excluded thanks to Lemma 9.3 and Hsieh; with π fixed CLW cannot prove the analogue.

The proof proceeds as follows. Write L = Σ a_i (γ^- − 1)^i with a_i ∈ O^{ur}[[Γ^+]]; L ∈ Q·O^{ur}[[Γ_K]] iff every a_i ∈ Q. Specialize at the trivial character of Γ^+ (or at a weight point): the anticyclotomic function has µ = 0, so some a_i is a unit there, so not all a_i lie in Q (the argument of SU Prop. 12.3.6, with Hsieh in place of Vatsal). The Dirichlet factor lives in the cyclotomic variable, so it is a product of pulled-back primes and is coprime to L.

**Checks.**

- Test: an excluded height-one prime pulled back from O[[Γ^+]] at which the Dirichlet factor vanishes is not claimed for L unless the µ = 0 hypothesis holds.

This uses AutomorphicPadicLFunctions L3h (`theorem-b`), AutomorphicPadicLFunctions L3h (`theorem-a`), [L2.2](#ac-l2-vector-valued-klingen-family).

<a id="ac-l2-fw-greenberg-divisibility"></a>

### L2.6 Fouquet–Wan's GU(3,1) divisibility for the Greenberg main conjecture

Let p≥3, let K be imaginary quadratic with p split, and let f be a normalized cuspidal eigenform of even weight k, trivial character and conductor N prime to p, such that either ρ̄_f|_{G_{ℚ_p}} is absolutely irreducible or f is ordinary at p; suppose every prime q | N nonsplit in K satisfies q ∥ N and there is at least one such q, that 2 ∥ N if 2 is nonsplit in K, and that ρ̄_f is absolutely irreducible over G_K. Then char_{O^{ur}[[Γ_K]]}(X^{Gr}_K(f) ⊗_O O^{ur}) ⊆ (L^{Gr}_K(f)) up to height-one primes pulled back from O[[Γ^+]]; if moreover every ℓ | N nonsplit in K is ramified in K with π_ℓ the Steinberg representation twisted by the unramified character sending ℓ to −ℓ^{k/2−1}, the whole containment holds (FW Thm 7.32 = Thm 4.41 = Thm 1.12). Here X^{Gr}_K(f) is the dual of the Greenberg Rankin–Selberg Selmer group (FW Def. 4.39: Greenberg condition at v_0, strict at v̄_0, unramified-quotient conditions away from p).

Retain the stated hypotheses; ρ_f|_{G_{ℚ_p}} crystalline in Thm 4.41's form. The first containment excludes height-one primes pulled back from O[[Γ^+]]; the second needs the Steinberg-twist hypothesis to invoke the anticyclotomic µ = 0 theorem. This is the source theorem target. Its Fourier–Jacobi step is the two-family theorem `fourierJacobi_twoFamily_avoidance` of [L2.4](#ac-l2-fw-fourier-jacobi-unit), for the families of [L2.2](#ac-l2-vector-valued-klingen-family); FW's printed simultaneous-unit choice is not used.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Thm 7.32 and proof, pp. 96–97; Thm 4.41 and Def. 4.39, pp. 58–59; Thm 1.12, pp. 10–11. The GU(3,1) divisibility with and without the Steinberg-twist hypothesis, and its proof by the lattice construction, CAP exclusion, Euler factors and µ = 0.

The proof proceeds as follows. Σ-primitive version first: lattice construction (Wan20 Prop. 9.2; [L0.7](#ac-l0-lattice-construction)) shows that 𝔈_D contains the characteristic ideal of the dual Selmer group, with Wan20's condition (9) by [L2s.6](#ac-l2s-cap-exclusion) (modularity from Pan's theorem in general weight). Lemma 7.31 ([L2.4](#ac-l2-fw-fourier-jacobi-unit)) bounds ord_P(L^{Gr,Σ}) ≤ ord_P(𝔈_D) for P ≠ (p). Put back the Euler factors at Σ (Greenberg–Vatsal Prop. 2.4; K_∞ contains the cyclotomic ℤ_p-extension; [L0.2](#ac-l0-primitive-imprimitive-comparison)). Under the Steinberg hypothesis apply Hsieh's anticyclotomic µ = 0 to see that L^{Gr}_K(f) lies in no height-one prime of O[[Γ^+]], hence is prime to the Dirichlet factor in the constant terms ([L2.5](#ac-l2-exceptional-height-one-primes)).

**Checks.**

- At every retained height-one prime the asserted direction is ord(L)≤length(X). In weight two its semi-ordinary specialization agrees with L2s control and the L0 lattice construction.

This uses [L2.4](#ac-l2-fw-fourier-jacobi-unit), [L2s.6](#ac-l2s-cap-exclusion), [L2s.7](#ac-l2s-clw-main-divisibility), [L0.7](#ac-l0-lattice-construction), [L0.2](#ac-l0-primitive-imprimitive-comparison), [L2.5](#ac-l2-exceptional-height-one-primes), [L1.8](#ac-l1-gu22-galois-pseudocharacter), SelmerIwasawaCohomology L2 (`greenberg-condition`).

<a id="ac-l2-klz-beilinson-flach-classes"></a>

### L2.7 Λ-adic Beilinson–Flach classes for a Hida family and the CM family

Let 𝐟 be a Hida family with coefficient ring 𝕀 and g the canonical CM Hida family of K (with T_g ≅ Ind^ℚ_K ℤ_p[[Γ_p]]). The Kings–Loeffler–Zerbes Beilinson–Flach class BF_{𝐟,g} ∈ H¹(ℚ, T_𝐟 ⊗̂ T_g ⊗̂ Λ_Γ), obtained from Rankin–Eisenstein classes on products of modular curves (diagonal pushforward of Eisenstein classes, Siegel units) with tame and p-power norm relations, defines through Shapiro's lemma a class BF ∈ H¹(K, T) and, after the twist tw_{Θ^{-1}}, a class BF† ∈ Sel^{Gr,∅}(K, T†) (Greenberg condition at one prime above p, relaxed at the other) over 𝕀[[Γ_K]] in the integral normalization asserted by CW Theorem 3.6. The c-smoothed class is KLZ17 Definition 8.1.1 with m=1; its local membership is Proposition 8.1.7. Removing c requires the denominator comparison specified next. Specializations at weight-k points give the classes used in FW §4.4 and §4.8.

Assume 𝐟 an ordinary Hida family (or a point of weight k in the crystalline setting of FW §4.4 via analytic families of Beilinson–Flach elements); p split in K. The construction must supply KLZ17 Definition 8.1.1, its tame and p-power norm relations, Proposition 8.1.7 for the local conditions, and LLZ14 Lemma 6.8.9 for removal of the auxiliary c. CW Theorem 3.6 identifies the precise specialization consumed here; an abstract class with the same local images is insufficient. LLZ14 Lemma 6.8.9 assumes that the conductor of ε_fε_g does not divide mp^∞ and avoids only height-one primes not containing p. Corollary 6.8.10 therefore gives a c-independent class after p-inversion. To obtain the integral CW class on the stated lattice, additionally prove that the smoothed classes descend integrally at primes over p: either exhibit a smoothing factor that is a unit there, or prove the equivalent denominator/lattice comparison. This is a separate requirement; the cited LLZ lemma alone does not establish it.

The source is [CW](https://arxiv.org/pdf/2001.03878v1), Thm 3.6 and its proof, p. 15. The class BF† ∈ Sel^{Gr,∅}(K,T†) from KLZ17 Def. 8.1.1 (m = 1), LLZ14 Lemma 6.8.9 and the CM family via BST19 and Shapiro. [KLZ17](https://intlpress.com/site/pub/files/_fulltext/journals/cjm/2017/0005/0001/CJM-2017-0005-0001-a001.pdf), Definition 8.1.1, p.72, and Proposition 8.1.7, p.75. [LLZ14](https://annals.math.princeton.edu/wp-content/uploads/annals-v180-n2-p06-p.pdf), Lemma 6.8.9 and Corollary 6.8.10, p.736. [FW](https://arxiv.org/pdf/2107.13726v3), §4.4 (Prop. 4.22, §4.4.2), pp. 49–51. Hida families of CM representations and analytic families of Beilinson–Flach elements used in the crystalline case.

The proof proceeds as follows. Rankin–Eisenstein classes: pushforward along the diagonal Y_1(N) → Y_1(N)² of Eisenstein classes (from Siegel units, KatoEulerSystems:L0), with the étale realization and the moment maps. Norm relations in the tame and p-power directions give a Λ-adic class over the tower (KLZ). Compare the c-smoothed classes using their smoothing factors, retaining the tame conductor hypothesis and the separate integral descent at primes over p. Specialize the second family to the canonical CM family g and apply Shapiro to obtain BF ∈ H¹(K, T); twist by Θ^{-1}.

The interface is used in [L2.8](#ac-l2-bf-explicit-reciprocity) to the Coleman images of loc_p(BF†) are the two Rankin–Selberg p-adic L-functions; in [L2.9](#ac-l2-castella-wan-equivalence) to BF† generates the rank-one Selmer module in the Beilinson–Flach main conjecture; in [L2.12](#ac-l2-fw-crystalline-main-conjecture) to the analytic families of Beilinson–Flach elements in FW §4.4–4.6; in RankZeroOneBSD:BSD.7a/beilinson-flach-integral-reciprocity to its weight-two Eisenstein specialization.

Provide `BF.lambdaAdic`: BF_{𝐟,g} ∈ H¹(ℚ, T_𝐟 ⊗̂ T_g ⊗̂ Λ_Γ).

Provide `BF.overK`: Shapiro identifies BF_{𝐟,g} with BF ∈ H¹(K, T), T = T_𝐟 ⊗ 𝕀[[Γ_K]]-coinduced.

Provide `BF.twisted`: BF† = tw_{Θ^{-1}}(BF) ∈ H¹(K, T†).

Provide `BF.mem_selmer`: BF† belongs to Sel^{Gr,∅}: Greenberg at p, relaxed at p̄, and the specified unramified conditions away from p (CW Thm 3.6).

Provide `BF.normRelation`: Tame norm relations with Euler factors P_ℓ(Frob_ℓ^{-1}) and p-power norm compatibility.

Provide `BF.specialize`: Specialization along arithmetic points of 𝕀 and of Γ_K commutes with Shapiro and the twist.

Provide `BF.loc_nontorsion`: loc_v(BF†) is non-torsion over 𝕀[[Γ_K]] for each v | p (CW Thm 3.6, last sentence).

Provide `BF.ext`: Under Shapiro and the critical-twist isomorphism two BF classes are equal iff their inverse images are equal; the distinguished class includes its norm-compatible construction, not just its local images.

**Checks.**

- The universal class satisfies both Coleman reciprocity identities in their specified fractional congruence-ideal targets. Specialization commutes wherever defined; a specialized L-value may vanish, so no fixed weight-two/trivial-character value is required to be nonzero.
- loc_{v_0}(BF†) satisfies the Greenberg condition, while loc_{v̄_0}(BF†) is unrestricted (relaxed).
- If the tame conductor divides mp^∞, the LLZ auxiliary-factor avoidance lemma cannot be applied. If only primes away from p have been checked, the integral BF lattice assertion remains to be proved.
- Kato's zeta element of f alone (KatoEulerSystems:L2) is a class for T_f over ℚ_∞, not for T_𝐟 ⊗ T_g over the two-variable tower; replacing BF by Kato's class fails BF.overK.
- With g the canonical CM family, T_g ≅ Ind^ℚ_K ℤ_p[[Γ_p]] (BST19), and Shapiro gives the identification BF.overK used by Castella–Wan.
- RankZeroOneBSD:BSD.7a/beilinson-flach-integral-reciprocity specializes the same KLZ classes to weight two in its Eisenstein branch; the general Hida-family construction is planned here (stage L2's own target).

This uses KatoEulerSystems L0 (`siegel-units-and-c-independent-rationalisation`), KatoEulerSystems L1 (`etale-chern-moment-map-into-modular-local-system`), PadicFamilies L4 (`ordinary-big-galois-representation`), SelmerIwasawaCohomology L3 (`iwasawa-shapiro`), SelmerIwasawaCohomology L3 (`iwasawa-cohomology`), SelmerIwasawaCohomology L3 (`universal-norms-unramified`).

<a id="ac-l2-bf-explicit-reciprocity"></a>

### L2.8 Explicit reciprocity for Beilinson–Flach classes

Over I[[Γ_K]], CW Thm 3.6 gives injections with pseudo-null cokernel Col^{(1),†}:H¹(K_p̄,F^-T†)→I_f⊗_I I[[Γ_K]] and Col^{(2),†}:H¹(K_p,F^+T†)→I_g⊗̂_Zp I[[Γ_K]]. Their images on loc_p̄(BF†) and loc_p(BF†) are respectively tw_{Θ^{-1}}L_p(f,g) and tw_{Θ^{-1}}L_p(g,f). The targets I_f and I_g are the specified fractional congruence ideals, not units that may be silently discarded. The maps are obtained by pairing the family Perrin–Riou logarithm with η_f⊗ω_g and η_g⊗ω_f. Each universal localization of BF† is non-torsion; this does not require every arithmetic specialization to be nonzero.

Use the hypotheses of [L2.7](#ac-l2-klz-beilinson-flach-classes); the big logarithm in families is imported.

The source is [CW](https://arxiv.org/pdf/2001.03878v1), Thm 3.6 and proof, p. 15. The Coleman maps in CW normalization. [KLZ17](https://intlpress.com/site/pub/files/_fulltext/journals/cjm/2017/0005/0001/CJM-2017-0005-0001-a001.pdf), Theorem 10.2.2, p.94, with the congruence-ideal target of Notation 7.7.1, p.71. The normalized explicit reciprocity comparison for BF†. [FW](https://arxiv.org/pdf/2107.13726v3), §4.4.2 and §4.5, pp. 51–57. Analytic families of Beilinson–Flach elements, Selmer complexes and Rankin–Selberg p-adic L-functions.

The proof proceeds as follows. Construct Col^{(i)} by pairing the Perrin-Riou big logarithm of the graded pieces F^∓ with the differentials η, ω (PadicFamilies:L4/family-big-logarithm, PadicHodgeRegulators:L3/crystalline-regulator). Use KLZ reciprocity through CW Thm 3.6 in the two different local groups just specified, preserving the congruence-ideal factors and critical twist. When passing from KLZ Theorem 10.2.2 to CW normalization, track the auxiliary smoothing factor, the Atkin–Lehner pseudo-eigenvalue, the sign and the fractional congruence ideal; remove a factor only after proving its inverse is allowed in the target lattice. The norm-compatible KLZ construction and both explicit reciprocity laws are required; the existence of the displayed Coleman maps alone does not construct the distinguished class. Injectivity with pseudo-null cokernel from the structure of local Iwasawa cohomology of rank-one graded pieces.

**Checks.**

- Weight moments: specializing at weight-k points gives the reciprocity laws FW uses in §4.4–4.6 for the analytic families.

This uses [L2.7](#ac-l2-klz-beilinson-flach-classes), PadicFamilies L4 (`family-big-logarithm`), PadicHodgeRegulators L3 (`crystalline-regulator`), PadicHodgeRegulators L3 (`explicit-reciprocity`).

<a id="ac-l2-castella-wan-equivalence"></a>

### L2.9 Greenberg and Beilinson–Flach main conjectures over K are equivalent

Let 𝐟 be a Hida family with ρ_𝐟|_{G_K} irreducible. The following are equivalent, up to powers of p: (i) X^{Gr,0}(K_∞, A†_𝐟) is 𝕀[[Γ_K]]-torsion, Sel^{Gr,∅}(K, T†) has rank one, and char(X^{Gr,0}) = char(Sel^{Gr,∅}(K,T†)/𝕀[[Γ_K]]·BF†); (ii) X^{∅,0}(K_∞, A†_𝐟) and Sel^{0,∅}(K, T†) are torsion and char(X^{∅,0})·𝕀^{ur}[[Γ_K]] = (tw_{Θ^{-1}}(L_p(𝐟/K))) (CW Thm 3.8). The same argument holds for a weight-k specialization with the Greenberg main conjecture supplied by [L2.6](#ac-l2-fw-greenberg-divisibility) in place of the weight-two input (FW §4.8). Each divisibility direction in (ii) corresponds to the same direction in (i).

Assume ρ_𝐟|_{G_K} irreducible; the comparison is up to powers of p, so it does not by itself remove a power of p.

The source is [CW](https://arxiv.org/pdf/2001.03878v1), Thm 3.8, p. 16. The equivalence of the Beilinson–Flach and Greenberg two-variable main conjectures over K, up to powers of p. [FW](https://arxiv.org/pdf/2107.13726v3), §4.8, p. 68. The argument goes through in general weight by replacing Greenberg's main conjecture there by Thm 7.32.

The proof proceeds as follows. The two Poitou–Tate four-term exact sequences for the Selmer structures (Gr,∅) ⊃ (Gr,0) and (∅,∅) ⊃ (∅,0) relate the four modules; the Coleman maps of [L2.8](#ac-l2-bf-explicit-reciprocity) identify the local terms with the p-adic L-functions. Rank and torsion statements are proved before any cancellation: loc_v(BF†) is non-torsion, so Sel^{Gr,∅} has rank one when X^{Gr,0} is torsion. Multiplicativity of characteristic ideals along the exact sequences gives the equivalence, with pseudo-null cokernels absorbed.

**Checks.**

- Integrality is not claimed: the p-power ambiguity is removed only in [L2.13](#ac-l2-fw-ordinary-reverse-bound), using Kato's bound and the §4.6.3-type argument.

This uses [L2.8](#ac-l2-bf-explicit-reciprocity), [L2.7](#ac-l2-klz-beilinson-flach-classes), SelmerIwasawaCohomology L2 (`selmer-structure-poitou-tate`), SelmerIwasawaCohomology L3 (`iwasawa-selmer-duality`), ArithmeticGaloisDuality R02.4 (`poitou-tate`), EulerSystemsAndKolyvaginSystems ES.8 (`iwasawa-poitou-tate-sequence`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`).

<a id="ac-l2-auxiliary-field-selection"></a>

### L2.10 Choosing the auxiliary imaginary quadratic field for the Fouquet–Wan route

Let p≥3 and let f ∈ S_k(Γ_0(N)), p ∤ N, k ≥ 2 even, satisfy the hypotheses of FW Thm 1.6 (ρ̄_f absolutely irreducible; some ℓ ∥ N with dim ρ̄^{I_ℓ}_f = 1 and dim ρ̄^{G_ℓ}_f = 0; ordinary with χ̄_1 ≠ χ̄_2). Then there is an imaginary quadratic K with p split, the chosen ℓ ramified in K, every other prime dividing N split in K, 2 split when ℓ≠2 and ramified when ℓ=2, and ρ̄_f|_{G_K} absolutely irreducible. These are the field conditions of FW Definition 4.24 and give the field/local hypotheses of [L2.6](#ac-l2-fw-greenberg-divisibility), first containment. The additional Steinberg-twist and Hsieh conditions needed to remove the excluded primes are checked separately; ramification of ℓ alone does not prove them. The general-weight ordinary comparison of [L2.9](#ac-l2-castella-wan-equivalence) remains a separate proof input.

Assume only the hypotheses of FW Thm 1.6 on f; the conditions on K are finitely many local conditions at finitely many primes plus the avoidance of the finitely many quadratic subfields of the splitting field of ρ̄_f.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Definition 4.24, p. 51; §4.8, p. 68; Thm 1.6, pp. 6–7. The ordinary argument uses the field selection of §4.6. The different SU choice in the proof of Thm 3.6.4, p. 43, has its witness prime inert and is used in L1.11; it is not the field selection specified by FW Definition 4.24.

The proof proceeds as follows. Impose splitting at p and the other primes of N, and ramification at ℓ, by choosing fundamental D_K in compatible local square classes (including the discriminant class at 2); infinitely many such K exist. Absolute irreducibility of ρ̄_f|_{G_K}: ρ̄_f is absolutely irreducible over ℚ, so it fails over K only if ρ̄_f is induced from K; this excludes at most finitely many K. Verify that q=ℓ is the only nonsplit level prime, q∥N, that ρ̄_f|_{G_K} is absolutely irreducible, and that p splits. When ℓ=2 use 2∥N and a ramified local quadratic extension at 2; otherwise impose D_K≡1 mod 8. Verify ordinary distinctness for the separate comparison, and retain every local hypothesis of L2.5 before removing its exceptional primes.

**Checks.**

- The Steinberg-twist hypothesis of the second containment is not automatic; when it fails the exceptional primes are handled by [L2.5](#ac-l2-exceptional-height-one-primes) or remain excluded.

This uses [L2.6](#ac-l2-fw-greenberg-divisibility), [L2.9](#ac-l2-castella-wan-equivalence).

<a id="ac-l2-unramified-exponential-boundedness"></a>

### L2.11 Boundedness of the Bloch–Kato exponential along unramified extensions

Under FW Assumption 4.1 (short crystalline V with irreducible residual representation) and for a chosen lattice T, Prop. 4.12 gives a fixed m such that exp(W(F̄_p)·ω_V)⊂p^{-m}H¹(I_p,T). Cor. 4.13 gives its Yager-module description after the unramified twist ρ(Frob)=1+x with v_p(x)>0. In Cor. 4.14 assume every unramified specialization V′ satisfies D_crys(V′)^{φ=1}=0. The exponential line is then a rank-one direct summand after inverting p; after a fixed rescaling b∈E^× it determines the saturated integral local line. The raw exponential is not asserted integral. Keep the constants b_p,d_p of Def. 4.15 in subsequent comparisons.

Define `yagerModule`: let U = Gal(ℚ_p^{ur,p}/ℚ_p) for the unramified ℤ_p-extension, U_m its quotient of order p^m with fixed field K_m, and let U act on Ẑ_p^{ur}[[U]] in two ways, by multiplication by the group-like element u^{−1} (written [u]) and through its Galois action on the coefficients. The Yager module is S = {f ∈ Ẑ_p^{ur}[[U]] : f^u = [u]f for all u ∈ U}. The maps y_{K/ℚ_p}(x) = Σ_{σ∈Gal(K/ℚ_p)} x^σ[σ] are compatible with the trace maps and induce an isomorphism of ℤ_p[[U]]-modules from lim← O_{K_m} (trace transitions) onto S (FW §4.2.2, (4.2.2), pp. 43–44, after Loeffler–Zerbes, Iwasawa theory and p-adic L-functions over ℤ_p²-extensions, §3.2, with the convention change noted by FW). Prove `yagerModule_free`: S is free of rank one over ℤ_p[[U]], generated by y(d) for any trace-compatible d = (d_m) with d_0 ∈ ℤ_p^×; and `normalBasis_iff_trace_unit`: x ∈ O_{K_m} generates O_{K_m} as a ℤ_p[U_m]-module exactly when Tr_{K_m/ℚ_p}(x) ∈ ℤ_p^× (FW p. 44). Define `yagerTwist`: for a one-dimensional unramified representation ρ of U on F, ρ(d) ∈ Aut(F ⊗ Ẑ_p^{ur}) and its inverse-type element ρ(d)^∨, with ρ(d)·x fixed by G_{ℚ_p} for x ∈ F (FW p. 44). The API is `yagerModule_iso`, `yagerModule_free`, `normalBasis_iff_trace_unit`, `yagerTwist_invariant` and compatibility with the cyclotomic variable through the completed tensor product with ℤ_p[[Γ_cyc]].

**Checks.**

- At m = 0, K_0 = ℚ_p, y is the identity of ℤ_p and d_0 must be a unit: d_0 = p fails to generate, while d_0 = 1 generates.
- For K_1/ℚ_p unramified of degree p and x = 1, Tr(1) = p is not a unit, so 1 is not a normal-basis generator of O_{K_1}; an element of trace 1 is.
- An element f with f^u = f for all u (Galois-invariant coefficients) and f ≠ 0 is not in S unless [u]f = f, which fails for f = 1 since [u]·1 = u^{−1} ≠ 1; the two actions must be matched, not confused.

Then use `yagerModule` and `yagerTwist` for the unramified-by-cyclotomic exponential, with the integral-lattice and two-action compatibility specified above.

Assume FW Assumption 4.1, the unramified twist of Cor. 4.13, and the φ=1 exclusion at every unramified specialization in Cor. 4.14. The Yager normal basis and the integral comparison are this subsection's own targets; a purely rational regulator is insufficient.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), §4.2.1 Prop. 4.12, p. 43; §4.2.2 (Yager modules after Loeffler–Zerbes §3.2), p. 43; §4.2.3 Cors 4.13–4.14, pp. 44–45. Boundedness of the exponential map along the unramified family and the integral local subspace replacing the ± theory. [FW](https://arxiv.org/pdf/2107.13726v3), §1.2.1, pp. 11–12. The integral local theory along the line unramified at v_0 replaces a two-variable ± theory.

The proof proceeds as follows. Use the integral short-crystalline comparison to prove the uniform denominator bound of Prop. 4.12. Use `yagerModule` and `yagerTwist` to compute the unramified-family exponential as in §4.2.2–4.2.3. Under the φ=1 exclusion prove the rational direct-summand assertion of Cor. 4.14, then choose the fixed rescaling and saturated integral line of Def. 4.15.

**Checks.**

- A bounded denominator p⁻ᵐ with m>0 must remain visible before the fixed rescaling. A specialization with φ=1 is excluded from the direct-summand assertion, since the corresponding exponential can fail to have the required injectivity.

This uses PadicHodgeRegulators L4, SelmerIwasawaCohomology L4 (`fontaine-laffaille-comparison`), SelmerIwasawaCohomology L4 (`integral-finite-comparison`).

<a id="ac-l2-fw-crystalline-main-conjecture"></a>

### L2.12 Fouquet–Wan's main conjecture at crystalline short points

Let f ∈ S_k(Γ_0(N)) be a normalized eigencuspform of weight k ≥ 2 with ρ_f|_{G_{ℚ_p}} crystalline (p ∤ N) and short, ρ̄_f|_{G_{ℚ_p}} absolutely irreducible, and some ℓ ∥ N with dim ρ̄^{I_ℓ} = 1 and dim ρ̄^{G_{ℚ_ℓ}} = 0. Then Kato's main conjecture holds for M(f): char H²(ℤ[1/p], T ⊗ Λ_Iw) = char H¹(ℤ[1/p], T ⊗ Λ_Iw)/Λ_Iw·z(f)_Iw (FW Thm 4.51 = Thm 1.13; Thm 4.38 under the residual hypothesis of Thm 1.7). The proof first gives the equalities of Prop. 4.42 after inverting p (through Pottharst's analytic Iwasawa theory and Selmer complexes over ΛK,∞), then removes the power of p by the unramified local theory along the line through the point (§4.6.3, Prop. 4.48), and treats equal Satake parameters through the Bianchi three-variable p-adic L-function of Betina–Williams (§4.7).

Retain the stated hypotheses; the distinct-Satake-parameter case first, then §4.7 for the p-irregular case. Kato's one-sided bound (KatoEulerSystems §7.2) supplies the divisibility F_1 | F of the proof of Thm 4.51. The source theorem is the target; its proof inputs are [L2.6](#ac-l2-fw-greenberg-divisibility) through the two-family theorem of [L2.4](#ac-l2-fw-fourier-jacobi-unit), the Yager-module theory of [L2.11](#ac-l2-unramified-exponential-boundedness), and the analytic comparisons stated below. Kato’s integral bound must be applied with its actual free rank-one τ-quotient condition, not merely residual irreducibility.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Thm 4.38 p. 58; Prop. 4.42 p. 59; §4.6.3 and Thm 4.51 with proof pp. 61–65; §4.7 Prop. 4.53 pp. 66–67. Kato's main conjecture at crystalline short points with residually irreducible local representation. [FW](https://arxiv.org/pdf/2107.13726v3), §1.2.1, pp. 11–12. Outline: analytic Iwasawa theory after inverting p, then the unramified line to remove powers of p, then the Betina–Williams comparison.

Prove `fw_analyticSelmerComparison`: over Pottharst's quasi-Stein algebra Λ_K,∞, the inverse limit of affinoid algebras with dense transition maps, the Selmer complex of the analytic Beilinson–Flach family with FW's finite-slope local conditions is perfect, commutes with derived base change to each affinoid and to arithmetic points, and, after inverting p, the Poitou–Tate identifications of FW §4.5 (Propositions 4.28, 4.30, 4.43 and Corollary 4.44) relate its cohomology to the Greenberg and Beilinson–Flach Selmer modules with all Tor and local correction terms. The local complexes and their base change are PhiGammaModulesAndIwasawaCohomology §§4.4–4.5 and 5.4; the derived global cochains are ArithmeticGaloisDuality D7. Prove `fw_pIrregular_comparison`: when α = β (so k ≥ 4), for the Coleman family through f_α with normal coefficient ring I and the CM Hida family g, the right-hand side of the explicit reciprocity law of Loeffler–Zerbes's Coleman-family theorem is the explicit factorial multiple of L(f, g, 1+j) of FW Prop. 4.53, and the ratio G of the Betina–Williams modular-symbol function to the Loeffler–Zerbes function is a nonzero element of Frac(I) depending only on the Coleman variable (FW §4.7.2, pp. 66–67). The Betina–Williams three-variable function is consumed with the hypotheses of its Theorems A–C below.

The analytic complexes instantiate [Pottharst](https://msp.org/ant/2013/7-7/ant-v7-n7-p02-p.pdf), Thms 1.11–1.13, pp. 1585–1586 (PDF pp. 16–17): perfectness requires the local perfect complexes of the specified amplitude, derived base change uses the boundedness hypotheses, and the quasi-Stein extension uses dense transition maps. Thm 3.13, pp. 1608–1609 (PDF pp. 39–40), treats nearly ordinary conditions with additional inertia-flatness and specialization hypotheses; it is not automatically the finite-slope comparison needed here. For equal Satake parameters, [Betina–Williams](https://arxiv.org/pdf/2011.02331v2), Thms A–C, pp. 2–4, provide the p-irregular family and Artin factorization under their level and split-p assumptions. The factorization allows nonzero period scalars; FW (4.7.4)–(4.7.5), p. 68, is the required comparison to the chosen Beilinson–Flach differential. Neither an unspecified period scalar nor equality at too few critical values proves an integral regulator identity.

The proof proceeds as follows. Prop. 4.42: from [L2.6](#ac-l2-fw-greenberg-divisibility) over K and the Beilinson–Flach reciprocity of [L2.8](#ac-l2-bf-explicit-reciprocity) in analytic families, via Poitou–Tate for Selmer complexes (FW §4.5, Props 4.28, 4.30, 4.43, Cor. 4.44), get the equality after inverting p. §4.3: control of Selmer groups and absence of pseudo-null submodules (Prop. 4.20). §4.6.3: along the unramified line through the point, the integral local subspace of [L2.11](#ac-l2-unramified-exponential-boundedness) gives the bound at a generic arithmetic point (Prop. 4.48, Lemmas 4.49–4.50); with Kato's divisibility F_1 | F and Kato's explicit reciprocity this gives Thm 4.51. §4.7: when the Satake parameters coincide, compare with the Betina–Williams Bianchi p-adic L-function (Prop. 4.53).

**Checks.**

- Integral, not only after inverting p; this is the seed FW Prop. 5.6 uses at crystalline-short points of the deformation space.
- Equal Satake parameters occur only for even k ≥ 4: for k = 2, α ≠ β is known (FW §4.7, p. 66), so the p-irregular branch is empty there and the target is not invoked. The Loeffler–Zerbes period ⟨f,f⟩E(f_α)E*(f_α) vanishes when α = β, so the comparison must go through G and not through that period.
- Derived base change: for C = [A --X→ A] over A = E⟨X⟩, the specialization at X = 0 has H⁰ = E coming from Tor₁; a comparison of cohomology modules alone would give 0, so the Selmer comparison is stated for complexes.

This uses [L2.6](#ac-l2-fw-greenberg-divisibility), [L2.8](#ac-l2-bf-explicit-reciprocity), [L2.11](#ac-l2-unramified-exponential-boundedness), [L2.9](#ac-l2-castella-wan-equivalence), KatoEulerSystems L7 (`cohomological-divisibility-one-direction`), KatoEulerSystems L3 (`generalised-explicit-reciprocity-law-for-zeta-elements`), PadicFamilies L4 (`coleman-family-regulator`), SelmerIwasawaCohomology L3 (`infinite-selmer-complex`), SelmerIwasawaCohomology L3 (`selmer-no-pseudonull`), PadicHodgeRegulators L4 (`noncritical-refinement`), KatoEulerSystems Layers 4 and 7, PadicMeasuresIwasawaAlgebras L5.

<a id="ac-l2-fw-ordinary-reverse-bound"></a>

### L2.13 The Fouquet–Wan ordinary reverse divisibility (Theorem 1.6 by §4.8)

Let f ∈ S_k(Γ_0(N)), p ∤ N, k ≥ 2, be an eigencuspform with (1) ρ̄_f absolutely irreducible; (2) some ℓ ∥ N with dim_𝔽 ρ̄^{I_ℓ}_f = 1 and dim_𝔽 ρ̄^{G_ℓ}_f = 0; (3) ρ_f|_{G_{ℚ_p}} an extension 0 → χ_1 → ρ_f|_{G_{ℚ_p}} → χ_2 → 0 with χ̄_1 ≠ χ̄_2. Then char_{Λ_Iw} H¹(ℤ[1/p], T ⊗ Λ_Iw)/Λ_Iw·z(f)_Iw divides char_{Λ_Iw} H²(ℤ[1/p], T ⊗ Λ_Iw) (FW Thm 1.6). The route is FW §4.8, not SU plus a period lemma: over an auxiliary K ([L2.10](#ac-l2-auxiliary-field-selection)) prove the two-variable Greenberg Rankin–Selberg main conjecture divisibility by [L2.6](#ac-l2-fw-greenberg-divisibility), transfer it through [L2.9](#ac-l2-castella-wan-equivalence) to the Beilinson–Flach formulation, descend to the cyclotomic line, separate the twist factor f ⊗ χ_K, and remove the power of p by a §4.6.3-type integral argument that uses Kato's one-sided bound. No comparison of canonical and Gross periods is used.

Assume hypotheses (1)–(3) of FW Thm 1.6 exactly; trivial character, even weight for the GU(3,1) input. FW §4.8 outlines the transfer and refers to Castella–Wan Theorem 3.8 in weight two. The target also requires the cyclotomic specialization, separation of the quadratic-twist factor and integral descent removing the p-power error in general even weight. The source theorem is the target; its proof inputs are the two-family theorem of [L2.4](#ac-l2-fw-fourier-jacobi-unit) (through L2.6) and the integral local theory of [L2.11](#ac-l2-unramified-exponential-boundedness). Kato’s integral bound must be applied with its actual free rank-one τ-quotient condition, not merely residual irreducibility.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Thm 1.6 and the remark before it, pp. 6–7; §4.8, p. 68. Theorem 1.6 and its proof sketch: auxiliary K, two-variable Rankin–Selberg main conjecture via Thm 7.32, Beilinson–Flach reciprocity and Poitou–Tate as in Castella–Wan, then Kato. [CW](https://arxiv.org/pdf/2001.03878v1), Thm 3.8, p. 16. The weight-two equivalence that FW §4.8 extends.

The proof proceeds as follows. Choose K by [L2.10](#ac-l2-auxiliary-field-selection); [L2.6](#ac-l2-fw-greenberg-divisibility) gives char(X^{Gr}) ⊆ (L^{Gr}) up to pulled-back primes, integrally when [L2.5](#ac-l2-exceptional-height-one-primes) applies. [L2.9](#ac-l2-castella-wan-equivalence) (weight k) converts this into the Beilinson–Flach divisibility char(X^{Gr,0}) ⊆ char(Sel^{Gr,∅}/BF†), up to powers of p. Specialize to the cyclotomic line ([L0.3](#ac-l0-selmer-specialization-control)) and compare BF† with Kato's zeta elements of f and f ⊗ χ_K (as in FW §4.6.2–4.6.3), separating the two factors. Remove the power of p as in FW §4.6.3: Kato's divisibility (the cohomological upper bound of KatoEulerSystems §7.2) and an integral local subspace along a line in Spec Λ_K reduce the integral statement to a cardinality at one generic arithmetic point.

**Checks.**

- Export to ModularIwasawaMainConjectures:L1/fw-ordinary-theorem, which combines it with Kato's bound into the equality; the KatoEulerSystems §7.2 bound and its free rank-one τ-quotient witness are required before the integral descent in this proof.
- For Γ₀(N), even weight and p odd are retained in the scalar-residual parity argument. The integral descent uses the chosen local lattice and Kato normalization; it does not assert a canonical/Gross-period identity.

This uses [L2.10](#ac-l2-auxiliary-field-selection), [L2.6](#ac-l2-fw-greenberg-divisibility), [L2.9](#ac-l2-castella-wan-equivalence), [L2.5](#ac-l2-exceptional-height-one-primes), [L2.11](#ac-l2-unramified-exponential-boundedness), [L0.3](#ac-l0-selmer-specialization-control), KatoEulerSystems L7 (`cohomological-divisibility-one-direction`), KatoEulerSystems L7 (`ordinary-selmer-divisibility`), KatoEulerSystems L4 (`rational-iwasawa-module-structure`), KatoEulerSystems Layers 4 and 7, PadicMeasuresIwasawaAlgebras L5.

<a id="ac-l2-wan-rankin-selberg-divisibility"></a>

### L2.14 Wan's ordinary GU(3,1) Rankin–Selberg divisibility

Let K be imaginary quadratic with p = v_0v̄_0 split, f_0 a weight-two form of trivial character and square-free tame level N in an ordinary Hida family 𝐟, and ξ a Hecke character of infinity type (κ/2, −κ/2), κ ≥ 6 even, with ord_{v_0}, ord_{v̄_0} of its conductor ≤ 1. (Thm 1.1) If p ≥ 5, ξ|_{𝔸^×_ℚ} = ω∘Nm with κ ≡ 0 mod 2(p − 1), ρ̄_𝐟|_{G_K} irreducible, some q | N nonsplit in K with ρ̄_𝐟 ramified at q, the CM form g_ξ satisfies (dist) and (irred), every local root number ε(π_{f,v}, ξ_v, 1/2) = 1 at nonsplit v, and the conductor of ξ is divisible only by split primes, then L^{Hida}_{𝐟,ξ,K} ∈ Î^{ur}[[Γ_K]] and (L^{Hida}_{𝐟,ξ,K}) ⊇ char(X_{𝐟,K,ξ}). (Thm 1.2) For the single form f_0, if p ≥ 5, the p-adic avatar of ξ|·|^{κ/2}(ω^{-1}∘Nm) factors through Γ_K with κ ≡ 0 mod 2(p − 1), ρ̄_{f}|_{G_K} is irreducible and some q ∥ N is nonsplit in K, then (L_{f,ξ,K}) ⊇ char(X_{f,K,ξ}) as fractional ideals of Ô^{ur}_L[[Γ_K]] ⊗ L, allowing both global root numbers; this p-inverted, imprimitive two-variable bound (with the exceptional-prime and normality arguments of Wan20 §9) is the input exported to RankOneConverse.

Use the hypotheses stated in Wan20 Thms 1.1–1.2; the published ordinary theorem (arXiv:1408.4044, Algebra Number Theory 2020), not the withdrawn arXiv:1412.1767 nor the nonordinary replacement (L2s).

The source is [Wan-2020](https://arxiv.org/pdf/1408.4044v5), Thms 1.1–1.2 and the discussion after them, pp. 2–4; outline pp. 4–6. The three-variable and two-variable divisibilities for Rankin–Selberg p-adic L-functions on U(3,1) and the steps of their proof.

The proof proceeds as follows. Construct the Klingen Eisenstein family on U(3,1) whose constant terms are L^Σ_{𝐟,K,ξ} (Wan20 step (1)), with the Siegel section at p of Wan20 §4.3. Fourier–Jacobi coprimality through the functional l_{θ⋆}, the doubling formula for U(2) × U(2) and Ichino's formula (Wan20 steps (2)–(5); [L2s.4](#ac-l2s-fourier-jacobi-primitivity) is the weight-two semi-ordinary analogue). Galois argument: lattice construction (Wan20 Prop. 9.2, [L0.7](#ac-l0-lattice-construction)) with CAP exclusion ([L2s.6](#ac-l2s-cap-exclusion)); Thm 1.2 by specializing a weaker three-variable statement after inverting all nonzero elements of 𝕀.

**Checks.**

- RankOneConverse:PC.2/wan-divisibility consumes Thm 1.2; BSD.6a's anticyclotomic input uses the same theorem through JSW §6.

This uses [L0.7](#ac-l0-lattice-construction), [L2s.6](#ac-l2s-cap-exclusion), [L2s.4](#ac-l2s-fourier-jacobi-primitivity), [L2.5](#ac-l2-exceptional-height-one-primes), AutomorphicPadicLFunctions L4e (`klingen-family`), AutomorphicPadicLFunctions L4e (`ew-siegel-eisenstein-measure`), AutomorphicPadicLFunctions L3h (`theorem-b`), AutomorphicPadicLFunctions L3h (`hsieh-hecke-nonvanishing`).

### Examples

At a height-one prime write J=(ϖᵃ) and L=uϖᵇ with u a unit. The desired reverse containment J⊆(L) is a≥b. For a=2,b=1 it holds; reversing the inequality would fail. If the prime lies over the cyclotomic subring, the Fourier–Jacobi argument is replaced by the local-Euler and μ comparison. Inverting p removes only primes over p; inverting every nonzero cyclotomic coefficient can also remove horizontal height-one primes. The two localized conclusions are therefore recorded separately.

For an ordinary residual representation u⊕u⁻¹χ̄_cyc, with u unramified and u(Frob_p)=a_p mod p, the excluded cyclotomic-ratio shape occurs when u²=1, namely a_p≡±1 mod p. This is a hypothesis check before selecting an auxiliary field, not a consequence of irreducibility over Q. The Steinberg example 1−11⁻¹=10/11 at p=5 also persists here: dim ρ̄^{I_ℓ}=1 by itself cannot remove that Euler factor.

### Dependencies

ArithmeticGaloisDuality R02.4 (`poitou-tate`), [L0.4](#ac-l0-eisenstein-ideal), [L0.7](#ac-l0-lattice-construction), [L0.2](#ac-l0-primitive-imprimitive-comparison), [L0.3](#ac-l0-selmer-specialization-control), [L1.8](#ac-l1-gu22-galois-pseudocharacter), [L2s.6](#ac-l2s-cap-exclusion), [L2s.7](#ac-l2s-clw-main-divisibility), [L2s.4](#ac-l2s-fourier-jacobi-primitivity), [L2s.2](#ac-l2s-semi-ordinary-hida-theory), [L2s.3](#ac-l2s-semi-ordinary-klingen-family), [L2s.1](#ac-l2s-semi-ordinary-weight-space), AutomorphicLFunctionsAndLocalFactors AL.3, AutomorphicPadicLFunctions L3h (`hsieh-hecke-nonvanishing`), AutomorphicPadicLFunctions L3h (`theorem-a`), AutomorphicPadicLFunctions L3h (`theorem-b`), AutomorphicPadicLFunctions L4 (`archimedean-zeta-integral`), AutomorphicPadicLFunctions L4 (`ehls-ordinary-forms-hecke`), AutomorphicPadicLFunctions L4e (`constant-term-divisibility`), AutomorphicPadicLFunctions L4e (`ew-padic-l-function`), AutomorphicPadicLFunctions L4e (`ew-siegel-eisenstein-measure`), AutomorphicPadicLFunctions L4e (`klingen-family`), EulerSystemsAndKolyvaginSystems ES.8 (`iwasawa-poitou-tate-sequence`), KatoEulerSystems L0 (`siegel-units-and-c-independent-rationalisation`), KatoEulerSystems L1 (`etale-chern-moment-map-into-modular-local-system`), KatoEulerSystems L3 (`generalised-explicit-reciprocity-law-for-zeta-elements`), KatoEulerSystems Layers 4 and 7, KatoEulerSystems L7 (`cohomological-divisibility-one-direction`), KatoEulerSystems L7 (`ordinary-selmer-divisibility`), KatoEulerSystems L4 (`rational-iwasawa-module-structure`), MetaplecticAutomorphicForms MP.6 (`fourier-jacobi-extraction`), MetaplecticAutomorphicForms MP.6 (`fourier-jacobi-period`), MetaplecticAutomorphicForms MP.6 (`rallis-inner-product`), PadicFamilies L0a (`profinite-projector-exact`), PadicFamilies L4 (`coleman-family-regulator`), PadicFamilies L4 (`family-big-logarithm`), PadicFamilies L4 (`ordinary-big-galois-representation`), PadicFamilies L5, PadicFamilies L5 (`katz-padic-l-function`), PadicHodgeRegulators L3 (`crystalline-regulator`), PadicHodgeRegulators L3 (`explicit-reciprocity`), PadicHodgeRegulators L4, PadicHodgeRegulators L4 (`noncritical-refinement`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`), PadicMeasuresIwasawaAlgebras L5, SelmerIwasawaCohomology L2 (`greenberg-condition`), SelmerIwasawaCohomology L2 (`selmer-structure-poitou-tate`), SelmerIwasawaCohomology L3 (`infinite-selmer-complex`), SelmerIwasawaCohomology L3 (`iwasawa-cohomology`), SelmerIwasawaCohomology L3 (`iwasawa-selmer-duality`), SelmerIwasawaCohomology L3 (`iwasawa-shapiro`), SelmerIwasawaCohomology L3 (`selmer-no-pseudonull`), SelmerIwasawaCohomology L3 (`universal-norms-unramified`), SelmerIwasawaCohomology L4 (`fontaine-laffaille-comparison`), SelmerIwasawaCohomology L4 (`integral-finite-comparison`).

## Layer L3: Universal deformation families and zeta morphisms

<a id="ac-l3-fw-residual-hypotheses"></a>

### L3.1 The residual hypotheses of the Fouquet–Wan and Nakamura theorems

For an odd prime p, a finite field 𝔽 of characteristic p and an odd absolutely irreducible continuous ρ̄: G_ℚ → GL_2(𝔽) unramified outside a finite set Σ ∋ p, define the predicates: (A2.1) ρ̄|_{G_{ℚ(√p*)}} is absolutely irreducible (p* = (−1)^{(p−1)/2}p), and if ρ̄|_{G_{ℚ_p}} is an extension of χ_2 by χ_1 then χ_1^{-1}χ_2 ∉ {1, χ̄_cyc} (FW Assumption 2.1); (A3.5) if (ρ̄|_{G_{ℚ_p}})^{ss} = χ̄_1 ⊕ χ̄_2 then χ̄_1^{-1}χ̄_2 ≠ χ̄_cyc (FW Assumption 3.5); (A3.7) there is ℓ ∥ N, ℓ ≠ p, with dim_𝔽 ρ̄^{I_ℓ} = 1 (FW Assumption 3.7); (T1.7) (ρ̄|_{G_{ℚ_p}})^{ss} ≠ χ̄ ⊕ χ̄χ̄_cyc for every character χ̄, and there is ℓ ∤ p with ρ̄|_{G_{ℚ_ℓ}} a ramified extension 0 → µχ^{1−k/2}_cyc → ρ̄|_{G_{ℚ_ℓ}} → µχ^{−k/2}_cyc → 0, µ the nontrivial unramified quadratic character (FW Thm 1.7); and Nakamura's (N1) p ≥ 5, (N2) ρ̄|_{G_{ℚ(ζ_p)}} absolutely irreducible, (N3) End_{𝔽[G_{ℚ_p}]}(ρ̄_p) = 𝔽, (N4) ρ̄_p not of the form (1 ∗; 0 ε^{±1}) ⊗ χ, (N5) ρ̄_p not of the form (1 ∗; 0 1) ⊗ χ (Nakamura Thm 1.1). Define T5.1 separately: the same global irreducibility, local semisimple exclusion and ramified Steinberg-shape witness, but µ may be trivial when ρ̄|G_Qp is reducible; it must be nontrivial when that local representation is irreducible. The pointwise and family theorems of §5 use T5.1, not an identification of these two predicates.

Assume the predicates are on the residual representation only; the scalar exclusion (ρ̄|_{G_{ℚ_p}})^{ss} ≠ χ̄ ⊕ χ̄ is part of A2.1 through its second clause and the endomorphism remark after it (FW p. 17).

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Assumption 2.1, p. 17; Assumption 3.5, p. 24; Assumption 3.7, p. 25; Thm 1.7, p. 7; Thm 5.1, p. 68. The residual hypotheses of the deformation-theoretic part and of the main theorems. [Nakamura](https://arxiv.org/pdf/2006.13647v2), Thm 1.1 (1)–(5) and Remark 1.2, pp. 4–5. Nakamura's hypotheses, with the remark that (2) and (5) can be removed for the promodular ring and why (1), (3), (4) are needed.

For the p=3 extension the original source is [Paškūnas 2016](https://msp.org/ant/2016/10-6/ant-v10-n6-p06-p.pdf), Props 2.13 and 2.33, printed pp. 1312 and 1327–1328 (PDF pp. 14 and 29–30). They concern the projective envelope/universal deformation identification and the reduced potentially semistable deformation quotient, respectively, with the representation, central character and type hypotheses of §2. FW's remark after Thm 3.6, p. 24, cites these results to remove Nakamura's extra prime bound. It does not remove the remaining local residual hypotheses or provide the needed supplier adapter by itself.

The proof proceeds as follows. Record each predicate as a Prop on ρ̄ with its source. Under A2.1 the local endomorphism algebra is F: its scalar semisimplification exception has already been excluded by A2.1(2). Nakamura's remark on N2/N5 (they can be dropped for the promodular ring) and FW's remark on p ≥ 5 (removed by Paškūnas's 2016 generalization) are recorded as API facts.

The interface is used in [L3.2](#ac-l3-universal-deformation-ring-structure) to A2.1 makes R_Σ(ρ̄) representable, CI and isomorphic to the Hecke algebra; in [L3.7](#ac-l3-nakamura-universal-zeta-morphism) to N1–N5 (or N1, N3, N4 for the promodular ring); in [L4.5](#ac-l4-fw-pointwise-theorem) to T51 is the §5 pointwise hypothesis; T17 is the narrower introductory formulation; in ModularIwasawaMainConjectures:L2/fw-pointwise-theorem to T51 is the §5 pointwise hypothesis; T17 is the narrower introductory formulation.

Provide `FWResidual.A21`: Assumption 2.1 as a predicate on ρ̄.

Provide `FWResidual.A35`: Assumption 3.5.

Provide `FWResidual.A37`: Assumption 3.7 (a prime ℓ ∥ N with one-dimensional inertia invariants).

Provide `FWResidual.T17`: The residual hypotheses of FW Thm 1.7, with nontrivial µ in every case.

Provide `FWResidual.Nakamura`: Nakamura's (N1)–(N5).

Provide `FWResidual.scalar_endomorphisms`: A21 implies End_{F[G_Qp]}(ρ̄_p)=F, without an additional exception.

Provide `FWResidual.twist_invariant`: A21, A35 and the Nakamura exclusions are invariant under character twists. A37 is preserved by a twist unramified at its chosen witness ℓ. The specified Steinberg shape and µ in T17/T51 are not invariant under arbitrary twists.

Provide `FWResidual.T51`: The residual hypotheses of FW Thm 5.1, with µ allowed trivial only when ρ̄_p is reducible.

Provide `FWResidual.ext`: Each predicate transports under an isomorphism of residual representations; predicates including a witness retain the chosen prime and its local characters.

**Checks.**

- For p = 5 and ρ̄ induced from a character of G_{ℚ(√5)} (dihedral with respect to ℚ(√p*)), A21 fails while ρ̄ itself is absolutely irreducible.
- For E/ℚ with good ordinary reduction at p, (ρ̄_{E,p}|_{G_{ℚ_p}})^{ss} = u ⊕ u^{-1}χ̄_cyc with u unramified, u(Frob_p) = a_p mod p; this has the form χ̄ ⊕ χ̄χ̄_cyc exactly when a_p ≡ ±1 mod p, and then the first clause of T1.7 fails.
- For E/ℚ with split multiplicative reduction at ℓ and p ∤ ord_ℓ(Δ_E), ρ̄_{E,p} is ramified at ℓ with dim ρ̄^{I_ℓ} = 1, so A37 holds for ℓ ∥ N (Tate curve).
- If (ρ̄|_{G_{ℚ_p}})^{ss} ≅ χ̄ ⊕ χ̄, the endomorphism algebra of a split ρ̄|_{G_{ℚ_p}} is M_2(𝔽), so N3 fails.
- For a reducible-at-p residual representation with the required ramified local Steinberg shape and µ=1, that witness is allowed by T51 and excluded by T17. This distinguishes the two source statements rather than conflating their µ hypotheses.
- For the split scalar representation ρ̄|G_Qp=χ̄⊕χ̄, the endomorphism algebra has dimension four, so N3 and A2.1 fail. For p≥3 the weaker A3.5 ratio exclusion alone does not reject this example, because χ̄_cyc≠1. This distinguishes the two local hypothesis predicates.

This uses GlobalGaloisDeformations R04.2 (`universal-deformation-ring`), GL2ModularityLifting R32.1 (`quadratic-cyclotomic-irreducibility`), GL2ModularityLifting R32.1 (`exceptional-local-cases`), GL2ModularityLifting R32.1 (`p-star`).

<a id="ac-l3-universal-deformation-ring-structure"></a>

### L3.2 The universal deformation ring is a reduced complete intersection, finite free over Λ, and equal to the Hecke algebra

Under FW Assumption 2.1 ([L3.1](#ac-l3-fw-residual-hypotheses)), the universal deformation ring R_Σ(ρ̄) of ρ̄ unramified outside Σ is a flat O-algebra which is a complete intersection of Krull dimension 4 (FW Prop. 2.4); there is a Zariski-dense open X^sm ⊂ Spec R_Σ(ρ̄) containing every point that is ordinary up to twist (if ρ̄|_{G_{ℚ_p}} is reducible) or crystalline and short up to twist (if irreducible), at which Spec R^χ_Σ(ρ̄) → Spec O is formally smooth, and R_Σ(ρ̄) is reduced (Cor. 2.5); the classical points (up to twist) are Zariski dense, so the surjection R_Σ(ρ̄) → 𝕋^Σ_{m_ρ̄} is an isomorphism (Prop. 2.6); and there is a regular sequence (x_1, x_2, x_3) in 𝕋^Σ_{m_ρ̄} making it a finite free module over Λ = O[[X_1, X_2, X_3]], such that classical points with the same image in Spec Λ are all crystalline-short (resp. ordinary) up to twist or none are (Cor. 2.7). Finite flatness over the regular ring Λ does not make R_Σ(ρ̄) regular; the main conjecture over R_Σ(ρ̄) is formulated through perfect complexes and the regular subring Λ.

Assume FW Assumption 2.1; p odd; Σ finite containing p and the ramification of ρ̄. The existence of a classical point of the Serre weight (FW cites Edixhoven/Gross–Coleman–Voloch-type results [31]) and the local deformation rings at p (ordinary or crystalline-short) are inputs. The complete-intersection and density proof here is FW Prop. 2.4–2.6 with its local hypotheses. Do not replace it by the supplier’s unobstructed-ring hypothesis or assume all such rings regular.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Prop. 2.4 and proof, p. 18; Cor. 2.5, p. 19; Prop. 2.6 and Cor. 2.7 with proofs, p. 20. Flatness and the complete-intersection property, the smooth locus X^sm, R = 𝕋 and the finite free Λ-structure. [FW](https://arxiv.org/pdf/2107.13726v3), §1.2, p. 9; §1.2.2, p. 14. R_Σ(ρ̄) ≅ 𝕋 is a reduced complete intersection of relative dimension 3, not known to be factorial; the descent is carried out over the regular ring Λ.

The proof proceeds as follows. Twisting by canonical square roots of characters in 1 + ϖO identifies R_Σ(ρ̄) ≅ R^χ_Σ(ρ̄) ⊗̂ R_Σ(𝟙), reducing to fixed determinant (proof of FW Prop. 2.4). Fixed determinant: the ordinary (resp. crystalline-short) quotient is cut out by a regular sequence (x_2, x_3) and is a finite Hecke algebra at a classical point; a presentation over the local rings gives the complete-intersection property (GlobalGaloisDeformations:R04.3/local-to-global-presentation, global-dimension-lower-bound). Use FW Cor. 2.5 and Prop. 2.6: establish reducedness and density with the specified ordinary/crystalline local quotients, then identify R with T. R31.6/boeckle-r-equals-t supplies a related unobstructed statement; it does not prove this obstructed complete-intersection theorem on its own. Choose x_1 from R_Σ(𝟙) to get the Λ-structure of Cor. 2.7.

**Checks.**

- The Λ-structure depends on the initial classical point; the map Spec 𝕋 → Spec Λ may be ramified, even at classical points, but not at points of X^sm.
- No axiom 'R = T' is imported: the isomorphism is proved from density of classical points and reducedness.

This uses [L3.1](#ac-l3-fw-residual-hypotheses), GlobalGaloisDeformations R04.2 (`universal-deformation-ring`), GlobalGaloisDeformations R04.2 (`fixed-determinant-rings`), GlobalGaloisDeformations R04.3 (`local-to-global-presentation`), GlobalGaloisDeformations R04.3 (`global-dimension-lower-bound`), LocalGaloisDeformationRings R08.1 (`local-lifting-ring`), LocalGaloisDeformationRings R08.3 (`pst-deformation-ring`), LocalGaloisDeformationRings L7 (`geraghty-fixed-weight-ordinary-rings`), LocalGaloisDeformationRings R08.6 (`export-fontaine-laffaille-irreducible`), CompletedCohomologyAndLocalGlobalCompatibility R31.6 (`boeckle-r-equals-t`), GL2ModularityLifting R32.2 (`odd-prime-de-rham-lifting`), DeformationAndDerivedPatchingAlgebra R03.3 (`complete-intersection-local`), DeformationAndDerivedPatchingAlgebra R03.3 (`free-of-maximal-depth-regular-local`), `IsRegularLocalRing` (Mathlib), `IsReduced` (Mathlib).

<a id="ac-l3-smooth-classical-points"></a>

### L3.3 Classical points of good reduction type exist and are dense

Under FW Assumption 2.1: (i) if ρ̄|_{G_{ℚ_p}} is irreducible there is a crystalline and short classical point λ_f with R_Σ(ρ̄) ≅ R_Σ(ρ̄_f) (FW Lemma 2.2), and in general a point of Spec 𝕋^Σ_{m_ρ̄} that is crystalline-short, crystalline-short up to the quadratic twist ω^{(p−1)/2}, good ordinary, or good ordinary up to a quadratic twist (FW Lemma 2.8, used in the proof of Thm 5.1); (ii) X^sm is Zariski dense and the set of specializations that are not Iwasawa-suitable, or at which Spec 𝕋 is not étale over Spec Λ, is contained in a locus of codimension at least one (FW Props 2.6, 3.16).

Retain the stated hypotheses; Iwasawa-suitable in the sense of FW Def. 3.19.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Lemma 2.2 and proof, p. 17; proof of Thm 5.1 (Lemma 2.8), p. 73; Prop. 2.6, p. 20; §3.2.2 (Prop. 3.16), p. 29. Existence of crystalline-short or ordinary points and density of good specializations.

The proof proceeds as follows. Lemma 2.2: twist so that the inertial weights are fundamental characters of level 2 and use the Serre weight conjecture (now a theorem) to produce a crystalline short form. Lemma 2.8: the analogous statement covering the reducible-at-p case with ordinary points. Density and codimension from Cor. 2.5 and Prop. 3.16.

**Checks.**

- These are the seed points at which [L4.2](#ac-l4-etale-point-descent) applies L2's crystalline theorem or the ordinary theorem.

This uses [L3.2](#ac-l3-universal-deformation-ring-structure), SerreWeightAndLevelOptimisation R20.6, LocalGaloisDeformationRings R08.6 (`export-fontaine-laffaille-irreducible`).

<a id="ac-l3-fundamental-line"></a>

### L3.4 Fundamental lines over the deformation ring and its quotients

Let A be a quotient of 𝕋^Σ_{m_ρ̄} or of Λ (for example 𝕋, R(𝔞) = 𝕋/𝔞 for a minimal prime 𝔞, Λ, O_Iw or O) and T := T_Σ ⊗ A. The complexes RΓ_et(ℤ[1/Σ], T) and RΓ(G_{ℚ_ℓ}, T) are perfect and commute with derived base change (FW Lemma 3.17). The Σ-partial fundamental line is the graded invertible A-module Δ_Σ(T) := Det^{-1}_A RΓ_et(ℤ[1/Σ], T) ⊗_A Det^{-1}_A T(−1)^+ (FW Def. 3.18); for A a domain and ℓ ∈ Σ prime to p put X_ℓ(T) := Det_A RΓ(G_{ℚ_ℓ}/I_ℓ, T^{I_ℓ}) if rank T^{I_ℓ} ≠ 1 and Det_A[A —(1−α_ℓ)→ A] if rank T^{I_ℓ} = 1, and the fundamental line Δ(T) := Δ_Σ(T) ⊗ ⊗_{ℓ∈Σ∖{p}}(X_ℓ(T) ⊗ Det^{-1}_A RΓ(G_{ℚ_ℓ}, T)). Any ψ: A → A′ induces Δ_A(T) ⊗_A A′ ≅ Δ_{A′}(T′) for the Σ-partial line, and for the full line when ψ is Iwasawa-suitable; when both are defined, Δ_A(T) ≅ Det^{-1}RΓ_et(ℤ[1/p], T) ⊗ Det^{-1}T(−1)^+ (FW Prop. 3.20). In the rank-one correction [A→(1−α_ℓ)A], the two terms are in degrees 0 and 1. Under the acyclic trivialization its determinant basis maps to 1−α_ℓ; the inverse determinant gives (1−α_ℓ)^{-1}. No local X_p is used.

Use the requested Knudsen–Mumford graded determinant functor on perfect complexes, owned by PadicMeasuresIwasawaAlgebras:L5 but not present in the current upstream checkout; T(−1)^+ is the complex-conjugation + part.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), §3.3: Lemma 3.17, Defs 3.18–3.19, Prop. 3.20 and proof, pp. 31–32. The Σ-partial and full fundamental lines over quotients of 𝕋 or Λ and their base change. [FW](https://arxiv.org/pdf/2107.13726v3), §1.2.2, pp. 12–14. Why fundamental lines rather than characteristic or Fitting ideals.

The proof proceeds as follows. Perfectness and base change of étale cohomology complexes (Nekovář's Selmer complexes, FW Lemma 3.17). Define Δ_Σ and Δ by the determinant functor; the local factors X_ℓ use the explicit two-term complex when the inertia invariants have rank one. Prop. 3.20: identify Δ with the {p}-partial line through the cone of RΓ(ℤ[1/Σ]) ⊕ ⊕RΓ(G_{ℚ_ℓ}) → ⊕RΓ(G_{ℚ_ℓ}/I_ℓ, T^{I_ℓ}), and check base change of X_ℓ when ranks of inertia invariants agree and ψ(α_ℓ) = α′_ℓ.

The interface is used in [L3.9](#ac-l3-zeta-trivialization) to prove that the zeta morphism trivializes Δ_Σ(T_Σ) inside Frac Λ; in [L4.3](#ac-l4-fw-universal-family-theorem) to establish Δ_Σ(T_Σ) ≅ Λ; in [L4.6](#ac-l4-derived-specialization-corrections) to the Euler-factor lines X_ℓ and their base change at non-Iwasawa-suitable points; in ModularIwasawaMainConjectures:L4/fw-universal-family-theorem to the consumer's formulation.

Provide `FundLine.partial`: Δ_Σ(T) = Det^{-1}RΓ_et(ℤ[1/Σ], T) ⊗ Det^{-1}T(−1)^+, a graded invertible A-module.

Provide `FundLine.full`: Δ_Σ(T) tensored with X_ℓ(T)⊗Det^{-1}RΓ(G_Qℓ,T) for ℓ∈Σ∖{p}.

Provide `FundLine.eulerFactorLine`: X_ℓ=Det[A→(1−α_ℓ)A] in degrees 0,1 in rank one. Its acyclic trivialization has image (1−α_ℓ)A when 1−α_ℓ≠0.

Provide `FundLine.baseChange_partial`: Δ_Σ(T) ⊗_A A′ ≅ Δ_Σ(T ⊗ A′) for every ring map A → A′.

Provide `FundLine.baseChange_full`: Δ(T) ⊗_{A,ψ} A′ ≅ Δ(T′) for ψ Iwasawa-suitable (FW Prop. 3.20).

Provide `FundLine.compare_p`: Δ_A(T) ≅ Det^{-1}RΓ_et(ℤ[1/p], T) ⊗ Det^{-1}T(−1)^+ when the latter is defined.

Provide `FundLine.trivial_of_torsion`: Over a regular domain, a trivialization of Δ inside Frac A is A itself iff the corresponding characteristic ideals agree (using the determinant/characteristic criterion stated here pointwise).

Provide `FundLine.ext`: The determinant functor transports isomorphisms of perfect complexes and their distinguished-triangle identifications; specified trivializations agree iff their generic maps agree.

**Checks.**

- For A = O_Iw and T = T(f)_Iw with H¹ free of rank one and H² torsion, Δ_Σ(T) is concentrated in degree zero and is a free O_Iw-module of rank one.
- For [A→d A] in degrees 0,1 with d≠0, the standard determinant basis maps to d, giving the fractional lattice dA; Det^{-1} gives d^{-1}A. For d a unit both are A. This fixes the sign rather than leaving ±1 unspecified.
- For ψ: 𝕋 → R(𝔞) the base change of Δ_Σ(T_Σ) is Δ_Σ(T(𝔞)) — the left column of FW (1.2.2).
- Take A=k[[x,y]] and M=A/(x,y). M has finite projective dimension two, characteristic divisor zero and divisorial characteristic ideal A, but Fitt₀(M)=(x,y), which is not invertible. Replacing its perfect-complex determinant by this Fitting ideal loses invertibility even though Fitting ideals themselves commute with module base change.
- Fitting ideals commute with ordinary module base change but need not be invertible and do not encode the alternating determinant of all cohomology. Characteristic divisors require the appropriate normal-ring hypotheses and are principal only in a UFD. Perfect-complex determinant lines commute with derived base change; the full local correction also requires Iwasawa-suitability.
- At α=1 the Euler differential is zero. The determinant line still exists, but its acyclic fractional trivialization does not; no inverse of 1−α is formed.

This uses PadicMeasuresIwasawaAlgebras L5, SelmerIwasawaCohomology L3 (`selmer-determinant`), SelmerIwasawaCohomology L3 (`iwasawa-finiteness-euler`), SelmerIwasawaCohomology L2 (`selmer-complex`), [L3.2](#ac-l3-universal-deformation-ring-structure).

<a id="ac-l3-completed-homology-factorization"></a>

### L3.5 Completed (co)homology localized at ρ̄ and its local–global factorization

Under Nakamura (N1),(N3),(N4), use the intrinsic BM co-Whittaker factor B_{Σ_0} and its smooth dual B^∨_{Σ_0}. In NAK-v2 Cor. 2.5 (p. 25), completed Borel–Moore homology factors as (π_p^m)^*⊗(ρ^m)^*⊗B_{Σ_0}; the factor is the untilde π of that version. NAK-v2 Thm 2.2 (p. 20) describes completed cohomology using the smooth-dual factor, denoted tilde π there. The published version reverses these notational roles. The zeta construction uses the BM factor as in NAK-v2 (47), p. 63; do not identify B with B^∨. In the GL₂ families used by FW Props 6.7–6.9, retain the minimal-lift hypothesis and let the essential-vector level be the common conductor exponent. Its invariants are free of rank one and commute with the specified classical base change; no assertion is made across a conductor jump. This last property uses the explicit GL₂ classification, not merely the rank-one top derivative in the definition of co-Whittaker.

Assume (N1), (N3), (N4); in particular p ≥ 5, which is the range of PadicLocalLanglandsForGL2Qp:R30.5's targets. FW's extension to p = 3 rests on Paškūnas's 2016 generalization (FW remark after Thm 3.6), which the imported targets do not cover; it is the target `paskunas2016_projectiveEnvelope` (Paškūnas 2016, Propositions 2.13 and 2.33, printed pp. 1312 and 1327–1328), stated in the PadicLocalLanglandsForGL2Qp supplier contract and proved here. The co-Whittaker families exist (Helm's local Langlands in families, conditional in general in SmoothRepresentationsOfLocalGroups:SR.5, proved in the GL_2 cases needed by FW Prop. 6.8).

The source is [Nakamura](https://arxiv.org/pdf/2006.13647v2), Thm 2.2, p. 20; Cor. 2.5 (§2.3), p. 25; §4.1 (47), p. 63. The factorization of completed cohomology and its dual for completed Borel–Moore homology, used to define the zeta morphism. [FW](https://arxiv.org/pdf/2107.13726v3), Props 6.7–6.9, pp. 77–78; Thm 6.10, p. 79. Co-Whittaker modules in families, essential vectors and Emerton's theorem in FW's form.

The proof proceeds as follows. Import Emerton's local–global compatibility (CompletedCohomologyAndLocalGlobalCompatibility:R31.4) and the Paškūnas description of the Montréal functor (PadicLocalLanglandsForGL2Qp:R30.5). Use NAK-v2 Cor. 2.5 for BM homology and its untilde co-Whittaker factor; use Thm 2.2 for cohomology and the smooth-dual factor. Track the factors by their intrinsic property before importing notation from the published version. Essential vectors in families: co-Whittaker modules are unique (FW Prop. 6.7), have the explicit shapes of Prop. 6.8, and their K_1(ϖ^m)-invariants at the common conductor exponent are free of rank one with base change (Prop. 6.9). Retain the minimal-lift/unchanged-monodromy hypothesis of §6.2; a specialization with conductor drop is outside this assertion.

**Checks.**

- R31.4 and R30.5/R30.6 are the owners of generic local–global compatibility and p-adic local Langlands. Existing upstream SmoothRepresentationsOfLocalGroups owns the generic co-Whittaker API. The specific unconditional GL₂ family and essential-vector comparison of FW Props 6.7–6.9 still require the recorded supplier contract; the conditional general LLC-family target is not itself an unconditional proof.

This uses CompletedCohomologyAndLocalGlobalCompatibility R31.4 (`the-main-local-global-theorem-with-its-two-residual-hypotheses`), CompletedCohomologyAndLocalGlobalCompatibility R31.4 (`dual-local-global-compatibility-for-completed-homology`), CompletedCohomologyAndLocalGlobalCompatibility R31.4 (`local-langlands-families-over-the-hecke-algebra`), PadicLocalLanglandsForGL2Qp R30.5 (`paskunas-endomorphism-rings`), PadicLocalLanglandsForGL2Qp R30.5 (`dual-of-universal-deformation`), SmoothRepresentationsOfLocalGroups SR.5 (`co-whittaker`), SmoothRepresentationsOfLocalGroups SR.5 (`llc-family-conditional`), SmoothRepresentationsOfLocalGroups SR.5 (`essential-vector-contract`), SmoothRepresentationsOfLocalGroups SR.5 (`reduced-family-reconstruction`), [L3.1](#ac-l3-fw-residual-hypotheses).

<a id="ac-l3-equivariant-zeta-morphism-completed-homology"></a>

### L3.6 The G_Σ-equivariant zeta morphism on completed homology

For N ≥ 3, n ≥ 1 with prime(Np) = Σ and (n, Σ) = 1, Nakamura constructs from Kato's full-level Hecke-linear zeta classes a ℤ_p[GL_2(ℤ/N)]-linear map z^{Iw}_{N,n}(k, −): H¹(Y(N), 𝒱^*_k)(1) → H¹_Iw(ℤ[1/Σ_n, ζ_n], H¹(X(N), j_*𝒱^*_k(2)))_{Q_{k,n}} (Prop. 3.8, Q_{k,n} the multiplicative set of the smoothing factors); after localizing at the non-Eisenstein ideal of ρ̄ it lands in the unlocalized Iwasawa cohomology of H¹(Y(N), 𝒱^*_k)_ρ̄(2) (Cor. 3.14, Prop. 3.15); the limits over p-power level define a continuous 𝕋_{ρ̄,Σ}[G_Σ]-linear map z^{Iw}_{Σ,n,ρ̄}: H̃^{BM}_{1,ρ̄,Σ} → H¹_Iw(ℤ[1/Σ_n, ζ_n], H̃^{BM}_{1,ρ̄,Σ}(1)) with z(τv) = σ_{−1}z(v) and the Euler-system norm relations (Thm 3.16); and the weight-k maps are recovered from weight two by tensoring over O[[K_m]] with W = Sym^{k−2}(O²)^* (Prop. 3.17).

Localization at the non-Eisenstein maximal ideal of ρ̄ (absolutely irreducible) is what makes H¹(X(N), j_*𝒱) and H¹(Y(N), 𝒱) agree and the map integral.

The source is [Nakamura](https://arxiv.org/pdf/2006.13647v2), §3.2 Prop. 3.8 (p. 48), Cors 3.10–3.11 (p. 52); §3.3 Cor. 3.14, Prop. 3.15 (p. 56); §3.4 Thm 3.16 (p. 60), Prop. 3.17 (p. 61) — statements. The equivariant zeta morphisms at finite level, their integrality after localization, the limit on completed homology and the weight comparison.

The proof proceeds as follows. Prop. 3.8: assemble Kato's classes c,d-z_{N,n}(k, r, r′) into a Hecke- and GL_2(ℤ/N)-equivariant map, removing the c,d smoothing in the localization Q_{k,n} (following Fukaya–Kato). Use NAK-v2 Prop. 3.15 to remove the smoothing denominators after non-Eisenstein localization, via freeness and the finite-level comparison. Its c² smoothing coefficient is already correct in arXiv v2; the later published bare-c coefficient must likewise be c² for this comparison. Thm 3.16: pass to the limit over N_0p^∞ and over levels in Σ_0; Prop. 3.17 compares weights.

The interface is used in [L3.7](#ac-l3-nakamura-universal-zeta-morphism) to z^{Iw}_{Σ,n,ρ̄} is transported through φ_1 to define z_{Σ,n}(ρ^m); in [L3.8](#ac-l3-nakamura-specialization-theorem) to Prop. 3.17 and the finite-level maps compute the specialization at classical points.

Provide `CompZeta.finiteLevel`: z^{Iw}_{N,n}(k, −), ℤ_p[GL_2(ℤ/N)]-linear, valued in the Q_{k,n}-localized Iwasawa cohomology.

Provide `CompZeta.integral`: After localization at ρ̄ the map is integral (no Q_{k,n}-denominators).

Provide `CompZeta.limit`: z^{Iw}_{Σ,n,ρ̄} on H̃^{BM}_{1,ρ̄,Σ}, continuous and 𝕋_{ρ̄,Σ}[G_Σ]-linear.

Provide `CompZeta.conj`: z(τv) = σ_{−1}z(v) for complex conjugation τ.

Provide `CompZeta.norm`: Cor ∘ z_{Σ,nl} = z_{Σ,n} if l | n and P_l(σ_l^{-1})z_{Σ,n} if (l, n) = 1, l ∉ Σ.

Provide `CompZeta.weight`: Use the completed tensor W⊗_{O[[K_m]]}H̃^{BM}_1[1/p] in NAK-v2 Prop. 3.17, not a plain tensor over O. It is identified with the indicated finite-level weight-k cohomology, and the induced zeta maps commute.

Provide `CompZeta.ext`: The continuous limit map is determined by its finite-level compatible maps. Its weight maps retain the K_m coinvariants.

**Checks.**

- At k=2, W is the trivial representation, so tensoring over O[[K_m]] takes K_m-coinvariants and gives the finite-level comparison. It does not identify the entire infinite-level homology with a finite-level group by an ordinary tensor.
- For l | n, corestriction from level nl to n is the identity on the zeta morphism (no Euler factor).
- For j=0 and the trivial cyclotomic character, the augmentation of c²−c^{2−j}σ_c is zero, so the smoothing element cannot be inverted integrally there. This rejects a universal unsmoothing-by-unit argument; it does not assert nonintegrality of every Eisenstein component.
- At finite level N and weight k the map agrees with KatoEulerSystems:L2/full-level-hecke-linear-zeta-classes after removing the smoothing factors.
- The modular input is imported from KatoEulerSystems:L2 (full-level Hecke-linear zeta classes), which says the universal-deformation map is owned here.

This uses KatoEulerSystems L2 (`full-level-hecke-linear-zeta-classes`), KatoEulerSystems L2 (`p-adic-zeta-elements-and-their-norm-relations`), KatoEulerSystems L2 (`hecke-dual-twist-dictionary`), [L3.5](#ac-l3-completed-homology-factorization), SelmerIwasawaCohomology L3 (`iwasawa-cohomology`).

<a id="ac-l3-nakamura-universal-zeta-morphism"></a>

### L3.7 Nakamura's universal zeta morphism

Let ρ̄: G_ℚ → GL_2(𝔽) satisfy (N1)–(N5) of [L3.1](#ac-l3-fw-residual-hypotheses) (or (N1), (N3), (N4) with R_{ρ̄,Σ} replaced by the promodular ring 𝕋_{ρ̄,Σ}), with universal deformation ρ^u over R_{ρ̄,Σ}. There is a family of R_{ρ̄,Σ}-linear maps z_{Σ,n}(ρ^u): (ρ^u)^* → H¹_Iw(ℤ[1/Σn, ζ_n], (ρ^u)^*(1)), n ≥ 1 prime to Σ, such that (i) z_{Σ,n}(ρ^u)(τv) = σ_{−1}z_{Σ,n}(ρ^u)(v) for complex conjugation τ; (ii) Cor ∘ z_{Σ,nl}(ρ^u) = z_{Σ,n}(ρ^u) if l | n and P_l(σ_l^{-1})·z_{Σ,n}(ρ^u) if (l, n) = 1; (iii) at every point x_f of Spec R_{ρ̄,Σ}(ℚ̄_p) attached to a newform f, z_{Σ,1}(f) = ∏_{l∈Σ∖{p}} P_{f,l}(σ_l^{-1})·z(f) with P_{f,l}(u) = det(1 − Frob_l u | ρ_f^{I_l}) (Nakamura Thm 1.1, Cor. 4.2, Thm 4.3). Condition (i) makes z_{Σ,n}(ρ^u) an R ⊗̂ Λ_n-linear map on (ρ^u)^* ⊗̂_{ℤ_p[±1]} Λ_n (Remark 1.2). It is defined by transporting z^{Iw}_{Σ,n,ρ̄} along φ_1 ([L3.5](#ac-l3-completed-homology-factorization)), factoring out the projective envelope P̃ and applying the Whittaker functor Ψ_{Σ_0} at the primes of Σ_0 (§4.1, Lemma 4.1).

Assume (N1)–(N5); FW's version (FW Thm 3.6) works under Assumptions 2.1 and 3.5 and removes p ≥ 5 via Paškūnas's 2016 generalization of the relevant local results (FW remark after Thm 3.6).

The source is [Nakamura](https://arxiv.org/pdf/2006.13647v2), Thm 1.1 and Remark 1.2, pp. 4–5; §4.1 (47)–(48), Lemma 4.1 and the construction, pp. 63–65; Cor. 4.2, p. 65. The universal zeta morphisms and their τ-equivariance and Euler-system relations (published §4.1, pp. 239–242). [FW](https://arxiv.org/pdf/2107.13726v3), §3.2.1, Assumption 3.5 and Thm 3.6, p. 24. Fouquet–Wan's statement of Nakamura's theorem and the removal of p ≥ 5.

The proof proceeds as follows. Lemma 4.1: φ_1 induces an isomorphism H¹_Iw(ℤ[1/Σ_n, ζ_n], H̃^{BM}_{1,ρ̄,Σ}(1)) ≅ (π^m_p)^* ⊗̂ H¹_Iw(ℤ[1/Σ_n, ζ_n], (ρ^m)^*(1) ⊗ B^m_{Σ_0}), via a perfect complex computing Iwasawa cohomology. Remove the factor (π^m_p)^* using Paškūnas's identification of P̃ with the dual of the universal deformation of π̄ (removing-projective-envelope), and apply the Whittaker functor to B^m_{Σ_0}, which is co-Whittaker so that Ψ_{Σ_0}(B) ≅ 𝕋 (§4.1). Properties (i)–(ii) follow from Thm 3.16 (Cor. 4.2); (iii) is [L3.8](#ac-l3-nakamura-specialization-theorem).

The interface is used in [L3.9](#ac-l3-zeta-trivialization) to z_Σ trivializes the fundamental line Δ_Σ(T_Σ); in [L4.7](#ac-l4-zeta-morphism-congruences) to congruent newforms have congruent Euler-corrected zeta morphisms because they are specializations of one z_{Σ,n}(ρ^u); in [L4.8](#ac-l4-residual-zeta-morphism) to base change to 𝔽 gives z_{Σ,n}(ρ̄).

Provide `NakamuraZeta.map`: z_{Σ,n}(ρ^u): (ρ^u)^* → H¹_Iw(ℤ[1/Σn, ζ_n], (ρ^u)^*(1)), R_{ρ̄,Σ}-linear.

Provide `NakamuraZeta.conj`: z(τv) = σ_{−1}z(v); hence R ⊗̂ Λ_n-linearity on (ρ^u)^* ⊗̂_{ℤ_p[±1]} Λ_n.

Provide `NakamuraZeta.norm`: The Euler-system norm relations in n.

Provide `NakamuraZeta.specialize`: Base change along x: R_{ρ̄,Σ} → A commutes with Iwasawa cohomology (perfect complexes) and gives z_{Σ,n}(ρ_x).

Provide `NakamuraZeta.changeSigma`: For Σ ⊂ Σ′, z_{Σ′,n}(ρ^m_{Σ′}) ⊗ id = ∏_{l∈Σ′∖Σ} P_l(σ_l^{-1})·z_{Σ,n}(ρ^m_Σ) (Nakamura (77)).

Provide `NakamuraZeta.classical`: At a newform point, z_{Σ,1}(f) = ∏_{l∈Σ_0} P_{f,l}(σ_l^{-1})·z(f) (Thm 4.3).

Provide `NakamuraZeta.ext`: The map is uniquely specified by the equivariant completed-homology construction after the projective-envelope and Whittaker identifications; compatible changes of those identifications give the same transported morphism.

**Checks.**

- For l ∉ Σ, (l, n) = 1, Cor ∘ z_{Σ,nl} = P_l(σ_l^{-1})·z_{Σ,n} with P_l(u) = det(1 − Frob_l u | ρ^u) of degree two in u.
- If Σ = {p} (ρ̄ unramified outside p), the Euler factor in NakamuraZeta.classical is empty and z_{Σ,1}(f) = z(f).
- At a weight-two newform of an elliptic curve E of conductor N, the specialization is ∏_{l | N} P_{E,l}(σ_l^{-1}) times Kato's zeta morphism of E (KatoEulerSystems §5.4).
- For residually reducible ρ̄ (Eisenstein) the construction is not available: Emerton's factorization and Kato's Λ-freeness of H¹_Iw are only known for absolutely irreducible ρ̄ (Nakamura Remark 1.2).
- It is the morphism FW call z_Σ: T_Σ(−1)^+ → H¹(ℤ[1/Σ], T_Σ) (FW Thm 3.6) after the identifications of FW §3.2.1.

This uses [L3.6](#ac-l3-equivariant-zeta-morphism-completed-homology), [L3.5](#ac-l3-completed-homology-factorization), [L3.2](#ac-l3-universal-deformation-ring-structure), PadicLocalLanglandsForGL2Qp R30.5 (`removing-projective-envelope`), PadicLocalLanglandsForGL2Qp R30.5 (`dual-of-universal-deformation`), SmoothRepresentationsOfLocalGroups SR.5 (`universal-whittaker`), SmoothRepresentationsOfLocalGroups SR.5 (`co-whittaker`), SelmerIwasawaCohomology L3 (`iwasawa-cohomology`).

<a id="ac-l3-nakamura-specialization-theorem"></a>

### L3.8 The universal zeta morphism specializes to Kato's

Under the assumptions of Nakamura §4 ((N1), (N3), (N4)), for every modular point x_f ∈ Spec(𝕋_{ρ̄,Σ})(E) attached to a newform f ∈ S_k(Γ_1(N_f))^{new} of weight k ≥ 2 and every n ≥ 1 prime to Σ, z_{Σ,n}(f) = ∏_{l∈Σ_0} P_{f,l}(σ_l^{-1})·z_n(f) as maps V′_1(f)_E → H¹_Iw(ℤ[1/Σn, ζ_n], V′_1(f)_E(1)) under V′_1(f)_E ≅ ρ_f^* (55), where z_n(f) is Kato's (Nakamura-twisted) zeta morphism and Σ_0 = Σ ∖ {p}; the equality does not depend on the choice of (55) since End_{E[G_ℚ]}(ρ_f) = E (Nakamura Thm 4.3, Remark 4.4). In particular the morphism specializes to the Kato class used in KatoEulerSystems:L3–L4.

Assume (N1), (N3), (N4); x_f modular.

The source is [Nakamura](https://arxiv.org/pdf/2006.13647v2), Thm 4.3 and Remark 4.4, PDF p. 66; Cor. 4.8 and Prop. 4.9, pp. 69–70; motivic comparison in §4.4, pp. 70–74. The specialization theorem and its proof through Kisin's and Paškūnas's results (published Thm 4.3 p. 243, proof pp. 249–253). [FW](https://arxiv.org/pdf/2107.13726v3), Thm 3.6, p. 24. The diagram expressing that z_Σ specializes to z(f)_{Σ,Iw} at classical points.

The proof proceeds as follows. Let τ be the Galois type of ρ_f|_{G_{ℚ_p}} and ⋄ = cr or st; x_f factors through Kisin's potentially semistable (crystalline) quotient R^⋄_p(k, τ) (Nakamura Thm 4.5). Use NAK-v2 Cor. 4.8 and Prop. 4.9 with M^⋄(k,τ), the algebraic dual and σ^⋄(τ), tensoring over O[[K_0]] with completed BM homology. The type/coinvariant construction is essential and is not the plain tensor with W from a trivial local type. Under these identifications z_{Σ,n}(f) is the base change of Ψ_{Σ_0}(z^{Iw}_{Σ_0,n,ρ̄}(k, σ^⋄(τ), −)); comparing motivic structures with Kato's construction (Nakamura §4.4, (68)–(78)) gives the equality with the Euler factors at Σ_0.

**Checks.**

- The Euler factors at Σ_0 are exactly those of NakamuraZeta.classical; dropping them would contradict the change-of-Σ formula (79).

This uses [L3.7](#ac-l3-nakamura-universal-zeta-morphism), [L3.6](#ac-l3-equivariant-zeta-morphism-completed-homology), KatoEulerSystems L5 (`nakamura-twisted-zeta-morphism`), KatoEulerSystems L5 (`rational-kato-zeta-morphism`), LocalGaloisDeformationRings R08.3 (`pst-deformation-ring`), PadicLocalLanglandsForGL2Qp R30.6 (`paskunas-bm-scalar-endomorphisms`), PadicLocalLanglandsForGL2Qp R30.6 (`kisin-local-inequality`), PadicLocalLanglandsForGL2Qp R30.5 (`kisin-deformation-comparison`).

<a id="ac-l3-zeta-trivialization"></a>

### L3.9 The zeta trivialization of the fundamental line

Let z_Σ: T_Σ(−1)^+ → H¹_et(ℤ[1/Σ], T_Σ) be Nakamura's zeta morphism (FW Thm 3.6). Since H²_et(ℤ[1/Σ], T_Σ) is torsion and H¹ has generic rank equal to that of T_Σ(−1)^+ over 𝕋 (or over Λ), z_Σ determines an injective trivialization triv_{z_Σ}: Δ_Σ(T_Σ) ↪ Q(𝕋^Σ_{m_ρ̄}), equivalently an isomorphism Δ_Σ ≅ (x/y)𝕋 for an invertible fractional ideal (FW (1.2.1)); over Λ it gives triv_{z_Σ}: Δ_Σ(T_Σ) ↪ Frac Λ (Conj. 3.30's map). For every specialization λ: 𝕋 → R(𝔞) to a minimal prime and every classical point λ_f: R(𝔞) → O_Iw there are commutative diagrams relating triv_{z_Σ}, triv_{z(𝔞)} and triv_{z(f)_Iw} (FW (1.2.2), (1.2.3), Props 3.22–3.23), and for Iwasawa-suitable λ the same holds for the full fundamental lines with Euler factors. The Λ-valued map is obtained by the determinant after restriction of scalars; it is the norm construction, not an identification Q(T)=Frac Λ. Define the dual trivialization t^∨ on Δ_Σ^{-1}; if t^∨(Δ_Σ^{-1})=αΛ then t(Δ_Σ)=α^{-1}Λ. FW Prop. 5.5 proves integrality for this dual image.

Assume FW Assumptions 2.1, 3.5; the specializations in the diagrams with full lines are Iwasawa-suitable (Def. 3.19). On each minimal component the zeta morphism becomes an isomorphism on the one-dimensional generic source and target. Establish this using classical-point density and Kato nonvanishing together with FW Lemma 3.13. Generic rank one and torsion H² alone do not suffice.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), §1.2.2 (1.2.1)–(1.2.3), pp. 13–14; §3.3 Props 3.22–3.23, p. 33; Conj. 3.30, p. 36. The trivialization defined by the zeta morphism and its compatibility diagrams. [FW](https://arxiv.org/pdf/2107.13726v3), Def. 3.19, p. 31; Props 3.14–3.16, pp. 27–29. Iwasawa-suitable specializations.

The proof proceeds as follows. Torsion of H² and the rank of H¹ over the total fraction ring (Kato's results at classical points, density) make Det^{-1}RΓ ⊗ Det^{-1}T(−1)^+ ⊗ Q(𝕋) canonically trivial once a generator of the image of z_Σ is chosen. Compatibility with base change ([L3.4](#ac-l3-fundamental-line)) and with specialization of z_Σ ([L3.8](#ac-l3-nakamura-specialization-theorem)) gives the diagrams (FW Props 3.22–3.23). Over Λ, view T_Σ as a free Λ-module of rank 2d and repeat (FW proof of Prop. 5.5).

The interface is used in [L3.10](#ac-l3-kato-generalized-main-conjecture) to the conjectures assert the image of triv is the whole ring; in [L4.1](#ac-l4-integrality-of-universal-trivialization) to FW Prop. 5.5 puts the image of the dual map on Δ^{-1} inside Λ; in [L4.4](#ac-l4-family-to-point-limit) to the diagram at a classical point is the one used in the limit argument.

Provide `ZetaTriv.map`: triv_{z_Σ}: Δ_Σ(T_Σ) ↪ Q(𝕋), injective, image an invertible fractional ideal (x/y)𝕋.

Provide `ZetaTriv.overLambda`: Apply determinant after restricting the finite free T-representation to Λ; generically this is the determinant norm from the finite Λ-algebra. It does not identify its total fraction algebra with Frac Λ.

Provide `ZetaTriv.specialize`: Diagram (1.2.2) for 𝕋 → R(𝔞) and (1.2.3) for R(𝔞) → O_Iw.

Provide `ZetaTriv.full`: For Iwasawa-suitable λ, the analogous diagram for the full lines Δ with Euler-factor lines X_ℓ.

Provide `ZetaTriv.image`: Keep t(Δ_Σ)=α^{-1}Λ and t^∨(Δ_Σ^{-1})=αΛ distinct. Both are unit lattices exactly when α∈Λ^×.

Provide `ZetaTriv.pointwise`: At a classical point, triv_{z(f)_Iw} is Kato's trivialization of Δ(f)_Iw (FW Thm 3.4).

Provide `ZetaTriv.ext`: Two trivializations of the same invertible module agreeing after extension to the total fraction algebra agree; scalar extension uses the determinant norm.

**Checks.**

- At a classical point with O_Iw regular, triv_{z(f)_Iw}(Δ) = O_Iw iff char H² = char(H¹/z(f)_Iw) (Kato's main conjecture).
- For residually reducible ρ̄ no z_Σ is available and ZetaTriv.map is undefined.
- At the finite étale fiber used in FW Prop. 5.7, the dual αΛ specializes to the product of the dual pointwise lattices. The primal lattice specializes to the inverse product; this detects swapping Δ and Δ^{-1}.
- If the deformation problem is unobstructed, 𝕋 = Λ is itself a power series ring and ZetaTriv.map and ZetaTriv.overLambda coincide.
- The universal main conjecture is the statement that the image of triv_{z_Σ} is 𝕋 (resp. Λ); over the non-factorial 𝕋 this cannot be deduced from pointwise statements, which is why the family statement is made over Λ.
- The zero morphism between two free rank-one modules, with H²=0, has zero determinant and gives no injection into the total fraction algebra; it is excluded by the componentwise nonvanishing hypothesis.

This uses [L3.4](#ac-l3-fundamental-line), [L3.7](#ac-l3-nakamura-universal-zeta-morphism), [L3.8](#ac-l3-nakamura-specialization-theorem), [L3.2](#ac-l3-universal-deformation-ring-structure), KatoEulerSystems L4 (`rational-iwasawa-module-structure`), PadicMeasuresIwasawaAlgebras L5.

<a id="ac-l3-kato-generalized-main-conjecture"></a>

### L3.10 Kato's generalized main conjecture for the universal family and its specializations

For an Iwasawa-suitable λ:T→S, FW Conj. 3.25 is the proposition that the Σ-partial zeta trivialization on the cyclotomic deformation T_{λ,Iw} has image S_Iw in Q(S_Iw). When S is a domain it also asserts the corresponding full-line trivialization Δ_{S_Iw}(T_{λ,Iw})≅S_Iw. The coefficient ring is S_Iw, not S. At a classical point Conj. 3.24 is the full O_Iw-line statement, equivalent to Kato’s characteristic-ideal equality. Conj. 3.27 states the minimal-component full-line assertion. Conj. 3.30 is the Σ-partial Λ-line statement for the regular subring Λ=O[[X_1,X_2,X_3]]; Conj. 3.26 is the separate stronger assertion over T itself.

Assume the propositions are stated, not assumed; Λ-structure as in [L3.2](#ac-l3-universal-deformation-ring-structure).

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Conjs 3.24–3.27, p. 34; Conj. 3.30, p. 36; Conj. 1.5, p. 6; Thm 1.8, p. 8. The pointwise, minimal-prime and universal-family forms of Kato's generalized main conjecture.

The proof proceeds as follows. Define each conjecture as the proposition that the image of the corresponding trivialization is the unit fractional ideal. Record the implications: Conj. 3.26 (over 𝕋) ⇒ Conj. 3.30 (over Λ) by restriction of scalars; Conj. 3.30 ⇒ Conj. 3.24 at classical points is FW Prop. 5.8 ([L4.4](#ac-l4-family-to-point-limit)).

The interface is used in [L4.3](#ac-l4-fw-universal-family-theorem) to prove Conj. 3.30; in [L4.5](#ac-l4-fw-pointwise-theorem) to prove Conj. 3.24 at every classical point under FW Thm 5.1's hypotheses; in ModularIwasawaMainConjectures:L2/fw-pointwise-theorem to consumer restatement.

Provide `GenMC.point`: Conj. 3.25 for λ:T→S is the Σ-partial S_Iw assertion, with its full-line version when S is a domain. At λ(f)_Iw use Conj. 3.24 over O_Iw.

Provide `GenMC.component`: Conj. 3.27 for R(𝔞).

Provide `GenMC.family`: Conj. 3.30 over Λ.

Provide `GenMC.familyOverT`: Conj. 3.26 over 𝕋, a separate and stronger proposition.

Provide `GenMC.familyOverT_imp_family`: GenMC.familyOverT → GenMC.family.

Provide `GenMC.point_iff_kato`: At a classical point, GenMC.point is Kato's main conjecture char H² = char(H¹/z(f)_Iw) by the determinant/characteristic criterion of [L3.4](#ac-l3-fundamental-line).

Provide `GenMC.ext`: These are propositions attached to a specified representation, zeta morphism and trivialization; isomorphisms preserving those data preserve the propositions.

**Checks.**

- If 𝕋 = Λ (unobstructed), GenMC.familyOverT and GenMC.family are the same proposition.
- For a rank-one line A·e over A=O[[Γ]], the fractional trivializations t(e)=1 and t(e)=ϖ have images A and ϖA respectively. Only the first has unit image, although both become isomorphisms over Frac A. A fraction-field isomorphism alone is not GenMC.
- For a weight-two GL₂-type abelian variety with L(A,1)≠0 and every hypothesis of FW Thm 5.1 satisfied, Cor. 5.4 deduces the p-part BSD formula from the full O_Iw main conjecture. The L-value and residual hypotheses cannot be dropped.
- For A=k[[x,y]], M=A/(x,y) has Fitt₀(M)=(x,y) but zero characteristic divisor. Its determinant comparison is divisorial; replacing the zeta-basis assertion by a bare Fitting containment confuses these different invariants.
- GenMC.component for 𝔞 implies GenMC.point at every classical point of R(𝔞) that is Iwasawa-suitable, by ZetaTriv.specialize.
- If t(e)=γ−1, its image (γ−1)A is proper and its specialization at γ=1 vanishes. This rejects replacing the O[[Γ]]-line assertion by a statement over O or specializing an acyclic trivialization at a zero Euler factor. The regular-subring assertion of FW Thm 1.8 still uses Λ, separately from the stronger assertion over 𝕋.

This uses [L3.9](#ac-l3-zeta-trivialization), [L3.4](#ac-l3-fundamental-line), KatoEulerSystems Layers 4 and 7, PadicMeasuresIwasawaAlgebras L5.

### Examples

Let A be a DVR with uniformizer ϖ and take C=[A→ϖ²A] in degrees 0,1. The standard determinant basis maps to ϖ² under the acyclic generic trivialization, so its image is ϖ²A; the inverse determinant has image ϖ⁻²A. Setting the differential equal to 1 gives A on both sides. Setting it equal to zero preserves the determinant line but destroys the acyclic trivialization. These values fix the direction of every local correction.

For A=k[[X,Y]] and M=A/(X,Y), localization at every height-one prime kills M, so its characteristic divisor is zero and its divisorial characteristic ideal is A. Its zeroth Fitting ideal is (X,Y). Hence a Fitting ideal cannot replace the invertible determinant line. Likewise, the zero map A→A has rank-one source and target and no H² obstruction but cannot give the zeta trivialization: nonvanishing on every generic component is needed.

For the Γ₀ setting of FW, k is even and p is odd. A scalar semisimplification χ̄⊕χ̄ would give an even cyclotomic exponent 2a modulo the even integer p−1, while the determinant exponent k−1 is odd. At p=5 the equation 2a≡k−1 (mod 4) has no solution. The separate local exclusions and the p=3 extension of the factorization theorem still have to be checked.

### Dependencies

CompletedCohomologyAndLocalGlobalCompatibility R31.4 (`dual-local-global-compatibility-for-completed-homology`), CompletedCohomologyAndLocalGlobalCompatibility R31.4 (`local-langlands-families-over-the-hecke-algebra`), CompletedCohomologyAndLocalGlobalCompatibility R31.4 (`the-main-local-global-theorem-with-its-two-residual-hypotheses`), CompletedCohomologyAndLocalGlobalCompatibility R31.6 (`boeckle-r-equals-t`), DeformationAndDerivedPatchingAlgebra R03.3 (`complete-intersection-local`), DeformationAndDerivedPatchingAlgebra R03.3 (`free-of-maximal-depth-regular-local`), GL2ModularityLifting R32.1 (`exceptional-local-cases`), GL2ModularityLifting R32.1 (`p-star`), GL2ModularityLifting R32.1 (`quadratic-cyclotomic-irreducibility`), GL2ModularityLifting R32.2 (`odd-prime-de-rham-lifting`), GlobalGaloisDeformations R04.2 (`fixed-determinant-rings`), GlobalGaloisDeformations R04.2 (`universal-deformation-ring`), GlobalGaloisDeformations R04.3 (`global-dimension-lower-bound`), GlobalGaloisDeformations R04.3 (`local-to-global-presentation`), KatoEulerSystems L2 (`full-level-hecke-linear-zeta-classes`), KatoEulerSystems L2 (`hecke-dual-twist-dictionary`), KatoEulerSystems L5 (`nakamura-twisted-zeta-morphism`), KatoEulerSystems L2 (`p-adic-zeta-elements-and-their-norm-relations`), KatoEulerSystems L5 (`rational-kato-zeta-morphism`), KatoEulerSystems Layers 4 and 7, KatoEulerSystems L4 (`rational-iwasawa-module-structure`), LocalGaloisDeformationRings L7 (`geraghty-fixed-weight-ordinary-rings`), LocalGaloisDeformationRings R08.1 (`local-lifting-ring`), LocalGaloisDeformationRings R08.3 (`pst-deformation-ring`), LocalGaloisDeformationRings R08.6 (`export-fontaine-laffaille-irreducible`), PadicLocalLanglandsForGL2Qp R30.5 (`dual-of-universal-deformation`), PadicLocalLanglandsForGL2Qp R30.5 (`kisin-deformation-comparison`), PadicLocalLanglandsForGL2Qp R30.5 (`paskunas-endomorphism-rings`), PadicLocalLanglandsForGL2Qp R30.5 (`removing-projective-envelope`), PadicLocalLanglandsForGL2Qp R30.6 (`kisin-local-inequality`), PadicLocalLanglandsForGL2Qp R30.6 (`paskunas-bm-scalar-endomorphisms`), PadicMeasuresIwasawaAlgebras L5, SelmerIwasawaCohomology L2 (`selmer-complex`), SelmerIwasawaCohomology L3 (`iwasawa-cohomology`), SelmerIwasawaCohomology L3 (`iwasawa-finiteness-euler`), SelmerIwasawaCohomology L3 (`selmer-determinant`), SerreWeightAndLevelOptimisation R20.6, SmoothRepresentationsOfLocalGroups SR.5 (`co-whittaker`), SmoothRepresentationsOfLocalGroups SR.5 (`essential-vector-contract`), SmoothRepresentationsOfLocalGroups SR.5 (`llc-family-conditional`), SmoothRepresentationsOfLocalGroups SR.5 (`reduced-family-reconstruction`), SmoothRepresentationsOfLocalGroups SR.5 (`universal-whittaker`), `IsReduced` (Mathlib), `IsRegularLocalRing` (Mathlib).

## Layer L4: Integral family trivializations and specialization

<a id="ac-l4-integrality-of-universal-trivialization"></a>

### L4.1 The zeta trivialization over Λ is integral

Under the hypotheses of FW Thm 5.1, let t_Λ:Δ_Σ(T_Σ)↪Frac Λ be the zeta trivialization and t_Λ^∨:Δ_Σ(T_Σ)^{-1}↪Frac Λ its dual. FW Prop. 5.5 gives t_Λ^∨(Δ_Σ^{-1})=αΛ with α∈Λ. Equivalently the primal image is α^{-1}Λ. This is an integrality bound on the dual lattice; equality with Λ still requires the seed-point argument.

Assume FW Thm 5.1's residual hypotheses; Λ = O[[X_1, X_2, X_3]] factorial and regular. The integral Kato bound needs its actual lattice/image hypotheses at the chosen classical points; one must exhibit a τ with T/(τ−1)T free of rank one on the chosen integral lattice; residual irreducibility alone does not do so.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Prop. 5.5 and proof, pp. 70–71. The image of Δ_Σ(T_Σ)^{-1} lies in Λ, by a height-one prime of the factorial ring Λ and Kato's bound at well-chosen classical points.

The proof proceeds as follows. Suppose the image of Δ^{-1} is (x/y)Λ with x/y ∉ Λ; since Λ is factorial there is a height-one prime 𝔭 = (y_0) containing y but not x. By density ([L3.3](#ac-l3-smooth-classical-points)) choose an Iwasawa-suitable λ_Iw, étale over Λ, with λ(y_0) ∈ m^n_{O_Iw} and λ(x) ∉ m^n for large n; at such a point T_{λ,Iw} is a lattice in a direct sum of classical representations V_{λ,r,Iw}. Kato's one-sided divisibility at each classical point (KatoEulerSystems §7.2 (cohomological upper bound), integral where T_{λ,Iw} has the needed image) gives t_Λ^∨(Δ^{-1}) ⊆ O_Iw at λ, contradicting λ(x/y) ∉ O_Iw.

**Checks.**

- This uses only Kato's divisibility and density; Zariski density alone is not used to conclude that a rational section is an integral generator — the height-one prime argument over the factorial Λ is.

This uses [L3.9](#ac-l3-zeta-trivialization), [L3.3](#ac-l3-smooth-classical-points), [L3.2](#ac-l3-universal-deformation-ring-structure), KatoEulerSystems L7 (`cohomological-divisibility-one-direction`), KatoEulerSystems L4 (`imported-euler-system-bound-over-the-cyclotomic-iwasawa-algebra`), `UniqueFactorizationMonoid` (Mathlib).

<a id="ac-l4-etale-point-descent"></a>

### L4.2 From pointwise main conjectures at an étale point to the family over Λ

Suppose there is a point x: Λ → O at which Spec 𝕋^Σ_{m_ρ̄} → Spec Λ is étale and every point ψ: 𝕋 → O above x satisfies Kato's main conjecture (FW Conj. 3.24). Then triv_{z_Σ}: Δ_Σ(T_Σ) ↪ Frac(Λ) is an isomorphism onto Λ (FW Prop. 5.7).

Retain the stated hypotheses; all λ_Iw above x are Iwasawa-suitable because of étaleness.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Prop. 5.7 and proof, pp. 71–72. An étale point all of whose preimages satisfy the pointwise conjecture forces the family conjecture over Λ.

The proof proceeds as follows. Use the dual trivialization of integrality-of-universal-trivialization, with image αΛ and α∈Λ. Specialize along x_Iw: by the base-change diagram (FW Prop. 3.23; [L3.9](#ac-l3-zeta-trivialization)), x_Iw(α)O_Iw is the product over ψ ∈ S_x of the pointwise images, each O_Iw by hypothesis, so x_Iw(α) is a unit. An element of the local ring Λ whose specialization is a unit is a unit; hence αΛ = Λ.

**Checks.**

- Every invertible module over the local deformation ring is abstractly free. The issue is the prescribed rational zeta trivialization: its lattice need not be the unit lattice. FW proves the needed integrality over the factorial regular subring Λ, then uses the finite étale fiber and its determinant norm to prove α is a unit.

This uses [L4.1](#ac-l4-integrality-of-universal-trivialization), [L3.9](#ac-l3-zeta-trivialization), [L3.10](#ac-l3-kato-generalized-main-conjecture), `IsLocalRing` (Mathlib).

<a id="ac-l4-fw-universal-family-theorem"></a>

### L4.3 Fouquet–Wan's universal-family main conjecture

Let p ≥ 3 and ρ̄: G_ℚ → GL_2(𝔽) satisfy the hypotheses of FW Thm 5.1 (absolutely irreducible; (ρ̄|_{G_{ℚ_p}})^{ss} ≠ χ̄ ⊕ χ̄χ̄_cyc; a prime ℓ ∤ p with ρ̄|_{G_{ℚ_ℓ}} a ramified extension of µχ^{−k/2}_cyc by µχ^{1−k/2}_cyc, µ unramified and nontrivial if ρ̄|_{G_{ℚ_p}} is irreducible). For Σ finite, viewing the universal deformation T_Σ as a free module over Λ ≅ O[[X_1, X_2, X_3]], the zeta morphism z_Σ induces an isomorphism triv_{z_Σ}: Δ_Σ(T_Σ) ≅ Λ (FW Thm 5.2 = Thm 1.8; Kato's Conjecture 3.2.2 for (Spec ℤ[1/Σ], Λ, T_Σ)). The statement is over the regular subring Λ; the stronger statement over 𝕋 ≅ R_Σ(ρ̄) itself is not asserted.

Assume FW Thm 5.1’s T51 residual hypotheses. For the even-weight Γ₀ modular normalization, the scalar local semisimplification is automatically excluded by the determinant parity argument of FW p. 69; see fw-pointwise-theorem. The proof imports the ordinary/crystalline seed targets, whose general-weight nonvanishing, regulator and integral Kato-witness hypotheses are retained. No stronger theorem over the nonfactorial deformation ring is asserted.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Thm 5.2, p. 69; Thm 1.8, p. 8; Prop. 5.6, p. 71; proof of Thm 5.1, p. 73. The universal-family isomorphism over Λ and its proof from a seed point of known type.

The proof proceeds as follows. Find a seed point: by FW Lemma 2.8 ([L3.3](#ac-l3-smooth-classical-points)) there is a classical point that is crystalline-short, crystalline-short up to the quadratic twist ω^{(p−1)/2}, good ordinary, or good ordinary up to quadratic twist. At such a point Kato's main conjecture holds (FW Prop. 5.6): crystalline-short points by [L2.12](#ac-l2-fw-crystalline-main-conjecture) (Thm 4.51), ordinary points by the ordinary theorem — obtain the ordinary seed equality by combining [L2.13](#ac-l2-fw-ordinary-reverse-bound) directly with KatoEulerSystems §7.2 and the determinant/characteristic criterion of [L3.4](#ac-l3-fundamental-line); twists are handled in the same way. Points near the seed that are étale over Λ and of the same type satisfy the pointwise conjecture; apply [L4.2](#ac-l4-etale-point-descent).

**Checks.**

- Exported to ModularIwasawaMainConjectures:L4/fw-universal-family-theorem; the determinant over Λ must not be read as a statement over the deformation ring.

This uses [L4.2](#ac-l4-etale-point-descent), [L4.1](#ac-l4-integrality-of-universal-trivialization), [L3.3](#ac-l3-smooth-classical-points), [L3.10](#ac-l3-kato-generalized-main-conjecture), [L2.12](#ac-l2-fw-crystalline-main-conjecture), [L2.13](#ac-l2-fw-ordinary-reverse-bound).

<a id="ac-l4-family-to-point-limit"></a>

### L4.4 From the family over Λ to every classical point

Assume the family Σ-partial trivialization is an isomorphism over Λ. FW Prop. 5.8 gives the corresponding Σ-partial trivialization at every classical point, including points ramified over Λ. Its morphism is the Euler-corrected z_Σ(f)_Iw. With the full-line local correction comparison of §§3.3–3.4 this yields Conj. 3.24 for the full line and Kato’s z(f)_Iw. Keep these two lines and their morphisms distinct; a specialized Euler factor that vanishes cannot simply be cancelled.

Retain the stated hypotheses; the Σ-partial lines and the Euler-factor-corrected morphisms are used, which both commute with specialization at a classical point even if it is ramified over Λ.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Prop. 5.8 and proof, pp. 72–73. The limit argument: family isomorphism over Λ implies the pointwise main conjecture at every classical point.

The proof proceeds as follows. Kato’s bound puts the dual pointwise lattice in O_Iw, say γO_Iw with γ∈O_Iw. The primal lattice is then γ^{-1}O_Iw. Over 𝕋 write the image of Δ_Σ as (α/β)𝕋 with λ(f)_Iw(β) ≠ 0 (FW Prop. 3.23). Choose λ close to λ(f), outside the zero set of β, étale over Λ with all points above Iwasawa-suitable; the family isomorphism forces each pointwise γ_ψ to be a unit there, so λ_Iw(α/β) is a unit. By continuity, taking λ close to λ(f), 1/γ = λ(f)_Iw(α/β) is a unit.

**Checks.**

- A specialization at which a value vanishes is never cancelled: the argument avoids the zero set of β and works with the Euler-factor-corrected lines.

This uses [L4.3](#ac-l4-fw-universal-family-theorem), [L3.9](#ac-l3-zeta-trivialization), [L3.3](#ac-l3-smooth-classical-points), [L3.4](#ac-l3-fundamental-line), KatoEulerSystems L7 (`cohomological-divisibility-one-direction`).

<a id="ac-l4-fw-pointwise-theorem"></a>

### L4.5 Fouquet–Wan's main conjecture at every point of the family

Let p ≥ 3 and f ∈ S_k(Γ_0(Np^r)) a normalized eigencuspform of weight k ≥ 2 whose residual representation satisfies the hypotheses of FW Thm 5.1 ([L3.1](#ac-l3-fw-residual-hypotheses), T51), with the auxiliary prime ℓ satisfying ℓ ∥ N. Then the zeta morphism gives an isomorphism triv_{z(f)_Iw}: Δ_{O_Iw}(T(f)_Iw) ≅ O_Iw (FW Thm 5.1; Thm 1.7 is its narrower nontrivial-µ formulation); equivalently char_{Λ_Iw}H²(ℤ[1/p], T ⊗ Λ_Iw) = char_{Λ_Iw}H¹(ℤ[1/p], T ⊗ Λ_Iw)/Λ_Iw·z(f)_Iw. This covers non-ordinary and bad-reduction points at p (π(f)_p principal series, Steinberg or supercuspidal) and needs no µ-invariant hypothesis. Consequences: Sel_ℚ(f) is finite iff L(f, k/2) ≠ 0 (Cor. 5.3), and for an abelian variety of GL_2-type with L(A,1) ≠ 0 satisfying the hypotheses, the p-part of the BSD formula holds (Cor. 5.4).

Assume all hypotheses of FW Thm 5.1, including the global Γ₀ form, even k, and ℓ∥N. The Thm 1.7 formulation additionally requires µ nontrivial even in the reducible-at-p case. The scalar local semisimplification is automatically impossible: det ρ̄_f|I_p=ω^{k−1} with k−1 odd; a scalar semisimplification would give ω^{2a} for some integer a, contradicting 2a≡k−1 mod p−1 because p is odd. Thus no additional scalar exclusion is missing from the displayed theorem (FW p. 69). For the normalized residual representation in the proof on p. 73, the ramified Steinberg witness also excludes quadratic-induced restriction exceptions: its nontrivial unipotent p-element cannot occur in an induction from the index-two quadratic cyclotomic field, since ℓ≠p is unramified there and prime-to-p characters have no such inertia image. Together with the local exclusion, this supplies the A21/A35 dictionary; preserve the source’s critical twist.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Thm 5.1, p. 68; Thm 1.7, p. 7; Cors 5.3–5.4, p. 69; proof of Thm 5.1, p. 73. The pointwise main conjecture for all eigencuspforms with the residual hypotheses, and its corollaries. [FW](https://arxiv.org/pdf/2107.13726v3), Remark after Thm 5.1, PDF p. 69; proof of Thm 5.1, p. 73. Automatic scalar exclusion by odd cyclotomic determinant and the normalized residual representation used in the proof.

The proof proceeds as follows. Use the determinant-parity and Steinberg-witness arguments in the hypotheses to pass to the normalized residual datum of FW p. 73. Apply [L4.3](#ac-l4-fw-universal-family-theorem) to ρ̄_f. Apply [L4.4](#ac-l4-family-to-point-limit) at λ(f) (FW proof of Thm 5.1, p. 73). Translate the fundamental-line statement into characteristic ideals over the regular O_Iw ([L3.10](#ac-l3-kato-generalized-main-conjecture), GenMC.point_iff_kato).

**Checks.**

- Exported to ModularIwasawaMainConjectures:L2/fw-pointwise-theorem in the cohomological (Kato) form; the signed or ordinary scalar versions are the consumer's, after its separate local comparison.

This uses [L4.3](#ac-l4-fw-universal-family-theorem), [L4.4](#ac-l4-family-to-point-limit), [L3.10](#ac-l3-kato-generalized-main-conjecture), [L3.1](#ac-l3-fw-residual-hypotheses), PadicMeasuresIwasawaAlgebras L5, KatoEulerSystems Layers 4 and 7.

<a id="ac-l4-derived-specialization-corrections"></a>

### L4.6 Euler factors, Tor terms and the regular subring in specialization

For a specialization λ: A → A′ between quotients of 𝕋^Σ_{m_ρ̄} or Λ: (i) the Σ-partial fundamental line commutes with every base change, Δ_Σ(T) ⊗ A′ ≅ Δ_Σ(T′); (ii) the full fundamental line commutes with λ when λ is Iwasawa-suitable, the Euler-factor lines X_ℓ(T) specializing to X_ℓ(T′) because the ranks of inertia invariants and the eigenvalues α_ℓ are preserved (FW Prop. 3.20); otherwise the rank of T^{I_ℓ} can jump and the comparison acquires the factor relating X_ℓ(T) ⊗ A′ and X_ℓ(T′); (iii) Nakamura's change-of-Σ formula z_{Σ′,n} ⊗ id = ∏_{l∈Σ′∖Σ} P_l(σ_l^{-1})·z_{Σ,n} matches the passage from Δ_{Σ′} to Δ_Σ with the Euler factors P_l; (iv) a statement over the regular subring Λ (FW Thm 1.8) is a statement about T_Σ as a Λ-module of rank 2d, and at a point x of Λ it is a statement about the product over all points of 𝕋 above x — it implies the statement over 𝕋 only at points étale over Λ, and at ramified points only through [L4.4](#ac-l4-family-to-point-limit).

Retain the stated hypotheses; Iwasawa-suitable as in FW Def. 3.19.

The source is [FW](https://arxiv.org/pdf/2107.13726v3), Lemma 3.17, Prop. 3.20, pp. 31–32; Props 5.7–5.8, pp. 71–73; §1.2.2, p. 14. Base change of fundamental lines with and without Euler factors, and the role of points étale over Λ. [Nakamura](https://arxiv.org/pdf/2006.13647v2), §5.3: (77), PDF p. 78; (78)–(79), p. 80. Change of Σ for the zeta morphism and for H²_Iw.

The proof proceeds as follows. (i)–(ii): perfectness and derived base change of RΓ (FW Lemma 3.17), and the explicit two-term complexes defining X_ℓ (FW Prop. 3.20's proof). Use NAK-v2 change-of-Σ formula (77), p. 78, together with the H¹ isomorphism (78) and H² exact sequence (79), p. 80. These are different formulas and must not share a locator. (iv): restriction of scalars along the finite free Λ → 𝕋 and the étale-point analysis of FW Props 5.7–5.8.

**Checks.**

- A change of stable lattice is handled by the determinant of its global and local correction cones, with the specified Euler terms. It is not summarized by one unspecified scalar index. Use the universal lattice and record a full cone comparison before transporting a zeta basis.

This uses [L3.4](#ac-l3-fundamental-line), [L3.9](#ac-l3-zeta-trivialization), [L3.7](#ac-l3-nakamura-universal-zeta-morphism), SelmerIwasawaCohomology L3 (`derived-control`), SelmerIwasawaCohomology L3 (`correction-complex`), SelmerIwasawaCohomology L2 (`lattice-change-cone`).

<a id="ac-l4-zeta-morphism-congruences"></a>

### L4.7 Congruences between Kato's zeta morphisms

Let f, g be normalized newforms with coefficients in E, ρ̄_f absolutely irreducible, and the assumptions of Nakamura §4 holding for ρ̄ = ρ̄_f. If f ≡ g modulo ϖ^m (Hecke eigenvalues congruent at all but finitely many primes), then ∏_{l∈Σ_0} P_{f,l}(σ_l^{-1})·z_n(f) ≡ ∏_{l∈Σ_0} P_{g,l}(σ_l^{-1})·z_n(g) modulo ϖ^m as maps ρ^*_{f,m} → H¹_Iw(ℤ[1/Σ_n, ζ_n], ρ^*_{f,m}(1)) (Nakamura Cor. 5.6).

Assume Nakamura §4 assumptions ((N1), (N3), (N4)); Σ containing the levels of f and g and p.

The source is [Nakamura](https://arxiv.org/pdf/2006.13647v2), Cor. 5.6, p. 77 (published §5.2, Cor. 5.6, pp. 255–256). Congruent newforms have congruent Euler-corrected zeta morphisms.

The proof proceeds as follows. x_f and x_g are points of the same Spec 𝕋_{ρ̄,Σ} that agree modulo ϖ^m (the congruence modulus throughout the argument is ϖ^m). Both Euler-corrected zeta morphisms are specializations of the one universal z_{Σ,n}(ρ^m) ([L3.8](#ac-l3-nakamura-specialization-theorem)), so they agree modulo ϖ^m.

**Checks.**

- This is the congruence of zeta morphisms that propagates Kato's main conjecture along congruences ([L4.10](#ac-l4-nakamura-lambda-defect)).

This uses [L3.7](#ac-l3-nakamura-universal-zeta-morphism), [L3.8](#ac-l3-nakamura-specialization-theorem).

<a id="ac-l4-residual-zeta-morphism"></a>

### L4.8 The residual zeta morphism and the space of points X(ρ̄)

Let Σ_ρ̄ = {p} ∪ ram(ρ̄). For Σ_ρ̄ ⊆ Σ ⊆ Σ′, ρ^m_{Σ′} ⊗ 𝕋_{ρ̄,Σ} ≅ ρ^m_Σ and z_{Σ′,n}(ρ^m_{Σ′}) ⊗ id = ∏_{l∈Σ′∖Σ} P_l(σ_l^{-1})·z_{Σ,n}(ρ^m_Σ) (Nakamura (77)). The residual zeta morphism z_{Σ,n}(ρ̄) is the base change of z_{Σ,n}(ρ^m) to 𝔽, a Λ_{n,𝔽}-linear map ρ̄^* ⊗_{𝔽[±1]} Λ_{n,𝔽} → H¹_Iw(ℤ[1/Σn, ζ_n], ρ̄^*(1)). Put X(ρ̄) = ∪_Σ Spec(𝕋_{ρ̄,Σ})(ℤ̄_p) with its modular points X(ρ̄)^{mod}, and for a character η of Δ = Gal(ℚ(ζ_p)/ℚ) consider η-components over Λ^η.

Assume Nakamura §4 assumptions; absolute irreducibility of ρ̄.

The source is [Nakamura](https://arxiv.org/pdf/2006.13647v2), §5.3, (77) and the residual definitions, PDF p. 78; Thm 5.7, p. 79. The residual zeta morphism, change of Σ, and the points X(ρ̄).

The proof proceeds as follows. Base change of z_{Σ,n}(ρ^m) along 𝕋_{ρ̄,Σ} → 𝔽, using that H¹_Iw is computed by a perfect complex. Compatibility with change of Σ from (77).

The interface is used in [L4.9](#ac-l4-nakamura-residual-structure) to Thms 5.7, 5.9, 5.11 (published numbering) are statements about z_{Σ,1}(ρ̄)^η; in [L4.10](#ac-l4-nakamura-lambda-defect) to the λ-defect at every point equals the residual defect.

Provide `ResZeta.map`: z_{Σ,n}(ρ̄): ρ̄^* ⊗_{𝔽[±1]} Λ_{n,𝔽} → H¹_Iw(ℤ[1/Σn, ζ_n], ρ̄^*(1)).

Provide `ResZeta.changeSigma`: z_{Σ′,n}(ρ̄) = ∏_{l∈Σ′∖Σ} P̄_l(σ_l^{-1})·z_{Σ,n}(ρ̄) for Σ_ρ̄ ⊆ Σ ⊆ Σ′.

Provide `ResZeta.points`: X(ρ̄) = ∪_Σ Spec(𝕋_{ρ̄,Σ})(ℤ̄_p) and the modular subset X(ρ̄)^{mod}.

Provide `ResZeta.etaPart`: The η-component z_{Σ,1}(ρ̄)^η for a character η of Δ.

Provide `ResZeta.reduction`: For x ∈ X(ρ̄), z_{Σ,1}(ρ_x) mod ϖ = z_{Σ,1}(ρ̄).

Provide `ResZeta.ext`: The residual map is the reduction of the universal map; compatible coefficient and Σ maps give the same reduction. Equality is tested on the residual source module, with its η projection.

**Checks.**

- For x_f modular, z_{Σ,1}(ρ̄) is the reduction modulo ϖ of ∏_{l∈Σ_0}P_{f,l}(σ_l^{-1})·z(f) (Thm 4.3 mod ϖ).
- For Σ = Σ_ρ̄, ResZeta.changeSigma is the identity.
- z_{Σ_ρ̄,1}(ρ̄)^η ≠ 0 iff µ(H¹_Iw/Im z_1(f)^η) = 0 at one (equivalently every) modular point (Nakamura Thm 5.7).
- The residual Euler element 1−γ in F[[γ−1]] equals −(γ−1): it is nonzero and is not a unit. Therefore an Euler-corrected residual map cannot be replaced by the uncorrected Kato map by discarding this factor, even though the formal factor has not vanished.
- The residual morphism carries the information of the whole family: its nonvanishing is equivalent to µ = 0 at one, hence every, modular point ([L4.9](#ac-l4-nakamura-residual-structure)).

This uses [L3.7](#ac-l3-nakamura-universal-zeta-morphism), [L4.6](#ac-l4-derived-specialization-corrections), SelmerIwasawaCohomology L3 (`iwasawa-cohomology`).

<a id="ac-l4-nakamura-residual-structure"></a>

### L4.9 Residual nonvanishing, µ = 0 and the structure of residual Iwasawa cohomology

Fix a character η of Δ. (i) The following are equivalent: z_{Σ_ρ̄,1}(ρ̄)^η ≠ 0; µ(H¹_Iw(ℤ[1/Σ_f], ρ_f^*(1))^η/Im(z_1(f)^η)) = 0 for some x_f ∈ X(ρ̄)^{mod}; the same for all x_f ∈ X(ρ̄)^{mod} (Nakamura Thm 5.7; the published version adds Conj. 5.8 that these always hold). (ii) Assume X(ρ̄)^{mod}_a ≠ ∅ (modular points with Nakamura's condition (a)) and (i) holds for η. Then H¹_Iw(ℤ[1/Σ_ρ̄], ρ̄^*(1))^η is free of rank one over Λ^η_𝔽, and H¹_Iw/Im(z_{Σ_ρ̄,1}(ρ̄)^η) and H²_Iw(ℤ[1/Σ_ρ̄], ρ̄^*(1))^η are finite-dimensional (arXiv Thm 5.8 = published Thm 5.9); the η-part of Kato's main conjecture for ρ̄ is the equality of their dimensions (arXiv Conj. 5.9 = published 5.10). (iii) For every x ∈ Spec(𝕋_{ρ̄,Σ})(O) ⊂ X(ρ̄): H¹_Iw(ℤ[1/Σ], ρ_x^*(1))^η is free of rank one over Λ^η_O; the quotient by Im z_{Σ,1}(ρ_x)^η and H²_Iw are torsion with µ = 0; and if x is modular, or there is τ ∈ Gal(ℚ̄/ℚ(ζ_{p^∞})) with (ρ_x/(τ−1)ρ_x)[1/p] one-dimensional, then Char(H¹_Iw/Im z^η) ⊆ Char(H²_Iw^η) (arXiv Thm 5.10 = published Thm 5.11).

Assume Nakamura §4 assumptions. In (ii)–(iii), assume both residual nonvanishing in the selected η-component and existence of a modular point satisfying condition (a) of NAK-v2 Thm 5.2: there is τ∈Gal(Q̄/Q(ζ_p∞)) such that ρ_f/(τ−1)ρ_f is O-free of rank one. A quotient of rational dimension one alone does not meet this integral condition. Under these inputs, rank-one freeness, torsion and µ=0 hold at all promodular points. The characteristic-ideal containment in (iii) additionally needs modularity or the weaker rational condition (b); do not infer it at every promodular point.

The source is [Nakamura](https://arxiv.org/pdf/2006.13647v2), Thm 5.2(a),(b), PDF p. 75; Thms 5.7–5.8, Conj. 5.9 and Thm 5.10, p. 79; proofs pp. 80–84 (published numbers after 5.7 are shifted by one). Residual nonvanishing versus µ = 0, and the structure of residual and pointwise Iwasawa cohomology.

The proof proceeds as follows. (i): the mod-ϖ exact sequences relating H¹_Iw(ρ_f^*(1))/ϖ and H¹_Iw(ρ̄^*(1)), freeness of H¹_Iw (Kato Thm 12.4(3)) and [L4.7](#ac-l4-zeta-morphism-congruences). (ii): Kato's theorem 5.2 at a point of X^{mod}_a gives the rank and finiteness; descend modulo ϖ. (iii): lift freeness and torsion from the residual statement; µ = 0 from (i); the divisibility from the Euler system bound (EulerSystemsAndKolyvaginSystems:ES.8 / KatoEulerSystems §7.2) under the image condition.

**Checks.**

- Residual nonvanishing and the integral condition-(a) modular witness are hypotheses. The theorem does not prove unconditional µ=0. The published additional conjecture of nonvanishing is absent from arXiv v2.

This uses [L4.8](#ac-l4-residual-zeta-morphism), [L4.7](#ac-l4-zeta-morphism-congruences), KatoEulerSystems L4 (`rational-iwasawa-module-structure`), KatoEulerSystems L4 (`imported-euler-system-bound-over-the-cyclotomic-iwasawa-algebra`), PadicMeasuresIwasawaAlgebras L4 (`iwasawa-invariants`).

<a id="ac-l4-nakamura-lambda-defect"></a>

### L4.10 The λ-defect is constant on the family and Kato's main conjecture propagates along congruences

Under the assumptions of [L4.9](#ac-l4-nakamura-residual-structure) (ii), for every x ∈ X(ρ̄): λ(H¹_Iw(ℤ[1/Σ], ρ_x^*(1))^η/Im z_{Σ,1}(ρ_x)^η) − λ(H²_Iw(ℤ[1/Σ], ρ_x^*(1))^η) equals dim_𝔽(H¹_Iw(ℤ[1/Σ_ρ̄], ρ̄^*(1))^η/Im z_{Σ_ρ̄,1}(ρ̄)^η) − dim_𝔽 H²_Iw(ℤ[1/Σ_ρ̄], ρ̄^*(1))^η, hence is independent of x (arXiv Thm 5.13 = published Thm 5.14); consequently the η-part of Kato's main conjecture for ρ̄ holds iff the weak (λ-) version holds for some x iff it holds for all x (arXiv Cor. 5.14 = published Cor. 5.15). In particular (Nakamura Thm 1.4): if g_1, g_2, g_3 are congruent to f with (1) some τ ∈ Gal(ℚ̄/ℚ(ζ_{p^∞})) making ρ_{g_1}/(τ − 1)ρ_{g_1} free of rank one over O, (2) µ = 0 for g_2, and (3) Kato's main conjecture for g_3, then µ = 0 and Kato's main conjecture hold for f.

Use the hypotheses of [L4.9](#ac-l4-nakamura-residual-structure); the torsion and λ-defect term is H², not the H¹ printed in the last display of the source proof.

The source is [Nakamura](https://arxiv.org/pdf/2006.13647v2), Thm 5.13 and Cor. 5.14, PDF p. 80; proof pp. 80–84; Thm 1.4, pp. 6–7 (published Thm 5.14/Cor. 5.15). Constancy of the λ-defect, equivalence of the residual and pointwise main conjectures, and propagation along congruences.

The proof proceeds as follows. For a module with µ = 0, λ(M) = λ_𝔽(M/ϖ) − λ_𝔽(M[ϖ]) (Nakamura (92)); apply it to H¹_Iw/Im z and to H²_Iw and use the residual comparison (91). Constancy gives the equivalence of weak λ-equality at some/all promodular points and the residual equality. Full characteristic-ideal equality additionally uses the one-sided containment, available for modular points or those satisfying condition (b) of Thm 5.2; it is not asserted at every promodular point merely from equal λ-invariants. Thm 1.4 is the specialization of these statements to modular points, as in Kim–Lee–Ponsinet.

**Checks.**

- Gives the pointwise consequences of the universal zeta element that stage L4 owns (Nakamura §5); the conjectures are recorded as propositions, not assumed.

This uses [L4.9](#ac-l4-nakamura-residual-structure), [L4.7](#ac-l4-zeta-morphism-congruences), PadicMeasuresIwasawaAlgebras L4 (`iwasawa-invariants`), KatoEulerSystems Layers 4 and 7, PadicMeasuresIwasawaAlgebras L5.

### Examples

If the dual determinant trivialization has image ϖΛ, the primal image is ϖ⁻¹Λ. The dual lattice is integral but is not Λ; this detects the gap between dual integrality and the full main conjecture. At a finite étale fiber with two factors, the dual image specializes to α₁α₂O_Iw. If it is a unit lattice and each α_i is integral, both α_i are units; the primal image is the inverse product. This is the norm calculation used in the family argument.

If O is ramified with p=uϖᵉ and e>1, a single ϖ-defect has length one over O, whereas a p-defect has length e. Rationalizing at p erases both and cannot distinguish them. In the residual cyclotomic algebra F[[T]], with γ=1+T, the Euler element 1−γ is −T: it is nonzero and not a unit. Reduction and change of Σ must retain it even when its augmentation vanishes.

### Dependencies

[L2.12](#ac-l2-fw-crystalline-main-conjecture), [L2.13](#ac-l2-fw-ordinary-reverse-bound), [L3.4](#ac-l3-fundamental-line), [L3.1](#ac-l3-fw-residual-hypotheses), [L3.10](#ac-l3-kato-generalized-main-conjecture), [L3.8](#ac-l3-nakamura-specialization-theorem), [L3.7](#ac-l3-nakamura-universal-zeta-morphism), [L3.3](#ac-l3-smooth-classical-points), [L3.2](#ac-l3-universal-deformation-ring-structure), [L3.9](#ac-l3-zeta-trivialization), KatoEulerSystems Layers 4 and 7, KatoEulerSystems L7 (`cohomological-divisibility-one-direction`), KatoEulerSystems L4 (`imported-euler-system-bound-over-the-cyclotomic-iwasawa-algebra`), KatoEulerSystems L4 (`rational-iwasawa-module-structure`), PadicMeasuresIwasawaAlgebras L4 (`iwasawa-invariants`), PadicMeasuresIwasawaAlgebras L5, SelmerIwasawaCohomology L2 (`lattice-change-cone`), SelmerIwasawaCohomology L3 (`correction-complex`), SelmerIwasawaCohomology L3 (`derived-control`), SelmerIwasawaCohomology L3 (`iwasawa-cohomology`), `IsLocalRing` (Mathlib), `UniqueFactorizationMonoid` (Mathlib).

## Layer L5w: The totally real Wan–Fujiwara engine

<a id="ac-l5w-fujiwara-instance"></a>

### L5w.1 Fujiwara’s minimal theorem in the Wan instance

For the specified nearly ordinary weight-two residual Hilbert representation and its minimal deformation type D, identify Wan’s localized Hecke algebra with the R=T algebra supplied by R21.4. Verify every condition of Fujiwara 11.1, then use 11.2 and 11.5 for freeness of the precise quaternionic/Hilbert module and the Hida-family comparison. The minimal algebra is a relative complete intersection; the appropriate finite flat Hecke algebra is Gorenstein. This is an application of the supplier theorem, not a new proof of totally real R=T.

Assume p>3; F totally real, p unramified in F; residual representation absolutely irreducible on G_{F(ζ_p)}. For p=5 exclude the simultaneous PGL2(F5) projective-image and mod-p-cyclotomic factorization through its abelianization of order two. The local nearly ordinary types are distinguished; flat types satisfy Fujiwara’s unramified base-field restriction; a minimal modular lift exists as in Definition 6.11. Verify Hypothesis 6.7 via Theorem 6.8 in the ordinary/weight-two instance; retain Hypothesis 5.9 in exactly the nonminimal cases where 11.1 requires it. Odd [F:Q] requires the Shimura-curve Ihara input in Wan 8. Exclude the actual exceptional 0E case using the induced-representation description: the local representation is absolutely irreducible, its inertia restriction is absolutely reducible, and q_v≡−1 mod p. BCS H3 excludes this case. Additionally verify Wan 8’s literally printed irreducible-inertia q_v test. The actual induced type has reducible inertia, so the additional literally printed test alone does not exclude it.

The source is [Fujiwara](https://arxiv.org/pdf/math/0602606v2), Definition 6.11, pp.54–55; Theorems 11.1–11.2, p.95; Corollary 11.5, p.97. Exact minimal conditions and freeness. [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), Theorem 8, pp.6–7. Gorenstein input and the actual inertia condition. [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Hypothesis 3.1.1 and Remark 3.1.2, pp.7–8. Application conditions; BCS H3 matches the induced exceptional type, with the induced local type tested explicitly below.

The proof proceeds as follows. Match the determinant, Teichmuller twist characters, finite local deformations away p and nearly ordinary/flat local deformation conditions, not just residual representations. Apply the exact minimal supplier theorem and freeness; the existing nice-prime Skinner–Wiles theorem in R21.4 is not by itself this theorem. Use finite flatness over the regular weight ring and complete-intersection duality to deduce Gorenstein; finite flatness alone does not imply regularity.

The intended arithmetic theorem name is `fujiwaraInstance`.

**Checks.**

- At real quadratic F no odd-degree Ihara condition is invoked.
- A general residual irreducibility statement without minimal lift or local types does not satisfy this target.

This uses OrdinaryAutomorphicFormsAndModularityLifting R21.4, GlobalGaloisDeformations R04.6, PadicFamilies L5.

<a id="ac-l5w-canonical-period-duality"></a>

### L5w.2 Integral projector and canonical period

In the specified ordinary Hilbert Hecke algebra T over the normal Hida coefficient ring I, let e_f be the rational idempotent of the f-component. Identify T∩I_frac e_f with the rank-one integral congruence line generated by ℓ_f=η_f e_f, using the supplied Gorenstein duality and free Hecke module. Wan’s canonical period divides the specified Petersson pairing by η_f with the archimedean factors of Definition 79. Replacing ℓ_f by uℓ_f, u∈I×, changes the normalized p-adic L-function and Eisenstein family by the matching unit; their ideals are unchanged.

Assume the Hecke algebra and module are those in the preceding Fujiwara instance, not an arbitrary finite flat algebra. The f-component is generically isolated; the congruence number is nonzero at the chosen arithmetic point; the actual integral lattice and pairing are fixed.

The source is [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), §7.2.1, Definition 79, Remark 80, pp.65–66; Theorem 82, pp.66–68. Canonical normalization and integral versus rational projector.

The proof proceeds as follows. Use the exact minimal free Hecke module and the source-specific Gorenstein pairing/congruence-line comparison requested from AC L0. Current IHG.6 is a rank-two Ribet/Fitting theorem and does not by itself identify this Hilbert congruence line. Match Wan 7.2.1/Definition 79, including the choice of generator, powers of 2 and i, conductor and conjugate/twisted form. Use the integral projector ℓ_f in interpolation; retain e_f only for the rational version.

The intended arithmetic theorem name is `canonicalPeriodDuality`.

**Checks.**

- The rational idempotent is not declared integral.
- No equality of the period over F with the square of a period over Q is inferred.
- Gorenstein of an arbitrary finite flat algebra, without this free module and pairing, is not the asserted congruence-line comparison.

This uses [L5w.1](#ac-l5w-fujiwara-instance), [L0.8](#ac-l0-canonical-period-congruence-number), `Ideal.span_singleton_mul_left_unit` (Mathlib).

<a id="ac-l5w-quaternionic-period-primitivity"></a>

### L5w.3 Quaternionic period and primitive anticyclotomic input

For the Jacquet–Langlands transfer of the parallel even-weight member of the Hilbert family, compare the quaternionic self-pairing congruence period with Wan’s canonical period up to an integral unit. Under squarefree n− of parity [F:Q] and residual ramification at every n− factor, the transfer has the same localized Hecke algebra and rank-one module needed for this comparison. Import Hung/Hsieh nonvanishing with that period: NV1 is nonzero, and under the Fujiwara instance NV2 is primitive modulo the uniformizer. Nonsplit imprimitive Euler factors are kept and may contribute positive μ.

Assume p≥5 unramified in F; M/F CM with p split; residual irreducibility and ordinary distinctness. n− squarefree with #prime factors ≡[F:Q] mod 2; residual ramification at each factor; the branch character used in Wan 86 is trivial.

The source is [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), Definition 85 and Theorem 86, pp.69–70; Lemma 87, pp.70–71. Period comparison, NV1/NV2, and exceptional Euler factors.

The proof proceeds as follows. Check stabilizer orders are prime to p (a p-torsion element would yield a quadratic field containing μ_p, impossible here for p≥5 unramified in F). Use the imported free quaternion module and integral pairing to identify the congruence generator. Apply the precise toric nonvanishing supplier on its character domain and compare primitive versus removed-Euler-factor normalizations.

The intended arithmetic theorem name is `quaternionicPeriodPrimitivity`.

**Checks.**

- n−=1 is allowed when [F:Q]=2.
- A μ=0 assertion for every imprimitive function fails at nonsplit Euler factors and is excluded.

This uses [L5w.2](#ac-l5w-canonical-period-duality), AutomorphicPadicLFunctions L3h, OrdinaryAutomorphicFormsAndModularityLifting R21.4.

<a id="ac-l5w-klingen-interpolation"></a>

### L5w.4 Normalized Hilbert Klingen family and its boundary

In the imported ordinary GU(2,2)/F module of p-adic forms, take the Klingen family ℰ_D supplied by APL L4 from the actual local sections and pullback, and prove its normalized coefficient and boundary identities. At every cusp x its coefficients c_D(β,x) lie in Λ_D and specialize at each generic arithmetic point φ to the classical Klingen coefficient normalized by Ω_{f_φ,can}. Indices β are positive semidefinite Hermitian rank-two matrices; the degenerate indices det β=0 are included. Every degenerate coefficient (det β=0) belongs to (L_f,M,ξ^Σ L_ξ′^Σ). This is the boundary divisibility needed for a cuspidal congruence.

Assume D=(A,I,f,ψ,ξ,Σ) is Wan’s p-adic Eisenstein datum; Σ contains p and every bad prime; local sections are generic at the interpolation points. Residual irreducibility, ordinary distinctness and the Gorenstein instance hold; the auxiliary finite ψ has the specified central restriction and is unramified outside Σ.

The source is [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), §§6–7; Theorem 82, pp.66–68; Theorem 88, p.71; Theorem 27, p.23. Actual source-specific integral family and boundary ideal.

The proof proceeds as follows. Import the GU(2,2) carrier, doubling/pullback integrals and Λ-adic q-expansion/control from APL L4 and the ordinary unitary-form supplier. Use ℓ_f rather than e_f to obtain integral coefficients, then check the local p sections and tame local factors against Wan’s interpolation formula. Evaluate the Siegel operator at every cusp; the degenerate coefficient computation gives the product of Rankin and abelian p-adic L-functions.

The intended arithmetic theorem name is `wanKlingenInterpolation`.

**Checks.**

- Use GU(2,2), not GU(3,1) or the semi-ordinary projector.
- Check boundary divisibility at all cusps, not just the standard constant coefficient.

This uses [L5w.2](#ac-l5w-canonical-period-duality), AutomorphicPadicLFunctions L4, [L1.1](#ac-l1-gu22-ordinary-hermitian-forms), [L1.2](#ac-l1-gu22-hida-control), PadicFamilies L5.

<a id="ac-l5w-fourier-coefficient-coprimality"></a>

### L5w.5 Nonconstant Fourier coefficient coprimality

For ℰ_D, the ideal generated by the selected nondegenerate Fourier–Jacobi/theta pairings is contained in no height-one prime of Λ_D except possibly a prime pulled back from R+=I[[Γ_M+]]. At each remaining height-one prime dividing L_f,M,ξ^Σ there is an actual nonconstant coefficient which is a unit after localization. This supplies the coefficient which survives the cuspidal congruence; nonzero interpolation alone is insufficient.

Assume Wan’s irreducibility/distinctness and Gorenstein conditions, auxiliary theta/CM characters and their prescribed local conductors are satisfied. The CM character is chosen with its period-normalized algebraic value a p-adic unit, with local Euler factors units and CM residual irreducibility/distinctness; all factors are tested on the chosen lattice.

The source is [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), Proposition 95, pp.78–79; Proposition 96 and proof, pp.79–81. Selected coefficient ideal and the CM unit computation.

The proof proceeds as follows. Apply the explicit Fourier–Jacobi identity and Hecke projection of Wan 95; keep its A_D,g factor in R+ and its B_D,g factor in Λ_D. Choose the auxiliary CM family and characters as in 96, importing the CM p-adic L-value and congruence-period theorem from AutomorphicPadicLFunctions L3h and PadicFamilies L5. Show the B factor is a unit and identify the remaining possible divisors as pulled-back primes.

The intended arithmetic theorem name is `wanFourierCoprimality`.

**Checks.**

- At an excluded prime from R+ use the exceptional-prime target, rather than this coprimality statement.
- A single dense set of nonzero classical coefficients does not imply integral primitivity.

This uses [L5w.4](#ac-l5w-klingen-interpolation), [L5w.3](#ac-l5w-quaternionic-period-primitivity), AutomorphicPadicLFunctions L3h, PadicFamilies L5.

<a id="ac-l5w-eisenstein-coefficient-ideal"></a>

### L5w.6 Wan’s coefficient Eisenstein ideal

For Λ_D→h_D, where h_D is the reduced localized cuspidal ordinary Hecke image, let J index the exact characteristic-polynomial coefficients, central-character values and ordinary U_p eigenvalues in Wan §9.1. For every unramified inert place include all coefficients of Q_v−Q_v,D and its central Z_v,0 difference; for each split place include Q_w−Q_w,D, Q_wbar−Q_wbar,D and both central Z_v,0^(i) differences. Use i_w=1 and i_wbar=2: Q_w uses T_i^(i_w) with the complementary central operator Z_0^(3−i_w), and Q_wbar uses T_i^(i_wbar) with Z_0^(3−i_wbar). The second polynomial uses the conjugate-prime index i_wbar throughout, including its complementary central operator. The polynomial constant coefficient is 1, so only degrees 1–4 contribute. At every v|p include u_t,v−λ_ℰ_D(u_t,v) for t=diag(p^a1,p^a2,p^a4,p^a3), a1≤a2≤a3≤a4. Reciprocity uses geometric Frobenius and the central character is σ_ψσ_ξ^−1. Write H_j∈h_D and λ_j∈Λ_D for these cuspidal operators and Eisenstein values. Let I_D be the ideal generated by H_j−λ_j, and define 𝔈_D=I_D∩Λ_D, equivalently the kernel of Λ_D→h_D/I_D. The exact Hecke-generator dictionary proves the structure map onto h_D/I_D is surjective, so Λ_D/𝔈_D≅h_D/I_D. The definition does not assume surjectivity or identify a reducibility ideal with a congruence ideal.

Assume the coefficient inclusion is a unital ring map; the Hecke carrier, reduced image and eigenvalues are supplied by the ordinary-form/IHG owners. The actual index set J contains all operators listed in Wan §9.1, with its central and U_p relations.

The source is [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), §9.1, pp.81–83 (definitions of h_D, I_D and 𝔈_D). The source-specific operator list and coefficient kernel, using existing ideal theory. [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §§9.5.2–9.5.5, pp.130–132. The two split Hecke families and complementary Satake variables justify the corrected conjugate-prime operator index.

The proof proceeds as follows. Use the existing ideal span, preimage and quotient API to specialize the generic congruence construction to the source eigenpacket. Prove its kernel and generator relations using membership in a generated ideal. Use the IHG/form supplier’s exact Hecke-generation dictionary: polynomial-coefficient, central and ordinary differences reduce every generator to its Eisenstein scalar. Check that inverted central/ordinary/localizing elements have unit scalar images. This proves coefficient-to-quotient surjectivity; scalar maps otherwise give only the stated kernel inclusion.

The interface is used in [L5w.7](#ac-l5w-height-one-congruence) to Its local quotient length measures the cuspidal Eisenstein congruence.; in [L5w.8](#ac-l5w-galois-selmer-instance) to 𝔈_D is the coefficient intersection J0 required for the Ribet extension theorem..

Provide `wanEisensteinIdeal_mem`: r∈𝔈_D iff its image in h_D belongs to the ideal generated by the operator differences.

Provide `wanEisensteinIdeal_quotient_kernel`: 𝔈_D equals the kernel of the coefficient map followed by the quotient h_D→h_D/I_D.

Provide `wanEisensteinIdeal_generator`: Each operator H_j and the image of λ_j agree in h_D/I_D.

Provide `wanEisensteinIdeal_quotient_surjective`: If the coefficient-to-quotient map is surjective, its induced map Λ_D/𝔈_D→h_D/I_D is a ring equivalence.

Provide `wanEisensteinIdeal_baseChange_le`: For a commuting coefficient/Hecke square and transported operator values, the extension of 𝔈_D is contained in the new coefficient Eisenstein ideal; equality requires a proved kernel-base-change condition.

The intended arithmetic theorem name is `wanEisensteinIdeal`.

**Checks.**

- For Λ=h=ℤ, identity coefficient map, one operator H=7 and λ=7, E=(0).
- For Λ=h=ℤ, identity coefficient map, H=8 and λ=3, E=(5), not (25).
- For Λ=h=ℤ, identity coefficient map, H=2 and λ=1, E=ℤ.
- For the coefficient map ℤ→ZMod 5 and an operator equal to its eigenvalue, I_D=0 but 𝔈_D=(5), detecting the coefficient kernel.
- The ideal lives in Λ_D, distinct from I_D in h_D.
- The coefficient map need not be injective in the general algebraic prototype; arithmetic h_D uses the actual coefficient action.
- At a split prime the two independent Satake operator families are retained; changing only the central operator in Q_wbar is insufficient.

This uses `Ideal.comap` (Mathlib), `Ideal.mem_comap` (Mathlib), `Ideal.map_span` (Mathlib), [L0.4](#ac-l0-eisenstein-ideal), IntegralHeckeAndGaloisDeterminants IHG.2.

<a id="ac-l5w-height-one-congruence"></a>

### L5w.7 Cuspidal lift and Eisenstein congruence length

At a height-one prime P of Λ_D not pulled back from R+, with a nonconstant Fourier coefficient of ℰ_D outside P, construct a cusp family congruent to ℰ_D modulo the Rankin factor L^Σ. After localizing the source at P, the induced Λ_D,P-algebra map (h_D/I_D)⊗_ΛD Λ_D,P→Λ_D,P/(L^Σ) is onto. The separate global coefficient map Λ_D→h_D/I_D is onto by the Hecke-generator dictionary. Its kernel 𝔈_D satisfies ord_P(𝔈_D)≥ord_P(L^Σ). In the rational projector variant retain b e_f integral, b(φ0)≠0, P⊂φ0, and the coefficient nonvanishing condition on b times the rational family.

Assume the integral family and coprimality theorem, ordinary boundary exact sequence and lifting/control theorem hold for all cusps. P is height one; the local ring is a DVR; the Rankin factor is nonzero. The unwanted abelian factor is removed only with the actual unit/localization argument of Wan.

The source is [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), Theorem 27, p.23; §9.1 and Theorem 97, pp.81–84. Cuspidal congruence and orientation of the local length bound.

The proof proceeds as follows. Use Wan 27 to lift the cuspidal reduction of the family; verify the boundary and flatness hypotheses of the form module. In the localized cusp module, evaluate a Hecke translate at a coefficient invertible at P. Divide by that coefficient to obtain a Λ_D,P-linear functional. The congruent eigenvalue relations modulo P^r prove multiplicativity and unit preservation on the Hecke quotient; linearity alone does not make a ring map. The localized quotient map gives 𝔈_D Λ_D,P⊂P^r Λ_D,P, with r=ord_P(L^Σ). Use source-specific Gorenstein duality only where required, and keep the coefficient/global quotient distinct from its localization.

The intended arithmetic theorem name is `wanHeightOneCongruence`.

**Checks.**

- The inequality is ≥, not strict >; verify against the PDF symbols.
- A vanishing/nonunit coefficient cannot be used as a denominator.
- The unlocalized map R/P→Frac(R/P) need not be onto: for R=k[x,y], P=(x), it is k[y]→k(y). Localization of the Hecke source is essential.

This uses [L5w.4](#ac-l5w-klingen-interpolation), [L5w.5](#ac-l5w-fourier-coefficient-coprimality), [L5w.6](#ac-l5w-eisenstein-coefficient-ideal), [L1.2](#ac-l1-gu22-hida-control), PadicMeasuresIwasawaAlgebras L4.

<a id="ac-l5w-galois-selmer-instance"></a>

### L5w.8 Polarized 1+2+1 extension with ordinary local conditions

Import integral determinant/reconstruction ingredients from IHG, and apply the polarized lattice theorem [L0.7](#ac-l0-lattice-construction) over (F, M) with middle rank two (Wan Proposition 98) to the actual cuspidal rank-four Galois representation congruent to χ′⊕ρ⊕χ. Verify all ten hypotheses of Wan §9.2.1 on the completed height-one Hecke algebra. The resulting extension classes belong to the Σ-imprimitive ordinary Selmer group for the same rank-two lattice and twist as the Rankin function. For P0⊂I[[Γ_M]] height one not pulled back from R+=I[[Γ_M+]], require that P=P0Λ_D is the corresponding height-one prime. If the plus/minus local constituents are residually disjoint modulo P, obtain ord_P0(char X^Σ)≥ord_P(𝔈_D).

Assume Λ_D is a Krull domain; h_D is finite, local and reduced. The selected localized/completed congruence model satisfies the coefficient-intersection and quotient clauses of Wan §9.2.1; these clauses require proof and do not follow merely from finite flatness. The three residual constituents are disjoint, the rank-two one absolutely irreducible, and the polarization and local ordinary characteristic polynomials have Wan’s twists. The cuspidal characteristic-zero constituents are absolutely irreducible or satisfy the precise rank-two alternative in condition (10); CAP exclusion and ordinary modularity lifting prove this alternative. The scalar-character Selmer characteristic ideal has valuation zero at P by the totally real character main conjecture; the plus/minus local pieces have no common irreducible constituent modulo P. For primes containing 𝔈_D, use A=completion of (Λ_D)_P, a DVR, and the corresponding completed Hecke factor R. Choose the source model A0,R0,I0,J0 so I0∩A0=J0, A0/J0≅R0/I0 and the extended ideals contract as required by Wan §9.2.1. Global I_D,𝔈_D do not automatically contract unchanged after height-one localization. A supplier may use their P-primary saturations only after proving the same local quotient lengths and valuations. At a prime not containing 𝔈_D the congruence valuation is zero. Wan setup (1)–(3): use H=G_F,Σ, G=G_M,Σ and its conjugation c. The continuous polarization character ν extends to H; χ is a continuous character of G and χ′=νχ^(−c) has different residual character. The rank-two ρ is defined on a free A0-lattice, satisfies ρ^c≅ρ^∨⊗ν, and its residual representation is absolutely irreducible and disjoint from both residual characters. Residual disjointness is witnessed by coprime characteristic polynomials of some group-algebra element, as in the supplier theorem. Wan setup (4)–(6): the rank-four σ is defined over the image of R0 in R, with integral traces and a finitely generated R-orbit module for every vector. It satisfies the same polarization; the proper congruence ideal I has nonzero J=A∩I and A/J≅R/I, and tr σ≡χ′+tr ρ+χ modulo I. The irreducible ρ has a compatible polarization pairing Φ with Φ^t=−ν(c)Φ. Wan setup (7)–(9): at every v|p the plus and minus rank-two lattice pieces are free over A0, and the plus and minus rank-four pieces are free over R⊗_A Frac(A). For every element x of the local group algebra, the plus characteristic polynomial of σ agrees modulo I with Ch(ρ^+,x,T)(1−χ(x)T); the minus relation uses χ′. The two combined local pieces have no common residual irreducible constituent. Wan setup (10): for each characteristic-zero specialization of R⊗_A Frac(A), σ is absolutely irreducible or has the specified absolutely irreducible rank-two subrepresentation whose trace is congruent to χ+χ′. The ordinary lifting and CAP exclusion supplier proves this alternative; it is not assumed for an arbitrary trace. Match the exact twist dictionary of Wan §9.2.2, p.87: ρ=ρ_f⊗σ_ξ^(−c)σ_ψ^c ε^(−2), χ=σ_ψ^c ε^(−3), and χ′=νχ^(−c), using ε for the p-adic cyclotomic character. The final Selmer lattice is (T_f⊗I[[Γ_M]])(ε_M^(−c))⊗ε and its ordinary line, with the actual coefficient map and primitive/Σ conventions. All height-one extension and coefficient normalization comparisons are verified before identifying the valuations. Characteristic valuations use the divisorial height-one-length construction over the normal coefficient ring, with faithful localized/completed scalar transport; principality is not inferred from normality.

The source is [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), §9.2.1, Proposition 98, pp.84–86; §9.2.2, Theorem 100, pp.87–88. Actual polarized extension instance and ordinary local-condition check.

The proof proceeds as follows. Use IHG determinant/Hecke algebra ingredients. The upstream IHG.6 statement concerns rank-two representations with two residual characters; it is not Wan’s rank-four χ′⊕ρ⊕χ theorem, which is the case n = 2 over (F, M) of [L0.7](#ac-l0-lattice-construction). Use the [L0.6](#ac-l0-extension-class-local-conditions) bridge for its ordinary Selmer realization. Match Wan’s characters χ, χ′, ν, rank-two lattice and cyclotomic/CM twists using the displayed formulas on p.87; keep the polarization sign. Use the ordinary lifting/CAP theorem for condition (10), and IntegralIwasawaTheory I.5 with the precise scalar-character/local-condition comparison to kill the unwanted character extension. Apply the length theorem and compare the resulting local conditions with the source Selmer group; if X is not torsion the source’s extended characteristic ideal is zero, not a nonzero genuine characteristic ideal.

The intended arithmetic theorem name is `wanGaloisSelmerInstance`.

**Checks.**

- A trace congruence alone is not used to produce an integral representation.
- The scalar Selmer term and the common-local-constituent condition are not suppressed.
- A two-character rank-two Ribet theorem does not supply the polarized rank-four three-block length theorem.
- For example, localizing an ideal with an extra factor away from P removes that factor; equality with its original global contraction must be proved, not presumed.

This uses [L5w.6](#ac-l5w-eisenstein-coefficient-ideal), [L5w.7](#ac-l5w-height-one-congruence), IntegralHeckeAndGaloisDeterminants IHG.4, IntegralHeckeAndGaloisDeterminants IHG.6, [L0.5](#ac-l0-su-lattice-datum), [L0.7](#ac-l0-lattice-construction), [L0.6](#ac-l0-extension-class-local-conditions), [L0.1](#ac-l0-sigma-primitive-selmer), OrdinaryAutomorphicFormsAndModularityLifting R21.4, IntegralIwasawaTheory I.5, SelmerIwasawaCohomology L3 (`kernel-control`), PadicMeasuresIwasawaAlgebras L4.

<a id="ac-l5w-exceptional-height-one-primes"></a>

### L5w.9 The pulled-back height-one primes

For a height-one P pulled back from I[[Γ_M+]], bound ord_P(L^Σ) by the sum of valuations of the nonsplit removed Euler factors, using primitive NV2 and the period comparison. If X^Σ is torsion, Poitou–Tate and the vanishing of the compact global term give the exact primitive/imprimitive characteristic-ideal comparison with those local factors. Hence ord_P(char X^Σ)≥ord_P(L^Σ). If X^Σ is not torsion, record only the zero extended-ideal containment. No uniform imprimitive μ=0 assertion is made.

Assume the ordinary primitive and imprimitive local conditions use the same lattice; Σ includes bad primes and p. NV2 holds for the primitive function; local H¹ finite-part modules have the indicated Euler characteristic ideals; the necessary compact global term vanishes after checking torsion and torsion-freeness.

The source is [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), Lemma 87, p.71; proof of Theorem 101, p.89. Exceptional primes and local-factor comparison rather than automatic primitivity.

The proof proceeds as follows. Apply Wan 87 to the primitive-normalized function with the nonsplit Euler product retained. Use the Selmer supplier’s Poitou–Tate exact sequence; prove its global compact term is both torsion-free (residual irreducibility) and torsion under the stated cotorsion hypothesis. Match each local characteristic divisor with its analytic Euler factor and use divisorial characteristic multiplicativity. Use the requested normal/Krull extension of L4, not the principal-generator theorem available only for a UFD.

The intended arithmetic theorem name is `wanExceptionalPrimes`.

**Checks.**

- Nonsplit factors with positive μ are included on both sides.
- The non-torsion case is not reported as a proof of torsionness.

This uses [L5w.3](#ac-l5w-quaternionic-period-primitivity), [L0.2](#ac-l0-primitive-imprimitive-comparison), SelmerIwasawaCohomology L4, PadicMeasuresIwasawaAlgebras L4.

<a id="ac-l5w-wan-family-divisibility"></a>

### L5w.10 Wan’s parallel Hilbert-family divisibility

Let F be totally real of degree d, p≥5 unramified in F, M/F CM with p split, and I a local normal finite integral extension of the parallel Hida weight algebra. Let f be a nearly ordinary I-adic eigenform of trivial character with an ordinary specialization of even parallel weight κ0≥2. Under residual irreducibility over M, distinctness, the full Wan 8/Fujiwara instance, Δ+ (M not in the narrow Hilbert class field of F and F/Q-ramified primes split in M), squarefree n− with parity d, and residual ramification at all n−, prove char^Σ(X_f,M)⊂(L_f,M^Σ). For Σ including all bad primes, the normalized function is integral. For arbitrary Σ the result is a fractional-ideal statement with the Euler factors restored. Here char^Σ is the divisorial characteristic ideal defined by height-one lengths over the normal coefficient ring when the finite dual is torsion; it need not be principal. The principal/UFD characteristic-generator interface does not cover this generality; in the non-torsion case Wan’s assertion uses zero.

Assume all conditions in the statement, including the integral Gorenstein period normalization and the same lattice in the analytic and Galois comparisons. No general main conjecture for an arbitrary unitary-group representation or arbitrary weight Hida family is inferred.

The source is [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), Theorems 3 and 101, pp.3–4 and 88–89. Parallel-family theorem with fractional and integral domains separated.

The proof proceeds as follows. Combine the coefficient coprimality, congruence length and Galois extension bounds at non-pulled-back primes. Use the exceptional-prime target on the complementary primes. Import height-one detection of divisorial ideal containment over the normal coefficient ring; remove/add local factors through Poitou–Tate to treat each Σ.

The intended arithmetic theorem name is `wanFamilyDivisibility`.

**Checks.**

- Test p=5 and κ0=2 against the PDF, whose text extraction drops ≥.
- Separate the source’s extended ideal from cotorsion needed to use a nonzero characteristic divisor.

This uses [L5w.7](#ac-l5w-height-one-congruence), [L5w.8](#ac-l5w-galois-selmer-instance), [L5w.9](#ac-l5w-exceptional-height-one-primes), PadicMeasuresIwasawaAlgebras L4.

<a id="ac-l5w-arithmetic-specialization"></a>

### L5w.11 Arithmetic specialization with control corrections

At the ordinary weight-two point φ:I→O giving g_F, extend φ to Λ_D→Λ_M and compare the specialized Rankin function with the fixed-form normalization. Choose the principal analytic majorant (f) containing the big divisorial characteristic ideal, as supplied by the family divisibility. Prove φ(f)≠0 and the ordinary Selmer control hypotheses; SU Corollary 3.2.9 then gives char_ΛM(X_specialized)⊂(φ(f)), with any nonvanishing Tor/local correction retained in the precise corrected bound. This does not assert that the image of a possibly nonprincipal big characteristic ideal contains the specialized characteristic ideal. In a separately proved principal/UFD case one may take f to be a characteristic generator. The Eisenstein coefficient kernel has only the stated base-change inclusion until its own kernel compatibility is proved.

Assume φ is the point of the same parallel family; the integral period/projector matches the fixed-form normalization. Finite Selmer duals and compatible ordinary/away-p local conditions; residual no-invariants and local ordinary quotient hypotheses needed for control. A height-one generator must have nonzero specialization before cancellation.

The source is [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Proof of Theorem 3.2.1, p.8 (arXiv v2 p.7). Weight-two specialization, whose control and integral normalization must be checked. [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Proposition 3.2.8, Corollary 3.2.9, pp.23–24. Control followed by specialization of a principal majorant of the characteristic divisor; the normal coefficient ring need not be a UFD.

The proof proceeds as follows. Use the imported Hida control theorem to identify the form and its Galois lattice at φ. Apply derived control and its Tor spectral sequence; prove the kernel/localization-image corrections vanish using the actual residual representation, not irreducibility as a generic substitute. Apply SU Corollary 3.2.9 to a nonzero-specializing principal majorant f of the big characteristic divisor, in particular the analytic Rankin bound. Then compare its specialized period and Euler factors on the same O[[Γ_M]]. Rational-specialization supplies only its rational-lattice statement; it does not prove the integral comparison. Use P7 residual Nakayama only for a pseudo-coherent comparison cone; use R03.6 support-base-change for finite modules only.

The intended arithmetic theorem name is `wanArithmeticSpecialization`.

**Checks.**

- No assertion that tensor product commutes with every Selmer kernel.
- No replacement of a normal Hida branch by a regular ring just because it is finite flat.
- A map applied to a divisorial ideal is not used as a characteristic-ideal specialization theorem; the selected principal analytic majorant and its nonzero specialization are explicit.

This uses [L5w.10](#ac-l5w-wan-family-divisibility), SelmerIwasawaCohomology L3 (`derived-control`), SelmerIwasawaCohomology L3 (`kernel-control`), SelmerIwasawaCohomology L3 (`rational-specialization`), PadicFamilies L5, DeformationAndDerivedPatchingAlgebra P7 (`pseudo-coherent-residual-nakayama`), DeformationAndDerivedPatchingAlgebra R03.6 (`support-base-change`), PadicMeasuresIwasawaAlgebras L4, [L0.3](#ac-l0-selmer-specialization-control).

<a id="ac-l5w-quartic-cm-divisibility"></a>

### L5w.12 The BCS quartic-CM input

For a weight-two elliptic newform g of level N and good ordinary p>3, let F be real quadratic with gcd(pN,D_F)=1, and M/F CM quadratic, p split, gcd(NO_F,D_M/F)=1. Require residual irreducibility over M, the exact H1/minimal-lift conditions, both local inertia checks of the Fujiwara instance, and Δ+. If n− is squarefree with an even number of inert prime factors and the residual representation is ramified at each factor, prove (L_p(g_F/M))⊇char(X_ord(g/M∞)) in O[[Γ_M]], in the torsion case. State separately the source’s zero-ideal containment when the dual is not torsion; torsion must come from the explicit Selmer/Kato supplier. This is the source-qualified integral engine exported to L5a.

Assume all field, local and residual hypotheses in the statement; p>3 entails p≥5. The integral ordinary local conditions away p are BCS §2’s locally trivial ones; compare Wan’s inertia/Σ conventions through actual local Euler modules before changing primitive status. The fixed-form analytic object is the normalized specialization of the family object; the exceptional induced local type has reducible inertia, and the required Δ+ uses the narrow Hilbert class field. Both are checked explicitly in the two following field-selection targets.

The source is [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Theorem 3.2.1, pp.7–8; §2, pp.5–7. The quartic-CM specialization with strengthened explicit supplier conditions. [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), Theorems 8, 82 and 101, pp.6–7, 66–68, 88–89. Integral family input, not a universal torsion theorem.

The proof proceeds as follows. Verify the full minimal theorem instance and the canonical period. Apply the family divisibility and arithmetic specialization targets on the same coefficient ring and lattice. Remove precisely the Euler factors for the fixed primitive Selmer convention; record any nonunit rather than cancel it without a comparison. Use the separate torsion supplier for a genuine characteristic ideal.

The intended arithmetic theorem name is `quarticCMDivisibility`.

**Checks.**

- The empty n− product has zero factors and satisfies parity in degree two.
- The output is one divisibility; no quartic-CM main-conjecture equality is claimed.

This uses [L5w.1](#ac-l5w-fujiwara-instance), [L5w.11](#ac-l5w-arithmetic-specialization), [L0.1](#ac-l0-sigma-primitive-selmer), [L0.2](#ac-l0-primitive-imprimitive-comparison), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`), SelmerIwasawaCohomology L3.

<a id="ac-l5w-selected-base-change-hypotheses"></a>

### L5w.13 Discharging the auxiliary-field hypotheses

For imaginary quadratic K and real quadratic F satisfying the following field conditions, prove the quartic engine’s conditions. K has odd discriminant not −3, all primes N split, and p splits; F has odd discriminant coprime pN, p inert, D_F-primes split in K, and an N-prime ℓ is inert in F exactly when ℓ≡−1 mod p. Residual irreducibility holds over M=FK and G_{F(ζ_p)} (absolute irreducibility is verified for the elliptic application), with the p=5 exceptional case excluded. Then p splits in M/F, discriminants are coprime to N, n−=1, both local q_v tests hold, and a minimal modular lift base-changes to a minimal lift over F. Require K to have a new ramified prime outside D_F, so M/F is ramified at a finite place and cannot lie in the narrow Hilbert class field. This is a conditional verification; the existence theorem in L5a is not an input.

Assume the complete selected-field conditions, rather than arbitrary quadratic fields, and the exact minimal modular lift over Q supplied by R04.6/R21.4. The p=5 auxiliary exclusion F≠Q(ζ5)+ is available; for elliptic representations the projective exception is also excluded by Fujiwara 9.8.

The source is [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Proposition 5.2.1 and Lemma 5.2.3, pp.11–12 (v2 pp.9–10). Discharge all conditions before using the weaker endpoint hypotheses. [Wan-2015](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf), Proof of Theorem 103, pp.91–92. Minimal base-change lift route. [Fujiwara](https://arxiv.org/pdf/math/0602606v2), Definition 6.11, pp.54–55; Proposition 9.8, p.83. Minimality and elliptic p=5 exception.

The proof proceeds as follows. Use the pinned multiquadratic Galois and prime-splitting declarations for F, K and their compositum; the character/tower identifications are inherited from the supplied elliptic/Selmer comparison. The current NumberFieldArithmetic roadmap records this splitting theory as built. Auxiliary-field existence stays in L5a. At ℓ|N, inertness in F turns q=ℓ into q=ℓ²≡1 when ℓ≡−1; otherwise q≠−1 already. Outside N the residual representation is unramified; at p the ordinary residual representation is reducible/distinguished. Thus BOTH local inertia tests are discharged. Match all six clauses of Fujiwara 6.11 under base change; invoke the specific local minimality theorem supplied by the deformation owner. Since K is chosen ramified at a new odd prime outside D_F, M/F is not unramified at all finite places. Verify n−=1 directly from Heegner splitting in K.

The intended arithmetic theorem name is `selectedBaseChangeHypotheses`.

**Checks.**

- No Heegner or anticyclotomic endpoint is used.
- Record the ownership of auxiliary-field existence in L5a; this target verifies its Wan/Fujiwara application, not a second existence theorem.

This uses OrdinaryAutomorphicFormsAndModularityLifting R21.4, GlobalGaloisDeformations R04.6, `NumberField.ncard_primesOver_multiquadratic_iff` (Tau Ceti), `TauCeti.Multiquadratic.isGalois` (Tau Ceti).

### Examples

For k[X,Y] and P=(X), the global quotient by P is k[Y], whereas the quotient of the localization k[X,Y]_P by P is k(Y). The global coefficient map to k(Y) is not surjective. A Hecke-to-Λ_P/(L) congruence quotient must therefore localize its source before asserting surjectivity. Clearing a rational eigenprojector by b with b(φ₀)≠0 makes b a unit at every P⊆ker φ₀; it gives no such claim at an unrelated P.

In degree [F:Q]=2, n⁻=1 has zero prime factors and satisfies the even parity condition. If ℓ≡−1 mod p is inert in F, its residual cardinality becomes q_v=ℓ²≡1 mod p, which is different from −1 for p odd. At p=5 the values 1 and −1=4 are distinct. For the two split Hecke families i_w=1 and i_w̄=2, the complementary central factors have indices 2 and 1 respectively; a repeated i_w in both operator families would incorrectly use the first Satake polynomial twice.

### Dependencies

[L0.8](#ac-l0-canonical-period-congruence-number), [L0.4](#ac-l0-eisenstein-ideal), [L0.6](#ac-l0-extension-class-local-conditions), [L0.7](#ac-l0-lattice-construction), [L0.2](#ac-l0-primitive-imprimitive-comparison), [L0.3](#ac-l0-selmer-specialization-control), [L0.1](#ac-l0-sigma-primitive-selmer), [L0.5](#ac-l0-su-lattice-datum), [L1.2](#ac-l1-gu22-hida-control), [L1.1](#ac-l1-gu22-ordinary-hermitian-forms), AutomorphicPadicLFunctions L3h, AutomorphicPadicLFunctions L4, DeformationAndDerivedPatchingAlgebra P7 (`pseudo-coherent-residual-nakayama`), DeformationAndDerivedPatchingAlgebra R03.6 (`support-base-change`), GlobalGaloisDeformations R04.6, IntegralHeckeAndGaloisDeterminants IHG.2, IntegralHeckeAndGaloisDeterminants IHG.4, IntegralHeckeAndGaloisDeterminants IHG.6, IntegralIwasawaTheory I.5, OrdinaryAutomorphicFormsAndModularityLifting R21.4, PadicFamilies L5, PadicMeasuresIwasawaAlgebras L4, PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`), SelmerIwasawaCohomology L3, SelmerIwasawaCohomology L3 (`derived-control`), SelmerIwasawaCohomology L3 (`kernel-control`), SelmerIwasawaCohomology L3 (`rational-specialization`), SelmerIwasawaCohomology L4, `Ideal.comap` (Mathlib), `Ideal.map_span` (Mathlib), `Ideal.mem_comap` (Mathlib), `Ideal.span_singleton_mul_left_unit` (Mathlib), `NumberField.ncard_primesOver_multiquadratic_iff` (Tau Ceti), `TauCeti.Multiquadratic.isGalois` (Tau Ceti).

## Layer L5a: The early two-variable product bound

<a id="ac-l5a-ordinary-two-variable-equivalence"></a>

### L5a.1 The ordinary two-variable Perrin-Riou/Greenberg equivalence (BCS Theorem 4.1.3, Corollary 4.1.4)

Let g ∈ S_2(Γ_0(N)) be an elliptic newform, p ∤ 2N an ordinary prime for g, and K imaginary quadratic with p split (spl), (D_K, N) = 1 and ρ̄_g irreducible over G_K (irr_K). The following are equivalent: (i) X_ord(g/K_∞) is Λ_K-torsion and (L^{PR}_p(g/K)) ⊇ ch_{Λ_K}(X_ord(g/K_∞)) in Λ_K ⊗ ℚ_p; (ii) X_Gr(g/K_∞) is Λ_K-torsion and (L^{Gr}_p(g/K)) ⊇ ch_{Λ_K}(X_Gr(g/K_∞)) in Λ^{ur}_K ⊗ ℚ_p; the same holds for the opposite divisibilities and before inverting p (BCS Thm 4.1.3, from BSTW §9.3.2). For two newforms g, g′ with p ∤ 2NN′ ordinary for both and K satisfying (spl), (D_K, NN′) = 1 and (irr_K) for both, the product statements (L^{PR}_p(g/K)·L^{PR}_p(g′/K)) ⊇ ch(X_ord(g/K_∞))·ch(X_ord(g′/K_∞)) and (L^{Gr}_p(g/K)·L^{Gr}_p(g′/K)) ⊇ ch(X_Gr(g/K_∞))·ch(X_Gr(g′/K_∞)) are equivalent, in either direction (BCS Cor. 4.1.4). Prove `twoVariable_PR_Greenberg_equivalence` (BCS Theorem 4.1.3 and Corollary 4.1.4). The two-variable zeta element is the Beilinson–Flach class BF_α ∈ H¹_{F_ord,rel}(K, T_g(α) ⊗̂ Λ_K) of g against the CM Hida family, the specialization of [L2.7](#ac-l2-klz-beilinson-flach-classes) at the fixed form g, with its two explicit reciprocity laws: a Coleman map at v̄ sends p^−(loc_v̄ BF_α) to the Perrin-Riou function, and loc_v BF_α lies in the ordinary line with a Coleman map sending it to the Greenberg function, both through injective Λ_K-linear maps with pseudo-null cokernel (CGS23 Theorem 3.1.1, p. 17, and Corollary 3.1.3, p. 18, from KLZ17 and BDP22; these are the reciprocity laws of [L2.8](#ac-l2-bf-explicit-reciprocity)). The normalizing factors are the congruence ideal of the CM family, generated by h_K·L_v(K)^− (CGS23 proof of Corollary 3.1.3, from [L0.9](#ac-l0-hida-tilouine-anticyclotomic)-type input), and deg(π_•)·H_p(g) for the curve E_• with T_pE_• ≅ T_g.

Assume BCS Thm 4.1.3 has (irr_K), which implies H⁰(K,g[p])=0 and hence the van_K condition needed in the integral comparison. The source asserts both directions, including the integral version under these hypotheses. No claim is made about what survives if van_K is removed outside this setting. The reference to Proposition 4.1.3 in the proof of BCS Proposition 5.2.1 means Theorem 4.1.3.

The source is [BCS-v2](https://arxiv.org/pdf/2405.00270v2), Thm 4.1.3 and proof, Cor. 4.1.4, p. 8. Equivalence of the two-variable Perrin-Riou and Greenberg main conjectures, in both directions and before inverting p, and its two-form product version; the proof cites BSTW §9.3.2, CGS23 Prop. 3.2.1 and Castella 2024 §3.3. [CGS23](https://arxiv.org/pdf/2303.04373v1), Theorem 3.1.1, p. 17; Corollary 3.1.3, p. 18; Proposition 3.2.1 and proof, pp. 18–19. The Beilinson–Flach class, its two reciprocity laws and the two four-term Poitou–Tate sequences, on the cyclotomic line under E_•(K)[p] = 0 and nonvanishing of the two cyclotomic restrictions; the two-variable argument is the same with Λ_K in place of Λ_K^+.

The proof proceeds as follows. Writing H for the rank-one global module, Z for the two-variable zeta class and X_st for the strict Selmer dual, the two Poitou–Tate sequences give ch(H/ΛZ)·ch(X_Gr) = (L_Gr)·ch(X_st) and ch(H/ΛZ)·ch(X_ord) = (L_PR)·ch(X_st) after the unramified coefficient extension, using both explicit reciprocity laws. Prove rank one, torsion and nonvanishing of the terms before cancelling; this gives ch(X_Gr)·(L_PR) = ch(X_ord)·(L_Gr), hence both directions of the equivalence. Cor. 4.1.4: direct sums of the two pairs of sequences for g and g′.

**Checks.**

- Does not use the anticyclotomic Theorem 4.2.1, which belongs to HeegnerPointEulerSystems:HE.8/HE.8b.
- If the Coleman map at v̄ had a cokernel that is not pseudo-null, the second term of the Poitou–Tate sequence would not be pseudo-isomorphic to Λ_K/(L^{PR}) and the equivalence would fail; the pseudo-null cokernel clause is part of the reciprocity input.
- With E(K)[p] ≠ 0 the strict–relaxed Selmer module need not vanish, and the sequence used in the proof is not exact on the left; (irr_K) is what removes this.

This uses [L2.7](#ac-l2-klz-beilinson-flach-classes), [L2.8](#ac-l2-bf-explicit-reciprocity), [L0.9](#ac-l0-hida-tilouine-anticyclotomic), ArithmeticGaloisDuality R02.4 (`poitou-tate`), SelmerIwasawaCohomology L2 (`selmer-structure-poitou-tate`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`).

<a id="ac-l5a-quartic-cm-selmer-restriction"></a>

### L5a.2 Restricting the quartic-CM characteristic ideal to K

Let g ∈ S_2(Γ_0(N)) be an elliptic newform, p > 3 a good ordinary prime with ρ̄_g irreducible, F a real quadratic field, K imaginary quadratic, M = FK the quartic CM field, K̃_∞ = FK_∞, Λ̃_K = O[[Gal(K̃_∞/M)]] ≅ Λ_K and π_K: Λ_M → Λ̃_K ≅ Λ_K induced by Gal(M_∞/M) ↠ Gal(K̃_∞/M). Then π_K(ch_{Λ_M}(X_ord(g/M_∞))) ⊇ ch_{Λ_K}(X_ord(g/K_∞))·ch_{Λ_K}(X_ord(g^F/K_∞)) in Λ_K, where g^F is the twist of g by the quadratic character of F/ℚ (BCS Lemma 5.1.1).

Use the hypotheses of BCS §5; the containment is integral and in the stated direction only. Here O is a coefficient integer DVR, Λ_M≅O[[T₁,T₂,T₃]] and Λ_K≅O[[T₁,T₂]]; their characteristic ideals are principal. The selected characteristic generator has nonzero π_K-image. Derive finite torsion duals and the no-invariants/local-control hypotheses from early cyclotomic Kato bounds and quadratic descent, rather than from the final main-conjecture equality. If the quotient has a correction term, retain its divisor in the bound.

The source is [BCS-v2](https://arxiv.org/pdf/2405.00270v2), Lemma 5.1.1 and proof, p. 9. The restriction from the quartic CM tower to K and the resulting containment of characteristic ideals.

The proof proceeds as follows. Use control at I_K to identify the restricted quartic Selmer module with the corresponding module over M with coefficients T_g⊗Λ̃_K^∨. Shapiro then identifies it with the direct sum of the two Selmer modules over K for T_g and T_g⊗η_F; the right-hand cohomology groups are over K, not M as printed in BCS p. 9. The quadratic character η_F is trivial on G_M. Restriction from M to K of a module induced along Gal(M/K) ≅ Gal(F/ℚ) splits by the characters of Gal(M/K) (Shapiro). SU Cor. 3.8 (journal): π_K(ch_{Λ_M}(X)) ⊇ ch_{Λ_K}(X/I_K) ([L0.3](#ac-l0-selmer-specialization-control) (ii)).

**Checks.**

- Direction check: the image of the quartic characteristic ideal contains the product of the two K-characteristic ideals, so a divisibility for M gives one for the product over K.

This uses [L0.3](#ac-l0-selmer-specialization-control), [L0.1](#ac-l0-sigma-primitive-selmer), SelmerIwasawaCohomology L3 (`iwasawa-shapiro`), [ProfiniteCohomology](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/ProfiniteCohomology) Layer 7.

<a id="ac-l5a-quartic-cm-l-function-factorization"></a>

### L5a.3 The quartic-CM p-adic L-function restricted to K

In the setting of [L5a.2](#ac-l5a-quartic-cm-selmer-restriction), (π_K(L_p(g^F/M))) = (L^{PR}_p(g/K)·L^{PR}_p(g^F/K)) in Λ_K ⊗ ℚ_p, where L_p(g^F/M) is Wan's p-adic L-function of the base change g_F over M (BCS Lemma 5.1.2).

Assume the identity is only after inverting p (the comparison of interpolation properties involves periods whose p-integral comparison is open — BCS Remark 1.1.3(ii)).

The source is [BCS-v2](https://arxiv.org/pdf/2405.00270v2), Lemma 5.1.2 and proof, p. 9; §2 (p-adic L-functions), p. 6. The factorization of the restricted quartic p-adic L-function by direct comparison of interpolation properties.

The proof proceeds as follows. Compare interpolation formulas on a Zariski-dense set of characters of Γ_K: the base-change L-value L(g_F/M ⊗ χ, 1) factors as L(g/K ⊗ χ, 1)·L(g^F/K ⊗ χ, 1) (Wan's Prop. 84 in the journal numbering). The interpolation comparison identifies the restricted function with the product up to the fixed nonzero period scalar and the specified normalizations. After inverting p this scalar is a unit, giving equality of principal ideals. Density alone cannot remove the period scalar to yield an exact identity of normalized functions.

**Checks.**

- Exported only after inverting p; the integral statement of [L5a.6](#ac-l5a-two-variable-product-containment) uses µ = 0 instead of an integral period comparison.

This uses [L5w.12](#ac-l5w-quartic-cm-divisibility), AutomorphicPadicLFunctions L4.

<a id="ac-l5a-auxiliary-field-existence"></a>

### L5a.4 Existence of the auxiliary fields K and F

Let g ∈ S_2(Γ_0(N)) be an elliptic newform and p ≥ 5 a prime of good ordinary reduction with ρ̄_g irreducible over G_ℚ. There exist an imaginary quadratic K satisfying (disc) (D_K odd, D_K ≠ −3), (Heeg) (every ℓ | N splits in K), (spl) (p splits in K) and (irr_K), and a real quadratic F with (i) p inert in F, (ii) D_F odd with every prime dividing D_F split in K, (iii) every ℓ | N inert in F if ℓ ≡ −1 mod p and split otherwise, (iv) (irr_M) for M = FK, (v) ρ̄_g|_{G_{F(ζ_p)}} irreducible, (vi) F ≠ ℚ(ζ_5)^+ if p = 5 (BCS Lemma 5.2.3). Moreover such M/F satisfies (pN, D_F) = 1, (N O_F, D_{M/F}) = 1, (spl_F) and (Δ), and n^- = O_F, so the hypotheses of Wan's theorem (L5w) other than Hypothesis 3.1.1 hold, and (H1)–(H3) follow from (v), (vi), the minimal-lift argument and (iii) (proof of BCS Prop. 5.2.1). Strengthen the selection by requiring K to ramify at a new odd prime outside D_F. Then M/F ramifies at a finite prime, so M is not contained in the narrow Hilbert class field of F; this supplies the stronger Δ+ used in L5w.

Retain the stated hypotheses; the conditions are independent splitting conditions satisfied by a positive proportion of quadratic fields.

The source is [BCS-v2](https://arxiv.org/pdf/2405.00270v2), Lemma 5.2.3 and proof, p. 10; conditions (i)–(vi) of Prop. 5.2.1, p. 9; proof of Prop. 5.2.1 (hypothesis checks), p. 10. Existence of K and F and the verification of Wan's hypotheses for M = FK.

The proof proceeds as follows. Since p ∤ N, conditions (i) and (iii) on F are independent splitting conditions; fix F with odd D_F. Similarly (spl), (Heeg) and (ii) hold for a positive proportion of K; choose one with (disc) and (irr_K). (irr_M) holds if FK is not in the splitting field of ρ_g|_{G_K}; if ρ̄_g|_{G_{F(ζ_p)}} is reducible, ρ̄_g|_{G_F} is induced from an index-two subgroup containing G_{F(ζ_p)}, which forces p = 5 and F = ℚ(ζ_5)^+. Check the hypotheses of BCS Thm 3.2.1: (ii) gives n^- = O_F; (H2) from the base change of a minimal modular lift (Wan's Thm 103); (H3) from (iii) ([L5w.13](#ac-l5w-selected-base-change-hypotheses)). After fixing F, choose a new odd prime q away from pND_F and require K to ramify at q. The finitely many local square-class conditions defining K are independent by the Chinese remainder theorem, including D_K≡1 or 5 mod 8 at 2. The resulting infinite squarefree discriminant classes still permit exclusion of the finitely many quadratic subfields causing residual reducibility. Ramification of K at q survives the unramified base change to F. This additional field-selection argument is required alongside the original BCS lemma; it is not a claim made in that lemma.

**Checks.**

- The strengthened selection includes a new ramified K-prime outside D_F, whose finite ramification proves the narrow-class-field exclusion. Omitting this clause recovers only the original BCS selection.
- HeegnerPointEulerSystems:HE.8b/auxiliary-quadratic-field-verification consumes this target (HE.8b comes after L5a); it is not a prerequisite here.
- The splitting tests include the prime 2 when 2 divides N. For an odd fundamental discriminant D, 2 splits when D≡1 (mod 8) and is inert when D≡5 (mod 8). The Jacobi-symbol criterion is used only at odd primes. The suggested integer predicates distinguish these cases.

This uses [L5w.13](#ac-l5w-selected-base-change-hypotheses), [L5w.1](#ac-l5w-fujiwara-instance), [NumberFieldArithmetic](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/NumberFieldArithmetic).

<a id="ac-l5a-greenberg-mu-vanishing"></a>

### L5a.5 Vanishing of the µ-invariant of the Greenberg function

Let g ∈ S_2(Γ_0(N)) be an elliptic newform with good reduction at p > 2 and K satisfying (disc), (Heeg), (spl) and (irr_K). Then µ(L^{Gr}_p(g/K)) = µ(L^{BDP}_p(g/K)) = 0 (BCS Prop. 4.2.2). Here L_p^{BDP} is BCS §2’s normalized BDP function, which already interpolates the squared quantity. The comparison of principal ideals in Prop. 4.2.2 introduces no additional square.

Retain the stated hypotheses; the projection comparison is CGS23 Prop. 1.4.5 (Lemma 2.4.4/Prop. 2.4.5 in a later version), which needs Rubin's main conjecture and the Hida–Tilouine input for the CM factor.

The source is [BCS-v2](https://arxiv.org/pdf/2405.00270v2), Prop. 4.2.2 and proof, p. 9. µ = 0 for L^{Gr} and L^{BDP}, from Hsieh's Theorem B and the CGS23 projection comparison.

The proof proceeds as follows. L^{BDP}_p(g/K) has µ = 0 by Hsieh's Theorem B (AutomorphicPadicLFunctions:L3h/theorem-b, through its BDP/Castella–Hsieh specialization). The projection of L^{Gr}_p(g/K) to Λ^{-,ur}_K generates the same ideal as L^{BDP}_p(g/K) by comparing interpolation properties (CGS23 Prop. 1.4.5); µ of a two-variable function is bounded by µ of a one-variable specialization.

**Checks.**

- Exported to HeegnerPointEulerSystems:HE.8b/primitive-greenberg-mu-vanishing; this is BCS's Proposition 4.2.2, not Theorem 4.2.1.

This uses AutomorphicPadicLFunctions L3h (`theorem-b`), AutomorphicPadicLFunctions L3h (`bdp-castella-hsieh-specialisation`), [L0.9](#ac-l0-hida-tilouine-anticyclotomic), PadicMeasuresIwasawaAlgebras L4 (`iwasawa-invariants`).

<a id="ac-l5a-two-variable-product-containment"></a>

### L5a.6 Burungale–Castella–Skinner's two-variable product divisibility

Let g ∈ S_2(Γ_0(N)) be an elliptic newform, p ≥ 5 a good ordinary prime, K satisfying (disc), (Heeg), (spl), (irr_K), and F a real quadratic field satisfying (i)–(vi) of [L5a.4](#ac-l5a-auxiliary-field-existence). Then (L^{PR}_p(g/K)·L^{PR}_p(g^F/K)) ⊇ ch_{Λ_K}(X_ord(g/K_∞))·ch_{Λ_K}(X_ord(g^F/K_∞)) in Λ_K, and (L^{Gr}_p(g/K)·L^{Gr}_p(g^F/K)) ⊇ ch_{Λ_K}(X_Gr(g/K_∞))·ch_{Λ_K}(X_Gr(g^F/K_∞)) in Λ^{ur}_K (BCS Prop. 5.2.1). Both containments are integral.

Retain the stated hypotheses; Wan's quartic-CM theorem (BCS Thm 3.2.1) is imported from L5w with its hypotheses discharged by [L5a.4](#ac-l5a-auxiliary-field-existence).

The source is [BCS-v2](https://arxiv.org/pdf/2405.00270v2), Prop. 5.2.1 and proof, pp. 9–10. The integral Perrin-Riou and Greenberg product containments over K from Wan's quartic-CM divisibility, Lemmas 5.1.1–5.1.2, Thm 4.1.3 and Prop. 4.2.2.

The proof proceeds as follows. Wan's theorem for M/F ([L5w.12](#ac-l5w-quartic-cm-divisibility)): (π_K(L_p(g^F/M))) ⊇ π_K(ch_{Λ_M}(X_ord(g/M_∞))). Lemmas 5.1.1–5.1.2 ([L5a.2](#ac-l5a-quartic-cm-selmer-restriction), [L5a.3](#ac-l5a-quartic-cm-l-function-factorization)) give the Perrin-Riou product containment in Λ_K ⊗ ℚ_p. [L5a.1](#ac-l5a-ordinary-two-variable-equivalence) (Cor. 4.1.4) converts it to the Greenberg product containment in Λ^{ur}_K ⊗ ℚ_p. µ(L^{Gr}_p(g/K)·L^{Gr}_p(g^F/K)) = 0 ([L5a.5](#ac-l5a-greenberg-mu-vanishing) for g and g^F), so the Greenberg containment holds integrally in Λ^{ur}_K; Cor. 4.1.4 again gives the integral Perrin-Riou containment.

**Checks.**

- Exported to AutomorphicCongruences:L5b (cyclotomic descent) and HeegnerPointEulerSystems:HE.8b (anticyclotomic endpoints) as the early product input; neither L5b's endpoint nor HE.8b's completed result is an input here.

This uses [L5a.2](#ac-l5a-quartic-cm-selmer-restriction), [L5a.3](#ac-l5a-quartic-cm-l-function-factorization), [L5a.1](#ac-l5a-ordinary-two-variable-equivalence), [L5a.5](#ac-l5a-greenberg-mu-vanishing), [L5a.4](#ac-l5a-auxiliary-field-existence), [L5w.12](#ac-l5w-quartic-cm-divisibility), [L5w.13](#ac-l5w-selected-base-change-hypotheses).

### Examples

Suppose a Greenberg analytic product has μ=0 and the rational product containment holds. At every height-one prime away from (ϖ) the valuation inequality is already known. At (ϖ) the analytic valuation is zero, and the characteristic valuation is nonnegative. Thus the containment holds integrally. This explains why μ=0 suffices without identifying Hilbert and elliptic periods integrally.

For odd fundamental discriminants, −7≡1 mod 8 and 13≡5 mod 8. Hence 2 splits in Q(√−7) and is inert in Q(√13); a Jacobi test with even denominator would not express these two local conditions. In the strengthened field selection, ramification of K at a new odd q∤D_F remains ramification in FK/F, since F is unramified there. It witnesses the narrow-Hilbert-class-field exclusion independently of the prescribed splitting at the finitely many primes dividing pN D_F.

### Dependencies

ArithmeticGaloisDuality R02.4 (`poitou-tate`), [L0.9](#ac-l0-hida-tilouine-anticyclotomic), [L0.3](#ac-l0-selmer-specialization-control), [L0.1](#ac-l0-sigma-primitive-selmer), [L5w.1](#ac-l5w-fujiwara-instance), [L5w.12](#ac-l5w-quartic-cm-divisibility), [L5w.13](#ac-l5w-selected-base-change-hypotheses), AutomorphicPadicLFunctions L3h (`bdp-castella-hsieh-specialisation`), AutomorphicPadicLFunctions L3h (`theorem-b`), AutomorphicPadicLFunctions L4, [L5a.1](#ac-l5a-ordinary-two-variable-equivalence), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`), PadicMeasuresIwasawaAlgebras L4 (`iwasawa-invariants`), SelmerIwasawaCohomology L2 (`selmer-structure-poitou-tate`), SelmerIwasawaCohomology L3 (`iwasawa-shapiro`), [NumberFieldArithmetic](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/NumberFieldArithmetic), [ProfiniteCohomology](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/ProfiniteCohomology) Layer 7.

## Layer L5b: Four twists and cyclotomic factor separation

<a id="ac-l5b-four-twist-lattice-dictionary"></a>

### L5b.1 The four quadratic twists on integral Tate lattices

For E/Q, distinct quadratic fields K imaginary and F real, and p>3 unramified in K and F, identify T_p(E^χ) with T_p(E)⊗χ integrally for χ∈{1,η_K,η_F,η_Kη_F}. Use the existing quadratic-twist point isomorphism and its character-equivariance, restrict to all p-power torsion and take the compatible inverse limit. Every twist has good ordinary reduction at p; its ordinary line is the transported line twisted by χ. The cyclotomic Iwasawa coefficient ring and reciprocal tautological action are the same for all four twists.

Assume E has good ordinary reduction at p; the quadratic discriminants are prime to p; all extensions and the algebraic closure embeddings are fixed. The inverse-limit transition maps and ordinary filtration are the actual Tate-module ones; no rational isogeny is substituted for an integral lattice equivalence.

The source is [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Proof of Theorem 1.1.2, p.12; Lemma 5.1.1, p.10. The four twists must satisfy Kato on their actual integral lattices. [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), §3.1.1–3.1.5, pp.16–19. Twisted coefficient convention used in Shapiro.

The proof proceeds as follows. Apply the pinned Tau Ceti point-group isomorphism with its quadratic character, then restrict to E[p^n] and check compatibility with multiplication by p. Pass to the inverse limit and verify the selected ordinary sublattice using unramified quadratic twisting at p. For the product character use composition of the two twists and the canonical integral scalar action; keep the character Galois restriction maps.

The intended arithmetic theorem name is `fourTwistLatticeDictionary`.

**Checks.**

- A p-power index in the lattice comparison would invalidate the integral endpoint and must not be discarded.
- The product character is the third quadratic subfield character, not the real base-change representation g_F.

This uses `WeierstrassCurve.quadraticTwistPointEquiv_map_eq_quadraticCharacter_smul_map` (Tau Ceti), [EllipticCurves](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/EllipticCurves) Layer 2, SelmerIwasawaCohomology L2.

<a id="ac-l5b-quadratic-selmer-decomposition"></a>

### L5b.2 Integral quadratic Selmer decomposition

For any finite extension of the cyclotomic tower in the chosen setting, restriction and the idempotents (1±c)/2 give Sel_ord(E/KQ∞)≅Sel_ord(E/Q∞)⊕Sel_ord(E^K/Q∞), on the discrete p-primary coefficients A_χ=T_p(E^χ)⊗_Zp Q_p/Z_p derived from the integral lattices, with the matched ordinary local conditions. Compact T_p(E^χ) itself is not used as a discrete Shapiro coefficient. The Pontryagin dual decomposition is Λ-linear. Apply it also to E^F and, when needed for the early torsion check, to the biquadratic compositum to obtain all four summands. For torsion duals, characteristic ideals multiply exactly. At away-p places retain the localization-image and primitive/imprimitive errors until the matching local-condition comparison proves them absent.

Assume p odd makes 2 a unit; coefficient ring O is the fixed p-adic integer ring. The ordinary sublattice is stable under the larger decomposition group and transports to both primes of K over p; the same Σ is pulled back from Q. The local condition is specified: BCS uses the locally trivial away-p condition; the inertia-kernel convention in SU requires a proved comparison or explicit Euler corrections.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Lemma 3.1.5, p.19; Lemma 3.2.5, p.22. Integral quadratic and cyclotomic-tower decompositions. [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Proof of Theorem 1.1.2, p.12. The decomposition used in four-factor descent.

The proof proceeds as follows. Apply ProfiniteCohomology Shapiro to the finite-level discrete p-primary coefficients, then pass through the compatible filtered direct limit. For the Iwasawa model use the discrete module T⊗Λ∨ with the reciprocal tautological action. The Selmer L2/L3 supplier supplies continuity, duality and global/local transition maps; do not invoke this discrete theorem on compact T_p(E) itself. Split the quadratic group ring using the integral ± idempotents, dualize, and use the Tate-twist lattice dictionary. Apply the existing characteristic-ideal multiplicativity theorem only after proving finiteness and torsion.

The intended arithmetic theorem name is `quadraticSelmerDecomposition`.

**Checks.**

- After inverting p the decomposition agrees with the rational representation decomposition.
- At p=2 the idempotents are unavailable; the theorem excludes that case.
- The compact Tate lattice and the discrete p-primary module are distinguished; discrete Shapiro is used only on the latter.

This uses [L5b.1](#ac-l5b-four-twist-lattice-dictionary), [ProfiniteCohomology](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/ProfiniteCohomology) Layer 7, SelmerIwasawaCohomology L3 (`kernel-control`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal-api-2`), SelmerIwasawaCohomology L2, SelmerIwasawaCohomology L3.

<a id="ac-l5b-cyclotomic-control"></a>

### L5b.3 Cyclotomic projection and characteristic inequality

For each of E and E^F over K, construct the map X_ord(K∞)/I−X_ord(K∞)→X_ord(KQ∞), where π+:Λ_K→Λ_Q and I−=ker π+. Under the actual no-invariants, ordinary inertia-quotient and primitive local-control hypotheses, prove the required isomorphism; otherwise retain the finite/pseudo-null correction with its divisor. In the exact case, π+(char_ΛK X)⊇char_ΛQ(X/I−X). This is a divisibility, not a general equality of specialized characteristic ideals. Use Kato’s cyclotomic torsion for the two twists and Nakayama with the finite dual to establish the torsion needed for the nonzero two-variable characteristic ideal.

Assume Λ_K≅O[[T+,T−]], Λ_Q≅O[[T+]] are normal domains with the actual continuous quotient map. The source control condition excludes a trivial subquotient of T* over the tower; its p-inertia quotient action factors through the cyclotomic group. Σ∪{p} contains every ramified prime for the imprimitive comparison. Every removed Euler factor is compared on both sides before passing back to primitive Selmer groups; specialization of the analytic/characteristic generator is nonzero. The displayed power-series rings are regular UFDs for the fixed coefficient DVR O. The specialization inequality concerns the principal characteristic generator; it does not extend to the arbitrary image of a divisorial ideal over a nonfactorial Hida branch.

The source is [SU](https://www.math.columbia.edu/~urban/eurp/MC.pdf), Proposition 3.2.8, Corollary 3.2.9(ii), Proposition 3.2.11, pp.23–24. Control and the correct direction of characteristic specialization. [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), §5.1 and proof of Theorem 1.1.2, pp.10–12. The projection used for descent.

The proof proceeds as follows. Apply the Selmer kernel-control theorem to global and local restriction maps, including the image of localization. Use SU 3.2.8 and 3.2.11 on the verified ordinary lattice; import derived control for correction complexes. Apply the Fitting-to-characteristic inequality of SU 3.2.9(ii) or its exact supplier implementation. Use the quadratic decomposition and early Kato torsion to prove the quotient dual torsion, then localized Nakayama to rule out positive generic rank of the two-variable dual. This does not import the completed cyclotomic equality.

The intended arithmetic theorem name is `cyclotomicControl`.

**Checks.**

- π+(char X) is not replaced by char(X/I−X) without an additional theorem.
- The zero extended characteristic ideal of a non-torsion module cannot be canceled.

This uses [L5b.2](#ac-l5b-quadratic-selmer-decomposition), SelmerIwasawaCohomology L3 (`kernel-control`), SelmerIwasawaCohomology L3 (`derived-control`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`), KatoEulerSystems L7 (`elliptic-ordinary-and-multiplicative-divisibility`), [L0.3](#ac-l0-selmer-specialization-control), [L0.2](#ac-l0-primitive-imprimitive-comparison).

<a id="ac-l5b-cyclotomic-analytic-factorization"></a>

### L5b.4 Period-normalized analytic quadratic factorization

For E/Q and imaginary quadratic K with odd discriminant, p split and all N-primes split, project the Perrin–Riou Rankin function to the cyclotomic line. With CGS’s normalization by deg(π_E)/c_E² and H_p(E), prove (π+L_PR(E/K))=(L_MSD(E/Q)L_MSD(E^K/Q)) in the integral cyclotomic coefficient ring when the analytic objects are integral, and in its p-inversion for the rational normalization. The relation is up to a Λ_Q-unit; its derivation tracks the discriminant character factor, the constant discriminant/twist-period scalar and the real-component factor, with p odd. Prove the analogous identity for E^F using its own Néron periods and primitive Euler factors.

Assume the modular parametrization π_E, Manin constant c_E, ordinary unit root α_p and Néron differentials of E and E^K are the actual objects used by CGS. Use a common coefficient extension containing the character values and required discriminant/period scalars, then descend by the supplier’s faithful coefficient comparison. All four primitive functions are nonzero. At E^F its level may acquire D_F²; those primes split in K, so its required Heegner and period comparison conditions still hold. Keep the actual period ratio, including the discriminant square root implicit in CGS Remark 1.2.3. In the selected split, prime-to-p case it contributes a p-adic unit; no exact equality of unscaled complex periods is assumed.

The source is [CGS-v1](https://arxiv.org/pdf/2303.04373v1), Definition 1.2.2, Remark 1.2.3, Proposition 1.2.4 and proof, pp.7–8. The actual Perrin–Riou to MSD normalization and cyclotomic product. [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Proof of Theorem 1.1.2, p.12. Apply analytic factorization to both quadratic-twist pairs. [CGS-v2](https://arxiv.org/pdf/2303.04373v2), Definition 2.2.2, Remark 2.2.3 and Proposition 2.2.4, pp.7–8. The same normalization and missing discriminant factor persist in the final preprint; the cyclotomic ideal identity requires unit tracking rather than the literally displayed complex period equality.

The proof proceeds as follows. Import the MSD/Rankin interpolation carriers; compare at finite characters of positive p-power conductor using complex quadratic factorization and the Gauss-sum identity. Use π_E*ω_E=c_Eω_f and integration under the finite map: the raw Petersson integral is deg(π_E)/c_E² times the raw Néron area. With CGS’s Ω_E/K, division by sqrt(|D_K|) also occurs, so its displayed identity misses that factor (E7). Track the resulting discriminant and twist-period scalars under the chosen p-adic embedding; they are units since p splits and avoids D_K. The real-component factor is a power of two. Use uniqueness of the bounded p-adic measure/interpolation on the stated domain, not bare Zariski density. Repeat for E^F with its own Manin constant, modular degree and Néron differential, matching every tame Euler factor. Descend a finite coefficient extension by faithful extension/contraction after the characteristic base-change comparison, not by the norm theorem for restriction of scalars.

The intended arithmetic theorem name is `cyclotomicAnalyticFactorization`.

**Checks.**

- There is no assumed canonical-period-over-F equals period-over-Q squared identity.
- Do not use a character interpolation identity before checking the functions lie in the same bounded/integral function space.

This uses [L5b.1](#ac-l5b-four-twist-lattice-dictionary), ModularSymbolsPadicLFunctions L1, ModularSymbolsPadicLFunctions L2, AutomorphicPadicLFunctions L5, PadicMeasuresIwasawaAlgebras L4, `Ideal.span_singleton_mul_left_unit` (Mathlib).

<a id="ac-l5b-four-factor-product-bound"></a>

### L5b.5 The early four-factor cyclotomic bound

For the auxiliary K,F supplied by L5a’s Lemma 5.2.3 contract, project its early integral ordinary product bound (L_PR(E/K)L_PR(E^F/K))⊇char(X_E/K∞)char(X_EF/K∞) to Λ_Q. The analytic factorization, Selmer decompositions and correctly oriented characteristic-control comparisons give ∏_{χ∈{1,η_K,η_F,η_Kη_F}}(L_MSD(E^χ/Q))⊇∏_χ char(X_Eχ/Q∞). The same assertion holds after p-inversion. This is the only reverse input used for factor separation; it is not an individual reverse inequality.

Assume all of L5a’s selected-field, minimality, μ and integral product-bound conditions are proved in that supplier; the Fourier/period/Euler normalization is matched here. The four cyclotomic duals are finite torsion and the four functions nonzero; the control and analytic comparison targets apply to E and E^F.

The source is [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Proposition 5.2.1, pp.11–12; proof of Theorem 1.1.2, p.12. The early product bound and its four-factor cyclotomic projection.

The proof proceeds as follows. Import the early Proposition 5.2.1 bound, independently of the Heegner endpoint; the μ upgrade belongs to L5a. Extend the product ideal through π+ using Ideal.map_mul, then apply the analytic identity. Use the two Selmer projection inequalities and quadratic multiplicativity to reach the four-factor characteristic product on the same ring.

The intended arithmetic theorem name is `fourFactorProductBound`.

**Checks.**

- HE.8b, Theorem 4.2.1 and the anticyclotomic main conjectures are not prerequisites.
- Record the product orientation: characteristic product is contained in the analytic product ideal.

This uses [L5a.6](#ac-l5a-two-variable-product-containment), [L5a.4](#ac-l5a-auxiliary-field-existence), [L5b.3](#ac-l5b-cyclotomic-control), [L5b.4](#ac-l5b-cyclotomic-analytic-factorization), `Ideal.map_mul` (Mathlib), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal-api-2`).

<a id="ac-l5b-rank-one-image-twist"></a>

### L5b.6 The rank-one image condition survives quadratic twisting

Let T=T_p(E), p odd, and σ∈G_Q(μ_p∞) satisfy T/(σ−1)T≅Z_p as Z_p-modules. Then every quadratic twist T⊗χ satisfies the same condition for some element of G_Q(μ_p∞). If χ(σ)=1 use σ. If χ(σ)=−1 use σ²: det ρ(σ)=1, the free rank-one cokernel forces ρ(σ) to be a nontrivial unipotent with unit off-diagonal in a suitable integral basis, and σ²−1 doubles that unit. The factor 2 is a unit. Hence one exact (im) hypothesis on E suffices for all four twists; residual surjectivity is only a stronger sufficient condition.

Assume the determinant is the cyclotomic character, so it equals 1 on the chosen group. T is free rank two over Z_p; the cokernel is free of rank one, rather than merely having rank one after tensoring with Q_p. χ takes values ±1 and p>2.

The source is [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Theorem 1.1.2(b), p.2; proof, p.12. The exact image condition used for the integral four-twist argument. [Kato](https://www.numdam.org/item/AST_2004__295__117_0.pdf), Theorem 17.4, p.273. The integral strengthening needs an integral lattice condition, not just rational rank.

The proof proceeds as follows. Use the direct-summand kernel/image consequence of the free cokernel and determinant one to choose an integral unipotent basis. Compute (1+N)²−1=2N, N²=0, on the same lattice. Use χ(σ²)=1 and invertibility of 2 to preserve the integral cokernel; pass through the existing twist-lattice equivalence.

The intended arithmetic theorem name is `rankOneImageQuadraticTwist`.

**Checks.**

- For A=[[1,p],[0,1]], the quotient T/(A−1)T is Z_p⊕Z/p and fails (im); A itself is invertible and has zero cokernel. Replacing p by a unit gives the required free rank-one quotient.
- For p=2 the squaring argument loses the unit and the target is not asserted.

This uses [L5b.1](#ac-l5b-four-twist-lattice-dictionary), KatoEulerSystems Layers 4 and 7.

<a id="ac-l5b-four-twist-kato-bound"></a>

### L5b.7 Kato’s four ordinary bounds with period and image conditions

For each E^χ in the selected set of four twists, apply the ordinary cyclotomic torsion and Euler-system bound on T_p(E^χ), with the MSD/Néron period normalization: (L_MSD(E^χ/Q))⊂char(X_Eχ/Q∞) after inverting p. Under (im) on E, use its twist stability ([L5b.6](#ac-l5b-rank-one-image-twist)) and prove `katoIntegralBound_im`: for T = T_p(E^χ) with p odd, E^χ[p] irreducible and (im), Kato's Euler system satisfies Rubin's Hyp(ℚ_∞, T), whose condition (i) is (im) and (ii) the residual irreducibility, so Rubin's Theorem II.3.3 (EulerSystemsAndKolyvaginSystems Layers 8.2 and 8.37) gives char(X_∞) | ind_Λ(c), and Kato's explicit reciprocity law turns this into (L_MSD(E^χ/ℚ)) ⊆ char(X_{E^χ/ℚ_∞}) in Λ. This obtains all four inclusions integrally. The general non-CM modular-form 17.4(3) hypotheses and the elliptic (im) refinement are distinguished. If the endpoint includes CM curves, import their separately proved rational elliptic-unit bound; never apply a non-CM theorem to them.

Assume p>3 good ordinary, residual E[p] irreducible; the four quadratic characters are unramified at p, so each twist is good ordinary and residual irreducible. Nonzero primitive analytic functions, compatible dual-form lattices and good period generators. Integral version: exact (im) on the original Tate lattice, not an assertion that every irreducible residual representation is surjective.

The source is [Kato](https://www.numdam.org/item/AST_2004__295__117_0.pdf), Theorem 17.4 and §17.5, pp.273–274; Theorem 12.5, pp.221–222. Rational torsion/divisibility, and integrality under (12.5.2), the SL₂(ℤ_p) condition of Theorem 12.5(4). BCS (5.4), p. 10, uses the integral divisibility under (im); the route through Rubin's Theorem II.3.3 is the one that needs only (im). [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Theorem 1.1.2 and its proof, pp.2,12. The elliptic (im) refinement used on all four factors.

The proof proceeds as follows. Check the four residual representations remain irreducible under scalar quadratic twisting and the actual integral Tate lattices match. Invoke the rational ordinary supplier, including the separate CM branch if applicable. For the integral case invoke the (im) refinement and the rank-one-twist theorem; preserve every period, bad-prime Euler factor and local-condition comparison. Use the analytic nonvanishing supplier before factoring characteristic generators.

The intended arithmetic theorem name is `fourTwistKatoBound`.

**Checks.**

- No HE.8b or completed main-conjecture equality is used as an upper bound.
- The upper bound must use the exact elliptic (im) condition and MSD/Néron normalization; a general SL₂-image bound with a p-power error does not give the asserted integral result.
- (im) is weaker than (12.5.2): a Borel-type image containing [[1,1],[0,1]] satisfies (im) (the quotient T/(σ−1)T is ℤ_p for σ that unipotent) but contains no conjugate of SL₂(ℤ_p); residual irreducibility is then a separate hypothesis of Hyp(ℚ_∞, T), and it is retained.

This uses KatoEulerSystems L7 (`ordinary-selmer-divisibility`), KatoEulerSystems L7 (`elliptic-ordinary-and-multiplicative-divisibility`), KatoEulerSystems L4 (`cm-exclusion-and-the-separate-treatment`), KatoEulerSystems L4 (`analytic-twist-nonvanishing`), EulerSystemsAndKolyvaginSystems Layers 8.2 and 8.37, [L5b.6](#ac-l5b-rank-one-image-twist), [L5b.4](#ac-l5b-cyclotomic-analytic-factorization).

<a id="ac-l5b-factor-separation"></a>

### L5b.8 Separating four characteristic factors

Over A=O[[Γ_Q]] or A[1/p], a noetherian normal UFD, let all X_χ be finite torsion, J_χ=char_A(X_χ) nonzero principal, and L_χ nonzero. Suppose (L_χ)⊂J_χ separately for each χ and ∏J_χ⊂(∏L_χ). Then J_χ=(L_χ) for every χ. At each height-one prime, each ord(L_χ)−ord(J_χ) is nonnegative and their sum is nonpositive; hence each is zero. Equivalently choose generators j_χ, write L_χ=j_χa_χ and conclude ∏a_χ is a unit, so each a_χ is a unit. This argument needs every individual upper inequality; the product bound alone cannot separate factors.

Assume all four factors lie in the same domain and use the same integral/rational coefficient extension and primitive normalizations. Torsion and nonvanishing have already been proved; principal characteristic ideals are supplied by the Iwasawa algebra owner. The integral claim uses integral inequalities at the prime (p) too; rational equality has no information there.

The source is [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Proof of Theorem 1.1.2, p.12. Nonnegative defects and factorwise equality.

The proof proceeds as follows. Import UFD characteristic ideals and their height-one lengths. If the analytic comparison uses a finite coefficient extension, request its faithful characteristic base-change and ideal-contraction theorem; the determinant norm after restriction of scalars is a different interface and cannot supply that theorem. Choose nonzero generators or work with the associated finite effective divisors; orient the inequalities correctly. Apply the four individual Kato inequalities and early product inequality; use normality/principality to conclude equality of ideals. The algebraic statement factorSeparation in Suggested.lean holds for any finite family of ideals J_i over a domain, without UFD or principality hypotheses on J_i: for x∈J_i multiply by the nonzero product of the other L_j; the product containment and cancellation give x∈(L_i). The UFD hypotheses above construct the arithmetic characteristic ideals and their divisors, rather than being needed for this final cancellation.

The intended arithmetic theorem name is `factorSeparation`.

**Checks.**

- A rational equality cannot be upgraded integrally without eliminating the p-primary defect.
- Test a product with factors p and p^−1 over the fraction field: without individual upper bounds a product equality gives no integral factor equality.

This uses [L5b.5](#ac-l5b-four-factor-product-bound), [L5b.7](#ac-l5b-four-twist-kato-bound), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`), PadicMeasuresIwasawaAlgebras L4.

<a id="ac-l5b-rational-cyclotomic-endpoint"></a>

### L5b.9 BCS’s rational cyclotomic theorem

For E/Q and good ordinary p>3 with E[p] irreducible as a G_Q-module, X_ord(E/Q∞) is finite Λ_Q-torsion and char_ΛQ(X)Λ_Q[1/p]=(L_p(E/Q))Λ_Q[1/p]. Here L_p is the MSD function with the actual Néron periods, and X is the Pontryagin dual of the classical p-primary Selmer group. Apply the auxiliary-field existence supplied by L5a, the four-factor product bound and Kato’s rational individual inequalities, then select the trivial character factor. No residual surjectivity or multiplicative-reduction prime is added.

Assume precisely p>3 good ordinary and residual irreducibility, plus the verified supplier conclusions used to construct the auxiliary fields and compare classical/ordinary Selmer conventions. CM and non-CM curves use the correct separately owned upper-bound route.

The source is [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Theorem 1.1.2(a), p.2; proof, p.12. The endpoint under irreducibility, after p-inversion.

The proof proceeds as follows. Choose K,F by the supplier’s existence theorem and verify all field/local hypotheses, including the new ramified K-prime refinement. Apply factor separation over Λ_Q[1/p] to the four finite torsion cyclotomic duals. Use the actual classical-Selmer versus ordinary-Galois-Selmer comparison, with primitive local conditions; descend coefficient scalars if enlarged. Export the equality to ModularIwasawaMainConjectures:L3, never import that consumer’s result back.

The intended arithmetic theorem name is `rationalCyclotomicEndpoint`.

**Checks.**

- It includes p=5; p=3 and supersingular reduction are outside scope.
- The statement remains rational even if an integral analytic object is separately available.

This uses [L5b.8](#ac-l5b-factor-separation), [L5a.4](#ac-l5a-auxiliary-field-existence), SelmerIwasawaCohomology L2, PadicMeasuresIwasawaAlgebras L4.

<a id="ac-l5b-integral-cyclotomic-endpoint"></a>

### L5b.10 BCS’s integral rank-one-image refinement

Under the rational endpoint hypotheses and (im): there exists σ∈G_Q(μ_p∞) with T_p(E)/(σ−1)T_p(E)≅Z_p as Z_p-modules, prove char_ΛQ(X_ord(E/Q∞))=(L_p(E/Q)) in Λ_Q itself. Apply the twist-stable (im) hypothesis and the integral Kato inequalities to all four factors, then separate them using the integral early product bound. Every p-power lattice, Euler and period discrepancy has been accounted for before equality. Residual surjectivity is not substituted for (im); its use is only as a sufficient implication if separately proved.

Assume exactly the preceding rational endpoint hypotheses and the free rank-one quotient condition on the integral Tate lattice. The early product bound, analytic factorization and all four Kato bounds are integral on the same lattice and Néron-normalized functions.

The source is [BCS-published](https://web.math.ucsb.edu/~castella/BCS-print.pdf), Theorem 1.1.2(b), p.2; proof, p.12. Integral equality under the exact image condition.

The proof proceeds as follows. Use rankOneImageQuadraticTwist, not rational lattice independence, for the four integral upper bounds. Apply factorSeparation in Λ_Q, including the height-one prime (p). Descend any coefficient extension by the faithful characteristic-ideal/analytic comparison supplier; export precisely this hypothesis-bearing endpoint to the consumer.

The intended arithmetic theorem name is `integralCyclotomicEndpoint`.

**Checks.**

- A cokernel with nonzero finite p-torsion fails the hypothesis.
- The theorem does not assume a canonical Hilbert period is the square of an elliptic period.

This uses [L5b.6](#ac-l5b-rank-one-image-twist), [L5b.8](#ac-l5b-factor-separation), [L5b.9](#ac-l5b-rational-cyclotomic-endpoint), PadicMeasuresIwasawaAlgebras L4.

### Examples

For a free rank-two Z_p lattice and σ represented by [[1,u],[0,1]], the cokernel of σ−1 is free of rank one exactly when u is a unit. Squaring replaces u by 2u. At p odd this preserves the free rank-one quotient and eliminates a negative quadratic character value. For u=p, the cokernel is Z_p⊕Z/p, so a rational rank-one check would incorrectly accept it. At p=2 squaring a unit u produces a nonunit and the argument fails.

At a fixed height-one prime let the four Kato defects ord(L_χ)−ord(J_χ) be d₁,d₂,d₃,d₄. Each is nonnegative. The reverse product bound says their sum is nonpositive, so every d_i is zero. If the individual bounds are omitted, J₁=(ϖ), J₂=(ϖ), L₁=ϖ², L₂=1, with the other two factors equal to 1, have equal products but unequal factors. At the prime (ϖ), the rational ring has forgotten these defects entirely. The generic ideal statement `factorSeparation` keeps all individual containments and all nonzero factors; it also permits the empty index type, where the conclusion is vacuous and both products are units.

### Dependencies

[L0.2](#ac-l0-primitive-imprimitive-comparison), [L0.3](#ac-l0-selmer-specialization-control), [L5a.4](#ac-l5a-auxiliary-field-existence), [L5a.6](#ac-l5a-two-variable-product-containment), AutomorphicPadicLFunctions L5, KatoEulerSystems Layers 4 and 7, KatoEulerSystems L4 (`analytic-twist-nonvanishing`), KatoEulerSystems L4 (`cm-exclusion-and-the-separate-treatment`), KatoEulerSystems L7 (`elliptic-ordinary-and-multiplicative-divisibility`), KatoEulerSystems L7 (`ordinary-selmer-divisibility`), ModularSymbolsPadicLFunctions L1, ModularSymbolsPadicLFunctions L2, PadicMeasuresIwasawaAlgebras L4, PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal`), PadicMeasuresIwasawaAlgebras L4 (`characteristic-ideal-api-2`), SelmerIwasawaCohomology L2, SelmerIwasawaCohomology L3, SelmerIwasawaCohomology L3 (`derived-control`), SelmerIwasawaCohomology L3 (`kernel-control`), `Ideal.map_mul` (Mathlib), `Ideal.span_singleton_mul_left_unit` (Mathlib), [EllipticCurves](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/EllipticCurves) Layer 2, [ProfiniteCohomology](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/ProfiniteCohomology) Layer 7, `WeierstrassCurve.quadraticTwistPointEquiv_map_eq_quadraticCharacter_smul_map` (Tau Ceti).

## Layer L5: The ordinary elliptic-curve aggregate

<a id="ac-l5-ordinary-elliptic-refinement-aggregate"></a>

### L5.1 The ordinary elliptic-curve refinement: aggregate of the endpoints

For an elliptic curve E/ℚ and a prime p of good ordinary reduction, stage L5 collects, without a second proof, the two reverse-divisibility endpoints planned in this roadmap: (a) Burungale–Castella–Skinner's cyclotomic theorem — for p > 3 with E[p] irreducible, X_ord(E/ℚ_∞) is Λ-torsion and char_Λ X_ord(E/ℚ_∞) = (L_p(E/ℚ)) in Λ ⊗ ℚ_p, with equality in Λ under the rank-one image condition (im) (BCS Thm 1.1.2), proved in L5b from L5a's early product input and four Kato bounds; and (b) Fouquet–Wan's cohomological theorem at good ordinary points ([L4.5](#ac-l4-fw-pointwise-theorem), through [L2.13](#ac-l2-fw-ordinary-reverse-bound)). The scalar ordinary main conjecture with canonical periods, the curve-to-form lattice and Manin-constant transport and the final assembly are ModularIwasawaMainConjectures L1–L3's, which import the endpoints directly from L5b and L4.

The hypotheses are those of each endpoint; nothing is added or removed here. L5 is an aggregate; ModularIwasawaMainConjectures L3 consumes the L5b endpoint directly.

The source is [BCS-v2](https://arxiv.org/pdf/2405.00270v2), Thm 1.1.2 and Remark 1.1.3, p. 2; proof of Thm 1.1.2, p. 10. The rational and integral cyclotomic theorems and their proof from Prop. 5.2.1 and Kato's bounds. [FW](https://arxiv.org/pdf/2107.13726v3), Thm 1.6, Thm 1.7, pp. 6–7. The ordinary and pointwise theorems.

The proof proceeds as follows. List the endpoints with their owners: [L5b.9](#ac-l5b-rational-cyclotomic-endpoint) and [L5b.10](#ac-l5b-integral-cyclotomic-endpoint) for (a), [L4.5](#ac-l4-fw-pointwise-theorem) for (b). Record that the BCS rational/integral distinction survives: (a) is in Λ ⊗ ℚ_p without (im) and in Λ with (im).

**Checks.**

- The endpoint comparison requires opposite divisibilities on the same integral objects as Kato's; no hidden 'assume the divisibility' field; the BCS rational/integral distinction kept.

This uses [L5b.9](#ac-l5b-rational-cyclotomic-endpoint), [L5b.10](#ac-l5b-integral-cyclotomic-endpoint), [L4.5](#ac-l4-fw-pointwise-theorem), [L2.13](#ac-l2-fw-ordinary-reverse-bound), [L5a.6](#ac-l5a-two-variable-product-containment).

### Examples

The rational endpoint permits a defect supported at (ϖ), since p is invertible there. For example, (ϖ) and the unit ideal become equal after adjoining 1/p although they differ over O[[T]]. The integral endpoint removes precisely this possibility using (im) and the four integral Kato bounds. The aggregate retains the distinction and does not infer an integral conclusion from its rational branch.

### Dependencies

[L2.13](#ac-l2-fw-ordinary-reverse-bound), [L4.5](#ac-l4-fw-pointwise-theorem), [L5a.6](#ac-l5a-two-variable-product-containment), [L5b.10](#ac-l5b-integral-cyclotomic-endpoint), [L5b.9](#ac-l5b-rational-cyclotomic-endpoint).

## Downstream consumers

ModularIwasawaMainConjectures L1–L4 consumes the SU, FW and BCS endpoints and owns their scalar modular-form and elliptic-curve assembly. HeegnerPointEulerSystems HE.8b consumes the early L5a product bound; its final anticyclotomic theorem is never an input to L5b. RankZeroOneBSD BSD.6a–BSD.7a consumes the shared CLW and Beilinson–Flach results for its own applications. Neither a BSD statement nor a supersingular endpoint is proved here.

## References

All statements are in the conventions of the specified version. SU uses manuscript pagination; BCS-v2 and BCS-published are distinguished. CLW-addendum supersedes the original simultaneous-unit auxiliary selection.

- **SU**: Christopher Skinner and Eric Urban. [The Iwasawa main conjectures for GL2](https://www.math.columbia.edu/~urban/eurp/MC.pdf). Inventiones mathematicae 195 (2014), 1–277; locators refer to the final author manuscript, dated 21 December 2012, 226 pages.

- **FW-v3**: Olivier Fouquet and Xin Wan. [The Iwasawa main conjecture for universal families of modular motives](https://arxiv.org/pdf/2107.13726v3). arXiv:2107.13726v3 (103 pages); page numbers are those printed, which equal the PDF pages.

- **CLW-v1**: Francesc Castella, Zheng Liu and Xin Wan. [Iwasawa–Greenberg main conjecture for non-ordinary modular forms and Eisenstein congruences on GU(3,1)](https://arxiv.org/pdf/2109.08375v1). arXiv:2109.08375v1 (83 pages); page numbers are the PDF pages.

- **NAK-v2**: Kentaro Nakamura. [Zeta morphisms for rank two universal deformations](https://arxiv.org/pdf/2006.13647v2). arXiv:2006.13647v2, 109 pages; published Inventiones mathematicae 234 (2023), 171–290. ArXiv v2 and published §5 numbering are distinguished below.

- **BCS-v2**: Ashay Burungale, Francesc Castella and Christopher Skinner. [Base change and Iwasawa main conjectures for GL2](https://arxiv.org/pdf/2405.00270v2). arXiv:2405.00270v2 (12 pages).

- **CW-v1**: Francesc Castella and Xin Wan. [The Iwasawa main conjectures for GL2 and derivatives of p-adic L-functions](https://arxiv.org/pdf/2001.03878v1). arXiv:2001.03878v1 (33 pages).

- **Wan-2020**: Xin Wan. [Iwasawa main conjecture for Rankin–Selberg p-adic L-functions](https://arxiv.org/pdf/1408.4044v5). arXiv:1408.4044v5 (15 September 2019, 100 pages); published in Algebra & Number Theory 14 (2020). Cited as Wan20 by CLW and as \[126\] by FW.

- **CLW-addendum**: Francesc Castella, Zheng Liu and Xin Wan. [Addendum to Iwasawa–Greenberg main conjecture for non-ordinary modular forms and Eisenstein congruences on GU(3,1)](https://web.math.ucsb.edu/~castella/CLW-addendum.pdf). Six-page author-hosted addendum, accessed 19 October 2026; its theorem numbers are separate from CLW-v1.

- **BCS-published**: Ashay Burungale, Francesc Castella, Christopher Skinner. [Base Change and Iwasawa Main Conjectures for GL2](https://web.math.ucsb.edu/~castella/BCS-print.pdf). IMRN 2025(8), rnaf082, published author-hosted copy, 15 pages

- **Wan-2015**: Xin Wan. [The Iwasawa main conjecture for Hilbert modular forms](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/CEF44E686A47C92CDAAAC4BA361E9CB5/S205050941500016Xa.pdf/the-iwasawa-main-conjecture-for-hilbert-modular-forms.pdf). Forum of Mathematics, Sigma 3 (2015), e18, 95 pages, published open-access PDF

- **Fujiwara**: Kazuhiro Fujiwara. [Deformation rings and Hecke algebras in the totally real case](https://arxiv.org/pdf/math/0602606v2). arXiv:math/0602606v2, 25 July 2006, manuscript pagination

- **CGS-v1**: Francesc Castella, Giada Grossi, Christopher Skinner. [Mazur’s main conjecture at Eisenstein primes](https://arxiv.org/pdf/2303.04373v1). arXiv:2303.04373v1, 8 March 2023, 33 pages; only the independently applicable analytic factorization is used

- **Kato**: Kazuya Kato. [p-adic Hodge theory and values of zeta functions of modular forms](https://www.numdam.org/item/AST_2004__295__117_0.pdf). Astérisque 295 (2004), pp.117–290, published Numdam scan

- **CGS-v2**: Francesc Castella, Giada Grossi, Christopher Skinner. [Mazur’s main conjecture at Eisenstein primes](https://arxiv.org/pdf/2303.04373v2). arXiv:2303.04373v2, 15 October 2025, final preprint; normalization comparison only


- **KLZ17**: Guido Kings, David Loeffler and Sarah Livia Zerbes. [Rankin–Eisenstein classes and explicit reciprocity laws](https://intlpress.com/site/pub/files/_fulltext/journals/cjm/2017/0005/0001/CJM-2017-0005-0001-a001.pdf). Cambridge Journal of Mathematics 5(1) (2017), 1–122, DOI 10.4310/CJM.2017.v5.n1.a1.
- **LLZ14**: Antonio Lei, David Loeffler and Sarah Livia Zerbes. [Euler systems for Rankin–Selberg convolutions of modular forms](https://annals.math.princeton.edu/wp-content/uploads/annals-v180-n2-p06-p.pdf). Annals of Mathematics 180(2) (2014), 653–771, DOI 10.4007/annals.2014.180.2.6.

- **HT93**: Haruzo Hida and Jacques Tilouine. [Anti-cyclotomic Katz p-adic L-functions and congruence modules](https://www.numdam.org/article/ASENS_1993_4_26_2_189_0.pdf). Annales scientifiques de l'École Normale Supérieure 26(2) (1993), 189–259.
- **HT94**: Haruzo Hida and Jacques Tilouine. [On the anticyclotomic main conjecture for CM fields](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0117/LOG_0011.pdf). Inventiones mathematicae 117 (1994), 89–147; Göttingen digitization, accessed 20 October 2026. The PDF has an added cover page, so printed p.89 is PDF p.2.
- **Hid91**: Haruzo Hida. [On p-adic L-functions of GL(2) × GL(2) over totally real fields](https://aif.centre-mersenne.org/item/10.5802/aif.1258.pdf). Annales de l'Institut Fourier 41(2) (1991), 311–391.
- **Hid06**: Haruzo Hida. [Anticyclotomic main conjectures](https://ems.press/content/book-chapter-files/27475?nt=1). Documenta Mathematica, Extra Volume Coates (2006), 465–532.
- **Paškūnas 2016**: Vytautas Paškūnas. [On 2-dimensional 2-adic Galois representations of local and global fields](https://msp.org/ant/2016/10-6/ant-v10-n6-p06-p.pdf). Algebra & Number Theory 10(6) (2016), 1301–1358.
- **Vatsal**: Vinayak Vatsal. [Special values of anticyclotomic L-functions](https://personal.math.ubc.ca/~vatsal/research/mew3.pdf). Duke Mathematical Journal 116(2) (2003), 219–261; locators here use the author copy's printed pages.
- **Pottharst**: Jonathan Pottharst. [Analytic families of finite-slope Selmer groups](https://msp.org/ant/2013/7-7/ant-v7-n7-p02-p.pdf). Algebra & Number Theory 7(7) (2013), 1571–1612.
- **Betina–Williams**: Adel Betina and Chris Williams. [Arithmetic of p-irregular modular forms: families and p-adic L-functions](https://arxiv.org/pdf/2011.02331v2). arXiv:2011.02331v2; locators refer to this version.
