# FIX-PKG-LocalGaloisDeformationRingsPartII~6

Review settled: `REV-PKG-LocalGaloisDeformationRingsPartII~5` (three findings). Files changed: `packages/LocalGaloisDeformationRingsPartII/README.md`, `packages/LocalGaloisDeformationRingsPartII/sources.toml`, `packages/LocalGaloisDeformationRingsPartII/design/plan.json` (the `needs` of one entry of the top-level `gaps` list only). `Suggested.lean` and `metadata.toml` are unchanged.

## F01 (P2) — applied differently

Verified. 1.1 and the gap gave `Y^{[0,h],τ}(R)` only for complete local `R`. LLHLM23 defines it over every `p`-adically complete `R` (`LLHLM23 line 3360`; Definitions 5.1.1, 5.1.3, 5.1.6, pp. 74–75), and Proposition 7.1.3, p. 98, gives the matrix only "if `𝔐` admits an eigenbasis".

Old → new. gap:rank-two-descent-kisin-modules (README and plan): complete local `R` only → also the groupoid, eigenbases and base change over every `p`-adically complete `R`. 2.1 defines the objects for both kinds; its matrix statements need an eigenbasis. 2.2 now reads "with an eigenbasis `β`". New 2.1 Check `𝒪⟨T⟩`. *Needs* of 2.1 and Layer 2 list the gap.

Why this differs from the suggested repair:

- The suggestion made gap:relative-monodromy-criterion the source of the category. That gap takes the modules as input and defines nothing, so the category had no owner. Ownership now sits with `LocalGaloisDeformationRings` §6.9, which already owns these modules in the complete local case.
- The suggestion said "defined by the conditions of 1.1". 1.1 states no conditions; it uses the imported category. The 2.1 text now states the conditions with the LLHLM23 locator.
- The sentence "such a module need not have an eigenbasis" is not adopted. Read literally, Definition 5.1.3 requires `𝔐^(j′)/u′ ≅ τ^∨ ⊗ R`. Then each isotypic piece modulo `v` is built up from free modules, so it is free. Nakayama over `R⟦u′⟧` then gives an eigenbasis. Only a Zariski-local reading of the type condition, which LLHLM23 allows in its proof of 7.1.3 (`LLHLM23 line 4397`), makes eigenbases fail to exist. So the README makes no claim either way: the matrix statements are made for a chosen eigenbasis.
- The suggested "Layers 5–7 apply 2.1–2.3 only to rings of the second kind" is already covered by the existing sentence "The chart rings of Layer 5 are of the second kind".

Pattern search: "`Y^{[0,h],τ}(`" occurs at 1.1, 1.2, 1.4, 2.1, 4.2 and in the gap line. 1.1, 1.2 and 1.4 take `R` complete local or `𝔽`, and 4.2 takes `𝔽`, so they are unaffected. gap:relative-monodromy-criterion already names both ring classes and needs no change.

## F02 (P3) — applied differently

Verified with `LLHL19 lines 755–768` (Proposition 3.2.9, pp. 20–21). When `f = 1`, the rescaled summand also enters on the right through `s*_0 φ(I)^{−1} (s*_0)^{−1}`. For `s = 1` this gives `diag((1+v)^{p−1}v², v)`, a polynomial, so the old "not a polynomial" was false there.

Old → new. "Multiply the first vector … (and its translates by `f`)" → the change of eigenbasis with the `f`-periodic tuple `I = diag((1+v)^{−1},1)` at indices `≡ j+1 (mod f)` (Remark 3.2.10). The new matrix is `I^(j+1) A^(j) s*_j φ(I^(j))^{−1}(s*_j)^{−1}`:

- `f ≥ 2`: `diag(v²(1+v)^{−1}, v)`, not a polynomial;
- `f = 1, s = 1`: `diag((1+v)^{p−1}v², v)`, pivot of degree `p+1 > 2`, so the degree condition fails;
- `f = 1, s = w`: `diag(v²(1+v)^{−1}, (1+v)^p v)`.

The review's values are confirmed. The wording is via the tuple because a "raw first vector and its `σ_f`-translate" is ambiguous when `s_τ = w`. Taking the first vector at both summands breaks `f`-periodicity: for `f = 1`, `s = w` it gives `A′^(0) = diag((1+v)^{p−1}v², v) ≠ A′^(1) = diag(v², (1+v)^{p−1}v)`. The Check of 4.2 that cites "the `1 + v` rescaling of 1.3" still holds: none of the new matrices lies in `T(𝔽)w̃_j`. LLHL19 locator: added "Proposition 3.2.9 and Remark 3.2.10, pp. 20-21".

## F03 (P3) — applied

Old → new. BHHMS23 `locator`: "Remarks 2.3.5, 2.3.6, 4.2.5" → "Remarks 2.3.5, 2.3.6, 2.4.5, 3.1.2, 3.1.3, 3.2.2, 4.2.5". All four were checked in the text: `BHHMS23 lines 750, 833, 838, 1014`.

Pattern repair: a script pulled every numbered statement the README cites for every source key and looked it up in that key's locator. Before the edits the only misses were these four. After the edits there are none, apart from a parsing artefact: "Proposition 2", read out of "Proposition 7.1.3(2)". New locators this round:

- LLHLM23: "Definitions 5.1.1, 5.1.3 and 5.1.6, pp. 74-75; Proposition 7.1.3, p. 98". `cited_for` gains 2.1 and gap:rank-two-descent-kisin-modules.
- LLHLM23 `version_note`: Remark 5.1.4, equation (5.4) and Proposition 7.1.3 carry the numbers BHHMS23 cites (`BHHMS23 lines 819, 831, 904`).
- LLHL19: as in F02.

## Checks

- **Elaboration.** `lake env lean packages/LocalGaloisDeformationRingsPartII/Suggested.lean`, run from the content checkout: one message, `47:8: warning: declaration uses 'sorry'`. No `TauCeti.*` import, so no module build was needed.
- **Binder check.** A scratch copy with `#check @crossing_prime` elaborated to: `∀ {O} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O] {ϖ : O}, Irreducible ϖ → ∀ (n : ℕ) {d : ℕ}, 0 < d → ∀ (u : (MvPowerSeries (Fin (n + 2)) O)ˣ), Prime (X 0 * X 1 + C (ϖ ^ d) * ↑u)`. This is the generality of README 5.3; no binder was lost and nothing changed.
- **Dependency check** (the brief's command): `depcheck: 206 roadmaps, 1902 edges, 0 problem(s)`. No UPWARD, CYCLE or `moved:` line.
- **Citations.** `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- **Gaps.** `design/plan.json` against the README's "must provide" lines: 9 slugs, and every supplier and every `needs` string is identical. The changed `needs` string occurred once in `plan.json`, so nothing else in the file moved.
- **Style.** No LaTeX delimiters, process words or machine paths in the changed text.

## Adversarial pass (changed and new statements)

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 2.1: groupoid over `R` of both kinds | `R = 𝒪` (both kinds); `𝒪⟨T⟩`; `R = 0`; `h = 0` | `𝒪`: `𝔖_{L′,𝒪} ≅ ∏ 𝒪⟦u′⟧`, projective = free; `𝒪⟨T⟩`: defined by LLHLM23 §5.1 and not by 1.1; `R = 0`: one object, derivation unique; `h = 0`: cokernel killed by `E⁰ = 1`, so `φ` is an isomorphism | consistent with LLHLM23 Definitions 5.1.1 and 5.1.3 | text added |
| 2.1 Check `𝒪⟨T⟩` | `T`, `1 − T` | reductions `T`, `1 − T` are non-units of `𝔽[T]`, sum `1`, so not local; base change keeps `C^(j′)`; `N` has coefficients in `𝒪^rig_𝒪[1/λ]`, constant in `T` | holds | Check added |
| 2.1 eigenbasis existence under Definition 5.1.3 (read literally) | isotypic `𝔐_χ` | filtration `𝔐_χ ⊇ u′𝔐_{χω^{−1}} ⊇ … ⊇ v𝔐_χ` with free graded pieces `(𝔐/u′𝔐)_{χω^{−i}}`, so `𝔐_χ/v𝔐_χ` is free; Nakayama over `R⟦u′⟧` gives an eigenbasis | the review's claim "need not have an eigenbasis" is unproven under that reading | not asserted |
| 2.2 "with an eigenbasis `β`" | BHHMS23 Definition 3.1.8 | the source's definition starts "with eigenbasis `β`" (`BHHMS23 line 913`) | agrees | wording |
| gap:rank-two-descent-kisin-modules, widened | `𝒪⟨T⟩`; `𝒪_{E′}` with residue field `𝔽′ ⊋ 𝔽`; a complete local `R → 𝒪_{E′}` | all three are `p`-adically complete; base change along continuous maps connects the two kinds | covers every ring 2.1 and gap:relative-monodromy-criterion use | needs widened |
| 1.3 Check, `f ≥ 2` | `f = 2`, `s = (1,1)` and `(w,1)` | `I^(j) = 1` because `j ≢ j+1 (mod 2)`; matrix `diag(v²(1+v)^{−1}, v)` | not a polynomial | restated |
| 1.3 Check, `f = 1`, `s = 1` | `p = 5` | `diag((1+v)^{−1},1)·diag(v²,v)·diag(1+v⁵,1) = diag((1+v)⁴v², v)`, with `(1+v)⁴v² = v²+4v³+6v⁴+4v⁵+v⁶` of degree `6 = p+1 > 2` | polynomial; degree condition fails | corrected |
| 1.3 Check, `f = 1`, `s = w` | `s*_0 = w` | right factor `w·diag(1+v^p,1)·w = diag(1,1+v^p)`; matrix `diag(v²(1+v)^{−1}, (1+v)^p v)` | not a polynomial | restated |
| 1.3 Check, tuple is an eigenbasis change | Remark 3.2.10 (1-generic) | `I ≡ 1 (mod v)`, so `I ∈ I(𝔽)`; constant on classes mod `f` | admissible | none |
| 1.3 Check, the reading it replaces | first raw vector at both summands, `f = 1`, `s = w` | `A′^(0) = diag((1+v)^{p−1}v², v) ≠ A′^(1) = diag(v², (1+v)^{p−1}v)`, which contradicts `f`-periodicity (BHHMS23 Remark 3.1.3) | the raw reading is not an eigenbasis | replaced |
| 4.2 Check citing the rescaling | new matrices | `diag(v²(1+v)^{−1}, v)` and `diag((1+v)^{p−1}v², v)` are not in `T(𝔽)·diag(v², v)` | Check still holds | none |
| BHHMS23 remarks in the locator | `BHHMS23 lines 750, 833, 838, 1014` | all four present in the text | holds | locator |
| `crossing_prime` (unchanged) | elaborated type | as in Checks | same generality as 5.3 | none |

## Ownership

The groupoid `Y^{[0,h],τ}(R)` over `p`-adically complete `R` was searched by object across main, the open heads (`roadmaps grep` for "tame descent data", "descent data of type" and `Y^{[0,h]`) and the board packages. The only owner of Kisin modules with tame descent is `LocalGaloisDeformationRings` §6.9. The strongly divisible modules with descent in `FiniteFlatGroupsAndIntegralPadicHodgeTheory` §§R07.4.31–R07.4.33 are a different object. The widened gap therefore names §6.9. No declaration name changed.

## For the maintainer

- gap:rank-two-descent-kisin-modules now asks `LocalGaloisDeformationRings` §6.9 for more: the rank-two groupoid, its eigenbases and coefficient base change over every `p`-adically complete `𝒪`-algebra, after LLHLM23 §5.1. The complete local part is unchanged apart from moving base change into the general clause.
- Not edited, outside these findings: 3.7 says "As in the Conventions, `𝔽` contains the values of the fundamental characters `ω_{f′}`", but the Conventions do not say so. They only enlarge `E` "where a statement says so". BHHMS23 assumes `E` sufficiently large (`BHHMS23 line 457`), and 0.1 and 1.1 use the same assumption implicitly. One clause in the Conventions requiring `𝔽 ⊇ 𝔽_{q²}` would settle it.
- No names that other roadmaps cite changed. The review contained no instructions to act on.
