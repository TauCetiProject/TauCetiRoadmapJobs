# Review of FreeGroupsAndLimitGroups (pull request #2221 at 2838433)

**Verdict:** accepted

No finding at this head. Incremental re-review of 0 changed lines since `2838433`; this round read the pull request's title and description against the head.

## Previous findings

- The previous review, of `2838433`, had no finding; there is nothing to carry.

## Verified sound

The folder did not change, so no statement changed; the rows are statements the description's items cite, recomputed at this head.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §4.11(2), `rank_coprod` without nontriviality (item 14) | `G=1`, `H=ℤ`; `G=H=1`; `ℤ/2∗ℤ/3` | `rank(1∗ℤ)=1=0+1`; `rank(1∗1)=0=0+0`; `2=1+1` (abelianization `ℤ/2×ℤ/3` is cyclic, the group is not) | holds with trivial factors; signature has no `Nontrivial` binder | none |
| §7.2 inequation encoding (item 1) | `x y z⁻¹`, table `(z₁, z₂, z₂⁻¹z₁⁻¹)`, `U=(a,a⁻¹,a,a⁻¹)` | `x=a`, `y=a⁻¹`, `z=(a a⁻¹)⁻¹=1`, so `x y=1` although the old encoding of `x y≠1` is satisfied | the counterexample is real; README:1754 carries `z_t z_t⁻¹` | none |
| §7.2 length `N` (item 2) | `x=a`; empty system, `X={x}` | `2+0+2=4`; `0+0+2=2` | equals word length plus `3|T|+2|X|` as the description says | none |
| §6.5 all variables occur (item 8) | `G=1`, `n=1`, one spare variable | `G_S=ℤ²∗ℤ`, abelianization `ℤ³`; `G∗S⁺(1,0)=ℤ²`, abelianization `ℤ²` | not isomorphic; README:1564 requires `X` to be the occurring variables | none |
| §7.11 for every equation (item 7) | `∀x∃y (1=1)`, `∀x∃y (a=1)` | first true, formal solution `q=1`; second false, `a≠1` in `F[x]`, no formal solution | criterion has content only quantified over every `S`; README:1890 states it so | none |
| §4.1 Check on non-injective `ω_e` (item 13) | `ℤ→ℤ/2←ℤ` onto on both sides; `ℤ→A` trivial, `ℤ→ℤ` identity | `⟨a,b | a², b², a=b⟩=ℤ/2`, both embed; `A∗ℤ/⟨⟨t⟩⟩=A`, `B` maps to 1 | README:793 states both | none |

The rows for the statements of the folder stand as in the previous review, of `2838433`.

- Pull request text against the head: the three summary paragraphs, the stacking paragraph, items 1–14, the list "Further corrections not made here" and the Checks were each compared with the README or `Suggested.lean`; none is contradicted. Counted: 12 theorems and 14 definitions (1 structure, 12 `def`, 1 `abbrev`) in `Suggested.lean`; its diff against `d31b59b` is `rank_coprod` alone; `d31b59b` is an ancestor; pins `1b1ccf4` and `2fd255d` agree with the manifest and README:57, :128.
- Changes a reader must know of: revision of a roadmap on main (stated); `Suggested.lean` cut to headlines, 160 declarations removed against main (stated, with its origin in #2205); the 8 heading differences against main are code-span removals in `6.0b`–`11.4c` and the two pin commits, no renumbering (as stated); suppliers unchanged (Mathlib, Tau Ceti only).
- The README has no hunk against `d31b59b` in §7.4, §7.5, the §7.10 statement or §10.1a, as "none is made in this pull request" says; the §7.10 hunk (README:1878–1880) is the proof sketch of item 6.
- Source locators in the description checked against the text: 6, in IFT: Lemma 13 (line 897, p. 21), Lemma 14 (line 970, pp. 22–23), Corollary 9 (line 1140, p. 26), Theorem 8 (line 2893, p. 62), Theorem 9 (line 3133, p. 67), continuation of its proof (line 6667, p. 134). No sampled target falls in a changed passage (there is none).
- Elaboration: `lake env lean` on `Suggested.lean` gives 12 `sorry` warnings (lines 42, 48, 57, 80, 87, 103, 119, 137, 144, 177, 268, 279) and no other diagnostic.
- Gate rerun at this head: every check 0, OK; the worker's run built the module (`build=0`). Depcheck: `depcheck: 245 roadmaps, 2211 edges, 0 problem(s)`. No file outside the folder differs from `origin/main`.
- Remark: the title says "formalising Layers 6, 7, 10 and 11" and the description "sections of Layers 7, 8, 10 and 11"; the two lists concern the formalisation, which the head does not record, so neither is contradicted by it.
- Overlap check: read SurfaceTopology, RandomGraphs, GraphConnectivityAndFlows; nothing shared (a search of all open heads and main for Grushko decompositions, limit groups, generalised equations and Stallings foldings finds them stated only in this roadmap's two pull requests). #2205 changes the same folder, merges cleanly with this head and merges first, as the description states.
- Source independence: changed passages only; 0 passages changed since `2838433`, so none compared and the arrangement not compared again; the previous comparison stands.

## Not verifiable

- The description's statements about open Tau Ceti pull requests (#38205, #38225, #38255, #38942) and about Lean counterexamples compiled against Tau Ceti: those pull requests are not among the materials of this review; the mathematical content of items 1, 2, 4, 7 and 8 was checked directly.
- The description's locators into RECOMP, KM06, JSJ, ALG, VAR-I and SUBGROUPS (items 5, 9, 12): only compared with the README's locators, which agree; the texts were not reopened this round.

## Source issues

- none

## For the human reviewers

- **Scope.** README:2550 (§10.9) says that no listed source proves the subsection's general statements; JSJ Theorem 3.23 and KM06 Theorem 32 state decidability without proof and attribute it to an unpublished 2002 preprint. The description's Question 3 asks the maintainers about it.
- **Open questions.** The description ends with seven questions for the maintainers (§§6.5, 7.1, 7.2, 7.10, 10.9, 11.4, 11.4b) and a list of five corrections to §§7.4, 7.5, 7.10 and 10.1a that it does not make.
