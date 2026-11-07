# Roadmap: compressible Euler equations, symmetric hyperbolic systems and maximal developments

**Summary.** Build the classical theory of the compressible Euler equations of a perfect fluid
on the Galilean spacetime `𝔐 = ℝ_t × E`, `E = ℝⁿ`, `n ≥ 1`, with the partially periodic
carriers `ℝ × (ℝ/2πℤ)^{n−1}` treated as periodic lifts. From Mathlib's calculus, measure theory
and ODE theory and Tau Ceti's whole-space Sobolev spaces, the roadmap constructs: the barotropic
and the full (entropy-carrying) Euler systems with a general smooth equation of state; a general
carrier for first-order quasilinear symmetric hyperbolic systems, with the Euler systems as
instances through explicit symmetrisers; the acoustical metric of a state, its sound cones and
the locally Lipschitz causal curves of a continuous sound-cone field; future domains of
dependence; the `Hᵏ` calculus on partially periodic carriers (Gagliardo–Nirenberg, Moser
product, commutator and composition estimates, Friedrichs mollifiers); the Friedrichs energy
method for linear symmetric hyperbolic systems, including weighted energies with
characteristic-monotone Lipschitz weights; local uniqueness on lens-shaped domains and
uniqueness on domains of dependence; local well-posedness in `Hᵏ`, `k > n/2 + 1`, with
continuous dependence and the continuation criterion; and the theory of developments of
Cauchy data. The end theorems are the local well-posedness of compressible Euler for
non-vacuum `Hᵏ` data, uniqueness on lens-shaped domains, the uniqueness, compatibility and
existence theory of developments (every development lies below a maximal one; developments
that extend a common classical solution are unique), and the nullity of the regular boundary
of every maximal development. The classical claim that all developments of the same data agree
on their common domain is false for compressible Euler on a fixed Galilean background; the
roadmap states the correct uniqueness theorems and records an explicit counterexample.

## Scope and ownership

This roadmap owns:

- the equations of state with positive sound speed, the barotropic and the full compressible
  Euler systems in material and conservative form, their Galilean invariance and the
  constant-entropy reduction;
- quasilinear symmetric hyperbolic systems on an open set of states as a carrier, their
  principal symbol, round cones dominating the characteristic speeds, and the symmetrisers that
  make both Euler systems instances;
- the acoustical quadratic form `g = −c² dt² + Σᵢ (dxⁱ − vⁱ dt)²` of a state, stated concretely
  on `ℝ × E`, its inverse, determinant, signature, causal character of vectors and covectors and
  the identification of its null covectors with the characteristic covectors of the Euler
  symbol; sound-cone fields, their locally Lipschitz causal curves parametrised by time,
  past-inextendibility, causal pasts and future domains of dependence on relatively open
  subsets of a half-space, with the limit-curve compactness that makes them work;
- Sobolev spaces `Hᵏ_Λ` of Λ-periodic functions for a discrete period group `Λ ⊆ E`, their
  embeddings, the Gagliardo–Nirenberg interpolation inequality, Moser estimates and Friedrichs
  mollifiers;
- energy identities and estimates for linear symmetric hyperbolic systems, linear existence in
  `Hᵏ_Λ`, local well-posedness of the quasilinear Cauchy problem in `Hᵏ_Λ`, uniformly local
  data, and the Euler instances;
- local uniqueness on lens-shaped domains and uniqueness on domains of dependence for
  quasilinear symmetric hyperbolic systems;
- initial data sets with an open data domain, developments, their order and compatibility, the
  maximal common development, maximal developments, the largest development inside a given
  solution, and the null character of the regular part of the boundary of a maximal development.

Boundaries:

- **Mathlib and Tau Ceti** supply everything below this roadmap. The whole-space identification
  `Hᵏ = Wᵏ'²` and the embedding `Hᵏ(ℝⁿ) ⊆ C₀(ℝⁿ)` for `2k > n`, which the PDE roadmap on main
  lists among its §1.3–§1.4 material, are already pinned Tau Ceti declarations and are cited
  from Tau Ceti directly; nothing else of the PDE roadmap is consumed. The PDE roadmap's scope
  is scalar elliptic and parabolic theory and excludes systems; it plans no hyperbolic system,
  no Moser estimate and no periodic Sobolev space, so nothing here duplicates it.
- **Lorentzian geometry of a general metric** (Lorentzian scalar products on abstract vector
  spaces, metrics of finite regularity on manifolds with corners, time orientations, null
  hypersurfaces, null generators and geodesics of `C^{1,1}` metrics) is not stated here. This
  roadmap only uses the one explicit quadratic form above on `ℝ × E` and owns its concrete
  causal theory on the Galilean carrier. A general Lorentzian roadmap, when it exists, records
  the acoustical form as an example and identifies its general notions with the concrete ones
  here; that identification is its business, in its own direction.
- **Characteristic initial data** (data on `S₀ ∪ C` with `C` a null hypersurface, its
  constraint and compatibility conditions), acoustical eikonal functions, the ruling of the
  characteristic boundary by null geodesics issuing from the edge of the data, and shock
  formation are not part of this roadmap; they are the subject of "Compressible Euler
  equations, Part II", which consumes this roadmap together with a Lorentzian roadmap for
  `C^{1,1}` geodesics. This roadmap stops at the nullity of the regular boundary.
- **Fractional orders.** Well-posedness is stated for integer Sobolev orders `k > n/2 + 1`,
  which is the generality of the cited theorems; real orders `s > n/2 + 1` need the
  Kato–Ponce commutator estimates in Besov form, which belong to a later Part II consuming the
  PDE roadmap's Layer 7 paraproducts.
- **Incompressible flows** (Leray projection, incompressible Euler and Navier–Stokes) belong to
  the IncompressibleFlows roadmap, which plans integer- and real-order Sobolev spaces on the full
  torus `UnitAddTorus d` (its Layer 0). The spaces `Hᵏ_Λ` here are for discrete period groups of
  any rank; when `Λ` has full rank they are the integer-order, `p = 2` torus spaces of that
  roadmap, nothing here uses that case, and the agreement is a Check of §4.1. For `n = 1` and a
  full-rank `Λ = Tℤ`, `Hᵏ_Λ` is likewise Tau Ceti's `TauCeti.CircleSobolev k ℂ`, the Fourier-side
  Sobolev space of `AddCircle T`, restricted to real functions and up to norm equivalence; this
  case is not used here either, and the norm comparison is a Check of §4.1.
- **Flat finite propagation for Klein–Gordon** is RelativisticQuantumFieldTheory RQFT1; it is a
  second-order scalar statement on Minkowski space and is neither consumed nor restated.
- Vacuum boundaries `ρ = 0`, weak and entropy solutions, Riemann solvers and numerical schemes
  are outside the roadmap.

## Conventions

**Carrier.** `E` is `EuclideanSpace ℝ (Fin n)` with `n ≥ 1`; spacetime is `𝔐 = ℝ × E` with
points `(t, x)`; `Σ_t = {t} × E`; `H_{t₀} = [t₀, ∞) × E` is the closed future half-space and
`[t₀, t₁) × E` a slab. Spatial derivatives are `∂ᵢ`, the gradient `∇`, the divergence `div`. A
*period group* is a discrete additive subgroup `Λ ⊆ E`; a set `D ⊆ 𝔐` is Λ-invariant when
`(t, x + λ) ∈ D` for `(t, x) ∈ D`, `λ ∈ Λ`, and a function is Λ-periodic when it is invariant
under these translations. `Λ = 0` is the Euclidean carrier `Σ = ℝⁿ`;
`Λ_cyl = {0} × (2πℤ)^{n−1}` is the cylinder: a statement about `ℝ × (ℝ/2πℤ)^{n−1}` (as in
Abbrescia–Speck and Luk–Speck) is, by definition here, the statement about Λ_cyl-periodic lifts,
and a curve on the cylinder is identified with its lifts.

**Domains and regularity.** A *domain* in this roadmap is a subset `D ⊆ H_{t₀}` that is
relatively open in `H_{t₀}`; data domains are open subsets `S ⊆ E`, placed at `{t₀} × S`.
Closed domains are never used: with a closed domain the domain-of-dependence condition does not
see data entering from outside (Check in §3.3). A map on a domain `D` is `C¹` when it is
`ContDiffOn ℝ 1` on `D` in Mathlib's sense; derivatives are `fderivWithin` on `D`, which is a
uniquely differentiable set because `H_{t₀}` is convex with nonempty interior. `C¹` up to
`t = t₀` is therefore part of every regularity hypothesis.

**States.** A barotropic state is `(ρ, v)` with `ρ` in the open interval `I ⊆ (0, ∞)` of an
equation of state; a full state is `(ρ, v, s)` with `(ρ, s)` in the open set `𝒪 ⊆ (0, ∞) × ℝ` of
an equation of state. The material derivative is `B = ∂_t + v·∇`. The sound speed is
`c = √(∂_ρ p) > 0`.

**Signature and time orientation.** The acoustical form has signature `(−, +, …, +)`. Vectors
are `(τ, ξ) ∈ ℝ × E`, covectors `ζ = (ζ₀, ζ')` paired by `ζ(τ, ξ) = ζ₀τ + ζ'·ξ`. Future means
increasing `t`. Witness, `n = 1`, `c = 1`, `v = 0`: `(1, 1/2)` has `g = −3/4` (timelike, future),
`(1, 1)` has `g = 0` (null), `(1, 2)` has `g = 3` (spacelike), and `g((1, 0), (1, 1/2)) = −1 < 0`.
For the covector `dt`, `g⁻¹(dt, dt) = −c⁻²`, so with `c = 2` it is `−1/4`: every slice `Σ_t` is
spacelike. Luk–Speck normalise the acoustical metric as `c⁻² g`; with `c = 2`, `v = 0` and
`X = (1, 0)` their value is `−1` and ours `−4`. Causal character is unchanged by this conformal
factor, and nothing here depends on it.

**Sobolev orders and norms.** Sobolev orders are natural numbers; `k > n/2 + 1` means
`2k > n + 2`. `Hᵏ_Λ` norms are the `ℓ²` sums over multi-indices of order at most `k` of the
`L²` norms over a fundamental domain (§4.1). Matrices are real; "positive definite" and
"positive semidefinite" are Mathlib's `Matrix.PosDef` and `Matrix.PosSemidef`; `M ≤ M'` is the
Loewner order.

**Symmetric hyperbolic systems.** A system is `A⁰(U)∂_tU + Σᵢ Aⁱ(U)∂ᵢU = F(U)` with values in
an open `G ⊆ ℝ^N`; its symbol at a covector `ζ` is `σ(U; ζ) = ζ₀A⁰(U) + Σᵢ ζᵢAⁱ(U)`. A round
cone `(c, w)` with `c > 0`, `w ∈ E` *dominates* the system at `U` when `σ(U; ζ)` is positive
semidefinite for every `ζ` with `ζ₀ + w·ζ' ≥ c|ζ'|`. The sign is fixed by the scalar transport
equation `∂_t u + a ∂_x u = 0`: its symbol is `ζ₀ + aζ₁`, and the cone `(c, a)` dominates for
every `c > 0`, while `(1, 0)` does not dominate when `a = 3` (take `ζ = (1, −1)`: the cone
condition `1 ≥ 1` holds and the symbol is `1 − 3 = −2`).

## Exact supplier contracts

### From Mathlib

- `ContDiffOn`, `fderivWithin`, `UniqueDiffOn` and the convexity criterion for unique
  differentiability: the meaning of `C¹` on a domain and of the equations at `t = t₀`.
- `Matrix.PosDef`, `Matrix.PosSemidef` (`Mathlib/LinearAlgebra/Matrix/PosDef.lean:176,62`):
  the definiteness conditions on `A⁰` and on the symbol.
- `QuadraticForm.equivalent_signType_weighted_sum_squared`
  (`Mathlib/LinearAlgebra/QuadraticForm/Real.lean:78`): diagonalisation of a real quadratic
  form, used for the signature statement of §3.1.
- `LipschitzOnWith`, `LocallyLipschitzOn`, Rademacher's theorem
  `LipschitzOnWith.ae_differentiableWithinAt_of_mem`
  (`Mathlib/Analysis/Calculus/Rademacher.lean:362`), `LipschitzOnWith.absolutelyContinuousOnInterval`
  (`Mathlib/MeasureTheory/Function/AbsolutelyContinuous.lean:310`) and the fundamental theorem of
  calculus `AbsolutelyContinuousOnInterval.integral_deriv_eq_sub`
  (`Mathlib/MeasureTheory/Integral/IntervalIntegral/AbsolutelyContinuousFun.lean:227`, scalar
  valued; applied coordinatewise): the analysis of locally Lipschitz causal curves in §3.2.
- `BoundedContinuousFunction.arzela_ascoli`
  (`Mathlib/Topology/ContinuousMap/Bounded/ArzelaAscoli.lean:113`): compactness of families of
  causal curves.
- `zorn_le_nonempty₀` (`Mathlib/Order/Zorn.lean:126`): existence of maximal developments and of
  past-inextendible extensions.
- `IsPicardLindelof` and `IsPicardLindelof.exists_eq_forall_mem_Icc_hasDerivWithinAt`
  (`Mathlib/Analysis/ODE/PicardLindelof.lean:80`, `Mathlib/Analysis/ODE/ExistUnique.lean:57`),
  stated for a complete normed space; `ODE_solution_unique_of_mem_Icc`
  (`Mathlib/Analysis/ODE/ExistUnique.lean:252`): the regularised ODE of §5.4 in `Hᵏ_Λ`, and
  material curves of a `C¹` velocity in §1.3.
- `TemperedDistribution.MemSobolev` (`Mathlib/Analysis/Distribution/Sobolev.lean:153`), the
  Bessel-potential scale on `E`, used only through the Tau Ceti comparison below.
- `MeasureTheory.convolution`, `ContDiffBump`, the Bochner integral, `Lp`, Hölder's and
  Minkowski's inequalities, dominated convergence and the Lebesgue differentiation theorem.

Mathlib has no symmetric hyperbolic system, no Moser estimate, no Gagliardo–Nirenberg
interpolation inequality between `L^∞` and `Hᵏ`, no periodic or partially periodic Sobolev space
on `E`, no Lorentzian quadratic form with a time orientation and no causal curve.

### From Tau Ceti

- `TauCeti.Wkp` (`TauCeti/Analysis/Sobolev/Wkp/Basic.lean:145`), the weak-derivative Sobolev
  space `W^{k,p}(Ω)` of real functions, used with `Ω = ⊤`, `p = 2`, Lebesgue measure; and
  `TauCeti.HasWeakFDerivOn` (`TauCeti/Analysis/Sobolev/WeakDeriv/Basic.lean:251`), the weak
  derivative on an open set.
- `MeasureTheory.Lp.memSobolev_natCast_iff_exists_wkp_value_eq`
  (`TauCeti/Analysis/Sobolev/BesselPotential/Basic.lean:133`): for `1 < p < ∞` and every
  natural `k`, a real `Lᵖ` function is in Mathlib's `MemSobolev k p` exactly when it is the
  value of an element of `TauCeti.Wkp volume ⊤ p k`.
- `TemperedDistribution.MemSobolev.exists_zeroAtInftyContinuousMap_ae_eq` and
  `TauCeti.Wkp.toZeroAtInfty` (`TauCeti/Analysis/Sobolev/BesselPotential/Embedding.lean:81,194`):
  for `2k > n` every element of `W^{k,2}(ℝⁿ)` has a unique representative in `C₀(ℝⁿ)`, and the
  representative map is a bounded linear map. Only continuity, vanishing at infinity and the sup
  bound are used; no Hölder modulus is assumed.
- `TauCeti.Wkp.dense_contDiff_representatives`
  (`TauCeti/Analysis/Sobolev/Wkp/SmoothDensity.lean:92`): density of smooth functions in
  `W^{k,p}(ℝⁿ)` for finite `p`.
- `TauCeti.Wkp.normedBumpL` with `TauCeti.Wkp.norm_normedBumpL_le_one`,
  `TauCeti.Wkp.lowerOrder_normedBumpL`, `TauCeti.Wkp.iteratedGradient_normedBumpL` and
  `TauCeti.Wkp.tendsto_normedBumpL`
  (`TauCeti/Analysis/Sobolev/Wkp/ApproximateIdentity.lean:52,67,107,118,132`): mollification of
  `W^{k,p}(ℝⁿ)`, `p < ∞`, by a normalised smooth bump (`ContDiffBump`, radial, hence even and
  nonnegative) as a contraction in the `Wkp` norm, commuting with the lower-order projection and
  with the iterated gradient, and converging strongly to the identity as the bump radii tend to
  `0`; `TauCeti.W1p.normedBumpL` (`TauCeti/Analysis/Sobolev/W1p/Mollification.lean:87`) is the
  order-one case. These are the `Λ = 0` statements of §4.4.
- `TauCeti.HasWeakLineDerivOn.contDiffOn_smul`, `TauCeti.HasWeakFDerivOn.contDiffOn_smul` and
  `TauCeti.HasWeakLineDerivOn.lipschitzOnWith_smul`
  (`TauCeti/Analysis/Sobolev/Leibniz.lean:112,168,317`): the Leibniz rule for the weak derivative
  of `ψu` with `ψ` smooth, or Lipschitz, on the open set and `u` weakly differentiable; the
  product rule of §4.3 for two Sobolev factors is obtained from it by density.
- `TauCeti.CircleSobolev s E` (`TauCeti/Analysis/Sobolev/Circle/Basic.lean:197`), the
  Fourier-side Sobolev space of the circle with norm squared `Σ_m (1 + |m|)^{2s}‖c_m‖²`
  (`TauCeti.CircleSobolev.norm_sq_eq_tsum`, line 375), identified at `s = 0` with
  `L²(AddCircle T)` for the probability Haar measure by `TauCeti.CircleSobolev.toLpₗᵢ`
  (`TauCeti/Analysis/Sobolev/Circle/Lp.lean:59`): for `n = 1`, `Λ = Tℤ` and integer `s = k` this
  is `Hᵏ_Λ` (real functions, complexified) up to norm equivalence; nothing here uses it, and the
  norm comparison is a Check of §4.1.
- `TauCeti.le_mul_exp_of_le_add_mul_integral` (`TauCeti/Analysis/ODE/Gronwall.lean:59`): the
  integral Grönwall inequality `φ(t) ≤ c + K∫ₐᵗ φ ⇒ φ(t) ≤ c e^{K(t−a)}` for continuous `φ` and
  `K ≥ 0`, the closure step of every energy estimate.

No roadmap is a supplier: every input is a pinned declaration or a target of this roadmap, and
the roadmap records no supplier gap.

## How to read the build

Layer 1 states the Euler systems and Layer 2 the symmetric hyperbolic carrier with the Euler
symmetrisers; both are algebra and calculus on Mathlib. Layer 3 is the causal geometry of
sound-cone fields on the Galilean carrier: the acoustical form, Lipschitz causal curves, causal
pasts and domains of dependence; it needs Layer 1, Mathlib and, for one identification in §3.1,
§2.2, and can be built in parallel with Layers 4 and 5. Layer 4 is the `Hᵏ_Λ` calculus on Tau Ceti's Sobolev spaces. Layer 5 is
the Friedrichs energy method for linear systems (Layers 2 and 4). Layer 6 proves local uniqueness
on lens-shaped domains and uniqueness on domains of dependence (Layers 3 and 5). Layer 7 is local
well-posedness (Layers 4–6). Layer 8 is the theory of developments (Layers 3, 6 and 7). The
headline theorems, which the acceptance test states, are the local well-posedness of
compressible Euler (§7.2), uniqueness on lens-shaped domains (§6.1), the uniqueness and
existence theorems for developments (§8.2–§8.3) and the nullity of the regular boundary of a
maximal development (§8.4); the definitions they need are the equation of state, the Euler
system, the sound-cone causal curve, the future domain of dependence and the development.

## Layer 1: equations of state and the Euler systems

### 1.1 Equations of state

Define a *barotropic equation of state* as an open interval `I ⊆ (0, ∞)` together with a
function `p : ℝ → ℝ` that is smooth on `I` with `p′(ρ) > 0` for every `ρ ∈ I`, and its sound speed
`c(ρ) = √(p′(ρ))`. Define a (full) *equation of state* as an open set `𝒪 ⊆ (0, ∞) × ℝ` of
density–entropy pairs together with a function `P` smooth on `𝒪` with `∂_ρP > 0` on `𝒪`, and its
sound speed `c(ρ, s) = √(∂_ρP(ρ, s))` (ChristodoulouMiao2014 line 606, eq. (1.24);
AbbresciaSpeck2022 lines 165–170, eq. (1.3)). The polytropic laws `p = k₀ρ^γ` on `(0, ∞)` with
`k₀ > 0`, `γ ≥ 1` (LuoYu2023a line 88, where `1 < γ < 3`) and the ideal-gas law
`P(ρ, s) = k₀ e^s ρ^γ` are instances.

- The sound speed is smooth and strictly positive on `I` (on `𝒪`), and `c² = p′` (`c² = ∂_ρP`).
- A barotropic equation of state on `I` is an equation of state on `I × ℝ` independent of `s`,
  with the same sound speed; conversely, for every `s₀` and every open interval `J` with
  `J × {s₀} ⊆ 𝒪`, `ρ ↦ P(ρ, s₀)` is a barotropic equation of state on `J`.
- For the polytropic law `c² = k₀γρ^{γ−1}`; for the ideal-gas law `c² = k₀γe^sρ^{γ−1}`.

**Checks.**

- `p = ρ²/2` on `(0, ∞)`: `c² = ρ`, so `c(4) = 2`; the plausible wrong definition `c = p′`
  gives `4`.
- `p = ρ²` (`k₀ = 1`, `γ = 2`) at `ρ = 1/2`: `c² = 2ρ = 1`, so `c = 1`; this is the state of the
  counterexample of §8.2.
- The isothermal law `p = a²ρ` has constant sound speed `a`, and the Chaplygin law `p = −A/ρ`
  with `A > 0` has `p′ = A/ρ² > 0`: it is an equation of state although the pressure is
  negative, with `c = √A/ρ`. A definition demanding `p > 0` would wrongly exclude it.
- `p = −ρ²` on `(0, ∞)` has `p′ = −2ρ < 0` and is not an equation of state: for it the symbol of
  §2.2 would have the non-real characteristic speeds `v·ζ′ ± i√(2ρ)|ζ′|`.
- Ideal gas with `k₀ = 1`, `γ = 2` at `(ρ, s) = (1, 0)`: `∂_ρP = 2`, `∂_sP = 1`, `c = √2`.

*Needs:* Mathlib `ContDiffOn`, `Real.sqrt`.

### 1.2 The barotropic Euler system

Fix a barotropic equation of state `(I, p)`. Define a *classical barotropic solution* on a
domain or open set `D ⊆ 𝔐` as a pair `(ρ, v)` of `C¹` maps on `D` with `ρ(D) ⊆ I` satisfying, at
every point of `D`,

    ∂_t ρ + v·∇ρ = −ρ div v,        ∂_t v + (v·∇)v = −ρ⁻¹ ∇(p ∘ ρ)

(ChristodoulouMiao2014 lines 488 and 529, eqs. (1.4) and (1.10); LuoYu2023a line 84, eq. (1.1);
AbbresciaSpeck2022 lines 158–164, eqs. (1.1a)–(1.2), with the material field `B = ∂_t + v·∇`).
Prove that a `C¹` pair with `ρ(D) ⊆ I` is a classical barotropic solution if and only if it
satisfies the conservative system `∂_tρ + div(ρv) = 0`, `∂_t(ρvⁱ) + Σⱼ ∂ⱼ(ρvⁱvʲ) + ∂ᵢ(p ∘ ρ) = 0`
(ChristodoulouMiao2014 lines 481–529; the division by `ρ` uses `ρ > 0`). Prove Galilean
invariance: for `w ∈ E`, a linear isometry `R` of `E` and `a = (a₀, a′) ∈ 𝔐`, with
`φ(t, x) = (t + a₀, Rx + tw + a′)`, the pair `(ρ ∘ φ⁻¹, (Rv + w) ∘ φ⁻¹)` is a classical
barotropic solution on `φ(D)` if and only if `(ρ, v)` is one on `D` (ChristodoulouMiao2014
lines 818–822).

- Constant states `(ρ₀, v₀)` with `ρ₀ ∈ I` are solutions on `𝔐`.
- The expanding flow `ρ = ρ₀(1 + t)^{−n}`, `v = x/(1 + t)` is a solution on every open set of
  `(−1, ∞) × E` where `ρ ∈ I`, for every equation of state, since `ρ` is spatially constant.
- Restriction to a smaller domain and Λ-translates of solutions are solutions.

**Checks.**

- Expanding flow, `n = 1`, at `t = 1`: `ρ = ρ₀/2`, `v = x/2`, and `∂_tρ = −ρ₀/4`,
  `∂_x(ρv) = ρ₀/4`, so the continuity equation holds; momentum: `∂_tv + v∂_xv = −x/4 + x/4 = 0`.
- `(ρ, v) = (1 + t, 0)` is not a solution: `∂_tρ = 1 ≠ 0 = −ρ div v`.
- Boost of the expanding flow (`n = 1`) by `w = 1`: the correct rule gives
  `ṽ(t, y) = (y − t)/(1 + t) + 1`, with `∂_tṽ + ṽ∂_yṽ = 0`; the plausible wrong rule `ṽ = v ∘ φ⁻¹`
  leaves the residual `−w/(1 + t)`, which is `−1/2` at `t = 1`.

*Needs:* Mathlib `ContDiffOn`, `fderivWithin`, the product and chain rules; Layer 1.1.

### 1.3 The full Euler system

Fix an equation of state `(𝒪, P)`. Define a *classical solution* of the full system on `D` as
`C¹` maps `(ρ, v, s)` on `D` with `(ρ, s)(D) ⊆ 𝒪` satisfying

    Bρ = −ρ div v,        Bv = −ρ⁻¹ ∇(P(ρ, s)),        Bs = 0,       B = ∂_t + v·∇

(ChristodoulouMiao2014 lines 833–838, eqs. (2.1)–(2.3); AbbresciaSpeck2022 lines 158–160).
Prove the conservative form (the barotropic one with `P(ρ, s)` and `∂_t(ρs) + div(ρsv) = 0`),
Galilean invariance as in §1.2 with `s ∘ φ⁻¹`, and the constant-entropy reduction: if `s ≡ s₀`
on `D` then `(ρ, v)` is a barotropic solution for `ρ ↦ P(ρ, s₀)` on each interval `J` with
`J × {s₀} ⊆ 𝒪` containing `ρ(D)`, and conversely. Prove entropy propagation: if `(ρ, v, s)` is a
classical solution on a slab `[t₀, t₁) × E` with `v` bounded on `[t₀, t₂] × E` for every
`t₂ < t₁` and `s = s₀` on `Σ_{t₀}`, then `s ≡ s₀`, since `s` is constant along the material
curves `ẋ = v(t, x)`, which exist backwards to `t₀` by Picard–Lindelöf for the locally Lipschitz
field `v` and boundedness (ChristodoulouMiao2014 lines 530–544).

- Every barotropic solution `(ρ, v)` with a constant `s₀` is a full solution for
  `P(ρ, s) = p(ρ)`.
- Constant states, Λ-translates and restrictions are solutions.

**Checks.**

- Static entropy wave: `P = e^sρ²`, `n = 1`, `s = x`, `ρ = e^{−x/2}`, `v = 0`. Then
  `P(ρ, s) = 1` is constant and `(ρ, 0, x)` is a stationary classical solution with non-constant
  entropy, hence not barotropic. A wrong momentum equation keeping only `ρ⁻¹∂_ρP ∂_xρ` gives
  `e^{x/2} · 2e^{x/2} · (−e^{−x/2}/2) = −e^{x/2} ≠ 0`.
- The constant-entropy reduction at `s₀ = 0` turns `P = e^sρ²` into `p = ρ²`, whose sound speed
  `√(2ρ)` agrees with `√(∂_ρP(ρ, 0))`.
- `(ρ, v, s) = (1, 0, t)` is not a solution: `Bs = 1`.

*Needs:* Mathlib `ContDiffOn`, `IsPicardLindelof.exists_eq_forall_mem_Icc_hasDerivWithinAt`,
`ODE_solution_unique_of_mem_Icc`; Layers 1.1–1.2.

### Examples

The constant states, the expanding flow and the static entropy wave are exact solutions with
computed values; the Galilean boost of a constant state `(ρ₀, 0)` by `w` is `(ρ₀, w)`.

### Dependencies

Mathlib only.

## Layer 2: symmetric hyperbolic systems and the Euler symmetrisers

### 2.1 Quasilinear symmetric hyperbolic systems

Define a *quasilinear symmetric hyperbolic system* of size `N` in `n` space dimensions as an open
set `G ⊆ ℝ^N` of states, smooth maps `A⁰, …, Aⁿ` from `G` to real symmetric `N × N` matrices with
`A⁰(U)` positive definite for every `U ∈ G`, and a smooth map `F : G → ℝ^N`. A *classical
solution* on a domain or open set `D` is a `C¹` map `U : D → G` with
`A⁰(U)∂_tU + Σᵢ Aⁱ(U)∂ᵢU = F(U)` on `D`. Define the symbol `σ(U; ζ)` and the dominating round
cones as in the Conventions (Friedrichs1954, pp. 345–392; Majda1984, Ch. 2, §2.1;
Dafermos2016, Ch. V, §5.1; Christodoulou2019 lines 124–126 for the Euler equations as a
quasilinear hyperbolic first-order system).

- `σ(U; ζ)` is linear in `ζ`, and `σ(U; dt) = A⁰(U)` is positive definite.
- Monotonicity: if `(c, w)` dominates at `U` and `c′ ≥ c + |w′ − w|`, then `(c′, w′)` dominates
  at `U`.
- Maximal speed: for every compact `K ⊆ G` and every `w ∈ E` there is `M > 0` such that
  `(M, w)` dominates at every `U ∈ K`.
- For fixed `(c, w)` the set of states at which `(c, w)` dominates is closed in `G`.
- There is a continuous map `κ : G → (0, ∞) × E` with `κ(U)` dominating at every `U`, for
  instance `κ(U) = (1 + λ(U), 0)` with `λ(U)` the largest root of `det(Σᵢ ωᵢAⁱ(U) − λA⁰(U)) = 0`
  over unit `ω`, which depends continuously on `U`.
- Symmetrisation: if `S : G → Sym_N` is smooth and positive definite and `S Mⁱ` is symmetric for
  smooth `Mⁱ : G → Mat_N`, then `C¹` solutions of `∂_tU + Σᵢ Mⁱ(U)∂ᵢU = f(U)` are exactly the
  classical solutions of the system `(G, S, S M¹, …, S Mⁿ, S f)`.
- Difference bound: for classical solutions `U₁, U₂` on `D` with values in a compact `K ⊆ G`
  and `|∂U₂| ≤ L` on `D`, `|A⁰(U₁)∂_tW + Σᵢ Aⁱ(U₁)∂ᵢW| ≤ C(K, L)|W|` on `D` for
  `W = U₁ − U₂`, because `A^μ` and `F` are Lipschitz on compact subsets of `G`.

**Checks.**

- Scalar transport `∂_tu + a∂_xu = 0` (`N = n = 1`, `A⁰ = 1`, `A¹ = a`, `F = 0`): every `(c, a)`
  with `c > 0` dominates; for `a = 3`, `(1, 0)` does not (Conventions).
- The first-order wave system on `ℝ^{1+n}` with `A⁰ = I`, `Aⁱ = −(e₀eᵢᵀ + eᵢe₀ᵀ)` has symbol
  eigenvalues `ζ₀ ± |ζ′|` and `ζ₀`: the cone `(1, 0)` dominates, `(1/2, 0)` does not (at
  `ζ = (1/2, e₁)` the eigenvalue `1/2 − 1 = −1/2` appears).
- The Cauchy–Riemann system `∂_tu − ∂_xw = 0`, `∂_tw + ∂_xu = 0` has `A¹ = [[0, −1], [1, 0]]`,
  which is not symmetric: it is not an instance, as it must not be (it is elliptic).
- `A⁰ = diag(1, −1)` is symmetric but not positive definite; the carrier rejects it.

*Needs:* Mathlib `Matrix.PosDef`, `Matrix.PosSemidef`, `Matrix.IsHermitian`, `ContDiffOn`.

### 2.2 The Euler symmetrisers

Construct the *barotropic Euler system* on `G = I × E ⊆ ℝ^{1+n}`, `U = (ρ, v)`:
`A⁰ = diag(c²/ρ², 1, …, 1)`, `Aⁱ = vⁱA⁰ + (c²/ρ)(e₀eᵢᵀ + eᵢe₀ᵀ)`, `F = 0`. Construct the *full
Euler system* on `G = {(ρ, v, s) : (ρ, s) ∈ 𝒪}`, `U = (ρ, v, s)`: with `Mⁱ(U)` the coefficient
matrices of the material form (`vⁱ` on the diagonal; `ρ` in position `(ρ, vⁱ)`; `∂_ρP/ρ` in
position `(vⁱ, ρ)`; `∂_sP/ρ` in position `(vⁱ, s)`), take the symmetriser

    S = [[∂_ρP/ρ, 0, ∂_sP/ρ], [0, ρ I_n, 0], [∂_sP/ρ, 0, 1 + (∂_sP)²/(ρ ∂_ρP)]]

and `A⁰ = S`, `Aⁱ = S Mⁱ`, `F = 0`. Prove: both are quasilinear symmetric hyperbolic systems; a
`C¹` state is a classical solution of §1.2 (§1.3) if and only if it is a classical solution of
the corresponding system; for `ζ′ ≠ 0` the roots `λ` of `det(σ(U; ζ) − λA⁰(U)) = 0` are
`ζ₀ + v·ζ′` with multiplicity `n − 1` (barotropic) or `n` (full) and `ζ₀ + v·ζ′ ± c|ζ′|`; `σ(U; ζ)`
is positive semidefinite if and only if `ζ₀ + v·ζ′ ≥ c|ζ′|`, positive definite if and only if
`ζ₀ + v·ζ′ > c|ζ′|`, and singular if and only if `|ζ₀ + v·ζ′| = c|ζ′|`, or `ζ₀ + v·ζ′ = 0` when
that root has positive multiplicity (the barotropic system with `n ≥ 2`, and the full system for
every `n`; for the barotropic system with `n = 1` the root `ζ₀ + vζ₁` is absent and the symbol
is singular only on the sound sheet); and a
round cone `(c′, w)` dominates at `U` if and only if `c′ ≥ c(U) + |v − w|`, so the sound cone
`(c(U), v)` is the least dominating cone (Majda1984, Ch. 2, §2.1, compressible Euler as a
symmetric hyperbolic system; Dafermos2016, Ch. V, §5.1).

- The barotropic symmetriser is `ρ⁻¹` times the restriction of `S` to the `(ρ, v)` block when
  `∂_sP = 0`; the two normalisations have the same solutions.
- The map `U ↦ (c(U), v(U))` is continuous on `G` and gives a dominating cone at every state; it
  is the *acoustical cone map* used in Layers 3, 6 and 8.

**Checks.**

- `n = 1`, `ρ = 1`, `c = 2`, `v = 3`: `A⁰ = diag(4, 1)`, `A¹ = [[12, 4], [4, 3]]`, and
  `det(A¹ − λA⁰) = 4(λ − 1)(λ − 5)`, so the speeds are `1 = v − c` and `5 = v + c`.
- The plausible wrong weight `A⁰ = I` gives `A¹ = [[v, ρ], [c²/ρ, v]] = [[3, 1], [4, 3]]`, which is
  not symmetric.
- Full system, `n = 1`, `P = e^sρ²` at `(ρ, s) = (1, 0)`: `∂_ρP = 2`, `∂_sP = 1`, `d = 3/2`,
  `S = [[2, 0, 1], [0, 1, 0], [1, 0, 3/2]]` with leading minors `2, 2, 2`, positive definite; the
  uncorrected choice `d = 1/2` gives determinant `0`.
- Multiplicity zero: `n = 1`, barotropic, `(ρ, v) = (1, 3)`, `c = 2`, `ζ = (−3, 1)`: here
  `ζ₀ + vζ₁ = 0`, yet `σ = −3A⁰ + A¹ = [[0, 4], [4, 0]]` has determinant `−16`, and
  `g⁻¹(ζ, ζ) = −c⁻²·0 + 1 = 1`, so `ζ` is not null either: `σ` is nonsingular. A statement
  making `ζ₀ + v·ζ′ = 0` singular for every `n` is refuted; for the full system with `n = 1` at
  the same `(ρ, v)` the entropy row makes `ζ₀ + vζ₁` a root and `σ` is singular.
- Dominance at `(ρ, v) = (1, 3)` with `c = 2`: `(2, 3)` dominates, `(2, 0)` does not
  (`ζ = (2, −1)`: `ζ₀ + 0 = 2 ≥ 2·1`, but `ζ₀ + vζ₁ − c|ζ₁| = 2 − 3 − 2 = −3 < 0`), and `(5, 0)`
  dominates, matching `c′ ≥ c + |v − w| = 5`.

*Needs:* Layers 1.1–1.3, 2.1; Mathlib `Matrix.PosDef`, `Matrix.det`.

### Examples

The scalar transport equation, the first-order wave system and both Euler systems are
instances; the Cauchy–Riemann system and an indefinite `A⁰` are non-instances.

### Dependencies

Layer 1 and Mathlib.

## Layer 3: sound cones, causal curves and domains of dependence

### 3.1 The acoustical form

For `c > 0` and `v ∈ E` define the *acoustical form* on `ℝ × E`,
`g_{c,v}((τ, ξ), (τ′, ξ′)) = −c²ττ′ + (ξ − τv)·(ξ′ − τ′v)`, its inverse form on covectors
`g⁻¹_{c,v}(ζ, η) = −c⁻²(ζ₀ + v·ζ′)(η₀ + v·η′) + ζ′·η′`, and the *material vector* `B = (1, v)`
(ChristodoulouMiao2014 lines 672–676, eqs. (1.39)–(1.40); LuoYu2023a line 95; LukSpeck2018
lines 1999–2008, eqs. (3.3.10a)–(3.3.10b), in the normalisation `c⁻²g`). The acoustical
form of a state `U` of either Euler system is `g_{c(U), v(U)}`.

- The Gram matrices of `g` and `g⁻¹` in the standard bases are mutually inverse, and
  `det g = −c²`, so `√(−det g) = c` (ChristodoulouMiao2014 line 685).
- `(τ, ξ) ↦ (cτ, ξ − τv)` carries `g` to `−τ² + |ξ|²`: `g` is nondegenerate with one negative and
  `n` positive squares.
- `g(B, B) = −c²`; `X = (τ, ξ)` is causal (`g(X, X) ≤ 0`) iff `|ξ − τv| ≤ c|τ|`; a nonzero causal
  vector has `τ ≠ 0`; it is future-directed (`τ > 0`) iff `g(B, X) < 0`.
- Covectors: `ζ` is future causal (`ζ(X) ≥ 0` for every future causal `X`) iff
  `ζ₀ + v·ζ′ ≥ c|ζ′|`; for `ζ′ ≠ 0` the hyperplane `ker ζ` is spacelike (`g` positive definite on
  it) iff `|ζ₀ + v·ζ′| > c|ζ′|`, null (`g` degenerate on it) iff equality holds, and timelike
  (`g` indefinite on it) iff `|ζ₀ + v·ζ′| < c|ζ′|`; `dt` is future timelike.
- Galilean covariance: `g_{c,v}((τ, ξ + τw), (τ′, ξ′ + τ′w)) = g_{c, v−w}((τ, ξ), (τ′, ξ′))`.
- Identification with the symbol: for a state `U`, `σ(U; ζ)` of §2.2 is positive definite iff
  `ζ` is a future timelike covector of `g_U⁻¹`, positive semidefinite iff `ζ` is future causal, and
  singular iff `ζ` is `g_U⁻¹`-null or, when the root `ζ₀ + v·ζ′` of §2.2 has positive multiplicity
  (barotropic with `n ≥ 2`, full for every `n`), `ζ₀ + v·ζ′ = 0`: the null cone of `g_U⁻¹` is the
  sound sheet of the characteristic variety, and the hyperplane `ζ₀ + v·ζ′ = 0`, characteristic
  for the material derivative `B`, is its other sheet, absent for the barotropic system with
  `n = 1` (§2.2, the multiplicity-zero Check;
  ChristodoulouMiao2014 lines 864–872; Christodoulou2019 lines 134–138).

**Checks.**

- `n = 2`, `c = 2`, `v = (1, 0)`: the Gram matrix is `[[−3, −1, 0], [−1, 1, 0], [0, 0, 1]]` with
  determinant `−4`; `g(B, B) = −4`; `(1, 3, 0)` is null and `(1, 4, 0)` has `g = 5`; and
  `g⁻¹(dt, dt) = −1/4`. The plausible wrong form `−c²dt² + |dx|²` gives `g(B, B) = −3`.
- The covector `ζ = (−3, 1, 0)` at the same state has `ζ₀ + v·ζ′ = −2`, so it is null and past;
  its kernel contains the null vector `(1, 3, 0)`.
- The boost by `w = v` turns `g_{c,v}` into the static form `g_{c,0}`: the vector `(1, 3, 0)`
  becomes `(1, 2, 0)`, null for `g_{2,0}`.

*Needs:* Mathlib `Matrix.det`, `QuadraticForm.equivalent_signType_weighted_sum_squared`;
Layer 2.2 for the identification with the symbol.

### 3.2 Sound-cone fields and causal curves

A *sound-cone field* on a set `D ⊆ 𝔐` is a pair of continuous maps `c : D → (0, ∞)` and
`v : D → E`; the acoustical field of a classical Euler solution is `(c ∘ U, v)`. Define a
*causal curve* of the field in `D` as an interval `J ⊆ ℝ` and a map `x : J → E` that is locally
Lipschitz on `J`, with `(t, x(t)) ∈ D` for `t ∈ J`, such that for almost every `t ∈ J` the map
`x` is differentiable at `t` within `J` and `|ẋ(t) − v(t, x(t))| ≤ c(t, x(t))`. Causal curves are
parametrised by time and are future-directed by construction (Minguzzi2019 lines 1359–1363,
Theorem 2.12, for the Lipschitz parametrisation of continuous causal curves; Chrusciel2011
line 534, §2.3; MinguzziCone2019 lines 1735–1740 for causal curves of a closed cone structure).

Prove:

- *Integral characterisation.* A continuous `x : J → E` with graph in `D` is a causal curve iff
  `|x(t) − x(s) − ∫ₛᵗ v(r, x(r)) dr| ≤ ∫ₛᵗ c(r, x(r)) dr` for all `s ≤ t` in `J`; in particular
  causal curves are Lipschitz with constant `sup_K (|v| + c)` on any compact piece of their
  graph contained in `K`.
- *Local existence.* If `D` is a domain, `p ∈ D` with `t_p > t₀`, and `|u − v(p)| < c(p)`, the
  segment `x(t) = x_p + (t − t_p)u` is a causal curve on `[t_p − δ, t_p]` for some `δ > 0`, and
  similarly forward in time.
- *Restriction and concatenation.* Restrictions to subintervals are causal; two causal curves on
  `[a, b]` and `[b, d]` that agree at `b` concatenate to a causal curve on `[a, d]`.
- *Limit curves.* Causal curves with graphs in a compact `K ⊆ D` are equi-Lipschitz, and a
  sequence of them defined on a common `[a, b]` has a subsequence converging uniformly to a causal
  curve. If `D` is a domain, `p_m → p` in `D`, and `x_m` are causal curves in `D` ending at `p_m`
  on `[a_m, t_{p_m}]` with `a_m → a < t_p`, then a subsequence converges uniformly on compact
  subsets of an interval `J ∋ t_p` with `inf J = a′ ≥ a` to a causal curve `x` ending at `p`, and
  if `a′ > a` then `x` is past-inextendible in `D` in the sense of §3.3 (Minguzzi2019
  line 1917, §2.11; Chrusciel2011 line 1352, §2.6).
- *Comparison with piecewise `C¹` curves.* If `γ = (γ⁰, γ′) : [α, β] → D` is piecewise `C¹` and
  every one-sided tangent `γ̇(σ)` is a nonzero future causal vector of `g_{c(γ(σ)), v(γ(σ))}`, then
  `γ⁰` is strictly increasing and `γ′ ∘ (γ⁰)⁻¹` is a causal curve on `[γ⁰(α), γ⁰(β)]`;
  conversely a `C¹` causal curve has a `C¹` graph with future causal tangents.
- *Covariance.* Λ-translates, spacetime translations and Galilean boosts carry causal curves of
  a field to causal curves of the transformed field.

**Checks.**

- Field `(1, 0)`, `n = 1`: `x(t) = t/2` is causal, `x(t) = 2t` is not (`|2| > 1`), and
  `x(t) = |t|` on `[−1, 1]` is causal with a corner: Lipschitz, with derivative `±1` off `0`.
- Let `f` be the Cantor function on `[0, 1]` and `x = 10f` with the field `(1, 0)`: `x` is
  continuous with `ẋ = 0` almost everywhere, so it passes a definition that drops the Lipschitz
  condition, but it is not Lipschitz and violates the integral characterisation, since
  `x(1) − x(0) = 10 > 1 = ∫₀¹ c` (compare Minguzzi2019 line 1364, Remark 2.13).
- Field `(1, x)` on `𝔐` (`n = 1`): the material curve `x(t) = eᵗ` has `ẋ = v` and is causal;
  `x(t) = e^{3t}` has `|ẋ − v| = 2e^{3t} > 1` and is not.

*Needs:* Mathlib `LocallyLipschitzOn`, `LipschitzOnWith.ae_differentiableWithinAt_of_mem`,
`LipschitzOnWith.absolutelyContinuousOnInterval`,
`AbsolutelyContinuousOnInterval.integral_deriv_eq_sub`, `BoundedContinuousFunction.arzela_ascoli`,
dominated convergence and the Lebesgue differentiation theorem; Layer 3.1 for the comparison
with piecewise `C¹` curves.

### 3.3 Causal pasts and future domains of dependence

Fix a sound-cone field on `D ⊆ H_{t₀}`. A *past causal curve in `D` ending at `p`* is a causal
curve `x : J → E` in `D` with `t_p = max J` and `x(t_p) = x_p`. One such curve *extends* another
when its interval contains the other's and the two agree there; a past causal curve is
*past-inextendible in `D`* when it has no proper extension in `D`. The *causal past*
`J⁻_D(p)` is the set of points of past causal curves in `D` ending at `p`. For `S ⊆ D` define the
*future domain of dependence* `D⁺_D(S)` as the set of `p ∈ D` such that every past-inextendible
causal curve in `D` ending at `p` meets `S` (Minguzzi2019 lines 3576–3582, Definition 3.1 and
Remark 3.2; MinguzziCone2019 lines 1737–1740, Definition 2.17; Chrusciel2011 line 1169, §2.5, and
line 1843, §2.9; BarGinouxPfaffle2007 line 1006, Definition 1.3.5; ChristodoulouMiao2014
lines 866–872; HawkingEllis1973 at §6.5).

Prove:

- Every past causal curve in `D` ending at `p` has a past-inextendible extension in `D` (Zorn's
  lemma on the extension order; chains glue).
- `S ⊆ D⁺_D(S)`; `D⁺_D` is monotone in `S`; if `S ⊆ Σ_{t₀} ∩ D` then `D⁺_D(S) ∩ Σ_{t₀} = S`, and
  a causal curve meets `S` only at time `t₀`.
- *Past-closed restriction.* If `D′ ⊆ D` and `J⁻_D(q) ⊆ D′` for every `q ∈ D′`, then
  `J⁻_{D′}(q) = J⁻_D(q)` for `q ∈ D′` and `D⁺_D(S) ∩ D′ ⊆ D⁺_{D′}(S ∩ D′)`.
- *Compact pasts.* If `D` is a domain, `S ⊆ Σ_{t₀}` and `p ∈ D⁺_D(S)`, then every
  past-inextendible causal curve in `D` ending at `p` is defined on `[t₀, t_p]`, `J⁻_D(p)` is
  compact, and `J⁻_D(p) ∩ Σ_{t₀} ⊆ S`. Route: a sequence of points of `J⁻_D(p)` that is unbounded
  or converges outside `D` yields, by the limit-curve statement of §3.2, a past-inextendible
  curve ending at `p` that misses `S` (Minguzzi2019 line 1917, §2.11, the limit curve theorems,
  which give the classical form of this compactness).
- *Openness.* If moreover `S` is relatively open in `Σ_{t₀}`, then `D⁺_D(S)` is a domain, and
  `q ↦ J⁻_D(q)` is upper semicontinuous on it: every neighbourhood of `J⁻_D(p)` contains
  `J⁻_D(q)` for `q` near `p`. Route: if `q_m → p ∈ D⁺_D(S)` and past-inextendible curves from
  `q_m` miss `S`, their limit curve (§3.2) extends to a past-inextendible curve from `p`, which
  meets `S` at time `t₀`; since `S` is open in `Σ_{t₀}` and the curves are equi-Lipschitz, the
  curves from `q_m` reach a compact neighbourhood of that point inside `D` and, being
  inextendible, must end at time `t₀` inside `S`, a contradiction. The classical analogue, for
  closed achronal `S` in a spacetime, is Minguzzi2019 line 3718, Proposition 3.16, eq. (3.1),
  `Int D⁺(S) = I⁺(S) ∩ I⁻(D⁺(S))`; the open-`S` statement on a domain is proved here.
- *Idempotence.* In the same setting `D⁺_{D⁺_D(S)}(S) = D⁺_D(S)`: a past-inextendible causal
  curve in `D⁺_D(S)` is past-inextendible in `D`, because its first exit point from `D⁺_D(S)`
  would start a curve not meeting `S` (proved here; the notion is MinguzziCone2019 lines
  1737–1740, Definition 2.17, for closed achronal `S`).
- *Slabs.* If `D = [t₀, t₁) × E` and `c`, `|v|` are bounded on `[t₀, t₂] × E` for every `t₂ < t₁`,
  then every past causal curve in `D` extends to one defined on `[t₀, t_p]`, `D⁺_D(S)` is the set
  of `p` all of whose causal curves on `[t₀, t_p]` start in `S`, and `D⁺_D(Σ_{t₀}) = D`. Route:
  the integral characterisation of §3.2 bounds a causal curve on `(a, t_p]` by
  `|x(t) − x_p| ≤ (t_p − a) sup(|v| + c)`, so it has a limit at `a` and extends by local existence
  unless `a = t₀` (proved here; the notion is BarGinouxPfaffle2007 line 1006,
  Definition 1.3.5).
- *Invariance.* If `D`, `S` are Λ-invariant and the field is Λ-periodic, `D⁺_D(S)` is
  Λ-invariant and `J⁻_D(p + λ) = J⁻_D(p) + λ`; translations and Galilean boosts act likewise.

**Checks.**

- Field `(c₀, v₀)` constant on `D = H₀`, `S = {0} × B(0, R)`:
  `D⁺_D(S) = {(t, x) : t ≥ 0, |x − tv₀| < R − c₀t}`; for `S = {0} × {x¹ > 0}`,
  `D⁺_D(S) = {x¹ > (v₀¹ + c₀)t}`, whose boundary is null for `g_{c₀,v₀}` (the configuration of
  LuoYu2023b lines 417–419).
- Closed domains fail: with `n = 1`, field `(1, 0)`, the closed set
  `D = {t ≥ 0, |x| ≤ 1 + t}` and `S = {0} × [−1, 1]`, every past-inextendible curve in `D` reaches
  `t = 0` inside `D ∩ Σ₀ = S`, so `D⁺_D(S) = D`, although data on `S` do not determine a solution at
  `(1, 1.9)`. With the domain `D = {t ≥ 0, |x| < 1 + t}` and `S = {0} × (−1, 1)` the curve
  `x ≡ 1.9` leaves `D` at `t = 0.9` without meeting `S`, and `D⁺_D(S) = {|x| < 1 − t}`.
- The boundedness hypothesis of the slab statement is needed: for `n = 1` and the field
  `(1, x²)` on `D = [0, 1) × ℝ`, the material curve through `(1/2, −4)` is `x(s) = 1/(1/4 − s)`,
  which solves `ẋ = x²`, equals `−4` at `s = 1/2`, is causal, and tends to `−∞` as `s ↓ 1/4`. On
  `(1/4, 1/2]` it is past-inextendible in `D` and never meets `Σ₀`, so `(1/2, −4) ∉ D⁺_D(Σ₀)` and
  `D⁺_D(Σ₀) ≠ D`.
- Expanding flow, `n = 1`, `p = ρ²/2`, `ρ₀ = 1`, `S = {0} × (−1, 1)`, `D = H₀`: with
  `y = x/(1 + t)` the left-moving boundary characteristic satisfies `ẏ = −(1 + t)^{−3/2}`, so
  `D⁺_D(S) = {(t, x) : |x| < 2√(1 + t) − (1 + t)}`, which closes at `t = 3`; at `t = 1` the half-width
  is `2√2 − 2 ≈ 0.828`, against `1 − t = 0` for the static field `(1, 0)`.

*Needs:* Mathlib `zorn_le_nonempty₀`, `IsCompact`; Layer 3.2 (limit curves, local existence,
concatenation).

### Examples

Constant fields and the expanding flow give explicit domains of dependence; the Cantor curve,
the closed domain and the unbounded field are the negative controls.

### Dependencies

Layer 1 (acoustical fields of solutions), Layer 2.2 (identification with the symbol in §3.1),
Mathlib.

## Layer 4: Sobolev spaces on partially periodic carriers

### 4.1 The spaces `Hᵏ_Λ`

Fix a period group `Λ`, its span `V ⊆ E`, the orthogonal projection `π_V`, and a measurable
fundamental domain `F` of `Λ` acting on `E`. Define `Hᵏ_Λ(E; ℝ^N)`, for `k ∈ ℕ`, as the space of
Λ-periodic `u ∈ L²_loc(E; ℝ^N)` whose iterated weak derivatives `∂^αu`, `|α| ≤ k`, exist in
`L²_loc` in the sense of `TauCeti.HasWeakFDerivOn` on `E` (coordinatewise), with
`‖u‖²_{Hᵏ_Λ} = Σ_{|α|≤k} ∫_F |∂^αu|² < ∞`. This is the Sobolev space of the quotient `E/Λ`; for
`Λ_cyl` it is `Hᵏ(ℝ × (ℝ/2πℤ)^{n−1})`, the space in which AbbresciaSpeck2022 (lines 149–152 and
176–179) poses `H³` data on `ℝ × 𝕋²`.

- The norm does not depend on `F`; `Hᵏ_Λ` is a real Hilbert space; translations act
  isometrically; `∂ᵢ : Hᵏ⁺¹_Λ → Hᵏ_Λ` is bounded; `∫_F (∂ᵢu)·w = −∫_F u·∂ᵢw` for `u, w ∈ H¹_Λ`.
- For `Λ = 0`, `u ∈ Hᵏ_Λ` iff each coordinate of `u` is the value of an element of
  `TauCeti.Wkp volume ⊤ 2 k`, iff each coordinate is in Mathlib's `MemSobolev k 2` (through
  `MeasureTheory.Lp.memSobolev_natCast_iff_exists_wkp_value_eq`), with equivalent norms in both
  cases, equal in the first case exactly when `k ≤ 1`: Tau Ceti's `Wkp` norm at order `k ≥ 2`
  measures the highest derivative by the operator norm on `TauCeti.IteratedGradient`, which for
  `k = 2` is the operator norm of the Hessian rather than its `ℓ²` norm over multi-indices
  (`TauCeti/Analysis/Sobolev/Wkp/Basic.lean`, module docstring), while at order `1` the
  gradient's operator norm is its Euclidean norm.
- *Localisation.* Fix `χ_Λ ∈ C_c^∞(V)` with `Σ_{λ∈Λ} χ_Λ(· − λ) = 1` on `V`. Then
  `u ↦ (χ_Λ ∘ π_V)u` is bounded from `Hᵏ_Λ` to `Hᵏ(E)`, `u = Σ_{λ∈Λ} τ_λ((χ_Λ ∘ π_V)u)` with a
  locally finite sum, and `‖u‖_{Hᵏ_Λ}` and `‖(χ_Λ ∘ π_V)u‖_{Hᵏ(E)}` are equivalent norms with
  constants depending on `k`, `Λ` and `χ_Λ`. Every whole-space estimate of §§4.2–4.4 transfers to
  `Hᵏ_Λ` through this map.

**Checks.**

- `Λ = 0`, `k = 0`: `H⁰_Λ = L²(E; ℝ^N)` with its norm.
- The constant `1` lies in `Hᵏ_Λ` for a full-rank `Λ = (2πℤ)^n`, with norm squared `(2π)^n`, but
  not for `Λ = 0` or `Λ = Λ_cyl` (infinite norm): a definition that integrates over a bounded cell
  regardless of the rank would wrongly admit it for `Λ_cyl`.
- `n = 2`, `Λ = Λ_cyl`: `u = e^{−(x¹)²} cos x²` has `‖u‖²_{L²_Λ} = √(π/2) · π`, while `cos x²` alone
  is not in `H⁰_Λ`.
- `n = 2`, `Λ = 0`, `k = 2`, `u = e^{−|x|²}`: the Hessian at `0` is `−2I`, with operator norm `2`
  and `Σ_{|α|=2} |∂^αu(0)|² = 4 + 4 = 8`, root `2√2`; the pointwise inequality is strict on a
  neighbourhood of `0`, so the `H²_Λ` norm of `u` and its `TauCeti.Wkp volume ⊤ 2 2` norm differ,
  while the two are equivalent. For `k = 1` the two norms of `u` are both
  `(∫ u² + |∇u|²)^{1/2}`. A claim of equal norms for every `k` is refuted.
- `n = 1`, `Λ = 2πℤ`, `k = 1`, `u = cos x`: the Fourier coefficients for the probability Haar
  measure of `ℝ/2πℤ` are `c_{±1} = 1/2`, so the `TauCeti.CircleSobolev 1 ℂ` norm squared of `u`
  is `2 · 2² · (1/4) = 2`, while the constant `1` has `1`; here the values are `2π` and `2π`. The
  ratios `π` and `2π` differ, so the two norms are equivalent (the weights `(1 + |m|)²` and
  `2π(1 + m²)` have ratio between `1/(2π)` and `1/π`) but not proportional.
- `n = 1`, `Λ = 2πℤ`, `u = cos x`: `‖u‖²_{H¹_Λ} = π + π = 2π`. For full-rank `Λ = (2πℤ)^n`
  and `u(x) = Σ c_m e^{im·x}`, `‖u‖²_{H¹_Λ} = (2π)^n Σ (1 + |m|²)|c_m|²`, while the
  IncompressibleFlows norm of the rescaled function `y ↦ u(2πy)` on the unit-period torus is
  `Σ (1 + 4π²|m|²)|c_m|²`; for `cos x` the two values are `2π` and `(1 + 4π²)/2`. The norms are
  equivalent and not equal; an agreement claim that ignores the rescaling is refuted here.

*Needs:* Tau Ceti `TauCeti.HasWeakFDerivOn`, `TauCeti.Wkp`,
`MeasureTheory.Lp.memSobolev_natCast_iff_exists_wkp_value_eq`; Mathlib `TemperedDistribution.MemSobolev`,
`MeasureTheory.Lp`, `ContDiffBump`.

### 4.2 Embeddings, interpolation and lower semicontinuity

Prove: if `2k > n + 2j`, every `u ∈ Hᵏ_Λ` has a `Cʲ` representative with
`sup_{|α|≤j} ‖∂^αu‖_∞ ≤ C‖u‖_{Hᵏ_Λ}`, `C = C(n, k, j, Λ)`, whose derivatives of order `≤ j` tend to
`0` at infinity in the directions orthogonal to `V`; the inclusion `Hᵏ_Λ ⊆ C^j_b` is bounded
(for `Λ = 0`, `TauCeti.Wkp.toZeroAtInfty` applied to `∂^αu`; in general through the
localisation of §4.1). Prove the interpolation inequality
`‖u‖_{Hʲ_Λ} ≤ C‖u‖_{L²_Λ}^{1−j/k}‖u‖_{Hᵏ_Λ}^{j/k}` for `0 ≤ j ≤ k`. Prove lower semicontinuity: if
`u_m → u` in `L²_Λ` and `‖u_m‖_{Hᵏ_Λ} ≤ M`, then `u ∈ Hᵏ_Λ` and `‖u‖_{Hᵏ_Λ} ≤ M`, by the `L²`
difference-quotient criterion (Tau Ceti
`TauCeti.exists_norm_le_hasWeakLineDerivOn_of_frequently_eLpNorm_inv_mul_sub_le`) applied
derivative by derivative. These are the standard Sobolev facts of Majda1984, Ch. 2, §2.1; the
embedding is LukNotes line 1210, Theorem 5.5, for `Λ = 0`.

- For `2k > n + 2`, the `C¹` representatives of `u − Ū` and their first derivatives are bounded
  and uniformly continuous; this is what makes `Hᵏ` solutions classical.
- Convergence in `L²_Λ` together with a bound in `Hᵏ_Λ` gives convergence in `Hʲ_Λ` for every
  `j < k`, and in `C^i_b` for `2j > n + 2i`.

**Checks.**

- `n = 1`, `Λ = 0`, `u = e^{−x²}`: `‖u‖²₂ = ‖u′‖²₂ = √(π/2)`, and `sup |u| = 1`, consistent with
  the one-dimensional bound `sup |u|² ≤ ‖u‖₂‖u′‖₂ = √(π/2) ≈ 1.2533`.
- `n = 2`, `k = 1` (`2k = n`): a cut-off of `log log(1 + 1/|x|)` is in `H¹(ℝ²)` and unbounded, so
  the hypothesis `2k > n` cannot be weakened to `2k ≥ n`.
- Interpolation witness on `ℝ`, `j = 1`, `k = 2`, `u = e^{−x²}`: `‖u‖₂² = ‖u′‖₂² = √(π/2)` and
  `‖u″‖₂² = 3√(π/2)`, so `‖u‖²_{H¹} = 2√(π/2) ≤ ‖u‖₂‖u‖_{H²} = √(π/2)·√5`. The wrong exponent
  pair `‖u‖_{L²}^{2/3}‖u‖_{H²}^{1/3}` is refuted by the dilations `u(λx)`, `λ → ∞`: the left side
  grows like `λ^{1/2}`, the right side like `λ^{1/6}`.

*Needs:* §4.1; Tau Ceti `TauCeti.Wkp.toZeroAtInfty`,
`TemperedDistribution.MemSobolev.exists_zeroAtInftyContinuousMap_ae_eq`,
`TauCeti.exists_norm_le_hasWeakLineDerivOn_of_frequently_eLpNorm_inv_mul_sub_le`; Mathlib
Plancherel for the interpolation inequality on `E`.

### 4.3 Gagliardo–Nirenberg interpolation and Moser estimates

Prove, for `u, f, g ∈ L^∞ ∩ Hᵏ_Λ` and multi-indices `α`:

- *Gagliardo–Nirenberg.* For `0 ≤ i ≤ k`,
  `‖Dⁱu‖_{L^{2k/i}_Λ} ≤ C‖u‖_∞^{1−i/k}‖u‖_{Hᵏ_Λ}^{i/k}`, and for `Λ = 0` the homogeneous form with
  `‖Dᵏu‖_{L²}` in place of `‖u‖_{Hᵏ}` (Nirenberg1959 line 318, the Theorem of Lecture II,
  inequality (2.2); Majda1984, Ch. 2, §2.1).
- *Products.* For `|α| ≤ k`, `‖∂^α(fg)‖_{L²_Λ} ≤ C(‖f‖_∞‖g‖_{Hᵏ_Λ} + ‖f‖_{Hᵏ_Λ}‖g‖_∞)`; hence
  `Hᵏ_Λ` is an algebra when `2k > n` (LukNotes line 1616, Lemma 6.9; Majda1984, Ch. 2, §2.1).
- *Commutators.* For `1 ≤ |α| ≤ k`,
  `‖∂^α(fg) − f∂^αg‖_{L²_Λ} ≤ C(‖∇f‖_∞‖g‖_{Hᵏ⁻¹_Λ} + ‖∇f‖_{Hᵏ⁻¹_Λ}‖g‖_∞)` (Majda1984, Ch. 2, §2.1).
- *Composition.* For `Φ` smooth on an open `G ⊆ ℝ^N`, a compact `K ⊆ G`, `Ū ∈ K` and `u` with
  values in `K` and `u − Ū ∈ Hᵏ_Λ`: `Φ(u) − Φ(Ū) ∈ Hᵏ_Λ` with
  `‖Φ(u) − Φ(Ū)‖_{Hᵏ_Λ} ≤ C(Φ, K, k)‖u − Ū‖_{Hᵏ_Λ}`, the top derivatives obeying
  `‖DᵏΦ(u)‖_{L²_Λ} ≤ C(Φ, K, k)‖Dᵏu‖_{L²_Λ}` for `Λ = 0`; and `u ↦ Φ(u)` is continuous for the
  `Hᵏ_Λ` topology on such `u` (LukNotes line 1612, Lemma 6.8; Majda1984, Ch. 2, §2.1).

The constants depend on `n`, `k`, `Λ` and, for the composition, on `Φ` through its
derivatives up to order `k` on `K`. Every constant is independent of `u`, `f`, `g`.

**Checks.**

- Scaling witness for Gagliardo–Nirenberg on `E`: for `u_λ(x) = u(λx)`, both sides scale as
  `λ^{i − ni/(2k)}`; the wrong exponent `L^{k/i}` scales differently and is refuted as `λ → ∞`.
- The `L^∞` factors are needed: on `ℝⁿ`, `u = |x|^{−n/3}` on the unit ball (zero outside) is in
  `L²`, but `u² = |x|^{−2n/3}` has `∫ u⁴ = ∞` near `0`, so `L² = H⁰` is not an algebra.
- Composition with `Φ(u) = u²`, `n = 1`, `k = 1`: `‖(u²)′‖₂ = ‖2uu′‖₂ ≤ 2‖u‖_∞‖u′‖₂`, the constant
  `2 sup_K |u|` predicted by the composition estimate.

*Needs:* §§4.1–4.2; Mathlib Hölder's inequality; Tau Ceti's Leibniz rule
`TauCeti.HasWeakLineDerivOn.contDiffOn_smul`, `TauCeti.HasWeakFDerivOn.contDiffOn_smul` and
`TauCeti.HasWeakLineDerivOn.lipschitzOnWith_smul` (smooth or Lipschitz factor; two Sobolev
factors by density through §4.4), `TauCeti.HasWeakFDerivOn` and the chain rule for
`C^∞ ∘ (C¹ ∩ W^{1,2}_loc)`.

### 4.4 Friedrichs mollifiers

Construct `J_ε u = φ_ε ⋆ u` with `φ ∈ C_c^∞(E)` even, nonnegative, `∫ φ = 1`,
`φ_ε = ε^{−n}φ(·/ε)` (Mathlib `MeasureTheory.convolution`). Prove: `J_ε` preserves
Λ-periodicity and maps `Hᵏ_Λ` into `⋂_j Hʲ_Λ`; `‖J_εu‖_{Hᵏ_Λ} ≤ ‖u‖_{Hᵏ_Λ}`; `J_ε` is symmetric
for the `L²_Λ` pairing; `∂ᵢJ_ε = J_ε∂ᵢ`; `J_εu → u` in `Hᵏ_Λ`; `‖J_εu‖_{Hᵏ⁺¹_Λ} ≤ Cε^{−1}‖u‖_{Hᵏ_Λ}`
and, for `k ≥ 1`, `‖J_εu − u‖_{Hᵏ⁻¹_Λ} ≤ Cε‖u‖_{Hᵏ_Λ}`; and Friedrichs' lemma: for `a` bounded and
Lipschitz, `‖J_ε(a∂ᵢu) − a∂ᵢJ_εu‖_{L²_Λ} ≤ C(‖a‖_∞ + Lip a)‖u‖_{L²_Λ}` for `u ∈ H¹_Λ`, the
commutator extends to `L²_Λ` with the same bound and tends to `0` strongly as `ε → 0`
(Majda1984, Ch. 2, §2.1; Friedrichs1954). For `Λ = 0` the contraction, the commutation with
derivatives and the convergence `J_εu → u` are, in Tau Ceti's `Wkp` norm,
`TauCeti.Wkp.norm_normedBumpL_le_one`, `TauCeti.Wkp.lowerOrder_normedBumpL` with
`TauCeti.Wkp.iteratedGradient_normedBumpL`, and `TauCeti.Wkp.tendsto_normedBumpL` at `p = 2`, and
are cited, not reproved (in the multi-index norm of §4.1 the contraction is Young's inequality
applied to each `∂^αu`); proved here are the Λ-periodic transfer through the localisation of
§4.1, the `ε^{−1}` gain and `ε` loss bounds, the `L²_Λ` symmetry and Friedrichs' lemma.

**Checks.**

- `J_ε` fixes constants (for full-rank `Λ`) because `∫ φ_ε = 1`; the wrong scaling
  `φ_ε = φ(·/ε)` multiplies constants by `εⁿ`.
- `n = 1`, `Λ = 2πℤ`: `J_ε cos(mx) = φ̂(εm) cos(mx)` with `φ̂(η) = ∫ φ(y) cos(ηy) dy`, a factor in
  `[−1, 1]` tending to `1` as `εm → 0`; with `m ≈ 1/ε` the gain `ε^{−1}` in the `Hᵏ⁺¹` bound is
  attained up to a constant, so it cannot be improved. The loss bound needs `k ≥ 1`: for `k = 0` it
  would read `‖J_εu − u‖_{L²} ≤ Cε‖u‖_{L²}`, but `‖J_ε cos(mx) − cos(mx)‖₂ = |1 − φ̂(εm)|‖cos(mx)‖₂`
  tends to `‖cos(mx)‖₂` as `m → ∞` (Riemann–Lebesgue), exceeding `Cε‖cos(mx)‖₂` once `Cε < 1`; for
  `k = 1` it holds, since `|1 − φ̂(η)| ≤ |η|∫|y|φ(y) dy` gives
  `|1 − φ̂(εm)|√π ≤ Cεm√π ≤ Cε‖cos(mx)‖_{H¹_Λ}` with `‖cos(mx)‖²_{H¹_Λ} = π(1 + m²)`.
- Friedrichs' commutator vanishes for constant `a` (`J_ε` commutes with `∂ᵢ`). For `a(x) = x`
  on `ℝ` (only its Lipschitz constant enters) it equals `ψ′ ⋆ u` with `ψ(z) = −zφ_ε(z)`, and
  `‖ψ′‖_{L¹} = ∫ |φ(w) + wφ′(w)| dw` does not depend on `ε`, as the lemma predicts; a bound of
  the form `Cε^{−1}` would be the trivial one.

*Needs:* §4.1; Mathlib `MeasureTheory.convolution`, `ContDiffBump`, Young's inequality for
convolution; Tau Ceti `TauCeti.Wkp.normedBumpL`, `TauCeti.Wkp.norm_normedBumpL_le_one`,
`TauCeti.Wkp.lowerOrder_normedBumpL`, `TauCeti.Wkp.iteratedGradient_normedBumpL`,
`TauCeti.Wkp.tendsto_normedBumpL` and `TauCeti.Wkp.dense_contDiff_representatives` for the
statements on `Λ = 0`.

### Examples

Gaussians and trigonometric polynomials on the cylinder are the worked members of `Hᵏ_Λ`; the
critical logarithm and the `|x|^{−n/3}` singularity are the negative controls for the embedding
and the algebra property.

### Dependencies

Tau Ceti's Sobolev spaces and Mathlib; no earlier layer.

## Layer 5: energy estimates for linear symmetric hyperbolic systems

### 5.1 Linear symmetric hyperbolic operators and the energy identity

Define a *linear symmetric hyperbolic operator* on `[0, T] × E` (Λ-periodic coefficients) as
`LW = A⁰∂_tW + Σᵢ Aⁱ∂ᵢW + BW` with `A^μ : [0, T] × E → Sym_N` of class `C¹` with bounded
derivatives, `A⁰ ≥ λ₀I` for some `λ₀ > 0`, and `B` continuous and bounded. Define its energy
`E(t) = ∫_F ⟨A⁰(t)W(t), W(t)⟩`. Prove the Friedrichs energy identity for
`W ∈ C¹([0, T]; L²_Λ) ∩ C([0, T]; H¹_Λ)`:

    dE/dt = ∫_F ⟨(∂_tA⁰ + Σᵢ ∂ᵢAⁱ − B − Bᵀ)W, W⟩ + 2∫_F ⟨LW, W⟩

and the `L²` estimate `‖W(t)‖_{L²_Λ} ≤ Ce^{Ct}(‖W(0)‖_{L²_Λ} + ∫₀ᵗ ‖LW(s)‖_{L²_Λ} ds)` with `C`
depending on `λ₀`, `sup‖A⁰‖`, `sup|∂A^μ|` and `sup‖B‖`; hence uniqueness for the linear Cauchy
problem in this class (Friedrichs1954, pp. 345–392; Majda1984, Ch. 2, §2.1; LukNotes line 679,
Proposition 4.1, for the wave equation).

- The identity is invariant under multiplying `L` by a positive constant and under Λ-translation.
- The estimate holds backwards in time with the same constant.

**Checks.**

- Scalar transport `A⁰ = 1`, `A¹ = a`, `B = 0`: the solution is `W(t, x) = W₀(x − at)` and `E` is
  constant, as the identity gives.
- `A⁰ = I`, `Aⁱ = 0`, `B = bI` (`b` constant): `E(t) = e^{−2bt}E(0)`, matching the term
  `−(B + Bᵀ)`; a sign error would give `e^{2bt}`.
- The non-symmetric `A¹ = [[0, 1], [0, 0]]` with `A⁰ = I`, `B = 0` has solutions
  `W = (g(x) − tf′(x), f(x))` whose `L²` norm grows like `t‖f′‖₂`, so no `L²` estimate in terms of
  `‖W(0)‖₂` holds: symmetry is necessary.

*Needs:* §4.1 (integration by parts on `F`); Tau Ceti `TauCeti.le_mul_exp_of_le_add_mul_integral`.

### 5.2 Weighted energies with characteristic-monotone weights

Let `χ : [0, T] × E → [0, ∞)` be Lipschitz and Λ-periodic, with `χ(t, ·)` supported in a set
whose image in `E/Λ` is compact, and let `W` be `C¹` on a neighbourhood of `{χ > 0}` in
`[0, T] × E`. Call `χ` *characteristic-monotone* for `L` when `∂_tχ A⁰ + Σᵢ ∂ᵢχ Aⁱ` is negative
semidefinite at almost every point of `{χ > 0}`. Prove that then
`E_χ(t) = ∫_F χ⟨A⁰W, W⟩` satisfies `E_χ(t) ≤ e^{Ct}E_χ(0)` whenever `|LW| ≤ C₁|W|` on `{χ > 0}`,
with `C` depending on `λ₀`, the coefficient bounds and `C₁`; in particular `W = 0` on
`{χ(0, ·) > 0}` forces `W = 0` on `{χ > 0}`. For a quasilinear system linearised at `U₁`
(§2.1, difference bound) the condition reads `σ(U₁; dχ) ≤ 0`, and for the Euler systems
`∂_tχ + v₁·∇χ + c₁|∇χ| ≤ 0` almost everywhere on `{χ > 0}` (LukNotes line 724, Proposition 4.4,
the localised energy of the wave equation on backward cones; Majda1984, Ch. 2, §2.3).

- The proof differentiates `E_χ`, which is Lipschitz in `t`, integrates by parts in `x` against
  the Lipschitz weight, and drops the term `∫_F⟨σ(dχ)W, W⟩ ≤ 0`.
- The truncated periodised moving cone `χ = φ₊` with
  `φ(t, x) = max_{λ∈Λ} (R − |x − λ − x₀ − tw| − Mt)` (for `Λ = 0`,
  `χ = (R − |x − x₀ − tw| − Mt)₊`) is Lipschitz, Λ-periodic, supported modulo `Λ` in a ball, and
  characteristic-monotone for every operator dominated by `(M, w)` on its support: at almost
  every point of `{χ > 0}` the differential of `χ` is that of one term attaining the maximum (a
  maximum of Lipschitz functions that is differentiable at a point where an attaining term is
  differentiable has that term's differential), and for that term `dχ = (e·w − M, −e)` with `e`
  a unit vector, so `σ(dχ) = −σ((M − e·w, e)) ≤ 0` because `M − e·w + w·e = M ≥ M|e|`. A single
  cone `R − |x − x₀ − tw| − Mt` is not Λ-periodic when `Λ ≠ 0` (for `n = 1`, `Λ = 2πℤ` and `t = 0`
  it takes the values `R` at `x₀` and `R − 2π` at `x₀ + 2π`) and is not an admissible weight
  there; its periodisation is.

**Checks.**

- Transport with `a = 1`: `χ = (1 − |x| − t)₊` has `∂_tχ + ∂_xχ = −1 − sign x ≤ 0` on `{χ > 0}`;
  `χ = (1 − |x| − t/2)₊` has `−1/2 + 1 = 1/2 > 0` for `x < 0`, and indeed `u = f(x − t)` with
  `f` supported in `(−2, −1)` has `E_χ(0) = 0` but `E_χ(0.9) > 0`, its support `(−1.1, −0.1)`
  meeting `{|x| < 0.55}`.
- Euler at a constant state `(ρ₀, v₀)`, `Λ = 0`: `χ = (R − |x − tv₀| − c₀t)₊` gives
  `∂_tχ + v₀·∇χ + c₀|∇χ| = (e·v₀ − c₀) − v₀·e + c₀ = 0` with `e = (x − tv₀)/|x − tv₀|`: the sound
  cone itself is admissible, with equality.
- A non-moving cone `(R − |x| − Mt)₊` at the state `v₀ = 3`, `c₀ = 1` (`n = 1`) is admissible only
  for `M ≥ 4 = |v₀| + c₀`, while the moving cone needs only `M = 1`.

*Needs:* §5.1; §2.1 (difference bound); Mathlib Rademacher
`LipschitzOnWith.ae_differentiableWithinAt_of_mem` and integration by parts for Lipschitz
functions; Tau Ceti `TauCeti.le_mul_exp_of_le_add_mul_integral`.

### 5.3 `Hᵏ` estimates for the linearised quasilinear system

Fix a quasilinear symmetric hyperbolic system, `k` with `2k > n + 2`, a compact `K ⊆ G` and a
constant state `Ū`. For `U` with values in `K` and
`U − Ū ∈ C([0, T]; Hᵏ_Λ) ∩ C¹([0, T]; Hᵏ⁻¹_Λ)`, and `W` in the same class solving
`A⁰(U)∂_tW + Σᵢ Aⁱ(U)∂ᵢW = f` with `f ∈ C([0, T]; Hᵏ_Λ)`, prove for
`E_k(t) = Σ_{|α|≤k} ∫_F ⟨A⁰(U)∂^αW, ∂^αW⟩` that
`dE_k/dt ≤ C(K)(1 + ‖∂_tU‖_∞ + ‖U − Ū‖_{Hᵏ_Λ})E_k + C(K)E_k^{1/2}‖f‖_{Hᵏ_Λ}` (the commutator
`[∂^α, Aⁱ(U)]∂ᵢW` is bounded through §4.3 by `‖∇U‖_∞‖W‖_{Hᵏ_Λ} + ‖U − Ū‖_{Hᵏ_Λ}‖∇W‖_∞`, and both
`‖∇U‖_∞` and `‖∇W‖_∞` are controlled by the `Hᵏ_Λ` norms since `2k > n + 2`),
and the tame estimate for `W = U − Ū` when `U` itself solves the system with `F(Ū) = 0`:
`dE_k/dt ≤ C(K)(1 + ‖∇U‖_∞)E_k` (Majda1984, Ch. 2, §§2.1–2.2; LukNotes
line 1620, Theorem 6.10, for the analogous breakdown estimate of wave equations). The proof
applies `∂^α`, uses the commutator and composition estimates of §4.3, and §5.1.

- Equivalence of energies: `λ_K‖W‖²_{Hᵏ_Λ} ≤ E_k ≤ Λ_K‖W‖²_{Hᵏ_Λ}` with `λ_K, Λ_K` the extreme
  eigenvalues of `A⁰` on `K`.
- `‖∂_tU‖_∞ ≤ C(K)‖∇U‖_∞` for a solution, since `∂_tU = A⁰(U)⁻¹(F(U) − Σᵢ Aⁱ(U)∂ᵢU)`.

**Checks.**

- Constant `U ≡ Ū`: the coefficients are constant, the commutator terms vanish and `E_k` is
  conserved for `f = 0`, as for scalar transport.
- Burgers `∂_tu + u∂_xu = 0` (`A¹ = u`) with `W = u`: `d/dt‖u‖²₂ = −∫ u²u_x = 0` and
  `d/dt‖u_x‖²₂ = −∫ u_x³`, bounded by `‖u_x‖_∞‖u_x‖²₂`, which is the tame form with `C = 1`.

*Needs:* §§4.2–4.3, §5.1; Tau Ceti `TauCeti.le_mul_exp_of_le_add_mul_integral`.

### 5.4 Linear existence in `Hᵏ_Λ`

Prove: for coefficients `A^μ(t, x)`, `B(t, x)` with `A^μ − Ā^μ, B ∈ C([0, T]; Hᵏ_Λ)` for constant
matrices `Ā^μ`, with `A⁰ − Ā⁰ ∈ C¹([0, T]; Hᵏ⁻¹_Λ)` in addition (so that `∂_tA⁰` is bounded, since
`2(k − 1) > n`), `A⁰ ≥ λ₀I`, `2k > n + 2`, data `W₀ ∈ Hᵏ_Λ` and `f ∈ C([0, T]; Hᵏ_Λ)`, there is a
unique `W ∈ C([0, T]; Hᵏ_Λ) ∩ C¹([0, T]; Hᵏ⁻¹_Λ)` with `LW = f`, `W(0) = W₀`, obeying the estimate
`dE_k/dt ≤ C E_k + C E_k^{1/2}‖f‖_{Hᵏ_Λ}` of §5.3 with `C` depending on `λ₀`, `‖∂_tA⁰‖_∞`,
`sup_t ‖A^μ − Ā^μ‖_{Hᵏ_Λ}` and `sup_t ‖B‖_{Hᵏ_Λ}` (Majda1984, Ch. 2, §2.1; Kato1975, Theorem I, both
with `A⁰` Lipschitz in time; LukNotes line 1158, Theorem 5.3, proves the wave-equation analogue by
duality). The time derivative of `A⁰` enters through the term `∫⟨∂_tA⁰ W, W⟩` of the energy identity
of §5.1, so the hypothesis on `A⁰` is part of the statement; `Aⁱ` and `B` need no time derivative.
Route: the Friedrichs regularisation
`A⁰∂_tW_ε = −Σᵢ J_ε(Aⁱ∂ᵢJ_εW_ε) − BW_ε + f` is an ODE with Lipschitz right-hand side in
`Hᵏ_Λ` and has a solution on `[0, T]` by `IsPicardLindelof` and the uniform bound; the bounds of
§5.3 hold uniformly in `ε` by Friedrichs' lemma; `(W_ε)` is Cauchy in `C([0, T]; L²_Λ)` by §5.1;
the limit is in `C([0, T]; Hᵏ⁻¹_Λ)` with an `Hᵏ` bound by §4.2, solves the equation, and is
strongly continuous in `Hᵏ_Λ` because the weighted energy `E_k(t)` is continuous and the equation is
time-reversible.

**Checks.**

- Constant-coefficient transport: `W = W₀(x − at)`, in `C([0, T]; Hᵏ_Λ)` for every `k`, with
  `W_ε` given on the Fourier side by `e^{−iatmφ̂(εm)²}Ŵ₀(m)`.
- Uniqueness forces the zero solution for zero data and forcing; without symmetry (the Jordan
  block of §5.1) existence in `Hᵏ` with the estimate fails.

*Needs:* §§4.2–4.4, §§5.1–5.3; Mathlib `IsPicardLindelof`,
`IsPicardLindelof.exists_eq_forall_mem_Icc_hasDerivWithinAt`.

### Examples

Transport, the first-order wave system and the Euler system linearised at a constant state are
the worked operators, with the explicit energies above.

### Dependencies

Layer 2 (symbol, dominance, difference bound) and Layer 4.

## Layer 6: local uniqueness and domains of dependence

### 6.1 Lens-shaped domains and local uniqueness

Define a *lens function* on `[t₁, t₂] × E` as a Lipschitz, Λ-periodic `φ` such that for each `t`
the image of `{φ(t, ·) > 0}` in `E/Λ` is relatively compact; its *lens* is
`L_φ = {(t, x) ∈ [t₁, t₂] × E : φ(t, x) > 0}` and its *base* is `L_φ ∩ Σ_{t₁}`. For a classical
solution `U` of a quasilinear symmetric hyperbolic system defined near `L_φ`, `φ` is *spacelike
for `U`* when `σ(U(t, x); dφ(t, x))` is negative semidefinite at almost every point of `L_φ`; for
the Euler systems this reads `∂_tφ + v·∇φ + c|∇φ| ≤ 0` almost everywhere on `L_φ`, that is, the
inward conormal `−dφ` is a future causal covector of the acoustical form of `U` (§3.1). Prove:

**Local uniqueness.** Let `U₁, U₂` be classical solutions of the same quasilinear symmetric
hyperbolic system on a relatively open subset of `[t₁, t₂] × E` containing the closure of `L_φ`,
with `φ` spacelike for `U₁`. If `U₁ = U₂` on the base of `L_φ`, then `U₁ = U₂` on `L_φ`. Only the
cones of `U₁` enter. (Majda1984, Ch. 2, §2.3; LukNotes line 724, Proposition 4.4, for the wave
equation; EperonReallSbierski2019 line 1178, Proposition 4.63, which quotes the standard local
uniqueness; BarGinouxPfaffle2007 lines 3664–3668, Theorem 3.2.11, the linear wave analogue.)
The proof applies §5.2 to `W = U₁ − U₂` with the weight `χ = φ₊`, using the difference bound
of §2.1.

**Moving cones.** For `x₀ ∈ E`, `R > 0`, `w ∈ E` and `M > 0`, the *periodised moving cone*
`φ(t, x) = max_{λ∈Λ} (R − |x − λ − x₀ − (t − t₁)w| − M(t − t₁))` (a maximum over a locally finite
family, since `Λ` is discrete and each term tends to `−∞` as `|λ| → ∞`) is a lens function: it is
Lipschitz with constant `1 + |w| + M`, Λ-periodic, and `{φ(t, ·) > 0}` is the union of the
Λ-translates of the ball of radius `R − M(t − t₁)` about `x₀ + (t − t₁)w`, whose image in `E/Λ` is
relatively compact. For `Λ = 0` it is the single cone `R − |x − x₀ − (t − t₁)w| − M(t − t₁)`, and
when `2R` is less than the least norm of a nonzero element of `Λ` the positive parts of the terms
are pairwise disjoint and `L_φ` is the disjoint union of the Λ-translates of the single cone's
lens. It is spacelike for every `U₁` such that `(M, w)` dominates at `U₁(q)` for `q ∈ L_φ`: at almost
every point of `L_φ` the differential of `φ` is that of a term attaining the maximum (§5.2), and
for that term `σ(U₁; dφ) = −σ(U₁; (M − e·w, e)) ≤ 0` with `e` the unit vector from the term's apex.
For the Euler systems the dominance condition holds iff `M ≥ c(U₁(q)) + |v(U₁(q)) − w|` on `L_φ`
(§2.2). Every lens used in §6.2 and §8.4 is a periodised moving cone.

- The relation "spacelike for `U`" is monotone: shrinking `φ` by a positive factor,
  intersecting two lenses (minimum of two lens functions) or uniting them (maximum, by the
  differential argument above) keeps it.
- Translation, Λ-translation and Galilean boost of a lens are lenses for the transformed
  solution.

**Checks.**

- Constant Euler state `(ρ₀, v₀)` with sound speed `c₀`, `Λ = 0`: `φ = R − |x − tv₀| − c₀t` is
  spacelike,
  with equality `∂_tφ + v₀·∇φ + c₀|∇φ| = 0` (§5.2): null lateral boundaries are admitted.
- `n = 1`, `v₀ = 3`, `c₀ = 1`, `Λ = 0`: the static cone `R − |x| − Mt` is spacelike iff `M ≥ 4`,
  the moving cone with `w = 3` iff `M ≥ 1`; with `Λ = 2πℤ` and `R < π` the periodised cones have
  the same differentials on each translate and the same thresholds. A formulation demanding
  `τ > |v·ξ| + c|ξ|` for the conormal (static cones only) loses this sharpness.
- Transport `a = 1` with `φ = 1 − |x| − t/2`: not spacelike for `x < 0`, and uniqueness fails on
  `L_φ` (§5.2, the travelling bump).

*Needs:* §2.1 (difference bound), §2.2 (dominance for Euler), §5.2.

### 6.2 Uniqueness on domains of dependence

Fix a quasilinear symmetric hyperbolic system and a continuous map `κ : G → (0, ∞) × E` such
that `κ(U)` dominates at `U` for every `U ∈ G` (for the Euler systems, the acoustical cone map of
§2.2). Prove:

**Theorem.** Let `D ⊆ H_{t₀}` be a domain, `U₁` a classical solution on `D` with cone field
`κ ∘ U₁`, `S` a relatively open subset of `Σ_{t₀}` contained in `D`, `O ⊆ H_{t₀}` relatively open
and `U₂` a classical solution on `O` with `U₁ = U₂` on `S ∩ O`. If `p ∈ D⁺_D(S)` and
`J⁻_D(p) ⊆ O`, then `U₁ = U₂` on `J⁻_D(p)`.

Route: `J⁻_D(p)` is compact and meets `Σ_{t₀}` inside `S` (§3.3); choose a compact neighbourhood
`N ⊆ D ∩ O` of it whose slice at `t₀` lies in `S`, on which `κ ∘ U₁` is uniformly continuous; sweep
from `t₀` to `t_p` in steps `h`, applying §6.1 to periodised moving cones with apex data
`(c(q) + 2ε, v(q))`
at points `q` of the shrinking neighbourhoods; each step loses a margin `O(εh)`, so for `ε`
small the total loss `O(ε(t_p − t₀))` stays below the distance from `J⁻_D(p)` to the complement
of `N` (Majda1984, Ch. 2, §2.3; ChristodoulouMiao2014 lines 872–878; EperonReallSbierski2019
lines 1178–1189).

- *Slab uniqueness.* Two classical solutions on `[t₀, t₁) × E` with the same data on `Σ_{t₀}`
  and bounded cone fields on `[t₀, t₂] × E` for each `t₂ < t₁` agree (§3.3, slabs).
- *Domain-of-dependence form.* If `U₁` on `D` and `U₂` on `O ⊇ D` agree on `S`, then they
  agree on `D⁺_D(S)`.

**Checks.**

- `n = 1`, `p = ρ²/2`, the constant state `(1, 0)` (`c = 1`) and any classical solution on
  `[0, 1) × ℝ` equal to it on `{0} × (−2, 2)` agree on `{|x| < 2 − t}`, for instance at
  `(1/2, 1.4)`, and no claim is made at `(1/2, 1.6)`.
- The hypothesis `J⁻_D(p) ⊆ O` cannot be dropped: in the counterexample of §8.2 the two solutions
  agree on `S` and differ at `(2, 0)`, where the causal past for one solution leaves the domain
  of the other.
- For the expanding flow of §3.3 the theorem gives uniqueness exactly on
  `{|x| < 2√(1 + t) − (1 + t)}` from data on `(−1, 1)`, not on the static cone `{|x| < 1 − t}`
  computed with the wrong (frozen) field.

*Needs:* §3.3 (compact pasts, slabs), §6.1, Layer 2.

### Examples

The constant states and the expanding flow give explicit lenses and domains of dependence;
the travelling bump is the negative control.

### Dependencies

Layers 2, 3 and 5.

## Layer 7: local well-posedness

### 7.1 Local well-posedness for quasilinear symmetric hyperbolic systems

Prove: let a quasilinear symmetric hyperbolic system be given, `Ū ∈ G` with `F(Ū) = 0`, a
period group `Λ`, `k ∈ ℕ` with `2k > n + 2`, a compact `K ⊆ G` and `M > 0`. There is
`T = T(M, K) > 0` such that for every `U₀ : E → G` with `U₀ − Ū ∈ Hᵏ_Λ`,
`‖U₀ − Ū‖_{Hᵏ_Λ} ≤ M` and `U₀(E) ⊆ K`:

- *existence:* there is a Λ-periodic `U` with `U − Ū ∈ C([0, T]; Hᵏ_Λ) ∩ C¹([0, T]; Hᵏ⁻¹_Λ)`,
  which is `C¹` on `[0, T] × E` and a classical solution with `U(0) = U₀`;
- *uniqueness:* `U` is the only such solution, and the only classical solution on
  `[0, T) × E` with this data and bounded cone field on each `[0, t₂] × E` (§6.2);
- *continuous dependence:* if `U₀^m → U₀` in `Ū + Hᵏ_Λ` with values in `K`, the solutions
  converge in `C([0, T]; Hᵏ_Λ)`;
- *continuation:* the maximal existence time `T*` satisfies: if `T* < ∞`, then
  `∫₀^{T*} ‖∇U(t)‖_∞ dt = ∞` or the closure of `U([0, T*) × E)` is not a compact subset of `G`;
- *persistence:* if `U₀ − Ū ∈ Hᵏ′_Λ` with `k′ > k`, the solution stays in `Hᵏ′_Λ` on the same
  maximal interval.

(Kato1975, Theorem I; Majda1984, Ch. 2, Theorem 2.1 and the continuation principle of §2.2;
Dafermos2016, Ch. V, Theorem 5.1.1; LukNotes line 1239, Theorem 6.1, and line 1620,
Theorem 6.10, for quasilinear wave equations.) Route: the iteration
`A⁰(U^m)∂_tU^{m+1} + Σᵢ Aⁱ(U^m)∂ᵢU^{m+1} = F(U^m)` with mollified data, solved by §5.4 (the
iterate satisfies `U^m − Ū ∈ C([0, T]; Hᵏ_Λ) ∩ C¹([0, T]; Hᵏ⁻¹_Λ)`, so `A⁰(U^m) − A⁰(Ū)` has the time
regularity `C¹([0, T]; Hᵏ⁻¹_Λ)` that §5.4 asks, by the composition and product estimates of §4.3 at
order `k − 1`, where `2(k − 1) > n`);
boundedness in `Hᵏ_Λ` on a uniform interval by §5.3, contraction in `C([0, T]; L²_Λ)` by §5.1,
convergence in `C([0, T]; Hᵏ⁻¹_Λ)` by §4.2, top-order continuity and continuous dependence by the
Bona–Smith regularisation of the data; continuation by the tame estimate of §5.3 and Grönwall.

- The solution of `Λ`-periodic data is unique among all solutions, hence Λ-periodic, by
  translation invariance of the system.
- The data-to-solution map commutes with time translation; the solutions of a system and of its
  multiple by a positive smooth scalar coincide.

**Checks.**

- `F(Ū) = 0` is necessary on non-compact carriers: for `N = 1`, `A⁰ = 1`, `Aⁱ = 0`, `F ≡ 1`,
  `Ū = 0`, the solution `u = u₀ + t` is not in `Ū + L²(ℝⁿ)` for `t > 0`.
- Burgers `∂_tu + u∂_xu = 0` (a symmetric system with `A¹ = u`) with `u₀ = −e^{−x²}`:
  `min u₀′ = −√2 e^{−1/2}` at `x = −1/√2`, so `T* = e^{1/2}/√2 ≈ 1.1658`; the values stay in
  `[−1, 0]` while `∫₀^{T*} ‖u_x‖_∞ = ∞`, the first alternative of the continuation criterion.
- Constant data `U₀ ≡ Ū` give the constant solution with `T* = ∞`.

*Needs:* §§4.2–4.4, §§5.1–5.4, §6.2; Tau Ceti `TauCeti.le_mul_exp_of_le_add_mul_integral`.

### 7.2 Compressible Euler

Prove, for a barotropic equation of state `(I, p)`, a period group `Λ`, `k` with `2k > n + 2`, a
background `(ρ₀, v₀) ∈ I × E`, and data `(ρ̄, v̄)` with `ρ̄ − ρ₀, v̄ − v₀ ∈ Hᵏ_Λ` and
`ρ_* ≤ ρ̄ ≤ ρ^*` on `E` for some `[ρ_*, ρ^*] ⊆ I`: there are `T > 0` and a unique classical solution
`(ρ, v)` on `[t₀, t₀ + T] × E` with `(ρ − ρ₀, v − v₀) ∈ C([t₀, t₀ + T]; Hᵏ_Λ)` and
`ρ ≥ ρ_*/2`, Λ-periodic, depending continuously on the data; if the maximal time is finite then
`∫ ‖∇(ρ, v)‖_∞ dt = ∞` or the closure of the range of `ρ` is not a compact subset of `I`. The same
holds for the full system with `s̄ − s₀ ∈ Hᵏ_Λ` and `(ρ̄, s̄)(E)` contained in a compact subset of
`𝒪`. (AbbresciaSpeck2022 lines 172–179, the full system on `ℝ × 𝕋²` with non-vacuum `H³` data;
ChristodoulouMiao2014 lines 866–868; LuoYu2023a lines 82–95; Majda1984, Ch. 2.) Route: §7.1
applied to the symmetrisers of §2.2, with `F = 0`; the bound `ρ ≥ ρ_*/2` from continuity in
`C([t₀, t₀ + T]; C_b)` after shrinking `T`.

- For `Λ = 0` and `Λ = Λ_cyl` these are the Euclidean and cylinder carriers of the Conventions.
- The solution is Galilean covariant: boosting the data by `w` boosts the solution.

**Checks.**

- Simple-wave blow-up, `n = 1`, `p = ρ³/3` (so `c = ρ`): the Riemann invariants `v ± ρ` solve
  Burgers equations. Data `ρ̄ = 1 + e^{−x²}/2`, `v̄ = ρ̄ − 1` keep `v − ρ ≡ −1` and give
  `v + ρ = 1 + e^{−x²}` at `t = 0`, so `T* = e^{1/2}/√2 ≈ 1.1658` while `ρ` stays in `[1, 3/2]`:
  the gradient alternative of the criterion, with no vacuum.
- Constant data give global solutions; data with `ρ̄ = 0` somewhere are excluded (vacuum).
- On `Λ_cyl` with `n = 2`, data depending only on `x¹` give solutions depending only on
  `(t, x¹)`, by uniqueness and invariance under translations in `x²`.
- Sobolev threshold for `n = 3`: `k = 3` gives `2k = 6 > 5 = n + 2`, the `H³` setting of
  AbbresciaSpeck2022 line 179; `k = 2` gives `4 < 5` and is excluded.

*Needs:* §2.2, §7.1.

### 7.3 Uniformly local data

Prove: let `G` contain the segments `[Ū, U]` for `U ∈ K` (for the Euler systems with convex `I` or
convex `𝒪` this holds), fix `χ ∈ C_c^∞(E)` equal to `1` on the unit ball, and let `U₀ : E → K`
satisfy `sup_{y∈E} ‖χ(· − y)(U₀ − Ū)‖_{Hᵏ(E)} ≤ M`. Then there are `T = T(M, K) > 0` and a unique
classical solution on `[0, T] × E` with data `U₀` and `sup_y ‖χ(· − y)(U(t) − Ū)‖_{Hᵏ(E)}`
bounded on `[0, T]`; it commutes with every translation that fixes `U₀`, so Λ-periodic data give
Λ-periodic solutions for every period group (Kato1975, Theorem I). Route: solve §7.1 for the
localised data `Ū + χ(·/r − y/r)(U₀ − Ū)`, glue by §6.2 on the cones of speed
`sup_K` of the maximal speed (§2.1), and use slab uniqueness.

- Data equal to two different constant states outside a compact set are uniformly local.

**Checks.**

- The data `v̄ = 2` for `x ≤ −1`, `v̄ = −2` for `x ≥ 1`, smooth in between, `ρ̄ ≡ 1/2`
  (`p = ρ²`) are uniformly local but not in `Ū + H¹(ℝ)` for any constant `Ū`.
- Periodic data in all directions (full-rank `Λ`) are uniformly local, and the solution of §7.1
  for full-rank `Λ` agrees with the one here.
- Without the segment hypothesis the localised data may leave `G`; for the barotropic system
  `G = I × E` is convex, so no condition arises.

*Needs:* §2.1, §6.2, §7.1.

### Examples

The Burgers and simple-wave blow-ups fix the continuation criterion with computed blow-up
times; constant states are global.

### Dependencies

Layers 2, 4, 5 and 6.

## Layer 8: developments and maximal developments

### 8.1 Initial data sets and developments

Define an *initial data set* for either Euler system as a time `t₀`, a period group `Λ`, a
Λ-invariant open `S ⊆ E`, and Λ-periodic `C¹` data `Ū : S → G` (barotropic: `(ρ̄, v̄)` with
`ρ̄ ∈ I`; full: `(ρ̄, v̄, s̄)` with `(ρ̄, s̄) ∈ 𝒪`). Define a *development* of it as a pair `(D, U)`
with `D ⊆ H_{t₀}` a Λ-invariant domain, `D ∩ Σ_{t₀} = {t₀} × S`, `U` a Λ-periodic classical
solution on `D` with `U(t₀, x) = Ū(x)` for `x ∈ S`, and `D = D⁺_D({t₀} × S)` for the acoustical
cone field of `U`. Order developments by `(D₁, U₁) ≤ (D₂, U₂)` iff `D₁ ⊆ D₂` and `U₂ = U₁` on
`D₁`; call two developments *compatible* when `U₁ = U₂` on `D₁ ∩ D₂`. (ChristodoulouMiao2014
lines 864–880; Christodoulou2019 lines 130–138; LuoYu2023b lines 417–419 and line 910,
Definition 2.13; BarGinouxPfaffle2007 line 1006, Definition 1.3.5; EperonReallSbierski2019
lines 1129–1144; Christodoulou2007, Ch. 1.)

- `≤` is a partial order on the developments of fixed data.
- *Past-closed truncation.* If `(D, U)` is a development and `D′ ⊆ D` is a Λ-invariant domain
  with `D′ ∩ Σ_{t₀} = {t₀} × S` and `J⁻_D(q) ⊆ D′` for every `q ∈ D′`, then `(D′, U|_{D′})` is a
  development below `(D, U)`; time truncations `D ∩ {t < T}` are examples.
- Galilean boosts, spacetime translations and Λ-translations act on developments of the
  correspondingly transformed data.
- If `S = ∅` the only development is `(∅, ∅)`.
- If `(D, U) ≤ (D′, U′)` then `J⁻_{D′}(p) ⊆ D` for every `p ∈ D`: a causal curve of `U′` leaving
  `D` would leave it at a time `> t₀` and give a past-inextendible curve in `D` that misses the
  data.

**Checks.**

- Constant data `(ρ₀, v₀)` on `B(0, R)` with sound speed `c₀`: the constant solution on
  `{|x − v₀(t − t₀)| < R − c₀(t − t₀)}` is a development.
- With `n = 1`, `c₀ = 1`, `v₀ = 0` and data on `(−1, 1)`, the domain `{|x| < 1 + t}` with the
  constant solution is not a development (§3.3), nor is `{|x| < 1 − t/2}`, whose boundary is
  timelike (§8.4 (a)).
- The expanding flow with `p = ρ²/2`, `ρ₀ = 1` on `(−1, 1)`: `{|x| < 2√(1 + t) − (1 + t)}` with the
  flow is a development.

*Needs:* §1.2, §1.3, §3.3.

### 8.2 Uniqueness, compatibility and maximal developments

Prove, for developments `(D₁, U₁)`, `(D₂, U₂)` of the same data:

- *Maximal common development.* The set `W₁₂ = {p ∈ D₁ : J⁻_{D₁}(p) ⊆ D₂}`, with causal pasts for
  the field of `U₁`, carries `U₁ = U₂`, equals `W₂₁`, and with this solution is a development; it
  is the largest development below both. In particular `D₁ ⊆ D₂` implies
  `(D₁, U₁) ≤ (D₂, U₂)`. Route: §6.2 with `D = D₁`, `O = D₂`, and the first-exit argument of §3.3.
- *Compatibility.* The developments are compatible iff `W₁₂ = D₁ ∩ D₂` iff they have a common
  upper bound; the union of any pairwise compatible family, with the glued solution, is a
  development and the least upper bound of the family.
- *Maximal developments.* Every development lies below a maximal one (`zorn_le_nonempty₀`,
  chains being compatible families).
- *Uniqueness criterion.* If the data extend to a classical solution `U_*` on all of `H_{t₀}`
  (Λ-periodic), then every development is below `(D⁺_{H_{t₀}}({t₀} × S), U_*)`, which is
  therefore the unique maximal development (EperonReallSbierski2019 line 1342, Corollary 4.69,
  for quasilinear wave equations).

The classical statement that any two developments agree on `D₁ ∩ D₂`, so that the union of all
developments is the unique maximal development (ChristodoulouMiao2014 lines 872–880), is false
on a fixed Galilean background; the Checks give a counterexample with constant states. Uniqueness
of a maximal development is a property to be proved for the data at hand, as
EperonReallSbierski2019 (line 767, Theorem 3.45, and lines 1195–1210) and AbbresciaSpeck2022
(lines 408–414) explain; the criterion above and the existence theorem of §8.3 are the forms in
which it holds here.

**Checks.**

- *Non-uniqueness.* `n = 1`, `p = ρ²` (`c = 1` at `ρ = 1/2`), `t₀ = 0`,
  `S = (−∞, −1) ∪ (1, ∞)`, data `(1/2, 2)` on `(−∞, −1)` and `(1/2, −2)` on `(1, ∞)`. The towers
  `T_L = {x < −1 + t}` and `T_R = {x > 1 − t}` are the domains of dependence of the two half-lines
  for the constant states (`v − c = 1`, `v + c = −1`). Then `D₁ = T_L ∪ (T_R ∩ {t < 1})` and
  `D₂ = (T_L ∩ {t < 1}) ∪ T_R` with the constant states are developments, `(2, 0) ∈ D₁ ∩ D₂`, and
  `v₁(2, 0) = 2 ≠ −2 = v₂(2, 0)`. No development lies above both, so there are at least two
  maximal developments. Here `W₁₂ = D₁ ∩ D₂ ∩ {t < 1}`, and `D₁ ∩ D₂` is disconnected (its slice at
  `t = 1` is empty), as EperonReallSbierski2019 line 1338, Corollary 4.68, requires of any
  disagreement.
- Constant data on `B(0, R)` extend to the constant solution on `H_{t₀}`, so
  `{|x − v₀(t − t₀)| < R − c₀(t − t₀)}` is the unique maximal development.
- Truncations `D ∩ {t < T}` of a development are below it and compatible with it; two
  truncations at different times are comparable.

*Needs:* §3.3, §6.2, §8.1; Mathlib `zorn_le_nonempty₀`.

### 8.3 Existence of developments

Prove: if the data `(S, Ū)` extend to data `U₀` on `E` satisfying the hypotheses of §7.2 (or of
§7.3), and `U` is the solution on `O = [t₀, t₀ + T) × E`, then `(D⁺_O({t₀} × S), U)` is a
development; it is the largest development contained in `O`; two extensions give compatible
developments that coincide below the smaller existence time. For full Cauchy data `S = E` every
development is compatible with `(O, U)`, so every maximal development contains the slab `O`
(ChristodoulouMiao2014 lines 866–872; AbbresciaSpeck2022 lines 175–179; LuoYu2023b lines 417–419;
Kato1975, Theorem I and Majda1984, Ch. 2, for the slab). Route: openness and idempotence of
`D⁺` (§3.3), §6.2 for compatibility, §8.2.

- For data on a half-space `{x¹ > 0}`, the part of the boundary of the development along which
  the solution extends as a classical solution is null by §8.4; this is the configuration of
  LuoYu2023b lines 417–419.

**Checks.**

- `S = E` with constant data: `O = H_{t₀}` (`T = ∞`), and the unique maximal development is
  `H_{t₀}` itself.
- `S = {x¹ > 0}` with constant data `(ρ₀, v₀)`: the development is `{x¹ > (v₀¹ + c₀)(t − t₀)}`,
  and the extension `U₀ ≡ (ρ₀, v₀)` versus any other `Hᵏ` extension gives the same development
  below the common time.
- With `p = ρ³/3`, the simple-wave data of §7.2 on `S = E` have every maximal development
  containing `[0, T) × ℝ` for each `T < e^{1/2}/√2`.

*Needs:* §3.3, §6.2, §7.2, §7.3, §8.2.

### 8.4 The regular boundary of a maximal development

Prove, for a development `(D, U)` of either Euler system, a point `q ∈ ∂D` with `t(q) > t₀`, an
open neighbourhood `N` of `q` and a `C¹` function `φ` on `N` with `dφ(q) ≠ 0` and
`D ∩ N = {φ < 0}`:

- (a) If the acoustical field `(c, v)` of `U` extends continuously to `q` with `c(q) > 0`, then
  `∂_tφ(q) + v(q)·∇φ(q) ≥ c(q)|∇φ(q)|`: the boundary is spacelike or null at `q` with `D` on its
  past side. Route: otherwise a past-directed timelike vector `X` with `dφ(q)(X) > 0` exists, and
  segments in direction `X` from points of `D` near `q` are causal and leave `D` at time `> t₀`,
  contradicting `D = D⁺_D({t₀} × S)`.
- (b) If moreover `(D, U)` is maximal and `U` extends to a classical solution `Ũ` on `N` (and on
  the Λ-translates of `N`, periodically), then `∂_tφ(q) + ṽ(q)·∇φ(q) = c̃(q)|∇φ(q)|` and
  `∇φ(q) ≠ 0`: `∂D` is a null hypersurface of the acoustical form of `Ũ` at `q`. Route: if the
  inequality were strict, the lens `{φ ≥ 0} ∩ {ψ > 0}` together with its Λ-translates, where
  `ψ` is the periodised moving cone of §6.1 with apex data `(ε, x_q, ṽ(q), M)`, that is
  `ψ = ε − |x − x_q − (t − t_q)ṽ(q)| − M(t − t_q)` near `q` and its Λ-translates elsewhere, with
  `M > c̃ + |ṽ − ṽ(q)|` near `q` and `2ε` below the least norm of a nonzero period, added to `D`
  with `Ũ`, would give a strictly larger development: past causal curves from the lens stay in it
  until they reach `{φ = 0}`, and cannot re-enter it from `D` because `φ` increases along
  future causal curves near `q`.

(Christodoulou2019 lines 131–138: the regular part `C` of the boundary of the maximal
development is a null hypersurface; ChristodoulouMiao2014 lines 880–886; LuoYu2023b
lines 417–419; EperonReallSbierski2019 line 1603, Theorem 4.82, for the role of maximal
developments lying on one side of their boundary.)

- Consequently, a `C¹` hypersurface contained in `∂D ∩ {t > t₀}`, with `D` on one side and along
  which `U` extends as a classical solution, is null for the acoustical form of the extension at
  each of its points.

**Checks.**

- Constant state on `B(0, R)`: `φ = |x − v₀(t − t₀)| − R + c₀(t − t₀)` gives
  `∂_tφ + v₀·∇φ = −e·v₀ + c₀ + v₀·e = c₀ = c₀|∇φ|`: null.
- Expanding flow (`p = ρ²/2`, `ρ₀ = 1`) at `t = 1`, `x = 2√2 − 2`: with
  `φ = x − (2√(1 + t) − (1 + t))`, `∂_tφ = 1 − 1/√2 ≈ 0.2929`, `v∂_xφ = √2 − 1 ≈ 0.4142`, sum
  `1/√2`, equal to `c|∂_xφ| = (1 + t)^{−1/2} = 1/√2`: null.
- The truncation `D ∩ {t < T}` has `φ = t − T` with `∂_tφ = 1 > 0 = c|∇φ|`: spacelike, which (a)
  allows and (b) excludes, and indeed truncations are not maximal. The domain `{|x| < 1 − t/2}`
  with `c = 1`, `v = 0` has `∂_tφ = 1/2 < 1 = c|∇φ|`: timelike, excluded by (a), and indeed it is
  not a development.

*Needs:* §3.1 (covector classification), §3.2 (local existence of causal segments, concatenation),
§3.3, §6.1 (moving cones), §8.1, §8.2.

### Examples

The worked domains of dependence of the constant states and of the expanding flow are maximal
developments with null boundaries; the counter-flowing constant states give two incompatible
developments.

### Dependencies

Layers 1, 2 (§2.2), 3, 6 and 7.

## Downstream consumers

- **Compressible Euler equations, Part II** (characteristic data and acoustical geometry):
  characteristic initial data on `S₀ ∪ C` with the constraint and compatibility conditions on
  `C`, acoustical eikonal functions and null foliations (ChristodoulouMiao2014 lines 880–910;
  LuoYu2023b line 910, Definition 2.13), and the ruling of the regular boundary of §8.4 by null
  geodesics issuing from the edge of the data when the boundary is `C²` and the metric `C^{1,1}`.
  It consumes §§3.1, 3.3, 6.2 and 8.1–8.4 here and a Lorentzian roadmap for geodesics.
- **Shock formation and shock development** (Christodoulou2007; Speck2016, §1.11; LukSpeck2018;
  AbbresciaSpeck2022; Christodoulou2019): their theorems describe portions of maximal
  developments of `Hᵏ` data through the acoustical metric and are stated against §7.2, §8.2–§8.4.
- **Rarefaction waves** (LuoYu2023a, LuoYu2023b): the future domain of dependence of data on a
  half-space and its null boundary (§8.3, §8.4) are the carriers of their main theorems.
- **Lorentzian causality theory**, when planned: the identification of `D⁺_D(S)` here with the
  domain of dependence of a general Lipschitz-regular spacetime takes the acoustical field as
  its first example.
- **Relativistic fluids and the Einstein equations in harmonic or symmetric hyperbolic
  formulations**: §7.1 is the library's first quasilinear symmetric hyperbolic well-posedness
  theorem and §6.2 its first domain-of-dependence uniqueness theorem.

## Worked examples

- *Supersonic counter-flow.* With `p = ρ²`, `ρ = 1/2`, `c = 1`, velocity `2` on the left and `−2`
  on the right, the towers `x < −1 + t` and `x > 1 − t` overlap for `t > 1`; at `(2, 0)` the two
  developments give velocities `2` and `−2`. With a smooth transition on `[−1, 1]` and `S = ℝ`
  the same towers together with a development near `Σ₀` from §7.3 give two incompatible
  developments of full Cauchy data, so the failure is not an artefact of the gap in `S`.
- *Expanding flow.* `ρ = (1 + t)^{−1}`, `v = x/(1 + t)`, `p = ρ²/2`: the maximal development of the
  data on `(−1, 1)` is `{|x| < 2√(1 + t) − (1 + t)}`, closing at `t = 3`, with null boundary.
- *Simple wave.* `p = ρ³/3`: the Riemann invariants solve Burgers' equation and the gradient
  blows up at `T* = e^{1/2}/√2` for the data of §7.2.

## References

- ChristodoulouMiao2014 — D. Christodoulou, S. Miao, *Compressible Flow and Euler's Equations*,
  Surveys of Modern Mathematics 9, 2014; arXiv:1212.2867v2.
- Christodoulou2019 — D. Christodoulou, *The Shock Development Problem*, EMS Monographs, 2019;
  arXiv:1705.00828v1.
- Christodoulou2007 — D. Christodoulou, *The Formation of Shocks in 3-Dimensional Fluids*, EMS
  Monographs, 2007, Ch. 1.
- Speck2016 — J. Speck, *Shock Formation in Small-Data Solutions to 3D Quasilinear Wave
  Equations*, AMS, 2016; arXiv:1407.6320v1.
- LukSpeck2018 — J. Luk, J. Speck, *Shock formation in solutions to the 2D compressible Euler
  equations in the presence of non-zero vorticity*, Invent. Math. 214 (2018); arXiv:1610.00737v1.
- AbbresciaSpeck2022 — L. Abbrescia, J. Speck, *The emergence of the singular boundary from the
  crease in 3D compressible Euler flow*; arXiv:2207.07107v1.
- LuoYu2023a, LuoYu2023b — T.-W. Luo, P. Yu, *On the stability of multi-dimensional rarefaction
  waves I, II*, Ann. of Math. 202 (2025); arXiv:2302.09714v2, arXiv:2305.06308v2.
- EperonReallSbierski2019 — F. C. Eperon, H. S. Reall, J. J. Sbierski, *Predictability of
  subluminal and superluminal wave equations*, Comm. Math. Phys. 368 (2019); arXiv:1802.03020v2.
- BarGinouxPfaffle2007 — C. Bär, N. Ginoux, F. Pfäffle, *Wave Equations on Lorentzian Manifolds and
  Quantization*, 2007; arXiv:0806.1036v1.
- Chrusciel2011 — P. T. Chruściel, *Elements of causality theory*, 2011; arXiv:1110.6706v1.
- MinguzziCone2019 — E. Minguzzi, *Causality theory for closed cone structures with
  applications*, Rev. Math. Phys. 31 (2019); arXiv:1709.06494v4.
- Minguzzi2019 — E. Minguzzi, *Lorentzian causality theory*, Living Rev. Relativ. 22 (2019).
- LukNotes — J. Luk, *Introduction to nonlinear wave equations*, lecture notes (author's page), 2016.
- Nirenberg1959 — L. Nirenberg, *On elliptic partial differential equations*, Ann. Sc. Norm.
  Sup. Pisa 13 (1959), 115–162, Lecture II.
- Kato1975 — T. Kato, *The Cauchy problem for quasi-linear symmetric hyperbolic systems*, Arch.
  Rational Mech. Anal. 58 (1975), Theorem I.
- Majda1984 — A. Majda, *Compressible Fluid Flow and Systems of Conservation Laws in Several Space
  Variables*, Springer, 1984, Ch. 2.
- Dafermos2016 — C. M. Dafermos, *Hyperbolic Conservation Laws in Continuum Physics*, 4th ed.,
  2016, Ch. V.
- Friedrichs1954 — K. O. Friedrichs, *Symmetric hyperbolic linear differential equations*, Comm.
  Pure Appl. Math. 7 (1954), 345–392.
- HawkingEllis1973 — S. W. Hawking, G. F. R. Ellis, *The Large Scale Structure of Space-Time*,
  1973, §6.5.
- ONeill1983 — B. O'Neill, *Semi-Riemannian Geometry with Applications to Relativity*, 1983,
  Ch. 14.
