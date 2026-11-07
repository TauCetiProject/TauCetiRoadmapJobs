# Design report: ExplicitPrimeCounting

Deliverables: `packages/ExplicitPrimeCounting/design/README.md` (8 layers, 66 targets in
`design/plan.json`), `packages/ExplicitPrimeCounting/sources.toml` (58 entries), this report.

## What the design covers

Every item of the triaged target is planned, with the following correspondences and departures.

| Target item | Design | Note |
| --- | --- | --- |
| T0.1 `li`, `ψ̃`, `C(q, a)`, agreements | §0.1, §0.2, §0.6 | `C(q, a)` is defined as the limit; its closed form (Ramaré, Corollaire 1) is API. Existence from Siegel–Walfisz (AnalyticNumberTheoryPartI §0.32), as the target suggested. |
| T0.2 `ψ − θ` | §0.3 (general), §3.2 (Schoenfeld's constants) | The sharp constants `1.001093`, `0.998697` depend on `RH(H)` and finite checks, so they sit in Layer 3; Layer 0 keeps the unconditional transfer with `log 4`. |
| T0.3 `θ ↔ π` | §0.4 | Mathlib's `primeCounting_eq_theta_div_log_add_integral` already carries the rational identity; only the `Li` rewriting (Tau Ceti) is needed. The Tau Ceti number-field identity is cited as the general form. |
| T0.4 conversion | §0.5 | |
| T0.5 bridges to AnalyticNumberTheoryPartI | §0.6 | `PrimeProductFiniteInput` needs `B < 0.27`, which needs the enclosure of `B` (§1.7). |
| T0.6 Platt–Ramaré transfer | §0.7 | Replaced by the exact transfer identity (provable here) with a decaying error function; Platt–Ramaré's Theorem 1.7 (paywalled, unread) is not restated. |
| H1–H2 | §1.1, §1.2 | `Suggested.lean` forms over Mathlib's `riemannZeta` and `LFunction`; the library forms are gaps on ExplicitZetaBounds target 20. |
| H3 `PrimeCountTable` | not a target | No theorem needs the tables of `π(10^k)`, `ψ(m·10^k)` as a hypothesis; their values appear as Checks (`ψ(10¹⁰)`, `π(10¹⁰)`). The finite computations theorems do need are per-paper propositions (§1.3). |
| H4 | §1.4 | The verified gap table is Oliveira e Silva–Herzog–Pardi's to `4·10¹⁸` (what Carneiro–Milinovich–Soundararajan use); Nicely's `10¹⁵` table is its initial segment. A new source was fetched (see Sources). |
| H5 | §1.3, §1.5 | One proposition per paper's computation. |
| H6 | §1.6 | Table propositions assert "the general error function at the row's parameters is at most the row's value". |
| T1.1–T1.4 | §2.2–§2.5 | Büthe 2016's `π` bound for `x > 2657` is in the paper (line 703–705) and is stated. The Carneiro–Milinovich–Soundararajan `22/25` is their Theorem 5 (lines 261–262); their Theorem 3 and Corollary 4 are asymptotic and rest on Iwaniec's `36/11`, which no roadmap plans; they are excluded (Scope). The Fourier-optimization input of Theorem 5 is the explicit function `H(x) = cos 2πx/(1 − 16x²)`, not the extremal problem; the explicit Brun–Titchmarsh is a gap. |
| T2.0–T2.6 | §3.1–§3.6 | Fiori–Kadiri–Swidinsky's headline is Corollary 22, `|π(x) − Li x| ≤ 9.2211 x √log x exp(−0.84768363 √log x)` for `x ≥ 2` (lines 712–721); the `9.22022 … (log x)^{1.5}` statement of the target is not in the paper's text and is not stated. Panaitopol 2000 contains no explicit inequality (its Theorems 1, 3, 4 are asymptotic); the explicit Panaitopol-shape bounds are Axler's Theorems 1.3–1.4 and Dusart's Théorème 1.10. Dusart 2018's `20.83` is not quoted by any readable text and is omitted; the rows `η = 1` at `89 967 803` and `η = 0.5` at `767 135 587` are quoted by Deléglise–Nicolas (lines 387–388) and stated. |
| T3.1–T3.6 | §4.1–§4.6 | Vanlalngaia's text has its digits transposed; the constants were decoded (`]a…i` ↦ `0 1…9`) and agree with the target's reading. The corrected thresholds of Ramaré 2013 could not be read; §4.2 derives `0.0067/log x` for `x > e²²` and the `1.833/log² x` route from inputs of this roadmap, and keeps the printed `1.31/√x` as a finite-range proposition. The second instance of Ramaré's Lemma 3.2 (`ε = 1/36 260`) rests on Dusart 2018's Proposition 5.1, unread, and is not stated. Deléglise–Nicolas's `π_r` material is in the Landau-function paper (HAL text, Proposition 2.5, Corollaries 2.6–2.8), with the `α`-dependence of the fourth-order coefficient recovered from the printed corollaries (see the pass table). |
| T4.1–T4.4 | §5.1–§5.5 | Axler 2019's Theorems 1.6–1.7 concern `B_n = n p_n/2 − ∑ p_k`; the sums `∑_{k≤n} p_k` are Theorems 1.8–1.9 (thresholds `1 897 700` and `2`). Both are stated. |
| T5.1–T5.5 | §6.1–§6.6 | Bach–Sorenson's Theorem 5.3 is derived from their Theorem 5.1 at the cyclotomic field, planned here in that case (§6.5b) since the Galois–Frobenius data is the class of `p` modulo `q`; the rational explicit-formula argument is the roadmap's own. The least-prime constant `2` uses the paper's Table 3 constants, recorded as a table proposition. |
| T6.1–T6.5 | §7.1–§7.5 | Dusart 2018's two intervals are instances of the lemma of §7.4 under the `θ`-bounds the lemma needs; the `θ`-bounds behind them are unread (Risks). |
| `Suggested.lean` | not a design deliverable | The README names no Lean declaration of its own in backticks; `plan.json` carries the proposed names. The hypotheses the headline statements will carry (`RiemannHypothesisUpTo`, `DirichletGRHUpTo`, the finite-range and table propositions, the zero-free region and zero-count propositions over `riemannZeta` with multiplicity through `analyticOrderNatAt`) all have real bodies. |

## Notions moved down from later roadmaps

- The decimal enclosures `EulerGammaEnclosure` and `MeisselMertensEnclosure` (§1.7): the target
  assigned them to ExplicitMultiplicativeFunctions, which is later in the order of supply and a
  consumer; they are stated here once.
- The explicit conditional Chebotarev bound for cyclotomic fields (§6.5b): the target cited
  Bach–Sorenson's Theorem 5.3 only; its proof is Theorem 5.1 at `ℚ(ζ_q)`, which for cyclotomic
  fields is a statement about Dirichlet `L`-functions and is owned here rather than by the later
  ExplicitNumberFields.
- The Weil explicit formula for `C^m` kernels (§2.1): ZerosOfLFunctions §8.4 proves it for smooth
  compactly supported test functions; the smoothing kernels of Rosser–Schoenfeld, Kadiri–Lumley
  and Carneiro–Milinovich–Soundararajan are only finitely differentiable, so the extension is a
  target here.

## Proposed Part IIs

None. The two theorems that need the Vinogradov–Korobov region with constants (§3.6, §7.5) are
stated with that region as a hypothesis; the region itself is ExplicitZetaBounds target 17, which
that roadmap already declares as a gap for want of an explicit Vinogradov mean value theorem.

## Gaps

| slug | supplier | section | needed by |
| --- | --- | --- | --- |
| rh-up-to-height | ExplicitZetaBounds | target 20 (Layer 8) | 1.1 and every instance in Layers 3, 4, 7 |
| grh-up-to-height | ExplicitZetaBounds | target 20 (Layer 8) | 1.2, 6.1, 6.3, 6.4 |
| classical-zero-free-constants | ExplicitZetaBounds | target 16 (Layer 6) | Layers 3, 4.2, 6, 7 |
| vinogradov-korobov-constants | ExplicitZetaBounds | target 17 (Layer 6) | 3.6, 7.5 |
| explicit-zero-count-error | ExplicitZetaBounds | targets 8–9 (Layer 2) | 2.1 and the instances |
| explicit-zero-density | ExplicitZetaBounds | target 19 (Layer 7) | 3.1c and its instances, 7.3, 7.5 |
| lehman-weighted-zero-sum | ExplicitZetaBounds | target 10 (Layer 2) | 2.1, 3.1, 4.2, 6.1, 7.3a |
| explicit-brun-titchmarsh | ExplicitCharacterSumsAndSieves | target 21 | 2.5 |

Both suppliers are targets on the board (`packages/ExplicitZetaBounds/target.md`,
`packages/ExplicitCharacterSumsAndSieves/target.md`) without a design; the gaps name the targets
of their triage. The general theorems (§2.1, §3.1, §6.1, §7.3a, §7.4a) take the corresponding
objects as parameters, so only the instances wait for them.

## Ownership against open work

- `roadmaps grep` over main and the 461 open roadmap pull requests at their heads: no roadmap
  mentions Cipolla, Panaitopol, Dusart, Büthe or the Meissel–Mertens constant by name; "Rosser"
  occurs in ClassicalArithmeticCompletion §6.34 (`dyadicPrimeCount`, recorded as an agreement),
  SieveMethodsAndPrimePatterns (Rosser's sieve weights, unrelated), ProbabilisticAndMetricNumberTheory
  (a citation of Rosser–Schoenfeld Theorem 5 by locator), AnalyticNumberTheoryPartI and
  ErdosProgressionPowers (the four imported finite-range theorems); "principal value" occurs only in
  unrelated contexts (polylogarithms, Cauchy principal values in spectral theory).
- The board packages ExplicitZetaBounds, ExplicitCharacterSumsAndSieves,
  ExplicitMultiplicativeFunctions and ExplicitNumberFields hold targets only (no design); their
  scopes were read and respected: nothing about zeros, sieves, products over primes or number
  fields is planned here.
- AnalyticNumberTheoryPartI's `psiAP`, `primeCountAP` signatures were read in its `Suggested.lean`
  (`psiAP (q : ℕ) (a : ZMod q) (x : ℝ)`), and the roadmap's conventions follow them.

## Sources

- Read in the service's cache: all certified entries of the manifest. Locators were checked
  against the texts; the manifest's locators of `deleglise-nicolas-2019-landau`,
  `deleglise-nicolas-2019-rh`, `fiori-kadiri-swidinsky-2023`,
  `carneiro-milinovich-soundararajan-2019`, `axler-2019`, `panaitopol-2000`, `ramare-2002`,
  `vanlalngaia-2017`, `buthe-2016` were corrected to the statements the design cites.
- Added: `oliveira-e-silva-herzog-pardi-2014` (Math. Comp. 83, AMS open archive, certified), for
  the maximal prime-gap table that Carneiro–Milinovich–Soundararajan rely on.
- Corrected metadata: the entry `ramare-2002` carried the authors, title and DOI of another article
  of the same volume (the DOI had resolved wrongly); the cached text is Ramaré's "Sur un théorème
  de Mertens" (pages 495–513), and the entry now says so with a `version_note`; the wrong DOI was
  removed.
- Texts with defective extractions: `vanlalngaia-2017` (digits mapped to letters by the font;
  decoded, map recorded in the README's References); `massias-robin-1996` (OCR of a scan; the
  statement of Théorème A is cited by its theorem, not by lines); `robin-1983` (OCR; lines 81–84
  legible); `young-potler-1989` (the cached text is empty; not cited for any statement, Nicely 1999
  and Oliveira e Silva–Herzog–Pardi cover the gaps); `faber-kadiri-2018-corrigendum` (OCR; the
  theorem statement and Table 1 legible).
- Uncertified (cited by locator): `rosser-1938`, `rosser-1941`, `dusart-1999-cr` (not cited),
  `dusart-2018`, `ramare-saouter-2003`, `platt-ramare-2017` (not used), `cully-hugill-lee-2024`.
  Waived: `cipolla-1902`.
- No `needs-references.toml` request is open: the one failed fetch (the AMS landing page of
  Oliveira e Silva–Herzog–Pardi) was resolved by fetching the open-archive PDF, and the request
  file was removed.

## Adversarial pass

| Statement | Instances tried | Values | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 `liTwo` | series with the pin's `1/2 < γ < 2/3`; `x = 1.4, 2, e` | `0.96 < liTwo < 1.14`; lower Riemann sum `1.054 > 1.0452` so `li 1.4 < 0`; `li e ∈ (1.76, 2.08)` | holds | the first draft's check `li 1.45 < 0` was not proved by the crude bound (`−0.79 + 1.045 > 0`); replaced by `x = 1.4` with a three-piece Riemann sum |
| §0.2 `C(q, a)` | `q = 1`; `q = 2, a = 1`; `q = 4`; `q = 2, a = 0` | `−γ`; `−γ − log 2` (the subtracted sum `→ log 2`); `C(4,3) − C(4,1) = (L'/L)(1, χ₄)`, `C(4,1) + C(4,3) = C(2,1)`; non-unit class bounded, no limit | holds with the unit hypothesis | unit hypothesis made explicit in the existence theorem; closed form checked against Ramaré's display |
| §0.3 `ψ − θ` | `x = 3, 8, 121, 120.9` | `0`; `2 log 2` both sides; `12.715 ≤ 48.98`; `10.317 < 10.98` | the lower bound with `ε = 0.001303` fails at `120.9` | transfer stated for `x ≥ max(4, y₀²)`; Schoenfeld's `x > 121` left to the finite check |
| §0.4 identity | `x = 2, 3`; dropped constant; `li` | `1 = 1`; `1.994 ≈ 2`; fails at `2` without `2/log 2`; constant `1.840` with `li` | holds | — |
| §0.5 `ε₀` | `x = e¹⁰⁰`, `x = 17` | `0.02777`; `0.166`, bound `2.82`, actual `0.68` | holds | — |
| §0.6 `PrimeProductFiniteInput` | `x = 10⁸` | `0.2615 + 0.0015 = 0.2630 < 0.27` | holds, needs `B < 0.2615` | enclosure of `B` added as §1.7 (moved down) |
| §0.7 transfer | constant `ε`; `η/log² t`; `x = 1` | tail diverges; `η/log x`; both sides `−∫₁^∞ E/t²` | holds | instances restricted to decaying `ε` |
| §1.1 `RH(H)` | `H = 0, 14, 15`; trivial zeros | `RH(0)` = no real zero in `(0,1)`; first ordinate `14.1347`; `riemannZeta(−2) = 0` | holds | strip condition kept |
| §1.2 `GRH(q, H)` | `χ₀ mod 2`; `q = 8` | zero at `2πi/log 2`, `Re = 0`; conductors `1, 4, 8` | holds | `0 < Re s` kept |
| §1.3 `ButheVerified` | `x = 10⁴, 10⁹, 121⁺` | `17.1 ≤ 28.2`; `1701 ≤ 3341`; `x − θ ≥ 0.0587√x` | consistent | — |
| §1.4 gap table | `p = 7, 11, 113, 1327`, last row, tightest row | `4 ≥ 3.79` (fails), `2 < 5.75`, `14 < 22.4`, `34 < 51.7`, `1476 < 1747`, `1132 < 1230` | holds from `11` | threshold `11` in the statement |
| §1.5 tabulations | `k = 1`; `q = 6, a = 1, L = 1`; `q = 1` | `1.745√x` vs `0.94√x`; `|C(6,1)| = 0.978 ≤ 1`; `q = 1` absent | consistent | — |
| §1.6 rows | Platt–Trudgian `X = 1000`; Dusart `b = 22`; Faber–Kadiri `b₀ = 20` | `1.27·10⁻⁵` vs `1.20·10⁻⁵`; `6.409·10⁻³`; `e²⁰ = 485 165 195.4` | consistent | — |
| §1.7 enclosures | pin; `B` vs `γ`; `γ − 1/2` | `1/2 < 0.5772 < 2/3`; `0.2615 < 0.5772`; `0.0772 ≠ 0.2615` | consistent | — |
| §2.1 zero sums | seven ordinates; `φ = 0`; kernel regularity | `0.01217 + tail 0.011 ≈ 0.02310`; `0.04619 = 2 + γ − log 4π` | holds | the first draft doubled the paired sum (`0.0243 > 0.0231`, impossible); corrected |
| §2.2 Schoenfeld RH | `x = 100, 1000, 10⁴` | `5.96 < 8.44` (`ψ`), `16.27 > 8.44` (`θ`, below threshold `599`); `43.75, 3.33 < 60.05`; `17.1 < 36.65` | holds | — |
| §2.3 Büthe | `T = 3·10¹²`, `T = 545 439 823`; `x = 60` | `x ≤ 2.16·10²⁵`; `x ≤ 5·10¹⁷`; `θ(60) = 49.008`, `ψ(60) = 57.53`, `2.47 ≤ 5.17` | holds | the first draft used a wrong `θ(60) = 57.90` and concluded a false failure; recomputed |
| §2.4 | `x = 586, 587`; `θ(10⁶)` | `0.038831 > 0.03883`, `0.0388 ≤`; `998 484.2 < 10⁶` | holds | threshold `587` |
| §2.5 intervals under RH | `x = 600`; `x = 2, 100`; `x = 4, 4·10¹⁸` | `(520.25, 600] ∋ 521`; `(0.752, 2] ∋ 2`; `[4, 6.44] ∋ 5`; `1476 ≪ 7.5·10¹⁰` | holds | Theorem 3/Corollary 4 of CMS excluded (Iwaniec's `36/11`) |
| §3.1a | `R = 5.69693`, `log x = 10⁴` | `X = 41.90 < 8R = 45.6` | outside range | Dusart's Corollary 1.2 stated separately for `x ≥ 3` |
| §3.1b | Dusart's row `b = 50`; `b → 1/2` | `ε = 0.905·10⁻⁷`, `mδ/2 = 8.5·10⁻⁸`; `e^{−b} log 2π = 1.1` | holds | — |
| §3.1c | Platt–Trudgian row | `1.27·10⁻⁵` | consistent | — |
| §3.2 | `x = 113`; Theorem 4 at `100, 1000`; `ε₀(17)` | `1.03882 < 1.03883`; `89.14 > 83.73` fails, `927.6 < 956.25 < 1072.4`; `0.68 < 2.82` | holds with thresholds | — |
| §3.3 | rows `22, 30`; `x = 10¹⁰`; `η₂` at `59`; Dusart 2016 at `3` | `6.409·10⁻³`, `5.87·10⁻³`; `42 120 < 94 000 < 2.78·10⁶`; `3.9648`; `1.21 ≤ 2.04` | holds | — |
| §3.4b Trudgian | `x = 23, 149, 126.99` | `0.60 ≤ 3.70`; `17.35 ≤ 22.4`; `19.92 > 19.24` fails | holds; threshold `149` explained | — |
| §3.4c Platt–Trudgian Cor. 2 | `log x = 2000` | `3.5·10⁻¹²` vs row `8.35·10⁻¹⁰/2000` | consistent | — |
| §3.4d Johnston–Yang | `x = 2`; `log x = 150, 400`; exponent `1.51` | `5.41 ≥ 1.31`; `> x`, `0.0053x`; factor `1.03` | holds; trivial for small `x` | paper's exponent `1.515` kept |
| §3.4e FKS | `x = 2`; `log x = 300` | `7.58 ≥ 1`; `0.02 < 1` | holds | headline corrected to Corollary 22 |
| §3.5a | `x = 58, 59`; `x = 113`; `x = 10`; `x = 20.4, 20.5` | `16.04 > 16` fails, `16.24 < 17 < 19.79`; `1.2550594 < 1.25506`; `4.34 > 4` fails; `4 < 4.06` fails, `5 > 4.07` | holds with the stated thresholds | — |
| §3.5b | `x = 10⁴, 100` | `1218 < 1229`; `27.7 > 25` fails | holds | — |
| §3.5c Axler | `x = 10⁴`; `x = 10¹⁰` | `1246.3 > 1229`; `455 042 009 < 455 052 511` | holds | — |
| §3.5d Panaitopol | `k₂, k₃` | `3`, `13` | holds | explicit bounds reattributed |
| §3.6 | `x = 23`; `log x = 10⁵` | `3.27 ≥ 0.60`; exponents `−113.7` vs `−261.6` | holds; `π(x) − x` misprint noted | `li` in the statement |
| §4.1 | `x = 2, 10, 1.5` | `−0.3665 < 0.5`; `1.1762 < 1.5298`; `1.3127 < 2.3026`; empty sums | holds | — |
| §4.2 | `x = 10, 1`; `x = e²²` | `0.0307 < 0.346, 0.414`; `1.31 > 0.5772`; `8.35·10⁻⁶ < 1.32·10⁻⁵` | holds | printed threshold `23` not stated; `0.0067/log x` from `e²²` |
| §4.3 | `x = 3`; `B` integral; `x = 10, 1000`; `k = 1` | `0.8333 = 0.8333` (wrong weight gives `0.61`); `−1.5477`; `0.0807 < 0.3276`, `0.0039 < 0.0070`; divergent | holds | instances need `k ≥ 2` |
| §4.4 | `f = t⁻², P = 2`; `f = 1/t` | `0.4931 ≤ 4.66`; excluded | holds | general form with `θ(P⁻)` stated |
| §4.5 | row at `x = 10⁴` | `5 736 396 ∈ [5 670 860, 5 818 254]` | consistent | — |
| §4.6 | `r = 1, α = 0.15`; `r = 2, α = 1`; `π₅(3)`; `π₃` at `663.35` | `107/160`, `3/20`; `1069/648`, `1181/648`; `275 = 275`; root `663.35` | holds; the `α`-dependence of the fourth coefficient recovered (`α·poly + 168`, `α·poly − 168`, `α(2r⁴+…+1) − 6`) | the extraction drops `α`; the reading is pinned by the two corollaries |
| §5.1 | `n = 10⁴` with `c = 1, c' = 1.1`; `n = 1` | `104 590 ≤ 104 729 < 105 590`; `p_1 = 2` | holds | index shift recorded |
| §5.2 | `n = 5, 6, 19, 20, 2, 1, 55` | `11 > 10.43` fails, `13 < 14.25`; `67 > 66.96` fails, `71 < 71.86`; `−2.35 < 3`; `0 < 2`; `257 ∈ (76.7, 406.7)` | holds, thresholds sharp | — |
| §5.3 | `k = 2, 10⁴, 10` | `−1.35 ≤ 3`; `104 306 ≤ 104 729 ≤ 104 822`; `21.9 < 29` fails | holds | — |
| §5.4 Cipolla | `n = 10⁶, 10` | `15 481 000` vs `15 485 863` (rel. `3·10⁻⁴ < 5.2·10⁻³`); `14.8` vs `29` | asymptotic only | — |
| §5.5 | `B_8, B_9`; `n = 10`; `k = 4, 5` | `−1`, `3.5`; `−4.3 < 129`; `5.347 > 4.85` fails, `7.745 ≤ 7.93` | holds | `B_n` definition taken from line 337 |
| §6.1 | row `k = 1`; `q = 1`; non-unit | `2.13·10⁶ ≥ 42 120`; Layer 3; `ψ(x;2,0) ≈ log x` | holds | unit hypothesis everywhere |
| §6.2 | `k = 1, x₀ = 10⁶`; `k = 8`; `x = 1` | `1516 ≤ 2072`; `8.3·10⁻⁵`; `1 ≤ 2.072` | holds | — |
| §6.3 | `q = 3`; `q = 10⁴ + 1`, `10⁵ + 1`; `q = 2`; `Li` vs `li` | `4.2·10⁵`; regime jumps; excluded; `liTwo/φ(q)` negligible | holds | — |
| §6.4 | `q = 6, x = 1`; `x = 10⁵` | `0.978 ≤ 1`; `0.0032`, tail `0.011` | holds | route through §0.7 and the tabulations, not through the unread Platt–Ramaré |
| §6.5 | `q = 3, 4, 5, 12` discriminants; `q = 1, 2, 3, 10⁴` | `3, 4, 125, 144`; bound `0` (excluded), `3 < 3.84`, `2, 7 < 21.7`, `1.7·10¹⁰` | holds with `q ≥ 2` | `q ≥ 2` in the statement |
| §6.6 | row `(5·10⁴, 1)`; `ε = 0` | `α = 6.9684`, `x ≥ 923`; excluded | holds | — |
| §7.1 | `x = 2 010 750, 2 010 760`; crossover `1.1·10⁹`; row `e³⁰` | no prime in `(2 010 750, 2 010 871.1)`; `3.01·10⁻⁵ > 0.978·10⁻⁵` | threshold explained by the gap `148` | — |
| §7.2 | `x = e⁶⁰`; first row | `7.9·10¹⁵ ≫ 3600`; `379 > 354` | consistent | — |
| §7.3 | `‖f_m‖₁`; `Δ ≤ 1`; `e⁶⁰` comparison | `2/3, 8/15`; trivial; `2.09·10⁸ < 1.96·10⁹ < 7.69·10¹⁰` | consistent | — |
| §7.4 | Trudgian at `2 010 733`, `4 652 353`, margin; Axler at `31 397`, `155 921`; Dusart's `c = 1`, `η = 1/2` | `86 < 148` fails, `178 > 154`; `0.0090089 > 0.009`; `33.4 < 72` fails, `107.8 > 86`; condition fails | lemma stated with the strict condition `c(1 − η/log^k x₀) > 2η` | Dusart's intervals stated as lemma instances under the `θ`-bounds they need |
| §7.5 | `n = 1` (155-th powers); `n = 2` (cubes); `x`-form | `(1, 2¹⁵⁵) ∋ 2`; `(8, 27) ∋ 11`; `3(x+1)^{2/3} + 1` | holds | the wiki's `3x^{2/3}` replaced |

Conventions pinned with a witness: the index shift (`Nat.nth Nat.Prime 0 = 2`, `π(p_k) = k + 1`);
`Li 2 = 0` versus `li 2 = 1.0452`; the classical versus Rosser–Schoenfeld region shapes (Trudgian's
`6.455` derived from Kadiri's `5.69693` at `|t| ≥ 3·10¹⁰`); `(x; q, a)` argument order (`psiAP q a x`).

## Risks and open points

- Ramaré 2013: the HAL text predates the author's 2023 corrigendum (sign errors in Lemmas
  2.1–2.2). Theorem 1.1 is stated as printed; if the corrigendum changes its constants, §4.2's
  instances inherit the change. The derived `0.0067/log x` for `x > e²²` depends only on the
  `x ≥ 8950` form's error terms.
- Dusart 2018 (unread): the `θ`-rows `(1, 89 967 803)`, `(0.5, 767 135 587)` are quoted through
  Deléglise–Nicolas (Theorem 4.2); the two short-interval results are cited by the target's
  locators (Proposition 5.4, Corollary 5.5) and stated as instances of §7.4a under explicit
  `θ`-hypotheses; the locators could not be checked.
- Bach–Sorenson's constant `2`: §6.5c follows the paper's route (Table 3 constants as a table
  proposition); a direct Dirichlet-character argument may give a worse constant.
- Massias–Robin's Théorème A: the scan's statement is illegible; stated as the target reads it
  (`1` admissible for `p_k ≤ e⁵⁹⁸` and `p_k ≥ e¹⁸⁰⁰`), consistent with the paper's iteration over
  `[600, 1800]` (lines 163–166).
- `young-potler-1989`: empty cached text; not cited for any statement.
- The design depends on eight gaps to two undesigned siblings; the general theorems isolate them.

## Dependency check

```text
candidate: ExplicitPrimeCounting is not in the merge order yet; checked as if placed after SieveMethodsAndPrimePatterns (the intake inserts it when its design is accepted)
depcheck: 241 roadmaps, 2366 edges, 0 problem(s)
```

Citation resolver (`roadmaps resolve` on the design README): one cross-roadmap citation found
nowhere, "ExplicitZetaBounds Layer 8", which is the gap supplier (a board target without a design);
no Lean name of the README was found nowhere among the roadmaps (library names were checked by
hand at the pins: Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`).
