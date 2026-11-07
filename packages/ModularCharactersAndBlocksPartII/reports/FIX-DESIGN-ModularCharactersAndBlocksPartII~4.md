# FIX-DESIGN-ModularCharactersAndBlocksPartII~4

Findings of `REV-DESIGN-ModularCharactersAndBlocksPartII~3` (two P3 findings, no P1 or P2).

## REV-DESIGN-ModularCharactersAndBlocksPartII~3/F01 (P3) — applied differently

The finding is right: the only characteristic-`p` step of §7.2 (fifth statement, modular half)
was supported by `TauCeti.clifford_restrict_character` and InductionRestriction Layers 2 and 5, all
of which assume `IsUnit (Nat.card G : k)`, false in the residue field `k`.

Change (§7.2 route): "Frobenius reciprocity and the semisimplicity … (InductionRestriction Layer 5)"
→ the modular step names Tau Ceti `TauCeti.Representation.isSemisimpleRepresentation_comp_subtype`
(any field) and Mathlib `Rep.indResAdjunction`; `TauCeti.clifford_restrict_character` is kept for
the first statement, over `ℂ`. Both names added to the `*Needs:*`, plan 7.2, the library list, the
Mathlib and Tau Ceti contracts, and the Layer 7 Dependencies. A new Check (`S₄ ⊵ A₄`, `p = 2`) was
added to the README and as a plan test.

Why differently: the review proposed `FDRep.clifford_restrict_iso`. That theorem assumes
`[IsAlgClosed k]` (`TauCeti/RepresentationTheory/Induction/Clifford/Equivalence.lean` line 227).
The residue field of the base's splitting system is the residue field of a finite extension of
`ℚ_p`: base §1.1 constructs it that way, and its Check gives `𝔽₄` for `e = 3`, `p = 2`. Such a field
is not algebraically closed. The pin has the statement in the generality needed:
`TauCeti.Representation.isSemisimpleRepresentation_comp_subtype`
(`Induction/Clifford/Basic.lean` line 327). Its context is `[Field k] [Group G] {N} [N.Normal]`, a
finite-dimensional irreducible `ρ`, and nothing else (section variables at line 249). Its docstring
says it needs no invertibility of `|N|`. The route needs only semisimplicity: `V` among the
composition factors of `Res_N W` becomes a submodule, then `Hom_G(Ind V, W) ≅ Hom_N(V, Res W) ≠ 0`.
`Rep.indResAdjunction` (`Mathlib/RepresentationTheory/Induced.lean` line 155, namespace `Rep`,
`[CommRing k]`) gives the adjunction; its direction, `indFunctor ⊣ resFunctor`, is the one used.
`FDRep.clifford_restrict_iso` is therefore not cited.

A small correction to the review's witness: `λ ∈ IBr(C₃)` is not defined over `𝔽₂`. The instance
holds over `k = 𝔽₄`, the splitting residue field for `S₃` at `2`.

Pattern search: every other Clifford or reciprocity use (§7.4 `FDRep.cliffordCorrespondence`,
§8.3, §8.4, the gap contract) concerns ordinary characters over `ℂ`, where `|G|` is a unit and `ℂ`
is algebraically closed. The modular correspondence of §7.4 goes through the matrix-algebra
argument, not through Clifford. No other occurrence needed repair. The InductionRestriction contract
now says that Layers 2 and 5 are consumed for ordinary characters only.

## REV-DESIGN-ModularCharactersAndBlocksPartII~3/F02 (P3) — applied

Verified. §1.2's statement uses only `FixedPoints.subgroup` and conjugacy classes, never §1.1's
`Irr_S`, so the README is the correct side. §4.1's README names the instance
`MulDistribMulAction (G ⧸ H) (FixedPoints.subgroup H α)`
(`Mathlib/GroupTheory/GroupAction/OfQuotient.lean` line 62). `QuotientGroup.mk` appears nowhere in
the README.

Change: plan 1.2 prerequisites: `target:1.1` deleted. Plan 4.1: `mathlib:QuotientGroup.mk` →
`mathlib:MulDistribMulAction (G ⧸ H) (FixedPoints.subgroup H α)`.

Pattern: a scripted comparison of all 35 targets (README `*Needs:*` against plan prerequisites,
section ranges expanded) found no other difference. Its only reports were artefacts:
- a trailing `§1.1` in 1.3 and 2.2;
- mathematics inside backticks in 2.4 and 8.4;
- base declarations standing for their sections in 3.1, 6.3 and 9.2.

The same pass found the Layer 7 Dependencies line missing base §2.4, which §7.2 needs; it was added
there together with the F01 names.

## Checks run

Dependency gate (after the last edit):

```
candidate: ModularCharactersAndBlocksPartII is not in the merge order yet; checked as if placed after ModularCharactersAndBlocks (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2367 edges, 0 problem(s)
```

No UPWARD or CYCLE line.

Other checks:
- **Citation resolver:** no cross-roadmap citation and no Lean name found nowhere. It did not check
  names outside TauCetiRoadmap on this host, so I opened the two new names at the pins (Mathlib
  `1b1ccf4b`, Tau Ceti `2fd255d9`, matching `lake-manifest.json`), at the lines given above.
- **Parsing:** `plan.json` and `sources.toml` both parse.
- **Lean:** no `Suggested.lean` exists at the design stage, so there was no `#check @name`
  comparison and no elaboration.
- **Sources:** no new source was cited and `sources.toml` is unchanged.

## Adversarial pass (changed or added statements)

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| Restriction of a simple module to `N ⊴ G` is semisimple, over any field (§7.2 modular step) | `N = G`; `N = 1`; `S₄ ⊵ A₄`, `p = 2`, `k = 𝔽₄`; non-normal `⟨t⟩ ≤ S₃`, `p = 2` | `Res W = W` simple; `Res W` a vector space; `Res W = λ ⊕ λ̄` though `2 ∣ 12`; `t` acts on the faithful 2-dim module as a nontrivial unipotent (`(t−1)² = 0`, `t ≠ 1`), so `Res W ≅ 𝔽₄[C₂]`, not semisimple | holds; normality needed and present in the pinned `[N.Normal]` | route and `*Needs:*` cite it |
| `Hom_G(Ind_N^G V, W) ≅ Hom_N(V, Res_N W)` | `S₃ ⊵ C₃`, `p = 2`, `V = λ`, `W = std⁰`; `V = 1_N`, same `W` | `dim Hom_N(λ, λ ⊕ λ̄) = 1`, so a nonzero map `Ind λ → W`, onto, `2 = 2`, iso; `Hom_N(1, λ ⊕ λ̄) = 0`, so `W` is not a quotient of `Ind 1 = k[C₂]` (composition factors `1, 1`): consistent | holds; direction is Mathlib's `indFunctor ⊣ resFunctor` | cited |
| First statement of §7.2 via `TauCeti.clifford_restrict_character` | over `ℂ`; over `K = ℚ₂(ζ₃)` | `IsUnit (6 : ℂ)`, `ℂ` algebraically closed: hypotheses met; `K` is not algebraically closed, but `Irr(G)` is read over `ℂ` (Conventions) | holds over `ℂ` | route says so |
| New Check `S₄ ⊵ A₄`, `p = 2` | `2`-regular classes | `S₄`: `{1}`, 3-cycles, so `IBr = {1, φ₂}`; `A₄`: `{1}`, two 3-cycle classes, so `IBr = {1, λ, λ̄}`; `(Ind λ)(1) = 2`, `(Ind λ)((123)) = λ((123)) + λ((132)) = ω + ω² = −1 = φ₂((123))`; one block each (`C_G(V₄) = V₄ = O₂(G)`); `24 = 0` in `k` | holds; agrees with the fifth statement and with the first three Checks | Check and plan test added |
| Layer 7 Dependencies | union of §§7.1–7.6 `*Needs:*` | base `{0.2, 1.2, 2.1, 2.4, 3.1, 4.2, 6.1, 6.2, 7.1, 8.1, 8.2}`; line lacked `2.4` | fixed | line updated |
| Plan 1.2 without `target:1.1` | statement terms | `ConjClasses`, `FixedPoints.subgroup`, `S`-invariant class (`s • K = K`): none from §1.1 | holds | plan edited |
| Plan 4.1 instance | Mathlib pin | `OfQuotient.lean` line 62: `instance : MulDistribMulAction (G ⧸ H) (FixedPoints.subgroup H α)` | present | plan edited |

## Notes for the maintainer

- No name of this roadmap's own changed and no heading moved, so other roadmaps are not affected.
- Two library names were added to the contracts: Mathlib `Rep.indResAdjunction` and Tau Ceti
  `TauCeti.Representation.isSemisimpleRepresentation_comp_subtype`.
- No construction was added, so no ownership check against open pull requests was needed this
  round.
- No open revision was relied on: no item goes under "only an open revision defines".
- The supplier gap `gap:clifford-multiplicity-dvd-index` (InductionRestriction Layer 7) is
  unchanged.
