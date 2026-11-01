# Review of GrothendieckTeichmuller (pull request #1058 at c780f75)

**Verdict:** accepted

Incremental re-review of 4 changed lines since 7337ed3. The change is the one repair the previous
review asked for: README line 627 (Layer 4, target 4.5, the sentence proving
`GTHat.isClosedEmbedding_betaEquiv`) is now wrapped into three lines. Its words are unchanged (the
diff is +3/−1 with the same text split at "units of `GT̂^{mon}`" and at "a closed embedding").
`Suggested.lean` and `metadata.toml` are untouched since 7337ed3, and nothing changed outside the
folder (`git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/GrothendieckTeichmuller'` is
empty). Gate on this head with `--build`: every check 0, `build=0 OK`. Dependency check:
`depcheck: 205 roadmaps, 1437 edges, 0 problem(s)`, no UPWARD or CYCLE line; the merge order lists
GrothendieckTeichmuller at line 368 and PeriodsAndSpecialValues, the one open roadmap the Scope
paragraph cites, at line 296. `lake env lean` on `Suggested.lean`: exit 0, exactly the fifteen
`declaration uses 'sorry'` warnings of the previous round (lines 102, 106, 110, 114, 118, 134, 171,
205, 209, 223, 246, 254, 276, 281, 287) and nothing else. No finding.

## Previous findings

- R01 — repaired: README lines 627–629 are now 87, 67 and 13 characters ("Prove
  `GTHat.isClosedEmbedding_betaEquiv`: for the topology of the units of `GT̂^{mon}`" / "and Tau
  Ceti's congruence topology, `g ↦ β_g` is a closed embedding" / "of `GT̂` into"); the sentence
  continues on line 630 as before. `awk 'length($0)>100'` over the folder now reports only
  `Suggested.lean` line 39 at 101 characters, which the previous review marked optional; it is not a
  finding.

## Verified sound

**The change.** `git diff 7337ed3 HEAD --stat`: `README.md` 4 lines (+3/−1), no other file. The
folder holds `README.md` (696 lines), `Suggested.lean` (290 lines) and `metadata.toml`; the gate's
`stray-files=0`. The wrapped sentence still names `GTHat.isClosedEmbedding_betaEquiv`, declared at
`Suggested.lean` line 287 with elaborated type `Topology.IsClosedEmbedding GTHat.betaEquiv`
(`signatures.md`, 43 declarations, 0 lost section binders, unchanged from the previous rounds); the
gate's `readme-ids-missing=0` confirms every backticked name of the roadmap's own is declared. The
`*Needs:*` line of 4.5 (0.1, 1.5, 3.3, 4.2, Tau Ceti `congruenceTopology`,
`ContinuousAut.compactSpace`, `ContinuousAut.t2Space`) is unchanged, so the r5 resolution of those
Tau Ceti names at the pin stands. The pinned packages directory resolves to Mathlib
`f6090c7095e1e56b3464c1daba5f24631f1290d2`, the revision of `lake-manifest.json`.

**Gate and elaboration.** As in the header: gate with `--build` all zero, `lake env lean` exit 0
with fifteen `sorry` warnings at the same fifteen lines as the r6 report.

**Adversarial table.** The diff changes no statement, so every row is carried from the previous
reports, which give the values; the one new row is the wrapped line.

| statement | instances | values | result | change |
|---|---|---|---|---|
| 4.5 sentence wrapped (R01 of r6) | README 627–629 vs 7337ed3 line 627 | word sequence identical; lengths 169 → 87 / 67 / 13; only `Suggested.lean` 39 (101) remains over 100 | repaired | none |
| 4.5 closed embedding `g ↦ β_g`, homeomorphism onto a closed subgroup of `ContinuousOut F̂₂` | as in the r5 report (`ContinuousAut.compactSpace`/`t2Space`, units topology) | values there (r5); signature `Topology.IsClosedEmbedding GTHat.betaEquiv` at line 287 unchanged | sound (r5) | none |
| module header keeps every headline public | as in the r6 report | olean 78 KB, importer `#check` types identical to `signatures.md` (r6) | sound (r6) | none |
| Scope: owner of `MT(ℤ)`, `G_MT`, `₀Π₁`, Hoffman basis | PeriodsAndSpecialValues at its open head | §PS.9.8 l.2145, §PS.9.9 l.2166, §PS.9.10 l.2186, §PS.9.22 l.2460 (r6); merge order 296 < 368 | sound (r6) | none |
| 4.5 sources: subgroup of `Aut F̂₂`, `(λ, f)` recovered from `F`, profinite as inverse limit | ihara91 §3.3, harbaterschneps00 §0, schneps97 §1.3 (3) | lines 9635–9638, 71–73, 278–284 (r6) | sound (r6) | none |
| Scope rows (Brown Conj. 1, `d_N` count, `GT̂¹` slice, HLS levels, degenerate `(0,0,3)`, Hatcher's cycles) | as in the r4 report | values there (r4) | sound (r4) | none |
| Conventions law, Drinfeld (4.11), 0.1 (two rows), 1.3, 3.2, 3.3, 4.3 (two rows), 4.5 (four rows), 2.4 Check 3 | as in the r3 report | values there (r3) | sound (r3) | none |
| `subst`, 0.2–0.4, 1.1, 1.2, 1.4, 1.5, 2.1, 2.3 Check 3, 2.4 Check 2, 3.1, 3.2 Check 2, 3.3 units, 3.4, 3.5, 4.1, 4.2, 4.4, Scope HMM | as in the r2 report | values there (r2) | sound (r2) | none |

**Seeded sample.** The sampled targets (0.1–0.4, 1.2–1.5, 2.2, 3.2–3.5, 4.3, 4.5) are touched by
this diff only in 4.5, and there only by a line break: no locator, hypothesis or statement
changed. Their locators were verified in the previous reviews against guillot14, schneps97,
lochakschneps94, drinfeld90, ihara91, harbaterschneps00 and herfortribes85 and stand.

**Supplier order, ownership, padding, headlines.** Depcheck as in the header. The README's supplier
contracts consume nothing from another roadmap; the one cross-roadmap mention is the Scope deferral
to PeriodsAndSpecialValues, earlier in the merge order. No declaration of `Suggested.lean` changed,
so the headline list (docstring lines 24–36, five headlines plus 3.5 named as not a headline), the
one-tactic probe and the ownership check against main and the open pull requests of the previous
reviews apply unchanged. `citations.md`'s three leads (`GTHat.isGT0`, `GTHat.injective_mk_betaEquiv`,
`GTHat.isClosedEmbedding_betaEquiv`) are this roadmap's own theorems at `Suggested.lean` lines 254,
276 and 287.

## Not verifiable

- As in the previous reviews: Hatcher–Lochak–Schneps 2000 read in the authors' preprint, Brown
  2012 as arXiv 1102.1312v1, Grothendieck 1984 in the French text, Ribes–Zalesskii 2010 §9.1
  paywalled (cited by locator; Herfort–Ribes 1985, proof of Theorem C′, herfortribes85 lines
  258–260, gives the same free-product decomposition), Ihara 1994, Belyi 1979, Montpellier folder
  145. None is touched by this change.

## Source issues

- none at this round (the previous reviews' entry on guillot14 Lemma 5.19 stands).
