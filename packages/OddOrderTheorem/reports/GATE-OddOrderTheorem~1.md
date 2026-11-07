# GATE-OddOrderTheorem~1: answers to human review

One comment (kim-em, 2026-10-31) making three points.

## H01 (kim-em) — answered

Agreed: LocalFiniteGroupTheory and FiniteGroupExtensionSplitting are suppliers and must merge first. The README already consumes them by section in `## Exact supplier contracts`: LocalFiniteGroupTheory L1–L7 for Layers 1 and 3, and FiniteGroupExtensionSplitting §2.4 `exists_isComplement'_of_coprime_index` and §3.1 `exists_isComplement'_iff_sylow` for Layer 1. Every cited section and name was checked against the heads of those two pull requests: `pCore`, `piCore`, `pPrimeCore`, `fitting_eq_iSup_pCore`, `pRank`, `IsExtraspecial`, `IsPStable`, `isNilpotent_of_fixedPointFree`, `isNilpotent_of_coe_eq_frobeniusKernel`, `IsSignalizerFunctor`, `signalizerCompletion_complete`, and README lines 491–493 and 619–621 of FiniteGroupExtensionSplitting. Neither supplier is in the merge order yet, so the depcheck reports only `NOT IN ORDER: OddOrderTheorem`; the intake inserts this roadmap after its last supplier.

## H02 (kim-em) — answered

Yes, it targets `main`. Its suppliers are roadmaps on main (RepresentationTheory/CharacterTheory, RepresentationTheory/InductionRestriction) and the two new-folder pull requests of H01. The README cites them by roadmap and section, with no pull-request numbers.

## H03 (kim-em) — applied

The claim is true, but the README did not fully support it. §2.2 named LocalFiniteGroupTheory L1 (Hall subgroups) as needed for uniqueness of the complement `H a`. Layer 2's `### Dependencies` and the scope sentence did not list it, and the scope sentence said only "nothing from Layers 0 and 3–6". Uniqueness needs no Hall theory. A second normal complement `K` maps into `C_G(a) ⧸ H a ≅ C_L(a)`, and its image has order dividing both `|K| = |H a|` and `|C_L(a)|`, which are coprime by the Dade datum. So `K ≤ H a`.

Changes:
- §2.2's `*Needs:*` replaces "LocalFiniteGroupTheory L1" with Mathlib `Subgroup.IsComplement'.card_mul_card`, `Subgroup.card_map_dvd`, `Subgroup.card_dvd_of_le` and `QuotientGroup.mk'` (all checked at the pin). The README now gives the argument inline.
- The Layer 2 intro, the Scope bullet and "How to read the build" now say Layer 2 imports nothing from Layers 0–1 and 3–6 or from LocalFiniteGroupTheory/FiniteGroupExtensionSplitting. GlaubermanZStar's "OddOrderTheorem F2" can therefore use it without waiting for local analysis.
- The same pass corrected the §2.2 S₄ negative control, which read `gcd(2, 2) = 1`; it now reads `= 2`. It also adds that coprimality is what makes the complement unique: `⟨(3 4)⟩` and `⟨(1 2)(3 4)⟩` are both normal complements to `⟨(1 2)⟩` in the Klein four-group `C_{S₄}((1 2))`.

## Adversarial pass on changed statements

| statement | instances | values | result | change |
|---|---|---|---|---|
| §2.2 uniqueness of `H a` | `C₃ × S₃`, `a = (1 2)` | `C_G(a)` has order 6; its normal subgroups of order 3 = `{C₃}` | unique | none |
| same, without coprimality | `S₄`, `L = S₃`, `a = (1 2)` | `C_G(a) = V₄`; normal complements to `⟨(1 2)⟩`: `⟨(3 4)⟩`, `⟨(1 2)(3 4)⟩` (2 of them) | not unique | added as a Check |
| S₄ control | same | gcd = 2; source norm `3/6 = 1/2`; image support = 6 transpositions + 3 double transpositions = 9, norm `9/24` | `1/2 ≠ 3/8` | `= 1` → `= 2` |
| Layer 2 independence | grep of Layer 2 for Layer 0/1/3–6, LocalFiniteGroupTheory, FiniteGroupExtensionSplitting | only §2.2 cited LocalFiniteGroupTheory; "Hall in `L`" in §2.7 is a coprime-index hypothesis, statable in Mathlib | independent after edit | Needs line |

`Suggested.lean` is unchanged. The 10 elaborated signatures in the scratch `signatures.md` still apply, and none of them is touched by this repair.

## Build and gate

- `lake build TauCetiRoadmap.OddOrderTheorem.Suggested`: Build completed successfully (9000 jobs). The only warnings are `declaration uses sorry`.
- Gate (commit 967729b5): `gate OddOrderTheorem: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=1 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 FAIL`. The only failure is `depcheck: NOT IN ORDER: OddOrderTheorem (insert it after its last supplier)`, which is the design-stage state.
- Direction check output: `NOT IN ORDER: OddOrderTheorem (insert it after its last supplier)` / `depcheck: 235 roadmaps, 2060 edges, 1 problem(s)`. There is no UPWARD or CYCLE line.

## Notes

- The citations lead `IsMinimalOddSimple.proper_solvable` (README line 171) is a field of the `IsMinimalOddSimple` structure in `Suggested.lean`. The two `TauCetiRoadmap.RepresentationTheory.*` leads are supplier-heading roadmap names; both folders exist on main.
- Ownership against open pull requests was checked for the objects touched here, using `roadmaps grep` and the heads of LocalFiniteGroupTheory, FiniteGroupExtensionSplitting and GlaubermanZStar.
- No suspicious instructions appeared in the review text.
