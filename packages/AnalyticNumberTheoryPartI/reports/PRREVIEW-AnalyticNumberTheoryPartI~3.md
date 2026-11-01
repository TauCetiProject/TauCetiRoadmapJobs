# Review of AnalyticNumberTheoryPartI (pull request #1126 at 89a4c37)

**Verdict:** accepted

Incremental re-review of the 39 lines changed since cd47617 (26 insertions, 13 deletions in `TauCetiRoadmap/AnalyticNumberTheoryPartI/README.md` and the docstring of `selberg_zero_density` in `Suggested.lean`; nothing changed outside the folder, `git diff --stat origin/main...HEAD` excluding the folder is empty). Gate at this head (worker's run): every scanner at 0, `build=0`, OK. Dependency check (my run of the command in the brief): `depcheck: 205 roadmaps, 1443 edges, 0 problem(s)`, no UPWARD or CYCLE line. My elaboration of `TauCetiRoadmap/AnalyticNumberTheoryPartI/Suggested.lean` with `lake env lean` from the worktree: 23 `declaration uses sorry` warnings and nothing else, exit 0.

## R01 (P3) — §1.7 names Montgomery's *Topics* Theorem 12.1 as "the original" of the density theorem

Location: `README.md` line 865 ("…and Montgomery [100], Theorem 12.1, for the original").

Claim: the lecture-notes theorem is the original source of the bound `Σ_{q≤Q}Σ*_χ N(σ,T,χ) ≪ (Q²T)^(3(1−σ)/(2−σ))(log QT)^A`.

Witness: bombieri1987 line 2864 (notes to §10, printed p.83) attributes Théorème 20 to Montgomery [M4], which line 2895 resolves to *Zeros of L-functions*, Invent. Math. 8 (1969), 334–345; the *Topics* chapter (1971) is the textbook form.

Repair: replace "Montgomery [100], Theorem 12.1, for the original" by "Montgomery, *Zeros of L-functions*, Invent. Math. 8 (1969), 334–345, for the original, and Montgomery [100], Theorem 12.1, for the textbook form", and add the Inventiones paper to the References. Nothing mathematical depends on it: the form actually used (primitive characters, `(log QT)^A`, `1/2 ≤ σ ≤ 1`, `T ≥ 2`) is Bombieri's Théorème 20, verified below.

## Previous findings

- R01 — repaired: line 863 now gives the two-range route, Jutila's Theorem 1 for `4/5≤σ≤1` and Montgomery's theorem for `1/2≤σ≤4/5`, with the absorption `(log QT)^A≤C_ε(QT)^(ε/5)≤C_ε(QT)^(ε(1−σ))`; the docstring of `selberg_zero_density` says the same. Both inputs verified in the sources (table below); the arithmetic recomputed in the adversarial table.
- R02 — repaired: line 2243 now reads "…`zetaSecondMoment.atkinson_bound` carry the same `BBRFiniteInput`; `zetaSecondMoment.mean_square` is unconditional (§3.23)", agreeing with §3.23 (line 2195) and the Lean signature at line 436.
- R03 — repaired: line 2166 reads `δ=√x−M∈[0,1)`; line 2172's `*Needs:*` has no stray bracket; References entries [97] Jutila and [98] Neukirch added (lines 3067–3068), with [99] Bombieri, [100] Montgomery and full bibliographic lines [101]–[107] for seven works previously cited only by link; lines 668, 781 and 805 now state facts about the sources ("the statement here requires `a` coprime to `q`…", "the parity `a` of the character is assigned oppositely in Theorem10.2 and after Lemma10.3…", "the half-interval deduction is completed here"). The parity claim at line 781 is true: kedlaya line 2760 (Theorem 10.2, printed p.59) has `a = 1` for even and `a = 0` for odd, line 2795 (after Lemma 10.3, p.60) has the opposite. The dangling `[R93]` label was removed with §3.42a repointed to `[R90]` (the same arXiv paper, 1601.05324); no `[R93]` citation remains.

## Verified sound

**The changed passages, read in full.**

| Passage | Source line(s) | What the source says, in my words | Result |
| --- | --- | --- | --- |
| §1.7 Jutila range (line 863) | jutila1977 (f6e9038a) 56–60 (printed p.46) | Theorem 1: for `4/5 ≤ α ≤ 1`, `T ≥ 1`, `N(α,T,q) ≪ (qT)^((2+ε)(1−α))` and `N*(α,T,Q) ≪ (Q²T)^((2+ε)(1−α))`; the paper "extends the density hypothesis to `[4/5, 1]`"; lines 49–50: (1.3)–(1.4) are Selberg's unpublished estimates | supports exactly |
| §1.7 Montgomery form (line 863–865) | bombieri1987 (c1969cbf, Numdam PDF; printed = PDF − 1) 2581–2586 (§10 heading, printed p.76: rectangle `α ≤ σ ≤ 1`, `|t| ≤ T`, `T ≥ 2`), 2615–2619 and the rendered page (Théorème 20, printed p.77): `Σ_{q≤Q}Σ*_{χ mod q} N(α,T;χ) ≪ (TQ²)^((3/(2−α))(1−α))(log TQ)^A`, with the star over primitive characters; 2732 (printed p.80): the proof closes "with `A = 19`"; proof runs printed pp.77–82 | supports; the exponent, the star, `T ≥ 2` and the proof's `1/2 ≤ σ ≤ 1` (rendered page, last line) are as the README states |
| §1.7 attribution (line 865) | bombieri1987 2864, 2895 | Théorème 20 is due to Montgomery, Invent. Math. 8 (1969) | R01 (P3) |
| §0.32 locators (line 668) | kedlaya (7a934fce; printed = PDF − 16) 2905–2908 (Theorem 10.9, printed p.62), 2926–2930 (Theorem 10.11, p.63) | Siegel: `β ≤ 1 − cN^(−ε)` for real primitive `χ` of level `N`; Siegel–Walfisz stated with constants "explicit and depending only on `A` and `ε`", no coprimality, no modulus range | locators right; the README's added coprimality, logarithmic range and ineffective constant are the correct hypotheses (Source issues below) |
| §1.4 parity (line 781) | kedlaya 2743–2760 (Theorem 10.2, p.59), 2785–2795 (Lemma 10.3 and the product expansion, p.60) | Theorem 10.2: `a = 1` even, `a = 0` odd; p.60: `a = 0` even, `a = 1` odd; Lemma 10.3: `O(log(NT))` zeros in `[T, T+1]` with an absolute constant | supports the README's description and its own convention |
| §3.42a (line 2916) | [R90] = arXiv 1601.05324 (Debruyne–Vindas) | same paper as the removed [R93] (its v2) | link repointing sound |
| §2.7 (line 1023) | Neukirch [98], VII §10 | book; unchanged mathematics, reference entry added | not re-verified (Not verifiable) |
| §3.22 (lines 2166, 2172) | — | `δ = √x − M ∈ [0,1)` with `M = ⌊√x⌋`; `*Needs:*` list well-formed | typographical repairs only |
| §3.23g (line 2243) | `Suggested.lean` 436 | `mean_square` has no `BBRFiniteInput` hypothesis | consistent |

**References block.** Entries [97]–[107] are unique numbers; labels `[R97]` (Math. Scand. download, the journal's own site, cached f6e9038a) and `[R99]` (Numdam, open) resolve; `[R55]`, `[R68]`, `[R69]`, `[R70]`, `[R74]`, `[R75]`, `[R81]` were already defined (lines 3131–3156) and their new bibliographic entries do not duplicate earlier numbered entries (no `- [55]`, `- [68]`, … line exists). [98] and [100] are books without links, as the house style allows.

**Adversarial pass.** Rows for statements the diff leaves untouched are carried from the previous report (r2, same values); the changed statement's route has new rows with computed values.

| Statement | Instances tried | Values | Result |
| --- | --- | --- | --- |
| `selberg_zero_density`, Jutila range | `σ = 4/5`, general `Q, T ≥ 2` | Jutila: `(Q²T)^((2+ε)/5) = Q^((4+2ε)/5) T^((2+ε)/5)`; target: `(Q^(5+ε)T^(3+ε))^(1/5) = Q^(1+ε/5) T^((3+ε)/5)`; `(4+2ε)/5 ≤ 1+2ε/5` and `(2+ε)/5 ≤ (3+2ε)/5` with `ε ↦ 2ε` | ✓ |
| `selberg_zero_density`, Montgomery range, endpoints | `σ = 4/5`; `σ = 1/2` | `3/(2−σ)`: `3/(6/5) = 5/2`, `3/(3/2) = 2`; at `σ = 1/2`: `(Q²T)^1 (log QT)^A` versus `Q^(5/2+ε/2) T^(3/2+ε/2)`, quotient `Q^(1/2)T^(1/2)(QT)^(ε/2)/(log QT)^A ≥ 1/C_ε` | ✓ |
| `selberg_zero_density`, interior instance | `σ = 3/4`, `Q = 1` | `3(1/4)/(5/4) = 3/5`; `T^(3/5)(log T)^A ≤ C_ε T^(3/5+ε/5) ≤ C_ε T^((3+ε)/4)` since `3/5 < 3/4` | ✓ (the instance that refuted the r2 route now passes) |
| `selberg_zero_density`, log absorption | `1−σ ≥ 1/5` | `(log QT)^A ≤ C_ε (QT)^(ε/5) ≤ C_ε (QT)^(ε(1−σ)) = (Q^ε T^ε)^(1−σ)` | ✓ |
| `selberg_zero_density`, `T` powers | `T ≥ 1` | `(Q⁵T^(5/2))^(1−σ) ≤ (Q⁵T³)^(1−σ)` since `5/2 ≤ 3` and `1−σ ≥ 0` | ✓ |
| `selberg_zero_density`, near `σ = 1` | `σ = 1 − 1/log(QT)`, `QT ≥ e^5` so `σ ≥ 4/5` | Jutila range applies; right side `≤ C_ε e^(5+ε)`; for `QT < e^5`, `σ < 4/5` falls in Montgomery's range where `1−σ ≥ 1/5` | ✓ no gap between the ranges |
| `selberg_zero_density`, Lean form | `q = 1` (`Fin ⌊Q⌋₊` index 0, modulus 1); `χ` imprimitive | modulus 1: the trivial character has conductor 1, so `IsPrimitive` holds and `N(σ,T)` for `ζ` is counted, as in `Σ*` with `q = 1`; imprimitive characters contribute 0 | ✓ matches `Σ_{q≤Q}Σ*_χ` |
| §1.4 parity convention | `χ₋₄` (odd, `a = 1`), `χ₅` (even, `a = 0`) | even `L(s,χ)` has a trivial zero at `s = 0`, giving the `−(1−a) log x = −log x` term; odd has none (trivial zeros at `−1, −3, …`), term `0`; Kedlaya's Theorem 10.2 convention would swap these | README's convention ✓ |
| `siegel_walfisz`, `_primeCount`, §0.32 | as r2 | `x^(β−1) ≤ exp(−c_ε (log x)^(1−Bε))`, `1−Bε > 1/2` at `B = 1`, `ε = 1/4` | ✓ (r2) |
| `half_interval_explicit_formula` | as r2 | `k = 5`: `(5/2, 5]`; `q = 3`, `k = 4`, `T ∈ [2,4]`: left `log 2`, zero sum empty | ✓ (r2) |
| `mean_square` | as r2 | `cutoff(T,T/2)/T = 0.03222 < 1/30`; `|S₁|, |S₂| ≪ √T log T` without BBR input | ✓ (r2) |
| §3.22 | `x = 1, 4`; `M = ⌊√x⌋` | divisor sums `1`, `8`; `δ = √x − M ∈ [0,1)` | ✓ (r2) |
| §2.7 | `E = ℚ(i)`, `p = 2, 3, 5` | `1−T`, `1−T²`, `(1−T)²` | ✓ (r2) |
| all other rows (`psiAP`, `finite_order_hadamard`, §0.29, `davenport_moebius`, `dirichlet_polynomial_mean_square`, `DirichletGRH`, Weil formula, `dedekindZeta_residue_le`, `bounded_degree_brauer_siegel`, §2.13, §2.1, `pretentiousDist`, `HalaszCoefficientClass`, `shiu_bound`, Halász theorems, `smoothCount`, `landau_ramanujan`, `restricted_sathe_selberg`, Beurling, `divisorError`/`BBRFiniteInput`, Atkinson, moments, §§0.4/0.16/0.25) | as r2 | values as in the r2 table; statements byte-identical at this head | ✓ (r2) |

**Lean form.** The only change to `Suggested.lean` is the docstring of `selberg_zero_density` (lines 112–114); the statement is byte-identical to cd47617, so r2's one-tactic probe (26 `unsolved goals`, nothing closes) and its signature comparison (51 declarations, 0 dropped binders) carry over; the worker's `signatures.md` at this head shows the same elaborated type for `selberg_zero_density` (constants before character data, `IsPrimitive` filter, `analyticOrderAt … .toNat` multiplicities). Single `import Mathlib`, no `set_option`, no `lemma`, no sorry'd data (gate `sorry-data=0`).

**Headline coverage.** Unchanged since r2: every headline the README lists and that is statable at the pins is stated; Siegel's theorem remains correctly absent (imported from ImaginaryQuadraticClassNumber); the docstring names the non-statable ones.

**Seeded sample.** None of the fifteen sampled targets (0.13, 0.21, 0.23, 2.4, 2.5, 2.17, 2.30, 2.41, 2.51, 3.4, 3.17, 3.19, 3.20, 3.26, 3.30) lies in the changed lines; 2.4, 3.20 and 3.30 were verified by r2 at the same locators (kedlaya 1141–1145; hildebrandtenenbaum 23–60, 263; skorobogatovsofos 1320–1327), the rest by r1. Adjacent spot check this round: §0.22's "Theorem 8.7 proof, p.49, and Exercise 8.4.10, p.52" is right (kedlaya 2256, 2291: the step deferred to Exercise 8.4.10; 2416: Exercise 10 is "Prove (8.2.4)", printed p.52).

**Supplier order and ownership.** Dependency check as quoted at the top; the diff adds no `*Needs:*` edge, no supplier citation and no new object, so the r2 ownership checks stand.

## Not verifiable

- Montgomery, *Topics in Multiplicative Number Theory* (LNM 227), Theorem 12.1, and Montgomery, Invent. Math. 8 (1969): Springer, paywalled; the form used is verified in Bombieri's Astérisque 18 instead.
- Neukirch, *Algebraic Number Theory*, VII §10 (§2.7): Springer book, cited by locator; the Checks were verified independently in r2.
- Rosser–Schoenfeld (Project Euclid pages blocked) and Koukoulopoulos (AMS book), cited by number in unchanged passages: as in r2.
- The fourteen sample targets outside the diff whose sources were not re-opened this round (see above).

## Source issues

- **Misprint** in kedlaya ([53], Kedlaya's analytic number theory notes) at Theorem 10.2, printed page 59: the source says `a = 1` for even and `a = 0` for odd characters; it should be `a = 0` for even and `a = 1` for odd, as the same chapter uses after Lemma 10.3 on page 60; affects the proof (the `−(1−a) log x` term and the trivial-zero sum are swapped between the parities).
- **Error** in kedlaya at Theorem 10.11, printed page 63: the source says the implied constants are explicit and depend only on `A` and `ε`, with no coprimality or modulus range; it should require `(a, N) = 1` and `N ≤ (log x)^B`, and the constants are ineffective because they come from Siegel's `c(ε)`; affects a stated result.
