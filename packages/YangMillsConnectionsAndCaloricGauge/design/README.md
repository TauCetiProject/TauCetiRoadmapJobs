# Roadmap: Yang–Mills connections on Euclidean space and the caloric gauge

**Summary.** Build the analytic theory of connections on Euclidean space with values in a compact
Lie group at the critical regularity, from the matrix-group and Sobolev material of Mathlib and
Tau Ceti to the caloric gauge of Oh and Tataru. The roadmap develops `G`-valued Sobolev maps at
the critical exponent and their homotopy classes on annuli; rough bundles and connections whose
curvature lies in `L^{d/2}` on open subsets of `ℝ^d`, `d ≥ 3`, with their gauge action;
Uhlenbeck's Coulomb gauge on balls and punctured balls for an arbitrary compact structure group;
the good global gauge theorem and the topological class of a rough connection; characteristic
numbers and the instanton number; harmonic Yang–Mills connections on `ℝ⁴` with their regularity,
decay at infinity, energy gap and ground state; the covariant elliptic and parabolic linear theory on
`ℝ⁴` in homogeneous Sobolev and Besov spaces; the Yang–Mills heat flow in the local caloric gauge;
and the caloric gauge with the manifold of caloric connections. Its end theorems are: gauge
invariance of finite energy; Uhlenbeck's lemma on the unit ball for every compact `G` and every
`d ≥ 3`; the good global gauge theorem; well-definedness, gauge invariance and locality of the
topological class, and the characterisation of the trivial class by `Ẇ^{1,d/2}` potentials;
topological invariance of every characteristic number; the Bogomol'nyi bound; integrality and
completeness of the instanton number for `SU(2)`; the energy gap and the ground state theorem;
local well-posedness, continuation and convergence to a flat limit for the heat flow; the
Dichotomy and Threshold Theorems; existence and uniqueness of the caloric gauge; and the theorem
that the caloric connections form a `C¹` submanifold of the Banach space `ℋ`, with its tangent
spaces and the nonlinear div–curl decomposition.

## Scope and ownership

This roadmap owns, for a compact matrix group `G` with an `Ad`-invariant inner product on its
Lie algebra (Conventions):

- the pointwise gauge algebra on `ℝ^d` (gauge action, curvature, Bianchi identity, Leibniz rules),
  the evaluation of invariant symmetric forms on `𝔤`-valued 2-forms with the transgression
  identity on Euclidean space and the bi-invariant Cartan forms on `G`, the self-dual splitting
  of `𝔤`-valued 2-forms in dimension four with the pointwise Bogomol'nyi inequality, and the
  structure constant `γ₀` with the cubic bound for self-dual forms (Layer 1);
- the classes `G^{k,d/k}_loc` of matrix-valued Sobolev maps with values in `G` almost everywhere,
  their approximation by smooth `G`-valued maps, the continuity of products, inverses, Maurer–Cartan
  forms and the adjoint action, and the homotopy class of a critical map on an annulus (Layer 2);
- rough bundles and connections with `L^{d/2}_loc` curvature on open subsets of `ℝ^d`, `d ≥ 3`, their
  gauge action and patching, and the concentration radii (Layer 3);
- Uhlenbeck's lemmas on the unit ball and the punctured ball for every compact `G`, the elliptic
  regularity of the nonlinear div–curl system, and the good gauge on a ball (Layer 4);
- the good global gauge theorem on `ℝ^d`, the gauge at infinity, the topological class and its
  properties, and the characterisation of the trivial class (Layer 5);
- characteristic numbers of connections with `L^{d/2}` curvature in even dimension, their
  topological invariance, the integrated Bogomol'nyi bound, and the instanton number of `SU(2)`
  connections with its integrality and completeness (Layer 6);
- harmonic Yang–Mills connections on `ℝ⁴`: regularity, removable singularities and decay, the
  Weitzenböck and improved Kato inequalities, the energy gap, the BPST connection on `ℝ⁴` and the
  ground state energy (Layer 7);
- the `𝔤`-valued homogeneous spaces `Ḣ^σ`, `ℓ¹L²`, `ℓ¹Ḣ^σ`, `ℋ` and frequency envelopes on `ℝ⁴`, and
  the solvability theory of the covariant Laplacian and of the covariant heat operator (Layer 8);
- the covariant, dynamic and linearised Yang–Mills heat flows on `ℝ⁴`, their gauge fixings, the
  well-posedness and long-time theory in the local caloric gauge, and the Dichotomy and Threshold
  Theorems (Layer 9);
- flat `Ḣ¹` connections as pure gauges, caloric connections, the map `Cal`, the notion of a `C¹`
  split submanifold of a Banach space, the caloric manifold, its tangent spaces, the projection
  `Π_a` and the bundle of caloric initial data sets (Layer 10).

It leaves to named roadmaps:

- **PDE** owns the Euclidean Sobolev spaces beyond the Tau Ceti carriers (density, embeddings,
  Poincaré inequalities, trace and extension on Lipschitz domains: §1.2, §1.4, §1.5, §1.6),
  Calderón–Zygmund theory and the Mihlin–Hörmander multiplier theorem (§2.3), Bochner spaces
  (§6.1), the heat semigroup on `ℝ^d` (§6.3), the dyadic partition with the Bernstein and
  Littlewood–Paley estimates (§7.1), Besov spaces with their homogeneous versions (§7.2) and
  paraproducts (§7.3). Everything here is scalar
  there and is applied componentwise to `𝔤`-valued functions in an orthonormal basis of `𝔤`.
  The `L^p` theory of the Neumann problem on the unit ball, the `L^p` div–curl estimate for
  1-forms with vanishing normal component on the unit ball, and Hardy's inequality on `ℝ^d` are
  sections PDE lacks; they are requested of PDE under Exact supplier contracts.
- **SmoothBundlesConnections** owns principal connections, curvature, the gauge group and its
  left action `u·A = Ad(u)A − du·u⁻¹` (B3.1, B4.1, B4.2). Every smooth connection here is a connection
  on the trivial bundle `X × G` in its sense, and §1.3 proves that the formulas used here are its
  local formulas. The Yang–Mills energy on closed Riemannian manifolds is SmoothBundlesConnections,
  Part II, and the closed-manifold `SU(2)` theory with anti-self-dual moduli spaces is FourManifolds,
  Layer 5; neither is planned here.
- **CharacteristicClasses** owns `Ad`-invariant symmetric polynomial forms on a Lie algebra with
  polarisation and pullback (C4 item 1) and Chern–Weil theory of bundles. This roadmap evaluates
  those forms on curvatures of connections on Euclidean space and computes characteristic numbers
  by transgression on `ℝ^d`; it states no comparison with Chern–Weil classes of bundles on `S^d`.
- **DifferentialGeometry** owns differential forms, `extDeriv` on manifolds, Stokes' theorem and
  the homotopy operator (Layers 0, 1, 5.3, 5.4) and the Brouwer degree with its integral formula,
  homotopy invariance and `deg id = 1` (Layer 10, items 10.3–10.5). Tau Ceti's
  `Orientation.formHodgeStar` is the pointwise Hodge star.
- **AlgebraicTopology** owns the absolute Hurewicz theorem and the comparison of cubical and
  spherical homotopy groups (Stage 8, item 3), and the comparison of the homological degree with
  DifferentialGeometry's smooth degree (Stage 6, item 5); through them the degree classifies maps
  `S³ → S³`.
- **LieGroups** owns the matrix exponential, `Ad` and `ad` (Layers 0, 1) and the closed-subgroup
  theorem (Layer 2). An `𝔰𝔲(2)` subalgebra of a noncommutative compact Lie algebra on which the
  bracket constant `γ₀` of §1.6 is attained is a section LieGroups lacks; it is requested of LieGroups
  under Exact supplier contracts.
- **Yamabe** owns the sharp Euclidean Sobolev inequality with the constant `Y(Sⁿ)` (Y2 item 1),
  which the energy gap of §7.5 consumes in dimension four.
- **FourManifolds** states Uhlenbeck's small-curvature Coulomb gauge on the unit Euclidean
  4-ball for `SU(2)` (§5.3) and constructs the BPST instanton on its oriented `S⁴` carrier
  (Layer 5, introduction). FourManifolds does not consume this roadmap. §4.1 here states the lemma for
  every compact `G` and every `d ≥ 3`, of which FourManifolds' statement is the case `G = SU(2)`,
  `d = 4`; §7.6's BPST connection is the explicit potential on `ℝ⁴`, the kept variant that the
  heat flow on `ℝ⁴` needs.

Not owned here and owned by no roadmap this one consumes: the hyperbolic Yang–Mills equation, its
initial data sets, the constraint equation and the caloric form of the wave equation, together
with the generalised Coulomb condition and the heat-flow bounds for linearised caloric data
(OhTataru-YMHF §§7.3–9, OhTataru-CaloricLWP, OhTataru-Threshold), which belong to a hyperbolic
Yang–Mills roadmap consuming this one (Downstream consumers); the Yang–Mills heat flow on closed
manifolds (Rade-YMHeat); the structure of `π₃` of compact Lie groups beyond what §5.6 and §6.4 use
(MimuraToda-TopologyLieGroups, Ch. IV–V).

## Conventions

**Dimension.** Layers 2–5 work in `ℝ^d` with `d ≥ 3` (for `d = 2` the critical space `L^{d/2}` is
`L¹` and the theory changes, OhTataru-TopClass line 277). Characteristic numbers (Layer 6) need
`d = 2k`. Layers 7–10 work in `d = 4`, the energy-critical dimension, which the Dichotomy and
Threshold Theorems use (OhTataru-YMHF lines 762–764). `ℝ^d` is `EuclideanSpace ℝ (Fin d)` with
Lebesgue measure `volume`; `B_r(x)` is the open ball, `B_r = B_r(0)`, `B'_r = B_r ∖ {0}`; an open set
`X ⊆ ℝ^d` is arbitrary unless a statement says bounded, Lipschitz or connected.

**Structure group.** `G` is a closed subgroup of the unitary group `U(N)` (Mathlib's
`Matrix.unitaryGroup (Fin N) ℂ`), for some `N ≥ 1`; it is compact, and by the closed-subgroup
theorem (LieGroups Layer 2) an embedded Lie subgroup. It is not assumed connected. Its Lie algebra
`𝔤 = {X ∈ 𝔲(N) : exp(tX) ∈ G for all t ∈ ℝ}` is a real Lie subalgebra of the skew-Hermitian
matrices, with `Ad(g)X = gXg⁻¹` and `ad(X)Y = [X, Y]`. The inner product `⟨·,·⟩` on `𝔤` is part of the
data and is `Ad(G)`-invariant: `⟨Ad(g)X, Ad(g)Y⟩ = ⟨X, Y⟩` for all `g ∈ G`. This implies
`⟨[X, Y], Z⟩ = −⟨Y, [X, Z]⟩`; the converse holds only for connected `G` (§1.1, Checks). The trace form
`⟨X, Y⟩ = −Re tr(XY)` is always admissible. "Noncommutative" means `[𝔤, 𝔤] ≠ 0`. Constants written
`≲` depend on `d`, `G` and `⟨·,·⟩` besides the displayed subscripts; `ε₀`, `ε'₀`, `ε_*` are small
positive constants depending on `d`, `G` and `⟨·,·⟩` only.

**Connections and gauge transformations.** A connection on (an open subset of) `ℝ^d` is a
`𝔤`-valued 1-form `A = A_j dx^j`; `D_j = ∂_j + ad(A_j)`; the curvature is
`F_jk = ∂_j A_k − ∂_k A_j + [A_j, A_k]`, so `F = ½ F_jk dx^j ∧ dx^k = dA + ½[A ∧ A]` and
`D_j D_k − D_k D_j = ad(F_jk)`. For a `G`-valued map `O` write `O;x = (∂_x O) O⁻¹` (the right
Maurer–Cartan form). The gauge action is `O·A = Ad(O)A − O;x`, under which `F ↦ Ad(O)F`
(OhTataru-YMHF lines 103–118). This is SmoothBundlesConnections B4.2's inverse-pullback left action
`u·A = Ad(u)A − du·u⁻¹` in the trivial bundle with `u = O`; equivalently, SmoothBundlesConnections'
change of local section `s' = s·g` acts by `O = g⁻¹`. Witness: for `G = U(1)`, `A = i x₁ dx₂` and
`O = exp(iφ)`, `F₁₂ = i` and `O·A = A − i dφ`; with the opposite sign `Ad(O)A + O;x` the composite
`O·(O⁻¹·A)` would not return `A` for nonabelian `G`.

**Norms of forms.** `|A|² = Σ_j ⟨A_j, A_j⟩` and `|F|² = Σ_{j<k} ⟨F_jk, F_jk⟩`, so that
`½ ⟨F_jk, F^{jk}⟩` summed over all `j, k` equals `|F|²`. The energy is `ℰ_e(a) = ∫_{ℝ⁴} |F[a]|² dx`.
`‖F‖_{L^p(X)}` means `‖ |F| ‖_{L^p(X)}`. In dimension four `⟨F ∧ F⟩` is the 4-form whose coefficient
of `dx¹ ∧ dx² ∧ dx³ ∧ dx⁴` is `2(⟨F₁₂, F₃₄⟩ − ⟨F₁₃, F₂₄⟩ + ⟨F₁₄, F₂₃⟩)`: this is the wedge of the
2-form `F` with itself paired by `⟨·,·⟩`, the normalisation of OhTataru-YMHF (6.11), line 2857, and
OhTataru-Threshold line 242. (OhTataru-TopClass (1.26), line 886, omits the factor `¼` of the
all-index sum; with it omitted the Bogomol'nyi inequality fails for `F₁₂ = F₃₄ = X`.) The
characteristic number in dimension four is `χ(a) = −∫ ⟨F ∧ F⟩`, the integral of a top form for the
standard orientation.

**Orientation and Hodge star.** `ℝ⁴` is oriented by `dx¹ ∧ dx² ∧ dx³ ∧ dx⁴`; `⋆` is Tau Ceti's
`Orientation.formHodgeStar` applied componentwise, so `⋆(dx¹ ∧ dx²) = dx³ ∧ dx⁴`; `F` is self-dual if
`⋆F = F`. `S³ ⊂ ℝ⁴` carries the boundary orientation of the unit ball (outward normal first).
`SU(2) = Matrix.specialUnitaryGroup (Fin 2) ℂ` is identified with `S³` by
`Φ(x) = [[x₁ + ix₂, x₃ + ix₄], [−x₃ + ix₄, x₁ − ix₂]]`, an algebra homomorphism from the quaternions,
and is oriented through `Φ`.

**Homogeneous spaces (`d = 4`).** For a finite-dimensional real inner product space `V` (here `𝔤`,
`𝔤`-valued 1-forms or 2-forms) the spaces below are defined componentwise in an orthonormal basis
and are independent of the basis. `Ḣ¹(ℝ⁴; V) = {u ∈ L⁴ : ∇u ∈ L²}` with norm `‖∇u‖_{L²} + ‖u‖_{L⁴}`,
the scaling-invariant form of OhTataru-TopClass lines 957–963; `Ẇ^{1,d/2}(ℝ^d; V)` is defined the
same way with exponents `d/2` and `d`. For `σ ∈ ℝ`, `Ḣ^σ = Ḃ^σ_{2,2}`, `ℓ¹L² = Ḃ⁰_{2,1}` and
`ℓ¹Ḣ^σ = Ḃ^σ_{2,1}` are PDE §7.2's homogeneous Besov spaces built on the homogeneous blocks `P_k`,
`k ∈ ℤ`, of PDE §7.1 (Mathlib's Fourier normalisation with `2π` in the exponent);
`ℋ = {a ∈ Ḣ¹ : ∂^ℓ a_ℓ ∈ ℓ¹L²}` with norm `‖a‖_{Ḣ¹} + ‖∂^ℓ a_ℓ‖_{ℓ¹L²}`. The heat-time variable is
`s ≥ 0`, `J ⊆ [0, ∞)` is an interval, and `L^p(J; X)` is Mathlib's Bochner space with values in the
Banach space `X`. Littlewood–Paley indices follow PDE §7.1: a frequency of size `2^j` is carried by
`P_{j−1}` (PDE §7.1, first Check).

## Exact supplier contracts

### From Mathlib

At the pinned Mathlib; paths under `Mathlib/`.

- `Matrix.unitaryGroup` (`LinearAlgebra/UnitaryGroup.lean`, an abbreviation for the submonoid of
  unitary matrices) and `Matrix.specialUnitaryGroup` (same file, the unitary matrices of determinant
  one).
- `NormedSpace.exp` and `NormedSpace.exp_add_of_commute` (`Analysis/Normed/Algebra/Exponential.lean`),
  `Matrix.isUnit_exp` (`Analysis/Normed/Algebra/MatrixExponential.lean`).
- `ContinuousMap.Homotopic` with `ContinuousMap.Homotopic.equivalence` (`Topology/Homotopy/Basic.lean`)
  for free homotopy classes; `HomotopyGroup` (`Topology/Homotopy/HomotopyGroup.lean`, defined through
  cubes, not spheres).
- `MeasureTheory.Lp`, `MeasureTheory.eLpNorm_le_eLpNorm_fderiv_of_eq`
  (`Analysis/FunctionalSpaces/SobolevInequality.lean`: the Gagliardo–Nirenberg–Sobolev inequality
  for compactly supported `C¹` functions), `MeasureTheory.Measure.toSphere` and
  `homeomorphUnitSphereProd` (`MeasureTheory/Constructions/HaarToSphere.lean` and
  `Analysis/Normed/Module/Ball/RadialEquiv.lean`) for polar coordinates.
- `ContDiff` and `HasFDerivAt` for maps between Banach spaces; `Submodule.ClosedComplemented`
  (`Topology/Algebra/Module/Complement.lean`) for split subspaces; `Orientation.volumeForm`.

### From Tau Ceti

At the pinned Tau Ceti; paths under `TauCeti/`.

- `TauCeti.HasWeakFDerivOn` (`Analysis/Sobolev/WeakDeriv/Basic.lean`): weak Fréchet derivatives of
  functions with values in a complete normed space, which includes local integrability of the
  function and of the derivative; vector-valued Sobolev classes are built from it in §2.1.
  `TauCeti.W1p` and `TauCeti.Wkp` (`Analysis/Sobolev/W1p/Basic.lean`, `Analysis/Sobolev/Wkp/Basic.lean`)
  are the real-valued carriers that §2.1 compares with componentwise.
- `TauCeti.W1p.morreyRepresentative` (`Analysis/Sobolev/W1p/Morrey.lean`) and
  `TauCeti.enorm_sub_le_of_mem_ball_of_finrank_lt`, used through PDE §1.4.
- `TauCeti.exists_isOpenEmbedding_normalTube` (`Geometry/Manifold/TubularNeighborhood/Euclidean.lean`):
  the tubular neighbourhood theorem for a compact boundaryless `C²` embedded submanifold of a
  finite-dimensional inner product space, as an open embedding of the normal tube of some radius
  `ε > 0`. `TauCeti.exists_contMDiffOn_normalRetraction`
  (`Geometry/Manifold/TubularNeighborhood/LocalInverse.lean`): near every point of a `C^{n+1}`
  immersion of a boundaryless manifold into a finite-dimensional inner product space, `n ≥ 1`, a
  `C^n` retraction `r` onto a source patch, defined on an open set containing the image of that
  patch, with `y − f(r(y))` normal at `r(y)`; it asserts neither a global retraction nor uniqueness
  of nearest points. Together they give the local smoothness of the inverse of normal addition;
  §1.2 adds the global nearest-point statement and the formula for `dπ_G`.
- `Orientation.formHodgeStar` (`Analysis/InnerProductSpace/HodgeStar/AlternatingForm.lean`) with
  `Orientation.wedge_formHodgeStar_apply` (`α ∧ ⋆β = ⟨α, β⟩ vol`) and
  `Orientation.formHodgeStar_formHodgeStar_of_even`.
- `TauCeti.heatKernel` and its semigroup and Fourier identities, used through PDE §6.3.

### From TauCetiRoadmap.PDE

- §1.2: density of smooth functions in `W^{k,p}` on arbitrary open sets (used in §2.2).
- §1.4: Sobolev, Morrey and higher-order embeddings, including `W^{k,p}(Ω) → W^{k−1,p*}(Ω)` on bounded
  Lipschitz domains and the whole-space Gagliardo–Nirenberg–Sobolev inequality (§§2.2–2.5, 5.1).
- §1.5: the Poincaré inequality on balls, `‖u − u_B‖_{L^p(B)} ≤ C(d, p) r ‖∇u‖_{L^p(B)}` for a ball `B`
  of radius `r` and `1 ≤ p < ∞`, with the constant scaling linearly in `r` (§2.2).
- §1.6: the trace operator and the extension operator on bounded Lipschitz domains (§§2.2, 4.1).
- §2.2 and §2.3: interpolation, Calderón–Zygmund operators, the Riesz transforms and the
  Mihlin–Hörmander theorem, for the whole-space div–curl estimate `‖∇u‖_p ≲ ‖div u‖_p + ‖curl u‖_p`,
  `1 < p < ∞` (§§4.3, 5.2, 8.2).
- §6.1: Bochner spaces; §6.3: the heat semigroup `e^{sΔ}` on `L^p(ℝ^d)`, its generator, Duhamel's
  formula and the smoothing estimates (Layers 8–9).
- §7.1: the homogeneous blocks `P_k`, Bernstein and Littlewood–Paley estimates, and the heat-block
  estimate `‖e^{sΔ}P_k f‖_p ≲ exp(−c4^k s)‖P_k f‖_p`; §7.2: homogeneous Besov spaces `Ḃ^s_{p,q}` with
  their realisation for `s < d/p`; §7.3: paraproducts and the Littlewood–Paley trichotomy (Layers 8–10).

What PDE must provide (gap:lp-neumann-ball): for `1 < p < ∞`, the unit ball `B₁ ⊂ ℝ^d`, `d ≥ 2`,
`f ∈ L^p(B₁)` and a vector field `V ∈ W^{1,p}(B₁; ℝ^d)` with `∫_{B₁} f = ∫_{∂B₁} ν·V`, the Neumann problem
`Δu = f` in `B₁`, `∂_ν u = ν·V` on `∂B₁` (in the sense of traces) has a solution `u ∈ W^{2,p}(B₁)`,
unique up to constants, with `‖∇u‖_{W^{1,p}(B₁)} ≤ C(d, p)(‖f‖_{L^p(B₁)} + ‖V‖_{W^{1,p}(B₁)})`; the
compatibility condition is necessary by the divergence theorem, and `V = 0` is the homogeneous
problem. Used in §4.1 (openness of the method of continuity and the `U(1)` case). Required location:
a new section of PDE Layer 5 on the `L^p` Neumann problem.

What PDE must provide (gap:lp-divcurl-normal-ball): for `1 < p < ∞`, `d ≥ 2` and every 1-form
`a ∈ W^{1,p}(B₁; ℝ^d)` on the unit ball whose normal component `x^ℓ a_ℓ` vanishes on `∂B₁` (in the
sense of traces), `‖a‖_{W^{1,p}(B₁)} ≤ C(d, p)(‖da‖_{L^p(B₁)} + ‖∂^ℓ a_ℓ‖_{L^p(B₁)})`, applied here
componentwise to `𝔤`-valued 1-forms. Used in §4.1 (the a priori estimate and the uniqueness of the
Coulomb gauge). Required location: the same new section of PDE Layer 5, as its second theorem; it is
a Gaffney-type estimate for the absolute boundary condition and does not follow from the scalar
Neumann problem alone.

What PDE must provide (gap:hardy-inequality): for `d ≥ 2`, `1 ≤ p < d` and `u ∈ C_c^∞(ℝ^d)`,
`‖u/|x|‖_{L^p(ℝ^d)} ≤ (p/(d − p)) ‖∇u‖_{L^p(ℝ^d)}`, hence the same for `u ∈ Ẇ^{1,p}`. Used in §§5.2,
5.3, 6.1. Required location: a new item of PDE §1.4.

### From TauCetiRoadmap.SmoothBundlesConnections

- B3.1: principal connections and the local potential `A' = Ad(g⁻¹)A + g⁻¹dg` for `s' = s·g`.
- B4.1: curvature `Ω = dω + ½[ω ∧ ω]` with the determinant-style wedge, and the Bianchi identity.
- B4.2: the gauge group and its local formulas `u·A = Ad(u)A − du·u⁻¹`, `F_{u·A} = Ad(u)F_A`.
  Used in §1.3 for the comparison of conventions on the trivial bundle.

### From TauCetiRoadmap.CharacteristicClasses

- C4 item 1: `Ad`-invariant homogeneous symmetric polynomial forms on the Lie algebra, their
  polarisation `P(z) = B_P(z, …, z)` with no extra factorial, pullback by Lie homomorphisms and
  evaluation on curvature with the value-bundle wedge. Used in §1.4 and Layer 6.

### From TauCetiRoadmap.DifferentialGeometry

- Layer 0 (forms and the paired wedge, `wedgeWith`) and Layer 1 (`mextDeriv`, naturality,
  `d² = 0`, Leibniz): §1.4.
- 5.2–5.3 (integration of top forms, Stokes' theorem with the outward-first boundary orientation)
  and 5.4 (the homotopy operator): §§1.4, 6.2, 6.4.
- Layer 10, items 10.3–10.5 (`degree` of a smooth map between closed oriented connected manifolds
  of the same dimension, `∫ f*ω = deg · ∫ ω` for top forms, homotopy invariance, `deg id = 1`): §6.4.

### From TauCetiRoadmap.AlgebraicTopology

- Stage 6, item 5: the homological characterization `f_*[M] = deg f · [N]` of DifferentialGeometry's
  smooth degree for closed oriented connected manifolds, compared there with DifferentialGeometry
  Layer 10: §6.4.
- Stage 8, item 3: the absolute Hurewicz map from the cubical homotopy groups through pointed
  sphere maps, and the theorem `π_n(X) ≅ H_n(X; ℤ)` for `(n−1)`-connected `X`, `n ≥ 2`: §§5.6, 6.4.

### From TauCetiRoadmap.LieGroups

- Layer 0 (the exponential map), Layer 1 (`Ad`, `ad`), Layer 2 (the closed-subgroup theorem: a closed
  subgroup of a Lie group is an embedded Lie subgroup with the Lie algebra above): §1.1.

What LieGroups must provide (gap:compact-su2-subalgebra): every noncommutative compact Lie algebra
`𝔤` (a Lie subalgebra of some `𝔲(N)` with `[𝔤, 𝔤] ≠ 0`) with an `ad`-invariant inner product contains
a Lie subalgebra `𝔰 ≅ 𝔰𝔲(2)` with `sup_{X,Y∈𝔰} |[X,Y]|/(|X||Y|) = sup_{X,Y∈𝔤} |[X,Y]|/(|X||Y|)`: the
rank-one subalgebra of a highest root of a maximal abelian subalgebra of `[𝔤, 𝔤]`, built from the
`𝔰𝔩₂`-triple of the complexification (Mathlib's
`LieAlgebra.IsKilling.exists_isSl2Triple_of_weight_isNonZero`), together with the bound
`|[X, Y]| ≤ |α| |X| |Y|` by the largest root length `|α|` (OhTataru-TopClass Lemma 6.4,
lines 2381–2401). Used in §7.7. Required location: a new item of LieGroups Layer 6 on root `𝔰𝔲(2)`
subalgebras.

### From TauCetiRoadmap.Yamabe

- Y2 item 1: for `n ≥ 3`, `a_n ∫ |du|² ≥ Y(Sⁿ) (∫ |u|^{p_n})^{2/p_n}` on the homogeneous space
  `D^{1,2}(ℝⁿ)`, with `a_n = 4(n−1)/(n−2)`, `p_n = 2n/(n−2)`, `Y(Sⁿ) = n(n−1)Vol(Sⁿ)^{2/n}`. In
  dimension four `a₄ = 6`, `p₄ = 4` and `Y(S⁴) = 12 (8π²/3)^{1/2} = 8√6 π`. Used in §7.5.

## How to read the build

Layer 1 is pointwise algebra: the structure group, the gauge identities for smooth data, invariant
forms with their transgression and Cartan forms, and four-dimensional self-duality. Layer 2 is the
analysis of `G`-valued maps at the critical exponent. Layer 3 defines rough connections, proves the
gauge invariance of finite energy and patches local gauges. Layer 4 proves Uhlenbeck's lemmas and the
good gauge on a ball. Layer 5 globalises to `ℝ^d` and defines the topological class. Layer 6 computes
characteristic numbers by transgression and the instanton number by degree theory. Layer 7 is the
elliptic theory of harmonic Yang–Mills connections on `ℝ⁴` up to the ground state. Layer 8 is the
linear covariant theory in homogeneous spaces. Layer 9 is the Yang–Mills heat flow, ending with the
Dichotomy and Threshold Theorems. Layer 10 constructs the caloric gauge and the caloric manifold.
Layers 1 and 8 depend only on suppliers and can be built at once; Layers 2–7 form a chain (Layer 6
needs Layer 5, Layer 7 needs Layers 4–6); Layer 9 needs Layer 8 for its local theory and Layers 4, 6
and 7 for the Dichotomy and Threshold Theorems; Layer 10 needs Layer 9.

## Layer 1: structure groups and pointwise gauge algebra

### 1.1 The structure group

Define a compact matrix structure group as a triple `(N, G, ⟨·,·⟩)` with `G` a closed subgroup of
`Matrix.unitaryGroup (Fin N) ℂ`, its Lie algebra `𝔤` as in the Conventions, and an `Ad(G)`-invariant
inner product on `𝔤` (OhTataru-YMHF lines 92–102; OhTataru-TopClass lines 121–127 and 976–979).

- `𝔤` is a real Lie subalgebra of the skew-Hermitian matrices, `exp(𝔤) ⊆ G`, and `Ad(g)𝔤 = 𝔤` for
  every `g ∈ G`; the tangent space of `G` at `g`, as a subspace of the matrices, is `g𝔤 = 𝔤g`.
- `Ad(g)` is an isometry of `𝔤` for `g ∈ G`, and `ad(X)` is skew-adjoint for `X ∈ 𝔤`.
- The trace form `−Re tr(XY)` is positive definite and `Ad(U(N))`-invariant on `𝔲(N)`, so every
  closed `G ⊆ U(N)` admits an admissible inner product.
- The orthogonal complement of an ideal of `𝔤` is an ideal, so `𝔤` is the orthogonal direct sum of
  its centre and of simple ideals.
- Restriction to a closed subgroup `H ⊆ G` and block-diagonal products `G₁ × G₂ ⊆ U(N₁ + N₂)` with the
  orthogonal sum of inner products are again structure groups.

**Checks.**

- `G = U(1) = Matrix.unitaryGroup (Fin 1) ℂ`: `𝔤 = iℝ`, `Ad` is trivial and every inner product is
  admissible; the curvature of `A` is `dA`.
- `G = SU(2)` with `⟨X, Y⟩ = −tr(XY)`: for `i = [[0, 1], [−1, 0]]`, `j = [[0, i], [i, 0]]`,
  `k = diag(i, −i)` one has `|i|² = |j|² = |k|² = 2`, `[i, j] = 2k`, `[j, k] = 2i`, `[k, i] = 2j`
  (OhTataru-TopClass (6.1)–(6.2), lines 2312–2332).
- A finite group, for instance `{±1} ⊂ U(1)`, has `𝔤 = 0`: every connection is `0`.
- `G = T² ⋊ ℤ/2 ⊂ U(2)`, the diagonal unitary matrices together with the permutation matrix
  `[[0, 1], [1, 0]]`: `𝔤` is the abelian algebra of imaginary diagonal matrices, the inner product
  with `|e₁|² = 1`, `|e₂|² = 2`, `⟨e₁, e₂⟩ = 0` is `ad`-invariant, but conjugation by the permutation
  matrix exchanges `e₁` and `e₂`, so it is not `Ad(G)`-invariant and is excluded.

*Needs:* Mathlib `Matrix.unitaryGroup`, `NormedSpace.exp`, `Matrix.isUnit_exp`; LieGroups Layers 0–2.

### 1.2 The nearest-point retraction onto `G`

Prove that there are an open neighbourhood `𝒰` of `G` in the real inner product space of `N × N`
complex matrices (Frobenius inner product) and a smooth map `π_G : 𝒰 → G` such that `π_G(g) = g`
for `g ∈ G`, `π_G(M)` is the unique point of `G` nearest to `M`, and the derivative of `π_G` at
`g ∈ G` is the orthogonal projection onto `g𝔤` (used in OhTataru-TopClass lines 1057–1058). Route: `G`
is a compact embedded submanifold; Tau Ceti's normal-tube theorem gives an open embedding
`(g, v) ↦ g + v` of the normal vectors of length `< ε`, and Tau Ceti's local normal retraction
`TauCeti.exists_contMDiffOn_normalRetraction` gives near each point of `G` a smooth map `r` fixing a
patch of `G` with `y − r(y)` normal at `r(y)`. Where `|y − r(y)| < ε`, injectivity of the tube map
identifies `(r(y), y − r(y))` with the inverse of the tube map at `y`; by compactness finitely many
such domains cover `𝒰 = {M : dist(M, G) < ε'}` for some `0 < ε' ≤ ε`, so the inverse is smooth on `𝒰`
and `π_G` is its first component. A nearest point `g*` of `G` to `M ∈ 𝒰` exists by compactness and
`M − g*` is normal at `g*` with `|M − g*| < ε`, so injectivity gives `g* = π_G(M)`: the nearest point is
unique. Differentiating `π_G(g + v) = g` for normal `v` and `π_G = id` on `G` gives `dπ_G(g)`.

**Checks.**

- `G = U(1) ⊂ ℂ` with `⟨z, w⟩ = Re(z w̄)`: on `𝒰`, `π_G(r e^{iθ}) = e^{iθ}` for `r > 0`, so
  `π_G(1 + i) = (1 + i)/√2` when `1 + i ∈ 𝒰`, and `dπ_G(1)(a + ib) = ib`, the orthogonal projection
  onto `𝔤 = iℝ`. A map with `π_G(1 + h) = 1 + h − Re h` has the right derivative at `1` but does not
  take values in `G`.
- `G = U(N)`: for `M ∈ 𝒰`, `π_G(M) = M(M*M)^{−1/2}` is the unitary polar factor, and
  `dπ_G(1)(H) = (H − H*)/2` is the skew-Hermitian part. For `M_t = [[1, t], [0, 1]] ∈ 𝒰` with `t ≠ 0`,
  `π_G(M_t) = (4 + t²)^{−1/2}[[2, t], [−t, 2]]`, at squared distance `4 + t² − 2√(4 + t²)`, which is
  less than `t² = |M_t − 1|²` (at `t = 1`: `5 − 2√5 ≈ 0.528 < 1`). So the Gram–Schmidt retraction,
  which sends `M_t` to `1`, is a smooth retraction onto `U(N)` but not the nearest-point map.
- `G = {±1} ⊂ U(1)`: `𝔤 = 0`, `π_G(z) = 1` for `z ∈ 𝒰` with `Re z > 0` and `−1` for `Re z < 0`, so
  `π_G` is locally constant and `dπ_G(±1) = 0`, the projection onto the zero space. The points with
  `Re z = 0` are equidistant from `±1` and lie outside `𝒰`.
- `G = U(N)`: `|0 − g|² = tr(g*g) = N` for every `g ∈ U(N)`, so `0` has no unique nearest point and
  `0 ∉ 𝒰`. No retraction is defined on the whole matrix space, and every `M ∈ 𝒰` is invertible.

*Needs:* Tau Ceti `TauCeti.exists_isOpenEmbedding_normalTube` and
`TauCeti.exists_contMDiffOn_normalRetraction`; LieGroups Layer 2.

### 1.3 Gauge identities for smooth data

For `X ⊆ ℝ^d` open, smooth `𝔤`-valued 1-forms `A`, smooth `G`-valued `O`, `O'` and a smooth
`𝔤`-valued function `B` on `X`, prove (OhTataru-YMHF lines 103–118; OhTataru-TopClass lines 165–183
and 1128–1130):

- `O·A` is `𝔤`-valued, `1·A = A` and `O·(O'·A) = (OO')·A`;
- `F[O·A] = Ad(O)F[A]`, and `D(O·A)_j(Ad(O)B) = Ad(O)(D(A)_j B)`;
- `D_j D_k B − D_k D_j B = [F_jk, B]` and the Bianchi identity `D_j F_kl + D_k F_lj + D_l F_jk = 0`;
- `(OO');x = O;x + Ad(O)(O';x)`, `(O⁻¹);x = −Ad(O⁻¹)(O;x)`, and
  `∂_j(Ad(O)B) = Ad(O)∂_j B + [O;j, Ad(O)B]`;
- the connection `A` is a principal connection on the trivial bundle `X × G` (SmoothBundlesConnections
  B3.1) whose local potential in the section `x ↦ (x, 1)` is `A`, whose curvature (B4.1) in that
  section is `F[A]`, and on which the gauge transformation `u = O` of B4.2 acts by `A ↦ O·A`.

The last Leibniz rule corrects OhTataru-TopClass Lemma 3.4(3), line 1130, which writes
`Ad(O)[O;x, B]` for the second term.

**Checks.**

- For `O(x) = g exp(x₁X)` with a constant `g ∈ G` and constant `B = Y`: `O;1 = Ad(g)X`, and
  `∂₁(Ad(O)Y)` at `x₁ = 0` is `Ad(g)[X, Y] = [Ad(g)X, Ad(g)Y] = [O;1, Ad(O)Y]`, whereas
  `Ad(O)[O;1, Y] = Ad(g)[Ad(g)X, Y]`, which differs as soon as `Ad(g)X ≠ X` and `[X, Y] ≠ [Ad(g)X, Y]`
  (for `SU(2)`, `X = i`, `g = exp(πk/4)`, `Y = j`: `Ad(g)i = j`, so `[O;1, Ad(O)Y] = Ad(g)(2k) = 2k` while
  `Ad(g)[j, j] = 0`).
- For `G = U(1)`, `A = i x₁ dx₂` and `O = exp(iφ)`: `F₁₂ = i` and `O·A = A − i dφ`, with
  `F[O·A] = F[A]`.
- A constant `O = c` gives `O·A = Ad(c)A`; a constant central `c` acts trivially, matching
  SmoothBundlesConnections B4.2.

*Needs:* SmoothBundlesConnections B3.1, B4.1, B4.2; 1.1.

### 1.4 Invariant forms, transgression and Cartan forms

Let `f` be an `Ad(G)`-invariant symmetric `k`-linear form on `𝔤`, the object of CharacteristicClasses
C4 item 1. For `𝔤`-valued 2-forms `F₁, …, F_k` on `ℝ^d`, `f(F₁ ∧ … ∧ F_k)` is the `2k`-form obtained by
the paired wedge. Prove (OhTataru-TopClass lines 236–255; OhTataru-YMHF Lemma 6.7, lines 2860–2883):

- `f(Ad(O)F₁ ∧ … ∧ Ad(O)F_k) = f(F₁ ∧ … ∧ F_k)` for `O ∈ G`, and in `d = 2k` the coefficient of
  `f(F ∧ … ∧ F)` is bounded by `C_f |F|^k`.
- For a smooth connection `A` on an open `X ⊆ ℝ^d`, `f(F ∧ … ∧ F)` is closed and equals `d T_f(A)`, with
  the transgression form `T_f(A) = k ∫₀¹ f(A ∧ F_t ∧ … ∧ F_t) dt`, `F_t = t dA + ½ t² [A ∧ A]`.
- There is a closed `(2k−1)`-form `ω_f` on `G`, invariant under left and right translations, such
  that `T_f(−O;x) = O*ω_f` for every smooth `G`-valued `O` on `X`.
- For `G = SU(2)`, `f(X, Y) = tr(XY)` (that is, `f = −⟨·,·⟩` for `⟨X, Y⟩ = −tr(XY)`):
  `T_f(A) = tr(A ∧ dA + ⅔ A ∧ A ∧ A)` and `ω_f = ⅓ tr((dg g⁻¹)³)`.

**Checks.**

- For the pure gauge `A = −R`, `R = dO O⁻¹`: `dR = R ∧ R`, so `dA = −R ∧ R`, `A ∧ A = R ∧ R` and `F = 0`;
  then `tr(A ∧ dA) + ⅔ tr(A³) = tr(R³) − ⅔ tr(R³) = ⅓ tr(R³)`.
- With `Φ` the Conventions' identification and `S³` boundary-oriented, `dΦ` maps the positive frame
  `(e₂, e₃, e₄)` at `e₁` to `(k, i, j)`, `tr((dg g⁻¹)³)(k, i, j) = 6 tr(kij) = −12`, and bi-invariance
  gives `∫_{S³} Φ*tr((dg g⁻¹)³) = −12 · 2π² = −24π²`, so `∫_{S³} Φ*ω_f = −8π²`.
- In `d = 4` with `f = −⟨·,·⟩` the transgression form is
  `−(⟨a_j, ∂_k a_l⟩ + ⅓⟨a_j, [a_k, a_l]⟩) dx^j ∧ dx^k ∧ dx^l`, the form `Y` of OhTataru-YMHF line 2869.

*Needs:* CharacteristicClasses C4 item 1; DifferentialGeometry Layers 0–1 and 5.4; 1.3.

### 1.5 Self-duality in dimension four

For a `𝔤`-valued 2-form `F` on an oriented four-dimensional inner product space put
`F^± = ½(F ± ⋆F)`. Prove: `F = F⁺ + F⁻` with `F⁺ ⊥ F⁻` and `|F|² = |F⁺|² + |F⁻|²`;
`⋆⟨F ∧ F⟩ = |F⁺|² − |F⁻|²`; hence the pointwise Bogomol'nyi inequality `|F|² ≥ |⋆⟨F ∧ F⟩|`, with
equality exactly when `F⁺ = 0` or `F⁻ = 0`; `Ad(O)` commutes with `⋆`; reversing the orientation
exchanges `F⁺` and `F⁻` (OhTataru-TopClass Lemma 1.31, lines 901–906, computation lines 860–866;
OhTataru-YMHF Lemma 6.9, lines 2892–2902; Bogomolnyi-Stability).

**Checks.**

- `F = X(dx¹ ∧ dx² + dx³ ∧ dx⁴)` is self-dual with `|F|² = 2|X|²` and `⋆⟨F ∧ F⟩ = 2|X|²`: equality.
- `F = X dx¹ ∧ dx²` has `F^± = ½X(dx¹ ∧ dx² ± dx³ ∧ dx⁴)`, `|F|² = |X|²` and `⋆⟨F ∧ F⟩ = 0`: strict.
- With the coefficient of `⟨F ∧ F⟩` taken as the all-index sum `8(⟨F₁₂, F₃₄⟩ − …)`, the first Check
  would give `8|X|² > 2|X|²`, refuting the inequality; this pins the Conventions' normalisation.

*Needs:* Tau Ceti `Orientation.formHodgeStar`, `Orientation.wedge_formHodgeStar_apply`,
`Orientation.formHodgeStar_formHodgeStar_of_even`; 1.1.

### 1.6 The structure constant and the cubic bound

Define `γ₀(𝔤, ⟨·,·⟩) = sup |[X, Y]| / (|X| |Y|)` over nonzero `X, Y ∈ 𝔤` (`0` for commutative `𝔤`). For
`𝔤`-valued 2-forms `F`, `ω` on `ℝ⁴` put `𝔉_F(ω)_{ij} = Σ_l ([F_il, ω_lj] − [F_jl, ω_li])`, the curvature
term of the Weitzenböck formula for `𝔤`-valued 2-forms. Prove: `𝔉_F(ω) = 𝔉_{F⁺}(ω)` when `ω` is
self-dual, and for self-dual `ω`, `|⟨ω, 𝔉_ω(ω)⟩| ≤ (2√6/3) γ₀ |ω|³`, where `⟨ω, η⟩ = Σ_{i<j} ⟨ω_ij, η_ij⟩`
(GurskyKelleherStreets-GapTheorem Definition 2.3 and Lemma 2.6, lines 164–222, in the normalisation of
this roadmap; OhTataru-TopClass Lemma 6.4 and line 2404).

- `γ₀` is attained, scales as `γ₀(𝔤, c⟨·,·⟩) = c^{−1/2} γ₀(𝔤, ⟨·,·⟩)`, and is the maximum of its values
  on the simple ideals of `𝔤`.
- In an orthonormal basis `e₁, e₂, e₃` of self-dual 2-forms, `ω = Σ ω^a e_a`,
  `⟨ω, 𝔉_ω(ω)⟩ = ±6√2 ⟨ω¹, [ω², ω³]⟩`.

**Checks.**

- `𝔰𝔲(2)` with `−tr`: `X = diag(i, −i)`, `Y = [[0, 1], [−1, 0]]` give `[X, Y] = [[0, 2i], [2i, 0]]`,
  `|X|² = |Y|² = 2`, `|[X, Y]|² = 8`, so the ratio is `√2`; with the cross-product description of
  `𝔰𝔲(2)` no pair does better, so `γ₀ = √2` (OhTataru-TopClass line 2338: normalisation (6.3) is `−tr`).
- For `ω^a = λ(i, j, k)` (the BPST curvature at a point, GurskyKelleherStreets-GapTheorem Remark 2.7,
  lines 223–232): `|ω|² = 6λ²`, `⟨ω¹, [ω², ω³]⟩ = 4λ³`, so `6√2 · 4λ³ = 24√2 λ³ = (2√6/3) √2 (6λ²)^{3/2}`:
  the bound is an equality.
- For commutative `𝔤` both sides vanish.

*Needs:* 1.1, 1.5.

### Examples

`U(1)`, `SU(2)` with `−tr` and its constant `γ₀ = √2`, the finite group `{±1}` and the group
`T² ⋊ ℤ/2` with a non-admissible inner product; the transgression of the pure gauge of `Φ` with value
`−8π²`; the self-dual form `X(dx¹ ∧ dx² + dx³ ∧ dx⁴)`.

### Dependencies

Mathlib's unitary groups and exponential; Tau Ceti's Hodge star, normal tube and local normal
retraction; LieGroups Layers 0–2; SmoothBundlesConnections B3.1, B4.1, B4.2; CharacteristicClasses C4
item 1; DifferentialGeometry Layers 0–1 and 5.4.

## Layer 2: critical Sobolev maps into `G`

Throughout this layer `d ≥ 3`, `k ≥ 1` is an integer and `X ⊆ ℝ^d` is open.

### 2.1 Vector-valued Sobolev classes and `G^{k,p}`

For a finite-dimensional real normed space `V` define `W^{k,p}(X; V)` as the `u ∈ L^p(X; V)` whose
iterated weak derivatives of order `≤ k` (Tau Ceti `TauCeti.HasWeakFDerivOn`) exist and lie in `L^p`,
and `W^{k,p}_loc(X; V)` as the `u` with `u|_B ∈ W^{k,p}(B; V)` for every ball `B` with closure in `X`
(OhTataru-TopClass lines 964–968). Define `G^{k,p}_loc(X)` as the `O ∈ W^{k,p}_loc(X; M_N(ℂ))` with
`O(x) ∈ G` for almost every `x`, and `G^{k,p}(U)` likewise (OhTataru-TopClass (1.5), lines 283–285,
and lines 982–989).

- In any basis of `V`, `u ∈ W^{k,p}(X; V)` exactly when each coordinate lies in Tau Ceti's `TauCeti.Wkp`
  of order `k`; the class does not depend on the basis.
- Every `O ∈ G^{k,p}_loc(X)` satisfies `|O(x)| = √N` almost everywhere (Frobenius norm), so lies in `L^∞`.
- Restriction to open subsets, constant maps, and smooth `G`-valued maps on a neighbourhood of the
  closure of a bounded `U` give elements; membership is local (a sheaf condition on open covers).
- On a connected `X`, an `O ∈ G^{1,1}_loc(X)` takes values almost everywhere in a single connected
  component of `G` (compose with the locally constant component map).

**Checks.**

- `d = 4`, `X ∈ 𝔤 ∖ {0}`, `φ(x) = log log(1/|x|)` on `B_{1/e}`: `|∇φ| ≈ 1/(|x| log(1/|x|))`,
  `|∇²φ| ≈ 1/(|x|² log(1/|x|))`, and `∫ |∇²φ|² + |∇φ|⁴ < ∞` (the radial integrals are
  `∫ dr/(r log²(1/r))` and `∫ dr/(r log⁴(1/r))`); so `O = exp(φX)` lies in `G^{2,2}(B_{1/e})` and has no
  continuous representative at `0`: the critical class is not contained in `C⁰`.
- For a finite `G`, `G^{k,p}_loc(X)` consists of the maps that are almost everywhere constant on each
  component of `X`.
- `d = 3`, `G = U(1)`, `O = exp(iθ)` with `θ` the angle around the `x₃`-axis: `|∇O| ≈ 1/ρ`, `ρ` the
  distance to the axis, and `∫_{B₁} ρ^{−3} dx = ∞`, so `O ∉ G^{1,3}(B₁)` and `O ∉ G^{2,3/2}(B₁)`.

*Needs:* Tau Ceti `TauCeti.HasWeakFDerivOn`, `TauCeti.Wkp`; Mathlib `MeasureTheory.Lp`; 1.1.

### 2.2 Approximation by smooth `G`-valued maps

Prove: for `O ∈ G^{k,d/k}_loc(X)`, an open `U` with compact closure in `X`, open `V`, `W ⊆ U` with
disjoint closures, and `ε > 0`, there is `O' ∈ G^{k,d/k}_loc(X)` equal to `O` almost everywhere on `V`
and off `U`, smooth with values in `G` on `W`, with `‖O' − O‖_{W^{k,d/k}(U)} < ε`; in particular `O` is
the `W^{k,d/k}(B)`-limit of smooth `G`-valued maps on every ball `B` with closure in `X`
(OhTataru-TopClass Lemma 3.2, lines 1038–1072). Route: inhomogeneous mollification
`O_δ(x) = ∫ ζ(y) O(x − δh(x)y) dy` with a cut-off `h` vanishing on `V` and off a compact subset of `X`
and equal to `1` on `W`; the Poincaré inequality on small balls gives
`dist(O_δ(x), G)^d ≲ ∫_{B_{δh(x)}(x)} |∂O|^d → 0` uniformly, so `π_G ∘ O_δ` is defined and converges.
The source's hypothesis `V ∩ W = ∅` is replaced by disjoint closures, which the cut-off `h` needs.

*Needs:* PDE §1.2, §1.4 (Sobolev embedding `W^{k,d/k} ⊆ W^{1,d}`) and §1.5 (Poincaré on balls); 1.2;
2.1.

### 2.3 Products and inverses

Prove that pointwise multiplication `G^{k,d/k}_loc(X) × G^{k,d/k}_loc(X) → G^{k,d/k}_loc(X)` and
inversion `O ↦ O⁻¹` are continuous, with `∂_j(O⁻¹) = −O⁻¹(∂_j O)O⁻¹`, and the same on `G^{k,d/k}(U)` for
a bounded Lipschitz domain `U` (OhTataru-TopClass Lemmas 3.1 and 3.3, lines 1000–1102). Route: `O⁻¹ = O*`
almost everywhere, a real-linear isometry; for products, the Leibniz rule with the embeddings
`W^{k,d/k} ⊆ W^{j,d/j}`, `1 ≤ j ≤ k`, Hölder's inequality, the bound `|O| = √N`, and dominated
convergence along almost everywhere convergent subsequences. Multiplication is continuous and no
better (OhTataru-TopClass line 1011).

- `‖O₁O₂‖_{W^{k,d/k}} ≲ ‖O₁‖_{L^∞}‖O₂‖_{W^{k,d/k}} + ‖O₁‖_{W^{k,d/k}}‖O₂‖_{L^∞}` on `U`.

*Needs:* PDE §1.4 (iterated embeddings on bounded Lipschitz domains); 2.1, 2.2.

### 2.4 Maurer–Cartan forms and the adjoint action

Prove (OhTataru-TopClass Lemma 3.4, lines 1109–1135): `O ↦ O;x` and `O ↦ O⁻¹∂_x O` are continuous
`G^{k,d/k}_loc(X) → W^{k−1,d/k}_loc(X; 𝔤)` (with values in `𝔤` almost everywhere); for `0 ≤ k' ≤ k`,
`(O, B) ↦ Ad(O)B` is continuous `G^{k,d/k}_loc(X) × W^{k',d/k}_loc(X; 𝔤) → W^{k',d/k}_loc(X; 𝔤)`; and the
Leibniz rules of 1.3 hold almost everywhere for `O, O₁, O₂ ∈ G^{k,d/k}_loc(X)` and
`B ∈ W^{k',d/k}_loc(X; 𝔤)`. The same holds on bounded Lipschitz domains. That `O;x` takes values in `𝔤`
follows from 2.2 and the closedness of `𝔤`.

*Needs:* 1.3, 2.2, 2.3.

### 2.5 The homotopy class of a critical map on an annulus

For an annulus `A = {R₁ < |x| < R₂}` and `O ∈ G^{2,d/2}(A)` prove (OhTataru-TopClass Lemmas 3.20–3.22,
lines 1623–1665):

- for almost every `R ∈ (R₁, R₂)` the restriction of `O` to `∂B_R` has a continuous representative,
  and these representatives are mutually homotopic; this defines `[O] ∈ [S^{d−1}, G]`, the free
  homotopy classes (Mathlib `ContinuousMap.Homotopic`);
- `[O]` is locally constant for the `W^{2,d/2}(A)` topology, and `[O₁O₂] = [O₁]·[O₂]` for the
  pointwise product of classes;
- for `O ∈ G^{2,d/2}({R₁ − δ < |x| < R₂})` there is `Õ ∈ G^{2,d/2}(B_{R₂})` equal to `O` on `A` exactly when
  `[O]` is the class of a constant map;
- for `O ∈ G^{2,d/2}(ℝ^d ∖ B̄_{R₁})`, `[O]` is the class of a constant map.

Route: `W^{2,d/2} ⊆ W^{1,d}`; in polar coordinates almost every slice lies in `W^{1,d}(S^{d−1})`, which
embeds into `C⁰` by Morrey's inequality in stereographic charts since `d > d − 1`; smooth `G`-valued
approximants (2.2) converge uniformly on almost every sphere, and uniformly close maps into `G` are
homotopic through `π_G`. For the exterior statement, `∫_{r > R₁} ∫_{S^{d−1}} |∂_Θ O|^d dΘ dr/r < ∞` forces
`liminf_{r→∞} ‖∂_Θ O(r,·)‖_{L^d(S^{d−1})} = 0`. The source states the last two items with "`[id]`",
which is the class of a constant map only for connected `G` (Lemma 3.21's proof joins the constant
`O_n(0)` to the identity).

*Needs:* Mathlib `ContinuousMap.Homotopic`, `MeasureTheory.Measure.toSphere`,
`homeomorphUnitSphereProd`; PDE §1.4 (Morrey's inequality on balls); 1.2, 2.2, 2.3.

### Examples

The discontinuous critical map `exp(log log(1/|x|) X)` in `G^{2,2}(B_{1/e})`; the vortex
`exp(iθ) ∉ G^{1,3}`; for `d = 4`, `G = SU(2)` and `O(x) = Φ(x/|x|)` on an annulus, `[O]` is the class of
`Φ`, which is not the class of a constant map (its degree is `1`, §6.4), so `O` has no `G^{2,2}`
extension to the ball.

### Dependencies

Layer 1; Tau Ceti's weak derivatives and Sobolev carriers; PDE §1.2, §1.4 and §1.5; Mathlib's
homotopy and polar-coordinate API.

## Layer 3: rough connections and gauge invariance

Throughout this layer `d ≥ 3` and `X ⊆ ℝ^d` is open.

### 3.1 Rough bundles, connections and curvature

Define a `G^{2,d/2}_loc` bundle on `X` as an open cover `{U_α}` of `X` with transition maps
`O_(αβ) ∈ G^{2,d/2}_loc(U_α ∩ U_β)` satisfying `O_(αα) = 1` and `O_(αβ)O_(βγ) = O_(αγ)` almost everywhere,
with equivalence through a common refinement and maps `P_(γ) ∈ G^{2,d/2}_loc(V_γ)` intertwining the
cocycles. Define a `W^{1,d/2}_loc` connection on it as local potentials
`A_(α) ∈ W^{1,d/2}_loc(U_α; 𝔤 ⊗ (ℝ^d)*)` with `A_(α) = O_(αβ)·A_(β)` almost everywhere on overlaps, its
curvature by `F_(α) = dA_(α) + ½[A_(α) ∧ A_(α)]`, and `A^{1,d/2}_loc(X)` as the class of all such
connections on all such bundles (OhTataru-TopClass lines 289–335). A global potential is a
connection on the one-set cover `{X}`.

- `F_(α) ∈ L^{d/2}_loc(U_α)`, since `W^{1,d/2}_loc ⊆ L^d_loc`, and `F_(α) = Ad(O_(αβ))F_(β)` on overlaps;
  hence `|F|` is a well-defined element of `L^{d/2}_loc(X)`.
- Equivalence of bundles is an equivalence relation, compatible with restriction to open subsets
  and with refinement; connections transport along equivalences.
- Translations and the dilations `A ↦ A_λ`, `A_λ(x) = λA(λx)`, act, with `F[A_λ](x) = λ² F[A](λx)`.
- Smooth connections on smooth bundles define elements of `A^{1,d/2}_loc(X)`.

**Checks.**

- Scaling: `‖F[A_λ]‖_{L^{d/2}}^{d/2} = ∫ λ^d |F(λx)|^{d/2} dx = ‖F[A]‖_{L^{d/2}}^{d/2}`, so the critical
  norm is dilation invariant, and in `d = 4` so is the energy; in `d = 3` the `L²` norm of `F` scales by
  `λ^{1/2}`.
- `d = 3`, `G = U(1)`, `A = i dθ` around the `x₃`-axis: `F = 0` off the axis, but `|∇A| ≈ ρ^{−2}` and
  `∫_{B₁} ρ^{−3} dx = ∞`, so `A ∉ W^{1,3/2}_loc(B₁)`: the class excludes line singularities.
- For a finite `G` every potential is `0` and every curvature vanishes.

*Needs:* 2.1–2.4; PDE §1.4.

### 3.2 Gauge invariance of finite energy

Prove: for `A ∈ W^{1,d/2}_loc(X; 𝔤 ⊗ (ℝ^d)*)` and `O ∈ G^{2,d/2}_loc(X)`, `O·A ∈ W^{1,d/2}_loc(X; 𝔤 ⊗ (ℝ^d)*)`,
`F[O·A] = Ad(O)F[A]` almost everywhere, and `‖F[O·A]‖_{L^{d/2}(X)} = ‖F[A]‖_{L^{d/2}(X)}`; for `d = 4`,
`ℰ_e(O·A) = ℰ_e(A)`. Equivalent rough bundles with connections have the same `|F|` almost everywhere
(OhTataru-TopClass lines 283–292; OhTataru-YMHF lines 103–118, 124–130).

**Checks.**

- `G = U(1)`, `O = exp(iφ)` with `φ ∈ W^{2,d/2}_loc`: `O·A = A − i dφ` and `F` is unchanged.
- `O(x) = Φ(x/|x|)` on `X = ℝ⁴ ∖ {0}` and `A = 0`: `O·A = −O;x` has curvature `0`, consistent with
  `F[O·A] = Ad(O)·0`, although `|O;x| ≈ 1/|x|`.

*Needs:* 1.3, 2.4, 3.1.

### 3.3 Patching to a global gauge

Prove: every `G^{2,d/2}_loc` bundle on `X = B_R` or `X = ℝ^d` admits a global gauge, and every connection
on it has a global potential in `W^{1,d/2}_loc(X)`; for `B_R`, `R ≥ 1`, covered by uniformly separated
unit balls `B_α`, transition maps and local potentials with `‖O_(αβ);x‖_{W^{1,d/2}} ≤ M` and
`‖A_(α)‖_{W^{1,d/2}} ≤ M` give a global potential with `‖A‖_{W^{1,d/2}(B_R)} ≲_{R,M} 1`
(OhTataru-TopClass Propositions 3.9–3.10 and Scenarios (1)–(3), lines 1165–1347; Proposition 3.9 writes
`W^{k,d/k}` for the potential, which should read `W^{k−1,d/k}`).

*Needs:* 2.2–2.5, 3.1.

### 3.4 Concentration radii

For `D ∈ A^{1,d/2}_loc(X)` and `ε > 0` define the inner concentration radius
`r_c^ε[D] = sup{r > 0 : ‖F‖_{L^{d/2}(B_r(x) ∩ X)} ≤ ε for all x ∈ X}` and, for `X = ℝ^d`, the outer
concentration radius `R_c^ε[D] = inf{r > 0 : ‖F‖_{L^{d/2}(ℝ^d ∖ B_r(x))} ≤ ε for some x}`
(OhTataru-TopClass lines 337–341 and 361–365).

- If `F ∈ L^{d/2}(X)` then `r_c^ε[D] > 0`, by uniform absolute continuity of `|F|^{d/2}`; if `X = ℝ^d`
  then `R_c^ε[D] < ∞`.
- Both are gauge invariant; `r_c^ε[D_λ] = λ^{−1} r_c^ε[D]` and `R_c^ε[D_λ] = λ^{−1} R_c^ε[D]`; `r_c^ε` is
  nondecreasing and `R_c^ε` nonincreasing in `ε`.

**Checks.**

- `F = 0`: `r_c^ε = ∞` and `R_c^ε = 0`.
- If `‖F‖_{L^{d/2}(X)} ≤ ε` then `r_c^ε = ∞`.
- For the BPST connection of §7.6 (`d = 4`), `‖F‖²_{L²(B_r)} = 96π² ∫₀^r s³(1 + s²)^{−4} ds`, which equals
  `8π² · r⁴(r² + 3)/(r² + 1)³` exactly (tending to `8π²`); the energy density is radially decreasing, so
  balls centred at `0` carry the most curvature and `r_c^ε` is the root of `8π² r⁴(r² + 3)/(r² + 1)³ = ε²`
  for `ε² < 8π²`, which behaves like `(ε²/24π²)^{1/4}` as `ε → 0`; dilating the instanton by `λ` divides it by
  `λ`.

*Needs:* 3.1.

### Examples

The angular potential `i dθ` excluded from `A^{1,3/2}_loc`; the pure gauge `−O;x` of `Φ(x/|x|)` on
`ℝ⁴ ∖ {0}`; the concentration radius of the BPST connection.

### Dependencies

Layer 2; PDE §1.4.

## Layer 4: Uhlenbeck's lemmas and the good gauge on a ball

Throughout this layer `d ≥ 3`.

### 4.1 Uhlenbeck's lemma on the unit ball

Prove (OhTataru-TopClass Theorem 3.11, lines 1358–1395; Uhlenbeck-LpCurvature Theorem 1.3): there are
`ε₀ > 0` and `C₀` such that for every `A ∈ W^{1,d/2}(B₁; 𝔤 ⊗ (ℝ^d)*)` with `‖F[A]‖_{L^{d/2}(B₁)} < ε₀`:

- there is `O ∈ G^{2,d/2}(B₁)` with `Ã = O·A` satisfying `∂^ℓ Ã_ℓ = 0` in `B₁` weakly, `x^ℓ Ã_ℓ = 0` on `∂B₁`
  in the sense of traces, and `‖Ã‖_{W^{1,d/2}(B₁)} ≤ C₀ ‖F[A]‖_{L^{d/2}(B₁)}`;
- if `O'` is another such gauge with the same three properties, then `O' = cO` for a constant `c ∈ G`;
- if `A_n → A` in `W^{1,d/2}(B₁)` and `(Ã_n, O_n)` are such gauges for `A_n`, then after passing to a
  subsequence and replacing `(Ã_n, O_n)` by `(Ad(c_n)Ã_n, c_n O_n)` for constants `c_n ∈ G`, `Ã_n → Ã` in
  `W^{1,d/2}(B₁)` and `O_n → O` in `W^{2,d/2}(B₁)`.

Route: the method of continuity along `A_t(x) = tA(tx)`, `t ∈ [0, 1]`, whose curvature norms are
`‖F‖_{L^{d/2}(B_t)}`; openness by the implicit function theorem for the map
`(O, A) ↦ ∂^ℓ(O·A)_ℓ` with Neumann data, through the requested `L^p` Neumann theory; closedness by the
a priori estimate for the div–curl system `dÃ + ½[Ã ∧ Ã] = F`, `∂^ℓ Ã_ℓ = 0`, `x^ℓ Ã_ℓ = 0`, through the
requested div–curl estimate with vanishing normal component; uniqueness
because `Õ = O'O⁻¹` has `‖Õ;x‖_{W^{1,d/2}} ≲ ε₀` and solves a div–curl system with vanishing normal
component, forcing `Õ;x = 0`; continuity by weak compactness, uniqueness and the strong convergence of
`F[Ã_n] = Ad(O_n)F[A_n]` (OhTataru-TopClass lines 1372–1395). Rescaling gives the same statement on
`B_r(x₀)` under `‖F‖_{L^{d/2}(B_r(x₀))} < ε₀`.

**Checks.**

- `G = U(1)`: `Ã = A − i dφ` where `φ` solves the Neumann problem `Δφ = −i ∂^ℓ A_ℓ`, `∂_ν φ = −i x^ℓ A_ℓ`;
  the gauge is unique up to the constant in `φ`, matching the second item.
- `A = 0`: the gauges are exactly the constants.
- `G = SU(2)`, `d = 4`: the statement is FourManifolds §5.3's small-curvature Coulomb gauge on the
  unit 4-ball, with `‖Ã‖_{W^{1,2}} + ‖Ã‖_{L⁴} ≲ ‖F‖_{L²}` because `W^{1,2}(B₁) ⊆ L⁴(B₁)`.
- Linearising at `A = 0`: a gauge `O = exp(ψ)` with small `ψ` keeps the three properties to first
  order exactly when `Δψ = 0` in `B₁` and `∂_ν ψ = 0` on `∂B₁`, whose solutions are the constants; this is
  the infinitesimal form of the second item, and its proof uses the bound to stay in this regime.

*Needs:* gap `lp-neumann-ball` (PDE); gap `lp-divcurl-normal-ball` (PDE); PDE §1.4 and §1.6; 2.3, 2.4,
3.1; 4.3.

### 4.2 Uhlenbeck's lemma on a punctured ball

Prove (OhTataru-TopClass Theorem 3.12, lines 1398–1412; Uhlenbeck-RemovableSingularities Theorem 4.1):
there is `ε'₀ > 0` such that if `D ∈ A^{1,d/2}_loc(B'_{1+δ})`, `δ > 0`, has a global potential
`A ∈ W^{1,d/2}_loc(B'_{1+δ})` with `‖F[A]‖_{L^{d/2}(B'₁)} ≤ ε'₀`, then there is `O ∈ G^{2,d/2}_loc(B'₁)` with
`Ã = O·A` satisfying `∂^ℓ Ã_ℓ = 0` in `B'₁` and `‖Ã‖_{W^{1,d/2}(B'₁)} ≲ ‖F[A]‖_{L^{d/2}(B'₁)}`; consequently `Ã`
extends to `W^{1,d/2}(B₁)` (a point is removable for `W^{1,d/2}`, `d/2 < d`) and `D` extends to an element
of `A^{1,d/2}_loc(B_{1+δ})`. Route: 4.1 on dyadic annuli, patching of the gauges through 3.3 and 2.5, and
the decay of the small transition maps.

**Checks.**

- `d = 4`, `A = −O;x` with `O = Φ(x/|x|)`: `F = 0`, `A ∉ W^{1,2}(B'₁)` since `∫ |x|^{−4} dx = ∞` near `0`, and
  `Ã = O⁻¹·A = 0` extends: the extension needs the gauge change.
- Every connection with `F ∈ L^{d/2}(B'₁)` extends across the puncture: `‖F‖_{L^{d/2}(B'_r)} ≤ ε'₀` for small
  `r` by absolute continuity, and the statement applies on `B'_r` after rescaling; the threshold only
  governs the bound on `B'₁`.

*Needs:* 2.5, 3.3, 4.1.

### 4.3 Elliptic regularity of the nonlinear div–curl system

Prove (OhTataru-TopClass Lemmas 3.13–3.17 and Remark 3.15, lines 1418–1496): if `A ∈ W^{1,d/2}(B)` on a
unit ball `B` solves `∂_j A_k − ∂_k A_j = F_jk − [A_j, A_k]`, `∂^ℓ A_ℓ = 0`, and `D^{(m)}F ∈ L^{d/(m+2)}(B)`
with `d/(m+2) > 1`, then `∂^{(m+1)}A ∈ L^{d/(m+2)}(λB)` for `0 ≤ λ < 1`, bounded in terms of `m`,
`‖D^{(m)}F‖_{L^{d/(m+2)}(B)}`, `‖A‖_{L^d(B)}` and `λ`; the angular version with the normalised rotation
fields on balls disjoint from `B₁(0)`; the strong convergence of these derivatives along sequences as in
4.1; and the continuity of `O` when `O;x ∈ ℓ¹W^{1,d/2}(B)`.

*Needs:* PDE §2.3 (whole-space div–curl estimate), §1.4, §7.1; 2.4.

### 4.4 The good gauge on a ball

Prove (OhTataru-TopClass Theorem 1.4, lines 342–353, with Lemma 3.18 and Proposition 3.19,
lines 1497–1561): for `D ∈ A^{1,d/2}_loc(B_R)` with `F ∈ L^{d/2}(B_R)` and `r_c^{ε_*}[D] ≥ r > 0`, there is a
global gauge whose potential satisfies `‖A‖_{Ẇ^{1,d/2}(B_R)} ≲_{ε_*, R/r} 1`; if moreover
`D^{(n)}F ∈ L^p(B_R)` for an integer `n ≥ 0` and `p ∈ (1, ∞)` with `p ≥ d/(n+2)`, then `A ∈ W^{n+1,p}(B_R)`.
The norm `‖·‖_{Ẇ^{1,d/2}(B_R)}` is `‖∂A‖_{L^{d/2}} + ‖A‖_{L^d}` (OhTataru-TopClass lines 957–963). Route:
4.1 on balls of radius `≈ r`, patching (3.3) on a ball of comparable size, exhaustion `R_n ↗ R`, and 4.3.

**Checks.**

- If `‖F‖_{L^{d/2}(B_R)} < ε₀` the statement is 4.1 rescaled, with a bound independent of `R/r`.
- Scaling: the bound depends on `R/r` only, consistent with the dilation invariance of the
  hypotheses.

*Needs:* 3.3, 3.4, 4.1, 4.3.

### Examples

The Neumann Coulomb gauge for `U(1)`; FourManifolds §5.3's `SU(2)` lemma as the case `d = 4`; the removable
pure-gauge singularity of `Φ(x/|x|)`.

### Dependencies

Layers 2–3; PDE §1.4, §1.6, §2.3, §7.1; the gaps `lp-neumann-ball` and `lp-divcurl-normal-ball`.

## Layer 5: the good global gauge and the topological class

Throughout this layer `d ≥ 3`. Fix a smooth cut-off `η : ℝ^d → [0, 1]` with `η = 0` on `B₁` and `η = 1` off `B₂`.

### 5.1 Good representatives and gauges at infinity

For a global potential `A ∈ W^{1,d/2}_loc(ℝ^d; 𝔤 ⊗ (ℝ^d)*)` define a good representative as a pair
`(O_(∞), B)` of a smooth map `O_(∞) : ℝ^d ∖ {0} → G` that is homogeneous of degree `0` and a
`B ∈ Ẇ^{1,d/2}(ℝ^d; 𝔤 ⊗ (ℝ^d)*)` such that `A = −η' O_(∞);x + B` for some smooth `η'` vanishing near `0` and
equal to `1` outside a compact set; `O_(∞)` is then a gauge at infinity for `A` (OhTataru-TopClass
lines 382–390 and Theorem 1.3, lines 226–235).

- `|O_(∞);x| ≲ |x|^{−1}` and `|∂(O_(∞);x)| ≲ |x|^{−2}`, so `η' O_(∞);x ∈ W^{1,d/2}_loc`; the vanishing of `η'` near
  `0` is needed for this.
- Changing `η'` changes `B` by a smooth compactly supported form; `O_(∞)h`, for a constant `h ∈ G`, has the
  same `O_(∞);x`; the constant gauge transformation `c` sends `(O_(∞), B)` to `(cO_(∞), Ad(c)B)`.
- `O_(∞)` is determined by its restriction to `S^{d−1}`, an element of `C(S^{d−1}, G)`.

**Checks.**

- `d = 4`, `O(x) = Φ(x/|x|)` and the cut-off `η' ≡ 1`: `A = −O;x` has `|∂A| ≈ |x|^{−2}` and
  `∫_{B₁} |x|^{−4} dx = ∞`, so `A ∉ W^{1,2}_loc(ℝ⁴)`; the source's condition `1 − η ∈ C_c^∞` alone admits this,
  and the vanishing near `0` excludes it.
- `G = {±1}` and `A = 0`: both constants `1` and `−1` are gauges at infinity, so a gauge at infinity is
  not unique up to homotopy when `G` is disconnected.
- The BPST potential of §7.6 has the good representative `(Φ(x̄/|x|), B)` with
  `B = A_BPST + η O;x`; off `B₂`, `B = −Im(x̄ dx)/(|x|²(1 + |x|²))` (through `Φ`) is `O(|x|^{−3})` with
  gradient `O(|x|^{−4})`, so `B ∈ Ḣ¹(ℝ⁴)`.

*Needs:* 1.3, 2.4; PDE §1.4.

### 5.2 The good global gauge theorem

Prove (OhTataru-TopClass Theorem 1.5, lines 361–375, proof lines 1562–1617): there is `ε_* > 0` such that
for every `D ∈ A^{1,d/2}_loc(ℝ^d)` with `F ∈ L^{d/2}(ℝ^d)`, `r_c^{ε_*}[D] ≥ r` and `R_c^{ε_*}[D] ≤ R`,
`0 < r ≤ R`, there is a global gauge in which `A = −η(·/R) O_(∞);x + B`, with `O_(∞)` smooth, homogeneous of
degree `0` with values in `G`, `B ∈ Ẇ^{1,d/2}(ℝ^d)`, `‖B‖_{Ẇ^{1,d/2}} ≲_{ε_*, R/r} 1` and
`‖O_(∞)‖_{C^n(S^{d−1})} ≲_{ε_*, R/r, n} 1` for every `n`; if moreover `D^{(n)}F ∈ L^p(ℝ^d)` for an integer
`n ≥ 0` and `p ∈ (1, ∞)` with `p ≥ d/(n+2)`, then `B ∈ Ẇ^{n+1,p}(ℝ^d)`. For `d = 4`: every connection with
finite energy is gauge equivalent to `−η O_(∞);x + b` with `b ∈ Ḣ¹(ℝ⁴)` (OhTataru-Threshold Theorem 2.17,
lines 1069–1075). Route: 3.3 for a global potential, 4.4 on `B_{5R}`, the inversion `x ↦ x/|x|²`, which
preserves `‖F‖_{L^{d/2}}`, with 4.2 on the punctured ball for the exterior, a gauge on the annulus
smoothed by 2.2 and extended homogeneously, and Hardy's inequality for `Ad(P)B ∈ L^d ∩ Ẇ^{1,d/2}` when
`P` is homogeneous of degree `0`. The source's higher-regularity hypothesis reads `L^p(B_R)`; the
statement above assumes it on `ℝ^d`.

**Checks.**

- A flat connection on `ℝ^d` (`F = 0`): `r_c = ∞`, `R_c = 0`, and the theorem gives `O_(∞)` constant and
  `B = 0`, i.e. the connection is gauge equivalent to `0`.
- `A ∈ Ẇ^{1,d/2}` itself: the representative `(1, A)` already has the form, with no bound uniform in
  `R/r` claimed for it.
- Dilation by `λ` replaces `(r, R)` by `(r/λ, R/λ)` and leaves `R/r` and the bounds unchanged.

*Needs:* gap `hardy-inequality` (PDE); 2.2, 2.5, 3.3, 3.4, 4.2, 4.4, 5.1.

### 5.3 Gauges at infinity are unique up to homotopy and constants

Prove (OhTataru-TopClass Proposition 1.6 and Remark 1.7, lines 397–405, proof lines 1666–1686): let
`A, A'` be global potentials of the same connection, `A' = P·A` with `P ∈ G^{2,d/2}_loc(ℝ^d)`, with good
representatives `(O_(∞), B)` and `(O'_(∞), B')`. Then `O'_(∞)|_{S^{d−1}}` is homotopic to
`c · O_(∞)|_{S^{d−1}} · c'` for some constants `c, c' ∈ G`; for connected `G`, `O'_(∞)` and `O_(∞)` are
homotopic. Conversely every smooth homogeneous `O'_(∞)` whose restriction is homotopic to that of `O_(∞)`
is a gauge at infinity of `A`. The class does not depend on the cut-off. Route: outside a ball `B_ρ`
off which both cut-offs equal `1`, `A' = P·A` and the Leibniz rules of 2.4 give
`(O'_(∞)⁻¹ P O_(∞));x = Ad(O'_(∞)⁻¹P)B − Ad(O'_(∞)⁻¹)B'`, which puts `O'_(∞)⁻¹PO_(∞)` in
`G^{1,d}(ℝ^d ∖ B̄_ρ)`; 2.5 shows that `P` and `O'_(∞)⁻¹PO_(∞)` restrict on spheres to classes of constant
maps `c` and `c''`, so `O'_(∞) = P O_(∞) (O'_(∞)⁻¹PO_(∞))⁻¹` is homotopic to `c O_(∞) c''⁻¹`. The source
writes the identity for `A = O·A'` (OhTataru-TopClass lines 1671–1673), that is for `O = P⁻¹`. The
source's conclusion "`O_(∞)` homotopic to `O'_(∞)`" holds for connected `G`; the constants are needed
otherwise (5.1, Checks).

**Checks.**

- `G = U(1)`, `O_(∞) = e^{iθ}`, `O'_(∞) = e^{iθ'}` and `P = e^{iψ}` with real `θ, θ', ψ`, and `B = B' = 0`
  on `ℝ^d ∖ B_ρ`: there `A' = P·A = A − i dψ` gives `dθ' = dθ + dψ`, and
  `(O'_(∞)⁻¹PO_(∞));x = i(−dθ' + dψ + dθ) = 0`, matching the right side `0`; the identity with the roles
  of `O_(∞)` and `O'_(∞)` exchanged would give `i(−dθ + dψ + dθ') = 2i dψ` against a right side `0`,
  false unless `ψ` is locally constant there.

*Needs:* gap `hardy-inequality` (PDE); 2.2, 2.4, 2.5, 5.1.

### 5.4 The topological class

Define `Top(d, G)` as the quotient of the free homotopy classes `[S^{d−1}, G]` by the action of `G × G`
through `(c, c')·[O] = [cOc'⁻¹]`, and the topological class `[A] ∈ Top(d, G)` of a connection with
`L^{d/2}` curvature as the image of the restriction to `S^{d−1}` of a gauge at infinity of a global
potential (OhTataru-TopClass Definition 1.8, lines 407–411). Prove (lines 412–429, proof of
Proposition 1.9, lines 1688–1705):

- `[A]` is well defined (5.2, 5.3) and invariant under `G^{2,d/2}_loc(ℝ^d)` gauge transformations;
- `[A + b] = [A]` for `b ∈ Ẇ^{1,d/2}(ℝ^d)`, and every class contains smooth connections with compactly
  supported curvature approximating a given member in `Ẇ^{1,d/2}`;
- each class is path-connected for the distance `‖A − A'‖_{Ẇ^{1,d/2}}` modulo `G^{2,d/2}_loc(ℝ^d)` gauge
  transformations;
- locality: there is `ε_* > 0` such that `‖A − A'‖_{L^d(B_{5R})} ≤ ε_*`, `‖F[A]‖_{L^{d/2}(ℝ^d ∖ B_R)} ≤ ε_*` and
  `‖F[A']‖_{L^{d/2}(ℝ^d ∖ B_R)} ≤ ε_*` imply `[A] = [A']`.

For connected `G` the quotient map `[S^{d−1}, G] → Top(d, G)` is a bijection.

**Checks.**

- `G = {±1}`: `Top(d, G)` is a point, as it must be since every connection is `0`; without the quotient
  the two constant gauges at infinity of `A = 0` would give two classes.
- `G = O(4)` acting on `ℝ⁴ = ℍ` and `d = 4`: conjugation by the reflection `q ↦ q̄` sends left
  multiplication `q ↦ uq` to right multiplication `q ↦ qū`, exchanging the two summands of
  `π₃(SO(4)) ≅ ℤ ⊕ ℤ`; so a constant gauge transformation in the non-identity component changes the
  homotopy class of `O_(∞)`, and the quotient by `G × G` is what makes `[A]` gauge invariant.
- `G = U(1)`, `d ≥ 3`: `[S^{d−1}, U(1)]` is a point (`S^{d−1}` is simply connected), so every abelian
  connection with `L^{d/2}` curvature is in the trivial class.

*Needs:* 2.5, 3.2, 5.2, 5.3; PDE §1.4.

### 5.5 The trivial class

Prove (OhTataru-TopClass Corollary 1.11 and Remark 1.12, lines 451–466; OhTataru-Threshold Theorem 2.16,
lines 1066–1067): a connection with `L^{d/2}` curvature lies in the class of `0` (the class of constant
maps) exactly when it is gauge equivalent, by some `P ∈ G^{2,d/2}_loc(ℝ^d)`, to a potential in
`Ẇ^{1,d/2}(ℝ^d)`; for `d = 4`, exactly when it is gauge equivalent to a potential in `Ḣ¹(ℝ⁴)`. No bound on
the `Ẇ^{1,d/2}` norm of that potential in terms of the curvature is asserted.

**Checks.**

- `0 ∈ Ẇ^{1,d/2}` is in the trivial class; the pure gauge `−O;x` of `O = Φ(x/|x|)` cut off near `0`,
  `−ηO;x`, is not (its class is that of `Φ`, of degree `1`), and indeed it is gauge equivalent to no `Ḣ¹`
  potential, since the characteristic number `χ` vanishes on `Ḣ¹` connections (§6.3) while `χ(−ηO;x) = −8π²`
  (§6.4).
- For connected `G` and `d = 4`, the trivial class is `0 ∈ π₃(G)` under 5.6.

*Needs:* 2.5, 5.2, 5.3, 5.4.

### 5.6 Topological classes in dimension four

Prove: for connected `G`, the map from the based homotopy classes of pointed maps `(S³, e₁) → (G, 1)` to
`[S³, G]` forgetting the base point is a bijection (a free map `O` is homotopic to the based map
`O(e₁)⁻¹O`, and a free homotopy `H` between based maps yields the based homotopy `H(t, e₁)⁻¹H(t, ·)`), so
`Top(4, G) ≅ π₃(G)`, with Mathlib's cubical `HomotopyGroup` compared to pointed sphere maps through
AlgebraicTopology Stage 8 (OhTataru-Threshold line 1074; OhTataru-TopClass line 53).

**Checks.**

- `G = SU(2)`: `Top(4, SU(2)) ≅ π₃(S³) ≅ ℤ`, computed by the instanton number in §6.4.
- `G = U(1)`: `π₃(U(1)) = 0`, matching the single class of 5.4.

*Needs:* Mathlib `HomotopyGroup`, `ContinuousMap.Homotopic`; AlgebraicTopology Stage 8 item 3; 5.4.

### Examples

The two gauges at infinity of `A = 0` for `G = {±1}`; the `O(4)` reflection exchanging the summands of
`π₃(SO(4))`; the good representative of the BPST potential.

### Dependencies

Layers 2–4; AlgebraicTopology Stage 8; PDE §1.4; the gap `hardy-inequality`.

## Layer 6: characteristic numbers and the instanton number

### 6.1 Characteristic numbers

For `d = 2k ≥ 4`, an `Ad(G)`-invariant symmetric `k`-linear form `f` on `𝔤` and a connection with
`F ∈ L^{d/2}(ℝ^d)`, define `χ_f(A) = ∫_{ℝ^d} f(F ∧ … ∧ F)` (OhTataru-TopClass (1.4), lines 238–255 and
430–445).

- The integral converges absolutely, `|χ_f(A)| ≤ C_f ‖F‖_{L^{d/2}}^k`, and `χ_f` is gauge invariant and
  dilation invariant.
- `|χ_f(A) − χ_f(A')| ≤ C_f (‖F[A]‖_{L^{d/2}} + ‖F[A']‖_{L^{d/2}})^{k−1} ‖F[A] − F[A']‖_{L^{d/2}}`, and for a good
  representative `(O_(∞), B)` of `A`,
  `‖F[A + b] − F[A]‖_{L^{d/2}} ≲ ‖b‖_{Ẇ^{1,d/2}}(1 + ‖B‖_{Ẇ^{1,d/2}} + ‖O_(∞)‖_{C¹(S^{d−1})} + ‖b‖_{Ẇ^{1,d/2}})`,
  through Hardy's inequality for the term `[O_(∞);x, b]`.
- For `d = 4` and `f = −⟨·,·⟩`, `χ_f = χ` of the Conventions.

**Checks.**

- `G = U(1)`, `d = 4`, `f(X, Y) = −XY` on `iℝ`: `χ_f(A) = ∫ dα ∧ dα` for `A = iα`, which vanishes for every
  finite-energy `α` (all abelian connections are in the trivial class, 5.4).
- `G = SU(2)`, `f(X, Y) = tr(XY)`: `χ_f = χ = 8π² c₂` (6.4).
- Dilation: `f(F[A_λ] ∧ F[A_λ])(x) = λ⁴ f(F ∧ F)(λx)` in `d = 4`, so `χ_f(A_λ) = χ_f(A)`.

*Needs:* gap `hardy-inequality` (PDE); 1.4, 3.2, 5.1.

### 6.2 Characteristic numbers depend only on the class

Prove (OhTataru-TopClass Corollary 1.10, lines 445–448, and lines 460–462): for `d = 2k ≥ 4` and every
connection with `L^{d/2}` curvature and gauge at infinity `O_(∞)`,
`χ_f(A) = ∫_{S^{d−1}} O_(∞)*ω_f` with the Cartan form `ω_f` of 1.4; hence `χ_f(A)` depends only on `[A]`,
vanishes on the trivial class, and is the limit of `χ_f` of smooth approximants with compactly supported
curvature in the same class. Route: for smooth `A = −η'O_(∞);x + B` with `B` compactly supported,
`f(F ∧ … ∧ F) = d T_f(A)`, Stokes' theorem on `B_ρ` for large `ρ` where `A = −O_(∞);x`, and
`T_f(−O_(∞);x) = O_(∞)*ω_f`; the integral of a closed form is a homotopy invariant (homotopy operator), and `ω_f` is
invariant under left and right translations, so it is constant on `Top(d, G)`; the general case by 5.4
and the continuity of 6.1.

**Checks.**

- `G = SU(2)`, `f = tr`, `A = −ηO;x` with `O = Φ(x/|x|)`: `χ_f(A) = ∫_{S³} Φ*ω_f = −8π²` (1.4, Checks).
- Trivial class: `O_(∞)` constant, `O_(∞)*ω_f = 0`.
- Odd `d` has no characteristic numbers: `f(F ∧ … ∧ F)` is a `2k`-form and `2k ≠ d`.

*Needs:* DifferentialGeometry 5.3 and 5.4; 1.4, 5.4, 6.1.

### 6.3 The Bogomol'nyi bound

Prove, for `d = 4` and every connection with finite energy (OhTataru-TopClass lines 860–868 and Lemma
1.31, lines 901–906; OhTataru-Threshold lines 237–246; Bogomolnyi-Stability):
`ℰ_e(a) − χ(a) = 2 ∫ |F⁺|²` and `ℰ_e(a) + χ(a) = 2 ∫ |F⁻|²`, hence `ℰ_e(a) ≥ |χ(a)|`, with equality exactly
when `F⁺ = 0` almost everywhere or `F⁻ = 0` almost everywhere; and `χ(a) = 0` for `a ∈ Ḣ¹(ℝ⁴)`
(OhTataru-YMHF Lemma 6.7, lines 2860–2883).

**Checks.**

- For `SU(2)`: `ℰ_e = 8π² c₂ + 2‖F⁺‖²`, FourManifolds Layer 5's normalisation
  `E(A) = 8π²k + 2‖F_A⁺‖²` with `k = c₂`.
- A connection self-dual on one region and anti-self-dual on another has `ℰ_e = ∫|F⁺|² + ∫|F⁻|²` and
  `|χ| = |∫|F⁻|² − ∫|F⁺|²| < ℰ_e`: pointwise equality everywhere does not give integrated equality.
- The BPST connection (anti-self-dual) has `ℰ_e = χ = 8π²`.

*Needs:* 1.5, 6.1, 6.2, 5.5.

### 6.4 The instanton number for `SU(2)`

For `G = SU(2)` with `⟨X, Y⟩ = −tr(XY)` define `c₂(a) = (8π²)⁻¹ ∫_{ℝ⁴} tr(F ∧ F)`, so `χ(a) = 8π² c₂(a)`.
Prove (OhTataru-TopClass lines 256–264 and 852–860; OhTataru-YMHF lines 327–335 and 2913–2915):

- `c₂(a) = −deg(Φ⁻¹ ∘ O_(∞)|_{S³})` for every gauge at infinity, with `S³` boundary-oriented; in particular
  `c₂(a) ∈ ℤ`;
- `[a] ↦ c₂(a)` is a bijection `Top(4, SU(2)) → ℤ`, so `π₃(SU(2)) ≅ ℤ`; the class of `−n` is that of
  `x ↦ Φ(x/|x|)ⁿ` (quaternionic power), which has degree `n`.

Route: 6.2 with `∫_{S³} O*ω_f = deg(Φ⁻¹ ∘ O) ∫_{S³} Φ*ω_f = −8π² deg`, the integral formula of
DifferentialGeometry 10.3–10.4 applied to the smooth map `Φ⁻¹ ∘ O : S³ → S³` and the top form `Φ*ω_f`;
injectivity by the Hopf degree theorem for `S³`: the Hurewicz isomorphism `π₃(S³) ≅ H₃(S³; ℤ)`
(AlgebraicTopology Stage 8, item 3) sends the class of a based map `h` to `h_*[S³]`, which equals
`deg h · [S³]` by AlgebraicTopology Stage 6, item 5, so based maps of equal degree are homotopic, and
5.6 passes to free classes. The source states `c₂ = deg O_(∞)` "with the appropriate choices of
orientations" (OhTataru-TopClass line 2369); the sign here is fixed by the orientations of the
Conventions.

**Checks.**

- `O = Φ(x/|x|)`, degree `1`: `c₂ = −1` (`χ = −8π²`, 1.4).
- The BPST connection: `O_(∞)(x) = Φ(x̄/|x|)`, which restricted to `S³` is `Φ` composed with
  `(x₁, x₂, x₃, x₄) ↦ (x₁, −x₂, −x₃, −x₄)` of degree `(−1)³ = −1`, so `c₂ = 1`, matching `χ = 8π²` for the
  anti-self-dual curvature (6.3).
- The trivial connection has `c₂ = 0`; with the opposite orientation of `S³` all signs flip, which is
  why the orientation is part of the statement.

*Needs:* AlgebraicTopology Stage 6 item 5 and Stage 8 item 3; DifferentialGeometry Layer 10
(10.3–10.5); 1.4, 5.6, 6.2.

### Examples

`χ = −8π²` for the pure gauge of `Φ`; `χ = 0` on `Ḣ¹` connections; the BPST charge `c₂ = 1`.

### Dependencies

Layers 1, 5; DifferentialGeometry Layer 5 and Layer 10 (10.3–10.5); AlgebraicTopology Stage 6 item 5
and Stage 8; the gap `hardy-inequality`.

## Layer 7: harmonic Yang–Mills connections and the ground state

Throughout this layer `d = 4`.

### 7.1 Harmonic Yang–Mills connections

Define a harmonic Yang–Mills connection on an open `X ⊆ ℝ⁴` as `A ∈ W^{1,2}_loc(X; 𝔤 ⊗ (ℝ⁴)*)` with
`∫_X Σ_{j,ℓ} ⟨F_ℓj, D_ℓ φ_j⟩ dx = 0` for every smooth compactly supported `𝔤`-valued 1-form `φ`, the weak
form of `D^ℓ F_ℓj = 0`; for a rough bundle, through the local potentials. It is nontrivial if `F ≢ 0`
(OhTataru-YMHF (1.1)–(1.2), lines 124–128; OhTataru-TopClass lines 829–834; OhTataru-Threshold
lines 253–266).

- The weak equation is the vanishing of the first variation of `∫_K |F|²` under compactly supported
  variations; it is invariant under `G^{2,2}_loc` gauge transformations, translations, dilations
  `A ↦ A_λ` and the conformal inversion `x ↦ x/|x|²` of `ℝ⁴ ∖ {0}`, which preserves `ℰ_e` on corresponding
  sets.
- Self-dual and anti-self-dual connections are harmonic, by the Bianchi identity.
- For commutative `G` a finite-energy harmonic connection on `ℝ⁴` has `F = 0` (no nonzero `L²` harmonic
  2-forms).

**Checks.**

- A flat connection is harmonic and trivial.
- `G = U(1)`, `A = (i/2)(x₁ dx₂ − x₂ dx₁)`: `F = i dx¹ ∧ dx²` is constant, harmonic, of infinite energy; with
  `F = iψ(x) dx¹ ∧ dx²` for nonconstant `ψ = ψ(x₁)`, `∂^ℓF_ℓ2 = iψ'(x₁) ≠ 0`, not harmonic.
- The BPST connection (§7.6) is anti-self-dual, hence harmonic, with `ℰ_e = 8π²`.

*Needs:* 1.3, 1.5, 3.1.

### 7.2 Regularity

Prove (OhTataru-YMHF Theorem 2.1, lines 275–276; OhTataru-Threshold Theorem 1.5, lines 269–274):
every harmonic Yang–Mills connection on a ball or on `ℝ⁴` is smooth after a gauge transformation
`O ∈ G^{2,2}_loc`, and on a general open set locally so. Prove further the quantitative ε-regularity,
which the cited sources do not state and which is proved here by the route below from 4.1 and 4.3:
there is `ε > 0` such that every harmonic Yang–Mills connection on `B₁` with `‖F‖_{L²(B₁)} ≤ ε` satisfies
`‖D^{(n)}F‖_{L^∞(B_{1/2})} ≲_n ‖F‖_{L²(B₁)}` for every `n ≥ 0`; the left side is gauge invariant, since
`D^{(n)}F` transforms by `Ad(O)`. Route: the Coulomb gauge of 4.1 (on `B₁` itself when `ε < ε₀`, on
small balls in general) turns the equation into the elliptic system `ΔA_k = −[A_j, D_kA_j] + …` (OhTataru-YMHF (1.4), line 134) with
critical quadratic terms; smallness of `‖A‖_{W^{1,2}} ≤ C₀‖F‖_{L²}` bootstraps through `W^{2,p}`, `p > 2`,
and 4.3, and in this small regime every estimate is bounded by a constant multiple of
`‖A‖_{W^{1,2}(B₁)}`, which gives the quantitative bound; patching by 3.3.

*Needs:* 3.3, 4.1, 4.3; PDE §2.3, §1.4.

### 7.3 Removable singularities and decay at infinity

Prove (OhTataru-YMHF lines 315–320; Uhlenbeck-RemovableSingularities Theorem 4.1; OhTataru-TopClass
Theorem 3.12): a harmonic Yang–Mills connection on `B'₁` with `∫_{B'₁} |F|² < ∞` extends, after a gauge
transformation on `B'_{1/2}`, to a smooth harmonic Yang–Mills connection on `B_{1/2}`; and a finite-energy
harmonic Yang–Mills connection on `ℝ⁴` satisfies `|D^{(n)}F(x)| ≤ C_n(a)(1 + |x|)^{−4−n}` for every `n`, with
constants depending on the connection. Route: 4.2 on a small punctured ball, removability of a point
for the weak equation (a point has zero `W^{1,2}` capacity in `ℝ⁴`), 7.2; for decay, the inversion of 7.1.

**Checks.**

- The BPST connection: `|F| = √48 (1 + |x|²)^{−2}`, so `|F(x)| ≈ √48 |x|^{−4}`, the rate asserted.
- The pure gauge of `Φ(x/|x|)` on `B'₁` is flat; the statement produces the gauge `O⁻¹` removing the
  singularity of the potential.

*Needs:* 4.2, 7.1, 7.2.

### 7.4 The Weitzenböck formula and the improved Kato inequality

Prove, for a smooth harmonic Yang–Mills connection `A` on an open `X ⊆ ℝ⁴`
(GurskyKelleherStreets-GapTheorem Lemma 2.1, lines 139–153, Proposition 2.8, lines 242–286, and (3.1)–(3.4),
lines 293–308, specialised to the flat metric):

- `d_A F⁺ = 0` and `d_A^* F⁺ = 0`, and `½ Δ|F⁺|² = |∇_A F⁺|² + ⟨F⁺, 𝔉_{F⁺}(F⁺)⟩`;
- the improved Kato inequality `|∇_A ω|² ≥ (3/2) |∇|ω||²` wherever `ω ≠ 0`, for every `𝔤`-valued 2-form `ω`
  with `d_A ω = 0 = d_A^* ω`;
- consequently `Δ|F⁺|^{1/2} ≥ −(√6/3) γ₀ |F⁺| |F⁺|^{1/2}` in the sense of distributions on `X`, and the same for
  `F⁻` after reversing the orientation.

The constant `√6/3` is half the constant `2√6/3` of 1.6.

**Checks.**

- For `G` commutative the cubic term vanishes and `|F⁺|^{1/2}` is subharmonic.
- For the self-dual BPST connection (the orientation-reversed instanton of §7.6) the inequality of
  1.6 is an equality at every point, so the cubic term is exactly `−(2√6/3)√2 |F⁺|³` up to sign.

*Needs:* 1.5, 1.6, 7.2.

### 7.5 The energy gap

Prove (GurskyKelleherStreets-GapTheorem Theorem 1.1 and Corollary 1.2(1), lines 36–41 and 88–100;
OhTataru-TopClass Theorem 1.30, Claim 6.3 and footnote 6, lines 877–878, 894–896 and 2373–2407;
OhTataru-YMHF Theorem 2.5, lines 348–352): for noncommutative `G` and every finite-energy harmonic
Yang–Mills connection on `ℝ⁴`, if `F⁺ ≢ 0` then `∫ |F⁺|² ≥ 16π²/γ₀²`, and likewise for `F⁻`; hence if `F` is
neither self-dual nor anti-self-dual, `ℰ_e ≥ |χ| + 32π²/γ₀²`, and every nontrivial one has
`ℰ_e ≥ 16π²/γ₀²`. Route: 7.4 with `u = |F⁺|^{1/2}` gives `∫ |∇u|² ≤ (√6/3)γ₀ ∫ |F⁺|²` after integration
against `u` (justified by 7.3); the sharp Sobolev inequality `6 ∫ |∇u|² ≥ 8√6 π (∫ u⁴)^{1/2}` and
`(∫ u⁴)^{1/2} = ‖F⁺‖_{L²}` give `‖F⁺‖_{L²} ≥ 4π/γ₀`; then 6.3. The constants are those of the source after
conversion: GurskyKelleherStreets use `⟨A, B⟩ = −½ tr(AB)` and the all-index norm of 2-forms, so their
`∫|F|²` is `2ℰ_e` here for `SU(2)`, and their `16π²|κ| + 32π²` becomes `8π²|c₂| + 16π²`.

**Checks.**

- `SU(2)` with `−tr`, `γ₀ = √2`: non-instantons have `ℰ_e ≥ 8π²|c₂| + 16π²`, OhTataru-YMHF Theorem 2.5; the
  self-dual BPST connection has `∫|F⁺|² = 8π² = 16π²/γ₀²`, so the first bound is sharp.
- `𝔰𝔲(2) ⊕ 𝔰𝔲(2)` with `−tr` on each factor: an instanton of charge `−1` in one factor and of charge `1` in
  the other is neither self-dual nor anti-self-dual, with `ℰ_e = 16π²`, `χ = 0`, and
  `16π² = |χ| + 32π²/γ₀²`: equality.
- Commutative `G`: `γ₀ = 0` and the statement is replaced by 7.1's vanishing of `F`.

*Needs:* Yamabe Y2 item 1; 6.3, 7.3, 7.4.

### 7.6 The BPST connection on `ℝ⁴`

For `G = SU(2)` with `−tr` define `A_BPST = Φ(Im(x̄ dx))/(1 + |x|²)`, writing `x = x₁ + x₂i + x₃j + x₄k` as a
quaternion and `Φ` for the identification of the Conventions (OhTataru-TopClass Theorem 1.29,
lines 871–872; GurskyKelleherStreets-GapTheorem Remark 2.7, lines 223–232; FreedUhlenbeck-Instantons Ch. 3;
DonaldsonKronheimer Ch. 3).

- `F[A_BPST] = Φ(dx̄ ∧ dx)/(1 + |x|²)²`, which is anti-self-dual; `A_BPST` is a smooth harmonic Yang–Mills
  connection with `ℰ_e = 8π²`, `χ = 8π²`, `c₂ = 1`, and gauge at infinity `O_(∞)(x) = Φ(x̄/|x|)`.
- Translations and dilations `λA_BPST(λ(x − b))` preserve all these values; composing with the
  orientation-reversing map `x ↦ x̄` gives a self-dual connection with `c₂ = −1`.
- For a Lie algebra homomorphism `φ : 𝔰𝔲(2) → 𝔤` with `⟨φX, φY⟩ = −c tr(XY)`, `φ ∘ A_BPST` is a harmonic
  `G`-connection with `ℰ_e = 8π²c`.

**Checks.**

- At `x = 0`, `A_BPST = 0` and `F = Φ(dx̄ ∧ dx)`, whose `Φ(i)`-component is `2(dx¹ ∧ dx² − dx³ ∧ dx⁴)`:
  anti-self-dual.
- `|F|² = 48/(1 + |x|²)⁴` (six components of norm `2√2/(1 + |x|²)²`), and
  `ℰ_e = 96π² ∫₀^∞ r³(1 + r²)^{−4} dr = 96π² · (1/12) = 8π²`.
- At infinity `A_BPST − Φ(Im(x̄ dx))/|x|² = O(|x|^{−3})`, and `Φ(Im(x̄ dx))/|x|² = −O;x` for `O = Φ(x̄/|x|)`, of
  degree `−1`; so `c₂ = 1` by 6.4, agreeing with `χ = ℰ_e` for anti-self-dual curvature.

*Needs:* 1.1, 1.5, 6.3, 6.4, 7.1.

### 7.7 The ground state energy

Define `E_GS(G) = inf {ℰ_e(a) : a a nontrivial finite-energy harmonic Yang–Mills connection on ℝ⁴}`, with
value `+∞` for an empty set. Prove (OhTataru-TopClass Theorem 1.32, lines 910–918, proof lines 2268–2451;
OhTataru-YMHF Theorem 6.10, lines 2905–2918; OhTataru-Threshold Theorem 1.6, lines 277–283): for
noncommutative `G`,

- `E_GS = 16π²/γ₀²`, attained by `φ ∘ A_BPST` for an embedding `φ` of `𝔰𝔲(2)` onto a subalgebra `𝔰` with
  `γ₀(𝔰) = γ₀(𝔤)`;
- every nontrivial finite-energy harmonic Yang–Mills connection `a` has `ℰ_e(a) ≥ 2E_GS` or
  `|χ(a)| = ℰ_e(a) ≥ E_GS`;
- for `G = SU(2)` with `−tr`, `E_GS = 8π²`, attained by `A_BPST`.

Route: the lower bound is 7.5; for the upper bound, `𝔰` carries an `Ad`-invariant inner product
proportional to `−tr`, `⟨φX, φY⟩ = −c tr(XY)`, and `γ₀(𝔰) = √2/√c`, so `ℰ_e(φ ∘ A_BPST) = 8π²c = 16π²/γ₀²`; the
second item from 7.5, since a non-instanton has `ℰ_e ≥ |χ| + 32π²/γ₀² ≥ 2E_GS`. The source's route
through Bott's theorem on `π₃` of simple groups (OhTataru-TopClass Theorem 6.1, line 2340) and the
splitting into simple ideals is replaced by this one, which needs no `π₃` computation; the value
`16π²/γ₀²` agrees with the source's `16π²/⟨α, α⟩` for a highest root `α` (line 2445), since `γ₀ = |α|`
(Lemma 6.4).

**Checks.**

- `SU(2)`: `16π²/(√2)² = 8π²`, the BPST energy; the topologically trivial threshold is `2E_GS = 16π²`.
- Rescaling the inner product by `c` multiplies `E_GS` by `c` and `γ₀^{−2}` by `c`.
- Commutative `G`: the set is empty and `E_GS = +∞`.

*Needs:* gap `compact-su2-subalgebra` (LieGroups); 1.6, 7.5, 7.6.

### Examples

The BPST connection with `ℰ_e = χ = 8π²`; the pair of opposite instantons in `𝔰𝔲(2) ⊕ 𝔰𝔲(2)` attaining the
gap; `E_GS(SU(2)) = 8π²`.

### Dependencies

Layers 1, 3–6; Yamabe Y2; PDE §1.4 and §2.3; the gap `compact-su2-subalgebra`.

## Layer 8: homogeneous spaces and linear covariant flows on `ℝ⁴`

Throughout Layers 8–10 `d = 4`, and connections are `𝔤`-valued 1-forms on `ℝ⁴` or on `ℝ⁴ × J`.

### 8.1 Homogeneous spaces and frequency envelopes

Use the spaces `Ḣ¹ = Ẇ^{1,2}`, `Ḣ^σ`, `ℓ¹L²`, `ℓ¹Ḣ^σ` and `ℋ` of the Conventions, and for block norms
`‖P_k u‖_{Ẇ^{σ,p}} = 2^{kσ}‖P_k u‖_{L^p}`. Prove that `Ḣ¹ = {u ∈ L⁴ : ∇u ∈ L²}` is a Banach space in which
`C_c^∞` is dense, that it agrees with the realisation of PDE §7.2's `Ḃ¹_{2,2}` (`s = 1 < d/p = 2`) with
equivalent norms, and that `ℋ` is a Banach space. Define, after OhTataru-YMHF Definitions 3.2–3.4 and
Lemma 3.5 (lines 884–954), with a small universal `δ > 0` and `0 < ε ≪ 1`:

- a frequency envelope for `u` in a translation-invariant space `X` is a positive sequence `(c_k)_{k∈ℤ}`
  with `‖P_k u‖_X ≤ c_k` and `2^{−δ(j−k)} ≲ c_k/c_j ≲ 2^{δ(j−k)}` for `j > k`;
- it is `(−σ₁, σ₂)`-admissible if `2^{−σ₁(1−ε)(j−k)} ≲ c_k/c_j ≲ 2^{σ₂(1−ε)(j−k)}` for `j > k`;
- `d_k` is `σ`-compatible with `c_k` if `c_k Σ_{j<k} 2^{σ(1−ε)(j−k)} d_j ≲ d_k`;
- `c^{[σ]}_k = sup_{j<k} 2^{(1−ε)σ(j−k)} c_j`, `(c·d)_k = c_k d_k`, `a_{≤k} = Σ_{j≤k} a_j`.

Prove: every `u ∈ Ḣ^σ` has a `(−σ₁, σ₂)`-admissible envelope with `‖c‖_{ℓ²} ≲ ‖u‖_{Ḣ^σ}`; and Lemma 3.5: if
`c_k`, `d_k` are `(−σ₁, S)` envelopes and `c` is bounded, then `e_k = d_k + c_k Σ_{j<k} 2^{σ̃(j−k)} d_j`,
`σ̃ < σ(1 − ε)`, is `σ`-compatible with `c_k`, with constant at most `1 + C_{σ(1−ε)−σ̃}‖c‖_{ℓ^∞}`.

**Checks.**

- `u` with a single nonzero block `P_{k₀}u`: `c_k = 2^{−δ|k−k₀|}‖P_{k₀}u‖_X` is an envelope, and every
  envelope has `c_{k₀} ≥ ‖P_{k₀}u‖_X`.
- `c_k = 2^{k}` for `k ≤ 0`, `c_k = 1` for `k > 0` grows at rate `1 > 1 − ε` to the right on `k ≤ 0`, so it is
  not `(−1, S)`-admissible for any `S`.
- `ℋ ⊊ Ḣ¹`: a gradient field `a = ∇φ` with `‖P_k(∂^ℓ a_ℓ)‖_{L²} = 1/k` for `k ≥ 1` and `0` otherwise is in `Ḣ¹`
  but `Σ_k 1/k = ∞`, so `a ∉ ℋ`; a divergence-free `a ∈ Ḣ¹` has `‖a‖_ℋ = ‖a‖_{Ḣ¹}`; for `λ = 2^m`,
  `‖λa(λ·)‖_ℋ = ‖a‖_ℋ`.

*Needs:* PDE §7.1, §7.2; Mathlib `MeasureTheory.eLpNorm_le_eLpNorm_fderiv_of_eq`.

### 8.2 Solvability for the covariant Laplacian

For `A ∈ Ḣ¹` put `Δ_A = D^ℓ D_ℓ`. Prove (OhTataru-YMHF Theorems 4.1–4.2, lines 955–1175): for
`0 < σ < 2` and `F ∈ Ḣ^{σ−2}` there is a unique `B ∈ Ḣ^σ` with `Δ_A B = F` and
`‖B‖_{Ḣ^σ} ≲_{‖A‖_{Ḣ¹}} ‖F‖_{Ḣ^{σ−2}}`; if moreover `∂^j A_j ∈ ℓ¹L²`, then `‖B‖_{ℓ¹Ḣ²} ≲ ‖F‖_{ℓ¹L²}` with a
constant depending on `‖A‖_{Ḣ¹}` and `‖∂^j A_j‖_{ℓ¹L²}`; and if `c_k` is a `(−1, S)` envelope for `A` in
`Ḣ¹` and `d_k` a `(−1, S)` envelope for `F` in `Ḣ^{−1}` that is `1`-compatible with `c_k`, then
`‖P_k B‖_{Ḣ¹} ≲ d_k`. Route: at `σ = 1`, the minimiser of `∫ ½|DB|² − ⟨B, F⟩` with the diamagnetic inequality `|∂|B|| ≤ |DB|` and
`‖B‖_{L⁴} + ‖B‖_{Ḣ¹} ≲ (1 + ‖A‖_{Ḣ¹})‖DB‖_{L²}`; `σ < 1` by duality; `σ > 1` and the envelope bounds by the
paradifferential decomposition with `[P_{<k}, Δ_A]`.

**Checks.**

- `A = 0`: `B = Δ⁻¹F`, the Fourier multiplier `−(4π²|ξ|²)⁻¹`, and `‖B‖_{Ḣ^σ}` is `‖F‖_{Ḣ^{σ−2}}` up to the factor
  `4π²` of Mathlib's normalisation.
- A pure gauge `A = −O;x` with `O;x ∈ Ḣ¹`: `Δ_A(Ad(O)B) = Ad(O)ΔB`, so the solution is `Ad(O)Δ⁻¹(Ad(O⁻¹)F)`.
- The diamagnetic inequality at a point where `B ≠ 0`: `∂_j|B| = ⟨B, D_j B⟩/|B|` since `⟨B, [A_j, B]⟩ = 0`.

*Needs:* PDE §7.1–7.3; 8.1.

### 8.3 The covariant heat operator: `L²` theory

On `ℝ⁴ × J` let `A ∈ L^∞(J; Ḣ¹)` with `F ∈ L²(J; Ḣ¹)` and `∂_s A ∈ L²(J; L²)`, and consider
`∂_s B_j − Δ_A B_j − 2[F_j^k, B_k] = G_j + D^k H_kj` (OhTataru-YMHF (4.9), lines 1176–1183). Prove
(Theorems 4.3, 4.5, 4.6 and Corollary 4.4, lines 1187–1345): for `−2 < σ < 2` the problem is well posed in
`Ḣ^σ` with `‖B‖_{L^∞Ḣ^σ} + ‖DB‖_{L²Ḣ^σ} ≲ ‖B(0)‖_{Ḣ^σ} + ‖G‖_{L¹Ḣ^σ} + ‖H‖_{L²Ḣ^σ}`, constants depending on
`‖A‖_{L^∞Ḣ¹}`, `‖F‖_{L²Ḣ¹}`, `‖∂_s A‖_{L²L²}`, with covariant derivatives on the left for `σ ≥ 1` and on the right
for `σ ≤ −1`; the envelope bounds `‖P_k B‖_{L^∞L²} + ‖P_k DB‖_{L²L²} ≲ d_k` for `(−2, 2)` envelopes, and for
`1`-compatible `(−2, S)` envelopes when `‖P_k A‖_{L^∞Ḣ¹} + ‖P_k F‖_{L²Ḣ¹} + ‖P_k ∂_s A‖_{L²L²} ≲ c_k` with `c_k` a
`(−1, S)` envelope; and for `H = 0`, `−1 < σ < 1`, `‖DB‖_{L¹Ḣ^σ} ≲ ‖B(0)‖_{Ḣ^{σ−1}} + ‖G‖_{L¹Ḣ^{σ−1}}`, with its
envelope version.

**Checks.**

- `A = 0`, `G = H = 0`, `σ = 0`: `‖B(s)‖²_{L²} + 2∫₀^s ‖∇B‖²_{L²} = ‖B(0)‖²_{L²}` with Mathlib's `Δ`, so the
  estimate holds with constant `1`.
- At `σ = 0` the estimate is invariant under `A ↦ λA(λ²s, λx)`, `B ↦ λ²B(λ²s, λx)`, `G ↦ λ⁴G(λ²s, λx)`,
  `H ↦ λ³H(λ²s, λx)`: for instance `‖λ⁴G(λ²·, λ·)‖_{L¹L²} = λ⁴ · λ^{−2} · λ^{−2} ‖G‖_{L¹L²}`, and the hypotheses'
  norms of `A` are invariant.
- `σ = 2` is excluded: the term `2[F_j^k, B_k]` with `F ∈ L²Ḣ¹` is not controlled in `L¹Ḣ²`.

*Needs:* PDE §6.1, §6.3, §7.1; 8.1, 8.2.

### 8.4 The covariant heat operator: `L^p` parabolic regularity

Assume `‖P_k A(s)‖_{Ḣ¹} ≲ c_k(1 + 2^{2k}s)^{−N}` for all `s > 0` with `(c_k) ∈ ℓ²` and `N > 2`. Prove
(OhTataru-YMHF Theorems 4.7–4.8, lines 1346–1530): for `−2 < σ < 4/p`, `2 ≤ p ≤ ∞` and
`0 < δ ≤ min{4/p − σ, 2 + σ}`, with the sequence `c_k` of the hypothesis a `(−δ, S)` envelope and
`d^{σ,p}_k` a `(−δ, S)` envelope for `b` in `Ẇ^{σ,p}` that is `δ`-compatible with `c_k`, the homogeneous
problem `(∂_s − Δ_A − 2ad(F))B = 0`, `B(0) = b`, has a unique solution `B ∈ C([0, ∞); Ẇ^{σ,p})` with
`‖P_k B(s)‖_{Ẇ^{σ,p}} ≲_{‖c‖_{ℓ²}, N} d^{σ,p}_k (1 + 2^{2k}s)^{−N}`; and for `0 ≤ β < 1` and a `(−δ, S)`
envelope `d^{σ,p}_k` that is `δ`-compatible with `c_k`, the inhomogeneous problem with `B(0) = 0` and
`‖P_k G‖_{Ẇ^{σ,p}} ≲ 2^{2k}(2^{2k}s)^{−β} d^{σ,p}_k (1 + 2^{2k}s)^{−N}` has
`‖P_k B‖_{Ẇ^{σ,p}} ≲ (2^{2k}s)^{1−β} d^{σ,p}_k (1 + 2^{2k}s)^{−N}`. The source writes the exponent of the
second conclusion as `1 − α/2` (line 1522), which does not match its `L²` case `1 − β` (line 1517); the
exponent `1 − β` is the one its induction (4.35) propagates with `α` read as `β`.

**Checks.**

- `A = 0`, `b = P_k b`: `‖e^{sΔ}P_k b‖_{L^p} ≲ exp(−c 4^k s)‖P_k b‖_{L^p}` (PDE §7.1), which is stronger than the
  polynomial decay asserted.
- `β = 0`, `A = 0`, `G = P_k G` constant in `s`: `B(s) = ∫₀^s e^{(s−s')Δ}G ds'` has `‖B‖ ≈ s‖G‖` for
  `s ≲ 2^{−2k}`, matching `(2^{2k}s) · 2^{−2k}`.

*Needs:* PDE §6.3, §7.1; 8.1, 8.3.

### Examples

The heat equation as the case `A = 0`; the conjugation of `Δ` by a pure gauge; single-block envelopes.

### Dependencies

PDE §6.1, §6.3, §7.1–7.3; Layer 1.

## Layer 9: the Yang–Mills heat flow on `ℝ⁴`

### 9.1 The covariant, dynamic and linearised flows

Define a covariant Yang–Mills heat flow on `ℝ⁴ × J` as a connection `A_j dx^j + A_s ds` solving
`F_sj = D^ℓ F_ℓj`, with `F_sj = ∂_s A_j − ∂_j A_s + [A_s, A_j]`; a dynamic Yang–Mills heat flow as
`A_α dx^α + A_s ds`, `α = 0, …, 4`, solving `F_sα = D^ℓ F_ℓα`; and the linearised flow
`D_s B_i − D_i B_s = D^ℓ(D_ℓ B_i − D_i B_ℓ) + [B^ℓ, F_ℓi]` (OhTataru-YMHF Definitions 5.1 and 5.3, (5.4),
lines 1541–1607). Prove, for regular solutions:

- covariance under gauge transformations `O(s, x)` (and `O(t, s, x)` for the dynamic flow), and the
  linearised gauge invariance `B ↦ B − D A₀` of (5.5);
- the curvature equations `D_s F_ij − D^ℓ D_ℓ F_ij = −2[F^ℓ_i, F_jℓ]` and
  `D_s F_si − D^ℓ D_ℓ F_si = −2[F^ℓ_s, F_iℓ]`, and their dynamic versions (Lemmas 5.2 and 5.4);
- the energy identity `∫|F|²(s₁) + 2∫_{s₀}^{s₁}∫ Σ_j |D^ℓ F_ℓj|² = ∫|F|²(s₀)` (Proposition 5.6, (1.19));
- in the local caloric gauge `A_s = 0`: `∂_s A_i = D^ℓ D_ℓ A_i − D^ℓ ∂_i A_ℓ` (5.21),
  `∂_s ∂^ℓ A_ℓ = −[A^k, D^ℓ F_ℓk]` (5.22), the linearised flow `∂_s B_i = D^j(D_j B_i − D_i B_j) + [B^j, F_ji]`
  (5.23) with the residual freedom `B ↦ B − DC`, `C = C(x)`, and the `A₀` equations (5.26)–(5.28); in the de
  Turck gauge `A_s = ∂^ℓ A_ℓ`: `(∂_s − Δ_A)A_j = [A_j, ∂^k A_k] − [A^k, ∂_j A_k]` (1.7)–(1.8);
- every regular covariant flow is gauge equivalent to one in the local caloric gauge, by the gauge
  transformation `O` with `∂_s O = O A_s` and `O(0) = 1` (so that `(O·A)_s = Ad(O)A_s − (∂_s O)O⁻¹ = 0`), unique up to
  `s`-independent gauge transformations.

**Checks.**

- Energy identity, `G = U(1)`, one Fourier mode `a = α e^{2πiξ·x}` with `ξ·α = 0` (complexified): the flow is
  `∂_s a = Δa`, the energy per unit volume `4π²|ξ|²|α|² e^{−8π²|ξ|²s}` has derivative
  `−32π⁴|ξ|⁴|α|²e^{−8π²|ξ|²s}`, and `Σ_j |∂^ℓ f_ℓj|² = 16π⁴|ξ|⁴|α|²e^{−8π²|ξ|²s}`: the factor is `2`. The source's
  (1.19) and (5.11) print the dissipation term with factor `1` for the energy `½∫⟨F_jk, F^{jk}⟩`.
- A flat connection is a stationary solution in the local caloric gauge: `D^ℓ F_ℓj = 0`.
- Parabolic scaling `A ↦ λA(λx, λ²s)`, `A_s ↦ λ²A_s(λx, λ²s)` maps solutions to solutions.

*Needs:* 1.3; PDE §6.3.

### 9.2 Covariant bounds

Prove (OhTataru-YMHF Proposition 5.7, Corollary 5.8 and Lemma 5.17, lines 1628–1801 and 1986–2000): for a
regular covariant flow on `J = [0, s₁)` with `‖F‖_{L³(J; L³)} ≤ Q`, the weighted bounds
`‖s^{n/2} D^{(n)}_x F‖_{L^∞(J, ds/s; L²)} + ‖s^{(n+1)/2} D^{(n+1)}_x F‖_{L²(J, ds/s; L²)} ≲ Q_n(‖F(0)‖_{L²}, Q)` for
every `n ≥ 0`, and the same for `F_{0j}` of a dynamic flow in terms of `‖F_{0x}(0)‖_{L²}` and `‖F(0)‖_{L²}`; the `L^p L^q` bounds
of Corollary 5.8 by the diamagnetic inequality; and, in the local caloric gauge with energy `≤ E`,
`‖A‖_{L^∞(J; Ḣ¹)} ≲_{Q,E} 1 + inf_{s∈J}‖A(s)‖_{Ḣ¹}`, with its version on balls.

*Needs:* 8.1, 9.1.

### 9.3 Local well-posedness in the local caloric gauge

Define a regular solution as `A ∈ C(J; Ḣ¹ ∩ Ḣ³)` solving (5.21), and an `Ḣ¹` solution on `J = [0, s₀)` as
`A ∈ C(J; Ḣ¹)` that is, on every compact subinterval, the `C(·; Ḣ¹)`-limit of regular solutions
(OhTataru-YMHF Lemmas 5.16 and 5.26, lines 1963–1980 and 2336–2340). Prove (Theorem 5.9, lines 1873–1875):

- for every `a ∈ Ḣ¹` there is a unique maximal `Ḣ¹` solution on `[0, s₀(a))`, `s₀(a) ∈ (0, ∞]`;
- for every `s₁ < s₀(a)` there are `ε, C > 0` such that `‖ã − a‖_{Ḣ¹} < ε` implies `s₀(ã) > s₁` and
  `sup_{[0,s₁]}‖Ã − A‖_{Ḣ¹} ≤ C‖ã − a‖_{Ḣ¹}`;
- the same holds with `Ḣ¹` replaced by `ℋ` and by `Ḣ¹ ∩ Ḣ^σ`, `σ ≥ 1`, for data in those spaces, with the
  same `s₀(a)`.

Route: local well-posedness in `Ḣ¹ ∩ Ḣ³` with lifespan depending on the size of the data, by the
curl/div splitting into a parabolic and a transport equation; regularised data `P_{<k}a` with the
`L³L³` bound controlled on a common interval; the linearised flow solved through the dynamic flow (the
infinitesimal de Turck trick), with 8.3–8.4.

**Checks.**

- Dilation: `s₀(λa(λ·)) = λ^{−2}s₀(a)`, so `s₀` is not bounded below in terms of `‖a‖_{Ḣ¹}` alone.
- `a` flat with `a ∈ Ḣ¹`: `A(s) = a` for all `s`, `s₀ = ∞`.
- `G = U(1)`: `A(s) = ∇φ + e^{sΔ}a^{df}` for the Helmholtz decomposition `a = ∇φ + a^{df}`, global for every
  `a ∈ Ḣ¹`.

*Needs:* 8.1–8.4, 9.1, 9.2.

### 9.4 Caloric size, continuation and small energy

Define the caloric size `Q(a) = ‖F‖_{L³([0,∞); L³)}` when `s₀(a) = ∞`, and `Q(a) = ∞` otherwise
(OhTataru-YMHF (2.5) and (5.40), lines 419–425 and 1940–1942). Prove (Theorem 5.10, Theorem 5.11,
Corollaries 5.12–5.14, lines 1878–1948):

- if `‖F‖_{L³(J;L³)} ≤ Q` on `J = [0, s₀)` and `‖a‖_{Ḣ¹} ≤ M₁`, then
  `‖A‖_{L^∞Ḣ¹} + ‖F‖_{L^∞L² ∩ L²Ḣ¹} + ‖∂_s A‖_{L²L²} ≲_Q ‖a‖_{Ḣ¹}`, the linearised bounds
  `‖B‖_{L^∞Ḣ^σ} + ‖curl_A B‖_{L²Ḣ^σ} ≲_{Q,M₁} ‖b‖_{Ḣ^σ}` for `−2 < σ < 2`, the higher-regularity bounds for
  `a ∈ Ḣ^σ`, `σ > 1`, the analogous `ℋ` bounds, and the envelope bounds of Theorem 5.11;
- under the same hypothesis the limit `A(s₀) = lim_{s→s₀} A(s)` exists in `Ḣ¹` (in `ℋ`, in `Ḣ¹ ∩ Ḣ^σ` for such
  data), and nearby data have solutions on a strictly larger interval with `L³L³` norm at most `2Q`;
- continuation: a maximal `Ḣ¹` solution on `[0, s₀)` has `s₀ = ∞` or `‖F‖_{L³([0,s₀); L³)} = ∞`;
- small energy: there is `ε > 0` such that `ℰ_e(a) ≤ ε` implies `s₀(a) = ∞` and `Q(a)² ≲ ℰ_e(a)`.

**Checks.**

- `Q` is dilation invariant: `F_λ(s, x) = λ²F(λ²s, λx)` gives `∫∫ λ⁶|F(λ²s, λx)|³ dx ds = ∫∫ |F|³`.
- A flat `a ∈ Ḣ¹` has `Q(a) = 0`.
- The BPST potential is not in `Ḣ¹` (`|A_BPST| ≈ |x|^{−1}` is not in `L⁴(ℝ⁴)`); as a static flow it has
  `‖F‖_{L³([0,∞); L³)} = ∞`, so no small-energy or threshold statement applies to it.

*Needs:* 8.3, 9.1–9.3.

### 9.5 Convergence to a flat connection

Prove (OhTataru-YMHF Corollary 5.15 and Lemma 5.33, lines 1952–1957 and 2509–2520): for a global `Ḣ¹`
solution with `Q(a) ≤ Q < ∞` the limit `A_∞ = lim_{s→∞} A(s)` exists in `Ḣ¹` (in `ℋ` for `a ∈ ℋ`) and is flat;
the linearised solution with data `b ∈ Ḣ^σ`, `0 ≤ σ ≤ 1` (resp. `b ∈ ℋ`), has a limit `B_∞` in `Ḣ^σ`
(resp. `ℋ`), with `D(A_∞)_k B_{∞,j} − D(A_∞)_j B_{∞,k} = 0`; the map `a ↦ A_∞` is Lipschitz in `Ḣ¹`, `ℋ` and `Ḣ¹ ∩ Ḣ^σ` (`σ > 1`)
on bounded convex subsets of `Ḣ¹` on which `Q` is uniformly bounded, and `C¹` along every `C¹` curve in
these spaces with uniformly bounded `Q`, with derivative `B_∞`. The source's Corollary 5.15 states the
linearised limit for `−1 < σ < 2` (OhTataru-YMHF lines 1954–1955), while its proof, Lemma 5.33(2)
(lines 2515–2516), gives `0 ≤ σ ≤ 1`; the statement above keeps the range that is proved.

**Checks.**

- `G = U(1)`: `A_∞ = ∇φ`, the gradient part of `a`, and `a ↦ A_∞` is the bounded linear Helmholtz projection.
- Pure gauge data `a = −O;x` with `O;x ∈ Ḣ¹`: `A_∞ = a`.

*Needs:* 9.2–9.4.

### 9.6 The Dichotomy Theorem

Prove (OhTataru-YMHF Theorem 6.1, lines 2562–2589, with Lemmas 6.2–6.5, lines 2605–2786): for `a ∈ Ḣ¹`,
either `s₀(a) = ∞` and `Q(a) < ∞`, or there are heat-times `s_n ↗ s₀(a)`, points `x_n ∈ ℝ⁴`,
scales `r_n > 0` with `r_n² ≤ s_n` (and `r_n → 0` when `s₀(a) < ∞`), `s`-independent gauge transformations
`O_n ∈ G^{2,2}_loc(ℝ⁴)` and a nontrivial finite-energy harmonic Yang–Mills connection `Q` such that
`O_n·(r_n A)(x_n + r_n x, s_n + r_n² s) → Q(x)` and `Ad(O_n)(r_n² F)(x_n + r_n x, s_n + r_n² s) → F[Q](x)` in
`L²_loc(ℝ⁴ × [−1, 0])`. The source also asserts `x_n → x₀`; its proof locates the concentration cubes
without showing that their centres converge, and the statement above omits that clause.

**Checks.**

- Small energy `ℰ_e(a) ≤ ε`: the first alternative holds (9.4), consistent with `ℰ_e(Q) ≥ E_GS > ε` for any
  bubble.
- A bubble satisfies `ℰ_e(Q) ≤ ℰ_e(a)`, by the energy identity and lower semicontinuity.

*Needs:* 4.1, 7.1, 7.2, 9.1–9.4.

### 9.7 The Threshold Theorem

Prove (OhTataru-YMHF Theorem 6.6, lines 2833–2837, proof lines 2852–2990): for noncommutative `G` and every
`E < 2E_GS` there is `Q_E < ∞` such that every `a ∈ Ḣ¹(ℝ⁴)` with `ℰ_e(a) ≤ E` has `s₀(a) = ∞` and
`Q(a) ≤ Q_E`. Route: a contradiction argument with a sequence of data, interval selection by the energy
identity, extraction of a nontrivial harmonic bubble as in 9.6, which has energy `< 2E_GS` and hence
`|χ| = ℰ_e ≥ E_GS` by 7.7, against `χ = 0` on `Ḣ¹` (6.3) and the continuity of `χ` along the extraction.

**Checks.**

- `G = SU(2)`: the threshold is `16π²`; `Ḣ¹` data with energy below `16π²` flow globally to a flat limit.
- The `Ḣ¹` hypothesis is needed: the BPST connection has `ℰ_e = 8π² < 2E_GS` and is a static solution with
  infinite caloric size (9.4, Checks); it lies in the class `c₂ = 1`, not in `Ḣ¹`.
- Commutative `G` is excluded by the hypothesis; there every `a ∈ Ḣ¹` flows globally (9.3, Checks).

*Needs:* 6.3, 7.7, 9.4, 9.6.

### Examples

The abelian flow as the Helmholtz splitting followed by the heat equation; the static BPST solution
with infinite caloric size; the threshold `16π²` for `SU(2)`.

### Dependencies

Layer 8; Layers 4, 6 and 7 for 9.6–9.7; PDE §6.3.

## Layer 10: the caloric gauge and the caloric manifold

### 10.1 Flat `Ḣ¹` connections are pure gauges

Prove (OhTataru-YMHF lines 552–560 and 584–592, Lemma 7.3, lines 3163–3211; OhTataru-TopClass Lemma 3.17,
lines 1487–1496): for flat `a ∈ Ḣ¹(ℝ⁴)` there is `O ∈ G^{2,2}_loc(ℝ⁴)` with `O·a = 0`, i.e. `a = O⁻¹∂_x O`, and
then `O;x = Ad(O)a ∈ Ḣ¹`; `O` is unique up to left multiplication by a constant; if `a ∈ ℋ`, `O` is
continuous with a limit at infinity and is normalised by `lim_{x→∞} O(x) = 1`. With `c^p_{jk} = ‖P_j Ad(O) P_k‖_{L^p→L^p}`,
`2 ≤ p < ∞`: `c^p_{jk} ≲_{‖O⁻¹∂_x O‖_{Ḣ¹}} 2^{−(4/p)|j−k|}`, and `c^p_{jk} ≲ 2^{(4/p)(k−j)} c_j` for `k < j − C` when `c_k` is a
`(−1, S)` envelope for `O⁻¹∂_x O` in `Ḣ¹`. Route: 5.2 for a flat connection, 4.3.

**Checks.**

- `G = U(1)`, `a = i∇φ` with `∇φ ∈ Ḣ¹`: `O = exp(iφ)` up to a constant.
- `a = 0`: `O` is constant, and normalised to `1`.

*Needs:* 4.3, 5.2, 8.1.

### 10.2 Caloric connections and the caloric gauge

Define a caloric connection as `a ∈ Ḣ¹` with `Q(a) < ∞` and `A_∞ = 0`; `𝒞` as the set of caloric
connections and `𝒞_Q = {a ∈ 𝒞 : Q(a) ≤ Q}`; the distance `d(a₁, a₂) = inf_{c∈G} ‖Ad(c)a₁ − a₂‖_{Ḣ¹}`; and
`Cal(ã) = O·ã` with `O` given by 10.1 for `ã_∞` (OhTataru-YMHF Definitions 2.17 and 7.1, lines 564–574 and
3000–3001, and lines 3280–3282). Prove (Proposition 7.2, lines 3003–3008; Theorem 2.18, lines 571–574;
Proposition 7.4, Corollary 7.6, lines 3213–3278; Theorem 2.20, lines 591–592):

- every `ã ∈ Ḣ¹` with `Q(ã) < ∞` is gauge equivalent to a caloric connection `Cal(ã)`, unique up to constant
  gauge transformations; `Q` and `ℰ_e` are unchanged;
- `ã ↦ Cal(ã)` is continuous from `{ã ∈ Ḣ¹ : Q(ã) < ∞}` to `Ḣ¹` modulo `Ad(G)` with the distance `d`, and
  `C¹` in `ℋ` and in `ℋ ∩ Ḣ^σ`, `σ > 1`, along families with uniformly bounded `Q`, for the normalisation
  `O(∞) = 1`; the map `ã ↦ O` is `C¹` from `ℋ` to `{O : O;x ∈ Ḣ¹} ∩ C⁰`;
- for noncommutative `G` and `ℰ_e(ã) < 2E_GS` the caloric representative exists for every `ã ∈ Ḣ¹`;
- an `Ḣ¹` envelope of `ã` is an envelope of `Cal(ã)`: `‖P_j Cal(ã)‖_{Ḣ¹} ≲_{Q, M₁} c_j`.

`𝒞` is dilation invariant; the heat flow of a caloric connection stays caloric.

**Checks.**

- `G = U(1)`: `Cal(ã) = ã − ∇φ`, the divergence-free part; caloric means `∂^ℓ a_ℓ = 0`.
- Pure gauge data `ã = −O;x`: `Cal(ã) = 0`.
- `d(Ad(c)a, a) = 0` for every constant `c`, so `Cal` is defined only up to `Ad(G)` until `O(∞) = 1` is imposed.

*Needs:* 7.7, 9.4, 9.5, 9.7, 10.1.

### 10.3 Caloric connections lie in `ℋ`

Prove (OhTataru-YMHF Proposition 7.7, lines 3286–3290; OhTataru-Threshold Theorem 2.8, lines 912–917): for
`a ∈ 𝒞_Q` with `ℰ_e(a) ≤ E`, its heat flow satisfies
`‖A‖_{Ḣ¹} + ‖∂^ℓ A_ℓ‖_{ℓ¹L² ∩ W^{1,4/3}} ≲_{Q,E} 1` uniformly in `s`; in particular `𝒞 ⊆ ℋ`.

**Checks.**

- `G = U(1)`: `∂^ℓ a_ℓ = 0` for `a ∈ 𝒞`, and the bound reduces to `‖a‖_{Ḣ¹} ≲ ℰ_e(a)^{1/2}`, since for divergence-free
  `a = iα`, `ℰ_e(a) = ∫ |∇α|² − ∫ (∂^ℓ α_ℓ)² = ‖∇α‖²_{L²}` (inner product `⟨ix, iy⟩ = xy`).

*Needs:* 9.2, 9.4, 9.5, 10.2.

### 10.4 The caloric manifold

Define a `C¹` split submanifold of a real Banach space `𝔅` as a subset `S` such that every `a ∈ S` has an open
neighbourhood `U`, a closed subspace `E ⊆ 𝔅` with `Submodule.ClosedComplemented`, an open `V ⊆ E` and a `C¹`
map `φ : V → 𝔅` that is a homeomorphism onto `S ∩ U` with injective derivative of closed complemented range;
its tangent space at `a = φ(v)` is the range of `Dφ(v)`, independent of the chart. Prove
(OhTataru-YMHF Theorem 7.8, lines 3294–3346): `𝒞` is a `C¹` split submanifold of `ℋ`, with the chart at `a`
given by `a + b ↦ Cal(a + b)` on the covariant Coulomb slice `{a + b : D(a)^ℓ b_ℓ = 0}` near `a` (lines 3301–3306).
Route: `C¹` regularity from 10.2; the derivative `b ↦ b − D(a)c`, `c = dO(0)b`, is bounded below because
`‖D(a)c‖_{ℓ¹Ḣ¹} ≲ ‖Δ_a c‖_{ℓ¹L²}` (8.2); local surjectivity by gauge-transforming the segment to a nearby
caloric connection into the slice, solving `D^k D_k O;h = …` in `ℓ¹Ḣ²`. No regularity beyond `C¹` is
asserted (lines 3295–3296).

**Checks.**

- `G = U(1)`: `𝒞 = {a ∈ Ḣ¹ : ∂^ℓ a_ℓ = 0}` is a closed linear subspace of `ℋ`, complemented by the gradients
  `{∇φ : ∇φ ∈ Ḣ¹, Δφ ∈ ℓ¹L²}`, and the chart is the identity.
- The unit sphere of a Hilbert space `𝔅` is a `C¹` split submanifold of codimension one: at `e` the chart
  `v ↦ (e + v)/‖e + v‖` on `e^⊥`, complemented by `ℝe`, has derivative the inclusion of `e^⊥`.
- The cross `{x₁² = x₂²}` in `ℝ²` is not one: no neighbourhood of `0` in it is homeomorphic to an open subset of
  a line, so the definition excludes it; nor is the graph of `|x₁|`, which is a topological but not a `C¹`
  submanifold (no `C¹` chart with injective derivative at `0`).

*Needs:* Mathlib `Submodule.ClosedComplemented`, `ContDiff`; 8.2, 10.2, 10.3.

### 10.5 Tangent spaces and the nonlinear div–curl decomposition

For `a ∈ 𝒞` let `B` solve the linearised flow (5.23) around the heat flow of `a` with `B(0) = b`. Prove
(OhTataru-YMHF Definition 2.21, lines 604–610, lines 3347–3361, Proposition 7.9 and Theorem 2.22,
lines 3363–3385 and 613–619):

- the tangent space of 10.4 is `T_a𝒞 = {b ∈ ℋ : B(∞) = 0}`, and its `L²` closure is
  `T^{L²}_a𝒞 = {b ∈ L² : B(∞) = 0}`, with `T^{L²}_a𝒞 ∩ D(a)Ḣ¹ = {0}`;
- every `w ∈ L²` decomposes uniquely as `w = b − D(a)c` with `b ∈ T^{L²}_a𝒞` and `c ∈ Ḣ¹`, with
  `‖b‖_{Ḣ^σ} + ‖c‖_{Ḣ^{σ+1}} ≲_{Q,E} ‖w‖_{Ḣ^σ}` for `−1 < σ < 1` and `‖b‖_ℋ + ‖c‖_{ℓ¹Ḣ²} ≲_{Q,E} ‖w‖_ℋ`, for
  `a ∈ 𝒞_Q` of energy `≤ E`;
- `c = −Δ⁻¹∇·w + L(a, w)` with `L(a, ·)` linear, `L(0, ·) = 0` and
  `‖L(a, w)‖_{ℓ¹Ḣ^{σ+1}} ≲_{Q,E} ‖w‖_{Ḣ^σ}`;
- the projection `Π_a w = b` is bounded on `L²` with range `T^{L²}_a𝒞` and kernel `D(a)Ḣ¹`.

Define the bundle of caloric initial data sets `T^{L²}𝒞 = {(a, b) ∈ ℋ × L² : a ∈ 𝒞, b ∈ T^{L²}_a𝒞}`
(OhTataru-Threshold lines 920–925), equal to `{(a, Π_a w) : a ∈ 𝒞, w ∈ L²}`.

**Checks.**

- `G = U(1)`: `T^{L²}_a𝒞` is the divergence-free `L²` fields, `Π_a` is the Leray projection, `c = −Δ⁻¹∇·w` and
  `L = 0`.
- `w = D(a)c₀` with `c₀ ∈ Ḣ¹`: `b = 0` and `c = −c₀`, so `Π_a` kills the linearised gauge directions.
- `w ∈ T^{L²}_a𝒞`: `c = 0` and `Π_a w = w`.

*Needs:* 8.2, 9.5, 10.2–10.4.

### Examples

The abelian case, in which caloric means Coulomb, `𝒞` is a closed subspace and `Π_a` is the Leray
projection; pure gauges, which `Cal` sends to `0`.

### Dependencies

Layers 8–9; Layer 7 for the subthreshold existence of `Cal`.

## Downstream consumers

- A roadmap for the hyperbolic Yang–Mills equation on `ℝ^{1+4}` consumes every layer: finite-energy and
  caloric initial data sets (Layers 5, 10), the instanton number and the ground state (Layers 6–7), the
  heat flow and the dynamic flow (Layer 9), and the caloric manifold with `Π_a` (Layer 10), for the
  Threshold Theorem below `2E_GS` and the Dichotomy Theorem in an arbitrary topological class
  (OhTataru-Threshold lines 428–447; OhTataru-CaloricLWP; OhTataru-YMHF Sections 8–9;
  OhTataru-TopClass Section 1.5). It owns the generalised Coulomb condition and the heat-flow bounds
  for linearised caloric data (OhTataru-YMHF §§7.3–7.5).
- A roadmap for the Yang–Mills heat flow on closed manifolds in dimensions two to four
  (Rade-YMHeat Theorems 1–2, lines 212–223; GurskyKelleherStreets-GapTheorem Corollary 1.3, lines 117–123)
  can reuse the covariant flows, the energy identity and the energy gap of Layers 7 and 9.

## References

- `OhTataru-YMHF`: S.-J. Oh, D. Tataru, *The Yang–Mills heat flow and the caloric gauge*, read as
  arXiv:1709.08599v2; published in Astérisque 436 (2022).
- `OhTataru-TopClass`: S.-J. Oh, D. Tataru, *The hyperbolic Yang–Mills equation for connections in an
  arbitrary topological class*, Comm. Math. Phys. 365 (2019), read as arXiv:1709.08604v2.
- `OhTataru-Threshold`: S.-J. Oh, D. Tataru, *The threshold conjecture for the energy critical hyperbolic
  Yang–Mills equation*, Ann. of Math. 194 (2021), read as arXiv:1709.08606v2.
- `OhTataru-CaloricLWP`: S.-J. Oh, D. Tataru, *The hyperbolic Yang–Mills equation in the caloric gauge*,
  Pure Appl. Anal. 2 (2020), read as arXiv:1709.09332v2.
- `GurskyKelleherStreets-GapTheorem`: M. Gursky, C. L. Kelleher, J. Streets, *A conformally invariant gap
  theorem in Yang–Mills theory*, Comm. Math. Phys. 361 (2018), read as arXiv:1708.01157v3.
- `Uhlenbeck-LpCurvature`: K. K. Uhlenbeck, *Connections with Lᵖ bounds on curvature*, Comm. Math. Phys. 83
  (1982), Theorem 1.3; cited by locator.
- `Uhlenbeck-RemovableSingularities`: K. K. Uhlenbeck, *Removable singularities in Yang–Mills fields*,
  Comm. Math. Phys. 83 (1982), Theorem 4.1; cited by locator.
- `Rade-YMHeat`: J. Råde, *On the Yang–Mills heat equation in two and three dimensions*, J. reine angew.
  Math. 431 (1992).
- `FreedUhlenbeck-Instantons`: D. S. Freed, K. K. Uhlenbeck, *Instantons and Four-Manifolds*, 2nd ed.,
  Springer 1991, Ch. 1–3; cited by locator.
- `DonaldsonKronheimer`: S. K. Donaldson, P. B. Kronheimer, *The Geometry of Four-Manifolds*, Oxford 1990,
  Ch. 2–4; cited by locator.
- `Bogomolnyi-Stability`: E. B. Bogomol'nyi, *The stability of classical solutions*, Sov. J. Nucl. Phys. 24
  (1976); cited by locator.
- `MimuraToda-TopologyLieGroups`: M. Mimura, H. Toda, *Topology of Lie Groups, I and II*, AMS 1991,
  Ch. IV–V; cited by locator.
