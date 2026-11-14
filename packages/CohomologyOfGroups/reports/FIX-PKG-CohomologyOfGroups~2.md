# FIX-PKG-CohomologyOfGroups~2

Five findings of `REV-PKG-CohomologyOfGroups` settled: four applied, one applied differently
(F01), none disputed. Every claim was checked against SpectralSequencesAndConvergencePartII on the
board's main branch (`packages/SpectralSequencesAndConvergencePartII/README.md` at `23b6efed`, the
accepted package; verdict `e945d57b`), against HS53 and against the pinned Mathlib and Tau Ceti.
That roadmap is line 63 of the merge order and this one line 318, so it is a legal supplier. The
statements of its §4.3 and §5.2 consumed here are identical at `23b6efed` and at the reviewed
`9566021`; only a Check in each section changed. Its Downstream consumers already list this
roadmap for Layers 2–5.

## F01 (P2) — applied differently

Steps 1–3 applied. 5.1's two-term sequence now comes from SpectralSequencesAndConvergencePartII
§4.3, and the splitting is proved in 5.1. Step 4 (delete the `flat-kunneth` gap) is refused:
plan target 5.1 still names it, and only `gaps` is editable. So `gap:flat-kunneth` moves from
DerivedModuleAlgebra §0.2 to §4.3. It now asks only that the two-column sequence be natural.

Evidence for the retargeted gap: §4.3 at board `main` states the spectral sequence natural from
page `2`, the cross product as edge map, the flat abutment and the two-column sequence. It does not
call that sequence natural (unchanged at `e945d57b`), while 5.1 states it natural in compatible
pairs. The previous README text took this as an unstated "Assumed:" clause; it is now a request.
The README contract line, 5.1's route and *Needs*, Scope and the Layer 5 Dependencies name it.

Evidence for the rest: SSCPII §4.3 states the spectral sequence for bounded-above `K`, `L`,
natural from page 2, with the cross product as edge map. Its abutment is `Tot(K ⊗ L)` for
bounded-above flat `K`. When `Tor_i = 0` for `i ≥ 2` its two columns give
`0 → ⊕_{i+j=n} Hⁱ ⊗ Hʲ → Hⁿ → ⊕_{i+j=n+1} Tor₁ → 0`. Global dimension `≤ 1` gives `Tor_{≥2} = 0`.
ℕ-indexed chain complexes are bounded above, and `i + j = n + 1` with `n = −m` is `p + q = m − 1`.
Two departures from the suggested text: §4.3's flatness clause concerns the first factor, so the
route takes `K = C(G; M)` and exchanges the factors when `N` is flat; and the projective
replacements come from the pinned `CochainComplex.exists_quasiIso_projective`, not from a roadmap
section. §4.3 has no splitting, so 5.1 proves it from projective replacements:
- Over `k`, cycles and quotients by cycles are projective: Tau Ceti
  `HomologicalComplex.projective_cycles_of_hasProjectiveDimensionLE_one` and
  `…projective_cokernel_iCycles_of_hasProjectiveDimensionLE_one`
  (`HomologicalComplex/Projective/Dimension.lean:45, 57`).
- The cycles then split off: `HomologicalComplex.isSplitMono_iCycles_of_projective`
  (`Algebra/Homology/Split.lean:202`). This is the hypothesis `[∀ p, IsSplitMono (K.iCycles p)]` of
  `homologyKunnethShortComplexSplitting` (`Kunneth/Sequence.lean:793`).
- The comparison `K′ ⊗ L′ → K ⊗ L` is a quasi-isomorphism through two K-flat tensorings
  (`CochainComplex.isKFlat_of_boundedAbove_flat`, `KFlat/Basic.lean:361`;
  `CochainComplex.quasiIso_id_tensorHom`, line 222).
- The cross product is natural (`HomologicalComplex.homologyCross_naturality`, `Cross.lean`), so
  the retraction transports.

The new Tau Ceti names and Mathlib `ComplexShape.embeddingDownNat` (`Embedding/Basic.lean:226`) are
added to the supplier contracts.

## F02 (P2) — applied

6.5 "Prove that … pages carry pairings … derivation … on `E_∞` induced by the cup product" → the
pairings, the derivation rule and the `E_∞` product are taken from SSCPII §5.2. Its hypotheses are
checked in the text: the cup product preserves normalized cochains, is a chain map for the Koszul
sign, and satisfies `A_r ∪ A_s ⊂ A_{r+s}`. The filtration is finite in each degree. The `E₂` sign
`(−1)^{pq'}` stays as this roadmap's target. §5.2 is added to *Needs*, the contract, the Layer 6
Dependencies and Scope.

Evidence: §5.2's rule `d_r(xy) = d_r(x)y + (−1)^{p+q} x d_r(y)` matches 6.5's sign. Its indexing
puts the classical `E_r^{p,q}` at native `(2p + q + 1, −p − 1)` on page `r + 1`, the same as 6.2.
Its `E_∞` clause needs convergence through the canonical presentation. Base §5.3 gives it for
filtrations finite in degrees `n − 1, n, n + 1`, and 6.1's filtration is: `A_j ∩ C̄ⁿ = C̄ⁿ` for
`j ≤ 0` and `0` for `j > n`.

## F03 (P3) — applied

Scope bullet: "leaves the first-quadrant edge morphisms and low-degree sequences to
DerivedModuleAlgebra §S.1 and does not treat the spectral sequences of group extensions" → the
double-complex edge maps go to §S.1. SSCPII Layer 3 owns the composite-functor sequences with their
low-degree sequences (§§3.2–3.4). Hochschild–Serre is an instance of §3.2 for invariants and of
§3.4 for coinvariants. 6.2 and 6.3 do not compare with them.

Evidence: SSCPII §3.3 (five-term and degree-`m` sequences) and §3.4 (the right exact sequence
`L₂(G∘F) → … → L₁G(F(A)) → 0`). Its Layer 3 Examples name invariants under `N` followed by
invariants under `G/N`. Coinvariants meet §3.4's hypothesis because `k[G]_N = k[Q]` is projective,
so the coinvariants of projectives are `(−)_Q`-acyclic.

## F04 (P3) — applied

3.3 "(HS53 Ch. I §5 Prop. 5, p. 116)" → "(… p. 116, in cohomology; the homological transcription
is the remark closing HS53 Ch. I §7, p. 118, HS53 line 355–362)". The `HS53` locator in
`sources.toml` gains "the closing remark on the transcription to homology (p. 118)". The same
pattern is repaired at:
- 2.1: Prop. 1 and the §4 bicomplex, "both in cohomology".
- 2.3: Lemmas 1–2 and Prop. 5, and Prop. 4 "for the cohomological form".
- 3.2: the §4 bicomplex, "a cochain bicomplex".
- 6.3: the bare "HS53 line 355–362" now carries its locator.

Evidence: HS53 line 283–288 (Prop. 5: a cochain complex `U`, cohomology only), lines 83–86
(Prop. 1) and 214–216 (Prop. 4), all cohomological. HS53 line 355–362 is the homology remark at the
end of §7 (§7 starts at line 325, Chapter II at line 367), on printed p. 118 (line 352).

## F05 (P3) — applied

`MilneCFT` `cited_for`: `"Target 4.7"` removed. A mechanical section-by-section comparison of
README citations with every `cited_for` now agrees for all eight works. Hutchinson13 and
SwanPPeriod60 also appear inside the K3BlochGroups contract, describing that supplier, and their
`cited_for` already lists the targets that use them.

## Checks

- **Elaboration** (`lake env lean packages/CohomologyOfGroups/Suggested.lean` from the content
  checkout, rerun after the plan repair): exit 0, nine warnings `declaration uses 'sorry'` (lines
  83, 91, 106, 115, 144, 168, 182, 199, 213), no error. `Suggested.lean` is unchanged: none of its
  declarations or docstring claims is affected (5.1, 5.3 and 6.2–6.5 remain named there as not
  statable, for the same missing carriers).
- **Signatures**: a scratch file with `#check @…` for all 12 declarations was elaborated once. The
  output is identical, line for line, to the earlier elaborated listing, so no binder changed. Each
  type still matches its README statement. The plan repair did not touch `Suggested.lean`.
- **Gap references**: every `gap:<slug>` the README names (`homological-low-degree`,
  `flat-kunneth`) is declared in `design/plan.json` `gaps`, each with `needs`, `supplier` and
  `section`. The plan differs from the accepted design only in `gaps` (the `flat-kunneth` entry's
  title, detail, needs, supplier and section). No gap a target names is removed.
- **Depcheck** (rerun after the plan repair):

      depcheck: 243 roadmaps, 2203 edges, 0 problem(s)

  No UPWARD or CYCLE line.
- **Citations** (`roadmaps resolve`, rerun after the plan repair): one lead, line 53,
  "SpectralSequencesAndConvergencePartII, Layer 2: no roadmap … on main or in an open pull
  request". That roadmap is an accepted board
  package, earlier in the merge order, not yet a content pull request. This is a false positive for
  this stage. Lean names: none missing. Every new Tau Ceti and Mathlib name was opened at the pin
  (files and lines above).
- **Ownership**: `roadmaps grep` for a flat or split Künneth sequence over hereditary rings, across
  main and the open heads, found no owner of the splitting proved in 5.1. Nothing new is owned by
  this roadmap. For the retargeted gap, `roadmaps grep` for a natural Künneth sequence found:
  - AlgebraicTopology: the singular Künneth sequence of spaces, through Tau Ceti
    `Singular.Kunneth`, not for arbitrary complexes;
  - K3BlochGroups: consumes the singular sequence;
  - HomologicalStabilityOfGeneralLinearGroups: consumes the sequence for a product of groups.

  None states the algebraic two-column sequence for complexes. Its owner is
  SpectralSequencesAndConvergencePartII §4.3, so the gap is addressed there.

## Repair of the worker's check

- `design/plan.json: removes the gaps flat-kunneth, which targets of the plan still name` →
  the `flat-kunneth` entry is back in the top-level `gaps`, retargeted. Before, it asked
  DerivedModuleAlgebra §0.2 for the whole split, natural sequence. Now it asks
  SpectralSequencesAndConvergencePartII §4.3 only to state that its two-column sequence, first map
  the edge map (the cross product), is natural in `K` and `L`. `neededBy` stays `["5.1"]`.
  README, same slug:
  - Exact supplier contracts: the §4.3 bullet's "Assumed: … natural" sentence becomes
    "What SpectralSequencesAndConvergencePartII must provide (gap:flat-kunneth): …".
  - 5.1: its route and *Needs* cite `gap:flat-kunneth` for the naturality.
  - Layer 5 Dependencies: name the gap.
  - Scope: says the naturality is what §4.3 must provide.

  Nothing else changed.

## Adversarial pass on changed statements

| Statement | Instances tried | Values on each side | Result | Change |
|---|---|---|---|---|
| 5.1 via §4.3, flat factor first | `k = ℤ`, `G = H = ℤ/2`, `M = 𝔽₂`, `N = ℤ[1/3]` (N flat: exchange) | degree 2: tensor `𝔽₂⊗0 + 𝔽₂⊗𝔽₂ + 𝔽₂⊗ℤ[1/3] = 𝔽₂²`; Tor `Tor₁(𝔽₂,𝔽₂) + Tor₁(𝔽₂,ℤ[1/3]) = 𝔽₂`; total `𝔽₂³ = H₂((ℤ/2)², 𝔽₂)` (`n + 1 = 3`) | agrees with the README Check | route only |
| 5.1 flatness needed | `G = H = 1`, `M = N = ℤ/2` | `H₁(Tot(ℤ/2 ⊗ ℤ/2)) = 0`; §4.3 abutment `H₁(ℤ/2 ⊗^L ℤ/2) = Tor₁ = ℤ/2` | Tot ≠ derived without a flat factor | Check kept |
| 5.1 splitting transport | `G = H = 1`, `M = 𝔽₂`, `N = ℤ[1/3]`; `K′ = (ℤ →2 ℤ)`, `L′ = (F →u F)`, `u(e_i) = e_i − 3e_{i+1}` | `H₀(K′⊗L′) = 𝔽₂ ⊗ ℤ[1/3] = 𝔽₂ = H₀(K⊗L)`; `H₁(K′⊗L′) = Tor₁(𝔽₂, ℤ[1/3]) = 0 = H₁(K⊗L)` | quasi-isomorphism, as claimed | none |
| §4.3 contract, index translation | `K = L = ℤ/2[0]` over `ℤ` | `n = 0`: tensor `ℤ/2`, Tor `0`; `n = −1`: tensor `0`, Tor `Tor₁(ℤ/2,ℤ/2) = ℤ/2`; homological `m = 1`: `p+q = 1` gives `0`, `p+q = 0` gives `ℤ/2` | matches SSCPII's own Check | none |
| `gap:flat-kunneth`: the two-column sequence is natural | `R = ℤ`, `L = ℤ/2[0]`, chain map `K = (ℤ →4 ℤ) → K′ = (ℤ →2 ℤ)` (degrees 1, 0), `f₀ = id`, `f₁ = ×2` (`2·2 = 4·1`) | `m = 1`: Tor map `Tor₁(ℤ/4, ℤ/2) = {0, 2} → Tor₁(ℤ/2, ℤ/2)`, `2 ↦ 0`; middle `H₁(K ⊗ L) = ℤ/2 → ℤ/2` is `f₁ ⊗ 1 = 0`. `m = 0`: tensor `ℤ/4 ⊗ ℤ/2 = ℤ/2 → ℤ/2` identity; middle `f₀ ⊗ 1` identity | both squares commute | gap stated |
| the gap asks no natural splitting | `R = ℤ`, `L = ℤ/2[0]`, `K = (ℤ →2 ℤ)` in degrees 2, 1 → `K′ = ℤ` in degree 2, `f₂ = id`, `f₁ = 0` | `m = 2`: `K`: tensor `0`, Tor `Tor₁(ℤ/2, ℤ/2) = ℤ/2`; `K′`: tensor `ℤ/2`, Tor `0`; middle `H₂(K ⊗ L) = ℤ/2 → H₂(K′ ⊗ L) = ℤ/2` is `f₂ ⊗ 1`, an isomorphism. A natural splitting would make it `0 ⊕ 0 = 0` | splitting not natural; 5.1's "split (not naturally)" and its own splitting proof stand | none |
| the gap's hypothesis `Tor_{≥2} = 0` | `R = k[ε]/(ε²)`, `K = L = k[0]` (§4.3's own Check) | `H^{−2}(k ⊗^L k) = Tor₂(k, k) = k`; two-term prediction in `n = −2`: tensor over `i + j = −2` is `0`, `Tor₁` over `i + j = −1` is `0` | the sequence fails without the hypothesis | hypothesis kept |
| the gap, degenerate `L = R[0]` | any bounded-above `K` | `0 → Hⁿ(K) ⊗ R → Hⁿ(K) → ⊕ Tor₁(Hⁱ(K), R) = 0 → 0`; first map the identity | natural trivially | none |
| §5.2 sign versus 6.5's `(−1)^{pq'}` | general `u ∈ E₁^{p,q}`, `v ∈ E₁^{p',q'}`, `d₁ = (−1)^q d` | LHS `(−1)^{q+q'+pq'}(du∪v + (−1)^p u∪dv)`; RHS `(−1)^{pq'+q'+q} du∪v + (−1)^{pq'+q'+p+q} u∪dv` | equal | none |
| 6.5 with `(−1)^{qp'}` (wrong model) | same | `d₁u·v` side is `(−1)^{qp'+q}` against LHS `(−1)^{q+q'+qp'}` | off by `(−1)^{q'}` | excluded |
| 6.5 degenerate `N = 1` | `E₁^{p,0} = C̄^p(G, M)` | page-1 pairing of §5.2 = cup on `C̄(G)` | matches 6.5's first Check | none |
| 6.5 degenerate `N = G` | column `p = 0` | sign `(−1)^0 = 1`; cup on `Q = 1` with coefficients by cup on `N = G` = cup on `G` | consistent | none |
| 6.5 sign Check | `ℤ × ℤ ⊃ 0 × ℤ`, `M = ℤ` | `ỹ ∪ x̃ ↦ +x·y` (`(−1)^{0·0}`), `x ∪ y ↦ −x·y` (`(−1)^{1·1}`) | unchanged under §5.2's rule | none |
| Normalized cochains closed under ∪ | `φ ∈ C̄^p`, `ψ ∈ C̄^q`, `g_i = 1` | `i ≤ p`: `φ` vanishes; `i > p`: `ψ` vanishes | closed | stated in 6.5 |
| §5.2 `E_∞` clause applies | `G = ℤ/2`, `N = 1`, `𝔽₂` (no global bound) | in degree `n`: `A_0 = C̄ⁿ`, `A_{n+1} ∩ C̄ⁿ = 0`, so finite in degrees `n−1, n, n+1` (base §5.3) | applies | none |
| Scope: HS as §3.4 instance (coinvariants) | `N = 1`; `N = G` | `E² = H_p(G, H_q(1, M))`, row `q = 0`; `E² = H_q(G, M)`, column `p = 0` | consistent; `k[G]_N = k[Q]` projective | none |
| F04 locator | HS53 page markers | line 352 header "118"; §7 at line 325; Ch. II at 367 | remark is end of §7, p. 118 | locator added |

## For the maintainer

- `gap:flat-kunneth` is now addressed to SpectralSequencesAndConvergencePartII §4.3, not to
  DerivedModuleAlgebra §0.2. Its announcement goes to that roadmap. It asks one clause: §4.3 should
  state that its two-column Künneth sequence is natural in `K` and `L`. The package's acceptance
  remains conditional on `gap:homological-low-degree` (DerivedModuleAlgebra §S.1) and
  `gap:flat-kunneth`.
- Parts of `design/plan.json` outside `gaps` are frozen at the package stage. They still show the
  accepted design's route:
  - the DerivedModuleAlgebra supplier's `what` (line 2356) names §0.2 and `gap:flat-kunneth`;
  - `suppliers` has no SpectralSequencesAndConvergencePartII entry, although the README uses its
    §4.3 (5.1) and §5.2 (6.5).

  The README is authoritative. Those entries should be regenerated from it when the plan is next
  open to change.
- New supplier edges: SpectralSequencesAndConvergencePartII §4.3 (5.1) and §5.2 (6.5). That
  roadmap is an accepted board package, not yet on main or in a content pull request. If its
  numbering changes before it merges, these citations follow.
- No id of this roadmap was renamed or removed. `Suggested.lean` is unchanged, so no name that
  other roadmaps cite changed.
- No sources fetched; no `needs-references.toml` written. The review's "For the human reviewers"
  section (Brown82 not read; Loh19 licence) was not acted on. The review text contained no
  instructions beyond its findings.
