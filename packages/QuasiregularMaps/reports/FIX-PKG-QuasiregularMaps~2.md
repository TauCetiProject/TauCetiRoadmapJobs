# FIX-PKG-QuasiregularMaps~2

One review, `REV-PKG-QuasiregularMaps`, with one finding. Only `packages/QuasiregularMaps/README.md`
changed; `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged.

## REV-PKG-QuasiregularMaps/F01 (P3) — applied

Verified at the pin: `AbstractSimplicialComplex.exists_finset_support_subset_of_isCompact`
(`TauCeti/AlgebraicTopology/SimplicialComplex/Realization/Compact.lean` line 87, statement at
line 88) only says that the carriers of a compact set lie in one finite vertex set. On the infinite
star, `{v}` satisfies it and meets every edge. The old route was circular.

Old → new, §6.1: "every compact subset meets finitely many `κ(σ)`, so `K` is locally finite
(lemma)" → "`K` is locally finite (every simplex is a face of finitely many simplices), and every
compact subset meets finitely many `κ(σ)`". There is a new Route paragraph using local
compactness, the barycentre segment and the pinned lemma, plus an infinite-star Check. The
`*Needs:*` line and the contracts are extended.

Details of the repair:

- The route uses Mathlib `Manifold.locallyCompact_of_finiteDimensional`
  (`Mathlib/Geometry/Manifold/IsManifold/ExtChartAt.lean` line 909). The review suggested
  `ChartedSpace.locallyCompactSpace` (`Mathlib/Geometry/Manifold/ChartedSpace.lean` line 244)
  instead. The lemma used here is proved from that one. It needs only `[FiniteDimensional ℝ E]`,
  which the Conventions give, and not a separate `[LocallyCompactSpace E]` instance. The
  mathematics is the review's.
- The barycentre step cites Tau Ceti `AbstractSimplicialComplex.faceBarycenter` (coordinate
  `1/|σ|` on `σ`, `faceBarycenter_apply`), `AbstractSimplicialComplex.carrier` (the support) and
  `AbstractSimplicialComplex.continuous_faceInclusion` (`…/Realization/Basic.lean` lines 80, 362
  and 169). These names are added to the §6.1 `*Needs:*` line and to the Tau Ceti contract. That
  contract now also says what the two Compact.lean lemmas give, and that neither gives local
  finiteness.
- The second statement is now derived from the first. A compact `C'` meets `κ(σ)` only through
  a face `τ` of `σ` that is the carrier of a point of `κ⁻¹(C')`. There are finitely many such `τ`
  (subsets of one finite vertex set), and each is a face of finitely many simplices, by the local
  step applied at its barycentre.
- The same pattern appeared in the GeometricTopology contract line ("lies in finitely many
  simplices"). It now uses GeometricTopology Layer 11's own wording on main: "lies in the
  realization of a restriction to finitely many vertices".
- I checked the consumers of §6.1 in §6.3 (the pasting lemma for the locally finite closed cover,
  and "the finitely many `n`-simplices through `x`") and §6.4
  (`compactSpace_realization_iff_finite`). They use the corrected statement as it stands, so they
  are unchanged.

## Checks run

- `lake env lean packages/QuasiregularMaps/Suggested.lean`, run from the content checkout: exit
  0 in 7.0 s real time. The output is exactly five lines, `declaration uses sorry` at 106:8,
  122:8, 175:8, 191:8 and 205:8. The file is unchanged. I ran it again after the worker's
  disk-space failure (below): exit 0 in 15.4 s real time, with the same five warnings at the same
  positions.
- `#check @name` for all ten declarations of `Suggested.lean`, and for every library name the
  repair adds, in one scratch file (a copy of `Suggested.lean` plus the `#check` lines and the
  import `TauCeti.AlgebraicTopology.SimplicialComplex.Realization.Compact`, whose object file
  exists). Every elaborated type matches its README statement and the previous
  `scratch/signatures.md`. No section binder was lost and nothing changed. The new names elaborate
  as cited: `Manifold.locallyCompact_of_finiteDimensional` (`(I : ModelWithCorners 𝕜 E H)
  [LocallyCompactSpace 𝕜] [FiniteDimensional 𝕜 E] : LocallyCompactSpace M`, with no manifold
  class needed), `AbstractSimplicialComplex.carrier`, `faceBarycenter`,
  `continuous_faceInclusion`, `exists_finset_support_subset_of_isCompact` (for any `K`) and
  `compactSpace_realization_iff_finite`.
- Dependency gate:

  ```
  depcheck: 240 roadmaps, 2368 edges, 0 problem(s)
  ```

  It printed no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. The
  two own-declaration leads from the previous round are gone too. The tool says it could not check
  Lean names outside TauCetiRoadmap on this host; I checked the added library names myself with
  `#check`, above.
- Gate failures listed in the brief: one, "Suggested.lean: not elaborated — only 18 GB free on
  the state directory's disk; the targeted build that a `TauCeti.*` import needs wants 20 GB".
  Nothing changed for it, in any file of the package. This is a host condition, and no edit of
  the deliverable fixes it:
  - The file does elaborate. See the rerun above: exit 0, with only the five `sorry` warnings.
  - The one Tau Ceti module it imports, `TauCeti.Analysis.Sobolev.WeakDeriv.Basic`, is already
    built in the content checkout. Its `.olean`, `.ilean` and `.ir` files are under the Tau Ceti
    package's build directory, and so are those of its Tau Ceti imports
    `TauCeti.Analysis.Calculus.LineDeriv.Basic` and
    `TauCeti.MeasureTheory.Function.LocallyIntegrable`. So nothing had to be built, and I ran no
    `lake build`.
  - The import is required. Several declarations are stated with `TauCeti.HasWeakFDerivOn`
    (`…/WeakDeriv/Basic.lean` line 251): the definition `IsQuasiregularOn`, and through it
    `isQuasiregularOn_iff_isACLpOn`. So are the hypotheses of
    `IsQuasiregularOn.det_le_pow_mul_minimalStretch_pow` and
    `IsQuasiregularOn.of_det_le_mul_minimalStretch_pow`. So are
    `isACLpOn_iff_exists_hasWeakFDerivOn` and `ae_hasLineDerivAt_of_hasWeakFDerivOn`. The proved
    `example` that the identity is `1`-quasiregular uses
    `TauCeti.hasWeakFDerivOn_of_differentiableOn` (line 747). Mathlib at the pin has no weak
    derivative: searching it for `HasWeakFDeriv`, `HasWeakDeriv`, `weakDeriv` and `WeakFDeriv`
    finds nothing.
  - Dropping the import is not a repair. It would either remove headlines that are statable at the
    pins, which is a defect under the acceptance-test rules, or restate Tau Ceti's weak derivative
    here, which duplicates a pinned declaration.
  - `df` on the disk that holds the state directory now shows 16 GB free (878 GB total, 99% used).
    The worker's 20 GB precondition needs at least 4 GB more to be freed. Alternatively, the
    check can run against the existing build, which needs no new space.

## Adversarial pass (changed statements)

| statement | instances tried | values computed | result | change |
| --- | --- | --- | --- | --- |
| §6.1 local finiteness (each simplex is a face of finitely many) | triangle boundary on `S¹`; `ℝ` triangulated by `ℤ`; a point inside a top simplex; `M = ∅` | `S¹`: each vertex lies in 3 simplices (itself and 2 edges); `ℝ`: vertex `k` lies in `{k}`, `[k−1,k]`, `[k,k+1]`, so 3; a top simplex `τ` lies only in itself, 1; `M = ∅`: no vertices, since every vertex is a point of the realization, so the statement is vacuous | holds | restated as its own claim |
| §6.1 compact sets meet finitely many `κ(σ)` | `S¹`; `C' = [0, 5/2] ⊂ ℝ` | `S¹` is compact and meets all 6 closed simplices; carriers met by `[0, 5/2]`: `{0}`, `(0,1)`, `{1}`, `(1,2)`, `{2}`, `(2,3)`, giving closed simplices `{0}`, `{1}`, `{2}`, `[−1,0]`, `[0,1]`, `[1,2]`, `[2,3]`, so 7 | holds; follows from local finiteness for any complex | route given |
| barycentre step `(1 − t)p + t b_σ` | `p = v₀`, `σ = {v₀, v₁}`; `σ = τ`; `t = 0` excluded | `b_σ = (1/2, 1/2)` gives `(1 − t/2, t/2)`, carrier `{v₀, v₁}` for `t ∈ (0, 1]`, limit `(1, 0) = p`; if `σ = τ`, coordinates `(1 − t)p_w + t/|τ| > 0` on `τ`, carrier `τ`; for `w ∈ σ ∖ τ` the coordinate is `t/|σ| > 0` | holds; continuity via `continuous_faceInclusion` and the induced topology on the closed simplex | new route text |
| infinite-star Check | vertex `v`, edges `{v, wᵢ}`, `i ∈ ℕ`; compact `{v}` | the lemma holds with `V = {v}`; `{v}` meets every closed edge (infinitely many); a neighbourhood `U` of `v` meets every open edge, so its carriers are not in a finite vertex set and `U` is not compact; `U ∖ {v}` splits into the nonempty disjoint open pieces `U ∩ ({v, wᵢ} ∖ {v})`, so infinitely many components versus 2 for an interval | holds; it shows that local compactness is used | new Check |
| contract `Manifold.locallyCompact_of_finiteDimensional` | `𝕜 = ℝ`, `E` of dimension `n` | the hypotheses `LocallyCompactSpace ℝ` and `FiniteDimensional ℝ E` both hold; no `IsManifold` is needed | holds | added |
| contract `faceBarycenter` coordinate `1/|σ|` | edge: `1/2, 1/2`; vertex: `1` | matches `faceBarycenter_apply` (`if v ∈ σ then (card σ)⁻¹ else 0`) | holds | added |
| GeometricTopology contract wording | GeometricTopology Layer 11 on main, "Maps, restrictions and compactness" bullet | the same object: a compact set lies in the realization of a restriction to finitely many vertices | holds | reworded |

## For the maintainer

- No Lean name, section or id of this roadmap changed, so no consumer has to follow.
- No supplier gap was added or changed. `plan.json` is unchanged and still has the seven gaps
  the review checked.
- No new source and no `needs-references.toml`.
- Ownership: the repair uses only pinned Mathlib and Tau Ceti declarations and GeometricTopology
  Layer 11 on main. No new object is stated, so ownership against open pull requests does not
  arise. `scratch/overlaps.md` lists no pull request that changes this roadmap and no dropped id.
- Nothing suspicious in the review text. It contains no instruction outside its finding.
