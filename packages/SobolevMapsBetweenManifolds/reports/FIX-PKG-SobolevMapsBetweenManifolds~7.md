# Repair report: SobolevMapsBetweenManifolds

## F01 (P1) — not actionable in this package: the package is a second copy of the roadmap main gained on 2026-11-13; turning it into a revision of main's text or closing it in main's favour is the author's decision, and nobody else edits the copy

No file of the package changed. The finding is right, and I checked it against main's folder myself. It cannot be settled by a repair round, for two reasons:

- the choice between the review's two options (a revision of main's text, or closure) belongs to the author;
- while the copy holds, repairing its statements is wasted work, because the text cannot merge.

### Verification

- **Main has the roadmap.** The content checkout is at main `1a19c9f`. Main has `TauCetiRoadmap/SobolevMapsBetweenManifolds/`, with `README.md` (1905 lines), `Suggested.lean` (603 lines) and `metadata.toml`.
  - The folder was added by commit `7767aa4` ("SobolevMapsBetweenManifolds: roadmap", 2026-11-13). That commit came from another author's pull request.
  - Main's top-level `README.md:194` lists it.
- **The package is not main's text with changes.** The board last merged main on 2026-11-12, in commit `288e6abe`. Main gained the folder a day later. So the package branch never contained main's text.
  - The two READMEs differ throughout. The title is "Sobolev maps between manifolds" on main and "sobolev maps between manifolds" here. The first 60 lines differ in 106 diff lines.
  - Main has 11 `## Layer` headings and 42 numbered `###` sections. The package has 8 layers and 29 sections.
- **Lean names collide.** Both files open `namespace TauCetiRoadmap.SobolevMapsBetweenManifolds`: main's `Suggested.lean:51` and the package's `Suggested.lean:32`.
  - Main declares 42 names and the package 21. Only `MemLpLoc` and `MemW1pLoc` are common, and they have different signatures.
  - On main (`Suggested.lean:66`, `:71`): `MemLpLoc (p) (U : Set E) (u : E → F)` against `volume`, and `MemW1pLoc (p) (Ω : Opens E) (u)`.
  - In the package (`Suggested.lean:37`, `:52`): an explicit measure and a bare set, as in `MemLpLoc μ p s g`.
  - Porting the package as a new folder would clash with main both on the folder and on these two fully qualified names.
- **What this text has that main lacks.** I spot-checked the review's list against main's README by grepping for each term:

  | Term | Occurrences on main | Occurrences in the package |
  |---|---|---|
  | "Jacobian measure" | 0 | 5 |
  | `IsOpenEmbedding` | 0 | 3 |
  | "Lindel" | 0 | 27 |
  | `chartVolumeDensity` | 0 | 9 |
  | `exp(exp` | 0 | 2 |

  Main's Conventions (`README.md:154`) assume Hausdorff, second countable sources. The list is accurate as a record of what a revision would carry over.

### Why no edit of this package settles it

The review offers two repairs:

1. Rebuild the package from main's README and `Suggested.lean`, keeping main's 42 section ids and 42 Lean names, and add the six items.
2. Close the package in favour of main's roadmap.

Either is a replacement of the whole text or a withdrawal of it, not a repair of findings. The brief assigns this choice to the author and says nobody else edits a confirmed copy. I therefore made no edit to `README.md`, `Suggested.lean`, `metadata.toml`, `sources.toml` or `design/plan.json`. No supplier gap applies: the defect is a duplicate owner, not a missing supplier.

## Adversarial mathematics pass

No statement was added or changed, so the pass has no rows this round.

I deliberately did not run it over the copy's existing statements. The brief and the review agree that repairing or auditing the statements of a text that cannot merge is wasted work. The full pass is owed on whatever text replaces this one.

## Checks

- **Elaboration.** I ran `lake env lean packages/SobolevMapsBetweenManifolds/Suggested.lean` from the content checkout.
  - It exits 0 with 16 warnings, each "declaration uses `sorry`", and no error.
  - No `TauCeti.*` module had to be built.
- **Binders.** I made a scratch copy of `Suggested.lean` with `#check @name` for all 21 declarations and elaborated it once (exit 0, no error).
  - I compared each elaborated type, whitespace-normalised, with the type recorded in the worker's signature list.
  - All 21 are identical, so nothing changed and no section binder is lost.
- **Dependency check**, the brief's exact command:

  ```text
  depcheck: 245 roadmaps, 2229 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or `moved:` line. The check does not detect the second copy, because it reads supplier edges, not folder names on main.
- **Gate failures.** None were listed for this round.

## Notes for the maintainer

- **Status.** This package (board pull request #12769) cannot be submitted as a new roadmap while main has `TauCetiRoadmap/SobolevMapsBetweenManifolds`. The author must choose one of two options.
  - **Option 1: revision.** Start from main's README and `Suggested.lean`. Keep every section id and Lean name main defines, or give an old → new numbering table. Add the review's six items at main's numbering:
    - §6.4, the Jacobian measures and the `C¹` open-embedding change of variables, after main's §6.3;
    - the Lindelöf weakening, in main's Conventions and its §3.1, §3.3 and §4.3;
    - `J_f ∈ L^{p/n}_loc` for the full range of `p`, in main's §6.3;
    - the signed chart formula with `TauCeti.chartVolumeDensity`;
    - the `euclidean_volume` statement;
    - the `exp(exp s)` negative control, in main's §10.4.

    Keep `MemLpLoc` and `MemW1pLoc` at main's signatures.
  - **Option 2: closure** in favour of main.
- **Consumers.** QuasiregularMaps (open) cites this roadmap at §1.2, §3.1, §4.2–§4.5, §5.1, §6.1–§6.3 and §7.1. I compared the headings at these numbers in both texts. Each number names the same topic in main's README and in the package, so these citations resolve against main.
  - In main's README, the gap slugs QuasiregularMaps declares (`sobolev-maps-class`, `sobolev-maps-jacobian`, and the others) occur 0 times. They also occur 0 times in the package README.
  - Whether main's text meets those contracts is a question for QuasiregularMaps' reviewers, not for this package.
- **Names.** No name that other roadmaps cite changed this round.
- **Ownership.** No construction was introduced, so no ownership question arises. Main's roadmap is the single owner of the subject.
- **Sources.** No source was fetched or cited, and `needs-references.toml` is not written.
- **Untrusted text.** No passage of the review read as an instruction outside this job.
- **Re-raising.** If this finding is raised again, a human decides it, not another round.
