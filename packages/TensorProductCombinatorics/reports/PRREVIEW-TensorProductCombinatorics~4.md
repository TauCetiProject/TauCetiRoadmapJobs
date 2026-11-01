# Review of TensorProductCombinatorics (pull request #1107 at dd4e4e3)

**Verdict:** accepted

Incremental re-review of the 113 lines changed since 411e15c (71 insertions, 42 deletions, all in `README.md`; nothing changed outside the roadmap folder, `git diff --stat origin/main...HEAD` excluding the folder is empty). Gate at this head: every check passes (`depcheck=0 build=0 stray-files=0 outside-folder=0`). My own runs: `lake env lean` on `TauCetiRoadmap/TensorProductCombinatorics/Suggested.lean` from the pull-request worktree gives the same 22 `declaration uses sorry` warnings as before (lines 104–513), no other diagnostic, exit 0; `Suggested.lean` is byte-for-byte unchanged since 411e15c, so the signature comparison and padding probe of the previous review stand. The dependency check reports `depcheck: 204 roadmaps, 1431 edges, 0 problem(s)` with no UPWARD, CYCLE or `moved:` line. Every one of the previous review's findings is repaired or carried as recorded below; the repairs introduced no new blocking problem. Two P3 notes remain, both the author's to take or leave.

## R01 (P3) — Fulton's Theorem 12 is in §3 of the survey, not §1

Location: `README.md` lines 2167–2171 ("Fulton, *Eigenvalues, invariant factors, highest weights, and Schubert calculus*, §1, equations (8)–(9), with the dictionary λ(I) at equation (10) and the identification of T_r^N with the Littlewood–Richardson-positive triples at Theorem 12"), line 2198–2199 (Layer 7 Dependencies: "Fulton, …, §1") and lines 2699–2704 (References).

Claim: the sentence groups Theorem 12 under "§1".

Witness: `fulton2000` (arXiv math/9908012v3) line 70 opens §1 and line 490 opens §2; equations (8)–(10) are at lines 217–251 inside §1, as cited, but Theorem 12 ("for all r < n the sets S_r^n and T_r^n are equal", with S_r^n the triples whose dictionary partitions have a nonzero Littlewood–Richardson coefficient, equation (18) at line 786) is at line 789, inside §3 "Highest weights" (line 653), printed page 15; its proof is §10.2 (line 1734). The mathematics cited is exactly what the survey states.

Repair: write "§1, equations (8)–(10) … and §3, Theorem 12" at line 2167–2171, "§§1 and 3" in the Layer 7 Dependencies and in the References entry.

## R02 (P3) — gaps the intake cannot read, and the supply loop through ClassicalGroups (carried)

Unchanged since the previous review (its R06): the five declared gaps (`README.md` lines 284–345) have no `design/plan.json` in the pull request (the folder holds `README.md`, `Suggested.lean`, `metadata.toml` only), so the intake has nothing to read and cannot announce them on the SchurWeyl and ClassicalGroups jobs; and at roadmap level this roadmap consumes ClassicalGroups Layers 3–6 while LieHighestWeight 6F on main consumes §1.6 here. Both are outside what this folder can change by itself and were recorded as a human decision two rounds ago. Not re-raised; listed so the record is complete.

## Previous findings

- R01 — repaired: `README.md` 88–96, 174–179, 215–218, 364–371, 1710–1728, 1949–1951 and 2583–2587 now consume "the comparison with Mathlib's quotient-rank Grassmannian that TopologicalKTheory T1 supplies (for k ≤ N, a bijection … on the same submodule V)"; "§6.1 owns" occurs nowhere; Mathlib `Module.Grassmannian` is gone from §6.1's `*Needs:*` and the Layer 6 Dependencies. Resolved on main (fa41b37): `TauCetiRoadmap/TopologicalKTheory/README.md` lines 228–236 (T1 item 5) and `TauCetiRoadmap/TopologicalKTheory/Suggested.lean` lines 274–282 (`finiteGrassmannianQuotientConventionEquiv 𝕜 r N (hr : r ≤ N)` and its `_submodule` law) state exactly the cited bijection with the `r ≤ N` hypothesis the README now carries.
- R02 — repaired: lines 2167–2171 cite Fulton 2000, §1, equations (8)–(9) for U_r^N, T_r^N and the recursion, (10) for λ(I) and Theorem 12 for the LR identification, keeping Knutson–Tao–Woodward II §§3.1 and 6 for the puzzle and Schubert forms; References entry added at 2699–2704. Verified against `fulton2000` lines 215–251 and 786–791 (the recursion, the shift r(r+1)/2, the quantifier "for all p < r and all (F,G,H) in T_p^r" and `λ(I) = (i_r − r, …, i_1 − 1)` are the README's); only the section of Theorem 12 is off (R01 above).
- R03 — repaired: lines 2545–2547 now say "the first hives of the two pairs share their bottom row and differ in their second and third rows; the second hives differ in their bottom row", which is what `hk` lines 1205–1224 show (table below).
- R04 — repaired: lines 309–312 ask SchurWeyl for the vertical Pieri specialization only and name `TauCeti.hsymm_mul_diagramSchurPoly` read through `TauCeti.schurPolyBasis` for the horizontal one; both exist at the pin (`Schur/Pieri.lean` 231, over any commutative semiring with `r = 0` allowed; `Schur/Basis.lean` 301, which needs a commutative ring, enough to read off the integer coefficients).
- R05 — repaired: lines 522–526 cite "Knutson–Tao–Woodward, *A positive proof*, §4, Lemma 1" (`ktw2` line 258: the obtuse-corner sum of a lattice parallelogram dominates the acute-corner sum, proved by summing the rhombi inside it, in §4 at line 257) and "Knutson–Tao–Woodward II, §5, Lemma 9" (`ktw` line 1522, inside §5 "Puzzle inflation, rhombi, and Schubert calculus": every honeycomb vertex coordinate lies in `[λ_n, λ_1]`, `[µ_n, µ_1]`, `[ν_n, ν_1]`); the References entries at 2675–2677 and 2685–2687 match.
- R06 — not repaired, carried as R02 above (outside the folder; not re-raised).

## Verified sound

**Build, form and signatures.** `lake env lean TauCetiRoadmap/TensorProductCombinatorics/Suggested.lean`: 22 `declaration uses sorry` warnings, no error, exit 0. The Lean file is unchanged since 411e15c (`git diff 411e15c..HEAD -- TauCetiRoadmap/TensorProductCombinatorics/Suggested.lean` is empty), so the `#check @name` comparison of all 70 declarations with their README statements and the one-tactic padding probe reported in the previous review apply unchanged; no README edit this round renames, re-scopes or adds a backticked Lean name of this roadmap's own (the worker's citation resolver finds no missing Lean name and no missing cross-roadmap citation). No `lemma`, `set_option`, `#eval`, sorry'd data, process word or pull-request number in the changed lines; the cross-roadmap citations added name roadmaps and sections only. The elaborated-signatures tool of the brief failed on an object file under a different lake directory (the content pin), not on this file; the targeted build of the gate (`build=0`) and my elaboration in the pull-request worktree both succeed.

**Dependency check.** `gate --depcheck … --movable`: `depcheck: 204 roadmaps, 1431 edges, 0 problem(s)`; no UPWARD, CYCLE or `moved:` line. The diff adds no supplier: TopologicalKTheory T1 was already consumed (line 364), Fulton 2000 is a source, and §6.1's `*Needs:*` lost an item.

**Cross-roadmap citations resolved this round.** TopologicalKTheory T1 item 5 on main at fa41b37 (`README.md` 228–236; `Suggested.lean` 274–282, the equivalence takes `(hr : r ≤ N)` and returns `Module.Grassmannian 𝕜 (Fin N → 𝕜) (N - r)`, its `_submodule` theorem gives `.toSubmodule = V.1`): the README's "for k ≤ N … on the same submodule" is this statement at 𝕜 = ℂ. SchubertGeometry on main, S9 item 1 (`README.md` line 109: "compare typeA subspace/quotient/Plücker models with MC0G, TopK and TPC") and item 5 (line 117): the Downstream sentence at 2583–2587 (Plücker-model comparisons here, the subspace/quotient-rank comparison TopologicalKTheory's) is consistent with it. SchurWeyl's open revision (#1164, head 0c0a362a) and ClassicalGroups' (#1192, head 4fd9f663) have not moved since the previous review; the gap contracts are unchanged apart from R04's clause.

**Library declarations opened at the pins (Tau Ceti a91d3aa; Mathlib as pinned).** `TauCeti.hsymm_mul_diagramSchurPoly` (`RingTheory/MvPolynomial/Symmetric/Schur/Pieri.lean` 231: `hsymm (Fin N) R r * diagramSchurPoly N R ν = ∑ μ … InterlacedBy ν, diagramSchurPoly N R (diagramOf μ)`, any commutative semiring, any `r`), `TauCeti.schurPolyBasis` (`Schur/Basis.lean` 301, a `Module.Basis` of `symmetricHomogeneousSubmodule σ R n` over a commutative ring), `Module.Grassmannian` (`Mathlib/RingTheory/Grassmannian.lean`, as in the previous review).

**Ownership.** The only object whose owner changed this round is the subspace/quotient-rank comparison, now cited to TopologicalKTheory T1 (above). `roadmaps grep` was not rerun for the other objects: the diff creates no new construction. Ownership against open pull requests was checked through the sibling checkouts the brief lists for the two suppliers that matter here (SchurWeyl, ClassicalGroups) and on main for TopologicalKTheory and SchubertGeometry.

**Adversarial table.** Rows for statements the diff leaves untouched carry forward from the previous review's table (hive LR headlines, Steinberg, PRV, vertical Pieri, stretching, unimodularity, chamber counts, slack and chirality, the rank-5 certificates, Schubert classes, the GL₃ crystal, §7.4 witnesses, the Lean degenerate cases: all computed there, 0 failures). New rows, computed this round in a scratch script (Schur polynomials by semistandard-tableau enumeration, Littlewood–Richardson coefficients by peeling the product in the dominance order, hives by the three rhombus families, Horn's sets by the README's recursion):

| Statement | Instances | Values each side | Result |
|---|---|---|---|
| §7.5 Horn recursion, N = 2 Check | T_1^2 | {(1,1,1), (1,2,2), (2,1,2)}; (2,2,1) excluded since 2+2 ≠ 1+1 | sound |
| §7.5 N = 3, r = 2 Check | U_2^3, T_2^3 | both of size 6; ({1,2},{1,2},{1,2}) ∈ T_2^3 (3+3 = 3+3, p = 1 conditions hold); ({1,2},{1,2},{2,3}) ∉ U (6 ≠ 5+3) | sound |
| Fulton Theorem 12 as cited (T_r^N = LR-positive triples under (10)) | N = 2..5, all r < N | (\|U\|, \|S\|, \|T\|): N=3: (6,6,6),(6,6,6); N=4: (10,10,10),(27,21,21),(10,10,10); N=5: (15,15,15),(83,56,56),(83,56,56),(15,15,15); S = T in all 10 cases | sound |
| §7.5 dictionary Check | I = {1,2}, {3,4} ⊂ {1..4} | λ(I) = (0,0) ↔ word 0011; λ(I) = (2,2) ↔ 1100 | sound (as r3) |
| §9.2 Yang–Baxter Check | HK's M, N, pairs (18), (19) | all six arrays satisfy every rhombus inequality; first hives: rows equal (T,F,F,T) (rows of 1,2,3,4 entries), second hives: (T,T,T,F) | sound |
| §1.2 parallelogram inequality (A positive proof, Lemma 1) | all 3 987 integer hives of size 3 with entries in 0..4, parallelogram with corners (1,0),(1,1),(3,2),(3,3) | obtuse sum a₁₁+a₃₂ ≥ acute sum a₁₀+a₃₃: 0 violations | sound |
| §1.2 vertex bounds read on the hive (KTW II Lemma 9(1)) | the same 3 987 hives | every edge difference parallel to the NW side lies in [min λ, max λ] of that side's differences: 0 violations | sound |
| gap:skew-lr-tableaux, horizontal Pieri not asked for | h₂ · s₍₂,₁₎ in 3 variables | = s₍₄,₁₎ + s₍₃,₂₎ + s₍₃,₁,₁₎ + s₍₂,₂,₁₎, each coefficient 1, exactly the horizontal strips, as `hsymm_mul_diagramSchurPoly` states | sound |
| §6.1 quotient-rank Check through T1's equivalence | N = 2, k = 1, hr : 1 ≤ 2 | span(1,0): quotient rank 1 = N − k, a point of `G(1)` on the same submodule; zero subspace: quotient rank 2, not a point | sound |
| §6.1 k = N and k = 0 under the cited hypothesis k ≤ N | N = k; k = 0 | `G(0)`: the whole space (quotient rank 0); `G(N)`: the zero submodule; both one-point, dimension 0 = kq | sound |

**Sources sample, restricted to the changed passages (ids as in the previous review; this round's cache: `ktw2` = arXiv math/0306274v1, `ktw` = math/0107011v2, `hk` = math/0408114v3, `fulton2000` = math/9908012v3).** §1.2: `ktw2` §4 Lemma 1 (lines 257–262); `ktw` §5 Lemma 9 (1522–1528). §6.1: TopologicalKTheory T1 on main (above); Buch §1 unchanged. §7.5: `fulton2000` (8) at 217–225, (9) at 230–239, Horn's Conjecture at 240–242, (10) at 251, Theorem 2 at 259, (18) and Theorem 12 at 786–791. §9.2: `hk` 1190–1227. The remaining sampled targets (1.4, 1.5, 1.6, 2.7, 4.3, 4.5, 5.4, 6.3, 6.6, 8.2, 8.3, 9.1) are untouched by the diff and were verified in the previous two rounds.

## Not verifiable

- Fulton 2000: the sources service resolved both the arXiv id and the journal DOI (10.1090/S0273-0979-00-00865-X) to arXiv v3 (dated 25 March 2000); the printed Bull. AMS numbering of equations (8)–(10) and Theorem 12 was not compared against it.
- Littelmann 1995, Fulton's *Young Tableaux*, Knutson's handout and the course notebooks: as in the previous review; none is touched by the diff.

## Source issues

- none
