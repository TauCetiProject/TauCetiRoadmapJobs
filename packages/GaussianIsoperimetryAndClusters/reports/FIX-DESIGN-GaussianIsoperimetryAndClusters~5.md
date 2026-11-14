# Repair report: GaussianIsoperimetryAndClusters (design, round 5)

This report settles the two findings of the review `REV-DESIGN-GaussianIsoperimetryAndClusters~4`. Edited files: `packages/GaussianIsoperimetryAndClusters/design/README.md`, `packages/GaussianIsoperimetryAndClusters/design/plan.json` and `packages/GaussianIsoperimetryAndClusters/sources.toml`. No source was fetched and no key was added. `needs-references.toml` was not written, because every text needed was readable.

## F01 (P3) — applied

**Change.** README §8.3, References, plan 8.3.1 and manifest locator: "Theorem 1.1, cited by locator" → "Corollary 1, inequality (10), p.209 (line 72); converse: approximation after Corollary 2, p.210 (line 98)". The manifest `version_note` records the PDF reading; the key, provenance and hash are unchanged.

**Verification.** The cached OCR extraction is unusable, and rendering the cached PDF on this host draws only the embedded symbol fonts. The text fonts (New Century Schoolbook, Dutch801) use standard Mac/WinAnsi encodings, so I read the PDF's own text operators from its decompressed page streams, using my own script on the cached file.

- The running heads place the pages: printed pp.206–214 are PDF pp.1–9, so p.209 is PDF page 4 (line 72) and p.210 is PDF page 5 (line 98).
- The numbered results are Proposition 1, Lemma 1, Proposition 2, Corollary 1, Corollary 2, Remarks 2–4, Lemma 2 and Lemma 3. There is no Theorem 1.1, so the old locator was wrong.
- Corollary 1 (p.209) states inequality (10): `I(E f) ≤ E √(I(f)² + |∇f|²)` under `γ_n`, for every locally Lipschitz `f : ℝ^n → [0,1]`. It then states (11) for Borel sets. This is exactly the generality of §8.3, transported to `E` by an isometry.
- On p.210, after Corollary 2, Bobkov derives (11) from (10) or (12) by the cutoffs `max(1 − dist(A,x)/h, 0)`, with `h → 0`. This is the §8.3 converse route.

The reviewer's witness checks out: for `f ≡ 1/2` and `f = Φ`, both sides are `φ(0) = 0.398942`.

**Pattern.** Bobkov1997 had exactly the two README occurrences (§8.3 and References), one in the plan and one in the manifest, and all four are corrected. The other "cited by locator" entries are SudakovTsirelson1974, CarlenKerce2001, AmbrosioFuscoPallara2000, Bogachev1998 and Ledoux1996. All are settled as uncertified, so their texts cannot be reopened and their locators stand.

## F02 (P3) — applied

**Change.** §6.5 (README, plan) gains a derivation of `≤ 2 P_γ(U)`: §6.3 bounds the first term, §5.1 + §5.3 + §6.2 the second. Needs and prerequisites gain §5.1, §5.3, §6.2 and the Tau Ceti density. The build-guide sentence "Layer 1, Layers 2–4 definitions, Layer 5 avoid G5–G6" → the computed closure.

**Verification.** CianchiFuscoMaggiPratelli2011 Lemma 4.5 (line 624–632) states only the sum bound (4.10), with `p_{E^s}(z) = I(v_E(z))`. The `2P` consequence is the roadmap's own, so its inputs must be listed. With `B = e^⊥`:

- The first term is at most `P_γ(U)` by §6.3.
- For the second term, take a good `z`. The section `U_z` has Gaussian perimeter `Σ_{t : z+te ∈ ∂*U} φ(t)` by §5.1 and §6.2, and that is at least `I(v_U(z))` by §5.3.
- §6.2 with `g = e^{−W}`, together with `e^{−W}(z+te) = e^{−W_{e^⊥}}(z) φ(t)`, gives `∫ Σ_t φ(t) dγ_{e^⊥} = ∫_{∂*U} |⟨ν_U, e⟩| dγ^{n−1} ≤ P_γ(U)`.

I also listed §6.2, §5.1 and the Tau Ceti density in addition to the reviewer's §5.3, because the derivation uses each of them directly. The new edges point backwards: in the plan graph, the closures of 5.1, 5.3 and 6.2 do not contain 6.5, and no target needs a later one.

The reviewer's alternative wording ("Layer 5 consumes §2.2") would have left the other half of the sentence false. Computed from the plan's prerequisites, the definitions §3.1, §3.4, §4.1, §4.2 and §4.4 also reach G5 (and, for all but §3.1, G6) through §2.7, §2.3, §3.2 or §4.3 → §2.5 → §2.2. The new sentence is that computed closure.

**Checks.** The tilted Check now reads `0.219696 + 0.219696 = 0.439391 < 2P = 0.621393`. A disc Check is added (README and plan test `disc_two_P`). The rounding in the §6.3 Check and plan test `variation_bound` is corrected: `e^{−1/4}/(2√π) = 0.2196956` is `0.219696`, not `0.219695`.

**Pattern.** The other derived consequences are the "in particular"/"hence" clauses of §3.3, §4.3, §7.2, §8.1 and §9.5. Each uses only inputs already in its Needs line. The other build-guide claims were checked against the plan graph:

- Layer 4 has no prerequisite outside Layers 1–4.
- Layer 9's only Layer 8 input is §9.3 → §8.1, used on the line.
- Layer 8 builds on §7.3.
- The Gaussian weight in Layer 2 appears only in §2.3, §2.5 and §2.7.

All hold. Apart from §8.3, which the plan splits into a definition and a theorem, the README Needs lines and the plan prerequisites agree target by target.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §6.5 bound and `2P` consequence | Flat `{x_2 < a}`, `a = 0, 1` | First term `0`; second `φ(a)` = `0.398942`, `0.241971` = `∫ Σφ = ∫\|⟨ν,e⟩\|dγ¹ = P`; sum ≤ `2P` = `0.797885`, `0.483941` | Sound; the second term is sharp |
| same | Tilted `{x_2 < 1 + x_1}` | First `0.219696` ≤ `P = 0.310697` (§6.3); second `0.219696 = ∫ Σφ = P/√2 = 0.219696` ≤ `P`; sum `0.439391` ≤ `2P = 0.621393` | Sound |
| same | Unit disc, `e = e_2` | First `2e^{−1/2}/π = 0.386129`, exact via `φ(z)φ(√(1−z²)) = e^{−1/2}/(2π)` and checked numerically by substitution; second `0.252249` (stable at 20000 and 80000 nodes) < `∫Σφ = 0.386129 = ∫\|sin θ\| e^{−1/2}/(2π) dθ` ≤ `P = 0.606531`; at `z = 0`, `I(0.682689) = 0.356343 < 0.483941`; sum `0.638378` ≥ true `0.517483` (§6.6), ≤ `2P = 1.213061` | Sound; the inequality from §5.3 is strict here, so the Check discriminates |
| same, degenerate | `U = ∅`, `U = E`; vertical null line `ℝe_2`; vertical half-plane `{x_1 < 0}` | `∅, E`: `v_U ≡ 0, 1`, both terms `0`, `P_γ(S_e U) = 0`. Null line: `v_U = 0` a.e., terms `0`, symmetral null, `0 ≤ 0`. Half-plane: `Dv_U = −δ_0`, first term `φ(0) = 0.398942 = P`, second `0`, `∫Σφ = 0 = ∫\|⟨ν,e⟩\|`; symmetral `= U`, `0.398942 ≤ 0.398942` | Sound; the a.e. and singular-part cases are consistent |
| Build-guide G5–G6 sentence | Plan prerequisite closure of all 46 targets | Free of G5–G6: 1.1, 1.2, 1.3, 2.1, 2.4, 5.2, 6.1, 9.1, 9.2. G6 only at 2.3. Paths: 5.1 → 2.2 → G5; 3.1 → 2.7 → 2.5 → 2.2; 4.4 → 4.3 → 2.5 → 2.2 and → 4.1 → 2.3 (G6) | The old sentence was false for Layer 5 and for the Layer 3–4 definitions; the new one matches the closure |
| Bobkov (10), new locator | `f ≡ 1/2`; `f = Φ(x)`; `f = Φ(2x)`; `n = 0` | `I(1/2) = 0.398942` against `0.398942`; `√2 ∫φ² = 0.398942`; again `0.398942`; `E = {0}` makes `f` constant, `I(c) = I(c)` | Agrees with §8.3; generality (locally Lipschitz, any `n`) unchanged |
| Bobkov converse locator (p.210) | Closed half-line `(−∞, 0]`, `f_r = max(0, 1 − d_A/r)` | `∫‖∇f_r‖dγ = (Φ(r) − 1/2)/r → 0.398942`, `∫ I(f_r) → 0`, `I(∫ f_r) → I(1/2) = 0.398942` | Matches the §8.3 route |
| Rounding, §6.3 and §6.5 Checks | `e^{−1/4}/(2√π)` | `0.2196956447`, so `0.219696`; doubled `0.4393912894`, so `0.439391` | Corrected in README and plan |

## Checks run

**Dependency check** (command as given in the brief), on the final files:

```text
candidate: GaussianIsoperimetryAndClusters is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
depcheck: 223 roadmaps, 1966 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line.

**Citation resolver** on the edited README (main 87f83a6, 425 open heads): no cross-roadmap citations and no Lean names were found missing. The resolver does not check library names on this host. The one library name newly cited in §6.5, `TauCeti.Probability.stdGaussian_eq_withDensity_norm`, I opened at the pinned Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5` (`TauCeti/Probability/Distributions/Gaussian/Density.lean:178`, namespace `TauCeti.Probability`). Its density `(2π)^{−n/2} exp(−‖x‖²/2)` factorizes over `e^⊥ ⊕ ℝe` as used.

**Local graph.** The plan has 46 targets, no forward or unknown target edge, and no cycle. `plan.json` parses.

**Lean.** There is no `Suggested.lean` at the design stage, so no `#check @…` binder audit and no elaboration were run.

**Gate failures.** None were listed.

## Notes for the maintainer

- No target name, section number or supplier edge changed, so no other roadmap's citations are affected. The plan gained the internal edges 6.5 → 5.1, 5.3, 6.2 and a Tau Ceti prerequisite of 6.5.
- Ownership against open pull requests is unchanged: no construction was added. The overlap notes list no shared edits and no dropped or revision-only ids.
- Bobkov1997 Remark 4 (p.211) sketches the subgraph reduction of (10) to (11) in one more dimension, and says it is unsure the sketch is fully rigorous. §8.3 proves that reduction itself (area formula for the locally Lipschitz graph, §2.3, §7.3), so Remark 4 is not cited as support.
- The review contained no instructions outside its findings, and nothing suspicious.
