# FIX-PKG-LocalGaloisDeformationRingsPartII~5

Findings of `REV-PKG-LocalGaloisDeformationRingsPartII~4` (two findings, both P2). Both were verified against the cached source texts and applied. `Suggested.lean` and `metadata.toml` are unchanged. `README.md`, `sources.toml` and the top-level `gaps` list of `design/plan.json` were edited.

## F01 (P2) — applied

Verified. BHHMS23 line 859 (p. 19) fixes `𝔐̄` *together with a gauge basis* `β̄`, and Proposition 3.1.5 (lines 863–872) lifts that `β̄`. At `R = 𝔽` the only lift of `β̄` is `β̄` itself, so the old 1.4 claimed that every eigenbasis is gauge. Witness, computed from the definitions of 1.1: multiply the first vector of a gauge basis at summand `j + 1` (and its `f`-translates) by `1 + v`, which the descent action fixes. Then `C^(j)` becomes `diag(1+v,1)^{−1} C^(j)`, so `A^(j)` becomes `diag((1+v)^{−1},1)` or `diag(1,(1+v)^{−1})` times `diag(v², v)`. The resulting entry `v²(1+v)^{−1} = v² − v³ + …` is not a polynomial, so condition (i) fails.

Changes:

- **1.3.** "with residual eigenbasis `β̄`" → "with a **residual gauge basis** `β̄`, that is, an eigenbasis of `𝔐̄` whose matrices `A^(j)` satisfy over `𝔽` the two conditions below (BHHMS23, §3.1.1, p. 19; LLHL19, Definition 3.2.23, p. 26)".
- **New Checks in 1.3:** the `1 + v` non-gauge witness, and the normal form `[[x v², 0], [y v², z v]]` for shape `t^(2,1)`, with `[[v², 0], [v, v]] ∈ I · w t^(1,2) · I` as the negative control.
- **1.4.** It now says the lift is of "the residual gauge basis `β̄` of 1.3", with a sentence on `R = 𝔽`. It also states residual existence and uniqueness up to `T(𝔽)^f` (BHHMS23 p. 19, lines 855–858; LLHL19 Proposition 3.2.22, Definition 3.2.23, pp. 25–26). The route gains the residual step, and the Needs line gains 1.2. The torsor Check is reworded.
- **4.2.** Adds ", which is a residual gauge basis in the sense of 1.3 (… proof of Proposition 4.2.1, p. 28)". This is BHHMS23 line 1348. There is a new Check that the monomial basis for `w t^(2,1)` is gauge.

Pattern: "residual eigenbasis" occurred only in 1.3. The other place that fixes the residual basis is 5.2, which now says "with its monomial residual gauge basis". The 1.1 example `diag(e,d)·diag(v²,v)` is monomial and therefore gauge, so it needs no change.

## F02 (P2) — applied

Verified. BHHMS23 Propositions 3.1.7 and 3.1.9 (lines 878–909, 951–971, p. 20) cover only algebras topologically of finite type. The proof of Proposition 4.2.1 nevertheless applies Proposition 3.1.9 to complete local rings (lines 1349–1371, pp. 28–29). `𝒪⟦x₁,…,x₈⟧/ϖ = 𝔽⟦x⟧` is uncountable, so it is not a quotient of `𝔽[T₁..T_m]`. The complete local case is set up in the literature in LLHLM18 §5.1, p. 48, line 1818 (the open-disc ring over complete local Noetherian flat `𝒪`-algebras), and LLHLM18 Theorem 5.6, line 1839 (the expansion, in rank three and height two).

Changes:

- **2.1 hypothesis.** It now reads "either topologically of finite type or complete Noetherian local with residue field `𝔽`". `𝒪^rig_R` is glossed as the intersection inside `R[1/p]⟦u′⟧`.
- **2.1 text.** The undefined "supplier's extension" sentence is replaced by a sentence that the chart rings are of the second kind, with the LLHLM18 and BHHMS23 locators.
- **New 2.1 Check:** `𝒪⟦x⟧` is not topologically of finite type; `Σ p^{−i}(u′)^i ∉ 𝒪^rig_R`; base change along `x ↦ 0`.
- **gap:relative-monodromy-criterion.** Changed in the README and in the plan's `needs` with identical words, as the reviewer proposed: "… topologically of finite type or complete Noetherian local with residue field `𝔽`", and "base change along continuous `𝒪`-algebra maps between such rings, in particular to the ring of integers of a finite extension of `E`".

Pattern: "topologically of finite type" occurs nowhere else in the README. `design/plan.json` node statement at its line 838 (the 2.1 node) still says "topologically of finite type". The brief allows edits only to the plan's top-level `gaps`, so that node is left as it is.

## Checks

- **Elaboration.** Ran `lake env lean packages/LocalGaloisDeformationRingsPartII/Suggested.lean` from the content checkout. Output: `47:8: warning: declaration uses 'sorry'`, and nothing else. No `TauCeti.*` import, nothing to build.
- **Binder check.** Elaborated `#check @TauCetiRoadmap.LocalGaloisDeformationRingsPartII.crossing_prime` in a scratch copy. The type is `∀ {O} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O] {ϖ}, Irreducible ϖ → ∀ (n : ℕ) {d : ℕ}, 0 < d → ∀ (u : (MvPowerSeries (Fin (n + 2)) O)ˣ), Prime (X 0 * X 1 + C (ϖ ^ d) * ↑u)`. It matches README 5.3. Nothing changed.
- **Depcheck** (the brief's command): `depcheck: 236 roadmaps, 2140 edges, 0 problem(s)`. There is no UPWARD, CYCLE or `moved:` line.
- **`roadmaps resolve`** on the README: no cross-roadmap citation and no Lean name found nowhere.
- **Gaps.** A script compared the plan's `gaps` with the README's "must provide" lines. All 9 slugs agree word for word, and the counts are 9 and 9.
- **Sources.** `sources.toml` parses.
  - LLHLM18: the locator gains "§5.1 and Theorem 5.6, p. 48", and `cited_for` gains 2.1.
  - LLHL19: the locator gains "Proposition 3.2.22, Definition 3.2.23 and Remark 3.2.25, pp. 25–26", and `cited_for` gains 1.3, 1.4 and 4.2.
  - Page markers checked: LLHL19 lines 914, 953 and 990; LLHLM18 lines 1815 and 1845.
  - No new work was fetched, and `needs-references.toml` was not written.
- **Ownership.** `roadmaps grep` was run for the relative open-disc ring (`rig_R`, "relative open-disc", "monodromy derivation") and for "gauge basis"/"gauge" with Kisin or eigenbasis. These searches covered main and the 438 open heads; the board packages were searched by file grep. The only hits are in this package. The supplier FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.4.6 (open head, its line 5714) treats scalar coefficients only, so the gap is still needed. No name of another roadmap changed.

## Adversarial pass (changed statements)

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 1.3 residual gauge basis | `R = 𝔽`; `β̄` gauge with `A = diag(v²,v)`; `β̄′` = `1+v` rescaling | lift of `β̄` is `β̄`, meets (i)–(ii); `A′ = diag((1+v)^{−1},1)·diag(v²,v)`, entry `v² − v³ + v⁴ − …` | old 1.4 false at `β̄′`; new hypothesis excludes it | F01 |
| 1.3 normal form, shape `t^(2,1)` | general `A` meeting (i)–(ii) over `𝔽`; `[[v²,0],[v,v]]` | `I diag(v²,v) I` entries: `v²(aa′+bc′)`, `v(av b′+bd′)`, `v²(cva′+dc′)`, `v(cv²b′+dd′)`, so `A = [[xv²,0],[yv²,zv]]`; `[[1,−v],[0,1]]·[[v²,0],[v,v]]·[[1,−1],[0,1]] = [[0,−v²],[v,0]] ∈ I w t^(1,2) I` | degree bounds alone insufficient; shape needed | Check added |
| 1.4 residual existence/uniqueness | `f = 1`; `R = 𝔽[ε]` | ambiguity `T(𝔽)` for residual; `(1+ε𝔽)²`, dimension `2f` for lifts | consistent with 5.7's `2f` | sentence added |
| 4.2 monomial basis gauge | `t^(2,1)`, `w t^(2,1)`, `t^(1,2)` with `D = diag(d₁,d₂)` | `diag(d₁v², d₂v)`: (1,2) bound `0`, entry 0; `[[0,d₁v],[d₂v²,0]]`: pivots `1 = ν₂`, `2 = ν₁`, diagonal bounds `1`, entries 0; `diag(d₁v, d₂v²)`: off-diagonal bounds `1`, entries 0 | gauge in all three | clause and Check |
| 2.1 ring class | `𝒪⟦x₁..x₈⟧`; `𝒪_{E′}`; `𝔽⟦x⟧` | `p`-adically complete (coefficientwise limits, `⋂ pⁿR = 0`), torsion-free over the DVR; `R/ϖ` uncountable, not a quotient of `𝔽[T₁..T_m]`; `𝒪_{E′}` finite over `𝒪`, of the first kind (residue field `𝔽′` may exceed `𝔽`); `𝔽⟦x⟧` not flat, `R[1/p] = 0` | charts in scope; non-flat excluded | F02 |
| 2.1 `𝒪^rig_R` | `Σ p^{−i}(u′)^i` at `n = 1, 2` | level 1: `p^{c+i}p^{−i} ∈ R`; level 2: `p^{c+⌊i/2⌋−i}` unbounded below | in level 1, not in the intersection | Check added |
| 2.1 derivation over complete local `R` | series of the proof of Proposition 3.1.9 | `Z_i ∈ v^{(N−1)p^{i−1}} p^{−i(h−1)} M(R⟦v⟧)` (BHHMS23 line 978): the `v^m` coefficient sums finitely many `i ≤ 1 + log_p(m/(N−1))`, with denominators of `p`-exponent `O(log m)`, inside every `R⟦u′,(u′)^n/p⟧[1/p]` | coefficientwise convergence, no topology on `R` used | none |
| gap: criterion over complete local `R` | `R = 𝒪⟦x⟧/(x²)` (free over `𝒪`, local, residue `𝔽`) | `R[1/p] = E[x]/(x²)` is itself a finite `E`-algebra point; a field-valued check would not see `x` | criterion correct with Artinian points, as the gap words it | none |
| 5.2 fixed basis | `f = 1`, `U₁`: residual `A₁ ≡ [[e v², 0],[0, d v]] = D U₁` | monomial, gauge by row 4 | consistent | clause |

## For the maintainer

- `design/plan.json` node 2.1 (its line 838) still restricts to rings topologically of finite type. The brief limits plan edits to the `gaps` list. The README and the gap are now wider than that node.
- The supplier FiniteFlatGroupsAndIntegralPadicHodgeTheory is asked, through the unchanged slug `relative-monodromy-criterion`, for the complete local Noetherian case as well. No other roadmap cites this slug.
- No Lean name, section number or id changed, so nothing that cites this roadmap is affected.
- The pinned Mathlib and Tau Ceti were not re-searched, because no Lean statement changed.
- No suspicious instruction was found in the review text.
