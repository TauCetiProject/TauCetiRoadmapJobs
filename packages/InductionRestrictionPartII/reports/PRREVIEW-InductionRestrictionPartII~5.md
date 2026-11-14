# Review of InductionRestrictionPartII (pull request #1154 at a3cedf1)

**Verdict:** accepted

Incremental re-review of the 127 lines changed since `f4c995b`. No finding of this report.

## Deferred findings

- D01 — stands

## Previous findings

- R01 — not repaired: deferred (D01)
- R02 — repaired: the summary block now reads “Central-extension exactness uses a direct low-degree resolution argument; the power law uses an explicit bar-complex boundary. Neither requires finiteness”; no claim of a missing spectral-sequence API remains.
- R03 — repaired: “This pull request adds the new roadmap `TauCetiRoadmap/InductionRestrictionPartII`, with five mathematical layers, a README, metadata and 17 Lean declarations, including eight headline theorems.”
- R04 — repaired: `Suggested.lean:6` title ends “: target signatures”; `/-! ## Layer RS.0 …`, `RS.4 …`, `RS.6 …` at lines 40, 67, 100, titles equal to README lines 320, 778, 1344; each definition precedes its first use.

## Verified sound

The diff changes no statement: it moves five theorems under layer headings and adds one sentence to `## Downstream consumers`. Rows are for the moved statements and the targets the new sentence cites, on instances not used in the previous review.

| Statement | Instances | Computed left side / object | Computed right side / prediction | Result | Change |
| --- | --- | --- | --- | --- | --- |
| RS.4.18 `parity_degree_generatingSeries` (cited by the new sentence; moved) | N=2, N₀=1, C={(1,0)}; degrees 3, 5 | vectors (1,2); (1,4),(3,2): counts 1, 2 | translated set {(0,1)}, weight X; X²·X/(1−X²)²: coefficients 1, 2 | agrees | — |
| RS.4.18, shift and empty dimension | N=1, N₀=2, C={1}; N=0, C={∅} | m odd ≥2: 3,5,…; N=0: count 1 at n=0, else 0 | X²·X/(1−X²)=X³+X⁵+…; series 1 | agrees | — |
| RS.4.10 `two_adic_survival` (moved) | A=ℤ/4 additive; b=1; q=3,5,9 | 2h=1: none; 4h=2: none; 8h=4·1=0: solvable | B₀=B₁=0, B₂=B; threshold 2; v₂(q−1)=1,2,3; need ≥3 | agrees | — |
| RS.4.10, zero class | A=ℤ/4; b=2; q=3,5 | 2h=2: h=1; 4h=4=0: solvable | threshold 0; v₂(q−1)≥1 always | agrees | — |
| RS.4.4–RS.4.5 (cited by the new sentence) | A=ℤ/4, r=q−1=4; b=1,2 exponent r/2=2 | 4h=2: 0 solutions; 4h=0: 4 solutions | 2∉4A; torsion A[4] has 4 elements | agrees | — |
| RS.0.2 `integralHomology_finite` (moved) | G=C₃; degrees 1,2,3 | C₃, 0, C₃ | all finite; degree 0 (ℤ) excluded by `n + 1` | agrees | — |
| RS.0.3 `multiplier_hallPart` (moved) | G=S₃, H=C₃; G=C₃²×C₂, H=C₃² | M(H)=0, range 0; M(H)=C₃, trivial action, range C₃ | 3-primary part of M(G): 0; C₃ (Künneth: C₃⊕0⊕0) | agrees | — |
| RS.6.1 `odd_index_two_reduction` (moved) | G=S₃; G=C₃²×C₂ | M(G)=0; M(G)=C₃ | coinvariants 0, C₃; orders 1, 3 odd | agrees | — |
| Layer headings of `Suggested.lean` | lines 40, 67, 100 against README 320, 778, 1344 | RS.0: 1 abbrev, 2 theorems; RS.4: 2 defs, 2 theorems; RS.6: 6 defs, 4 theorems | 17 declarations, 8 sorried theorems | agrees with the description's counts | — |

The rows for the untouched statements stand as in the previous review, of `f4c995b`.

- Source locators: 1 rechecked for the changed text (RS.4.18's derivation from Proposition 4.1 and equation (6): wood2019 line 777 and line 796); the other 14 sampled targets lie outside the changed passages and stand as previously checked.
- Library declarations opened at the pins: `TauCeti/RepresentationTheory/Homological/GroupHomology/Transfer/Basic.lean:184` (`groupHomology.natCard_nsmul_eq_zero`, named in the description); pins Mathlib `1b1ccf4`, Tau Ceti `2fd255d` equal those the description states.
- Cross-roadmap citations resolved: ArithmeticStatisticsPartVIII §5.21 exists at its open head (“5.21 Bad types and whole component profiles”, with the stable parity multidegree count and surviving-parity sum); IG.3.4, IG.3.5, IG.5.6 exist at the InverseGaloisAndArithmeticFundamentalGroups head; FiniteGroupInvariants cites RS.0.1 here, which exists. Overlap tool: no dropped id, no second copy, no other pull request changing this folder.
- Pull request text against the head: five layers (RS.0, RS.1, RS.3, RS.4, RS.6), 17 declarations, eight headline theorems, grouping “under RS.0, RS.4 and RS.6”, new roadmap, supplier #850, consumers Part V and Part VIII: all as the head shows; no sentence contradicted.
- Gate: every scanner zero, OK. Dependency check: `depcheck: 244 roadmaps, 2199 edges, 0 problem(s)`; no UPWARD or CYCLE line. Files changed outside the folder: 0.
- Lean: direct elaboration succeeds with eight `sorry` warnings only (lines 47, 53, 82, 90, 104, 168, 186, 196); single `import Mathlib` plus two Tau Ceti modules; no `set_option`; the 17 elaborated signatures show no lost binder; statements are textually those probed at `f4c995b`, so the one-tactic probes stand.

Overlap check: read InverseGaloisAndArithmeticFundamentalGroups, ArithmeticStatisticsPartVIII, ArithmeticStatisticsPartIV, ArithmeticStatisticsPartV and FiniteGroupExtensionSplitting; IG owns covers, commuting-pair classes and the marked action; the involution-fiber reduction and parity series shared with Part VIII are owned here and named as consumed by Part VIII §5.21 (the import on Part VIII's side is D01); nothing else shared.

Source independence: changed passages only; 3 passages compared (the new consumer sentence and the two rewritten docstring lines) with 2 sources (wood2019, wood2021), none shared; largest share wood2019, 30 of 42 primary source blocks; no layer added, removed or reordered, so the arrangement stands as compared at `f4c995b`: independent.

## Not verifiable

- none

## Source issues

- none

## For the human reviewers

- **Scope.** `TauCetiRoadmap/InductionRestrictionPartII/README.md` References cite withdrawn evw2012 for RS.1.4 and RS.6.1; published wood2021 and lwzb2024 are cited alongside it.
- **Licence.** `TauCetiRoadmap/InductionRestrictionPartII/README.md` References cite loeh2019, unpublished lecture notes hosted on the author's institutional site; no passage, table or figure of it is reproduced.
