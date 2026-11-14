# Review of OcneanuRigidity (pull request #2316 at 8b14477)

**Verdict:** accepted

## Previous findings

- R01 — repaired: TauCetiRoadmap/OcneanuRigidity/README.md:887–906 quotients pairs by simultaneous conjugation, identifies the normalizer orbits, and computes two rank-two classes for the reflection action on C₃².

## Verified sound

| Statement | Instances tried | Computed on one side | Computed on the other | Result / change |
| --- | --- | --- | --- | --- |
| §6.8 cocycles and conjugation, lines 901–904 | H=C₃²; f((a,b),(c,d))=ad modulo 3 | All 729 values of δf are 0; commutator exponents for f,−f are 1,2 | f(tx,ty)=−f(x,y) on all 81 pairs; commutators ζ≠ζ⁻¹ | Distinct classes exchanged by t |
| §6.8 classification, lines 887–891 and 905–906 | G=C₃²⋊C₂; H=C₃² | H²(H,ℂˣ)=Hom(∧²H,ℂˣ)=μ₃, of size 3; normalizer acts by j↦−j | Orbits {0},{1,2}; two module classes, each with 18/9=2 simple labels | R01 repaired |
| §6.8 classification: boundary cases | G=1; G=C₂ over ℂ | Trivial group: one subgroup, H²=0; C₂: two subgroups, each with H²=0 | One rank-one class; respectively two classes of ranks 2 and 1 | Quotient and label counts agree |

Untouched statement rows, including the seeded sample and headline theorems, stand as in the previous review of 6027074.

- Sources: 2 locators checked, EGNO Example 7.4.10 and Exercise 7.4.11, printed p. 137, EGNO lines 6889–6920; 0 seeded targets intersect the diff.
- Scope: 18 changed lines; 1 prior finding repaired; 0 changed Lean declarations, supplier contracts, layer headings or files outside the folder.
- Lean: direct elaboration and scratch `#check @name` for all 5 declarations pass with exactly 5 sorry warnings each; 0 lost binders or README/signature discrepancies.
- Gate: supplied gate passes; independently rerun with the supplied candidate merge order and targeted build, all checks report 0 and `OK`.
- Dependency output: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; 0 UPWARD/CYCLE lines. Default-order `depcheck: NOT IN ORDER: OcneanuRigidity (insert it after its last supplier)` is the permitted insertion case, not a supply defect.
- Ownership: object searches at the pins and across main/open roadmaps find 0 competing owners of the repaired pointed-module classification; 0 new library declarations are required by the prose repair.
- PR text: 0 contradictions or material omissions; the addition, 5 native finiteness signatures and dependence on PivotalSpherical revision #2311 remain explicit.

Overlap check: read PresentationsOfMonoidalCategories, PivotalSpherical (main and #2311), CategoricalOperatorAlgebras and TemperleyLieb; F/R presentations belong to PresentationsOfMonoidalCategories, fusion foundations and squared norms to PivotalSpherical, unitary relative centres to CategoricalOperatorAlgebras, and diagram examples to TemperleyLieb. The repaired module-category classification belongs to OcneanuRigidity §6.8.

Source independence: changed passages only; 2 mathematical passages compared with 1 source, EGNO, and its reference entry checked; no copied expression or reused material. Largest share GHS, 18 of 49 body citation occurrences. No layer was added, removed or reordered; the contents comparison stands as in the previous review of 6027074.

## Not verifiable

- BarrBeck §§1, 4 remains settled as uncertified at the publisher DOI; untouched by this change and not requested again.

## Source issues

- **Misprint** in EGNO at Exercise 7.4.11, printed p. 137 (EGNO lines 6916–6919): the source says conjugating L to L′ transports ψ by evaluating ψ on forward conjugates, with arguments in L; it should be ψᵍ(x,y)=ψ(g⁻¹xg,g⁻¹yg) for x,y∈L′ when L′=gLg⁻¹; affects a stated result.
- **Error** in GHS at Example 2.11, printed p. 10 (GHS line 364): the source says relative projectivity equals ordinary bimodule projectivity over arbitrary commutative k; it should be restricted by stronger base assumptions: for A=k=ℤ, every module is relatively projective but ℤ/2 is not projective; affects a stated result.

## For the human reviewers

- none
