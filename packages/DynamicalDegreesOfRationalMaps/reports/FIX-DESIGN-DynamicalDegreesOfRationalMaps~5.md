# Repair of DynamicalDegreesOfRationalMaps (design, round 5)

The review has one finding, F01 (P2). I verified it and applied it. The pattern search found the same restriction, or an argument that depends on it, in 13 places in the README and 10 targets of the plan. All are repaired (listed below). No source was fetched, `sources.toml` is unchanged, and no new supplier was added. Two more sections of an existing supplier are now cited: AlgebraicModuliForArithmeticGeometryPartII §1.1 and, in a Check, §1.2.

## F01 (P2) — applied

**Change.** Old: a nef real class was a positive combination `Σ a_i L_i` of nef line bundles. New: a real class `Σ t_i L_i ∈ Pic(X) ⊗ ℝ`, with coefficients of any sign, is nef when `(ω·C) ≥ 0` on every integral curve, which is the same as having nef image in `N¹(X/K)`. Added: ample approximation (§3.1), routes rewritten (§§3.2–3.6, 4.5, 5.1), and the E×E Checks.

**Verification.**
- cutkosky2015 Theorem 6.1 (line 983) and Corollary 6.3 (line 1024) state the inequalities for nef `α_i ∈ N¹(X)`, defined at lines 282–285 by nonnegative degree on curves. dangfavre2021 line 436 fixes "any big and nef class ω ∈ N¹(X)". So the sources admit the whole nef cone, while the design admitted only positive combinations of nef line bundles. The design itself said so (old README §3.1: "not every class of that nef cone has this form").
- I recomputed the witness. Take E without CM and the basis `F_1 = {0}×E`, `F_2 = E×{0}`, `Δ`. Squares are 0 and pairwise products 1; the Gram determinant is 2, so the three span N¹, of dimension ρ = 3 (AlgebraicModuliForArithmeticGeometryPartII §1.2, Checks). The map `xF_1+yF_2+zΔ ↦ [[x+z,−z],[−z,y+z]]` sends the intersection form to `tr(B·adj B')`, which polarizes `2det`. Nef classes are exactly the positive semidefinite matrices.
  - `A = (1+√2)F_1+(2+√2)F_2−√2Δ ↦ [[1,√2],[√2,2]]`, with `A² = 0`, `A·I = 3` and degrees 2, 1 and `3+2√2` on `F_1`, `F_2` and `Δ`.
  - The vector `v = (−√2,1)` excludes every positive rational decomposition of A.
- The supplier was checked at its open head (AlgebraicModuliForArithmeticGeometryPartII, earlier in the merge order and already a supplier here):
  - §1.1 (README line 249): `N¹ = Num ⊗ ℝ`, the class map, and the pairing that descends.
  - §1.5 (line 338): the nef cone, and nef if and only if nonnegative on curves.
  - §1.7 (line 394): (ii), nef plus ample is ample.
  - §1.7 API (lines 411–412): ample bundles have positive degree on curves; `mL + E` is ample for large m.

**Repair, by place (README; plan in parentheses).**
1. Conventions, *Polarizations*: real class, nef real class (full cone, equivalent to the N¹ definition), real polarization; witness `A`, with the ample `A + F_1 + F_2` given as an explicit positive combination.
2. Summary; Scope (owned item: "all nef real classes, with the approximation…"); imports (§1.1, nef cone of §1.5, the API of §1.7); "left out": `N^k` only for `k ≥ 2`. Downstream consumers / Part II likewise. (Plan summary, supplier entry, Part II consumer.)
3. Exact supplier contracts: new §1.1 bullet; the §1.5 bullet names `Nef(X/K)`; the §1.7 bullet adds "`L^{⊗m} ⊗ E` ample for large m".
4. §2.3: new definition plus the equivalence with `Nef(X/K)`, and surjectivity of `Pic(X) ⊗ ℝ → N¹`. *Needs* and Layer 2 Dependencies add AlgebraicModuliForArithmeticGeometryPartII §§1.1, 1.5. The scaling Check is reworded, since it claimed that "negative coefficients leave the nef cone", which is false for the full cone. New Check: `2·O(1,1) − O(1,0) = O(1,2)`. (Plan 2.3: statement, prerequisites, API `realClass_isNef_iff`, two tests.)
5. §3.1: paragraph rewritten. New items:
   - *Pullback of nef real classes*, and of real polarizations.
   - *Ample approximation*: with `m` such that `mH ± L_i` is ample, any rational `δ > 0` and `|t' − t| ≤ δ/(2mn)`, the class `Σ t'L + δH` equals `N⁻¹A` with A ample. Its consequence: homogeneous polynomial inequalities pass from ample line bundles to nef real classes. The route is given.

   New Checks: the E×E full cone (positive, separating and negative examples); "approximation needs the ample term" (`m = 3`, `δ = 1/5`); "homogeneity is needed". (Plan 3.1: statement, hypotheses, two API entries, three tests.)
6. §3.2: for real classes the route is §2.1 multilinearly, then Chow's lemma (SchemeAndStackFoundations §4.12) to a projective `Z'`, the degree-one projection formula, ample approximation and ample positivity. The old "expand multilinearly into positive coefficients" argument needed the restricted cone. *Needs* add §3.1, CyclotomicClassGroupsAndStickelberger §4.3 and SchemeAndStackFoundations §4.12. New E×E Check. (Plan 3.2: statement, hypotheses, prerequisites, test.)
7. §3.3: "extends … by rational approximation of the coefficients" is replaced by an explicit homogeneity-plus-approximation step. *Needs* add §3.1. New Check: 24 ≤ 30. (Plan 3.3.)
8. §3.5: the old route perturbed by a real `tH` and then took "very ample multiples" of real classes. That step is undefined for a real class. Now it approximates first, then reduces to `W` by §2.4 (ample pulls back to ample, §2.4 (c)), then takes very ample multiples. The case `d = 2` is restated for ample bundles. New Check: E×E with `A + εI`, gap 9. (Plan 3.5.)
9. §3.6: same change; "Keep the `C_j` nef" and "Let t → 0" are dropped; `[V]` becomes `[W]` after the reduction. (Plan 3.6.)
10. §4.2: monotonicity now reads "if `L, M, L'−L, M'−M` are nef real classes", with an expansion proof. Two new Checks: E×E 0 ≤ 3 ≤ 8, and a negative control where L'−L is not nef. (Plan 4.2.)
11. §4.4: new Check with `L_1 = L_3 = A`, giving 0 ≤ 9; the plan's hypotheses now allow real inputs. (Plan 4.4.)
12. §4.5: the comparison constant `C = (d−k+1)^{2k}·max(c(ω,ω'), c(ω',ω))` now holds for all real polarizations. The route derives it from §4.4 applied twice and proves `C ≥ 1` from `f = id`. The "`H = Σ L_i`, `a_min^d`" argument is deleted, and §3.2 is removed from *Needs*. New E×E Check with C = 25. (Plan 4.5: statement, prerequisites, test.)
13. §5.1: the lower bound is now `deg_{k,ω}(fⁿ) ≥ C⁻¹·deg_{k,H}(fⁿ) ≥ C⁻¹`, for a fixed ample H with C from §4.5 independent of n. (Plan 5.1.)

The finding's step "import finite-dimensionality" was not needed, so neither §1.2 nor §1.3 is a contract. The approximation works inside the span of the finitely many line bundles that write the classes, and continuity there is continuity of polynomials in the coefficients. §1.2 is cited only in a Check, for ρ(E×E) = 3.

**Correction made during the repair.** My first draft of the Conventions witness said that `A + F_1 + F_2` is also no positive combination of nef line bundles. That is false. The class is ample, and I verified this explicit decomposition: `A + I = (2−√2)(2F_1+2F_2−Δ) + (√2−1)(3F_1+6F_2−2Δ) + F_1 + (5−3√2)F_2`. Its coefficient vectors check out as (2+√2, 3+√2, −√2), and all four summands are positive semidefinite integral classes. The witness and the §3.1 Check now say this. No example of a real polarization outside the restricted cone is claimed.

## Adversarial pass on every new or changed statement

Notation: `I = F_1+F_2` on E×E; `(a,b)·(c,d) = ad+bc` on ℙ¹×ℙ¹.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Def. nef real class (§2.3) | `−O(1)` on ℙ¹; `2O(1,1)−O(1,0)`; A; zero class | −1 (not nef); `O(1,2)` has degrees 2, 1 (nef, ample); A has degrees 2, 1, 3+2√2; zero class has all degrees 0 | Correct; does not depend on the representation | Check added |
| Equivalence with `Nef(X/K)` | ℙ¹×ℙ¹; E×E | ℙ¹×ℙ¹: `N¹ ≅ ℝ²`, (1,2) is in the nef quadrant. E×E: `Pic⁰ ⊗ ℝ` is the kernel, the image has dimension 3, nef ⇔ positive semidefinite | Correct | — |
| Real polarization | `O(1,0)+O(0,1)`; A; A+I; d = 0 | Squares 2 (yes), 0 (no), 8 (yes). For d = 0 every class qualifies, but dynamics assumes d ≥ 1 | Correct | — |
| Restricted cone excludes A | v = (−√2, 1) | `vᵀAv = 1·2 − 2·√2·√2 + 2 = 0`; a rational B with Bv = 0 has `q = √2p`, so p = q = r = 0 | Separating example | Check |
| A+I in the restricted cone | Explicit decomposition | Coefficient vectors (2+√2, 3+√2, −√2) on both sides; summand matrices [[1,1],[1,1]], [[1,2],[2,4]], e11, e22, all positive semidefinite | Correct; corrected draft claim | Check |
| Pullback of nef real classes | `pr_1` on ℙ¹×ℙ¹ with √2·O(1); z² on ℙ¹ | Degrees √2 on `ℙ¹×{q}`, 0 on `{p}×ℙ¹`; `(p*ω) = 2√2 = 2·√2` | Correct | — |
| Ample approximation | E×E: m = 3, n = 3, δ = 1/5 | Tolerance 1/90; errors 0.0042, 0.0042, 0.0058. β-matrix [[1.09,1.42],[1.42,2.09]], det 0.2617 ≥ 0. A_j = 261F_1+361F_2−142Δ, det 5897 > 0. Rounding without δH gives det −0.0463 | Correct; the ample term is necessary | Check |
| Approximation, degenerate | X = Spec K; ω = 0 on ℙ¹; m = 2 on E×E | Spec K: no curves, O ample (quasi-affine), statement trivial. ω = 0 gives δO(1) → 0. m = 2: `2H−Δ ↦ [[1,1],[1,1]]`, det 0, not ample, so m = 3 is needed | Correct | — |
| Homogeneity in the consequence | ℙ², `(A²) ≥ 1` | Holds for ample `O(a)` (a² ≥ 1); fails for H/2 (1/4) | Hypothesis needed | Negative-control Check |
| §3.2 for real classes | E×E: A, A·I; `F_1−F_2`; r = 0 | 0 ≥ 0 and 3 ≥ 0; `F_1−F_2` has square −2 and degree −1 on `F_1`, not nef; r = 0 gives χ(O_Z) = length ≥ 0 | Correct | Check |
| §3.3 Siu, real classes | E×E: A_siu = A+I, B = A, C = I; r = 1 | (A+I)² = 2det[[2,√2],[√2,3]] = 8; LHS 8·3 = 24; RHS 2·(0+3)·(3+2) = 30. r = 1: equality | Correct | Check |
| §3.5 KT, real classes | E×E: A, I and A+εI; ℙ¹×ℙ¹: √2O(1,0)+O(0,1), O(1,1) | 9 ≥ 0. (3+2ε)² − (12ε+4ε²) = 9. (√2+1)² = 3+2√2 ≈ 5.83 ≥ 2√2·2 ≈ 5.66 | Correct | Check |
| §3.5 route degrees | Multidegrees | LHS (2,2,2…), RHS (2,2,2…) | Homogeneous, as the approximation needs | — |
| §3.6 product Siu, real | E×E: B = I, A_1 = C = A (i = 1); i = r = 2 | 2·0 = 0 ≤ 2·3·3 = 18; at i = r both sides are 0. Degree r in B, 1 in A_j and C_j on both sides | Correct | — |
| §4.2 monotonicity | E×E id; ℙ¹×ℙ¹ with L' = (1.5, 0.5) | 0 ≤ 3 ≤ 8. Negative: 2 → 1.5, with L'−L = (0.5, −0.5) of degree −0.5 on a ruling | Correct; needs `L'−L` nef | Two Checks |
| §4.4 with real inputs | E×E, id, k = 1, L_1 = L_3 = A, L_2 = I | 0 ≤ (2/2)·3·3 = 9 | Correct | Check |
| §4.5 constant | Swap on ℙ¹×ℙ¹; E×E with ω = I, ω' = A+I; d = 1; k = 0 | C_1 = 9, C_2 = 9/4, C = 9, 5/2 ∈ [1/9, 9]. E×E: c = 25/4 and 25/64, C_1 = 25, C_2 = 25/16, C_1C_2 = 625/16 ≥ 1; τ*(A+I) = [[3,√2],[√2,2]], deg = 4+9−4 = 9 vs 2. d = 1: `deg_{1,ω'} = ((ω')/(ω))·deg_{1,ω}`, equality. k = 0: `(ω'^d) = c·(ω^d)`, equality | Correct; C ≥ 1 is proved | Check |
| §4.5 derivation | Chain ω' → ω → ω → ω' through §4.4 | `deg_{k,ω'}(f) ≤ ((d−k+1)^k/(ω^d))²·(ω'^{d−k}ω^k)(ω^{d−k}ω'^k)·deg_{k,ω}(f)` | Matches c(ω, ω') | — |
| §5.1 lower bound | id on ℙ² with ω = H/2, k = 1 | c(ω,H) = (1/2)²/(1/4)² = 4, C_1 = 16; c(H,ω) = 1/4, C_2 = 1, so C = 16. 1/4 ≥ 1/16. u_n = log 2 ≥ log(C_1(ω)/C) = log(8/16). u_0/0 = 0 ≥ min(0, ·) | Correct; C independent of n | — |
| Subadditivity at m = 0 (unchanged, rechecked) | u_0 | u_0 = log(C_k(ω)(ω^d)) = log((d−k+1)^k) ≥ 0 | Correct | — |

I recomputed the Checks and worked examples that use the changed objects:
- §2.3: `√2O(1,0)+O(0,1)` has square 2√2, and `O(1,0)+O(0,1)` square 2.
- §4.2: the real-polarization Check `deg_1 = 2`.
- §4.5: the swap Check (C = 9).
- §5.1: the morphism, Cremona and Fibonacci Checks (unaffected: polarization H).
- The Worked-examples table uses H only and is unaffected.

All agree with the repaired statements.

## Checks run

Dependency check:

```text
candidate: DynamicalDegreesOfRationalMaps is not in the merge order yet; checked as if placed after ArakelovGeometryAndAbelianHeightsPartII (the intake inserts it when its design is accepted)
depcheck: 236 roadmaps, 2140 edges, 0 problem(s)
```

There is no UPWARD and no CYCLE line, and the edge count is unchanged. The added citations (AlgebraicModuliForArithmeticGeometryPartII §§1.1, 1.2, 1.4 Checks; SchemeAndStackFoundations §4.12) are to roadmaps that were already suppliers.

- **Citation resolver** (`roadmaps resolve` on the README): no cross-roadmap citations or Lean names found nowhere.
- **plan.json:** it parses, and was re-serialised in its original format (one-space indent, no trailing newline). Its graph has 27 targets, no unknown local prerequisite, no forward edge, and 114 tests (103 before this round).
- **Elaboration:** none. This design package has no `Suggested.lean`, so there was no `#check @name` binder audit and no Lean command was run.

## Gate failures

None were listed in the brief.

## Notes for the maintainer

- **Ownership.** I searched by object with `roadmaps grep` on main and at the open heads: Khovanskii–Teissier, nef real classes, multilinear forms on `N¹` or `Pic ⊗ ℝ`, and ample approximation. AlgebraicModuliForArithmeticGeometryPartII owns `N¹(X/K)`, the nef cone and Kleiman for invertible sheaves (§§1.1, 1.5, 1.7); these are imported, not restated. Nobody owns intersection nonnegativity for nef *real* classes or the ample approximation lemma. AlgebraicModuliForArithmeticGeometry's `nefMixedIntersectionBound` (its README line 10319) is smooth characteristic-zero effective theory. So this roadmap keeps them, as it already owned the real extension. No open-PR ownership conflict was found; open roadmaps were checked only through the brief's tools.
- **Supplier dependency.** The repair depends on AlgebraicModuliForArithmeticGeometryPartII §1.1 as it stands at that roadmap's open head, which is earlier in the merge order and already a supplier. If that roadmap renumbers §§1.1, 1.5 or 1.7, the citations here move with it.
- **Changed names other roadmaps might cite.** No section, target id or Lean name changed or was removed. Plan API names `realClass_isNef_iff`, `realClass_isNef_pullback` and `realClass_ampleApprox` were added; they are plan inventory, not `Suggested.lean` declarations.
- **Unused hypothesis (P3, no change).** In §3.6 the hypothesis `(B^r) > 0` is not needed for the inequality, which also holds in the limit when `(B^r) = 0`, since then the left side is 0. It is kept because the consequence about positivity of mixed products uses it.
- **Suspicious text.** None was found in the review.
