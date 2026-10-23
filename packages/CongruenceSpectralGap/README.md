# Roadmap: automorphic spectral theory and trace distributions, Part II: the congruence spectral gap

**Summary.** Build the curvature −1 hyperbolic quotient energy and its positive spectral bottom for every congruence subgroup of SL₂(ℤ), then prove λ′₁≥21/100. The analytic endpoint is the Luo–Rudnick–Sarnak bound |Re μⱼ|≤1/2−1/(m²+1) for unitary cuspidal GLₘ over ℚ with O(m)-spherical real component. Its proof uses the complete even prime-twist first moment, including all ramified self-pair coefficients, an exact Gauss-power identity and the general hyper-Kloosterman estimate. The exceptional GL₂ dictionary and the spherical cuspidal adjoint GL₃ lift turn that bound into 21/100; the mean-zero Rayleigh inequality and constant metric rescaling are the geometric exports (lrs95, Theorems 1.1–1.2, pp.387–390, Proposition 3.1, pp.395–399).

## Scope and ownership

This is Part II of TauCetiRoadmap.AutomorphicSpectralTheory. The base roadmap stops at automorphic spectral decomposition, trace distributions and its modular spectral realizations (§§0.6–0.7, 1.16a and 4.3–4.8); this part proves the parameter and congruence gap estimates by prime twisting. It owns the arbitrary-congruence quotient-measure adapter, complex mean-zero restriction, identification of the positive Rayleigh bottom with the clipped small spectrum, exceptional archimedean and adjoint specialization, Mellin cutoffs, finite-character averages and the LRS contradiction. The Laplacian target below extends the base's Γ₀(N) realization to arbitrary principal levels and intermediate subgroups, and proves agreement on Γ₀(N).

The following objects are supplied once and consumed by section.

- The congruence predicate and finite-index implication, orbit quotient, fundamental-domain measure independence, complex L², partial linear maps, Mellin transforms, gamma factor and finite characters are already in the library; their exact declarations are in the supplier contracts. No replacement carriers or independent orthogonality theorem for all characters are built here.
- TauCetiRoadmap.FuchsianOrbifolds Layers 0–3 owns the effective projective action, elliptic quotient charts, covolume and cusp coordinates. The upstairs volume comparison is already in the library as `UpperHalfPlane.riemannianVolume_eq_volume`.
- TauCetiRoadmap.DifferentialGeometry Layer 12 owns gradients, volume density and Green identities. TauCetiRoadmap.PDE owns local weak derivatives and Sobolev energy. Their supplied local objects are used to prove quotient density and closability.
- TauCetiRoadmap.OperatorTheory/SelfAdjointSpectralTheory SA-C and SA-E01–SA-E14 owns unbounded self-adjoint spectral calculus. TauCetiRoadmap.UnboundedOperators UO-D06 owns closed-form representation and Friedrichs extension; §§0.6–0.7 of TauCetiRoadmap.AutomorphicSpectralTheory owns its automorphic transport. The abstract representation theorem is not a target of this part.
- TauCetiRoadmap.AutomorphicSpectralTheory §§1.16 and 1.16a owns the differential expression and Γ₀(N) operator; §§4.3–4.4 and 4.8 owns spectral orthosums, residual spaces and modular Eisenstein expansions. This part compares those objects with the arbitrary-congruence operator instead of reconstructing generic spectral decomposition.
- TauCetiRoadmap.AutomorphicFormsOnReductiveGroups §§2.5–2.7, 3.1 and 3.4–3.5 owns local parameters, generic unitary classification, classical comparison and representation factorization. Cuspidal carriers and their discrete constituent decomposition are stated by TauCetiRoadmap.ArithmeticLocallySymmetricSpaces ALS.F.6. TauCetiRoadmap.GlobalNumberFields Layer 9 owns the unique real shift and unitary part of a Hecke character.
- TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors AL.1–AL.3 owns local and global factors, continuation, functional equations, genericity, self-pair positivity and character transport. Its exact extra contracts below retain ramified places. TauCetiRoadmap.GL2AutomorphicRepresentationsAndTransfer §R17.4.13, adjoint-lift, owns the Gelbart–Jacquet lift, its local compatibility and self-twist branch, including the highly ramified converse and metaplectic proof inputs of R17.4. No second lift or converse is constructed.
- TauCetiRoadmap.DeligneWeightsAndPurity §§7.12 and DWP.10 supplies the finite-field trace and weight theory. This part owns the raw all-rank hyper-Kloosterman sum and its numerical Deligne bound (§§4.2a–4.2b), together with its Kloosterman sheaf realization. TauCetiRoadmap.EtaleCohomologyFoundations F.0–F.6 and F.10 supplies the constructible and adic direct-image, base-change, duality and trace carriers. Rigid realizations, differential equations and moment motives belong to downstream roadmaps.
- The full Wiener–Ikehara theorem and qualitative prime-ideal theorem are already in the library. TauCetiRoadmap.ArithmeticDirichletSeries Layer 6 supplies Abel summation; TauCetiRoadmap.AnalyticNumberTheoryPartI §3.26 supplies the uniform divisor subpower estimate. Prime counting and divisor bounds are not reproved.

The arithmetic applications to progression Kloosterman sums, prime geodesics, finite-place and number-field parameter refinements, and higher symmetric-power improvements do not enter this part. Independent conformal-area and modular area/index results belong to consumers.

## Conventions

Fix Γ≤SL₂(ℤ) with `CongruenceSubgroup.IsCongruenceSubgroup Γ`, meaning Γ(N)≤Γ for some natural N≠0. Work with its effective projective image on ℍ and the orbit quotient XΓ. The action kernel is Γ∩{±I}; it is removed before applying a fundamental-domain theorem. In particular Γ(1) and Γ(2) have areas π/3 and 2π. Level N=0 is excluded, and finite index alone is not the congruence hypothesis (Mathlib `CongruenceSubgroup.IsCongruenceSubgroup`; FuchsianOrbifolds Layers 0–3).

The metric is ds²=(dx²+dy²)/y², curvature −1, dA=dxdy/y² and the positive differential expression is Δ=−y²(∂ₓ²+∂ᵧ²). It is the negative of the div-grad Laplacian. Thus Δ1=0 and Δy²=−2y²; the latter is a local expression test, not a claim that y² is a quotient L² vector. At a cusp Δyˢ=s(1−s)yˢ, so s=1/2+it gives 1/4+t². Smoothness at an elliptic point means a smooth invariant lift in its finite quotient chart. Cusps remain complete finite-area ends, with no imposed boundary trace condition (FuchsianOrbifolds Layers 1 and 3; DifferentialGeometry Layer 12; AutomorphicSpectralTheory §1.16a).

Use the native complex L² carrier with almost-everywhere equality and inner product conjugate-linear in the first slot. The closed form is q(u,v)=∫⟨∇u,∇v⟩dμΓ, with real diagonal q[u]=Re q(u,u)=∫(|∂ₓu|²+|∂ᵧu|²)dxdy; inequalities involving q(u,u) mean this real value. In particular q(iu,iu)=q(u,u). Remove the whole complex constant line by the complex integral, so neither 1 nor i is mean zero. The integral bound is |∫u|≤μΓ(XΓ)^(1/2)‖u‖₂. Operators are partial complex-linear maps with their actual domains; a generic partial map does not assert density, closedness or self-adjointness. All geometric spaces are separable complex Hilbert spaces on the second-countable finite-area quotient; finite character sets are small finite types, with no universe enlargement implicit in an average (Mathlib `MeasureTheory.Lp`; teschl, §2.3, pp.70–72 and §4.3, p.119, teschl line 2960 and line 5044).

For the analytic layers π is unitary cuspidal on GLₘ(𝔸ℚ), m≥2, π∞ is O(m)-spherical and L∞(s,π)=∏ⱼΓℝ(s−μⱼ). Put d=m², β₀=2 maxⱼ Re μⱼ∈[0,1), A(s)=∏ⱼ,ₖΓℝ(s−μⱼ−conj μₖ), and G(s)=A(1−s)/A(s) as a meromorphic ratio. Genericity is proved from global Whittaker factorization before generic unitary classification is used. The exceptional GL₂ component initially has only SO(2)-weight zero and may have either common sign parity; its adjoint is O(3)-spherical. For r=1/5 its parameter multiset is {2/5,0,−2/5}, and λ=1/4−r²=21/100 (lrs95, §1 pp.389–390; AutomorphicFormsOnReductiveGroups §2.6; GL2AutomorphicRepresentationsAndTransfer R17.4.13).

The standard conductor fπ and self-pair conductor f are positive integers. Keep them distinct. Since an unramified πq has unramified self-pair, q∤fπ implies q∤f. Thus f, q and fq^d are nonzero in every analytic denominator. A prime twist has q>2, q∤fπ and χ nonprincipal even modulo q, extended by zero on nonunits. At q it is primitive. Set τ(χ)=Σₐχ(a)exp(2πia/q), with the positive exponential. Write εself(s)=τπ f⁻ˢ; then |τπ|=f^(1/2), and τπ f^(−1/2) is the unit root number. Positive real bases use the real logarithm in complex powers. Series start at n=1; no expression uses 0 to a negative or complex power. The Fourier sign witness is τ(1)=−1 for prime q, since Σₐexp(2πia/q)=0. For q=3, exp(2πi/3)=−1/2+i√3/2, fixing the sign even though even-character averages alone cannot distinguish the two exponential conventions (Mathlib `ZMod.stdAddChar`; lrs95, Lemma 2.1 and (3.18)–(3.20)).

Use φ for the smooth cutoff, reserving f for the conductor. Its support is a compact subset of (0,∞), and its normalization is ∫φ(y)dy/y=1, equivalently mellin(φ,0)=1. The inverse Mellin real-line convention has prefactor 1/(2π), since ds=i dt. Under y↦1/y the Mellin parameter changes from s to −s; support [1,2] changes to [1/2,1]. Gamma poles are statements about meromorphic orders, never about a totalized value: Γℝ(0)=0 in Lean but the punctured limit sΓℝ(s)=2 (Mathlib `mellin`, `mellinInv`, `mellin_comp_inv`, `Complex.Gammaℝ_eq_zero_iff` and `Complex.Gammaℝ_residue_zero`; lrs95, (3.6)–(3.7)).

## Exact supplier contracts

### From Mathlib

Consume the following pinned declarations and their stated hypotheses.

- `CongruenceSubgroup.IsCongruenceSubgroup` and `CongruenceSubgroup.IsCongruenceSubgroup.finiteIndex`, in `Mathlib/NumberTheory/ModularForms/CongruenceSubgroups.lean`: the nonzero-level predicate and its finite-index theorem.
- `MulAction.orbitRel.Quotient`, in `Mathlib/GroupTheory/GroupAction/Defs.lean`, and `MulAction.toPermHom`, in `Mathlib/Algebra/Group/Action/End.lean`: the orbit carrier and effective permutation image. `UpperHalfPlane.volume_def`, in `Mathlib/Analysis/Complex/UpperHalfPlane/Measure.lean`: the density y⁻².
- `MeasureTheory.IsFundamentalDomain.quotientMeasure_eq`, in `Mathlib/MeasureTheory/Group/FundamentalDomain.lean`: equality of the pushforward restricted measures for two fundamental domains of a countable group acting measurably and preserving the measure. This theorem requires actual fundamental domains; it does not make a non-effective action free almost everywhere.
- `MeasureTheory.Lp`, in `Mathlib/MeasureTheory/Function/LpSpace/Basic.lean`, at p=2: the subgroup of almost-everywhere measurable classes with finite Lp norm. It contains neither an independently selected measure nor an operator. `LinearPMap`, in `Mathlib/LinearAlgebra/LinearPMap.lean`, contains a submodule domain and a linear map on it; density and adjoint properties are additional hypotheses.
- `mellin`, `mellinInv`, `mellin_comp_inv`, in `Mathlib/Analysis/MellinTransform.lean`, and `mellinInv_mellin_eq`, in `Mathlib/Analysis/MellinInversion.lean`: inversion at x>0 in a complete complex normed space requires Mellin convergence on the chosen line, vertical integrability of the transform, and continuity at x. The cutoff proof establishes each hypothesis.
- `Complex.Gammaℝ`, `Complex.Gammaℝ_eq_zero_iff`, `Complex.Gammaℝ_residue_zero`, in `Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean`: the totalized real gamma factor and its punctured residue convention.
- `DirichletCharacter.sum_characters_eq`, in `Mathlib/NumberTheory/DirichletCharacter/Orthogonality.lean`: full character orthogonality over a nonzero modulus and an integral domain with enough roots of unity. Apply it over ℂ before projecting to even nonprincipal characters. `gaussSum`, in `Mathlib/NumberTheory/GaussSum.lean`, and `ZMod.stdAddChar`, `ZMod.isPrimitive_stdAddChar`, in `Mathlib/Analysis/SpecialFunctions/Complex/CircleAddChar.lean`, fix the raw finite sum and its positive standard additive character.

### From Tau Ceti

`UpperHalfPlane.riemannianVolume_eq_volume`, in `TauCeti/Analysis/Complex/UpperHalfPlane/PoincareMetric.lean`, compares the actual Poincaré metric volume with the Mathlib measure. `IsSelfAdjoint.isFormalAdjoint` and `LinearPMap.IsFormalAdjoint.im_inner_self_apply`, in `TauCeti/Analysis/InnerProductSpace/LinearPMap/SelfAdjoint.lean`, require the indicated inner-product and completeness hypotheses and give the formal pairing and vanishing imaginary part, not construction of the quotient operator. `TauCeti.PDE.energyFormH1` and `TauCeti.PDE.energyFormH1L0` in `TauCeti/Analysis/PDE/EnergyForm/Sobolev.lean` provide local real Euclidean energies, which are complexified and descended chartwise here.

`TauCeti.LSeries.wienerIkehara`, in `TauCeti/NumberTheory/LSeries/WienerIkehara/SharpCutoff.lean`, requires nonnegative real coefficients, an actual Dirichlet-series sum F on Re s>1 and a continuous extension of F(s)−c/(s−1) to Re s≥1. Its conclusion is x⁻¹Σ₁≤ₙ≤ₓb(n)→c, with the inclusive cutoff. `TauCeti.primeCount_univ_isEquivalent_div_log`, in `TauCeti/NumberTheory/ArithmeticDirichletSeries/Prime/PrimeIdealTheorem.lean`, gives πK(x)∼x/log x for a number field K. At K=ℚ identify prime ideals with rational primes via the norm and apply Abel summation; this gives ΣQ<q≤2Q q∼(3/2)Q²/log Q.

### From TauCetiRoadmap.FuchsianOrbifolds

Layers 0–1 supply the faithful projective action, proper discontinuity, finite elliptic isotropy and quotient charts. Layer 2 supplies measurable domains, covolume independence and the level-one area. Layer 3 supplies cusp coordinates, their actual widths, finitely many ends and compact truncated complements. Use the same orbit carrier before and after passing to the effective image. No coarse-coordinate smooth metric is assumed at elliptic points.

### From TauCetiRoadmap.DifferentialGeometry and TauCetiRoadmap.PDE

DifferentialGeometry Layer 12 supplies gradient, div-grad Laplacian, Riemannian volume and Green identities. PDE's weak-derivative and Sobolev energy targets supply the local testing and completion facts used in invariant charts. The compact-support real Dirichlet problem is a local input; the quotient's global form domain is obtained by cusp cutoff and chart descent.

### From TauCetiRoadmap.OperatorTheory/SelfAdjointSpectralTheory and TauCetiRoadmap.UnboundedOperators

SelfAdjointSpectralTheory SA-C supplies actual partial-operator domains and adjoints; SA-E01–SA-E14 supplies the unbounded spectral measure, functional calculus and spectral Rayleigh comparison. UnboundedOperators UO-D06 supplies the densely defined closed semibounded Hermitian form, its injective dense Hilbert-domain inclusion, the unique represented self-adjoint partial operator, square-root domain and form identity, and Friedrichs realization without a compactness hypothesis (teschl, Theorems 2.12–2.13, pp.70–72; teschl line 2914 and line 2960).

What UnboundedOperators must provide (gap:form-rayleigh-core): For a densely defined closed nonnegative complex Hermitian form, provide the operator-domain form core and equality of the operator-domain, form-domain and spectral Rayleigh infima on a nonzero reducing orthogonal complement.

### From TauCetiRoadmap.AutomorphicSpectralTheory

Sections 0.6–0.7 transport supplied self-adjoint calculus and its actual domains to the automorphic realization. Sections 1.16–1.16a supply the positive hyperbolic expression, Γ₀(N) Friedrichs operator, cusp Fourier modes and elliptic-chart regularity. Sections 4.3–4.4 supply the spectral orthosum and residual construction; §4.8 supplies the modular expansion with one family per cusp. The exact arbitrary-level specialization requires the following additional contract; the displayed one-cusp formula is used only at level one.

What AutomorphicSpectralTheory must provide (gap:all-level-spectral-realization): Extend the modular spectral realization to every principal congruence level and every intermediate congruence subgroup, compatibly with its quotient Friedrichs operator, with one scattering channel per cusp, absolutely continuous spectrum [1/4,∞), no singular continuous spectrum, finite small spectrum and residual space exactly the constants.

### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups and TauCetiRoadmap.ArithmeticLocallySymmetricSpaces

AutomorphicFormsOnReductiveGroups §§2.5–2.7 supplies archimedean Weil parameters, the generic unitary classification, SO(2) and O(2) types and their smooth globalizations; §3.1 supplies classical component comparison, §§3.4–3.5 restricted tensor factorization. ArithmeticLocallySymmetricSpaces ALS.F.6 supplies actual cuspidal automorphic representations, rapid decay, the discrete unitary constituent decomposition and finite multiplicity. The latter theorem is required to extract a constituent from a classical eigenfunction; occurrence does not follow from the representation definition alone.

What AutomorphicFormsOnReductiveGroups must provide (gap:principal-level-classical-constituents): Provide the norm-compatible principal-level classical–adelic comparison and passage to invariants of each intermediate congruence subgroup, intertwining the weight-zero Casimir with the positive hyperbolic Laplacian and the cuspidal constituent extraction of ArithmeticLocallySymmetricSpaces ALS.F.6.

### From TauCetiRoadmap.GlobalNumberFields

Layer 9, Hecke and ray class characters, supplies `HeckeCharacter.shift` and `HeckeCharacter.unitaryPart`, including uniqueness of the real norm exponent. Layer 10 supplies real and complex character types. For a quadratic extension K/ℚ the norm of a scalar ℚ-idele in K is its ℚ-norm squared; therefore a norm shift σ in an inducing character gives absolute central exponent 2σ. Unitary central character forces σ=0. A purely imaginary exponent belongs to the unitary part.

### From TauCetiRoadmap.GL2AutomorphicRepresentationsAndTransfer

R17.4.13, adjoint-lift, supplies Ad(π)=Sym²(π)⊗ωπ⁻¹, self-duality, trivial central character, its local adjoint parameter, and cuspidality precisely in the absence of a nontrivial character self-twist. Its self-twist branch supplies quadratic automorphic induction and the isobaric decomposition. Import all R17.4 proof prerequisites along with the theorem (gj78, Definition 3.1.3 and Proposition 3.2, pp.485–486, §3.7, p.491, Theorem 9.3 and Remark 9.9, pp.534–541; gj78 line 528, line 538 and line 721).

### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors

Use AL.3, Global Whittaker factorization, for local genericity. The named AL.3 sections Rankin–Selberg local L-factor, Nonarchimedean factors under normalized induction, Continuation and the Rankin–Selberg pole criterion, The global Rankin–Selberg functional equation, and Rankin–Selberg nonvanishing on the boundary supply the local product, global continuation, poles, equation and regular boundary factors. AL.1, Canonical archimedean factors, supplies the gamma parameters and normalization. AL.3, L-function data and derived products, supplies the canonical completed-function strip bounds. These completed bounds are kept distinct from finite-function polynomial bounds.

What AutomorphicLFunctionsAndLocalFactors must provide (gap:all-prime-self-pair-positivity): For unitary cuspidal GL_m over ℚ provide nonnegative full finite self-pair coefficients including ramified primes, coefficient one at n=1, a positive simple residue at s=1 and continuous pole-subtracted boundary values on Re(s)≥1.

What AutomorphicLFunctionsAndLocalFactors must provide (gap:self-pair-local-character-transport): Provide unramified-character transport of every local self-pair L and epsilon factor including ramified representations, and at an unramified rank-m prime the primitive conductor-q twist formulas L=1 and epsilon=τ(χ)^(m²)q^(−m²s) in the stated positive Gauss convention.

What AutomorphicLFunctionsAndLocalFactors must provide (gap:complex-gamma-strip-estimates): Provide zero-free meromorphic Gamma factors, their pole orders and complex Stirling estimates on finite vertical strips away from poles, including polynomial growth of the balanced ratio A(1−s)/A(s).

What AutomorphicLFunctionsAndLocalFactors must provide (gap:finite-rs-polynomial-strips): For each fixed entire prime-twisted finite Rankin–Selberg function provide polynomial growth on every finite vertical strip by finite-order continuation and Phragmén–Lindelöf, with constants permitted to depend on the twist.

### From TauCetiRoadmap.DeligneWeightsAndPurity and TauCetiRoadmap.EtaleCohomologyFoundations

DeligneWeightsAndPurity §§7.12 and DWP.10 supply compact-support weight/trace estimates and their finite-field applications. EtaleCohomologyFoundations F.0–F.6 and F.10.1–F.10.2b supply constructible rational ℓ-adic sheaves, derived compact direct image, base change, the Künneth and trace comparisons and geometric Frobenius. For coefficients use ℓ≠p and a finite extension E of ℚ containing the additive character values, with an ℓ-adic place λ and a specified complex embedding; the trace and weight comparisons retain those embeddings.

What DeligneWeightsAndPurity must provide (gap:additive-character-sheaf-weight): For every finite field of characteristic p and every nontrivial additive character valued in a cyclotomic coefficient field, provide the rank-one Artin–Schreier sheaf on the affine line, pure of weight zero, whose geometric-Frobenius trace on every finite extension is the character composed with field trace, with tensor products corresponding to addition of phases.

### From TauCetiRoadmap.ArithmeticDirichletSeries and TauCetiRoadmap.AnalyticNumberTheoryPartI

ArithmeticDirichletSeries Layer 6, Abel and Perron summation, supplies partial summation with inclusive endpoints and differentiable smooth weights. AnalyticNumberTheoryPartI §3.26, Uniform divisor subpower bound, supplies: for every ε>0 there is Cε≥1 such that τ(n)≤Cε n^ε for all n≥1. This has no squarefree or good-prime restriction. Apply it only to the nonzero integers n−1 and n+1 after separating n=1; τ(0) is not used to count divisors of zero.

## How to read the build

Layer 0 constructs the quotient L² adapter and compares its positive spectral bottom with the supplied spectral realization; within it the spectral description precedes the upper bound 1/4 for that bottom. Layer 1 passes exceptional classical eigenfunctions to a cuspidal spherical adjoint. Layers 2–4 develop the all-prime self-pair, its exact twisted equation, cutoff kernels and even prime-twist moment. Layer 5 obtains the parameter inequality by contradiction and uses Layer 1 to obtain the geometric gap, form inequality and metric scaling. Each *Needs* clause separates statement carriers from the route inputs, so an alternative proof has the same mathematical acceptance criterion.

## Layer 0: Congruence quotient and positive spectrum

Construct the measure before the operator. Every quotient object in this layer uses the effective action and invariant elliptic charts. The upper bound 1/4 for the positive bottom uses §0.6; the infimum definition and nonnegativity do not.

### 0.1 Hyperbolic quotient measure

For the quotient measurable space XΓ=Γ\ℍ, define μΓ as p₍*₎(dA restricted to F), where p:ℍ→XΓ and F is a measurable fundamental domain for the effective projective image. Prove independence of F and of the proof of congruence, and prove 0<μΓ(XΓ)<∞.

A route to the result is as follows. Use the Fuchsian effective action, fundamental domain and covolume contracts; the kernel ±I cannot be retained in the acting group of IsFundamentalDomain. Identify the effective orbit quotient with the raw Γ orbit quotient and transport the quotient measure. Apply the fundamental-domain pushforward equality to show independence. Finite index from IsCongruenceSubgroup.finiteIndex gives positive finite covolume; level one has mass π/3.

The API proves the following facts.

- For any IsFundamentalDomain of the effective permutation image, μΓ is the map of volume restricted to that domain.
- μΓ(XΓ)<∞.
- Changing the proof of IsCongruenceSubgroup does not change μΓ.

**Checks.**

- For Γ(1), μΓ(XΓ).toReal=π/3. Counting the central kernel twice would give 2π/3.
- μΓ(XΓ)>0 for every allowed Γ. The zero measure fails positivity.
- Two effective measurable fundamental domains have equal hyperbolic area. The areas agree; an arbitrary overlapping domain is not a fundamental domain.
- For Γ(2), μΓ(XΓ).toReal=2π; its effective index is six, rather than the level-one area. A level-independent normalization would give π/3 instead of 2π.

(FuchsianOrbifolds Layers 0 and 2, effective quotient and covolume.)

*Needs:* `CongruenceSubgroup.IsCongruenceSubgroup.finiteIndex`; `MulAction.orbitRel.Quotient`; `MulAction.toPermHom`; `UpperHalfPlane.volume_def`; `MeasureTheory.IsFundamentalDomain.quotientMeasure_eq`; FuchsianOrbifolds Layers 0 and 2.

### 0.2 Positive orbifold Laplacian

For every congruence Γ, construct the densely defined nonnegative self-adjoint Friedrichs realization ΔΓ of −y²(∂ₓ²+∂ᵧ²) on HΓ=L²(XΓ,μΓ). Close the energy initially defined on compactly supported orbifold-smooth functions, using invariant smooth lifts in each elliptic chart. Its kernel is exactly the complex constants. This is the arbitrary-congruence extension of the Γ₀(N) operator, with a canonical agreement comparison on that family.

A route to the result is as follows. Import ordinary gradient, volume and Green identity from DifferentialGeometry, and local weak derivatives from PDE/Sobolev; descend through the Fuchsian isometric orbifold charts. Density uses a locally finite partition and cusp truncations. Closability follows by testing a candidate gradient limit against compactly supported vector fields in each chart; finite isotropy averaging preserves the test core. Apply the generic closed-form representation/Friedrichs extension, then the LinearPMap self-adjoint API. Cut off constants far into each cusp with energy tending to zero. Zero energy forces local constancy and connectedness forces a single constant. A nonconstant orbifold-smooth bump in a free chart belongs to the initial differential-operator domain and has nonzero Laplacian, by the kernel characterization; this supplies the nontriviality test.

The API proves the following facts.

- The partial complex-linear map equals its adjoint.
- Its operator domain is dense in L².
- For every u in its domain, Re⟨u,Δu⟩≥0.
- For u in the domain, Δu=0 iff u equals a complex constant almost everywhere.

**Checks.**

- Δ0=0. Linearity requires this value.
- The L² class of the constant 1 is in the domain and Δ1=0. This rejects a cusp boundary condition that excludes constants.
- If Δu≠0 then Re⟨u,Δu⟩>0; the opposite sign convention fails. The negative sign convention makes the nonzero quadratic pairing negative.
- For every allowed Γ there is an operator-domain u with Δu≠0; the zero operator fails. The zero operator fails the nonconstant free-chart bump test.

(teschl, §2.3, Theorems 2.12–2.13, pp.70–72; teschl line 2914 and line 2960.)

*Needs:* §0.1; `MeasureTheory.Lp`; `LinearPMap`; Tau Ceti formal-adjoint pairing; FuchsianOrbifolds Layers 1 and 3; DifferentialGeometry Layer 12; PDE local weak derivatives; UnboundedOperators UO-D06; AutomorphicSpectralTheory §§0.6–0.7 and 1.16a.

### 0.3 Mean-zero Hilbert subspace

Define HΓ⁰ as the kernel of the continuous complex-linear functional u↦∫XΓu dμΓ. Prove that it is the closed orthogonal complement of the constant line and reduces ΔΓ, including invariance of the actual operator domain and commutation with the spectral projections.

A route to the result is as follows. Use finite measure and Cauchy–Schwarz to bound the integral by μΓ(XΓ)^(1/2)‖u‖₂. Its continuous complex-linear kernel is closed. Constants lie in the operator kernel, so self-adjointness gives ∫Δu=0 for every u in the domain. The spectral calculus restricts to this orthogonal complement.

The API proves the following facts.

- A vector belongs to HΓ⁰ if and only if its complex integral is zero.
- HΓ⁰ is closed in the L² topology.
- Δu belongs to HΓ⁰ for every operator-domain u.

**Checks.**

- 0 belongs to the mean-zero subspace. The kernel contains zero.
- The almost-everywhere constant 1 does not belong to the mean-zero subspace. The integral is μΓ(XΓ)≠0.
- The almost-everywhere constant i does not belong; taking only a real mean fails. The integral is iμΓ(XΓ)≠0, detecting use of a real-part mean.
- For every allowed Γ there is a nonzero L² vector in the mean-zero subspace; the zero submodule fails. Subtract the mean of a nonconstant compactly supported bump. A nonconstant bump minus its average remains nonzero, excluding the zero subspace.

(teschl, §4.3, Theorem 4.10, pp.118–119; teschl line 5044.)

*Needs:* §§0.1–0.2; `MeasureTheory.Lp`; finite-measure integration; SelfAdjointSpectralTheory SA-E01–SA-E14.

### 0.4 Positive spectral bottom

Define λ′₁(Γ) as inf{Re⟨u,ΔΓu⟩/‖u‖₂² : u∈Dom ΔΓ∩HΓ⁰, u≠0}. Prove that this set is nonempty, bounded below by zero and has the same infimum as the closed-form Rayleigh values. Use §0.6 to prove 0≤λ′₁(Γ)≤1/4; the definition itself uses only the operator and mean-zero subspace.

A route to the result is as follows. Dense operator domain and its constant projection give nonzero mean-zero vectors. Nonnegativity gives a lower bound. Import self-adjoint spectral calculus from OperatorTheory through AutomorphicSpectralTheory §§0.6–0.7. The spectral infimum equals both operator-domain and form-domain Rayleigh infima. Use the all-level GL₂ spectral description to get continuous spectrum beginning at 1/4; this provides Weyl sequences and the upper bound.

The API proves the following facts.

- Equals the infimum of the explicitly displayed nonzero mean-zero operator-domain Rayleigh values.
- 0≤λ′₁(Γ).
- λ′₁(Γ)≤1/4.
- For nonzero u in the operator domain with complex mean zero, λ′₁(Γ)≤Re⟨u,Δu⟩/‖u‖₂².

**Checks.**

- If no nonzero operator-domain eigenvector has eigenvalue in (0,1/4), then λ′₁(Γ)=1/4. The continuous threshold supplies the infimum even when no small eigenvector exists.
- For a nonzero mean-zero operator-domain eigenvector u with real eigenvalue λ, if every nonzero mean-zero operator-domain v has Re⟨v,Δv⟩≥λ‖v‖₂², then λ′₁(Γ)=λ. The eigenvector has quotient λ, and the assumed lower bound gives the reverse inequality.
- For every allowed Γ, 21/100≤λ′₁(Γ); a definition that retains the constant eigenvalue and returns zero fails. Keeping the constant zero eigenvalue would return zero.

(teschl, §4.3, Theorem 4.10, pp.118–119; teschl line 5044.)

*Needs:* §§0.2–0.3 and 0.6; SelfAdjointSpectralTheory SA-E01–SA-E14; UnboundedOperators UO-D06 and gap:form-rayleigh-core; AutomorphicSpectralTheory §4.8 and gap:all-level-spectral-realization.

### 0.5 Clipped eigenvalue convention

For S⊆ℝ define its clipped bottom as inf({1/4}∪S). In geometric use S is the set of eigenvalues in (0,1/4). The inserted threshold makes the empty-set value 1/4. Comparisons with a conditional infimum retain bounded-below hypotheses; a lower comparison supplies such a lower bound itself.

A route to the result is as follows. Use the real conditional complete lattice infimum. In the geometric use the eigenvalues are nonnegative, so the set is nonempty and bounded below. Prove lower and upper comparison APIs with explicit bounded-below hypotheses where the conditional infimum requires them.

The API proves the following facts.

- The clipped bottom of S is the infimum of the nonempty set {1/4}∪S.
- If r∈S and {1/4}∪S is bounded below, its clipped bottom is at most r.
- If c≤1/4 and c≤r for every r∈S, then c is at most the clipped bottom of S.

**Checks.**

- The clipped bottom of ∅ is 1/4. A bare empty infimum would not enforce the threshold.
- The clipped bottom of {21/100} is 21/100. This detects a convention that always returns the threshold.
- The clipped bottom of {1/3} is 1/4, not 1/3. The threshold clips an input lying above it.

(lrs95, Theorem 1.1 p.387 and archimedean discussion pp.389–390.)

*Needs:* real conditional infima; the threshold 1/4.

### 0.6 Congruence spectral description

For every congruence Γ, identify the supplied arbitrary-level spectral realization with ΔΓ. The residual weight-zero L² subspace is exactly the constants; the absolutely continuous spectrum is [1/4,∞), with one Eisenstein channel per cusp and its scattering matrix; there is no singular continuous spectrum. Every spectral value in (0,1/4) is a finite-multiplicity cuspidal eigenvalue, and there are finitely many of them. This comparison uses the all-level supplier contract, including its residual classification.

A route to the result is as follows. Use the supplied spectral orthosum and arbitrary-level scattering and residual classification, then identify the actual domains and actions under the quotient L² comparison. At principal level retain the finite-level action; passing to Γ-invariants gives its cusp channels. The residual input must exclude every positive residual value rather than treating it as cuspidal.

**Checks.**

- For Γ(1) there is one cusp and the constant term is (3/π)∫u; its extension to 1 gives (3/π)(π/3)=1.
- For Γ(2) there are three cusps and area 2π; the constant projection of 1 is (1/(2π))(2π)=1 and there are three continuous channels. A single level-one channel fails.
- For s=1/2+it the cusp eigenvalue is 1/4+t²; at t=0 it is 1/4. A hypothetical positive residual eigenvalue 1/5 violates the constants-only residual contract.

(lrs95, Theorem 1.1 p.387 and §1 pp.389–390.)

*Needs:* §0.2; AutomorphicSpectralTheory §§4.3–4.4 and 4.8; gap:all-level-spectral-realization; AutomorphicLFunctionsAndLocalFactors AL.3 boundary regularity.

### 0.7 Rayleigh and clipped spectrum comparison

For SΓ={λ∈ℝ : 0<λ<1/4 and some nonzero u∈Dom ΔΓ satisfies ΔΓu=λu}, prove λ′₁(Γ)=inf({1/4}∪SΓ). A first positive discrete eigenvalue, when it exists, gives min(λ₁,1/4); absence of a value below 1/4 gives 1/4, without choosing a nonexistent eigenfunction.

A route to the result is as follows. Restrict the spectral calculus to constants-perpendicular L². Apply the spectral description: only finitely many positive discrete values occur below the essential threshold. The lowest spectral value gives the Rayleigh infimum; if the set is empty, approximate the essential bottom.

**Checks.**

- If SΓ=∅, its clipped bottom is 1/4.
- For SΓ={21/100}, the infimum is 21/100; for a model eigenvalue 1/4 alone the open small set is empty and the answer is 1/4.
- The constant eigenvalue 0 is absent from SΓ; inserting it would give zero and contradict the mean-zero restriction.

(teschl, §4.3, Theorem 4.10 p.119; teschl line 5044.)

*Needs:* §§0.3–0.6; SelfAdjointSpectralTheory SA-E01–SA-E14; UnboundedOperators UO-D06 and gap:form-rayleigh-core.

### Examples

At level one the constant projection of u is (3/π)∫u dμ. At level two it is (1/(2π))∫u dμ. Both send 1 to 1, whereas retaining a central multiplicity of two changes the measure and projection normalization. The cusp cutoff χR(y)=χ(y/R), with χ smooth, 0≤χ≤1, χ=1 up to 1 and χ=0 beyond 2, has missing L² mass at most w/R in a cusp of width w and energy (w/R)∫₁²|χ′(t)|²dt; both tend to zero. These explicit values explain why constants enter the energy closure.

### Dependencies

Mathlib congruence, measure, L² and partial-operator APIs; Tau Ceti Poincaré volume, weak derivatives and adjoints; FuchsianOrbifolds Layers 0–3; DifferentialGeometry Layer 12; UnboundedOperators UO-D06; SelfAdjointSpectralTheory SA-C and SA-E01–SA-E14; AutomorphicSpectralTheory §§0.6–0.7, 1.16a and 4.3–4.8.

## Layer 1: Exceptional GL₂ forms and the adjoint

The geometric eigenspace gives SO(2)-weight zero, not a reflection parity. Pass through the actual cuspidal constituent and local-genericity theorems before applying the unitary classification and the adjoint lift.

### 1.1 Exceptional cuspidal dictionary

For allowed Γ and an eigenvalue 0<λ<1/4, a cuspidal GL₂(Aℚ) unitary representation π occurs after passing to principal level and decomposing the finite-level action. Its archimedean component has SO(2)-weight zero and complementary parameter r∈(0,1/2), with λ=1/4−r². A common sign parity on its two real inducing characters is allowed; π∞ need not be O(2)-spherical.

Assume Γ≤SL₂(ℤ) contains Γ(N) for some N≥1; its effective image acts on ℍ. Metric ds²=(dx²+dy²)/y² has curvature −1; all functions are complex-valued. u is a nonzero positive exceptional eigenfunction.

A route to the result is as follows. Apply AutomorphicLFunctionsAndLocalFactors AL.3/global-whittaker-factorization to the cuspidal GLn representation to obtain genericity of every local component before invoking the generic unitary classification. Cuspidality alone is not a definition of genericity. Use Layer 0 residual classification to identify u as cuspidal. Lift u to Γ(N) and apply AutomorphicFormsOnReductiveGroups §3.1 classical comparison at principal level, then extract a cuspidal constituent using ArithmeticLocallySymmetricSpaces ALS.F.6 cuspidal discreteness, not merely the definition of a cuspidal representation. Compute the normalized Casimir on the SO(2)-fixed line using AutomorphicFormsOnReductiveGroups §2.6 real local classification. Write the unitary principal-series characters as sgn^ε|.|^r and sgn^ε|.|^−r after the central norm normalization. Allow both ε=0 and ε=1; the geometric eigenvalue does not force reflection-even parity.

**Checks.**

- At r=1/5, both common parities ε=0,1 give λ=1/4−1/25=21/100. Reflection-even parity cannot be inferred from SO(2)-weight zero.
- At r=0 the eigenvalue is 1/4 and the strict exceptional hypothesis fails; at r=1/2 it is zero and fails again.
- At Γ=Γ(3), passing to the principal-level cover changes no group; taking invariants under any intermediate finite deck subgroup preserves the Casimir eigenvalue. It does not replace the group by Γ₀(3).

(lrs95, §1 pp.389–390, GL₂ eigenvalue and GL₃ lift discussion.)

*Needs:* §0.6; AutomorphicFormsOnReductiveGroups §§2.5–2.7 and 3.1; gap:principal-level-classical-constituents; ArithmeticLocallySymmetricSpaces ALS.F.6; AutomorphicLFunctionsAndLocalFactors AL.3 Global Whittaker factorization.

### 1.2 Monomial archimedean temperance

If π is unitary cuspidal on GL₂(Aℚ) and has a nontrivial character self-twist, then π=AIK/ℚ(θ) for a quadratic field K and a unitary Hecke character θ. Its archimedean parameter is tempered. Therefore a weight-zero complementary component with 0<r<1/2 has no nontrivial self-twist.

Assume π is unitary cuspidal; there is a character η≠1 with π⊗η≃π.

A route to the result is as follows. Import the quadratic self-twist and induction branch of the adjoint-lift contract. A global Hecke character’s positive absolute-value part is a common norm power; the central unitarity of its induction forces this power to be zero. At a split real place induction is the pair of unitary real characters. At a complex place unitary Weil induction is tempered (with the resulting principal/discrete type). The nonzero real exponents of a complementary weight-zero π∞ contradict temperance.

**Checks.**

- For real quadratic induction of |·|^(it₁),|·|^(it₂), both real parts are zero; the positive real exponents ±1/5 cannot occur.
- For imaginary quadratic induction of a unitary character (z/|z|)^k|z|ℂ^(it), its Weil parameter is unitary, hence tempered. A discrete-series gamma shift need not have zero real part; temperedness concerns the Weil representation.
- A real shift σ=1 gives absolute central exponent 2σ=2, which violates unitarity; σ=0 gives exponent zero.

(gj78, §3.7 p.491; Theorem 9.3 p.534 and Remark 9.9 p.541; gj78 line 528, line 538 and line 721; GlobalNumberFields Layers 6, 9 and 10, norm-one compactness, unique real shift and infinity types.)

*Needs:* §1.1; GL2AutomorphicRepresentationsAndTransfer R17.4.13, adjoint-lift; GlobalNumberFields Layers 9–10; AutomorphicFormsOnReductiveGroups §2.5.

### 1.3 Exceptional adjoint parameters

For the exceptional π of Layer 1, Ad(π)=Sym²(π)⊗ωπ⁻¹ is a unitary cuspidal GL₃ representation, O(3)-spherical at infinity, with standard archimedean parameters {2r,0,−2r} in the Γℝ(s−μj) convention. The common sign parity disappears. Its GL₃ parameters, not π’s GL₂ parameters, are used in Theorem 1.2.

Assume π and r are supplied by the exceptional dictionary.

A route to the result is as follows. Use the monomial temperance theorem to exclude nontrivial self-twists; import the exact Gelbart–Jacquet adjoint lift and its cuspidality criterion. At infinity compute the trace-zero endomorphism representation of the rank-two parameter. Ratios of the two characters give |.|^2r,1,|.|^−2r; common sign factors cancel. The resulting spherical component has the required standard gamma factor; central-character removal is essential when ωπ is nontrivial.

**Checks.**

- At r=1/5, the ratios have exponents 2/5,0,−2/5.
- Two signs cancel: (sgn|·|^r)/(sgn|·|^(−r))=|·|^(2r), so either parity gives the same spherical adjoint.
- Twisting a parameter by θ multiplies raw Sym² by θ², while multiplying by the inverse determinant cancels θ²; a nontrivial θ² detects omission of ωπ⁻¹.

(lrs95, §1 pp.389–390 and Theorem 1.2 p.389.)

*Needs:* §§1.1–1.2; GL2AutomorphicRepresentationsAndTransfer R17.4.13, adjoint-lift; AutomorphicFormsOnReductiveGroups §§2.5–2.7; AutomorphicLFunctionsAndLocalFactors AL.1 Canonical archimedean factors.

### Examples

For r=1/5 and either common parity the GL₂ exponents are ±1/5 and the adjoint exponents are 2/5,0,−2/5. On trace-zero endomorphisms, the two off-diagonal basis vectors transform by the two character ratios and the diagonal difference by 1. A common norm twist cancels as well as the common sign. On the principal-level-two cover the effective deck group is S₃; in its regular representation the subspace fixed by a transposition has dimension 3, the full invariant subspace dimension 1 and the whole representation dimension 6. These distinct values test passage to actual intermediate-group invariants in a nonabelian example.

### Dependencies

Layer 0; AutomorphicFormsOnReductiveGroups §§2.5–2.7 and 3.1; ArithmeticLocallySymmetricSpaces ALS.F.6; GlobalNumberFields Layers 9–10; GL2AutomorphicRepresentationsAndTransfer R17.4.13; AutomorphicLFunctionsAndLocalFactors AL.1 and AL.3.

## Layer 2: Self-pair factors and forced zeros

No ramified self-pair factor is discarded. The only good-prime restriction selects the twisting conductor q at which π is unramified; all other primes remain in the finite L-function and its coefficients.

### 2.1 Prime-twist functional equation

Write Lχ(s)=L(s,(π⊗χ)×π̃)=∑n≥1 b(n)χ(n)n⁻ˢ on Re s>1, with self-pair finite coefficients b(n)≥0, b(1)=1 and ∑n≤x b(n)∼cπx for cπ>0. Its completion A(s)Lχ(s), A(s)=∏j,k Γℝ(s−μj−conj μk), extends to an entire function and satisfies the meromorphic identity Lχ(s)=τπ χ(f) τ(χ)^d(fq^d)⁻ˢ G(s)Lχ̄(1−s), where G(s)=A(1−s)/A(s), f is the self-pair conductor and εself(s)=τπ f⁻ˢ. The unit root number is τπ f⁻¹/², not τπ itself. This equation is an identity of meromorphic germs, and is evaluated pointwise only where its factors are regular.

Assume m≥2 and π is unitary cuspidal on GLm(Aℚ). π∞ is O(m)-spherical; L∞(s,π)=∏j Γℝ(s−μj). d=m², β₀=2 maxj Re μj; unitarity gives β₀∈[0,1). χ is a nonprincipal even character of prime conductor q>2, q∤fπ, where fπ is the standard conductor.

A route to the result is as follows. Apply AutomorphicLFunctionsAndLocalFactors AL.3/global-whittaker-factorization to the cuspidal GLn representation to obtain genericity of every local component before invoking the generic unitary classification. Cuspidality alone is not a definition of genericity. Import AutomorphicLFunctionsAndLocalFactors AL.3 global poles, functional equation and strip estimates for this equal-rank pair, local factor product and the all-prime self-pair positivity and norm-twist transport. At q, πq is unramified but πq⊗χq is ramified, so no global norm self-twist can hold. The local twisted L factor is 1 and its epsilon factor is τ(χ)^d q⁻ᵈˢ: the m² exponent shifts sum to zero. At p≠q, twisting by the unramified character substitutes χ(p)p⁻ˢ in the local polynomial and multiplies epsilon by χ(p^ap). Even parity leaves the infinite factor unchanged. Multiply these factors. Obtain the positive partial-sum asymptotic from the simple positive self-pair pole and the full Wiener–Ikehara theorem, checking boundary continuity of the pole-subtracted finite L function.

**Checks.**

- For m=2, d=4; at an unramified q with primitive χ the twisted local L-factor is 1 and the conductor power is q⁴, not q².
- The normalized epsilon at s=1/2 has norm |τπ| q^(d/2)(fq^d)^(−1/2)=1; asserting |τπ|=1 when f>1 gives f^(−1/2).
- At p≠q, even if πp is ramified, coefficient b(p^a) is multiplied by χ(p)^a and is retained; a ramified character paired with its inverse can have local factor (1−p⁻ˢ)⁻¹.
- For an odd χ, its real sign changes the infinite factor, so the unchanged A(s) equation does not apply.

(lrs95, §2.1 pp.391–392 and Lemma 2.1 pp.392–394.)

*Needs:* AutomorphicLFunctionsAndLocalFactors AL.3 Global Whittaker factorization, Rankin–Selberg local factors, induced products, poles, functional equation, boundary nonvanishing and L-function data; AL.1 Canonical archimedean factors; gaps:all-prime-self-pair-positivity and self-pair-local-character-transport; AutomorphicFormsOnReductiveGroups §2.6; `TauCeti.LSeries.wienerIkehara`.

### 2.2 Archimedean trivial zero

If β₀>0, then Lχ(β₀)=0 for every χ in Layer 2. A(s) has a real pole at β₀ and has no poles on Re s>β₀. The completed twisted function is entire, so the finite function vanishes there to at least the pole order.

Assume m≥2 and π is unitary cuspidal on GLm(Aℚ). π∞ is O(m)-spherical; L∞(s,π)=∏j Γℝ(s−μj). d=m², β₀=2 maxj Re μj; unitarity gives β₀∈[0,1). χ is a nonprincipal even character of prime conductor q>2, q∤fπ, where fπ is the standard conductor. β₀>0.

A route to the result is as follows. Use AutomorphicFormsOnReductiveGroups §2.6 unitarity to identify the multiset with its negative complex conjugate and genericity to give β₀<1. A maximal diagonal pair has argument s−2Re μj, which is zero at β₀. Gamma has no meromorphic zeros; no pole cancels another gamma pole, and none lies to the right. Use entire completion from the prime-twist functional equation and compare meromorphic orders. Interpret poles by germs or punctured limits: the totalized Complex.Gammaℝ value is zero at a pole and cannot be treated as infinite.

**Checks.**

- With real standard exponents {r,−r}, A(s) has shifts {2r,0,0,−2r}; for r=1/5 there is a pole at β₀=2/5.
- At β₀=0 the hypothesis β₀>0 fails and no contradiction is needed.
- At s=0, the totalized Γℝ is zero, while lims→0 sΓℝ(s)=2; meromorphic order −1, rather than that point value, forces finite-function vanishing.

(lrs95, Theorem 1.2 discussion pp.389–390 and proof p.395.)

*Needs:* §2.1; `Complex.Gammaℝ`; `Complex.Gammaℝ_eq_zero_iff`; `Complex.Gammaℝ_residue_zero`; gap:complex-gamma-strip-estimates; AutomorphicFormsOnReductiveGroups §2.6.

### Examples

For a spherical rank-two example with parameters r,−r, the self-pair gamma shifts are 2r,0,0,−2r; at r=1/5 the rightmost pole is 2/5. The primitive twist at an unramified prime has degree d=4 in both the Gauss power and the conductor q⁴. A ramified place away from q is transported, not deleted.

### Dependencies

AutomorphicFormsOnReductiveGroups §2.6; AutomorphicLFunctionsAndLocalFactors AL.1–AL.3 and the four analytic gaps; Tau Ceti Wiener–Ikehara. This layer does not use the final parameter bound.

## Layer 3: Mellin cutoffs and the exact two-kernel identity

Both cutoffs are actual functions with explicitly convergent transforms on their integration lines. The estimates are uniform in q because the gamma ratio and cutoff depend only on the fixed π and β.

### 3.1 Mellin cutoff kernel

For φ:ℝ→ℂ define F₁(φ,x)=∫y>x φ(y)dy/y. For smooth φ with compact support in (0,∞) and x>0, prove F₁(φ,x)=mellinInv(2,s↦mellin(φ,s)/s)(x). The cutoff used in the moment satisfies mellin(φ,0)=1.

A route to the result is as follows. Use mellin and mellinInv conventions; these agree with the vertical complex contour integral after ds=i dt. For Re s>0, apply Fubini to the integral tail and integrate x^(s−1) from 0 to y, obtaining mellin(F₁(φ,·),s)=mellin(φ,s)/s. Compact positive support gives continuity and Mellin convergence of the tail on Re s=2; integration by parts in log y gives integrability of its transform on that line. Apply the mellinInv_mellin_eq with those hypotheses. Below the support the tail is exactly the multiplicative normalization, and above it the tail is zero.

The API proves the following facts.

- For every φ and x, F₁(φ,x)=∫Ioi(x) φ(y)/(y:ℂ)dy.
- For smooth compact positive support and x>0, F₁=mellinInv(2,mellin(φ,s)/s)(x).
- If a>0, φ(y)=0 for y<a, φ(y)/y is integrable on (0,∞), mellin(φ,0)=1 and 0<x≤a, then F₁(φ,x)=1.
- If φ(y)=0 for y>b and b≤x, then F₁(φ,x)=0.

**Checks.**

- F₁(0,x)=0 for every x. The zero integrand gives zero.
- If φ vanishes below 1, φ/y is integrable on (0,∞) and mellin(φ,0)=1, F₁(φ,1/2)=1. The multiplicative mass is exactly one; ordinary unit dx mass would not imply this.
- If φ vanishes above 2, F₁(φ,3)=0. The integration tail misses the support and is zero.

(lrs95, Equations (3.6)–(3.7), Lemma 3.1 pp.395–396.)

*Needs:* `mellin`; `mellinInv`; `mellinInv_mellin_eq`; smooth compact cutoff estimates.

### 3.2 Dual Mellin kernel

For actual functions φ:ℝ→ℂ and G:ℂ→ℂ define F₂(φ,G,β,x)=mellinInv(2,s↦mellin(φ,−s)G(β−s)/s)(x). In application G is the ratio of §2.1, evaluated on the allowed line; no growth bound is part of the definition.

A route to the result is as follows. Reuse mellinInv for the contour integral, so the sign change mellin(φ,−s) and β−s remain visible. For G=1 use mellin_comp_inv and the first-kernel inversion API. The zero-function and zero-ratio cases follow from the zero integrand.

The API proves the following facts.

- F₂ equals the displayed inverse Mellin transform.
- G=0 gives F₂=0.
- For smooth compact positive-support φ, x>0 and G=1, F₂(φ,1,β,x)=F₁(φ∘inv,x).

**Checks.**

- φ=0 gives F₂=0 for any G, β and x. The transform integrand is zero.
- G=0 gives F₂=0 for any φ, β and x. The transform integrand is zero.
- For smooth compact positive support, G=1 and x=2, F₂=F₁(φ∘inv,2), detecting the sign of the Mellin argument. For a multiplicatively normalized φ supported in [3,4], the reflected support is [1/4,1/3], so the value at x=2 is zero, while the unreflected tail is one.

(lrs95, Equation (3.7), Lemma 3.1 p.396.)

*Needs:* §3.1; `mellin_comp_inv`; `mellinInv`.

### 3.3 Mellin cutoff estimates

For φ smooth with compact support in (0,∞), mellin(φ,0)=1, the Layer 2 gamma ratio G, β with 0<σ=Re β<1 and every ε>0, for each B>0 there is C_B>0 such that |Fᵢ(x)|≤C_B x^(−B) for x≥1 and i=1,2. F₁(x)=1 for sufficiently small positive x. For 0<x≤1, |F₂(x)|≤Cε(1+x^(1−β₀−σ−ε)); constants depend on π,β,φ,ε, not q or Y. Choose ε<1−β₀ when using the dual integral.

Assume m≥2 and π is unitary cuspidal on GLm(Aℚ). π∞ is O(m)-spherical; L∞(s,π)=∏j Γℝ(s−μj). d=m², β₀=2 maxj Re μj; unitarity gives β₀∈[0,1). φ is smooth, compactly supported in (0,∞), mellin(φ,0)=1. 0<Re β<1 and ε>0.

A route to the result is as follows. Integration by parts in log y makes k(s)=mellin(φ,s) entire and rapidly decreasing in vertical strips. Import the complex gamma Stirling bounds from AutomorphicLFunctionsAndLocalFactors AL.1; the ratio G has polynomial strip growth. Shift to the right for rapid decay, and to the left for near-zero behavior. The gamma-ratio poles have rightmost possible real part σ+β₀−1 and order at most d. The factor 1/s adds one to the order if a gamma pole coincides with zero. Absorb the resulting finite powers of |log x| into x⁻ε; this handles all repeated poles and the zero-pole collision when σ+β₀=1.

**Checks.**

- If σ+β₀=1, the estimate is Cε(1+x^(−ε)); a logarithm at x→0 is permitted, while a constant bound would fail for a collided pole.
- A gamma-ratio pole of order d=4 colliding with 1/s has order at most 5; the logarithm degree is at most 4 and is absorbed in every x^(−ε).
- For σ=1/2, β₀=2/5 and ε′=1/10 the dual-integral powers are x^(−1/2) and x^(−1/2); both integrate to 2 on (0,1).

(lrs95, Lemma 3.1 p.396, contour-shift proof.)

*Needs:* §§2.1 and 3.1–3.2; AutomorphicLFunctionsAndLocalFactors AL.1 and gap:complex-gamma-strip-estimates; meromorphic orders and rectangle contour limits.

### 3.4 Approximate functional equation

For the Layer 2 data, smooth compact positive-support φ with mellin(φ,0)=1, 0<Re β<1 and Y>1, Lχ(β)=∑n≥1 b(n)χ(n)n⁻ᵝF₁(n/Y)+τπχ(f)τ(χ)^d(fq^d)⁻ᵝ∑n≥1 b(n)χ̄(n)n^(β−1)F₂(nY/(fq^d)). Both sums converge absolutely.

Assume m≥2 and π is unitary cuspidal on GLm(Aℚ). π∞ is O(m)-spherical; L∞(s,π)=∏j Γℝ(s−μj). d=m², β₀=2 maxj Re μj; unitarity gives β₀∈[0,1). χ is a nonprincipal even character of prime conductor q>2, q∤fπ, where fπ is the standard conductor. 0<Re β<1, Y>1, and the normalized φ of Layer 3.

A route to the result is as follows. Put k(s)=mellin(φ,s) and integrate k(s)Lχ(β+s)Y^s/s on Re s=2, exchange the absolutely convergent series and integral, and identify F₁. Shift to Re s=−1: the sole crossed pole is s=0 because the finite twisted Lχ is entire. Use the supplied polynomial vertical-strip growth of the finite Lχ, together with rapid decay of k, to kill the horizontal contours. Boundedness of the completed Λ alone does not justify this step. Apply the functional equation, replace s by −s and shift the resulting integral to Re s=2 in the pole-free right region. Expanding Lχ̄(1−β+s) gives F₂ with the exact conductor and power of n. Use rapid kernel decay and the positive partial-sum bound from Layer 2 for absolute summability.

**Checks.**

- The choices Y=2 and Y=4 multiply the dual argument nY/(fq^d) by two; placing Y in the denominator would halve it.
- At β=1/2 the primal and dual n-powers are both n^(−1/2), but the characters are χ and χ̄ and the kernels differ.
- For the zero cutoff both kernels and the right side are zero, so the normalization mellin(φ,0)=1 excludes it from this identity.

(lrs95, Lemma 3.2 and its proof pp.396–397.)

*Needs:* §§2.1 and 3.1–3.3; AutomorphicLFunctionsAndLocalFactors AL.3, L-function data and derived products, and gap:finite-rs-polynomial-strips.

### Examples

A smooth nonnegative nonzero cutoff supported inside [1,2] can be divided by its positive multiplicative integral. Then F₁(1/2)=1 and F₁(3)=0. For G=1 the reflected kernel is the tail of φ∘inv; at x=2 it is zero. The ordinary-integral example φ=1 on [1,2] and zero elsewhere is not smooth but has dx mass 1 and multiplicative mass log 2, showing why ordinary unit mass cannot justify a Mellin residue of one.

### Dependencies

Layer 2; Mathlib Mellin inversion; AutomorphicLFunctionsAndLocalFactors AL.1 gamma strip estimates and AL.3 finite-function polynomial strips; convergent contour calculus.

## Layer 4: Even prime twists and their first moment

The exact character identities precede estimates. First-moment nonvanishing is existence of a nonzero twist; the twisted values are complex and have no asserted positivity.

### 4.1 Even prime-twist average

For an actual family L(q,χ,s) of complex functions and natural fπ,Q define S(L,fπ,Q,β)=ΣQ<q≤2Q, q prime, q∤fπ Σχ≠1, χ(−1)=1 L(q,χ,β). This is a finite sum. Its analytic application uses the particular functions of §2.1, rather than arbitrary functions satisfying an unnamed predicate.

A route to the result is as follows. The index is the finite set of primes in Q<q≤2Q not dividing fπ, together with their even nonprincipal complex Dirichlet characters. Equality of families on these selected values gives equality of sums, and zero selected values give sum zero; these assertions make no analytic hypothesis about the family.

The API proves the following facts.

- Equals the finite sum over primes Q<q≤2Q with q∤fπ and even nonprincipal χ.
- Families equal at every selected (q,χ,β) have equal averages.
- If every selected value is zero then the average is zero.

**Checks.**

- Q=0 gives zero for every family and conductor. The dyadic interval is empty; Q=1 selects q=2 but its nonprincipal character set is empty. A generic conductor value fπ=0 excludes every prime and also gives zero, whereas the analytic conductor is positive.
- For L≡1, fπ=1 and Q=2 the average is zero; q=3 has no even nonprincipal character. The only selected prime is 3, with zero even nonprincipal characters.
- For L≡1, fπ=1 and Q=3 the average is one, coming from q=5. Only q=5 contributes, with exactly one selected character.
- For L≡1, fπ=5 and Q=3 the average is zero, since q=5 is excluded. The selected prime is excluded before summation.

(lrs95, Equation (3.4) and Proposition 3.1 p.395.)

*Needs:* finite complex `DirichletCharacter` carriers; natural dyadic intervals.

### 4.2 Even nonprincipal orthogonality

For prime q>2 and a∈Z/qZ, ∑χ even,χ≠1 χ(a) is 0 if a=0, (q−1)/2−1 if a=±1, and −1 otherwise. For Y>1 and the cutoff φ of §3.1, let the smoothed sum be the sum over these χ of Σn≥1 b(n)χ(n)n⁻ᵝF₁(n/Y), with the coefficient data of §2.1. This sum equals ((q−1)/2)∑n≡±1 mod q b(n)n⁻ᵝF₁(n/Y)−∑(n,q)=1 b(n)n⁻ᵝF₁(n/Y). The principal-character subtraction includes n≡±1.

Assume q>2 is prime; characters are complex Dirichlet characters extended by zero on nonunits.

A route to the result is as follows. Project the full character sum to even characters by (1+χ(−1))/2 and use the sum_characters_eq theorem at a and −a. Subtract the principal character, which is one on every nonzero class and zero at zero. Apply to each coefficient of the finite-support primal kernel.

**Checks.**

- For q=3 the even nonprincipal set is empty, and every class gives zero.
- For q=5 its unique member is the quadratic character: values at a=0,±1,±2 are 0,1,−1, matching the three branches.
- At n=1 and q=5 the coefficient is (5−1)/2−1=1; subtracting the principal character only outside ±1 would give 2.

(lrs95, Equation (3.11) and the principal-character subtraction in (3.12), p.397.)

*Needs:* §3.1; `DirichletCharacter.sum_characters_eq`; finite sum interchange.

### 4.2a Raw hyper-Kloosterman sums over every finite field

For any finite field F, additive character ψ:F→ℂˣ, natural k and unit r∈Fˣ, define `hyperKloosterman` as the sum of ψ(x₁+⋯+xₖ) over k-tuples of units with product r. Use Mathlib `AddChar F ℂ` for ψ, so the trivial additive character is the constant one. The definition is total at k=0: the empty product gives value one at r=1 and zero otherwise. The deep estimate requires k≥1 and ψ≠1. Its statement includes every finite characteristic, including p=2 and ranks divisible by p.

The API proves the following facts.

- For k=1 the sum is ψ(r); the fibre contains exactly the one tuple (r).
- A field isomorphism transports both the character and the unit-product fibre, leaving the sum unchanged.
- Replacing ψ(x) by ψ(ax), a∈Fˣ, changes the argument r to aᵏr after scaling every coordinate by a.
- The trivial additive character gives (|F|−1)^(k−1) for k≥1, by freely choosing the first k−1 units and determining the last. This counts tuples, not a normalized trace.

**Checks.**

- At k=0 the values at r=1 and r≠1 are 1 and 0; a definition that silently uses natural subtraction k−1 in the bound would mishandle this rank.
- Over 𝔽₂, ψ(0)=1 and ψ(1)=−1, every unit tuple has all coordinates one, and the raw sum at r=1 is (−1)ᵏ. Thus ranks 1 and 2 give −1 and 1, without excluding characteristic two.
- Over 𝔽₃ with the positive standard character, the rank-two values at 1 and −1 are −1 and 2. A sheaf trace convention with the factor −1 would reverse them.
- At k=3 over 𝔽₅ with trivial ψ, the value is 16, larger than the nontrivial-character bound 3·5=15; the nontriviality hypothesis is necessary.

(katz-gkm, §4.0, pp.47–48, raw product-fibre sums; katz-gkm line 1845 and line 1871.)

*Needs:* Mathlib finite fields, units, `AddChar`, finite products and finite sums.

### 4.2b Kloosterman sheaves and the general Deligne estimate

For k≥1 and nontrivial ψ over F of characteristic p, construct the Kloosterman sheaf on Gₘ/F as R^(k−1)mult₍!₎(Lψ⊠⋯⊠Lψ), where mult:Gₘᵏ→Gₘ is coordinate multiplication and Lψ is the supplied Artin–Schreier sheaf restricted to Gₘ. Coefficients are rationalized Eλ, with ℓ≠p, E containing ψ's values and the specified complex embedding. Prove that the other compact direct-image degrees vanish, that this sheaf is lisse of rank k, tame at zero, totally wild at infinity with Swan conductor one and pure of weight k−1, and that over every finite extension F′/F its geometric-Frobenius trace at r is (−1)^(k−1) times the raw sum for ψ composed with TrF′/F. The source and target of the construction are the rational constructible derived category on Gₘᵏ and that on Gₘ, respectively; the concentration theorem identifies the single lisse cohomology sheaf. The extension comparison specifies the family. One route is induction by multiplicative convolution within this family: the rank-one Artin–Schreier input is tame at zero with Swan conductor one at infinity; convolution retains these local conditions, increases the rank from k to k+1 and the weight from k−1 to k, and introduces one minus sign in its trace. Prove these concentration and local-condition steps for the displayed family using compact/ordinary comparison and duality, before using their weight consequence (katz-gkm, §4.3 and Theorem 5.1(1)–(8), pp.59–64; katz-gkm line 2266, line 2392, line 2412 and line 2424).

Deduce `hyperKloosterman_bound`: for every finite field F, nontrivial `AddChar F ℂ`, k≥1 and r∈Fˣ, the norm of the raw sum is at most k|F|^((k−1)/2). Each eigenvalue has that weight and the trace has k terms. There is no parity, prime-field, or coprimality restriction between p and k. This bound, followed by the exact Gauss identity, is the finite-field input of the moment.

The API proves the following facts.

- Base extension replaces ψ by ψ composed with the field trace and leaves the rank k unchanged.
- The trace comparison uses geometric Frobenius and the sign (−1)^(k−1); the raw finite sum itself has no prefactor.
- Every complex absolute value of each Frobenius eigenvalue over F′ is |F′|^((k−1)/2); triangle inequality gives the displayed bound for that extension as well.

**Checks.**

- At k=1 the sheaf is Lψ on Gₘ, the sign is +1 and both the trace norm and the bound are 1.
- At k=2,F=𝔽₃,r=1, the raw sum is −1, the sheaf trace is +1 and its norm satisfies 1≤2√3. At r=−1 the raw sum is 2 and the trace is −2.
- At k=2 over 𝔽₂, the raw sum is 1, its trace is −1 and 1≤2√2; excluding p=2 would lose this case.
- At k=0,F=𝔽₂,r=1 the raw sum is 1 but the proposed right side would be zero; the positive-rank binder cannot be omitted.

(katz-gkm, Theorem 4.1.1(1)–(2), pp.48–49; katz-gkm line 1892 and line 1902, specialized to all multiplicative characters trivial and all exponents bᵢ=1. These bᵢ are prime to every p, so the rank remains k without any restriction on k.)

*Needs:* §4.2a; EtaleCohomologyFoundations F.0–F.6 and F.10.1–F.10.2b; DeligneWeightsAndPurity §7.12 and gap:additive-character-sheaf-weight; finite-dimensional complex trace and the triangle inequality.

### 4.3 Gauss-power average

For q>2 prime, k≥1, r∈(Z/qZ)×, τ(χ)=gaussSum(χ,stdAddChar), and the unnormalized supplied hyper-Kloosterman sum Klk(r,q) over k units of product r, ∑χ even,χ≠1 χ̄(r)τ(χ)^k=((q−1)/2)(Klk(r,q)+Klk(−r,q))−(−1)^k. Its norm is at most (q−1)k q^((k−1)/2)+1, hence O_k(q^((k+1)/2)).

Assume q>2 is prime; k≥1; r is a nonzero unit.

A route to the result is as follows. Expand the k-th power of the finite Gauss sum. Orthogonality selects tuples whose product is r or −r. Subtract the principal-character Gauss sum τ(1)=−1. Match the unit tuple fiber exactly to the supplied raw unit-fibre hyper-Kloosterman sum. Apply §4.2b’s general Deligne bound for nonzero arguments and the standard nontrivial additive character. Triangle inequality gives the displayed constant; no zero-argument extension or normalized sheaf trace is substituted.

The uniform norm estimate is the headline `gauss_power_even_average_bound` in `Suggested.lean`, for q prime with q>2, k≥1 and r∈(ℤ/qℤ)ˣ, in namespace `TauCetiRoadmap.CongruenceSpectralGap`. Its real power uses (k−1)/2 in ℝ. The prime, parity, positive-rank and unit-argument hypotheses agree exactly with that signature.

**Checks.**

- For q=3,k=1,r=1, Kl₁(1)+Kl₁(−1)=−1 and the right side is −1−(−1)=0, agreeing with the empty character sum.
- For q=3,k=2,r=1, Kl₂(1)=−1 and Kl₂(−1)=2, so the right side is (−1+2)−1=0. The sign of the principal correction is essential.
- For q=5,k=2 the even quadratic Gauss sum is √5; its square times χ(r) is 5 at r=1 and −5 at r=2, and both have norm 5≤8√5+1.
- Rank k=0 is excluded; the empty-product fibre would force a different identity. Nonunit r is excluded before inversion.

(lrs95, Equations (3.18)–(3.20) p.398.)

*Needs:* §4.2; `gaussSum`; `ZMod.stdAddChar`; `ZMod.isPrimitive_stdAddChar`; §§4.2a–4.2b.

### 4.4 Prime-twist average asymptotic

For fixed π as in Layer 2, β with 0<σ=Re β<1 and every ε>0, as Q→∞ through positive integers, S(Lχ,fπ,Q,β)=(1/2)∑Q<q≤2Q,q prime,q∤fπ q+Oπ,β,ε(Q^(1+(d+1)(1−σ)/2+ε)). The main term is asymptotic to (3/4)Q²/log Q.

Assume m≥2 and π is unitary cuspidal on GLm(Aℚ). π∞ is O(m)-spherical; L∞(s,π)=∏j Γℝ(s−μj). d=m², β₀=2 maxj Re μj; unitarity gives β₀∈[0,1). 0<Re β<1; ε>0; π and β are fixed.

A route to the result is as follows. Choose a multiplicatively normalized smooth compact cutoff and apply the two-kernel identity with Y=Q^((d+1)/2), valid for large Q and satisfying Y/Q→∞ and Y/Q^d→0. Even orthogonality isolates n=1, giving the main term up to O(Q). For n≥2 the number of primes dividing n−1 or n+1 is bounded by τ(n−1)+τ(n+1); use the AnalyticNumberTheoryPartI §3.26 divisor subpower bound, not a false pointwise bound for b(n). Partial summation with ∑n≤x b(n)≪πx gives primal error O(QY^(1−σ+ε)). The subtraction over all coprime n has the same or smaller bound. For the dual term, put r=n/f mod q for q∤n and k=d in the Gauss-power identity; the q|n terms vanish because χ(n)=0. Partial summation bounds the kernel integral by O(Q^(1+(d+1)/2)Y⁻σ); near zero the integrand is bounded by x^(σ−1)+x^(−β₀−ε′), integrable for ε′<1−β₀. Combine the errors and absorb the smoothing exponent into the ε. PNT and Abel summation give the dyadic prime sum ∼(3/2)Q²/log Q; deleting finitely many bad primes changes no asymptotic.

**Checks.**

- For d=4 and σ=9/10 the error exponent is 1+5/20=5/4, strictly below 2.
- For d=9 and σ=4/5 the exponent is 2; at σ=9/10 it is 3/2. This pins the strict boundary used in §4.5.
- The dyadic integral (1/2)∫Q^(2Q)t/log t dt has leading coefficient (1/2)((4−1)/2)=3/4. A coefficient 1/2 is wrong.
- For n=1 separate the main term before counting divisors of n−1=0; every prime divides zero, so the divisor-count argument cannot be used there.

(lrs95, Proposition 3.1 p.395, proof pp.397–399.)

*Needs:* §§2.1, 3.3–3.4 and 4.1–4.3; AnalyticNumberTheoryPartI §3.26; `TauCeti.primeCount_univ_isEquivalent_div_log` at ℚ and rational prime-ideal norm identification; ArithmeticDirichletSeries Layer 6.

### 4.5 Twisted Rankin–Selberg nonvanishing

For fixed π as in Layer 2 and every β with 1−2/(m²+1)<Re β<1, every sufficiently large dyadic prime interval contains q∤fπ and an even nonprincipal χ modulo q for which L(β,(π⊗χ)×π̃)≠0. In particular such conductors are unbounded.

Assume m≥2 and π is unitary cuspidal on GLm(Aℚ). π∞ is O(m)-spherical; L∞(s,π)=∏j Γℝ(s−μj). d=m², β₀=2 maxj Re μj; unitarity gives β₀∈[0,1). 1−2/(m²+1)<Re β<1.

A route to the result is as follows. Choose ε>0 less than 2−[1+(d+1)(1−Re β)/2]. The asymptotic error divided by Q²/log Q tends to zero. Thus the complex average is nonzero for large Q. If every summand were zero its finite sum would vanish, so extract one nonzero term. No positivity of the twisted values is asserted.

**Checks.**

- For m=3 the left boundary is 1−2/10=4/5 and is excluded; β=9/10 lies in the region.
- For m=2 the boundary is 3/5; at equality the main error exponent is 2 and cannot be dominated by Q²/log Q.
- The two complex terms 1+i and −1 have nonzero sum i; extracting one nonzero term is valid without positivity, while existence does not imply every term is nonzero.

(lrs95, Proposition 3.1 and proof of Theorem 1.2 p.395.)

*Needs:* §§4.1 and 4.4; comparison of real powers with Q²/log Q.

### Examples

At q=5 the sole even nonprincipal character is quadratic, so its values on 1 and 2 are 1 and −1, its Gauss sum is √5 and the k=2 average is ±5. At q=3 the even nonprincipal average vanishes. For the dyadic prime family L≡1, Q=3, fπ=1 the average is 1; changing fπ to 5 makes it zero.

### Dependencies

Layers 2–3; Mathlib characters and Gauss sums; EtaleCohomologyFoundations F.0–F.6 and F.10; DeligneWeightsAndPurity §§7.12 and DWP.10; AnalyticNumberTheoryPartI §3.26; Tau Ceti prime counting; ArithmeticDirichletSeries Layer 6.

## Layer 5: The parameter bound and congruence gap

The contradiction uses the strict nonvanishing region and produces a weak parameter bound. The GL₃ adjoint, including its spherical property and cuspidality, is what yields the geometric constant 21/100.

### 5.1 Luo–Rudnick–Sarnak parameter bound

For m≥2 and unitary cuspidal π of GLm(Aℚ) with O(m)-spherical π∞ and L∞(s,π)=∏j Γℝ(s−μj), every j satisfies |Re μj|≤1/2−1/(m²+1). No general nonspherical or number-field version is asserted.

Assume m≥2 and π is unitary cuspidal on GLm(Aℚ). π∞ is O(m)-spherical; L∞(s,π)=∏j Γℝ(s−μj). d=m², β₀=2 maxj Re μj; unitarity gives β₀∈[0,1).

A route to the result is as follows. Assume β₀>1−2/(m²+1). Generic unitary classification gives β₀<1, so twist-nonvanishing applies at the real point β=β₀. Archimedean trivial zero gives zero for every even prime twist there, contradicting the extracted nonzero twist. Hence β₀≤1−2/(m²+1). The unitary multiset symmetry bounds the negative real parts too. Divide by two and obtain the weak inequality; the boundary is not excluded by the strict nonvanishing region.

**Checks.**

- For m=3, 1/2−1/10=2/5.
- For m=2, 1/2−1/5=3/10, yielding only λ≥1/4−9/100=4/25 directly.
- Equality β₀=1−2/(m²+1) is outside the strict contradiction region; the conclusion is a weak inequality.

(lrs95, Theorem 1.2 p.389 and its proof p.395.)

*Needs:* §§2.2 and 4.5; AutomorphicFormsOnReductiveGroups §2.6 generic unitary classification.

### 5.2 Exceptional eigenvalue arithmetic

For r≥0 with 2r≤2/5, one has r≤1/5 and 1/4−r²≥21/100.

Here r is real, r≥0 and 2r≤2/5; there is no claim for negative r.

A route to the result is as follows. Divide the linear bound by two. Squaring preserves it because both sides are nonnegative; subtract from 1/4.

**Checks.**

- At r=1/5, 2r=2/5 and λ=21/100.
- At r=0, λ=1/4; at r=3/10, λ=4/25 and the hypothesis 2r≤2/5 fails.
- The sign hypothesis r≥0 matters: r=−1 satisfies 2r≤2/5 but gives λ=−3/4.

(lrs95, §1 pp.389–390, deduction of Theorem 1.1 from Theorem 1.2.)

*Needs:* real order, squaring nonnegative reals and rational arithmetic.

### 5.3 Congruence spectral gap

For every congruence subgroup Γ≤SL₂(ℤ), equivalently its effective image in PSL₂(ℤ), λ′₁(Γ)≥21/100 in curvature −1. This includes arbitrary congruence levels and the empty small-spectrum convention.

Assume Γ≤SL₂(ℤ) contains Γ(N) for some N≥1; its effective image acts on ℍ. Metric ds²=(dx²+dy²)/y² has curvature −1; all functions are complex-valued.

A route to the result is as follows. Every 0<λ<1/4 is cuspidal by the congruence spectral description. Apply the exceptional dictionary and the adjoint parameter comparison. The m=3 instance of the spherical parameter bound gives 2r≤2/5. The arithmetic of §5.2 gives λ≥21/100. The continuous threshold 1/4 is also ≥21/100. Use the Rayleigh–clipping comparison and the lower-infimum API to combine these cases without choosing a nonexistent least eigenfunction.

**Checks.**

- The rational comparisons are 3/16=75/400, 21/100=84/400 and 1/4=100/400; the improvement is 9/400.
- An empty small spectrum gives λ′₁=1/4≥21/100.
- Level zero does not witness congruence, and a finite-index noncongruence subgroup does not satisfy the theorem hypothesis.

(lrs95, Theorem 1.1 p.387; GL₃ reduction pp.389–390; proof of Theorem 1.2 p.395.)

*Needs:* §§0.6–0.7, 1.1–1.3 and 5.1–5.2.

### 5.4 Congruence Rayleigh inequality

For allowed Γ and every u in its closed Dirichlet form domain with ∫u dμΓ=0, q(u,u)≥(21/100)‖u‖₂². On the operator domain this reads Re⟨u,Δu⟩≥(21/100)‖u‖₂². It includes u=0.

Assume Γ≤SL₂(ℤ) contains Γ(N) for some N≥1; its effective image acts on ℍ. Metric ds²=(dx²+dy²)/y² has curvature −1; all functions are complex-valued. u belongs to the closed form domain and has complex mean zero.

A route to the result is as follows. For nonzero operator-domain u, its Rayleigh value is at least the positive spectral bottom and use the congruence gap theorem; zero gives equality. Approximate form-domain vectors in energy norm by operator-domain vectors using the generic closed-form operator core. Subtract their constant projections to preserve mean zero and pass to the limit.

**Checks.**

- For u=0 both sides are zero; the inequality includes this vector without division by its norm.
- At a hypothetical normalized equality eigenvector with λ=21/100, both sides are 21/100; replacing it by 2iu makes both sides 21/25.
- For the nonzero constant 1 the energy is zero but (21/100)‖1‖²=(21/100)μΓ(XΓ)>0, so omitting mean zero makes the inequality false.

(lrs95, Theorem 1.1, p.387; teschl, §4.3, Theorem 4.10 and its form-domain version, p.119; teschl line 5044.)

*Needs:* §§0.2–0.4 and 5.3; UnboundedOperators UO-D06 and gap:form-rayleigh-core; AutomorphicSpectralTheory §§0.6–0.7.

### 5.5 Curvature rescaling comparison

For κ>0, replace g−1 by gκ=κ⁻¹g−1. Then curvature is −κ, μκ=κ⁻¹μ−1, Δκ=κΔ−1, the Dirichlet energy in dimension two is unchanged, and λ′₁,κ=κλ′₁,−1 with continuous threshold κ/4. Hence λ′₁,κ/κ≥21/100. Multiplying the unscaled inequality by κ gives the corresponding scalar lower bound.

Assume κ>0 and Γ is a congruence subgroup; the metric is a constant rescaling of the specified hyperbolic metric.

A route to the result is as follows. Compute the specialized constant scaling in the imported metric/gradient and volume-density coordinates: the inverse metric multiplies by κ and the two-dimensional volume by κ⁻¹; the Levi-Civita connection is unchanged under constant metric scaling, so sectional curvature multiplies by κ. Transport L² by constant normalization and identify the same closed form and scaled operator. Use the gradient, connection and volume definitions of DifferentialGeometry Layer 12 for this specialized calculation. Both operator/form Rayleigh quotients scale by κ; constants and mean-zero subspaces correspond. Take infima and rescale the threshold.

**Checks.**

- At κ=1 all measure, operator, threshold and gap factors are unchanged.
- At κ=4, μκ=μ/4, Δκ=4Δ, the energy is unchanged, the threshold is 1 and the lower gap is 21/25.
- For a normalized vector of norm squared 1 and energy 21/100, the same function has new norm squared 1/4 and energy 21/100, hence Rayleigh value 21/25.
- κ=0 and κ<0 do not define the stated Riemannian scaling; division by κ requires κ>0.

(lrs95, §1, pp.387–390; teschl, §4.3, Theorem 4.10, p.119; teschl line 5044.)

*Needs:* §§0.1–0.4 and 5.3–5.4; DifferentialGeometry Layer 12; UnboundedOperators UO-D06; AutomorphicSpectralTheory §§0.6–0.7.

### Examples

The exact numerical chain is 3/16<21/100<1/4, with difference 9/400 and 1/4−(1/5)²=21/100. Under curvature −4 the gap is at least 21/25 and its continuous threshold is 1. The independent consumer arithmetic (21/100)(π/3)/(8π)=7/800 uses level-one area but does not assert a conformal-area theorem here.

### Dependencies

Layers 0–4; AutomorphicFormsOnReductiveGroups §2.6; UnboundedOperators UO-D06 and its form-core contract; DifferentialGeometry Layer 12 for the constant-scaling calculation.

## Downstream consumers

Finite-area conformal and area arguments consume the form-domain inequality, with the exact hyperbolic metric, whole complex mean-zero condition and scale factor. Arithmetic applications to congruence covers consume the spectral bound and principal/intermediate-level compatibility. GeometricFreyMazur consumes the normalization-fixed gap together with its independent area and conformal-area inputs. KloostermanMomentsAndPotentialAutomorphy consumes the raw scalar sum and all-rank sheaf realization; rigid Bessel realizations consume the same scalar normalization. No area/index or conformal-area comparison is asserted by the spectral estimate alone.

## Worked examples

The nine definition families and the Kloosterman sheaf construction have the discriminating checks in their own sections. The final numerical chain and the Gauss examples also fix the two source conventions. At lrs95 p.395 before (3.6), unit ordinary-integral mass does not imply Mellin value one: multiplicative mass does. At lrs95 p.397, the principal subtraction in (3.12) includes every coprime n, including n≡±1; at n=1,q=5 the exact coefficient is 1 rather than 2. These conventions leave Proposition 3.1's main term and the final constant unchanged. The exact formulas and their numerical witnesses determine the normalization.

The unscaled and scaled Rayleigh witnesses must agree: with ‖u‖²=1 and q(u,u)=21/100, the metric g/4 gives ‖u‖²=1/4, the same energy and quotient 21/25. Constants still have zero energy and fail the mean-zero hypothesis. This distinguishes metric scaling from multiplying the measure alone.

## References

- **lrs95.** Wenzhi Luo, Zeev Rudnick and Peter Sarnak, *On Selberg's eigenvalue conjecture*, Geometric and Functional Analysis 5 (1995), 387–401, [published citation](https://doi.org/10.1007/BF01895672). Theorem 1.1 p.387, Theorem 1.2 pp.389–390, Lemma 2.1 pp.392–394, (3.6)–(3.7) and Lemmas 3.1–3.2 pp.395–397, (3.11)–(3.12) p.397, (3.18)–(3.20) p.398 and Proposition 3.1 pp.395–399. The manifest records this work as uncertified; these are published locators without certification of the source text.
- **gj78.** Stephen Gelbart and Hervé Jacquet, *A relation between automorphic representations of GL(2) and GL(3)*, Annales scientifiques de l’École Normale Supérieure 11 (1978), 471–542, [Numdam](https://www.numdam.org/article/ASENS_1978_4_11_4_471_0.pdf). Definition 3.1.3 and Proposition 3.2 pp.485–486; §3.7 p.491; Theorem 9.3 and Remark 9.9 pp.534–541. The local adjoint convention and self-twist branch are located at gj78 line 528, line 538 and line 721.
- **katz-gkm.** Nicholas M. Katz, *Gauss Sums, Kloosterman Sums, and Monodromy Groups*, Annals of Mathematics Studies 116 (1988), [author scan](https://web.math.princeton.edu/~nmk/Katz-GKM.pdf), §4.0 pp.47–48 and Theorem 4.1.1 pp.48–49; katz-gkm line 1845, line 1871 and line 1902.
- **teschl.** Gerald Teschl, *Mathematical Methods in Quantum Mechanics*, [author text](https://www.mat.univie.ac.at/~gerald/ftp/book-schroe/schroe.pdf), author-hosted 12 February 2009 edition, GSM 99: §2.3, Theorems 2.12–2.13 pp.70–72 (teschl line 2914 and line 2960); §4.3, Theorem 4.10 and the form-domain observation p.119 (teschl line 5044 and line 5053). The quotient-chart and cusp-cutoff arguments above are specializations requiring their stated geometry, not assertions that this textbook constructs an orbifold Laplacian.
