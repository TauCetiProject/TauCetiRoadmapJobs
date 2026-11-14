# Review of PresentationsOfMonoidalCategories (pull request #2308 at 6c64227)

**Verdict:** accepted

## Previous findings

- R01 — repaired: README §§0.3, 1.2, 2.3, 3.2, 3.3 and 4.1 now have the requested locators; §5.2 identifies its own deduction; §1.1 retains E.17; §2.2 restricts the source attribution to ℂ.
- R02 — repaired: README §§0.1–0.2 add three R-symbol Checks, the forbidden C₂ swap, twice-applied C₃ inversion, and the obstruction to descending the C₃ data to ℤ.
- R03 — repaired: `TauCetiRoadmap/PresentationsOfMonoidalCategories/Suggested.lean:67` now says “two F-symbols with equal `F` are equal (README 0.1)”, without claiming a declared `ext`.

## Verified sound

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 added hexagon Check | C₂, ℚ, F = 1, r = 2 | Forward hexagon: left 1; right 2·1·2 = 4. | Excluded as claimed | none |
| §0.1 added nonsolvable Check | C₂, ℤ, F¹¹¹₁ = −1 | Left (−1)² = 1; right −r². Units r = ±1 give −1, not 1. | No R-symbols | none |
| §0.1 added nonabelian Check | S₃, a = (12), b = (23), c = ab | N(ab,c) = 1; N(ba,c) = 0. Product of 1×0 and 0×1 matrices is [0], not [1]. | Excluded over nontrivial rings | none |
| §0.2 forbidden relabeling | C₂, swap 0 and 1 | N₁₁¹ = 0; N₀₀⁰ = 1; unit 0 maps to 1. | Both preservation conditions fail | none |
| §0.2 inversion twice | C₃ over ℚ; normalized gauge g₁₂ = 2, others 1 | (F¹²¹₁,F²¹²₂) = (2,½) → (½,2) → (2,½); all 81 pentagon equalities hold. | Valid data and round trip | none |
| §0.2 descent obstruction | Same C₃ data, ℤ → ℚ | 2·½ = 1 in ℚ; no integer n satisfies 2n = 1. | No integral preimage | none |
| §0.3 invertibility consequences | C₂ group rules; S₃ pair above | Associativity at (1,1,1,1): 1 = 1; C₂ symmetry: 1 = 1; S₃ symmetry would require 1 = 0. | Rank argument applies | none |
| §1.1 model | Two copies of one simple; distinct grades | Hom(2a,a) = Mat₂×₁(R) = R²; cross-grade Hom = 0; over zero ring R² = 0. | Matches E.17 specialization | none |
| §1.2 tensor and associator | C₂, X = (1,2), Y = (3,1), Z = (0,1), F¹¹¹₁ = −1 | X⊗Y = (5,7); both triple ranks (7,5); simple triple α = α⁻¹ = −1; product 1. | Convention preserved | none |
| §2.2 extraction | C₂ twisted model over ℂ | Standard triple bases give 1 = F·(−1), hence F = −1; unit equation 1 = F·1 gives F = 1. | Unique coordinates agree | none |
| §2.3 reconstruction and round trip | Same model with object ranks (1,2) | Reconstruction ranks (1,2) → (1,2); extracted triple F = −1; reconstructed α⁻¹ = −1. | Model and coordinates recovered | none |
| §3.2 classification | C₃ gauge above; C₂ over ℤ with F = ±1 | C₃ trivial data → (2,½), gauge-related; C₂ gauges leave F¹¹¹₁ fixed, so −1 ≠ 1 prevents equivalence. | Both directions tested | none |
| §3.3 automorphisms | C₂, ℤ, F = 1 | η₀ = 1, η₁² = 1: two characters; normalized stabilizer {±1}; coboundaries η₁² = 1; quotient has two classes. | Kernel and quotient agree | none |
| §4.1 braiding construction | C₂ super case; semion over ℤ[i] | Super: β = β⁻¹ = −1, hexagon 1 = 1. Semion R = i gives β = −i, β² = −1. | Inverse convention agrees | none |
| §5.2 rigidity | C₂ over ℤ, F¹¹¹₁ = −1; two copies of the nonunit simple | s = −1, ε = 1, η = −1; each zigzag (−1)(−1) = 1; biproduct zigzag diag(1,1) = I₂. | Supplier pairing gives rigidity | none |
| FSymbols docstring | Scalar block F = 2 over ℚ; empty block | Two-sided inverse is ½: 2·½ = ½·2 = 1; empty matrix has one inverse. Generally G = G(FH) = (GF)H = H. | Equality of F determines inverse | none |

The rows for untouched statements stand as in the previous review, of `3e84811`.

- Sources: 10 distinct locators checked in 2 texts: Kitaev2006 lines 3660, 4551, 4602, 5228, 5680, 5819–5847, 5871 and 6058; EGNO2015 lines 4212 and 4496; printed pages and restricted source settings agree.
- Pins: opened `Mathlib/LinearAlgebra/Matrix/InvariantBasisNumber.lean:92`, `Mathlib/CategoryTheory/Preadditive/HomOrthogonal.lean:75` and `:167`, and `TauCeti/CategoryTheory/Monoidal/Rigid/Biproduct.lean:163`; these supply rank comparison, matrix decomposition and finite-biproduct pairings.
- Cross-roadmap: 2 supplier sections resolved at PivotalSpherical #2311 (§§3.3, 8.1), and OcneanuRigidity #2316 Layers 5–8 resolved; no new ownership or numbering conflict.
- Gate: all checks zero, `OK`; targeted build succeeds. Dependency output: `depcheck: 244 roadmaps, 2197 edges, 0 problem(s)`; no UPWARD or CYCLE; 0 changed files outside the folder; worktree clean.
- Lean: direct elaboration and one scratch `#check @name` run for all 9 declarations succeed with exactly 2 `sorry` warnings; all required binders remain. The build additionally emits an advisory about Mathlib's module system on the untouched import.
- Pull-request text: title and 4 prose paragraphs agree with the new-folder diff and head; #2311 dependency and both extraction statements are described; no removed headings or declarations against the base.
- Remark on untouched text: README line 143 names `b.homDual`; PivotalSpherical §3.3 names `IsSplitSimpleFamily.exists_homDual`, as recorded in the previous review.

Overlap check: read OcneanuRigidity (#2316), PivotalSpherical (main and #2311), CategoricalOperatorAlgebras and TemperleyLieb; PivotalSpherical owns split simple families, pivotal infrastructure and VecTwisted; this roadmap owns matrix presentations; OcneanuRigidity owns their deformations; CategoricalOperatorAlgebras owns analytic refinements; TemperleyLieb owns diagram presentations. No duplicate owner in the changed scope.

Source independence: changed passages only; 14 changed README passages compared with 2 sources, no copied expression or reused material found; largest share Kitaev2006, 16 of 26 source-locator citations. No layer added, removed or reordered; the previous contents comparison stands.

## Not verifiable

- JoyalStreet1993, Kelly1964 and Bonderson2007 remain settled uncertified entries; none is cited in a changed passage.
- The description's numerical runs on Rep(A4) and Rep(D(S3)) have no artifact in the pull request.

## Source issues

- none

## For the human reviewers

- **Licence.** EGNO2015 line 3985 marks the cached text as the authors' final version made available with the publisher's permission, with redistribution restrictions; the roadmap uses only statements and locators from it.
