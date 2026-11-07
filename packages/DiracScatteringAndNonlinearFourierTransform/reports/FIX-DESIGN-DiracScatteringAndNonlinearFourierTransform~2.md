# FIX-DESIGN-DiracScatteringAndNonlinearFourierTransform~2

Repair of the review REV-DESIGN-DiracScatteringAndNonlinearFourierTransform (eight findings, one P1)
on `packages/DiracScatteringAndNonlinearFourierTransform/design/README.md`, `design/plan.json` and
`sources.toml`. Every finding was checked against the mathematics, the cached sources and the pins. All
eight are correct, and all eight are applied.

## F01 (P1) — applied

Verified. With `(u, v) = Φ + wΘ`, Christoffel–Darboux gives `h(t) = Im(conj u · v)(t) = −Im w + Im z ∫₀ᵗ|Φ + wΘ|²`. Also `h = (|u − iv|² − |u + iv|²)/4`. At `w₀ = −Ẽ/E` we have `u − iv = 0`, so `h = −|u + iv|²/4 < 0` and `w₀` is an interior point. Recomputed: free case `0.5726 < 1`, the review's real potential `0.3110 < 0.5323`, and the README's complex potential `0.4541 < 0.7493`.

Change (README §6.4 first API bullet and route; plan.json 6.4 `forIsAClosed`, `routeOfAtTime`): "with `−Ẽ/E` on its boundary" → the boundary is `{u/v ∈ ℝ ∪ {∞}}`, containing `−D/C` and `−B/A`; `−Ẽ/E` is interior; the disc equals `{|Ẽ + wE| ≤ |Ẽ# + wE#|}`. Added a negative-control Check (`weylPointIsInterior`).

One deviation from the suggested repair: the suggested form `|w + Ẽ/E| ≤ (|E#|/|E|)|w + Ẽ#/E#|` divides by `E#(t, z)`, which can vanish in `ℂ₊`. So I stated the division-free form. Its use of `E# = A + iC` rests on §3.1 (`A, B, C, D` are real entire for every complex potential). Numerically, `conj E(t, conj z) = A + iC = 0.55112 + 0.15809i`. I also added why `A`, `C` do not vanish: `Im(conj A · C) = Im z∫|Θ|²`, computed as `0.764751` on both sides.

Pattern: no other place puts `−Ẽ/E` (or any Weyl point) on a disc boundary. The compact-support Check of §6.4 and the §6.5/§6.6 uses of `m_T = −Ẽ(T,·)/E(T,·)` are consistent with an interior point, so they are unchanged.

## F02 (P3) — applied

`sinh 2 = 3.626860`, `√(sinh 2) = 1.904432`, so `√2/1.904432 = 0.742591`. Cross-check: `γ(1)² sinh 2 = 0.551441 · 3.626860 = 2.0000`, the §8.1 identity. Change (README §8.1 Check; plan.json 8.1 `andForRealWhich`): `≈ 0.7369` → `≈ 1.41421/1.90443 ≈ 0.7426`. This value appears nowhere else.

## F03 (P3) — applied

`|Re(1 + i)| = 1 = Im(1 + i)`, so `1 + i` lies on the boundary of the open cone. Change (README §2.3 Check; plan.json 2.3 `theConstantAtAnd`): the witness is now `z = 0.99 + i`, with `P(0.99 + i, 1) = 1/(1.0001π) ≤ 3/(2π)` and ratio `5/2.0201 ≈ 2.475` at `s = 2`. The Check now says the sharp constant is the unattained supremum `((1 + √5)/2)² ≈ 2.618 < 3`, and that `1 + i` lies on the cone's boundary.

## F04 (P3) — applied

Verified. §3.2's `φ` is `arg E` (free case `φ = −tx`, `∂ₜφ = −x`), while §7.1 writes `E = |E|e^{−iφ}` (free case `φ = tx`). Change (README §7.1 API bullets and two Checks; plan.json 7.1 `writingWithContinuousOn`, `ifAreTheZeros`, `noZerosAnd`, `and`): §7.1's phase is renamed `ψ = −arg E`, with "for `E = E(t,·)` one may take `ψ = −φ(t,·)`". The free-case Check now shows both phases (`ψ = tx`, `φ = −tx`). No other layer names this phase.

## F05 (P3) — applied

Verified at the pin: `TauCeti.integral_circle_eq_atom_add_integral_cayleyPushforward` (`TauCeti/Analysis/Complex/Pick/Nevanlinna.lean` line 188, in `namespace TauCeti`). Its hypotheses are `[IsFiniteMeasure mu]` on `Circle` and a continuous `f` into a complete real normed space. `MeasureTheory.Measure.cayleyPushforward` is at line 176. Change: added a "From Tau Ceti" contract bullet stating the decomposition and its use in §6.6.

Pattern: I compared every backticked library name in the README body with the contracts. Four Mathlib declarations named in `*Needs:*` lines were missing, and are now in one "From Mathlib" bullet, each opened at the pin:
- `ContractingWith` (§1.2): `Topology/MetricSpace/Contracting.lean` line 42.
- `MeasureTheory.Measure.rnDeriv` and `MeasureTheory.Measure.singularPart` (§2.4, §6.7): `MeasureTheory/Measure/Decomposition/Lebesgue.lean` lines 80 and 73.
- `MeasureTheory.measure_limsup_atTop_eq_zero` (§9.3): `MeasureTheory/OuterMeasure/BorelCantelli.lean` line 62.

## F06 (P3) — applied

Verified: mauth2022 line 359 (Lemma 1) and line 370 (Lemma 2) assume `1 < p < ∞`. Change (README §2.5; plan.json 2.5 statement and `locator.where`): the mauth2022 citation is dropped, so §2.5 cites garnett2007 Ch. II alone. In §2.6 (README and plan.json `boundaryValuesInAs`, `cauchyFormulaAndFor`) the existing Mauth citations now carry their line numbers (359–369 and 370–377) and the `1 < p < ∞` scope. Lemma 1 does not contain the monotonicity or `F = P[F*]` claims, so garnett2007 Ch. II p. 55 (uncertified) is added for them. That is the page mauth2022 itself cites at line 369.

## F07 (P3) — applied

Verified: `roadmaps grep -i SchrodingerOperators` returns "No match on main or in any open roadmap pull request". The board packages and the merge order have no such roadmap either. Changes:
- README Downstream consumers: the invented name → "A roadmap on one-dimensional Schrödinger and Dirac operators and their spectral types".
- plan.json: the consumer entry is deleted.
- Layer 9 intro: "in the version read (arXiv version 14)" → "of arXiv version 14".
- Pattern, in the References: "version 14 read. Locators are to that version" → "version 14, to which the locators refer".

## F08 (P3) — applied

Verified: the venue field and the README give Ann. of Math. 158 (2003). arXiv math-ph/0112008 dates from December 2001. Change (`sources.toml`, `killipsimon2003`): `year = 2001` → `2003`. The `version_note` now records the 2003 publication, the December 2001 submission and that v2 was read. The other manifest keys and years agree (checked all twelve).

## Adversarial pass on every changed statement

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §6.4 disc, interior point `−Ẽ/E` | free, `t = 1.7`, `z = 0.6 + 0.25i`; real `f = 0.8cos3t + 0.3`; complex `f` as before, `g = 0.5 sin 2t` (RK4, 20000 steps, Simpson) | free: `Im z∫|Φ + iΘ|² = 0.572585 < 1`; real: `0.311007 < 0.532267`; complex: `0.454100 < 0.749282` | interior in all three | F01 |
| §6.4 boundary points `−D/C`, `−B/A` | same three | `h(t) = Im z∫|Φ + wΘ|² − Im w`: `1.2e−15, 2.0e−15` (free), `−4.3e−15, −4.7e−15` (real), `−1.1e−16, −1.7e−15` (complex); distance to the circle `≤ 2.3e−16` | on the circle | F01 |
| §6.4 Apollonius form and radius | same three | Apollonius radius against the README radius `1/(2 Im z∫|Θ|²)`: `1.0458982` (both, free), `0.5302241` (both, real), `0.6538078` (both, complex); free closed form: centre `i coth 0.85 = 1.447033i`, radius `1/sinh 0.85 = 1.045898`, `|i − centre| = 0.447033` | equal | F01 |
| §6.4 `E# = A + iC` (real-entireness, complex `q`) | complex potential, `z` and `conj z` integrated separately | `conj E(t, conj z) = 0.551121 + 0.158094i = A + iC`; `conj Ẽ(t, conj z) = −0.763854 + 0.370669i = B + iD` | holds | none |
| §6.4 `A, C ≠ 0` via `Im(conj A·C) = Im z∫|Θ|²` | free; complex | free `0.478058 = sinh(0.85)/2`; complex `0.7647508` both sides | holds | none |
| §6.4 degenerate `t = 0` | `D_0 = {Im w ≥ 0}` | half-plane, not a disc; `−Ẽ(0)/E(0) = i` interior | statement is for `t > 0`, as written | none |
| §6.4 identity `Im(conj u·v) = (|u − iv|² − |u + iv|²)/4` | `u = 1, v = i` | left `1`; right `(4 − 0)/4 = 1` | holds | none |
| §2.3 cone Check | `z = 0.99 + i`, `s = 1, 2`; supremum over the open cone | `|0.99| < 1`; `P(0.99+i,1)π = 1/1.0001 = 0.99990 ≤ 1.5`; ratio `5/2.0201 = 2.475125`; `f(s) = (s²+1)/((s−1)²+1)`, `f′ = 0` at `s² − s − 1 = 0`, `f(φ) = φ² = 2.618034`; for `0 ≤ s < 1` the supremum is `s² + 1 ≤ 2` | holds; `3 ≥ 2.618` and `max(2, 1 + 2α²) = 3` at `α = 1` agree | F03 |
| §2.5 / §2.6 locators | mauth2022 line 359, 370 | both lemmas for `1 < p < ∞`; Lemma 1's proof cites Garnett p. 55 (line 369) | locator scoped | F06 |
| §7.1 phase `ψ` | `E = e^{−itz}`; `E = z + i`; real constant `f = c` at `x = 0` | `ψ = tx`, `θ = e^{2itx} = e^{2iψ}`, `ψ′ = t = π(t/π)`; `ψ = arctan x − π/2`, `θ = (x − i)/(x + i) = e^{2iψ}`, `ψ′ = 1/(1+x²)`, `2ψ′ = |θ′|`; `φ(t,0) = 0 = −ψ` | holds; opposite to §3.2's `φ`, as now stated | F04 |
| §8.1 `γ(1)` | `p = 1` | `0.742591`; `γ² sinh 2 = 2.0000`; `2e^{−1} = 0.7358` (asymptotic form, consistent) | corrected | F02 |
| Tau Ceti contract (Cayley pushforward) | statement at the pin | `∫ f ∂μ = μ.real {1} • f 1 + ∫ f (boundaryCayley x) ∂μ.cayleyPushforward`, with `μ` finite and `f` continuous; `boundaryCayley x = (x − i)/(x + i)` (`Cayley.lean` line 316); pushforward `= (μ.restrict {1}ᶜ).map circleCayleyInv` | matches the bullet | F05 |
| Mathlib contracts added | statements at the pin | `ContractingWith K f := K < 1 ∧ LipschitzWith K f`; `measure_limsup_atTop_eq_zero (hs : ∑' i, μ (s i) ≠ ∞) : μ (limsup s atTop) = 0`; `rnDeriv`, `singularPart` with `singularPart_add_rnDeriv` under `HaveLebesgueDecomposition` (line 122) | match the bullet | F05 pattern |
| `killipsimon2003` year | venue, README reference | 2003 in both, now also in `year` | consistent | F08 |

## Checks run

Dependency check (after all edits):

```
candidate: DiracScatteringAndNonlinearFourierTransform is not in the merge order yet; checked as if placed after AnalyticNumberTheoryPartI (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2351 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The edge count differs from the review's 2345. Running the same check on the unedited README also gives 2351, so the change comes from the content checkout, not from these edits.

Other checks:
- `roadmaps resolve` on the edited README finds no cross-roadmap citation and no Lean name missing. Its scan cannot see the pinned Lake packages on this host, so I opened every library name I added at the pins myself (file and line as above, including Mathlib `Circle`, `Analysis/Complex/Circle.lean` line 53).
- plan.json parses as JSON, and the diff touches only the entries named above. It still has 57 targets, now with 187 tests (one added in 6.4).
- `sources.toml` parses as TOML.
- No LaTeX delimiters, process words or machine paths were introduced.

Not applicable at the design stage: there is no `Suggested.lean`, so there was no `#check @name` elaboration and no Lean–README agreement to check. No gate failures were listed for this round.

## Notes for the maintainer

- No target id, section number or plan target name changed. One test was added (6.4 `weylPointIsInterior`) and one consumer entry was removed from plan.json (the roadmap it named exists nowhere). No other roadmap can be citing anything that changed.
- No new source was fetched, and `needs-references.toml` was not written. Every locator I added points into texts already in the manifest (mauth2022 lines 359–377) or into garnett2007, which is settled as uncertified.
- Ownership: no new construction was stated, only library contract bullets for pinned declarations, so no ownership question arises. The one absence claim, the Schrödinger consumer, was checked with `roadmaps grep` over main and the open roadmap pull requests (index of 2026-11-06), the board packages and the merge order.
- The review text contained no instructions beyond its findings, and nothing suspicious.
