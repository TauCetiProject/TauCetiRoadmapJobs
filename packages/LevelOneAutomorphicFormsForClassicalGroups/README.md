# Roadmap: level-one automorphic forms for classical groups

**Summary.** Build, on top of the adelic, spectral, L-function, Arthur-classification and theta
roadmaps, the level-one theory of Chenevier and Taïbi. Starting from the unitary algebraic
level-one cuspidal spectrum `Π_alg` of the groups `PGL_m` over `ℚ`, this roadmap develops the
real Weil representation ring and its classical-group weight dictionary (Layer 1); the
Rankin–Selberg form of Weil's explicit formula and the resulting Stark–Odlyzko cone inequality,
with its finite-dimensional exclusion method, Miller's vanishing theorem and the repeated-weight
`PGL₄` vanishing (Layer 2); the level-one Arthur parameters of `Sp_{2g}` and `SO_n`, their
component groups and explicit holomorphic packet characters, and the triangular relation between
Euler–Poincaré characteristics and self-dual cuspidal counts (Layer 3); the masses of torsion
conjugacy classes in the geometric side of Arthur's `L²`-Lefschetz trace formula, the spinor
obstruction on their characteristic polynomials and their exact recovery for `SO_d` (`d ≤ 17`)
and `Sp_{2n}` (`n ≤ 8`) (Layer 4); and the complete classifications of level-one algebraic
cuspidal representations in motivic weight at most 22, of the top-simple ones in weight 23 and of
the regular self-dual ones in weight 24 (Layer 5). The second half turns to Siegel modular forms
for `Γ_g = Sp_{2g}(ℤ)`: the genus-`g` and harmonic lattice theta maps, first occurrence and the
Rallis relation (Layer 6); the dimension of `S_k(Γ_g)` for every regular weight in genus at most
eight, the twenty-nine nonscalar spaces and all scalar spaces in weight at most 13, and the four
weight-13 cusp forms of genera 8, 12, 16 and 24 (Layer 7); and their realization as harmonic theta
series of the Leech lattice, the Eichler basis theorem in weights 4, 8 and 12, and the stable
range `g ≥ 2k` (Layer 8). The end theorems are Chenevier–Taïbi's Theorems 1–7, Corollary 1 and
§§5.4–5.5, and Theorems 1–2 of their weight-13 Leech paper.

## Scope and ownership

This roadmap owns the level-one specialization and everything that is specific to the
Chenevier–Taïbi method: the set `Π_alg` and its counting functions; the archimedean ring `K∞` with
its parity-truncated weight filtrations; the Rankin–Selberg explicit-formula bilinear forms, the
Stark–Odlyzko cone inequality for pairs of level-one representations and the finite-dimensional
quadratic minimization built on it, including the Rayleigh least-eigenvalue refinement (the
Odlyzko kernel and test function are imported); Miller's vanishing theorem (no other roadmap plans a second proof of
it); level-one Arthur parameters, their packet characters in the holomorphic cases and the
triangular Euler–Poincaré relation; the masses of torsion classes, the spinor obstruction on
their characteristic polynomials, resting on the imported Zassenhaus spinor-norm formula; Taïbi's
explicit evaluation of the geometric side of the level-one `L²`-Lefschetz formula; the
low-weight classifications; the genus-`g` unweighted theta map on even unimodular lattices, the
harmonic theta map, first occurrence and the Rallis parameter relation at level one; the
Siegel-modular-form inputs needed at level one (the Siegel operator and its standard-`L`-function
relation, the vanishing and spanning theorems of the singular range, odd-weight boundary
vanishing); the classification of Siegel eigenforms in low weight; the invariant alternating forms
of Niemeier lattices, the Mathieu orbit-sum forms on the Leech lattice, the sublattices `Q_g` and
the harmonic Leech theta series; and the stable range.

It leaves to named roadmaps, by section:

- The adelic group, cuspidal and automorphic representations, restricted tensor products, the real
  Weil group and the local Langlands correspondence for `GL_n(ℝ)`, Clozel purity, holomorphic
  discrete series, the `GL₂` adelization and algebraic modular forms for groups compact at
  infinity: AutomorphicFormsOnReductiveGroups §§2.2, 2.4, 2.5, 3.2, 3.4, 3.5, 4.2, 5.1, 5.5, 6.7,
  6.8, 7.2, 7.2a, 7.4 and 7.5.
- Archimedean gamma and epsilon factors, Rankin–Selberg `L`-functions, their unramified Euler
  factors, the Jacquet–Shalika bound on Satake roots, their poles, functional equations and boundary
  nonvanishing, the bounds of completed pair `L`-functions on vertical strips, and strong multiplicity
  one for isobaric sums: AutomorphicLFunctionsAndLocalFactors, Conventions, §§AL.1.4, AL.3.2.3,
  AL.3.3.8, AL.3.6, AL.3.7, AL.3.9.2 and AL.3.9.4.
- Weil's explicit formula in Mestre's formalism, for an arbitrary pair of completed functions with
  products of gamma factors: AnalyticNumberTheoryPartI §§1.3 and 1.8.
- The Odlyzko kernel `g = 2(u ∗ u)`, the test functions `g(x/b)/cosh(x/2)` and the nonnegativity of
  the real part of their transform in the strip `0 ≤ Re s ≤ 1`:
  SmallRamificationAndAbelianVarietyBaseCases §§1.5–1.7.
- The Zassenhaus spinor-norm formula for an isometry of a nondegenerate quadratic space over a
  field of characteristic different from `2`: SymplecticReidemeisterTorsionModSquares §4.1.
- The identification of the permutation automorphism group of the extended binary Golay code with
  the Mathieu group `M₂₄`, the Conway coordinates of the Leech lattice with their coordinate
  equivalence and norm scaling against Rank24LatticeConstructions Layer 6, Conway's group
  `Co₀ = O(Leech)` as the isometry group of the Leech lattice, its Conway generators and order, the
  simplicity of `Co₁ = Co₀/{±1}`, and the average characteristic polynomial of its action on
  `Leech ⊗ ℚ`: CFSGBasicProperties P2-L.
- Finite multiplicities of the discrete spectrum, the residual spectrum, Wallach's tempered
  cuspidality criterion, Euler–Poincaré functions and Arthur's `L²`-Lefschetz trace formula:
  AutomorphicSpectralTheory §§4.4, 4.5, 4.10, 6.9, 6.17, 6.19 and 6.20.
- Global Arthur parameters, component groups, the epsilon character, local Arthur packets, the
  multiplicity formula, Adams–Johnson packets and the Mœglin–Renard description of packets with a
  scalar unitary lowest-weight module, together with the standing premises under which they are
  stated: ModularityAndLanglandsExtensions, Exact supplier contracts, and §§3.4, 3.8, 3.15, 3.17,
  3.20, 3.21 and 3.22.
- Classical automorphic forms on Shimura varieties, their cusp forms, Hecke operators and
  Fourier–Jacobi expansions: AutomorphicBundles §§11.1, 11.2, 11.9, 11.16, 12.10, 12.11, 12.13 and
  12.15.
- Oscillator representations, dual pairs, local theta correspondence, the theta kernel and the
  Rallis unramified computation: MetaplecticAutomorphicForms §§0.15, 2.4c, 3.1, 3.4, 3.5, 3.7,
  3.10, 3.21, 5.1, 5.6 and 6.14.
- Classes of even unimodular lattices of ranks 16 and 24, the uniqueness of the rootless rank-24
  class, the mass of even unimodular lattices and automorphism orders: OrthogonalTamagawaAndLatticeMass
  §§3.1, 4.1 and 4.2. Genus theory and integral spinor norms: GeometryOfNumbersAndQuadraticArithmetic
  §2.4.
- Exact interval arithmetic, the closed formulas and rational enclosures of the eight explicit-formula
  scalars, rational Gram witnesses, the multiplicity lift and ellipsoid covers:
  ComputationalNumberTheory §§4.1–4.7, 4.17, 4.17a, 4.18, 4.26 and 4.29–4.34, and §5.1 for the
  interpretation of finite families.
- The integral lattice carrier, isometries and discriminant forms: Completed/IntegralLattices,
  Layer 1, with their Tau Ceti declarations; the `p`-neighbour relation of integral lattices:
  IntegralLattices §4G. The construction of the Leech lattice: Rank24LatticeConstructions,
  Layer 6. Genus-one theta series and `Θ_{E₈} = E₄`: ThetaSeries, Layers 5 and 8. The extended
  binary Golay code: AlgebraicCodingTheory, Layer 5. The order of the Mathieu group `M₂₄`:
  SporadicOrders, Layer 1. The field spinor norm: OrthogonalSpinGroups, Layer 1, which is Tau
  Ceti's `CliffordAlgebra.orthogonalSpinorNorm` at the pin.
- Weyl's character and dimension formulas and the highest-weight theory of the classical groups:
  RepresentationTheory/LieHighestWeight Layer 6 and RepresentationTheory/ClassicalGroups Layers
  3–5. Split Chevalley–Demazure group schemes over `ℤ`: ReductiveGroups Layer 9.

Already in the pinned libraries and consumed as is: the smooth split symplectic group scheme over
`ℤ` and its matrix points (`TauCeti.Symplectic.groupScheme`, `TauCeti.Symplectic.pointsMulEquiv`,
`TauCeti.Symplectic.instSmoothCoordinateHopfAlgebra`); the eigenvector property of a local
extremum of a Rayleigh quotient (`IsSelfAdjoint.hasEigenvector_of_isLocalExtrOn`); the level-one
dimension formula and division by the discriminant (`ModularForm.dimension_level_one`,
`CuspForm.discriminantEquiv`); the Petersson product and a Petersson-orthonormal basis of good
Hecke eigenforms of each fixed-character cusp space (`CuspForm.peterssonInnerCosets`,
`HeckeRing.GL2.exists_peterssonOrthonormalBasis_eigenformAwayFromLevel`), normalized newforms with
their Hecke eigenvalues and the newform basis of the new subspace (`HeckeRing.GL2.Newform`,
`HeckeRing.GL2.Newform.basis`), with `TauCeti.cuspFormsNew_one` (at level one every cusp form is
new) and `TauCeti.Gamma1_one_map_eq_SL` (`Γ₁(1)` is the full modular group); the binary Golay code and its Construction A lattice
(`TauCeti.BinaryGolay.code`, `TauCeti.BinaryGolay.constructionALattice`); the integral lattice
carrier `TauCeti.IntegralLattice` with `IsEven`, `IsUnimodular`, `IsPosDef`, `norm`,
`vectorsOfNorm` and the isometry group `TauCeti.IntegralLattice.Isometry`. None of these is planned
again here.

Two neighbours consume this roadmap rather than supply it. SiegelModularForms imports the
genus-`g` and harmonic lattice theta maps of §§6.4 and 6.7 and compares them with its own theta
series of general lattices; its Ikeda lift is compared there with the genus-12 form of §7.5. The
Siegel operator, the cusp-form kernel theorem and the singular-range statements of §§6.1–6.2 are
stated here because this roadmap needs them before any Siegel roadmap that consumes it.

## Conventions

**Groups and weights.** `Γ_g = Sp_{2g}(ℤ)`. For a dominant integral `k = (k₁ ≥ ⋯ ≥ k_g)` write
`M_k(Γ_g)` and `S_k(Γ_g)` for the level-one Siegel modular and cusp forms with values in the
irreducible polynomial representation of `GL_g(ℂ)` of highest weight `k`; a scalar `k` means
`(k, …, k)`; genus zero means the one-dimensional constant space. For a classical group `G`
distinguish `d_G = dim Std(G)`, the degree of a characteristic polynomial of `G`, from
`m_G = dim Std(Ĝ)`: `(d_G, m_G) = (2n, 2n+1)` for `Sp_{2n}`, `(2n+1, 2n)` for `SO_{2n+1}` and
`(2n, 2n)` for `SO_{2n}`. The permitted groups of the mass computation are those whose real
points have discrete series: `Sp_{2n}`, `SO_{2n+1}` and `SO_{4n}`. Level one means the integral
model's `G(Ẑ)`, including at `p = 2`; maximal compact subgroups are those of the full real group.

**The real Weil representation ring.** `W_ℝ = ℂ^× ⊔ jℂ^×` with `j² = −1`. `K∞` is the Grothendieck
ring of finite-dimensional semisimple continuous representations of `W_ℝ` trivial on `ℝ_{>0}`. Its
additive basis is `1`, the sign character `e = ε_{ℂ/ℝ}`, and `I_w = Ind_{ℂ^×}^{W_ℝ}(z ↦ (z/|z|)^w)`
for integers `w > 0`; `I₀` abbreviates `1 + e` and is not a basis element. A cuspidal representation
of motivic weight `w` from an elliptic eigenform of weight `w + 1` is written `Δ_w`; its
archimedean parameter is `I_w` and its unitary weights are `±w/2`. `Δ_{w,v}` is the self-dual
`PGL₄` class with weights `±w/2, ±v/2`, `Sym²Δ₁₁` the `PGL₃` class with weights `−11, 0, 11`, and
`O^odd(24,16,8)`, `O^even(24,18,10,4)`, `O^even(24,20,14,2)` the three regular self-dual
weight-24 classes, listed by their positive doubled weights. The two classes from `S₂₄(SL₂(ℤ))`,
which share the parameter `I₂₃`, are `Δ₂₃^a` and `Δ₂₃^b` when their identity matters. An Arthur
block `π[d]` has standard dimension `rank(π)·d`; `[d]` is the trivial rank-one class with
`d` copies.

**Doubled weights.** Half-integral weights are recorded by their doubles, so that a weight
vector of `π ∈ Π_alg` is a decreasing symmetric integral vector all of whose coordinates have the
parity of the motivic weight.

**Analytic normalizations.** `Γ_ℝ(s) = π^{−s/2} Γ(s/2)` and `Γ_ℂ(s) = 2(2π)^{−s} Γ(s)`. The
archimedean epsilon factor is multiplicative on `K∞` with `ε(1) = 1`, `ε(e) = i` and
`ε(I_w) = i^{w+1}`; finite epsilon factors at level one are `1`. The Fourier transform of a test
function is `F̂(ξ) = ∫_ℝ F(x) exp(−2πixξ) dx`, extended to complex `ξ`; set `A_F = F̂(i/(4π))` and
`B_F = F̂(0)`. A zero `ρ` of a completed function is placed at `ξ = (1 − 2ρ)/(4πi)`. Completed
`L`-functions are in the unitary normalization with centre `s = 1/2`.

**Standing premises.** The global Arthur classification is imported from
ModularityAndLanglandsExtensions together with its stated premises (its twisted weighted
fundamental lemma and trace inputs). Every theorem below whose route uses the localization of a
global parameter, the multiplicity formula, the local packets or the Adams–Johnson and Mœglin–Renard
descriptions carries those premises as hypotheses, exactly as the supplier states them; this applies
to the type criterion and the same-type root number of §1.8 (not to its level-one root-number
formula), to §§3.2–3.16 (§3.2 uses that same-type root number), 4.11 and after, all of Layer 5 from
§5.3 on except the explicit-formula exclusions themselves, and Layers 7–8 except §§8.3–8.6. The
generalized Riemann hypothesis, where used, is the explicit hypothesis that every zero of every
completed Rankin–Selberg function `Λ(s, π × π′)` with `π, π′ ∈ Π_alg` has real part `1/2`; it appears in the statement of each theorem that uses it.

**Coefficients and universes.** Lattices are `TauCeti.IntegralLattice` objects in finite-dimensional
`ℚ`-vector spaces; alternating forms are `ℚ`-valued. Automorphic spaces are complex. All finite
sets of classes are counted as natural numbers only after their finiteness is proved.

## Exact supplier contracts

### From Mathlib

- `ModularForm.dimension_level_one` (`Mathlib/NumberTheory/ModularForms/LevelOne/DimensionFormula.lean`):
  for even `k`, the rank of level-one modular forms of weight `k` is `k/12` when `k ≡ 2 mod 12`
  and `k/12 + 1` otherwise. `CuspForm.discriminantEquiv` (same file): the linear equivalence
  from cusp forms of weight `k` to modular forms of weight `k − 12`, dividing by `Δ`. Together they
  give `dim S_{w+1}(SL₂(ℤ))` in §§2.20–2.21; odd weight gives zero.
- `IsSelfAdjoint.hasEigenvector_of_isLocalExtrOn` (`Mathlib/Analysis/InnerProductSpace/Rayleigh.lean`):
  a nonzero local extremum of the Rayleigh quotient of a self-adjoint operator on its sphere is an
  eigenvector. It does not say which eigenvalue; §2.10 adds minimality.
- `Matrix.toQuadraticForm'` (the quadratic form `x ↦ xᵀ M x` of a matrix), `Matrix.charpoly`,
  `PadicInt`, `Padic`, `Polynomial.cyclotomic`, `AlternatingMap`, `finsum`, `Module.finrank`,
  `Matrix.rank`, `riemannZeta`, `Complex.Gamma`, Fourier integrals and `HasCompactSupport`.
- `Complex.Gamma_add_one` (`Mathlib/Analysis/SpecialFunctions/Gamma/Basic.lean`): `Γ(s + 1) = s Γ(s)`
  for `s ≠ 0`. `Real.convexOn_log_Gamma` (`Mathlib/Analysis/SpecialFunctions/Gamma/BohrMollerup.lean`):
  `log ∘ Γ` is convex on `(0, ∞)`. `Continuous.fourierInv_fourier_eq`
  (`Mathlib/Analysis/Fourier/Inversion.lean`): a continuous integrable function with integrable Fourier
  transform is the inverse transform of its transform. These three give the closed form of `J_F(1 − e)`
  in §2.3; otherwise the digamma function enters only through the closed formulas of
  ComputationalNumberTheory §4.17.

### From Tau Ceti

- `TauCeti.IntegralLattice` with its fields `carrier` and `form`, the predicates
  `TauCeti.IntegralLattice.IsEven`, `TauCeti.IntegralLattice.IsUnimodular`,
  `TauCeti.IntegralLattice.IsPosDef`, the quadratic form `TauCeti.IntegralLattice.norm`
  (`norm x = form x x`, so a root has norm 2), the sets `TauCeti.IntegralLattice.vectorsOfNorm`,
  and the self-isometries `TauCeti.IntegralLattice.Isometry L L` with their group structure. The
  carrier is a full `ℤ`-lattice with an integral symmetric form; positivity, evenness and
  unimodularity are separate predicates, and nondegeneracy is not part of the structure.
- `TauCeti.Symplectic.groupScheme`, `TauCeti.Symplectic.pointsMulEquiv` and the smoothness instance
  `TauCeti.Symplectic.instSmoothCoordinateHopfAlgebra`: the split symplectic group over `ℤ`, its
  points over every commutative ring as the matrix symplectic group, and smoothness. They are the
  integral model of `Sp_{2n}` in §1.3.
- `TauCeti.BinaryGolay.code` with `finrank_code`, `isTypeII_code`, `hammingMinDist_code` and
  `weightEnumerator_code` (rank 12, doubly even, minimum distance 8, weight enumerator
  `1 + 759y⁸ + 2576y¹² + 759y¹⁶ + y²⁴`), and `TauCeti.BinaryGolay.constructionALattice`, an even
  unimodular positive definite lattice of rank 24 with roots, used as a rooted control in §8.5.
- `CliffordAlgebra.orthogonalSpinorNorm` (`TauCeti/LinearAlgebra/CliffordAlgebra/Spin/SpinorNorm/Basic.lean`):
  the spinor norm `O(Q) → Kˣ/Kˣ²` of a nondegenerate quadratic form over a field, the Clifford
  norm of a Lipschitz lift taken modulo squares; a reflection in `v` has spinor norm the class of
  `Q(v)`. It is the spinor norm of §4.6 and the one in which the imported Zassenhaus formula is
  stated.
- `CuspForm.peterssonInnerCosets` (`TauCeti/NumberTheory/ModularForms/Petersson/FiniteIndex.lean`):
  the Petersson product on cusp forms of a finite-index level `Γ ≤ SL₂(ℤ)`.
  `HeckeRing.GL2.exists_peterssonOrthonormalBasis_eigenformAwayFromLevel`
  (`TauCeti/NumberTheory/ModularForms/Petersson/Eigenbasis.lean`): each fixed-character cusp space
  `S_k(N, χ)` has a finite Petersson-orthonormal basis of eigenforms of the Hecke operators prime to
  `N`, which at `N = 1` are all Hecke operators. `HeckeRing.GL2.Newform`
  (`TauCeti/NumberTheory/ModularForms/Newforms/Newform.lean`): a good Hecke eigenform in the new
  subspace normalized by `a₁ = 1`, bundled with its character and its eigenvalues at the indices
  prime to `N`. `HeckeRing.GL2.Newform.basis`
  (`TauCeti/NumberTheory/ModularForms/Newforms/OrthogonalBasis.lean`): the newforms of level `N` and
  weight `k` form a basis of the new subspace `S_k(Γ₁(N))ⁿᵉʷ`. `TauCeti.cuspFormsNew_one`
  (`TauCeti/NumberTheory/ModularForms/Newforms/Basic.lean`): at level one the new subspace is all of
  `S_k(Γ₁(1))`. `TauCeti.Gamma1_one_map_eq_SL`
  (`TauCeti/NumberTheory/ModularForms/CongruenceSubgroups/Basic.lean`): the image of `Γ₁(1)` in
  `GL₂(ℝ)` is the full modular group, the level of Mathlib's level-one forms. Together they give, at
  level one, a basis of `S_{w+1}(SL₂(ℤ))` indexed by its normalized eigenforms, used in §§2.20–2.21;
  the cuspidal representation attached to each newform is AutomorphicFormsOnReductiveGroups §7.2. The
  eigenvalues stored in a `HeckeRing.GL2.Newform` are those of the Hecke-ring elements; their
  comparison with the classical operators `T_n` is not part of these declarations.

### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups

- §2.5: the Weil groups `W_ℝ` and `W_ℂ` and the bijection `recGL` between irreducible
  Harish-Chandra modules of `GL_n(ℝ)` and `n`-dimensional semisimple representations of `W_ℝ`.
  §2.2: Harish-Chandra finiteness. §2.4: discrete series of real reductive groups.
- §§3.2, 3.4, 3.5 and 4.2: automorphic representations, restricted tensor products, Flath
  factorization with spherical local components, and cuspidal occurrences; specialized here to
  `PGL_m` over `ℚ` with every finite component spherical.
- §5.1: the algebraicity conventions, including Chenevier–Taïbi's `IsAlgebraicCT`; §5.5: Clozel
  purity for algebraic cuspidal representations of `GL_n`.
- §§6.7 and 6.8: holomorphic discrete series and coherent packets of `GSp_{2g}`, and the scalar
  holomorphic discrete series of `Sp_{2n}(ℝ)`.
- What AutomorphicFormsOnReductiveGroups must provide (gap:sp2g-lowest-weight-modules): for every
  dominant `k = (k₁ ≥ ⋯ ≥ k_g ≥ 0)` the irreducible unitary lowest-weight module `ρ_k` of
  `Sp_{2g}(ℝ)` with lowest `K`-type of highest weight `k`, the Enright–Howe–Wallach criterion that
  it exists exactly when `k_g ≥ g − u − v/2` (with `u = #{i : k_i = k_g}`, `v = #{i : k_i = k_g + 1}`),
  its infinitesimal character `0, ±(k_i − i)`, and its identification with the holomorphic discrete
  series when `k_g > g`.
- §§7.2 and 7.2a: the `GL₂` adelization of elliptic newforms and the shared adelic-lift predicate.
- What AutomorphicFormsOnReductiveGroups must provide (gap:siegel-adelic-lift): the `Sp_{2g}`
  analogue of §7.2a at level one, identifying square-integrable vector-valued Siegel modular forms of
  weight `k` for `Sp_{2g}(ℤ)` with `(𝔤, K)`-homomorphisms from `ρ_k` into the square-integrable
  automorphic forms of `Sp_{2g}` fixed by `Sp_{2g}(Ẑ)`, compatibly with Hecke operators and with
  cusp forms going to cuspidal automorphic forms.
- §§7.4–7.5: algebraic modular forms for groups compact at infinity with their coefficient
  action, Hecke operators, finite stabilizers and automorphic realization.

### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors

- Conventions and §AL.1.4: the factors `Γ_ℝ` and `Γ_ℂ` with the normalization above, and the
  archimedean standard epsilon factor with `ε(1) = 1`, `ε(sgn) = i` and `ε(I_w) = i^{w+1}`
  (§AL.1.4.3).
- §AL.3.2.3: at a finite place where both representations are unramified, with unitary-normalized
  Satake roots `α_1, …, α_n` and `β_1, …, β_m`, the Rankin–Selberg factor is
  `∏_{i,j} (1 − α_iβ_j p^{−s})^{−1}`. §AL.3.3.8: the Jacquet–Shalika bound
  `p^{−1/2} < |α_i| < p^{1/2}` for every unitary-normalized Satake root of a unitary cuspidal
  representation at an unramified place; it does not assert temperedness.
- §AL.3.6: continuation of `Λ(s, π × π′)`, simple poles exactly at `s = 0, 1` when `π′ ≅ π^∨` up to
  a unitary norm twist (§AL.3.6.1), the functional equation (§AL.3.6.2) and boundary nonvanishing
  (§AL.3.6.3); §AL.3.9.2: the predicate of boundedness on vertical strips of finite width, which a
  function with a pole in the strip fails; §AL.3.9.4, its Rankin–Selberg instance: for unitary
  cuspidal `π, π′` of any ranks the completed `Λ(s, π × π′)` is bounded on every vertical strip of
  finite width outside fixed neighbourhoods of its poles; §AL.3.7: strong multiplicity one for
  cuspidal representations and for isobaric sums.

### From TauCetiRoadmap.AnalyticNumberTheoryPartI

- §1.3: the admissible test-function class `WeilTestFunction c F` for `c ≥ 0`, with its
  monotonicity in `c`; §1.8: Weil's explicit formula in Mestre's formalism for two completed
  functions with finitely many poles, each bounded in vertical strips of finite width after its
  singular parts are removed, gamma factors `∏ Γ(a_i s + b_i)` and Euler products on `Re s > 1 + c`
  whose roots satisfy `|α_i(p)| ≤ p^c`, for a test function admissible for `c`, with the zeros and
  poles of `−c ≤ Re s ≤ 1 + c` summed by symmetric heights. The Rankin–Selberg application in §2.6
  is a specialization of that statement with `c = 1`: by §§AL.3.2.3 and AL.3.3.8 of
  AutomorphicLFunctionsAndLocalFactors every root of the Euler factor of a pair of level-one
  cuspidal representations at `p` has absolute value below `p^{1/2} · p^{1/2} = p`; no Ramanujan
  bound is assumed.

### From TauCetiRoadmap.SmallRamificationAndAbelianVarietyBaseCases

- §1.5: the kernel `odlyzkoKernel`, `g(x) = (1 − |x|) cos(πx) + sin(π|x|)/π` on `[−1, 1]` and `0`
  outside, as the convolution square `2(u ∗ u)` of `u = cos(πx)·1_{[−1/2, 1/2]}`: even, `g(0) = 1`,
  nonnegative, positive definite, of class `C¹`, with integral `4/π²` over the positive half-line.
- §1.6: for an even continuous compactly supported nonnegative positive definite `f` and
  `F(x) = f(x)/cosh(x/2)`, the transform `Φ(s) = ∫ F(x) e^{(s − 1/2)x} dx` has nonnegative real part
  for `0 ≤ Re s ≤ 1`.
- §1.7: `poitouTestFunction b x = g(x/b)/cosh(x/2)`, even, equal to `1` at `0`, vanishing for
  `|x| ≥ b`, nonnegative and continuously differentiable. With `b = ℓ` this is the function `F_ℓ` of
  §2.2, and §§1.5–1.6 give (POS) for it.

### From TauCetiRoadmap.AutomorphicSpectralTheory

- §§4.4–4.5: the residual and discrete spectrum and finite multiplicities at fixed level, finite
  `K`-types and fixed infinitesimal character. §4.10: Wallach's criterion that discrete
  automorphic representations tempered at infinity are cuspidal.
- §§6.9, 6.17, 6.19 and 6.20: invariant orbital integrals, the trace formula for compact
  quotients with centralizer volumes, Euler–Poincaré test functions and Arthur's `L²`-Lefschetz
  formula for Hecke operators, with residual spectrum included.
- What AutomorphicSpectralTheory must provide (gap:gross-volume-rationality): for the centralizer
  `H` of a semisimple element of finite order in a split classical group over `ℚ`, with Euler–Poincaré
  measure at infinity and the measures giving `H(ℤ_p)`-type maximal compact subgroups volume one at
  finite places, the rationality of the global volume of `H(ℚ)\H(𝔸)` through Gross's motive of `H`
  and the values of its Artin `L`-functions at non-positive critical integers.

### From TauCetiRoadmap.ModularityAndLanglandsExtensions

- Exact supplier contracts: the standing premises (the twisted weighted fundamental lemma and the
  trace inputs) under which its Layer 3 is stated; this roadmap carries them as hypotheses.
- §3.4: the symplectic or orthogonal type of a self-dual cuspidal representation.
- What ModularityAndLanglandsExtensions must provide (gap:same-type-pair-root-number): for unitary
  self-dual cuspidal representations `π` of `GL_n(𝔸_ℚ)` and `π′` of `GL_m(𝔸_ℚ)` of the same type
  (both orthogonal or both symplectic), the global root number `ε(1/2, π × π′)` equals `1` (Arthur,
  Theorem 1.5.3(b)).
- §3.8: discrete global Arthur parameters `ψ = ⊞ π_i[d_i]` of `Sp_{2n}`, `SO_{2n+1}` and `SO_{2n}`,
  their component groups `S_ψ` and the epsilon character `ε_ψ`, and their localization `ψ_v` at a place
  `v`, a parameter into the `L`-group of `G` whose standard representation is `⊕ rec(π_{i,v}) ⊗ ν_{d_i}`;
  for a simple generic parameter `π` at `v = ∞` this says that `L(π∞)` factors through the dual group
  of `π`'s type, the input of §1.8. §3.15: local Arthur packets with
  their pairings, under a fixed Whittaker datum. §3.17: Arthur's multiplicity formula. §§3.20–3.21:
  Adams–Johnson parameters and the identification of real Arthur packets of cohomological
  parameters with Adams–Johnson packets. §3.22: the Mœglin–Renard criterion for a scalar unitary
  lowest-weight module of `Sp_{2g}(ℝ)` to lie in a real Arthur packet, with multiplicity one.

### From TauCetiRoadmap.AutomorphicBundles

- §§11.1–11.2: classical automorphic forms and cusp forms as sections over toroidal models, with
  cusp forms the kernel of restriction to the boundary; §11.9: the comparison of geometric and
  analytic classical forms; §11.16: the Siegel coefficient `S_a(ω) ⊗ det(ω)^{λ_g}` attached to a
  dominant weight. At level `Sp_{2g}(ℤ)` these give `M_k(Γ_g)` and `S_k(Γ_g)`.
- §§12.10, 12.11, 12.13 and 12.15: cuspidality through boundary restrictions, geometric Hecke
  operators including at non-neat level, and Fourier–Jacobi expansions with vector coefficients.

### From TauCetiRoadmap.MetaplecticAutomorphicForms

- §§0.15 and 2.4c: the Schrödinger model and the Weil representation; §3.1: the
  orthogonal–symplectic dual pair; §§3.4–3.5: big and small theta modules; §3.7: Howe duality;
  §3.10: first occurrence in a Witt tower; §3.21: Rallis's unramified computation of the Satake
  parameters of a theta lift; §5.1: the theta kernel; §5.6: the global theta lift.
- §6.14: the global theta nonvanishing criterion.
- What MetaplecticAutomorphicForms must provide (gap:boecherer-theta-image): Böcherer's criterion
  (Böcherer 1989, Theorem 5) that a Siegel cusp eigenform `F` of weight `k = n/2 + ν` for
  `Sp_{2g}(ℤ)` lies in the image of the theta map with pluriharmonic coefficients of determinant
  weight `ν` from the even unimodular lattices of rank `n` exactly when
  `γ_g^k(s) C_g(n/2 + s, ν) L(n/2 − g + 2s, F, St) / ω_g(n/2 + 2s)` has a finite nonzero value at
  `s = 0`, in the normalization of §6.12.

### From TauCetiRoadmap.SymplecticReidemeisterTorsionModSquares

- §4.1: the Zassenhaus formula `zassenhaus_primary_formula`. For a finite-dimensional
  nondegenerate quadratic form `q` over a field `K` in which `2` is invertible and every isometry
  `γ ∈ O(q)`, with `N = dim V`, `V₋ = ker(γ + 1)^N` and `U = im(γ + 1)^N`, the spinor norm
  `CliffordAlgebra.orthogonalSpinorNorm` of `γ` is the class of `disc(V₋) · det((1 + γ)/2 | U)`, where
  `disc(V₋)` is the Gram determinant of a basis of `V₋` for the associated bilinear form
  `B(x, x) = q(x)`; no determinant-one or even-dimension hypothesis is made. §4.6 translates it into
  the characteristic-polynomial form of Chenevier–Taïbi.

### From TauCetiRoadmap.GeometryOfNumbersAndQuadraticArithmetic

- §2.4: integral genus, proper spinor genus and spinor-norm images of unimodular stabilizers.
  §2.4.2: for a nondyadic nonarchimedean local field with valuation ring `R` and a nondegenerate
  unimodular lattice of rank at least two, the spinor-norm image of the proper stabilizer is
  `R^× K^{×2}`. For `p` odd a regular quadratic form on `ℤ_pⁿ` is unimodular for its polar form
  (`det(c + cᵀ) = ±1` or `±2`, a unit), and in rank one `SO(q)` is trivial, so §2.4.2 supplies the
  odd primes of §4.7.
- What GeometryOfNumbersAndQuadraticArithmetic must provide (gap:integral-spinor-norm-units): for
  `p = 2` and every regular quadratic form `q` on `ℤ₂ⁿ` (nondegenerate, or of odd rank with unit
  half-discriminant), the spinor norm of every element of `SO(q)(ℤ₂)` lies in the image of `ℤ₂^×`
  in `ℚ₂^×/ℚ₂^{×2}`, proved by lifting to `GSpin(q)(ℤ₂)`.

### From TauCetiRoadmap.OrthogonalTamagawaAndLatticeMass

- §3.1: the mass of even unimodular lattices of rank `n ≡ 0 mod 8`. §4.1: the two classes in rank 16
  and their automorphism orders. §4.2: the twenty-four classes in rank 24, the uniqueness of the
  rootless class, and `|O(Leech)| = 8315553613086720000`.

### From TauCetiRoadmap.ComputationalNumberTheory

- §§4.1–4.7: rational interval and complex-box arithmetic. §§4.17, 4.17a and 4.18: the closed
  formulas, digamma and trigamma remainders and rational enclosures of the eight scalars
  `F̂(0)`, `F̂(i/(4π))`, `J_F(I_w)`, `J_F(1 − e)`, `Ĝ(0)`, `Ĝ(i/(4π))`, `J_G(I_w)`, `J_G(1 − e)` for the
  Odlyzko functions. §§4.26 and 4.31: integral-coordinate comparison for ellipsoids and the
  effective vectors of an exact ellipsoid cover. §§4.29–4.34: rational Gram witnesses, negativity
  of every enclosed Gram matrix, validity of a witness and of a finite family, and the
  multiplicity lift `x_{i,r} = t_i/m_i`. §5.1: interpretation of finite families. This roadmap
  proves that the scalars computed there are the intrinsic quantities of §2.3.

### From TauCetiRoadmap.IntegralLattices, Rank24LatticeConstructions, ThetaSeries, AlgebraicCodingTheory, SporadicOrders and OrthogonalSpinGroups

- Completed/IntegralLattices Layer 1: the lattice carrier, Gram matrices, isometries and their Tau
  Ceti declarations listed above.
- IntegralLattices §4G: integral lattices `L`, `M` on the same rational space are `p`-neighbours when
  `[L : L ∩ M] = [M : L ∩ M] = p`; the relation is symmetric, neighbours have equal determinants and
  the same genus when `p ∤ 2 det L`, and a neighbour is constructed from an isotropic vector mod `p`.
  No enumeration and no connectivity of the neighbour graph is supplied; §6.3 uses only the
  relation.
- Rank24LatticeConstructions Layer 6: the Leech lattice by Construction B and an odd shift, and its
  absence of roots.
- ThetaSeries Layer 1 (Poisson summation for a lattice), Layer 5 (genus-one theta series of an
  even unimodular lattice is a level-one modular form) and Layer 8 (`Θ_{E₈} = E₄`,
  `Θ_{Leech} = E₄³ − 720Δ`).
- AlgebraicCodingTheory Layer 5: the extended binary Golay code `G₂₄`.
- SporadicOrders Layer 1: the permutation model and order `244823040` of `M₂₄`.
- OrthogonalSpinGroups Layer 1: the spinor norm `θ : SO(Q)(K) → K^×/K^{×2}` of a nondegenerate
  quadratic space over a field, which at the pin is Tau Ceti's `CliffordAlgebra.orthogonalSpinorNorm`
  listed above.

### From TauCetiRoadmap.CFSGBasicProperties

- P2-L: the explicit equivalence, compatible with the actions on the 24 coordinates, between the
  `M₂₄` model of its P1 and the full permutation automorphism group of the extended binary Golay code
  of AlgebraicCodingTheory Layer 5; the Conway coordinates of the Leech lattice of
  Rank24LatticeConstructions Layer 6, with the explicit coordinate equivalence, the form-preserving
  comparison and its norm-scaling factor; Conway's group `Co₀ = O(Leech)`, its Conway generators and
  the proof that they generate it, its order, and the simplicity of `Co₁ = Co₀/{±1}`.
- What CFSGBasicProperties must provide (gap:conway-group-average-charpoly): the average
  characteristic polynomial of Conway's group on `Leech ⊗ ℚ`,
  `(1/|O(Leech)|) Σ_{γ ∈ O(Leech)} det(t − γ) = t²⁴ + t¹⁶ + t¹² + t⁸ + 1`, from the conjugacy classes
  of `O(Leech)` and the character of its 24-dimensional representation.

### From TauCetiRoadmap.RepresentationTheory and ReductiveGroups

- LieHighestWeight Layer 6: the Weyl character formula, Weyl dimension formula and Kostant
  multiplicity formula. ClassicalGroups Layers 3–5: highest weights of `SO_n`, `O_n` and `Sp_{2n}`,
  their characters and dimension formulas.
- ReductiveGroups Layer 9: pinned Chevalley–Demazure group schemes over `ℤ`.
- What ReductiveGroups must provide (gap:split-orthogonal-regular-form): the identification of the
  pinned Chevalley–Demazure groups of types `B_n` and `D_n` over `ℤ` with the special orthogonal
  group schemes of the regular forms `x₁x_{2n+1} + ⋯ + x_nx_{n+2} + x_{n+1}²` (rank `2n + 1`) and
  `x₁x_{2n} + ⋯ + x_nx_{n+1}` (rank `2n`) respectively, compatible with points over `ℤ_2`.

## How to read the build

Layer 1 fixes the objects: the level-one algebraic cuspidal spectrum, its archimedean parameters
and the weight dictionary between highest weights of classical groups and infinitesimal
characters. Layer 2 proves the Rankin–Selberg explicit formula for that spectrum and its
positivity on the nonnegative cone, and turns it into finite quadratic-form criteria that exclude
hypothetical representations; it ends with Miller's theorem and the repeated-weight `PGL₄`
vanishing. Layer 3 specializes Arthur's classification at level one: parameters, component
groups, the holomorphic packet characters and the relation `EP = κ·N⊥ + R` between Euler–Poincaré
characteristics and self-dual cuspidal counts. Layer 4 evaluates the geometric side of the trace
formula: masses of torsion classes, the spinor obstruction, exact characters, and the recovery of
all masses through `SO₁₇` and `Sp₁₆` in the order coarse tables, then the 27 known classes, then
refined tables. Layer 5 classifies cuspidal representations of motivic weight at most 24 by
combining Layers 2 and 4. Layer 6 provides the Siegel side: the Siegel operator, the theta maps
attached to even unimodular lattices, first occurrence and the Rallis relation, from earlier
lattice results that do not depend on Layer 7. Layer 7 counts Siegel eigenforms through their
standard parameters, and Layer 8 realizes them by theta series and proves the stable statements.

## Layer 1: level-one cuspidal forms and classical infinitesimal characters

### 1.1 The level-one algebraic cuspidal spectrum

Define `Π_alg` as the disjoint union over `m ≥ 1` of the isomorphism classes of irreducible
unitary cuspidal automorphic representations `π` of `PGL_m(𝔸_ℚ)` that are unramified at every
prime (each `π_p` has a nonzero `PGL_m(ℤ_p)`-fixed vector) and algebraic in Chenevier–Taïbi's sense:
the Weil parameter `L(π∞)` is a direct sum of characters `z ↦ z^p z̄^q` of `ℂ^×` with `p, q ∈ ½ℤ`
and `p − q ∈ ℤ`, trivial on `ℝ_{>0}`, on which `−1 ∈ ℝ^×` acts by a scalar (CT20 §1.2 and §2.1). The
trivial representation of `PGL₁` belongs to `Π_alg`. Write `rank(π) = m`, `π^∨` for the
contragredient, and `c_p(π)` for the Satake conjugacy class in `GL_m(ℂ)`. This is a predicate on the
cuspidal spectrum of AutomorphicFormsOnReductiveGroups, not a second notion of automorphic
representation.

- The rank is the common dimension of the Weil parameter `L(π∞)` and of the Satake classes.
- The contragredient preserves `Π_alg`, the rank and the level, and is an involution on classes.
- For every prime `p`, `π_p` is spherical, and `c_p(π)` is an unordered multiset of `m` nonzero complex
  numbers, without a chosen order, whose product is `1` (the central character is trivial) and each of
  which satisfies the Jacquet–Shalika bound `p^{−1/2} < |α| < p^{1/2}` (AutomorphicLFunctionsAndLocalFactors
  §AL.3.3.8). By unitarity `π^∨ ≅ π̄`, so `c_p(π^∨)` is both the multiset of inverses and the multiset of
  complex conjugates of `c_p(π)`. No finite-place temperedness is asserted: the purity of §1.5 concerns
  the archimedean parameter only.
- The adelic description and the description by level-one cuspidal functions on
  `PGL_m(ℤ)\PGL_m(ℝ)` give the same set.

*Needs:* AutomorphicFormsOnReductiveGroups §§2.5, 3.5, 4.2 and 5.1; AutomorphicLFunctionsAndLocalFactors
§AL.3.3.8.

**Checks.**

- The trivial representation of `PGL₁` belongs to `Π_alg`, has rank one and is self-dual.
- Negative control for reading unitarity as temperedness: the unramified complementary series of
  `PGL₂(ℚ₂)` with Satake roots `2^{1/4}, 2^{−1/4}` is unitary and generic with product of roots `1`, yet
  its larger root has absolute value `2^{1/4} ≈ 1.1892`, not `1`. It satisfies the Jacquet–Shalika bound
  `2^{−1/2} ≈ 0.7071 < 1.1892 < 1.4142 ≈ 2^{1/2}`, and for two such local components the roots `α_i^{−1}β_j`
  of the Rankin–Selberg Euler factor have absolute value at most `2^{1/2} < 2 = p`, as §2.6 needs.
- The representation attached to `Δ ∈ S₁₂(SL₂(ℤ))` has `L(π∞) = I₁₁` and unitary weights `±11/2`;
  the unnormalized weights `0` and `11` belong to the twist by `|·|^{11/2}`, which is not unitary
  and is not in `Π_alg`.
- A cuspidal representation with a ramified prime is excluded even when its archimedean component
  is algebraic: the representation attached to a newform of level 11 and weight 2 is not in `Π_alg`.

### 1.2 The real Weil representation ring

Define `K∞` as in the Conventions, with additive basis `1, e, I_w` (`w ≥ 1`). Prove the
multiplication rules `e² = 1`, `e I_a = I_a` and `I_a I_b = I_{a+b} + I_{|a−b|}` for `a, b ≥ 1`, with
`I₀ = 1 + e` (CT20 §2.1). The effective cone consists of the elements with nonnegative integral
coefficients. For `w ≥ 0` let `K∞^{≤w}` be the subgroup spanned by the `I_v` with `0 < v ≤ w` and
`v ≡ w mod 2`, together with `1` and `e` when `w` is even. It is a subgroup, not a subring, and
`K∞^{≤w} ⊂ K∞^{≤w+2}`.

- Two elements of `K∞` are equal exactly when their coefficients on `1, e, I_w` agree.
- `I_a I_b = I_{a+b} + I_{|a−b|}` for all `a, b ≥ 1`, with the convention `I₀ = 1 + e` when `a = b`.
- An element is effective exactly when every basis coefficient is a nonnegative integer.
- `K∞^{≤w}` contains exactly the `I_v` with `0 < v ≤ w`, `v ≡ w mod 2`, and contains `1` and `e`
  exactly when `w` is even.
- `K∞` is identified with the Grothendieck ring of the semisimple representations of `W_ℝ` of
  AutomorphicFormsOnReductiveGroups §2.5 that are trivial on `ℝ_{>0}`.

*Needs:* AutomorphicFormsOnReductiveGroups §2.5.

**Checks.**

- `I₁² = I₂ + 1 + e`, of dimension four; replacing `I₀` by `1` would give dimension three.
- `e² = 1` and `e I₇ = I₇`, while `e ≠ 1`.
- `I₂₃² ∋ I₄₆`, so `K∞^{≤23}` is not closed under multiplication.
- `I₁ ∈ K∞^{≤23}`, while `I₂ ∉ K∞^{≤23}` and `1 ∉ K∞^{≤23}`; `I₂₂` and `e` lie in `K∞^{≤22}`.

### 1.3 Integral classical groups and their normalizations

The integral model of `Sp_{2n}` is `TauCeti.Symplectic.groupScheme` with its matrix points. The
integral models of `SO_{2n+1}` and `SO_{2n}` are the special orthogonal groups of the regular
forms `x₁x_{2n+1} + ⋯ + x_nx_{n+2} + x_{n+1}²` and `x₁x_{2n} + ⋯ + x_nx_{n+1}`, compared with the
Chevalley–Demazure groups of types `B_n` and `D_n` (CT20 §1.4 and §3.1). Level one means `G(Ẑ)` for
these models, including `p = 2`.

- The permitted groups for the mass computation are `Sp_{2n}`, `SO_{2n+1}` and `SO_{4n}`; `SO_{4n+2}`
  has no discrete series and is excluded.
- For `R = ℤ_p`, the `R`-points of the special orthogonal model are the matrices of determinant one
  preserving the quadratic form; this is the set `specialOrthogonalPoints` of §4.7 for the
  corresponding Gram data.

*Needs:* `TauCeti.Symplectic.groupScheme`, `TauCeti.Symplectic.pointsMulEquiv`,
`TauCeti.Symplectic.instSmoothCoordinateHopfAlgebra`; ReductiveGroups Layer 9 with the
identification requested there.

**Checks.**

- `Sp₂ = SL₂` is permitted and `SO₆` is not.
- The odd-rank form `x₁x₃ + x₂²` has polar Gram determinant `−2`: it is regular (unit
  half-discriminant) although its polar form is not a perfect pairing over `ℤ₂`. Defining
  regularity by a perfect polar pairing would wrongly exclude every odd-rank model.
- `SO(x₁x₂)(ℤ_p)` is `{diag(t, t⁻¹) : t ∈ ℤ_p^×}`, while its `ℚ_p`-points allow `t ∈ ℚ_p^×`: the
  rational element `diag(p, p⁻¹)` is not of level one, so level one is not a rational notion.

### 1.4 Dimension, determinant, gamma and epsilon on K∞

On `K∞` use the additive dimension (`dim 1 = dim e = 1`, `dim I_w = 2`), the multiplicative
determinant (`det I_w = e^{w+1}`), and the additive weights (`0` for `1` and `e`, `±w/2` for `I_w`).
Extend `Γ(s, −)` multiplicatively from `Γ(s, 1) = Γ_ℝ(s)`, `Γ(s, e) = Γ_ℝ(s + 1)` and
`Γ(s, I_w) = Γ_ℂ(s + w/2)`, and `ε(−)` multiplicatively from `ε(1) = 1`, `ε(e) = i`,
`ε(I_w) = i^{w+1}` (CT20 §2.1). The epsilon factor is complex-valued.

- `dim(UV) = dim U · dim V`, and `dim` is additive.
- `Γ(s, U + V) = Γ(s, U) Γ(s, V)` on the common domain, and likewise for `ε`.
- These agree with the archimedean factors of AutomorphicLFunctionsAndLocalFactors §AL.1.4 under
  `recGL`, including the factor `2` in `Γ_ℂ`.

*Needs:* §1.2; AutomorphicLFunctionsAndLocalFactors Conventions and §AL.1.4.

**Checks.**

- `Γ(s, I₀) = Γ_ℝ(s) Γ_ℝ(s + 1)` and `ε(I₀) = i`; by the duplication formula this equals
  `Γ_ℂ(s)`, consistent with `I₀ = Ind(trivial)`.
- `I₁₁` has dimension 2, determinant `e¹² = 1` and epsilon `i¹² = 1`.
- `ε(1·e) = i` is not real; a real Gram matrix cannot accept the pair `(1, e)` with both
  self-duality flags active without the guard of §2.9.

### 1.5 Purity, symmetric weights and duality

Prove: for `π ∈ Π_alg`, `ℝ_{>0}` acts trivially on `L(π∞)`, `−1` acts by a scalar, and all weights lie
either in `ℤ` or in `½ + ℤ`; the weight multiset is stable under negation, and `π^∨` has the same
archimedean parameter. The motivic weight `w(π)`, twice the largest weight, is a nonnegative
integer (CT20 §1.2 and §2.1). These are statements about infinity types; they do not imply
`π ≅ π^∨`.

*Needs:* §§1.1 and 1.4; AutomorphicFormsOnReductiveGroups §5.5.

**Checks.**

- `w(Δ₁₁) = 11` and `w(Sym²Δ₁₁) = 22`.
- A non-self-dual class and its contragredient are two distinct points of the same infinity-type
  fibre; the statement does not identify them.
- The trivial representation has motivic weight `0`.

### 1.6 Symmetric weight vectors and regularity

Define `W_m` as the set of decreasing vectors `w ∈ (½ℤ)^m` with `w_i − w_j ∈ ℤ` and
`w_i = −w_{m+1−i}`, recorded by doubled integral coordinates. It is regular when, for every `i < j`,
either `w_i ≠ w_j`, or `m ≡ 0 mod 4`, `(i, j) = (m/2, m/2 + 1)` and `w_i = w_j = 0` (CT20 §1.2 with the
ordered quantifier, and §2.2). Prove that an effective `U ∈ K∞` of dimension `m`, determinant `1`
and with the scalar action of `−1` is determined by its weight vector when that vector is regular.

- `W_m` is in bijection with decreasing symmetric integral vectors whose coordinates share one
  parity.
- The only repeated coordinates of a regular vector are the central double zero in dimension
  divisible by four.
- Regular effective parameters of determinant one with the scalar action of `−1` and the same
  weights are equal.

*Needs:* §§1.4–1.5.

**Checks.**

- `(1, 0, 0, −1)` is regular in `W₄`; an unordered reading of the exception would reject it.
- `(1, 1, −1, −1)` is not regular.
- `(1/2, 0, −1/2)` is symmetric but fails the integral-difference condition.
- The distinct parameters `3·1` and `1 + 2e` have determinant one and the same three zero weights;
  both are nonregular, so a reconstruction statement without regularity is false.

### 1.7 Counts at a fixed infinity type

For `w ∈ W_m` define `N(w)` as the number of `π ∈ Π_alg` of rank `m` with weight vector `w`, and
`N⊥(w)` as the number of self-dual ones; for `U ∈ K∞` define `N(U)` by fixing the whole parameter.
Prove that these sets are finite (CT20 Problem 1 and §2.4.2), that `N⊥ ≤ N`, and that `π ↦ π^∨` acts
on each fibre with fixed points exactly the self-dual classes, so `N − N⊥` is even.

- Each fibre at fixed rank and weight vector is finite.
- `N⊥(w) ≤ N(w)` and `N(w) − N⊥(w)` is even.
- On the regular determinant-one stratum `N(w) = N(U)` for the parameter `U` of §1.6; at nonregular
  weights the zero-character split of `U` is retained.

*Needs:* §§1.1 and 1.6; AutomorphicSpectralTheory §4.5.

**Checks.**

- `N((0)) = N⊥((0)) = 1` in rank one.
- The two eigenforms in `S₂₄(SL₂(ℤ))` give `N((23/2, −23/2)) = 2`, not `1`.
- Two mutually dual non-self-dual classes contribute `2` to `N` and `0` to `N⊥`.

### 1.8 Self-dual type and pair root numbers

Prove: at level one the global root number of a pair is `ε(L(π∞) L(π′∞))` (CT20 §2.2 and §5.1); and,
under the standing premises of the Conventions, a self-dual `π ∈ Π_alg` some weight of which has
multiplicity one in `L(π∞)` is symplectic when `w(π)` is odd and orthogonal when `w(π)` is even (CT20
§2.2, last paragraph, p. 14; used for a simple `I_w` in the proof of Proposition 4.1, p. 37), and for
self-dual `π, π′` of the same type `ε(π × π′) = 1`. For opposite types the sign is computed, and may be
`−1`. A regular `π` is the special case: it has a weight of multiplicity one, since a regular vector
repeats only a central zero, and only in rank divisible by four, where nonzero weights also occur.

Route for the type: by ModularityAndLanglandsExtensions §§3.4 and 3.8 the archimedean localization of
the simple generic parameter of `π` takes values in the dual group of `π`'s type, so `L(π∞)` preserves
a nondegenerate alternating form when `π` is symplectic and a nondegenerate symmetric one when `π` is
orthogonal. The irreducible constituents `1`, `e`, `I_v` of an element of `K∞` are self-dual and pairwise
non-isomorphic, so the form restricts to a nondegenerate invariant form on each isotypic component. A
weight `v/2 > 0` of multiplicity one is carried by a single copy of `I_v`, whose invariant forms are the
multiples of one form, alternating for odd `v` (`det I_v = 1`) and symmetric for even `v`
(`det I_v = e`); a weight `0` of multiplicity one is carried by a single character `1` or `e`, which has
only symmetric invariant forms. All `v` occurring have the parity of `w(π)` (§1.5).

*Needs:* §§1.1, 1.4–1.6; ModularityAndLanglandsExtensions §3.4, §3.8 (localization of a discrete
parameter at a place) and the root-number statement requested there; AutomorphicLFunctionsAndLocalFactors
§AL.3.6.2.

**Checks.**

- `ε(Δ₁₁ × Δ₁₅) = ε(I₁₁ I₁₅) = ε(I₂₆ + I₄) = i²⁷ · i⁵ = 1`, as two symplectic classes require.
- `ε(Δ₁₇ × 1) = ε(I₁₇) = i¹⁸ = −1`, an opposite-type pair with sign `−1`.
- A nonregular parameter with a simple weight: `U = I₁ + 2I₂₃` has dimension `2 + 4 = 6`, determinant
  `e² · e⁴⁸ = 1`, simple weights `±1/2` and repeated weights `±23/2`. A self-dual class with this parameter
  is symplectic, as `w = 23` is odd: the lone `I₁` admits only alternating invariant forms. A criterion
  stated for regular classes alone says nothing about it.
- No simple weight: for `U = 2I₁ = I₁ ⊗ ℂ²` every weight has multiplicity two, and `U` preserves both
  an alternating form (alternating on `I₁` times symmetric on `ℂ²`) and a symmetric one (alternating times
  alternating), so the archimedean parameter does not decide the type and none is asserted.

### 1.9 Highest weights of classical groups and dual infinitesimal weights

For dominant integral `λ` of a permitted `G` define `w(λ) ∈ W_{m_G}` with positive coordinates
`λ_i + n + 1 − i` (and an extra `0`) for `Sp_{2n}`, `λ_i + n + 1/2 − i` for `SO_{2n+1}`, and
`|λ_i| + n − i` for `SO_{2n}` (only `λ_n` may be negative there), completed by their negatives (CT20
§1.4). Prove that `w(λ)` is regular, and that the three images are exactly the following sets of
**regular** vectors of `W_m`, on which the map has an inverse: the regular integral vectors of odd length
`m ≥ 3` (from `Sp_{m−1}`), the regular non-integral vectors of even length (from `SO_{m+1}`), and the
regular integral vectors of length divisible by four (from `SO_m`, on outer orbits, normalizing
`λ_n ≥ 0`); rank one is treated separately. For such a regular vector the first `n` coordinates
`w₁, …, w_n` (`n` the rank of `G`) decrease by at least one at each step and `w_n` is at least `1`, `1/2`
or `0` in the three cases, so subtracting `(n, n − 1, …, 1)`, `(n − 1/2, …, 1/2)` or
`(n − 1, …, 1, 0)` gives a dominant `λ`.

- `w(λ)` is regular.
- On each of the three images the inverse is explicit; in type `D` it is defined on outer orbits.
- A nonregular vector of `W_m` is not in any image, whatever its integrality and length.
- `(d_G, m_G)` takes the three values of the Conventions.

*Needs:* §§1.3 and 1.6; LieHighestWeight Layer 6; ClassicalGroups Layer 3.

**Checks.**

- For `Sp₂` and `λ = k`, `w = (k + 1, 0, −k − 1)` and `d_G = 2`.
- For `SO₃` and `λ = k`, `w = (k + 1/2, −k − 1/2)`.
- `(1, −1) ∈ W₂` has no inverse; the `SO₄` weights `(1, 1)` and `(1, −1)` have the same image.
- Negative control for regularity: `(0, 0, 0) ∈ W₃` is integral of odd length but not regular; the `Sp₂`
  inverse formula would give `λ₁ = 0 − 1 = −1`, not dominant, while `λ = 0` has image `(1, 0, −1)`.
  Likewise `(1/2, 1/2, −1/2, −1/2) ∈ W₄` is non-integral of even length but not regular, and the `SO₅`
  formula would give `λ = (1/2 − 3/2, 1/2 − 1/2) = (−1, 0)`; and `(1, 1, −1, −1) ∈ W₄` would give the
  `SO₄` weight `(1 − 1, 1) = (0, 1)`, which violates `λ₁ ≥ |λ₂|`.

### Examples

At `w = 11` the weight space contains `(11/2, −11/2)`, regular, with `N = N⊥ = 1` realized by `Δ₁₁`;
at `w = 23` the same vector shape has `N = 2`. For `Sp₂` and `λ = 10`, `w(λ) = (11, 0, −11)` and the
self-dual simple parameter with these weights would be a rank-3 orthogonal class of motivic
weight 22, which is `Sym²Δ₁₁`.

### Dependencies

AutomorphicFormsOnReductiveGroups §§2.5, 3.5, 4.2, 5.1, 5.5; AutomorphicLFunctionsAndLocalFactors
§§AL.1.4, AL.3.3.8, AL.3.6; AutomorphicSpectralTheory §4.5; ModularityAndLanglandsExtensions §§3.4, 3.8;
ReductiveGroups Layer 9; LieHighestWeight Layer 6; ClassicalGroups Layer 3; Tau Ceti's symplectic
group scheme.

## Layer 2: Rankin–Selberg positivity and exclusions

This layer owns the level-one Stark–Odlyzko method. The starting point is an intrinsic bilinear
explicit formula for the completed Rankin–Selberg functions of pairs in `Π_alg`. Its finite part is
positive semidefinite, while the zero contribution is nonnegative only on the cone of nonnegative
coefficient vectors; the resulting inequality is turned into finite minimization problems on
nonnegative unit spheres, whose negative values exclude hypothetical classes.

### 2.1 Even test functions and the positivity condition

Work with even real functions `F : ℝ → ℝ` of class `C²` with compact support. Define
`F̂(ξ) = ∫ F(x) exp(−2πixξ) dx` for `ξ ∈ ℂ`; it is entire. Say that `F` satisfies (POS) when
`F(x) ≥ 0` for real `x` and `Re F̂(ξ) ≥ 0` whenever `|Im ξ| ≤ 1/(4π)` (CT20 §2.3).

- Every such `F` satisfies `WeilTestFunction c F` of AnalyticNumberTheoryPartI §1.3 for every
  `c ≥ 0`: for `F` supported in `[−R, R]` and every `ε > 0`, `F(x) exp((1/2 + c + ε)|x|)` is a
  continuous function of bounded variation supported in `[−R, R]`, `F` is continuous, and the
  quotient `q(x) = (F(x) − F(0))/x` with `q(0) = 0` is Lipschitz on `[−R, R]` (by Taylor's formula
  with `F′(0) = 0`, which holds by evenness) and equals `−F(0)/x`, monotone on each side, for
  `|x| > R`; so `q` has bounded variation.
- `F̂(−ξ) = F̂(ξ)` and `F̂(ξ̄) = overline(F̂(ξ))`; in particular `F̂` is real on `ℝ` and on `iℝ`.
- `A_F = F̂(i/(4π)) = ∫ F(x) cosh(x/2) dx` and `B_F = F̂(0) = ∫ F(x) dx` are real.
- (POS) consists of two separate conditions, pointwise nonnegativity and real-part nonnegativity
  on the closed strip.

*Needs:* AnalyticNumberTheoryPartI §1.3; Mathlib Fourier integrals.

**Checks.**

- A zero `ρ` with `0 ≤ Re ρ ≤ 1` sits at `ξ = (1 − 2ρ)/(4πi)`, whose imaginary part
  `−(1 − 2 Re ρ)/(4π)` lies in `[−1/(4π), 1/(4π)]`.
- The conjugation identities hold for every even real integrable function: for the triangle
  function `1_{[−1,1]} ∗ 1_{[−1,1]}` (continuous but not `C²`, so outside the class) the transform is
  `sin²(2πξ)/(πξ)²` for `ξ ≠ 0` and `4 = (∫ 1_{[−1,1]})²` at `ξ = 0`, the removable value; it is real
  on `ℝ`, and at `ξ = iy` it equals `sinh²(2πy)/(πy)²` for `y ≠ 0` and `4` at `y = 0`, so it is
  positive on the whole imaginary axis. Reading the quotient at `ξ = 0` as a value of division
  (undefined, or `0` under a totalized division) contradicts the integral `4`.
- The test functions here are admissible for `c = 1`, as §2.6 needs, and not only for `c = 0`: the
  function `exp(−|x|)`, admissible for `c = 0` in AnalyticNumberTheoryPartI §1.3, fails for `c = 1`
  because `exp(−|x|) exp((3/2 + ε)|x|)` is not integrable; compact support removes every growth
  condition.
- A function whose transform is nonnegative only on `ℝ`, such as `G_ℓ` of §2.2, does not satisfy
  (POS) by definition: `Ĝ_ℓ(ξ)` for `ξ` near `i/(4π)` is not controlled by its real-axis values.

### 2.2 The Odlyzko functions

The kernel `g` is `odlyzkoKernel` of SmallRamificationAndAbelianVarietyBaseCases §1.5: with
`u(x) = cos(πx)` for `|x| ≤ 1/2` and `0` otherwise, `g = 2(u ∗ u)`, so that
`g(x) = (1 − |x|) cos(πx) + sin(π|x|)/π` for `|x| ≤ 1` and `0` otherwise; it is even, nonnegative,
positive definite, of class `C¹`, supported in `[−1, 1]`, with `g(0) = 1` and `∫_0^∞ g = 4/π²`. For
`ℓ > 0` the test function `F_ℓ(x) = g(x/ℓ)/cosh(x/2)` is `poitouTestFunction ℓ` of that roadmap's
§1.7, and (POS) for `F_ℓ` is its §1.6 together with the nonnegativity of §1.7: under
`ξ = i(s − 1/2)/(2π)` the transform `Φ(s) = ∫ F_ℓ(x) e^{(s − 1/2)x} dx` is `F̂_ℓ(ξ)`, and the strip
`0 ≤ Re s ≤ 1` is `|Im ξ| ≤ 1/(4π)`. Define here `G_ℓ(x) = g(x/ℓ)` (CL14 IX §3.16, Lemme 3.15 and
Proposition 3.17; CT20 §2.4.3 and §4.3). Prove what the supplier does not state:

- `g` is of class `C²`, with `g″(±1) = 0`: on `[0, 1]`, `g″(x) = π sin(πx) − π²(1 − x) cos(πx)`, which
  vanishes at `1` and equals `−π²` at `0`; so `F_ℓ` and `G_ℓ` lie in the class of §2.1.
- `F̂_ℓ(i/(4π)) = ∫ g(x/ℓ) dx = 8ℓ/π²`, from the half-line integral `4/π²`.
- `G_ℓ ≥ 0` and `Ĝ_ℓ ≥ 0` on `ℝ`; `Ĝ_ℓ(0) = 8ℓ/π²` and `Ĝ_ℓ(i/(4π)) = 4π²ℓ(1 + cosh(ℓ/2))/(ℓ²/4 + π²)²`.

*Needs:* §2.1; SmallRamificationAndAbelianVarietyBaseCases §§1.5–1.7.

**Checks.**

- `g(0) = F_ℓ(0) = G_ℓ(0) = 1`; dropping the factor `2` in `g = 2(u ∗ u)` would give `1/2`.
- `F_ℓ` and `G_ℓ` vanish for `|x| ≥ ℓ`, and `g` and `g′` vanish at `±1` while `g″(±1) = 0` as well,
  so both are `C²` across the boundary of the support.
- For `0 < |x| < ℓ`, `F_ℓ(x) < G_ℓ(x)` because `cosh(x/2) > 1`; exchanging the two families'
  scalar values gives wrong constants, for example `Ĝ_ℓ(i/(4π)) > 8ℓ/π² = F̂_ℓ(i/(4π))`.
- The point `ξ = i/(4π)` corresponds to `s = 1`, where `Φ(1) = ∫ F_ℓ(x) e^{x/2} dx = ∫ F_ℓ(x) cosh(x/2) dx`
  by evenness, the value `A_{F_ℓ}` of §2.1; reading the supplier's strip as `|Im ξ| ≤ 1/(2π)` would
  claim positivity at `ξ = i/(2π)`, that is at `s = 3/2`, which the supplier does not give.

### 2.3 The archimedean functional

For `U ∈ K∞` set `J_F(U) = −∫_ℝ (Γ′/Γ)(1/2 + 2πit, U) F̂(t) dt`, where `(Γ′/Γ)(s, U)` is the
logarithmic derivative of `Γ(s, U)` of §1.4, and extend `ℝ`-linearly to `K∞ ⊗ ℝ`. Define the
symmetric bilinear form `B∞^F(U, V) = J_F(UV)` (CT20 (2.3.4)).

- The integral converges for every test function of §2.1 and is real.
- `J_F(U + V) = J_F(U) + J_F(V)`, and `B∞^F` is symmetric because `K∞` is commutative.
- `J_F(I₀) = J_F(1) + J_F(e)`, and, with the leading minus sign of the definition,
  `J_F(1 − e) = −∫_ℝ (Γ_ℝ′/Γ_ℝ(1/2 + 2πit) − Γ_ℝ′/Γ_ℝ(3/2 + 2πit)) F̂(t) dt`.
- For every test function of §2.1, `J_F(1 − e) = ∫_0^∞ F(x)/(2 cosh(x/2)) dx`; in particular
  `J_F(1 − e) ≥ 0` when `F ≥ 0`. Route: for `Re s > 0` put `D(s) = Γ_ℝ′/Γ_ℝ(s) − Γ_ℝ′/Γ_ℝ(s + 1)` and
  `D₀(s) = ∫_0^∞ e^{−sx}/(1 + e^{−x}) dx`. The recurrence `Γ_ℝ(s + 2) = (s/(2π)) Γ_ℝ(s)` gives
  `D(s) + D(s + 1) = −1/s`, and `D₀(s) + D₀(s + 1) = 1/s` directly, so `D + D₀` has period `2`; for real
  `x > 0` the log-convexity of `Γ` gives `|D(x)| ≤ 1/x`, and `0 ≤ D₀(x) ≤ 1/x`, so `D + D₀` vanishes on
  `(0, ∞)`, hence on `Re s > 0` by the identity theorem. At `s = 1/2 + 2πit` this reads
  `D = −∫_0^∞ e^{−2πitx}/(2 cosh(x/2)) dx`; since `F̂` is integrable on `ℝ` (`F` is `C²` with compact
  support), Fubini and Fourier inversion for the even function `F` conclude.

*Needs:* §§1.4, 2.1; Mathlib `Complex.Gamma_add_one`, `Real.convexOn_log_Gamma` and
`Continuous.fourierInv_fourier_eq`.

**Checks.**

- `B∞^F(I₁, I₁) = J_F(I₂) + J_F(1) + J_F(e)`, by `I₁² = I₂ + I₀`.
- `J_F(1 − e)` differs from `J_F(I₀)`; using `1 + e` in place of `1 − e` changes the sign of the
  `e`-term.
- Sign witness: for the even `C²` function `F(x) = (1 − x²)³` on `|x| ≤ 1`, zero outside,
  `J_F(1 − e) = ∫_0^1 (1 − x²)³/(2 cosh(x/2)) dx ≈ +0.2254836448`, the integral of a function positive on
  `(0, 1)`, while the integral `∫_ℝ (Γ_ℝ′/Γ_ℝ(1/2 + 2πit) − Γ_ℝ′/Γ_ℝ(3/2 + 2πit)) F̂(t) dt` without the
  leading minus is `≈ −0.2254836448`; reading `J_F(1 − e)` as that unsigned integral gives the wrong sign.
- The bilinear form uses the product `UV`: `B∞^F(1, 1) = J_F(1)`, whereas the incorrect
  `J_F(U + V)` would give `J_F(2·1) = 2J_F(1)`.

### 2.4 The eight scalars

For `ℓ > 0` and an integer `w ≥ 0` prove that the eight quantities `F̂_ℓ(0)`, `F̂_ℓ(i/(4π))`,
`J_{F_ℓ}(I_w)`, `J_{F_ℓ}(1 − e)`, `Ĝ_ℓ(0)`, `Ĝ_ℓ(i/(4π))`, `J_{G_ℓ}(I_w)`, `J_{G_ℓ}(1 − e)` are given by the
closed digamma formulas of CL14 IX Proposition 3.17 (for `F_ℓ`) and CT20 Proposition 4.4 (for `G_ℓ`),
which are the formulas recorded in ComputationalNumberTheory §4.17. For `w = 0`, `I₀ = 1 + e`, so the
`w = 0` value together with `J(1 − e)` gives `J(1)` and `J(e)`. The proof expresses `J` through the
compact-support Laplace transform `Φ_F(s) = ∫ F(x) exp((s − 1/2)x) dx`, with `Φ_F(1/2) = F̂(0)` and
`Φ_F(0) = F̂(i/(4π))`, integrates the closed expression of `g` against the digamma series, and justifies
the exchanges by the tail bounds of ComputationalNumberTheory §4.17a.

*Needs:* §§2.2–2.3; ComputationalNumberTheory §§4.17 and 4.17a.

**Checks.**

- The second and fifth scalars coincide: `F̂_ℓ(i/(4π)) = Ĝ_ℓ(0) = 8ℓ/π²`.
- At `ℓ → 0⁺` both pole values tend to `0`, and `F̂_ℓ(0) ≤ F̂_ℓ(i/(4π))` because `cosh ≥ 1`.
- The comparison is between the intrinsic integral of §2.3 and the closed formula; a value
  computed by a numerical quadrature is not a substitute, and the two `G`-scalars `Ĝ_ℓ(0)` and
  `Ĝ_ℓ(i/(4π))` differ as soon as `ℓ > 0`.

### 2.5 The explicit-formula bilinear forms

On the real vector space `ℝ[Π_alg]` with basis `Π_alg` define symmetric bilinear forms by their values
on basis pairs (CT20 (2.3.1)–(2.3.7)):

- `B_f^F(π, π′) = Re Σ_{p, k ≥ 1} F(k log p)(log p) p^{−k/2} tr(c_p(π)^k) overline(tr(c_p(π′)^k))`, a
  finite sum by compact support;
- `B∞^F(π, π′) = J_F(L(π∞) L(π′∞))`;
- `δ(π, π′) = 1` if `π ≅ π′` and `0` otherwise;
- `Z^F(π, π′)`, the symmetric-height limit of `Σ_ρ Re F̂((1 − 2ρ)/(4πi))` over the zeros `ρ` of
  `Λ(s, π^∨ × π′)`, with multiplicity;
- `e⊥(π, π′) = 1` if both are self-dual and `ε(π × π′) = −1`, and `0` otherwise;
- `C^F = A_F δ − B∞^F − (B_F/2) e⊥`.

The forms on basis pairs extend uniquely to bilinear forms on `ℝ[Π_alg]`; `e⊥` is symmetric with zero
diagonal; and `C^F(π, π′) = A_F δ(π, π′) − J_F(L(π∞)L(π′∞)) − (B_F/2) e⊥(π, π′)`.

*Needs:* §§1.1, 1.8, 2.3; AutomorphicLFunctionsAndLocalFactors §§AL.3.6.1–AL.3.6.2.

**Checks.**

- For `x = Σ a_π π`, `B_f^F(x, x) = Σ_{p,k} F(k log p)(log p) p^{−k/2} |Σ a_π tr(c_p(π)^k)|²`; there is no
  extra factor `2`.
- `δ(Δ₂₃^a, Δ₂₃^b) = 0` although `L(Δ₂₃^a,∞) = L(Δ₂₃^b,∞)`: poles are indexed by isomorphism, not by
  infinity type.
- `e⊥(Δ₁₇, 1) = 1`, since `ε(I₁₇) = −1`, and then `Λ(s, Δ₁₇)` vanishes at `s = 1/2`.

### 2.6 The Rankin–Selberg explicit formula

Prove that for every test function of §2.1, `B_f^F + B∞^F + (1/2) Z^F = A_F δ` as bilinear forms on
`ℝ[Π_alg]` (CT20 (2.3.5)). Apply AnalyticNumberTheoryPartI §1.8 to `Λ₁(s) = Λ(s, π^∨ × π′)` and
`Λ₂(s) = Λ(s, π × π′^∨)` with `c = 1`, which §2.1 makes admissible. At level one every prime is
unramified, so by AutomorphicLFunctionsAndLocalFactors §AL.3.2.3 the Euler factor of `Λ₁` at `p` has
the roots `α_i^{−1}β_j` (`α_i`, `β_j` the Satake roots of `π_p`, `π′_p`), each of absolute value below
`p^{1/2} · p^{1/2} = p` by the Jacquet–Shalika bound §AL.3.3.8; the Euler products then converge
absolutely on `Re s > 2`. Hypothesis (iii) of §1.8, boundedness of each `Λ_i` minus its singular parts
on vertical strips of finite width, comes from §AL.3.9.4: on such a strip `Λ_i` is bounded outside fixed
discs around its poles, which lie in `{0, 1}`; its principal parts are bounded off those discs; and on the
closed discs `Λ_i` minus its principal parts is holomorphic, hence bounded. When `π′ ≇ π` there is no
pole and §AL.3.9.4 bounds `Λ_i` on the whole strip. The zeros and poles that §1.8 sums are those with
`−1 ≤ Re s ≤ 2`: by the boundary nonvanishing §AL.3.6.3, the functional equation §AL.3.6.2 and the absence of zeros of the
gamma factors, every zero of `Λ₁` lies in `0 < Re s < 1`, so the zero sum is the sum over the critical
strip; the poles of `Λ(s, π^∨ × π′)` contribute exactly `δ(π, π′)` at `s = 0` and `s = 1`, the norm
twists allowed by the pole theorem §AL.3.6.1 being excluded by the fixed unitary algebraic infinity
types; then extend bilinearly.

*Needs:* §§2.1, 2.5; AnalyticNumberTheoryPartI §§1.3 and 1.8; AutomorphicLFunctionsAndLocalFactors
§§AL.3.2.3, AL.3.3.8, AL.3.6, AL.3.9.2 and AL.3.9.4.

**Checks.**

- For `π = π′ = 1` the identity is Weil's explicit formula for the completed Riemann zeta function,
  with the pole term `A_F` from `s = 0, 1`; there is no hidden restriction to rank at least two.
- The factor `1/2` on `Z^F` is forced: in §1.8 the prime-power and gamma terms occur twice (once for
  `Λ₁`, once for `Λ₂`, complex conjugate to each other for even `F`), and the poles at `s = 0, 1`
  contribute `Φ_F(0) + Φ_F(1) = 2A_F δ`, while the zeros of `Λ₁` are counted once.
- `F = 0` makes every term vanish.
- For `π = π′ = 1`, `Λ₁(s) = Γ_ℝ(s)ζ(s)` has the principal parts `−1/s` at `0` and `1/(s − 1)` at `1`
  (`Γ_ℝ(s) ∼ 2/s` and `ζ(0) = −1/2`; `Γ_ℝ(1) = 1`). It is unbounded on every strip containing `0` or `1`, so
  it fails the strip predicate of §AL.3.9.2 itself; the bound needed is the one of §AL.3.9.4 away from the
  poles, and `Λ₁(s) + 1/s − 1/(s − 1)` is entire and bounded on every vertical strip of finite width.

### 2.7 The Stark–Odlyzko cone inequality

Prove: if `F` satisfies (POS), then `C^F(x, x) ≥ 0` for every finite combination `x = Σ a_π π` with all
`a_π ≥ 0` (CT20 Proposition 2.2). Indeed `B_f^F` is positive semidefinite on all of `ℝ[Π_alg]`; for each
basis pair, (POS) and the forced central zero give `Z^F(π, π′) ≥ B_F e⊥(π, π′)`; and these pairwise
inequalities add up on the nonnegative cone. The statement does not assert that `C^F` is positive
semidefinite on signed vectors.

Prove also the conditional form: assuming the generalized Riemann hypothesis of the Conventions, the
same conclusion holds for every test function `F` of §2.1 with `F(x) ≥ 0` and `F̂(ξ) ≥ 0` for all real
`x` and `ξ`, a condition weaker than (POS) (CT20 §4.3, p. 38). The hypothesis puts every zero
`ρ = 1/2 + iγ` of `Λ(s, π^∨ × π′)` at the real point `ξ = (1 − 2ρ)/(4πi) = −γ/(2π)` (both `π^∨` and `π′`
lie in `Π_alg`), so the pairwise bound `Z^F(π, π′) ≥ B_F e⊥(π, π′)` and the positivity of `B_f^F` hold as
before.

*Needs:* §§1.8, 2.6.

**Checks.**

- The step that needs `a_π ≥ 0` is the summation of the pairwise inequalities for `Z^F − B_F e⊥`; for
  `x = Δ₁₇ − 1` the cross term enters with coefficient `−2`, the pairwise bounds can no longer be
  added, and the argument gives nothing.
- At `x = 1` the inequality reads `A_F − J_F(1) ≥ 0`, Odlyzko's inequality for the trivial
  representation.
- `G_ℓ` satisfies the hypotheses of the conditional form (`G_ℓ ≥ 0` and `Ĝ_ℓ ≥ 0` on `ℝ`, §2.2) but not
  (POS) (§2.1, Checks), so for `G_ℓ` the generalized Riemann hypothesis is needed: a zero `ρ` with
  `Re ρ ≠ 1/2` would sit at a nonreal `ξ`, where the sign of `Re Ĝ_ℓ(ξ)` is not controlled.

### 2.8 The multiplicity bound

Prove: if `F` satisfies (POS), `m ≥ 1` is an integer and `π₁, …, π_m ∈ Π_alg` are distinct with common
archimedean parameter `U`, then `J_F(U²) ≤ A_F/m`; in particular `J_F(U²) ≤ A_F` for every represented `U`
(CT20 Corollary 2.3, (2.4.1)–(2.4.2)). Apply §2.7 to `x = m⁻¹ Σ π_i`, which is nonzero with
`C^F(x, x) = A_F/m − J_F(U²) − (B_F/(2m²)) Σ_{i,j} e⊥(π_i, π_j)` because `L(π_i,∞) = U` for every `i`;
the `e⊥` contribution is nonpositive. If `B∞^F` is
positive definite on a finite-dimensional effective subgroup of `K∞`, the effective integral
parameters satisfying the bound form a finite set.

*Needs:* §§1.7, 2.7.

**Checks.**

- With `m = 2` the bound is `A_F/2`; this is what distinguishes the fibre of `I₂₃`, which contains
  the two classes `Δ₂₃^a`, `Δ₂₃^b`.
- Negative control for `m ≥ 1`: the empty family `m = 0` carries no information about `U`, the
  averaging vector `m⁻¹ Σ π_i` is undefined (or the zero vector, under a totalized inverse), and §2.7 at
  `x = 0` gives only `0 ≥ 0`; the quotient `A_F/0` is undefined, and its totalized value `0` would turn
  the conclusion into `J_F(U²) ≤ 0` for every `U ∈ K∞`, which nothing proves.
- `m` counts classes, including distinct classes with identical weights, not distinct weight vectors.
- Finiteness of the candidate set needs a proved positive-definite lower bound for `B∞^F`, not an
  approximate eigenvalue.

### 2.9 Admissible quadruples and their Gram matrices

An admissible quadruple `Q = (r, U, δ, m)` consists of `r ≥ 1`, `U_i ∈ K∞`, `δ_i ∈ {0, 1}` and integers
`m_i > 0`, such that `ε(U_iU_j) ∈ {±1}` whenever `δ_iδ_j = 1`. For a test function `F` of §2.1 (so that
`A_F` and `B_F` are real) define the real symmetric matrix `β^F_Q = (β_ij)` by
`β_ij = (A_F/m_i) δ_ij − J_F(U_iU_j) − (B_F/4) δ_iδ_j (1 − ε(U_iU_j))`, write `β^F_Q(x, y) = xᵀβ^F_Q y`, let
`D_r = {t ∈ ℝ^r : t_i ≥ 0, Σ t_i² = 1}` and `μ_F(Q) = min_{t ∈ D_r} β^F_Q(t, t)` (CT20 (2.4.3)–(2.4.5)).

- The diagonal entry is `β_ii = A_F/m_i − J_F(U_i²) − (B_F/4) δ_i (1 − ε(U_i²))`, with the factor
  `1/m_i` and the root coefficient `1/4`. It equals `A_F/m_i − J_F(U_i²)` when `δ_i = 0` or
  `ε(U_i²) = 1`, in particular when `U_i = L(π∞)` for some `π ∈ Π_alg`: then `det U_i = 1`, and
  `ε(U²) = 1` for every effective `U ∈ K∞` with `det U = 1` (for `U = a·1 + b·e + Σ c_v I_v`, multiplying
  out gives `ε(U²) = (−1)^{ab + (a + b + 1) Σ c_v (v + 1)}`, and `det U = 1` makes `Σ c_v (v + 1) ≡ b`
  mod `2`), so no premise of the Conventions enters.
- The minimum is attained, since `D_r` is compact and nonempty.
- `μ_F(Q) < 0` exactly when `β^F_Q(t, t) < 0` for some nonzero `t ≥ 0`.

*Needs:* §§1.4, 1.8, 2.1, 2.3.

**Checks.**

- For `r = 1`, `m₁ = 2`, `δ₁ = 0`: `β₁₁ = A_F/2 − J_F(U₁²)`.
- `U₁ = 1`, `U₂ = e` with `δ₁ = δ₂ = 1` is not admissible, because `ε(e) = i`.
- Negative control for dropping the root term on the diagonal: `r = m₁ = δ₁ = 1`, `U₁ = I₀ = 1 + e`.
  Then `U₁² = 2 + 2e`, `ε(U₁²) = ε(1)²ε(e)² = i² = −1`, so the quadruple is admissible and
  `β₁₁ = A_F − J_F(2 + 2e) − B_F/2`; the shortened `A_F − J_F(U₁²)` is wrong by `B_F/2`, which is
  nonzero for every test function with `B_F > 0`, such as `F_ℓ`.
- Vectors on a coordinate face such as `(1, 0)` belong to `D₂`; strict positivity of the coordinates
  is not required.

### 2.10 A local Rayleigh minimum is a least eigenvector

Prove: for a self-adjoint operator `T` on a nonzero finite-dimensional real inner product space, every
local minimum of `v ↦ ⟨Tv, v⟩` on the unit sphere is an eigenvector for the least eigenvalue of `T`
(CT20 Lemma 2.6). The pinned `IsSelfAdjoint.hasEigenvector_of_isLocalExtrOn` gives `Tx = λx`; if
`Ty = νy` with `ν < λ`, choose `y ⊥ x` and compare `cos θ · x + sin θ · y` for small `θ`.

*Needs:* `IsSelfAdjoint.hasEigenvector_of_isLocalExtrOn`.

**Checks.**

- In dimension one both points of the sphere are local minima and eigenvectors of the unique
  eigenvalue.
- For `T = diag(1, 2)`, the point `(0, 1)` is a local maximum with eigenvalue `2`; it is an
  eigenvector but not a local minimum, and the statement does not apply to it.
- The library theorem alone does not give minimality: `(0, 1)` above satisfies its conclusion.

### 2.11 The principal-face spectral criterion

Prove: for an admissible `Q`, `μ_F(Q)` is the minimum, over the nonempty `I ⊂ {1, …, r}` for which the
least eigenvalue `λ_I` of the principal submatrix `β_I` has an eigenvector with all `I`-coordinates
strictly positive, of `λ_I`; every global minimizer on `D_r` has a support `I` of this form (CT20
Proposition 2.5). A minimizer with support `I` is an interior local minimum on the face sphere, so
§2.10 applies.

*Needs:* §§2.9, 2.10.

**Checks.**

- For `β = diag(1, −1)` the minimum `−1` is attained on the face `I = {2}`.
- For `β = [[1, 2], [2, 1]]` the least eigenvector `(1, −1)` has mixed signs, so `I = {1, 2}` is not
  eligible, and `μ = 1` is attained on a single coordinate.
- Enumerating all nonempty supports is part of the statement: in the previous example omitting both
  singleton faces would leave no candidate at all, and for `β = diag(0, 1)`, where `μ = 0` is attained
  on `I = {1}` (the face `{1, 2}` is not eligible, its least eigenvector `(1, 0)` having a zero
  coordinate), omitting `I = {1}` would give the wrong value `1`.

### 2.12 The two-coordinate criterion

Prove: for `β = [[a, b], [b, c]]` with `a, c ≥ 0`, there is a nonzero `t ≥ 0` with `tᵀβt < 0` exactly when
`b < 0` and `b² > ac` (CT20 Example 2.7). If a diagonal entry is negative the corresponding coordinate
vector already gives a negative value.

*Needs:* §2.11.

**Checks.**

- `a = c = 1`, `b = −2`: the value at `(1, 1)` is `−2`.
- `a = c = 1`, `b = 2` has the same determinant `−3` but is nonnegative on the cone.
- `b² = ac` with `b ≤ 0` gives minimum `0`, not a negative value.

### 2.13 Equal block coordinates

Prove: if `A_F > 0`, `μ_F(Q) < 0` and `(U_i, δ_i, m_i) = (U_j, δ_j, m_j)`, then every minimizer `t ∈ D_r`
has `t_i = t_j` (CT20 Lemma 2.8). Equalizing the pair at fixed `t_i + t_j` strictly lowers the positive
diagonal contribution, so a negative minimum would be beaten after renormalization.

*Needs:* §2.9.

**Checks.**

- The hypothesis is equality of triples, not of `U` alone: two blocks with the same `U` and different
  `m` need not have equal coordinates.
- Without `μ_F(Q) < 0` the conclusion fails: for `β = diag(1, 1)` every unit vector is a minimizer.
- With `A_F = 0` the diagonal term no longer separates `t_i` from `t_j`.

### 2.14 Monotonicity in forced self-duality

Prove: for admissible `Q = (r, U, δ, m)` and `Q′ = (r, U, δ′, m)` with `δ′ ≥ δ`, and a test function `F` of
§2.1 with `B_F ≥ 0`, `β^F_{Q′}(x, y) ≤ β^F_Q(x, y)` for all `x, y ≥ 0`, hence `μ_F(Q′) ≤ μ_F(Q)` (CT20
Remark 2.10). The new terms have coefficient `−B_F(1 − ε)/4 ≤ 0`.

*Needs:* §2.9.

**Checks.**

- The comparison is only on the nonnegative cone; for `x = (1, −1)` the inequality can reverse.
- `δ′` must itself be admissible: activating a pair with `ε = i` is not allowed even if `δ` was.
- For `ε = 1` on the newly active pair the entry is unchanged.

### 2.15 Multiplicity compression

For a quadruple with repeated identical blocks, compare the expanded quadruple (all `m = 1`) with the
compressed one (diagonal `A_F/m_i`, same kernel `J_F(U_iU_j) + (B_F/4)δ_iδ_j(1 − ε(U_iU_j))`). The
multiplicity lift `x_{i,r} = t_i/m_i` of ComputationalNumberTheory §4.34 gives
`q_expanded(x) = q_compressed(t)`. Prove that, when `A_F > 0`, `μ_expanded < 0` exactly when
`μ_compressed < 0` (CT20 Corollary 2.9), using §2.13 for the converse.

*Needs:* §2.13; ComputationalNumberTheory §4.34.

**Checks.**

- With `A_F = 1`, kernel `1` and one block of size two, the expanded minimum is `−1` and the
  compressed minimum is `−1/2`: negativity agrees, the minima do not.
- The lift uses `t_i/m_i`; the square-root normalization `t_i/√m_i` gives a different quadratic form.
- A single block of size one is unchanged by compression.

### 2.16 Negativity from enclosed scalars

Prove: let `Q` be admissible, `ℓ > 0` rational, `F` one of `F_ℓ` and `G_ℓ`, and `t ≥ 0` a nonzero rational
vector; if rational intervals containing the four scalars of §2.4 attached to `F` at `ℓ` (`F̂(0)`,
`F̂(i/(4π))`, `J_F(I_w)` for the `w` that occur, and `J_F(1 − e)`) give an upper bound for `β^F_Q(t, t)`
that is strictly negative, then `μ_F(Q) < 0` (CT20 §2.4.4 for `F_ℓ`, §4.3 for `G_ℓ`). The proof combines §2.4
with the validity of rational Gram witnesses in ComputationalNumberTheory §§4.29–4.33.

*Needs:* §§2.4, 2.9; ComputationalNumberTheory §§4.29–4.33.

**Checks.**

- For the exact matrix `[[1, −2], [−2, 1]]` the vector `(1, 1)` gives `−2 < 0`.
- An enclosure `[−1/100, 1/100]` for the quadratic value does not give negativity.
- A vector with a negative coordinate is not a witness, even if its value is negative.

### 2.17 Excluding further classes

Prove (CT20 §2.4.5): let `F` be a test function of §2.1 satisfying (POS), and let `S ⊂ Π_alg` be a finite
set of distinct classes, grouped by their pairs `(U, sd)` with multiplicities. Suppose `m ≥ 1` further
distinct classes of parameter `U` exist outside `S`, each self-dual when `δ = 1`. Form `Q` from the
candidate block `(U, δ, m)` and the blocks of `S`. If `β^F_Q(t, t) < 0` for some nonzero `t ≥ 0`, this is
impossible: for `x = (t_cand/m) Σ π_new + Σ_i (t_i/m_i) Σ π_known,i`, the monotonicity of §2.14 (which
applies because `F ≥ 0` gives `B_F ≥ 0`) and the lift identity of §2.15 give
`C^F(x, x) ≤ β^F_Q(t, t) < 0`, against §2.7. Assuming the generalized Riemann hypothesis of the
Conventions, the same holds for every test function `F` of §2.1 with `F ≥ 0` and `F̂ ≥ 0` on `ℝ`, in
particular for `G_ℓ` with `ℓ > 0` (§2.2), by the conditional form of §2.7 (CT20 §4.3, p. 38).

*Needs:* §§2.2, 2.7, 2.14, 2.15, 2.16.

**Checks.**

- The candidate classes must be disjoint from `S`; equality of infinity types with a member of `S` is
  allowed.
- For a hypothetical non-self-dual class outside a duality-stable `S`, use `m = 2`, `δ = 0` on its dual
  pair.
- With `S = ∅`, `r = 1` and `m = 1` the statement is the bound of §2.8 with `m = 1`, sharpened by the
  root term `−(B_F/4)(1 − ε(U²))` when `δ = 1`.
- Negative control for (POS): `F = −F₁` is even, `C²` and compactly supported, so a test function of
  §2.1, but `−F₁(0) = −1` violates (POS). Take `S = ∅`, `U = 1`, `δ = 0`, `m = 1`, `t = 1`. Then
  `β^{−F₁}_Q(1, 1) = −(A_{F₁} − J_{F₁}(1)) = −C^{F₁}(1, 1)`, and by §2.6
  `C^{F₁}(1, 1) = B_f^{F₁}(1, 1) + Z^{F₁}(1, 1)/2`, where `Z^{F₁}(1, 1) ≥ 0` by (POS) for `F₁` and
  `B_f^{F₁}(1, 1)` is the single prime-power term with `k log p < 1`, namely
  `F₁(log 2)(log 2)/√2 ≈ 0.0399754 > 0` (`g > 0` on `(−1, 1)`). So the value is negative although the
  trivial class exists: without (POS) the statement would exclude it.

### 2.18 Positive definite covers

Prove: on `K∞^{≤w}`, let `B` be a rational positive definite matrix with `B ≤ (J_{F_ℓ}(UV))` entrywise on
the effective cone. Then every represented `U` with `J_{F_ℓ}(U²) ≤ c` lies in the finite set of
effective integral vectors with `xᵀBx ≤ c`, and an exact ellipsoid cover of that set (ComputationalNumberTheory
§§4.26 and 4.31) contains every such `U` (CT20 Remark 2.11 and §4.1). The bound `c = A_F/m` of §2.8, for an
integer `m ≥ 1`, is replaced by a rational upper bound for it, and the cover is then a cover at that
enlarged bound.

*Needs:* §2.8; ComputationalNumberTheory §§4.26 and 4.31.

**Checks.**

- Entrywise `B ≤ A` gives `xᵀBx ≤ xᵀAx` only for `x ≥ 0`; on signed vectors it fails.
- Replacing `c` by `1.001 c` gives a cover, whose cardinality is not the number of candidates at `c`.
- Without positive definiteness the set of effective vectors with `xᵀBx ≤ c` can be infinite: for
  `B = 0` every effective vector qualifies.

### 2.19 Miller's theorem

Prove: for `0 ≤ n ≤ 12` no nontrivial `π ∈ Π_alg` has `L(π∞) = I₁ + I₃ + ⋯ + I_{2n+1}`, and none has
`L(π∞) = e^n + I₂ + I₄ + ⋯ + I_{2n}` (CT20 §2.4.1; Mil02 Theorem 1.6, constant-coefficient cuspidal
cohomology of `SL_N(ℤ)` vanishes for `1 < N < 27`). For the first family with `0 ≤ n ≤ 12` and the
second with `1 ≤ n ≤ 12`, prove `J_{F_ℓ}(U²) > A_{F_ℓ}` at a suitable rational `ℓ` from rational
enclosures of the scalars of §2.4, as in §2.16 with `r = m = 1`, `δ = 0`; this contradicts §2.8 with
`m = 1`. For `n = 0` the second parameter is `1`, of rank one, and the only element of `Π_alg` of rank one
is the trivial representation (`PGL₁` is the trivial group), so that case holds without any inequality;
indeed `J_{F_ℓ}(1) ≤ A_{F_ℓ}` there by §2.8.

*Needs:* §§2.2, 2.4, 2.8, 2.16.

**Checks.**

- For `n = 0` the second parameter is `1`, the trivial representation, which is excluded from the
  statement and is not ruled out; the strict inequality `J_{F_ℓ}(1) > A_{F_ℓ}` is false for every `ℓ`
  (§2.8 applied to the trivial class), so the route treats this case separately.
- The parameters have ranks `2n + 2` and `2n + 1`, so the theorem covers `GL_N` for `2 ≤ N ≤ 26`,
  agreeing with Mil02's range `1 < N < 27`.
- `e^n + I₂ + ⋯ + I_{2n}` has determinant `e^n · e^n = 1`, as level one requires.

### 2.20 Level-one elliptic dimensions from the bound

Prove: for odd `w`, if `S` is the set of classes attached to the normalized eigenforms of
`S_{w+1}(SL₂(ℤ))` and §2.17 applies with `U = I_w`, `δ = 1`, `m = 1`, then `N(I_w) = dim S_{w+1}(SL₂(ℤ))`
(CT20 §1.4 and §2.4.5). The classical dimension is the pinned `ModularForm.dimension_level_one` with
`CuspForm.discriminantEquiv`, and the dictionary between normalized eigenforms and classes of
parameter `I_w` is AutomorphicFormsOnReductiveGroups §7.2 applied to the level-one newforms
`HeckeRing.GL2.Newform` of weight `w + 1`. Their number is `dim S_{w+1}(SL₂(ℤ))`:
`HeckeRing.GL2.Newform.basis` is a basis of the new subspace indexed by the newforms, the new subspace
is the whole cusp space at level one (`TauCeti.cuspFormsNew_one`), and `TauCeti.Gamma1_one_map_eq_SL`
identifies the level `Γ₁(1)` there with the full modular group of `ModularForm.dimension_level_one`.

*Needs:* §2.17; `ModularForm.dimension_level_one`, `CuspForm.discriminantEquiv`;
AutomorphicFormsOnReductiveGroups §7.2; `HeckeRing.GL2.Newform.basis`, `TauCeti.cuspFormsNew_one`,
`TauCeti.Gamma1_one_map_eq_SL`.

**Checks.**

- `w = 23`: `dim S₂₄ = 2`, while `S₂₃ = 0`; the motivic weight `w` and the classical weight `w + 1`
  must not be confused.
- `w = 11`: `dim S₁₂ = 1`.
- For even `w` the parameter `I_w` is not that of a level-one class from an eigenform, since
  `S_{w+1} = 0` in odd weight.
- Taking `δ = 1` loses nothing in rank two: a cuspidal representation of `PGL₂` is self-dual, so no
  non-self-dual extra class has parameter `I_w`.

### 2.21 Repeated-weight self-dual PGL₄ vanishing

Prove: for every odd `w` with `1 ≤ w ≤ 53`, no self-dual `π ∈ Π_alg` of rank four has
`L(π∞) = 2I_w` (CT20 §2.4.7). Apply §2.17 with `U = 2I_w`, `δ = 1`, `m = 1`, `ℓ = 5`, and the known
set of all classes from the eigenforms of `S_{w+1}(SL₂(ℤ))`, whose number is `dim S_{w+1}(SL₂(ℤ))`.

*Needs:* §§2.17, 2.20.

**Checks.**

- At `w = 23` the known set has two classes, and at `w = 53` four, since
  `dim S₅₄ = dim M₄₂ = 4`; a known set of size at most one is wrong for these `w`.
- There are `27` odd values of `w` in `[1, 53]`.
- A negative value for `U = I_w` is not one for `U = 2I_w`: the Gram matrices differ.

### Examples

For `π = 1` and `F = F_ℓ`, §2.8 reads `J_{F_ℓ}(1) ≤ 8ℓ/π²`. The pair `(Δ₁₇, 1)` has `e⊥ = 1`, so the
corresponding entry of `β` with `δ = (1, 1)` is `−J_F(I₁₇) − B_F/2`. The compression example of §2.15
is the smallest case where the normalized minima differ.

### Dependencies

AnalyticNumberTheoryPartI §§1.3, 1.8; SmallRamificationAndAbelianVarietyBaseCases §§1.5–1.7;
AutomorphicLFunctionsAndLocalFactors §§AL.1.4, AL.3.2.3, AL.3.3.8, AL.3.6, AL.3.9.2, AL.3.9.4;
AutomorphicFormsOnReductiveGroups §7.2; Tau Ceti's level-one newform basis
(`HeckeRing.GL2.Newform.basis`, `TauCeti.cuspFormsNew_one`); ComputationalNumberTheory §§4.17,
4.17a, 4.26, 4.29–4.34; Mathlib's Rayleigh quotient and level-one dimension formula; Layer 1.

## Layer 3: Arthur parameters, packet characters and triangular counts

This layer specializes the classification of ModularityAndLanglandsExtensions Layer 3 to level one
and computes, in the holomorphic cases, the finite sign tests that decide multiplicities. Every
statement from §3.2 on carries the supplier's standing premises as hypotheses.

### 3.1 Level-one Arthur parameters

For `Sp_{2g}` define `Ψ₁(Sp_{2g})` as the set of formal sums `ψ = ⊕_{i ∈ I} π_i[d_i]` with `d_i ≥ 1`,
`π_i ∈ Π_alg` self-dual, the pairs `(π_i, d_i)` distinct, `Σ rank(π_i) d_i = 2g + 1`, and `π_i`
orthogonal when `d_i` is odd and symplectic when `d_i` is even; algebraicity means integral weights.
For `SO_n` use the corresponding parity and determinant rules of ModularityAndLanglandsExtensions
§3.8. Put `ψ_ℝ = ⊕ L(π_i,∞) ⊗ Sym^{d_i − 1}(ℂ²)`; its infinitesimal weights are the
`w + (d_i − 1)/2 − r`, for `w` a weight of `π_i` and `0 ≤ r < d_i` (CT20 §5.1, (5.1.1); Tai17 §4.1.2).
The standard `L`-function of `ψ` is `L(s, ψ) = ∏_i ∏_{r=0}^{d_i − 1} L(s + (d_i − 1)/2 − r, π_i)`, and its
completion uses the gamma factor of `ψ_ℝ`.

- `Σ rank(π_i) d_i = m_G`, the dimension of the dual standard representation.
- `ψ_ℝ` is a representation of `W_ℝ × SL₂(ℂ)` whose standard representation is
  `⊕ U_i ⊗ Sym^{d_i − 1}`.
- The infinitesimal character of `ψ` is the displayed multiset of shifted weights, with
  multiplicity.
- `ψ` is an element of ModularityAndLanglandsExtensions §3.8's `Ψ₂(G)` whose constituents are
  level one, and conversely every such element is of this form.

*Needs:* §§1.1, 1.3, 1.8; ModularityAndLanglandsExtensions §3.8.

**Checks.**

- `Δ₁₇[8] ⊕ [9] ⊕ [7] ⊕ [1]` contains the trivial class with `d = 9, 7, 1`; it is valid, while repeating
  an identical pair `(π, d)` is not. Its dimension is `16 + 9 + 7 + 1 = 33 = 2·16 + 1`.
- `Δ₁₁[12] ⊕ [25]` has dimension `24 + 25 = 49`, so it is a parameter for `Sp₄₈`.
- `Δ₁₁[1]` is not allowed in a parameter of a symplectic group (symplectic class with odd `d`), while
  `Δ₁₁[2]` is.

### 3.2 The component group and the epsilon character

For `ψ ∈ Ψ₁(Sp_{2g})` with `n_i = rank(π_i)`, let `I_even = {i : n_id_i even}` and
`I_odd = {i : n_id_i odd}`. Define `C_ψ` as the subgroup of `{±1}^I` of elements `(s_i)` with
`∏ s_i^{n_id_i} = 1`; it is generated by the `s_i` (`i ∈ I_even`) and the `s_is_j` (`i, j ∈ I_odd`), and has
order `2^{|I| − 1}`. Put `E_i = ∏_{j ≠ i} ε(π_i × π_j)^{min(d_i, d_j)}` and define `ε_ψ(s_i) = E_i`,
`ε_ψ(s_is_j) = E_iE_j` (CT20 §5.1, (5.1.2)–(5.1.4)). Prove, under the standing premises, that this is the
component group and epsilon character of ModularityAndLanglandsExtensions §3.8. Arthur's character
retains only the symplectic constituents of the adjoint representation, while `E_i` runs over every pair;
the two agree because a pair of the same type has `ε(π_i × π_j) = 1` by the conditional half of §1.8
(CT20 §5.1, after (5.1.2), pp. 40–41).

- `C_ψ` is the group of signs with `∏ s_i^{n_id_i} = 1`, independent of the choice of a distinguished
  odd index.
- `ε_ψ` is a character of `C_ψ` determined by its values on the generators.
- Only pairs of opposite type can contribute a sign `−1` to `E_i`, by §1.8.

*Needs:* §1.8 (its same-type root number, with the standing premises), §3.1;
ModularityAndLanglandsExtensions §3.8 with its standing premises.

**Checks.**

- For `ψ = [2g + 1]`, `C_ψ` is trivial.
- For three odd-dimensional blocks, `C_ψ` has four elements and `(s₁s₂)(s₂s₃) = s₁s₃`.
- For `ψ = Δ_w[2] ⊕ [1]` in `Sp₄`, `ε_ψ(s₁) = ε(Δ_w) = i^{w+1}`: dropping the even generator would lose
  this sign.

### 3.3 The multiplicity test at level one

Prove: for `ψ ∈ Ψ₁(Sp_{2g})` and an irreducible unitary `(𝔤, K)`-module `ρ` occurring with
multiplicity one in the real Arthur packet of `ψ` (fixed Whittaker datum), the multiplicity in the
level-one discrete spectrum of the representation `ρ ⊗ (spherical finite part)` is `1` if
`χ_ρ|_{C_ψ} = ε_ψ` and `0` otherwise (CT20 §5.1, (5.1.4); Tai17 §4.1.2). Prove also, under the same
premises, the local fact through which the finite places enter: at each prime `p`, the local packet of the
localization `ψ_p` contains exactly one `Sp_{2g}(ℤ_p)`-spherical member, and its packet character, for a
Whittaker datum unramified with respect to `Sp_{2g}(ℤ_p)`, is trivial (Tai17 Lemma 4.1.1, p. 305; route: the
endoscopic character identities of ModularityAndLanglandsExtensions §3.15 and the twisted fundamental lemma
for the unit of the spherical Hecke algebra among that roadmap's trace inputs). The whole local packet need
not be a singleton. Local multiplicity one is used only in the holomorphic cases of §§3.5 and 3.8.

*Needs:* §3.2; ModularityAndLanglandsExtensions §§3.15 and 3.17 with its standing premises.

**Checks.**

- For trivial `C_ψ` the test is automatic.
- For `ψ = Δ_w[2] ⊕ [1]` in `Sp₄` and `ρ` the holomorphic module of weight `k = (w + 3)/2`, the test
  reads `−1 = (−1)^{k−1}` and holds exactly for even `k`: the level-one Saito–Kurokawa lifts.
- Changing the Whittaker datum changes the packet pairing by a character trivial on `C_ψ`, so the
  test is unchanged.
- Whole packet versus spherical member: for `Sp₂ = SL₂` over `ℚ_p` and the unramified tempered
  parameter with Frobenius `diag(−1, −1, 1)` in `SO₃(ℂ)`, the centralizer is `S(O₂ × O₁) ≅ O₂`, with two
  components, and the centre of `SO₃(ℂ)` is trivial, so the component group has order `2` and the
  packet has `2` members, the two constituents of the principal series induced from the unramified
  quadratic character. Exactly `1` of them is `SL₂(ℤ_p)`-spherical; the other is spherical for the
  conjugate of `SL₂(ℤ_p)` by `diag(p, 1)`. A claim that unramified packets are singletons fails here.

### 3.4 Holomorphic lowest-weight modules

For dominant `k = (k₁ ≥ ⋯ ≥ k_g ≥ 0)` let `ρ_k` be the unitary lowest-weight module of `Sp_{2g}(ℝ)` of
AutomorphicFormsOnReductiveGroups (with the extension requested there): it exists exactly when
`k_g ≥ g − u − v/2`, where `u = #{i : k_i = k_g}` and `v = #{i : k_i = k_g + 1}`; it is unique; its
infinitesimal character has eigenvalues `0, ±(k_i − i)`. With `a_i = k_i − i`, prove that this
character is regular exactly when `a_i ≠ 0` for all `i` and `a_i + a_j ≠ 0` for `i < j`; the
holomorphic discrete series range is the separate condition `k_g > g` (CT20 §5.2 and footnote 15).

- Existence is decided by the displayed inequality before the symbol `ρ_k` is used.
- Regularity of the infinitesimal character is the stated condition on the `a_i`.
- For `k_g > g`, `ρ_k` is a holomorphic discrete series and the infinitesimal character is regular.

*Needs:* AutomorphicFormsOnReductiveGroups §§6.7–6.8 with the extension requested there;
ModularityAndLanglandsExtensions §3.22.

**Checks.**

- `g = 1`, `k = 0`: the eigenvalues `0, ±1` are distinct, so the character is regular, yet `k > g`
  fails and `ρ₀` is the trivial representation, not a discrete series.
- `g = 2`, `k = (1, 1)`: `u = 2`, `v = 0`, and `1 ≥ 2 − 2` holds, so `ρ_{(1,1)}` exists; its
  eigenvalues `0, ±0, ±(−1)` are not regular.
- Dominance alone does not give unitarity: for `g = 3` and `k = (1, 0, 0)`, `u = 2`, `v = 1`, and
  `0 ≥ 3 − 2 − 1/2` fails, so `ρ_{(1,0,0)}` does not exist.

### 3.5 The regular holomorphic packet

Prove: if `k_g > g` and `ψ ∈ Ψ₁(Sp_{2g})` has infinitesimal weights `0, ±(k_i − i)`, then every `π_i` is
regular, `I_odd = {i₀}`, every `i ∈ I_even` has `n_id_i ≡ 0 mod 4`, and `ρ_k` lies in the real packet of
`ψ` exactly when `d_{i₀} = 1`, with multiplicity one. Its character is `χ(s_i) = (−1)^{n_id_i/4}` for
even `d_i` and `χ(s_i) = (−1)^{e_i}` for odd `d_i`, where `e_i` counts the odd `j ∈ {1, …, g}` with `k_j − j`
a weight of `π_i` (CT20 §5.2.1, (5.2.1)).

*Needs:* §§3.2, 3.4; ModularityAndLanglandsExtensions §3.21.

**Checks.**

- `ψ = Δ_w[2] ⊕ [1]`, `g = 2`: `I_odd` is the `[1]` block with `d = 1`, and `χ(s₁) = (−1)^{4/4} = −1`.
- The equivalence with `d_{i₀} = 1` is two-sided: a regular parameter with `d_{i₀} = 3` does not contain
  `ρ_k`.
- Counting the even positions `j` instead of the odd ones gives the same parity: for odd `d_i`,
  `n_id_i ≡ 0 mod 4` forces `n_i ≡ 0 mod 4`, so `π_i` has an even number `n_i/2` of positive weights,
  each equal to exactly one `k_j − j`.

### 3.6 The bounded scalar constituent condition

For `k ≥ 1` and `π ∈ Π_alg` say that `π` satisfies `(R_k)` when every weight is at most `k − 1`, every
nonzero weight has multiplicity one, the multiplicity `r(π)` of the weight `0` is at most three, and
each of `1` and `e` occurs at most twice in `L(π∞)` (CT20 §5.2, condition (R)).

- `r(π)` is the sum of the coefficients of `1` and `e` in `L(π∞)`, and is at most `3`.
- Each coefficient of an `I_w` is `0` or `1`.
- `(R_k)` implies `(R_{k+1})`.

*Needs:* §§1.2, 1.6.

**Checks.**

- `U = 1 + e + I₂` has simple nonzero weights and a double zero, and satisfies `(R_k)` for `k ≥ 2`.
- `U = 3·1` has `r = 3` but violates the bound on the multiplicity of `1`.
- `2I₁` violates `(R_k)` for every `k`.

### 3.7 The scalar cases I, H1 and H2

Let `g ≥ k ≥ 1` and let `ψ` have infinitesimal weights `0, ±(k − i)`, `1 ≤ i ≤ g`. Let
`I₀ = {i : 0 is a weight of π_i}`, `r_i` the multiplicity of `0` in `π_i`, and `d_max = max_{I₀} d_i`.
Define (CT20 §5.2.2): case (I) when `I₀ = {i₀}`, `r_{i₀} = d_{i₀} = 1`, `k − 1 > g − k`, and the shifted
positive weights fill `[k − g, k − 1]` exactly once; case (H1) when some `i₀ ∈ I₀` has
`d_{i₀} = d_max = 2(g − k) + 1` and `L(π_{i₀},∞)` contains `e^k`; case (H2) when some `i₀ ∈ I₀` has
`d_{i₀} = d_max = 2(g − k) + 3` and `L(π_{i₀},∞)` contains `e^{k−1}`. Put `k′ = k` in (H1) and `k′ = k − 1` in
(H2). These are predicates on an Arthur parameter, with `i₀` a witness.

- In case (I) the unique zero-weight block has `r = d = 1`.
- In case (H), `ψ_ℝ` contains `e^{k′}[2(g − k′) + 1]`.
- Case (H2) implies `k′ ≥ 2`, `g ≤ 2k′` and `i₀ ∈ I_odd`.

*Needs:* §§3.1, 3.6.

**Checks.**

- A trivial block `[2(g − k) + 1]` satisfies the (H1) condition `e^k ⊂ L(1∞) = 1` exactly when `k` is even.
- A trivial long block satisfies the (H2) condition `e^{k−1} ⊂ 1` exactly when `k` is odd.
- Using the length `2(g − k) + 1` for an (H2) long block misses the defining length by two.

### 3.8 Scalar packet membership

Prove: for `g ≥ k ≥ 1` and `ψ ∈ Ψ₁(Sp_{2g})` with the scalar infinitesimal character of §3.7, the module
`ρ_k^{(g)}` lies in the real packet of `ψ` exactly when case (I) or case (H) holds, and then with
multiplicity one; in case (I) every `π_i` is regular and `I₀ = I_odd = {i₀}` (CT20 §5.2.2, from the
Mœglin–Renard theorem). This is the specialization of ModularityAndLanglandsExtensions §3.22 to
level-one parameters.

*Needs:* §§3.4, 3.7; ModularityAndLanglandsExtensions §3.22.

**Checks.**

- `g = k = 12`, `ψ = Δ₁₁[12] ⊕ [1]`: the shifted weights of `Δ₁₁[12]` are `11, 10, …, 0` and
  `0, −1, …, −11`, which with the `[1]` block give `0, ±(12 − i)`; `I₀` is the `[1]` block with
  `r = d = 1`, `k − 1 = 11 > 0 = g − k`, and `11, …, 0` fill `[0, 11]` once, so case (I) holds and
  `ρ₁₂^{(12)}` lies in the packet.
- Necessity, sufficiency and multiplicity one are proved together; no general multiplicity-one
  statement for Arthur packets is used.
- Infinitesimal character alone does not decide membership: ModularityAndLanglandsExtensions §3.22's third Check gives a parameter
  with the infinitesimal character of `ρ₁^{(2)}` whose packet does not contain it.

### 3.9 The packet character in case (I)

Prove: in case (I), for `i ∈ I_even` and a sign `s`, let `e_s(π_i)` be the number of `1 ≤ j ≤ k − 1` with
`(−1)^j = s` and `k − j` a weight of `π_i`. For either `δ = ±1`, `χ(s_i) = (−1)^{n_id_i/4}` when `d_i` is even
and `(−1)^{e_δ(π_i)}` when `d_i` is odd; the value does not depend on `δ` because
`e₁ + e_{−1} = n_i/2` is even for odd `d_i` (CT20 §5.2.2, (5.2.2)–(5.2.3)). The proof uses the sign
identity `(−1)^{⌊εa/2⌋} = ∏_{j=1}^{a} (−1)^{j−1}ε` for `ε = ±1` and `a ≥ 1`.

*Needs:* §§3.2, 3.8.

**Checks.**

- The sign identity at `ε = −1`, `a = 1`: `(−1)^{⌊−1/2⌋} = (−1)^{−1} = −1 = (−1)^0 · (−1)`.
- At `ε = 1`, `a = 3`: `(−1)^{⌊3/2⌋} = −1` and `(+1)(−1)(+1) = −1`.
- For odd `d_i` and `n_i = 2`, `e₁ + e_{−1} = 1` would be odd; it does not occur because then `π_i` has
  `n_id_i ≡ 2 mod 4`, which case (I) excludes for `i ≠ i₀`.

### 3.10 The compact remainder in case (H)

Prove: in case (H), removing `e^{k′}[2(g − k′) + 1]` from `ψ_ℝ` leaves `ψ′` of dimension `2k′` and
determinant `e^{k′}`, an Adams–Johnson parameter for the compact group `SO(2k′)`; every `π_i` satisfies
`(R_k)`, every `π_i` with `i ≠ i₀` is regular, and the only nonregular possibilities are (H1) with
`n_{i₀} ≡ 2 mod 4`, a double zero and `e^k` twice, or (H1) with `n_{i₀}` odd, `d_{i₀} = 1`, `g = k`, a triple
zero and zero characters `2e^k + e^{k−1}`. In (H2), `π_{i₀}` is regular with a simple zero (CT20 §5.2.2 and
Remark 5.3).

*Needs:* §§3.6, 3.8; ModularityAndLanglandsExtensions §3.20.

**Checks.**

- The triple-zero exception needs `g = k` and `d_{i₀} = 1`; for `g > k` it does not occur.
- In (H1) one cannot replace `(R_k)` by full regularity: the double-zero branch is nonregular.
- `ψ′` is multiplicity free, which is what bounds every nonzero weight multiplicity by one.

### 3.11 The even generators in case (H)

Define `e_s(π)` in (H1) by positions in the list `(k − 1, k − 2, …, 1)`, and in (H2) by positions in the
same list with `g − k + 1` omitted, renumbered `1, …, k′ − 1`. Prove `r(π) + 2e₁(π) + 2e_{−1}(π) = n_π`, and
(CT20 §5.2.2, (5.2.4)–(5.2.7)): for `i ∈ I_even \ I₀`, `χ(s_i) = (−1)^{n_id_i/4}` for even `d_i` and
`(−1)^{e_δ(π_i)}` for odd `d_i`; for `i ∈ I₀ ∩ I_even`, `i ≠ i₀`, necessarily `d_i = 1`, `r_i = 2` and
`χ(s_i) = (−1)^{e_δ(π_i)} δ(−1)^{k′−1}`; if `i₀ ∈ I_even` then (H1) holds and `χ(s_{i₀}) = (−1)^{e_δ(π_{i₀})}`
times `δ(−1)^{k−1}` when `n_{i₀} ≡ 0 mod 4`, and times `1` otherwise.

*Needs:* §§3.2, 3.10.

**Checks.**

- In (H2) the parity is that of the position in the shortened list, not of the omitted weight itself.
- `r + 2e₁ + 2e_{−1} = n` holds for `π = 1` in (H1) with `k` even: `r = 1`, `e₁ = e_{−1} = 0`, `n = 1`.
- Every exponent is an integer in its branch: `n_id_i/4` appears only when `n_id_i ≡ 0 mod 4`.

### 3.12 The odd generators in case (H)

Prove (CT20 §5.2.2, (5.2.8) and (5.2.10), with the congruences (5.2.9)): if `I_odd` is a singleton
there are no odd-pair generators; otherwise `I_odd = {i₀, i₁, i₂}` with `d_{i₁} = 1` and
`d_{i₂} = 2a − 1`, `a ≥ 1`. Let `P` be the condition that `L(π_{i₀},∞) + L(π_{i₂},∞)` contains both `1`
and `e`. Then
`χ(s_{i₁}s_{i₂}) = (−1)^{e_δ(π_{i₁}) + e_δ(π_{i₂}) + ⌊δ(−1)^{k′−a}a/2⌋}`, and `χ(s_{i₀}s_{i₂})` is
`(−1)^{e_δ(π_{i₀}) + e_δ(π_{i₂})}` times `δ(−1)^{k−1}` if `P` holds and times `(−1)^{k−k′}` otherwise.

*Needs:* §§3.2, 3.11.

**Checks.**

- The relation `(s_{i₀}s_{i₁}) = (s_{i₀}s_{i₂})(s_{i₁}s_{i₂})` determines the third generator's value.
- `P` concerns zero characters `1` and `e`, not the multiplicity of the zero weight: `U = 2·1` has a
  double zero and does not contain `e`.
- At `a = 1`, `⌊δ(−1)^{k′−1}/2⌋` is `0` for `δ(−1)^{k′−1} = 1` and `−1` otherwise.

### 3.13 Independence of choices

Prove: the formulas of §§3.9, 3.11 and 3.12 define the same character of `C_ψ` for `δ = 1` and `δ = −1`;
in (H) they do not depend on the admissible `i₀` or on the labelling of the other odd blocks; and at
`k = g`, where (I) and (H1) may both hold, they agree (CT20 §5.2.2 and Remark 5.4). Hence `χ = ε_ψ` is a
well-defined finite test.

*Needs:* §§3.9, 3.11, 3.12.

**Checks.**

- The nonregular (H1) even-block branch and the three-odd-block branch are both covered.
- At `k = g = 12`, `ψ = Δ₁₁[12] ⊕ [1]` satisfies both (I) and (H1) (`d_{i₀} = 1 = 2(g − k) + 1` and
  `e^{12} = 1` lies in `L(1∞)`); both formulas give `χ(s) = (−1)^{2·12/4} = 1` on the generator of the
  `Δ₁₁[12]` block, and `ε_ψ(s) = ε(Δ₁₁) = i¹² = 1`.
- Swapping `i₁` and `i₂` when both have `d = 1` leaves the value of `χ(s_{i₁}s_{i₂})` unchanged.

### 3.14 The level-one Euler–Poincaré characteristic

For a permitted `G` and dominant `λ`, let `A²` be the `K`-finite square-integrable automorphic forms on
`G(ℚ)\G(𝔸)` fixed by `G(Ẑ)`, with `K` the full maximal compact subgroup of `G(ℝ)`, and define
`EP(G; λ) = Σ_q (−1)^q dim H^q(𝔤, K; A² ⊗ V_λ^∨)` (CT20 §1.4, the unnumbered display defining
`EP(G; λ)`, p. 8). The space `A²` includes the residual spectrum.

- `EP(G; λ) = Σ_π m_disc(π) EP(π∞ ⊗ V_λ^∨)`, a finite sum.
- In `SO_{4n}`, outer-conjugate `λ` have the same `EP`.
- If `λ` has nontrivial central character on `Z(G)(ℚ)`, `EP(G; λ) = 0`.

*Needs:* §1.3; AutomorphicSpectralTheory §§4.4–4.5 and 6.19; AutomorphicFormsOnReductiveGroups §2.2.

**Checks.**

- `EP(SO₃; 0) = 1`: there is no level-one class with parameter `I₁` (§5.3), and the trivial
  representation contributes `1`.
- `EP(SO₃; k) = −dim S_{2k+2}(SL₂(ℤ)) + δ_{k,0}`.
- Dropping the residual spectrum gives `EP(SO₃; 0) = 0`, which is wrong.

### 3.15 The packet contribution to the Euler–Poincaré characteristic

For a discrete parameter `ψ = ⊕ π_i[d_i]` of `G` with level-one constituents (`n_i = rank(π_i)`) and
infinitesimal character `λ + ρ`, define `EP_ψ(G; λ)` as the contribution of the `ψ`-part of `A²` to
`EP(G; λ)` of §3.14, so that `EP(G; λ) = Σ_ψ EP_ψ(G; λ)`. Let `m_ψ` be Arthur's global multiplicity of
ModularityAndLanglandsExtensions §3.17: `m_ψ = 2` when `G` is even orthogonal and every `n_id_i` is even,
and `m_ψ = 1` otherwise. In even `SO` the real packet `Π̃_ψ,∞` consists of outer orbits, and an orbit
`{X₁, X₂}` of two non-isomorphic modules has the averaged Euler–Poincaré characteristic
`EP({X₁, X₂} ⊗ V_λ^∨) = (1/2) EP((X₁ ⊕ X₂) ⊗ V_λ^∨)` (Tai17, the display after (4.1.2)). Prove that
`EP_ψ(G; λ) = m_ψ |S_ψ|⁻¹ Σ_{s ∈ S_ψ} ε_ψ(s) Σ_{ρ ∈ Π̃_ψ,∞} ⟨s, ρ⟩ EP(ρ ⊗ V_λ^∨)` (Tai17 Theorem 4.1.2 and
(4.1.2)), and evaluate the inner sum by the compact-torus character identity with sign
`(−1)^{q(G) − q(L₀)}` (Tai17 §4.2.2, Theorem 4.2.3 and Corollary 4.2.4). Nontempered parameters are
included.

- Averaging against `ε_ψ` selects the packet members whose character equals `ε_ψ`, and each selected
  member is counted `m_ψ` times.
- In `SO_{4n}` the two members of an outer orbit have the same multiplicity in the level-one discrete
  spectrum, since the outer automorphism can be chosen to preserve `G(Ẑ)` (Tai17 §4.1.1, after Theorem
  4.1.2); so `m_ψ` times the averaged value is the sum of the Euler–Poincaré characteristics of the
  members with their multiplicities, and the contribution does not depend on the representative of an
  outer orbit.
- The value is an integer computed from finitely many signs, Weyl-group sums and cohomological
  degrees.

*Needs:* §3.3; ModularityAndLanglandsExtensions §§3.17, 3.20–3.21; AutomorphicSpectralTheory §6.19.

**Checks.**

- For trivial `S_ψ` the contribution is `m_ψ` times the total outer-averaged packet Euler–Poincaré
  characteristic.
- Negative control for `m_ψ`: the simple class `O^even(24,18,10,4)` gives the parameter `ψ = π[1]` of
  `SO₈` with one block of even dimension `8`, so `S_ψ` is trivial and `m_ψ = 2`; its weights
  `(12, 9, 5, 2)` give `λ = (12 − 3, 9 − 2, 5 − 1, 2 − 0) = (9, 7, 4, 2)`. In an outer pair `{X₁, X₂}` of its
  real packet only `X₁` has infinitesimal character `λ + ρ`, since `λ₄ ≠ 0`; so
  `EP(X₁ ⊗ V_λ^∨) = (−1)^{q(SO(4,4))} = (−1)^8 = 1` and `EP(X₂ ⊗ V_λ^∨) = 0`, the averaged value is `1/2`,
  and the pair contributes `m_ψ · 1/2 = 1`, the contribution of `X₁` with multiplicity one. The character
  average without `m_ψ` gives `1/2`.
- A packet member whose character differs from `ε_ψ` contributes `0`, not `1/2`.
- In the `SO₃` base case `m_ψ = 1` (the dual group is `Sp₂`) and the simple cuspidal contribution is
  `−N`.

### 3.16 Triangular recovery of self-dual cuspidal counts

Prove: for a permitted `G`, dominant `λ` and `w = w(λ)`, `EP(G; λ) = κ(G, λ) N⊥(w) + R(G, λ)`, where
`κ(G, λ)` is the full contribution `EP_ψ(G; λ)` of §3.15 of one simple parameter `ψ = π[1]` with
infinitesimal character `λ + ρ`, namely `κ(G, λ) = m_ψ Σ_{ρ ∈ Π̃_ψ,∞} EP(ρ ⊗ V_λ^∨)` with Tai17's
outer-averaged Euler–Poincaré characteristic in even `SO`, `m_ψ = 2` for `SO_{4n}` and `m_ψ = 1` for
`Sp_{2n}` and `SO_{2n+1}`; and `R(G, λ)` is the sum of the contributions of all nonsimple parameters.
`R(G, λ)` is determined by the `N⊥(v)` with `rank(v) < m_G` and largest weight at most `w₁` (Tai17 §4.1.2;
CT20 Key fact 2). A simple parameter has trivial component group, and its archimedean component is the
discrete parameter with infinitesimal character `λ + ρ`, so `κ(G, λ)` depends only on `G` and `λ`. Its real
packet consists of discrete series; a member with infinitesimal character `λ + ρ` has Euler–Poincaré
characteristic `(−1)^{q(G)}`, and in even `SO` every outer orbit contains such a member while the other
member, if any, has `(−1)^{q(G)}` or `0` according as `λ` is outer-invariant or not. So every summand of
`κ(G, λ)` has the sign `(−1)^{q(G)}`, and `κ(G, λ) ≠ 0`. Every block of a nonsimple parameter has smaller
rank, and the same class may occur with several `d`.

*Needs:* §§1.9, 3.14, 3.15.

**Checks.**

- `SO₃`: `κ = −1` and `R(SO₃; k) = δ_{k,0}`.
- `SO₈`, `λ = (9, 7, 4, 2)`: `m_ψ = 2`, and each outer pair of the real packet contributes `2 · (1/2) = 1`
  to `κ`, which is therefore the number of outer pairs, with the sign `(−1)^8 = 1`; reading `κ` as the
  outer-averaged packet sum without `m_ψ` halves it and miscounts `N⊥(w)` by a factor two.
- The induction is on `m_G`, the dual standard dimension, not on the motivic weight.
- The nonsimple parameter `Δ₁₇[2] ⊕ Δ₁₇[4] ⊕ [1]` of `Sp₁₂` (dimension `4 + 8 + 1 = 13`) uses one
  class at two lengths; it is enumerated once with that class, not as two independent classes.

### Examples

For `Sp₄` and scalar weight `k ≥ 3` the infinitesimal weights are `0, ±(k − 1), ±(k − 2)`. By §3.5 a
parameter whose real packet contains `ρ_k` has exactly one odd block, of length one, and its other blocks
have dimensions divisible by four. An odd block of rank three would leave a remainder of dimension two;
`[4] ⊕ [1]` has the half-integral weights `±3/2, ±1/2`; and the trivial parameter `[5]`, whose weights
`0, ±1, ±2` are those of `k = 3`, has an odd block of length five. So packet membership leaves three
shapes, and global occurrence is then decided by the multiplicity test of §3.3 and by which classes
exist:

- `π[1]` with `π` a simple orthogonal class of rank five with weights `0, ±(k − 1), ±(k − 2)`: `C_ψ` is
  trivial, so each such class gives one eigenline, for every `k`;
- `Δ_w[2] ⊕ [1]` with `w = 2k − 3`: `χ(s₁) = (−1)^{4/4} = −1` and `ε_ψ(s₁) = i^{w+1} = (−1)^{k−1}`, so it
  occurs exactly when `k` is even, once for each normalized eigenform of `S_{2k−2}(SL₂(ℤ))` (the
  Saito–Kurokawa lifts);
- `π′ ⊕ [1]` with `π′` an orthogonal class of rank four with weights `±(k − 1), ±(k − 2)`: both `k₁ − 1` and
  `k₂ − 2` are weights of `π′` and only the position `1` is odd, so `χ(s₁) = −1`, while
  `ε_ψ(s₁) = ε(π′ × 1) = 1` because both constituents are orthogonal (§1.8); it never occurs.

At `k = 20` the three shapes give `dim S₂₀(Γ₂) = 1 + 2 + 0 = 3` (§7.2, Checks); omitting the simple shape
gives `2`. For `g = 1` a holomorphic parameter of weight `k` is a simple parameter of rank three with
weights `0, ±(k − 1)`, the adjoint `Sym²Δ_{k−1}` of an elliptic eigenform of weight `k`; at
`k = 12` it is `Sym²Δ₁₁`, the one member of the set `A(1, 12)` of §7.9.

### Dependencies

ModularityAndLanglandsExtensions §§3.4, 3.8, 3.15, 3.17, 3.20–3.22 with its standing premises;
AutomorphicFormsOnReductiveGroups §§2.2, 6.7–6.8; AutomorphicSpectralTheory §§4.4–4.5, 6.19;
Layer 1.

## Layer 4: geometric torsion classes and exact mass recovery

Masses are defined from the normalized geometric side of the trace formula before any table of
values appears. They are signed rational coefficients of torsion conjugacy classes; characteristic
polynomials index them, the spinor obstruction removes impossible orthogonal indices, exact torsion
characters turn vanishings from Layer 2 into rational linear systems, and `SO₃` fixes the signs.
Coarse tables use no known cusp forms; they produce the 27 known classes, which in turn give the
refined `Sp₁₄`, `SO₁₆` and `SO₁₇` tables; `Sp₁₆` combines direct orbital integrals with a smaller linear
system. The order prevents any classification of Layer 5 from entering its own input.

### 4.1 Geometric torsion classes and masses

For a permitted `G` let `C(G)` be the finite set of `G(ℚ̄)`-conjugacy classes meeting the elements of
finite order of `G(ℚ)`. For `c ∈ C(G)` define the mass `m_c` by grouping the elliptic terms of the
`L²`-Lefschetz formula of AutomorphicSpectralTheory §6.20 whose rational classes lie in `c`: the
signed Euler–Poincaré centralizer volume times the finite adelic orbital integral of the
characteristic function of `G(Ẑ)`, with `vol(G(ℤ_p)) = 1` and the Euler–Poincaré measure at infinity
(CT20 §1.4, (1.4.3)–(1.4.5), and Remark 1.1). Then `T_ell(G; λ) = Σ_{c ∈ C(G)} m_c tr(c | V_λ)`.

- The grouped elliptic term equals `Σ_c m_c tr(c | V_λ)` for every dominant `λ`.
- `m_c` does not depend on the representative of `c`.
- If no element of `c` is conjugate under `G(𝔸_f)` into `G(Ẑ)`, or its real centralizer has no discrete
  series, then `m_c = 0`.
- `C(G)` is finite: characteristic polynomials of finite-order elements are products of cyclotomic
  polynomials of bounded degree.

*Needs:* §3.14; AutomorphicSpectralTheory §§6.9, 6.17 and 6.20.

**Checks.**

- The identity class of `SO₃` has mass `−1/12`: masses are signed, not probabilities.
- Two rational classes in one geometric class contribute to a single coefficient, not to two.
- A geometric torsion class with no integral representative at some prime has mass `0` (§4.7 gives
  such classes in `SO₃`: orders `4` and `6`).

### 4.2 Rationality of the masses

Prove that every `m_c` is rational (CT20 §1.4 after (1.4.5); Tai17 §3.2). The centralizer volumes are
products of rational local factors and special values of Artin `L`-functions of the Gross motive of the
centralizer at non-positive critical integers, which are rational. No sign or positivity is asserted.

*Needs:* §4.1; AutomorphicSpectralTheory §6.17 with the rationality requested there.

**Checks.**

- The normalization reproduces `m = −1/12` for the identity of `SO₃`, which equals `ζ(−1)`.
- The special values used are at non-positive integers: `ζ(−1) = −1/12` is rational while `ζ(2) = π²/6`
  is not, so a statement at positive integers would be false.
- Rationality says nothing about nonvanishing: the masses of `SO₃` at orders `4` and `6` are `0`.

### 4.3 The trace formula and the proper Levi terms

Prove `EP(G; λ) = T_geom(G; λ)`, where the elliptic part of `T_geom` is `T_ell` of §4.1 and every term
for a proper Levi subgroup `GL₁^a × GL₂^b × G′` is an explicit rational combination of the `T_ell(G′; λ′)`
for smaller `G′` and, when `b > 0`, of `T_ell(SO₃; λ″)`; the coefficients, Weyl-length signs and weight
shuffles are those of Tai17 Theorems 3.3.3–3.3.5, and Levi factors `GL_d` with `d ≥ 3` contribute zero
(CT20 (1.4.1)–(1.4.2); Tai17 §3.3.4).

*Needs:* §4.1; AutomorphicSpectralTheory §§6.19–6.20.

**Checks.**

- For `SO₃` the only proper Levi term is `+1/2`, independent of `λ`: `T_geom(SO₃; k) = T_ell(SO₃; k) + 1/2`.
- The recursion terminates because `G′` is strictly smaller and the `GL₂` terms reduce to `SO₃`.
- Omitting the residual spectrum on the spectral side breaks the identity at `λ = 0` for `SO₃`.

### 4.4 The finite set of polynomial indices

Define `P(G)` as the set of products `P = ∏_m Φ_m^{a_m}` of cyclotomic polynomials of degree `d_G`, with
`a_m ≥ 0` and `a₂` even (CT20 Definition 3.1). For `Sp_{2n}` and `SO_{2n}`, let `∼` identify `P` with
`P^−(X) = (−1)^{d_G} P(−X)`; for `SO_{2n+1}`, `∼` is equality. On indices, negation exchanges `1` and `2`,
exchanges odd `m > 1` with `2m`, and fixes `m ≡ 0 mod 4`.

- `P ∈ P(G)` exactly when it has degree `d_G`, is a product of cyclotomic polynomials, and has an even
  exponent of `Φ₂`; the constant term is then `(−1)^{d_G}`.
- For `d_G` even (`Sp_{2n}` and `SO_{2n}`), `P ↦ P^−` is an involution of `P(G)`: the exponents
  satisfy `a₁ + a₂ ≡ d_G ≡ 0 mod 2`, since `φ(m)` is even for `m ≥ 3`, so `a₂` even forces `a₁` even, and
  negation exchanges `a₁` and `a₂`. For `SO_{2n+1}` no such map is asserted, and `∼` is equality.
- `P(G)` is finite, since `φ(m) ≤ d_G` bounds the indices.

*Needs:* §§1.3, 1.9.

**Checks.**

- `P(Sp₂)/∼` has three elements: `{Φ₁², Φ₂²}`, `{Φ₃, Φ₆}` and `{Φ₄}`.
- `P(SO₃)` has five elements `Φ₁³, Φ₁Φ₂², Φ₁Φ₃, Φ₁Φ₄, Φ₁Φ₆`, not three: `−I` is not in odd `SO`, so no
  quotient is taken.
- Negative control for negation in odd degree: `(X − 1)³ ∈ P(SO₃)` (`a₂ = 0`), but its negation
  `(−1)³(−X − 1)³ = (X + 1)³` has `a₂ = 3`, odd, and is not in `P(SO₃)`; in `Sp₂` the negation of
  `(X − 1)²` is `(X + 1)²`, with `a₂ = 2`, which is in `P(Sp₂)`.
- A polynomial of degree `17` is not an index for `Sp₁₆`, whose `d_G = 16`; `m_G = 17` is the dual
  dimension.

### 4.5 Polynomial fibres

Prove (CT20 Lemmas 3.2–3.3, (3.1.1)–(3.1.2)): the characteristic polynomial map `C(G) → P(G)` has
fibres of size at most one, except for `SO_{2n}` and `P(1)P(−1) ≠ 0`, where the fibre has size `0` or `2`
and its two classes are exchanged by the outer automorphism and have equal masses; and
`m_{−c} = m_c` for `Sp_{2n}` and `SO_{4n}`. With `m_P` the common mass, `tr(P; λ)` the sum of
`tr(c | V_λ)` over the fibre and `e_P ∈ {1, 2}` the size of the orbit of `P` under `∼`,
`T_ell(G; λ) = Σ_{P ∈ P(G)/∼} e_P m_P tr(P; λ)` for `λ` trivial on the centre.

*Needs:* §§4.1, 4.4.

**Checks.**

- A two-class fibre is not halved: `tr(P; λ)` sums both traces with one common mass.
- `e_P` comes from central negation and is different from the even-`SO` fibre size.
- For `λ` nontrivial on the centre, `T_ell = EP = 0`.

### 4.6 The Zassenhaus formula

Import the Zassenhaus formula `zassenhaus_primary_formula` of SymplecticReidemeisterTorsionModSquares
§4.1: for a nondegenerate quadratic form `q` on a finite-dimensional space `V` over a field `k` of
characteristic different from `2` and `γ ∈ O(q)`, with `V₋ = ker(γ + 1)^{dim V}` and
`U = im(γ + 1)^{dim V}`, the spinor norm of `γ` is the class of `disc(q|V₋) · det((1 + γ)/2 | U)` in
`k^×/k^{×2}`. Prove its characteristic-polynomial form (CT20 Theorem 3.5 and Corollary 3.6): let
`γ ∈ SO(q)` have `charpoly(γ) = (X − 1)^a (X + 1)^{2b} Q` with `Q(1)Q(−1) ≠ 0`. Then `V₋ = ker(γ + 1)^{2b}`,
`U = ker(γ − 1)^a ⊕ ker Q(γ)`, `(1 + γ)/2` is unipotent on `ker(γ − 1)^a`, and
`det((1 + γ)/2 | ker Q(γ)) = 2^{−deg Q} (−1)^{deg Q} Q(−1)`; `deg Q` is even because the roots of `Q` come
in pairs `t, t⁻¹` with `t ≠ ±1`, so the spinor norm of `γ` is the class of `disc(q|ker(γ + 1)^{2b}) · Q(−1)`.
If `a = b = 0`, `disc(q)` is the class of `Q(1)Q(−1)`: `disc(q)` is the spinor norm of `−1`, the product
of the spinor norms of `γ` and `−γ`, whose `Q`-polynomials are `Q(X)` and `Q(−X)` as `dim V = deg Q` is
even. The spinor norm is Tau Ceti's `CliffordAlgebra.orthogonalSpinorNorm`, in which the supplier states
its formula; on the even-dimensional `V₋` the discriminants of the polar form and of the associated form
`B(x, x) = q(x)` differ by the square `2^{dim V₋}`, so the class `disc(q|V₋)` is the same for both.

*Needs:* SymplecticReidemeisterTorsionModSquares §4.1; Tau Ceti `CliffordAlgebra.orthogonalSpinorNorm`.

**Checks.**

- `γ = −1` on a plane: `b = 1`, `Q = 1`, and the spinor norm is `disc(q)`, the classical value of `sn(−1)`
  in dimension two.
- A rotation of order three in the Euclidean plane: `Q = Φ₃`, `Q(−1) = 1`, so the spinor norm is trivial,
  as it must be over `ℝ` for an element of the connected group.
- For `a = b = 0` the corollary gives `disc(q) = Q(1)Q(−1)`; for `q = x² + y²` and a rotation of order
  four, `Q = Φ₄`, `Q(1)Q(−1) = 4`, a square, and `disc = 1`.
- The translation on the same rotation of order four: `V₋ = 0`, `U = V`, `(1 + γ)/2` has determinant
  `(1 + 1)/4 = 1/2`, whose class is that of `2 = Φ₄(−1) = Q(−1)`; the factor `2^{−deg Q} = 1/4` is a
  square and `(−1)^{deg Q} = 1`. Forgetting the `(−1)^{deg Q}` would be harmless here but wrong if
  `deg Q` could be odd, which it cannot.

### 4.7 The spinor obstruction

Define `IsRegularIntegralForm c` for an integer matrix `c` (the form `x ↦ xᵀcx` is regular: `c + cᵀ` has
determinant `±1` in even rank and `±2` in odd rank) and `specialOrthogonalPoints c R`, the matrices of
determinant one over `R` preserving `x ↦ xᵀcx`, built on `Matrix.toQuadraticForm'`. Prove
`spinor_charpoly_obstruction` (CT20 Proposition 3.7): if `c` is regular, `P = (X − 1)^a (X + 1)^{2b} Q` with
`Q(1)Q(−1) ≠ 0`, and for every prime `p` some element of `specialOrthogonalPoints c ℤ_[p]` has
characteristic polynomial `P`, then `|Q(−1)|` is the square of an integer when `b = 0`, and `|Q(1)|` is the
square of an integer when `a = 0`. The route lifts each `γ_p` to `GSpin(q)(ℤ_p)`, so its spinor norm is a
unit class; §4.6 then gives even valuations.

- `IsRegularIntegralForm c` depends only on `c + cᵀ`, the Gram matrix of the polar form.
- For `R` a domain with `2 ≠ 0`, such as `ℤ_[p]`, `specialOrthogonalPoints c R` is a subgroup of
  `GL_n(R)`.
- `spinor_charpoly_obstruction` uses all primes, `p = 2` included.

*Needs:* §4.6; GeometryOfNumbersAndQuadraticArithmetic §2.4.2 for `p` odd and the unit property
requested there (gap:integral-spinor-norm-units) for `p = 2`; Mathlib `Matrix.toQuadraticForm'`,
`Matrix.charpoly`, `PadicInt`.

**Checks.**

- `SO₃` with `P = Φ₁Φ₆`: `b = 0` and `Q(−1) = Φ₆(−1) = 3` is not a square, so no element of order six has
  local integral points everywhere; its mass is `0`, as the `SO₃` table of §4.12 confirms.
- `P = Φ₁Φ₃`: `a = 1`, `b = 0`, `Q(−1) = Φ₃(−1) = 1`, a square; the obstruction is silent.
- The hyperbolic plane `c = [[0, 1], [0, 0]]` is regular (`det(c + cᵀ) = −1`). For
  `γ = diag(t, t⁻¹)` with `t ∈ ℤ_p^×` the polynomial is `X² − (t + t⁻¹)X + 1`. If `t ≠ ±1`, then
  `a = b = 0`, `Q = P`, and `Q(−1) = (1 + t)²/t` and `Q(1) = −(1 − t)²/t` are nonzero with even `p`-adic
  valuation: this is the local content of the statement at `p`. At `t = 1`, `P = (X − 1)²` gives
  `(a, b, Q) = (2, 0, 1)`, and at `t = −1`, `P = (X + 1)²` gives `(a, b, Q) = (0, 1, 1)`; in both cases
  `(Q(−1), Q(1)) = (1, 1)`, of valuation `0`, whereas the unfactored expressions would give `(4, 0)` and
  `(0, 4)`, and the even-valuation reading would then be applied to the number `0`.
- The odd-rank form `x₁x₃ + x₂²` (`det(c + cᵀ) = −2`) satisfies `IsRegularIntegralForm`, while
  `x₁² + x₂²` (`det(c + cᵀ) = 4`) does not.

### 4.8 The spinor-filtered index set

For orthogonal `G` define `P₁(G) ⊂ P(G)` as the set of `P = (X − 1)^a (X + 1)^{2b} Q`, `Q` a product of
`Φ_m` with `m ≥ 3`, such that `b > 0` or `Q(−1)` is a square, and `a > 0` or `Q(1)` is a square; put
`P₁(Sp_{2n}) = P(Sp_{2n})` (CT20 Definition 3.8 and Corollary 3.9). The values `Q(±1)` are positive
integers.

- `m_P ≠ 0` implies `P ∈ P₁(G)`.
- `P₁(G)` is stable under `∼`.
- For symplectic `G`, `P₁(G) = P(G)`.

*Needs:* §§4.4, 4.7.

**Checks.**

- `Φ₁Φ₃ ∈ P₁(SO₃)` and `Φ₁Φ₆ ∉ P₁(SO₃)`; `Φ₁Φ₄ ∉ P₁(SO₃)` since `Φ₄(−1) = 2`.
- Membership is necessary, not sufficient: six indices of `P₁(SO₁₃)` have mass `0` (§4.18).
- `Φ₁Φ₅ ∈ P₁(SO₅)`: `a = 1`, and `Q(−1) = Φ₅(−1) = 1` is a square, although `Q(1) = Φ₅(1) = 5` is
  not; the condition on `Q(1)` applies only when `a = 0`.

### 4.9 The sizes of the index sets

Prove (CT20 Tables 2–3): `|P(Sp_{2n})/∼| = 3, 12, 32, 92, 219, 530, 1158, 2521` for `n = 1, …, 8`; for
`SO_d` with `d = 3, 4, 5, 7, 8, 9, 11, 12, 13, 15, 16, 17`, `|P(SO_d)/∼| = 5, 12, 19, 59, 92, 165, 419, 530,
1001, 2257, 2521, 4877` and `|P₁(SO_d)/∼| = 3, 6, 12, 34, 40, 99, 244, 211, 598, 1339, 992, 2948`. The
count for `Sp₁₄` is `1158`; the printed value `1157` is inconsistent with the definition.

*Needs:* §§4.4, 4.8.

**Checks.**

- `|P(SO₄)/∼| = |P(Sp₄)/∼| = 12`: both are the degree-4 products with even `a₂` modulo negation.
- `|P₁(SO₃)| = 3`, matching the three nonzero masses of §4.12.
- The `Sp₁₄` count is `1158`, one more than the printed table, by direct enumeration of exponent
  vectors of degree 14 modulo negation.

### 4.10 Exact torsion characters

For an integral polynomial `P` of degree `d_G` let `e_j` be its elementary symmetric functions of the
roots (`e₀ = 1`, `e_j = 0` outside `[0, d_G]`), and for a nonnegative highest weight `λ` let `λ′` be the
conjugate partition and `l = λ₁`. Prove that the symplectic character at an element with characteristic
polynomial `P` is `det(e_{λ′_i − i + j} − e_{λ′_i − i − j})_{1 ≤ i, j ≤ l}`, that the character of the full
orthogonal group is `1` for `l = 0` and `(1/2) det(e_{λ′_i − i + j} + e_{λ′_i − i − j + 2})` otherwise, and
that for `SO_{2n}` with `λ_n > 0` the orthogonal value is `χ_λ + χ_{λ^θ}`, `θ` the outer automorphism
(KT87, as used in CT20 §§1.4 and 3.1). Deduce `tr(P; λ)` of §4.5 exactly, including at singular elements,
from the Weyl character formula of LieHighestWeight Layer 6.

- `e_j = (−1)^j` times the coefficient of `X^{d_G − j}` in `P`.
- The empty partition gives the value `1`.
- In `SO_{2n}`, `tr(P; λ)` is the orthogonal value multiplied by the fibre size of `P` and divided by the
  size of the outer orbit of `λ`.

*Needs:* §4.5; LieHighestWeight Layer 6; ClassicalGroups Layers 4–5.

**Checks.**

- `λ = (1)` gives `e₁`, the trace of the standard representation, in both formulas.
- `Sp₂`, `λ = (2)`: the determinant is `e₁² − e₂`; with eigenvalues `x, x⁻¹` it is
  `x² + 1 + x⁻²`, the character of `Sym²`. `SO₃`, `λ = (2)`: the value `e₁² − e₂ − 1` equals
  `x² + x + 1 + x⁻¹ + x⁻²`, and is `5` at `P = Φ₁³`.
- In `SO_{2n}`, for `λ_n > 0` and a one-class fibre the orthogonal value must be halved, and for `λ_n = 0`
  and a two-class fibre the trace sum must be doubled; ignoring either factor of two gives wrong rows.

### 4.11 Mass recovery from vanishing rows

Prove (CT20 §1.4 Strategy and §3.3, (P1′)–(P2′)): let `Λ` be a finite set of dominant weights of `G`
trivial on the centre, with `λ_n ≥ 0` in `SO_{2n}`, such that `N⊥(w(λ)) = 0` for every `λ ∈ Λ`. Suppose the
masses of all permitted groups of smaller dual dimension are known, and the matrix
`(e_P tr(P; λ))_{λ ∈ Λ, P ∈ P₁(G)/∼}` has rank `|P₁(G)/∼|`. Then by §§3.16 and 4.3 the masses solve a
rational system `A m = b` with known right-hand side, and they are its unique solution.

*Needs:* §§3.16, 4.3, 4.8, 4.10; Mathlib `Matrix.rank`.

**Checks.**

- Full row rank does not suffice when `|Λ| > |P₁(G)/∼|`; full column rank is the condition.
- A rational vector solving the system without the vanishing of every row of `Λ` does not determine the
  masses.
- For `SO₃`, `Λ` with three weights and the three columns of `P₁(SO₃)` already suffices (CT20 Table 4).

### 4.12 The SO₃ calibration

Prove (CT20 §1.4): the torsion classes of `SO₃` have orders `1, 2, 3, 4, 6`; at highest weights
`k = 0, …, 4` their traces form the matrix with rows `(1, 1, 1, 1, 1)`, `(3, −1, 0, 1, 2)`,
`(5, 1, −1, −1, 1)`, `(7, −1, 1, −1, −1)`, `(9, 1, 0, 1, −2)`, of determinant `288`, using
`tr = 2k + 1` at the identity and `sin((2k + 1)π/i)/sin(π/i)` at order `i > 1`. With the right-hand side
`T_ell = EP − 1/2 = (1/2, −1/2, −1/2, −1/2, −1/2)`, the unique solution is
`m = (−1/12, 1/4, 1/3, 0, 0)`. The resulting formula for `EP(SO₃; k) = −dim S_{2k+2}(SL₂(ℤ)) + δ_{k,0}`
agrees with `ModularForm.dimension_level_one`.

*Needs:* §§3.14, 4.3, 4.11; `ModularForm.dimension_level_one`, `CuspForm.discriminantEquiv`.

**Checks.**

- At `k = 0` and order `4` the trivial character is `1`; the misprinted denominator `sin(2π/i)` gives
  `sin(π/4)/sin(π/2) ≈ 0.707`.
- At `k = 5`: `dim S₁₂ = (2·5 + 1)/12 − (−1)⁵/4 − (−1)/3 − 1/2 = 1`.
- The identity mass is negative and the masses at orders `4` and `6` vanish, as §4.7 predicts.

### 4.13 Coarse mass tables

Prove (CT20 §3.3 and Table 4): using only §2.8 with `m = 1`, that is
`J_{F_ℓ}(U(λ)²) > A_{F_ℓ}` at some `ℓ ∈ (1/4)ℤ ∩ [1/2, 20]`, one obtains sets `Λ` satisfying §4.11 for
`Sp₂, …, Sp₁₂` and `SO₃, SO₄, SO₅, SO₇, SO₈, SO₉, SO₁₁, SO₁₂, SO₁₃, SO₁₅`, so all their masses are
determined, in increasing dual dimension. Each vanishing row is a case of §2.16; the rank conditions are
statements about explicit rational matrices.

*Needs:* §§2.8, 2.16, 4.11, 4.12.

**Checks.**

- No classification of Layer 5 and no known cusp form is used.
- For `SO₁₅`, `|P₁/∼| = 1339` columns and `1924` rows at `w = 35`.
- For `Sp₁₄` the coarse method gives only `974` rows at `w = 90`, fewer than `1158` columns; it does not
  determine the `Sp₁₄` masses.

### 4.14 The twenty-seven known classes

Prove: the coarse masses and §3.16 give the existence, with exact multiplicities, of 27 regular
self-dual classes of motivic weight at most 24: the 11 of §5.3, the 13 top-simple classes of weight 23
of §5.6, and the 3 regular self-dual classes of weight 24 of §5.10 (CT20 §3.3 and footnote 13). Grouped
by parameter and self-duality they form 26 blocks, since `I₂₃` carries two classes. This is an
existence statement; exhaustion is Layer 5.

*Needs:* §§1.7, 3.16, 4.13; §2.20 for the `PGL₂` classes.

**Checks.**

- `27 = 11 + 13 + 3`, and the number of blocks is `26`.
- `dim S₂₄(SL₂(ℤ)) = 2` while `S₂₃ = 0`.
- Collapsing `Δ₂₃^a` and `Δ₂₃^b` into one class changes the diagonal of every Gram matrix that uses them.

### 4.15 Refined mass tables

Prove (CT20 §3.3 and Theorem 6): using §2.17 with `δ = m = 1` and the known set of the 27 classes, one
obtains sets `Λ` of sizes `1274` (weights with `2w(λ)₁ ≤ 36`) for `Sp₁₄`, `1810` (`≤ 28`) for `SO₁₆` and
`3477` (`≤ 63`) for `SO₁₇`, whose matrices have full column ranks `1158`, `992` and `2948`. Hence all masses
of `SO_d`, `d ≤ 17` with discrete series, and of `Sp_{2n}`, `n ≤ 7`, are determined.

*Needs:* §§2.17, 4.11, 4.14.

**Checks.**

- The `Sp₁₄` matrix has `1158` columns.
- For `SO₁₇`, restricting to `2w(λ)₁ ≤ 61` gives `3461` rows without full column rank; the bound `63` is
  needed.
- The input classes come from §4.14, which uses only coarse masses.

### 4.16 Easy and hard indices of Sp₁₆

For `P ∈ P(Sp₁₆)` and a prime `p`, write `P = ∏_m ∏_{k ∈ S(p,m)} Φ_{mp^k}^{d(p,m,k)}` over `m` prime to `p`.
Call `P` easy when for every `p` and `m`, `|S(p, m)| ≤ 2`, and when `|S(p, m)| = 2` then `0 ∈ S(p, m)` for
odd `p`, and `0 ∈ S(p, m)` or `1 ∈ S(p, m)` for `p = 2` (CT20 §3.3). The hard indices are the others.

- `S(p, m)` records exactly the exponents `k` with a positive multiplicity of `Φ_{mp^k}`.
- Easy membership is decided by the three conditions.
- Easy and hard indices partition `P(Sp₁₆)` and are stable under `∼`; `|P(Sp₁₆)_hard/∼| = 766`.

*Needs:* §4.4.

**Checks.**

- A set `S(p, m)` with at most one element always satisfies the condition.
- At odd `p`, `S = {1, 2}` is hard.
- At `p = 2`, `S = {1, 3}` passes and `S = {2, 3}` fails.

### 4.17 The masses of Sp₁₆

Prove (CT20 Theorem 7 and §3.3): the masses `m_P` for easy `P` are given by Taïbi's direct computation of
the orbital integrals (Tai17 §3.2) with the normalized local measures; after subtracting their
contribution, a set `Λ` of `1086` weights with `2w(λ)₁ ≤ 36` satisfying (P1′) gives a full-column-rank
system on the `766` hard orbits, which determines the remaining masses. All `2521` masses of `Sp₁₆` are
thus determined.

*Needs:* §§4.2, 4.15, 4.16; AutomorphicSpectralTheory §6.9.

**Checks.**

- The counts `766` and `2521` use the same negation convention.
- Without the easy masses the method of §4.15 yields only `1427` rows, against `2521` columns.
- The easy computation needs no bilinear algebra over finite fields; the hard indices are exactly
  those where it would.

### 4.18 The values of the masses

Prove that the masses of §§4.12–4.17 are the rational numbers listed in the tables accompanying CT20
Theorems 6–7 (p. 12); this identifies each listed value with the intrinsic mass through §4.11. Prove also,
for `G` one of the groups of CT20 Theorem 6, namely `SO_d` with `d ≤ 17` and `G(ℝ)` admitting discrete
series, and `Sp_{2n}` with `n ≤ 7`, that `m_P ≠ 0` for every `P ∈ P₁(G)` except six indices for `SO₁₃` and
six for `SO₁₇` (CT20 Remark 3.10, p. 33). The nonvanishing clause makes no assertion about `Sp₁₆`.

*Needs:* §§4.11, 4.15, 4.17.

**Checks.**

- The `SO₃` row of the tables is `(−1/12, 1/4, 1/3)` on `P₁(SO₃)` = `{Φ₁³, Φ₁Φ₂², Φ₁Φ₃}`.
- For the groups of CT20 Theorem 6 the number of exceptional zero masses is twelve in total, so `P₁` is
  almost sharp but not sharp there.
- The range of the nonvanishing clause is that of CT20 Theorem 6: `Sp₁₄` is in it (`14 ≤ 14`) and `Sp₁₆`
  is not (`16 > 14`); the `2521` masses of `Sp₁₆` are determined by §4.17, and which of them vanish is
  not asserted.
- A value table without the rank and vanishing statements of §4.11 does not determine the masses.

### Examples

For `SO₃` the recovered masses give
`dim S_{2k+2}(SL₂(ℤ)) = (2k + 1)/12 − (−1)^k/4 − χ₃(k)/3 − 1/2 + δ_{k,0}`, where `χ₃(k)` is `1, 0, −1` for
`k ≡ 0, 1, 2 mod 3`; at `k = 5` this is `1`. For `Sp₂` the three orbits of §4.4 carry the classes of orders
`1` or `2` (the centre), `3` or `6`, and `4`.

### Dependencies

AutomorphicSpectralTheory §§6.9, 6.17, 6.19–6.20; SymplecticReidemeisterTorsionModSquares §4.1;
OrthogonalSpinGroups Layer 1 and Tau Ceti's `CliffordAlgebra.orthogonalSpinorNorm`;
GeometryOfNumbersAndQuadraticArithmetic §2.4; LieHighestWeight Layer 6; ClassicalGroups Layers 4–5;
Mathlib's level-one dimension formula, characteristic polynomials and `p`-adic integers; Layers 1–3.

## Layer 5: cuspidal classifications through motivic weight twenty-four

A finite classification needs two separate things: a cover containing every possible archimedean
parameter, and an exclusion for every excluded point. Existence comes from §4.14 and the elliptic
dictionary of §2.20; exhaustion from Layer 2.

### 5.1 Covers and exclusions

Prove the interpretation theorem used by every classification below. Let `D` be a set of effective
parameters in `K∞^{≤w}` cut out by parity and determinant conditions; fix `δ ∈ {0, 1}`, an integer
`m ≥ 1`, a rational `ℓ > 0` and a real `c ≥ A_{F_ℓ}/m`; let `S ⊂ Π_alg` be a finite set of known,
pairwise distinct classes, `C ⊂ D` a finite set containing every `U ∈ D` with `J_{F_ℓ}(U²) ≤ c`
(§2.18), and `R ⊂ C`; and for each `U ∈ C \ R` let a triple `(ℓ_U, S_U, t_U)` with `S_U ⊂ S` satisfy
§2.16 for the quadruple of §2.17 attached to the candidate block `(U, δ, m)` and the known set `S_U`.
Then for every `U ∈ D \ R` there are no `m` distinct classes of `Π_alg \ S` with parameter `U`, all
self-dual when `δ = 1` (CT20 §§2.4.3–2.4.5 and §§4.1–4.3). Indeed, `m` such classes give
`J_{F_ℓ}(U²) ≤ A_{F_ℓ}/m ≤ c` by §2.8, so `U ∈ C`; and `U ∉ R` is impossible by §2.17, since classes
outside `S` lie outside `S_U`. The finite verification is ComputationalNumberTheory §5.1.

- Every `U ∈ D` carrying `m` distinct classes lies in `C`; this is where `c ≥ A_{F_ℓ}/m` is used.
- Each excluded `U` excludes exactly the `(U, δ, m)` hypothesis of its triple, for classes outside `S`;
  each `S_U` is a subset of the one known set `S`, so a class outside `S` meets the disjointness
  premise of §2.17 for every triple.
- The residual list is `C` minus the excluded parameters; known classes are subtracted only when they
  are proved distinct.

*Needs:* §§2.8, 2.16–2.18; ComputationalNumberTheory §5.1.

**Checks.**

- A cover that omits a parameter of `D` satisfying the bound is not a cover, whatever its exclusions.
- Negative control for the cutoff: with a positive definite `B` as in §5.2, cutoff `c = −1` and
  `C = R = S = ∅`, every value `xᵀBx` is nonnegative, so the cover and exclusion hypotheses hold
  vacuously, yet the trivial class has the parameter `1` of the even-parity `D` and is not in `R`. The
  hypothesis `c ≥ A_{F_ℓ}/m` excludes this, as `A_{F_ℓ} = 8ℓ/π² > 0`; for `m = 1` it puts the parameter
  `1` into `C` through `J_{F_ℓ}(1) ≤ A_{F_ℓ}` (§2.8).
- Replacing the two `I₂₃` classes by one changes the diagonal `A_F/m` of the Gram matrices that use them,
  and invalidates the corresponding triples.
- A cover at an enlarged bound `1.001c` is a cover at `c`; its cardinality is not the number of
  parameters at `c`.

### 5.2 Finiteness in bounded motivic weight

Prove: for each integer `0 ≤ w ≤ 23` there is `ℓ > 0` such that `B∞^{F_ℓ}` is positive definite on
`K∞^{≤w}`, hence the parameters of all `π ∈ Π_alg` of motivic weight at most `w` lie in an explicit finite
set and each fibre has bounded cardinality; the set of such `π` is finite (CT20 Remark 2.11 and §1.3;
CL14 IX Lemme 3.36). Positive definiteness on `K∞^{≤22}` and on `K∞^{≤23}` covers the two parities, and
restricts to smaller weights of the same parity.

*Needs:* §§2.8, 2.18.

**Checks.**

- Positive definiteness, not entrywise bounds, gives coercivity.
- The statement does not assert that each listed parameter is represented.
- Nothing is asserted in weight `24` or above.

### 5.3 The eleven classes of motivic weight at most 22

Prove (CL14 Théorème F; CT20 §1.3 and §2.4.6): exactly eleven elements of `Π_alg` have motivic weight
at most 22: the trivial representation; `Δ₁₁, Δ₁₅, Δ₁₇, Δ₁₉, Δ₂₁`; `Δ₁₉,₇, Δ₂₁,₅, Δ₂₁,₉, Δ₂₁,₁₃`; and
`Sym²Δ₁₁`. Each label is one isomorphism class and they are pairwise distinct. Existence: §§2.20 and
4.14. Exhaustion: a cover of weight at most 22 (§5.2), exclusions of every unlisted parameter by §2.17,
and, at each listed parameter, an exclusion of a further class (with `m = 2`, `δ = 0` for a putative
non-self-dual pair).

*Needs:* §§2.17, 2.20, 4.14, 5.1, 5.2.

**Checks.**

- In motivic weight below 11 only the trivial representation remains; CL14 (Introduction, after
  Théorème F) reads the cases of motivic weight `0` and `1` as automorphic counterparts of Minkowski's
  theorem and of the Abrashkin–Fontaine theorem.
- `Δ₂₁,₁₃` has weights `±21/2, ±13/2` and rank four; `Sym²Δ₁₁` has rank three and weights `−11, 0, 11`.
- Every witness is read with the coefficients `1/m`, not `1/√m`.

### 5.4 The weight-23 cover and its residual parameters

Prove (CT20 §4.1): at `ℓ = 487/50` the form `B∞^{F_ℓ}` is positive definite on `K∞^{≤23}`. Let `U₂` be the
effective `U ∈ K∞^{≤23}` containing `I₂₃` with `J_{F_ℓ}(U²) ≤ A_{F_ℓ}/2`, and `U₁` those with
`J_{F_ℓ}(U²) ≤ A_{F_ℓ}`. For every `U ∈ U₂` other than `U_exc = I₁ + I₇ + I₁₃ + I₁₇ + I₂₁ + 2I₂₃`, §2.17 with
`δ = 0`, `m = 2` and the known classes excludes a pair of further classes. For every `U ∈ U₁` outside an
explicit set of 187 parameters, §2.17 with `δ = m = 1` excludes a further self-dual class outside the
27 known classes. Six of the 187 are multiplicity free:
`I₃ + I₁₁ + I₁₇ + I₂₁ + I₂₃`, `I₇ + I₁₅ + I₂₁ + I₂₃`, `I₃ + I₉ + I₁₅ + I₂₁ + I₂₃`,
`I₁ + I₉ + I₁₇ + I₂₁ + I₂₃`, `I₅ + I₁₃ + I₁₇ + I₂₁ + I₂₃`, `I₅ + I₁₃ + I₁₉ + I₂₃`; by §§3.16 and 4.13 (the dual groups
are `SO₉` and `SO₁₁`), `N⊥` is `1` at the first
(the known `PGL₁₀` class) and `0` at the other five. The remaining set `V` has 181 elements, each with
`I₂₃` of multiplicity at least two, of dimension between 14 and 42, and containing `I_w` with multiplicity
one for some `w ∈ {1, 3, 5}`. The parameter `U_exc` is not among the 187 and hence not in `V`: the
`δ = m = 1` exclusion succeeds at `U_exc`, so no self-dual class outside the known ones has
archimedean parameter `U_exc`.

*Needs:* §§3.16, 4.13, 5.1, 5.2.

**Checks.**

- The 187 residual parameters belong to the one-class list `U₁`, not to `U₂`.
- The first multiplicity-free residual is the parameter of the known class `Δ₂₃,₂₁,₁₇,₁₁,₃`: the
  exclusions are of classes outside the known set, not of every class.
- `U_exc ∉ V`, although it has `I₂₃` twice, dimension `14` and the simple summand `I₁`: membership in
  `V` is failure of the `δ = m = 1` exclusion, not the shape of the parameter. Its dimension `14` equals
  the lower end of the range `14 ≤ dim U ≤ 42` recorded for the elements of `V` (CT20 §4.1, after
  Proposition 4.1, p. 35); the source states this bound only, not that some element of `V` attains it.

### 5.5 The exceptional two-class parameter

Prove (CT20 Proposition 4.1(1)): among weight-23 parameters with `I₂₃` repeated, a fibre with at least
two classes can occur only at `U_exc`, and then it is `{π, π^∨}` with `π` non-self-dual. At `U_exc`,
`J_{F_ℓ}(U_exc²) > A_{F_ℓ}/3` for `ℓ = 487/50` gives at most two classes (§2.8). Since `U_exc ∉ V` (§5.4),
the `δ = m = 1` exclusion of §2.17 holds at `U_exc`: no self-dual class outside the 27 known ones has
parameter `U_exc`, and no known class has it either, the known classes of motivic weight 23 having
`I₂₃` with multiplicity one. A singleton fibre would be self-dual by §1.7, so the fibre is empty or
consists of two non-self-dual classes, which by §1.7 are each other's duals.

*Needs:* §§1.7, 2.8, 2.16, 2.17, 5.4.

**Checks.**

- `U_exc ∉ V`: the `δ = m = 1` exclusion succeeds at `U_exc`, and that is what rules out a self-dual
  singleton there; had `U_exc` been in `V`, a singleton `{π}` with `π` self-dual would be allowed.
- A mixed fibre (one self-dual, one not) is impossible because duality acts on the fibre and a
  non-self-dual class brings its dual.
- The bound `A_{F_ℓ}/3` alone gives `|T| ≤ 2` and nothing about self-duality: the `δ = 0`, `m = 2`
  exclusion fails at `U_exc` (it is the one element of `U₂` where it does), so the non-self-duality
  comes from the `δ = m = 1` exclusion, not from a two-class triple.

### 5.6 The thirteen top-simple classes of motivic weight 23

Prove (CT20 Theorem 3): exactly thirteen elements of `Π_alg` have motivic weight 23 with the weight
`23/2` of multiplicity one: the two `PGL₂` classes `Δ₂₃^a`, `Δ₂₃^b` from `S₂₄(SL₂(ℤ))`; three `PGL₄`
classes with weights `±23/2, ±v/2`, `v ∈ {7, 9, 13}`; seven `PGL₆` classes with weights
`±23/2, ±v/2, ±u/2` for `(v, u) ∈ {(13, 5), (15, 3), (15, 7), (17, 5), (17, 9), (19, 3), (19, 11)}`; and one
`PGL₁₀` class with weights `±23/2, ±21/2, ±17/2, ±11/2, ±3/2`. All are symplectic. The `PGL₄`, `PGL₆` and
`PGL₁₀` classes are determined by their weights; the two `PGL₂` classes are not.

*Needs:* §§4.14, 5.4, 5.5.

**Checks.**

- `2 + 3 + 7 + 1 = 13`.
- `Δ₂₃^a ≠ Δ₂₃^b` although their parameters are equal; "determined by the weights" fails for them.
- Every extra top-simple candidate is excluded because the residual set `V` consists of parameters with
  `I₂₃` repeated.

### 5.7 The repeated-top alternatives in weight 23

Prove (CT20 Proposition 4.1): let `U ∈ K∞^{≤23}` be effective with `I₂₃` of multiplicity at least two and
`T = {π ∈ Π_alg : L(π∞) = U}`. If `|T| ≥ 2`, then `U = U_exc` and `T` is a dual pair of non-self-dual
classes. If `T = {π}`, then `U ∈ V` and `π` is symplectic. In particular there are at most 183 such
classes, one at each of the 181 elements of `V` and two at `U_exc`; no existence is asserted. Every
element of `V` contains some `I_w`, `w ∈ {1, 3, 5}`, with multiplicity one (§5.4), so its weight `w/2` is
simple and §1.8 makes a self-dual `π` with that parameter symplectic, `w(π) = 23` being odd; the
parameter itself is not regular, `I₂₃` being repeated.

*Needs:* §§1.8, 5.4, 5.5.

**Checks.**

- `|V| = 181` and `U_exc ∉ V`: the `182` parameters of `V ∪ {U_exc}` carry at most `181 + 2 = 183`
  classes, the possible dual pair at `U_exc` counting as two. Counting `U_exc` inside `V` would give
  `182` and would contradict `|T| = 1 ⇒ U ∈ V` together with the absence of a self-dual class at `U_exc`.
- A singleton fibre is self-dual by §1.7.
- The statement is a list of necessary alternatives; it does not produce any class.

### 5.8 The conditional restriction under GRH

Prove (CT20 Theorem 4 and §4.3): assume the generalized Riemann hypothesis of the Conventions. If
`π ∈ Π_alg` has motivic weight 23 and the weight `23/2` with multiplicity greater than one, then
`L(π∞) = I₁ + I₇ + I₁₁ + I₁₅ + I₁₉ + I₂₁ + 2I₂₃`, `π` has rank 16, and it is the only element of `Π_alg` with
these weights. Write `A = I₁ + I₇ + I₁₁ + I₁₅ + I₁₉ + I₂₁ + 2I₂₃`, an element of `V`. Use the conditional
form of §2.17 with `G_ℓ` in place of `F_ℓ`, negativity witnesses from §2.16 for `G_ℓ`, and the 27 known
classes as `S`: first exclude the dual pair at `U_exc` with `δ = 0`, `m = 2`;
then, at every element of `V \ {A}`, exclude a self-dual class with `δ = m = 1`; by §5.7 this covers
every remaining case, since a fibre with at least two classes occurs only at `U_exc` and a singleton
fibre is self-dual. At `A` no exclusion is made: since `A ≠ U_exc`, §5.7 gives at most one class with
parameter `A`, which is the uniqueness asserted; nothing is asserted about its existence.

*Needs:* §§2.2, 2.4, 2.16, 2.17, 5.1, 5.7.

**Checks.**

- The flag for a dual pair is `δ = 0` with `m = 2`; `δ` takes only the values `0` and `1`.
- The hypothesis is part of the statement; no existence follows.
- The surviving parameter has `8` summands of dimension two, so `dim A = 16` and rank `16`.
- The retained parameter is counted: excluding every element of `V` would leave `0` parameters and
  prove that no such `π` exists, which the route does not give; exactly `1` parameter, `A`, is retained.

### 5.9 The rank bound in weight 24

Prove (CT20 Lemma 4.3): a self-dual regular `π ∈ Π_alg` of motivic weight 24 and rank `n ≥ 13` has
parameter one of `1 + I₆ + I₈ + I₁₄ + I₂₀ + I₂₂ + I₂₄`, `1 + I₆ + I₁₀ + I₁₆ + I₂₀ + I₂₂ + I₂₄`,
`I₂ + I₄ + I₁₂ + I₁₄ + I₁₈ + I₂₀ + I₂₂ + I₂₄`, `I₂ + I₈ + I₁₂ + I₁₄ + I₁₈ + I₂₀ + I₂₂ + I₂₄`, of ranks 13, 13, 16, 16; in
particular `n ≤ 16`. The proof enumerates the `1260` effective multiplicity-free parameters of determinant
one and epsilon one with top `I₂₄` and rank above 12, and excludes `1256` of them by §2.17 with the 16 known
classes of rank at most four grouped into 15 blocks.

*Needs:* §§1.8, 4.14, 5.1.

**Checks.**

- The known set has 16 classes in 15 blocks, because `I₂₃` carries two classes.
- `ε(U) = 1` is forced by the orthogonal type of a regular self-dual class of even motivic weight.
- The four survivors are candidates only; §5.10 decides them by masses.

### 5.10 The three regular self-dual classes of motivic weight 24

Prove (CT20 Theorem 5 and §4.2): exactly three self-dual regular elements of `Π_alg` have motivic weight 24;
their weights are `{±12, ±8, ±4, 0}`, `{±12, ±9, ±5, ±2}` and `{±12, ±10, ±7, ±1}`, of ranks 7, 8, 8, and they
are orthogonal. By §5.9 the rank is at most 16; for every regular parameter of weight 24 and rank at most
16, `N⊥` is computed by §3.16 from the masses of `SO_d`, `d ≤ 16`, and `Sp_{2n}`, `n ≤ 7`.

*Needs:* §§3.16, 4.15, 5.9.

**Checks.**

- Odd ranks 11, 13, 15 require the dual groups `Sp₁₀`, `Sp₁₂`, `Sp₁₄`; masses only up to `Sp₈` do not
  suffice.
- The rank-7 class `O^odd(24,16,8)` has a zero weight; it corresponds to the group `Sp₆`.
- Nothing is asserted about non-self-dual or nonregular classes of weight 24.

### Examples

The list `L₂₄` of the 27 known classes (§4.14) is the full set of regular self-dual classes of motivic
weight at most 24 with top weight simple, by §§5.3, 5.6 and 5.10. In weight 23 the class
`Δ₂₃,₁₅,₇` has parameter `I₇ + I₁₅ + I₂₃`, and `Δ₂₃,₂₁,₁₇,₁₁,₃` has parameter `I₃ + I₁₁ + I₁₇ + I₂₁ + I₂₃`.

### Dependencies

Layers 2 and 4 (§§2.8, 2.16–2.18, 2.20, 3.16, 4.14–4.15); ComputationalNumberTheory §5.1;
ModularityAndLanglandsExtensions §§3.4, 3.8 through §1.8.

## Layer 6: Siegel forms at level one, lattice theta maps and first occurrence

The Siegel modular forms `M_k(Γ_g)` and `S_k(Γ_g)` are AutomorphicBundles' classical forms at level
`Sp_{2g}(ℤ)` with the Siegel coefficient of §11.16, compared with holomorphic functions on the Siegel
upper half-space through §11.9. This layer adds the level-one statements needed below and the theta
maps of even unimodular lattices. Every lattice statement here precedes, and is independent of, the
Siegel classification of Layer 7.

### 6.1 The Siegel operator and the standard L-function

Define `Φ_g : M_k(Γ_g) → M_{k′}(Γ_{g−1})`, `k′ = (k₁, …, k_{g−1})`, by `(Φ_g F)(τ′) = lim_{t → ∞} F(diag(τ′, it))`;
on Fourier expansions it keeps the coefficients at `diag(T′, 0)`. Prove: `Φ_g` is well defined and linear;
`ker Φ_g = S_k(Γ_g)` at level one; `Φ_g` commutes with the Hecke operators of AutomorphicBundles §12.11
through the Satake restriction; and if `F` is a scalar Hecke eigenform of weight `k` with `Φ_g F ≠ 0`,
then `Φ_g F` is an eigenform and `L(s, F, St) = L(s, Φ_g F, St) ζ(s − (g − k)) ζ(s + (g − k))` (the
Zharkovskaya relation, CT20 §5.3 footnote 17).

- On Fourier coefficients, `a(Φ_g F, T′) = a(F, diag(T′, 0))`.
- `ker Φ_g = S_k(Γ_g)`, and `Φ_g` of a cusp form is `0`.
- For an eigenform with `Φ_g F ≠ 0`, the standard `L`-function relation above holds.

*Needs:* AutomorphicBundles §§11.1–11.2, 11.9, 11.16, 12.10, 12.11 and 12.15.

**Checks.**

- `Φ₁ : M_k(SL₂(ℤ)) → M_k(Γ₀) = ℂ` is the constant term; its kernel is `S_k(SL₂(ℤ))`.
- At `g = k` the two zeta factors coincide: `L(s, F, St) = L(s, ΦF, St) ζ(s)²`.
- `Φ` of the genus-`g` Eisenstein series of weight `k` is the genus-`(g − 1)` one, and `Φ` of a constant
  of weight `0` is the same constant.

### 6.2 Boundary, vanishing and spanning theorems at level one

Prove the following statements, each attributed and located in CT20:

- Odd scalar weight: if `k` is odd and `g` is odd then `M_k(Γ_g) = 0`, since `−1 ∈ Γ_g` acts by `(−1)^{gk}`;
  if `k` is odd and `g` is even then `M_k(Γ_g) = S_k(Γ_g)`, since `Φ_g` lands in `M_k(Γ_{g−1}) = 0`.
- Negative scalar weight: `M_k(Γ_g) = 0` for `k < 0` and `g ≥ 1`.
- Wallach: if `k_g > g` every square-integrable form of weight `k` is cuspidal (AutomorphicSpectralTheory
  §4.10 through the adelic lift).
- Weissauer: if `g ≥ 2k ≥ 0`, every element of `M_k(Γ_g)` is square-integrable, `M_k(Γ_g) = L²_k(Γ_g)` (CT20
  §5.5, from Weissauer's Satz 3).
- Resnikoff and Freitag: `S_k(Γ_g) = 0` for `g > 2k` (CT20 (5.5.2)).
- Freitag: for `g > 2k`, `M_k(Γ_g)` is spanned by theta series of even unimodular lattices of rank `2k` when
  `k ≡ 0 mod 4`, and is `0` otherwise (CT20 (5.5.2)).

*Needs:* §6.1; AutomorphicSpectralTheory §4.10; AutomorphicFormsOnReductiveGroups §7.2a with the
extension requested there; §6.4 for the theta series in the last item.

**Checks.**

- `M₁₃(Γ₉) = 0` by odd genus and odd weight; `M₁₃(Γ₈) = S₁₃(Γ₈)`.
- `S₄(Γ₉) = 0` by Resnikoff–Freitag, while `M₄(Γ₉) ∋ θ₉[E₈] ≠ 0`.
- The strict inequality matters: `S₁₂(Γ₂₄)` need not vanish by this statement at `g = 2k = 24`; in fact
  §7.9 shows it is `0`, but `S₁₃(Γ₂₄) ≠ 0` with `g < 2k = 26`.

### 6.3 Lattice classes, algebraic modular forms and neighbours

For `n ≡ 0 mod 8` let `X_n` be the finite set of isometry classes of positive definite even unimodular
lattices of rank `n`, realized as `TauCeti.IntegralLattice` objects, and `ℂ[X_n]` the vector space with the
unweighted basis `[L]`. Identify the dual of `ℂ[X_n]` with level-one algebraic modular forms of the
orthogonal group of an even unimodular lattice of rank `n` with trivial coefficients, through
AutomorphicFormsOnReductiveGroups §§7.4–7.5, and define the Kneser `p`-neighbour operator
`T_p[L] = Σ [L′]` over the even unimodular `L′` that are `p`-neighbours of `L` in the sense of
IntegralLattices §4G (`[L : L ∩ L′] = [L′ : L ∩ L′] = p`), identified with the Hecke operator of the
characteristic function of the corresponding double coset (CL14 III and V §1). Import
`|X₈| = 1`, `|X₁₆| = 2` and `|X₂₄| = 24` from OrthogonalTamagawaAndLatticeMass §§4.1–4.2.

- `ℂ[X_n]` is dual to the level-one algebraic modular forms with trivial coefficients, the functions
  `f : X_n → ℂ`, through `f ↦ ([L] ↦ f(L))`, and the basis `[L]` is unweighted.
- `T_p` commutes with `T_q`. On the free basis, `T_p` is self-adjoint for the pairing
  `([L] | [M]) = |O(L)| δ_{LM}`, equivalently `N_p(L, M) |O(M)| = N_p(M, L) |O(L)|` for the number
  `N_p(L, M)` of `p`-neighbours of `L` isometric to `M` (CL14 III §2, Proposition 2.3, p. 61). Dually,
  the transpose of `T_p` on functions, `(T_p f)(L) = Σ_M N_p(L, M) f(M)`, is self-adjoint for the
  mass-weighted pairing `⟨f, f′⟩ = Σ_L f(L) overline(f′(L)) / |O(L)|`, the pairing induced on the dual
  by `( | )`. The reciprocal weights belong to the function space only.
- `|X₈| = 1`, `|X₁₆| = 2`, `|X₂₄| = 24`.

*Needs:* AutomorphicFormsOnReductiveGroups §§7.4–7.5; OrthogonalTamagawaAndLatticeMass §§3.1, 4.1–4.2;
Completed/IntegralLattices Layer 1; IntegralLattices §4G.

**Checks.**

- On `ℂ[X₈]`, `T_p[E₈]` is the number of `p`-neighbours of `E₈` times `[E₈]`, the number of isotropic
  lines of the quadratic space `E₈/pE₈`; for `p = 2` it is `(2⁴ − 1)(2³ + 1) = 135`.
- The weights on the two sides of the duality in rank 16. On `ℂ[X₁₆]`, `T₂` has the cross counts
  `N₂(D₁₆⁺, E₈ ⊕ E₈) = 12870` and `N₂(E₈ ⊕ E₈, D₁₆⁺) = 18225` (CL14 III §2, p. 63), and
  `|O(E₈ ⊕ E₈)| / |O(D₁₆⁺)| = 405/286` (CL14 III §2, p. 64); write `|O(E₈ ⊕ E₈)| = 405u` and
  `|O(D₁₆⁺)| = 286u`. With these automorphism-order weights both cross terms of `( | )` equal
  `12870 · 405u = 18225 · 286u = 5212350u`; with the reciprocal weights on the free basis they would be
  `12870/(405u) = 286/(9u)` and `18225/(286u)`, which differ. The reciprocal weights
  `1/|O(E₈ ⊕ E₈)|` and `1/|O(D₁₆⁺)|`, whose sum is the rank-16 mass of
  OrthogonalTamagawaAndLatticeMass §3.1, are those of the mass-weighted pairing on functions.
- Dividing `[L]` by `|O(L)|` changes the basis but not the space; the theta map of §6.4 is defined on the
  unweighted basis.

### 6.4 The genus-g theta map

For a positive definite even unimodular `L` of rank `n = 2k` and `τ` in the Siegel upper half-space of genus
`g`, set `θ_g[L](τ) = Σ_{x ∈ L^g} exp(πi tr(Gram(x) τ))`, `Gram(x) = (x_i · x_j)`, and extend linearly to
`θ_g : ℂ[X_n] → M_k(Γ_g)`; `θ₀` sends every basis vector to `1` (CT20 (5.3.1); CL14 V §1). Prove convergence
and holomorphy, the transformation law under `Γ_g` (from Poisson summation on `L^g`, ThetaSeries Layer 1,
or from the theta kernel of MetaplecticAutomorphicForms §5.1), invariance under isometries, the relation
`Φ_g ∘ θ_g = θ_{g−1}`, and the Eichler commutation relations: `θ_g` intertwines `T_p` on `ℂ[X_n]` with an
explicit element of the spherical Hecke algebra of `Sp_{2g}`, and on unramified Satake parameters this is
MetaplecticAutomorphicForms §3.21 (CT20 §5.3.2; CL14 V and VII §1).

- `θ_g[L]` has Fourier coefficient at `T` equal to the number of `x ∈ L^g` with `Gram(x) = 2T`; its constant
  coefficient is `1`.
- `Φ_g θ_g = θ_{g−1}` for every `g ≥ 1`.
- `θ_g` maps simultaneous eigenvectors of the `T_p` to Hecke eigenforms or to `0`.
- `θ₁` agrees with the genus-one theta series of ThetaSeries Layer 5 through the rational-to-real lattice
  bridge.

*Needs:* §§6.1, 6.3; ThetaSeries Layers 1 and 5; MetaplecticAutomorphicForms §§3.21 and 5.1.

**Checks.**

- Every `θ_g[L]` has constant coefficient `1`.
- `θ₁[E₈] = E₄` (ThetaSeries Layer 8).
- The normalization is fixed by the constant coefficient, not by the Siegel operator: rescaling every
  `θ_g[L]` by `1/|O(L)|`, in all genera at once, still satisfies `Φ θ′_g = θ′_{g−1}` by linearity (for
  `E₈` both genus-one constant terms are `1/696729600`), but it violates `θ′₀[L] = 1` and the constant
  coefficient `1`: `1/|O(E₈)| = 1/696729600 ≠ 1`.

### 6.5 First occurrence

For a nonzero simultaneous eigenvector `v ∈ ℂ[X_n]` define its degree `g₀(v)` as the least `g ≥ 0` with
`θ_g(v) ≠ 0` (CT20 §5.3.2; CL14 V §§1–2). Prove that `θ_n` is injective on `ℂ[X_n]`, so the degree exists;
that `θ_g(v) ≠ 0` for every `g ≥ g₀(v)`; and that `θ_{g₀}(v)` is a cusp form when `g₀ ≥ 1`.

- `θ_g(v) = 0` for `g < g₀` and `θ_{g₀}(v) ≠ 0`.
- `θ_g(v) ≠ 0` for all `g ≥ g₀`.
- If `g₀ ≥ 1`, `θ_{g₀}(v)` lies in `ker Φ_{g₀} = S_k(Γ_{g₀})`.

*Needs:* §§6.1, 6.4.

**Checks.**

- The eigenvector `[E₈]` has degree `0`, since `θ₀[E₈] = 1`.
- On `ℂ[X₁₆]`, `[E₈ ⊕ E₈] − [D₁₆⁺]` has degree `4`: their theta series agree in genus at most three and
  differ in genus four.
- Lifting `[E₈]` to genus eight does not change its degree.

### 6.6 Pluriharmonic coefficients

For `ν ≥ 0` let `H_{ν,g,n}` be the complex polynomials `p` on `n × g` matrices with `p(XA) = det(A)^ν p(X)` for
`A ∈ GL_g(ℂ)` and `Σ_r ∂²p/∂x_{ri}∂x_{rj} = 0` for all `i, j` (CT20 §5.4; CL14 V §4.1). Let `O_n` act by
`p ↦ p(a⁻¹X)`.

- Right multiplication by `A` acts through `det(A)^ν`, and `p` is homogeneous of degree `gν`.
- All mixed Laplacians vanish, not only the total Laplacian.
- `H_{1,g,n}` is `O_n`-isomorphic to the alternating `g`-forms on `ℂ^n`, and is `0` for `g > n`.

*Needs:* MetaplecticAutomorphicForms §3.1; LieHighestWeight Layer 6.

**Checks.**

- `H_{1,1,n}` is the space of linear forms, of dimension `n`.
- `H_{1,g,n} = 0` for `g > n`.
- For `p ≠ 0`, `p(tX) = t^{gν} p(X)`; the exponent `ν` alone is wrong for `g > 1`.

### 6.7 The harmonic theta map

Let `M_H(O_n)` be the level-one algebraic modular forms with coefficients `H = H_{ν,g,n}`, the
`O_n(ℝ)`-equivariant assignments `L ↦ p_L` on embedded even unimodular lattices; it is
`⊕_{[L] ∈ X_n} H^{O(L)}`. Define `θ_{ν,g,n}(p) = Σ_{[L]} |O(L)|⁻¹ Σ_{x ∈ L^g} p_L(x) exp(πi tr(Gram(x) τ))`, which on
the generator `[L, P]` supported at `L` with value `|O(L)|P` is the plain lattice sum (CT20 §5.4, (5.4.1);
CL14 V §4.1). Prove that for `ν ≥ 1` it lands in `S_{n/2+ν}(Γ_g)` and sends Hecke eigenvectors to eigenforms or
to `0`.

- `M_H(O_n) ≅ ⊕_{[L]} H^{O(L)}`.
- For `ν ≥ 1`, the image is cuspidal of weight `n/2 + ν`.
- A one-dimensional joint eigenspace maps to an eigenline or to `0`.

*Needs:* §§6.3, 6.4, 6.6; AutomorphicFormsOnReductiveGroups §7.4.

**Checks.**

- `n = 24`, `ν = 1` gives weight `13` in every genus.
- For `ν = 1` the coefficient vanishes on tuples of rank below `g`, which kills the boundary Fourier
  coefficients and gives cuspidality.
- `ν = 0` gives the plain theta map of §6.4, which is not cuspidal: `θ_g[E₈]` has constant term `1`.

### 6.8 The small-rank lattice eigenparameters and the low-genus Eichler basis

Prove (CL14 Théorème E, p. 12, with the eigenvectors ordered by degree in Table C.5, p. 440; CT20 §5.3.2):
the `T_p` act on `ℂ[X₈]`, `ℂ[X₁₆]`, `ℂ[X₂₄]` with `1`, `2`, `24` distinct joint eigenlines. Their standard
parameters are `[7] ⊕ [1]` (degree `0`) in rank 8; `[15] ⊕ [1]` (degree `0`) and `Δ₁₁[4] ⊕ [7] ⊕ [1]`
(degree `4`) in rank 16; and in rank 24 the `24` parameters of CL14 Théorème E: pairwise distinct formal
sums `⊕ π_i[d_i]` of dimension `24` with every `π_i` among the eleven classes of §5.3 and infinitesimal
weights `±11, …, ±1` and `0` twice (those of the trivial representation of `SO₂₄`), among them `[23] ⊕ [1]` of
degree `0` and `Δ₁₁[12]` of degree `12`. The degree of an eigenvector with parameter `ψ′` is the least `g₀`
such that `[2k − 1 − 2g₀]` is a summand of `ψ′`, except `ψ′ = Δ₁₁[12]` with `g₀ = 12`. Prove also the
low-genus Eichler basis theorem: `θ_g : ℂ[X_{2k}] → M_k(Γ_g)` is surjective for `k = 4, 8, 12` and `g ≤ k`
(CL14 Introduction §3 and Théorème D, which covers `k = 12`, `g ≤ 23`).

- Each eigenspace is one-dimensional and each parameter has dimension equal to the rank.
- The degrees in rank 24 are distributed `(1, 1, 1, 1, 2, 2, 3, 3, 4, 2, 2, 1, 1)` over `g₀ = 0, …, 12`.
- The surjectivity holds in genus `g ≤ k` for `k = 4, 8, 12`.

*Needs:* §§5.3, 6.3–6.5; MetaplecticAutomorphicForms §3.21; AutomorphicFormsOnReductiveGroups §7.4;
ModularityAndLanglandsExtensions §3.8.

**Checks.**

- `Δ₁₁[4] ⊕ [7] ⊕ [1]` has dimension `8 + 7 + 1 = 16`; `Δ₁₁[4]` alone has dimension `8` and is not a
  rank-16 parameter.
- In rank 24 the degree rule gives `g₀ = 4` for `Δ₁₉[4] ⊕ [1] ⊕ [15]`, since `2k − 1 − 2g₀ = 23 − 8 = 15`
  (the summand `[1]` would give the larger `g₀ = 11`); the exception `Δ₁₁[12]` has no trivial summand.
- The cumulative counts `1, 2, 3, 4, 6, 8, 11, 14, 18, 20, 22, 23, 24` sum the distribution and reach `|X₂₄|`.

### 6.9 The Rallis relation

Prove: let `v ∈ ℂ[X_n]` be an eigenvector with standard parameter `ψ_G` and let `F = θ_g(v)` be nonzero and
square-integrable with parameter `ψ_F`. If `n > 2g + 1` then `ψ_G = ψ_F ⊕ [n − 2g − 1]`; if `n < 2g + 1` then
`ψ_F = ψ_G ⊕ [2g + 1 − n]`; for `n ≡ 0 mod 8` the case `n = 2g + 1` does not occur (CT20 §5.3.2 after (5.3.1),
with the actual genus `g` in place of the degree). The route matches unramified parameters through
MetaplecticAutomorphicForms §3.21 and identifies the parameter by strong multiplicity one for isobaric sums.
Since only unramified local components enter, the same relation holds for a nonzero square-integrable image
`θ_{ν,g,n}(v)` of an eigenvector under the harmonic theta map of §6.7 (CL14 VII §1).

*Needs:* §§3.1, 6.4, 6.5; MetaplecticAutomorphicForms §3.21; AutomorphicLFunctionsAndLocalFactors §AL.3.7.

**Checks.**

- `n = 8`, `v = [E₈]`, `g₀ = 0`, `g = 8`: `ψ_F = [7] ⊕ [1] ⊕ [9]` has dimension `17 = 2·8 + 1`; using `g₀` in
  place of `g` gives a block of negative length.
- Dimensions: `ψ_G` has dimension `n` and `ψ_F` dimension `2g + 1`.
- For `n = 24`, `g = 12` (`n < 2g + 1 = 25`) and `v` of parameter `Δ₁₁[12]`, `ψ_F = Δ₁₁[12] ⊕ [1]`.

### 6.10 Square-integrable lifts in higher genus

Prove (CT20 Lemma 5.7, from Rallis and Mœglin–Waldspurger): if `v` has degree `g₀`, `g > g₀` and
`g > n − 1 − g₀`, then `θ_g(v)` is square-integrable and `ψ_F = ψ_G ⊕ [2g − n + 1]`; it is not cuspidal, since
`g > g₀` gives `Φ θ_g(v) = θ_{g−1}(v) ≠ 0`.

*Needs:* §§6.1, 6.5, 6.9; MetaplecticAutomorphicForms §§3.10 and 6.14.

**Checks.**

- Both strict inequalities are needed; the added block uses `g`, not `g₀`.
- `v = [E₈]`, `g = 8`: `g > 0` and `g > 7`, so `θ₈[E₈]` is square-integrable with parameter
  `[7] ⊕ [1] ⊕ [9]`.
- `2g + 1 > g + g₀ + 1 > n` follows from the hypotheses, so the second branch of §6.9 applies.

### 6.11 Central values of two PGL₄ classes

Prove: the completed standard `L`-functions of `Δ₁₉,₇` and `Δ₂₁,₁₃` do not vanish at `s = 1/2` (CL14 IX
Proposition 3.38: for self-dual `π` of motivic weight at most 22, the order at `1/2` is `0` when `ε(π) = 1`
and `1` otherwise, and `ε(π) = −1` exactly for `Δ₁₇` and `Δ₂₁`).

*Needs:* §§2.6, 5.3.

**Checks.**

- `ε(Δ₁₉,₇) = ε(I₁₉)ε(I₇) = i²⁰ · i⁸ = 1` and `ε(Δ₂₁,₁₃) = i²² · i¹⁴ = 1`.
- `ε(Δ₁₇) = i¹⁸ = −1`, so `Λ(1/2, Δ₁₇) = 0`.
- The statement concerns the completed function; the Euler product does not converge at `s = 1/2`.

### 6.12 Böcherer's criterion in five cases

For a weight-13 cusp eigenform `F_g` of genus `g` with parameter as in §7.10, and
`(g, n, ν) ∈ {(8, 16, 5), (8, 24, 1), (12, 24, 1), (16, 24, 1), (24, 24, 1)}`, put
`Γ_g(s) = ∏_{i=0}^{g−1} Γ(s − i/2)`, `γ_g^k(s) = 4^{−gs} Γ_g(k + s − (g + 1)/2)/Γ_g(k + s)`,
`ω_g(s) = ζ(s) ∏_{i=1}^{g} ζ(2s − 2i)`, `C_g(s) = ∏_{i=0}^{g−1} (s + i/2)` and `C_g(s, ν) = ∏_{i=0}^{ν−1} C_g(−s − i)`,
each up to a nonzero constant. Then `F_g` lies in the image of `θ_{ν,g,n}` exactly when
`R(s) = γ_g^k(s) C_g(n/2 + s, ν) L(n/2 − g + 2s, F_g, St)/ω_g(n/2 + 2s)` has a finite nonzero value at `s = 0`
(BoechererNote p. 1; CT20 Proposition 5.12). This is the specialization of the criterion requested from
MetaplecticAutomorphicForms; the five cases are the ones used in §8.8.

*Needs:* §6.7; MetaplecticAutomorphicForms §6.14 with the criterion requested there.

**Checks.**

- The `L`-value is evaluated at `n/2 − g + 2s`: `0` for `(8, 16)`, `4` for `(8, 24)`, `0` for `(12, 24)`, `−4` for
  `(16, 24)` and `−12` for `(24, 24)`.
- `ω_g` is in the denominator, so each simple trivial zero `ζ(−2), ζ(−4), …` among its factors at `s = 0`
  lowers the order of `R` by one. For `(g, n, ν) = (16, 24, 1)` the factors `ζ(24 − 2i)` with `i = 13, …, 16`
  vanish and `ζ(12) ≠ 0`, so `ω₁₆(12 + 2s)` has order `4` and its reciprocal order `−4`; with the other
  orders of §8.7 the total is `0 − 4 − 4 − 1 + 9 = 0`, whereas reading the zeros as raising the order gives
  `0 + 4 − 4 − 1 + 9 = 8`. For `g = 24` the reciprocal has order `−12` and the total is again `0`; with the
  sign reversed it would be `24`.
- Böcherer's gamma factor `γ_g^k` is not the archimedean factor of the standard `L`-function; the two must not
  be identified.

### Examples

`θ_g[E₈]` spans `M₄(Γ_g)` for every `g` (§8.1); it is cuspidal for no `g ≥ 1`. In rank 16 the difference
`θ_4[E₈ ⊕ E₈] − θ_4[D₁₆⁺]` spans `S₈(Γ₄)` and has parameter `Δ₁₁[4] ⊕ [1]` by §6.9 with `n = 16`, `g = 4`.

### Dependencies

AutomorphicBundles §§11.1–11.2, 11.9, 11.16, 12.10–12.11, 12.15; AutomorphicSpectralTheory §4.10;
AutomorphicFormsOnReductiveGroups §§7.2a, 7.4–7.5; MetaplecticAutomorphicForms §§3.1, 3.10, 3.21, 5.1, 6.14;
OrthogonalTamagawaAndLatticeMass §§3.1, 4.1–4.2; ThetaSeries Layers 1, 5, 8; Completed/IntegralLattices
Layer 1; IntegralLattices §4G; AutomorphicLFunctionsAndLocalFactors §AL.3.7; Layers 3 and 5.

## Layer 7: Siegel cusp dimensions and the four weight-thirteen forms

Siegel eigenforms are counted through their standard parameters: each realized parameter contributes
one eigenline, decided by the sign test of §3.3 with the characters of §§3.5 and 3.9–3.13. In the
regular range the count is a finite computation from the self-dual counts of Layer 4; in low weight it
uses the classification of Layer 5; in the singular scalar range it uses the lattice results of Layer 6,
which do not depend on this layer.

### 7.1 Siegel eigenlines and the discrete spectrum

Prove: for dominant `k` with `ρ_k` existing (§3.4), `dim L²_k(Γ_g)` equals the number of discrete automorphic
representations of `Sp_{2g}` unramified at every prime with archimedean component `ρ_k`, counted with
multiplicity, and `dim S_k(Γ_g)` the number of cuspidal ones (AutomorphicFormsOnReductiveGroups §7.2a with
the extension requested there). In the range `k_g > g` and in the scalar case, every realized level-one
parameter contributes exactly one eigenline, by §§3.3, 3.5 and 3.8, and Hecke eigenforms with the same
eigenvalues are proportional. For `k_g > g`, `L²_k = S_k` (§6.2, Wallach); for odd scalar `k`,
`M_k = S_k` (§6.2) (CT20 §5.2 and §5.3).

- `dim S_k(Γ_g) = Σ_ψ m(ψ)` over level-one parameters whose packet contains `ρ_k` and whose
  representation is cuspidal, with `m(ψ) ∈ {0, 1}` given by §3.3.
- Equal standard parameters imply proportional eigenforms.
- For `k_g > g` no residual eigenline has to be subtracted.

*Needs:* §§3.3–3.5, 3.8, 6.1–6.2; AutomorphicFormsOnReductiveGroups §7.2a.

**Checks.**

- `g = 1`: the formula is the level-one dimension formula of Mathlib, through the parameters `Sym²Δ_{k−1}`
  of the Layer 3 Examples.
- For scalar `k ≤ g` a realized parameter can be residual: `ψ = [2(g − k) + 1] ⊕ ψ′` with a trivial long
  block, as in §7.6.
- The two classes `Δ₂₃^a`, `Δ₂₃^b` give two different parameters wherever they occur, and contribute
  separately.

### 7.2 The regular dimension formula

Prove: for `g ≥ 1` and dominant `k` with `k_g > g`, `dim S_k(Γ_g)` equals the number of `ψ ∈ Ψ₁(Sp_{2g})` with
infinitesimal weights `0, ±(k_i − i)`, `d_{i₀} = 1` for the odd block, and `χ_{ρ_k} = ε_ψ` on `C_ψ` (§3.5),
where the blocks run over self-dual regular classes of rank at most `2g + 1` and largest weight at most
`k₁ − 1`, counted with their numbers `N⊥` of §1.7 and with the equality pattern of classes across
different `d` (CT20 Key fact 1 and §5.2.1). Root numbers at level one depend only on infinity types, so
the multiplicity factor of each assignment is exact.

- Every parameter for the weight `k` belongs to the finite list of block assignments with these bounds.
- A candidate contributes `1` exactly when the packet contains `ρ_k` and `χ = ε_ψ`.
- The resulting finite sum equals `dim S_k(Γ_g)`.

*Needs:* §§1.7, 3.5, 3.16, 7.1.

**Checks.**

- At `g = 1` the formula counts the classes `π` of rank three with weights `0, ±(k − 1)`, recovering
  `dim S_k(SL₂(ℤ))`.
- At `g = 2` and scalar `k = 10`, the parameter `Δ₁₇[2] ⊕ [1]` passes (`k` even) and contributes the
  Saito–Kurokawa line. At `k = 11` the candidate `Δ₁₉[2] ⊕ [1]` fails (`k` odd) and the rank-four shape
  of the Layer 3 Examples fails for every `k`; since `S₁₁(Γ₂) = 0` (Igusa's theorem, vdG08 Theorem 9.1
  and its proof, pp. 19–20: the first nonzero odd weight is `35`), the formula forces that no simple
  orthogonal class of rank five with weights `0, ±9, ±10` exists.
- Negative control for the candidate list, `g = 2` and scalar `k = 20`: by Igusa's theorem (vdG08
  Theorem 9.1, p. 19) `M₂₀(Γ₂)` has the basis `E₄⁵, E₄²E₆², E₄²χ₁₂, E₄E₆χ₁₀, χ₁₀²`, and the Siegel
  operator maps it onto `M₂₀(SL₂(ℤ))`, of dimension `2`, killing exactly the last three, so
  `dim S₂₀(Γ₂) = 3`. The Saito–Kurokawa shape gives the two classes `Δ₃₇` from `S₃₈(SL₂(ℤ))` and the
  rank-four shape gives `0`, so exactly one simple orthogonal class of rank five with weights
  `0, ±18, ±19` exists: `3 = 1 + 2 + 0`. A candidate list without the simple shape counts `2`.
- Treating `Δ₂₃^a` and `Δ₂₃^b` as one class undercounts the candidates, even where both are then rejected.

### 7.3 Dimensions in genus at most eight

Prove (CT20 Theorem 1, with Theorems 6–7): for every `1 ≤ g ≤ 8` and every dominant `k` with `k_g > g`,
`dim S_k(Γ_g)` is given by §7.2 with all `N⊥` computed by §3.16 from the masses of `SO_d`, `d ≤ 17`, and
`Sp_{2n}`, `n ≤ 8`. The rank recursion needs only groups of dual dimension at most `2g + 1 ≤ 17`, all of whose
masses are known by §§4.13–4.17; there is no bound on `k₁`.

*Needs:* §§3.16, 4.13–4.17, 7.2.

**Checks.**

- `g = 8` needs the `Sp₁₆` masses of §4.17 in the recursion.
- The statement is for every `k₁`, not for a finite sample of weights.
- `g = 9` is not covered: the recursion would need masses of groups of dual dimension `19`, such as
  `Sp₁₈`, which §4 does not determine.

### 7.4 The regular enumeration in weight at most 13

Prove (CT20 §5.3.1): for `13 ≥ k₁ ≥ ⋯ ≥ k_g > g ≥ 1`, every block of a contributing parameter lies in `L₂₄`,
the 27 classes of the Layer 5 Examples; counting the two `Δ₂₃` classes separately there are `223` candidate
parameters in positive genus, of which `58` pass §3.3; identifying the two `Δ₂₃` classes there are `198`
shapes with the same `58` passing, and with genus zero `199` shapes and `59` passing. Write `A_reg` for
this set of `58` eigenparameters in positive genus, and for `ψ ∈ A_reg` of genus `g` with positive
infinitesimal weights `a₁ > ⋯ > a_g` write `k(ψ) = (a₁ + 1, …, a_g + g)`, the dominant weight with
`k_g > g` at which `ψ` contributes (§7.2). Of the `58` members of `A_reg`, `29` have nonscalar weight
`k(ψ)` and `29` scalar weight.

*Needs:* §§5.3, 5.6, 5.10, 7.2.

**Checks.**

- The `25` extra candidates obtained by distinguishing `Δ₂₃^a` from `Δ₂₃^b` all fail the sign test.
- The weight `k_i` is recovered as `a_i + i` from the ordered positive infinitesimal weights `a_i`.
- `29 + 29 = 58`.

### 7.5 Scalar case (I) in low weight

Prove (CT20 §5.3.2, case (I)): for scalar `1 ≤ k ≤ 13` and `g ≥ k`, a realized case-(I) parameter has
`g = k = 12` and `ψ = Δ₁₁[12] ⊕ [1]`, which passes the sign test and gives one cuspidal eigenline in
`S₁₂(Γ₁₂)`. A block crossing zero must be `Δ₁₁[12]`, which forces the distinguished block to be trivial;
the eigenline is cuspidal because a nonzero `Φ` would introduce the zeta factors of §6.1, which this
parameter does not have.

*Needs:* §§3.9, 5.3, 5.6, 5.10, 6.1, 7.1.

**Checks.**

- The sign test reads `χ(s) = (−1)^{2·12/4} = 1 = ε(Δ₁₁) = ε_ψ(s)`.
- `ψ` has dimension `24 + 1 = 25 = 2·12 + 1`.
- Square-integrability alone does not give cuspidality in singular weight; the argument through §6.1 is
  needed.

### 7.6 Scalar case (H1) in low weight

Prove (CT20 §5.3.2, case (H1), Lemmas 5.5–5.7): for `1 ≤ k ≤ 13`, `g ≥ k` and a realized case-(H1)
parameter, every block lies in `L₂₄` and `π_{i₀} = 1`; the alternative `π_{i₀} = Sym²Δ₁₁` forces
`(g, k) = (14, 13)` and `ψ = Sym²Δ₁₁[3] ⊕ Δ₁₁[8] ⊕ [3] ⊕ [1]`, which fails the sign test at the `Δ₁₁[8]`
generator. Then `k ≡ 0 mod 4`, the remainder `ψ′` is one of the `1`, `2`, `24` lattice parameters of §6.8
for `k = 4, 8, 12`, and by §6.10 every realized lift is noncuspidal except `g = k = 12`,
`ψ = Δ₁₁[12] ⊕ [1]`, the form of §7.5.

*Needs:* §§3.10–3.12, 6.8, 6.10, 7.5.

**Checks.**

- At `(g, k) = (14, 13)`: `ε_ψ(s) = ε(Δ₁₁ × Sym²Δ₁₁) = −1` while `χ(s) = 1`.
- For `k = 2, 6, 10` the remainders fail the odd-pair test; for `k = 2, 6`, `ψ′ = [2k − 1] ⊕ [1]` and
  `(−1)^{a/2}` with `a = k ≡ 2 mod 4` is `−1` against `ε = 1`.
- The degree of the genus-12 form is exactly `12`; this uses §6.8, not the dimension count of §7.9.

### 7.7 Scalar case (H2) in low weight

Prove (CT20 §5.3.2, case (H2), Lemmas 5.8–5.9): for `1 ≤ k ≤ 13` and `g ≥ k`, a realized case-(H2) parameter
has `π_{i₀} = 1`, `k` odd and `g` even; if another zero-weight block is nontrivial it is `Sym²Δ₁₁` with
`d = 1`, `k = 13`, `g = 24` and a third trivial block of length at least five. Separate two branches.
If `Δ₁₁[12]` is a summand of the remainder, then `(g, k) = (24, 13)` and `ψ = Δ₁₁[12] ⊕ [25]`, which
passes the sign test. Otherwise the sign test at the odd-pair generator `s_{i₀}s_{i₂}` forces a summand
among `Δ₁₇[4]`, `Δ₁₇[8]`, `Δ₂₁[4]`, and the only parameter that remains is `(g, k) = (16, 13)` with
`ψ = Δ₁₇[8] ⊕ [9] ⊕ [7] ⊕ [1]` (CT20 §5.3.2, the concluding argument for (H2)). Both parameters pass,
with multiplicity one, and are cuspidal by odd weight.

*Needs:* §§3.10–3.12, 5.3, 5.6, 5.10, 6.2, 7.1.

**Checks.**

- The genus-16 parameter uses the trivial class at `d = 9, 7, 1`; forbidding a repeated class would lose it.
- The rejected shapes `Δ₂₁[4] ⊕ Δ₁₁[6] ⊕ [5] ⊕ [3] ⊕ [1]` and `Δ₂₃,₇[2] ⊕ Δ₁₇[4] ⊕ Δ₁₁[2] ⊕ [5] ⊕ [3] ⊕ [1]`
  fail at the `Δ₁₁` generator: `χ = (−1)^{d/2} = −1` against `ε_ψ = 1`.
- In (H2) the weight `g − k + 1` is omitted from the remainder; for `(16, 13)` it is `4`, and the
  remainder `Δ₁₇[8] ⊕ [7] ⊕ [1]` has weights `±12, …, ±5, ±3, ±2, ±1, 0, 0` without `±4`.
- The genus-24 parameter is separated before the three-block restriction: `Δ₁₁[12] ⊕ [25]` has dimension
  `24 + 25 = 49 = 2·24 + 1` and contains none of `Δ₁₇[4]`, `Δ₁₇[8]`, `Δ₂₁[4]`, so imposing that
  restriction on every branch would wrongly exclude it.

### 7.8 The twenty-nine nonscalar spaces

Prove (CT20 Theorem 2; the source lists the weights and parameters in its Table 6, p. 58): for nonscalar
dominant `k` with `13 ≥ k₁ ≥ ⋯ ≥ k_g > g ≥ 1`, `dim S_k(Γ_g)` is the number of `ψ ∈ A_reg` with `k(ψ) = k`
(§7.4). The map `ψ ↦ k(ψ)` is injective on the `29` members of `A_reg` of nonscalar weight, so
`dim S_k(Γ_g) ≤ 1` for every such `k`, with equality at exactly `29` weights, all in genera `3` to `8`; the
standard parameter of the eigenform at such a weight is the unique `ψ` in the fibre.

*Needs:* §§7.1, 7.4.

**Checks.**

- `(13, 10, 7)`: `k_i − i = 12, 8, 4`, the positive weights of `O^odd(24,16,8)`, of rank `7 = 2·3 + 1`; this
  is the one member of `A_reg` with `k(ψ) = (13, 10, 7)`.
- `(11, 11, 7, 7)`: `k_i − i = 10, 9, 4, 3`, the shifted weights `19/2 ± 1/2` and `7/2 ± 1/2` of
  `Δ₁₉,₇[2] ⊕ [1]`.
- Injectivity holds on the nonscalar part only: on scalar weights `ψ ↦ k(ψ)` is not injective, the fibre
  over `(12, 12, 12, 12)` having two members (§7.9).
- The `29` weights are distributed `3, 7, 4, 5, 4, 6` over the genera `3, …, 8`; in genus `2` every
  nonscalar `k` with `13 ≥ k₁ ≥ k₂ > 2` has `dim S_k(Γ₂) = 0`. The genus-two eigenform attached to
  `Δ₁₉,₇` has standard parameter of positive weights `(19 + 7)/2 = 13` and `(19 − 7)/2 = 6`, so it sits at
  `k = (14, 8)`, just outside the range.
- No statement is made outside `k_g > g`.

### 7.9 All scalar cusp dimensions through weight thirteen

Prove (CT20 Theorem 2; the source lists the parameters in its Table 5, p. 59): for every `g ≥ 1` and integer
`0 ≤ k ≤ 13`, `dim S_k(Γ_g) = |A(g, k)|`, where `A(g, k)` consists of the `ψ ∈ A_reg` of genus `g` with
`k(ψ) = (k, …, k)` (which requires `k > g`), together with those of the three singular parameters of
§§7.5 and 7.7 that lie at `(g, k)`: `Δ₁₁[12] ⊕ [1]` at `(12, 12)`, `Δ₁₇[8] ⊕ [9] ⊕ [7] ⊕ [1]` at `(16, 13)` and
`Δ₁₁[12] ⊕ [25]` at `(24, 13)`. The scalar members of `A_reg` are `29`, so the sets `A(g, k)` have `32`
members in all, and the standard parameters of an eigenbasis of `S_k(Γ_g)` are the members of `A(g, k)`.
For `k < 0` there are no forms (§6.2).

*Needs:* §§6.2, 7.1, 7.4–7.7.

**Checks.**

- `dim S₁₂(Γ₄) = 2`: `A(4, 12)` consists of `Δ₁₉[4] ⊕ [1]` and `Δ₁₇[2] ⊕ Δ₂₁[2] ⊕ [1]`, both with positive
  infinitesimal weights `11, 10, 9, 8`, hence `k(ψ) = (12, 12, 12, 12)`; reading the count as one
  eigenform per weight gives `1`.
- The weight-12 dimensions for `g = 1, …, 12` are `1, 1, 1, 2, 2, 3, 3, 4, 2, 2, 1, 1`, agreeing with CL14
  Théorème D, an independent theta-series computation, and with the consecutive differences of the
  sequence of §8.2.
- `S₈(Γ_g)` is nonzero only for `g = 4`, `S₁₀(Γ_g)` only for `g = 2, 4, 6, 8`, and `S₄(Γ_g) = S₆(Γ_g) = 0` for
  all `g ≥ 1`.
- Restricting to `A_reg` loses the singular forms: `Δ₁₁[12] ⊕ [25]` has `k = 13 < 24 = g`, so it is not in
  `A_reg`, and without §7.7 the count would give `dim S₁₃(Γ₂₄) = 0`, against §7.10.

### 7.10 The four weight-thirteen cusp forms

Prove (CT20 Corollary 1): for every `g ≥ 1`, `M₁₃(Γ_g) = S₁₃(Γ_g)` has dimension one for `g = 8, 12, 16, 24` and is
`0` otherwise. Call `F_g` a generator; its standard parameter is `Δ₂₁,₁₃[4] ⊕ [1]`, `Δ₁₉,₇[6] ⊕ [1]`,
`Δ₁₇[8] ⊕ [9] ⊕ [7] ⊕ [1]` and `Δ₁₁[12] ⊕ [25]` respectively, with infinitesimal weights `0, ±(13 − i)`,
`1 ≤ i ≤ g`.

*Needs:* §§6.2, 7.9.

**Checks.**

- For `g = 8`: `Δ₂₁,₁₃[4]` has shifted weights `21/2 + 3/2 − r` and `13/2 + 3/2 − r`, `r = 0, …, 3`, that is
  `12, 11, 10, 9` and `8, 7, 6, 5`, which with `0` are the weights `0, ±(13 − i)`.
- For `g = 24` the weights `0, ±(13 − i)` contain `±12` once, `±1, …, ±11` twice and `0` three times; so does
  `Δ₁₁[12] ⊕ [25]`.
- For every odd `g`, `M₁₃(Γ_g) = 0` by §6.2; for `g > 26`, `S₁₃(Γ_g) = 0` by Resnikoff–Freitag.

### Examples

`S₁₀(Γ₂)` is spanned by the Saito–Kurokawa lift of the weight-18 eigenform, parameter `Δ₁₇[2] ⊕ [1]`;
`S₁₂(Γ₁₂)` by the form of parameter `Δ₁₁[12] ⊕ [1]`, which is the genus-12 Ikeda lift of `Δ`; and
`S₁₃(Γ₂₄)` by the form of parameter `Δ₁₁[12] ⊕ [25]`, constructed by Freitag as a theta series of the Leech
lattice (§8.6).

### Dependencies

Layers 3–6 (§§3.3–3.16, 4.13–4.17, 5.3–5.10, 6.1–6.2, 6.8, 6.10); AutomorphicFormsOnReductiveGroups §7.2a.

## Layer 8: harmonic theta realizations and the stable range

The cusp classification gives theta spanning in weights 4, 8 and 12 by induction along the Siegel
operator. In weight 13, Böcherer's criterion and a direct computation of Fourier coefficients on the
Leech lattice realize the four forms of §7.10 as harmonic theta series; the invariant alternating forms
of Niemeier lattices make the harmonic theta map an isomorphism; the Leech statements of §§8.5–8.6 rest on
the Mathieu combinatorics of §8.4 and on the Conway-group input imported from CFSGBasicProperties, not
on Layer 7, and are unconditional. In the stable range `g ≥ 2k` the
parameters and signs are independent of `g`, which gives the stable dimensions, bijectivity of `Φ` at
the boundary `g = 2k`, and the theta isomorphism there.

### 8.1 The Eichler basis theorem in weights four, eight and twelve

Prove (CT20 Corollary 5.10): for `k ∈ {4, 8, 12}` and every `g ≥ 0`, `θ_g : ℂ[X_{2k}] → M_k(Γ_g)` is surjective,
and `Φ_g` is surjective for `g ≥ 1`. For `g ≤ k` this is §6.8; for `g > k`, `S_k(Γ_g) = 0` by §7.9, so `Φ_g`
is injective, and for `F ∈ M_k(Γ_g)` a theta preimage `v` of `Φ_g F` gives `Φ_g(θ_g(v) − F) = 0`, hence
`θ_g(v) = F`.

*Needs:* §§6.1, 6.4, 6.8, 7.9.

**Checks.**

- The induction needs no prior surjectivity of `Φ_g`: it follows from `Φ_g θ_g = θ_{g−1}`.
- In weight 16 the analogous statement fails: `θ_{14} : ℂ[X₃₂] → M₁₆(Γ₁₄)` is not surjective (CL14 VII,
  Corollaire 3.5, cited by CT20 §5.4); the theorem is about three weights only.
- `g = 0`: `θ₀` maps onto the constants.

### 8.2 Dimensions in weights four, eight and twelve

Prove (CT20 Remark 5.11): for `k = 4, 8, 12` and every `g`, `dim M_k(Γ_g) = Σ_{h=0}^{g} dim S_k(Γ_h)` with
`S_k(Γ₀)` the constants; in particular `dim M_k(Γ_g) = |X_{2k}|` for `k = 4`, `g ≥ 1`; `k = 8`, `g ≥ 4`; and
`k = 12`, `g ≥ 12`. For `k = 12` the dimensions in genus `0, …, 12` are
`1, 2, 3, 4, 6, 8, 11, 14, 18, 20, 22, 23, 24`.

*Needs:* §§8.1, 6.8, 7.9.

**Checks.**

- The thresholds `1, 4, 12` are not the general stable bound `g ≥ 2k`.
- The genus-zero constant accounts for the initial `1`.
- The weight-12 sequence equals the cumulative degree distribution of §6.8, as it must since `θ_g` is
  surjective and the eigenvectors of degree at most `g` map injectively.

### 8.3 An orbit basis of exterior invariants

Prove (CT19a Fact 1.2): let a group `H`, not necessarily finite, act on a finite set `Ω`, and call a subset `S`
orientable when its stabilizer `H_S` acts on `S` by even permutations. For each orbit of orientable `g`-subsets
choose a representative `S` with an orientation `s`, and put `σ_S = Σ_{γ ∈ H/H_S} γ(s(1) ∧ ⋯ ∧ s(g))`. These
`σ_S` form a basis of the `H`-invariants of `⋀^g ℚ^Ω`; a non-orientable orbit contributes nothing. The sum is
finite because `H/H_S` is in bijection with the orbit of `S` in the finite set of `g`-subsets, and `H` acts
through its finite image in the permutations of `Ω`, which has the same invariants and the same orientable
orbits; no averaging over `H` is used.

*Needs:* Mathlib exterior powers.

**Checks.**

- `g = 0`: the empty set is orientable and `σ_∅ = 1`.
- `H = S₃` on `Ω = {1, 2, 3}`: the 3-subset has stabilizer `S₃`, containing odd permutations, so
  `(⋀³ℚ³)^{S₃} = 0`; for `H = A₃` it is one-dimensional.
- The dimension counts orientable orbits, not all orbits: for `H = S₃` and `g = 2` there is one orbit of
  2-subsets, not orientable (the transposition in the stabilizer swaps the two points), and
  `(⋀²ℚ³)^{S₃} = 0`.
- An infinite group: `H = ℤ` acting on `Ω = {1, 2, 3}` through the cycle `1 ↦ 2 ↦ 3 ↦ 1`. In degree two the
  one orbit of 2-subsets has stabilizer `3ℤ`, acting trivially, and `σ = e₁∧e₂ + e₂∧e₃ + e₃∧e₁`; in degree
  three the stabilizer `ℤ` acts by an even 3-cycle and `e₁∧e₂∧e₃` is fixed. The invariant dimensions in
  degrees `0, …, 4` are `1, 1, 1, 1, 0`, those of the finite image `A₃`.

### 8.4 The Mathieu forms on the Leech lattice

Let `Ω` be a 24-element set and `G₂₄` the extended binary Golay code on `Ω` (AlgebraicCodingTheory Layer 5,
`TauCeti.BinaryGolay.code`), and let `M₂₄` be the group of permutations of `Ω` preserving `G₂₄`, identified
with the Mathieu group by CFSGBasicProperties P2-L, so that its order is the `244823040` of SporadicOrders
Layer 1. Prove: `(1/|M₂₄|) Σ_{γ ∈ M₂₄} det(t − γ)` is
`t²⁴ − t²³ − t¹⁷ + 2t¹⁶ − t¹⁵ − t¹³ + 2t¹² − t¹¹ − t⁹ + 2t⁸ − t⁷ − t + 1` (CT19a Fact 1.1); a subset of `Ω` is
`M₂₄`-orientable exactly when it is `C + P` with `C ∈ G₂₄` and `|P| ≤ 1`, or `|P| = 2` and `|P ∩ C| = 1` (CT19a
Lemma 1.3). In the Conway coordinates of the Leech lattice, related to Rank24LatticeConstructions Layer 6
by the coordinate equivalence and norm scaling of CFSGBasicProperties P2-L, `M₂₄` and the sign changes
`G₂₄` generate a subgroup `N = 2¹²M₂₄` of `O(Leech)`. For `C ∈ G₂₄` with
`|C| = g ∈ {0, 8, 12, 16, 24}` define `ω_g` as the alternating form corresponding to `σ_C` under the inner
product (CT19a Definition 1.5).

- `ω_g` is defined up to sign, nonzero, and invariant under `N`.
- Reversing the orientation replaces `ω_g` by `−ω_g`; `ω₀ = 1` and `±ω₂₄` is the determinant in a `ℤ`-basis of the
  Leech lattice.
- The `N`-invariants of `⋀^g ℚ^Ω` are `ℚσ_C` for `g ∈ {0, 8, 12, 16, 24}` and `0` otherwise (CT19a
  Proposition 1.4, proof).

*Needs:* §8.3; AlgebraicCodingTheory Layer 5; SporadicOrders Layer 1; CFSGBasicProperties P2-L;
Rank24LatticeConstructions Layer 6; `TauCeti.BinaryGolay.code`, `TauCeti.BinaryGolay.weightEnumerator_code`.

**Checks.**

- The average characteristic polynomial has coefficient `2` at `t¹⁶`, `t¹²` and `t⁸`: the `M₂₄`-invariants of
  `⋀^g` have dimension two for `g = 8, 12, 16`, one of which is not `N`-invariant.
- An element `S ∈ G₂₄` acts on `σ_T` by `(−1)^{|S ∩ T|}`; since codewords meet in an even number of points,
  `σ_C` is `N`-invariant, while `C + {p}` with `p ∉ C` is negated by the complement of `C`.
- A non-orientable subset gives `σ = 0`: its stabilizer contains an odd permutation of it.

### 8.5 Invariant alternating forms of Niemeier lattices

Define `invariantAlternatingForms L g`, for `L : TauCeti.IntegralLattice V`, as the subspace of alternating
`g`-forms `ω : Vᵍ → ℚ` with `ω(e v₁, …, e v_g) = ω(v₁, …, v_g)` for every `e : TauCeti.IntegralLattice.Isometry L L`.
Prove:

- `invariantAlternatingForms_eq_bot_of_roots_span` (CT19a Proposition 4.1): if the vectors of norm `2` of an
  integral lattice span `V`, then `invariantAlternatingForms L g = ⊥` for every `g ≥ 1`. A reflection `s` in a
  root `x` is an isometry of `L` with `s(x) = −x` and `s(y) ∈ y + ℤx`, so an invariant `ω` vanishes on any tuple
  containing a root.
- `finrank_invariantAlternatingForms_of_rootless` (CT19a formula (1) and Proposition 1.4): for a positive
  definite even unimodular lattice of rank 24 without roots, the dimension of
  `invariantAlternatingForms L g` is `1` for `g ∈ {0, 8, 12, 16, 24}` and `0` otherwise. The dimension is
  the multiplicity of the trivial representation of `O(Leech)` in `⋀^g(Leech ⊗ ℚ)`, which is `(−1)^g`
  times the coefficient of `t^{24−g}` in the average characteristic polynomial
  `(1/|O(Leech)|) Σ_{γ ∈ O(Leech)} det(t − γ)`; that average is `t²⁴ + t¹⁶ + t¹² + t⁸ + 1` (CT19a formula
  (1)), imported from CFSGBasicProperties P2-L (gap:conway-group-average-charpoly). The `N`-invariants
  of §8.4 bound the dimension above by `1` for `g ∈ {0, 8, 12, 16, 24}` and by `0` otherwise, so the
  `O(Leech)`-invariants are `ℚω_g` in those degrees: `ω_g` is `O(Leech)`-invariant, and for `g = 24`
  every element of `O(Leech)` has determinant `1`, which also follows from the simplicity of
  `Co₁ = O(Leech)/{±1}` (CFSGBasicProperties P2-L), as the determinant factors through it. Under the
  premises of Layer 7, §8.8's first route gives a second proof of the lower bound in genera `8, 12, 16`
  and `24`. The uniqueness of the rootless class (OrthogonalTamagawaAndLatticeMass §4.2) transports the
  result from Conway's model to every such `L`.
- Consequently (CT19a Proposition 4.2) the harmonic source `M_{H_{1,g,24}}(O₂₄)` of §6.7 has dimension `1` for
  `g ∈ {8, 12, 16, 24}` and `0` for every other `g ≥ 1`, and the forms supported on rooted classes vanish.

The definition is a submodule: invariance is preserved by sums and scalar multiples, and `0` is invariant.

- `invariantAlternatingForms L 0` is all of the constants, of dimension one.
- The invariant forms for `L` and for an isometric lattice correspond under the isometry.
- Every element of `O(Leech)` has determinant `1`, the case `g = 24`.

*Needs:* §§6.6–6.7, 8.4; CFSGBasicProperties P2-L (gap:conway-group-average-charpoly);
OrthogonalTamagawaAndLatticeMass §4.2; Rank24LatticeConstructions Layer 6; `TauCeti.IntegralLattice`,
`TauCeti.IntegralLattice.Isometry`, `TauCeti.IntegralLattice.vectorsOfNorm`; Mathlib `AlternatingMap`.

**Checks.**

- `TauCeti.BinaryGolay.constructionALattice` is even unimodular of rank 24 with the roots `2e_i` (norm `2`
  for the halved dot product), which span: its invariant alternating `g`-forms vanish for `g ≥ 1`, while the
  Leech lattice has a nonzero one in degree `8`.
- In rank one, `ℤx` with `x · x = 2` is spanned by a root and `invariantAlternatingForms` vanishes in degree
  `1`: the reflection `x ↦ −x` negates every linear form.
- `t²⁴ + t¹⁶ + t¹² + t⁸ + 1` has five nonzero coefficients, all equal to `1`, at `g = 0, 8, 12, 16, 24`; the
  statement for `g > 24` is `0` since `⋀^g` of a 24-dimensional space vanishes.
- The sign in the reading of the average: for the trivial group acting on `ℚ²⁴` the average is
  `(t − 1)²⁴`, whose `t²³` coefficient is `−24 = (−1)¹ dim ⋀¹`; for `{±1}` it is `((t − 1)²⁴ + (t + 1)²⁴)/2`,
  with the odd-degree coefficients `0`, as the invariants of `⋀^g` under `−1` vanish for odd `g`.

### 8.6 The Leech theta coefficients

Define `thetaCoefficient L ω T`, for an alternating `g`-form `ω` and a `g × g` rational matrix `T`, as the sum of
`ω(x)` over the `x ∈ Lᵍ` with `Gram(x) = T`; it is the Fourier coefficient at `T/2` of the theta series
`Σ_{x ∈ Lᵍ} ω(x) exp(πi tr(Gram(x)τ))`, a finite sum when `L` is positive definite. Prove
`exists_thetaCoefficient_ne_zero_of_rootless` (CT19a Theorem 2): for the Leech lattice, `g ∈ {8, 12, 16, 24}`
and a nonzero invariant `ω`, some coefficient is nonzero. More precisely, there are oriented even rootless
sublattices `Q_g` of rank `g`, unique in their `O(Leech)`-orbit of embeddings (CT19a Proposition 3.13), with
`Q₂₄ = Leech`, `Q₁₂` the Coxeter–Todd lattice (discriminant group `(ℤ/3)⁶`) and `Q₈`, `Q₁₆` with
discriminant group `(ℤ/5)⁴` (CT19a Lemma 2.1 and Proposition 2.2), and for `ω = ω_g` of §8.4 and `T` the Gram
matrix of a basis of `Q_g`, `thetaCoefficient = ±n_g e_g` with `(e₈, e₁₂, e₁₆, e₂₄) = (5, 18, 5, 1)` and
`n_g = |O(Leech)|/κ_{24−g}` the number of isometric embeddings `Q_g → Leech`, where `κ_h = 1` for `h < 12`,
`κ₁₂ = 3` and `κ₁₆ = 10` (CT19a Lemma 2.4).

- `thetaCoefficient` is additive in `ω`.
- For `T` the Gram matrix of a basis, the summation set is the set of bases of embedded copies, of
  cardinality `n_g`.
- For `g = 24` and `T` the Gram matrix of a `ℤ`-basis `u` of Leech, every `x` with `Gram(x) = T` is `γu` with
  `γ ∈ O(Leech)`, and `ω₂₄(γu) = ω₂₄(u)`, so the coefficient is `±|O(Leech)|`.

*Needs:* §§8.4, 8.5; OrthogonalTamagawaAndLatticeMass §4.2; Rank24LatticeConstructions Layer 6;
AlgebraicCodingTheory Layer 5.

**Checks.**

- `n₂₄ = |O(Leech)| = 8315553613086720000` since `κ₀ = 1`; `n₁₂ = |O(Leech)|/3`, `n₈ = |O(Leech)|/10`.
- `e₈ = 5` is the number of octads containing a fixed tetrad (CT19a Lemma 2.3); dividing by the stabilizer
  `|O(Q_g)|` instead would count sublattices, not embeddings.
- A non-orientable lattice of rank `g` has coefficient `0` for every invariant `ω`: an isometry of
  determinant `−1` negates the summand. `Q₆` is not orientable (CT19a Proposition 3.7).

### 8.7 The five order computations

Prove (BoechererNote pp. 2–3): in the five cases of §6.12 the function `R(s)` has order `0` at `s = 0` with a
nonzero leading coefficient. Writing `Λ_A = L(s, F_g, St) Γ_A(s)` with `Γ_A` the archimedean factor of the
Arthur parameter (a product of `Γ_ℝ` and `Γ_ℂ`, distinct from Böcherer's `γ_g^k`), the orders at `s = 0` of
`(C, 1/ω, γ, Λ_A, 1/Γ_A)` are `(0, 0, 0, −1, 1)` for `(g, n, ν) = (8, 16, 5)`, and `(0, 0, 0, 0, 0)`,
`(0, 0, 0, −1, 1)`, `(0, −4, −4, −1, 9)`, `(0, −12, −12, −1, 25)` for `n = 24`, `ν = 1` and `g = 8, 12, 16, 24`.
The nonvanishing at the two central points uses §6.11.

*Needs:* §§3.1, 6.11, 6.12, 7.10; AutomorphicLFunctionsAndLocalFactors §AL.1.4.

**Checks.**

- Every row sums to `0`.
- For `g = 24` the order of `ω₂₄(12 + 2s)` at `0` is the number of `i ≤ 24` with `24 − 2i < 0`, that is `12`, and
  `Γ_A` has order `−13 − 12 = −25` at `s = −12`.
- For `g = 16`, `γ` has order `−4`: the odd `i < 16` with `i ≥ 2k − g − 1 = 9` are `9, 11, 13, 15`.

### 8.8 Harmonic theta realization of the four forms

Prove (CT20 Proposition 5.12): `F_g` lies in the image of `θ_{1,g,24}` for `g = 8, 12, 16, 24`, and `F₈` lies in the
image of `θ_{5,8,16}`. Apply §6.12 with §8.7, and use that each `S₁₃(Γ_g)` is a line. Independently, §8.6 shows
that the image of `θ_{1,g,24}` is nonzero, hence equal to `ℂF_g` by §7.10.

*Needs:* §§6.7, 6.12, 7.10, 8.7; §8.6 for the second route.

**Checks.**

- `n/2 + ν = 13` in both families: `24/2 + 1 = 16/2 + 5`.
- The rank-16 statement is for `g = 8` and `ν = 5` only.
- The two routes are independent: the first uses `L`-function orders under the premises of Layer 7, the
  second the lattice count of §8.6, which rests on the Conway-group input of §8.5 and not on Layer 7.

### 8.9 The rank-sixteen harmonic source

Prove (CT20 §5.4, after Corollary 5.13): `M_{H_{5,8,16}}(O₁₆)` has dimension two, spanned by two Hecke eigenvectors
with standard parameters `Δ₂₁,₁₃[4]` and `Δ₁₇[8]`, and `θ_{5,8,16}` maps it onto `ℂF₈`. Compute the invariants of
`H_{5,8,16}` under `O(E₈ ⊕ E₈)` and `O(D₁₆⁺)`, decompose under the neighbour operators, and identify the
parameters through §6.9.

*Needs:* §§6.3, 6.7, 6.9, 8.8; OrthogonalTamagawaAndLatticeMass §4.1.

**Checks.**

- Both parameters have dimension `16`: `4·4` and `2·8`.
- A one-dimensional target does not force a one-dimensional source: the source is two-dimensional and the
  eigenvector `Δ₁₇[8]` maps to `0`.
- By the harmonic form of §6.9 with `n = 16 < 2g + 1 = 17`, a nonzero image of the eigenvector `Δ₂₁,₁₃[4]` has
  parameter `Δ₂₁,₁₃[4] ⊕ [1]`, that of `F₈`; a nonzero image of `Δ₁₇[8]` would have parameter `Δ₁₇[8] ⊕ [1]`,
  which is not in `A(8, 13)` of §7.9, whose one member is `Δ₂₁,₁₃[4] ⊕ [1]`.

### 8.10 The alternating theta isomorphism

Prove (CT20 Corollary 5.13; CT19a Corollary 4.3 and Theorem 4.4): for every `g ≥ 1`,
`θ_{1,g,24} : M_{H_{1,g,24}}(O₂₄) → S₁₃(Γ_g)` is an isomorphism. Both sides vanish outside `g ∈ {8, 12, 16, 24}`
(§§8.5 and 7.10); in those genera the source is the Leech line, whose image is nonzero by §8.6.

*Needs:* §§6.7, 7.10, 8.5, 8.6.

**Checks.**

- For `g > 24` both sides are `0`.
- For `g = 9` the source is `0` by §8.5 and the target is `0` by odd genus.
- The image eigenform has the parameter of §7.10, by §6.9 for `n = 24`.

### 8.11 Stable parameters

Prove (CT20 Proposition 5.14, proof): for `k ≥ 1` and `g ≥ 2k`, every eigenform in `M_k(Γ_g) = L²_k(Γ_g)` (§6.2) has
parameter `ψ = ψ′ ⊕ [2(g − k) + 1]` in case (H1) with trivial distinguished block, `k` even, and `ψ′_ℝ` an
Adams–Johnson parameter of the compact group `SO(2k)`. The component groups for two genera `g, g′ ≥ 2k` are
identified through the blocks; for a symplectic block `d_i ≤ k < 2(g′ − k) + 1` with `d_i` even, so
`ε(π_i)^{min(d_i, 2(g′−k)+1)} = 1`; the characters do not depend on `g`. At the product of the even generators
(with the odd-pair generator when present) the local sign is `(−1)^{k/2}` and the global sign `1`, so `4 | k`.

*Needs:* §§3.10–3.12, 6.2, 7.1.

**Checks.**

- For `g ≥ 2k`, case (H2) is impossible because it forces `g ≤ 2k − 2` (§3.7), and case (I) because it
  needs `k − 1 > g − k ≥ k`.
- `k = 2`: the sign `(−1)^{k/2} = −1 ≠ 1`, so `M₂(Γ_g) = 0` for `g ≥ 4`.
- `k = 0` is excluded here and treated in §8.12.

### 8.12 Stable dimensions

Prove (CT20 Proposition 5.14): for all integers `k, g ≥ 0` with `g ≥ 2k`, `dim M_k(Γ_g) = dim M_k(Γ_{2k})`, and this
dimension is `0` unless `4 | k`. For `k = 0` it is `1`; for `k > 0` the map `ψ′ ⊕ [2(g − k) + 1] ↦ ψ′ ⊕ [2(g′ − k) + 1]`
preserves occurrence and multiplicity by §8.11.

*Needs:* §8.11.

**Checks.**

- `k = 1, 2, 3`: `M_k(Γ_g) = 0` for `g ≥ 2k`.
- `k = 0`: the constants, of dimension `1` in every genus, including `g = 0`.
- `k = 4`: `dim M₄(Γ_g) = 1 = |X₈|` for `g ≥ 8`, consistent with §8.2.

### 8.13 The stable Siegel operator

Prove (CT20 Corollary 5.15(1)): for `k, g ≥ 0` with `g ≥ 2k`, `Φ_{g+1} : M_k(Γ_{g+1}) → M_k(Γ_g)` is bijective.
It is injective because `S_k(Γ_{g+1}) = 0` for `g + 1 > 2k` (§6.2), and the dimensions agree by §8.12.

*Needs:* §§6.1–6.2, 8.12.

**Checks.**

- The boundary case `g = 2k` uses only the strict vanishing at `g + 1 = 2k + 1`.
- `k = 0`: `Φ` is the identity on constants.
- At `g = 2k − 1` the statement is not claimed: injectivity of `Φ_{2k}` would need `S_k(Γ_{2k}) = 0`, which
  §6.2 gives only in genus above `2k`.

### 8.14 The stable theta isomorphism

Prove (CT20 Corollary 5.15(2)): for `4 | k` and `g ≥ 2k`, `θ_g : ℂ[X_{2k}] → M_k(Γ_g)` is an isomorphism. Injectivity at
`g = 2k` holds because the Fourier coefficient at the full Gram matrix of a basis of `L` distinguishes isometry
classes, and propagates by `Φ θ_{g+1} = θ_g`; surjectivity for `g > 2k` is Freitag's theorem of §6.2, and at
`g = 2k` it follows from the surjectivity of `θ_{2k+1}` and of `Φ_{2k+1}` (§8.13). For `k = 0`, the rank-zero
lattice maps to `1`.

*Needs:* §§6.2, 6.4, 8.13.

**Checks.**

- `k = 4`, `g = 8`: `ℂ[X₈] ≅ M₄(Γ₈)`, both one-dimensional.
- `k = 8`, `g = 16`: `dim M₈(Γ₁₆) = |X₁₆| = 2`.
- The basis of `ℂ[X_{2k}]` is unweighted; a full-rank Gram coefficient of `θ_{2k}[L]` counts the bases of `L`
  with that Gram matrix, which is `|O(L)| ≠ 0`.

### Examples

`θ_g[E₈]` spans `M₄(Γ_g)` for every `g`. The difference `θ₄[E₈ ⊕ E₈] − θ₄[D₁₆⁺]` spans `S₈(Γ₄)`. In weight 13 and
genus 24 the coefficient of `θ_{ω₂₄}` at the Gram matrix of a basis of Leech is `±|O(Leech)|`; in genus 8 the
form `F₈` is realized both on the Leech lattice (`ν = 1`) and on the rank-16 lattices (`ν = 5`).

### Dependencies

Layers 6–7 (§§6.1–6.12, 7.9–7.10); CFSGBasicProperties P2-L; OrthogonalTamagawaAndLatticeMass §§4.1–4.2;
Rank24LatticeConstructions Layer 6; AlgebraicCodingTheory Layer 5; SporadicOrders Layer 1;
AutomorphicLFunctionsAndLocalFactors §AL.1.4; Tau Ceti's lattice carrier and Golay code.

## Downstream consumers

- SiegelModularForms consumes the genus-`g` theta map of §6.4 (its comparison with theta series of general
  lattices) and the harmonic theta map of §6.7, and compares its Ikeda lift with the genus-12 form of §7.5.
- Miller's theorem (§2.19) and the Stark–Odlyzko cone inequality (§2.7) are owned here; a roadmap on the
  cuspidal cohomology of `GL_n(ℤ)` imports them rather than proving them again.

## Worked examples

- `SO₃` (§4.12): five torsion classes, determinant `288`, masses `(−1/12, 1/4, 1/3, 0, 0)`, the last two killed by the
  spinor obstruction (§4.7), recovering the level-one dimension formula.
- The compression example (§2.15): minima `−1` and `−1/2`, both negative.
- The Ikeda-type parameter `Δ₁₁[12] ⊕ [1]` (§§3.8, 3.13, 7.5): simultaneously in cases (I) and (H1), with sign
  test `1 = 1`.
- The genus-24 form (§§7.7, 8.6): parameter `Δ₁₁[12] ⊕ [25]`, theta coefficient `±|O(Leech)|`.

## References

- [CT20] G. Chenevier, O. Taïbi, *Discrete series multiplicities for classical groups over ℤ and level 1
  algebraic cusp forms*, Publ. Math. IHÉS 131 (2020), 261–323; cited in the HAL version hal-02265675v1, whose
  section, equation and statement numbering is used throughout.
- [Tai17] O. Taïbi, *Dimensions of spaces of level one automorphic forms for split classical groups using the
  trace formula*, Ann. Sci. ÉNS 50 (2017), 269–344.
- [CL14] G. Chenevier, J. Lannes, *Formes automorphes et voisins de Kneser des réseaux de Niemeier*,
  arXiv:1409.7616v2.
- [CT19a] G. Chenevier, O. Taïbi, *Siegel modular forms of weight 13 and the Leech lattice*, arXiv:1907.08781v1.
- [BoechererNote] G. Chenevier, O. Taïbi, *Verification of Böcherer's criterion for the weight 13 forms*,
  companion note to [CT20], 2019.
- [Mil02] S. D. Miller, *The highest lowest zero and other applications of positivity*,
  arXiv:math/0112196v1.
- [vdG08] G. van der Geer, *Siegel modular forms and their applications*, in *The 1-2-3 of modular forms*,
  Universitext, Springer (2008); cited in arXiv:math/0605346v2, whose theorem and page numbering is used.
- [KT87] K. Koike, I. Terada, *Young-diagrammatic methods for the representation theory of the classical groups
  of type B, C, D*, J. Algebra 107 (1987), 466–511.

