# Repair report: ExplicitPrimeCounting design, round 2

Files changed: `packages/ExplicitPrimeCounting/design/README.md`, `packages/ExplicitPrimeCounting/design/plan.json`,
`packages/ExplicitPrimeCounting/sources.toml`. One review (`REV-DESIGN-ExplicitPrimeCounting`), 24 findings; every one
was checked against the cited source text, the pinned libraries or a prime sieve to `2.1·10⁷` (scripts in the job's
scratch directory, not in the repository).

## F01 (P1) — applied

Confirmed: `2 898 239`, `2 898 359` are consecutive primes; at `2 898 240` the interval ends at `2 898 357.93`.
Failures only on `(2 898 239, 2 898 241.07)` up to `2.1·10⁷`. Threshold `2 898 239 → 2 898 242` in the Summary,
§7.4, *TrudgianRange* and plan 7.4b. The route now uses the gap table. Negative controls added.

## F02 (P1) — applied

Confirmed: `p₇₀₂₂ = 70 919 > 70 918.61`; failures also at `8581 ≤ k ≤ 8601`, none for `8602 ≤ k < 1.3·10⁶`.
§5.3: `k ≥ 7022 → k ≥ 8602`, via Dusart's `−0.9484` (`k ≥ 39 017`) and the new *Robin1983Range*
(`8602 ≤ k ≤ 39 016`). Negative controls at 7022 and 8601; source issue recorded.

## F03 (P1) — applied

Confirmed: the old form gives `277.49 < 283` at `n = 61`. New upper half:
`p_n < n(log n + log(L − c′) − c′)` for an upper bound `L ≥ log p_n`, `L > c′`. Failures at `n ≤ 463` occur only
where the hypothesis fails (the reviewer's "none from 6" is inexact). Check at `n = 61` added.

## F04 (P1) — applied

Confirmed: `|ψ(100) − 100| = 5.955`. *FaberKadiriRange* and *PlattTrudgianRange* deleted. *TrudgianRange*: ψ on
`[23, 36]`, θ on `[149, 1423]`, interval on `[2 898 242, 4 652 353]`. *JohnstonYangRange* (old range empty) becomes
the π bound on `[2, 5]`. On `[2, e^{2488})`, JY's (1.3) follows from *BroadbentRow* (bound ratio `≥ 1.03`).

## F05 (P2) — applied

§§1.1–1.2 now give only the statement forms and their agreement with ExplicitZetaBounds target 20. Deleted: the API
(antitonicity, RH ⇒ RH(H), instances, Rumely, Platt bridge) and plan 1.2b. The Scope and Layer 1 intro cite the
supplier. Kept: the agreement lemmas. The heights in use are listed as the supplier's instances.

## F06 (P2) — applied

Each `needs` is one precise statement (hypotheses, constants, range) in `What … must provide (gap:…)` form. Split:
ζ vs Dirichlet regions, and ζ vs `L(s, χ)` counts. Added `dirichlet-four-zero-region` (F08). `N(σ, T)` pinned as
one-sided. The used constants 5.69693 and 5.5666305 added; the unused 5.70175 and 5.60 dropped.

## F07 (P2) — applied

Confirmed (`dusart-2002` lines 95–112; `ramare-rumely-1996` lines 822–826). §6.1's first shape now assumes
Ramaré–Rumely's region for `|γ| ≥ H`, with `C₁(q) = min(min_χ C₁(χ, H), 32π)`, and states
`ε(X) = 3√(q/(φ(q)C₁(q))) X^{1/2} e^{−X}`. The region is added to the Dirichlet gap. A Check covers the C₁ values and the
radical reading.

## F08 (P2) — applied

§6.6: Kadiri's exceptional moduli are defined with `R = 6.50`, implied by the 6.4355 region. The four-zero
theorem (`kadiri-2008` lines 337–341) becomes a gap. The Table 1 instances now list region, gap, zero count and
*Kadiri2008Table*; the qualitative existence stays under McCurley's shape. Checks for the nesting and for
`α = 7.281` vs `4.401`.

## F09 (P2) — applied

§2.1's class is now continuous, compactly supported `φ` with `t φ′` of bounded variation `V`, giving
`|φ̃(s)| ≤ max(1, b)V/|s|²`, with the mollification route stated. It contains `m = 1` and the cosine kernel. Plan 2.1
restated. Checks: `m = 1` (jumps ±4), the cosine kernel (two corners), and the indicator as a negative control.

## F10 (P2) — applied

Confirmed (`ramare-2002` lines 137–144, 1228–1235). The route is replaced by Ramaré's §9 transfer (lines 980–1004),
stated as a general theorem. It is fed by the Table 1 rows (`η_d`), the tabulation (`η_q = 1.745`), the new
*Ramare2002Tables* for `L ≥ 10⁵`, and *Ramare2002Tabulation* (with `v♯`, `ε♯`) below that.

## F11 (P2) — applied

Confirmed: at `log k = 10⁴` the needed `ε` is `7.06·10⁻⁸ < 0.905·10⁻⁷`. The route now takes `0.905·10⁻⁷` on
`e⁵⁰⁰ < p_k < e¹⁸⁰⁰` and Dusart's `η₄ = 1 717 433` beyond (`log² k (log log k − 2.1454) = 1.7·10⁷ > η₄`).
Robin's `θ(p_k)` lower bound, an input of the route, is now stated in §5.3.

## F12 (P2) — applied

§7.1: Schoenfeld1976Range covers `(2 010 759.9, 10⁸]`, the gap table with Lemma 10 covers up to `4·10¹⁸`
(`1476 < 6025`), and Dusart's `b = 30` row covers `x ≥ e³⁰`. §2.2: *Schoenfeld1976Range* now covers (6.2), (6.3)
and (6.4) up to 1423, with *ButheVerified* above. All of this was verified numerically.

## F13 (P2) — applied differently

All ten are stated with inequality, range and locator. Finite ranges go in §1.3: *AxlerRange* (Axler's checks),
*Axler2019Range* (a different paper), *Ramare2013Range*, *VanlalngaiaRange*, *DelegliseNicolasRange*,
*BachSorensonRange*. Tables sit next to their theorems (per F20), not in Layer 1. *AxlerRange* is a computation,
not a theorem. *TrudgianRow* became a lemma.

## F14 (P2) — applied

§4.4 now requires `∫_P^∞ f < ∞`, which forces `t f(t) → 0`. Convergence is proved through the partial-sum bound
`(log 4)(P f(P) + ∫_P^X f)`. Negative control added: `f = 1/(t log t)`. Plan 4.4 was restated.

## F15 (P2) — applied

Confirmed in `merge-order/ORDER.txt`: ErdosProgressionPowers is at line 187 and EffectiveClassNumbers at 238; this roadmap goes
after line 259; ClassicalArithmeticCompletion is on main. All three are removed from `## Downstream consumers` and from `plan.json`
`consumers`. The agreement remarks stay in Scope. The `§1.7` reference became `§1.6`.

## F16 (P2) — applied

Confirmed against AnalyticNumberTheoryPartI at its head. §3.2 drops the full-range `θ < 1.000081x` and proves
*SchoenfeldFiniteRangeInput* (Büthe plus the `b = 30` row). §3.5 keeps only Theorem 1's upper half on `1 < x < 59`.
It proves *RosserSchoenfeldFiniteRangeInput* from Dusart's Théorème 1.10 (`x > 599`) and *RosserSchoenfeld1962Range*.

## F17 (P3) — applied

Checked at the pins: `TauCeti.LFunctions.mertensConstant`, `TauCeti.LFunctions.tendsto_primeSummatory_inv_absNorm_sub_log_log`
and `…isBigO…` are in `Mertens.lean` (namespace at line 80). `Nat.primeCounting_nth_prime` and `Nat.primesLE_eq_image_nth` are in
`TauCeti/NumberTheory/PrimeCounting.lean` (namespace `Nat`). `DirichletCharacter.LFunction_apply_one_ne_zero` and
`…_ne_zero_of_one_le_re` are in `Nonvanishing.lean` (lines 412, 404). All README and plan occurrences were renamed, and
LFunctions Layer 7 was replaced by the Mathlib name.

## F18 (P3) — applied

Plan 0.4 now cites RS 1962 (4.17), line 460, and README §0.4 has the same locator. §1.6 (former §1.7) cites B at RS 1962
line 81, (2.10), and γ at `ramare-rumely-1996` line 294. Ramaré–Saouter's RH result is cited unnumbered, as quoted at
`dudek-2015` lines 47–48. §3.1(a) is weakened to `|t| ≥ 2π`, matching `dusart-2016` line 75.

## F19 (P3) — applied

Corrected: gap 382 after `10 726 904 659`; q = 0 is now a negative control; no "either normalisation"; the
line-594 Check concerns finitely many zeros; `k₆ = 3447`; JY `≥ x` iff `log x ≤ 137.37`; 3.9648 is a left limit (2.82
at 59); c, c′ unswapped; `C ≥ 0.036`; the question restated; `10 015 782`.

## F20 (P3) — applied

The plan's layer graph is acyclic. §0.6's bridges moved to §§3.2, 3.5, 4.3, 6.1, the liTwo enclosure to §1.6, and
each table next to its error function (§1.7 → §1.6). For §2.3, Büthe's own route replaces the suggested move:
π from the θ bound (lines 709–755) plus *Buthe2016Range*.

## F21 (P3) — applied

The Summary now gives every headline with its range. ψ < 1.03883x for x > 0; Dusart's bound for x > e²²; JY and
Vanlalngaia for x ≥ 2; Dusart's p_n for n ≥ 2; BMOR for a prime to q and x ≥ 8·10⁹; Schoenfeld for x > 2 010 759.9;
Trudgian for x ≥ 2 898 242.

## F22 (P3) — applied

Two remedies. Broadbent et al. are now recorded in the manifest (arXiv v2, open, certified; key
`broadbent-kadiri-lumley-ng-wilk-2021`, with a version note on numbering). Kadiri 2005, Mossinghoff–Trudgian(–Yang), Ford,
Hasanalizade–Shen–Wong, Kadiri–Lumley–Ng, Lehman, Montgomery–Vaughan and the unrefereed heights: attributions dropped.
Each statement is cited by its constants and supplier target, or by a quoted manifest locator.

## F23 (P3) — applied

§1.2 now states the law in its used direction: `GRH(q, H)` holds iff it holds for every primitive χ* of conductor
`f ∣ q`, the bounded-height form of AnalyticNumberTheoryPartI §1.6. Rumely's list is closed under conductors (checked
by computer). The q = 8 Check was kept and a Check on the direction added.

## F24 (P3) — applied

Plan 7.4d is deleted, and Dusart 2018's intervals are no longer stated. A Check of §7.4's lemma records what they would
need: `η < 0.4998` (k = 3, from 89 693) and `η < 0.9999997·10⁻⁴` (k = 2, from 468 991 632). It notes that the 2018 rows
`η = 1`, `0.5` do not give either.

## Checks

Dependency check, verbatim:

```text
candidate: ExplicitPrimeCounting is not in the merge order yet; checked as if placed after SieveMethodsAndPrimePatterns (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2350 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found nowhere.
The three earlier leads are gone: "ExplicitZetaBounds Layer 8" became "target 20", and the two names now resolve.

Lean: this is the design stage and there is no `Suggested.lean`, so no elaboration and no `#check @name` audit was run.
Since the README names no Lean declaration of its own in backticks, there was nothing to compare.

Ownership against open work, checked with `roadmaps grep` over main and the 459 open heads, for the objects stated here for
the first time: Trudgian's derived region (`6.455`), Ramaré's progression transfer, Kadiri's `R = 6.50` moduli and the
four-zero region. There is no owner anywhere; the last is declared a gap on ExplicitZetaBounds target 16. AnalyticNumberTheoryPartI
was read at its open head #1126 (a4886b9).

## Adversarial pass

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| Trudgian interval (§7.4, §1.3) | x = 2 898 240; 2 898 242; scan to 2.1·10⁷; rows ≥ 4 652 353 | right end 2 898 357.93 < 2 898 359; 2 898 359.93; last failure 2 898 241.07; every record `g_i ≤ P_i/(111 log² P_i)`, at 4 652 353: 177.8 ≥ 154 | false at old threshold | threshold 2 898 242; table route |
| Robin −0.9385 (§5.3) | k = 7022, 8601, 8602; scan k < 1.3·10⁶ | 70 919 > 70 918.61; 88 807 > 88 805.00; 88 811 < 88 816.44; 2569 failures, last 8601 | false at old threshold | k ≥ 8602, *Robin1983Range* |
| §5.1 upper bootstrap | n = 61, c = 1.1, c′ = 1; scan 6 ≤ n < 1.3·10⁶ | old 277.49 < 283; new 285.70 ≥ 283 (L = 5.820 ≥ 5.645); new fails only at n ≤ 463, where the hypothesis fails (last 492) | old false | new form with `L` |
| §5.1 lower bootstrap | scan 4 ≤ n < 1.3·10⁶, c = 1.1 | 0 failures | holds | — |
| *TrudgianRange* ψ, θ | sup at prime powers on [23, 36], [149, 1423] | 0 failures; Büthe ψ crossover 35.08; θ at 1423: 196.4 vs 73.6 | holds | — |
| Trudgian π route | 229 ≤ x ≤ 10¹⁹ | Büthe π clause ≤ bound, minimum ratio 9.82 | holds | — |
| Trudgian's region lemma | |t| = 23, 24; H threshold | σ ≥ 0.4875 at 23, 0.5508 at 24; exp(6.455 log 17/0.75807) = 3.0014·10¹⁰ ≤ 3.061·10¹⁰ | holds from 24 | — |
| JY (1.3) via *BroadbentRow* | log x ∈ [log 2, 3000] | minimum ratio 1.0301; at 137: 1.009 vs 0.726; at 2488: 1.56·10⁻¹² vs 4.96·10⁻¹³ | holds | route |
| JY trivial range | log x = 137.37, 150, 400 | f = 1, 0.739, 0.00535 | holds | Check fixed |
| *JohnstonYangRange* | x = 3, 5; crossover | Büthe 34.1 vs 12.7 at 3; Büthe ≤ JY from 4.43 | range [2, 5] needed | restated |
| FK from Büthe | x ≥ e²⁰ | 0.94√x ≤ 5.3688·10⁻⁴x from 3.07·10⁶; minimum ratio 12.6 on [e²⁰, 10¹⁹] | holds | FaberKadiriRange deleted |
| Schoenfeld (6.2)–(6.4), (6.18) small ranges | prime powers on (73.2, 1423], (599, 1423], (59, 1423], (2657, 5000] | 0 failures; Büthe ψ from 129.1, θ from 1423, π from 3834 | holds | coverage fixed |
| Büthe 2016 small range | ψ (59, 5000), θ (599, 5000), π (2657, 5000), π* (59, 5000) | 0 failures except π* on 96.29 < x < 97: 1.939 > 1.793 | π* false there | π* stated from 97 |
| Theorem 12 route | gaps; x = 2 010 760, 2 010 750; 10⁸ | last failure at 2 010 733; right end 2 010 881.15; 2 010 871.15 (no prime); 6025 > 1476 | holds | route |
| §1.2 lifting law | Rumely list closure; q = 8 | no conductor (≢ 2 mod 4) outside the list; conductors 1, 4, 8 | holds | restated |
| §2.1 class | 4t(1 − t); cosine kernel; indicator | derivative jumps ±4; corners of size ϑ/(ae^{±δ})^{3/2}; 1/|s| decay | class right; indicator excluded | restated |
| §4.4 | f = 1/(t log t); partial-sum bound | ∑ 1/p diverges; bound (log 4)(P f(P) + ∫ f) | hypothesis needed | added |
| §4.5 C | a = 315 437, x = 2a, 10a | 0.0299, 0.0367 | C > 0 | Check fixed |
| §5.3 middle range | log k = 1792.5, 8700, 10⁴ | 1.66·10⁻⁶, 9.14·10⁻⁸, 7.06·10⁻⁸ against 9.05·10⁻⁸; η₄ need 1.7177·10⁷ | split at e¹⁸⁰⁰ needed | route |
| §3.2 Schoenfeld input | b = 30, b = 22 | 1.0000098 < 1.000081; 1.000279 > 1.000081 | b = 30 suffices | bridge |
| §3.5 RS input | x = 59, 600; x = 2 | 16.24 < 17 < 19.79; 108.46 ≥ 101.13, π(600) = 109; 9.13 > 1 | holds | bridge |
| §4.3 prime-product input | 10⁸ | 0.2615 + 0.0015 = 0.2630 < 0.27 | holds | moved |
| §6.1 C₁, ε(X) reading | k = 1, 3; radical vs not | 38.31, 20.92; 0.485 against Schoenfeld's 0.387; 0.078 | radical reading | stated |
| §6.1 regions nested | q = 3, |t| = 1 | 0.8586 vs 0.9550 | one-way | Check |
| §6.6 nesting | q = 10⁵ | 0.986637 vs 0.986503 | one-way | Check |
| §6.5 least prime | 2 ≤ q ≤ 1000, all units | max p/(q log q)² = 1.561 at q = 2 (p = 3) | < 2 holds; source's 1.56 exceeded at q = 2 | *BachSorensonRange* with 2 |
| §7.4 Dusart 2018 needs | k = 3 from 89 693; k = 2 from 468 991 632 | η < 0.49983; η < 0.9999997·10⁻⁴ | not supplied | 7.4d deleted |
| §7.4 lemma at 10⁷ | c = 0.41 | right end 10 015 782 | Check fixed | — |
| §1.6 liTwo enclosure | series | 0.5772157 − 0.3665129 + 0.8344610 = 1.0451638 | holds | moved here |
| §0.6 q = 0 | a = −5, x = 5 | 0 vs 1 | disagreement | negative control |
| Panaitopol k₆ | recurrence | 4320 − 873 = 3447 | 3441 wrong | fixed |
| §3.3 ratio at 59 | 59⁻, 59 | 3.9648085, 2.8158 | wording | fixed |
| §6.4 second clause | x = 182 | 1/√182 = 0.074 | separate computation | Check |

## Source issues

- **Error** in trudgian-2016 at Corollary 2 (lines 229–233): the source states the threshold `x ≥ 2 898 239`; the correct
  threshold is `x ≥ 2 898 242`, because the gap after `2 898 239` is 120 and the interval length there is 117.9. This
  affects a stated result.
- **Error** in robin-1983 at the consequences of Théorème 8 (line 84; (23) at line 378): the source states `k ≥ 7022`; the
  correct range is `k ≥ 8602`, since the bound fails at 7022 and at 8581–8601. This affects a stated result.
- **Error** in buthe-2016 at Theorem 2, (7.1) (lines 699–701): the source states the bound for `x > 59`; it fails for
  `96.29 < x < 97`, where `li x − π*(x)` reaches `1.939 > 1.793`. The bound holds again from 97 on. This affects a stated result.
- **Error** in ramare-2016 at Theorem 1.1, as reported at broadbent-kadiri-lumley-ng-wilk-2021 lines 950–952 and
  1128–1130: the leading constant is wrong by a factor over 100. This affects dudek-2016's Theorem 1.1 (A = 9.7, lines
  700–701), which §7.5 now states with A as a parameter. It also affects Dusart 2018 and Axler 2018, whose rows Broadbent et
  al. re-prove (Corollaries 11.1–11.2), and the README cites those corollaries.
- **Misprint** in bach-sorenson-1996 at the proof of Theorem 5.3 (lines 935–937): the source states the bound
  `p ≤ 1.56 (q log q)²`; at `q = 2` the ratio is 1.561. This affects nothing, since the theorem's constant 2 holds.

## Notes for the maintainer

- `plan.json` changes:
  - Removed targets: 1.2b, the old 1.6 (table propositions, now `api` definitions of 3.1b, 3.1c, 4.5, 6.1, 6.3, 6.4, 6.5c,
    6.6, 7.2, 7.3b, 7.3c) and 7.4d.
  - Renumbered: 1.7 is now 1.6 (README §1.7 → §1.6).
  - Renamed: 0.6 `ExplicitPrimes.bridges` → `ExplicitPrimes.agreements`.
  - New gap slugs: `dirichlet-zero-free-constants`, `dirichlet-four-zero-region`, `dirichlet-zero-count-error`.
  - Count: 63 targets, 207 tests.
- ExplicitZetaBounds' design should adopt the precise gap statements, notably the one-sided `N(σ, T)`, the
  primitive-character form of `GRH`, Ramaré–Rumely's region, the four-zero region and an explicit `A` in Ramaré's density.
  ExplicitMultiplicativeFunctions should cite the enclosures as §1.6.
- One row in §7.2 could not be verified: Ramaré–Saouter's `Δ = 14 500 755 538` at `e⁶⁰`. `cully-hugill-lee-2022`
  lines 79–86 list `2.09·10⁸` for their Theorem 2 at `log x₀ = 60`. The paper is paywalled and the row is unconfirmed;
  a human should check it.
- No new `needs-references.toml` entry was needed. The published Broadbent et al. Corollary 1.3 (R = 5.5666305) is cited
  through `fiori-kadiri-swidinsky-2023` lines 151–154, because arXiv v2 numbers differently.
