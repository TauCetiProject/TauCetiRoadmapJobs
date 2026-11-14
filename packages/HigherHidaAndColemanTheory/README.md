# Roadmap: higher Hida and Coleman theory

**Summary.** Extend PadicFamilies from modular forms to supported coherent cohomology in every degree. Construct perfect ordinary Iwasawa complexes for Siegel varieties in every genus, with derived arithmetic control, finite Hecke image and Serre duality. Construct higher Coleman cohomology for locally quasi-split abelian-type data, analytic weight families, finite perfect slope complexes, cohomological eigenvarieties and maximal-dimensional deformation of interior eigenpackets. The ordinary/finite-slope comparison gives all-genus rational amplitude and sharp Siegel bounds; the singular Klingen construction gives a separate one-variable complex in degrees zero and one.

## Scope and ownership

PadicFamilies ends with ordinary modular-curve families and the general finite-slope/spectral infrastructure, including §§2a.15–2a.16 for compact complexes and intrinsic annihilator support. This roadmap owns their higher supported automorphic applications and cohomological Hecke gluing. Integral higher Hida theory is Siegel theory for every genus and every prime, using cofinal levels at p=2; Coleman theory uses quasi-split abelian-type data, including data without an ordinary locus.

The following objects are imported from their existing owners; their exact hypotheses and missing extensions are specified under Exact supplier contracts.

- Mathlib supplies scalar multiplication of linear endomorphisms, integer powers, the ordinary derived-category carrier, condensed modules and its stated solidity predicate. Scalar renormalization is a convention on that existing operation.
- ShimuraData §§3.8–3.13 supplies the compact dual, Kostant representatives and opposition; §§5.5–5.11 supplies the C₂ coordinate conventions. AutomorphicFormsOnReductiveGroups §6.7 supplies Siegel coherent chambers. Layer 1 extends their cohomological dictionary to general abelian-type data, including the Serre-dual coefficient formula.
- AutomorphicBundles §§1.4–1.5 and 1.9 supplies de Rham frame torsors; §§3.3, 5.2–5.4, 5.10 and 6.1 supplies the algebraic, integral and boundary coefficients. PELModuli M5.5–M5.6 supplies the split-unitary datum; it is not supplied by the GU(1,1) coefficient test of AutomorphicBundles §11.17.
- OverconvergentAutomorphicForms §§0.4, 8.6–8.7 owns analytic induction, Bruhat coefficient and shifted distribution families, coefficient maps, torsor descent and its finite-flat/projective-Banach comparisons. Layer 6 starts with their normalized Hecke action and supported cohomology. The locally analytic BGG exactness needed for this application is a target in Layer 6.
- PerfectoidShimuraVarieties §§6.3, 6.8 and 6.10 owns the Hodge–Tate period maps of abelian-type towers, §6.13 the Bruhat tubes, §6.13a their finite-level inverse images under the truncated period maps, §6.14 the reductions of the de Rham Levi torsor over them and §6.15 their Hecke maps; §5.1 records these and states no target, and the affinoid inverse images at classical flag points are a supplier gap. Layer 5 owns what is built on them: the allowed support pairs, the supported cohomology and its finite-slope theory (§§5.2–5.8).
- CompletedCohomologyPartII §§3.11–3.12 owns the admissible category, continuous function/measure duality, the diagonal Iwasawa realization and reconstruction. Layer 4 proves admissibility for the actual Igusa tower and applies that functor; it does not rebuild the generic anti-equivalence.
- IntegralHeckeAndGaloisDeterminants §§2.1, 2.3 supplies bounded-finite derived Hom, finite action images and Fitting ordinary parts. Its finiteness applies even when the finite cohomology modules are nonprojective; Layer 7 proves the compatible cohomological gluing. ResolutionOfSingularitiesCharacteristicZero §6.3 supplies separation of two Cartier divisors by their ideal-sum blow-up on any scheme; Layer 3 and Layer 8 apply it to the degree divisors.
- AutomorphicBundlesPartII §3.0a owns the solid six operations on schemes with their discrete coherent comparison, projection formula, Tor-independent base change, closed locale and localization triangles, and §3.11 the derived formal completion; its §§2.2 and 2.4–2.5 own group-ring flatness of finite étale covers, perfect equivariant models, derived coefficient change and deck descent; its §§3.3, 3.6 and 3.9–3.12 own correspondence composition, base change, transpose, contracted support filtrations and the equivariant completion/compact-support filtration; its §§3.0b and 5.1–5.2 own the formally subcanonical criterion and toroidal-to-minimal relative vanishing on the normalized p-level models; its §3.13 owns the individual coherent Hecke operators in every degree and its §5.13 their integral algebra relations for Hilbert–Siegel GSp₄ at hyperspecial level. The away-S algebra relations on the supported p-level complexes and on the analytic family complexes, which that section excludes, are §3.8 and §6.10. The one enhancement it does not state, the two partial-support orders of BP-Hida on that solid enhancement, is a supplier gap below. Layer 2 owns the Artinian-coefficient specialization of the supplied operations and the dynamic ordinary theorems, not a second construction of the operations or of the coherent correspondences.
- PadicFamilies §§2a.8–2a.14 owns the eigenvariety of a Banach module with a compact operator, §§2a.15–2a.16 the spectral variety of a compact endomorphism of a complex with its annihilator support and the local constancy of finite-slope Euler characteristics, and §2a.17 the eigenmodule sheaf with the distinction between localized and residue fibres; LocallyAnalyticDistributions §4.16 owns finite perfect slope complexes and their base change, and §4.17 the compact-stage factorization of Fréchet presentations. §7.1 differs from PadicFamilies §2a.12 in gluing cohomology of complexes in all degrees, signs and boundary variants over characters of the whole torus; §9.6(3) is the slope-zero instance of the Euler-characteristic statement of §2a.16.
- AutomorphicBundles §9.1 owns the algebraic relative BGG resolution in type C₂ of an algebraic representation by induced modules, with Kostant cohomology, and LieHighestWeight Layer 3 the Verma modules and enveloping-algebra maps. §6.5 differs: it is the resolution of locally analytic induction from the analytic subgroup M₁, with its locally constant factor V_sm,1 and its finite-slope comparison.
- SmoothRepresentationsOfLocalGroups §SR.1.4 owns the positive Klingen Hecke algebra of GSp₄ and §SR.4.5 the spherical Satake parameters; it assigns the Klingen refinement computations to other roadmaps, and §9.5 is that computation for an isolated eigenvalue, together with the criterion that an irreducible representation with Klingen invariants and no parameter ratio equal to p is an unramified principal series.
- AlgebraicModularFormsAndSerreWeightsPartII §§7.1–7.4 owns, at hyperspecial level, the integral spherical correspondence over the formal p-rank-at-least-one locus, its ordinary trace divisibilities, the integral operator p⁻³T′_(p,2) and restriction across the codimension-two rank-zero locus; §9.8 proves only their Klingen counterparts, on the coefficient twisted by I^(−3).

The scope does not include a general integral Hodge/PEL higher Hida theorem, the genus-at-least-three integral bound of BP-Hida Conjecture 5.6.1, or BP-Coleman Conjectures 5.9.2/6.8.1 on full general noncompact cohomology. The proved all-genus rational bound, the sharp interior theorem and the sharp Siegel comparison are targets. The supplied solid operations are used on separated schemes of finite type over S=Spec A for an Artinian coefficient ring A; six operations over larger noetherian bases are not used. The Klingen partial-ordinary complex and the full-torus Borel complexes are distinct objects; no comparison between them is asserted.

## Conventions

For Layers 5–7, let (G,X) be an abelian-type Shimura datum with G/ℚ_p quasi-split. Choose a rational Borel B and torus T and a finite splitting field F/ℚ_p defining μ, P_μ and coefficient representations. Fix neat tame level K^p, compatible smooth admissible toroidal fans and sufficiently deep Iwahori-decomposed K_(p,m,b), m≥b≥0 and m>0. Retain the finite characters and cyclotomic factors required for the actual torsor reductions. Coefficients factor through the supplied rank quotient Gʳ=G/Zᵣ(G) and Tʳ. Use T^c=T/Z_s only through the supplied CM-split-centre identification Tʳ≃T^c and its quotient map (OverconvergentAutomorphicForms §8.6).

For Layers 3–4 and 8 take G=GSp₂g/ℚ, g≥1, hyperspecial level at p, neat prime-to-p level and compatible normal integral toroidal models; d=g(g+1)/2. Polarized ordinary Igusa quotients use cofinal decomposable P-levels. At p=2 retain the source cofinal subgroup construction, rather than a Levi splitting. The Klingen hypotheses are stated in Layer 9 separately. Layer 2 uses separated schemes of finite type over S=Spec A, for the Artinian coefficient ring A=ℤ/p^s or a finite flat extension of it; a change of coefficients A→A′ base-changes the schemes to Spec A′.

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

At the manifest pins use `Module.End` in Mathlib/Algebra/Module/LinearMap/End.lean:33, with its semiring/additive-monoid/module assumptions; `zpow_sub₀` in Mathlib/Algebra/GroupWithZero/Units/Basic.lean:402, with nonzero base in a group with zero; and `DerivedCategory` in Mathlib/Algebra/Homology/DerivedCategory/Basic.lean:87, the localization of an abelian category's cochain complexes at quasi-isomorphisms with its `HasDerivedCategory` localization instance (line 74). Use `CondensedMod` in Mathlib/Condensed/Module.lean:41 for sheaves of R-modules on CompHaus with the coherent topology, and its abelian instance at line 43. `CondensedMod.IsSolid` in Mathlib/Condensed/Solid.lean:83 inverts the profinite solidification maps; its documentation at lines 74–81 limits this direct predicate to finite-type ℤ-algebras and prescribes polynomial restriction for a general ring. It is not a relative analytic localization theorem.

### From Tau Ceti

The ordinary algebraic and ringed-site interfaces re-exported through the pinned Mathlib import are used through their native carriers. This roadmap needs no additional Tau Ceti declaration beyond those carriers; solid derived tensors, Shimura geometry and supported automorphic cohomology are specified as targets or supplier contracts below.


### From TauCetiRoadmap.AdicSpacesPartIII

- §R3.1: Finite coherent affinoid acyclicity.
- §R3.4: Coherent quasi-Stein Theorems A and B and dense Banach inverse-sequence exactness.
- §R3.6: Relative compactness, completely continuous restrictions and proper coherent cohomology.
- §R3.8: Finite locally free trace and pull–identify–trace.

What AdicSpacesPartIII must provide (gap:projective-banach-cohomology): §§R3.4, R3.6 — Extend coherent quasi-Stein cohomology to locally projective Banach coefficients on finite quasi-Stein covers, represented by countable projective systems of bounded projective Banach Čech complexes over affinoid exhaustions (BP-Coleman Lemma 2.5.19), with compact restrictions, the finite-dimensional projected-lattice lemma and bounded-p-torsion integral Čech comparison of BP-Coleman §§2.4–2.6 and Lemma 5.9.10.


### From TauCetiRoadmap.AdicSpacesPartIV

- §F1.10: Coherent support triangles and dagger Serre duality over spherically complete fields.

What AdicSpacesPartIV must provide (gap:banach-support-duality): §F1.10 — Extend the coherent dagger Serre pairing to complementary-support compact-type LB/Fréchet coefficient systems over finite extensions of ℚ_p, using Ω^d in degree d and finite-slope perfect pairings, as in BP-Coleman §2.7.


### From TauCetiRoadmap.AlgebraicModularFormsAndSerreWeightsPartII

- §7.1: The compactified spherical correspondence C_(p,2) restricted to the formal p-rank-at-least-one locus X^≥1 of the genus-two Siegel model at hyperspecial level, with source fan equal to that of the trace projection p₁, which is finite and generically étale there.
- §7.2: Its ordinary trace divisibilities on Ω(d,r)=Sym^dω⊗det(ω)^r for d≥0 and r≥2: at an ordinary point the differential and the trace give p-orders adding to at least three on each of the multiplicative, mixed and étale components.
- §7.3: The integral operator p⁻³T′_(p,2) on RΓ(X^≥1,Ω(d,r)) and RΓ(X^≥1,Ω(d,r)(−D)) for d≥0 and r≥2, compatible with finite coefficients and rationalization; used at (d,r)=(k,2).
- §7.4: Restriction from X to X^≥1 is bijective on H^0 and injective on H^1 for Ω(d,r) and Ω(d,r)(−D) modulo every p^n and integrally, the rank-zero complement having codimension two in each Cohen–Macaulay reduction.


### From TauCetiRoadmap.AutomorphicBundles

- §1.4: Tensor-preserving de Rham frame torsor.
- §1.5: Filtered frame reduction.
- §1.9: Abelian-type canonical principal bundle.

- §3.3: Highest-weight labels and algebraic coefficient representations.
- §5.10: Integral canonical coefficients under its good-prime PEL hypotheses.
- §5.2: Gluing of the canonical extension on degeneration charts.
- §5.3: Canonical toroidal extension.
- §5.4: Subcanonical extension and the boundary twist.
- §6.1: General-data canonical automorphic extensions.
- §9.1: Kostant cohomology and the algebraic relative BGG resolution in type C₂.
- §11.10: GL₂ Hodge-line coefficient convention.
- §11.16: Siegel Schur coefficient Sym^kω⊗det(ω)^r with highest weight (k+r,r).
- §11.17: The GU(1,1) coefficient test; it is not the split U(n,1) datum of §9.9.
- §12.1: Coefficient trace adapter for finite locally free morphisms.
- §12.11: Geometric Hecke operators on classical sections; higher-degree operators are AutomorphicBundlesPartII §3.13 on the partial-support objects of the coherent-correspondence gap, and their algebra relations are §3.8 and §6.10.


### From TauCetiRoadmap.AutomorphicBundlesPartII

- §2.2: Local projectivity of f_*O_Y over O_X[Δ] for a finite étale Galois cover f:Y→X with group Δ, and its A[Δ]-flatness when X is flat over A, with no division by |Δ|.
- §2.4: Bounded finite projective A_n[Δ]-models of equivariant coherent cohomology and homology.
- §2.5: Derived coefficient change of the equivariant models and homological deck descent with its Tor spectral sequence.
- §3.0a: The solid six operations on qcqs Noetherian schemes over the coefficient base: lower and upper shriek for separated finite-presentation maps, composition, projection formula, Tor-independent base change, the discrete-coefficient functor on bounded coherent complexes with its proper upper-shriek comparison (an isomorphism on bounded perfect, pseudo-coherent inputs along proper maps of finite Tor dimension), and the closed locale with its two localization triangles. Nothing beyond the bounded coherent range of the discrete functor is assumed of it.
- §3.0b: The compactified Siegel, Klingen and Iwahori p-level spans on the normalized models of ShimuraCompactifications §§7.19–7.31.
- §§3.1–3.2: Cohomological correspondences T:Lp₂*F→p₁!G and their action on derived global sections.
- §3.3: Composition of cohomological correspondences.
- §3.6: Tor-independent base change of cohomological correspondences.
- §3.9: The transpose correspondence under coherent duality.
- §3.10: Set-theoretic contracted and expanded closed subsets and contracted support filtrations as coherent filtered diagrams.
- §3.11: Derived formal completion of pseudo-coherent solid coefficients along a closed subscheme.
- §3.12: Equivariance of the completion/compact-support filtration and its spectral sequence.
- §3.13: Coherent Hecke operators in every degree, as individual derived endomorphisms. Their algebra relations on the supported p-level complexes and the analytic family complexes used here are §3.8 and §6.10.
- §4.4: The coherent tower: at characteristic-zero neat finite levels the direct limit of coherent cohomology is a smooth representation whose invariants under a compact open subgroup recover the finite-level cohomology by finite étale descent, admissible because each finite-level group is finite-dimensional; the invariant functor is exact in characteristic zero.
- §5.1: Verification of the formally canonical and subcanonical criterion on the p-level spans of §3.0b.
- §5.2: Toroidal-to-minimal relative vanishing R^iπ_*(E(−nD′))=0 for formally subcanonical E, over opens of the minimal model and over finite coefficient algebras.

What AutomorphicBundlesPartII must provide (gap:coherent-correspondences): §§3.3, 3.6 and 3.10–3.12 on the solid enhancement of §3.0a — Supply the two partial-support objects K+−(F)=RΓ(Xbar,j+_*j−_!F) and K−+(F)=RΓ(Xbar,i−_!i+_*F) of BP-Hida Definition 2.2.4 for two closed subschemes D+,D− of a proper Xbar, their support-change maps of Lemma-construction 2.2.6, the comparison map K−+→K+−, the action of a cohomological correspondence with expanded D+ and contracted D− on both, compatible with composition (§3.3) and Tor-independent base change (§3.6) of correspondences and with the support-change maps, and for a coherent extension with locally principal D± the twist formulas Rlim_(n−) colim_(n+) and colim_(n+) Rlim_(n−) of RΓ(Xbar,F(n+D+−n−D−)) of Corollary 2.3.11.

What AutomorphicBundlesPartII must provide (gap:abelian-subcanonical-vanishing): §5.2 (abelian-type extension) — Extend the PEL formally subcanonical vanishing to abelian-type toroidal-to-minimal maps and the locally trivialized projective Banach coefficient situation of BP-Coleman Theorem 4.1.7 and Lemma 6.6.2 with its bounded-torsion reductions.


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
- §4.16: Compact homotopy actions, finite perfect slope complexes, cohomology slope comparison, derived slope base change, and the finite-slope isomorphism for an operator factored through two complexes as U_C=ra, U_D=ar.
- §4.17: Compact-stage factorization on Fréchet presentations by Banach modules and the identification of their finite slopes across stages, Stein exhaustions for finite-slope operators, and the relative torus slope order with its central-component condition.


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
- §2a.17: the coherent eigenmodule sheaf, with the distinction between localizing a weight-specialized slope module at a point of the spectral variety, which gives the full generalized eigenspace, and tensoring with that point's residue field; §9.6(2) uses the first, after derived weight specialization of a complex.
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
- §6.13a: Finite-level truncated period maps on the minimal and toroidal compactifications, and the open analytic inverse images of K_p-stable Bruhat tubes, compatible with level, cone refinement and both Hecke projections.
- §6.14: Actual analytic reductions of the Levi torsor.
- §6.15: Hecke maps with common cone refinements, their double-coset description on the reductions of §6.14, and the identification of the Hodge–Tate Levi torsor with the cyclotomic µ-twist of the de Rham torsor.
- §6.3: Toroidal tower diamond and its Hodge–Tate map.
- §6.8: Abelian-type minimal period map, G(ℚ_p)-equivariant and prime-to-p Hecke-equivariant, with the commutative diagram for B₁, G₁ and G.
- §6.10: Compatibility of the toroidal period map with the minimal period map for abelian type.
- §3.13: Hodge-type affinoid basis with affinoid perfectoid preimages.
- §6.4: The Hodge-type cover and Lovering's B₁ of an abelian-type datum.
- §6.5: Fibre products of torsors and the de Rham torsor of B₁.
- §6.6: Connected towers and the finite descent group Δ.
- §6.7: Finite quotients of connected towers with invariant pregood covers.
- §6.9: The Levi torsor of an abelian-type datum as a Δ-quotient from its Hodge cover.

What PerfectoidShimuraVarieties must provide (gap:abelian-affinoid-basis): §§3.13, 6.8 — Extend the Hodge-type affinoid basis to classical flag points after abelian-type descent, with the finite-level and toroidal comparisons used by BP-Coleman Theorem 4.5.2.


### From TauCetiRoadmap.PhiGammaModulesAndIwasawaCohomology

- §2.7: Compact character spaces of a compact abelian p-adic Lie group with their universal characters, and the inversion g↦g⁻¹, which acts on characters by δ↦δ⁻¹.


### From TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero

- §6.3: Cartier separation of two effective Cartier divisors on any scheme, with residual disjointness and preserved difference.


### From TauCetiRoadmap.SchemeAndStackFoundations

- §2.20: Relative dualizing complexes; upperShriek_structureSheaf_iso_shift identifies f^!O_Y with ω_(X/Y)[d] for a Cohen–Macaulay morphism of pure relative dimension d over a Noetherian Y, and relativeDualizingModule_smooth identifies ω_(X/Y) with ∧^dΩ_(X/Y) for smooth f, in the discrete coherent derived category.


### From TauCetiRoadmap.ShimuraCompactifications

- §0.14: Common cone refinements.
- §4.10: Coherent cohomology independence of the cone system under its coefficient criterion.
- §6.16: The compactified Klingen correspondence on triples (A,H_n,L).
- §6.17: Acyclicity of its first projection, algebraically and after analytification.
- §7.19: Normal higher-p-level Siegel models.
- §7.20: Boundary charts on normalized models.
- §7.21: Formal canonical coefficient criterion.
- §7.29: Siegel threefold canonical line (det E)^3(−D), weight (3,3)=−2ρ_nc.

What ShimuraCompactifications must provide (gap:klingen-lci-model): §7.19 (Klingen-level moduli extension) — Supply the toroidal compactification of the moduli scheme over ℤ_p of the Siegel threefold with a subgroup H⊂G[p] of order p, normal and a local complete intersection over ℤ_p, carrying the integral isogeny chain G→G/H→G/H^⊥→G and the extension of the forgetful map to the hyperspecial toroidal model (Pilloni-Singular, Proposition 6.1.4.1, p. 26, and Theorem 6.1.5.1, p. 29).


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
- §SR.2.2: normalized parabolic induction, induction in stages and Jacquet functors.
- §SR.3.1: finite length of finitely generated admissible complex representations, cuspidal support and the constituents of principal series.
- §SR.3.4: the Iwahori block: an irreducible representation has nonzero Iwahori invariants exactly when it is a constituent of an unramified principal series.
- §SR.4.5: GSp₄ spherical Satake parameters and the spin polynomial with their similitude normalization.

That roadmap leaves the Klingen computations for GSp₄ to other roadmaps; §9.5 proves the isolated Klingen refinement comparison and the criterion identifying an irreducible representation with Klingen invariants as an unramified principal series.

## How to read the build

Layer 1 fixes the cohomological weight and slope dictionary. Layer 2 specializes the supplied solid operations to Artinian coefficients and proves the dynamic ordinary theorems, using the generic coherent correspondence and partial-support contracts. Layer 3 applies them to integral Siegel strata, with the away-p spherical Hecke algebra acting on the supported complexes, and Layer 4 interpolates the fixed-weight complexes over the torus Iwasawa algebra. Layer 5 constructs geometric finite-slope cohomology; Layer 6 applies analytic coefficients, proves BGG control in families and makes the away-S Hecke algebra act on family cohomology. Layer 7 constructs the cohomological eigenvariety and its interior deformation theorem. Layer 8 compares integral ordinary and finite-slope objects, giving rational amplitude and sharp Siegel bounds. Layer 9 tests the conventions in modular, Siegel, singular Klingen and split-unitary cases, and constructs the Klingen analytic family and small-slope extension on which the Klingen control theorem rests. Every missing supplier strengthening is named by its gap in the consuming target's Needs line.

The headline theorems are derived arithmetic Hida control (§4.6) and integral Iwasawa Serre duality (§4.8) for Siegel varieties of every genus, integral amplitude in genera one and two (§4.9) and rational amplitude in every genus (§8.4), regular and singular geometric classicality (§5.8), the cohomological eigenvariety (§7.1) with the equidimensionality and deformation of interior eigenpackets (§7.5), sharp interior slope bounds (§7.6) and sharp Siegel bounds (§8.5), and the two-term Klingen control theorem (§9.8). Their statements require Shimura varieties and their toroidal models, Igusa towers, supported coherent cohomology of automorphic bundles and analytic coefficient complexes, none of which exists in the pinned Mathlib or Tau Ceti; Suggested.lean therefore states none of them and names, for each, the carrier it lacks. Scalar and root-coordinate calculations serve as Checks in this README.


## Layer 1: Weights, supports and operator conventions

### 1.1 The cohomological weight dictionary

Use the Coleman datum of Conventions.

Write M=M_µ, W_M for its Weyl group, w0M for its longest element and MW for minimal representatives of W_M\W. Let Φ+ have noncompact roots in g/p_std and compact roots in Lie(M); ρ is half their sum and ρ_nc half the noncompact sum. Put d=dim Sh, ℓ+(w)=ℓ(w), ℓ−(w)=d−ℓ(w), Cκ+={w∈MW: −w⁻¹w0M(κ+ρ) is G-dominant}, and Cκ−={w: w⁻¹(κ+ρ) is G-dominant}. Set ν_w(κ)=−w⁻¹w0M(κ+ρ)−ρ, κ_w(ν)=−w0M w(ν+ρ)−ρ, and κ∨=−w0Mκ−2ρ_nc. These are algebraic lattice formulas; no action of absolute W on arbitrary analytic characters of Tʳ(ℤ_p) is asserted. Extend the supplied Siegel chamber dictionary to these abelian-type data, and prove Vκ^∨⊗ω_Sh = V_(−w0Mκ−2ρ_nc)(−D) on the smooth toroidal compactification; here the canonical line has weight −2ρ_nc and the boundary is reduced. (BP-Coleman, §§1.1–1.3, pp. 2–9; §4.1, pp. 50–51; §5.11, pp. 129–130; §6.5.4, p. 160).

A proof route is as follows: Import the root datum and highest-weight labels, retaining the left-coset convention. Check the inverse formulas by cancelling w and w0M; restrict algebraic weights to the actual quotient torus. Compute the determinant of the cotangent representation from the noncompact roots, then use the logarithmic canonical extension and the reduced boundary divisor.

*Needs:* ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13; AutomorphicBundles §11.10; AutomorphicBundles §11.16; AutomorphicFormsOnReductiveGroups §6.7; ShimuraCompactifications §7.29.

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
- The proved exclusion region implies the sharp exclusion region, by the root-cone comparison of BP-Coleman §5.11.
- Twisting the eigencharacter by an algebraic η replaces λ by λ+η on T^d.

**Checks.**

- For GL₂ weight k≥2 and λ the BP-operator slope, the wrong-chamber threshold is k: λ=k is excluded and λ=k−1 is inside. For U_std=p⁻¹U_naive the endpoint is k−1; at k=2 these thresholds are 2 and 1.
- In the cone R≥0², (−1,10) is not ≥(0,0), although its second coordinate is positive.
- Two weights with different central components are not comparable merely because their derived-group projections agree.

The two lower bounds are retained separately; a vector maximum is not substituted for a cone condition.

### Examples

For GL₂, the BP degree-zero bound at k=2 excludes slope 2 but permits slope 1; rescaling U by p⁻¹ gives endpoint 1. For κ=(k+2,2) in genus two, κ+ρ=(k+1,0) has two compatible chambers.

### Dependencies

AutomorphicBundles §11.10; AutomorphicBundles §11.16; AutomorphicFormsOnReductiveGroups §6.7; LocallyAnalyticDistributions §4.17; ShimuraCompactifications §7.29; ShimuraData §3.10; ShimuraData §3.13; ShimuraData §3.8.


## Layer 2: Dynamical ordinary cohomology

Standing setting for §§2.4–2.8, and for §2.3 when it is applied to supported cohomology: the coefficient ring A is ℤ/p^s or a finite flat extension of it, as in §2.1, hence Artinian and finite as a set, and S=Spec A. All schemes are separated of finite type over S, hence over ℤ as the solid formalism requires, and the compactifications Xbar, Cbar of the correspondence C→X×_S X are proper over S. The ordinary localization of §2.3 is formed over this same A, and every finiteness, perfectness, finite-rank and duality statement of the layer is a statement over A: it rests on the finiteness over A of coherent cohomology of a scheme proper over Spec A (BP-Hida, §2.5, p. 19, where every scheme lies over S=Spec A). Properness over a base other than Spec A gives no finiteness over A. A change of coefficients along a finite A→A′ replaces each scheme X by X×_S Spec A′, as in §2.5. The definition of §2.2 is scheme-theoretic and makes sense over any noetherian affine base S (BP-Hida, §2.1, p. 7); in this layer it is applied with S=Spec A. The coefficient F is coherent, with a cohomological correspondence p2*F→p1!F in the sense of AutomorphicBundlesPartII §3.1. Limits, colimits and tensor products in this layer are derived solid operations, not exchanges of ordinary module limits.

### 2.1 Artinian coefficients in the supplied solid operations

Use the solid six operations of AutomorphicBundlesPartII §3.0a on separated finite-type ℤ-schemes with coefficients in A=ℤ/p^s or a finite flat extension of it: D(O_X,■), derived pullback and tensor, proper pushforward with its exceptional right adjoint, open j_! and j_* with restriction, the projection formula, Tor-independent base change, and the formal-completion and localization triangles of its §3.11. The discrete comparison consumed is exactly the one supplied there: the discrete-coefficient functor on bounded coherent complexes, and for a proper map of finite Tor dimension the comparison of upper shriek, which is an isomorphism on bounded perfect, pseudo-coherent inputs. Open restriction and open pushforward are used as solid operations; no comparison with discrete quasi-coherent complexes outside the bounded coherent range is asserted or used. Prove two statements specific to this coefficient setting. First, for a smooth structure map q:X→Spec A of pure relative dimension d, q!A≃Ω^d_(X/A)[d] in D(O_X,■). On an affine open V of X choose an immersion V→ℙ^N_A, that is, a closed immersion c:V→W into an open j:W→ℙ^N_A, and let π:ℙ^N_A→Spec A be the structure map. Then (q|_V)^!A=c^!j^*π^!A. The proper comparison of §3.0a applies to π with input A, since π is flat and A is perfect, and gives π^!A=Ω^N[N]; upper shriek along the open immersion j is restriction; and it applies to c with input Ω^N_W[N], since c is a regular immersion of smooth A-schemes, so c_*O_V has a finite Koszul resolution and c has finite Tor dimension. The discrete value c^!(Ω^N_W[N])=(q|_V)^!A≃Ω^d_V[d] is SchemeAndStackFoundations §2.20 for the smooth, hence Cohen–Macaulay, morphism q|_V over the Noetherian ring A, with the composition law of discrete upper shriek. Prove that the resulting isomorphism on V does not depend on the immersion, by comparing two immersions with the diagonal immersion into the product of their ambient spaces, and glue over an affine cover. A compactification of q chosen arbitrarily need not have finite Tor dimension over A when s≥2, so the comparison is not applied to one. Second, the solid coefficient and common-presentation comparisons between the (A,A)■ formalism of AutomorphicBundlesPartII §3.0a and the discrete animated Huber-pair formalism of SolidAnalyticRings §§7.3–7.4, in which the localization of §2.3 is formed, on exactly the diagrams specified by the two solid supplier gaps: the completion and localization towers and the relative polynomial localization along (A[T],A)■→A[T,T⁻¹]■. (BP-Hida, §2.2, pp. 12–15; §2.3, pp. 15–18).

*Needs:* AutomorphicBundlesPartII §3.0a; AutomorphicBundlesPartII §3.11; SchemeAndStackFoundations §2.20; SolidAnalyticRings §7.2; SolidAnalyticRings §7.3; SolidAnalyticRings §7.4; gap:solid-localization-kernel; gap:discrete-adic-solid-comparison.

The basic properties of this construction are:

- For q=id, q!A=A[0]; for q smooth of pure relative dimension d, q!A is the single sheaf Ω^d_(X/A) in cohomological degree −d, compatibly with open restriction and with finite flat extension of A, and independently of the affine immersions used to compute it.
- The comparison functors send the discrete A[T]-coefficient complexes of the two solid gaps to the corresponding objects of the §3.0a category, preserving the derived tensors and the limits named in those gaps.

**Checks.**

- For X=Spec A and q=id, q!A=A[0]; tensoring the zero coefficient and its pushforward gives 0.
- For A=𝔽₂ or ℤ/9 and X smooth of relative dimension one, Ω¹[1] has its sole sheaf in cohomological degree −1; omitting [1] places it in degree 0.
- For X=𝔸²_A, q!A=Ω²[2] is free of rank one on dt₁∧dt₂ in degree −2; Ω¹[2] has rank two and Ω²[1] sits in the wrong degree.
- For X=Spec A[t] and j=D(t), the solid open pushforward j_*O has underlying module A[t,t⁻¹], which is not a finitely generated A[t]-module: finitely many elements have poles of order at most some N and cannot generate t^(−N−1). It is therefore outside the bounded coherent domain of the discrete comparison, and the open pushforward is used only as a solid operation. For j=id both j_! and j_* are identity. Formal completion along t=0 has coefficient A[[t]], not A[t,t⁻¹].
- For q:𝔸²_(𝔽₂)→Spec 𝔽₂ the route uses the open immersion into the smooth proper ℙ²_(𝔽₂) and c=id, and gives the rank-one Ω²[2]. Over A=ℤ/4 the A-module 𝔽₂=A/2 has infinite Tor dimension, since its minimal free resolution ⋯→A→A→A with every differential multiplication by 2 never stops. So 𝔸²_A, which is also open in the proper A-scheme ℙ²_A ⊔ Spec(A/2), has a compactification whose structure map does not satisfy the finite-Tor hypothesis of the proper comparison; the route through ℙ²_A avoids it.

### 2.2 Dynamical compactifications

A dynamical compactification consists of proper Xbar,Cbar over S, two maps p1,p2, closed subschemes D+,D− with X = Xbar ∖ (D+ ∪ D−) and C = Cbar ∖ (p1*D+ ∪ p2*D−), and p2*D+⊂p1*D+, p1*D−⊂p2*D− on underlying sets. For ideals I,I′ write D≤(a/b)D′ if (I′)^a⊂I^b for some positive integers a,b. Strict dynamics requires p2*D+≤s p1*D+ and p1*D−≤s p2*D− for some rational 0<s<1. Compact dynamics replaces these by inclusions in the interiors, taken in the underlying topological space of Cbar, of the right-hand closed subsets: p2*D+⊂int(p1*D+) and p1*D−⊂int(p2*D−); this notion is topological, not schematic, and no locale enters its definition (BP-Hida, Definition 2.1.19 and Remark 2.1.20, p. 9). D+ and D− may intersect. Transposition swaps p1,p2 and D+,D−. (BP-Hida, Definitions 2.1.15, 2.1.19, 2.1.24, 2.1.26, pp. 8–10).

A proof route is as follows: Use the imported proper correspondence. Define ideal-power comparison, then its strict variant on ideals and its compact variant on underlying topological spaces; transport them to common refinements. The formal closed support of §8.1 is where the solid locale enters, not this definition.

*Needs:* AutomorphicBundlesPartII §3.1; AutomorphicBundlesPartII §3.10; §2.1.

The basic properties of this construction are:

- Stores compactifications, both projections, the two labelled boundary pieces and the expansion/contraction proofs.
- Transposition interchanges the two labels and is involutive.
- Iterating a strict dynamical correspondence preserves strict dynamics.
- Common strict refinements preserve the induced supported-cohomology action.

**Checks.**

- For p2=Frobenius and p1=id on ℙ¹_(𝔽_p), take D−=V(t) and D+=∅. Then p2*D−=pD− and D−≤(1/p)(pD−), since (t^p)¹=(t)^p. This is the contracted, negative boundary; it is not the expanded, positive one.
- For the identity on a regular scheme and a nonempty effective Cartier divisor, D≤sD fails for 0<s<1.
- D+=D−=∅ satisfies the boundary inequalities, and the open is all of the proper Xbar.
- On an irreducible Cbar with surjective p1,p2 every proper closed subset has empty interior, so the compact conditions force each of D+ and D− to be empty or all of Xbar, while the strict conditions can hold: the Frobenius example above is strictly contracted but not compactly contracted, since int(V(t^p))=∅ in ℙ¹. Nonempty compact instances need a reducible Cbar, as for the mod-p^s degree models of Layer 8, whose special fibres are unions of closures of strata.

An inclusion of supports alone does not imply strict ideal-power contraction.

### 2.3 Supported ordinary localization

For a chosen T-action on K∈D(A_square), set K^ord=K⊗^L_(A[T],A)_square A[T,T⁻¹]_square. This is an analytic/solid localization, including the specified integral subring A in the source pair. An automorphism on a finite discrete A-complex is unchanged; a topologically nilpotent action on an A[[T]]-complex is killed. When A is Artinian and K has bounded finite cohomology it agrees with the imported Fitting ordinary direct factor; for m-adic towers agreement is asserted only after the relevant finiteness/completeness hypotheses are proved. (BP-Hida, Definition 2.4.2 and Lemmas 2.4.3–2.4.4, pp. 18–19).

A proof route is as follows: Apply the imported analytic localization, retaining the chosen action rather than merely a cohomology endomorphism. Compare on finite discrete complexes by Fitting decomposition; use the annihilation of A[[T]] by the target analytic algebra.

*Needs:* gap:coherent-correspondences; AutomorphicBundlesPartII §3.0a; §2.1; Mathlib `DerivedCategory`; Mathlib `CondensedMod`; SolidAnalyticRings §7.2; SolidAnalyticRings §7.3; gap:solid-localization-kernel; SolidAnalyticRings §7.4; gap:discrete-adic-solid-comparison; PadicFamilies §0a.25; IntegralHeckeAndGaloisDeterminants §2.3.

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

For a strict dynamical compactification over S=Spec A and coherent F, the canonical comparison (K−+)^ord→(K+−)^ord is an equivalence, and the resulting object is independent of the chosen strict compactification. It has bounded cohomology consisting of finite A-modules: this uses that Xbar is proper over Spec A itself, so that coherent cohomology on it is finite over A, and that A is Artinian, so that the ordinary part of a bounded complex of finite A-modules is a direct factor of it. The proof factors a sufficiently iterated cohomological correspondence through cohomology of finitely many bounded coherent twists on a proper model; arbitrary exchanges of inverse limits and filtered colimits are unnecessary. (BP-Hida, Theorem 2.5.1 and Proposition 2.5.4, pp. 19–21).

A proof route is as follows: Use the ideal-power inequalities to make high iterates improve both twist indices. Clear the bounded coefficient poles using Proposition 2.3.13 and factor the iterate through a finite set of coherent proper cohomology objects. Invert T in this factorization; compare refinements and the two support orders.

*Needs:* §2.3; §2.2; AutomorphicBundlesPartII §3.0a; AutomorphicBundlesPartII §3.3; gap:coherent-correspondences.

**Checks.**

- Negative control for the base. Take A=𝔽₂, X=C=Spec 𝔽₂[t] with p1=p2=id, F=O and T=id. Over the base Spec 𝔽₂[t] the correspondence is its own compactification with D+=D−=∅, every strict and compact condition holds vacuously, and the ordinary complex is H⁰=𝔽₂[t], of infinite 𝔽₂-dimension. This base is excluded because S must be Spec A; taking A=𝔽₂[t] instead is excluded because it is not Artinian.
- Over S=Spec 𝔽₂ the line is not proper. In its compactification Xbar=Cbar=ℙ¹ with p1=p2=id the point ∞ lies in D+ or D−; with u=1/t the parameter of the discrete valuation ring at ∞, the ideal of that boundary piece there is (u^k) with k≥1, and (u^(ka))⊂(u^(kb)) fails for a<b, so D≤sD fails for 0<s<1 (§2.2) and this compactification is not strictly dynamical. The theorem asserts nothing about this correspondence.
- The proper point X=Xbar=Spec 𝔽₂ over S=Spec 𝔽₂ with T=id gives the ordinary complex 𝔽₂[0], of dimension one and perfect; with T=0 it gives 0.

Over an Artinian base the output is finite and bounded, not automatically termwise free.

### 2.5 Discrete derived coefficient change

Assume F is A-flat and M is a finite discrete A-module. For the strict dynamical ordinary object, RΓ^ord(X,F)⊗^L_A M≃RΓ^ord(X,F⊗_A M). For a finite map A→A′ to another coefficient ring of §2.1, put S′=Spec A′ and X′=X×_S S′, base-change the correspondence, a strict dynamical compactification of it, F and T to C′, X′, F′ and T′ over S′, and assume that X and S′ are Tor independent over S. Then RΓ^ord(X,F)⊗^L_A A′≃RΓ^ord(X′,F′) for the base-changed correspondence. Neither assertion is an arbitrary completed Banach coefficient change. (BP-Hida, Propositions 2.6.2 and 2.6.13, pp. 21–23).

A proof route is as follows: Apply the projection formula for the !/* support factorization and the supplied discrete-solid tensor comparison. Use A-flatness to keep the coefficient coherent and bounded below. For geometric change identify the derived and underived fiber products by Tor independence.

*Needs:* §2.4; AutomorphicBundlesPartII §3.0a; AutomorphicBundlesPartII §3.6; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; gap:coherent-correspondences.

Derived tensor remains in the conclusion even when the cohomology groups have torsion.

### 2.6 Artinian and equivariant perfectness

For S=Spec A with A Artinian local, an A-flat coherent F with strict dynamics over S has RΓ^ord(X,F) perfect over A. More generally, for a finite abelian group Γ commuting with the correspondence, A[Γ]-flat F gives a perfect A[Γ]-complex and augmentation specialization to RΓ^ord(X,F/I_ΓF). A finite étale Γ-torsor over an A-flat X supplies this equivariant flatness for its direct-image structure sheaf, by the group-ring flatness of AutomorphicBundlesPartII §2.2. (BP-Hida, Theorem 2.6.8, Theorem 2.6.10 and Lemma 2.6.11, p. 22).

A proof route is as follows: Use discrete base change to compute the residue-field derived fiber. Use ordinary finiteness there and the supplied local perfect-complex criterion. For A[Γ] use the supplied group-ring flatness of the torsor algebra, then specialize through augmentation without dividing by |Γ|.

*Needs:* §2.5; §2.4; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; gap:coherent-correspondences; AutomorphicBundlesPartII §2.2; AutomorphicBundlesPartII §2.4; AutomorphicBundlesPartII §2.5.

The equivariant result applies even when p divides |Γ|.

### 2.7 Transposed ordinary Serre duality

Suppose C and X are smooth over S=Spec A with A Artinian, the correspondence (C,X,p1,p2) admits a strict dynamical compactification over S in the sense of §2.2, X is pure of relative dimension d and F is finite locally free. Put D_XF=RHom(F,p!A), using p!A=Ω^d[d]. Transposition carries a strict dynamical compactification of (C,X,p1,p2) to one of the transpose C^t=(C,X,p2,p1), with D+ and D− exchanged: the inequalities p2*D+≤s p1*D+ and p1*D−≤s p2*D− are the two strict inequalities for the transpose. So both ordinary complexes below are the compactification-independent objects of §2.4, and both are perfect over A by §2.6 applied on each local factor of A, F and the shifted locally free D_XF being A-flat. Transpose the coefficient correspondence and swap D±. Then RΓ^ord_C(X,F)≃RHom_A(RΓ^ord_Ct(X,D_XF),A), and conversely. Thus an untwisted dual bundle appears in complementary cohomological degrees after the canonical-bundle and boundary twists are included. Compactifications proper over S that are not strictly dynamical do not suffice. (BP-Hida, Propositions 2.7.2–2.7.3 and Theorem 2.7.4, pp. 23–24).

A proof route is as follows: Choose a strict dynamical compactification on which F extends to a locally free sheaf and D+, D− are Cartier divisors. Apply six-functor duality to the two open immersions. Use the supplied transpose of a coherent correspondence; restrict it to the two solid support orders. Use ordinary/nonordinary orthogonality and perfectness to restrict the duality.

*Needs:* §2.2; §2.4; §2.6; AutomorphicBundlesPartII §3.0a; AutomorphicBundlesPartII §3.9; §2.1; gap:coherent-correspondences.

**Checks.**

- Negative control for strict dynamics. Take A=𝔽₂, C=X=𝔸¹_(𝔽₂), p1=p2=id, F=O and T=id, compactified by Xbar=Cbar=ℙ¹ with D+={∞} and D−=∅. Everything is smooth, Xbar is proper over Spec 𝔽₂ and the set-theoretic inclusions of §2.2 hold, but strictness fails at ∞ (§2.4, second Check). The support object K+−=RΓ(ℙ¹,j_*O)=RΓ(𝔸¹,O) is 𝔽₂[t] in degree 0. T acts invertibly on this discrete module, so ordinary localization leaves it unchanged (BP-Hida, proof of Lemma 2.4.3, case (2)), and the result is infinite-dimensional over 𝔽₂, not perfect. Properness of the compactification alone gives neither perfectness nor this duality.
- The proper point X=C=Xbar=Spec 𝔽₂ with empty boundaries, where strictness holds vacuously, d=0, F=O and T=id: both ordinary complexes are 𝔽₂[0] and the pairing is multiplication 𝔽₂×𝔽₂→𝔽₂, which is perfect. With T=0 both complexes are 0.
- Degree witness. For X=C=Xbar=ℙ¹_(𝔽₂) with empty boundaries, p1=p2=id, F=O and T=id, d=1: RΓ^ord(X,O)=𝔽₂ in degree 0, and D_XO=Ω¹[1] has RΓ with H^(−1)=H^0(ℙ¹,Ω¹)=0 and H^0=H^1(ℙ¹,Ω¹)=𝔽₂, so RHom_A(RΓ(X,Ω¹[1]),A)=𝔽₂[0], as asserted. Omitting the shift [d] would put the dual in degree −1.

The shift is fixed by H^i pairing with H^(d−i), not by an ungraded vector-space dual.

### 2.8 Finite rank and the compact-dynamics bridge

Throughout, interiors are the topological ones of §2.2, K+−(D+,D−) and K−+(D−,D+) are the two support orders of Conventions for the pair (D+,D−), and the maps between them for different pairs are the support-change maps of the coherent-correspondence contract. Prove three statements.

(a) Finite rank. For compact dynamics and F with coherent cohomology, if the coefficient correspondence T:p2*F→p1!F extends across a neighborhood in Cbar of Cbar ∖ (int(p1*D+) ∪ int(p2*D−)), its supported-cohomology endomorphism has finite rank over A: it factors through an object whose cohomology is bounded and consists of finite A-modules, namely cohomology supported in the closed subset Cbar ∖ (int(p1*D+) ∪ int(p2*D−)), which is proper over S=Spec A (BP-Hida, Lemma 2.10.1(4), p. 29, and Proposition 2.10.3, p. 30).

(b) Support change. Let (D+,D−) and (D′+,D′−) be two support pairs for the same (Cbar,Xbar,p1,p2), each satisfying the set-theoretic inclusions of §2.2, such that D+⊆int(D′+), D−⊆int(D′−), and the cross-containments p2*D′+⊆p1*D+ and p1*D′−⊆p2*D− hold in Cbar. Let T be a cohomological correspondence on C=Cbar∖(p1*D+ ∪ p2*D−). Then the four pairs (D+,D−), (D+,D′−), (D′+,D−), (D′+,D′−) are compactly dynamical; T defines maps K+−(D′+,D−)→K+−(D+,D′−) and K−+(D−,D′+)→K−+(D′−,D+) whose composites with the support-change maps are the actions of T on the four pairs; after ordinary localization every support-change map among these objects is an equivalence, and the eight ordinary objects K+−, K−+ of the four pairs are canonically equivalent (BP-Hida, Proposition 2.10.4, pp. 30–31).

(c) The strict/compact bridge. Let (D+,D−), (D′+,D′−), (D″+,D″−) be three support pairs for the same (Cbar,Xbar,p1,p2), each satisfying the set-theoretic inclusions of §2.2, with D″±⊆int(D′±)⊆D′±⊆int(D±)⊆D±, let X,X′,X″ and C,C′,C″ be the corresponding complements in Xbar and Cbar, and p″1,p″2 the restrictions of p1,p2 to C″. Assume: on C″ the strict inequalities (p″2)*D+≤s(p″1)*D+ and (p″1)*D−≤s(p″2)*D− hold for one rational 0<s<1; the cross-containments p2*D′+⊆p1*D″+ and p1*D′−⊆p2*D″− hold in Cbar (these are the cross-containments of (b) for the inner pair (D″+,D″−) and the outer pair (D′+,D′−); BP-Hida §2.11 prints them with p1 and p2 exchanged, source issue E15); D+, D−, D″+ and D″− are locally principal; F″ is coherent on X″ with a cohomological correspondence T:(p″2)*F″→(p″1)!F″; and F=F″|_X. Then (C,X) admits a strict dynamical compactification and K+−(D+,D−;F)^ord≃K−+(D−,D+;F)^ord≃RΓ^ord(X,F) of §2.4. If moreover T is the composite (p″2)*F″→(p″2)*F″(D+)→(p″1)!F″(−D−)→(p″1)!F″ of a map in the middle with the two inclusions, and there are maps (p″2)*O(D+)→(p″1)*O(D+) and (p″2)*O(−D−)→(p″1)*O(−D−), then all support-change maps between the pairs become equivalences after ordinary localization and K+−(D″+,D″−;F″)^ord≃K−+(D″−,D″+;F″)^ord≃RΓ^ord(X,F). Without that factorization the same conclusion holds after replacing D± by nD± for some n≥1 and F″ by F″(mD+−mD−) for some m≥0 (BP-Hida, §2.11 and Theorem 2.11.4, pp. 31–33). Compact containment of supports alone does not give this comparison.

A proof route is as follows: For (a), factor the map through cohomology supported on the closed core Cbar ∖ (int(p1*D+) ∪ int(p2*D−)) of the compact containment, which is proper over Spec A, and use finiteness over A of coherent cohomology with proper support. For (b), deduce compactness of the mixed pairs from the cross-containments, using that p_i⁻¹(int D′) is open; define the T-maps by pullback to the correspondence, the coefficient map and trace; the commutative diagrams with the support-change maps then make each support-change map invertible after inverting T. For (c), restrict to the closures of X and C, on which the dynamics are strict, and compare by the localization lemma for partial supports; under the factorization, the zeros/poles of T and the two divisor maps supply the inverses of the support-change maps between the three pairs.

*Needs:* §2.4; §2.2; AutomorphicBundlesPartII §3.0a; AutomorphicBundlesPartII §3.11; AutomorphicBundlesPartII §3.12; gap:coherent-correspondences.

**Checks.**

- Let Xbar=Cbar=Spec 𝔽₂ ⊔ Spec 𝔽₂ with points a,b, p1=p2=id, F=O and T=id. The pairs (∅,∅) and ({a},∅) are both compactly dynamical, since {a} is open, and ∅⊆int{a}. But K+−(∅,∅)=RΓ(Xbar,O)=𝔽₂² and K+−({a},∅)=RΓ(Xbar,j_*O_b)=𝔽₂, each its own ordinary part, so the support change is not an equivalence. The cross-containment p2*{a}⊆p1*∅ of (b) reads {a}⊆∅ and fails, so (b) correctly excludes this pair.
- On the same example, equal pairs satisfy (b): for (∅,∅) every condition reads ∅⊆∅ and the maps are the identity of 𝔽₂²; for ({a},∅) the conditions read {a}⊆{a} and the maps are the identity of 𝔽₂.
- The cross-containment of (c) is that of (b) for the inner pair (D″+,D″−) and the outer pair (D′+,D′−), so (b) makes the primed and double-primed pairs compactly dynamical with no further argument. The exchanged form p1*D′+⊆p2*D″+ cannot be meant: with p2*D″+⊆p1*D″+ (§2.2) and D″+⊆D′+ it gives p1*D′+⊆p2*D″+⊆p1*D″+⊆p1*D′+, so p1⁻¹(D′+∖D″+)=∅, and for surjective p1 this forces D′+=D″+, a set that is then open and closed. Negative control: Xbar=Cbar={a,b,c}, three copies of Spec 𝔽₂, p1=id, p2=σ with σ(a)=a, σ(b)=a, σ(c)=b, D+={b,c}, D′+={c}, D″+=∅, all D− empty, F=O and T(f)=f∘σ. Each pair satisfies §2.2 (σ⁻¹{b,c}={c}, σ⁻¹{c}=∅), strictness holds on C″=Cbar because these ideals are idempotent, and the stated containment σ⁻¹{c}=∅⊆∅ holds while the exchanged one {c}⊆∅ fails. Here T(f)=(f(a),f(a),f(b)) and T²(f)=(f(a),f(a),f(a)), so the ordinary object of the inner pair, K(∅,∅)^ord, is the constants, 𝔽₂[0], and that of the outer pair, K+−({b,c},∅;O)^ord=RΓ^ord(X,O) for X={a} with T=id, is also 𝔽₂[0]. Of (c), this instance satisfies the hypotheses of the first conclusion only. D+ is cut out by the idempotent e_a, so O(D+)=Hom(O(−D+),O) is e_aO and O→O(D+) kills the components at b and c; the pullback σ*O(D+) therefore vanishes at c, whereas T(f)(c)=f(b), so T does not factor through (p″2)*F″(D+). The agreement of the inner object with RΓ^ord(X,O) is a computed value here, not an application of the second conclusion. On the Siegel degree pairs of §8.1, with D″±, D′±, D± the pairs at ε, ε′ and 0, the stated containments are BP-Hida Proposition 6.2.3(2)–(3), p. 61. With D″±=∅ one has C″=Cbar, the strict inequalities say that (D+,D−) is strictly dynamical, and (c) becomes the comparison of RΓ(Xbar,F″)^ord with the strict ordinary object of §2.4.
- Finite rank in (a) is over the ring A with S=Spec A. For the identity correspondence of Spec 𝔽₂[t] with empty boundaries and T=id, the support Cbar∖(∅∪∅) is the whole line, which is proper over Spec 𝔽₂[t] but not over Spec 𝔽₂. The identity of H⁰=𝔽₂[t] factors through no complex with finite-dimensional 𝔽₂-cohomology, since such a factorization would embed an infinite-dimensional space in a finite-dimensional one. With A=𝔽₂ the statement applies only when Xbar is proper over Spec 𝔽₂, as for a point, where the identity of 𝔽₂ has rank one.

Failure to extend the coefficient map is a real missing hypothesis.

### Examples

At a point over 𝔽₂ with T=1, the ordinary complex is 𝔽₂[0]; with T=0 it is zero. With A=ℤ/9 and T=3, T²=0, so the ordinary complex is zero. Empty boundaries recover the ordinary part of the coherent cohomology of a scheme proper over Spec A, which is finite over A.

### Dependencies

AutomorphicBundlesPartII §2.2; AutomorphicBundlesPartII §2.4; AutomorphicBundlesPartII §2.5; AutomorphicBundlesPartII §3.0a; AutomorphicBundlesPartII §3.1; AutomorphicBundlesPartII §3.3; AutomorphicBundlesPartII §3.6; AutomorphicBundlesPartII §3.9; AutomorphicBundlesPartII §3.10; AutomorphicBundlesPartII §3.11; AutomorphicBundlesPartII §3.12; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; IntegralHeckeAndGaloisDeterminants §2.3; Mathlib `CondensedMod`; Mathlib `DerivedCategory`; PadicFamilies §0a.25; SchemeAndStackFoundations §2.20; SolidAnalyticRings §7.2; SolidAnalyticRings §7.3; SolidAnalyticRings §7.4; gap:coherent-correspondences; gap:discrete-adic-solid-comparison; gap:solid-localization-kernel.


## Layer 3: Integral Siegel strata and fixed weights

### 3.1 Siegel degree strata and support pairs

Use the integral Siegel datum of Conventions.

For n≥1, on the normalization model at Iwahori level p^n, use the self-dual chain A_g→⋯→A_2g→A_1→⋯→A_g and its graded order-p^n groups Gr_i. The degree divisors D_i satisfy D_i+D_(2g+1−i)=V(p^n). Set Z_i=Σ_(j=1)^i D_(g+j), blow up to separate positive and negative parts of Z_i−V(p^(nj)) for every 0≤j≤i, and let the w-stratum be the open on which Gr_(w⁻¹(i)) is multiplicative for i=g+1,…,2g. The closed degree filtration F_r=⋃_(ℓ(w)≤r) Z_>w−1 and D_w,+=⋃_i Z_i,<w_i, D_w,−=⋃_i Z_i,>w_i supply the support pairs. Here w_i counts the multiplicative increments among the first i groups Gr_(g+j). These distinguished strata need not exhaust the ordinary locus for n>1. (BP-Hida, §§3.4.19–3.4.25, pp. 39–40; §4.1, §4.1.11 and Proposition 4.1.13 and §4.1.16, pp. 41–43).

A proof route is as follows: Import the integral moduli chain, degree ideals and ordinary Igusa identifications. Normalize the product of polarization moduli spaces, then blow up pairs of degree divisors to separate signs. Use the binary multiplicative/étale increments to index the open strata and assemble the closed filtration.

*Needs:* §1.1; PELModuli §M2.8; PELModuli §M2.9; PELModuli §M5.1; PELModuli §M5.2; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; gap:siegel-ordinary-igusa; ResolutionOfSingularitiesCharacteristicZero §6.3.

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

For a chosen integral highest-weight lattice ωκ from the de Rham M-torsor and t∈T++, set t_w=ν_w(κ)(t)t_naive on the w-Igusa stratum, for every w∈MW. The trace factor is the character w⁻¹w0Mρ+ρ, calculated from formal torus root coordinates; each local coefficient correspondence t_w:p2*ωκ→p1!ωκ is integral on its stratum. The global operator is built from a compatible chamber only: for any w₀∈Cκ+ put t_κ=ν_(w₀)(κ)(t)t_naive over the complement of ⋃_i p1*D_i∩p2*D_(2g+1−i) in the degree model of the correspondence. Its scalar does not depend on w₀, because w⁻¹w0M(κ+ρ) is the same antidominant weight for every w∈Cκ+, and t_κ is integral there. On the w′-stratum t_κ=c_w′(t)t_w′, where c_w′(t)=(ν_(w₀)(κ)−ν_(w′)(κ))(t) is the value at t itself of the algebraic character ν_(w₀)(κ)−ν_(w′)(κ)=w′⁻¹w0M(κ+ρ)−w₀⁻¹w0M(κ+ρ) (additive notation), including the contribution of the unit part of t. Write c_w′(t)=p^(n_w′)ε_w′(t) with n_w′=v_p(c_w′(t)) and ε_w′(t)∈ℤ_p^×. For w′∈Cκ+ the two characters coincide and c_w′(t)=1. For w′∉Cκ+ and t∈T++, n_w′>0: the character is σλ−λ with λ=w₀⁻¹w0M(κ+ρ) antidominant and σ=w′⁻¹w₀ not fixing λ, hence a nonzero sum of positive roots, and v(t) is dominant regular. Write t=λ′(p)u with λ′ a cocharacter of the split torus T and u∈T(ℤ_p). Then n_w′=⟨ν_(w₀)(κ)−ν_(w′)(κ),λ′⟩ and ε_w′(t)=(ν_(w₀)(κ)−ν_(w′)(κ))(u). So c_w′(t) is the pure power p^(n_w′) when u=1, and in general exactly when that character takes the value 1 at u, which can happen with u≠1 (source issue E12). Choose k′ sufficiently large and tildeωκ=ωκ(−k′Σ_i Z_i) so that t_κ extends to a correspondence p2*tildeωκ→p1!tildeωκ on the degree model. The global extension is asserted for t_κ only: for w′∉Cκ+ the local normalization t_w′=c_w′(t)⁻¹t_κ, whose scalar has valuation −n_w′<0, has a pole along the generic part of a compatible stratum, which no vertical twist removes. It is a construction with a chosen lattice and model, not a canonical integral extension of the rational bundle. With finite character χ retain the same algebraic weights and the finite-character coefficient twist separately. (BP-Hida, §4.3, Lemma 4.3.8, Propositions 4.3.9 and 4.3.11, Remark 4.3.12, Proposition 4.3.13 and Lemma 4.3.14, pp. 46–49).

A proof route is as follows: Compute trace in each formal multiplicative coordinate and apply the highest-weight character. Prove integrality of each t_w on the supplied Igusa reduction of the de Rham torsor. Check that t_κ is a true map at each generic point of the special fibre, compute c_w′(t) by evaluating the two characters on t itself and read off its valuation n_w′, then bound the poles of t_κ along the intersections p1*D_i∩p2*D_(2g+1−i) and absorb them in k′ΣZ_i.

*Needs:* §3.1; AutomorphicBundles §3.3; AutomorphicBundles §5.10; AutomorphicBundles §5.3; AutomorphicBundles §5.4; AutomorphicBundles §6.1; AutomorphicBundles §12.1; AutomorphicBundles §12.11; gap:coherent-correspondences.

The basic properties of this construction are:

- For each w∈MW, the integral local coefficient correspondence t_w=ν_w(κ)(t)t_naive on the w-stratum; u∈T(ℤ_p) acts on its fixed-weight cohomology by ν_w(κ)(u)χ(u).
- For w₀,w₁∈Cκ+ the global operators built from w₀ and from w₁ coincide; t_κ restricts to c_w′(t)t_w′ on the w′-stratum, where c_w′(t)=p^(n_w′)ε_w′(t) with ε_w′(t) a unit, c_w′(t)=1 when w′∈Cκ+, and n_w′>0 when w′∉Cκ+.
- The global correspondence for t1t2 equals the composite of those for t1 and t2 on common level refinements, and likewise for each local t_w.
- tildeωκ⊗ℚ_p=ωκ⊗ℚ_p, since the degree divisors are vertical.

**Checks.**

- For GSp₄, w=1 and t₂=diag(p⁻¹,p⁻¹,1,1), w⁻¹w0Mρ+ρ=(−3,−3;0) pairs with (−1/2,−1/2;−1/2) to give 3. The trace factor is p³ and its reciprocal is p⁻³, agreeing with U2_std=p⁻³U2_naive (BP-Hida Lemma 4.3.8, p. 48).
- For χ finite and ν_alg fixed, κ depends on ν_alg alone, whereas units act by ν_algχ.
- Changing k′ changes the integral lattice but not its rational generic-fiber bundle.
- Negative control, GL₂ weight k=2 at p=3: Cκ+={id}, U_naive sends the constant q-expansion coefficient 1 to p=3, and t_κ=p⁻¹U_naive sends it to 1. Using the long-stratum normalization p⁻²U_naive globally sends 1 to 1/3 on the generic ordinary degree-zero component; twisting both lattices by p^e sends p^e to p^(e−1) for every e, so no choice of k′ makes it integral.
- In the same case the naive lower slope bounds (1,2) on the identity and long strata become (0,1) for t_κ, with n_long=1, whereas the wrong global normalization would give (−1,0). For k≤0 the roles swap: Cκ+={long}, t_κ=p^(−k)U_naive and n_id=1−k>0; at k=1 both chambers are compatible and n=0 on both.
- Unit part of t, GL₂ weight k=2 at p=3, in two-coordinate notation κ=(2,0) for the lower Borel with ρ=(−1/2,1/2): ν_id(κ)=(−1,−1), ν_long(κ)=(0,−2) and Cκ+={id}. For t=diag(2,3)∈T++, ν_id(κ)(t)=1/6 and ν_long(κ)(t)=1/9, so t_κ=(1/6)t_naive and t_long=(1/9)t_naive, and c_long(t)=(−1,1)(t)=3/2=3·(1/2) with n_long=1. Both sides of t_κ=c_long(t)t_long equal (1/6)t_naive, whereas the pure power p^(n_long)t_long=(1/3)t_naive is wrong by the unit 1/2. For the cocharacter value t=diag(1,3) the scalar is (1/3)/(1/9)=3=p^(n_long), as in the two Checks above. For t=diag(2,6)=diag(1,3)·diag(2,2), ν_id(κ)(t)=1/12, ν_long(κ)(t)=1/36 and c_long(t)=(−1,1)(t)=6/2=3=p^(n_long), and both sides of t_κ=c_long(t)t_long equal (1/12)t_naive: the unit part diag(2,2) is nontrivial, but (−1,1)(diag(2,2))=2⁻¹·2=1, so a pure-power scalar does not force t to be a cocharacter value.

Record the chosen t before evaluating ν(t); it is not a function of its coset modulo T(ℤ_p) without the unit character.

### 3.3 Strict dynamics of Siegel correspondences

Use the integral Siegel datum of Conventions.

For each distinguished w, every t∈T++ and every mod-p^s thickening, the normalized Igusa correspondence admits a strict dynamical compactification with the Layer 3 degree support labels. The same conclusion holds for each cofinal decomposable compact P′(ℚ_p)-subgroup used in the universal tower. The coefficient correspondence extends with the prescribed bounded zeros and poles. Here P′ has unipotent part U_P(ℚ_p)(1); identifying it with an untwisted P requires a cyclotomic trivialization. (BP-Hida, Lemma 4.4.2, Corollary 4.4.3 and Proposition 4.4.4, pp. 50–51; Theorem 5.1.4, p. 53).

A proof route is as follows: Use the degree growth of the universal isogeny to obtain strict ideal-power inequalities modulo p. Lift across nilpotent thickenings, preserving bounded coefficient poles. Use conjugation and cofinal decomposable subgroups to transport the Iwahori argument.

*Needs:* §3.2; §2.2; gap:siegel-ordinary-igusa; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; AutomorphicBundlesPartII §5.1; AutomorphicBundlesPartII §5.2.

A general integral PEL or Hodge-type version is not inferred from these Siegel degree calculations.

### 3.4 Supported fixed-weight ordinary complexes

Use the integral Siegel datum of Conventions.

For an M-dominant algebraic κ, a finite torus character χ and a fixed w, define C_w(κ,χ,ε)=Rlim_s RΓ^ord(IGtor_w mod p^s, ωκ(χ)⊗O(−εD)), where ε=0 or 1 distinguishes canonical and subcanonical extension. The symbol RΓ^ord includes the two-boundary support construction of Layer 2, not unrestricted cohomology of the Igusa open. Coefficients lie in ℤ_p[ζ] when χ requires roots of unity. The torus acts by ν_w(κ)χ on integral units. (BP-Hida, §4.4 and Proposition 4.4.5, p. 51; §5.3.1, p. 55).

A proof route is as follows: Form the ordinary partial-support object at each finite coefficient level. Use discrete derived base change to define the compatible p-adic limit and retain the Hecke actions.

*Needs:* §3.3; §2.3; AutomorphicBundles §5.3; AutomorphicBundles §5.4; AutomorphicBundles §6.1.

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

A proof route is as follows: Apply the supported Cousin filtration to the modified integral bundle. Use the coefficient zeros/poles factorization to identify the ordinary formal-support summands with C_w, where t_κ restricts to t_w for w∈Cκ+. Eliminate the incompatible strata: there t_κ restricts to c_w′(t)t_w′=p^(n_w′)·(ε_w′(t)t_w′) with n_w′>0, ε_w′(t) a unit and t_w′ integral, so t_κ is p^(n_w′) times an integral correspondence, is nilpotent modulo every p^s, and its ordinary part vanishes; the unit ε_w′(t) does not affect this.

*Needs:* §3.5; §3.1; AutomorphicBundlesPartII §3.10; AutomorphicBundlesPartII §3.12; gap:coherent-correspondences; §3.2.

Do not claim that a nontrivial spectral sequence degenerates at a singular weight.

### 3.7 Regular global ordinary control

Use the integral Siegel datum of Conventions.

If κ+ρ is regular and Cκ+={w}, the integral Cousin sequence for t_κ identifies C_w(κ,χ,ε), with its local operator t_w (equal to t_κ on that stratum since c_w(t)=1), with the t_κ-ordinary cohomology of the chosen tildeωκ(χ)(−εD). On the rational generic fiber this becomes C_w(κ,χ,ε)⊗ℚ_p(ζ)(−ν_w(κ))≃RΓ(Stor_Qp(ζ),ωκ(χ)(−εD))^ord, where the right-hand operator convention is the classical normalized action. The algebraic torus twist in this formula is essential; finite characters remain in the coefficient. (BP-Hida, Corollaries 4.5.4–4.5.5, p. 52).

A proof route is as follows: Collapse the single nonzero Cousin column. Invert p to remove the vertical modification of the lattice. Reconcile the normalized local and classical torus actions by the character −ν_w(κ).

*Needs:* §3.6; §1.1.

At a wall the local complex is only one term of the Cousin calculation. For GL₂ at k=2, t_κ=p⁻¹U_naive and twisting by −ν_id(κ), with ν_id(κ)(t)=p⁻¹, multiplies by p, recovering U_naive on the rational side.

### 3.8 The away-p spherical Hecke algebra on supported Siegel complexes

Use the integral Siegel datum of Conventions.

Let S consist of p and the primes ℓ at which the tame level is not hyperspecial, K^S=∏_(ℓ∉S)G(ℤ_ℓ), and T^S the restricted tensor product over ℓ∉S of the integral spherical Hecke rings ℤ[G(ℤ_ℓ)\G(ℚ_ℓ)/G(ℤ_ℓ)], with basis the double cosets and the convolution product; it is commutative. For g∈G(𝔸_f^S) the Hecke correspondence of AutomorphicBundles §12.11, with its coefficient map and normalizing character, extends over a common cone refinement to the normalized integral toroidal models, to the p-level degree models of §3.1 and to the partial Igusa quotients at each level of the cofinal tower of §3.3. Its universal isogeny has degree prime to p and so identifies the p-divisible groups; its two projections therefore pull each degree divisor back to the same closed subset, D+ is expanded and D− contracted with equality, and the coherent-correspondence contract makes it act on K+−(F) and K−+(F). Write O=ℤ_p[ζ] and A_s=O/p^s=ℤ/p^s[ζ]. Prove that for every s≥1, every level of the cofinal tower, both boundary variants ε and every support pair of §3.1, the assignment [K^SgK^S]↦T_g extends to a ring homomorphism T^S⊗A_s→End_(D(A_s))(K±(F)) for the coefficients F of §§3.2–3.4 over A_s, including the weight-zero coefficient at every level of the tower. Its image commutes with the normalized p-operators t_κ and t_w of §3.2 and with the support-change maps of §2.8, so it induces ring homomorphisms from T^S⊗A_s to the endomorphisms of the ordinary objects of §§2.3–2.4 over A_s, in particular of C_w(κ,χ,ε)⊗^L_O A_s, which is that ordinary object by §3.4. These are compatible with reduction from A_(s+1) to A_s, with the pullback and trace transition maps of the tower and with the torus action. No A_s acts on the p-adic limit C_w(κ,χ,ε) itself. Instead, C_w(κ,χ,ε) is perfect over the complete discrete valuation ring O (§3.5), hence represented by a bounded finite free complex, and reduction gives a bijection End_(D(O))(C_w(κ,χ,ε))→lim_s End_(D(A_s))(C_w(κ,χ,ε)⊗^L_O A_s) (DeformationAndDerivedPatchingAlgebra §7.8, the ideals p^sO being cofinal with the powers of the maximal ideal). The compatible finite-level actions therefore define a ring homomorphism T^S⊗_ℤ O→End_(D(O))(C_w(κ,χ,ε)), compatible with the boundary map C_w(κ,χ,1)→C_w(κ,χ,0) and with the torus action, whose reduction modulo p^s is the action of T^S⊗A_s on C_w(κ,χ,ε)⊗^L_O A_s. For genus two at hyperspecial p-level the integral relations on unsupported cohomology are AutomorphicBundlesPartII §5.13; the p-level supported complexes here are outside that statement. (BP-Hida, §1.4, p. 4; §4.2, pp. 43–44; §5.4, p. 57).

A proof route is as follows: First prove the relations for the correspondences themselves. Over the open Shimura variety the composite (AutomorphicBundlesPartII §3.3) of the correspondences of two double cosets is the sum of the correspondences of the double cosets in their product, with the multiplicities given by the structure constants of T^S, because fibre products of finite étale prime-to-p isogeny correspondences decompose accordingly; the coefficient maps and normalizing characters multiply in the same way. On the normal ℤ_p-flat integral models, where p1 is finite locally free on a compatible intermediate model and F is locally free, both sides are maps p2*F→p1!F into a sheaf without nonzero sections supported on the boundary or on the special fibre, so they agree once they agree on the dense open part. Reduce modulo p^s by Tor-independent base change (AutomorphicBundlesPartII §3.6). Commutation with t_κ and t_w is proved in the same way, since the p-component and the away-p component of a double coset multiply independently. Transfer the relations to K± by the compatibility of the correspondence action with composition, base change and support change in the coherent-correspondence contract; ordinary localization is functorial for endomorphisms commuting with the dynamic operator. Finally pass to C_w(κ,χ,ε) through the bijection of endomorphism rings above: relations that hold modulo every p^s, compatibly in s, hold on the perfect O-complex.

*Needs:* §3.1; §3.2; §3.3; §3.4; §3.5; §2.3; §2.4; §2.8; DeformationAndDerivedPatchingAlgebra §7.8; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.3; AutomorphicBundlesPartII §3.6; AutomorphicBundlesPartII §3.13; gap:coherent-correspondences; ShimuraCompactifications §0.14; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; gap:siegel-ordinary-igusa.

The basic properties of this construction are:

- For each s, a ring homomorphism T^S⊗A_s→End_(D(A_s)) of each supported object over A_s and of its ordinary localization, extending the individual operators of AutomorphicBundlesPartII §3.13.
- On the p-adic limit, a ring homomorphism T^S⊗O→End_(D(O))(C_w(κ,χ,ε)), the inverse limit of the finite-level actions on the reductions C_w(κ,χ,ε)⊗^L_O A_s.
- Its image commutes with every normalized p-operator of §3.2 and with the support-change maps.
- It is compatible with reduction modulo p^s, with the tower transition maps and with the boundary map C_w(κ,χ,1)→C_w(κ,χ,0).

**Checks.**

- For g=1 and ℓ∉S, the integral Hecke ring satisfies [K diag(1,ℓ) K]²=[K diag(1,ℓ²) K]+(ℓ+1)[K ℓ K]; the numbers of single cosets are ℓ+1, ℓ²+ℓ (the cyclic sublattices of index ℓ²) and 1, and at ℓ=3 they give 4²=16=12+4·1. A family of individual operators with T_ℓ²=T_(ℓ²) does not define an action of T^S.
- On C=𝔽₂² in degree 1, two individual derived endomorphisms acting on H¹ by the matrix units E₁₂ and E₂₁ are both zero on H⁰, while E₁₂E₂₁=diag(1,0) and E₂₁E₁₂=diag(0,1). Agreement in degree zero and the existence of individual operators do not give commutativity; the commutativity of T^S excludes this assignment.
- On 𝔽_p[0] over A=ℤ/p, the identity and the zero endomorphism become equal after inverting p, since both act on 0, but differ on H⁰. A relation proved only after inverting p does not give it modulo p^s; the relations are proved on the ℤ_p-flat models and then reduced.
- Finite coefficients do not act on the limit. Take g=1, p=3 and a tame level hyperspecial at ℓ=2, and let T^S act on C_s=ℤ/3^s[0] over A_s=ℤ/3^s through its degree character reduced modulo 3^s, which sends a double coset to its number of single cosets: [K diag(1,2) K], [K diag(1,4) K] and [K 2 K] go to 3, 6 and 1, and the relation of the first Check reads 3²=9=6+3·1, both sides 0 modulo 9. Sending every double coset to 1 is not an action: modulo 9 the same relation would read 1=1+3·1=4. The degree actions are compatible in s, and the limit is ℤ₃[0] with T^S acting through the degree character. A ℤ/3-linear action on it would force 3·1=0, whereas 3·1=3≠0 in ℤ₃; the limit action is ℤ₃-linear. An endomorphism of ℤ₃[0] is multiplication by an element of ℤ₃, determined by its residues modulo every 3^s, as the bijection End_(D(O))(C)→lim_s End_(D(A_s))(C⊗^L_O A_s) asserts.

### Examples

For g=1 there are two degree strata. With coefficients ℤ_p, the perfect complex [ℤ_p --p→ ℤ_p] has H⁰=0 and H¹=𝔽_p, so perfectness must retain torsion. The Siegel boundary is never empty: at a genus-one cusp O(−D)→O is (q)↪O, which vanishes on the boundary fibre.

### Dependencies

§1.1; AutomorphicBundles §3.3; AutomorphicBundles §5.10; AutomorphicBundles §5.3; AutomorphicBundles §5.4; AutomorphicBundles §6.1; AutomorphicBundles §12.1; AutomorphicBundles §12.11; §2.5; §2.2; §2.3; §2.4; §2.6; §2.8; AutomorphicBundlesPartII §3.3; AutomorphicBundlesPartII §3.6; AutomorphicBundlesPartII §3.10; AutomorphicBundlesPartII §3.12; AutomorphicBundlesPartII §3.13; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; PELModuli §M2.8; PELModuli §M2.9; PELModuli §M5.1; PELModuli §M5.2; ResolutionOfSingularitiesCharacteristicZero §6.3; ShimuraCompactifications §0.14; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; gap:coherent-correspondences; AutomorphicBundlesPartII §5.1; AutomorphicBundlesPartII §5.2; gap:siegel-ordinary-igusa.


## Layer 4: Universal higher Hida complexes

### 4.1 Perfectness over finite torus group rings

Use the integral Siegel datum of Conventions.

For a decomposable compact K_P⊂P′(ℚ_p) and T_K=w⁻¹(K_P∩T)w⊂T(ℤ_p), the weight-zero supported ordinary Igusa complex is perfect over ℤ_p[T(ℤ_p)/T_K], for canonical and cuspidal coefficients. The normalized correspondence gives an action of T(ℚ_p). No exactness of invariants of a p-group is assumed. (BP-Hida, Lemma 5.2.2 and Proposition 5.2.3, p. 54).

A proof route is as follows: Use the finite étale torus torsor to prove group-ring flatness. Apply equivariant Artinian perfectness at each p^s, then take compatible complete models.

*Needs:* §3.5; §2.6; AutomorphicBundlesPartII §2.2; gap:siegel-ordinary-igusa.

Finite torus levels can have order divisible by p.

### 4.2 Ordinary independence of unipotent level

Use the integral Siegel datum of Conventions.

For cofinal decomposable K_P,K′_P with identical torus subgroup T_K=T_K′, the ordinary supported Igusa complexes are canonically quasi-isomorphic, with boundary variant and Hecke actions. For distinct torus subgroups the comparison is a derived torus-invariant/control map, not this same assertion. Iterated-correspondence pullback and trace give inverses after ordinary localization. (BP-Hida, Proposition 2.8.2, pp. 25–27; Proposition 5.2.5, pp. 54–55).

A proof route is as follows: Form the triangular system of iterated flat correspondences. Identify the composites with powers of an invertible ordinary Hecke operator. Interlace the two cofinal unipotent-level systems at the same torus subgroup.

*Needs:* §4.1; §2.4; AutomorphicBundlesPartII §3.0a; AutomorphicBundlesPartII §3.3; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12; gap:discrete-adic-solid-comparison; gap:solid-localization-kernel.

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

*Needs:* §4.5; §3.4; §4.2; AutomorphicBundles §3.3; AutomorphicBundles §5.10; gap:siegel-ordinary-igusa; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10.

The finite character does not enter the algebraic formula for κ.

### 4.7 Finite ordinary Hecke images

Use the integral Siegel datum of Conventions.

The away-S spherical Hecke algebra T^S acts on M_w^ε through a ring homomorphism T^S→End_(D(Λ))(M_w^ε). It comes from the finite-level actions of §3.8: the actions of T^S⊗A_m on the finite-level ordinary Igusa objects over A_m=ℤ/p^m are given by cohomological correspondences compatible with the tower transition maps and with reduction from A_(m+1) to A_m, so they act on the filtered colimit over the level modulo p^m and then on the derived p-adic limit R_w^ε of §4.3. On R_w^ε this is an action of T^S, not of any A_m, since R_w^ε is p-complete; the relations of §3.8 are identities of correspondences at each level and persist on the limit. The diagonal realization of §4.5 is functorial for endomorphisms commuting with the torus action. The scalars of Λ are central in End_(D(Λ))(M_w^ε), so the action extends to a Λ-algebra homomorphism Λ⊗_ℤ T^S→End_(D(Λ))(M_w^ε). Define T_w^ε as its image, the Λ-subalgebra of End_(D(Λ))(M_w^ε) generated by the Hecke operators. It is a commutative finite Λ-algebra, because End_(D(Λ))(M_w^ε) is a finite module over the noetherian ring Λ, and its spectrum maps finitely to Spec Λ. The ring image of T^S alone need not be closed under multiplication by Λ. Keep nilpotents and all nonzero cohomological degrees; finite flatness, Gorensteinness and concentration in H^0 do not follow from this result. (BP-Hida, §5.4, p. 57, paragraph defining T_w).

A proof route is as follows: Transport the actions of §3.8 through §§4.3–4.5 as above, each finite coefficient algebra acting only on its own reduction. Extend Λ-linearly. Apply IntegralHeckeAndGaloisDeterminants §2.1 to the Λ-algebra map Λ⊗_ℤ T^S→End_(D(Λ))(M_w^ε), on an object with bounded finite Λ-cohomology: its range is a finite Λ-module. Take this actual commuting image, with its kernel and nilpotents, and its finite relative spectrum.

*Needs:* §4.3; §4.5; §3.8; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.13; gap:coherent-correspondences; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; IntegralHeckeAndGaloisDeterminants §2.1.

**Checks.**

- Take Λ=ℤ₃[[X]], M=Λ[0] and T^S acting through its degree character T^S→ℤ, which sends a double coset to its number of single cosets. The ring image of T^S is ℤ·id: it contains id but not X·id, so it is not a Λ-module, and even its ℤ₃-span ℤ₃·id is not. The image of Λ⊗_ℤ T^S is Λ·id, finite free of rank one over Λ.
- On M=Λ²[0] with a Hecke operator acting by the unipotent matrix 1+E₁₂, the Λ-algebra generated is Λ[N] with N=E₁₂ and N²=0, free of rank two; replacing it by its reduced quotient Λ would discard the nilpotent N.
- With finite coefficients A_m=ℤ/p^m, T^S⊗A_m acts on the reductions of the finite-level objects, never on M_w^ε: an A_1-linear action on the p-torsion-free module Λ[0] would force p·1=0.

No replacement of the image by an abstract eigenvalue algebra with the same closed points.

### 4.8 Integral Iwasawa Serre duality

Use the integral Siegel datum of Conventions.

For w*=w0M w w0 there is a perfect derived pairing M_w^0⊗^L_Λ M_(w*)^1→Λ[−d], with the Λ-action on the second factor transported as in the source duality. At fixed weight it pairs C_w(κ,χ,0) with C_(w*)(κ∨,w0χ⁻¹,1) into O[−d]. The adjoint of t is w0(t⁻¹), and prime-to-p double cosets are replaced by their inverses. This is a duality of perfect complexes; individual cohomology modules may have Ext terms integrally. (BP-Hida, Theorems 5.5.1–5.5.2, p. 57).

A proof route is as follows: Apply the ordinary duality of §2.7 modulo each p^s before passing to the tower; its strict-dynamics hypothesis is §3.3. Transport the negative torus chamber by w0 and match w*. Use the perfect Iwasawa models to commute duality with arithmetic derived specialization.

*Needs:* §4.5; §2.7; §3.3; §4.6; AutomorphicBundles §5.3; AutomorphicBundles §5.4; AutomorphicBundles §6.1.

The cohomological complementary degree and the boundary twist must both match.

### 4.9 Proved integral amplitude in genera one and two

Use the integral Siegel datum of Conventions.

For g=1 or 2, M_w^0 has perfect amplitude [ℓ(w),d] and M_w^1 has perfect amplitude [0,ℓ(w)]. In genus one the stronger concentration holds: the identity chamber lies in degree zero for both boundary variants, and the long chamber in degree one. General-g integral sharp amplitude is Conjecture 5.6.1, not a theorem of this roadmap. Rational all-g amplitude is §8.4. (BP-Hida, Conjecture 5.6.1 and Proposition 5.6.3, p. 58).

A proof route is as follows: Reduce perfect amplitude to residue fields by the local perfectness criterion. For g=2 use the affine ordinary minimal locus and the two-affine cover of the p-rank≥1 locus, with subcanonical higher-direct-image vanishing. Use duality for the remaining chambers and distinguish this proof from the general-g conjecture.

*Needs:* §4.5; §4.8; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; AutomorphicBundlesPartII §5.1; AutomorphicBundlesPartII §5.2.

The statement includes degree-one Siegel cohomology without asserting that its specialization is flat.

### Examples

The continuous dual of C⁰(T′,ℤ_p)[0] is Λ′[0]. In degree i the dual is in degree −i; reconstruction returns degree i. At ν(u)=u, the arithmetic base-change map is [u]↦u⁻¹. For g=2,w=s1 the canonical amplitude is [1,3], while the dual cuspidal partner has amplitude [0,2].

### Dependencies

AutomorphicBundles §3.3; AutomorphicBundles §5.10; AutomorphicBundles §5.3; AutomorphicBundles §5.4; AutomorphicBundles §6.1; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §2.2; AutomorphicBundlesPartII §3.0a; AutomorphicBundlesPartII §3.3; AutomorphicBundlesPartII §3.13; AutomorphicBundlesPartII §5.1; AutomorphicBundlesPartII §5.2; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12; §2.7; §2.4; §2.6; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; §3.3; §3.4; §3.5; §3.8; IntegralHeckeAndGaloisDeterminants §2.1; PadicFamilies §0a.24; PadicMeasuresIwasawaAlgebras §1.1; PadicMeasuresIwasawaAlgebras §1.7; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; gap:coherent-correspondences; gap:discrete-adic-solid-comparison; gap:siegel-ordinary-igusa; gap:solid-localization-kernel.


## Layer 5: Geometric higher Coleman cohomology

After the imported Bruhat geometry (§5.1), the supported objects, their finite-slope continuation and their level control (§§5.2–5.4), the layer proves the three inputs of geometric classicality (§5.8): the local slope bounds that remove the incompatible Bruhat strata (§5.5), the complementary degree ranges of local cohomology (§5.6), and the Bruhat-filtered Cousin complex that assembles local cohomology into global and interior cohomology (§5.7).

Sections 5.1–5.4 and 5.6 keep their numbers, and §5.6 also contains the finite-slope Serre duality theorem; the other sections of the former numbering of this layer map as follows.

| Former numbering | Section |
| --- | --- |
| §5.5 | §5.7(a) |
| §5.7 | §5.6(b) |
| §5.8 | §5.7(b) |
| §5.9 | §5.5 |
| §5.10 | §5.8 |

### 5.1 Bruhat geometry at finite level

Use the Coleman datum of Conventions.

This section states no target. It fixes the notation that Layers 5–7 use for the finite-level Bruhat geometry, which is imported. PerfectoidShimuraVarieties §6.13a owns the continuous truncated period maps π_HT,K_p and π^tor_HT,K_p from the minimal and the toroidal compactification at level K^pK_p to the orbit space FL_(G,μ)/K_p with its quotient topology, obtained from the Hodge–Tate period maps of its §§6.3, 6.8 and 6.10, and the fact that the inverse image of each K_p-stable Bruhat tube ]C_w,k[_(m,n)K_p of its §6.13 is an open analytic domain, compatibly with change of level, cone refinement and both Hecke projections; partial closures of tubes are used only as subsets. Its §6.14 owns the reductions M_dR,m,n,K_p of the de Rham Levi torsor over these inverse images, for K_p=K_(p,m′,b′) and 0≤m−n≤m′−1 and for F so large that the cyclotomic character composed with μ factors through the reducing group, with their compatibility in (m,n,K_p). Its §6.15 owns the Hecke maps of these reductions, locally given for t∈T(ℚ_p) by the double coset of wtw⁻¹ under the reducing group, and the identification M_HT=M_dR×^(μ,ℤ_p^×)ℤ_p(1) of the Hodge–Tate Levi torsor with the cyclotomic µ-twist of the de Rham torsor. That sufficiently small neighbourhoods of classical flag points have affinoid inverse images in the minimal compactification is gap:abelian-affinoid-basis. None of this asserts that the general toroidal tower is a perfectoid space, or that the finite-level period map is an algebraic morphism. (BP-Coleman, Theorem 4.5.2, p. 88; §4.6, pp. 89–98; Propositions 4.6.12, 4.6.14–4.6.15 and 4.6.19, pp. 94–98.)

*Needs:* §1.1; PerfectoidShimuraVarieties §6.3; PerfectoidShimuraVarieties §6.13; PerfectoidShimuraVarieties §6.13a; PerfectoidShimuraVarieties §6.14; PerfectoidShimuraVarieties §6.15; PerfectoidShimuraVarieties §4.5; PerfectoidShimuraVarieties §6.8; PerfectoidShimuraVarieties §6.10; gap:abelian-affinoid-basis; ShimuraCompactifications §0.14; ShimuraCompactifications §4.10.

No nonempty ordinary locus is required. The nonsplit local case uses relative valuations and does not give an absolute Weyl action on analytic characters.

### 5.2 Allowed supported Bruhat neighborhoods

Use the Coleman datum of Conventions.

Fix t∈T++ with min(t)≥1 and put C=max(t), where min(t) and max(t) are the least and the greatest of v_p(α(t)) over the positive roots α (BP-Coleman, §3.4, p. 45). When Φ⁺ is empty, that is when G_F is a torus, put min(t)=max(t)=C=1, so that every t∈T++=T(ℚ_p) is admitted; then the flag variety is a point, w⁻¹Φ^(−,M) is empty, and every tube and partial closure below is the whole finite-level Shimura space X. Fix w and the level K_(p,m′,b) with m′≥b≥0 and m′>0. For r,s∈ℚ∪{−∞}, ]C_w,k[_(r,s) is the image in U_w^an of the product of the open balls U°_(α,r)={|u_α|<|p^r|} over the roots α of w⁻¹Φ^(−,M) that are negative and the closed balls U_(α,s)={|u_α|≤|p^s|} over those that are positive (PerfectoidShimuraVarieties §6.13). The depth −∞ gives the whole root line; every finite depth, negative ones included, gives a ball of finite radius, so depth −1 means |u_α|≤p (or <p on an open factor), not the unbounded tube. For r,s∈ℚ the partial closures replace the open-ball factors (index written cl r), the closed-ball factors (index written cl s), or both, by their closures in U_α^an; the closure of a closed ball adds the rank-two point specializing its Gauss point outward, and the closure of an open ball adds the rank-two point specializing its Gauss point inward (BP-Coleman, Example 3.3.9 and Definition 3.3.10, p. 40). Write B(r,s), B(cl r,s), B(r,cl s) and B(cl r,cl s) for the inverse images under π^tor_HT,K_p of the corresponding K_p-stable tubes ]C_w,k[_(r,s)K_p and their partial closures (PerfectoidShimuraVarieties §6.13a; the partial closures are subsets, not open analytic domains). For + an allowed pair is an open U and closed Z, with U and the complement of Z in the ambient toroidal Shimura space finite unions of quasi-Stein opens, for which some integers m,n,s≥0 satisfy U∩B(m,cl(n+s))⊂Z∩U⊂B(0,cl(Cn)) and B(m+s,cl n)⊂U⊂B(Cm,−1). For − require U∩B(cl(m+s),n)⊂Z∩U⊂B(cl(Cm),0) and B(cl m,n+s)⊂U⊂B(−1,Cn). The first lower bound is relative to U, and this is what the comparison with the defining complex uses. For +, let U_m and Z_n be the inverse images of the image of the tube of the Schubert variety X_w under the m-th power of the t-correspondence and of the image of the closure of the tube of Y_w=⋃_(w′≥w)C_w′ under the n-th power of its transpose, so that U_0∩Z_0=B(0,cl 0) carries the defining complex. The estimates U_m∩Z_(n+s)⊂B(m,cl(n+s)), U_(m+s)∩Z_n⊂B(m+s,cl n), B(Cm,−1)⊂U_m and B(0,cl(Cn))⊂Z_n (BP-Coleman, proof of Theorem 5.4.12, p. 112, from Lemma 3.5.11) give U⊂U_m, hence U∩Z_(n+s)⊂U∩B(m,cl(n+s)), and turn the inclusions into U_(m+s)∩Z_n⊂U⊂U_m and U∩Z_(n+s)⊂Z∩U⊂Z_n. These are the hypotheses of the support comparison for the s-th power of the correspondence acting on the pair (U_m,Z_n) (BP-Coleman, Corollary 5.3.4, p. 106). The − case is the same with t⁻¹, the tubes of X_w and Y_w exchanged, and the roles of m and n exchanged. The absolute lower bound B(m,cl(n+s))⊂Z∩U printed in BP-Coleman, Definition 5.4.10, implies the relative one, but the standard pair of depth one on the GL₂ identity stratum does not satisfy it once C=2 (Checks below; source issue E13). In the rootless case every B is X and the only allowed pair of either sign is U=Z=X. Call an allowed pair period-saturated if U and Z are the inverse images under π^tor_HT,K_p of K_p-stable subsets of the flag variety; the standard pairs below are period-saturated. Define the local complex by supported cohomology RΓ_(U∩Z)(U,Vκ(−εD)) followed by finite-slope extraction for the s-th power of the t-correspondence (of t⁻¹ in the negative convention), which acts on it through that comparison (BP-Coleman, Theorem 5.4.12, p. 112). For finite quasi-Stein covers of U and of the complement of Z, the Čech cones of finite affinoid covers of the members of their affinoid exhaustions represent RΓ_(U∩Z)(U,Vκ(−εD)) as an object of Pro_N(K^proj(Ban(F))): a countable projective system of bounded projective Banach complexes with cohomology in a uniformly bounded range, with morphisms lim_n colim_m of homotopy classes from the m-th to the n-th stage (BP-Coleman, §2.4.7, p. 22; Lemma 2.5.19, p. 27). Its limit has Fréchet terms; it is not a single Banach complex. (BP-Coleman, Definition 5.4.10, pp. 111–112; §5.4.1 and Theorem 5.4.3, pp. 108–109; Theorem 5.4.12, p. 112).

A proof route is as follows: Pull back the supplied Bruhat tubes and their partial closures and choose standard support pairs. Compute partial support by the Čech cones of the affinoid exhaustions of a finite quasi-Stein cover, as a countable projective system. Apply finite-slope extraction only to the potent compact Hecke action; retain chosen complex models.

*Needs:* §5.1; PerfectoidShimuraVarieties §6.8; PerfectoidShimuraVarieties §6.10; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; LocallyAnalyticDistributions §4.16; LocallyAnalyticDistributions §4.17; gap:projective-banach-cohomology.

The basic properties of this construction are:

- A pair (U,Z) with the four inclusions and finite quasi-Stein covers.
- U=B(s,−1), Z=B(cl 0,cl s) is a standard positive pair for every integer s≥0, with m=n=0 and the same s: U lies in the tube of X_w and Z in the closure of the tube of Y_w, whose intersection is B(0,cl 0), and U∩B(0,cl s)⊂B(cl 0,cl s)=Z (BP-Coleman, Lemma 3.3.24, p. 44; Example 5.4.11, p. 112).
- U=B(−1,s), Z=B(cl s,cl 0) is a standard negative pair for every integer s≥0, with m=n=0 and the same s: U lies in the tube of Y_w and Z in the closure of the tube of X_w, whose intersection is B(cl 0,0), and U∩B(cl s,0)⊂Z.
- C_w,κ^±,ε(U,Z)^fs, the finite-slope part of the supported pro-Banach Čech model in Pro_N(K^proj(Ban(F))).
- On every allowed pair the s-th power of T^±, for the s of its inclusions, acts potent compactly (BP-Coleman, Theorem 5.4.12, p. 112); T^± itself need not preserve the pair, and it acts on finite-slope cohomology by transport through the continuation isomorphisms of §5.3. A prime-to-p Hecke correspondence preserves each period-saturated pair, because the period map is prime-to-p Hecke-equivariant (PerfectoidShimuraVarieties §§6.8 and 6.10), and acts on its supported object; a general allowed pair need not be preserved, and on it the action on finite-slope cohomology is transported through the continuation isomorphisms of §5.3, as in §6.10.

**Checks.**

- The positive standard pair keeps B(cl 0,cl s) as the closed constraint and B(s,−1) as the open; swapping them generally fails the open/closed requirements.
- The negative standard pair reverses the two tube directions, rather than using the positive pair twice.
- Depth −1 is a finite radius. At p=3 a positive-root coordinate u=1/9 has |u|=9>3, so the point lies in the depth −∞ tube but not in the depth −1 tube; at p=2, u=1/4 has |u|=4>2. Reading −1 as the unbounded tube enlarges the upper bound U⊂B(Cm,−1) of the positive definition.
- Closures are part of the definition. The closed unit disc of the adic affine line is quasi-compact and open; the rank-two point specializing its Gauss point towards infinity is not in it but is in its closure. So, as soon as w⁻¹Φ^(−,M) is nonempty, B(0,s) and B(cl 0,cl s) differ, and only the second can serve as the closed constraint Z of the standard positive pair.
- The first lower bound is relative to U. Take GL₂, w=id, p=3, level K_(p,m′,b) with m′≥3, and t with v_3(α(t))=2 for the positive root, so C=2. The identity tube has the single negative-root coordinate z, and for 0≤r<m′ the set B(r,s) is the inverse image of {v_3(z)>r} whatever s is, because K_(p,m′,b) changes z only by unit factors, by z↦z/(1+cz) with c integral and by translations in 3^(m′)ℤ_3, each of which preserves v_3(z) when it is less than m′ and keeps it at least m′ otherwise. For the standard pair U=B(1,−1), Z=B(cl 0,cl 1) one has Z∩U=U. The absolute bound B(m,cl(n+s))⊂Z∩U fails at m=0, at the Hodge–Tate period z=3 with v_3(z)=1, and U⊂B(2m,−1)⊂B(2,−1) fails for every m≥1, at the period z=9 with v_3(z)=2; both periods are rational, hence periods of ordinary points. The relative bounds hold with m=n=0, s=1: U∩B(0,cl 1)=U=Z∩U⊂B(0,cl 0) and B(1,cl 0)=U⊂B(0,−1). C≥2 is not exceptional: min(t)≥1 forces C≥2 as soon as Φ⁺ contains a sum of two positive roots, and C≥3 for GSp₄, where 2α₁+α₂ is a root.
- Rootless data. For a torus datum whose finite-level Shimura space consists of N points over F, with a rank-one coefficient, every B is X, all four inclusions read X⊂X, the only allowed pair is U=Z=X, and the supported complex is F^N in degree 0. For N=1 and t=1 the correspondence is the identity of F, which is compact, and the finite-slope part is F. Extrema of v_p(α(t)) over the empty set of roots would leave C undefined.
- For an affinoid disc and closed Z=∅ the supported complex is zero; unrestricted H^0 of the disc is not zero.
- The model is pro-Banach, not Banach. For U the open unit disc over ℚ₃ and a closed Z containing U, the supported complex is O(U) in degree 0, the limit of the Banach spaces of functions on the closed discs of radius r<1. The functions f_n=3^(−n/2)z^n, n=4,8,12, have norm 1 on the disc of radius 3^(−1/2) and norms 3,9,27 on the disc of radius 3^(−1/4). Since (r′/r)^n is unbounded for every r<r′<1, no finite set of these norms defines the topology of O(U), so one quasi-Stein member of a finite cover already gives a genuine projective system.

Boundary cuspidality and partial Bruhat support are two separate operations.

### 5.3 Finite-slope analytic continuation

Use the Coleman datum of Conventions.

All allowed support pairs for fixed w, level and algebraic coefficient produce canonically isomorphic finite-slope cohomology and the corresponding compatible local objects. On an allowed pair with inclusion parameters (m,n,s) as in §5.2, the s-th power of the normalized t-correspondence acts and is potent compact in Pro_N(K^proj(Ban(F))): some power of it factors through a compact map between two bounded projective Banach complexes (BP-Coleman, Definitions 2.4.12–2.4.13 and Lemma 2.4.10, pp. 22–23). For i large such a compact endomorphism induces compact endomorphisms T_i of the stages M_i, each factoring through the transition map τ_i:M_(i+1)→M_i as T_(i+1)=a_i∘τ_i and T_i=τ_i∘a_i up to homotopy for some a_i:M_i→M_(i+1), so the transition maps identify the finite-slope parts of all large stages, and the finite-slope part is computed on any large stage (BP-Coleman, Proposition 5.1.4, p. 100). Its finite-slope part is independent of the chosen strictly positive t in the compatible Hecke monoid. The statement applies to finite nebentypus and both boundary variants; full infinite-slope supported cohomology need not be invariant. (BP-Coleman, Theorem 5.4.3, p. 109; Theorem 5.4.12, p. 112).

A proof route is as follows: Use the t-induced root-coordinate contractions to compare a pair and a strictly improved pair; for a general allowed pair apply the support comparison of §5.2 to the s-th power of the correspondence on (U_m,Z_n) (BP-Coleman, Corollary 5.3.4, p. 106). Represent the correspondence by pullback, coefficient map and trace on the finite quasi-Stein cover. Apply compact restriction and invert t on finite slopes to make the support comparison maps invertible. Identify the finite-slope parts of large stages through the factorization of the stage operators, by the factorized-operator lemma of LocallyAnalyticDistributions §4.16; its §4.17 is the module version for Fréchet presentations.

*Needs:* §5.2; LocallyAnalyticDistributions §4.16; LocallyAnalyticDistributions §4.17; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; gap:projective-banach-cohomology.

Compactness is a factorization property of a power in the pro-category, not a property of every representative or of the limit Fréchet complex.

### 5.4 Finite-slope level and character control

Use the Coleman datum of Conventions.

For K_(p,m,b), changing m with b fixed induces finite-slope equivalences: use pullback for + and trace for −. Changing b is governed by invariants for the finite quotient of the torus-unit subgroup, with the chosen finite character. Over F these finite invariants are exact. At arbitrary character conductor choose a sufficiently deep b; no integral division by the finite quotient order is asserted. (BP-Coleman, Theorem 5.4.14, p. 113).

A proof route is as follows: Factor the two level maps through iterated positive/negative Hecke correspondences. Invert the compact positive torus operator on finite slopes. Apply characteristic-zero finite-group descent for the remaining torus quotient.

*Needs:* §5.3; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.3; gap:coherent-correspondences; PerfectoidShimuraVarieties §6.12.

The m and b parameters have different control mechanisms.

### 5.5 Proved local slope bounds

Use the Coleman datum of Conventions.

A smooth eigencharacter in local canonical or cuspidal + cohomology has valuation λ≥w⁻¹w0Mκ and λ≥w⁻¹w0Mκ+w⁻¹2ρ_nc. In − cohomology it has λ≤w⁻¹κ and λ≤w⁻¹κ+w⁻¹2ρ_nc. The sharper desired + bound λ≥w⁻¹w0M(κ+ρ)+ρ and − bound λ≤w⁻¹(κ+ρ)−ρ are not used here. Their full general noncompact versions remain conjectural. Interior (hence compact) and Siegel improvements are separate downstream Layer 7 and Layer 8 targets. (BP-Coleman, Conjecture 5.9.2 and Theorem 5.9.6, pp. 122–124).

A proof route is as follows: Choose the integral lattice in the algebraic representation on the reduced torsor. Estimate pullback and trace on the small smooth affinoids, retaining their separate normalization factors. Retain the two proved bounds here; the downstream interior and integral Siegel arguments supply sharp improvements.

*Needs:* §5.3; §1.2; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.2; gap:coherent-correspondences; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; gap:projective-banach-cohomology.

Do not use the conjectural sharp bound to prove general full-space classicality.

### 5.6 Complementary degree ranges of local cohomology

Use the Coleman datum of Conventions.

The two boundary variants of local finite-slope cohomology live in complementary degree ranges: the cuspidal one in [0,ℓ±(w)] by (a), and the canonical one in [ℓ±(w),d] by the Serre duality (b), which exchanges the boundary variants and the degrees i and d−i.

(a) Cuspidal vanishing by Bruhat length. For each w and either sign the cuspidal finite-slope local cohomology is concentrated in [0,ℓ±(w)]. This uses subcanonical higher-direct-image vanishing to the minimal compactification and the quasi-Stein/affinoid tube cover with its support codimension. The result holds for the supported general abelian-type datum; it is not a statement that every canonical bundle has acyclic pushforward to the minimal compactification. (BP-Coleman, Theorem 4.1.7, pp. 51–53; Theorem 5.6.1, pp. 115–117).

(b) Finite-slope Serre duality. There is a nondegenerate pairing H_w^i(κ,χ,1)^±,fs × H_w^(d−i)(κ∨,χ⁻¹,0)^∓,fs→F, adjoint for t and t⁻¹ and inverse prime-to-p double cosets. It is perfect on each matching finite-dimensional generalized eigenblock. Consequently, by (a), canonical finite-slope cohomology is concentrated in [ℓ±(w),d]. The pairing on the whole finite-slope union is not identified with the unrestricted algebraic dual of that union. (BP-Coleman, Theorems 5.7.1–5.7.3, pp. 117–119; Theorem 2.7.1 and Proposition 2.7.3, pp. 31–32).

A proof route is as follows: For (a), push the subcanonical coefficient to the minimal compactification using the supplied R^iπ_* vanishing; compute supported cohomology on the finite quasi-Stein cover of affinoid inverse images; count the length/codimension of the local Bruhat directions and apply finite-slope continuation. For (b), apply the supplied dagger LB/Fréchet support duality to the supported coefficient complex; use coefficient evaluation and the canonical bundle V_(−2ρ_nc)(−D); match compact Hecke slope projectors under transposition, then dualize the cuspidal vanishing range of (a).

*Needs:* §5.3; §1.1; ShimuraCompactifications §0.14; ShimuraCompactifications §4.10; AutomorphicBundles §5.3; AutomorphicBundles §5.4; AutomorphicBundles §6.1; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; AdicSpacesPartIV §F1.10; gap:projective-banach-cohomology; gap:abelian-subcanonical-vanishing; gap:banach-support-duality.

**Checks.**

- For a smooth affinoid dagger surface and a finite line, H⁰ pairs with H_c² using Ω². The supported complex is already in degree 2; adding another [−2] would place it in degree 4. For a point d=0 this reduces to F×F→F, multiplication.

The ε=1 hypothesis cannot be dropped in (a). The shift in (b) pairs degrees i and d−i and exchanges ε=1 with ε=0.

### 5.7 The Bruhat-filtered Cousin complex and interior cohomology

Use the Coleman datum of Conventions.

(a) The finite-slope Bruhat Cousin spectral sequence. For each sign and boundary variant there is a Hecke-equivariant spectral sequence E1^(r,q)=⊕_(ℓ±(w)=r) H_w^(r+q)(K^p,κ,χ,ε)^±,fs ⇒ H^(r+q)(K^p,κ,χ,ε)^±,fs, whose target is classical toroidal coherent cohomology at the matching p-level/character. The filtration comes from the length filtration by closed Bruhat unions on the flag quotient. There is no regularity assumption here and every contributing w is kept. (BP-Coleman, Theorem 5.5.1, pp. 113–115).

(b) Interior cohomology and Cousin subquotients. Define H_w,!^i as the image of local cuspidal to canonical H_w^i. It vanishes outside i=ℓ±(w). The global interior H_!^i=Im(H_cusp^i→H_can^i) is a subquotient of degree-i cohomology of the interior Cousin complex built from H_w,!^(ℓ±(w)); equality is not asserted for arbitrary boundary. If the Shimura variety is compact, D=∅ and the local cohomology is concentrated exactly at ℓ±(w), so the Cousin complex computes the full cohomology. (BP-Coleman, Corollaries 5.7.5 and 5.7.7 and Remark 5.7.6, p. 120; Corollary 5.8.1, pp. 120–121).

A proof route is as follows: For (a), pull back the finite closed Bruhat filtration to the toroidal space; apply the supported localization triangles to obtain the exact couple; use continuation to identify each finite-slope graded term and verify Hecke compatibility on common fan refinements. For (b), intersect the two local cohomological ranges of §5.6; map the cuspidal filtered complex of (a) to the canonical one and take the surviving interior terms; use the induced spectral-sequence filtrations to obtain the subquotient; specialize to identical coefficients when D is empty.

*Needs:* §5.3; §5.4; §5.6; AutomorphicBundlesPartII §3.10; AutomorphicBundlesPartII §3.12; gap:coherent-correspondences; ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13; AutomorphicBundles §5.3; AutomorphicBundles §5.4; AutomorphicBundles §6.1.

The basic properties of this construction are:

- H_w,!^i has source the cuspidal H_w^i(κ,χ,1)^±,fs and target the canonical H_w^i(κ,χ,0)^±,fs, the map being induced by O(−D)→O; it is a Hecke submodule of the target, stable under T^± and the prime-to-p double cosets, and is finite-dimensional on each slope block.
- H_w,!^i=0 for i≠ℓ±(w), because the cuspidal source vanishes above ℓ±(w) and the canonical target vanishes below it.
- When the two boundary variants agree (D=∅), the map is the identity and H_w,!^i=H_w^i; the same holds for global H_!^i.
- The global H_!^i is the image of H_cusp^i→H_can^i with its induced Hecke action, and it is a subquotient of the degree-i cohomology of the interior Cousin complex.

**Checks.**

- If the cuspidal-to-canonical map on a one-dimensional eigenblock F is zero, the interior group is 0 although both groups are F; replacing the image by the target would give F.
- If that map is the identity of F, the interior group is F; replacing the image by the kernel would give 0.
- For GL₂ (d=1) and w=id, cuspidal local cohomology lies in degree 0 and canonical in degrees [0,1], so H_id,!^1=0 even when canonical H_id^1 is nonzero. At a fixed weight the interior group is the image of the fixed-weight map: the family map t:F⟨t⟩→F⟨t⟩ has image (t) with fibre F at t=0, whereas the specialized map 0:F→F has image 0, so the fibre of a family image is not the fixed-weight interior group.

In rank one the two columns of (a) give a four-term exact sequence rather than a forced direct sum. Taking images is not an exact functor on general spectral sequences.

### 5.8 Geometric classicality in regular and singular weights

Use the Coleman datum of Conventions.

On the geometric strongly small region of Layer 1, all local terms with w∉Cκ± vanish. If κ+ρ is regular and Cκ±={w}, the Cousin edge map is an equivalence between local finite-slope and global classical cohomology in that region, for both boundary variants. For singular κ retain the entire compatible Cousin complex: with l_min=min_(Cκ±)ℓ± and l_max=max_(Cκ±)ℓ±, classical cuspidal cohomology lies in [0,l_max], canonical in [l_min,d] and interior in [l_min,l_max]. The downstream Layer 7 theorem supplies the compact improvement and Layer 8 the Siegel improvement; this target itself uses the proved strongly small region. (BP-Coleman, Theorems 5.12.3 and 5.12.5, p. 135).

A proof route is as follows: Apply the proved inequalities of §5.5 to kill every incompatible w-summand of the spectral sequence of §5.7(a). Use the finite Cousin filtration for the regular equivalence. For a singular chamber set use the local degree ranges of §5.6 and the interior subquotient of §5.7(b), without inventing degeneration between the remaining strata.

*Needs:* §5.5; §5.6; §5.7; §1.2.

The equality endpoint of a small-slope threshold is not included.

### Examples

For GL₂ the Bruhat filtration has two columns and produces the four-term sequence of §9.2. Empty local support gives the zero complex. For a dagger surface, H⁰ with dual coefficient pairs with H_c² using Ω², not Ω¹.

### Dependencies

§1.2; §1.1; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; AdicSpacesPartIV §F1.10; AutomorphicBundles §5.3; AutomorphicBundles §5.4; AutomorphicBundles §6.1; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.2; AutomorphicBundlesPartII §3.3; AutomorphicBundlesPartII §3.10; AutomorphicBundlesPartII §3.12; LocallyAnalyticDistributions §4.16; PerfectoidShimuraVarieties §4.5; PerfectoidShimuraVarieties §6.12; PerfectoidShimuraVarieties §6.13; PerfectoidShimuraVarieties §6.13a; PerfectoidShimuraVarieties §6.14; PerfectoidShimuraVarieties §6.15; PerfectoidShimuraVarieties §6.3; PerfectoidShimuraVarieties §6.8; ShimuraCompactifications §0.14; ShimuraCompactifications §4.10; ShimuraData §3.10; ShimuraData §3.13; ShimuraData §3.8; gap:abelian-affinoid-basis; gap:abelian-subcanonical-vanishing; gap:banach-support-duality; gap:coherent-correspondences; gap:projective-banach-cohomology; LocallyAnalyticDistributions §4.17; PerfectoidShimuraVarieties §6.10.


## Layer 6: Analytic coefficients and derived families

### 6.1 Normalized analytic torus action

Use the Coleman datum of Conventions.

Use the modified torsor map e[t] from the t-conjugation on the reduced unipotent quotient, followed by (w⁻¹w0Mρ+ρ)(t)⁻¹Tr_p1, to act on V_(ν_A)^n-an. Use the transpose inverse action for D_(ν_A)^n-an. Units u∈T(ℤ_p) act by ν_A(u) on + and ν_A(u)⁻¹ on −. Consequently the algebraic comparison is T-equivariant as C_w(κ,χ)^+→C_w,an(ν)^+(−ν_alg), and C_w,an(ν)^−(ν_alg)→C_w(κ∨,χ⁻¹)^−. This action depends on t itself, including its unit part. (BP-Coleman, Lemma 6.3.10 and Lemma 6.3.11, pp. 155–156; §6.5.4, p. 160).

A proof route is as follows: Modify the ordinary Hecke torsor map by the actual t-conjugation, before taking associated sections. Insert the displayed trace character and check the action on torus units. Apply duality to distributions and reconcile the algebraic comparison through the algebraic-character twists.

*Needs:* OverconvergentAutomorphicForms §8.7; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.2; gap:coherent-correspondences; OverconvergentAutomorphicForms §8.6; AutomorphicBundles §1.4; AutomorphicBundles §1.5; AutomorphicBundles §1.9.

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

Use the Coleman datum of Conventions. Choose a Hodge-type datum (G₁,X₁) and the auxiliary datum B₁=G₁×_(G₁^ab)T of PerfectoidShimuraVarieties §6.4, with neat K⊆G(𝔸_f) and K′⊆B₁(𝔸_f) chosen as in PerfectoidShimuraVarieties §6.6(3), so that f(K′) is normal in K and the neutral toroidal map f:S^tor,0(B₁)_(K′,Σ)→S^tor,0(G)_(K,Σ) is finite and generically finite étale with group Δ=Δ(K,K′) (PerfectoidShimuraVarieties §6.9), and with a cone decomposition Σ perfect for G₁ and smooth for G. A Σ that is perfect for G₁ and smooth for G is a hypothesis of this theorem: the descent formula (1) and the invariant-factor statement (3) need no smoothness and pass to refinements of Σ by the projection formula (BP-Coleman Lemma 6.6.4 and its proof, pp. 163–164), whereas the projectivity statement (2), which this roadmap adds, uses the regularity of the target. Let ν_A:Tʳ(ℤ_p)→A^× be n-analytic, K_p⊆K_(p,m′,0) with m′>n, and let ν′_A be the induced character for B₁. Prove the following.

1. On the neutral components of the depth-n tube preimages (π^tor_HT)⁻¹(]C_w,k[_(n,n)K_p), f restricts to a finite map. The Bruhat reduction M_dR,n,K_p for G is the Δ-quotient of the pushout of the B₁ reduction, and the B₁ reduction is the fibre product of the G₁ reduction with the trivial reduction on the zero-dimensional T-Shimura variety. Consequently V^n-an_(ν_A)=(f_*V^n-an_(ν′_A))^Δ, and likewise for D^n-an and for the twists by −D. These identities concern sheaves; they are not asserted to intertwine the Hecke actions at level B₁.
2. Every point of the G tube preimage has an affinoid neighbourhood U whose preimage at G₁-level is a Δ-stable union of pregood affinoids. On such U the sections of V^n-an_(ν_A)(−εD) and D^n-an_(ν_A)(−εD) are projective Banach O(U)⊗̂A-modules: the coefficients are locally projective Banach sheaves on the tube preimage, which is the premise of the projective-Banach coefficient contracts consumed in Layer 6.
3. For such U, RΓ(U,V^n-an_(ν_A)(−εD)) is the Δ-invariant direct factor of the corresponding B₁ complex, and the B₁ complex is computed from the G₁ complex in the same way.

For a Hodge-type datum, take G₁=G and Δ trivial, and the statement reduces to the finite-flat trivialization supplied there, with no second construction. (BP-Coleman, Definition 4.4.3, p. 66; Principle 4.4.44, p. 84; Remark 4.6.6, pp. 91–92; Remark 4.6.13 and Proposition 4.6.15, p. 95; Lemma 6.6.4 and its proof, pp. 163–164).

A proof route is as follows: Over a pregood affinoid at G₁-level, trivialize M_dR,n after a finite flat cover at a deeper level K′_p; there the coefficient is the completed tensor product of the cover's ring with the analytic functions on the reduction group, and its descent to the affinoid is the invariant part under the finite level-change group, a direct factor because the group order is invertible in the characteristic-zero coefficient field. Extend to B₁ by the trivial torus part. Since the target is regular and the source, a normal toroidal embedding, is Cohen–Macaulay of the same dimension, the finite map f is flat (miracle flatness); pushforward preserves projective Banach modules and Δ-invariants are a direct factor by averaging, which gives local projectivity and the cohomology statement on G.

*Needs:* OverconvergentAutomorphicForms §8.6; OverconvergentAutomorphicForms §8.7; PerfectoidShimuraVarieties §3.13; PerfectoidShimuraVarieties §6.4; PerfectoidShimuraVarieties §6.5; PerfectoidShimuraVarieties §6.6; PerfectoidShimuraVarieties §6.7; PerfectoidShimuraVarieties §6.9; PerfectoidShimuraVarieties §6.14; §5.1; ShimuraCompactifications §0.14; AdicSpacesPartIII §R3.8.

**Checks.**

- For a Hodge-type datum, G₁=G, T acts trivially and Δ=1: the statement is the supplier's finite-flat trivialization on pregood affinoids, and taking invariants changes nothing.
- For the split adjoint datum PGSp₄, which is of abelian type but not of Hodge type, the GSp₄ Siegel datum is a Hodge-type cover. The descent here must be applied with the actual Δ and the induced character ν′_A before any projective-Banach cohomology statement is used for PGSp₄; the Siegel Levi still has a nontrivial root, so the coefficient is a genuinely infinite-rank analytic Banach sheaf, and its finite-rank algebraic subsheaves do not settle the question.
- Averaging over Δ is used only with |Δ| invertible: for Δ={1,σ} of order 2, Δ-invariants of the augmentation ℤ_2[Δ]→ℤ_2 is the map ℤ_2(1+σ)→ℤ_2 with image 2ℤ_2, so invariants are not exact integrally; after inverting 2 the image is ℚ_2 and the averaging idempotent (1+σ)/2 exists. The argument therefore gives no integral projectivity.
- Flatness of f uses the regularity of the target, not finiteness alone: over a field F of characteristic 0, the quotient map 𝔸²→𝔸²/{±1} is finite of generic degree 2, but F[x,y] is not flat over F[x²,xy,y²], since its fibre over the origin, F[x,y]/(x²,xy,y²) with basis 1,x,y, has dimension 3. A G with only a simplicial (non-smooth) Σ would expose the projectivity statement (2) to exactly this failure, which is why Σ is taken smooth for G.

### 6.2 Supported analytic family cohomology

Use the Coleman datum of Conventions.

Choose ν_A n-analytic and m′>n, and work at level K_(p,m′,0) with the tubes, partial closures and constant C of §5.2, including its rootless convention. An analytic allowed support pair satisfies the relative inclusions of §5.2 with a freely chosen second depth l in place of n: for +, U∩B(m,cl(l+s))⊂Z∩U⊂B(0,cl(Cl)) and B(m+s,cl l)⊂U⊂B(Cm,−1); for −, U∩B(cl(m+s),l)⊂Z∩U⊂B(cl(Cm),0) and B(cl m,l+s)⊂U⊂B(−1,Cl); and in both cases also U∩Z⊂B(n,n), the unclosed tube of depth n on which the coefficient sheaf is defined (BP-Coleman, Definition 6.4.7, p. 158, with source issues E5 and E13). The comparison with the defining complex is that of §5.2, with l in place of n, for the s-th power of the correspondence. In the rootless case B(n,n)=X and the only analytic allowed pair is U=Z=X. Use RΓ_(U∩Z)(U,V_(ν_A)^n-an(−εD)) for + and the distribution coefficient D_(ν_A)^n-an(−εD) with opposite support for −, represented as in §5.2 by the countable projective system of Čech cones of the affinoid exhaustions of finite quasi-Stein covers, an object of Pro_N(K^proj(Ban(A))) on which T^s is compact for s large (BP-Coleman, Theorem 6.4.8, p. 159). After extracting finite slopes denote its cohomology by H_w,an^i(ν_A,ε)^±,fs. Complex representatives retain their choices: the source proves canonical independent cohomology groups, not a unique chosen equivariant complex for all compact operators simultaneously. (BP-Coleman, §6.4.1, pp. 156–157; Theorems 6.4.3, 6.4.5, 6.4.8, 6.4.10, pp. 157–159).

A proof route is as follows: Refine the supports into the depth-n tube on which the sheaves exist. Use the supplied projective Banach acyclicity on affinoids and the finite-cover cones of the affinoid exhaustions to compute support as a projective system. Apply the radius-improving compact correspondence, then identify cohomology under changes of radius, support and m′.

*Needs:* §6.1; §6.1a; §5.2; §5.3; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; LocallyAnalyticDistributions §4.16; LocallyAnalyticDistributions §4.17; OverconvergentAutomorphicForms §8.6; OverconvergentAutomorphicForms §8.7; gap:projective-banach-cohomology.

The basic properties of this construction are:

- A chosen pro-Banach model in Pro_N(K^proj(Ban(A))), a power of t compact on it, and the induced compact endomorphisms of its large stages.
- Increasing n through analytic radii gives the canonical finite-slope cohomology isomorphism, with the distribution maps in the opposite direction.
- Two allowed pairs inside the coefficient tube give canonically identified finite-slope cohomology.
- Increasing m′ gives + pullback and − trace isomorphisms on finite slopes.

**Checks.**

- Empty allowed local support produces zero cohomology, with the zero slope complex.
- Replacing n by n+1 with m′>n+1 leaves finite-slope cohomology unchanged, while the coefficient modules themselves need not be equal.
- A pair with support outside B(n,n) is not an analytic-coefficient model of this definition, even if it is allowed for an algebraic bundle.
- In the GL₂ identity-stratum Check of §5.2 (p=3, C=2, m′≥3), take radius n=1 and U=B(1,−1), Z=B(cl 0,cl 1). Then Z∩U=U=B(1,1), and the relative inclusions hold with m=l=0, s=1, so this is an analytic allowed pair. With the absolute lower bound B(m,cl(l+s))⊂Z∩U the period z=3 forces m≥1, and then U⊂B(2m,−1)⊂B(2,−1) fails at the period z=9.

Independence concerns finite-slope cohomology, with compatible maps; it is not unrestricted derived canonicality.

### 6.3 Finite perfect family slope blocks

Use the Coleman datum of Conventions.

Locally on an affinoid weight space and a slope-adapted finite window for a chosen potent compact t, the family cohomology is computed by a bounded finite-projective A-complex, the slope block of a large stage of the pro-Banach model of §6.2 on which the chosen power of t induces a compact endomorphism; the slope blocks of different large stages have canonically isomorphic cohomology. Its H^i is finite over A and commutes with flat affinoid restriction. Quasi-isomorphic compatible models give the same finite-slope cohomology and Hecke support. The unsplit full family object is a countable projective system of bounded projective Banach complexes whose stages have infinite-rank terms; a cohomology sheaf on a finite block need not be projective. (BP-Coleman, §6.1.10–6.1.17, pp. 144–147; Proposition 6.1.11, p. 144; Lemma 6.1.15 and Remark 6.1.16, p. 146; Lemma 6.1.18, p. 147; Theorem 6.4.3, p. 157).

A proof route is as follows: Take a stage of the pro-Banach model on which a suitable t-power induces a compact endomorphism (BP-Coleman, Lemma 2.4.10, p. 23). Apply the imported simultaneous degreewise Riesz projectors on an adapted neighborhood. Identify the blocks of successive large stages through the factorization of the stage operators through the transition maps. Use functoriality of the differential and flat affinoid restrictions.

*Needs:* §6.2; LocallyAnalyticDistributions §4.16; LocallyAnalyticDistributions §4.17.

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

*Needs:* §6.7; §6.6; §5.6; §6.3.

Combining this with geometric classicality is a separate step: coefficient classicality alone does not identify local with global cohomology.

### 6.9 Family vanishing, pairings and bottom torsion freeness

Use the Coleman datum of Conventions.

Over weight affinoids, cuspidal H_w,an^i is zero outside [0,ℓ±(w)] and canonical H_w,an^i is zero outside [ℓ±(w),d]. Over a domain A the canonical bottom H_w,an^(ℓ±(w)) is A-torsion-free. There are family pairings between complementary ±, cusp/canonical degrees into A, whose coefficient-field instances are nondegenerate and perfect on matching finite-slope blocks. No derived perfect duality of arbitrary full family cohomology modules, or flatness over A, is asserted from nondegeneracy on field fibers alone. (BP-Coleman, Theorem 6.6.1, pp. 161–164; Theorems 6.7.1–6.7.3, pp. 164–167).

A proof route is as follows: Use the integral local-trivialization form of subcanonical acyclicity for the analytic Banach coefficient. Apply the Bruhat support dimension argument to obtain the cuspidal range. Over fields use finite-block Serre duality; use perfect-family fiber amplitude to obtain the canonical range and bottom-degree torsion freeness.

*Needs:* §6.3; §6.4; §6.1a; §5.6; ShimuraCompactifications §0.14; ShimuraCompactifications §4.10; AdicSpacesPartIV §F1.10; gap:banach-support-duality; gap:abelian-subcanonical-vanishing.

A torsion-free finite module over a higher-dimensional affinoid need not be projective.

### 6.10 The away-S spherical Hecke algebra on family cohomology

Use the Coleman datum of Conventions.

Let S consist of p and the primes ℓ at which the tame level is not hyperspecial, K^S=∏_(ℓ∉S)K_ℓ, and H^S=C_c^∞(G(𝔸_f^S)//K^S,ℚ) the spherical Hecke algebra away from S, which is commutative. For g∈G(𝔸_f^S) take the Hecke correspondence p1,p2:C_g→S^tor on compatible toroidal compactifications over a common cone refinement (ShimuraCompactifications §0.14). A general abelian-type datum carries no universal abelian scheme, so C_g has no universal isogeny; the construction uses two equivariance statements instead. First, π^tor_HT∘p1=π^tor_HT∘p2 on C_g, as maps to the quotient of the flag variety by K_p: the minimal period map is prime-to-p Hecke-equivariant and the toroidal period map factors through it (PerfectoidShimuraVarieties §§6.8 and 6.10). Second, the G(𝔸_f)-equivariant structure of the Levi torsor gives an isomorphism p1^*M_dR≅p2^*M_dR, constructed on the auxiliary Hodge-type cover of PerfectoidShimuraVarieties §6.4 and descended through the quotient by Δ of PerfectoidShimuraVarieties §6.9 (as in §6.1a), and compatible with π^tor_HT. It therefore carries the analytic reduction of PerfectoidShimuraVarieties §6.14 over each tube preimage to itself, and together with the trace of p1 it gives the coefficient map p2^*V_(ν_A)^(n-an)(−εD)→p1^!V_(ν_A)^(n-an)(−εD) and its distribution analogue (OverconvergentAutomorphicForms §§8.6–8.7). For a Hodge-type datum this isomorphism is the one induced by the universal prime-to-p isogeny. By the first statement C_g preserves every period-saturated allowed pair (U,Z) of §5.2 and §6.2, that is p1⁻¹(U)=p2⁻¹(U) and p1⁻¹(Z)=p2⁻¹(Z), and acts on RΓ_(U∩Z)(U,V_(ν_A)^(n-an)(−εD)) and on its distribution analogue. Prove that on period-saturated pairs [K^SgK^S]↦T_g extends to a ring homomorphism H^S⊗A[1/p]→End of these objects of Pro_N(K^proj(Ban(A[1/p]))) (§6.2), commuting with the torus operators of §6.1 and compatible with restriction between period-saturated pairs, with change of radius n and level m′, with derived weight specialization and with the algebraic coefficient maps of OverconvergentAutomorphicForms §8.7. A general allowed pair need not be preserved by C_g. On its finite-slope cohomology define the action by transport through the canonical continuation isomorphisms of §§5.3 and 6.2 from a period-saturated pair, and prove that the continuation isomorphisms between period-saturated pairs are H^S-equivariant, so that the transported action does not depend on the period-saturated pair chosen. Hence H^S acts through a commutative algebra on every family cohomology sheaf H_w,an^i(ν_A,ε)^±,fs, for all i, w, both signs and both ε, compatibly with the Tor spectral sequence of §6.4; at an algebraic weight the action agrees with that on the classical finite-slope cohomology of Layer 5, which in degree zero is AutomorphicBundles §12.11. (BP-Coleman, §6.9, p. 169; §4.4.41, p. 80; Principle 4.4.44 and Theorem 4.4.45, p. 84; Proposition 4.4.53(2), p. 87).

A proof route is as follows: Over the open Shimura variety the prime-to-p Hecke correspondences come from the right action of G(𝔸_f^p) on the tower of Shimura varieties, so they are finite étale and their composites (AutomorphicBundlesPartII §3.3) decompose according to the double-coset product; the coefficient isomorphisms multiply in the same way because the Levi torsor is G(𝔸_f)-equivariant. These identities are checked on the Hodge-type cover and descended through Δ; no abelian scheme over the abelian-type datum is used. Extend them to the toroidal compactification on common refinements: the coefficient sheaves are locally projective Banach sheaves on normal rigid spaces, whose sections are determined on the dense complement of the boundary, so two maps of correspondences that agree there agree. Transfer to the supported objects of period-saturated pairs by the compatibility of the correspondence action with composition and with restriction; finite-slope extraction is functorial for endomorphisms commuting with the compact torus operator (BP-Coleman, Proposition 5.1.4, p. 100; Lemma 6.1.18, p. 147). The continuation maps between period-saturated pairs are induced by inclusions of supports, so the correspondences commute with them; this gives the equivariance of the continuation isomorphisms and the transport to every allowed pair.

*Needs:* §5.2; §5.3; §6.1; §6.1a; §6.2; §6.4; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.3; AutomorphicBundlesPartII §3.13; gap:coherent-correspondences; OverconvergentAutomorphicForms §8.6; OverconvergentAutomorphicForms §8.7; PerfectoidShimuraVarieties §6.4; PerfectoidShimuraVarieties §6.8; PerfectoidShimuraVarieties §6.9; PerfectoidShimuraVarieties §6.10; PerfectoidShimuraVarieties §6.14; PerfectoidShimuraVarieties §6.15; ShimuraCompactifications §0.14; LocallyAnalyticDistributions §4.16; LocallyAnalyticDistributions §4.17.

The basic properties of this construction are:

- A ring homomorphism H^S⊗A[1/p]→End of the supported family object of each period-saturated pair, extending the individual operators of AutomorphicBundlesPartII §3.13; on a general allowed pair, the transported action on finite-slope cohomology.
- Its image commutes with the torus operators, so it acts on finite-slope parts and on every family cohomology sheaf.
- It is compatible with the continuation isomorphisms between allowed pairs, with change of radius, level and weight, and with the classical action at algebraic weights.

**Checks.**

- For GL₂ and w=1 the tube ]C_1,k[_(m,n)K_p is the disc {|z|<|p^m|} around the base point. A prime-to-p correspondence leaves the Hodge–Tate period of every point unchanged and maps this disc to itself, whereas the correspondence of t multiplies the coordinate by p and maps it into the disc of depth m+1. So the away-S operators act on this fixed period-saturated pair, as on every standard pair, and only the torus operators improve it.
- The unit double coset acts by the identity. On a nonzero complex the assignment of the zero endomorphism to every double coset respects every product relation, both sides being zero, but sends the unit to 0, so it is not a ring homomorphism.
- On a family complex with H¹ free of rank two over A and H⁰=0, individual endomorphisms acting on H¹ by the matrix units E₁₂ and E₂₁ have products diag(1,0) and diag(0,1), so the algebra they generate is not commutative and has no relative spectrum; the eigenvariety of §7.1 requires the commutativity proved here in every degree, not only in degree zero.
- Abelian type without a universal isogeny. For the adjoint datum PGSp₄, the central element −I of GSp₄ maps to the identity of PGSp₄ but acts by −1 on the standard four-dimensional representation, which therefore does not factor through PGSp₄. An adjoint datum has trivial weight homomorphism, so it is not of Hodge type, and its Shimura variety carries no universal abelian scheme realizing that representation, hence no universal isogeny on its Hecke correspondences. Those correspondences still preserve the period map and carry the Levi torsor descended from the GSp₄ cover, which are the only inputs used.
- A general allowed pair is not preserved. On a modular curve of neat tame level, start from a standard pair (U,Z), let x be a non-CM classical point outside U∪Z, and put Z′=Z∪{x}. Then Z′∩U=Z∩U, so the inclusions of §5.2 and the supported complex are unchanged, and the complement of Z′ is the complement of Z minus one classical point, again a finite union of quasi-Stein curves (exhaust each by the complements of shrinking discs around the point); so (U,Z′) is allowed. For a prime ℓ∉S, a point c of the correspondence of T_ℓ with p1(c)=x has p2(c)=x′≠x, since otherwise a cyclic ℓ-isogeny would give an endomorphism of the non-CM curve of non-square degree ℓ. As x′ has the period of x, x′∉U∪Z′. Thus c lies in p1⁻¹(Z′) but not in p2⁻¹(Z′): the correspondence does not preserve (U,Z′), and its action there is the transported one, equal through the continuation isomorphism to its action on (U,Z).

### Examples

Over A=F⟨t⟩, the complex [A --t→ A] in degrees zero and one has H⁰=0 and H¹=A/(t). At t=0 its derived fibre has H⁰=F and H¹=F; Tor₁(A/(t),F)=F supplies the new bottom group. For GL₂ and ν=0, the coefficient supplier gives κ=−2ρ at w=1 and κ=0 at w=s.

### Dependencies

§1.2; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; AdicSpacesPartIV §F1.10; AutomorphicBundles §1.4; AutomorphicBundles §1.5; AutomorphicBundles §1.9; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.2; AutomorphicBundlesPartII §3.3; AutomorphicBundlesPartII §3.13; §5.2; §5.1; §5.6; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; LieHighestWeight Layer 3; LocallyAnalyticDistributions §4.16; OverconvergentAutomorphicForms §0.4; OverconvergentAutomorphicForms §8.6; OverconvergentAutomorphicForms §8.7; PerfectoidShimuraVarieties §3.13; PerfectoidShimuraVarieties §6.4; PerfectoidShimuraVarieties §6.5; PerfectoidShimuraVarieties §6.6; PerfectoidShimuraVarieties §6.7; PerfectoidShimuraVarieties §6.9; PerfectoidShimuraVarieties §6.14; PerfectoidShimuraVarieties §6.15; ShimuraCompactifications §0.14; ShimuraCompactifications §4.10; gap:abelian-subcanonical-vanishing; gap:banach-support-duality; gap:coherent-correspondences; gap:projective-banach-cohomology; §5.3; LocallyAnalyticDistributions §4.17; PerfectoidShimuraVarieties §6.8; PerfectoidShimuraVarieties §6.10.


## Layer 7: Eigenvarieties and interior deformation

### 7.1 The cohomological eigenvariety

Use the Coleman datum of Conventions.

Let W represent continuous characters of Tʳ(ℤ_p), and let That represent characters of T(ℚ_p) whose unit restriction factors through Tʳ. Glue the family finite-slope cohomology sheaves for all w, i, signs and boundary variants. First replace the negative torus action by t↦t⁻¹, so paired torus operators have equal eigencharacters. Let Z⊂That be the common cohomological support, defined by the annihilator of their direct sum, and let E be the relative affinoid spectrum over Z of the coherent commutative O_Z-algebra generated by the image of the away-S spherical Hecke algebra H^S of §6.10 acting on that sum. Thus E→Z is finite; E→W is locally quasi-finite and partially proper. E need not be globally finite, flat, reduced or equidimensional over W. The flat-restriction, gluing and valuative arguments for this cohomological construction are targets here. (BP-Coleman, §6.9 and Theorem 6.9.3, pp. 168–170).

A proof route is as follows: Use PadicFamilies §2a.16 for intrinsic annihilator support and representative independence on each finite slope complex, applied on a large stage of the pro-Banach model of §6.3 on which the chosen power of t is compact. Use IntegralHeckeAndGaloisDeterminants §2.1 for the finite image on the finite cohomology sum, without projectivity of that sum. Prove compatibility with flat affinoid restriction and glue the image algebras and coherent support. Prove local quasi-finiteness and partial properness for this cohomological eigenvariety from the finite slope charts and the valuative extension of nonzero eigencharacters.

*Needs:* §6.3; §6.9; §6.10; PadicFamilies §2a.16; PadicFamilies §2a.15; LocallyAnalyticDistributions §3.3; PhiGammaModulesAndIwasawaCohomology §2.7; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.13; gap:coherent-correspondences; IntegralHeckeAndGaloisDeterminants §2.1.

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

*Needs:* §7.1; §6.4; §6.6; §6.8; §5.8.

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

*Needs:* §7.4; PadicFamilies §2a.15; PadicFamilies §2a.16; §5.7.

No cuspidal/full-interior equality is presumed in the presence of boundary.

### 7.6 Sharp bounds on general interior cohomology

Use the Coleman datum of Conventions.

At locally algebraic weights, analytic interior slopes satisfy λ≥0 in + and λ≤0 in −. Consequently algebraic interior slopes satisfy λ≥w⁻¹w0M(κ+ρ)+ρ in + and λ≤w⁻¹(κ+ρ)−ρ in −. On the geometric small region, global interior H_!^i is confined to [l_min,l_max]. When D=∅ the interior map is the identity, so these sharp bounds apply to the whole local and global theory; geometric smallness and the corresponding sharp analytic BGG exclusion then suffice. Sharp bounds on all noninterior general noncompact cohomology remain a separate conjecture. (BP-Coleman, Theorem 6.10.1, pp. 172–173; Theorem 6.10.2, p. 173).

Degree-zero classicality is a separate statement in the identity chamber. Let κ be M-dominant algebraic with Cκ+={id}, and let χ be a finite-order character of Tʳ(ℤ_p). Then κ+ρ is regular, since Cκ+ is a single element exactly when κ+ρ is regular (BP-Coleman, Proposition 5.10.2(3), p. 124). On the + geometric small-slope parts of §1.2, the map H_id^0(κ,χ,1)^+,fs→H_id^0(κ,χ,0)^+,fs from identity-stratum cuspidal to identity-stratum canonical local cohomology factors through classical canonical H^0(κ,χ,0)^+,fs, which the Cousin edge map embeds in H_id^0(κ,χ,0)^+,fs. The argument does not show that the classical class is cuspidal. Outside the small region an overconvergent cuspidal class can come from a noncuspidal classical one. The hypothesis is not weakened to id∈Cκ+. At a singular κ with id∈Cκ+, the set Cκ+ is the stabilizer of w0M(κ+ρ) in W (BP-Coleman, Proposition 5.10.2(1)–(2), p. 124). This is a nontrivial subgroup generated by simple reflections, so it contains a chamber of length one, and the argument does not remove that chamber's degree-one interior term. (BP-Coleman, Theorem 6.10.3, p. 173, and Remark 6.10.4, pp. 173–174; Proposition 5.7.4, p. 120).

A proof route is as follows: Use maximal-dimensional interior support and sufficiently dominant arithmetic weights to find a dense set of regular classical points in an adapted neighborhood: check that the fixed adapted slope window satisfies both geometric strong smallness and the BGGsafe exclusions as the dominant weight increases. This chamber-cone calculation is part of the proof, not density of arbitrary classical weights assumed as input. Apply the optimal bounds at those points and local constancy of eigenvalue valuations. Apply the interior Cousin subquotient and the sharp exclusions. For the degree-zero factorization, the canonical range [ℓ+(w),d] of §5.6(b) removes every E1 term of the canonical Cousin spectral sequence of §5.7(a) with q<0. Hence 0→H^0(κ,χ,0)^+,fs→H_id^0(κ,χ,0)^+,fs→⊕_(ℓ(w)=1)H_w^1(κ,χ,0)^+,fs is exact. By naturality for O(−D)→O, composing the cuspidal identity-stratum map with the last arrow gives the cuspidal Cousin differential followed by the boundary maps ⊕_(ℓ(w)=1)H_w^1(κ,χ,1)^+,fs→H_w^1(κ,χ,0)^+,fs, and these maps have image the interior ⊕_(ℓ(w)=1)H_w,!^1 of §5.7(b). Every length-one w lies outside Cκ+={id}. On that interior the sharp bound forces λ≥A_w and geometric smallness excludes λ≥A_w, so its small-slope part is zero.

*Needs:* §7.5; §7.2; §5.5; §5.6; §5.7; §1.2; §6.1; ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13.

**Checks.**

- GL₂ at k=2: Cκ+={id} and l_min=l_max=0, and the only length-one representative, the long element, lies outside Cκ+. With identity slopes ≥1 and long threshold A_long=k=2 for U_naive (§9.2), the small region is U_naive slope <2, that is U_std slope <1. On it the degree-one interior term vanishes and the factorization applies to cuspidal identity-stratum classes of U_std slope in [0,1). The endpoint U_std slope 1 is excluded.
- GL₂ at the wall k=1: Cκ+={id,long}, so MW∖Cκ+ is empty, every slope is geometrically small and [l_min,l_max]=[0,1]. The degree-one interior term H_long,!^1 lies in that range and is not killed, so the hypothesis Cκ+={id} fails, in agreement with §9.2. A finite-slope classical weight-one eigenclass has U_std slope 0, since its eigenvalue is an algebraic integer dividing a root of unity. Read with smallness alone, the factorization would therefore force every weight-one overconvergent cuspidal eigenclass of positive U_std slope to vanish, and nothing here proves that.
- GSp₄: at κ=(k+2,2), k≥0, κ+ρ=(k+1,0) is singular and Cκ+ contains the identity and the length-one representative s1 (§1.1), so the statement does not apply and the s1 degree-one interior term is not excluded. At κ=(5,3;−8), κ+ρ=(4,1;−8) is regular with Cκ+={id}, and the A_w pairings with t2 are 3,4,4,8 (§9.3). A U2_naive slope in [3,4), that is a U2_std slope in [0,1), lies in the small region, and the factorization applies there.
- For a torus datum, d=0 and W is trivial, so Cκ+={id} for every κ, there is no length-one chamber and the small region is everything. The statement then says that identity-stratum H^0 is classical H^0 with no slope condition, which holds because the Cousin sequence has a single term.

For general data this improves the interior theorem, not every full-cohomology slope bound.

### Examples

For an acyclic family, the annihilator support and eigenvariety are empty. A family with only H¹=F gives nonempty support and must be retained. The map t:A→A over F⟨t⟩ has image (t); its fibre (t)/t(t)=F is nonzero, while the specialized map has image zero.

### Dependencies

AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.13; §1.2; §5.5; §5.6; §5.7; §5.8; §6.8; §6.1; §6.6; §6.9; §6.10; §6.3; §6.4; IntegralHeckeAndGaloisDeterminants §2.1; LocallyAnalyticDistributions §3.3; PadicFamilies §2a.15; PadicFamilies §2a.16; PhiGammaModulesAndIwasawaCohomology §2.7; ShimuraData §3.10; ShimuraData §3.13; ShimuraData §3.8; gap:coherent-correspondences.


## Layer 8: Ordinary and finite-slope comparison

### 8.1 Integral supported overconvergent model

Use the integral Siegel datum of Conventions.

In the Siegel setting choose w, t∈T++ and 0<ε′<ε<1 rational so the correspondence improves the two degree neighborhoods. Blow up to separate the divisors at w_i and w_i±ε, w_i±ε′. Put U=U_(≥w−ε), and let Z_(<w+ε) be the degree constraint closed in the discrete-adic locale with quasi-compact open complement. Choose tildeωκχ=ωκχ(m(D+−D−)) so the normalized coefficient map factors through p2*tildeωκχ(D+)→p1!tildeωκχ(−D−). Define K_int=Rlim_s RΓ_(Zhat∩U mod p^s)(U mod p^s,tildeωκχ). The hat is formal closed support; it is not ordinary local cohomology at a reduced divisor. Include −ε_b D for the boundary choice ε_b=0,1. (BP-Hida, §6.2.1–6.2.8, pp. 61–62).

A proof route is as follows: Refine the degree model at the finitely many rational thresholds. Use the strict dynamics to absorb the bounded coefficient poles in m(D+−D−). Apply the formal-support triangle modulo p^s and then derived p-adic completion.

*Needs:* §3.2; gap:coherent-correspondences; AutomorphicBundlesPartII §3.0a; AutomorphicBundlesPartII §3.11; §2.1; §2.8; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; SolidAnalyticRings §7.3; SolidAnalyticRings §7.4; gap:discrete-adic-solid-comparison; ResolutionOfSingularitiesCharacteristicZero §6.3; gap:solid-localization-kernel; AutomorphicBundlesPartII §5.1; AutomorphicBundlesPartII §5.2.

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

A proof route is as follows: Compare the degree/Bruhat intersections under all positive and transposed iterates. Sandwich the formal supported model between three nested support pairs satisfying the interior inclusions, the strict inequalities on the complement C″ of the innermost pair and the cross-containments of §2.8(c) (BP-Hida, Proposition 6.2.3, p. 61), with the locally principal outer and inner boundaries supplied by the blow-up of §8.1. Apply §2.8(c) with the coefficient factorization of §8.1 and take the complete limit. Use the finite-cover bounded integral structures to show that the projected image on each finite-dimensional slope block is open and bounded.

*Needs:* §8.1; §2.8; §3.5; §5.3; PerfectoidShimuraVarieties §6.13; PerfectoidShimuraVarieties §6.13a; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; gap:projective-banach-cohomology.

A lattice here is a cohomology-level projected image, not a claim that the unsplit integral complex is finite.

### 8.3 Ordinary comparison in weight families

Use the integral Siegel datum of Conventions.

Let Spa(A[1/p],A) be a quasi-compact weight affinoid and ν_A its universal character, analytic at sufficiently large radius n. The analytically induced coefficient admits an integral extension on a sufficiently small degree neighborhood, with an improving coefficient factorization whose pole bound is independent of p-power reduction. Its integral supported ordinary cohomology is the base change of M_w along the Iwasawa character map matching Layer 4: [u]↦ν_A(u)⁻¹. Equivalently the analytic-weight family is obtained from the Iwasawa family by inversion on weight space. For a fixed continuous character to O_C, rationalization gives the analytic supported cohomology and its projected integral image is a lattice on every finite slope block. The sign convention is part of the comparison contract: the base-change map written in BP-Hida §6.2 is read with this inversion (source issue E8). (BP-Hida, Propositions 6.2.12–6.2.14 and Theorem 6.2.15, pp. 63–64; Remark 5.4.3, p. 57).

A proof route is as follows: Use radius improvement to kill ordinary cohomology of the analytic-to-topological induction kernel modulo p^r. Extend the torsor over a blow-up away from the ordinary stratum. Bound trace poles independently of r and apply the same supported ordinary comparison as for fixed coefficients. Use the admissible Iwasawa model for derived coefficient change; insert the character inversion fixed by arithmetic specialization.

*Needs:* §4.5; §4.6; §8.2; OverconvergentAutomorphicForms §8.7; §6.1; gap:siegel-ordinary-igusa; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; AutomorphicBundlesPartII §5.1; AutomorphicBundlesPartII §5.2.

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

*Needs:* §8.2; §8.3; §5.5; §5.8; §6.6; §6.7; §7.2.

At an equality threshold the excluded cone inequality holds; a strict classicality test does not include that boundary.

### Examples

At p inverted, a vertical divisor contributes no twist. For g=3, d=6 and the canonical rational range is [ℓ(w),6]; this does not assert the integral genus-three bound. In genus two the sharp t₂ bounds are 3,k₂+1,k₂+1,k₁+k₂.

### Dependencies

AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AdicSpacesPartIII §R3.8; §5.3; §5.8; §5.5; §2.8; §2.1; AutomorphicBundlesPartII §3.0a; AutomorphicBundlesPartII §3.11; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; §7.2; §6.1; §6.6; §6.7; §6.9; §3.5; §3.2; §4.6; §4.8; §4.5; OverconvergentAutomorphicForms §8.7; PerfectoidShimuraVarieties §6.13; PerfectoidShimuraVarieties §6.13a; ResolutionOfSingularitiesCharacteristicZero §6.3; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; SolidAnalyticRings §7.3; SolidAnalyticRings §7.4; gap:coherent-correspondences; gap:discrete-adic-solid-comparison; AutomorphicBundlesPartII §5.1; AutomorphicBundlesPartII §5.2; gap:projective-banach-cohomology; gap:siegel-ordinary-igusa; gap:solid-localization-kernel.


## Layer 9: Modular, Siegel and unitary checks

Standing setting for the GSp₄ sections §§9.1, 9.3, 9.4 and 9.6–9.8: p is any prime, K^p a neat prime-to-p level for GSp₄/ℚ, K_p=GSp₄(ℤ_p), with compatible smooth admissible toroidal data and the corresponding normal integral models. At Klingen level K_p is replaced by its Klingen parahoric Kli(p), using the common fan refinements for the p-correspondence. §9.5 is purely local and §§9.2, 9.9 state their own data.

### 9.1 The four Siegel threefold weights

In derived C2 coordinates choose G-dominance 0≥ν1≥ν2, M-dominance κ1≥κ2, ρ=(−1,−2) and 2ρ_nc=(−3,−3). The four minimal left representatives act by (a,b), (−a,b), (−b,a), (−b,−a), of lengths 0,1,2,3. Define the two-coordinate weights κ_0=(3−ν2,3−ν1), κ_1=(3−ν2,ν1+1), κ_2=(2−ν1,ν2), κ_3=(ν1,ν2). In full GSp₄ coordinates the central coordinate of κ is the negative of that of ν and the parity condition is retained. These two coordinates alone do not define a GSp₄ weight. (BP-Hida, §3.1, pp. 33–34; BP-Coleman §5.14.3, pp. 141–142).

A proof route is as follows: Substitute the four displayed Weyl actions in κ_w=−w0M w(ν+ρ)−ρ. Use the actual GSp4 character lattice to restore the central coordinate.

*Needs:* §1.1; AutomorphicBundles §11.10; AutomorphicBundles §11.16; ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13; ShimuraData §5.5; ShimuraData §5.6; ShimuraData §5.10; ShimuraData §5.11.

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

For GL₂, d=1 and W_M={1}; the geometric finite-slope Cousin sequence reads 0→H^0_class(ω^k)→H^0_id,oc(ω^k)→H^1_long,oc(ω^k)→H^1_class(ω^k)→0. In the Coleman normalization U_naive acts on q-expansions as pΣa_(pn)q^n. Its id slopes are ≥1 and its long slopes ≥k. The integral normalization is p^(−min(1,k))U_naive. For k≥2 the standard degree-zero q-expansion operator U_std=p⁻¹U_naive has classicality slope <k−1. For k≤0 the integral degree-one operator has threshold <1−k. At k=1 neither argument gives an automatic strict-positive window. Ordinary degree-zero families are imported from PadicFamilies; the complementary projective degree-one family specializes for k≥3 to ordinary H^1(ω^(2−k)(−D)) and pairs perfectly with the degree-zero family. (BP-Coleman, §5.14.2, p. 141; BP-GL2 Theorem 1.2, p. 3; BP-GL2, Theorems 1.1–1.4, pp. 2–3; §2.1, p. 4).

A proof route is as follows: Specialize the two Bruhat cells and their support long exact sequence. Subtract min(1,k) from both naive slope bounds. Use genus-one ordinary control and Serre duality to recover the complementary family; import the existing degree-zero Hida theorem.

*Needs:* §5.7; §5.8; §4.6; §4.8; PadicFamilies Layer 0a; PadicFamilies Layer 0.

At k=2 the standard threshold is 1; equality slope 1 is not covered. At k=0 the degree-one integral threshold is 1.

### 9.3 GSp4 chambers, amplitudes and a strict slope test

For g=2, d=3, ν=(0,−2;0) is regular and the four κ_r above have compatible + chamber of length r. The cuspidal M_r^1 amplitude is [0,r], canonical M_r^0 amplitude [r,3], and paired negative length is 3−r. Write the cocharacters in the BP coordinates of ShimuraData §5.5, where (a₁,a₂;a)(p)=diag(p^(a+a₁),p^(a+a₂),p^(a−a₂),p^(a−a₁)) in the anti-diagonal symplectic basis. For κ=(k1,k2;−k1−k2), evaluate the sharp A_w bounds on t2=(−1/2,−1/2;−1/2)(p)=diag(p⁻¹,p⁻¹,1,1): they are 3,k2+1,k2+1,k1+k2. On t1=(0,−1;−1)(p)=diag(p⁻¹,p⁻²,1,p⁻¹) they are k2+3,k2+3,k1+2k2,k1+2k2. If k1≥k2>2, a sufficient holomorphic geometric test is v_p(U2_naive)<k2+1. For U2_std=p⁻³U2_naive the test is <k2−2; at k2=3 it is strictly <1. These are the named source operators, not a claimed identification with every convention called U_p in Siegel literature. (BP-Coleman, §5.14.3, pp. 141–142; BP-Hida Proposition 5.6.3, p. 58 and Corollary 6.2.10, p. 62; BP-Hida, Proposition 6.1.11, pp. 60–61).

A proof route is as follows: Evaluate each of the four A_w weights on the two explicit diagonal elements. Use the compatible + chambers of the four κ_r of §9.1 and the genus-two integral amplitude theorem. Subtract three for the specified renormalization and retain strict inequality.

*Needs:* §9.1; §4.9; §8.5.

The bounds proved in §5.5, before the comparison of Layer 8, give only k2 in the two middle entries for U2, so the test they support is the more restrictive v_p(U2_naive)<k2; §8.5 justifies k2+1.

**Checks.**

- Torus membership. In the anti-diagonal basis diag(x₁,x₂,x₃,x₄) lies in GSp₄ exactly when x₁x₄=x₂x₃, the common value being the similitude. For t1=diag(p⁻¹,p⁻²,1,p⁻¹) both products are p⁻², that is 1/9 and 1/9 at p=3, and the similitude is p^(2a)=p⁻². The element diag(p⁻¹,p⁻²,1,p) has products 1 and 1/9 at p=3, so it is not in the torus and represents no cocharacter in this basis.
- Pairings at κ=(5,3;−8), where κ+ρ=(4,1;−8) and w0M(κ+ρ)=(1,4;−8). The four weights A_w=w⁻¹w0M(κ+ρ)+ρ for w=Id,s1,s1s0,s1s0s1 are (0,2;−8), (−2,2;−8), (3,−3;−8), (−5,−3;−8). Their pairings with (0,−1;−1) are 6,6,11,11=k2+3,k2+3,k1+2k2,k1+2k2, and with (−1/2,−1/2;−1/2) they are 3,4,4,8=3,k2+1,k2+1,k1+k2. Reading the matrix diag(p⁻¹,p⁻²,1,p) in the other common symplectic basis, where it does lie in GSp₄, without permuting the weight coordinates as well, would give the cocharacter (−1/2,−3/2;−1/2) and pairings 1,2,7,11 instead.
- Strict endpoint. At κ=(5,3;−8) the U2_naive bounds are 3,4,4,8 and the U2_std bounds, three less, are 0,1,1,5; the U2_std test <k2−2=1 admits slope 0 and excludes slope 1.
- Proved against sharp bounds. At κ=(5,3;−8) and w=s1, a_w=w⁻¹w0Mκ=(−3,5;−8) and a_w+w⁻¹2ρ_nc=(0,2;−8), with 2ρ_nc=(−3,−3;0), both pair with t2 to 3=k2, while A_w=(−2,2;−8) pairs to 4=k2+1; w=s1s0 gives (5,−3;−8) and (2,0;−8), both 3, against A_w=(3,−3;−8), 4. So the bounds of §5.5 alone support U2_naive slopes <3, those of §8.5 slopes <4, and an eigenvalue of slope 3 is covered only by the sharp bound.

### 9.4 Singular Klingen interpolation complex

For the Siegel threefold at Klingen level let X_Kli^≥1 be the formal locus where its distinguished height-one subgroup is multiplicative. Over its height-one tower X_∞, let IG_∞=Isom(µ_(p∞),H_∞), a ℤ_p× torsor. The tower maps are affine étale, not finite; on p-rank one they are isomorphisms. With Λ1=ℤ_p[[ℤ_p×]] form F_κ by descent of O_(IG∞) completed-tensor Λ1 with the diagonal universal character, first colim over Igusa level modulo p^n and then lim_n. It is invertible over the completed scalar extension on X_∞, not asserted finite locally free over the original X_Kli^≥1. Define M_Kli=f RΓ(X_Kli^≥1,F_κ⊗det(ω)^2(−D)), where f is the ordinary projector for Pilloni U=U1U2. On Ω(k,r)=Sym^kω⊗det(ω)^r, this U has raw pullback/trace normalization p^(−3−r) for the correspondence of isogeny type (1,p,p,p²). (Pilloni-Singular, §9.1–9.4, pp. 54–57; §10.7 and §§11.1–11.3, pp. 66–72).

A proof route is as follows: Import the polarized Klingen height-one tower and its Igusa torsor, including the nonfinite transition behavior. Descend the universal one-dimensional character and use the prescribed completed level limits. Apply the ordinary projector after local finiteness is proved; compute by the two-term Hasse-invariant resolution.

*Needs:* §9.1; PadicMeasuresIwasawaAlgebras §1.1; PadicMeasuresIwasawaAlgebras §1.7; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12; PadicFamilies Layer 0a; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; AutomorphicBundles §11.10; AutomorphicBundles §11.16; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.13; gap:coherent-correspondences; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; gap:klingen-height-one-igusa; AutomorphicBundlesPartII §5.1; AutomorphicBundlesPartII §5.2.

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

Here generic means that π_p is an irreducible unramified principal series. Prove also the criterion that supplies this hypothesis at Klingen level. Let π_p be an irreducible smooth complex representation of GSp₄(ℚ_p) with π_p^Kli(p)≠0, and let (α,β,γ,δ), with αδ=βγ, be its Hecke parameters, read off from a common eigenvector of U_Kli,0, U_Kli,1 and U_Kli,2 in π_p^Kli(p) with eigenvalues p⁻³αδ, p⁻¹αβ and α+β. If ξ⁻¹ξ′≠p for all ξ,ξ′ in {α,β,γ,δ}, then π_p is an irreducible unramified principal series with Hecke parameters (α,β,γ,δ); in particular it is spherical and generic. A spherical π_p is generic exactly when no such ratio equals p. Both statements are algebraic in the parameters and p, so they transport along any field isomorphism, for instance to the completed algebraic closure of ℚ_p used in §9.8. (Pilloni-Singular, §5.1.5, paragraph before Proposition 5.1.5.1, p. 21, and Proposition 5.1.5.2, p. 22; the Klingen eigenvalue relation is read with αδ=βγ, source issue E9.)

A proof route is as follows: Use the four-dimensional unramified Klingen Hecke module and its Weyl-orbit characteristic polynomial from Proposition 5.1.5.1. Construct the isolated-root polynomial projector with multiplicities in the other factors. Prove its nonzero value on the spherical vector in the generic unramified model; use regularity across collisions of the other roots. Density of the distinct-root locus alone is insufficient for nonvanishing. For the criterion, nonzero Klingen invariants give nonzero Iwahori invariants, so π_p is a constituent of an unramified principal series i_Bχ (SmoothRepresentationsOfLocalGroups §SR.3.4) whose spin parameters, normalized as in SmoothRepresentationsOfLocalGroups §SR.4.5, are the Hecke parameters; the ratios of distinct parameters are the values at p of χ on the coroots. Prove the irreducibility criterion for unramified principal series of GSp₄: i_Bχ is irreducible exactly when no coroot value of χ at p equals p or p⁻¹. Reducibility at such a value comes from the rank-one Levi subgroup in which that root is simple, after a Weyl conjugation that does not change the constituents; irreducibility otherwise comes from the invertibility of the rank-one intertwining operators, together with the fact that the stabilizer of χ in the Weyl group is generated by reflections, because centralizers of semisimple elements in the dual group GSp₄(ℂ) are connected. Under the hypothesis i_Bχ is therefore irreducible and equals π_p. Conversely, if some ratio equals p and a spherical π_p were an irreducible principal series i_Bχ′, then χ′ would be a Weyl conjugate of χ by uniqueness of cuspidal support (SmoothRepresentationsOfLocalGroups §SR.3.1), with the same ratios, so i_Bχ′ would be reducible by the criterion, a contradiction.

*Needs:* §9.1; SmoothRepresentationsOfLocalGroups §SR.0.2; SmoothRepresentationsOfLocalGroups §SR.1.4; SmoothRepresentationsOfLocalGroups §SR.2.2; SmoothRepresentationsOfLocalGroups §SR.3.1; SmoothRepresentationsOfLocalGroups §SR.3.4; SmoothRepresentationsOfLocalGroups §SR.4.5.

The basic properties of this construction are:

- The projection has source π_p^Kli(p) and target its p⁻¹αβ eigenspace; the asserted isomorphism has source π_p^GSp₄(ℤ_p).
- The isolated root has algebraic multiplicity one in the four-dimensional Klingen module; prove nonvanishing of the projected spherical vector in the generic spherical Satake model.
- The projector is regular away from the three differences with αβ, so collisions among the other products do not introduce a denominator.
- An irreducible π_p with nonzero Klingen invariants whose Hecke parameters have no ratio equal to p is an irreducible unramified principal series with those parameters; for a spherical π_p the absence of the ratio p is also necessary for being an irreducible principal series.

**Checks.**

- With p=3 and (α,β,γ,δ)=(1,1,9,9), αδ=βγ=9 and the four products are 1,9,9,81. The chosen eigenvalue is 1/3, isolated from 3,3,27; the repeated middle eigenvalue is permitted.
- If all parameters are 1, every pair product is 1 and there is no isolated chosen primary component; the hypothesis excludes this case.
- For the diagonal four-dimensional model with eigenvalues a,b,b,c and a≠b,c, P(X)=(X−b)²(X−c)/((a−b)²(a−c)) has P(a)=1 and P(b)=P(c)=0. The squared factor also kills a length-two b-Jordan block; a projector using only one factor would fail.
- Criterion boundary. Parameters (1,1,p,p) satisfy αδ=βγ=p and have the ratio γ/α=p, so the criterion does not apply and no conclusion is asserted; these are the valuations (0,0,1,1) that Pilloni-Singular Corollary 14.9.1 allows at Klingen level for k=0, which is why §9.8 uses the criterion only for k≥1. At p=3 the parameters (1,1,9,9), of valuations (0,0,2,2) as at k=1, have ratios 1, 9 and 1/9, none equal to 3, so the criterion applies although α=β; reading the hypothesis as distinctness of the parameters would wrongly exclude them.

### 9.6 The Klingen analytic overconvergent family

Let X_Kli(p^n,ε) be the strict neighbourhood of the p-rank-at-least-one locus at Klingen level p^n, for rational 0<ε≤n−1/(p−1), and let U=U1U2 be the Pilloni operator, given by the cohomological correspondence of triples (A,H_n,L) with the raw normalization of §9.4. For rational 0<w′≤w≤ε, a p-adically complete coefficient algebra A in the source's admissible class and a w′-analytic character κ_A:ℤ_p^×→A^×, define the Banach sheaf F^(κ_A,w) as the Kli(ℤ/p^n)-invariants of the pushforward to X_Kli(p^n,ε) of the invertible sheaf L_(κ_A) on the analytic flag space FL_(n,ε,w), and put C(n,ε,w,κ_A,r)=RΓ(X_Kli(p^n,ε),F^(κ_A,w)⊗ω^r) and its cuspidal version with −D. A larger parameter gives a smaller flag neighbourhood: the flags in FL_(n,ε,w) are those congruent to the canonical one modulo p^w, so FL_(n,ε,v′)⊂FL_(n,ε,v) for v<v′, and restriction gives maps F^(κ_A,v)→F^(κ_A,v′) (Pilloni-Singular, §12.3, p. 75; proof of Lemma 13.2.2.1, p. 86). For an algebraic weight η∈ℤ, whose character z↦z^η is analytic for every positive radius parameter, define the radius colimit F^(η,w−)=colim_(0<v<w) F^(η,v) over rational v along these restriction maps, and C(n,ε,w−,η,r)=colim_(0<v<w) C(n,ε,v,η,r), with its cuspidal version with −D (Pilloni-Singular, §13.3.2, p. 90). Restriction to the parameter w gives maps F^(η,w−)→F^(η,w) and C(n,ε,w−,η,r)→C(n,ε,w,η,r). Prove:

1. Both complexes are represented by bounded complexes of projective Banach A[1/p]-modules on which U acts compactly; U has slopes ≥−3 on every H^i and ≥0 on H^0, for canonical and cuspidal coefficients.
2. Over the one-variable analytic weight space W of Λ1, covered by affinoids Spa(A_l[1/p],A_l) with universal character κ_(A_l), the finite-slope cuspidal part at r=2 is a complex C_cusp(A_l) over Spa(A_l[1/p],A_l)×G_m, concentrated in degrees 0 and 1 and independent of n,ε,w, on which the spectral coordinate X acts as U⁻¹. For a point κ of Spa(A_l[1/p],A_l) with residue field L and α∈L^×, form the derived pullback of C_cusp(A_l) to {κ}×G_m, that is, derived specialization over the weight factor only; it is a complex of coherent sheaves on the rigid analytic G_m over L whose cohomology has discrete support. Take its stalk at the point X=α⁻¹, the localization at the maximal ideal (X−α⁻¹). Its H^i is the generalized eigenspace H^i_cusp(†,κ,2)[(U−α)^∞], the α-primary component of U on the finite-slope cuspidal cohomology at weight κ, with its nilpotent part retained. This is not the derived fibre at the point (κ,α⁻¹) of Spa(A_l[1/p],A_l)×G_m: tensoring further with the residue field of the spectral point adds the Tor terms of X−α⁻¹ and replaces each primary component by its residue fibre (PadicFamilies §2a.17). The cohomology annihilator of C_cusp(A_l) defines a spectral variety Z→W, on each chart the spectral variety of PadicFamilies §2a.16 for the cuspidal complex of (1) over A_l at r=2 with its compact operator U, that is quasi-finite and locally finite; the charts glue over W.
3. The function k↦dim H^1_cusp(†,k,2)_(=0)−dim H^0_cusp(†,k,2)_(=0) on ℤ_≥0⊂W is locally constant; up to sign it is the exact-slope-zero Euler characteristic, so this is the instance h=0 of the Euler-characteristic local constancy of PadicFamilies §2a.16 for the cuspidal complexes of (1) at r=2 over the reduced affinoids A_l[1/p], at the rank-one points k.
4. For (k,r)∈ℤ_≥0², the two-term relative BGG sequence 0→Ω(k,r)→F^(k,w−)⊗ω^r→F^(−2−k,w−)⊗ω^(k+r+1)→0 of radius colimits is exact on X_Kli(p^n,ε) (Pilloni-Singular, Lemma 13.3.2.1 and Proposition 13.3.2.1, pp. 89–90). The colimit is part of the statement: the differential d1 is the (k+1)-st derivative in the flag coordinate, and an antiderivative of a function analytic on a closed disc converges in general only on smaller discs, so the sequence of the fixed-radius sheaves F^(k,w) and F^(−2−k,w) is not exact on the right (first Check below). Cohomology of the quasi-compact and quasi-separated space X_Kli(p^n,ε), the generic fibre of an admissible formal scheme, commutes with the filtered colimit, so the sequence gives an exact triangle RΓ(X_Kli(p^n,ε),Ω(k,r))→C(n,ε,w−,k,r)→C(n,ε,w−,−2−k,k+r+1), and its cuspidal version (Pilloni-Singular, Corollary 13.3.2.1, p. 90). For v<w the restriction C(n,ε,v,η,r)→C(n,ε,w,η,r) is an isomorphism on finite-slope cohomology, because U factors through a restriction that improves the radius parameter (Pilloni-Singular, Corollary 13.2.4.2 and Remark 13.2.4.1, pp. 87–88). The restriction maps commute with U and so preserve slope-<h decompositions: on the cohomology of the colimit the slope-<h parts form a constant system, and the slope-<h factor of U stays invertible on the colimit of the complements. Hence C(n,ε,w−,η,r)→C(n,ε,w,η,r) is also an isomorphism on slope-<h cohomology for every rational h, for canonical and cuspidal coefficients; this transfers the triangle to the fixed parameter w on finite slopes. The differential d1 satisfies d1∘U=p^(k+1)U∘d1, U being normalized on both terms by the pullback, coefficient map and p⁻³-trace of the correspondence (Pilloni-Singular §13.2.3, p. 87). Thus d1 carries a U-eigenclass of eigenvalue λ to one of eigenvalue p^(−k−1)λ and lowers slopes by k+1. By (1) the slopes of U on the cohomology of the last term are at least −3, and at least 0 on H^0, so the slopes of p^(k+1)U there are at least k−2, and at least k+1 on H^0; in the long exact sequence of slope parts for U on the first two terms and p^(k+1)U on the last, the last term has no slope <k−2 in any degree and no slope <k+1 in degree 0. Consequently, through the triangle and the finite-slope isomorphism to the parameter w, the map from Ω(k,r) to F^(k,w)⊗ω^r induces isomorphisms on H^i of slope <k−2 in every degree, isomorphisms on H^0 and injections on H^1 of slope <k+1, for canonical and cuspidal coefficients. The printed equivariance has the opposite exponent (source issue E10).

(Pilloni-Singular, §§12.6.2 and 12.8, pp. 76–80, Proposition 12.8.2.1, p. 79; §13.2, p. 85; Corollary 13.2.4.2 and Remark 13.2.4.1, pp. 87–88; Proposition 13.3.1.1, p. 88; Lemma 13.3.2.1, Proposition 13.3.2.1, Corollary 13.3.2.1, Proposition 13.3.3.1 and Corollary 13.3.3.1, pp. 89–90; §13.4 and Proposition 13.4.1, p. 91.)

A proof route is as follows: Trivialize L_(κ_A) on a Kli(ℤ/p^n)-stable affinoid cover of FL_(n,ε,w) and take the invariant direct factor of the Čech complex; the group order is invertible in A[1/p]. Factor U through a restriction that improves ε and w to obtain compactness and the slope lower bounds. Apply the imported compact-slope charts to obtain the finite-slope complex and its spectral variety; specialize derived over the weight chart first and then localize at the spectral maximal ideal, and read the Euler characteristic off a finite perfect slope block. For the equivariance in (4), the correspondence acts on the flag coordinate of the analytic flag space by the contraction z↦pz (Pilloni-Singular §13.2.2, p. 86), so the (k+1)-st derivative in z picks up the factor p^(k+1); compare the remaining coefficient and trace factors of the two terms in the normalization of §13.2.3. Derive the classicality ranges from the BGG triangle of radius colimits, the slope bounds on its third term and the finite-slope identification of each colimit with the complex at the parameter w.

*Needs:* §9.4; AutomorphicBundlesPartII §3.0b; ShimuraCompactifications §6.16; ShimuraCompactifications §6.17; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; OverconvergentAutomorphicForms §0.4; PhiGammaModulesAndIwasawaCohomology §2.7; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; gap:projective-banach-cohomology; gap:coherent-correspondences; LocallyAnalyticDistributions §4.16; PadicFamilies §2a.15; PadicFamilies §2a.16; PadicFamilies §2a.17.

**Checks.**

- Radius loss in (4). Over ℚ₂ let f(z)=Σ_(m≥1)2^m z^(2^m−1). Its coefficients 2^m tend to 0, so f is analytic on the closed unit disc. Every antiderivative has coefficient 1 at z^(2^m) for each m≥1, which does not tend to 0, so none is analytic on that disc; on the closed disc of radius ρ<1 these terms have sup-norm ρ^(2^m)→0, so the antiderivative converges there. So d/dz, the k=0 differential, is not surjective on the functions of one closed disc; in the colimit F^(0,w−) a function given at a parameter v has its antiderivative at any larger parameter v′<w, whose disc is smaller, so the cokernel vanishes there. The polynomial z has antiderivative z²/2 even at p=2, and the kernel of d/dz on these functions is the constants, the image of Ω(0,r).
- At k=0 the all-degree threshold is k−2=−2, so ordinary slope 0 is not covered in degree 1; the degree-0 threshold is k+1=1, so slope 0 is covered on H^0 and slope 1 is not.
- At k=3 the all-degree threshold is k−2=1: ordinary slope 0 is covered, which is where the degree-one equality d†′₁(k)=d†₁(k) of §9.8 starts.
- Weight space has one variable: a point of Z lies over one character of ℤ_p^×, not over a two-variable Siegel Borel weight; replacing W by the two-variable space changes the local constancy statement.
- Exponent direction in (4). With p^(k+1)U on the last term, the bounds of (1) give its slopes ≥k−2 and ≥k+1 on H^0: (−2,1) at k=0 and (1,4) at k=3, the thresholds stated. With p^(−k−1)U instead they would give −k−4 and −k−1: (−4,−1) at k=0 and (−7,−4) at k=3, and the stated ranges would not follow. In the coordinate model U(f)(z)=f(pz) at p=3, k=0, f=z: D(Uf)=3 and pU(Df)=3, while p⁻¹U(Df)=1/3.
- Primary component versus fibre in (2). Take L=ℚ₃, R=L[X,X⁻¹], y=X−1 and α=1. For the slope block R/(y²) in degree 0, a Jordan block of U, localization at (y) keeps the two-dimensional generalized eigenspace, while the residue fibre R/(y²)⊗_R L is one-dimensional and the derived fibre over R has H^(−1)=Tor_1^R(R/(y²),L)=L. For R/(y) in degree 0 localization gives L in degree 0 only, while the derived fibre over R has L in degrees −1 and 0.
- For the two-term complex R/(y)→R/(y²), 1↦y, in degrees 0 and 1, H^0=0 and H^1=L, and localization at (y) keeps these values; the termwise residue fibre L→L has zero differential and H^0=L. Only the localized derived weight specialization computes the eigenspace cohomology.

### 9.7 Small-slope extension from the Klingen neighbourhood

Let X_Kli(p) be the analytic Klingen-level Siegel threefold with its toroidal compactification, X_Kli(p)_ε its ε-neighbourhood of the p-rank-at-least-one locus, and U the operator of §9.6 on Ω(k,r)=Sym^kω⊗det(ω)^r, with subscript <h for the slope <h part. For all (k,r)∈ℤ_≥0², every rational ε∈[0,1) and every degree i, the restriction H^i(X_Kli(p),Ω(k,r))_(<k+2r−3)→H^i(X_Kli(p)_ε,Ω(k,r))_(<k+2r−3) is bijective, and likewise for Ω(k,r)(−D). The threshold k+2r−3 is strict. Combined with the sheaf-level comparison of §9.6, H^i(X_Kli(p),Ω(k,r))→H^i(†,k,r) is an isomorphism on slopes <min(k+2r−3,k−2), and on H^0 an isomorphism and on H^1 an injection on slopes <min(k+2r−3,k+1), with cuspidal variants. (Pilloni-Singular, §§14.1–14.6, pp. 91–99; Lemma 14.7.1 and Theorem 14.7.1, p. 99; Corollary 14.7.1, p. 100.)

A proof route is as follows: Use the correspondences C_n and the variation of the degree to continue a small-slope class from X_Kli(p)_ε integrally modulo every p^m over X_Kli(p). Identify the inverse limit of the integral cohomologies modulo p^m with the cohomology of X_Kli(p), and use boundedness of the integral image on each finite-dimensional slope block, from a compact Čech representative, to prove that the extension and restriction maps are mutually inverse.

*Needs:* §9.6; AutomorphicBundlesPartII §3.0b; ShimuraCompactifications §6.16; ShimuraCompactifications §6.17; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.6; LocallyAnalyticDistributions §4.16; gap:coherent-correspondences.

**Checks.**

- At r=2 and k=0 the threshold is k+2r−3=1: ordinary slope 0 is included and slope 1 is excluded.
- At r=2 and k=0 the combined comparison with H^i(†,0,2) uses min(1,−2)=−2 in all degrees, which admits no nonnegative slope: ordinary slope 0 is outside the all-degree statement, and only the proved bound ≥ −3 of §9.6 constrains the window [−3,−2). In degree 0 it uses min(1,1)=1, which covers slope 0; the all-degree statement must not be read with threshold 1.
- At (k,r)=(0,0) the threshold is −3: slope-zero classes are outside the statement, so it says nothing about ordinary cohomology at r=0, whereas at r=2 the same k admits slope 0.

### 9.8 Two-term singular-weight control

M_Kli is perfect over Λ1 of amplitude [0,1]. For all k≥0, its derived character-k fiber equals f RΓ(X_Kli^≥1,Ω(k,2)(−D)); after inverting p this equals f RΓ(X_Kli(p),Ω(k,2)(−D)). For k>p+1, H^0(M_Kli⊗^L_(Λ1,k) ℚ_p/ℤ_p) agrees with the ordinary H^0 at hyperspecial level with Ω(k,2)(−D)⊗ℚ_p/ℤ_p. This last assertion has a stricter weight range and a different level; it is not asserted for every k≥0. The comparison here is the one-variable partial-ordinary comparison, with the same tame level and common toroidal data. (Pilloni-Singular, Theorem 11.3.1 and Corollary 11.2.1, p. 71; Theorem 14.8.1 and Lemmas 14.8.2–14.8.4, pp. 100–102; Proposition 14.9.1 and Corollary 14.9.1, p. 102; Theorem 1.1, pp. 2–3).

A proof route is as follows: Use the two-term Hasse resolution, ordinary-nilpotent highest-weight kernel and complete character specialization for integral perfectness. Use §9.7 at r=2, whose threshold k+1 contains the ordinary slope 0 for every k≥0, to replace X_Kli(p) by its ε-neighbourhoods, and the two-affine-cover degree bounds with the injection on H^0 and surjection on H^1 of Lemma 14.8.2. For large k obtain the equalities of the dimensions of the ordinary parts over X_Kli^≥1 and over the ε-neighbourhoods (Lemma 14.8.3) from the hyperspecial comparison of Theorem 11.3.1(4), the inequalities of Lemma 14.8.2 and the following isomorphism for k≥1, i=0,1 and C a completed algebraic closure of ℚ_p, where X is the Siegel threefold at hyperspecial level and e the ordinary projector of its normalized operator T=T1∘T2 (Pilloni-Singular, §7.1, pp. 38–40): eH^i(X,Ω(k,2)(−D))⊗C→fH^i(X_Kli(p),Ω(k,2)(−D))⊗C. Form the smooth admissible GSp₄(ℚ_p)-representation V=colim_(K_p)H^i(X_(K^pK_p),Ω(k,2)(−D))⊗C of AutomorphicBundlesPartII §4.4, whose K_p-invariants are the finite-level groups, invariants under compact open subgroups being exact in characteristic zero, and on whose hyperspecial and Klingen invariants the double cosets act by the coherent Hecke operators of AutomorphicBundlesPartII §3.13. The subrepresentation generated by V^Kli(p) is finitely generated and admissible, hence of finite length (SmoothRepresentationsOfLocalGroups §SR.3.1), and has the same hyperspecial and Klingen invariants as V; ordinary projectors are exact on finite-dimensional Hecke modules, so it suffices to treat each irreducible subquotient π_p contributing to either side. At hyperspecial level, with X^≥1 the formal p-rank-at-least-one locus of X, the integral operator T_p,2=p⁻³T′_(p,2) on RΓ(X^≥1,Ω(k,2)(−D)) is AlgebraicModularFormsAndSerreWeightsPartII §7.3 at (d,r)=(k,2), resting on the ordinary trace divisibilities of its §7.2, and restriction from X to X^≥1, bijective on H^0 and injective on H^1 for Ω(k,2)(−D) modulo every p^n and integrally, is its §7.4. Prove the Klingen counterparts on the integral Klingen model of gap:klingen-lci-model, with (X_Kli(p))^≥1 its formal p-rank-at-least-one locus and H the universal subgroup of order p. Over (X_Kli(p))^≥1 take the normalized closure of the components of the base change of the correspondence of AlgebraicModularFormsAndSerreWeightsPartII §7.1 on which the isogeny kernel meets H trivially. Using the natural map p2*I^(−1)→p1*I^(−1), which is divisible by p at the ordinary points where p1*H is étale and p2*H is multiplicative, prove that the raw operator on Ω(k,2)(−D)⊗I^(−3) factors through p³, so that U_Kli(p),2 acts integrally on RΓ((X_Kli(p))^≥1,Ω(k,2)(−D)⊗I^(−3)); and prove that restriction from X_Kli(p) to (X_Kli(p))^≥1 is bijective on H^0 and injective on H^1 for Ω(k,2)(−D)⊗I^(−3) modulo every p^n and integrally, its complement having codimension two in each Cohen–Macaulay reduction modulo p^n (Pilloni-Singular, Lemmas 14.9.1, 14.9.2 and 14.9.2.1, pp. 103–105; §14.9.2, pp. 104–106). Deduce that T_p,2 and U_Kli(p),2 have only eigenvalues of nonnegative valuation on these cohomologies: an eigenclass whose eigenvalue α has v(α)<0, rescaled into the integral lattice, restricts on the p-rank-at-least-one locus to a class fixed by α^(−n)U^n up to torsion that a further rescaling removes, hence divisible by every power of p; by the injectivity the class vanishes modulo every p^n, so it is zero in the inverse limit (Pilloni-Singular, Proposition 14.9.1 and its proof, pp. 102–104; source issue E16). A Newton polygon computation from this integrality, the ordinary condition and the central character then gives the Hecke parameters of π_p valuations 0, 0, k+1, k+1 (Pilloni-Singular, Corollary 14.9.1 and its proof, pp. 102–103). Their ratios then have valuations 0 and ±(k+1), never 1, so π_p is an irreducible unramified principal series by the criterion of §9.5; the products αβ, αγ, βδ, γδ have valuations 0, k+1, k+1, 2k+2, so αβ is isolated and the isolated refinement of §9.5 applies to π_p. For every k≥0 compare two locally constant Euler characteristics: that of the ordinary fibres of the perfect Λ1-complex M_Kli, d1(k)−d0(k), and that of the slope-zero part of the analytic cuspidal family of §9.6, dim H^1_cusp(†,k,2)_(=0)−dim H^0_cusp(†,k,2)_(=0); identify the latter with the ε-neighbourhood dimensions through the sheaf-level comparison (equality in degree 0 for all k, in degree 1 for k≥3). Constancy for M_Kli alone does not close the argument. Use codimension-two extension and the ordinary hyperspecial/Klingen comparison for the torsion H^0 assertion in its stated range.

*Needs:* §9.4; §2.6; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; DeformationAndDerivedPatchingAlgebra §7.10; ShimuraCompactifications §4.10; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; gap:klingen-lci-model; gap:klingen-height-one-igusa; AlgebraicModularFormsAndSerreWeightsPartII §7.1; AlgebraicModularFormsAndSerreWeightsPartII §7.2; AlgebraicModularFormsAndSerreWeightsPartII §7.3; AlgebraicModularFormsAndSerreWeightsPartII §7.4; AutomorphicBundlesPartII §3.13; AutomorphicBundlesPartII §4.4; AutomorphicBundlesPartII §5.1; AutomorphicBundlesPartII §5.2; SmoothRepresentationsOfLocalGroups §SR.0.2; SmoothRepresentationsOfLocalGroups §SR.3.1; §9.5; §9.6; §9.7.

**Checks.**

- Where I=(p), the lattice I^(−3) is p⁻³O and is different from O before rationalization, while both become the same line after inverting p. Where I=O the twist is O.
- The eigenvalue bound is nonnegativity, not positivity. In the normalization of Pilloni-Singular Lemma 5.1.5.1 and Proposition 5.1.5.1, take p=3 and the parameters (1,1,9,9) of §9.5, whose valuations (0,0,2,2) are those of the route at k=1. The spherical line has T_p,2 eigenvalue α+β+γ+δ=20, and the four-dimensional Klingen module has U_Kli(p),2 eigenvalues α+β=2, α+γ=10, β+δ=10 and γ+δ=18, of valuations 0; 0, 0, 0, 2. A bound by positive valuation would exclude four of these five.
- At p=2, k=0 is included in rational Klingen control, while the hyperspecial torsion assertion starts at k=4 because k>p+1=3. Equality k=3 is outside that assertion.
- At k=0 the extension threshold k+2r−3 with r=2 is 1, so the ordinary part (slope 0) is inside it while slope 1 is not; the degree-one dimension comparison with the analytic family is direct only for k≥3 and reaches k=0,1,2 through local constancy of the two Euler characteristics.

At k=0 the rational Klingen comparison holds; the hyperspecial ℚ_p/ℤ_p assertion is only for k>p+1. The integral extension argument retains the lattice twist I^(−3), where I=detω_G⊗detω_(G′)⁻¹ is the invertible differential ideal of the second isogeny in G→G′→G (its inverse is the unit-section inverse different): restriction across codimension two is injective on H¹ and bijective on H⁰, and the ordinary-point trace divisibilities of Pilloni-Singular §14.9.2, pp. 104–106, the spherical ones being AlgebraicModularFormsAndSerreWeightsPartII §7.2, are part of the proof.

### 9.9 Split U(n,1) and positive-degree families

For unitary signature (n,1), n≥1, at a split good prime with neat tame level and the Coleman datum, use derived A_n coordinates and M=GL_n×GL_1, d=n. Minimal left representatives are w_r=(1,…,n−r,n+1,n−r+1,…,n), r=0,…,n, of length r, using (w x)_i=x_(w⁻¹i). Put ρ=(n/2,(n−2)/2,…,−n/2). For dominant regular integral ν the weights κ_r=−w0M w_r(ν+ρ)−ρ are M-dominant and have compatible + chamber r. For n=2 and ν=(4,2,0), they are (−3,−5,2), (0,−5,−1), (0,−2,−4), in degrees 0,1,2 respectively. Finite slope cuspidal ranges [0,r], canonical ranges [r,n], Serre duality and interior maximal-dimensional deformation follow. These are general Coleman conclusions specialized to split unitary data; this does not assert an integral unitary Hida complex or replace the ordinary locus by a µ-ordinary locus at inert p. (BP-Coleman, §1.1, pp. 2–4; Theorem 5.6.1, p. 115; Theorems 5.7.2 and 5.7.3, pp. 118–119; Theorem 6.7.3, p. 167; Theorem 6.9.7, pp. 171–172).

A proof route is as follows: Compute W_M\W by the omitted position of the last coordinate, checking the left-coset and inverse-action conventions. Substitute the A_n half-sum; the final shifted weights are integral despite possible half-integral individual ρ coordinates. Apply the general Coleman theorems in each of the n+1 strata and retain only the supported integral scope.

*Needs:* §1.1; §5.6; §6.9; §7.5; ShimuraData §3.8; ShimuraData §3.10; ShimuraData §3.13; PELModuli §M5.5; PELModuli §M5.6.

The unitary result is not a proof of the general integral Hodge/PEL target.

### Examples

At k=2 on the modular curve the standard classicality endpoint is 1. At genus-two k₂=3 the specified standard U₂ has strict threshold 1. For n=2 split unitary ν=(4,2,0), the three weights are (−3,−5,2),(0,−5,−1),(0,−2,−4). The Klingen isolated-refinement example has products 1,9,9,81, so repeated nonordinary roots are admitted.

### Dependencies

§1.1; AdicSpacesPartIII §R3.1; AdicSpacesPartIII §R3.4; AdicSpacesPartIII §R3.6; AutomorphicBundles §11.10; AutomorphicBundles §11.16; AutomorphicBundles §12.1; AutomorphicBundles §12.11; AutomorphicBundlesPartII §3.0b; AutomorphicBundlesPartII §3.13; §8.5; §5.7; §5.8; §5.6; CompletedCohomologyPartII §3.11; CompletedCohomologyPartII §3.12; §2.6; DeformationAndDerivedPatchingAlgebra §7.1; DeformationAndDerivedPatchingAlgebra §7.10; DeformationAndDerivedPatchingAlgebra §7.3; DeformationAndDerivedPatchingAlgebra §7.5; DeformationAndDerivedPatchingAlgebra §7.6; DeformationAndDerivedPatchingAlgebra §7.8; §7.5; §6.9; §4.6; §4.8; §4.9; LocallyAnalyticDistributions §4.16; OverconvergentAutomorphicForms §0.4; PELModuli §M5.5; PELModuli §M5.6; PadicFamilies Layer 0; PadicFamilies Layer 0a; PadicFamilies §2a.15; PadicFamilies §2a.16; PadicFamilies §2a.17; PadicMeasuresIwasawaAlgebras §1.1; PadicMeasuresIwasawaAlgebras §1.7; PhiGammaModulesAndIwasawaCohomology §2.7; ShimuraCompactifications §6.16; ShimuraCompactifications §6.17; ShimuraCompactifications §7.19; ShimuraCompactifications §7.20; ShimuraCompactifications §7.21; ShimuraData §3.10; ShimuraData §3.13; ShimuraData §3.8; ShimuraData §5.10; ShimuraData §5.11; ShimuraData §5.5; ShimuraData §5.6; SmoothRepresentationsOfLocalGroups §SR.0.2; SmoothRepresentationsOfLocalGroups §SR.1.4; SmoothRepresentationsOfLocalGroups §SR.4.5; gap:coherent-correspondences; gap:klingen-height-one-igusa; AutomorphicBundlesPartII §5.1; AutomorphicBundlesPartII §5.2; gap:projective-banach-cohomology; AutomorphicBundlesPartII §4.4; ShimuraCompactifications §4.10; SmoothRepresentationsOfLocalGroups §SR.2.2; SmoothRepresentationsOfLocalGroups §SR.3.1; SmoothRepresentationsOfLocalGroups §SR.3.4; AlgebraicModularFormsAndSerreWeightsPartII §7.1; AlgebraicModularFormsAndSerreWeightsPartII §7.2; AlgebraicModularFormsAndSerreWeightsPartII §7.3; AlgebraicModularFormsAndSerreWeightsPartII §7.4; gap:klingen-lci-model.


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
- **E5 (misprint).** BP-Coleman, Definition 6.4.7, p. 158, revised author edition: The first negative-support inclusion uses the coefficient radius n where the geometric second depth l occurs in its positive counterpart. Use the depth l in that geometric inclusion, U∩B(cl(m+s),l)⊂Z∩U with the notation and the relative bound of §5.2, retaining the unclosed B(n,n) as the independent coefficient-domain condition. The algebraic negative definition 5.4.10 and all the remaining bounds use the freely chosen depth l; n already has a different fixed role.
- **E6 (misprint).** BP-Coleman, Theorem 6.10.2(1), p. 173, revised author edition: The theorem header uses the strongly-small subspace, while its proof proves the small subspace. The stronger result with the geometric small condition is justified by Theorem 6.10.1(2) and Corollary 5.8.1. The proof explicitly removes the wrong interior Cousin degrees using the sharp bounds; the introduction also advertises that improvement.
- **E7 (misprint).** BP-Coleman, Proposition 2.7.3, p. 32, revised author edition: A displayed supported derived cohomology expression receives an extra shift, and subsequent top-degree duality expressions use Ω^1. Use Ω^d and the degree-d support pairing; omit the extra shift on a complex already concentrated in degree d. Topological Serre duality pairs H^0 with H_c^d; blindly shifting a complex already concentrated in degree d changes that degree.
- **E8 (gap).** BP-Hida, Remark 5.4.3, p. 57 versus Propositions 6.2.13 and Theorem 6.2.15, pp. 63–64, author edition: The former labels arithmetic specialization by the inverse character, while the family comparison uses an unlabelled base-change map attached to ν_A. Label the Λ→A map explicitly, inserting inversion on analytic weight space when the regular-action convention of §4.5 is used. Specializing a group element at u^k versus u^(−k) produces different characters; a shared symbol A cannot determine this convention.
- **E9 (misprint).** Pilloni-Singular, §5.1.5, pp. 21–22, author edition, paragraph before Proposition 5.1.5.2: The Klingen paragraph imposes equality of the first adjacent product and the last adjacent product, while retaining the spherical eigenvalue labels. Use αδ=βγ, consistently with the spherical ordering on p. 21 and the stated Weyl-orbit eigenvalues. The diagonal similitude pairing equates the outer-coordinate product with the middle-coordinate product. The printed alternative would also make the four-distinct-product assumption in Lemma 5.1.5.2 impossible. §9.5 treats an isolated chosen eigenvalue when other products coincide.
- **E10 (misprint).** Pilloni-Singular, Proposition 13.3.3.1, p. 90, author edition: The commutative square for the BGG differential puts p^(−k−1)U on the target term. Corollary 13.3.3.1 is deduced from it together with the slope bounds −3 and 0 of Proposition 13.3.1.1, and its thresholds k−2 and k+1 are exactly those bounds shifted by k+1; that deduction needs d1∘U=p^(k+1)U∘d1, which is also the factor the contraction z↦pz of §13.2.2 contributes to the (k+1)-st derivative. With the printed exponent the deduced thresholds would be −k−4 and −k−1. §9.6(4) uses p^(k+1).
- **E11 (gap).** Pilloni-Singular, §13.4, p. 91, author edition: The cohomology of the pullback of the finite-slope family complex to a point of weight space times G_m is identified with an eigenspace, without saying whether the pullback is derived over the product or over the weight factor, nor whether the eigenspace is generalized. Derived pullback over the product adds Tor terms of the spectral coordinate, and the residue fibre of a Jordan block is smaller than its generalized eigenspace. §9.6(2) specializes derived over the weight chart, localizes at the spectral maximal ideal and keeps the full primary component, as in PadicFamilies §2a.17.
- **E12 (error).** BP-Hida, Remark 4.3.12, p. 48, author edition: The restriction of the global operator to an incompatible stratum is written as a pure power of p times the local operator, the exponent being the difference of two character pairings with t. For every t∈T++ the scalar is the value at t of the difference of the two characters: a power of p times the value of that character at the unit part of t. In the GL₂ Check of §3.2 this unit is 1/2 for t=diag(2,3) and 1 for t=diag(2,6): a nontrivial unit part can give a unit different from 1 or the unit 1. This is what Proposition 4.3.9 and Remark 4.3.10 (the normalization depends on t, not only on its class modulo T(ℤ_p)) require. §3.2 uses this scalar c_w′(t). The positivity of its valuation, which is what the elimination of incompatible strata in Theorem 4.5.2 uses, is unaffected.
- **E13 (error).** BP-Coleman, Definition 5.4.10 and Example 5.4.11, pp. 111–112, and Definition 6.4.7, p. 158, revised author edition: The first lower inclusion asks that the whole tube B(m,cl(n+s)) lie in Z∩U, and the example asserts that the standard pairs satisfy the definition for every depth. Together with U⊂B(Cm,−1) this absolute bound fails for the depth-one standard pair on the GL₂ identity stratum at p=3 with C=2 (Check of §5.2). The proof of Theorem 5.4.12 only needs U∩Z_(n+s)⊂Z∩U, and U⊂U_m gives it from U∩B(m,cl(n+s))⊂Z∩U. §§5.2 and 6.2 use this relative bound, which every pair satisfying the printed bound also satisfies, and under which every standard pair is allowed with m=n=0.
- **E14 (gap).** BP-Coleman, §3.4, p. 45, with Definitions 5.4.10 and 6.4.7, revised author edition: min(t) and max(t) are extrema of v(α(t)) over the positive roots, which are undefined when G is a torus, although torus data are abelian-type Shimura data with quasi-split G. §5.2 sets min(t)=max(t)=C=1 in that case, where every tube is the whole space and the only allowed pair is U=Z=X.
- **E15 (misprint).** BP-Hida, §2.11, standing assumptions before Remark 2.11.1, p. 31, author edition: The two cross-containments put the first-projection pullback of D′+ inside the second-projection pullback of D″+, and symmetrically for D−. Read the second-projection pullback of D′+ inside the first-projection pullback of D″+, and the first-projection pullback of D′− inside the second-projection pullback of D″−. Remark 2.11.2 derives compactness of the middle and inner pairs from Proposition 2.10.4, whose hypothesis has this direction; the proof of Theorem 2.11.4 uses maps from support D′+ to support D″+, which exist only in this direction; and Proposition 6.2.3(2)–(3), p. 61, verifies this direction for the Siegel pairs. As printed, the containment and the inclusions of a dynamical pair force the first-projection preimage of D′+∖D″+ to be empty, so for a surjective first projection D′+=D″+ and the interior condition fails unless that set is open and closed. §2.8(c) uses the corrected direction.
- **E16 (misprint).** Pilloni-Singular, Proposition 14.9.1, p. 102, author edition: The two Hecke operators are said to have only eigenvalues of positive valuation. The proof, pp. 103–104, supposes a negative valuation and derives a contradiction, so it establishes nonnegative valuation; Corollary 14.9.1 needs only this integrality, and valuation zero is attained in the unramified Klingen module (the eigenvalue Check of §9.8). §9.8 uses nonnegative valuation.
