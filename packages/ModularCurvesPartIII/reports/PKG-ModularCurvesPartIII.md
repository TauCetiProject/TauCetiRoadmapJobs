# PKG-ModularCurvesPartIII: package report

## Outcome in one paragraph

The accepted design for this roadmap does not plan any mathematics. Its `plan.json` has `nodes: []`, `gaps: []` and `requests: []`, and it has a `restructure` entry of action `merge` that maps ModularCurvesPartIII GF.n to GeometricFreyMazur GF.n for n = 0,…,10 and proposes retiring this roadmap. GeometricFreyMazur comes earlier in the merge order (line 101; this roadmap is line 102). Its package was accepted at package review and is in red team (board package `packages/GeometricFreyMazur`, read at the head `444c965` of its board pull request). It owns every one of the 64 routed items and all 67 targets. Under the binding principles ("what another roadmap plans is imported by name and section, never planned again"), the duplication sweep deletes everything. The package therefore states honestly that this roadmap owns nothing, and gives a result-by-result crosswalk to GeometricFreyMazur's sections. **Recommendation:** the maintainer should apply the design's merge, keep GeometricFreyMazur, and retire ModularCurvesPartIII, rather than merging a roadmap folder that has no layers. I did not invent new content (for example Hermann's general-type theorem, see below), because the brief forbids re-planning.

## Headline theorems

This roadmap owns no headline theorem. These are the headlines of the route, by owner and statability.

| Headline | Owner | Status at the pins |
|---|---|---|
| Geometric Frey–Mazur over a one-variable function field (BT16 Thm 2) | GeometricFreyMazur §9.8 | statable; stated there as `TauCetiRoadmap.GeometricFreyMazur.geometric_frey_mazur`; not restated here (duplication) |
| Full determinant-one torsion monodromy, `p > 5`, `800N < 7p` | GeometricFreyMazur §9.6, §8.3 | statable; stated there as `TauCetiRoadmap.GeometricFreyMazur.full_monodromy`; not restated here |
| Geometric Frey–Mazur over the original open base (BT16 Thm 1) | GeometricFreyMazur §9.7 | not statable: lacks relative elliptic-scheme and finite étale torsion-isomorphism carriers |
| Bounded-gonality rigidity on `Z(p)` (BT16 Thms 3, 29) | GeometricFreyMazur §§7.5, 9.5 | not statable: lacks the quotient surface and its Hecke curves |
| Corollaries 30–32 (bounded genus, rational/elliptic curves, minimal model) | GeometricFreyMazur §§10.1–10.5 | not statable: lacks cyclic quotient resolution and contraction carriers |
| Abramovich `gon ≥ 7D/800` (ABR96 Thm 0.1) | GeometricFreyMazur §8.1 | not statable: lacks the compact algebraic congruence-curve carrier |

`Suggested.lean` states nothing. Its module docstring says why (ownership by GeometricFreyMazur) and lists the non-statable headlines with what each lacks. No declaration of the file shares a qualified name with a declaration in another roadmap, because there are no declarations.

## Duplication removals

Every target the design routed has been removed here and is cited in "Scope and ownership" by GeometricFreyMazur section:

- items 21–24, 105 and 114, plus the projective-frames adapter, go to §§0.1–0.6;
- items 29–36 and 118 go to §§1.1–1.8;
- items 37–43 go to §§2.1–2.7;
- items 45–48, 52, 113 and 115 go to §§3.1–3.6;
- items 49–51 and 53 go to §§4.1–4.4;
- items 68–76 go to §§5.1–5.8;
- items 84–86 go to §§6.1–6.5;
- items 05 and 87–90 go to §§7.1–7.5 and §9.5;
- items 94 and 97, plus the self-twist target, go to §§8.1–8.4 and §9.6;
- items 03, 04 and 91–93 go to §§9.1–9.8;
- items 98–102 go to §§10.1–10.5.

Items 01 and 02 (the elliptic family and the torsion local system) are GeometricFreyMazur's supplier inputs: ModularCurves §0D and §5B, both checked on main at lines 375 and 1313. The projective level curve is ModularCurvesPartII §4.7, checked at its open head, `TauCetiRoadmap/ModularCurvesPartII/README.md:1566`.

The design's 13 definition contracts (80 API names, 40 tests) and its 19 inherited supplier requests all stay with GeometricFreyMazur. None is restated here, and `plan.json` `gaps` stays `[]` because this roadmap needs nothing from any supplier.

## What the README could not support / corrections to the design

- The design's prose was an import index full of process narrative: issue and review numbers, "packet", "alias", "handoff", node ids, "merger proposal", local links. All of it was dropped. The README is timeless prose with GeometricFreyMazur section citations.
- The design cited published page numbers of BT16. The legal copy the sources service fetched is arXiv v2. I checked that its numbering of Theorems 1–3, Theorem 29 and Corollaries 30–32 agrees with the published version (BT16 lines 51, 60, 69, 1337, 1403, 1406, 1415). The README cites theorem numbers and arXiv lines, not published pages.
- **Item 119** is Hermann's theorem that `Z(p)` is of general type for `p > 11`, with uniqueness of the minimal model (BT16 line 31, line 1414). The design excluded it, and GeometricFreyMazur does not use it (its §10.5 proves existence only). No roadmap I searched owns it: `roadmaps grep` for Hermann/Kani found no owner on main or at the open heads. It is the only mathematics of the route without an owner. If ModularCurvesPartIII is to be kept rather than retired, the natural content is a "GeometricFreyMazur, Part II" or a modular-surfaces roadmap owning the Hermann and Kani–Schanz classification of diagonal quotient surfaces. That would need a new design, and I did not write one.
- No notion was moved down from a later roadmap.

## Adversarial pass

The README states only conventions and citations. Every convention value it displays was recomputed:

| Statement | Instances | Values | Result / change |
|---|---|---|---|
| `ψ(m) = m∏(1+1/ℓ)` vs `σ₁` | m = 4, m = 1 | ψ(4) = 4·3/2 = 6; σ₁(4) = 1+2+4 = 7; ψ(1) = 1 | agrees with GeometricFreyMazur Conventions Check |
| left action `g·φ = φ∘g̃⁻¹` | composite g,h | g·(h·φ) = φ∘h̃⁻¹∘g̃⁻¹ = φ∘(g̃h̃)⁻¹ = (gh)·φ; without the inverse one gets (hg)·φ | left action confirmed |
| `p > 5` for the compact (2,3,p) triangle | p = 7, p = 5 | 1/2+1/3+1/7 = 41/42 < 1 (hyperbolic); 1/2+1/3+1/5 = 31/30 > 1 | threshold correct |
| full monodromy threshold `800N < 7p` | N = 2 | p = 227: 1600 > 1589, fails; p = 229: 1600 < 1603, holds | matches the supplier's statement |
| Abramovich constant | (21/100)/24 | = 21/2400 = 7/800 | matches the cited `7[PSL₂(ℤ):Γ]/800` |
| local index bound `6·n!·p` | n = 1, several bicusp slots | n = 1: 6p; the cyclic index has a single factor p, not pⁿ | as in GeometricFreyMazur §7.2 |
| Z(p) formula | written as `(X(p)×X(p))/PGL₂(𝔽_p)` | the design's left-quotient backslash form was rewritten to avoid a `\(` sequence | notation only |
| supplier signatures cited | `geometric_frey_mazur`, `full_monodromy`, `gonality` at head 444c965 | quantifier order ∀N ∃M before k, K, W, W′, p; hypotheses p.Prime, 5 < p, 800N < 7p | README paraphrase matches the Lean |

`Suggested.lean` has no declarations, so the per-declaration `#check @name` comparison applies to none. Nothing changed.

## Elaboration

Ran `lake env lean packages/ModularCurvesPartIII/Suggested.lean` from the content checkout: exit 0, **0 `sorry` warnings**, no other message. The file has the single `import Mathlib`, no `set_option` and no declarations.

## Dependency check

```
depcheck: 56 roadmaps, 648 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. The only supplier is GeometricFreyMazur (merge-order line 101), which comes before this roadmap (line 102).

## Citation resolution

`roadmaps resolve` gave one lead: "GeometricFreyMazur §§0.1: no roadmap GeometricFreyMazur on main or in an open pull request". GeometricFreyMazur is a board package, not a content-repository pull request yet. I checked every cited section number (§§0.1–10.5, Conventions, Exact supplier contracts) and the three Lean names against its package README and `Suggested.lean` at board head `444c965`. That head was fetched read-only from its board pull request because the brief did not give it.

## Ownership against open pull requests

I searched for the objects (Frey–Mazur, Bakker–Tsimerman, Hermann, Kani–Schanz, the diagonal quotient surface) with `roadmaps grep` across main and all 354 open heads, and across the board packages. Results:

- GeometricFreyMazur is the only owner of the route.
- ModularCurvesPartII §4.7 owns the projective level curve.
- Several roadmaps cite unrelated Bakker or Tsimerman papers (o-minimality, André–Oort, Lipnowski–Tsimerman). None of them is an owner.

## Sources

`sources.toml` records BT16 (arXiv 1403.7168v2, with DOI), BTE (author page, OCR text) and ABR96 (arXiv alg-geom/9609012v1, with DOI). All three are certified. No `needs-references.toml` was written: every cited text was readable.

## Suspicious text

None found.

## Inputs not present

`design/review.json` and any prior review report under `reports/` were absent. The acceptance record used is the `review` object inside `design/plan.json` (status accepted, 2026-10-19). Its notes add no package-level obligation beyond the merge proposal.
