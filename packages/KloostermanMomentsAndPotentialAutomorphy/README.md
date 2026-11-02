# Roadmap: symmetric power moments of Kloosterman sums and their potential automorphy

**Summary.** Assemble the symmetric power moments of rank-two Kloosterman sums over all finite
fields into generating series `Z_k(p; T)`, realize them cohomologically, and prove the theorems of
Fresán, Sabbah and Yu: `Z_k(p; T)` is an integer polynomial of known degree whose reciprocal roots
have weights `0`, `k` and `k + 1`; the middle factors are the Euler factors of a motive `M_k` over
`ℚ` of weight `k + 1` whose Hodge numbers are all `0` or `1` and are computed explicitly; the
`ℓ`-adic realizations of `M_k` form a regular, polarized, weakly compatible system, hence are
potentially automorphic by Patrikis–Taylor; and the completed moment `L`-functions continue
meromorphically with the functional equations `Λ_k(s) = Λ_k(k + 2 − s)` for odd `k` (Theorem 1.2)
and `Λ_k(s) = ε_k Λ_k(k + 2 − s)` for even `k`, with an Euler factor, conductor exponent and sign at
`2` that are shown to exist (Theorem 1.3). The route goes through the characteristic-zero
Kloosterman connections of every rank `r ≥ 2`, their exponential mixed Hodge theory, explicit bases
and compactifications, the moment hypersurfaces `K_{r,k}` and their integral models, the local
Galois structure at every odd prime by Picard–Lefschetz theory, and the gamma and epsilon factors.
The finite sums, the `ℓ`-adic Kloosterman sheaf and its Deligne bound, the rigid Kloosterman
`F`-isocrystal and the general Hodge-module machinery are imported from the roadmaps that own them.

## Scope and ownership

This roadmap owns:

- the symmetric-power trace `h_k(t, d)`, the rank-two symmetric power moments `m₂ᵏ(q)` and their
  generating series `Z_k(p; T)` (Layer 0);
- the weight-zero normalization of the Kloosterman sheaves of every rank `r ≥ 2`, the facts about
  them not stated by their constructor (one unipotent Jordan block at `0`, geometric
  irreducibility, the rank-two symplectic pairing), their geometric and arithmetic monodromy groups
  in every characteristic, the cohomology of `Sym^k Kl₂` over `𝔽̄_p`, and the integrality and
  character independence of the moments (Layer 1);
- the algebraic Kloosterman connections `Kl_r` of every rank over fields of characteristic zero,
  their cyclic covers, symmetric powers, local structure, differential Galois groups and the Bessel
  sign dictionary (Layer 2);
- the tensor potentials `f_{r,k}`, the signed symmetric projector, the Thom–Sebastiani
  identification, middle de Rham cohomology of `Sym^k Kl_r` and the inverse Fourier Kloosterman
  objects (Layer 3);
- classicality of the moment cohomology, the moment hypersurfaces `K_{r,k}`, the hypersurface
  realization of middle cohomology, the Nori motive `M_{r,k}` and the finite-field hypersurface
  comparison (Layer 4);
- the explicit rank-two frame, formal structure, intermediate extensions, inverse Fourier local
  structure, cohomology dimensions and de Rham bases (Layer 5);
- the signed-permutation fan, the nondegenerate compactification of `t·g`, Newton weights, the
  Hodge filtration on the explicit bases and the two Hodge-number tables (Layer 6);
- the integral boundary geometry, the bad-prime quadratic singularities, the resolution of the even
  moment hypersurfaces and the Galois realizations `V_{k,ℓ}` of `M_k` (Layer 7);
- the middle moment polynomials, the degree formulas, the local Galois structure of `V_{k,ℓ}` at
  odd and even primes, the Euler factors and the conductors (Layer 8);
- the identification of the geometric and filtered hypotheses of the `p`-adic comparison of
  PadicDifferentialEquationsAndRigidCohomology §RD.7.21 and §RD.7.22 for the moment motives, and the
  regular polarized compatible systems (Layer 9);
- the determinant characters, gamma factors, epsilon factors and completed `L`-functions of the
  moment motives (Layer 10);
- the application of potential automorphy, the transport of local factors through
  semisimplification, the odd root number and the two functional equations (Layer 11).

What is stated elsewhere is consumed by section:

- CongruenceSpectralGap §4.2a owns the raw product-fibre hyper-Kloosterman sum `hyperKloosterman`
  over every finite field and coefficient ring, its scaling and field-isomorphism laws and its
  comparison with the eliminated-variable sum `Σ_{x ∈ (Fˣ)^n} ψ(Σᵢ xᵢ + a/Πᵢ xᵢ)`. Layer 0 uses
  its rank-two case; the Lean statements restate that rank-two sum in eliminated form only so that
  the headline theorems are statable without importing another roadmap.
- CongruenceSpectralGap §4.2b owns the Artin–Schreier sheaf `L_ψ`, the curve Euler–Poincaré
  (Grothendieck–Ogg–Shafarevich) formula, the Swan-constancy criterion, and the Kloosterman sheaf
  `Kl_r = R^{r−1}mult_!(L_ψ^{⊠r})` on `𝔾_m` with its concentration, lissity, rank `r`, tameness at
  `0`, Swan conductor one at `∞`, purity of weight `r − 1`, signed trace `(−1)^{r−1}` times the raw
  sum and the Deligne bound. Layer 1 adds only what that section does not state.
- PadicDifferentialEquationsAndRigidCohomology §§RD.6.94–RD.6.98 owns the Kloosterman
  `F`-isocrystal `Kl_{n+1}` for odd `p ∤ n + 1`, its connection, purity and local monodromy, its
  localized Fourier description and the rigid realization of `H¹_{rig,?}(𝔾_m, Sym^k Kl_{n+1})` and
  of the hypersurface formula; §RD.7.20 owns Mieda's `p`-adic Picard–Lefschetz map for ordinary
  quadratic degenerations of unit thickness; §RD.7.21 states the `p`-adic realization of the moment
  motives (FSY Proposition 5.23) with the geometric identifications and comparison isomorphisms as
  hypotheses; §RD.7.21a owns the odd-prime factorization `Z_k = (1 − T)R_k M_k` in rigid
  cohomology; §RD.7.22 states Newton above Hodge and `v_p(c_n) ≥ n(n − 1)` with filtered input
  hypotheses. Layer 9 discharges those hypotheses; it does not restate the conclusions.
- SpringerResolutionAndCharacteristicCycles Layers D and H own differential operators, coherent and
  holonomic `D`-modules, transfer modules, direct and inverse images with their shifts, duality,
  Kashiwara's equivalence, intermediate extension and regular holonomic modules.
- MixedHodgeModulesAndIrregularHodgeTheory owns formal differential modules and the index on
  `𝔾_m` (Layer D), exponential twists `E^f`, Fourier–Laplace transformation, additive convolution and
  the localized Fourier functor (Layer F), pure and mixed Hodge modules and their operations, weights
  and nearby cycles (Layers H.0–H.1), exponential mixed Hodge structures, the projector `Π`, the
  exponential weight filtration and the de Rham fibre (Layer E), the irregular Hodge filtration and
  its strictness (Layer I), the classical subcategory and the agreement of filtrations (Layer C),
  exponential pair cohomology and its Künneth and duality theorems (Layer P), the classicality of
  `t·g` and the zero-locus comparison (Layer G), Fourier costalks and weights at infinity (Layer T),
  and the logarithmic and Newton descriptions of the irregular filtration (Layer N).
- ComplexComparisonPartII §§C5.6–C5.7 owns regular singular connections, the canonical logarithmic
  extension and the logarithmic de Rham comparison on curves.
- EtaleCohomologyFoundations (finite and rational étale coefficients, compact supports, base change,
  topological invariance, duality, smooth purity, projective bundles and blow-ups),
  InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3 (the rational Grothendieck–Lefschetz trace
  formula), EtaleDualityAndPerverseSheaves §3.3 (rational perverse coefficients) and
  DeligneWeightsAndPurity §§7.12, 8.24 (weights of `H_c`, `H` and the middle image; the weight
  spectral sequence of a normal crossings compactification) are consumed as stated.
- SchemeAndStackFoundations §2.11 (the Artin–Schreier sequence), §4.11 (modifications and strict
  transforms) and §4.17 (strict normal crossings divisors), and ShimuraCompactifications
  §§C0.15–C0.18 (toric schemes of finite fans over every commutative ring, properness by the support
  criterion and the integral toric boundary) supply the scheme geometry of the integral models.
- LefschetzPencilsAndVanishingCycles §§2.4–2.8 (ordinary quadratic points, their vanishing cycles and
  the Picard–Lefschetz formula), the Fresán–Sabbah–Yu discriminant computation in the Examples of
  Layer LPV.2, and §6.6 (vanishing cycles of an isolated singularity of a regular total space,
  including the nonordinary quadratic singularities in residue characteristic two) supply the local
  Galois structure at bad primes.
- MotivesAndAlgebraicCycles Layer 5 owns the rational Nori category, its tensor structure, pair
  motives and its Betti, de Rham and étale realizations.
- ArithmeticGaloisRepresentations owns semisimplification (§1.7), local factors, purity of
  Weil–Deligne representations and purity from a pure graded (§§2.5–2.6), local constants (§2.7),
  conductors (§3.3), recognition by Frobenius polynomials (§5.3) and polarized representations
  (§7.4).
- PotentialModularityAndCompatibleSystems §§1.5–1.6 and §1.15 own polarized weakly compatible
  systems, regularity, purity and the Hodge recipe for archimedean factors; ModularityAndLanglandsExtensions
  §2.42 owns simultaneous potential automorphy of pure regular polarized systems (Patrikis–Taylor)
  and §2.49 their strict purity, meromorphic continuation and functional equations.
- CohomologyComparisons §2.13 (the filtered de Rham comparison), §§3.4–3.5 (the crystalline
  comparison over a discretely valued base) and §§4.3–4.4 (the semistable comparison), and
  PadicHodgeTheory §3.2 (filtered spaces and the Hodge–Tate sign dictionary) supply the period
  comparisons fed into §RD.7.21.

The companion roadmap KloostermanSheavesAndBesselIsocrystals consumes Layers 1 and 2 in every rank,
including the weight-zero normalization, the monodromy table and the Bessel sign dictionary; it
keeps the reductive-group Bessel constructions and the `F`-isocrystal companion theorem.

## Conventions

- `r = n + 1 ≥ 2` is the rank of a Kloosterman object and `k` the symmetric-power exponent. All
  rank-`r` monodromy statements assume `r ≥ 2`; the rank-two arithmetic targets assume `k ≥ 1`
  except where the zeroth moment is discussed explicitly.
- The raw Kloosterman sum has no prefactor. The trace of the rank-`r` sheaf is `(−1)^{r−1}` times
  the raw sum. In rank two the Frobenius eigenvalues satisfy `α + β = −Kl₂(a; q)` and `αβ = q`, and
  symmetric power moments use `h_k(α + β, αβ) = Σᵢ αⁱβ^{k−i}`, never `(α + β)^k`.
- Frobenius is geometric throughout. `ℚ_ℓ(1)` has geometric Frobenius `q⁻¹`, so the Tate twist
  `(−1)` multiplies Frobenius eigenvalues by `q` and raises weights by two. The weight-zero
  normalization of rank `r` fixes one square root `c` of `p` and uses `c^m` over `𝔽_{p^m}`.
- Hodge–Tate weights follow Fresán–Sabbah–Yu: the cyclotomic character has Hodge–Tate weight `−1`
  and weights are the jumps of the de Rham filtration. PadicHodgeTheory §3.2 uses `HT(χ_cyc) = +1`,
  so a multiset of weights here is the negative of the supplier's; `D_dR`, its filtration and the
  representation are unchanged.
- Exponential connections are `E^f = (O, d + df)` as left `D`-modules, as in
  MixedHodgeModulesAndIrregularHodgeTheory Layer F. The cyclic module equation of a connection and
  the scalar equation of a horizontal solution have different signs; §2.6 records both.
- Middle cohomology is always the image of compact-support cohomology in ordinary cohomology,
  with its two comparison maps. For rank `r` the middle motive has weight `(r − 1)k + 1` and a pairing
  into `ℚ(−(r − 1)k − 1)`; the hypersurface realization lives in degree `(r − 1)k − 1` before the Tate
  twist `(−1)`.
- Mixed Hodge structures are Tau Ceti's `TauCeti.Hodge.MixedHodgeStructure` with a rational model,
  restricted to finite-dimensional graded-polarizable objects; no second Hodge carrier is built.
- `d_k = ⌊(k − 1)/2⌋ − δ_{4∣k}` is the dimension of the rank-two middle motive for `k ≥ 1`; it is never
  evaluated at `k = 0` through truncated subtraction.
- `sf(n)` is the square-free part of `n` (the product of the primes with odd valuation in `n`), and
  `oddRad(n)` the product of the distinct odd primes dividing `n`.
- `Θ⁺_p` and `Θ⁻_p` are the sets of odd integers `a ≥ 1` with `ap ≤ k` and `v_p(a)` odd, respectively
  even; `|Θ⁺_p| + |Θ⁻_p| = ⌊k/(2p) + 1/2⌋`, and `Θ⁺_2 = ∅`.
- The `L`-function normalization is arithmetic: the Euler factor at `p` is evaluated at `T = p^{−s}`,
  and the functional equations relate `s` and `k + 2 − s`. The gamma factor used in the completed
  functions is `G_d(s) = π^{−ds/2} Π_{j=1}^d Γ((s − j)/2)`; the product of the standard factors
  `Γ_ℝ(s − j)` equals `π^{d(d+1)/4} G_d(s)`.

## Exact supplier contracts

### From Mathlib

- `AddChar` (additive characters; the trivial character is the constant one),
  `AddChar.sum_eq_ite` (orthogonality over a finite group into a domain) and
  `AddChar.compAddMonoidHom`.
- `ZMod.stdAddChar` (the character `x ↦ exp(2πi x/N)` of `ZMod N`), `GaloisField` with
  `GaloisField.card` (`𝔽_{p^m}` has `p^m` elements for `m ≠ 0`), `Algebra.trace`,
  `FiniteField.trace_to_zmod_nondegenerate` and `FiniteField.algebraMap_trace_eq_sum_pow`.
- `SymmetricPower` (the symmetric tensor power of a module over a commutative semiring, as the
  quotient of the tensor power by the permutation relations): the underlying module of a symmetric
  power of a connection, not its connection.
- `PowerSeries`, `PowerSeries.exp`, `PowerSeries.subst` (substitution of a series with zero constant
  coefficient), the inverse of a power series with nonzero constant coefficient over a field,
  `Polynomial.roots` and the coercion of polynomials to power series.
- `LSeries`, `LSeriesSummable`, `MeromorphicNFOn` (meromorphic functions in normal form, whose
  values are determined by the germs), `Complex.Gamma`, `legendreSym` and `padicValNat`.
- `MvPolynomial.hsymm` (complete homogeneous symmetric polynomials), which `h_k` expresses through
  the elementary symmetric functions in two variables.
- `Polynomial.Chebyshev.U` (Chebyshev polynomials of the second kind).

### From Tau Ceti

- `TauCeti.Hodge.MixedHodgeStructure` (integral, rational and complex models with a finite rational
  weight filtration, a finite complex Hodge filtration and pure graded pieces), its strictness
  theorems `TauCeti.Hodge.MixedHodgeStructure.Hom.range_inf_F_eq_map_F` and
  `TauCeti.Hodge.MixedHodgeStructure.Hom.range_inf_WQ_eq_map_WQ`, and the Tate structures
  `TauCeti.Hodge.tate`. These carry every Hodge structure of Layers 4 and 6. Finite dimension and
  graded polarizability are added conditions.

### From TauCetiRoadmap.CongruenceSpectralGap

- §4.2a: `hyperKloosterman F k ψ r` and its eliminated-variable comparison; at `k = 2` this is the
  rank-two sum `Kl₂(r; ψ)` of §0.2.
- §4.2b: `L_ψ` with trace `ψ ∘ Tr` under geometric Frobenius; the curve Euler–Poincaré formula
  `χ_c(U, L) = rank(L)χ_c(U) − Σ deg(x)·Sw_x(L)`; the Kloosterman sheaf `Kl_r` with the properties
  listed in Scope and ownership, for every characteristic, every `r ≥ 1` and every nontrivial `ψ`.
  Assumed: the sheaf is the actual compact direct image along multiplication, and its trace sign is
  `(−1)^{r−1}`.

### From TauCetiRoadmap.PadicDifferentialEquationsAndRigidCohomology

- §§RD.6.94–RD.6.98 as listed in Scope and ownership, used at odd `p` in rank two (`p ∤ 2`).
- §RD.7.20 (Mieda), §RD.7.21 and §RD.7.21a, §RD.7.22: the `p`-adic realization of `M_k`, the
  odd-prime boundary factorization and Newton above Hodge, each with its stated hypotheses. Layer 9
  supplies the geometric identifications and filtered data those sections assume.
- What PadicDifferentialEquationsAndRigidCohomology must provide (gap:higher-thickness-picard-lefschetz):
  the conclusions of §RD.7.20 (strict semistability after a resolution over `O_L`,
  `L = ℚ_p(√−p)`, and an injective Frobenius-compatible rigid-to-de Rham map compatible with the
  restriction to the boundary strata) for a proper flat `ℤ_p`-scheme whose special fibre is smooth
  outside finitely many ordinary quadratic points with local equations `Q − u·(√−p)^{2e}` over
  `O_L`, `u` a unit and `e ≥ 1` arbitrary.

### From TauCetiRoadmap.SpringerResolutionAndCharacteristicCycles

- Layer D (the sheaf of differential operators, good filtrations) and Layer H (transfer modules,
  direct and inverse images with the normalization `f† = Lf*[dim Y − dim Y′]`, duality `𝔻`,
  Kashiwara's equivalence, holonomic modules and their finite length, intermediate extension
  `j_!*` with its no-boundary-subquotient characterization, regular holonomic modules), over every
  field of characteristic zero.

### From TauCetiRoadmap.MixedHodgeModulesAndIrregularHodgeTheory

- Layer D: formal differential modules, their irregularity and ramified exponential decomposition,
  and the index formula `dim H¹_dR(𝔾_m, E) − dim H⁰_dR(𝔾_m, E) = irr_∞(E)` for a connection regular
  at `0`.
- Layer F: `E^f`, the identities `E^f ⊗ E^g = E^{f+g}`, `𝔻E^f = E^{−f}`, `h⁺E^f = E^{f∘h}`; the
  Fourier–Laplace transform with kernel `E^{tτ}` and its inverse; additive convolution; the localized
  Fourier functor `j₀⁺ ∘ FT ∘ j_{0,+}`; Fourier duality.
- Layers H.0–H.1: pure and mixed Hodge modules, their operations, weight bounds, Hodge nearby and
  vanishing cycles, and the curve costalk formula.
- Layers E, I, C: exponential mixed Hodge structures, `Π`, the exponential weight filtration, the
  de Rham fibre, the irregular Hodge filtration and its strict bifiltered realization, and the
  agreement of the irregular and classical filtrations on classical objects (FSY Proposition A.13).
- Layers P and G: ordinary, compact and middle exponential cohomology of a pair with its de Rham
  fibre, Künneth and duality, the middle-degree weight statement, the classicality of `t·g` on
  `𝔸¹ × V` and its `*0`/`!0` variants (FSY Theorem A.24), and the zero-locus comparison
  `H_c^a(𝔸¹ × V, tg) ≅ H_c^{a−2}(K)(−1)`, `H^a(𝔸¹ × V, tg) ≅ H_K^a(V)` (FSY Example A.27).
- Layer T: the Fourier costalk and pure-input Hodge-number formulas, the constant correction of `Π`,
  regular stationary phase at eigenvalue one and the monodromy weights at infinity (FSY
  Theorem A.30, Corollary A.31).
- Layer N: the logarithmic filtration on good and nondegenerate compactifications, filtered
  invariance under the explicit blow-ups, model independence and `E₁` degeneration, and the Newton
  filtration of a Newton-nondegenerate Laurent polynomial with its agreement with the irregular
  filtration.
- What MixedHodgeModulesAndIrregularHodgeTheory must provide (gap:irregular-stationary-phase):
  for a holonomic module `M` on `𝔸¹` whose formal structure at `∞` is a sum of
  `E^{c_i t} ⊗ R_i` with distinct `c_i ∈ ℂ` and `R_i` regular, together with parts of slope
  different from one, the inverse Fourier transform is smooth on `𝔸¹ ∖ {c_i}` and its vanishing cycles
  at each `c_i` are isomorphic, with their monodromy, to the formal regular module `R_i`, with the
  sign convention of the kernel `E^{tτ}`.

### From TauCetiRoadmap.ComplexComparisonPartII

- §C5.6: regular singular connections and the canonical logarithmic extension; §C5.7: the
  logarithmic and compact-support logarithmic de Rham complexes on curves and their comparison maps.

### From TauCetiRoadmap.EtaleCohomologyFoundations, InverseGaloisAndArithmeticFundamentalGroups, EtaleDualityAndPerverseSheaves and DeligneWeightsAndPurity

- EtaleCohomologyFoundations §§F.2.4–F.2.7 (compact supports, Künneth), §F.0.4 (topological
  invariance under universal homeomorphisms), §F.4.5 (rational realization), §F.5 (exceptional
  inverse image and duality), §F.6 (smooth purity and Gysin maps), §F.7 (projective bundles and
  blow-ups), §F.10.1–F.10.2b (Frobenius comparisons).
- InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3: the rational constructible
  Grothendieck–Lefschetz trace formula over every finite field.
- EtaleDualityAndPerverseSheaves §3.3: perverse coefficient extension to rational coefficients;
  §2.3 and §2.8: intermediate extension.
- DeligneWeightsAndPurity §7.12: for `X₀/𝔽_q` smooth and `ℱ₀` lisse and pure of weight `w`,
  `H^i_c` has weights `≤ w + i`, `H^i` weights `≥ w + i`, and the image of `H^i_c → H^i` is pure of
  weight `w + i`; §8.24: the weight spectral sequence of a strict normal crossings compactification.

### From TauCetiRoadmap.SchemeAndStackFoundations and ShimuraCompactifications

- SchemeAndStackFoundations §2.11 (the Artin–Schreier sequence), §4.11 (blow-ups, modifications
  and strict transforms), §4.13 (regular schemes), §4.17 (strict normal crossings divisors).
- ShimuraCompactifications §C0.15 (smooth projective refinements), §C0.16 (toric schemes of finite
  fans over every commutative ring, with base change), §C0.17 (properness by the support criterion
  over every base), §C0.18 (the integral toric boundary of a regular chart is flat with reduced
  geometric fibres).

### From TauCetiRoadmap.LefschetzPencilsAndVanishingCycles

- §§2.4–2.8: ordinary quadratic points, their normal form, nearby and vanishing cycles, the
  discriminant character from the even Clifford centre, and the Picard–Lefschetz formula for a
  proper family; the Examples of Layer LPV.2: the Fresán–Sabbah–Yu orthogonal vanishing line with
  quadratic character of `ℚ_p(√((−1)^{(1+ap)/2}·2ap))`.
- §6.6: for `X` regular, flat of relative dimension `n` over a henselian trait and smooth outside one
  closed point, `RΦ(ℚ_ℓ)` is concentrated in degree `n` and specialization is injective in degree
  `n` when `X` is proper.

### From TauCetiRoadmap.MotivesAndAlgebraicCycles

- Layer 5: the rational Nori category, pair motives, tensor structure, Tate localization, and the
  Betti, de Rham and étale realizations (§§5.3–5.9); §2.7, the étale realization.
- What MotivesAndAlgebraicCycles must provide (gap:nori-weight-filtration): a functorial,
  finite, exhaustive increasing weight filtration on the Nori motives `H^i_c(X)` of varieties over
  `ℚ`, strictly compatible with morphisms, Tate twists and images of rational idempotents, whose
  Betti, de Rham and `ℓ`-adic realizations are the weight filtrations of the corresponding mixed
  Hodge structures and Galois representations (Huber–Müller-Stach, as cited in FSY (3.1), p. 18).
- What MotivesAndAlgebraicCycles must provide (gap:orthogonal-motive-root-number): T. Saito's
  theorem that the global root number of an orthogonal motive over `ℚ` of even weight equals `+1`,
  stated for the motives of even weight that arise from the even-degree cohomology of smooth
  projective varieties over `ℚ` through finite-group projectors and kernels of boundary restriction
  maps and carry a nondegenerate symmetric realization-compatible pairing, with the global additive
  character and measures of §10.3 (Saito-orthogonal, as invoked in FSY §5.3.3, p. 58).

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

- §1.7 (semisimplification and Jordan–Hölder), §2.5 (local factors and Frobenius semisimplification),
  §2.6 (monodromy filtration, purity of Weil–Deligne representations, and purity from a pure graded:
  a `G_K`-stable filtration with pure graded Weil–Deligne representation gives a pure representation
  with the same local `L`-factor), §2.7 (local constants and their invariance under the same
  filtration), §3.3 (`a(r, N) = Sw(r) + dim V − dim (ker N)^{r(I)}`), §5.3 (recognition by Frobenius
  polynomials on a set of density one), §7.4 (polarized representations and their sign).
- What ArithmeticGaloisRepresentations must provide (gap:semisimplification-similitude-form): for a
  field `E` of characteristic zero, an `E`-algebra `A` with an `E`-linear anti-involution `*`, and a
  finite-dimensional `A`-module with a nondegenerate `*`-compatible bilinear form that is symmetric or
  alternating, the semisimplification carries a nondegenerate `*`-compatible form of the same type;
  applied to `E[G_ℚ]` with `g* = χ_cyc(g)^{−k−1}g⁻¹` (Serre-orthogonal, Theorem 4.2.1 and
  Lemma 4.2.4, pp. 9–10).

### From TauCetiRoadmap.CohomologyComparisons and PadicHodgeTheory

- CohomologyComparisons §2.13 (the filtered de Rham comparison over `K` for smooth proper
  varieties), §§3.4–3.5 (the crystalline comparison over a discretely valued base and the
  crystalline representation export), §§4.3–4.4 (the semistable comparison with `φ`, `N` and the
  filtration, and its agreement with the de Rham comparison).
- PadicHodgeTheory §3.2: the filtered linear algebra and the Hodge–Tate sign dictionary.

### From TauCetiRoadmap.PotentialModularityAndCompatibleSystems and ModularityAndLanglandsExtensions

- PotentialModularityAndCompatibleSystems §1.1 (weakly compatible families), §1.5 (polarized
  families), §1.6 (regularity, purity, strictness), §1.15 (`L`-functions and the Hodge recipe for
  archimedean factors, including the real sign on a middle Hodge line).
- ModularityAndLanglandsExtensions §2.42: for pure regular totally odd polarized weakly compatible
  systems over a totally real field, one finite totally real Galois extension makes every polarized
  constituent cuspidal automorphic; §2.49: such systems are strictly pure and their completed
  `L`-functions continue meromorphically with `Λ(R, s) = ε(R, s)Λ(R^∨, 1 − s)`.

## How to read the build

Layer 0 defines the finite sums and series and needs only Mathlib. Layer 1 realizes them in
`ℓ`-adic cohomology on top of CongruenceSpectralGap §4.2b. Layers 2 and 3 build the characteristic-zero
Kloosterman connections in every rank and their exponential cohomology on the `D`-module and Hodge
module suppliers; Layer 4 proves classicality, introduces the moment hypersurfaces and the Nori motive,
and compares with the finite-field side. Layers 5 and 6 specialize to rank two and compute dimensions,
explicit bases, compactifications and Hodge numbers. Layer 7 builds the integral models and the Galois
realizations; Layer 8 computes their local structure, Euler factors and conductors. Layer 9 feeds the
geometric data into the `p`-adic comparison and proves that the realizations form regular polarized
compatible systems. Layer 10 computes determinants, gamma and epsilon factors and defines the
completed `L`-functions; Layer 11 applies potential automorphy and proves the functional equations.
Layer 1 and Layers 2–3 are independent of each other until §4.5 compares them.

## Layer 0: finite sums and symmetric-power moments

This layer defines the symmetric-power traces, the rank-two moments over every finite field of
characteristic `p` and their generating series, with the trace sign and the zeroth moment pinned
down. It uses Mathlib and the rank-two case of CongruenceSpectralGap §4.2a.

### 0.1 Symmetric-power traces

Define `symmetricTrace t d k`, written `h_k(t, d)`, over any commutative ring by `h₀ = 1`, `h₁ = t`
and `h_{k+2} = t·h_{k+1} − d·h_k` (FSY §1.1, p. 2). The API proves the following facts.

- For elements `α, β` of a commutative ring, `h_k(α + β, αβ) = Σ_{i=0}^k αⁱβ^{k−i}`, by induction on
  the recurrence; no root of a polynomial and no division is needed. The right side is Mathlib's
  complete homogeneous symmetric polynomial `MvPolynomial.hsymm` in two variables evaluated at
  `(α, β)`; `h_k` is its expression through the elementary symmetric functions, which is what a trace
  and a determinant provide.
- A ring homomorphism commutes with every `h_k`.
- For an endomorphism `φ` of a free module of rank two over a commutative ring, the trace of the
  induced endomorphism of the `k`-th symmetric power (Mathlib `SymmetricPower`) is
  `h_k(tr φ, det φ)`; this is the universal polynomial identity specialized from the generic matrix.
- `h_k(2x, 1)` is the Chebyshev polynomial of the second kind `U_k` (Mathlib
  `Polynomial.Chebyshev.U`) evaluated at `x`.

**Checks.**

- `h₀(0, 0) = 1`: the constant term is not forced by the arguments.
- `h₂(3, 2) = 3·3 − 2 = 7`, the sum `4 + 2 + 1` over the roots `2, 1`, whereas `3² = 9`; a definition
  by ordinary powers of the trace fails.
- `h_k(2a, a²) = (k + 1)aᵏ`, for instance `h₃(2, 1) = 4`: coincident roots cause no division by
  `α − β`.
- `h₂ = t² − d` and `h₃ = t³ − 2dt`; with `t = −1, d = 2` these give `−1` and `3`, the values used in
  §0.2.

*Needs:* Mathlib commutative rings, `SymmetricPower`, `MvPolynomial.hsymm`, `Polynomial.Chebyshev.U`.

### 0.2 Kloosterman sums and moments

Define `kloostermanSum F ψ a = Σ_{x ∈ Fˣ} ψ(x + a/x)` for a finite field `F`, an additive character
`ψ : F → ℂ` (Mathlib `AddChar`) and `a ∈ F` (FSY (1.1), p. 2). It is the rank-two case of
CongruenceSpectralGap §4.2a's `hyperKloosterman F 2 ψ a` under that section's eliminated-variable
comparison; it is not a second construction. Define `traceChar p m`, the character
`x ↦ exp(2πi·Tr_{𝔽_{p^m}/𝔽_p}(x)/p)` of `GaloisField p m`, as Mathlib's `ZMod.stdAddChar`
composed with `Algebra.trace`. Define the `k`-th moment
`moment p k m = Σ_{a ∈ 𝔽_{p^m}ˣ} h_k(−Kl₂(a), p^m)` with `Kl₂(a) = kloostermanSum` for `traceChar p m`
(FSY §1.1, pp. 2–3). The sign makes `−Kl₂(a)` the sum `α_a + β_a` of the Frobenius eigenvalues
(§1.4), whose product is `p^m`. The API proves the following facts.

- `traceChar p m` is nontrivial for `m ≥ 1` (Mathlib `FiniteField.trace_to_zmod_nondegenerate`), and
  for `m ∣ m′` its composition with the inclusion `𝔽_{p^m} → 𝔽_{p^{m′}}` relates to `traceChar p m′`
  through the transitivity of the trace (Mathlib `FiniteField.algebraMap_trace_eq_sum_pow`).
- For complex `ψ`, `Kl₂(a; ψ)` is real: `x ↦ −x` and `ψ(−y) = conj ψ(y)` exchange the sum with its
  conjugate.
- Replacing `ψ` by `ψ(c·)` for `c ∈ Fˣ` replaces `Kl₂(a)` by `Kl₂(c²a)` (scale `x` by `c`); the moment,
  a sum over all `a`, is unchanged.
- A field isomorphism carrying `ψ` and `a` to `ψ′` and `a′` preserves `Kl₂` and the moments.
- For the trivial character `Kl₂(a) = q − 1` for every `a`, a value excluded from every purity
  statement.
- The zeroth moment is `q − 1`, and the first moment is `−1` for every nontrivial `ψ`: summing
  `ψ(a/x)` over `a ∈ Fˣ` gives `−1`, and then `Σ_x ψ(x) = −1`.

**Checks.**

- Over `𝔽₂` with `ψ(1) = −1`, `Kl₂(1) = ψ(1 + 1) = ψ(0) = 1`, so `−Kl₂(1) = −1`, `d = 2`, and the
  moments for `k = 1, 2, 3` are `h₁ = −1`, `h₂ = 1 − 2 = −1` and `h₃ = −1 + 4 = 3`.
- Over `𝔽₃` with `ψ(1) = e^{2πi/3}`, `Kl₂(1) = ψ(2) + ψ(1) = −1` and `Kl₂(2) = ψ(0) + ψ(0) = 2`; the first
  moment is `1 + (−2) = −1`, agreeing with the general value.
- The zeroth moment over `𝔽₃` is `2`; a definition summing over all `a ∈ 𝔽₃`, including `a = 0`,
  would give `3`.
- With the trivial character over `𝔽₅`, `Kl₂(a) = 4` for every unit and the first moment is
  `−16`, not `−1`; the first-moment value needs `ψ ≠ 1`.

*Needs:* Mathlib `AddChar`, `ZMod.stdAddChar`, `GaloisField`, `Algebra.trace`,
`FiniteField.trace_to_zmod_nondegenerate`, `FiniteField.algebraMap_trace_eq_sum_pow`; §0.1;
CongruenceSpectralGap §4.2a for the identification with `hyperKloosterman`.

### 0.3 The moment generating series

Define `momentSeries p k = exp(Σ_{m ≥ 1} m₂ᵏ(p^m) T^m/m)` in `ℂ⟦T⟧`, written `Z_k(p; T)`, by
substituting the series with zero constant coefficient into Mathlib's `PowerSeries.exp`
(FSY §1.1, pp. 2–3). No analytic convergence is used. The API proves the following facts.

- The constant coefficient is `1`, and `T·Z′ = Z·Σ_{m ≥ 1} m₂ᵏ(p^m) T^m`; equivalently
  `n·c_n = Σ_{j=1}^n m₂ᵏ(p^j) c_{n−j}` for the coefficients `c_n`.
- `[T]Z = m₂ᵏ(p)` and `[T²]Z = (m₂ᵏ(p)² + m₂ᵏ(p²))/2`.
- For `k = 0`, `Z₀(p; T) = (1 − T)/(1 − pT)`, since `m₂⁰(p^m) = p^m − 1`; this series is not a
  polynomial, so polynomiality (§8.2) is a statement about `k ≥ 1` only.
- For `k = 1`, `Z₁(p; T) = 1 − T` for every `p`, by the first-moment value of §0.2.

**Checks.**

- For `p = 2` and `k = 3` the moments over `𝔽₂, 𝔽₄, 𝔽₈` give
  `Z₃(2; T) = (1 − T)(1 + 4T) = 1 + 3T − 4T²`; the coefficient of `T` is `3`, matching §0.2, and the coefficient of `T²` forces
  `m₂³(4) = 2·(−4) − 9 = −17`.
- For `k = 0` the coefficient of `T²` is `p² − p ≠ 0`, and every higher coefficient is nonzero.
- For `p = 3` and `k = 4`, the moments give `Z₄(3; T) = 1 − 10T + 9T² = (1 − T)(1 − 9T)`, whereas for
  `p = 2` they give `Z₄(2; T) = 1 − T`; the two primes have different trivial factors (§8.2).
- For `p = 2` and `k = 12`, `Z₁₂(2; T) = 1 − T − 4096T² + 4096T³ = (1 − T)(1 − 64T)(1 + 64T)`; a
  definition with `(α + β)^k` in place of `h_k` gives a series that is not a polynomial.

*Needs:* Mathlib `PowerSeries`, `PowerSeries.exp`, `PowerSeries.subst`; §0.2.

### Examples

- Over `𝔽₅` with `k = 3`: the moments give `Z₃(5; T) = (1 − T)(1 + 25T)`, matching
  `(1 − T)(1 − (5/3)·5²T)` with the Legendre symbol `(5/3) = −1`.
- Over `𝔽₃` with `k = 5`: `Z₅(3; T) = 1 + 26T − 27T² = (1 − T)(1 + 27T)`.

### Dependencies

Mathlib only, and CongruenceSpectralGap §4.2a for the identification of the rank-two sum.

## Layer 1: Kloosterman sheaves and their moments

This layer works with rational `ℓ`-adic coefficients over finite fields of characteristic `p ≠ ℓ`,
with a coefficient field containing the values of `ψ`. The Kloosterman sheaf `Kl_r` of every rank is
CongruenceSpectralGap §4.2b's; this layer normalizes it, completes its local description,
determines its monodromy, and computes the cohomology of `Sym^k Kl₂`.

### 1.1 The projection presentation and the normalized Kloosterman sheaves

Prove that for `r ≥ 2`, with `f(x, z) = Σ_{i<r} xᵢ + z/Πᵢ xᵢ` on `𝔾_m^{r−1} × 𝔾_m` and `π` the
projection to `z`, the shifted compact direct image `Rπ_! f^*L_ψ[r − 1]` is canonically isomorphic to
CongruenceSpectralGap §4.2b's `Kl_r`, through the isomorphism
`(x, z) ↦ (x₁, …, x_{r−1}, z/Πᵢ xᵢ)` which carries `π` to multiplication, and that the forget-supports
map `Rπ_! → Rπ_*` is an isomorphism here (FSY §1.2, p. 5; §3.2.1, pp. 23–24; XZ §1.1.2, p. 3).

Choose `c ∈ ℚ̄_ℓ` with `c² = p` once, and let `χ_c` be the unramified character of `Gal(𝔽̄_p/𝔽_p)`
with value `c^{−(r−1)}` at geometric Frobenius. Define the normalized sheaf `Kl_r⁰ = Kl_r ⊗ χ_c`.
Over `𝔽_{p^m}` its trace at `a` is `(−1)^{r−1} c^{−m(r−1)} Kl_r(a; p^m)`, where `Kl_r` denotes the
raw sum, and it is pure of weight zero (XZ §1.1.2, (1.1.2.1)–(1.1.2.3), p. 3). For odd `r` it is the
integral Tate twist `Kl_r((r − 1)/2)`; for even `r` it depends on `c`. The API proves the following
facts.

- The normalized trace over `𝔽_{p^m}` uses `c^m`, the restriction of `χ_c`; no square root is chosen
  separately over an extension.
- Replacing `c` by `−c` tensors `Kl_r⁰` with the unramified character `(−1)^{r−1}` at Frobenius.
- Base change to `𝔽_{p^m}` commutes with the normalization.
- `Kl_r⁰` is pure of weight zero, by the purity of weight `r − 1` of CongruenceSpectralGap §4.2b.

**Checks.**

- In rank two over `𝔽₂` at `a = 1`, the trace of `Kl₂` is `−1` and that of `Kl₂⁰` is `−1/c`; dropping
  the sign would give `+1/c`.
- In rank three, `Kl₃⁰ = Kl₃(1)`: geometric Frobenius on `ℚ_ℓ(1)` is `p⁻¹`, and `c^{−2} = p⁻¹`.
- For even `r` the degree-one trace changes sign under `c ↦ −c`; for odd `r` it is unchanged.
- At `r = 1` the projection presentation degenerates to `L_ψ` on `𝔾_m`; this rank is outside every
  statement of §1.3.

*Needs:* CongruenceSpectralGap §4.2b (`L_ψ`, `Kl_r`, purity); EtaleCohomologyFoundations §§F.2.4–F.2.7.

### 1.2 Local structure and the rank-two pairing

**Theorem.** Let `r ≥ 2`, `p` prime, `ℓ ≠ p` and `ψ` nontrivial. Then `Kl_r` is geometrically
irreducible; its local monodromy at `0` is unipotent with a single Jordan block of size `r`; and its
determinant is geometrically constant. For `r = 2` there is a perfect alternating
`Gal(𝔽̄_p/𝔽_p)`-equivariant pairing `Kl₂ × Kl₂ → ℚ_ℓ(−1)`, so `det Kl₂ = ℚ_ℓ(−1)` and the Frobenius
eigenvalues at `a ∈ 𝔽_qˣ` satisfy `α_aβ_a = q` and `|ι(α_a)| = |ι(β_a)| = q^{1/2}` for every embedding
`ι` (FSY §1.2, pp. 4–5, and §3.2.1, p. 24; XZ §1.1.2 (i)–(iv), p. 3). The rank, tameness at `0`,
Swan conductor one at `∞` and purity are CongruenceSpectralGap §4.2b's.

*Proof sketch.* At `∞` the local monodromy is totally wild of rank `r` with Swan conductor one, so
its only break is `1/r`; a break with denominator `r` on a representation of rank `r` forces the
inertia representation to be irreducible, hence `Kl_r` is geometrically irreducible. At `0` inertia
acts unipotently (the tame zero-boundary assertion of CongruenceSpectralGap §4.2b, with the
specialization argument given there). The local invariants at `0` inject into `H¹_c(𝔾_m, Kl_r)`
because `H⁰ = 0` and the invariants at `∞` vanish; by the curve Euler–Poincaré formula
`dim H¹_c = Sw_∞ = 1`, so there is exactly one Jordan block. The pairing comes from
`𝔻L_ψ = [−1]^*L_ψ` and Poincaré duality on the fibres of the projection presentation of §1.1.

**Checks.**

- A rank-two fibre at `a` has trace `−Kl₂(a)` and determinant `q`; over `𝔽₂` at `a = 1` the
  characteristic polynomial is `1 + T + 2T²`, with roots of absolute value `2^{−1/2}`.
- For the trivial character the corresponding direct image is not irreducible: its trace is
  `(−1)^{r−1}(q − 1)^{r−1}` and its weights are mixed, so the statement needs `ψ ≠ 1`.
- A sheaf with the same rank and lissity, `L_ψ(1/t) ⊕ ℚ_ℓ`, is wild at `0`; the single unipotent block
  excludes it.

*Needs:* §1.1; CongruenceSpectralGap §4.2b (`Kl_r`, curve Euler–Poincaré); EtaleCohomologyFoundations
§F.5 (duality); DeligneWeightsAndPurity §8.14 (geometric monodromy).

### 1.3 Monodromy groups

**Theorem.** For `r ≥ 2`, the geometric and arithmetic monodromy groups of `Kl_r⁰`, as algebraic
groups over `ℚ̄_ℓ` in the `r`-dimensional representation, coincide and are: `Sp_r` if `r` is even;
`SL_r` if `p` and `r` are odd; `SO_r` if `p = 2`, `r` is odd and `r ≠ 7`; and `G₂` in its
seven-dimensional representation if `p = 2` and `r = 7` (Katz, as recorded in XZ §1.1.2,
(1.1.2.3), p. 3; FSY §3.2.1, p. 24).

*Proof sketch.* The geometric monodromy is Katz's theorem; the arithmetic group lies between the
geometric group and its normalizer in `GL_r`, and the weight-zero normalization makes the
determinant, respectively the pairing multiplier, trivial, so the two groups agree.

**Checks.**

- `r = 7`, `p = 2` gives `G₂`, not `SO₇`.
- For `p = 2` and odd `r ≥ 3`, `Sym²` of the standard orthogonal representation contains the
  invariant quadratic form; one cannot discard the invariants of `Sym^k` in these cases, and §1.4
  keeps the full trace formula there.
- For `r = 2` the group is `Sp₂ = SL₂`, so every `Sym^k` with `k ≥ 1` is geometrically irreducible
  without invariants.

*Needs:* §§1.1–1.2; DeligneWeightsAndPurity §§8.14, 8.19 (geometric monodromy and semisimplicity).

### 1.4 Cohomology of the moments

**Theorem.** Let `k ≥ 1` and `ℓ ≠ p`. Then `H^i_c(𝔾_{m,𝔽̄_p}, Sym^k Kl₂)` and
`H^i(𝔾_{m,𝔽̄_p}, Sym^k Kl₂)` vanish for `i ≠ 1`, and with geometric Frobenius `F_p`,
`Z_k(p; T) = det(1 − F_p T | H¹_c(𝔾_{m,𝔽̄_p}, Sym^k Kl₂))` (FSY (1.5), p. 5). The middle space
`H¹_mid = im(H¹_c → H¹)` is pure of weight `k + 1`, and the cup product with the pairing of §1.2 makes
it self-dual with values in `ℚ_ℓ(−k − 1)`. In rank `r ≥ 2` the same concentration in degree one holds
for `Sym^k Kl_r` when `p` is odd or `r` is even; in the remaining cases the alternating trace formula
over all degrees is kept (FSY §1.2, pp. 4–5; §3.2.1, pp. 23–25).

*Proof sketch.* `H⁰` vanishes because `Sym^k Kl₂` is geometrically irreducible and nontrivial
(§1.3), and `H²_c` by duality. The trace of `F_p^m` at `a` on `Sym^k Kl₂` is `h_k(−Kl₂(a; p^m), p^m)`
by §§0.1 and 1.2; the rational trace formula of InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3
then gives `Σ_m m₂ᵏ(p^m)T^m/m = −log det(1 − F_pT | H¹_c)`. Purity of the image is
DeligneWeightsAndPurity §7.12 (iii), since `Sym^k Kl₂` is lisse and pure of weight `k`.

**Checks.**

- At `k = 0`, `H²_c = ℚ_ℓ(−1)` survives and the determinant formula becomes `(1 − T)/(1 − pT)`, the
  series of §0.3.
- The pairing pairs a reciprocal root `α` with `p^{k+1}/α`; at `k = 3`, `p = 2` the root `−4` is its
  own partner, `16/(−4) = −4`, whereas `p^{(k+1)/2}/α = −1` would not be a root.
- The Euler characteristic `−dim H¹_c` equals `−Sw_∞(Sym^k Kl₂)` by the curve Euler–Poincaré formula,
  since `Sym^k Kl₂` is tame at `0`.

*Needs:* §§0.3, 1.2–1.3; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3;
DeligneWeightsAndPurity §7.12; CongruenceSpectralGap §4.2b (curve Euler–Poincaré);
EtaleDualityAndPerverseSheaves §3.3; EtaleCohomologyFoundations §F.5.

### 1.5 Integrality and character independence

**Theorem.** For every prime `p`, `k ≥ 1` and `m ≥ 1`, `m₂ᵏ(p^m)` is a rational integer independent
of the choice of the nontrivial additive character of `𝔽_p`, and `Z_k(p; T)` is a polynomial with
integer coefficients and constant term `1` (FSY §1.1, pp. 2–3, and (1.5), p. 5). The degree is
computed in §8.2, where the combined statement is `momentSeries_eq_intPolynomial`.

*Proof sketch.* Any other nontrivial character of `𝔽_p` is `ψ(c·)` with `c ∈ 𝔽_pˣ`, which leaves the
moments unchanged by §0.2; the Galois group of `ℚ(ζ_p)/ℚ` permutes these characters, so the moments
are rational, and they are algebraic integers. By §1.4, `Z_k` is the reciprocal characteristic
polynomial of an endomorphism of a finite-dimensional space; its coefficients are algebraic
integers fixed by `Gal(ℚ̄/ℚ)`, since the moments are rational, hence integers.

**Checks.**

- `Z₁ = Z₂ = 1 − T` for every `p`.
- `Z₃(p; T) = (1 − T)(1 − (p/3)p²T)` with `(3/3) = 0`; at `p = 2` this is `(1 − T)(1 + 4T)`,
  agreeing with the first moment `3`.
- `Z₄(p; T) = 1 − T` for `p = 2` and `(1 − T)(1 − p²T)` for odd `p`.

*Needs:* §§0.2–0.3, 1.4; Mathlib `AddChar.sum_eq_ite`.

### Examples

- `Z₅(2; T) = 1 − 5T + 68T² − 64T³ = (1 − T)(1 − 4T + 64T²)`; the quadratic factor has
  discriminant `16 − 256 < 0` and reciprocal roots of absolute value `8 = 2^{(5+1)/2}`.
- `Z₇(3; T) = (1 − T)(1 − 90T + 6561T²)`, with reciprocal roots of absolute value `81 = 3^4`.

### Dependencies

Layer 0. Other roadmaps: CongruenceSpectralGap, EtaleCohomologyFoundations,
InverseGaloisAndArithmeticFundamentalGroups, EtaleDualityAndPerverseSheaves, DeligneWeightsAndPurity.

## Layer 2: Kloosterman connections in every rank

Throughout this layer `K` is a field of characteristic zero, `θ = z∂_z` on `𝔾_m = Spec K[z, z⁻¹]`,
and `D`-modules are left modules with SpringerResolutionAndCharacteristicCycles Layer H's direct-image
normalization. The objects are the de Rham counterparts of the sheaves of Layer 1.

### 2.1 Kloosterman connections

For `r = n + 1 ≥ 2` let `f_r(x, z) = Σ_{i=1}^n xᵢ + z/Πᵢ xᵢ` on `𝔾_m^n × 𝔾_m` and `π` the projection to
`z`. Define the Kloosterman connection `Kl_r = H⁰π_+E^{f_r}`, the relative exponential direct image
of MixedHodgeModulesAndIrregularHodgeTheory Layer F, normalized so that it is a connection in degree
zero, and prove that the other cohomology modules of `π_+E^{f_r}` vanish and that `Kl_r` is
isomorphic to the cyclic module `D_{𝔾_m}/D_{𝔾_m}(θ^r − z)`; it is defined over `ℚ` (FSY §2.1,
Proposition 2.4 and Lemma 2.5, pp. 10–12). The API proves the following facts.

- The underlying `O_{𝔾_m}`-module of `Kl_r` is free of rank `r`, with basis the classes of
  `1, θ, …, θ^{r−1}` in the cyclic presentation.
- Extension of the characteristic-zero field commutes with the construction and with the cyclic
  isomorphism.
- Replacing `f_r` by `−f_r` replaces `Kl_r` by its pullback along `z ↦ (−1)^r z`.
- The construction is the exponential direct image itself; the operator presentation is a theorem
  about it, computed by the Koszul reduction of the relative twisted de Rham complex.

**Checks.**

- For `r = 2` the classes `1, θ` form a basis and `θ² = z` on the generator.
- For `r = 2` the formal slopes at `∞` are `1/2, 1/2`, so no regular singular connection is
  isomorphic to `Kl₂`.
- With `E^f = (O, d + df)` the cyclic equation is `θ^r − z`; using `d − df` would give
  `θ^r − (−1)^r z`, which differs for odd `r`.

*Needs:* SpringerResolutionAndCharacteristicCycles Layer H (transfer and duality, holonomic modules);
MixedHodgeModulesAndIrregularHodgeTheory Layer F (exponential twist).

### 2.2 The cyclic cover

For `r ≥ 2` let `[r] : 𝔾_{m,t} → 𝔾_{m,z}` be `z = t^r` and define `K̃l_r = [r]⁺Kl_r`. Under
`xᵢ = t·yᵢ` the pulled-back potential is `t·g_r(y)` with `g_r(y) = Σᵢ yᵢ + 1/Πᵢ yᵢ`; the deck group
`μ_r` acts by `(t, y) ↦ (ζt, ζ⁻¹y)`, and `Kl_r` is recovered from `K̃l_r` by finite étale descent
(FSY §2.1, pp. 10–12; §3.1, pp. 21–22). The `μ_r`-action is defined over `ℚ` as an action of the
group scheme. The API proves the following facts.

- `K̃l_r` has rank `r`, not `r²`.
- The potential `t·g_r(y)` is invariant under `(t, y) ↦ (ζt, ζ⁻¹y)`.
- The `μ_r`-equivariant structure descends `K̃l_r` to `Kl_r`, compatibly with the cyclic presentation:
  on `z = t^r`, `θ_z = (1/r)·t∂_t`.

**Checks.**

- For `r = 2`, `x + z/x` becomes `t(y + y⁻¹)` under `z = t²`, `x = ty`, and is invariant under
  `(t, y) ↦ (−t, −y)`.
- For `r = 3`, scaling `y` by `ζ` instead of `ζ⁻¹` multiplies `t·g₃` by `ζ²` on the term `t·y₁` and
  breaks invariance.
- `dz/z = r·dt/t`; omitting the factor `r` changes the de Rham bases of §5.6 by a constant.

*Needs:* §2.1; SpringerResolutionAndCharacteristicCycles Layer H (inverse images).

### 2.3 Local structure of the Kloosterman connections

**Theorem.** For `r ≥ 2`, `Kl_r` is regular singular at `0` with unipotent residue consisting of one
Jordan block, and at `∞` it is irregular of pure slope `1/r` with irregularity one. Its dual is
`ι_r⁺Kl_r` with `ι_r(z) = (−1)^r z`. The cyclic pullback `K̃l_r` is the localized Fourier transform
of the regular holonomic Gauss–Manin module `H⁰g_{r,+}O_{𝔾_m^{n}}`, and
`Kl_{r+1} ≅ j₀⁺ FT(j_{0,+} inv⁺ Kl_r)` up to the normalizations of
MixedHodgeModulesAndIrregularHodgeTheory Layer F, with `inv(z) = 1/z` (FSY Proposition 2.4 and
Lemma 2.5, pp. 10–12).

*Proof sketch.* The cyclic operator `θ^r − z` has the logarithmic lattice `⊕ K[z]θⁱ` at `0` with
nilpotent residue of one block. After the cover `z = t^r` the formal structure at `∞` splits into
exponential factors `E^{r ζ t}`, `ζ ∈ μ_r`, so the slopes before the cover are `1/r`. Duality and the
recursion follow from the Fourier description with kernel `E^{tτ}`.

**Checks.**

- The irregularity of `Kl_r` at `∞` is `r·(1/r) = 1`, matching the Swan conductor one of the
  `ℓ`-adic sheaf.
- For odd `r` the dual requires `z ↦ −z`; for even `r` the connection is self-dual.
- The index formula of MixedHodgeModulesAndIrregularHodgeTheory Layer D gives
  `dim H¹_dR(𝔾_m, Kl_r) − dim H⁰_dR(𝔾_m, Kl_r) = 1`.

*Needs:* §§2.1–2.2; MixedHodgeModulesAndIrregularHodgeTheory Layers D and F (formal decomposition,
index, localized Fourier, Fourier duality).

### 2.4 Symmetric powers of the Kloosterman connections

Define, for a connection `(E, ∇)` on a smooth variety over `K`, the connection `Sym^k(E, ∇)` on the
symmetric power of the underlying vector bundle (Mathlib `SymmetricPower` on local sections), with
`∇(e₁⋯e_k) = Σⱼ e₁⋯∇eⱼ⋯e_k`. Apply it to `Kl_r` and `K̃l_r` for `k ≥ 1` (FSY §2.1, Proposition 2.7,
p. 12; §2.2, pp. 13–14). The API proves the following facts.

- The Leibniz formula descends from the tensor power to the symmetric quotient, so `Sym^k(E, ∇)` is
  a connection; it is integrable when `∇` is.
- The rank is `binomial(r − 1 + k, k)`.
- `Sym^k` commutes with pullback, with extension of the field and with the `μ_r`-action on `K̃l_r`.
- `Sym^k` commutes with duality up to the canonical identification `Sym^k(E^∨) ≅ (Sym^k E)^∨` in
  characteristic zero.

**Checks.**

- For `r = 2`, `k = 2` the rank is `3`, not `4`.
- For `k = 1` the construction returns `(E, ∇)`.
- For `k = 0` it is the trivial connection `(O, d)`, which is excluded from the irreducibility and
  cohomology statements of positive `k`.

*Needs:* §§2.1–2.2; Mathlib `SymmetricPower`.

### 2.5 Differential Galois groups

**Theorem.** Over `ℂ`, the differential Galois groups of `Kl_r` and of `K̃l_r` in their
`r`-dimensional representations are `SL_r` for odd `r` and `Sp_r` for even `r`. Consequently, for every
`k ≥ 1`, `Sym^k Kl_r` and `Sym^k K̃l_r` are irreducible of rank `binomial(r − 1 + k, k)` (Katz, as
recorded in FSY Proposition 2.7, p. 12).

*Proof sketch.* The connected differential Galois group contains the exponential torus of the
formal decomposition at `∞` and the unipotent local monodromy at `0`; Katz's classification identifies
it. The cover changes the group only by a finite index, and `Sym^k` of the standard representation of
`SL_r` or `Sp_r` is irreducible.

**Checks.**

- For `r = 2` every `Sym^k Kl₂`, `k ≥ 1`, is irreducible.
- The characteristic-zero statement has no orthogonal or `G₂` branch; the `p = 2` branches of §1.3
  do not transfer.
- For `r = 3`, `Sym²` of the standard representation of `SL₃` is irreducible of dimension `6`,
  whereas for `SO₃` it would split off an invariant line.

*Needs:* §§2.3–2.4.

### 2.6 The Bessel connection dictionary

**Comparison.** For `λ ∈ Kˣ`, the rank-`r` Bessel connection `d + M(x)dx/x`, with ones on the
superdiagonal of `M` and lower-left entry `λ^r x`, is identified with the pullback of `Kl_r` along
`z = λ^r x` after choosing the cyclic vector as the last basis vector. The cyclic generator satisfies
`θ^r − λ^r x`. Horizontal coefficient vectors solve the dual system, and their first coefficient
satisfies `θ^r f − (−1)^r λ^r x f = 0`. Replacing `E^{λs} = (O, d + λds)` by `E^{−λs}` pulls the
Kloosterman object back along `x ↦ (−1)^r x` (XZ §1.1.1, (1.1.1.1)–(1.1.1.6), pp. 2–3; §4.1.13,
p. 42).

*Proof sketch.* Write the cyclic basis `θⁱe` and rescale to the Bessel matrix. The horizontal
coefficient recurrence is `θfᵢ = −f_{i+1}`, and the last equation introduces `(−1)^r`.

**Checks.**

- For odd `r` the cyclic module equation and the scalar equation of horizontal first coefficients
  have opposite signs; for even `r` they agree.
- `λ = 0` gives a connection regular at `∞`, outside the irregularity-one statement of §2.3.
- For `r = 2`, `λ = 1`: the generator satisfies `θ²e = x e`, and a horizontal first coefficient
  satisfies `θ²f = x f` as well, since `(−1)² = 1`.

*Needs:* §2.3.

### Examples

- `Kl₂ = D/D(θ² − z)`: at `∞` with `z = t²` the formal factors are `E^{±2t}` twisted by the regular
  rank-one factor of monodromy `−1`.
- `Sym² Kl₂` has rank `3`, is irreducible, and has the Leibniz action of §5.1.

### Dependencies

Layer 0 for the notation. Other roadmaps: SpringerResolutionAndCharacteristicCycles,
MixedHodgeModulesAndIrregularHodgeTheory. Libraries: Mathlib.

## Layer 3: exponential cohomology and middle extensions

This layer identifies the de Rham cohomology of `Sym^k Kl_r` with an isotypic piece of exponential
cohomology of a torus, defines middle cohomology and constructs the inverse Fourier objects.

### 3.1 Tensor potentials

For `r = n + 1 ≥ 2` and `k ≥ 1` define `f_{r,k}(x, z) = Σ_{j=1}^k (Σ_{i=1}^n x_{ij} + z/Πᵢ x_{ij})`
on `𝔾_m^{nk+1}` and `g_{r,k}(y) = Σ_j (Σᵢ y_{ij} + 1/Πᵢ y_{ij})` on `𝔾_m^{nk}`. After `z = t^r` and
`x_{ij} = t·y_{ij}` the potential becomes `t·g_{r,k}(y)`; `S_k` permutes the blocks and `μ_r` acts by
`(t, y) ↦ (ζt, ζ⁻¹y)` (FSY §2.2, (2.8)–(2.9), pp. 13–14; §3.1, (3.9), p. 21). The API proves the
following facts.

- `f_{r,k}` is the sum of `k` copies of `f_r` sharing the coordinate `z`; for `k = 1` it is `f_r`.
- `t·g_{r,k}` is invariant under `S_k × μ_r`.
- The substitution is an isomorphism of tori over the cover `z = t^r`.

**Checks.**

- For `r = 2`, `k = 2`: `t·g = t(y₁ + y₁⁻¹ + y₂ + y₂⁻¹)`.
- For `r = 3`, `k = 2` the `y`-torus has dimension `4` and the exponential torus dimension `5`; a
  construction using `nk` for `n` would give the wrong dimension.
- The action `y ↦ ζ⁻¹y` is needed for `r = 3`; `y ↦ ζy` does not preserve `t·g`.

*Needs:* §2.2.

### 3.2 The signed symmetric projector

For `n = r − 1` let `χ_n(σ, ζ) = sgn(σ)^n` on `S_k × μ_r`, and for a rational linear action of
`S_k × μ_r` define `e_χ = (k!·r)⁻¹ Σ_{σ,ζ} sgn(σ)^n (σ, ζ)` and the isotypic part as its image
(FSY §2.2, proof of Proposition 2.13, pp. 14–15; §3.1, pp. 21–22). The sign accounts for permuting
blocks of differential forms of degree `n`. The same projector is used on de Rham, Betti, `ℓ`-adic
and motivic cohomology. The API proves the following facts.

- `e_χ` is idempotent, and `v` lies in its image if and only if `σv = sgn(σ)^n v` and `ζv = v`.
- Every equivariant linear map commutes with `e_χ` and induces a map on images.
- Exact rational realization functors carry `e_χ`-images to `e_χ`-images.

**Checks.**

- For `r = 2`, `k = 2` a transposition acts by `−1` on the selected piece; for `r = 3`, `k = 2` by
  `+1`.
- Over `ℚ_ℓ` with `ℓ ∣ k!·r` the projector is still defined; no integral projector is claimed.
- For `r = 2` the selected piece is the sign-isotypic part for `S_k`; replacing it by the invariants
  selects a different object (§4.4).

*Needs:* §3.1.

### 3.3 The tensor Thom–Sebastiani identification

**Theorem.** For `r = n + 1 ≥ 2` and `k ≥ 1`, the relative exponential direct image of `E^{f_{r,k}}`
to `𝔾_{m,z}` is canonically `Kl_r^{⊗k}`, and that of `E^{t·g_{r,k}}` to `𝔾_{m,t}` is `K̃l_r^{⊗k}`. The
identification is `S_k`-equivariant with the Koszul sign of §3.2, commutes with the cyclic pullback,
and identifies `H¹_dR(𝔾_m, Kl_r^{⊗k})` with `H^{nk+1}_dR(𝔾_m^{nk+1}, E^{f_{r,k}})`, and similarly with
compact supports (FSY Proposition 2.10 and Corollary 2.11, pp. 13–14).

*Proof sketch.* Apply relative Künneth to the `k` factors over the common base, use
`E^f ⊗ E^g = E^{f+g}`, and then the Leray identification with the relative degree `nk` and the
one-dimensional base.

**Checks.**

- For `k = 1` the identification is the definition of `Kl_r`.
- The cohomological degree is `nk + 1`, not `nk`.
- For `r = 2`, `k = 2` the transposition acts on `H³_dR(𝔾_m³, E^{f_{2,2}})` with the sign
  `(−1)^{1·1} = −1` relative to the factor swap of `Kl₂^{⊗2}`.

*Needs:* §§2.1, 3.1–3.2; MixedHodgeModulesAndIrregularHodgeTheory Layer F (exponential twists) and
Layer P (Künneth); SpringerResolutionAndCharacteristicCycles Layer H.

### 3.4 Middle Kloosterman cohomology

For `E = Sym^k Kl_r` or `Sym^k K̃l_r`, `r ≥ 2`, `k ≥ 1`, define
`H¹_{dR,mid}(𝔾_m, E) = im(H¹_{dR,c}(𝔾_m, E) → H¹_dR(𝔾_m, E))` with its two comparison maps, and
identify it with `H¹_dR(ℙ¹, j_!*E)` for `j : 𝔾_m → ℙ¹`, where `j_!*` is
SpringerResolutionAndCharacteristicCycles Layer H's intermediate extension (FSY Corollary 2.15,
pp. 15–16). The API proves the following facts.

- The canonical surjection from `H¹_c` and injection into `H¹` factor the forget-supports map.
- The identification with `H¹(ℙ¹, j_!*E)` is compatible with both maps.
- The duality between compact and ordinary cohomology descends to a perfect pairing on the middle
  space.

**Checks.**

- For `r = 2`, `k = 1` the middle space is zero while `H¹` has dimension one.
- For `r = 2`, `k = 3` the middle dimension is one and the full dimension two.
- For `r = 2`, `k = 4` the middle space is zero although `H¹` has dimension two; middle cohomology is
  an image and differs from both `H¹_c` and `H¹`.

*Needs:* §2.4; SpringerResolutionAndCharacteristicCycles Layer H (intermediate extension, duality).

### 3.5 The exponential de Rham realization

**Theorem.** For `r = n + 1 ≥ 2` and `k ≥ 1`, ordinary, compact and middle de Rham cohomology of
`Sym^k Kl_r` and of `Sym^k K̃l_r` vanish outside degree one, and degree one is identified with the
`χ_n`-isotypic part of the corresponding `H^{nk+1}` of `(𝔾_m^{nk+1}, f_{r,k})`, respectively of
`(𝔾_m^{nk+1}, t·g_{r,k})`. The middle space carries a perfect pairing to `K` of parity
`(−1)^{nk+1}`, which with Hodge structures takes values in `ℚ(−nk − 1)` (FSY Proposition 2.13 and
Corollary 2.15, pp. 15–16).

*Proof sketch.* Irreducibility (§2.5) kills `H⁰`, and duality kills `H²_c`. Apply §3.3 and the
projector of §3.2, then compare supports and descend the graded-symmetric Poincaré pairing of
MixedHodgeModulesAndIrregularHodgeTheory Layer P.

**Checks.**

- For `r = 2` the middle pairing is symmetric for odd `k` and alternating for even `k`.
- A pairing of the opposite parity fails at `k = 6`, where `d₆ = 2` and the space carries a
  symplectic form, and at `k = 7`, where `d₇ = 3` is odd and admits no nondegenerate alternating form.
- For `r = 3`, `k = 2` the parity is `(−1)^{5} = −1`.

*Needs:* §§2.5, 3.2–3.4; MixedHodgeModulesAndIrregularHodgeTheory Layer P (pair cohomology, its de
Rham fibre, Künneth and duality).

### 3.6 Inverse Fourier Kloosterman objects

Let `M̃ = FT⁻¹(j_{0,!*}Sym^k K̃l_r)` and let `Π` be the exponential projector of
MixedHodgeModulesAndIrregularHodgeTheory Layer E. Construct a regular holonomic module `M` and an
exact sequence `0 → M → ΠM → M′ → 0` with `ΠM ≅ M̃`, where `M` is the image of
`H⁰g_{r,k,!}O → H⁰g_{r,k,+}O` for `g_{r,k}` of §3.1. Prove that `M` underlies an irreducible pure
Hodge module `M^H` of weight `nk`, and that `M′` is constant with weights `≥ nk + 1`, pure of weight
`2k + 1` when `r = 2` (FSY Proposition 2.21 and Lemma 2.24, pp. 16–18). The API proves the following
facts.

- `M̃` is the exponential projection of the regular Gauss–Manin module, through
  MixedHodgeModulesAndIrregularHodgeTheory Layer E's Fourier localization of the projector.
- The inclusion `M → ΠM` is the unit of `Π`, and its cokernel is constant.
- `M^H` forgets to `M` and has weight `nk`; the degree-one de Rham fibre has weight `nk + 1`.

**Checks.**

- For `r = 2`, `ΠM` has rank `k + 1` and `M` rank `k`.
- The pure Hodge module `M^H` has weight `nk`, not `nk + 1`.
- For `r = 2` the quotient `M′` is pure of weight `2k + 1` as an exponential structure, while `ΠM` is
  not pure as an ordinary mixed Hodge module.

*Needs:* §§3.1, 3.5; MixedHodgeModulesAndIrregularHodgeTheory Layers E (projector, Fourier
localization), H.0–H.1 (pure Hodge modules, direct images and weights) and T (constant correction).

### Examples

- `r = 2`, `k = 3`: `H¹_dR(𝔾_m, Sym³ Kl₂)` has dimension two and its middle part dimension one; the
  middle pairing is symmetric of weight `4`.
- `r = 2`, `k = 2`: the middle space is zero and the pairing is the zero pairing on the zero space.

### Dependencies

Layer 2. Other roadmaps: SpringerResolutionAndCharacteristicCycles,
MixedHodgeModulesAndIrregularHodgeTheory.

## Layer 4: classical Hodge structures and moment motives

This layer proves that the exponential cohomology of Layer 3 is classical, describes it by the
moment hypersurfaces, defines the Nori motive and compares it with the finite-field cohomology of
Layer 1.

### 4.1 Classicality of moment cohomology

**Theorem.** For `r = n + 1 ≥ 2` and `k ≥ 1`, the exponential mixed Hodge structures realizing `H¹`,
`H¹_c` and `H¹_mid` of `Sym^k Kl_r` and of `Sym^k K̃l_r` are classical rational mixed Hodge
structures, carried by `TauCeti.Hodge.MixedHodgeStructure`. Their irregular Hodge filtrations are the
ordinary Hodge filtrations. Their weights are `≥ nk + 1`, `≤ nk + 1` and pure `nk + 1` respectively;
the maps on `gr^W_{nk+1}` identify both extreme graded pieces with the middle cohomology, and
`H¹_mid = W_{nk+1}H¹`. The perfect pairing of §3.5 takes values in `ℚ(−nk − 1)` with parity
`(−1)^{nk+1}` (FSY Theorem 3.2, pp. 19–21; Theorem A.24, pp. 68–70).

*Proof sketch.* The potential on the cover is `t·g_{r,k}` on `𝔸¹ × 𝔾_m^{nk}` after adding the constant
`𝔸¹`-factor, so MixedHodgeModulesAndIrregularHodgeTheory Layer G (the classical `t·g` criterion)
applies; Layer C identifies the filtrations. Transfer through the projector of §3.2 and the finite
cyclic descent of §2.2. The pure Gauss–Manin subobject of §3.6 and strictness of weights identify the
lowest weight with the middle cohomology (Layer P, the middle-degree weight statement).

**Checks.**

- The conclusion is classicality: the objects are mixed Hodge structures, not merely exponential
  ones.
- For `r = 2` the middle weight is `k + 1`.
- For `r = 2`, `k = 3` the full `H¹` has dimension two with weights `4` and `8` (§6.6), so `H¹` is not
  pure and `W₄H¹` is the one-dimensional middle part.

*Needs:* §§2.2, 3.2, 3.5–3.6; MixedHodgeModulesAndIrregularHodgeTheory Layers C, G and P; Tau Ceti
`TauCeti.Hodge.MixedHodgeStructure` and its strictness theorems.

### 4.2 The moment hypersurfaces

For `r = n + 1 ≥ 2` and `k ≥ 1` with `nk ≥ 2`, define `K_{r,k} ⊂ 𝔾_m^{nk}` as the closed subscheme
`g_{r,k} = 0` over `ℤ`, with the block-permutation action of `S_k` and the action
`y_{ij} ↦ ζ⁻¹y_{ij}` of the group scheme `μ_r` (FSY §3, (3.1), p. 18; Theorem 3.8 and (3.9),
pp. 21–23). The zero locus is defined by one Laurent equation, independently of a choice of roots of
unity. The API proves the following facts.

- A point of the torus lies on `K_{r,k}` exactly when `g_{r,k}` vanishes there.
- `S_k × μ_r` acts on `K_{r,k}`: `μ_r` scales `g_{r,k}` by `ζ⁻¹`, preserving its zero locus, although
  `g_{r,k}` is not invariant as a function.
- Formation of `K_{r,k}` and its action commutes with every base change.

**Checks.**

- For `r = 2`, `k = 2` the numerator of `y₁ + y₁⁻¹ + y₂ + y₂⁻¹` factors as `(y₁ + y₂)(1 + y₁y₂)`, so
  `K_{2,2}` is reducible and singular; smoothness is not part of the definition.
- For `r = 2`, `k = 3` no point with all coordinates `±1` lies on `K_{2,3}` over `ℚ`, since a sum of
  three terms `±2` is nonzero; over `𝔽₃` the point `(1, 1, 1)` lies on it (`2 + 2 + 2 = 6 = 0`).
- For `r = 3` the scaling by `ζ⁻¹` multiplies `g_{3,k}` by `ζ⁻¹`, and the zero locus is preserved.

*Needs:* §§3.1–3.2; SchemeAndStackFoundations Layer 0 (closed subschemes, base change).

### 4.3 Hypersurface realization of middle cohomology

**Theorem.** For `r = n + 1 ≥ 2`, `k ≥ 1` and `nk ≥ 2` there are natural `S_k × μ_r`-equivariant
isomorphisms of rational mixed Hodge structures, compatible with the middle pairing, between
`H¹_mid(𝔾_m, Sym^k Kl_r)`, `(gr^W_{nk−1}H_c^{nk−1}(K_{r,k}))^{χ_n}(−1)` and
`(gr^W_{nk+1}H^{nk+1}_{K_{r,k}}(𝔾_m^{nk}))^{χ_n}`; if `K_{r,k}` is smooth the last term equals
`(gr^W_{nk−1}H^{nk−1}(K_{r,k}))^{χ_n}(−1)` (FSY Theorem 3.8, pp. 21–23; Example A.27, pp. 70–71).

*Proof sketch.* MixedHodgeModulesAndIrregularHodgeTheory Layer G's zero-locus comparison gives
`H_c^a(𝔸¹ × 𝔾_m^{nk}, tg) ≅ H_c^{a−2}(K_{r,k})(−1)` and `H^a ≅ H^a_{K_{r,k}}(𝔾_m^{nk})`. Remove the
`t = 0` contribution, compare lowest weights, and apply `e_χ` and §4.1.

**Checks.**

- The twist `(−1)` raises the weight `nk − 1` to `nk + 1`.
- The singular-support form needs no smoothness of `K_{r,k}`: at `r = 2`, `k = 2` (so `nk = 2`) the
  hypersurface is singular, the local-cohomology form applies and the smooth form does not.
- For `r = 2`, `k = 3`: `(gr^W₁H¹_c(K_{2,3}))^{sgn}(−1)` is one-dimensional of weight `4`.

*Needs:* §§4.1–4.2, 3.2; MixedHodgeModulesAndIrregularHodgeTheory Layer G (zero locus) and Layer P
(pair localization).

### 4.4 The Kloosterman moment motive

Define, in the rational Nori category over `ℚ` of MotivesAndAlgebraicCycles Layer 5, for
`r = n + 1 ≥ 2`, `k ≥ 1` and `nk ≥ 2`, `M_{r,k} = (gr^W_{nk−1}H^{nk−1}_c(K_{r,k}))^{χ_n}(−1)`, using the
functorial Nori weight filtration of the supplier contract; write `M_k = M_{2,k}` and set `M₁ = 0`
(FSY (3.1), p. 18; §3.1, pp. 21–23). The API proves the following facts.

- The filtered de Rham realization of `M_{r,k}` is `H¹_{dR,mid}(𝔾_m, Sym^k Kl_r)` with its rational
  structure and Hodge filtration, by §4.3.
- The `ℓ`-adic realization is the same projector applied to `gr^W H_c^{nk−1}` of the geometric
  hypersurface, with the twist `(−1)`.
- The motive carries a realization-compatible perfect pairing of parity `(−1)^{nk+1}` with values in
  `ℚ(−nk − 1)`.

**Checks.**

- `M₃` has weight `4`, not `2`.
- `M₁`, `M₂` and `M₄` have zero Betti, de Rham and `ℓ`-adic realizations.
- For `r = 2` the character is the sign of `S_k`, while for `r = 3` it is trivial on `S_k`; using the
  sign character for `r = 3` selects the anti-invariant part, which is not the realization of
  `Sym^k Kl₃` (§3.2).

*Needs:* §4.3; MotivesAndAlgebraicCycles Layer 5 (Nori category, pair motives, realizations) and its
weight filtration (gap:nori-weight-filtration).

### 4.5 The finite-field hypersurface comparison

**Theorem.** For `r = n + 1 ≥ 2`, `k ≥ 1`, `nk ≥ 2`, a prime `p` and `ℓ ≠ p`, the middle étale
cohomology of `Sym^k Kl_r` over `𝔽̄_p` is naturally isomorphic, compatibly with geometric Frobenius,
to `(gr^W_{nk−1}H^{nk−1}_c(K_{r,k,𝔽̄_p}, ℚ_ℓ(ζ_p)))^{χ_n}(−1)`. If `p ∣ r`, write `r = p^a m` with
`p ∤ m`; the cyclic map factors through the degree-`m` étale cover and a purely inseparable universal
homeomorphism, and `μ_r` acts on étale cohomology through `μ_m`. The statement concerns middle
cohomology and asserts no concentration of the full cohomology in the odd-rank cases at `p = 2`
(FSY Theorem 3.12, pp. 23–25).

*Proof sketch.* Repeat the localization argument of §4.3 with the Artin–Schreier sheaf in place of
`E^{tg}`, using the vanishing of `RΓ_c(𝔸¹, L_ψ)` and smooth purity on the ambient torus. Topological
invariance (EtaleCohomologyFoundations §F.0.4) handles the inseparable factor; weights come from
DeligneWeightsAndPurity §7.12; local cohomology replaces smooth purity on the possibly singular
hypersurface.

**Checks.**

- For `r = p = 2` the comparison passes through the inseparable factor, not through an étale
  `μ₂`-cover.
- The weight before the twist is `nk − 1`.
- For `r = 2`, `k = 3`, `p = 2` the right side is one-dimensional with Frobenius eigenvalue `−4`,
  matching `M₃(2; T) = 1 + 4T`.

*Needs:* §§1.4, 4.2; CongruenceSpectralGap §4.2b (`L_ψ`); EtaleCohomologyFoundations §§F.0.4, F.5,
F.6; DeligneWeightsAndPurity §7.12.

### Examples

- `k = 3`, `r = 2`: `M₃` is a rank-one motive of weight `4`; its `ℓ`-adic realization is the
  character `χ_{−3}·χ_cyc^{−2}` (§10.1).
- `k = 5`, `r = 2`: `M₅` has rank two, Hodge numbers `h^{2,4} = h^{4,2} = 1` (§6.6).

### Dependencies

Layers 1–3. Other roadmaps: MixedHodgeModulesAndIrregularHodgeTheory, MotivesAndAlgebraicCycles,
CongruenceSpectralGap, EtaleCohomologyFoundations, DeligneWeightsAndPurity, SchemeAndStackFoundations.
Libraries: Tau Ceti.

## Layer 5: rank-two explicit structure

From now on `r = 2`, `n = 1`, `θ = z∂_z`, and `v₀, v₁` is the cyclic basis of `Kl₂` with `θv₀ = v₁`,
`θv₁ = zv₀`.

### 5.1 The rank-two frame

In `Sym^k Kl₂` use `u_a = v₀^{k−a}v₁^a` for `0 ≤ a ≤ k`; then
`θu_a = (k − a)u_{a+1} + a·z·u_{a−1}`, with the absent endpoint terms zero. On the double cover
`z = t²`, `θ = (t/2)∂_t` (FSY §4.1, pp. 26–27; Lemma 4.15, pp. 30–31). The API proves the following
facts.

- `{u_a}` is a basis of the free `O_{𝔾_m}`-module `Sym^k Kl₂`.
- The displayed formula holds with integer multiplicities, including at `a = 0` and `a = k`.
- `v₀` generates `Kl₂` as the cyclic module of `θ² − z`.

**Checks.**

- For `k = 1`: `θv₀ = v₁`, `θv₁ = zv₀`.
- For `k = 2`: `θ(v₀v₁) = v₁² + zv₀²`; omitting either Leibniz term fails.
- On the cover `dz/z = 2dt/t`, not `dt/t`.

*Needs:* §§2.3–2.4.

### 5.2 The formal symmetric-power decomposition

**Theorem.** For `k ≥ 1`, at `∞` the symmetric power `Sym^k K̃l₂` on the double cover decomposes
formally as `⊕_{j=0}^k E^{2(2j−k)t} ⊗ L_{−1}^{⊗k}`, where `L_a` is the regular rank-one formal module
with monodromy `a`. For `Sym^k Kl₂`, opposite nonzero exponents pair under the cover; for even `k`
there is one regular rank-one factor, with monodromy `1` exactly when `4 ∣ k`. Hence
`irr_∞ Sym^k Kl₂ = ⌊(k + 1)/2⌋`, and the cover has irregularity `k + 1` for odd `k` and `k` for even `k`
(FSY Proposition 4.6 and Lemma 4.7, pp. 27–28).

*Proof sketch.* Diagonalize `K̃l₂` formally as `E^{2t} ⊗ L_{−1} ⊕ E^{−2t} ⊗ L_{−1}`, take symmetric
powers, and descend the paired factors; for even `k` the middle factor `j = k/2` is regular with
monodromy `(−1)^{k/2}` on the original torus.

**Checks.**

- `k = 4`: the regular factor is trivial; `k = 2`: it has monodromy `−1`.
- `k = 3`: the irregularity is `2` on the original torus and `4` on the cover.
- The irregularity `⌊(k + 1)/2⌋` equals the degree of `Z_k(p; T)` for `p` large (§8.2), matching
  Swan conductors.

*Needs:* §5.1; MixedHodgeModulesAndIrregularHodgeTheory Layer D (formal decomposition).

### 5.3 Intermediate extensions of the symmetric powers

**Theorem.** For `k ≥ 1`, at `∞` the map from the intermediate extension of `Sym^k Kl₂` to its
meromorphic extension is an isomorphism exactly when `4 ∤ k`; for the double-cover object exactly
when `k` is odd. At `0` the intermediate extension `j_{0,!*}Sym^k Kl₂` is the unique submodule of
`j_{0,+}Sym^k Kl₂` restricting to the connection with no quotient supported at `0`, and the quotient
is the boundary contribution of the single unipotent block (FSY Corollary 4.9, pp. 28–29).

*Proof sketch.* A monodromy-one regular formal factor at `∞` is exactly what makes the two
extensions differ there (§5.2). At `0` use irreducibility (§2.5), the single unipotent block, and the
no-boundary-subquotient characterization of SpringerResolutionAndCharacteristicCycles Layer H.

**Checks.**

- At `k = 4` the map at `∞` is not an isomorphism.
- The theorem does not say that `j_! → j_*` is an isomorphism for odd `k`: at `0` the two always
  differ.
- At `k = 2` the regular factor has monodromy `−1`, so the map at `∞` is an isomorphism.

*Needs:* §§5.2, 3.4, 2.5; SpringerResolutionAndCharacteristicCycles Layer H.

### 5.4 Local structure of the inverse Fourier object

**Theorem.** For `k ≥ 1`, `ΠM` of §3.6 has rank `k + 1` and `M` rank `k`. Their finite
singularities are `τ = 2(2j − k)`, `j = 0, …, k`. At each of them the vanishing cycles have rank one
with monodromy `(−1)^k`. At `∞` the monodromy is unipotent with a single Jordan block (FSY
Corollary 4.10, p. 29).

*Proof sketch.* Apply stationary phase to the formal exponential factors of §5.2 (the supplier
contract gap:irregular-stationary-phase), and use the extensions of §5.3 at `0` and `∞` to compute
nearby and vanishing cycle ranks.

**Checks.**

- `0` is a finite singularity exactly when `k` is even.
- For `k = 3` the finite singular values are `−6, −2, 2, 6`.
- Ranks: `k + 1` exponents give `k + 1` singular points, each contributing one vanishing cycle; the
  rank `k` of `M` and `k + 1` of `ΠM` differ by the constant quotient.

*Needs:* §§3.6, 5.2–5.3; MixedHodgeModulesAndIrregularHodgeTheory Layer T and its irregular
stationary phase (gap:irregular-stationary-phase).

### 5.5 Dimensions of moment cohomology

**Theorem.** For `k ≥ 1`, `dim H¹_dR(𝔾_m, Sym^k Kl₂) = ⌊(k + 1)/2⌋` and
`dim H¹_{dR,mid}(𝔾_m, Sym^k Kl₂) = d_k = ⌊(k − 1)/2⌋ − δ_{4∣k}`; equivalently `d_k = (k − 1)/2` for odd
`k` and `2⌊(k − 1)/4⌋` for even `k`. On the double cover the full dimension is `k + 1` for odd `k` and
`k` for even `k`, and the middle dimension is `k` for odd `k` and `k − 2` for even `k` (FSY
Proposition 4.12 and (4.13), p. 30).

*Proof sketch.* The index formula of MixedHodgeModulesAndIrregularHodgeTheory Layer D with §5.2
gives the full dimensions; subtract the boundary contributions at `0` and `∞` from §5.3.

**Checks.**

- `d₁ = d₂ = d₄ = 0`, `d₃ = 1`, `d₅ = 2`, `d₆ = 2`, `d₇ = 3`, `d₈ = 2`.
- For even `k`, `d_k` is even, as an alternating pairing requires.
- The formula is not extended to `k = 0`: truncated subtraction would give `0`, whereas `H¹_dR(𝔾_m, O)`
  has dimension one.

*Needs:* §§3.5, 5.2–5.3; MixedHodgeModulesAndIrregularHodgeTheory Layer D.

### 5.6 Explicit de Rham bases

**Theorem.** For `k ≥ 1` the classes `zʲv₀^k dz/z`, `0 ≤ j < ⌊(k + 1)/2⌋`, form a basis of
`H¹_dR(𝔾_m, Sym^k Kl₂)`, and `tʲṽ₀^k dt/t`, `0 ≤ j < 2⌊(k + 1)/2⌋`, a basis on the double cover. The
logarithmic extension `⊕_a K[z]u_a` at `0` has nilpotent residue and its de Rham complex computes
`H¹_dR`. With `deg z = 2` and `deg u_a = a`, the leading connection matrix has determinant
`(k!!)²(−z)^{(k+1)/2}` for odd `k`, and for even `k` its kernel is generated by
`Σᵢ (−1)ⁱ binomial(k/2, i) zⁱ u_{k−2i}` (FSY Proposition 4.14, Lemmas 4.15 and 4.17, pp. 30–32).

*Proof sketch.* Use the logarithmic comparison of ComplexComparisonPartII §§C5.6–C5.7 at the
regular singular point `0`, filter the complex by the grading, compute the leading determinant or
kernel, and conclude with the dimensions of §5.5.

**Checks.**

- For `k = 3` the basis on `𝔾_m` is `j = 0, 1` and on the cover `j = 0, 1, 2, 3`.
- For `k = 4` the two classes `j = 0, 1` span `H¹_dR` while the middle space is zero.
- For `k = 1`: one class `v₀dz/z`, and the leading determinant is `(1!!)²(−z) = −z`.

*Needs:* §§5.1, 5.5; ComplexComparisonPartII §§C5.6–C5.7.

### Examples

- `k = 3`: `H¹_dR` has basis `v₀³dz/z, zv₀³dz/z`; the middle line is spanned by a combination
  determined by the Hodge filtration of §6.4.
- `k = 4`: irregularity `2`, `H¹_dR` of dimension two, middle zero, and the regular factor at `∞` is
  trivial.

### Dependencies

Layers 2–3. Other roadmaps: MixedHodgeModulesAndIrregularHodgeTheory,
SpringerResolutionAndCharacteristicCycles, ComplexComparisonPartII.

## Layer 6: compactifications and Hodge numbers

This layer computes the Hodge filtration of `H¹(𝔾_m, Sym^k Kl₂)` on the explicit bases of §5.6 and the
complete Hodge-number tables, through an explicit toric compactification of the moment potential.

### 6.1 The signed-permutation fan

For `k ≥ 1` define the fan `Σ_k` in `ℤ^k` whose rays are generated by the nonzero vectors of
`{0, ±1}^k` and whose maximal cones are generated by the successive partial sums of a signed
permutation of the standard basis; let `X_k` be its toric scheme over `ℤ`
(ShimuraCompactifications §C0.16). On the standard maximal cone the coordinates are
`z_r = y_r/y_{r+1}` for `r < k` and `z_k = y_k`, and `g = Σᵢ(yᵢ + yᵢ⁻¹) = g₁/(z₁⋯z_k)` with
`g₁ = 1 + Σ_{r=2}^k z₁⋯z_{r−1} + (z₁⋯z_k)·Σ_{r=1}^k z_r⋯z_k` (FSY §4.3.2, (4.22)–(4.23), pp. 35–36).
The API proves the following facts.

- `Σ_k` is a complete regular fan with `2^k·k!` maximal cones and `3^k − 1` rays; every maximal cone is
  generated by a unimodular triangular matrix.
- `X_k` is smooth and proper over `ℤ`, by the support criterion of ShimuraCompactifications §C0.17,
  and its boundary is a relative strict normal crossings divisor (§C0.18).
- The signed permutation group `{±1}^k ⋊ S_k` acts on `Σ_k` and on `X_k`, transitively on maximal
  cones, extending the action on `𝔾_m^k`.
- On the standard chart, `g` and `g₁` are related as displayed.

**Checks.**

- `k = 1`: two rays `±1`, two cones, and `X₁ = ℙ¹`.
- `k = 2`: eight rays and eight maximal cones, distinguishing `Σ₂` from the four-ray product fan of
  `ℙ¹ × ℙ¹`.
- `k = 2`: `g₁ = 1 + z₁ + z₁²z₂² + z₁z₂²`, and dividing by `z₁z₂` with `y₂ = z₂`, `y₁ = z₁z₂` recovers
  `y₁ + y₁⁻¹ + y₂ + y₂⁻¹`.

*Needs:* §4.2; ShimuraCompactifications §§C0.15–C0.18; Tau Ceti toric fans and cones as consumed by
that section.

### 6.2 A nondegenerate compactification of the moment potential

**Theorem.** Let `k ≥ 1` over a field of characteristic zero. Starting from `ℙ¹_t × X_k`, blow up
successively the intersections of the strict transform of `t = 0` with the toric boundary divisors.
For odd `k` the result is a nondegenerate compactification of `(𝔾_m^{k+1}, t·Σᵢ(yᵢ + yᵢ⁻¹))` with
strict normal crossings boundary, in the sense of MixedHodgeModulesAndIrregularHodgeTheory Layer N.
For even `k` the only failures are at `t = ∞` over the balanced sign points `yᵢ = ±1`, `Σᵢ yᵢ = 0`;
blowing up each of them and then the intersection of its exceptional divisor with the strict
transform of `t = ∞` gives a nondegenerate compactification, whose new divisors `E₁`, `E₂` satisfy
`ord_{E₁}(t·g) = 1` and `ord_{E₂}(t·g) = 0` (FSY §§4.3.2–4.3.3, pp. 35–37).

*Proof sketch.* Check the local monomial models at `t = 0` times each boundary chart; near a balanced
point put `g` in quadratic normal form and compute the two blow-up charts; read off boundary, zero
and pole orders.

**Checks.**

- For `k = 2` there are two balanced sign points, `(1, −1)` and `(−1, 1)`; for odd `k` there are none,
  since a sum of an odd number of `±1` is nonzero.
- The positive order on `E₁` is a zero of `t·g`, not a pole.
- For `k = 1`, `g = y + y⁻¹` has nondegenerate critical points `y = ±1` with values `±2 ≠ 0`, and no
  blow-up at `t = ∞` is needed.

*Needs:* §§6.1, 3.1; SchemeAndStackFoundations §§4.11, 4.17; MixedHodgeModulesAndIrregularHodgeTheory
Layer N (nondegenerate compactifications).

### 6.3 Newton weights of the moment forms

**Theorem.** For `k ≥ 1`, the monomials of `f_k = Σᵢ xᵢ + zΣᵢ xᵢ⁻¹` lie on `2α₀ + Σᵢ αᵢ = 1`, and its
cone is cut out by `α₀ + Σᵢ εᵢαᵢ ≥ 0`, `εᵢ ∈ {0, 1}`. The Laurent polynomial `f_k` and its cover
`f̃_k` are Newton-nondegenerate exactly when `k` is odd. In that case the Newton degrees of `zʲ` and
`tʲ` are `2j` and `j`, giving the Hodge bounds `k + 1 − 2j` and `k + 1 − j` for the corresponding
top-form classes (FSY §4.3.1, p. 35).

*Proof sketch.* Compute the exponent set, its supporting hyperplane and face equations; the face
critical equations have a balanced sign solution exactly for even `k`; apply the Newton filtration
theorem of MixedHodgeModulesAndIrregularHodgeTheory Layer N.

**Checks.**

- The `z`-exponent has Newton degree two and the `t`-exponent degree one.
- Even `k` needs the blow-up computation of §6.2 instead of the Newton argument.
- For `k = 1` the Newton polygon of `x + z/x` has vertices `(1, 0)` and `(−1, 1)` in the coordinates
  `(α₁, α₀)`, both on `2α₀ + α₁ = 1`.

*Needs:* §§3.1, 5.6; MixedHodgeModulesAndIrregularHodgeTheory Layer N (Newton complex, concentration
and comparison).

### 6.4 The Hodge filtration on the explicit bases

**Theorem.** For `k ≥ 1`: on the double cover, `F^pH¹` is spanned by the classes `tʲṽ₀^k dt/t` with
`0 ≤ j < 2⌊(k + 1)/2⌋` and `j ≤ k + 1 − p`; on `𝔾_m`, `F^pH¹` is spanned by `zʲv₀^k dz/z` with
`0 ≤ j < ⌊(k + 1)/2⌋` and `2j ≤ k + 1 − p`. These hold for every integer `p` when `k` is odd and for
`p > k/2` when `k` is even. Pullback sends `zʲv₀^k dz/z` to `2t^{2j}ṽ₀^k dt/t`. A negative bound
means an empty span (FSY Proposition 4.21 and its proof, pp. 34–38).

*Proof sketch.* For odd `k` use §6.3. For even `k` use §6.2: the top form vanishes logarithmically
along `(k − j)E₁ + (k − 2j)E₂`, which gives `j ≤ k/2` on the cover. Filtered blow-up invariance and
`E₁` degeneration (MixedHodgeModulesAndIrregularHodgeTheory Layer N), the cover Hodge numbers of
§6.5 and strict `μ₂`-invariants turn the inclusions into equalities.

**Checks.**

- `k = 3`: `F⁴` is spanned by `j = 0`, `F²` contains `j = 0, 1`, and `F⁵ = 0`.
- For even `k` the theorem asserts nothing for `p ≤ k/2`.
- The factor `2` in the pullback comes from `dz/z = 2dt/t`.

*Needs:* §§6.2–6.3, 6.5, 5.6, 4.1; MixedHodgeModulesAndIrregularHodgeTheory Layer N.

### 6.5 Hodge numbers on the double cover

**Theorem.** For `k ≥ 1`, every nonzero Hodge number `h^{p,q}` of `H¹(𝔾_m, Sym^k K̃l₂)` equals one.
For odd `k` they occur at `p + q = k + 1` with `1 ≤ p ≤ k`, and at `(k + 1, k + 1)`. For even `k` they
occur at `p + q = k + 1` with `1 ≤ p ≤ k` and `p ∉ {k/2, k/2 + 1}`, at `(k/2 + 1, k/2 + 1)` and at
`(k + 1, k + 1)`. The middle cohomology is the weight-`(k + 1)` part (FSY Proposition 4.20,
pp. 32–34).

*Proof sketch.* Use the pure Hodge module `M` of rank `k` (§3.6) and its single-block monodromy at
`∞` (§5.4) to compute the rank-one Hodge graded pieces through the pure-input Fourier formula of
MixedHodgeModulesAndIrregularHodgeTheory Layer T; the nearby cycles at `τ = 0` and the constant
quotient `M′` give the two extra even-`k` classes and the top Tate class. The primitive part of the
monodromy filtration at `∞` is indexed by `k − 1`.

**Checks.**

- `k = 2`: only `(2, 2)` and `(3, 3)`, and the middle part is zero.
- `k = 3`: middle `(1, 3), (2, 2), (3, 1)` and the top class `(4, 4)`; total dimension `4 = k + 1`.
- The total dimension is `k + 1` for odd `k` and `(k − 2) + 2 = k` for even `k`, as in §5.5.

*Needs:* §§3.6, 4.1, 5.4–5.5; MixedHodgeModulesAndIrregularHodgeTheory Layer T (pure-input Fourier
Hodge numbers, constant correction, weights at infinity).

### 6.6 Hodge numbers of the Kloosterman moments

**Theorem.** For `k ≥ 1`, every nonzero Hodge number of `H¹(𝔾_m, Sym^k Kl₂)` equals one. For odd `k`
they occur at `p + q = k + 1` with `p ∈ {2, 4, …, k − 1}`, and at `(k + 1, k + 1)`. For even `k` they
occur at `p + q = k + 1` with `min(p, q) ∈ {2, 4, …, 2⌊(k − 1)/4⌋}`, at `(k/2 + 1, k/2 + 1)` exactly
when `4 ∣ k`, and at `(k + 1, k + 1)`. The middle cohomology is the pure weight-`(k + 1)` part, of
dimension `d_k`, with distinct `p`-indices (FSY Theorem 1.8, p. 7; proof pp. 37–38).

*Proof sketch.* Pull back the bases of §5.6 and use the `μ₂`-invariant filtered comparison with §6.4;
for odd `k` read off the even indices; for even `k` compute the upper half and conclude by Hodge
symmetry and §5.5; separate the top Tate class and the weight-`(k + 2)` class by the weight
decomposition of §4.1.

**Checks.**

- `k = 3`: middle `(2, 2)`; `k = 5`: `(2, 4), (4, 2)`; `k = 6`: `(2, 5), (5, 2)`.
- `k = 4`: no middle classes, an extra `(3, 3)` and the top class `(5, 5)`.
- `k = 7`: middle `(2, 6), (4, 4), (6, 2)`; the Hodge–Tate weights `2, 4, 6` are distinct.

*Needs:* §§6.4–6.5, 5.5, 4.1.

### Examples

- `k = 8`: middle `(2, 7), (7, 2)`, an extra `(5, 5)` since `4 ∣ 8`, and the top class `(9, 9)`; `d₈ = 2`.
- `k = 9`: middle `(2, 8), (4, 6), (6, 4), (8, 2)`; `d₉ = 4`.

### Dependencies

Layers 3–5. Other roadmaps: MixedHodgeModulesAndIrregularHodgeTheory, ShimuraCompactifications,
SchemeAndStackFoundations. Libraries: Tau Ceti.

## Layer 7: arithmetic models and Galois realizations

From now on `r = 2` and `K = K_{2,k} = {Σᵢ(yᵢ + yᵢ⁻¹) = 0} ⊂ 𝔾_m^k` over `ℤ`, with closure `K̄` in the
toric scheme `X_k` of §6.1.

### 7.1 Integral boundary geometry

**Theorem.** For `k ≥ 2`, `K̄` is smooth over `ℤ` along the toric boundary, and `K̄ ∖ K` is a relative
strict normal crossings divisor over `ℤ` whose components are the intersections of `K̄` with distinct
boundary components. On the standard chart, `K̄ ∩ (z₁ = 0) = ∅`, and on `K̄ ∩ (z_r = 0)` for `r ≥ 2` the
equation gives `∂g₁/∂z₁ = −1/z₁`, a unit (FSY §5.1.2, pp. 40–41; Remark 3.10, p. 22).

*Proof sketch.* On `g₁ = z_r = 0` solve `1 + z₁A = 0` with `A = 1 + z₂ + ⋯ + z₂⋯z_{r−1}`, so `A = −1/z₁` is
a unit in every residue characteristic; repeat on intersections of distinct boundary components and
transport by signed permutations (§6.1). The derivative need not be a unit on the whole divisor
`z_r = 0`.

**Checks.**

- The argument works at `p = 2` as well as at odd primes.
- Interior singular points of `K` remain possible and are treated in §7.2.
- For `k = 2` on the standard chart, `g₁ = 1 + z₁ + z₁²z₂² + z₁z₂²` and `g₁(0, z₂) = 1`, so
  `K̄ ∩ (z₁ = 0) = ∅`.

*Needs:* §§6.1, 4.2; ShimuraCompactifications §§C0.16–C0.18; SchemeAndStackFoundations §4.17.

### 7.2 Arithmetic quadratic singularities

**Theorem.** Let `k ≥ 2`. Over an odd residue characteristic `p`, the interior singular points of
`K` are the sign vectors `yᵢ = ±1` with `Σᵢ yᵢ = 0` in `𝔽_p`. For odd `k` their `S_k × μ₂`-orbits are
indexed by the odd `a ≥ 1` with `ap ≤ k`, there are `⌊k/(2p) + 1/2⌋` of them, and the local expansion
over `ℤ_p` has constant term `2ap` and a nondegenerate quadratic term `Q_{ap}`. For even `k` the orbits
are indexed by even `b ≥ 0` with `bp ≤ k`, giving `1 + ⌊k/(2p)⌋` orbits; `b = 0` gives the balanced
points of characteristic zero and positive `b` the additional bad-prime points. For odd `k` and
`p = 2` there is one singular point, `yᵢ = 1`, an isolated nonordinary quadratic singularity at which
the total space over `ℤ₂` is regular (FSY §5.1.3, pp. 41–44; §5.1.4, p. 45).

*Proof sketch.* Solve `1 − yᵢ⁻² = 0` together with `g = 0`; count orbits under permutations and
simultaneous inversion of all signs; compute the Hessian and the constant term in formal Morse
coordinates. At `p = 2`, `g(1, …, 1) = 2k` has `2`-adic valuation one for odd `k`, so the local equation
is not in the square of the maximal ideal and the total space is regular there.

**Checks.**

- `k = 3`, `p = 3`: one orbit, `a = 1`; `k = 9`, `p = 3`: orbits `a = 1, 3`, with constant terms `6` and
  `18`.
- The `a = 3` point at `k = 9`, `p = 3` has constant term of valuation two, so its local equation over
  `ℤ₃[√−3]` is `Q − u·(√−3)^4`, not of unit thickness.
- `k = 6`, `p = 3`: orbits `b = 0, 2`, so `1 + ⌊6/6⌋ = 2`.

*Needs:* §§7.1, 4.2; LefschetzPencilsAndVanishingCycles §§2.1–2.4 (ordinary quadratic points and their
normal form) and §6.6 (isolated singularities); SchemeAndStackFoundations §4.13 (regular schemes).

### 7.3 Resolution of the even moment hypersurfaces

For even `k ≥ 4`, blow up the ambient torus and its toric compactification at the balanced sign
points and take the strict transform `K′` of `K̄` (SchemeAndStackFoundations §4.11). Prove: over `ℚ`,
`K′` is smooth with strict normal crossings boundary and exceptional divisors smooth quadrics; the
`χ`-isotypic compact-support cohomology in degree `k − 1` is unchanged by the modification; at odd
primes the remaining interior singularities are the positive-`b` ordinary quadratic points; the
weight-`(k − 2)` boundary correction in the `χ`-part has dimension `δ_{4∣k}`. The case `k = 2` is
handled directly, since its middle motive vanishes (FSY proof of Theorem 5.17, (5.18)–(5.21),
pp. 45–48). The API proves the following facts.

- The strict transform comes with an `S_k × μ₂`-equivariant proper map to `K̄`.
- The resolved boundary and its strata are strict normal crossings over `ℚ`.
- The map on `χ`-isotypic `H^{k−1}_c` is an isomorphism in the Betti, de Rham and `ℓ`-adic
  realizations.
- The `χ`-part of the weight-`(k − 2)` boundary correction has dimension `δ_{4∣k}`.

**Checks.**

- `k = 4`: the boundary correction has dimension one while the middle dimension is zero.
- `k = 6`: the boundary correction has dimension zero.
- `k = 6`, `p = 3`: the `b = 2` orbit survives the resolution, so the integral model is not smooth
  everywhere.

*Needs:* §§7.1–7.2, 3.2; SchemeAndStackFoundations §§4.11, 4.17; EtaleCohomologyFoundations §F.7
(blow-ups and projective bundles); DeligneWeightsAndPurity §8.24.

### 7.4 Galois realizations of the moment motives

Define, for `k ≥ 2` and every prime `ℓ`, `V_{k,ℓ} = (gr^W_{k−1}H^{k−1}_c(K_{ℚ̄}, ℚ_ℓ))^χ(−1)` with its
continuous action `r_{k,ℓ}` of `Gal(ℚ̄/ℚ)`, and `V_{1,ℓ} = 0` (FSY (5.5), p. 40; (5.9), pp. 42–43;
(5.19), pp. 46–47). The API proves the following facts.

- `V_{k,ℓ}` is the `ℓ`-adic realization of `M_k` (§4.4), and has dimension `d_k`.
- It carries a perfect `Gal(ℚ̄/ℚ)`-equivariant pairing to `ℚ_ℓ(−k − 1)`, symmetric for odd `k` and
  alternating for even `k`.
- For odd `k` it is the `χ`-part of the weight-`(k − 1)` kernel of the boundary restriction on the
  smooth proper compactification `K̄`; for even `k` the same holds for `K̄′` of §7.3.
- Its de Rham and Betti realizations are the filtered middle cohomology of §4.1.

**Checks.**

- `k = 1, 2, 4` give zero-dimensional representations.
- `k = 6` gives a two-dimensional symplectic representation and `k = 7` a three-dimensional
  orthogonal one.
- At a good prime the pairing multiplier of geometric Frobenius is `p^{k+1}`, not `p^{−(k+1)}`.

*Needs:* §§4.4, 6.6, 7.1, 7.3; MotivesAndAlgebraicCycles §2.7 and Layer 5 (étale realization) and
gap:nori-weight-filtration; EtaleCohomologyFoundations §F.4.5; DeligneWeightsAndPurity §8.24.

### Examples

- `k = 3`: `V_{3,ℓ}` is one-dimensional with pairing weight `4`.
- `k = 5`: `V_{5,ℓ}` is two-dimensional orthogonal; it is unramified at every prime `p ∉ {3, 5, ℓ}`
  and its conductor is `15` (§8.5).

### Dependencies

Layers 4 and 6. Other roadmaps: ShimuraCompactifications, SchemeAndStackFoundations,
LefschetzPencilsAndVanishingCycles, EtaleCohomologyFoundations, DeligneWeightsAndPurity,
MotivesAndAlgebraicCycles.

## Layer 8: local factors and conductors

This layer identifies the trivial and middle factors of `Z_k(p; T)` at every prime, computes the
local structure of `V_{k,ℓ}` at every prime `p ≠ ℓ`, and derives the Euler factors and conductors.

### 8.1 The middle moment polynomial and its weights

Define `M_k(p; T) = det(1 − F_pT | H¹_mid(𝔾_{m,𝔽̄_p}, Sym^k Kl₂))` for `k ≥ 1`, with geometric Frobenius
and `ℓ ≠ p` (FSY §5.1.1, pp. 39–40). It has constant term `1`; its reciprocal roots are Weil numbers
of weight `k + 1`; and the reciprocal roots are stable under `α ↦ p^{k+1}/α`. The roots of
`M_k(p; T)` in `T` have absolute value `p^{−(k+1)/2}`. The API proves the following facts.

- `M_k(p; 0) = 1`, and `M_k(p; T)` divides `Z_k(p; T)` in `ℚ_ℓ[T]` by the surjection `H¹_c → H¹_mid`.
- Every reciprocal root of `M_k(p; T)` is a `p`-Weil number of weight `k + 1`, by
  DeligneWeightsAndPurity §7.12 (iii) applied to the lisse sheaf `Sym^k Kl₂`, pure of weight `k`.
- The perfect pairing of §1.4 makes the reciprocal roots stable under `α ↦ p^{k+1}/α`.
- The quotient `Z_k(p; T)/M_k(p; T)` is the determinant on the kernel of `H¹_c → H¹`, which is the image
  of the local invariants at `0` and `∞`; its reciprocal roots have weights `0` (one root, at `0`)
  and `k` (from `∞`, only for even `k`).

**Theorem.** For every prime `p` and `k ≥ 1`, `Z_k(p; T) = (1 − T)·Q(T)` with `Q ∈ ℂ[T]` all of whose
roots have absolute value `p^{−(k+1)/2}`, or, only for even `k`, `p^{−k/2}`
(`momentSeries_weights`; FSY §1.1, p. 3, and (5.2)–(5.4), pp. 39–40).

*Proof sketch.* Combine §1.4 with the purity of the middle image and the weights of the local
invariants: the invariants at `0` of `Sym^k` of a single unipotent block of rank two form one line of
weight `0`, and the invariants at `∞` are computed from §5.2's `ℓ`-adic counterpart, the formal
structure of `Sym^k Kl₂` at `∞` in characteristic `p`, which contributes only for even `k` and with
weight `k`. At odd `p` an alternative route is PadicDifferentialEquationsAndRigidCohomology
§RD.6.98 (b) with §RD.7.21a, through the rigid trace formula, which gives the same polynomial.

**Checks.**

- `M₁ = M₂ = M₄ = 1` at every prime.
- `M₃(2; T) = 1 + 4T`: the reciprocal root is `−4` and the root `−1/4`, of absolute value
  `2^{−2} = 2^{−(3+1)/2}`.
- At `k = 3`, `p = 2` the partner of `−4` is `16/(−4) = −4`; the involution `α ↦ p^{(k+1)/2}/α` would
  send it to `−1`, which is not a root.
- `Z₆(3; T) = (1 − T)(1 + 27T)`: the root `−1/27` has absolute value `3^{−3} = 3^{−6/2}`, a weight-`k`
  boundary root; `M₆(3; T) = 1`.

*Needs:* §§1.2, 1.4, 0.3; DeligneWeightsAndPurity §§0.16, 7.12; EtaleCohomologyFoundations §F.5;
PadicDifferentialEquationsAndRigidCohomology §§RD.6.98, RD.7.21a for the alternative odd-prime route.

### 8.2 Degrees and trivial factors

Define `momentDegree p k` as `(k + 1)/2 − ⌊(k + p)/(2p)⌋` for odd `k` and odd `p`, `(k + 1)/2` for odd
`k` and `p = 2`, `k/2 − ⌊k/(2p)⌋` for even `k` and odd `p`, and `⌊(k + 2)/4⌋` for even `k` and `p = 2`;
here `⌊(k + p)/(2p)⌋ = ⌊k/(2p) + 1/2⌋`. The API proves the following facts.

- `momentDegree p k = ⌊(k + 1)/2⌋` for `p > k`, the uniform value.
- `momentDegree p k = (k + 1)/2 − |Θ⁺_p| − |Θ⁻_p|` for odd `k` and odd `p`.
- For even `k`, `k/2 − ⌊k/4⌋ = ⌊(k + 2)/4⌋`, so the even formula at `p = 2` agrees with the odd-`p`
  formula evaluated at `p = 2`.

**Theorem.** For every prime `p` and `k ≥ 1`, `Z_k(p; T)` is a polynomial with integer coefficients,
constant term `1` and degree `momentDegree p k` (`momentSeries_eq_intPolynomial`; FSY (1.5), p. 5,
and (5.1)–(5.4), pp. 39–40). Moreover: for odd `k`, `Z_k = (1 − T)M_k` at every `p`; for even `k` and
odd `p`, with `u = ⌊k/(2p)⌋`, `v = ⌊k/(4p) + 1/2⌋` and `m = u + δ_{4∣k}`,
`Z_k = (1 − T)(1 − (−1)^{(p−1)/2}p^{k/2}T)^v(1 − p^{k/2}T)^{m−v}M_k`; for even `k` and `p = 2`,
`Z_k = (1 − T)(1 − 2^{k/2}T)^{a_k}(1 + 2^{k/2}T)^{b_k}M_k` with `deg M_k = 2⌊(k + 2)/12⌋ − 2δ_{12∣k}`,
where `a_k = ⌊k/24⌋ + 1` for `k ≡ 0, 8, 12, 16, 18, 20 (mod 24)` and `⌊k/24⌋` otherwise, and
`b_k = ⌊k/24⌋ + 1` for `k ≡ 6, 12, 14, 18, 20, 22 (mod 24)` and `⌊k/24⌋` otherwise. The degree equals
`Sw_∞(Sym^k Kl₂)`. At odd `p` the factorization is the `ℓ`-adic form of
PadicDifferentialEquationsAndRigidCohomology §RD.7.21a; the two agree because both sides are
determinants equal to `Z_k(p; T)`, and the content here is the `p = 2` case, the degrees and the
`ℓ`-adic middle factor.

*Proof sketch.* Integrality is §1.5. By §1.4 and the curve Euler–Poincaré formula of
CongruenceSpectralGap §4.2b, `deg Z_k = Sw_∞(Sym^k Kl₂)`; the Swan conductor and the local invariants at
`0` and `∞` are computed from the local structure of `Kl₂` at `∞` (Fu–Wan for odd `p`, Yun for
`p = 2`, as recorded in FSY §5.1.1). Separate the weights `0`, `k` and `k + 1` (§8.1) to identify the
factors.

**Checks.**

- `k = 4`: `(1 − T)(1 − p²T)` for odd `p` and `1 − T` for `p = 2`.
- `k = 12`, `p = 2`: degree `⌊14/4⌋ = 3`, `a = b = 1`, `deg M = 0`, and
  `Z₁₂(2; T) = (1 − T)(1 − 64T)(1 + 64T)`; `k = 10`, `p = 2`: `Z₁₀(2; T) = (1 − T)(1 + 24T + 2048T²)` with
  `deg M = 2`.
- `k = 9`, `p = 3`: `⌊(9 + 3)/6⌋ = 2`, degree `5 − 2 = 3`; `k = 3`, `p = 3`: degree `1`, `Z₃(3; T) = 1 − T`.
- `k = 8`, `p = 3`: `u = v = 1`, `m = 2`, and `Z₈(3; T) = (1 − T)(1 + 81T)(1 − 81T)`, so `M₈(3; T) = 1`.

*Needs:* §§1.4–1.5, 8.1; CongruenceSpectralGap §4.2b (curve Euler–Poincaré, local structure of
`Kl₂`); PadicDifferentialEquationsAndRigidCohomology §RD.7.21a at odd primes.

### 8.3 Local structure at odd symmetric powers

**Theorem.** Let `k = 2m + 1 ≥ 1` and `p ≠ ℓ` primes. At `p = 2`, `V_{k,ℓ}` is unramified and
`V_{k,ℓ}[ζ₂]`, as a Frobenius module, is `H¹_mid(𝔾_{m,𝔽̄₂}, Sym^k Kl₂)`. At odd `p`, `V_{k,ℓ}` is tamely
ramified with an orthogonal decomposition `V = M ⊕ E` of `Gal(ℚ̄_p/ℚ_p)`-modules, where `M` is
unramified with `M[ζ_p] = H¹_mid(𝔾_{m,𝔽̄_p}, Sym^k Kl₂)`, and `E` has one line for each
`a ∈ Θ⁺_p ∪ Θ⁻_p`, on which the Galois group acts by `ε_a·χ_cyc^{−m−1}`, `ε_a` the quadratic character
of `ℚ_p(√((−1)^{(1+ap)/2}·2ap))`. Then `V^{I_p} = M ⊕ E⁺` with `E⁺` spanned by the lines with
`a ∈ Θ⁺_p`, on which geometric Frobenius acts by `((−1)^{(1+ap)/2}·2a′/p)·p^{m+1}`,
`a′ = a/p^{v_p(a)}` (FSY Theorem 5.8 and Remark 5.12, pp. 42–44).

*Proof sketch.* Use the compactification and the boundary spectral sequence with §4.5. At odd `p`
apply LefschetzPencilsAndVanishingCycles §§2.7–2.8 at the ordinary quadratic points of §7.2 and the
discriminant computation of its Layer LPV.2 Examples to split off the vanishing lines; at `p = 2`
apply its §6.6 at the isolated singular point of §7.2, which gives injectivity of specialization, and
conclude by equality of dimensions with §8.2. The character `ε_a` is unramified exactly when the
radicand has even valuation, that is, when `v_p(a)` is odd.

**Checks.**

- `k = 9`, `p = 3`: `Θ⁻₃ = {1}` and `Θ⁺₃ = {3}`; the `a = 1` line is ramified and the `a = 3` line
  unramified, with Frobenius eigenvalue `((−1)^5·2/3)·3^5 = 243`.
- The decomposition is local; global semisimplicity of `V_{k,ℓ}` is not asserted.
- `k = 3`, `p = 3`: `Θ⁻₃ = {1}`, `Θ⁺₃ = ∅`, `M = 0`, so `V^{I₃} = 0` and the Euler factor at `3` is `1`.

*Needs:* §§7.2, 7.4, 4.5, 8.2; LefschetzPencilsAndVanishingCycles §§2.7–2.8, the Examples of Layer
LPV.2 and §6.6; DeligneWeightsAndPurity §8.24.

### 8.4 Local structure at even symmetric powers

**Theorem.** Let `k ≥ 2` be even, `p` odd and `ℓ ≠ p`. Inertia acts on `V_{k,ℓ}` unipotently with
`(σ − 1)² = 0`; its logarithm has isotropic image `U` of dimension `u = ⌊k/(2p)⌋`; `V^{I_p} = U^⊥`, and
inertia acts trivially on `V/U`. After adjoining `ζ_p`, `V^{I_p}` is the quotient
`H¹_c(𝔾_{m,𝔽̄_p}, Sym^k Kl₂)/E`, where `E = ℚ_ℓ(0)` if `4 ∤ k`, and `E` is an extension of
`ℚ_ℓ(−k/2)` by `ℚ_ℓ(0)` if `4 ∣ k` (FSY Theorem 5.17, pp. 45–48). This is a quotient, not a direct-sum
splitting.

*Proof sketch.* Use the resolution of §7.3, the boundary spectral sequence, and the odd-dimensional
Picard–Lefschetz transvection formula of LefschetzPencilsAndVanishingCycles §2.8 at the positive-`b`
points; the weights of §8.2 show that the inclusions of invariant and vanishing subspaces are
equalities; the Frobenius on each quadric piece is `(−1)^{bp(p−1)/4}p^{(k−2)/2}` before the twist.

**Checks.**

- For `p > k/2`, `U = 0` and `V_{k,ℓ}` is unramified at `p`.
- `k = 6`, `p = 3`: `dim U = 1`, `dim V = 2`, `dim V^{I} = 1`.
- `k = 2`: `V = 0` and every statement is about the zero space.

*Needs:* §§7.3–7.4, 8.2, 4.5; LefschetzPencilsAndVanishingCycles §§2.7–2.8.

### 8.5 Euler factors and conductor at odd symmetric powers

Define `thetaPlus k p` and `thetaMinus k p` as the finite sets `Θ⁺_p` and `Θ⁻_p`, the power series
`oddEulerFactorInv k p = Z_k(p; T)·(1 − T)⁻¹·Π_{a ∈ Θ⁺_p}(1 − ((−1)^{(1+ap)/2}·2a′/p)·p^{(k+1)/2}T)`
in `ℂ⟦T⟧` for a prime `p`, its inverse `oddEulerFactor k p` (and `1` at non-primes), and the conductor
`oddConductor k = Π_{p odd} p^{|Θ⁻_p|}` (FSY (5.13)–(5.14) and Remark 5.15, pp. 44–45). The API proves
the following facts.

- For odd `k`, every prime `p` and `ℓ ≠ p`, `oddEulerFactorInv k p` is the polynomial
  `det(1 − F_pT | V_{k,ℓ}^{I_p})`, independent of `ℓ`, by §§8.2–8.3.
- `Θ⁺₂ = ∅`, so at `p = 2` the factor is `M_k(2; T)`.
- `oddConductor k = Π_{j ≤ k, j odd} sf(j)`, by counting odd `j ≤ k` according to the parity of
  `v_p(j)`.
- These local factors and the conductor are unchanged by global semisimplification of `V_{k,ℓ}`:
  the inertia images are finite and `N = 0`, and finite-group invariants are exact in characteristic
  zero on a Jordan–Hölder filtration restricted to a decomposition group.

**Theorem.** For odd `k`, the conductor of the compatible system `V_{k,ℓ}` is `oddConductor k`: at
odd `p` the exponent is `dim V − dim V^{I_p} = |Θ⁻_p|`, the Swan term vanishing by tameness, and at
`p = 2` it is zero (ArithmeticGaloisRepresentations §3.3).

**Checks.**

- `k = 9`: `sf(9) = 1` whereas the radical is `3`; `oddConductor 9 = sf(3)sf(5)sf(7)sf(9) = 105`.
- `k = 3`: the conductor is `3` and the Euler factor at `3` is `1`.
- `k = 1`: `Θ⁺_p = Θ⁻_p = ∅` for every `p`, the Euler factors are `1`, and `oddConductor 1 = 1`.

*Needs:* §§8.2–8.3; ArithmeticGaloisRepresentations §§1.7, 3.3; Mathlib `legendreSym`,
`padicValNat`, `PowerSeries`.

### 8.6 Euler factors and conductor at even symmetric powers

Define, for even `k` and an odd prime `p`,
`evenEulerFactorInv k p = Z_k(p; T)·(1 − T)⁻¹·(1 − p^{k/2}T)^{−δ_{4∣k}}`, its inverse `evenEulerFactor k p` (and `1` at `p = 2` and at non-primes),
the odd conductor `evenConductor k = Π_{p odd} p^{⌊k/(2p)⌋}` and the dimension `middleDim k = d_k`
(FSY (5.22), pp. 48–49). The API proves the following facts.

- For even `k ≥ 2`, odd `p` and `ℓ ≠ p`, `evenEulerFactorInv k p` is the polynomial
  `det(1 − F_pT | V_{k,ℓ}^{I_p})`: by §8.4 it is `Z_k(p; T)/det(1 − F_pT | E)`, and
  `det(1 − F_pT | E) = (1 − T)(1 − p^{k/2}T)^{δ_{4∣k}}`.
- With `u = ⌊k/(2p)⌋` and `v = ⌊k/(4p) + 1/2⌋`, `evenEulerFactorInv k p` equals
  `M_k(p; T)(1 − p^{k/2}T)^u` for `p ≡ 1 (mod 4)` and `M_k(p; T)(1 + p^{k/2}T)^v(1 − p^{k/2}T)^{u−v}` for
  `p ≡ 3 (mod 4)`, by §8.2.
- `evenConductor k = Π_{2 ≤ j ≤ k, j even} oddRad(j)`.
- The exponent of `p` in the conductor of `V_{k,ℓ}` is `rank N = u`, the Swan term vanishing and
  inertia acting through a unipotent group.

**Theorem.** For even `k ≥ 2`, the conductor of `V_{k,ℓ}` is `2^{r_k}·evenConductor k`, where
`r_k = Sw₂(V_{k,ℓ}) + codim V_{k,ℓ}^{I₂} ≥ 0` (FSY §5.1.4, p. 49). No formula for `r_k` is asserted.

**Checks.**

- `k = 6`, `p = 3`: the extra factor in `L⁻¹` is `1 + 27T`, and `evenEulerFactorInv 6 3 = 1 + 27T`.
- The even formula uses odd radicals and the odd formula square-free parts: `evenConductor 6 = 3`,
  while `Π_{j ≤ 5 odd} sf(j) = 15`.
- `k = 4`, odd `p`: `Z₄ = (1 − T)(1 − p²T)` and `δ_{4∣4} = 1`, so `evenEulerFactorInv 4 p = 1`.

*Needs:* §§8.2, 8.4; ArithmeticGaloisRepresentations §3.3; Mathlib `PowerSeries`.

### Examples

- `k = 5`: Euler factors `M₅(p; T)` at `p ≠ 3, 5`; at `p = 3`, `Θ⁻₃ = {1}` and the factor is
  `M₅(3; T)⁻¹ = (1 + 27T)⁻¹`; at `p = 5`, `Θ⁻₅ = {1}` and the factor is `(1 − 125T)⁻¹`; conductor `15`.
- `k = 8`: odd conductor `evenConductor 8 = 3`, and at `p = 3` the inverse factor is `1 + 81T`.

### Dependencies

Layers 1, 4 and 7. Other roadmaps: CongruenceSpectralGap, DeligneWeightsAndPurity,
LefschetzPencilsAndVanishingCycles, ArithmeticGaloisRepresentations,
PadicDifferentialEquationsAndRigidCohomology, EtaleCohomologyFoundations. Libraries: Mathlib.

## Layer 9: the `p`-adic comparison and compatible systems

### 9.1 The `p`-adic realization of the moment motives

**Theorem.** For every `k ≥ 2` and every prime `p`, the geometric hypotheses of
PadicDifferentialEquationsAndRigidCohomology §RD.7.21 hold for `V_{k,p}`: the toric compactification
`K̄`, for even `k` the resolution `K′` and its compactification `K̄′`, their boundary strata, the
projector `e_χ` and the identification of `V_{k,p}(1)` with the `χ`-part of the weight-`(k − 1)` boundary
kernel (§§6.1, 7.1, 7.3–7.4), together with the rigid analogues of PadicDifferentialEquationsAndRigidCohomology
§RD.6.98. The comparison hypothesis `(C_dR)` holds by CohomologyComparisons §2.13, and `D_dR(V_{k,p})`
is the filtered middle de Rham cohomology of §4.1 over `ℚ_p`. Consequently `V_{k,p}` is de Rham for
every `p`, including `p = 2`; for odd `p` with `p > k` (odd `k`) or `p > k/2` (even `k`) it is crystalline
with `H¹_{rig,mid}(𝔾_m, Sym^k Kl₂) ⊗ K ≅ D_cris(V_{k,p}) ⊗ K`; and for every odd `p` it is semistable over
`ℚ_p(√−p)` with a Frobenius-compatible injection of the rigid middle module into `D_st`. Further, the
filtered input of §RD.7.22 holds by §§4.1 and 6.6, so for every odd `p` the Newton polygon of
`H¹_{rig,c}` lies above the compact-support Hodge polygon and the coefficients of
`Z_k(p; T) = Σ c_nTⁿ` satisfy `v_p(c_n) ≥ n(n − 1)` (FSY Proposition 5.23, pp. 49–51; Corollary 5.27
and Remark 5.28, pp. 51–52). The conclusions are those of §§RD.7.21–RD.7.22; this target supplies
their hypotheses.

*Proof sketch.* The geometric identifications are §§7.1–7.4 and §4.3. At good odd primes the model is
smooth and CohomologyComparisons §§3.4–3.5 apply. At bad odd primes the semistable model is obtained
from the quadratic points of §7.2: at points of unit thickness §RD.7.20 applies directly, and at
points of higher thickness (positive `a` or `b` divisible by `p`) the extension of §RD.7.20 in the
supplier contract (gap:higher-thickness-picard-lefschetz) applies; CohomologyComparisons §§4.3–4.4
then give `(C_st)`.

**Checks.**

- At good odd primes the crystalline statement uses no semistable model.
- The de Rham statement includes `p = 2`; the semistable statement is only at odd `p`.
- `k = 9`, `p = 3`: the `a = 3` point has thickness two, so this case needs the higher-thickness
  contract; the `a = 1` point has unit thickness.
- `k = 3`, `p = 3`: `Z₃(3; T) = 1 − T` satisfies the valuation bound trivially, also when the middle
  space vanishes.

*Needs:* §§4.1, 4.3, 6.6, 7.1–7.4; PadicDifferentialEquationsAndRigidCohomology §§RD.6.98, RD.7.20,
RD.7.21, RD.7.22 and gap:higher-thickness-picard-lefschetz; CohomologyComparisons §§2.13, 3.4–3.5,
4.3–4.4; PadicHodgeTheory §3.2.

### 9.2 Regular polarized moment systems

**Theorem.** For each `k ≥ 1` the family `{r_{k,ℓ}^{ss}}_ℓ` is a weakly compatible system over `ℚ`
with rational Frobenius polynomials, pure of weight `k + 1`, de Rham at `ℓ` and crystalline for `ℓ` large,
with distinct Hodge–Tate weights equal to the `p`-indices of the middle Hodge table of §6.6, in the
convention `HT(χ_cyc) = −1`. It carries a perfect pairing of parity `(−1)^{k+1}` with multiplier
`χ_cyc^{−k−1}`: orthogonal with even multiplier for odd `k`, symplectic with odd multiplier for even
`k`. Hence it is regular, totally odd and polarized in the sense of
PotentialModularityAndCompatibleSystems §§1.5–1.6. For `k = 1, 2, 4` the system is zero, and for
`k = 3` it is a character (FSY §5.3.3, pp. 57–58).

*Proof sketch.* Weak compatibility at almost all primes comes from §§4.5 and 8.2. The good-prime part
of §9.1 gives the de Rham and crystalline properties and identifies the Hodge–Tate multiset; the
supplier PadicHodgeTheory §3.2 uses the opposite sign, and its weights are negated. The pairing of
§7.4 passes to the semisimplification by the supplier contract gap:semisimplification-similitude-form
with `g* = χ_cyc(g)^{−k−1}g⁻¹`. Check the sign of the multiplier at complex conjugation in both
parities against the polarization of ArithmeticGaloisRepresentations §7.4.

**Checks.**

- `k = 7`: Hodge–Tate weights `2, 4, 6` here and `−2, −4, −6` in the supplier's convention; both are
  regular, and the orthogonal multiplier is even.
- `k = 6`: weights `2, 5`, and the symplectic multiplier is odd.
- Weak compatibility alone does not determine the Euler factor at `2` for even `k`.

*Needs:* §§4.5, 6.6, 7.4, 8.2–8.4, 9.1; PotentialModularityAndCompatibleSystems §§1.1, 1.5–1.6;
ArithmeticGaloisRepresentations §§1.7, 7.4 and gap:semisimplification-similitude-form; PadicHodgeTheory
§3.2.

### Examples

- `k = 5`: a rank-two orthogonal system with Hodge–Tate weights `2, 4` and multiplier `χ_cyc^{−6}`.
- `k = 3`: the character `χ_{−3}χ_cyc^{−2}`, with Hodge–Tate weight `2`.

### Dependencies

Layers 4, 6–8. Other roadmaps: PadicDifferentialEquationsAndRigidCohomology, CohomologyComparisons,
PadicHodgeTheory, PotentialModularityAndCompatibleSystems, ArithmeticGaloisRepresentations.

## Layer 10: determinants, gamma factors and completion

### 10.1 Determinants of the odd moment systems

**Theorem.** For odd `k ≥ 1`, `det r_{k,ℓ} = χ_{k!!}·χ_cyc^{(1−k²)/4}`, where `k!! = 1·3·5⋯k` and
`χ_{k!!}` is the quadratic character of `ℚ(√(±k!!))`, with the sign `+` for `k ≡ 1, 7 (mod 8)` and `−`
otherwise (the trivial character when `±k!!` is a square). For `k = 4r + 3` the unique middle Hodge
line of bidegree `((k + 1)/2, (k + 1)/2)` has complex-conjugation sign `−1` (FSY proof of
Corollary 5.30, pp. 52–53; §5.3.1, p. 55).

*Proof sketch.* Compute `det(F_p)` at good primes `p > k` from Fu–Wan's determinant formula as
recorded by FSY, identify the character by ArithmeticGaloisRepresentations §5.3, and on the Hodge
decomposition pair conjugate unequal bidegrees: `det(c) = (−1)^{#pairs}·ε`, and the determinant
character forces `ε = −1` on the middle line.

**Checks.**

- `k = 3`: the quadratic field is `ℚ(√−3)` and the cyclotomic exponent `−2`; this matches
  `M₃(p; T) = 1 − (p/3)p²T`.
- `k = 7`: `7!! = 105` and the sign is `+`; a uniform minus sign fails here.
- `k = 1`: `d₁ = 0`, the determinant of the zero space is trivial, and `(1 − 1)/4 = 0`.

*Needs:* §§6.6, 9.2; ArithmeticGaloisRepresentations §5.3.

### 10.2 Gamma factors

Define `paperGamma d s = π^{−ds/2} Π_{j=1}^d Γ((s − j)/2)` with Mathlib's `Complex.Gamma`. The API
proves the following facts.

- With `Γ_ℝ(s) = π^{−s/2}Γ(s/2)`, `Π_{j=1}^d Γ_ℝ(s − j) = π^{d(d+1)/4}·paperGamma d s`.
- `paperGamma 0 s = 1`.
- `paperGamma d` is meromorphic on `ℂ` with poles only at `s ∈ {j − 2m : 1 ≤ j ≤ d, m ≥ 0}`.

**Theorem.** The archimedean factor of `M_k` given by the Hodge recipe of
PotentialModularityAndCompatibleSystems §1.15, with the middle Hodge table of §6.6 and the real sign
of §10.1 on the middle line, is `Π_{j=1}^{d_k} Γ_ℝ(s − j) = π^{d_k(d_k+1)/4}·paperGamma d_k s` (FSY
Corollary 5.30, pp. 52–53; §5.2, p. 52). The constant factor does not change any functional equation.

**Checks.**

- `k = 3`, `d = 1`: the standard factor is `Γ_ℝ(s − 1) = π^{1/2}·paperGamma 1 s`.
- `k = 5`, `d = 2`: `Γ_ℝ(s − 1)Γ_ℝ(s − 2) = π^{3/2}·paperGamma 2 s`, which is `Γ_ℂ(s − 2)` by the
  duplication formula `Γ_ℝ(z)Γ_ℝ(z + 1) = Γ_ℂ(z)`.
- `k = 4`, `d = 0`: both factors are `1`.

*Needs:* §§6.6, 10.1; PotentialModularityAndCompatibleSystems §1.15; Mathlib `Complex.Gamma`.

### 10.3 Epsilon factors

**Theorem.** Fix `ψ_p(x) = exp(2πi{x})` with `vol(ℤ_p) = 1` at finite `p`, `ψ_∞(x) = exp(−2πix)` with
Lebesgue measure, geometric reciprocity, and the Weil–Deligne relation `ρ(F)Nρ(F)⁻¹ = p⁻¹N`. With the
local constants of ArithmeticGaloisRepresentations §2.7: for odd `k` and odd `p` the factor is
`w_p·p^{|Θ⁻_p|((k+2)/2 − s)}` with `w_p² = (−1, ±k!!)_p`; at unramified primes, including `2`, it is
`1`; at `∞` it is `i^{(k²−1)/8}`; and the global product is `±N_k^{(k+2)/2 − s}`. For even `k` and odd `p`
it is `(−1)^{v_p}p^{u_p((k+2)/2 − s)}` with `u_p = ⌊k/(2p)⌋`, `v_p = u_p` for `p ≡ 1 (mod 4)` and
`v_p = ⌊k/(4p)⌋` for `p ≡ 3 (mod 4)`; at `∞` it is `(−1)^{δ_{8∣k}}`. The factor at `2` for even `k` is
kept as the local constant of `V_{k,ℓ}` at `2` (FSY §5.3.1, (5.31)–(5.36), Remarks 5.35 and 5.37,
pp. 53–56).

*Proof sketch.* Apply `ε(WD) = ε₀·det(−p^{−s}F | V^I/(ker N)^I)`. For odd `k`, `N = 0`, the
determinant is §10.1 and local duality applies; the Hilbert product formula controls the global
sign. For even `k` use the unipotent inertia of §8.4 and the eigenvalues on `U`; the archimedean sign
comes from the Hodge table.

**Checks.**

- `k = 6`, `p = 3`: `u = 1`, `v = ⌊6/12⌋ = 0`, so the local sign is `+1`, although the Euler factor
  correction is `1 + 27T`.
- For even `k` the monodromy term is essential: semisimplifying the Weil–Deligne representation and
  discarding `N` changes the factor.
- `k = 3`: at `∞` the factor is `i^{(9−1)/8} = i`.

*Needs:* §§8.3–8.4, 10.1–10.2; ArithmeticGaloisRepresentations §§2.7, 3.3.

### 10.4 Completed moment `L`-functions

For every prime `p` the Euler factor of `M_k` is `L_{k,p}(T) = det(1 − F_pT | V_{k,ℓ}^{I_p})⁻¹` for an
auxiliary `ℓ ≠ p`; it is independent of `ℓ` and has rational coefficients by §11.2. By §§8.5–8.6 it is
`oddEulerFactor k p` for odd `k` and every `p`, and `evenEulerFactor k p` for even `k` and odd `p`.
Define `eulerCoeff L n = Π_{p^j ∥ n}[T^j]L(p; T)`, the coefficients of the Dirichlet series of the Euler
product `Π_p L(p; p^{−s})`, so that `L_k(s) = LSeries (eulerCoeff (oddEulerFactor k)) s` for odd `k`.
Define the completed functions (FSY §1.1, pp. 2–4; (5.13)–(5.14), pp. 44–45; (5.22), pp. 48–49):

- for odd `k`, `Λ_k(s) = N_k^{s/2}·paperGamma d_k s·L_k(s)` with `N_k = oddConductor k` and
  `d_k = (k − 1)/2`;
- for even `k`, `Λ′_k(s) = (N′_k)^{s/2}·paperGamma d_k s·Π_{p odd}L_{k,p}(p^{−s})` with
  `N′_k = evenConductor k` and `d_k = middleDim k`, and
  `Λ_k(s) = 2^{r_k s/2}L_{k,2}(2^{−s})Λ′_k(s)`.

The API proves the following facts.

- `eulerCoeff L` is multiplicative, with `eulerCoeff L 1 = 1`, and its Dirichlet series equals the Euler
  product wherever either converges absolutely.
- Removing finitely many Euler factors multiplies the completed function by the product of their
  inverses.
- The standard completion with `Π Γ_ℝ(s − j)` differs from the one above by `π^{d_k(d_k+1)/4}`.
- Real logarithms are used for `N_k^{s/2}`, `(N′_k)^{s/2}` and `2^{r_k s/2}`.

**Checks.**

- `k = 4`: `d₄ = 0`, every odd-prime Euler factor is `1` and `Λ′₄ = 1`.
- `k = 3`: the reflection is `s ↦ 5 − s` with centre `5/2`, and `Λ₃(s) = 3^{s/2}π^{−s/2}Γ((s − 1)/2)L(s − 2, χ_{−3})`.
- For even `k`, omitting `L_{k,2}` or `2^{r_k s/2}` gives `Λ′_k`, not `Λ_k`.

*Needs:* §§8.5–8.6, 10.2, 11.2; Mathlib `LSeries`.

### Examples

- `k = 1, 2, 4`: every middle Euler product and completion is `1`.
- `k = 5`: `Λ₅(s) = 15^{s/2}π^{−s}Γ((s − 1)/2)Γ((s − 2)/2)L₅(s)`, and `L₅(s) = L(f₃, s − 2)` for the weight-three
  newform of level `15` with character `(·/15)` (FSY Table 1, p. 4).

### Dependencies

Layers 6, 8 and 9. Other roadmaps: ArithmeticGaloisRepresentations,
PotentialModularityAndCompatibleSystems. Libraries: Mathlib.

## Layer 11: potential automorphy and functional equations

### 11.1 Potential automorphy of the moment systems

**Theorem.** For `k ∉ {1, 2, 4}`, after enlarging the coefficient field the semisimplified system
`{r_{k,ℓ}^{ss}}` becomes, over one finite totally real Galois extension of `ℚ`, a direct sum of
systems attached to regular algebraic cuspidal polarized automorphic representations; it is
potentially isobaric automorphic, and its `L`-function continues meromorphically with the dual
functional equation (FSY Theorem 5.38, Corollary 5.39 and §5.3.3, pp. 56–58). Cuspidality of the
whole system is not asserted.

*Proof sketch.* Match coefficient field, weight, regularity and polarization of §9.2 to the
hypotheses of ModularityAndLanglandsExtensions §2.42 and apply it; §2.49 gives the analytic
consequences.

**Checks.**

- No new definition of potential automorphy is made; the theorem is an application.
- `k = 3`: the system is a Hecke character, automorphic over `ℚ` itself.
- The conclusion includes strict purity, hence strict local compatibility, for the semisimplified
  system.

*Needs:* §9.2; ModularityAndLanglandsExtensions §§2.42, 2.49.

### 11.2 Local factors under semisimplification

**Theorem.** For every `k ≥ 1`, prime `p` and `ℓ ≠ p`, the Weil–Deligne representation of `r_{k,ℓ}`
at `p` is pure of weight `k + 1` and has the same local `L`-factor and epsilon factor as that of
`r_{k,ℓ}^{ss}`. The local `L`-polynomials are independent of `ℓ` with coefficients in `ℚ`; the epsilon
factors agree after compatible embeddings into `ℂ` with the characters and measures of §10.3; the
conductor is independent of `ℓ`. In particular `L_{k,2}(T)` is the inverse of a polynomial in `ℚ[T]`
with constant term `1`. For odd `k`, `Z_k(2; T) = Σ c_nTⁿ` satisfies `v₂(c_n) ≥ n(n − 1)` (FSY Lemma 5.40,
p. 58; Remark 5.41, p. 59).

*Proof sketch.* Strict purity of the semisimplified system (§11.1) and a global Jordan–Hölder
filtration restricted to a decomposition group put the local representation in the situation of
ArithmeticGaloisRepresentations §2.6 (purity from a pure graded) and §2.7 (equality of local
constants). Rationality follows from coefficient-field automorphisms. For the `2`-adic bound apply weak
admissibility to the `2`-adic realization and restore the trivial factor `1 − T`.

**Checks.**

- The tame monodromy `N` of §8.4 is kept throughout.
- The statement applies at `p = 2` and gives no closed formula for the even factor there.
- `k = 3`, `p = 2`: `Z₃(2; T) = 1 + 3T − 4T²` and `v₂(c₂) = 2 ≥ 2`.

*Needs:* §§11.1, 8.2; ArithmeticGaloisRepresentations §§2.5–2.7, 3.3; ModularityAndLanglandsExtensions
§2.49; PadicHodgeTheory §3.2 and Layer 5 (weak admissibility).

### 11.3 The odd root number

**Theorem.** For odd `k`, the global root number of the orthogonal motive `M_k`, of even weight
`k + 1`, is `+1` (FSY §5.3.3, last paragraph, p. 58).

*Proof sketch.* For odd `k`, `K` is smooth over `ℚ` and `K̄` is smooth and projective (§§6.1, 7.1);
`M_k` is cut out of `H^{k−1}(K̄)(−1)`, a middle even degree, by the projector `e_χ` and the kernel of the
boundary restriction, and carries the symmetric pairing of §§4.4 and 7.4. Apply the supplier contract
gap:orthogonal-motive-root-number with the conventions of §10.3, and identify the motivic root number
with the automorphic sign through §11.2.

**Checks.**

- Even weight alone does not give the conclusion; the orthogonal pairing is part of the hypothesis.
- `k = 3`: the root number of `L(s, χ_{−3})` is `+1`, consistent with the theorem.
- `k = 1`: `M₁ = 0` and the root number of the empty product is `1`.

*Needs:* §§4.4, 7.1, 7.4, 10.3, 11.2; MotivesAndAlgebraicCycles gap:orthogonal-motive-root-number.

### 11.4 The odd moment functional equation

**Theorem.** For every odd `k ≥ 1`, the Euler product `L_k(s)` converges absolutely for
`Re s > (k + 3)/2`, and `Λ_k(s) = N_k^{s/2}π^{−d_k s/2}Π_{j=1}^{d_k}Γ((s − j)/2)L_k(s)`, `d_k = (k − 1)/2`,
`N_k = Π_{j ≤ k odd} sf(j)`, continues to a meromorphic function on `ℂ` with
`Λ_k(k + 2 − s) = Λ_k(s)` (`oddMoment_functionalEquation`; FSY Theorem 1.2, p. 3). The statement takes
the continuation in normal form, so that the functional equation holds at every point; no
holomorphy is asserted.

*Proof sketch.* Meromorphic continuation and the dual functional equation come from §11.1. The
polarization rewrites `Λ(R^∨, 1 − s)` as the reflection `s ↦ k + 2 − s`; §§10.2–10.4 supply the
conductor and gamma factor; §11.3 gives the sign. Absolute convergence follows from the purity of §11.2
at every prime.

**Checks.**

- `k = 3`: `N₃ = 3`, `d₃ = 1`, and the reflection `s ↦ 5 − s` is the functional equation of
  `L(s − 2, χ_{−3})`.
- `k = 1`: `Λ₁ = 1`, and the theorem is `1 = 1`.
- `k = 9`: `N₉ = 105`, `d₉ = 4`, and the Euler factor at `3` contains the unramified line
  `1 − 243T` from `Θ⁺₃ = {3}`.

*Needs:* §§10.4, 11.1–11.3.

### 11.5 The even moment functional equation

**Theorem.** For every even `k ≥ 2`, the Euler product over odd primes converges absolutely for
`Re s > (k + 3)/2`, and there are `r_k ≥ 0`, a polynomial `P_k ∈ ℚ[T]` with `P_k(0) = 1` and a sign
`ε_k ∈ {±1}` such that `Λ_k(s) = 2^{r_k s/2}P_k(2^{−s})⁻¹Λ′_k(s)` continues to a meromorphic function on
`ℂ` with `Λ_k(k + 2 − s) = ε_kΛ_k(s)` (`evenMoment_functionalEquation`; FSY Theorem 1.3, p. 4). Here
`r_k` is the conductor exponent at `2` and `P_k(T)⁻¹ = L_{k,2}(T)` the Euler factor at `2` of
`V_{k,ℓ}`; the Lean statement asserts the existence of such `r_k`, `P_k` and `ε_k`, since the
`2`-adic Galois representation is not available at the pins.

*Proof sketch.* Apply §11.1 and §11.2 at every prime including `2`; use the polarization for the
reflection and §§10.2–10.4 for the explicit odd-prime factors, conductor and gamma factor. The
`2`-adic invariants are the actual invariants of `V_{k,ℓ}` at `2`.

**Checks.**

- `k = 2, 4`: `r_k = 0`, `L_{k,2} = 1` and `ε_k = 1`.
- The conjectures `r_k = ⌊k/6⌋` and `ε_k = (−1)^{t_k}` with
  `t_k = ⌊k/8⌋ + Σ_{p ≡ 1 (4)}⌊k/(2p)⌋ + Σ_{p ≡ 3 (4)}⌊k/(4p)⌋ + δ_{8∣k}` are not part of the theorem; at
  `k = 8`, `t₈ = 1 + 0 + ⌊8/12⌋ + 1 = 2`, predicting `ε₈ = +1`.
- `k = 6`: `Λ′₆(s) = 3^{s/2}π^{−s}Γ((s − 1)/2)Γ((s − 2)/2)·(1 + 27·3^{−s})⁻¹·Π_{p ≥ 5}L_{6,p}(p^{−s})`;
  the known identification with the weight-four newform of level `6` gives `r₆ = 1`.

*Needs:* §§10.4, 11.1–11.2, 10.3.

### Examples

- `k = 5`: the theorem is the functional equation of `L(f₃, s)` for the weight-three newform of level
  `15`, shifted by `2`.
- `k = 8`: `d₈ = 2`, `N′₈ = 3`, and `L₈(s) = L(f₆, s − 2)` for a weight-six newform of level `6` (FSY
  Table 1, p. 4).

### Dependencies

Layers 9–10. Other roadmaps: ModularityAndLanglandsExtensions, ArithmeticGaloisRepresentations,
MotivesAndAlgebraicCycles, PadicHodgeTheory.

## Downstream consumers

- KloostermanSheavesAndBesselIsocrystals consumes Layers 1 and 2 in every rank: the normalized
  sheaves, the monodromy table and the Bessel sign dictionary.
- Any roadmap on Bessel moments and special values of `L_k(s)` consumes the motives of Layer 4, the
  Hodge numbers of Layer 6 and the functional equations of Layer 11.

## Worked examples

- **`k = 3`.** `Z₃(p; T) = (1 − T)(1 − (p/3)p²T)`, `M₃` is the rank-one motive with realization
  `χ_{−3}χ_cyc^{−2}`, Hodge type `(2, 2)`, conductor `3`, gamma factor `π^{−s/2}Γ((s − 1)/2)` and
  `Λ₃(s) = Λ₃(5 − s)`.
- **`k = 6`, `p = 3`.** `Z₆(3; T) = 1 + 26T − 27T² = (1 − T)(1 + 27T)`; the `b = 2` quadratic point of
  §7.2 gives a one-dimensional vanishing space `U`, the Euler factor `(1 + 27T)⁻¹`, conductor exponent
  `1`, and local sign `+1`.
- **`k = 12`, `p = 2`.** `Z₁₂(2; T) = (1 − T)(1 − 64T)(1 + 64T)`, so `M₁₂(2; T) = 1`, matching
  `deg M₁₂ = 2⌊14/12⌋ − 2 = 0`.

## Corrections to the sources

- FSY §3.2.1, p. 23: the Gauss–Manin expression for a single Kloosterman sheaf uses a torus of
  dimension involving `k`; the single sheaf integrates over `n` coordinates, and `nk` appears only
  for the `k`-th tensor power (§1.1).
- FSY proof of Proposition 4.20, p. 33: the primitive part for the monodromy at infinity is indexed by
  `k − 1`, the centre of the monodromy filtration there, not `k` (§6.5).
- FSY §5.1.1, p. 40: the reciprocal-root involution is `α ↦ p^{k+1}/α`; the printed exponent
  `(k + 1)/2` gives a map that does not preserve the roots (§8.1, Checks).
- FSY §5.1.2, p. 41: the derivative `∂g₁/∂z₁` is a unit on `K̄ ∩ (z_r = 0)`, not on the whole divisor
  `z_r = 0`, and normal crossings concern distinct components (§7.1).
- FSY Corollary 5.30, p. 52: the paper's gamma product and the standard factor differ by the constant
  `π^{d(d+1)/4}` (§10.2).
- FSY Example A.3, p. 63: for a smooth divisor `i*ℚ_U^p = ℚ_D^p[1]`; the printed display omits the
  shift.
- FSY Example A.27, p. 71: the pushforward supported at the zero point is a functor supported at that
  point, not the zero functor.
- XZ §1.1.1, pp. 2–3, §2.1.5, p. 10 and §4.1.13, p. 42: with `E^λ = (O, d + λdx)`, a horizontal map
  `F^*E → E` for `λ = ϖ` has multiplier `exp(ϖ(x^p − x))`, and the cyclic module equation and the
  horizontal-coefficient equation carry different signs (§2.6).
- FSY proof of Proposition 5.23, p. 50: every remaining quadratic point is asserted to have a local
  equation `Q − u·(√−p)²` with `u` a unit; the constant term `2ap` (respectively `2bp`) has valuation
  greater than one when `p` divides `a` (respectively `b`), for instance `18` at `k = 9`, `p = 3`,
  `a = 3`. The route of §9.1 handles these points through the higher-thickness supplier contract.

## References

- **FSY.** J. Fresán, C. Sabbah, J.-D. Yu, *Hodge theory of Kloosterman connections*, Duke Math. J.
  171 (2022), 1649–1747; arXiv:1810.06454v5. All page numbers refer to the arXiv v5 pagination.
- **XZ.** D. Xu, X. Zhu, *Bessel F-isocrystals for reductive groups*, Invent. Math. 227 (2022),
  997–1092; arXiv:1910.13391v2, preprint pagination.
- **Serre-orthogonal.** J.-P. Serre, *On the mod p reduction of orthogonal representations*,
  arXiv:1708.00046v3, Theorem 4.2.1 and Lemma 4.2.4, pp. 9–10.
- **Saito-orthogonal.** T. Saito, *The sign of the functional equation of the L-function of an
  orthogonal motive*, Invent. Math. 120 (1995), 119–142; cited by its locator through FSY §5.3.3,
  p. 58.
