# FIX-PKG-HeightsRationalPointsAndObstructionsPartII~5

Review addressed: REV-PKG-HeightsRationalPointsAndObstructionsPartII~4 (three findings).

## F01 (P2) — applied

The finding is correct. The roadmap called this input a pointwise lower bound, but david-philippon-2002 line 115 (Théorème 1.2) bounds the *number* of points of X° with ĥ < 1/q(X); it does not give a lower bound at every point. Line 122 (Théorème 1.3) gives the count of points of height at most a, and line 129 (Théorème 1.4) proves q(X) ≤ Q. All three are on p. 641.

Old → new (§5.12): "David–Philippon's lower bound … on the complement of the Ueno locus" → an explicit target owned here, with `Q = (2^(16g) h₀^(2/g) D)^((4g²)^(dim X))`. Part (a): at most Q points of X° have ĥ < 1/Q. Part (b): at most `Q(5aQ)^(r/2)` points of Γ∩X° have ĥ ≤ a, for real a > 1. The proof route now keeps the exceptional points inside the count, and the cutoff a is at least the large-point threshold of §5.8. Two Checks are added: the Weierstrass negative control, and the r = 0 / exponent-r/2 check.

Pattern: no other passage of the README uses a pointwise David–Philippon bound. §6.12 (line 1218) uses only the endpoint count, which is unchanged. The README reference entry and the `sources.toml` locator for david-philippon-2002 now give Théorèmes 1.2–1.4 (p. 641) and the proof of Théorème 1.3 (line 2493, pp. 689–690).

## F02 (P2) — applied

The finding is correct. gh-2019 line 2596 takes an arbitrary polarization B for Theorem A.3 (line 2603). Bigness appears only in Proposition A.2(iii) and in Northcott, Proposition A.1(4) (line 2564). The supplier's comparison, ArakelovGeometryAndAbelianHeightsPartII §6.4 (board design), assumes B is big. Its height machine §6.2 needs bigness only for Northcott.

Old → new:
- New supplier gap `gap:moriwaki-silverman-tate-nef`, supplied by ArakelovGeometryAndAbelianHeightsPartII §6.4. It extends the comparison §6.4(1) to nef polarizations over a curve base and keeps the big hypothesis on the specialization limit §6.4(2).
- The gap is recorded in `design/plan.json` `gaps` and under the README's supplier contracts, with identical `needs`.
- In §8.5, the proof route now names the machine without Northcott plus the gap. The trivial-polarization Check is added, and the gap is added to the Needs line and to the Layer 8 Dependencies.

§8.6 keeps its big polarization. No second owner is introduced.

## F03 (P3) — applied

I opened and checked each replacement line. dgh-2021 line 1601 and line 1600 are the ball-packing passage on p. 34. Line 1536 is (8.4) and line 1541 is the bound on h₁, both on p. 32. ggk-2026 line 646 is Lemma 3.5 (p. 203), and lines 1480 and 1496 are on p. 221.

Old → new:
- §0.4: `ggk 1460 / dgh 1473` → `ggk 1496 / dgh 1601`.
- §1.7: `ggk 637` → `ggk 646, Lemma 3.5`.
- §5.1: `dgh 1473, pp. 32–34` → `dgh 1600, p. 34`.
- §5.3: → `dgh 1536 (8.4), 1541 (8.6)–(8.7)`; `ggk 1480`.

The same pattern appeared in two more places, also repaired:
- §5.2: `ggk 1447 … pp. 220–221` → `ggk 1480`, where c_NT and h₁ are defined.
- §5.12: `dgh 1594`, a page header inside the proof of Proposition 8.1 → line 1644 and line 1662 (proof of Theorem 1.1, p. 35) and line 1696 (Remark 8.3, p. 36), where the bound from DP02 p. 643 is applied.

dgh-2021 line 1473 in §6.9 is kept: it cites Proposition 8.1 itself.

## Adversarial pass on the new or changed statements

| Statement | Instances tried | Values computed | Result |
|---|---|---|---|
| §5.12(a) small-point count | Genus-two C−w, L=M¹⁶ | D=16·2=32; (4g²)^1=16; Q=(2³²h₀·32)¹⁶=2⁵⁹²h₀¹⁶; six 2-torsion points of height 0 < 1/Q; 6 ≤ Q | Holds; a pointwise lower bound would fail |
| §5.12(a), X a point | dim X=0, D=1 | X°=X (no positive-dimensional coset); Q=2^(16g)h₀^(2/g) ≥ 1 ≥ 1 point | Holds |
| §5.12(b) | r=0, a=2; r=2 | Q·(10Q)^0=Q; Q·(5aQ)^1 | Matches the rank-0 count; exponent r/2, not r |
| q ↦ Q monotonicity | q ≤ Q | {ĥ<1/Q} ⊆ {ĥ<1/q}, count ≤ q ≤ Q; q(5aq)^(r/2) ≤ Q(5aQ)^(r/2) | Restatement with Q is valid |
| §5.12 route cutoff | a must exceed 1 | Théorème 1.3 needs a>1 (the proof uses a≥1 and f ≥ 2²⁸); route takes a>1 at least the §5.8 threshold | Consistent |
| §8.5 with nef B | Trivial metrized bundle on ℙ¹_ℤ, k₀=ℚ(t) | All heights O(1); O(1) ≤ c(1+O(1)) | Holds; needs the gap, not the big-B supplier |
| §8.5, number field | d=0 | Moriwaki height = [k₀:ℚ]·Weil height | Reduces to §8.3 |
| Gap moriwaki-silverman-tate-nef | Constant family, B trivial; B big | 0 ≤ C; agrees with §6.4(1) when B is big | Minimal extension; §6.4(2) keeps bigness |

## Checks run

- `lake env lean packages/HeightsRationalPointsAndObstructionsPartII/Suggested.lean`, run from the content checkout: exit 0. There are three warnings, "declaration uses `sorry`", at lines 57, 75 and 96, and no errors.
- Signatures: `Suggested.lean` is unchanged this round, so the elaborated types in the job's signature file still apply. All three declarations keep the binders their README statements require (§§3.6, 6.8, 6.12). I did not re-run `#check` because no declaration changed.
- Dependency gate (`gate --depcheck … --movable`): `depcheck: 56 roadmaps, 646 edges, 0 problem(s)`, exit 0. There is no UPWARD, CYCLE or moved line.

## Notes for the maintainer

- New supplier gap for ArakelovGeometryAndAbelianHeightsPartII: `gap:moriwaki-silverman-tate-nef` (§6.4(1) for nef polarizations).
- No Lean names changed. No new sources were fetched; all of this round's work used the cached legal extractions. `needs-references.toml` was not written.
- Ownership: I searched main and the indexed open heads for a quantitative David–Philippon small-point count and found no owner, so this roadmap owns the §5.12 count. Ownership against open pull requests not in the index was not checked.
- The worker's citation resolver lists "ArakelovGeometryAndAbelianHeightsPartII §§3.1" as not found on main or in an open pull request. That roadmap is an earlier board package (`packages/ArakelovGeometryAndAbelianHeightsPartII/design/README.md`), where the section exists, so this is not a defect.
- The only change to `design/plan.json` is in the `gaps` list; its existing entries were re-indented, not edited.
