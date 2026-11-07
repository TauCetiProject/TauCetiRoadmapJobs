# Review of CohomologyComparisonsPartII (pull request #1364 at 33ee465)

**Verdict:** needs changes

This is an incremental re-review of the 22 changed lines since 212f91b: 14 insertions and 8 deletions, 21 lines in `TauCetiRoadmap/CohomologyComparisonsPartII/README.md` and one in `Suggested.lean`. There are no changes outside the folder. The change answers R01–R05 of the previous report:

- the `module` line;
- the HuberKings manifest entry and its line locators;
- the BesserI line locators;
- a smooth normal-crossings condition on the compactification in §2.2, with an existence sentence and a negative-control Check (the cuspidal cubic);
- a citation of ColemanIntegration §L3.Fb.1 with a new supplier subsection.

The gate passes and the file elaborates. The repair of R04 leaves two P3 defects in the same passage, R01 and R02 below. There are no P1 or P2 findings.

## R01 (P3) — the smooth normal-crossings condition restricts Fil^r_tub, not only κ_r, so the cuspidal-cubic Check falls outside the definition

**Location.** `TauCetiRoadmap/CohomologyComparisonsPartII/README.md` line 359: "Choose a compactification X⊂X̄ over V whose generic fibre X̄_K is smooth with X̄_K−X_K a normal-crossings divisor … Put Fil^r_tub RΓ_rig(X_k/K)=colim_W RΓ(W,j†F^r_IΩ•)". Also line 379 (the cuspidal-cubic Check), line 361 (first API bullet), and "Y=X̄ is always admissible" in line 359.

**Claim.** The condition is placed on the compactification used to *define* Fil^r_tub. It is needed only to form κ_r, where logarithmic forms on X̄_K must compute F^rRΓ_dR(X_K/K). BesserI Definition 9.1 defines the filtered rigid complex for any compactification of X over V with a closed embedding into a Y smooth in a neighbourhood of X. The README's own text uses that wider reading in two places, but line 359 does not allow it.

**Witness.** Line 379 calls the cuspidal cubic C_V "not an admissible X̄ for κ_r" and then evaluates Fil^r_tub with Y=X̄=C_V. Line 359 does not define that complex. BesserI line 1106–1108 and Remark 9.2 (line 1126–1127) do allow it. ColemanIntegration §L3.Fb.1 allows an arbitrary projective X̄, so line 359's "Y=X̄" identification with Ω•(U) also needs X̄ whose generic fibre may be singular. Finally, "admissible" is used for X̄ (lines 361, 379) and for Y (line 359), and is defined for neither.

**Repair.**

1. In line 359, write "Choose a compactification X⊂X̄ over V", with no condition.
2. In the sentence that constructs κ_r, add: "for κ_r choose X̄ admissible, meaning X̄_K is smooth and X̄_K−X_K is a normal-crossings divisor, so that F^rRΓ_dR(X_K/K) is computed by the logarithmic forms on X̄_K (contract `relative-hodge`); such X̄ exist (…)". Move the existence sentence there as well; see R02 for its corrected wording.
3. Replace "Y=X̄ is always admissible" by "Y=X̄ is always allowed".

**Tested on the refuting instance.**

- Fil^r_tub(C_V,C_V) is then defined by BesserI Definition 9.1, since C_V is smooth near A¹_V (in the chart y=1 it is z=x³).
- Its value equals the (ℙ¹_V,ℙ¹_V) value, by row D08 below.
- It also agrees through the first bullet: the normalization ℙ¹_V→C_V, [u:w]↦[uw²:w³:u³], is a proper morphism of compactifications (BesserI line 1116–1119).
- κ_1 is formed only with ℙ¹_V.

Line 379 then agrees with the definition as written.

## R02 (P3) — the existence argument for an admissible X̄ omits the boundary principalization, and its inputs are not on the *Needs:* line

**Location.** `README.md` line 359: "such X̄ exist, since blowing up any V-compactification along the closures of the centres of a resolution of its generic fibre leaves X untouched, those closures lying in the boundary". Also line 368, the §2.2 *Needs:* line.

**Claim.** A resolution of X̄_K that is an isomorphism over X_K makes X̄_K smooth. It does not make X̄_K−X_K a normal-crossings divisor. The argument also uses two theorems that the §2.2 *Needs:* line does not list, although both have owners earlier in the order:

- the existence of a V-compactification;
- resolution with principalization in characteristic zero.

**Witness.** Take X=ℙ²_V−C_V, where C is the cuspidal cubic y²z=x³, and X̄₀=ℙ²_V. Since ℙ²_K is smooth, its resolution has no centres. The boundary C_K keeps its cusp at [0:0:1]: locally y²=x³, which is unibranch and singular, so not normal crossings. The owners are EtaleCohomologyFoundations §G.2 `nagataCompactification` on main, and ResolutionOfSingularitiesCharacteristicZero §§5.1, 5.5, assembled in its §6.2 (merge-order line 15, before this roadmap at line 197).

**Repair.** Replace the clause with: "…along the closures of the centres of a resolution of its generic fibre that is an isomorphism over X_K, followed by a principalization of the ideal of X̄_K−X_K (ResolutionOfSingularitiesCharacteristicZero §§5.5, 5.1), all centres lying over the boundary". Add "EtaleCohomologyFoundations §G.2; ResolutionOfSingularitiesCharacteristicZero §§5.1,5.5" to the line 368 *Needs:*.

**Tested on the refuting instance.** Principalizing the ideal of C_K takes three point blow-ups over the cusp:

1. After the first, the strict transform is smooth and tangent to E1.
2. After the second, the strict transform, E1 and E2 pass through one point.
3. After the third, the strict transform, E1, E2 and E3 form a strict normal-crossings divisor.

The closures of the centres lie over the section [0:0:1]_V, which is disjoint from X, so the result is admissible.

**Alternative.** Besser's own construction (BesserI line 1148–1154, proof of Proposition 9.5) would remove the existence sentence altogether. It takes the logarithmic forms on a de Rham datum of X_K over K, which `relative-hodge` already supplies (BesserI Definition 5.1, line 649–651). It analytifies them and restricts to X_K^an, which contains the strict neighbourhoods. This needs no V-model with a good generic fibre, and it would also make the condition of R01 unnecessary.

## Previous findings

- R01 — repaired: `Suggested.lean` line 1 is `module`, followed by `import Mathlib`. The worker's gate at 33ee465 reports build=0 and `OK`, and `lake env lean` exits 0 with no output.
- R02 — repaired: `sources.toml` records HuberKings (arXiv math/0612611v1, certified, sha256 028c4f89…). README lines 359, 366 and 952 cite lines 413, 495, 532, 536, 543, 559, 563, 573 and 605, each on its target.
- R03 — repaired: "BesserI line 741–743" (line 357), "BesserI line 1116–1119" (line 366) and "BesserI line 1141" (line 359) now land on the cone, the independence statement and Proposition 9.5. The reference entry (line 951) lists them.
- R04 — repaired, but the repair introduced two new problems. Line 359 now requires X̄_K smooth with normal-crossings boundary, so κ_r is well defined. The clause sits on Fil^r_tub's data (R01), and its existence argument omits the principalization (R02).
- R05 — repaired: line 359 identifies the Y=X̄ case with Ω•(U) of ColemanIntegration §L3.Fb.1 and says how Fil^r_tub extends it. The contract is at lines 76–78, ColemanIntegration §L3.Fb.1 is on the *Needs:* line 368, and the scope parenthetical is at line 17.

## Verified sound

### Gate, dependency check, elaboration

**The worker's gate at 33ee465:** every counter is 0 (`set_option`, blob, latex, tex, prnum, sorry-data, sorry-examples, residue, private-paths, imports, mathlib-subimports, no-import-mathlib, lean-lines, statement-hygiene, forbidden, dropped, readme-ids-missing, empty-sections, round-labels, long-fences, layer-ids, target-ids, depcheck, metadata, stray-files, dirty, outside-folder, source-material, build), then `OK`. I reran the gate independently from the worktree: every counter 0, `OK`, exit 0.

**The prescribed dependency check**, with `--movable`, against the board merge order and the main content tree:

```text
depcheck: 239 roadmaps, 2368 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The new edge goes to ColemanIntegration, at merge-order line 130, before this roadmap at line 197.

**Elaboration.** `lake env lean` on `TauCetiRoadmap/CohomologyComparisonsPartII/Suggested.lean` from the pinned worktree: exit 0, no output, 14.6 s. The file is otherwise unchanged:

- `module` then `import Mathlib`;
- the module docstring naming the eleven headline groups as not statable at the pins;
- the namespace, with zero declarations.

So there are no signatures to compare and no sorried statements to probe for padding. The headline list is unchanged since the previous reviews.

**Diffs.** `git diff --stat origin/main...HEAD` outside the roadmap folder is empty (origin/main = merge base = eaf17b10). The diff 212f91b..HEAD touches only the folder's README.md and `Suggested.lean`.

**Contracts.** The 34 contract slugs of the README equal the 34 `gaps` of `design/plan.json` (checked by script). The new ColemanIntegration subsection is a section citation, not a gap.

### The changed passages, line by line

| README line | Change | What was checked |
|---|---|---|
| 17 | scope: the Y=X̄ stupid-filtered complex imported from ColemanIntegration §L3.Fb.1 and extended | matches ColemanIntegration §L3.Fb.1 at its open head; single owner, row D05 |
| 76–78 | new supplier subsection ColemanIntegration §L3.Fb.1 | At its head, L3.Fb.1 defines X=Spec A smooth affine in a projective X̄, U_λ given by \|h_i\|>λ, Ω•(U)=colim Γ(U_λ,Ω•) computing H*_rig (BDJ Proposition 4.2), and F^nΩ^j=Ω^j for j≥n. Its layer's standing hypothesis is a residue field algebraic over F_p, so the contract's wording is exact; the cone, Frobenius lift and limit are excluded as stated |
| 357 | BesserI line 741–743; HuberKings line 543, 559 | BesserI 741–743 is the cone of Proposition 6.3; HuberKings 543 is Definition 2.2.1; 559 is the map (a,b)↦(a−b,(1−Φ*/pⁿ)b) |
| 359 | condition on X̄, existence sentence, "Y smooth in a neighbourhood of X", Y=X̄ identification with ColemanIntegration, κ_r via strict neighbourhoods on which the boundary equations are bounded below, locators | The change from "near X̄" to "near X" is correct: BesserI Remark 9.2 (line 1126–1127) takes Y=X̄ because X is smooth. Locators 1106–1115, 1126, 1131, 1141 checked; HuberKings 536, 543, 563, 573, 605 checked. The κ_r construction was checked on the rows below. R01 and R02 concern this line |
| 361 | κ_r independent of the admissible X̄ | row D07 |
| 366 | HuberKings line 495, 532; BesserI line 1116–1119 | Proposition 2.1.6 (Poincaré lemma) and Proposition 2.1.7 (rigid cohomology); Besser's independence under smooth change of Y and proper change of X̄ |
| 368 | *Needs:* adds ColemanIntegration §L3.Fb.1 | earlier in the order; R02 for the two missing entries |
| 379 | Check: cuspidal cubic | row D08 (values correct); R01 (domain of the definition) |
| 951–952 | references | BesserI line list; HuberKings pp. 11–15 with line 413 on p. 11 (page-12 marker at line 459), 495 on p. 12, 532/536 on p. 13, 543–577 on p. 14, 605 on p. 15 |
| `Suggested.lean` 1 | `module` | elaborates; gate build=0 |

### Adversarial pass

The following rows carry forward unchanged, for every statement the diff leaves untouched:

- rows A01–A150 of the first report (head 8858e49): Conventions, §§1.1–1.6, 2.1, 2.3, 3.1–3.4, 4.1–4.5, 5.1–5.3, 6.1–6.7 and 7.1–7.5;
- rows B01–B10 of the report at head c9807db;
- rows C01–C03, C08, C10, C11 and C13 of the previous report (head 212f91b): the coordinate isomorphism, the forced sign, the Spec ℤ_p weight-two Check against the consumer's η, the Huber–Kings transcription, the Huber–Kings point example and Chern-class ownership.

Rows C04–C07, C09 and C12 concern the rewritten paragraph and are recomputed below (D04–D06, D09–D11).

| ID / statement | Instance tried | Values on each side, or valid versus wrong model | Result |
|---|---|---|---|
| D01 condition on X̄ (line 359) | ℙ¹_V⊃A¹_V; C_V: y²z=x³ ⊃ A¹_V via t↦[t:1:t³]; Spec V⊃Spec V; Spec V⊃Spec K | ℙ¹_K is smooth with boundary {∞}, a reduced point: admissible. On C_K, the partials (−3x², 2yz, y²) all vanish at [0:0:1]: singular, so not admissible. Spec V, Spec K: empty generic-fibre boundary: admissible | Condition discriminates as intended |
| D02 existence sentence (line 359) | X=ℙ²_V−C_V, X̄₀=ℙ²_V | The resolution of ℙ²_K has no centres; the boundary C_K stays cuspidal, not normal crossings. With principalization, three point blow-ups give C̃+E1+E2+E3 strict normal crossings, and the centres lie over [0:0:1]_V, disjoint from X | Argument incomplete: R02 |
| D03 Y smooth near X (line 359) | Y=X̄=C_V | C_V is smooth near A¹_V (chart y=1: z=x³) and singular at the cusp. "Near X" allows it and "near X̄" would not; BesserI Remark 9.2 needs "near X" | Change correct |
| D04 Fil_tub at Y=X̄ (line 359) | curve X, r=−1,0,1,2 | I=0, so I^(r−j)Ω^j is Ω^j for j≥r and 0 for j<r. For r≤0 this is all of Ω•, so the forgetful map to C is the identity. For r=1 it is Ω¹ in degree 1. For r=2 it is 0 on a curve | Stupid filtration, as stated |
| D05 Y=X̄ equals ColemanIntegration's Ω•(U) (lines 78, 359) | G_m,V⊂ℙ¹_V, boundary equations x near 0 and 1/x near ∞ | The README's neighbourhoods are {λ≤\|x\|≤λ⁻¹}; Coleman's U_λ are {λ<\|x\|<λ⁻¹}. The two families interleave, so the colimits agree. H⁰=K and H¹=K·dx/x (rigid cohomology of G_m); H¹(F¹)=Ω¹(U) is infinite-dimensional | Same object |
| D06 κ_r on filtered terms (line 359) | A¹_V⊂ℙ¹_V, r=1; G_m,V⊂ℙ¹_V, r=1 | For A¹: F¹=RΓ(ℙ¹_K,O(−1))=0, so the filtered component of κ_1 is 0, consistent with C05. For G_m: H¹(F¹)=H⁰(Ω¹(log{0,∞}))=K·dx/x, which restricts into Ω¹({λ≤\|x\|≤λ⁻¹}). The neighbourhood avoids 0 and ∞ since \|x\|≥λ>0 and \|1/x\|≥λ | Lands in Ω^(≥1) on neighbourhoods avoiding the boundary |
| D07 κ_r independent of admissible X̄ (line 361) | X̄=ℙ¹_V and X̄′=the blow-up of ℙ¹_V at the closed point ∞_k | The centre lies in the special fibre, so X̄′_K=ℙ¹_K is admissible. X̄′→X̄ is proper, so Fil_tub agrees (BesserI line 1116–1119), and the generic-fibre log forms are identical | Same κ_1 |
| D08 Check, cuspidal cubic (line 379) | boundary equations x/z=t^(−2), y/z=t^(−3) near the cusp | For \|t\|>1 the larger is \|t\|^(−2), and \|t\|^(−2)≥λ exactly when \|t\|≤λ^(−1/2). The cusp t=∞ is excluded, and the colimit over ρ=λ^(−1/2)→1⁺ equals the ℙ¹ value. The normalization [u:w]↦[uw²:w³:u³] satisfies y²z=w⁶u³=x³ | Values correct; domain: R01 |
| D09 Spec K ⊂ Spec V (recomputes C07) | X̄=Y=Spec V, r=0 | X̄ is admissible. X_k=∅; the boundary equation is π, and \|π\|<λ, so the neighbourhood is ∅. Fil⁰_tub=0 and κ_0:K→0 | Consistent with "no equivalence for general smooth affine X" |
| D10 proper X (recomputes C06) | X̄=Y=X; ℙ¹_V, r=1 | Empty boundary, so X̄ is admissible. The only strict neighbourhood is X_K^an, and GAGA gives H¹=K on both sides | Equivalence route closes |
| D11 X=Spec V (recomputes C04) | r≤0, r>0 | X̄ is admissible. The filtered terms are K, resp. 0, on both sides | κ_r is the identity |
| D12 locators of the change | HuberKings 413, 495, 532, 536, 543, 559, 563, 573, 605; BesserI 741–743, 1106–1108, 1109, 1116–1119, 1126, 1131, 1141 | Each lands on the cited item: R finite over ℤ_p; Propositions 2.1.6 and 2.1.7; §2.2; Definition 2.2.1 and its map; Remark 2.2.2; Example 2.2.4; Proposition 2.2.7; Besser's cone; the definitions of X̄ and Y; Definition 9.1; independence; Remark 9.2; Definition 9.3; Proposition 9.5. Page markers: p. 20 at BesserI line 739, p. 30 at line 1124 | Correct |

### Sources, library and cross-roadmap checks

**Sources.** The 15 targets of the seeded sample lie outside the diff. Of them, §2.1 is the one the changed passage depends on (its *Needs:*). I re-read §2.1 at BesserI line 625 (σ-semilinear Φ), line 648–662 (Definition 5.1, de Rham data) and line 663–688 (the map (5.2)–(5.3) through a V-compactification), with pages 16–18 (markers at lines 592, 629, 668). It is consistent with the new κ_r. The other sampled targets carry forward from the first report.

**Library.** The diff adds no Lean declaration and no library citation.

**Cross-roadmap citations resolved:**

- ColemanIntegration §L3.Fb.1 and its layer's standing hypotheses, at its open head;
- EtaleCohomologyFoundations §G.2 `nagataCompactification`, on main;
- ResolutionOfSingularitiesCharacteristicZero §§5.1, 5.5, 6.2, at its open head, earlier in the order;
- PadicHodgeRegulators line 268, the consumer at its open head. Its reading of the tube-filtered variant and of κ_n is unchanged by the diff.

**Ownership.** The roadmaps grep for the tube-filtered complex over main and the open heads hits only this roadmap and PadicHodgeRegulators, which cites §2.2. ColemanIntegration owns the affine projective special case, and it is now cited.

**Overlaps.** The overlap report lists no other pull request that changes this roadmap and no dropped id in either direction. Ownership against open pull requests whose files the brief does not supply was checked only through the roadmaps tool's grep.

**Citation lead.** The worker's `roadmaps resolve` lead "HuberKings §2.2" is a source citation, not a roadmap, so it is a false positive.

## Not verifiable

- The OCR of BesserI drops the bars over X̄, so lines 1106–1108 read "compactification of X … smooth in a neighborhood of X" for both X and X̄. The reading "smooth near X" was fixed from Remark 9.2 (line 1126–1127), which takes Y=X̄ on the grounds that X is smooth.
- As in the previous reviews, the cited sections of AInfCohomology, CohomologyComparisons, CrystallineCohomology, PadicPeriodRings, PadicHodgeTheory, PadicDifferentialEquationsAndRigidCohomology and PrismaticCohomologyPartIII are not in the supplied main tree. The diff adds no citation of them. BesserII remains settled uncertified, and no changed line uses it.

## Source issues

- none
