# PKG-MixedHodgeModulesAndIrregularHodgeTheory: package report

Deliverables: `packages/MixedHodgeModulesAndIrregularHodgeTheory/README.md` (12 layers, 64 targets, every target with at least three Checks), `Suggested.lean`, `metadata.toml` (`topic = "math.AG"`), `sources.toml` (21 entries), and the top-level `gaps` list of `design/plan.json`.

## Headline theorems

| Headline | Layer / target | Status at the pins |
|---|---|---|
| Adolphson–Sperber: for a full-dimensional Newton-nondegenerate Laurent polynomial, the twisted de Rham complex of the torus is exact outside degree `n`, and `dim H^n = n! · vol(Δ)` | 12.6 | **Stated**: `TauCetiRoadmap.MixedHodgeModulesAndIrregularHodgeTheory.twistedDeRham_concentration_finrank`, with the definitions `LaurentRing`, `eulerDerivation`, `twistedEuler`, `twistedDifferential`, `forms`, `cocycles`, `coboundaries`, `topCohomology`, `latticePoint`, `newtonPolytope`, `faceEulerEval`, `IsNewtonNondegenerate` (all real bodies on Mathlib carriers) |
| Kashiwara's regular Riemann–Hilbert correspondence | 1.5 | Not statable: no algebraic `D`-modules or regular holonomic category, and no algebraically constructible or perverse sheaves on analytifications |
| Zucker's `L²` Hodge theorem on a punctured curve | 3.4 | Not statable: no variations of Hodge structure on complex manifolds and no weighted `L²` complexes |
| Saito: strict-support decomposition and semisimplicity, projective direct image (strictness, relative hard Lefschetz, purity), abelianness of `MHM(X)` with `W ∩ F` strictness, weight bounds | 4.4, 4.5, 4.7, 5.2 | Not statable: no filtered regular holonomic modules, no Kashiwara–Malgrange filtration, no perverse sheaves, hence no Hodge modules |
| Structure of exponential mixed Hodge structures (`Π`, tensor product, weights, exact faithful fibre) | 6.2–6.5 | Not statable: needs mixed Hodge modules on `A¹` and convolution |
| `E₁`-degeneration (ESY 1.2.2) and strict bifiltered realization (FSY A.10) | 7.5, 7.6 | Not statable: needs the Deligne filtration (from `F` and `V` of a Hodge module) and polarized twistor `D`-modules |
| Classical `tg` criterion (FSY A.24), costalk and Hodge-number theorems (FSY A.30, A.31), monodromy weights at infinity (MT A.3) | 10.1, 11.2, 11.3, 11.6 | Not statable: needs exponential pair cohomology, built on mixed Hodge modules and `Π` |
| Newton–Hodge comparison (Yu 4.6), model independence, filtered Künneth and duality (Chen–Yu Thm 1, Yu 2.2) | 12.3, 12.7, 12.9 | Not statable: needs `F_irr` of a pair |

All of these are named in the docstring of `Suggested.lean` with what each lacks.

## What the README could not support, and corrections made

- Layer `D` of the design (lattice-index irregularity, slopes, the curve index formula) duplicated PadicDifferentialEquationsAndRigidCohomology §§RD.6.52a and RD.6.53, which is earlier in the merge order. The layer is deleted, its consumers (2.4, 6.5, 11.5, and Checks in 12.4 and 12.6) now cite those sections, and the remaining layers are renumbered 1–12 (B→1, F→2, V→3, H.0→4, H.1→5, E→6, I→7, C→8, P→9, G→10, T→11, N→12).
- Layer 7: the polarized twistor `D`-module target came after the strictness theorem that uses it. They are swapped, so 7.3 (twistor modules) now comes before 7.4 (Fourier–Laplace strictness).
- 5.5 Check on the node `xy = 0`: the costalk was given as the cohomology of `(ℂ^×)²`, which is the wrong group. It is now the relative cohomology `H^{k+2}(B, B ∖ D) = H^{k+1}(B ∖ D)`, which is `ℚ²` in degree 0 and `ℚ` in degree 1.
- 3.2 (the Legendre limit) no longer claims the limit is a nonsplit extension. That claim depends on the choice of coordinate. The Check now says only that the limit is mixed, not pure.
- 12.5 is restated as Kouchnirenko's theorem, including the Cohen–Macaulay property and the regular-sequence statement (AS (4.3), AS lines 442–445; Yu lines 1408 and 1442). That input was an unstated proof step in the design.
- Supplier citations that did not resolve as written:
  - TopologicalSheafCohomology TS3.1–TS3.3 are not on main (main has TS1.x and TS3.5 only). The compact-support sheaf theory is now cited from ComplexComparisonPartII §C6.1, which states it over an arbitrary commutative ring.
  - FormalConnectionsOpers §F6 does not own the formal normal form; its §6.2 says that belongs to PadicDifferentialEquationsAndRigidCohomology.
  - The section is written `C-1.1` with an ASCII hyphen in ComplexComparisonPartII.
  - The LefschetzPencilsAndVanishingCycles names `VanishingCycles.monodromyFiltration` and `VanishingCycles.relativeMonodromyFiltration` do not exist there, so they are replaced by prose.
- The design's internal gaps G1–G5 (`L²` analysis, twistor Fourier strictness, the stationary-phase kernel computation, Newton graded acyclicity, algebraic Whitney stratifications) are all targets of this roadmap (3.4, 7.3–7.4, 11.5, 12.5, 1.1). They are removed from `gaps`, which now lists only the four supplier gaps:
  - `holonomic-specializability` and `regular-holonomic-stability`, supplied by SpringerResolutionAndCharacteristicCycles Layer H;
  - `toric-normal-fan` and `toric-rounded-vanishing`, supplied by AnalyticToricGeometryPartII §0.3.
  - Each is stated in the README under its supplier.

## Notions moved down

- Graded-polarizable variations of mixed Hodge structure, admissibility, and the limit on the full nearby space (all eigenvalues) are stated here in Layer 3. No earlier roadmap owns the mixed or quasi-unipotent statements. The pure objects come from ShimuraData §§3.1–3.3 and the unipotent degenerations from ShimuraVarieties §§3.5b.1–3.5b.2.
- Nothing is cited from a roadmap later in the merge order.

## Duplication sweep: removals and citations

- **Layer D** (D.1–D.3) is removed and cited as PadicDifferentialEquationsAndRigidCohomology §RD.6.52a (formal normal form, slopes, `Irr`, good lattice pairs) and §RD.6.53 (the Euler–Poincaré formula on curves).
- **Old V.1:** the pure variation and rational polarization are removed and cited as ShimuraData §3.1 (`Variation`) and §3.3 (`RationalPolarizedVariation`). 3.1 keeps only the mixed and graded-polarizable variant.
- **Old V.2:** the nilpotent-orbit theorem, limit MHS and norm estimates are removed and cited as ShimuraVarieties §§3.5b.1–3.5b.2. 3.2 keeps one variant, "without the power cover: all eigenvalues, on the canonical extension of the original disc". The integral-lattice hypothesis there holds locally because quasi-unipotent `T` has a cyclotomic characteristic polynomial.
- **Tau Ceti point cases** are now cited, not re-planned:
  - `TauCeti.Hodge.MixedHodgeStructureCat` with `TauCeti.Hodge.MixedHodgeStructureCat.abelian` (`Geometry/Hodge/Mixed/Abelian.lean`), the point case of 4.7;
  - `TauCeti.Hodge.IsPolarization`, `TauCeti.Hodge.Polarization` and `TauCeti.Hodge.IsPolarizable` (`Geometry/Hodge/Polarization.lean`, integral forms), with a note on how rational polarizations relate to them.
- **Consumers:** MotivicEtaleKTheory is removed from the downstream consumers. It is earlier in the merge order (line 124) and its README names this roadmap only as a consumer of its §3 material.
- **Searched with no owner elsewhere:**
  - `roadmaps grep` on main and the 446 open heads for: Fourier–Laplace, Riemann–Hilbert correspondence, Kashiwara–Malgrange / V-filtration / Bernstein–Sato, Hodge module, variation of (mixed) Hodge structure, limit mixed Hodge, nilpotent orbit, exponential mixed Hodge, irregular Hodge, twistor, Kouchnirenko / Adolphson / Newton polytope, additive convolution, Weyl algebra, Milnor fibre / Betti nearby cycles, algebraically constructible, perverse sheaves, intersection cohomology.
  - The étale perverse theory (EtaleDualityAndPerverseSheaves) and the finite-coefficient constructible theory (ComplexComparisonPartII §C6) are different objects.
  - ShimuraVarieties is multivariable, unipotent and integral; ours keeps the quasi-unipotent all-eigenvalue variant.
  - The pins have no `D`-modules, constructible sheaves or Hodge modules.
- **Ownership against open PRs:** checked through the `roadmaps` index, which covers the open-PR heads. StratifiedSpacesAndTameTopology is another author's open PR adding a new roadmap folder, so it is cited as allowed.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 12.6 / Lean headline | `n = 0`, `φ = c` | `Δ = {0}`, full in `ℝ⁰`; nondegeneracy vacuous; `topCohomology = ℂ/⊥`, finrank 1; `0!·vol({0}) = 1` (Dirac mass) | holds | none |
| 12.6 | `φ = x`, `n = 1` | `Δ = [0,1]`; face `{1}`, `θφ_σ = x ≠ 0`; `1!·1 = 1`; cokernel of `x^m ↦ m x^m + x^{m+1}` is `ℂ·1`; RD.6.53 gives `H⁰ − H¹ = 0·rank − 1 = −1`, `H⁰ = 0` | holds | Check now cites RD.6.53 |
| 12.6 | `φ = x + x⁻¹` | `Δ = [−1,1]`, volume 2; RD.6.53: `Irr_0 = Irr_∞ = 1`, `dim H¹ = 2` | holds | none |
| 12.6 | `φ = x₁+⋯+x_n` | standard simplex, `n!·(1/n!) = 1`; agrees with 9.6 (`I(ℚ(−n))`) | holds | none |
| 12.6 negative control | `φ = x` on `(G_m)²` | segment, `affineSpan ≠ ⊤`; `H¹ = H² = ℂ` | hypothesis excludes it | none |
| 12.6 | `φ = x + 5` | face `{1}` only; `d + d(x+5) = d + dx`; dim 1 | holds | none |
| `IsNewtonNondegenerate` | empty face; whole polytope | the empty face would make every `φ` degenerate, so it is excluded by `Nonempty`; `Δ` is exposed by `l = 0` and contains `0`, so it is excluded | correct | docstring states it |
| `twistedDifferential` sign | `n = 2` | `(d²ω)_{12} = D₁D₂ω_∅ − D₂D₁ω_∅ = 0`; all-plus signs give `2D₁D₂ω_∅` | correct | none |
| `forms` | `n = 1`, `q = 2` | proved `forms 1 2 = ⊥` in scratch Lean | correct | none |
| `eulerDerivation` | `x^m` in rank 2 | proved `θ_i x^m = m_i x^m` in scratch Lean | correct | none |
| 12.8 | `x + y + 1/(xy)` | vertices `(1,0),(0,1),(−1,−1)`, area `3/2`, `2!·3/2 = 3` | holds | none |
| 12.4 convenience vs properness | `x+x⁻¹+y+y⁻¹` | fibre over 0 is an affine curve, so not proper (Yu line 1377 claims properness) | Yu corrected | kept |
| 2.1 / 6.5 | `E^θ` on `A¹` | `d/dθ + 1` bijective on `ℂ[θ]`, so `H⁰ = H¹ = 0`, `ω(pℚ_{A¹}) = 0` | holds | none |
| 2.2 / 2.5 | `δ_a`, `a ≠ 0` | `FT δ_a = E^{at}`, `𝔻E^{at} = E^{−at} = r_+ FT(𝔻δ_a)`; without `r` this fails | holds | none |
| 4.2 Checks | `O(∗0)`, Kummer `a ∉ ℤ`, `δ_0` | `x∂(x^k) = k x^k` gives index `−k`; `x∂(x^k e) = (k+a)x^k e` gives index `−a−k`; `x∂δ = −δ` gives `δ ∈ gr^V_1` | holds | none |
| 4.5 | blow-up of `A²` at 0 | `f_*ℚ[2] = ℚ[2] ⊕ δ_0ℚ(−1)`, both weight 2 | holds | none |
| 4.6 | `Ext¹(ℚ(0), ℚ(1))` | `ℂ/2πiℚ ≠ 0` | holds | none |
| 5.1 | `D(pℚ_{A¹})` | `pℚ(1)`, weight `1 − 2 = −1`; `(−1)` would give 3 | holds | none |
| 5.1 | `pℚ_X ⊗^H pℚ_X` | `Δ^*(ℚ[2d]) = pℚ_X[d]` | holds | none |
| 5.2 | `G_m → pt` | `H⁰a_* = ℚ(−1)`, weight 2 ≥ 1; `H⁰a_! = H¹_c = ℚ(0)`, weight 0 ≤ 1; `H^{−1}a_* = ℚ(0)`, weight 0 ≥ 0; matches Sai90 (4.5.2), Sai90 line 3517 | holds | locator added |
| 5.4 | `pℚ_{A¹}`; rank-2 Jordan block | `i^!pℚ = ℚ(−1)[−1]`, weight 2 = w+1; coker `N` of rank 1 | holds | none |
| 5.5 | node `xy = 0` | stalk of `i^!pℚ_{A²}` is `ℚ²` (deg 0), `ℚ` (deg 1) vs `ℚ` (deg 0) | old value was wrong | corrected |
| 6.1 / 6.2 | `j_!pℚ_{G_m}`, `pℚ_{A¹}`, `δ_0` | `RΓ(A¹, j_!ℚ) = 0`; `RΓ(pℚ) = ℚ[1]`; `Π δ_0 = K`, `Π pℚ = 0` | holds | none |
| 7.6 example | `j_*pℚ_{G_m}` | `Π j_* = Π δ_0ℚ(−1)`; fibre `ℂ`, exp. weight 2, jump 1 | holds | none |
| 9.3 | `(G_m, x)` duality | `H¹_c = I(ℚ) ⊗ H¹(−x) = I(ℚ(−1)) → I(ℚ(−1))`; same-sign cup lands in `H²_c(G_m, 2x) = 0` | holds | none |
| 9.4 | `(A¹, x²)` | `f_*pℚ = pℚ ⊕ j_*L[1]`, `L` of monodromy −1; `H¹` dim 1, weight 1 | holds | none |
| 9.5 | `A¹ ⊃ {0}`, `f = x` | `H¹_c(G_m,x) ≅ H⁰_c(pt)`; `H¹(G_m,x) ≅ H⁰(pt)(−1)` | holds | none |
| 10.2 | `g = x`, `g = xy`, `g = 0` | `H²_{0}(A¹) = ℚ(−1)`; `H²_Z(A²) = H¹((ℂ^×)²) = ℚ(−1)²`, `H³_Z = ℚ(−2)`; `g = 0`: compact nonzero only at `r = 4` | holds | none |
| 11.2 | `K = j_!pℚ_{G_m}` | `K → j_*` has ker `δ_0ℚ`, coker `δ_0ℚ(−1)`, so `H⁰i^! = ℚ`, `H¹i^! = ℚ(−1)`; `FT K = O(∗0)` has `H⁰ = H¹ = ℂ` | holds | none |
| 11.6 | `M = δ_0ℚ` | `Π M = K`, `ψ_∞ K = ℚ` of weight 0 = w; `M″ = pℚ` with fibre ℚ in weight 1 | holds | none |
| 3.4 example | Legendre on `P¹∖{0,1,∞}` | `χ = 2·(−1) + (1+1+0) = 0`, `H⁰ = H² = 0`, so `H¹ = 0` | holds | none |
| 3.2 | Legendre at `t = 0` | weights 0 and 2, each dim 1; whether the extension splits depends on the coordinate | "nonsplit" claim was unsupported | removed |
| 3.2 | monodromy `−1`, rank 1 | `N = 0`, limit in `Ψ_{−1}`, `Ψ_1 = 0` | holds | none |
| 3.3 | `N e₁ = e₀`, `W_0 = ℚe₀` | the relative monodromy filtration would need `N : gr^W_1 → gr^W_{−1}`, impossible | not admissible, as stated | none |
| 12.3 / 12.9 | `(A¹, x²)`, `(A², x²+y²)` | jump `1/2`; `1/2 + 1/2 = 1` | holds | none |
| 12.9 | `(G_m, x)`, `λ ≤ 0` | `ann F^λ H_c = 0 = F^{>1−λ}H` since `1 − λ ≥ 1` | holds | none |
| Context | `Suggested.lean` | no section `variable`s; every binder is in the signature (`#check` output below) | n/a | none |

`#check` comparison: a scratch file with `#check @` for all 13 declarations was elaborated once. The headline elaborated as `∀ {n} (φ : LaurentRing n), affineSpan ℝ (newtonPolytope φ) = ⊤ → IsNewtonNondegenerate φ → (∀ r, r ≠ n → cocycles φ r ≤ coboundaries φ r) ∧ FiniteDimensional ℂ (topCohomology φ) ∧ ↑(finrank ℂ (topCohomology φ)) = ↑n.factorial * (volume (newtonPolytope φ)).toReal`, which matches README 12.6. No hypotheses were lost and nothing changed. The scratch examples (θ on a monomial, the rank-zero top cohomology, `forms 1 2 = ⊥`) are proved, not admitted, and are not in `Suggested.lean`.

## Elaboration

`lake env lean packages/MixedHodgeModulesAndIrregularHodgeTheory/Suggested.lean` (run from the content checkout) printed exactly one message:

    Suggested.lean:144:8: warning: declaration uses `sorry`

That is one `sorry` warning and no other messages. The file has a single `import Mathlib`, no `TauCeti.*` imports, no `set_option`, and no sorry'd data.

## Dependency check

    depcheck: 207 roadmaps, 1692 edges, 0 problem(s)

`roadmaps resolve` on the README found no cross-roadmap citations and no Lean names that are found nowhere. Names outside TauCetiRoadmap were checked by hand at the pins: the TauCeti.Hodge declarations by grep in `TauCeti/Geometry/Hodge`, and the Mathlib names by elaboration.

## Sources

- `sources.toml` lists 21 works.
  - Certified: Sai88, Sai90, Kash86 and AS (answered), FSY, ESY, Yu, KS, MT, Sab10, Sab05, Kash84, DL and CY.
  - Uncertified (paywalled, cited by locator): Dimca, Schmid, SZ, Verdier, Kash76, Kou.
  - Waived: Zucker.
- CY came from the publisher's own site with `--licence-class publisher-open`. SIGMA is a diamond open-access journal.
- Mal20–Mal22 are no longer cited (Layer D is gone). Hochster's theorem is cited through AS line 617, so no new text was requested.
- No `needs-references.toml` is left: nothing is missing.
- Saito, AS and Yu locators were checked against the texts and now carry line numbers: Sai88 lines 1773, 3352, 3740, 4017–4026; Sai90 lines 66–71, 94–104, 3513–3519; AS lines 100–103, 395–398, 442–445, 617; Yu lines 1397–1416, 1442.

No suspicious instructions were found in any fetched or read text.
