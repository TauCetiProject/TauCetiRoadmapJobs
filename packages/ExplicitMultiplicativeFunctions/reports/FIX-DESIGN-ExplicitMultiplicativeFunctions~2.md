# FIX-DESIGN-ExplicitMultiplicativeFunctions~2

Repair round on the review `REV-DESIGN-ExplicitMultiplicativeFunctions` (17 findings). Files edited:
`packages/ExplicitMultiplicativeFunctions/design/README.md`, `packages/ExplicitMultiplicativeFunctions/design/plan.json`,
`packages/ExplicitMultiplicativeFunctions/sources.toml`. Every numerical witness below was recomputed by exact sieves
(Möbius to 6.2·10⁶, squarefree and σ to 1.1·10⁶, τ to 6·10⁵), testing real arguments at both ends of each unit
interval and at interior extrema where a factor `log x` or `√x` makes them possible.

## F01 (P1) — applied

ComputationalNumberTheory is removed as supplier (README contract section, Scope bullet, Layer 0 Dependencies, plan
`suppliers`) and as consumer, with ErdosProgressionPowers, EffectiveClassNumbers and PolynomialGaloisGroupsPartII
(all earlier in `merge-order/ORDER.txt`: lines 185, 187, 238, 205). Conventions and 0.7 now say the Props are hypotheses
not discharged here. `EulerGammaEnclosure d` is routed through Mathlib's two `eulerMascheroniSeq` inequalities at
`n = 10^d`. Its false Check is corrected: `EulerGammaEnclosure 1` *does* follow from `1/2 < γ < 2/3` (deviation
`≤ 0.0895`); `d = 2` does not; at `n = 100` the deviation is `0.004992`.

## F02 (P1) — applied

1.3 now states Dress–El Marraki and Cohen–Dress–El Marraki Theorem 1 by locator, with finite inputs
`MoebiusRangeVerified (x/2360) 617 973 1 815 918` and `(x/4345) 2 160 535 6 155 337` plus the table. The table covers
each bound from `(2360·0.571)² = 1 815 917.95` and `(4345·0.571)² = 6 155 336.19`. There is no edge to 1.4 or 1.5, the
El Marraki "restated" clause is gone, and the tail lemma stands alone. In 1.2, `N₀` becomes `[1119, 2087]` plus the
table (`(80·0.571)² = 2086.6`).

Evidence: `elMarraki1995` lines 231–244 take (1.1) as input. Both thresholds are exact: `|M(617 972)| = 262 > 261.85`
and `|M(2 160 534)| = 498 > 497.25`. Both ranges hold, with maximal ratios `0.99674` and `0.99950`.

## F03 (P1) — applied

`RamareTransferComputations` gains two fields:
- (ix) `|ψ(x) − x| ≤ 0.0065 x/log x` on `[1 514 928, 3 430 190]` (`ramare2013aa` lines 208–214);
- (x) `∫_1^{1 078 853} |M(t)| dt/t ≤ 302` (computed `301.9049`; line 754).

Theorem 1.1 uses fields (i)–(vii) and (ix); Corollary 1.2 uses (viii) and (x). 2.3 no longer invokes `1/4345` (it
starts at `2 160 535 > D₀`). Lemmas 4.3–4.4 are not needed: with the corrected `ψ̃` range the analysis runs only for
`D ≥ 2.31·10¹²`, where the terms of `ρ(D)` are `0.000941 + 0.000913 + 0.0065 + 0.00985 + 0.000213 = 0.0185 ≤ 0.0213`.

## F04 (P1) — applied

The first row of 3.2 is restated for `x ≥ 2`, adding `≤ 1/4` for `x ≥ 1` (equality at `√e`). The plan and the Checks
now include interior extrema (`u = b/(2a)`). The false "monotone, so endpoints suffice" Check is replaced, and the
`√e` non-example is added.

Correction to the review: the failure interval is `(1.3602, 1.9984)`, not `(1.374, 1.979)`. With interior points
included, the rows have no violation on `[2, 10⁶]`.

## F05 (P1) — applied

5.2 now states the τ/n model in three forms:
- `1.16` for `t ≥ 1`;
- `1.641` for every `t > 0`, the form 5.1 consumes (sup on `(0,1)` is `1.640819`, at `t = 7.35·10⁻⁴`);
- `1.001 t^{−1/2}` for `t ≥ 2` (Cully-Hugill–Trudgian (14), sup `0.8781` on `[2, 6·10⁵]`).

7.6 is restated with `4.61` (`1.641·2.80405 = 4.6015`) and `11.51`. Trudgian's `3.253`/`8.14` (and the `−0.3762`
term, which the route does not produce) are recorded as resting on the model outside its range.

In 7.3, `1088` is `1.641·H̄(−1/3)/u = 1087.71`, with `H̄(−1/3) = 251.01` (primes to 10⁸ plus a tail estimate). It is
not `1.16·H̄/u = 768.9`. Corroboration: `cullyHugillTrudgian2021` lines 193–195 and 297–298 also say `1.16` must be
replaced by Riesel–Vaughan's `1.641`.

## F06 (P1) — applied

7.1:
- Cipu's lower constant `−0.103229` is now for integers, and the real form is `−0.15264√x` (inf `−0.152632` as `x → 2⁻`).
- The `0.036438` row is deleted (`Q(351 115) = 213 474`, `|R| = 21.676 > 21.591`).
- The `0.02767` row is for integers (last integer violation `437 780`), and the real form adds `6/π²`.

The recheck of 7.2 found more, fixed in the same pattern:
- **Theorem 3.2's error term was mis-transcribed.** `7/(20√D log D)` fails at integers from 1665 to 441 389 (ratio
  2.30 at `D = 1671`). The source's `7/(20√(D log D))` holds on `[1665, 1.1·10⁶]`.
- 7.2's route via `0.02767` and Abel summation cannot reach these constants. It is replaced by the source's route:
  5.4 with `g(k²) = μ(k)`, Ramaré's tail Theorem 8.1 (added to 7.2) and Lemma 9.2.
- Corollary 3.4 (moved into 7.2) now uses the `0.1333` and `0.02767` rows in place of the deleted one.
- Cipu's Lemma 4.3 (7.6) is re-derived from the real constants, with room to spare.

## F07 (P1) — applied

7.4 now states the `0.397` row for natural `n ≥ 5560` and for real `x ≥ 7560`. The real form fails below 5760, 6720
and 7560, e.g. `−35.037` against `34.518`. The sharpness witnesses are now `1980` and `5460` (`Δ(5460) = 31.391 >
29.557`; `Δ(5559) = −0.705`). The false 9994 and "x ≥ 5 is false" claims are deleted: the cubic bound holds on
`[5, 2·10⁵]`.

In 7.5, Cully-Hugill–Trudgian are run with `x₀ = 7560`: `F₁ = 2c + 6α + 2α/log x₀` is `4.473 ≤ 4.48` (it is `4.476` at
5560), and `4.473·ζ(3/2)/ζ(3) = 9.721 ≤ 9.73`. The direct check extends to `x < 7560²`.

## F08 (P1) — applied

The bound is now stated for odd `n > 21`: `σ(21) = 32 > 31.2314`. Added the negative Check. The odd failures below
`1.1·10⁶` are exactly `3, 5, 7, 9, 15, 21`.

## F09 (P2) — applied

Δ is now imported as AnalyticNumberTheoryPartI §3.23a's `divisorError`; the cubic bound is §3.23a's
`divisorRemainder.cubic_bound`; the hyperbola identity is §3.22b. These are cited in the contract and in Scope. 7.4
keeps the 0.961, 0.482 and 0.397 rows and the `ψ_B` form, each said to sharpen `divisorRemainder.sqrt_bound`. The
natural-N harmonic sentence of 0.3 is deleted, and §3.22a is cited instead. Verified at the head (ANT1 lines 2175,
2181, 2208–2218).

## F10 (P2) — applied differently

Every gap now has an exact one-inequality `needs` and its supplier target (T2.1, T2.2, T3.2, T3.3, T4.2, T5.2).
`prime-count-lower` now cites T2.1 and notes §0.5.

`mertens-reciprocal-explicit` is split into the two rows actually used, `mertens-reciprocal-cubic` and
`mertens-reciprocal-dusart`. The unused `4/log³` and `2.3/log³` rows, and the unstatable "Theorem 4 form", are dropped.
8.2 is therefore restated as the transfer with the cubic remainder, and the `0.841` constant is moved to Scope.

`mertens-logp-explicit` is removed rather than kept for progressions. Its `q = 1` case is §0.8, cited. The progression
input becomes `theta-progression-explicit` (T5.2's `c x/log x` shape), because a constant relative `θ` bound gives the
divergent `∫dt/(t log t)`.

## F11 (P2) — applied differently

Lemma 5.1 is now `c₁/log D` with `D > 1`. The Lemma 8.1 scheme takes `|M(D₁) − M₂/log² D₁| ≤ C₁`, concludes with `+C₁`,
and states the absorption conditions `2β ≥ 4α` and `C₁ ≤ 2αD₁/log²D₁`.

The suggested repair itself is wrong in one place, so it was not applied as written: the boundary value is
`−466 + 98 403.05/212.757 = −3.4852`, so `C₁ = 3.48` would be a false hypothesis. Field (v) and the scheme use
`C₁ = 3.49`. The absorption limit is `264.11`, not 263.8.

## F12 (P2) — applied

The sign is fixed: the tail `Σ_{p>x} c_p` enters with a plus sign (`0.1226` at `x = 2`). All four sides now follow from
`gap:mertens-reciprocal-cubic` for `x ≥ 24 284` (`1.0125·10⁻³ ≤ 4.892·10⁻³`), and the initial-range Prop now covers both
pairs on `(1, 24 284)`. Both pairs hold on `(1, 4·10⁵)`.

Also fixed: the false inversion Check (`1/(1 − b) > 1 + b`, so the second upper bound is separate), and the Dusart
instance's tail (`log³x/(x − 1) ≤ 0.0014`).

## F13 (P2) — applied

Every Prop of 0.7 now has exact content and instances, including the new `PiltzRangeVerified k`,
`TotientRangeVerified`, `PrimorialTableVerified K`, `SuperchampionTableVerified K₁ K₂`,
`ProgressionProductTableVerified q a C X₀ X₁`, `SquarefreeIntegralRangeVerified` and
`SquarefreeReciprocalRangeVerified`.

The 9.1 step is made explicit: `c = 1.25` from the gap by summation (the defect peaks at `1.2475`, k = 23), so the
analytic step works for `k ≥ 27` and the table `PrimorialTableVerified 26` holds (max `1.384013` at k = 9).

`A₃` and `A₄` are now defined by formulas in `H(0)`, `H'(0)` and `H''(0)`; `C(q,a)` and `x₀(q)` are explicit parameters
with named hypotheses. The elided Lemma 5.2 and 6.1 expressions are written out: the Lemma 5.2 scheme is now the case
the instance uses, and `ρ(D)` is stated term by term.

## F14 (P3) — applied

All items are fixed:
- the Ioc remark;
- `m₂(10) = 34/105` (0.2, the Examples, and the source misprint noted);
- `3e^{−1−γ/3} = 0.910471`;
- `1/2` exceeds `R₁(1)`, and the limit is `0.540726`;
- `R(176) = −0.9952`, with Rogers' `≥ 53x/88` direction corrected;
- `H̄(−1/3) = 1.8508`, `H′(0) = 0.34649`;
- the 1.2 threshold (`|M(1118)| = 14`, `|M(1109)| = 15`);
- 1.4 (`11 < 11.453`, `12 > 11.439`);
- 1.5 (`349 ≤ 349.915`, `350`);
- the 2.3 `1/25` row (3461/3470) and `0.0005154`/`0.0005162`;
- 2.4 (sup `log 2`);
- the 1.6 and 3.3 Checks deleted;
- `m̌₂(10) = 1.7117`.

## F15 (P3) — applied

The quartic character has `P = √2` and `|L| = 0.88858`. Hall–Tenenbaum's `B = 1.98233` (so `A + B + 1 = 4.3686`), and
the 2^ω factor is `3.87`. The 6.4 Check now says the bound holds at `x = 1` and fails at 2 and 3. Also: `R(7) = 1.7445`;
`j(6) = 1.0282` (`6.07`); 7.3's `D·H̄/u`; the garbled 7.4 sentence replaced; 8.3 uses a constant (`1.8368` for
`X₀ = 286`); and `τ₃` has `3³`.

7.7's route now names Moser–MacLeod's tail `1/(3x) + 8/(3x²)`, added to 2.5 and checked on `[2, 2.2·10⁶]`:
`γ + 1/3 + 1/41 + 8/123 = 0.99998`. The second bound's route is corrected to `Σ m²` with Treviño's θ-bounds.

## F16 (P3) — applied differently

Applied:
- `ramare1995`: Lemma 3.2 at lines 339–354, Lemma 3.3 at 356–366, the reading of h at 367–379;
- `vanlalngaia2017`: Theorem 5, p. 3;
- `ramare2016mc`: lines 462–466;
- `Nat.primesLE` attributed to Mathlib;
- `prime-count-lower` now cites T2.1;
- the `cipu2015` locator now includes Lemma 4.2 (a)–(d);
- "real D ≥ 1" added to Akhilesh–Ramaré;
- every "OCR" remark removed.

Disputed: `normCoeff_eq_eulerProduct` *is* in `TauCeti/NumberTheory/ArithmeticDirichletSeries/EulerProduct/Basic.lean:494`
(`TauCeti.IdealArithmeticFunction.normCoeff_eq_eulerProduct`). The one at `Data.lean:151` is a second declaration in
`EulerProductData`. The citation is kept.

## F17 (P3) — applied differently

Applied:
- Discriminating Checks for `superiorHighlyComposite`: 5040 versus 2520 at `ε = 0.3` (`4.6497 > 4.5795`), and the
  inverse convention, which defines nothing.
- Checks for `bernoulliFun` (`b₂(1) − b₂(0) = 0`; `bernoulli'` gives `2`) and `periodicBernoulli`.
- The 3.1 route now uses `|t²h′| ≤ 7/4 − γ` and states that the positivity in (3.6) is not used.

Not done: the backticked-name reconciliation. It belongs to the package-stage `Suggested.lean`, which does not exist
at the design stage and is not a file this round may edit, so no README name was de-backticked.

## Checks run

Dependency gate (final run):

    candidate: ExplicitMultiplicativeFunctions is not in the merge order yet; checked as if placed after ProbabilisticAndMetricNumberTheory (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2352 edges, 0 problem(s)

There is no UPWARD or CYCLE line. Citation resolver: no cross-roadmap citation or Lean name found nowhere.

The plan's target graph is now acyclic. It had three cycles: 1.3↔1.4 (F02), 7.1↔7.2, and 1.5→7.1→7.2→2.3→1.5. The
last two were broken by moving Ramaré 2016 Lemma 3.4 from 7.2 into 7.1 and Corollary 3.4 from 7.1 into 7.2, and by
placing Ramaré 2019 Theorem 8.1 in 7.2 rather than in 2.5.

No Lean was elaborated and no `#check` file was written: this is the design stage, with no `Suggested.lean`.

No gate failures were listed for this round. `needs-references.toml` was not created: every cited text is in the
manifest.

## Adversarial pass (statements added or changed)

| Statement | Instances | Values (left vs right) | Result | Change |
|---|---|---|---|---|
| 0.3 cube-root constant | `t = e^{−3−γ}` | `3` vs `0.9·3.2950 = 2.966`, `0.9105·3.2950 = 3.0001` | `0.910471` least | formula fixed |
| 0.7 EulerGammaEnclosure | `d = 1, 2`; `n = 100` | dev `0.0895 ≤ 0.1`; `0.0894 > 0.01`; `0.004992` | d=1 a Mathlib fact | Check fixed |
| 0.7 field (v) | `D₀ = 2 161 205` | `M = −466`, `M₂ = −98 403.05`, value `−3.4852` | `3.48` false, `3.49` true | C₁ = 3.49 |
| 0.7 field (x) | `D₀ = 1 078 853` | `301.9049 ≤ 302` | true | added |
| 1.2 thresholds | 1109, 1118, 199; `[1119, 2087]` | 15, 14 vs 13.975; slack 5.5125; 0 violations | exact | N₀ replaced |
| 1.3 finite ranges | 617 972/3, 2 160 534/5 | 262 > 261.85, 261; 498 > 497.25, 497 | exact; ratios 0.99674, 0.99950 | ranges stated |
| 1.5 Lemma 5.1 | `D = e⁴`, `T = e²` | sum `0.567` vs `0.981` (misprint `4.88`) | true | `c₁/log D` |
| 1.5 ρ(D) | `D = 2.31·10¹²` | `0.0185 ≤ 0.0213` | true | written out |
| 1.5 Theorem 1.1 | 1 078 852/3; to 2.2·10⁶ | 350 > 349.915; 349; 0 violations | exact | Check fixed |
| 2.3 rows | 1/25; `x = 463 421` | last viol 3461 (thr 3470); `0.0005154 ≤ 0.0005162` | true | Checks fixed |
| 2.5 Moser–MacLeod | `D ∈ [2, 2.2·10⁶]`; `D = 2`, 29 | 0 violations; `0.142 ≤ 0.833`; Abel `0.01440 ≤ 0.01467` | true | added |
| 3.2 first row | `x = √e`, 2; `[2, 10⁶]` incl. interior | `0.25 > 0.213`; `0.21269`; 0 violations | `x ≥ 2` | restated |
| 5.2 forms | `t = 0.01`; `(0,1)`; `[1,6·10⁵]`; `[2,6·10⁵]` | `5.766 > 5.384`, `≤ 7.617`; sup 1.64082; 0.6542; 0.8781 | three forms true | restated |
| 7.1 rows | 1.9; 351 115; 441 353⁻; 380; 7 | `−0.15506 < −0.14229`; `21.676 > 21.591`; `−0.027772`; `−0.1032287`; `1.745 > 1.323` | integer/real split | restated |
| 7.1 Lemma 3.4 (moved) | `N ≤ 1.1·10⁶`; formula thresholds | range `[0.57862, 1.16546]`; `14 831`, `4.58·10⁸` | true | moved |
| 7.2 Theorem 3.2 | `D = 1671`; `[1665, 1.1·10⁶]` | `0.002658` vs `0.003143` (√(D log D)) and `0.001154` (√D log D) | only `√(D log D)` true | fixed |
| 7.2 Theorem 8.1 | `y` to 2.2·10⁶ | last viol 142 126, 59 586; analytic `0.0172·…`, `0.0173/(y log y)` | true | added |
| 7.2 Cor 3.4 | `(1, 1.1·10⁶]`; `x = 1664` | 0 violations; `15.88` vs `5.44` | true | route fixed |
| 7.3 constant | primes to 10⁸ | `H̄ = 251.012`, `1.641H̄/u = 1087.71`, `1.16H̄/u = 768.89` | 1088 reached | route fixed |
| 7.4 0.397 | 5460, 5559, 5760⁻, 6720⁻, 7560⁻ | `31.391 > 29.557`; `−0.705`; `−30.595/30.130`, `−33.086/32.544`, `−35.037/34.518` | natural / real ≥ 7560 | restated |
| 7.5 F₁ | `x₀ = 5560`, 7560 | `4.476`, `4.473`; `×2.17325`: `9.721` | ≤ 4.48, 9.73 | x₀ = 7560 |
| 7.6 constants | `x = 1, 10, 10⁵`; to 10⁶ | `56.7584 ≤ 56.8590`; `778 581 ∈ [704 462, 870 812]`; 0 violations (also Trudgian, Cipu) | true | restated |
| 7.7 step | `x = 41` | `0.99998 ≤ 1` (with `1/x`: `1.6016`) | true | route fixed |
| 8.1 route | `x = 2, 286, 24 284`; `(1, 4·10⁵)` | tail `0.1226 > 0`; `0.019139 > 0.015509`; `0.0010125 ≤ 0.004892`; 0 violations | cubic route | fixed |
| 8.2 instance | `x = e²²`, `|ε| ≤ 1` | `log³x/(x−1) = 2.97·10⁻⁶`, error `≤ 1.0001/10 648` | true | restated |
| 8.3 transfer | `q = 1, 2, 4` | `B + K = γ`; `e^γ/2 = 0.8906`; `C ≥ 0.9853` at `x = 5` | consistent | restated |
| 9.1 step | `k = 3…400`; `c = 1.25`, `1.0769` | table max `1.384013`; last analytic failure `k = 26` (`1.38525`), resp. 16 | `PrimorialTableVerified 26` | made explicit |
| 9.2 SHC | `ε = 0.3`, `n < 2·10⁵` | argmax `5040`: `4.6497 > 4.5795` | true | Check added |
| 9.3 Eum–Koo | odd `n ≤ 1.1·10⁶` | `32 > 31.2314` at 21; failures `3,5,7,9,15,21` | `n > 21` | fixed |

## For the maintainer

**Names that changed.**
- Gap slugs: `mertens-reciprocal-explicit` becomes `mertens-reciprocal-cubic` and `mertens-reciprocal-dusart`;
  `mertens-logp-explicit` is removed; `theta-progression-explicit` is new (supplier ExplicitPrimeCounting, T5.2). No
  other package or roadmap cites the old slugs.
- Plan target 8.2 is renamed `vanlalngaia_tilted_product` → `tilted_product_transfer`.
- New Props: `MoebiusSquareTailRangeVerified`, `SquarefreeRangeVerifiedNat`, `SquarefreeReciprocalRangeVerified`,
  `DivisorRangeVerifiedNat`, `DivisorPowerRangeVerified`. `SquarefreeRangeVerified` now takes a bound function.
- 7.1's heading changed, and Lemma 3.4 and Corollary 3.4 swapped between 7.1 and 7.2.

**Consequences for other roadmaps.**
- ExplicitNumberFields (`packages/ExplicitNumberFields/target.md`) cites T7.5 with "DivisorRangeVerified". The
  constants 4.48 and 9.73 are kept, but the Prop is now `DivisorPowerRangeVerified`.
- ExplicitPrimeCounting's target calls the shared Meissel–Mertens enclosure `MeisselMertensConstantValue`; this
  roadmap's name is `MeisselMertensConstantEnclosure`. That mismatch predates this round and is not changed.
- ExplicitPrimeCounting must now supply the ten gaps as restated (T2.1, T2.2, T3.2, T3.3, T4.2, T5.2).

**Moved down.** Nothing from a later roadmap.

**Ownership.** Checked by object against main and the open heads with `roadmaps grep` for the newly stated objects
(the Ramaré 2019 tail, the Moser–MacLeod tail, the totient sums, `BBRFiniteInput`, `divisorError`). Only
AnalyticNumberTheoryPartI §§3.22a, 3.22b and 3.23a own overlapping objects, and these are now imported (F09).
ProbabilisticAndMetricNumberTheory's `Φ(x) ≥ x/4` lies inside a proof and does not overlap. The overlaps tool listed
no open pull request that changes this roadmap.

**Source issues found this round** (beyond the review's list):
- `ramare2019bcp` Corollary 3.4's range `[82 005, 10³²]` rests on the false 0.036438 row.
- Its Theorem 8.1 proof uses the pre-corrigendum Theorem 1.5 (harmless: the corrected one gives the same statement).
- `cullyHugillTrudgian2021` applies 0.397 at real arguments from 5560.

No suspicious instructions were found in the review text.
