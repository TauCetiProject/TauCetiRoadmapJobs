# Review of IndexTheory (pull request #1077 at ce2d41a)

**Verdict:** needs changes

Incremental re-review of the 51 changed lines since 93ef8c2. The folder diff touches `TauCetiRoadmap/IndexTheory/README.md` (supplier table, lines 57–70; I7.4, lines 838–855) and the import header of `Suggested.lean` (lines 1–2). The merge with main also moved the pins to Lean v4.36.0-rc2, Mathlib 1b1ccf4b and Tau Ceti 2fd255d, so every library fact the two sorried statements rely on was rechecked at the new pins. `git diff --stat origin/main...HEAD` shows no change outside the folder.

## R01 (P2) — I7.4's surface smoothing cites a GeometricTopology anchor that both open revisions of GeometricTopology drop, and claims a classification that the #903 revision owns

Location: `TauCetiRoadmap/IndexTheory/README.md` line 66 ("[smoothing-and-triangulation comparison](../GeometricTopology/README.md#the-smoothing-and-triangulation-comparison-far-horizon), item 1"); lines 843–848 ("This roadmap owns the smoothing of h, stated for compact connected boundaryless smooth surfaces. … GeometricTopology's smoothing-and-triangulation comparison, item 1 (Whitehead)").

Claim: the Whitehead smooth-triangulation input comes from GeometricTopology's far-horizon section, item 1, and no other roadmap owns the passage from a homeomorphism of closed surfaces to a diffeomorphism. That passage is "the smoothing of h", which gives `f : X ≃ Σ` smooth for surfaces of equal genus.

Witness: GeometricTopology main: heading at line 930. #903 head (bbf8ce8): no such heading; Whitehead is §11.3 (line 12873); line 127 "owns the smooth classification of compact surfaces (Layer 1.7)". #1797 head (84818d4): Layer 12, §12.1 (lines 3114–3116).

Two problems follow. First, the cited anchor breaks whichever of the two revisions merges, and the README does not cite the id as it stands at either head. Second, at #903's head GeometricTopology §1.7 (lines 773–797) proves that every compact connected smooth surface is diffeomorphic to exactly one standard model, and builds its own "two-dimensional triangulation/smoothing adapter" (lines 776–782). That is the object I7.4 now declares it owns, so the object has two owners. The pull-request description itself says the smooth-surface adapters are "written in the cited … GT903 editions"; the README says the opposite. #1797's head leaves surface classification unowned (line 151).

The mathematics of the new route is correct, and every other input resolves (rows in the table below). The defect is ownership and citation, not truth.

Repair:
- **Preferred: follow #903 and cite it as it is at its head.** The overlap rule allows depending on a revision that drops a cited id; name #903 in the description's dependency list.
  - Replace lines 843–855, from "This roadmap owns the smoothing of h" through "is a smooth diffeomorphism", with: GeometricTopology §1.7's smooth classification (every compact connected smooth surface is diffeomorphic to exactly one standard model, with `rank H₁ = 2g` for closed orientable ones) gives a diffeomorphism `f : X → Σ`, since both have `b₁ = 2g` (X by Mayer–Vietoris, Σ by K7).
  - Remove the Whitehead anchor from line 66 and the SurfaceTopology/PlanarTopology row (line 67). K7 already consumes SurfaceTopology for its dictionary.
  - Tested on g = 2: X = T²#T² and any genus-2 Riemann surface Σ both have χ = −2, b = 0 and are orientable. The §1.7 genus `(2 − χ − b)/2` is 2 for both, so they share a standard model and are diffeomorphic. The step then needs no PlanarTopology input.
- **Alternative, if this roadmap is not to wait for #903:**
  - Keep the adapter, but cite Whitehead's theorem by its statement rather than by the main-only anchor.
  - Record in the description that #903 (§11.3) and #1797 (§12.1) renumber it, and add #271 (SurfaceTopology, PlanarTopology) to the description's dependency list.
  - Settle with #903 that §1.7 stops claiming the classification. GeometricTopology comes before this roadmap and cannot cite it, so without that change two owners remain.

## R02 (P3) — Padding in `Suggested.lean` (first review's R03, not repaired)

Location: `TauCetiRoadmap/IndexTheory/Suggested.lean` lines 31–41 (`OpOnePair`), 43–96 (`range_iff_adjointKernel_compatibility`, `adjointKernel_finrank_eq_coker`, `adjointKernel_finrank_eq_kernel_of_index_zero`, `adjointKernel_finrank_eq_kernel_iff_index_zero`, `compatibility_count_minimal`), 118–160 (`localContribution` and its five companions).

Claim: these are headline statements or definitions a headline needs.

Witness: `adjointKernel_finrank_eq_coker` is a single `exact` with `cokerEquivKerAdjoint` (line 58). `localContribution_zero_fibre` and `localContribution_point` close by `simp` (lines 129, 135). `projectiveLine_O_one` and `projectiveLine_trivial` are the scalar identities of the I8 Check. No statement uses `OpOnePair`.

Repair: delete these twelve declarations; the README keeps them as API bullets and Checks. `FredholmLocus` and `normPath_iff_index_eq` stay. `CompactParametrix` goes with `isFredholm_iff_compactParametrix` (R05).

## R03 (P3) — `Suggested.lean` form (first review's R04, not repaired)

Location: `Suggested.lean` lines 4–10, 15, 111–118; `README.md` lines 880, 884, 886.

Claim: the file follows the acceptance-test form, and every backticked Lean name of this roadmap is declared in it.

Witness: the namespace is `IndexTheorySuggested` (lines 15, 118), not `TauCetiRoadmap.IndexTheory`. The docstring calls the file "representative suggested interfaces" and names no non-statable headline. The README backticks `eight_mul_untwistedSpinFourIndex_eq_neg_signature`, `spinFour_signature_eq_neg_sixteen_mul_quaternionicIndex` and `rokhlin_signature_dvd_sixteen`; none is declared.

Repair:
- Use `namespace TauCetiRoadmap.IndexTheory`, with one module docstring "Elliptic index theory: target signatures".
- In that docstring, list as not statable at the pins, each with its missing carrier: the Atiyah–Singer equality I5.5, the cohomological formula I6.1, Gauss–Bonnet, the signature theorem, HRR, the twisted spin formula and Rokhlin (I7), and the holomorphic Lefschetz formula I8.3. The missing carriers are elliptic operators on manifolds, `K_c(T*M)`, characteristic-class pairings and spin structures.
- Delete the second docstring block (lines 111–116).
- Un-backtick the three spin/Rokhlin names; describe those statements in prose.

## R04 (P3) — README shape, locators and references (first review's R05, not repaired)

Location: `README.md` line 1 ("# Elliptic index theory and the Atiyah–Singer theorem"), line 10 (one combined "Scope, conventions and suppliers" section), lines 80–955 (sections I1–I8 as numbered paragraphs), lines 963 and 969 (references).

Claim: the README has the TauCetiRoadmap shape, and its targets carry locators.

Witness: no `**Summary.**`, `## Exact supplier contracts`, `## Layer k`, `### k.n`, `*Needs:*` or `**Checks.**`; locators only at lines 921, 967, 968. Line 963's untitled course notes back "the homework's" proof (line 821); line 969 cites Zulip and a Mathlib pull request.

Repair: as in the first review. Rewrite into layers with `### k.n` prose subsections, a `*Needs:*` line per target, three Checks per definition, and `### Examples` and `### Dependencies` per layer. Put the locator at each claim; the Atiyah–Singer I sections and pages are listed in the first review. Give the course notes a title, year and legal URL, or replace them with published sources. Remove the Zulip and pull-request links.

## R05 (P3) — Results that existing roadmaps own, restated here (first review's R06, not repaired)

Location: `README.md` lines 623–633 (I5.2, "prove ker A=0 and coker A is the missing constant mode, so ordinary index−1"), lines 726–730 (I7.1 Gauss–Bonnet); `Suggested.lean` lines 25–29 and 98–101.

Claim: I5.2, I7.1 and `isFredholm_iff_compactParametrix` are owned here.

Witness: on main, `OperatorTheory/ToeplitzOperators/README.md` line 22 gives the shift index −1; CharacteristicClasses C2 item 3 (lines 835–837) proves `e(TM)[M]=χ(M)`. OperatorKTheory K4 (#866 head, lines 104–106, 125–128) owns Atkinson.

Repair: I5.2 cites ToeplitzOperators for the shift index and keeps only the ψDO realisation and the class `−w_(ℝ⊗ℂ)`. I7.1 cites C2 item 3 and keeps only `ind(d+d*)=χ(M)` and the symbol evaluation. The rectangular Atkinson statement becomes an I1.1 API bullet citing K4; delete `isFredholm_iff_compactParametrix` and `CompactParametrix`.

## R06 (P3) — Gate fails on two rules this folder cannot repair

Location: the gate at ce2d41a: `depcheck=1`, `build=2`.

Claim: the gate passes.

Witness: `ORDER.txt` has TangentialBordism (a consumer: I2.5, I5.4, I7.2, I7.5) at 10 above HilbertModules (a supplier) at 11. `build=2` is twice Lake's advisory "consider adding `module`"; the olean was built and `lake env lean` shows only `sorry` warnings.

So inserting this roadmap after HilbertModules puts it below TangentialBordism, which consumes it.

Repair: none in this folder. For the board: insert IndexTheory after HilbertModules and move HilbertModules above TangentialBordism. For the gate: the advisory comes with the required `import Mathlib` header (76 Suggested.lean files on main begin with it), so it should not count as a build failure.

## Previous findings

- R01 — repaired: lines 838–855 now route the diffeomorphism through K7's dictionary to SurfaceTopology Layer 8's model, Whitehead (GeometricTopology item 1), PlanarTopology Layers 3/5/8 and `f=φ⁻¹∘p`. Each input resolves; the repair's anchor and ownership claim are new: R01 above.
- R02 — repaired: `Suggested.lean` lines 1–2 read `import Mathlib` / `import TauCeti.Analysis.Fredholm.Adjoint`; supplier links are relative or by name; gate `blob=0`, `imports=0`, `mathlib-subimports=0`, `no-import-mathlib=0`.
- First review R03 (carried by the previous report) — not repaired: `Suggested.lean` lines 31–41, 43–96, 118–160 unchanged apart from line shifts. R02 above.
- First review R04 (carried) — not repaired: namespace `IndexTheorySuggested` (line 15); the three spin/Rokhlin names at README 880, 884, 886. R03 above.
- First review R05 (carried) — not repaired: no layers, Checks or `*Needs:*`; references at 963 and 969 unchanged. R04 above.
- First review R06 (carried) — not repaired: I5.2 (623–633), I7.1 (726–730), `isFredholm_iff_compactParametrix` (99–101) unchanged. R05 above.
- First review R07 (carried) — not repaired: `ORDER.txt` still has TangentialBordism at 10 and HilbertModules at 11, IndexTheory absent. Part of R06 above.

## Verified sound

**Gate.** My rerun at ce2d41a: `depcheck=1`, every scanner rule 0 (`blob`, `imports`, `mathlib-subimports`, `no-import-mathlib`, `statement-hygiene`, `readme-ids-missing`, `outside-folder` …). The worker's gate adds `build=2`, the Lake advisory (R06).

**Dependency check** (`gate --depcheck … --movable`), full output:

```
NOT IN ORDER: IndexTheory (insert it after its last supplier)
depcheck: 239 roadmaps, 2368 edges, 1 problem(s)
```

No UPWARD or CYCLE line. SurfaceTopology and PlanarTopology are new folders of another author's open pull request (#271, head 421e114), so citing them is allowed. HilbertModules (#861, line 224) mentions IndexTheory only as a consumer, so there is no cycle.

**Elaboration.** I ran `lake env lean` on `TauCetiRoadmap/IndexTheory/Suggested.lean` at the new pins. The only diagnostics are `declaration uses sorry` at lines 99 and 104.

I appended `#check @` lines for every declaration in the namespace to a scratch copy. The elaborated types match the README and the 16 entries of the signature listing. The four flagged leads lose nothing:
- `FredholmLocus` and `CompactParametrix` are data on normed spaces that need no completeness. The two theorems about them carry `[CompleteSpace E] [CompleteSpace F]`.
- `OpOnePair` is unused (R02).
- `compatibility_count_minimal` omits completeness on purpose and is pure linear algebra. With `T = 0 : ℂ → ℂ²` it gives `2 ≤ n`.

**One-tactic probe** (scratch copy, at the new pins): `exact?` and `simp` both fail on `isFredholm_iff_compactParametrix` and on `normPath_iff_index_eq`. Tau Ceti's `Path.index_eq` gives only one direction of the second. Neither statement is padding.

**Library declarations opened at the new pins.**
- Mathlib:
  - `ContinuousLinearMap.isFredholm_tfae` and `isFredholm_iff_exists_isQuasiInverse` (`Analysis/Normed/Operator/Fredholm/Basic.lean:344, 368`).
  - `LinearMap.IsQuasiInverse` (`Algebra/Module/LinearMap/FiniteRange.lean:328`): inverse modulo maps with noetherian range, i.e. finite rank, not compact.
  - `IsFredholm.fredholmPackage` (Basic.lean:292) and `IsFredholm.index_comp` (Basic.lean:613).
  - `IsFredholm.eventually_nhds_index_eq` (`Open.lean:89`) and `index_continuousOn_isFredholm` (`Open.lean:104`).
  - `LinearMap.index`, `index_eq_finrank_sub` and `index_smul` (`Algebra/Module/LinearMap/Index.lean:39, 43, 141`).
- Tau Ceti:
  - `index_equiv_comp`, `index_comp_equiv` and `index_prodMap` (`Algebra/Module/LinearMap/Index.lean:36, 47, 57`).
  - `range_adjoint_eq_orthogonal_ker_of_isClosed_range`, `isClosed_range_adjoint_of_isClosed_range`, `cokerEquivKerAdjoint` and `index_adjoint` (`Analysis/Fredholm/Adjoint.lean:146, 158, 199, 282`).
  - `Path.index_eq` (`Analysis/Fredholm/ContinuousFamily.lean:81`).
- Neither pin has a Calkin algebra or a compact-parametrix characterisation of Fredholm maps (grep).

**Citations resolved for the changed passages (14):**
- GeometricTopology on main: Layer 1 (line 177; collars, gluing and tubular neighbourhoods at 198–222), Layer 3 (357), and the far-horizon section item 1, Whitehead (930, 938–943).
- HopfRinow Layer 1 (`Completed/HopfRinow/README.md`).
- SurfaceTopology Layer 8 (#271 head): `StandardSurface.orientable g b` (1182) and `classification_of_surfaces` (1215).
- PlanarTopology (#271 head):
  - the half-space surface convention (146–157);
  - Layer 3 `exists_isomorphic_subdivisions` (636);
  - Layer 5 `exists_isotopic_plHomeomorph` (852);
  - Layer 8 `PLStructure.exists_isotopic_plHomeomorph` (1160), `PLStructure.IsCompatible` (1200) and `PLStructure.smoothing_unique` (1207, σ on the left, τ on the right);
  - the note that Whitehead's converse is not targeted (1235). I7.4 supplies that converse from GeometricTopology's Whitehead item and proves the compatibility itself.
- ComplexKahlerGeometry K7 on main (1483–1512): the half-space adapter, the homeomorphism to SurfaceTopology's orientable closed genus-j model, and `b₁=2j`.
- OperatorKTheory K4 (#866 head 321c0a4, line 631); CStarAlgebras Layer 1 / C1.1 (#860 head 33ddcef, 232–234); HilbertModules H2 (179) and H5 (356) (#861 head bbc2ad5).

All 14 relative links of the supplier table resolve on main. Not resolved at the open revisions: the GeometricTopology anchor (R01).

**Ownership.** I ran `roadmaps grep` over main and the open heads for the smooth classification of surfaces. It finds only #903 (lines 127, 784) and this README. #1797 (line 151) leaves surface classification unowned. Both findings are in R01.

**Seeded sample.** The worker's sample found no targets by heading, because the README has no `### k.n` headings. The changed passages carry no source locator, and the README flags no unverified locator, so no source was fetched this round. The first review's 15 sampled targets cover the untouched passages.

**Adversarial table.** The rows for statements the diff leaves untouched carry forward from the first review (`PRREVIEW-IndexTheory~1.md`, 38 rows) and the previous one (`PRREVIEW-IndexTheory~2.md`, 6 rows); none was refuted. New rows for the changed passages and the re-pinned statements:

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| I7.4 `b₁(X)=2g` for the glued sum of g tori (Mayer–Vietoris on the annulus) | g = 0 (ℂP¹), 1, 2 | `H₁(S¹) → H₁(A∖D)⊕H₁(B∖D)` is 0 (the boundary circle is a product of commutators); b₁ = 0; 2; 2+2 = 4 | holds |
| K7 dictionary + SurfaceTopology L8: `X ≃ₜ model(g,0) ≃ₜ Σ` | Σ = ℂ/(ℤ+iℤ); genus 2; Klein-bottle control | χ(model) = 2−2g: 0; −2. Klein bottle has χ = 0, b = 0 but is non-orientable, so it is excluded: a Riemann surface is oriented by J | holds |
| Whitehead item 1 ⇒ finite combinatorial surface compatible in PlanarTopology L8's sense | radial ∂Δ³ on S²; 7-vertex torus | (V,E,F) = (4,6,4), χ = 2, vertex links 3-cycles; (7,21,14), χ = 0, links 6-cycles; finite by compactness; L8's one-triangle-disc caveat is vacuous since ∂ = ∅ | holds |
| L8 reading of L5: h isotopic to a PL p | tetrahedral vs octahedral S² | (4,6,4) vs (6,12,8); the radial comparison is not PL; isomorphic subdivisions exist, and Alexander's trick gives the isotopy | holds |
| `p_*σ_X` compatible with Σ's triangulation via L3 | σ_X-compatible subdivision and p-simplicial subdivision of T_X, common refinement | linear sub-simplices of smooth injective-differential simplices keep both properties; p is linear on the refinement and maps it to a subdivision of T_Σ | holds |
| `f = φ⁻¹∘p`, φ : (Σ,σ_Σ) → (Σ,τ) from `smoothing_unique` | direction; dimension 4; non-compact | p : (X,σ_X) → (Σ,τ) is a diffeomorphism by definition of τ, and φ⁻¹ : (Σ,τ) → (Σ,σ_Σ) is one, so f is a diffeomorphism. The other direction would presuppose p smooth into σ_Σ, which is the claim. Smoothing uniqueness fails on ℝ⁴; L8 assumes `CompactSpace`, as I7.4 does | holds |
| Anchor `#the-smoothing-and-triangulation-comparison-far-horizon` | main; #903 head; #1797 head | present (930); absent, Whitehead at §11.3 (12873); renamed Layer 12 / §12.1 (3114–3116) | dropped by both: R01 |
| Owner of "closed surfaces of equal genus are diffeomorphic" | I7.4; #903; #1797 | I7.4 line 843 "This roadmap owns the smoothing of h"; #903 line 127 owns the classification; #1797 line 151 owns none | two owners: R01 |
| R01 preferred repair | X = T²#T², Σ of genus 2 | #903 genus `(2−χ−b)/2`: X gives (2+2−0)/2 = 2; Σ has χ = 2−b₁ = −2, so 2; same standard model | closes the step |
| `isFredholm_iff_compactParametrix` at the new pins | T = 0 : ℂ² → ℂ; T = 0 on ℓ² | S = 0 gives ST−1 = −1 on ℂ², compact, and TS−1 = −1 on ℂ, compact; T is Fredholm of index 2, both sides true. On ℓ², ker is infinite and −1 is not compact: both sides false | holds; not one tactic |
| `normPath_iff_index_eq` at the new pins | E = ℂ², F = ℂ; E = ℓ², F = ℂ | every map is Fredholm of index 1 and the straight path stays in the locus; the locus is empty | holds; not one tactic |
| Header change | elaboration at the new pins | only the two `sorry` warnings (lines 99, 104) | holds |

## Not verifiable

- "Thomas Mark's index-theory course notes and homework" (`README.md` line 963; I7.4 still cites "the homework's model-and-excision proof", line 821). The citation has no title, year, URL or locator; as in both earlier reviews, no legal copy was found. The mathematics it is cited for was checked directly.
- Whitehead's and Munkres' smoothing theorems, as used by GeometricTopology and PlanarTopology: the Munkres monograph is not openly available. Those statements are the suppliers' citations; I7.4's use of them was checked against the supplier statements and the mathematics (table above).

## Source issues

- none
