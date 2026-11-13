# FIX-PKG-LevelOneAutomorphicFormsForClassicalGroups~5

One review, `REV-PKG-LevelOneAutomorphicFormsForClassicalGroups~4`, with three findings. All three
were verified against the sources and the roadmap's own §§3.2–3.5, and all three were applied.
Only `packages/LevelOneAutomorphicFormsForClassicalGroups/README.md` and `sources.toml` changed.
`Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged, because no finding touches
a Lean declaration or a supplier gap.

## F01 (P1) — applied

**Verified.** The Layer 3 Examples listed `Δ_w[2] ⊕ [1]` and a rank-four-plus-trivial family as
"the regular holomorphic parameters" of `Sp₄`, and so left out the simple shape. The roadmap's own
§3.5 settles the list:

- The weights are `0, ±(k−1), ±(k−2)`.
- There is exactly one odd block, and its length is `d = 1`.
- Every even block has `n·d ≡ 0 mod 4`.

The odd block therefore has rank 1, 3 or 5:

- **Rank 3** leaves a remainder of dimension 2, which is impossible.
- **Rank 5** gives `π[1]`, the simple shape. Its `C_ψ` is trivial.
- **Rank 1** gives `[1]` with a remainder of dimension 4. That remainder is one of:
  - `Δ_{2k−3}[2]`. Here `χ = −1` and `ε = (−1)^{k−1}`, so it occurs exactly for even `k`.
  - An orthogonal `π′[1]`. Here `e = 1` gives `χ = −1`, while `ε = 1` because the pair has the same type. It never occurs.
  - `[4]`, which has half-integral weights.

`[5]` is excluded because its block length is `d = 5`. This matches CL14 line 10465–10475, where
Yoshida-type parameters get multiplicity 0. At `k = 20` Igusa's theorem gives
`dim M₂₀(Γ₂) = 5` and `dim S₂₀(Γ₂) = 3`, while Saito–Kurokawa gives `dim S₃₈(SL₂(ℤ)) = 2`.

**Change.** Old: two shapes, presented as the complete list. New: the Layer 3 Examples derive the
list from §3.5 and keep packet membership separate from global occurrence. They give three shapes
with their tests, and add the `k = 20` count `1 + 2 + 0`. §7.2 gains a `k = 20` negative-control
Check citing vdG08 Theorem 9.1, p. 19.

**Same pattern elsewhere.** The §7.2 Check at `k = 11` said only "no parameter passes". It now says
that `Δ₁₉[2] ⊕ [1]` fails the sign test, that the rank-four shape always fails, and that
`S₁₁(Γ₂) = 0` (vdG08 Theorem 9.1 and its proof, pp. 19–20) forces the simple-shape count to be 0.

**Unchanged.** §§3.2, 3.3, 3.5, the §7.2 `k = 10` Check and the Layer 7 Examples line on `S₁₀(Γ₂)`
were re-read and are consistent. The `Δ_{w,v}` convention is now used only for CT20's symplectic
classes with odd `w, v`: all 41 occurrences were checked. No dependency on SiegelModularForms was
introduced.

## F02 (P3) — applied

**Verified.** AutomorphicLFunctionsAndLocalFactors §AL.3.9.2, read at its open head, only defines
the strip-boundedness predicate. It also says that functions with a pole in the strip fail it.
§AL.3.9.4 (third bullet) carries the all-rank strip bounds for the completed pair `L`-function, and
holds them "outside fixed neighborhoods of the polar points". AnalyticNumberTheoryPartI §1.8 (iii),
on main, needs each `Λ_i` minus its singular parts to be bounded.

**Change.** AL.3.9.4 is now cited wherever AL.3.9.2 was:

- the supplier contract;
- the §2.6 *Needs* line;
- the Layer 2 Dependencies;
- the scope bullet, where "AL.3.9" became "AL.3.9.2 and AL.3.9.4".

§2.6 now derives hypothesis (iii) from AL.3.9.4: the function is bounded away from the poles at
`0, 1`, and the difference with its principal parts is holomorphic on the closed discs. A new Check
treats `π = π′ = 1`: the principal parts are `−1/s` and `1/(s−1)`, the predicate fails, and
`Λ + 1/s − 1/(s−1)` is bounded.

## F03 (P2) — applied

**Verified.** CT19a line 246 (Fact 1.2) allows an arbitrary group acting on a finite set; line 227
says the same. The general statement holds:

- `H/H_S` is in bijection with the orbit of `S` among the finitely many `g`-subsets, so each `σ_S` is a finite sum.
- Invariants and orientability depend only on the finite image of `H` in `Sym(Ω)`.

**Change.** "let a finite group `H`" became "let a group `H`, not necessarily finite", followed by a
sentence explaining why the sum is finite and why passing to the finite image changes nothing. A new
Check covers `ℤ` acting through a 3-cycle on `{1, 2, 3}`: degree 2 has `σ = e₁∧e₂ + e₂∧e₃ + e₃∧e₁`,
degree 3 fixes `e₁∧e₂∧e₃`, and the dimensions are `1, 1, 1, 1, 0`. No other passage in the roadmap
restricts this statement to finite groups (searched for "finite group").

## Adversarial pass on the added and changed statements

| Statement | Instances tried | Computed values | Result / change |
| --- | --- | --- | --- |
| Layer 3 Examples, shape list from §3.5 | odd block of rank 1, 3, 5; remainders `(n,d) = (4,1), (2,2), (1,4)` | rank 3 leaves a remainder of 2 ≢ 0 mod 4; `[4]` has weights `±3/2, ±1/2`; `[5]` has `d = 5 ≠ 1` | three shapes, each one forced |
| Simple shape `π[1]` | `C_ψ` order `2^{|I|−1}` with `|I| = 1` | order 1, so the test is automatic | contributes for every `k` |
| SK shape, sign test | `k = 10, 11, 20` | `χ = (−1)^{4/4} = −1`; `ε = i^{2k−2}` = `−1, +1, −1` | passes at 10 and 20, fails at 11 |
| Rank-four shape, sign test | `k₁−1 = k−1`, `k₂−2 = k−2` both weights of `π′`; odd positions in `{1,2}` = `{1}` | `e = 1`, `χ = −1`; `ε(π′ × 1) = 1` (same type, §1.8) | never occurs (agrees with CL14 line 10465–10475) |
| `k = 20` Check | Igusa ring `ℂ[E₄,E₆,χ₁₀,χ₁₂]` in weight 20 | monomials `E₄⁵, E₄²E₆², E₄²χ₁₂, E₄E₆χ₁₀, χ₁₀²` (5); `dim M₂₀(SL₂) = ⌊20/12⌋+1 = 2`; `S₂₀(Γ₂)` = 3; `dim M₃₈ = 3` (38 ≡ 2 mod 12), `S₃₈ = 2` | `3 = 1 + 2 + 0`; the old list gives 2 |
| Consistency over even `k = 4…34` | Igusa minus Siegel Φ, minus `dim S_{2k−2}(SL₂)` | general-type counts 0,0,0,0,0,0,0,0,1,1,2,2,3,4,5,6 | never negative; first simple class at `k = 20` |
| `k = 11` Check | odd weight below 35 | `dim M₁₁(Γ₂) = 0`; `Δ₁₉` exists (`dim S₂₀(SL₂) = 1`) but fails the sign test | simple-shape count forced to 0 |
| `k = 10` Check (kept) | Igusa weight 10 | `E₄E₆, χ₁₀`: `M = 2`, `S = 1`; `S₁₈(SL₂) = 1` | `1 = 0 + 1 + 0` |
| §2.6 hypothesis (iii) | `π′ ≇ π` (no pole); `π′ = π` (poles at 0, 1) | no-pole case: bounded on the whole strip (AL.3.9.4); pole case: bounded off discs, plus holomorphic on the closed discs | (iii) holds in both cases |
| §2.6 zeta Check | `Γ_ℝ(s)ζ(s)` near 0 and 1 | `Γ_ℝ(s) ∼ 2/s`, `ζ(0) = −1/2`, residue `−1`; `Γ_ℝ(1) = π^{−1/2}Γ(1/2) = 1`, residue `+1` | principal parts `−1/s`, `1/(s−1)`; matches Mathlib's `completedRiemannZeta_eq` (`Λ = Λ₀ − 1/s − 1/(1−s)`) |
| §8.3 generality | `ℤ` through `C₃`; `S₃`; `A₃`; `g = 0` and `g = 4 > |Ω|` | `ℤ`: 1,1,1,1,0; `S₃`: 1,1,0,0,0; `A₃`: 1,1,1,1,0; `σ_∅ = 1`; degree 4 gives 0 | the general statement agrees with the finite image |
| §8.3 non-orientable orbit over ℚ | `S₃`, `g = 2` | the transposition gives `c_S = −c_S`, so `c_S = 0` | contributes nothing, as stated |

## Checks

- **Elaboration.** Ran `lake env lean packages/LevelOneAutomorphicFormsForClassicalGroups/Suggested.lean` from the content checkout. It succeeded with four warnings, all `declaration uses 'sorry'`, at lines 80, 124, 137 and 149. No Tau Ceti module needed building.
- **Signatures.** A scratch copy elaborated `#check @name` for all eight declarations: `IsRegularIntegralForm`, `specialOrthogonalPoints`, `spinor_charpoly_obstruction`, `invariantAlternatingForms`, `thetaCoefficient`, `finrank_invariantAlternatingForms_of_rootless`, `invariantAlternatingForms_eq_bot_of_roots_span` and `exists_thetaCoefficient_ne_zero_of_rootless`. Each elaborated type matches its README statement and the worker's signature extraction, and no binder was lost. Nothing changed, since the file was not edited.
- **Dependency check.** Output:

  ```text
  depcheck: 236 roadmaps, 2150 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or moved line.
- **Citations.** `roadmaps resolve` on the README found no unresolved cross-roadmap citation and no unknown Lean name. Its external-library check was unavailable on that host. The Mathlib names used in this report were checked at the pin: `Mathlib/NumberTheory/LSeries/RiemannZeta.lean` lines 64, 85 and 90.
- **Gate failures.** None were listed for this round.

## Sources

- **Added** `vdG08`: G. van der Geer, *Siegel modular forms and their applications*, fetched through the sources service from arXiv:math/0605346v2 as an open-repository text, status certified. It is cited for Theorem 9.1 (Igusa), p. 19, with the Hilbert series of its proof on pp. 19–20, and supports the §7.2 Checks. It was not already in the manifest under another key; CL14 cites it as [vdG08] only for a different statement. The version note records that this arXiv version's numbering is the one used.
- **Missing texts.** No `needs-references.toml` was written: every text needed was read.

## Notes for the maintainer

- **Supplier section.** The roadmap now also cites AutomorphicLFunctionsAndLocalFactors §AL.3.9.4. That roadmap is already a supplier earlier in the merge order, so no new dependency edge arises.
- **Names.** No Lean name and no section number of this roadmap changed. SiegelModularForms consumes §§6.1, 6.4, 6.7 and 7.9, and those sections are unaffected.
- **Ownership.** No new construction was introduced, so there was nothing new to settle. The rank-five, Saito–Kurokawa and rank-four shapes are this roadmap's own level-one enumeration (§7.2). Igusa's ring is used only as a Check.
- **Suspicious text.** The review contained no instruction-like text.
