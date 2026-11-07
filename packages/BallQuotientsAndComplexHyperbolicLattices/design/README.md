# Roadmap: ball quotients and complex hyperbolic lattices

**Summary.** Build complex hyperbolic n-space for every n ≥ 1 — the unit ball of ℂⁿ with its projective, bounded and Siegel models — and its holomorphic automorphism group G = PU(1,n), together with the invariant Kähler metric, its geodesic and horospherical geometry and the classification of totally geodesic complex submanifolds as sub-balls. On this foundation the roadmap develops lattices Γ ⊂ G of every kind (arithmetic or not, cocompact or not, with or without torsion): their cusps, finite generation and Selberg's lemma; the analytic quotient Γ\𝔹ⁿ as a normal complex space; the toroidal compactification of a neat quotient by abelian varieties; Mok's L²-construction of pluricanonical sections, which makes the minimal compactification S*_Γ a normal projective variety with a finite boundary; a big Picard extension theorem into S*_Γ, which makes holomorphic maps from algebraic varieties algebraic and the algebraic structure of S_Γ unique; the passage from an arithmetic lattice to a Shimura datum, which identifies S*_Γ with the Baily–Borel compactification; and finally totally geodesic subvarieties, Γ-special subvarieties and the algebraic subvarieties of 𝔹ⁿ × S_Γ, so that the theorems of Baldi–Ullmo on non-arithmetic ball quotients (finiteness of maximal totally geodesic subvarieties, Ax–Schanuel) become statements about objects of the library.

Suggested home: `TauCeti/Geometry/ComplexHyperbolic/` for Layers 1–4, `TauCeti/Geometry/ComplexHyperbolic/Lattice/` for Layers 5–7, and `TauCeti/AlgebraicGeometry/BallQuotient/` for Layers 8–12.

## Scope and ownership

This roadmap owns complex hyperbolic geometry in all dimensions n ≥ 1 and the theory of lattices in PU(1,n) and their quotients, in this order: the Hermitian form of signature (1,n), the groups U(1,n), SU(1,n) and PU(1,n) with their topology and a faithful linear representation; the three models of the ball, the Cayley transform, the boundary sphere, boundary stabilisers with their Langlands decomposition, the Heisenberg group and horospherical coordinates; the theorem that PU(1,n) is the full biholomorphism group of the ball (through H. Cartan's linearity theorem); the Kähler form ω = −i∂∂̄ log(1 − |w|²), its uniqueness, completeness, Ricci form, distance formula and the Schwarz–Pick contraction for holomorphic maps between balls; sub-balls, their stabilisers and the classification of totally geodesic complex subvarieties of the ball; the classification of isometries, displacement estimates on horoballs, Zassenhaus neighbourhoods and the Margulis lemma for discrete subgroups of PU(1,n); lattices, their covolume and the cusp structure theorem; finite generation; Selberg's lemma in its eigenvalue form and neat lattices; the analytic quotient; the toroidal and minimal compactifications and their projective algebraicity; the extension theorem and Borel algebraicity for torsion-free lattices; the uniqueness of the algebraic model and of the finite-point normal compactification; the arithmetic bridge; Γ-special and totally geodesic subvarieties; and the algebraic subvarieties of 𝔹ⁿ × S_Γ.

It leaves to named roadmaps:

- **The general lattice notion.** A lattice in a unimodular second-countable locally compact group, uniform lattices and Weil's formula are VonNeumannAlgebras Layer 9, on Mathlib's `MeasureTheory.IsFundamentalDomain` and `MeasureTheory.covolume`. This roadmap specialises them to G and relates covolume to the Riemannian volume of Γ\𝔹ⁿ.
- **The case n = 1 of the Fuchsian picture.** FuchsianOrbifolds Layers 0–4 own PSL(2,ℝ) acting on the upper half-plane, elliptic charts, cusps, q-coordinates and the compactified quotient Riemann surface. Here n = 1 is a special case of every general statement; §§1.6, 7.4 and 9.6 identify the two pictures, and no Fuchsian statement is proved a second time.
- **The arithmetic theory.** Pure Shimura data and their Hermitian components (ShimuraVarieties §§P.1–P.2), finite analytic quotients by finite groups (ShimuraVarieties §P.6), the proper effective arithmetic action and the analytic structure of arithmetic quotients (§§0.4, 1.2), the Baily–Borel compactification (§§2.5–2.7), Borel's extension and algebraicity for torsion-free arithmetic groups (§§3.1–3.3) and quasi-projective finite quotients (§§3.4a, 3.5) are ShimuraVarieties'. Arithmetic subgroups, their finite covolume and the cocompactness criterion are AdelicAlgebraicGroups §3.4. Unitary PEL data of prescribed signature are PELModuli §M5.5 and compact duals are ShimuraData §3.8. This roadmap owns only the passage from an arithmetic lattice in PU(1,n) to a Shimura datum and level (Layer 11) and the comparison of S*_Γ with the Baily–Borel compactification.
- **Complex analytic spaces and GAGA.** The category of complex analytic spaces, scheme analytification and completed stalks (ComplexComparisonPartII §§C−1.1–C−1.2), analytic set geometry and analytic normalization (§C0.6), the weighted L² estimate (§C1.4), Montel and Cartan–Serre finiteness (§C1.6), coherent GAGA (§C1.9), Remmert's theorems, Chow's theorem and algebraicity of maps out of proper schemes (§§C4.1–C4.4).
- **Complex and Kähler differential geometry.** Complex structures and type calculus (ComplexKahlerGeometry K1–K2), analytic germs, analytic subsets, irreducible components, Riemann and Hartogs extension on manifolds (K3), Hermitian holomorphic bundles, canonical bundles and Chern connections (K4), Kähler metrics and the curvature lower bound on (n,k)-forms (K6.0); free holomorphic quotients, open gluing and holomorphic line bundles (ComplexManifolds Milestones 4–7).
- **Riemannian geometry.** Levi-Civita connections, geodesics, exponential maps and Hopf–Rinow (HopfRinow, consumed through RiemannianGeometry), the quotient Riemannian manifold of a free properly discontinuous isometric action, local isometries determined by a one-jet (RiemannianGeometry R4.7), and the second fundamental form of an isometric immersion (RiemannianGeometry R5a). The disc Schwarz–Pick lemma is Completed/ConformalMapping Layer 2.
- **Algebraic geometry.** Strict-SNC compactifications of smooth quasi-projective varieties (AlgebraicModuliForArithmeticGeometry §9.5, through ResolutionOfSingularitiesCharacteristicZero §6.2), normalization (AlgebraicModuliForArithmeticGeometry §5.4 and Mathlib's relative normalization), finite quotients of projective schemes (SchemeAndStackFoundations §1.17).
- **Not in scope, and the consumers' work.** Real totally geodesic submanifolds, the construction of the non-arithmetic lattices of Mostow and Deligne–Mostow (they enter only as Checks), the Hodge-theoretic realisation of S_Γ in a period domain, the finiteness of maximal totally geodesic subvarieties and the Ax–Schanuel theorem themselves (BaldiUllmo2023 line 59 and line 91), superrigidity and Margulis's arithmeticity and commensurability criteria. ArithmeticLocallySymmetricSpaces §ALS.0.5 states properness of the action of G(F_∞)/A_∞ on the symmetric space of a reductive group over a number field, for every subgroup with discrete image, arithmetic or not; transporting it to B would need the identification of B with that symmetric space for a ℚ-form of PU(1,n), which costs more than the direct argument, so §5.2 proves the proper action directly from compactness of K and §1.4.

## Conventions

- **Dimension and form.** n ≥ 1. V = ℂ^{n+1} with coordinates indexed by `Fin 1 ⊕ Fin n`, written z = (z₀, z₁, …, zₙ). The Hermitian form is conjugate-linear in the first slot, as in Mathlib: `⟨z,w⟩ = conj(z₀)w₀ − Σ_{i≥1} conj(zᵢ)wᵢ = zᴴ J w`, with J = `Matrix.indefiniteDiagonal (Fin 1) (Fin n) ℂ` = diag(1, −1, …, −1). Signature (1,n): one positive and n negative directions.
- **Groups.** U(1,n) = {g ∈ GL_{n+1}(ℂ) : gᴴJg = J}; SU(1,n) its determinant-one subgroup; G = PU(1,n) = U(1,n)/U(1), where U(1) is the subgroup of unit scalars, with the quotient topology. Matrices act on column vectors, and the group law is composition: g·h acts as "first h, then g".
- **Three models.** The projective model is 𝔹ⁿ = {[z] ∈ ℙ(V) : ⟨z,z⟩ > 0}, open in Mathlib's `Projectivization ℂ V`. The bounded model is B = {w ∈ ℂⁿ : |w| < 1}, with [z] ↦ w = (z₁/z₀, …, zₙ/z₀). The Siegel model is 𝔖 = {(u,v) ∈ ℂ^{n−1} × ℂ : ρ(u,v) > 0} with ρ(u,v) = Im v − |u|², and the Cayley transform C(w′, wₙ) = (w′/(1 − wₙ), i(1 + wₙ)/(1 − wₙ)) sends B to 𝔖 and the boundary point b₀ = (0, …, 0, 1) to ∞. For n = 1 the u-coordinate is absent and 𝔖 is the upper half-plane.
- **Action on the bounded model.** Writing g = [[a, bᵀ],[c, D]] in blocks of sizes 1 and n, g·w = (c + Dw)/(a + bᵀw). The denominator is nonzero on B for g ∈ U(1,n).
- **The Kähler form and the metric.** On B, ω = −i∂∂̄ log(1 − |w|²). With ComplexKahlerGeometry's convention g(u,v) = ω(u,Jv), ω₀ = iΣ dwⱼ∧dw̄ⱼ and the Riemannian metric at the origin is twice the Euclidean one. The holomorphic sectional curvature is −2, sectional curvatures lie in [−2, −1/2], the Ricci form is −(n+1)ω, and the distance is given by `cosh²(d([z],[w])/√2) = |⟨z,w⟩|²/(⟨z,z⟩⟨w,w⟩)`. Volumes are those of ω^n/n!.
- **Horospherical coordinates.** At ∞ ∈ ∂𝔖: the Heisenberg group N = ℂ^{n−1} × ℝ acts by n_{(a,t)}(u,v) = (u + a, v + 2i⟨a,u⟩ + i|a|² + t), with ⟨a,u⟩ = Σ conj(aⱼ)uⱼ; its group law is (a,t)·(a′,t′) = (a + a′, t + t′ − 2 Im⟨a,a′⟩); the centre Z(N) is the vertical translations T_t(u,v) = (u, v + t). A = {a_s : (u,v) ↦ (su, s²v), s > 0}, M = U(n−1) acting on u. Horoballs at ∞ are H(N) = {ρ > N}. For n = 1, N = Z(N) = ℝ.
- **Neat.** A subgroup Γ ⊆ G is neat when no eigenvalue of Ad(γ) is a nontrivial root of unity, for every γ ∈ Γ, where Ad: G → GL(M_{n+1}(ℂ)) is conjugation by a lift (§1.2). This is the eigenvalue property of WitteMorris2015 Theorem 4.8.4 (line 2972); it is weaker than Borel's "net" condition (WitteMorris2015 line 3002).
- **Algebraic geometry.** Varieties are reduced separated schemes of finite type over ℂ; X^an is ComplexComparisonPartII's `complexSchemeAnalytification`. "Quasi-projective model of Γ\𝔹ⁿ" means a pair (S, φ) of a quasi-projective variety and an isomorphism of complex analytic spaces φ: S^an ≅ Γ\𝔹ⁿ. A compactification by a finite set is a compact space containing the given space as an open dense subset with finite complement.

**Checks.**

- For n = 1 and t ∈ ℝ, h_t = [[cosh t, i sinh t],[−i sinh t, cosh t]] satisfies h_tᴴ J h_t = J (|cosh t|² − |sinh t|² = 1 and cosh t · i sinh t − conj(−i sinh t) · cosh t = 0). It acts by w ↦ (−i sinh t + w cosh t)/(cosh t + i w sinh t), sends 0 to −i tanh t, and d(0, −i tanh t) = √2|t| by the distance formula (|⟨z,w⟩|² = 1 and ⟨w,w⟩ = 1/cosh² t). The transposed convention w ↦ (b + Dw)/(a + cw) would send 0 to +i tanh t.
- The swap S = [[0,1],[1,0]] has SᴴJS = −J: it is not in U(1,1), and it sends the interior point [1:0] (⟨z,z⟩ = 1) to [0:1] (⟨z,z⟩ = −1), outside 𝔹¹. A definition of U(1,n) by "preserves the form up to a nonzero real factor" would admit it.
- At the origin, −log(1 − |w|²) = |w|² + O(|w|⁴), so ω₀ = iΣdwⱼ∧dw̄ⱼ; for n = 1, ω = i dw∧dw̄/(1 − |w|²)², whose Gaussian curvature is −2 (half the curvature −1 metric 4|dw|²/(1 − |w|²)², scaled by 1/2), and Ric(ω) = −2ω = −(n+1)ω.
- ρ(C(w)) = (1 − |w|²)/|1 − wₙ|², so C(0) = (0, i) has ρ = 1, and −log ρ∘C differs from −log(1 − |w|²) by the pluriharmonic function log|1 − wₙ|².
- For n = 2, a = 1, a′ = i: (1,0)·(i,0) = (1 + i, −2) and (i,0)·(1,0) = (1 + i, 2), checked against the formula for n_{(a,t)} on (u,v); the commutator is the vertical translation by −4. A law with + 2 Im⟨a,a′⟩ would fail this computation.
- On the vertical geodesic {u = 0}, the metric is (dx² + dy²)/(2y²) in v = x + iy, so a_s has translation length √2|log s|, and the vertical translation T_t displaces (0, iy) by √2 arcsinh(|t|/(2y)), which tends to 0 as y → ∞.

## Exact supplier contracts

### From Mathlib

The baseline is mathlib commit f6090c7095e1e56b3464c1daba5f24631f1290d2.

- `Matrix.indefiniteDiagonal` (Mathlib/Algebra/Lie/Classical.lean:175), the diagonal matrix with p ones and q minus ones on `p ⊕ q`; used with p = `Fin 1`, q = `Fin n`. Mathlib has no indefinite unitary group: only `Matrix.unitaryGroup` (Mathlib/LinearAlgebra/UnitaryGroup.lean:58), the unitary submonoid of a star ring, used for U(n) and U(n−1).
- `Projectivization` (Mathlib/LinearAlgebra/Projectivization/Basic.lean:48), the type of lines; it carries no topology or complex structure by itself, which §1.3 transports from the affine charts.
- `Complex.UnitDisc` (Mathlib/Analysis/Complex/UnitDisc/Basic.lean:30) and `Complex.dist_le_div_mul_dist_of_mapsTo_ball` (Mathlib/Analysis/Complex/Schwarz.lean:189), the Schwarz lemma for a holomorphic map between discs; it is one-variable.
- `ProperlyDiscontinuousSMul` (Mathlib/Topology/Algebra/ConstMulAction.lean:532), `Subgroup.properlyDiscontinuousSMul_iff` (Mathlib/Topology/Algebra/Group/DiscontinuousSubgroup.lean:24), `Subgroup.properlyDiscontinuousSMul_of_tendsto_cofinite` (Mathlib/Topology/Algebra/Group/Subgroup.lean:155) and `properlyDiscontinuousSMul_iff_properSMul` (Mathlib/Topology/Algebra/ProperAction/CompactlyGenerated.lean:95). Proper discontinuity in Mathlib is the finiteness of {γ : γK ∩ L ≠ ∅} for compact K, L; it implies neither freeness nor finite stabilisers in a non-Hausdorff space, and §5.2 proves both for G-actions.
- `MeasureTheory.IsFundamentalDomain` (Mathlib/MeasureTheory/Group/FundamentalDomain.lean:69), `MeasureTheory.covolume` (same file, line 679), `MeasureTheory.IsFundamentalDomain.covolume_eq_volume` (line 695), and `MeasureTheory.Measure.isMulLeftInvariant_eq_smul_of_innerRegular` (Mathlib/MeasureTheory/Measure/Haar/Unique.lean:889), uniqueness of a left-invariant inner-regular measure up to a scalar on a locally compact group.
- `Subgroup.Commensurable` (Mathlib/GroupTheory/Commensurable.lean:58), `Subgroup.commensurator` (line 141), `MulAction.orbitRel.Quotient` and `MulAction.stabilizer`.
- `AlgebraicGeometry.Scheme.Hom.normalization` (Mathlib/AlgebraicGeometry/Normalization.lean:122), the relative normalization of a qcqs morphism with its integral structure map; the normalization of a reduced variety Z is that of the morphism from the disjoint union of the spectra of its function fields.

### From Tau Ceti

The baseline is Tau Ceti commit 358314d4ab97483df4fc4cb8adcc02e74a8d9f5a.

- `TauCeti.Matrix.isCompact_unitaryGroup` (TauCeti/Topology/Algebra/UnitaryGroup.lean:100) and the `CompactSpace` instance on `Matrix.unitaryGroup n 𝕜` for `RCLike 𝕜` (line 106): compactness of U(n), used for the stabiliser K.
- `TauCeti.completeSpace_ofRiemannianMetric_of_isPretransitive_isom` (TauCeti/Geometry/Manifold/Riemannian/Homogeneous.lean:79): a Riemannian manifold whose isometry group acts transitively has complete Riemannian distance. It is applied to (𝔹ⁿ, ω) after §1.4 and §2.2; it says nothing about curvature.
- `DifferentiableOn.analyticOnNhd_of_finiteDimensional` (TauCeti/Analysis/Complex/CauchyIntegralPolydisc.lean:275): a complex-differentiable function on an open subset of a finite-dimensional complex space is analytic, with the polydisc Cauchy integral in the same file; these give the power-series expansions and Cauchy estimates of §2.1.
- `TauCeti.isLocalDiffeomorph_quotientMk` (TauCeti/Geometry/Manifold/Instances/Quotient.lean:216), local diffeomorphy of the quotient map of a free properly discontinuous action, through ComplexManifolds Milestone 4.
- `MeasureTheory.Measure.exists_isFundamentalDomain_of_properlyDiscontinuousSMul` (TauCeti/MeasureTheory/Group/ProperlyDiscontinuous.lean:100) and `TauCeti.freeLocus` (TauCeti/Topology/Algebra/GroupAction/FreeLocus.lean:36): a countable group acting properly discontinuously on a second-countable locally compact Hausdorff space has a measurable fundamental domain, with pairwise disjoint translates, for every measure under which the complement of the free locus is null. It is applied in §5.3 to a discrete Γ (countable, G being second countable) acting on B, with the measure vol_ω, under which the non-free locus of §5.2 is null.
- `TauCeti.HeisenbergGroup` (TauCeti/GroupTheory/SpecificGroups/Heisenberg.lean:55), the three-dimensional Heisenberg group over a ring; for n = 2 the group N of the Conventions is isomorphic to its real points (§1.5), which fixes the comparison but does not replace N for n ≥ 3.
- The Fuchsian library `TauCeti/Analysis/Complex/Fuchsian/` (proper action, coarse quotient, cusps, compactification) and the disc Schwarz–Pick library `TauCeti/Analysis/Complex/Conformal/SchwarzPick/`, as the implementations of FuchsianOrbifolds and Completed/ConformalMapping consumed below.

### From TauCetiRoadmap.FuchsianOrbifolds

Layer 0 (the effective action of PSL(2,ℝ), discrete subgroups act properly discontinuously with finite stabilisers), Layer 1 (elliptic charts and the coarse quotient Riemann surface), Layer 3 (cusps, precisely invariant horodiscs, q-coordinates, finitely many cusp orbits for cofinite groups) and Layer 4 (the compactified quotient Riemann surface). They are used only through the identifications of §§1.6, 7.4 and 9.6.

### From TauCetiRoadmap.RiemannianGeometry

R4.7: the quotient atlas, descended metric and covering for a free properly discontinuous group of smooth isometries of any Riemannian manifold, with completeness and curvature descending; local isometries of a connected source are determined by value and differential at one point. R5a: the second fundamental form B of an isometric immersion with its Gauss equation; "totally geodesic" means B = 0. Geodesics, exponential maps and Hopf–Rinow are consumed from HopfRinow Layers 0–4 through RiemannianGeometry's supplier contract.

### From TauCetiRoadmap.ConformalMapping (Completed)

Layer 2: Schwarz–Pick for holomorphic self-maps of the disc in contraction and infinitesimal form, and the automorphisms of the disc.

### From TauCetiRoadmap.ComplexKahlerGeometry

K1–K2 (integrable complex structures, ∂, ∂̄ and the type calculus); K3 (convergent germs, reduced analytic subsets, dimension, regular and singular loci, locally finite irreducible components, connectedness of the regular locus of an irreducible analytic subset, finite branched projections to polydiscs, Riemann extension of locally bounded holomorphic functions across nowhere-dense analytic subsets of a manifold and Hartogs extension across codimension two); K4 (holomorphic and Hermitian holomorphic bundles, the canonical bundle Ω^n, Chern connection and curvature); K6.0 (Kähler metrics as Hermitian metrics with closed fundamental form, complex submanifolds inherit Kähler metrics, and the lower bound [iΘ(E),Λ] ≥ ka on (n,k)-forms when iΘ(E) ≥ aω).

### From TauCetiRoadmap.ComplexManifolds

Milestone 4 (free properly discontinuous holomorphic quotients and holomorphic descent of invariant maps), Milestone 5 (compatible open gluing of complex manifolds along `TopCat.GlueData`), Milestone 6 (Hausdorffness and second countability of finite gluings) and Milestone 7 (holomorphic line bundles by cocycle gluing, tensor operations and the canonical bundle).

### From TauCetiRoadmap.VonNeumannAlgebras

Layer 9: a lattice in a unimodular second-countable locally compact group is a discrete subgroup of finite covolume, uniform exactly when the quotient is compact, with Weil's formula for nonnegative measurable functions; it uses Mathlib's fundamental domains and `MeasureTheory.covolume`.

### From TauCetiRoadmap.ComplexComparisonPartII

§C−1.1 (`ComplexAnalyticSpace`, open gluing and closed subspaces; `complexSchemeAnalytification`, its universal property, the classical topology on X(ℂ), finite and proper morphisms going to finite and proper analytic maps; the smooth-chart comparison, by which a smooth variety has a complex manifold as analytification, used in §§10.3–10.4); §C−1.2 (`completedAnalyticStalkComparison`); §C0.6 (`analyticSetGeometry`: irreducible components, regular locus, finite analytic normalization); §C1.4 (`weightedDolbeaultEstimate` on complete Kähler manifolds with smooth weights, with the canonical twist identifying E-valued (0,k)-forms with E ⊗ K⁻¹-valued (n,k)-forms); §C1.6 (Montel's theorem for holomorphic sections and finite-dimensionality of sections on compact spaces); §C1.9 (`projectiveComplexGaga`); §C4.1 (`remmertProperImage`, `remmertSteinExtension`); §C4.2 (`projectiveChowNonreduced`); §C4.4 (`properSourceMorphismAlgebraicity`, `algebraicGraphRegular`).

### From TauCetiRoadmap.ShimuraVarieties

§P.1 (`TauCeti.Shimura.PureDatum` with the axioms SV1–SV3); §P.2 (the complex structure on X and its components as Hermitian symmetric domains with holomorphic action); §P.6 (`TauCeti.Shimura.finite_analytic_quotient`: the quotient of a Hausdorff complex analytic space by a finite holomorphic group action, normality of the quotient of a normal space, and compatibility with finite algebraic quotients); §0.4 (`TauCeti.Shimura.effective_proper_action`); §1.2 (`TauCeti.Shimura.analytic_structure`); §2.7 (`TauCeti.Shimura.baily_borel`: the normal projective minimal compactification of a finite-level arithmetic quotient); §3.3 (`TauCeti.Shimura.unique_algebraization` and its étale-monomorphism argument); §3.4a (`TauCeti.Shimura.quasi_projective_finite_quotient`) and §3.5 (`TauCeti.Shimura.finite_quotient_algebraization`).

### From TauCetiRoadmap.AdelicAlgebraicGroups

§3.4: `Reduction.IsSArithmetic` (arithmetic subgroups and their commensurability class), the Borel–Harish-Chandra criterion `Reduction.arithmetic_finite_volume_iff`, the theorem that S-arithmetic subgroups of a group with no rational characters are lattices, cocompact exactly in the anisotropic case, and `Reduction.levelArithmetic` with discreteness and commensurability of level subgroups.

### From TauCetiRoadmap.PELModuli and TauCetiRoadmap.ShimuraData

PELModuli §M5.5 (`unitaryRationalDatum`, `unitaryDatum_signature`, `unitaryDatum_shimura`: for an imaginary quadratic K and a Hermitian space of signature (1,n), the pure datum with group GU(V)), used for the Picard examples. ShimuraData §3.8 (the compact dual of a Hermitian symmetric domain and the Borel embedding), used in §11.5.

### From TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry and TauCetiRoadmap.SchemeAndStackFoundations

AlgebraicModuliForArithmeticGeometry §9.5 (`sncCompactification_open`, `sncCompactification_boundary`, `sncCompactification_projective`: a smooth projective compactification with strict-SNC boundary of every smooth quasi-projective variety, consumed from ResolutionOfSingularitiesCharacteristicZero §6.2) and §5.4 (normalization, finite over a variety over ℂ). SchemeAndStackFoundations §1.17 (`finiteGroupQuotient_projective`: the quotient of a projective scheme over a Noetherian base by a finite group is projective, with invariant structure sheaf).

### What ComplexComparisonPartII must provide

What ComplexComparisonPartII must provide (gap:normality-analytification): for a variety X over ℂ, X is normal if and only if X^an is normal, X is smooth if X^an is a complex manifold, and the analytification of the normalization of X is the analytic normalization of X^an, compatibly with the structure maps. Supplier section: §C−1.2, after `completedAnalyticStalkComparison`, using §C0.6's analytic normalization; the three statements are one theorem about the completed local rings. The converse direction, that a smooth X has a complex manifold X^an, is §C−1.1's smooth-chart comparison and is not part of the gap. (MilneSVI line 1682 to line 1684 states the nonsingular case for projective varieties; the general input is that a local ring of finite type over ℂ, its analytic local ring and their common completion are simultaneously normal and simultaneously regular.)

**Checks.**

- For the cusp y² = x³ the algebraic and analytic normalizations are both t ↦ (t², t³); the comparison is the identity on t.
- The node xy = 0 is not normal in either category; its normalization is two lines, analytically and algebraically.
- (𝔸¹)^an = ℂ is a complex manifold and 𝔸¹ is smooth, as the direction from X^an to X requires; the dual-number point is not reduced, and the statement is restricted to varieties.

What ComplexComparisonPartII must provide (gap:normal-riemann-extension): on a normal complex analytic space Y, a continuous function on an open subset U that is holomorphic outside a nowhere-dense analytic subset of U is holomorphic on U; consequently a continuous map between normal complex analytic spaces that is holomorphic outside a nowhere-dense analytic subset is holomorphic. Supplier section: §C0.6, with the stalk description of the analytic normalization. (ComplexKahlerGeometry K3 proves the manifold case and explicitly excludes singular ambient spaces.)

**Checks.**

- On the normal surface ℂ²/±1 (the quadric cone), the function induced by x² is continuous and holomorphic off the vertex, hence holomorphic.
- On the cusp y² = x³ (not normal), the function t = y/x is continuous and holomorphic off the origin but is not holomorphic at the origin: normality is needed.
- On a manifold the statement is ComplexKahlerGeometry K3's Riemann extension theorem.

## How to read the build

Layer 1 builds the group, the ball in its three models, the action and the boundary structure. Layer 2 proves that G is the whole biholomorphism group and builds the invariant Kähler metric with its curvature, distance and the Schwarz–Pick contraction. Layer 3 classifies totally geodesic complex subvarieties of the ball as sub-balls. Layer 4 classifies isometries and proves the displacement estimates, the Margulis lemma and the structure of discrete parabolic groups. Layer 5 defines lattices and relates covolume to the volume of Γ\𝔹ⁿ. Layer 6 proves the cusp structure theorem, finite generation, Selberg's lemma and the existence of neat subgroups of finite index. Layer 7 constructs the analytic quotient. Layer 8 builds the toroidal compactification of a neat quotient and the asymptotics of ω at its boundary. Layer 9 proves Mok's projective algebraicity theorem and constructs S*_Γ and S_Γ for every lattice. Layer 10 proves the extension theorem, Borel algebraicity and the uniqueness statements. Layer 11 is the arithmetic bridge. Layer 12 treats totally geodesic subvarieties and the algebraic subvarieties of 𝔹ⁿ × S_Γ. A target's *Needs:* line names the library declarations, supplier sections and earlier subsections its statement and its proof route use, item by item.

## Layer 1: The group PU(1,n) and the ball

### 1.1 The Hermitian form and the indefinite unitary group

Define the Hermitian form of signature (1,n) on V by `⟨z,w⟩ = zᴴ J w` with J = `Matrix.indefiniteDiagonal (Fin 1) (Fin n) ℂ`, and define U(1,n) as the subgroup of invertible matrices g with gᴴJg = J, and SU(1,n) as its determinant-one subgroup (BaldiUllmo2023 line 486 to line 496). *Needs:* Mathlib `Matrix.indefiniteDiagonal`, `Matrix.unitaryGroup`.

- Membership is equivalent to ⟨gz, gw⟩ = ⟨z,w⟩ for all z, w, and, by polarization, to ⟨gz, gz⟩ = ⟨z,z⟩ for all z.
- The inverse of g ∈ U(1,n) is J gᴴ J; g ∈ U(1,n) if and only if gᴴ ∈ U(1,n); |det g| = 1.
- U(1,n) is closed in the matrix space, hence a locally compact second-countable topological group.
- The block-diagonal map (a, D) ↦ diag(a, D) embeds U(1) × U(n) (Mathlib's unitary groups) as the stabiliser of the line ℂe₀; its image is compact (Tau Ceti `TauCeti.Matrix.isCompact_unitaryGroup`).
- The centre of U(1,n) is the group of unit scalars λ·1 with |λ| = 1.

**Checks.**

- h_t = [[cosh t, i sinh t],[−i sinh t, cosh t]] lies in SU(1,1) for every real t; diag(1, −1) lies in U(1,1), has determinant −1, and is not in SU(1,1).
- 2·1 satisfies (2·1)ᴴ J (2·1) = 4J: it preserves the cone ⟨z,z⟩ > 0 and acts trivially on lines, but it is not in U(1,n). A definition by "preserves the positive cone" would admit it.
- The swap S = [[0,1],[1,0]] has SᴴJS = −J and is not in U(1,1); diag(λ, μ) is in U(1,1) exactly when |λ| = |μ| = 1.

### 1.2 PU(1,n), its topology and the conjugation representation

Define G = PU(1,n) as the quotient of U(1,n) by its centre, with the quotient topology, and the conjugation representation Ad: G → GL(M_{n+1}(ℂ)), [g] ↦ (X ↦ gXg⁻¹). Prove that G is a Hausdorff, locally compact, second-countable topological group; that SU(1,n) → G is surjective with kernel the scalars μ_{n+1}·1; that G has trivial centre; that Ad is a continuous injective homomorphism with closed image, and that the eigenvalues of Ad([g]) are the ratios λᵢ/λⱼ of the eigenvalues of g; and that G = K·{g_t}·K (Cartan decomposition) for the one-parameter group g_t = h_t ⊕ 1 and the compact group K of §1.4, so that G is unimodular (BaldiUllmo2023 line 492 to line 496; WitteMorris2015 line 1940 and line 1944 for unimodularity of a group with lattices). *Needs:* §1.1; §1.4 for K and the transitivity used in the Cartan decomposition; Mathlib quotient topological groups.

- Ad is well defined because scalars act trivially by conjugation, and injective because a matrix commuting with every element of U(1,n) is scalar (it commutes with the diagonal torus and with h_t ⊕ 1).
- The modular function of G is trivial: it is trivial on the compact group K and on g_t, since a Weyl element of K conjugates g_t to g_{−t}.
- G is connected (U(1,n) is generated by K and the connected group {g_t}).

**Checks.**

- For n = 1 the kernel of SU(1,1) → G is {±1}, of order 2 = n + 1; for n = 2 it is the cube roots of unity.
- Ad([diag(1, e^{iθ}, 1)]) (n = 2) has eigenvalues 1, 1, 1, 1, 1, e^{iθ}, e^{iθ}, e^{−iθ}, e^{−iθ}; for θ = 2π/3 two of them are nontrivial cube roots of unity, so this element is not neat.
- The image of i·1 in G is the identity, while i·1 ≠ 1 in U(1,n): the passage to PU(1,n) is what makes the action of §1.4 faithful.

### 1.3 The three models of the ball and the Cayley transform

Define the bounded model B as the open unit ball of ℂⁿ (as a complex manifold, an open subset of `EuclideanSpace ℂ (Fin n)`), the projective description ι: B → `Projectivization ℂ V`, w ↦ [1 : w], the Siegel model 𝔖 with its function ρ, the Cayley transform C: B → 𝔖 and the boundary sphere ∂B (BaldiUllmo2023 line 559 to line 565; Mok2012 line 131 to line 137). Prove that ι is a bijection onto {[z] : ⟨z,z⟩ > 0} and extends to a bijection of the closed ball onto {[z] : ⟨z,z⟩ ≥ 0}; that C is a biholomorphism with inverse C⁻¹(u,v) = (2iu/(v + i), (v − i)/(v + i)); that ρ(C(w)) = (1 − |w|²)/|1 − wₙ|²; and that C extends to a homeomorphism from the closed ball onto the closure of 𝔖 in the one-point compactification of ℂⁿ, sending b₀ = (0, …, 0, 1) to ∞. *Needs:* Mathlib `Projectivization`, `Metric.ball`; ComplexKahlerGeometry K1 for biholomorphisms of open subsets of ℂⁿ.

- The three descriptions of a point are related by explicit formulas, and the three descriptions of the boundary by null lines, the unit sphere, and ∂𝔖 ∪ {∞}.
- The open embedding of B into the affine chart z₀ ≠ 0 of ℙⁿ is the restriction of ι; it is used as the Borel embedding in §§11.5 and 12.4.

**Checks.**

- For n = 1, C(w) = i(1 + w)/(1 − w) sends 0, −1, 1 to i, 0, ∞: the classical Cayley transform onto the upper half-plane.
- C(0, 1/2) = (0, 3i), with ρ = 3 = (1 − 1/4)/(1/4), matching the formula for ρ∘C.
- The point (0, 2) outside B goes to (0, −3i), with ρ = −3 < 0: C does not map the outside into 𝔖.

### 1.4 The action, the stabiliser of the origin, and 𝔹ⁿ ≅ G/K

Prove that g·w = (c + Dw)/(a + bᵀw) defines a continuous action of U(1,n) on B that corresponds under ι to [z] ↦ [gz] and factors through a faithful, transitive action of G by biholomorphisms; that the stabiliser K of the origin is the image of U(1) × U(n), compact and isomorphic to U(n) by [diag(a, D)] ↦ a⁻¹D, acting by w ↦ a⁻¹Dw; and that the orbit map G/K → B, gK ↦ g·0, is a G-equivariant homeomorphism (BaldiUllmo2023 line 486 to line 496; Goldman1999 Ch. 3). The section w ↦ g_w with γ = (1 − |w|²)^{−1/2} and g_w = [[γ, γwᴴ],[γw, 1 + (γ − 1)wwᴴ/|w|²]] is continuous on B (the coefficient (γ − 1)/|w|² extends by 1/2 at w = 0), lies in U(1,n), and satisfies g_w·0 = w. *Needs:* §§1.1–1.3; Tau Ceti `TauCeti.Matrix.isCompact_unitaryGroup`; Mathlib `MulAction.stabilizer`.

- The denominator a + bᵀw does not vanish on B: |a|² − |b|² = 1 forces |a| > |b| ≥ |bᵀw|.
- The holomorphic tangent action of K at 0 is the standard representation of U(n) on ℂⁿ, which is irreducible.
- The action extends continuously to the closed ball, by homeomorphisms that preserve ∂B.

**Checks.**

- [diag(e^{iθ}, 1, …, 1)] acts by w ↦ e^{−iθ}w and fixes 0; it is the element of K corresponding to e^{−iθ}·1 ∈ U(n).
- For w = (1/2, 0, …, 0), γ = 2/√3 and g_w·0 = (γ·(1/2))/γ = 1/2 in the first coordinate.
- The scalar i·1 ∈ U(1,n) acts trivially on B, so U(1,n) acts non-faithfully; its image in G is the identity.

### 1.5 The boundary, boundary stabilisers and the Heisenberg group

Define, for b ∈ ∂B, the stabiliser P_b ⊂ G, and at ∞ ∈ ∂𝔖 the subgroups N (Heisenberg translations), its centre Z(N) (vertical translations), A and M of the Conventions, and the horoballs H(N) = {ρ > N}; transport them to every b by an element of G sending b to ∞ (BaldiUllmo2023 line 517 to line 519 and line 559 to line 571; Mok2012 line 138 to line 154). Prove that G acts transitively on ∂B; that P_∞ = M·A·N with unique decomposition; that N and M preserve ρ and a_s multiplies it by s²; that the law of N is (a,t)·(a′,t′) = (a + a′, t + t′ − 2 Im⟨a,a′⟩) with centre and, for n ≥ 2, commutator subgroup Z(N); and that for n = 2 the map (p + iq, t) ↦ (p, q, −t/4 + pq/2) is an isomorphism from N onto the real points of Tau Ceti's `TauCeti.HeisenbergGroup`. *Needs:* §§1.3–1.4; Tau Ceti `TauCeti.HeisenbergGroup`.

- Horoballs at a boundary point are nested, permuted by P_b and well defined independently of the element of G sending b to ∞ up to the A-rescaling of the height.
- N acts simply transitively on each horosphere {ρ = c}, c > 0.

**Checks.**

- The commutator of n_{(1,0)} and n_{(i,0)} (n = 2) is the vertical translation T_{−4}, computed both from the group law and from the formula for n_{(a,t)} on (u,v).
- a_{1/2} conjugates T_1 to T_{1/4} and preserves ∞ and 0 = (0,0); it multiplies ρ by 1/4, so it moves horospheres.
- For n = 1, N = Z(N) = ℝ, the translations v ↦ v + t of the upper half-plane, and M is trivial.

### 1.6 The case n = 1

Prove that conjugation by the Cayley transform is an isomorphism of topological groups PU(1,1) ≅ PSL(2,ℝ) (Mathlib's `Matrix.ProjectiveSpecialLinearGroup (Fin 2) ℝ`), intertwining the action on B¹ with FuchsianOrbifolds Layer 0's action on Mathlib's `UpperHalfPlane`, and that ω on B¹ corresponds to the metric (dx² + dy²)/(2y²), half of the curvature −1 metric, so that ω-areas are half the hyperbolic areas of FuchsianOrbifolds Layer 2 (Mok2012 line 19 to line 26 for the classical case). *Needs:* §§1.2–1.4, §2.2; FuchsianOrbifolds Layer 0.

**Checks.**

- C sends the stabiliser K of 0 onto the stabiliser PSO(2) of i.
- The ω-volume of the modular surface is π/6, half of the hyperbolic area π/3.
- Under C, the parabolic subgroup N at b₀ corresponds to the translations z ↦ z + t, and A to the dilations z ↦ s²z.

### Examples

For n = 1 every statement reduces to the disc and PSL(2,ℝ) of FuchsianOrbifolds. For n = 2, K = U(2), N is three-dimensional and P_∞ has dimension 1 + 1 + 3 = 5 inside the eight-dimensional G. The elements h_t ⊕ 1, [diag(1, e^{iθ}, 1)], T_t, n_{(a,0)}, the screw parabolic m·T_t with m a nontrivial rotation of the u-coordinate, and a_s are the standard test elements of Layers 3–6.

### Dependencies

Mathlib matrix groups, `Projectivization` and quotient topological groups; Tau Ceti `TauCeti.Matrix.isCompact_unitaryGroup` and `TauCeti.HeisenbergGroup`; ComplexKahlerGeometry K1; FuchsianOrbifolds Layer 0 for §1.6.

## Layer 2: Biholomorphisms and the invariant Kähler metric

### 2.1 Cartan's theorem and the biholomorphism group

Prove H. Cartan's uniqueness theorem: if Ω ⊂ ℂⁿ is a bounded domain, p ∈ Ω and f: Ω → Ω is holomorphic with f(p) = p and Df(p) = id, then f = id; deduce that a biholomorphism of B fixing 0 is a unitary linear map, and that every biholomorphism of B is the action of a unique element of G, so that G → Aut(B) is an isomorphism of groups (Goldman1999 Ch. 3, uncertified; BaldiUllmo2023 line 35 to line 36). The proof expands f at p, takes the first non-linear homogeneous term P_k, notes that the j-th iterate is z + jP_k(z) + higher order terms, and applies the Cauchy estimates on a polydisc to the uniformly bounded iterates; for f fixing 0, the map f⁻¹ ∘ (e^{−iθ}·) ∘ f ∘ (e^{iθ}·) fixes 0 with derivative the identity, so f commutes with rotations and is linear; a linear map preserving B preserves the Euclidean norm. *Needs:* Tau Ceti `DifferentiableOn.analyticOnNhd_of_finiteDimensional` and the polydisc Cauchy integral; §1.4 (transitivity and K).

**Checks.**

- For n = 1 the conclusion is Completed/ConformalMapping Layer 2's description of the automorphisms of the disc; the Möbius map w ↦ (w − 1/2)/(1 − w/2) is h_t·w for tanh t = −1/2.
- The holomorphic self-map w ↦ w/2 of B fixes 0 with derivative 1/2 ≠ 1 and is not a biholomorphism: Cartan's hypothesis Df(p) = id cannot be weakened to invertibility.
- On the unbounded domain ℂ, z ↦ z + z² fixes 0 with derivative 1 and is not the identity: boundedness is needed.

### 2.2 The Kähler form ω

Define ω = −i∂∂̄ log(1 − |w|²) on B, a real (1,1)-form in ComplexKahlerGeometry's form carrier. Prove that its coefficients are h_{jk̄} = δ_{jk}/(1 − |w|²) + w̄ⱼw_k/(1 − |w|²)², that det(h) = (1 − |w|²)^{−(n+1)}, that ω is closed and positive, hence a Kähler metric (K6.0), and that it is G-invariant: for g ∈ U(1,n), 1 − |g·w|² = (1 − |w|²)/|a + bᵀw|², whose logarithm differs from log(1 − |w|²) by a pluriharmonic function. Prove that C pulls back i∂∂̄(−log ρ) to ω, that the volume form is ω^n/n! = 2^n (1 − |w|²)^{−(n+1)} times Lebesgue measure, and that ω restricted to the standard sub-ball 𝔹ᵐ is the form of 𝔹ᵐ (Mok2012 line 249 to line 254, the Siegel form; BaldiUllmo2023 line 586 to line 597). *Needs:* ComplexKahlerGeometry K1–K2 (∂, ∂̄ on forms) and K6.0 (Kähler metrics); §§1.3–1.4.

- Invariance under G, the transformation law of 1 − |w|², and the restriction to sub-balls.
- The Siegel-model expression i∂∂̄(−log ρ), invariant under N, M and A.
- The volume density and its Siegel form, proportional to ρ^{−(n+1)} times Lebesgue measure in the coordinates (u, Re v, ρ).

**Checks.**

- For n = 1, ω = i dw∧dw̄/(1 − |w|²)² = 2 dx∧dy/(1 − |w|²)², of total density 2 at the origin.
- For h_t at w = 0: 1 − tanh² t = 1/cosh² t = (1 − 0)/|cosh t|², the transformation law.
- The Euclidean form iΣdwⱼ∧dw̄ⱼ is not invariant: h_t has derivative 1/cosh² t at 0 in the first coordinate. The positively curved potential log(1 + |w|²) is not invariant either.

### 2.3 Uniqueness, Ricci form and curvature

Prove that every G-invariant Kähler form on B is cω for a constant c > 0; that the Ricci form of ω is −(n+1)ω; and that the holomorphic sectional curvature of ω is −2 at every point and in every direction, with sectional curvatures in [−2, −1/2] (Goldman1999 Ch. 3, uncertified; Mok2012 line 515 to line 516 for complete Kähler–Einstein metrics of negative curvature). An invariant form is determined by its value at 0, which is a K-invariant positive Hermitian form on ℂⁿ, hence a positive multiple of the standard one by irreducibility of the standard representation of U(n); the Ricci form is −i∂∂̄ log det(h). *Needs:* §§1.4, 2.2; ComplexKahlerGeometry K4 (Chern curvature of the canonical bundle) and K6.0.

**Checks.**

- For n = 1 the Gaussian curvature is −2 and Ric = −2ω.
- The potential −2 log(1 − |w|²) gives 2ω, also invariant: invariance does not fix c.
- For n = 2, the Hermitian form i dw₁∧dw̄₁ + 2i dw₂∧dw̄₂ at 0 is not invariant under the coordinate swap in K, so it has no G-invariant extension.

### 2.4 Distance, geodesics and completeness

Prove that the Riemannian distance of ω satisfies cosh²(d([z],[w])/√2) = |⟨z,w⟩|²/(⟨z,z⟩⟨w,w⟩); that the unit-speed geodesics through 0 are s ↦ tanh(s/√2)·v for unit vectors v; that (B, d) is complete; and that the holomorphic isometries of (B, ω) are exactly the elements of G (Goldman1999 Ch. 3, uncertified). Completeness follows from transitivity of the isometric action (Tau Ceti `TauCeti.completeSpace_ofRiemannianMetric_of_isPretransitive_isom`); the distance formula from invariance and its value on a diameter. *Needs:* §§2.1–2.2; Tau Ceti `TauCeti.completeSpace_ofRiemannianMetric_of_isPretransitive_isom`; RiemannianGeometry's supplier contract with HopfRinow (geodesics, distance).

**Checks.**

- d(0, tanh t·e₁) = √2|t|, and the right side of the formula is cosh² t.
- The right side is unchanged under g ∈ U(1,n), since ⟨gz,gw⟩ = ⟨z,w⟩.
- d(0, w) → ∞ as |w| → 1, so no Cauchy sequence escapes to the boundary.

### 2.5 The Schwarz–Pick contraction between balls

Prove that for m, n ≥ 1 every holomorphic map f: Bᵐ → Bⁿ satisfies f*g_{Bⁿ} ≤ g_{Bᵐ} as quadratic forms on tangent vectors, hence d(f(x), f(y)) ≤ d(x,y) (Kiernan1972 line 64 to line 65 for the corresponding property of the Kobayashi distance; Goldman1999 Ch. 3, uncertified). By transitivity reduce to x = 0 = f(0); for a unit tangent vector X at 0 and the unit vector v along Df(0)X, the function ζ ↦ ⟨v, f(ζX)⟩ maps the disc to the disc and fixes 0, so |Df(0)X| ≤ 1 by the Schwarz lemma, and both metrics are twice the Euclidean metric at 0. *Needs:* §§1.4, 2.2; Mathlib `Complex.dist_le_div_mul_dist_of_mapsTo_ball`; Completed/ConformalMapping Layer 2.

**Checks.**

- f(ζ) = (ζ, 0) and f(ζ) = (ζ, ζ)/√2 are isometric at 0 (|Df(0)·1| = 1).
- f(ζ) = (ζ/2, ζ/2) has |Df(0)·1| = 1/√2 < 1, a strict contraction.
- ζ ↦ 2ζ does not map B¹ into B¹, and would expand the metric at 0 by 2.

### Examples

On B¹, ω is the curvature −2 Poincaré metric and §2.1 is the classification of disc automorphisms. On B², the complex line {w₂ = 0} and the real plane {Im w₁ = Im w₂ = 0} are both totally geodesic; on the first the curvature is −2, on the second −1/2. The horoballs H(N) of the Siegel model have finite volume modulo any lattice in N.

### Dependencies

Layer 1; Mathlib's Schwarz lemma; Tau Ceti's polydisc Cauchy integral and homogeneous completeness theorem; ComplexKahlerGeometry K1–K2, K4, K6.0; Completed/ConformalMapping Layer 2; RiemannianGeometry's HopfRinow contract.

## Layer 3: Sub-balls and totally geodesic subvarieties of the ball

### 3.1 Sub-balls and their stabilisers

Define, for a complex subspace W ⊂ V of dimension m + 1 on which the form has signature (1,m), m ≥ 0, the sub-ball 𝔹(W) = {[z] ∈ 𝔹ⁿ : z ∈ W}, and its stabiliser H_W = {g ∈ G : gW = W}; the standard sub-ball is 𝔹ᵐ = {w_{m+1} = … = wₙ = 0} (BaldiUllmo2023 line 496 to line 506). Prove that W ↦ 𝔹(W) is a bijection from such subspaces onto sub-balls; that in the bounded model the sub-balls are exactly the nonempty intersections of B with complex affine subspaces; that G acts transitively on sub-balls of each dimension; that H_W is the image of U(W) × U(W^⊥) (W^⊥ negative definite); that restriction gives a continuous surjective homomorphism r_W: H_W → Aut(𝔹(W)) ≅ PU(1,m) with compact kernel; and that 𝔹(W) is a closed complex submanifold of dimension m on which ω restricts to the ball form. *Needs:* §§1.1–1.4, 2.1–2.2.

- Sub-balls of dimension 0 are points and of dimension n is B; 𝔹(W) ∩ 𝔹(W′) = 𝔹(W ∩ W′) or is empty.
- The restriction r_W is compatible with conjugation: r_{gW}(ghg⁻¹) corresponds to r_W(h).
- ω|_{𝔹(W)} is the invariant form of 𝔹(W), by §2.2 and transitivity.

**Checks.**

- m = 0: W is a positive line, 𝔹(W) is a point, H_W is a conjugate of K, and PU(1,0) is trivial.
- {w₁ = 1/2} ∩ B (n = 2) is the sub-ball of W = {z₁ = z₀/2}, on which the form is (3/4)|z₀|² − |z₂|², of signature (1,1): Euclidean-flat sub-balls are not centred at 0.
- A negative definite W, or a degenerate one such as the span of e₀ + e₁, meets 𝔹ⁿ in the empty set; signature (1,m) is needed.

### 3.2 Totally geodesic complex submanifolds through a point

Prove that every sub-ball is totally geodesic (it is a connected component of the fixed set of the isometry [diag(1_W, −1_{W^⊥})]), and that a connected totally geodesic complex submanifold M ⊂ B, with p ∈ M, is contained in the sub-ball through p tangent to T_pM. Geodesics of M are geodesics of B when the second fundamental form vanishes, a geodesic of B tangent to a complete totally geodesic submanifold stays in it, so a neighbourhood of p in M lies in that sub-ball; the set of points with this property is open and closed in M by continuity of tangent spaces (RiemannianGeometry R5a; Goldman1999 Ch. 3, uncertified). *Needs:* §3.1; RiemannianGeometry R5a (second fundamental form) and R4.7 (local isometries determined by a one-jet); RiemannianGeometry's HopfRinow contract (geodesic uniqueness).

**Checks.**

- The complex line ℂv ∩ B through 0 is totally geodesic and is the sub-ball of span(e₀, (0, v)).
- The curve {w₂ = w₁²} ∩ B (n = 2) is a complex submanifold through 0 tangent to {w₂ = 0} that is not contained in it, so it is not totally geodesic.
- The real plane {Im w₁ = Im w₂ = 0} is totally geodesic but not complex; the statement concerns complex submanifolds.

### 3.3 Classification of totally geodesic complex subvarieties

Prove that a complete connected totally geodesic complex submanifold of B of dimension m is a sub-ball g𝔹ᵐ, whose stabiliser is H_W, with PU(1,m) acting on it as its full biholomorphism group through r_W; and the analytic version: an irreducible closed analytic subset Y ⊂ B of dimension m ≥ 1 whose regular locus is totally geodesic is a sub-ball (BaldiUllmo2023 line 496 to line 506; Goldman1999 Ch. 3, uncertified). For the analytic version, apply §3.2 at a regular point p: Y ∩ 𝔹(W) contains a neighbourhood of p in Y^reg, Y^reg is connected, so Y ⊂ 𝔹(W), and a closed analytic subset of the connected m-manifold 𝔹(W) of dimension m is all of it. *Needs:* §§3.1–3.2; ComplexKahlerGeometry K3 (irreducible components, connectedness of the regular locus of an irreducible analytic subset, dimension of proper analytic subsets); §2.1.

**Checks.**

- For n = 1 the only irreducible closed analytic subset of dimension 1 is B itself.
- The union of the two sub-balls {w₁ = 0} and {w₂ = 0} of B² has totally geodesic regular locus but is reducible; irreducibility is needed.
- A geodesic segment (real dimension 1) is totally geodesic but not a complex analytic subset.

### 3.4 Intersections of sub-balls and fixed sets of elliptic elements

Prove that two distinct sub-balls of the same dimension meet in a sub-ball of smaller dimension or not at all, and that the fixed set in B of an elliptic element g ∈ G is a single nonempty sub-ball: a lift of g is diagonalizable with unit eigenvalues, its eigenspaces are mutually orthogonal for the form, and exactly one of them has signature (1, ·) (Goldman1999 Ch. 3, uncertified). *Needs:* §3.1; §4.1 for the definition of elliptic elements.

**Checks.**

- [diag(1, e^{iθ}, 1)] (n = 2, θ ∉ 2πℤ) fixes the sub-ball {w₁ = 0}; [diag(1, ζ, ζ)] with ζ ≠ 1 fixes only 0.
- The complex reflection [diag(1, 1, −1)] fixes the divisor {w₂ = 0} of B².
- The sub-balls {w₁ = 0} and {w₂ = 0} of B² meet exactly in {0}.

### Examples

In B² the sub-balls of dimension 1 are the complex geodesics; through each point and each complex tangent line there is exactly one. The fixed set of a complex reflection is a sub-ball of codimension one, which is why quotients by groups generated by reflections can be smooth (§7.1).

### Dependencies

Layers 1–2; RiemannianGeometry R4.7 and R5a; ComplexKahlerGeometry K3.

## Layer 4: Isometries, horoballs and the Margulis lemma

### 4.1 Elliptic, parabolic and loxodromic elements

Define g ∈ G ∖ {1} to be elliptic if it fixes a point of B, parabolic if it fixes no point of B and exactly one point of ∂B, and loxodromic if it fixes no point of B and exactly two points of ∂B, and define its translation length ℓ(g) = inf_{x∈B} d(x, gx). Prove that every nontrivial element is of exactly one type; that ℓ(g) = 0 is attained for elliptic, ℓ(g) = 0 is not attained for parabolic, and ℓ(g) > 0 is attained on an axis for loxodromic elements; that ℓ(a_s) = √2|log s|; and that an elliptic element of a discrete subgroup has finite order (Mok2012 line 325 to line 335). Every lift g̃ ∈ U(1,n) has an eigenvector v with ⟨v,v⟩ ≥ 0: an eigenvalue of modulus different from 1 has a null eigenvector; eigenvectors for distinct unit eigenvalues are orthogonal, so a diagonalizable g̃ with unit eigenvalues has a positive eigenvector; and a nontrivial Jordan block at a unit eigenvalue λ, with (g̃ − λ)w = v, forces λ̄⟨v,v⟩ = 0. Fixed points in B are positive eigenlines and fixed points in ∂B are null eigenlines. *Needs:* §§1.4–1.5, 2.4; Mathlib eigenvectors and Jordan decomposition of matrices over ℂ.

**Checks.**

- a_s (s ≠ 1) is loxodromic with fixed points (0,0) and ∞ of 𝔖, and translation length √2|log s|.
- T_t (t ≠ 0) is parabolic: its displacement √2 arcsinh(|t|/(2ρ)) tends to 0 as ρ → ∞ and is positive everywhere.
- The screw parabolic m·T_t (n ≥ 2, m a nontrivial rotation of u, t ≠ 0) is parabolic but not unipotent: "parabolic" does not mean "conjugate into N".

### 4.2 Horoballs and displacement estimates

Prove that for a parabolic g fixing ∞ (g ∈ M·N), the displacement x ↦ d(x, gx) tends to 0 along every vertical ray, and that for every N > 0 there is ε > 0 with {x : d(x, gx) < ε} ⊂ H(N); that for a vertical translation the displacement depends only on ρ and equals √2 arcsinh(|t|/(2ρ)); and that the distance between the horospheres {ρ = N₁} and {ρ = N₂} is (1/√2)|log(N₂/N₁)| (Mok2012 line 383 to line 403; BaldiUllmo2023 line 566 to line 581). *Needs:* §§1.5, 2.2, 2.4, 4.1.

**Checks.**

- For T_t at ρ = |t|/2 the displacement is √2 arcsinh(1).
- For n_{(a,0)}, a ≠ 0, at (0, iy) the displacement is of order |a|/√y as y → ∞, while on a fixed horosphere it is unbounded in the horizontal direction i·a.
- A loxodromic a_s has displacement at least √2|log s| everywhere: no horoball estimate holds for it.

### 4.3 Parabolic and loxodromic elements of discrete groups

Prove that in a discrete subgroup Δ ⊂ G a parabolic element and a loxodromic element have no common fixed point, so that the stabiliser in Δ of a fixed point of a parabolic element of Δ lies in M·N after conjugation (Mok2012 line 338 to line 342, after Eberlein–O'Neill). Conjugating a parabolic p ∈ M·N by powers of a loxodromic h = m a_s n fixing ∞ shrinks the N-component of p by powers of s while the M-components stay in the compact M, producing infinitely many distinct elements of Δ in a compact set. *Needs:* §§1.5, 4.1; Mathlib discreteness of subgroups.

**Checks.**

- ⟨a_{1/2}, T_1⟩ is not discrete: a_{1/2}^k T_1 a_{1/2}^{−k} = T_{4^{−k}} → 1.
- ⟨T_1⟩ and ⟨a_2⟩ are each discrete; it is their combination that fails.
- A finite group of rotations fixing ∞ together with ⟨T_1⟩ generates a discrete group fixing ∞ with no loxodromic element.

### 4.4 Zassenhaus neighbourhoods and the Margulis lemma

Prove that a closed subgroup L of GL_N(ℂ) has a neighbourhood U of 1 such that for every discrete subgroup Δ ⊂ L the subgroup generated by Δ ∩ U is nilpotent, and deduce the Margulis lemma for 𝔹ⁿ: there are ε_n > 0 and m_n ∈ ℕ such that for every discrete Δ ⊂ G and every x ∈ B, the subgroup generated by {γ ∈ Δ : d(x, γx) < ε_n} has a nilpotent subgroup of index at most m_n (Raghunathan1972 Ch. VIII, uncertified; Mok2012 line 342 to line 349 for the torsion-free consequence; BaldiUllmo2023 line 573 to line 575). The lemma is applied to Ad(G) (§1.2); the passage from U to displacement uses the compactness of K, the stabiliser of x after conjugation, and Jordan's theorem on finite subgroups of a compact Lie group. *Needs:* §§1.2, 1.4, 2.4; Mathlib matrix norms.

**Checks.**

- For Δ = ⟨T_1⟩ and x high in a horoball, every element of a large ball in Δ has small displacement, and Δ ≅ ℤ is nilpotent.
- For a finite subgroup of K and x = 0, all displacements vanish and the group is finite, hence virtually nilpotent.
- A non-discrete free subgroup of K (n ≥ 2), dense in U(n), has all displacements 0 at the origin and is not virtually nilpotent: discreteness is needed.

### 4.5 Discrete groups fixing a boundary point

Prove that if Δ ⊂ M·N is discrete and acts cocompactly on a horosphere at ∞, then Δ ∩ N is a lattice in N of finite index in Δ; that the image Λ of Δ ∩ N in N/Z(N) = ℂ^{n−1} is a lattice of rank 2n − 2; and that, for n ≥ 2, Δ ∩ Z(N) is infinite cyclic, generated by a vertical translation T_τ with τ > 0 (Mok2012 line 373 to line 472; Raghunathan1972 Ch. VIII, uncertified, for the finite-index statement). If Δ ∩ Z(N) were trivial, Δ ∩ N would be abelian, its horizontal parts would span a real subspace on which Im⟨·,·⟩ vanishes, of real dimension at most n − 1, and ℂ^{n−1}/Λ could not be compact. *Needs:* §§1.5, 4.3–4.4.

**Checks.**

- n = 2, Δ = ⟨n_{(1,0)}, n_{(i,0)}⟩: Δ ∩ Z(N) contains T_4, Λ = ℤ[i] has rank 2 = 2n − 2.
- Δ = {n_{(a,0)} : a ∈ ℤ} (n = 2) is discrete and abelian with Λ of rank 1; it is not cocompact on horospheres and the conclusion fails.
- For n = 1, Δ is generated by a translation T_τ and Λ is the zero lattice of ℂ⁰.

### Examples

The ε_n-thin part of a lattice quotient consists of horoball neighbourhoods of cusps and tubes around short closed geodesics; Layer 6 shows that only finitely many of each occur. For PU(1,1) the Margulis lemma and §4.5 are the classical facts behind FuchsianOrbifolds Layer 3.

### Dependencies

Layers 1–2; Mathlib matrix norms; Raghunathan1972 is cited for the Zassenhaus and Auslander theorems, whose proofs are carried out here.

## Layer 5: Lattices in PU(1,n)

### 5.1 Lattices, cocompact lattices and commensurability

Specialise VonNeumannAlgebras Layer 9 to G: a lattice is a discrete subgroup Γ ⊂ G of finite covolume for Haar measure, cocompact when G/Γ is compact; two subgroups are commensurable in the sense of Mathlib's `Subgroup.Commensurable` (WitteMorris2015 line 1893 and line 1940; BaldiUllmo2023 line 355 to line 357). G qualifies because it is unimodular, second countable and locally compact (§1.2). *Needs:* VonNeumannAlgebras Layer 9; Mathlib `MeasureTheory.covolume`, `MeasureTheory.IsFundamentalDomain`, `Subgroup.Commensurable`; §1.2.

- A subgroup of finite index in a lattice is a lattice, with covolume multiplied by the index, and a subgroup containing a lattice with finite index is a lattice; commensurable discrete subgroups are lattices together.
- Conjugates gΓg⁻¹ are lattices of the same covolume, G being unimodular.
- A lattice is cocompact if and only if Γ\B is compact (§5.3).

**Checks.**

- The trivial subgroup is discrete but not a lattice: G is not compact, so its Haar measure is infinite.
- Under §1.6 the image of PSL(2,ℤ) is a non-cocompact lattice of ω-covolume π/6 and the image of Γ(2)/{±1} has index 6 and covolume π.
- ⟨T_1⟩ is discrete and not a lattice: a fundamental domain in B contains a horoball strip of infinite volume.

### 5.2 Proper discontinuity and finite stabilisers

Prove that G acts properly on B — for compact A, A′ ⊂ B the set {g : gA ∩ A′ ≠ ∅} is compact, by compactness of K and §1.4 — so that a subgroup Γ ⊂ G acts properly discontinuously in the sense of Mathlib's `ProperlyDiscontinuousSMul` if and only if it is discrete; that point stabilisers Γ_x are then finite; that every x ∈ B has a Γ_x-invariant open neighbourhood U_x with γU_x ∩ U_x = ∅ for γ ∉ Γ_x; and that the free locus is open, Γ-invariant and dense, its complement being a locally finite union of proper sub-balls (WitteMorris2015 line 2726; FuchsianOrbifolds Layer 0 for n = 1). *Needs:* §§1.4, 3.4, 4.1; Mathlib `ProperlyDiscontinuousSMul`, `Subgroup.properlyDiscontinuousSMul_iff`; Tau Ceti `TauCeti.Matrix.isCompact_unitaryGroup`.

**Checks.**

- The group generated by a rotation [diag(1, e^{2πiα})] with α irrational is not discrete; its stabiliser of 0 is infinite and it does not act properly discontinuously.
- ⟨T_1⟩ is discrete and acts freely.
- A finite cyclic group of rotations about 0 has Γ_0 = Γ and free locus B ∖ {0} for n = 1.

### 5.3 Covolume and the volume of the quotient

Prove that the Haar measure of G can be normalised so that μ_G(p⁻¹(A)) = vol_ω(A) for every Borel A ⊂ B, p: G → B the orbit map; that a discrete Γ, which is countable because G is second countable, has a measurable fundamental domain F ⊂ B with pairwise disjoint translates (Tau Ceti `MeasureTheory.Measure.exists_isFundamentalDomain_of_properlyDiscontinuousSMul`, applied to the properly discontinuous action of §5.2 and to vol_ω, under which the non-free locus, a locally finite union of proper sub-balls, is null); and that for every measurable fundamental domain F ⊂ B for Γ, p⁻¹(F) is a fundamental domain for Γ acting on G and covol(Γ) = vol_ω(F); hence Γ is a lattice if and only if Γ\B has finite ω-volume, and Γ is cocompact if and only if Γ\B is compact (WitteMorris2015 line 1899 to line 1921, Proposition 4.1.11; BaldiUllmo2023 line 338 to line 339). The measure A ↦ μ_G(p⁻¹(A)) is G-invariant on B; lifting both it and vol_ω to left-invariant measures on G and applying uniqueness of Haar measure identifies them. *Needs:* §§2.2, 5.1–5.2; Mathlib `MeasureTheory.Measure.isMulLeftInvariant_eq_smul_of_innerRegular`, `MeasureTheory.IsFundamentalDomain.covolume_eq_volume`; Tau Ceti `MeasureTheory.Measure.exists_isFundamentalDomain_of_properlyDiscontinuousSMul` and `TauCeti.freeLocus` (existence of F); Tau Ceti `TauCeti.riemannianVolume` (TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Volume.lean:76) for the volume of ω.

**Checks.**

- n = 1, PSL(2,ℤ): vol_ω = π/6, half the hyperbolic area of the standard fundamental domain.
- A horoball H(N) modulo a lattice of N has finite volume, ∫_N^∞ ρ^{−(n+1)} dρ < ∞, while the strip {0 < ρ < 1} modulo the same lattice has infinite volume.
- Doubling a lattice to an index-two subgroup doubles the volume of the quotient.

### Examples

Cocompact lattices exist in every dimension (arithmetic ones, §11.2); non-cocompact ones too (the Picard modular groups of §11.1). For n = 2 there are non-arithmetic cocompact lattices (Mostow1980 line 85 and line 3089) and non-arithmetic non-cocompact ones (DeligneMostow1986 line 151 to line 152).

### Dependencies

Layers 1–4; VonNeumannAlgebras Layer 9; Mathlib Haar measure and fundamental domains; Tau Ceti Riemannian volume.

## Layer 6: Cusps, finite generation and Selberg's lemma

### 6.1 The cusp structure theorem

Define the cusp points of a discrete Γ ⊂ G as the points of ∂B fixed by a parabolic element of Γ, and the cusp classes as the Γ-orbits of cusp points. Prove that for a lattice Γ: the cusp classes are finite in number; for every cusp point b, the stabiliser Γ_b lies in M_b·N_b, acts cocompactly on the horospheres at b, Γ_b ∩ N_b is a lattice in N_b of finite index in Γ_b, and for n ≥ 2, Γ ∩ Z(N_b) is infinite cyclic; there are horoballs H_b at the cusp points with γH_b = H_{γb}, pairwise disjoint, precisely invariant (γH_b ∩ H_b ≠ ∅ implies γ ∈ Γ_b), and every smaller concentric family has the same properties; the image of B ∖ ⋃_b H_b in Γ\B is compact; and Γ is cocompact if and only if it has no cusp points (Mok2012 line 309 to line 475 for torsion-free Γ; BaldiUllmo2023 Theorem 3.4.3, line 649 to line 661, the theorem of Garland–Raghunathan for every lattice; Raghunathan1972 Ch. XIII, uncertified; SiuYau1982 pp. 363–380, uncertified). The proof takes ε = ε_n of §4.4: the ε-thick part of Γ\B is compact because disjoint ε/2-balls have volume bounded below and Γ\B has finite volume; components of the thin part are tubes around closed geodesics of length less than ε, relatively compact, or quotients by virtually nilpotent parabolic groups, which by §§4.2–4.3 contain horoball neighbourhoods of their fixed points; compactness of the boundary of a thin cusp component gives the cocompact action on horospheres, and §4.5 its structure. *Needs:* §§4.1–4.5, 5.2–5.3.

**Checks.**

- n = 1, PSL(2,ℤ): one cusp class, Γ_∞ = {z ↦ z + k}, and {Im z > 1} is a precisely invariant horoball; the elliptic points i and e^{2πi/3} lie outside it.
- A cocompact lattice has no parabolic elements, hence no cusp points, and Γ\B is its own compact core.
- For n ≥ 2, the discrete group ⟨T_1⟩ has the cusp point ∞, but Γ_∞ does not act cocompactly on horospheres: the lattice hypothesis is used.

### 6.2 Finite generation

Prove that every lattice in G is finitely generated, and indeed finitely presented (WitteMorris2015 Corollary 4.7.5, line 2722, for cocompact lattices; Theorem 4.7.10, line 2809, and Remark 4.7.11, line 2821, in general; Raghunathan1972 Ch. XIII, uncertified). The union F of an open neighbourhood of a compact set covering the compact core of §6.1 and of finitely many sets (horoball H_b) ∩ (preimage of a relatively compact fundamental region for Γ_b on a horosphere), one per cusp class, is a connected open coarse fundamental domain: ΓF = B, and {γ : γF ∩ F ≠ ∅} is finite by precise invariance. WitteMorris2015 Proposition 4.7.4 (line 2700) and Proposition 4.7.7 (line 2754), applied to the connected, simply connected B, give finite generation and finite presentation. *Needs:* §§5.2, 6.1.

**Checks.**

- PSL(2,ℤ) is generated by z ↦ −1/z and z ↦ z + 1, the elements of S for its standard fundamental domain.
- For a cocompact lattice F can be taken relatively compact.
- A Fuchsian group of infinite covolume can be infinitely generated (an infinite-index normal subgroup of a free group); finite covolume is used.

### 6.3 Selberg's lemma in eigenvalue form

Prove that for a field F of characteristic 0, N ≥ 1 and a finitely generated subgroup Λ ⊂ GL_N(F), there is a normal subgroup Λ′ ⊂ Λ of finite index such that no eigenvalue, in an algebraic closure, of any element of Λ′ is a nontrivial root of unity; in particular Λ′ is torsion-free (WitteMorris2015 Theorem 4.8.4, line 2972, whose proof, line 2974 to line 2988, treats SL(ℓ,ℤ) only; Theorem 4.8.2, line 2910, and Remark 4.8.5(3), line 3008, for the torsion-free form over any field of characteristic 0; Borel1969 §17, Corollary 17.7, uncertified, cited at WitteMorris2015 line 3445 as the source of the eigenvalue form for finitely generated linear groups; Alperin1987 pp. 269–273, uncertified). The statement in this generality, with the normality of Λ′, is this roadmap's, by the following route. The entries of the generators and their inverses lie in a finitely generated subring R ⊂ F; R is a Jacobson ring with finite residue fields at maximal ideals; the kernel of reduction modulo a suitable ideal of finite index has the required property, by the characteristic-polynomial argument of WitteMorris2015 line 2974 to line 2988, and it is normal as a kernel. *Needs:* Mathlib `IsJacobsonRing`, `isJacobsonRing_of_finiteType`, `finite_of_finite_type_of_isJacobsonRing` (Mathlib/RingTheory/Jacobson/Ring.lean:60, :666, :676).

**Checks.**

- In SL(2,ℤ), the principal congruence subgroup Γ(3) has the property: an element with a nontrivial root-of-unity eigenvalue has trace −2, −1, 0 or 1; elements of Γ(3) have trace ≡ 2 mod 3, which excludes −2, 0 and 1, and trace −1 would force order 3, impossible in the torsion-free Γ(3). The subgroup Γ(2) contains −1 and fails.
- Λ = {±1} ⊂ GL_1(ℚ): Λ′ = {1}.
- The group of all roots of unity in GL_1(ℚ̄) is not finitely generated and every subgroup of finite index contains torsion: finite generation is needed.

### 6.4 Neat lattices

Define a subgroup of G to be neat when no eigenvalue of Ad(γ) is a nontrivial root of unity for any of its elements (Conventions). Prove that every lattice has a normal neat subgroup of finite index (§6.3 applied to Ad(Γ), finitely generated by §6.2); that neat subgroups are torsion-free, and subgroups and conjugates of neat subgroups are neat; and that for a neat lattice Γ and a cusp point b, Γ_b ⊂ N_b, and for n ≥ 2, Γ ∩ Z(N_b) = ⟨T_τ⟩ with τ > 0 (after conjugating b to ∞) and Γ_b/⟨T_τ⟩ maps isomorphically onto a lattice Λ_b ⊂ ℂ^{n−1} (WitteMorris2015 line 2969 to line 2973; BaldiUllmo2023 line 523 to line 524 and Proposition 3.3.3, line 530). For γ = m·ν ∈ Γ_b with m ∈ M, ν ∈ N, the finite index of Γ_b ∩ N_b makes m of finite order, the eigenvalues of Ad(γ) are those of Ad(m), and neatness forces Ad(m) = 1, hence m = 1. *Needs:* §§1.2, 6.1–6.3.

**Checks.**

- The image of Γ(3) in PU(1,1) is neat; the elliptic element of order 3 in PSL(2,ℤ) is not.
- The screw parabolic m·T_t with m of order 4 generates an infinite cyclic, torsion-free, non-neat group (Ad(m·T_t) has eigenvalue i): neat is strictly stronger than torsion-free.
- For a neat lattice and n = 1, every Γ_b is generated by one translation T_τ, and Λ_b = 0.

### Examples

For PSL(2,ℤ) Layer 6 recovers the cusp at ∞, the two generators, and the neat subgroups Γ(N)/{±1}, N ≥ 3. A neat lattice has unipotent cusp stabilisers, the hypothesis of the toroidal compactification of Layer 8.

### Dependencies

Layers 4–5; WitteMorris2015 Propositions 4.7.4 and 4.7.7 are cited for the topological finite-generation argument and Theorem 4.8.4, proved there for SL(ℓ,ℤ), for the eigenvalue argument, both carried out here in general; Mathlib Jacobson rings.

## Layer 7: The analytic quotient

### 7.1 Γ\𝔹ⁿ as a normal complex analytic space

Construct, for a discrete Γ ⊂ G, the complex analytic space X_Γ = Γ\B: the topological space `MulAction.orbitRel.Quotient Γ B` with the quotient topology and the sheaf of Γ-invariant holomorphic functions on preimages. Prove that X_Γ is a Hausdorff, second-countable, normal complex analytic space (ComplexComparisonPartII's `ComplexAnalyticSpace`) of pure dimension n; that near the image of x it is isomorphic to U_x/Γ_x with U_x the precisely invariant neighbourhood of §5.2 (ShimuraVarieties §P.6); that the projection π: B → X_Γ is holomorphic and open; and that Γ-invariant holomorphic maps from B to complex analytic spaces factor uniquely through π (Cartan1957 pp. 90–102, uncertified; BaldiUllmo2023 line 431 to line 434). *Needs:* §5.2; ShimuraVarieties §P.6; ComplexComparisonPartII §C−1.1 (open gluing of local models).

- The local models glue because two precisely invariant neighbourhoods are related by elements of Γ, which act holomorphically.
- X_Γ is compact if and only if Γ is cocompact, and its ω-volume is the covolume of Γ (§5.3).

**Checks.**

- For Γ trivial, X_Γ = B.
- For Γ = {1, [diag(1, −1, …, −1)]}, which acts by w ↦ −w, X_Γ is normal and singular at the image of 0 when n ≥ 2 (a quadric cone for n = 2), and smooth with coordinate w² when n = 1.
- For the complex reflection [diag(1, 1, −1)] (n = 2), X_Γ is smooth (coordinates w₁, w₂²) although Γ has torsion: smoothness of X_Γ does not detect torsion.

### 7.2 Torsion-free quotients

Prove that for a torsion-free discrete Γ the action is free, X_Γ is a complex manifold (ComplexManifolds Milestone 4), π is a holomorphic covering map and local biholomorphism, π₁(X_Γ) ≅ Γ, and ω descends to a complete Kähler metric ω_Γ with Ricci form −(n+1)ω_Γ (RiemannianGeometry R4.7, ComplexKahlerGeometry K6.0; Mok2012 line 309 to line 311). *Needs:* §§2.2–2.4, 5.2, 7.1; ComplexManifolds Milestone 4; Tau Ceti `TauCeti.isLocalDiffeomorph_quotientMk`; RiemannianGeometry R4.7.

**Checks.**

- For the image of Γ(3) (n = 1), X_Γ is a sphere with four punctures.
- A torsion-free cocompact lattice gives a compact Kähler manifold with negative Ricci form.
- For PSL(2,ℤ), which has torsion, π is not a covering near i: the local degree there is 2.

### 7.3 Finite quotients

Prove that for discrete Γ′ ◁ Γ of finite index, the finite group F = Γ/Γ′ acts holomorphically on X_{Γ′} and the induced map X_{Γ′}/F → X_Γ is an isomorphism of complex analytic spaces, compatibly with towers Γ″ ◁ Γ′ ◁ Γ (ShimuraVarieties §P.6, universal property and transitivity of invariants). *Needs:* §7.1; ShimuraVarieties §P.6.

**Checks.**

- Γ′ = Γ gives F trivial; Γ′ trivial and Γ finite gives X_Γ = B/Γ.
- For PSL(2,ℤ) ⊃ Γ(2)/{±1}, F ≅ S₃ acts on the thrice-punctured sphere and the quotient is the j-line ℂ.
- For a subgroup of finite index that is not normal, replace it by its normal core, which still has finite index.

### 7.4 The case n = 1

Prove that under §1.6, X_Γ for a discrete Γ ⊂ PU(1,1) is FuchsianOrbifolds Layer 1's coarse quotient Riemann surface of the corresponding Fuchsian group, as complex analytic spaces, compatibly with the projections. *Needs:* §§1.6, 7.1; FuchsianOrbifolds Layer 1.

**Checks.**

- For PSL(2,ℤ) both give ℂ, with the elliptic points smooth.
- On the free locus both are the free holomorphic quotient of ComplexManifolds Milestone 4.
- At an elliptic point of order m both have local coordinate w^m.

### Examples

For a neat lattice X_Γ is a complete Kähler–Einstein manifold of finite volume; for PSL(2,ℤ) it is the j-line; for the Picard modular group over ℚ(i) it is a normal surface with finitely many quotient singularities.

### Dependencies

Layers 5–6; ShimuraVarieties §P.6; ComplexComparisonPartII §C−1.1; ComplexManifolds Milestone 4; RiemannianGeometry R4.7; FuchsianOrbifolds Layer 1.

## Layer 8: The toroidal compactification of a neat ball quotient

Throughout Layer 8, Γ is a neat lattice, X = X_Γ, b₁, …, b_m are representatives of the cusp classes, and for each b an element g_b ∈ G with g_b·b = ∞ in the Siegel model is fixed; after conjugation Γ_b ⊂ N, Γ ∩ Z(N) = ⟨T_τ⟩ and Λ_b ⊂ ℂ^{n−1} are as in §6.4 (for n = 1, Γ_b = ⟨T_τ⟩ and Λ_b = 0).

### 8.1 Cusp charts and the line bundle model

Construct Ψ_b(u,v) = (u, e^{2πiv/τ}), which identifies 𝔖/⟨T_τ⟩ with G_b = {(u,q) : 0 < |q|², |q|² < e^{−4π|u|²/τ}}; the closure Ĝ_b obtained by adding the zero section q = 0; the action of Γ_b/⟨T_τ⟩ ≅ Λ_b on ℂ^{n−1} × ℂ by (u,q) ↦ (u + a, χ(a) e^{−(4π/τ)⟨a,u⟩ − (2π/τ)|a|²} q), where n_{(a,t_a)} ∈ Γ_b and χ(a) = e^{2πit_a/τ}, well defined because t_a is determined modulo τ, is a unitary semi-character of Λ_b: |χ(a)| = 1 and χ(a + a′) = χ(a)χ(a′)e^{−4πi Im⟨a,a′⟩/τ}, the last factor being ±1 because the commutator of n_{(a,t_a)} and n_{(a′,t_{a′})} is T_{−4 Im⟨a,a′⟩} ∈ Γ ∩ Z(N) = ⟨T_τ⟩ (§6.4), so that χ is a character exactly when [Γ_b, Γ_b] ⊆ ⟨T_{2τ}⟩ (Mok2012 equations (5)–(6), line 173 to line 175, write the vertical component as kτ and omit the factor χ(a), which the fourth Check below shows can be −1); the line bundle L_b = (ℂ^{n−1} × ℂ)/Λ_b over the complex torus T_b = ℂ^{n−1}/Λ_b with the Hermitian metric μ(u,q) = e^{(4π/τ)|u|²}|q|²; and Ω_b(N) = Ĝ_b(N)/Λ_b = {μ < e^{−4πN/τ}} (Mok2012 line 152 to line 239 and equations (5)–(6), line 170 to line 175; BaldiUllmo2023 line 559 to line 571). Prove that the multipliers e_a(u) = χ(a)e^{−(4π/τ)⟨a,u⟩ − (2π/τ)|a|²} form a holomorphic factor of automorphy, e_{a+a′}(u) = e_a(u + a′)e_{a′}(u), the sign χ(a + a′)/(χ(a)χ(a′)) being cancelled by e^{(4π/τ)i Im⟨a,a′⟩}, so that the formula is the action of Λ_b ≅ Γ_b/⟨T_τ⟩ descended from the action of Γ_b on 𝔖 through Ψ_b; that μ is invariant and has curvature −(4π/τ)i∂∂̄|u|², negative definite, so that L_b is a negative line bundle; and that for N large, Ω_b(N) ∖ T_b ≅ H(N)/Γ_b embeds openly in X, with disjoint images for distinct cusp classes. *Needs:* §§1.5, 6.1, 6.4; ComplexManifolds Milestone 7 (line bundles from factors of automorphy); ComplexKahlerGeometry K4 (Chern curvature).

- For n = 1, T_b is a point, L_b = ℂ, Ω_b(N) is a disc and q is FuchsianOrbifolds Layer 3's cusp coordinate of width τ.
- The construction is independent of g_b and of the representative b up to the evident isomorphisms.

**Checks.**

- Invariance of μ: e^{(4π/τ)|u + a|²} · e^{−(8π/τ)Re⟨a,u⟩ − (4π/τ)|a|²} = e^{(4π/τ)|u|²}, and |χ(a)| = 1.
- The multiplier involves ⟨a,u⟩ = Σ conj(aⱼ)uⱼ, holomorphic in u; the convention ⟨u,a⟩ would give a non-holomorphic multiplier.
- For the image of Γ(3) at ∞ (n = 1), τ = 3 and q = e^{2πiv/3}; the semi-character χ is trivial because Λ_b = 0.
- For n = 2 and Γ_b = ⟨n_{(λ,0)}, n_{(iλ,0)}⟩ with λ > 0 (the group of the first Check of §4.5, rescaled): Γ_b ∩ Z(N) = ⟨T_{4λ²}⟩, generated by the commutator, so τ = 4λ² and Λ_b = ℤ[i]λ; the element over (1 + i)λ is n_{(λ,0)}·n_{(iλ,0)} = n_{((1+i)λ, −2λ²)}, so χ(λ) = χ(iλ) = 1 while χ((1 + i)λ) = e^{−πi} = −1, and χ is not a character. A definition of L_b that assumed χ multiplicative would glue with the wrong sign over (1 + i)λ; the factor-of-automorphy identity holds because e^{(4π/τ)i Im⟨λ,iλ⟩} = e^{πi} = −1 cancels it.

### 8.2 The toroidal compactification

Construct X^M by gluing X and the Ω_b(N), b = b₁, …, b_m, along Ω_b(N) ∖ T_b ≅ H(N)/Γ_b ⊂ X (ComplexManifolds Milestones 5–6). Prove that X^M is a compact connected complex manifold of dimension n, independent of N up to unique biholomorphism restricting to the identity of X; that D = X^M ∖ X is a smooth divisor whose connected components T_{b₁}, …, T_{b_m} are complex tori of dimension n − 1, one per cusp class, with normal bundle L_b; and that D = ∅ exactly when Γ is cocompact, in which case X^M = X (Mok2012 Theorem 1, line 476 to line 484; BaldiUllmo2023 line 510 to line 557). *Needs:* §§6.1, 8.1; ComplexManifolds Milestones 5–6.

**Checks.**

- n = 1: X^M is FuchsianOrbifolds Layer 4's compactified quotient of the corresponding Fuchsian group, and D is the finite set of cusp points.
- For a cocompact neat lattice X^M = X and D = ∅.
- For n = 2, each T_b is an elliptic curve ℂ/Λ_b; L_b has negative curvature, so its dual is positive and T_b is projective.

### 8.3 Asymptotics of ω at the boundary

Prove that on Ω_b ∖ T_b, ω = i∂∂̄(−log(−log ‖v‖)) with ‖v‖ = μ(v)^{1/2}, since ρ = −(τ/2π) log ‖(u,q)‖; that ω has Poincaré growth along D: in local coordinates (w′, wₙ) with D = {wₙ = 0}, ω ≤ C(Σ_{k<n}|dw_k|² + |dwₙ|²/(|wₙ|² log²|wₙ|)); and that its volume form satisfies C₁ δ^{−2}(−log δ)^{−(n+1)} dV ≤ ω^n/n! ≤ C₂ δ^{−2}(−log δ)^{−(n+1)} dV near D for δ the distance to D in a smooth metric and dV a smooth volume form (Mok2012 line 240 to line 304, Proposition 1 at line 295; BaldiUllmo2023 Definition 3.3.4 and Theorem 3.3.5, line 586 to line 601). *Needs:* §§2.2, 8.1–8.2.

**Checks.**

- n = 1: ω = i dq∧dq̄/(4|q|²(log|q|)²), the curvature −2 complete metric on the punctured disc.
- The volume estimate with n = 1 is |q|^{−2}(log|q|)^{−2}, integrable near q = 0: cusp neighbourhoods have finite area.
- The flat cylinder metric |dq|²/|q|² does not have Poincaré growth and gives infinite area.

### 8.4 The logarithmic canonical bundle near the boundary

Define E = K_{X^M} ⊗ O(D), with O(D) the line bundle of the smooth divisor D. Prove that E is holomorphically trivial on a neighbourhood of D, with frame ν = dw₁∧…∧dw_{n−1}∧dq/q, which lifts to a constant multiple of du∧dv on 𝔖; that for the metric h on K_X induced by ω^n, |ν^ℓ|²_{h^ℓ} is comparable to (−log|q|)^{ℓ(n+1)}; and that a holomorphic section f·ν^ℓ of K_X^ℓ on Ω_b ∖ T_b, with f holomorphic on Ω_b, is L² near T_b for h^ℓ and ω^n if and only if f vanishes on T_b (Mok2012 line 568 to line 626). *Needs:* §§8.2–8.3; ComplexKahlerGeometry K4 (canonical bundle, divisor bundles via ComplexManifolds Milestone 7).

**Checks.**

- n = 1: E = K(cusps); ν = dq/q = (2πi/τ) dv, and for ℓ = 1, f·ν is L² exactly when f(0) = 0, the cusp forms of weight 2.
- The integrand for f = q^k near D is |q|^{2k−2}(−log|q|)^{(ℓ−1)(n+1)}, integrable exactly for k ≥ 1.
- K_{X^M} alone restricts to T_b as L_b^{−1} ⊗ K_{T_b} = L_b^{−1}, of nonzero curvature for n ≥ 2: the twist by D is what makes E trivial near D.

### 8.5 Finite volume of analytic subvarieties

Prove that for every irreducible compact analytic subset Y ⊂ X^M of dimension k ≥ 1 not contained in D, ∫_{Y^reg ∖ D} ω^k < ∞ (BaldiUllmo2023 line 586 to line 601 for the Poincaré-growth input; Mok2012 Proposition 1, line 295). Near a point of D write the Poincaré bound as ω_E′ + ν with ω_E′ Euclidean in w′ and ν = i dwₙ∧dw̄ₙ/(|wₙ|² log²|wₙ|); since ν∧ν = 0, ω^k|_Y is bounded by ω_E′^k + k ω_E′^{k−1}∧ν; choose coordinates in which all coordinate projections of the germ of Y are finite (ComplexKahlerGeometry K3); the first term has finite integral by finiteness of these projections and the second because ∫_{0<|w|<δ} i dw∧dw̄/(|w|² log²|w|) < ∞. *Needs:* §8.3; ComplexKahlerGeometry K3 (finite branched projections of analytic germs).

**Checks.**

- Y = X^M gives vol(X) < ∞, the lattice property.
- n = 1, Y = X^M: ∫_0^δ dr/(r log² r) < ∞ near each cusp.
- For the flat metric |dq|²/|q|² the same computation diverges: the Poincaré bound is what is used.

### Examples

For n = 1 Layer 8 is FuchsianOrbifolds Layers 3–4 in the coordinate q. For a neat subgroup of a Picard modular group over ℚ(i), the boundary components are elliptic curves with complex multiplication by an order of ℚ(i), Λ_b being commensurable with ℤ[i].

### Dependencies

Layers 6–7; ComplexManifolds Milestones 5–7; ComplexKahlerGeometry K3–K4; FuchsianOrbifolds Layers 3–4 for n = 1.

## Layer 9: Projective algebraicity of the minimal compactification

Γ is a neat lattice and X^M, D, E are as in Layer 8 unless stated otherwise; K_X carries the metric h induced by ω^n, and "L²" refers to h^ℓ and ω^n.

### 9.1 L² pluricanonical sections with prescribed jets

Prove that for every finite set P ⊂ X there is ℓ₀ such that for every ℓ ≥ ℓ₀ and every assignment of 1-jets at the points of P (values in the fibres of K_X^ℓ and first derivatives in local holomorphic coordinates), there is a holomorphic L² section of K_X^ℓ on X with these 1-jets; and that for every compact Q ⊂ X there is ℓ₀ such that for ℓ ≥ ℓ₀ and every x ∈ Q some holomorphic L² section of K_X^ℓ does not vanish at x (Mok2012 Theorem 2, line 495 to line 514, and line 681 to line 772 and line 817 to line 901). The route: (X, ω) is complete Kähler (§7.2), iΘ(K_X^{ℓ−1}) = (ℓ − 1)(n + 1)ω by §2.3, so ComplexComparisonPartII §C1.4 applies to (n,1)-forms with values in K_X^{ℓ−1} with the smooth weights φ_ε = Σ_{x∈P} (n + 1)χ_x log(|z_x|² + ε), whose curvature is bounded below uniformly in ε ≤ 1 outside a compact set; the solutions u_ε of ∂̄u = ∂̄(χ s₀) satisfy a bound uniform in ε, a subsequence converges by Montel (ComplexComparisonPartII §C1.6), and non-integrability of |z|^{−2n} (resp. |z|^{−2n−2}) forces the limit to vanish to order 1 (resp. 2) at the points of P. *Needs:* §§2.3, 7.2; ComplexComparisonPartII §§C1.4, C1.6; ComplexKahlerGeometry K6.0 (curvature lower bound on (n,1)-forms).

**Checks.**

- n = 1, Γ cocompact of genus g ≥ 2: every section of K^ℓ is L², deg K^ℓ = ℓ(2g − 2) ≥ 2g + 1 for ℓ ≥ 3 (6g − 6 ≥ 2g + 1 for g ≥ 2), and also for ℓ = 2 when g ≥ 3, so K^ℓ separates points and tangents, consistent with the conclusion; for g = 2 and ℓ = 2, deg K² = 4 < 5 and the bicanonical map factors through the hyperelliptic involution, so ℓ₀ depends on Γ, as the theorem allows.
- In real dimension 2n, ∫_{|z|<1} |z|^{−2n} dV diverges (dr/r), which forces u(x) = 0; the weight (n − 1/2) log|z|² is integrable and forces nothing.
- With ω replaced by an incomplete metric on a ball, ComplexComparisonPartII §C1.4 does not apply: completeness of ω_Γ is used.

### 9.2 Meromorphic extension of L² sections and sections nonvanishing on a boundary component

Prove that a holomorphic L² section of K_X^ℓ on X extends to a holomorphic section of E^ℓ on X^M vanishing on D, and conversely; that the space of holomorphic sections of E^ℓ on X^M is finite-dimensional; and that for every ℓ ≥ 2 and every component T_b of D there is a section of E^ℓ nowhere zero on T_b and zero on the other components (Mok2012 Main Theorem, line 546 to line 553, and line 591 to line 678). The extension follows from the volume estimate of §8.3 and the mean-value inequality, which bound |q|^e f for some e and so make f meromorphic across D, and from §8.4, which limits the pole order; the section nonvanishing on T_b is χν^ℓ − u with u the L² solution of ∂̄u = ∂̄(χν^ℓ) given by §C1.4. *Needs:* §§8.2–8.4, 9.1; ComplexKahlerGeometry K3 (Riemann extension on manifolds); ComplexComparisonPartII §§C1.4, C1.6.

**Checks.**

- n = 1, Γ = Γ(2)/{±1} (neat, X^M = ℙ¹, three cusps): E = O(1), sections of E^ℓ form a space of dimension ℓ + 1, and those vanishing on D a space of dimension ℓ − 2 for ℓ ≥ 2, the dimension of the weight-2ℓ cusp forms for Γ(2).
- For ℓ = 1 the section ν itself has |ν|² ≍ (−log|q|)^{n+1}, not L²: the hypothesis ℓ ≥ 2 enters through iΘ(K^ℓ) + Ric = (ℓ − 1)(n + 1)ω > 0.
- For a cocompact Γ, D = ∅, E = K_X and the statement is the finite-dimensionality of pluricanonical sections.

### 9.3 Mok's projective embedding theorem

Prove that there is ℓ such that the sections of E^ℓ on X^M have no common zero, the induced holomorphic map Φ_ℓ: X^M → ℙ^{N_ℓ} is constant on each T_b with pairwise distinct values ζ_b not in Φ_ℓ(X), and Φ_ℓ restricted to X is an injective immersion; so Z = Φ_ℓ(X^M) is a closed analytic subset of ℙ^{N_ℓ}, hence the analytification of a projective variety, and Z ∖ {ζ_b} = Φ_ℓ(X) is smooth (Mok2012 Main Theorem, line 546 to line 562, with the steps of line 681 to line 930). Base points on D are excluded by §9.2 and on the compact common zero set by §9.1; ramification and identifications are eliminated by Noetherian induction on the analytic sets where they occur, each step replacing ℓ by a multiple and using §9.1 at one point of each top-dimensional component; constancy on T_b holds because every section of E^ℓ restricts on the compact connected T_b to a constant multiple of the section nowhere zero there. *Needs:* §§9.1–9.2; ComplexComparisonPartII §§C4.1 (`remmertProperImage`), C4.2 (`projectiveChowNonreduced`); ComplexKahlerGeometry K3.

**Checks.**

- n = 1, Γ(2)/{±1}: E = O(1) on ℙ¹; Φ_ℓ is a Veronese-type embedding for ℓ ≥ 2 and contracts nothing, since each T_b is a point.
- Γ cocompact: Φ_ℓ is a pluricanonical embedding, the case MilneSVI Remark 3.13(c) (line 1734) attributes to the Kodaira embedding theorem.
- For n = 1, K_{X^M} = O(−2) on ℙ¹ has no sections at all: the twist by O(D) is needed.

### 9.4 The minimal compactification of a neat ball quotient

Construct S*_Γ as the normalization of the projective variety Z of §9.3, ∂ as the preimage of {ζ_b}, and S_Γ = S*_Γ ∖ ∂. Prove that S*_Γ is a normal projective variety; that ∂ is finite with exactly one point for each cusp class; that S_Γ is a smooth quasi-projective variety with an isomorphism φ_Γ: S_Γ^an ≅ X_Γ; that Φ_ℓ lifts to a holomorphic map X^M → (S*_Γ)^an that is the identity on X and contracts each T_b to the point of ∂ of its class; that the images of the horoball quotients H_b(N)/Γ_b, together with that point, form a neighbourhood basis of it; and that S*_Γ does not depend on ℓ, up to unique isomorphism restricting to φ_Γ (Mok2012 Main Theorem, line 559 to line 562; Theorem 1, line 479 to line 482). Independence of ℓ: for two admissible values the identity of X extends to a homeomorphism of the two normalizations, both of which have one point over each end of X, and this homeomorphism is holomorphic by gap:normal-riemann-extension and algebraic by ComplexComparisonPartII §C4.4. The point of ∂ over ζ_b is unique because Φ_ℓ is proper with fibre T_b over ζ_b, so Z near ζ_b is the image of a neighbourhood of T_b whose complement of T_b is connected, and Z is therefore locally irreducible at ζ_b. *Needs:* §§8.2, 9.3; Mathlib `AlgebraicGeometry.Scheme.Hom.normalization`; AlgebraicModuliForArithmeticGeometry §5.4; ComplexComparisonPartII §C4.4; gap:normality-analytification; gap:normal-riemann-extension.

**Checks.**

- n = 1: S*_Γ is the smooth projective curve compactifying X_Γ, and ∂ is the set of cusp classes.
- Γ cocompact: ∂ = ∅ and S*_Γ = S_Γ is a smooth projective variety.
- ∂ has one point per cusp class, not per cusp point: the cusp points of Γ form an infinite set while ∂ is finite.

### 9.5 The minimal compactification of an arbitrary lattice

Prove that for every lattice Γ and every normal neat Γ′ ◁ Γ of finite index (§6.4), the finite group F = Γ/Γ′ acts on S*_{Γ′} by algebraic automorphisms preserving ∂_{Γ′}, and that S*_Γ := S*_{Γ′}/F (SchemeAndStackFoundations §1.17), with ∂_Γ the image of ∂_{Γ′} and S_Γ := S*_Γ ∖ ∂_Γ, satisfies: S*_Γ is a normal projective variety, ∂_Γ is finite and in bijection with the cusp classes of Γ, ∂_Γ = ∅ if and only if Γ is cocompact, S_Γ is a normal quasi-projective variety with an isomorphism φ_Γ: S_Γ^an ≅ X_Γ, smooth when Γ is torsion-free; and that (S*_Γ, φ_Γ) does not depend on Γ′ up to unique isomorphism (Mok2012 Main Theorem for neat Γ; MilneSVI Remark 3.13(a), line 1722 to line 1724, in the arithmetic case; BaldiUllmo2023 Theorem 3.1.12, line 455 to line 462). An element of F acts on X_{Γ′} by an analytic automorphism, extends to a homeomorphism of (S*_{Γ′})^an permuting the cusp points, is holomorphic there by gap:normal-riemann-extension, and is algebraic by ComplexComparisonPartII §C4.4; the analytification of S*_{Γ′}/F is the analytic quotient by ShimuraVarieties §P.6, which on S_{Γ′} is X_Γ by §7.3. *Needs:* §§6.4, 7.3, 9.4; SchemeAndStackFoundations §1.17; ShimuraVarieties §P.6; ComplexComparisonPartII §C4.4; gap:normal-riemann-extension; gap:normality-analytification.

**Checks.**

- PSL(2,ℤ) (n = 1): S*_Γ = ℙ¹, ∂ = {∞}, S_Γ = 𝔸¹ through the j-function.
- A cocompact lattice with torsion gives a normal projective S*_Γ = S_Γ, singular at images of isolated fixed points when n ≥ 2.
- Two neat subgroups Γ′, Γ″ give the same S*_Γ through S*_{Γ′∩Γ″}, which maps finitely onto both.

### 9.6 The case n = 1

Prove that for n = 1 and any lattice Γ, (S*_Γ)^an is FuchsianOrbifolds Layer 4's compactified quotient of the corresponding Fuchsian group, compatibly with X_Γ and with the cusp points; in particular that compact Riemann surface is projective algebraic. *Needs:* §§7.4, 9.5; FuchsianOrbifolds Layer 4.

**Checks.**

- PSL(2,ℤ): ℙ¹ with the cusp at ∞.
- The image of Γ(3): a projective line with four cusps.
- The image of Γ₀(11), which has no elliptic points (the Legendre symbols of −1 and −3 modulo 11 are both −1) and two cusps: a curve of genus 1.

### Examples

For the image of Γ(2)/{±1}, S*_Γ = ℙ¹ with ∂ = {0, 1, ∞}. For a neat subgroup of a Picard modular group over ℚ(i), X^M is a smooth projective surface with elliptic boundary curves and S*_Γ is obtained by contracting each to a normal point; for the full Picard modular group the boundary of S*_Γ consists of one point for each cusp class.

### Dependencies

Layers 6–8; ComplexComparisonPartII §§C1.4, C1.6, C4.1, C4.2, C4.4; Mathlib relative normalization and AlgebraicModuliForArithmeticGeometry §5.4; SchemeAndStackFoundations §1.17; ShimuraVarieties §P.6; FuchsianOrbifolds Layer 4; the two ComplexComparisonPartII gaps.

## Layer 10: Extension, Borel algebraicity and uniqueness

### 10.1 Distance-decreasing maps and hyperbolic embedding

Prove, for a torsion-free lattice Γ with Riemannian distance d_Γ of ω_Γ on X_Γ: every holomorphic map from the disc to X_Γ is distance-decreasing from the curvature −2 metric of the disc, and every holomorphic map from the punctured disc Δ* to X_Γ is distance-decreasing from the complete metric |dq|²/(2|q|² log²|q|) of Δ*, in which the circle |q| = r has length √2π/|log r|; and that X_Γ is hyperbolically embedded in (S*_Γ)^an for d_Γ: if x_k → p and y_k → p′ in (S*_Γ)^an with x_k, y_k ∈ X_Γ and p ≠ p′, then d_Γ(x_k, y_k) does not tend to 0 (Kiernan1972 line 57 to line 75 for the properties and the definition; Deng2020 line 61 to line 63 for the arithmetic case). Maps from discs lift to B (the disc is simply connected) and §2.5 applies; maps from Δ* lift from its universal covering by the upper half-plane; distinct boundary points are cusp points, and points deep in distinct cusp neighbourhoods are far apart by §4.2. *Needs:* §§2.5, 4.2, 7.2, 9.4–9.5.

**Checks.**

- The circle |q| = r has length 2πr/(√2 r|log r|) = √2π/|log r| → 0.
- For the image of Γ(3), points tending to two different cusps are at distance tending to ∞.
- PSL(2,ℤ)\ℍ is ℂ as a complex space, and the identity of ℂ is a holomorphic map from a space with vanishing Kobayashi pseudo-distance: torsion-freeness is needed for any hyperbolicity statement.

### 10.2 The extension theorem

Prove that for a torsion-free lattice Γ and r, s ≥ 0, every holomorphic map (Δ*)^r × Δ^s → X_Γ extends uniquely to a holomorphic map Δ^{r+s} → (S*_Γ)^an (Kiernan1972 Theorem 1, line 111 to line 116, and Theorem 2, line 157 to line 160, whose proofs use only the properties established in §10.1; MilneSVI Lemma 3.15, line 1746 to line 1748, and Borel1972 Theorem A, uncertified, in the arithmetic case). *Needs:* §10.1; ComplexKahlerGeometry K3 (Riemann extension on manifolds); Mathlib one-variable removable singularities.

**Checks.**

- The inverse of the cusp coordinate of the image of Γ(3) near a cusp extends with value the cusp point.
- The map Δ* → PSL(2,ℤ)\ℍ ≅ ℂ given, through the j-identification, by z ↦ exp(1/z) has an essential singularity at 0 and does not extend to Δ → ℙ¹ = S*_Γ: the target has torsion.
- For r = 0 there is nothing to extend.

### 10.3 Borel algebraicity and minimality

Prove that for a torsion-free lattice Γ and a smooth variety V over ℂ, every holomorphic map V^an → S_Γ^an is the analytification of a unique morphism V → S_Γ; and that for every smooth projective compactification V̄ of S_Γ with strict-SNC boundary there is a unique morphism V̄ → S*_Γ extending the identity of S_Γ (MilneSVI Theorem 3.14, line 1742 to line 1744, its proof, line 1764 to line 1769, and the minimality property, line 1775 to line 1780; Deng2020 Theorem A, line 87 to line 90, general case). For quasi-projective V take a strict-SNC compactification, extend by §10.2 in its local charts, glue by uniqueness and algebraize by ComplexComparisonPartII §C4.4; glue over a quasi-projective open cover in general. *Needs:* §10.2; AlgebraicModuliForArithmeticGeometry §9.5; ComplexComparisonPartII §§C−1.1, C4.4.

**Checks.**

- For Γ′ ⊂ Γ both torsion-free of finite index, the covering S_{Γ′}^an → S_Γ^an is algebraic.
- exp: 𝔸¹(ℂ) → Y(1)(ℂ) = ℂ is holomorphic and not algebraic; PSL(2,ℤ) has torsion.
- The identity of S_Γ is its own algebraization, so the morphism is unique.

### 10.4 Uniqueness of the algebraic model and the ball quotient S_Γ

Prove: (a) for a torsion-free lattice Γ and quasi-projective models (S₁, φ₁), (S₂, φ₂) of X_Γ, there is a unique algebraic isomorphism f: S₁ → S₂ with φ₂ ∘ f^an = φ₁; (b) for an arbitrary lattice Γ, (S_Γ, φ_Γ) of §9.5 is, up to unique isomorphism, the only quasi-projective model (S, φ) of X_Γ for which some torsion-free normal Γ′ ◁ Γ of finite index and some quasi-projective model S′ of X_{Γ′} admit a finite morphism S′ → S lifting the projection X_{Γ′} → X_Γ, and then S ≅ S′/(Γ/Γ′); (c) the uniformising map π: B → S_Γ^an, the composite of the projection with φ_Γ⁻¹, is holomorphic, and for torsion-free Γ a covering map (MilneSVI Corollary 3.16, line 1770 to line 1774; BaldiUllmo2023 Theorem 3.1.12, line 455 to line 465, line 102 to line 104, Definition 3.1.8, line 431). For (a) apply §10.3 to φ₂⁻¹ ∘ φ₁ and its inverse, or argue as ShimuraVarieties §3.3 does for étale bijective morphisms of smooth varieties. *Needs:* §§9.5, 10.3; ShimuraVarieties §§3.3, 3.4a; ComplexComparisonPartII §C4.4; gap:normality-analytification.

**Checks.**

- For torsion-free Γ, every biholomorphism of X_Γ lifts to an element of the normaliser of Γ in G (§2.1), and all of them are algebraic, as (a) predicts.
- PSL(2,ℤ): S_Γ = 𝔸¹ through j, and the analytic automorphisms of ℂ are affine, hence algebraic.
- The bijective morphism 𝔸¹ → {y² = x³}, t ↦ (t², t³), is not an isomorphism; smoothness of S_Γ for torsion-free Γ is what (a) uses.

### 10.5 Uniqueness of the finite-point normal compactification

Prove that for every lattice Γ and every compact normal complex analytic space Y containing X_Γ as an open dense subspace with Y ∖ X_Γ finite, the identity of X_Γ extends to a unique biholomorphism Y ≅ (S*_Γ)^an; if Y is the analytification of a normal projective variety, the extension is algebraic (MilneSVI line 1690 to line 1694; BaldiUllmo2023 line 513 to line 516). The points of Y ∖ X_Γ and of ∂ both correspond to the ends of X_Γ, because a normal point has connected punctured neighbourhoods; the identity therefore extends to a homeomorphism, holomorphic by gap:normal-riemann-extension, and algebraic by ComplexComparisonPartII §C4.4. *Needs:* §§9.4–9.5; ComplexKahlerGeometry K3 (local irreducibility of normal germs, through ComplexComparisonPartII §C0.6); ComplexComparisonPartII §C4.4; gap:normal-riemann-extension.

**Checks.**

- n = 1: ℙ¹ is the only normal compactification of ℂ* by finitely many points.
- The nodal cubic compactifies ℂ* by one point but is not normal; normality is needed.
- X^M (n ≥ 2, with cusps) is a normal compactification of X_Γ with divisorial boundary; finiteness of the boundary is needed.

### 10.6 Functoriality in the lattice

Prove that for lattices Γ′ ⊆ Γ of finite index the projection X_{Γ′} → X_Γ is the analytification of a unique finite surjective morphism S_{Γ′} → S_Γ, which extends to S*_{Γ′} → S*_Γ and maps ∂_{Γ′} onto ∂_Γ, of degree [Γ:Γ′]; that for g ∈ G the map induced by g is an isomorphism S_Γ ≅ S_{gΓg⁻¹}; and that these morphisms compose (BaldiUllmo2023 line 102 to line 104). *Needs:* §§9.5, 10.4–10.5.

**Checks.**

- PSL(2,ℤ) ⊃ Γ(2)/{±1}: the morphism ℙ¹ → ℙ¹ has degree 6 and sends {0, 1, ∞} to ∞.
- For g ∈ Γ the induced isomorphism S_Γ → S_Γ is the identity.
- G is centreless, so Γ/Γ′ acts effectively on X_{Γ′} and the degree is the index: for the image of Γ(3) in PSL(2,ℤ) the index and the degree of X(3) → X(1) are both 12, whereas the index of Γ(3) in SL(2,ℤ) is 24 because −1 acts trivially.

### Examples

For torsion-free Γ, §10.3 makes every holomorphic map from a quasi-projective variety to S_Γ algebraic; for instance the maps S_{Γ_H} → S_Γ of §12.2. For PSL(2,ℤ), §§10.2–10.3 fail (the j-line is ℂ) and §10.4(b) is the uniqueness that remains.

### Dependencies

Layers 2, 4, 7 and 9; Kiernan1972 Theorems 1–2 are cited for the argument, carried out here with d_Γ; AlgebraicModuliForArithmeticGeometry §9.5; ComplexComparisonPartII §§C−1.1, C4.4; ShimuraVarieties §§3.3, 3.4a; the two ComplexComparisonPartII gaps.

## Layer 11: Arithmetic lattices and Shimura data

### 11.1 Arithmetic subgroups of PU(1,n)

Define Γ ⊂ G to be arithmetic if there are a connected semisimple ℚ-group 𝐆 with a faithful ℚ-representation 𝐆 ⊂ GL_N and a continuous surjective homomorphism p: 𝐆(ℝ)° → G with compact kernel such that p(𝐆(ℤ) ∩ 𝐆(ℝ)°) is commensurable with Γ, where 𝐆(ℤ) = 𝐆(ℚ) ∩ GL_N(ℤ) (WitteMorris2015 Definition 5.1.19, line 3732 to line 3739; BaldiUllmo2023 Proposition 2.3.3, line 333 to line 339). *Needs:* AdelicAlgebraicGroups §3.4 (`Reduction.IsSArithmetic`, independence of the integral structure up to commensurability); Mathlib `Subgroup.Commensurable`.

- Arithmeticity is invariant under commensurability and conjugation in G, and independent of the faithful representation.
- 𝐆 may be replaced by its unique ℚ-simple factor with noncompact real points; the other factors have finite arithmetic subgroups.

**Checks.**

- n = 1: PSL(2,ℤ) is arithmetic, with 𝐆 = SL₂ and p: SL₂(ℝ) → PSU(1,1) the Cayley conjugation of §1.6 followed by the quotient.
- For an imaginary quadratic field K and the Hermitian form diag(1, −1, …, −1) over K, 𝐆 = SU(V) over ℚ has 𝐆(ℝ) ≅ SU(1,n), and the image of SU(1,n; 𝒪_K) — the Picard modular group — is arithmetic.
- Mostow's lattices (Mostow1980 Theorem 17.3, line 3089) and the non-cocompact lattices of DeligneMostow1986 line 151 to line 152 in PU(1,2) are not arithmetic.

### 11.2 Arithmetic subgroups are lattices

Prove that every arithmetic Γ ⊂ G is a lattice, cocompact if and only if 𝐆 is ℚ-anisotropic (WitteMorris2015 line 1896 to line 1898; BaldiUllmo2023 line 336 to line 339). Apply AdelicAlgebraicGroups §3.4 to 𝐆(ℤ) in 𝐆(ℝ), pass to the finite-index subgroup meeting 𝐆(ℝ)°, push forward along p (discrete image because the kernel is compact, finite covolume by Weil's formula of VonNeumannAlgebras Layer 9), and use §5.1 for commensurability. *Needs:* §5.1; AdelicAlgebraicGroups §3.4 (S-arithmetic subgroups are lattices; cocompactness criterion); VonNeumannAlgebras Layer 9.

**Checks.**

- The Picard modular group is not cocompact: the vector (1, 1, 0, …, 0) is isotropic over K.
- For a CM field K with totally real subfield K⁺ ≠ ℚ and a Hermitian form of signature (1,n) at one real place of K⁺ and definite at the others, the corresponding arithmetic group is cocompact.
- A ℚ-group with compact real points, such as the special unitary group of a definite Hermitian form, admits no continuous surjection onto the noncompact G, and its arithmetic subgroups are finite: the surjectivity of p is needed.

### 11.3 The Shimura datum of an arithmetic lattice

Construct, for an arithmetic Γ with ℚ-simple 𝐆, the adjoint group 𝐆^ad with 𝐆^ad(ℝ) = G × C (C compact, through p), the homomorphism h₀: S → 𝐆^ad_ℝ, h₀(z) = ([diag(1, z/z̄, …, z/z̄)], 1), where diag(1, z/z̄, …, z/z̄) ∈ U(1,n) (z ↦ z/z̄ is the algebraic homomorphism S → U(1)) and its class in PGL_{n+1}(ℂ) is that of diag(z̄, z, …, z), a matrix that lies in U(1,n) only for |z| = 1; and X = the 𝐆^ad(ℝ)-conjugacy class of h₀. Prove that (𝐆^ad, X) is a pure Shimura datum in the sense of ShimuraVarieties §P.1; that X is connected and the orbit map identifies it with B biholomorphically for the complex structure of ShimuraVarieties §P.2; and that for every compact open K_f ⊂ 𝐆^ad(𝔸_f) the connected components of the analytic Shimura variety of level K_f are quotients Γ_a^eff\B with Γ_a^eff arithmetic and commensurable with Γ, neat when K_f is neat (MilneSVI line 1686 to line 1689; BaldiUllmo2023 Remark 3.1.11, line 450 to line 454, and §3.2, line 486 to line 506). *Needs:* §§1.4, 11.1; ShimuraVarieties §§P.1, P.2, 0.4, 1.2; AdelicAlgebraicGroups §3.4 (`Reduction.levelArithmetic`).

**Checks.**

- h₀(i) = [diag(1, i/(−i), …, i/(−i))] = [diag(1, −1, …, −1)] acts on B by w ↦ −w, the geodesic symmetry at 0, whose conjugation is a Cartan involution (axiom SV2).
- Ad(h₀(z)) acts on the holomorphic tangent space at 0 by z/z̄, type (−1,1) (axiom SV1); the conjugate choice [diag(1, z̄/z, …, z̄/z)] acts by z̄/z and gives the opposite complex structure.
- For the Picard modular group, (𝐆^ad, X) is the adjoint datum of PELModuli §M5.5's unitary datum of signature (1,n) over K.

### 11.4 Comparison with the Baily–Borel compactification

Prove that for every compact open K_f and component group Γ_a^eff of §11.3, the identity of X_{Γ_a^eff} extends to a unique isomorphism from S*_{Γ_a^eff} onto the corresponding component of the Baily–Borel compactification of ShimuraVarieties §2.7, restricting to the algebraization of ShimuraVarieties §§1.2, 3.3 and 3.5 on S_{Γ_a^eff}; and that for an arbitrary arithmetic Γ and a component group Γ_c commensurable with it, the finite morphisms S*_{Γ∩Γ_c} → S*_Γ and S*_{Γ∩Γ_c} → S*_{Γ_c} of §10.6 relate S*_Γ to that Baily–Borel compactification (MilneSVI Theorem 3.12, line 1686, and Remark 3.13, line 1722 to line 1727; BailyBorel1966 Theorem 10.11, uncertified; BaldiUllmo2023 line 457). Both compactifications are normal and add finitely many points to X_{Γ_a^eff} (Mok2012 line 123 to line 128 for the Baily–Borel boundary of an arithmetic ball quotient), so §10.5 applies. *Needs:* §§10.5–10.6, 11.3; ShimuraVarieties §§1.2, 2.7, 3.3, 3.5.

**Checks.**

- PSL(2,ℤ): both compactifications are X(1) = ℙ¹.
- For a Picard modular surface the Baily–Borel boundary and ∂ are both the set of cusp classes, of codimension 2.
- For a non-arithmetic Γ (DeligneMostow1986 line 151 to line 152) there is no Shimura datum, while S*_Γ exists by §9.5.

### 11.5 The Borel embedding

Prove that the open embedding of B into the affine chart z₀ ≠ 0 of ℙⁿ (§1.3) is the Borel embedding of X into its compact dual for the datum of §11.3, G-equivariant for the action of G on ℙⁿ through PGL_{n+1}(ℂ) (ShimuraData §3.8; BaldiUllmo2023 line 533 to line 540). *Needs:* §§1.3, 11.3; ShimuraData §3.8.

**Checks.**

- n = 1: the disc in the Riemann sphere.
- The boundary sphere is the real hypersurface {⟨z,z⟩ = 0} of ℙⁿ.
- In the Siegel model the embedding is 𝔖 ⊂ ℂⁿ ⊂ ℙⁿ in the chart Z₀ ≠ 0, and 𝔖 is the set of lines on which the Hermitian form Im(Zₙ conj(Z₀)) − |Z′|², of signature (1,n), is positive.

### Examples

The Picard modular groups PU(1,n; 𝒪_K) are the basic non-cocompact arithmetic examples; their quotients for n = 2 are the Picard modular surfaces of PELModuli. Mostow's and Deligne–Mostow's lattices for n = 2, 3 are the reason Layers 8–10 do not route through Shimura varieties.

### Dependencies

Layers 1, 5, 9 and 10; AdelicAlgebraicGroups §3.4; VonNeumannAlgebras Layer 9; ShimuraVarieties §§P.1, P.2, 0.4, 1.2, 2.7, 3.3, 3.5; PELModuli §M5.5; ShimuraData §3.8.

## Layer 12: Totally geodesic subvarieties and the Ax–Schanuel setting

Γ is a lattice, S_Γ its ball quotient with φ_Γ, and π: B → S_Γ^an the uniformising map of §10.4.

### 12.1 Γ-special sub-balls and totally geodesic subvarieties

Define a Γ-special sub-ball as a sub-ball X_H = 𝔹(W) of dimension m ≥ 1 such that Γ_H = Γ ∩ H_W has image r_W(Γ_H) a lattice in Aut(X_H) ≅ PU(1,m); a Γ-special subvariety of S_Γ as the image π(X_H) of a Γ-special sub-ball, with its reduced structure; and a totally geodesic subvariety of S_Γ as an irreducible closed subvariety W ⊂ S_Γ of dimension at least 1 such that every irreducible component of π⁻¹(W^an) has totally geodesic regular locus (BaldiUllmo2023 line 49 to line 50, Definition 3.1.6, line 421 to line 423, Definition 3.1.13, line 468 to line 473). *Needs:* §§3.1, 10.4; ComplexKahlerGeometry K3 (irreducible components of π⁻¹(W^an)); RiemannianGeometry R5a.

- For torsion-free Γ, W is totally geodesic exactly when W^reg is totally geodesic in the Kähler manifold (X_Γ, ω_Γ).
- Being Γ-special depends only on the Γ-orbit of X_H, and is invariant under passing to a subgroup of finite index.
- Γ_H is a lattice in H_W exactly when r_W(Γ_H) is a lattice in PU(1,m), the kernel of r_W being compact.

**Checks.**

- W = S_Γ is totally geodesic and Γ-special, with H = G and Γ_H = Γ.
- Points are excluded by dim W ≥ 1, although every point is the image of a sub-ball of dimension 0.
- A preimage component that is a smooth curve not contained in an affine complex line, such as {w₂ = w₁²} ∩ B, has regular locus that is not totally geodesic (§3.2); a subvariety with such a preimage component is not totally geodesic.

### 12.2 Γ-special subvarieties are algebraic and totally geodesic

Prove that for a Γ-special sub-ball X_H of dimension m: π(X_H) is closed in S_Γ^an and is W^an for an irreducible closed subvariety W ⊂ S_Γ of dimension m; the map r_W(Γ_H)\X_H → X_Γ is the analytification of a finite morphism j: S_{Γ_H} → S_Γ with image W, birational onto W, so that S_{Γ_H} is the normalization of W; j extends to a finite morphism S*_{Γ_H} → S*_Γ sending ∂ into ∂; and W is totally geodesic, the irreducible components of π⁻¹(W^an) being the translates γX_H (BaldiUllmo2023 Corollary 3.4.6, line 686 to line 702, line 433 to line 434 and line 474). Reduce to neat Γ by §§6.4 and 10.6; algebraicity of j is §10.3 applied to S_{Γ_H} (quasi-projective by §9.5 applied in dimension m); the extension sends cusp points of Γ_H to cusp points of Γ because the monodromy is parabolic (§10.2), which makes j proper, hence finite; birationality holds because X_H ∩ γX_H, γ ∉ Γ_H, are proper sub-balls (§3.4), and they form a locally finite family since the translates γX_H are the irreducible components of the closed analytic set π⁻¹(W^an). *Needs:* §§3.1, 3.4, 9.5, 10.2–10.3, 10.6; ComplexComparisonPartII §C4.1 (images of proper maps); AlgebraicModuliForArithmeticGeometry §5.4.

**Checks.**

- m = n: W = S_Γ and j is the identity.
- For a neat subgroup of the Picard modular group over ℚ(i) and the sub-ball {w₂ = 0}, Γ_H contains a subgroup of finite index in the image of U(1,1; ℤ[i]) × U(1; ℤ[i]), an arithmetic lattice, and W is a modular curve on the Picard surface.
- For a sub-ball whose stabiliser in Γ is trivial (m ≥ 1), r_W(Γ_H) is not a lattice and the sub-ball is not Γ-special.

### 12.3 Totally geodesic subvarieties are Γ-special

Prove that every totally geodesic subvariety W ⊂ S_Γ of dimension m ≥ 1 is Γ-special: every irreducible component of π⁻¹(W^an) is a sub-ball X_H of dimension m, and r_W(Γ ∩ H_W) is a lattice in PU(1,m) (BaldiUllmo2023 line 135 to line 137, Theorem 1.3.2, line 151 to line 152, and Corollary 5.5.2, line 1346 to line 1352). Components are sub-balls by §3.3; r_W(Γ_H) is discrete because the kernel of r_W is compact; its quotient has finite volume because, after passing to a neat subgroup, the closure of W ∩ X_Γ in X^M is a compact analytic subset not contained in D (§9.4), of finite ω-volume by §8.5, and r_W(Γ_H)\X_H maps onto W^reg, generically injectively, with ω restricting to the form of X_H (§3.1); §5.3 in dimension m concludes. *Needs:* §§3.1, 3.3, 5.3, 6.4, 8.5, 9.4, 12.1.

**Checks.**

- n = 1: the only totally geodesic subvariety is S_Γ itself.
- For non-arithmetic Γ and n ≥ 2, BaldiUllmo2023 Theorem 1.2.1 (line 59) asserts that only finitely many such W are maximal; this roadmap supplies the objects of that statement, not its proof.
- The image of a sub-ball whose stabiliser is not a lattice is not closed algebraic, so it is not a subvariety and there is no contradiction with the theorem.

### 12.4 Algebraic subvarieties of 𝔹ⁿ × S_Γ

Define an algebraic subvariety of B × S_Γ as an irreducible component of (B × S_Γ^an) ∩ Y^an, for a closed subvariety Y ⊂ ℙⁿ × S_Γ and the Borel embedding B ⊂ (ℙⁿ)^an (§11.5), and Π as the graph of π. Prove that algebraic subvarieties are closed irreducible analytic subsets of B × S_Γ^an; that Π is a closed irreducible analytic subset of pure dimension n, biholomorphic to B by the first projection; and that for every algebraic subvariety W and every irreducible component U of W ∩ Π, dim U ≥ dim W − n, that is codim U ≤ codim W + codim Π in B × S_Γ^an (BaldiUllmo2023 Theorem 1.2.2, line 91 to line 97, which compares these codimensions). For torsion-free Γ the ambient space is a manifold and the inequality is the intersection inequality, from Krull's height theorem in the Noetherian analytic local rings; for general Γ pull back along the finite map B × S_{Γ′} → B × S_Γ of §10.6, under which Π_Γ is the union of the translates (1 × f)Π_{Γ′}, f ∈ Γ/Γ′. *Needs:* §§10.4, 10.6, 11.5; ComplexComparisonPartII §§C−1.1, C0.6; ComplexKahlerGeometry K3 (Noetherian analytic local rings of dimension n); Mathlib `Ideal.height_le_spanFinrank` (Mathlib/RingTheory/Ideal/KrullsHeightTheorem.lean:285).

**Checks.**

- n = 1, W = B × {s}: the components of W ∩ Π are the points (x, s) with π(x) = s, and dim U = 0 = dim W − n.
- W = B × S_Γ: U = Π, and dim U = n = 2n − n.
- W = {x₀} × S_Γ: U = {(x₀, π(x₀))}, of dimension 0 = n − n.

### Examples

For the Picard modular surface over ℚ(i), the images of the sub-balls {w₂ = 0} and {w₁ = 0} are Γ-special curves; in the Ax–Schanuel inequality of BaldiUllmo2023 line 91 to line 95, the atypical case is codim U < codim W + n.

### Dependencies

Layers 3, 5, 6, 8, 9, 10 and 11; ComplexKahlerGeometry K3; ComplexComparisonPartII §§C−1.1, C0.6, C4.1; AlgebraicModuliForArithmeticGeometry §5.4; Mathlib Krull's height theorem.

## Downstream consumers

- **A roadmap on special subvarieties of non-arithmetic ball quotients and Ax–Schanuel** (BaldiUllmo2023 Theorem 1.2.1, line 59, Theorem 1.2.2, line 91, and Theorem 3.1.12, line 455): it consumes S_Γ, π, the uniqueness of §10.4, totally geodesic and Γ-special subvarieties (§§12.1–12.3) and algebraic subvarieties of 𝔹ⁿ × S_Γ (§12.4). Its Hodge-theoretic realization of S_Γ uses the complex variation of Hodge structure given by the conjugation representation of §1.2.
- **ShimuraCompactifications**: in the rank-one unitary case, the toroidal compactification of Layer 8 and the minimal compactification S*_Γ of Layer 9 are the targets of its boundary comparisons, and Mok2012 Theorem 1 (line 476) is the non-arithmetic toroidal model.
- **A ComplexKahlerGeometry Part II on hyperbolicity**: ball quotients are the standard complete Kähler–Einstein manifolds of negative curvature and the examples of hyperbolicity (Deng2020 Corollary C, line 136). ComplexKahlerGeometry itself is a supplier here, so only a later part can consume this roadmap.
- **Roadmaps after ShimuraVarieties and PELModuli treating Picard modular surfaces** (for instance ShimuraVarietiesPartII): Picard modular surfaces as arithmetic ball quotients, through §11.4. ShimuraVarieties and PELModuli themselves are suppliers.
- **Roadmaps on rank-one locally symmetric spaces, hyperbolicity of moduli and Margulis's commensurability criterion** (BaldiUllmo2023 Theorem 2.4.3, line 361): they consume lattices, cusps and neat subgroups (Layers 5–6) and the arithmetic bridge (Layer 11).

## References

- **BaldiUllmo2023**: G. Baldi, E. Ullmo, *Special subvarieties of non-arithmetic ball quotients and Hodge theory*, arXiv 2005.03524v4; Theorems 1.2.1–1.2.2, 1.3.2, Definitions 3.1.3–3.1.14, Theorem 3.1.12, §§3.2–3.4, Theorem 3.4.3, Corollary 3.4.6, Corollary 5.5.2.
- **Mok2012**: N. Mok, *Projective algebraicity of minimal compactifications of complex-hyperbolic space forms of finite volume*, Progress in Mathematics 296 (2012), read in the HKU IMR preprint IMR2009-4; §§1.1–1.3, Proposition 1, Theorem 1, Theorem 2, Main Theorem.
- **Kiernan1972**: P. Kiernan, *Extensions of holomorphic maps*, Trans. Amer. Math. Soc. 172 (1972), 347–355; §2, Theorems 1–2.
- **Deng2020**: Y. Deng, *Big Picard theorems and algebraic hyperbolicity for varieties admitting a variation of Hodge structures*, Épijournal de Géométrie Algébrique 7 (2023), arXiv 2001.04426v5; Theorem A, Corollary C.
- **MilneSVI**: J. S. Milne, *Introduction to Shimura varieties*, revised 2017; Theorem 3.12, Remark 3.13, Theorem 3.14, Lemma 3.15, Corollary 3.16.
- **WitteMorris2015**: D. Witte Morris, *Introduction to Arithmetic Groups*, arXiv math/0106063v6; Definitions 4.1.9, 4.1.16, Propositions 4.1.11, 4.7.4, 4.7.7, Corollary 4.7.5, Theorems 4.7.10, 4.8.2, 4.8.4, Definition 5.1.19.
- **Mostow1980**: G. D. Mostow, *On a remarkable class of polyhedra in complex hyperbolic space*, Pacific J. Math. 86 (1980); Theorem A, Theorem 17.3.
- **DeligneMostow1986**: P. Deligne, G. D. Mostow, *Monodromy of hypergeometric functions and non-lattice integral monodromy*, Publ. Math. IHÉS 63 (1986); introduction and §14.
- **Borel1972**: A. Borel, *Some metric properties of arithmetic quotients of symmetric spaces and an extension theorem*, J. Differential Geom. 6 (1972); Theorem A (uncertified).
- **BailyBorel1966**: W. L. Baily, A. Borel, *Compactification of arithmetic quotients of bounded symmetric domains*, Ann. of Math. 84 (1966); Theorem 10.11 (uncertified).
- **SiuYau1982**: Y.-T. Siu, S.-T. Yau, *Compactification of negatively curved complete Kähler manifolds of finite volume*, Annals of Mathematics Studies 102 (1982) (uncertified).
- **Cartan1957**: H. Cartan, *Quotient d'un espace analytique par un groupe d'automorphismes* (1957), pp. 90–102 (uncertified).
- **Goldman1999**: W. M. Goldman, *Complex Hyperbolic Geometry*, Oxford (1999), Ch. 3 (uncertified).
- **Raghunathan1972**: M. S. Raghunathan, *Discrete Subgroups of Lie Groups*, Springer (1972), Ch. VIII and Ch. XIII (uncertified).
- **Borel1969**: A. Borel, *Introduction aux groupes arithmétiques*, Hermann, Paris (1969); §17, Corollary 17.7 (uncertified).
- **Alperin1987**: R. C. Alperin, *An elementary account of Selberg's lemma*, Enseign. Math. 33 (1987), pp. 269–273 (uncertified).
