# Repair report: SobolevMapsBetweenManifolds

## F01 (P3) — applied

§1.1: "an exponent `p` and a map … with any `p : ℝ≥0∞`, say that `g` is *locally `Lᵖ` on `s` *" → "an exponent `p : ℝ≥0∞` and a map … say that `g` is *locally `Lᵖ` on `s`*". `p` is now bound once and the emphasis closes.

## F02 (P3) — applied

Scope and ownership: "Mathlib's theorem above" → "Mathlib's `MeasureTheory.addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero`", and "is `DifferentiableOn.addHaar_image_eq_zero_of_finrank_lt_finrank`" → "is Tau Ceti's `…`". I fixed the same unattributed pattern in the next sentence of that paragraph: "The local retraction theorem" → "Tau Ceti's local retraction theorem" (`Manifold.IsImmersionAt.exists_contMDiffOn_retraction`).

## F03 (P3) — applied

How to read the build now says: "Layer 1 and §3.1 can be built at once. §3.2 needs §1.1 and §3.1. … Layer 6 needs §3.1 and Layers 4 and 5. Layer 7 needs §1.2, §3.1 and Layers 4–6." Layer 6 Dependencies gains "§3.1". Layer 7 Dependencies: "Layers 1 and 3–6" → "§1.2, §3.1 and Layers 4–6".

## F04 (P3) — applied

§1.2: "(Ziemer1989 Ch. 2 §2.1; Mazya2011 §1.1; HeikkilaPankka2025 line 22–23)" → "(Ziemer1989 Ch. 2 §2.1; Mazya2011 §1.1)". `sources.toml`: Mazya2011 `cited_for` gains "1.2 the local class on a domain". Same pattern elsewhere: §4.3 "Prove (HeikkilaPankka2025 line 22–26):" now attaches the locator to the definition. §5.2 drops HeikkilaPankka2025 from the L^p characterisation.

## F05 (P3) — applied differently

§7.1 lead-in: "Prove (MartioRickmanVaisala1969 line 124 and lines 332–340):" → "Prove:". Line 124 stays at the fourth bullet, where the claim is. A new background paragraph describes MRV's `ACL^p` (lines 332–340) and says nothing in §7.1 uses it. Unlike the suggested sentence, it claims no equivalence of the classes.

## F06 (P3) — applied

Summary T1: "`W^{1,p}_loc` is preserved (a) by precomposition … (§2.2) and (b) by postcomposition of continuous members … (§2.4), and (c) it is a sheaf (§1.3). It is also preserved by … bounded derivative (§2.3). Each of the three preservation statements comes with its … chain rule." Also: "(T2, first half)" → "(the first sentence of T2)".

## Verification and evidence

- **F01.** At the old lines 440–441 the closing `*` came after a space, so CommonMark does not treat it as a right-flanking delimiter. A scan of every paragraph of the README, with code spans masked and `**` removed, now finds no unpaired `*` and no delimiter next to whitespace. The bound `p : ℝ≥0∞` matches the elaborated type of `MemLpLoc` (`Measure X → ℝ≥0∞ → Set X → (X → B) → Prop`).
- **F02.** The finding is right: before the null-image sentence, the scope paragraph names only `LinearMap.normDet`, the isometry lemmas and the Whitney embedding. Pins:
  - `MeasureTheory.addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero` is at `Mathlib/MeasureTheory/Function/Jacobian.lean:556`, inside `namespace MeasureTheory` (line 272).
  - `DifferentiableOn.addHaar_image_eq_zero_of_finrank_lt_finrank` is at `TauCeti/Analysis/Calculus/Sard/LowDimension.lean:73`, with hypothesis `finrank ℝ E < finrank ℝ F`. The source has the smaller dimension, so the map raises dimension, which is what "increasing-dimensional" says.
  - `exists_contMDiffOn_retraction` is at `TauCeti/Geometry/Manifold/SmoothEmbedding/Extension.lean:64`, inside `namespace Manifold.IsImmersionAt` (line 47).
- **F03.** I extracted the internal section citations of every `*Needs:*` line:
  - §3.1: none. §3.2: §1.1, §3.1. §3.3: §2.1.
  - §5.x: §3.1, §3.2 and §4.x.
  - §6.2: §3.1, §4.3, §4.4, §5.1, §6.1. §6.3: §5.2. §6.4: §3.1, §4.4.
  - §7.1: §1.2, §3.1, §4.2, §4.3, §5.1, §6.1, §6.2.
  - §8.x: §2.3, §2.4, §4.x, §5.1.

  Every section each layer cites now appears in that layer's sentence and in its Dependencies line. The sentences for Layers 2, 4, 5 and 8 were already right and are unchanged.
- **F04.** HeikkilaPankka2025 lines 22–23 name `W^{1,n}_loc(M, N)` for continuous maps between oriented Riemannian `n`-manifolds, `n ≥ 2`. They contain no Euclidean class and no exponent other than `n`. A script checked every source citation of each numbered section against that key's `cited_for` in the manifest. Results:
  - §1.2 lacked Mazya2011.
  - §5.2 cited HeikkilaPankka2025 lines 22–26, which do not state the `L^p` characterisation (lines 22–26 only say that `‖Df‖` is the operator norm of `Df`); the manifest has no 5.2 entry for that key.
  - §4.3 attached the same lines to "Prove:", although they only use `Df`.

  All three are repaired. The Conventions locator (Hajlasz2009 lines 106–107) was missing from the manifest. It is now in `cited_for`, the locator `104–106` became `104–107`, and the References entry names "lines 106–107 (closed manifolds)". Line 106–107 defines a closed manifold as smooth, compact and without boundary. The one remaining script hit is §6.4's sentence "HeikkilaPankka2025 line 25–27 supplies only the determinant notation". It disclaims rather than attributes, so I left it.
- **F05.** MartioRickmanVaisala1969 lines 332–340 (2.16) define `ACL` maps (continuous, and absolutely continuous on almost every axis-parallel segment of each closed interval in `U`) and `ACL^p` (partial derivatives in `L^p_loc`, `p ≥ 1`). None of the four bullets mentions `ACL`. The suggested sentence, "This is the class that MRV … describe as `ACL^p`", asserts the theorem that a continuous map is in `W^{1,p}_loc` iff it is `ACL^p`. That is standard, but no readable source in the manifest states it. Hajlasz2009 lines 729–731 only mention "the well-known characterization" for `W^{1,p}(Ω)`, without the continuity statement. A roadmap claim needs a locator, so the new sentence names MRV's description and claims no comparison. A grep finds `ACL` only in the new paragraph and the References entry, so "no proof here uses it" is true.
- **F06.** The finding is right: the Summary defined no letters. No roadmap cites the T1 letters: a search of main and all open heads for `SobolevMapsBetweenManifolds` finds only QuasiregularMaps, which cites section numbers and §4.6(a)/(b). The new letters match the three headings, and no heading changed. The `Suggested.lean` docstring ("T1 is locality and the three Euclidean chain rules") still agrees.

## Computed adversarial mathematics pass

Every statement added or changed in this round:

| Statement | Instances tried | Values on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §1.1 definition (rewording) | `s = ∅`; `|x|^{−1/2}` on `ℝ`; `p = 0` with the identity | `∅`: restricted measure `0`, member; `∫_{−1}^{1} |x|^{−p/2} = 4/(2 − p)`, `4` at `p = 1`, `∞` at `p = 2`; `eLpNorm` at `p = 0` is `0` | unchanged mathematics, matches `MemLpLoc` | wording |
| Scope: equal-dimensional null images | `θ = 2x` on `ℝ`, `A` the Cantor set; `θ = x³` | `μ(2C) = 2μ(C) = 0`; `x³` is differentiable everywhere, `μ(C³) = 0` | as Mathlib states it for self-maps of `E`; §2.1 transports through a linear equivalence | name added |
| Scope: increasing-dimensional null images | `θ : ℝ → ℝ², t ↦ (t, t²)`; projection `ℝ² → ℝ` | `finrank 1 < 2`, image null; `2 > 1`, hypothesis fails, image `ℝ` not null | the Tau Ceti hypothesis is the needed one | attribution added |
| Build order | every `*Needs:*` line, as listed under F03 | Layer 6 cites §3.1 (in §6.2 and §6.4); Layer 7 cites §1.2, §3.1; §3.2 cites §1.1, §3.1 | sentence and Dependencies agree with every line | sentence and two Dependencies lines |
| §4.3 identification with HeikkilaPankka2025's `Df` | `f = id` on flat `ℝⁿ`; `f(t) = |t|^{1/2}`, `n = 1` (outside HP's `n ≥ 2`) | `D = id` on both readings; HP does not cover `n = 1`, and the sentence restricts to maps in `W^{1,n}_loc(M, N)` of their setting | consistent | locator moved to the definition |
| §5.2 locator | lines 22–26 against the theorem | the lines name `‖Df‖`; they state no `L^p` equivalence | the locator was unsupported | removed |
| §7.1 background on `ACL^p` | `f(t) = |t|^{1/2}` on `ℝ`; Cantor function `c` on `(0,1)` | derivative `|t|^{−1/2}/2`, `L^p_loc` iff `p < 2`, on both descriptions; `c` is continuous but not absolutely continuous on `[1/4, 3/4]` (`c(1/4) = 1/3`, `c(3/4) = 2/3`, derivative `0` a.e.), so it is not `ACL` and not in §1.2's class | the paragraph claims no comparison, and both examples agree with its description | paragraph added |
| T1 letters | (a) `θ = z²`, `u = log |w|`; (b) `G = log` on `(0, ∞)`, `u = |x|`; (c) the cover `{ℝ² ∖ 0, B(0,1)}`, `log |x|`; bounded-derivative case `G = id`, `u = x³` | (a) `2⟨z, h⟩/|z|²` on both sides; (b) `⟨x, ·⟩/|x|²`; (c) both sides iff `p < 2`; `D(G ∘ u) = 3x²` | each letter names the right section, and the sheaf part has no chain rule, as the new last sentence says | Summary rewritten |
| "first sentence of T2" | T2's first sentence against §4.2's equivalence | both say that membership in one covering atlas pair gives membership in all charts | same statement | label made exact |
| Hajlasz2009 lines 106–107 | closed `S¹`; noncompact closed image `(s, exp exp s)` | `S¹` is compact without boundary; the graph is closed in `ℝ²` but not compact, so it is excluded, as Conventions says | locator says what is cited | manifest and References |

## Acceptance, signatures and dependency checks

- **Elaboration.** `lake env lean packages/SobolevMapsBetweenManifolds/Suggested.lean` from the content checkout: exit 0. There are 16 warnings, all "declaration uses `sorry`", and no error. No `TauCeti.*` module needed building. `Suggested.lean` was not edited this round: no finding concerned it, and none of the changed README passages names a Lean declaration of this roadmap.
- **Binders.** I made a scratch copy of the file with `#check @name` for all 21 declarations and elaborated it once (exit 0, no error). Each elaborated type matches the signature the worker recorded before this round (21 of 21). No section binder was lost and nothing changed.
- **Citations.** `roadmaps resolve` on the README finds no cross-roadmap citation and no Lean name that is missing everywhere.
- **Dependency check**, exact command of the brief:

  ```text
  depcheck: 230 roadmaps, 2063 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line.

## Ownership, citations and maintainer notes

- No new target, definition or construction was added, so no ownership question arises. The overlap ledger lists no open pull request that changes this roadmap or drops an id it cites. QuasiregularMaps cites this roadmap by section number and §4.6(a)/(b), and none of those changed. The `plan.json` gaps list is unchanged (still empty).
- No Lean name changed and no section, heading or anchor was renumbered. Consuming roadmaps need no update.
- Sources: no new source and no fetch. Manifest edits:
  - Mazya2011 `cited_for`: 1.2.
  - Hajlasz2009: the Conventions entry, and locator `104–107`.
  - MartioRickmanVaisala1969: the 7.1 entry now separates the Jacobian (line 124) from the `ACL^p` background (lines 332–340).

  Nothing was written to `needs-references.toml`.
- The review contains no instructions addressed to the repairer beyond its findings; nothing suspicious was found.
