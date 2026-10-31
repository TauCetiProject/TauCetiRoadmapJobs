# Review of IndexTheory (pull request #1077 at 93ef8c2)

**Verdict:** needs changes

Incremental re-review of the 8 changed lines since 819f43f (`TauCetiRoadmap/IndexTheory/README.md` lines 812–813 and 838–841; `Suggested.lean` and `metadata.toml` untouched; nothing changed outside the folder: `git diff --stat origin/main...HEAD` excluding the folder is empty). The change repairs half of the previous blocking finding: the closed-surface CW model and the integral pairing `H²(Σ;ℤ)≃ℤ` are now cited from ComplexKahlerGeometry K7, which owns them on main. The other half still cites GeometricTopology for a smooth classification of surfaces that GeometricTopology on main does not contain; it exists only in that roadmap's revision pull request. The gate still fails on the same five rules as before (`blob=17`, `imports=1`, `mathlib-subimports=7`, `no-import-mathlib=1`, `depcheck=1`); the targeted build passed and the file elaborates with only its two `sorry` warnings.

## R01 (P2) — I7.4 still consumes a smooth classification of closed surfaces from GeometricTopology, which on main does not state it; the two roadmaps named alongside do not supply it either

Location: `TauCetiRoadmap/IndexTheory/README.md` lines 838–841: "consume GeometricTopology's compact smooth-surface comparison, using SurfaceTopology Layer 8 and PlanarTopology Layers 5 and 8. Use its smooth classification to identify the genus and compare with any given surface of that genus by a smooth diffeomorphism f".

Claim: the cut-and-paste proof of `ind ∂̄ = 1 − g` for the trivial line transfers from the glued connected sum of tori to an arbitrary compact Riemann surface of genus g through a diffeomorphism supplied by GeometricTopology's "compact smooth-surface comparison".

Witness: on main, `TauCetiRoadmap/GeometricTopology/README.md` has no section on compact smooth surfaces and no statement that two closed smooth surfaces of the same genus are diffeomorphic; its only surface-classification line (754) consumes the classification as an input to Heegaard splittings. The passage describes `rev/903/TauCetiRoadmap/GeometricTopology/README.md` §1.8 "Compact smooth surfaces" (lines 786–830: "every compact connected smooth surface … is diffeomorphic to exactly one of the standard smooth models", built there from SurfaceTopology Layer 8, PlanarTopology Layers 5 and 8 and a "triangulation/smoothing adapter" of its own). Pull request #903 revises an existing roadmap, so it is never a dependency; GeometricTopology is cited as it is on main. The two roadmaps named in the passage do not close the gap by themselves: SurfaceTopology Layer 8 (`rev/271`, lines 859–941) classifies compact surfaces up to homeomorphism (`classification_of_surfaces : ∃! S, Nonempty (M ≃ₜ S.model)`), and PlanarTopology Layer 8 (`rev/271`, lines 869–979) passes from homeomorphisms to diffeomorphisms only "for a smooth structure compatible with a PL structure" (`exists_isotopic_diffeomorph`), while its out-of-scope list (line 1040) excludes Whitehead's theorem that every smooth structure on a compact surface is compatible with some triangulation. ComplexKahlerGeometry K7 says the same of its own classification homeomorphism (main, line 1498: it "does not assert compatibility with a preassigned smooth triangulation"). So for an arbitrary compact Riemann surface the diffeomorphism to the genus-g model is owned by no allowed supplier as the passage stands.

Repair: replace the GeometricTopology attribution by the exact chain that exists on allowed suppliers, stating what is consumed from each: (i) GeometricTopology, "The smoothing-and-triangulation comparison", item 1 (main, lines 937–942: every smooth manifold has a smooth triangulation, Whitehead), applied to Σ and to the standard genus-g surface; (ii) SurfaceTopology Layer 8, the homeomorphism of Σ with the orientable genus-g model; (iii) PlanarTopology Layer 5's isotopy of that homeomorphism to a PL homeomorphism and Layer 8's smoothing of a PL homeomorphism of PL-compatible smooth surfaces to a diffeomorphism (Munkres), giving `f : Σ ≃ Σ_g` smooth. Alternatively own the adapter in I7.4 as a target with that route and its hypotheses (compact, connected, closed, orientable, dimension two). Either way add SurfaceTopology and PlanarTopology to the supplier table (lines 59–68), which does not list them. The HRR route (I7.3) and the degree-formula route (lines 800–818) are unaffected.

## R02 (P3) — Gate failures: `Suggested.lean` import header and 17 commit-pinned links (unchanged since 819f43f)

Location: `TauCetiRoadmap/IndexTheory/Suggested.lean` lines 1–8; `README.md` lines 59–68.

Witness: the gate at 93ef8c2 (rerun by me) reports `blob=17` (lines 59–68 link ten supplier READMEs through `github.com/<repo>/blob/<sha>/…`), `imports=1`, `mathlib-subimports=7` (seven `import Mathlib.<submodule>` lines) and `no-import-mathlib=1`; all identical to the previous head. `depcheck=1` is only `NOT IN ORDER: IndexTheory` (a board placement matter, R07 of the previous review).

Repair: header `import Mathlib` then `import TauCeti.Analysis.Fredholm.Adjoint` only (the previous review elaborated a copy with exactly that header; only the two `sorry` warnings remain). Replace each pinned link by the roadmap name and section, or a relative link to `../<Roadmap>/README.md#…` for roadmaps on main; cite OperatorKTheory, CStarAlgebras, HilbertModules and PseudodifferentialOperators by name and section only.

## Previous findings

- R01 — partly repaired: lines 812–813 now read "Consume ComplexKahlerGeometry K7's closed-surface CW model and integral fundamental-class pairing `H²(Σ;ℤ)≃ℤ`" (resolved on main, K7 lines 1503–1510). Lines 838–841 still consume a GeometricTopology smooth classification that main lacks: R01 above.
- R02 — not repaired: `Suggested.lean` lines 1–8 unchanged; supplier table lines 59–68 unchanged. R02 above.
- R03 — not repaired: `Suggested.lean` lines 50–102 and 124–166 unchanged (eleven proved API lemmas, boundary cases and small computations). Stands as written in the previous review (P3).
- R04 — not repaired: namespace `IndexTheorySuggested` (line 21), docstring lines 10–16, and the three backticked spin/Rokhlin names at README lines 867, 871, 873 unchanged. Stands (P3).
- R05 — not repaired: README section headings (`## I1.` … `## Acceptance calculations`, lines 79–942) and references (lines 950, 956: the untitled course notes, the Zulip thread) unchanged. Stands (P3).
- R06 — not repaired: I5.2 (lines 622–629), I7.1 (725–729) and `isFredholm_iff_compactParametrix` (line 105) unchanged. Stands (P3).
- R07 — not repaired: placement; `ORDER.txt` still lists TangentialBordism at 9 and HilbertModules at 10, IndexTheory absent. A board matter, not a defect of the folder.

## Verified sound

**Gate and build.** Gate rerun at 93ef8c2: FAIL on `blob` (17), `imports` (1), `mathlib-subimports` (7), `no-import-mathlib` (1), `depcheck` (1); every other scanner 0; the worker's targeted build `build=0`. Elaboration of `Suggested.lean` with `lake env lean` from the worktree at the manifest pins: 3.6 s, diagnostics only `declaration uses sorry` at lines 105 and 110. The file is byte-identical to the one the previous review probed, so its `#check @` comparison (22 declarations, no lost section variable) and its one-tactic probe (neither sorried theorem closes) carry forward.

**Dependency check** (`gate --depcheck … --movable`, output in full):

```
NOT IN ORDER: IndexTheory (insert it after its last supplier)
depcheck: 204 roadmaps, 1416 edges, 1 problem(s)
```

No UPWARD or CYCLE line. The two roadmaps the change newly names, SurfaceTopology and PlanarTopology, are new folders of pull request #271 by another author (`roadmaps list`: "#271 … PlanarTopology (new), SurfaceTopology (new) @mccorvie"), so citing them is allowed; neither is in the merge order.

**Cross-roadmap citations resolved for the changed passages** (5): ComplexKahlerGeometry K7 CW model, `b₁=2j`, `H²(Σ;ℤ)≃ℤ` with generator by evaluation on the fundamental class (main, lines 1483–1512); SurfaceTopology Layer 8 classification of compact surfaces up to homeomorphism (`rev/271`, 859–941); PlanarTopology Layer 5 Radó and Hauptvermutung (heading line 616) and Layer 8 PL/smooth uniqueness for PL-compatible smooth structures (869–979); GeometricTopology main "smoothing-and-triangulation comparison" item 1, Whitehead's smooth triangulation (930–945); GeometricTopology Layer 1 gluing and collars, still cited at lines 304 and 828 (main, 205–216, as in the previous review). Not resolved: "GeometricTopology's compact smooth-surface comparison" (R01). The 31 citations the previous review resolved are in passages the diff leaves untouched.

**Ownership of the consumed object.** `roadmaps grep` over main and the open heads for the smooth classification of surfaces and Whitehead's smooth triangulation: the only statement "diffeomorphic to exactly one of the standard smooth models" is `rev/903` GeometricTopology line 798 (a revision pull request); PlanarTopology lines 969 and 1040 (smoothing route; Whitehead's converse out of scope); GeometricTopology main lines 266 and 937–942 (Whitehead comparison as the far-horizon item 1); TangentialBordism (`rev/942`, lines 140, 235, 1976) cites exactly that item for smooth triangulations, which is the route the repair names.

**Adversarial table.** Rows for statements the diff leaves untouched carry forward from the previous review (`PRREVIEW-IndexTheory~1.md`, 38 rows, none refuted); the rows below are the changed passage and what it now consumes.

| Statement | Instances | Values | Result |
|---|---|---|---|
| I7.4 cut-and-paste identity `i(Σ_g#Σ_h)+i(ℂP¹)=i(Σ_g)+i(Σ_h)`, `i(Σ)=1−g` | (g,h) = (0,0), (1,1), (2,3) | LHS 1+1=2, RHS 1+1; LHS (−1)+1=0, RHS 0+0; LHS (−4)+1=−3, RHS (−1)+(−2) | holds |
| I7.4 `b₁` additivity under connected sum (Mayer–Vietoris on the annulus) | Σ_g#Σ_h, Σ_0#Σ_0 | `b₁ = 2g+2h`; sphere#sphere: 0 = 0+0 | holds; genus of the glued surface is g+h |
| CKG K7 `H²(Σ;ℤ)≃ℤ` on the CW model (now cited) | g = 0 (one 0-cell, one 2-cell); g = 1 (1 vertex, 2 edges, 1 face, word `aba⁻¹b⁻¹`) | cellular ∂ of the face = 0 in both: `H² = ℤ`, `b₁ = 0`, resp. 2 | holds |
| Consumed smooth classification: closed connected orientable smooth surfaces of equal genus are diffeomorphic | Σ_g vs Σ_g; non-compact control (plane vs open annulus); dimension control (four) | true in dimension two via Whitehead + Radó/Munkres; both non-compact genus 0, not diffeomorphic; smooth uniqueness fails in dimension 4 | holds only with compactness and dimension two as stated; owner missing (R01) |
| What SurfaceTopology L8 + PlanarTopology L8 give without Whitehead | arbitrary smooth structure on Σ_g | a homeomorphism `Σ ≃ₜ model`; isotopy to a diffeomorphism only when the smooth structure is PL-compatible (PlanarTopology 869–979, 1040) | gap exactly at Whitehead's theorem: R01 |
| Orientation-reversing `f`: replace `J′` by `−J′`; conjugation intertwines `∂̄_{−J′}` and `∂̄_{J′}` | trivial line on ℂP¹, `u ↦ ū` | `∂̄_{−J}(ū) = conj(∂̄_J u)`; kernel/cokernel dimensions 1, 0 both ways; index 1 | holds |

No statement of the changed passage was refuted; the defect is ownership, not truth.

## Not verifiable

- "Thomas Mark's index-theory course notes and homework" (`README.md` line 950; the changed passage still says "the homework's model-and-excision proof", line 820): no title, year, URL or locator; as in the previous review, no legal copy was found. The mathematics was checked directly (table above).
- Ownership against open pull requests whose files this brief does not provide was not checked beyond `roadmaps grep` and `roadmaps list`.

## Source issues

- none
