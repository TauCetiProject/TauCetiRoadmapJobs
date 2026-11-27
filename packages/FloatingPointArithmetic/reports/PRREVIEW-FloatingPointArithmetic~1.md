# Review of FloatingPointArithmetic (pull request #3233 at 5ed7262)

**Verdict:** needs changes

**Summary.** Changes are needed, but they are two sentences: a Check of Layer 5 asserts an equality that is off by a factor 2, and the remark that `|b| ≤ |a|` implies the exponent hypothesis of Fast2Sum fails at `b = 0` under the roadmap's own junk value of `exponent 0`. Every stated theorem I could test (exhaustively on small formats in radices 2, 3, 4, 5, 10, and by search for the summation bounds) held. There are four small corrections and two format notes, none blocking. The Handbook and Higham's book could not be read, so their locators are unverified, and three points are left for the human reviewers.

## R01 (P2) — The Check on the index `k + 2j` claims `1/(1 - γ_1) - 1 = γ_2`; it equals `γ_2 / 2`

A reader who recomputes the negative control of Layer 5 (lines 364–365) finds it false, and it suggests that the bound `γ_{k+2j}` of the quotient rule is attained at `k = 0`, `j = 1`, which it is not.

With `γ_1 = u/(1 - u)`: `1/(1 - γ_1) - 1 = (1 - u)/(1 - 2u) - 1 = u/(1 - 2u)`, as the Check says, but `γ_2 = 2u/(1 - 2u)`. At `u = 1/10` the three values are `1/8`, `γ_1 = 1/9` and `γ_2 = 1/4`. The first half of the Check (the value exceeds `γ_{k+j} = γ_1`) is true and is what the control needs.

Smallest change: replace "and equals `γ_{k+2j} = γ_2`" by "and is within `γ_{k+2j} = γ_2 = 2u/(1 - 2u)`".

## R02 (P2) — `|b| ≤ |a|` does not imply `exponent b ≤ exponent a` when `b = 0`, so Fast2Sum as stated does not cover the classical hypothesis

In 4.2 (line 316) the hypothesis of `fastTwoSum_add` is glossed "`exponent b ≤ exponent a` (for instance `|b| ≤ |a|`)". An implementer who wants Dekker's form `|a| ≥ |b|` (it is the form in [R, Theorem 3.4, p. 305]) will try to derive the exponent hypothesis and cannot at `b = 0`.

The Conventions fix `exponent 0 = max emin 0` (Mathlib's `Int.log b 0 = 0`, `Mathlib/Data/Int/Log.lean` line 62). In the format `(2, 3, -2, 2)` take `a = 1/4`, `b = 0`: `|b| ≤ |a|`, but `exponent b = max(-2, 0) = 0 > -2 = exponent a`. The same happens in binary64 for every `|a| < 1`. The Conventions paragraph on the junk value (lines 81–83) discusses `a = 0` only; the case that bites is `b = 0`. The conclusion is of course true there (`s = a`, `t = 0`).

Smallest change: take the hypothesis `b = 0 ∨ F.exponent b ≤ F.exponent a` in `fastTwoSum_add` and in the README, so that `|b| ≤ |a|` does imply it; or keep the statement and write "for instance `0 < |b| ≤ |a|`", adding `b = 0` to the junk-value paragraph.

## C01 — The no-underflow hypothesis of 2Sum outside radix 2 is not needed, and 6.3 uses 2Sum without it

`twoSum_add` assumes, unless `β = 2`, that the inputs and the six exact results are zero or normal. The route paragraph of 6.3 (lines 465–472) itself shows why this is superfluous: a sum of two numbers below `β ^ emin` is a number (Hauser), so the computation agrees with the one in an unbounded exponent range, where Knuth's theorem applies. Cascaded summation is then stated "even with underflow" in every radix, which `twoSum_add` as written does not supply.

Exhaustive check, six tie rules each: in `(3, 3, -2, 1)` the 13,596 pairs with a subnormal input or intermediate result, in `(10, 2, -2, 1)` the 100,512 such pairs, and those of `(4, 2, -2, 1)` and `(5, 2, -2, 1)`, all give `s + t = a + b`. Dropping `hunder` and the clause "unless `β = 2` …" would make the statement the one 6.3 uses.

## C02 — The Kahan Check does not say what its ratios are ratios to

Line 477: "the error never exceeds `2u ∑ |xᵢ|` (largest ratios `1.27`, `1.38`, `1.09`, `0.96`)". A ratio above 1 to the quantity just named contradicts "never exceeds"; the numbers make sense only as ratios to `u ∑ |xᵢ|`. Say so. (A directed search reaches `1.98 u ∑ |xᵢ|` in radix 10, `p = 5`, and `1.99` in radix 16, `p = 3`, still below 2.)

## C03 — Two locators into Rump's survey point at a different form of the statement

In 6.1 the backward-error bullet cites [R, (2.5), p. 303]; (2.5) is the forward bound `γ_{n-1} ∑ |xᵢ|` and belongs only to the forward-error bullet, which already cites it. In 3.1 the relative-plus-absolute bullet states `∘x = x (1 + ε) + η` and cites [R, (2.3), p. 302]; (2.3) is the inverse form, exact result `= fl(·)(1 + ε) + δ`, and for binary64 only. Both statements of the README are true; the citations would read "the forward form of" and "[R, (2.3)] in the inverse form".

## C04 — "(exhaustive, see notes)" points to notes that are not in the folder

The Hauser Check of 3.2 (line 268) refers to notes; the folder has only the README, `Suggested.lean` and `metadata.toml`. Drop "see notes", as the other exhaustive Checks do.

## N01 — Pull-request numbers and a dated search in the README

Lines 40 and 531 cite ConditioningAndPerturbation by "open pull request #2807", and lines 594–596 report a GitHub search dated 2026-11-27. A roadmap is cited by name and section, and the text should read the same a year from now.

## N02 — The negative controls for `β ≤ 3` depend on the tie rule

In the Check of 4.2 (lines 330–332) both sums are ties (`1.95` between `1.9` and `2.0`; `30/64` between `28/64` and `32/64`). With the tie broken downward `s = 1.9` and Fast2Sum is exact. Add "with ties to even".

## Questions for the author

- Kahan's bound is stated for every radix and every tie rule with an absolute constant. Does Knuth's analysis behind [H, (4.8)] cover radix above 3, where the Fast2Sum step inside the recursion is not exact? My searches in radices 2, 3, 4, 5, 10, 16 never exceeded `2u ∑ |xᵢ|`, so I have no counterexample; I could read neither Higham nor Knuth.
- The same for [M, Theorem 5.6]: is Priest's theorem stated there for every radix and any tie rule? Random sorted sums in radices 2, 3, 10 stayed below `0.50 · 2u |S|`; the text was not readable.
- Layer 5 says [H, Lemma 3.3, p. 74] omits the condition `max(k, j) u ≤ 1/2`. That is a claim about the 1996 edition which I could not check.

## Verified sound

| Statement | Instances tried | Values computed | Result |
|---|---|---|---|
| 1.1 format, extremal numbers | `(2,3,-2,2)` enumerated | `α = 1/16`, `β^emin = 1/4`, `Ω = 7`, 47 numbers; `Ω = (β - β^(1-p)) β^emax` gives `1.75·4 = 7` | holds |
| 1.1 canonical representation | `17`, `β = 10`, `p = 3`; `x = 0` | exponents 1 and 2, significands 170 and 17; `exponent 0 = max emin 0` since `Int.log b 0 = 0` | holds; junk at 0 see R02 |
| 1.1 Higham parameters control | `t = 53`, `emin = -1021`, `emax = 1024` | `α = 2^(-1021-53+1) = 2^(-1073)`, `Ω = 2^1025 (1 - 2^(-53))` | Check true |
| 1.2 successor, relative spacing | `x = 1`; `x = (β^p - 1) β^(e-p+1)` | succ `5/4`, pred `7/8`; gaps `1/4 = β^(1-p)`, `1/8 = β^(-p)`; top of binade gap/`x` = `1/(β^p - 1)` | holds, both bounds attained |
| 2.1 monotone, unique directed, ties to even | `9/8`, `α/2`, `14`, `-9/8` in `(2,3,-2,2)` | tie `1` (sig 4) vs `5/4` (sig 5); `β^p - 1`, `β^(p-1)` have opposite parity for both parities of `β` | holds |
| 3.1 relative error, attainment | `9/8`; `5/4 - 1/100` under RD; `β = 2, p = 2, emax = 0` | `1/9 = u/(1+u)`; `0.24/1.24 = 0.194 > 1/8`; `1 + 2u = 1.5 = Ω` still a number | holds |
| 3.1 relative plus absolute | below `β^emin`, nearest and directed | `α/2 = β^emin · u` (nearest), `α = β^emin · u` (directed) | holds |
| 3.2 Hauser; std model for `+` | all pairs of six formats, radices 2, 3, 4, 5, 10 | 0 failures; control `3/64 → 1/16`, relative error `1/3` | holds |
| 4.1 Sterbenz; error of sum; error of product | same six formats, six tie rules, both directed modes for the product | 0 failures each; RD control `2^(-p) - 2^(-3p)` needs `2p` bits | holds |
| 4.2 Fast2Sum | exhaustive, six tie rules | radix 2, 3: 0 failures; radix 10: 336–560; radix 4: 0–20; radix 5: 26 | holds for `β ≤ 3`; R02, N02 |
| 4.2 2Sum | exhaustive incl. underflow; unbounded range radices 2–16, 5 tie rules | 0 failures, 13,596 and 100,512 underflow pairs included | holds; C01 |
| Layer 5 product, quotient, inequalities | `k, j < 8`, 13 values of `u`, extreme `θ = ±γ` | quotient: 0 violations, max ratio 1.0; `γ_1 γ_6 = 1/6 > 1/9` at `u = 0.1` | holds |
| Layer 5 Check, index `k + 2j` | `u = 1/10` | `1/(1-γ_1) - 1 = 1/8`, `γ_1 = 1/9`, `γ_2 = 1/4` | false: R01 |
| Layer 5 `1.01 n u` | `n u = 0.01`, `n < 2000` | `((1 + u)^n - 1)/(1.01 n u) ≤ 0.9951`; lower side `0.9901` | holds |
| 6.1 tree bounds | `n = 1`; `(1,0,0)` control; 30,000 random trees per format | `(1+u)² - 1 = 2u + u² > 2u`; Rump ratio max `0.970` (2,5), `0.966` (10,3), `0.946` (3,4) | holds |
| 6.2 Horner | `n = 0`, `n = 1`, `a = (0,1)`, `x = 1`, `u = 2^(-8)` | `γ_0 = 0`; `0.00783` vs `γ_1 = 0.00392`, `γ_2 = 0.00787` | holds |
| 6.3 Kahan | directed search, radices 2–16, `n ≤ 8`, 4 tie rules | max error/(`u ∑ \|xᵢ\|`): `1.74` (2,10), `1.98` (10,5), `1.99` (16,3) | consistent; C02 |
| 6.3 cascaded, Priest | 20,000 sums per format and tie rule; Priest's example `p = 6, 10, 24` | cascaded max `0.969` (2,6), `0.994` (10,4); Priest max `0.50`; example: Kahan 3, Priest 2 | holds |

- Source locators checked against the text: 16, all into R (printed pp. 302–306): (2.1)–(2.5), Theorem 2.1, (3.1) and footnote 9, Algorithms 3.1 and 3.5, Theorems 3.2 and 3.6. Page numbers agree.
- Library declarations opened at the pin: `Int.log` (`Mathlib/Data/Int/Log.lean` line 61), `Int.zpow_log_le_self` (line 114), `Int.lt_zpow_succ_log_self` (line 122), `Mathlib/Data/FP/Basic.lean` (deprecated module). No floating-point format, rounding, Sterbenz or unit-roundoff declaration in the pinned Mathlib or Tau Ceti.
- Cross-roadmap citations resolved: IterativeMethodsForLinearSystems, EigenvalueIterations, OneStepMethodsForODEs (on main, each excludes rounding in its scope), ConditioningAndPerturbation (open, excludes rounding). None is a supplier.
- Dependency check output: `depcheck: 94 roadmaps, 1054 edges, 0 problem(s)`. Nothing changed outside the folder.
- Elaboration: `Suggested.lean` elaborates with 36 `sorry` warnings and no other message; every declaration carries its binders in its own signature, and each was compared with its README statement (no difference of generality found).
- One-tactic probe (`rfl`, `simp`, `simp_all`) on a copy: none of the 36 sorried theorems closes. The five proved declarations are marked as checks or as a bridge.
- Headlines: all are stated in `Suggested.lean`; the four corollaries omitted are named in its docstring with the statements they follow from.
- Overlap check: the three closest-roadmap lists are empty; read the scope of ConditioningAndPerturbation, IterativeMethodsForLinearSystems, EigenvalueIterations, OneStepMethodsForODEs; nothing shared.

Source independence: 14 passages compared with 1 source (R), none shared; largest share M, 59 of 101 locators; contents of M and of H could not be read, so wording and arrangement were not compared with them.

Research link: Layers 4 and 6 state the error-free transformations and summation bounds of Ogita, Rump and Oishi (2005), Jeannerod and Rump (2013) and Rump (2010, §§2–3), the basis of verified numerical computation; rests on the README's references and on R §§2–3 as read.

## Not verifiable

- Every locator into [M] (Handbook of Floating-Point Arithmetic, 2nd ed.): paywalled; the DOI resolves only to the publisher, and the contents page redirects to a login.
- Every locator into [H] (Higham, 1996 edition): no legal copy found. This includes the sampled targets 1.1, 1.2 and 6.2, which cite only [M] and [H].
- The claim that [H, Lemma 3.3] omits a condition, and the radix generality of Kahan's and Priest's theorems in their sources.
- Ownership against open pull requests was checked by search over their heads only; the future consumers the README names (interval arithmetic, backward error analysis of matrix algorithms) are not filed.

## Source issues

- **Gap** in R at (3.1), p. 304: the source says the rounding error of a sum, difference or product of two floating-point numbers is a floating-point number, assuming only no overflow; it should be for the product also assume no underflow (in binary64, `2^(-600) · 2^(-600)` rounds to `0` with error `2^(-1200)`); affects nothing.

## For the human reviewers

- **Not tested.** [M] holds 59 of 101 locators and [H] 33; neither text nor table of contents could be read, so wording and arrangement were compared only with [R]. The README's locators into [M] run in page order across Layers 1–6 (pp. 16–182).
- **Licence.** The README (lines 572–585) says the Lean statements share their model with the author's own repository lean-NASC (Apache-2.0, `NASC/FloatingPoint.lean`). I did not open that repository.
- **Scope.** The README (lines 25–27) and the `Suggested.lean` docstring say consumers are meant to copy the definitions verbatim; whether later roadmaps restate or import them is a project decision.
