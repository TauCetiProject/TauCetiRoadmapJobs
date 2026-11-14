# Review of PivotalSpherical (pull request #2311 at edbc9ff)

**Verdict:** accepted

## Previous findings

- R01 — repaired: `TauCetiRoadmap/PivotalSpherical/README.md:288`: “named `normGlobalDim C a` ([ENO] Definition 2.2, preprint p. 4; [EGNO] Definition 7.21.3, p. 179)”.
- R02 — repaired: `TauCetiRoadmap/PivotalSpherical/README.md:412`: “by `TauCeti.pivotalIsoApp_eq_drinfeldIso` and `FDRep.drinfeldIso_hom_hom_hom_hom`, the rotation … is the swap”; the averaging projection and all three inputs remain named.
- R03 — repaired: `TauCetiRoadmap/PivotalSpherical/README.md:448`: “it is [DGNO] Proposition 2.3(iii), preprint p. 7; for every `G` and `R` it is a deduction from the three facts just listed.”
- R04 — repaired: `TauCetiRoadmap/PivotalSpherical/README.md:568`: “`CategoryTheory.Center.instFiniteDimensionalHom` gives the finite-dimensional Hom spaces”; `TauCeti.endAlgEquivOfSimple` supplies scalar endomorphisms, and both remain in *Needs:*.
- R05 — repaired: `TauCetiRoadmap/PivotalSpherical/README.md:180`: *Needs:* retains `TauCeti.leftTrace_smul`, `TauCeti.rightTrace_smul`, `TauCeti.leftDim_eq_leftTrace`, `TauCeti.rightDim_eq_rightTrace`, and `TauCeti.leftTrace_tensorHom_eq_comp`.
- R06 — repaired: `TauCetiRoadmap/PivotalSpherical/README.md:387`: “which forces `e = 1`; so monoidality alone does not determine the Radford isomorphism.”

## Verified sound

| Statement | Instances | One side | Other side | Result | Change |
|---|---|---|---|---|---|
| 11.1 comparison and choice independence | Two-dimensional simple of `Repℂ(S₃)`; `a = j`, then `a = 3j` | Scalar × mate: `2·1 = 2`; `(2/3)·3 = 2` | Inverse-trace scalar × mate: `(1/2)·1 = 1/2`; `(1/6)·3 = 1/2` | Both are choice-independent; only the new normalization gives the required averaging | Corrected scalar |
| 11.1 pointed Check | `Vec(C₃)`, simple `δ_g`, `a = 3j`; also `a = ζ₃j` | Dual-inverse traces `1/3`, `ζ₃⁻¹`; comparison factors `(1/3)·3 = 1`, `ζ₃⁻¹·ζ₃ = 1` | Inverse traces `1/3`, `ζ₃⁻¹`; same comparison factors `1`, `1` | Pointed examples cannot distinguish the two scalars | Added negative control |
| 11.1–11.2 averaging | `Repℂ(S₃)`, central unit; simples of dimensions `1,1,2` | New composite `1+1+2·2 = 6`; old composite `1+1+(1/2)·2 = 3` | Squared-norm sum `1²+1²+2² = 6` | New coefficient gives `6 = 6`; old gives `3 ≠ 6` | Corrected normalization |
| 11.1–11.2 zero object | `X = 0`, `Z = 0` | Each summand `S⊗0⊗S* = 0`; composite `0` | `dim(C)·id₀ = 0` | Both comparison maps compose to `id₀ = 0` | None |
| 11.3–11.4 downstream centre | `Repℂ(S₃)` | Centre simple dimensions `1,1,2,3,3,2,2,2`; squared sum `36` | `dim(C)² = (1+1+4)² = 36`; eight simple classes | Finite semisimple centre and dimension agree | None |

Other rows stand as in the previous review, of `5c2c18e`.

- Source locators checked: 7 across 3 sources: eno line 157 (Proposition 2.1, p. 4), line 179 (Definition 2.2, p. 4), line 937 (Proposition 5.4, p. 21), line 273 (Theorem 2.15, p. 6); egno line 945 (Proposition 1.8.4, p. 9), line 13999 (Proposition 9.2.2, p. 278); hpt line 1692 (Proposition A.4, p. 45).
- Pinned declarations opened: Mathlib `Mathlib/CategoryTheory/Monoidal/Rigid/Basic.lean:288,296,300`; Tau Ceti `TauCeti/CategoryTheory/Monoidal/Center/Abelian.lean:62`, `TauCeti/CategoryTheory/Monoidal/Center/Rigid.lean:382`. The left mate runs from `S*` to `*S` through the mixed-dual identification.
- Cross-roadmap check: 0 added suppliers; OcneanuRigidity §§1.4–1.7 uses the same scalar and direction, and its supplier contract resolves to PivotalSpherical §§6.1, 6.2, 11.1, 11.2.
- Gate at `edbc9ff`: every check `0`, `OK`; worker's targeted-build check also `0`. No changes outside the folder; worktree clean.
- Dependency-check output: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; no UPWARD or CYCLE line.
- Direct elaboration: 19 `sorry` warnings only. Targeted build succeeds; Lake additionally emits its Mathlib module-system advisory for the untouched import form.
- Signature probe: all 23 actual declarations checked with `#check @name`; no errors, no changed signatures or lost required hypotheses in the affected definitions and centre statements. No Lean statement changed; the unstatable induction and averaging headlines remain named in the module docstring.
- Pull-request title and description checked against the head and base diff: 0 contradictions or omitted structural changes; no heading, declaration or supplier changes in this increment.

Overlap check: read PresentationsOfMonoidalCategories, OcneanuRigidity, CategoricalOperatorAlgebras, QuantumGroups, TemperleyLieb; PivotalSpherical owns the absolute-centre induction and averaging and general fusion foundations; OcneanuRigidity owns their non-unitary relative-centre extensions; CategoricalOperatorAlgebras owns unitary centre refinements. PresentationsOfMonoidalCategories owns matrix presentations, QuantumGroups quantum-group examples, and TemperleyLieb diagram categories; no duplicate owner of the changed construction.

Source independence: changed passages only; 3 passages compared with 2 sources (eno, egno), no copied expression beyond forced formulas and standard terminology; largest share egno, 16 of 32 bracketed source citations. Contents not compared again: no layer was added, removed or reordered.

## Not verifiable

- `freyd-yetter`: settled as uncertified; no changed passage cites it.

## Source issues

- none

## For the human reviewers

- none
