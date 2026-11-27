# AnalyticNumberTheory repair report

## F01 (P1) — not actionable in this package: submitting the substantive owners requires separate package units

Broken local redirects → accessible owning branches, with 484 target entries synchronized to their authored sections, seven Examples/Dependencies pairs and a Summary. Both substantive owners exist: AnalyticNumberTheoryPartI line 13 and AnalyticNumberTheoryPartII line 11 specify their scope. Submitting those owners as the mathematical review units requires files outside this job; reconstructing their mathematics here would create duplicate ownership.

## F02 (P2) — not actionable in this package: the headline signatures belong to the two uneditable owners

The misleading representative-signature explanation → a target-signatures docstring identifying this file as navigation with no owned theorem. Both original signature files were recovered and linked. Part I contains 50 definitions/theorems; Part II contains 21. Copying them here or adding a xi control would duplicate their targets or pad acceptance. Reviewing and submitting those files requires their owning packages.

## F03 (P3) — applied differently

Missing manifest and inaccessible references → a sources-service manifest for both cited owning documents, with bibliographic fields, section locators, hashes and legal-fetch records. References link their mathematical bibliographies. The 15 sampled owning statements and locators are recovered below. Fetching these documents does not certify their underlying mathematical sources; substantive source verification remains with those review units.

## Checks and outcomes

- Required Suggested.lean elaboration, using `lake env lean` from the pinned content checkout: exit **0**, empty output, no warnings. There is only `import Mathlib`; no Tau Ceti object needed building. No Lean process remains running.
- Exhaustive declaration/signature inspection: **0 declarations**, hence an empty list of required `#check @name` commands. The scratch copy containing the module and that empty inspection list elaborated separately: exit **0**, empty output. No binder changed or disappeared. This checks syntax, not any mathematical headline.
- Package checks: invoked the installed package lane's text scanners, configured manifest validator and gap-reference validator without running its order-writing preparation. All **23 recorded counts are zero**, including `tex`, `blob`, `readme-ids-missing`, `missing-files` and `manifest`. All four package files exist. Exit **0**. The dependency check was run separately, as prescribed.
- Dependency check, with the supplied order and `--movable`: exit **0**, exact output:

```text
depcheck: 40 roadmaps, 407 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. No order file was edited.

- Sources-service validation: `packages/AnalyticNumberTheory/sources.toml: 0 problem(s)`, exit **0**. Both legally fetched documents have status `certified`; this records access to those documents, not certification of their cited mathematics. No unresolved source request was created.
- Link validation: **522/522** links identify files at the inspected owning branches; every fragment exists. The heads were independently confirmed as Part I `4ba2e21aadad298ad3688bce8afdfec541369d25` and Part II `ed5b7376d465abefdf0b9a9ef5540fe36d951060`. The manifest records those exact fetched versions. No anchor tag was reintroduced.
- Cross-citation resolver: no unresolved roadmap citation or Lean name. Its cached-main label is `ae2562c`; direct main reads used `a4a8652e46fe27e56355bbcf74579562b503fbc3`. The owning-part evidence comes from their inspected heads, independently of that cache. The resolver's library-search-unavailable note is not treated as a library audit.
- Main shape examples read: `Completed/ArithmeticDirichletSeries/README.md`, `TauCetiRoadmap/Chebotarev/README.md`, `TauCetiRoadmap/ComplexTori/README.md`. The installed Mathlib and Tau Ceti revisions match the manifest pins, respectively `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.
- Ownership searches used the supplied roadmap index and `roadmaps grep`; both owners are new-roadmap heads and earlier permitted suppliers. No new construction is owned or stated here. A search for citations of the unsuffixed AnalyticNumberTheory index on main and the indexed open heads returned no match. This does not certify the two owners' mathematics against every sibling roadmap.
- An initial invocation of the content-layout CLI gate on the board exited **1**, reporting missing `TauCetiRoadmap/AnalyticNumberTheory/README.md` and `TauCetiRoadmap/AnalyticNumberTheory/Suggested.lean`. That invocation expects a content checkout, not the board's `packages/` layout. The actual package scanners and manifest checks above were then run on the permitted package files and passed.
- Final whitespace check: `git diff --check`, exit **0**. No commit, push, issue, pull-request or merge-order write was performed.

## Gate failures repaired

- **Missing sources.toml:** created `packages/AnalyticNumberTheory/sources.toml`, schema `tauceti-roadmap-sources/v1`. The sources service fetched each owning document once, under its roadmap name. Both entries include every required bibliographic field, section locators and cited-for sections. No mathematical bibliography was guessed from a title.
- **Two TeX headings:** enclosed the mathematical expressions in §§0.11 and 6.43 in inline code, preserving their mathematical text. There were no internal `](#...)` links to the changed headings. The package's TeX scanner now returns zero hits.
- The worker's anchor-tag removal is preserved.

## Recovered seeded locations

This table verifies accessibility and locators in the owning documents. It does **not** claim to have checked the cited primary theorem at the owner's generality. That mathematical review cannot be replaced by reviewing this index.

| Review's topic | Owning section | Statement and locator evidence |
|---|---|---|
| §0.4 prime-power margin | Part I §0.4 | AnalyticNumberTheoryPartI line 242; locator line 250 |
| §0.14 xi | Part I §0.14 | AnalyticNumberTheoryPartI line 395; locator line 414 |
| §2.3 Hecke comparison | Part I §2.3 | AnalyticNumberTheoryPartI line 1087; supplier locators line 1101 |
| §2.21 ray-character endpoint | Part I §2.20 | AnalyticNumberTheoryPartI line 1463; locator line 1473 |
| §2.28 value at zero | Part I §2.27 | AnalyticNumberTheoryPartI line 1559; derivation and locators line 1567 |
| §2.47 residues | Part I §2.46 | AnalyticNumberTheoryPartI line 1928; locator line 1934 |
| §3.19 coefficient class | Part I §3.19 | AnalyticNumberTheoryPartI line 2395; locator line 2417 |
| §3.39 truncation error | Part I §3.39 | AnalyticNumberTheoryPartI line 3226; locator line 3242 |
| §4.11 Lerch boundary | Part II §4.11 | AnalyticNumberTheoryPartII line 492; locator line 500 |
| §5.15 reciprocity matrix | Part II §5.15 | AnalyticNumberTheoryPartII line 1059; locator line 1077 |
| §5.19 cubic matrix | Part II §5.19 | AnalyticNumberTheoryPartII line 1158; locator line 1179 |
| §5.22 quadratic continuation | Part II §5.22 | AnalyticNumberTheoryPartII line 1401; locator line 1417 |
| §5.26 reflection matrix | Part II §5.26 | AnalyticNumberTheoryPartII line 1489; locator line 1505 |
| §6.13 shifted determinant | Part II §6.13 | AnalyticNumberTheoryPartII line 2276; locator line 2292 |
| §6.42 critical factors | Part II §6.42 | AnalyticNumberTheoryPartII line 3487; locator line 3495 |

## Adversarial mathematics record and its limits

No mathematical definition, theorem or normalization was introduced or replaced in this index. The two gate repairs preserve the formulas verbatim inside code spans. Titles identify their owners' topics; they are not replacement theorem statements. In particular, accessibility of 484 targets is not a statement-by-statement truth audit of them. That audit, their full supplier graphs, and certification of the bibliographies require the substantive review units in F01.

The following explicit computations test the two formula-bearing gate edits and the review's xi witness. They are limited probes, not an acceptance of the owning roadmaps.

| Statement examined | Instances | Values computed | Result and change |
|---|---|---|---|
| §0.11 distinct-prime divisor sum | N=1, 2, 6 | S(1)=0; S(2)=log(2)/2≈0.346573590280; S(6)=log(2)/2+log(3)/3≈0.712777686503. The corresponding log log values for 2 and 6 are −0.366512920582 and 0.583198080783. | These finite values cannot be substituted into an eventual big-O claim as a universal bound with unit constant. Formatting preserves the asymptotic topic; no new finite-range theorem is asserted. Owner: AnalyticNumberTheoryPartI line 345. |
| §6.43 Gibbs normalization | β=2; identity, e(1/2); β=1 | At β=2 the identity gives ζ(2)/ζ(2)=1. Splitting the signed series into even and odd terms gives (2·2⁻²−1)ζ(2)/ζ(2)=−1/2, agreeing with 2^(1−2)−1. At β=1 the normalizing series diverges. | The Gibbs formula requires β>1; formatting preserves the same topic and parameter notation. Owner formula and sign witness: AnalyticNumberTheoryPartII line 3596; summability line 3604. |
| Review's xi example | s=0, 1, 2, −1 | The pole-subtracted definition gives ξ(0)=ξ(1)=1/2. At 2, Γ(1)=1 and ζ(2)=π²/6 give ξ(2)=π/6; reflection gives ξ(−1)=π/6. Pointwise pole multiplication would give 0 at 0 and 1. | Suitable carriers exist, as the review says, but the target belongs to Part I §0.14. No duplicate definition or boundary theorem was added. Owner: AnalyticNumberTheoryPartI line 397. |

For the xi computation, the pinned interfaces were read directly: `Mathlib/NumberTheory/LSeries/RiemannZeta.lean`, lines 63, 83, 89 and 99, supplies the pole-subtracted function, its comparison, differentiability and reflection; `Mathlib/NumberTheory/LSeries/HurwitzZetaValues.lean`, line 226, supplies `riemannZeta_two`. These facts do not assert that all of Part I §0.14's growth claims follow in one tactic.

## Consequences for the maintainer

The substantive artifacts are at `TauCetiRoadmap/AnalyticNumberTheoryPartI/{README.md,Suggested.lean,metadata.toml}` and the corresponding Part II paths at the recorded heads. Neither head has a sources manifest. Each owning package needs its own submission, source registration and independent mathematical review. This job cannot submit those files or decide their intake placement. F01 and F02 are therefore not represented as cleared by an empty Lean build.

No mathematical supplier gap was invented: the cited targets already exist at their owners; the outstanding action concerns which packages are submitted for review. No design plan was created or edited.

The index now follows the authored owners' numbering. In particular the old Layer 2 labels after §2.10 were stale. Its 22 obsolete destinations were §2.18a, §§2.21a–f, §§2.29a–e, §§2.32a–g, §§2.40a–b and §2.52. The corresponding current authored index includes §§2.17a, 2.28a, 2.31d–f and 2.39a–b; supplier-owned statements remain with the suppliers named by Part I. No missing anchor was redirected to an unrelated theorem merely because its number matched.

The 16 previously absent links now point to existing authored targets: Part I §§2.1, 2.15a, 2.28a, 2.31d–f, 2.39a–b, 3.23a–g, and Part II §4.3b. This adds navigation, not new mathematical targets. Other title corrections include the supplied-factor comparison (§0.15), ideal-series comparison (§2.3), ratio-witness convention (§6.5), and the Bost–Connes-specific statements at §§6.36a and 6.42g–h. Supplier navigation now names the two direct owners instead of 18 incomplete indirect contract headings.

No Lean declaration was added, deleted or renamed. External consumers should cite the owning part and section; the two mathematical namespaces are unchanged. No source passage was copied into the package and no source file or extraction was placed in the repository.
