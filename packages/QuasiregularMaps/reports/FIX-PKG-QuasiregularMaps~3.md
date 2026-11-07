# FIX-PKG-QuasiregularMaps~3

One review, `REV-PKG-QuasiregularMaps~2`, with one finding. Only `packages/QuasiregularMaps/README.md`
changed (§7.3, one paragraph). `Suggested.lean`, `metadata.toml`, `sources.toml` and
`design/plan.json` are unchanged.

## REV-PKG-QuasiregularMaps~2/F01 (P3) — applied

Old → new, §7.3 first paragraph: no locator → the comparison sentence cites HeikkilaPankka2025
lines 20–21 (definition) and §4.1 (comparison). The closed-case sentence now says the source takes
metric independence for granted: Theorem 1.1 (line 18) names no metric, and lines 32–34 measure
quasiregularity of a torus branched covering against smooth structures only.

Verification:

- The finding is right. A scan of every `### k.n` section for a key of `sources.toml` finds
  §7.3 as the only section with no source key; every other section from §1.1 to §7.6 has one.
  The pattern occurs nowhere else.
- I read the cited lines in the certified text. HeikkilaPankka2025 line 18 (Theorem 1.1) is
  about a closed quasiregularly elliptic `n`-manifold, `n ≥ 2`, and fixes no Riemannian metric.
  Lines 20–21 define ellipticity for a connected oriented Riemannian `n`-manifold. Lines 32–34
  say that a piecewise linear branched covering `Tⁿ → N` that is quasiregular for the smooth
  structures of `Tⁿ` and `N` makes `N` elliptic. That phrasing only makes sense because, for
  closed manifolds, quasiregularity does not depend on the metric, which is what §7.3 proves.
  The source assumes this and does not prove it, and the new sentence says so instead of
  calling it a theorem of the source. Prywes2019 lines 22–27 define the notion for a closed
  connected orientable Riemannian manifold and also never vary the metric. I did not add that
  citation, since one certified source is enough at the claim.
- Two differences from the review's wording, same substance. (1) The definition locator and §4.1
  go on the comparison sentence, and the lines 32–34 locator goes on the "Hence for closed `N`"
  sentence, because that is the claim those lines support. (2) Line 18 is added, because Theorem
  1.1 is where the source treats ellipticity as a property of a closed manifold with no metric.
  `sources.toml` already lists `7.3` in the `cited_for` of HeikkilaPankka2025, so it needs no
  change.

Adversarial pass on the changed text. The mathematics of §7.3 is unchanged; the rows recompute
it, together with the claims the new locator makes.

| statement | instances tried | values computed | result | change |
| --- | --- | --- | --- | --- |
| §7.3 comparison: `K`-elliptic for `g_N` ⇒ `(β/α)ⁿ K`-elliptic for `g'_N` | `g'_N = c² g_N`; `T²` with `dx² + 4dy²` against the flat metric; `n = 1`, `S¹` with `c(t)² dt²` and `α ≤ c ≤ β`; size of the constant | §4.1 with `a = b = 1` gives the factor `(bβ/(aα))ⁿ = (β/α)ⁿ`. Rescaling: `(c/c)ⁿ = 1`, and directly `q'_O = cⁿ‖A‖ⁿ/(cⁿJ) = q_O`. Torus: factor `(2/1)² = 4`; for `π`, `‖dπ‖' = 2`, `ρ_N = 2`, `J' = 2`, `q'_O = 4/2 = 2 ≤ 4·1`. `n = 1`: `‖dπ‖' = c = J'`, `q'_O = 1 ≤ β/α`. The constant: `(β/α)ⁿ K ≥ 1` since `β ≥ α` and `K ≥ 1`. The witness map is the same, so it stays non-constant | holds | none |
| §7.3 closed case: ellipticity independent of the metric | compact `N` with two continuous metrics; non-compact `ℝ²` with `dx² + e^{2x}dy²` | Compact: `|w|'/|w|` is continuous and positive on the compact unit sphere bundle of `g_N`, so it has a minimum `α > 0` and a maximum `β < ∞`. `ℝ²`: the ratio for `∂_y` is `eˣ`, unbounded, and the identity has `q'_O = e^{|x|}` (§4.1 Check), so the comparison route needs compactness, as stated | holds | none |
| new locator, line 18 | HeikkilaPankka2025 line 18 | Theorem 1.1: closed quasiregularly elliptic `n`-manifold, `n ≥ 2`, no metric named; the README Conventions already record the sources' `n ≥ 2` against the roadmap's `n ≥ 1` | agrees | locator added |
| new locator, lines 20–21 | HeikkilaPankka2025 lines 20–21 | ellipticity defined for a connected oriented Riemannian `n`-manifold through a non-constant quasiregular map from `ℝⁿ`, the same as §7.1 | agrees | locator added |
| new locator, lines 32–34 | HeikkilaPankka2025 lines 32–34 | quasiregularity of a PL branched covering `Tⁿ → N` taken for the smooth structures of `Tⁿ` and `N` (closed `N`, as at line 18), which is the closed-case independence; the same reading is in §7.6, which cites the same lines | agrees | locator added |
| §7.3 Checks against the new text | rescaling Check; `T²` with `dx² + 4dy²` Check | factor `1`; bound `4`, while `(x, y) ↦ (x, 2y)` makes this torus isometric to the flat `ℝ²/(ℤ × 2ℤ)`, so it is `1`-elliptic (§7.5); both agree with the comparison row | consistent | none |

## Checks run

- **Elaboration.** I ran `lake env lean packages/QuasiregularMaps/Suggested.lean` from the
  content checkout. Exit 0 in 13.4 s real time. The output is exactly five lines, `declaration
  uses sorry` at 106:8, 122:8, 175:8, 191:8 and 205:8. The file is unchanged this round. The one
  `TauCeti.*` import, `TauCeti.Analysis.Sobolev.WeakDeriv.Basic`, already had its object file,
  so nothing was built.
- **Elaborated signatures.** I elaborated one scratch file: a copy of `Suggested.lean` plus
  `#check @name` for all ten declarations (`minimalStretch`, `IsQuasiregularOn`,
  `IsQuasiregularOn.det_le_pow_mul_minimalStretch_pow`,
  `IsQuasiregularOn.of_det_le_mul_minimalStretch_pow`, `formalDeriv`, `IsACLOn`, `IsACLpOn`,
  `isACLpOn_iff_exists_hasWeakFDerivOn`, `ae_hasLineDerivAt_of_hasWeakFDerivOn`,
  `isQuasiregularOn_iff_isACLpOn`). Exit 0. Every elaborated type is identical to
  `scratch/signatures.md` and matches its README statement (§1.1, §2.9, §3.2, §5.1, §5.2, §5.3).
  No section binder was lost and nothing changed.
- **Dependency check.** I ran `tauceti-roadmap … gate --depcheck packages/QuasiregularMaps/README.md
  --name QuasiregularMaps --order merge-order/ORDER.txt --movable --content <content checkout>`:

  ```
  depcheck: 240 roadmaps, 2370 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or moved line.
- **Citations.** `roadmaps resolve packages/QuasiregularMaps/README.md` reports no cross-roadmap
  citation and no Lean name found nowhere. The two leads in `scratch/citations.md` (the §3.2
  theorem names) are this roadmap's own declarations; both elaborate in the `#check` file above.
- **Style of the new text.** Unicode only, no LaTeX delimiters, no process words, no copied
  passage (the source is paraphrased and cited by line), no machine path.

## Gate failures

None were listed for this round.

## Notes for the maintainer

- No Lean name changed, and no section, layer or target id was added, moved or deleted.
  `scratch/overlaps.md` lists no open pull request that changes this roadmap and no cited id
  that one drops. No other roadmap is affected.
- Ownership: the repair adds a source locator and no new construction, so no ownership question
  arises. The suppliers and the seven declared gaps are unchanged.
- No source was fetched and `needs-references.toml` was not written: the only locator added is
  in the certified text that `sources.toml` already records.
