# Review of CurvesOverFiniteFields (pull request #1729 at 24a1c2b)

**Verdict:** needs changes

Incremental re-review of the 21 lines of `TauCetiRoadmap/CurvesOverFiniteFields/README.md` changed since `f56efad` (the Serre equality clause of 3.2 for both signs, the two worked examples `1.2.ac` and `1.2.c`, and the Layer 1 home clause). `Suggested.lean` is unchanged. The head repairs the previous review's R02 and the mathematics of its R01: both sign clauses are now stated and both are true, with the right quadratic on each side. The repair introduced one slip, below: the lower-sign clause is attributed to Theorem 4.10(b) applied to `P(−T)`, whereas with the README's own `b_1 = q + 1 − N_1` the lower equality is Theorem 4.10(b) applied to `P` itself, and it is the upper equality, the one Serre states in §4.7.2.2, that comes from `P(−T)`. The gate passes, the dependency check reports no problem, no file outside the folder changes, the file elaborates with no lost binder, and every value in the changed passages recomputes.

## R01 (P3) — The lower-sign equality clause is attributed to the wrong instance of Theorem 4.10(b)

**Location:** `README.md:1113`–1115, "the lower equality `N_X(q) − q − 1 = −g·m` then holds only when every root satisfies `α² − mα + q = 0`, by Theorem 4.10(b) applied to `P(−T)`".

**Claim:** The lower equality is the case of Theorem 4.10(b) obtained by passing to `P(−T)`.

**Witness:** Serre, *Lectures on N_X(p)*, Theorem 4.10 (cache `bdba7daa` lines 1641–1646): `P = x^n − b_1 x^{n−1} + ⋯`, and (b) is the case `b_1 = +nm/2`, concluding `α² − mα + q^w = 0`; lines 1653–1654 say the case `b_1 = −nm/2` follows by applying (b) to `(−1)^n P(−x)`. The README's line 1111 sets `b_1 = q + 1 − N_1(F)`, so `N_1 − q − 1 = −g·m` is `b_1 = +g·m = nm/2`: Theorem 4.10(b) on `P` itself. Computed on `1.2.ac`: `b_1 = 3 − 1 = 2 = 2·2/2`, and the roots `1 ± i` of `P` satisfy `α² − 2α + 2 = 0` directly. On `1.2.c`: `b_1 = 3 − 5 = −2 = −nm/2`, so (b) applies to `P(−T) = T² − 2T + 2`, whose roots `1 ± i` give `α = −1 ∓ i` with `α² + 2α + 2 = 0`: the upper equality is the `P(−T)` case.

**Repair:** Swap the attribution: "the lower equality `N_X(q) − q − 1 = −g·m` then holds only when every root satisfies `α² − mα + q = 0`, which is Theorem 4.10(b) itself (`b_1 = nm/2`); Serre's upper clause is (b) applied to `(−1)^n P(−T)`, as he remarks after the theorem". Tested on the instances above and on `1.3.ad` (`q = 3`, `m = 3`, `b_1 = 3`, roots `(3 ± i√3)/2` satisfy `α² − 3α + 3 = 0`) and `1.4.ae` (`q = 4`, `m = 4`, `b_1 = 4`, double root `2` satisfies `α² − 4α + 4 = 0`): both are lower equalities and both are (b) on `P` directly.

## Previous findings

- R01 — partly repaired: lines 1112–1117 now state the upper equality with `α² + mα + q = 0` (Serre §4.7.2.2, line 1740) and the lower with `α² − mα + q = 0`, each with its witness (`1.2.c`, `1.2.ac`); the quadratics and witnesses are right, the attribution of the lower clause to `P(−T)` is the R01 above.
- R02 — repaired: line 41–43, "imports nothing from the function-field side beyond FunctionFieldArithmetic §5.6's polynomial predicate `IsLPolynomialData`, consumed by 1.11"; §5.6 at FunctionFieldArithmetic's head `c5d655e2` (line 1890) defines `IsLPolynomialData q g N P` on `P ∈ ℤ[T]` and `N : ℕ → ℤ`, a polynomial predicate, and 1.11 (lines 940, 998) is where it is consumed.
- R03 — not repaired, and nothing to repair here (as the previous two reviews said): lines 29–31, 61–64 and 88 are unchanged; the sibling AbelianVarietiesOverFiniteFields moved to head `3ef7d747`, where its §1.0 (line 409) still builds the same polynomial operations and its line 2292 still claims this roadmap consumes them; its `Suggested.lean` declares none of `IsWeilPolynomial`, `weilPower`, `pRank`. The merge order now lists this roadmap at 343 and the sibling at 381, so the direction stated here is the one the order fixes; the sibling's reversion to citations of 1.1–1.11 remains a repair in that pull request.

## Verified sound

### Gate, dependency check, outside-folder diff, elaboration

Gate run on this head with the targeted build (`--build`, with the merge order):

```text
gate CurvesOverFiniteFields: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

Dependency check with the candidate order:

```text
depcheck: 239 roadmaps, 2368 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line (CurvesOverFiniteFields at line 343, after FunctionFieldArithmetic at 342). `git diff --stat origin/main...HEAD` outside the folder is empty.

A scratch copy of `Suggested.lean` with `#check @name` for all 36 declarations (the worker's count of 37 includes the hyphenated docstring word "class-number-one" at line 42, which is not a declaration) elaborated with `lake env lean` in 19 s: 22 `sorry` warnings, no other warning or error, 36 printed types, each identical to the previous review's comparison with its README statement (`serre_bound` and `ihara_bound` carry `[Finite k]`, `hF`, `IsIntegrallyClosedIn k F`; `card_degreeOne_eq_pointCount` carries `genus k F = 1`, `P.degree = 1`, `P.IsWeierstrassCoordinates W x y`; the Layer 1 theorems carry `0 < q`, `IsPrimePow q`, `Monic`, `IsWeilPolynomial`, `IsWeilSymmetric`, `0 < r`, `2 ≤ q`, `Fact (Irreducible …)` and the no-real-root hypothesis exactly as the README states). No section binder is lost. The file is unchanged since the previous review, so its padding probe (all 22 `sorry`s fail `first | rfl | simp | infer_instance | exact?`) and its form checks stand.

### The changed passages

- 3.2 (lines 1108–1117): Theorem 4.10 read at cache `bdba7daa` lines 1641–1654 and §4.7.2.2 at lines 1715–1743; the bound `|N_X(q) − q − 1| ≤ gm` is line 1737 and the upper equality clause `α² + mα + q = 0` is lines 1740–1741, as the README now states. The lower clause is true by Theorem 4.10(b) on `P` (R01 is the attribution only). The proof route's correspondence `z = m + 1 − a`, `z′ = m + 1 + a` is §4.6.2 lines 1628–1636, unchanged.
- Worked example `1.2.ac` (lines 1302–1309): `P = T² − 2T + 2`, roots `1 ± i`, `N_1 = 3 − 2 = 1`, `N_1 − 3 = −2 = −g·m`; `(1 ± i)² − 2(1 ± i) + 2 = ±2i − 2 ∓ 2i + 2 = 0`: the lower-sign clause, as the text says.
- Worked example `1.2.c` (lines 1316–1320): `L = 1 + 2T + 2T²`, `P = T² + 2T + 2`, roots `−1 ± i`, `N_1 = 3 + 2 = 5 = q + 1 + g⌊2√q⌋`; `(−1 ± i)² + 2(−1 ± i) + 2 = ∓2i − 2 ± 2i + 2 = 0`: the upper clause, as the text says.
- Layer 1 home clause (lines 41–43): resolved against FunctionFieldArithmetic §5.6 at head `c5d655e2` (line 1888 heading, 1890 definition on `P ∈ ℤ[T]`, `N : ℕ → ℤ`: `P(0) = 1`, `deg P ≤ 2g`, the symmetry `a_{2g−j} = q^{g−j} a_j`, the Newton identities for `1 ≤ r ≤ g`; `lPolynomial_isLPolynomialData` and `IsLPolynomialData.unique` at 1893). The README cites the predicate at lines 358, 940, 998 and 1043, all consistent with that definition; FunctionFieldArithmetic is earlier in the merge order (342 < 343) and is a new-roadmap pull request (not on main), so the citation is permitted.

### Seeded sample

3.2 is the sampled target the diff touches; its text and locators were inspected as above. The other sampled targets (1.1, 1.3, 1.5, 1.7, 1.9, 1.10, 2.1–2.4, 3.1, 3.5, 4.1, 4.3) are untouched by the diff, and the previous review's inspection of each (its seeded-sample table) carries forward; the Layer 1 home clause touches 1.10–1.11 only by naming where their code lives.

### Adversarial mathematics table

Rows for untouched statements carry forward from the previous review (its adversarial table, same instances and values); the rows marked "this round" are computed now in a pure-Python script (roots by the quadratic formula, `b_1` as the root sum, `m = ⌊√(4q)⌋`).

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 3.2 upper equality clause (this round) | `1.2.c`: `q=2`, `g=1`, `m=2`; `1.3.d`: `T²+3T+3`, `q=3`, `m=3`; `(T²+2T+2)²`, `g=2` | `b_1 = −2`, `N_1 = 5`, `N_1−3 = +2 = gm`, `|α²+2α+2| = 0, 0`, `|α²−2α+2| = 5.657, 5.657`; `b_1 = −3`, `N_1 = 7 = 4+3`, `|α²+3α+3| = 0`; `b_1 = −4`, `N_1 = 7`, `N_1−3 = 4 = gm` | the upper equality is `b_1 = −nm/2`, the `(−1)^n P(−x)` case of 4.10(b); the clause holds | none |
| 3.2 lower equality clause (this round) | `1.2.ac`; `1.3.ad`: `T²−3T+3`; `1.4.ae`: `(T−2)²`, `q=4`, `m=4`; `(T²−2T+2)²`, `g=2` | `b_1 = +2 = nm/2`, `N_1 = 1`, `N_1−3 = −2`, `|α²−2α+2| = 0, 0`, `|α²+2α+2| = 5.657`; `b_1 = 3`, `N_1 = 1`, `|α²−3α+3| = 0`; `b_1 = 4`, `N_1 = 1 = 5−4`, `|α²−4α+4| = 0`; `b_1 = 4`, `N_1 = −1`, `N_1−3 = −4 = −gm` | the lower equality is `b_1 = +nm/2`, 4.10(b) on `P` itself; the clause holds, its attribution to `P(−T)` does not | R01 |
| 3.2 non-equality control (this round) | `1.2.ab`: `T²−T+2` | `b_1 = 1`, `N_1 = 2`, `N_1−3 = −1`, neither `±2`; `|α²+2α+2| = 4.243`, `|α²−2α+2| = 1.414` | neither quadratic vanishes off the equality cases | none |
| `1.2.ac` worked example (this round) | the record | `L = 1−2T+2T²`, `P = T²−2T+2`, roots `1 ± i`, `|α| = 1.41421`, `N_1 = 1`, `N_1−3 = −2`, `⌊2√2⌋ = 2` | matches the new text | none |
| `1.2.c` worked example (this round) | the record | `L = 1+2T+2T²`, `P = T²+2T+2`, roots `−1 ± i`, `N_1 = 5 = 2+1+2`, angle `3/4`, `a = −2`, `2 ∣ −2` | matches the new text | none |
| Layer 1 home clause (this round) | FunctionFieldArithmetic §5.6 at `c5d655e2` | predicate on `(q, g, N, P)` with `P ∈ ℤ[T]`, no function field in its data; consumed at README lines 940, 998 | the qualification is exact | none |
| Convention 7, `IsWeilPolynomial` / `IsWeilSymmetric`; Convention 1 `hex` witness | as in the previous review | as in the previous review (root moduli `1.41421`; `(T−1)(T−2)` false; `𝔽₄(t)` over `𝔽₂` has `genus = 0`, `N_1 = 0`, `|0−3| ≤ 0` false) | unchanged | none |
| 1.4 real Weil polynomial, spec, Weil iff real-rooted, `aroots_map_div` | as in the previous review | thirteen `h` values; `E₂`: `X² − 2X + 2` from `i = 0, 1`; `T²−4T+2` roots `3.414, 0.586` | unchanged | none |
| 1.5 `irreducible_real_root`, parity | as in the previous review | `T²−2`, `T∓2` at `q=4`; `(T²−2)E₂` has `P(0) = −4 ≠ 4` | unchanged | none |
| 1.6 `pRank`, ordinary iff, `IsSupersingular`, slopes, elevation | as in the previous review | ranks `2, 1, 0, 1, 3, 0`; slopes `[0, 1/2, 1/2, 1]`, `[0, 1/3, 2/3, 1]`; elevations `0, 1, 1, 0, 1, 2, 4, 6, 9` | unchanged | none |
| 1.7 angles, `2·card = 2g + m`, rank zero iff supersingular | as in the previous review | thirteen angle lists; `α²/2 = i` torsion for `E₂`; `2X²+3X+2` for `O₂` | unchanged | none |
| 1.8 CM theorem | as in the previous review | `ℚ(i)`, `ℚ(√−7)`, `ℚ(ζ₁₂)`; `T²−2` excluded by `hreal` | unchanged | none |
| 1.10 Weil powers, product sign, power sums, twists, Weil roots | as in the previous review | `T²+4`, `(T+4)²`, `(T+64)⁴`; `(T−2)(−T−2) = −(T²−4)`; `2, 2, 0, −4, −8`; `{T²−2}`, `{T²∓2T+2}`, `∅` | unchanged | none |
| 1.11 virtual counts, Hasse–Weil, Möbius sums, recovery from `N₁..N_g` and from all `A_r` | as in the previous review | `1.2.ab`: `2, 8, 14, 16`; `(T²−2)²`: `64 ≤ 64`; `q=0` pair `T⁴`, `T⁴+T`; `q=1` pairs with all `A_r = 0` | unchanged | none |
| 2.1–2.4 | as in the previous review | `T²−2T+2`, `P(0) = 2`; `s = 2, 1, −3, −5`, `N₂ = 8` | unchanged | none |
| 3.1 cosine form, class-number bounds | as in the previous review | `3 − 2√2 cos(π/4) = 1`; `0.1716 ≤ 1 ≤ 5.828`; `h = 1`, `g ≥ 1 ⟹ q ≤ 4` | unchanged | none |
| 3.2 bound table and proof route | as in the previous review | `(⌊HW⌋, Serre, ⌊Ihara⌋)` for eight `(q, g)`; `m+1∓x = 1, 5` | unchanged | none |
| 3.3 Ihara; 3.5 Hermitian instance | as in the previous review | `S² − gS = 2 ≤ 6`; `q₀³ + 1 = 9, 28, 65, 126` | unchanged | none |
| 4.1 coordinate and supersingularity comparisons; 4.2 zeta; 4.3 dictionary | as in the previous review | cusp `q+1`, node `q`; `2 ∣ −2`, `3 ≤ 2` fails; `N_2/2 = 5/2`; `X² − (2/3)X + 2` | unchanged | none |
| Lean binders | all 36 declarations (this round) | types printed and compared with the README | identical to the previous round; `hm` in `virtualCurveCount_sub_sq_le` is also `hW.1` (harmless) | none |

### Library declarations and cross-roadmap citations

Opened this round: FunctionFieldArithmetic §5.6 at `c5d655e2` (README lines 1888–1904); AbelianVarietiesOverFiniteFields at `3ef7d747` (§1.0 line 409, line 2292, `Suggested.lean` grepped for the three names: none). The Lean file's four `TauCeti.*` imports and every name it uses elaborate at the branch pin (the probe above); the previous review's list of pinned declarations (`genus`, `IsWeierstrassCoordinates`, `pointCount`, `frobeniusTrace`, `IsSupersingular`, `classNumber`, `Place.degree`, `IsFunctionField`, and the Mathlib names) is unchanged by this diff. Ownership against open work: the diff adds no object; the previous review's object search (Weil polynomials, real Weil polynomial, Newton slopes and `p`-rank, Frobenius angles, Weil powers, virtual counts, the Serre and Ihara bounds, class-number bounds, maximal curves) and its conclusion that the only second builder is the sibling's §1.0 stand, re-checked at the sibling's new head. Overlaps file: no open pull request changes this roadmap, no cited id is dropped.

## Not verifiable

- **Stichtenoth 2009** Theorem 5.3.1, **Serre 1983** and **Ihara 1981**: as in the previous review, no legal full text; the README marks the locators uncertified and the statements were checked against Serre's lectures and by computation.
- Ownership against open pull requests whose files the brief did not supply was not checked beyond the previous review's `roadmaps grep`.

## Source issues

- none
