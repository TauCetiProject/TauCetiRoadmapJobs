# Review of OcneanuRigidity (pull request #2316 at 6027074)

**Verdict:** needs changes

## R01 (P2) — The corrected comparison conflicts with its supplier

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:344: “doubleDualTrace (a_T.inv)ᘁ • F.map (ᘁa_T.hom)”; the absolute specialization still consumes PivotalSpherical 11.1–11.2 at lines 308–311 and 370.
**Claim:** The repaired relative comparison uses a different normalization from the absolute comparison supplied by #2311. Their identification at the identity functor therefore does not preserve the specified adjunction comparison.
**Witness:** #2311, TauCetiRoadmap/PivotalSpherical/README.md:528 still uses inverse trace times the mate. On the two-dimensional simple of FDRep ℂ S₃ it gives 1/2, versus 2 here; the resulting averaging totals are 3 and 6.
**Repair:** Keep the corrected scalar here and synchronize the consumed contract in PivotalSpherical §11.1: specify its I → L block as doubleDualTrace (a_S.inv)ᘁ times the left mate of a_S.hom. Its S₃ Check must give 2·2 = 4 and total 6; cite that consistent contract.

## Previous findings

- R01 — repaired: README:344–359 uses the second trace factor and computes 2 and (2/3)·3 = 2 for the two-dimensional simple. The supplier disagreement introduced by this correction is this report’s R01.
- R02 — repaired: Suggested.lean:94–97 and 118–121 explicitly require both action functors to be additive and linear; README:1058 agrees.
- R03 — repaired: README:684–689 computes 2b and zero coboundaries; 798–808 has three extraction Checks; 850–857 computes θ = −1 and c ↦ c − 2d.
- R04 — repaired: README:832–833 cites EGNO Proposition 7.1.6, p. 133; 1041 identifies the finiteness deduction; 898 and 1139 supply Example 7.4.10, p. 137.

## Verified sound

| Statement | Instances tried | Computed on one side | Computed on the other | Result / change |
| --- | --- | --- | --- | --- |
| Conventions: half-braiding and differential | Identity functor on Vec, scalar cochains | Unit half-braiding 1; δ⁰ = 1−1; δ¹ = 1−1+1 | 1; 0; 1 | Added page locators agree |
| 1.3 unitary subcategory | A = [[1,1],[0,−1]]; B = diag(1,−1) | A² = I; AA* = [[2,−1],[−1,1]] | B² = BB* = I | A excluded, B included |
| 1.6 comparison | Vec with a = 3can; S₃ dimension-two simple with a = can, 3can; V = 0 | (1/3)·3 = 1; 2·1 = 2; (2/3)·3 = 2; zero composite 0 | Supplier gives 1; 1/2; 1/2; identity on zero is 0 | Local repair correct; R01 |
| 1.7 averaging | FDRep ℂ S₃, F = id, Z = unit | Corrected comparison: 1 + 1 + 2·2 = 6 | Squared-norm sum 1² + 1² + 2² = 6; supplier normalization gives 3 | R01 |
| 2.5 nonsemisimple control | Sweedler algebra H₄ over ℂ | GHS Remark 5.2: (1+1)·1/2 = 1 | dim H²_DY = 1, versus projective vanishing 0 | Nonprojective control agrees |
| 3.2 transport | C₃ inversion; γ(1,2) = 1 | δ(σ*γ)(2,2,2) = 0−0+1−0 = 1 | δγ(1,1,1) = 1; δγ(2,2,2) = −1 | Transport and sign agree |
| 5.4 R-dictionary | C₂, dual numbers, R = 1+bε; characteristics 0 and 2 | R² = 1+2bε; δ¹β = 2b | δ⁰f = f−f = 0; b = 0 in characteristic 0, arbitrary in characteristic 2 | Added Check agrees |
| 6.3 extraction | Regular C₂ over ℂ; forgetful S₃ action; zero ring | Rescaled right basis 2 gives M = 1/2; Hom dimensions 1,1,2; zero-ring rank 0 | (1/2)·2 = 1; multiplicities 1,1,2; prescribed unit multiplicity 1 | Three discriminating Checks |
| 6.5 action adjunction | Regular C₃; m = 0, n = 2 | dim Hom(g⁻¹⊙0,2) = 1 | dim Hom(0,g⊙2) = 1; replacing g⁻¹ by g gives 0 | Dual orientation agrees |
| 6.6 module dictionary | Regular C₂, γ(g,0) = 1 | M′ = 1−ε, θ = −1 | δγ(g,g,0) = 1−0+0 = 1 | θ = −δγ |
| 6.6 formal rigidity control | One-label C₂ module, M(g,g) = 1+cε | All eight cocycle residuals 0; gauge gives c′ = c−2d | d = c/2 kills c if char ≠ 2; c′ = c if char = 2 | Added Check agrees |
| 6.8 subgroup classification | Vec(C₃) over ℂ, H = 1 or C₃ | Ranks [C₃:H] = 3,1; H²(H,ℂˣ) = 0 | Regular module and Vec have 3,1 simples | Added page locator agrees |
| 8.3 braided finiteness | C₂ over ℂ | F = 1: R = ±1; F = −1: R = ±i | 2 + 2 = 4 braided classes | Deduction agrees |
| 8.4 finite_module_representatives | Vec, ranks 0,1,2; standard action | Categories 0, Vec, Vec²; (1+1)⊙k has dimension 2 | One class per rank; dim(k⊕k) = 2 | Added additive binders agree |
| 8.5 finite_indecomposable_module_representatives | Vecʳ, r = 0,1,2; all finite ranks | Simple counts 0,1,2; cross-component Hom dimension in Vec² is 0 | Only rank 1 satisfies nonempty connectedness; all ranks give infinitely many classes | Added Check and binders agree |

Untouched statement rows stand as in the previous review of 9844900.

- Sources: 14 locators checked in 3 texts, including changed seeded targets 5.4, 6.3, 6.5, 8.3 and 8.4; GHS lines 493, 526, 707, 1682; EGNO lines 6689, 6889, 13948, 14073; ENO2005 lines 396, 415, 423, 437, 1967.
- Library: 8 declarations opened in 6 pinned files, including Mathlib/CategoryTheory/Linear/LinearFunctor.lean:36, Preadditive/AdditiveFunctor.lean:41 and Monoidal/Action/Basic.lean:335; the near-matches concern modules, not module-category finiteness.
- Suppliers: 4 resolved; PivotalSpherical §§3.3, 6.1–6.2, 6.9, 11.1–11.2 and PresentationsOfMonoidalCategories Layers 0–6 at their open heads; SchemeAndStackFoundations §4.2 and CategoricalOperatorAlgebras CA6 on main. One convention conflict: R01.
- Gate: supplied gate passed; rerun with the candidate order and targeted build passed every check. Default-order “NOT IN ORDER: OcneanuRigidity (insert it after its last supplier)” is the brief’s exempt placement condition.
- Dependency output: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; no UPWARD or CYCLE. Zero changes outside this folder; worktree clean.
- Lean: direct elaboration passed with exactly 5 sorry warnings; scratch #check of all 5 declarations retained every binder, including the 4 added Additive hypotheses. Six one-tactic probes on the 2 changed theorems failed as expected.
- Headlines: 4.1, 5.5–5.7, 6.6, 8.1–8.6 and 9.1; five finiteness signatures remain, with the other carriers identified in the docstring.
- PR text: title and description agree with the addition, five signatures and suppliers; prose explicitly names revision #2311 before this PR. No removed sections or declarations.

Overlap check: read PresentationsOfMonoidalCategories, PivotalSpherical (main and open revision), CategoricalOperatorAlgebras and TemperleyLieb. F/R presentations, models and gauge belong to PresentationsOfMonoidalCategories; squared norms and absolute induction to PivotalSpherical; unitary relative centre to CategoricalOperatorAlgebras. This roadmap owns the general relative centre, its cohomology and module-symbol extension; R01 records the conflicting supplier normalization.

Source independence: changed passages only; 14 passages compared with 3 sources, no copied expression or reused material found; largest share GHS, 18 of 49 body source citations. No layer was added, removed or reordered; the previous independent-arrangement result stands.

## Not verifiable

- BarrBeck §§1, 4 remains settled as uncertified; no changed passage requires reopening it.

## Source issues

- none

## For the human reviewers

- none
