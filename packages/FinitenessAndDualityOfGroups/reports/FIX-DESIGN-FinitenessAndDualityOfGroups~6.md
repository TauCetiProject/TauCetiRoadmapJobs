# FIX-DESIGN-FinitenessAndDualityOfGroups~6

The review `REV-DESIGN-FinitenessAndDualityOfGroups~5` lists one finding, F01. Its table row "1.4 and 1.7 negative controls" (labelled R01 in the review's text) is the same finding and is settled here. The `## For the human reviewers` section lists no finding, so nothing was changed because of it.

## F01 (P3) — applied

Old → new:
- README 1.4: the normal closure "is not of type `FP_1`" → "over every nonzero `R`", with `FreeGroup {a, b}` of type `FL` and a zero-ring sentence.
- README 1.7 lamplighter: → "no converse over a nonzero `R`", and "Over the zero ring both groups are of type `FL`…".
- plan.json `1.4/infinite_index` and `1.7/lamplighter` changed to match.

The scope of 1.7(a) is unchanged.

## Same pattern elsewhere (F01)

Verified: over `R = 0`, `RG = 0` and the trivial module is `0`, so every group is of type `FL` (README 1.2 Check). The same missing coefficient qualifier was repaired at:

- **README 1.6 Check:** "nothing passes down" → "over every nonzero `R` none of the types `FP_n` (`n ≥ 1`), `FP_∞`, `FP`, `FL` passes down… Over the zero ring every group is of type `FL`." The new wording also fixes "nothing": `FP_0` holds for every group.
- **README 2.5 Check and plan.json `2.5/free_infinite`:** → "over `R ≠ 0`, `hd_R = 1`, `cd_R ≤ 2`, true value `cd_R = 1`; over the zero ring both dimensions are `0`".
- **README 8.3 Check and plan.json `8.3/rationals`:** "`ℚ` is not of type `FP_1`" → "… over `ℤ`".

Searched and already correct:
- README Conventions, the 1.2, 1.4 and 1.5 Checks and the Layer 1 Examples already say "nonzero `R`" or "`R ≠ 0`".
- 1.3, 1.6/`Z2_times_Z`, 2.2, 6.3 and 1.2/finite already say "over `ℤ`".
- 4.4's virtual types are defined over `ℤ`.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.4 Check: normal closure `N = ⟨⟨b⟩⟩ ≤ F(a,b)` is not `FP_1` over nonzero `R`; `F(a,b)` is `FL` | `R = ℤ`, `R = 𝔽₂`, `R = ℚ`, `R = 0` | `N = ker(F(a,b) → ℤ, a ↦ 1, b ↦ 0)`. With Schreier transversal `{aᵏ}`, `N` is free on `aᵏba⁻ᵏ` (`k ∈ ℤ`), so `N^ab = ⊕_ℤ ℤ`, which is not finitely generated. By 1.4(b), over `ℤ`, `𝔽₂` and `ℚ`: `FP_1(N)` false and `FL(F₂)` true, with ranks `(1, 2)` from 1.8(c). Over `0`: `R[N] = 0`, so `FL(N)` and `FL(F₂)` are both true. | Statement correct only with `R ≠ 0` | Qualifier added; zero-ring sentence added |
| 1.6 Check: over nonzero `R` no type `FP_n` (`n ≥ 1`), `FP_∞`, `FP`, `FL` passes down to infinite index | `n = 0`, `n = 1`, `R = 0` | `n = 0`: `FP_0(N)` is true (1.4(a)), so the old wording "nothing passes down" was false at `n = 0`. `n ≥ 1`: `FL(F₂)` is true and `FP_1(N)` is false over `R ≠ 0`, and `FP_1` is implied by `FP_n`, `FP_∞`, `FP` and `FL`. `R = 0`: every group is `FL`. | Correct as restated | Restated |
| 1.7 Check: lamplighter `L = ℤ/2 ≀ ℤ`, base `B = ⊕_ℤ ℤ/2`, `L/B ≅ ℤ` | `R = ℤ`, `R = 𝔽₂`, `R = ℚ`, `R = 0` | `L = ⟨δ₀, t⟩` is 2-generated, so `FP_1(L)` is true over every `R` (1.4(b) for `R ≠ 0`; trivially for `R = 0`). `ℤ` is `FL`, with ranks `(1, 1)`. A finitely generated subgroup of `B` is finite of order `≤ 2^m`, so `B` is not finitely generated, so `FP_1(B)` is false over `ℤ`, `𝔽₂` and `ℚ`. Over `0`, `FL(L)`, `FL(B)` and `FL(ℤ)` are all true. | Shows 1.7(a) has no converse exactly when `R ≠ 0` | Qualifier added; zero-ring sentence added |
| 2.5 Check: countable-rank free group `F_∞ = ⋃ F_n` | `R = ℤ`, `R = 𝔽₂`, `R = 0`; `n = 0, 1` | For `R ≠ 0`: `H₁(F_n, R) = Rⁿ ≠ 0` for `n ≥ 1`, and `hd_R F_n ≤ cd_R F_n ≤ 1`, so `hd_R F_n = 1` (`hd_R F_0 = 0`). Then `sup = 1` gives `hd_R F_∞ = 1` by 2.5(a); 2.5(b) gives `cd_R F_∞ ≤ 1 + 1 = 2`; 2.6 gives `cd_R F_∞ = 1`. For `R = 0`: `hd_0 = cd_0 = 0` (Conventions, Dimensions). | The old unqualified "`hd = 1`" was false at `R = 0` | Qualifier and zero-ring clause added |
| 8.3 Check: `χ_ℚ(ℚ) = 0`, and `ℚ` is not `FP_1` over `ℤ` | `ℚ = colim (1/i!)ℤ` | `H₀(ℚ, ℚ) = ℚ`; `H₁(ℚ, ℚ) = ℚ ⊗ ℚ = ℚ`; `H_k = colim H_k(ℤ, ℚ) = 0` for `k ≥ 2`. So `χ_ℚ = 1 − 1 = 0`. `ℚ` is not finitely generated, so by 1.4(b) `FP_1(ℚ)` is false over `ℤ` (over `0` it would be true). | Correct over `ℤ` | "over `ℤ`" added |
| 1.7(a) (extension theorem, unchanged) against the repaired controls | `R = 0`, `R = ℤ` | Over `0`: `N`, `G/N` and `G` are all `FL`, consistent. Over `ℤ`: `B` is not `FP_1` and `L/B` and `L` are `FP_1`; the theorem's hypotheses fail, so there is no contradiction. | Consistent | None |

No Check or worked example of another section uses the restated objects differently. The 1.6 and 1.7 Checks cite 1.4 for the normal closure, and both now carry the same qualifier.

## Checks

**Dependency check** (`tauceti-roadmap … gate --candidate packages/FinitenessAndDualityOfGroups/design/README.md --only FinitenessAndDualityOfGroups …`):

```text
candidate: FinitenessAndDualityOfGroups is not in the merge order yet; checked as if placed after CohomologyOfGroups (the intake inserts it when its design is accepted)
depcheck: 244 roadmaps, 2201 edges, 0 problem(s)
```

- No UPWARD or CYCLE line.
- `plan.json` parses as JSON.
- The test count is unchanged: four test statements were edited, and none was added or removed.

**`Suggested.lean`.** None exists at this design stage (the package's `design/` holds only `README.md` and `plan.json`). So there was nothing to elaborate and no `#check @name` binder comparison to run, and none was run.

**Sources.** No source was fetched and none was added. `sources.toml` is unchanged, and there is no `needs-references.toml` request.

**Ownership.** The repair adds no target, construction or citation, so there is nothing new to check for ownership. No cross-roadmap citation changed.

## For the maintainer

- No target, layer, id or name changed. Other roadmaps' citations of this roadmap are unaffected.
- The edits are confined to Checks in 1.4, 1.6, 1.7, 2.5 and 8.3 and the four matching plan.json tests.
