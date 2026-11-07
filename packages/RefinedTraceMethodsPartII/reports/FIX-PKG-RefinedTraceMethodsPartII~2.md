# Repair report: FIX-PKG-RefinedTraceMethodsPartII~2

Resolves the three findings of `REV-PKG-RefinedTraceMethodsPartII` on the package `packages/RefinedTraceMethodsPartII`. All three were verified against the supplier heads and the pins and applied; the pattern of F02 reached two further places (the §1.2 Check over ℤ and the Lean module docstring).

## F01 (P2) — applied

Old: KTheoryFiniteLocalFields §5.16a cited for the big Witt power-series comparison at README lines 20, 41, 101, 661, 670. New: QWittVectors §1.4a owns the comparison `γ_N` (its head, line 230; KTheoryFiniteLocalFields head Scope line 14 defers to it); the KTheoryFiniteLocalFields contract now lists its Conventions (series groups `𝕎_N(k)`, `𝕎(k)`, substitution Verschiebung, Teichmüller class) instead of §5.16a; Layer 7 Dependencies name "§§5.16, 5.17 and Conventions; QWittVectors §1.4a"; the Scope bullet for QWittVectors gains the comparison. The Witt-sign witness `γ_2(2,−1) = 1 + 2t + 3t²` is QWittVectors §1.4a's own Check (head line 252), so every use is supported. `roadmaps resolve` no longer lists §5.16a.

## F02 (P2) — applied

Old: "the length over W(k)" asserted for every perfect 𝔽_p-algebra k (README §1.1 Sylvester bullet, §6.2 Checks r = 0 and "for every r"). New: each is scoped to a perfect field k, with the reason (each V-graded piece of `W_T(k)` is then the simple W(k)-module k) and negative controls: `k = 𝔽_p × 𝔽_p` gives length `2·#T`; `𝔽_3 × 𝔽_3` with (2,5,0) gives `ℤ/9 × ℤ/9` of length 4 over `ℤ_3 × ℤ_3`; the perfection of `𝔽_3[t]` gives infinite length already at `K_0 = W_{{1}}(k) = k`. Pattern: the §1.2 Check "a quotient of length 3 over W(ℤ)" (`W_T(ℤ)` has infinite length) now counts coordinates and compares orders over 𝔽_2 (8 versus 4); the Lean module docstring now says "over `W(k)` … for a perfect field `k`". The docstring of `ncard_cuspCoprimeSet` already had the field hypothesis; no declaration changed.

## F03 (P3) — applied

Old: README contract paragraph and Lean docstring (lines 18, 30) said the pins have no predicate for perfectoid rings. New: README names `TauCeti.Perfectoid.IsIntegralPerfectoid p A` (TauCeti/RingTheory/Perfectoid/Integral.lean, `class` at line 76 of the pinned Tau Ceti 2fd255d9, fields `exists_adic_element`, `frobenius_surjective`, `theta_kernel_principal`, Bhatt–Morrow–Scholze Definition 3.5) and says the pins lack big Witt vectors and K-theory; the Lean docstring's list of missing carriers drops "perfectoid rings" and names the class, and Riggenbach's theorem now "lacks algebraic K-theory and big Witt vectors". Statability verdicts unchanged.

## Checks

- Elaboration: `lake env lean` on `packages/RefinedTraceMethodsPartII/Suggested.lean` from the content checkout, exit 0, exactly three warnings `declaration uses 'sorry'` (lines 61, 69, 77). The file imports only `import Mathlib`, so no `TauCeti.*` module needed building.
- `#check @name` scratch file (copy of Suggested.lean plus one `#check` per declaration): `cuspCount`, `cuspTruncationSet`, `cuspCoprimeSet : ℕ → ℕ → ℕ → …`; `ncard_cuspTruncationSet` and `ncard_cuspCoprimeSet` carry `2 ≤ a`, `2 ≤ b`, `a.Coprime b` and `r` explicitly; `card_noCyclicRepetition` carries `1 ≤ m`. Identical to the signatures recorded before this round; the README statements (§1.1, §1.4) match. A `#check @TauCeti.Perfectoid.IsIntegralPerfectoid` in the same scratch file fails only because the file imports no Tau Ceti module; the class was verified by reading the pinned file.
- Dependency gate: `depcheck: 242 roadmaps, 2486 edges, 0 problem(s)`; no UPWARD, CYCLE or `moved:` line for RefinedTraceMethodsPartII.
- `roadmaps resolve` on the README: "Cross-roadmap citations found nowhere: None" and "Lean names found nowhere: None" (the §5.16a lead is gone; `BigWitt.TruncationSet` resolves to QWittVectors' `Suggested.lean` at its open head).
- Gate failures listed in the brief: none.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §1.1 length clause | k = 𝔽_3, (2,5,0); k = 𝔽_3 × 𝔽_3; k = perfection of 𝔽_3[t] | T = {1,3}, `W_T(𝔽_3) = ℤ/9`, length 2 = ½·1·1·4; product ring: `ℤ/9 × ℤ/9` over `ℤ_3 × ℤ_3`, length 4 = 2·#T; non-noetherian k: `W_{{1}}(k) = k`, infinite length | formula holds exactly for fields | scoped to perfect fields, controls added |
| §1.2 Check over ℤ | S = {1,2,3,4}, n = 2, over ℤ and over 𝔽_2 | wrong T = {1,2,3}: 3 coordinates, 8 elements over 𝔽_2; right T = {1,3}: 2 coordinates, `W_{{1,3}}(𝔽_2) = W_1(𝔽_2) × W_1(𝔽_2) = 𝔽_2²`, 4 elements (s(1) = s(3) = 1 since 2, 6 ∉ T) | counts agree | "length over W(ℤ)" replaced by coordinate and order counts |
| §6.2 Checks | (2,3,0) over 𝔽_2; (2,5,0) over 𝔽_3 and 𝔽_3 × 𝔽_3 | `W_{{1}}(k) = k`, length 1 = ½·1·1·2; ℤ/9 (length 2); ℤ/9 × ℤ/9 (length 4) | agrees with Theorem A, length claims need a field | field hypothesis and control added |
| Witt sign witness after repointing | (2,−1) at N = 2 over ℤ | `γ_2(2,−1) = (1−2t)^{−1}(1+t²)^{−1} = 1 + 2t + 3t²`; ghosts (2, 2) | equals QWittVectors §1.4a's Check | citation only |
| `IsIntegralPerfectoid` at the pin | A = 0; A = ℤ_p | zero ring: `π = 0`, `0^p ∣ p` and 0-adically complete, Frobenius surjective on 0, θ clause vacuous (p is a unit); ℤ_p: π = p, Frobenius on 𝔽_p surjective, ker θ = (p) principal | BMS Definition 3.5 as the README now says | none |

## Ownership and citations

Every cross-roadmap citation touched was resolved at today's heads: KTheoryFiniteLocalFields (headings 5.16 and 5.17 present, no 5.16a; Scope and Conventions as cited), QWittVectors (§1.4a present with the `γ_N` laws and the `γ_2(2,−1)` Check). No new target, supplier gap or declaration was added; `design/plan.json`, `metadata.toml` and `sources.toml` are unchanged. Ownership against open pull requests beyond these two suppliers was not re-checked this round, since no new object was introduced.

## For the maintainer

- No Lean name changed; nothing another roadmap cites moved.
- The review's Source issues (hn-cusp line 36–37 and hesselholt-cusp-polytopes Corollary 1.7 overclaiming the length formula for non-fields; speirs-axes Lemma 15 and Theorem 1 at p = 2; akn-delta Proposition 8.6's bound) are consistent with what the README already states; nothing in sources.toml needed changing.
- No fetched or quoted text contained instructions; nothing suspicious to report.
