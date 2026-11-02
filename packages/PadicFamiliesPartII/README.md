# Roadmap: p-adic families, part II — higher coherent cohomology in PEL, singular and Hilbert weights

**Summary.** A p-adic family in one cohomological degree does not see singular coherent weights: classes move between adjacent degrees, and the obstruction to classicality can be a differential between supported cohomology groups. This roadmap extends PadicFamilies, and builds on the general higher Hida and higher Coleman machinery of HigherHidaAndColemanTheory, in five directions taken from the work of Bijakowski–Pilloni–Stroh, Pilloni, and Boxer–Calegari–Gee–Pilloni. (1) Small-slope classicality for overconvergent forms on unramified PEL Shimura varieties of type A and C, by analytic continuation along the dynamics of the normalized U operators. (2) The integral spherical operator on singular genus-two weights, its ordinary amplitude on the p-rank-at-least-one special fibre and the vanishing of the localized Euler characteristic of the Klingen family. (3) Partial-ordinary Hida complexes for `Res_{F/ℚ}GSp₄` over a totally real field in which p splits completely, with derived control, the weight-two doubling injection and the one-Klingen-place comparison with higher Coleman theory. (4) The completed-cohomology Eichler–Shimura spectral sequence on the BGG coefficient category, its genus-two four-piece ordinary filtration, the singular Sen–Cousin comparison and classicality of de Rham ordinary eigenforms of weight (2,2). (5) Four finite projective genus-two Hida modules over the full torus Iwasawa algebra, with classical and higher Coleman specialization, perfect duality and tame group-ring projectivity. The end theorems are the PEL small-slope classicality theorem (§2.8), the Klingen Euler characteristic theorem (§3.5), Hilbert derived ordinary control (§4.7), the doubling injection (§5.8), the one-place rational comparison (§6.7), the four-piece filtration (§7.8), de Rham ordinary classicality (§8.6) and the four projective modules (§9.2–§9.7).

## Scope and ownership

PadicFamilies stops at ordinary modular-curve families, the Fredholm and eigenvariety machine and compact-complex slope charts (PadicFamilies Layers 0a, 0, 2a). HigherHidaAndColemanTheory stops at the general supported theory: the weight dictionary and slope regions (its §§1.1–1.2), dynamical ordinary localization (§2.3), integral Siegel strata and regular control (§3.7), the universal Iwasawa complexes, derived control, duality and genus-at-most-two integral amplitudes (§§4.5, 4.6, 4.8, 4.9), geometric higher Coleman cohomology with its Bruhat–Cousin spectral sequence and interior Cousin subquotients (§§5.1, 5.5, 5.6, 5.8), analytic families with perfect slope blocks and automorphic BGG (§§6.1–6.3, 6.6), ordinary/finite-slope comparison and sharp Siegel bounds (§§8.3, 8.5), and the genus-two checks: the four C₂ weights (§9.1), the singular Klingen complex (§9.4), the isolated spherical Klingen refinement (§9.5), the Klingen analytic family with its relative BGG comparison (§9.6), small-slope extension from the Klingen neighbourhood with threshold `k+2r−3` (§9.7) and two-term Klingen control (§9.8). These are imported, not restated: in particular the Klingen extension threshold, the Klingen BGG scaling with its ranges `s<k−2` and `s<k+1`, and the torsion continuation from the Klingen tube are HigherHidaAndColemanTheory §§9.6–9.7, and this roadmap uses them as stated there.

This roadmap owns: the BPS degree dynamics and Kassaei continuation on unramified type A/C PEL varieties and the resulting classicality theorem in every dimension (Layers 1–2); the integral spherical genus-two operator `T` of Pilloni §7, its rank-zero vanishing and the special-fibre amplitude theorem, the away-from-p Hecke action on the Klingen family and the localized Euler characteristic theorem (Layer 3); the Hilbert–Siegel partial-ordinary Hida complexes, the weight-two doubling theory and the Hilbert higher Coleman families of Boxer–Calegari–Gee–Pilloni 2021 §§4–6 (Layers 4–6); the BGG coefficient category `O(𝔤,𝔟)_{λ-alg}` with its analytic realization and localization, the coherent completed-cohomology functor and its Eichler–Shimura spectral sequence, genus-two boundary vanishing and the four-piece filtration (Layer 7); the singular Sen–Cousin comparison and de Rham ordinary classicality (Layer 8); and the four projective Hida modules of Boxer–Calegari–Gee–Pilloni 2025 §7.3 (Layer 9).

The analytic realization and localization of the BGG category (§§7.1–7.2) is owned here because no roadmap earlier in the merge order states it: LieHighestWeight Layer 3 supplies Verma modules for a finite-dimensional Lie algebra, but not the completion `M ⊗_{U(𝔤)} Û(𝔤)`, its continuous dual or the localization on the flag variety. Boundary vanishing for the genus-two completed tower (§7.7) is owned here: CompletedCohomologyPartII §7.8 states the generic implication from boundary vanishing and assigns the `GSp₄` vanishing to its arithmetic consumer.

Left to other roadmaps, by section: PEL data, moduli and normalized higher-level models (PELModuli §§M0–M5); finite flat degrees, Hasse invariants, canonical subgroups and Igusa torsors (HodgeTateAndCanonicalSubgroups §§0.6–0.8, 0.14–0.16, 0.28, 3.6, 5.1, 5.5, 5.8); toroidal and minimal compactifications, normalized models and Koecher principles (ShimuraCompactifications §§C3, C4.16–C4.17, C5.16–C5.26); coherent automorphic coefficients, traces and Hecke operators (AutomorphicBundles §§B2.3, B3.2, B3.4, B4.16, B5.1, B5.10, B5.14); proper GAGA and quasi-Stein cohomology (AdicSpacesPartIII §§R3.4, R3.6, R3.7); Grothendieck duality and the upper shriek functor (SchemeAndStackFoundations §§2.19–2.20); GSp₄ Satake and spin polynomials (SmoothRepresentationsOfLocalGroups §SR.4.5; IntegralHeckeAndGaloisDeterminants §3a.2); coherent multiplicities of GSp₄ limits of discrete series and the large-weight classifications (AutomorphicFormsOnReductiveGroups §§6.4–6.6); the GSp₄/GL₄ transfer (EndoscopicTransferAndUnitaryTraceComparison §11.1); the derived completed tower, its support triangle and derived locally analytic recovery (CompletedCohomologyPartII §§2.2, 6.7, 7.1, F.4); Sen operators (PadicHodgeTheory §4.4); the Nekovář multiplicity argument (ArithmeticGaloisRepresentations §§5.11, 7.6); complete group algebras (PadicMeasuresIwasawaAlgebras §§1.1, 1.7); residual detection of perfect amplitude and Sylow projectivity (DeformationAndDerivedPatchingAlgebra §§5.9, 7.1, 7.3). Potential modularity, Taylor–Wiles patching, the stronger Hilbert vanishing of BCGP21 §5.9 and torsion conjectures for the Klingen family are not targets of this roadmap.

## Conventions

Cohomological grading: `Hⁱ(C[r]) = H^{i+r}(C)`. Perfect amplitude `[a,b]` means a finite projective representative in degrees `a,…,b`. Derived fibres are derived tensor products until concentration or flatness is proved; ordinary cohomology tensored with a character is never substituted for a derived fibre. Valuations are normalized by `v_p(p) = 1`. A finite-slope block is the generalized eigenspace of a finite set of nonzero eigenvalues (equivalently the direct factor cut out by a polynomial `P` with `P(0) ≠ 0`); multi-place operators act jointly on such a block, and compactness on the full complex is asserted only where a radius-improvement argument proves it.

A boundary divisor is written D, so the subcanonical coefficient is `ω^κ(−D)`. Cuspidal and canonical support have different amplitude bounds and are never interchanged. Neatness, fan refinements, polarization elements and finite-character components are part of every correspondence.

For Siegel coherent weights use the dictionary of HigherHidaAndColemanTheory §1.1: `κ_w(ν) = −w_{0,M} w(ν+ρ) − ρ` and `ν_w(κ) = −w⁻¹w_{0,M}(κ+ρ) − ρ`, with the genus-two coordinates `ρ = (−1,−2)` and the four minimal representatives of lengths 0, 1, 2, 3 of HigherHidaAndColemanTheory §9.1. The Boxer–Pilloni families specialize at `−ν`; Layer 9 transports coefficients along the ring involution `ι([t]) = [t⁻¹]` to compare with the `+λ` convention of BCGP25 and keeps the twist `E(−λ)`. A finite-order character acts through the level and diamond action.

The arithmetic Sen convention: `ℚ_p(1)` has Hodge–Tate weight −1 and Sen eigenvalue +1 (PadicHodgeTheory §4.4; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.P7.2, whose cyclotomic Sen operator is 1). Frobenius elements in Hecke polynomials are geometric.

Each layer states its own standing hypotheses. The PEL layers use unramified type A/C data; the Hilbert layers use `p > 2` split completely in a totally real field; Layer 9 allows every prime. A hypothesis of one layer does not propagate to another.

**Checks.**

- The shift convention: for the complex `ℤ` concentrated in degree 0, `C[1]` has `H^{−1} = ℤ` and `H^0 = 0`; reading the shift the other way would put it in degree 1.
- Rescaling a nonzero eigenvalue by `p^{−a}` changes its slope from s to `s−a`: at `p = 3`, the eigenvalue 9 (slope 2) rescaled by `3^{−3}` is `1/3` (slope −1).
- The cyclotomic witness: `ℚ_p(1)` has Sen eigenvalue `+1`, its dual `ℚ_p(−1)` has `−1`; a convention with Hodge–Tate weight `+1` for `ℚ_p(1)` would flip every Sen value of Layer 7.

## Exact supplier contracts

### From Mathlib

At the pinned Mathlib use `Module.End` (Mathlib/Algebra/Module/LinearMap/End.lean:32) for endomorphisms; `LinearMap.prod` (Mathlib/LinearAlgebra/Prod.lean:95) and `LinearMap.coprod` (Mathlib/LinearAlgebra/Prod.lean:199) for the companion operator of §5.6; `Module.End.genEigenspace` (Mathlib/LinearAlgebra/Eigenspace/Basic.lean:71) for generalized eigenspaces and finite-slope blocks; `Polynomial.aeval` (Mathlib/Algebra/Polynomial/AlgebraMap.lean:259) for polynomial inverses on blocks; `Module.Projective` (Mathlib/Algebra/Module/Projective.lean:70), the splitting property, for projectivity; and `DerivedCategory` (Mathlib/Algebra/Homology/DerivedCategory/Basic.lean:87). `LinearMap.eventually_isCompl_ker_pow_range_pow` (Mathlib/RingTheory/Artinian/Module.lean:308) is the Fitting decomposition of an endomorphism of a module that is both Artinian and Noetherian; it does not supply a derived ordinary projector, which is HigherHidaAndColemanTheory §2.3.

### From Tau Ceti

At the pinned Tau Ceti, `TauCeti.VermaModule` (TauCeti/Algebra/Lie/HighestWeight/Verma.lean:195) is the Verma module `U(L)/vermaIdeal`, for a finite-dimensional Lie algebra with nondegenerate Killing form over a field of characteristic zero, a splitting Cartan subalgebra and a base of its roots. It does not cover reductive Lie algebras with a centre or the BGG category; for the reductive `𝔤` of Layer 7 a Verma module is that of the derived algebra extended by the central character, and the category `O(𝔤, 𝔮)_{λ-alg}` is a target (§7.1). Shimura varieties, toroidal models, supported coherent cohomology, analytic coefficient complexes and completed cohomology are supplied by the roadmaps below or are targets here.

### From TauCetiRoadmap.HigherHidaAndColemanTheory

- §1.1: the cohomological weight dictionary `κ_w`, `ν_w` and Serre-dual weights.
- §1.2: relative slopes and geometric classicality regions.
- §2.3: supported ordinary localization (the derived ordinary direct factor).
- §3.7: regular global ordinary control for integral Siegel strata.
- §4.5, §4.6: the perfect universal Iwasawa coefficient complexes `M_w` and derived arithmetic control.
- §4.8, §4.9: integral Iwasawa Serre duality and integral amplitudes in genera one and two.
- §5.1, §5.5, §5.6, §5.8: finite-level Bruhat geometry, the finite-slope Bruhat–Cousin spectral sequence, cuspidal vanishing by Bruhat length and interior Cousin subquotients.
- §6.1, §6.2, §6.3, §6.6: normalized analytic torus action, supported analytic family cohomology, finite perfect family slope blocks and the automorphic analytic BGG spectral sequence.
- §8.3, §8.5: ordinary comparison in weight families and sharp Siegel bounds.
- §9.1, §9.4, §9.5, §9.6, §9.7, §9.8: the four genus-two weights, the singular Klingen complex `M_Kli` over `Λ₁ = ℤ_p[[ℤ_p^×]]`, the isolated spherical Klingen refinement, the Klingen analytic family with its relative BGG comparison, small-slope extension from the Klingen neighbourhood and two-term Klingen control.

### From TauCetiRoadmap.PadicFamilies

- Layer 0a: ordinary projectors on finite, profinite and locally finite complexes (§§0a.22, 0a.25).
- §2a.15, §2a.16: compact-representative slope charts and spectral varieties of compact complexes.

### From TauCetiRoadmap.PELModuli

- §M0.27: τ-parts at an unramified prime.
- §M1.13: level change and the Hecke action.
- §M2.8, §M2.9, §M2.10: representability and smoothness at good primes, the universal family and the Kodaira–Spencer isomorphism.
- §M4.5, §M4.6: normal integral models at higher p-level.
- §M5.1, §M5.4: Siegel PEL data and the principal Hilbert datum.

What PELModuli must provide (gap:pel-iwahori-complements): §M4.5 — For unramified type A and C PEL data satisfying BPS Hypothesis 1.1.1, the Iwahori-level moduli of Morita-reduced isotropic flags with their complement correspondences, quotient isogenies, polarization transport by totally positive elements and compatibility with fan refinement.

What PELModuli must provide (gap:hilbert-siegel-models): §M5.4 — The Hilbert–Siegel datum `Res_{F/ℚ}GSp₄` for totally real F with p split, its moduli with Klingen or Iwahori level at each place above p and the normalized integral models of §M4.5 at that level.

What PELModuli must provide (gap:kodaira-spencer-isogeny): §M2.10 — The `O_F`-linear Kodaira–Spencer isomorphism for Hilbert–Siegel moduli and its compatibility with prime-to-p quasi-isogenies over `ℤ_(p)`, including the polarization factor (BCGP21 Proposition 5.5.1).

### From TauCetiRoadmap.HodgeTateAndCanonicalSubgroups

- §0.6, §0.7, §0.8: Fargues degree, additivity, duality, extreme values and increase along generic isomorphisms with the equality case.
- §0.14, §0.15, §0.16: the Hasse invariant and its extension to compactifications.
- §0.28: quotients of truncated Barsotti–Tate groups by subgroups of the p-torsion.
- §5.1, §5.5, §5.8: Igusa torsors, the modified Hodge bundle and the Andreatta–Iovita–Pilloni torsor.

What HodgeTateAndCanonicalSubgroups must provide (gap:hilbert-siegel-partial-igusa): §5.1 — For the Hilbert–Siegel datum, the height-one multiplicative subgroup on the p-rank-at-least-one locus at the places of I, the selected multiplicative and ordinary flags, and the partial Igusa torsor with group `∏_{v∈I}ℤ_p^× × ∏_{v∉I}(ℤ_p^×)²`, with affine étale non-finite transitions and toroidal quotients.

What HodgeTateAndCanonicalSubgroups must provide (gap:hilbert-siegel-frame-torsor): §5.8 — For the Hilbert–Siegel datum at mixed Klingen/Iwahori level, the canonical-subgroup Hodge–Tate frame torsor, the modified lattice with `p^{1/(p−1)}ω ⊂ ω^mod ⊂ ω` and its radius-change estimates, compatible with determinants and the boundary.

### From TauCetiRoadmap.AdicSpacesPartIII

- §R2.10: fractional bounds, section domains and Hasse domains.
- §R3.4: quasi-Stein spaces.
- §R3.6: Kiehl's proper mapping theorem and completely continuous restrictions.
- §R3.7: proper GAGA.

What AdicSpacesPartIII must provide (gap:bounded-section-gluing): §R2.10 — On a normal rigid space, completeness of bounded sections of a coherent integral lattice and gluing of sections modulo `p^A` for growing A over admissible strict-neighbourhood covers, as used in BPS Proposition 4.1.2.

### From TauCetiRoadmap.ShimuraCompactifications

- §C3.1, §C3.3, §C3.9: refinement maps, toroidal Hecke correspondences and independence of coherent cohomology from the cone system.
- §C4.16, §C4.17: the compactified Klingen correspondence and acyclicity of its first projection.
- §C5.16, §C5.19, §C5.20, §C5.21, §C5.22: the minimal compactification, normalized models at higher p-level (including the Bijakowski–Pilloni–Stroh model), their charts, formally canonical coefficients and the Koecher principle with its dimension-one exception.
- §C5.25, §C5.26: codimension of the Hilbert–Siegel minimal boundary and the formal Hilbert–Siegel Koecher principle.

What ShimuraCompactifications must provide (gap:partial-hasse-regularity): §C5.20 — On the Hilbert–Siegel and Siegel normalized models, regularity of the partial Hasse invariants after arbitrary powers of the others on the supported special-fibre strata, relative toroidal-to-minimal acyclicity of the cuspidal coefficients, and the two-affine cover of the p-rank-at-least-one minimal special fibre (P20 Lemma 8.2.1, BCGP21 Theorem 4.2.12).

What ShimuraCompactifications must provide (gap:mixed-cube-cover): §C5.25 — The cover of the mixed-level Hilbert–Siegel minimal compactification by the `2^{|I|}` affinoids indexed by `[2,3]^I` whose finite intersections are acyclic for the toroidal-to-minimal pushforward of the analytic coefficients (BCGP21 Theorem 6.2.6).

What ShimuraCompactifications must provide (gap:tame-boundary-stabilizers): §C3.3 — For normal neat tame levels `K₁ ⊂ K₂` of the Siegel threefold, the action of `K₂/K₁` on a common toroidal model with stabilizers of order prime to p and the identifications `O_{X₂} = RΓ(K₂/K₁, Rπ_*O_{X₁})`, also with −D and for traces (BCGP25 proof of Theorem 7.3.1(5)).

### From TauCetiRoadmap.AutomorphicBundles

- §B2.3: highest weights and coefficient conventions.
- §B3.2, §B3.4: canonical and subcanonical extensions.
- §B4.16: Siegel coefficients `Sym^kω ⊗ det(ω)^r`.
- §B5.1, §B5.10, §B5.14: finite locally free traces, geometric Hecke operators and Fourier–Jacobi expansions.

### From TauCetiRoadmap.SchemeAndStackFoundations

- §2.19, §2.20: the right adjoint of pushforward, the upper shriek functor and relative dualizing complexes.

What SchemeAndStackFoundations must provide (gap:lci-fundamental-class): §2.19 — For a proper lci morphism between normal flat lci `ℤ_p`-schemes that is not finite flat, the fundamental class `p^*O → p^!O`, its compatibility with base change along the generic and ordinary loci, and extension of divisibilities across closed subsets of codimension two (P20 §4.2 and §7.1).

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

- §SR.1.4: Iwahori decompositions and positive Hecke algebras.
- §SR.4.5: GSp₄ spin polynomials with Pilloni's normalization.

### From TauCetiRoadmap.IntegralHeckeAndGaloisDeterminants

- §2.3: operator localization and ordinary parts.
- §3a.2: spin, dual spin and full multiplier.

### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups

- §6.4, §6.5, §6.6: components of GSp₄ and coherent multiplicities, coherent cohomology of discrete series and their limits, and the large-weight classifications (including the `Res_{F/ℚ}GSp₄` large-weight theorem and the sign-corrected Pilloni Theorem 15.2.2.1(2)).

What AutomorphicFormsOnReductiveGroups must provide (gap:gsp4-singular-balance): §6.6 — For a non-Eisenstein prime-to-p Hecke eigensystem of GSp₄ and a sufficiently large singular weight, equality of the localized coherent multiplicities of the holomorphic and generic limits of discrete series at the same finite representation (P20 Proposition 15.2.4.1).

What AutomorphicFormsOnReductiveGroups must provide (gap:gsp4-weight-two-stability): §6.6 — Stability of the coherent multiplicity at weight (2,2) along the stable Arthur parameter: for an eigensystem `m_f` as in BCGP25 Theorem 4.12.4, `dim H^0(Sh, ω^{(2,2;−w)})[m_f]` equals `dim H^2(Sh, ω^{(1,1;−w)})[m_f]`.

### From TauCetiRoadmap.EndoscopicTransferAndUnitaryTraceComparison

- §11.1: transfer between GSp₄ and GL₄ for general-type representations.

### From TauCetiRoadmap.CompletedCohomologyPartII

- §2.2: the derived completed tower.
- §6.7: derived locally analytic recovery, including the GSp₄ instance of BCGP25 Theorem 4.8.3.
- §7.1, §7.8: the derived completed support triangle and the boundary-vanishing support comparison.
- §F.4: locally analytic vectors and their derived functor.

### From TauCetiRoadmap.PerfectoidShimuraVarieties

- §3.6: the perfectoid incarnation of the Levi torsor and automorphic-bundle pullback.
- §6.3: the Hodge–Tate period map on the toroidal tower.

What PerfectoidShimuraVarieties must provide (gap:solid-vb-sen): §3.6 — The solid functor `VB_red` from `G`-equivariant sheaves on the flag variety to sheaves on the toroidal Shimura tower, its Chevalley–Eilenberg compatibility and the identification of the horizontal action of the centre of `𝔪` with the arithmetic Sen operator (BCGP25 Theorems 4.5.20 and 4.5.23).

### From TauCetiRoadmap.PadicHodgeTheory

- §4.4: Sen operators; a representation is Hodge–Tate exactly when its Sen operator is semisimple with integral eigenvalues.

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

- §5.11: characteristic polynomials annihilating a second representation.
- §7.6: Zariski closures, strong irreducibility and the GSp₄ semisimplicity criteria (BCGP25 Propositions 4.11.1–4.11.2).

### From TauCetiRoadmap.AutomorphicGaloisRepresentations

- §1.1: coefficient Eichler–Shimura relations.

What AutomorphicGaloisRepresentations must provide (gap:gsp4-eichler-shimura): §1.1 — The Eichler–Shimura relation for the étale cohomology of Siegel threefolds with prime-to-p level, annihilating Frobenius at good primes by the spin Hecke polynomial, compatibly with completed cohomology (BCGP25 Theorem 1.8.29).

### From TauCetiRoadmap.PadicMeasuresIwasawaAlgebras

- §1.1, §1.7: finite coefficient coordinates and completed group algebras of profinite abelian groups, including the finite torsion part.

### From TauCetiRoadmap.DeformationAndDerivedPatchingAlgebra

- §5.9: Sylow projectivity: for a Noetherian local ring of residue characteristic p and a finite group, projectivity over the group ring is detected by the derived residue over a Sylow p-subgroup.
- §7.1, §7.3: Tor comparison, minimal finite free representatives and residual detection of perfect amplitude.

### From TauCetiRoadmap.LieHighestWeight

- Layer 3: the enveloping algebra, Verma modules and `L(λ)` for a finite-dimensional Lie algebra.

### From TauCetiRoadmap.LocallyAnalyticDistributions

- §0.0, §0.3: nonarchimedean locally convex categories, completed tensors, polydiscs and compact p-adic manifolds.
- §4.16: Banach complexes, compact operators and finite-slope decompositions.

### From TauCetiRoadmap.FiniteFlatGroupsAndIntegralPadicHodgeTheory

- §R07.P7.2: labelled Sen operators; the cyclotomic Sen operator is 1.

## How to read the build

Layers 1–2 are the PEL continuation: Layer 1 fixes the Morita degree coordinates and the normalized U operators and proves that iterates push degree bands uniformly toward the multiplicative locus; Layer 2 builds the Kassaei path sums, glues bounded sections across every integral wall and algebraizes, giving small-slope classicality. Layer 3 adds to the imported Klingen theory the integral spherical operator, its special-fibre amplitude and the Euler characteristic of the localized Klingen family. Layers 4–6 treat `Res_{F/ℚ}GSp₄`: Layer 4 constructs partial-ordinary Hida complexes in `|I|+2|Iᶜ|` variables with derived control; Layer 5 proves the weight-two doubling injection on the special fibre; Layer 6 constructs the analytic families and proves the one-Klingen-place comparison. Layer 7 binds completed cohomology to analytic localization of the BGG category and computes the genus-two ordinary part; Layer 8 identifies the singular Sen obstruction with the Cousin differential and proves classicality; Layer 9 extracts the four projective modules from the imported integral complexes. Layers 1–2, 3, 4–6, 7–8 and 9 are independent of each other except where a *Needs* line says otherwise.

The headline theorems require Shimura varieties, toroidal models, supported coherent cohomology, analytic coefficient complexes and completed cohomology, none of which exists at the pinned libraries; they are targets of this README, and numerical normalizations serve as Checks.

## Layer 1: PEL degrees and normalized correspondences

Standing hypotheses of Layers 1–2. Let `(B, *, O_B, U, ⟨·,·⟩, h)` be a PEL datum of type A or C whose prime p satisfies BPS Hypothesis 1.1.1 (HAL p. 5): p is unramified in the totally real field `F₀`, and in type A every place of `F₀` above p splits in the CM field F; `B ⊗ ℚ_p` is a product of matrix algebras over unramified extensions of `ℚ_p`; `O_B` is maximal at p; the pairing is perfect at p; p splits completely in the reflex field E. Write `π₁,…,π_h` for the places of `F₀` above p, `d_i` for the residue degree of `π_i`, and `(a_i, b_i)` (type A) or `a_i` (type C) for the Morita-reduced signature at `π_i`, constant over the embeddings above `π_i` (PELModuli §M0.21). Fix a finite extension K of `ℚ_p` containing the images of the embeddings, a neat prime-to-p level, compatible smooth toroidal fans, and totally positive `x_i ∈ O_{F₀}` with `π_j`-adic valuation 1 if `j = i` and 0 otherwise. `X_Iw` is the Iwahori-level Shimura variety at p, with rigid generic fibre `X_Iw^rig`.

### 1.1 Morita degrees

At a point x of `X_Iw^rig` with values in `O_C`, let `H_{i}` be the Morita component at `π_i` of the distinguished maximal totally isotropic subgroup of the Iwahori flag (in type A, one member of the polarization-paired pair of factors), a finite flat group of height `d_i a_i`. Define the degree coordinate `δ_i(x) = deg H_i`, the Fargues degree of HodgeTateAndCanonicalSubgroups §0.6, and `δ = (δ_1,…,δ_h) : X_Iw^rig → ∏_i [0, d_i a_i]` (BPS §3.1–§3.2, HAL pp. 15–16). The coordinate measures the distance to the multiplicative-ordinary locus `X_Iw(0) = δ^{−1}(∏_i {d_i a_i})`.

*Needs:* gap:pel-iwahori-complements; PELModuli §M4.5; HodgeTateAndCanonicalSubgroups §0.6, §0.7.

The basic properties are:

- `0 ≤ δ_i ≤ d_i a_i`, with `δ_i = 0` exactly when `H_i` is étale and `δ_i = d_i a_i` exactly when it is multiplicative.
- `δ_i` is unchanged by extension of the complete valued field.
- For a short exact sequence of finite flat groups the degrees add.
- Each `δ_i` is the valuation of an analytic function locally on `X_Iw^rig`, so the preimage of a closed rational box is a quasi-compact open.

**Checks.**

- An étale component has `δ_i = 0` and a multiplicative component of height `d_i a_i` has `δ_i = d_i a_i`; for the modular curve (`d = a = 1`) the canonical subgroup of a point near the multiplicative locus has degree close to 1, and an anticanonical one degree close to 0.
- For a supersingular elliptic curve over `W(F̄_p)`, every subgroup of order p has degree `1/(p+1)` (HodgeTateAndCanonicalSubgroups §0.6), strictly between the two extremes.
- Morita reduction removes matrix multiplicity: for `B ⊗ ℚ_p = M_m(ℚ_{p^d})` the coordinate is the degree of the reduced component, not m times it; a definition using the unreduced group would have range `[0, m d a]`.

### 1.2 Normalized U operators

For each i let `C_i` be the correspondence of complements: pairs (x, L) with `L ⊂ A[π_i]` a finite flat subgroup of the type complementary to `H_i`, `p₁(x, L) = x` and `p₂(x, L) = A/L` with the polarization descended from `x_i λ` and the induced level and flag. Set `n_i = d_i a_i b_i` in type A and `n_i = d_i a_i(a_i+1)/2` in type C, and define `U_i = p^{−n_i} Tr_{p₁} ∘ (π_i^*)^{−1} ∘ p₂^*` on sections of `ω^κ` over opens of `X_Iw^rig`, and on classical and overconvergent forms (BPS §2.2–§2.3 and Remark 2.3.1, HAL pp. 13–15). The definition depends on `x_i` through the polarization; it is canonical on forms invariant under the totally positive units (BPS Remark 2.3.2, HAL p. 15).

*Needs:* §1.1; gap:pel-iwahori-complements; PELModuli §M1.13; ShimuraCompactifications §C3.1, §C3.3; AutomorphicBundles §B5.1, §B5.10.

The basic properties are:

- `U_i(f)` at a point is `p^{−n_i}` times the sum of the values of f at the quotients `A/L` over the complements L, with differentials transported by the isogeny.
- `U_i U_j = U_j U_i` for `i ≠ j`.
- `U_i` preserves `δ_j` for `j ≠ i`.
- The operator is unchanged under a common refinement of the fans.

**Checks.**

- Type C with `d = a = 1` (modular curve) gives `n = 1`: `U = p^{−1}Tr`, the standard `U_p` on q-expansions.
- Type C with `d = 1, a = 2` (Siegel threefold) gives `n = 3`; type A with `d = a = b = 1` gives `n = 1`.
- Replacing `x_i` by `u x_i` for a totally positive unit u changes the polarization on `A/L`; equality of the two operators holds only after the induced identification of the polarization data, so an unadorned equality is not part of the definition.

### 1.3 Degree monotonicity and rigidity

Prove: if y lies in `U_i({x})` then `δ_i(y) ≥ δ_i(x)` and `δ_j(y) = δ_j(x)` for `j ≠ i`; if `δ_i(y) = δ_i(x)` then `H_i` is a truncated Barsotti–Tate group of level one, `A[π_i]` splits as the direct sum of `H_i` and a totally isotropic truncated Barsotti–Tate group, and `δ_i(x)` is an integer (BPS Propositions 3.1.1–3.1.3, HAL pp. 15–16).

A proof route: the isogeny induces a generic isomorphism `H_{i,x} → H_{i,y}`, so the degree increases with equality only for an isomorphism (HodgeTateAndCanonicalSubgroups §0.8); in the equality case compare `deg H_i` with `f l − deg L` and conclude by the splitting criterion.

*Needs:* §1.2; HodgeTateAndCanonicalSubgroups §0.7, §0.8, §0.28.

**Checks.**

- For the generic isomorphism `ℤ/p → μ_p` over `ℤ_p[ζ_p]` the degree jumps from 0 to 1, and the map is not an isomorphism.
- At a non-integral degree, equality is impossible: for the modular curve a point of degree `1/(p+1)` is moved strictly.
- The multiplicative endpoint is fixed: at `δ_i = d_i a_i` the inequality forces equality.

### 1.4 Uniform progress on degree bands

Prove: for integers `0 ≤ n ≤ d_i a_i − 1` and rationals `0 < η ≤ ν < 1` there is an integer N with `U_i^N(δ_i^{−1}([d_i a_i − n − ν, d_i a_i])) ⊂ δ_i^{−1}([d_i a_i − n − η, d_i a_i])`, the other coordinates being preserved; and the analogous statement for `∏_i U_i` on products of bands (BPS Proposition 3.2.1 and Corollary 3.2.2, HAL pp. 16–17).

A proof route: on the quasi-compact band `V = δ_i^{−1}([d_i a_i − n − ν, d_i a_i − n − η])` the increment `δ_i(p₂(u)) − δ_i(p₁(u))` is the valuation of an analytic function on `p₁^{−1}(V)`, hence attains a minimum ε, which is positive by §1.3 because V contains no integral degree; take N larger than `(ν − η)/ε`.

*Needs:* §1.3; AdicSpacesPartIII §R2.10.

**Checks.**

- The band must be closed: on a half-open strip `]d a − n − ν, d a − n[` the minimum of the increment can tend to 0 at the integral wall, and no uniform N exists from compactness alone.
- For the modular curve with `n = 0`, `ν = 1/2`, `η = 1/4`, the band `[1/2, 3/4]` of degrees is pushed into `[3/4, 1]` by a fixed power of U.
- With `η = ν` the statement is trivial with `N = 0`.

### Examples

For the modular curve, `n = 1`, the degree is the valuation coordinate of Buzzard's analytic continuation, and §1.4 is the statement that iterates of U accumulate the supersingular region onto arbitrarily small strict neighbourhoods of the multiplicative tube. For the Siegel threefold, `n = 3` and `δ ∈ [0, 2]`.

### Dependencies

AdicSpacesPartIII §R2.10; AutomorphicBundles §B5.1, §B5.10; HodgeTateAndCanonicalSubgroups §0.6, §0.7, §0.8, §0.28; PELModuli §M0.21, §M1.13, §M4.5; ShimuraCompactifications §C3.1, §C3.3; gap:pel-iwahori-complements.

## Layer 2: PEL analytic continuation and classicality

The standing hypotheses of Layer 1 hold. Write `κ` for a dominant weight of the Levi `M = ∏_i Res_{ℤ_{p^{d_i}}/ℤ_p} GL_{a_i}` (times `GL_{b_i}` in type A), with terminal entries `k_{i,j,a_i}` and `l_{i,j,b_i}` (`1 ≤ j ≤ d_i`) as in BPS §4 (HAL p. 19). Put `c_i = min_j (k_{i,j,a_i} + l_{i,j,b_i})` in type A and `c_i = min_j k_{i,j,a_i}` in type C.

### 2.1 The strict slope region

For a simultaneous eigenform f with `U_i f = α_i f`, `α_i ≠ 0`, put `s_i = v_p(α_i)`. The small-slope region is `s_i ≥ 0` and `s_i + n_i < c_i` for every i (BPS Hypothesis 4.5.1, HAL p. 25). Equivalently there is a rational `ε ∈ (0,1)` with `n_i + s_i − (1−ε)c_i < 0` for every i. The normalization of §1.2 makes every slope of an overconvergent eigenform nonnegative (BPS §4.1, HAL p. 18), and the region forces `c_i > n_i ≥ 0`.

*Needs:* §1.2.

The basic properties are:

- The inequality is strict; the boundary `s_i + n_i = c_i` is excluded.
- Increasing `c_i` or decreasing `s_i` preserves the region.
- If the region holds then `c_i > 0`, which is what makes multiplication of a degree lower bound by `c_i` legitimate in §2.5.

**Checks.**

- `n = 3`, `c = 4`, `s = 0` lies in the region, and any `ε < 1/4` works: `3 − 4(1 − ε) < 0` exactly when `ε < 1/4`.
- `n = 3`, `c = 3`, `s = 0` does not: `3 < 3` fails, and no ε gives `3 − 3(1−ε) < 0`.
- `n = 3`, `c = 4`, `s = 1/2` lies in the region with `ε < 1/8`.
- For the modular curve (`n = 1`, `c = k`) the region is `v_p(α) < k − 1`, Coleman's bound for the standard `U_p`.

### 2.2 Finite-slope first extension

Prove: a simultaneous eigenform with every `α_i ≠ 0`, defined on a strict neighbourhood of `X_Iw(0)`, extends uniquely to `δ^{−1}(∏_i ]d_i a_i − 1, d_i a_i])` (BPS Proposition 4.2.1, HAL p. 19). No slope bound is needed.

A proof route: by §1.4 every closed band `δ_i^{−1}([d_i a_i − ν, d_i a_i])` with `ν < 1` is carried by some `U_i^N` into the original domain; define the extension there by `α_i^{−N}U_i^N f`; two choices of N agree by the eigenrelation; extend one place at a time, using commutation of the `U_j`.

*Needs:* §1.4.

**Checks.**

- For `α_i = 0` the formula `α_i^{−N}U_i^N f` is undefined; the nonzero-eigenvalue hypothesis cannot be dropped.
- Changing N to `N+1` after the image lies in the original domain gives `α_i^{−N−1}U_i^{N+1}f = α_i^{−N}U_i^N(α_i^{−1}U_i f) = α_i^{−N}U_i^N f`.
- The region reached is bounded by the first integral wall `δ_i = d_i a_i − 1`, where §1.3 allows a fixed point and progress stops.

### 2.3 The bad-complement filtration

On a quasi-compact degree box `V` and for rational `β > 0` let `N(x, β)` count the complements L at x (for the place i) whose Morita degree is at least `1 − β`, and `V_k = {N(x,β) ≥ k}`. Let `B_k` parametrize ordered k-tuples of distinct complements, with finite étale projection `p_k : B_k → X` and quotient coordinates `q_j : B_k → X`. Prove that the `V_k` form a finite decreasing sequence of quasi-compact opens with `V_0 = V`; the bad locus `B_{k,β} ⊂ B_k` is quasi-compact open with image `V_k`; and over `V_k ∖ V_{k+1}` the bad and good first projections are finite étale (BPS Definitions 4.3.2–4.3.5, Lemma 4.3.6, Proposition 4.3.7, HAL pp. 20–21; Lemma 4.4.3, HAL p. 24). Each coordinate `q_j` is used separately; the product map `B_k → X^k` is not finite étale.

*Needs:* §1.1; §1.2; AdicSpacesPartIII §R2.10.

The basic properties are:

- `V_{k+1} ⊂ V_k` and `V_0 = V`; `V_k` is empty for k larger than the number of complements.
- Each coordinate `q_j` gives a quotient point with its degree.
- Enlarging β gives strict neighbourhoods of the strata.

**Checks.**

- If no complement is bad then `V_1 = ∅` and `U_i` is entirely good.
- A point with exactly one bad complement lies in `V_1 ∖ V_2`.
- The differences `V_k ∖ V_{k+1}` are not open in general, so they do not form the admissible cover used for gluing; the strict neighbourhoods of §2.6 do.
- For `k = 2` on the modular curve, `B_2` is finite étale over X and has dimension one while `X²` has dimension two, so `B_2 → X²` is not finite étale; only the coordinates `q_j` are used.

### 2.4 First-good path decomposition

For `N ≥ 1` partition the length-N paths of the correspondence by their first good step: `T_j` is j bad steps followed by one good step (`0 ≤ j < N`) and `R_N` is N bad steps. Prove `U_i^N = Σ_{j=0}^{N−1} U_i^{N−1−j} ∘ T_j + R_N` in the correspondence-composition order, where the left factor carries the remaining arbitrary steps; after contravariant pullback the terms become the bad-then-good section operators of §2.6 (BPS Theorem 4.4.1, HAL p. 22; Proposition 4.3.10, HAL p. 21).

*Needs:* §2.3; §2.2.

**Checks.**

- At `N = 2` the four words GG, GB, BG, BB occur exactly once: GG and GB in `U_i ∘ T_0`, BG in `T_1`, BB in `R_2`.
- At `N = 1` the identity is `U_i = T_0 + R_1`, the decomposition into good and bad parts.
- Dropping the left factors `U_i^{N−1−j}` loses every word whose good step is not the last one; at `N = 2` the word GB would be missing.

### 2.5 Bad-path contraction

Prove: on a region where the bad complements have degree at least `1 − ε`, the normalized bad operator has norm at most `p^{n_i − (1−ε)c_i}`, so that `α_i^{−1}U_i^bad` has norm at most `q_i = p^{n_i + s_i − (1−ε)c_i} < 1` in the region of §2.1 (BPS Lemma 4.4.5, HAL p. 25; Lemmas 4.5.3 and 4.5.5, HAL p. 27).

A proof route: bound each weight component through the coefficient representation; insert the degree lower bound, which needs `c_i > 0` (§2.1); apply the nonarchimedean trace bound and the scalar `p^{−n_i}`.

*Needs:* §2.1; §2.4.

**Checks.**

- Genus two (`n = 3`), `c = 4`, `s = 0`, `ε = 1/8`: the exponent is `3 − 4·7/8 = −1/2 < 0`.
- With `c = 3`, `s = 0` the exponent `3 − 3(1−ε)` is positive for every `ε ∈ (0,1)`.
- With a negative terminal weight `c < 0` the inequality `ν ≥ 1 − ε` multiplied by c reverses, so the bound cannot be inserted as stated; §2.1 excludes this case.

### 2.6 Kassaei path sums

Define `f_N = Σ_{j=0}^{N−1} α_i^{−j−1} (bad^j ∘ good)(f)` on the strict neighbourhoods of the bad strata. Prove that the `f_N` are uniformly bounded, that their differences on overlaps have norm at most `M q_i^N`, and that for integers `A_N → ∞` below the resulting valuation bound (reduced by the fixed loss `n_i + s_i`) the reductions modulo `p^{A_N}` glue and are compatible from `N+1` to N (BPS Definition 4.5.2, Lemmas 4.5.3 and 4.5.5, Propositions 4.5.6–4.5.7, HAL pp. 27–29).

*Needs:* §2.5; gap:bounded-section-gluing.

The basic properties are:

- A uniform bound independent of N.
- Differences on admissible overlaps of norm at most `M q_i^N`.
- Refining the neighbourhoods preserves the reductions at every common precision.

**Checks.**

- When the bad part is zero, `f_1 = α_i^{−1}U_i f` and all `f_N` with `N ≥ 1` coincide.
- The `N = 1` term is `α_i^{−1}U_i^good f`.
- A fixed precision A is not enough: the inverse-limit section requires `A_N → ∞`.

### 2.7 Bounded continuation across all walls

Prove: the compatible path sums give a unique bounded section on each closed rational degree box; exhausting the half-open auxiliary conditions by closed rational boxes and gluing by uniqueness, and iterating over integral walls and places, the eigenform extends to all of `X_Iw^rig` with its eigenrelations (BPS Proposition 4.1.2, HAL p. 18; Propositions 4.5.7–4.5.8, HAL p. 29).

*Needs:* §2.6; §2.2; gap:bounded-section-gluing; AdicSpacesPartIII §R3.4.

**Checks.**

- Two continuations agree on overlapping closed boxes by the contraction of §2.5, so the exhaustion changes neither the section nor its eigenvalues.
- Quasi-compactness is applied to closed rational boxes only; a half-open strip of valuations is not a quasi-compact domain.
- At a point of the étale-ordinary tube `δ = 0` the section is reached after `max_i d_i a_i` wall crossings at place i.

### 2.8 Small-slope classicality

Prove: under the standing hypotheses, let κ be dominant and f an overconvergent form of weight κ at Iwahori level which is a simultaneous `U_i`-eigenform with eigenvalues in the region of §2.1. Then f is classical: it is the analytification of a section of `ω^κ` on `X_Iw × Spec K`; a cuspidal f gives a cuspidal form (BPS Theorem 5.3.1, HAL p. 31). This holds for every datum: when the symmetric space has complex dimension greater than one (BPS Hypothesis 1.4.2, HAL p. 10) by the route below, and in dimension one by §2.9.

A proof route in dimension greater than one: §2.7 gives a section on `X_Iw^rig`; the Koecher principle on the normalized model (ShimuraCompactifications §C5.22, in which the Bijakowski–Pilloni–Stroh model is included) extends the bounded integral section across the boundary of the normal toroidal model; pass through the formal model and apply proper GAGA (BPS Propositions 5.2.1 and 5.2.4, Corollaries 5.2.2–5.2.3, HAL pp. 30–31). Normality is that of the actual normalized model, not of a modification with different sections.

*Needs:* §2.7; §2.9; ShimuraCompactifications §C5.19, §C5.20, §C5.21, §C5.22; AdicSpacesPartIII §R3.7.

**Checks.**

- For the modular curve, `n = 1` and `c = k`: forms of slope `< k − 1` for the standard `U_p` are classical, which is Coleman's theorem; slope exactly `k − 1` lies outside the statement.
- For the Siegel threefold (`n = 3`) with `κ = (k₁, k₂)`, `k₁ ≥ k₂`, `c = k₂`: slope `< k₂ − 3` is classical; at `k₂ = 3` no slope qualifies.
- The algebraic section analytifies to f and preserves vanishing along −D.

### 2.9 The dimension-one case

Prove the conclusion of §2.8 when the symmetric space of G is the Poincaré half-plane, so that BPS Hypothesis 1.4.2 fails and the Koecher principle of ShimuraCompactifications §C5.22 has its dimension-one exception. If `X_Iw` is proper, the route of §2.8 applies without a boundary. Otherwise each geometric connected component is a congruence quotient of the upper half-plane, a modular curve; carry out the continuation of §§2.2–2.7 on its smooth compactification, the cusps lying in the multiplicative tube where the Tate curve describes the complements, so that the continued section is a section of `ω^κ` over the compactified rigid curve, and conclude by proper GAGA (BPS Theorem 5.3.1 and Remark 5.3.2, HAL p. 31).

*Needs:* §2.7; ShimuraCompactifications §C4.12, §C5.22; AdicSpacesPartIII §R3.7.

**Checks.**

- The Koecher principle fails in dimension one: the modular curve has meromorphic sections of `ω^k` with poles at cusps that are holomorphic on the open curve (ShimuraCompactifications §C5.22), so the boundary must be treated inside the continuation.
- A compact Shimura curve has no cusps and is covered by the route of §2.8.
- On the modular curve the region of §2.1 is `s < k − 1`, agreeing with §2.8's first Check.

### Examples

On the Siegel threefold at Iwahori level with `κ = (6, 6)` (`c = 6`, `n = 3`), an overconvergent eigenform of `U` slope `< 3` is classical by §2.8; the contraction constant of §2.5 is `p^{3 + s − 6(1−ε)}`.

### Dependencies

AdicSpacesPartIII §R2.10, §R3.4, §R3.7; ShimuraCompactifications §C4.12, §C5.19, §C5.20, §C5.21, §C5.22; gap:bounded-section-gluing; Layer 1.

## Layer 3: Singular Siegel weight: the spherical operator, amplitude and Euler characteristic

Standing hypotheses. X is the genus-two Siegel threefold over `ℤ_p` with neat prime-to-p level `K^p` and hyperspecial level at p, with compatible toroidal and minimal compactifications and boundary D; `X_Kli(p)` and `X_par` are the Klingen and paramodular-type models of Pilloni §6, normal and lci over `ℤ_p` (P20 §7.1, p. 38). The coefficient is `Ω(k,r) = Sym^k ω ⊗ det(ω)^r` (AutomorphicBundles §B4.16), `k ≥ 0`. `X₁` is the special fibre and `X₁^{≥1}` its p-rank-at-least-one open. The singular Klingen family `M_Kli` over `Λ₁ = ℤ_p[[ℤ_p^×]]` and its control are HigherHidaAndColemanTheory §§9.4 and 9.8.

### 3.1 The integral spherical operator

Over `X_Kli(p)` the universal isogenies `G → G′ → G` have degrees `p³` and p with composite multiplication by p, and `p₁ : X_Kli(p) → X`, `p₂ : X_Kli(p) → X_par` are not finite flat over the p-rank-zero loci. Define `T₁′ : p₂^*Ω(k,r) → p₁^*Ω(k,r) → p₁^!Ω(k,r)`, composing the differential of `G → G′` with the fundamental class `p₁^*O → p₁^!O`, and `T₂′` from the second isogeny. Prove that `T₁′` is divisible by `p^{2+r}` when `k + r ≥ 2` and `T₂′` by p when `r ≥ 1`, and set `T₁ = p^{−2−r}T₁′`, `T₂ = p^{−1}T₂′`, `T = T₁ ∘ T₂` on `RΓ(X, Ω(k,r))` and `RΓ(X, Ω(k,r)(−D))` for `k ≥ 0`, `r ≥ 2` (P20 §7.1 and Lemma 7.1.1, pp. 38–40; §§7.2–7.3, pp. 40–41). On the generic fibre `T = p^{3−r}(T_{p,1} + (1 + p + p² + p³)T_{p,0})`, where `T_{p,1}` is the double coset of `diag(1,p,p,p²)` and `T_{p,0} = p` (P20 §7, pp. 37–38).

A proof route: the divisibilities are checked on the ordinary locus by Serre–Tate coordinates and extended across the non-ordinary locus, of codimension two in the normal `X_Kli(p)`; independence of the fans by common refinements; the boundary ideal is preserved.

*Needs:* gap:lci-fundamental-class; SchemeAndStackFoundations §2.19, §2.20; ShimuraCompactifications §C3.1, §C3.9, §C4.16, §C4.17; AutomorphicBundles §B4.16.

The basic properties are:

- T is the composite of the two integrally normalized factors and preserves the subcanonical complex.
- On the generic fibre `T = p^{3−r}(T_{p,1} + (1+p+p²+p³)T_{p,0})`.
- T does not depend on the choice of fans.
- T commutes with the prime-to-p Hecke action.

**Checks.**

- At `r = 3` the generic scalar `p^{3−r}` is 1.
- The double coset `T_{p,1}` has `p + p² + p³ + p⁴` single cosets; at `p = 2` that is 30.
- A finite-flat trace on all of `X_Kli(p)` does not exist: `p₁` has infinite fibres over p-rank zero (a p-rank-zero abelian surface can have infinitely many subgroups of order p), so the fundamental class is required.

### 3.2 Rank-zero vanishing

Prove: there is a constant C, independent of the prime-to-p level, such that for `k ≥ C` and `r ≥ p² + p` the correspondence `T₁` restricted to the p-rank-zero loci `p₂^*Ω(k,r)|_{X_par,1^{=0}} → p₁^!Ω(k,r)|_{X₁^{=0}}` is zero (P20 Proposition 7.4.2.2, p. 49; Lemma 7.4.2.6, p. 50). Consequently suitable powers of T are nilpotent on the infinitesimal thickenings of the rank-zero locus.

A proof route: on p-rank zero every subgroup of rank `p³` contains the Frobenius kernel, so the isogeny factors through Frobenius and the coefficient map gains divisibility; Artin–Rees on the fundamental-class lattice and a finite cover make C independent of the level.

*Needs:* §3.1.

**Checks.**

- The conclusion is for `k ≥ C`; at `k = 0` no vanishing is asserted.
- On a thickening the conclusion is nilpotence of a fixed power, not vanishing of T itself.
- The bound on r is `p² + p`: at `p = 2` it is 6, at `p = 3` it is 12.

### 3.3 Ordinary amplitude on the p-rank-at-least-one special fibre

Prove: for `k > p + 1` and `r ≥ 2` the action of T on `RΓ(X₁^{≥1}, Ω(k,r)(−D))` is locally finite (P20 Lemma 8.2.1, p. 52); for `k ≥ C` and `r ≥ 2` its ordinary part `e RΓ(X₁^{≥1}, Ω(k,r)(−D))` is a perfect complex of `𝔽_p`-vector spaces of amplitude `[0,1]`; for `r ≥ 3` restriction `e RΓ(X₁, Ω(k,r)(−D)) → e RΓ(X₁^{≥1}, Ω(k,r)(−D))` is a quasi-isomorphism; for `r = 2` it is an isomorphism on `H⁰` and injective on `H¹` (P20 Proposition 8.2.1, p. 53).

A proof route: the Hasse resolution `Ω(k,r)(−D) → colim_{×Ha} Ω(k, r+(p−1)n)(−D) → colim Ω(k, r+(p−1)n)(−D)/Ha^n` is acyclic relative to the minimal compactification, whose rank-two and rank-one strata are affine; remove the rank-zero contribution with §3.2 and the support sequence.

*Needs:* §3.2; HigherHidaAndColemanTheory §2.3; PadicFamilies §0a.22; HodgeTateAndCanonicalSubgroups §0.14, §0.16; gap:partial-hasse-regularity; ShimuraCompactifications §C5.16.

**Checks.**

- At `r = 2` the global-to-open map is only injective on `H¹`; the conclusion `[0,1]` for the global special fibre is asserted only for `r ≥ 3`.
- The amplitude statement is for the special fibre `X₁^{≥1}`; no integral global amplitude follows from it.
- `H⁰(X₁^{≥1}, Ω(k,r)(−D)) = H⁰(X₁, Ω(k,r)(−D))` unconditionally, because `X₁^{=0}` has codimension two in the smooth `X₁`.

### 3.4 The away-from-p Hecke action on the Klingen family

For `ℓ ∤ Np` and the three spherical double cosets `T_{ℓ,i}` of `GSp₄(ℚ_ℓ)`, the universal isogeny is étale over the height-one tower and gives a canonical isomorphism of the coefficient sheaves of `M_Kli`. Define `T_{ℓ,2} = ℓ^{−3}T′_{ℓ,2}` and `T_{ℓ,i} = ℓ^{−6}T′_{ℓ,i}` for `i = 0, 1` from the raw cohomological correspondences, and prove that they act on `M_Kli`, commute with each other, with the ordinary projector and with derived character specialization, and that `T_{ℓ,0}` acts invertibly (P20 Proposition 15.1.1, p. 106).

*Needs:* HigherHidaAndColemanTheory §9.4; ShimuraCompactifications §C3.3; AutomorphicBundles §B5.10; IntegralHeckeAndGaloisDeterminants §3a.2.

The basic properties are:

- The three normalized operators act on the perfect complex `M_Kli`.
- They commute with the ordinary projector and with specialization at every character of `ℤ_p^×`.
- With these normalizations, the spin polynomial of SmoothRepresentationsOfLocalGroups §SR.4.5 at `q = ℓ` is the Hecke polynomial `Q_ℓ` used in §3.5.

**Checks.**

- The raw scalars are `ℓ^{−3}` for `T_{ℓ,2}` and `ℓ^{−6}` for `T_{ℓ,0}` and `T_{ℓ,1}`; at `ℓ = 2` these are `1/8` and `1/64`.
- At `(q, T₀, T₁, T₂) = (1, 1, 4, 4)` the spin polynomial is `(1 − X)⁴` (SmoothRepresentationsOfLocalGroups §SR.4.5), the trivial-parameter witness.
- `T_{ℓ,0}` is the central element `ℓ`, invertible on the family because ℓ is a unit in `Λ₁`.

### 3.5 The localized Euler characteristic of the Klingen family

Let `ρ̄ : G_ℚ → GSp₄(𝔽̄_p)` be absolutely irreducible and unramified outside `Np`, and m the maximal ideal of the prime-to-`Np` Hecke algebra with `Θ_m(Q_ℓ(X)) = det(1 − X ρ̄(Frob_ℓ))`. The Hecke algebra generated in `End(M_Kli)` is finite over `Λ₁`, so `M_Kli,m` is a direct factor. Prove: the Euler characteristic of the perfect `Λ₁`-complex `M_Kli,m` is zero on each connected component of `Spec Λ₁` (P20 Theorem 15.2.1, p. 107; the proof in §15.2.5, p. 109). The conclusion is equality of the alternating ranks; it does not assert that the cohomology modules are torsion.

A proof route: choose in each component a sufficiently large weight `k`; at that weight compare, by the isolated spherical refinement and control, the specialization with spherical ordinary cohomology in degrees 0 and 1; at the same finite representation the holomorphic and generic limits of discrete series contribute equal localized multiplicities; derived base change transports the zero virtual rank to the component. At `p = 2` use the full local algebra rather than a semisimple splitting of the finite characters.

*Needs:* HigherHidaAndColemanTheory §9.5, §9.8; §3.3; §3.4; AutomorphicFormsOnReductiveGroups §6.5, §6.6; gap:gsp4-singular-balance; EndoscopicTransferAndUnitaryTraceComparison §11.1; DeformationAndDerivedPatchingAlgebra §7.3.

**Checks.**

- The complex `Λ₁ --0--> Λ₁` in degrees 0 and 1 has Euler characteristic zero and non-torsion cohomology: zero virtual rank does not give torsion.
- For odd p, `Λ₁` has `p − 1` components; one arithmetic weight determines the virtual rank only on its own component, so a witness is needed in every component.
- The high-weight specialization uses the singular parameter `λ = (−k−1, 0; c)` with negative first coordinate; changing its sign changes the chamber and the comparison (AutomorphicFormsOnReductiveGroups §6.6).

### Examples

At `p = 5`, `k = 0`, `r = 2`: the Klingen family `M_Kli` is perfect of amplitude `[0,1]` (HigherHidaAndColemanTheory §9.8), and at a non-Eisenstein m its two cohomology modules have equal generic rank on each of the four components of `Spec Λ₁` by §3.5. The spherical operator at `r = 2` has generic scalar `p = 5`.

### Dependencies

AutomorphicBundles §B4.16, §B5.10; AutomorphicFormsOnReductiveGroups §6.5, §6.6; DeformationAndDerivedPatchingAlgebra §7.3; EndoscopicTransferAndUnitaryTraceComparison §11.1; HigherHidaAndColemanTheory §2.3, §9.4, §9.5, §9.8; HodgeTateAndCanonicalSubgroups §0.14, §0.16; IntegralHeckeAndGaloisDeterminants §3a.2; PadicFamilies §0a.22; SchemeAndStackFoundations §2.19, §2.20; ShimuraCompactifications §C3.1, §C3.3, §C3.9, §C4.16, §C4.17, §C5.16; SmoothRepresentationsOfLocalGroups §SR.4.5; gap:gsp4-singular-balance; gap:lci-fundamental-class; gap:partial-hasse-regularity.

## Layer 4: Hilbert partial-ordinary Hida complexes

Standing hypotheses of Layers 4–6. F is a totally real field of degree d, `p > 2` splits completely in F, `S_p = I ⊔ Iᶜ` is a partition of the places above p, and `G₁ = Res_{F/ℚ}GSp₄` with the Hilbert–Siegel moduli of gap:hilbert-siegel-models. The level at p is Klingen at `v ∈ I` and Iwahori at `v ∈ Iᶜ`; the tame level is neat, the compactifications are compatible and polarization elements `x_v` are fixed. Weights are `κ = (k_v, l_v)_v` with `k_v ≥ l_v`, `k_v ≡ l_v mod 2`, and `ω^κ = ⊗_v Sym^{k_v−l_v}(ω_v) ⊗ det(ω_v)^{l_v}`. For descent to the common-similitude group G, the order of the finite unit/deck quotient Δ is prime to p; statements for `G₁` do not need this. Hecke-localized statements use a non-Eisenstein maximal ideal of the prime-to-p Hecke algebra, as in BCGP21 Theorem 3.10.1 (p. 70).

### 4.1 Mixed ordinary loci and partial Igusa towers

For `I ⊂ S_p` let `X^{≥1,I}` be the spherical locus of p-rank at least one at `v ∈ I` and ordinary at `v ∈ Iᶜ`. At the mixed level select the open subscheme on which the distinguished subgroup `H_v` is multiplicative for `v ∈ I` and the specified flag is ordinary for `v ∈ Iᶜ`; it is strictly smaller than the full inverse image of the rank locus. The partial Igusa tower trivializes `T_p(H_{∞,v}^D)` at every v and additionally `T_p((G_v^m/H_{∞,v})^D)` at `v ∈ Iᶜ` (BCGP21 §4.1, pp. 73–74; §4.3.4, pp. 96–97).

*Needs:* gap:hilbert-siegel-models; gap:hilbert-siegel-partial-igusa; HodgeTateAndCanonicalSubgroups §5.1.

The basic properties are:

- The Igusa group is `∏_{v∈I} ℤ_p^× × ∏_{v∈Iᶜ} (ℤ_p^×)²`.
- The locus and tower commute with complete extension of the coefficients.
- The pulled-back toroidal divisor defines the subcanonical ideal.
- The tower maps are affine étale; on the full p-rank-at-least-one locus they are not finite.

**Checks.**

- `I = S_p` gives one character coordinate per place, `d` in all; `I = ∅` gives two per place and the fully ordinary flag locus.
- A point of p-rank one at `v ∈ I` whose distinguished Klingen subgroup is not multiplicative is excluded.
- For `F = ℚ`, `I = {p}` the locus is the Klingen p-rank-at-least-one locus of HigherHidaAndColemanTheory §9.4.

### 4.2 Universal coefficients

Write `T_I = T_fin × T₀` with `T₀` pro-p of rank `|I| + 2|Iᶜ|` and `Λ_I = ℤ_p[[T₀]]`. Define the universal sheaf as the `T_I`-diagonal invariants of `π_*O_Igusa ⊗̂ Λ_I` twisted by `⊗_v det(ω_v)²`. Its specialization at a classical κ evaluates `x_v^{k_v−2}` and, for `v ∈ Iᶜ`, `y_v^{l_v−2}`; classical weights in the component have `l_v = 2` for `v ∈ I` and `k_v ≡ l_v ≡ 2 mod p−1`. The highest-weight map `ω^κ → Ω^{κ_I}` is a projection. For descent from `G₁` to G modify the action of the positive units by `d(x) = [√x₀]`; square roots exist on the pro-p part because `p > 2`; when `p ∤ |Δ|` take the deck invariants as a direct factor (BCGP21 §§4.3–4.4, pp. 95–99; Proposition 4.4.3, p. 99).

*Needs:* §4.1; gap:hilbert-siegel-partial-igusa; PadicMeasuresIwasawaAlgebras §1.7.

The basic properties are:

- The diagonal-equivariant sheaf with the determinant-square twist.
- At κ the universal character evaluates to `x^{k−2}y^{l−2}` on the stated coordinates.
- The highest-weight functional maps `ω^κ` to the specialized sheaf.
- The corrected unit action is the tautological one multiplied by `d(x)`.

**Checks.**

- At `(k_v, l_v) = (2, 2)` for every v the pro-p character is trivial.
- Two split places with `|I| = 1` give character dimension `1 + 2 = 3`.
- For `k_v > l_v` the coefficient `Sym^{k_v−l_v}ω_v` has rank `k_v − l_v + 1 > 1` and is not identified with the rank-one highest-weight quotient.
- If `p | |Δ|` the deck invariants need not be a direct factor: for `Δ = ℤ/p` acting on the regular representation `𝔽_p[Δ]`, the invariants are the line of the norm element, which is not a summand of the indecomposable module `𝔽_p[Δ]`; so the descent statement keeps `p ∤ |Δ|`.

### 4.3 Commuting U operators

On the universal coefficient complex use `U_{v,1}` at Iwahori places, normalized by `p^{−3}`, and `U_{v,2}` as the product of its two quotient and dual factors with raw divisors `p²` and p; the determinant coefficient contributes `p^{−l_v}` at κ. Put `U^I = ∏_{v∈I} U_{v,2} ∏_{v∈Iᶜ} U_{v,1}U_{v,2}`. Prove that all these operators commute as maps of the enhanced complex, specialize to the weight-normalized geometric traces, are intertwined by common fan refinement, and preserve the integral cohomology lattices at classical weights (BCGP21 §4.5, pp. 100–105; Lemmas 4.5.15 and 4.5.17, pp. 104–105). The Klingen operator `U_{v,1}` and the Iwahori operator `U_{v,1}` are different operators.

A proof route: construct the coefficient pullback on each primary quotient; check the two-factor normalization of `U_{v,2}` on integral highest-weight lattices; descend commutation of the correspondences through the faithful injection of the Hasse Čech/Cousin terms into the interior localization. Commutation on cohomology alone does not give commutation on the complex.

*Needs:* §4.2; gap:hilbert-siegel-partial-igusa; ShimuraCompactifications §C3.1, §C3.3; AutomorphicBundles §B5.1, §B5.10.

The basic properties are:

- `U^I` is the stated mixed product.
- The local factors commute on the enhanced coefficient complex.
- The universal action specializes to the weight-normalized geometric trace.
- Each `U_{v,1}` and `U_{v,2}` preserves the integral ordinary cohomology lattice, so a unit product forces unit eigenvalues of each factor.

**Checks.**

- `I = ∅` gives `∏_v U_{v,1}U_{v,2}`; `I = S_p` gives `∏_v U_{v,2}`.
- The normalization of `U_{v,2}` is `p^{−2} · p^{−1} = p^{−3}` before the determinant factor, the same as that of `U_{v,1}`.
- In the doubling of Layer 5 the Iwahori first operator is never substituted for the Klingen first operator; at `l = 3` they differ by `p Z` (§5.1).

### 4.4 Fixed-weight amplitude

Let `X_{G₁,1}^I` be the special-fibre open of p-rank at least one at `v ∈ I` and ordinary at `v ∈ Iᶜ`, and `T_I = ∏_{v∈I} T_v ∏_{v∈Iᶜ} T_{v,1}`. Prove: there is C depending only on p and F, not on the tame level, such that if `l_v ≥ 2` for all v, `k_v − l_v ≥ C` for `v ∈ I` and `l_v ≥ C` for `v ∈ Iᶜ`, then `T_I` acts locally finitely on `RΓ(X_{G₁,1}^I, ω^κ(−D))`; `e(T_I)RΓ(X_{G₁,1}^I, ω^κ(−D))` is a perfect complex of amplitude `[0, |I|]`; the restriction from the full special fibre is an isomorphism on `H⁰` and injective on `H¹`; and it is a quasi-isomorphism when `l_v ≥ 3` for every `v ∈ I` (BCGP21 Theorem 4.2.1, p. 77). The generalized partial strata of Theorem 4.2.12 (p. 81) have the perfectness and endpoint comparisons stated there, without a uniform numerical amplitude.

A proof route: partial Hasse invariants and their companion sections give an `(|I|+1)`-term supported resolution; relative minimal-compactification acyclicity and affineness of the rank strata compute it; rank-zero contributions are eliminated by local nilpotence as in §3.2 (BCGP21 §4.2.30, Lemma 4.2.31, Proposition 4.2.33, p. 93).

*Needs:* §4.3; §3.2; gap:partial-hasse-regularity; ShimuraCompactifications §C5.16, §C5.25; HodgeTateAndCanonicalSubgroups §0.14, §0.16.

**Checks.**

- `I = ∅` gives amplitude `[0, 0]`: ordinary cuspidal cohomology of the ordinary locus is concentrated in degree 0.
- For `F = ℚ`, `I = {p}` the statement is §3.3 with `T_I = T`.
- At `l_v = 2` for some `v ∈ I` only the `H⁰`/`H¹` endpoints hold; higher global cohomology is not discarded.

### 4.5 The Hida family complex

Define `M_I = e(U^I) RΓ(𝔛_I, Ω^{κ_I}(−D))` on the formal mixed-level infinite height-one tower, as a derived `Λ_I`-module, where the limit and completion are those of the equivariant integral sheaf (BCGP21 Theorem 4.6.1 and §4.6.1, pp. 105–108). At a classical character use the derived tensor product with `Λ_I/ker δ_κ`.

*Needs:* §4.2; §4.3; HigherHidaAndColemanTheory §2.3; PadicFamilies §0a.25.

The basic properties are:

- `M_I` is the `U^I`-ordinary derived formal global section complex.
- There is a derived character-specialization map to formal fixed-weight cohomology.
- Prime-to-p Hecke operators and all commuting U factors act.
- Pullback and trace along compatible tame levels intertwine the coefficient action.

**Checks.**

- `I = ∅` has amplitude `[0, 0]` in §4.7.
- For `F = ℚ`, `I = {p}`, base change of the Klingen complex of HigherHidaAndColemanTheory §9.4 from `ℤ_p[[ℤ_p^×]]` to the component `ℤ_p[[1 + pℤ_p]]` of the trivial finite character recovers `M_I`, with the same determinant and character convention.
- Before flatness, `H^j(M_I) ⊗ κ` is not the derived fibre: for `M = [Λ --T--> Λ]` over `Λ = ℤ_p[[T]]`, the fibre at `T = 0` has cohomology `ℤ_p` in both degrees while `H^0(M) ⊗ Λ/T = 0`.

### 4.6 Trace congruence and Hasse dévissage

For the ordinary comparison between spherical and mixed level, the relevant finite étale cover of the special strata has degree `(p+1)^{|Jᶜ|}`. Prove: for n large, `Tr ∘ ∏_{w∈Jᶜ} U_{w,2}^n ∘ i ≡ p^{|Jᶜ|}(∏_{w∈Jᶜ} T̃_w)^n mod p^{min_w(k_w−l_w)}`, which gives the ordinary comparison on the Hasse resolution under the large-weight bounds (BCGP21 Proposition 4.6.9, p. 109; Lemmas 4.6.16–4.6.17, pp. 112–113; Proposition 4.6.19, p. 113).

A proof route: dévissage one Hasse exponent at a time, using regularity after arbitrary powers of the other partial Hasse equations and the corresponding twists; a sufficient source bound is `k_w − l_w > p^{|Jᶜ|}`.

*Needs:* §4.4; §4.5; gap:partial-hasse-regularity.

**Checks.**

- One auxiliary place: the cover has degree `p + 1` and the leading factor is p.
- The simultaneous-powers recursion fails for two parameters: in `k[x,y]` the length of `k[x,y]/(x^n,y^n)` is `n²`, while a recursion `(n−1)² + 1` gives 2 at `n = 2` instead of 4.
- At `|Jᶜ| = 0` the statement is the identity.

### 4.7 Derived ordinary control

Prove: `M_I` is perfect over `Λ_I` of amplitude `[0, |I|]`; for every classical κ in the component its derived `δ_κ`-fibre is `e(U^I)RΓ` of the formal mixed-level variety with `Ω^κ(−D)`; and for `k_v − l_v` large at all v and `l_v` large on `Iᶜ`, the spherical comparison is an isomorphism on `H⁰` and injective on `H¹` (BCGP21 Theorem 4.6.1, pp. 105–106; Lemmas 4.6.22–4.6.27, pp. 114–116). No classical quasi-isomorphism for arbitrary `|I|` is asserted.

A proof route: compare at one witness weight large at all places; show the product `U^I` is divisible by p on the highest-weight kernel; apply §4.6 and residual detection of perfect amplitude; transport to all characters by derived control.

*Needs:* §4.6; §4.5; DeformationAndDerivedPatchingAlgebra §7.1, §7.3.

**Checks.**

- `I = ∅` gives amplitude `[0, 0]`, so `M_∅` is a finite projective `Λ_∅`-module in degree 0.
- `F = ℚ`, `I = {p}` gives amplitude `[0, 1]`, agreeing with HigherHidaAndColemanTheory §9.8.
- Divisibility of `U^I` by p on the kernel is needed for the product only; for an individual factor at a single place it can fail and is not used.

### Examples

For `F` real quadratic with `p` split, `S_p = {v₁, v₂}` and `I = {v₁}`: `Λ_I` has three variables, `U^I = U_{v₁,2}U_{v₂,1}U_{v₂,2}`, and `M_I` is perfect of amplitude `[0, 1]`.

### Dependencies

AutomorphicBundles §B5.1, §B5.10; DeformationAndDerivedPatchingAlgebra §7.1, §7.3; HigherHidaAndColemanTheory §2.3, §9.4, §9.8; HodgeTateAndCanonicalSubgroups §0.14, §0.16, §5.1; PadicFamilies §0a.25; PadicMeasuresIwasawaAlgebras §1.7; ShimuraCompactifications §C3.1, §C3.3, §C5.16, §C5.25; gap:hilbert-siegel-models; gap:hilbert-siegel-partial-igusa; gap:partial-hasse-regularity; §3.2.

## Layer 5: Hilbert weight-two doubling

The standing hypotheses of Layer 4 hold. The geometric statements of §§5.2–5.5 and 5.7–5.8 concern the special fibre in characteristic p, after the normalized correspondences are constructed integrally; write `X₁` for special fibres, `Y₁^I` for the interior of the mixed multiplicative-flag special fibre and, for `w ∈ I`, `D_w = Y₁^{I,=w1}` for its non-ordinary rank-one divisor at w. The companion calculation of §5.6 works over any commutative ring.

### 5.1 Klingen and Iwahori first operators

At `w ∈ I` let `U_Kli = p^{−min(3, l_w+1)}` times the raw first trace, `U_Iw = p^{−3}` times its étale part and `Z = p^{−l_w−1}` times its multiplicative–étale part. Prove `U_Kli = U_Iw + p^{l_w−2}Z` for `l_w ≥ 2` and `U_Kli = p^{2−l_w}U_Iw + Z` for `l_w ≤ 2` (BCGP21 §§5.2–5.4, pp. 119–124).

*Needs:* §4.3; SmoothRepresentationsOfLocalGroups §SR.1.4.

**Checks.**

- At `l_w = 2` both formulas give `U_Kli = U_Iw + Z`.
- At `l_w = 3` the first gives `U_Kli = U_Iw + pZ`; at `l_w = 1` the second gives `U_Kli = pU_Iw + Z`.
- The scalar arithmetic: for `l_w ≥ 2`, `p^{−3}(raw_et + raw_me) = U_Iw + p^{−3}p^{l_w+1}Z`.

### 5.2 Partial Frobenius on the rank-one divisor

Define `F_w : Y₁^I → Y₁^I` as the quotient by `ker(Frob)` of `G_w` at w and by `A[v]` at `v ≠ w`, with polarization descended from `p² x_w λ` and tame marking `p^{−1}πη` for the quotient isogeny π. Prove that `F_w` is finite flat of degree `p³` on `Y₁^I` and of degree `p²` on `D_w`, and `F_w^*ω_w ≅ ω_w^p` (BCGP21 Definition 5.6.2 and Proposition 5.6.3, p. 126). Nothing is asserted on the toroidal boundary.

*Needs:* §4.1; gap:hilbert-siegel-models.

The basic properties are:

- The polarized partial-primary quotient with its level transport.
- Degrees `p³` on `Y₁^I` and `p²` on `D_w`.
- `F_w^*ω_w ≅ ω_w^p`.
- For `v ≠ w`, `F_w^*ω_v ≅ ω_v` through the canonical identification `A[v^∞]/A[v] ≅ A[v^∞]`.

**Checks.**

- For `F = ℚ` this is the rank-one Siegel partial Frobenius with the stated polarization.
- The degree on the divisor is `p²`, not the ambient `p³`.
- The tame marking includes the transport `p^{−1}π`; it is not the identity on markings.

### 5.3 Kodaira–Spencer scaling and the first boundary trace

Prove: the `O_F`-linear Kodaira–Spencer identification of the canonical sheaf with the product of the cubes of the determinant Hodge bundles is compatible with prime-to-p quasi-isogenies over `ℤ_(p)`; for the first p-correspondence form the normalized cohomological trace integrally, the factor `Norm(x_w)³/p³` being an integral unit; after reduction to `D_w` and the coefficient identifications of BCGP21 §5.6, `Ha_w U_Iw` restricts to the normalized partial-Frobenius trace `γ₁` (BCGP21 Propositions 5.5.1–5.5.3, pp. 123–124; Proposition 5.6.1, p. 125; Propositions 5.6.4–5.6.7, pp. 127–128).

*Needs:* §5.2; §5.1; gap:kodaira-spencer-isogeny; gap:lci-fundamental-class; SchemeAndStackFoundations §2.19.

**Checks.**

- The quasi-isogeny compatibility and the integral p-correspondence are separate steps; a raw inseparable differential is not substituted into the prime-to-p statement.
- The factor `Norm(x_w)³/p³` is a unit because `x_w` has valuation one at w and zero elsewhere above p, so `Norm(x_w)` has p-adic valuation one.
- On `D_w` the composite `Ha_w U_Iw` is computed; `U_Iw` alone is not.

### 5.4 The second operator on the rank-one divisor

Prove: on the interior formal locus the first projection of the `U_{w,2}` correspondence is finite flat of degree `p⁴`; on `D_w` its second projection is an isomorphism and its first projection identifies with `F_w²`; with the determinant unit δ (the isogeny differential divided by p) retained, the normalized restriction satisfies `U_{w,2} = γ₂ γ₁` (BCGP21 Lemma 5.7.2 and Proposition 5.7.3, p. 129; Proposition 5.7.4, p. 130; Proposition 5.7.9, p. 132).

*Needs:* §5.3; §4.3; gap:lci-fundamental-class.

**Checks.**

- The ambient degree `p⁴` equals the degree `(p²)²` of `F_w²` on the divisor.
- The determinant unit δ enters the comparison; omitting it changes `γ₂γ₁` by a unit and breaks the identity.
- Nothing is asserted on the toroidal boundary.

### 5.5 The quadratic relation

Prove: on the scalar-weight-two ordinary locus `U_Iw Z = U_{w,2}` (BCGP21 Lemma 5.8.1, p. 133); with `U_Kli = U_Iw + Z` (§5.1 at `l_w = 2`) and commutation this gives `U_Iw² − U_Kli U_Iw + U_{w,2} = 0` and the analogous relation for Z. The operators on the three domains involved are linked by restriction maps, not identified as endomorphisms of one space.

*Needs:* §5.1; §5.4; SmoothRepresentationsOfLocalGroups §SR.1.4.

**Checks.**

- Substituting `Z = U_Kli − U_Iw` into `U_Iw Z = U_{w,2}` gives `U_Iw U_Kli − U_Iw² = U_{w,2}`, the quadratic with positive constant term.
- On an eigenvector with `U_Iw = α` and `U_{w,2} = αβ` the relation gives `U_Kli = α + β`.
- With `α = 2`, `β = 3`: `4 − 5·2 + 6 = 0`.

### 5.6 The doubling companion operator

For linear endomorphisms T, U of a module M over a commutative ring define `C_{T,U}(x, y) = (Tx + Uy, −x)` on `M ⊕ M`, built from `LinearMap.prod` and `LinearMap.coprod`. Prove `C² − diag(T)∘C + diag(U) = 0`, with `diag(T)` applied after C, and that if U is invertible then `(x, y) ↦ (−y, U^{−1}x + U^{−1}Ty)` is a two-sided inverse of C (BCGP21 the matrix before Theorem 5.8.6, p. 133). In the geometric application `T = U_Kli` and `U = U_{w,2}` act on global sections, and the doubling map `(f, g) ↦ f + Zg` has target the sections over the w-ordinary open.

*Needs:* Mathlib `LinearMap.prod`, `LinearMap.coprod`, `Module.End`; §5.5.

The basic properties are:

- `C_{T,U}(x, y) = (Tx + Uy, −x)`.
- `C² − diag(T)∘C + diag(U) = 0` for all T and U; no commutation is needed in this order of composition.
- For invertible U the stated map is a two-sided inverse; again no commutation is needed.
- On an eigenvector `(f, −ξ^{−1}f)` of C with eigenvalue ξ, `Tf = ξf + ξ^{−1}Uf`.

**Checks.**

- Over ℤ with `T = 5`, `U = 6`, `C(2, 3) = (28, −2)`, and the characteristic polynomial is `X² − 5X + 6` with roots 2 and 3.
- `T = U = 0` gives `C(x, y) = (0, −x)` and `C² = 0`.
- Replacing `−x` by `x` gives `C′² − diag(T)∘C′ − diag(U) = 0`, the polynomial `X² − TX − U`; the sign is essential.
- On a common module the map `(f, g) ↦ f + Zg` has the large kernel `{(−Zg, g)}`; the geometric injectivity of §5.8 rests on the different source and target spaces.

### 5.7 No everywhere-regular simultaneous eigenvector

Prove: in scalar weight two, a form `f ∈ H⁰(X_{G₁,1}^I, ω²(−D))` with `U_Kli f = (α + β)f`, `U_Iw f = αf`, `U_{w,2} f = αβ f` and `αβ ≠ 0` is zero (BCGP21 Theorem 5.8.4, p. 134; Proposition 5.4.3 and Corollary 5.4.5, pp. 121–122).

A proof route: if f restricts to zero on `D_w`, write `f = Ha_w g` with g of weight `2 ⊗ ω^{1−p}`; then `Zg = βg` and Corollary 5.4.5 forces `g = 0`. Otherwise §§5.3–5.4 give a commutative diagram in which `U_{w,2} f` restricts nontrivially to `D_w`, while `Ha_w U_Iw f = α Ha_w f` vanishes there, a contradiction.

*Needs:* §5.5; §5.3; §5.4.

**Checks.**

- The two cases, vanishing and nonvanishing restriction to `D_w`, exhaust the possibilities.
- The hypothesis `αβ ≠ 0` is used in the second case; for `β = 0` the form `U_{w,2} f = 0` gives no contradiction.
- The stronger vanishing of BCGP21 §5.9 (Remark 5.8.5) is not used.

### 5.8 The weight-two doubling injection

Prove: the map `Δ(f, g) = f + Zg` from `e(U_{w,2})H⁰(X_{G₁,1}^I, ω²(−D))^{⊕2}` to `e(U_Iw U_{w,2})H⁰(X^{I,=w2}_1, ω²(−D))` is injective and intertwines `C_{U_Kli, U_{w,2}}` with `U_Iw` (BCGP21 Theorem 5.8.6, p. 135).

A proof route: the kernel is a colimit of finite-dimensional spaces stable under the commuting operators; a nonzero simultaneous eigenvector `(f, g)` with eigenvalues αβ and β gives `f = −βg`, `U_Kli f = (α+β)f` and `U_Iw f = αf`, contradicting §5.7.

*Needs:* §5.6; §5.7.

**Checks.**

- Equivariance: `U_Iw(f + Zg) = U_Iw f + U_{w,2} g = (U_Kli − Z)f + U_{w,2}g`, which is `Δ(C(f, g)) = (U_Kli f + U_{w,2}g) + Z(−f)`.
- The source is global sections and the target sections over the w-ordinary open; on one common module the map has a kernel.
- A generalized-eigenspace kernel is reduced to a genuine eigenvector after extending the coefficients.

### 5.9 Two unit-root refinements

Let M be a finite-dimensional subspace of `e(U_{w,2})H⁰(X_{G₁,1}^I, ω²(−D)) ⊗ 𝔽̄_p` stable under `U_Kli` and `U_{w,2}`, on which `U_Kli − (α + β)` and `U_{w,2} − αβ` are nilpotent for distinct `α, β ∈ 𝔽̄_p^×`. Prove: the algebra E generated by the two operators is local Artinian and contains lifts `α̃, β̃` with `(C − α̃)(C − β̃) = 0` on `M ⊕ M`; the maps `ι_ξ(f) = (f, −ξ̃^{−1}f)` for `ξ ∈ {α, β}` give `M ⊕ M ≅ M ⊕ M`, and the composite with Δ is `(f₁, f₂) ↦ (1 − β̃U_Iw^{−1})f₁ + (1 − α̃U_Iw^{−1})f₂`, so each component is injective into the `(U_Iw − ξ̃)`-part (BCGP21 Remark 5.8.7, p. 135).

*Needs:* §5.8; §5.6; Mathlib `Polynomial.aeval`, `Module.End.genEigenspace`.

**Checks.**

- `T = 5`, `U = 6`: the roots are 2 and 3, and `ι_2` has doubling image `(1 − 3U_Iw^{−1})f`: the formula uses the opposite root, since `α^{−1}Z = α^{−1}αβ U_Iw^{−1} = βU_Iw^{−1}`.
- Integral projectors need `α − β` to be a unit, not only nonzero; this is why the residual roots are assumed distinct.
- On a length-two Jordan block for `U_Kli` the nilpotent part is kept; no semisimplicity is assumed.

### Examples

At `F = ℚ`, `I = {p}`, scalar weight `(2, 2)`: an ordinary form of `U_{p,2}`-eigenvalue `αβ` with `α, β` distinct units produces two independent `U_Iw`-ordinary refinements, of eigenvalues α and β, on the p-ordinary open.

### Dependencies

Mathlib `LinearMap.prod`, `LinearMap.coprod`, `Module.End`, `Module.End.genEigenspace`, `Polynomial.aeval`; SchemeAndStackFoundations §2.19; SmoothRepresentationsOfLocalGroups §SR.1.4; gap:hilbert-siegel-models; gap:kodaira-spencer-isogeny; gap:lci-fundamental-class; Layer 4.

## Layer 6: Hilbert higher Coleman families and the one-place comparison

The standing hypotheses of Layer 4 hold.

### 6.1 The analytic family complex

For an affinoid `Spa(A, A⁺)` of the weight space of `Λ_I` and radii `(n, ε, w)`, descend the analytic highest-weight coefficient sheaf from the Hodge–Tate modified frame torsor, whose lattice satisfies `p^{1/(p−1)}ω ⊂ ω^mod ⊂ ω`. Define `C_cusp(n, ε, w, κ_A)` as derived sections of the analytic coefficient sheaf twisted by `det(ω^mod)²(−D)`, with input analytic character `κ − (2, 2)`; `H^†` is the filtered colimit over admissible radii (BCGP21 §6.1, pp. 138–145; §6.3, pp. 147–152).

*Needs:* §4.1; §4.2; HigherHidaAndColemanTheory §6.1, §6.2; gap:hilbert-siegel-frame-torsor; HodgeTateAndCanonicalSubgroups §5.5, §5.8.

The basic properties are:

- The radius-dependent derived analytic coefficient complex.
- Shrinking radii gives compatible transition maps.
- The highest-weight algebraic map uses `κ_A = κ − (2, 2)`.
- The coefficient includes the transported ideal of D.

**Checks.**

- At scalar weight `(2, 2)` the analytic character `κ_A` is trivial.
- The modified lattice need not equal ω integrally; it contains `p^{1/(p−1)}ω`.
- At a common smaller radius the two transition paths give the same coefficient map.

### 6.2 Mixed Coleman amplitude

Prove: for admissible radii the cuspidal analytic complex is concentrated in `[0, |I|]`, computed from the cover of the minimal compactification by the `2^{|I|}` affinoids indexed by `[2,3]^I`, all of whose finite intersections are acyclic after toroidal-to-minimal pushforward (BCGP21 Theorem 6.2.6, p. 145).

*Needs:* §6.1; gap:mixed-cube-cover; ShimuraCompactifications §C5.16.

**Checks.**

- `|I| = 1` gives a two-term complex from two affinoids and their intersection.
- `|I| = 0` gives a single affinoid and amplitude `[0, 0]`.
- The number of charts alone does not bound the amplitude: a Čech complex on `2^{|I|}` charts has length `2^{|I|} − 1` in general; the cubical structure gives length `|I|`.

### 6.3 Compact mixed U action

Prove: `U_{v,2}` improves analytic radii for `v ∈ I`; for `v ∈ Iᶜ` the composite `U_{v,1}U_{v,2}`, not `U_{v,2}` alone, improves radii, its kernels having type `(p, p², p³)` against `(p, p, p²)` for the second operator at I; the raw trace factors are `p^{−6}` and `p^{−3}`; hence `U^I` is compact on a projective Banach complex and its finite nonzero slope blocks are perfect over A (BCGP21 §6.3, pp. 147–152, especially Lemma 6.3.14, p. 152).

*Needs:* §6.2; §4.3; HigherHidaAndColemanTheory §6.3; LocallyAnalyticDistributions §4.16; gap:hilbert-siegel-frame-torsor.

**Checks.**

- At an Iwahori place, `U_{v,2}` alone does not improve the radius in the direction moved by `U_{v,1}`; replacing the composite by it fails the kernel-type check.
- The trace factor of `U_{v,1}U_{v,2}` is `p^{−3}·p^{−3} = p^{−6}`.
- A finite slope block of a compact operator on a Banach complex over a field is finite-dimensional.

### 6.4 The relative BGG comparison

On germs of analytic radii use the product over v of the relative GL₂ BGG sequences of HigherHidaAndColemanTheory §6.6. For the reflection at v the differential `θ_v` has order `k_v − l_v + 1`. Prove `θ_v U_source = p^{k_v−l_v+1} U_target θ_v`; the slopes of `U` on the reflected terms are at least −3, and at least 0 on `H⁰`; hence the algebraic-to-analytic map is an isomorphism on `H⁰` and injective on `H¹` in the ordinary range, and an isomorphism on `H¹` when every gap `k_v − l_v ≥ 3`; higher-degree exclusions use the degree-dependent gaps of the product spectral sequence (BCGP21 §6.4, pp. 153–154; the scaling identity is stated here in the direction forced by the derivative computation).

*Needs:* §6.1; HigherHidaAndColemanTheory §6.6, §9.6.

**Checks.**

- Differentiating `f(pz)` m times gives `p^m f^{(m)}(pz)`, so a source eigenvector of slope s maps to a target eigenvector of slope `s − (k_v − l_v + 1)`; with target slopes `≥ −3` the image vanishes when `s < k_v − l_v − 2`.
- At gap `k_v − l_v = 3` the ordinary slope 0 satisfies `0 < 3 − 2`, so the reflected contribution is excluded in every degree.
- In the opposite direction `θ U = p^{−(k−l+1)} U θ` the target slope would be `s + k − l + 1 ≥ −3` for every `s ≥ 0`, and no exclusion would follow; this is why the identity is pinned by the derivative witness.

### 6.5 Multi-place small-slope continuation

Prove: on a joint finite nonzero slope block, restriction of classical coherent cohomology to `H^†` is a quasi-isomorphism if `v_p(U_{v,2}) < k_v + l_v − 3` for `v ∈ I` and `v_p(U_{v,1}) < l_v − 3` for `v ∈ Iᶜ`, using the commuting local operators on the block without asserting that each is compact on the full complex (BCGP21 Theorem 6.5.8, p. 156; Lemmas 6.5.12–6.5.28, pp. 157–164).

A proof route: use the untruncated finite flat degree for monotonicity and equality at the integral walls (as in §1.3); uniform progress on closed bands (as in §1.4); on each block with annihilating polynomial P, `P(0) ≠ 0`, use `Q(X) = −(P(X) − P(0))/(X P(0))`, a polynomial with `U Q(U) = 1` on the block; construct compatible torsion sections at cofinal precision; complete with a continuous bounded block projection; extend one place at a time, preserving the other degree coordinates and eigenrelations.

*Needs:* §6.3; §6.4; §1.3; §1.4; HigherHidaAndColemanTheory §9.7; HodgeTateAndCanonicalSubgroups §0.6, §0.8; Mathlib `Polynomial.aeval`.

**Checks.**

- For `P = X² + 2X + 1` and `U = −1`: `R = −(P − P(0))/P(0) = −X² − 2X` has `R(−1) = 1`, and `Q = R/X = −X − 2` has `U Q(U) = (−1)(−1) = 1`; replacing the coefficient 2 by 1 gives `R(−1) = 0`.
- For `F = ℚ`, `I = {p}` and `Ω(k, r)` (weight `(k_v, l_v) = (k + r, r)`) the threshold `k_v + l_v − 3 = k + 2r − 3` is that of HigherHidaAndColemanTheory §9.7.
- The inequalities are strict; at `v_p(U_{v,1}) = l_v − 3` the statement says nothing.

### 6.6 Ordinary Euler characteristic in families

Prove: the alternating rank of the `U^I`-ordinary finite perfect block is locally constant on the classical weight region (`l_v = 2` on I, `k_v ≡ l_v ≡ 2 mod p−1`) (BCGP21 Theorem 6.3.16, p. 152); and for `|I| ≤ 1`, after localization at a non-Eisenstein ideal, the analytic complex and the fibre of `M_I` have equal Euler characteristic (BCGP21 Proposition 6.6.2 and Remark 6.6.3, pp. 165–167).

A proof route: finite perfect block base change gives local constancy; at a witness weight with every gap large, use §6.5, the comparison of `e(T_I)` and `e(U^I)` through the automorphic computation of BCGP21 Theorem 3.10.1(2) (with ordinarity of the local factors at I from the unit product and §4.3), and §4.7; return to all weights of the component.

*Needs:* §6.3; §6.5; §4.7; §4.3; AutomorphicFormsOnReductiveGroups §6.6; HigherHidaAndColemanTheory §6.3.

**Checks.**

- Only the alternating rank is constant: a block with `H⁰ = H¹ = E` at one weight and `0` nearby has constant Euler characteristic 0 while the dimensions jump.
- At `|I| = 0` both complexes are in degree 0 and the statement is equality of dimensions.
- Without localization the automorphic comparison of BCGP21 Theorem 3.10.1 is not available; the hypothesis is used.

### 6.7 The one-place ordinary comparison

Assume `|I| = 1`, `l_v = 2` on I, `k_v ≡ l_v ≡ 2 mod p−1`, and localize at a non-Eisenstein ideal. Prove: the restriction `r : e(U^I)RΓ(X^{mult,†}, ω^κ(−D)) → M_I ⊗^L_{Λ_I, κ} ℂ_p` is injective on `H⁰` and surjective on `H¹` (BCGP21 Proposition 6.6.1, p. 164); both sides have amplitude `[0, 1]` and equal Euler characteristic (§6.6); hence r is a quasi-isomorphism (BCGP21 Theorem 6.6.4, p. 167). If moreover `l_v ≥ 4` on `Iᶜ`, the global classical ordinary complex `e(U^I)RΓ(X, ω^κ(−D))[1/p]` is quasi-isomorphic to `M_I ⊗^L_{Λ_I,κ} ℚ_p` (BCGP21 Theorem 6.6.5, p. 167). The conclusion is rational, not integral at every tame level.

A proof route: the two-affinoid cover and a continuous ordinary projector give the edge properties of r; for `a = dim coker H⁰(r)` and `b = dim ker H¹(r)`, `χ(source) − χ(target) = −a − b` with `χ = dim H⁰ − dim H¹`, so equality forces `a = b = 0`; §6.5 and proper GAGA pass to global classical cohomology.

*Needs:* §6.6; §6.2; §6.5; §4.7; AdicSpacesPartIII §R3.7.

**Checks.**

- The Euler identity: for `h⁰`, `h¹` of source and target, `(h⁰_s − h¹_s) − (h⁰_t − h¹_t) = −(h⁰_t − h⁰_s) − (h¹_s − h¹_t) = −a − b`.
- For a four-term complex (`|I| = 3`) one Euler identity does not control the defects in four degrees, so the statement is not extended to larger I.
- At `l_v = 3` on `Iᶜ` the hypothesis `l_v ≥ 4` of the global statement fails; only the comparison with `H^†` holds there.

### Examples

For `F = ℚ`, `I = {p}` and `κ = (k + 2, 2)`, §6.7 is the comparison of Pilloni Lemma 14.8.2 between the Klingen family and overconvergent cohomology; the edge maps are an injection on `H⁰` and a surjection on `H¹`.

### Dependencies

AdicSpacesPartIII §R3.7; AutomorphicFormsOnReductiveGroups §6.6; HigherHidaAndColemanTheory §6.1, §6.2, §6.3, §6.6, §9.6, §9.7; HodgeTateAndCanonicalSubgroups §0.6, §0.8, §5.5, §5.8; LocallyAnalyticDistributions §4.16; Mathlib `Polynomial.aeval`; ShimuraCompactifications §C5.16; gap:hilbert-siegel-frame-torsor; gap:mixed-cube-cover; Layers 1, 4.

## Layer 7: Completed cohomology and Eichler–Shimura

Standing hypotheses of Layers 7–8. `(G, X)` is a Shimura datum of Hodge type with `G_{ℚ_p}` quasi-split; `B ⊂ P = P_µ` with Levi `M` and torus T; E is a finite extension of `ℚ_p` containing the reflex and splitting fields; `𝔤`, `𝔟`, `𝔮`, `𝔪` are the Lie algebras over E; the tame level `K^p` is neat and the compactifications compatible. Completed cohomology is the derived completed tower of CompletedCohomologyPartII §2.2 and its derived locally analytic vectors (CompletedCohomologyPartII §F.4); locally analytic vectors of individual completed cohomology groups are not substituted for them. Higher Coleman complexes `HC_{w,λ}`, support orders and the normalized torus action are those of HigherHidaAndColemanTheory §§5.1, 5.5. A weight `λ ∈ X^*(T)_E` is non-Liouville when `⟨λ + ρ, α^∨⟩` is p-adically non-Liouville for every positive root α (BCGP25 Definition 2.3.30, p. 30).

### 7.1 The BGG coefficient category and its analytic realization

For `λ ∈ X^*(M)_E` let `O(𝔤, 𝔮)_{λ-alg}` be the full subcategory of the BGG category `O(𝔤, 𝔮)` of modules all of whose `𝔥`-weights ν satisfy `ν − λ ∈ X^*(T)` (BCGP25 Definition 3.4.5, p. 53); write `O(𝔤,𝔟)_{λ-alg}` for `𝔮 = 𝔟`. Let `Û(𝔤) = lim_r U(𝔤)_r` be the completion of the enveloping algebra through the distribution algebras of the congruence subgroups `G_r`, and call a `Û(𝔤)`-module coadmissible when it is `lim_r M_r` with `M_r` finitely generated and compatible base changes (BCGP25 Definition 2.2.31, p. 24). Prove: `O(𝔤,𝔮)_{λ-alg}` is abelian and for V in it the `𝔮`-action on the twist `V(−λ)` integrates to Q (BCGP25 Lemma 3.4.6, p. 54); `M ↦ M ⊗_{U(𝔤)} Û(𝔤)` is an equivalence of `O` with its completed counterpart `Ô` (BCGP25 Theorem 2.2.39, p. 25, after Schmidt); and `M ↦ M̂^∨ = [M ⊗_{U(𝔤)} Û(𝔤)]^∨` is an exact contravariant functor to `𝔤`-representations on LB-spaces whose Banach stages carry compatible actions of the `G_r` (BCGP25 Proposition 3.4.3, p. 53).

*Needs:* LieHighestWeight Layer 3; Tau Ceti `TauCeti.VermaModule`; LocallyAnalyticDistributions §0.0, §0.3; CompletedCohomologyPartII §F.4.

The basic properties are:

- `O(𝔤,𝔮)_{λ-alg}` is an abelian full subcategory of `O(𝔤,𝔮)`, closed under subquotients and extensions.
- `M̂^∨` is exact and contravariant in M, and commutes with finite direct sums.
- For a Verma module `M = U(𝔤) ⊗_{U(𝔟)} λ`, `M̂^∨` is the space of germs at the identity of functions f on G with `f(gb) = λ(b)f(g)` (BCGP25 Remark 3.4.4, p. 53).
- For finite-dimensional algebraic `M = W^∨`, `M̂^∨ = W`.

**Checks.**

- The zero module gives zero, and a weight ν with `ν − λ ∉ X^*(T)` (for instance `λ + 1/2` on `GL₂` at an algebraic λ) excludes the module from the category.
- For `𝔤 = 𝔤𝔩₂`, `𝔲 = 𝔫` one-dimensional and M the standard two-dimensional representation with basis `e₁, e₂`, `𝔫e₂ = e₁`: `H⁰(𝔫, M)` is spanned by `e₁` and `H¹(𝔫, M) = M/𝔫M ⊗ 𝔫^∨` is one-dimensional, so the total dimension is `|W| = 2`, as Kostant's theorem predicts.
- The completion is needed: a Verma module is infinite-dimensional, and its algebraic dual is not an LB-space with Banach stages; the continuous dual of the completion is.

### 7.2 Analytic localization on the flag variety

For `M ∈ O(𝔤,𝔟)_{λ-alg}` define `Loc(M)`, the `G`-equivariant sheaf on the flag variety obtained from `M̂^∨` with its λ-twisted action (BCGP25 §3.5, pp. 56–61). Prove: `Loc(M)` decomposes over the generalized eigencharacters of the centre of `𝔪` as `⊕_{w} Loc(M)_{−w_{0,M}(w·λ + 2ρ_M)}` (BCGP25 §3.5, p. 58); and for non-Liouville λ its cohomology sheaves on the Bruhat strata are higher Coleman sheaves, `H^i(Loc(M(−λ)))|_{C_w^†} = HCS_{w,λ}(H^i(𝔲_{P_w}, M))` (BCGP25 Theorem 3.5.11, p. 58).

*Needs:* §7.1; HigherHidaAndColemanTheory §5.1; PerfectoidShimuraVarieties §6.3; LieHighestWeight Layer 3.

The basic properties are:

- Loc is exact and contravariant on `O(𝔤,𝔟)_{λ-alg}`.
- The decomposition by eigencharacters of `Z(𝔪)`.
- For non-Liouville λ, the stratum-wise identification with higher Coleman sheaves of the `𝔲_{P_w}`-cohomology of M.

**Checks.**

- An integral algebraic λ is non-Liouville: every `⟨λ+ρ, α^∨⟩` is an integer.
- For `M` finite-dimensional, the identification of Theorem 3.5.11 involves `H^i(𝔲_{P_w}, M)`, which by Kostant is one-dimensional for each w in the `GL₂` example of §7.1.
- The stratum-wise identification is asserted only for non-Liouville λ; for a weight with some `⟨λ + ρ, α^∨⟩` a p-adic Liouville number it is not part of the statement.

### 7.3 The coherent completed-cohomology functor

For `M ∈ O(𝔤,𝔟)_{λ-alg}` define `CC_λ(M) = RHom_𝔤(M, RΓ̃^{la})`, Lie-algebra derived Hom into the derived locally analytic vectors of the completed tower, with the λ-twisted torus action; `CC_{cusp,λ}` uses the compact-support tower (BCGP25 §4.7, p. 99; the analytic realization of M is that of §7.1). The arithmetic Galois action and the prime-to-p Hecke action are inherited from the tower.

*Needs:* §7.1; CompletedCohomologyPartII §2.2, §6.7, §7.1, §F.4.

The basic properties are:

- A map `M → N` gives `CC_λ(N) → CC_λ(M)`, with identity and composition laws.
- The compact-support tower gives `CC_{cusp,λ}` and a map to `CC_λ`.
- Galois and prime-to-p Hecke actions commute with the functorial maps.
- A short exact sequence `0 → M₁ → M₂ → M₃ → 0` gives a distinguished triangle `CC_λ(M₃) → CC_λ(M₂) → CC_λ(M₁) → CC_λ(M₃)[1]`.

**Checks.**

- For finite-dimensional algebraic `M = W^∨` the functor recovers classical cohomology with coefficients W through derived locally analytic recovery (CompletedCohomologyPartII §6.7).
- The zero module gives the zero complex.
- The connecting map of the triangle is induced by the Yoneda class of the extension; a split sequence gives the zero connecting map.

### 7.4 The completed-to-coherent comparison

Prove: for `M ∈ O(𝔤,𝔟)_{λ-alg}`, `CC_λ(M) ⊗ ℂ_p ≅ RΓ(Sh^tor_{K^p}, VB_red(Loc(M)))` and the cuspidal analogue with the ideal of the boundary; the horizontal action of the centre of `𝔪` on `Loc(M)` induces the arithmetic Sen operator (BCGP25 Theorem 4.7.1, p. 99; Theorem 4.5.20, p. 79; Theorem 4.5.23, p. 81).

A proof route: the Chevalley–Eilenberg resolution computes `RHom_𝔤(M, O^la)` termwise as `M^∨ ⊗ O^la ⊗ Λ^i 𝔤^∨`; apply `VB` termwise and compare with `VB_red(Loc(M))`; the Sen statement is the comparison of horizontal and arithmetic actions.

*Needs:* §7.2; §7.3; gap:solid-vb-sen; PerfectoidShimuraVarieties §3.6, §6.3; HigherHidaAndColemanTheory §5.1.

**Checks.**

- The comparison is functorial in M and preserves Hecke actions.
- The Sen normalization is pinned by `ℚ_p(1)`, of Sen eigenvalue `+1`.
- No non-Liouville hypothesis is needed for the comparison itself; it enters in §7.5.

### 7.5 The higher Eichler–Shimura spectral sequence

Prove: for non-Liouville λ and `M ∈ O(𝔤,𝔟)_{λ-alg}` there is a spectral sequence `E₁^{p,q} = ⊕_{ℓ(w)=p} H^{p+q}(HC_{w,λ}(E ⊗^L_{𝔲_{P_w}} M)) ⇒ H^{p+q}(CC_λ(M)) ⊗ ℂ_p`, and the cuspidal analogue; the action of `wµ ∈ Z(𝔪_w)` on `H^*(𝔲_{P_w}, M)` induces the arithmetic Sen operator (BCGP25 Theorem 4.7.2, pp. 99–100). The coefficient Lie homology is derived and its higher terms are kept.

*Needs:* §7.4; §7.2; HigherHidaAndColemanTheory §5.5.

**Checks.**

- The abutment is indexed by total degree `p + q`.
- For proper Shimura varieties and antidominant λ the sequence degenerates and `CC_λ(M(𝔤)_λ)` is concentrated in degree `d = dim Sh` (BCGP25 Corollary 4.7.3, p. 100).
- For the modular curve (`d = 1`, two strata) the filtration has two steps, in degrees 0 and 1 of the Bruhat length.

### 7.6 Ordinary Eichler–Shimura degrees

Let λ be non-Liouville and `M(𝔤)_λ` the Verma module. Prove: if the Shimura variety is proper or Siegel, the finite-slope functors `CC^fs_λ(M(𝔤)_λ)` and `CC^fs_{cusp,λ}` have slopes `≥ 0`, and the ordinary part has a spectral sequence `E₁^{p,q} = ⊕_{ℓ(w)=p} H^{2p+q−d}(HC^{=0}_{w,λ}(M(𝔪_w)_{λ + w^{−1}w_{0,M}ρ + ρ})) ⇒ H^{p+q}(CC^{=0}_λ(M(𝔤)_λ)) ⊗ ℂ_p` (BCGP25 Theorem 4.7.5, p. 100); if the variety is proper, the ordinary part is concentrated in degree d with the associated filtration (BCGP25 Corollary 4.7.6, p. 100), with no antidominance hypothesis.

*Needs:* §7.5; HigherHidaAndColemanTheory §5.6, §8.5.

**Checks.**

- The ordinary degree index is `2p + q − d`, not `p + q`: at `p = 0`, `q = d` the contribution is `H⁰`.
- Properness is used for middle-degree concentration; the Siegel case gets only the spectral sequence, and §7.7 supplies the localized version.
- The coefficient on the w-stratum is the Levi Verma module of weight `λ + w^{−1}w_{0,M}ρ + ρ`.

### 7.7 Genus-two boundary vanishing

For `G = GSp₄` and an absolutely irreducible residual `ρ̄ : G_ℚ → GSp₄(𝔽̄_p)` with associated prime-to-p Hecke ideal `m_ρ̄`, prove: `RΓ_c(Sh^tor_{K^p}, ℚ_p)_{m_ρ̄} → RΓ(Sh^tor_{K^p}, ℚ_p)_{m_ρ̄}` is a quasi-isomorphism (BCGP25 Theorem 4.9.4, p. 104), and the maps `RΓ_w(ω^{†,κ_w}(−D))^{ord}_{m_ρ̄} → RΓ_w(ω^{†,κ_w})^{ord}_{m_ρ̄}` are quasi-isomorphisms (BCGP25 Corollary 4.9.5 and Lemma 4.9.6, p. 104).

A proof route: the boundary of the completed tower has Hecke eigensystems of Eisenstein type, whose Hecke polynomials are reducible, so they vanish at `m_ρ̄`; apply the support triangle and the boundary-vanishing comparison.

*Needs:* §7.3; CompletedCohomologyPartII §7.1, §7.8; AutomorphicBundles §B3.2, §B3.4; IntegralHeckeAndGaloisDeterminants §3a.2.

**Checks.**

- A residual representation `χ₁ ⊕ χ₂ ⊕ ρ₂`, reducible, does not satisfy the hypothesis; its Hecke polynomial factors as boundary ones do.
- The statement is after localization; without it the boundary contributes.
- The cuspidal and full ordinary higher Coleman complexes agree after localization in each of the four Bruhat degrees.

### 7.8 The genus-two four-piece filtration

Specialize to `GSp₄/ℚ`, `d = 3`, `ρ = (−1, −2; 0)`, the four representatives `i_w` of lengths `i = 0, 1, 2, 3`, a non-Liouville `λ = (λ₁, λ₂; w)` (with `λ₁ + λ₂ ≡ w mod 2` when λ is integral), and an absolutely irreducible residual ρ̄. Prove: `V = RHom_𝔟(λ, RΓ̃^{la})^{ord}_{m_ρ̄}` is concentrated in degree 3 and `V ⊗ ℂ_p` has a filtration whose graded pieces are `Gr^i = (H^i_{i_w}(ω^{†, −w_{0,M}(i_w·λ + 2ρ_M)}) ⊗ ℂ_p(−i_w^{−1}w_{0,M}ρ − ρ))^{ord}_{m_ρ̄}`, on which the Sen operator acts by the scalars `(−λ₁−λ₂−w)/2`, `(−2+λ₁−λ₂−w)/2`, `(−4+λ₂−λ₁−w)/2`, `(−6+λ₁+λ₂−w)/2` for `i = 3, 2, 1, 0` (BCGP25 Theorem 4.9.9, pp. 105–106).

*Needs:* §7.6; §7.7; HigherHidaAndColemanTheory §9.1, §4.9.

**Checks.**

- At `λ = (1, 1; 2)` the four values in descending degree are `−2, −2, −3, −3`.
- At `λ = (1, 1; −2)` they are `0, 0, −1, −1`; a sign error in the central coordinate exchanges these two lists.
- The four values sum to `−(12 + 4w)/2 = −6 − 2w`, independent of `λ₁, λ₂`.

### Examples

At the singular weight `λ = (1, 1; w)`, `w` even, the four pieces have coherent weights `(1,1), (1,1), (2,2), (2,2)` in descending degree and Sen values `−1−w/2, −1−w/2, −2−w/2, −2−w/2`; Layer 8 studies the repeated value.

### Dependencies

AutomorphicBundles §B3.2, §B3.4; CompletedCohomologyPartII §2.2, §6.7, §7.1, §7.8, §F.4; HigherHidaAndColemanTheory §1.1, §4.9, §5.1, §5.5, §5.6, §8.5, §9.1; IntegralHeckeAndGaloisDeterminants §3a.2; LocallyAnalyticDistributions §0.0, §0.3; PerfectoidShimuraVarieties §3.6, §6.3; LieHighestWeight Layer 3; gap:solid-vb-sen.

## Layer 8: The singular Sen operator and classicality

Standing hypotheses: those of Layer 7 specialized as in §7.8 to `GSp₄/ℚ` with `λ = (1, 1; w)`, w even, localized at a prime-to-p Hecke maximal ideal with absolutely irreducible residual representation. Multiplicity statements concern finite-dimensional eigenspaces after this localization.

### 8.1 The singular two-term Cousin complex

Prove: the ordinary part of `RΓ(Sh^tor, ω^{(1,1;−w),sm})` is computed by `RΓ_c` of the union of the Bruhat strata of lengths 2 and 3, and is represented in degrees 2, 3 by `Cous : H²_{2_w}(ω^{(1,1;−w),sm})^{ord} → H³_{3_w}(ω^{(1,1;−w),sm})^{ord}`, induced by the class of the extension of sheaves along the two strata; the strata of lengths 0 and 1 have no ordinary part, their slopes being at least `−(2,2;w)` and `(0,−2;−w)` against the ordinary slope `−(1,1;w)` (BCGP25 Proposition 4.10.3, p. 106; Proposition 4.10.6, p. 107).

*Needs:* §7.8; HigherHidaAndColemanTheory §5.5, §5.8.

**Checks.**

- The two terms are in degrees 2 and 3.
- In the identification with the graded pieces of §7.8, the degree-two term carries the twist `ℂ_p(2, 0; 0)` and the degree-three term `ℂ_p(0, 0; 0)`.
- The Serre-dual complex in degrees `[0, 1]` has weights `(2, 2; −w)` in both degrees (BCGP25 Remark 4.10.7 and §4.10.8, p. 107).

### 8.2 The repeated Sen block

Put `a = −1 − w/2`. Let `V_a` be the generalized a-eigenspace of the Sen operator Θ on `V ⊗ ℂ_p`. Prove: `(Θ − a)² = 0` on `V_a`; `V_a` sits in `0 → Gr³ → V_a → Gr² → 0`; and `Θ − a`, which vanishes on both pieces, induces `N_a : Gr² → Gr³` (BCGP25 §4.10.8, pp. 107–108). The other repeated value `−2 − w/2` occurs on `Gr¹` and `Gr⁰`.

*Needs:* §7.8; Mathlib `Module.End.genEigenspace`.

The basic properties are:

- `(Θ − a)² = 0` on `V_a`.
- `N_a` is the unique map `Gr² → Gr³` through which `Θ − a` factors.
- Hecke-compatible maps preserve the block and `N_a`.

**Checks.**

- At `w = 2`, `a = −2`, and the scalar values are `−2, −2, −3, −3`.
- If Θ is semisimple on `V_a`, then `N_a = 0`.
- The Jordan block `[[a, 1], [0, a]]` has `N_a ≠ 0` with the same two graded scalars, so scalar values on the graded pieces do not determine `N_a`.

### 8.3 The rank-one singular localization comparison

On the union `C_{3_w,Q}` of the Bruhat strata of lengths 2 and 3, prove: the extension obtained from `Loc(M(𝔤)_λ)` by derived invariants of the horizontal operator `µ − µ₀`, `µ₀ = −1 − w/2`, agrees with the higher Coleman extension of §8.1 up to the B-character `λ − η`, `η = (0, −1; 1)`, and a nonzero scalar (BCGP25 Theorem 3.6.9, p. 64; Proposition 3.6.15, p. 66). The statement includes nonvanishing of the comparison on both strata and on the overlap.

A proof route: use the two-step Chevalley–Eilenberg complex for the root subalgebra of the Klingen root β. At the closed orbit the relevant operator is `x∂_x + 1`, injective on power-series germs in characteristic zero. At the overlap the operator `(x+1)∂_x + 1` kills the germ `1/(1+x)`; the route must therefore identify the constrained fibre on which the comparison is computed and show that this germ is not in it, or construct the nonzero comparison by another argument. Once nonvanishing is known, the comparison is a nonzero scalar because the endomorphisms of the extension are scalars.

*Needs:* §7.2; §8.2; §8.1.

**Checks.**

- `(x∂_x + 1)(Σ a_n x^n) = Σ (n+1)a_n x^n`, zero only when every `a_n = 0`.
- `((x+1)∂_x + 1)(1/(1+x)) = −1/(1+x) + 1/(1+x) = 0`: injectivity on all analytic germs fails at the overlap.
- Equality of eigenvalues on the two strata does not give equality of extensions; the comparison is of extension classes.

### 8.4 The Sen–Cousin comparison

Prove: under the identification of the graded pieces, `N_a` and the Cousin map of §8.1 agree up to a nonzero scalar (BCGP25 Theorem 4.10.12, p. 108). The scalar does not affect kernel, image or vanishing.

A proof route: represent the block by the cone of `Θ − a`; compare its two exact triangles through §8.3 and `VB_red`; transport to ordinary cohomology and the Cousin boundary with the B-twists kept.

*Needs:* §8.3; §8.1; §8.2; §7.4; PadicHodgeTheory §4.4.

**Checks.**

- The comparison is of extension classes: a Jordan block and a semisimple block have the same graded scalars and different `N_a`.
- Under the comparison, `ker N_a` is the space of classical classes `H²(Sh^tor, ω^{(1,1;−w),sm})^{ord}`.
- The scalar is nonzero; a zero comparison would make every ordinary class of degree two classical, which §8.2's Jordan example excludes.

### 8.5 Balanced eigenspace exactness

Let `f ∈ H⁰_{0_w}(ω^{(2,2;−w),sm})^{ord}` be an ordinary overconvergent eigenform with irreducible `ρ_f : G_ℚ → GSp₄(ℚ̄_p)`, whose Zariski image contains `Sp₄`, or contains `SL₂ × SL₂` with `ρ_f` reducible on an index-two subgroup, and `m_f` its maximal ideal. Prove: `V[m_f] ≅ ρ_f ⊗ W` with `n = dim W > 0`, so `dim V[m_f] = 4n` (BCGP25 Lemma 4.12.3, p. 113). Assume further that `dim_{ℂ_p} Gr^i(V ⊗ ℂ_p)[m_f] = n` for each `i = 0, 1, 2, 3` (BCGP25 Theorem 4.12.4(3), p. 113). Prove that the sequence `0 → Gr³[m_f] → V_a[m_f] → Gr²[m_f] → 0` stays exact.

A proof route: the Eichler–Shimura relation and the Nekovář argument identify `V[m_f]`; the filtration on `V[m_f]` injects on each graded piece into `Gr^i[m_f]`, and the total `4n` equals the sum of the four upper bounds, forcing equality at every step. If separately each `Gr^i[m_f]` has dimension at most one, `4n ≥ 4` forces `n = 1` and the balance (BCGP25 Remark 4.12.5, p. 114).

*Needs:* §7.8; §8.2; gap:gsp4-eichler-shimura; ArithmeticGaloisRepresentations §5.11, §7.6.

**Checks.**

- Taking `m`-torsion is not exact: for `M = E[T]/(T − a)²` with sub `S = (T − a)M ≅ E` and quotient `M/S ≅ E`, the `(T − a)`-torsion gives `0 → S → S → E` with zero last map; the balance hypothesis is what restores exactness.
- The image hypotheses give the total `4n`; they do not give the four graded dimensions, which are a separate hypothesis.
- With `n = 1` and graded dimensions `(2, 0, 1, 1)` the total is still 4 but the balance fails, and exactness of the block is not asserted.

### 8.6 De Rham ordinary classicality

In the setting of §8.5, assume the balance `dim Gr^i(V ⊗ ℂ_p)[m_f] = n` for every i with `dim V[m_f] = 4n`, and that `ρ_f|_{G_{ℚ_p}}` is de Rham. Prove that f is classical (BCGP25 Theorem 4.12.4, pp. 113–114).

A proof route: on `V[m_f] = ρ_f ⊗ W` the arithmetic Sen operator is that of `ρ_f`, semisimple because `ρ_f|_{G_{ℚ_p}}` is de Rham, hence Hodge–Tate; so `N_a` vanishes on the eigenspace; by §8.4 the Cousin map vanishes and every ordinary degree-two class of eigensystem `m_f` is classical; stability of the coherent multiplicity along the stable Arthur parameter gives `dim H⁰(ω^{(2,2;−w),sm})[m_f] = n`, so the classical eigenspace is the whole ordinary eigenspace and contains f.

*Needs:* §8.4; §8.5; PadicHodgeTheory §4.4; gap:gsp4-weight-two-stability; AutomorphicFormsOnReductiveGroups §6.5.

**Checks.**

- A non-de Rham ordinary `ρ_f|_{G_{ℚ_p}}` (an extension of the two potentially unramified planes with nonzero nilpotent Sen operator) has `N_a ≠ 0`, and the argument gives nothing.
- de Rham here means: the Sen operator of `D_Sen(ρ_f|_{G_{ℚ_p}})` is semisimple with eigenvalues `−1 − w/2` and `−2 − w/2` (BCGP25 before Theorem 4.12.4, p. 113).
- Semisimplicity is applied to the finite-dimensional eigenspace `V[m_f]`, not to the infinite-dimensional completed space.

### Examples

At `w = 0`, `a = −1`: an ordinary weight-(2,2) eigenform with Sp₄ Zariski image, de Rham at p and with each `Gr^i[m_f]` one-dimensional, is classical by §8.6.

### Dependencies

ArithmeticGaloisRepresentations §5.11, §7.6; AutomorphicFormsOnReductiveGroups §6.5; HigherHidaAndColemanTheory §5.5, §5.8; Mathlib `Module.End.genEigenspace`; PadicHodgeTheory §4.4; gap:gsp4-eichler-shimura; gap:gsp4-weight-two-stability; Layer 7.

## Layer 9: Four integral projective Hida modules

Standing hypotheses. `G = GSp₄/ℚ`, p any prime, O a complete discrete valuation ring finite over `ℤ_p` with field of fractions E, `Λ = O[[T(ℤ_p)]]` the full torus Iwasawa algebra including its finite torsion (PadicMeasuresIwasawaAlgebras §1.7), neat tame level `K^p`, and the four Weyl strata of HigherHidaAndColemanTheory §9.1. The integral amplitude theorem in genus two is HigherHidaAndColemanTheory §4.9. Imported complexes are transported along `ι([t]) = [t⁻¹]`, so that specialization is at `+λ` with the twist `E(−λ)`.

### 9.1 The four modules

Let `M_w^•` be the supported integral Iwasawa complexes of HigherHidaAndColemanTheory §4.5 after base change along ι, cuspidal for `ℓ(w) = 0, 1` and canonical for `ℓ(w) = 2, 3`. Define `𝓜_w = H^{ℓ(w)}(M_w^•) ⊗_{ℤ_p} O` (BCGP25 §7.3, p. 163). Neither flatness nor projectivity is part of the definition.

*Needs:* HigherHidaAndColemanTheory §4.5, §4.6, §4.9; PadicMeasuresIwasawaAlgebras §1.1, §1.7.

The basic properties are:

- `𝓜_w` is the length-degree cohomology of the transported complex.
- Cuspidal support for lengths 0, 1 and canonical support for lengths 2, 3.
- Evaluation at `+λ` after ι equals evaluation at `−λ` before it.
- The Λ-linear Hecke and `T(ℚ_p)` actions are inherited.

**Checks.**

- The length-zero module is `H⁰` of the cuspidal complex; the length-three module is `H³` of the canonical complex.
- For a character χ of `T(ℤ_p)` with `χ ≠ χ^{−1}` (for instance of order 3 when `3 | p − 1`), evaluation at χ and at `χ^{−1}` differ, so omitting ι changes the specialization.
- The amplitude of the cuspidal complex is `[0, ℓ(w)]` and of the canonical complex `[ℓ(w), 3]` (HigherHidaAndColemanTheory §4.9), so `𝓜_w` is the extreme cohomology in each case.

### 9.2 Concentration and projectivity

Prove: for each w the transported complex is quasi-isomorphic to `𝓜_w[−ℓ(w)]`, and `𝓜_w` is finite projective over Λ, for every prime p including `p = 2` (BCGP25 Theorem 7.3.1(1) and its proof, pp. 163–164).

A proof route: the amplitude bounds leave one extra degree only for lengths 1 and 2; for length one, `H⁰` with the length-one support condition vanishes, and duality gives the complementary length-two statement; residual detection then gives concentration and projectivity, over the full torus without splitting its finite part.

*Needs:* §9.1; HigherHidaAndColemanTheory §4.8, §4.9; DeformationAndDerivedPatchingAlgebra §7.1, §7.3.

**Checks.**

- Amplitude alone does not suffice for length one: the cuspidal complex has amplitude `[0, 1]`, and the vanishing of supported `H⁰` is what removes degree 0.
- At `p = 2` the finite torus quotient is a 2-group and cannot be split off by averaging; the residual criterion works over the local ring directly.
- For length 0, amplitude `[0, 0]` already gives concentration.

### 9.3 Classical specialization

Prove: for dominant algebraic λ and `κ = −w_{0,M}w(λ + ρ) − ρ` there are Hecke-equivariant isomorphisms `𝓜_w ⊗_{Λ,λ} E(−λ) ≅ H^{ℓ(w)}(Sh^tor_{Iw(p)K^p}, ω^κ(−D))^{ord}` for `ℓ(w) = 0, 1` and with `ω^κ` for `ℓ(w) = 2, 3`; the other cohomology of the derived fibre vanishes; `t ∈ T^+(ℚ_p)` corresponds to the double coset `[Iw(p) t Iw(p)]` (BCGP25 Theorem 7.3.1(2) and Remark 7.3.3, pp. 164–165).

*Needs:* §9.2; HigherHidaAndColemanTheory §3.7, §4.6, §9.1.

**Checks.**

- With `ν = (0, −2)`, the four weights are `(5,3), (5,1), (2,−2), (0,−2)` in lengths 0, 1, 2, 3 (HigherHidaAndColemanTheory §9.1).
- A character with `χ ≠ χ^{−1}` distinguishes evaluation at λ and at −λ.
- The `E(−λ)` twist makes `T(ℚ_p)` act through a smooth character trivial on `T(ℤ_p)`.

### 9.4 Higher Coleman specialization

Prove: for algebraic λ with `κ = −w_{0,M}w(λ+ρ) − ρ` only M-dominant, `𝓜_w ⊗_{Λ,λ} E(−λ)` is the `T(ℤ_p)`-invariant ordinary higher Coleman group `H^{ℓ(w)}_w(Sh^tor_{K^p}, ω^{κ,sm}(−D))^{ord, T(ℤ_p)}` for `ℓ(w) = 0, 1`, and without −D for `ℓ(w) = 2, 3` (BCGP25 Theorem 7.3.1(3), p. 164). No classical identification is asserted at such weights.

*Needs:* §9.2; HigherHidaAndColemanTheory §8.3, §5.5.

**Checks.**

- A weight M-dominant but not G-dominant still has a higher Coleman fibre.
- The support convention (cuspidal for lengths 0, 1) is retained.
- At a G-dominant weight §9.3 and §9.4 agree by the classicality comparison of HigherHidaAndColemanTheory §8.5.

### 9.5 Integral duality

Prove: for `w^* = w_{0,M} w w₀` there is a perfect Λ-bilinear pairing `𝓜_w ⊗_Λ 𝓜_{w^*} → Λ` interpolating Serre duality, with the torus action transposed and the Hecke action adjoint (BCGP25 Theorem 7.3.1(4), p. 164).

*Needs:* §9.2; HigherHidaAndColemanTheory §4.8.

**Checks.**

- Lengths 0 and 3, and lengths 1 and 2, pair: `ℓ(w) + ℓ(w^*) = 3`.
- The shift `[−3]` of the complex pairing becomes the complementary degrees; no further shift is attached to the modules.
- At a classical weight the specialized pairing is Serre duality between `H⁰(ω^κ(−D))` and `H³(ω^{κ^∨})`, with `κ^∨ = (3 − κ₂, 3 − κ₁)`.

### 9.6 Tame group-ring projectivity

Prove: for normal neat tame levels `K₁^p ⊂ K₂^p` with `Δ = K₂^p/K₁^p`, `𝓜_{w,K₁^p}` is finite projective over `Λ[Δ]`, and pullback and trace give `𝓜_{w,K₂^p} ≅ 𝓜_{w,K₁^p}^Δ` and `(𝓜_{w,K₁^p})_Δ ≅ 𝓜_{w,K₂^p}`; p may divide `|Δ|` (BCGP25 Theorem 7.3.1(5), p. 164; Lemma 7.3.2, p. 165).

*Needs:* §9.2; gap:tame-boundary-stabilizers; DeformationAndDerivedPatchingAlgebra §5.9.

**Checks.**

- For `Δ = ℤ/p`, invariants are not a direct factor of a general module (the regular representation of `𝔽_p[ℤ/p]` has invariants the line of the norm element, not a summand); projectivity over `Λ[Δ]` is what makes invariants and coinvariants agree.
- The residual test of DeformationAndDerivedPatchingAlgebra §5.9 is over a Sylow p-subgroup of Δ.
- For `p ∤ |Δ|` the statement reduces to taking a direct factor.

### 9.7 Fixed central character

Let `Λ_{GSp₄,ℚ} = O[[(ℤ_p^×(p))²]]` and `ψ(z) = diag(χ₁(z), χ₂(z), z^{−1}χ₂(z)^{−1}, z^{−1}χ₁(z)^{−1})`. Prove: there is a unique algebra map `f : ℤ_p[[T(ℤ_p)]] → Λ_{GSp₄,ℚ}` with `f ∘ χ^un ρν^{−3/2} = ψ`, the half-integral notation being read through the identification `Hom(T(R), S^×) = Hom(R^×, T̂(S))` for split tori (BCGP25 Lemmas 7.3.5–7.3.6, p. 166). Choose a prime `r > 5`, `r ≠ p`, with `r ≢ 1 mod p` when p is odd and `r ≢ 1 mod 4` when `p = 2`, and level `Iw₁(r)` at r. Prove: for compatible tame levels with r-component `Iw₁(r)`, the modules `(𝓜_{w,K₁^p} ⊗ Λ_{GSp₄,ℚ})^{|·|²}` on which the centre acts by `|·|²` are finite projective over `Λ_{GSp₄,ℚ}[Z K₂^p/Z K₁^p]` (BCGP25 Lemma 7.3.8, p. 167, and the choice of r before it; Remark 7.3.7, p. 167).

*Needs:* §9.6; §9.5; PadicMeasuresIwasawaAlgebras §1.7.

**Checks.**

- At `p = 2` take `r = 7`: `r > 5`, `r ≡ 3 mod 4`, and `(𝔽₇^×)/{±1}` has odd order 3, so its invariants are a direct factor.
- At `p = 3`, `r = 7` fails (`7 ≡ 1 mod 3`), while `r = 11` works and `(𝔽₁₁^×)/{±1}` has order 5, prime to 3.
- Read literally, the odd-prime condition `r ≢ 1 mod p` at `p = 2` has no solution, since every odd prime is `1 mod 2`; the conditions are by cases.

### Examples

At `p = 2`, the four modules are projective over `O[[T(ℤ₂)]]`, whose finite part `T(ℤ₂)_tors` is a 2-group; the length-zero and length-three modules are dual, and their specialization at `ν = (0, −2)` gives ordinary cuspidal `H⁰` of weight `(5, 3)` and ordinary `H³` of weight `(0, −2)`.

### Dependencies

DeformationAndDerivedPatchingAlgebra §5.9, §7.1, §7.3; HigherHidaAndColemanTheory §3.7, §4.5, §4.6, §4.8, §4.9, §5.5, §8.3, §8.5, §9.1; PadicMeasuresIwasawaAlgebras §1.1, §1.7; gap:tame-boundary-stabilizers.

## Downstream consumers

Siegel and Hilbert–Siegel modularity lifting consume the Hilbert family complexes and their control (Layer 4), the doubling injection and the two refinements (Layer 5), the one-place comparison (Layer 6), the four projective modules with duality, tame group-ring projectivity and fixed central character (Layer 9), and de Rham ordinary classicality in weight (2,2) (Layer 8). Classicality on PEL varieties (Layer 2) is consumed wherever overconvergent eigenforms on unitary or symplectic PEL varieties are shown classical. Each consumer specifies its Hecke localization, support variant, p-normalization and character convention.

## Worked examples

- The modular curve is the common degenerate case of the first two layers: `n = 1`, `δ ∈ [0, 1]`, `c = k`, and §2.8 is Coleman's bound `v_p(α) < k − 1` for the standard `U_p`; the dimension-one route §2.9 applies.
- For the Siegel threefold at Iwahori level with `κ = (6, 6)`: `n = 3`, `c = 6`, slopes `< 3` are classical; with `κ = (6, 3)`, `c = 3` and no slope is admitted.
- The singular weight `Ω(k, 2)` has spherical scalar `p^{3−2} = p`, and Klingen extension threshold `k + 1` (HigherHidaAndColemanTheory §9.7); at `k = 0` it is 1.
- The companion operator with `T = 5`, `U = 6` sends `(2, 3)` to `(28, −2)`; its eigenvalues 2 and 3 give doubling images `(1 − 3U_Iw^{−1})f` and `(1 − 2U_Iw^{−1})f`.
- At `λ = (1, 1; 2)` the four Sen values are `−2, −2, −3, −3`, the repeated value −2 sits on `Gr³ ⊕ Gr²` and its nilpotent part is the Cousin map up to a nonzero scalar.

## References

- **BPS.** Stéphane Bijakowski, Vincent Pilloni and Benoît Stroh, *Classicité de formes modulaires surconvergentes*, Annals of Mathematics 183 (2016), no. 3, 975–1014, DOI 10.4007/annals.2016.183.3.5. Locators are statement numbers, which agree with the published version, and page numbers of the HAL deposit hal-01409534.
- **P20.** Vincent Pilloni, *Higher coherent cohomology and p-adic modular forms of singular weights*, Duke Mathematical Journal 169 (2020), no. 9, 1647–1807, DOI 10.1215/00127094-2019-0075. Locators use the author PDF dated 17 June 2019 (113 pages).
- **BCGP21.** George Boxer, Frank Calegari, Toby Gee and Vincent Pilloni, *Abelian surfaces over totally real fields are potentially modular*, Publ. Math. IHÉS 134 (2021), 153–501, DOI 10.1007/s10240-021-00128-2. Locators use the printed pages of arXiv:1812.09269v3.
- **BCGP25.** George Boxer, Frank Calegari, Toby Gee and Vincent Pilloni, *Modularity theorems for abelian surfaces*, arXiv:2502.20645v1 (2025). Locators use its printed pages.
- **BP26.** George Boxer and Vincent Pilloni, *Higher Hida theory for Siegel modular forms*, Inventiones mathematicae 244 (2026), 45–141, DOI 10.1007/s00222-025-01393-2; author version. Its results enter through HigherHidaAndColemanTheory and BCGP25 §7.3.

### Source issues and conventions

The statements above use the following corrections, each in this roadmap's own words.

- **BPS Lemma 4.4.3 (HAL p. 24).** The quasi-compactness argument uses the product map `B_k → X^k` as if finite étale; it is not, since source and target have different dimensions for `k > 1`. Each coordinate quotient map is used separately, which suffices (§2.3).
- **BPS Lemma 4.4.5 (HAL p. 25).** Multiplying the degree lower bound by the terminal weight requires `c_i ≥ 0`; the region of §2.1 forces `c_i > 0` (§2.1, §2.5).
- **BPS §§4.5–5.1 (HAL pp. 27–30).** A half-open interval of valuations is not a quasi-compact domain; the continuation exhausts it by closed rational boxes (§1.4, §2.7).
- **P20 Proposition 13.3.3.1 (p. 90).** The printed diagram intertwines U with `p^{−k−1}U`; the thresholds `k − 2` and `k + 1` of Corollary 13.3.3.1 follow from the opposite direction `D^{k+1}U_source = p^{k+1}U_target D^{k+1}`, forced by differentiating `f(pz)`. The same holds for BCGP21 §6.4 (p. 154), used in §6.4.
- **P20 Corollary 14.6.2, proof (p. 99).** The displayed continuation polynomial omits a coefficient in its linear term; the polynomial inverse `Q = −(P − P(0))/(X P(0))` is used (§6.5).
- **P20 §15.2.2 and proof of Theorem 15.2.1 (pp. 108–109).** The high-weight specialization has negative first coordinate `−k − 1`, and a witness is needed in every component of `Spec Λ₁`, including the full local algebra at `p = 2` (§3.5).
- **BCGP21 Proposition 4.6.19, proof (pp. 113–114).** The simultaneous-powers recursion fails for two parameters (`n²` against `(n−1)² + 1`); the dévissage is one exponent at a time (§4.6).
- **BCGP21 Proposition 4.4.3 (p. 99).** Direct-factor descent of deck invariants needs `p ∤ |Δ|`, which neatness does not imply; §4.2 keeps that hypothesis for the common-similitude group.
- **BCGP21 Theorem 6.6.4, proof (p. 167).** The two dimension defects are those of the actual restriction map r, and `χ(source) − χ(target) = −a − b` forces both to vanish (§6.7).
- **BCGP21 §6.5.1 (p. 154).** Finite flat degrees are computed with the untruncated determinant valuation before passing to bounded Hasse coordinates (§6.5).
- **BCGP25 Remark 4.10.7 (p. 107).** The degree-zero piece has weight `(2, 2; −w)`, as in §4.10.8 (§8.1).
- **BCGP25 Proposition 3.6.15, proof (pp. 66–67).** Injectivity of `(x+1)∂_x + 1` on all analytic germs fails, the germ `1/(1+x)` being in its kernel; the comparison must be shown nonzero on the actual constrained fibre (§8.3). No counterexample to the proposition is claimed.
- **BCGP25, choice of r before Lemma 7.3.8 (p. 167).** The conditions on r are read by cases: `r ≢ 1 mod p` for p odd and `r ≢ 1 mod 4` for `p = 2` (§9.7).
