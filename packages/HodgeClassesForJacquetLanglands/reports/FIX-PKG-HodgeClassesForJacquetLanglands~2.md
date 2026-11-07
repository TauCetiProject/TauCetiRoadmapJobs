# FIX-PKG-HodgeClassesForJacquetLanglands~2

Repair round for the review `REV-PKG-HodgeClassesForJacquetLanglands` (one P2, four P3). Every
finding was verified against the supplier roadmaps at their open heads (`roadmaps show`), the
pinned Tau Ceti (`2fd255d9`) and Mathlib (`1b1ccf4b`), and the cached text of IP23. All five are
right; four were applied, two of them in a corrected form. `Suggested.lean` is unchanged: no
finding touches a Lean statement, and the two Tau Ceti names at issue occur only in README prose.

## REV-PKG-HodgeClassesForJacquetLanglands/F01 (P2) — applied differently

**Verified.** PadicHodgeTheory at its head, §7.2 "Lisse integral coefficients and proper
comparison", defines de Rham lisse sheaves and states, for a de Rham lisse `L` on proper smooth
`X` over a complete discretely valued `k/ℚ_p` with perfect residue field, the Galois-equivariant
strictly filtered comparison `H^i(X_k̄, L) ⊗ B_dR ≃ H^i_dR(X, E) ⊗_k B_dR`; its §8.1 records the
algebraic–analytic étale comparison by which an algebraic proper smooth `X` enters §7.2. That is
the gap's first clause. Its §3.3 states exactness of `D_dR` on de Rham objects and finite induction,
not closure under subquotients; the one-point rigidity occurs nowhere. Those two clauses stay.

**Changed.** README "Exact supplier contracts": the PadicHodgeTheory paragraph now lists §7.2 (de
Rham lisse sheaves and the filtered comparison) and the algebraic–analytic clause of §8.1; the gap
sentence keeps only the one-point rigidity (stated with the stalk at a classical point over a
finite extension `K′`, de Rham for `G_{K′}`, concluding "de Rham in the sense of §7.2") and the
subquotient closure. §0.2 proof route: the gap's first clause → PadicHodgeTheory §7.2 through
§8.1; §0.2 `*Needs:*` adds §7.2. `design/plan.json` gap `derham-local-system-cohomology`: `needs`
restated to the two remaining clauses, `section` `§8.1` → `§§3.3, 7.2`.

**Differently.** (a) §9.4's `*Needs:*` line is unchanged: §9.4 is a statement about a Galois
representation `W` assumed de Rham and uses only the subquotient clause of the gap, never the
cohomology of a local system, so citing §7.2 there would be a spurious need. (b) The rewritten §0.2
route exposed that the rigidity clause needs a geometrically connected variety while `Sh_K` has
`π₀(Sh_K ⊗_E ℚ̄) ≃ G(ℚ)⁺\G(𝔸_f)/K`: the route now applies rigidity and §7.2 on each geometric
component (geometrically connected over a finite extension `E′` of `E`, containing the special point
`[h, g]`) and closes with finite induction (PadicHodgeTheory §3.3); this boundary case is a new
§0.2 Check.

## REV-PKG-HodgeClassesForJacquetLanglands/F02 (P3) — applied differently

**Verified at the pin.** Neither `exteriorPower.map_top_eq_det_smul` nor `exteriorPower.topEquiv`
occurs under `TauCeti/`. The determinant action is
`LinearMap.map_exteriorPower_finrank_eq_det_smul` (`TauCeti/LinearAlgebra/ExteriorPower/Basis.lean`
line 157, `[Module.Free R M]`, `map (finrank R M) f = det f • id`). The basis trivialization the
README named exists in the same file: `Module.Basis.exteriorPowerTopEquiv` (line 174,
`⋀[R]^n M ≃ₗ[R] R` for a basis indexed by `Fin n`, with `exteriorPowerTopEquiv_apply_ιMulti : … = b.det v`).
Mathlib's `Module.Basis.topVector` and `exteriorPower.isUnit_apply_topVector`
(`Mathlib/LinearAlgebra/ExteriorPower/WedgePairing.lean` lines 78, 92) elaborate too.

**Changed.** Every `exteriorPower.map_top_eq_det_smul` (Scope line, Tau Ceti contract, §1.2 and
§1.7 `*Needs:*`, Layer 1 Dependencies) → `LinearMap.map_exteriorPower_finrank_eq_det_smul`; every
`exteriorPower.topEquiv` (Tau Ceti contract, §1.1 `*Needs:*`, Layer 1 Dependencies) →
`Module.Basis.exteriorPowerTopEquiv`, file corrected to `Basis.lean`. **Differently:** the reviewer
proposed replacing the trivialization by Mathlib's `topVector`; Tau Ceti's `exteriorPowerTopEquiv`
is the equivalence the README describes, so it stays in the Tau Ceti contract, and Mathlib's
`Module.Basis.topVector` with `exteriorPower.isUnit_apply_topVector` is added to the Mathlib
contract and to §1.1's `*Needs:*` (it gives directly that `c = d_U(b₁ ∧ … ∧ b₄)` is a unit).
`design/plan.json` still records the old name in its `ref` fields (lines 55, 428, 713, 4340); only
its `gaps` list may be edited here.

## REV-PKG-HodgeClassesForJacquetLanglands/F03 (P3) — applied

**Verified.** GL2AutomorphicRepresentationsAndTransfer §R17.3.1 at its head writes the
correspondence `JL_D` with prose bullets "Local components", "Central character", "Inverse",
"Twist", "Split algebra"; `globalJL_local`, `globalJL_central`, `globalJL_inverse` occur nowhere in
that roadmap. **Changed.** Contract line: "§R17.3.1 global Jacquet–Langlands with `globalJL_local`,
`globalJL_central`, `globalJL_inverse`" → "§R17.3.1 global Jacquet–Langlands `JL_D` with its
local-components, central-character and inverse clauses". The three `*Needs:*` lines citing
§R17.3.1 (§§6.1, 7.10, 8.1 and the Layer 6 Dependencies) cite the section only and are unchanged.

## REV-PKG-HodgeClassesForJacquetLanglands/F04 (P3) — applied

**Verified.** SelmerIwasawaCohomology §4.9 at its head defines `H¹_f(K,V)` in prose, names no
declaration, and has `H¹_f(F_v, ℚ_p) = H¹_ur(F_v, ℚ_p)` as its first Check. **Changed.** "§4.9
`blochKatoCondition` with `H¹_f(K, ℚ_p) = H¹_ur(K, ℚ_p)`" → "§4.9 the Bloch–Kato local condition
`H¹_f`, with `H¹_f(K, ℚ_p) = H¹_ur(K, ℚ_p)` for the trivial representation". No other occurrence.

## REV-PKG-HodgeClassesForJacquetLanglands/F05 (P3) — applied

**Verified.** AutomorphicLFunctionsAndLocalFactors at its head: Layer AL.3 is the whole
Rankin–Selberg layer; §AL.3.6.3 "Rankin–Selberg nonvanishing on the boundary" states the no-zeros
claim on `Re(s) ≥ 1` with simple poles only at `1 + it` for `π₂ ≅ π₁^∨ ⊗ |det|^{−it}`.
**Changed.** "AL.3" → "§AL.3.6.3" at the contract and in the `*Needs:*` or Dependencies lines of
§6.1, Layer 6, §8.1 and Layer 8 (five occurrences, none left). The pole case stays excluded as the
README already says (`χ_v ≠ 1` at a ramified place in §6.1; cuspidality in §8.1).

## Checks

- `lake env lean` on `packages/HodgeClassesForJacquetLanglands/Suggested.lean` from the content
  checkout: exactly three warnings `declaration uses 'sorry'` (lines 70, 81, 95), no other message,
  exit 0. The file is unchanged.
- Scratch `#check @name` for the four declarations (`IsExteriorStar`, `existsUnique_isExteriorStar`,
  `IsExteriorStar.comp_self`, `IsExteriorStar.map_similitude`): elaborated types equal those
  recorded before this round and the README's §§1.3, 1.4, 1.7 (every binder `Field E`,
  `FiniteDimensional E U`, `σ`, `H`, `vol`, `hkl`, `hH`, `hg` is in each signature). Nothing changed.
- Scratch `#check` of the replacement names: `Module.Basis.topVector` and
  `exteriorPower.isUnit_apply_topVector` with `import Mathlib`;
  `LinearMap.map_exteriorPower_finrank_eq_det_smul`, `Module.Basis.exteriorPowerTopEquiv` and
  `Module.Basis.exteriorPowerTopEquiv_apply_ιMulti` after `lake build
  TauCeti.LinearAlgebra.ExteriorPower.Basis` (built successfully) with that import. All elaborate
  with the types quoted above.
- Depcheck (`gate --depcheck … --movable`): `depcheck: 242 roadmaps, 2498 edges, 0 problem(s)`. No
  UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: cross-roadmap citations found nowhere: none; Lean names found
  nowhere: none (the eight leads of the worker's `citations.md` were names of ShimuraVarieties and
  of this roadmap's own `Suggested.lean`, plus the one repaired under F02).
- Leftover grep for the five old strings (`map_top_eq_det_smul`, `exteriorPower.topEquiv`,
  `globalJL_`, `blochKatoCondition`, bare `AL.3`): no hit in the README.
- `design/plan.json` still parses as JSON after the `gaps` edit.
- No gate failures were listed in the brief.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Gap clause 1 (rigidity): stalk at one classical point de Rham ⇒ `𝕃` de Rham lisse | constant sheaf `ℚ_p` on `X`; `X = Spec K ⊔ Spec K` with `𝕃 = ℚ_p ⊔ ℚ_p(χ^a)`, `a ∉ ℤ` | stalk `ℚ_p`: `dim D_dR = 1 = rank`, de Rham (PadicHodgeTheory §7.2 Check); disconnected case: de Rham at the first point, not at the second (nonintegral Sen weight) | holds; geometric connectedness is needed and is in the statement | §0.2 route applied per component; Check added |
| Gap clause 2 (subquotients of de Rham are de Rham), both directions | `ℚ_p ⊂ W` with `W` the `log χ` extension of `ℚ_p` by `ℚ_p` | sub `ℚ_p` de Rham; `W` has non-semisimple Sen operator, not Hodge–Tate, not de Rham | converse fails, so §3.3's exactness on de Rham objects does not give the clause; it stays in the gap | none |
| Supplier contract §7.2: `H^i(X_k̄, L)` de Rham with `D_dR = H^i_dR(X, E)` | `L = ℚ_p`, `X = P¹`, `i = 2` | `H²(P¹) = ℚ_p(−1)`, `H²_dR` of filtration jump 1 (PadicHodgeTheory §7.2 Checks) | agrees with §8.1's constant case | none |
| §0.2 route: components and special points | `K` with `G(ℚ)⁺\G(𝔸_f)/K` of size 2 | special `h ∈ X⁺`; `[h, 1]` and `[h, g]` lie in the two components | every component has a special point | Check added |
| §0.2 route: finite induction preserves de Rham | `E′/E` of degree 2 at a place `w ∣ v` | PadicHodgeTheory §3.3: induction from `F′` carries de Rham periods to restriction of scalars of `D_dR,F′` | de Rham; dimension `2·dim` on both sides | none |
| F02: `LinearMap.map_exteriorPower_finrank_eq_det_smul` gives §1.2's `⋀⁴g = det g` | `g = α·id` on `U` of dimension `4`, `g = −1` | `map 4 g = α⁴ • id`; `(−1)⁴ = 1`, consistent with §1.7's Check `⋀²(−1) = id` | holds over a field (`Module.Free` automatic) | none |
| F02: `Module.Basis.exteriorPowerTopEquiv` and `topVector` in §1.1's `c = d_U(b₁∧…∧b₄)` | `b` the standard basis, `d_U = −exteriorPowerTopEquiv` | `exteriorPowerTopEquiv (ιMulti b) = det 1 = 1`, so `c = −1`, a unit; `isUnit_apply_topVector` for `vol = d_U` | agrees with the §1.1 Check `vol = 1` for `diag(1,1,1,1)` | none |
| F05: §AL.3.6.3 at `GL₁ × GL₁` in §6.1 | `π₁ = χ`, `π₂ = 1` with `χ_v ≠ 1` at a ramified `v` | pole only if `1 ≅ χ⁻¹ ⊗ |·|^{−it}`, impossible for `χ` ramified | nonvanishing on `Re(s) ≥ 1` holds; pole case excluded | none |

## For the maintainer

- No Lean name of this roadmap changed; `Suggested.lean` is byte-identical to the reviewed head.
- PadicHodgeTheory now receives a smaller gap (`derham-local-system-cohomology`): one-point
  rigidity for lisse `ℚ_p`-sheaves and closure of de Rham representations under subquotients,
  attributed to its §§3.3 and 7.2.
- `design/plan.json` outside the `gaps` list still names `tauceti:exteriorPower.map_top_eq_det_smul`
  in `ref` fields (lines 55, 428, 713) and in a baseline note (line 4340); the brief forbids editing
  those fields. The README is the authority and now carries the pinned names.
- Ownership against open pull requests was not re-checked this round: the findings add no new
  construction, only citations of existing supplier sections.
