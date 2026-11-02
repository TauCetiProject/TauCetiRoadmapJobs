# FIX-PKG-EtaleHomotopyTypes~4

Findings of the round-3 review: F01 (P1), F02 (P3). Both are verified and applied. Only `packages/EtaleHomotopyTypes/README.md` changed.

## F01 (P1) — applied

Verified: AlgebraicTopology Stage 8 item 1 (`TauCetiRoadmap/AlgebraicTopology/README.md`, Stage 8) states the long exact sequence of a based pair, not of a homotopy fiber. StableHomotopyKTheory §§2.3–2.6 (it is 4th in the merge order, above this roadmap at 44) state the strict-fiber/homotopy-fiber comparison, the connecting map, exactness and the π₁-action. GeneralizedCohomology §G2.10 supplies `MappingPathSpace`/`MappingPathFiber`.

Changes:
- §3.8 *Needs:* "AlgebraicTopology Stage 8 (homotopy-fiber exact sequence)" → StableHomotopyKTheory §§2.3–2.6; GeneralizedCohomology §G2.10; AlgebraicTopology Stage 8, item 2 (Kan/cubical comparison); Fr Theorem 11.5.
- §3.8 route: it now separates the étale pro-fiber comparison over the cover tower, which is the content of the target, from the imported ordinary fiber sequence used at each finite level.
- Layer 3 Dependencies: "homotopy-fiber sequences" is attributed to StableHomotopyKTheory §§2.3–2.6 and GeneralizedCohomology §G2.10; Stage 8 is kept for the Kan/cubical comparison.
- Supplier contracts: new paragraphs under StableHomotopyKTheory (§§2.3–2.6, with the test of `*→BS₃` versus `id_BS₃`) and GeneralizedCohomology (§G2.10). The Scope paragraph names the owner.

Pattern search: "Stage 8" occurs nowhere else with a fiber-sequence attribution. The AlgebraicTopology contract paragraph already listed only local cohomology, the Kan/cubical comparison, Whitehead and obstruction theory. No new gap is needed.

## F02 (P3) — applied

Verified at BHH line 2437 (Definition 7.3.2, p. 69): K_p is a small set of representatives indexed by all finite sets and all n≥2, so it is infinite. In §6.2, "BHH finite test set K_p" → "BHH's small set K_p of p-finite test objects", with the locator and a sentence explaining why the family cannot be bounded. Same pattern in §6.3: "finite test closure" → "closure of its test objects under finite limits".

## Adversarial pass on changed text

| Statement | Instances | Values | Result |
|---|---|---|---|
| Fiber sequence (StableHomotopyKTheory §§2.4–2.6) as imported in §3.8 | `*→BS₃`; `id:BS₃→BS₃`; `BC₂→BS₃` (non-normal) | First: F≃S₃ with 6 components; δ:S₃→π₀F is a bijection; action is regular, with stabilizer = im(π₁*)=1. Second: F≃* with 1 component; δ is trivial; stabilizer = S₃. Third: π₀F=S₃/C₂ has 3 elements; δ is g↦gC₂ and is not a homomorphism. | Consistent with the pointed-set end. |
| §3.8 product case | Gₘ×Y→Y, Y raw K(π,1) over ℂ | Fiber π₁=ℤ̂(1); π₂Y=0, so 1→ℤ̂(1)→ℤ̂(1)×π₁Y→π₁Y→1 is split exact. | Matches the Layer 3 Examples. |
| §6.2 test family | K(C_p,2), K(C_p,3) for p=2,3; cutoff N | (π₂,π₃)=(C_p,0) and (0,C_p). K(C_p,N+1)→* is invisible to tests of degree ≤N, but H^(N+1)(−,𝔽_p) is 𝔽_p versus 0. | Infinite small family required. |

## Checks

- `lake env lean packages/EtaleHomotopyTypes/Suggested.lean` (from the content checkout): exit 0, no output. `Suggested.lean` is unchanged and declares nothing, so the `#check @name` scratch file is empty and there are no binders to compare.
- Depcheck output (exit 0):

      depcheck: 56 roadmaps, 640 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line.

## Notes for the maintainer

- StableHomotopyKTheory was read at the head of its open pull request through `roadmaps show`. It precedes this roadmap in ORDER.txt.
- No Lean names changed, and nothing changed that other roadmaps cite. No sources were added or requested.
