# DESIGN-ExplicitMultiplicativeFunctions: design report

Deliverables: `packages/ExplicitMultiplicativeFunctions/design/README.md` (2226 lines, ten layers,
45 targets, 45 Checks blocks), `packages/ExplicitMultiplicativeFunctions/design/plan.json`
(45 targets, 9 gaps, 5 suppliers, 9 consumers), `packages/ExplicitMultiplicativeFunctions/sources.toml`
(55 entries, `sources check` clean; locators and notes updated for 12 entries, no new key).

## What the design covers

Every final target of `target.md` is planned, with these changes of statement, each justified in
the adversarial table below:

- T0.1–T0.3: Layer 0.3, 0.4, 0.6 as filed; the harmonic remainder keeps both constants
  (`γ/X` for `X > 0`, `6/(11X)` for `X ≥ 1`) and the cube-root form with `0.9105`.
- T1.1: MacLeod's all-`x` form is stated as `|M(x)| ≤ (x + 1)/80 + 11/2` (the errata's form, attained
  with equality below `1119`); the filed `x/80 + 5` is false (computed). Costa Pereira, Dress–El Marraki
  and Cohen–Dress–El Marraki as filed, under the sources' finite-check `Prop`s; the "general theorem
  behind the last two" could not be designed from certified text (both papers are unreadable here),
  so Layer 1.3 states the instances, the restatement of the `1/4345` range in El Marraki 1995
  (Théorème 1), and a tail lemma; this is recorded as a limitation below.
- T1.2: El Marraki's bounds are read from an OCR re-extraction of the Centre Mersenne scan (the
  cached text has no displays): Théorème 2 (`0.10917 x/log x`, `x ≥ 685`), its Corollaire
  (`0.6437752 x/log x`, `x > 1`, new) and Théorème 3 (`362.7 x/log² x`, `x > 1`, new); the filed
  locator "Théorème 4, (5.6)" is wrong (Théorème 4 is the `(log log x)^k` family, left to a Part II).
  Schoenfeld's `2.9` is a corollary.
- T1.3: the transfer is designed as exact identities (Selberg, hyperbola, Chebyshev decomposition of
  `R₂*`, weight passage) plus parametric estimates plus the instance; the instance's hypotheses are
  the five explicit-primes gaps, the Möbius table, the `1/4345` bound, the squarefree remainder and a
  `Prop` `RamareTransferComputations` with eight fields, one per finite computation of Ramaré 2013.
  Field (ii) is new: the printed proof uses the `ψ̃` estimate with range `x ≥ 23`, which Vanlalngaia
  2017 (Theorem 9) rectifies and which is false (computed at `x = 23`), so the analytic bound on
  `R₂*` holds only for `D ≥ 2.31·10^{12}` with the corrected input and the range `[1.8·10^9, 2.31·10^{12}]`
  is a finite verification of the same kind as the source's Lemma 6.3.
- T1.4: as filed, stated for `⟨S⟩` with `excludedWeight`.
- T2.1–T2.6: as filed, plus Bordellès' `0.19/log x` (`x ≥ 33`) and Theorem 2 (`C_m = 1100(1 + 4e^{−1}√ζ(m + ½))²`,
  confirmed against his table), Ramaré 2013's rounded corollaries, and Treviño's tail with the
  finite check it needs below `1119`. Three printed thresholds of Ramaré 2015 are corrected:
  `|m(x)| ≤ 1/100` from `1419` (not `694`), `(log x)|m(x)| ≤ 1/20` from `3355` (not `1426`),
  `≤ 1/65` from `96 018` (not `60 298`).
- T3.1–T3.2: the corrigendum's Theorem 1.5 as filed; Lemma 3.2's identity is restated with the
  middle coefficient `5 − 4γ` (the printed `6 − 4γ` gives `−2` at `x = 1`, where the left side is
  `−1`) and the kernel `h' = (3/2 − γ)ε₁' − g'`; Theorem 1.4 is unaffected.
- T4.1: stated with a Pólya–Vinogradov parameter `P` and the constant `(1 + 2P)/|L(1, χ)|`, which
  the roadmap proves; Bordellès' `2√q log q` is the instance under `P ≤ √q log q − 1/2` (the
  underlying inequality is in the unreadable Bordellès 2005).
- T5.1: the comparison theorem from the OCR'd Ramaré 1995 Lemma 3.2; the weighted variant's leading
  coefficient is `2AH(0)` (the OCR reads `AH(0)`; the model witness `Σ τ(n) ∼ t log t` decides it)
  and its constant term is dropped (below the error). The filed locator "Berment–Ramaré Théorème 5"
  is Hewitt–Williamson's theorem, not the comparison lemma; Berment–Ramaré is kept as the expository
  source of the method.
- T5.2: the constant term is `γ² − 2γ₁` (Laurent expansion and exact sum at `10^6`), the HAL text's
  `γ² − γ₁` being a misprint; Trudgian's Lemma 14 quotes it correctly.
- T5.3–T5.5, T6.1–T6.5, T7.1–T7.7, T8.1–T8.3, T9.1–T9.2: as filed, with corrections noted in the
  table (Daboussi–Rivat's kernel `K(t) = log t − 1 + 1/t`; the Piltz second bound under a finite
  check; Teo's `λ(3)` cited from his Table 13 since he reports it is not in Robin's thesis; the
  exponent for `k = 2` must be `1.538`, since `f₂(6 983 776 800) = 1.53794 > 1.5379`).
- T9.3: Nicolas' Théorème 2 (`n ≥ 2`, constants `2.59791` and `0.9415`, strict since attained) and
  Ivić as filed; Nicolas' Théorème 3 is not planned (its exceptional set of twelve integers is a
  table only partly legible in the certified text; see Scope).

Merged targets: none.

## Notions moved down from later roadmaps

None. The Meissel–Mertens constant is Tau Ceti's `mertensConstant ℚ`; its identification with the
`B` of AnalyticNumberTheoryPartI §0.19 is Layer 8.1.

## Ownership

Checked by object against main and the board's packages: the summatory Möbius carriers, Balazard's
identities, the convolution comparison theorem, the explicit Levin–Fainleib theorem and the explicit
Euler products exist nowhere on main or in the board packages (`roadmaps grep` for `Mertens function`,
`Möbius.*summatory`, `Levin`, `convolution method`, `superior highly composite` finds only the
asymptotic statements of AnalyticNumberTheoryPartI and the sieve roadmaps cited). The sibling
packages on the board (`ExplicitPrimeCounting`, `ExplicitCharacterSumsAndSieves`, `ExplicitZetaBounds`,
`ExplicitNumberFields`) are targets, not roadmaps; their contracts are stated as gaps, and no edge
towards `ExplicitCharacterSumsAndSieves` or `ExplicitZetaBounds` is made (Layer 4 takes
Pólya–Vinogradov as a parameter; verified zeros enter only through the explicit-primes gaps).
Ownership against the open pull requests was checked through `roadmaps resolve` (no citation or
Lean name found nowhere) and `roadmaps grep`; the pull requests named in the brief without files
were not searched by hand.

## Proposed Part IIs

- `ExplicitMultiplicativeFunctions, Part II`: El Marraki's `(log log x)^k/(log x)^k` bounds
  (Théorème 4), Ramaré's double-logarithmic sum `m̌̌` (Theorems 1.7–1.8, 1.16–1.17) with the
  corrigendum, the general "table ⇒ linear bound" theorem of Dress–El Marraki and
  Cohen–Dress–El Marraki once those texts are legally readable, and Nicolas' Théorème 3 once its
  exceptional table is read from the printed paper.
- `ExplicitPrimeCounting, Part II`: the use of this roadmap's coprime Möbius bounds in explicit
  prime estimates in progressions (that roadmap's Layer 5 names them, but it precedes this one).

## Gaps (prerequisites that do not exist yet)

All nine are explicit prime estimates owed by `ExplicitPrimeCounting` (a board target, not yet
designed), stated in the README under "Explicit prime estimates" with the exact shape the proofs use:
`psi-ratio-max`, `psi-initial-range`, `psi-dusart-log`, `psi-relative-large`, `psi-tilde-explicit`,
`mertens-reciprocal-explicit`, `mertens-logp-explicit`, `nth-prime-lower`, `prime-count-lower`.
Each theorem that needs one takes it as a hypothesis of that shape, so no statement of this roadmap
depends on that roadmap's final constants. The merge position is after `ExplicitPrimeCounting`.

## Sources

Read (certified, 34): as recorded in the manifest; three scans were re-extracted with OCR for this
design (`ramare1995`, `elMarraki1995`, `vanlalngaia2017`), the OCR texts kept in the job scratch and
the manifest noting it. Not read (uncertified, 21): the entries the manifest records as settled; each
is cited by its locator only, and no statement is taken from an unreadable text beyond what a
certified text restates (Cohen–Dress–El Marraki's `1/4345` at `elMarraki1995` Théorème 1 and
`ramare2013aa` line 265; El Marraki 1996's `0.2185`, `726` at `bordelles2015` line 69; Cipu's
quotation of Cohen–Dress–El Marraki's `R`-bounds, `cipu2015` lines 622–629). No
`needs-references.toml` was written: every text the design needs is either certified or settled.

Locator corrections to the filed target: El Marraki's `0.10917` is Théorème 2 (4.6), not Théorème 4
(5.6); Berment–Ramaré "Théorème 5" is Hewitt–Williamson; Robin's thesis p. 51 for `λ(3)` is
contradicted by Teo (line 105), so Teo's Table 13 is cited; Cully-Hugill–Trudgian's constants are
its (18)–(19) at lines 230–242.

## Dependency check

    candidate: ExplicitMultiplicativeFunctions is not in the merge order yet; checked as if placed after ProbabilisticAndMetricNumberTheory (the intake inserts it when its design is accepted)
    depcheck: 241 roadmaps, 2365 edges, 0 problem(s)

No UPWARD or CYCLE line. `roadmaps resolve`: no cross-roadmap citation and no Lean name found
nowhere (Lean names outside the roadmap repository were checked by reading the pinned files, since
the resolver reports no pinned Lake packages on this host).

## Suspicious text

None encountered. No fetched text contained instructions.

## Adversarial pass

One row per statement; "values" are computed (exact sums of `μ(n)/n` etc. in rational or double
arithmetic, checked against `M(10^3) = 2`, `M(10^4) = −23`, `M(10^5) = −48`, `M(10^6) = 212`).

| Statement | Instances tried | Values | Result | Change |
|---|---|---|---|---|
| 0.1 carriers | `x = 0.5, 1, 2, 2.9, 7, 30` | `M(0.5)=0, M(1)=1, M(2)=0, M(30)=−3; m(7)=−1/105; m̌(1)=0, m̌(2)=0.6931, m̌(30)=1.00302` | consistent with Ramaré's `m̌(30)` optimum | sums over `Icc 1 ⌊x⌋₊`, not `range` |
| 0.2 coprime decomposition | `q=2, x=10` | `m_2(10)=34/105`; `m(10)+m(5)/2+m(2)/4+m(1)/8 = 19/210−1/60+1/4 = 34/105`; `(1/2)log 5·34/105 = 0.2606` (Ramaré: `≥ 0.260`) | identity verified; the text's `31/105` is a misprint | Check uses `34/105` |
| 0.3 harmonic remainder | `X=1, 1/2, 1/8` | `1−γ=0.4227 ≤ 6/11`; `R₁(1/2)=0.1159 ≤ 1.154`; `log 8−γ=1.502 ≤ 1.821` | holds; `6/11` nearly optimal (`0.5407`) | none |
| 0.4 `Σ q` | `X=1,c=1`; `X=0.5`; `X=2.999` | `1=1/2+1/2`; `0 vs 1/8 ≤ X^c/2` (fails for `c=3`); `3−4.497=−1.497 ≤ 1.4995` | holds | range of `c` recorded |
| 0.5 `R`, `Δ`, `σ*`, `γ₁` | `R(176)`, `Δ(4)`, `σ*(12)`, sum at `10^6` | `Q(176)=106`, `R(176)=−0.995`; `Δ(4)=1.837`; `σ*(12)=20`; `0.47890` vs `γ²−2γ₁=0.47881`, `γ²−γ₁=0.40599` | sign/normalisation of `γ₁` pinned | the filed `R(176)` sign corrected |
| 0.6 Euler derivatives | `h=δ`; `h=μ/n²`; `h=μ/n` | `H≡1`; `H(0)=6/π²`, `H'(0)=(6/π²)·0.56996=0.3465`; `H̄(0)=∞` | formulas consistent | `H'(0)` sign pinned |
| 0.7 `Prop`s | `MoebiusTableVerified 0.5 10^16`; `H<33`; `γ` digits | `|M(7766842813)|/√=0.571 > 0.5`; vacuous; Mathlib gives `±0.09` | sharpness of `0.571`; `EulerGammaEnclosure` not a Mathlib theorem | none |
| 1.1 Meissel/MacLeod/Balazard | `x=1, 2, 2.5, 6`; `k=1,2` | Meissel `1,1,1`; MacLeod `k=2,x=2`: `1=1`; Balazard `x=2`: `1/2 = 5/12 + 1/12` | identities balance | `ε₁` written in the printed form |
| 1.2 MacLeod | `x ∈ [1,1118]` | `max(|M(x)|−x/80) = 5.5125 = 1/80 + 11/2`; `max|M| = 15` | errata form attained with equality | `≤` instead of `<`; filed `x/80+5` deleted as false |
| 1.3 table bounds | `x=6.16·10^6`; `e^{AB}` | `0.571√x ≤ x/4345` iff `x ≥ 6.16·10^6`; `e^{56.5}`, `e^{474}` | table and log-bounds leave `[10^{12}, e^{56.5}]` uncovered | direct-verification `Prop` kept; general theorem left to Part II |
| 1.4 El Marraki | `max_{1<x≤3000} log x|M|/x`; `x=13, 685` | `0.6437751…`; `0.553 < 3`; `11.45 ≥ |M(685)|` | Corollaire's constant is the supremum to 7 digits | locator corrected to Théorème 2 (4.6) |
| 1.5 Selberg identity | `n=1,p,p²,pq` | `0; −log²p; 0; (log p+log q)²` both sides | holds | none |
| 1.5 `ψ̃` input | `x=23`; `x≈3.6·10^4` | `ψ̃(23)−log 23+γ = 2.6113−2.5583 = 0.053` vs `0.0067/log 23=0.0021`; fluctuation `≈10^{−3}` vs `6·10^{−4}` | printed range `x ≥ 23` false; Lemma 6.1's proof fails on `[1.8·10^9, 2.31·10^{12}]` with the corrected input | field (ii) of `RamareTransferComputations` added; gap `psi-tilde-explicit` states the corrected form |
| 1.5 absorption | — | `0.144 − 2·0.0130 = 0.118` | matches Theorem 1.1 | none |
| 1.5 hyperbola identity | split at `D/(K+1)` | boundary term `−R₂*(K) M(D/(K+1))` by Abel summation | source's (7.1)–(7.2) rearranged; exact form stated | own form stated |
| 1.6 coprime `M` | `q=1`; `q=2,x=5`; `q=∏p` | `max log x|M|/x = 0.6438 ≤ 0.997`; `0.092`; `log(x/q)<0` | holds; hypothesis `x>q` needed | stated for `⟨S⟩` |
| 2.1 Tao | `S=∅`; `S={2,3},x=6`; `A={1,6}` | `1`; `1/3`; `7/6 > 1` | semigroup structure needed | none |
| 2.2 Balazard conversion | `x=1,2`; constant `ε≡α` | `1 ≤ 11/3`; `1/2 ≤ 19/12`; `limsup ≤ 3α/2` vs `2α` | holds | none |
| 2.3 thresholds | all `x ≤ 1.2·10^6` | last `|m|>1/100` at `1418` (10 violations, max `0.011657` at `1109`); last `log x|m|>1/20` at `3354` (166 violations, max `0.0648` at `2837`); last `>1/65` at `96017`; rows `1/12,1/25,1/40,1/69` exact (last violations `686, 3461, 24269, 96954`); 2013 Cor 1.2: 0 violations | three printed rows false | thresholds corrected to `1419, 3355, 96018` |
| 2.4 Bordellès `C_m` | `m=1,2,3,10` | `12554.9, 8044.9, 7220.1, 6722.0` vs table `12555, 8045, 7221, 6723` | formula `1100(…)²` confirmed | none |
| 2.5 tail | `D ∈ [1,5000]` at `(N+1)⁻`; `D=1.9` | no violation; trivial bound `0.645 > 0.526` | cancellation needed below `1119` | finite-check `Prop` added |
| 3.1 Lemma 3.2 | `x=1`; `x=2` | printed constants give `−2 ≠ −1`; derived `(6−8γ)/3−(5−4γ)+(6−4γ)/3 = −1`; at `x=2` polynomial `−0.3655`, needs `∫_1^2 h' = 0.117 ∈ [−0.125, 0.586]` | printed middle coefficient wrong | identity restated with `5 − 4γ`, kernel sign per corrigendum |
| 3.2 `m̌` rows | all `x ≤ 10^6`, both endpoints of each `[N,N+1)` | no violation for the nine corrected rows; `x=2`: `0.2127 ≤ 0.213`; `x=6`: `0.0251 > 1/125` | holds, thresholds exact | none |
| 3.3 coprime positivity | `q=1,x=30`; `q=2,x=4` | `1.00302 ≤ 1.00303`; `1.290 ≤ 2.006` | holds | none |
| 4.1 twisted sum | `q=3,4`, `P=1` | bounds `4.96`, `3.82`; partial sums `≤ 1.7`, `≤ 1.33` | holds; own constant `(1+2P)` | `2√q log q` as instance under `P ≤ √q log q − 1/2` |
| 5.1 comparison, weighted | `h=δ, k=τ/n` | `U = 2·(1/2) = 1`, `V = 2γ−1`: `Σ_{n≤10^6}τ(n) = 13 970 034 ≈ 10^6(13.8+0.15)`; OCR's `U=AH(0)=1/2` false | leading coefficient `2AH(0)` | restated; `W` dropped |
| 5.2 divisor model | `t=10^6, 1, 1/2, 2` | constant `γ²−2γ₁`; `0.521 ≤ 1.16`; `0.081 ≤ 1.46`; `0.481 ≤ 0.92` | holds | misprint `γ²−γ₁` corrected |
| 5.3 second model | `h=δ`; `h=μ`; `c=3` | reduces to 0.4; `H̄(1)=∞`; outside range | hypotheses needed | none |
| 5.4 hyperbola refinement | `g=δ`; `g=μ` | `log D+γ+O(6/(11D))`; `1 = 1 + o(1)` | consistent | none |
| 5.5 Levin–Fainleib | `g=μ²/d`; `g=δ`; `g=μ²` | `C=6/π²`; `1=1`; first hypothesis unbounded | shape correct | none |
| 6.1 product bound | `f=1,y=2,3`; `f=τ` | `3/2=3/2`, `11/6 ≤ 2`; loss factor `2e^{2γ}≈6.3` | holds | second inequality needs convergence |
| 6.2 Daboussi–Rivat | `f≡1,z=2,y=2`; kernel sign | `0 ≤ 1.65`, `2 ≥ 0.35`; `K(t)=log t−1−1/t` negative on `[1,3.6]` | holds with `K = log t − 1 + 1/t` | filed kernel corrected |
| 6.3 Hall–Tenenbaum | `f=1`; `x=2` | `A=log 4`, `B ≤ 1.1`; RHS `≥ 1+f(2)` | holds; proof route given | none |
| 6.4 Bordellès 4.28 | `f=1`; `f=τ,x=2`; `f=μ²` | `⌊x⌋ ≤ x`; `3 ≤ 4`; would give `Σμ² ≤ 6x/π²`, false at `x=1,2,3` | monotonicity needed | proof route via `f⋆μ ≥ 0` |
| 6.5 van Lint–Richert | `d=1`; `f=1,d=2,x=4`; `f(4)=5` | equalities; `3 ≤ 4 ≤ 6`; `8 > 4` | squarefreeness needed; `rad(d)` sharper than `d` | stated with `rad(d)` |
| 7.1 `R` bounds | `x=3,7,8,176`; crossover | `R(3)=1.18 > 0.866`; `R(8)=1.14 ≤ 1.41`; `e^{63.2}` | threshold `8` needed | source's `10^{64}` comparison not reproduced; own crossover stated |
| 7.2 `Σμ²/n` | `N=1,2,3`; `H̄(−1/3)` | `1.833 ∈ [1.246,1.834]`; `ζ(4/3)/ζ(8/3)=2.804`, `0.9105·2.804=2.55 ≤ 3` | holds; route fixed | `h(d²)=μ(d)/d²` (not `μ(d)/d`) |
| 7.2 `Σμ²/φ` | `G₁(1), G₁(2)`; `j(2), j(6)` | `|1−1.3326| ≤ 2.44`; `0.84, 1.216` vs `j⋆(6)=5.2 < 7.17` | holds | decomposition `d/φ(d)=Σ_{e∣d}μ²(e)/φ(e)` |
| 7.3 Riesel–Vaughan | `y=1,2,3`; `p=2` | `1, 2, 4`; `H(0)=(1/2)·1.5147`, `u=0.379` | normalisation consistent | local factors stated |
| 7.4 `Δ` | `x=1,2,4`; `1980`, `9994` | `0.8456 ≤ 0.961`, `1.305 ≤ 1.359`, `1.837 ≤ 1.922`; hyperbola `|−0.163| ≤ 1/2` | thresholds exact; `x ≥ 5` false | none |
| 7.5 Piltz | `k ≤ 7, x ≤ 2000`; thresholds | second bound: no violation; `(1+(γ+1/x)/log x)^{k−1}` at `x=6`: `2.003` for `k=3`; `τ₄` last failure `192`, `τ²` `432` and `6` | thresholds `193, 433, 7` exact; first bound provable by induction | second bound under `PiltzRangeVerified` beyond the provable range |
| 7.6 `2^ω` | `x=1,10,10^5` | `1 ∈ (−0.916,3.66)`; `5.3913 ∈ (0.9017,6.7441)`; `56.7584 ≤ 56.8298`; `778581 ∈ (648062,796139)` | holds; coefficient `1.3948` recomputed | none |
| 7.7 totient | `x=1,2,10,41,42,100` | `6.2238 ≤ 9.3819`; `14751 ≤ 18769`; `1 > 0.608` without `+1` | holds | identity written with `Σμ(d)/d²` |
| 8.1 Mertens product | `x=2,3,5,11,283,293`; `x→1⁺`; `B` | `0.617, 0.652, 0.764, 0.887, 0.9833, 0.9860` inside the bounds; empty product; `0.5772−0.3157=0.2615` | holds from `x=2`; `x>1` stated | finite-range `Prop` for `1<x<286` |
| 8.2 tilted products | `ε=0,±1,2` | `γ(−1)=B−γ=−0.3157`; `γ(1)=−0.182`, `e^{γ(1)+B}=1.083=(6/π²)e^γ`; `ε=2` conditionally convergent | signs pinned; `|ε|<2` | hypothesis `|ε|<2` (filed `≤ 2` corrected) |
| 8.3 progressions | `q=1,2,4` | `C(1,·)=e^γ(1+1/log²x)`; `C(2,1) ≥ 0.89`; `C(4,1) ≥ 0.985` | consistent | general transfer stated with the progression estimate as hypothesis |
| 9.1 Robin | primorials `k=1..10`; `n=2`; `1.38` | `9 ≤ 9.0004` at `223092870`; `log log 2<0`; `8.97<9` | holds; sharp at `k=9` | route via lower bound on `θ(p_k)` from `p_k`; Robin's Théorème 8 is the upper bound (OCR direction clarified by `θ(p₁₄)=37.11 ≤ 37.28`) |
| 9.2 divisor | `n=6983776800`; `43243200`; `259459200` | `f₂=1.53794`, `f₃=1.59141`, `f₄=1.63373`, `f₅=1.67144` | `1.5379` would be below the maximum | exponents `1.538, 1.5915, 1.6338, 1.6715` |
| 9.2 `τ_k ≤ n^sζ(s)^{k−1}` | `k=1`; `n=1`; `k=2,s=2,n=6` | `1 ≤ n^s`; `1 ≤ ζ^{k−1}`; `4 ≤ 59` | holds by induction | none |
| 9.3 Ivić, Nicolas, Eum–Koo | `n=6,7,12,30,31,5040`; `n=1,2`; even `n=12` | `12>9.06`, `8<12.07`, `28<28.29`, `72>68.5`, `32<71.4`, `19344<27974`; `1.5 ≤ 1.515`, `n=1` fails; `28 > 14.6` | thresholds needed; oddness needed | Théorème 3 not planned |

## Limitations

- The general "Möbius table ⇒ linear bound" theorem of Dress–El Marraki and Cohen–Dress–El Marraki
  is not designed: both texts are unreadable here and no certified text restates the method; the
  instances are stated under the sources' finite-check `Prop`s (Layer 1.3) and the theorem is
  proposed for a Part II.
- Ramaré 2013's constants `0.0130/0.118/1 078 853` are stated as the instance of the transfer
  under `RamareTransferComputations`, whose field (ii) is a finite verification the source did not
  perform (it is what replaces the uncorrected `ψ̃` input on `[1.8·10^9, 2.31·10^{12}]`); every row of
  Layers 2–3 that rests on Ramaré 2015's Theorem 1.2 inherits this `Prop`.
- Nicolas' Théorème 3 is not planned (illegible exceptional table).
