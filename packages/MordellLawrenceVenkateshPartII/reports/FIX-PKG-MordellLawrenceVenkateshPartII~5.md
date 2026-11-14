# FIX-PKG-MordellLawrenceVenkateshPartII~5: repair report

All five findings of `REV-PKG-MordellLawrenceVenkateshPartII~4` were checked against LS, the pinned Tau Ceti,
ClassicalArithmeticCompletion and ShimuraData. All five are correct and all five are applied. Files
changed: `packages/MordellLawrenceVenkateshPartII/README.md` and the top-level `gaps` list of
`packages/MordellLawrenceVenkateshPartII/design/plan.json` (one new supplier gap,
`polarized-fixed-part`). `Suggested.lean`, `metadata.toml` and `sources.toml` are unchanged.

## REV-PKG-MordellLawrenceVenkateshPartII~4/F01 (P2) — applied

§3.1: "the orbit is cut out by the horizontal tensors …, which every Hodge filtration respects" → deleted.
The route is now LS's: a complex single-orbit step, then the tensor-isomorphism torsor `P_V` with an
equivariant `Φ_P` (LS lines 2913–2939). The polarization Check is now restricted to Hodge tensors. A new
constant `ℂ/ℤ[i]` negative-control Check was added.

Evidence: in the constant CM example, `A = diag(1, 0)` is horizontal and sends `e₁ + i e₂` to `e₁`. The
vectors `(1, i)` and `(1, 0)` have determinant `−i ≠ 0`, so `A(F¹) ⊄ F¹`, while `D_mon` is one point. LS
lines 2916–2917 say that the torsor does not respect the filtrations.

Hypothesis added by the adversarial pass: the complex step needs polarization. In the twistor-conic example (the
isotropic planes of one ruling of `Σx_i²` on the constant `ℚ⁴` over `ℙ¹`), every fibre is a weight-one Hodge
structure and the monodromy is trivial, but the period map embeds `ℙ¹`. So §3.1 now assumes a *polarized
integral* system (§0.2). All its consumers already have this hypothesis: §3.2 polarized pure, §3.4 and §§4.5
and 6.1 polarized integral. `D_mon` is now the `G_mon°`-orbit, matching §§3.2–3.4.

The route needs the theorem of the fixed part for every polarized integral variation. Gap: before stating that
theorem as a target here, I searched main and the open heads for an owner. AbelianSchemesAndArithmeticModuliPartII
§B2.4 is the only one, and it covers only families of geometric origin. It is declared as a supplier gap
(`gap:polarized-fixed-part`). It is recorded in the plan's `gaps`, in Exact supplier contracts and Scope, in
the §3.1 *Needs:* line and in Layer 3 Dependencies. ShimuraData §§1.3–1.4 (connected, reductive MT group)
and ReductiveGroups Layer 4 were added to the Needs line.

## REV-PKG-MordellLawrenceVenkateshPartII~4/F02 (P2) — applied

§0.3: "Strictness of morphisms of mixed Hodge structures … give the kernels and cokernels" now cites the
native `TauCeti.Hodge.MixedHodgeStructure.Hom.range_inf_F_eq_map_F`, `…range_inf_WQ_eq_map_WQ` and
`…range_inf_WC_eq_map_WC`, applied fibrewise. A fibre is presented by any spanning lattice, and no flat
integral lattice is assumed. Added to Scope, From Tau Ceti, the §0.3 Needs line and Layer 0
Dependencies. New Check: the mixed projection, plus a non-strict non-morphism.

Evidence, at the pin: `TauCeti/Geometry/Hodge/Mixed/Strictness.lean` lines 110, 118 and 131. The carrier is
`Mixed/Basic.lean` line 72, which has no finiteness or polarization. `Hom` (`Mixed/Morphism.lean` line 77)
is a rational map. The abelian instance is at `Mixed/Abelian.lean` line 33. ShimuraData §3.2 is limited to
variations of the same weight, so it is now cited only for the ranks on each `gr^W_k`.

## REV-PKG-MordellLawrenceVenkateshPartII~4/F03 (P3) — applied

§5.1: "restriction of characters gives a canonical inclusion `ι_(GM) : a_G → a_M`" → the inclusion of the
connected centres gives `ι_(GM)` (LS line 3391). Restriction of characters gives, dually,
`pr_(MG) : a_M → a_G`, with `pr_(MG) ∘ ι_(GM) = id` and `w_G = pr_(MG) ∘ w_M`. The API bullet was rewritten
to match. New `GL₂ ⊃ T` Check: `a ↦ (a, a)`, `(x, y) ↦ (x + y)/2`, `(1, 0) ↦ 1/2`.

Pattern: §5.3's balance, `w_M(F_M) = ι_(GM)(w_G(F))`, already uses the inclusion and is unchanged.

## REV-PKG-MordellLawrenceVenkateshPartII~4/F04 (P3) — applied

§2.11 Check: "finite but not a single point" → finite for every `n` and every `p` (including `p = 2`), and
not a single point for `n ≥ 1`. For `n = 1`, `O₁ = μ₂` gives 4 classes over `ℚ₃` and 8 over `ℚ₂`. For
`n = 0`, `O₀ = 1` and `H¹` is a point.

Pattern: I found no other rank-zero cohomology Check in the roadmap; the `E = 0` cases of §§1.4–1.5 were
already handled.

## REV-PKG-MordellLawrenceVenkateshPartII~4/F05 (P3) — applied

Layer 8 opening: "extended by zero outside `0 ≤ q < n`" → defined for all `n, q`. It vanishes outside
`0 ≤ q < n` only for `n ≥ 1`; for `n = 0`, `A(0, 0) = 1` and `A(0, q) = 0` for `q ≥ 1`. Every statement of
the layer has `n ≥ 2`. New §8.4 Check: at `n = 0` the empty sum `Σ_(q<0)` is `0`, but the row sum is
`A(0,0)² = 1` (`β₀ = 1`). `Suggested.lean` is unchanged.

## Checks

- **Elaboration.** `lake env lean packages/MordellLawrenceVenkateshPartII/Suggested.lean`, run from the
  content checkout: exit 0. The only output is `declaration uses sorry` at 69:8 and 106:8. The only import
  is `import Mathlib`, so no Tau Ceti module needed building.
- **Signatures.** I put `#check @name` for all six declarations into one scratch file and elaborated it
  (exit 0):
  - `eulerian : ℕ → ℕ → ℕ`
  - `eulerian_central_mass_le_half : ∀ n, 2 ≤ n → 2 * ∑ q ∈ range n, eulerian n q ^ 2 ≤ n ! ^ 2`
  - `HypersurfaceMonomial : ℕ → ℕ → Type`
  - `IsSmoothHypersurface : {k} [Field k] {n} → MvPolynomial (Fin (n+1)) k → Prop`
  - `HasGoodReductionOutside : {n} → Finset ℕ → MvPolynomial (Fin (n+1)) ℤ → Prop`
  - `integralHypersurfaces_not_zariskiDense : ∃ n₀, ∀ n ≥ n₀, ∃ D₀, ∀ d ≥ D₀, ∀ S, ∃ G, …`

  Each matches its README statement. No binder was lost and nothing changed.
- **Eulerian boundary values.** A second scratch file (not part of the package) checked with `decide` that
  `eulerian 0 0 = 1`, `eulerian 0 1 = 0`, `∑ q ∈ range 0, eulerian 0 q ^ 2 = 0`, `eulerian 1 0 = 1` and
  `eulerian 3 1 = 4`. All pass.
- **Dependency direction.** Output of the prescribed `gate --depcheck` command, run after the final edit:

  ```text
  depcheck: 236 roadmaps, 2157 edges, 0 problem(s)
  ```

  It printed no UPWARD, CYCLE or moved line.
- **Citations.** `roadmaps resolve` on the README found no cross-roadmap citations and no Lean names found
  nowhere. That tool did not check Tau Ceti names on this host, so I checked the seven new `TauCeti.*` names
  by reading the pinned files (lines above).

## Adversarial pass

| Statement | Instances | Values computed | Result / change |
|---|---|---|---|
| §3.1, deleted tensor claim | Constant `ℂ/ℤ[i]`, `F¹ = ℂ(1, i)`, `A = diag(1, 0)` | `A(1, i) = (1, 0)`; `det[(1, i), (1, 0)] = −i ≠ 0`; `G_mon = 1`, one-point orbit | Claim false; deleted. Negative-control Check added |
| §3.1, complex step without polarization | Twistor conic on `ℙ¹`, `ℚ⁴`, `Σx_i²` | `v ∈ F¹ ∩ F̄¹ ⇒ Σ|v_i|² = 0 ⇒ v = 0`; `2 + 2 = 4`; `π₁ = 1`; orbit dimension 0, image dimension 1 | Fails; "polarized integral" added; Check added |
| §3.1, complex route | Legendre; varying ⊕ constant non-CM elliptic | Legendre: `M^der = SL₂ = G°`, `H′ = 1`, orbit dimension `3 − 2 = 1`. Sum: `G° = SL₂ × 1`, `H′ = 1 × SL₂` with constant Hodge structure, image in `ℙ¹ × pt`, dimension 1 (matches §3.3's `1 ≥ 0 + 1`) | Passes |
| §3.1, constant CM case of the route | `M = Res_(ℚ(i)/ℚ) 𝔾_m`, `M^der = 1` | Image of `μ` in the torus `M/M^der` is constant, so `μ` is constant; orbit is one point | Passes |
| §3.1, `G°`-orbit refinement | `O₂` on the two isotropic lines of a rank-2 quadratic space | `G`-orbit has 2 points, each an `SO₂`-orbit, open and closed; a connected disk lands in one | Passes; `D_mon` = `G°`-orbit |
| §3.1, polarization Check | Symplectic rank 4 | `B(e₁, f₁) = 1`; `B(e₁, e₂) = 0`; both planes have dimension 2 | Valid for Hodge tensors; kept |
| `gap:polarized-fixed-part` | Twistor conic; disk with a nonconstant map to `ℍ`; constant family | Conic: fixed part `ℚ⁴` but Hodge structure varies. Disk: trivial monodromy, nonconstant. Constant: fixed part is everything, constant | Polarization and quasi-projectivity are both needed; both in the gap |
| §0.3 strictness | `ℚ(0) ⊕ ℚ(−1) → ℚ(−1)`; `id : ℚ(0) → ℚ(−1)`; zero map | 1 = 1 at `F¹`, 0 = 0 at `W₀`; `id`: 1 ≠ 0 at `F¹`, `W₀ = ℚ ↦ 0` fails; zero map: 0 = 0 | Native theorems apply to the mixed case; non-morphism excluded by `W` |
| §0.3 fibre presentation | `ℤ² ⊂ ℚ²`; zero fibre | `ℚ ⊗ ℤ² ≅ ℚ²` is a base change; `V = 0` gives a trivial MHS | No flat lattice needed |
| §5.1 maps | `GL₂ ⊃ T`; `SL₂ ⊃ T`; `G = M = GL₁` | `a ↦ (a, a) ↦ a`; `(1, 0) ↦ 1/2 = w(diag(t, 1))`; `det ↦ (1, 1)`, dual `(x, y) ↦ x + y`; `SL₂`: `a_G = 0`; `GL₁`: both maps are the identity | Direction fixed; splitting verified |
| §5.3 balance after §5.1 | `GL₆`, `2 + 2 + 2`, `dim F¹ = 3` | `ι(1/2) = (1/2, 1/2, 1/2)`, block averages of `(1, 1, 1)` are `1/2` | Unchanged and consistent |
| §2.11, `O_n` Check | `n = 0, 1, 2`; `p = 3, 2` | `n = 0`: 1 class; `n = 1`: 4 over `ℚ₃`, 8 over `ℚ₂`; `n = 2`: `x² + y²` and `x² + 3y²` differ in discriminant over `ℚ₃` | Non-singleton for `n ≥ 1` only; fixed |
| Layer 8 convention | `n = 0, 1, 2, 3` | `A(0,0) = 1`, `A(0,1) = 0`, `Σ_(q<0) = 0`, full row sum 1; `A(1,0) = 1` gives `2 > 1`; rows `(1, 1)` give `4 ≤ 4`, `(1, 4, 1)` give `36 ≤ 36` | Convention fixed; headline unchanged (`n ≥ 2`) |
| Lean headlines | Signatures above | Binders `2 ≤ n`, `Field k`, `p.Prime` with `Fact`, homogeneity and quantifier order present | Unchanged |

## Ownership and suppliers

- **Mixed strictness.** The owner is Tau Ceti (pinned) and it is cited. The local-system gluing stays here.
- **Theorem of the fixed part.** I searched main and the open heads (`roadmaps grep` for "fixed part" and
  "Schmid"). The only owner is AbelianSchemesAndArithmeticModuliPartII §B2.4, and only for families of
  geometric origin. That roadmap is earlier in the merge order and is already a supplier of this package.
  The extension to all polarized integral variations is asked of it as `gap:polarized-fixed-part`.
- **Complex single-orbit statement.** It stays a target of §3.1, as the review recommends, with LS line 2910
  as its locator. LS takes it from Green–Griffiths–Kerr, but that book is not added as a source: the README
  cites only LS's locator. No `needs-references.toml` was written.
- **Other checks.** The overlap file lists no competing head and no dropped id. ShimuraData §§1.2–1.4 and
  §3.2 and AbelianSchemesAndArithmeticModuliPartII §B2.4 were checked at their open heads.

## For the maintainer

- **§3.1 hypothesis.** §3.1 now assumes a polarized integral Hodge–Deligne system, and `D_mon` is the
  `G_mon°`-orbit. Every consumer inside this roadmap already had those hypotheses.
- **New supplier gap.** AbelianSchemesAndArithmeticModuliPartII is asked for one new item,
  `gap:polarized-fixed-part`: the theorem of the fixed part for polarized integral variations not of
  geometric origin. The ShimuraData normality gap (`gap:andre-monodromy-normality`) is unchanged.
- **No changed names.** No Lean name and no section id changed, so other roadmaps citing this one are
  unaffected.
- **No suspicious text.** Nothing in the review or the fetched texts contained instructions.
