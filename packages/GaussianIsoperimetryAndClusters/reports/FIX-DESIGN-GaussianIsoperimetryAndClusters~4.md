# Repair report: GaussianIsoperimetryAndClusters (design, round 4)

This report settles the three findings of `reports/REV-DESIGN-GaussianIsoperimetryAndClusters~3.md`. Edited files: `packages/GaussianIsoperimetryAndClusters/design/README.md` and `packages/GaussianIsoperimetryAndClusters/design/plan.json`. `sources.toml` is unchanged: the repair needed no new source and no fetch.

## R01 (P2) — applied

I verified the claim. CianchiFuscoMaggiPratelli2011 line 618 asserts (4.8) only "for L^{n−1}-a.e. z ∈ B_E". I recomputed the reviewer's witness. The point `z = 0` is good, the only boundary point is `t = 0` with `ν_U = e`, and so `g_U(0) = 0`, yet `v_U′(0) = 1`. The pointwise claim is therefore false.

The repair, in README §6.3 and plan target 6.3: "density … at every good `z`" → "`∇v_U` (the a.c. density, determined up to null sets) equals `g_U` volume-a.e.", with the a.c. part equal to `g_U · volume`. I also added the escaping-tail negative-control Check (README §6.3, fourth Check; plan test `escaping_tails`).

One refinement goes beyond the review. `g_U` is defined at good `z` where the series converges absolutely. This holds a.e., because §6.2 with `g = e^{−W}‖ν^⊥‖/|ν_e|` bounds the integral by `P_γ(U)`. A good section can carry infinitely many boundary points with steep slopes, so the series need not converge at every good point. The §6.4 route now says that the identity is used under the integral.

I searched for the same pattern. §6.4 (statement, B of good points), §6.6 (chain on doubly good points) and §7.1 are all integral statements, and none changes. The §6.6 disc Check uses a smooth `v_U` and is unaffected. The other gradients in the README are integrated Lipschitz gradients (§2.6, §8.3).

## R02 (P3) — applied

I verified the claim. For `U = ball(0,1) ∪ (ℚ² ∖ ball(0,1))` the closure is `ℝ²` and the interior is `ball(0,1)`. Any added null set has empty interior, so this holds for every null addition outside the ball. The frontier is therefore `ℝ² ∖ ball(0,1)`.

The edit is to the README §2.2 second Check: "becomes all of `ℝ²`" → "becomes `ℝ² ∖ ball(0,1)`", with the explicit rational exterior. The origin is not a frontier point and `(2,0)` is. `P_γ = 0.606531` is kept. The §2.3 Check "frontier bound is `∞` and strict" stays correct, since a set of positive area has infinite `H¹` measure. The plan's null-modification test states only the perimeter, so it is unchanged.

## R03 (P3) — applied

The edits:
- **Scope.** I deleted the corpus survey "No roadmap on the main branch, no open roadmap pull request and no board package defines …".
- **Downstream consumers.** "are on the main branch … available to roadmaps later in the merge order" → "RandomMatrices 2.2 and the sphere-concentration estimates for Dvoretzky's theorem in BanachSpaceTheory B7 build their concentration by other routes; §§8.4–8.5 give the sharp median-centred constants … for any roadmap that needs them". I checked the section B7 on main (`TauCetiRoadmap/BanachSpaceTheory/README.md`, heading "B7. Local theory and Euclidean sections").
- **Same pattern elsewhere.** The multi-bubble motivation had "no roadmap plans that regularity theory" → "that regularity theory lies outside this roadmap". plan.json contains no process wording.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §6.3 a.e. identity `∇v_U = g_U` | Escaping-tail `U` at `z = −0.1, 0, 0.1`, `\|z\| > 1/4` | `v_U(−.01), v_U(0), v_U(.01) = .49, .50, .51`. At 0: `g_U = 0`, `v_U′ = 1`. At ±0.1: `g_U = 1.0000000000` (numerical normal), `v_U′ = 1`. At `\|z\| > 1/4`: both 0 | Fails only on the null set `{0, ±1/4}`; a.e. form correct |
| §6.3, same | Tilted `{x_2 < 1 + x_1}` at `z = 0` | `g_U = bφ(a) = 0.241971 = v_U′(0)` | Sign and normalization unchanged |
| §6.3 singular part | `{x_1 < 0}`, `e = e_2` | `Dv_U = −δ_0`. a.c. part 0 = `g_U` off 0. Singular part `−∫φ dt · δ_0 = −δ_0`, carried by the projection `{0}` of `{ν_e = 0}` | Sound |
| §6.3 degenerate | `U = ∅`, `U = E` | `v_U ≡ 0`, resp. `1`; no boundary, so `g_U ≡ 0 = ∇v_U` | Sound |
| §6.3 absolute convergence | Escaping tail on `(−1/4, 1/4)` | `∫ e^{−W⊥} Σ φ‖ν^⊥‖/\|ν_e\| = γ¹((−1/4,1/4)) = 0.197413 ≤ P_γ(U) ≤ 0.995297` | Bound consistent |
| New Check: perimeter bound | Escaping tail | `2φ(0) + (2Φ(1/4) − 1) = 0.797885 + 0.197413 = 0.995297` | Finite, as required |
| §6.4 consumer | Escaping tail, `B = (−1/4, 1/4)` minus `{0}` | Boundary measure 0.280473 ≥ `∫ φ(z)√((φ(0)+I(\|z\|))² + 1) dz = 0.229719` | Inequality holds; the null set `{0}` does not matter |
| §6.6 consumer | Unit disc, `e = e_2` | Symmetral 0.5174833 ≤ 0.6065307; lower bound `I(0.393469) = 0.384633` | Unchanged |
| §2.2 frontier Check | Disc ∪ rational exterior | Frontier membership: origin 0, `(2,0)` 1 (the old text gave 1 at both). `P_γ = e^{−1/2} = 0.606531`. Weighted `H¹(ℝ² ∖ ball) = ∞` | Corrected |
| §6.3 variation bound | Tilted, `a = b = 1` | `0.219696 ≤ 0.310697` | Unchanged |

## Checks run

**Dependency check** (command as given in the brief):

```text
candidate: GaussianIsoperimetryAndClusters is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
depcheck: 229 roadmaps, 2056 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line.

**Citation resolver** on the edited README: no cross-roadmap citations and no Lean names found nowhere. The resolver does not check library names on this host. The edits introduced no new library declaration.

**Lean.** There is no `Suggested.lean` at the design stage, so no `#check @…` binder audit and no elaboration were run.

**Gate failures.** None were listed.

## Notes for the maintainer

- No supplier edge, target name or section number changed, so no other roadmap's citations are affected.
- The only new cross-roadmap name is BanachSpaceTheory B7, in Downstream consumers. It is on main and is not a supplier.
- Ownership against open pull requests is unchanged by this round: no construction was added. The review's ownership audit stands.
- No suspicious instructions were found in the review text.
