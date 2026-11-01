# FIX-PKG-AdicCoefficientsAndComparisonsPartII~2

Repair of the twelve findings of REV-PKG-AdicCoefficientsAndComparisonsPartII (round 2) and of the `target-ids` gate failure. Files changed: `packages/AdicCoefficientsAndComparisonsPartII/README.md`, `Suggested.lean` (docstring only), `sources.toml` (one new source, widened locators), `design/plan.json` (top-level `gaps` only).

## F01 (P1) — applied

Verified: cp19 Theorem 1.1 (cp19 lines 93–102) assumes X separated and gives projectivity only over a chosen affine cover; temkin17 §4.1.4 (temkin17 line 986) asks only for a P-alteration. No roadmap owns Cossart–Piltant. Old: §0.12 posed global projectivity and the non-separated case as a "proof obligation", and §§6.4–6.6 were "conditional". New: §0.9 adds the proper sense; §0.12 is now "separated S, proper sense, projective for affine Y"; §§5.6, 6.1, 6.2 have proper variants; §§6.4–6.6 are projective for dim ≤ 1 or excellent dim ≤ 2 bases, proper for separated bases. Conditional sentences deleted. G1 removed from `plan.json` `gaps`. Summary, Conventions, Scope, the build paragraph and the `Suggested.lean` bullets updated to match.

## F02 (P2) — applied

Verified: SchemeAndStackFoundations §4.12 `chow_lemma` (main, README line 5625) needs a Noetherian base, but §1.8 allows any ring A. Old: "(Chow's lemma … SchemeAndStackFoundations §4.12 chow_lemma)". New: a tight X_i is integral, qcqs and of finite type over Spec A; §PA.0.7 (ilo14 X Proposition 3.1.8, line 7246) gives a blow-up X′ that is pseudo-projective over Spec A; proper plus pseudo-projective is projective (§PA.0.5; ilo14 line 7243). §PA.0.5 and §PA.0.7 added to *Needs:*.

## F03 (P2) — applied

Old: three compound or vague contracts. New: (1) finite-type-fp-factorization: closed immersion into a finitely presented X₀, with X ×_S U ≅ X₀ ×_S U when X → S is finitely presented over a quasi-compact open U. (2) closed-subset-log-structure: (a) log structure, (b) equals CR.5 M_D. The recovery clause now belongs to §PA.4.1, citing ilo14 VI §1.4 (line 3070). (3) very-tame-local-quotient: four separate statements (a)–(d) with locators (ilo14 lines 3290, 3306, 3324, 5863). The same `needs` text is in `plan.json`; slugs are unchanged.

## F04 (P3) — applied

All 59 `### PA.k.n Title` headings are now `### k.n Title`. The `## Layer PA.k:` headings and the internal `§PA.k.n` references are unchanged. The board's target reader returns 63 targets, from "0.1 Residue characteristics of a scheme" to "6.12 de Jong's alteration theorem over a Dedekind base": the 59 old targets plus the four new ones of F06.

## F05 (P3) — applied

The repeated copies are deleted from §4.3 (old 4.5) and §4.8 (old 4.10). In §5.3 both copies of the auxiliary-target paragraph went (see F06). §5.6 keeps one copy of the char(X) paragraph. The §§6.4–6.6 sentences are deleted entirely (F01).

## F06 (P3) — applied differently

The new subsections are `### 5.2a One-dimensional analytic fields` and `### 5.2b Uniformization of one-dimensional valued and analytic fields`. They sit before §5.3 in build order, rather than as 5.3a after it. 5.2a has definitions, an API and five Checks; 5.2b states temkin10 Theorems 6.3.1, 2.1.10 and 2.1.8. De Jong's §8.6 step is `### 6.11b`. Its proof needs Rumely's theorem; the only owner of a Moret-Bailly-type theorem is later in the merge order, so the theorem is stated here as `### 6.11a` (moretbailly89 Théorème 1.7, newly fetched). §§5.3 and 6.12 now cite these.

## F07 (P3) — applied

- The six plan slugs are replaced by §PA.1.5, §PA.1.2, §PA.5.3, §PA.6.1 (twice) and §PA.6.5 (twice); the 6.11 slug became §PA.3.2.
- "(comparison node of this layer)" became "(§PA.1.8)", and the three label parentheticals are deleted.
- Bare source numbers became README sections (Lemma 3.1.3 → §PA.1.4, Lemma 3.2.8 → §PA.2.3, Theorem 3.2.12 → §PA.2.5, …) or now carry the source id (dJ96 Lemma 4.13, cjs Theorem 0.3).
- Renumbered: 2.4–2.7 → 2.3–2.6, 3.4–3.8 → 3.3–3.7 and 4.4–4.10 → 4.2–4.8, with every reference updated.

## F08 (P3) — applied

- `AlgebraicGeometry.Scheme.Hom.residueDegree` (ResidueField.lean:147) added to From Mathlib; `TauCeti.AlgebraicGeometry.residueDegree_comp` and `residueDegree_pos_iff` (ResidueDegree.lean:47, 65) added to From Tau Ceti.
- §0.4 now defines deg_x f := f.residueDegree x, cites the tower law, and names `genericDegree`/`genericDegree_comp` (SchemeAndStackFoundations §4.16).
- §3.1 cites EtaleCohomologyFoundations §F.0.A1 `SchemeInertia` in its text, an API bullet, a Check (Z[i]/Z) and a new contract.
- §1.7 cites ClassicalAdicEtaleCohomology §2.4 for Spv K.

## F09 (P3) — applied

The four bullets are rewritten. PA.3.6 (old 3.7): tameness after henselization and universally Japanese schemes. PA.6.7: projective and quasi-projective morphisms and relative SNC divisors. PA.6.9: quasi-projectivity and SNC divisors only, naming the pinned `IsProper`, `Smooth`, `functionField` and `finrank`. PA.6.10: excellence and projective morphisms, naming `IsRegularLocalRing`. Statability bullets are added for PA.5.2b, PA.6.11a and PA.6.11b; none is statable.

## F10 (P3) — applied

Verified: HigherLocalFieldsAndHigherClassFieldTheory exists nowhere as a roadmap; LogicAndDefinabilityInNumberTheoryPartII uses this roadmap's odd-degree alteration in §2.1; EtaleDualityAndPerverseSheavesPartII cites it in EQ.0, EQ.2 and EQ.6. Old: "HL.6 … FG.2 … AdicCoefficientsAndComparisons Layers L5–L6 and EQ.0–EQ.2". New: Jannsen's argument, unnamed; "LogicAndDefinabilityInNumberTheoryPartII §2.1"; "EtaleDualityAndPerverseSheavesPartII Layers EQ.0, EQ.2 and EQ.6". "HL.6" dropped from §6.9. The unused Part I contract is deleted.

## F11 (P3) — applied

Verified on main: StableReduction Layer 2 builds projective morphisms and relative Proj (README line 380), and Layer 4 builds blow-ups of quasi-coherent finite-type ideals (line 470). Neither pin has them; Tau Ceti has only affine blow-up charts (`Blowup/AffineCharts.lean`). The StableReduction contract now includes Layers 2 and 4. Layer 2 or 4 was added to the *Needs:* of §§0.5, 0.6, 0.7, 0.9, 0.12, 4.2 (old 4.4), 6.2 (Layer 4, for the blow-up along Z), 6.11b and the layer Dependencies.

## F12 (P3) — applied

Verified at the cited lines: 0815 is at More on Flatness line 4197 and 081R at line 4250; temkin17 §2.1.1 is at line 249 and Step 4 at line 1051. Old: "Theorem 3.2.12 …; Theorem 4.2.1 Step 4". New: "(Derived: separable variant of temkin17 Theorem 3.2.12 … supplies the separable case of temkin17 Theorem 4.2.1, proof Step 4, temkin17 line 1051)", and the same for 3.3.6 in §3.7. §0.6's tag/line pairing is fixed, and §0.1 now reads line 249 (line 71 kept for §1.2.1).

## Checks run

- `lake env lean packages/AdicCoefficientsAndComparisonsPartII/Suggested.lean` from the content checkout: exit 0, no messages (3 s). No `TauCeti.*` import, so nothing was built.
- `#check @name` binder comparison: vacuous, since `Suggested.lean` declares nothing (every headline is non-statable, docstring only). No scratch file was needed.
- Dependency check (`gate --depcheck … --movable`) output: `depcheck: 48 roadmaps, 543 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- Gate text scanners (`scan_folder` from the worker package) on the edited files: every count 0, including `target-ids`, `layer-ids`, `tex`, `residue`, `readme-ids-missing`, `round-labels`, `long-fences` and `private-paths`. After my edits `tex` first reported 16 hits from new subscripts; they are now in code spans and the count is 0.
- `roadmaps resolve` on the README: one lead, "LogicAndDefinabilityInNumberTheoryPartII §2.1: no roadmap … on main or in an open pull request". It is a board design package (merge order line 312) and a downstream consumer only, so the edge points downward. Lean names: none unresolved.

## Gate failure: target-ids

The 59 failing headings (`### PA.0.1` … `### PA.6.12`) were renamed mechanically to `### 0.1` … `### 6.12`, with the F07 renumbering applied in the same pass. The new headings `### 5.2a`, `### 5.2b`, `### 6.11a` and `### 6.11b` match the gate's `\d+\.\d+[a-z]?` form. The scanner reports 0 `target-ids` hits and reads 63 targets.

## Adversarial pass on changed and added statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §0.4 deg_x f via `residueDegree` | Z[i]/Z generic point; Frobenius of A¹ over F_p; Spec k(t) → Spec k | finrank_Q Q(i) = 2; [F_p(t):F_p(t^p)] = p; junk value 0 for the infinite extension, a point never used (alterations are finite at maximal points) | agree | cite Mathlib/Tau Ceti |
| §0.9 proper sense | Spec k; non-qe DVR A ⊂ K′ = k(x, y); ∅ | Y finite, Y_red → Y a closed immersion, so both senses hold; a regular proper alteration would put A′ inside a finite, integrally closed Γ(Y′₀, O), so A′ would be finite: fails in both senses; vacuous | agree | added sense + Check |
| §0.12 separated threefolds | S = Spec Z_p[[u,v]] (dim 3), Y = S; non-affine Y (blow-up of the closed point); plane over Z with doubled zero section (dim 3) | cp19 Thm 1.1 with a one-member cover gives π projective; non-affine Y gives only proper; the doubled-section scheme is not separated, so excluded; D lies in π₁⁻¹(Z∩Reg) ∪ π₁⁻¹(Sing), nowhere dense, dim ≤ 2 | agree | restated |
| §1.8 route | A a rank-two valuation ring; A = Z, K = Q | `chow_lemma` needs A Noetherian (fails); §PA.0.7 needs qcqs + finitely many maximal points (holds); both sides Val_Q | old route refuted, new holds | F02 |
| §3.1 vs `SchemeInertia` | Z[i]/Z at (1+i), (2+i), (3) | (\|D\|,\|I\|) = (2,2), (1,1), (2,1) on both sides | agree | Check added |
| §4.1 recovery | (A², V(xy)); (A², {0}) | M = O ∩ j_*O_U^× with chart ℕ²; Hartogs gives O ∩ j_*O^× = O^×, so the non-triviality locus ∅ ≠ {0} | agree | route sentence |
| CR contract (a)/(b) | cusp with Z = {0}; A² with D = V(xy) | a log structure, not fine (x² + a x³ independent); M_D = units·x^a y^b, equal to CR.5's definition | agree | rewritten |
| LPV contract (b)/(c) | ±1 on A², char k ≠ 2, axes boundary; same with trivial log structure | G₀ = Z/2, abelian, order invertible, Kummer chart u = x², v = xy, w = y²; very tame locus A² ∖ {0}, open | agree | rewritten |
| fp-factorization U-clause | S = Spec A non-noetherian, X = Spec A/I with I not finitely generated, U = S ∖ V(I) quasi-compact | U is covered by D(f₁), …, D(f_n) with f_i ∈ I, J = (f_i) is finitely generated, X₀ = Spec A/J, X₀ ×_S U = ∅ = X ×_S U | agree | rewritten |
| §5.2a types | Gauss completion over k = k^a; radius r ∉ √\|k^×\| | (E,F) = (0,1), type 2; (E,F) = (1,0), type 3 | agree | new Checks |
| §5.2a cosets | F_p((t)), a = 0, b = t⁻¹, s = \|t\|⁻¹ | \|t⁻¹ + c^p + d\| = max(\|t\|⁻¹, \|c\|^p) ≥ s since p ∤ −1; critical, special, minimum t⁻¹ attained, consistent with stability of a DVR | agree | new Check |
| §5.2a deep ramification | completion of Q_p(p^{1/p^∞}); completion of Q_p^{tame} | Frobenius onto on k°/p; value group ℤ_(p) is not p-divisible (temkin10 Remark 6.2.2) | agree | new Check |
| §5.2a stability | Q_p, unramified quadratic | e = 1, f = 2, ef = 2 = degree | agree | new Check |
| §5.2b(iii) | k trivially valued, K = k(t) with the t-adic valuation | k·K° = K° ≠ K, centred at the smooth point t = 0, x = t works; my first draft wrongly said the valuation of K is trivial | fixed | worked example corrected |
| §5.6 proper variant | S regular, f smooth, Z = ∅ | Step 9 resolution proper gives a proper; b a projective modification; c proper | agree | added |
| §§6.1/6.2 proper variant | f = id_S, S regular, Z snc | a = b = id in both senses; Bl_Z Y projective, so the composite is proper | agree | added |
| §6.4 (i)/(ii) | X over Spec Z; X over Spec Z_p[[u,v]]; X = Spec Q[ε]/(ε²) | dim 1, so projective; excellent dim 3 separated, so only proper; degree 1, projective | agree | restated + Checks |
| §6.5 | S = Spec k, X a variety; X′ separated? | T = Spec k, case (i) and (iii); b proper over separated X makes X′ separated, so f′ quasi-projective (§PA.0.5) | agree | restated |
| §6.11a Rumely | Z[1/2] → Z; conic x² + y² + 1 = 0 over Z; A¹_Z | not surjective, and a point would make 2 a unit; no Z-point (no real point) but (i, 0) over Z[i]; zero section | agree | new target |
| §6.11b | X = P^d_S (N = d); general fibre count | L = ∅, π = id, S′ = S; a general (N−d−1)-plane misses a d-dimensional set since (N−d−1) + d = N − 1 < N | agree | new target |

## Ownership and citations

- Ownership against open pull requests was checked with `roadmaps grep` over the index of 352 open pull requests and main, and over the board packages. Searches were for the new objects: Rumely / Moret-Bailly / Skolem; "unramified generator", "one-dimensional analytic", "special coset", "deeply ramified"; Cossart–Piltant.
  - Only owner of a Moret-Bailly-type theorem: PotentialModularityAndCompatibleSystems R23.1 (merge order line 198, later than this roadmap's line 122).
  - **Moved down:** Rumely's existence theorem is stated here as §PA.6.11a.
  - Nothing owns temkin10's uniformization. PerfectoidSpaces mentions deeply ramified fields only in Gabber–Ramero's sense.
- Citations re-checked at the stated copies:
  - SchemeAndStackFoundations, main: §§0.9, 4.12, 4.16.
  - StableReduction, main: Layers 2–4.
  - EtaleCohomologyFoundations, main: §F.0.A1.
  - LefschetzPencilsAndVanishingCycles, head 8f3e9b1: §0.10, `VanishingCycles.veryTameQuotient` and `VanishingCycles.equivariantLogResolution`.
  - CrystallineCohomology, head 013a921: CR.5:log-algebra.4, M_D.
  - ClassicalAdicEtaleCohomology, head dfcb6b7: §2.4.
  - LocalFieldsRamificationPartII, board design: GF.5/unramified-composition and GF.5/abhyankar-and-rank.
- The pinned declarations were opened in the content checkout's `.lake` Mathlib and Tau Ceti.

## For the maintainer

- **Renumbered targets:** old 2.4–2.7 are now 2.3–2.6, 3.4–3.8 are 3.3–3.7, 4.4–4.10 are 4.2–4.8; new targets are 5.2a, 5.2b, 6.11a, 6.11b. EtaleDualityAndPerverseSheavesPartII cites by layer and slug (e.g. PA.0 `resolvability-excellent-dimension-two`, PA.4 `log-regular-pair`), not by number, so no citation breaks.
- **Projectivity has changed:** any consumer relying on universal projective resolvability of quasi-excellent threefolds, or on projective alterations in Temkin's Theorems 1.2.5/1.2.9 over a threefold base, must now use the proper sense over a separated base.
- **Unaffected consumers:** MotivesAndAlgebraicCycles §0.5c uses the perfect-field case (§PA.6.3, still projective). LogicAndDefinabilityInNumberTheoryPartII §2.1 uses §PA.6.10 (still projective).
- **Supplier gaps:** slugs are unchanged. The `needs` of finite-type-fp-factorization, closed-subset-log-structure and very-tame-local-quotient were sharpened. G1 is deleted because §PA.0.12 no longer claims what it described.
- **Source added:** `moretbailly89` (Numdam, open repository, certified). No `needs-references.toml` was written: every cited text was readable.
- **Source issues** (for the errata register; the review recorded them already): cp19 Theorem 1.1 gives neither global projectivity nor non-separated schemes, yet temkin17 §4.3.2 and Theorem 1.2.5 credit universal resolvability of all quasi-excellent threefolds to it.
- No suspicious instructions were found in the review or in any fetched text.
