# Roadmap: automorphic bundles and classical automorphic forms, part II

**Summary.** This extends AutomorphicBundles B0–B5, whose endpoint is the coefficient bundle and its section Hecke operators, to integral coherent cohomology, equivariant perfect complexes and Hecke operators in every degree. It proves integral small-weight vanishing for Siegel threefolds, compares canonical and interior coherent cohomology with automorphic forms, and derives non-Eisenstein boundary vanishing and multiplicity-counted cuspidal decompositions. Over ℚ the boundary result holds in every degree; over a totally real field the boundary input is in degree zero. Conditional hypotheses on packets give the final degree-one/degree-zero dimension comparison. The coefficient, support, compact-group and arithmetic normalizations are part of these statements.

## Scope and ownership

The roadmap owns the geometric integral Levi realization, finite-coefficient coherent homology, group-ring perfect models, higher cohomological Hecke comparisons, integral EO detection of relations, coherent automorphic image comparisons and the localized boundary and cuspidal conclusions. It supplies the solid/discrete scheme interface and Hilbert–Siegel EO geometry used by those constructions. It includes arbitrary complete DVR coefficients where the statement is coefficient algebra, and states every geometric reduction and logarithmic lifting hypothesis separately.

AutomorphicBundles B0–B5 owns associated bundles, coefficient tensor operations, canonical and subcanonical extensions and section Hecke convolution; its B3.BGG owns the dual BGG construction. AlgebraicVectorBundles L0A–L0C owns the generic vector-bundle operations. SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21 and 4.8–4.10 owns generic Čech, Cousin, relative duality and formal functions. DerivedModuleAlgebra §§1.E.0–1.E.1 and 1.M.1–1.M.2 owns perfectness/retracts and Matlis duality, and DeformationAndDerivedPatchingAlgebra §§7.5–7.9 owns nilpotent lifting, dual complexes, completion and isolated derived-action blocks. Here the perfectness and localization targets identify the actual geometric complexes and operators with those constructions.

ShimuraCompactifications C3–C5 owns fans, toroidal/minimal models, refinements, polarized degenerations and normalized deeper-level models, in particular C5.19–C5.21 and C5.31; C4.16 owns the rational compactified Klingen span. Its C5.21 owns the formally canonical definition and its verification on its stated models. Section 5.1 here verifies its additional quotient and p-level applications. Its C5.29 owns the logarithmic canonical-bundle formula; §5.7 applies it to the actual Serre-dual coefficient.

Tau Ceti’s divisor-sheaf Serre duality for a curve over a field is in `TauCeti/AlgebraicGeometry/WeilDivisor/Scheme/SerreDuality.lean`, with `TauCeti.AlgebraicGeometry.SchemeWeilDivisor.cohomologyOneDualEquivCohomologyZero`. Section 1.6 instead treats arbitrary relative dimension over a finite DVR quotient, with its Matlis comparison and equivariance. The generic existence and uniqueness-up-to-homotopy of lifts are already in the library as Mathlib's K-projective theorems. AutomorphicFormsOnReductiveGroups §§6.3–6.7 states the closed chambers, infinitesimal characters, Kostant representatives, component transport and local coherent classifications; these are imported rather than defined again. The geometric tempered-image restriction in Layer 7 applies those results to the images constructed in Layer 6. IntegralHeckeAndGaloisDeterminants §§3a–3b owns spin polynomials and residual predicates; §4.3 identifies the geometric generators, and §5.15 applies the predicates to their coherent action. SmoothRepresentationsOfLocalGroups SR.4 owns normalized Satake. The exact boundary-coefficient restriction it needs is an explicit supplier contract below.

The scheme solid six operations and their discrete comparison are §3.0a, the genus-two Hilbert–Siegel EO geometry and quotient descent are §5.0, and the exact conditional comparison for GSp₄ packets and lower-rank Galois polynomials is §7.0. Locally analytic weights, ordinary projectors and p-adic families belong to the downstream OverconvergentAutomorphicForms roadmap; no such projector enters the classical comparison here.

## Conventions

O is a complete discrete valuation ring, ϖ a fixed uniformizer, E its fraction field, k its residue field of characteristic p, and Aₙ=O/ϖⁿ for n≥1. Coherent homology uses O-linear Matlis duality into E/O. On an Aₙ-module, the identification Aₙ≃(E/O)[ϖⁿ] sends x to x/ϖⁿ modulo O; use this when comparing an Aₙ-linear dual complex with Matlis homology. An unqualified Pontryagin dual into Qₚ/Zₚ is not the same datum over a ramified coefficient ring.

A supplied toroidal model has its chosen polarization, dual degeneration and logarithmic Hodge factors. Smoothness, properness and flatness are imposed in each theorem that uses them; a normalized bad-level model is not declared smooth merely because the generic fibre is smooth. D is the boundary, F_can the canonical extension, and F_sub=F_can⊗I_D the subcanonical extension. At a smooth Cartier boundary I_D=O(−D). H̄ⁱ always denotes the image of Hⁱ_sub→Hⁱ_can. Tensor products and coefficient reductions in a derived statement are derived unless the specified flatness removes higher Tor.

For genus two, ω(a,b)=Sym^(a−b)(E_Hdg)⊗det(E_Hdg)^b, with a≥b; Pilloni’s Ω^(k,r) is ω(k+r,r). The natural W coefficient has central coordinate −a−b. The arithmetic action twists by ν⁻³, giving W_(a,b;3−a−b) and V_(−b,−a;6−a−b); a scalar xI₄ acts by x^(a+b−6). These identify underlying bundles only after the Hecke linearization has been recorded. For a unit shift of the central coordinate, the W/V comparison uses the adelic central correction `sgn(nu(x)) * abs(nu(h))_f^(-1)`, with x and h the real and finite components; the finite norm must not be suppressed. Frobenius is geometric, so ε(Frob_v)=q_v⁻¹.

In CG20 the torus ordering is the one used by its matrices; diagonal tuples imported from another source are compared after the corresponding symplectic-basis permutation. The geometric Frobenius convention concerns Galois polynomials; normalized Satake uses the declared q powers. The compact parameter of AutomorphicFormsOnReductiveGroups §6.3 is balanced against its chosen coefficient. Its central coordinate is transported through the actual coefficient intertwiner of §6.7 and §7.0, never identified with the CG20 coordinate by matching labels.

For a cohomological correspondence the legs are p₁,p₂:C⇒X and the coefficient arrow is Lp₂*F→p₁!G, where the exclamation mark denotes **upper shriek**. Its adjoint under proper p₁ is Rp₁*Lp₂*F→G. In a general six-operation setting its adjoint instead uses **lower shriek** (p₁)!. Properness of the joint map to X×X alone does not justify using Rp₁* on unrestricted global cohomology. The global action targets below explicitly require proper p₁. Discrete coherent base change has Tor-independence and boundedness hypotheses; it is not inferred from finiteness of the base change. BP26 §2.6.12 itself assumes Tor-independence of X and S′ and flatness of F.

The integral construction first supplies individual Hecke endomorphisms in Layer 3 and their normalization and lifts in Layer 4. Layer 5 proves the hyperspecial integral convolution relations before constructing local perfect factors and residual or complex congruence localization. Agreement on H⁰ or after inverting p alone does not supply those relations.

The Q and totally real boundary arguments have different ranges. Over Q, CG20’s characteristic-zero nerve argument applies at neat prime-to-p level to all weights and all degrees, as stated immediately before Lemma 7.10 (pp. 52–53). Over a general totally real F, BCGP21 proves the degree-zero boundary vanishing used here. Its “reasonable” level means K=K^p∏_(v|p)K_v, with K^p neat and K_v hyperspecial, paramodular, Siegel parahoric, Klingen parahoric or Iwahori (Definition 3.3.3, pp. 204–205). The integral EO relation theorem additionally requires hyperspecial p-level. When passing from the G model to its G₁ quotient, impose p∤#Δ(K^p) and use the compactified direct-factor descent of §5.0. Freeness on the open model does not prove freeness on the compactified boundary.

Su’s comparison uses a connected reductive algebraic group over ℚ, a neat level, a smooth toroidal fan and the condition that the maximal Q-split central torus A_G is also maximal R-split in the centre. Its relative pair is (p_o,K_o), formed after the central split factor is removed, with p_o=Lie(P_h)∩m_G. It is not the unrestricted (g,K) pair. The tower coefficient V_o carries the inverse action of the removed central factor. Harris’s separate cusp/subcanonical map is needed to compare cusp and interior cohomology; Su’s canonical-extension theorem does not assert that comparison.

Every final cuspidal sum includes the actual spectral multiplicity space, the fixed central character, level invariants and residual congruence condition. The global classification and full compact-group statements for packets are explicit conditional inputs. The solid scheme enhancement and Hilbert–Siegel geometry are constructed in §§3.0a and 5.0. The full-group coherent convention is that of AutomorphicFormsOnReductiveGroups §§6.4–6.6.

Complexes use integer cohomological degrees; a sheaf has no negative cohomology, and the subtraction d−i in duality is integer subtraction.

All schemes, sites, modules and index sets lie in fixed universes, enlarged together for sheaf and derived constructions. Covers used for bounded Čech models are finite affine covers of quasi-compact separated schemes. A DVR is a nonzero domain of dimension one; neither the zero ring nor a field is treated as a DVR. Rank-zero coefficients and empty boundaries are allowed. No claim with a divided factor is evaluated where that factor is zero.

## Exact supplier contracts

### From Mathlib

Use `AlgebraicGeometry.Scheme`, `AlgebraicGeometry.Scheme.Modules`, `SheafOfModules.IsLocallyFree`, `SheafOfModules.IsFinitePresentation`, `CategoryTheory.DerivedCategory` and native module/group-ring carriers. In `Mathlib/Algebra/Homology/HomotopyCategory/KProjective.lean`, `CochainComplex.isKProjective_of_projective` assumes an upper degree bound and projective terms. In `Mathlib/Algebra/Homology/DerivedCategory/KProjective.lean`, `CochainComplex.IsKProjective.Qh_map_bijective` assumes a K-projective source and a derived-category instance. Apply the bijection to the actual geometric endomorphisms, including equalities of their homotopy classes.

### From Tau Ceti

`TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology`, `TauCeti.AlgebraicGeometry.Scheme.Modules.cohomologyFunctor`, `TauCeti.AlgebraicGeometry.Scheme.Modules.cohomologyZeroEquiv` and `TauCeti.AlgebraicGeometry.Scheme.Modules.cohomologyZeroEquiv_naturality`, in `TauCeti/AlgebraicGeometry/Cohomology/Basic.lean`, supply underlying additive sheaf cohomology, coefficient functoriality and natural identification of H⁰ with sections. Their definitions forget to abelian sheaves and impose no properness, finite-dimensionality, scalar-linear derived comparison or equivariant perfectness. Those additional conclusions occur with their hypotheses in this roadmap and its suppliers.

The field-valued curve sanity check uses `TauCeti.AlgebraicGeometry.SchemeWeilDivisor.cohomologyOneDualEquivCohomologyZero` in `TauCeti/AlgebraicGeometry/WeilDivisor/Scheme/SerreDuality.lean`: an integral separated Noetherian curve over a field, DVR codimension-one stalks, the valuative existence condition, coheight at most one, the function-field and constant-field hypotheses, and a canonical divisor determined by a nonzero Weil differential. It compares the dual of H¹ of a divisor sheaf with H⁰ of the complementary canonical divisor. It is not used to infer relative finite-coefficient duality.

### From TauCetiRoadmap.AutomorphicBundles

B0–B5, B3.BGG: Associated coefficients and frame functors; canonical and boundary-ideal extensions; integral good-prime coefficients; section Hecke operators and convolution; logarithmic Kodaira–Spencer and the dual BGG coefficient convention.

What AutomorphicBundles must provide (gap:integral-small-weight-dual-bgg): Extend the coefficient dual BGG graded comparison to the integral p-small Lan–Suh weights, with the correct Weyl or dual-Weyl lattice, cohomological length shifts and canonical/subcanonical boundary twists, and identify its characteristic-zero specialization. The supplying section is B3.BGG.2–B3.BGG.3.

### From TauCetiRoadmap.AlgebraicVectorBundles

L0A–L0C: The scheme-module tensor, dual, pullback, determinant and finite locally free operations, with their coherence and affine comparisons.

### From TauCetiRoadmap.SchemeAndStackFoundations

§§1.6–1.12, 2.6–2.8, 2.18–2.21, 2.23, 4.8–4.10: Finite étale descent, affine Čech comparison, scalar-linear derived cohomology, perfect proper pushforward, ordinary support triangles and Cousin resolutions, depth vanishing, proper coherent upper shriek, fundamental classes, smooth-proper duality and formal functions; use the Noetherian, Tor-independence, perfectness and boundedness conditions stated in those sections.

What SchemeAndStackFoundations must provide (gap:coefficient-linear-coherent-comparison): Identify scalar-linear derived coherent cohomology over an affine coefficient base with Tau Ceti’s underlying additive scheme-module cohomology, naturally in coefficient morphisms, long exact sequences and the H⁰/global-section equivalence. The supplying section is §§2.6, 2.18.

### From TauCetiRoadmap.DerivedModuleAlgebra

§§0.2–0.3, 1.1.1, 1.3–1.5, 1.E.0–1.E.1, 1.M.1–1.M.2, S.1: Native module-derived tensor and Hom, perfect objects and retracts, completion and inverse-system effectivity, Matlis duality with its chosen injective hull and signed spectral sequences; arbitrary residue fields use §1.M.2.

### From TauCetiRoadmap.DeformationAndDerivedPatchingAlgebra

§§7.1, 7.3–7.9: Infinite-rank nilpotent lifting and local freeness (§7.5), signed coefficient duality (§7.6), finite hyper-Tor filtrations (§7.7), completion (§7.8), and isolated finite derived-action blocks (§7.9), on the supplied perfect carriers.

### From TauCetiRoadmap.ShimuraCompactifications

C3.3–C3.10, C4.1–C4.11, C4.16–C4.17, C5.3–C5.17, C5.19–C5.31: Toroidal models and polarized degeneration data; common refinements; boundary ideals and fan-independent cohomology; minimal contractions and ample Hodge powers; finite-normalization and normalized-blow-up models with their lattice collections; formally canonical coefficients (C5.21); the rational Klingen span (C4.16). Normalized models carry no automatic smoothness assertion.

### From TauCetiRoadmap.LanglandsParameterStacks

LP3.0: Highest-weight Weyl and induced dual-Weyl modules over fields, with the selected Borel and highest-weight convention; the integral extension needed here is the contract below.

What LanglandsParameterStacks must provide (gap:integral-dual-weyl-lattices): Construct finite free integral Weyl and dual-Weyl modules for every dominant weight of a split reductive Levi over ℤ, with the fixed right-B function realization, left translation and base-change comparison to the field modules, retaining symmetric versus divided powers in residue characteristic. The supplying section is LP3.0.

### From TauCetiRoadmap.ComplexComparisonPartII

C1.9, C2, C3.3: Projective and proper coherent GAGA and derived GAGA for proper algebraic spaces, with the coefficient, pullback and proper-pushforward comparisons. Trace compatibility is specified below.

What ComplexComparisonPartII must provide (gap:gaga-duality-trace): Make projective/proper coherent GAGA compatible with the proper duality counit and the actual coherent trace, coefficient twists and boundary-ideal arrows in the toroidal Hecke spans. The supplying section is C1.9, C3.3.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

SR.0, SR.1, SR.2, SR.3, SR.4.1, SR.4.5: Smooth towers, characteristic-zero exact finite invariants, integral convolution and opposite-algebra conventions, parabolic induction and admissibility, normalized Satake and the GSp₄ generator comparison.

What SmoothRepresentationsOfLocalGroups must provide (gap:boundary-spin-satake): Compute the normalized Klingen-Levi restriction of the GSp₄ spin polynomial on the boundary coefficient, specifying all q powers and the central character χ so that the full polynomial is that of ρ₂⊕(ρ₂⊗χ), with the four distinct spin monomials and the reciprocal-polynomial convention. The supplying section is SR.4.5.

### From TauCetiRoadmap.IntegralHeckeAndGaloisDeterminants

§§2.2–2.3, 3a.1–3a.2, 3b.1–3b.2: Finite integral derived Hecke images and block localization; the spherical spin polynomial and multiplier; residual Galois-type and non-Eisenstein predicates; dual and character-twist transport of full characteristic polynomials.

### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups

§§1.1–1.8, 4.1–4.2, 6.1–6.7: Relative Lie cochains with their Koszul signs, fixed Hermitian pair, central balancing and actual automorphic occurrences; closed GSp₄ chambers (§6.3), component transport (§6.4), coherent discrete-series and limit calculations (§6.5), large-weight and lowest-weight classifications (§6.6), and higher-rank Kostant representatives (§6.7). The singular bound is the negative-parameter bound in §6.6, not an all-root regularity bound.

### From TauCetiRoadmap.AutomorphicSpectralTheory

§§4.1–4.5, 5.1–5.7a: Multiplicity-counted discrete cuspidal and L² spectra; Petersson adjoints; moderate-growth regularization, finite-infinitesimal-character acyclicity and relative cochain comparisons, for the stated pair and central character.

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

§§1.1–1.2, 1.7–1.11; Layer 5: Continuous residual representations, coefficient extension and semisimplification; recognition from full Frobenius polynomials by Chebotarev and Brauer–Nesbitt, including characteristic two. Retain the symplectic form and its multiplier.

### From TauCetiRoadmap.WeightsInEtaleCohomology

R34.5–R34.6: the classical rank-two eigensummand, its normalized good-prime Frobenius polynomial and every-coefficient-field comparison; R34.6’s Hilbert eigensummands and source-qualified coefficient descent. The underlying continuous representation and geometric/arithmetic Frobenius transport are ArithmeticGaloisRepresentations §§1.1–1.12, 2.2 and 5.1–5.3.

What WeightsInEtaleCohomology must provide (gap:lower-rank-polynomial-realizations): Extend R34.6’s fixed-form classical and source-qualified Hilbert realizations to continuous rank-two systems for every normalized classical cusp eigenform of weight at least one and every algebraic Hilbert cusp eigenpacket with all weights at least two and their common parity, with the full normalized unramified polynomial at every coefficient prime of different residue characteristic, stable coefficient models and reduction/dual transport, without a finite discrete-series-place restriction for the Hilbert good-prime polynomial. The supplying section is R34.6. Eisenstein polynomials are the products of the two actual class-field character polynomials; the comparison here retains their declared normalized central character.

### From TauCetiRoadmap.CrystallineCohomology

CR.5.1, CR.5.3–CR.5.4, CR.DDR.6.11–CR.DDR.6.14: Logarithmic structures, Cartier-type differentials and logarithmic crystalline/de Rham comparisons with their lifts and residue conditions. The coefficient splitting needed for the integral vanishing theorem is specified below.

What CrystallineCohomology must provide (gap:coefficient-logarithmic-splitting): Supply the coefficient logarithmic Deligne–Illusie splitting used in Lan–Suh Theorem 7.22 and Corollary 7.24 on the admitted W₂-liftable Cartier-type log-smooth PEL pairs, with the precise dimension, nilpotent-residue and p-smallness conditions. The supplying section is CR.5.4.

### From TauCetiRoadmap.EnhancedDerivedSheaves

§§0.1–0.3, E1.3, E2:towers, E3.2–E3.3, E5:abstract: Stable enhanced sheaf categories, coherent filtered diagrams, derived limits, tensor/Hom, localization and descent on small ringed sites. A triangulated category alone does not supply functorial cones.

### From TauCetiRoadmap.SolidAnalyticRings

§§1.5, 2.2, 6.4, 7.1–7.2: Solid coefficient categories, reflection, tensor and scalar extension, with universe bounds and the separate prime-completion hypotheses; the scheme six-operation extension is constructed in §3.0a here.

### From TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry

§4.8: Fundamental classes and the boundary-twisted trace construction on the admitted projectively embeddable correspondences, retaining the relative Cartier and inverse-image boundary hypotheses.

## How to read the build

Layers 1 and 2 construct integral coefficients, duality and equivariant perfect models. Layer 3 constructs the permitted correspondences and separates completion/compact-support filtrations from ordinary local cohomology. Layer 4 fixes normalization and compares geometric operators with the tower. Layer 5 proves vanishing, then the integral convolution relations, then Hecke localization. Layer 6 constructs the distinct automorphic images. Layer 7 applies the supplied local coherent calculations and the explicit conditional global contract. Layer 8 computes the two boundary problems in their separate degree ranges and obtains the cuspidal and dimension conclusions. The roadmap is this README; `Suggested.lean` documents which genuine headline carriers exist at the pins.

## Layer 1: integral coefficients and coherent duality

### 1.1 The integral de Rham Levi torsor

On a supplied toroidal Siegel model over O with finite locally free logarithmic Hodge factors and its polarized degenerating abelian family and logarithmic Hodge sequence, let M_dR be the torsor of triples (ψ₁,ψ₂,c), with ψ₁:O^g≃Lie(A), ψ₂:O^g≃ω_(Aᵗ), c a unit, and ψ₂=c(ψ₁ᵗ)⁻¹ after the polarization identifies the Hodge factors. It is a right torsor under the Siegel Levi M≃GL_g×G_m. The family, its dual and polarization are the extensions supplied by the compactification model; arbitrary semi-abelian schemes are not asserted to admit this datum.

(BP26, §4.3.1, p. 46, BP26 line 2374).

A proof route is to use the extended logarithmic Hodge sequence and polarization from C4–C5 and the deep-level models from C5.19–C5.31. Trivialize Lie(A) locally and construct ψ₂ from ψ₁ and c; verify the Levi change-of-frame law. Identify the generic fibre with the parent principal bundle reduced to its Hodge Levi.

Its API is:

- Specify the right GL_g×G_m action, including the multiplier on ψ₂.
- A local basis of Lie(A) gives an M-equivariant trivialization of the torsor.
- After inverting p, the associated bundles agree with B1–B3 through the Hodge filtration.
- The frame action preserves ψ₂=c(ψ₁ᵗ)⁻¹ and obeys identity and multiplication laws.
- Pulling back the model and polarization pulls back this torsor with its action and frame trivializations.

*Needs:* AutomorphicBundles B1; ShimuraCompactifications C4.1–C4.11; ShimuraCompactifications C3.3–C3.10 and C5; ShimuraCompactifications C5.19–C5.21, C5.31.

**Checks.**

- For g=1, scaling the Lie frame by u scales the dual frame by c/u.
- A rank-zero graded Hodge bundle leaves exactly the multiplier G_m torsor.
- Changing ψ₂ independently of ψ₁ and c does not define a point of M_dR.
- Compare both Hodge factors, including the multiplier, on an ordinary split chart.

### 1.2 Integral dual-Weyl automorphic coefficients

For a dominant Levi weight κ and an integral dual-Weyl module V_κ imported from LanglandsParameterStacks LP3.0, define ω^κ=M_dR×^M V_κ using AutomorphicBundles B0’s associated-bundle functor. With right B-equivariance f(mb)=(w₀,Mκ)(b⁻¹)f(m), left translation is (m′f)(m)=f(m′⁻¹m). Thus ω^κ is π_*O_(M_dR)[−w₀,Mκ], with this action. Use its canonical and boundary-ideal subcanonical extensions on the supplied integral model; do not replace an integral dual-Weyl module by its characteristic-zero semisimplification.

(BP26, §4.3.1 and Remark 4.3.2, pp. 46–47, BP26 line 2374).

A proof route is to import the integral induced representation and its base-change API from LanglandsParameterStacks LP3.0. Apply AutomorphicBundles B0’s associated-bundle functor to M_dR and compare local equivariant functions. Identify extensions through their toroidal charts and boundary ideal; preserve the left action order.

Its API is:

- In a frame, ω^κ identifies with O⊗V_κ with the stated transition law.
- Allowed coefficient base change commutes with the associated bundle and with its integral lattice.
- The boundary ideal inclusion gives ω^κ_sub→ω^κ_can, functorially in the coefficient.
- An M-equivariant integral module map induces a bundle map; identities and composites are preserved.
- Use AutomorphicBundles B0’s tensor/dual comparisons with the integral representation maps and boundary twists; do not identify a dual-Weyl dual with the same weight in positive characteristic.

*Needs:* §1.1; AutomorphicBundles B0; AutomorphicBundles B3; LanglandsParameterStacks LP3.0.

**Checks.**

- Weight zero gives O and its subcanonical counterpart I_D.
- In characteristic zero the construction agrees with AutomorphicBundles B3’s automorphic extension.
- The formula f(m⁻¹m′) for left translation fails even the identity law: with m′=1, m the permutation matrix of (123) in GL₃ and the regular function f(m)=m₂₁, it gives 0 instead of 1. For the upper Borel this coordinate has right character b₁₁, so the failure also occurs in an induced weight space.
- The left translation is a representation and commutes with the right B law.

### 1.3 The Siegel weight dictionary

For g=2 and integers a≥b, set ω(a,b)=Sym^(a−b)(E)⊗det(E)^b, E the rank-two Hodge bundle. Pilloni’s Ω^(k,r) is ω(k+r,r). In CG20’s Levi coordinates the natural coefficient is W_(a,b;−a−b); changing the central coordinate preserves the underlying bundle and changes its Hecke linearization. In BP26’s coordinates Lie(A) has weight ((0,…,−1);1) and ω_A weight ((1,0,…);−1). The dictionary identifies the actual multiplier characters rather than identify differently named central coordinates by notation.

(CG20, §5.3, pp. 23, 26–27; compare BP26 Remark 4.3.3, p. 47 and P20 §5.3, p. 24, CG20 line 955).

A proof route is to evaluate the standard, dual and determinant representations on the diagonal Levi. Use the logarithmic sequence 0→W_(1,0;0)→H¹_dR→W_(0,−1;1)→0 and O(1)=W_(0,0;1). Compare on a frame; record the change of central linearization separately from the underlying sheaf isomorphism.

*Needs:* §1.2; AutomorphicBundles B4; AutomorphicBundles B2.

**Checks.**

- Check (a,b)=(1,0),(1,1),(0,0) and Ω^(0,2)=det(E)²; the Lie and Hodge weights are dual with the multiplier specified.

### 1.4 Integral coherent cohomology complexes

For a proper toroidal O-model X and finite locally free F, let C_can(F)=RΓ(X,F_can) and C_sub(F)=RΓ(X,F_sub) in D(O); their reductions are derived coefficient tensors. Retain the canonical arrow C_sub→C_can. Under proper flat finite-presentation and perfect-coefficient hypotheses these objects are perfect over O. They are not automatically perfect over a deck-group ring.

(BP26, §1.1, p. 2; CG18 §7.2, pp. 395–398, BP26 line 52).

A proof route is to use native derived sheaf cohomology and the boundary ideal inclusion. Apply proper perfect pushforward with all its flatness and support hypotheses. Identify cohomology with Tau Ceti’s underlying abelian-sheaf cohomology, retaining the coefficient module structure as a requested comparison.

Its API is:

- H^i(C_*(F)) is H^i(X,F_*); forgetting scalars agrees with Scheme.Modules.Cohomology.
- Derived base change to A_n gives RΓ(X_(A_n),F_*(A_n)) under the proper perfect base-change hypotheses.
- Coefficient morphisms commute with C_sub→C_can.
- RΓ sends identity and composite coefficient maps to identity and composites, additively and O-linearly.
- The boundary ideal sequence gives the full derived triangle and long exact cohomology sequence, naturally for coefficient maps.

*Needs:* §1.2; AlgebraicModuliForArithmeticGeometry §7.5 (the boundary fundamental-class contract); DeformationAndDerivedPatchingAlgebra §§7.1–7.9; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; Tau Ceti `TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology`.

**Checks.**

- For empty D, the boundary arrow is the identity.
- On Spec O with F=O and empty D, both complexes are O in degree zero.
- Reduction of H^i need not equal H^i of the reduced complex when H^(i+1) has torsion.
- Distinguish perfectness over O from the stronger equivariant claim of Layer 2.

### 1.5 Coherent homology over a DVR

Let O be a complete DVR with uniformizer ϖ, fraction field E, residue characteristic p, A_n=O/ϖ^n with n≥1, and Y/O smooth proper of pure relative dimension d. For finite locally free F define H_i(Y,F⊗A_n)=Hom_O(H^i(Y,F^∨⊗ω_(Y/O)⊗A_n),E/O). Deck transformations act contragrediently. The coefficient dual is Matlis dual over O; identifying it with Z_p-Pontryagin dual requires a chosen character and the inverse different.

(CG18, §7.2, pp. 395–396; CG20 §7.2, p. 51).

A proof route is to form the coherent dual coefficient F^∨⊗ω and take its cohomology. Apply Hom_O(−,E/O), using injectivity over a DVR and inverse deck action. Construct comparison maps under finite étale pullback by dualizing trace.

Its API is:

- Specify evaluation into E/O and its functorial O-linear duality.
- On a functional λ, δ acts by λ∘δ⁻¹.
- A_n≃Hom_O(A_n,E/O) through a↦(b↦ab/ϖ^n mod O), with the chosen uniformizer.
- A map F→G induces H_i(F)→H_i(G) by dualizing the contravariant dual-coefficient map; identity and composition are preserved.
- Evaluation satisfies ⟨δλ,δx⟩=⟨λ,x⟩ and is O-balanced; finite étale pullback and trace are adjoint under it.

*Needs:* DeformationAndDerivedPatchingAlgebra §§7.1–7.9; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; §1.4.

**Checks.**

- For Y=Spec O and F=O, H_0(Y,A_n)≃A_n.
- H_i is zero when the defining coherent cohomology group is zero.
- For p odd, O=Z_p[ϖ] with ϖ²=p has different (2ϖ). The trace character identifies the Z_p-dual lattice with (2ϖ)⁻¹O, whereas the definition evaluates in E/O. A claimed canonical identification using O itself and no inverse different fails this ramified example.
- The action convention must turn pullback on the dual coefficient into covariant homology.

### 1.6 Finite-coefficient Serre duality

Under the preceding smooth proper relative-dimension-d assumptions, duality over A_n identifies H_i(Y,F⊗A_n) with H^(d−i)(Y_(A_n),F⊗A_n), using the self-duality A_n→Hom_O(A_n,E/O). The perfect derived pairing over A_n is RΓ(Y_(A_n),F_(A_n))⊗^L_(A_n)RΓ(Y_(A_n),F_(A_n)^∨⊗ω_(Y_(A_n)/A_n))[d]→A_n. Its trace is a morphism; it is not an isomorphism RΓ(ω)[d]≃A_n. Deck and coefficient maps are adjoint with the inverse-action convention.

(CG18, §7.2, pp. 395–396, 399–400, CG18 line 3947).

A proof route is to use the smooth dualizing identification f!A_n=ω[d] and proper coherent duality. Apply the chosen self-duality of the Artinian Gorenstein coefficient ring and exact Matlis duality. Check the evaluation trace on Čech representatives and the inverse deck action.

*Needs:* §1.5; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; DeformationAndDerivedPatchingAlgebra §§7.1–7.9.

**Checks.**

- For a smooth proper curve with nonzero H¹(O), RΓ(ω)[1] has an additional cohomology group, disproving the overly strong trace-isomorphism formulation.

### Examples

Compare both Hodge factors, including the multiplier, on an ordinary split chart.

The left translation is a representation and commutes with the right B law.

Check (a,b)=(1,0),(1,1),(0,0) and Ω^(0,2)=det(E)²; the Lie and Hodge weights are dual with the multiplier specified.

Distinguish perfectness over O from the stronger equivariant claim of Layer 2.

The action convention must turn pullback on the dual coefficient into covariant homology.

For a smooth proper curve with nonzero H¹(O), RΓ(ω)[1] has an additional cohomology group, disproving the overly strong trace-isomorphism formulation.

### Dependencies

AlgebraicModuliForArithmeticGeometry §7.5 (the boundary fundamental-class contract); AutomorphicBundles B0; AutomorphicBundles B1; AutomorphicBundles B2; AutomorphicBundles B3; AutomorphicBundles B4; DeformationAndDerivedPatchingAlgebra §§7.1–7.9; LanglandsParameterStacks LP3.0; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; ShimuraCompactifications C3.3–C3.10 and C5; ShimuraCompactifications C4.1–C4.11; ShimuraCompactifications C5.19–C5.21, C5.31; Tau Ceti `TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology`. Earlier in this layer use the individual prerequisites displayed above.

## Layer 2: equivariant coherent perfect complexes

### 2.1 The equivariant Čech model

Let f:Y→X be a finite étale Galois cover of smooth proper O-schemes with finite abelian p-group Δ, and let F be finite locally free on X. Choose a finite affine cover of separated X; its inverse-image cover gives a bounded alternating Čech complex for f*F⊗A_n with its actual Δ action, computing RΓ(Y,f*F⊗A_n). Its terms may have infinite rank over A_n[Δ]. Refinements give the same derived object.

(CG18, §7.2, pp. 397–398, CG18 line 4027).

A proof route is to pull back the affine cover; finite étale maps and finite intersections preserve affineness. Apply affine quasi-coherent acyclicity and Čech comparison. Write each coefficient term as N⊗_A B and preserve all deck operators in the differentials.

Its API is:

- Build the complex with alternating restrictions and the natural deck action.
- Identify its cohomology with coherent cohomology naturally in F and n.
- Cover refinement induces the canonical derived isomorphism compatible with Δ and coefficient reduction.
- A coefficient map induces the termwise Δ-equivariant cochain map, preserving identity and composition.
- Derived A_n→A_m reduction, m≤n, agrees with the corresponding geometric derived coefficient comparison and commutes with cover refinement.

*Needs:* §1.4; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21.

**Checks.**

- For a trivial Δ-torsor over an affine X with the single-open cover, the degree-zero term is (Γ(X,F)⊗_O A_n)⊗_(A_n) A_n[Δ], with the regular deck action; no integral O[Δ] coefficient remains.
- For Δ=1 this is the ordinary affine Čech construction.
- Replacing the group-ring terms by their Δ-invariants loses the upstairs cohomology object.
- The model is equivariant before passing to cohomology, and no finite-generation claim is made for its terms.

### 2.2 Étale Galois projectivity

For a finite étale Galois cover f:Y→X with finite group Δ, f_*O_Y is locally projective as an O_X[Δ]-module. If X is flat over A, it is A[Δ]-flat. For a Δ-pulled-back finite locally free coefficient the same flatness holds. For an affine torsor in characteristic p with Δ a p-group, its coefficient module is free over k[Δ], possibly of infinite rank; local projectivity does not in general give a global integral normal basis over O_X[Δ].

(BP26, Lemma 2.6.11, p. 22; CG18 proof of Lemma 7.7, p. 398, BP26 line 1124).

A proof route is to after an étale trivialization of the torsor, the regular representation gives a free O_X[Δ]-module. Descend finite projectivity and use flatness of the base algebra over A. For the affine characteristic-p assertion use Nakajima’s theorem and the local Artinian structure of k[Δ], not averaging by |Δ|.

*Needs:* §2.1; SchemeAndStackFoundations §§1.6–1.12; SmoothRepresentationsOfLocalGroups SR.1.

**Checks.**

- Test a trivial torsor with p dividing |Δ|; the result must survive without dividing by |Δ|.

### 2.3 Integral Čech freeness

Let O be a complete DVR with residue characteristic p and let Δ be a finite abelian p-group. For a finite étale Δ-torsor Spec B→Spec A with A flat over O and a finite projective A-module N, the module (N⊗_A B)/ϖ^n is free over A_n[Δ] for each n≥1. This allows infinite rank. O-flatness of N⊗_A B, characteristic-p Galois projectivity and the nilpotent coefficient-lifting criterion are essential.

(CG18, Lemmas 7.5–7.7, pp. 397–398, CG18 line 4027).

A proof route is to use O-torsion-freeness to identify successive ϖ-adic quotients. Apply the characteristic-p affine projectivity theorem to reduction modulo ϖ. Lift a free k[Δ]-basis through the nilpotent ideal (ϖ), using CG18 Lemmas 7.5–7.6; the module-lifting interface is DeformationAndDerivedPatchingAlgebra §7.5.

*Needs:* §2.2; DeformationAndDerivedPatchingAlgebra §§7.1–7.9.

**Checks.**

- A proof relying on finite rank of the affine section module fails the intended input.

### 2.4 Perfect models for coherent cohomology and homology

For the cover and coefficient of §2.1, there is a bounded finite projective A_n[Δ]-complex representing RΓ(Y,f*F⊗A_n). Apply this to f*F^∨⊗ω_(Y/O) to obtain C_n^∨. Its A_n-linear derived dual, with inverse Δ action, gives C_n with H_i(C_n)=H_i(Y,f*F⊗A_n), after the Serre-dual coefficient is used on the cochain side. Choose the convention C_n^∨ represents RΓ(F^∨⊗ω), so C_n is its coefficient-dual chain model. Group-ring coefficient reduction means A_m[Δ]⊗^L_(A_n[Δ])C_n^∨, equivalently derived reduction of its termwise A_n-free model. Models and Hecke lifts are canonical only in the derived category or up to homotopy.

(CG18, §7.2, p. 398 and pp. 399–400, CG18 line 4066).

A proof route is to bounded free Čech terms give finite Tor amplitude over the Noetherian ring A_n[Δ]. Properness gives finite cohomology over A_n and hence A_n[Δ]; apply the Noetherian perfectness criterion. Take the imported finite-projective dual model and use evaluation to identify its chain homology.

Its API is:

- C_n^∨ identifies with the specified coherent dual-coefficient complex.
- C_n computes the coherent homology defined in Layer 1, with inverse deck action.
- Two finite projective models carry a homotopy equivalence inducing the same derived identification.
- Transport geometric morphisms through the chosen derived identifications, independent up to homotopy of projective representatives.
- The model comparisons commute with derived deck coinvariants and coefficient reduction as proved by §2.5.

*Needs:* §2.3; §1.6; DeformationAndDerivedPatchingAlgebra §§7.1–7.9; DeformationAndDerivedPatchingAlgebra §§7.1–7.9.

**Checks.**

- For the trivial torsor over Spec O, the model is A_n[Δ] in degree zero.
- For Δ=1 the conclusion reduces to proper perfect coherent pushforward.
- A bounded complex of infinitely generated free Čech terms is not itself a finite perfect representative.
- Both representations must specify the dual coefficient; one cannot call a complex and its unshifted dual models of the same coefficient.

### 2.5 Derived coefficient change and deck descent

The equivariant models have derived coefficient compatibility A_m⊗^L_(A_n)C_n^∨≃C_m^∨ for 1≤m≤n, and homological deck descent C_n⊗^L_(A_n[Δ])A_n≃C_n(X,F). Thus Tor_i^(A_n[Δ])(H_j(C_n),A_n)⇒H_(i+j)(X,F⊗A_n). In degree zero H_0(Y,F)_Δ≃H_0(X,F); the five-term edge sequence includes Tor₂(H_0(Y,F),A_n)→H_1(Y,F)_Δ→H_1(X,F)→Tor₁(H_0(Y,F),A_n)→0. No injectivity of the second arrow is asserted without extra Tor vanishing.

(CG20, §7.2, proof of Theorem 7.11, p. 53; CG18 §7.2, pp. 398–400, CG20 line 2056).

A proof route is to use the affine torsor descent equivalence and the termwise free group-ring Čech model. Apply derived tensor and its hyper-Tor spectral sequence with homological indexing. Read the low-degree filtration before imposing any concentration or projectivity of homology groups.

*Needs:* §2.4; §2.2; DeformationAndDerivedPatchingAlgebra §§7.1–7.9.

**Checks.**

- An upstairs nonprojective H_0 can contribute a nonzero Tor₂ edge; test this before shortening the sequence.

### Examples

The model is equivariant before passing to cohomology, and no finite-generation claim is made for its terms.

Test a trivial torsor with p dividing |Δ|; the result must survive without dividing by |Δ|.

A proof relying on finite rank of the affine section module fails the intended input.

Both representations must specify the dual coefficient; one cannot call a complex and its unshifted dual models of the same coefficient.

An upstairs nonprojective H_0 can contribute a nonzero Tor₂ edge; test this before shortening the sequence.

### Dependencies

DeformationAndDerivedPatchingAlgebra §§7.1–7.9; SchemeAndStackFoundations §§1.6–1.12; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; SmoothRepresentationsOfLocalGroups SR.1. Earlier in this layer use the individual prerequisites displayed above.

## Layer 3: cohomological correspondences and filtrations

### 3.0a Solid coefficients on schemes

Construct, for a qcqs Noetherian scheme X over the fixed coefficient base O, the stable enhanced category of solid O_X-modules on its affine Zariski site. The coefficients and all covers lie in fixed universes. Restriction along affine maps is the supplied solid scalar extension; Zariski descent identifies affine restrictions and their tensor/Hom. For separated finite-presentation morphisms with an open-immersion/proper compactification, construct lower shriek and its right adjoint upper shriek, independent of compactification, together with pullback and direct image. Prove composition, tensor projection, proper base change in the admitted categories, and the compactification comparison. Construct the discrete-coefficient functor from bounded coherent complexes, with a natural comparison of upper shriek for proper maps in the Noetherian coherent-duality regime; prove the natural comparison is an isomorphism on the proper bounded perfect coherent inputs of §§3.1–3.13, under the stated finite-Tor and pseudo-coherence hypotheses. Constructing this comparison is part of this target. Prime-adic completion of solid objects is not identified with an uncompleted discrete coefficient.

For an ideal I defining Z construct the closed locale with its completed solid algebra and the two localization triangles of §3.11. Its restriction and support functors must form coherent filtered diagrams, so that the maps of §3.12 act on the actual spectral sequence, not a family of unrelated pages. This is the scheme specialization of BP26 §§2.1–2.3, 2.6–2.9; use its precise boundedness and pseudo-coherence assumptions (BP26 Lemma 2.9.3, pp. 27–28, BP26 line 1403; Theorem 2.9.7 and Proposition 2.9.9, pp. 28–29, BP26 line 1440).

The API supplies:

- the source, target, unit and counit of each adjunction and their identity/composition coherences;
- descent comparisons on overlaps, with compatibility for tensor and scalar extension;
- the discrete comparison on proper coherent inputs and its trace compatibility;
- the completed-locale algebra, completion unit and open-complement maps with both localization triangles;
- natural maps of complete filtered objects, compatible with their graded terms, spectral differentials and abutment.

*Needs:* SolidAnalyticRings §§1.5, 2.2, 6.4, 7.1–7.2; EnhancedDerivedSheaves §§0.1–0.3, E1.3, E2:towers and E3.2–E3.3; SchemeAndStackFoundations §§2.18–2.21, 4.8–4.9; Layer 1. No automorphic spectral comparison is an input.

**Checks.**

- For X=Spec O and the identity map, all four operations are identity, and the adjunction composite sends 1 to 1. A zero counit fails this test.
- For I=(0), completion is the identity and the open complement is empty; for I=(1), the completion is zero and the open complement is X. Interchanging local support with completion exchanges these answers incorrectly.
- For the discrete O-complex O→O with differential ϖ, derived reduction has k in degrees zero and one, whereas underived reduction of its cohomology loses degree zero. The discrete comparison must preserve this triangle.
- On Spec k[x], local cohomology at (x) has H¹=k[x,x⁻¹]/k[x], while completion is k[[x]] in degree zero. The two localization triangles cannot be identified.

### 3.0b The additional compactified p-level spans

Construct the characteristic-zero paramodular and Siegel/Klingen/Iwahori p-level coefficient spans needed in §4.2 on the normalized models of ShimuraCompactifications C5.19–C5.31, retaining their lattice collections and polarization multipliers. The rational Klingen span is ShimuraCompactifications C4.16. Extend the generic isogeny to the chosen toroidal charts after a common refinement and give proper first legs and the reduced-boundary fundamental classes required for §3.4; no finite-flatness or smoothness of a normalized bad-level model follows from its generic fibre. The integral divisibility statement remains §4.2. (P20 §4.3, p. 19 and §§14.8–14.9, pp. 101–105; BP26 §4.3.1, pp. 46–47.)

Its API is:

- identify the open correspondence and the source and target of both coefficient pullbacks;
- compare the spans and their coefficient maps under common fan refinements;
- multiply the specified polarization multipliers under composition;
- give the proper trace on the admitted coefficient complex, naturally in its maps;
- identify the generic coefficient transport with AutomorphicBundles B5’s operator.

*Needs:* ShimuraCompactifications C3.3–C3.10, C4.11, C4.16, C5.19–C5.31; AlgebraicModuliForArithmeticGeometry §7.5; §§3.1–3.8 for the resulting coefficient maps. This geometry is used only after the general correspondence formalism has been constructed.

**Checks.**

- For the identity isogeny, both legs and its multiplier are identity, so the operator is 1.
- Multiplication by p on a Hodge line gives multiplication by p on the integral lattice and is invertible after 1/p; its inverse is not integral.
- The normalization chart q=tᵖ is ramified at t=0, since dq=p t^(p−1)dt. It does not justify a finite-étale boundary trace by its open description alone.

### 3.1 Cohomological correspondences

For separated finite-type S-schemes C,X with (p₁,p₂):C→X×_S X proper, and coefficient complexes F,G on X, a cohomological correspondence is a morphism T:Lp₂*F→p₁!G in the coherent/discrete derived category when the indicated operations and boundedness exist. When p₁ is proper its adjoint is Rp₁*Lp₂*F→G; in the solid six-operation setting the general adjoint uses lower shriek (p₁)!, not unrestricted Rp₁*. The solid version uses the stable solid O-module category and upper shriek constructed in §3.0a, with its specified discrete comparison.

(BP26, §2.1.7, Definition 2.1.8, p. 7; §2.2.9, p. 14; §2.3.12, p. 17; P20 Definition 4.3.1, p. 19, BP26 line 331).

A proof route is to use the imported coherent pullback/upper-shriek adjunction in its permitted derived categories. Specify the coefficient morphism and the proper support of the geometric correspondence. Compare the discrete embedding with the solid envelope only after the six-operation comparison of §3.0a is supplied.

Its API is:

- For proper p₁ identify T with Rp₁*Lp₂*F→G by coherent duality.
- The diagonal correspondence and identity coefficient morphism give the identity correspondence.
- Precomposition in F and postcomposition in G act functorially on correspondences.
- On fixed legs two correspondences agree exactly when their coefficient arrows Lp₂*F→p₁!G agree.
- For fixed legs the coefficient arrows form an O-module; coefficient pre/postcomposition is O-linear.

*Needs:* SchemeAndStackFoundations key; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21.

**Checks.**

- For p₁=p₂=id the correspondence is exactly a morphism F→G.
- For finite étale p₁ the standard trace turns a coefficient isomorphism into the B5 degree-zero pull–trace map.
- Reversing p₁ and p₂ without dualizing coefficients does not define the same adjoint morphism.
- Check the direction p₂*→p₁! and the precise domain of the adjunction.

### 3.2 The map on derived global sections

If p₁ is proper and T:Lp₂*F→p₁!G, define RΓ(T) as RΓ(X,F)→RΓ(C,Lp₂*F)→RΓ(C,p₁!G)→RΓ(X,G), using the pullback unit, T and the proper trace counit. It induces all degree-i maps. Proper support alone is insufficient for this unqualified global formula unless an appropriate supported pushforward is used.

(P20, Definition 4.3.1 and Remark 4.3.2, p. 19; BP26 §§2.2.9, 2.3.12, pp. 14, 17, P20 line 811).

A proof route is to form the unit for p₂ and the adjoint of T under proper p₁ duality. Apply derived global sections and the trace counit. Compare degree zero with the existing section operator when p₁ is finite locally free.

Its API is:

- Extract H^i(T) from the single derived operator.
- The identity correspondence acts by the identity on RΓ.
- For the B5 finite-flat correspondence and its trace, H⁰(T) is B5/hecke-section-operator.
- The global-action map for fixed legs preserves zero, addition and O-scaling of coefficient arrows.
- With the properness and base-change assumptions of §3.3, convolution acts by composition of the two derived global maps.

*Needs:* §3.1; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; Tau Ceti `TauCeti.AlgebraicGeometry.Scheme.Modules.cohomologyFunctor`.

**Checks.**

- For a finite étale degree-r map f and trivial coefficient, f_*f* acts by r on H⁰(O).
- The zero coefficient correspondence acts by zero in all degrees.
- A morphism of coefficient short exact sequences gives a commuting long exact cohomology diagram.
- Every degree is induced by one derived morphism, so coefficient exact sequences are respected.

### 3.3 Composition of cohomological correspondences

For two correspondences with proper first legs and coefficient morphisms T,S, form their fibre-product composition using proper upper-shriek base change and the projection formula. In a derived enhancement the composite acts on RΓ by RΓ(S)∘RΓ(T). In the discrete coherent category impose the required Tor-independence/perfectness hypotheses. This is a statement about the actual six-operation composition, not arbitrary chosen maps between cones.

(BP26, §2.2.9 and §2.3.12, pp. 14, 17; P20 §4.3, p. 19, BP26 line 676).

A proof route is to use the fibre-product correspondence and the base-change transformation for the middle legs. Compose the coefficient morphisms through the upper-shriek projection formula. Use adjunction coherence to identify global actions; use the solid coherence constructed in §3.0a.

*Needs:* §3.2; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; SchemeAndStackFoundations key.

**Checks.**

- For graphs, recover composition of the associated pullback/trace maps, with the declared leg orientation.

### 3.4 Correspondences from a fundamental class

Let C and X be S-schemes of the same pure relative dimension, p₁,p₂:C⇒X, with p₁ projectively embeddable and satisfying the AlgebraicModuliForArithmeticGeometry §7.5 fundamental-class hypotheses. Fix the resulting degree-zero class O_C→p₁!O_X. For perfect G (in particular finite locally free G) and a coefficient arrow Lp₂*F→Lp₁*G, tensoring this class with G and using the projection formula defines Lp₂*F→p₁!G. Equal dimensions alone do not supply the class. For finite locally free p₁ its adjoint is the algebra trace. Boundary twists use the reduced-relative-Cartier and inverse-image boundary hypotheses of AlgebraicModuliForArithmeticGeometry §7.5; its determinant route additionally retains the normal/smooth dense-open and relative normal-crossings hypotheses of P20 Lemma 4.2.4.1(1).

(P20, §4.3.1, p. 19; BCGP21 Definitions 3.9.1–3.9.2, p. 226, P20 line 806).

A proof route is to import the fundamental class and its transitivity/base-change statements from A0. Tensor the class with the coefficient map under the allowed projection formula. Check the boundary ideal map using the exact Cartier hypotheses, before applying RΓ.

Its API is:

- Compose the sheaf coefficient map with the pulled-back fundamental class.
- For finite locally free p₁, the adjoint uses the trace from the finite-duality algebra.
- Under the A0 boundary hypotheses the same construction sends subcanonical coefficients to subcanonical coefficients.
- Perfect coefficient maps commute with tensoring the fixed fundamental class; zero and sums of input coefficient arrows are preserved.
- The boundary class commutes with open base change, and in the finite-flat case with base changes retaining the Cartier conditions, exactly as in A0.

*Needs:* §3.1; AlgebraicModuliForArithmeticGeometry §7.5 (the boundary fundamental-class contract); SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21.

**Checks.**

- For identity maps with identity coefficient morphism the fundamental class is identity.
- For a finite étale cover this construction recovers the standard trace.
- A boundary divisor whose inverse-image supports differ on the two legs is not accepted by the subcanonical construction.
- Check the existence hypotheses for the degree-zero fundamental class and the perfect-coefficient projection formula separately; the relative dimensions here belong to C/S and X/S.

### 3.5 Tensor coefficients and deck coinvariants

For a correspondence over Spec A with F A-flat, a finitely generated A-module M gives the base-changed operator T⊗^L1 on F⊗^L_A M, by projection formula and upper-shriek comparison. Ordinary tensors agree only under the stated flatness. If a finite abelian group Δ acts equivariantly and F is A[Δ]-flat, derived coinvariants produce a correspondence on F⊗^L_(A[Δ])A, agreeing with ordinary coinvariants in this flat case. No averaging projector is used when |Δ| is not invertible.

(BP26, §2.6.1 and §2.6.9, pp. 21–22, BP26 line 1038).

A proof route is to apply derived tensor in the coefficient variable and use the upper-shriek projection formula. View coinvariants as derived tensor with A over A[Δ]. Use the group-ring flatness statement to compare ordinary and derived coefficients.

Its API is:

- The induced global morphism is RΓ(T)⊗^L1 whenever coherent derived base change applies.
- An equivariant T induces T_Δ on derived deck coinvariants.
- For A[Δ]-flat F the derived coinvariant coefficient equals its ordinary quotient.
- Iterated derived scalar extension agrees with extension along the composite coefficient map, with the same T action.
- The A[Δ]→A augmentation comparison is compatible with coefficient reduction and subgroup descent, using derived coinvariants throughout.

*Needs:* §3.3; §2.2; DeformationAndDerivedPatchingAlgebra §§7.1–7.9.

**Checks.**

- M=A leaves T unchanged.
- For F=A[Δ], coinvariants give A and the identity endomorphism descends to identity.
- For the trivial F_p[C_p]-module F_p, higher derived coinvariants are nonzero, so ordinary coinvariants cannot replace them.
- In residue characteristic p the construction must work for Δ=C_p.

### 3.6 Base change for cohomological correspondences

Under a base change S′→S, coherent upper-shriek base change transports T if the relevant Cartesian squares are Tor-independent and the imported duality hypotheses hold. A flat base change satisfies these conditions. Finiteness of S′→S alone is not sufficient. The derived solid version has its own base-change theorem and must be compared with this coherent statement before applying it to ordinary coefficient reduction.

(BP26, §2.6.12, pp. 22–23, BP26 line 1088).

A proof route is to write both base-change squares, including the one for C and p₁, and impose Tor-independence. Use the coherent base-change transformation for upper shriek and pullback. Identify global operators by proper base change, separately from underived sheaf base change.

*Needs:* §3.1; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21.

**Checks.**

- A nonflat finite reduction with nonzero Tor is a rejection test for an unconditional upper-shriek isomorphism.

### 3.7 Twisting by an automorphic coefficient

For finite locally free E on X and a coefficient transport α:p₂*E→p₁*E, tensor a correspondence T:F→G with α to obtain T_E:p₂*(F⊗E)→p₁!(G⊗E). The isomorphism p₁!G⊗p₁*E≃p₁!(G⊗E) is the finite-perfect projection formula. α need not be invertible; invertibility is proved separately for a rational isogeny transport.

(BP26, §2.6, pp. 21–23 and §4.3.1, p. 47, BP26 line 1038).

A proof route is to use the imported coefficient tensor structure and the projection formula for locally free E. Compose T⊗α with this comparison. Check identity and transitivity using the coefficient cocycle.

Its API is:

- Construct the coefficient morphism T_E.
- Twisting by O with identity transport returns T.
- Successive twists agree with the tensor product transport.
- A map between coefficient transports commuting with the two legs intertwines the twisted correspondences.
- A transport satisfying the cocycle law for composed correspondences makes twisting commute with convolution.

*Needs:* §3.1; §1.2; AutomorphicBundles B2.

**Checks.**

- A rank-one scalar transport u multiplies the global operator by u.
- A zero transport gives a zero twisted operator.
- An isogeny with p-power degree need not give an integral isomorphism of Hodge lattices.
- The coefficient transport must specify both its direction and integral or rational domain.

### 3.8 Rational isogeny transport of weight sheaves

A polarized quasi-isogeny along a toroidal Siegel correspondence, with its specified multiplier, induces p₂*ω^κ[1/p]≃p₁*ω^κ[1/p], compatible with composition and the generic parent Hecke pullback. Invertibility comes from the rational logarithmic Hodge isogeny. The integral map and any divisibility bound must be proved independently.

(BP26, §4.3.1, paragraph after Remark 4.3.3, p. 47, BP26 line 2425).

A proof route is to apply the quasi-isogeny to both graded logarithmic Hodge factors and its polarization multiplier. Invert p to obtain the Levi frame torsor isomorphism. Apply the parent associated-coefficient functor and check composition.

*Needs:* §1.1; §3.7; AutomorphicBundles B1; ShimuraCompactifications C5.19–C5.21, C5.31.

**Checks.**

- For multiplication by p, the rational transport is invertible while its Hodge-lattice map need not be an integral isomorphism.

### 3.9 The transpose correspondence

For smooth X,C over S and finite locally free legs p₁,p₂, coherent duality transposes T:p₂*F→p₁!G into Tᵗ:p₁*D_XG→p₂!D_XF, where D_X=RHom(−,f!O_S), for dualizable coefficients in the stated bounded categories. With X proper, its RΓ action is adjoint to RΓ(T). Swapping the legs also swaps and dualizes the coefficient; a Hecke double coset need not be self-adjoint.

(BP26, Proposition 2.7.3, pp. 23–24; CG20 Appendix A.3.2, pp. 86–88).

A proof route is to dualize the coefficient morphism and identify the duals of pullback and upper shriek. Use biduality and finite-flat duality to put it in the reversed-leg form. Apply proper global duality to prove the pairing identity; evaluate the inverse double coset and central character separately.

*Needs:* §3.2; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; DeformationAndDerivedPatchingAlgebra §§7.1–7.9.

**Checks.**

- For graphs of an automorphism, the transpose involves its inverse; determinant/cyclotomic twists must be retained.

### 3.10 Contracted support filtrations

For a correspondence (C,X,p₁,p₂), a closed subset Z is contracted when p₁⁻¹Z⊆p₂⁻¹Z, and expanded when the reverse inclusion holds. These are set-theoretic conditions. A finite increasing closed filtration (Z_l) is contracted when every Z_l is contracted, with strata U_l=Z_l∖Z_(l−1). The resulting maps of support objects are constructed as a coherent filtered diagram in a stable enhancement; no functorial cone in a bare triangulated category is assumed.

(BP26, Definition 2.1.19 and Remark 2.1.20, p. 9; §2.9.8, p. 28, BP26 line 429).

A proof route is to read inverse images as subsets, independently of scheme multiplicities. Pass to the complementary inclusion p₂⁻¹U⊆p₁⁻¹U. Separate this set-theoretic definition from the completion/compact-support filtered construction, whose solid enhancement is §3.0a.

Its API is:

- Contraction of Z is equivalent to p₂⁻¹(X∖Z)⊆p₁⁻¹(X∖Z).
- Specify a finite indexed filtration and contraction proofs for every closed term.
- Changing the closed subscheme structure without changing its support preserves contraction.
- Intersecting each Z_l with a correspondence-stable open preserves contraction.
- Transposing the legs exchanges contracted and expanded filtrations, including the empty and total closed sets.

*Needs:* §3.1.

**Checks.**

- The empty set and X are contracted.
- For p₁=id and p₂=Frobenius over F_p every closed subset is contracted.
- On {0,1}, p₁=id, p₂ constant 0 and Z={1} is not contracted; this distinguishes the two orientations.
- Set-theoretic contraction must not be strengthened to scheme-theoretic ideal containment.

### 3.11 Derived formal completion of coherent coefficients

For a qcqs Noetherian model X, a coherent ideal I defining Z, and a pseudo-coherent solid coefficient F in the BP26 setting, the completion locale î:Ẑ→X satisfies î_*î*F≃Rlim_n(F⊗^L_(O_X)O_X/Iⁿ), and RΓ(X,î_*î*F)≃Rlim_n RΓ(X,F⊗^L O_X/Iⁿ). The I=(p) case is the p-adic specialization. The comparison with ordinary discrete coherent formal functions is a separate SchemeAndStackFoundations §4.9 and DeformationAndDerivedPatchingAlgebra §7.8 input under properness and coherent boundedness assumptions. Integral correspondence maps and traces extending to the completion must commute with these comparison maps; the solid/discrete identification remains §3.0a.

(BP26, Lemma 2.9.3 and proof, pp. 27–28 (solid completion); SchemeAndStackFoundations §4.9 and DeformationAndDerivedPatchingAlgebra §7.8 supply the separate discrete formal-functions comparison).

A proof route is to apply BP26 Lemma 2.9.3 to the closed locale and its solid completed algebra; use pseudo-coherence in commuting tensor with the inverse limit. For the discrete proper model import formal functions and derived p-completion from SchemeAndStackFoundations §4.9 and DeformationAndDerivedPatchingAlgebra §7.8, rather than identifying the two coefficient categories without §3.0a. Compare the extended integral coefficient morphism, projection formula and trace before taking the inverse limit.

*Needs:* §3.6; §1.4; DeformationAndDerivedPatchingAlgebra §§7.1–7.9; SchemeAndStackFoundations §§4.8–4.10.

**Checks.**

- A coefficient with p-torsion must be reduced derivedly; the solid/discrete comparison is the target of §3.0a.

### 3.12 Equivariance of the completion and compact-support filtration

Let X be qcqs over the fixed base, F∈D⁻(O_(X,solid)), and ∅=Z_(−1)⊆Z₀⊆⋯⊆Z_d=X a finite closed filtration contracted by a cohomological correspondence T with proper p₁. Write U_l=X∖Z_l and Ẑ_l for the closed locale with I_l-adically completed algebra. The triangles RΓ_c(U_l,F)→RΓ(X,F)→RΓ(Ẑ_l,F) form a T-equivariant filtered object, with graded terms RΓ_c(Ẑ_l∖Ẑ_(l−1),F). Thus E₁^(s,t)=H_c^(s+t)(Ẑ_s∖Ẑ_(s−1),F)⇒H^(s+t)(X,F) is T-equivariant on every page. Its j! term belongs to the completion triangle j!j*F→F→î_*î*F. Ordinary local cohomology instead uses î_*î!F→F→Rj_*j*F; identifying these two filtrations is not asserted.

(BP26, §2.9.1, Lemmas 2.9.3 and 2.9.6, Theorem 2.9.7 and Proposition 2.9.9, pp. 27–29, BP26 line 1355).

A proof route is to use the complementary inclusion of inverse-image opens to construct the j! transformation through unit, T and the shriek counit. Use the solid completion localization triangles to assemble one filtered transformation; retain §3.0a for the stable enhancement and its coherences. Apply the filtered-complex spectral-sequence construction of BP26 Theorem 2.9.7; this is the completion/compact-support spectral sequence, rather than the ordinary Kempf resolution.

*Needs:* §3.10; §3.2; §3.11.

**Checks.**

- A single filtered map must induce all differentials and the abutment; do not replace the ordinary local-cohomology triangle by a j! triangle.

### 3.13 Coherent Hecke operators in every degree

For the toroidal Hecke correspondence at neat tame level with a common fan refinement, compatible coefficient transport and fundamental class, define [KgK] on RΓ(F_can) and RΓ(F_sub) using §3.2. Prime-to-p integral operators require the geometric smoothness/boundary hypotheses. At this stage construct the individual double-coset endomorphisms and their fan comparisons. They form an algebra action only after the integral convolution relations of Layer 5 (or a separately supplied characteristic-zero convolution proof) are verified. Degree zero agrees with B5. The operators are derived morphisms, without a chosen strict chain action.

(BCGP21, §3.9.3 and Remark 3.9.4, pp. 226–227; CG18 §7.2, pp. 398–400; P20 §5.3, p. 24, BCGP21 line 2880).

A proof route is to extend the geometric correspondence on a common fan refinement with its coefficient map. Use the fundamental class and trace to obtain a derived endomorphism. Compare compositions using the fibre-product decomposition and prove fan independence before declaring the algebra action.

Its API is:

- Construct the endomorphism for a double coset with its chosen coefficient normalization.
- Common refinements give the same RΓ morphism through the toroidal cohomology comparisons.
- The induced H⁰ action equals the parent B5 pull–trace/convolution action.
- Maps of Hecke-linearized coefficients intertwine the individual derived operators and the boundary arrow.
- The degree-zero comparison does not assert higher integral convolution; use §5.13 for the hyperspecial integral algebra action.

*Needs:* §3.4; §3.8; §3.3; AutomorphicBundles B5; ShimuraCompactifications C3.3–C3.10 and C5.

**Checks.**

- The unit double coset acts by identity.
- For a central scalar double coset, the action is the scalar of the declared central coefficient character.
- Equality of operators after inverting p does not imply equality of integral derived morphisms without a torsion-detection argument.
- The higher-degree integral algebra relations are supplied by Layer 5, rather than inferred just from agreement on H⁰.

### Examples

Check the direction p₂*→p₁! and the precise domain of the adjunction.

Every degree is induced by one derived morphism, so coefficient exact sequences are respected.

For graphs, recover composition of the associated pullback/trace maps, with the declared leg orientation.

Check the existence hypotheses for the degree-zero fundamental class and the perfect-coefficient projection formula separately; the relative dimensions here belong to C/S and X/S.

In residue characteristic p the construction must work for Δ=C_p.

A nonflat finite reduction with nonzero Tor is a rejection test for an unconditional upper-shriek isomorphism.

The coefficient transport must specify both its direction and integral or rational domain.

For multiplication by p, the rational transport is invertible while its Hodge-lattice map need not be an integral isomorphism.

For graphs of an automorphism, the transpose involves its inverse; determinant/cyclotomic twists must be retained.

Set-theoretic contraction must not be strengthened to scheme-theoretic ideal containment.

A coefficient with p-torsion must be reduced derivedly; the solid/discrete comparison is the target of §3.0a.

A single filtered map must induce all differentials and the abutment; do not replace the ordinary local-cohomology triangle by a j! triangle.

The higher-degree integral algebra relations are supplied by Layer 5, rather than inferred just from agreement on H⁰.

### Dependencies

AlgebraicModuliForArithmeticGeometry §7.5 (the boundary fundamental-class contract); AutomorphicBundles B1; AutomorphicBundles B2; AutomorphicBundles B5; DeformationAndDerivedPatchingAlgebra §§7.1–7.9; SchemeAndStackFoundations key; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; SchemeAndStackFoundations §§4.8–4.10; ShimuraCompactifications C3.3–C3.10 and C5; ShimuraCompactifications C5.19–C5.21, C5.31; Tau Ceti `TauCeti.AlgebraicGeometry.Scheme.Modules.cohomologyFunctor`. Earlier in this layer use the individual prerequisites displayed above.

## Layer 4: hecke lifts, normalization and comparison

Apply the K-projective bijection in the Mathlib supplier contract to the bounded finite-projective models of §2.4 and the geometric endomorphisms of §3.13. This gives chain representatives unique up to homotopy. Equality or commutation of derived operators becomes a homotopy between the corresponding composites; a strict chain algebra action is not inferred. (CG18 §7.2, pp. 399–400, CG18 line 4154.)

### 4.1 The arithmetic normalization of the Siegel Hecke action

For a Siegel threefold, replace the natural Hecke action on ω(a,b) by its ν⁻³ twist. The coefficient is then W_(a,b;3−a−b), whose analytic counterpart is V_(−b,−a;6−a−b). A central element xI₄ acts by x^(a+b−6). With geometric Frobenius, ε(Frob_ℓ)=ℓ⁻¹. If T′_(ℓ,i) are the geometric operators, set T_(ℓ,2)=ℓ⁻³T′_(ℓ,2) and T_(ℓ,i)=ℓ⁻⁶T′_(ℓ,i) for i=0,1, according to their similitudes.

(CG20, Remark 5.10 and Remark 5.12, pp. 33–34; P20 §5.3, pp. 24–25, CG20 line 1316).

A proof route is to calculate the multiplier on each chosen Hecke matrix. Twist the actual geometric action by ν⁻³ and compare its coefficient characters. Compare the central scalar and Frobenius conventions before passing to Hecke polynomials.

Its API is:

- The normalized action of xI₄ is x^(a+b−6).
- The three normalized geometric generators obey the displayed ℓ-power formulas.
- The normalized W and V realizations agree with their stated central parameters.
- Successive multiplier twists add their exponents and transport composite coefficient correspondences compatibly.
- The ν⁻³ twist uses the same scalar on canonical and subcanonical coefficients, so their comparison arrow remains equivariant.

*Needs:* §1.3; §3.13; §7.0.

**Checks.**

- Weight (a,b)=(4,2) has trivial normalized central scalar.
- The T_(ℓ,2) similitude ℓ gives factor ℓ⁻³, while similitude ℓ² gives ℓ⁻⁶.
- Twisting by ν³ reverses both normalizing exponents and fails the central-scalar test.
- The same underlying sheaf carries two different actions; the finite Hecke algebra map is part of the dictionary.

### 4.2 Integral divisibility and rational p-operators

For an integer k≥0, given an integral coefficient correspondence T and a proved factorization T=ϖ^k U into a ϖ-torsion-free target, define the normalized integral correspondence ϖ⁻kT=U; its uniqueness uses torsion-freeness. A rational operator alone supplies no integral division. At Klingen and paramodular level the geometric T_(p,2) and U_(Kli(p),2) are defined with p⁻³ after inverting p, using the p-level spans of §3.0b; no integral p-operator or ordinary projector is asserted here.

(P20, Remark 4.3.3, p. 19; §14.9.1–14.9.2, pp. 102–105, P20 line 806).

A proof route is to state the actual integral divisibility of the coefficient map, rather than divide a cohomology class. Use ϖ-torsion-freeness to make the integral normalization unique. For p-level correspondences invert p first, apply rational isogeny transport and the declared p⁻³ normalization.

Its API is:

- Construct U from divisibility and torsion-freeness.
- Two normalized maps with the same ϖ^k multiple coincide in a torsion-free target.
- After inverting ϖ the integral U equals ϖ⁻kT; the p-level operators use only this rational formula.
- Maps between torsion-free factorizations intertwine their divided maps by uniqueness after multiplication by ϖ^k.
- A flat coefficient extension preserving the divisibility factorization carries U to the normalized extended map; arbitrary torsion reduction is not a uniqueness argument.

*Needs:* §3.4; §4.1; ShimuraCompactifications C5.19–C5.21, C5.31; §3.0b.

**Checks.**

- On the rank-one O-module, T=ϖ^k·id normalizes to id.
- Multiplication by ϖ^k is not injective on O/ϖ, so division there is not unique.
- When k=0 the construction returns the original correspondence.
- The type of the operator must record whether it is integral or rational.

### 4.3 Geometric Hecke generators and the spin polynomial

Set β_(x,0)=diag(x,x,x,x), β_(x,1)=diag(1,1,x,x), β_(x,2)=diag(1,x,x,x²), and S_x=T_(x,0) in CG20’s convention. P20’s T_(ℓ,2),T_(ℓ,1),T_(ℓ,0) correspond to CG20’s T_(x,1),T_(x,2),S_x after the declared normalization. Identify these with the normalized spherical generators in IntegralHeckeAndGaloisDeterminants §§3a–3b, preserving coefficient central character and opposite-algebra convention. For BCGP21, T_(v,1),T_(v,2),T_(v,0) correspond to T_(ℓ,2),T_(ℓ,1),T_(ℓ,0). The resulting characteristic polynomial is X⁴−T_(v,1)X³+(q_vT_(v,2)+(q_v³+q_v)T_(v,0))X²−q_v³T_(v,0)T_(v,1)X+q_v⁶T_(v,0)². Import its generic spin-polynomial API from IntegralHeckeAndGaloisDeterminants §§3a–3b/SmoothRepresentationsOfLocalGroups SR.4, rather than re-own it.

(BCGP21, §3.10, p. 236; CG20 §5.5, p. 33; P20 §5.3, pp. 24–25).

A proof route is to read the actual diagonal matrices and double-coset measures in each source. Compare their similitude twists and opposite-algebra actions using the normalized coefficient. Evaluate the imported spin polynomial on the identified generators; distinguish det(X−ρ) from det(1−Xρ).

*Needs:* §4.1; IntegralHeckeAndGaloisDeterminants §§3a.1–3a.2, 3b.1–3b.2; SmoothRepresentationsOfLocalGroups SR.4.

**Checks.**

- The constant coefficient q_v⁶T_(v,0)² and the reciprocal polynomial must match the same Frobenius orientation.

### 4.4 GAGA and the coherent tower

For proper toroidal complex models, algebraic coherent cohomology agrees with analytic coherent cohomology in all degrees, naturally for Hecke pullback, trace, coefficient maps and boundary arrows. At characteristic-zero neat finite levels, passage to the direct-limit tower gives a smooth representation whose K-invariants recover finite-level cohomology under finite-level étale descent; finite-dimensional finite-level cohomology implies admissibility. The invariant functor used for descent is exact over characteristic zero. No analogous integral invariant equality is claimed when deck-group order is divisible by p.

(CG20, §5.3, pp. 24–25; BP26 §1.1, p. 2, CG20 line 994).

A proof route is to apply proper/projective GAGA on the actual compactification and coherent sheaves. Check compatibility of the duality counit as well as pullback and the boundary map. Use finite étale characteristic-zero descent, exact finite-group invariants and the finite-level/tower action.

*Needs:* §3.13; ComplexComparisonPartII C1.9 and C2; ComplexComparisonPartII C3.3; SmoothRepresentationsOfLocalGroups SR.0; ShimuraCompactifications C3.3–C3.10 and C5.

**Checks.**

- A finite group of order divisible by p must trigger derived descent over O/p, rather than the characteristic-zero invariants argument.

### Examples

For a zero derived morphism its chain representative is null-homotopic, and need not be zero as a chain map.

The same underlying sheaf carries two different actions; the finite Hecke algebra map is part of the dictionary.

The type of the operator must record whether it is integral or rational.

The constant coefficient q_v⁶T_(v,0)² and the reciprocal polynomial must match the same Frobenius orientation.

A finite group of order divisible by p must trigger derived descent over O/p, rather than the characteristic-zero invariants argument.

### Dependencies

ComplexComparisonPartII C1.9 and C2; ComplexComparisonPartII C3.3; IntegralHeckeAndGaloisDeterminants §§3a.1–3a.2, 3b.1–3b.2; Mathlib `CochainComplex.IsKProjective.Qh_map_bijective`; Mathlib `CochainComplex.isKProjective_of_projective`; ShimuraCompactifications C3.3–C3.10 and C5; ShimuraCompactifications C5.19–C5.21, C5.31; §3.0b; SmoothRepresentationsOfLocalGroups SR.0; SmoothRepresentationsOfLocalGroups SR.4; §7.0. Earlier in this layer use the individual prerequisites displayed above.

## Layer 5: integral vanishing, hecke relations and localization

### 5.0 Hilbert–Siegel geometry, EO strata and the boundary regularity input

For a totally real field F, the genus-two PEL datum for Res_(F/ℚ)GSp₄, a neat prime-to-p level and the rational polarization data, construct the G model, its toroidal and minimal compactifications and the G₁ quotient used by BCGP21. Identify the open moduli problem, universal polarized degenerating family and the two maps to the supplied PEL compactifications; on normalized p-level models retain the lattice collection and do not assert smoothness. At hyperspecial p-level with p totally split, the integral model is smooth of relative dimension 3[F:ℚ]. Define the finite quotient group Δ(Kᵖ) and prove the compactified direct-factor comparison under p∤#Δ(Kᵖ), including boundary stabilizers; an action free only on the open part is insufficient. The field F=ℚ is its Siegel specialization, not a genus-one Hilbert modular substitute. (BCGP21 §§3.3–3.8, Definition 3.3.3, pp. 204–205, Proposition 3.8.3 and its compactified quotient construction.)

Its API is:

- identify the open G and G₁ moduli models and their finite quotient comparison;
- supply the polarized logarithmic Hodge factors and their change of level;
- preserve automorphic coefficients under finite-level maps;
- compare boundary ideals and the toroidal-to-minimal contractions;
- split the canonical and subcanonical quotient cohomology as direct factors when p∤#Δ(Kᵖ).

*Needs:* ShimuraCompactifications C1, C3–C5; AutomorphicBundles B0–B4; SchemeAndStackFoundations §§1.6–1.12, 2.6 and 2.23; no later theorem on EO strata or packets is used.

**Checks.**

- For [F:ℚ]=1, dimensions are 3 for the open model, 2 for a toroidal boundary component and at most 1 for a minimal boundary stratum; genus-one geometry would give 1 instead of 3.
- For a quotient of order 2 with p=3 the averaging idempotent is (1+σ)/2 and its square is itself. At p=2 the denominator is absent; the hypothesis rejects this argument.
- The involution t↦−t acts freely on the punctured affine line in characteristic zero and fixes t=0 in its compactification. Thus open freeness does not certify the boundary descent.

Construct the hyperspecial EO filtration by closures of strata of codimension at least i, for i=0,…,3[F:ℚ], with finite closure incidence and Hecke stability. Prove that the minimal images of the relevant strata are affine, and construct cofinal Cohen–Macaulay thickenings cut out by regular sequences on which local Ext/Koszul systems compute the ordinary Cousin terms. These statements concern the compactified PEL strata and their images, not affineness of every toroidal stratum. (BCGP21 §3.9, pp. 229–231.)

Its API is:

- identify the codimension and closure incidence of each EO stratum;
- pull back its regular-sequence thickenings along the admitted prime-to-p Hecke maps;
- give the affine minimal image and its toroidal inverse image;
- compare the cofinal regular thickenings and their transition maps;
- identify the coefficient and dual-coefficient local Ext systems with their ordinary support objects.

*Needs:* the model above; SchemeAndStackFoundations §§0.18, 2.7–2.8; ShimuraCompactifications C5. The cohomological acyclicity is proved in §5.10 using §5.2.

**Checks.**

- Over F=ℚ the filtration has codimensions 0,1,2,3; a codimension-four nonempty term would contradict relative dimension 3.
- For a regular chart k[x,y] and ideal (x), the quotients k[x,y]/(xⁿ) are Cohen–Macaulay of dimension one. The length-one Koszul complex has H⁰ equal to that quotient and no negative homology.
- An affine minimal image does not make its proper toroidal fibre affine: ℙ¹ has H⁰(O)=k but is not affine. Relative subcanonical vanishing is needed in §5.10.

For every EO component in these charts prove that it meets the interior, and show that a local boundary equation is a non-zero-divisor on every chosen cofinal regular-sequence quotient. A proof route is to identify the associated primes of each complete-intersection quotient with its components and use geometric noncontainment in the boundary; verify this on the supplied thickenings rather than on the reduced stratum alone. This gives exactly the localization injections needed in §5.11. (BCGP21 Lemma 3.9.12, p. 230, proof: the regularity used in its localization step.)

**Checks.**

- On k[x,y]/(xⁿ), multiplication by y is injective: y·∑_(j<n)a_j(y)xʲ=0 forces every a_j=0. Inverting y therefore preserves a nonzero class.
- On k[x,y]/(xy,x²), x is nonzero but yx=0; localization at y kills x. Reduced noncontainment without a Cohen–Macaulay/associated-prime argument cannot replace the hypothesis.
- On k[x,y]/(xⁿ), the equation x is a zero-divisor, since x·x^(n−1)=0. A component contained in the boundary must be rejected.

### 5.1 Formally canonical and subcanonical coefficients

Apply the formally canonical and formally subcanonical conditions of ShimuraCompactifications C5.21 to the coefficients of §1.2 on the additional compactified p-level spans of §3.0bb and the G₁ quotient of §5.0. On every boundary chart identify the completed monomial module and exhibit the finite filtration of the boundary-base coefficient by pullbacks of finite base modules. The canonical monoid is σ∨; the subcanonical monoid is the intersection of τ∨_0 over nonzero faces τ of σ, including σ. For the zero cone this is an empty intersection, hence imposes no condition. Verify the reduced boundary-ideal identification on the relevant chart, using refinement pushforward when the model is singular. On a quotient apply the prime-to-p stabilizer direct-factor comparison of §5.0 to the completed coefficient. These are model-specific verifications of the supplied condition.

(Lan17, Definition 8.5, p. 34, with Propositions 7.5 and 7.15, pp. 28–32, Lan17 line 1488).

A proof route is to import the formal boundary charts and monomial indexing from the compactification owner. Specify the completed expansion and finite base-module filtration from §7. Verify the condition for canonical and boundary-ideal subcanonical automorphic coefficients on each required model.

Its API is:

- Give the chartwise completed expansion with its exact monoid.
- The boundary-ideal twist replaces σ∨ by the positive submonoid in the permitted charts.
- The specified finite filtrations and monomial expansions commute with the base changes allowed in Lan17.
- Restriction to a boundary chart and an allowed fan refinement preserves the completed expansion and its finite filtration.
- A coefficient isomorphism carrying the chart filtrations and monomial expansions transports the formally canonical property.

*Needs:* §1.2; ShimuraCompactifications C4.1–C4.11; ShimuraCompactifications C5.19–C5.21, C5.31; §3.0b.

**Checks.**

- On an empty-boundary chart the canonical and subcanonical conditions coincide.
- On a one-dimensional toric chart, canonical expansions permit the constant term while subcanonical expansions have positive exponent.
- An arbitrary bundle on the boundary abelian base without the prescribed finite filtration is not accepted as formally canonical.
- Verification on ramified or quotient models is an explicit obligation, not a consequence of the definition alone.

### 5.2 Toroidal-to-minimal relative vanishing

For a Lan17 normalized PEL toroidal-to-minimal map π over an allowed O_(F₀,(p))-algebra R, and a quasi-coherent extension E satisfying the formal criterion of ShimuraCompactifications C5.21, R^iπ_*(E(−nD′))=0 for i>0 and n>0 in the formally canonical case, and for i>0 and n≥0 in the formally subcanonical case. Here D′ is the boundary-supported relatively ample Cartier divisor of Lan17 Corollary 6.7. In particular subcanonical automorphic coefficients have no positive higher direct images once the chart criterion is verified; canonical coefficients at n=0 are not included. The same assertion holds over an open U of the minimal model for a coefficient defined on π⁻¹U with the chart criterion there; it also applies over finite coefficient algebras after verifying that criterion under base change. Analytic adic generic-fibre comparisons are imported by the higher-Hida consumer from its adic-space owner, rather than asserted as algebraic base change here.

(Lan17, Theorem 8.6 and Remark 8.9, pp. 34–35; P20 Theorem 6.2.2.1, p. 30; BP26 proof of Proposition 5.6.3, p. 58, Lan17 line 1505).

A proof route is to reduce locally on the minimal compactification to the formal chart calculation of Lan17 §7. Apply the positive-monomial argument and the relatively ample divisor D′ with the indicated range of n. Use formal functions and refinement descent; verify separately the ramified/quotient model inputs requested below.

*Needs:* §5.1; ShimuraCompactifications C3.3–C3.10 and C5; ShimuraCompactifications C5.19–C5.21, C5.31; §3.0b.

**Checks.**

- A canonical sheaf without the positive twist is outside the theorem; a subcanonical coefficient at n=0 is inside.

### 5.3 Lan–Suh’s small-weight specialization for GSp₄

For the smooth hyperspecial Siegel threefold over k of characteristic p, specialize Lan–Suh Corollary 7.24(2) to μ=(α,β;c) with α≥β≥0, α+β<p−3 and ν=(t,t;0), t>0. For a Kostant representative w with length ℓ(w), it gives vanishing of H^(i−ℓ(w))(W^∨_(w·μ−ν),sub) when i>3, under the source’s smallness hypotheses; in this specialization these include a−b+1≤p and 2<p. The three resulting weights are (β+2+t,−α+t), (α+3+t,1−β+t) and (α+3+t,β+3+t). The generic integral BGG and logarithmic Deligne–Illusie inputs remain with their suppliers.

(CG20, Proof of Theorem 5.1, pp. 22–24; LanSuh Corollary 7.24(2), manuscript p. 43, CG20 line 931).

A proof route is to use the integral dual BGG decomposition with its exact small-weight and logarithmic lifting hypotheses. Compute the three dot-action weights and the lengths 1,2,3 on the GSp₄ root datum. Solve for α,β,t for each desired (a,b), checking all inequalities over integers rather than discarding endpoint conditions.

*Needs:* §1.3; CrystallineCohomology CR.5; AutomorphicBundles B3.BGG (the coefficient splitting contracts); CrystallineCohomology CR.5.1–CR.5.4; LanglandsParameterStacks LP3.0.

**Checks.**

- The source’s relative coefficient/logarithmic splitting theorem is an explicit extension request, not inferred from an ordinary de Rham comparison.

### 5.4 Vanishing above degree two

On the smooth hyperspecial integral Siegel threefold with residue field k of characteristic p, if a≥3 and 2≤a−b≤p−2, then H^i(X_k,ω(a,b)(−D))=0 for i>2. The lower boundary of each displayed weight range is included. The level is neat and prime to p, and the finite field may be extended without changing the conclusion.

(CG20, Theorem 5.1(1) and proof, pp. 22–24, CG20 line 931).

A proof route is to use the length-1 Lan–Suh representative and its explicit weight formula. Choose integral α,β,t realizing (a,b) and check dominance, positivity and p-smallness. Translate W into ω and read the cohomological shift i−ℓ(w).

*Needs:* §5.3.

**Checks.**

- Check the endpoints in a≥3 and 2≤a−b≤p−2 and reject weights one step beyond the p-small bound.

### 5.5 Vanishing above degree one

On the smooth hyperspecial integral Siegel threefold with residue field k of characteristic p, if a+b≥6 and 2≤a−b≤p−2, then H^i(X_k,ω(a,b)(−D))=0 for i>1. The lower boundary of each displayed weight range is included. The level is neat and prime to p, and the finite field may be extended without changing the conclusion.

(CG20, Theorem 5.1(2) and proof, pp. 22–24, CG20 line 931).

A proof route is to use the length-2 Lan–Suh representative and its explicit weight formula. Choose integral α,β,t realizing (a,b) and check dominance, positivity and p-smallness. Translate W into ω and read the cohomological shift i−ℓ(w).

*Needs:* §5.3.

**Checks.**

- Check the endpoints in a+b≥6 and 2≤a−b≤p−2 and reject weights one step beyond the p-small bound.

### 5.6 Positive-degree vanishing

On the smooth hyperspecial integral Siegel threefold with residue field k of characteristic p, if b≥4 and 0≤a−b≤p−4, then H^i(X_k,ω(a,b)(−D))=0 for i>0. The lower boundary of each displayed weight range is included. The level is neat and prime to p, and the finite field may be extended without changing the conclusion.

(CG20, Theorem 5.1(3) and proof, pp. 22–24, CG20 line 931).

A proof route is to use the length-3 Lan–Suh representative and its explicit weight formula. Choose integral α,β,t realizing (a,b) and check dominance, positivity and p-smallness. Translate W into ω and read the cohomological shift i−ℓ(w).

*Needs:* §5.3.

**Checks.**

- Check the endpoints in b≥4 and 0≤a−b≤p−4 and reject weights one step beyond the p-small bound.

### 5.7 Serre duality and the dual Siegel weight

For a smooth proper toroidal Siegel threefold in characteristic zero, or in characteristic p with 0≤a−b≤p−1 so the symmetric-power dual identification is valid, the Serre dual of ω(a,b) is ω(3−b,3−a)(−D), and H^i_can(ω(a,b))^∨≃H^(3−i)_sub(ω(3−b,3−a)). The normalized Hecke equivariance includes inverse double cosets and the determinant/cyclotomic twist from CG20 Appendix A.3.2. For larger weights use the actual divided-power dual rather than this symmetric-power formula.

(CG20, §5.3, pp. 30–31; Appendix A.3.2, pp. 86–88, CG20 line 1209).

A proof route is to use the logarithmic Kodaira–Spencer formula ω_X≃det(E)³(−D). Dualize Sym^(a−b) only under the indicated factorial-invertibility bound. Apply coherent Serre duality and transpose the geometric normalized correspondence, retaining its twist.

*Needs:* §1.6; §3.9; §4.1; AutomorphicBundles B4.

**Checks.**

- The dual weight transformation is involutive; the same symmetric-power formula is not accepted beyond the small-weight range.

### 5.8 Mod-p singular-weight vanishing

On the hyperspecial Siegel threefold over k, H²_sub(ω(a,2))=H³_sub(ω(a,2))=0 for 4≤a≤p. For 3≤a≤(p+1)/2, H⁰_can(ω(a,3−a))=H³_sub(ω(a,3−a))=0. The canonical/subcanonical tags in the second assertion are different and essential.

(CG20, Corollary 5.8 and proof, pp. 30–31, CG20 line 1231).

A proof route is to substitute the first weight into Theorem 5.1(2) and check its p-small inequalities. Use Serre duality and Theorem 5.1 on the transformed singular weight for the second range. Keep the cohomological degree and boundary twist through each duality.

*Needs:* §5.5; §5.7.

**Checks.**

- Check a=4,p=5 in the first range and a=3,p=5 in the second; do not infer H⁰_sub=H⁰_can in the second range.

### 5.9 Large parallel twists and reduction of sections

Fix a dominant weight μ and a finite set of neat toroidal levels among X,X₀(Q),X₁(Q) for which relative subcanonical vanishing and an ample Hodge line on the minimal model hold. There is N(μ,levels) such that every parallel twist μ+t with t≥N has H^i_sub(X_k,ω_(μ+t))=0 for i>0. Consequently reduction H⁰_sub(O)→H⁰_sub(k) and the quotient map H⁰_sub(E)→H⁰_sub(E/O) are surjective, with their coefficient exact-sequence interpretation. No bound uniform over all levels is asserted.

(CG20, §6.1, p. 36; proof of Theorem 6.13, p. 43, CG20 line 1439).

A proof route is to push subcanonical coefficients to the minimal model using relative vanishing. Use Serre vanishing after ample Hodge twisting, and take the maximum bound over the fixed finite set of levels. Use the ϖ-adic and E/O coefficient long exact sequences, proper finite cohomology and Nakayama to get the two surjections.

*Needs:* §5.2; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; §1.4.

**Checks.**

- Both surjections must be derived from H¹ vanishing; a bound depending only on μ while Q varies is not claimed.

### 5.10 The EO Cousin computation

At hyperspecial p-level on the smooth Hilbert–Siegel toroidal model, filter by closures of Ekedahl–Oort strata of codimension at least i. For subcanonical locally free automorphic coefficients modulo pⁿ, n≥1, the Kempf Cousin resolution computes the sheaf, and its global-section complex computes RΓ once the following acyclicity is proved. The canonical-coefficient algebra action is obtained separately by coherent duality, not by assuming the same untwisted canonical Cousin acyclicity. Prove acyclicity using the affine stratum image on the minimal compactification, cofinal regular-sequence thickenings, Koszul resolutions and Lan relative vanishing. Affineness of the stratum itself is not assumed in place of this argument.

(BCGP21, Proposition 3.9.11, pp. 229–230, BCGP21 line 2991).

A proof route is to use the EO codimension, affine-image and regular-thickening results of §5.0. Apply the general Kempf resolution to the MCM coefficient and identify the support terms by cofinal Koszul thickenings. Use relative vanishing over the affine minimal stratum image to prove the required term acyclicity.

*Needs:* SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; §5.2; ShimuraCompactifications C3.3–C3.10 and C5.

**Checks.**

- The cofinal thickenings and regular sequences are checked, rather than equating set-theoretic codimension with a chosen complete intersection.

### 5.11 Injecting the Cousin complex into the interior

For the preceding EO filtration, restriction of every Cousin term of a subcanonical coefficient to the open Shimura variety is injective, provided the boundary equation is a non-zero-divisor on every relevant regular-sequence quotient. Verify this using that no associated component of any chosen Cohen–Macaulay regular-sequence thickening is contained in the boundary and the Cohen–Macaulay thickening argument. The omitted geometric verification is a geometric target of §5.0. This is a termwise detection statement, not an assertion that global coherent cohomology injects into open cohomology in every degree.

(BCGP21, Lemma 3.9.12 and its proof, p. 230, BCGP21 line 3057).

A proof route is to express the Cousin term as the filtered colimit of Ext groups for the regular thickenings. Prove boundary regularity on each quotient from the geometric non-containment and CM hypotheses. Localize at the boundary equation and use the resulting injection in every term.

*Needs:* §5.10; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21.

**Checks.**

- Restriction of an arbitrary coherent cohomology group is not substituted for the termwise injection.

### 5.12 Hecke maps on the EO Cousin complex

For a prime-to-p Hecke correspondence preserving each EO stratum, coherent pullback and finite-duality upper shriek induce compatible maps on the Ext systems defining the Cousin terms, hence a map of Cousin complexes. Use pulled-back regular sequences, the explicit finite duality formula and cofinal systems of powers to obtain compatibility with the Cousin differential. These maps agree with the derived global Hecke action on the interior.

(BCGP21, Lemma 3.9.13 and Remark 3.9.14, pp. 230–231, BCGP21 line 3033).

A proof route is to pull back the EO regular sequences and check the finite-flat or duality hypotheses for both legs. Construct the maps on local Ext/Koszul representatives, with cofinal powers when generators change. Use the natural maps of ordinary local-cohomology support sequences and their Ext/Koszul representatives to prove compatibility with incidence differentials and augmentation; compare on the interior. BP26’s completion/compact-support filtration is a separate construction.

*Needs:* §5.10; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; AlgebraicModuliForArithmeticGeometry §7.5 (the boundary fundamental-class contract); SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21.

**Checks.**

- A map on Cousin terms alone is insufficient; the incidence/boundary differentials must commute.

### 5.13 Integral prime-to-p Hecke relations at hyperspecial level

For the BCGP21 Hilbert–Siegel models with p split completely in F and K_p=∏_(v|p)GSp₄(O_(F_v)), prime-to-p Hecke operators act through the abstract integral Hecke algebra on RΓ of canonical and subcanonical automorphic coefficients. For the G₁ quotient model impose p∤#Δ(Kᵖ) and use the compactified direct-factor descent of §5.0. The integral algebra relations are detected termwise on the EO Cousin complex by restriction to the interior. Arbitrary p-level integral relations are outside this statement.

(BCGP21, Proposition 3.9.15 and Remark 3.9.16, pp. 231–232, BCGP21 line 3067).

A proof route is to on the open Shimura variety use finite étale correspondences and the known convolution relations. Use termwise interior injection to prove those same relations on the integral Cousin complex. Pass from the modulo-pⁿ models through derived formal completion to RΓ. Obtain the canonical-coefficient result by duality using the actual integral dual coefficient (divided powers where required), and descend to G₁ only under the explicit component-group condition.

*Needs:* §5.12; §5.11; §3.13; SmoothRepresentationsOfLocalGroups SR.1; SchemeAndStackFoundations §§4.8–4.10; DeformationAndDerivedPatchingAlgebra §§7.1–7.9.

**Checks.**

- The p-level must remain hyperspecial; equality after tensoring with E alone is inadequate.

### 5.14 Localized coherent perfect complexes

Assume a commuting Hecke-algebra action on C_n^∨ has been supplied (for the integral geometric application use §5.13, not merely the individual Layer 3 operators). Let T_n be its finite A_n-algebra image in End_D(C_n^∨). For a maximal ideal m, its Artinian local-factor idempotent splits C_n^∨ into a perfect summand C_(n,m)^∨ and its complement, with H^i(C_(n,m)^∨)=H^i(C_n^∨)_m. The dual chain summand localizes at the transposed Hecke ideal, with character twists transported explicitly. This is not localization at an arbitrary prime by an idempotent over an arbitrary base.

(CG18, §7.2, p. 400, CG18 line 4139).

A proof route is to use finiteness of derived endomorphism groups of a perfect finite-coefficient complex to get finite T_n. Apply the imported Artinian idempotent decomposition and perfect retract theorem. Identify cohomology and transport the dual action via the transpose pairing.

Its API is:

- Produce the local-factor idempotent and its perfect image.
- Cohomology of the summand is the ordinary T_n-localized cohomology.
- The dual summand uses the ideal pulled back by transpose and the specified central twist.
- Local-factor projectors sum to identity and are mutually orthogonal; the resulting perfect decomposition is functorial for maps commuting with T_n.
- A Hecke-equivariant derived equivalence of perfect models identifies their local factors and the §2.5 comparisons whenever the idempotents correspond.

*Needs:* Mathlib `CochainComplex.isKProjective_of_projective` and `CochainComplex.IsKProjective.Qh_map_bijective`; DeformationAndDerivedPatchingAlgebra §§7.1–7.9; IntegralHeckeAndGaloisDeterminants §§2.2–2.3; §5.13.

**Checks.**

- For T_n=A_n×A_n acting on C⊕D, the first maximal factor selects C.
- An ideal outside the support gives the zero perfect complex.
- Over Z, localization at (p) is not in general obtained from an idempotent in Z.
- The localization projector is an endomorphism in the derived category and is represented up to homotopy.

### 5.15 Non-Eisenstein coherent localization

Use IntegralHeckeAndGaloisDeterminants §§3a–3b’s Galois-type/non-Eisenstein predicates for the normalized geometric Hecke algebra: after finite residue-field extension the spherical degree-four polynomials agree with a continuous absolutely irreducible residual representation. When the application requires a representation into GSp₄ with specified multiplier, retain its alternating form and multiplier as additional hypotheses. Transport residual systems through the actual coefficient-normalization algebra map and transpose involution; generic residual polynomial transport is imported from IntegralHeckeAndGaloisDeterminants §§3a–3b.

(BCGP21, §3.10, p. 236; CG20 §7.2, pp. 52–55).

A proof route is to pull the imported residual polynomial system through the geometric algebra identification. Extend the residue field when needed and retain absolute irreducibility and the symplectic multiplier. Compare ideals on dual cohomology via the transposed geometric operators and their cyclotomic twist.

*Needs:* §4.3; §5.14; IntegralHeckeAndGaloisDeterminants §§3a.1–3a.2, 3b.1–3b.2; ArithmeticGaloisRepresentations §§1.1–1.2, 1.7–1.11.

**Checks.**

- An arbitrary GL₄ residual witness does not itself supply a symplectic form or a GSp₄ multiplier.

### 5.16 Congruence localization of complex coherent cohomology

Assume O has characteristic-zero fraction field E, fix a finite commutative O-Hecke image T acting on a finite O-module lattice M_O, and choose a field embedding E→ℂ. Put M_C=M_O⊗_Oℂ through this embedding. For a residual maximal ideal m, define M_(m,C) as the sum of the generalized characteristic-zero Hecke eigenspaces whose integral characters reduce to m after passing to a common finite coefficient extension. This is (M_O)_m⊗_O C for a finite integral lattice with that action, through the product decomposition of T⊗E. A maximal ideal of T⊗C alone does not encode residual congruence.

(P20, §15.2.3, p. 108, P20 line 4919).

A proof route is to use the finite integral algebra and its local factor at m. Decompose its generic fibre into generalized character factors, allowing finite field extension. Compare with localization of the integral lattice and scalar extension to C.

Its API is:

- A characteristic-zero eigenspace lies in M_(m,C) exactly when its integral character reduces to m.
- Compatible finite stable lattices give the same generic localized summand.
- Finite extension of O and compatible embeddings transport the congruence summand as expected.
- A map commuting with the fixed finite integral Hecke image preserves each residual congruence summand and respects identity and composition.
- The residual local-factor projectors are orthogonal and sum to identity; retain generalized generic eigenspaces without assuming semisimplicity.

*Needs:* §5.14; §5.15; IntegralHeckeAndGaloisDeterminants §§2.2–2.3.

**Checks.**

- Take T=O[t]/(t(t−ϖ)), with generic characters t↦0 and t↦ϖ acting on E⊕E. Both reduce to m=(ϖ,t); hence M_(m,C)=C⊕C, although T⊗C has two distinct maximal ideals.
- If no character reduces to m the complex localized space is zero.
- Localizing only at one maximal ideal of T⊗C can discard a second congruent characteristic-zero character.
- The residual ideal and chosen embeddings must remain visible in the notation.

### Examples

Verification on ramified or quotient models is an explicit obligation, not a consequence of the definition alone.

A canonical sheaf without the positive twist is outside the theorem; a subcanonical coefficient at n=0 is inside.

The source’s relative coefficient/logarithmic splitting theorem is an explicit extension request, not inferred from an ordinary de Rham comparison.

Check the endpoints in a≥3 and 2≤a−b≤p−2 and reject weights one step beyond the p-small bound.

Check the endpoints in a+b≥6 and 2≤a−b≤p−2 and reject weights one step beyond the p-small bound.

Check the endpoints in b≥4 and 0≤a−b≤p−4 and reject weights one step beyond the p-small bound.

The dual weight transformation is involutive; the same symmetric-power formula is not accepted beyond the small-weight range.

Check a=4,p=5 in the first range and a=3,p=5 in the second; do not infer H⁰_sub=H⁰_can in the second range.

Both surjections must be derived from H¹ vanishing; a bound depending only on μ while Q varies is not claimed.

The cofinal thickenings and regular sequences are checked, rather than equating set-theoretic codimension with a chosen complete intersection.

Restriction of an arbitrary coherent cohomology group is not substituted for the termwise injection.

A map on Cousin terms alone is insufficient; the incidence/boundary differentials must commute.

The p-level must remain hyperspecial; equality after tensoring with E alone is inadequate.

The localization projector is an endomorphism in the derived category and is represented up to homotopy.

An arbitrary GL₄ residual witness does not itself supply a symplectic form or a GSp₄ multiplier.

The residual ideal and chosen embeddings must remain visible in the notation.

### Dependencies

AlgebraicModuliForArithmeticGeometry §7.5 (the boundary fundamental-class contract); ArithmeticGaloisRepresentations §§1.1–1.2, 1.7–1.11; AutomorphicBundles B4; CrystallineCohomology CR.5.1–CR.5.4; CrystallineCohomology CR.5; AutomorphicBundles B3.BGG (the coefficient splitting contracts); DeformationAndDerivedPatchingAlgebra §§7.1–7.9; IntegralHeckeAndGaloisDeterminants §§2.2–2.3; IntegralHeckeAndGaloisDeterminants §§3a.1–3a.2, 3b.1–3b.2; LanglandsParameterStacks LP3.0; SchemeAndStackFoundations §§2.6–2.8, 2.18–2.21; SchemeAndStackFoundations §§4.8–4.10; ShimuraCompactifications C3.3–C3.10 and C5; ShimuraCompactifications C4.1–C4.11; ShimuraCompactifications C5.19–C5.21, C5.31; ShimuraCompactifications C5.19–C5.21, C5.31; §3.0b; SmoothRepresentationsOfLocalGroups SR.1. Earlier in this layer use the individual prerequisites displayed above.

## Layer 6: coherent cohomology and automorphic forms

### 6.1 Interior coherent cohomology and towers

For a canonical coefficient F_can with subcanonical F_sub=F_can⊗I_D, define H̄^i(X,F)=im(H^i(X,F_sub)→H^i(X,F_can)). Define H̃^i_* as the filtered colimit over neat levels and compatible fans, with pullback transition maps. This is the image of the boundary-ideal map; it is not defined as compactly supported topological cohomology. The underlying additive image uses the pinned Scheme.Modules.cohomologyFunctor.

(CG20, §5.3, pp. 24–25; P20 §15.2.3, p. 108, CG20 line 994).

A proof route is to apply the existing cohomology functor to the boundary ideal inclusion. Take its image as a coefficient submodule; on underlying additive groups use Tau Ceti’s cohomology functor. Use Hecke compatibility and exact filtered colimits to give the image tower its action.

Its API is:

- A canonical class is interior exactly when it has a subcanonical lift.
- Level pullbacks preserve the image and give the direct-limit action.
- Commuting coefficient Hecke squares induce endomorphisms of H̄^i.
- The image is an O-submodule (or complex subspace), with its canonical inclusion; it is the range rather than the source modulo an unspecified kernel.
- A commuting canonical/subcanonical square induces a unique image map; these maps preserve identity, composition, addition and scalars.

*Needs:* §1.4; §4.4; Tau Ceti `TauCeti.AlgebraicGeometry.Scheme.Modules.cohomologyFunctor`.

**Checks.**

- If D is empty, H̄^i=H^i_can.
- If the degree-i boundary-ideal map is zero, its interior image is zero.
- In degree zero, cohomologyZeroEquiv identifies the image with sections admitting a subcanonical lift.
- The image definition is tested independently of the still-unproved automorphic comparisons.

### 6.2 The canonical-extension growth resolution

Let (G,X) be a Shimura datum with G connected as an algebraic group over ℚ, satisfying Su’s condition that the maximal Q-split central torus A_G is also maximal R-split in Z_G, K neat, Σ a smooth toroidal fan and V a finite-dimensional holomorphic P_h-representation. The logarithmic differentiably-moderate-growth Dolbeault complex is a fine resolution of V_can on the toroidal compactification; its global sections identify with the relative (p_o,K_o) Chevalley–Eilenberg complex of C∞_dmg(G)^K⊗V. The central A_G factor and the finite-adelic action on V_o are retained.

(Su24, Propositions 3.14 and 3.16, pp. 36–38; conventions §1.1, pp. 6–10, Su24 line 1505).

A proof route is to identify the canonical coefficient on a toroidal chart using its holomorphic frame and logarithmic boundary coordinates. Use the growth Dolbeault lemma and fine-sheaf partitions of unity; the generic analytic input is requested from AS.5. Compare the Dolbeault differential with the imported relative Chevalley–Eilenberg differential and track finite-adelic coefficient transport.

*Needs:* §4.4; AutomorphicFormsOnReductiveGroups §§1.1–1.8, 6.1–6.2; AutomorphicSpectralTheory §§5.1–5.7a; AutomorphicBundles B3.

**Checks.**

- The theorem concerns canonical extension, not subcanonical extension; check the central splitness and P_h rather than full g cohomology.

### 6.3 Su’s automorphic comparison

Under the preceding Su hypotheses, H^i(X_(K,Σ),V_can)≃H^i(p_o,K_o;A(G)^(A_G(R)^0K)⊗V), naturally in V and finite-level Hecke operators. At the tower level the isomorphism is G(A_f)-equivariant with the modified coefficient V_o on which the central A_G component acts inversely. The map is induced by inclusion of automorphic forms into uniformly moderate growth functions. This theorem does not identify all canonical cohomology with cusp cohomology.

(Su24, Proposition 4.1, p. 38; Theorem 5.7 and proof, pp. 54–55, Su24 line 1609).

A proof route is to import the regularization quasi-isomorphism C∞_umg→C∞_dmg and its coefficient compatibility from AS.5. Use Fin_J acyclicity, the finite-dimensional central-annihilator ideal and the relative cohomology spectral sequences as in Lemmas 5.1–5.5. Compose with the canonical-extension growth resolution and check the tower action on V_o.

*Needs:* §6.2; AutomorphicSpectralTheory §§5.1–5.7a.

**Checks.**

- All automorphic forms appear on the right; replacing A(G) by A_cusp(G) is not accepted.

### 6.4 Harris’s cusp and interior comparison

In the characteristic-zero toroidal Siegel setting, relative (p^−,K_h)-cohomology of cuspidal automorphic forms maps injectively into interior coherent cohomology, and interior cohomology lies in the image of the L² automorphic comparison in canonical cohomology. The cusp map is an isomorphism in degrees 0 and 3 for the Siegel threefold. The totally real product version gives cusp→interior→L²-image inclusions, with central character and multiplicities retained. The comparison diagram uses a separate cusp/subcanonical map; Su’s theorem alone does not supply it.

(CG20, Theorem 5.2, p. 25; BCGP21 proof of Theorem 3.10.1, pp. 239–240, CG20 line 1038; H90, Theorems 2.4.4 and 2.7, pp. 57–58; Proposition 2.7.2 and (3.0.1), p. 59).

A proof route is to construct the rapid-decay and slow-growth Dolbeault comparisons using H90 Theorems 2.4.1 and 2.4.4, pp. 56–57, H90 line 2203. Use H90 Theorem 2.7, p. 58, H90 line 2242, and the harmonic/relative-cohomology identification (3.0.1), p. 59, for the injection and L²-image containment. Apply Proposition 2.7.2, p. 59, H90 line 2268, in end degrees; retain the precise full-group and product conventions as AutomorphicFormsOnReductiveGroups §§6.4–6.6.

*Needs:* §6.3; §6.1; AutomorphicSpectralTheory §§4.1–4.5; AutomorphicFormsOnReductiveGroups §§1.1–1.8, 6.1–6.2.

**Checks.**

- Do not turn the L²-image containment into equality with the entire canonical space, and do not discard residual multiplicity.

### 6.5 Cuspidal, L² and tempered image subspaces

Define H^i_cusp and H^i_(2) inside canonical coherent cohomology as images of the corresponding relative-cohomology maps. Define the tempered part by first summing the relevant cuspidal or discrete L² irreducible automorphic summands whose archimedean factors are essentially tempered, then applying the comparison map. Keep these images distinct from the source relative cohomology and from H̄^i; a quotient map can have a kernel.

(CG20, §5.3, pp. 25–26, CG20 line 1027).

A proof route is to use the spectral owner’s discrete automorphic summands with their finite multiplicities. Form the specified relative cohomology and image in canonical cohomology. Select essentially tempered archimedean factors before mapping; compare nested image subspaces.

Its API is:

- A class belongs exactly when it is the image of a relative class in the specified automorphic source.
- Cusp images lie in L² images, and tempered cusp images lie in tempered L² images.
- Each image is stable under the compatible finite Hecke action.
- Use the linear range of the named relative-cohomology comparison map with its kernel quotient; finite sums and scalars stay in the image.
- Compatible level changes preserve each cusp, L² and tempered image and commute with inclusion into canonical cohomology.

*Needs:* §6.4; AutomorphicSpectralTheory §§4.1–4.5; AutomorphicFormsOnReductiveGroups §§1.1–1.8, 6.1–6.2.

**Checks.**

- The zero automorphic source has zero image.
- A kernel element of the comparison source is not a nonzero canonical coherent class.
- In end degrees the cusp image agrees with interior cohomology by Harris’s comparison, without asserting it equals all canonical cohomology.
- The notation must say whether cusp, L² or tempered images are intended.

### 6.6 Isotypic contribution to coherent cohomology

For an irreducible finite-adelic representation π_f in the discrete automorphic source, define its degree-i coherent contribution as the image of its multiplicity space tensored with H^i(p^−,K_h;π_∞⊗V)⊗π_f in the specified coherent image. Say π contributes when this image is nonzero. At a finite level replace π_f by π_f^K. A spectral isotypic multiplicity is counted explicitly; it is not silently set to one.

(CG20, Proof of Theorem 5.5, p. 28; Theorem 5.6, p. 29; BCGP21 Theorem 3.10.1, p. 236, CG20 line 1141).

A proof route is to decompose the discrete source with its actual multiplicity spaces. Apply relative cohomology on each admissible coefficient summand and the coherent comparison map. Define contribution using its image and prove the finite-level invariant formula under characteristic-zero descent.

Its API is:

- The finite-level contribution has π_f^K in place of π_f.
- Retain the spectral multiplicity space in every summand.
- Contribution is equivalent to nonzero image, not merely occurrence in the spectral decomposition.
- Its image is the source summand divided by the actual comparison kernel; the dimension equals the source dimension only if that restriction is injective.
- Finite-level maps and Hecke operators preserve the contribution and its multiplicity space through the same spectral comparison.

*Needs:* §6.5; AutomorphicSpectralTheory §§4.1–4.5; SmoothRepresentationsOfLocalGroups SR.3.

**Checks.**

- If π_f^K=0 the finite-level contribution is zero.
- A one-dimensional relative cohomology and multiplicity m give m copies of π_f^K before any comparison kernel.
- A spectral summand with zero relative cohomology in degree i has zero degree-i contribution.
- A representation present in L² with zero relative cohomology does not contribute.

### 6.7 Algebraic and analytic coefficient conventions

For GSp₄, W_(a,b;c)≃V_(−b,−a;a+b+2c) as Hecke-linearized coefficient bundles over C, with the declared finite-adelic central transport. Changing the central parameter preserves the underlying holomorphic bundle but not its full Hecke linearization. The comparison is made on G(R)×G(A_f) with the correcting central factor; the naive compact-dual G(Q)-equivariant multiplication by ν(g)⁻¹ is not valid without this correction.

(CG20, Definition 5.3 and Lemma 5.4, pp. 26–27, CG20 line 1089).

A proof route is to compute the rank-two standard and determinant coefficients from the de Rham homology sequence. Compare the highest weights on the compact dual. Insert the finite-adelic norm/sign factor that corrects the rational central action, and verify the Hecke cocycle.

*Needs:* §1.3; §4.4; AutomorphicBundles B2.

**Checks.**

- The underlying trivial central twist may have nontrivial Hecke action; test a central rational scalar.

### 6.8 Holomorphic cusp eigensystems

For Ω^(k,r)=ω(k+r,r), k≥0 and r≥2 over C, subcanonical H⁰ is the multiplicity-counted sum of cuspidal finite-adelic representations with holomorphic discrete-series or holomorphic-limit archimedean factor. In P20’s coordinates the factor has parameter (1−k−r,2−r;k+2r). A simultaneous unramified Hecke eigencharacter determines a cuspidal automorphic summand after choosing a nonzero spectral projection; it need not determine a unique global representation before multiplicity-one input. In Scholze’s symplectic/unitary scalar-weight setting, with k>n in the totally real symplectic case and k≥n in the CM unitary case of Corollary V.1.7, the Petersson adjoint relation makes the commuting spherical Hecke image a product of copies of C.

(P20, §5.3, pp. 24–25; CG20 proof of Proposition 6.8, p. 39; Sch15 Corollary V.1.7, manuscript p. 83, Sch15 line 3089 (published pp. 1035–1036)).

A proof route is to identify holomorphic cusp functions with subcanonical sections by the degree-zero cusp comparison. Use the spectral decomposition with the holomorphic archimedean coefficient and its multiplicity. For scalar weights use the positive Petersson pairing, closure of adjoints in the Hecke algebra and simultaneous diagonalization; project an eigencharacter to a cuspidal summand.

*Needs:* §6.4; §6.6; §6.7; AutomorphicSpectralTheory §§4.1–4.5; AutomorphicFormsOnReductiveGroups §§6.3–6.7.

**Checks.**

- The r=2 limit case uses the same holomorphic cusp dictionary, and no global multiplicity-one conclusion is inferred merely from an eigenform.

### 6.9 Products and relative-cohomology degree counts

For the finite product of archimedean pairs of Res_(F/Q)GSp₄ and tensor-product coefficient V, relative cohomology of a discrete automorphic tensor factor decomposes by the Künneth sum over tuples of nonnegative degrees with total i. When each local factor has a single one-dimensional coherent group in degree 0 or 1, the global degree-i multiplicity counts exactly those i-element subsets of the degree-one choices. Retain full compact-group component actions before taking invariants.

(BCGP21, Proof of Theorem 3.10.1, pp. 239–240, BCGP21 line 3360).

A proof route is to identify the product relative cochain complex with the tensor product of the local complexes over C. Apply the field Künneth theorem and the imported local coherent-degree calculation. Take the actual compact component-group invariants; use the specified full-group calculation of AutomorphicFormsOnReductiveGroups §§6.4–6.6.

*Needs:* AutomorphicFormsOnReductiveGroups §§1.1–1.8, 6.1–6.2; AutomorphicFormsOnReductiveGroups §§6.3–6.7; §6.6.

**Checks.**

- For d factors with two choices in their respective packets, degree one counts d local changes only when the component-group constraints permit all those changes.

### Examples

The image definition is tested independently of the still-unproved automorphic comparisons.

The theorem concerns canonical extension, not subcanonical extension; check the central splitness and P_h rather than full g cohomology.

All automorphic forms appear on the right; replacing A(G) by A_cusp(G) is not accepted.

Do not turn the L²-image containment into equality with the entire canonical space, and do not discard residual multiplicity.

The notation must say whether cusp, L² or tempered images are intended.

A representation present in L² with zero relative cohomology does not contribute.

The underlying trivial central twist may have nontrivial Hecke action; test a central rational scalar.

The r=2 limit case uses the same holomorphic cusp dictionary, and no global multiplicity-one conclusion is inferred merely from an eigenform.

For d factors with two choices in their respective packets, degree one counts d local changes only when the component-group constraints permit all those changes.

### Dependencies

AutomorphicBundles B2; AutomorphicBundles B3; AutomorphicFormsOnReductiveGroups §§1.1–1.8, 6.1–6.2; AutomorphicFormsOnReductiveGroups §§6.3–6.7; AutomorphicSpectralTheory §§4.1–4.5; AutomorphicSpectralTheory §§5.1–5.7a; SmoothRepresentationsOfLocalGroups SR.3; Tau Ceti `TauCeti.AlgebraicGeometry.Scheme.Modules.cohomologyFunctor`. Earlier in this layer use the individual prerequisites displayed above.

## Layer 7: siegel chambers and singular weights

### 7.0 Coefficient transport, transfer and the conditional contract for packets

Apply AutomorphicFormsOnReductiveGroups §§6.3–6.7 on the actual coefficient realization of §6.7. Its balanced compact coordinates and the CG20 W/V coordinates are related by the coefficient intertwiner, the chosen dual and the central Hecke twist. With CG20 notation W_(a,b;c) and w=−(a+b+2c), identify the contributing representation's infinitesimal character as (a−1,b−2;−w), and the spin-transfer orbit as

    ((a+b−3−w)/2, (a−b+1−w)/2, (−a+b−1−w)/2, (−a−b+3−w)/2).

For c=3−a−b this is (3/2,3/2−(b−2),3/2−(a−1),3/2−(a+b−3)). The map has source the realized discrete GSp₄ archimedean parameter and target the GL₄ spin infinitesimal-character orbit; it does not claim a new construction of local Langlands. The central cancellation is checked through the intertwiner before applying a balanced convention from a supplier. (CG20 Theorem 5.6(1)–(2), p. 29, CG20 line 1182; Remark 5.12, p. 34, CG20 line 1381.)

For the conditional global conclusions fix a residual symplectic degree-four system and the set of excluded places. State the following hypotheses as properties of its actual automorphic occurrences, not arbitrary predicates: (a) the discrete GSp₄ representations with the specified holomorphic or generic limit at infinity lie in the general, Yoshida or Saito–Kurokawa types, with the full component-group multiplicity rule; (b) every excluded type has a compatible reducible spin Galois system with the same normalized Frobenius polynomial and multiplier; (c) the purity and comparisons of local packets identify which of the general-type packets remains at the stated infinity parameter; (d) the surviving stable general-type parameter has trivial relevant global component group, and its discrete multiplicities are given by the character formula m(π)=#S⁻¹∑_(s∈S)ε(s)∏_v⟨s,π_v⟩. Here S is that parameter’s component group, ε its global sign character, and the labels of the local packets are characters normalized to 1 at the identity. Require also the cuspidality criterion for the essentially tempered discrete occurrences used in this comparison. For a totally real product use the same global formula and the exact full-group local packets at every place. Then S={1} makes the formula equal 1 for every permitted member of these packets. Non-Eisenstein irreducibility eliminates the reducible types, and the two local coherent members at a place with l_v=2 therefore pair with the same finite part and the same multiplicity. This derives the pairing from classification and the character formula rather than assuming it. This is the exact conditional pairing within packets used in Layer 8. (P20 Proposition 15.2.4.1, pp. 109–110, P20 line 4986; CG20 §7.2, pp. 54–55; BCGP21 Corollary 3.10.5, p. 237, BCGP21 line 3302.)

For the boundary proof use WeightsInEtaleCohomology R34.6’s classical and Hilbert rank-two realizations, with the exact extension contract below for the weight-one and unrestricted Hilbert polynomial ranges. Compare their Frobenius/dual normalization with SmoothRepresentationsOfLocalGroups SR.4.5 and the coefficient intertwiner of §6.7. For each of the Eisenstein packets use the direct sum of its two class-field characters. This comparison identifies the full lower-rank polynomial and its central character before forming the degree-four boundary system; no second rank-two realization is constructed. (BCGP21 proof of Lemma 3.10.7, p. 238, BCGP21 line 3348; CG20 Lemma 7.10, pp. 52–53.)

*Needs:* Layers 4–6; AutomorphicFormsOnReductiveGroups §§6.3–6.7; IntegralHeckeAndGaloisDeterminants §§3a–3b; SmoothRepresentationsOfLocalGroups SR.4.5; ArithmeticGaloisRepresentations §§1.7–1.11 and 5.1–5.3; WeightsInEtaleCohomology R34.6. Classification, purity and multiplicity hypotheses (a)–(d) remain hypotheses on the global conclusions. The lower-rank polynomial comparison uses WeightsInEtaleCohomology R34.6 with its exact extension contract and uses no later roadmap.

**Checks.**

- At (a,b)=(4,2), c=−3 and w=0, the transfer multiset is {3/2,3/2,−3/2,−3/2}, with sum 0. At (5,2), w=1, it is {3/2,3/2,−5/2,−5/2}, with sum −2; changing the sign of w fails this second test.
- The supplied closed chambers give memberships {0,1} at (a−1,b−2)=(3,0), {1,2} at (1,−1), and all four at (0,0). The last parameter is compact-singular and cannot define a nondegenerate limit by membership alone.
- A direct sum of two nonzero two-dimensional representations has a proper two-dimensional invariant subspace. Its full degree-four characteristic polynomial cannot be that of an absolutely irreducible residual representation on every Frobenius after semisimplification, including in characteristic two.
- For two permitted real places with equal multiplicity m and finite invariant dimension d, the holomorphic contribution is md and the two single changes contribute 2md. For the trivial component group the character sum is 1; a nontrivial component group with a sign obstruction would require a separate character computation and is outside hypothesis (d).

### 7.1 Tempered coherent chamber vanishing

The tempered L²-image part of H^i_can(X_C,ω(a,b)) is zero unless (a−1,b−2;c) lies in C_i with the central coordinate ignored by the chamber inequalities. A tempered archimedean contributor is the discrete-series or limit representation π((a−1,b−2;−w),C_i). This constrains the tempered image, and does not assert the vanishing of arbitrary canonical coherent cohomology. This degree restriction uses the fixed Siegel Hodge pair and its specified extension across components, as in AutomorphicFormsOnReductiveGroups §6.6; it is conditional on that full-group transport and is not deduced from the general other-degree vanishing assertion in H90 Theorem 3.4.

(CG20, Theorem 5.5 and Theorem 5.6(3), pp. 28–29, CG20 line 1141; GK19, Remark 10.1.3, p. 962).

A proof route is to use the discrete L² decomposition and the imported local tempered coherent-cohomology calculation. Use the chamber condition to select the possible coherent degree. Apply the comparison map to obtain image vanishing; carry compact components as required by AutomorphicFormsOnReductiveGroups §§6.3–6.7.

*Needs:* AutomorphicFormsOnReductiveGroups §6.3; AutomorphicFormsOnReductiveGroups §§6.3, 6.7; §6.5; AutomorphicFormsOnReductiveGroups §§6.3–6.7; AutomorphicFormsOnReductiveGroups §§6.3–6.7.

**Checks.**

- At a singular wall more than one degree can occur; tempered image is not replaced by the full coherent group.
- Keep the Hodge-pair/full-group hypothesis: the published general other-degree vanishing claim is not an unconditional substitute.

### 7.2 Characteristic-zero singular-weight ranges

For the essentially tempered L²-image in characteristic zero, the limit families (a,2), a≥2; (a,3−a), a≥2; and (1,b), b≤1 have possible degrees given by their closed chamber memberships. Thus (a,2) allows degrees 0 and 1, while (a,3−a) allows degrees 1 and 2. The family (1,b), b≤1, allows degrees 2 and 3. Serre duality exchanges the first and third families. Any claim for full subcanonical or interior groups needs the corresponding cusp/interior or non-Eisenstein argument.

(CG20, §5.3, discussion after Theorem 5.6, p. 30, CG20 line 1209).

A proof route is to substitute the shifted weights into all four closed-chamber predicates. Retain all chambers containing a wall point. Translate through Serre duality and retain the specified automorphic image.

*Needs:* §7.1; §5.7.

**Checks.**

- At (a,b)=(2,1), the shifted pair (1,−1) belongs to C₁ and C₂, as the full family predicts.

### 7.3 Large singular-weight interior decomposition

For the Siegel threefold, choose R from the AutomorphicFormsOnReductiveGroups §6.6 singular classification and let k≥R−1 with parameter λ₁=−k−1<0, c=k+4. The interior H⁰ and H¹ for Ω^(k,2) decompose into holomorphic and generic archimedean-limit contributions, respectively, with their actual cuspidal multiplicities and a fixed central character. The local one-dimensionality in these two degrees is imported from AutomorphicFormsOnReductiveGroups §§6.3–6.7; the large-weight bound is −λ₁≥R. The full compact-group convention must be verified before asserting vanishing in every other degree.

(P20, §15.2.2.1–15.2.3.1, p. 108, P20 line 4919).

A proof route is to use the AutomorphicFormsOnReductiveGroups §§6.3–6.7 singular large-weight contract as reported in P20 Theorem 15.2.2.1; retain −λ₁≥R. H90’s regular all-root criterion is not this result. Use Harris’s interior comparison and the local holomorphic/generic one-dimensional groups. Keep the spectral multiplicity and compact component actions; only assert the two checked degrees.

*Needs:* §6.4; §6.9; AutomorphicFormsOnReductiveGroups §§6.3–6.7; AutomorphicFormsOnReductiveGroups §§6.3–6.7.

**Checks.**

- The inequality λ₁≥R with λ₁<0 is not accepted for positive R.

### Examples

At (2,1), (2,−1), (1,−2) and (−1,−2), the supplied chamber memberships are respectively C₀, C₁, C₂ and C₃. At (0,0) all four hold. On y=0 and x>0, both C₀ and C₁ hold; in particular (2,0) cannot be assigned a unique closed chamber.

For normalized coefficients w=a+b−6, the central infinitesimal character is 6−a−b.

For a=4,b=2 the normalized entries are the multiset {3/2,3/2,−3/2,−3/2}; switching Frobenius convention must be accompanied by the corresponding dual shift.

At a singular wall more than one degree can occur; tempered image is not replaced by the full coherent group.

At (a,b)=(2,1), the shifted pair (1,−1) belongs to C₁ and C₂, as the full family predicts.

The inequality λ₁≥R with λ₁<0 is not accepted for positive R.

The conclusion remains labeled conditional until the exact classification package and full-group archimedean input are supplied.

### Dependencies

AutomorphicFormsOnReductiveGroups §§6.3–6.7; SmoothRepresentationsOfLocalGroups SR.4; §7.0. Earlier in this layer use the individual prerequisites displayed above.

## Layer 8: boundary localization and cuspidal decomposition

### 8.1 The Siegel boundary nerve calculation

For the GSp₄/Q toroidal boundary in characteristic zero, specialize the Harris–Zucker nerve spectral sequence E₁^(r,s)=⊕_(rank(R)=r+1)H^s(Z(R),F|Z(R))⇒H^(r+s)(D,F|D). Its adelic E₁ terms are parabolically induced from products of lower-rank coherent cohomology and cohomology of the associated Levi locally symmetric spaces, with the finite component corrections and Kostant shifts of HZ01 (3.2.8)–Corollary 3.2.9. Use this geometry only for the Q case; the HZ hypotheses used here do not automatically extend to Res_(F/Q)GSp₄ for F≠Q.

(HZ01, §3.2, (3.2.4)–(3.2.8) and Corollary 3.2.9, pp. 62–63; CG20 Lemma 7.10 proof, pp. 52–53).

A proof route is to use the finite closed cover of the boundary by maximal-parabolic strata and its alternating restriction complex. Specialize the HZ induced-term formula, including Δ₀,R and Δ₁,R corrections. Identify the GL₂ and GL₁ factors controlling the unramified Hecke eigensystems; the induced-term comparison is proved on these strata using SmoothRepresentationsOfLocalGroups SR.2 and the lower-rank attachment of §7.0.

*Needs:* §4.4; §7.0; ShimuraCompactifications C3.3–C3.10 and C5; AutomorphicFormsOnReductiveGroups §4.1; SmoothRepresentationsOfLocalGroups SR.2.

**Checks.**

- No all-degree totally real boundary vanishing is inferred from this Q-specific specialization.

### 8.2 Non-Eisenstein boundary vanishing over Q

For the Siegel threefold over Q and a non-Eisenstein residual maximal ideal in the normalized degree-four Hecke convention, H^i(D_C,ω(a,b)|D)_m=0 for every i, for any dominant (a,b) with its canonical coefficient at a neat prime-to-p level, as stated immediately before CG20 Lemma 7.10. The boundary nerve terms give only reducible four-dimensional residual polynomial systems built from GL₂/GL₁ data, contradicting the absolutely irreducible witness. Consequently H^i_sub→H^i_can is an isomorphism at m in every degree.

(CG20, Lemma 7.10 and proof, pp. 52–53, CG20 line 2023).

A proof route is to compute the Hecke polynomial on every boundary E₁ term from its parabolic Levi factors. Use the compatible GL₂/GL₁ Galois systems and Frobenius recognition to show residual reducibility. Localize the nerve spectral sequence and then the boundary ideal long exact sequence.

*Needs:* §8.1; §5.15; ArithmeticGaloisRepresentations §1.8 and Layer 5; §7.0.

**Checks.**

- The all-degree isomorphism uses all-degree boundary vanishing, rather than just its H⁰ case.

### 8.3 The genus-two boundary Φ calculation

For Ω^(k,2) on a characteristic-zero Siegel toroidal compactification, push its boundary restriction to the compactified modular-curve boundary. For k>0 this is the elliptic coefficient ω^(k+2)(−cusps); for k=0 it is ω² without the cusp twist. In P20’s normalized Hecke convention the claimed boundary identity is T_(ℓ,2)=2T_ℓ. Prove the coefficient pushforward and compute the vector-weight Hecke normalization directly on the constant-term correspondence; the displayed scalar identity is a target of that calculation, not an input to residual recognition.

(P20, Proof of Corollary 15.2.3.1, pp. 108–109, P20 line 4939).

A proof route is to use the boundary Fourier–Jacobi constant term and identify the compactified elliptic coefficient. Distinguish the k=0 constant-term case from k>0. Compute the Hecke pull–trace on the boundary or verify a source with exactly this vector-valued normalization; the source of the numerical assertion is P20 p. 109.

*Needs:* §1.3; §4.1; ShimuraCompactifications C3.3–C3.10 and C5; AutomorphicBundles B5.

**Checks.**

- At k=0 a cusp twist is not silently added, and the factor 2 is not presumed invertible modulo p.

### 8.4 The boundary Satake polynomial factorization

On a Hilbert modular boundary component, the normalized degree-four spherical Hecke polynomial factors as the characteristic polynomial of ρ₂⊕(ρ₂⊗χ), for the appropriate boundary two-dimensional Galois representation and normalized character χ; include the Eisenstein decomposition into characters when the Hilbert form is Eisenstein. The four spin monomials must be distinct: diag(1,1,ϖ,ϖ), diag(1,ϖ,1,ϖ), diag(ϖ,1,ϖ,1), diag(ϖ,ϖ,1,1). Exact q-powers and χ are determined by the SmoothRepresentationsOfLocalGroups SR.4 normalization comparison, specified in the supplier contract, before invoking the factorization. Absolute irreducibility of the residual degree-four witness contradicts this full-polynomial equality by Chebotarev and Brauer–Nesbitt; a trace identity alone is not substituted in small characteristic.

(BCGP21, Proof of Lemma 3.10.7, pp. 238–239; P20 pp. 108–109, BCGP21 line 3327).

A proof route is to compute the Satake restriction to the Klingen Levi with the corrected four monomials. Match the lower-rank Hecke polynomial and central character, including normalized q-powers, to the Galois direct sum. Compare full characteristic polynomials on a dense Frobenius set and use semisimple recognition after residue-field extension.

*Needs:* §4.3; SmoothRepresentationsOfLocalGroups SR.4; §7.0; ArithmeticGaloisRepresentations §1.8 and Layer 5.

**Checks.**

- No division by 2 is used, and a repeated Satake monomial in the display is corrected before the comparison.

### 8.5 Degree-zero Hilbert–Siegel boundary vanishing

Let F be totally real, p totally split, K=K^p∏_(v|p)K_v with K^p neat and K_v hyperspecial, paramodular, Siegel parahoric, Klingen parahoric or Iwahori (BCGP21 Definition 3.3.3, pp. 204–205), κ=(k_v,l_v)_v with k_v≥l_v≥2 and k_v≡l_v mod 2, and normalized central diamond |·|². For a non-Eisenstein residual ideal, H⁰(D_C,ω_κ|D)_m=0. Decompose the minimal boundary into zero-dimensional and Hilbert modular pieces. The point contribution vanishes for nonparallel weights; the curve-type contribution vanishes unless the l_v are parallel, then has Hilbert weight (k_v). In the parallel scalar case use π_*O_D=O_∂ via π_*I_D=I_∂ and R¹π_*I_D=0. No positive-degree boundary vanishing is asserted.

(BCGP21, Lemma 3.10.7 and Remark 3.10.6, pp. 237–239; BR16 Theorem 1.12 and Proposition 1.14, pp. 10–12, BCGP21 line 3314).

A proof route is to compute the boundary coefficient pushforward by Fourier–Jacobi expansion, using the exact characteristic-zero weight restriction. Handle the scalar parallel case with the projection formula and the boundary ideal exact sequence. Use the boundary Satake reducibility statement to eliminate every residual eigensystem at m.

*Needs:* §5.2; §5.15; §8.4; ShimuraCompactifications C3.3–C3.10 and C5.

**Checks.**

- The output is H⁰ boundary vanishing over C; it does not supply integral or all-degree vanishing.

### 8.6 Localized degrees zero and one

In the totally real setting of §8.5, H⁰_sub→H⁰_can is an isomorphism after localization, and H¹_sub→H¹_can is injective with image H̄¹. Thus H^i_sub,m≃H̄^i_m for i=0,1. This does not identify H¹_sub,m with all H¹_can,m. For the Q case, all-degree boundary vanishing gives H^i_sub,m≃H^i_can,m in every degree. Apply these statements also to P20’s large Ω^(k,2) range with the corrected localized H¹ notation.

(BCGP21, Proof of Theorem 3.10.1, p. 239; P20 Corollary 15.2.3.1 and proof, pp. 108–109, BCGP21 line 3360).

A proof route is to localize the long exact sequence for 0→F_sub→F_can→F|D→0. Use only the vanishing degrees actually proved; at H¹ the missing H¹(D) remains on the right. Identify the injection image with the defining interior image and compose with the automorphic comparison.

*Needs:* §8.5; §8.2; §6.1; §5.16.

**Checks.**

- A nonzero H¹ boundary class is consistent with the totally real conclusion; surjectivity onto all H¹_can is not inferred.

### 8.7 Cuspidal exhaustion for all rational singular weights

For GSp₄/Q, weight (a,2) with a≥2, neat prime-to-p level and a non-Eisenstein residual ideal, assume the exact classification, purity, full-group local coherent calculation and multiplicity hypotheses for packets (a)–(d) of §7.0. In degrees j=0,1, localized interior cohomology is exactly the multiplicity-counted cuspidal sum with the holomorphic (j=0) or generic (j=1) archimedean limit and the same finite level and residual congruence. Boundary vanishing identifies this with localized subcanonical cohomology. No large-weight lower bound on a is required for this conditional rational result.

(CG20, Proof of Theorem 7.11, pp. 54–55, using Theorem 5.2 and Theorem 5.6, CG20 line 2105).

A proof route is to place interior cohomology between the injective cusp image and the L² relative-cohomology source. Exclude nongeneral-type L² contributions with the residual Galois witness; purity makes the remaining archimedean factor essentially tempered, and Wallach makes the global representation cuspidal. The same cuspidal sum bounds both sides. Use the full compact-group degree calculation and actual multiplicity spaces to identify degrees zero and one.

*Needs:* §8.2; §6.4; §7.1; §7.0 (the conditional contract for packets); AutomorphicFormsOnReductiveGroups §§6.3–6.7.

**Checks.**

- The conditional conclusion includes a=2; do not replace it by the separate large-weight theorem.

### 8.8 Localized coherent cohomology and cuspidal representations

Let F be totally real and let p be totally split. Use the model and reasonable level of §8.5, weights κ=(k_v,l_v) with k_v≥l_v≥2 and k_v≡l_v modulo 2, the |·|² central-diamond subspace and a non-Eisenstein residual ideal as in §5.15. Then for i=0,1 there is a Hecke-equivariant injection from the multiplicity-counted sum of π_f^K into H^i_sub(X_C,ω_κ)_m, where π is cuspidal, congruent to m, holomorphic at real v with l_v>2 and nonholomorphic at exactly i places among those with l_v=2. For degree zero the holomorphic cusp dictionary gives equality. For degrees zero and one, the large-gap assumptions k_v−l_v>R and either l_v=2 or l_v>R give equality with the stated cuspidal sum. Multiplicity-free indexing additionally uses the conditional classification package; no unconditional multiplicity-one statement is claimed.

(BCGP21, Theorem 3.10.1 and Remark 3.10.4, pp. 236–237; proof pp. 239–240, BCGP21 line 3269).

A proof route is to use the cusp→interior comparison and the localized subcanonical/interior identification. Apply local coherent-degree calculations and Künneth with finite-level invariant spaces. Use the precise large-weight comparison for surjectivity, preserving multiplicity spaces until the separate classification input is imposed.

*Needs:* §8.6; §6.4; §6.9; §7.3; §5.16.

**Checks.**

- The right-hand coefficient level, central character and residual congruence are fixed throughout; degree-one equality requires the large-gap assumptions.

### 8.9 Conditional coherent dimension equality

Assume the large-gap hypotheses of §8.8 and the conditional pairing and multiplicity formula for general-type packets. Let l₀ be the number of real places with l_v=2. Then dim_C H¹_sub(X_C,ω_κ)_m=l₀·dim_C H⁰_sub(X_C,ω_κ)_m. Independently, over Q the conditional all-weight exhaustion and pairing within packets give h¹=h⁰ for every a≥2 in weight (a,2), with no large-gap hypothesis, at neat prime-to-p level and non-Eisenstein localization. The factor l₀ counts permitted single archimedean changes within each of the packets with the same finite part.

(BCGP21, Corollary 3.10.5, p. 237; CG20 proof of Theorem 7.11, pp. 54–55; P20 Proposition 15.2.4.1, pp. 109–110).

A proof route is to group the multiplicity-counted cuspidal summands by their finite part and global parameter. Use the conditional multiplicity formula for packets to pair holomorphic with each permitted single generic archimedean change. Multiply the equal finite-level dimensions by l₀ and sum over the residual congruence summand.

*Needs:* §8.8; §8.7; §7.0 (the conditional contract for packets); §6.9.

**Checks.**

- If l₀=0 the formula predicts zero degree-one cohomology under the same large-weight and classification hypotheses.

### Examples

No all-degree totally real boundary vanishing is inferred from this Q-specific specialization.

The all-degree isomorphism uses all-degree boundary vanishing, rather than just its H⁰ case.

At k=0 a cusp twist is not silently added, and the factor 2 is not presumed invertible modulo p.

No division by 2 is used, and a repeated Satake monomial in the display is corrected before the comparison.

The output is H⁰ boundary vanishing over C; it does not supply integral or all-degree vanishing.

A nonzero H¹ boundary class is consistent with the totally real conclusion; surjectivity onto all H¹_can is not inferred.

The conditional conclusion includes a=2; do not replace it by the separate large-weight theorem.

The right-hand coefficient level, central character and residual congruence are fixed throughout; degree-one equality requires the large-gap assumptions.

If l₀=0 the formula predicts zero degree-one cohomology under the same large-weight and classification hypotheses.

### Dependencies

ArithmeticGaloisRepresentations §1.8 and Layer 5; AutomorphicBundles B5; AutomorphicFormsOnReductiveGroups §4.1; AutomorphicFormsOnReductiveGroups §§6.3–6.7; ShimuraCompactifications C3.3–C3.10 and C5; SmoothRepresentationsOfLocalGroups SR.2; SmoothRepresentationsOfLocalGroups SR.4; §7.0. Earlier in this layer use the individual prerequisites displayed above.

## Worked examples

**Finite coefficient duality and reduction.** For the trivial Δ-torsor over Spec O and coefficient O, the cochain model is Aₙ[Δ] in degree zero, with the regular deck action. Its Aₙ-linear dual has the inverse deck action and identifies with the Matlis-dual chain model using x↦x/ϖⁿ. Derived coinvariants give Aₙ in degree zero. This test simultaneously checks the group ring, the dual action and the downstairs coefficient. In contrast, the trivial Fₚ[Cₚ]-module Fₚ has higher Tor; substituting its ordinary coinvariants for derived descent discards information. In the Hochschild–Serre edge sequence the possible Tor₂(H₀) contribution must remain until an actual vanishing theorem removes it.

For another reduction check, take the two-term O-complex O→O in cohomological degrees 0 and 1 with differential multiplication by ϖ. Its H⁰ is zero and H¹ is k. Derived reduction to k has zero differential, hence H⁰=k as well as H¹=k. Thus H⁰(C)⊗k→H⁰(C⊗ᴸk) is not an isomorphism. The coherent base-change theorem is a theorem about derived complexes, not an automatic termwise statement about cohomology modules.

**Small weights at the endpoint.** Set p=7 and (a,b)=(4,2). The hypotheses a≥3 and 2≤a−b≤p−2 hold, giving subcanonical vanishing above degree two. Since a+b=6, the second range applies at its lower endpoint and gives vanishing above degree one. The third range does not apply because b<4. The dual weight is (1,−1). The shifted characteristic is (3,0), lying in both C₀ and C₁, and the normalized scalar exponent a+b−6 is zero. The GL₄ transfer has entries {3/2,3/2,−3/2,−3/2}. These checks keep the mod-p theorem, characteristic-zero chamber statement and arithmetic normalization distinct.

The explicit Lan–Suh substitutions can be used to discharge the integer-range proof step. For the length-one weight choose t=max(1,b,ceil((a+b−2)/2)), α=t−b, β=a−2−t. For length two choose t=max(1,b−1), α=a−3−t, β=1+t−b. For length three choose t=b−3, α=a−b, β=0. In the respective displayed ranges, verify α≥β≥0, t>0 and α+β<p−3. The first two have α+β=a−b−2; the third has α+β=a−b. The exact smallness and logarithmic lifting assumptions remain supplier obligations; solving the arithmetic does not prove the integral BGG theorem.

**Chamber walls.** For (a,2) with a≥2 the shifted pair is (a−1,0), so C₀ and C₁ both hold, and C₂,C₃ fail. For (a,3−a) with a≥2 it is (a−1,1−a), so C₁ and C₂ both hold, including a=2. There is no extra C₀ contribution at that endpoint. The origin belongs to all four closed chambers. A definition that assigns a unique chamber to every singular parameter fails these tests.

**Boundary exactness and counts of members of packets.** Localizing the long exact sequence of 0→F_sub→F_can→F|D→0 after proving only H⁰(D,F|D)_m=0 gives an H⁰ isomorphism and an H¹ injection. Its image is H̄¹_m; H¹(D,F|D)_m can still obstruct surjectivity. Over Q the all-degree boundary theorem removes that obstruction in every degree. The all-weight Q cuspidal exhaustion and dimension equality are conditional on the exact classification and multiplicity input for packets and include a=2; they do not rely on the separate large-weight theorem.

For a totally real field with two real places, suppose both weights have l_v=2 and satisfy the required large gaps, and impose the exact conditional formula for general-type packets. Each finite part has one holomorphic choice contributing to H⁰ and two permitted single generic changes contributing to H¹. With equal multiplicities this gives h¹=2h⁰. If exactly one l_v is 2 and the other is >R, the count is h¹=h⁰. This counts permitted members of global packets, not a formal tensor-product dimension without component-group constraints.

## Downstream consumers

OverconvergentAutomorphicForms uses the integral derived Hecke maps, normalization and support comparisons of Layers 1–5. Automorphic Galois constructions use the actual normalized polynomial dictionary and residual localizations in Layers 4–5. Congruence and patching constructions use the equivariant perfect complexes of Layer 2 and their localized summands in Layer 5. Classical singular-weight applications use the precise boundary and multiplicity-counted statements of Layers 6–8. Each consumer retains the model, degree, coefficient and conditional hypotheses on packets of the result it uses.

## References

- **CG18.** F. Calegari and D. Geraghty, *Modularity lifting beyond the Taylor–Wiles method*. Invent. Math. 211 (2018), 297–433; author PDF, 137 pages. [CG18](https://www.math.uchicago.edu/~fcale/papers/CG.pdf).
- **CG20.** F. Calegari and D. Geraghty, *Minimal modularity lifting for non-regular symplectic representations*. Duke Math. J. 169 (2020), 801–896; author manuscript, 96 pages. Locators here use manuscript pages 22–55 and 86–88, with theorem numbering as in that copy. [CG20](https://www.math.uchicago.edu/~fcale/papers/Siegel.pdf).
- **P20.** V. Pilloni, *Higher coherent cohomology and p-adic modular forms of singular weights*. Duke Math. J. 169 (2020), 1647–1807; author manuscript, 17 June 2019, 113 pages. Locators below use manuscript pagination.. [P20](https://www.imo.universite-paris-saclay.fr/~pilloni/complexhidatheorygsp4.pdf).
- **BP26.** G. Boxer and V. Pilloni, *Higher Hida theory for Siegel modular forms*. Invent. Math. 244 (2026), 45–141; author manuscript dated 5 November 2025, 65 pages; locators use manuscript pages. [BP26](https://www.imo.universite-paris-saclay.fr/~pilloni/higherhidaSiegel.pdf).
- **BCGP21.** G. Boxer, F. Calegari, T. Gee and V. Pilloni, *Abelian surfaces over totally real fields are potentially modular*. Publ. Math. IHÉS 134 (2021), 153–501; publisher PDF; locators use printed pagination. [BCGP21](https://pmihes.centre-mersenne.org/item/10.1007/s10240-021-00128-2.pdf).
- **Sch15.** P. Scholze, *On torsion in the cohomology of locally symmetric varieties*. Ann. of Math. 182 (2015), 945–1066; arXiv manuscript uses chapter V and Corollary V.1.7, p. 83; published §5.1, pp. 1035–1036. [Sch15](https://www.math.uni-bonn.de/people/scholze/Torsion.pdf).
- **Su24.** J. Su, *Coherent cohomology of Shimura varieties and automorphic forms*. Ann. Sci. ENS 57 (2024), 1039–1099; arXiv:1810.12056v2, 29 July 2024; locators use preprint pages. [Su24](https://arxiv.org/abs/1810.12056).
- **Lan17.** K.-W. Lan, *Integral models of toroidal compactifications with projective cone decompositions*. Int. Math. Res. Not. 2017, no. 11, 3237–3280; corrected author manuscript, 35 pages; with the published errata. [Lan17](https://www.kwlan.org/articles/cpt-ram-nbl.pdf).
- **LanSuh.** K.-W. Lan and J. Suh, *Vanishing theorems for torsion automorphic sheaves on general PEL-type Shimura varieties*. Adv. Math. 242 (2013), 228–286; author manuscript, 57 pages. [LanSuh](https://www.kwlan.org/articles/van-tor-aut-gen.pdf).
- **HZ01.** M. Harris and S. Zucker, *Boundary cohomology of Shimura varieties, III: coherent cohomology on higher-rank boundary strata and applications to Hodge theory*. Mém. Soc. Math. France (N.S.) 85 (2001); doi:10.24033/msmf.398. [HZ01](https://numdam.org/item/MSMF_2001_2_85__1_0/).
- **BR16.** R. Brasca and G. Rosso, *Eigenvarieties for non-cuspidal modular forms over certain PEL Shimura varieties*. arXiv:1605.05065v1, 17 May 2016; Proposition 1.14 is numbered 1.5.8 in the version cited by BCGP21. [BR16](https://arxiv.org/abs/1605.05065v1).
- **Lan17err.** K.-W. Lan, *Errata to Integral models of toroidal compactifications with projective cone decompositions*. Author’s one-page published errata, linked from the author publication list. [Lan17err](https://www.kwlan.org/articles/cpt-ram-nbl-err.pdf).
- **LanSuhErr.** K.-W. Lan and J. Suh, *Errata to Vanishing theorems for torsion automorphic sheaves on general PEL-type Shimura varieties*. Authors’ two-page published errata, linked from the author publication list. [LanSuhErr](https://www.kwlan.org/articles/van-tor-aut-gen-err.pdf).
- **H90.** M. Harris, *Automorphic forms and the cohomology of vector bundles on Shimura varieties*. Automorphic Forms, Shimura Varieties, and L-functions II, Perspectives in Mathematics 11 (1990), pp. 41–91; public scan hosted by J. S. Milne; printed pagination. [H90](https://www.jmilne.org/math/Books/AA1988b.pdf).
- **GK19.** W. Goldring and J.-S. Koskivirta, *Strata Hasse invariants, Hecke algebras and Galois representations*. Invent. Math. 217 (2019), 887–984; cited by published locator (uncertified). [GK19](https://link.springer.com/article/10.1007/s00222-019-00882-5).
