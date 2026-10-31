# Roadmap: p-adic families, part II — higher Hida and Coleman theory

**Summary.** Extend PadicFamilies from modular forms to supported coherent cohomology in every degree. Construct perfect ordinary Iwasawa complexes for Siegel varieties in every genus, with derived arithmetic control, finite Hecke image and Serre duality. Construct higher Coleman cohomology for locally quasi-split abelian-type data, analytic weight families, finite perfect slope complexes, cohomological eigenvarieties and maximal-dimensional deformation of interior eigenpackets. The ordinary/finite-slope comparison gives all-genus rational amplitude and sharp Siegel bounds; the singular Klingen construction gives a separate one-variable complex in degrees zero and one.

## Scope and ownership

PadicFamilies ends with ordinary modular-curve families and the general finite-slope/spectral infrastructure, including §§2a.15–2a.16 for compact complexes and intrinsic annihilator support. This Part II owns their higher supported automorphic applications and cohomological Hecke gluing. Integral higher Hida theory is Siegel theory for every genus and every prime, using cofinal levels at p=2; Coleman theory uses quasi-split abelian-type data, including data without an ordinary locus.

The following objects are imported from their existing owners; their exact hypotheses and missing extensions are specified under Exact supplier contracts.

- Mathlib supplies scalar multiplication of linear endomorphisms, integer powers, the ordinary derived-category carrier, condensed modules and its stated solidity predicate. Scalar renormalization is a convention on that existing operation.
- ShimuraData §§3.8–3.13 supplies the compact dual, Kostant representatives and opposition; §§5.5–5.11 supplies the C₂ coordinate conventions. AutomorphicFormsOnReductiveGroups §6.7 supplies Siegel coherent chambers. Layer 1 extends their cohomological dictionary to general abelian-type data, including the Serre-dual coefficient formula.
- AutomorphicBundles B1.4–B1.5 and B1.9 supplies de Rham frame torsors; B2.3, B3.2–B3.4, B3.10 and B3.general.1 supplies the algebraic, integral and boundary coefficients. PELModuli M5.5–M5.6 supplies the split-unitary datum; it is not supplied by the rank-one unitary example of AutomorphicBundles B4.17.
- OverconvergentAutomorphicForms §§0.4, 8.6–8.7 owns analytic induction, Bruhat coefficient and shifted distribution families, coefficient maps, torsor descent and its finite-flat/projective-Banach comparisons. Layer 6 starts with their normalized Hecke action and supported cohomology. The locally analytic BGG exactness needed for this application is a target in Layer 6.
- CompletedCohomologyPartII §§3.11–3.12 owns the admissible category, continuous function/measure duality, the diagonal Iwasawa realization and reconstruction. Layer 4 proves admissibility for the actual Igusa tower and applies that functor; it does not rebuild the generic anti-equivalence.
- IntegralHeckeAndGaloisDeterminants §§2.1, 2.3 supplies bounded-finite derived Hom, finite action images and Fitting ordinary parts. Its finiteness applies even when the finite cohomology modules are nonprojective; Layer 7 proves the compatible cohomological gluing. ResolutionOfSingularitiesCharacteristicZero §6.3 supplies separation of two Cartier divisors by their ideal-sum blow-up on any scheme; Layer 3 and Layer 8 apply it to the degree divisors.
- AutomorphicBundlesPartII IC.2, IC.3 and IC.5 is the owner of generic equivariant coherent models, correspondence composition/base change/transpose, the two partial-support orders and contracted support filtrations, and formally subcanonical relative vanishing. Their precise unsupplied enhancements are supplier gaps below. Layer 2 owns the solid scheme operations and dynamic ordinary theorems, not a second construction of these coherent correspondences.
- PadicFamilies §§2a.8–2a.14 owns the eigenvariety of a Banach module with a compact operator, and §§2a.15–2a.16 the spectral variety of a compact endomorphism of a complex with its annihilator support and the local constancy of finite-slope Euler characteristics; LocallyAnalyticDistributions §4.16 owns finite perfect slope complexes and their base change. §7.1 differs from PadicFamilies §2a.12 in gluing cohomology of complexes in all degrees, signs and boundary variants over characters of the whole torus; §9.6(3) is the slope-zero instance of the Euler-characteristic statement of §2a.16.
- AutomorphicBundles B3.BGG.1 owns the algebraic relative BGG resolution in type C₂ of an algebraic representation by induced modules, with Kostant cohomology, and LieHighestWeight Layer 3 the Verma modules and enveloping-algebra maps. §6.5 differs: it is the resolution of locally analytic induction from the analytic subgroup M₁, with its locally constant factor V_sm,1 and its finite-slope comparison.
- SmoothRepresentationsOfLocalGroups §SR.1.4 owns the positive Klingen Hecke algebra of GSp₄ and §SR.4.5 the spherical Satake parameters; it assigns the Klingen refinement computations to other roadmaps, and §9.5 is that computation for an isolated eigenvalue.

The scope does not include a general integral Hodge/PEL higher Hida theorem, the genus-at-least-three integral bound of BP-Hida Conjecture 5.6.1, or BP-Coleman Conjectures 5.9.2/6.8.1 on full general noncompact cohomology. The proved all-genus rational bound, the sharp interior theorem and the sharp Siegel comparison are targets. Layer 2's scheme operations have finite-type-over-ℤ hypotheses; six operations over larger noetherian bases are outside this scope. The Klingen partial-ordinary complex and the full-torus Borel complexes are distinct objects; no comparison between them is asserted.

## Conventions

For Layers 5–7, let (G,X) be an abelian-type Shimura datum with G/ℚ_p quasi-split. Choose a rational Borel B and torus T and a finite splitting field F/ℚ_p defining μ, P_μ and coefficient representations. Fix neat tame level K^p, compatible smooth admissible toroidal fans and sufficiently deep Iwahori-decomposed K_(p,m,b), m≥b≥0 and m>0. Retain the finite characters and cyclotomic factors required for the actual torsor reductions. Coefficients factor through the supplied rank quotient Gʳ=G/Zᵣ(G) and Tʳ. Use T^c=T/Z_s only through the supplied CM-split-centre identification Tʳ≃T^c and its quotient map (OverconvergentAutomorphicForms §8.6).

For Layers 3–4 and 8 take G=GSp₂g/ℚ, g≥1, hyperspecial level at p, neat prime-to-p level and compatible normal integral toroidal models; d=g(g+1)/2. Polarized ordinary Igusa quotients use cofinal decomposable P-levels. At p=2 retain the source cofinal subgroup construction, rather than a Levi splitting. The Klingen hypotheses are stated in Layer 9 separately. Layer 2 uses separated schemes of finite type over ℤ and Artinian coefficient fibres A=ℤ/p^s with their finite flat coefficient extensions.

The boundary parameter ε is 0 for the canonical extension and 1 for the subcanonical extension with −D. Bruhat partial support is independent of ε. Cohomological complexes have H^i(C[n])=H^(i+n)(C). The top-form duality pairs degree i with d−i after the canonical and boundary twists. Tensor products in control are derived. Perfect amplitude [a,b] means a finite-projective representative in those degrees; cohomology of a perfect complex need not be flat.

The two support orders from the coherent-correspondence contract are K+−(F)=RΓ(Xbar,j+_*j−_!F) and K−+(F)=RΓ(Xbar,i−_!i+_*F), for the two open factorizations determined by D+,D−. Their comparison has direction K−+→K+−. For a coherent extension and locally principal boundaries the respective formulas are Rlim_(n−) colim_(n+) RΓ(F(n+D+−n−D−)) and colim_(n+) Rlim_(n−) RΓ(F(n+D+−n−D−)) (BP-Hida Corollary 2.3.11, p. 17). The two limit orders are not interchanged before ordinary localization.

Ordinary means the integral solid localization for a specified operator and integral subring, with its proved finite Fitting comparison. Finite slope is the union of finite nonzero-eigenvalue windows. Algebraically inverting p on a rational complex retains positive slopes and does not define the integral ordinary direct factor. Normalize v_p(p)=1. Scalar rescaling is the existing operation p^(−a) • U on a ℚ_p-linear endomorphism, and replaces a nonzero eigenvalue's slope s by s−a (BP-Coleman §5.14.2, p. 141; §6.5.4, p. 160).

**Checks.**

- With D=∅ the canonical and subcanonical coefficients agree. With both partial boundaries empty, K−+=K+−=RΓ; with only D+ present the positive twists give j_*, and with only D− present the negative-twist inverse limit gives j_!.
- On A=ℤ/p², multiplication by p has square zero and ordinary part zero. On ℚ_p the same scalar is invertible and belongs to a nonzero finite-slope window. These give different objects.
- At p=3, scalar rescaling of identity with a=2 is 1/9, with a=−1 is 3, and with a=0 is 1. Rescaling by 2 then −1 is 1/3, agreeing with a=1; p≠0 is required for the integer-power identity.
- For a two-term finite complex A→A in degrees zero and one with zero differential and d=1, duality with target A[−1] exchanges the two degrees. For d=0 on a point the pairing is multiplication A×A→A.

## Exact supplier contracts

### From Mathlib

At the manifest pins use `Module.End` in Mathlib/Algebra/Module/LinearMap/End.lean:32, with its semiring/additive-monoid/module assumptions; `zpow_sub₀` in Mathlib/Algebra/GroupWithZero/Units/Basic.lean:399, with nonzero base in a group with zero; and `DerivedCategory` in Mathlib/Algebra/Homology/DerivedCategory/Basic.lean:87, the localization of an abelian category's cochain complexes at quasi-isomorphisms with its `HasDerivedCategory` localization instance. Use `CondensedMod` in Mathlib/Condensed/Module.lean:40 for sheaves of R-modules on CompHaus with the coherent topology, and its abelian instance at line 42. `CondensedMod.IsSolid` in Mathlib/Condensed/Solid.lean:83 inverts the profinite solidification maps; its documentation at lines 74–81 limits this direct predicate to finite-type ℤ-algebras and prescribes polynomial restriction for a general ring. It is not a relative analytic localization theorem.

### From Tau Ceti

The ordinary algebraic and ringed-site interfaces re-exported through the pinned Mathlib import are used through their native carriers. This design needs no additional Tau Ceti declaration beyond those carriers; solid derived tensors, Shimura geometry and supported automorphic cohomology are specified as targets or supplier contracts below.


### From TauCetiRoadmap.AdicSpacesPartIII

- §R3.1: Finite coherent affinoid acyclicity.
- §R3.4: Coherent quasi-Stein Theorems A and B and dense Banach inverse-sequence exactness.
- §R3.6: Relative compactness, completely continuous restrictions and proper coherent cohomology.
- §R3.8: Finite locally free trace and pull–identify–trace.

What AdicSpacesPartIII must provide (gap:projective-banach-cohomology): §§R3.4, R3.6 — Extend coherent quasi-Stein cohomology to locally projective Banach coefficients on finite quasi-Stein covers, with compact restrictions, the finite-dimensional projected-lattice lemma and bounded-p-torsion integral Čech comparison of BP-Coleman §§2.4–2.6 and Lemma 5.9.10.


### From TauCetiRoadmap.AdicSpacesPartIV

- §F1.10: Coherent support triangles and dagger Serre duality over spherically complete fields.

What AdicSpacesPartIV must provide (gap:banach-support-duality): §F1.10 — Extend the coherent dagger Serre pairing to complementary-support compact-type LB/Fréchet coefficient systems over finite extensions of ℚ_p, using Ω^d in degree d and finite-slope perfect pairings, as in BP-Coleman §2.7.


### From TauCetiRoadmap.AutomorphicBundles

- §B1.4: Tensor-preserving de Rham frame torsor.
- §B1.5: Filtered frame reduction.
- §B1.9: Abelian-type canonical principal bundle.

- §B2.3: Highest-weight labels and algebraic coefficient representations.
- §B3.10: Integral canonical coefficients under its good-prime PEL hypotheses.
- §B3.2: Canonical toroidal extension.
- §B3.4: Subcanonical extension and the boundary twist.
- §B3.general.1: General-data canonical automorphic extensions.
- §B4.10: GL₂ Hodge-line coefficient convention.
- §B4.16: Siegel Schur coefficient Sym^kω⊗det(ω)^r with highest weight (k+r,r).
- §B5.1: Finite locally free trace.
- §B5.10: Hecke section operators; higher-degree actions use the coherent-correspondence gap.


### From TauCetiRoadmap.AutomorphicBundlesPartII


What AutomorphicBundlesPartII must provide (gap:coherent-correspondences): §IC.3 — Supply coherent correspondence composition, Tor-independent base change, transpose and the two partial-support orders with twist formulas, completion triangles and equivariant closed-support filtrations, including the solid/discrete enhancement required by BP-Hida §§2.2–2.3 and Proposition 2.9.9.

What AutomorphicBundlesPartII must provide (gap:equivariant-coherent-models): §IC.2 — Supply finite perfect group-ring models for flat coherent coefficients on finite étale abelian covers, with derived coefficient change and deck descent as in BP-Hida Lemma 2.6.11, without dividing by the group order.

What AutomorphicBundlesPartII must provide (gap:pel-subcanonical-vanishing): §IC.5, relative-subcanonical-vanishing — Supply the formally subcanonical chart criterion and toroidal-to-minimal relative vanishing on the normalized Siegel and Klingen models and their finite-coefficient thickenings used in the ordinary and two-affine-cover arguments.

What AutomorphicBundlesPartII must provide (gap:abelian-subcanonical-vanishing): §IC.5, relative-subcanonical-vanishing (abelian-type extension) — Extend the PEL formally subcanonical vanishing to abelian-type toroidal-to-minimal maps and the locally trivialized projective Banach coefficient situation of BP-Coleman Theorem 4.1.7 and Lemma 6.6.2 with its bounded-torsion reductions.


### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups

- §6.7: coherentChambers for GSp₂g; Layer 1 extends the cohomological dictionary to general abelian-type data.


### From TauCetiRoadmap.CompletedCohomologyPartII

- §3.11: Admissible integral category with continuous regular-function terms.
- §3.12: Admissible–perfect anti-equivalence, continuous diagonal realization and inverse-action reconstruction.


### From TauCetiRoadmap.DeformationAndDerivedPatchingAlgebra

- §7.1: Native homological/cohomological Tor comparison.
- §7.10: Coefficient hyper-Tor with its actual abutment.
- §7.3: Minimal finite free representatives and residual detection.
- §7.5: Complete flat models.
- §7.6: Signed perfect duality.
- §7.8: Completion of finite derived Hom.


### From TauCetiRoadmap.HodgeTateAndCanonicalSubgroups


What HodgeTateAndCanonicalSubgroups must provide (gap:siegel-ordinary-igusa): §5.1 (Siegel continuation) — Supply full polarized ordinary Siegel Igusa towers in every genus with cofinal decomposable P-levels, cyclotomic action, toroidal quotients and de Rham reduction, including the cofinal p=2 construction.

What HodgeTateAndCanonicalSubgroups must provide (gap:klingen-height-one-igusa): §5.1 (height-one continuation) — Supply the Klingen height-one multiplicative tower on the p-rank-at-least-one locus, its ℤ_p× Igusa torsor, and affine étale nonfinite transitions with the prescribed toroidal quotient compatibility.


### From TauCetiRoadmap.IntegralHeckeAndGaloisDeterminants

- §2.1: HeckeImage.derived_hom_finite and finiteness of the actual action image for bounded complexes with finite cohomology, without projective dimension assumptions.
- §2.3: Fitting ordinary parts and operator localization under its stated finiteness hypotheses.


### From TauCetiRoadmap.LocallyAnalyticDistributions

- §3.3: Mellin transform and compact character-space input.
- §4.16: Compact homotopy actions, finite perfect slope complexes, cohomology slope comparison and derived slope base change.
- §4.17: Relative torus slope order and its central-component condition.


### From TauCetiRoadmap.OverconvergentAutomorphicForms

- §0.4: Analytic induction and bounded-open-disc distribution families over arbitrary finite-type affinoids.
- §8.6: Rank-quotient toroidal coefficients with their actual effectivity and twist hypotheses.
- §8.7: Bruhat coefficient and shifted distribution families, algebraic and finite-character maps, local projectivity under its finite-flat trivializing-cover hypothesis (supplied there in the Hodge-type pregood case with perfect Σ) and all-degree analytic/étale comparison on finite quasi-Stein unions. For general abelian-type data the trivializing-cover premise is proved in §6.1a.


### From TauCetiRoadmap.PELModuli

- §M2.8: Good-prime representability and smoothness.
- §M2.9: Universal polarized abelian scheme at neat level.
- §M5.1: Siegel PEL data.
- §M5.2: Siegel moduli.
- §M5.5: Unitary signature (n,1) PEL data.
- §M5.6: Unitary examples.


### From TauCetiRoadmap.PadicFamilies

- §2a.15: Compact-representative slope charts for bounded property-(Pr) complexes.
- §2a.16: the spectral variety of a compact endomorphism of a bounded projective Banach complex, its annihilator support, representative independence and the finite-slope Euler-characteristic local constancy at rational slopes; finite Hecke images use IntegralHeckeAndGaloisDeterminants §2.1.
- §§2a.8–2a.14 build the eigenvariety of a single Banach module with a compact operator. §7.1 differs: it glues the cohomology of bounded complexes in all degrees, both signs and both boundary variants, over characters of the whole torus, and so uses §§2a.15–2a.16 rather than the single-module gluing.
- §0a.24: The locally finite derived operator with compatible coefficient reductions.
- §0a.25: The ordinary projector on locally finite complexes after local finiteness is established.
- Layer 0: Modular-curve degree-zero ordinary families and arithmetic control.
- Layer 0a: Finite/profinite and locally finite derived ordinary projectors.


### From TauCetiRoadmap.PadicMeasuresIwasawaAlgebras

- §1.1: Finite coefficient joint coordinates.
- §1.7: Continuous torus measures and completed group algebra comparison.


### From TauCetiRoadmap.PerfectoidShimuraVarieties

- §4.5: Minimal perfectoid towers of pre-abelian data.
- §6.12: Analytic level groups and Iwahori decompositions.
- §6.13: Bruhat cell tubes.
- §6.13a: Finite-level Bruhat domains.
- §6.14: Actual analytic reductions of the Levi torsor.
- §6.15: Hecke maps with common cone refinements.
- §6.3: Toroidal tower diamond and its Hodge–Tate map.
- §6.8: Abelian-type minimal period map.
- §3.13: Hodge-type affinoid basis with affinoid perfectoid preimages.
- §6.4: The Hodge-type cover and Lovering's B₁ of an abelian-type datum.
- §6.5: Fibre products of torsors and the de Rham torsor of B₁.
- §6.6: Connected towers and the finite descent group Δ.
- §6.7: Finite quotients of connected towers with invariant pregood covers.
- §6.9: The Levi torsor of an abelian-type datum as a Δ-quotient from its Hodge cover.

What PerfectoidShimuraVarieties must provide (gap:abelian-affinoid-basis): §§3.13, 6.8 — Extend the Hodge-type affinoid basis to classical flag points after abelian-type descent, with the finite-level and toroidal comparisons used by BP-Coleman Theorem 4.5.2.


### From TauCetiRoadmap.PhiGammaModulesAndIwasawaCohomology

- §4.0: Rigid compact character spaces with universal characters and inversion.


### From TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero

- §6.3: cartierSeparation for two effective Cartier divisors on any scheme, with residual disjointness and preserved difference.


### From TauCetiRoadmap.ShimuraCompactifications

- §C3.1: Common cone refinements.
- §C3.9: Coherent cohomology independence of the cone system under its coefficient criterion.
- §C4.16: The compactified Klingen correspondence on triples (A,H_n,L).
- §C4.17: Acyclicity of its first projection, algebraically and after analytification.
- §C5.19: Normal higher-p-level Siegel models.
- §C5.20: Boundary charts on normalized models.
- §C5.21: Formal canonical coefficient criterion.
- §C5.29: Siegel threefold canonical line (det E)^3(−D), weight (3,3)=−2ρ_nc.


### From TauCetiRoadmap.ShimuraData

- §3.10: Minimal left Kostant representatives.
- §3.13: Opposition involution.
- §3.8: Compact-dual flag variety.
- §5.10: Genus-two Kostant actions.
- §5.11: Genus-two chamber reversal.
- §5.5: Siegel roots, dominance and half-sums.
- §5.6: Weyl permutation comparison.


### From TauCetiRoadmap.SolidAnalyticRings

- §7.2: Completed scalar extension, relative tensor and scalar-change coherences.
- §7.3: Discrete animated Huber-pair module structures and polynomial analytic coefficient structures.
- §7.4: Integer-linear and common-light-presentation comparisons, with its explicitly stated site-comparison prerequisite.

What SolidAnalyticRings must provide (gap:solid-localization-kernel): §§7.2–7.3 — Identify the relative polynomial analytic localization kernel by its idempotent completion algebra, prove its localization triangles and A[[T]]⊗^L_(A[T],A)_■A[T,T⁻¹]_■=0.

What SolidAnalyticRings must provide (gap:discrete-adic-solid-comparison): §§7.3–7.4 — Extend the supplied discrete animated Huber-pair coefficient structures and common-presentation comparisons to the discrete-adic locales and countable completion/localization towers used in BP-Hida, preserving their specified derived tensors and limits.


### From TauCetiRoadmap.LieHighestWeight

- Layer 3: PBW, Verma and highest-weight modules and enveloping-algebra maps, used for the differentials of the locally analytic BGG complex of §6.5. Locally analytic BGG exactness itself is §6.5.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

- §SR.0.2: the category of smooth representations and its discrete comparison.
- §SR.1.4: the positive Klingen Hecke algebra of GSp₄ (klingen-positive-hecke), a polynomial ring in the three Klingen double-coset operators, used to fix the Klingen operator U_Kli,1 of §9.5.
- §SR.4.5: GSp₄ spherical Satake parameters and the spin polynomial with their similitude normalization.

That roadmap leaves the Klingen computations for GSp₄ to other roadmaps; §9.5 proves the isolated Klingen refinement comparison.

## How to read the build

Layer 1 fixes the cohomological weight and slope dictionary. Layer 2 supplies solid operations and the dynamic ordinary theorems, using the generic coherent support contract. Layer 3 applies them to integral Siegel strata and Layer 4 interpolates the fixed-weight complexes over the torus Iwasawa algebra. Layer 5 constructs geometric finite-slope cohomology; Layer 6 applies analytic coefficients and proves BGG control in families. Layer 7 constructs the cohomological eigenvariety and its interior deformation theorem. Layer 8 compares integral ordinary and finite-slope objects, giving rational amplitude and sharp Siegel bounds. Layer 9 tests the conventions in modular, Siegel, singular Klingen and split-unitary cases, and constructs the Klingen analytic family and small-slope extension on which the Klingen control theorem rests. Every missing supplier strengthening is named by its gap in the consuming target's Needs line.

The headline theorems are derived arithmetic Hida control (§4.6) and integral Iwasawa Serre duality (§4.8) for Siegel varieties of every genus, integral amplitude in genera one and two (§4.9) and rational amplitude in every genus (§8.4), regular and singular geometric classicality (§5.10), the cohomological eigenvariety (§7.1) with the equidimensionality and deformation of interior eigenpackets (§7.5), sharp interior slope bounds (§7.6) and sharp Siegel bounds (§8.5), and the two-term Klingen control theorem (§9.8). Their statements require Shimura varieties and their toroidal models, Igusa towers, supported coherent cohomology of automorphic bundles and analytic coefficient complexes, none of which exists in the pinned Mathlib or Tau Ceti; Suggested.lean therefore states none of them and names, for each, the carrier it lacks. Scalar and root-coordinate calculations serve as Checks in this README.


## Layer 1: Weights, supports and operator conventions

### 1.1 The cohomological weight dictionary

Use the Coleman datum of Conventions.

Write M=M_µ, W_M for its Weyl group, w0M for its longest element and MW for minimal representatives of W_M\W. Let Φ+ have noncompact roots in g/p_std and compact roots in Lie(M); ρ is half their sum and ρ_nc half the noncompact sum. Put d=dim Sh, ℓ+(w)=ℓ(w), ℓ−(w)=d−ℓ(w), Cκ+={w∈MW: −w⁻¹w0M(κ+ρ) is G-dominant}, and Cκ−={w: w⁻¹(κ+ρ) is G-dominant}. Set ν_w(κ)=−w⁻¹w0M(κ+ρ)−ρ, κ_w(ν)=−w0M w(ν+ρ)−ρ, and κ∨=−w0Mκ−2ρ_nc. These are algebraic lattice formulas; no action of absolute W on arbitrary analytic characters of Tʳ(ℤ_p) is asserted. Extend the supplied Siegel chamber dictionary to these abelian-type data, and prove Vκ^∨⊗ω_Sh = V_(−w0Mκ−2ρ_nc)(−D) on the smooth toroidal compactification; here the canonical line has weight −2ρ_nc and the boundary is reduced. (BP-Coleman, §§1.1–1.3, pp. 2–9; §4.1, pp. 50–51; §5.11, pp. 129–130; §6.5.4, p. 160).

A proof route is as follows: Import the root datum and highest-weight labels, retaining the left-coset convention. Check the inverse formulas by cancelling w and w0M; restrict algebraic weights to the actual quotient torus. Compute the determinant of the cotangent representation from the noncompact roots, then use the logarithmic canonical extension and the reduced boundary divisor.

*Needs:* ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13; AutomorphicBundles §B4.10; AutomorphicBundles §B4.16; AutomorphicFormsOnReductiveGroups §6.7; ShimuraCompactifications §C5.29.

The basic properties of this construction are:

- κ_w(ν)=−w0M w(ν+ρ)−ρ.
- ν_w(κ_w(ν))=ν on the algebraic character lattice.
- w∈Cκ+ exactly when −w⁻¹w0M(κ+ρ) is dominant, without a further −ρ inside this test.
- (κ∨)∨=κ; Serre duality exchanges ℓ+ and ℓ−.

**Checks.**

- For GL₂, k≥2 selects the degree-zero chamber; k≤0 selects the degree-one chamber.
- For GSp₄ κ=(k+2,2), k≥0, κ+ρ=(k+1,0) and Cκ+ contains the first two representatives.
- In the C2 convention of Layer 9, ν=(0,−2) gives κ_w=(5,3),(5,1),(2,−2),(0,−2); substituting each returns ν.
- For T=Res¹_(ℚ(∛2)/ℚ)Gₘ with trivial h, Z_s=1 but Zᵣ=T, so Tʳ=1 while T^c=T. Its nontrivial multiplication representation cannot be a coefficient of the effective tower (OverconvergentAutomorphicForms §8.6).
- On the modular curve the dual weight is 2−k; in genus two κ∨=(3−κ₂,3−κ₁), so (5,3)↔(0,−2) and (5,1)↔(2,−2). Applying the operation twice returns κ, whereas omitting −D gives the wrong canonical line.

A regular κ+ρ gives one compatible w; singular κ can give several. The canonical bundle has weight −2ρ_nc with boundary twist −D.

### 1.2 Relative slopes and geometric classicality regions

Use the Coleman datum of Conventions.

Let T^d be the maximal ℚ_p-split subtorus of T, and record the valuation of a smooth torus eigencharacter as λ∈X*(T^d)_R, normalized by v_p(p)=1. Use the supplied relative slope order: a≤b means b−a lies in the nonnegative relative simple-root cone (equivalently its evaluation on every positive cocharacter is nonnegative); central components must agree. For + set A_w=w⁻¹w0M(κ+ρ)+ρ and a_w=w⁻¹w0Mκ. A geometric small slope excludes λ≥A_w for every w∉Cκ+; a proved geometric strongly small slope excludes at least one of λ≥a_w and λ≥a_w+w⁻¹2ρ_nc for every such w. For − use B_w=w⁻¹(κ+ρ)−ρ and b_w=w⁻¹κ, reverse ≥ to ≤ and Cκ+ to Cκ−. Negation of a cone inequality is logical negation, not a coordinatewise strict inequality. (BP-Coleman, §5.9, pp. 121–124; Definitions 5.11.2 and 5.11.14, pp. 130, 134).

A proof route is as follows: Use the relative valuation map and the root-cone description. Define the exclusions as finite conjunctions over the wrong chambers; leave equality on the forbidden side.

*Needs:* §1.1; ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13; LocallyAnalyticDistributions §4.17.

The basic properties of this construction are:

- a≤b iff each positive cocharacter evaluates a≤b, including equality of the central component.
- For each wrong w, require failure of at least one of the two proved bounds.
- The proved exclusion region implies the sharp exclusion region, by the root-cone comparison of §5.11.
- Twisting the eigencharacter by an algebraic η replaces λ by λ+η on T^d.

**Checks.**

- For GL₂ weight k≥2 and λ the BP-operator slope, the wrong-chamber threshold is k: λ=k is excluded and λ=k−1 is inside. For U_std=p⁻¹U_naive the endpoint is k−1; at k=2 these thresholds are 2 and 1.
- In the cone R≥0², (−1,10) is not ≥(0,0), although its second coordinate is positive.
- Two weights with different central components are not comparable merely because their derived-group projections agree.

The two lower bounds are retained separately; a vector maximum is not substituted for a cone condition.

### Examples

For GL₂, the BP degree-zero bound at k=2 excludes slope 2 but permits slope 1; rescaling U by p⁻¹ gives endpoint 1. For κ=(k+2,2) in genus two, κ+ρ=(k+1,0) has two compatible chambers.

### Dependencies

AutomorphicBundles §B4.10; AutomorphicBundles §B4.16; AutomorphicFormsOnReductiveGroups §6.7; LocallyAnalyticDistributions §4.17; ShimuraCompactifications §C5.29; ShimuraData §3.10; ShimuraData §3.13; ShimuraData §3.8.


## Layer 2: Dynamical ordinary cohomology

Standing setting for §§2.2–2.8: separated finite-type schemes over a noetherian affine base S of finite type over ℤ, and proper compactifications of the correspondence C→X×_S X. All schemes in the solid formalism are of finite type over ℤ; in the Artinian case A=ℤ_p/p^s or a finite flat coefficient extension. The coefficient F is coherent, with a cohomological correspondence p2*F→p1!F. Limits, colimits and tensor products in this layer are derived solid operations, not exchanges of ordinary module limits.

### 2.1 Solid operations on finite-type schemes

For separated finite-type ℤ-schemes X construct D(O_X,■) with the fully faithful discrete quasi-coherent derived subcategory, derived pullback and tensor, proper pushforward with its exceptional right adjoint, and open j_! and j_* with restriction. For proper f:X→Y prove that Rf_* sends bounded discrete coherent complexes to bounded discrete coherent complexes. Prove the projection formula and Tor-independent open base-change maps, formal-completion excision and localization triangles. For a smooth structure map q:X→Spec A of pure relative dimension d identify q!A with Ω^d_(X/A)[d]. Include A=ℤ/p^s and its finite flat extensions, with A-flat coherent coefficients. Apply the solid coefficient and common-presentation comparisons only on the diagrams specified by the two solid supplier gaps. (BP-Hida, §2.2, pp. 12–15; §2.3, pp. 15–18).

*Needs:* SolidAnalyticRings §7.2; SolidAnalyticRings §7.3; SolidAnalyticRings §7.4; gap:solid-localization-kernel; gap:discrete-adic-solid-comparison.

The basic properties of this construction are:

- The unit and counit give identity for identity maps and compose under two proper maps or two open immersions.
- For proper f:X→Y, discrete coherent F and a perfect G on Y, Rf_*(F⊗^L Lf*G)≃Rf_*F⊗^L G, with both sides on Y.
- For a closed subscheme the formal-completion idempotent algebra and its complementary localization fit into the stated excision triangles; identify the discrete object with its image in the solid category.

**Checks.**

- For X=Spec A and q=id, q!A=A[0]; tensoring the zero coefficient and its pushforward gives 0.
- For A=𝔽₂ or ℤ/9 and X smooth of relative dimension one, Ω¹[1] has its sole sheaf in cohomological degree −1; omitting [1] places it in degree 0.
- For X=Spec A[t] and j=D(t), the discrete j_*O has sections A[t,t⁻¹]; for j=id both j_! and j_* are identity. Formal completion along t=0 has coefficient A[[t]], not A[t,t⁻¹].

### 2.2 Dynamical compactifications

A dynamical compactification consists of proper Xbar,Cbar over S, two maps p1,p2, closed subschemes D+,D− with X = Xbar ∖ (D+ ∪ D−) and C = Cbar ∖ (p1*D+ ∪ p2*D−), and p2*D+⊂p1*D+, p1*D−⊂p2*D− on underlying sets. For ideals I,I′ write D≤(a/b)D′ if (I′)^a⊂I^b for some positive integers a,b. Strict dynamics requires p2*D+≤s p1*D+ and p1*D−≤s p2*D− for some rational 0<s<1. Compact dynamics replaces these by inclusions in the interiors of the right-hand closed subsets in the solid/discrete-adic locale. D+ and D− may intersect. Transposition swaps p1,p2 and D+,D−. (BP-Hida, Definitions 2.1.15, 2.1.19, 2.1.24, 2.1.26, pp. 8–10).

A proof route is as follows: Use the imported proper correspondence and solid locale. Define ideal-power comparison, then its strict and compact variants; transport them to common refinements.

*Needs:* §2.1; SolidAnalyticRings §7.3; SolidAnalyticRings §7.4; gap:discrete-adic-solid-comparison.

The basic properties of this construction are:

- Stores compactifications, both projections, the two labelled boundary pieces and the expansion/contraction proofs.
- Transposition interchanges the two labels and is involutive.
- Iterating a strict dynamical correspondence preserves strict dynamics.
- Common strict refinements preserve the induced supported-cohomology action.

**Checks.**

- For p2=Frobenius and p1=id on ℙ¹_(𝔽_p), take D−=V(t) and D+=∅. Then p2*D−=pD− and D−≤(1/p)(pD−), since (t^p)¹=(t)^p. This is the contracted, negative boundary; it is not the expanded, positive one.
- For the identity on a regular scheme and a nonempty effective Cartier divisor, D≤sD fails for 0<s<1.
- D+=D−=∅ satisfies the boundary inequalities, and the open is all of the proper Xbar.

An inclusion of supports alone does not imply strict ideal-power contraction.

### 2.3 Supported ordinary localization

For a chosen T-action on K∈D(A_square), set K^ord=K⊗^L_(A[T],A)_square A[T,T⁻¹]_square. This is an analytic/solid localization, including the specified integral subring A in the source pair. An automorphism on a finite discrete A-complex is unchanged; a topologically nilpotent action on an A[[T]]-complex is killed. When A is Artinian and K has bounded finite cohomology it agrees with the imported Fitting ordinary direct factor; for m-adic towers agreement is asserted only after the relevant finiteness/completeness hypotheses are proved. (BP-Hida, Definition 2.4.2 and Lemmas 2.4.3–2.4.4, pp. 18–19).

A proof route is as follows: Apply the imported analytic localization, retaining the chosen action rather than merely a cohomology endomorphism. Compare on finite discrete complexes by Fitting decomposition; use the annihilation of A[[T]] by the target analytic algebra.

*Needs:* gap:coherent-correspondences; §2.1; Mathlib `DerivedCategory`; Mathlib `CondensedMod`; SolidAnalyticRings §7.2; SolidAnalyticRings §7.3; gap:solid-localization-kernel; SolidAnalyticRings §7.4; gap:discrete-adic-solid-comparison; PadicFamilies §0a.25; IntegralHeckeAndGaloisDeterminants §2.3.

The basic properties of this construction are:

- The displayed solid derived tensor defines the localized supported complex.
- It is initial for maps of analytic modules to the target analytic-algebra category.
- For Artinian A and bounded finite discrete K it equals the ordinary direct factor.
- The localization preserves distinguished triangles and commutes with the tower operations justified by the analytic-ring localization theorem.

**Checks.**

- T=1 on finite discrete A in degree zero leaves A unchanged.
- T=0 on A is killed.
- Over Z/p^s, T=p on A is killed; the compatible inverse system has zero ordinary part, although p becomes an algebraic unit after tensoring ℚ_p.

Do not replace this with ordinary algebraic inversion over ℚ_p: a positive-slope scalar is algebraically invertible there.

### 2.4 Finiteness from strict dynamics

For a strict dynamical compactification and coherent F, the canonical comparison (K−+)^ord→(K+−)^ord is an equivalence, and the resulting object is independent of the chosen strict compactification. If A is Artinian it has bounded finite discrete A-cohomology. The proof factors a sufficiently iterated cohomological correspondence through cohomology of finitely many bounded coherent twists on a proper model; arbitrary exchanges of inverse limits and filtered colimits are unnecessary. (BP-Hida, Theorem 2.5.1 and Proposition 2.5.4, pp. 19–21).

A proof route is as follows: Use the ideal-power inequalities to make high iterates improve both twist indices. Clear the bounded coefficient poles using Proposition 2.3.13 and factor the iterate through a finite set of coherent proper cohomology objects. Invert T in this factorization; compare refinements and the two support orders.

*Needs:* §2.3; §2.2; §2.1.

Over an Artinian base the output is finite and bounded, not automatically termwise free.

### 2.5 Discrete derived coefficient change

Assume F is A-flat and M is a finite discrete A-module. For the strict dynamical ordinary object, RΓ^ord(X,F)⊗^L_A M≃RΓ^ord(X,F⊗_A M). For finite A→A′ the geometric base-change formula additionally requires X and Spec A′ to be Tor independent over A. Neither assertion is an arbitrary completed Banach coefficient change. (BP-Hida, Propositions 2.6.2 and 2.6.13, pp. 21–23).

A proof route is as follows: Apply the projection formula for the !/* support factorization and the supplied discrete-solid tensor comparison. Use A-flatness to keep the coefficient coherent and bounded below. For geometric change identify the derived and underived fiber products by Tor independence.

*Needs:* §2.4; §2.1; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; gap:coherent-correspondences.

Derived tensor remains in the conclusion even when the cohomology groups have torsion.

### 2.6 Artinian and equivariant perfectness

Over an Artinian local A, an A-flat coherent F with strict dynamics has RΓ^ord(X,F) perfect over A. More generally, for a finite abelian group Γ commuting with the correspondence, A[Γ]-flat F gives a perfect A[Γ]-complex and augmentation specialization to RΓ^ord(X,F/I_ΓF). A finite étale Γ-torsor over an A-flat X supplies this equivariant flatness for its direct-image structure sheaf. (BP-Hida, Theorem 2.6.8, Theorem 2.6.10 and Lemma 2.6.11, p. 22).

A proof route is as follows: Use discrete base change to compute the residue-field derived fiber. Use ordinary finiteness there and the supplied local perfect-complex criterion. For A[Γ] use torsor descent to prove flatness, then specialize through augmentation without dividing by |Γ|.

*Needs:* §2.5; §2.4; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; gap:coherent-correspondences; gap:equivariant-coherent-models.

The equivariant result applies even when p divides |Γ|.

### 2.7 Transposed ordinary Serre duality

Suppose C and X are smooth over Artinian A, with X pure of relative dimension d and F is finite locally free. Put D_XF=RHom(F,p!A), using p!A=Ω^d[d]. Transpose the coefficient correspondence and swap D±. The perfect ordinary complexes satisfy RΓ^ord_C(X,F)≃RHom_A(RΓ^ord_Ct(X,D_XF),A), and conversely. Thus an untwisted dual bundle appears in complementary cohomological degrees after the canonical-bundle and boundary twists are included. (BP-Hida, Propositions 2.7.2–2.7.3 and Theorem 2.7.4, pp. 23–24).

A proof route is as follows: Apply six-functor duality to the two open immersions. Use the supplied transpose of a coherent correspondence; restrict it to the two solid support orders. Use ordinary/nonordinary orthogonality and perfectness to restrict the duality.

*Needs:* §2.6; gap:coherent-correspondences; §2.1.

The shift is fixed by H^i pairing with H^(d−i), not by an ungraded vector-space dual.

### 2.8 Finite rank and the compact-dynamics bridge

For compact dynamics, if the coherent coefficient correspondence extends across a neighborhood of Cbar ∖ (int(p1*D+) ∪ int(p2*D−)), its supported-cohomology endomorphism factors through an object with bounded finite cohomology over the proper core. Shrinking admissible support pairs induces ordinary equivalences. Strict and compact models compare when the coefficient map has the zeros/poles factorization of Theorem 2.11.4; compact containment of supports alone does not give that comparison. (BP-Hida, Propositions 2.10.3–2.10.4, pp. 30–31; Theorem 2.11.4, pp. 32–33).

A proof route is as follows: Factor the map through cohomology supported on the proper core of the compact containment. After inverting T, the factorization supplies support-shrinking inverses. Verify the coefficient extension and twist inequalities before applying the strict/compact bridge.

*Needs:* §2.4; gap:coherent-correspondences; §2.1.

Failure to extend the coefficient map is a real missing hypothesis.

### Examples

At a point over 𝔽₂ with T=1, the ordinary complex is 𝔽₂[0]; with T=0 it is zero. With A=ℤ/9 and T=3, T²=0, so the ordinary complex is zero. Empty boundaries recover ordinary proper coherent cohomology.

### Dependencies

DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; IntegralHeckeAndGaloisDeterminants §2.3; Mathlib `CondensedMod`; Mathlib `DerivedCategory`; PadicFamilies §0a.25; SolidAnalyticRings §7.2; SolidAnalyticRings §7.3; SolidAnalyticRings §7.4; gap:coherent-correspondences; gap:discrete-adic-solid-comparison; gap:equivariant-coherent-models; gap:solid-localization-kernel.


## Layer 3: Integral Siegel strata and fixed weights

### 3.1 Siegel degree strata and support pairs

Use the integral Siegel datum of Conventions.

For n≥1, on the normalization model at Iwahori level p^n, use the self-dual chain A_g→⋯→A_2g→A_1→⋯→A_g and its graded order-p^n groups Gr_i. The degree divisors D_i satisfy D_i+D_(2g+1−i)=V(p^n). Set Z_i=Σ_(j=1)^i D_(g+j), blow up to separate positive and negative parts of Z_i−V(p^(nj)) for every 0≤j≤i, and let the w-stratum be the open on which Gr_(w⁻¹(i)) is multiplicative for i=g+1,…,2g. The closed degree filtration F_r=⋃_(ℓ(w)≤r) Z_>w−1 and D_w,+=⋃_i Z_i,<w_i, D_w,−=⋃_i Z_i,>w_i supply the support pairs. Here w_i counts the multiplicative increments among the first i groups Gr_(g+j). These distinguished strata need not exhaust the ordinary locus for n>1. (BP-Hida, §§3.4.19–3.4.25, pp. 39–40; §4.1, §4.1.11 and Proposition 4.1.13 and §4.1.16, pp. 41–43).

A proof route is as follows: Import the integral moduli chain, degree ideals and ordinary Igusa identifications. Normalize the product of polarization moduli spaces, then blow up pairs of degree divisors to separate signs. Use the binary multiplicative/étale increments to index the open strata and assemble the closed filtration.

*Needs:* §1.1; PELModuli §M2.8; PELModuli §M2.9; PELModuli §M5.1; PELModuli §M5.2; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; gap:siegel-ordinary-igusa; ResolutionOfSingularitiesCharacteristicZero §6.3.

The basic properties of this construction are:

- Returns the normalized degree model, the w-open and its labelled support pair.
- D_i+D_(2g+1−i)=V(p^n), encoding Cartier duality.
- The graded pieces selected by w are multiplicative, equivalently their dual graded pieces are étale.
- The open formal stratum equals the supplied partial toroidal Igusa quotient at wK_p,nw⁻¹∩P, with the cyclotomic descent conditions checked.

**Checks.**

- For g=1 the two strata distinguish a multiplicative and an étale cyclic subgroup.
- At an ordinary point a multiplicative Gr_i has degree divisor n and its étale dual has degree zero.
- For n>1 a noncanonical cyclic filtration can be ordinary without lying in one of these distinguished w-opens.
- At n=0 the graded groups have order one and degree zero, so multiplicative and étale labels coincide. This does not give the two genus-one strata, which is why the degree model requires n≥1.

On n=1 the distinguished strata exhaust the ordinary special fiber; do not generalize this assertion to n>1.

### 3.2 Integrally normalized stratum Hecke action

Use the integral Siegel datum of Conventions.

For a chosen integral highest-weight lattice ωκ from the de Rham M-torsor and t∈T++, set t_w=ν_w(κ)(t)t_naive on the w-Igusa stratum, for every w∈MW. The trace factor is the character w⁻¹w0Mρ+ρ, calculated from formal torus root coordinates; each local coefficient correspondence t_w:p2*ωκ→p1!ωκ is integral on its stratum. The global operator is built from a compatible chamber only: for any w₀∈Cκ+ put t_κ=ν_(w₀)(κ)(t)t_naive over the complement of ⋃_i p1*D_i∩p2*D_(2g+1−i) in the degree model of the correspondence. Its scalar does not depend on w₀, because w⁻¹w0M(κ+ρ) is the same antidominant weight for every w∈Cκ+, and t_κ is integral there. On the w′-stratum t_κ=p^(n_w′)t_w′ with n_w′=v_p((ν_(w₀)(κ)−ν_(w′)(κ))(t)); n_w′=0 for w′∈Cκ+ and n_w′>0 for w′∉Cκ+. Choose k′ sufficiently large and tildeωκ=ωκ(−k′Σ_i Z_i) so that t_κ extends to a correspondence p2*tildeωκ→p1!tildeωκ on the degree model. The global extension is asserted for t_κ only: for w′∉Cκ+ the local normalization t_w′=p^(−n_w′)t_κ has a pole along the generic part of a compatible stratum, which no vertical twist removes. It is a construction with a chosen lattice and model, not a canonical integral extension of the rational bundle. With finite character χ retain the same algebraic weights and the finite-character coefficient twist separately. (BP-Hida, §4.3, Lemma 4.3.8, Propositions 4.3.9 and 4.3.11, Remark 4.3.12, Proposition 4.3.13 and Lemma 4.3.14, pp. 46–49).

A proof route is as follows: Compute trace in each formal multiplicative coordinate and apply the highest-weight character. Prove integrality of each t_w on the supplied Igusa reduction of the de Rham torsor. Check that t_κ is a true map at each generic point of the special fibre, compute n_w′ by comparing the two characters, then bound the poles of t_κ along the intersections p1*D_i∩p2*D_(2g+1−i) and absorb them in k′ΣZ_i.

*Needs:* §3.1; AutomorphicBundles §B2.3; AutomorphicBundles §B3.10; AutomorphicBundles §B3.2; AutomorphicBundles §B3.4; AutomorphicBundles §B3.general.1; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; gap:coherent-correspondences.

The basic properties of this construction are:

- For each w∈MW, the integral local coefficient correspondence t_w=ν_w(κ)(t)t_naive on the w-stratum; u∈T(ℤ_p) acts on its fixed-weight cohomology by ν_w(κ)(u)χ(u).
- For w₀,w₁∈Cκ+ the global operators built from w₀ and from w₁ coincide; t_κ restricts to p^(n_w′)t_w′ on the w′-stratum, with n_w′>0 exactly when w′∉Cκ+.
- The global correspondence for t1t2 equals the composite of those for t1 and t2 on common level refinements, and likewise for each local t_w.
- tildeωκ⊗ℚ_p=ωκ⊗ℚ_p, since the degree divisors are vertical.

**Checks.**

- For GSp₄, w=1 and t₂=diag(p⁻¹,p⁻¹,1,1), w⁻¹w0Mρ+ρ=(−3,−3;0) pairs with (−1/2,−1/2;−1/2) to give 3. The trace factor is p³ and its reciprocal is p⁻³, agreeing with U2_std=p⁻³U2_naive (BP-Hida Lemma 4.3.8, p. 48).
- For χ finite and ν_alg fixed, κ depends on ν_alg alone, whereas units act by ν_algχ.
- Changing k′ changes the integral lattice but not its rational generic-fiber bundle.
- Negative control, GL₂ weight k=2 at p=3: Cκ+={id}, U_naive sends the constant q-expansion coefficient 1 to p=3, and t_κ=p⁻¹U_naive sends it to 1. Using the long-stratum normalization p⁻²U_naive globally sends 1 to 1/3 on the generic ordinary degree-zero component; twisting both lattices by p^e sends p^e to p^(e−1) for every e, so no choice of k′ makes it integral.
- In the same case the naive lower slope bounds (1,2) on the identity and long strata become (0,1) for t_κ, with n_long=1, whereas the wrong global normalization would give (−1,0). For k≤0 the roles swap: Cκ+={long}, t_κ=p^(−k)U_naive and n_id=1−k>0; at k=1 both chambers are compatible and n=0 on both.

Record the chosen t before evaluating ν(t); it is not a function of its coset modulo T(ℤ_p) without the unit character.

### 3.3 Strict dynamics of Siegel correspondences

Use the integral Siegel datum of Conventions.

For each distinguished w, every t∈T++ and every mod-p^s thickening, the normalized Igusa correspondence admits a strict dynamical compactification with the Layer 3 degree support labels. The same conclusion holds for each cofinal decomposable compact P′(ℚ_p)-subgroup used in the universal tower. The coefficient correspondence extends with the prescribed bounded zeros and poles. Here P′ has unipotent part U_P(ℚ_p)(1); identifying it with an untwisted P requires a cyclotomic trivialization. (BP-Hida, Lemma 4.4.2, Corollary 4.4.3 and Proposition 4.4.4, pp. 50–51; Theorem 5.1.4, p. 53).

A proof route is as follows: Use the degree growth of the universal isogeny to obtain strict ideal-power inequalities modulo p. Lift across nilpotent thickenings, preserving bounded coefficient poles. Use conjugation and cofinal decomposable subgroups to transport the Iwahori argument.

*Needs:* §3.2; §2.2; gap:siegel-ordinary-igusa; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; gap:pel-subcanonical-vanishing.

A general integral PEL or Hodge-type version is not inferred from these Siegel degree calculations.

### 3.4 Supported fixed-weight ordinary complexes

Use the integral Siegel datum of Conventions.

For an M-dominant algebraic κ, a finite torus character χ and a fixed w, define C_w(κ,χ,ε)=Rlim_s RΓ^ord(IGtor_w mod p^s, ωκ(χ)⊗O(−εD)), where ε=0 or 1 distinguishes canonical and subcanonical extension. The symbol RΓ^ord includes the two-boundary support construction of Layer 2, not unrestricted cohomology of the Igusa open. Coefficients lie in ℤ_p[ζ] when χ requires roots of unity. The torus acts by ν_w(κ)χ on integral units. (BP-Hida, §4.4 and Proposition 4.4.5, p. 51; §5.3.1, p. 55).

A proof route is as follows: Form the ordinary partial-support object at each finite coefficient level. Use discrete derived base change to define the compatible p-adic limit and retain the Hecke actions.

*Needs:* §3.3; §2.3; AutomorphicBundles §B3.2; AutomorphicBundles §B3.4; AutomorphicBundles §B3.general.1.

The basic properties of this construction are:

- The supported p-complete complex C_w(κ,χ,ε).
- Derived reduction modulo p^s returns the supported ordinary finite-coefficient complex.
- u∈T(ℤ_p) acts by (ν_w(κ)χ)(u).
- O(−D)→O induces a Hecke-equivariant map C_w(κ,χ,1)→C_w(κ,χ,0).

**Checks.**

- κ=0, χ=1 gives the supported structure-sheaf complex with trace normalization still present.
- At a finite character nontrivial on a unit u, the action differs from ν_w(κ)(u) by χ(u).
- At a genus-one cusp with parameter q, O(−D)→O is the inclusion (q)↪O on the cusp chart. On the boundary fibre q=0 this map is zero, whereas the identity coefficient map is 1, so the ε=1 and ε=0 complexes are joined by a map that is not an isomorphism near the boundary. The GSp₂g datum has nonempty boundary for every g≥1, so no instance of this section has D=∅.

The cuspidal coefficient is ωκ(χ)(−D), with the same w-support, not compact support at every end.

### 3.5 Integral fixed-weight perfectness

Use the integral Siegel datum of Conventions.

C_w(κ,χ,ε) is perfect over ℤ_p[ζ], independent of the chosen t∈T++ and of the permitted support compactifications, and carries the locally algebraic T(ℚ_p)-action with unit character ν_w(κ)χ. This statement holds in every genus and does not assert a sharper integral cohomological amplitude than the construction proves. (BP-Hida, Proposition 4.4.5, p. 51).

A proof route is as follows: Apply Artinian perfectness at each s and use derived reduction to bound compatible minimal models. Lift the compatible finite projective representatives p-adically. Compare t by common positive products and the normalized commuting correspondences.

*Needs:* §3.4; §2.6; §2.5; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10.

Perfectness of the complex does not imply torsion-free cohomology.

### 3.6 The integral ordinary Cousin spectral sequence

Use the integral Siegel datum of Conventions.

On the chosen degree model with sufficiently twisted tildeωκ and the extended global operator t_κ of §3.2 (built from any w₀∈Cκ+), there is a Hecke-equivariant spectral sequence E1^(r,q)=⊕_(w∈Cκ+,ℓ(w)=r) H^(r+q)(C_w(κ,1,ε))⇒H^(r+q)(RΓ(Stor,tildeωκ(−εD))^ord), with the analogous finite-nebentypus version. The local supported terms are canonical under the allowed comparisons; the integral global abutment and its differentials can depend on the degree model and tildeωκ. Singular Cκ+ with more than one element is retained. (BP-Hida, Theorem 4.5.2 and Remark 4.5.3, pp. 51–52).

A proof route is as follows: Apply the supported Cousin filtration to the modified integral bundle. Use the coefficient zeros/poles factorization to identify the ordinary formal-support summands with C_w, where t_κ restricts to t_w for w∈Cκ+. Eliminate the incompatible strata: there t_κ restricts to p^(n_w′)t_w′ with n_w′>0 and t_w′ integral, so its ordinary part vanishes.

*Needs:* §3.5; §3.1; gap:coherent-correspondences; §3.2.

Do not claim that a nontrivial spectral sequence degenerates at a singular weight.

### 3.7 Regular global ordinary control

Use the integral Siegel datum of Conventions.

If κ+ρ is regular and Cκ+={w}, the integral Cousin sequence for t_κ identifies C_w(κ,χ,ε), with its local operator t_w (equal to t_κ on that stratum since n_w=0), with the t_κ-ordinary cohomology of the chosen tildeωκ(χ)(−εD). On the rational generic fiber this becomes C_w(κ,χ,ε)⊗ℚ_p(ζ)(−ν_w(κ))≃RΓ(Stor_Qp(ζ),ωκ(χ)(−εD))^ord, where the right-hand operator convention is the classical normalized action. The algebraic torus twist in this formula is essential; finite characters remain in the coefficient. (BP-Hida, Corollaries 4.5.4–4.5.5, p. 52).

A proof route is as follows: Collapse the single nonzero Cousin column. Invert p to remove the vertical modification of the lattice. Reconcile the normalized local and classical torus actions by the character −ν_w(κ).

*Needs:* §3.6; §1.1.

At a wall the local complex is only one term of the Cousin calculation. For GL₂ at k=2, t_κ=p⁻¹U_naive and twisting by −ν_id(κ), with ν_id(κ)(t)=p⁻¹, multiplies by p, recovering U_naive on the rational side.

### Examples

For g=1 there are two degree strata. With coefficients ℤ_p, the perfect complex [ℤ_p→pℤ_p] has H⁰=0 and H¹=𝔽_p, so perfectness must retain torsion. The Siegel boundary is never empty: at a genus-one cusp O(−D)→O is (q)↪O, which vanishes on the boundary fibre.

### Dependencies

§1.1; AutomorphicBundles §B2.3; AutomorphicBundles §B3.10; AutomorphicBundles §B3.2; AutomorphicBundles §B3.4; AutomorphicBundles §B3.general.1; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; §2.5; §2.2; §2.3; §2.6; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; PELModuli §M2.8; PELModuli §M2.9; PELModuli §M5.1; PELModuli §M5.2; ResolutionOfSingularitiesCharacteristicZero §6.3; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; gap:coherent-correspondences; gap:pel-subcanonical-vanishing; gap:siegel-ordinary-igusa.


## Layer 4: Universal higher Hida complexes

### 4.1 Perfectness over finite torus group rings

Use the integral Siegel datum of Conventions.

For a decomposable compact K_P⊂P′(ℚ_p) and T_K=w⁻¹(K_P∩T)w⊂T(ℤ_p), the weight-zero supported ordinary Igusa complex is perfect over ℤ_p[T(ℤ_p)/T_K], for canonical and cuspidal coefficients. The normalized correspondence gives an action of T(ℚ_p). No exactness of invariants of a p-group is assumed. (BP-Hida, Lemma 5.2.2 and Proposition 5.2.3, p. 54).

A proof route is as follows: Use the finite étale torus torsor to prove group-ring flatness. Apply equivariant Artinian perfectness at each p^s, then take compatible complete models.

*Needs:* §3.5; §2.6; gap:siegel-ordinary-igusa.

Finite torus levels can have order divisible by p.

### 4.2 Ordinary independence of unipotent level

Use the integral Siegel datum of Conventions.

For cofinal decomposable K_P,K′_P with identical torus subgroup T_K=T_K′, the ordinary supported Igusa complexes are canonically quasi-isomorphic, with boundary variant and Hecke actions. For distinct torus subgroups the comparison is a derived torus-invariant/control map, not this same assertion. Iterated-correspondence pullback and trace give inverses after ordinary localization. (BP-Hida, Proposition 2.8.2, pp. 25–27; Proposition 5.2.5, pp. 54–55).

A proof route is as follows: Form the triangular system of iterated flat correspondences. Identify the composites with powers of an invertible ordinary Hecke operator. Interlace the two cofinal unipotent-level systems at the same torus subgroup.

*Needs:* §4.1; §2.4; §2.1; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12; gap:discrete-adic-solid-comparison; gap:solid-localization-kernel.

An assertion independent of all p-levels would erase the weight variable.

### 4.3 Universal supported ordinary Igusa complex

Use the integral Siegel datum of Conventions.

Choose cofinal K_(P,n) with torus level tending to 1 and define R_w^ε=Rlim_m colim_n (RΓ_w(K^pK_(P,n),ε)⊗^L Z/p^m). After transport by w this has its fixed T(ℚ_p)-action. The order is first the filtered level limit modulo p^m, then p-adic completion. It is independent of the initial cofinal decomposable compact. An admissible model means a bounded complex whose terms, on an open pro-p subgroup T′⊂T(ℤ_p), are finite sums of C^0(T′,ℤ_p). (BP-Hida, §5.2.6 and Proposition 5.2.7, p. 55; Definition 1.4.1, p. 4).

A proof route is as follows: Use finite-level derived reduction to form the filtered tower modulo p^m. Take the p-complete inverse limit and transport the torus action through w. Compare cofinal towers using level independence.

*Needs:* §4.1; §4.2; PadicFamilies §0a.24; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12.

The basic properties of this construction are:

- The completed filtered Igusa-level complex R_w^ε.
- Changing the starting cofinal decomposable compact gives a canonical compatible equivalence.
- Its reduction modulo p^m is the corresponding filtered finite-level ordinary object.
- The transported continuous T(ℤ_p)-action extends to the prescribed T(ℚ_p)-action.

**Checks.**

- The compatible finite regular-representation tower completes to C^0(T′,ℤ_p), not the free module on the discrete set T′.
- Replacing the initial torus tower by its tail gives the same object.
- Locally constant ℤ_p-valued functions without completion omit continuous functions of infinite p-adic image, such as z↦z on a pro-p coordinate.

A bare algebraic colimit over n without p-completion is not the universal object.

### 4.4 Continuous admissibility and perfect duals

Use the integral Siegel datum of Conventions.

For the specific ordinary Igusa tower complex R_w^ε constructed in §4.3, prove that R_w^ε belongs to the admissible integral category of CompletedCohomologyPartII §§3.11–3.12: after restriction to a sufficiently small pro-p torus T′ it has a bounded representative of finite continuous-function summands. Apply that supplier’s continuous duality to obtain a perfect Λ′-model. This assertion is the geometric admissibility theorem for this Igusa tower. (BP-Hida, Proposition 5.2.7, p. 55; Lemma 5.4.2, p. 57).

A proof route is as follows: Use the finite group-ring models of the ordinary Igusa quotients and the compatible coefficient/torus limits. Apply the admissible–perfect anti-equivalence with its supplied topology and inverse action.

*Needs:* §4.3; §4.1; PadicMeasuresIwasawaAlgebras §1.1; PadicMeasuresIwasawaAlgebras §1.7; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10.

Admissibility is a proved property here, not a hypothesis inserted to make perfectness tautological.

### 4.5 Perfect universal Iwasawa coefficient complex

Use the integral Siegel datum of Conventions.

Apply CompletedCohomologyPartII §3.12’s diagonal continuous-derived-invariant functor to the Igusa object R_w^ε and write its resulting perfect Λ=ℤ_p[[T(ℤ_p)]]-complex as M_w^ε. This Igusa family specializes at −ν: the map Λ→O sends [u] to ν(u)⁻¹ when the Igusa character is ν. The continuous diagonal realization and double-dual reconstruction are those of the supplier, with their regular-action convention. (BP-Hida, §5.4 and Lemmas 5.4.1–5.4.2, pp. 56–57).

A proof route is as follows: Apply the supplied diagonal model to the geometric admissible object, preserving its actual torus action. Fix the character map by the regular-representation identity t·f=χ(t)⁻¹f on diagonal invariants; use this map in derived control.

*Needs:* §4.4; PadicMeasuresIwasawaAlgebras §1.1; PadicMeasuresIwasawaAlgebras §1.7; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10.

The basic properties of this construction are:

- M_w^ε from continuous diagonal derived invariants.
- M_w^ε is perfect over Λ.
- The evaluation labeled −ν sends the universal group element [u] to ν(u)⁻¹.

**Checks.**

- R=C^0(T′,ℤ_p)[0] yields M=Λ′[0].
- For ν(u)=u^k the specialization is [u]↦u^(−k), not u^k.
- A continuous-function model in degree i reconstructs from the double dual in degree i; a single continuous dual would put it in degree −i.

For p=2 choose T′ and the finite-level equivariant perfect model; do not justify every finite quotient by dividing by its order.

### 4.6 Derived arithmetic Hida control

Use the integral Siegel datum of Conventions.

For ν=ν_algχ with χ finite, κ=κ_w(ν_alg) M-dominant and O=ℤ_p[ζ] containing χ, the universal and fixed objects satisfy RHom_(T_K)(ν,R_w^ε)≃C_w(κ,χ,ε) at the matching torus level, and M_w^ε⊗^L_(Λ,−ν) O≃C_w(κ,χ,ε). The local statement allows singular κ+ρ. Only when Cκ+={w} does Layer 3 regular control identify this with global classical ordinary cohomology. Derived tensor gives the Tor specialization spectral sequence; no H^i(M_w) is assumed Λ-flat. (BP-Hida, Proposition 5.3.3, p. 55; Theorem 5.3.5, p. 56; Remark 5.4.3, p. 57).

A proof route is as follows: Use the Igusa reduction of the de Rham torsor to project onto the lowest-weight character. Show that the kernel is ordinary-nilpotent by its strictly positive unipotent weights. Exchange the supplied continuous group cohomology and supported cohomology under the admissible model, then apply the character evaluation to M_w.

*Needs:* §4.5; §3.4; §4.2; AutomorphicBundles §B2.3; AutomorphicBundles §B3.10; gap:siegel-ordinary-igusa; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10.

The finite character does not enter the algebraic formula for κ.

### 4.7 Finite ordinary Hecke images

Use the integral Siegel datum of Conventions.

The image T_w^ε of the commuting prime-to-p spherical Hecke algebra in End_(D(Λ))(M_w^ε) is a finite Λ-algebra. Its spectrum maps finitely to Spec Λ. Keep nilpotents and all nonzero cohomological degrees; finite flatness, Gorensteinness and concentration in H^0 do not follow from this result. (BP-Hida, §5.4, p. 57, paragraph defining T_w).

A proof route is as follows: Apply IntegralHeckeAndGaloisDeterminants §2.1 to the bounded finite Λ-cohomology of M_w^ε. Take the actual commuting Hecke image, with its kernel, and its finite relative spectrum.

*Needs:* §4.5; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; gap:coherent-correspondences; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; IntegralHeckeAndGaloisDeterminants §2.1.

No replacement of the image by an abstract eigenvalue algebra with the same closed points.

### 4.8 Integral Iwasawa Serre duality

Use the integral Siegel datum of Conventions.

For w*=w0M w w0 there is a perfect derived pairing M_w^0⊗^L_Λ M_(w*)^1→Λ[−d], with the Λ-action on the second factor transported as in the source duality. At fixed weight it pairs C_w(κ,χ,0) with C_(w*)(κ∨,w0χ⁻¹,1) into O[−d]. The adjoint of t is w0(t⁻¹), and prime-to-p double cosets are replaced by their inverses. This is a duality of perfect complexes; individual cohomology modules may have Ext terms integrally. (BP-Hida, Theorems 5.5.1–5.5.2, p. 57).

A proof route is as follows: Apply the integral supported duality before passing to the tower. Transport the negative torus chamber by w0 and match w*. Use the perfect Iwasawa models to commute duality with arithmetic derived specialization.

*Needs:* §4.5; §2.7; §4.6; AutomorphicBundles §B3.2; AutomorphicBundles §B3.4; AutomorphicBundles §B3.general.1.

The cohomological complementary degree and the boundary twist must both match.

### 4.9 Proved integral amplitude in genera one and two

Use the integral Siegel datum of Conventions.

For g=1 or 2, M_w^0 has perfect amplitude [ℓ(w),d] and M_w^1 has perfect amplitude [0,ℓ(w)]. In genus one the stronger concentration holds: the identity chamber lies in degree zero for both boundary variants, and the long chamber in degree one. General-g integral sharp amplitude is Conjecture 5.6.1, not a theorem of this roadmap. Rational all-g amplitude is §8.4. (BP-Hida, Conjecture 5.6.1 and Proposition 5.6.3, p. 58).

A proof route is as follows: Reduce perfect amplitude to residue fields by the local perfectness criterion. For g=2 use the affine ordinary minimal locus and the two-affine cover of the p-rank≥1 locus, with subcanonical higher-direct-image vanishing. Use duality for the remaining chambers and distinguish this proof from the general-g conjecture.

*Needs:* §4.5; §4.8; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21.

The statement includes degree-one Siegel cohomology without asserting that its specialization is flat.

### Examples

The continuous dual of C⁰(T′,ℤ_p)[0] is Λ′[0]. In degree i the dual is in degree −i; reconstruction returns degree i. At ν(u)=u, the arithmetic base-change map is [u]↦u⁻¹. For g=2,w=s1 the canonical amplitude is [1,3], while the dual cuspidal partner has amplitude [0,2].

### Dependencies

AutomorphicBundles §B2.3; AutomorphicBundles §B3.10; AutomorphicBundles §B3.2; AutomorphicBundles §B3.4; AutomorphicBundles §B3.general.1; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12; §2.7; §2.4; §2.6; §2.1; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; §3.4; §3.5; IntegralHeckeAndGaloisDeterminants §2.1; PadicFamilies §0a.24; PadicMeasuresIwasawaAlgebras §1.1; PadicMeasuresIwasawaAlgebras §1.7; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; gap:coherent-correspondences; gap:discrete-adic-solid-comparison; gap:siegel-ordinary-igusa; gap:solid-localization-kernel.


## Layer 5: Geometric higher Coleman cohomology

### 5.1 Bruhat geometry at finite level

Use the Coleman datum of Conventions.

Use the general abelian-type toroidal diamond and its Hodge–Tate period map to form finite-level topological inverse images of Bruhat cells and tubes. Their sufficiently small neighborhoods at classical flag points have affinoid inverse images in the minimal compactification. The de Rham Levi torsor admits reductions over the truncated cells compatible with finite Hecke correspondences. The Hodge–Tate Levi torsor is the cyclotomic µ-twist of the de Rham torsor; enlarge F so the relevant cyclotomic image lies in the reducing subgroup. This conclusion does not assert that the general toroidal tower is a perfectoid space, or that the finite-level period map is an algebraic morphism. (BP-Coleman, Theorem 4.5.2, p. 88; §4.6, pp. 89–98; Propositions 4.6.12, 4.6.14–4.6.15 and 4.6.19, pp. 94–98).

A proof route is as follows: Pass from the diamond period map to the finite-level topological quotient FL/K_p. Pull back the supplied root-coordinate tubes and truncated de Rham reduction. Use the minimal-compactification affinoid basis, and descend from auxiliary Hodge-type covers with matching fans.

*Needs:* §1.1; PerfectoidShimuraVarieties §6.3; PerfectoidShimuraVarieties §6.13; PerfectoidShimuraVarieties §6.13a; PerfectoidShimuraVarieties §6.14; PerfectoidShimuraVarieties §6.15; PerfectoidShimuraVarieties §4.5; PerfectoidShimuraVarieties §6.8; gap:abelian-affinoid-basis; ShimuraCompactifications §C3.1; ShimuraCompactifications §C3.9.

No nonempty ordinary locus is required. The nonsplit local case uses relative valuations and does not give an absolute Weyl action on analytic characters.

### 5.2 Allowed supported Bruhat neighborhoods

Use the Coleman datum of Conventions.

Fix t∈T++ with min(t)≥1, C=max(t), w, level and tube depth. Write B(r,s)=π_HT,Kp⁻¹(]C_w,k[r,s K_p), using the supplied extended-index tubes (−1 denotes the one-sided unbounded tube). For + an allowed pair is an open U and closed Z, with U and the complement of Z in the ambient Shimura space finite unions of quasi-Stein opens, for which some m,n,s≥0 satisfy B(m,n+s)⊂U∩Z⊂B(0,Cn) and B(m+s,n)⊂U⊂B(Cm,−1). For − require B(m+s,n)⊂U∩Z⊂B(Cm,0) and B(m,n+s)⊂U⊂B(−1,Cn). Define the local complex by supported cohomology RΓ_(U∩Z)(U,Vκ(−εD)) followed by finite-slope extraction for t (or t⁻¹ in the negative convention). (BP-Coleman, Definition 5.4.10, pp. 111–112; §5.4.1 and Theorem 5.4.3, pp. 108–109).

A proof route is as follows: Pull back the supplied extended Bruhat tubes and choose standard support pairs. Compute partial support by the supplied quasi-Stein Čech cone. Apply finite-slope extraction only to the potent compact Hecke action; retain chosen complex models.

*Needs:* §5.1; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; LocallyAnalyticDistributions §4.16; gap:projective-banach-cohomology.

The basic properties of this construction are:

- A pair (U,Z) with the four inclusions and finite quasi-Stein covers.
- U=B(s,−1), Z=B(0,s) is a standard positive pair for sufficiently large depth.
- U=B(−1,s), Z=B(s,0) is a standard negative pair.
- C_w,κ^±,ε(U,Z)^fs from the supported Čech model.
- Its T^± and prime-to-p Hecke actions are compatible on allowed refinements.

**Checks.**

- The positive standard pair keeps B(0,s) as the closed constraint and B(s,−1) as the open; swapping them generally fails the open/closed requirements.
- The negative standard pair reverses the two tube directions, rather than using the positive pair twice.
- For an affinoid disc and closed Z=∅ the supported complex is zero; unrestricted H^0 of the disc is not zero.

Boundary cuspidality and partial Bruhat support are two separate operations.

### 5.3 Finite-slope analytic continuation

Use the Coleman datum of Conventions.

All allowed support pairs for fixed w, level and algebraic coefficient produce canonically isomorphic finite-slope cohomology and the corresponding compatible local objects. The normalized t action is potent compact: a power is represented by a compact operator on the bounded projective Banach Čech model. Its finite-slope part is independent of the chosen strictly positive t in the compatible Hecke monoid. The statement applies to finite nebentypus and both boundary variants; full infinite-slope supported cohomology need not be invariant. (BP-Coleman, Theorem 5.4.3, pp. 108–109; Theorem 5.4.12, p. 112).

A proof route is as follows: Use the t-induced root-coordinate contractions to compare a pair and a strictly improved pair. Represent the correspondence by pullback, coefficient map and trace on the finite quasi-Stein cover. Apply compact restriction and invert t on finite slopes to make the support comparison maps invertible.

*Needs:* §5.2; LocallyAnalyticDistributions §4.16; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; gap:projective-banach-cohomology.

Compactness is proved for a representative/power, not for every representative in the homotopy class.

### 5.4 Finite-slope level and character control

Use the Coleman datum of Conventions.

For `K_(p,m,b)`, changing m with b fixed induces finite-slope equivalences: use pullback for + and trace for −. Changing b is governed by invariants for the finite quotient of the torus-unit subgroup, with the chosen finite character. Over F these finite invariants are exact. At arbitrary character conductor choose a sufficiently deep b; no integral division by the finite quotient order is asserted. (BP-Coleman, Theorem 5.4.14, p. 113).

A proof route is as follows: Factor the two level maps through iterated positive/negative Hecke correspondences. Invert the compact positive torus operator on finite slopes. Apply characteristic-zero finite-group descent for the remaining torus quotient.

*Needs:* §5.3; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; gap:coherent-correspondences; PerfectoidShimuraVarieties §6.12.

The m and b parameters have different control mechanisms.

### 5.5 The finite-slope Bruhat Cousin spectral sequence

Use the Coleman datum of Conventions.

For each sign and boundary variant there is a Hecke-equivariant spectral sequence E1^(r,q)=⊕_(ℓ±(w)=r) H_w^(r+q)(K^p,κ,χ,ε)^±,fs ⇒ H^(r+q)(K^p,κ,χ,ε)^±,fs, whose target is classical toroidal coherent cohomology at the matching p-level/character. The filtration comes from the length filtration by closed Bruhat unions on the flag quotient. There is no regularity assumption here and every contributing w is kept. (BP-Coleman, Theorem 5.5.1, pp. 113–115).

A proof route is as follows: Pull back the finite closed Bruhat filtration to the toroidal space. Apply the supported localization triangles to obtain the exact couple. Use continuation to identify each finite-slope graded term and verify Hecke compatibility on common fan refinements.

*Needs:* §5.3; §5.4; gap:coherent-correspondences; ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13; AutomorphicBundles §B3.2; AutomorphicBundles §B3.4; AutomorphicBundles §B3.general.1.

In rank one the two columns give a four-term exact sequence rather than a forced direct sum.

### 5.6 Cuspidal vanishing by Bruhat length

Use the Coleman datum of Conventions.

For each w and either sign the cuspidal finite-slope local cohomology is concentrated in [0,ℓ±(w)]. This uses subcanonical higher-direct-image vanishing to the minimal compactification and the quasi-Stein/affinoid tube cover with its support codimension. The result holds for the supported general abelian-type datum; it is not a statement that every canonical bundle has acyclic pushforward to the minimal compactification. (BP-Coleman, Theorem 4.1.7, pp. 51–53; Theorem 5.6.1, pp. 115–117).

A proof route is as follows: Push the subcanonical coefficient to the minimal compactification using the supplied R^iπ_* vanishing. Compute supported cohomology on the finite quasi-Stein cover of affinoid inverse images. Count the length/codimension of the local Bruhat directions and apply finite-slope continuation.

*Needs:* §5.3; ShimuraCompactifications §C3.1; ShimuraCompactifications §C3.9; AutomorphicBundles §B3.2; AutomorphicBundles §B3.4; AutomorphicBundles §B3.general.1; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; gap:projective-banach-cohomology; gap:abelian-subcanonical-vanishing.

The ε=1 hypothesis cannot be dropped at this step.

### 5.7 Finite-slope Serre duality and complementary ranges

Use the Coleman datum of Conventions.

There is a nondegenerate pairing H_w^i(κ,χ,1)^±,fs × H_w^(d−i)(κ∨,χ⁻¹,0)^∓,fs→F, adjoint for t and t⁻¹ and inverse prime-to-p double cosets. It is perfect on each matching finite-dimensional generalized eigenblock. Consequently canonical finite-slope cohomology is concentrated in [ℓ±(w),d]. The pairing on the whole finite-slope union is not identified with the unrestricted algebraic dual of that union. (BP-Coleman, Theorems 5.7.1–5.7.3, pp. 117–120; Theorem 2.7.1 and Proposition 2.7.3, pp. 31–32).

A proof route is as follows: Apply the supplied dagger LB/Fréchet support duality to the supported coefficient complex. Use coefficient evaluation and the canonical bundle V_(−2ρ_nc)(−D). Match compact Hecke slope projectors under transposition, then dualize the cuspidal vanishing range.

*Needs:* §5.6; §1.1; AdicSpacesPartIV §F1.10; AutomorphicBundles §B3.2; AutomorphicBundles §B3.4; AutomorphicBundles §B3.general.1; gap:banach-support-duality.

**Checks.**

- For a smooth affinoid dagger surface and a finite line, H⁰ pairs with H_c² using Ω². The supported complex is already in degree 2; adding another [−2] would place it in degree 4. For a point d=0 this reduces to F×F→F, multiplication.

The shift pairs degrees i and d−i and exchanges ε=1 with ε=0.

### 5.8 Interior cohomology and Cousin subquotients

Use the Coleman datum of Conventions.

Define H_w,!^i as the image of local cuspidal to canonical H_w^i. It vanishes outside i=ℓ±(w). The global interior H_!^i=Im(H_cusp^i→H_can^i) is a subquotient of degree-i cohomology of the interior Cousin complex built from H_w,!^(ℓ±(w)); equality is not asserted for arbitrary boundary. If the Shimura variety is compact, D=∅ and the local cohomology is concentrated exactly at ℓ±(w), so the Cousin complex computes the full cohomology. (BP-Coleman, Corollaries 5.7.5 and 5.7.7 and Remark 5.7.6, p. 120; Corollary 5.8.1, pp. 120–121).

A proof route is as follows: Intersect the two local cohomological ranges. Map the cuspidal filtered complex to the canonical one and take the surviving interior terms. Use the induced spectral-sequence filtrations to obtain the subquotient; specialize to identical coefficients when D is empty.

*Needs:* §5.5; §5.7.

The basic properties of this construction are:

- H_w,!^i has source the cuspidal H_w^i(κ,χ,1)^±,fs and target the canonical H_w^i(κ,χ,0)^±,fs, the map being induced by O(−D)→O; it is a Hecke submodule of the target, stable under T^± and the prime-to-p double cosets, and is finite-dimensional on each slope block.
- H_w,!^i=0 for i≠ℓ±(w), because the cuspidal source vanishes above ℓ±(w) and the canonical target vanishes below it.
- When the two boundary variants agree (D=∅), the map is the identity and H_w,!^i=H_w^i; the same holds for global H_!^i.
- The global H_!^i is the image of H_cusp^i→H_can^i with its induced Hecke action, and it is a subquotient of the degree-i cohomology of the interior Cousin complex.

**Checks.**

- If the cuspidal-to-canonical map on a one-dimensional eigenblock F is zero, the interior group is 0 although both groups are F; replacing the image by the target would give F.
- If that map is the identity of F, the interior group is F; replacing the image by the kernel would give 0.
- For GL₂ (d=1) and w=id, cuspidal local cohomology lies in degree 0 and canonical in degrees [0,1], so H_id,!^1=0 even when canonical H_id^1 is nonzero. At a fixed weight the interior group is the image of the fixed-weight map: the family map t:F⟨t⟩→F⟨t⟩ has image (t) with fibre F at t=0, whereas the specialized map 0:F→F has image 0, so the fibre of a family image is not the fixed-weight interior group.

Taking images is not an exact functor on general spectral sequences.

### 5.9 Proved geometric slope bounds

Use the Coleman datum of Conventions.

A smooth eigencharacter in local canonical or cuspidal + cohomology has valuation λ≥w⁻¹w0Mκ and λ≥w⁻¹w0Mκ+w⁻¹2ρ_nc. In − cohomology it has λ≤w⁻¹κ and λ≤w⁻¹κ+w⁻¹2ρ_nc. The sharper desired + bound λ≥w⁻¹w0M(κ+ρ)+ρ and − bound λ≤w⁻¹(κ+ρ)−ρ are not used here. Their full general noncompact versions remain conjectural. Interior (hence compact) and Siegel improvements are separate downstream Layer 7 and Layer 8 targets. (BP-Coleman, Conjecture 5.9.2 and Theorem 5.9.6, pp. 122–124).

A proof route is as follows: Choose the integral lattice in the algebraic representation on the reduced torsor. Estimate pullback and trace on the small smooth affinoids, retaining their separate normalization factors. Retain the two proved bounds here; the downstream interior and integral Siegel arguments supply sharp improvements.

*Needs:* §5.3; §1.2; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; gap:coherent-correspondences; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; gap:projective-banach-cohomology.

Do not use the conjectural sharp bound to prove general full-space classicality.

### 5.10 Geometric classicality in regular and singular weights

Use the Coleman datum of Conventions.

On the geometric strongly small region of Layer 1, all local terms with w∉Cκ± vanish. If κ+ρ is regular and Cκ±={w}, the Cousin edge map is an equivalence between local finite-slope and global classical cohomology in that region, for both boundary variants. For singular κ retain the entire compatible Cousin complex: with l_min=min_(Cκ±)ℓ± and l_max=max_(Cκ±)ℓ±, classical cuspidal cohomology lies in [0,l_max], canonical in [l_min,d] and interior in [l_min,l_max]. The downstream Layer 7 theorem supplies the compact improvement and Layer 8 the Siegel improvement; this target itself uses the proved strongly small region. (BP-Coleman, Theorems 5.12.3 and 5.12.5, p. 135).

A proof route is as follows: Apply the proved inequalities to kill every incompatible w-summand. Use the finite Cousin filtration for the regular equivalence. For a singular chamber set use the local degree ranges without inventing degeneration between the remaining strata.

*Needs:* §5.5; §5.9; §5.8; §1.2.

The equality endpoint of a small-slope threshold is not included.

### Examples

For GL₂ the Bruhat filtration has two columns and produces the four-term sequence of §9.2. Empty local support gives the zero complex. For a dagger surface, H⁰ with dual coefficient pairs with H_c² using Ω², not Ω¹.

### Dependencies

§1.2; §1.1; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; AdicSpacesPartIV §F1.10; AutomorphicBundles §B3.2; AutomorphicBundles §B3.4; AutomorphicBundles §B3.general.1; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; LocallyAnalyticDistributions §4.16; PerfectoidShimuraVarieties §4.5; PerfectoidShimuraVarieties §6.12; PerfectoidShimuraVarieties §6.13; PerfectoidShimuraVarieties §6.13a; PerfectoidShimuraVarieties §6.14; PerfectoidShimuraVarieties §6.15; PerfectoidShimuraVarieties §6.3; PerfectoidShimuraVarieties §6.8; ShimuraCompactifications §C3.1; ShimuraCompactifications §C3.9; ShimuraData §3.10; ShimuraData §3.13; ShimuraData §3.8; gap:abelian-affinoid-basis; gap:abelian-subcanonical-vanishing; gap:banach-support-duality; gap:coherent-correspondences; gap:projective-banach-cohomology.


## Layer 6: Analytic coefficients and derived families

### 6.1 Normalized analytic torus action

Use the Coleman datum of Conventions.

Use the modified torsor map e[t] from the t-conjugation on the reduced unipotent quotient, followed by (w⁻¹w0Mρ+ρ)(t)⁻¹Tr_p1, to act on V_(ν_A)^n-an. Use the transpose inverse action for D_(ν_A)^n-an. Units u∈T(ℤ_p) act by ν_A(u) on + and ν_A(u)⁻¹ on −. Consequently the algebraic comparison is T-equivariant as C_w(κ,χ)^+→C_w,an(ν)^+(−ν_alg), and C_w,an(ν)^−(ν_alg)→C_w(κ∨,χ⁻¹)^−. This action depends on t itself, including its unit part. (BP-Coleman, Lemma 6.3.10 and Lemma 6.3.11, pp. 155–156; §6.5.4, p. 160).

A proof route is as follows: Modify the ordinary Hecke torsor map by the actual t-conjugation, before taking associated sections. Insert the displayed trace character and check the action on torus units. Apply duality to distributions and reconcile the algebraic comparison through the algebraic-character twists.

*Needs:* OverconvergentAutomorphicForms §8.7; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; gap:coherent-correspondences; OverconvergentAutomorphicForms §8.6; AutomorphicBundles §B1.4; AutomorphicBundles §B1.5; AutomorphicBundles §B1.9.

The basic properties of this construction are:

- The modified e[t] and inverse trace normalization on analytic coefficients.
- u acts by ν_A(u) for V, and by its inverse for D.
- The maps for t1,t2 compose to the map for t1t2 on common allowed levels.
- The comparison maps become equivariant after twists −ν_alg on + and +ν_alg on −.

**Checks.**

- A nontrivial unit character acts nontrivially even though its double coset is the identity.
- If ν_A(u)=c, the paired distribution action is c⁻¹, so the evaluation pairing is invariant.
- For ν_alg(t)=p^a, twisting the analytic + action by −ν_alg subtracts a from the slope.

The T^±/T(ℤ_p) double-coset operator alone does not carry this analytic unit action.

### 6.1a Abelian-type descent of analytic coefficients

Use the Coleman datum of Conventions. Choose a Hodge-type datum (G₁,X₁) and the auxiliary datum B₁=G₁×_(G₁^ab)T of PerfectoidShimuraVarieties §6.4, with neat K⊆G(𝔸_f) and K′⊆B₁(𝔸_f) chosen as in PerfectoidShimuraVarieties §6.6(3), so that f(K′) is normal in K and the neutral toroidal map f:S^tor,0(B₁)_(K′,Σ)→S^tor,0(G)_(K,Σ) is finite and generically finite étale with group Δ=Δ(K,K′) (PerfectoidShimuraVarieties §6.9), and with a cone decomposition Σ perfect for G₁ and smooth for G. A Σ that is perfect for G₁ and smooth for G is a hypothesis of this theorem: the descent formula (1) and the invariant-factor statement (3) need no smoothness and pass to refinements of Σ by the projection formula (BP-Coleman Lemma 6.6.4 and its proof, p. 164), whereas the projectivity statement (2), which this roadmap adds, uses the regularity of the target. Let ν_A:Tʳ(ℤ_p)→A^× be n-analytic, K_p⊆K_(p,m′,0) with m′>n, and let ν′_A be the induced character for B₁. Prove the following.

1. On the neutral components of the depth-n tube preimages (π^tor_HT)⁻¹(]C_w,k[_(n,n)K_p), f restricts to a finite map. The Bruhat reduction M_dR,n,K_p for G is the Δ-quotient of the pushout of the B₁ reduction, and the B₁ reduction is the fibre product of the G₁ reduction with the trivial reduction on the zero-dimensional T-Shimura variety. Consequently V^n-an_(ν_A)=(f_*V^n-an_(ν′_A))^Δ, and likewise for D^n-an and for the twists by −D. These identities concern sheaves; they are not asserted to intertwine the Hecke actions at level B₁.
2. Every point of the G tube preimage has an affinoid neighbourhood U whose preimage at G₁-level is a Δ-stable union of pregood affinoids. On such U the sections of V^n-an_(ν_A)(−εD) and D^n-an_(ν_A)(−εD) are projective Banach O(U)⊗̂A-modules: the coefficients are locally projective Banach sheaves on the tube preimage, which is the premise of the projective-Banach coefficient contracts consumed in Layer 6.
3. For such U, RΓ(U,V^n-an_(ν_A)(−εD)) is the Δ-invariant direct factor of the corresponding B₁ complex, and the B₁ complex is computed from the G₁ complex in the same way.

For a Hodge-type datum, take G₁=G and Δ trivial, and the statement reduces to the finite-flat trivialization supplied there, with no second construction. (BP-Coleman, Definition 4.4.3, p. 66; Principle 4.4.44, p. 84; Remark 4.6.6, pp. 91–92; Remark 4.6.13 and Proposition 4.6.15, p. 95; Lemma 6.6.4 and its proof, pp. 163–164).

A proof route is as follows: Over a pregood affinoid at G₁-level, trivialize M_dR,n after a finite flat cover at a deeper level K′_p; there the coefficient is the completed tensor product of the cover's ring with the analytic functions on the reduction group, and its descent to the affinoid is the invariant part under the finite level-change group, a direct factor because the group order is invertible in the characteristic-zero coefficient field. Extend to B₁ by the trivial torus part. Since the target is regular and the source, a normal toroidal embedding, is Cohen–Macaulay of the same dimension, the finite map f is flat (miracle flatness); pushforward preserves projective Banach modules and Δ-invariants are a direct factor by averaging, which gives local projectivity and the cohomology statement on G.

*Needs:* OverconvergentAutomorphicForms §8.6; OverconvergentAutomorphicForms §8.7; PerfectoidShimuraVarieties §3.13; PerfectoidShimuraVarieties §6.4; PerfectoidShimuraVarieties §6.5; PerfectoidShimuraVarieties §6.6; PerfectoidShimuraVarieties §6.7; PerfectoidShimuraVarieties §6.9; PerfectoidShimuraVarieties §6.14; §5.1; ShimuraCompactifications §C3.1; AdicSpacesPartIII §R3.8.

**Checks.**

- For a Hodge-type datum, G₁=G, T acts trivially and Δ=1: the statement is the supplier's finite-flat trivialization on pregood affinoids, and taking invariants changes nothing.
- For the split adjoint datum PGSp₄, which is of abelian type but not of Hodge type, the GSp₄ Siegel datum is a Hodge-type cover. The descent here must be applied with the actual Δ and the induced character ν′_A before any projective-Banach cohomology statement is used for PGSp₄; the Siegel Levi still has a nontrivial root, so the coefficient is a genuinely infinite-rank analytic Banach sheaf, and its finite-rank algebraic subsheaves do not settle the question.
- Averaging over Δ is used only with |Δ| invertible: for Δ={1,σ} of order 2, Δ-invariants of the augmentation ℤ_2[Δ]→ℤ_2 is the map ℤ_2(1+σ)→ℤ_2 with image 2ℤ_2, so invariants are not exact integrally; after inverting 2 the image is ℚ_2 and the averaging idempotent (1+σ)/2 exists. The argument therefore gives no integral projectivity.
- Flatness of f uses the regularity of the target, not finiteness alone: over a field F of characteristic 0, the quotient map 𝔸²→𝔸²/{±1} is finite of generic degree 2, but F[x,y] is not flat over F[x²,xy,y²], since its fibre over the origin, F[x,y]/(x²,xy,y²) with basis 1,x,y, has dimension 3. A G with only a simplicial (non-smooth) Σ would expose the projectivity statement (2) to exactly this failure, which is why Σ is taken smooth for G.

### 6.2 Supported analytic family cohomology

Use the Coleman datum of Conventions.

Choose ν_A n-analytic and m′>n. For an allowed support pair also require U∩Z⊂B(n,n), so the coefficient sheaf is defined on a neighborhood of the support. Use RΓ_(U∩Z)(U,V_(ν_A)^n-an(−εD)) for + and the distribution coefficient D_(ν_A)^n-an(−εD) with opposite support for −, represented by the finite quasi-Stein Čech cone. After extracting finite slopes denote its cohomology by H_w,an^i(ν_A,ε)^±,fs. Complex representatives retain their choices: the source proves canonical independent cohomology groups, not a unique chosen equivariant complex for all compact operators simultaneously. (BP-Coleman, §6.4.1, pp. 156–157; Theorems 6.4.3, 6.4.5, 6.4.8, 6.4.10, pp. 157–159).

A proof route is as follows: Refine the supports into the depth-n tube on which the sheaves exist. Use the supplied projective Banach acyclicity and finite-cover cone to compute support. Apply the radius-improving compact correspondence, then identify cohomology under changes of radius, support and m′.

*Needs:* §6.1; §6.1a; §5.2; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; LocallyAnalyticDistributions §4.16; OverconvergentAutomorphicForms §8.6; OverconvergentAutomorphicForms §8.7; gap:projective-banach-cohomology.

The basic properties of this construction are:

- A chosen supported projective Banach complex and its compact Hecke representative.
- Increasing n through analytic radii gives the canonical finite-slope cohomology isomorphism, with the distribution maps in the opposite direction.
- Two allowed pairs inside the coefficient tube give canonically identified finite-slope cohomology.
- Increasing m′ gives + pullback and − trace isomorphisms on finite slopes.

**Checks.**

- Empty allowed local support produces zero cohomology, with the zero slope complex.
- Replacing n by n+1 with m′>n+1 leaves finite-slope cohomology unchanged, while the coefficient modules themselves need not be equal.
- A pair with support outside B(n,n) is not an analytic-coefficient model of this definition, even if it is allowed for an algebraic bundle.

Independence concerns finite-slope cohomology, with compatible maps; it is not unrestricted derived canonicality.

### 6.3 Finite perfect family slope blocks

Use the Coleman datum of Conventions.

Locally on an affinoid weight space and a slope-adapted finite window for a chosen potent compact t, the family cohomology is computed by a bounded finite-projective A-complex. Its H^i is finite over A and commutes with flat affinoid restriction. Quasi-isomorphic compatible models give the same finite-slope cohomology and Hecke support. The unsplit full family complex can have infinite projective Banach terms; a cohomology sheaf on a finite block need not be projective. (BP-Coleman, §6.1.10–6.1.17, pp. 144–147; Proposition 6.1.11, p. 144; Lemma 6.1.15 and Remark 6.1.16, p. 146; Theorem 6.4.3, p. 157).

A proof route is as follows: Take a compact representative of a suitable t-power. Apply the imported simultaneous degreewise Riesz projectors on an adapted neighborhood. Use functoriality of the differential and flat affinoid restrictions.

*Needs:* §6.2; LocallyAnalyticDistributions §4.16.

No claim that all cohomology sheaves are locally free over weight space.

### 6.4 The weight-specialization Tor spectral sequence

Use the Coleman datum of Conventions.

For x in a weight affinoid and each desired slope h, shrink to Spa(B) containing x and choose an adapted h′≥h. Then E2^(p,q)=Tor_B^(−p)(H_w,an^q(ν_B,ε)^±,≤h′,k(x))⇒H_w,an^(p+q)(ν_x,ε)^±,≤h′. It is compatible with the Hecke action and covers all finite-slope eigenpackets as the windows vary. Higher Tor terms generally survive; identifying H^i⊗k(x) with the fiber cohomology requires extra flatness or amplitude hypotheses. (BP-Coleman, Theorem 6.5.2 and Remark 6.5.3, p. 160).

A proof route is as follows: Use the projective Čech model to identify its derived coefficient fiber. Select the adapted perfect slope block simultaneously before and after specialization. Apply the supplied hyper-Tor spectral sequence and retain its total grading.

*Needs:* §6.3; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10.

For A=F⟨t⟩ and [A --t→ A] in degrees 0,1, the t=0 fiber has H^0=F from Tor_1(A/(t),F), although H^0 of the family is zero.

### 6.5 Locally analytic BGG exactness

For the split reductive Levi M/F, a BP analytic subgroup M₁, its analytic neighborhoods and contracting monoid T^(M,+), and M-dominant integral κ, prove exactness of 0→Vκ⊗V_sm,1→V_lan,κ(w0Mκ)→⊕_(ℓ(v)=1)V_lan,v·κ(w0M(v·κ))→⋯→V_lan,w0M·κ(w0M(w0M·κ))→0, with v·κ=v(κ+ρ_M)−ρ_M. Here V_sm,1 is locally constant induction of the trivial Borel character, and analytic functions are germs on the specified neighborhoods of M₁. Prove that Vκ→Vκ⊗V_sm,1 becomes an isomorphism on finite slope for a strictly contracting Levi operator, and establish the reversed continuous-distribution resolution with its dual twists. No density of M₁ in M(F) is assumed. (BP-Coleman, Theorem 6.2.16, Corollary 6.2.18 and §6.2.20, pp. 151–153).

*Needs:* OverconvergentAutomorphicForms §0.4; OverconvergentAutomorphicForms §8.7; LieHighestWeight Layer 3.

The basic properties of this construction are:

- The differentials are enveloping-algebra maps with square zero, and all twists are retained in equivariance.
- The kernel is locally algebraic induction Vκ⊗V_sm,1; it is not asserted to be Vκ before taking finite slope.
- Strong continuous duality reverses arrows and the contracting monoid, giving the distribution resolution.

**Checks.**

- For SL₂ and κ=0, the first differential on analytic functions in z is d/dz; its kernel is locally constant functions, which are larger than global constants on a disconnected analytic neighborhood.
- For SL₂ and κ=1 the first differential is d²/dz². It kills 1 and z but sends z² to 2≠0 in F, even for residual prime p=2; characteristic-zero coefficients are essential.
- With t=diag(p,p⁻¹), on untwisted analytic functions V_lan,1 the action is f(z)↦f(p²z) and z^n has slope 2n, so 1,z,z² have slopes 0,2,4. The term V_lan,1(w0Mκ) of the sequence is twisted by w0Mκ=−1, which subtracts 1: its slopes are −1,1,3, and its degree≤1 kernel matches V_1, whose slopes are −1,1. At p=3 the eigenvalues on 1 and z after the twist are 1/3 and 3, not 1 and 9. For W_M={1} the complex has only its identity column.

### 6.6 The automorphic analytic BGG spectral sequence

Use the Coleman datum of Conventions.

Let ν=ν_algχ, κ=κ_w(ν_alg) M-dominant, u=w0M w, and ν_v=(u⁻¹vu)·ν_alg for v∈W_M, where a·η=a(η+ρ)−ρ. The + spectral sequence has E1^(p,q)=⊕_(v∈W_M,ℓ(v)=p) H_w,an^q(ν_vχ,ε)^+,fs(−ν_v)⇒H_w^(p+q)(κ,χ,ε)^+,fs. Its paired − version has ℓ(v)=−p, twist +ν_v, and target the algebraic coefficient κ∨ with χ⁻¹. The exact locally analytic BGG resolution, including its locally constant factor and finite-slope algebraic comparison, is proved in §6.5; only its automorphic supported-cohomology application belongs here. (BP-Coleman, Theorem 6.2.16 and Corollary 6.2.18, pp. 151–152; Theorem 6.5.5, pp. 160–161).

A proof route is as follows: Apply the analytic BGG resolution after descending to the torsor. Use finite-slope acyclicity of the extra locally constant part to identify the algebraic term. Apply the supported-cohomology double complex, recording every character twist in the E1 page.

*Needs:* OverconvergentAutomorphicForms §8.7; §6.1; §6.3; OverconvergentAutomorphicForms §0.4; OverconvergentAutomorphicForms §8.6; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; §6.5.

The dot action is on algebraic weights; it never acts on arbitrary analytic ν_A.

### 6.7 A proved BGG exclusion region

Use the Coleman datum of Conventions.

For a + algebraic comparison with smooth normalized slope λ and the ν_v of §6.6, put a_an=−w⁻¹w0Mρ−ρ. Define BGGsafe+(w,κ,λ) by requiring, for every v≠1 in W_M, failure of at least one inequality λ≥a_an−ν_v or λ≥a_an+w⁻¹2ρ_nc−ν_v. These are exactly the two proved analytic lower bounds after the −ν_v twist. Define the − condition by transposed Serre duality: for the comparison with target κ∨ and smooth slope λ−, use BGGsafe+(w,κ,−λ−). The symbol BGGsafe refers to these sufficient inequalities; source issue E3 concerns the different printed sss_(M,w) formulas. (BP-Coleman, Theorem 6.8.3, pp. 167–168, combined with Theorem 6.5.5, pp. 160–161; compare Definition 5.11.14, p. 134).

A proof route is as follows: For each nonidentity BGG weight subtract ν_v from the proved + analytic bounds. Negate their conjunction so at least one necessary inequality fails. Transport the exclusion to the − pairing using inversion of eigencharacters.

*Needs:* §6.6; §1.2.

The basic properties of this construction are:

- The finite conjunction of the explicit cone exclusions over v≠1.
- If W_M={1}, the BGG exclusion condition is vacuous.
- Under the proved bounds, every nonidentity twisted BGG E1 eigenblock at λ is zero.
- The negative comparison uses κ∨ and −λ− in the positive test.

**Checks.**

- For modular curves M is a torus; BGGsafe is true for every λ, and geometric smallness still supplies classicality.
- If λ equals both applicable thresholds for a nonidentity v, it is not excluded; equality is not a strict classicality conclusion.
- If λ fails the first inequality but satisfies the second, that BGG term is excluded by the disjunction.
- For GSp₄, w=1, v=s0 and t=t₂, a_an=(3,3;0) pairs to −3, ν_v=(2−k₁,4−k₂;k₁+k₂) pairs to −3, and w⁻¹2ρ_nc pairs to 3. The two twisted thresholds are −3−(−3)=0 and −3+3−(−3)=3. Thus λ(t₂)<3 excludes this term, agreeing with the sharp identity-column bound 3; at λ(t₂)=3 this one-operator test gives no exclusion.

This is a sufficient theorem-backed region, with no claim of an optimal converse.

### 6.8 Analytic coefficient control from proved bounds

Use the Coleman datum of Conventions.

On each eigenblock satisfying BGGsafe, the algebraic-to-analytic + comparison (with twist −ν_alg) is an equivalence on finite-slope cohomology; its Serre-dual − comparison (with twist +ν_alg) is likewise an equivalence. This conclusion uses finite slope blocks and the BGG spectral sequence, not an unproved exactness of unrestricted analytic induction cohomology. (BP-Coleman, Corollary 6.8.4 and Remark 6.8.5, p. 168, via the explicit bound argument in Theorems 6.5.5 and 6.8.3).

A proof route is as follows: Apply the two slope bounds to each nonidentity shifted BGG term. Use the finite spectral sequence with only its identity column remaining. Apply the dual coefficient comparison for the negative theory.

*Needs:* §6.7; §6.6; §5.7; §6.3.

Combining this with geometric classicality is a separate step: coefficient classicality alone does not identify local with global cohomology.

### 6.9 Family vanishing, pairings and bottom torsion freeness

Use the Coleman datum of Conventions.

Over weight affinoids, cuspidal H_w,an^i is zero outside [0,ℓ±(w)] and canonical H_w,an^i is zero outside [ℓ±(w),d]. Over a domain A the canonical bottom H_w,an^(ℓ±(w)) is A-torsion-free. There are family pairings between complementary ±, cusp/canonical degrees into A, whose coefficient-field instances are nondegenerate and perfect on matching finite-slope blocks. No derived perfect duality of arbitrary full family cohomology modules, or flatness over A, is asserted from nondegeneracy on field fibers alone. (BP-Coleman, Theorem 6.6.1, pp. 161–164; Theorems 6.7.1–6.7.3, pp. 164–167).

A proof route is as follows: Use the integral local-trivialization form of subcanonical acyclicity for the analytic Banach coefficient. Apply the Bruhat support dimension argument to obtain the cuspidal range. Over fields use finite-block Serre duality; use perfect-family fiber amplitude to obtain the canonical range and bottom-degree torsion freeness.

*Needs:* §6.3; §6.4; §6.1a; §5.6; §5.7; ShimuraCompactifications §C3.1; ShimuraCompactifications §C3.9; AdicSpacesPartIV §F1.10; gap:banach-support-duality; gap:abelian-subcanonical-vanishing.

A torsion-free finite module over a higher-dimensional affinoid need not be projective.

### Examples

Over A=F⟨t⟩, the complex A→tA in degrees zero and one has H⁰=0 and H¹=A/(t). At t=0 its derived fibre has H⁰=F and H¹=F; Tor₁(A/(t),F)=F supplies the new bottom group. For GL₂ and ν=0, the coefficient supplier gives κ=−2ρ at w=1 and κ=0 at w=s.

### Dependencies

§1.2; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; AdicSpacesPartIV §F1.10; AutomorphicBundles §B1.4; AutomorphicBundles §B1.5; AutomorphicBundles §B1.9; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; §5.2; §5.1; §5.7; §5.6; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; LieHighestWeight Layer 3; LocallyAnalyticDistributions §4.16; OverconvergentAutomorphicForms §0.4; OverconvergentAutomorphicForms §8.6; OverconvergentAutomorphicForms §8.7; PerfectoidShimuraVarieties §3.13; PerfectoidShimuraVarieties §6.4; PerfectoidShimuraVarieties §6.5; PerfectoidShimuraVarieties §6.6; PerfectoidShimuraVarieties §6.7; PerfectoidShimuraVarieties §6.9; PerfectoidShimuraVarieties §6.14; ShimuraCompactifications §C3.1; ShimuraCompactifications §C3.9; gap:abelian-subcanonical-vanishing; gap:banach-support-duality; gap:coherent-correspondences; gap:projective-banach-cohomology.


## Layer 7: Eigenvarieties and interior deformation

### 7.1 The cohomological eigenvariety

Use the Coleman datum of Conventions.

Let W represent continuous characters of Tʳ(ℤ_p), and let That represent characters of T(ℚ_p) whose unit restriction factors through Tʳ. Glue the family finite-slope cohomology sheaves for all w, i, signs and boundary variants. First replace the negative torus action by t↦t⁻¹, so paired torus operators have equal eigencharacters. Let Z⊂That be the common cohomological support, defined by the annihilator of their direct sum, and let E be the relative affinoid spectrum over Z of the coherent algebra generated by the spherical prime-to-S Hecke action on that sum. Thus E→Z is finite; E→W is locally quasi-finite and partially proper. E need not be globally finite, flat, reduced or equidimensional over W. The flat-restriction, gluing and valuative arguments for this cohomological construction are targets here. (BP-Coleman, §6.9 and Theorem 6.9.3, pp. 168–170).

A proof route is as follows: Use PadicFamilies §2a.16 for intrinsic annihilator support and representative independence on each finite slope complex. Use IntegralHeckeAndGaloisDeterminants §2.1 for the finite image on the finite cohomology sum, without projectivity of that sum. Prove compatibility with flat affinoid restriction and glue the image algebras and coherent support. Prove local quasi-finiteness and partial properness for this cohomological eigenvariety from the finite slope charts and the valuative extension of nonzero eigencharacters.

*Needs:* §6.3; §6.9; PadicFamilies §2a.16; PadicFamilies §2a.15; LocallyAnalyticDistributions §3.3; PhiGammaModulesAndIwasawaCohomology §4.0; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; gap:coherent-correspondences; IntegralHeckeAndGaloisDeterminants §2.1.

The basic properties of this construction are:

- E is the finite relative spectrum of the spherical Hecke image on the sum of supported cohomology sheaves.
- The finite map E→Z⊂That and its weight map to W.
- A geometric point is a pair (λ_p,λ^S) occurring in one of the specified cohomology supports, with λ_p on T(ℚ_p).
- The graded coherent cohomology sheaves on E, with pushforward equal to those on Z.
- After t-inversion on −, paired +/− eigencharacters agree on T(ℚ_p).

**Checks.**

- If every supported finite-slope cohomology sheaf vanishes, Z and E are empty.
- A nonzero Hecke eigenclass supported only in H^1 still contributes to E.
- Before inversion − has unit character ν⁻¹; after inversion it lies over ν in the same W as its + partner.

A degree-zero-only sum is insufficient; nilpotents are retained in the Hecke-image algebra.

### 7.2 Classical eigenpackets and a sufficient converse

Use the Coleman datum of Conventions.

Every finite-slope eigenpacket in any classical canonical or cuspidal H^i produces a point of E. Its weight is ν=ν_algχ, where ν_alg=−w⁻¹w0M(κ+ρ)−ρ for an element w of the full Weyl group arising from a Bruhat representative and a Levi BGG element; the resulting support is in the Bruhat representative part. Conversely, for locally algebraic ν=ν_algχ with dominant algebraic ν_alg and a point supported in a fixed w-part, if its smooth normalized λ_pν_alg⁻¹ satisfies both the explicit BGGsafe coefficient exclusion and geometric strongly small exclusion for κ_w(ν_alg), it comes from the corresponding classical finite-slope cohomology. The converse is a sufficient region; no optimality claim relies on the printed coefficient condition of source issue E3. (BP-Coleman, Theorem 6.9.3(1)–(2) and proof, pp. 169–170).

A proof route is as follows: Lift a classical eigenpacket to a nonzero graded term of the finite Bruhat Cousin sequence. Lift again to a Levi BGG term, and then to a Tor term supported on a family cohomology sheaf. For the converse choose maximal nonzero cohomology degree at the eigenpacket to survive specialization, then apply the two explicit exclusion theorems.

*Needs:* §7.1; §6.4; §6.6; §6.8; §5.10.

Not every classical class occurs at the family weight indexed solely by its initial Bruhat representative.

### 7.3 Interior family cohomology and its support

Use the Coleman datum of Conventions.

For each w and sign, let I_w^± be the image of H_w,an^(ℓ±(w))(ν_un,1)^±,fs→H_w,an^(ℓ±(w))(ν_un,0)^±,fs as a coherent sheaf on Z and E. Let Z!_w and E!_w be its supports, retaining the induced faithful image-algebra structure, and take their finite unions Z!,E!. They are the interior support, not an assumption that the image commutes with arbitrary coefficient change. (BP-Coleman, Proposition 6.9.5 and definitions before Theorem 6.9.7, pp. 170–171).

A proof route is as follows: Use the common finite-slope model to form the map from subcanonical to canonical cohomology. Take its coherent image on spectral blocks and glue under flat restrictions. Take the support and corresponding Hecke image; use the finite sum over w to define the unions.

*Needs:* §7.1; §6.9.

The basic properties of this construction are:

- The coherent image sheaf I_w^± in degree ℓ±(w).
- I_w^± injects into the canonical bottom-degree sheaf.
- A point lies in E!_w iff the localization of I_w^± there is nonzero.
- Flat affinoid restriction commutes with this coherent image.
- For D=∅ the cuspidal-to-canonical map is the identity, so I_w^± is the whole local cohomology sheaf.

**Checks.**

- A zero cuspidal-to-canonical map gives empty E!_w even if the full E has points.
- When D=∅ the interior image is all local cohomology, concentrated in ℓ±(w).
- For the map t:A→A over A=F⟨t⟩, its image (t) has a nonzero fiber (t)/t(t) at t=0 whereas the image of the specialized map is zero. Arbitrary image base change is false.

The word interior refers to the image of the boundary map, not compact support along both Bruhat directions.

### 7.4 Torsion freeness and interior specialization

Use the Coleman datum of Conventions.

The interior I_w^± is torsion-free over each domain weight affinoid, and its fiber maps surjectively onto the interior cohomology of the specialized analytic coefficient. At locally algebraic ν the + map from algebraic local interior to analytic interior is injective, and the − map from analytic interior to the Serre-dual algebraic local interior is surjective. The family pairings descend to these images. These are specific one-sided statements, not a general theorem that images commute with all base changes. (BP-Coleman, Proposition 6.9.5(1)–(4), pp. 170–171).

A proof route is as follows: Embed the interior image into the torsion-free bottom canonical sheaf. Use the upper cuspidal amplitude and the Tor sequence to control the specialized image. Use the BGG edge maps and the complementary degree ranges for the stated injectivity/surjectivity directions.

*Needs:* §7.3; §6.9; §6.4; §6.6.

The + and − algebraic comparison directions are asymmetric.

### 7.5 Interior eigenvariety dimension and deformation

Use the Coleman datum of Conventions.

Each nonempty E!_w and Z!_w, and their nonempty finite unions, is equidimensional of dimension dim W. Every finite-slope classical interior eigenclass in degree i gives a point of E!_w for some w with ℓ±(w)=i, at ν=ν_w(κ)χ in + (and the Serre-dual coefficient convention in −). It therefore deforms on a component of maximal weight dimension. This theorem applies to the interior support; the entire eigenvariety E can have components of other dimensions. On a domain weight chart the support of a nonzero finite weight-torsion-free interior module contains the generic point; use this chartwise to prove every irreducible component of its finite spectral/Hecke support has dimension dim W. (BP-Coleman, Theorem 6.9.7(1)–(3), pp. 171–172).

A proof route is as follows: Prove the finite-module support dimension statement over domain weight affinoids: the faithful finite image algebra embeds in the endomorphisms of a nonzero weight-torsion-free interior module, so it is weight-torsion-free and every minimal prime lies over the generic point. Use interior specialization and the algebraic comparison directions to place local classical specifications on E!_w. Use the interior Cousin subquotient to find w with the correct length for a global degree-i specification.

*Needs:* §7.4; PadicFamilies §2a.15; PadicFamilies §2a.16; §5.8.

No cuspidal/full-interior equality is presumed in the presence of boundary.

### 7.6 Sharp bounds on general interior cohomology

Use the Coleman datum of Conventions.

At locally algebraic weights, analytic interior slopes satisfy λ≥0 in + and λ≤0 in −. Consequently algebraic interior slopes satisfy λ≥w⁻¹w0M(κ+ρ)+ρ in + and λ≤w⁻¹(κ+ρ)−ρ in −. On the geometric small region, global interior H_!^i is confined to [l_min,l_max]. A degree-zero small-slope overconvergent cuspidal class becomes a classical canonical class; the argument alone does not prove its classical cuspidality. When D=∅ the interior map is the identity, so these sharp bounds apply to the whole local and global theory; geometric smallness and the corresponding sharp analytic BGG exclusion then suffice. Sharp bounds on all noninterior general noncompact cohomology remain a separate conjecture. (BP-Coleman, Theorem 6.10.1, pp. 172–173; Theorems 6.10.2–6.10.3 and Remark 6.10.4, p. 173).

A proof route is as follows: Use maximal-dimensional interior support and sufficiently dominant arithmetic weights to find a dense set of regular classical points in an adapted neighborhood: check that the fixed adapted slope window satisfies both geometric strong smallness and the BGGsafe exclusions as the dominant weight increases. This chamber-cone calculation is part of the proof, not density of arbitrary classical weights assumed as input. Apply the optimal bounds at those points and local constancy of eigenvalue valuations. Apply the interior Cousin subquotient and the sharp exclusions; retain the stated boundary limitation for degree zero.

*Needs:* §7.5; §7.2; §5.9; §5.8; §6.1; ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13.

For general data this improves the interior theorem, not every full-cohomology slope bound.

### Examples

For an acyclic family, the annihilator support and eigenvariety are empty. A family with only H¹=F gives nonempty support and must be retained. The map t:A→A over F⟨t⟩ has image (t); its fibre (t)/t(t)=F is nonzero, while the specialized map has image zero.

### Dependencies

AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; §5.10; §5.8; §5.9; §6.8; §6.1; §6.6; §6.9; §6.3; §6.4; IntegralHeckeAndGaloisDeterminants §2.1; LocallyAnalyticDistributions §3.3; PadicFamilies §2a.15; PadicFamilies §2a.16; PhiGammaModulesAndIwasawaCohomology §4.0; ShimuraData §3.10; ShimuraData §3.13; ShimuraData §3.8; gap:coherent-correspondences.


## Layer 8: Ordinary and finite-slope comparison

### 8.1 Integral supported overconvergent model

Use the integral Siegel datum of Conventions.

In the Siegel setting choose w, t∈T++ and 0<ε′<ε<1 rational so the correspondence improves the two degree neighborhoods. Blow up to separate the divisors at w_i and w_i±ε, w_i±ε′. Put U=U_(≥w−ε), and let Z_(<w+ε) be the degree constraint closed in the discrete-adic locale with quasi-compact open complement. Choose tildeωκχ=ωκχ(m(D+−D−)) so the normalized coefficient map factors through p2*tildeωκχ(D+)→p1!tildeωκχ(−D−). Define K_int=Rlim_s RΓ_(Zhat∩U mod p^s)(U mod p^s,tildeωκχ). The hat is formal closed support; it is not ordinary local cohomology at a reduced divisor. Include −ε_b D for the boundary choice ε_b=0,1. (BP-Hida, §6.2.1–6.2.8, pp. 61–62).

A proof route is as follows: Refine the degree model at the finitely many rational thresholds. Use the strict dynamics to absorb the bounded coefficient poles in m(D+−D−). Apply the formal-support triangle modulo p^s and then derived p-adic completion.

*Needs:* §3.2; gap:coherent-correspondences; §2.1; §2.8; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; SolidAnalyticRings §7.3; SolidAnalyticRings §7.4; gap:discrete-adic-solid-comparison; ResolutionOfSingularitiesCharacteristicZero §6.3; gap:solid-localization-kernel; gap:pel-subcanonical-vanishing.

The basic properties of this construction are:

- K_int is the displayed p-complete supported object with its chosen coefficient extension.
- The compatible p^s-level support triangles define its reduction system.
- The normalized t-map factors through the improving intermediate support.
- After inverting p the coefficient extension is the prescribed rational automorphic bundle on the analytic degree neighborhood.

**Checks.**

- Inverting p erases the vertical modification m(D+−D−).
- Deleting the formal closed support changes the support triangle and need not preserve the ordinary object.
- An arbitrary extension with no improving zeros/poles factorization is not an input to this construction.

The integral object includes its model and lattice choices; only its ordinary comparison is intrinsic.

### 8.2 Ordinary Hida–Coleman comparison

Use the integral Siegel datum of Conventions.

The normalized t acts on K_int, its ordinary localization is canonically C_w(κ,χ,ε_b), and K_int[1/p] is the analytic supported overconvergent complex. For every finite t-slope window, the image of H^i(K_int) in its finite-dimensional rational slope cohomology is a ℤ_p-lattice (over the finite coefficient extension when present). Via the comparison of the degree support core with the Hodge–Tate Bruhat core, the rational ordinary part identifies with the ordinary part of Layer 5 supported Coleman cohomology with the same normalized operator. This does not identify all finite slopes with ordinary cohomology. (BP-Hida, Proposition 6.1.7 and Proposition 6.1.11, pp. 59–61; Theorem 6.2.9, p. 62).

A proof route is as follows: Compare the degree/Bruhat intersections under all positive and transposed iterates. Sandwich the formal supported model between the two compact dynamical support pairs. Use the strict/compact comparison with its coefficient factorization and take the complete limit. Use the finite-cover bounded integral structures to show that the projected image on each finite-dimensional slope block is open and bounded.

*Needs:* §8.1; §2.8; §3.5; §5.3; PerfectoidShimuraVarieties §6.13; PerfectoidShimuraVarieties §6.13a; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; gap:projective-banach-cohomology.

A lattice here is a cohomology-level projected image, not a claim that the unsplit integral complex is finite.

### 8.3 Ordinary comparison in weight families

Use the integral Siegel datum of Conventions.

Let Spa(A[1/p],A) be a quasi-compact weight affinoid and ν_A its universal character, analytic at sufficiently large radius n. The analytically induced coefficient admits an integral extension on a sufficiently small degree neighborhood, with an improving coefficient factorization whose pole bound is independent of p-power reduction. Its integral supported ordinary cohomology is the base change of M_w along the Iwasawa character map matching Layer 4: [u]↦ν_A(u)⁻¹. Equivalently the analytic-weight family is obtained from the Iwasawa family by inversion on weight space. For a fixed continuous character to O_C, rationalization gives the analytic supported cohomology and its projected integral image is a lattice on every finite slope block. The sign convention is part of the comparison contract: the base-change map written in BP-Hida §6.2 is read with this inversion (source issue E8). (BP-Hida, Propositions 6.2.12–6.2.14 and Theorem 6.2.15, pp. 63–64; Remark 5.4.3, p. 57).

A proof route is as follows: Use radius improvement to kill ordinary cohomology of the analytic-to-topological induction kernel modulo p^r. Extend the torsor over a blow-up away from the ordinary stratum. Bound trace poles independently of r and apply the same supported ordinary comparison as for fixed coefficients. Use the admissible Iwasawa model for derived coefficient change; insert the character inversion fixed by arithmetic specialization.

*Needs:* §4.5; §4.6; §8.2; OverconvergentAutomorphicForms §8.7; §6.1; gap:siegel-ordinary-igusa; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; gap:pel-subcanonical-vanishing.

**Checks.**

- For ν_A(u)=u^k, the map is [u]↦u^(−k). With u=1+p and k=1 the images are (1+p)⁻¹ rather than 1+p; for k=0 both give 1. On the universal character this inversion is imposed before specialization.

The explicit character inversion must be checked when identifying a supplier implementation with either printed notation.

### 8.4 All-genus rational amplitude

Use the integral Siegel datum of Conventions.

For every genus g≥1, M_w^0[1/p] has perfect amplitude [ℓ(w),d] and M_w^1[1/p] has perfect amplitude [0,ℓ(w)]. The complementary universal Igusa complexes have the corresponding dual amplitude. These conclusions are rational: for g≥3 they do not settle the integral sharp amplitude conjecture. (BP-Hida, Corollary 6.2.17 and Remark 6.2.18, p. 64).

A proof route is as follows: Restrict the analytically normalized family to its ordinary direct factor. Apply the two established boundary-dependent degree ranges. Cover rational weight space and transport through the inversion map; dualize the universal statement.

*Needs:* §8.3; §6.9; §4.8.

Inverting p occurs before the all-genus conclusion.

### 8.5 Sharp Siegel bounds and classicality

Use the integral Siegel datum of Conventions.

For all Siegel strata the sharp geometric + bound is λ≥w⁻¹w0M(κ+ρ)+ρ and the − bound is λ≤w⁻¹(κ+ρ)−ρ. For analytic coefficients the bounds are λ≥0 in + and λ≤0 in −. Thus geometric small slopes suffice in Layer 5 classicality and vanishing. For coefficient comparison the larger proved BGG exclusion is λ not≥−ν_v for every v≠1 in + and its transposed dual in −; combine it with geometric smallness to obtain classical eigenvariety points. This is a theorem in every genus, with integral lattices supplied by Layer 8; no general noncompact abelian-type analogue is asserted. (BP-Hida, Corollaries 6.2.10 and 6.2.16, pp. 62, 64; BP-Coleman Theorems 5.12.3 and 6.5.5, pp. 135, 160–161).

A proof route is as follows: Show each normalized potent t preserves a lattice on every finite-dimensional slope block. Read off nonnegative normalized eigenvalue valuations and extend from the potent cone to the required positive cone. Remove the nonidentity BGG terms with the sharp analytic bound, and the unwanted geometric Cousin terms with geometric smallness.

*Needs:* §8.2; §8.3; §5.9; §5.10; §6.6; §6.7; §7.2.

At an equality threshold the excluded cone inequality holds; a strict classicality test does not include that boundary.

### Examples

At p inverted, a vertical divisor contributes no twist. For g=3, d=6 and the canonical rational range is [ℓ(w),6]; this does not assert the integral genus-three bound. In genus two the sharp t₂ bounds are 3,k₂+1,k₂+1,k₁+k₂.

### Dependencies

AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; §5.3; §5.10; §5.9; §2.8; §2.1; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; §7.2; §6.1; §6.6; §6.7; §6.9; §3.5; §3.2; §4.6; §4.8; §4.5; OverconvergentAutomorphicForms §8.7; PerfectoidShimuraVarieties §6.13; PerfectoidShimuraVarieties §6.13a; ResolutionOfSingularitiesCharacteristicZero §6.3; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; SolidAnalyticRings §7.3; SolidAnalyticRings §7.4; gap:coherent-correspondences; gap:discrete-adic-solid-comparison; gap:pel-subcanonical-vanishing; gap:projective-banach-cohomology; gap:siegel-ordinary-igusa; gap:solid-localization-kernel.


## Layer 9: Modular, Siegel and unitary checks

Standing setting for the GSp₄ sections §§9.1, 9.3, 9.4 and 9.6–9.8: p is any prime, K^p a neat prime-to-p level for GSp₄/ℚ, K_p=GSp₄(ℤ_p), with compatible smooth admissible toroidal data and the corresponding normal integral models. At Klingen level K_p is replaced by its Klingen parahoric Kli(p), using the common fan refinements for the p-correspondence. §9.5 is purely local and §§9.2, 9.9 state their own data.

### 9.1 The four Siegel threefold weights

In derived C2 coordinates choose G-dominance 0≥ν1≥ν2, M-dominance κ1≥κ2, ρ=(−1,−2) and 2ρ_nc=(−3,−3). The four minimal left representatives act by (a,b), (−a,b), (−b,a), (−b,−a), of lengths 0,1,2,3. Define the light table κ_0=(3−ν2,3−ν1), κ_1=(3−ν2,ν1+1), κ_2=(2−ν1,ν2), κ_3=(ν1,ν2). In full GSp₄ coordinates the central coordinate of κ is the negative of that of ν and the parity condition is retained. The two-coordinate table alone does not define a GSp₄ weight. (BP-Hida, §3.1, pp. 33–34; BP-Coleman §5.14.3, pp. 141–142).

A proof route is as follows: Substitute the four displayed Weyl actions in κ_w=−w0M w(ν+ρ)−ρ. Use the actual GSp4 character lattice to restore the central coordinate.

*Needs:* §1.1; AutomorphicBundles §B4.10; AutomorphicBundles §B4.16; ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13; ShimuraData §5.5; ShimuraData §5.6; ShimuraData §5.10; ShimuraData §5.11.

The basic properties of this construction are:

- For r∈Fin 4 and ν∈Z² return the displayed κ_r.
- κ_0(ν1,ν2)=(3−ν2,3−ν1).
- Applying ν_w to κ_r returns ν for the matching representative.
- Serre duality exchanges r with 3−r and κ with (3−κ2,3−κ1).

**Checks.**

- ν=(0,−2) gives (5,3),(5,1),(2,−2),(0,−2) in lengths 0,1,2,3.
- ν=(1,1−k), k≥0, gives κ_0=κ_1=(k+2,2), demonstrating the singular wall.
- The dual of κ=(5,3) is (0,−2), and the dual of (5,1) is (2,−2).

Lengths are those of minimal left representatives, not an arbitrary order of signed permutations.

### 9.2 Modular curve normalization and degree-one check

Fix a modular curve with neat prime-to-p tame level, its smooth compactification and cusp divisor, and the matching Iwahori and finite-character p-levels of Layer 5. Let k be an integer; the complementary ordinary degree-one interpolation below is specialized for k≥3.

For GL₂, d=1 and W_M={1}; the geometric finite-slope Cousin sequence reads 0→H^0_class(ω^k)→H^0_id,oc(ω^k)→H^1_long,oc(ω^k)→H^1_class(ω^k)→0. In the Coleman normalization U_naive acts on q-expansions as pΣa_(pn)q^n. Its id slopes are ≥1 and its long slopes ≥k. The integral normalization is p^(−min(1,k))U_naive. For k≥2 the standard degree-zero q-expansion operator U_std=p⁻¹U_naive has classicality slope <k−1. For k≤0 the integral degree-one operator has threshold <1−k. At k=1 neither argument gives an automatic strict-positive window. Ordinary degree-zero families are imported from PadicFamilies; the complementary projective degree-one family specializes for k≥3 to ordinary H^1(ω^(2−k)(−D)) and pairs perfectly with the degree-zero family. (BP-Coleman, §5.14.2, p. 141; BP-GL2 Theorem 1.2, p. 3; BP-GL2, Theorems 1.1–1.4, pp. 2–3; §2.1, pp. 4–5).

A proof route is as follows: Specialize the two Bruhat cells and their support long exact sequence. Subtract min(1,k) from both naive slope bounds. Use genus-one ordinary control and Serre duality to recover the complementary family; import the existing degree-zero Hida theorem.

*Needs:* §5.5; §5.10; §4.6; §4.8; PadicFamilies Layer 0a; PadicFamilies Layer 0.

At k=2 the standard threshold is 1; equality slope 1 is not covered. At k=0 the degree-one integral threshold is 1.

### 9.3 GSp4 chambers, amplitudes and a strict slope test

For g=2, d=3, ν=(0,−2;0) is regular and the four κ_r above have compatible + chamber of length r. The cuspidal M_r^1 amplitude is [0,r], canonical M_r^0 amplitude [r,3], and paired negative length is 3−r. For κ=(k1,k2;−k1−k2), evaluate the sharp A_w bounds on t2=diag(p⁻¹,p⁻¹,1,1): they are 3,k2+1,k2+1,k1+k2. On t1=diag(p⁻¹,p⁻²,1,p) they are k2+3,k2+3,k1+2k2,k1+2k2. If k1≥k2>2, a sufficient holomorphic geometric test is v_p(U2_naive)<k2+1. For U2_std=p⁻³U2_naive the test is <k2−2; at k2=3 it is strictly <1. These are the named source operators, not a claimed identification with every convention called U_p in Siegel literature. (BP-Coleman, §5.14.3, pp. 141–142; BP-Hida Proposition 5.6.3, p. 58 and Corollary 6.2.10, p. 62; BP-Hida, Proposition 6.1.11, pp. 60–61).

A proof route is as follows: Evaluate each of the four A_w weights on the two explicit diagonal elements. Use the compatible chamber table and the genus-two integral amplitude theorem. Subtract three for the specified renormalization and retain strict inequality.

*Needs:* §9.1; §4.9; §8.5.

The stronger pre-comparison estimate for U2 has k2 in its middle entries; Layer 8 justifies k2+1.

### 9.4 Singular Klingen interpolation complex

For the Siegel threefold at Klingen level let X_Kli^≥1 be the formal locus where its distinguished height-one subgroup is multiplicative. Over its height-one tower X_∞, let IG_∞=Isom(µ_(p∞),H_∞), a ℤ_p× torsor. The tower maps are affine étale, not finite; on p-rank one they are isomorphisms. With Λ1=ℤ_p[[ℤ_p×]] form F_κ by descent of O_(IG∞) completed-tensor Λ1 with the diagonal universal character, first colim over Igusa level modulo p^n and then lim_n. It is invertible over the completed scalar extension on X_∞, not asserted finite locally free over the original X_Kli^≥1. Define M_Kli=f RΓ(X_Kli^≥1,F_κ⊗det(ω)^2(−D)), where f is the ordinary projector for Pilloni U=U1U2. On Ω(k,r)=Sym^kω⊗det(ω)^r, this U has raw pullback/trace normalization p^(−3−r) for the correspondence of isogeny type (1,p,p,p²). (Pilloni-Singular, §9.1–9.4, pp. 54–57; §10.7 and §§11.1–11.3, pp. 66–72).

A proof route is as follows: Import the polarized Klingen height-one tower and its Igusa torsor, including the nonfinite transition behavior. Descend the universal one-dimensional character and use the prescribed completed level limits. Apply the ordinary projector after local finiteness is proved; compute by the two-term Hasse-invariant resolution.

*Needs:* §9.1; PadicMeasuresIwasawaAlgebras §1.1; PadicMeasuresIwasawaAlgebras §1.7; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12; PadicFamilies Layer 0a; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; AutomorphicBundles §B4.10; AutomorphicBundles §B4.16; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; gap:coherent-correspondences; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; gap:klingen-height-one-igusa; gap:pel-subcanonical-vanishing.

The basic properties of this construction are:

- The descended completed universal character sheaf F_κ on the specified tower.
- At integer k≥0 the highest-weight projection Sym^kω→F^k has ordinary-nilpotent kernel.
- The partial-ordinary supported complex M_Kli over Λ1.
- The derived character-k fiber, with det(ω)^2 and −D retained.

**Checks.**

- Ω(k,2) has highest weight (k+2,2), so ν=(1,1−k) lies on the two-chamber wall.
- Treating each height-one transition as a finite étale cover contradicts its behavior over the full p-rank-at-least-one locus.
- Λ1 has one continuous weight variable; it is not the two-derived-variable Siegel Borel weight algebra.

The full-torus Borel-ordinary M_w and this one-variable partial-ordinary object are distinct.

### 9.5 The isolated spherical Klingen refinement

Let π_p be a generic irreducible unramified representation of GSp₄(ℚ_p) over a characteristic-zero splitting field, with nonzero Satake parameters α,β,γ,δ satisfying αδ=βγ. Suppose αβ differs from αγ, βδ and γδ. Prove that π_p^Kli(p) is four-dimensional with U_Kli,1 characteristic polynomial ∏_(z=αβ,αγ,βδ,γδ)(X−p⁻¹z), retaining multiplicities. For this operator normalized as in Pilloni-Singular Proposition 5.1.5.1, prove that the inclusion of the hyperspecial spherical line followed by projection to the p⁻¹αβ eigenspace in π_p^Kli(p) is an isomorphism. The other three products may coincide. Define the projection by the primary decomposition for that isolated eigenvalue, without diagonalizing the remaining primary components. This extends the four-distinct-product case of Pilloni-Singular Lemma 5.1.5.2. (Pilloni-Singular, Proposition 5.1.5.1 and Lemma 5.1.5.2, p. 22; proof of Lemma 14.8.3, p. 102).

A proof route is as follows: Use the four-dimensional unramified Klingen Hecke module and its Weyl-orbit characteristic polynomial from Proposition 5.1.5.1. Construct the isolated-root polynomial projector with multiplicities in the other factors. Prove its nonzero value on the spherical vector in the generic unramified model; use regularity across collisions of the other roots. Density of the distinct-root locus alone is insufficient for nonvanishing.

*Needs:* §9.1; SmoothRepresentationsOfLocalGroups §SR.0.2; SmoothRepresentationsOfLocalGroups §SR.1.4; SmoothRepresentationsOfLocalGroups §SR.4.5.

The basic properties of this construction are:

- The projection has source π_p^Kli(p) and target its p⁻¹αβ eigenspace; the asserted isomorphism has source π_p^GSp₄(ℤ_p).
- The isolated root has algebraic multiplicity one in the four-dimensional Klingen module; prove nonvanishing of the projected spherical vector in the generic spherical Satake model.
- The projector is regular away from the three differences with αβ, so collisions among the other products do not introduce a denominator.

**Checks.**

- With p=3 and (α,β,γ,δ)=(1,1,9,9), αδ=βγ=9 and the four products are 1,9,9,81. The chosen eigenvalue is 1/3, isolated from 3,3,27; the repeated middle eigenvalue is permitted.
- If all parameters are 1, every pair product is 1 and there is no isolated chosen primary component; the hypothesis excludes this case.
- For the diagonal four-dimensional model with eigenvalues a,b,b,c and a≠b,c, P(X)=(X−b)²(X−c)/((a−b)²(a−c)) has P(a)=1 and P(b)=P(c)=0. The squared factor also kills a length-two b-Jordan block; a projector using only one factor would fail.

### 9.6 The Klingen analytic overconvergent family

Let X_Kli(p^n,ε) be the strict neighbourhood of the p-rank-at-least-one locus at Klingen level p^n, for rational 0<ε≤n−1/(p−1), and let U=U1U2 be the Pilloni operator, given by the cohomological correspondence of triples (A,H_n,L) with the raw normalization of §9.4. For rational 0<w′≤w≤ε, a p-adically complete coefficient algebra A in the source's admissible class and a w′-analytic character κ_A:ℤ_p^×→A^×, define the Banach sheaf F^(κ_A,w) as the Kli(ℤ/p^n)-invariants of the pushforward to X_Kli(p^n,ε) of the invertible sheaf L_(κ_A) on the analytic flag space FL_(n,ε,w), and put C(n,ε,w,κ_A,r)=RΓ(X_Kli(p^n,ε),F^(κ_A,w)⊗ω^r) and its cuspidal version with −D. Prove:

1. Both complexes are represented by bounded complexes of projective Banach A[1/p]-modules on which U acts compactly; U has slopes ≥−3 on every H^i and ≥0 on H^0, for canonical and cuspidal coefficients.
2. Over the one-variable analytic weight space W of Λ1, covered by affinoids Spa(A_l[1/p],A_l) with universal character κ_(A_l), the finite-slope cuspidal part at r=2 is a complex C_cusp(A_l) over Spa(A_l[1/p],A_l)×G_m, concentrated in degrees 0 and 1 and independent of n,ε,w, whose fibre at (κ,α⁻¹) has H^i equal to H^i_cusp(†,κ,2)[U=α]. Its cohomology annihilator defines a spectral variety Z→W, on each chart the spectral variety of PadicFamilies §2a.16 for the cuspidal complex of (1) over A_l at r=2 with its compact operator U, that is quasi-finite and locally finite; the charts glue over W.
3. The function k↦dim H^1_cusp(†,k,2)_(=0)−dim H^0_cusp(†,k,2)_(=0) on ℤ_≥0⊂W is locally constant; up to sign it is the exact-slope-zero Euler characteristic, so this is the instance h=0 of the Euler-characteristic local constancy of PadicFamilies §2a.16 for the cuspidal complexes of (1) at r=2 over the reduced affinoids A_l[1/p], at the rank-one points k.
4. For (k,r)∈ℤ_≥0², the two-term relative BGG sequence 0→Ω(k,r)→F^(k,w−)⊗ω^r→F^(−2−k,w−)⊗ω^(k+r+1)→0 is exact on X_Kli(p^n,ε), with U on the middle term intertwined with p^(−k−1)U on the last. Consequently the map from Ω(k,r) to F^(k,w)⊗ω^r induces isomorphisms on H^i of slope <k−2 in every degree, isomorphisms on H^0 and injections on H^1 of slope <k+1, for canonical and cuspidal coefficients.

(Pilloni-Singular, §§12.6.2 and 12.8, pp. 76–80, Proposition 12.8.2.1, p. 79; §13.2, p. 85; Proposition 13.3.1.1, p. 88; Proposition 13.3.2.1, Corollary 13.3.2.1, Proposition 13.3.3.1 and Corollary 13.3.3.1, pp. 89–90; §13.4 and Proposition 13.4.1, p. 91.)

A proof route is as follows: Trivialize L_(κ_A) on a Kli(ℤ/p^n)-stable affinoid cover of FL_(n,ε,w) and take the invariant direct factor of the Čech complex; the group order is invertible in A[1/p]. Factor U through a restriction that improves ε and w to obtain compactness and the slope lower bounds. Apply the imported compact-slope charts to obtain the finite-slope complex and its spectral variety, and read the Euler characteristic off a finite perfect slope block. Derive the classicality ranges from the BGG triangle and the slope bounds on its third term.

*Needs:* §9.4; ShimuraCompactifications §C4.16; ShimuraCompactifications §C4.17; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; OverconvergentAutomorphicForms §0.4; PhiGammaModulesAndIwasawaCohomology §4.0; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; gap:projective-banach-cohomology; gap:coherent-correspondences; LocallyAnalyticDistributions §4.16; PadicFamilies §2a.15; PadicFamilies §2a.16.

**Checks.**

- At k=0 the all-degree threshold is k−2=−2, so ordinary slope 0 is not covered in degree 1; the degree-0 threshold is k+1=1, so slope 0 is covered on H^0 and slope 1 is not.
- At k=3 the all-degree threshold is k−2=1: ordinary slope 0 is covered, which is where the degree-one equality d†′₁(k)=d†₁(k) of §9.8 starts.
- Weight space has one variable: a point of Z lies over one character of ℤ_p^×, not over a two-variable Siegel Borel weight; replacing W by the two-variable space changes the local constancy statement.

### 9.7 Small-slope extension from the Klingen neighbourhood

Let X_Kli(p) be the analytic Klingen-level Siegel threefold with its toroidal compactification, X_Kli(p)_ε its ε-neighbourhood of the p-rank-at-least-one locus, and U the operator of §9.6 on Ω(k,r)=Sym^kω⊗det(ω)^r, with subscript <h for the slope <h part. For all (k,r)∈ℤ_≥0², every rational ε∈[0,1) and every degree i, the restriction H^i(X_Kli(p),Ω(k,r))_(<k+2r−3)→H^i(X_Kli(p)_ε,Ω(k,r))_(<k+2r−3) is bijective, and likewise for Ω(k,r)(−D). The threshold k+2r−3 is strict. Combined with the sheaf-level comparison of §9.6, H^i(X_Kli(p),Ω(k,r))→H^i(†,k,r) is an isomorphism on slopes <min(k+2r−3,k−2), and on H^0 an isomorphism and on H^1 an injection on slopes <min(k+2r−3,k+1), with cuspidal variants. (Pilloni-Singular, §§14.1–14.6, pp. 91–99; Lemma 14.7.1 and Theorem 14.7.1, p. 99; Corollary 14.7.1, p. 100.)

A proof route is as follows: Use the correspondences C_n and the variation of the degree to continue a small-slope class from X_Kli(p)_ε integrally modulo every p^m over X_Kli(p). Identify the inverse limit of the integral cohomologies modulo p^m with the cohomology of X_Kli(p), and use boundedness of the integral image on each finite-dimensional slope block, from a compact Čech representative, to prove that the extension and restriction maps are mutually inverse.

*Needs:* §9.6; ShimuraCompactifications §C4.16; ShimuraCompactifications §C4.17; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.6; LocallyAnalyticDistributions §4.16; gap:coherent-correspondences.

**Checks.**

- At r=2 and k=0 the threshold is k+2r−3=1: ordinary slope 0 is included and slope 1 is excluded.
- At r=2 and k=0 the combined comparison with H^i(†,0,2) uses min(1,−2)=−2 in all degrees, which admits no nonnegative slope: ordinary slope 0 is outside the all-degree statement, and only the proved bound ≥ −3 of §9.6 constrains the window [−3,−2). In degree 0 it uses min(1,1)=1, which covers slope 0; the all-degree statement must not be read with threshold 1.
- At (k,r)=(0,0) the threshold is −3: slope-zero classes are outside the statement, so it says nothing about ordinary cohomology at r=0, whereas at r=2 the same k admits slope 0.

### 9.8 Two-term singular-weight control

M_Kli is perfect over Λ1 of amplitude [0,1]. For all k≥0, its derived character-k fiber equals f RΓ(X_Kli^≥1,Ω(k,2)(−D)); after inverting p this equals f RΓ(X_Kli(p),Ω(k,2)(−D)). For k>p+1, H^0(M_Kli⊗^L_(Λ1,k) ℚ_p/ℤ_p) agrees with the ordinary H^0 at hyperspecial level with Ω(k,2)(−D)⊗ℚ_p/ℤ_p. This last assertion has a stricter weight range and a different level; it is not asserted for every k≥0. The same away-p spherical Hecke actions are retained. The comparison here is the one-variable partial-ordinary comparison, with the same tame level and common toroidal data. (Pilloni-Singular, Theorem 11.3.1 and Corollary 11.2.1, p. 71; Theorem 14.8.1 and Lemmas 14.8.2–14.8.4, pp. 100–102; Theorem 1.1, pp. 2–3).

A proof route is as follows: Use the two-term Hasse resolution, ordinary-nilpotent highest-weight kernel and complete character specialization for integral perfectness. Use §9.7 at r=2, whose threshold k+1 contains the ordinary slope 0 for every k≥0, to replace X_Kli(p) by its ε-neighbourhoods, and the two-affine-cover degree bounds with the injection on H^0 and surjection on H^1 of Lemma 14.8.2. Use the isolated spherical refinement of §9.5 for the weight-large equality of dimensions. For every k≥0 compare two locally constant Euler characteristics: that of the ordinary fibres of the perfect Λ1-complex M_Kli, d1(k)−d0(k), and that of the slope-zero part of the analytic cuspidal family of §9.6, dim H^1_cusp(†,k,2)_(=0)−dim H^0_cusp(†,k,2)_(=0); identify the latter with the ε-neighbourhood dimensions through the sheaf-level comparison (equality in degree 0 for all k, in degree 1 for k≥3). Constancy for M_Kli alone does not close the argument. Use codimension-two extension and the ordinary hyperspecial/Klingen comparison for the torsion H^0 assertion in its stated range.

*Needs:* §9.4; §2.6; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; gap:klingen-height-one-igusa; gap:pel-subcanonical-vanishing; §9.5; §9.6; §9.7.

**Checks.**

- Where I=(p), the lattice I^(−3) is p⁻³O and is different from O before rationalization, while both become the same line after inverting p. Where I=O the twist is O.
- For the spherical T_p,2 trace calculation at k=0 the coefficient/trace divisibilities on the multiplicative, mixed and étale components are respectively (p⁴,1),(p²,p),(1,p³); the products are p⁴,p³,p³, so division by p³ is integral (Pilloni-Singular §14.9.2, p. 104).
- At p=2, k=0 is included in rational Klingen control, while the hyperspecial torsion assertion starts at k=4 because k>p+1=3. Equality k=3 is outside that assertion.
- At k=0 the extension threshold k+2r−3 with r=2 is 1, so the ordinary part (slope 0) is inside it while slope 1 is not; the degree-one dimension comparison with the analytic family is direct only for k≥3 and reaches k=0,1,2 through local constancy of the two Euler characteristics.

At k=0 the rational Klingen comparison holds; the hyperspecial ℚ_p/ℤ_p assertion is only for k>p+1. The integral extension argument retains the lattice twist I^(−3), where I=detω_G⊗detω_(G′)⁻¹ is the invertible differential ideal of the second isogeny in G→G′→G (its inverse is the unit-section inverse different): restriction across codimension two is injective on H¹ and bijective on H⁰, and the ordinary-point trace divisibilities of §14.9, pp. 103–106, are part of the proof.

### 9.9 Split U(n,1) and positive-degree families

For unitary signature (n,1), n≥1, at a split good prime with neat tame level and the Coleman datum, use derived A_n coordinates and M=GL_n×GL_1, d=n. Minimal left representatives are w_r=(1,…,n−r,n+1,n−r+1,…,n), r=0,…,n, of length r, using (w x)_i=x_(w⁻¹i). Put ρ=(n/2,(n−2)/2,…,−n/2). For dominant regular integral ν the weights κ_r=−w0M w_r(ν+ρ)−ρ are M-dominant and have compatible + chamber r. For n=2 and ν=(4,2,0), they are (−3,−5,2), (0,−5,−1), (0,−2,−4), in degrees 0,1,2 respectively. Finite slope cuspidal ranges [0,r], canonical ranges [r,n], Serre duality and interior maximal-dimensional deformation follow. These are general Coleman conclusions specialized to split unitary data; this does not assert an integral unitary Hida complex or replace the ordinary locus by a µ-ordinary locus at inert p. (BP-Coleman, §1.1, pp. 2–4; Theorems 5.7.3, 6.7.3 and 6.9.7, pp. 118–120, 166–167, 171–172).

A proof route is as follows: Compute W_M\W by the omitted position of the last coordinate, checking the left-coset and inverse-action conventions. Substitute the A_n half-sum; the final shifted weights are integral despite possible half-integral individual ρ coordinates. Apply the general Coleman theorems in each of the n+1 strata and retain only the supported integral scope.

*Needs:* §1.1; §5.6; §5.7; §6.9; §7.5; ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13; PELModuli §M5.5; PELModuli §M5.6.

The unitary result is not a proof of the general integral Hodge/PEL target.

### Examples

At k=2 on the modular curve the standard classicality endpoint is 1. At genus-two k₂=3 the specified standard U₂ has strict threshold 1. For n=2 split unitary ν=(4,2,0), the three weights are (−3,−5,2),(0,−5,−1),(0,−2,−4). The Klingen isolated-refinement example has products 1,9,9,81, so repeated nonordinary roots are admitted.

### Dependencies

§1.1; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AutomorphicBundles §B4.10; AutomorphicBundles §B4.16; AutomorphicBundles §B5.1; AutomorphicBundles §B5.10; §8.5; §5.5; §5.10; §5.7; §5.6; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12; §2.6; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; §7.5; §6.9; §4.6; §4.8; §4.9; LocallyAnalyticDistributions §4.16; OverconvergentAutomorphicForms §0.4; PELModuli §M5.5; PELModuli §M5.6; PadicFamilies Layer 0; PadicFamilies Layer 0a; PadicFamilies §2a.15; PadicFamilies §2a.16; PadicMeasuresIwasawaAlgebras §1.1; PadicMeasuresIwasawaAlgebras §1.7; PhiGammaModulesAndIwasawaCohomology §4.0; ShimuraCompactifications §C4.16; ShimuraCompactifications §C4.17; ShimuraCompactifications §C5.19; ShimuraCompactifications §C5.20; ShimuraCompactifications §C5.21; ShimuraData §3.10; ShimuraData §3.13; ShimuraData §3.8; ShimuraData §5.10; ShimuraData §5.11; ShimuraData §5.5; ShimuraData §5.6; SmoothRepresentationsOfLocalGroups §SR.0.2; SmoothRepresentationsOfLocalGroups §SR.1.4; SmoothRepresentationsOfLocalGroups §SR.4.5; gap:coherent-correspondences; gap:klingen-height-one-igusa; gap:pel-subcanonical-vanishing; gap:projective-banach-cohomology.


## Downstream consumers

Potential-modularity and Siegel modularity-lifting roadmaps consume the perfect Siegel Iwasawa complexes of Layer 4, their derived arithmetic control and complementary-degree pairing, Layer 8's rational amplitude, the separate Klingen complex of Layer 9 and the finite perfect slope blocks with Tor specialization of Layer 6. Each consumer specifies its Hecke localization, boundary variant, p-normalization, character inversion and selected degrees. Interior maximal-dimensional deformation uses Layer 7's cuspidal-to-canonical image hypothesis. A positive-degree-only eigenpacket is part of this contract; degree-zero truncation would discard it. A consumer requiring a comparison of the Klingen complex with full-torus M_w must supply a separate partial-ordinary comparison theorem.

## References

All mathematical statements use the author editions recorded in sources.toml. Page numbers are printed author-PDF pages; journal numbering is not substituted. The revised 180-page Higher Coleman theory is the locator edition; the 174-page arXiv v1 is the comparison version of the same work.

- **BP-Hida.** George Boxer and Vincent Pilloni, [Higher Hida theory for Siegel modular forms](https://www.imo.universite-paris-saclay.fr/~vincent.pilloni/higherhidaSiegel.pdf), Inventiones mathematicae 244 (2026), 45–141, DOI 10.1007/s00222-025-01393-2. Locators use the 65-page author edition.
- **BP-Coleman.** George Boxer and Vincent Pilloni, [Higher Coleman theory](https://www.imo.universite-paris-saclay.fr/~vincent.pilloni/HigherColeman.pdf), revised author edition; [arXiv:2110.10251v1](https://arxiv.org/abs/2110.10251v1) is recorded under the same source key with its distinct pagination.
- **Pilloni-Singular.** Vincent Pilloni, [Higher coherent cohomology and p-adic modular forms of singular weights](https://www.imo.universite-paris-saclay.fr/~vincent.pilloni/complexhidatheorygsp4.pdf), Duke Mathematical Journal 169 (2020), no. 9, 1647–1807, DOI 10.1215/00127094-2019-0075. Locators use the 113-page author edition.
- **BP-GL2.** George Boxer and Vincent Pilloni, [Higher Hida and Coleman theories on the modular curve](https://arxiv.org/abs/2002.06845v2), Épijournal de Géométrie Algébrique 6 (2022), article 16.

### Source issues and conventions

The following observations refer to those author editions. The statements above use the stated corrections and the explicit sufficient BGGsafe region.

- **E1 (misprint).** BP-Hida, Introduction §1.1, p. 2, author edition: The symbol M_µ is described as the unipotent radical. M_µ is the Levi; the unipotent radical has its separate U notation. The representation and character lattices and the explicit setup in §3.1 require a reductive Levi.
- **E2 (misprint).** BP-Hida, Proposition 4.3.17, p. 49, author edition: The finite-character statement prints a garbled normalized algebraic-weight expression. Use ν=−w⁻¹w0M(κ+ρ)−ρ and retain χ separately. Proposition 4.3.9 and the next normalized-operator display fix the root/trace character.
- **E3 (gap).** BP-Coleman, Definition 5.11.14, p. 134 and Corollary 6.8.4, p. 168, revised author edition: The coefficient strongly-small inequalities include a doubled 2ρ_nc term and inconsistent shifted-weight appearances; the corollary identifies these with BGG exclusion without a calculation. The printed condition is not derived from Theorems 6.5.5 and 6.8.3. This roadmap uses BGGsafe instead, explicitly the failure of one necessary bound for each nonidentity BGG term. Substitution of the BGG twist −ν_v into the two analytic lower bounds gives the two expressions in §6.7; it does not directly give the printed pair.
- **E4 (misprint).** BP-Coleman, Theorem 6.4.3 proof, p. 157, revised author edition: One lemma citation for compactness is unresolved. Supply the root-coordinate contraction from Lemma 3.5.11, the coefficient map of Lemma 6.3.10 and the compact supported-cover argument of Theorem 5.4.3. The proof needs both geometric radius improvement and the coefficient action; the unnamed reference alone supplies neither.
- **E5 (misprint).** BP-Coleman, Definition 6.4.7, p. 158, revised author edition: The first negative-support inclusion uses the coefficient radius n where the geometric second depth l occurs in its positive counterpart. Use B(m+s,l) in that geometric inclusion, retaining B(n,n) as the independent coefficient-domain condition. The algebraic negative definition 5.4.10 and all the remaining bounds use the freely chosen depth l; n already has a different fixed role.
- **E6 (misprint).** BP-Coleman, Theorem 6.10.2(1), p. 173, revised author edition: The theorem header uses the strongly-small subspace, while its proof proves the small subspace. The stronger result with the geometric small condition is justified by Theorem 6.10.1(2) and Corollary 5.8.1. The proof explicitly removes the wrong interior Cousin degrees using the sharp bounds; the introduction also advertises that improvement.
- **E7 (misprint).** BP-Coleman, Proposition 2.7.3, p. 32, revised author edition: A displayed supported derived cohomology expression receives an extra shift, and subsequent top-degree duality expressions use Ω^1. Use Ω^d and the degree-d support pairing; omit the extra shift on a complex already concentrated in degree d. Topological Serre duality pairs H^0 with H_c^d; blindly shifting a complex already concentrated in degree d changes that degree.
- **E8 (gap).** BP-Hida, Remark 5.4.3, p. 57 versus Propositions 6.2.13 and Theorem 6.2.15, pp. 63–64, author edition: The former labels arithmetic specialization by the inverse character, while the family comparison uses an unlabelled base-change map attached to ν_A. Label the Λ→A map explicitly, inserting inversion on analytic weight space when the regular-action convention of §4.5 is used. Specializing a group element at u^k versus u^(−k) produces different characters; a shared symbol A cannot determine this convention.
- **E9 (misprint).** Pilloni-Singular, §5.1.5, pp. 21–22, author edition, paragraph before Proposition 5.1.5.2: The Klingen paragraph imposes equality of the first adjacent product and the last adjacent product, while retaining the spherical eigenvalue labels. Use αδ=βγ, consistently with the spherical ordering on p. 21 and the stated Weyl-orbit eigenvalues. The diagonal similitude pairing equates the outer-coordinate product with the middle-coordinate product. The printed alternative would also make the four-distinct-product assumption in Lemma 5.1.5.2 impossible. §9.5 treats an isolated chosen eigenvalue when other products coincide.
