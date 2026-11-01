# Review of LefschetzStructures (pull request #1061 at 12f6eff)

**Verdict:** accepted

An incremental re-review of 11 changed lines since `ed7ddba` (7 insertions, 4 deletions, all in `README.md` lines 468–481; `Suggested.lean` and `metadata.toml` are byte-identical to the head the previous review read; nothing changed outside the folder). The head repairs both P3 findings of the previous review. The repaired sentence of 2.3 carries one new slip, a parenthetical that overstates when the rescaled sets differ; it is P3 and touches no target, hypothesis, Check or Lean statement. Severity: P1 false, vacuous or unowned; P2 overclaim or missing hypothesis; P3 locator, Check, style or policy.

## R01 (P3) — "(for `λ ∉ ℚ` they change as sets)" is false in degree `0` and whenever `λ^r ∈ ℚ`

Location: `TauCetiRoadmap/LefschetzStructures/README.md` lines 470–471, "the degree-`r` parts of `𝒜(X)` and `A(X)` are multiplied by `λ^{−r}` (for `λ ∉ ℚ` they change as sets)".

Claim: for every `λ ∈ Kˣ` outside `ℚ`, each degree-`r` part of `𝒜(X)` and of `A(X)` is a different set for the marking `λe` than for `e`. Witness: the degree-`0` parts are multiplied by `λ⁰ = 1` for every `λ` (`A⁰(X) = ℚ·1` and the degree-`0` operators are unchanged); and with `K = ℚ₇`, `λ = √2 ∈ ℚ₇` (`7 ≡ −1 mod 8`), `λ ∉ ℚ` but `λ^{−2} = 1/2 ∈ ℚ`, so on `ℙ²` the degree-`2` part `A²(ℙ²) = ℚξ²` is multiplied by `1/2` and is the same `ℚ`-line. The multiplication statement before the parenthesis is right (`cl^{d+r}` and `pr₂,*` scale by `λ^{−(d+r)}` and `λ^d`, MotivesAndAlgebraicCycles §2.3), and the example the previous review gave does change: `A¹(ℙ¹) = ℚ·cl¹(pt)` becomes `ℚ·λ⁻¹cl¹(pt)` for `λ ∉ ℚ`.

Repair: replace the parenthesis by "(for `λ^r ∉ ℚ` they can change as sets: on `ℙ¹`, `A¹ = ℚ·cl¹(pt)` becomes `ℚ·λ⁻¹cl¹(pt)`)". Tested on the three instances above: `r = 0` and `λ = √2`, `r = 2` have `λ^r ∈ ℚ` and are no longer claimed to change; `ℙ¹`, `r = 1`, `λ = √2` has `λ ∉ ℚ` and `ℚ·λ⁻¹cl¹(pt) ≠ ℚ·cl¹(pt)` because `cl¹(pt) ≠ 0` and `λ⁻¹ ∉ ℚ`.

## Previous findings

- R01 (`ed7ddba`, P3, "`𝒜(X)` and `A(X)` are unchanged as sets" false for `λ ∉ ℚ`) — repaired: lines 470–474 now say the degree-`r` parts are multiplied by `λ^{−r}` and that the automorphism of `H(X)` acting by `λ^{−⌊i/2⌋}` on `H^i(X)` carries the structures for `e` to those for `λe`, preserving the pairing on algebraic classes and the four properties of 1.1. The automorphism claim is verified in the adversarial table (rows "2.3 marking remark, automorphism" and "… odd degrees"); the new parenthetical in the same sentence is R01 of this report.
- R02 (`ed7ddba`, P3, `ℙ¹ × ℙ¹` Checks of 2.3 wrote `P²` as a `ℚ`-line and `A¹ ∩ P² = P²`) — repaired: lines 479–481 read "`P² = K(a − b)` and `A¹ ∩ P² = ℚ(a − b)`" and "`P² = K(2a − b)`"; the clause "the primitive part depends on `ξ`, the algebraic classes do not" stands and is right (`A¹ = ℚa ⊕ ℚb` for both `ξ`).

## Verified sound

**The change set.** `git diff --stat ed7ddba..HEAD`: `README.md` only, 7 insertions, 4 deletions, as the change summary says; `git diff ed7ddba..HEAD -- Suggested.lean` is empty (0 lines) and `metadata.toml` is unchanged. `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/LefschetzStructures'`: empty. The folder holds `README.md`, `Suggested.lean`, `metadata.toml` only.

**Gate.** The worker's gate at `12f6eff`: every check 0, `build=0`, OK. Run this round from the brief's command: every text scanner 0 (`set_option`, `blob`, `latex`, `prnum`, `sorry-data`, `residue`, `imports`, `readme-ids-missing`, `round-labels`, `target-ids`, `stray-files`, `dirty`, `outside-folder`, `source-material` all 0), `depcheck=1` with the single line `depcheck: NOT IN ORDER: LefschetzStructures (insert it after its last supplier)`, because main's merge order (`fa41b37`) does not list this new roadmap; the brief says this is not a defect before the intake inserts it. The dependency check with the candidate order, this round:

```
depcheck: 205 roadmaps, 1440 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The candidate order places MotivesAndAlgebraicCycles 69, DeligneWeightsAndPurity 75, LefschetzStructures 76, EtaleDualityAndPerverseSheaves 92 (not a supplier). The diff adds no `*Needs:*` item and no supplier citation; the sentence it changes cites MotivesAndAlgebraicCycles §2.3, already in 2.3's `*Needs:*` line through §2.2 and in the supplier contracts.

**Elaboration and build at the pins** (Mathlib `f6090c70`, Tau Ceti `358314d4`; the manifest's revisions equal the package checkouts' `HEAD`s). `lake env lean` on `Suggested.lean`: exit 0, twelve `declaration uses 'sorry'` warnings (lines 108, 114, 120, 126, 133, 186, 194, 203, 210, 219, 229, 239), nothing else. `lake build TauCetiRoadmap.LefschetzStructures.Suggested`: "Build completed successfully (8954 jobs)", the module replayed with the same twelve warnings and no Lake module-system warning. The worker's `signatures.md`: 25 declarations, 0 with a dropped section binder; since the Lean file is byte-identical to `ed7ddba`, the signature-by-signature comparison with the README of the previous review (every `def` and `theorem` carrying `(S : LefschetzStructure K H n)` and `[FiniteDimensional K H]` where the README's standing hypotheses require it) stands unchanged. The one-tactic padding probe of the previous review (twelve `sorry`s, all twelve fail under `first | rfl | simp | simp_all | infer_instance | aesop | (intros; simp_all) | trivial`) is carried forward on the same byte-identical file.

**Cross-roadmap citations re-resolved this round.** MotivesAndAlgebraicCycles at its open head `57b8fe4` (unchanged since the previous review): §2.3 line 374 states `e ↦ λe` for `λ ∈ Fˣ` with `cl^r ↦ λ^{−r}cl^r` and `Tr_X ↦ λ^d Tr_X`, `d = dim X`, exactly the rescaling the changed sentence quotes; line 372 gives the action `c_*(α) = pr₂,*(cl(c) ∪ pr₁*α)` used for the degree-`r` scaling; §7.3 line 1311 defines `A_H^j(X)` as the rational image of Chow cycles "even when the coefficient field `F` is larger than `ℚ`", which is what makes `A¹ ∩ P² = ℚ(a − b)` a `ℚ`-line and `P² = K(a − b)` a `K`-line in the repaired Checks; line 1675 confirms that the abstract Lefschetz-structure theory is left to this roadmap. No other citation is touched by the diff. The worker's resolver found no unresolved citation or Lean name; the sentence introduces none.

**Ownership against open pull requests.** The diff adds no carrier, definition or theorem (a prose correction and two Check corrections), so there is nothing new to check against the sibling checkouts; the previous rounds' conclusion stands.

**Adversarial pass.** Rows for statements the diff leaves untouched carry forward the previous report's values (PRREVIEW-LefschetzStructures~6, itself carrying ~5 and ~4), re-read against the unchanged text; rows marked *new* are computed this round. Conventions: weight `2n` means `H^i = 0` for `i > 2n` and `L^{n−i} : H^i ≅ H^{2n−i}`; for `X` of dimension `d`, `n = d`.

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| `LefschetzStructure` (0.1), `primitive`, `IsGradeProjector`, `LowersDegreeBy`, 0.1 Checks | as in report ~6 | `n = 0`: `L = 0`; `L²: 1 ↦ ξ²`; `P² = ⊥` at `n = 1`; `π₀ 1 = 1 ∉ ⊥` | sound | none |
| `grade_eq_iSup_primitive` (0.2) | as in report ~6 | `H⁰ = P⁰`, `H² = LP⁰ ⊕ P²`, `H⁴ = L²P⁰` on `ℚ[ξ]/(ξ³)`; `i > 2n`: both sides `⊥` | sound | none |
| Conventions: 0.3 and 0.4 over any field | as in report ~6 | `𝔽₂[ξ]/(ξ³)`: `f = 0`, `h = 0 = i − 2` in `𝔽₂`, `⁅h,L⁆ = 0 = 2•L` | sound | none |
| `IsLefschetzInverse`, `existsUnique_isLefschetzInverse`, `lambda_pow_L_pow`, `L_pow_lambda_pow`, 0.3 Checks | as in report ~6 | `ΛL²1 = ξ`, `Λ²L²1 = 1`; `x ∈ P^n`: `ΛLx = 0 ≠ x` | sound | none |
| `IsWeightOperator`, `exists_sl2`, 0.4 Checks | as in report ~6 | `⁅L,f⁆L^k x = (j + 2k − n)L^k x`; `fξ = 2`, `Λξ = 1` | sound | none |
| `IsCompatiblePairing`, 0.5 Checks | as in report ~6 | `⟨Le₀,e₀⟩ = 1`, `⟨e₀,Λe₀⟩ = 0` | sound | none |
| `AlgebraicStructure`, 1.1 Checks; 1.2, 1.3, 1.4 theorems and Checks | as in report ~6 | `π₃ = Lw₁ − L²Λ²`; `w = ½u = Λ²`; Gram `[[1,0,0],[0,0,1],[0,1,0]]`, `−⟨u−v,u−v⟩ = 2` | sound | none |
| 2.1 Checks 2–3; 2.2 Checks 2–3 | as in report ~6 | `L² = a² ∪ − = 0` on `ℙ¹×ℙ¹`; `[X×X]_*α = Tr(α)·1`; `[X×X] ∘ (Δ_*ξ)`: `1 ↦ (deg ξ)·1` | sound | none |
| 2.3 marking remark, scaling *new* | `e ↦ λe`, `λ ∈ Kˣ`; degree-`r` correspondence on a `d`-fold; `L`, `Λ` | `cl^{d+r} ↦ λ^{−(d+r)}cl^{d+r}`, `pr₂,*` scales as `Tr` on `d`-dimensional fibres, `λ^d`; product `λ^{−r}` ✓; `A^r ⊂ H^{2r}` is `cl^r(CH^r_ℚ) ↦ λ^{−r}A^r` ✓; `L = cl¹(ξ) ∪ −`: `λ⁻¹L` ✓; `Λ` the inverse on `L^{k+1}P^j`: `λΛ` ✓ | "multiplied by `λ^{−r}`" right | none |
| 2.3 marking remark, parenthetical *new* | `r = 0`; `K = ℚ₇`, `λ = √2`, `r = 2` on `ℙ²`; `ℙ¹`, `r = 1`, `λ = √2` | `λ⁰ = 1`: degree-`0` parts unchanged; `λ^{−2} = 1/2`, `½·ℚξ² = ℚξ²` unchanged though `λ ∉ ℚ`; `ℚ·λ⁻¹cl¹(pt) ≠ ℚ·cl¹(pt)` changes | "for `λ ∉ ℚ` they change as sets" false in degree `0` and for `λ^r ∈ ℚ` | R01 (P3) |
| 2.3 marking remark, automorphism `θ = λ^{−⌊i/2⌋}` on `H^i` *new* | degree-`r` operator `c : H^i → H^{i+2r}`; `L`; `π_i`; `ℙ¹` with `λ ∉ ℚ`; even-degree pairing `H^{2i} × H^{2d−2i}` | `θcθ⁻¹` on `H^i`: `λ^{⌊i/2⌋ − ⌊i/2⌋ − r} c = λ^{−r}c` (`⌊(i+2r)/2⌋ = ⌊i/2⌋ + r`) ✓, so `θ𝒜(X)θ⁻¹ = 𝒜(X)_{λe}`, `θLθ⁻¹ = λ⁻¹L`, `θΛθ⁻¹ = λΛ`; `θ(A^r) = λ^{−r}A^r = A^r_{λe}` ✓; `θπ_iθ⁻¹ = π_i` ✓ (`θ` diagonal on the grading); on `ℙ¹`: `θ = 1` on `H⁰`, `λ⁻¹` on `H²`, `θLθ⁻¹(1) = λ⁻¹cl¹(pt) = (λ⁻¹L)(1)` ✓; `⟨θx,θy⟩_{λe} = λ^d·λ^{−i}·λ^{−(d−i)}⟨x,y⟩_e = ⟨x,y⟩_e` ✓; `θ(A^i ∩ P^{2i}) = A^i_{λe} ∩ P^{2i}_{λe}` since `ker (λ⁻¹L)^{m} = ker L^m` ✓ | the four properties of 1.1 transfer; "preserves the pairing on algebraic classes" right | none |
| 2.3 marking remark, odd degrees *new* | elliptic curve `E`, `x, y ∈ H¹`, `d = 1` | `⌊1/2⌋ = 0`, `θ = 1` on `H¹`, `⟨θx,θy⟩_{λe} = λ⟨x,y⟩_e ≠ ⟨x,y⟩_e` for `λ ≠ 1` | pairing not preserved in odd degree; the sentence rightly restricts to algebraic classes; the rescaled pairing is still a Poincaré pairing (0.5 is homogeneous) | none |
| 2.3 positivity exponent *new* | `x = cl^i(z) ∈ A^i ∩ P^{2i}`, `2i ≤ d` | `Tr ↦ λ^d`, `η^{d−2i} ↦ λ^{−(d−2i)}`, `x ∪ x ↦ λ^{−2i}`: `d − (d − 2i) − 2i = 0` ✓; agrees with 1.1's `(−1)^i⟨L^{n−2i}x,x⟩` at `n = d` | sound | none |
| 2.3 Checks 2–3 *new* (repaired text) | `ℙ¹×ℙ¹`, `H² = Ka ⊕ Kb`, `ξ = a + b` and `2a + b`; `K = ℚ₇`, `√2 ∈ K` | `(a+b)(xa+yb) = (x+y)ab`, `ker = K(a−b)`; `A¹ = ℚa ⊕ ℚb` (MAC §7.3 line 1311), `c(a−b) ∈ ℚa ⊕ ℚb ⇔ c ∈ ℚ`, so `A¹ ∩ P² = ℚ(a−b)`; `√2(a−b) ∈ P² ∖ A¹`; `(2a+b)(xa+yb) = (x+2y)ab`, `ker = K(2a−b)`; `A¹` the same for both `ξ` | sound; consistent with 2.4's Check (`a − b` spans `A¹ ∩ P²`, `−deg((a−b)²) = 2`) | previous R02 repaired |
| 2.3 Lefschetz structure, Poincaré pairing, algebraic structure; 2.4 dictionary rows and Checks | as in report ~6 | `(deg ξ)⁻¹[X×X]_*ξ = 1`; `−deg((a−b)²) = 2`; B, C, D rows against MAC §7.3 | consistent | none |

**Not stated in Lean, checked in prose.** Layer 2 remains not statable at the pins (no Weil cohomology theory or correspondence category in Mathlib `f6090c70` or Tau Ceti `358314d4`); the diff changes no carrier; the module docstring (lines 36–41) says so.

## Not verifiable

- Montpellier fonds, folder 16 (pp. 4–12, 24–28, 47–48) and folder 14 (pp. 43–46); Kleiman 1968 and 1994; Grothendieck 1969; Lieberman 1968; André 2004: untouched by the diff and not retried this round (no legal copy was reachable in the previous rounds); the mathematics of 1.2–1.4 is verified from its hypotheses in the table.

## Source issues

- none
