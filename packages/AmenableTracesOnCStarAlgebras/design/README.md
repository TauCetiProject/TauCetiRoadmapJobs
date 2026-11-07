# Roadmap: amenable traces on C*-algebras

**Summary.** Build the trace-level finite-dimensional approximation theory of C*-algebras on
Mathlib's `CStarAlgebra`, `CompletelyPositiveMap` and `CStarMatrix`, on the completely positive,
tensor-product, nuclearity, exactness and quasidiagonality layers of CStarAlgebras and on the
state, standard-form and injectivity layers of VonNeumannAlgebras. The roadmap develops tracial
states of an arbitrary (unital or nonunital, separable or not) C*-algebra with their GNS
representations, the toolkit of completely positive contractions into full matrix algebras with
the normalized trace and its 2-norm, and the three approximation classes of traces: amenable,
quasidiagonal and uniform amenable. The end theorems are the Connes–Kirchberg characterization
of amenable traces by hypertraces, by the minimal tensor norm on `A ⊙ Aᵒᵖ` and by completely
positive extensions into the GNS von Neumann algebra, together with Connes's Følner condition;
the characterization of uniform amenable traces by injectivity of `π_τ(A)''`; the theorems that
every tracial state of a nuclear C*-algebra is uniform amenable and that on an exact C*-algebra a
tracial state is amenable exactly when `π_τ(A)''` is injective; convexity, closure, the face
property and the permanence of these classes under subalgebras, quotients, ideals, unitization
and minimal tensor products; the examples (finite-dimensional, commutative, AF and UHF
algebras, and the theorem that a discrete group is amenable exactly when its reduced C*-algebra
has an amenable trace); the passage between quasidiagonal traces and quasidiagonal algebras; and
the necessity half of the AF-embedding theorem: every nonzero C*-subalgebra of a simple unital AF
algebra is separable, exact and admits a faithful amenable trace.

## Scope and ownership

This roadmap owns, in eight layers: tracial states of C*-algebras, the tracial state space, the
trace kernel, the tracial extension to the unitization and from closed ideals, the GNS data of a
tracial state (vector trace, conjugation, right representation and the tensor functional
`μ_τ`), the normalized matrix trace and 2-norm, and finite-dimensional approximation of traces
(Layer 1); the completely positive contractions into matrix algebras with their 2-norm and norm
multiplicativity defects, asymptotic multiplicative domains, compressions, Ozawa's
prescribed-trace matrix maps and the normal extension to the bidual (Layer 2); the definitions of
amenable, quasidiagonal and uniform amenable traces and of a faithful amenable trace, their net,
sequence, unital and unitization reformulations, convexity, closure, pullback and tensor
permanence (Layer 3); hypertraces and the Connes–Kirchberg theorem with Connes's Følner condition
and its tracial von Neumann algebra form (Layer 4); weakly nuclear representations, the
injectivity characterization of uniform amenable traces, and the nuclear and exact cases
(Layer 5); faces, normalized restrictions, passage to the image of the GNS representation and
extension from ideals (Layer 6); the examples (Layer 7); and quasidiagonal traces on
quasidiagonal algebras, faithful quasidiagonal traces, Rosenberg's observation and the
subalgebras of simple unital AF algebras (Layer 8).

Tracial states on C*-algebras appear as hypotheses in OperatorAlgebraDynamics D7 (the β = 0
case of the KMS condition), in FreeProbability (tracial C*-probability spaces) and in
TypeAHeckeAlgebras, none of which develops the tracial state space, its GNS data or its
permanence; this roadmap owns that theory. VonNeumannAlgebras V5 defines tracial states of von
Neumann algebras on Mathlib's concrete `VonNeumannAlgebra` carrier and proves their uniqueness on
factors; the C*-algebraic notion here agrees with it on a von Neumann algebra viewed as a
C*-algebra, and the uniqueness of the trace on `M_k` is restated here on the `CStarMatrix`
carrier, which differs from V3's finite-dimensional `B(H)`.

Left to named roadmaps and consumed from them by section:

- **CStarAlgebras** owns completely positive maps and their Kadison–Schwarz inequality,
  multiplicative domains, the unitization of completely positive contractions, Stinespring's
  dilation and Arveson's Radon–Nikodym theorem (C4.1–C4.2), the maximal and minimal C*-tensor
  products and the tensoring of completely positive maps and functionals (C5.1–C5.2), nuclear
  maps and nuclear algebras (C6.1, C6.5), exactness with nuclear embeddability (C7.1),
  quasidiagonal algebras with Voiculescu's matrix-map criterion and its compression step
  (C8.1–C8.3), state extension (C2.1) and the bidual (C2.8). Nothing here re-proves a general
  completely positive or tensor-product theorem; the toolkit of Layer 2 is about maps into
  matrix algebras measured by the normalized trace.
- **VonNeumannAlgebras** owns states, GNS and the faithful Gelfand–Naimark representation (V0),
  operator topologies, the bicommutant theorem and Kaplansky density (V1), corners and central
  supports (V2), finite-dimensional algebras and traces on finite-dimensional `B(H)` (V3),
  preduals and normality (V4), tracial states on von Neumann algebras (V5), the tracial standard
  form `L²(M,τ)` with its conjugation (V6), Arveson's extension theorem, Tomiyama's theorem and
  injectivity (V13a), the spatial C*-norm (V13b.SpatialNorm), and semidiscreteness, the
  commutant theorem for injectivity, the Powers–Størmer inequality and the equivalence of
  injectivity with hyperfiniteness for separable predual (V13b). Connes's hypertraces on
  `B(L²M)` for finite von Neumann algebras belong to V13b; the C*-algebraic hypertraces of
  Layer 4 live on `B(H)` for an arbitrary faithful representation of a C*-algebra and are a
  different object, compared with V13b's in §4.6.
- **CStarClassification** owns AF and UHF algebras: the definition `IsAF`, its unitization
  criterion and unital presentations (CL2, §2.1), the identification of the tracial state space
  of a unital AF algebra with the state space of its scaled dimension group (CL3, §3.4), and
  simplicity and uniqueness of the trace of UHF algebras (CL3, §3.5). §7.2 here proves only that
  a nonzero unital AF algebra has a tracial state and that all its tracial states are
  quasidiagonal and uniform amenable.
- **OperatorAlgebraDynamics** owns reduced group C*-algebras of discrete groups, their dense
  group rings and faithful canonical expectations, and the nuclearity of reduced crossed products
  by amenable groups with nuclear coefficients (D2).
- **AmenableGroups** owns amenability of discrete groups through invariant means on bounded
  functions (Layer 2) and the non-amenability of `F₂` (Layer 3).
- **BanachSpaceTheory** owns the agreement of weak and norm closures of convex sets and Mazur's
  lemma (B1).

The AF-embedding theorem of Schafhauser (schafhauser2020, Theorem A, line 75) and the
quasidiagonality theorem of Tikuisis, White and Winter (tikuisis-white-winter2017, Theorem A,
line 53) are statements of consumers: this roadmap supplies the notions in their statements and
the necessity half of Schafhauser's theorem (§8.5), not their proofs. Connes's embedding problem,
Kirchberg's factorization property of groups and the locally finite-dimensional traces of
brown2006 §3.4 are outside this roadmap.

## Conventions

- **Algebras and maps.** Algebras are complex C*-algebras, Mathlib's `NonUnitalCStarAlgebra`
  and `CStarAlgebra`, with no separability or unitality standing hypothesis; separability gives
  sequences and unitality gives unital maps as theorems (§3.2). A C*-subalgebra is norm closed;
  closed two-sided ideals are norm closed. Positivity is the `StarOrderedRing` order. A
  completely positive contraction (c.p.c.) is a `CompletelyPositiveMap` `φ` with `‖φ(a)‖ ≤ ‖a‖`;
  a u.c.p. map is a unital completely positive map. A representation of a unital C*-algebra is
  unital, and "faithful representation" means a faithful unital star homomorphism into
  `H →L[ℂ] H` on a complete complex Hilbert space `H` in any universe.
- **States and tracial states.** A state is a positive continuous functional `A →P[ℂ] ℂ` of norm
  one, the state space `S(A)` of VonNeumannAlgebras V0 with its weak-star topology; for unital
  `A` this means `τ(1) = 1`. A tracial state is a state with `τ(ab) = τ(ba)` for all `a, b`;
  `T(A)` is the set of tracial states. The zero algebra has no state, so `T(0) = ∅`.
- **Matrices.** `M_k` is `CStarMatrix (Fin k) (Fin k) ℂ` with its operator norm. The normalized
  trace is `tr_k(x) = k⁻¹ · Matrix.trace x` and the 2-norm is `‖x‖₂ = tr_k(x*x)^{1/2}`. For
  `k = 0`, `M_0` is the zero algebra and `tr_0 = 0`; an approximant into `M_0` never recovers a
  nonzero value of a trace, so it is harmless in every definition. Witness: in `M_2`,
  `tr_2(1) = 1`, `tr_2(e₁₁) = 1/2` and `‖e₁₁‖₂ = 2^{-1/2}`, while the unnormalized trace gives
  `Tr(1) = 2` and Frobenius norm `‖e₁₁‖_F = 1`.
- **Hilbert spaces and GNS.** Inner products are conjugate-linear in the first variable. For
  `τ ∈ T(A)` with `A` unital, `L²(A,τ)` is Mathlib's completed GNS space of `τ`, `â` the class of
  `a`, `⟪â, b̂⟫ = τ(a*b)`, `Ω = 1̂`, `π_τ(a)b̂ = (ab)^` and `τ(a) = ⟪Ω, π_τ(a)Ω⟫`. Witness: for
  `(M_2, tr_2)`, `⟪ê₁₂, ê₁₂⟫ = tr_2(e₂₁e₁₂) = tr_2(e₂₂) = 1/2` and `⟪ê₁₁, ê₁₂⟫ = tr_2(e₁₂) = 0`.
  `M_τ = π_τ(A)''` is the GNS von Neumann algebra and `τ''(x) = ⟪Ω, xΩ⟫` its vector trace.
- **Opposite algebra and right representation.** `Aᵒᵖ` is Mathlib's `MulOpposite` with its
  `CStarAlgebra` instance. The right representation is `π_τᵒᵖ(bᵒᵖ)ĉ = (cb)^`, equal to
  `Jπ_τ(b*)J` for the conjugation `J(â) = (a*)^`; it is complex linear and multiplicative on
  `Aᵒᵖ`. Witness: in `(M_2, tr_2)`, `π_τᵒᵖ(e₁₂ᵒᵖ)ê₁₁ = (e₁₁e₁₂)^ = ê₁₂`, whereas the
  conjugate-linear map `b ↦ Jπ_τ(b)J` sends `ê₁₁` to `(e₁₁e₂₁)^ = 0`. The tensor functional is
  `μ_τ(a ⊗ bᵒᵖ) = ⟪Ω, π_τ(a)π_τᵒᵖ(bᵒᵖ)Ω⟫ = τ(ab)`.
- **Tensor products.** `A ⊙ B` is the algebraic tensor product and `‖·‖_min` the spatial C*-norm
  of VonNeumannAlgebras V13b.SpatialNorm, completed to `A ⊗min B` as in CStarAlgebras C5.1.
- **Unitization.** `Ã` is `Unitization ℂ A` with its C*-norm (`Unitization.instCStarAlgebra`);
  the tracial extension is `τ̃(a + λ1) = τ(a) + λ` (tikuisis-white-winter2017, Remark 1.5 (ii),
  line 458). "`A` has no unit" means that no two-sided unit exists in `A`.
- **Hilbert–Schmidt operators.** `Tr` is the canonical trace on trace-class operators,
  `‖T‖_HS = Tr(T*T)^{1/2}` and `‖T‖₁ = Tr(|T|)` (brown2006, Chapter 2, line 361). For a nonzero
  finite-rank projection `P` the normalized compressed trace of `a` is `Tr(aP)/Tr(P)`, which is
  independent of the linearity convention of the Hilbert–Schmidt inner product.
- **Groups.** For a discrete group `Γ`, `λ_g δ_x = δ_{gx}` on `ℓ²(Γ)`, the left translation of
  functions is `(L_g f)(x) = f(g⁻¹x)` as in AmenableGroups, and `λ_g M_f λ_g* = M_{L_g f}` for
  multiplication operators. Witness: for `Γ = ℤ`, `λ_1 M_{δ_0} λ_1* = M_{δ_1}`, while the
  convention `f(gx)` would give `M_{δ_{−1}}`. The canonical trace is `τ_Γ(x) = ⟪δ_e, xδ_e⟫`, with
  `τ_Γ(λ_g) = 1` if `g = e` and `0` otherwise.
- **Approximation properties.** Definitions are stated in finite-set form (for every finite
  `F ⊆ A` and `ε > 0` there is an approximant); the net form and, for separable algebras, the
  sequence form are theorems (§3.2).

## Exact supplier contracts

### From Mathlib

At Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2`:

- `CompletelyPositiveMap` with notation `A →CP B` and `CompletelyPositiveMap.map_cstarMatrix_nonneg`
  (`Mathlib/Analysis/CStarAlgebra/CompletelyPositiveMap.lean`): a complex linear map whose
  `CStarMatrix` amplifications are positive at every size. The pin has no composition, norm or
  unitality API for it; those come from CStarAlgebras C4.1.
  `NonUnitalStarAlgHomClass.instCompletelyPositiveMapClass` makes star homomorphisms completely
  positive.
- `CStarMatrix`, `CStarMatrix.ofMatrix` and the `StarOrderedRing` instance on square
  `CStarMatrix` (`Mathlib/Analysis/CStarAlgebra/CStarMatrix.lean`); `Matrix.trace` and
  `Matrix.trace_mul_comm` (`Mathlib/LinearAlgebra/Matrix/Trace.lean`); `Matrix.frobenius_norm_def`
  (`Mathlib/Analysis/Matrix/Normed.lean`), the unnormalized Frobenius norm, of which `‖·‖₂` is
  `k^{-1/2}` times.
- `PositiveLinearMap.GNS`, `PositiveLinearMap.gnsStarAlgHom` and
  `PositiveLinearMap.gnsNonUnitalStarAlgHom` (`Mathlib/Analysis/CStarAlgebra/GelfandNaimarkSegal.lean`):
  the completed GNS space of a positive functional and its representation; the pin has no
  cyclic-vector or uniqueness theorem, which come from VonNeumannAlgebras V0.
- `PositiveLinearMap.exists_norm_apply_le` (`Mathlib/Analysis/CStarAlgebra/PositiveLinearMap.lean`)
  for automatic continuity, and `PositiveContinuousLinearMap` (`A →P[ℂ] ℂ`) with
  `PositiveContinuousLinearMap.ofReal_opNorm_eq_map_one`
  (`Mathlib/Analysis/CStarAlgebra/PositiveLinearFunctional.lean`), the norm of a positive
  functional on a unital algebra being its value at `1`.
- The `CStarAlgebra` and `NonUnitalCStarAlgebra` instances on `Aᵐᵒᵖ`
  (`Mathlib/Analysis/CStarAlgebra/Classes.lean`, namespace `MulOpposite`) and the `CStarRing`
  instance on `Eᵐᵒᵖ` (`Mathlib/Analysis/CStarAlgebra/Basic.lean`).
- `Unitization.instCStarAlgebra` (`Mathlib/Analysis/CStarAlgebra/Unitization.lean`) and
  `Unitization.starLift` (`Mathlib/Algebra/Algebra/Unitization.lean`), the unital extension of a
  nonunital star homomorphism into a unital algebra.
- `CStarAlgebra.approximateUnit` and `Filter.IsIncreasingApproximateUnit`
  (`Mathlib/Analysis/CStarAlgebra/ApproximateUnit.lean`).
- `CStarAlgebra.exists_sum_four_unitary` (`Mathlib/Analysis/CStarAlgebra/Unitary/Span.lean`):
  every element of a unital C*-algebra is a combination of four unitaries with coefficients of
  norm at most `‖x‖/2`.
- `gelfandStarTransform` (`Mathlib/Analysis/CStarAlgebra/GelfandDuality.lean`) for commutative
  unital C*-algebras, and `RealRMK.rieszMeasure`
  (`Mathlib/MeasureTheory/Integral/RieszMarkovKakutani/Real.lean`) for positive functionals on
  continuous functions.
- `geometric_hahn_banach_closed_point` (`Mathlib/Analysis/LocallyConvex/Separation.lean`) in the
  weak-star topology of the dual, `IsStarProjection`, `TopologicalSpace.SeparableSpace`,
  `PartitionOfUnity` and `FreeGroup`.

### From Tau Ceti

No Tau Ceti module is consumed (Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`): its
C*-algebra folder holds character-space measures and unitary characters only; in its matrix
folder the Frobenius inner product is over `ℝ` and the Hermitian-spectrum and
positive-semidefinite files are over `RCLike` fields, and none of them supplies the normalized
trace or the 2-norm on `CStarMatrix`.

### From TauCetiRoadmap.CStarAlgebras

- C2.1: state extension from a unital C*-subalgebra.
- C2.8: the bidual `A**` as a W*-algebra with predual `A*`, and the unique normal surjective
  extension `A** → π(A)''` of a nondegenerate representation `π`, whose kernel is a central
  summand `(1 − z_π)A**`.
- C4.1: identity, composition and restriction of completely positive maps; `‖φ‖ = ‖φ(1)‖` for
  unital domains; the Kadison–Schwarz inequality `φ(a)*φ(a) ≤ φ(a*a)` for u.c.p. maps (`schwarz`);
  the multiplicative domain (`multiplicativeDomain_iff`) and bimodularity of a u.c.p. map over a
  C*-subalgebra on which it is a star homomorphism; the unital extension `a + λ ↦ φ(a) + λ1` of a
  c.p.c. map to the unitization, which is u.c.p. (the c.p.c. form of Kadison–Schwarz used in §2.2
  is derived from these two in §2.1).
- C4.2: Stinespring's dilation `φ = V*π(·)V` with `‖V‖² = ‖φ‖`, including nonunital domains
  (`stinespring` for unital domains), and Arveson's Radon–Nikodym theorem (`cp_radonNikodym`),
  whose `H = ℂ` case is the GNS Radon–Nikodym theorem for positive functionals.
- C5.1–C5.2: the minimal and maximal norms, the uniqueness of the C*-norm on `M_n ⊙ A` and
  `M_n ⊗ A ≅ M_n(A)`, tensor products of completely positive maps on minimal tensor products,
  and product functionals `φ ⊗ ψ` with `‖φ ⊗ ψ‖ = ‖φ‖‖ψ‖`.
- C5.4: the bounded product `∏_n M_{k_n}`, its `c₀` ideal `⊕_n M_{k_n}` and the quotient norm
  `limsup_n ‖a_n‖`.
- C6.1 and C6.5: nuclear completely positive contractions in the finite-set form
  (`IsNuclearContraction`), nuclear C*-algebras, nuclearity of the unitization and of AF algebras.
- C7.1: exact C*-algebras; nuclear algebras are exact; exactness passes to C*-subalgebras; a
  C*-algebra is exact iff a (equivalently every) faithful representation `A → B(H)` is a nuclear
  map. No separability is part of these statements.
- C8.1–C8.3: `IsQuasidiagonalSet`, `IsQuasidiagonal`, Voiculescu's matrix-map criterion
  (`isQuasidiagonal_iff_exists_matrix_maps`) with its nonunital c.p.c. form for separable
  algebras, and from C8.2 the finite-set compression step: for a separable unital `A`, a
  faithful unital representation on a separable `H` with `A ∩ K(H) = 0` and a u.c.p.
  `φ : A → M_n`, there are isometries `V_m : ℂⁿ → H` with `‖φ(a) − V_m* a V_m‖ → 0` for all `a`;
  from C8.3 also the quasidiagonality of finite-dimensional, separable commutative and separable
  AF algebras and its permanence under C*-subalgebras.
- C8.4 and C9.1: the Toeplitz extension, and the quasidiagonality of cones over separable
  algebras, used in Checks.
- C9.7: the positive unital extension operator `C(K) → C(X)` for a closed subset `K` of a
  compact metrizable `X` (its Check on `C(X)`), used only in a Check of §6.4.

### From TauCetiRoadmap.VonNeumannAlgebras

- V0: the state space with its weak-star topology, convex and compact for nonzero unital
  algebras; positivity of the unital extension of a positive functional to the unitization; the
  canonical GNS cyclic vector, recovery of the functional and unitary uniqueness of cyclic
  representations; the faithful Gelfand–Naimark representation.
- V1: the bicommutant theorem and Kaplansky density in bounded strong-star form.
- V2: corners `pMp` on `pH` for `p ∈ M` or `p ∈ M'`, `(pMp)' = pM'p`, central supports.
- V3: finite-dimensional C*-algebras as finite direct sums of matrix algebras with matrix units,
  and the uniqueness of algebraic traces on finite-dimensional `B(H)` up to scalars.
- V4: preduals, normal states and normal representations; the GNS representation of a normal
  state is normal with von Neumann image; separability of the predual of a von Neumann algebra on
  a separable Hilbert space.
- V5: tracial states of von Neumann algebras (`IsTracialState`).
- V6: for a von Neumann algebra `M` with faithful normal tracial state `τ`, the standard form
  `L²(M,τ)`, the conjugation `J(xΩ) = x*Ω` and `JMJ = M'`.
- V13a: Arveson's extension theorem for completely positive maps from concrete operator systems
  into `B(K)`; Tomiyama's theorem (`tomiyama`); injectivity by completely positive extension,
  equivalent to a norm-one projection `B(H) → M`; injectivity passes to expected subalgebras and
  corners.
- V13b.SpatialNorm: the spatial norm on `A ⊙ B`, its representation independence and isometric
  functoriality for inclusions; in its proof route, the weak-star closed convex hull of the vector
  states of a faithful representation is the state space.
- V13b: injectivity iff semidiscreteness for arbitrary von Neumann algebras; `M` is injective
  iff `M'` is; the Powers–Størmer inequality `‖h^{1/2} − k^{1/2}‖_HS² ≤ ‖h − k‖₁` for positive
  trace-class `h, k`; injectivity iff hyperfiniteness for separable predual; the hypertraces of
  finite von Neumann algebras on `B(L²M)` (compared in §4.6); `L(F₂)` is not hyperfinite (its
  Checks, through property Γ), hence not injective.

### From TauCetiRoadmap.CStarClassification

- CL2 (§2.1): `IsAF` (a sequential increasing union of finite-dimensional C*-subalgebras with dense
  union); `A` is AF iff `Ã` is AF; unital AF algebras have presentations by unital
  finite-dimensional subalgebras.
- CL3 (§3.5): UHF algebras are simple with a unique tracial state.

### From TauCetiRoadmap.OperatorAlgebraDynamics

- D2: for a discrete group `Γ`, the reduced C*-algebra `C*_r(Γ) = ℂ ⋊_r Γ` on `ℓ²(Γ)`, the dense
  group ring spanned by the `λ_g`, the faithful conditional expectation `E` onto the coefficient
  algebra (here `E(x) = ⟪δ_e, xδ_e⟫`), and the theorem that an amenable group with nuclear
  coefficients has nuclear reduced crossed product.

### From TauCetiRoadmap.AmenableGroups

- Layer 2: for a discrete group, the uniformly continuous bounded functions are all bounded
  functions, so amenability is the existence of a left-invariant mean on bounded real functions
  (`Amenable`).
- Layer 3: `F₂` is not amenable (`freeGroup_two_paradoxical` with the invariant-content
  obstruction).

### From TauCetiRoadmap.BanachSpaceTheory

- B1: the weak and norm closures of a convex subset of a Banach space agree, with the
  finite-convex-combination form of Mazur's lemma.

## How to read the build

Layer 1 fixes the objects: tracial states, their kernel, their unitization and ideal extensions,
the GNS data `(L²(A,τ), Ω, π_τ, τ'', J, π_τᵒᵖ, μ_τ)`, the matrix trace and 2-norm, and
finite-dimensional trace approximation. Layer 2 is the analytic toolkit about completely positive
contractions into matrices: the multiplicativity defects and the asymptotic multiplicative
domains that turn estimates on a generating set into estimates on the whole algebra, compression
identities, Ozawa's matrix maps with prescribed trace and the normal extension to the bidual.
Layer 3 defines the three approximation classes and proves everything that follows from the
definitions alone. Layer 4 proves the Connes–Kirchberg theorem, Connes's Følner condition and its
von Neumann algebra corollary. Layer 5 characterizes uniform amenable traces by injectivity and
proves the nuclear and exact theorems. Layer 6 proves the face property and the permanence
results that need the characterizations. Layer 7 computes the examples and Layer 8 connects
quasidiagonal traces with quasidiagonal algebras and AF embeddings. Every layer ends with its
examples and dependencies.

## Layer 1: Tracial states, their GNS data and the matrix trace

### 1.1 Tracial states and the tracial state space

Define a tracial state of a C*-algebra `A` as a state `τ` (VonNeumannAlgebras V0) with
`τ(ab) = τ(ba)` for all `a, b ∈ A`, and `T(A)` as the set of tracial states with the weak-star
topology of `S(A)` (tikuisis-white-winter2017, §1, line 359; brown2006, Chapter 2, line 378).
Prove that a state is tracial iff `τ(a*a) = τ(aa*)` for every `a`, by polarization of
`(a, b) ↦ τ(b*a)` and `(a, b) ↦ τ(ab*)`; that for unital `A` a state is tracial iff
`τ(uau*) = τ(a)` for all unitaries `u` and all `a`, because every element is a linear combination
of four unitaries; that `T(A)` is convex and weak-star closed in `S(A)`, hence weak-star compact
when `A` is unital and nonzero; and that for a star homomorphism `ι : A → B` and `τ ∈ T(B)`, the
functional `τ ∘ ι` is a tracial positive functional, a tracial state whenever `‖τ ∘ ι‖ = 1`, in
particular whenever `ι` is unital or surjective (pedersen2018, Ch. 3, background). *Needs:*
VonNeumannAlgebras V0 (states, weak-star compactness for unital algebras); Mathlib
`PositiveContinuousLinearMap`, `PositiveContinuousLinearMap.ofReal_opNorm_eq_map_one`.

API:

- Extensionality and coercion to `A →P[ℂ] ℂ`; membership in `T(A)` is the conjunction of the
  state and tracial conditions.
- The polarization criterion: a state is tracial iff `τ(a*a) = τ(aa*)` for all `a`.
- Unitary invariance: for unital `A`, a state is tracial iff it is invariant under every inner
  automorphism `a ↦ uau*`.
- Convexity: a convex combination of tracial states is a tracial state.
- Closure and compactness: `T(A)` is weak-star closed in `S(A)`, and compact when `A` is unital
  and nonzero.
- Pullback: for a star homomorphism `ι : A → B` and `τ ∈ T(B)`, `τ ∘ ι` is tracial and positive,
  and lies in `T(A)` when it has norm one (unital or surjective `ι`).
- Restriction: for a C*-subalgebra `B ⊆ A` containing the unit of `A`, restriction maps `T(A)`
  to `T(B)`.

**Checks.**

- On `M_2` the state `x ↦ x₁₁` is not tracial: `e₁₂e₂₁ = e₁₁` and `e₂₁e₁₂ = e₂₂` give values
  `1` and `0`; `tr_2` is tracial, and the unnormalized `Tr` is tracial and positive of norm `2`,
  so the norm-one condition excludes it.
- On `ℂ ⊕ ℂ`, `T(A) = S(A)` is the segment `{t·pr₁ + (1 − t)·pr₂ : t ∈ [0,1]}`, with the two
  coordinate evaluations as extreme points.
- On `C(X)` for compact Hausdorff `X`, `T(C(X)) = S(C(X))`, the regular Borel probability measures
  (`RealRMK.rieszMeasure`); the zero functional is tracial but not a state, so `T(A)` excludes it.
- On `B(ℓ²)` there is no tracial state: isometries `s₁, s₂` with `s_i*s_i = 1` and
  `s₁s₁* + s₂s₂* = 1` give `τ(1) = τ(s₁s₁*) + τ(s₂s₂*) = τ(s₁*s₁) + τ(s₂*s₂) = 2τ(1)`.
- On the nonunital `c₀`, `T(c₀)` is the set of `x ↦ Σ w_n x_n` with `w_n ≥ 0`, `Σ w_n = 1`; the
  evaluations `δ_n` converge weak-star to `0 ∉ T(c₀)`, so compactness is confined to unital
  algebras.

### 1.2 The trace kernel, faithfulness and simplicity

For `τ ∈ T(A)` define the trace kernel `N_τ = {a ∈ A : τ(a*a) = 0}`. Prove that `N_τ` is a closed
two-sided ideal: it is a closed left ideal by the Cauchy–Schwarz inequality, and a right ideal
because, for `a ∈ N_τ` and `b ∈ A`, traciality used twice gives
`τ((ab)*(ab)) = τ(abb*a*) ≤ ‖b‖²τ(aa*) = ‖b‖²τ(a*a) = 0`. Prove `N_τ = ker π_τ` for the GNS representation, since
`‖π_τ(a)ĉ‖² = τ(c*a*ac) = τ(acc*a*) ≤ ‖c‖²τ(aa*) = ‖c‖²τ(a*a)`, by traciality twice as above,
and, for the converse, `ĉ` runs over an approximate unit.
Call `τ` faithful when `N_τ = 0`. The image `π_τ(A)` is a C*-algebra isomorphic to `A/N_τ`, and
`τ̇(π_τ(a)) = τ(a)` is a well-defined faithful tracial state on it (brown2006, Proposition 3.5.8,
line 1338, for the notation `τ̇`). On a simple C*-algebra every tracial state is faithful, since
`N_τ` is a proper closed ideal (`τ ≠ 0`). *Needs:* §1.1; Mathlib `PositiveLinearMap.GNS`,
`PositiveLinearMap.gnsNonUnitalStarAlgHom`, `CStarAlgebra.approximateUnit`.

API:

- `N_τ` is a closed two-sided ideal, equal to the kernel of `π_τ`.
- Faithfulness: `τ` is faithful iff `τ(a*a) > 0` for every nonzero `a`, iff `π_τ` is injective.
- The descended trace `τ̇` on `π_τ(A)` is a faithful tracial state with `τ̇ ∘ π_τ = τ`.
- Simplicity: if the only closed ideals of `A` are `0` and `A`, every tracial state is faithful.
- Pullback of faithfulness: if `ι : A → B` is an injective star homomorphism and `τ ∈ T(B)` is
  faithful, then `τ ∘ ι` vanishes at `a*a` only for `a = 0`.

**Checks.**

- On `ℂ ⊕ ℂ`, `N_{pr₁} = 0 ⊕ ℂ`, so `pr₁` is not faithful and `π_{pr₁}(A) = ℂ` with `τ̇` the
  identity; the midpoint `(pr₁ + pr₂)/2` has `N = 0`.
- On `M_n` (simple) `tr_n` is faithful: `tr_n(x*x) = n⁻¹Σ_{ij}|x_{ij}|²`.
- A one-sided version fails: on `M_2` the vector state `ω(x) = x₁₁` has
  `{a : ω(a*a) = 0} = {a : a e₁ = 0}`, which contains `e₁₂` but not `e₁₂e₂₁ = e₁₁`, so it is a
  left ideal and not a right ideal; traciality is what makes `N_τ` two-sided.
- On the Toeplitz algebra (CStarAlgebras C8.4) every tracial state vanishes on the ideal of
  compact operators, which has no nonzero tracial positive functional, so no tracial state of the
  Toeplitz algebra is faithful although the algebra has tracial states.

### 1.3 Extension to the unitization and from closed ideals

Prove that a tracial state `τ` of `A` extends uniquely to a tracial state `τ̃` of `Ã`, namely
`τ̃(a + λ1) = τ(a) + λ` (tikuisis-white-winter2017, Remark 1.5 (ii), line 458; brown2006,
Proposition 3.5.10, line 1423): positivity is VonNeumannAlgebras V0's unital extension of a
positive functional with value `‖τ‖ = 1` at the unit, traciality is a direct computation, and
uniqueness holds because every state of `Ã` takes the value `1` at the unit. Prove that `τ̃` is
faithful when `τ` is faithful and `A` has no unit: `N_τ̃` is a closed ideal of `Ã` with
`N_τ̃ ∩ A = N_τ = 0`, so `N_τ̃ · A = 0`, and an element `a + λ1` with `λ ≠ 0` annihilating `A`
would make `−λ⁻¹a` a unit of `A` (tikuisis-white-winter2017, Remark 1.5 (iii), line 461).

More generally, for a closed two-sided ideal `I ⊆ A` and `τ ∈ T(I)`, prove that there is a unique
state `γ` of `A` extending `τ`, and that it is tracial (brown2006, Proposition 3.5.12, line 1469):
uniqueness by the Cauchy–Schwarz estimate `|γ(a) − γ(e a)|² ≤ γ((1 − e)²)‖a‖²` along an increasing
approximate unit `e` of `I`, whose values `τ(e)` tend to `1`; existence as the vector state of
`Ω_I = lim ê` (a Cauchy net in `L²(I,τ)`, as `‖ê − ê′‖² ≤ τ(e) − τ(e′)` for `e′ ≤ e`) for the
extension of `π_τ` to `A` on `L²(I,τ)`, with traciality from the normal vector trace of the weak
closure of `π_τ(I)`, which contains the image of `A`. *Needs:* §1.1–§1.2; VonNeumannAlgebras V0
(unitization of positive functionals), V1 (Kaplansky density), V4 (normal vector states); Mathlib
`Unitization.instCStarAlgebra`, `CStarAlgebra.approximateUnit`.

API:

- The unitization extension `τ ↦ τ̃` is affine, injective, and maps `T(A)` into `T(Ã)` with
  `τ̃(a) = τ(a)` for `a ∈ A` and `τ̃(1) = 1`.
- Uniqueness: every state of `Ã` restricting to `τ` on `A` equals `τ̃`.
- Faithfulness transfer for `A` without unit.
- Ideal extension: every tracial state of a closed ideal extends uniquely to a state of `A`, and
  the extension is tracial; for `I = A ⊆ Ã` this is the unitization extension.

**Checks.**

- `A = c₀` with `τ = Σ_{n≥1} 2^{-n}δ_n` (faithful): `Ã = c` and `τ̃(x) = Σ 2^{-n}(x_n − x_∞) + x_∞ =
  Σ 2^{-n}x_n`, which is faithful on `c`.
- `A = ℂ` (unital) with `τ = id`: `Ã ≅ ℂ ⊕ ℂ` and `τ̃` is the evaluation at the first summand, so
  `e = 1_Ã − 1_A` satisfies `τ̃(e*e) = 1 − τ(1) = 0`: the no-unit hypothesis of faithfulness
  transfer cannot be dropped.
- `I = c₀ ⊆ A = c` with `τ = δ_1`: the extension is the evaluation `x ↦ x_1`; the state
  `x ↦ x_1/2 + (lim x)/2` of `c` restricts to `δ_1/2` on `c₀`, which has norm `1/2`, so it is not an
  extension of a state and uniqueness is not contradicted.

### 1.4 The GNS representation of a tracial state

For unital `A` and `τ ∈ T(A)`, with the GNS data of the Conventions, prove: `Ω` is cyclic for
`π_τ(A)` and separating for `M_τ = π_τ(A)''`; the vector state `τ''(x) = ⟪Ω, xΩ⟫` is a faithful
normal tracial state of `M_τ` with `τ'' ∘ π_τ = τ`; the right representation `π_τᵒᵖ` of `Aᵒᵖ`
is a unital star homomorphism commuting with `π_τ`, with `π_τᵒᵖ(bᵒᵖ)Ω = b̂`, so `Ω` is cyclic for
`M_τ'` and hence separating for `M_τ`; the conjugation `J(â) = (a*)^` extends to an antiunitary
involution with `JM_τJ = M_τ'` and `π_τᵒᵖ(Aᵒᵖ)'' = M_τ'`, by identifying `L²(A,τ)` with the
standard form `L²(M_τ, τ'')` of VonNeumannAlgebras V6 through `Ω`; and the product
`π_τ × π_τᵒᵖ : A ⊙ Aᵒᵖ → B(L²(A,τ))`, `a ⊗ bᵒᵖ ↦ π_τ(a)π_τᵒᵖ(bᵒᵖ)`, is a unital star
homomorphism whose vector functional at `Ω` is `μ_τ(a ⊗ bᵒᵖ) = τ(ab)` (brown2006, Chapter 2,
lines 378–384, and §3.1, lines 793–801). Traciality of `τ''` passes from `π_τ(A)` to `M_τ` by
Kaplansky density and the strong-star continuity of `(x, y) ↦ ⟪x*Ω, yΩ⟫` on bounded sets. For
nonunital `A`, `L²(A,τ) = L²(Ã,τ̃)` because `‖1̂ − ê‖² = τ̃((1 − e)²) ≤ 1 − τ(e)` along an
approximate unit, and the statements are transported through §1.3. *Needs:* §1.2–§1.3;
VonNeumannAlgebras V0 (cyclic vector, unitary uniqueness), V1 (bicommutant, Kaplansky density),
V4 (normality of vector states), V6 (standard form, `J`, `JMJ = M'`); Mathlib
`PositiveLinearMap.GNS`, `PositiveLinearMap.gnsStarAlgHom`, the `CStarAlgebra` instance on `Aᵐᵒᵖ`.

API:

- `Ω` is a unit cyclic vector for `π_τ(A)`, cyclic for `π_τᵒᵖ(Aᵒᵖ)`, and separating for `M_τ`.
- `τ''` is a faithful normal tracial state of `M_τ` with `τ'' ∘ π_τ = τ`, and `π_τ(A)` is
  `‖·‖₂,τ''`-dense in `M_τ` on bounded sets.
- `π_τᵒᵖ(bᵒᵖ)ĉ = (cb)^`, `π_τᵒᵖ(bᵒᵖ) = Jπ_τ(b*)J`, `π_τᵒᵖ` commutes with `π_τ`, and
  `π_τᵒᵖ(Aᵒᵖ)'' = JM_τJ = M_τ'`.
- `μ_τ` is a positive functional on the star algebra `A ⊙ Aᵒᵖ` with `μ_τ(1) = 1` and
  `μ_τ(a ⊗ bᵒᵖ) = τ(ab)`.
- Naturality: for a unital star isomorphism `θ : A → B` and `τ ∈ T(B)`, the GNS data of `τ ∘ θ`
  and of `τ` are unitarily equivalent through `â ↦ (θa)^`.

**Checks.**

- `(M_n, tr_n)`: `L²(M_n, tr_n)` is `M_n` with `⟪x, y⟫ = tr_n(x*y)`, `π_τ` is left multiplication,
  `π_τᵒᵖ` is right multiplication, `M_τ = M_n` acting on the left and `M_τ'` is the algebra of
  right multiplications, and
  `μ_τ(e₁₂ ⊗ e₂₁ᵒᵖ) = tr_n(e₁₂e₂₁) = 1/n`.
- `(ℂ ⊕ ℂ, pr₁)`: `L² = ℂ`, `π_τ = pr₁`, `M_τ = ℂ`, and the kernel `0 ⊕ ℂ` of §1.2 is visible as
  `ker π_τ`; `Ω` is separating for `M_τ = ℂ`, not for the algebra `ℂ ⊕ ℂ` itself.
- `(C[0,1], Lebesgue)`: `L² = L²[0,1]`, `π_τ` is multiplication, `M_τ = L∞[0,1]`, `J` is complex
  conjugation, and `JM_τJ = M_τ = M_τ'`, the maximal abelian case.
- Convention control: `π_τᵒᵖ(e₁₂ᵒᵖ)ê₁₁ = ê₁₂` in `(M_2, tr_2)`, while `b ↦ Jπ_τ(b)J` is
  conjugate linear and sends `ê₁₁` to `0`; only the former is a representation of `Aᵒᵖ`.

### 1.5 The normalized trace and 2-norm on matrix algebras

Define `tr_k = k⁻¹ · Matrix.trace` on `M_k` and the 2-norm `‖x‖₂ = tr_k(x*x)^{1/2}` (brown2006,
Chapter 2, lines 403–406; tikuisis-white-winter2017, §1, lines 362–364). Prove that for `k ≥ 1`
`tr_k` is the unique tracial state of `M_k`: a tracial functional satisfies
`τ(e_{ij}) = τ(e_{i1}e_{1j}) = τ(e_{1j}e_{i1})`, which is `0` for `i ≠ j` and independent of `i`
for `i = j`; this is VonNeumannAlgebras V3's uniqueness of traces on finite-dimensional `B(H)`
restated on the `CStarMatrix` carrier. Prove that `‖·‖₂` is a norm, equal to `k^{-1/2}` times
the Frobenius norm of `Matrix.frobenius_norm_def`, with `‖x*‖₂ = ‖x‖₂`, `‖xy‖₂ ≤ ‖x‖‖y‖₂`,
`‖xy‖₂ ≤ ‖x‖₂‖y‖`, `‖x‖₂ ≤ ‖x‖` and `|tr_k(x)| ≤ ‖x‖₂` (Cauchy–Schwarz for `(x, y) ↦ tr_k(x*y)`),
and `‖x − cxc‖₂ ≤ 2‖x‖‖c − 1‖₂` for a positive contraction `c` (brown2006, Lemma 2.7, line 530).
Prove that `x ⊗ yᵒᵖ ↦ (z ↦ xzy)` is a star isomorphism `M_k ⊗ M_kᵒᵖ ≅ B(L²(M_k, tr_k))`, isometric
for the unique C*-norm of CStarAlgebras C5.1, whose vector state at `1` is
`x ⊗ yᵒᵖ ↦ tr_k(xy)` (brown2006, proof of Theorem 3.1.6, lines 864–874). *Needs:* §1.1;
VonNeumannAlgebras V3; CStarAlgebras C5.1 (uniqueness of the C*-norm on `M_n ⊙ A`); Mathlib
`CStarMatrix`, `Matrix.trace`, `Matrix.trace_mul_comm`, `Matrix.frobenius_norm_def`.

API:

- `tr_k` is a tracial state of `M_k` for `k ≥ 1`, and the only one.
- `‖·‖₂` is a norm with the five inequalities above; `tr_k` and `‖·‖₂` are invariant under
  unitary conjugation.
- Block additivity: for the block-diagonal embedding `M_k ⊕ M_l → M_{k+l}`,
  `tr_{k+l}(x ⊕ y) = (k tr_k(x) + l tr_l(y))/(k + l)`, and similarly for `‖·‖₂²`.
- Tensor multiplicativity: under `M_k ⊗ M_l ≅ M_{kl}`, `tr_{kl}(x ⊗ y) = tr_k(x)tr_l(y)` and
  `‖x ⊗ y‖₂ = ‖x‖₂‖y‖₂`.
- The bimodule identification `M_k ⊗ M_kᵒᵖ ≅ B(L²(M_k, tr_k))` with vector state `tr_k(xy)`.

**Checks.**

- `x = e₁₁ ∈ M_k`: `‖x‖₂ = k^{-1/2}`, `‖x‖ = 1`, `tr_k(x) = 1/k ≤ ‖x‖₂`; the unnormalized trace
  would give `‖1‖₂ = k^{1/2} > ‖1‖ = 1`, violating `‖x‖₂ ≤ ‖x‖`.
- `x = e₁₂`, `y = e₂₁` in `M_2`: `xy = e₁₁`, `‖xy‖₂ = 2^{-1/2}`, and `‖x‖‖y‖₂ = 2^{-1/2}`, so
  `‖xy‖₂ ≤ ‖x‖‖y‖₂` is attained; `‖x‖₂‖y‖₂ = 1/2` is smaller, so the product of 2-norms is not an
  upper bound.
- `k = 0`: `M_0` is the zero algebra, `tr_0 = 0` is not a state, and the uniqueness statement
  requires `k ≥ 1`.
- `c = diag(1, 0)` in `M_2`, `x = e₁₂`: `cxc = 0`, `‖x − cxc‖₂ = 2^{-1/2}`, and
  `2‖x‖‖c − 1‖₂ = 2·1·2^{-1/2}`, consistent with the bound.

### 1.6 Finite-dimensional algebras with tracial states

For a finite-dimensional C*-algebra `B ≅ ⊕_s M_{n(s)}` (VonNeumannAlgebras V3) with tracial state
`γ`, write `‖x‖_{2,γ} = γ(x*x)^{1/2}`. Prove brown2006, Lemma 2.5 (line 486): for every `δ > 0`
there are `n` and a unital injective star homomorphism `ρ : B → M_n` with
`|γ(x) − tr_n(ρ(x))| ≤ δ‖x‖`, by realizing rational approximations of the block weights of `γ` as
block multiplicities, each multiplicity at least `1`. Prove brown2006, Lemma 2.4 (line 466): for a
unital C*-algebra `A`, `τ ∈ T(A)` and a unital finite-dimensional C*-subalgebra `B ⊆ A`, there is
a conditional expectation `Φ_B : A → B` with `τ ∘ Φ_B = τ`, given on the blocks where `τ` is
faithful by `Φ_B(x) = Σ_s Σ_{ij} τ(xe^{(s)}_{ij}) τ(e^{(s)}_{ii})⁻¹ e^{(s)}_{ji}` for matrix units
`e^{(s)}_{ij}` and by any conditional expectation on the blocks where `τ` vanishes; complete
positivity follows from Tomiyama's theorem since `Φ_B` is a norm-one projection onto `B`.
*Needs:* §1.1, §1.5; VonNeumannAlgebras V3 (finite-dimensional classification, matrix units),
V13a (`tomiyama`).

API:

- Rational embedding: every tracial state of a finite-dimensional C*-algebra is a norm limit of
  traces `tr_n ∘ ρ` along unital embeddings into matrix algebras.
- Comparison of 2-norms: `‖ρ(x)‖₂² ≤ ‖x‖_{2,γ}² + δ‖x‖²`.
- Trace-preserving expectations onto unital finite-dimensional subalgebras, which are u.c.p.,
  `B`-bimodular and satisfy `τ ∘ Φ_B = τ`.

**Checks.**

- `B = ℂ ⊕ ℂ`, `γ = (1/3, 2/3)`: `ρ(a, b) = diag(a, b, b) ∈ M_3` gives `tr_3 ∘ ρ = γ` exactly; for
  `γ = (1/√2, 1 − 1/√2)` no exact embedding exists (rational weights only) and the lemma gives
  approximations.
- `B = ℂ ⊕ ℂ`, `γ = (1, 0)`: block multiplicities `(N, 1)` in `M_{N+1}` give
  `‖γ − tr ∘ ρ‖ = 2/(N + 1) → 0`; multiplicity `0` for the second block would make `ρ` non-unital
  and non-injective.
- `A = M_2`, `τ = tr_2`, `B` the diagonal: the formula gives
  `Φ_B(x) = (x₁₁/2)(1/2)⁻¹e₁₁ + (x₂₂/2)(1/2)⁻¹e₂₂ = diag(x₁₁, x₂₂)`, and `tr_2(Φ_B(x)) = tr_2(x)`.
- `A = ℂ³`, `τ = (1/2, 1/2, 0)`, `B = {(a, a, b)}`: `τ` vanishes on the block `(0, 0, 1)` of `B`,
  where the faithful-case formula would divide by `τ(e) = 0`; with the junk value `0⁻¹ = 0` it
  sends `(0, 0, 1)` to `0`, so it is not a projection onto `B`. The correct expectation is
  `Φ_B(x) = ((x₁ + x₂)/2, (x₁ + x₂)/2, x₃)`, with `τ(Φ_B(x)) = (x₁ + x₂)/2 = τ(x)`.

### 1.7 Norming sets of states

Prove brown2006, Lemma 2.8 (line 558): if `𝒮 ⊆ S(A)` satisfies `‖a‖ = sup_{σ ∈ 𝒮} |σ(a)|` for
every self-adjoint `a`, then the weak-star closed convex hull of `𝒮` is `S(A)`, for unital `A`;
the proof separates a state outside the hull by a self-adjoint element, as in the route of
VonNeumannAlgebras V13b.SpatialNorm. Deduce that the normal states `T ↦ Tr(hT)` with `h` a
positive finite-rank operator of trace one are weak-star dense in the state space of `B(H)`
(brown2006, proof of Theorem 3.1.6, line 827). *Needs:* VonNeumannAlgebras V0 (states),
V13b.SpatialNorm; Mathlib `geometric_hahn_banach_closed_point`.

API:

- Norming sets: a set of states norming the self-adjoint part has weak-star dense convex hull in
  `S(A)`.
- Density of finite-rank density-matrix states in `S(B(H))`, rational eigenvalues included.

**Checks.**

- `A = ℂ ⊕ ℂ`, `𝒮 = {pr₁, pr₂}`: for `a = (s, t)` real, `sup |σ(a)| = max(|s|, |t|) = ‖a‖`, and
  the hull is the whole segment of §1.1.
- `A = ℂ ⊕ ℂ`, `𝒮 = {pr₁}`: `a = (0, 1)` has `‖a‖ = 1` and `sup |σ(a)| = 0`, so the hypothesis
  fails and the hull `{pr₁}` is not `S(A)`.
- `A = M_2`, `𝒮` the vector states: `‖a‖ = max |⟨ξ, aξ⟩|` for self-adjoint `a`, and `tr_2` is the
  average of the vector states at `e₁` and `e₂`.

### Examples

- `M_n` with its unique tracial state `tr_n`, its GNS space `L²(M_n, tr_n) = M_n` and the
  bimodule identification `M_n ⊗ M_nᵒᵖ ≅ B(L²(M_n))` (§1.4–§1.5).
- `ℂ ⊕ ℂ` with the segment of tracial states and their kernels (§1.1–§1.2); `c₀ ⊆ c` with the
  unitization extension (§1.3).
- `C[0,1]` with Lebesgue measure: `M_τ = L∞[0,1]` and `J` complex conjugation (§1.4).

### Dependencies

VonNeumannAlgebras V0, V1, V3, V4, V6, V13a, V13b.SpatialNorm; CStarAlgebras C5.1; Mathlib
`PositiveContinuousLinearMap`, `PositiveLinearMap.GNS`, `CStarMatrix`, `Matrix.trace`,
`Matrix.frobenius_norm_def`, `Unitization.instCStarAlgebra`, `CStarAlgebra.approximateUnit`,
`geometric_hahn_banach_closed_point`, `RealRMK.rieszMeasure`.

## Layer 2: Completely positive contractions into matrix algebras

### 2.1 Operations on completely positive contractions into matrices

Supply the constructions used by every approximation argument, each with its trace and 2-norm
behaviour. Composition of a c.p.c. map `A → M_k` with a star homomorphism `B → A` is c.p.c.
(CStarAlgebras C4.1). The block-diagonal sum of c.p.c. maps `φ_j : A → M_{k_j}` is a c.p.c. map
into `M_{Σk_j}`, and more generally into `⊕_j M_{k_j}` with any tracial state `Σ θ_j tr_{k_j}`.
For an isometry `V : ℂⁿ → H` the compression `T ↦ V*TV` is a normal u.c.p. map `B(H) → M_n`, and
for a nonzero finite-rank projection `P` the compression `φ_P(T) = PTP` is a normal u.c.p. map
into `B(PH) ≅ M_{rank P}` after a choice of orthonormal basis, with
`tr(φ_P(T)) = Tr(TP)/Tr(P)`. For a nonzero unital `A` and a c.p.c. `φ : A → M_k`, prove the
Choi–Effros factorization `φ(a) = hψ(a)h` with `h = φ(1)^{1/2}` and `ψ` u.c.p. (brown2006, proof
of Lemma 2.7, line 525): with `p` the support projection of `h` and `h⁺` its inverse on `pℂᵏ`,
take `ψ(a) = h⁺φ(a)h⁺ + ω(a)(1 − p)` for a fixed state `ω`, using `φ(a) = pφ(a)p`. Prove the
unitalization estimates of brown2006, Lemma 2.7 (line 514): if `tr_k(φ(1)) ≥ 1 − δ` then
`‖ψ(x) − φ(x)‖₂ ≤ 2‖x‖δ^{1/2}`, so `|tr_k ψ(x) − tr_k φ(x)| ≤ 2‖x‖δ^{1/2}` and
`‖ψ(ab) − ψ(a)ψ(b)‖₂ ≤ ‖φ(ab) − φ(a)φ(b)‖₂ + 6‖a‖‖b‖δ^{1/2}`, from `‖1 − h‖₂² ≤ 1 − tr_k φ(1)`
(as `(1 − h)² ≤ 1 − h ≤ 1 − h²` for `0 ≤ h ≤ 1`); and, for the norm version, if
`‖φ(1) − φ(1)²‖ ≤ δ ≤ 1/8` and `‖φ(1)‖ > 2δ` (for instance `tr_k φ(1) > 2δ`), the spectral
projection `Q` of `φ(1)` for
`[1/2, 1]` is nonzero, `‖φ(1) − Q‖ ≤ 2δ`, and `ψ(a) = (Qφ(1)Q)^{-1/2}Qφ(a)Q(Qφ(1)Q)^{-1/2}` is a
u.c.p. map into `M_{rank Q}` within `C·δ‖a‖` of `QφQ` in norm for an absolute constant `C`.
*Needs:* §1.5; CStarAlgebras C4.1 (composition, unital extension); Mathlib
`CompletelyPositiveMap`, `CStarMatrix`, `IsStarProjection`.

API:

- Composition with star homomorphisms and with c.p.c. maps; block sums; compressions by
  isometries and by finite-rank projections, with their trace formulas.
- The Choi–Effros factorization of c.p.c. maps from nonzero unital algebras into matrices.
- The 2-norm and the norm unitalization estimates.
- Unital extension to the unitization: `a + λ1 ↦ φ(a) + λ1` is u.c.p. on `Ã` (CStarAlgebras C4.1)
  and agrees with `φ` on `A`.
- The c.p.c. Kadison–Schwarz inequality `φ(a)*φ(a) ≤ φ(a*a)` for a c.p.c. map `φ : A → M_k` and
  `a ∈ A`: apply `schwarz` (CStarAlgebras C4.1) to the u.c.p. extension `φ̃` on `Ã` and restrict
  to `A`, where `φ̃ = φ`.

**Checks.**

- `φ = (1/2)·id : M_2 → M_2`: `h = 2^{-1/2}·1`, `ψ = id`, and `tr_2 φ(1) = 1/2` with
  `‖ψ(x) − φ(x)‖₂ = ‖x‖₂/2 ≤ 2‖x‖(1/2)^{1/2}`.
- `φ(a) = diag(a₁, 0) : ℂ² → M_2`: `h = e₁₁`, `p = e₁₁`, and `ψ(a) = diag(a₁, ω(a))` is unital
  for every state `ω`; dropping the term `ω(a)(1 − p)` leaves a non-unital map.
- Norm unitalization with `φ(1) = diag(1, 1/100)` (`δ = 0.0099`): `Q = e₁₁`, and `ψ` maps into
  `M_1`; the 2-norm construction would keep `k = 2` with `h = diag(1, 1/10)`.
- The block sum `φ₁ ⊕ φ₂` with `tr_{k₁+k₂}` weights the two traces by `k_j/(k₁ + k₂)`, not
  equally: for `k₁ = 1`, `k₂ = 3` the weights are `1/4` and `3/4`.
- c.p.c. Kadison–Schwarz for `φ = (1/2)·id : M_2 → M_2`: `φ̃(a + λ1) = a/2 + λ1` is u.c.p. on
  `M̃_2`, and `φ(a)*φ(a) = a*a/4 ≤ a*a/2 = φ(a*a)`; the contraction hypothesis is needed: for
  the completely positive, non-contractive `2·id`, `φ(a)*φ(a) = 4a*a` exceeds `φ(a*a) = 2a*a` at
  `a = 1`.

### 2.2 Multiplicativity defects and asymptotic multiplicative domains

For a c.p.c. map `φ : A → M_k` define the 2-norm defect `d₂(φ, a) = tr_k(φ(a*a) − φ(a)*φ(a))` and
the norm defect `d_∞(φ, a) = ‖φ(a*a) − φ(a)*φ(a)‖`; both are nonnegative by the c.p.c.
Kadison–Schwarz inequality of §2.1 (`schwarz` of CStarAlgebras C4.1 applied to the u.c.p.
extension of `φ` to `Ã`; paulsen2002, Ch. 3, as background). Prove, from a
Stinespring dilation
`φ = V*π(·)V` with `‖V‖ ≤ 1` (CStarAlgebras C4.2) and the operator
`T(a) = (1 − VV*)^{1/2}π(a)V`, for which `d₂(φ, a) = ‖T(a)‖₂²` and `d_∞(φ, a) = ‖T(a)‖²`:

- `‖φ(ab) − φ(a)φ(b)‖₂ ≤ ‖a‖·d₂(φ, b)^{1/2}` and `‖φ(ab) − φ(a)φ(b)‖₂ ≤ ‖b‖·d₂(φ, a*)^{1/2}`, the
  one-term form of brown2006, Lemma 3.1.5 (line 759), and the same with `‖·‖` and `d_∞`;
- `d₂(φ, a) ≤ ‖φ(a*a) − φ(a*)φ(a)‖₂`, since `|tr_k(x)| ≤ ‖x‖₂`;
- `d(φ, a + b)^{1/2} ≤ d(φ, a)^{1/2} + d(φ, b)^{1/2}`, `d(φ, ab)^{1/2} ≤ ‖b‖d(φ, a)^{1/2} + ‖a‖d(φ, b)^{1/2}`
  and `|d(φ, a)^{1/2} − d(φ, b)^{1/2}| ≤ ‖a − b‖` for `d = d₂` and for `d = d_∞`.

For a net `(φ_i)` of c.p.c. maps `A → M_{k_i}` define the asymptotic 2-norm multiplicative domain
`D₂ = {a : d₂(φ_i, a) → 0 and d₂(φ_i, a*) → 0}` and its norm analogue `D_∞`. Prove that `D₂` and
`D_∞` are C*-subalgebras of `A`, and that for `a ∈ D₂` and every `b ∈ A`,
`‖φ_i(ab) − φ_i(a)φ_i(b)‖₂ → 0` and `‖φ_i(ba) − φ_i(b)φ_i(a)‖₂ → 0` (likewise in norm for `D_∞`).
Hence asymptotic multiplicativity of `(φ_i)` on all pairs of `A` follows from asymptotic
multiplicativity on the pairs `(s, s*)` and `(s*, s)` for `s` in a set `S` with `S ∪ S*` generating
`A` as a C*-algebra, for instance a spanning set of unitaries (brown2006, proof of Theorem 3.1.6,
lines 841–850). *Needs:* §1.5, §2.1 (c.p.c. Kadison–Schwarz); CStarAlgebras C4.1 (`schwarz`,
unital extension), C4.2 (Stinespring,
including nonunital domains through the unital extension of §2.1).

API:

- Nonnegativity of `d₂` and `d_∞`, and `d₂(φ, a) ≤ d_∞(φ, a)`.
- The two product estimates, in 2-norm and in norm.
- Subadditivity, the product rule and the Lipschitz bound of `d^{1/2}`.
- `D₂` and `D_∞` are C*-subalgebras; the generating-set criterion for asymptotic multiplicativity.
- Star homomorphisms have all defects zero.

**Checks.**

- `φ(x) = x₁₁ : M_2 → M_1`, `a = e₁₂`, `b = e₂₁`: `φ(ab) − φ(a)φ(b) = 1`, and
  `‖b‖·d₂(φ, a*)^{1/2} = (φ(e₁₁) − 0)^{1/2} = 1`, so the estimate is attained; for `a = e₂₁`,
  `b = e₁₂` both sides are `0`.
- `φ = tr_n : M_n → M_1`: `d₂(φ, e₁₂) = tr_n(e₂₂) − 0 = 1/n`, so the defects of the trace itself
  are small in `n` on matrix units, while `d₂(φ, u) = 1 − |tr_n(u)|²` for unitaries `u`, which is
  `1` for a permutation matrix without fixed points.
- Compressions of `C(𝕋)` on `L²(𝕋)` to `span{z⁰, …, z^{n−1}}`: `d₂(φ_n, z̄) = 1/n → 0` while
  `d_∞(φ_n, z̄) = 1`, so `z ∈ D₂ \ D_∞` for this sequence and `D₂ = C(𝕋)`, `D_∞ ≠ C(𝕋)`
  (CStarAlgebras C8.3, Check on these compressions).

### 2.3 Compressions by finite-rank projections

For a nonzero finite-rank projection `P` on `H` and `T ∈ B(H)`, prove the identities of brown2006,
Lemma 2.1 (line 413): `‖PT − TP‖_HS² / Tr(P) = d₂(φ_P, T) + d₂(φ_P, T*)` and
`‖PT − TP‖² = max(d_∞(φ_P, T), d_∞(φ_P, T*))`, from `PT − TP = PT(1 − P) − (1 − P)TP` with
orthogonal ranges and domains, where `d₂(φ_P, T) = Tr(PT*(1 − P)TP)/Tr(P)`. Deduce that the
compressions to a net of nonzero finite-rank projections with
`‖PT − TP‖_HS/‖P‖_HS → 0` for `T` in a C*-algebra `A` are 2-norm asymptotically multiplicative on
`A`, and that norm-asymptotically commuting projections give norm-asymptotically multiplicative
compressions. *Needs:* §2.1–§2.2; Mathlib `IsStarProjection`.

API:

- The Hilbert–Schmidt commutator identity and the norm commutator identity.
- Compressions to Følner-type nets are asymptotically multiplicative in the corresponding norm.

**Checks.**

- `H = ℂ²`, `P = e₁₁`, `T = e₁₂`: `PT − TP = e₁₂`, `‖e₁₂‖_HS² = 1`, and
  `d₂(φ_P, T) + d₂(φ_P, T*) = 0 + 1`.
- `P = 1` on finite-dimensional `H`: both sides vanish for every `T`, and `φ_P` is the identity.
- On `L²(𝕋)` with `P_n` onto `span{z⁰, …, z^{n−1}}` and `T = M_z`: `[M_z, P_n]` has the two
  nonzero matrix entries at `z^{n−1} ↦ z^n` and `z^{−1} ↦ z⁰`, so `‖[M_z, P_n]‖_HS² = 2` and the
  normalized commutator is `(2/n)^{1/2}`, while `‖[M_z, P_n]‖ = 1`.

### 2.4 Matrix maps with prescribed trace

Prove Ozawa's lemma (brown2006, Lemma 3.1.4, line 662): let `h` be a positive finite-rank operator
on `H` with `Tr(h) = 1` and rational eigenvalues `p_j/q` (`p_j ∈ ℕ`, `Σ p_j = q`) for orthonormal
eigenvectors `v_j`; let `P` be the projection of `H ⊗ ℂ^q` onto the span of `v_j ⊗ w_r` for
`r ≤ p_j`, with `(w_r)` the standard basis of `ℂ^q`. Then `φ(T) = P(T ⊗ 1)P` is a normal u.c.p.
map `B(H) → B(P(H ⊗ ℂ^q)) ≅ M_q` with `tr_q ∘ φ = Tr(h ·)` and
`tr_q(φ(uu*) − φ(u)φ(u)*) ≤ 2‖uhu* − h‖₁^{1/2}` for every unitary `u`. The proof computes
`tr_q(φ(T)φ(T*)) = q⁻¹Σ_{ij}|⟪v_i, Tv_j⟫|² min(p_i, p_j)` and
`Tr(h^{1/2}Th^{1/2}T*) = q⁻¹Σ_{ij}|⟪v_i, Tv_j⟫|²(p_ip_j)^{1/2}`, bounds their difference by
`‖Th^{1/2}‖_HS‖h^{1/2}T − Th^{1/2}‖_HS` with the Cauchy–Schwarz inequality, and for unitary `T`
applies the Powers–Størmer inequality `‖uh^{1/2}u* − h^{1/2}‖_HS ≤ ‖uhu* − h‖₁^{1/2}`
(VonNeumannAlgebras V13b; brown2006, Proposition 3.1.3, line 613). *Needs:* §2.1–§2.3;
VonNeumannAlgebras V13b (Powers–Størmer); Mathlib `IsStarProjection`.

API:

- Existence of the map `φ` with exact trace `Tr(h ·)` and the defect bound on unitaries.
- Normality of `φ` on `B(H)`, so its restriction to a von Neumann subalgebra is normal.

**Checks.**

- `h` the rank-one projection onto a unit vector `v` (`q = 1`): `φ(T) = ⟪v, Tv⟫` and
  `tr_1(φ(uu*) − φ(u)φ(u)*) = 1 − c²` with `c = |⟪v, uv⟫|`, while `‖uhu* − h‖₁ = 2(1 − c²)^{1/2}`;
  the bound `1 − c² ≤ 2^{3/2}(1 − c²)^{1/4}` holds on `[0, 1]`.
- `h = (e₁e₁* + e₂e₂*)/2` on `ℂ²` (`q = 2`, `p = (1, 1)`): `φ(T) = T`, `tr_2 ∘ φ = Tr(h ·)`, and
  for unitary `u` the defect and the bound are both `0`.
- `h = diag(1/3, 2/3)` (`q = 3`, `p = (1, 2)`): `φ(T)` is the `3 × 3` matrix with blocks of sizes
  `1` and `2`, `tr_3(φ(e₁₁)) = 1/3 = Tr(he₁₁)`; using `max(p_i, p_j)` in place of `min(p_i, p_j)`
  would give `tr_3(φ(e₁₂)φ(e₂₁)) = 2/3 > Tr(he₁₁) = tr_3 φ(e₁₁)`, violating the Schwarz inequality.

### 2.5 Normal extension to the bidual

For a C*-algebra `A` and a c.p.c. map `φ : A → M_k`, prove that the bitranspose `φ** : A** → M_k`
is the unique weak-star continuous extension of `φ`, that it is completely positive and
contractive, and that `tr_k ∘ φ**` is the normal extension of `tr_k ∘ φ`; for `ω ∈ A*` the normal
extension `ω**` satisfies `‖ω**‖ = ‖ω‖` (brown2006, proof of Theorem 3.2.2, lines 993–999).
Positivity of the matrix amplifications follows because the positive part of the unit ball of
`M_n(A)` is weak-star dense in that of `M_n(A**)`, by Kaplansky density in the amplified universal
representation. *Needs:* CStarAlgebras C2.8 (the bidual as a W*-algebra with predual `A*`), C5.2
(`M_n ⊗ A ≅ M_n(A)`); VonNeumannAlgebras V1 (Kaplansky density), V4 (normal functionals).

API:

- Existence and uniqueness of the normal c.p.c. extension `φ**`, with `φ**(a) = φ(a)` for `a ∈ A`.
- `tr_k ∘ φ** = (tr_k ∘ φ)**`, and `‖ω**‖ = ‖ω‖` for every bounded functional `ω` of `A`.
- Compatibility with composition: `(φ ∘ θ)** = φ** ∘ θ**` for a star homomorphism `θ`.

**Checks.**

- `A = c₀`, `A** = ℓ∞`, `φ = δ_1 : c₀ → M_1`: `φ**(x) = x_1` on `ℓ∞`. The positive functional
  `x ↦ x_1 + lim_U x_n`, for a free ultrafilter `U`, also restricts to `δ_1` on `c₀`, but it has
  norm `2` and is not weak-star continuous, so weak-star continuity is what determines the
  extension.
- `A = K(ℓ²)`, `A** = B(ℓ²)`, `φ(T) = ⟪e₀, Te₀⟫`: `φ**` is the same vector state on `B(ℓ²)`,
  with `‖φ**‖ = ‖φ‖ = 1`.
- `A = ℂ`: `A** = ℂ` and `φ** = φ`.

### Examples

- The compressions of `C(𝕋)` to trigonometric polynomials of degree below `n`, with 2-norm defect
  `1/n` and norm defect `1` (§2.2–§2.3).
- Ozawa's maps for `h = diag(1/3, 2/3)` (§2.4).
- The Choi–Effros factorization of `diag(a₁, 0)` (§2.1).

### Dependencies

CStarAlgebras C2.8, C4.1, C4.2, C5.2; VonNeumannAlgebras V1, V4, V13b; Mathlib
`CompletelyPositiveMap`, `CStarMatrix`, `IsStarProjection`. Within this roadmap: Layer 1.

## Layer 3: Amenable, quasidiagonal and uniform amenable traces

### 3.1 The three approximation properties

Let `A` be a C*-algebra and `τ ∈ T(A)`. Define:

- `τ` is **amenable** if for every finite `F ⊆ A` and `ε > 0` there are `k ∈ ℕ` and a c.p.c. map
  `φ : A → M_k` with `‖φ(ab) − φ(a)φ(b)‖₂ < ε` and `|tr_k(φ(a)) − τ(a)| < ε` for all `a, b ∈ F`
  (brown2006, Theorem 3.1.6 (2), line 807, and Proposition 3.5.10 (1), line 1426, for the c.p.c.
  form; brown2006, Definition 3.1.1, line 589, takes the hypertrace form, proved equivalent in
  §4.4; schafhauser2020, lines 78–81; brown-ozawa2008, Ch. 6, for nets);
- `τ` is **quasidiagonal** if the same holds with the operator norm `‖φ(ab) − φ(a)φ(b)‖ < ε` in
  place of the 2-norm (brown2006, Definition 3.3.1, line 1078; tikuisis-white-winter2017,
  Definition 1.2, line 376, and Remark 1.5 (ii), line 456, for the c.p.c. form);
- `τ` is **uniform amenable** if for every finite `F ⊆ A` and `ε > 0` there are `k` and a c.p.c.
  `φ : A → M_k` with `‖φ(ab) − φ(a)φ(b)‖₂ < ε` for `a, b ∈ F` and `‖tr_k ∘ φ − τ‖_{A*} < ε`
  (brown2006, Definition 3.2.1, line 953).

Write `AT(A)`, `AT_QD(A)` and `UAT(A)` for the three sets, subsets of `T(A)`. Say that `A`
**admits a faithful amenable trace** if some `τ ∈ AT(A)` is faithful (schafhauser2020, lines
69–75). *Needs:* §1.1–§1.2, §1.5; Mathlib `CompletelyPositiveMap`, `CStarMatrix`.

API:

- Membership in each set is the stated condition for a tracial state; the conditions are
  monotone: a witness for `(F, ε)` is a witness for every `F′ ⊆ F` and `ε′ ≥ ε`.
- Each definition is invariant under star isomorphisms `θ : A ≅ B` (`τ ↦ τ ∘ θ`), by composing
  approximants with `θ`.
- The predicate "admits a faithful amenable trace" is invariant under star isomorphisms and fails
  for the zero algebra.

**Checks.**

- `A = M_n`, `τ = tr_n`: `φ = id`, `k = n`, has zero defect and recovers `tr_n` exactly; a
  definition with the unnormalized trace would require `Tr(φ(1)) ≈ τ(1) = 1`, impossible for the
  identity of `M_n`, `n ≥ 2`, and so would wrongly exclude `tr_n`.
- The unique trace of the CAR algebra is amenable and quasidiagonal (§7.2) although the CAR
  algebra, being simple and infinite-dimensional, has no nonzero finite-dimensional
  representation; a definition by star homomorphisms into matrix algebras would make `AT(CAR)`
  empty.
- `A = C(𝕋)`, `τ` normalized Lebesgue measure: the evaluations at the `n`-th roots of unity are
  star homomorphisms `C(𝕋) → M_n` with `tr_n ∘ φ_n(f) = n⁻¹Σ_k f(e^{2πik/n}) → ∫f`, so `τ` is
  quasidiagonal; yet `‖tr_n ∘ φ_n − τ‖_{C(𝕋)*} = 2` for every `n`, the two measures being mutually
  singular, so these approximants do not witness uniform amenability, which `τ` has by §7.1.
- `A = C*_r(F₂)`: `AT(A) = ∅` (§7.3), although `T(A)` contains the faithful canonical trace; the
  zero algebra has `T(0) = AT(0) = ∅` and admits no faithful amenable trace.

### 3.2 Nets, sequences, unital maps and finite-dimensional approximants

Prove the following reformulations, for each of the three properties.

- **Nets.** `τ` is amenable iff there are a directed set `I` and c.p.c. maps `φ_i : A → M_{k(i)}`
  with `‖φ_i(ab) − φ_i(a)φ_i(b)‖₂ → 0` and `tr_{k(i)}(φ_i(a)) → τ(a)` for all `a, b ∈ A`
  (brown-ozawa2008, Ch. 6); the index set is the set of pairs `(F, ε)`.
- **Sequences.** If `A` is separable, the net may be taken to be a sequence (brown2006, Theorem
  3.1.6 (2), line 807): apply the definition to the first `n` terms of a dense sequence with
  `ε = 1/n`, and extend to all of `A` by the uniform bounds `‖φ(x)‖₂ ≤ ‖φ(x)‖ ≤ ‖x‖`.
- **Unital maps.** If `A` is unital and nonzero, the approximants may be taken u.c.p.: include `1`
  in `F` and apply the unitalization estimates of §2.1 (brown2006, Lemma 2.7, line 514); for
  quasidiagonal traces use the norm version, which changes the matrix size from `k` to the rank of
  the spectral projection, with the trace estimate `|tr_l ψ(a) − tr_k φ(a)| → 0`.
- **Finite-dimensional approximants.** The definitions are unchanged if `M_k` with `tr_k` is
  replaced by a finite-dimensional C*-algebra `B` with a tracial state `γ` and the 2-norm by
  `‖·‖_{2,γ}`, by brown2006, Lemma 2.5 (line 486), as in §1.6 (brown2006, footnote 13, line 1250,
  and proof of Proposition 3.5.1, lines 1235–1261).
- **Unitization.** `τ ∈ AT(A)` iff `τ̃ ∈ AT(Ã)`, and likewise for `AT_QD` and `UAT` (brown2006,
  Proposition 3.5.10, line 1423): restrict approximants of `τ̃` to `A`; conversely the unital
  extension `φ̃(a + λ1) = φ(a) + λ1` of §2.1 has the same multiplicativity defects, recovers
  `τ̃`, and satisfies `‖tr ∘ φ̃ − τ̃‖_{Ã*} ≤ 2‖tr ∘ φ − τ‖_{A*}` because `|λ| ≤ ‖a + λ1‖`.

*Needs:* §1.3, §1.6, §2.1, §3.1; CStarAlgebras C4.1 (unital extension); Mathlib
`TopologicalSpace.SeparableSpace`.

**Checks.**

- `A = ℂ ⊕ ℂ`, `τ = (1/3)pr₁ + (2/3)pr₂`: the finite-dimensional approximant `id : A → ℂ ⊕ ℂ` with
  `γ = τ` and the matrix approximant `(a, b) ↦ diag(a, b, b) ∈ M_3` both recover `τ` exactly.
- `A = c₀`, `τ = δ_1`: the c.p.c. map `x ↦ x_1 ∈ M_1` is multiplicative and recovers `τ`, and its
  unital extension to `Ã = c` is `x ↦ x_1`, recovering `τ̃ = δ_1` on `c`; the restriction of an
  approximant of `τ̃` to `A` is again `x ↦ x_1`.
- For the u.c.p. reduction the algebra must be nonzero: the zero algebra is unital with `1 = 0`
  and has no u.c.p. map into `M_k` for `k ≥ 1`; it has no tracial state either, so nothing is lost.

### 3.3 Inclusions, convexity and closure

Prove `AT_QD(A) ⊆ AT(A)` and `UAT(A) ⊆ AT(A)` (brown2006, §3.5, line 1201), from `‖x‖₂ ≤ ‖x‖` and
`|tr_k φ(a) − τ(a)| ≤ ‖tr_k ∘ φ − τ‖‖a‖`. Prove that `AT(A)`, `AT_QD(A)` and `UAT(A)` are convex,
that `AT(A)` and `AT_QD(A)` are weak-star closed in `T(A)` and that `UAT(A)` is norm closed in `A*`
(brown2006, Proposition 3.5.1, line 1218): for `τ = θτ₁ + (1 − θ)τ₂` take the block sum of
approximants into `M_{k₁} ⊕ M_{k₂}` with the tracial state `θ tr_{k₁} ⊕ (1 − θ)tr_{k₂}`, for which
`‖x ⊕ y‖²_{2} = θ‖x‖₂² + (1 − θ)‖y‖₂²`, and apply §3.2. *Needs:* §2.1, §3.1–§3.2.

**Checks.**

- `A = ℂ ⊕ ℂ`: `AT = AT_QD = UAT = T(A)`, the whole segment; the extreme points are recovered by
  the star homomorphisms `pr_i : A → M_1` and the rational points by block sums.
- A tracial state of `M_2` is `tr_2` only, so `AT(M_2) = {tr_2}`, a single point, convex and closed.
- `UAT` need not be weak-star closed: for a residually finite non-amenable group `Γ` the regular
  trace of the full group C*-algebra is a weak-star limit of traces of finite-dimensional
  representations, which are uniform amenable, but is not itself uniform amenable (brown2006,
  Remark 4.1.7, line 1613); so the closure statement for `UAT` uses the norm of `A*`.

### 3.4 Pullback along star homomorphisms

For a star homomorphism `ι : A → B` and `τ ∈ AT(B)` such that `τ ∘ ι` is a state, prove
`τ ∘ ι ∈ AT(A)`, and likewise for `AT_QD` and `UAT`, by composing approximants with `ι`
(`‖tr ∘ φ ∘ ι − τ ∘ ι‖_{A*} ≤ ‖tr ∘ φ − τ‖_{B*}`); if moreover `τ` is faithful and `ι` injective,
`τ ∘ ι` is faithful (§1.2). This contains restriction to unital C*-subalgebras (brown2006,
Proposition 3.5.5, line 1306), lifting from quotients along surjective star homomorphisms
(brown2006, Proposition 3.5.6, line 1312) and the form used by the AF-embedding theorem
(schafhauser2020, lines 69–70). When `τ ∘ ι` is nonzero of norm below one its normalization is
treated in §6.3. *Needs:* §1.1–§1.2, §3.1.

**Checks.**

- `ι : M_2 → CAR` the unital first tensor factor: `τ_CAR ∘ ι = tr_2`, amenable.
- `ι : M_3 → M_4` the corner embedding into the upper left block: `tr_4 ∘ ι = (3/4)tr_3` has norm
  `3/4`, is not a state, and the pullback statement does not apply; §6.3 shows its normalization
  `tr_3` is amenable.
- `q : C(𝕋) → ℂ`, `q(f) = f(1)`, surjective, with `τ = id_ℂ`: `τ ∘ q = δ_1`, a quasidiagonal trace
  of `C(𝕋)` (the star homomorphism `q` into `M_1` is its own approximant), which is not faithful.

### 3.5 Tensor products

For `τ ∈ T(A)` and `γ ∈ T(B)` the product state `τ ⊗ γ` of CStarAlgebras C5.2 is a tracial state
of `A ⊗min B` (traciality holds on elementary tensors and extends by continuity). Prove: if
`τ ∈ AT(A)` and `γ ∈ AT(B)` then `τ ⊗ γ ∈ AT(A ⊗min B)`, and likewise for `AT_QD` and `UAT`
(brown2006, Proposition 3.5.7, line 1317). Take `φ ⊗ ψ : A ⊗min B → M_k ⊗ M_l = M_{kl}`
(CStarAlgebras C5.2); on elementary tensors `tr_{kl}((φ ⊗ ψ)(a ⊗ b)) = tr_k(φ(a))tr_l(ψ(b))` and
the defect splits as `(φ(aa′) − φ(a)φ(a′)) ⊗ ψ(bb′) + φ(a)φ(a′) ⊗ (ψ(bb′) − ψ(b)ψ(b′))`, with
`‖x ⊗ y‖₂ = ‖x‖₂‖y‖₂` and `‖x ⊗ y‖₂ ≤ ‖x‖₂‖y‖`; the generating-set criterion of §2.2 extends
asymptotic multiplicativity from elementary tensors to `A ⊗min B`, and uniform boundedness
extends trace recovery from their span. For `UAT` use
`‖ω ⊗ ω′ − τ ⊗ γ‖ ≤ ‖ω − τ‖‖ω′‖ + ‖τ‖‖ω′ − γ‖` with `‖ω ⊗ ω′‖ = ‖ω‖‖ω′‖` (CStarAlgebras C5.2).
*Needs:* §1.5, §2.2, §3.1–§3.2; CStarAlgebras C5.1–C5.2.

**Checks.**

- `M_k ⊗ M_l = M_{kl}`: `tr_k ⊗ tr_l = tr_{kl}`, recovered exactly by `id ⊗ id`.
- `C(X) ⊗min C(Y) = C(X × Y)` (CStarAlgebras C5.2): `μ ⊗ ν` is the product measure, amenable as a
  tracial state of a commutative algebra (§7.1), consistent with the theorem.
- `C*_r(F₂) ⊗min M_2` with `τ_{F₂} ⊗ tr_2`: not amenable, since its pullback along the unital
  inclusion `x ↦ x ⊗ 1` is `τ_{F₂}`, which is not amenable (§3.4, §7.3); tensoring with an amenable
  trace cannot create amenability.

### Examples

- `ℂ ⊕ ℂ` with `AT = AT_QD = UAT = T` (§3.3); `M_n` with `AT = {tr_n}` (§3.1).
- `C(𝕋)` with Lebesgue measure: quasidiagonal through roots of unity, with these approximants at
  distance `2` from `τ` in `C(𝕋)*` (§3.1).
- The corner `M_3 ⊆ M_4`, whose pulled-back trace has norm `3/4` (§3.4).

### Dependencies

CStarAlgebras C4.1, C5.1, C5.2; Mathlib `CompletelyPositiveMap`, `CStarMatrix`,
`TopologicalSpace.SeparableSpace`. Within this roadmap: Layers 1–2.

## Layer 4: Hypertraces and the Connes–Kirchberg theorem

Throughout this layer `A` is a unital C*-algebra; nonunital algebras are treated through §3.2's
unitization statement, as recorded in §4.4.

### 4.1 Hypertraces and representation independence

For a faithful representation `π : A → B(H)` and `τ ∈ T(A)`, define a hypertrace for `(π, τ)` as
a state `ψ` of `B(H)` with `ψ ∘ π = τ` and `ψ(π(u)Tπ(u)*) = ψ(T)` for every unitary `u ∈ A` and
`T ∈ B(H)` (brown2006, Definition 3.1.1, line 589; connes1976, Theorem 5.1, as background).
Prove that the invariance condition is equivalent to `ψ(π(a)T) = ψ(Tπ(a))` for all `a ∈ A` and
`T ∈ B(H)`, since `A` is spanned by its unitaries (`CStarAlgebra.exists_sum_four_unitary`).
Prove representation independence (brown2006, Proposition 3.1.2, line 595): if `(π, τ)` has a
hypertrace `ψ` and `ρ : A → B(K)` is another faithful representation, extend the u.c.p. map
`ρ(a) ↦ π(a)` from the operator system `ρ(A)` to a u.c.p. map `Ψ : B(K) → B(H)` by Arveson's
theorem; `ρ(A)` lies in the multiplicative domain of `Ψ`, and `ψ ∘ Ψ` is a hypertrace for
`(ρ, τ)`. *Needs:* §1.1; VonNeumannAlgebras V13a (Arveson's extension theorem); CStarAlgebras
C4.1 (multiplicative domain); Mathlib `CStarAlgebra.exists_sum_four_unitary`.

API:

- Extensionality and the restriction identity `ψ ∘ π = τ`.
- Unitary invariance is equivalent to the commutation identity `ψ(π(a)T) = ψ(Tπ(a))`.
- Representation independence: existence of a hypertrace does not depend on the faithful
  representation.
- Hypertraces for `(π, τ)` form a weak-star closed convex subset of `S(B(H))`.

**Checks.**

- `A = M_n ⊆ B(ℂⁿ)`: invariance under all unitaries of `B(ℂⁿ) = M_n` forces `ψ = tr_n`, so the
  hypertrace is unique and exists exactly for `τ = tr_n`.
- `A = ℂ1 ⊆ B(H)`: every state of `B(H)` is a hypertrace for the unique state of `ℂ`, so
  hypertraces are not unique in general.
- `A = ℂ²` acting diagonally on `ℂ²` with `τ = (t, 1 − t)`: `ψ(T) = tT₁₁ + (1 − t)T₂₂` is a
  hypertrace, since `ψ(dT) = ψ(Td)` for diagonal `d`; the state `ψ′(T) = (T₁₁ + T₂₂ + T₁₂ + T₂₁)/2`
  restricts to `(1/2, 1/2)` on `A` but `ψ′(e₁₁e₁₂) = 1/2 ≠ 0 = ψ′(e₁₂e₁₁)`, so it is not one.
- `A = C*_r(F₂)` on `ℓ²(F₂)`: no tracial state has a hypertrace (§7.3).

### 4.2 From a hypertrace to matrix approximations

Prove (brown2006, proof of Theorem 3.1.6 (1) ⇒ (2), lines 817–850, due to Connes and Ozawa): let
`A ⊆ B(H)` be a unital C*-subalgebra, `ψ` a hypertrace for the inclusion and `τ = ψ|_A`. Then for
every finite `F ⊆ A` and `ε > 0` there are `q` and a normal u.c.p. map `Φ : B(H) → M_q` whose
restriction `φ` to `A` satisfies `‖φ(ab) − φ(a)φ(b)‖₂ < ε` and `|tr_q φ(a) − τ(a)| < ε` for
`a, b ∈ F`. In particular `τ ∈ AT(A)`, and when `A` is a von Neumann algebra the approximants are
normal. Route: by §1.7 choose a net of finite-rank densities `h_λ` with `Tr(h_λ ·) → ψ`
weak-star; for a finite set `U` of unitaries of `A`, closed under adjoints and spanning `F`, the
tuples `(uh_λu* − h_λ)_{u ∈ U}` and `(Tr(h_λa) − τ(a))_{a ∈ F}` tend to `0` weakly in
`⊕_U S₁(H) ⊕ ℂ^F`, so by Mazur's lemma (BanachSpaceTheory B1) a convex combination `h` has
`‖uhu* − h‖₁ < δ` and `|Tr(ha) − τ(a)| < δ`; perturb `h` in trace norm to a positive finite-rank
density with rational eigenvalues; apply Ozawa's lemma (§2.4) to obtain `Φ` with
`tr_q ∘ Φ = Tr(h ·)` and `d₂(Φ, u) ≤ 2(2δ)^{1/2}` for `u ∈ U`; and conclude with the
multiplicativity estimates and the generating-set argument of §2.2. *Needs:* §1.7, §2.2, §2.4,
§4.1; BanachSpaceTheory B1; Mathlib `CStarAlgebra.exists_sum_four_unitary`.

API:

- Every tracial state admitting a hypertrace in some faithful representation is amenable.
- The approximants are restrictions of normal u.c.p. maps on `B(H)`.

**Checks.**

- `A = M_n ⊆ B(ℂⁿ)`, `ψ = tr_n`: `h = n⁻¹·1` is already invariant, Ozawa's map is the identity
  of `M_n` (`q = n`, `p_j = 1`), with zero defect.
- `A = ℂ1 ⊆ B(H)` and any state `ψ`: `U = {1}`, and every finite-rank density works; the output is
  an approximant of the unique state of `ℂ`, as it must be.
- `A = ℂ²` diagonal in `B(ℂ²)`, `ψ(T) = T₁₁/3 + 2T₂₂/3`: `h = diag(1/3, 2/3)` commutes with `A`,
  and Ozawa's map of §2.4 restricted to `A` is `(a, b) ↦ diag(a, b, b)`, recovering `(1/3, 2/3)`.

### 4.3 The tensor functional and the bimodule representation

Prove the implications (brown2006, proof of Theorem 3.1.6, lines 851–894):

- if `τ` is amenable then `|μ_τ(x)| ≤ ‖x‖_min` for `x ∈ A ⊙ Aᵒᵖ`: for u.c.p. approximants `φ`,
  the same linear map is completely positive `Aᵒᵖ → M_kᵒᵖ` (matrix positivity is transported by
  transposition), `φ ⊗ φᵒᵖ` is u.c.p. on `A ⊗min Aᵒᵖ` (CStarAlgebras C5.2), and the state
  `x ⊗ yᵒᵖ ↦ tr_k(xy)` of `M_k ⊗ M_kᵒᵖ` (§1.5) composed with it takes the value
  `tr_k(φ(a)φ(b))`, within `‖φ(ab) − φ(a)φ(b)‖₂` of `tr_k(φ(ab))`, hence near `τ(ab)`; a
  weak-star cluster point extends `μ_τ`;
- if `μ_τ` is min-bounded then `‖(π_τ × π_τᵒᵖ)(x)‖ ≤ ‖x‖_min`, by uniqueness of the GNS
  representation of the extended state, `Ω` being cyclic (VonNeumannAlgebras V0);
- if `π_τ × π_τᵒᵖ` is min-bounded then for every faithful representation `A ⊆ B(H)` there is a
  u.c.p. map `Φ : B(H) → M_τ` with `Φ|_A = π_τ` (Lance's argument): `A ⊗min Aᵒᵖ ⊆ B(H) ⊗min Aᵒᵖ`
  isometrically (VonNeumannAlgebras V13b.SpatialNorm), the extension `Θ` of `π_τ × π_τᵒᵖ` given
  by Arveson's theorem has `1 ⊗ Aᵒᵖ` in its multiplicative domain, so `Θ(T ⊗ 1)` commutes with
  `π_τᵒᵖ(Aᵒᵖ)` and lies in `π_τᵒᵖ(Aᵒᵖ)' = M_τ` (§1.4), and `Φ(T) = Θ(T ⊗ 1)`;
- if such a `Φ` exists for one faithful representation then `ψ(T) = τ''(Φ(T))` is a hypertrace:
  `A` lies in the multiplicative domain of `Φ`, and `τ''` is tracial on `M_τ`.

*Needs:* §1.4–§1.5, §3.2, §4.1; CStarAlgebras C4.1 (multiplicative domain), C5.1–C5.2; VonNeumannAlgebras
V0, V13a (Arveson), V13b.SpatialNorm; Mathlib `CStarAlgebra` instance on `Aᵐᵒᵖ`.

API:

- Amenability gives min-boundedness of `μ_τ`; min-boundedness of `μ_τ` and of `π_τ × π_τᵒᵖ` are
  equivalent.
- Lance's extension: min-boundedness of `π_τ × π_τᵒᵖ` gives a u.c.p. `Φ : B(H) → M_τ` extending
  `π_τ` for every faithful representation.
- Such a `Φ` produces a hypertrace `τ'' ∘ Φ`.

**Checks.**

- `A = M_n`, `τ = tr_n`: `π_τ × π_τᵒᵖ` is the isomorphism `M_n ⊗ M_nᵒᵖ ≅ B(L²(M_n))` of §1.5,
  isometric, and `Φ` for `M_n ⊆ B(ℂⁿ)` is the identity of `M_n`.
- `A = C*_r(F₂)`, `τ = τ_{F₂}`: `π_τ × π_τᵒᵖ` is the product of the left and right regular
  representations, bounded for the maximal norm and not for the minimal norm (CStarAlgebras C5.1,
  Check on `C*_r(F₂) ⊙ C*_r(F₂)`), matching the failure of amenability of `τ_{F₂}` (§7.3).
- `A = C(X)`, `τ = μ`: `Aᵒᵖ = A`, `π_τᵒᵖ = π_τ` is multiplication on `L²(μ)`, and `π_τ × π_τᵒᵖ`
  factors through the multiplication map `C(X) ⊗ C(X) = C(X × X) → L∞(μ)`, restriction to the
  diagonal, which is min-bounded.

### 4.4 The Connes–Kirchberg theorem

Prove (brown2006, Theorem 3.1.6, line 804, with footnote 2, line 819; brown-ozawa2008, Ch. 6, for
nets; Kirchberg's and Connes's origin as background): for a unital C*-algebra `A` and
`τ ∈ T(A)` the following are equivalent:

- (a) `τ ∈ AT(A)`;
- (b) for every faithful representation `π : A → B(H)`, `(π, τ)` has a hypertrace;
- (c) some faithful representation `(π, τ)` has a hypertrace;
- (d) `|μ_τ(x)| ≤ ‖x‖_min` for every `x ∈ A ⊙ Aᵒᵖ`, i.e. `μ_τ` extends to a state of `A ⊗min Aᵒᵖ`;
- (e) `‖(π_τ × π_τᵒᵖ)(x)‖ ≤ ‖x‖_min` for every `x ∈ A ⊙ Aᵒᵖ`;
- (f) for every faithful representation `π : A → B(H)` there is a u.c.p. map
  `Φ : B(H) → π_τ(A)''` with `Φ ∘ π = π_τ`;
- (g) the same for some faithful representation.

The cycle is (a) ⇒ (d) ⇒ (e) ⇒ (f) ⇒ (g) ⇒ (c) ⇒ (a) by §4.3 and §4.2, and (b) ⇔ (c) by §4.1,
a faithful representation existing by VonNeumannAlgebras V0. For a nonunital `A`, `τ ∈ AT(A)` iff
`τ̃` satisfies (b)–(g) on `Ã` (§3.2). *Needs:* §3.2, §4.1–§4.3; VonNeumannAlgebras V0
(Gelfand–Naimark representation).

**Checks.**

- `A = M_n`: all seven conditions hold for `tr_n`, with `ψ = tr_n`, `Φ = id` and the isometric
  bimodule isomorphism of §1.5.
- `A = ℂ ⊕ ℂ`, `τ = pr₁`: `π_τ = pr₁`, `M_τ = ℂ`, and for the faithful representation on `ℂ²`
  the map `Φ(T) = T₁₁` satisfies (f); `μ_τ((a, b) ⊗ (c, d)ᵒᵖ) = ac` is min-bounded on
  `ℂ² ⊗ ℂ² = ℂ⁴`.
- `A = C*_r(F₂)`: (a)–(g) all fail for `τ_{F₂}`; in particular no u.c.p. map
  `B(ℓ²(F₂)) → L(F₂)` restricts to the identity on `C*_r(F₂)`, consistent with non-injectivity of
  `L(F₂)` (§4.6).

### 4.5 Connes's Følner condition

Prove (brown2006, Theorem 3.1.7 (1) ⇔ (3), line 897): for a unital C*-subalgebra `A ⊆ B(H)` and
`τ ∈ T(A)`, if there is a net of nonzero finite-rank projections `P_i` with
`‖aP_i − P_ia‖_HS/‖P_i‖_HS → 0` and `Tr(aP_i)/Tr(P_i) → τ(a)` for all `a ∈ A` (a Følner net for
`τ`), then `τ ∈ AT(A)`, by the compressions of §2.3. Conversely, if `A` and `H` are separable,
`A ∩ K(H) = 0` and `τ ∈ AT(A)`, there is a Følner sequence for `τ`: for u.c.p. approximants
`φ_n : A → M_{k_n}` choose isometries `V_m : ℂ^{k_n} → H` with `V_m*aV_m → φ_n(a)` (the
compression step of CStarAlgebras C8.2) and apply the identities of §2.3 to `P = V_mV_m*`
(brown2006, Theorem 2.2, line 429). *Needs:* §2.3, §3.2, §4.4; CStarAlgebras C8.2 (compression
step); Mathlib `IsStarProjection`, `TopologicalSpace.SeparableSpace`.

API:

- A Følner net for `τ` in any unital concrete realization of `A` makes `τ` amenable.
- In a separable faithful realization meeting the compact operators only in `0`, every amenable
  trace has a Følner sequence.

**Checks.**

- `A = C(𝕋)` on `L²(𝕋)` (no nonzero compact multiplication operator) with Lebesgue `τ`: `P_n` onto
  `span{z⁰, …, z^{n−1}}` gives `Tr(M_fP_n)/n = ∫f` exactly and normalized commutator
  `(2/n)^{1/2}` for `f = z` (§2.3), a Følner sequence.
- `A = ℂ²` diagonal on `ℂ²` (not in general position) with `τ = (1/3, 2/3)`, which is amenable:
  the nonzero projections on `ℂ²` that commute with `A` are `e₁₁, e₂₂, 1`, with compressed traces
  of `e₁₁` equal to `1, 0, 1/2`; by compactness of the set of projections of ranks `1` and `2`,
  projections with compressed trace near `1/3` have normalized commutator with `e₁₁` bounded
  below (a rank-one projection onto `ξ` with `|ξ₁|² = 1/3` has normalized commutator
  `2^{1/2}|ξ₁ξ₂| = 2/3`), so no Følner net exists and the general-position hypothesis is needed.
- `A = M_n ⊆ B(ℂⁿ)`, `τ = tr_n`: `P = 1` is a Følner net in a non-general-position realization,
  so the forward implication does not need general position.

### 4.6 Tracial von Neumann algebras

Prove: for a von Neumann algebra `M ⊆ B(H)` with a faithful normal tracial state `τ`
(VonNeumannAlgebras V5–V6), `τ ∈ AT(M)` for `M` viewed as a C*-algebra iff `M` is injective, and
then `τ` has normal approximants. If `M` is injective, a conditional expectation `E : B(H) → M`
(VonNeumannAlgebras V13a, Tomiyama's theorem) gives the hypertrace `τ ∘ E` and §4.2 applies;
conversely (f) for the faithful representation `M ⊆ B(H)` gives `Φ : B(H) → π_τ(M)''` with
`Φ|_M = π_τ`, and `π_τ` is a faithful normal representation with von Neumann image
(VonNeumannAlgebras V4), so `π_τ⁻¹ ∘ Φ` is a u.c.p. projection of `B(H)` onto `M`. Deduce, for
every unital `A` and `τ ∈ T(A)`, that injectivity of `π_τ(A)''` implies `τ ∈ AT(A)`: extend `π_τ`
to `B(H)` by the completely positive extension property of `π_τ(A)''` and apply (f) ⇒ (a)
(brown2006, Theorem 3.2.2 (5) ⇒ (1), line 1035; schafhauser2020, lines 82–84). For `(M, τ)` in
standard form, VonNeumannAlgebras V13b's hypertraces on `B(L²(M,τ))` (states extending `τ`
and commuting with `M`) are exactly the hypertraces of §4.1 for the representation
`M ⊆ B(L²(M,τ))`. *Needs:* §4.2, §4.4; VonNeumannAlgebras V4, V5, V6, V13a, V13b.

API:

- For a tracial von Neumann algebra, amenability of the trace is equivalent to injectivity.
- Injectivity of `π_τ(A)''` implies amenability of `τ`, for every unital `A`.
- Agreement of the C*-algebraic and von Neumann algebraic hypertraces in standard form.

**Checks.**

- `M = M_n`: injective, and `tr_n ∈ AT(M_n)`.
- `M = L∞[0,1]` with Lebesgue `τ`: injective (abelian), and `τ` is amenable by §7.1.
- `M = L(F₂)` with its trace: not injective (VonNeumannAlgebras V13b), so `τ ∉ AT(L(F₂))`,
  consistent with §3.4 since the restriction of `τ` to the unital subalgebra `C*_r(F₂)` is
  `τ_{F₂}`, which is not amenable (§7.3).

### Examples

- `M_n` with all seven conditions of §4.4 (§4.4).
- `C(𝕋)` on `L²(𝕋)` with its Følner sequence of trigonometric projections (§4.5).
- `ℂ²` on `ℂ²`, an amenable trace with no Følner net outside general position (§4.5).

### Dependencies

CStarAlgebras C4.1, C5.1, C5.2, C8.2; VonNeumannAlgebras V0, V4, V5, V6, V13a,
V13b.SpatialNorm, V13b; BanachSpaceTheory B1; Mathlib `CStarAlgebra.exists_sum_four_unitary`,
`IsStarProjection`. Within this roadmap: Layers 1–3.

## Layer 5: Uniform amenability, injectivity, nuclearity and exactness

### 5.1 Weakly nuclear representations and injectivity

Define a c.p.c. map `θ : A → M` into a von Neumann algebra to be weakly nuclear if there are nets
of c.p.c. maps `α_i : A → M_{n_i}` and `β_i : M_{n_i} → M` with `β_i(α_i(a)) → θ(a)` ultraweakly
for every `a ∈ A` (brown2006, Theorem 3.2.2 (6), line 990). For a c.p.c. `β : M_n → M` prove that
`[y_{kl}] ↦ Σ_{kl} β(e_{kl})y_{kl}` is a c.p.c. map `M_n(M') → B(H)`: writing the positive Choi
matrix `[β(e_{kl})]` as `R*R` with `R = [r_{mk}] ∈ M_n(M)`, the map is
`Y ↦ Σ_m w_m*Yw_m` with `w_mξ = (r_{m1}ξ, …, r_{mn}ξ)`, because the `y_{kl}` commute with the
`r_{mk}`. Prove (brown2006, proof of Theorem 3.2.2 (6) ⇒ (5), lines 1038–1048, with Lance's
argument): if `π : A → B(H)` is a representation of a unital C*-algebra and
`π : A → π(A)''` is weakly nuclear, then `π(A)''` is injective. Route: the product map
`A ⊙ π(A)' → B(H)`, `a ⊗ y ↦ π(a)y`, satisfies
`‖Σπ(a_j)y_j‖ ≤ liminf_i ‖Σβ_i(α_i(a_j))y_j‖ ≤ liminf_i ‖Σα_i(a_j) ⊗ y_j‖_{M_{n_i}(π(A)')} ≤ ‖Σa_j ⊗ y_j‖_min`
by weak lower semicontinuity of the norm, the lemma above and the min-contractivity of
`α_i ⊗ id` (CStarAlgebras C5.2); extend it by Arveson's theorem from
`A ⊗min π(A)' ⊆ A ⊗min B(H)` to a u.c.p. `Θ`, for which `A ⊗ 1` lies in the multiplicative
domain, so `T ↦ Θ(1 ⊗ T)` is a u.c.p. projection of `B(H)` onto `π(A)'`; hence `π(A)'` and
`π(A)''` are injective (VonNeumannAlgebras V13a, V13b). Nonunital algebras are treated through the
unitization. *Needs:* CStarAlgebras C4.1 (multiplicative domain), C5.1–C5.2; VonNeumannAlgebras V1,
V13a (Arveson, projection definition of injectivity), V13b.SpatialNorm (inclusion functoriality),
V13b (commutant theorem).

API:

- Weak nuclearity is closed under composition with c.p.c. maps on the domain side and under
  normal c.p.c. maps on the range side; nuclear maps (CStarAlgebras C6.1) are weakly nuclear.
- The commuting-range lemma for c.p.c. maps `M_n → M`.
- Lance's criterion: a weakly nuclear representation generates an injective von Neumann algebra.

**Checks.**

- `A = B(ℓ²)`, `θ = id`: the compressions to `span{e₀, …, e_{n−1}}` and the inclusions give
  `β_n ∘ α_n → id` strongly, so `id` is weakly nuclear, while it is not nuclear because `B(ℓ²)` is
  not nuclear (CStarAlgebras C6.1, Check): the two notions differ.
- `A = C*_r(F₂)`, `π` the regular representation: `π(A)'' = L(F₂)` is not injective, so `π` is
  not weakly nuclear into `L(F₂)`.
- The commuting-range lemma fails without commutation: for `β = id : M_2 → M_2` and `y_{kl} = e_{lk}`
  (not in `M_2' = ℂ`) the map gives `Σ e_{kl}e_{lk} = 2·1`, while `[e_{lk}]` is the flip, of norm `1`
  in `M_2(M_2)`, so the bound fails.

### 5.2 Uniform amenable traces and injective GNS algebras

Prove (brown2006, Theorem 3.2.2, line 973, with Ozawa's condition (6)): for a C*-algebra `A` and
`τ ∈ T(A)` the following are equivalent:

- (i) `τ ∈ UAT(A)`;
- (ii) `M_τ = π_τ(A)''` is injective;
- (iii) `π_τ : A → M_τ` is weakly nuclear;
- (iv) the vector trace `τ''` is an amenable trace of the C*-algebra `M_τ`;

and if `A` is separable they are equivalent to (v) `M_τ` is hyperfinite. Routes: (ii) ⇒ (iii) by
semidiscreteness of injective von Neumann algebras (VonNeumannAlgebras V13b) composed with `π_τ`;
(iii) ⇒ (ii) by §5.1; (ii) ⇔ (iv) by §4.6; (ii) ⇒ (i): §4.6 gives normal approximants `ψ_λ` of
`τ''` on `M_τ` whose traces converge to `τ''` in `σ((M_τ)_*, M_τ)`, Mazur's lemma (BanachSpaceTheory
B1) in the predual gives convex combinations converging in norm, realized by block sums as in
§3.3, and composing with `π_τ` gives `‖γ ∘ ψ ∘ π_τ − τ‖_{A*} ≤ ‖γ ∘ ψ − τ''‖_{(M_τ)_*}`; (i) ⇒ (iv): the
normal extensions `φ_i**` of uniform approximants (§2.5) satisfy
`d₂(φ_i**, x) ≤ 2d₂(φ_i**, a) + 2(τ**((x − a)*(x − a)) + 4‖x‖²‖tr ∘ φ_i − τ‖)` for `a ∈ A` near
`x ∈ A**` in the `τ**` 2-norm (Kaplansky density, VonNeumannAlgebras V1), so their asymptotic 2-norm
multiplicative domain (§2.2) is all of `A**`, and their restrictions to the central summand
`z_τA** ≅ M_τ` of CStarAlgebras C2.8 recover `τ''` (brown2006, proof of Theorem 3.2.2 (1) ⇒ (2),
lines 993–1015); (ii) ⇔ (v) by VonNeumannAlgebras V13b, `M_τ` having separable predual because
`L²(A,τ)` is separable (VonNeumannAlgebras V4). For nonunital `A` use `M_τ = π_τ̃(Ã)''` and §3.2.
*Needs:* §1.4, §2.2, §2.5, §3.2–§3.3, §4.6, §5.1; CStarAlgebras C2.8; VonNeumannAlgebras V1, V4,
V13b; BanachSpaceTheory B1.

**Checks.**

- `A = M_n`: `M_τ = M_n` is injective and `tr_n` is uniform amenable through `id`.
- The regular trace `τ` of the full group C*-algebra `C*(F₂)` is amenable, indeed a weak-star limit
  of traces of finite-dimensional representations because `F₂` is residually finite (brown2006,
  Proposition 4.1.4, line 1575), but `M_τ = L(F₂)` is not injective, so `τ ∉ UAT(C*(F₂))`
  (brown2006, Proposition 4.1.6, line 1608): `UAT(A) ≠ AT(A)` in general.
- `A = C(𝕋)` with Lebesgue `τ`: `M_τ = L∞(𝕋)` is injective, so `τ ∈ UAT`, although the
  root-of-unity approximants of §3.1 are at distance `2`; explicit uniform approximants are the
  averages `φ_n(f) = diag(n∫_{I_k} f dm)_{k ≤ n}` over `n` equal arcs `I_k`, with
  `tr_n ∘ φ_n = τ` exactly and `‖φ_n(fg) − φ_n(f)φ_n(g)‖ → 0` by uniform continuity.

### 5.3 Nuclear C*-algebras

Prove (brown2006, Theorem 4.2.1, line 1707): if `A` is nuclear (CStarAlgebras C6.1) then
`T(A) = AT(A) = UAT(A)`, and `π(A)''` is injective for every representation `π` of `A`. For unital
`A`, `π = π ∘ id_A` is weakly nuclear because `id_A` is nuclear, so §5.1 applies, and §5.2 gives
uniform amenability; for nonunital `A`, `Ã` is nuclear (CStarAlgebras C6.5) and §3.2 transfers.
*Needs:* §3.2–§3.3, §5.1–§5.2; CStarAlgebras C6.1, C6.5.

**Checks.**

- `A = K(ℓ²)`: nuclear, and `T(K(ℓ²)) = ∅` (rank-one projections are pairwise equivalent and
  infinitely many orthogonal ones would have equal trace summing to at most `1`), so the theorem
  is vacuous there.
- The CAR algebra: nuclear (AF), with unique trace, uniform amenable, `M_τ` the hyperfinite II₁
  factor.
- `C*_r(F₂)` is not nuclear and `T ≠ AT` there (§7.3); `C*(F₂)` is not nuclear and
  `AT ≠ UAT` there (§5.2): the nuclearity hypothesis cannot be dropped from either equality.

### 5.4 Exact C*-algebras

Prove (brown2006, Corollary 4.3.6, line 1925, stated there for separable unital `A`; the route
below needs no separability; kirchberg1993, §3, uncertified, as the origin): if `A` is exact
(CStarAlgebras C7.1) and `τ ∈ T(A)`, then the following are equivalent: `τ ∈ AT(A)`;
`τ ∈ UAT(A)`; `π_τ : A → M_τ` is nuclear (CStarAlgebras C6.1, point-norm factorizations through
matrix algebras); `M_τ` is injective; and, for separable `A`,
`M_τ` is hyperfinite. Route: for unital `A` and a faithful representation `A ⊆ B(H)`, the inclusion
is a nuclear map (CStarAlgebras C7.1), and (f) of §4.4 gives `Φ : B(H) → M_τ` with
`π_τ = Φ|_A`, so `π_τ` is nuclear; nuclear maps are weakly nuclear, so §5.1 gives injectivity and
§5.2 uniform amenability; conversely §5.2 and §3.3 return to amenability. Nonunital exact
algebras have exact unitization (CStarAlgebras C7.1, unitization variants). *Needs:* §3.3, §4.4,
§5.1–§5.2; CStarAlgebras C6.1, C7.1.

**Checks.**

- `A = C*_r(F₂)`, exact (brown2006, proof of Corollary 4.3.8, line 1971): `τ_{F₂}` is not amenable
  and `L(F₂)` is not injective, so both sides fail together.
- `A = C*(F₂)`, not exact (CStarAlgebras C7.1, Check): its regular trace is amenable while `L(F₂)`
  is not injective (§5.2), so the exactness hypothesis cannot be dropped.
- `A = C(X)`: exact and nuclear; every `π_τ` is nuclear into the abelian `L∞(μ)`, consistent with
  §5.3.

### Examples

- `B(ℓ²)`: the identity is weakly nuclear and not nuclear (§5.1).
- `C*(F₂)` with its regular trace: amenable, not uniform amenable, with non-injective `L(F₂)`
  (§5.2, §5.4).
- The CAR algebra with uniform amenable unique trace (§5.3).

### Dependencies

CStarAlgebras C2.8, C4.1, C5.1, C5.2, C6.1, C6.5, C7.1; VonNeumannAlgebras V1, V4, V13a,
V13b.SpatialNorm, V13b; BanachSpaceTheory B1. Within this roadmap: Layers 1–4.

## Layer 6: Faces, normalized restrictions, quotients and ideals

### 6.1 Dominated traces

Prove (brown2006, Lemma 3.5.2, line 1274): for a unital C*-algebra `A`, tracial states `τ, γ` and
`0 < s` with `sτ ≤ γ` as functionals, there are a projection `P ∈ π_γ(A)'` and a unitary
`U : PL²(A,γ) → L²(A,τ)` with `U(π_γ(a)|_{PL²})U* = π_τ(a)` for all `a`; consequently
`M_τ ≅ π_γ(A)''P` as von Neumann algebras, the reduced algebra by a projection of the commutant.
Route: the Radon–Nikodym theorem of CStarAlgebras C4.2 for the states `sτ ≤ γ` (the case `H = ℂ`,
whose minimal Stinespring dilation is the GNS triple) gives a positive contraction
`T ∈ π_γ(A)'` with `sτ(a) = ⟪Ω_γ, Tπ_γ(a)Ω_γ⟫`; `P` is the projection onto the closure of
`π_γ(A)T^{1/2}Ω_γ`, the vector `s^{-1/2}T^{1/2}Ω_γ` is cyclic for `Pπ_γ` with vector state `τ`, and
GNS uniqueness (VonNeumannAlgebras V0) gives `U`; the reduced algebra is VonNeumannAlgebras V2's
corner for `P ∈ π_γ(A)'`. *Needs:* §1.4; CStarAlgebras C4.2; VonNeumannAlgebras V0, V2.

API:

- Dominated tracial states are subrepresentations: `π_τ` is unitarily equivalent to a
  subrepresentation of `π_γ` cut down by a projection of `π_γ(A)'`.
- The GNS von Neumann algebra of `τ` is the reduced algebra `π_γ(A)''P`.

**Checks.**

- `A = ℂ²`, `γ = (1/2, 1/2)`, `τ = (1, 0)`, `s = 1/2`: `L²(A,γ) = ℂ²`, `π_γ(A)' ` is the diagonal,
  `P = e₁₁`, and `Pπ_γ = pr₁ = π_τ`.
- `A = ℂ²`, `γ = (1, 0)`, `τ = (0, 1)`: no `s > 0` has `sτ ≤ γ`, and indeed `π_τ = pr₂` is not a
  subrepresentation of `π_γ = pr₁`.
- `A = M_n`, `γ = τ = tr_n`, `s = 1`: `T = 1`, `P = 1`, `U = id`.

### 6.2 Faces

Prove that `AT(A)` and `UAT(A)` are faces of `T(A)` (brown2006, Propositions 3.5.3 and 3.5.4,
lines 1283 and 1291; Kirchberg's observation): if `γ = sτ₁ + (1 − s)τ₂` with `0 < s < 1`,
`τ₁, τ₂ ∈ T(A)` and `γ ∈ AT(A)` (resp. `UAT(A)`), then `τ₁, τ₂ ∈ AT(A)` (resp. `UAT(A)`). For
`AT`, compose the map `Φ` of §4.4 (f) for `γ` with the normal star homomorphism
`x ↦ U(xP)U*` of §6.1 onto `M_{τ_i}` and apply (f) ⇒ (a); for `UAT`, `M_{τ_i}` is a reduced
algebra of the injective `M_γ` by a projection of its commutant, hence normally isomorphic to a
central summand of `M_γ`, and injective (VonNeumannAlgebras V13a), so §5.2 applies. Nonunital
algebras pass through the affine unitization map of §1.3. Whether `AT_QD(A)` is a face is not
asserted (brown2006, line 1269). *Needs:* §1.3, §3.2, §4.4, §5.2, §6.1; VonNeumannAlgebras V2,
V13a.

**Checks.**

- `A = ℂ ⊕ ℂ`: `AT = T` is the whole segment, trivially a face.
- `A = C*_r(F₂) ⊕ ℂ`: every tracial state is `t·(τ′ ∘ pr₁) + (1 − t)·(χ ∘ pr₂)` with
  `t = τ((1, 0))`, `τ′ ∈ T(C*_r(F₂))` and `χ` the identity of `ℂ`. The point `χ ∘ pr₂` is amenable
  (§3.4). If such a state with `t > 0` were amenable, the face property would make `τ′ ∘ pr₁`
  amenable, and its pullback along `x ↦ (x, 0)`, which is `τ′` and has norm one, would be an
  amenable trace of `C*_r(F₂)`, contradicting §7.3. So `AT(A) = {χ ∘ pr₂}`, a proper face
  consisting of one extreme point.
- `A = M_2 ⊕ M_2`: `T(A)` is the segment between `tr_2 ∘ pr₁` and `tr_2 ∘ pr₂`, all of it
  amenable and uniform amenable, the GNS algebras of the endpoints being the two summands `M_2`.

### 6.3 Normalized restriction along star homomorphisms

Prove: for a star homomorphism `ι : A → B` and `τ ∈ AT(B)` (resp. `UAT(B)`) with
`c = ‖τ ∘ ι‖ > 0`, the normalized pullback `c⁻¹·τ ∘ ι` lies in `AT(A)` (resp. `UAT(A)`); it is
faithful when `τ` is faithful and `ι` injective. Route: replacing `(B, τ)` by `(B̃, τ̃)` when `B`
has no unit (§3.2), let `ι̃ : Ã → B` be the unital extension (`Unitization.starLift`); then
`τ ∘ ι̃ ∈ AT(Ã)` by §3.4, and `τ ∘ ι̃ = c·γ̃ + (1 − c)·χ₀` for `γ = c⁻¹τ ∘ ι` and the character
`χ₀(a + λ1) = λ`; for `c = 1`
this is `γ̃` itself, and for `0 < c < 1` the face property (§6.2) gives `γ̃ ∈ AT(Ã)`, hence
`γ ∈ AT(A)` by §3.2. This contains the normalized restriction to a closed ideal (brown2006,
Proposition 3.5.11, line 1452), to hereditary subalgebras and to corners. *Needs:* §1.3,
§3.2, §3.4, §6.2; Mathlib `Unitization.starLift`.

**Checks.**

- The corner `ι : M_3 → M_4` with `τ = tr_4`: `c = 3/4` and `c⁻¹·tr_4 ∘ ι = tr_3`, amenable; the
  decomposition reads `tr_4 ∘ ι̃ = (3/4)·(tr_3)~ + (1/4)·χ₀` on the unitization of `M_3`, which at
  the new unit gives `3/4 + 1/4 = 1` and at `1_{M_3}`, sent to `diag(1, 1, 1, 0)`, gives `3/4`.
- `ι : ℂ → ℂ ⊕ ℂ`, `λ ↦ (0, λ)`, with `τ = pr₁`: `τ ∘ ι = 0`, so `c = 0` and there is nothing to
  normalize; the hypothesis `c > 0` is needed.
- `I = c₀ ⊆ B = c` with `τ(x) = (x_1 + lim x)/2`: `c = 1/2` and `c⁻¹τ|_{c₀} = δ_1`, amenable.

### 6.4 Passage to the image of the GNS representation

Prove (brown2006, Proposition 3.5.8 (1)–(2), line 1338): for `τ ∈ T(A)`, `B = π_τ(A)` and the
faithful trace `τ̇` of §1.2, if `τ ∈ UAT(A)` then `τ̇ ∈ UAT(B)`, since `π_τ̇(B)'' = M_τ`; and if
`τ ∈ AT(A)` and the quotient map `π_τ : A → B` has a c.p.c. splitting `σ : B → A`, then
`τ̇ ∈ AT(B)`: for faithful representations `A ⊆ B(H)` and `B ⊆ B(K)`, extend `σ` to a c.p.c. map
`B(K) → B(H)` by Arveson's theorem and compose with the map `Φ : B(H) → M_τ` of §4.4 (f); the
composite extends `π_τ̇` and is unital by positivity. *Needs:* §1.2, §4.4, §5.2;
VonNeumannAlgebras V13a.

**Checks.**

- `A = C*(F₂)` with its regular trace `τ`: `τ` is amenable (§5.2, Check), `B = C*_r(F₂)` and
  `τ̇ = τ_{F₂}` is not amenable (§7.3); so the splitting hypothesis cannot be dropped, and the
  quotient map `C*(F₂) → C*_r(F₂)` has no c.p.c. splitting.
- `A = C(X)`, `τ = μ` with support `K`: `B = C(K)`, `τ̇ = μ` on `K`, and a c.p.c. splitting exists
  for metrizable `X` (CStarAlgebras C9.7, Check on `C(X)`), consistent with the theorem.
- `A = ℂ ⊕ ℂ`, `τ = pr₁`: `B = ℂ`, the splitting `λ ↦ (λ, 0)` is a star homomorphism and
  `τ̇ = id_ℂ`.

### 6.5 Extension from closed ideals

Prove (brown2006, Proposition 3.5.12, line 1469): for a closed ideal `I ⊆ A` and `τ ∈ AT(I)`
(resp. `UAT(I)`), the unique tracial extension `γ` of §1.3 lies in `AT(A)` (resp. `UAT(A)`). For
`UAT`, `M_γ = π_τ(I)''` because the extension of `π_τ` to `A` takes values in `π_τ(I)''`, and §5.2
applies. For `AT`, extend c.p.c. approximants `φ` of `τ` on `I` to c.p.c. maps `ψ` on `A` by
Arveson's theorem on the unitizations, and estimate, with an approximate unit `e` of `I` such that
`τ(e)` is close to `1`, `‖ψ(ab) − ψ(a)ψ(b)‖₂` by `ψ(a(eb))` and the defects of `eb ∈ I` (§2.2),
using `‖ψ(x − ex)‖₂² ≤ tr ψ(x*(1 − e)²x)`, which is close to `γ((1 − e)xx*(1 − e)) ≤
‖x‖²(1 − τ(e))`; Brown's route through the strict continuity of `Φ` is an alternative.
*Needs:* §1.3, §2.2, §3.2, §5.2; VonNeumannAlgebras V13a (Arveson).

**Checks.**

- `I = K(ℓ²) ⊆ A = B(ℓ²)`: `T(K(ℓ²)) = ∅`, so the statement is vacuous; it does not produce a
  tracial state of `B(ℓ²)`, which has none.
- `I = c₀ ⊆ A = c`, `τ = Σ 2^{-n}δ_n`: `γ = Σ 2^{-n}δ_n` on `c`, amenable as `c` is commutative.
- `I = M_2 ⊕ 0 ⊆ A = M_2 ⊕ ℂ`, `τ = tr_2`: `γ = tr_2 ∘ pr₁`, vanishing on `0 ⊕ ℂ`, amenable, and
  the other tracial states of `A` restrict to non-normalized functionals on `I`.

### Examples

- `C*_r(F₂) ⊕ ℂ`, whose amenable traces form the one-point face `{χ ∘ pr₂}` (§6.2).
- The corner `M_3 ⊆ M_4` and its normalized trace `tr_3` (§6.3).
- `C*(F₂) → C*_r(F₂)`, an amenable trace whose descended trace is not amenable (§6.4).

### Dependencies

CStarAlgebras C4.2; VonNeumannAlgebras V0, V2, V13a; Mathlib `Unitization.starLift`. Within
this roadmap: Layers 1–5.

## Layer 7: Examples: finite-dimensional, commutative, AF and group algebras

### 7.1 Finite-dimensional and commutative algebras

Prove that every tracial state of a finite-dimensional C*-algebra is quasidiagonal and uniform
amenable, with approximants the unital embeddings `ρ_n` of §1.6, which are star homomorphisms with
`‖tr ∘ ρ_n − τ‖ → 0` (brown2006, Lemma 2.5, line 486). Prove that every tracial state of a
commutative C*-algebra is quasidiagonal and uniform amenable: for unital `A ≅ C(Ω)`
(`gelfandStarTransform`), a state is a regular Borel probability measure `μ` (`RealRMK.rieszMeasure`),
which is a weak-star limit of finitely supported measures with rational weights (a partition of
unity `(h_i)` subordinate to a cover on which given functions oscillate by less than `ε`, points
`x_i`, and weights near `μ(h_i)`), and such a measure is `tr_n ∘ φ` for the star homomorphism
`φ(f) = diag(f(x_{i(1)}), …, f(x_{i(n)}))` with repetitions; uniform amenability holds because
commutative algebras are nuclear (§5.3; CStarAlgebras C6.5); nonunital commutative algebras pass
through the unitization (§3.2). *Needs:* §1.6, §3.2–§3.3, §5.3; CStarAlgebras C6.5; Mathlib
`gelfandStarTransform`, `RealRMK.rieszMeasure`, `PartitionOfUnity`.

**Checks.**

- `A = C[0,1]`, `τ` Lebesgue measure: `φ_n(f) = diag(f(1/n), f(2/n), …, f(1)) ∈ M_n` is a unital
  star homomorphism with `tr_n ∘ φ_n(f)` the Riemann sum; for `f(x) = x` it equals
  `(n + 1)/(2n) → 1/2 = ∫f`.
- `A = M_2 ⊕ ℂ`, `τ = (1/2)tr_2 ∘ pr₁ + (1/2)pr₂`: `ρ(x, λ) = diag(x, λ, λ) ∈ M_4` gives
  `tr_4(ρ(x, λ)) = (Tr x + 2λ)/4 = τ(x, λ)` exactly.
- `A = ℂ ⊕ ℂ`: every point of the segment `T(A)` is quasidiagonal; for irrational weights only
  approximately through matrices, exactly through the finite-dimensional approximant `id` of §3.2.

### 7.2 AF and UHF algebras

Prove: a nonzero unital AF algebra `B` (CStarClassification CL2, §2.1, `IsAF`) has a tracial state, as
a weak-star cluster point of state extensions (CStarAlgebras C2.1) of tracial states of the
unital finite-dimensional stages `B_n`; every tracial state of an AF algebra is quasidiagonal and
uniform amenable: for unital `B` with unital stages, `φ_n = ρ_n ∘ Φ_{B_n}` with the
trace-preserving expectation `Φ_{B_n}` and the embedding `ρ_n` of §1.6 for `τ|_{B_n}` is u.c.p.,
exactly multiplicative on `B_n` and therefore norm-asymptotically multiplicative on elements near
`B_n`, and `‖tr ∘ φ_n − τ‖ ≤ ‖tr ∘ ρ_n − τ|_{B_n}‖` (brown2006, §3.4, line 1192, and Lemmas 2.4–2.5);
nonunital AF algebras have AF unitization (CStarClassification CL2, §2.1) and pass through §3.2. A UHF
algebra has a unique tracial state (CStarClassification CL3, §3.5), which is faithful because the
algebra is simple (§1.2), quasidiagonal and uniform amenable. *Needs:* §1.2, §1.6, §3.2;
CStarAlgebras C2.1; CStarClassification CL2 (§2.1), CL3 (§3.5); VonNeumannAlgebras V0 (weak-star
compactness of states).

**Checks.**

- The CAR algebra `M_{2^∞}` with stages `M_{2^n}`: the unique trace has `τ(e₁₁ ⊗ 1 ⊗ ⋯) = 1/2`,
  `Φ_{M_{2^n}}` is the slice by the tail trace, `ρ_n = id`, and `tr_{2^n} ∘ φ_n = τ` exactly.
- `K(ℓ²)` is AF and nonunital with `T(K(ℓ²)) = ∅` (§5.3, Check): the existence statement needs a
  unit, and the approximation statement is vacuous there.
- `C(Cantor set)` is AF and commutative: its tracial states are the probability measures, all
  quasidiagonal, consistent with §7.1; the Bernoulli product measure is the restriction of the
  CAR trace to the diagonal subalgebra.

### 7.3 Reduced group C*-algebras

For a discrete group `Γ` (no countability), with `C*_r(Γ)` and its expectation from
OperatorAlgebraDynamics D2, prove that the canonical trace `τ_Γ(x) = ⟪δ_e, xδ_e⟫` is a faithful
tracial state: it is D2's faithful expectation for the coefficient algebra `ℂ`, and
`τ_Γ(λ_gλ_h) = τ_Γ(λ_hλ_g)` because `gh = e` iff `hg = e`, extended by linearity and continuity;
its GNS representation is the regular representation on `ℓ²(Γ)` (`λ_g ↦ δ_g`) and `M_{τ_Γ}` is
the group von Neumann algebra `L(Γ) = λ(Γ)''`. Prove (brown2006, Proposition 4.1.1, line 1515, and
Corollary 4.1.2, line 1539) that the following are equivalent: (i) `Γ` is amenable (AmenableGroups
`Amenable`); (ii) `T(C*_r(Γ)) = AT(C*_r(Γ)) = UAT(C*_r(Γ))`; (iii) `AT(C*_r(Γ)) ≠ ∅`; (iv)
`τ_Γ ∈ AT(C*_r(Γ))`; (v) `τ_Γ ∈ UAT(C*_r(Γ))`; (vi) `L(Γ)` is injective. Routes: (i) ⇒ (ii)
because `C*_r(Γ) = ℂ ⋊_r Γ` is nuclear for amenable `Γ` (OperatorAlgebraDynamics D2) and §5.3;
(ii) ⇒ (v) ⇒ (iv) ⇒ (iii) since `τ_Γ ∈ T`; (iii) ⇒ (i): a hypertrace `ψ` for the defining
representation (§4.4 (b)) restricted to multiplication operators `M_f`, `f` bounded and real, is a
mean with `ψ(M_{L_gf}) = ψ(λ_gM_fλ_g*) = ψ(M_f)` (AmenableGroups Layer 2); (v) ⇔ (vi) by §5.2.
Deduce that `C*_r(F₂)` has no amenable trace (AmenableGroups Layer 3) and admits no faithful
amenable trace. *Needs:* §1.2, §4.4, §5.2–§5.3; OperatorAlgebraDynamics D2; AmenableGroups Layers
2–3; Mathlib `FreeGroup`.

API:

- `τ_Γ` is a faithful tracial state with `τ_Γ(λ_g) = 1` if `g = e` and `0` otherwise, and its GNS
  data are `(ℓ²(Γ), δ_e, λ)`.
- The six equivalent conditions; in particular amenability of `Γ` is detected by any one trace of
  `C*_r(Γ)`.

**Checks.**

- `Γ = ℤ`: `C*_r(ℤ)` is commutative and generated by the unitary `λ_1` with spectrum `𝕋`, hence
  `≅ C(𝕋)` with `λ_1 ↦ z`, and `τ_ℤ(λ_n) = 1` for `n = 0`, `0` otherwise, `= ∫z^n dm`: `τ_ℤ` is
  normalized Lebesgue measure, amenable and quasidiagonal (§7.1).
- `Γ` finite: `C*_r(Γ) = ℂ[Γ]` is finite-dimensional, `τ_Γ = |Γ|⁻¹Tr` on `ℓ²(Γ)` (since
  `Tr(λ_g) = |Γ|` for `g = e` and `0` otherwise), and every trace is amenable (§7.1), consistent
  with amenability of finite groups.
- `Γ = F₂`: `AT(C*_r(F₂)) = ∅`, in particular `τ_{F₂}` is a faithful tracial state that is not
  amenable; the translation convention `λ_gM_fλ_g* = M_{L_gf}` is the one under which the
  restricted hypertrace is left invariant in AmenableGroups' sense.
- Wrong vector: for `g ≠ e` the functional `x ↦ ⟪δ_g, xδ_e⟫` takes the value `1` at `λ_g` and `0`
  at `1`, so it is not positive; the canonical trace is the diagonal coefficient at `δ_e`.

### Examples

- `C[0,1]` with Riemann-sum approximants (§7.1); `M_2 ⊕ ℂ` with an exact rational embedding (§7.1).
- The CAR algebra with exact trace recovery at every stage (§7.2).
- `C*_r(ℤ) ≅ C(𝕋)` with Lebesgue trace, and `C*_r(F₂)` with `AT = ∅` (§7.3).

### Dependencies

CStarAlgebras C2.1, C6.5; CStarClassification CL2 (§2.1), CL3 (§3.5); OperatorAlgebraDynamics D2;
AmenableGroups Layers 2–3; VonNeumannAlgebras V0; Mathlib `gelfandStarTransform`,
`RealRMK.rieszMeasure`, `PartitionOfUnity`, `FreeGroup`. Within this roadmap: Layers 1–6.

## Layer 8: Quasidiagonality and subalgebras of simple AF algebras

### 8.1 Quasidiagonal traces on quasidiagonal algebras

Prove (brown2006, Proposition 3.3.2, first part, lines 1097–1121; tikuisis-white-winter2017,
Proposition 1.4, line 418): if `A` is a nonzero unital C*-algebra that is quasidiagonal in the sense
of CStarAlgebras C8.1 (`IsQuasidiagonal`), then `AT_QD(A) ≠ ∅`; more precisely every weak-star
cluster point of the normalized traces of compressions of a faithful quasidiagonal
representation `π` is a quasidiagonal tracial state. Route: for finite `F`, `ε` and a unit vector
`ξ ∈ π(1)H`, a finite-rank projection `P` almost commuting with `π(F) ∪ {π(1)}` and almost fixing
`ξ` (`IsQuasidiagonalSet`) gives a compression that is norm-almost multiplicative on `F` (§2.3)
with `Pπ(1)P` close to a nonzero projection; the norm unitalization of §2.1 makes it u.c.p.; the
cluster point is tracial because `|tr φ(ab) − tr φ(ba)| ≤ 2 max(‖φ(ab) − φ(a)φ(b)‖, ‖φ(ba) − φ(b)φ(a)‖)`,
and quasidiagonal by construction. For separable `A`, Voiculescu's matrix maps of CStarAlgebras
C8.3 give sequences. *Needs:* §2.1, §2.3, §3.2–§3.3; CStarAlgebras C8.1, C8.3; VonNeumannAlgebras
V0 (weak-star compactness).

**Checks.**

- `A = C(𝕋)` (quasidiagonal, CStarAlgebras C8.3): the root-of-unity approximants have trace
  cluster point Lebesgue measure, a quasidiagonal trace.
- The suspension `SO₂ = C₀((0,1), O₂)` is quasidiagonal (a subalgebra of the cone `CO₂`,
  CStarAlgebras C8.3 and C9.1) and nonunital, and has no tracial state, since for `f ≥ 0` the
  functional `x ↦ τ(f ⊗ x)` would be a tracial positive functional on `O₂`, where
  `s₁s₁* + s₂s₂* = 1` forces it to vanish (brown2006, line 1120): the unit is needed.
- The Toeplitz algebra is not quasidiagonal (CStarAlgebras C8.3, Check) but has quasidiagonal
  traces, those lifted from `C(𝕋)` along the symbol map (§3.4); the converse of the theorem fails.

### 8.2 States of quasidiagonal algebras

Prove (brown2006, Proposition 4.3.7, line 1952): if `A` is a nonzero unital quasidiagonal
C*-algebra, then every state `σ` of `A` is a weak-star limit of `σ_i ∘ φ_i` with `φ_i` u.c.p. maps
into `M_{k_i}` that are norm-asymptotically multiplicative and `σ_i` states of `M_{k_i}`; for
separable `A` the net is a sequence. Route: an asymptotically multiplicative, asymptotically
isometric net (CStarAlgebras C8.3, or the compressions of §8.1) makes the states `σ ∘ φ_i` norming
for the self-adjoint part, §1.7 gives density of their convex hull, and convex combinations are
realized by block sums of late terms, which stay asymptotically multiplicative. *Needs:* §1.7,
§2.1, §8.1; CStarAlgebras C8.3.

**Checks.**

- `A = ℂ²`: every state `(t, 1 − t)` equals `σ ∘ id` with `σ = (t, 1 − t)` on `ℂ² ⊆ M_2`.
- `A = C(𝕋)`, `σ = δ_1`: `σ = δ_{e₁} ∘ φ_n` exactly for the root-of-unity evaluations `φ_n`, whose
  first coordinate is evaluation at `1`.
- States cannot be replaced by the traces `tr_{k_i}`: there is an exact residually finite-dimensional,
  hence quasidiagonal, C*-algebra with a non-amenable tracial state (brown2006, Corollary 4.3.8,
  line 1969), which is then not of the form `lim tr ∘ φ_i`.

### 8.3 Faithful quasidiagonal traces

Prove (brown2006, proof of Proposition 4.1.3, lines 1554–1566; tikuisis-white-winter2017,
Proposition 1.4, line 431, and Remark 1.5 (iii), line 461): if `A` is separable and admits a
faithful quasidiagonal trace `τ`, then `A` is quasidiagonal (`IsQuasidiagonal`). Route: a sequence
of c.p.c. norm-asymptotically multiplicative approximants `φ_n` (§3.2) induces a star homomorphism
`A → ∏_n M_{k_n} / ⊕_n M_{k_n}` (CStarAlgebras C5.4) whose kernel lies in `N_τ = 0`, because
`τ(a*a) = lim tr φ_n(a*a) ≤ limsup ‖φ_n(a*a)‖`; it is therefore isometric, `‖a‖ = limsup ‖φ_n(a)‖`,
and passing to block sums of subsequences (brown2006, footnote 2, line 1577) gives the limit form of
Voiculescu's criterion, CStarAlgebras C8.3, in its nonunital c.p.c. version. In particular, for a
countable discrete group `Γ`, if `τ_Γ` is quasidiagonal then `C*_r(Γ)` is quasidiagonal
(brown2006, Proposition 4.1.3, line 1551). *Needs:* §1.2, §3.2, §7.3; CStarAlgebras C5.4, C8.3.

**Checks.**

- `A = C(𝕋)` with Lebesgue measure: a faithful quasidiagonal trace, and `C(𝕋)` is quasidiagonal.
- The Toeplitz algebra: its quasidiagonal traces are not faithful (§1.2) and it is not
  quasidiagonal, so faithfulness cannot be dropped.
- `A = ℂ ⊕ ℂ`, `τ = (1/2, 1/2)`: faithful and quasidiagonal, with the faithful star homomorphism
  `(a, b) ↦ diag(a, b)` into `M_2` as a constant approximant, so `‖a‖ = ‖φ_n(a)‖` exactly.

### 8.4 Rosenberg's observation

Prove (brown2006, lines 1541–1549): if `Γ` is a discrete group and `C*_r(Γ)` is quasidiagonal, then
`Γ` is amenable: §8.1 gives a quasidiagonal, hence amenable, trace and §7.3 (iii) ⇒ (i) applies.
*Needs:* §3.3, §7.3, §8.1.

**Checks.**

- `Γ = ℤ`: `C*_r(ℤ) ≅ C(𝕋)` is quasidiagonal and `ℤ` is amenable.
- `Γ = F₂`: `F₂` is not amenable, so `C*_r(F₂)` is not quasidiagonal, although it is stably finite
  as a C*-algebra with a faithful tracial state (brown2006, lines 340–341).
- `Γ` finite: `C*_r(Γ)` is finite-dimensional, hence quasidiagonal (CStarAlgebras C8.3), and `Γ` is
  amenable.

### 8.5 Subalgebras of simple unital AF algebras

Prove (schafhauser2020, Introduction, lines 69–70, the necessity half of Theorem A, line 75): let
`B` be a simple unital AF algebra and `A ⊆ B` a nonzero C*-subalgebra. Then `A` is separable and
exact, and for every `τ_B ∈ T(B)` (which exists, §7.2) the normalized restriction
`c⁻¹·τ_B|_A`, `c = ‖τ_B|_A‖ > 0`, is a faithful uniform amenable, hence amenable, trace of `A`; in
particular `A` admits a faithful amenable trace. If `ι : A → B` is an injective star homomorphism
and `τ_B ∘ ι` is a state, then `τ_B ∘ ι` itself is a faithful amenable trace, the trace-preserving
form. Routes: `B` is the closure of a countable increasing union of finite-dimensional subspaces,
hence separable, and so is `A`; `B` is nuclear (CStarAlgebras C6.5), hence exact, and exactness
passes to `A` (CStarAlgebras C7.1); `τ_B` is faithful by simplicity (§1.2), so `c > 0`; `τ_B` is
uniform amenable (§7.2) and §6.3 gives the normalized restriction, §3.4 the trace-preserving form.
*Needs:* §1.2, §3.4, §6.3, §7.2; CStarAlgebras C6.5, C7.1; CStarClassification CL2 (§2.1).

**Checks.**

- `A = M_3` embedded as a corner of `M_4 ⊆ CAR`: `τ_CAR|_{M_3} = (3/4)tr_3`, and the normalized
  restriction is `tr_3`, faithful and amenable; the unnormalized restriction is not a state.
- `A = C(𝕋)` embedded in `C({0,1}^ℕ) ⊆ CAR` through the binary-expansion surjection
  `{0,1}^ℕ → 𝕋`: the restricted CAR trace is the image of the Bernoulli product measure, which is
  Lebesgue measure, faithful and amenable.
- `A = C*_r(F₂)` is separable, exact (brown2006, line 1971) and has a faithful tracial state, but has
  no amenable trace (§7.3); hence it embeds in no simple unital AF algebra. `A = 0` has no tracial
  state, so the theorem requires `A ≠ 0`.

### Examples

- `SO₂`, quasidiagonal without tracial states (§8.1); the Toeplitz algebra, with quasidiagonal
  traces and not quasidiagonal (§8.1, §8.3).
- `M_3 ⊆ CAR` and `C(𝕋) ⊆ CAR` with their normalized restricted traces (§8.5).
- `C*_r(F₂)`, not quasidiagonal and not AF-embeddable (§8.4–§8.5).

### Dependencies

CStarAlgebras C5.4, C6.5, C7.1, C8.1, C8.3, C9.1; CStarClassification CL2 (§2.1); VonNeumannAlgebras V0.
Within this roadmap: Layers 1–7.

## Downstream consumers

- **CStarClassification, Part II (AF embeddings).** Schafhauser's theorem that a separable exact
  C*-algebra satisfying the UCT with a faithful amenable trace embeds trace-preservingly into a
  simple unital AF algebra with unique trace (schafhauser2020, Theorem A, line 75) is stated with
  §3.1's faithful amenable trace, and its necessity half is §8.5.
- **A quasidiagonality roadmap** proving that every faithful trace on a separable nuclear
  C*-algebra satisfying the UCT is quasidiagonal (tikuisis-white-winter2017, Theorem A, line 53)
  consumes §3.1's quasidiagonal traces, §5.3 and §8.3.
- **FactorRigidity** can consume §4.6 and §5.2 to pass from amenable and uniform amenable traces to
  injective tracial von Neumann algebras in its approximation layers.
- **TemperleyLiebOperatorAlgebras** can consume Layer 1 and §7.2 for the tracial states of its AF
  C*-towers, all of which are quasidiagonal and uniform amenable.
- **NoncommutativeIntegration** can consume Layer 1's tracial GNS data for tracial `L^p` spaces of
  C*-algebras.
- **OperatorAlgebraDynamics, Part II** and **FreeProbability, Part II** can consume Layer 1 for
  the tracial state spaces they use as hypotheses (the β = 0 KMS states, tracial C*-probability
  spaces) and §7.3 for group algebras; the base roadmaps are suppliers or independent of this one
  and do not consume it.

## References

- N. P. Brown, *Invariant means and finite representation theory of C*-algebras*, Mem. Amer. Math.
  Soc. 184 (2006), no. 865; arXiv:math/0304009v2, whose numbering is the one cited (`brown2006`):
  Chapter 2 (Lemmas 2.1, 2.4, 2.5, 2.7, 2.8, Theorem 2.2), Definitions 3.1.1, 3.2.1, 3.3.1,
  Proposition 3.1.2, Proposition 3.1.3, Lemmas 3.1.4–3.1.5, Theorems 3.1.6, 3.1.7, 3.2.2,
  Proposition 3.3.2, Lemma 3.5.2, Propositions 3.5.1, 3.5.3–3.5.8, 3.5.10–3.5.12, Proposition 4.1.1,
  Corollary 4.1.2, Proposition 4.1.3, Propositions 4.1.4, 4.1.6, Remark 4.1.7, Theorem 4.2.1,
  Corollaries 4.3.6, 4.3.8, Proposition 4.3.7.
- C. Schafhauser, *Subalgebras of simple AF-algebras*, Ann. of Math. 192 (2020), 309–352;
  arXiv:1807.07381v2 (`schafhauser2020`): Introduction and Theorem A.
- A. Tikuisis, S. White, W. Winter, *Quasidiagonality of nuclear C*-algebras*, Ann. of Math. 185
  (2017), 229–284; arXiv:1509.08318v2 (`tikuisis-white-winter2017`): §1, Definition 1.2,
  Proposition 1.4, Remark 1.5, Theorem A.
- N. P. Brown, N. Ozawa, *C*-Algebras and Finite-Dimensional Approximations*, Graduate Studies in
  Mathematics 88, AMS 2008, doi:10.1090/gsm/088 (`brown-ozawa2008`): Ch. 6, amenable traces in net
  form.
- E. Kirchberg, *On non-semisplit extensions, tensor products and exactness of group
  C*-algebras*, Invent. Math. 112 (1993), 449–489, doi:10.1007/BF01232444 (`kirchberg1993`): §3,
  amenable traces on exact algebras (cited by locator).
- A. Connes, *Classification of injective factors. Cases II₁, II∞, IIIλ, λ ≠ 1*, Ann. of Math. 104
  (1976), 73–115, doi:10.2307/1971057 (`connes1976`): Theorem 5.1, the origin of hypertraces
  (background).
- G. K. Pedersen, *C*-Algebras and Their Automorphism Groups*, 2nd ed., 2018 (`pedersen2018`):
  Ch. 3, states and the GNS construction (background).
- V. Paulsen, *Completely Bounded Maps and Operator Algebras*, Cambridge 2002,
  doi:10.1017/CBO9780511546631 (`paulsen2002`): Ch. 3, the Schwarz inequality (background).
