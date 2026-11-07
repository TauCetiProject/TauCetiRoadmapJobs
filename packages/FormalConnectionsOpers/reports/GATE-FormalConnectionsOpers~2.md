# GATE-FormalConnectionsOpers~2: answers to the review of 2026-11-07

Pull request #1056, folder `TauCetiRoadmap/FormalConnectionsOpers/`, base head `0694b63`, new head
`7e7e507` (one commit, README only; `Suggested.lean` unchanged). One comment is unanswered
(CBirkbeck, 2026-11-07T10:09:14Z, the reply to R01 of the fifth independent review). It makes
three distinct points, H01–H03.

## H01 (CBirkbeck) — answered

Confirmed. At head `0694b63` (description updated 2026-11-07T10:29Z), the pull-request description
ends with the sentence "Merge after the ReductiveGroups revision whose Layer 3A.5 states the complex
Lie group `G(ℂ)` and the chart-at-the-identity identification of its Lie algebra (#1676; #1808 and
#1797 carry the same passage); §4.3 consumes it". The passage is at #1676 `528579c` ReductiveGroups
README lines 881–887, at #1808 `beeacfb` lines 852–858 and at #1797 `84818d4` lines 1227–1232.

Notes for the worker (description text, which this job does not edit):
- The sentence sits after the `<!-- merge-order -->` block, and #1676 is in neither the
  `<!-- depends-on -->` list nor the merge-order chain. A reader of those blocks alone does not see
  the dependency.
- The description still names "the existing ReductiveGroups #1011", and #1011 is not an open pull
  request.
- **#1332 conflicts with #1676 on this point.** #1332 (`f80fc35`, ReductiveGroups README lines
  22–28 and 3951–3975) puts the whole group-specific analytic dictionary in a new **§11.0**:
  - the transport to native Hopf points;
  - the complex Lie group;
  - the counit-derivation Lie algebra with bracket `D*E − E*D`;
  - the germ cotangent comparison.

  It names FormalConnectionsOpers as a consumer. #1676 has no §11.0: it gives the Lie group and
  its Lie-algebra identification to 3A.5 and the transport to this roadmap's §4.3. The README
  follows #1676, #1808 and #1797. If #1332 merged instead, the README's 3A.5 citation would move
  to §11.0, and §4.3's transport and counit comparison would duplicate §11.0. So the revision
  named in the description has to be one of #1676, #1808 or #1797, not #1332.

## H02 (CBirkbeck) — disputed

The claim was that the README is right as written and needs no change. It is not. §4.3's citation
of 3A.5 (lines 1417–1422 and 1434–1435) is right at the three open heads. But two other sentences
of the README described a different state of ReductiveGroups, and they are now repaired.

1. **Scope bullet, lines 78–85.** The old text was "ReductiveGroups Layer 3A.5 owns the classical
   topology, the smooth charts and the complex Lie-group structure on `G(ℂ)`". That contradicted
   line 56 ("This roadmap takes complex points, their classical topology and all these comparisons
   from C−1.1 alone"). It also contradicted §4.3's own line 1419 ("the classical topology and the
   smooth charts from ComplexComparisonPartII C−1.1"). It now reads "ReductiveGroups Layer 3A.5
   owns the complex Lie-group structure on `G(ℂ)` … on the classical topology and smooth charts of
   ComplexComparisonPartII C−1.1, with the chart-at-the-identity identification …".
2. **Downstream consumers bullet "ReductiveGroups Layer 11", old lines 2479–2481: deleted.** It
   said that Layer 11 consumes "what §4.3 adds on `G(ℂ)` to its own Layer 3A.5 dictionary". This
   is false at every head that has a 3A.5 dictionary:
   - #1676 line 3722 says "Layer 11 consumes no target of FormalConnectionsOpers", and lines 23–24
     say "no target of FormalConnectionsOpers is an input here".
   - #1808 and #1797 mention FormalConnectionsOpers only as a consumer of ReductiveGroups (lines
     1334 and 3678; 1802 and 4233).

   It is also false at main, where 3A.5 has no such dictionary to add to. And it named a supplier
   of this roadmap (ReductiveGroups Layers 0–9, 3A.5 and 6B) as a consumer, which is an edge
   against the direction of supply.

## H03 (CBirkbeck) — disputed

Main does not support the citation. The comment cited "the witness at main (ReductiveGroups 3A.5,
lines 335–372)". On main (`eaf17b1`), those lines do the following:
- consume C−1.1's `.complexPoints`, `.closedSubspace`, `.proper`, `.separatedHausdorff` and
  `.smooth` (lines 341–343);
- apply them to the closed orbit;
- build the holomorphic orbit map `G(ℂ) → O_x(ℂ)` and the identification `G(ℂ)/H(ℂ) ≃ O_x(ℂ)`.

They state no complex Lie-group structure on `G(ℂ)` and no identification of its Lie algebra by
the chart at the identity. Main's Layer 11 (line 1964) still takes "the lower smooth/holomorphic
dictionary" from FormalConnectionsOpers F4.3.

So the 3A.5 citation in README lines 78–81, 1417–1422 and 1434–1435 resolves only at the open
heads of #1676, #1808 and #1797. It is listed below under "Only an open revision defines". #1854
(`25e4020`) and #1807 (`7e8275c`) keep main's 3A.5 and main's Layer 11 citation of F4.3.

There is an alternative: this roadmap could own the dictionary, as main's Layer 11 expects. That
would duplicate 3A.5 at the three heads and restore the ReductiveGroups ↔ FormalConnectionsOpers
cycle that those heads break. Depending on the revision is therefore the single-owner resolution,
and the README keeps it.

## Only an open revision defines

- ReductiveGroups Layer 3A.5's complex Lie-group dictionary on `G(ℂ)`:
  - **What it is:** the holomorphic multiplication, unit and inverse, and the identification of
    the Lie algebra with Layer 2's tangent Lie algebra by the chart at the identity.
  - **Defined at:** #1676 `528579c` lines 881–887; #1808 `beeacfb` lines 852–858; #1797 `84818d4`
    lines 1227–1232.
  - **Not at:** main `eaf17b1`, #1854, #1807 or #1332 (which uses §11.0).
  - **Consumed at:** README lines 78–85, 1417–1422 and 1434–1435.
  - The worker names the revision in the merge-order paragraph; see H01.

## Cross-roadmap observation (no edit)

There is a second disagreement over who owns the classical topology and smooth charts on the
complex points of smooth complex schemes.
- #1676 (lines 19–34) gives them to ReductiveGroups 3A.5 and says that ComplexComparisonPartII
  C−1.1 and this roadmap's §2.4 consume them from 3A.5.
- #848's C−1.1 (README line 148 at `1a0a82d`) owns them and names F2.4 as its consumer.

This README (line 56, §2.4) takes them from C−1.1 alone, as main's 3A.5 does (lines 341–343). That
object has two owners, #848 and #1676, and those two pull requests settle it. If #1676's wording
prevails, line 56 and §2.4 would cite 3A.5 instead.

## Adversarial pass (statements changed or re-verified in this job)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Scope 78–85: 3A.5 owns the Lie group `G(ℂ)` and the chart-at-identity Lie-algebra identification, for every affine algebraic `G/ℂ` | `𝔾_a`, `H = ℂ[x]`; `𝔾_m`, `H = ℂ[x,x⁻¹]`; `μ₂`, `H = ℂ[x]/(x²−1)`; trivial group | `𝔾_a`: `D = ∂_x\|₀`, `D(x) = 1`, bracket `0 = 0`. `𝔾_m`: `D(x⁻¹) = −ε(x)⁻²D(x) = −1 = d(z⁻¹)/dz\|_(z=1)`. `μ₂`: `0 = D(x²−1) = 2ε(x)D(x) = 2D(x)`, so `𝔤 = 0`, matching the discrete `G(ℂ) = {±1}`. Trivial group: `𝔤 = 0`, `G(ℂ) = pt` | holds without connectedness, as stated | none |
| Same, bracket sign | `GL₂`, `A = E₁₂`, `B = E₂₁` | `(D*E)(x_ij) = Σ_k A_ik B_kj` from `Δx_ij = Σ x_ik ⊗ x_kj` (`Δ = μ*`), so `D*E − E*D ↔ AB − BA = E₁₁ − E₂₂`. Left-invariant fields `X_A(g) = gA` with Mathlib's `lieBracket V W = DW·V − DV·W` give `g(AB − BA) = g(E₁₁ − E₂₂)`. No minus sign | agrees with §4.3 lines 1434–1438 | none |
| Same, owner of the topology and charts | README line 56; README line 1419; main RG 341–343; #1676 19–34; #848 line 148 | old line 79 named RG 3A.5 as owner; lines 56 and 1419 and main name C−1.1 (two owners inside one README) | contradiction | reworded to "on the classical topology and smooth charts of C−1.1" |
| §4.3 consumes 3A.5's dictionary (1417–1422, 1434–1435) | main `eaf17b1`; #1676; #1808; #1797; #1854; #1807; #1332 | passage present at #1676 881–887, #1808 852–858 and #1797 1227–1232; absent at main 335–372, #1854 and #1807; at #1332 it is §11.0 (3951–3975) | resolves only at three revisions | none to text; recorded as a revision dependency |
| Downstream consumer "ReductiveGroups Layer 11" (old 2479–2481) | main 1964; #1676 3722 and 23–24; #1808; #1797 | main: Layer 11 takes the whole F4.3 dictionary, and 3A.5 has none for §4.3 to "add to". #1676: "Layer 11 consumes no target of FormalConnectionsOpers". #1808 and #1797: no input from this roadmap. ReductiveGroups is a supplier here (Layers 0–9, 3A.5, 6B) | false at every head; edge against the supply direction | deleted |

## Elaborated signatures

`Suggested.lean` is unchanged, so the 9 elaborated types in the job's `signatures.md` are current.
I compared each with its README statement:
- `regularGauge_constantCoeff_bijective` (README 827–831) keeps `[Algebra ℚ R]`, `A B` and the
  subtype `regularGauge R n g A = B`.
- `formalLoop_eq_polynomial_mul_positive` (README 1110–1116) keeps `hG` and an arbitrary
  `[Algebra ℂ R]`.
- `exists_cyclicVector` (README 1884–1907) keeps `[CharZero F]`, `hd`, `[FiniteDimensional F V]`
  and `hD`.
- The four coefficient maps and `IsDifferentialModuleMap` carry the binders their README text names.

No binder is dropped and nothing changed. I ran no fresh `#check` scratch file, because the Lean
file is identical to the one `signatures.md` was elaborated from.

## Ownership against open work

- Searched by object, not by name: the complex Lie-group structure on `G(ℂ)`, the
  Lie-algebra/counit-derivation identification, and ReductiveGroups Layer 11's inputs.
- Heads read: #1676 and #1332 (the given checkouts), and #1797, #1808, #1854 and #1807 (read
  through `roadmaps show --pr`), plus ComplexComparisonPartII at #848.
- Findings: one owner at the heads the README follows (ReductiveGroups 3A.5), with this roadmap
  doing the transport. The conflicting #1332 and the #848/#1676 split are recorded above.
- Nothing moved down; no new supplier and no new `*Needs:*` line.

## Sources

No source was cited, changed or fetched. `needs-references.toml` was not written.

## Untrusted text

The comment contains no instruction to run commands or to change files outside the job. Nothing is
suspicious.

## Build and gate

- `lake build TauCetiRoadmap.FormalConnectionsOpers.Suggested`: "Build completed successfully
  (18586 jobs)." There are three warnings, all `declaration uses 'sorry'` (lines 71, 130 and 160).
  The build ran before the README-only commit; the Lean file is unchanged since.
- Gate at `7e7e507`: `gate FormalConnectionsOpers: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`
- Direction check: `depcheck: 239 roadmaps, 2369 edges, 0 problem(s)`. There is no UPWARD, CYCLE
  or `moved:` line.
- `roadmaps resolve` on the README: cross-roadmap citations found nowhere: none; Lean names found
  nowhere: none.
- Commit `7e7e507` "FormalConnectionsOpers: review repairs (G(ℂ) charts from C−1.1 in Scope; drop
  ReductiveGroups Layer 11 consumer)". Not pushed.
