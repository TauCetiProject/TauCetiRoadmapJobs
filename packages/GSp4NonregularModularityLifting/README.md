# Roadmap: minimal modularity lifting for GSp₄ in nonregular weight

**Summary.** Build ordinary symplectic modularity lifting in singular Siegel weights (a,2). Starting from integral cuspidal coherent sections, construct singular-weight Galois systems through regular weights, prove the two Fourier-doubling injections and the Klingen Taylor–Wiles comparison, and establish balance on the selected patching module. The end results are minimal R=T with positive cuspidal freeness, ordinary p-adic family lifting, and classical weight-two modularity from four higher-Hida multiplicity-one statements. Each implication retains its precise geometric, classification and patching hypotheses.

## Scope and ownership

This roadmap owns the genus-two lifting application: residual data and levels, selected Hecke actions, singular specialization, corrected cuspidal doubling, level comparison, selected-module balance and the three distinct lifting endpoints. NR10.5 owns prescribed-multiplier symplectic descent in every residue characteristic; it extends the odd-characteristic statement of IntegralHeckeAndGaloisDeterminants §1.5.

Generic determinant reconstruction, action images, finite local quotients, factorial projectors, spin polynomials and full multipliers are stated by IntegralHeckeAndGaloisDeterminants §§1.1–1.7, 2.1–2.3 and Layers IHG.3a–IHG.4. Generic induction, Jacquet and Satake theory are stated by SmoothRepresentationsOfLocalGroups SR.2 and SR.4. This roadmap keeps their genus-two arithmetic specializations. The elementary `standardAlternatingMatrix` specializes Mathlib’s standard block form by exchanging the last two coordinates; this fixes the antidiagonal pairing order used for the labelled roots. `HasPrescribedMultiplier` specializes the preservation equation to this form and a given full character, beyond the multiplier-one matrix subgroup. The pinned library's generalized eigenspaces, idempotents, matrix groups, local-ring completions and continuous H¹ are imported at their native scope; none is reconstructed here.

Integral coherent complexes, duality, Hochschild–Serre, vanishing, boundary localization, Arthur exclusions and the characteristic-zero dimension equality are stated by AutomorphicBundlesPartII IC.1–IC.8. All four higher-Hida/Coleman chambers, the completed filtration and the singular classicality criterion are imported from PadicFamiliesPartII E6, S7 and F8. The general analytic Bruhat coefficients belong to OverconvergentAutomorphicForms §§8.6–8.7. NR1.1 owns the normalized genus-two H⁰ p-actions, NR3.1 owns Hasse lifts and torsion congruences, NR3.1a owns secondary Hasse geometry, and NR4.2 owns the corrected theta construction and injectivity. Their general coherent-complex carriers remain with AutomorphicBundlesPartII. The selected all-degree p-action extension is an explicit supplier gap there. The regular Galois construction belongs to AutomorphicGaloisRepresentationsPartII AG2.P, AG2.5–AG2.6; NR3.4 assembles its selected integral images. Frobenius-annihilation isotypy belongs to ArithmeticGaloisRepresentations §7.6, and solvable GSp₄ descent to EndoscopicTransferAndUnitaryTraceComparison §13.2.

The regular ordinary support results needed over CM and totally real fields, including the definite-unitary ordinary tower/control input, are targets NR11.0a–NR11.0b; their role is to establish support before rank is computed. The elementary exceptional isomorphism on the six-point symplectic module is a target in NR8.4. Neither result is a dependency on an unnamed future construction. General local deformation and image theories remain with LocalGaloisDeformationRings and ArithmeticGaloisRepresentations, through the exact extensions below. Patching algebra is DeformationAndDerivedPatchingAlgebra §§5.5–5.8; NR8, NR9 and NR10 verify three different arithmetic applications.

## Conventions

Let E/ℚₚ be finite, O its integers, ϖ a uniformizer and k its finite residue field; enlarge E to contain the indicated roots and characters. O/ϖᵐ, E/O and E-valued fibers are distinct coefficient objects. An eigenform or eigenclass witnessing occurrence is nonzero. A coherent section is cuspidal when it belongs to the subcanonical coefficient ω(μ)(−D), where X is the supplied toroidal compactification and D its boundary. The notation XΔ(Q) uses the intermediate cover for a quotient Δ of the full diamond group. A superscript “selected” always denotes the simultaneous generalized-root summand of two commuting p-actions. For the Weil–Deligne convention, geometric Frobenius has norm q⁻¹: with r(F)=diag(1,q) and N=E₁₂ one has r(F)Nr(F)⁻¹=q⁻¹N, giving N/3 at q=3. All geometric constructions are functorial for the specified levels and coefficient maps; thresholds for positive twists may depend on the finite list of levels.

Use geometric Frobenius and ε of Hodge–Tate weight −1, with ε(Frobℓ)=ℓ⁻¹ at ℓ≠p. Local reciprocity sends a uniformizer to geometric Frobenius. CG weights (a,2) have multiplier ε^(1−a) and Hodge–Tate multiset 0,0,a−1,a−1. The BCGP arithmetic weight-two representation has multiplier ε⁻¹; its coherent dual-spin normalization is ρf=ρπ∨ε⁻³. The P12 list iκ=(0,2−k₂,1−k₁,3−k₁−k₂) records cyclotomic exponents: in this Hodge–Tate convention its Hodge–Tate weights are their negatives. For κ=(2,2), exponents 0,0,−1,−1 give weights 0,0,1,1. Full multipliers are carried independently of their determinant squares, including at trace zero.

Write Ω(k,r)=ω(k+r,r), with k≥0 and integral r. Pilloni's infinity parameter is (1−k−r,2−r;k+2r). The bundle is Symᵏ of the rank-two Hodge bundle tensored by detʳ, so negative determinant powers mean dual line bundles, not natural-number subtraction. Weights and cyclotomic exponents are integers. Fourier indices are symmetric matrices Q=[[m,r/2],[r/2,n]], with binary discriminant d(Q)=r²−4mn=−4det(Q); p is odd wherever the half-integral convention is used.

The CG branch requires p≥5, a=2 or 4≤a<p−1, the CG image conditions and the explicit selected-balance and Fourier obligations. Oddness and the full multiplier imply a even; a numerical inequality alone does not supply oddness. Weight (2,2) keeps the uniform coherent H² hypothesis. The P12 branch has its own image, well-ramified and ordered-flag hypotheses. The characteristic-zero BCGP branch allows p=2 and uses integral enormousness and two diamond-torus directions per prime. NR10.5 alone allows arbitrary residue fields and characteristics and complete Noetherian local coefficients beyond O. Universes in its Lean signature are arbitrary; rank remains four.


For polynomial notation, distinguish the CG monic polynomial det(X−ρ(Frobℓ)) from the reciprocal P20/PS16 polynomial det(1−Xρ(Frobℓ)); their coefficient reversal is part of the spin dictionary. For two eigenvalues 2,3 these are X²−5X+6 and 1−5X+6X², respectively. A coefficient exponent m≥1 is displayed in O/ϖᵐ; an untruncated localized ring uses the separately specified maximal ideal 𝔪, even when a source writes it as a subscript m.

**Normalization checks.** At a=2 and ℓ=3, ε(Frob₃)=1/3 while ε⁻¹(Frob₃)=3, and det ρ(Frob₃)=9. At Ω(0,2), the Pilloni parameter is (−1,0;4); it is not the BCGP parameter (1,1;2) without the separate dictionary. As a formal substitution in the dual-spin dictionary, at w=0 and trivial smooth torus character the p-character exponents are −1,−1,−2,−2, and the corresponding Sen values of the completed four-piece filtration are −1,−1,−2,−2. With Q=diag(1,1) at p=7, d(Q)=−4≡3 is nonsquare, whereas det(Q)=1 is square. The formal trivial-character substitution is not an occurrence assertion: its nonunit uniformizer values need the actual eigenform’s smooth-character normalization to produce a continuous Galois character. These witnesses fix the signs used in the layers and in the supplier comparisons (CG20 pp.812–816, 833–834, 859; P12 p.36; P20 §5.3; BCGP25 §§1.8.12, 4.12).

## Exact supplier contracts

### From Mathlib

At the pins, `ZMod` in `Mathlib/Data/ZMod/Defs.lean` supplies residue examples; `Module.End.genEigenspace` and `Module.End.mem_genEigenspace_nat` in `Mathlib/LinearAlgebra/Eigenspace/Basic.lean` supply kernels of powers and their increasing union; `IsIdempotentElem` in `Mathlib/Algebra/Group/Idempotent.lean` is the equation e²=e. No semisimple decomposition is part of the generalized-eigenspace definition. `Matrix.symplecticGroup` in `Mathlib/LinearAlgebra/SymplecticGroup.lean` preserves its standard J with multiplier one; NR10.5 uses native matrices with a specified full multiplier instead.

The signature in Suggested.lean uses `Matrix.GeneralLinearGroup` in `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean`, `Algebra.adjoin` in `Mathlib/Algebra/Algebra/Subalgebra/Lattice.lean`, `IsLocalRing.maximalIdeal` in `Mathlib/RingTheory/LocalRing/MaximalIdeal/Defs.lean`, and `IsLocalRing.ResidueField` and `IsLocalRing.residue` in `Mathlib/RingTheory/LocalRing/ResidueField/Defs.lean`, `IsAdicComplete` in `Mathlib/RingTheory/AdicCompletion/Basic.lean`, and `IsAdic` in `Mathlib/Topology/Algebra/Nonarchimedean/AdicTopology.lean`. A matrix representation of a group consists automatically of invertible matrices. Its residual algebra spanning the full sixteen-dimensional matrix algebra is the absolute-irreducibility criterion; the theorem imposes that criterion, not only scalar commutant. Compact, Hausdorff, totally disconnected topological groups are the profinite carrier here. The adic topology is specified separately from algebraic adic completeness.

### From Tau Ceti

`TauCeti.ContCohomology.H1` in `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean` is the continuous cocycle quotient for a continuously acting topological additive group. It supplies the low-degree additive carrier, with its action and continuity hypotheses; its inherited pointwise quotient topology is not asserted to be the discrete arithmetic-cohomology topology; global Selmer conditions, finite-generation and symplectic deformation numerology are supplier contracts rather than consequences of that abbreviation. Suggested.lean needs no Tau Ceti import.

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

§§7.3–7.5, 7.9–7.12; §7.6, “Semisimplicity criteria”. Use continuous symplectic representations with their full multiplier, residual coefficient change, the CG big-image condition, and the two Frobenius-annihilation semisimplicity criteria of BCGP25 Propositions 4.11.1–4.11.2. The latter concern annihilation of the action on a finite-dimensional nonzero representation, rather than equality of characteristic polynomials of semisimplifications. Its §5.11 supplies the passage from a density-one Frobenius set to all group elements.

What ArithmeticGaloisRepresentations must provide (gap:integral-enormity-and-oddness): Provide BCGP25 integral enormousness, near adequacy, strongly residual oddness and GSp₄-reasonableness with their exact adjoint conditions, coefficient fields and restriction behavior, without identifying them with CG big image or ACC enormousness.

What ArithmeticGaloisRepresentations must provide (gap:weil-restriction-big-image): For an imaginary quadratic K and a non-CM elliptic curve E/K not isogenous over the algebraic closure to its conjugate, prove that the dual mod-p representations of E and its conjugate map the cyclotomic kernel onto SL₂(𝔽_p)² for all sufficiently large p, supplying the induced CG big-image example.

### From TauCetiRoadmap.AutomorphicBundles

Layers B3–B5; B3.HT.1–3. Use canonical and subcanonical automorphic coefficients, the boundary divisor, genus-two Schur weights, classical section comparison, geometric H⁰ Hecke correspondences and the coefficient-valued expansion principle. Use its rational Hodge–Tate tower and period torsor in the characteristic-zero interpolation route.

### From TauCetiRoadmap.AutomorphicBundlesPartII

IC.1–IC.5; IC.6–IC.8. Use coherent homology and finite-coefficient Serre duality from IC.1, equivariant perfect models and homological deck descent from IC.2, proper cohomological correspondences from IC.3, normalized integral Hecke actions from IC.4, and small-weight and large-parallel-twist vanishing from IC.5. The threshold in “Large parallel twists and reduction of sections” depends on the specified finite collection of levels. IC.6–IC.8 supply interior comparison, localized boundary vanishing over ℚ, the Arthur-type exclusions and the multiplicity-counted equality dim H¹=dim H⁰, under their hypotheses on packets and classification. 

What AutomorphicBundlesPartII must provide (gap:normalized-integral-siegel-p-actions): Extend the normalized H⁰ actions constructed in NR1.1 to the needed cuspidal coherent complexes and make their commuting idempotents compatible with coefficient change, duality and deck descent in degrees zero and one.

### From TauCetiRoadmap.AutomorphicGaloisRepresentationsPartII

AG2.P, “GSp₄ construction and normalization”; AG2.5; AG2.6, “GSp₄ crystalline Hodge comparison” and “Ordinary GSp₄ triangular shape”. Use the regular cuspidal spin realization, including the full multiplier, crystalline Frobenius polynomial at spherical p, and the ordered ordinary shape of CG20 Proposition 6.8. Use semisimplified ramified local comparison, the pure monodromy upgrade and the family crystalline-period comparison under simple-generic, spherical and distinct-root hypotheses; retain every normalizing twist and classification premise.

### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors

Layer AL.4, local correspondence and local factors. Use the Weil–Deligne/Satake dictionary and the adjoint local L-factor normalization. For monodromy use the local holomorphy assertion for generic packets, supplied together with the local contract below.

### From TauCetiRoadmap.DeformationAndDerivedPatchingAlgebra

§§3.1–3.3, 5.1–5.9, 6.1–6.7 and 7.6–7.10. Use the Tor defect and balanced-module theorem of §5.5 for the CG branch, the equal-variable free-module criterion of §5.6 for the Pilloni branch, and corrected characteristic-zero patching of §5.8 for the higher-Hida branch. The last retains cofinal open cutoffs, actual ring actions, the uniform cotangent bound, marked coefficient sections and all three image comparisons; it supplies surjectivity of point completions before Noetherianity of the target completion is inferred. Sections 3.1–3.3 provide depth, Auslander–Buchsbaum and projective-to-free comparison; Layer 6 provides component support under its faithfulness hypotheses. Section 5.9 supplies projective finite-group norm/invariant/coinvariant comparison without division by the group order. The present roadmap verifies the arithmetic hypotheses of these three distinct patching applications.

### From TauCetiRoadmap.EndoscopicTransferAndUnitaryTraceComparison

§13.2, “Automorphic inputs to GSp₄ solvable descent”; §11.1. Use BCGP25 Proposition 7.5.3 with its full multiplier ε⁻¹, central character |·|², restriction irreducibility and Tate twist. A regular |·|²-self-dual cuspidal GL₄/ℚ representation is symplectic; an irreducible realization after solvable Galois CM base change as rπ⊗ε, or after solvable totally real base change as a GSp₄ representation, descends to a regular cuspidal GSp₄/ℚ representation. Keep the cyclic-descent character ambiguity until the given Galois representation fixes it.

### From TauCetiRoadmap.GlobalGaloisDeformations

R04.3–R04.6 and Layer G7. Use universal fixed-full-multiplier symplectic deformation rings, their classifying maps, the exact CG Selmer presentation and labelled Taylor–Wiles sets. The CG cardinality equals its dual Selmer dimension and each prime has the requested depth x≡1 modulo pᴺ. A rank-one Klingen diamond and the two torus directions of the characteristic-zero branch are different deformation data.

What GlobalGaloisDeformations must provide (gap:gsp4-global-patching-data): Supply the CG fixed-multiplier Selmer presentation with qTW≥1 and the BCGP25 two-torus-direction integral-enormity auxiliary sets and uniform marked cotangent bounds, including the dyadic and variable-weight coefficient hypotheses.

What GlobalGaloisDeformations must provide (gap:dyadic-polarized-ordinary-global-data): Supply arbitrary-rank p=2 polarized ordinary deformation problems over their multivariable weight algebras, their h³-aware Selmer presentations and two-tame-type Taylor–Wiles data under the near-adequate and strong-residual-oddness hypotheses of NR11.0a.

### From TauCetiRoadmap.HodgeTateAndCanonicalSubgroups

§§0.2–0.5 and 0.14–0.15. Use the finite-level and p-divisible Hodge–Tate maps, their linearization, isogeny functoriality and the ordinary-locus Hasse criterion. Actual rational Siegel period covers and coefficient sections are taken from AutomorphicBundles B3.HT, rather than inferred from a pointwise Hodge–Tate map.

### From TauCetiRoadmap.IntegralHeckeAndGaloisDeterminants

§§0.7, 1.1–1.7, 2.1–2.3 and Layers IHG.3a–IHG.4. Use determinant reconstruction and all-characteristic GL coefficient descent/Carayol comparison from §1.5, finite action images and factorial idempotents from Layer 2, spin/dual-spin polynomials with the separate full multiplier from IHG.3a, Galois-type residual ideals from IHG.3b, and compatible continuous integral determinants from IHG.4. Its prescribed-multiplier symplectic descent in §1.5 assumes residue characteristic greater than two. NR10.5 supplies the all-characteristic extension. Its §1.6 Cayley–Hamilton isotypy requires annihilation by the entire Cayley–Hamilton ideal; Frobenius-polynomial annihilation in NR2.8 instead uses ArithmeticGaloisRepresentations §7.6.

What IntegralHeckeAndGaloisDeterminants must provide (gap:gsp4-pseudocharacter-reconstruction): Reconstruct a continuous semisimple GSp₄-valued representation with its full multiplier from a continuous GSp₄ pseudocharacter over an algebraically closed characteristic-zero field, compatibly with affinoid specialization.

### From TauCetiRoadmap.LocalGaloisDeformationRings

§§2.7, 2.12, 2.17, 6.3 and 6.26–6.29. Use minimal U/P/H inertia conditions, ordinary flag and plane deformation functors, their component comparisons and tame Taylor–Wiles scalar inertia. Section 6.27 is explicitly an odd-p B/P-ordinary comparison and does not supply dyadic regularity. Preserve its distinction between a full flag, the two Borel orderings and the P intersection. Pure conductor constancy is used only on the specified component.

What LocalGaloisDeformationRings must provide (gap:p12-flag-orientation): Compare P12 automorphic and deformation strong ordinarity on one fixed ordered flag and Ext convention, resolving the opposite ratio directions in Definitions 3.2 and 5.3 before applying representability or Hida control.

What LocalGaloisDeformationRings must provide (gap:dyadic-ordinary-local-regularity): Supply the p-distinguished pure semistable weight-two symplectic ordinary point regularity, dimensions and unique-component/conductor comparisons needed by BCGP25 §7 for every p, including p=2, with the chosen stabilization retained.

What LocalGaloisDeformationRings must provide (gap:dyadic-general-ordinary-local-image): Construct the reduced 2-torsion-free ordinary local image ring for every ordered upper-triangular residual GLₙ flag and prove the exact finite-extension integer-point flag criterion of BCGP25 Proposition 5.6.6(1)–(2), retaining the trivial-residual large-degree hypotheses for the component theorem in (3).

### From TauCetiRoadmap.ModularityAndLanglandsExtensions

§§3.2, 3.9 and 3.26, with the “GSp4ClassificationInputs” contract. Use the classification of GSp₄ packets and multiplicity bookkeeping with its full real-group components, central character and transfer normalization. Retain the specified twisted weighted fundamental-lemma/stabilization hypothesis wherever that source route assumes it; unitary classification alone does not establish the GSp₄ input.

### From TauCetiRoadmap.PadicFamiliesPartII

Layers E6, S7 and F8; K2 for the singular Klingen comparison. Use E6/four-pieces for the actual completed-to-coherent filtration, S7/sen-cousin and S7/de-rham-classicality for the singular Sen comparison and BCGP25 Theorem 4.12.4, and F8/four-modules through F8/central-character for the four integral modules, regular and Coleman control, duality, tame group-ring projectivity and partial central specialization. Keep its nonzero singular-overlap comparison and independent four-piece dimension balance as premises. The BCGP torus convention is obtained by the involution [t]↦[t⁻¹]; character evaluation and the algebraic twist are retained. This imports one four-chamber theory.

What PadicFamiliesPartII must provide (gap:p12-ordinary-horizontal-control): Supply the Borel two-weight and GL₂-parabolic one-weight ordinary Siegel Hida modules, their dual Iwasawa finiteness, arithmetic control and horizontal Λ[Δ]-freeness at the P12 tame levels and ordered flags.

### From TauCetiRoadmap.OverconvergentAutomorphicForms

§§8.6–8.7. Use the analytic Bruhat coefficient and distribution families, their full Weyl/root shifts, radius and coefficient maps, finite-character twists and the stated analytic/étale comparison. The hypotheses include actual finite-flat trivializing covers and finite unions of quasi-Stein opens. Rational local Banach projectivity supplies no integral finite-torus averaging.

### From TauCetiRoadmap.PadicHodgeTheory

§§3.2–3.6, 4.4 and 5.3–5.4. Use coefficient descent, duals, twists, de Rham/crystalline/semistable period functors and their Weil–Deligne comparison. A de Rham finite-dimensional representation has semisimple Sen operator in the stated arithmetic convention; an arbitrary completed representation is outside this assertion.

### From TauCetiRoadmap.ShimuraCompactifications

C3, especially C3.9–C3.10; C5, especially C5.13–C5.18. Use compatible fans, toroidal level maps, pullback and unnormalized trace, integral genus-two models, the Hodge line and its positivity. Smoothness is used only at the supplied good integral models; higher p-level compactifications carry their own hypotheses. Trace after a selected Klingen projector has the scalar computed in NR6, rather than the covering degree.

### From TauCetiRoadmap.ShimuraData

§§5.9–5.10 and 5.18, “GSp₄ Pilloni convention”. Use the genus-two root/weight and Kostant dictionaries and the change between CG and Pilloni coordinates. NR0.2 specializes these dictionaries to the singular bundles used in this roadmap.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

SR.2.1–SR.2.3, SR.4.1–SR.4.5. Use normalized parabolic induction and Jacquet functors, invariant-vector interfaces, the spherical Satake transform and the GSp₄ spin-polynomial dictionary. The specialized Klingen/newvector and projective finite-group statements required below are separate contracts.

What SmoothRepresentationsOfLocalGroups must provide (gap:gsp4-local-blocks-and-monodromy): Supply the normalized GSp₄ Steinberg U-eigenvalue, Klingen no-newforms and spherical-to-refinement calculation, generic paramodular newvector uniqueness at the conductor, regular ordinary and neat-prime refinement lines, and adjoint-L holomorphy at s=1 for generic packets with the pure-monodromy uniqueness comparison.

What SmoothRepresentationsOfLocalGroups must provide (gap:projective-finite-group-satake): Supply the regular residual GSp₄ Satake-block comparison of BCGP25 Lemmas 7.4.11–7.4.12 on projective finite-group modules, compatibly with the partial central condition and diamond augmentation, without dividing by 8.

### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups

Sections 7.4–7.6 supply algebraic modular forms on a definite reductive group with their actual coefficient action, finite stabilizer and central-character conditions, base change and automorphic realization. NR11.0a builds the ordinary definite-unitary tower and its control comparisons on these carriers. The stabilizer-unit condition is retained at the sufficiently small levels; a 2-adic argument never averages over an even stabilizer order.

### From TauCetiRoadmap.FiniteFlatGroupsAndIntegralPadicHodgeTheory

Sections R07.1–R07.2 supply the multiplicative-connected filtration, invariant differentials and the BT₁ crystal/Hasse–Witt maps used in NR3.1a, with their exact finite-flat, constant-rank and Cartier-duality hypotheses. The secondary determinant section and its extension are targets here, and the reducedness hypothesis is retained wherever pointwise vanishing is promoted to a sheaf identity.

## How to read the build

NR0–NR1 fix the data, levels and selected actions. NR2 constructs characteristic-zero interpolation independently of minimal patching, using the imported family theory. NR3 constructs Hasse lifts and the secondary determinant section and provides regular finite-quotient systems; NR4 proves cuspidal doubling; NR5 assembles the singular Galois deformation. NR6 controls Klingen level, NR7 isolates the defect on the selected summand, and NR8 applies balanced patching. NR9 is the independent ordinary-family branch. NR10 proves local freeness with rank allowed to be zero; NR11 supplies regular ordinary support, proves positive rank one in each chamber, and applies higher-Coleman classicality. A *Needs* line distinguishes statement carriers from the ingredients of the indicated proof route; another proof may replace that route without changing the statement.

## Layer NR0: Conventions, residual data and tame levels

Fix the full multiplier and the weight/Frobenius dictionaries, the four-factor ordinary-root condition, the exact CG residual/local data and the q-enlarged minimal tame level. Specify symplectically labelled Klingen Taylor–Wiles refinements, including their product separation. Generic Galois and deformation objects are imported.

### NR0.1 Nondegenerate ordinary roots

For a field k and α,β ∈ k, define the nondegenerate ordinary-root condition by (α²−1)(β²−1)(α−β)(α²β²−1) ≠ 0. In arithmetic uses α,β are specified units, not merely an unordered pair of roots. This is the CG20 condition; it is stronger than α≠β and is unrelated to the regular-semisimple condition at an auxiliary prime.

(CG20, Theorem 1.1(2), p.802; §4, pp.812–813; CG20 line 38.)

Define the product on the existing field carrier; derive the four nonvanishing factors using absence of zero divisors. Show invariance under exchanging the two roots and under injective field extension.

The construction has the following interfaces.

- Over a field the predicate is equivalent to α²≠1, β²≠1, α≠β, and α²β²≠1.
- Exchanging α and β preserves the predicate.
- An injective field map preserves and reflects the predicate.

**Checks.**

- In F₁₁, α=2 and β=3 satisfy the predicate: the product is 7.
- In F₁₁, 2 and 6 are distinct and neither square is 1, but their product is 1; reject them.
- In F₁₁, 1 and 3 are rejected although the roots are distinct.

Expose all four exclusions and preserve the distinction between units at p and four auxiliary eigenvalues.

*Needs:* Mathlib `ZMod`.

### NR0.2 Weight and Frobenius dictionary

Use ε of Hodge–Tate weight −1 and geometric Frobenius throughout the CG branch. Its bundle ω(a,b) is the supplied rank-two Hodge bundle representation Sym^(a−b)⊗det^b. Pilloni’s Ω(k,r) is ω(k+r,r), with infinity parameter λ=(1−k−r,2−r;k+2r). In BCGP25, scalar weight two corresponds to λ=(1,1;2) and central character |·|²; its overconvergent Galois convention is dual-spin ρπ∨ε⁻³. Import the good-prime spin/dual-spin and full multiplier conversion from the IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b, preserving every central operator.

(P20, §5.3, author pp.24–25; CG20 Remarks 5.10–5.11, pp.833–834; BCGP25 §1.8.12, p.12, Definition 1.8.16, p.13 and Lemma 4.12.1, p.112; P20 line 1086.)

Compute the highest weight of the Hodge bundle representation and compare each infinity-parameter convention. Use the upstream dual/twist and full multiplier identities rather than rediscover the spin polynomial. Keep the correction to the first infinity-coordinate sign explicit in the source ledger.

**Checks.**

- For k=0,r=2, Ω(0,2)=ω(2,2) and λ=(−1,0;4); for k=2,r=2, Ω(2,2)=ω(4,2) and λ=(−3,0;6). The opposite first-coordinate sign fails both substitutions.
- At a=2, ε⁻¹ has geometric-Frobenius value ℓ and Hodge–Tate weight 1; ε has value ℓ⁻¹ and weight −1.
- Multipliers 1 and −1 have the same square in odd characteristic; determinant data alone cannot fix the central character.

Test Ω(0,2)=ω(2,2) and its λ=(−1,0;4) in the Pilloni convention; it is not literally BCGP’s λ without its separate normalization. Record the precise conversion on polynomials and the full central character, even at trace zero.

*Needs:* IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; AutomorphicBundles B4; ShimuraData §§5.9–5.10, 5.18; PadicFamiliesPartII E6/four-pieces and F8; ShimuraData §§5.9–5.10, 5.18.

### NR0.3 Nonregular lifting data

A CG lifting datum consists of an odd prime p≥5, a finite extension E/Qp with integers O, uniformizer ϖ and residue field k; an integer a with a=2 or 4≤a<p−1; a continuous absolutely irreducible odd residual representation r̄:GQ→GSp₄(k) with multiplier ε̄^(1−a); chosen nondegenerate roots α,β; and a local basis at p with diagonal λ(α),λ(β),ε̄^(1−a)λ(β⁻¹),ε̄^(1−a)λ(α⁻¹), zero (1,2) and (3,4) entries and an unramified isotropic two-plane. It also records CG20 Assumptions 4.1–4.3, the minimal local deformation conditions and a chosen nonzero cuspidal residual eigensystem. The generic deformation functors, representations and pairings are supplied objects, not new definitions here.

(CG20, §4, Assumptions 4.1–4.3 and Definition 4.6, pp.812–816; Definition 6.15, p.844; CG20 line 519.)

Use the supplier representation, pairing and deformation objects and impose this particular conjunction of conditions. Keep three image conditions separate: Q(ad⁰r̄) excludes ζp; for every m there is σ∈GQ(ζpᵐ) with four distinct roots and eigenvalue 1 on each irreducible adjoint constituent; the images of ad⁰r̄ and ad⁰r̄(1) have no quotient of order p. Record away-p types U₁,U₂,U₃ by unipotent monodromy ranks 1,2,3; P by two isotropic inertia-character planes with x−1 prime to p; H by absolutely irreducible inertia with x⁴−1 prime to p. Under the fixed cyclotomic multiplier the P case is empty. The local minimal functor fixes the full multiplier, preserves those inertia conditions and, at p, has the split unramified two-plane with characters lifting the specified roots, as in Definition 4.6. Representability remains a supplier obligation.

The construction has the following interfaces.

- Extract the specified residual local matrix, pairing and ordered roots.
- Return the supplied fixed-multiplier minimal functor with the exact U/P/H conditions.
- Extend coefficients and transport the basis, pairing and root labels without changing local types.

**Checks.**

- For p=7, a=4 passes the weight range while a=6 fails the strict bound.
- A lift that changes a U₁ inertia generator to rank-two monodromy fails minimality.
- For a=2 the multiplier is ε⁻¹; a representation with multiplier ε has the wrong normalization.
- For p=7,a=5 the numerical inequality holds, but ν(c)=(−1)^(1−5)=1 violates oddness; a=4 gives ν(c)=−1.

Do not replace Assumption 4.1 by adequacy, or the selected ordinary plane by an arbitrary filtration. The multiplier is ε^(1−a), with ε of Hodge–Tate weight −1 and geometric Frobenius ε(Frobℓ)=ℓ⁻¹.

*Needs:* NR0 (nondegenerate ordinary roots); ArithmeticGaloisRepresentations §§7.3–7.5, 7.9–7.12; GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above.

### NR0.4 Minimal tame levels and the neat auxiliary prime

From a CG lifting datum satisfying Assumption 4.2 choose q≥3, q∉S(r̄)∪{p}, with q≠1 mod p and no ratio of residual Frobenius eigenvalues equal to q. At U₁,U₂,U₃ primes choose respectively paramodular, Klingen and Iwahori level; at P choose strict Klingen level; at H choose full congruence level at x; impose full level q and hyperspecial level elsewhere. For Q disjoint from S(r̄)∪{p,q}, form K₀(Q) and K₁(Q) (Klingen Π(x) and Π(x)⁺ at x∈Q), the group ΔQ=∏x∈Q(Z/xZ)^× of the étale cover X₁(Q)→X₀(Q) (through Π(x)/Π(x)⁺≅(Z/xZ)^×), and the intermediate cover XΔ(Q) for any quotient Δ of ΔQ; the patching argument uses quotients of p-power order. The prime q makes these moduli problems neat.

(CG20, Assumption 4.2, p.813; §§5.1–5.2, pp.820–822; §6.3, pp.840–841; proof of Theorem 6.13, p.843; §7.2, p.851; CG20 line 529.)

Choose the Frobenius class by Chebotarev from the stated neatness witness, then choose a prime outside the finite excluded set. Use the suppliers for integral models, compatible fans and bundles; specify the local compact subgroups and their Klingen-character kernels. The no-eigenvalue-ratio condition gives H²(Qq,ad⁰r̄)=0 and forces every relevant lift to be unramified at q.

The construction has the following interfaces.

- Give the local compact subgroup at each ramification type and at q.
- Identify the deck group with the specified quotient of ΔQ, including the trivial quotient.
- Supply compatible pullback and trace maps on the chosen compactifications and bundles.

**Checks.**

- For Q=∅ the diamond group is trivial and X₀(Q)=X₁(Q)=X.
- A U₂ prime uses Klingen, not the U₁ paramodular subgroup.
- A q with a residual eigenvalue ratio q is rejected even when q≠1 mod p.

State the auxiliary-prime unramifiedness for the lift itself, and identify the trivial Q cover with the base level.

*Needs:* NR0 (nonregular lifting data); ShimuraCompactifications C3.9–C3.10; ShimuraCompactifications C5.13–C5.18; AutomorphicBundlesPartII IC.5; AutomorphicBundles B3; AutomorphicBundlesPartII IC.1–IC.3.

### NR0.5 Klingen Taylor–Wiles refinements

A CG Taylor–Wiles refinement at x∉S∪{p} consists of x≡1 mod pᴺ, four distinct residual Frobenius roots (αx,βx,γx,δx), two specified complementary isotropic planes, the pairing labels αxδx=βxγx=ν(Frobx), and the extra separation αxβx≠γxδx. Roots lift uniquely in the appropriate henselian Hecke factor. The pairing labels and product separation are additional requirements, not consequences of the two isotropic planes.

(CG20, §4, p.815; Proposition 4.10, p.818; Assumption 7.1 and Theorem 7.2, pp.846–847; CG20 line 719.)

Use the supplier auxiliary-prime theorem with the precise CG image hypothesis, not a dimension-general theorem with different assumptions. Label roots respecting the symplectic pairing, and exchange βx and γx when necessary to get the product separation. Track the chosen isotropic plane through scalar inertia deformations.

The construction has the following interfaces.

- Extract the multiplier equalities and isotropic-plane labels.
- Return the unique lifted four roots with their reductions.
- Transport the selected refinement under a permitted symplectic relabelling and update the selected projector.

**Checks.**

- In F₁₃ roots (2,4,11,9) have paired products 5 and four distinct entries, but 2·4=11·9; reject this ordering.
- The pairing constraints involve αδ and βγ, not αβ and γδ.
- A prime satisfying only x≡1 mod p fails a requested depth N=2 when x≢1 mod p².

Keep the one-dimensional Klingen diamond factor here distinct from the two-dimensional torus factor in NR10.

*Needs:* NR0 (nonregular lifting data); GlobalGaloisDeformations R04.5–R04.6 (gap:gsp4-global-patching-data).

### Examples

In F₁₁, α=2 and β=3 satisfy the predicate: the product is 7.

### Dependencies

ArithmeticGaloisRepresentations §§7.3–7.5, 7.9–7.12; AutomorphicBundles B3; AutomorphicBundlesPartII IC.1–IC.3; AutomorphicBundles B4; ShimuraData §§5.9–5.10, 5.18; GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); GlobalGaloisDeformations R04.5–R04.6 (gap:gsp4-global-patching-data); PadicFamiliesPartII E6/four-pieces and F8; ShimuraData §§5.9–5.10, 5.18; IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above; ShimuraCompactifications C3.9–C3.10; ShimuraCompactifications C5.13–C5.18; AutomorphicBundlesPartII IC.5; Mathlib `ZMod`. The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR1: Selected cuspidal Hecke images

Construct the specialized anemic, full and p-enlarged Hecke images on the actual cuspidal modules, their invariant-level restrictions and joint generalized-root selectors. Define nonzero cuspidal Katz modularity at the prescribed level. The underlying image, determinant and projector theory is imported from the IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b.

### NR1.1 The three nonregular Hecke images

For the supplied cuspidal coherent sections H⁰(X₁(Q),ω(μ)(−D)⊗E/O), define Tanμ(Q) as the O-subalgebra image generated by spherical operators away from S∪Q∪{p}; Tμ(Q) adds Ux,i and ΔQ; T̃μ(Q) adds the integral p-operators Tp,1 and Qp,2=(pTp,2+(p+p³)Sp)p^(2−b) for μ=(a,b). Restrict these actual images to the invariant X₀(Q) subspace when that level is used. Define ordinary images by restriction to the invertible Tp,1Qp,2 summand, rather than by simply adjoining inverses to an unrelated ring.

(CG20, Definitions 5.13–5.14, pp.834–835; Lemma 8.8, p.860; CG20 line 1398.)

Import abstract Hecke images, spin-polynomial normalizations and factorial projectors; specify the generating double cosets and their actual action. Construct the normalized integral H⁰ p-operators below before using their images; Fourier identities alone do not define higher-degree actions. Prove the X₀(Q) subspace is stable and that the three ring maps are induced by their common faithful image action.

Define the displayed normalization in characteristic zero and prove that it preserves the integral lattice before reducing it; negative powers of p are never interpreted as division in O/ϖᵐ.

On the formal rank-at-least-one locus, construct the minuscule spherical correspondence and its pullback–differential–trace map T′. For Ω(d,r) with d≥0,r≥2, prove p³-divisibility of T′ on the integral torsion-free canonical and subcanonical coefficients and define T by its unique integral factorization p³T=T′. At ordinary generic points the multiplicative, mixed and étale kernel contributions have differential/trace valuations at least (d+2r,0), (r,1) and (0,3); each total is at least 3. Check horizontal height-one points where p is invertible, use normality for the extension, and then use the codimension-two supersingular Hartogs comparison for H⁰. On the paramodular correspondence construct the two integral normalized factors and their composite, retaining the full central transport, and obtain Qp,2 by the integral central subtraction whose rational expression is the displayed formula. Prove that these actions commute with prime-to-p correspondences, tame diamonds, coefficient reduction, passage to E/O and common toroidal refinement. Construct the integral correspondence before reducing coefficients, so no assertion that every torsion section lifts is used (CG20 Lemmas 8.8 and 8.12, pp.860,864; P20 §§7.1–7.2, pp.37–40, and Lemma 14.9.1 with proof §14.9.2, pp.103–104; P20 line 1721 and line 4751).

The normalized operator has the following additional interfaces.

- Its integral factorization p³T=T′ is unique on the torsion-free target and agrees with the rational spherical action.
- Its canonical and subcanonical versions preserve the specified cusp ideal and are compatible with fan refinement.
- Its reductions and E/O colimit induce the actual H⁰ action on every coefficient quotient, retaining the full central operator in Qp,2.

**Checks for the integral p-action.**

- At d=0,r=2 the three valuation sums are at least 4,3,3; all permit division by p³ before reduction, while the mixed and étale cases do not permit division by p⁴.
- In weight (2,2), Qp,2 reduces to Z₂+X₂; at a coefficient with discriminant 1 the X₂ contribution is 1 and cannot be deleted.
- Over O/ϖᵐ, multiplication by p³ can kill a nonzero coefficient, so it has no inverse there; the integral factorization, rather than quotient-ring division, defines the reduced action.
 The degree-zero construction does not furnish coherent-complex actions needed by NR7.4.

The construction has the following interfaces.

- Give the image of every good spherical operator and its spin polynomial.
- Give Ux,i and the homomorphism O[ΔQ]→Tμ(Q).
- Identify Tp,1 and Qp,2 on integral sections with their Fourier formulas.
- Pullback/trace maps intertwine all generators for which the correspondence is defined.

**Checks.**

- For Q=∅ the diamond generators contribute only the identity.
- In weight (a,2), Qp,2=pTp,2+(p+p³)Sp; dropping the central summand is rejected.
- If two abstract operators act identically on the chosen module they have identical elements in its Hecke image.

A relation in an abstract double-coset algebra is transported to the actual image; no faithfulness of that abstract algebra is assumed.

*Needs:* NR0 (minimal tame levels and the neat auxiliary prime); IntegralHeckeAndGaloisDeterminants §§2.1–2.3; IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; AutomorphicBundlesPartII (gap:normalized-integral-siegel-p-actions).

### NR1.2 Joint ordinary root selectors

On a finite O-Hecke algebra over the finite residue field k, with its adic topology, or compatibly on its finite quotients, use the supplied generalized-root selector e(T,c)=1−limn(T−c)^(n!). Define eβ=e(Tp,1,β)e(Qp,2,αβ) in the regular-weight setting used by CG20, and eαβ=e(Tp,1,α+β)e(Qp,2,αβ) in weight (a,2). The selected module is the intersection of the two generalized root submodules. The two complementary limits are multiplied separately; taking one complement of their product selects an incorrect union.

(CG20, §6.3, p.841; §6.4, p.845, with the joint-selector correction; CG20 line 1640.)

Apply the upstream factorial-powers theorem in each finite quotient and then take the compatible adic limit. Use commuting p-operators to multiply commuting idempotents and identify the image with the intersection. The regular β selector uses the regular residual Qp,2 value αβ; retain the source weight and normalization when transferring selectors.

The construction has the following interfaces.

- An element lies in the selected image exactly when both generalized root conditions hold. Over a field, the singular selected submodule is the intersection of Mathlib’s generalized (α+β)-eigenspace of T and generalized αβ-eigenspace of Q; membership allows separate finite exponents.
- The product selector squares to itself and commutes with the Hecke algebra.
- Reduction to O/ϖᵐ commutes with the selector and with its image splitting.

**Checks.**

- On k² with T=diag(c,c+1), Q=diag(d+1,d), the joint (c,d) selector is zero, whereas the erroneous union formula is the identity.
- For T=diag(c,c+1), Q=diag(d,d), the selector is diag(1,0).
- A nonzero nilpotent Jordan block for T−c belongs entirely to the generalized c part; a simple eigenspace would lose vectors.

Verify the scalar root pairs directly, including points satisfying exactly one of the two conditions.

*Needs:* NR1 (the three nonregular hecke images); IntegralHeckeAndGaloisDeterminants §§2.1–2.3; Mathlib `Module.End.genEigenspace`.

### NR1.3 Katz modularity in weight (a,2)

For the fixed level from NR0, say that r̄ is Katz modular of weight (a,2) with ordered roots α,β when there is a nonzero section η∈H⁰(X,ω(a,2)(−D)k)[m∅] satisfying Tp,1η=(α+β)η and Qp,2η=αβη. The anemic ideal m∅ is of Galois type r̄ using the imported residual-polynomial interface. The cuspidal condition, the actual level and nonzeroness are all part of the predicate.

(CG20, Definition 6.15 and Assumption 6.16, pp.844–845, corrected nonzero cuspidal formulation; CG20 line 1760.)

Specialize the supplied Galois-type maximal-ideal predicate to the coherent cuspidal space and the normalized two p-operators. Relate existence of such η to nonzero residual selected eigenspace, after the coefficient field contains the required eigenvalues.

The construction has the following interfaces.

- Extract a nonzero cuspidal simultaneous eigensection at the specified level.
- Identify Katz modularity with nonvanishing of the selected residual eigenspace under the splitting hypotheses.
- Extend a witness along an injective residue-field extension.

**Checks.**

- A zero selected space has no witness.
- A noncuspidal Eisenstein eigenform with matching p-eigenvalues is not a witness.
- A nonzero class with Tp,1=α+β but Qp,2≠αβ is rejected.

The zero section never witnesses modularity; an eigenclass at an unspecified larger level does not meet the minimal-level hypothesis.

*Needs:* NR1 (the three nonregular hecke images); NR1 (joint ordinary root selectors); IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b.

### Examples

For Q=∅ the diamond generators contribute only the identity.

### Dependencies

AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; NR0; IntegralHeckeAndGaloisDeterminants §§2.1–2.3; IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; Mathlib `Module.End.genEigenspace`. The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR2: Singular-weight Galois interpolation

Construct number fields for coherent eigensystems and apply the all-degree Pilloni–Stroh interpolation to their characteristic-zero actions. State the precise qualified Mok crystalline specialization, the no-Steinberg scalar-weight obstruction, ordinary weight-two Galois systems, the pure general-type monodromy upgrade, dual-spin overconvergent interpolation and completed-eigenspace isotypy through the GSp₄ semisimplicity criteria. Preserve every classification and local qualification.

### NR2.1 Coefficient fields of coherent eigensystems

Let K be neat and Ω(k,r)=ω(k+r,r), k≥0, r∈Z, on the Siegel threefold. Every simultaneous characteristic-zero Hecke character Θ occurring in any finite-dimensional Hⁱ of its canonical or subcanonical extension has values in a number field E. For every λ|p choose an embedding E→Q̄p. Finite-dimensionality is used for this actual Hecke image, so an arbitrary character of a free algebra is not covered.

(P20, Theorem 5.3.1, author p.25; weight convention, author p.24; P20 line 1098.)

Use the rational structure on the algebraic variety and bundle, finite coherent cohomology and the rational Hecke action. The image of the commutative Hecke algebra in EndQ(Hⁱ) is finite-dimensional; the residue field of its characteristic-zero character is finite over Q. Identify all eigenvalues with this common finite field and transport along each chosen p-adic embedding.

**Checks.**

- On a two-dimensional rational Hecke module with generator matrix [[0,2],[1,0]], the eigenvalues are ±√2 and lie in a degree-two field. A free-algebra character sending that generator to a transcendental number does not occur on this module.
- The zero cohomology space has no occurring Hecke character; a zero vector cannot witness occurrence.
- A finite image ℚ×ℚ gives rational characters in either factor, rather than one character mixing the two factors.

Treat both extension conventions and each degree; do not appeal only to a coefficient-field theorem for classical H⁰ forms.

*Needs:* AutomorphicBundles B3; AutomorphicBundlesPartII IC.1–IC.3; AutomorphicBundles B4; ShimuraData §§5.9–5.10, 5.18; IntegralHeckeAndGaloisDeterminants §§2.1–2.3.

### NR2.2 No Steinberg component in scalar weight two

If π is the cuspidal automorphic representation of a classical Siegel form of weight (2,2), then no finite local component is Steinberg in the source’s normalized central-character convention. At a Steinberg place x, the normalized Ux,1 eigenvalue in weight (j,k) is x^((j+k−6)/2), and in weight (2,2) it is x⁻¹, contradicting integrality of the Fourier-normalized Hecke action. Include any allowed finite unramified unit twist in the local calculation; its valuation does not change the contradiction.

(CG20, Theorem 5.9 and proof, p.832; CG20 line 1304.)

Use the exact supplier contract for the local Steinberg parameter and its U-eigenvalue in the exact geometric normalization from SmoothRepresentationsOfLocalGroups SR.4.5 through the local-block contract. Establish integrality of the action on the Fourier lattice and hence integrality of its eigenvalue. At the residue characteristic x that Steinberg eigenvalue has negative valuation; conclude it cannot occur.

**Checks.**

- At weight (2,2) and x=3 the Steinberg eigenvalue is 1/3, of 3-adic valuation −1; multiplying by an unramified integral unit keeps valuation −1.
- At weight (4,2), the same exponent is 0 and the eigenvalue is a unit; the scalar-weight contradiction does not extend to this weight.
- At weight (3,3) the exponent is also 0, detecting a mistaken shift j+k−4 in place of j+k−6.

The proof is an integral Hecke-eigenvalue obstruction, not a consequence of an unproved association of an abelian variety to every weight-two form.

*Needs:* NR0 (weight and frobenius dictionary); AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; SmoothRepresentationsOfLocalGroups SR.2.1–SR.2.3; SmoothRepresentationsOfLocalGroups SR.4.1–SR.4.5; the local-block and projective-Satake gaps above.

### NR2.3 All-degree characteristic-zero interpolation

For the characteristic-zero coherent eigensystems of NR2, the away-p Hecke action factors continuously through the inverse limit of finite free integral Hecke images on cuspidal H⁰ at varying p-levels and finite sets of regular weights. The resulting continuous semisimple ρΘ,λ:GQ→GL₄(Q̄p) is unramified outside Np and satisfies det(1−XρΘ,λ(Frobℓ))=Θ(Qℓ(X)) at ℓ∤Np. This applies to every coherent degree and both canonical and subcanonical extensions. It does not identify the unusual integral models in Pilloni–Stroh with a chosen Kottwitz lattice.

(PS16, Theorem 0.1, pp.1–2; Theorem 3.6 and Remark 3.10, pp.16–17; Corollary 3.14, p.19; P20 Theorem 5.3.1, author p.25; PS16 line 896.)

Import the geometric interpolation input for the modified ample Hodge bundle: Hodge–Tate sections give a Hecke-stable cover, and Čech localization modulo pˢ reduces classes to sections. Clear denominators with high powers, use positivity and Serre vanishing to lift regular-weight sections, and pass through the finite integral Hecke images. Use duality for the other extension convention; reconstruct the semisimple representation from the continuous determinant and good-prime identities. Record an independent lattice-comparison obligation before applying this theorem to a specific torsion integral lattice.

The independent finite-lattice comparison with the CG integral model is the target that identifies the Hecke action on that specified cuspidal O/ϖᵐ lattice with the modified-model action, for every m and coefficient transition. Its hypotheses are the supplied comparison morphism of the two models and compatibility with the boundary, coefficient bundle and normalized correspondences. It is not a premise of the characteristic-zero theorem or a replacement for NR3–NR4.

**Checks.**

- For geometric Frobenius acting by diag(1,2,3,6), det(1−XF)=1−12X+47X²−72X³+36X⁴; using det(X−F) reverses its coefficients.
- The constant term is 1 even at X=0; no division by a Frobenius eigenvalue at a ramified prime is involved.
- A characteristic-zero comparison identifies no reduction lattice: the lattices O and ϖO in E have identical E-span but different embedded modulo-ϖ reductions.

Do not infer CG20 Lemma 6.9 for its torsion lattice solely from this characteristic-zero theorem. Symplectic descent and de Rhamness are separate conclusions requiring their own hypotheses.

*Needs:* NR2 (coefficient fields of coherent eigensystems); IntegralHeckeAndGaloisDeterminants §§1.1–1.7; IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; IntegralHeckeAndGaloisDeterminants IHG.4; AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; HodgeTateAndCanonicalSubgroups §§0.2–0.5; AutomorphicBundles B3.HT; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26.

### NR2.4 Qualified crystalline specialization

For a simple-generic cuspidal GSp₄ representation over a totally real field with archimedean parameter φ(w,m₁,m₂), m₁>m₂≥0 and w+1≡m₁+m₂ mod 2, assume spherical level at every v|p and four distinct inverse Hecke roots there. Under the classification hypotheses, Mok’s associated p-adic representation is crystalline at v|p, hence de Rham, including the stated limit-of-discrete-series cases. This theorem does not assert de Rhamness for every ordinary singular coherent eigensystem.

(M14, §4, Theorem 4.14 and Proposition 4.16, pp.40–42; P20 §5.3, author pp.25–26; M14 line 1677.)

Use the finite-slope family and crystalline-period continuation with its distinct-root hypothesis from the supplier geometric Galois construction. Carry the central character and archimedean parity through the weight dictionary. Apply coefficient extension and de Rham descent from the period-functor API.

**Checks.**

- For (m₁,m₂,w)=(1,0,0), the parity equation is 1≡1 modulo 2 and m₂=0 is allowed; w=1 fails that parity.
- Four inverse roots (1,2,3,4) have six nonzero pairwise differences; (1,1,2,3) has one zero difference and is outside the theorem.
- The spherical hypothesis is stronger than an arbitrary ordinary stabilization; an Iwahori-invariant Steinberg parameter has N≠0 and supplies no spherical crystalline instance.

A repeated-root ordinary representation is outside this specialization; do not remove the distinct inverse-root condition.

*Needs:* NR2 (all-degree characteristic-zero interpolation); PadicHodgeTheory §§3.2–3.6, 4.4, 5.3–5.4; AutomorphicGaloisRepresentationsPartII AG2.6; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26.

### NR2.5 Ordinary weight-two Galois representation

Let F⁺ be totally real with p completely split, and let π be an ordinary cuspidal weight-two GSp₄(A_F⁺) representation in the BCGP25 convention λ=(1,1;2), with central character |·|². There is a continuous semisimple ρπ:G_F⁺→GSp₄(Q̄p), multiplier ε⁻¹. Away from p its Weil–Deligne semisimplification equals recGT(πv|ν|^(−3/2))ss. At v|p it is upper triangular with diagonal α,β,β⁻¹ε⁻¹,α⁻¹ε⁻¹, where α and β are potentially unramified. Neither full monodromy equality nor de Rhamness follows from this basic interpolation statement.

(BCGP25, §1.8.12, p.12; Definition 1.8.16 and Theorem 1.8.17, pp.13–14; BCGP25 line 641.)

Use the ordinary families with dense regular classical points and the fixed central-character identity. Interpolate the symplectic Galois object; at p retain the four ordered ordinary characters and potential unramifiedness. Apply the semisimplified local comparison with its explicit |ν| twist. When ρπ is irreducible, the ε⁻¹-line in ∧²ρπ gives a nondegenerate alternating pairing; in general the GSp₄-valued output comes from GSp₄ pseudocharacters (pseudocharacter supplier contract).

**Checks.**

- For unramified characters α,β the paired diagonal products are ε⁻¹ and ε⁻¹, and the determinant is ε⁻².
- At weight two and geometric Frobenius ℓ=3 the full multiplier is 3 and determinant 9; replacing ε⁻¹ by ε gives 1/3 and 1/9.
- Semisimplification forgets a two-by-two nilpotent block: N=0 and N=[[0,1],[0,0]] both have zero diagonal, so the basic conclusion does not equate monodromy.

The statement is over Q̄p, so no integral descent is involved, also at p=2; the GSp₄-valued interpolation uses Lafforgue's GSp₄ pseudocharacters and their reconstruction over Q̄p.

*Needs:* NR2 (all-degree characteristic-zero interpolation); IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; AutomorphicGaloisRepresentationsPartII AG2.P, AG2.5; PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26; IntegralHeckeAndGaloisDeterminants §1.7 (gap:gsp4-pseudocharacter-reconstruction).

### NR2.6 Pure general-type monodromy upgrade

In NR2.5, if π is of general type and the corresponding ρπ is pure, upgrade the away-p comparison to an equality of Frobenius-semisimplified Weil–Deligne representations retaining monodromy N. The general-type and purity assumptions are not omitted.

(BCGP25, Remark 1.8.20 and its argument, p.14; BCGP25 line 679.)

General type means the transfer to GL₄ is cuspidal, hence locally generic, so πv⊗|ν|^(−3/2) belongs to one of the generic L-packets; by the local contract for generic packets of SmoothRepresentationsOfLocalGroups SR.4.5 the adjoint L-factor of its parameter is holomorphic at s=1. Purity of ρπ makes its Frobenius-semisimplified Weil–Deligne representation pure; by the pure Weil–Deligne uniqueness comparison in that same contract a pure Weil–Deligne representation with the given semisimplification carries the unique monodromy compatible with that holomorphy, which is the monodromy of the automorphic side. Keep the N-bearing comparison distinct from the basic semisimplified interpolation theorem.

**Checks.**

- For r(F)=diag(1,q), the operators N=0 and N=E₁₂ both satisfy r(F)Nr(F)⁻¹=q⁻¹N and have the same r; purity/genericity is needed to choose the permitted monodromy.
- The ranks of those two N are 0 and 1; an equality retaining N must distinguish them.
- For a direct sum of characters the cuspidal GL₄-transfer condition is absent; semisimplified matching alone does not activate this upgrade.

An unramified-trace identity alone cannot certify this target. The adjoint input is local (holomorphy at s=1 of a local adjoint L-factor), not a global analytic statement.

*Needs:* NR2 (ordinary weight-two galois representation); AutomorphicGaloisRepresentationsPartII AG2.P, AG2.5; AutomorphicLFunctionsAndLocalFactors AL.4; SmoothRepresentationsOfLocalGroups SR.4.5 (gap:gsp4-local-blocks-and-monodromy); ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26.

### NR2.7 Dual-spin overconvergent interpolation

For an ordinary overconvergent eigenform f∈H⁰⁰_w(Sh_Kp,ω(2,2;−w),sm), with w even and smooth torus character χ=χ₁⊗χ₂⊗χ₃⊗χ₄, construct its semisimple GSp₄ representation ρf with good-prime polynomial Pℓ in BCGP25’s dual-spin convention: at classical points it is ρπ∨ε⁻³. Under local reciprocity the ordered p-diagonal characters on z∈Qp× are χ₄(z)⁻¹z^(−1−w/2), χ₃(z)⁻¹z^(−1−w/2), χ₂(z)⁻¹z^(−2−w/2), χ₁(z)⁻¹z^(−2−w/2). Specify the reciprocity convention on p as well as Zp×.

(BCGP25, Lemma 4.12.1 and its proof, p.112; Remark 4.12.2, p.112; BCGP25 line 5020.)

Import higher-Hida/overconvergent spaces and their local torus action. Interpolate the dual-spin polynomial with the central operator and compare with the classical dual-and-twist formula. Read the local characters from the ordered torus eigensystem, correcting the double inverse printed in the final two entries of BCGP25 Lemma 4.12.1.

Here Art(p) is geometric Frobenius. The integer exponents require even w; no half-integer character is introduced. The GSp₄-valued interpolation uses the pseudocharacter reconstruction contract, including reducible specializations.

**Checks.**

- At w=0 and all χᵢ=1 the exponents are −1,−1,−2,−2; at w=2 they are −2,−2,−3,−3.
- A smooth χ₂ with χ₂(u)=ζ₃ gives third diagonal value ζ₃⁻¹u^(−2−w/2); a duplicated inverse would give ζ₃ instead.
- At z=p the algebraic factors are p^(−1−w/2) and p^(−2−w/2). With w=0 and trivial χ these are p⁻¹ and p⁻², so this formal torus datum is not asserted to occur as the character of an ordinary eigenform; the actual smooth eigencharacter supplies the normalization required for a continuous compact Galois image.

Never identify this dual-spin representation with the geometric-spin ρπ without the indicated dual and cyclotomic twist.

*Needs:* NR2 (ordinary weight-two galois representation); IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; IntegralHeckeAndGaloisDeterminants IHG.4; PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; IntegralHeckeAndGaloisDeterminants §1.7 (gap:gsp4-pseudocharacter-reconstruction).

### NR2.8 Completed eigenspace isotypy

Let V=H³(RHom_b(λ,RΓ(Sh_Kp^tor,Qp)^la)^ord_mρ̄), λ=(1,1;w), with the algebraic torus character removed as in BCGP25. Assume residual absolute irreducibility, ρf irreducible, and either Zariski image containing Sp₄, or image containing SL₂×SL₂ with ρf becoming reducible on an index-two subgroup. For an occurring eigenform f, the eigenspace V[mf] is nonzero, finite-dimensional and isomorphic to ρf⊗W for a finite-dimensional nonzero multiplicity space W.

(BCGP25, Lemma 4.12.3 and proof, p.113; Propositions 4.11.1–4.11.2, pp.109–110; Theorem 1.8.29, p.17; BCGP25 line 5046.)

Use the four higher-Coleman graded pieces and exactness of χ-isotypic parts for smooth T(Zp)-modules in characteristic zero: (V⊗Cp)[χ] is finite-dimensional, with Gr⁰ the ordinary overconvergent H⁰. The maximal ideal mf lies in the support of the finite-length module (V⊗Cp)[χ], through its quotient Gr⁰, so its mf-torsion is nonzero; no exactness of the eigenspace functor is needed. Each Frobℓ satisfies Pℓ mod mf on V[mf] by the Eichler–Shimura relation. In the index-two case identify the two constituents ϱ and ϱᶜ, and derive det ϱ=ν on that subgroup from the symplectic pairing and the independent SL₂ factors. Apply the GSp₄ semisimplicity criteria for representations annihilated by the Frobenius characteristic polynomials of ρf (BCGP25 Propositions 4.11.1–4.11.2); the Cayley–Hamilton recognition of IntegralHeckeAndGaloisDeterminants Layer 1.6 needs annihilation by the whole Cayley–Hamilton ideal and does not apply directly.

**Checks.**

- With dim W=1 or 2, dim(ρf⊗W)=4 or 8; a nonzero eigenspace of dimension 3 contradicts the annihilation criterion.
- For A=E[t]/(t²), the nonzero quotient A/(t) has dimension 1 and the socle of A is E·t, also dimension 1; this illustrates finite-length support without eigenspace exactness.
- A nonsplit two-dimensional unipotent extension has (g−1)²=0 but g−1≠0; equality of semisimplified characters does not give the full annihilation identity.

The conclusion includes W≠0, not only a multiple-of-four dimension assertion. Only the Frobenius characteristic polynomials are known to annihilate V[mf]; the image hypothesis is what makes this enough.

*Needs:* NR2 (dual-spin overconvergent interpolation); PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; IntegralHeckeAndGaloisDeterminants §§2.1–2.3; ArithmeticGaloisRepresentations §7.6.

### Examples

In scalar weight two, a geometric-spin representation with Hodge–Tate multiset {0,0,1,1} becomes a coherent dual-spin representation with multiset {2,2,3,3}: duality negates the weights and twisting by ε⁻³ adds 3. Its multiplier changes from ε⁻¹ to ε⁻⁵, because duality inverts the multiplier and a rank-four scalar twist squares its character. This checks both normalizations and does not infer de Rhamness from an ordinary filtration.

### Dependencies

ArithmeticGaloisRepresentations §7.6; AutomorphicBundles B3; AutomorphicBundlesPartII IC.1–IC.3; AutomorphicBundles B4; ShimuraData §§5.9–5.10, 5.18; AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; AutomorphicGaloisRepresentationsPartII AG2.P, AG2.5; AutomorphicGaloisRepresentationsPartII AG2.6; AutomorphicLFunctionsAndLocalFactors AL.4; SmoothRepresentationsOfLocalGroups SR.4.5 (gap:gsp4-local-blocks-and-monodromy); NR0; PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; HodgeTateAndCanonicalSubgroups §§0.2–0.5; AutomorphicBundles B3.HT; IntegralHeckeAndGaloisDeterminants §§1.1–1.7; IntegralHeckeAndGaloisDeterminants §§2.1–2.3; IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; IntegralHeckeAndGaloisDeterminants IHG.4; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26; PadicHodgeTheory §§3.2–3.6, 4.4, 5.3–5.4; SmoothRepresentationsOfLocalGroups SR.2.1–SR.2.3; SmoothRepresentationsOfLocalGroups SR.4.1–SR.4.5; the local-block and projective-Satake gaps above. The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR3: Finite-level Hasse transfer and regular Galois systems

Construct Hasse lifts with finite-level congruences and use the supplied vanishing thresholds to transfer actual selected image quotients. The annihilator belongs to the selected summand. Construct central characters, residual Galois systems and regular Hecke-valued representations with ordered ordinary local characters. A stronger p-polynomial identity is recorded separately as a proof gap.

### NR3.1 Hasse shifts and the vanishing threshold

For μ=(a,b), use the supplied primary scalar Hasse invariant h of weight (p−1,p−1), construct a characteristic-zero lift A of hʳ with r>0, and choose a threshold N(μ) for higher-cohomology vanishing after a sufficiently positive scalar shift. For coefficients O/ϖᵐ choose s divisible by p^(m−1) with t=rs(p−1)≥N(μ), and set μ′=μ+(t,t). Multiplication by Aˢ is injective on sections and is equivariant for the normalized away-p Hecke action. Equivariance for the normalized p-operators is a separate assertion and is not inferred from this construction.

(CG20, Definition 6.1, Definition 6.3, Lemma 6.4 and Remark 6.5, pp.836–837; CG20 line 1434.)

Use the primary Hasse invariant from HodgeTateAndCanonicalSubgroups §0.14 and construct the lift and finite-level congruences as follows. Choose the shift using the supplied positivity/vanishing theorem, preserving the difference a−b. Prove integral injectivity using that the multiplier is a nonzerodivisor on the appropriate model; identify precisely the operators with which it commutes.

The integer N(μ) is chosen for the finite set of levels used in this comparison; write N(μ,levels) when those levels vary.

Choose a positive determinant power descending to the minimal model and a high Hasse power hʳ there. Use its ample twist and the coefficient reduction sequence to lift it to an integral section A, then pull A back to all tame auxiliary levels. It is a chosen lift. If a and b are two local lifts of the same section modulo ϖ, prove a^(p^(m−1))≡b^(p^(m−1)) modulo ϖᵐ for m≥1; binomial expansion uses p∈ϖO, not vϖ(p)=1. Include line-bundle transition functions in this congruence before gluing. This proves the away-p isogeny equivariance of Aˢ for the prescribed s. Apply the componentwise nonzerodivisor criterion and then the ϖ-filtration to prove injection on all O/ϖᵐ cuspidal sections. The API includes the reduction A mod ϖ=hʳ, pullback and deck invariance of the same chosen A, comparison of two choices after the stated exponent, and arbitrarily large admissible shifts. At p=2 the local congruence (1+2)²≡1 modulo 4 has values 9≡1; for a ramified ϖ with ϖ²=2, (1+ϖ)²−1=2ϖ+ϖ² is divisible by ϖ². The finite-coefficient congruence includes every prime; the CG application keeps its own odd-p range (CG20 Definition 6.1 and Lemma 6.4, pp.836–837; P20 proof of Theorem 11.2.1, p.70; CG20 line 1434 and line 1467).

No bound uniform over all Q is required. The Hasse coefficient is a nonzerodivisor on every relevant connected component.

The construction has the following interfaces.

- Return the exact shifted pair μ′ and preserve a−b.
- The multiplication map on sections has zero kernel under the supplied geometric hypotheses.
- Intertwine the good-prime normalized Hecke operators modulo ϖᵐ.

**Checks.**

- A scalar shift takes (4,2) to (4+t,2+t), preserving difference 2.
- For p=5,m=3 choose s divisible by 25; s=5 alone does not meet this finite-level requirement.
- A nonconstant Hasse shift does not by itself identify the two normalized p-operator eigenvalues.

Track m and the divisibility of s; a lift merely congruent to hʳ modulo ϖ need not have the required equivariance modulo ϖᵐ.

*Needs:* NR1 (the three nonregular hecke images); AutomorphicBundles B4; ShimuraData §§5.9–5.10, 5.18; AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; ShimuraCompactifications C5.13–C5.18; AutomorphicBundlesPartII IC.5; HodgeTateAndCanonicalSubgroups §0.14; the Hasse lift/congruence targets of NR3.1.

### NR3.1a Secondary Hasse geometry

Over a reduced characteristic-p base B, let G be a height-four dimension-two BT₁ whose multiplicative and étale ranks are both constantly one. Use its multiplicative-connected filtration Gᵐ⊂Gᵒ⊂G and put Gᵒᵒ=Gᵒ/Gᵐ. In its rank-two Dieudonné crystal the Hodge subline and quotient have zero induced Verschiebung; reducedness turns pointwise vanishing into vanishing of the sheaf maps. The remaining map v:(ω_((Gᵒᵒ)ᴰ))∨→ω_(Gᵒᵒ)^p is an isomorphism. Define the secondary determinant section from v^(p−1), the determinant comparison under Cartier duality, and the (p+1)st power of the multiplicative Hasse section. It lies in (det ω_G)^(p²−1), is a unit on this rank-one locus, commutes with reduced base change, and obeys Cartier duality through the same determinant comparison. The connected height-three boundary object obtained by deleting the étale quotient has the same differential section; no height-four duality assertion is inferred for it (P20 §6.3.2, pp.30–31; P20 line 1345).

On a normal reduced base with generically these ranks, impose the rank-one Hasse–Witt condition: the kernel in ω_G is a line subbundle and direct factor. Prove extension of the secondary section there. On the actual genus-two compactified nonordinary Cartier divisor, prove its boundary extension, prime-to-p Hecke equivariance and nonvanishing on every irreducible component. Prove the divisor is Cohen–Macaulay and has no embedded associated components; conclude multiplication by this section is injective on its locally free coefficients. On the rank-one open of the supersingular curve in odd characteristic the secondary section has order two on the reduced divisor, so its zero scheme is not silently identified with that reduced divisor. Here I_(1,1) denotes the height-two dimension-one local-local BT₁ of a supersingular elliptic curve. The theta and level-descent arguments use the resulting geometric section with its actual multiplicity (P20 §§6.3.3–6.4, pp.31–36; CG20 proof of Lemma 7.5, pp.849–850; P20 line 1374, CG20 line 1910).

The secondary section has the following interfaces.

- Its determinant exponent is p²−1 and its formation commutes with morphisms of reduced bases preserving the indicated filtration.
- Passing from G to Gᵒ preserves the section under the invariant-differential comparison, and in height four the Cartier-dual determinant isomorphism carries it to the dual section.
- Its extension to the stated compactified Cartier divisor is a nonzerodivisor, and multiplication respects the away-p level correspondences and trace.

**Checks.**

- For μₚ⊕I_(1,1)⊕ℤ/p over an algebraically closed field, the primary Hasse section is 0 while the secondary section is a unit; deleting ℤ/p keeps the same invariant differentials.
- The determinant exponent contributed by the multiplicative factor is (p−1)(p+1)=p²−1: at p=5 it is 24, not 4.
- On k[ε]/(ε²) the endomorphism multiplication by ε is zero at the unique geometric point and is nonzero as a sheaf map. This base is outside the reduced-base pointwise argument.
- In k[x,y]/(xy), x is zero on an entire component and kills y; mere reducedness would not prove the asserted nonzerodivisor property.

*Needs:* FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.1–R07.2 for the multiplicative-connected filtration and BT₁ crystal; HodgeTateAndCanonicalSubgroups §§0.14–0.15 for the primary section; AutomorphicBundles B3–B5; ShimuraCompactifications C5 for the actual smooth genus-two and boundary models; NR3.1 for primary Hasse normalization. The section and extension theorem, rather than an unrestricted nonreduced BT₁ theory, are the new targets here.

### NR3.2 Selected annihilator quotients

For the selected finite-level module Hμ,m^sel specialize the supplied action-annihilator to Jμ,m^sel=Ann(Tμ^sel,Hμ,m^sel), and its enlarged-image counterpart. The regular-weight comparison uses the composite e′β∘Aˢ on the β-part. Once this composite is proved injective, it induces a surjection from the high-weight Hecke image to Tμ^sel/Jμ,m^sel for the operators whose actions intertwine. The target ideal is the annihilator of the selected module, not that of the full coherent module.

(CG20, Remark 6.5, p.837; proof of Theorem 6.13, pp.842–843; selected-annihilator correction; CG20 line 1483.)

Define the annihilator using the actual action on the named summand. For regular β-parts prove injectivity on the socle using the residual p-operator formulas, and then on the finite local module. Factor the intertwining action through the image quotient; show surjectivity on the specified generating operators. In singular weight postpone the corresponding injection until NR4.8.

The construction has the following interfaces.

- An operator belongs to J exactly when it annihilates every vector of the selected O/ϖᵐ module.
- Compatible finite-level actions give the correct transition homomorphisms of image quotients.
- An injective intertwiner induces the specified surjection onto the selected image quotient.

**Checks.**

- For T=k×k acting on k² and selector onto the first coordinate, Jsel=0×k, whereas the full annihilator is zero.
- For a zero selected module the annihilator is the entire ring and the selected image quotient is the zero ring.
- An injective linear map that does not intertwine a chosen generator supplies no image-algebra surjection for that generator.

Do not claim that Aˢ alone preserves the β-summand, or that the full p-characteristic-polynomial identity descends by away-p equivariance.

*Needs:* NR1 (joint ordinary root selectors); NR3 (hasse shifts and the vanishing threshold); IntegralHeckeAndGaloisDeterminants §§2.1–2.3.

### NR3.3 Central characters and residual Galois systems

For every maximal ideal of the anemic image in NR1 there is a continuous semisimple residual GL₄ representation matching the good-prime spin polynomial. It is unique up to isomorphism; if absolutely irreducible, it has an alternating pairing and the full prescribed central multiplier, and is non-Eisenstein. Its pullbacks along T→T̃ and ordinary/selected image maps have the same residual representation. The central character is constructed independently from the full spherical central operators, not inferred from the determinant square.

(CG20, Proposition 6.6, pp.837–838; Proposition 6.8 and Lemma 6.9, pp.838–840; Definition 6.11, p.840; CG20 line 1500.)

Use the Hasse transfer of NR3 for finite-quotient residual systems, characteristic-zero regular eigenforms and the imported reconstruction theorem. Construct the residual systems after the Hasse comparison; NR1 uses the corresponding matching-polynomial ideal only when this existence theorem is invoked. For simple-generic characteristic-zero systems use the alternating pairing theorem; in the reducible non-simple-generic cases specify each constituent and its pairing before reducing. Do not assert that reducibility itself implies symplecticity. Interpolate the full central Hecke character and compare it with the representation multiplier; transport to the other image rings by the shared good polynomials.

**Checks.**

- For paired roots (1,2,3,6), multiplier 6 has determinant 36; its negative −6 has the same square and is not determined by that determinant.
- Over 𝔽₅, diag(1,2,−2,−1) has trace 0 and paired products 4 and 1, so it fails the prescribed common multiplier despite determinant 4; trace and determinant do not fix a pairing.
- The zero action image is the zero ring and has no maximal ideal; existence of a residual representation is quantified over actual maximal ideals.

Keep Arthur/classification assumptions visible from Lemma 6.9 onward. Absolute irreducibility, not irreducibility over the residue field alone, is required for the integral reconstruction and unique pairing.

*Needs:* NR1 (the three nonregular hecke images); IntegralHeckeAndGaloisDeterminants §§1.1–1.7; IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; IntegralHeckeAndGaloisDeterminants IHG.4; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26; NR3 (selected annihilator quotients).

### NR3.4 Regular-weight Hecke-valued Galois representation

For regular μ=(a,b), a≥b≥3, a non-Eisenstein maximal ideal with residual r̄, the prescribed tame level and labelled auxiliary primes, construct rβμ,m:GQ→GSp₄(Tμ(Q)β_m). It matches every good-prime spin polynomial away from S∪Q∪{p}; has multiplier χμ,0ε^(−(a+b−3)) with χμ,0 finite order and residually trivial; and is upper triangular at p with diagonal λ(dp,1), ε^(−(b−2))λ(dp,2), ε^(−(a−1))λ(dp,3), ε^(−(a+b−3))λ(dp,4), where dp,1≡β and dp,2≡α. After an odd-p square-root character twist it has the required weakly minimal away-p local conditions. The additional equality involving the complete Hecke polynomial at p is not included without a separate proof.

(CG20, Theorem 6.13(1)–(4) and proof, pp.841–844, restricted to the assertions transported by the proof; CG20 line 1652.)

At high regular weight use vanishing, a torsion-free characteristic-zero eigenform decomposition and the supplied regular Galois representations. The Hecke image embeds into the product of their integer rings. Import the regular-weight eigenform representations of CG20 Proposition 6.8 (existence, crystalline at p with Frobenius polynomial Qp, ordinary shape, symplectic pairing, local–global compatibility) from the automorphic Galois suppliers. Descend traces and the full multiplier into the integral image by the IntegralHeckeAndGaloisDeterminants §1.5 odd-p symplectic descent theorem; pass to selected finite-quotient image rings. Obtain the ordered ordinary characters from the regular ordinary theory, carrying their four cyclotomic exponents. Take the compatible inverse limit and use the unique finite-character square root congruent to 1 to fix the multiplier; verify weak minimality prime by prime, including unramifiedness at q.

**Checks.**

- The four cyclotomic exponents at (a,b)=(4,3) are 0,−1,−3,−4; paired sums are −4, as required by ε^(−4).
- At b=2 the first two exponents both become 0, so the regular theorem cannot supply the two independent lines without doubling.
- Over k² let the two named away-p generators act identically in two models but let an extra p-generator be 0 in one and 1 in the other; away-p intertwining proves no equality for the extra generator.

The proof must identify the local characters on the selected quotient; a p-polynomial identity requires more than a good-prime trace descent. Do not use the unproved torsion-freeness expectation of Remark 6.14.

*Needs:* NR3 (selected annihilator quotients); NR3 (central characters and residual galois systems); NR2 (qualified crystalline specialization); IntegralHeckeAndGaloisDeterminants §§1.1–1.7; IntegralHeckeAndGaloisDeterminants IHG.4; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above; AutomorphicGaloisRepresentationsPartII AG2.P, AG2.5; AutomorphicGaloisRepresentationsPartII AG2.6; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26.

### Examples

A scalar shift takes (4,2) to (4+t,2+t), preserving difference 2.

### Dependencies

AutomorphicBundles B4; ShimuraData §§5.9–5.10, 5.18; AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; AutomorphicGaloisRepresentationsPartII AG2.P, AG2.5; AutomorphicGaloisRepresentationsPartII AG2.6; NR1; NR2; IntegralHeckeAndGaloisDeterminants §§1.1–1.7; IntegralHeckeAndGaloisDeterminants §§2.1–2.3; IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; IntegralHeckeAndGaloisDeterminants IHG.4; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26; ShimuraCompactifications C5.13–C5.18; AutomorphicBundlesPartII IC.5. The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR4: Cuspidal Fourier doubling

Specialize the formal U,Z,Z₂,X₂ operators and Hasse spaces in characteristic p. Prove ordinary-envelope control and the two kernel systems. Use corrected scalar/vector theta inputs, an all-index contraction obligation and a separately checked scalar recurrence to obtain both root-labelled Hasse-projection injections. Keep all needed weight bounds and restrict the minimal-discriminant argument to cuspidal forms.

### NR4.1 Formal operators in the doubling argument

Work over k of odd characteristic p, with tame level prime to p and trivialized auxiliary Nebentypus, in weights (j,2) with j≥4 or j=2. Let q-series have coefficients in Sym^(j−2)(k²), indexed by p-integral positive-semidefinite binary forms Q with bounded tame denominators and the prescribed Γ-equivariance. Set a(UF;Q)=a(F;pQ). For integral representatives M of Γ diag(p,1) Γ, set a(ZF;Q)=ΣM Sym^(j−2)(M)a(F;M⁻¹·Q), interpreting nonintegral indices as zero, where M·Q=det(M)⁻¹MQMᵗ. Put Z₂=UZ and a(X₂F;Q)=(disc(Q)/p)a(F;Q). An integral binary-form index Q is p-primitive when its three coefficients are not all divisible by p; this is a condition on the index, not on a series over k.

(CG20, §§8.1–8.3, Theorem 8.1, Lemmas 8.3–8.6 and Definition 8.7, pp.856–859; CG20 line 2273.)

Import the general Fourier-series, q-expansion and symmetric-power coefficient APIs from AutomorphicBundlesPartII through the Hasse and p-action contracts. Define these specialized operators by the displayed finite sums and coefficient functions, and prove independence of the double-coset representatives. Use the discriminant of the binary form consistently; the Legendre multiplier is zero when p divides the discriminant. Use the Fourier-index formulas to prove Z₂X₂=0, UX₂=0 and X₂³=X₂ in characteristic p.

For Q=[[m,r/2],[r/2,n]], use d(Q)=r²−4mn in every Legendre symbol. The finite-index action and the dual coefficient action are fixed together before taking reduction; a p-divisible discriminant does not mean all three coefficients are divisible by p.

The construction has the following interfaces.

- Give the U,Z,Z₂,X₂ coefficient formulas at each index.
- Prove Z₂=UZ, Z₂X₂=0, UX₂=0 and X₂³=X₂ over k.
- Show Γ-equivariance makes the finite-sum Z action independent of coset representatives.

**Checks.**

- Over F₅, X₂ multiplies a coefficient of discriminant 1 by 1, of discriminant 2 by −1, and of discriminant 0 by 0.
- A series supported at pQ contributes its coefficient to a(UF;Q), not to a(UF;p²Q).
- The binary-form index with coefficients (1,0,p) is p-primitive but has discriminant divisible by p; these conditions must not be conflated.

Do not assert that every formal series is modular. The modularity of T and Q₂ is a separate supplied geometric result.

*Needs:* AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; NR1 (the three nonregular hecke images).

### NR4.2 Theta operators with corrected weights

Construct the scalar theta operator Θ with Fourier multiplier det(Q) and its injectivity in the range 2≤k≤p+1, p∤k(2k−1), excluding k=p−1. Construct the vector operator θ₁ from weight (j,k) to (j+p−1,k+p+1) with coefficient con(a(F;Q)⊗Q), with no extra determinant factor. For the doubling use p>3 and p−1>j≥4, where θ₁ is injective on the required modular forms. These are geometric operator and injectivity targets of this subsection; the scalar Hasse exception and vector coefficient normalization are part of their statements.

The two characteristic-p operators have the following interfaces.

- They are k-linear and preserve cuspidality, with scalar weight shift (p+1,p+1) and vector shift (p−1,p+1).
- Scalar coefficients are multiplied by det(Q); vector coefficients use the fixed dual-basis contraction, with no additional determinant. The change-of-frame identities put these expressions in the indicated target coefficient bundles.
- Extension of residue fields commutes with both constructions, their Fourier formulas and the stated injectivity comparisons in the same weight ranges.


(CG20, Proposition 8.9 and Theorems 8.10–8.11, pp.861–863, with the scalar Hasse exception and vector-formula correction; CG20 line 2402.)

Use the exact supplier contract for the geometric theta construction and its holomorphy, weight and injectivity from NR3.1–NR4.2. Separate the scalar determinant multiplier from the vector contraction; the contraction is a nonzero integral transvectant in the valid coefficient range. Test Θ on the Hasse invariant to exclude the erroneous k=p−1 case; for the scalar-weight argument use precisely k=p+1.

**Checks.**

- On scalar Fourier coefficients, determinant 1 carries coefficient 1 to 1, determinant 0 carries it to 0, and the zero coefficient stays 0; these values distinguish scalar theta from the vector contraction.
- In the p=7 contraction model, scaling the input coefficient by 2 changes contraction 5 to 3=2·5, while the zero input gives 0; field extension preserves these values.
- At scalar k=p−1, the nonzero Hasse series 1 has theta equal to 0; this excludes an injectivity statement at that weight.
- At p=7,k=p+1=8, k(2k−1)=120≡1 modulo 7, so the scalar arithmetic exclusion is satisfied.
- For j=4 the vector target weight is (p+3,p+3). With the elementary contraction normalized by con(e₂²⊗f₁²)=−2 in dual bases, a rank-one index f₁² at p=7 gives contraction 5 and determinant 0; the extra determinant factor would change 5 to 0 (CG20 p.877; CG20 line 2951).

The vector contraction has no determinant prefactor, and all stated theta identities are in characteristic p.

*Needs:* NR4 (formal operators in the doubling argument); AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; AutomorphicBundles B3–B5; NR3.1a and the theta geometry of NR4.2.

### NR4.3 The source and enlarged q-expansion spaces

Let M be the q-expansions of the localized selected cuspidal weight-(j,2) k-space and let N be its Hasse embedding into a sufficiently regular modular-form space, viewed in the same formal coefficient space because h has expansion 1. Keep the finite-dimensional ambient Hecke-stable space and its U-generalized decomposition N=Nα⊕Nβ⊕N₀. Let πβ be the normalized idempotent projection onto Nβ. A power of U−α can have the same kernel in the relevant subspace, but is not defined to be πβ.

(CG20, §8.6, Theorem 8.13 and Lemmas 8.15–8.17, pp.864–870; CG20 line 2525.)

Use the q-expansion principle to regard Hasse multiplication as an inclusion of the same coefficient vectors. Enlarge to a finite-dimensional U-stable modular space before discussing generalized eigenspaces. Import the ordinary regular root calculation to prove that U(U−α)(U−β) acts nilpotently; use distinct α,β,0 to split N.

The construction has the following interfaces.

- The source coefficient vector equals its Hasse-multiplied vector in N.
- Decompose N as its α, β and zero generalized U-parts, with sum of normalized projections equal to 1.
- Identify ker πβ as Nα⊕N₀ and give the corresponding kernel criterion for powers of U−α on the relevant ordinary subspace.

**Checks.**

- A nilpotent Jordan block for U lies in N₀ even though its nonzero vectors need not be killed by U itself.
- On a β-eigenvector, πβ acts by 1; (U−α)ᵐ acts by (β−α)ᵐ, which need not equal 1.
- The construction records an ambient U-stable envelope instead of asserting U(M)⊂M.

The input M need not be U-stable; every use of U iteration must take place in its finite U-stable envelope.

*Needs:* NR1 (joint ordinary root selectors); NR3 (hasse shifts and the vanishing threshold); NR4 (formal operators in the doubling argument); Mathlib `Module.End.genEigenspace`.

### NR4.4 Invertible Q₂ and the U-ordinary envelope

For the spaces M⊂N of NR4, use T=U+Z and, in characteristic p and weight (j,2), Q₂=Z₂ for j>2 and Q₂=Z₂+X₂ for j=2. If Q₂ is invertible on M, then for j>2 M is contained in the U-invertible part of N. For j=2, Z₂ is injective on M and its image is contained in the U-invertible part. The proof uses W=Σi≥0UⁱM, which is finite-dimensional and U-stable, and Z₂W⊂UW.

(CG20, Lemma 8.15 and proof, pp.867–868; Lemma 8.16, p.868; CG20 line 2623.)

Enlarge M to W and use UZ=Z₂ with commutation of U and Z₂ to obtain Z₂W⊂UW, then iterate inside W. For j>2 use invertibility of Q₂=Z₂ to place M in ∩nUⁿW. For j=2 use X₂³=X₂, Z₂X₂=0 and the eigenvalue Q₂=αβ with (αβ)²≠1 to deduce injectivity of Z₂, before applying the same envelope argument.

**Checks.**

- On a nilpotent two-dimensional U-block, ∩ UⁿW=0; on an invertible two-dimensional block, that intersection is W.
- If Z₂F=0 in scalar weight, Q₂F=X₂F=cF implies (c³−c)F=0. For c=6 in 𝔽₁₁, c³−c=1, so F=0; c=1 would give 0 and is excluded.
- A space spanned by e₁ with Ue₁=e₂ is not U-stable; its U-stable envelope has dimension 2. Iteration on the first space alone is undefined.

Do not use Q₂-invertibility on a larger unrelated space; the envelope argument repairs the missing stability step.

*Needs:* NR4 (the source and enlarged q-expansion spaces); NR4 (formal operators in the doubling argument).

### NR4.5 Contraction on all Fourier indices

For j≥4 in the theta range, prove the formal characteristic-p identity θ₁(ZF)=0 for every Γ-equivariant integral q-expansion of weight (j,2), including coefficients whose discriminant is divisible by p. This is the all-index coefficient theorem needed by cuspidal doubling; CG20 Proposition 8.25 motivates the contraction calculation. Its proof obligation is the integral transvectant equivariance identity: contraction of Sym^(j−2)(M)v against M·Q equals det(M) times the transported contraction of v against Q, in the exact dual-form convention, when det(M)=p.

(CG20, Proposition 8.25, contraction claim and proof, pp.876–877; Proposition 8.9, p.861; CG20 line 2925.)

Write the contraction in the chosen binary-form coordinates over Z localized away from the required factorial denominators. Verify the GL₂ covariance with the precise determinant-normalized action on indices and the dual/contraction conventions; reduce modulo p only after clearing justified denominators. Apply the identity term by term to the finite Z sum for every index, not only a minimal-discriminant coefficient. The all-index annihilation is a proof obligation of this subsection, including singular discriminants; the endpoint theorems retain it as a premise until proved.

Retain the exact source and target coefficient representations: θ₁ maps weight (j,2) into (j+p−1,p+3). The intended integral identity is required for the actual transported coefficient in each summand of Z, with all factorial denominators units under p−1>j≥4; it is not a theorem about arbitrary unrelated binary forms and vectors.

**Checks.**

- For det(M)=p, the integral covariance has a factor p, hence its reduction is 0 even at indices with d(Q)≡0 modulo p. A proof dividing by d(Q) cannot handle Q=(1,0,p).
- At Q=(1,0,p), d(Q)=−4p and det(Q)=p; both reduce to 0 although Q remains p-primitive.
- At p=7 the discriminant multipliers for Q=diag(1,1) and Q=diag(1,2) are −1 and −1, while the determinant multipliers are 1 and 1; the same sign convention is required before contraction is reduced.

This target is a proof obligation, not a claimed new proof of Proposition 8.25. A vanishing contraction at one chosen Fourier index does not imply θ₁F=0.

*Needs:* NR4 (theta operators with corrected weights); NR4 (formal operators in the doubling argument).

### NR4.6 The two constrained kernel systems

A nonzero kernel of πβ∘h on the selected source yields a nonzero constrained vector after simultaneous finite-dimensional spectral reduction. For j>2, take F with UF=αF, TF=(α+β)F and hence ZF=βF. For j=2, write F=Fα+F₀ with UFα=αFα, UF₀=0, X₂F=αβF₀ and ZF=βF+αF₀, while Q₂F=αβF. These are consequences for a reduced kernel vector, not equalities asserted on every generalized eigenvector.

(CG20, Lemma 8.17 and proof, pp.868–871; CG20 line 2660.)

Use the commuting selected Hecke action on the nonzero kernel to pass to a simultaneous eigenvector over a splitting field. In j>2 eliminate N₀ with the ordinary-envelope theorem and identify the remaining α-eigenvector. In j=2 retain the zero-root component and derive its X₂ and Z relations from the formal operators; never discard F₀ without proof.

**Checks.**

- For j>2, UF=αF and (U+Z)F=(α+β)F give ZF=βF by subtraction, not αF.
- For the scalar decomposition, UF=αFα and ZF=βFα+(α+β)F₀ give TF=(α+β)(Fα+F₀); deleting F₀ changes the zero-root coordinate.
- On the α-Jordan block [[α,1],[0,α]], the generalized α-vector e₂ has Ue₂=αe₂+e₁, so the eigenvector equalities apply only after spectral reduction.

The scalar-weight system contains the extra αF₀ term; omitting it would falsely simplify the hardest case.

*Needs:* NR4 (invertible q₂ and the u-ordinary envelope); NR4 (the source and enlarged q-expansion spaces).

### NR4.7 Vanishing of constrained cuspidal vectors

Under the root condition and p−1>j≥4, a cuspidal vector satisfying UF=αF and ZF=βF vanishes, using NR4.5 and theta injectivity. In weight (2,2), a cuspidal vector satisfying the full scalar system of NR4.6 also vanishes. The statement is restricted to cusp forms, so the minimal-discriminant argument starts with a positive-definite coefficient and does not assume a nonzero discriminant for an arbitrary noncuspidal series.

(CG20, Theorem 8.22 and §§8.7–8.9, pp.873–877, with the cuspidal restriction and scalar correction; CG20 line 2818.)

For j>2 use βθ₁F=θ₁ZF=0 and β≠0, then the imported vector theta injectivity. The all-index contraction obligation must be discharged first. For the scalar case show coefficients at nonsquare discriminants vanish by the Z-neighbor relation and β²≠1; handle p-divisible discriminants via a minimal positive discriminant and a p-primitive neighbor argument. Represent the scalar difference F−X₂F in weight (p+1,p+1) by hF−hQ₂F+Q₂(hF), then use the scalar theta injectivity at k=p+1. Do not claim that X₂F is modular of weight (2,2). Conclude F=X₂F; UX₂=0 and the retained scalar kernel relations, together with (αβ)²≠1, force F=0. Neighbor cycles and Lemma 8.24 supply checks on the coefficient recurrence, not a substitute for all-index contraction.

**Checks.**

- With β=3 in 𝔽₁₁, βθ₁F=0 gives θ₁F=0 because 3·4=1; β=0 would not.
- The constant series has only discriminant 0 and no positive-definite leading index; cuspidality excludes it from the minimal-positive-discriminant argument.
- At p=7 the scalar comparison has weight (8,8), rather than (2,2); its Hasse factor has weight (6,6) and expansion 1.

The theta weight is exactly p+1 in the scalar step; an arbitrary large Hasse shift is not interchangeable with it. The scalar p-primitive/minimal-discriminant recurrence remains an explicit verification obligation.

*Needs:* NR4 (the two constrained kernel systems); NR4 (contraction on all fourier indices); NR4 (theta operators with corrected weights).

### NR4.8 The two Hasse-projection injections

For cuspidal weight (j,2), j=2 or 4≤j<p−1, residual roots satisfying NR0 and the chosen non-Eisenstein eigensystem, the maps from the selected source to the regular β-part given by e′β∘Aˢ are injective, and likewise with α and β exchanged. This holds at the stated finite coefficient quotients after lifting the residual injectivity through the torsion filtration. It is conditional on the corrected Fourier contraction and scalar kernel obligations recorded in NR4.

(CG20, Theorem 8.13, pp.864–865; reduction pp.867–873; proof completed pp.874–877; CG20 line 2525.)

Reduce a nonzero kernel modulo ϖ to the constrained systems of NR4.6. Apply cuspidal kernel vanishing in the two distinct weight regimes. Lift injectivity using successive ϖ-torsion layers and repeat after exchanging the roots. Use these actual composite injections, rather than bare Hasse multiplication, to obtain the selected image-algebra quotient maps.

**Checks.**

- On the residual roots 2,3 in 𝔽₁₁ the two selected projections have distinct labels; exchanging them exchanges the two injections.
- Over O/ϖ² a nonzero kernel vector divisible by ϖ gives a nonzero residual torsion-layer kernel; it cannot be dismissed merely because its direct reduction is zero.
- A Hasse inclusion followed by the zero projector is zero on a one-dimensional source; injectivity must concern the actual composite.

Both root-labelled injections are required by the unramified-plane argument; a single ordinary line is insufficient.

*Needs:* NR4 (vanishing of constrained cuspidal vectors); NR3 (selected annihilator quotients).

### Examples

Over F₅, X₂ multiplies a coefficient of discriminant 1 by 1, of discriminant 2 by −1, and of discriminant 0 by 0.

### Dependencies

AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; NR1; NR3; Mathlib `Module.End.genEigenspace`. The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR5: Nonregular Hecke-valued minimal deformations

Use the two independent ordinary lines in the same reconstructed representation to obtain its invariant unramified isotropic two-plane. Construct compatible selected finite-quotient Galois deformations, normalize the full multiplier and pass to the inverse limit. Verify every minimal local condition before invoking the universal classifying map.

### NR5.1 The unramified ordinary two-plane

Over each selected finite Hecke quotient in weight (a,2), the regular α- and β-ordinary constructions yield two unramified rank-one local subrepresentations whose reductions are the two specified independent residual lines. They span a rank-two direct summand, invariant and unramified at p, and the symplectic pairing vanishes on it. Thus the two lines yield the precise ordinary local condition in CG20 Definition 4.6(6), not just two unrelated subquotients.

(CG20, Theorem 6.17 and proof, pp.845–846; CG20 line 1789.)

Use the two selected quotient maps to identify the global Galois representation uniquely, then regard both local lines inside this same representation. Residual independence and Nakayama imply that their sum is a direct summand; verify compatibility with coefficient quotient transitions. Use the fixed symplectic multiplier and the residual tame-character separation ensured by p−1>a to prove isotropy. Identify the quotient characters by the pairing and preserve the source ordinary ordering.

**Checks.**

- Modulo ϖ the vectors e₁,e₂ have two-by-two minor 1; any lifts keep a unit minor and span a rank-two direct summand.
- Two vectors reducing to e₁ and e₁ have minor 0, so the two-line conclusion requires residual independence.
- With cyclotomic exponent 1−a and p−1>a, inertia on the multiplier is nontrivial while it is trivial on the unramified plane; equivariance forces its restricted pairing to be 0.

Two unramified characters appearing only as semisimplified constituents do not suffice; actual stable submodules and their independence are required.

*Needs:* NR4 (the two hasse-projection injections); NR3 (regular-weight hecke-valued galois representation); NR0 (nonregular lifting data); IntegralHeckeAndGaloisDeterminants §§1.1–1.7.

### NR5.2 Minimal Galois deformation over the singular Hecke algebra

For a CG lifting datum with a=2 or 4≤a<p−1 and every labelled Q, construct a continuous rσ,m:GQ→GSp₄(Tσ(Q)αβ_m), σ=(a,2), lifting r̄, matching the good-prime spin polynomials and satisfying the fixed-multiplier minimal deformation condition outside Q. This includes the split unramified two-plane at p, weakly minimal inertia away p, unramifiedness at q, and inverse scalar inertia on the two isotropic Q-planes. Consequently the universal minimal-outside-Q ring RQ maps to this Hecke image. The theorem depends on the corrected doubling argument.

(CG20, Theorem 6.17, pp.845–846; Definition 4.6, pp.815–816; CG20 line 1789.)

Construct representations over the selected O/ϖᵐ image quotients by the two regular comparisons and absolute-irreducible reconstruction. Normalize the full multiplier with the compatible finite-character square root, which uses p odd. Check the p-condition via the actual two-plane theorem; check each away-p condition via the regular local representation and the finite scalar twist. Use uniqueness and compatible quotient actions to take the inverse limit, then invoke the supplied universal property of RQ.

**Checks.**

- At Q=∅ the universal classifying map has source Rmin; at one Q-prime it has source RQ and includes auxiliary scalar inertia.
- For the chosen ordering diag(χ,χ,χ⁻¹,χ⁻¹), both paired products are 1.
- At a=2, the unramified plane has rank 2 and both cyclotomic exponents are 0; using one ordinary line gives rank 1 and fails the local functor.

Do not identify a torsion-ring representation merely from a characteristic-zero product embedding. The ring map is not yet an isomorphism.

*Needs:* NR5 (the unramified ordinary two-plane); NR3 (selected annihilator quotients); NR3 (central characters and residual galois systems); GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above; IntegralHeckeAndGaloisDeterminants IHG.4.

### Examples

For roots 2 and 3 over F₁₁, the two residual unramified lines are independent. Lifts of their generators therefore extend to a basis over each local Artin Hecke quotient by Nakayama, so their sum is a rank-two direct summand. Independence is essential: two copies of the same residual line give no such conclusion. Isotropy still uses the multiplier and the nontrivial residual cyclotomic separation, rather than this basis calculation alone.

### Dependencies

NR0; NR3; NR4; GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); IntegralHeckeAndGaloisDeterminants §§1.1–1.7; IntegralHeckeAndGaloisDeterminants IHG.4; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above. The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR6: Klingen Taylor–Wiles level control

Construct the labelled Klingen block projector. Prove the high-weight integral pullback/trace comparison, with inverse (tr∘pr_Q∘i)⁻¹∘tr rather than the degree-normalized trace, descend through Hasse and secondary-Hasse strata with explicit H¹ reverse induction, and induct over O/ϖᵐ before passing to E/O. Separate this degree-zero comparison from the BCGP21 derived comparison and module-coinvariant supplier interface.

### NR6.1 Klingen block projector and trace

For the labelled roots of NR0.5, let Rx=(xUx,2−α′xγ′x)(xUx,2−β′xδ′x)(xUx,2−γ′xδ′x), and let prx be the compatible factorial-power projector of Rx onto its unit factors. Put prQ=∏x∈Qprx and define the level-raising map prQ∘i from hyperspecial to Klingen level. Let m be the maximal ideal generated by m∅, xUx,2−α′xβ′x, Ux,1−α′x−β′x and ⟨u⟩−1 for u∈ΔQ; without the diamond generators the quotient is only a finite k[ΔQ]-algebra. Use Rx consistently; an undefined R′x is not a separate operator.

(CG20, Theorem 7.2 and definition of prx, p.847; CG20 line 1843.)

Evaluate each polynomial factor on the possible Klingen Satake blocks using the supplied local calculation. Use the root and product separations to distinguish the desired unit block; apply the upstream factorial-power construction. Prove compatibility with pullback and trace and multiplicativity across different x.

The primes are distinct, the normalized operators commute, and every product separation of NR0.5 is retained. The diamond augmentation generators force the residual diamond character to be trivial; a quotient of k[ΔQ] is not automatically a field.

The construction has the following interfaces.

- prQ squares to itself and commutes with good Hecke operators and the diamonds.
- For Q=∅, prQ is the identity.
- The image is exactly the labelled Klingen block, with all other Satake blocks killed.

**Checks.**

- The empty product gives the identity and the original residual ideal.
- If αxβx=γxδx, the selected block calculation loses its required separation; reject this refinement.
- For two distinct auxiliary primes the projectors commute and pr{x,y}=prx·pry.

The ideal m is the labelled block lying over the given residual system, not an arbitrary maximal ideal of the enlarged Hecke algebra. The diamond operators act trivially on H⁰(X₀(Q),·) and unipotently on the p-power covers, so adding ⟨u⟩−1 changes none of the localizations used later.

*Needs:* NR0 (klingen taylor–wiles refinements); NR1 (the three nonregular hecke images); IntegralHeckeAndGaloisDeterminants §§2.1–2.3.

### NR6.2 High-weight Klingen level comparison

For sufficiently regular shifted weight and the labelled non-Eisenstein block, prQ∘i is an isomorphism on cuspidal H⁰ at the base and Klingen levels. Its inverse is v_Q⁻¹∘tr, where v_Q=tr∘prQ∘i is a p-adic limit of spherical Hecke operators at the primes of Q and is congruent to 1 modulo m∅ under the Taylor–Wiles labelling; d_Q⁻¹tr, with d_Q=[K:K₀(Q)] the degree of X₀(Q)→X, is not an inverse. At each x the characteristic-zero no-newforms calculation is the Klingen no-newforms result of the local-block supplier contract; its integral extension uses torsion-freeness and cohomology/base-change in the vanishing range.

(CG20, Theorem 7.3 and proof, pp.847–848, with its Klingen no-newforms input in the local-block supplier contract; with inverse as specified in NR6.2; CG20 line 1859.)

Use the exact supplier contract for the exact local Klingen invariant-vector and eigenvalue computation, not a general Satake theorem alone. Apply regular-weight cohomological vanishing and identify the integral lattice in the characteristic-zero decomposition. Show that v_Q=tr∘prQ∘i lies in the completed spherical Hecke algebra at Q, compute it modulo m∅ from the regular residual Satake parameters (each prime contributes d_x·(1/4)≡1, using x≡1 mod p), and deduce that v_Q⁻¹∘tr is an O-integral inverse commuting with h.

**Checks.**

- For the GL₂ oldform normalization at q=11 and p=5, take α=(1+δ)/2, β=(1−δ)/2 with δ²=−43, so αβ=11 and the two residual roots are distinct over 𝔽₂₅. The degree-normalized trace composite is (qα−β)/((q+1)(α−β))=1/2−5δ/516, which reduces to 3=1/2 modulo 5, rather than 1. The unnormalized selected composite v=6−5δ/43 reduces to 1 and is a unit. All displayed denominators are nonzero and 5-adic units.
- At x≡1 modulo p the Klingen degree 1+x+x²+x³ is 4 modulo p; the selected residual block contributes 1/4, so v_x≡1.
- For Q=∅, v_Q=1 and the inverse is the identity.

A characteristic-zero isomorphism alone does not give the integral comparison. In the GL₂ analogue (q+1)⁻¹tr(prα f)=(qα−β)f/((q+1)(α−β)), which is not f; the degree-normalized trace is not the inverse.

*Needs:* NR6 (klingen block projector and trace); NR3 (hasse shifts and the vanishing threshold); SmoothRepresentationsOfLocalGroups SR.2.1–SR.2.3; SmoothRepresentationsOfLocalGroups SR.4.1–SR.4.5; the local-block and projective-Satake gaps above; AutomorphicBundles B5; AutomorphicBundlesPartII IC.4.

### NR6.3 Descent through the nonordinary strata

For the same levels and block, the comparison holds on H⁰ over k in all required weights, on the relevant nonordinary divisor sections, and on H¹ over k, with the inverse v_Q⁻¹∘tr of NR6.2. Use the h multiplication sequences and a secondary Hasse invariant on the nonordinary locus. Multiplication by h is injective on H⁰ because each connected component of the smooth special fibre is integral and h is nonzero on it; multiplication by the secondary invariant is injective because the nonordinary locus is a Cartier divisor in a smooth threefold, without embedded components, and the invariant is nonzero on each irreducible component. Smoothness alone does not imply irreducibility. The H¹ comparison is proved by reverse induction from the high-weight vanishing range.

(CG20, Lemmas 7.4–7.6 and proofs, pp.848–850; CG20 line 1881.)

Use a cartesian Hasse multiplication square and injectivity of q-expansions to descend the H⁰ comparison. Apply the secondary Hasse multiplier on the nonordinary divisor; verify its nonzerodivisor property component by component. Write the two long exact sequences at consecutive Hasse-shifted weights. With H⁰ and divisor H⁰ comparisons established and high-weight H¹=0, descend the H¹ comparison through the exact sequence; do not assert it directly from H⁰.

**Checks.**

- In k×k multiplication by (1,0) kills (0,1); smooth disconnected components alone do not prove injectivity. A multiplier nonzero on both field components is injective.
- In k[x,y]/(xy), x kills y; this reduced Cartier divisor shows why nonvanishing on every irreducible component matters.
- For a one-step Hasse exact sequence with high-weight H¹=0, the lower H¹ is the cokernel of the H⁰-to-divisor-H⁰ map; comparing H⁰ alone omits that cokernel.

Keep the geometric secondary-Hasse input explicit until its supplier is defined. The reverse induction must name the starting vanishing weight and every group used by the five-lemma argument.

*Needs:* NR6 (high-weight klingen level comparison); NR3 (hasse shifts and the vanishing threshold); AutomorphicBundles B3; AutomorphicBundlesPartII IC.1–IC.3; AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; NR3.1a secondary Hasse geometry.

### NR6.4 Finite-level Taylor–Wiles comparison

For every m≥1, prQ∘i gives the labelled-block isomorphism on H⁰(X,ω(μ)(−D)O/ϖᵐ) and H⁰(X₀(Q),ω(μ)(−D)O/ϖᵐ), with inverse v_Q⁻¹∘tr (not d_Q⁻¹tr). Passing to the direct limit yields the E/O comparison of CG20 Theorem 7.2. BCGP21 Proposition 7.9.8 supplies a separate ordinary-module coinvariant comparison under its own setup; its proof uses derived cohomological comparisons. Neither that proposition nor this degree-zero theorem is exported here as an unrestricted all-degree isomorphism.

(CG20, Theorem 7.2, p.847; proof pp.850–851; Appendix A.3.2, Lemma A.6, pp.887–888; BCGP21, Hypothesis 7.8.1, pp.211–212; Proposition 7.9.8, pp.222–223; CG20 line 1971.)

For m=1 use the established H⁰ comparison and the H¹ comparison over k. For m>1 use the exact coefficient sequence 0→k→O/ϖᵐ→O/ϖᵐ⁻¹→0 and the two long exact cohomology sequences, with the H¹ control needed to compare the connecting maps. Check compatibility with the transition maps, then pass to E/O and dualize only after recording the direction of the maps.

**Checks.**

- The coefficient lengths at m=2 are 1+1=2 in 0→k→O/ϖ²→k→0; the connecting H¹ map remains part of the comparison.
- At m=1 the asserted comparison is the residual comparison; m=0 has zero coefficients and is not a premise of the induction.
- At Q=∅ pullback, trace and v_Q are all identity, on both k and E/O.

The degree-one input cannot be omitted from the induction. Do not label this result an all-degree isomorphism.

*Needs:* NR6 (descent through the nonordinary strata); NR6 (klingen block projector and trace).

### Examples

The empty product gives the identity and the original residual ideal.

### Dependencies

AutomorphicBundles B3; AutomorphicBundlesPartII IC.1–IC.3; AutomorphicBundles B5; AutomorphicBundlesPartII IC.4; NR0; NR1; NR3; IntegralHeckeAndGaloisDeterminants §§2.1–2.3; SmoothRepresentationsOfLocalGroups SR.2.1–SR.2.3; SmoothRepresentationsOfLocalGroups SR.4.1–SR.4.5; the local-block and projective-Satake gaps above. The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR7: Coherent defect and the selected balance gate

Identify the dual cuspidal module via L=ω(1,3−a) and supplied integral coherent duality. Deduce torsion-freeness from the appropriate H² vanishing and reduce whole-module balance to the supplied localized characteristic-zero dimension equality. The boundary/Arthur argument belongs to AutomorphicBundlesPartII IC.6–IC.8. State the additional integral p-idempotent and selected-rank obligations needed to prove balance of the αβ summand.

### NR7.1 The dual coherent Taylor–Wiles module

For L=ω(1,3−a) and a quotient Δ of ΔQ, define the coherent homology module MΔ=H₀(XΔ(Q),L)m as the compact fraction-quotient O-dual of H⁰(XΔ(Q),ω(a,2)(−D)E/O)m via the supplied integral Serre duality convention. The bundle identity is ω³⊗L∨(−D)=ω(a,2)(−D). Put S=O[Δ]. Keep this full module distinct from its eαβ-summand. In the source range use p>a−2, with the stronger p−1>a imposed in the final theorem.

(CG20, §7.2, p.851; Theorem 7.11, p.853, corrected duality bound; CG20 line 1986.)

Import coherent homology, completed duals and integral Serre duality from AutomorphicBundlesPartII IC.1–IC.2. Calculate the two weights using the actual duality formula, including the cusp boundary. Transport the Hecke/diamond action with its contragredient convention and preserve the αβ labels.

Here the dual is the compact O-linear fraction-quotient dual HomO(−,E/O), with the supplied topology and Hecke adjoint. It is not HomO(E/O,O), which is zero. Coherent homology in higher degrees is the supplied derived dual construction.

The construction has the following interfaces.

- Identify MΔ with the specified dual cuspidal E/O-section space, including boundary and action conventions.
- Give its finite O[Δ]-module action and its augmentation maps.
- Identify the dual of the selected sections with the transported idempotent summand, after the action comparison is proved.

**Checks.**

- For a=4, L=ω(1,−1), not ω(1,1).
- Replacing subcanonical sections by canonical sections requires the separate localized boundary theorem.
- For Δ=1, S=O and MΔ is the dual module at X₀(Q).
- HomO(E/O,O)=0, while the compact fraction-quotient dual of E/O is O; the latter is the dual required here.

No theorem about balance of MΔ is silently inherited by an idempotent summand.

*Needs:* NR0 (minimal tame levels and the neat auxiliary prime); NR1 (the three nonregular hecke images); DeformationAndDerivedPatchingAlgebra §§5.5–5.8; AutomorphicBundles B3; AutomorphicBundlesPartII IC.1–IC.3.

### NR7.2 H² vanishing and torsion-free coherent homology

Assume H²(X₀(Q),ω(a,2)(−D)k)m∅=0. Then H₁(X₀(Q),L)m is O-torsion-free by the supplied duality and coefficient sequence. For the balance calculation this vanishing is needed at X₀(Q), not at every intermediate XΔ(Q). For the final minimal theorem retain its stated uniform H² hypothesis for i=0,1 and all required Taylor–Wiles Q. The a≥4 vanishing theorem is imported with its full good-prime and weight hypotheses; in weight (2,2) this remains an assumption.

(CG20, Assumption 7.7, Remark 7.8 and Lemma 7.9, pp.851–852; Theorem 5.1, pp.822–823; Theorem 9.1(6), p.878; CG20 line 2001.)

The coefficient sequence and H² vanishing imply divisibility of H¹ of the E/O-valued dualizing cusp bundle. Duality turns divisibility into absence of ϖ-torsion in H₁. Use the supplier vanishing theorem for a≥4 in its actual range. Do not infer full H² vanishing from an interior-cohomology expectation.

**Checks.**

- For H¹(E/O)=E/O, multiplication by ϖ is surjective and its O-linear divisible dual is O, with no ϖ-torsion.
- A finite summand k is not ϖ-divisible: multiplication by ϖ is zero, so such a summand would invalidate the torsion-free conclusion.
- At a=2 the asserted automatic range 4≤a is false; the H² hypothesis remains present.

The uniform condition used in NR8 and the narrower condition used in the balance proof are separately recorded.

*Needs:* NR7 (the dual coherent taylor–wiles module); AutomorphicBundles B3; AutomorphicBundlesPartII IC.1–IC.3.

### NR7.3 Defect reduction and whole-module balance

For S=O[Δ] and MΔ as in NR7, assume the H² vanishing at X₀(Q), the supplied Hochschild–Serre identification (MΔ)Δ≅H₀(X₀(Q),L)m and the surjection H₁(X₀(Q),L)m→Tor₁^S(MΔ,O). Let r=rankO H₀(X₀(Q),L)m. The defect dS(MΔ)=dimk(MΔ/mS MΔ)−dimk Tor₁^S(MΔ,k) is nonnegative if dimE H₁(X₀(Q),L)m,E≤r. The localized boundary/Arthur theorem supplies equality of the characteristic-zero dimensions. Hence the full MΔ is balanced, with all classification assumptions retained.

(CG20, Theorem 7.11 and proof, pp.853–855; Lemma 7.10, pp.852–853, imported under the ownership amendment; CG20 line 2056.)

Use the supplied homological Hochschild–Serre low-degree exact sequence with its actual direction; bound the O-rank of the Tor term by the torsion-free H₁ rank. Reduce the S-module defect to the displayed characteristic-zero inequality using the precise Tor coefficient sequence from §§5.5–5.8. Import localized subcanonical/canonical agreement, exclusion of Arthur types (b)–(f), the general-type limit-of-discrete-series contribution and dim H¹=dim H⁰ from AutomorphicBundlesPartII IC.6–IC.8. 

**Checks.**

- For S=O[Cp], dimk(S/mS)=1 and Tor₁ˢ(S,k)=0, giving defect 1.
- For its residue module k, the cotangent dimension of S is 2, so dimk Tor₁ˢ(k,k)=2 and defect 1−2=−1.
- Defects add: S⊕k has defect 1+(−1)=0. This full balanced module has an unbalanced direct summand.

Show the exact rank/defect calculation; a qualitative appeal to Hochschild–Serre is insufficient. This conclusion concerns the full module only.

*Needs:* NR7 (h² vanishing and torsion-free coherent homology); DeformationAndDerivedPatchingAlgebra §§5.5–5.8; DeformationAndDerivedPatchingAlgebra §§5.1, 5.5, 7.6–7.10; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26.

### NR7.4 Balance of the selected Hecke summand

Under the final lifting hypotheses prove dS(eαβMΔ)≥0. Required additional input: an integral eαβ action on the coherent complex or on H₀ and H₁, commuting with diamonds, duality and the Hochschild–Serre comparison, together with the characteristic-zero rank inequality on this very summand. Whole-module balance alone is insufficient. This is the selected-summand proof obligation in the final patching argument; the endpoint is conditional on it.

(CG20, Theorem 9.1 proof, step (c), p.880; Theorem 7.11, pp.853–855; CG20 line 3076.)

Construct the geometric normalized p-actions integrally in the needed degrees and compare their idempotents through duality and the cover spectral sequence. Apply the rank/defect calculation to the selected exact sequence, not to the full sequence followed by an unsupported inference. Either prove the selected characteristic-zero H¹/H⁰ inequality, or give an independent direct proof of selected-module balance. Every minimal lifting implication includes selected balance as an explicit premise.

**Checks.**

- For the projection S⊕k→k, selected defect is −1 while total defect is 0; the whole-module theorem cannot imply this target.
- For the projection onto S the selected defect is 1; compatibility of the projector with the actual comparison is essential to the selected rank calculation.
- The zero projector gives the zero selected module, defect 0 and rank 0; Katz occurrence is needed later for positive rank.

An abstract finite O[Δ]-module may have nonnegative total defect while a direct summand has negative defect. The generic idempotent-splitting theorem does not itself construct a geometric p-action in degree one.

*Needs:* NR7 (defect reduction and whole-module balance); NR1 (joint ordinary root selectors); IntegralHeckeAndGaloisDeterminants §§2.1–2.3; AutomorphicBundlesPartII (gap:normalized-integral-siegel-p-actions); selected characteristic-zero rank inequality.

### Examples

For a=4, L=ω(1,−1), not ω(1,1).

### Dependencies

AutomorphicBundles B3; AutomorphicBundlesPartII IC.1–IC.3; DeformationAndDerivedPatchingAlgebra §§5.1, 5.5, 7.6–7.10; DeformationAndDerivedPatchingAlgebra §§5.5–5.8; NR0; NR1; IntegralHeckeAndGaloisDeterminants §§2.1–2.3; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26. The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR8: Conditional minimal lifting and examples

Assemble the GSp4 balanced patching datum, including its fixed-multiplier diamond-inertia identity and universal augmentation kernel. Deduce Rmin=T and positive-rank dual cuspidal freeness under the corrected proof gates, then the a≥4 and crystalline classical corollaries at the actual minimal level. Keep scalar-weight H² vanishing and the mod-2 illustration conjectural; check the Weil-restriction and local level examples with their exact limitations.

### NR8.1 The nonregular balanced patching datum

For qTW=dimk of the dual Selmer group, choose labelled QN of cardinality qTW with x≡1 mod pᴺ and a quotient ΔN≅(Z/pᴺ)^qTW. Let HN be the dual selected cuspidal module at the corresponding ΔN-cover; H is its base-level counterpart. The supplied presentation gives R∞=O[[x₁,…,x_(qTW−1)]]→RQN→Rmin, with qTW≥1 justified by the fixed-multiplier Selmer dimension formula. Equip HN with the compatible S_N=O[ΔN] and R∞ actions. Their augmentations identify (HN)ΔN≅H. The modules are finite balanced by NR7.4, conditional on its explicit proof obligation.

(CG20, Theorem 9.1 proof, items (1)–(4), pp.879–880; Proposition 3.3, pp.811–812; CG20 line 3040.)

Take the exact CG fixed-multiplier Taylor–Wiles rings and presentation from the global supplier; do not substitute a GLn polarized problem with different real-place dimensions. For each QN use the nonregular Galois representation and the selected dual module to construct compatible actions. After the fixed-multiplier twist, inertia is diag(χ,χ,χ⁻¹,χ⁻¹) and χ⁻²=⟨u⟩. This proves the diamond action factors through the deformation-ring action. Identify the augmentation kernel using universal inertia matrix entries; scalar identities in the Hecke image alone do not prove the universal-ring assertion. Use the degree-zero level comparison for the coinvariants and the selected balance theorem for the defect condition.

The construction has the following interfaces.

- The two actions coincide via the universal scalar-inertia character with χ⁻²=⟨u⟩.
- Coinvariants of HN are H and the corresponding deformation specialization is Rmin.
- Supply finite presentation and nonnegative defect for every HN, together with the named selected-balance hypothesis.

**Checks.**

- The inertia multiplier of diag(χ,χ,χ⁻¹,χ⁻¹) is 1 in the prescribed paired ordering.
- The untwisted shape diag(1,1,⟨u⟩,⟨u⟩) has multiplier ⟨u⟩ and cannot represent the fixed-multiplier datum.
- At the trivial diamond character χ=1 near the residual identity for p odd, so auxiliary scalar inertia disappears.

Verify the exact diamond-inertia exponent and that augmentation recovers Rmin. The finite modules may have torsion; no unproved global torsion-free Hecke-ring claim is used.

*Needs:* NR5 (minimal galois deformation over the singular hecke algebra); NR6 (finite-level taylor–wiles comparison); NR7 (balance of the selected hecke summand); GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); GlobalGaloisDeformations R04.5–R04.6 (gap:gsp4-global-patching-data); DeformationAndDerivedPatchingAlgebra §§5.5–5.8.

### NR8.2 Conditional minimal R = T and freeness

For a CG lifting datum, the uniform hypothesis H²(Xi(Q),ω(a,2)(−D)k)m∅=0 for i=0,1 and all required labelled Q, the classification input and the corrected doubling and selected-balance proof obligations, the classifying map Rmin→Tσ(∅)αβ_m is an isomorphism. The compact fraction-quotient O-dual of H⁰(X,ω(a,2)(−D)E/O)αβ_m is a finite free module over this Hecke algebra. Its rank is positive because Katz modularity supplies a nonzero residual selected section. All conditional inputs are part of the theorem contract.

(CG20, Theorem 9.1, pp.878–879; proof pp.879–880; CG20 line 2999.)

Apply the imported balanced-module patching theorem with the verified ring-action, augmentation and defect data. Obtain freeness over Rmin; use the nonzero residual module to rule out rank zero. The Hecke image acts faithfully by definition; a positive free Rmin-module has faithful Rmin-action, so the surjective classifying map has zero kernel and Rmin=T.

**Checks.**

- A free module T¹ has annihilator 0, whereas T⁰=0 has annihilator T; positive rank is the faithful-action step.
- A surjection O[ε]/(ε²)→O acting on O is faithful only on the target and has kernel (ε); target faithfulness alone is insufficient.
- For Q=∅ the level still includes q; deleting q changes the defined Hecke space.

The endpoint retains the Fourier, selected-balance and classification premises, and the uniform H² hypothesis in weight (2,2).

*Needs:* NR8 (the nonregular balanced patching datum); NR1 (katz modularity in weight (a,2)); DeformationAndDerivedPatchingAlgebra §§5.5–5.8; DeformationAndDerivedPatchingAlgebra §§5.1, 5.5, 7.6–7.10.

### NR8.3 The a≥4 minimal theorem

For 4≤a<p−1 in the same fixed-multiplier residual setting, the supplied coherent vanishing theorem discharges the uniform H² hypothesis. With the corrected doubling, selected-balance and classification inputs, deduce minimal R=T and dual cuspidal freeness at the §6.3 level, including q. Absolute irreducibility and the global cyclotomic multiplier remain hypotheses. Neatness may be deduced from CG Assumption 4.1(H1) with its explicit scalar witness, rather than added to the introduction theorem without explanation.

(CG20, Theorem 1.2, p.803; Theorem 9.1, pp.878–880; Assumption 4.2, p.813; CG20 line 76.)

Check that the vanishing range covers both levels and every Q used by the patching construction. Give the neatness witness from the cyclotomic/ad⁰ field condition, or retain Assumption 4.2 if that implication has not been established in the supplier interface. Identify the actual §6.3 level and cuspidal Hecke image in the introduction notation.

**Checks.**

- At p=7,a=4, 4≤a<p−1 holds and the imported H² vanishing range applies.
- At p=5,a=4, a<p−1 is false even though the separate vanishing range includes a=4; the lifting range remains stricter.
- At a=2, 4≤a is false, leaving the uniform H² condition in NR8.2.

No unspecified level N(r̄) replaces the actual q-enlarged minimal level.

*Needs:* NR8 (conditional minimal r = t and freeness); NR7 (h² vanishing and torsion-free coherent homology).

### NR8.4 Arithmetic examples and excluded conjectures

Check the level recipe on the source genus-two Jacobian example: Iwahori at 5 and paramodular at 3 and 19. Its conjectural nonliftable mod-2 weight-(2,2) class is an illustration of conjectural modularity, outside the odd-p minimal theorem. Construct the exceptional S₆≅Sp₄(𝔽₂) identification on the even-subset quotient described below. For Res_K/Q(E), with K imaginary quadratic and E non-CM, the big-image illustration requires E and its conjugate to be nonisogenous over K̄. Weight-(2,2) interior-H² vanishing and the Hecke-ring torsion-freeness expectation remain unproved and unused.

(CG20, Remark 4.12, pp.819–820; §5.4, pp.831–832; §1.2, p.804; Remark 6.14, p.842; Remark 8.18, p.871; CG20 line 816.)

Separate the arithmetic level calculation from the conjectural existence of a mod-2 modular eigensystem. Use the six-point construction below for the finite-group illustration. Use the Weil-restriction open-image contract of ArithmeticGaloisRepresentations §6.4, with geometric nonisogeny. Use the two regular root lines and the zero-root factor to explain the scalar-weight tripling phenomenon without asserting classicality of every p-adic lift.

For the finite-group identification let W={x∈𝔽₂⁶ : Σxᵢ=0}/⟨(1,1,1,1,1,1)⟩. The dot product descends to a nondegenerate alternating form on W, and the permutation action S₆→Sp(W) is faithful. Counting symplectic bases in a four-dimensional space over a finite field of cardinality q gives (q⁴−1)q³(q²−1)q=q⁴(q⁴−1)(q²−1); at q=2 this is 720=6!, so the faithful map is an isomorphism. Faithfulness follows by fixing every two-element subset class, whose complement has four elements. The transposition (12) fixes a subspace of dimension 3 and acts as a symplectic transvection, while (123) has order 3; these calculations fix the conjugacy-class dictionary used in the illustration. The mod-2 class and interior-H² and torsion-freeness expectations are conjectural examples, never conclusions of a lifting implication here.

The six-point quotient has the following interfaces.

- The sum-zero hyperplane has radical exactly the all-ones line for the restricted dot product; its quotient is four-dimensional with a nondegenerate alternating form.
- Permuting coordinates gives a well-defined symplectic action, with identity and composition inherited from the permutation action on the six coordinates.
- The faithful action identifies S₆ with the full symplectic group; under this identification transpositions have fixed-space dimension 3 and a three-cycle has fixed-space dimension 2.

**Checks for the six-point quotient.**

- Before quotienting, the sum-zero hyperplane has dimension 5 and the nonzero all-ones vector pairs to 0 with all of it; the quotient has dimension 4 and radical dimension 0.
- The transposition (12) fixes 8 of the 16 quotient vectors, so its fixed-space dimension is 3 and its deviation from identity has rank 1.
- The cycle (123) fixes 4 quotient vectors and has order 3; it cannot be modeled as a nontrivial characteristic-two unipotent involution.


**Checks.**

- The source Jacobian level has local factors Iwahori at 5 and paramodular at 3 and 19; interchanging 3 and 5 changes the prescribed inertia type.
- The even-subset quotient on six points has 2⁵/2=16 elements and dimension 4; its dot-product pairing is alternating since every vector has even weight.
- A quadratic twist Eχ of E can be nonisogenous over K while becoming isomorphic over K̄; then the pair of geometric Tate modules is diagonal rather than a product, so K-nonisogeny is insufficient.

A mod-2 illustration cannot be used to test a p≥5 lifting theorem. Do not introduce a dependency from the classification registry ML.0 back to this endpoint.

*Needs:* NR0 (minimal tame levels and the neat auxiliary prime); NR8 (conditional minimal r = t and freeness); ArithmeticGaloisRepresentations §§7.3–7.5, 7.9–7.12; ArithmeticGaloisRepresentations §6.4 (gap:weil-restriction-big-image).

### NR8.5 Classical modularity from the minimal theorem

Let r:GQ→GSp₄(Q̄p) have a stable lattice with a CG residual lifting datum, ordinary crystalline local representation at p with Hodge–Tate multiset [0,0,a−1,a−1], and the corresponding minimal away-p ramification. For 4≤a<p−1 and the corrected theorem inputs, r is the Galois representation of a cuspidal Siegel eigenform of weight (a,2) at the stated minimal level. State the Hodge–Tate convention explicitly: ε has weight −1, so the representation with multiplier ε^(1−a) has weights 0,0,a−1,a−1. The good-prime Euler polynomials agree. Equality of every bad Euler factor requires the separate full local–global compatibility theorem.

(CG20, Theorem 1.1, p.802; Theorem 9.1, pp.878–880, with the crystalline and level qualifications; CG20 line 38.)

Use the classifying O-valued point of Rmin and transport it through R=T. Pass from its characteristic-zero eigensystem to a cuspidal characteristic-zero section using coherent base change in the proved range; identify the attached representation by good-prime uniqueness. Use the assumed crystalline condition where Frobenius unit roots and the classical ordinary comparison require it. State the Euler-factor consequence only at the primes covered by the proved local comparison.

**Checks.**

- At a=4 the Hodge–Tate weights are 0,0,3,3, with paired sums 3, matching ε⁻³.
- At a=2 they are 0,0,1,1; the separate weight-two endpoint is not this a≥4 corollary.
- An ordinary semistable extension with N of rank 1 is not crystalline (N has rank 0 there); the classical CG corollary retains crystallinity.

Ordinary plus numerical Hodge–Tate weights is not a replacement for the required crystalline hypothesis.

*Needs:* NR8 (the a≥4 minimal theorem); NR2 (qualified crystalline specialization); AutomorphicLFunctionsAndLocalFactors AL.4; SmoothRepresentationsOfLocalGroups SR.4.5 (gap:gsp4-local-blocks-and-monodromy).

### Examples

The inertia multiplier of diag(χ,χ,χ⁻¹,χ⁻¹) is 1 in the prescribed paired ordering.

### Dependencies

ArithmeticGaloisRepresentations §§7.3–7.5, 7.9–7.12; AutomorphicLFunctionsAndLocalFactors AL.4; SmoothRepresentationsOfLocalGroups SR.4.5 (gap:gsp4-local-blocks-and-monodromy); DeformationAndDerivedPatchingAlgebra §§5.1, 5.5, 7.6–7.10; DeformationAndDerivedPatchingAlgebra §§5.5–5.8; NR0; NR1; NR2; NR5; NR6; NR7; GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); GlobalGaloisDeformations R04.5–R04.6 (gap:gsp4-global-patching-data). The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR9: Ordinary p-adic lifting in families

Specialize Pilloni’s admissibility data, keeping its image conditions distinct and its ordered-flag discrepancy explicit. Import Hida horizontal control and generic deformation/defect-zero patching to prove ordinary variable-weight R=T and integral-weight specialization. Deduce ordinary cuspidal p-adic modularity and the parallel GL2-parabolic variant, without asserting classicality of singular specializations.

### NR9.1 Pilloni ordinary admissibility data

An ordinary admissibility datum in the P12 branch consists of p≥5, N prime to p, K⊃K(N), either K neat or p≥7, and an ordinary cuspidal eigenform f of weight κ₀ with its residual Galois system. Require absolute irreducibility (a strengthening of the source’s irreducibility wording), SYMP (the invariant nondegenerate bilinear similitude form is unique up to scalar and alternating), and the exact P12 §5.7 image conditions. These are ζp∉L₀ for the adjoint fixed field; for every m a four-distinct-root σ∈GQ(ζpᵐ) having eigenvalue 1 on every irreducible adjoint constituent; dim H⁰(GQ,gsp₄)=1 and H⁰(GQ,gsp₄(1))=0. Impose the well-ramified χℓ, ε₂, ε, TR local conditions and their chosen tame levels, and strong ordinarity for the ordered four local characters. Fix the flag orientation explicitly before identifying the automorphic and deformation versions.

(P12, Definitions 3.2–3.3, p.14; Definitions 5.1–5.3, pp.19–20; §5.7, pp.23–24; §7.1, pp.35–36 (author pagination); P12 line 1768.)

Specialize the supplier residual pairing, ordinary flags and local deformation conditions; do not identify these image conditions with CG20 H1–H3. At χℓ primes use two isotropic inertia-character planes, χℓ nontrivial and ℓ−1 prime to p, with strict Klingen level; ε₂ uses Klingen and ε uses Iwahori; TR requires irreducible inertia and p∤ℓ⁴−1. The automorphic definition excludes λ̄r/λ̄r′ equal to 1 or ε̄ for r>r′; the deformation paragraph prints the reverse index direction. Record and resolve that orientation discrepancy in the supplier comparison rather than treating the two predicates as identical.

The P12 local exponent list is an ordered cyclotomic-character list in the fixed flag. For the comparison, the automorphic order r>r′ and the deformation order r<r′ are kept as two explicit predicates until the supplier proves the flag/Ext dictionary; the theorem assumes that dictionary, rather than assuming both predicates are identical.

The construction has the following interfaces.

- Extract f, its actual level and its residual symplectic Galois representation.
- Extract the inertia type and chosen compact subgroup at each bad prime.
- Give the ordered ordinary characters, their residual exclusions and the verified comparison between the automorphic and deformation orientations.

**Checks.**

- For p=5 retain neatness; for p=7 the source permits the stated alternative.
- CG20’s no-order-p-quotient condition is not substituted for P12’s H⁰ dimension condition.
- If λ̄r/λ̄r′=ε̄ but its inverse differs from ε̄, reversing r and r′ changes the predicate; the comparison must detect this.

This branch has no dyadic case and does not use the CG weight-(a,2) balanced module. Admissibility includes the actual automorphic seed, not only an abstract residual representation.

*Needs:* ArithmeticGaloisRepresentations §§7.3–7.5, 7.9–7.12; GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above; PadicFamiliesPartII F8 (gap:p12-ordinary-horizontal-control in NR9).

### NR9.2 Variable-weight ordinary R = T

For a P12 admissibility datum with the flag-orientation comparison established, let R̃ be the supplied universal variable-weight ordinary minimal deformation ring and T̃ the localized ordinary cuspidal Hida Hecke image over its two-weight Iwasawa algebra Λ. The natural map R̃→T̃ is an isomorphism; T̃ is finite flat over Λ and the dual ordinary module M̃ is finite free over T̃. For every integral weight κ lifting the residual weight, T̃⊗Λ,κO→Tκ is an isomorphism. These are p-adic ordinary family conclusions, not a claim of classicality in every specialization.

(P12, Theorems 7.1–7.2 and §7.3, pp.36–37 (author pagination); P12 line 1792.)

Use the supplied horizontal Hida control theorem to build fixed-weight finite free O[ΔQ] modules and identify their augmentation with the base module. Verify the equality of diamond and universal-inertia actions, then apply the defect-zero Taylor–Wiles criterion supplied by the commutative-algebra roadmap. At each integral κ obtain fixed-weight Rκ=Tκ and freeness. Use finiteness, constant rank and density of integral weights over Λ to prove the family isomorphism, flatness and module freeness, without using the singular coherent balance theorem.

**Checks.**

- Specializing Λ=O[[w₁,w₂]] at (0,0) gives O; T̃=Λ and M̃=Λᵈ model flatness and rank d without proving the arithmetic statement.
- Λ/(ϖ) has nonzero ϖ-torsion and is not flat over Λ, so torsion control cannot be omitted.
- For κ=(2,2), the exponent list is 0,0,−1,−1; its Hodge–Tate list is 0,0,1,1.

The source orientation discrepancy is a named hypothesis until the local comparison is verified.

*Needs:* NR9 (pilloni ordinary admissibility data); PadicFamiliesPartII F8 (gap:p12-ordinary-horizontal-control in NR9); GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); GlobalGaloisDeformations R04.5–R04.6 (gap:gsp4-global-patching-data); DeformationAndDerivedPatchingAlgebra §§5.5–5.8; IntegralHeckeAndGaloisDeterminants §§1.1–1.7.

### NR9.3 Modularity as an ordinary p-adic form

Let ρ:GQ→GSp₄(O) have the same residual representation as the P12 seed, inertia isomorphic to the seed at every v∤p, and an ordinary local filtration of weight iκ′=(0,2−k₂′,1−k₁′,3−k₁′−k₂′), for integral κ′=(k₁′,k₂′). Under NR9.2, ρ is attached to a cuspidal ordinary p-adic eigenform f′ of weight κ′ and level K. Overconvergence, when supplied by ordinary analytic continuation, is recorded separately from classicality.

(P12, Theorem 7.1, p.36; P20 introduction, author pp.5–6; P12 line 1795.)

The local and residual conditions define an O-valued point of R̃ over κ′. Transport the point through R̃=T̃ and use Hida control to obtain the p-adic cuspidal eigenform. Identify the full Galois representation by absolute irreducibility and the good-prime polynomial identities. Use an actual analytic-continuation theorem if overconvergence is claimed.

**Checks.**

- At κ′=(4,2), iκ′=(0,0,−3,−3); at (2,2) it is (0,0,−1,−1).
- At κ′=(1,1), iκ′=(0,1,0,1); this is an integral family weight, without a promised classical holomorphic interpretation.
- Residual equality modulo ϖ allows traces t and t+ϖ; it is not equality of characteristic-zero Hecke systems.

For κ′=(2,2), the conclusion remains p-adic; the 2025 classicality branch needs additional geometric and multiplicity inputs.

*Needs:* NR9 (variable-weight ordinary r = t); PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above.

### NR9.4 Parallel-weight parabolic ordinary lifting

For a parallel-weight P12 seed and the corresponding GL₂-parabolic ordinary space, let Λ′ be its one-weight Iwasawa algebra and R̃′ the universal well-ramified ordinary deformation ring with its unique ordered flag satisfying λA,0|Ip=1 and λA,2/λA,1=ε. Then R̃′≅T̃′ is finite flat over Λ′ and M̃′ is finite free. A lift with seed inertia and parallel weight (0,2−k′,1−k′,3−2k′) is attached to a GL₂-parabolic ordinary cuspidal p-adic form of weight (k′,k′). Here GL₂ denotes the parabolic in the genus-two construction, not a change to a rank-two Galois representation.

(P12, §7.4 and Theorem 7.3, pp.37–38 (author pagination); P12 line 1887.)

Use the supplied parabolic horizontal-control theorem instead of the Borel Hida theorem. Impose the two explicit inertia-character relations in the same universal ordinary deformation framework. Repeat the fixed-weight and weight-density steps over Λ′, preserving the rank-four symplectic representation and the chosen tame level.

**Checks.**

- At k′=2, (0,2−k′,1−k′,3−2k′)=(0,0,−1,−1).
- At k′=3 the list is (0,−1,−2,−3), and the middle ratio contributes ε; reversing it contributes ε⁻¹.
- Λ′=O[[w]] has one weight variable, while the Borel Λ has two; the Galois rank stays 4 in both cases.

Do not transfer a regular-weight classicality assertion to the parallel singular specialization.

*Needs:* NR9 (pilloni ordinary admissibility data); NR9 (variable-weight ordinary r = t); PadicFamiliesPartII F8 (gap:p12-ordinary-horizontal-control in NR9); LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above.

### Examples

For p=5 retain neatness; for p=7 the source permits the stated alternative.

### Dependencies

ArithmeticGaloisRepresentations §§7.3–7.5, 7.9–7.12; DeformationAndDerivedPatchingAlgebra §§5.5–5.8; GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); GlobalGaloisDeformations R04.5–R04.6 (gap:gsp4-global-patching-data); PadicFamiliesPartII F8 (gap:p12-ordinary-horizontal-control in NR9); PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; IntegralHeckeAndGaloisDeterminants §§1.1–1.7; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above. The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR10: Characteristic-zero higher-Hida patching

Fix the distinct BCGP25 weight-two and integral-enormity data, including its dyadic neat-prime condition. Construct four localized higher-Hida modules and their two-direction torus diamonds, prove weight/diamond freeness, construct the full-multiplier deformation action (with the GSp₄ coefficient descent valid at p=2, BCGP25 Lemma 7.4.8) and the projective Satake coinvariant comparison. Apply a corrected open-ideal patching theorem to obtain local freeness at the characteristic-zero point; rank zero remains possible.

### NR10.1 Characteristic-zero weight-two patching data

A BCGP characteristic-zero datum consists of p≥2 and ρ:GQ→GSp₄(O), unramified outside finitely many primes, with multiplier ε⁻¹, absolutely irreducible residual representation, pure, ordinary semistable of weight two and p-distinguished at p, with a chosen p-stabilization (αp,βp). Require ρ(GQ(ζp∞)) integrally enormous in Definition 7.1.1, meaning absolute irreducibility on E⁴ and, for every simple E[H]-submodule W⊂E⊗ad⁰ with H=ρ(GQ(ζp∞)), existence of h∈H whose reduction has four distinct roots and whose action on W has eigenvalue 1. For p=2 require ρ̄(GQ(i))=ρ̄(GQ); for odd p require a regular-semisimple element in ρ̄(GQ) outside Sp₄(Fp). Choose the neat prime r>5 with ρ itself unramified at r, residual regular-semisimple Frobenius, r≢1 mod p if p is odd and r≢1 mod 4 if p=2. Order its symplectic Frobenius roots as αr,1,αr,2,rαr,2⁻¹,rαr,1⁻¹.

(BCGP25, Definitions 7.1.1–7.1.2 and Hypothesis 7.1.3, pp.152–154; Definition 7.4.1, p.167; BCGP25 line 6927.)

Specialize the global and local deformation objects with the exact weight-two ordinary semistable condition and chosen unramified plane. Use the integral enormous-image condition of this source, which is not ACC+ enormous image; the latter has different mod-p adjoint cohomology conditions and cannot be substituted at p=2. Choose the neat r under the appropriate odd/dyadic congruence and verify unramifiedness of ρ, not merely of ρ̄.

The construction has the following interfaces.

- Extract the ordinary semistable weight-two representation and ordered p-stabilization.
- Extract integral enormousness and the separate odd/dyadic residual image condition.
- Return r, the correct congruence, unramifiedness of ρ and the four ordered symplectic roots.

**Checks.**

- For p=2 use r≢1 mod 4, rather than the impossible condition r≢1 mod 2 for an odd r.
- A lift ramified at r is rejected even if its residual representation is unramified there.
- A verification of ACC+ residual enormousness does not establish the integral condition used here.

The definition is independent of CG20’s small-weight and odd-p conditions.

*Needs:* ArithmeticGaloisRepresentations §§7.3–7.5, 7.9–7.12; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above; GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); PadicHodgeTheory §§3.2–3.6, 4.4, 5.3–5.4.

### NR10.2 Four localized higher-Hida multiplicity modules

Let S={r}∪Ram(ρ) and retain its p-part, and choose tame compacts Kℓ (hyperspecial outside S, Iw₁(r) at r). At QN use Iwahori and pro-p-Iwahori levels, with ΔQN=∏ℓ∈QN((Fℓ×)(p))² modulo the fixed center convention. For each of the four genus-two Weyl chambers w separately, construct the higher-Hida dual module M_w and auxiliary M_N,w over ΛGSp₄,Q using (7.4.6), the partial central condition before the full character |·|², and localization at the common anemic ideal, the r-refinement and the p-ideal (Up,0−1,Up,1−αp,Up,2−αpβp). The two torus characters of the ordinary deformation define its Λ action.

(BCGP25, Definitions 7.4.2–7.4.3 and equations (7.4.4)–(7.4.6), pp.167–169; BCGP25 line 7692.)

Use the supplied four higher-Hida complexes and duality; impose exactly the stated central and smooth torus conditions. Localize successively at the good polynomial and central system, at the r-refinement, and at the normalized p-eigenvalues. At each QN identify the rank-two diamond torus per prime; do not reuse the rank-one Klingen diamonds of CG20. Keep all four w modules individually named through base change and patching.

Before arithmetic localization use the four families of PadicFamiliesPartII F8. Lengths 0,1 use cuspidal support and lengths 2,3 canonical support, with the non-Eisenstein boundary comparison applied where needed. The involution [t]↦[t⁻¹] converts BP evaluation −λ to BCGP evaluation +λ. For χ(u)=ζ₃ the two evaluations give ζ₃ and ζ₃⁻¹, so the involution and the E(−λ) twist are visible even on a one-dimensional torus line.

The construction has the following interfaces.

- Give M_w and M_N,w for every one of the four chambers, with their Hecke and Λ actions.
- Identify the r- and p-localization through the displayed eigenvalue ideals.
- Compare partial central condition followed by full specialization with the module in (7.4.6).
- Give the Λ[ΔQN]-action with two independent torus directions at each auxiliary prime.

**Checks.**

- There are four modules indexed by w; their ranks are not added before the classicality criterion.
- For a single Q-prime with p-part cyclic of order pᴺ, the torus diamond group has order p^(2N), subject to the stated center convention.
- Replacing the intermediate partial-central construction with an unsupported full-center eigenspace is not the same definition.

The fixed-center partial character condition is part of the construction; taking full central eigenspaces too early can destroy the projectivity argument.

*Needs:* NR10 (characteristic-zero weight-two patching data); PadicFamiliesPartII F8 (gap:p12-ordinary-horizontal-control in NR9); PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; IntegralHeckeAndGaloisDeterminants §§2.1–2.3.

### NR10.3 Freeness over weight and diamond algebras

For each w, M_w is finite free over Λ and M_N,w is finite free over Λ[ΔQN]. This uses the projectivity of the higher-Hida module after the partial central condition, and the specified subsequent base changes. It holds for p=2 as well as odd p; no averaging by the genus-two Weyl-group order 8 is used.

(BCGP25, Lemma 7.3.8, p.167; Lemma 7.4.7, p.169; BCGP25 line 7768.)

Import the finite projective complex/module theorem with the same torus and central conditions. Carry out the Λ[ΔQN] specialization through the supplied projectivity-compatible maps. Use the relevant complete-local semilocal decomposition to pass from projective to free on each localized coefficient factor.

**Checks.**

- A free Λ[Δ]-module of rank d has Λ-rank d·#Δ; for one rank-two depth-N torus, this is d·p^(2N).
- At p=2, 8 is not a unit in O, so averaging by the Weyl order is undefined integrally.
- A zero module is free of rank 0; this theorem alone establishes no Hecke support.

Finite freeness does not imply positive rank. No division by the Weyl order is valid in the dyadic case.

*Needs:* NR10 (four localized higher-hida multiplicity modules); PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; DeformationAndDerivedPatchingAlgebra §§3.1–3.3, 5.8.

### NR10.4 Characteristic-zero auxiliary Hecke image

Define TSQ as the image of the abstract Hecke generators in EndΛ(M_N,w), using the localizations and full central character just specified; at Q=∅ denote it TS. It is the faithful action image, permitted to be the zero algebra before nonvanishing is proved. Retain the full central operator in the good-prime polynomial system. Compatibility with chamber duality is a comparison theorem, not a definition equating all four modules.

(BCGP25, Definition 7.4.9, p.170; BCGP25 line 7788.)

Take the actual endomorphism image rather than assert injectivity of the abstract Hecke algebra. Keep its Λ[ΔQN] structure and full central system, with zero-ring behavior allowed. Compare compatible changes of coefficients and level through the intertwining maps.

The construction has the following interfaces.

- The image acts faithfully on its module, including the zero-ring/zero-module case.
- Give the complete good-prime polynomial and the full multiplier determined by the central character.
- For a common abstract Hecke algebra acting on two specified modules M and N, a surjective intertwiner M→N induces the surjection from the M-action image onto the N-action image; an injection N→M gives the same direction by restriction. These comparisons require the stated intertwining for every named generator.

**Checks.**

- For M_N,w=0 its endomorphism image is the zero ring; the construction remains defined.
- In odd residue characteristic, multipliers ν and −ν have the same square; a determinant identity alone does not identify the central character.
- Two Hecke generators differing by an element of the action kernel have equal images.

Nonvanishing of this image is a conclusion of NR11.4.

*Needs:* NR10 (four localized higher-hida multiplicity modules); IntegralHeckeAndGaloisDeterminants §§2.1–2.3; IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b.

### NR10.5 Symplectic coefficient descent in every residue characteristic

Let S⊂R be complete local noetherian rings with m_R∩S=m_S and the same residue field k, of any characteristic, including 2. Let Γ be profinite and ρ:Γ→GSp₄(R) continuous, with ρ mod m_R absolutely irreducible, tr ρ(Γ)⊂S and multiplier ν∘ρ(Γ)⊂S^×. Then ρ is conjugate, by an element of GSp₄(R) congruent to 1 modulo m_R, to a representation with values in GSp₄(S) and the same multiplier.

(BCGP25, Lemma 7.4.8 and proof, p.170 (arXiv v1); BCGP25 line 7776.)

Conjugate ρ by some B≡1 mod m_R into GL₄(S) by the GL coefficient descent of IntegralHeckeAndGaloisDeterminants §1.5, which has no restriction on p; call the result ρ′. ρ′ and ν·(ρ′)⁻ᵗ are S-valued, residually absolutely irreducible and have equal traces, so Carayol's lemma (same layer) gives A∈GL₄(S) intertwining them. Over R, Schur's lemma makes A an R^×-multiple of the transported form (B⁻¹)ᵀJB⁻¹, which is alternating; since S⊂R, A is alternating over S (zero diagonal, Aᵗ=−A). No division by 2 occurs. Choose a symplectic basis of the nondegenerate alternating S-form A (possible over any local ring) to conjugate ρ′ into GSp₄(S) with multiplier ν∘ρ. By the same supplier’s integral Schur comparison the composite conjugating element lies in GSp₄(R) and is congruent to 1 modulo m_R.

The target is `symplecticCoefficientDescent`. In Suggested.lean, `standardAlternatingMatrix` is J with J₁₄=J₂₃=1, J₄₁=J₃₂=−1 and all other entries zero. Define `HasPrescribedMultiplier` by ρ(g)ᵀJρ(g)=ν(g)J for every g. The smaller-ring inclusion is injective, local and identifies the residue fields through surjective maps s:S→k and r:R→k with kernels the maximal ideals and r∘ι=s. Both rings are algebraically adically complete and carry exactly their maximal-ideal adic topologies. The group is compact Hausdorff and totally disconnected, ρ is continuous, and residual absolute irreducibility is expressed by the residue-field algebra generated by its matrices being the full matrix algebra. The output is a continuous S-valued representation and a conjugator C reducing to I, with CᵀJC=cJ for a unit c; its extension is CρC⁻¹ and has the original S-valued multiplier. These hypotheses allow infinite residue fields, equal characteristic and nonreduced rings.

The alternating matrix has the following interfaces.

- It is alternating and invertible, with J²=−I and determinant 1 over every commutative ring.
- Applying a unital coefficient homomorphism entry by entry carries J to J over the target ring.
- Exchanging the last two coordinates identifies it with Mathlib’s standard block form.

The prescribed multiplier has the following interfaces.

- Coefficient change and precomposition of a representation carry its specified full character through the same maps.
- Matrices of multipliers u and v have product of multiplier uv and inverse of multiplier u⁻¹, in their stated order.
- Over a nonzero ring the (1,4) entry of the form determines the multiplier uniquely.

These interfaces of the two elementary definitions are prose targets, without extra Lean declarations.

**Checks for the alternating form.**

- Pairing e₁ with e₄ gives 1 and reversing them gives −1; pairing e₁ with e₂ gives 0.
- In characteristic 2 the diagonal is still zero and J²=I, so the form remains alternating and invertible.
- Over ℚ the zero matrix is alternating but has determinant 0; J has determinant 1 and excludes that wrong nondegenerate model.

**Checks for the multiplier.**

- diag(a,b,ν/b,ν/a) has both paired products ν; for a=2,b=3,ν=6 over ℚ they are 6 and 6.
- diag(2,3,4,5) has paired products 10 and 12, so no prescribed common multiplier works.
- The identity representation has multiplier 1; a prescribed multiplier 2 over ℚ would require J=2J and fails in its (1,4) entry.

**Checks.**

- For S=R=𝔽₂ and the full nonabelian Sp₄(𝔽₂) standard representation, the residual matrix algebra has dimension 16; the identity conjugator has multiplier 1 and supplies descent.
- For the trivial group on k⁴ the generated algebra has dimension 1, rather than 16; the absolute-irreducibility hypothesis rejects it.
- For R=k[ε]/(ε²), S=k and C=I+εE₁₄, CᵀJC=J and C mod ε=I; conjugating a constant residual symplectic representation preserves traces and its multiplier, and C conjugates it back.

At p=2 this replaces the odd-p symplectic descent of IntegralHeckeAndGaloisDeterminants Layer 1.5, whose cited argument splits invariant forms into symmetric and alternating parts. The hypothesis that the multiplier is S-valued is used; for Hecke-valued representations it holds because the central Hecke operators lie in the Hecke image.

*Needs:* IntegralHeckeAndGaloisDeterminants §§1.1–1.7.

### NR10.6 Deformation action on the higher-Hida modules

For every N,w construct the Λ[ΔQN]-algebra map RSQN→TSQN. When the localized module is nonzero, this map classifies the interpolated symplectic Galois representation with full multiplier ε⁻¹ and the source’s local ordinary and tame conditions. When its action image is the zero ring, the assertion is the unique algebra map to that ring; the zero ring is not treated as a coefficient object with residue field k. The maps commute with augmentation to RS→TS and with the actions on M_N,w and M_w. At p=2 the descent step uses NR10.5 (BCGP25 Lemma 7.4.8) in place of the upstream odd-p symplectic descent.

(BCGP25, Lemma 7.4.8 and Proposition 7.4.10 with proof, p.170; BCGP25 line 7799.)

If the localized module is zero, use the unique algebra map to its zero image. Otherwise argue as in BCGP21 Theorem 7.9.4: the Hecke image embeds in a product of fields given by dense regular classical points, the product of their GSp₄-valued representations has traces and multiplier in the Hecke image (the central operators lie there), and NR10.5 descends it to the Hecke image for every p. Verify ordinary local characters and every tame local deformation condition, then apply the universal property. Check the two diamond actions agree and pass to the full-center specialization. At p=2 no further supplier is needed for the descent: NR10.5 holds in residue characteristic 2.

**Checks.**

- At a zero localized module, the target action ring is the zero ring and there is its unique unital map from the deformation ring.
- On two genuine eigenspaces the product of Hecke evaluations has kernel equal to their common action kernel; a product of unrelated representation rings is not an action image.
- For the same two-dimensional diamond character, deformation inertia and module diamonds must both send a chosen generator to the same unit u; u and u⁻¹ differ unless u²=1.

Dense field-valued points do not automatically provide an integral GSp₄-valued representation over a nonreduced ring.

*Needs:* NR10 (characteristic-zero auxiliary hecke image); NR10 (symplectic coefficient descent in every residue characteristic); NR2 (ordinary weight-two galois representation); GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above; IntegralHeckeAndGaloisDeterminants §§1.1–1.7; IntegralHeckeAndGaloisDeterminants IHG.4.

### NR10.7 Projective Satake comparison and diamond coinvariants

On the regular residual Satake block, use the projective finite-group module comparison of Lemmas 7.4.11–7.4.12 to identify spherical and selected Iwahori invariants without dividing by 8. After partial-central specialization and then the full central character, (M_N,w)ΔQN≅M_w equivariantly for RSQN→RS. This is the exact augmentation comparison required in Hypothesis 7.2.1(4).

(BCGP25, Lemmas 7.4.11–7.4.12, pp.171–172; Lemma 7.4.15, p.173; BCGP25 line 7869.)

Apply the norm/invariants/coinvariants comparison only to the supplied projective finite-group module. Calculate the regular Satake block at each auxiliary prime and verify that the selected character factor is the spherical one. Impose the central conditions in the order used by the projectivity theorem, then identify the augmented Hecke and Galois actions.

**Checks.**

- On the regular k[C₂]-module in characteristic 2, coinvariants have basis [1] and invariants have basis 1+g; norm sends [1] to 1+g and is an isomorphism.
- On the trivial k[C₂]-module in characteristic 2, norm is 1+1=0 although invariants have dimension 1; projectivity is essential.
- For Δ=1, the augmented module is M_w itself and the norm is identity.

A blanket assertion that invariants commute with quotient or base change is not valid here.

*Needs:* NR10 (freeness over weight and diamond algebras); NR10 (deformation action on the higher-hida modules); SmoothRepresentationsOfLocalGroups SR.4.1–SR.4.5; the local-block and projective-Satake gaps above; PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; SmoothRepresentationsOfLocalGroups SR.4.5 (gap:projective-finite-group-satake); DeformationAndDerivedPatchingAlgebra §5.9.

### NR10.8 Characteristic-zero local freeness

Let q⊂RS be the characteristic-zero prime defined by ρ. For each w, (M_w)q is a finite free (RS)q-module, with rank possibly zero. Apply the abstract characteristic-zero patching theorem to the finite Λ[ΔN]-free modules with compatible augmentation. Its proof must use a cofinal system of open ideals suitable for both the weight variables and diamond variables, a constructed compatible action of the patched deformation ring, the cotangent bound, and a justified lift through the completed regular local ring. These extra proof obligations are recorded explicitly; the printed assertion that powers of the augmentation ideal alone form the needed cofinal system is insufficient.

(BCGP25, Hypothesis 7.2.1, Lemma 7.2.2 and Proposition 7.2.3, pp.161–163; Proposition 7.4.16, p.174; BCGP25 line 7435.)

Use the exact supplier contract for the corrected abstract patching construction from the commutative-algebra owner, with open ideals containing weight/maximal-ideal powers and large enough diamond kernels. Construct the ring action before using the patched module; compare the quotient topology with the module topology. At q invert p, use the bounded relative cotangent module to get the completed-ring surjection. Justify the S∞-algebra lift and the dimension/depth calculation with the same coefficient ring. Apply Auslander–Buchsbaum and specialize the augmentation to obtain finite local freeness. Do not infer automorphy, positive support, global freeness or rank one at this stage.

In applying §5.8 of DeformationAndDerivedPatchingAlgebra, prove the uniform bound on valuations of the inverted marked-point elements, a uniform number of generators for the marked point ideals, and preservation of the diagonal O-section in the finite-module comparison. Then check the images of products, point ideals and their squares, and the completed coefficient diagram. These are explicit arithmetic comparison targets of this subsection, with source and target the marked global deformation rings and the patched Hecke action ring; uniform cotangent annihilation alone supplies none of them.

**Checks.**

- For (1+t)^(pᴺ)−1, the t coefficient is pᴺ≠0 over characteristic-zero O; hence the diamond relation is not in (t²), for any N.
- A free local module of rank 0 remains zero after localization; local freeness permits zero support.
- The quotient E[[x]]→E[[x]]/(x²) has zero relative cotangent yet kernel (x²)≠0; a cotangent surjection alone proves no isomorphism.

The proof obligations on the patched ring action and lift remain open supplier contracts; this target is conditional on them.

*Needs:* NR10 (projective satake comparison and diamond coinvariants); DeformationAndDerivedPatchingAlgebra §§3.1–3.3, 5.8; DeformationAndDerivedPatchingAlgebra §§5.5–5.8; DeformationAndDerivedPatchingAlgebra §§6.1–6.7; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above.

### Examples

For p=2 use r≢1 mod 4, rather than the impossible condition r≢1 mod 2 for an odd r.

### Dependencies

ArithmeticGaloisRepresentations §§7.3–7.5, 7.9–7.12; DeformationAndDerivedPatchingAlgebra §§3.1–3.3, 5.8; DeformationAndDerivedPatchingAlgebra §§5.5–5.8; DeformationAndDerivedPatchingAlgebra §§6.1–6.7; NR2; GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); PadicFamiliesPartII F8 (gap:p12-ordinary-horizontal-control in NR9); PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; IntegralHeckeAndGaloisDeterminants §§1.1–1.7; IntegralHeckeAndGaloisDeterminants §§2.1–2.3; IntegralHeckeAndGaloisDeterminants IHG.3a–IHG.3b; IntegralHeckeAndGaloisDeterminants IHG.4; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above; PadicHodgeTheory §§3.2–3.6, 4.4, 5.3–5.4; SmoothRepresentationsOfLocalGroups SR.4.1–SR.4.5; the local-block and projective-Satake gaps above. The subsection *Needs* lines give the statement and route inputs separately.

## Layer NR11: Rank one and classical weight-two lifting

Define the two-wall R-regular weight condition and compute multiplicity one only at nonzero regular points on the relevant component. Retain all five conditions of each dyadic/odd automorphic-seed alternative. Prove support through the singular point using the appropriate regular ordinary lifting and solvable descent suppliers, then rank one separately in all four chambers. Apply the image/de Rham/four-multiplicity higher-Coleman criterion to deduce classical weight-two modularity, retaining all explicit proof premises.

### NR11.0a Regular ordinary unitary finiteness and support

For a CM extension F/F⁺ and n≥2, let r̄:G_F→GLₙ(k) be the residual representation of an ordinary RACSDC seed π. Assume F/F⁺ everywhere unramified; every place above 2 and every place below ramification of π splits in F; n[F⁺:ℚ] is divisible by 4; the residual image is nearly adequate and contains a regular-semisimple element; and, for even n, the polarized pair with multiplier ε̄^(1−n)δ_(F/F⁺)^n is strongly residually odd at an infinite place. Let T be a finite split set containing all places above 2 and all seed ramification. For the variable-weight ordinary polarized deformation problem with these fixed data, prove that R_(T,ord) is finite over its weight algebra Λ. At every sufficiently deep tame level of BCGP25 Definition 5.7.13, prove that its surjective ordinary Hecke map has nilpotent kernel and identifies the reduced deformation ring with the ordinary Hecke image. This is the general regular ordinary support theorem, rather than an assumption that the singular target is automorphic (BCGP25 Theorem 5.7.14, pp.134–135; BCGP25 line 6088).

Use polarized global deformation and Taylor–Wiles theory, ordinary projective modules, both auxiliary tame deformation types and Ihara avoidance, retaining the dyadic global h³ term.

Construct the ordinary definite-unitary integral tower on the group over F⁺ compact at infinity and quasi-split at finite places determined by these hypotheses. Its coefficient functions satisfy f(gu)=u⁻¹f(g) for the actual algebraic weight and the specified tame types. At places above 2 use upper-Iwahori level (b,c). For a_v,j=diag(ϖ_v,…,ϖ_v,1,…,1), with j copies of ϖ_v, normalize the double coset by U_v,j=(w₀λ)(a_v,j)⁻¹[U a_v,j U], where w₀ is the longest Weyl element. The algebraic character takes a_v,j to a nonzero E-value; prove integral preservation before reduction. Use the commuting torus diamonds and the ordinary summand from the supplied factorial projector. Form the direct limit of E/O-valued ordinary forms at deeper wild levels, its compact O-linear fraction-quotient dual, and the actual inverse-limit Hecke action image. The weight algebra is O[[T(2)]], where T(2) is the kernel of reduction of the product of local unit tori. On the universal λ=0 tower the weight action is u↦(∏τ∏_(i=1)^n τ(u_i)^(1−i))⟨u⟩; all indices i in this formula run from 1 to n. The nonzero unit factor is retained through arithmetic specialization. Prove finite generation of the Hecke image over this weight algebra and its arithmetic-character comparison with the corresponding finite-level ordinary Hecke characters, including the algebraic weight twist. At sufficiently small tame level prove the auxiliary finite-group projectivity, norm/descent and horizontal comparisons used by the free-module patching datum, for both chosen tame deformation types. These are supporting targets of this subsection, not a claim that the genus-two modules of PadicFamiliesPartII F8 supply arbitrary-rank unitary forms (BCGP25 §5.7, pp.130–134; BCGP25 line 5905 and line 5988).

The tower has the following interfaces.

- The coefficient action and normalized Hecke maps respect level inclusions, the weight character and the fixed central and tame types.
- The E/O direct limit, compact dual and inverse-limit action image retain the same ordinary projector and prime-to-2 Hecke polynomials.
- At the specified small levels the finite auxiliary-group norm gives the actual augmentation comparison, and regular arithmetic character specializations recover the stated finite-level systems.

**Checks for unitary ordinary coefficients.**

- At trivial weight and one free class, the coefficient module is O and the identity double coset acts by 1; an inverse coefficient convention is detected at a character with χ(u)=ζ₃, since u⁻¹ acts by ζ₃⁻¹.
- On the regular k[C₂]-module the unnormalized norm sends [1] to 1+g, including at p=2; on the trivial k[C₂]-module it sends 1 to 0, so small-level projectivity cannot be discarded.
- For n=2 and one embedding, the weight factor at u=diag(1,3) is 3⁻¹=1/3, rather than 3; both are 2-adic units but are distinct. For O[[z]], the two characters z↦0 and z↦ϖ evaluate 1+z to 1 and 1+ϖ; only specified arithmetic characters enter the control comparison.
 For even n at p=2 that term is 1, not 0: the scalar matrix is fixed by transpose conjugation. The Euler-characteristic and presentation calculation must include it. Solvable preparation concerns restrictions of original lifts; it does not say that every lift over the enlarged field is unipotently ramified. The necessary general ordinary coefficient/control input is the definite-unitary tower constructed in this subsection, together with the explicit dyadic local and global contracts. After solvable preparation, use the trivial-residual component theorem only when [F_v:ℚ₂]>n(n−1)/2+1 and after splitting the torsion-character components over E. At n=4 and degree 8 the local dimension is 1+16+8·10=97; degree 7 fails the strict large-degree hypothesis (BCGP25 Proposition 5.6.6 and Remark 5.6.7, p.129; BCGP25 line 5831).

**Checks.**

- With n=4 and F⁺=ℚ, n[F⁺:ℚ]=4 passes the divisibility condition; n=2 and F⁺=ℚ gives 2 and fails.
- At p=2, transpose fixes Iₙ, so the scalar invariant line has dimension 1. Setting h³=0 changes the presentation Euler count by 1.
- A nontrivial 2-power tame character ψ reduces to 1, but ψ⊕1^(n−1) is not unipotently ramified; preparation must quantify over restrictions of the original local lifts.

*Needs:* ArithmeticGaloisRepresentations §§7.4, 7.9–7.12 (gap:integral-enormity-and-oddness); GlobalGaloisDeformations G7 (gap:dyadic-polarized-ordinary-global-data); LocalGaloisDeformationRings §§6.3, 6.24 (gap:dyadic-general-ordinary-local-image) and its tame quotients; DeformationAndDerivedPatchingAlgebra §§5.6–5.8; AutomorphicFormsOnReductiveGroups §§7.4–7.6 for definite algebraic coefficient spaces; the unitary ordinary tower and control targets in this subsection. The proof uses their finite class spaces, not coherent cohomology of a genus-two variety.

### NR11.0b Regular ordinary symplectic component support

Let p>2 split completely in a totally real field F⁺, and let π be an ordinary cuspidal GSp₄/F⁺ seed of central character |·|², in weight two or regular algebraic weight. Let r̄=r̄π,p be GSp₄-reasonable and tidy. Choose compatible ordinary stabilizations at every v|p, with the seed point lying on a unique component of the ordinary local image ring. Let R be a finite set of prime-to-p places containing seed ramification; at each v∈R require trivial residual representation, q_v≡1 modulo p, q_v≡1 modulo 9 when p=3, and an Iwahori-fixed seed vector. Choose the neat prime w₀ provided by tidiness, and the ordinary global deformation problem with the seed-selected components at p and unipotent conditions at R. Prove that this component deformation ring is finite over Λ_(GSp₄,F⁺), and its surjective Hida Hecke map has nilpotent kernel and identifies its reduction with that Hecke quotient. The construction does not require residual p-distinction; it retains the scheme-theoretic ordinary image ring and its arithmetic point condition (BCGP25 Hypothesis 6.3.1 and Theorem 6.3.4, pp.146–148; BCGP25 line 6628 and line 6694).

Use the general rank-four ordinary Taylor–Wiles datum, the two tame deformation types and componentwise Ihara avoidance. Establish full H⁰ adjoint vanishing in the reasonable-image input used to select primes, and retain the integral ordinary module/control comparison. A local point on a component is not enough unless that component is the one selected by the seed.

**Checks.**

- At p=3, q_v=7 is 1 modulo 3 but 7 modulo 9 and fails; q_v=19 is 1 modulo 9 and passes this congruence test.
- In E[x,y]/(xy), the origin lies on two components. A seed there fails uniqueness even when the target lies on x=0 as well.
- At the distinguished weight-two point the two unramified characters may have equal reductions; the scheme-theoretic ordinary image still has an arithmetic point, whereas a residual-distinct flag theorem does not cover it.

*Needs:* ArithmeticGaloisRepresentations §§7.9–7.12 (gap:integral-enormity-and-oddness); GlobalGaloisDeformations G7 and R04.5–R04.6; LocalGaloisDeformationRings §6.29; AutomorphicGaloisRepresentationsPartII AG2.P and AG2.6, including the regular and weight-two Galois systems of NR2.5; PadicFamiliesPartII F8 and the horizontal-control contract; DeformationAndDerivedPatchingAlgebra §§5.6–5.8; AutomorphicBundlesPartII IC.1–IC.5.

### NR11.1 R-regular classical weights

For an integer parameter R≥1 and ordered integral Hodge–Tate weights h₁,h₂ of the two ordinary torus characters, define R-regular numerical weight by h₂−h₁≥R and 1−2h₂≥R. For a weight-space point also require that the two inertia characters are algebraic with these weights. The light numerical predicate is separate from the existence of those algebraic characters.

(BCGP25, Definition 7.5.7, p.176; BCGP25 line 8091.)

Use a positive natural bound R and the existing integer carrier for the two inequalities; transport the resulting condition to the supplied weight-space characters. Derive monotonicity in R and preserve the order of the two characters.

The construction has the following interfaces.

- Unfold the predicate into its two exact integer inequalities.
- If 1≤R′≤R then R-regular implies R′-regular.
- A supplied algebraic weight-space point is R-regular precisely when its ordered Hodge–Tate pair satisfies the numerical predicate.

**Checks.**

- For R=3, h₁=−4,h₂=−1 satisfy both inequalities with equality.
- For R=3, h₁=0,h₂=3 satisfies the first inequality but fails the second.
- Swapping (−4,−1) to (−1,−4) fails the first inequality for R=3.
- At R=0 both inequalities can hold at (0,0), but the definition requires R≥1; arithmetic regularity has a positive gap.

Do not replace the second inequality by a difference of the weights, or apply the predicate to arbitrary smooth characters.

*Needs:* NR10 (characteristic-zero weight-two patching data); PadicFamiliesPartII E6/four-pieces and F8; ShimuraData §§5.9–5.10, 5.18.

### NR11.2 The dyadic and odd-prime automorphic seeds

For NR10 data require one of two seed alternatives. A: p=2, a solvable CM extension F/Q and ordinary RACSDC π on GL₄/F with r̄π,2≅ρ̄|GF, nearly adequate residual image over F, a residual regular-semisimple element there, a strongly residually odd polarized pair (ρ̄|GF,1) at an infinite place of F⁺, and ρ̄(GQ(i))=ρ̄(GQ). B: p>2, an ordinary cuspidal GSp₄/Q seed π with central |·|² and ρ̄π,p≅ρ̄, GSp₄-reasonable and tidy residual representation, a regular-semisimple element outside Sp₄(Fp), and compatible p-stabilizations such that the seed local representation lies on a unique ordinary component and ρ lies on that same component. The initial matching is residual, not equality of the target p-adic representation with an automorphic one.

(BCGP25, Proposition 7.5.10, hypotheses (A1)–(A5) and (B1)–(B5), p.177; BCGP25 line 8129.)

Use the residual image and polarized-oddness notions from their supplier APIs with their actual coefficient fields. Record all five conditions in each alternative and the exact residual restriction field. In alternative B include the unique-component property for the seed local representation in addition to shared component membership.

The construction has the following interfaces.

- Expose exactly the dyadic A or odd-prime B alternative, retaining all five conditions.
- Return the specified residual isomorphism over GF or GQ, as appropriate.
- In B return the unique seed ordinary component and membership of the target point on it.

**Checks.**

- A seed with matching residual system but different characteristic-zero Hecke eigenvalues may satisfy the initial matching condition.
- Shared membership on one of several seed components does not meet B5’s unique-component clause.
- The p=2 seed is rejected when A4 is absent even if residual matching and near adequacy hold.

Do not strengthen residual matching to p-adic matching in a way that would assume the conclusion. Nearly adequate, reasonable and tidy are separate imported predicates with definition-level supplier requests.

*Needs:* NR10 (characteristic-zero weight-two patching data); ArithmeticGaloisRepresentations §§7.3–7.5, 7.9–7.12; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above.

### NR11.3 Multiplicity one at a nonzero regular point

Choose Kℓ=Par(ℓ^a(ρ|GQℓ)) at ℓ∉{p,r}. Let q′ be a characteristic-zero point on a common irreducible component of RS[1/p] with q. For sufficiently large R, if q′ has R-regular classical weight and (M_w)q′≠0, then dimE(M_w/q′M_w)[1/p]=1 for each w. The nonzero hypothesis is essential; this theorem does not construct a classical point in the support.

(BCGP25, Proposition 7.5.1 and Lemma 7.5.2, pp.174–175; equation (7.5.5) and Lemma 7.5.8, pp.176–177; BCGP25 line 8103.)

Use regular arithmetic control to identify the fiber with the sum of cuspidal automorphic representations having the same Galois point and the specified refinements. Use localized boundary/interior comparison and global multiplicity one for general-type packets; these are supplier inputs, not new classification theorems here. At ℓ≠p,r use the unique generic paramodular newvector at the conductor and constancy of the relevant pure local conductor on the component. At p use the one-dimensional simultaneous ordinary refinement eigenspace of the regular principal series; at r use the one-dimensional selected Iwahori block and residual regular semisimplicity.

**Checks.**

- A nonzero free rank-one fiber has dimension 1; the zero fiber has dimension 0 and is excluded from this assertion.
- At each local factor a unique selected line contributes 1, so their tensor product contributes 1; two p-refinement lines would instead contribute 2.
- At R=3 the weight (−4,−1) has gaps 3 and 3, whereas (0,3) has gaps 3 and −5 and is not regular.

A point on another local deformation component is not covered by the conductor/refinement argument.

*Needs:* NR11 (r-regular classical weights); NR10 (four localized higher-hida multiplicity modules); NR2 (pure general-type monodromy upgrade); PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above.

### NR11.4 Support through the singular point

With NR10 data and one seed alternative, prove (M_w)q≠0 for all four w by exhibiting a deformation component through q contained in Hecke support. The dyadic route uses ordinary unitary deformation finiteness and regular automorphy lifting after solvable CM base change, followed by solvable descent. The odd-prime route uses the component selected by B5 and regular GSp₄ ordinary automorphy lifting. Only the component through q is required; no global identification of all reduced deformation components with the Hecke algebra is asserted.

(BCGP25, Proposition 7.5.10 proof, pp.177–179; Lemma 7.5.4, p.176; Proposition 7.5.3, p.175; Theorems 5.7.14 (p.134) and 6.3.4 (p.148) as imported inputs; BCGP25 line 8169.)

Apply the regular ordinary finiteness/automorphy targets NR11.0a–NR11.0b, including the dyadic near-adequacy and local component hypotheses. Use finiteness and the dimension lower bound to make a component through q dominate the relevant weight component, then prove density of regular arithmetic points there. Apply the appropriate regular automorphy theorem at those points and the source’s solvable descent Proposition 7.5.3 to put them in Hecke support. Pass from dense supported points to support of the selected component; since M_w is finite and locally free at q, infer its positive local rank.

Use NR11.0a for the dyadic regular ordinary finiteness/automorphy input and NR11.0b for the odd-prime component input. The solvable-descent hypotheses include irreducibility of the restricted representation and the ε twist in the CM alternative. A dense subset is taken inside the same component through q and inside the neighborhood where the module is free.

**Checks.**

- For A=E×E and M=E×0, support is precisely the first component; a point on the second has zero fiber despite the existence of an automorphic point on the first.
- A finite module has closed support; if its annihilator vanishes at a dense subset of a component, the entire component lies in its zero locus. On A=E[x], a polynomial vanishing on infinitely many E-points is 0.
- A nilpotent thickening A=E[ε]/(ε²), M=E has full set-theoretic support but nonzero annihilator (ε); support does not imply a global reduced R=T comparison on unrelated components.

This is the nonvanishing proof; local freeness alone gives no support. The regular lifting theorems are an explicit missing interface (regular ordinary support gate) and the solvable descent is requested from EndoscopicTransferAndUnitaryTraceComparison ET.7; neither is hidden in the word seed.

*Needs:* NR11 (the dyadic and odd-prime automorphic seeds); NR10 (characteristic-zero local freeness); GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above; PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; EndoscopicTransferAndUnitaryTraceComparison §13.2; NR11.0a–NR11.0b; EndoscopicTransferAndUnitaryTraceComparison §13.2.

### NR11.5 Rank one at the weight-two point

Under the running NR10 data, the complete seed alternative and the corrected patching/supplier proof obligations, (M_w)q is finite free of rank one over (RS)q for every one of the four w. The deduction combines local freeness, positive support through q and a sufficiently regular nonzero classical point on a relevant component; it does not equate total rank across the four chambers with one.

(BCGP25, Proposition 7.5.10 conclusion and final proof paragraph, pp.177–179; BCGP25 line 8232.)

Use finite local freeness at q to obtain a neighborhood on which each module has constant rank. Choose a dense R-regular arithmetic point on the supported component in that neighborhood. Apply regular multiplicity one at this nonzero point and identify the free-module fiber dimension with the constant rank. Repeat for each w, retaining all four one-dimensional fibers.

**Checks.**

- Four free fibers of dimension 1 have individual rank 1 and total dimension 4; total rank is not 1.
- On a neighborhood where a finite module is free of rank d, its fiber at every point has dimension d; one nonzero regular fiber of dimension 1 forces d=1.
- A rank-zero module has zero fiber at every nearby point and fails the nonvanishing input.

The argument needs the regular point in the free neighborhood and in support, not merely somewhere on the deformation space.

*Needs:* NR11 (support through the singular point); NR11 (multiplicity one at a nonzero regular point); NR10 (characteristic-zero local freeness).

### NR11.6 Ordinary weight-two modularity lifting

Assume NR10 data, the full dyadic or odd seed alternative, the explicit corrected patching and interpolation proof obligations, and either Zariski image containing Sp₄ or image containing SL₂×SL₂ with ρ irreducible and becoming reducible over an index-two subgroup. Then ρ is the representation of a classical cuspidal Siegel modular form of weight (2,2). Use the local semistable weight-two hypothesis to supply de Rhamness and the four rank-one multiplicities to verify the higher-Coleman classicality criterion. The theorem is not obtained by removing the H² hypothesis from CG20’s integral R=T theorem.

(BCGP25, Theorem 7.5.11, p.179; Theorem 4.12.4 and Remarks 4.12.5–4.12.6, pp.113–114; BCGP25 line 8241.)

At q use the arithmetic specialization/control theorem to obtain the ordinary overconvergent eigensystem with the same full good-prime data. Use isotypy to identify its completed eigenspace with ρ⊗W, not just an unspecified four-dimensional representation. The four rank-one graded pieces give equal multiplicities n=1 and total dimension 4. Semistability gives de Rhamness and semisimplicity of the required Sen operator. Apply the imported classicality theorem; retain the classification input on packets used to pass from higher-degree classicality to the degree-zero cusp form. Compare the geometric and dual-spin conventions before concluding that the form realizes the original ρ.

**Checks.**

- With four graded dimensions 1, their sum is 4; isotypy gives total dimension 4n with n≥1, hence n=1.
- For a repeated Sen block [[a,1],[0,a]], the nilpotent part has rank 1; de Rham semisimplicity forces rank 0, killing the singular differential.
- The two weights at a=2 are 0 and 1, each repeated twice; replacing the four chamber multiplicities by one total bound does not verify four equal graded dimensions.

Classicality requires both de Rhamness and the four matching multiplicities. All source and supplier proof premises of NR10–NR11 propagate to this endpoint.

*Needs:* NR11 (rank one at the weight-two point); NR2 (completed eigenspace isotypy); NR2 (dual-spin overconvergent interpolation); PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; PadicHodgeTheory §§3.2–3.6, 4.4, 5.3–5.4; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26.

### Examples

For R=3, h₁=−4,h₂=−1 satisfy both inequalities with equality.

### Dependencies

ArithmeticGaloisRepresentations §§7.3–7.5, 7.9–7.12; EndoscopicTransferAndUnitaryTraceComparison §13.2; NR10; NR2; GlobalGaloisDeformations G7 (gap:gsp4-global-patching-data); PadicFamiliesPartII E6/four-pieces and F8; ShimuraData §§5.9–5.10, 5.18; PadicFamiliesPartII E6, S7 and F8; OverconvergentAutomorphicForms §§8.6–8.7; LocalGaloisDeformationRings §§2.7, 2.12, 2.17, 6.3, 6.26–6.29; the ordered-flag and dyadic gaps above; ModularityAndLanglandsExtensions §§3.2, 3.9, 3.26; PadicHodgeTheory §§3.2–3.6, 4.4, 5.3–5.4. The subsection *Needs* lines give the statement and route inputs separately.

## Conditional theorem contracts

The CG minimal R=T implications use the actual cuspidal selected modules at every auxiliary level and coefficient quotient, the all-index Fourier annihilation and scalar kernel vanishing of NR4, and the selected defect inequality of NR7.4. The last requires a compatible integral p-idempotent and a rank comparison on that same summand; balance of the full module is insufficient. In weight (2,2) the uniform H² vanishing on X₀(Q) and X₁(Q) is a separate premise. For 4≤a<p−1 the imported small-weight theorem supplies that premise at all the required levels. The supplementary full p-Hecke-polynomial equality in regular finite-quotient transfer is a separate target: under the normalized p-action comparison, prove the complete Frobenius polynomial equality at p; the away-p transfer and ordinary-character statements of NR3.4 do not assume it.

The P12 ordinary-family implications retain the strong-ordinary flag/Ext comparison, well-ramified local conditions and horizontal control. They yield ordinary p-adic cusp forms at integral weights; a classicality conclusion requires its own analytic and geometric hypotheses. The BCGP implications retain the marked characteristic-zero patching comparisons of NR10.8, all hypotheses of one complete seed alternative, the support results of NR11.0a–NR11.0b and the four independent multiplicity equalities. They use the exact singular Sen/Cousin comparison and classification of packets in the supplied classicality theorem. No equality of all reduced global deformation components is required to conclude rank one on the component through q.

Every classification-dependent assertion is an implication from the specified inputs on packets, multiplicities and twisted weighted stabilization. The local adjoint-L assertion for generic packets is an additional local input to the monodromy theorem, rather than a global analytic nonvanishing assumption (BCGP25 Remark 1.8.20, p.14; BCGP25 line 680).

## Downstream consumers

The minimal and ordinary-family lifting statements supply the GSp₄ modularity endpoints recorded in ModularityAndLanglandsExtensions and the arithmetic applications to abelian surfaces. Their direction is from the classification input to these lifting conclusions. AbelianSurfacesModularity consumes the four-chamber rank-one and classical weight-two theorem with all of its integral-enormity, seed and patching hypotheses. The odd-p CG theorem and the all-p characteristic-zero theorem have distinct conclusions and premises.

## References

All statements are phrased independently; the locators refer to the exact versions listed here. Source-line references identify the numbered extraction of the same file. Bibliographic publication dates do not change the version used for a theorem number.

- **CG20.** Frank Calegari and David Geraghty, *Minimal modularity lifting for nonregular symplectic representations* (2020). Author-hosted published typeset text; PDF page n is published page 800+n. [Legal source](https://www.math.uchicago.edu/~fcale/papers/Siegel.pdf).
- **P20.** Vincent Pilloni, *Higher coherent cohomology and p-adic modular forms of singular weights* (2020). 17 June 2019 author version, 113 pages; numbering and pagination refer to this version. [Legal source](https://www.imo.universite-paris-saclay.fr/~pilloni/complexhidatheorygsp4.pdf).
- **P12.** Vincent Pilloni, *Modularité, formes de Siegel et surfaces abéliennes* (2012). September 2009 author version, 39 pages; locators refer to this version rather than the 2012 publication. [Legal source](https://www.imo.universite-paris-saclay.fr/~vincent.pilloni/Mod.pdf).
- **PS16.** Vincent Pilloni and Benoît Stroh, *Cohomologie cohérente et représentations galoisiennes* (2016). Author text, 30 pages; locators use this version. [Legal source](https://www.imo.universite-paris-saclay.fr/~pilloni/koko.pdf).
- **M14.** Chung Pang Mok, *Galois representations attached to automorphic forms on GL_2 over CM fields* (2014). arXiv:1109.5392v4; §4 treats GSp4; use v4 numbering. [Legal source](https://arxiv.org/abs/1109.5392v4).
- **BCGP25.** George Boxer, Frank Calegari, Toby Gee and Vincent Pilloni, *Modularity theorems for abelian surfaces* (2025). arXiv:2502.20645v1; all numbering and pagination refer to v1. [Legal source](https://arxiv.org/abs/2502.20645v1).
- **BCGP21.** George Boxer, Frank Calegari, Toby Gee and Vincent Pilloni, *Abelian surfaces over totally real fields are potentially modular* (2021). arXiv:1812.09269v3; all numbering and pagination refer to v3. [Legal source](https://arxiv.org/abs/1812.09269v3).
