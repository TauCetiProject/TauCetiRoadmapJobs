# FIX-PKG-PadicHodgeTheoryPartII~2

Repair of the package `PadicHodgeTheoryPartII` against the three findings of `REV-PKG-PadicHodgeTheoryPartII` (review of 50c9a8b). Files changed: `packages/PadicHodgeTheoryPartII/README.md` (citation wording at the lines the review names) and `packages/PadicHodgeTheoryPartII/sources.toml` (one field of the `Chen14` entry). `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged: no finding touches a statement, a target, a gap or a headline.

## F01 (P3) — applied

Change: "AutomorphicBundles §B0.4" → "AutomorphicBundles §0.4" at the six places (Scope and ownership, the AutomorphicBundles supplier contract "Section B0.4 supplies" → "Section 0.4 supplies", the `*Needs:*` lines of §1.1 and §2.2, and the Dependencies of Layers 1 and 2).

Evidence: AutomorphicBundles at its open head has the heading "### 0.4 The linear associated-coefficient functor" and constructs `associatedCoefficient` there with the pullback, map, tensor, base-change and rank API the contract lists; `roadmaps grep 'B0\.4'` matches nothing on main or at any open head. The hypotheses stated in the contract (flat affine group, fpqc-locally trivial right torsor, finite locally free representation) are §0.4's, so only the section label changes. After the edit `roadmaps resolve` lists no unresolved cross-roadmap citation.

## F02 (P3) — applied

Change: the thirteen backticked supplier names are replaced by prose citations of the same objects at the suppliers' current sections. Conventions: `filteredGFunctor` → "the filtered fibre functor of (b, μ) of PadicHodgeTheory §3.6"; `Acceptable`, `HodgeInvariants` → "the acceptable set B(G,{μ}) of BunGAndNewtonStrata §1.23", "the Hodge invariants of its §1.7"; `DecentRepresentative` → "the decent representatives of BunGAndNewtonStrata §1.9". PadicHodgeTheory contract: `filteredHN` → "the Harder–Narasimhan filtration"; `filteredGFunctor`, `admissiblePair` → "the filtered fibre functor F_{b,μ} of a pair (b, μ) and the admissibility predicate"; `periodTorsor_neutral` → "neutrality of the period torsor"; `senOperator`, `senOperator_zero_iff_finiteInertia` → "the Sen operator and its vanishing exactly when the inertia image is finite". BunGAndNewtonStrata contract: §1.7 "the Hodge invariants μ^♮ and the Galois average μ^◇", §1.8 "the Newton and Kottwitz invariants", §1.9 "decent representatives", §1.23 "the acceptable set B(G,{μ})", §1.43 "bounded lifting … and the induced surjection of component cosets" (its API line states that surjection). HeckeStacksAndLocalShtukas contract and §4.3 route: `admissiblePeriodTorsor.classical_point` → "its crystalline classical fibres" and "the crystalline classical fibre of §HS2.11". §0.5 route: `filteredHN` → "the Harder–Narasimhan filtration" in the text and in `*Needs:*`. Carrier: the PadicLocalLanglandsForGL2Qp §0.2 contract now says "the category of filtered (φ, N)-modules over … (the carrier that FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.3.1 names `FilteredPhiNModule K`)", and the FiniteFlatGroupsAndIntegralPadicHodgeTheory contract attributes `FilteredPhiNModule K` to its §R07.3.1 as notation for §0.2's category. Kept, as the review asks: `FilteredPhiNModule.IsWeaklyAdmissible`, `parabolicTypeVariety`, `rankLocus`, `etale_coordinates`, `transcendenceDegree_infinite`, `associatedCoefficient` and the ReductiveGroupsPartII names.

Evidence: `roadmaps grep --fixed` on each of the thirteen names returns "no match on main or in any open roadmap pull request" (the only hits for `senOperator` are `Prismatic.WCart.senOperator` in PrismaticCohomologyPartII and for `Acceptable` unrelated sections of EndoscopicTransferAndUnitaryTraceComparison and ArithmeticStatisticsPartI). The objects are stated in prose at the suppliers' heads: PadicHodgeTheory §3.6 ("the filtered fibre functor of (b,μ) takes (V,ρ) to (V⊗ℚ̆_p, ρ(b)σ, Fil_μ) … the pair is admissible when every realization is weakly admissible"), §3.4 (HN filtration with its Checks on diag(1,p)), §4.4 ("Zero Sen operator and inertia", vanishing iff the image of I_K is finite), §5.5 (rational exact faithful tensor fibre functor ω_(b,μ) and the tensor-isomorphism torsor, trivialization changed by g ∈ G(ℚ_p) conjugates the representation); BunGAndNewtonStrata §1.7 (μ♯ and μ◇), §1.8, §1.9, §1.23 (B(G,{μ}) = {[b] : κ(b) = μ♯, N_ξ(ν_b) ≤ μ◇}), §1.43 (component-coset lifting surjection c_(b̃,μ̃) → c_(b,μ)); HeckeStacksAndLocalShtukas §HS2.11 (fibre at a point over finite L/F̆ is a conjugacy class of crystalline Gal(L̄/L) → G(ℚ_p) with isocrystal b); FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.3.1 ("Fix the notation `FilteredPhiNModule` for the carrier `FilteredPhiNModule K` of PadicLocalLanglandsForGL2Qp §0.2"). After the edit `roadmaps resolve` reports no Lean name found nowhere.

## F03 (P3) — applied

Change: `sources.toml`, entry `Chen14`, `fetched_from` = the SMF PDF URL → `https://www.numdam.org/item/10.24033/asens.2225.pdf`; `url`, `sha256`, `fetched_at`, `licence_class` and `status` unchanged.

Evidence: the cached extraction `7f0a33b3…` records at Chen14 line 2 that it was taken from that Numdam PDF; the manifest's sha256 is that file's. Both copies are publisher-open with the same journal pagination, so no locator changes.

## Checks

- `roadmaps resolve packages/PadicHodgeTheoryPartII/README.md`: "Cross-roadmap citations found nowhere: None. Lean names found nowhere: None." (before the edits: "19: AutomorphicBundles §B0.4: AutomorphicBundles has no B0.4").
- Dependency gate (the brief's command, `--movable`): `depcheck: 242 roadmaps, 2488 edges, 0 problem(s)`. No UPWARD, CYCLE or `moved:` line.
- `lake env lean packages/PadicHodgeTheoryPartII/Suggested.lean` from the content checkout: exit 0, no message. The file imports `Mathlib` only and declares nothing (its docstring names the five headlines as not statable at the pins), so no `#check` scratch comparison was needed and no binder can have been lost.
- Residue grep for `B0.4` and the thirteen names over the README: no match.

## Gate failures

- `tex=1` on the "Scope and ownership" sentence "Section 3.3 supplies Fontaine's functors …": the filtered fibre functor was written `F_{b,μ}` in bare prose, which the house style reads as a LaTeX subscript. Change: that occurrence → the code span `F_{b,μ}` (the two later occurrences in the same sentence were already code spans). A grep for `_{` or `^{` outside code spans over the whole README now finds nothing.
- `sources.toml`, entry `Chen14`: `fetched_from` is the Numdam PDF (an open-repository host) but `licence_class` said `publisher-open`. Change: `licence_class` = `publisher-open` → `open-repository`; `url`, `sha256`, `fetched_at`, `status` and the locators unchanged. The F03 section above records the earlier state of this entry.

## Adversarial pass on the changed text

The edits replace names by prose descriptions of the same supplied objects; no statement, hypothesis, sign or convention of this roadmap changes. The changed contract sentences were re-read against their suppliers:

| Statement (changed wording) | Instances tried | Values | Result | Change |
|---|---|---|---|---|
| Conventions: [b] ∈ B(G,μ) ⇔ κ(b) = μ^♮ and ν_b ≤ μ^◇, "the acceptable set of BunGAndNewtonStrata §1.23" | split GL_2, μ = (1,0), b = diag(p,1); b = 1 | κ = 1 = μ♯, ν_b = (1,0) ≤ (1,0) = μ◇: acceptable; κ(1) = 0 ≠ 1: not acceptable | matches §1.23's definition and §1.7's Check "μ = (1,0): μ◇ = (1,0), μ♯ = 1" | none |
| PadicHodgeTheory §3.6 contract: admissible ⇔ every F_{b,μ}(V) weakly admissible | 𝔾_m, b = p^m, μ(z) = z^h | t_N = m, t_H = h: admissible iff m = h | same as §3.6's Check | none |
| PadicHodgeTheory §4.4 contract: Sen operator zero ⇔ finite inertia image | unramified character with Frobenius 1+p; log χ extension | infinite total image, trivial inertia, Sen operator 0; nilpotent [[0,1],[0,0]] ≠ 0, infinite inertia | §4.4's own Checks, both directions of the iff witnessed | none |
| BunGAndNewtonStrata §1.43 contract: lifting and surjection c_(b̃,μ̃) → c_(b,μ) | GL_2 → PGL_2, μ̃ = (1,0) | §1.43's API line states the surjection for a z-extension over finite E/ℚ_p | matches the use in §3.5 | none |
| HeckeStacksAndLocalShtukas §HS2.11 contract: fibre at an L-point is a crystalline conjugacy class with isocrystal b | point in the cell of type μ′ ≤ μ | Hodge filtration of type (μ′)⁻¹ in HS orientation, read as our μ′ by the Conventions | consistent with the orientation rule on line 33 | none |

## For the maintainer

- No name of this roadmap's own changed: `Suggested.lean` declares nothing, so no other roadmap cites a declaration of this one.
- Ownership against open pull requests was not re-run beyond the review's own reading of AdmissiblePairsAndPadicHodgeStructures and HeckeStacksAndLocalShtukasPartII: the findings add no construction, only citation wording.
- The thirteen dropped names were declarations the suppliers once announced and no longer state; if a supplier later declares them again, the prose citations remain correct and may be re-backticked at that time.
- The sources service was not re-run on `Chen14`; the field was set by hand to the origin the cache records. `needs-references.toml` was not created: every cited text is in the cache.
