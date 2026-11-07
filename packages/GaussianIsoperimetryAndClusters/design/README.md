# Roadmap: weighted perimeter, Gaussian isoperimetry and clusters

**Summary.** Build weighted perimeter theory on a finite-dimensional real inner product space for every positive density `e^{−W}` with `W` of class `C¹`, and use it to prove the Gaussian isoperimetric theorem in the language of clusters. The weighted layer defines weighted variation and perimeter by duality with test vector fields, identifies them with the Gaussian-weighted reduced-boundary measure supplied by Euclidean De Giorgi theory, and proves invariance, lower semicontinuity, compactness, a weighted Gauss–Green formula and weighted coarea formulas. On it rest `q`-clusters, their interface decomposition, isoperimetric profiles and the existence of minimizing clusters for every probability density. For the standard Gaussian measure `γ` the roadmap constructs the model simplicial clusters, proves that their measure map is a diffeomorphism onto the open simplex and that the model profile satisfies the matrix differential equation `∇²I_m = −L_{A}^{−1}`, develops Ehrhard symmetrisation of sets of finite Gaussian perimeter, and proves that half-spaces are, up to null sets, the unique minimizers of Gaussian perimeter at prescribed measure in every dimension. The end theorems are this single-bubble theorem with its equality case and its two-cell cluster form, the Borell–Sudakov–Tsirelson enlargement inequality for every Gaussian measure on a Euclidean space, Bobkov's functional inequality and its converse, sharp concentration of Lipschitz functions about a median, and Ehrhard's inequality for convex sets.

## Scope and ownership

This roadmap owns: the weighted variation and weighted perimeter of a positive `C¹` density and their basic theory (Layer 2); clusters, interfaces, isoperimetric profiles and existence of minimizing clusters for such densities (Layer 3); the Gaussian isoperimetric function and the Gaussian splitting identities it needs (Layer 1); the canonical and general simplicial clusters, their measure map and the model profile (Layer 4); one-dimensional Gaussian isoperimetry (Layer 5); Gaussian symmetrals of measurable sets and Ehrhard symmetrisation of sets of finite Gaussian perimeter (Layer 6); the Gaussian isoperimetric theorem with its equality case (Layer 7); its integrated, Minkowski-content, functional and concentration forms (Layer 8); Gaussian symmetrals of closed sets and Ehrhard's inequality for convex sets (Layer 9). No roadmap on the main branch, no open roadmap pull request and no board package defines weighted perimeter, Gaussian perimeter, clusters in this sense, Gaussian symmetrisation, or any Gaussian isoperimetric statement.

Already in the library and used, not stated again: the standard Gaussian measure `ProbabilityTheory.stdGaussian` on every finite-dimensional real inner product space, its invariance under linear isometry equivalences and its orthonormal-basis description, the multivariate Gaussian laws `ProbabilityTheory.multivariateGaussian`, the one-dimensional laws `ProbabilityTheory.gaussianReal` with density `ProbabilityTheory.gaussianPDFReal` and distribution function `ProbabilityTheory.cdf` (Mathlib); the Lebesgue density of the standard Gaussian on `EuclideanSpace ℝ ι`, the error-function form of the Gaussian distribution function and the quantile function of a law on `ℝ` (Tau Ceti). The normalized Euclidean Hausdorff measure `MeasureTheory.Measure.euclideanHausdorffMeasure` with its isometry invariance and its agreement with volume on affine subspaces is Mathlib's.

Stated by other roadmaps and imported by section: Euclidean BV functions, the vector derivative measure, its polar decomposition and the variational characterization of total variation (GeometricMeasureTheory G3); lower semicontinuity, `L¹_loc` compactness, mollification estimates, the BV Poincaré inequality on balls and the scalar BV coarea formula (GeometricMeasureTheory G4); reduced and essential boundary, De Giorgi's structure theorem, locality and the finite-perimeter boundary criterion (GeometricMeasureTheory G5); Gauss–Green for sets of locally finite perimeter and the surface comparison on Lipschitz domains (GeometricMeasureTheory G6); the area and coarea formulas, the tangential area formula on rectifiable sets, graph and sphere surface measure (GeometricMeasureTheory G2); the Euclidean finite-perimeter slicing theorem along lines with its reduced-boundary and normal comparison (Isoperimetry I4); the continuity and uniqueness properties of quantiles of continuous strictly increasing distribution functions (StandardDistributions Layer 7.2). Steiner symmetrisation, Prékopa–Leindler and Brunn–Minkowski stay with Isoperimetry I1–I2 and are used only in a Check. The Gaussian logarithmic Sobolev and Poincaré inequalities and Herbst's mean-centred concentration stay with RandomMatrices 2.2; the median-centred concentration of Layer 8 has the sharp constant from isoperimetry and is a different statement.

Outside this roadmap: regularity of minimizing clusters (Almgren's interface regularity and the singular-set theorems of Taylor, White and Colombo–Edelen–Spolaor), the second-variation calculus of Milman–Neeman Sections 5–10, and therefore the proof of the Gaussian multi-bubble theorem for `3 ≤ q ≤ n + 1`; its precise statement in this roadmap's terms closes the document as motivation for a future roadmap. Also outside: infinite-dimensional Gaussian measures and Cameron–Martin spaces; quantitative stability of the Gaussian isoperimetric inequality (Cianchi–Fusco–Maggi–Pratelli Theorems 1.1–1.2); Ehrhard's inequality for arbitrary Borel sets; the Ornstein–Uhlenbeck semigroup. Weighted perimeter is not developed for densities that are only measurable or vanish somewhere.

## Conventions

Throughout, `E` is a finite-dimensional real inner product space of dimension `n ≥ 1` with its Borel σ-algebra and `volume`. Results are stated intrinsically on `E` and are transported along linear isometry equivalences; no coordinate model replaces `E`. The case `n = 0` is excluded wherever `μHE[n − 1]` appears, because natural subtraction would turn it into the counting measure `μHE[0]`. A set is Lebesgue measurable when it is `NullMeasurableSet` for `volume`; every perimeter statement depends only on the indicator up to a `volume`-null set, and Borel representatives are used where a theorem concerns Borel sets.

A weight is a function `W : E → ℝ` of class `C¹`. Its measure is `μ = e^{−W} · volume`, its codimension-one measure is `μ^{n−1} = e^{−W} · μHE[n−1]`, and the weighted divergence of a `C¹` vector field `X` is `div_μ X = div X − ⟨∇W, X⟩`, so that `div(e^{−W} X) = e^{−W} div_μ X`. Here `div X` is the trace of the derivative of `X`. Perimeters and variations take values in `[0, ∞]`; a real-valued form is used only after finiteness is proved.

The standard Gaussian measure is `γ = stdGaussian E`. It equals `e^{−W} · volume` for `W(x) = ‖x‖²/2 + (n/2) log(2π)`, so `∇W(x) = x` and `div_γ X = div X − ⟨x, X⟩`; its codimension-one measure is `γ^{n−1} = e^{−W} · μHE[n−1]`. On the line, `φ = gaussianPDFReal 0 1` is the density `(2π)^{−1/2} e^{−t²/2}` and `Φ = cdf (gaussianReal 0 1)` is the lower distribution function `Φ(t) = γ¹((−∞, t])`. On `(0, 1)`, `Φ⁻¹` is the quantile of `gaussianReal 0 1`. The Gaussian isoperimetric function is `I(v) = φ(Φ⁻¹(v))` for `0 < v < 1` and `I(0) = I(1) = 0`. Wherever `Φ⁻¹` would have to take an infinite value, a statement is written in Φ-form: "for every real `a` with `Φ(a) ≤ γ(A)`" replaces "with `a = Φ⁻¹(γ(A))`".

The perimeter normalization is Milman–Neeman's: the Gaussian perimeter of a half-space at distance `s` from the origin is `φ(s)`. Cianchi–Fusco–Maggi–Pratelli weight `μHE[n−1]` by `(2π)^{−(n−1)/2} e^{−‖x‖²/2}` instead and use the upper tail `1 − Φ` as their `Φ`; their perimeter and their isoperimetric function are `√(2π)` times ours, and every inequality homogeneous in perimeter transfers unchanged. Their sup-formula (2.5) integrates against the probability measure and is therefore already in this normalization.

The outward measure-theoretic normal `ν_U` follows GeometricMeasureTheory: `Dχ_U = −ν_U |Dχ_U|` and `|Dχ_U| = μHE[n−1]` restricted to the reduced boundary `∂*U`.

A Gaussian symmetral replaces a section by a sublevel half-space: a section of Gaussian measure `v` becomes `{⟨y, u⟩ < Φ⁻¹(v)}`, written `{Φ(⟨y, u⟩) < v}` so that `v = 0` gives the empty set and `v = 1` the whole section.

For `q ≥ 1`, `Δ^{(q−1)} = {v ∈ ℝ^q : v_i ≥ 0, Σ v_i = 1}` is the probability simplex, `int Δ^{(q−1)}` its relative interior, and `E^{(q−1)} = {x ∈ ℝ^q : Σ x_i = 0}` its tangent space with the Euclidean structure of `EuclideanSpace ℝ (Fin q)`. For nonnegative numbers `A = (A_ij)_{i<j}`, `L_A = Σ_{i<j} A_ij (e_i − e_j)(e_i − e_j)ᵀ`; as a quadratic form on `E^{(q−1)}` it is `⟨a, L_A a⟩ = Σ_{i<j} A_ij (a_i − a_j)²`. Gradients and Hessians of functions on `int Δ^{(q−1)}` are tensors on `E^{(q−1)}`. The identification of `Δ^{(1)}` with `[0, 1]` by `v ↦ v_1` contracts distances by `√2`.

**Checks.**

- The half-space `{x : ⟨x, ν⟩ > 1}` with `‖ν‖ = 1` has `γ = 1 − Φ(1) = 0.158655` and Gaussian perimeter `φ(1) = 0.241971` here, against `e^{−1/2} = 0.606531` in Cianchi–Fusco–Maggi–Pratelli; the ratio is `2.506628 = √(2π)`. A design mixing the two normalizations would misstate `I(0.158655) = 0.241971`.
- On `ℝ`, `U = (−∞, s)` has `Dχ_U = −δ_s`, so `ν_U(s) = +1`, and for every `C¹` compactly supported `X` the weighted Gauss–Green identity reads `∫_{−∞}^{s} (X′ − tX) φ dt = X(s) φ(s)`, which is `⟨X, ν_U⟩ φ(s)`. An inner normal would give `−X(s) φ(s)`.
- The sublevel convention fixes `{⟨x, e⟩ < a}` under symmetrisation in direction `e`: its sections have measure `Φ(a)` and the sublevel half-line of that measure is `(−∞, a)`. The superlevel half-line `(Φ⁻¹(v), ∞)` has measure `1 − v`, which for `v = Φ(1)` is `0.158655` instead of `0.841345`.
- For `q = 2`, `L_A` acts on `E^{(1)} = ℝ (e_1 − e_2)/√2` as multiplication by `2A_12`, and `⟨a, L_A a⟩ = A_12 (a_1 − a_2)²`.

## Exact supplier contracts

### From Mathlib

- `ProbabilityTheory.stdGaussian` (Mathlib/Probability/Distributions/Gaussian/Multivariate.lean:65) is defined on every finite-dimensional real inner product space as the image of the product of standard normal laws under an orthonormal basis; it is a probability measure (instance at line 71). `ProbabilityTheory.stdGaussian_map` (line 126) gives its invariance under every linear isometry equivalence `E ≃ₗᵢ[ℝ] F`, and `ProbabilityTheory.stdGaussian_eq_map_pi_orthonormalBasis` (line 144) its description in any orthonormal basis. Nothing about densities, perimeters or products of subspaces is included.
- `ProbabilityTheory.multivariateGaussian` (same file, line 166) is the image of `stdGaussian (EuclideanSpace ℝ ι)` under `x ↦ m + toEuclideanCLM (CFC.sqrt S) x` for every square matrix `S`; for `S` not positive semidefinite `CFC.sqrt S = 0` and the law is the Dirac mass at `m`. Layer 8 uses exactly this definition.
- `ProbabilityTheory.gaussianPDFReal` (Mathlib/Probability/Distributions/Gaussian/Real.lean:47), `ProbabilityTheory.gaussianReal` (line 220), `ProbabilityTheory.gaussianReal_map_neg` (line 358) and `ProbabilityTheory.cdf` (Mathlib/Probability/CDF.lean:56) give `φ`, the standard normal law, its symmetry and `Φ`.
- `MeasureTheory.Measure.euclideanHausdorffMeasure` (Mathlib/Geometry/Euclidean/Volume/Measure.lean:68), written `μHE[d]`, with `AffineSubspace.euclideanHausdorffMeasure_coe_image` (line 226), `EuclideanGeometry.measurePreserving_vaddConst` (line 212) and `Submodule.measurePreserving_measurableEquivProd` (line 287), which identifies `volume` on `E` with the product of the volumes of a subspace and its orthogonal complement.
- `LinearMap.normDet` (Mathlib/Analysis/InnerProductSpace/NormDet.lean:69), the Jacobian of a linear map between inner product spaces, used for the tangential Jacobian of a projection.
- `geometric_hahn_banach_open_open` (Mathlib/Analysis/LocallyConvex/Separation.lean:135): two disjoint open convex sets are strictly separated by a continuous linear functional.
- `Metric.thickening` (Mathlib/Topology/MetricSpace/Thickening.lean:53), the open set of points at distance `< δ`, which is empty for `δ ≤ 0`; `Metric.cthickening` (line 181), the closed set at distance `≤ δ`, with `Metric.cthickening_zero` (line 226) equal to the closure.
- `isOpenMap_of_hasStrictFDerivAt_equiv` (Mathlib/Analysis/Calculus/InverseFunctionTheorem/FDeriv.lean:204): a map with invertible strict derivative everywhere is open.
- `LipschitzWith.ae_differentiableAt` (Mathlib/Analysis/Calculus/Rademacher.lean:385), `norm_fderiv_le_of_lipschitz` (Mathlib/Analysis/Calculus/FDeriv/Basic.lean:947), `Monotone.ae_differentiableAt` (Mathlib/Analysis/Calculus/Monotone.lean:209) and `MonotoneOn.intervalIntegral_deriv_mem_uIcc` (Mathlib/MeasureTheory/Integral/IntervalIntegral/DerivIntegrable.lean:100), which bounds the integral of the derivative of a monotone function by its increment.
- `Convex.nullMeasurableSet` (Mathlib/Analysis/Convex/Measure.lean:85): a convex set is null-measurable for every additive Haar measure.

### From Tau Ceti

Tau Ceti at the pin contains no weighted or Euclidean perimeter, no BV theory and no Gaussian isoperimetric statement.

- `TauCeti.Probability.stdGaussian_eq_withDensity` (TauCeti/Probability/Distributions/Gaussian/Density.lean:158): on `EuclideanSpace ℝ ι`, the standard Gaussian is `volume` with density `(2π)^{−card ι/2} exp(−‖x‖²/2)`. Layer 1 transports it to `E`.
- `TauCeti.Probability.cdf_gaussianReal_zero_one` (TauCeti/Probability/Distributions/Gaussian/Cdf.lean:122): `Φ(x) = (1 + erf(x/√2))/2`; with `TauCeti.Real.strictMono_erf` and `TauCeti.Real.continuous_erf` (TauCeti/Analysis/SpecialFunctions/Erf.lean:132 and :105) this makes `Φ` a continuous strictly increasing bijection of `ℝ` onto `(0, 1)`.
- `MeasureTheory.Measure.quantile` (TauCeti/Probability/Quantile.lean:101): the least point where a distribution function reaches a level; for levels outside `(0, 1)` its value is a junk `0`, which is why `I` is defined separately at `0` and `1`.

### From TauCetiRoadmap.GeometricMeasureTheory

- G2: the coarea formula for Lipschitz `f : E → ℝ` with nonnegative Borel weights and `μHE[n−1]` on fibres; the tangential area formula for Lipschitz maps on countably `(n−1)`-rectifiable sets; graph surface measure `√(1 + ‖Dφ‖²)`; `μHE[n−1](sphere c r) = n ω_n r^{n−1}`.
- G3: the vector derivative measure `Du` of `u ∈ BV_loc(Ω)`, its total variation `|Du|`, the polar decomposition `Du = σ_u |Du|` with `‖σ_u‖ = 1` `|Du|`-a.e., and the equality of `|Du|(Ω)` with the supremum of `∫ u div X` over smooth compactly supported fields of norm at most one.
- G4: lower semicontinuity of variation under `L¹_loc` convergence; compactness in `L¹_loc` of families locally bounded in `L¹` and variation; mollification estimates `|∇(u ∗ ρ_ε)| ≤ |Du| ∗ ρ_ε`; the BV Poincaré inequality on balls; scalar BV coarea `|Du|(B) = ∫ P({u > t}; B) dt` for Borel `B`, with measurability in `t`.
- G5: reduced boundary, essential boundary and outward normal; De Giorgi's theorem `|Dχ_U| = μHE[n−1] ⌊ ∂*U` with blow-up to the half-space `{⟨y, ν_U(x)⟩ < 0}` at `μHE[n−1]`-a.e. `x ∈ ∂*U`, so that such points have density `1/2`; the essential boundary differs from the reduced boundary by a `μHE[n−1]`-null set; locality of perimeter; the converse criterion that a measurable set whose essential boundary has locally finite `μHE[n−1]` measure has locally finite perimeter.
- G6: Gauss–Green `∫_U div X = ∫_{∂*U} ⟨X, ν_U⟩ dμHE[n−1]` for sets of locally finite perimeter and compactly supported `C¹` fields; `|Dχ_U| = μHE[n−1] ⌊ ∂U` for bounded Lipschitz domains.

### From TauCetiRoadmap.Isoperimetry

- I4: the finite-perimeter slicing theorem along lines. For `U` of locally finite perimeter in `E`, `n ≥ 2`, and a unit vector `e`, for `volume`-a.e. `z ∈ e^⊥` the section `U_z = {t : z + te ∈ U}` has locally finite perimeter in `ℝ`, its reduced boundary is `{t : z + te ∈ ∂*U}`, and `⟨ν_U(z + te), e⟩ ≠ 0` at each such point. The measure-preserving identification of `e^⊥ × ℝ` with `E` comes with it. Nothing about Gaussian weights is assumed.

### From TauCetiRoadmap.StandardDistributions

- Layer 7.2: for a law on `ℝ` with continuous distribution function `F`, `F(Q(u)) = u` for `0 < u < 1`, and strict increase of `F` on its support interval makes `Q(u)` the unique solution there. For `gaussianReal 0 1` this makes `Φ⁻¹` the two-sided inverse of `Φ` on `(0, 1)`.

No supplier contract is missing: every input above is a stated target of its roadmap.

## How to read the build

Layer 1 fixes the one-dimensional Gaussian functions and the product structure of `γ`. Layer 2 builds weighted perimeter for a general positive `C¹` density on top of GeometricMeasureTheory; the Gaussian weight appears only in the explicit perimeters of §2.3, the translation formula of §2.5 and the invariances of §2.7. Layer 3 builds clusters and the existence theorem for every probability density. Layer 4, which needs only Layers 1–3 and the weighted Gauss–Green formula, constructs the model simplicial clusters and their profile; it does not depend on any isoperimetric inequality. Layers 5–7 prove the Gaussian isoperimetric theorem with equality: the one-dimensional case, then Ehrhard symmetrisation of sets of finite Gaussian perimeter, then the existence-and-symmetrisation argument of Cianchi–Fusco–Maggi–Pratelli. Layer 8 derives the integrated, functional and concentration forms from Layer 7. Layer 9 develops the closed-set Gaussian symmetrisation of Ehrhard and proves Ehrhard's inequality for convex sets; it uses Layer 8's enlargement inequality only on the line. Layer 1, the definitions of Layers 2–4 and Layer 5 do not use GeometricMeasureTheory G5–G6; every other section lists its inputs in its *Needs:* line.

## Layer 1: the standard Gaussian on the line and on Euclidean spaces

### 1.1 The Gaussian isoperimetric function

Define the Gaussian isoperimetric function `I : ℝ → ℝ` by `I(v) = φ(Φ⁻¹(v))` for `0 < v < 1` and `I(v) = 0` otherwise, where `Φ⁻¹(v)` is the quantile of `gaussianReal 0 1` at level `v` (MilmanNeeman2022 line 182–185; Ledoux1999 line 214–217; CianchiFuscoMaggiPratelli2011 line 55–57 in their normalization). It is the perimeter of a half-space of Gaussian measure `v` (§2.3) and the right-hand side of every isoperimetric inequality below.

- For every real `s`, `I(Φ(s)) = φ(s)`; for `0 < v < 1`, `Φ(Φ⁻¹(v)) = v`, and for every real `s`, `Φ⁻¹(Φ(s)) = s`.
- `I(1 − v) = I(v)` for every `v`.
- `I` is continuous on `[0, 1]`, strictly positive on `(0, 1)`, zero at `0` and `1`, and attains its maximum `φ(0) = (2π)^{−1/2}` only at `1/2`.
- `I` is `C^∞` on `(0, 1)` with `I′(v) = −Φ⁻¹(v)` and `I″(v) = −1/I(v)`; hence `I` is strictly concave on `[0, 1]` and locally Lipschitz on `(0, 1)` (MilmanNeeman2022 equation (1.1), line 186–187).

A route: `Φ` is a continuous strictly increasing bijection of `ℝ` onto `(0, 1)` by the error-function formula, so the quantile is its two-sided inverse on `(0, 1)`; differentiate the inverse and use `φ′(t) = −t φ(t)`. *Needs:* Mathlib `ProbabilityTheory.gaussianPDFReal`, `ProbabilityTheory.cdf`; Tau Ceti `TauCeti.Probability.cdf_gaussianReal_zero_one`, `TauCeti.Real.strictMono_erf`, `TauCeti.Real.continuous_erf`, `MeasureTheory.Measure.quantile`; StandardDistributions Layer 7.2.

**Checks.**

- `I(1/2) = φ(0) = 0.398942`, `I(1 − Φ(1)) = φ(1) = 0.241971` and `I(1/3) = I(2/3) = 0.363600`, with `Φ⁻¹(1/3) = −0.430727`.
- At the endpoints `I(0) = I(1) = 0`; applying `φ` to the quantile's junk value `0` at level `0` would give `0.398942` instead, so the separate definition at `0` and `1` is forced.
- The second difference of `I` at `0.3` is `−2.876104`, equal to `−1/I(0.3)`, and `I′(0.3) = 0.524401 = −Φ⁻¹(0.3)`. The profile in the other normalization, `√(2π) I`, satisfies `(√(2π) I)″ = −2π/(√(2π) I)`, so the differential equation pins the normalization.

### 1.2 Gaussian tails

Prove that `1 − Φ(r) < φ(r)/r` for every `r > 0` (CianchiFuscoMaggiPratelli2011 Lemma 3.4, inequality (3.2), line 295–299, in their normalization) and `1 − Φ(r) ≤ ½ e^{−r²/2}` for every `r ≥ 0`, with equality in the second only at `r = 0`; the second sharpens by the factor `½` the tail bound `1 − Φ(r) ≤ e^{−r²/2}` of Ledoux1999 inequality (1.6), line 225–226, and is proved here. A route: the first follows from `∫_r^∞ φ < ∫_r^∞ (t/r) φ(t) dt = φ(r)/r`; for the second, `r ↦ e^{r²/2}(1 − Φ(r))` has derivative `e^{r²/2}(r(1 − Φ(r)) − φ(r)) < 0` by the first and value `1/2` at `0`. *Needs:* §1.1.

**Checks.**

- At `r = 1`: `1 − Φ(1) = 0.158655`, `φ(1) = 0.241971`, `½ e^{−1/2} = 0.303265`. At `r = 2`: `0.022750` against `½ e^{−2} = 0.067668`.
- At `r = 0` both sides of the second bound are `1/2`, so a constant `1/4` in place of `1/2` fails; the bound `e^{−r²/2}` without the factor `1/2` holds but is not the one stated.

### 1.3 Orthogonal splitting and the intrinsic density

For a subspace `F ⊆ E`, write `γ_F = stdGaussian F`. Prove that the addition map `F × F^⊥ → E` carries `γ_F ⊗ γ_{F^⊥}` to `γ_E`; that the orthogonal projection onto `F` carries `γ_E` to `γ_F`; that `γ_E({x : ⟨x, ν⟩ < s}) = Φ(s)` for every unit vector `ν` and real `s`; and that `γ_E = e^{−W} · volume` with `W(x) = ‖x‖²/2 + (n/2) log(2π)` (MilmanNeeman2022 line 481–483 and equation (2.1), line 490–497; Ledoux1993 line 251–252). A route: choose an orthonormal basis of `E` adapted to `F ⊕ F^⊥`, use the orthonormal-basis description of `γ_E`, and split the product of normal laws over the corresponding partition of the index set; transport the Euclidean density along the isometry `E ≃ EuclideanSpace ℝ (Fin n)` of an orthonormal basis, which preserves both `γ` and `volume`. *Needs:* Mathlib `ProbabilityTheory.stdGaussian_eq_map_pi_orthonormalBasis`, `ProbabilityTheory.stdGaussian_map`, `MeasureTheory.measurePreserving_sumPiEquivProdPi`, `Submodule.measurePreserving_measurableEquivProd`; Tau Ceti `TauCeti.Probability.stdGaussian_eq_withDensity`.

**Checks.**

- In `ℝ²` with `F = ℝ (e_1 + e_2)/√2`, the coordinate `(x_1 + x_2)/√2` has law `gaussianReal 0 1`, so `γ({x_1 + x_2 < √2}) = Φ(1) = 0.841345`.
- On `E^{(q−1)}`, `√(q/(q−1)) x_i` and `(x_i − x_j)/√2` (`i ≠ j`) have law `gaussianReal 0 1`. For `q = 3` this gives `γ({x_i ≥ 1}) = 1 − Φ(√1.5) = 0.110336`; the reciprocal factor `√((q−1)/q)` would give `0.207108`.
- `F = {0}` and `F = E` give the trivial identities `γ_E = δ_0 ⊗ γ_E` and `γ_E ⊗ δ_0`. The density at the origin of `ℝ²` is `(2π)^{−1} = 0.159155`; omitting the factor `(2π)^{−n/2}` gives total mass `2π`.

### Examples

The half-space `{x_1 < 0}` in any `E` has measure `1/2`, and the half-space `{x_1 < 1}` has measure `Φ(1) = 0.841345`; their perimeters, computed in §2.3, are `I(1/2)` and `I(Φ(1))`.

### Dependencies

Mathlib Gaussian laws and product measures; Tau Ceti's Gaussian density, error function and quantile; StandardDistributions Layer 7.2.

## Layer 2: weighted variation and perimeter

Throughout this layer `W` is a weight in the sense of the Conventions, with no further assumption unless a statement says so.

### 2.1 Weighted variation and weighted perimeter

For an open set `Ω ⊆ E` and `u ∈ L¹_loc(Ω)`, define the weighted variation `V_μ(u; Ω) ∈ [0, ∞]` as the supremum of `∫_Ω u div_μ X dμ` over smooth vector fields `X : E → E` with compact support in `Ω` and `‖X‖ ≤ 1` pointwise. The weighted perimeter of a Lebesgue-measurable set `U` in `Ω` is `P_μ(U; Ω) = V_μ(χ_U; Ω)`, and `P_μ(U) = P_μ(U; E)`; for the Gaussian weight it is written `P_γ` (MilmanNeeman2022 line 30–31 and 753–754; CianchiFuscoMaggiPratelli2011 equation (2.5), line 200–208).

- Density-bounded form: `V_μ(u; Ω)` equals the supremum of `∫_Ω u div Y dx` over `C¹` fields `Y` compactly supported in `Ω` with `‖Y‖ ≤ e^{−W}` pointwise, and also over smooth such fields.
- `V_μ(u; Ω)` depends only on the class of `u` up to null sets; `P_μ(U; Ω) = P_μ(E ∖ U; Ω)`; `P_μ(∅; Ω) = P_μ(E; Ω) = 0`.
- If `Ω ⊆ Ω′` then `V_μ(u; Ω) ≤ V_μ(u; Ω′)`; `V_μ(u + u′; Ω) ≤ V_μ(u; Ω) + V_μ(u′; Ω)` and `V_μ(c u; Ω) = |c| V_μ(u; Ω)` for real `c`.
- For a real constant `c`, the weight `W + c` multiplies `V_μ` by `e^{−c}`; the weight `0` gives the Euclidean variation and perimeter of GeometricMeasureTheory G3.
- If `Ω′` is open with compact closure in `Ω`, then `(min_{cl Ω′} e^{−W}) |Du|(Ω′) ≤ V_μ(u; Ω′) ≤ (max_{cl Ω′} e^{−W}) |Du|(Ω′)`, with `|Du|(Ω′)` the Euclidean variation of G3; in particular `V_μ(u; Ω) < ∞` implies `u ∈ BV_loc(Ω)`.

A route for the density-bounded form: `div(e^{−W} X) = e^{−W} div_μ X`, and mollified density-bounded fields multiplied by `1 − δ` stay density-bounded on a compact support. *Needs:* Conventions; GeometricMeasureTheory G3 for the Euclidean variation; GeometricMeasureTheory G4 mollification.

**Checks.**

- For the weight `0` on `ℝ`, `P((0, ∞)) = 1` and `P((0, 1)) = 2`; on `ℝ²` a half-plane has Euclidean perimeter `∞`, while its Gaussian perimeter is finite (§2.3).
- For `γ` on `ℝ²`, `P_γ(ball(0, 1)) = e^{−1/2} = 0.606531`, and for the half-plane `{x_1 > 1}`, `0.241971` (§2.3).
- The plausible wrong definition `sup ∫_U div X dμ`, without the term `−⟨∇W, X⟩`, assigns to `U = ℝ` under `γ` the value `sup ∫ t X(t) dγ = ∫ |t| dγ = 0.797885` instead of `0`, and is not complement invariant.

### 2.2 Weighted variation is the weighted variation measure

Prove that for `u ∈ BV_loc(Ω)` and every open `Ω′ ⊆ Ω`, `V_μ(u; Ω′) = ∫_{Ω′} e^{−W} d|Du|`; so `V_μ(u; ·)` extends to the Borel measure `e^{−W} |Du|` on `Ω`, which defines `V_μ(u; B)` and `P_μ(U; B)` for Borel `B ⊆ Ω`. Prove that if `U` is Lebesgue measurable and `P_μ(U; Ω) < ∞`, or more generally `U` has locally finite perimeter in `Ω`, then `P_μ(U; B) = μ^{n−1}(∂*U ∩ B) = μ^{n−1}(∂^M U ∩ B)` for every Borel `B ⊆ Ω` (MilmanNeeman2022 line 755–757; CianchiFuscoMaggiPratelli2011 equations (2.3)–(2.5), line 174–208; Maggi2012 Theorem 15.9). A route: the upper bound is the polar decomposition `Du = σ_u |Du|`; the lower bound approximates `−e^{−W} σ_u` in `L¹(|Du|)` on compacts by smooth density-bounded fields, as in the Euclidean variational characterization; the boundary formulas are De Giorgi's theorem and the comparison of essential and reduced boundary. *Needs:* §2.1; GeometricMeasureTheory G3 (polar decomposition and variational characterization), G4 (mollification), G5 (De Giorgi's theorem, essential boundary).

**Checks.**

- `U = (−1, 1) ⊂ ℝ`: `|Dχ_U| = δ_{−1} + δ_1`, so `P_γ(U) = 2 φ(1) = 0.483941`, with `γ(U) = 0.682689` and `I(0.682689) = 0.356343`.
- In `ℝ²`, removing the origin from `ball(0, 1)` or adding a null dense set outside it leaves `P_γ = 0.606531`, though the topological frontier gains a point, respectively becomes all of `ℝ²`.

### 2.3 Frontier bound, convex sets and explicit perimeters

Prove that for every Lebesgue-measurable `U` and open `Ω`, `P_μ(U; Ω) ≤ μ^{n−1}(∂^M U ∩ Ω) ≤ μ^{n−1}(frontier U ∩ Ω)` in `[0, ∞]`. Prove that for every open convex set `C`, bounded or not, and for every bounded Lipschitz domain `C`, `P_μ(C; Ω) = μ^{n−1}(∂C ∩ Ω)`. For the Gaussian weight prove `P_γ({x : ⟨x, ν⟩ < s}) = φ(s)` for every unit `ν` and real `s`, and `P_γ(ball(0, r)) = (2π)^{−n/2} e^{−r²/2} n ω_n r^{n−1}` for `r > 0`, where `ω_n = volume(ball(0, 1))` (MilmanNeeman2022 line 32–33; CianchiFuscoMaggiPratelli2011 line 48–56 and 182–184). A route: if `U` does not have locally finite perimeter in `Ω`, the boundary criterion gives a compact `K ⊆ Ω` with `μHE[n−1](∂^M U ∩ K) = ∞`, and `e^{−W}` is bounded below on `K`; otherwise apply §2.2 and `∂^M U ⊆ frontier U`. For convex `C`, the intersection with any ball is a bounded convex Lipschitz domain and locality transfers its boundary measure; on the hyperplane `{⟨x, ν⟩ = s}`, `μHE[n−1]` is the image of `volume` on `ν^⊥` and `e^{−W}(sν + y) = φ(s) e^{−W_{ν^⊥}}(y)` by §1.3. *Needs:* §1.3, §2.2; GeometricMeasureTheory G5 (boundary criterion, locality), G6 (Lipschitz domains), G2 (sphere measure); Mathlib `AffineSubspace.euclideanHausdorffMeasure_coe_image`, `EuclideanGeometry.measurePreserving_vaddConst`.

**Checks.**

- `n = 1`, `r = 1`: the ball formula with `ω_1 = 2` gives `2 φ(1) = 0.483941`, agreeing with §2.2.
- `n = 2`, `r = 1`: `P_γ = e^{−1/2} = 0.606531` and `γ = 1 − e^{−1/2} = 0.393469`, while `I(0.393469) = 0.384633`; a ball is not a minimizer.
- The half-space through the origin has `P_γ = φ(0) = I(1/2)`; `{x_1 < 1}` has `φ(1) = 0.241971`, so Gaussian perimeter is not translation invariant.
- For a ball with a null dense set added outside it the frontier bound is `∞` and strict.

### 2.4 Lower semicontinuity and compactness

Prove that `u_k → u` in `L¹_loc(Ω)` implies `V_μ(u; Ω) ≤ liminf V_μ(u_k; Ω)`. Prove that if `μ(E) < ∞`, every sequence of Lebesgue-measurable sets `U_k` with `sup_k P_μ(U_k) < ∞` has a subsequence whose indicators converge in `L¹(μ)` to the indicator of a Lebesgue-measurable set `U`, and then `P_μ(U) ≤ liminf P_μ(U_k)` (CianchiFuscoMaggiPratelli2011 line 209–213; MilmanNeeman2022 line 939–947; Maggi2012 Proposition 12.15 and Theorem 12.26). A route: each functional `u ↦ ∫ u div_μ X dμ` is continuous for `L¹_loc` convergence, so their supremum is lower semicontinuous. For compactness, §2.1 bounds the Euclidean perimeters in every ball, G4 gives `L¹_loc` convergence of a diagonal subsequence, and `∫_{‖x‖ > R} |χ_{U_k} − χ_U| dμ ≤ μ({‖x‖ > R})` upgrades it to `L¹(μ)`. *Needs:* §2.1; GeometricMeasureTheory G4 (compactness).

**Checks.**

- Under `γ`, `U_k = {x_1 < k}` has `P_γ(U_k) = φ(k) → 0` and converges to `E` in `L¹(γ)`, with `P_γ(E) = 0`.
- For the weight `0` on `ℝ`, `U_k = (k, k + 1)` has perimeter `2` and converges to `∅` in `L¹_loc` but not in `L¹`: finite total mass is needed for compactness in `L¹(μ)`.
- `U_k = (−1, 1) ∪ (1 + 1/k, 2)` converges to `(−1, 2)`; `P_γ(U_k) → 3 φ(1) + φ(2) = 0.779903` while `P_γ((−1, 2)) = φ(1) + φ(2) = 0.295962`, so the inequality can be strict.

### 2.5 Weighted Gauss–Green formula

Prove that for `U` of locally finite perimeter and a compactly supported `C¹` field `X`, `∫_U div_μ X dμ = ∫_{∂*U} ⟨X, ν_U⟩ dμ^{n−1}`. Prove the same identity when `μ(E) < ∞`, `P_μ(U) < ∞`, `X` is `C¹`, bounded with bounded derivative, and `⟨∇W, X⟩ ∈ L¹(μ)`. Deduce for the Gaussian weight that if `P_γ(U) < ∞` and `w ∈ E`, then `t ↦ γ(U + t w)` is differentiable at `0` with derivative `∫_{∂*U} ⟨w, ν_U⟩ dγ^{n−1}` (MilmanNeeman2022 equations (3.1) and (3.3), line 705–708 and 758–761; Maggi2012 Theorem 15.9). A route: apply G6 to `e^{−W} X`; for bounded fields, multiply by `χ(x/R)` for a cutoff `χ` and pass to the limit by dominated convergence on both sides; for the translation derivative, differentiate `∫_U e^{−W(x + tw)} dx` under the integral and apply the bounded-field identity to the constant field `w`, whose Gaussian divergence `−⟨x, w⟩` is `γ`-integrable. *Needs:* §1.3, §2.2; GeometricMeasureTheory G6.

**Checks.**

- `n = 1`, `U = (−∞, s)`: both sides equal `X(s) φ(s)` (Conventions).
- `U = {x_1 < s}`, `w = e_1`: `γ(U + t e_1) = Φ(s + t)` has derivative `φ(s)` at `0`, and the boundary integral is `⟨e_1, e_1⟩ φ(s) = φ(s)`; an inner normal would give `−φ(s)`.
- `U = E` has empty reduced boundary: for the bounded field `e_1`, `∫ div_γ e_1 dγ = −∫ x_1 dγ = 0`.

### 2.6 Weighted coarea formulas

Prove: (a) for Lipschitz `f : E → ℝ` and Borel `g : E → [0, ∞]`, `∫ g ‖∇f‖ dμ = ∫_ℝ ∫_{f⁻¹(t)} g dμ^{n−1} dt`; (b) for every `u ∈ L¹_loc(Ω)`, `V_μ(u; Ω) = ∫_ℝ P_μ({u > t}; Ω) dt` in `[0, ∞]`, and for `u ∈ BV_loc(Ω)` the identity holds with `Ω` replaced by any Borel subset (Maggi2012 Sections 13.1 and 18.1; GeometricMeasureTheory G2 and G4 state the unweighted forms). A route: (a) is G2's coarea formula with weight `g e^{−W}`; (b) integrates `e^{−W}` against G4's measure identity, and if `u ∉ BV_loc(Ω)` both sides are infinite by the local comparison of §2.1. *Needs:* §2.1, §2.2; GeometricMeasureTheory G2 (coarea), G4 (scalar BV coarea).

**Checks.**

- `f(x) = ‖x‖` on `ℝ²`, `g = 1`, `μ = γ`: the left side is `1` and the right side `∫_0^∞ (2π)^{−1} e^{−r²/2} 2πr dr = 1.000000`.
- `u = χ_U` gives `V_μ(χ_U) = ∫_0^1 P_μ(U) dt = P_μ(U)`.
- `u(t) = t` on `ℝ` with `γ`: `∫ φ d|Du| = 1` and `∫_ℝ P_γ((s, ∞)) ds = ∫ φ(s) ds = 1`.

### 2.7 Gaussian invariance and cylinders

Prove that for a linear isometry equivalence `T : E ≃ E′`, `P_{γ_{E′}}(T(U)) = P_{γ_E}(U)` and `γ_{E′}(T(U)) = γ_E(U)`. Prove that for a subspace `F` and a Lebesgue-measurable `U ⊆ F`, the cylinder `U ⊕ F^⊥ = {y + z : y ∈ U, z ∈ F^⊥}` satisfies `γ_E(U ⊕ F^⊥) = γ_F(U)` and `P_{γ_E}(U ⊕ F^⊥) = P_{γ_F}(U)` (MilmanNeeman2022 line 481–483 and 554–556). A route: transport test fields along `T`; for cylinders, split `γ_E = γ_F ⊗ γ_{F^⊥}` (§1.3), integrate the `F^⊥`-component of a field out by Gaussian integration by parts on `F^⊥` (§2.5 with `U = F^⊥`), and bound the remaining term by the `γ_{F^⊥}`-average of the `F`-component, which is a smooth compactly supported field on `F` of norm at most one; fields on `F` extended by cutoffs in `F^⊥` give the reverse inequality. *Needs:* §1.3, §2.1, §2.5; Mathlib `ProbabilityTheory.stdGaussian_map`.

**Checks.**

- `F = ℝ e_1 ⊂ ℝ²`, `U = (−∞, s)`: the cylinder is `{x_1 < s}`, with perimeter `φ(s)` on both sides.
- `F = {0}`: `U` is `∅` or `{0}`, the cylinder is `∅` or `E`, and both perimeters vanish.
- Translating `{x_1 < 0}` by `e_1` changes the perimeter from `0.398942` to `0.241971`, so no translation invariance is claimed.

### Examples

A half-space of Gaussian measure `v` has Gaussian perimeter `I(v)` (§2.3 with §1.1). The interval `(−1, 1)` has `γ = 0.682689` and `P_γ = 0.483941`.

### Dependencies

Layer 1; GeometricMeasureTheory G2–G6; Mathlib Hausdorff measure on affine subspaces.

## Layer 3: clusters and their interfaces

The weight `W` is arbitrary in §§3.1–3.2; from §3.3 on, `μ(E) = 1`.

### 3.1 Clusters

For `q ≥ 2`, a `q`-cluster for `μ` is a `q`-tuple `Ω = (Ω_1, …, Ω_q)` of Lebesgue-measurable cells that are pairwise disjoint, satisfy `μ(E ∖ ⋃_i Ω_i) = 0`, and have `P_μ(Ω_i) < ∞` for each `i`; cells may be empty or disconnected. Its total perimeter is `P_μ(Ω) = ½ Σ_i P_μ(Ω_i)`, and when `μ(E) = 1` its measure vector is `μ(Ω) = (μ(Ω_1), …, μ(Ω_q)) ∈ Δ^{(q−1)}`. Two clusters are equivalent when corresponding cells agree up to null sets (MilmanNeeman2022 line 57–67 and 697–702; Maggi2012 Part IV synopsis, line 716–725).

- Equivalent clusters have the same total perimeter, the same measure vector and the same interfaces (§3.2).
- Permuting the cells of a cluster gives a cluster with the same total perimeter and permuted measure vector.
- For `q ≥ 3`, replacing two cells `Ω_i, Ω_j` by `Ω_i ∪ Ω_j` gives a `(q − 1)`-cluster whose total perimeter is at most that of `Ω` (by §3.2 it drops by `A_ij`).
- For `q = 2`, `P_μ(Ω) = P_μ(Ω_1) = P_μ(Ω_2)` (MilmanNeeman2022 line 68–70), by complement invariance and null invariance.
- A linear isometry of `E` carries `γ`-clusters to `γ`-clusters with the same total perimeter (§2.7).

*Needs:* §2.1, §2.7; §3.2 for the merging bullet.

**Checks.**

- Under `γ` on `ℝ`, the cells `(−∞, a), (a, b), (b, ∞)` with `a < b` form a `3`-cluster of total perimeter `½(φ(a) + (φ(a) + φ(b)) + φ(b)) = φ(a) + φ(b)`; the sum without the factor `½` double-counts every interface.
- The pair `({x_1 < s}, {x_1 > s})` is a `2`-cluster of total perimeter `φ(s)`, and `(E, ∅)` is a `2`-cluster of total perimeter `0` with measure vector `(1, 0)`.
- Non-example: `(⋃_{k ≥ 1} (1/(2k+1), 1/(2k)), complement)` in `ℝ` is not a cluster, because the first cell has infinitely many boundary points in `(0, 1)` and infinite perimeter; overlapping cells such as `((−∞, 1), (0, ∞))` are excluded by disjointness.

### 3.2 The interface decomposition

For a `q`-cluster `Ω` and `i ≠ j`, the interface is `Σ_ij = ∂*Ω_i ∩ ∂*Ω_j` and its weighted area is `A_ij = μ^{n−1}(Σ_ij)`. Prove that for every `S ⊆ {1, …, q}`, `μHE[n−1]`-almost every point of `∂*(⋃_{i ∈ S} Ω_i)` lies in `Σ_ij` for some `i ∈ S`, `j ∉ S`; that `μHE[n−1]`-almost every point of `∂*Ω_i` lies in exactly one `Σ_ij`; that `P_μ(Ω_i) = Σ_{j ≠ i} A_ij`, `P_μ(⋃_{i ∈ S} Ω_i) = Σ_{i ∈ S, j ∉ S} A_ij` and `P_μ(Ω) = Σ_{i<j} A_ij`; and that the closure of `∂*Ω_i` equals the closure of `⋃_{j ≠ i} Σ_ij` (MilmanNeeman2022 equations (3.4)–(3.6), line 769–784; Maggi2012 Exercise 29.7, cited by locator). The closure form replaces the literal set equality `∂*Ω_i = ⋃_{j ≠ i} Σ_ij`, which fails (Checks). A route: by G5, `μHE[n−1]`-almost every point `x` has density `0`, `1/2` or `1` for each cell and lies in `∂*Ω_k` exactly when that density is `1/2`; densities of disjoint cells add and sum to `1`; at a point of `∂*(⋃_S Ω_i)` the density of the union is `1/2`, which forces exactly one `i ∈ S` and exactly one `j ∉ S` of density `1/2`. Three cells of density `1/2` at one point are impossible, which gives uniqueness. For the closures, `|Dχ_{Ω_i}| = μHE[n−1] ⌊ ∂*Ω_i` has support the closure of `∂*Ω_i`, and the two measures agree. *Needs:* §2.2, §3.1; GeometricMeasureTheory G5 (density one-half on the reduced boundary, essential versus reduced boundary).

**Checks.**

- For `q = 2`, `Σ_12 = ∂*Ω_1 = ∂*Ω_2` up to null sets, `A_12 = P_μ(Ω_1)` and `P_μ(Ω) = A_12`.
- For the three intervals of §3.1, `Σ_12 = {a}`, `Σ_23 = {b}`, `Σ_13 = ∅`, so `A_12 = φ(a)`, `A_23 = φ(b)`, `A_13 = 0`, and `Σ_{i<j} A_ij = φ(a) + φ(b)` agrees with §3.1.
- Negative control for the set equality: in `ℝ²` let `Ω_1 = {x_2 < 0}`, `Ω_2 = ⋃_{k ≥ 0} {x : x_2 > 0, 2^{−2k−1} ≤ ‖x‖ < 2^{−2k}}` and `Ω_3 = {x_2 > 0} ∖ Ω_2`. The boundary of each half-annulus has total Gauss–Green vector `0` and length `2^{−2k}(3π/2 + 1)`, so the ratio defining the normal of `Ω_2` at the origin does not tend to a unit vector; the origin lies in `∂*Ω_1` but in neither `∂*Ω_2` nor `∂*Ω_3`. It is a single, `μHE[1]`-null point, consistent with the almost-everywhere statements.

### 3.3 The interface quadratic form

Prove that if `μ(E) = 1` and `μ(Ω) ∈ int Δ^{(q−1)}`, the graph on `{1, …, q}` with an edge `{i, j}` whenever `A_ij > 0` is connected, and `L_A` is positive definite on `E^{(q−1)}` (MilmanNeeman2022 Lemma 3.4, line 892–905). A route: a component `S` of the graph would give `U = ⋃_{i ∈ S} Ω_i` with `0 < μ(U) < 1` and `P_μ(U) = 0` by §3.2; zero perimeter makes `χ_U` locally of zero variation, hence constant on every ball by the BV Poincaré inequality, hence `U` null or conull. Milman–Neeman use the Gaussian isoperimetric inequality instead; this route holds for every weight. *Needs:* §3.2; GeometricMeasureTheory G4 (BV Poincaré on balls).

**Checks.**

- For the three intervals, edges `{1,2}` and `{2,3}` connect the graph, and `⟨a, L_A a⟩ = φ(a)(a_1 − a_2)² + φ(b)(a_2 − a_3)²` vanishes on `E^{(2)}` only at `a = 0`.
- At a boundary point of the simplex the conclusion fails: the cluster `(E, ∅, ∅)` has `A = 0` and `L_A = 0`.

### 3.4 Isoperimetric profiles and minimizing clusters

For `μ(E) = 1`, `q ≥ 2` and `v ∈ Δ^{(q−1)}`, define the isoperimetric profile `I_μ^{(q−1)}(v) = inf {P_μ(Ω) : Ω a q-cluster with μ(Ω) = v}`; a cluster is `μ`-minimizing when it attains the profile at its own measure vector. Write `I^{(q−1)}` for `I_γ^{(q−1)}` (MilmanNeeman2022 line 169–170 and 909–910). Set `I^{(0)}(1) = 0`.

- `I_μ^{(q−1)}(v) < ∞` for every `v`: concentric annuli `{r_{i−1} ≤ ‖x‖ < r_i}` with radii chosen by continuity of `r ↦ μ(ball(0, r))` form a cluster with measure vector `v`, and spheres have finite weighted area because `e^{−W}` is continuous.
- `I_μ^{(q−1)}` is invariant under simultaneous permutation of the coordinates of `v`; at a vertex of the simplex it is `0`.
- Padding with empty cells: `I_μ^{(q−1)}(v) ≤ I_μ^{(|J|−1)}(v_J)` when `v` vanishes outside `J`, where `v_J` keeps the coordinates in `J`.
- For `q = 2`, `I_μ^{(1)}(v_1, 1 − v_1) = inf {P_μ(U) : μ(U) = v_1}`.

*Needs:* §2.3, §3.1; GeometricMeasureTheory G2 (sphere measure, for the annuli).

**Checks.**

- At the vertex `(1, 0)`, the cluster `(E, ∅)` shows `I_μ^{(1)}(1, 0) = 0`.
- For the smooth positive probability density `ρ(x, y) = c (1 + y²) exp(−x²(1 + y²)⁴)` on `ℝ²`, with `c` normalizing, the line `{x = 0}` has infinite weighted length, so the only half-plane `{x < t}` of measure `1/2` has infinite perimeter; balls give a finite-perimeter set of measure `1/2`, and so does the symmetric slab `{|x| < a}` of measure `1/2`, since `a > 0` and a line `{x = t}` with `t ≠ 0` has finite weighted length. Half-planes `{x < t}` alone would not prove finiteness of the profile.
- For `γ` and `q = 2`, Layer 7 gives `I^{(1)}(1/2, 1/2) = 0.398942`; the ball of measure `0.393469` in `ℝ²` gives the upper bound `I^{(1)}(0.393469, 0.606531) ≤ 0.606531`, consistent with the value `0.384633`.

### 3.5 Existence of minimizing clusters

Prove that if `μ(E) = 1`, then for every `q ≥ 2` and `v ∈ Δ^{(q−1)}` there is a `μ`-minimizing `q`-cluster `Ω` with `μ(Ω) = v`, so `P_μ(Ω) = I_μ^{(q−1)}(v)` (MilmanNeeman2022 Theorem 4.1 (i), line 918–922, with its proof at line 939–956). A route: take a minimizing sequence, bound each cell's perimeter by twice the total, extract `L¹(μ)`-convergent cells by §2.4, observe that the limit indicators are a.e. disjoint and sum to `1` a.e. so that a null modification is a cluster, get the measures from `L¹(μ)` convergence, and conclude by lower semicontinuity and `Σ liminf ≤ liminf Σ`. *Needs:* §2.4, §3.1, §3.4.

**Checks.**

- `q = 2`, `μ = γ`, `v = (1/2, 1/2)`: a minimizer exists, and Layer 7 identifies it as a half-space through the origin, with perimeter `0.398942`.
- For the weight `0` on `ℝ`, whose mass is infinite, the sets `(k, k + 1)` of measure `1` and perimeter `2` form a minimizing sequence with no `L¹`-convergent subsequence; the infimum is attained there only by translation invariance, so the route genuinely uses `μ(E) = 1`.

### Examples

Under `γ` on `ℝ`, the cluster `((−∞, a), (a, b), (b, ∞))` has interface areas `φ(a), 0, φ(b)` and total perimeter `φ(a) + φ(b)`.

### Dependencies

Layer 2; GeometricMeasureTheory G4–G5.

## Layer 4: model simplicial clusters and the model profile

From here on `μ = γ`. The cluster number satisfies `2 ≤ q ≤ n + 1` whenever a simplicial cluster in `E` is involved; the canonical model lives in `E^{(q−1)}` for every `q ≥ 1`.

### 4.1 The canonical model cluster

On `E^{(q−1)}` with its standard Gaussian `γ_{q−1}` and `γ_{q−1}^{q−2} = e^{−W} μHE[q−2]`, define the model cells `Ω^m_i = {x ∈ E^{(q−1)} : x_i > x_j for all j ≠ i}`, which are the interiors of `{x : max_j x_j = x_i}`; the translated model cluster `x + Ω^m = (x + Ω^m_1, …, x + Ω^m_q)` for `x ∈ E^{(q−1)}`; the model interfaces `Σ^m_ij = {x : x_i = x_j ≥ x_k for all k}`; and the model interface areas `A^m_ij(x) = γ_{q−1}^{q−2}(x + Σ^m_ij)` (MilmanNeeman2022 line 499–505). For `q = 1`, `E^{(0)} = {0}` and the model cluster is `(E^{(0)})`.

- `x + Ω^m` is a `γ_{q−1}`-cluster whose cells are open convex polyhedral cones with apex `x`; its interfaces in the sense of §3.2 are `x + Σ^m_ij` up to `μHE[q−2]`-null sets, with constant normal `n_ij = (e_j − e_i)/√2` pointing from cell `i` to cell `j`.
- `A^m_ij(x) > 0` for all `i ≠ j` and `x` (when `q ≥ 2`), and `P_γ(x + Ω^m) = Σ_{i<j} A^m_ij(x)`.
- Every codimension-two face `F_ijk = {x_i = x_j = x_k ≥ x_l for all l}` lies on exactly the three interfaces `Σ^m_ij, Σ^m_jk, Σ^m_ki`; the outward conormal of `Σ^m_ij` along `F_ijk` within the hyperplane `{x_i = x_j}` is `η_{ij,k} = (2e_k − e_i − e_j)/√6`, and `η_{ij,k} + η_{jk,i} + η_{ki,j} = 0`.
- Writing `x + Σ^m_ij = ⟨n_ij, x⟩ n_ij + (π_ij x + Σ^m_ij)` with `π_ij` the orthogonal projection onto `n_ij^⊥ ∩ E^{(q−1)}`, `A^m_ij(x) = φ(⟨n_ij, x⟩) γ_{n_ij^⊥}(π_ij x + Σ^m_ij)`.

*Needs:* §1.3, §2.3, §3.2.

**Checks.**

- `q = 2`: `E^{(1)} = ℝ u` with `u = (e_1 − e_2)/√2`; for `x = t u`, `x + Ω^m_1 = {s u : s > t}` has measure `Φ(−t)` and `A^m_12(tu) = φ(t)`.
- `q = 3`, `x = 0`: each `Σ^m_ij` is a ray from the origin, so `A^m_ij(0) = ∫_0^∞ (2π)^{−1} e^{−s²/2} ds = 1/(2√(2π)) = 0.199471` and `P_γ(Ω^m) = 0.598413`; the cells have measure `1/3` each.
- The conormals for `(i, j, k) = (1, 2, 3)` are `(−1, −1, 2)/√6`, `(2, −1, −1)/√6` and `(−1, 2, −1)/√6`, summing to `0` and meeting at `120°`; for a non-equidistant triple of centres the bisectors do not meet at equal angles and the sum is nonzero.

### 4.2 Simplicial clusters in a Euclidean space

For `2 ≤ q ≤ n + 1` and points `p_1, …, p_q ∈ E` with `‖p_i − p_j‖` equal to one positive number for all `i ≠ j`, the simplicial cluster with these centres has cells `Ω_i = {y ∈ E : ‖y − p_i‖ < ‖y − p_j‖ for all j ≠ i}`, the interiors of the Voronoi cells (MilmanNeeman2022 line 76–82).

- Every simplicial cluster is the image `ι(x + Ω^m) ⊕ (range ι)^⊥`, cell by cell, for some linear isometric embedding `ι : E^{(q−1)} → E` and some `x ∈ E^{(q−1)}`; conversely every such image is simplicial. The point `ι(x)` is the projection of the circumcentre of the centres onto `range ι`.
- The cells of a simplicial cluster are open convex polyhedral cones with common apex the circumcentre, and the cluster is unchanged by scaling the centres about the circumcentre.
- A simplicial cluster is a `γ`-cluster, and `γ(Ω_i) = γ_{q−1}(x + Ω^m_i)`, `P_γ(Ω) = P_γ(x + Ω^m)` (§2.7).

*Needs:* §2.7, §4.1; Mathlib `ProbabilityTheory.stdGaussian_map`.

**Checks.**

- `q = 2`: two centres give the complementary open half-spaces bounded by the bisecting hyperplane, a pair of measure vector `(Φ(s), 1 − Φ(s))` and perimeter `φ(s)`, `s` the signed distance of the hyperplane from the origin.
- `q = 3` in `ℝ²` with an equilateral triangle centred at the origin: three `120°` sectors, each of measure `1/3`, total perimeter `0.598413`.
- Non-example: the collinear centres `0, 1, 2` in `ℝ` give the Voronoi cells `(−∞, 1/2), (1/2, 3/2), (3/2, ∞)`, a `3`-cluster, but not a simplicial one: the centres are not equidistant, and `q = 3 > n + 1`.

### 4.3 The measure map

Prove that `Ψ : E^{(q−1)} → ℝ^q`, `Ψ(x) = γ_{q−1}(x + Ω^m)`, is `C^∞`, injective, with image `int Δ^{(q−1)}`, and that its derivative at every `x` is the linear map `−L_{A^m(x)}/√2` of `E^{(q−1)}`, which is invertible; hence `Ψ` is a diffeomorphism of `E^{(q−1)}` onto `int Δ^{(q−1)}` (MilmanNeeman2022 Lemma 2.1, line 506–543). A route: smoothness by differentiating `∫_{Ω^m_i} e^{−W(x + y)} dy`; the derivative from the translation formula of §2.5, `∂_w Ψ_i(x) = Σ_{j ≠ i} ⟨w, n_ij⟩ A^m_ij(x) = −(L_{A^m(x)} w)_i/√2`; invertibility from `A^m_ij > 0`. For injectivity, given `y ≠ x` take `i` maximizing `(y − x)_i`; then `y + Ω^m_i ⊊ x + Ω^m_i` and the difference contains an open set, so `Ψ_i(y) < Ψ_i(x)`. (Milman–Neeman assert `y ∈ x + Ω^m_i` for some `i`, which fails when the maximal coordinate of `y − x` is attained twice; the maximal-coordinate argument covers ties.) For surjectivity, `Ψ` is open (inverse function theorem) and proper onto `int Δ^{(q−1)}`: if `x_k` is unbounded then `max_i x_{k,i} → ∞` along a subsequence, and `x + Ω^m_i ⊆ {z : z_i ≥ x_i}` gives `Ψ_i(x_k) ≤ 1 − Φ(√(q/(q−1)) x_{k,i}) → 0`. So the image is open and closed in the connected set `int Δ^{(q−1)}`. Milman–Neeman's invariance-of-domain step is not needed. *Needs:* §1.2, §1.3, §2.5, §4.1; Mathlib `isOpenMap_of_hasStrictFDerivAt_equiv`.

**Checks.**

- `q = 2`, `x = t u`: `Ψ_1(tu) = Φ(−t)` has derivative `−φ(t) = −0.312254` at `t = 0.7` (numerical difference quotient `−0.312254`), while `−(L_A u)_1/√2 = −√2 φ(t) · (1/√2) = −φ(t)`; the sign `+L_A/√2` would give `+φ(t)`.
- `q = 3`, `x = 0`: `L_{A^m(0)} = 3A Id` on `E^{(2)}` with `A = 0.199471`, so `DΨ(0) = −0.423142 Id`; `Ψ(0) = (1/3, 1/3, 1/3)`.
- Ties: for `y − x = (1, 1, −2)` no open cell contains `y − x`, and the maximal-coordinate argument with `i = 1` still gives `Ψ_1(y) < Ψ_1(x)`.

### 4.4 The model profile and its transport

Define the model profile `I_m^{(q−1)} : int Δ^{(q−1)} → ℝ` by `I_m^{(q−1)}(v) = P_γ(Ψ⁻¹(v) + Ω^m) = Σ_{i<j} A^m_ij(Ψ⁻¹(v))`, and `I_m^{(0)}(1) = 0` (MilmanNeeman2022 Definition 2.2, line 548–553). Prove that for `n ≥ q − 1`, every simplicial `q`-cluster in `E` with measure vector `v ∈ int Δ^{(q−1)}` has total perimeter `I_m^{(q−1)}(v)`, and that for every such `v` a simplicial cluster with measure vector `v` exists (MilmanNeeman2022 line 554–556). *Needs:* §4.2, §4.3.

- `I_m^{(q−1)}` is invariant under permuting coordinates, and `I_m^{(1)}(v) = I(v_1)` on `int Δ^{(1)}`.
- `I_m^{(q−1)}(v) > 0` on `int Δ^{(q−1)}`.

**Checks.**

- `q = 2`: for `v_1 = Φ(−t)`, `I_m^{(1)}(v) = φ(t) = I(v_1)`; at `v = (1/2, 1/2)` the value is `0.398942`.
- `q = 3`: `I_m^{(2)}(1/3, 1/3, 1/3) = 0.598413`, larger than the single-bubble value `I(1/3) = 0.363600`, as it must be since `(Ω_1, Ω_2 ∪ Ω_3)` is a `2`-cluster of smaller perimeter.
- Evaluating the interface sum at the point `v − (1/q, …, 1/q)` instead of at `Ψ⁻¹(v)` is a plausible wrong definition: for `q = 2` and `v = (Φ(1), 1 − Φ(1))` it gives `φ(0.482734) = 0.355065`, whereas `I_m^{(1)}(v) = φ(1) = 0.241971`.

### 4.5 Boundary behaviour of the model profile

Prove that `I_m^{(q−1)}` is `C^∞` on `int Δ^{(q−1)}`, extends continuously to `Δ^{(q−1)}`, and that the extension satisfies `I_m^{(q−1)}(v) = I_m^{(|J|−1)}(v_J)` whenever `v` lies in the face `Δ_J = {v : v_i > 0 exactly for i ∈ J}`, `0 < |J| < q` (MilmanNeeman2022 Lemma 2.3, line 558–564, with its proof at line 577–659). A route: smoothness from §4.3 and the factorization of `A^m_ij` in §4.1; for the boundary, compare `x + Ω^m` with the lower-dimensional model obtained by deleting the small cells and extending the large ones, using the splitting of §1.3, the one-dimensional laws of `(x_i − x_j)/√2`, and the tail bound of §1.2 to show that interfaces adjacent to vanishing cells have vanishing area. *Needs:* §1.2, §1.3, §4.1, §4.3, §4.4.

**Checks.**

- `I_m^{(2)}(1/2, 1/2, 0) = I_m^{(1)}(1/2, 1/2) = 0.398942`.
- At a vertex, `I_m^{(q−1)}(e_i) = I_m^{(0)}(1) = 0`.
- `I_m^{(1)}` extends by `0` at `(1, 0)` and `(0, 1)`, matching `I(0) = I(1) = 0`; extending by `φ(0)` would contradict continuity.

### 4.6 The differential identities of the model profile

Prove that on `int Δ^{(q−1)}`, `∇I_m^{(q−1)} = Ψ⁻¹/√2` and `∇²I_m^{(q−1)} = −(L_{A^m} ∘ Ψ⁻¹)⁻¹` as tensors on `E^{(q−1)}`, and consequently `−tr[(∇²I_m^{(q−1)})⁻¹] = 2 I_m^{(q−1)}` (MilmanNeeman2022 Proposition 2.4, line 669–695, and equations (1.3)–(1.4), line 200–207). A route: from the factorization of §4.1, `∂_w A^m_ij(x) = −⟨w, n_ij⟩⟨n_ij, x⟩ A^m_ij(x) + φ(⟨n_ij, x⟩) ∂_{π_ij w} γ_{n_ij^⊥}(π_ij x + Σ^m_ij)`; by the translation formula of §2.5 inside the hyperplane, the second term is a sum of integrals over the faces `x + F_ijk` against the conormals `η_{ij,k}`, and these cancel in `Σ_{i<j}` by the balancing identity of §4.1. Hence `∇_w Σ_{i<j} A^m_ij(x) = −½ ⟨w, L_{A^m(x)} x⟩`; compose with `D(Ψ⁻¹) = −√2 (L_{A^m} ∘ Ψ⁻¹)⁻¹` from §4.3 and differentiate once more. The trace identity uses `tr_{E^{(q−1)}} (e_i − e_j)(e_i − e_j)ᵀ = 2`. *Needs:* §2.5, §4.1, §4.3, §4.4.

**Checks.**

- `q = 2` in the coordinate `v_1`: `∇I_m^{(1)}` along `u` is `I′(v_1)/√2 = −Φ⁻¹(v_1)/√2`, and `Ψ⁻¹(v)/√2 = (−Φ⁻¹(v_1)/√2) u`; the second derivative along `u` is `I″(v_1)/2 = −1/(2 I(v_1)) = −1/(2 A_12)`, matching `−L_A⁻¹`.
- `q = 3` at `v = (1/3, 1/3, 1/3)`: `∇I_m = 0`, `∇²I_m = −1.671086 Id` on `E^{(2)}`, and `−tr[(∇²I_m)⁻¹] = 1.196827 = 2 × 0.598413`.
- For `q = 3` and `x = 0` each interface is a ray with apex `0`, and the boundary term of `Σ^m_ij` is `(2π)^{−1} ⟨w, η_{ij,k}⟩` with `(2π)^{−1} = 0.159155`; the three terms cancel. Keeping one of them would give a nonzero gradient at the symmetric point `(1/3, 1/3, 1/3)`, where permutation symmetry forces `∇I_m = 0`.

### 4.7 The easy inequality

Prove that for `n ≥ q − 1` and every `v ∈ Δ^{(q−1)}`, `I^{(q−1)}(v) ≤ I_m^{(q−1)}(v)` (MilmanNeeman2022 line 660–666). A route: in the interior, a simplicial cluster of §4.4 is a competitor; on a face `Δ_J`, pad the simplicial `|J|`-cluster with empty cells and use §4.5; at a vertex use `(E, ∅, …)`. *Needs:* §3.4, §4.4, §4.5.

**Checks.**

- `q = 2`, `v = (1/2, 1/2)`: `I^{(1)} ≤ 0.398942`, an equality by Layer 7.
- `q = 3`, `v = (1/3, 1/3, 1/3)`, `n ≥ 2`: `I^{(2)}(v) ≤ 0.598413`.
- For `n < q − 1` no simplicial `q`-cluster exists in `E` and the statement is not claimed: in `ℝ`, `q = 3`, the three-interval cluster with measures `(1/3, 1/3, 1/3)` has perimeter `2 φ(Φ⁻¹(1/3)) = 0.727200`, above `0.598413`.

### Examples

The tripod cluster in `ℝ²` with measure vector `(1/3, 1/3, 1/3)` has interface areas `0.199471` each, total perimeter `0.598413`, `DΨ = −0.423142 Id` and `∇²I_m = −1.671086 Id` at its parameter `0`.

### Dependencies

Layers 1–3; GeometricMeasureTheory G6 through §2.3 and §2.5; Mathlib's inverse function theorem.

## Layer 5: Gaussian isoperimetry on the line

### 5.1 Sets of locally finite perimeter on the line

Prove that if `J ⊆ ℝ` is an open interval and `U ⊆ ℝ` is Lebesgue measurable with locally finite perimeter in `J`, then `T = ∂^M U ∩ J` is a locally finite subset of `J`, equals `∂*U ∩ J`, and `U ∩ J` agrees a.e. with a union of open intervals whose endpoints in `J` are exactly the points of `T`; consequently `P_μ(U; B) = Σ_{t ∈ T ∩ B} e^{−W(t)}` for every weight `W` on `ℝ` and Borel `B ⊆ J` (CianchiFuscoMaggiPratelli2011 line 245–248). A route: `χ_U` has a representative of locally bounded classical variation on `J`; a `{0, 1}`-valued such function has finitely many jumps, each of size one, in every compact subinterval, and its derivative measure is the signed sum of unit masses at the jumps. *Needs:* §2.2; GeometricMeasureTheory G3 (one-dimensional comparison with classical variation).

**Checks.**

- `U = (0, 1) ∪ (1, 2)`: the point `1` has density one, so `T = {0, 2}` and `P_γ(U) = φ(0) + φ(2) = 0.452933`, not `φ(0) + 2φ(1) + φ(2)`.
- `U = ℚ` is null: `T = ∅` and `P_γ(U) = 0`, although its frontier is `ℝ`.
- `U = ⋃_{k ≥ 1} (1/(2k+1), 1/(2k))` has locally finite perimeter in `(0, ∞)` but not in any interval containing `0`, where `T` accumulates.

### 5.2 Shifting intervals

Prove that for `−∞ < a < b < ∞` with `a + b ≥ 0` and every `a < a′ < b′ ≤ ∞` with `γ¹((a′, b′)) = γ¹((a, b))`, `φ(a′) + φ(b′) < φ(a) + φ(b)`, with `φ(∞) = 0`; symmetrically for `a + b ≤ 0` and left shifts (CianchiFuscoMaggiPratelli2011 Definition 3.2 and Lemma 3.3, line 226–232). A route: along the shift `b′` is a function of `a′` with `db′/da′ = φ(a′)/φ(b′)`, so `d(φ(a′) + φ(b′))/da′ = −φ(a′)(a′ + b′) < 0` because `a′ + b′ > a + b ≥ 0`. *Needs:* §1.1.

**Checks.**

- `(0, 1)` has `γ¹ = 0.341345` and perimeter `0.640913`; its right shift to a half-line is `(0.408796, ∞)` with perimeter `0.366963 = I(0.341345)`.
- Negative control: `(−1, 0)` has `a + b < 0`, and its right shifts `(−0.9, 0.063724)` and `(−0.5, 0.385003)` have perimeters `0.664218` and `0.722510`, both larger than `0.640913`.

### 5.3 The one-dimensional theorem with equality

Prove that every Lebesgue-measurable `U ⊆ ℝ` satisfies `P_γ(U) ≥ I(γ¹(U))`, with equality if and only if `γ¹(U) ∈ {0, 1}` or `U` agrees a.e. with `(−∞, s)` or `(s, ∞)` for some real `s` (CianchiFuscoMaggiPratelli2011 Proposition 3.1, line 220–223, with its proof at line 233–293). A route: by §5.1 assume `P_γ(U) < ∞` and `U` a locally finite union of intervals. The truncation `U ∩ (−R, R)` has finitely many components, perimeter at most `P_γ(U) + 2φ(R)` and measure tending to `γ¹(U)`, so continuity of `I` reduces the inequality to finite unions, which follows by induction on the number of bounded components using §5.2, complement invariance and `I(1 − v) = I(v)`. For equality, if `0 < γ¹(U) < 1` and `U` is not a.e. a half-line, then `U` or its complement has a bounded component, and one shift of §5.2 produces a set of the same measure and strictly smaller perimeter, to which the inequality applies. *Needs:* §1.1, §2.2, §5.1, §5.2.

**Checks.**

- `(−∞, −0.430727)` and `(0.430727, ∞)` have measure `1/3` and perimeter `0.363600 = I(1/3)`.
- `(−1, 1)` and its complement have perimeter `0.483941`, measures `0.682689` and `0.317311`, and `I` of either is `0.356343`.
- `(−∞, 0) ∪ ℚ` has perimeter `φ(0) = I(1/2)`: equality holds up to null sets, so the characterization cannot be stated for literal half-lines.

### Examples

The intervals `(0, 1)`, `(−1, 1)` and `(−∞, s)` have perimeters `0.640913`, `0.483941` and `φ(s)` against `I` values `0.366963`, `0.356343` and `φ(s)`.

### Dependencies

Layers 1–2; GeometricMeasureTheory G3.

## Layer 6: Gaussian symmetrisation of sets of finite Gaussian perimeter

### 6.1 Gaussian symmetrals

For a subspace `F ⊆ E` of dimension `k ≥ 1`, a unit vector `u ∈ F` and a Lebesgue-measurable `U ⊆ E`, write `U_x = {y ∈ F : x + y ∈ U}` for `x ∈ F^⊥` and `v_U(x) = γ_F(U_x)`, and define the Gaussian symmetral `S_{F,u}(U) = {x + y : x ∈ F^⊥, y ∈ F, Φ(⟨y, u⟩) < v_U(x)}`. For `F = ℝ e` and `u = e` it is the Ehrhard symmetral `S_e(U) = {z + te : z ∈ e^⊥, Φ(t) < v_U(z)}`, with `v_U(z) = γ¹({t : z + te ∈ U})` (CianchiFuscoMaggiPratelli2011 line 543–552, in the mirrored superlevel convention with their upper-tail `Φ`; Ehrhard1983 Definition 1.1, line 117–129).

- `S_{F,u}(U)` is Lebesgue measurable, `v_{S_{F,u}(U)} = v_U` almost everywhere on `F^⊥`, and `γ(S_{F,u}(U)) = γ(U)`.
- If `U ⊆ U′` then `S_{F,u}(U) ⊆ S_{F,u}(U′)`; sets equal up to a null set have symmetrals equal up to a null set; `S_{F,u}` is idempotent.
- For a linear isometry `T` of `E` with `T(F) = F` and `T(u) = u`, `S_{F,u}(T(U)) = T(S_{F,u}(U))`.
- Half-spaces `{⟨x, u⟩ < a}` are fixed; null sets go to `∅` and conull sets to `E`.

A route: Fubini along the splitting of §1.3, and the identity `γ_F({y : Φ(⟨y, u⟩) < v}) = v` for `v ∈ [0, 1]`. *Needs:* §1.1, §1.3.

**Checks.**

- `{⟨x, e⟩ < a}` has sections of measure `Φ(a)` and is fixed by `S_e`; the superlevel definition would send it to `{⟨x, e⟩ > −a}`, which has measure `1 − Φ(a)`, `0.158655` instead of `0.841345` at `a = 1`.
- For `U = ball(0, 1) ⊂ ℝ²` and `e = e_2`, `v_U(z) = 2Φ(√(1 − z²)) − 1` for `|z| < 1` and `0` otherwise; `γ(S_e(U)) = 0.393469 = γ(U)`, and the section of `S_e(U)` over `z = 0` is `(−∞, 0.475231)`.
- `S_e` of the null set `ℚ e` is `∅`, and of its complement is `E`.

### 6.2 Slicing the reduced boundary

Prove that for `U` of locally finite perimeter in `E`, `n ≥ 2`, a unit vector `e` and Borel `g : E → [0, ∞]`, `∫_{∂*U} g |⟨ν_U, e⟩| dμHE[n−1] = ∫_{e^⊥} Σ_{t : z + te ∈ ∂*U} g(z + te) dz`. Combine it with the slicing theorem: for a.e. `z ∈ e^⊥`, `U_z` has locally finite perimeter, `∂*(U_z) = ∂^M(U_z) = {t : z + te ∈ ∂*U}`, and `⟨ν_U, e⟩ ≠ 0` there; the projection of `{x ∈ ∂*U : ⟨ν_U(x), e⟩ = 0}` to `e^⊥` is null. Call `z` good for `U` when these conclusions hold (CianchiFuscoMaggiPratelli2011 Theorem 4.2 and equation (4.1), line 527–542; Maggi2012 Sections 18.2–18.3; AmbrosioFuscoPallara2000 Theorem 3.108, cited by locator). A route: apply the tangential area formula to the orthogonal projection onto `e^⊥` on the countably rectifiable set `∂*U`, whose approximate tangent plane is `ν_U^⊥` almost everywhere; the tangential Jacobian of the projection on `ν^⊥` is `|⟨ν, e⟩|`; use §5.1 for `∂* = ∂^M` on the line. *Needs:* §5.1; GeometricMeasureTheory G2 (tangential area formula), G5 (De Giorgi's theorem); Isoperimetry I4 (slicing theorem); Mathlib `LinearMap.normDet`.

**Checks.**

- `U = {x_2 < m x_1}` in `ℝ²`, `e = e_2`, `g` the indicator of `{0 ≤ x_1 ≤ 1}`: the boundary segment has length `√(1 + m²)` and `|⟨ν_U, e_2⟩| = 1/√(1 + m²)`, so both sides equal `1`. With the reciprocal Jacobian the left side would be `1 + m² = 2` at `m = 1`.
- A vertical boundary `{x_1 = s}` has `⟨ν_U, e_2⟩ = 0`; the left side vanishes and the boundary projects to a single point of `e^⊥`.

### 6.3 The section-measure function

Prove that for `P_γ(U) < ∞`, `n ≥ 2` and a unit vector `e`, `v_U ∈ BV_loc(e^⊥)`, and for every Borel `B ⊆ e^⊥`, `∫_B e^{−W_{e^⊥}} d|Dv_U| ≤ P_γ(U; B ⊕ ℝ e)`, where `e^{−W_{e^⊥}}` is the density of `γ_{e^⊥}`. Prove that the absolutely continuous part of `Dv_U` has density `∇v_U(z) = −Σ_{t : z + te ∈ ∂*U} φ(t) ν_U^⊥(z + te)/|⟨ν_U(z + te), e⟩|` at every good `z`, where `ν^⊥` is the component in `e^⊥`, and that its singular part is carried by the null projection of `{⟨ν_U, e⟩ = 0}` (CianchiFuscoMaggiPratelli2011 Lemma 4.4, equations (4.7)–(4.8), line 605–618, stated there with the inner normal and unnormalized section weights). A route: for a smooth compactly supported field `Y` on `e^⊥`, the field `X(z + te) = Y(z)` has `div_γ X = div_{γ_{e^⊥}} Y`; Fubini gives `∫_U div_γ X dγ = ∫ v_U div_{γ_{e^⊥}} Y dγ_{e^⊥}`, and the bounded-field Gauss–Green identity of §2.5 equates it to `∫_{∂*U} ⟨Y, ν_U⟩ dγ^{n−1}`. This yields the variation bound and, through §2.1, `BV_loc`; §6.2 splits the boundary integral into its absolutely continuous and singular parts. *Needs:* §1.3, §2.1, §2.5, §6.2.

**Checks.**

- `U = {x_2 < a + b x_1}` in `ℝ²`, `e = e_2`: `v_U(z) = Φ(a + bz)` and `v_U′(z) = b φ(a + bz)`; with `ν_U = (−b, 1)/√(1 + b²)` the formula gives `−φ(a + bz) · (−b)` as well. The inner normal gives the opposite sign.
- For the same `U` with `a = b = 1` and `B = e^⊥`, the variation bound reads `φ(1/√2)/√2 = 0.219695 ≤ φ(1/√2) = 0.310697`.
- Weighting the sections by `e^{−t²/2}` without `(2π)^{−1/2}`, as Cianchi–Fusco–Maggi–Pratelli print it, would give `√(2π) b φ(a + bz)`, contradicting `v_U = Φ(a + bz)`.

### 6.4 A lower bound by sections

For `z ∈ e^⊥` let `p_U(z) = Σ_{t ∈ ∂^M(U_z)} φ(t)`, the Gaussian perimeter of the section. Prove that for `P_γ(U) < ∞`, `n ≥ 2` and every Borel `B ⊆ e^⊥` consisting of good points, `P_γ(U; B ⊕ ℝ e) ≥ ∫_B √(p_U(z)² + ‖∇v_U(z)‖²) dγ_{e^⊥}(z)`, with equality when `U ∩ (B ⊕ ℝ e) = S_e(U) ∩ (B ⊕ ℝ e)` (CianchiFuscoMaggiPratelli2011 Lemma 4.6, line 781–828). A route: §6.2 with `g = e^{−W}/|⟨ν_U, e⟩|` and the factorization `e^{−W}(z + te) = e^{−W_{e^⊥}}(z) φ(t)` express the boundary measure over good points as `∫_B Σ_t φ(t) √(1 + ‖ν^⊥‖²/⟨ν, e⟩²) dγ_{e^⊥}`; Jensen's inequality for `w ↦ √(1 + ‖w‖²)` with weights `φ(t)/p_U(z)` and §6.3 give the bound, and a symmetral has one boundary point on each good section. *Needs:* §1.3, §5.1, §6.2, §6.3.

**Checks.**

- The tilted half-plane `{x_2 < 1 + x_1}` is its own symmetral; both sides equal `φ(1/√2) = 0.310697`, the right side as `√2 ∫ φ(1 + z) φ(z) dz`.
- The slab `{|x_2| < 1}` gives equality `2φ(1) = 0.483941` on both sides although it is not a symmetral, so the equality condition is sufficient but not necessary.

### 6.5 An upper bound for the symmetral

Prove that for `P_γ(U) < ∞`, `n ≥ 2` and every Borel `B ⊆ e^⊥`, `P_γ(S_e(U); B ⊕ ℝ e) ≤ ∫_B e^{−W_{e^⊥}} d|Dv_U| + ∫_B I(v_U(z)) dγ_{e^⊥}(z)`; in particular `S_e(U)` has finite Gaussian perimeter, at most `2 P_γ(U)` (CianchiFuscoMaggiPratelli2011 Lemma 4.5, line 624–779). A route: reduce to bounded open `B` and a test field `X` supported in `B ⊕ ℝ e`. The `e`-component contributes exactly `∫ X_e(z, Φ⁻¹(v_U(z))) I(v_U(z)) dγ_{e^⊥}` by Fubini. For the `e^⊥`-components, `H(z, s) = ∫_{−∞}^{Φ⁻¹(s)} X^⊥(z + te) φ(t) dt` is smooth on `e^⊥ × [0, 1]` with `∂_s H(z, s) = X^⊥(z + Φ⁻¹(s) e)`; for a smooth `v` with values in `[0, 1]` the chain rule bounds the contribution of `{Φ(t) < v(z)}` by `∫ ‖∇v‖ dγ_{e^⊥}`; apply this to mollifications of `v_U` and pass to the limit with `‖∇(v_U ∗ ρ_ε)‖ ≤ |Dv_U| ∗ ρ_ε`. Cianchi–Fusco–Maggi–Pratelli use strict approximation and Reshetnyak continuity instead. *Needs:* §1.1, §1.3, §2.1, §2.2, §6.1, §6.3; GeometricMeasureTheory G4 (mollification).

**Checks.**

- For `{x_2 < a}` the bound is `0 + φ(a) = P_γ`, an equality; dropping the term `∫ I(v_U)` would give `0 < φ(a)`.
- For `{x_2 < 1 + x_1}` the bound is `0.219695 + 0.219695 = 0.439392`, larger than the true `0.310697`: the sum bound is weaker than the square-root formula of §6.4.

### 6.6 Ehrhard symmetrisation decreases Gaussian perimeter

Prove that for `n ≥ 2`, a unit vector `e`, `U` with `P_γ(U) < ∞` and every Borel `B ⊆ e^⊥`, `P_γ(S_e(U); B ⊕ ℝ e) ≤ P_γ(U; B ⊕ ℝ e)`; in particular `P_γ(S_e(U)) ≤ P_γ(U)` (CianchiFuscoMaggiPratelli2011 Theorem 4.3, inequality (4.3), line 583–588, with its proof at line 833–846). A route: on points good for both `U` and `S_e(U)`, chain §6.4 for `U`, the one-dimensional inequality `p_U ≥ I(v_U) = p_{S_e(U)}` of §5.3, `v_{S_e(U)} = v_U`, and the equality case of §6.4 for `S_e(U)`; the remaining points form a null set, where §6.5 and §6.3 apply. *Needs:* §5.3, §6.1, §6.3, §6.4, §6.5.

**Checks.**

- `U = ball(0, 1) ⊂ ℝ²`, `e = e_2`: `P_γ(S_e(U)) = ∫_{−1}^{1} √(I(v_U)² + v_U′²) φ(z) dz = 0.517483`, between `I(0.393469) = 0.384633` and `P_γ(U) = 0.606531`.
- A half-plane `{⟨x, ν⟩ < s}` with `⟨ν, e⟩ < 0` has upper half-line sections; its symmetral is the reflected half-plane `{⟨x, ν − 2⟨ν, e⟩e⟩ < s}`, of the same perimeter `φ(s)`.

### Examples

For the unit disc in `ℝ²`, symmetrisation along `e_2` keeps the measure `0.393469` and lowers the Gaussian perimeter from `0.606531` to `0.517483`.

### Dependencies

Layers 1, 2 and 5; GeometricMeasureTheory G2, G4, G5; Isoperimetry I4.

## Layer 7: the Gaussian isoperimetric theorem

### 7.1 Minimizers have half-line sections

Let `n ≥ 2`, `0 < r < 1` and `H` a Lebesgue-measurable set with `γ(H) = r` and `P_γ(H) = I^{(1)}(r, 1 − r)`, which exists by §3.5. Prove that for every unit vector `e` and a.e. `z ∈ e^⊥`, the section `H_z` is null, conull, or agrees a.e. with a half-line `(−∞, c)` or `(c, ∞)` (CianchiFuscoMaggiPratelli2011 Section 4.2, Steps I–II, line 889–912). A route: minimality and §6.6 give `P_γ(H; B ⊕ ℝ e) = P_γ(S_e(H); B ⊕ ℝ e)` for every Borel `B`; on good points the chain of §6.6 is then an equality, so `p_H = I(v_H)` almost everywhere, and the equality case of §5.3 applies. *Needs:* §3.5, §5.3, §6.6.

**Checks.**

- A half-space `{⟨x, ν⟩ < s}` with `γ = r` satisfies the conclusion in every direction.
- The disc of measure `0.393469` has the section `(−1, 1)` over `z = 0`, with two boundary points, so it is not a minimizer (its perimeter `0.606531` exceeds `0.384633`).

### 7.2 Minimizers are convex

For `H` as in §7.1, prove that the set `H^{(1)}` of points of density one of `H` is open and convex, and that the same holds for `E ∖ H` (CianchiFuscoMaggiPratelli2011 Section 4.2, Steps III–IV, line 913–966). A route: given `x_1, x_2 ∈ H^{(1)}`, take `e` along `x_2 − x_1`; density one at both points makes almost every nearby section in direction `e` meet `H` near both points, and these sections are half-lines by §7.1, hence contain the segment between; this gives density one along `[x_1, x_2]`, cylinders aligned with `e` being comparable with balls. A convex set all of whose points have density one is open. `E ∖ H` is a minimizer for `1 − r` by complement invariance. *Needs:* §2.1, §7.1; Mathlib `Besicovitch.ae_tendsto_measure_inter_div` (MeasureTheory/Covering/Besicovitch.lean:1105).

**Checks.**

- For `H = {x_1 < s}`, `H^{(1)} = H` and `(E ∖ H)^{(1)} = {x_1 > s}`, two disjoint open convex sets whose union has full measure.
- For `H = {x_1 < 0} ∪ ℚ²`, `H^{(1)} = {x_1 < 0}`: the density-one representative removes null additions, which `H` itself does not.

### 7.3 The theorem with equality

Prove that for every `n ≥ 1` and every Lebesgue-measurable `U ⊆ E`, `P_γ(U) ≥ I(γ(U))`, equivalently `P_γ(U) ≥ φ(a)` for every real `a` with `γ(U) = Φ(a)`; and that equality holds if and only if `γ(U) ∈ {0, 1}` or `U` agrees a.e. with `{x : ⟨x, ν⟩ < s}` for some unit vector `ν` and real `s` (CianchiFuscoMaggiPratelli2011 Theorem 4.1, line 508–509, and Proposition 3.1; MilmanNeeman2022 line 47–52 and 83–84; Ledoux1999 inequality (1.4), line 212–219; SudakovTsirelson1974 Theorem 1 and Borell1975 Theorem 3.1, line 85–99, for the inequality; CarlenKerce2001 Theorem 1 for uniqueness, cited by locator). A route: `n = 1` is §5.3. For `n ≥ 2`, let `H` be a minimizer of §3.5; by §7.2 the open convex sets `H^{(1)}` and `(E ∖ H)^{(1)}` are disjoint and their union has full measure, so a strict separating functional makes `H` a.e. a half-space, and `I^{(1)}(r, 1 − r) = I(r)` by §2.3; every `U` attaining equality is itself a minimizer and the same argument applies. *Needs:* §2.3, §3.5, §5.3, §7.2; Mathlib `geometric_hahn_banach_open_open`.

**Checks.**

- The disc in `ℝ²`: `0.606531 > 0.384633`; the slab `{|x_1| < 1}`: `0.483941 > I(0.682689) = 0.356343`.
- `U = ∅` attains equality with `γ(U) = 0` but is not a half-space, so the disjunct `γ(U) ∈ {0, 1}` is needed.
- The Φ-form avoids `Φ⁻¹(0)`: for `γ(U) = 0` no real `a` satisfies `γ(U) = Φ(a)`, and the statement is vacuous rather than a claim about a junk value.

### 7.4 The two-cell cluster form

Prove that for `n ≥ 1` and `v ∈ Δ^{(1)}`, `I^{(1)}(v) = I_m^{(1)}(v) = I(v_1)`, the model profile being extended to the endpoints by §4.5; and that for `v ∈ int Δ^{(1)}` a `2`-cluster `Ω` with `γ(Ω) = v` is minimizing if and only if it is equivalent to a simplicial `2`-cluster, that is, to a pair of complementary open half-spaces (MilmanNeeman2022 Theorems 1.1–1.2 for `q = 2`, line 98–102, and line 83–84). *Needs:* §3.1, §4.2, §4.4, §4.5, §7.3.

**Checks.**

- `v = (1/2, 1/2)`: `I^{(1)}(v) = 0.398942`, attained by `({x_1 < 0}, {x_1 > 0})`.
- `v = (1, 0)`: `I^{(1)}(v) = 0 = I(1)`, attained by `(E, ∅)`, which is not simplicial; uniqueness is claimed only in the interior.

### Examples

In every dimension, the sets of Gaussian measure `1/3` with least Gaussian perimeter are the half-spaces at distance `0.430727` from the origin, of perimeter `0.363600`.

### Dependencies

Layers 2–6; Mathlib's separation theorem and Lebesgue density theorem.

## Layer 8: integrated, functional and concentration forms

### 8.1 The Borell–Sudakov–Tsirelson inequality

Prove that for every Borel `A ⊆ E`, every real `a` with `Φ(a) ≤ γ(A)` and every `r > 0`, `γ(A + r · ball(0, 1)) ≥ Φ(a + r)`, where `A + r · ball(0, 1)` is the open set `Metric.thickening r A`; hence `γ(Metric.cthickening r A) ≥ Φ(a + r)` for every `r ≥ 0`, and the inner measure of `A + r · closedBall(0, 1)`, which contains the open thickening, is at least `Φ(a + r)`. Equality holds for the half-spaces `{⟨x, ν⟩ < a}`. Prove the same for every Gaussian law on a Euclidean space: for a finite type `ι`, `m ∈ EuclideanSpace ℝ ι`, any square matrix `S`, `γ_{m,S} = multivariateGaussian m S` and `K = CFC.sqrt S`, if `Φ(a) ≤ γ_{m,S}(A)` and `r > 0` then `γ_{m,S}(A + r K(ball(0, 1))) ≥ Φ(a + r)`, the left side being the outer measure when the set is not measurable (Borell1975 Theorem 3.1, line 85–99, stated there with inner measure; Ledoux1993 Théorème 3, line 238–256; Ledoux1999 inequalities (1.5) and (1.7), line 220–247; Ehrhard1983 Théorème 2.4, line 356–359; SudakovTsirelson1974 Theorem 1, cited by locator). A route: `f(s) = γ(Metric.thickening s A)` is nondecreasing; the distance `d_A` is `1`-Lipschitz, so `‖∇d_A‖ ≤ 1` almost everywhere and the coarea formula of §2.6 gives `f(s) − f(s′) ≥ ∫_{s′}^{s} γ^{n−1}({d_A = τ}) dτ` for `0 < s′ < s`. The frontier of `Metric.thickening τ A` lies in `{d_A = τ}`, so §2.3 and §7.3 give `γ^{n−1}({d_A = τ}) ≥ I(f(τ))`. Then `G = Φ⁻¹ ∘ f` is nondecreasing with `G′ ≥ 1` almost everywhere where `0 < f < 1`, and the increment of a monotone function dominates the integral of its derivative, so `G(s) ≥ G(s′) + s − s′`; let `s′ ↓ 0`. For `γ_{m,S}`, pull `A` back along `T(x) = m + K x`, use `T(T⁻¹(A) + r · ball(0, 1)) ⊆ A + r K(ball(0, 1))` and `(T_* γ)(X) ≥ γ(T⁻¹(X))` for every set `X`. *Needs:* §1.1, §2.3, §2.6, §7.3; Mathlib `Metric.thickening`, `Metric.cthickening`, `Metric.cthickening_zero`, `norm_fderiv_le_of_lipschitz`, `LipschitzWith.ae_differentiableAt`, `Monotone.ae_differentiableAt`, `MonotoneOn.intervalIntegral_deriv_mem_uIcc`, `ProbabilityTheory.multivariateGaussian`.

**Checks.**

- `A = {x_1 < a}`: `A + r · ball(0, 1) = {x_1 < a + r}` and both sides equal `Φ(a + r)`.
- `A = ball(0, 1) ⊂ ℝ²`, `r = 1`: `a = Φ⁻¹(0.393469) = −0.270289`, and `γ(ball(0, 2)) = 1 − e^{−2} = 0.864665 ≥ Φ(0.729711) = 0.767217`.
- `Metric.thickening 0 A = ∅`, so the open form needs `r > 0`; the closed form at `r = 0` is `γ(closure A) ≥ Φ(a)`.
- For `S` not positive semidefinite, or `S = 0`, Mathlib's law is `δ_m` and `K = 0`; the statement reduces to `δ_m(A) ≥ Φ(a + r)`, true because `Φ(a) ≤ δ_m(A)` forces `m ∈ A`.

### 8.2 The Minkowski-content form

Prove that for every Borel `A ⊆ E`, `liminf_{r ↓ 0} (γ(Metric.cthickening r A) − γ(A))/r ≥ I(γ(A))` (Ledoux1999 equations (1.3)–(1.4), line 207–219). A route: §8.1 with `a = Φ⁻¹(γ(A))` when `0 < γ(A) < 1`, since `(Φ(a + r) − Φ(a))/r → φ(a)`; the other cases are trivial. *Needs:* §8.1.

**Checks.**

- For `{x_1 < a}` the limit is `φ(a) = I(Φ(a))`.
- For `ball(0, 1) ⊂ ℝ²` the derivative of `1 − e^{−(1 + r)²/2}` at `0` is `e^{−1/2} = 0.606531 ≥ 0.384633`.
- For the null set `ℚ²` the closed thickenings have measure `1`, so the quotient is `1/r → ∞`: the Minkowski content, unlike perimeter, sees null sets.

### 8.3 Subgraph sets and Bobkov's inequality

For a continuous `f : E → [0, 1]`, define its subgraph set `A_f = {(x, y) : Φ(y) < f(x)}` in the inner product space `E × ℝ` with the `L²` product norm, of dimension `n + 1`. Prove that `γ_{E×ℝ}(A_f) = ∫ f dγ_E`; that if `f` is locally Lipschitz, the frontier of `A_f` is the graph of `Φ⁻¹ ∘ f` over the open set `{0 < f < 1}` and `γ_{E×ℝ}^{n}(frontier A_f) = ∫ √(I(f)² + ‖∇f‖²) dγ_E`. Prove Bobkov's inequality: for every locally Lipschitz `f : E → [0, 1]`, `I(∫ f dγ) ≤ ∫ √(I(f)² + ‖∇f‖²) dγ`, with equality for the constants and for `f(x) = Φ(α⟨x, ν⟩ + β)`, `α, β` real and `ν` a unit vector. Conversely, if Bobkov's inequality holds for every Lipschitz `f : E → [0, 1]`, then the Minkowski-content inequality of §8.2 holds for every closed `A` (Bobkov1997 Theorem 1.1, cited by locator; Ledoux1999 inequality (1.11) and its equivalence with (1.4), line 296–313; CianchiFuscoMaggiPratelli2011 equations (4.13) and (4.6), line 656–720 and 597–601, for the computation on subgraphs; CarlenKerce2001 Theorem 1, cited by locator). A route: the measure by §1.3 and Fubini; the frontier by continuity of `f`; the area formula for the locally Lipschitz graph map `x ↦ (x, Φ⁻¹(f(x)))` on `{0 < f < 1}`, whose Jacobian `√(1 + ‖∇f‖²/I(f)²)` multiplied by the density `e^{−W_E}(x) φ(Φ⁻¹(f(x)))` gives the integrand; then §2.3 and §7.3 in `E × ℝ`. For the converse apply the inequality to `f_r = max(0, 1 − d_A/r)`: `∫ f_r dγ → γ(A)`, `∫ I(f_r) dγ → 0`, and `∫ ‖∇f_r‖ dγ ≤ (γ(Metric.cthickening r A) − γ(A))/r`. *Needs:* §1.1, §1.3, §2.3, §7.3; GeometricMeasureTheory G2 (area formula, graph surface measure); Mathlib `LipschitzWith.ae_differentiableAt`, `Metric.cthickening`.

- `A_f` is open, `A_{f′} ⊆ A_f` when `f′ ≤ f`, `A_0 = ∅` and `A_1 = E × ℝ`.
- For `f` constant `c`, `A_f = E × (−∞, Φ⁻¹(c))`, a half-space when `0 < c < 1`.
- `A_f` is the Gaussian symmetral of §6.1 of any set whose sections over `E` have measures `f`.

**Checks.**

- `f(x) = Φ(x)` on `ℝ`: `∫ f dγ = 1/2`, `I(1/2) = 0.398942`, and `∫ √2 φ(x)² dx = 0.398942`; for `Φ(2x)` the right side is again `0.398942`: `A_f` is a half-plane in both cases.
- `f(x) = min(x², 1)` on `ℝ`: `∫ f dγ = 0.516059`, `I(0.516059) = 0.398619`, and the right side is `0.647406`.
- For constant `c` both sides equal `I(c)`; omitting `I(f)²` under the root makes the right side `0` and the inequality false.

### 8.4 Concentration of Lipschitz functions

Prove that for `L ≥ 0`, an `L`-Lipschitz `f : E → ℝ` and a real `m` with `γ({f ≤ m}) ≥ 1/2`, `γ({f > m + Lr}) ≤ 1 − Φ(r) ≤ ½ e^{−r²/2}` for every `r ≥ 0`; if moreover `γ({f ≥ m}) ≥ 1/2`, then `γ({|f − m| > Lr}) ≤ 2(1 − Φ(r))` (Ledoux1993 inequality (10), line 257–262; Ledoux1999 inequality (1.6), line 225–226, which states the bound `1 − Φ(r)` and the tail `e^{−r²/2}` without the factor `½`, supplied by §1.2). A route: `{f ≤ m}` is closed and nonempty, its closed `r`-thickening lies in `{f ≤ m + Lr}` because nearest points exist in `E`, and §8.1 with `a = 0` and §1.2 conclude. *Needs:* §1.2, §8.1.

**Checks.**

- `f(x) = x_1`, `m = 0`, `L = 1`: `γ({f > r}) = 1 − Φ(r)`, an equality; at `r = 2`, `0.022750 ≤ 0.067668`.
- For `f` constant `m` and `r = 0` the non-strict set `{f ≥ m}` has measure `1 > 1/2 = 1 − Φ(0)`; the strict inequality in `{f > m + Lr}` is needed at `r = 0`.
- `f(x) = |x_1|` has median `Φ⁻¹(3/4) = 0.674490` and mean `0.797885`; the theorem concerns the median, RandomMatrices 2.2's Herbst bound the mean.
- `L = 0`: `f` is a constant `c`, `γ({f ≤ m}) ≥ 1/2` forces `c ≤ m`, so `{f > m}` is empty and the first bound holds; with also `γ({f ≥ m}) ≥ 1/2`, `c = m` and `{|f − m| > 0}` is empty. §8.5 with `S = 0` uses exactly this case; a version requiring `L > 0` would not cover it.

### 8.5 Maxima of Gaussian vectors

Prove that for a nonempty finite type `ι`, a positive semidefinite `S`, `σ = max_i √(S_ii)` and a real `m` with `γ_{0,S}({x : max_i x_i ≤ m}) ≥ 1/2`, `γ_{0,S}({x : max_i x_i > m + σr}) ≤ 1 − Φ(r)` for every `r ≥ 0` (Ledoux1999 inequality (1.8), line 252–271). A route: `x ↦ max_i (K x)_i` with `K = CFC.sqrt S` is `σ`-Lipschitz because the `i`-th row of `K` has norm `√(S_ii)`; apply §8.4 to `γ`. *Needs:* §8.4; Mathlib `ProbabilityTheory.multivariateGaussian`.

**Checks.**

- One coordinate with `S = (1)`: the maximum is standard normal with median `0`, and the bound is an equality.
- Two independent standard normals: `σ = 1`, the median of the maximum is `Φ⁻¹(√(1/2)) = 0.544952`, and `P(max > 2.544952) = 1 − Φ(2.544952)² = 0.010899 ≤ 1 − Φ(2) = 0.022750`.
- `S = 0`: the maximum is `0`, every median is `≥ 0`, and the bound holds with `σ = 0`.

### Examples

Under `γ` in `ℝ²` the unit disc has measure `0.393469`; its closed `1`-thickening has measure `0.864665`, above the half-space value `0.767217`.

### Dependencies

Layers 1, 2 and 7; GeometricMeasureTheory G2; Mathlib thickenings and monotone differentiation.

## Layer 9: Gaussian symmetrisation of closed sets and Ehrhard's inequality

### 9.1 Closed symmetrals

For `F` and `u` as in §6.1 and a closed set `C ⊆ E`, define the closed symmetral `S̄_{F,u}(C) = {x + y : x ∈ F^⊥, y ∈ F, Φ(⟨y, u⟩) ≤ v_C(x)}`, with `v_C(x) = γ_F(C_x)` (Ehrhard1983 Définition 1.1, line 117–129, in the mirrored sublevel convention).

- For closed `C`, `x ↦ v_C(x)` is upper semicontinuous; for open `O`, `x ↦ v_O(x)` is lower semicontinuous. Hence `S̄_{F,u}(C)` is closed and `S_{F,u}(O)` is open.
- `γ(S̄_{F,u}(C)) = γ(C)`, and `S_{F,u}(C) ⊆ S̄_{F,u}(C)` with a null difference; `S̄_{F,u}` is monotone.
- `S_{F,u}(E ∖ C) = E ∖ S̄_{F,−u}(C)` (Ehrhard1983 Proposition 1.2, line 134–140).
- `S_{F,u}(⋃_j O_j) = ⋃_j S_{F,u}(O_j)` for increasing open `O_j`, and `S̄_{F,u}(⋂_j C_j) = ⋂_j S̄_{F,u}(C_j)` for decreasing closed `C_j`.
- If `F_1 ∩ F_2 = ℝ u` and the orthogonal complements of `ℝ u` in `F_1` and `F_2` are orthogonal, then `S̄_{F_2,u} ∘ S̄_{F_1,u} = S̄_{F_1 + F_2, u}` on closed sets (Ehrhard1983 Lemme 2.2 and Corollaire 2.3, line 329–355).

A route: Fatou's lemma on sections gives the semicontinuity; the composition law follows from Fubini along `F_1 + F_2 = F_1 ⊕ (F_2 ⊖ ℝu)` and the fact that after the first step every `F_1`-section is a sublevel half-space in direction `u`. *Needs:* §1.3, §6.1.

**Checks.**

- `C = closedBall(0, 1) ⊂ ℝ²`, `F = ℝ²`: `S̄_{F,u}(C) = {⟨y, u⟩ ≤ −0.270289}`, a closed half-plane of measure `0.393469`; the strict rule gives the open half-plane, which is not closed.
- In `ℝ³`, `closedBall(0, 1)` has measure `0.198748`; the composite `S̄_{span(e_2, e_3), e_3} ∘ S̄_{span(e_1, e_3), e_3}` and `S̄_{ℝ³, e_3}` both give `{x_3 ≤ −0.846102}`.
- The closed half-space `{⟨x, u⟩ ≤ a}` is fixed by `S̄_{F,u}`, while `S̄_{F,−u}` sends it to the different half-space `{⟨x, u⟩ ≥ −a}` of the same measure `Φ(a)`: the direction `u` is part of the data.

### 9.2 One-dimensional symmetrisation of convex sets

Prove that `g(a, b) = Φ⁻¹(Φ(b) − Φ(a))` is concave on `{(a, b) ∈ ℝ² : a < b}`, with `g(a, b) → b` as `a → −∞` and `g(a, b) → −a` as `b → ∞`; and that for every unit vector `e` and every closed convex `C ⊆ E`, `S̄_{ℝe, e}(C)` is closed and convex (Ehrhard1983 Lemme 3.3, line 410–438, and Théorème 3.1 for one-dimensional symmetrisations, line 377–439). A route: the sections of `C` along `e` are closed segments or half-lines whose endpoints depend convexly and concavely on the base point; the symmetral replaces the segment `[a, b]` by `(−∞, g(a, b)]`, and `g` is increasing in `b`, decreasing in `a` and concave. *Needs:* §1.1, §9.1.

**Checks.**

- Second differences of `g` at `(−1, 1)`: `∂²_a g = ∂²_b g = −0.459910` and the Hessian determinant is `0.163502 > 0`; at `(0, 2)`, `(−3, −0.5)` and `(0.5, 0.6)` the Hessian is also negative definite (determinants `0.015519`, `0.000142`, `15.273135`).
- `g(−a, a) = Φ⁻¹(2Φ(a) − 1)`, so `g(−1, 1) = Φ⁻¹(0.682689) = 0.475231`.
- `(a, b) ↦ Φ(b) − Φ(a)` itself is not concave (it is convex in `b` for `b < 0`); the transformation by `Φ⁻¹` is what makes concavity hold.

### 9.3 The planar approximation theorem

Let `F` be a `2`-dimensional subspace and `u_0, u_1 ∈ F` orthonormal, and let `u_j` for `j ≥ 2` be the unit vector of `F` orthogonal to `u_{j−1} + u_0` with `⟨u_j, u_0⟩ < 0`; set `f_j = S̄_{ℝu_j, −u_j} ∘ ⋯ ∘ S̄_{ℝu_0, −u_0}`, which in the mirrored convention sends sections to superlevel half-lines as in Ehrhard's paper. Prove that `f_j(C) + ℝ_+ u_0 + ℝ_+ u_j ⊆ f_j(C)` for every closed `C` and every `j`; that for every `ε ∈ (0, 1/2)` there is `R(ε)` such that for every closed `C ⊆ F` with `γ_F(C) ∈ [ε, 1 − ε]` and every `R > R(ε)`, `f_j(C) ∩ closedBall(0, R)` converges in the Hausdorff metric to `S̄_{F, −u_1}(C) ∩ closedBall(0, R)`, uniformly in `C`; and that consequently, for every `2`-dimensional `F`, unit `u ∈ F` and closed convex `C ⊆ E`, `S̄_{F,u}(C)` is convex (Ehrhard1983 Exemple 1.4, Proposition 1.5 and Théorème 1.6, line 212–295, and the case of two-dimensional symmetrisations in the proof of Théorème 3.1, line 440–457). A route: the cone inclusion by induction on `j` from the one-dimensional case of §8.1 applied along each line in direction `u_{j+1}`; the convergence from the cone inclusions, since the cones `ℝ_+ u_0 + ℝ_+ u_j` increase to a half-plane; convexity from §9.2 applied to each `f_j(C)`: for bounded closed convex `C`, replace `C` by `C + D_r` with `D_r` the closed disc of radius `r > 0` in `F`, so that all nonempty `F`-sections have measures in some `[ε, 1 − ε]`, pass to the limit, which preserves convexity, and let `r ↓ 0` by outer continuity; for unbounded `C`, `S̄_{F,u}(C)` is the closure of the increasing union of the convex sets `S̄_{F,u}(C ∩ closedBall(0, R))`. *Needs:* §8.1 for `n = 1`, §9.1, §9.2.

**Checks.**

- The directions are `u_1` at `90°` from `u_0`, `u_2` at `135°`, `u_3` at `157.5°`, increasing to `180°`; the cones `ℝ_+ u_0 + ℝ_+ u_j` increase to the half-plane `{⟨x, u_1⟩ ≥ 0}`.
- A half-plane `{⟨x, u_1⟩ ≥ c}` is fixed by every `f_j` and equals its limit.
- For `C = closedBall(0, 1) ⊂ F = ℝ²` the limit is the closed half-plane `{⟨x, u_1⟩ ≥ 0.270289}`, of measure `0.393469`.

### 9.4 Convexity of closed symmetrals in every dimension

Prove that for every subspace `F` of dimension `k ≥ 1`, unit vector `u ∈ F` and closed convex `C ⊆ E`, `S̄_{F,u}(C)` is convex (Ehrhard1983 Théorème 3.1, line 367–369). A route: `k = 1` is §9.2 and `k = 2` is §9.3; for `k ≥ 3` choose subspaces `F_1, …, F_{k−1}` of dimension `2` containing `u` whose orthogonal complements of `ℝ u` are mutually orthogonal and span `F ⊖ ℝu`, and write `S̄_{F,u}` as the composite of the `S̄_{F_i,u}` by the composition law of §9.1 (Ehrhard1983 Corollaire 2.3, line 350–355). *Needs:* §9.1, §9.2, §9.3.

**Checks.**

- `C = closedBall(0, 1) ⊂ ℝ³`, `F = ℝ³`: the symmetral `{x_3 ≤ −0.846102}` is convex, and the two-step composite of §9.1 gives the same set.
- Two disjoint closed discs in `ℝ²` with `F = ℝ²` have a half-plane as symmetral: convexity of the symmetral does not imply convexity of the set.

### 9.5 Ehrhard's inequality for convex sets

Prove that for nonempty convex `A, B ⊆ E`, `λ ∈ [0, 1]` and reals `a, b` with `Φ(a) ≤ γ(A)` and `Φ(b) ≤ γ(B)`, `γ(λA + (1 − λ)B) ≥ Φ(λa + (1 − λ)b)`; the set `λA + (1 − λ)B` is convex, hence null-measurable. Equivalently, when all three measures lie in `(0, 1)`, `Φ⁻¹(γ(λA + (1 − λ)B)) ≥ λ Φ⁻¹(γ(A)) + (1 − λ) Φ⁻¹(γ(B))` (Ehrhard1983 Théorème 3.2, line 374–376, with its proof at line 458–469; Bogachev1998 Chapter 4, cited by locator). A route: for compact convex `A, B`, the convex hull `C` of `A × {0} ∪ B × {1}` in `E × ℝ` has slices `C_t = (1 − t)A + tB` for `t ∈ [0, 1]`; by §9.4 the closed symmetral of `C` along `E × {0}` in a direction of `E` is convex, which says that `t ↦ Φ⁻¹(γ(C_t))` is concave. In general, if `γ(A) = 0` or `γ(B) = 0` the hypothesis cannot hold for real `a` or `b`; otherwise `A` and `B` have nonempty interiors and null frontiers, and compact convex exhaustions of the interiors conclude. *Needs:* §1.3, §9.4; Mathlib `Convex.nullMeasurableSet`.

**Checks.**

- In `ℝ`, `A = [−1, 1]`, `B = [−3, 3]`, `λ = 1/2`: `Φ⁻¹(γ([−2, 2])) = 1.690143 ≥ ½(0.475231) + ½(2.782175) = 1.628703`.
- For half-spaces `{x_1 ≤ a}`, `{x_1 ≤ b}` the inequality is an equality.
- Gaussian Brunn–Minkowski: since `Φ` is log-concave, the theorem implies `γ(λA + (1 − λ)B) ≥ γ(A)^λ γ(B)^{1−λ}`, the bound that Isoperimetry I1's Prékopa–Leindler gives for the log-concave density of `γ`; in the example, `γ([−2, 2]) = 0.954500 ≥ Φ(1.628703) = 0.948312 ≥ (0.682689 · 0.997300)^{1/2} = 0.825134`, so Ehrhard's bound is the stronger one.
- Writing `A + r · closedBall(0, 1) = λ(A/λ) + (1 − λ)(r/(1 − λ)) · closedBall(0, 1)` and letting `λ → 1` recovers Borell's inequality of §8.1 for convex `A`. In `ℝ` with `A = [−1, 1]`, `r = 1`, `λ = 0.9`, the right side is `0.9 · Φ⁻¹(0.733479) + 0.1 · Φ⁻¹(1 − 1.524 · 10^{−23}) = 0.561033 + 0.993113 = 1.554146`, below `Φ⁻¹(γ([−2, 2])) = 1.690143`, and the limit `λ → 1` is `Φ⁻¹(γ([−1, 1])) + 1 = 1.475231`.

### Examples

In `ℝ³` the closed unit ball, of Gaussian measure `0.198748`, symmetrises to the closed half-space `{x_3 ≤ −0.846102}`, by one three-dimensional symmetral or by two two-dimensional ones.

### Dependencies

Layers 1, 6 and 8 (the latter only on the line); Mathlib convexity.

## Downstream consumers

- A proposed Part II of this roadmap proving the Gaussian double- and multi-bubble theorems: it consumes the clusters, interfaces, existence theorem and interface quadratic form of Layer 3, the model profile and its differential identities of Layer 4, and the two-cell case of §7.4 as the base of the induction on `q`.
- RandomMatrices 2.2 and BanachSpaceTheory's concentration estimates for Dvoretzky's theorem are on the main branch and build their concentration by other routes; §§8.4–8.5 give the sharp median-centred constants and are available to roadmaps later in the merge order.

## Motivation for a future roadmap: the Gaussian multi-bubble theorem

With the definitions of Layers 3–4 the Gaussian multi-bubble theorem of Milman and Neeman is expressible without further data: for `n ≥ 1`, `2 ≤ q ≤ n + 1` and every `v ∈ Δ^{(q−1)}`, `I^{(q−1)}(v) = I_m^{(q−1)}(v)`, and for `v ∈ int Δ^{(q−1)}` every minimizing `q`-cluster is equivalent to a simplicial cluster (MilmanNeeman2022 Theorems 1.1–1.2, line 98–102, and Section 11, line 2606–2640). This roadmap proves the case `q = 2` (§7.4) and the inequality `I^{(q−1)} ≤ I_m^{(q−1)}` (§4.7). The reverse inequality for `q ≥ 3` needs the regularity of minimizing clusters (Milman–Neeman Theorem 4.1 (ii)–(v), line 923–931, resting on Almgren's theory and the singular-set theorems of Taylor, White and Colombo–Edelen–Spolaor), curvature integrability near quadruple points, and the second-variation formula and inward fields of Milman–Neeman Sections 5–10; no roadmap plans that regularity theory, and a Part II needs it as a supplier.

## References

- [MilmanNeeman2022] Emanuel Milman and Joe Neeman, *The Gaussian double-bubble and multi-bubble conjectures*, Annals of Mathematics 195 (2022), 89–206; arXiv:1805.10961v3. Sections 1–4 and 11.
- [CianchiFuscoMaggiPratelli2011] Andrea Cianchi, Nicola Fusco, Francesco Maggi and Aldo Pratelli, *On the isoperimetric deficit in Gauss space*, American Journal of Mathematics 133 (2011), 131–186. Sections 2–4.
- [Ehrhard1983] Antoine Ehrhard, *Symétrisation dans l'espace de Gauss*, Mathematica Scandinavica 53 (1983), 281–301. Sections 1–3.
- [Borell1975] Christer Borell, *The Brunn–Minkowski inequality in Gauss space*, Inventiones Mathematicae 30 (1975), 207–216. Theorem 3.1.
- [SudakovTsirelson1974] V. N. Sudakov and B. S. Tsirel'son, *Extremal properties of half-spaces for spherically invariant measures*, Zapiski Nauchnykh Seminarov LOMI 41 (1974), 14–24. Theorem 1, cited by locator.
- [Ledoux1993] Michel Ledoux, *Inégalités isopérimétriques en analyse et probabilités*, Séminaire Bourbaki exposé 773, Astérisque 216 (1993), 343–375. Théorème 3 and inequality (10).
- [Ledoux1999] Michel Ledoux, *Concentration of measure and logarithmic Sobolev inequalities*, Séminaire de Probabilités XXXIII, Lecture Notes in Mathematics 1709 (1999), 120–216. Section 1.2.
- [Bobkov1997] Sergey G. Bobkov, *An isoperimetric inequality on the discrete cube, and an elementary proof of the isoperimetric inequality in Gauss space*, Annals of Probability 25 (1997), 206–214. Theorem 1.1, cited by locator.
- [CarlenKerce2001] Eric A. Carlen and C. Kerce, *On the cases of equality in Bobkov's inequality and Gaussian rearrangement*, Calculus of Variations and PDE 13 (2001), 1–18. Theorem 1, cited by locator.
- [Maggi2012] Francesco Maggi, *Sets of Finite Perimeter and Geometric Variational Problems*, Cambridge University Press (2012). Theorem 15.9, Proposition 12.15, Theorem 12.26, Sections 13.1, 18.1–18.3, Exercise 29.7 and the Part IV synopsis.
- [AmbrosioFuscoPallara2000] Luigi Ambrosio, Nicola Fusco and Diego Pallara, *Functions of Bounded Variation and Free Discontinuity Problems*, Oxford University Press (2000). Theorem 3.108, cited by locator.
- [Bogachev1998] Vladimir I. Bogachev, *Gaussian Measures*, American Mathematical Society (1998). Chapter 4, cited by locator.
- [Ledoux1996] Michel Ledoux, *Isoperimetry and Gaussian analysis*, Lectures on Probability Theory and Statistics (Saint-Flour 1994), Lecture Notes in Mathematics 1648 (1996), 165–294. Chapter 1, background for Layers 7–8, cited by locator.
