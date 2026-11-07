# FIX-DESIGN-DimerModelsAndLozengeTilings~2

Repair round for the review `REV-DESIGN-DimerModelsAndLozengeTilings` (four P3 findings, no P1 or
P2). Files edited: `packages/DimerModelsAndLozengeTilings/design/README.md` and
`packages/DimerModelsAndLozengeTilings/design/plan.json`. `sources.toml` is unchanged: every new
citation is to a work already recorded (kenyon2009, gorin2021), read at the stated lines.

## REV-DESIGN-DimerModelsAndLozengeTilings/F01 (P3) — applied

Verified at the Tau Ceti pin `358314d`: `TauCeti/Probability/Process/Tail/Basic.lean` defines
`tailFamily` (line 42), `tailProcess` as `limsup (fun k => comap (X k)) atTop` (line 47) and
proves `tailProcess_eq_iInf_tailFamily` (line 64); `TauCeti/Probability/Exchangeability/Arrays/Tail.lean`
line 73 has `arrayTail`. Mathlib `Mathlib/Probability/Independence/ZeroOne.lean` has the filter
form at line 229 and `measure_zero_or_one_of_measurableSet_limsup_atTop` at line 290, whose
hypothesis is exactly a `limsup s atTop`-measurable event. The identification is correct: along
`e : ℕ ≃ I`, `⨆_{k≥n} comap (ω ↦ ω (e k)) = 𝓕_{e([0,n))ᶜ}`, every finite `Λ` lies in some
`e([0,n))`, so the two intersections coincide.

Changed: Scope "owns" bullet for Layer 4 now says the tail σ-algebra is identified with Tau Ceti's
`tailProcess` along an enumeration; a new "does not own" bullet names `TauCeti.Probability.tailProcess`
and says in one clause how 4.1 differs (arbitrary countable index, proper group action,
equivariance). "From Tau Ceti" gains the three declarations with file and lines and notes
`arrayTail` as unused; "From Mathlib" gains the `_atTop` zero-one law with lines. 4.1's limsup API
bullet is replaced by the `tailProcess` identity, stated for `I` infinite (properness forces this
unless `I = ∅`, where no enumeration exists: a hypothesis the reviewer's wording lacked), with the
proof in one clause and the remark that the result does not depend on the enumeration; 4.1's
first Check now says the "infinitely many ones" event lies in both σ-algebras and `ω(0) = 1` in
neither; 4.1 and 4.3 *Needs:* lines and the Layer 4 Dependencies line updated, 4.3 gets a
one-sentence route for tail triviality via the `_atTop` law. `plan.json` 4.1: prerequisites and
the API entry `tail_eq_limsup` → `tail_eq_tailProcess`; 4.3: the `_atTop` prerequisite.

Pattern: the only other places naming the tail σ-algebra are 4.2 (the `limsup γ_kC_k` event) and
4.6 (tail-measurable densities), which use `𝓣` as defined and need no change. Tau Ceti's
`tailProcess` came from the completed Exchangeability roadmap (Layer 2); it is cited as the
library declaration since it is at the pin.

## REV-DESIGN-DimerModelsAndLozengeTilings/F02 (P3) — applied

Correct: 2.6 attaches a height function to a tiling only when its cochain is exact, and 2.6's
own Check 2 (`T` on `R_ring`) is a tiling without one. Changed 2.7's second part as the reviewer
asks: "if the boundary graph of `R` is connected and `M`, `M'` are tilings of `R` whose height
cochains are exact on `R` (every tiling, for simply connected `R`)", with the one-line reason
(boundary edges lie in neither tiling, so both increments are `c₀`). `plan.json` 2.7 statement and
hypotheses carry the new hypothesis.

Negative control added as a fourth Check, since `R_ring` itself has a disconnected boundary graph
(its inner triangle is joined to the outer ring only through interior edges) and so does not
separate the two hypotheses: `R' = R_ring ∖ {W(−e₃), B(−e₃)}`. Computed: the boundary edge
`((−1,0),1)` (faces `W(−1,0) ∈ R'`, `B(−1,−1) ∉ R'`) joins `0` to the outer boundary, so the
boundary graph is connected; the dual graph of `R'` is the ten-face path
`B(0,−1) – W(0,−1) – B(1,−1) – W(1,0) – B(1,0) – W(1,1) – B(1,1) – W(0,1) – B(0,0) – W(−1,0)`,
whose unique perfect matching is `T ∖ {((−1,−1),3)}`; its increments along `(0,1)`, `(e₁,2)`,
`(0,3)` are `0, 0, 1`, summing to `−1` round `W(0)`, whose three edges lie in `E(R')` (in
`B(0,−1)`, `B(1,0)`, `B(0,0)`); and `c₀` itself sums to `−1` round that triangle of boundary
edges, so no boundary height exists either. The unit hexagon still gives `(0,0,0,−1,−1,−1)` for
both tilings. Pattern: 2.9 already says "a tiling whose height cochain is exact"; 2.8 and 10.3 are
stated for simply connected regions; no other target assumes a height function from boundary
connectedness alone.

## REV-DESIGN-DimerModelsAndLozengeTilings/F03 (P3) — applied

Correct: the plan had target 1.6 (`rowTiling`, 0 tests) and the README defined `M_ε` only under
Layer 1's Examples. Added `### 1.6 Row tilings` with the definition (column `x` filled with type-1
lozenges or unit squares according to `ε_x`), the shift convention `(σε)_x = ε_{x−1}` (so that
`τ_{e₁} M_ε = M_{σε}`, computed: `τ_{e₁}M_ε = {((x,y),1) : ε_{x−1} = 1} ∪ …`, which is what 6.3(a)
and 6.4 already use), locator kenyon2009 Exercise 13 line 891 (read: the boundary-slope measures)
with gorin2021 lines 4638–4642 (extreme slopes), API bullets (plane tiling, no type-2 lozenge,
injectivity and continuity of `ε ↦ M_ε`, translation behaviour, the constant sequences give `M₁`
and `M₃`) and three Checks. The height formula the reviewer proposed belongs to 2.5, where it
already was; 2.5's Check now also gives the `x < 0` form and the alternating sequence
`ε_x = [x odd]`, computed `x = 1, 2, 3 ↦ 0, 1, 1 = ⌊x/2⌋`. Layer 1's Examples paragraph now refers
to 1.6; 6.3's *Needs:* and Layer 6's Dependencies cite 1.6, since 6.3(a) uses `M_ε` in its
statement. `plan.json` 1.6: kind `definition`, statement with `σ`, three API entries, three tests;
6.3: prerequisite `target:1.6`.

Pattern (plan and README must agree): the plan's other two `example` targets, 6.4 and 10.3, also
had 0 tests while the README gives each three Checks; their tests are now recorded in the plan
from the README's Checks (no README change). Plan totals: 52 targets, 158 tests.

## REV-DESIGN-DimerModelsAndLozengeTilings/F04 (P3) — applied

Verified numerically (pure-Python script in the scratch directory: `φ`-integral of `G_w` by exact
residues, `θ` by Simpson split at the two jump points `|w₃ + w₂e^{iθ}| = w₁`; `K_ξ` by Simpson
along the polygonal paths) at slopes `(1/3,1/3)`, `(0.3,0.45)`, `(1/2,1/4)`, on eleven
`(v_i, v_j)` pairs each, including `v_i = v_j`, the row pair `(1,0),(0,0)` and the off-axis pairs
`(3,−2),(1,1)` and `(1,1),(3,−2)`: `w₁G_w(v_i − v_j − e₂)` agrees with
`(−1)^{(x_i−x_j)+(y_i−y_j)} |ξ|^{x_j−x_i} |1−ξ|^{y_i−y_j} K_ξ(v_j;v_i)` to within `6·10⁻⁵`
(the quadrature error) in every case. At `(0.3,0.45)`: `|ξ| = 1.39680 = w₂/w₃`,
`|1−ξ| = 1.14412 = w₁/w₃`; ratios `−0.87388` (predicted `−1/|1−ξ| = −0.87403`), `1.95082`
(`|ξ|² = 1.95106`), `1.22121` (`|ξ|/|1−ξ| = 1.22085`); determinants: vertical pair
`0.075113` vs `0.075075`, triple `(0,0),(1,2),(−1,1)` `0.034230` vs `0.034214`. At `(1/2,1/4)`
the row pair gives `−0.318310 = −1/π` on both sides exactly, and `|1−ξ| = √2 ≠ 1`, so the old
`κ = (−1)^{x+y}` would be wrong there too.

Changed 9.7(a): the entrywise identity is stated for all `v_i, v_j`, with `|ξ| = w₂/w₃`,
`|1−ξ| = w₁/w₃`, the factor written as `κ(v_i)/κ(v_j)` for `κ(x,y) = (−1)^{x+y}|ξ|^{−x}|1−ξ|^{y}`,
and the determinant identity derived from it (conjugate of the transpose by the diagonal of `κ`).
Check 1 now says `|ξ| = |1−ξ| = 1` holds for `ξ = e^{πi/3}` alone and that `κ = (−1)^{x+y}` is the
reduced form; a new Check at `(0.3,0.45)` records the three ratios and the two determinants.
9.6's law-of-sines bullet now also gives `|1−ξ| = w₁/w₃` (the same object, used in 9.7).
`plan.json` 9.7: statement and tests. Consistency with the row formulas of 9.1 and 9.6 checked:
`(−1)^m |ξ|^{−m} · |ξ|^m sin(πsm)/(πm) = (−1)^m sin(πsm)/(πm)`.

## Checks

Dependency gate (run after the edits):

```
candidate: DimerModelsAndLozengeTilings is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 236 roadmaps, 2180 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean
name found nowhere (the tool notes it did not check names outside TauCetiRoadmap on this host; the
Tau Ceti and Mathlib names added were opened at the pins by hand, lines as given above).
Ownership: `roadmaps grep` for row tilings, `tailProcess` and tail σ-algebras over the open heads
and main finds only the completed Exchangeability roadmap, whose `tailProcess` is the pinned Tau
Ceti declaration now cited; no open pull request owns a row tiling. No `Suggested.lean` exists at
the design stage, so there was no elaboration to run and no `#check` comparison to make; the
README's backticked own names are unchanged (none added).

## Adversarial pass on added and changed statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| 4.1 `𝓣 = tailProcess (fun k ω => ω (e k))` | `I = ℤ`, `e` any enumeration; `I` finite; `I = ∅` | `⨆_{k≥n} comap = 𝓕_{e[0,n)ᶜ}`; `Λ ⊆ e[0,n)` gives `𝓕_{Λᶜ} ⊇ 𝓕_{e[0,n)ᶜ}`: equal; "infinitely many ones" in both, `ω(0)=1` in neither (`∉ 𝓕_{{0}ᶜ}`); finite nonempty `I` is excluded by properness (`F = F' = I`); `I = ∅` has no enumeration, `Ω` a point | holds for `I` infinite | hypothesis "`I` infinite" added to the bullet |
| 4.3 route via `_atTop` law | `ν^{⊗ℤ}`, coordinates along `e` | `comap (ω ↦ ω(e k))` independent under `infinitePi`; `s n ≤ m0` | hypotheses of line 290 met | none |
| 2.7 second part (exact cochains, connected boundary) | unit hexagon `T_a, T_b`; strip; pinched ring `R'` | `(0,0,0,−1,−1,−1)` both; strip boundary disconnected, `0` vs `1`; `R'`: boundary connected via `((−1,0),1)`, tiling cochain `0+0−1 = −1` round `W(0)` | holds; both hypotheses needed | Check added |
| 1.6 `M_ε` is a plane tiling | `W(x,y)`, `B(x,y)`, `ε ≡ 1`, `ε ≡ 0`, `ε = 1_{{0}}` read along columns | `W`: `(v,1)` iff `ε_x=1`, `(v,3)` iff `ε_x=0`, `(v+e₁,2)` never; `B`: `((x,y+1),1)` iff `ε_x=1`, `(v,3)` iff `ε_x=0`; `M₁`, `M₃`; column-read `B(x,0)` empty | agrees | none |
| 1.6 `τ_{e₁}M_ε = M_{σε}`, `(σε)_x = ε_{x−1}` | `ε = 1_{[0,∞)}` | `τ_{e₁}M_ε ∋ ((x,y),1)` iff `ε_{x−1}=1` iff `x ≥ 1`; `((0,0),1)` lost | agrees with 6.3(a), 6.4 | none |
| 2.5 Check `H_{M_ε}` | alternating `ε_x = [x odd]`, `x = 1,2,3`; `x < 0` | `0, 1, 1 = ⌊x/2⌋`; `H(−1) = −ε_{−1}` | agrees | none |
| 9.6 `|1−ξ| = w₁/w₃` | `(1/3,1/3)`, `(0.3,0.45)`, `(1/2,1/4)` | `1`; `0.80902/0.70711 = 1.14412`; `1/0.70711 = √2` | agrees with `|1−ξ|` computed from `ξ` | none |
| 9.7(a) entrywise identity | 3 slopes × 11 pairs (see F04) | max difference `6·10⁻⁵`; factor `1` at `v_i = v_j` | agrees | statement made explicit |
| 9.7(a) determinant from the entrywise identity | pair, triple at 3 slopes | `D K^T D⁻¹` has `det K`; values above | agrees | none |

## For the maintainer

- No name cited by another roadmap changed; no supplier was added (Tau Ceti and Mathlib
  declarations only); the merge-order position is unaffected.
- The identification of 4.1 with `tailProcess` needs an infinite index set; the roadmap's standing
  properness hypothesis provides it except for `I = ∅`, which is stated.
- The plan's targets 6.4 and 10.3 now carry the README's Checks as tests; the target count stays
  at 52.
