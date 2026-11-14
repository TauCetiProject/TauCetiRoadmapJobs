# Repair of LieGroupsPartII design

All five findings of REV-DESIGN-LieGroupsPartII~3 were checked against the mathematics, LieGroups and ReductiveGroups on main (`83bb79f`), the pinned Mathlib `1b1ccf4b` and Tau Ceti `2fd255d9`, and the cached open sources. All five are right and have been repaired. The changes are confined to `packages/LieGroupsPartII/design/README.md`, `packages/LieGroupsPartII/design/plan.json` and `packages/LieGroupsPartII/sources.toml`. No acceptance file exists at this design stage and none was created. No Lean command was run.

## R01 (P2) — applied

Plan 8.2 "θ maps dynamicParabolic G X onto dynamicParabolic G (−X)" and plan 8.2c "θ-stable when X is symmetric" → for every subgroup and every matrix, `θ(dynamicParabolic G X) = dynamicParabolic (θG) (−Xᵀ)` and `θ(dynamicLevi G X) = dynamicLevi (θG) Xᵀ`. The same-G, ±X forms now carry "G transpose-stable, X symmetric". Both negative controls are added to the plan tests and the README §8.2 Checks.

The same pattern was repaired in two more places:

- 8.2b gains the unipotent transport `θ(dynamicUnipotent G X) = dynamicUnipotent (θG) (−Xᵀ)`.
- 8.2c "a closed subgroup" → "a subgroup, closed when G is closed". At `X = 0`, `dynamicLevi G 0 = G`, which is not closed when `G` is not.

README §8.2 had no API list for its three definitions. It now has one with these facts and the proof of each transport.

## R02 (P2) — applied

The README §2.3 definition of `W_G = N_K(𝔞)/Z_K(𝔞)` and the bare existence of reflection representatives are now imported from LieGroups Layer 9 (README on main: "the actual normalizer quotient N_K(a)/Z_K(a)", "compact normalizer representatives give the restricted reflections"). This roadmap keeps four things the base does not have:

- the stronger variant, representatives in `K⁰` of the form `lieExp(c(X + dθX))`;
- `N_{K⁰}(𝔞)/Z_{K⁰}(𝔞) = W(Σ)`;
- normality of `W(Σ)` in `W_G`;
- the formulas for `N_G(𝔞)` and `Z_G(𝔞)`.

The obsolete Check sentence about "the base README's identification" is gone. Plan 2.3 is now the theorem `IwasawaTriple.restrictedWeyl_comparison`, not a definition.

Same pattern: the §2.6 chamber coverage now cites LieGroups Layer 9's coverage theorem, and the 2.6 prerequisite on 2.3 is dropped. The Scope, contracts, Conventions and How-to-read paragraphs were updated to match.

## R03 (P2) — applied

The contract (README §"From TauCetiRoadmap.ReductiveGroups") said "the Bruhat decomposition and Tits system of `𝐇(k)`" and "the Bruhat/Weyl double-coset theorem", with Layer 7b listed as a supplier. It now consumes only:

- parabolic `k`-subgroups;
- the cocharacter `P/U/Z` description;
- the relative root system of a maximal `k`-split torus.

It states that Layer 7's Tits system assumes a split maximal torus and a Borel subgroup, and that it is not consumed. The witness is `SU(2)`, which has no real Borel subgroup; §4.3 constructs its Tits system analytically. Scope line 28, the non-ownership line 39 (cells are Layer 7C) and the plan supplier entry (sections now `Layer 7` only) were changed to match. No gap was added.

## R04 (P3) — applied

Missing target-local *Needs:* lines and locators were added:

- §2.1: Needs (LieGroups Layer 9 root system, Mathlib `RootPairing` API, Tau Ceti `RootPairing.Base.existsUnique_map_eq`, `TauCeti.stabilizer_eq_closure_wallReflections` with their hypotheses).
- §3.2: Needs (§§1.1, 2.3, 2.6, LieGroups Layers 0, 2, 9) and the locator Knapp VI §4, VII §7.
- §3.4: the locator Knapp VI §5, VII §7.
- §5.1: Needs (§§1.1, 2.1, 2.2, LieGroups Layer 9) and the locator Brown–Rodriguez Hertz–Wang §1.2 eq. (1), p. 3 (`brown-rodriguezhertz-wang2022 line 138`), with the reductive extension named.

A mechanical scan found the same gap in §§8.2 and 8.3, which had no source locator. Both now cite the plan's existing locators.

## R05 (P3) — applied

The rank-zero qualifications were fixed:

- README §8.3 Check: "For `p = q`" → "`p = q ≥ 1`", with `O(0,0) = 1` (condition holds) as the boundary case.
- README §8.3 Examples: "`O(p, p)` (fails)" → "`p ≥ 1` (fails), `O(0,0) = 1` (holds)".
- Plan 8.3 `GL_n` test: now "n ≥ 1", with the `n = 0` single-component case added.
- Plan 8.3 `O_pq` test: now "p = q ≥ 1", plus `O(0,0)`.
- Plan 9.1 `GL_n_axiom_v`: now "n ≥ 1", with `n = 0` stated without a matrix unit.

The existing `GL₀`, `SO₀(1,1)` and `n − 1` exceptions are unchanged.

## Evidence read

- **R01.** The witnesses were recomputed exactly (rational arithmetic).
  - `gX = Xg = ((2,2),(0,0))`.
  - `θ(g) = ((1/2,0),(−1/2,1))`.
  - `S⁻¹XS = diag(1,0)` and `S⁻¹θ(g)S = ((0,1),(−1/2,3/2))`.
  - The (1,2) entry of the `−X` family is `e^t`: 1, 148.4 and 22026 at `t = 0, 5, 10`.
  - `θ(g)` commutes with `Xᵀ`.
  - `θ(I+E₁₂) = I − E₂₁`.

  Proof of the general transport. Put `W = {A : (exp(−tX) A exp(tX))_{t≥0} bounded}`. This is a linear subspace, closed under products, and it contains `1`. So for invertible `g ∈ W`, `g⁻¹` is a polynomial in `g` (Cayley–Hamilton) and lies in `W`. Then `θ` of the `X`-family of `g` is the transpose of the `X`-family of `g⁻¹`, read as the `−Xᵀ`-family of `θ(g)`; the reverse inclusion follows by applying `θ` again. Convergence to `1` is preserved by transpose-inverse. `gX = Xg ⇔ θ(g)Xᵀ = Xᵀθ(g)`.
- **R02.** `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md` on main, Layer 9 bullet "Restricted roots and KAK" (lines 1354–1365). It builds the actual quotient, the reflection representatives in `N_K(𝔞)` and chamber coverage, but says nothing about `K⁰` and makes no comparison with `W(Σ)`. Its `Suggested.lean` field `chamber_normalizer_cover` (line 583) is the coverage that §2.6 now consumes.
- **R03.** `TauCetiRoadmap/ReductiveGroups/README.md` on main, Layer 7 "Bruhat decomposition" (lines 2934–2946): "`T` a split maximal torus and `B ⊇ T` a Borel subgroup". The relative root system (lines 2928–2931) is for a maximal split torus. Layer 7b (line 3246) consumes Layer 7's Bruhat theorem and supplies nothing used here. Layer 7C (line 3033) owns the cells.
- **R05.** `M = {diag(ε,ε)}` for `p = q` gives block-determinant pairs `{(1,1),(−1,−1)}` at `p = 1, 2, 3` (computed).

## Adversarial mathematics pass (changed or added statements)

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| 8.2 transport, general | GL₂, `X = ((1,1),(0,0))`, `g = I+X` | `θ(g)` in `S`-basis `((0,1),(−1/2,3/2))`. `−X`-family entry `e^t` is unbounded. `−Xᵀ`-family is constant, since `θ(g)Xᵀ = Xᵀθ(g) = ((1/2,0),(1/2,0))`. | General form holds; same-`G`, `−X` form false without symmetry; hypothesis added |
| 8.2 transport, symmetric | GL₂, `X = diag(1,0)` | `θ`(upper triangular) = lower triangular. The `−X` family `((a,e^t b),(e^{−t}c,d))` is bounded iff `b = 0`. | Specialization holds |
| 8.2 transport, `X = 0` | `G` = upper unitriangular | `dynamicLevi G 0 = G`. `θ(I+E₁₂) = I−E₂₁ ∉ G`, but it lies in `θG` = lower unitriangular. | Transpose stability needed; added as a Check |
| 8.2b transport | GL₂, `X = diag(1,0)`, `u = I+3E₁₂` | `θ(u) = I−3E₂₁`. Its `−X` family `I−3e^{−t}E₂₁` tends to `I`. | Holds; inversion is continuous at `1` |
| 8.2c "subgroup, closed when G is" | dense `G = {I+qE₁₂ : q ∈ ℚ}`, `X = 0` | `dynamicLevi G 0 = G`, not closed | Old "closed subgroup" was false; qualified |
| 8.2 API "L, U ⊆ P" | GL₂, skew `X = ((0,1),(−1,0))` | `U = 1 ⊆ P = G`. The centralizer `{aI+bX}` is ⊆ `P`. | Holds for every `X` |
| 2.3 reflection in `K⁰` | SL₂, `X = E₁₂`, `dθX = −E₂₁` | `c = −π/2` gives `((0,−1),(1,0)) ∈ SO(2)`, and `Ad` sends `diag(1,−1)` to `diag(−1,1)`. `c = −π/4` sends `diag(1,−1)` to `((0,1),(1,0)) ∉ 𝔞`. | Explicit `c` is needed; Check added |
| 2.3 `N_{K⁰}/Z_{K⁰} = W(Σ)` | O(1,1); SL₂; GL₀ | O(1,1): `K⁰ = {1}`, so `1 = W(Σ)`, while `W_G` has order 2. SL₂: `K = K⁰ = SO(2)`, both orders 2. GL₀: all trivial. | Comparison holds; `W_G = W(Σ)` needs the component condition |
| 2.3 normality | SL₂ | `n s n⁻¹ = s`. `Ad(n)𝔤^α = 𝔤^{−α} = 𝔤^{α∘Ad(n)⁻¹}`, since `Ad(n) = −1` on `𝔞`. | Holds |
| 2.6 coverage from the base | GL₂; compact `G` | Swap sends `diag(0,1)` to `diag(1,0)`, inside `h₁ ≥ h₂`. Compact: chamber `{0}`. | Base coverage applies to any positive system |
| ReductiveGroups contract | split GL₂/ℝ; SU(2) | GL₂: `T` diagonal, `B` upper triangular, two cells `B` and `{g₂₁ ≠ 0}`. SU(2): real rank 0, absolute rank 1, no real Borel subgroup; analytic `P = G`, `S = ∅`. | Bruhat/Tits item dropped as unused |
| §5.1 locator | BRHW line 138, p. 3 | Eq. (1) is the root sum over `Σ⁺ ∪ span(Π′)` in the connected semisimple finite-centre setting | Locator exact; reductive extension named |
| O(p,p) component condition | p = 0, 1, 2, 3 | p ≥ 1: M meets 2 of 4 components, pairs `{(1,1),(−1,−1)}`. p = 0: 1 of 1. | `p ≥ 1` added; `O(0,0)` holds |
| GL_n sign witness | n = 0, 1 | n = 1: `−1 ∈ M`, `det = −1`. n = 0: one point, no `E₁₁`, `𝔞 = 0`. | `n ≥ 1` added; n = 0 stated |
| Axiom (v) witness | n = 0, 1 | n = 1: `Ad(−1) = Ad(exp(iπ)) = id` on `𝔤𝔩₁(ℂ)`. n = 0: `𝔤 = 0`, no `E₁₁`. | `n ≥ 1` added |

## Check outcomes

Dependency gate, verbatim:

```text
candidate: LieGroupsPartII is not in the merge order yet; checked as if placed after MordellLawrenceVenkatesh (the intake inserts it when its design is accepted)
depcheck: 229 roadmaps, 2062 edges, 0 problem(s)
```

The gate reports no UPWARD or CYCLE line.

Other checks:

- **Plan graph.** 40 targets and 94 internal edges, up from 92: 3.2 gains 1.1 and 2.3, 5.1 gains 1.1, and 2.6 loses 2.3. There is no missing id and no cycle. Every definition target still has at least three tests.
- **Citation resolver** on the edited README: no cross-roadmap citation and no Lean name found nowhere.
- **Pinned names re-checked:** `Matrix.exp_transpose` (MatrixExponential.lean:113), `RootPairing.Base.existsUnique_map_eq` (TauCeti `Weyl/Bases.lean:170`), `TauCeti.stabilizer_eq_closure_wallReflections` (`FundamentalDomain.lean:201`).
- **Sections.** Every numbered README section now has both a `*Needs:*` line and a source locator (mechanical scan).
- **Manifest.** In `sources.toml`, the stale `cited_for` id `8.3e` (a target that no longer exists) was dropped from `knapp2002`. No new source was needed and `needs-references.toml` was not written.
- **Gate failures.** The brief listed none.
- **Lean.** There is no `Suggested.lean` at this design stage, so the `#check` elaboration comparison was not applicable and was not run.

## Ownership and maintainer notes

- **Ownership against open pull requests** was checked with `roadmaps grep` for the restricted Weyl quotient and the dynamic subgroups. NoncompactQuantumSymmetry's open head (README line 1073) also defines `W = N_K(𝔞)/Z_K(𝔞)`. That roadmap's ownership is its own matter; this roadmap now imports the object from LieGroups on main, which precedes every open roadmap. AutomorphicFormsOnReductiveGroups (open) remains the supplier for the minimal real-algebraic comparison only.
- **Renamed plan target name.** Plan target 2.3 changed name and kind, from the definition `IwasawaTriple.groupWeyl` to the theorem `IwasawaTriple.restrictedWeyl_comparison`. Its id and the README heading "2.3 The two Weyl groups" are unchanged, so citations by section remain valid. Neither name appears in any README.
- **Other roadmaps.** No other roadmap is asked to change. The ReductiveGroups contract is narrower, and both declared gaps are unchanged.
