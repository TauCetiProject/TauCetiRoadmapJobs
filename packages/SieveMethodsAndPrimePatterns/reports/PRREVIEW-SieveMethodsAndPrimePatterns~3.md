# Review of SieveMethodsAndPrimePatterns (pull request #1495 at 23901d4)

**Verdict:** needs changes

Incremental re-review of the 112 changed lines since 302221d (the effective-constant rewrite of Layer 3 on AnalyticNumberTheoryPartI §0.34, the three P3 repairs of the previous review, and the new `small_conductor_maximal` statement). The three previous findings are repaired. One blocking finding is the worker's gate (its build check fails on lake's module advisory); three P3s concern the two new references, the remaining §1.2a citations and one incomplete sentence. The mathematics of the changed passages checks out: every new supplier citation resolves at the AnalyticNumberTheoryPartI head, the new maximal estimate follows from §0.18 as sketched, and the effectivity claims are consistent with their inputs.

## R01 (P1) — The push gate fails its build check (lake's `module` advisory)

Location: `TauCetiRoadmap/SieveMethodsAndPrimePatterns/Suggested.lean:1`, "import Mathlib".

Claim: the worker's gate at 23901d4 reports `build=2 FAIL`, both lines being lake's advisory that the file imports `Mathlib` from a package designed for the module system and should start with `module`. The brief makes a failing gate build a blocking finding and allows no acceptance while the gate fails. Elaboration itself is clean: the file compiles with `sorry` as the only warning, and a rerun of the full gate on the up-to-date build prints `OK` because the advisory only appears on a fresh compile; the worker's counter is the authoritative one.

Witness: the gate record for this head, "build (2) … imports `Mathlib` from package `mathlib`, which is designed for use with the module system; consider adding `module` to the start of this file" (twice).

Repair, tested: prepend the single line `module` before `import Mathlib` (11 of the 141 `Suggested.lean` files on main already start that way). A scratch copy of this file with that line prepended, elaborated with `lake env lean` from the worktree, gives 35 `declaration uses sorry` warnings and no error or advisory; the `#check` lines appended to it print every elaborated type.

## R02 (P3) — The two new references carry no identifier and are not in the manifest

Location: `README.md:4144` "**LS-EXCLUSION.** OpenAI. *Uniform exclusion of Landau–Siegel zeros*. Preprint, 2026, open repository" and `README.md:4146` "**GREEN-LS.** Ben Green. *On Landau–Siegel zeros*. Hexagon 2610.00311, 2026"; cited at `README.md:2437` for the maximal small-conductor estimate.

Claim: LS-EXCLUSION names no repository, file or version, so "Theorem 1" cannot be located from the README, and the numbering differs between the 1 October 2026 release and the 26 October community revision; GREEN-LS has an identifier but no version. Neither work is recorded in the roadmap's `sources.toml` (31 entries, none for OpenAI, Green, Hexagon or Landau), although every cited work must be.

Witness: AnalyticNumberTheoryPartI's own references [109] and [110] at its head (README lines 3245–3246) give the repository `openai/math`, the file `preprints/Uniform-exclusion-of-Landau-Siegel-zeros-October-1-2026/paper.pdf`, the version note, and `Hexagon 2610.00311` with its theorem and section locators. Both texts are in the sources cache: fab9f6e8 line 2 (the `openai/math` raw file), lines 23–25 Theorem 1 (`(1−β)log q ≥ c` for conductor `q≥3`); 6b948696 line 2 (hexagonmath.org 2610.00311v2), lines 25–34 Theorem 1.1 (sufficiently large conductor, `C` a large even integer, bound `(1/2+O(1/C))log X+O_C(1)`).

Repair: write the two references as AnalyticNumberTheoryPartI does (repository, file path and the 1 October 2026 numbering for LS-EXCLUSION; `2610.00311v2` for GREEN-LS, which assumes a sufficiently large conductor and even `C`, the small conductors being §0.34's own step), and record both in `sources.toml` through the sources service with the cache's status. No statement changes.

## R03 (P3) — §1.2a is still cited for divisor sums it does not state

Location: `README.md:13` "AnalyticNumberTheoryPartI §§0.10–0.11, 0.18, 0.21, 0.26, 0.32, 0.34, 1.2a, 3.22, 3.24, …"; `README.md:1450` "§1.2a for the τ₄ harmonic-sum majorant"; `README.md:1480` "§1.2a for divisor sums"; `README.md:1540`, `README.md:2942` "§1.2a for the ordered-divisor harmonic-sum majorant"; `README.md:3264`, `README.md:3291`.

Claim: the previous review's R02 was repaired at the five lines it named (73, 2200, 2216, 2387, 2425 now cite §3.24 `zetaFourthMoment.divisorDiagonal`), but the same citation survives at seven other places, including the Scope sentence changed in this head. AnalyticNumberTheoryPartI §1.2a is "Uniform Möbius major/minor arcs"; the τ₄ and τ_k harmonic majorants it is cited for occur only as one sentence of its proof route and are none of its named interfaces.

Witness: AnalyticNumberTheoryPartI README at its head, line 880 (§1.2a heading and content) and line 890, "Use `Σ_(n≤Z)τ(n)²≪Z log³(2Z)`, since `τ²≤τ₄` and three harmonic sums bound `Στ₄`", inside the proof paragraph; its named divisor statements are §3.22 (`Στ(n)`), §3.24 (`Στ(n)²`, `Στ(n)²/n`), §3.1 and §3.26 (subpower bounds).

Repair: where the τ(n)² moment is meant, cite §3.24 `zetaFourthMoment.divisorDiagonal`; for the τ₄ and τ_k harmonic majorants `Σ_{n≤Z}τ_k(n) ≤ Z(1+log Z)^{k−1}` state them as a target of Layer 1 §1.1 (the earliest layer that uses them, so Layer 4 can cite it downward) and cite that target at 1450, 1480, 2942 and 3264; drop 1.2a from line 13, 1540 and 3291 once nothing consumes it.

## R04 (P3) — An incomplete sentence in §4.4

Location: `README.md:2952` "the implied constants and the threshold in N are effective, because the level estimate is (Layer 3 §3.3, through AnalyticNumberTheoryPartI §0.34)".

Claim: the predicate is missing; the sentence does not say what the level estimate is.

Witness: the line as quoted.

Repair: "because the level estimate of Layer 3 §3.3 is effective, through AnalyticNumberTheoryPartI §0.34".

## Previous findings

- R01 — repaired: `README.md:13` "AnalyticNumberTheoryPartI §1.5a owns the weighted finite Hilbert inequality, with constant 3π/2 and local spacings; the uniform-spacing constant π/δ of §2.9 is owned here" and `README.md:2304` the same clause in the §2.9 *Needs:* line. AnalyticNumberTheoryPartI §1.5a (head, line 979) is the weighted form with `3π/2`; recomputed: δ=1/2, H=1 needs constant `H−1+δ⁻¹=2`, and `3π/2` for π would give 3. No new problem.
- R02 — repaired at the five named lines: `README.md:73` "§3.24, `zetaFourthMoment.divisorDiagonal`, for Σ_(n≤Y)τ(n)²≪Y log³(2Y): its asymptotic … implies the bound there, and the range 1≤Y<2 is the single term τ(1)²=1", and the *Needs:* lines 2200, 2216, 2387, 2425. `zetaFourthMoment.divisorDiagonal` exists at the AnalyticNumberTheoryPartI head (§3.24, line 2727) with `Σ_(n≤X)τ(n)²=X(log X)³/π²+O(X(log X)²)` for `X≥2`; at Y=2 the sum is 1+4=5 as the Layer 2 Check says. The seven untouched §1.2a citations of the same kind are R03 above.
- R03 — repaired: `README.md:4034` "**KED-ANT-18, §18.3, Corollary 18.6.** Read the conclusion as (Δx+Q)^(1/2)(y+Q)^(1/2): hypothesis (18.1.1) is assumed of f, whose support is [1,x]; the printed factor attaches Δ to y." Recomputed at Δ=1/16, x=16, y=1, Q=2: corrected factors `√3·√3=3`, printed `√18·√(33/16)≈6.09`.

## Verified sound

Read the whole diff (76 insertions, 36 deletions in README.md and Suggested.lean), the changed passages in context at this head, the previous report, the gate, overlaps and citations records, and the supplier sections cited. The pull request changes nothing outside the folder (`git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/SieveMethodsAndPrimePatterns'` is empty at this head; the folder has README.md, Suggested.lean and metadata.toml). No worktree file was changed; the probe copy lives in the job's scratch directory.

**Gate and dependency check.** The worker's gate at 23901d4: every text scanner 0, `depcheck=0`, `outside-folder=0`, `build=2 FAIL` (R01). My rerun of the full gate on the up-to-date build prints `OK` (the advisory is hidden on a warm build). The dependency check:

```text
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
```

No UPWARD or CYCLE line for this roadmap (line 262 of the merge order; AnalyticNumberTheoryPartI is line 84, the other suppliers as in the previous report).

**Lean.** Pins: Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf` (lake-manifest.json). Scratch copy = `Suggested.lean` with `module` prepended, the `sorry` of `small_conductor_maximal` replaced by `first | simp | norm_num | infer_instance`, and `#check @…small_conductor_maximal`, `#check @DirichletCharacter.IsPrimitive`, `#check @DirichletCharacter.conductor_eq_zero_iff_level_eq_zero` appended; `lake env lean` on it: 35 sorry warnings, the probe fails with "unsolved goals" (the full ∃ c C … statement), the three `#check` lines print. The elaborated type of `small_conductor_maximal` equals the README's §3.0 statement (absolute c, C; every r, s, primitive nonprincipal χ of level r, real 2≤x, 0≤y≤x; the masked von Mangoldt sum over `Icc 1 ⌊y⌋₊` with `n.Coprime s`; the bound `C x exp(−c log x/(√(log x)+log r))(log r)⁴ + C log(2s) log x`); it has no section variables to lose. The other 56 declarations are unchanged in statement since 302221d (the diff touches only docstrings), and the previous report's binder check and one-tactic probe for them stand. The new theorem is a headline-grade estimate (the uniform character prime number theorem in maximal masked form), not padding, and the module docstring now lists it. `DirichletCharacter.IsPrimitive` at the pin is `conductor χ = n` (`Mathlib/NumberTheory/DirichletCharacter/Basic.lean:291`), with `conductor χ = 0 ↔ n = 0` (line 272).

**Supplier citations resolved at the AnalyticNumberTheoryPartI head (#1126, `roadmaps show`).** §0.18 (line 552) "Effective character prime-number estimate": for primitive nonprincipal χ of conductor N>1 and X large, `Σ_{m≤X}χ(m)Λ(m)=O(X exp(−c log X/(√(log X)+log N))(log N)⁴)`, c, the constant and the threshold absolute and effective, no `−X^β/β` term; exactly the README's contract at line 69. §0.34 (line 805) `landau_siegel_exclusion`: absolute effective `c_LS>0`, `(1−β)log q≥c_LS` for every real zero β∈(0,1) of L(s,χ), χ primitive nonprincipal real of conductor q≥3, no finite range set aside; §0.34c `inert_prime_sum_le` cites [110] Theorem 1.1; exactly as consumed. §0.32 (line 781): Siegel–Walfisz with effective constants "from §0.34 through §0.18", as the README's line 67 says. §3.24 `zetaFourthMoment.divisorDiagonal` (line 2727) and §1.5a (line 979) as above. The primary texts: fab9f6e8 lines 23–25 (Theorem 1, as §0.34 states it); 6b948696 lines 25–34 (Theorem 1.1, large conductor, even C, constant 1/2+O(1/C)); the README cites both only through §§0.34/0.18 (R02 is about the reference entries, not the mathematics).

**Overlaps.** The one lead, "IntegralLattices Layer 0 … only #1239 defines it", is false: IntegralLattices on main has `## Layer 0: the native foundation` (README line 536) and `## Layer 3` (line 744), which the Scope sentence at line 11 cites. No open pull request changes this roadmap; no cited id is dropped. Ownership of the new object: no roadmap on main or at an open head states a maximal masked small-conductor estimate. `roadmaps grep -i 'small.conductor'` over main and the 466 open heads hits, besides this roadmap, AnalyticNumberTheoryPartI (§0.32 and its §0.34 remarks), ErdosProgressionPowers (lines 18–22, 1308–1392, 1790, 2162, 2222: it too consumes §0.34 and says no small-conductor computation is used), ZerosOfLFunctions (4e), "finitely many pairs (K,χ)" below a conductor bound) and single mentions in four others; none states the estimate, so §3.0 is the owner and consumes §§0.18/0.34 downward.

**Adversarial pass.** Rows for the changed statements carry computed values; the 160 rows of the previous report (r2, "Adversarial pass" table) for the statements this diff leaves untouched are carried forward unchanged, since no statement outside §§3.0, 3.2–3.4 and 4.4 changed and those changed only in their effectivity clauses.

| Statement (line) | Instance | Values computed | Result |
|---|---|---|---|
| 3.0 small_conductor_maximal (2427) | χ mod 3, x=y=3, s=1, c=C=1 | sum = Λ(2)χ(2)+Λ(3)χ(3) = −log 2, norm 0.693; RHS = 3·exp(−1.0986/(1.0481+1.0986))·1.457 + log 2·log 3 = 2.619+0.762 = 3.38 | holds |
| same | s=2 | masked sum 0 ≤ 3.38 | holds |
| same, junk levels | r=0 (every χ primitive since conductor 0 ↔ level 0; χ(n)=0 for n≥2 in ℤ) | sum 0; RHS = C x e^{…}·0⁴ + C log(2s) log x ≥ 0 | holds, harmless junk |
| same | r=1, 2 | only the trivial character exists; `χ ≠ 1` empties the quantifier | vacuous, as the README's Check says r≥3 |
| 3.0 envelope monotone (2439) | f(L)=L/(√L+ℓ), L=log 2, ℓ=log 3 | f′=(√L/2+ℓ)/(√L+ℓ)² = 1.5146/3.7295 = 0.406 < 1; so L−c f(L) increases for c≤1 | sup at y=x justified |
| 3.0 below-threshold absorption (2439) | r=3 | (log 3)⁴ = 1.457 > 1; envelope ≥ x exp(−c√(log x)) since log x/(√(log x)+log r) ≤ √(log x) | bounded by C |
| 3.0 mask weight (2439) | s=12, y=10 | removed prime powers 2,4,8,3,9: 3 log 2+2 log 3 = log 72 = 4.277 ≤ 2 log 10 = 4.605; general ω(s) ≤ log s/log 2 < 2 log(2s) | Check and bound hold |
| 3.0 logarithmic-range form (2431) | B=1, log x=100 | log r ≤ log log x = 4.6 ≤ (1/2)√(log x)=5; first term ≤ C x exp(−(2c/3)√(log x))(B log log x)⁴ = o(x/(log x)^A) | follows |
| 3.0 Check r≥3 (2447) | levels 1, 2 | ZMod 1 is the zero ring (χ=1); (ZMod 2)ˣ={1} (χ=1) | no nonprincipal character |
| 3.2 maximal BV effective (2583) | inputs | Vaughan identity exact; large sieve constant N−1+Q²; divisor moments explicit; q=1 PNT via de la Vallée Poussin region; small conductors via §3.0 | only Siegel–Walfisz was ineffective; now effective |
| 3.3 level <1/2 effective (2595) | inputs | Abel summation, `abs_psi_sub_theta_le_sqrt_mul_log` (2√t log t), Σ1/φ(q) ≪ log y, BV effective | effective |
| 3.4 BDH effective (2674) | inputs | variance route with absolute constants; small conductors §3.0; PNT error | effective |
| 4.4 Lemma 5.2 effective (2952) | inputs | level estimate effective, PNT with O(N/(log N)²) effective | effective (sentence garbled, R04) |
| supplier §3.24 at 1≤Y<2 (73) | Y=1; Y=2 | τ(1)²=1; 1+4=5 (matches the Layer 2 Check "3 and 5") | consistent |
| supplier §0.34 contract (69) | q=3, β≤1/2 | (1−β)log 3 ≥ 0.549 | matches §0.34's own Check |
| Hilbert ownership (13, 2304) | δ=1/2, H=1 | sharp constant 2 needs π; 3π/2 would give 3 | ownership split correct |
| Corollary 18.6 convention (4034) | Δ=1/16, x=16, y=1, Q=2 | corrected √3·√3 = 3; printed √18·√(33/16) ≈ 6.09 | correction stands |

**Shape.** The changed README passages keep the house form (statement, hypotheses, locator, proof sketch, Checks, *Needs:*); the new target has five Checks, two of them new negative controls (no conductor 1 or 2; the s=12 mask). No process words, pull-request numbers or LaTeX in the diff (gate scanners 0). The Lean docstrings cite AnalyticNumberTheoryPartI by section, never by pull request.

## Not verifiable

- CHEN-73-CN Lemma 6 (waived) for the §3.0 sentence on the switched Chen sequence, unchanged since 302221d: checked for internal consistency only.
- The arguments of LS-EXCLUSION and GREEN-LS themselves are AnalyticNumberTheoryPartI §0.34's targets, reviewed there; here only their statements (fab9f6e8 lines 23–25, 6b948696 lines 25–34) were compared with what §0.34 states and this roadmap consumes.

## Source issues

- none (the previous report's entries for KED-ANT-18 Corollary 18.6 and Theorem 18.5, KED-ANT-12, KHAYUTIN-19, MAYNARD-2015, HB-SIEVES and BOMBIERI-1971 stand; nothing new was found in the changed passages).
