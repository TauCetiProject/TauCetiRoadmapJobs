# FIX-DESIGN-ExplicitNumberFields~2: repair of the design review REV-DESIGN-ExplicitNumberFields

Files edited: `packages/ExplicitNumberFields/design/README.md`, `packages/ExplicitNumberFields/design/plan.json`,
`packages/ExplicitNumberFields/sources.toml`. Every finding was checked against the cited source lines (cached
texts), the pinned Mathlib and Tau Ceti, and the sibling roadmaps before any edit. 26 findings: 24 applied, 2
applied differently (F09, F21), none disputed, none left as not actionable.

## REV-DESIGN-ExplicitNumberFields/F01 (P1) — applied

Confirmed: `louboutin2003` Theorem 11 (lines 475–479) omits the threshold, but its proof uses Theorem 1(1)–(2)
with `S = ∅` (lines 65–82). At ℚ(√−3), (12) gives `20.785/18.763 = 1.108 > h = 1`.
`relativeClassNumber_ge_cmPositivity` now assumes `ρ_K ≥ max(louboutinRho n, louboutinRhoEmpty n)` (2600, 50, 26, 22, 21, then 2π²). ℚ(√−3) is a negative-control Check. plan.json 5.6 updated.

## REV-DESIGN-ExplicitNumberFields/F02 (P1) — applied

Confirmed: `kerrmcgowntrudgian2020` Lemma 6 (lines 139–185) needs `T ⊆ [1, p)`; brute force gives 111 > 54.77 at
`p = 3`, `X = 1000`. `pPowerResidues_le` now assumes `1 ≤ X < p`, with the reason in the route; the application
uses `X = p^{0.99}`. The witness is a Check; with `X < p` no violations for p < 400.

## REV-DESIGN-ExplicitNumberFields/F03 (P1) — applied

Confirmed: `P(√2) = 2`, `P(1) = −1`, and the roots are 0.454334 and 1.221332. `louboutinS0` is now "the unique root in
`[0, 1]`". The Check is replaced by `P(0) = 2`, `P(1) = −1`, the minimum −1.107 at 0.889, `P(√2) = 2` and the second
root (where `D1 < 0`). The source's `[0, √2]` misprint is noted. plan.json 4.4 updated.

## REV-DESIGN-ExplicitNumberFields/F04 (P2) — applied

Confirmed: the proof (`louboutin2015ijnt` lines 56–59) excludes only zeros of odd multiplicity. The target is now
`dedekindZeta_nonpos_of_odd_galois`: no real zero of odd multiplicity in `[1 − c₂/log d_K, 1)`, so `ζ_K ≤ 0` there,
via §2.31e and Theorem 3 (m = 2). The functional-equation sentence is deleted, and the ℚ(ζ₇)⁺ Check shows the
double zero.

## REV-DESIGN-ExplicitNumberFields/F05 (P2) — applied

Confirmed: `debaene2019` lines 941–943 need `Reg ≥ 1`. At the cubic field of discriminant −23,
`1 + log(Rh) = −0.2687`, and `rpow` gives `−0.087`. Both 2.4 bounds now use `1 + log⁺`, which is defined in the
Conventions. The cubic field is a Check and an Example, and the class count is written as an inequality.

## REV-DESIGN-ExplicitNumberFields/F06 (P2) — applied

Confirmed: `1/(43.2·16) = 0.0014468 < 0.0014480`, and `garcialee2022mertens` line 1254 needs no `c₈`. `c₄` is now
`2 exp(21/8 − ψ(1/2)/(4 log 3)) = 43.162115` in both clauses. The no-quadratic-subfield clause has no gap
hypothesis. `1/(16c₄) = 0.00144803`. Under F22 this text now sits in the new 4.7.

## REV-DESIGN-ExplicitNumberFields/F07 (P2) — applied

Confirmed: the record of `10ζ` gives `14.60 > 11.49`. The contract and `needs` now require `|ε| = 1`, gamma shifts in
`{0,1}`, `|a(k)| ≤ τ_m(k)`, and at most a simple pole at `1`. The pole condition is also needed, since `ζ²` would
need the pole factor squared. 1.1 lists the Dedekind instance's data and has `10ζ` as a negative control.

## REV-DESIGN-ExplicitNumberFields/F08 (P2) — applied

Confirmed: Lemma 3 (`garcialee2022artin` lines 121–131) is under RH; the gap's `1/log² x` is 454.9 at 1.048.
- Gap: Schoenfeld 1976 Corollary 2 for `x ≥ 13.5`, asked of ExplicitPrimeCounting Layer 1.
- Small range: the Prop `GarciaLeeMertensSmallRange`.
- Lemma 3: target `primeReciprocalSum_sub_lt_rh`.
- `dukeShortSum_explicit` gains `RiemannHypothesis`; 3.6 derives it.

## REV-DESIGN-ExplicitNumberFields/F09 (P2) — applied differently

The contract is now precise but different. 2.2–2.3 (`lee2023ideals` lines 205–232) use Landau's absolutely
convergent iterated Perron identity, `(1/2πi)∫F(s)x^{s+j}/(s⋯(s+j)) = (1/j!)Σ a_k(x−k)^j`, not Ramaré's
truncated formula. The slug is renamed to `gap:iterated-perron` (ExplicitZetaBounds Layer 3). Asking for the unused
truncated form would pad the contract.

## REV-DESIGN-ExplicitNumberFields/F10 (P2) — applied

Confirmed from `merge-order/ORDER.txt`: AnalyticNumberTheoryPartI (84), CyclotomicClassGroupsAndStickelberger (30),
ComputationalNumberTheory (185) and ArithmeticStatistics (136) are earlier, and ClassicalArithmeticCompletion is on
main. plan.json `consumers` now has only EffectiveClassNumbers (238). The README's Downstream consumers names only
EffectiveClassNumbers. The other uses are described as later roadmaps, without names.

## REV-DESIGN-ExplicitNumberFields/F11 (P3) — applied

Fixed values: `ĝ(409) = 29` (computed; 21 = 3·7); `Λ_{2} = 8.4926` and `270Λ = 2293`, in 0.2 and 3.4;
the norm-4 ideal of ℤ[i] is `(1+i)² = (2)`; `#idealsLE = 5` in ℚ(√−14) is sharper, with the reason Σ τ_n is kept;
and the 0.1 ratio `(4/π)^{1/2}(n/(n+1))ⁿ ≤ 0.5642`, with base case `a_2`.

## REV-DESIGN-ExplicitNumberFields/F12 (P3) — applied

Recomputed: `#idealsLE ℚ(i) 10 = 9` and error 1.146 (2.2, 2.4, Layer 2 Examples). 2.5 at ℚ has `F = 2` and bound
≈ 3730. The cubic field of discriminant −23 has `κ = 0.3684` (3.2, 3.3, Layer 3 Examples). ℚ(ζ₇)⁺ has `R = 0.525455`
and `κ = 0.3003` (4.7). 5.2 at ℚ(ζ₅) uses `0.3541`, giving 9.81.

## REV-DESIGN-ExplicitNumberFields/F13 (P3) — applied

- 6.1, ℤ/2 × ℤ/2: `(1/2)(1 − 3) = −1` at 0.
- 6.2: the coprime pairs are (0,1), (1,2), giving 8 integers ≤ 15.40; the "overlap" sentence is deleted.
- 6.3: δ needs the primes 3–29 (sum 1.0334); 3–23 give 0.99896.
- 6.4: `10⁹+7` has ω = 2 (bound 9895); `1000000021` (ω = 6) is the large case.

## REV-DESIGN-ExplicitNumberFields/F14 (P3) — applied

`localFactor` is now a `finprod` over the height-one primes containing `p`. The text states its value at 0 (junk 1),
at 1 and at composite `p`. Every bound says "for a prime `p`", and the garbled parenthetical is gone. New Checks:
`localFactor ℚ 6 = 3 > 6/5`, and Lean's `1/0 = 0` at `p = 1`.

## REV-DESIGN-ExplicitNumberFields/F15 (P3) — applied

The 3.6 route now cites `a(p) = a_K(p) − 1 ∈ [−1, n−1]` (`garcialee2022artin` line 886, (29)). It says which bound
uses which side, and that `|a(p)| ≤ n−1` alone would give `(log log d_K)^{−(n−1)}`.

## REV-DESIGN-ExplicitNumberFields/F16 (P3) — applied

Confirmed: HSW Table 1's row (0.296, 3.971, 3.969), line 76, implies Trudgian's bound, since the difference of the
two right sides is positive. 4.1 cites it; the route is HSW's tracking. The ℚ(i), T = 100 Check uses
Trudgian's Theorem 1 for χ₋₄: 150 ≤ N ≤ 166, against 156.64 ± 19.51; T = 15's main term is −0.620.

## REV-DESIGN-ExplicitNumberFields/F17 (P3) — applied

Removed the process phrases at the Summary, 2.3, 3.2, 4.1, 4.6 and 6.5. 2.3 now cites `lee2023ideals` Theorem 1.2,
p. 2. 3.2 cites `louboutin2005` Theorem 10 (13), p. 569, with the identity
`log ρ·e^{log 4/log ρ} = log ρ + (log 4)E(log 4/log ρ)`, checked algebraically. The Part II reason is restated.
plan.json 3.2's locator is updated.

## REV-DESIGN-ExplicitNumberFields/F18 (P3) — applied

Corrected locators:
- 5.1: `louboutin2001` Theorem 1, recalled at `louboutin2005` lines 38–39.
- 5.5: `louboutin2000` Corollary 3 (`louboutin2003` lines 603–605).
- `B_k`: line 310, (9).
- plan.json 0.6: `mcgowntrudgian2020` line 26.
- 3.3/4.7: Stark's route cites Stark Lemmas 2–4, 8 with Garcia–Lee's constants. §2.31e is cited only for the
  quadratic-subfield theorem.

## REV-DESIGN-ExplicitNumberFields/F19 (P3) — applied

Checked at the pins:
- Dirichlet's theorem is `Nat.infinite_setOfPred_prime_and_eq_mod` (`Mathlib/NumberTheory/LSeries/PrimesInAP.lean:431`).
- Successive minima are `ZLattice.successiveMin` (`TauCeti/Algebra/Module/ZLattice/SuccessiveMinima.lean:111`).
- Minkowski's second theorem is `ZLattice.prod_successiveMin_mul_measure_le_two_pow_mul_covolume`
  (`MinkowskiSecond.lean:610`).

These are fixed in Scope, the contracts, 2.1, and plan.json 0.6 and 2.1.

## REV-DESIGN-ExplicitNumberFields/F20 (P3) — applied

Confirmed in `TauCetiRoadmap/ClassFieldTheory/README.md` on main: the global Artin map, tower compatibility and
`globalArtinMap_ideal` are in Layer 11 (lines 1683–1722). `artinMap_groundNorm` is in Layer 4 (line 893). Scope, the
contract and plan.json suppliers now cite Layers 4, 11 and 13. `gap:artin-norm-compatibility` moves to Layer 11, and
its `needs` states the change-of-base functoriality.

## REV-DESIGN-ExplicitNumberFields/F21 (P3) — applied differently

- `gap:bigostar-predicate` and `gap:trevino-burgess-tables` are dropped.
- Bach goes to ExplicitPrimeCounting Layer 5 instead: ExplicitZetaBounds has no Bach and no Chebyshev sums.
- Lapkova: every primitive χ, even or odd, in the contract and `needs` (`kerrmcgowntrudgian2020` lines 117–122).
- Totient bound: cites `rosser-schoenfeld-1962` Theorem 15, fetched and read.

## REV-DESIGN-ExplicitNumberFields/F22 (P3) — applied

- The Stark half of 3.3 (with `starkAlpha`, `starkG` and `dedekindZeta_residue_ge_stark`) moves to a new 4.7, after
  4.3. 3.3 is now Friedman alone.
- `McGownTrudgianFiniteChecks` is split. `McGownTrudgianMoebiusChecks` is declared in 6.2, with S and T defined from
  lines 284–297. `McGownTrudgianOmegaChecks` is declared in 6.3.
- Dependencies, How to read the build, and plan.json (new target 4.7) are updated.

## REV-DESIGN-ExplicitNumberFields/F23 (P3) — applied

In `sources.toml`:
- Added `washington1997` and `lang1994`, uncertified by locator.
- `cohenoliveirasilvatrudgian2016`: `locator_scheme = "theorem"`.
- `louboutin2000`: locator Corollary 3.
- `louboutin2001`: locator now "Theorems 1 and 7".
- Burgess references: `cited_for` set to Scope.
- `garcialee2022mertens` and `hasanalizadeshenwong2022`: `cited_for` gains 4.7 and 4.1.
- `rosser-schoenfeld-1962` and `schoenfeld-1976`: added by the sources service (operator-local, certified), with
  their bibliographic fields completed.

## REV-DESIGN-ExplicitNumberFields/F24 (P3) — applied

- `HasNormalTower`: a third Check, the S₄ quartic `α⁴ − α − 1`; ℚ(2^{1/4}) already covers the suggested quartic.
- `starkAlpha`/`starkG` (4.7): API, plus Checks at ℚ(ζ₅), ℚ(2^{1/4}), a cubic field and a two-case model.
- `louboutinB`: API (9)–(11), Checks at ℚ, ℚ(√5), ℚ(ζ₇)⁺.
- `NoImaginaryQuadraticRealZero`: API and three Checks.

## REV-DESIGN-ExplicitNumberFields/F25 (P3) — applied

Scope gains "Already in the library, and how the targets here differ":
- Tau Ceti's `NumberField.classNumber_le_bound` (`h ≤ d_K 4ⁿ`) and `NumberField.card_ideal_absNorm_le`
  (`≤ X² 2ⁿ`), both checked at the pin (`EffectiveBounds/ClassNumber/Basic.lean:81`, `IdealCount/Basic.lean:399`),
  realizing Completed/EffectiveBounds. These are set against 5.3 and 2.2–2.5.
- AnalyticNumberTheoryPartI §2.43(ii), Zaman's 0.0875 region, set against 4.5–4.6.

## REV-DESIGN-ExplicitNumberFields/F26 (P3) — applied

- Theorem 13 uses only the imaginary case (`louboutin2003` lines 359–360). A new `ImaginaryQuadraticRealZeroGap c`
  (0.5) carries monotonicity, implication from the all-quadratic predicate, and Checks at ℚ(i), ℚ(√−3) and ℚ(√5).
  Theorem 13 now assumes it.
- 3.5 defines `log L(1)` as the continuous logarithm on `[1, ∞)` fixed by the Euler-product series. A Check covers
  the real case.

## Check outcomes

Dependency check (the exact command of the brief):

    candidate: ExplicitNumberFields is not in the merge order yet; checked as if placed after ComputationalNumberTheory (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2357 edges, 0 problem(s)

There is no UPWARD and no CYCLE line. Edges went from 2351 to 2357 because of the new citations
(Completed/EffectiveBounds, ExplicitPrimeCounting Layers 1 and 5, ClassFieldTheory Layers 4 and 11).

`roadmaps resolve` on the README finds no unresolved Lean name. It lists `ExplicitMultiplicativeFunctions T7.5`,
`ExplicitCharacterSumsAndSieves Layers 3` and `ExplicitPrimeCounting Layers 1` as found nowhere. Those three are the
sibling explicit packages at target stage on the board, cited only through supplier gaps, as in the previous round.
The earlier lead `Nat.setOf_prime_and_eq_mod_infinite` is fixed (F19). `DedekindERH.of_abelian` resolves
(AnalyticNumberTheoryPartI §2.42).

Other checks:
- plan.json parses: 36 targets, 14 gaps.
- Every `gap:` slug in the README is in plan.json, and every plan.json gap is in the README.
- Every source key in the README is in `sources.toml`, and every manifest key is cited in the README. The manifest
  has 36 unique keys, all with the required fields.
- The README has no LaTeX delimiters, no unbalanced backticks and no machine paths.

**Suggested.lean and the `#check @name` pass.** This is a design package, with no `Suggested.lean`, so there was
nothing to elaborate and no `#check` pass could run. No Lean command was run.

**Sources.** `rosser-schoenfeld-1962` and `schoenfeld-1976` were fetched through the sources service (operator-local
copies) and read at Theorem 15 and Corollary 2. No `needs-references.toml` was written, and no text is missing.
Washington and Lang are paywalled textbooks, recorded as uncertified by locator, as the finding asked.

**Gate failures.** None were listed for this round.

## Adversarial pass (new and changed statements)

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| 5.6 Thm 11 (12)/(13), c = 2 | ℚ(√−3); ℚ(√−3) with threshold | `12√3/(2πe log 3) = 1.1077 > 1`; `ρ = 1.732 < 2600` | false without, excluded with | threshold added |
| Thm 11 thresholds, m = n | n = 1…6 | `max(270,2600)=2600, max(41,50)=50, 26, 22, 21, 2π²` | matches the Thm 9 value 50 at n = 2 | — |
| `pPowerResidues_le` | p = 3, X = 1000; p < 400, X < p, (ε,z) ∈ {(1/2,4),(1/3,8),(1/4,16),(1/5,32)} | `111 > 54.77`; 0 violations | false without `X < p`, holds with it | `X < p` |
| `louboutinS0` | P on [0,1] and [0,√2] | `P(0)=2, P(1)=−1, P(√2)=2`; roots 0.454334, 1.221332; min −1.107 at 0.889 | unique in [0,1] only | interval [0,1] |
| `louboutinD1` at either root | S₀ = 0.45433; 1.22133 | `0.27645`; `1−S−S² = −1.713` | wrong root gives D1 < 0 | Check |
| Cor 4 (odd Galois) | ℚ(ζ₇)⁺, L(χ)L(χ̄) | a real zero of L(χ) is double; Thm 3 at m = 2 allows 2 | "no real zero" not proved | odd multiplicity, ζ_K ≤ 0 |
| Cor 4 hypothesis | n = 3 | `log 21 = 3.04 > 1.464` | Thm 3 applies | — |
| Debaene 2.4 | cubic −23; ℚ(i), x = 10 | `1+log 0.2812 = −0.2687`, rpow `−0.0867`; error `|9−7.854| = 1.146 ≤ 2^{40}√10` | false with log, fine with log⁺ | log⁺ |
| `c₄` | — | `ψ(1/2) = −1.963510`, exponent 3.071816, `c₄ = 43.162115`; `1/(16c₄) = 0.00144803`; `1/(43.2·16) = 0.0014468` | 43.2 too weak | c₄ exact |
| `starkAlpha ≤ 16 starkG` | Galois, tower, other | `4 ≤ 16`, `16 ≤ 16`, `4n! ≤ 16n!` | true | API |
| 4.7 first clause | ℚ(ζ₇)⁺ | `1/(43.1621·4·3.8918) = 0.001488 ≤ κ = 8·0.525455/14 = 0.3003` | true | — |
| 4.7 second clause min | n ≥ 3, α ≥ 4, c₈ = π/6 | `e c₈/(nα) ≤ 0.1186 < 1`; `e/c₄ = 0.062978` | true for every K | — |
| Rademacher general | 10ζ, s = 1/2, η = 1/2 | `14.6035 > 9·0.48860·2.61238 = 11.4877` | false without `|a| ≤ τ_m` | hypotheses |
| iterated Perron | ζ, j = 1, x = 2.5 | `(2.5−1)+(2.5−2) = 2 = ∫₀^{2.5} ⌊y⌋ dy` | true | contract |
| Lemma 3 (`primeReciprocalSum_sub_lt_rh`) | x = 1.048, 2⁻, 2, 7, 13.5; grid of 2·10⁵ points | lhs `2.7986, 0.1050, 0.6050, 0.248963, 0.125980` vs m `4.7134, 1.4210, 1.4210, 0.249988, 0.155306`; max ratio 0.99590 at 7 | true (Prop) | new target and Prop |
| Schoenfeld below 13.5 | x = 2 | `0.171044 < 0.605016` | fails, so the Prop is needed | — |
| Duke needs RH | record GRH vs ζ zeros | record GRH does not constrain ζ | RH hypothesis needed | added |
| 3.6 RH from hypotheses | ζ_K = Fζ | ζ's strip zeros are ζ_K's zeros, Re = 1/2 by DedekindERH | true | route |
| 3.6 sides | a(p) ∈ [−1, n−1] | inert −1, split n−1 (line 886) | lower bound needs −1 | route |
| `log L(1)` branch | dedekindQuotientData | `L(1) = κ_K > 0`, L > 0 on [1,∞) | real log | Check |
| HSW row implies Trudgian | all K, T ≥ 1 | `0.021(log d+n log T)+2.362n−0.487 > 0` | true | citation |
| N_{ℚ(i)}(100) | Trudgian Thm 1, χ₋₄, k = 4 | `100.38 ± 8.30`; 58 + that = [150.1, 166.7]; main 156.64, bound 19.51 | consistent | Check |
| N_ℚ(15) main term | — | `(15/π)log(15/(2πe)) = −0.6199` | −0.620, not −0.623 | value |
| `localFactor` | ℚ at 6; p = 1; p = 0 | `2·3/2 = 3 > 1.2`; 1 vs `1/0 = 0`; finprod junk 1 | bound for primes only | prime hypothesis |
| `ImaginaryQuadraticRealZeroGap (π/6)` | ℚ(i); ℚ(√−3) | `[0.045,1)`, L > 0; `[−0.103,1)`, only (0,1) examined | holds | new predicate |
| `NoImaginaryQuadraticRealZero` | ℚ(ζ₅); ℚ(i), c = 2, D = 4 | vacuous; `[−0.443,1)`, `ζ_F(0) = −1/4`, L ≠ 0 by FE | holds | Checks |
| `louboutinB` | ℚ; ℚ(√5); ℚ(ζ₇)⁺; ℚ(√5,√13) | `1 = κ`; `0.8047 ≥ 0.4304`; `0.94664 ≥ 0.3003`, AM–GM equal 0.94664; conductors 5, 13, 65 vs `f_k = 65` | API true; with trivial χ gives 0 | API, Checks |
| `HasNormalTower` | α⁴−α−1 | disc −283, resolvent `x³+4x−1` irreducible, S₄, S₃ maximal | no tower | Check |
| `ĝ(409)` | computed | g = 21 = 3·7, ĝ = 29 | value | fixed |
| 6.1 non-cyclic | ℤ/2×ℤ/2 | `(1/2)(1−3) = −1` at 0; `1` elsewhere | not the indicator | Check |
| 6.2 count | p = 101, H = 4, h = 2 | 8 integers; `B(2) = 3.16671`, bound 15.40; `S(2) = 1`, `T(2) = 2`, `4 ≤ 8 ≤ 8` | true | Check |
| 6.3 δ | primes 3–23; 3–29 | `0.99896`; `1.03344` | witness needs 29 | Check |
| 6.4 Thm 2 | 10⁹+7 (ω = 2); 1000000021 (ω = 6) | `9895 < 31620.8`; `4.364·10⁶ ≫ 31620.8` | Check corrected | Check |
| 2.5 at ℚ | 𝔮 = ℤ | `F = 2`, `1039.72·2·log 6 + 4 = 3729.9` | true | Check |
| 0.1 ratio | n = 1, n → ∞ | `0.56419`, `→ 1.128/e = 0.415`; `a_2 = 0.6366` | ≤ 1 for n ≥ 2 | text |
| 5.2 ℚ(ζ₅) | — | `(5−2 log 6)/4 = 0.35412`; `5·0.40528·0.75648³·11.1803 = 9.808` | true | value |
| 5.2 constant vs source | n ≥ 2 | `n/(4n−4)·(5/2−log 6) ≤ (5−2 log 6)/4` | the README form is valid | — |
| Rosser–Schoenfeld totient | m ≥ 10¹² | `2.51/log log m ≤ 0.8 log log m` iff `log log m ≥ 1.771`; at 10¹², 3.319 | the 1.8 form holds only for large m; e = 6: `1/3 < 0.535` | 6.5 route |

## Notes for the maintainer

**Names changed inside this roadmap.** No roadmap on main or in an open pull request cites any of them
(`roadmaps grep ExplicitNumberFields` finds nothing).
- `dedekindZeta_no_real_zero_of_odd_galois` → `dedekindZeta_nonpos_of_odd_galois`.
- `McGownTrudgianFiniteChecks` → `McGownTrudgianMoebiusChecks` (6.2) plus `McGownTrudgianOmegaChecks` (6.3). The
  plan.json id 6.3 is now named `McGownTrudgianOmegaChecks`.
- `gap:ramare-perron` → `gap:iterated-perron`.
- `gap:bigostar-predicate` and `gap:trevino-burgess-tables` are removed.
- New names: `ImaginaryQuadraticRealZeroGap`, `GarciaLeeMertensSmallRange`, `primeReciprocalSum_sub_lt_rh`.

**Section moves.** `starkAlpha`, `starkG` and `dedekindZeta_residue_ge_stark` move from 3.3 to the new 4.7. 3.3 is
now "Friedman's unconditional lower bound".

**Supplier requests changed.** These are requests to sibling target-stage packages; no supplier target was invented
as existing.
- ExplicitPrimeCounting is now asked for Schoenfeld's RH Mertens bound (its Layer 1, which lists Schoenfeld 1976) and
  for Bach's lemma (its Layer 5). The Bach request previously went to ExplicitZetaBounds, whose catalogue has neither.
- ExplicitZetaBounds is now asked for Landau's iterated Perron identity (Layer 3) in place of a vague "smoothed
  truncated Perron".
- Rademacher's contract adds the hypotheses `|a(k)| ≤ τ_m(k)`, shifts in `{0, 1}` and a simple pole. ExplicitZetaBounds'
  own scope text still says "nonnegative coefficient majorant", so its design should adopt the corrected hypotheses.

**Source errors confirmed and handled in the statements.**
- `louboutin2003` Theorem 11: the threshold is missing.
- `louboutin2017` Theorem 2: the interval should be `[0, 1]`.
- `louboutin2015ijnt` Corollary 4: it holds only for odd multiplicity.
- `kerrmcgowntrudgian2020` Theorem 2: it needs `X < p`. Its proof of Theorem 1 uses the `1.8 e^γ` totient form for
  small `e`; the route now uses the Rosser–Schoenfeld form there.
- `debaene2019` Corollary 2: it needs `log⁺`.

**Ownership.** Checked against the open roadmap pull requests through the tool's index and the sibling checkouts, by
object:
- Riesz-mean or iterated Perron: AnalyticNumberTheoryPartI Layer 6 supplies only the truncated form.
- Imaginary-quadratic zero gaps: no match.
- Bach's lemma: only a prose mention in ClassicalArithmeticCompletion.

No second owner was found. The overlaps file lists no open pull request that changes this roadmap and no dropped id.

**Untrusted text.** Nothing in the review, sources or sibling files asked for actions outside this job.

**One point the text layer cannot settle.** That the display of `louboutin2005` Theorem 10 (13) equals 3.2's form
rests on the reviewer's reading of the page rendering; the cached text lacks the display. The statement is derived in
3.2's route from §2.15a either way, and the algebraic identity linking the two forms was checked.
