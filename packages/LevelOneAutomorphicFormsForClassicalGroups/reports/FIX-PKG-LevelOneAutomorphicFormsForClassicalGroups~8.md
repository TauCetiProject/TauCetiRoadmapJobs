# FIX-PKG-LevelOneAutomorphicFormsForClassicalGroups~8

This round repairs the four findings of `REV-PKG-LevelOneAutomorphicFormsForClassicalGroups~7`. Each
was checked against CT20, CL14 and Tai17 in the sources cache, and against the head of
ModularityAndLanglandsExtensions. All four are correct. F01, F03 and F04 are applied. F02 is applied,
and the same defect is also repaired in §6.8.

No section was renumbered, and no section, layer or target id was dropped. No Lean declaration changed
its name or its type. The supplier-gap list in `design/plan.json` is unchanged.

## F01 (P2) — applied

**Verified.** As stated, §2.17 lets `F` be any test function of §2.1, and then it is false. Take
`F = −F₁`, `S = ∅`, `U = 1`, `δ = 0`, `m = 1`, `t = 1`. Then `β = −C^{F₁}(1, 1)`. By §2.6, `C^{F₁}(1, 1)`
is at least `B_f^{F₁}(1, 1)`, and only one prime-power term of that sum is nonzero: `p = 2`, `k = 1`,
since `2 log 2` and `log 3` both exceed 1. That term is `F₁(log 2)(log 2)/√2 = 0.0399753812 > 0`
(computed). So `β < 0`, although the trivial class exists. The two positivity conditions are CT20
lines 674–675 for (POS) and lines 1548–1551 (§4.3, p. 38) for the conditional one.

**Changed.**
- §2.17: "let `S` …" → "let `F` be a test function of §2.1 satisfying (POS) …", written `β^F_Q`. The
  proof notes that `F ≥ 0` gives `B_F ≥ 0`, which §2.14 needs.
- §2.17, GRH variant: "with `G_ℓ` under GRH" → any test function with `F ≥ 0` and `F̂ ≥ 0` on `ℝ`, in
  particular `G_ℓ` for `ℓ > 0`.
- §2.17: the negative-control Check above was added, and §2.2 was added to *Needs:*.

**Same pattern elsewhere.**
- §2.7: the conditional form under GRH was only a Check; it is now a stated part of the theorem, with
  its one-line reason (a zero `1/2 + iγ` sits at the real point `ξ = −γ/(2π)`). The GRH variant of §2.17
  uses it.
- §2.9: defines `β^F_Q` for a test function `F` instead of "for real `A_F, B_F`".
- §§2.14 and 2.16: now use `β^F_Q`; §2.14 names its test function.
- §2.16: extended to `F ∈ {F_ℓ, G_ℓ}`, because §5.8 makes `G_ℓ` exclusions and §2.16 was stated for
  `F_ℓ` only. The supplier's §4.17 already supplies the `G_ℓ` scalars.
- §5.8: now uses the conditional form of §2.17, and its *Needs:* gains §2.16.
- Every other user of §2.17 already works with `F_ℓ`, which satisfies (POS) by §2.2: §§2.20, 2.21,
  4.15, 5.1, 5.3–5.5 and 5.9.

## F02 (P2) — applied

**Verified.** The README tables of §7.8 and §7.9 reproduce CT20 Table 6 (lines 2343–2375, p. 58) and
Table 5 (lines 2378–2413, p. 59) entry for entry: 29 and 32 rows, with the columns permuted.

**Changed.**
- §7.4 now names the set `A_reg` of the 58 passing eigenparameters and the weight map
  `k(ψ) = (a₁ + 1, …, a_g + g)`.
- §7.8: the table → a statement in terms of `A_reg`. `dim S_k(Γ_g)` is the size of the fibre of
  `ψ ↦ k(ψ)` over `k`; the map is injective on the 29 nonscalar members. Table 6 is cited by locator.
- §7.9: the table → `dim S_k(Γ_g) = |A(g, k)|`, where `A(g, k)` is the scalar members of `A_reg` at
  `(g, k)` plus the three singular parameters of §§7.5 and 7.7. This gives 29 + 3 = 32 in all. Table 5
  is cited by locator.
- New Checks: §7.8 gains the genus distribution `3, 7, 4, 5, 4, 6` over genera 3 to 8, and the genus-2
  witness `Δ₁₉,₇ → (14, 8)`. §7.9 gains the two members of `A(4, 12)`, and the case `(24, 13)`, which
  lies outside `A_reg`.
- Three references to "row" or "table of §7.9" were reworded: the Layer 3 Examples, the §7.6 Checks
  and the §8.9 Checks.
- The `Suggested.lean` docstring said "eigenparameter rows"; it now says "eigenparameters".

**Same pattern elsewhere.** §6.8 had the same defect. Its 13-row table, grouped by degree, reproduced
CL14 Table C.5 (lines 16632–16658, p. 440), which lists the 24 parameters ranked by degree. The table
is removed. §6.8 now states Théorème E by locator (p. 12), together with properties that pin the
parameters down:
- they are pairwise distinct;
- each has dimension 24 and infinitesimal weights `±11, …, ±1, 0, 0`;
- every block is among the eleven classes of §5.3;
- the parameters of degree 0 and 12 are `[23] ⊕ [1]` and `Δ₁₁[12]`;
- the degree rule and the degree distribution are kept.

The individual Checks of §6.8 are kept. The §4.12 trace matrix is not a reproduction: it is 25 values
computed from the formula stated there, so it stays.

## F03 (P2) — applied

**Verified.** CT20 Remark 3.10 (line 1369, p. 33) applies to "`G` as in Theorem 6". Theorem 6 (lines
515–516, p. 12) covers `SO_n` with `n ≤ 17` and `Sp_{2n}` with `2n ≤ 14`. `Sp₁₆` falls under Theorem 7
(line 525), which gives no nonvanishing statement.

**Changed.**
- §4.18: the nonvanishing clause is split from the identification of the masses and restricted to the
  groups of Theorem 6: `SO_d` with `d ≤ 17` whose real points admit discrete series (CT20 line 331),
  and `Sp_{2n}` with `n ≤ 7`.
- The twelve-zeros Check is scoped to those groups.
- New Check: `Sp₁₄` is in range (`14 ≤ 14`) and `Sp₁₆` is not (`16 > 14`).

No other passage claims that masses are nonzero.

## F04 (P2) — applied

**Verified.** Tai17 Lemma 4.1.1 (lines 2313–2315, p. 305) gives only a unique `G(ℤ_p)`-spherical
member, with trivial character. For `SL₂` and the Frobenius `diag(−1, −1, 1)` in `SO₃(ℂ)`, the
centralizer is `S(O₂ × O₁) ≅ O₂`; with the centre trivial, `S_φ ≅ ℤ/2`. So the packet has 2 members, of
which 1 is spherical.

**Changed.**
- §3.3: the sentence "unramified packets are singletons" → a stated assertion: at each prime there is
  exactly one `Sp_{2g}(ℤ_p)`-spherical member, and its character is trivial for an unramified
  Whittaker datum.
- Its route is the endoscopic character identities of ModularityAndLanglandsExtensions §3.15 plus the
  twisted fundamental lemma among that roadmap's trace inputs. Both are already on §3.3's *Needs:*
  line.
- New Check: the `SL₂` example, whole packet 2 against spherical part 1.

No other passage makes the singleton claim.

## Adversarial pass (changed statements)

| Statement | Instances | Values computed | Result / change |
|---|---|---|---|
| §2.17 with (POS) | `F = −F₁`, `S = ∅`, `U = 1`, `δ = 0`, `m = t = 1` | `β = −(A − J(1))`; `B_f^{F₁}(1,1) = 0.0399753812` (only `p = 2`, `k = 1`) | without (POS) the trivial class would be excluded; hypothesis added; Check added |
| §2.17 with (POS) | `F = F₁`, same `Q` | `β = A_{F₁} − J_{F₁}(1) ≥ 0.03997 > 0` | no false exclusion |
| §2.17 monotonicity step | `B_F = ∫F` with `F ≥ 0` | `B_F ≥ 0`; the new terms `−B_F(1 − ε)/4 ≤ 0` | §2.14 applies; stated |
| §2.7 conditional form | `ρ = 1/2 + iγ` | `ξ = (1 − 2ρ)/(4πi) = −γ/(2π)`, real; at `e⊥ = 1` the central zero gives `ξ = 0` and the term `F̂(0) = B_F` | pairwise bound holds under GRH |
| §2.7 conditional form | `G_ℓ` | `Ĝ_ℓ ≥ 0` on `ℝ` (§2.2), but (POS) fails near `i/(4π)` (§2.1) | the GRH hypothesis is needed for `G_ℓ` |
| §2.7 conditional form | `F = 0` | `0 ≥ 0` | holds |
| §2.16 extended to `G_ℓ` | exact `[[1, −2], [−2, 1]]`, `t = (1, 1)` | value `−2` | witness valid for either family |
| §2.16 extended to `G_ℓ` | enclosure `[−1/100, 1/100]` | upper end `> 0` | no conclusion, as before |
| §3.3 local fact | `SL₂`, Frobenius `diag(−1, −1, 1)` | `|π₀(O₂)| = 2`; centre of `SO₃` trivial; packet 2, spherical 1 | singleton claim false; spherical claim true |
| §3.3 global test | `Δ_w[2] ⊕ [1]` | `χ = −1`, `ε = i^{w+1} = (−1)^{k−1}` | unchanged; holds for even `k` |
| §4.18 nonvanishing range | `Sp₁₄`; `Sp₁₆` | `14 ≤ 14` true; `16 ≤ 14` false | clause scoped to Theorem 6 |
| §4.18 nonvanishing range | `SO₁₃`, `SO₁₇` | both `≤ 17`, both have discrete series; `6 + 6 = 12` zeros | in range |
| §4.18 nonvanishing range | `SO₃` | masses `−1/12, 1/4, 1/3` on `P₁` | all nonzero; consistent |
| §7.4 `k(ψ)` | `Δ₁₉[4] ⊕ [1]` | `a = (11, 10, 9, 8)`, `k = (12, 12, 12, 12)` | dominant with `k_g = 12 > 4` |
| §7.4 `k(ψ)` | `O^odd(24,16,8)` | `a = (12, 8, 4)`, `k = (13, 10, 7)` | dominant |
| §7.8 injectivity | the 29 nonscalar weights | 29 distinct; genera `3:3, 4:7, 5:4, 6:5, 7:4, 8:6` | injective; Check added |
| §7.8 genus 2 | `Δ₁₉,₇` | `∧²` weights `0, ±13, ±6`, so `k = (14, 8)`, `k₁ = 14 > 13` | genus-2 vanishing consistent |
| §7.9 `A(g, k)` | `(4, 12)` | 2 members, both with `a = (11, 10, 9, 8)` | `dim = 2`; scalar map not injective |
| §7.9 `A(g, k)` | `(12, 13)`: `Δ₁₉,₇[6] ⊕ [1]` | `a = (12, …, 1)`, `k = 13 > 12` | in `A_reg` |
| §7.9 `A(g, k)` | `(24, 13)` | `13 < 24`, so singular; dimension `24 + 25 = 49` | needs §7.7; Check added |
| §7.9 `A(g, k)` | `(g, 0)` | `A = ∅` | `S₀ = 0` |
| §7.9 `A(g, k)` | `(1, 12)` | `{Sym²Δ₁₁}` | `dim S₁₂ = 1` |
| §7.9 counts | weight-12 counts for `g = 1, …, 12` | `1,1,1,2,2,3,3,4,2,2,1,1` = differences of §8.2's `1,2,3,4,6,8,11,14,18,20,22,23,24` | consistent |
| §7.9 counts | per weight | weight 8: 1, weight 10: 4, weight 12: 23, weight 13: 4; total 32 = 29 + 3 | consistent |
| §8.9 Check | `Δ₁₇[8] ⊕ [1]` | genus 8, `a = (12, …, 5)`, `k = 13`; `A(8, 13) = {Δ₂₁,₁₃[4] ⊕ [1]}` | the parameter is excluded |
| §6.8 invariants | `[23] ⊕ [1]` and `Δ₁₁[12]` | weights `±11, …, ±1, 0, 0` for both | as stated |
| §6.8 invariants | all 24 blocks | among the 11 classes of §5.3 | as stated |
| §6.8 degree rule | `Δ₁₉[4] ⊕ [1] ⊕ [15]` | `[15]` gives `g₀ = 4`, `[1]` gives 11; least is 4 | as stated |
| §6.8 degree distribution | — | `1,1,1,1,2,2,3,3,4,2,2,1,1`, sum 24 | as stated |

## Checks run

- **`lake env lean packages/LevelOneAutomorphicFormsForClassicalGroups/Suggested.lean`**, run from the
  content checkout: exit 0. The only output was four `declaration uses 'sorry'` warnings, at lines 85,
  129, 142 and 154. No Tau Ceti module needed building.
- **`#check @name`** for all 8 declarations, in one scratch file elaborated once: exit 0. Each type
  matches its README statement and the supplied signatures. Every binder is present: regularity and
  all primes in the spinor theorem; even, unimodular, positive definite, rank 24 and rootless in both
  rootless theorems; the root span and `0 < g` in the vanishing theorem. Only the module docstring of
  `Suggested.lean` changed.
- **Dependency check:** `depcheck: 223 roadmaps, 1988 edges, 0 problem(s)`. There is no UPWARD, CYCLE
  or moved line.
- **`roadmaps resolve`** on the README: no cross-roadmap citation and no Lean name found nowhere.
- **Ownership:** this round adds no new construction. The conditional §2.7 belongs to the Stark–Odlyzko
  inequality, which this roadmap already owns. The local spherical-member fact is proved here from
  ModularityAndLanglandsExtensions §3.15 (read at its open head) and that roadmap's trace inputs.
- **`sources.toml`:** the CT20 locator gains Remarks 2.10 and 3.10 and sections 2.4.4–2.4.5 and 4.3.
  The Tai17 locator gains Lemma 4.1.1 (section 4.1.1, p. 305). Nothing was fetched and nothing is
  missing.

## For the maintainer

- SiegelModularForms (an open pull request, a consumer) cites §7.9 for comparison Checks, in words
  such as "its rows of degree `2`" and "no row of degree `4` and odd weight there". The id §7.9 is
  unchanged and still carries the same dimensions, now as the sets `A(g, k)`. Its "row" wording will
  read loosely against the new text; no citation breaks.
- The review's two human-reviewer items (KT87's uncertified status, and BoechererNote) needed no
  change.
- None of the reviewed text contained instructions.
