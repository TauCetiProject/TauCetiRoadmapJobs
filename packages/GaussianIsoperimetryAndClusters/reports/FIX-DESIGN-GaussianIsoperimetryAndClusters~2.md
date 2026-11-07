# FIX-DESIGN-GaussianIsoperimetryAndClusters~2

Repair round for the design of `GaussianIsoperimetryAndClusters`, settling the seven findings of
`REV-DESIGN-GaussianIsoperimetryAndClusters` (all P3). Files edited:
`packages/GaussianIsoperimetryAndClusters/design/README.md` and
`packages/GaussianIsoperimetryAndClusters/design/plan.json`. `sources.toml` is unchanged (no new
source was needed; every repaired locator points into texts the manifest already records).

## REV-DESIGN-GaussianIsoperimetryAndClusters/F01 (P3) — applied

Recomputed independently: with `z = sin θ` the integrand
`√(I(2Φ(cos θ) − 1)² cos²θ + 4φ(cos θ)² sin²θ) φ(sin θ)` on `[−π/2, π/2]`, composite Simpson with
20000 panels, gives `0.5174833`; the direct `z`-form agrees. README §6.6 first Check and the Layer 6
Examples line: `0.516961` → `0.517483`. plan.json test `disc` of target 6.6: same change. The
bracket `0.384633 < 0.517483 < 0.606531` still holds.

## REV-DESIGN-GaussianIsoperimetryAndClusters/F02 (P3) — applied

Recomputed: `2∫_0^1 √(I(x²)² + 4x²) φ(x) dx = 0.6474055`; `∫ f dγ = 0.5160586` and
`I(0.516059) = 0.398619` confirmed. README §8.3 second Check: `0.647454` → `0.647406`. plan.json
tests `square` and `strict` of target 8.3: same change. The strict inequality `0.398619 < 0.647406`
stands.

## REV-DESIGN-GaussianIsoperimetryAndClusters/F03 (P3) — applied

Verified: `a ↦ ρ({|x| < a})` is continuous, increasing from `0` to `1`, so a symmetric slab of
measure `1/2` exists with `a > 0`, and `{x = ±a}` has weighted length
`2∫ c(1 + y²) e^{−a²(1+y²)⁴} dy < ∞`. Only `{x = 0}` (the unique half-plane of measure `1/2`) has
infinite length. README §3.4 second Check, last sentence: "Slabs alone would not prove finiteness of
the profile." → the slab `{|x| < a}` of measure `1/2` has finite perimeter; "Half-planes `{x < t}`
alone would not prove finiteness of the profile." plan.json test `slab_failure` renamed
`halfplane_failure` with the slab added to its statement.

## REV-DESIGN-GaussianIsoperimetryAndClusters/F04 (P3) — applied

§3.1 defines `q`-clusters for `q ≥ 2` only, so for `q = 2` the merged tuple has one cell and is not
a cluster. README §3.1 third API bullet: "Replacing two cells …" → "For `q ≥ 3`, replacing two cells
…". plan.json API entry `Cluster.merge`: same prefix. No other place merges cells (grep "merg" in
README and plan: only §3.1 and the §5.1 test named `merged`, which is about a different object).

## REV-DESIGN-GaussianIsoperimetryAndClusters/F05 (P3) — applied

Verified: for `L = 0`, `f ≡ c`; `γ({f ≤ m}) ≥ 1/2` forces `c ≤ m`, so `{f > m}` is empty; with also
`γ({f ≥ m}) ≥ 1/2`, `c = m` and `{|f − m| > 0}` is empty; the route (closed `r`-thickening of
`{f ≤ m} = E` inside `{f ≤ m}`) also works. §8.5's third Check (`S = 0`, `σ = 0`) needs this case.
README §8.4: `L > 0` → `L ≥ 0`, and a fourth Check added for `L = 0`. plan.json target 8.4:
statement and hypothesis `L > 0` → `L ≥ 0`, test `lipschitz_zero` added (tests: 126 → 127).

## REV-DESIGN-GaussianIsoperimetryAndClusters/F06 (P3) — applied

Verified at Ledoux1999 line 226: `γ(A_r) ≥ Φ(r) ≥ 1 − e^{−r²/2}`, no factor `½`.
CianchiFuscoMaggiPratelli2011 line 295–299, inequality (3.2), gives
`∫_s^∞ e^{−t²/2} dt < e^{−s²/2}/s` (the first bound of §1.2 in their normalization); (3.3) at
line 300–305 is a lower bound and supports nothing in §1.2. README §1.2: the first bound now cites
CianchiFuscoMaggiPratelli2011 Lemma 3.4 inequality (3.2), line 295–299; the `½` bound is stated as
sharpening Ledoux1999 (1.6)'s `1 − Φ(r) ≤ e^{−r²/2}` and as proved here by the route already given
(`r ↦ e^{r²/2}(1 − Φ(r))` decreasing from `1/2`). README §8.4: the Ledoux1999 (1.6) citation now
says it states `1 − Φ(r)` and the tail `e^{−r²/2}`, with the `½` supplied by §1.2. plan.json
locators of targets 1.2 and 8.4: the same qualification.

## REV-DESIGN-GaussianIsoperimetryAndClusters/F07 (P3) — applied

The two sentences "The baseline is Mathlib commit `…`." and "The baseline is Tau Ceti commit `…`."
are deleted from the supplier contracts; the Tau Ceti sentence keeps its second half ("contains no
weighted or Euclidean perimeter, no BV theory and no Gaussian isoperimetric statement", now phrased
"at the pin"). The file-and-line citations stay; plan.json `baseline` keeps both hashes.

The finding's witness is inexact: `grep "commit \`"` over main finds eight READMEs with commit
hashes (EllipticIntegrals, SporadicOrders, SuccessiveMinima, Regularity, FreeGroupsAndLimitGroups,
and Completed AdicSpaces, EffectiveBounds, Multiquadratic). All of them pin an external repository
being ported or audited, none a Mathlib or Tau Ceti baseline, so the repair still matches main and
the brief's timeless rule.

## Pattern search

- Every occurrence of `0.516961` (two in README, one in plan) and `0.647454` (one in README, two in
  plan) was replaced; no other numeric Check depends on either value (the §6.5 and §7.1–7.3 Checks on
  the disc use `0.606531` and `0.384633`, which are unchanged).
- `L > 0` appeared only in §8.4 (README and plan); §8.5's `σ = max_i √(S_ii)` already admits `0`.
- The Ledoux1999 (1.6) locator appeared only in §1.2 and §8.4; §8.1 cites (1.5) and (1.7) for the
  thickening bound, which do carry what they are cited for.
- No other cluster statement merges cells; no other Check draws a conclusion about slabs.

## Adversarial pass on the changed statements

| statement | instances tried | values computed | result | change |
|---|---|---|---|---|
| §6.6 disc Check | `U = ball(0,1) ⊂ ℝ²`, `e = e_2` | `P_γ(S_e U) = 0.5174833` (θ-form and z-form agree); `I(0.393469) = 0.384633`; `P_γ(U) = e^{−1/2} = 0.606531` | `0.384633 < 0.517483 < 0.606531` | value corrected |
| §8.3 `min(x², 1)` Check | `f = min(x², 1)` on `ℝ` | `∫ f dγ = 0.5160586`, `I = 0.3986190`, right side `0.6474055`; integrand `0` for `|x| ≥ 1` since `I(1) = 0`, `∇f = 0` | `0.398619 < 0.647406` | value corrected |
| §3.4 density Check | slab `{|x| < a}` of measure `1/2`; half-plane `{x < 0}` | slab boundary length `2∫c(1+y²)e^{−a²(1+y²)⁴}dy < ∞` for `a > 0`; `{x = 0}` length `∫c(1+y²)dy = ∞`; `a = 0` gives measure `0 ≠ 1/2` | slab finite, half-plane infinite | moral corrected |
| §3.1 merging bullet | `q = 2`, cells `(U, Uᶜ)`; `q = 3`, three intervals | `q = 2`: merged tuple `(E)` has one cell, not a cluster; `q = 3`: `(−∞,a) ∪ (a,b), (b,∞)` is a `2`-cluster of perimeter `φ(b) = φ(a) + φ(b) − A_12` with `A_12 = φ(a)` | holds for `q ≥ 3` | hypothesis added |
| §8.4 with `L = 0` | `f ≡ c`, `c ≤ m`; `c = m`, `r = 0` | `{f > m} = ∅`, `0 ≤ 1 − Φ(r)`; `{|f − m| > 0} = ∅`, `0 ≤ 2(1 − Φ(0)) = 1` | holds | hypothesis weakened to `L ≥ 0`, Check added |
| §1.2 both bounds and the Ledoux1999 form | `r = 0, 0.5, 1, 2` | `1 − Φ(r) = 0.5, 0.308538, 0.158655, 0.022750`; `½e^{−r²/2} = 0.5, 0.441248, 0.303265, 0.067668`; `e^{−r²/2} = 1, 0.882497, 0.606531, 0.135335` | `½` form holds with equality only at `0`; Ledoux's form is the weaker one | locators split |

## Checks

Gate (dependency direction):

```
candidate: GaussianIsoperimetryAndClusters is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 226 roadmaps, 2126 edges, 0 problem(s)
```

No UPWARD or CYCLE line. plan.json parses; 9 layers, 46 targets, 127 tests. No gate failures were
listed in the brief. No `Suggested.lean` exists at the design stage, so no elaboration was run and
no Lean name changed.

## For the maintainer

- No cross-roadmap citation changed; no name another roadmap cites changed; suppliers and consumers
  are as before. Ownership against open pull requests was not re-checked this round: no new object
  was introduced.
- The F07 witness should be read with the correction above: main READMEs do carry commit hashes,
  but only for external repositories; none pins its Mathlib or Tau Ceti baseline in prose.
