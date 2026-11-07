# Review of PeriodsAndSpecialValues (pull request #1496 at c45d237)

**Verdict:** needs changes

:robot: Independent AI incremental re-review of the 2 changed README lines since 723667b. The README line is correct: it brings the summary supplier list into agreement with the Scope bullet and the contract heading. The merge of main into the branch moved the pins (Mathlib `1b1ccf4`, Tau Ceti `2fd255d`, Lean `v4.36.0-rc2`). With the new pins the gate's `build` rule fails on a module-system warning for `Suggested.lean`, so the roadmap can't be accepted until the file header is fixed. This review changes no pull-request file.

## R01 (P3) — the gate's `build` rule fails: `Suggested.lean` is not a module under the new Mathlib pin

**Location.** `TauCetiRoadmap/PeriodsAndSpecialValues/Suggested.lean:1` reads `import Mathlib`, and line 40 reads `noncomputable section`. The file has no `module` header.

**Claim.** The gate run with `--build` on this head gives `build=2 FAIL`. Every other rule passes. The pinned Mathlib now expects importers to use the module system, and the gate counts any warning other than `declaration uses 'sorry'` as a build failure. All 38 declarations still elaborate, so nothing here is mathematically false. This failure is new at this head: the gate passed at 723667b on the old pins.

**Witness.** The gate output, printed twice: “warning: TauCetiRoadmap/PeriodsAndSpecialValues/Suggested.lean: imports `Mathlib` from package `mathlib`, which is designed for use with the module system; consider adding `module` to the start of this file”.

**Repair.** Use the header that `TauCetiRoadmap/AffineMorseLefschetz/Suggested.lean:1–3, 35` uses on main:
- Make line 1 `module`, then a blank line, then `public import Mathlib`.
- Put `public section` on its own line just before `noncomputable section`.
- After `end TauCetiRoadmap.PeriodsAndSpecialValues`, close both sections with two lines of `end`.

Tested on a scratch copy of this file with exactly that change. `lake env lean` exits 0 with 13 `declaration uses 'sorry'` warnings and nothing else. The variant `@[expose] public section` gives the same result. The gate's text scanners (`scan_folder`) run on the repaired copy report 0 on every rule, including `imports` and `no-import-mathlib`: the import regex accepts `public import Mathlib`. No statement changes.

## Previous findings

- None. The previous report (at 723667b) had no findings and accepted the roadmap. Its R01 and R02 were repairs of the report before it, and both are still in place at this head: `README.md:585` reads “viewed at level Γ₁(33)”, and `README.md:571` reads “the product over the places λ | ℓ of E of (primitive K_μ-summand of §6.1) ⊗_(K_μ) E_λ”.

## Verified sound

**Scope.** The head is c45d237496c11fdc5c45270175025a3372d09d4c, and the worktree is clean. Since 723667b the folder changed in exactly one README line, line 37 (the “Other roadmaps supply the following” paragraph). Its BorelRegulators clause went from `§§2.1–2.3, 6.0a–6.3` to `§§2.1–2.3, 5.3–5.4, 6.0a–6.3`. `Suggested.lean` is byte-identical to 723667b. `git diff --stat origin/main...HEAD` outside the folder is empty. The long outside-folder list in the change summary comes from the merge commit 37a44ee0, which brought in origin/main `eaf17b1`, not from this pull request's own changes. That merge also changed `lake-manifest.json` and `lean-toolchain`, so the elaboration, the signatures and the padding probe were rerun on the new pins.

**The changed line.**
- It now matches the Scope bullet at `README.md:29` (“§§2.1–2.3, 5.3–5.4 and 6.0a–6.3”), the contract heading at `README.md:142` (“### BorelRegulators §§2.1–2.3, 5.3–5.4, 6.0a–6.3”) and PS.3.3a's *Needs:* at `README.md:915` (“BorelRegulators §§5.3–5.4 … §§6.1–6.2”). Before this change the summary was the only one of the four that left out §§5.3–5.4.
- Every other roadmap named in line 37 has a matching subsection under Exact supplier contracts (42 subsection headings compared).
- BorelRegulators was read at its open head `c564441`, where these sections exist: §5.3 “The integral image and its positive covolume” (line 639) and §5.4 “The zeta covolume and every rational basis” (line 661). §§2.1–2.3 are at lines 246, 266 and 286, and §§6.0a–6.3 at lines 723–816.
- BorelRegulators' Downstream consumers (line 847) say that PS.3.3a consumes §§5.3–5.4 and §§6.1–6.2. The supply and the consumption agree in both directions.

**Gate and elaboration.**
- The gate without `--build` prints `… source-material=0 OK` (exit 0). With `--build` it prints `build=2 FAIL` (R01), and that is the only failing rule.
- `lake env lean` on `Suggested.lean` exits 0 with exactly 13 `declaration uses 'sorry'` warnings and no other diagnostic.
- The pins in `.lake/packages` match `lake-manifest.json`: Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`.
- A `#check @name` probe of all 38 declarations elaborates on the new pins. After stripping the namespace, the 38 elaborated types are identical to the worker's signature list, so no binder was lost and no statement drifted with the Mathlib bump.

**Dependency check.** The output is exactly:

```text
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. Merge-order positions: MotivesAndAlgebraicCycles 72, ArithmeticKTheory 127, MotivicEtaleKTheory 128, BorelRegulators 288, PeriodsAndSpecialValues 307.

**Library declarations reopened at the new Mathlib pin.**
- `harmonic`: `Mathlib/NumberTheory/Harmonic/Defs.lean:25`
- `PowerSeries.subst`: `Mathlib/RingTheory/PowerSeries/Substitution.lean:158`
- `ordinaryHypergeometric`: `Mathlib/Analysis/SpecialFunctions/OrdinaryHypergeometric.lean:81`
- `NumberField.dedekindZeta`: `Mathlib/NumberTheory/NumberField/DedekindZeta.lean:50`
- `integral_one_div_one_add_sq`: `Mathlib/Analysis/SpecialFunctions/Integrals/Basic.lean:342`
- `Real.arctan_one`: `Mathlib/Analysis/SpecialFunctions/Trigonometric/Arctan.lean:203`

**Headline theorems and padding.** The headline theorems statable at the pins are all stated:
- PS.7.1: `legendre_substitution`, `legendre_midpoint_error`
- PS.8.7: `quartic_symmetric_square`
- PS.8.11: `quarticMirror_integral`
- PS.8.15: `dworkSigma0_summable`, `dworkSigma2_summable`
- PS.9.1: `mzv_summable_iff`
- PS.9.15: `mzv_allTwo`
- PS.9.4: `mzv_stuffle`, `mzv_shuffle`
- PS.9.17: `zagier_evaluation`
- PS.9.23: `numerical_spanning`, `mzv_span_finrank_le`

The PS.0–PS.6, PS.7.4, geometric PS.8 and motivic PS.9 headlines are named in the module docstring as not statable, each with its missing carrier.

For the one-tactic probe, a scratch copy replaced each `sorry` with `first | rfl | simp | infer_instance | norm_num` and was elaborated on the new pins. It gave 13 errors, one for each theorem (lines 66, 72, 88, 101, 117, 123, 147, 153, 188, 194, 209, 225 and 234). None of the 13 is padding.

**Overlaps and ownership.**
- No open pull request changes this roadmap.
- No open pull request drops an id this README cites.
- The README cites no id that only an open revision defines.
- The citation resolver found no unresolved citation and no unresolved Lean name.
- The changed line adds no object and no Lean declaration. It only names supplier sections that BorelRegulators owns, and that roadmap lists this roadmap as their consumer.

**Seeded sample.** Both sampled passages are outside the diff and unchanged: `README.md:1956` “Fixed-fibre projective map” and `README.md:1969` “Residue coordinates and the small prime”. Their anchors were reopened at the same lines as before:
- Park Definition 4.8 at Park line 1173, Theorem 4.11 at Park line 1233, Corollary 4.12 at Park line 1345 and Proposition 5.2 at Park line 1568
- SH Lemma 4.8 at SH line 271
- SG Lemma 5.6 at SG line 1082

The README flags no locator as unverified.

### Computed adversarial table

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| `README.md:37` BorelRegulators clause | the 4 places that list this supplier's sections (lines 29, 37, 142, 915) against BorelRegulators at `c564441` | 29: {2.1–2.3, 5.3–5.4, 6.0a–6.3}; 37 before: {2.1–2.3, 6.0a–6.3}; 37 now: {2.1–2.3, 5.3–5.4, 6.0a–6.3}; 142: same set as 29; 915 uses {5.3, 5.4, 6.1, 6.2} ⊂ that set. Supplier: §5.3 at line 639, §5.4 at line 661, both present | consistent now; the old line left out §§5.3–5.4 | Retain |
| `README.md:37` against the contract subsections | 42 subsection headings under Exact supplier contracts | every roadmap named in line 37 has its own subsection; for BorelRegulators the section set matches the heading exactly | consistent | Retain |
| Merge-order direction of the changed citation | BorelRegulators against PeriodsAndSpecialValues | positions 288 and 307; depcheck 0 problems | supplier earlier | Retain |
| Whole `Suggested.lean` after the pin bump | 38 `#check @name` on Mathlib `1b1ccf4` against the worker's list | 38 of 38 identical; 13 sorry warnings and 0 other diagnostics in `lake env lean`; `lake build` gives 2 module-system warnings | statements stable; build rule fails | R01 |
| R01 repair (`module` / `public import Mathlib` / `public section`) | scratch copy, plus the `@[expose]` variant | both: exit 0, 13 sorry warnings, 0 other; text scanners all 0 | repair works | R01 |
| One-tactic probe, 13 headline theorems | `first \| rfl \| simp \| infer_instance \| norm_num` | 13 of 13 fail to close | no padding | Retain |
| `mzv_allTwo` (headline) | m = 0, 1 | m = 0: the empty index sums over one empty tuple, so LHS = 1 and RHS = π⁰/1! = 1. m = 1: ζ(2) = π²/6 = π²/3! | correct | Retain |
| `mzv_stuffle` (headline) | k = l = [2] | stuffles = [2,2], [2,2], [4]; ζ(2)² = π⁴/36 and 2ζ(2,2) + ζ(4) = π⁴/60 + π⁴/90 = π⁴/36 | correct | Retain |
| `mzv_shuffle` (headline) | k = l = [2], words 01 ш 01 | 2·0101 + 4·0011, decoding to 2ζ(2,2) + 4ζ(3,1) = π⁴/60 + 4π⁴/360 = π⁴/36 = ζ(2)² | correct | Retain |
| `zagier_evaluation` (headline) | a = b = 0 | index [3]; zagierCoeff 0 0 1 = 2·(−1)·(C(2,2) − (3/4)·C(2,1)) = 1, so RHS = ζ(3) = LHS | correct | Retain |
| `mzv_span_finrank_le` with `hoffmanDim` (headline) | N = 2, 3, 4 | d = 1, 1, 1; in weight 4, ζ(4), ζ(3,1) and ζ(2,2) all lie in ℚ·π⁴, so the dimension is 1 ≤ 1 | correct | Retain |
| `quartic_symmetric_square` (headline) | coefficient of z | A₁ = 4!/1⁴ = 24; in ₂F₁(1/8, 3/8; 1; 256z)² the z coefficient is 2·(3/64)·256 = 24 | correct | Retain |
| `quarticMirror_integral` (headline) | coefficient of z² in q | g₁ = 4·24·(H₄ − H₁) = 96·13/12 = 104 and g₀ = 0, so q = z + 104z² + … ∈ ℤ⟦z⟧ to this order | correct | Retain |
| Sample: residue coordinates (`README.md:1969`) | R = diag(1, −1, 2, −6)·D | diagonal (1, 1, 2, 6) up to sign; det R = 12; v₃(12) = 1 and v_p(12) = 0 for p ≥ 5 | unchanged, consistent with the Park and SH anchors | Retain |
| Sample: fixed-fibre map (`README.md:1956`) | s = 0, …, 3 | (−1)^s·s! = 1, −1, 2, −6; the charge-zero relation gives total degree 6s on top forms | unchanged, consistent | Retain |

### Carried-forward adversarial evidence

Not repeated here, and all still valid with their values:
- the 17 computed rows of `packages/PeriodsAndSpecialValues/reports/PRREVIEW-PeriodsAndSpecialValues~7.md`: PS.3.3a, the BorelRegulators §§5.3–5.4 and 6.1–6.2 contracts, the j = 1 exclusion, and the ℚ(i) and ℚ(√5) Checks;
- the rows of `…~6.md`, `…~5.md`, `…~4.md` and `…~2.md` for every untouched statement of Layers PS.0–PS.9 and all 38 Lean declarations.

The README passages they were computed on are byte-identical at this head, apart from line 37, which is covered above. The Lean statements elaborate to identical types on the new pins.

## Not verifiable

- The `lake build` warning cannot be reproduced on a scratch copy outside the package. The repaired copy was checked with `lake env lean` and the gate's text scanners, and its header matches the module-system files on main.
- BorelRegulators and MotivesAndAlgebraicCycles are open pull requests. They were read at their current heads (`c564441`, `b8e693e`), not on main, and their section numbers may move before they merge.
- BG remains settled as uncertified and Tate-legal as waived. Neither was requested.
- This incremental review re-elaborated and re-probed the Lean file in full. For the untouched README targets, the mathematical audit is inherited from the earlier reports listed above.

## Source issues

- none
