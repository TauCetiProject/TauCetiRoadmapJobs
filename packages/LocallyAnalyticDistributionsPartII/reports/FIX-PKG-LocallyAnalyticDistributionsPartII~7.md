# FIX-PKG-LocallyAnalyticDistributionsPartII~7

One review (REV-PKG-LocallyAnalyticDistributionsPartII~6), four findings. All four were verified against the sources, the pinned libraries and the cited roadmaps, and all four are repaired. `Suggested.lean` is unchanged.

## F01 (P1) — applied differently

Old → new: "generators of the polynomial ring Z(g) (LieHighestWeight Layer 7)" → Z(g) finitely generated (§4.1 new bullet: g reductive by descent from ℚ̄_p; Z(g) ≅ S(z) ⊗ Z(g′) via new gap:reductive-centre-split against LieHighestWeight Layer 9); any finite generating set; HC defined in §4.2 as the projection, = id ⊗ `TauCeti.hcProjection`; §4.3 "generators"; contracts corrected.

Verified. At the pin, `TauCeti.harishChandraLinearIso` and `harishChandraIso` require `[IsAlgClosed K]` (`TauCeti/Algebra/Lie/HighestWeight/CentralCharacter/Isomorphism.lean:61`). `TauCeti.hcProjection`, `hcProjectionLinear_mem_linearInvariants`, `hcProjection_injective` and `vermaCentralCharacter` need only `[Field K] [CharZero K] [IsKilling K L]`, a Cartan subalgebra with `IsTriangularizable`, and a base. None of these applies to gl₂ or Lie(G_m), whose Killing form vanishes on the centre. LieHighestWeight's `Polynomial K ≃ₐ[K] Z(U(sl₂))` (Worked examples) is over an algebraically closed field.

Why differently: the review proposed owning the reductive centre here. That object is generic Lie theory over a field of characteristic zero, and its natural owner is LieHighestWeight (Layer 9, reductive Lie algebras; Layer 7, the centre). An open roadmap, AutomorphicFormsOnReductiveGroups, already records a supplier gap against LieHighestWeight Layer 9 for the same decomposition U(g) ≅ S(z) ⊗ U(g′) and Z(U(g)) ≅ S(z) ⊗ Z(U(g′)). An open revision of LieHighestWeight plans it as its §9.2. Owning it here would give the object a second owner once either lands. So I declared `gap:reductive-centre-split`, with supplier LieHighestWeight and section Layer 9, in `design/plan.json` and under "Exact supplier contracts". It asks for what neither of those texts covers:
- the decomposition over any field of characteristic zero;
- finite generation of Z(U(g)) over a field that need not be algebraically closed;
- the reductive Harish-Chandra projection for a split Cartan subalgebra, as id_{S(z)} ⊗ `TauCeti.hcProjection`, with the Weyl invariance of its −ρ translate.

The contract line gives a route from pinned declarations: `harishChandraLinearIso` over F̄, `TauCeti.linearInvariants_eq_symmetricAlgebraInvariants`, Noether's theorem `Representation.finiteType_symmetricAlgebraInvariants` (`TauCeti/RepresentationTheory/SymmetricAlgebra/FiniteType.lean:52`), then descent along F̄/F.

What stays here, because it bridges the group 𝔾 to the gap's hypotheses:
- §4.1: g = Lie 𝔾 is reductive. By `TauCeti.hasCentralRadical_iff_isCompl_center_derivedSeries` this means g = z ⊕ [g, g] with [g, g] semisimple. These are linear conditions that are invariant under base change, and over ℚ̄_p they hold by `TauCeti.reductiveCommHopfAlgProperty.hasCentralRadical_lieAlgebra`.
- §4.1: Z(sl₂(ℚ_p)) = ℚ_p[Δ], by faithfully flat descent from LieHighestWeight's sl₂ statement. The m factors combine through `prodEquivTensor` and the two Mathlib centraliser lemmas.
- §4.2: t′ = t ∩ g′ is a split Cartan subalgebra.

The pattern was repaired at every other place that cited LieHighestWeight Layer 7 for the centre:
- §1.3 *Needs* and the Layer 1 Dependencies now cite Mathlib `Subalgebra.center`, the only part of the centre that §1.3 uses.
- The Scope bullet now lists what Layer 7 actually supplies.
- The Layer 4 Dependencies are updated.
- The LieHighestWeight contract states Layer 7 at its pinned hypotheses and adds Layer 9 and the sl₂ worked example.
- The Tau Ceti and Mathlib contracts list every new name.
- §4.13's citation of Layer 7 (Verma central characters of a split semisimple 𝔤_K) is correct at the pin and is kept.

New Checks:
- §4.1: G_m, one generator, tied to the §4.3 torus witness.
- §4.1: GL₂ needs two generators, and its Killing form is degenerate.
- §4.1: {Δ, Δ²} versus {Δ²}.
- §4.2: GL₂, where the central factor carries the antipode sign: λ(I) = −(c₁ + c₂).

## F02 (P2) — applied

Old → new: "Fréchet–Stein for U(g)_r, r = 1, 2, 3, …; U(g)_r noetherian, flat" → radii r_j = `|π_E|^{−j}`, `U(g)_{r_j}` = `Û(g₀)_{j,E}` noetherian by §2.1. Noetherianity and flatness, over 𝒰(g) and of U(g) → U(g)_r, only for r ∈ p^ℚ. Transitions re-indexed (bullet and Check). §2.1 added to *Needs*. New p = 3 Check and Source corrections item 13.

Evidence:
- SCHM13 line 628: flatness of U(g) → U_r(g) is proved "for r ∈ p^ℚ".
- SCHM13 lines 227–230: the remark asserts noetherianity and flatness at every single norm, with no proof at other radii.
- The README's item 2 already records the same gap for D_r.

Same pattern elsewhere:
- Source corrections item 8 (BCGP's r, r + 1 indexing) now points to the r_j form.
- The definition 𝒰(g) = `lim_{r ≥ 1}` U(g)_r, Conventions 5 and the Layer 2 intro are correct: the r_j are cofinal.

## F03 (P3) — applied

Old → new: Scope and ownership, "(Schneider–Teitelbaum 2002, Theorem 3.5)" → "(Schneider–Teitelbaum, Banach, Theorem 3.5, p. 15)".

Evidence: ST02B line 547 is Theorem 3.5, on printed page 15 (page marker at line 528). ST02 line 598 is Lemma 3.5.

Every other "Schneider–Teitelbaum 2002" locator was checked against ST02: Lemmas 2.4 and 2.5 at lines 376 and 410, Lemma 3.1 at line 514, Proposition 3.7 at line 635. All are the JAMS paper, as cited.

## F04 (P3) — applied

Old → new: `cited_for` was recomputed for every non-waived entry by listing, per section, the lines that name each work.
- FU24: added Summary, Scope and ownership, Conventions, §0.1, Layer 0 Examples, §1.3, §2.1, §2.3, §3.3, §3.4, §3.5, §3.9, Layer 3 Examples, §4.9, §4.12, Layer 5 Examples and Downstream consumers.
- ST03: added Scope and ownership, §0.1, §4.3, §4.7 and §4.8. Removed the stale "Conventions": no Conventions item cites it.
- Pattern repaired in the other entries:
  - AW13: added Summary, Layer 3 Examples and Source corrections.
  - AW14: added Summary.
  - AB07: added Source corrections.
  - SCHM13: added Source corrections.
  - BCGP25: added Conventions.
  - SCH11 and ST02B: added Scope and ownership.

The waived entries (FROM03, DDMS99, MR01, DG70) carry no `cited_for` field and were left as settled. No other field of any entry changed.

## Checks

- **Elaboration.** `lake env lean packages/LocallyAnalyticDistributionsPartII/Suggested.lean`, run from the content checkout, exits 0. The only diagnostics are `declaration uses sorry` at 79:8 and 99:8. Both imported `TauCeti.*` object files were present, so nothing was built.
- **Signatures.** I put `#check @name` for the four declarations of `Suggested.lean` in one scratch file and elaborated it once. `firstCongruenceSL2` and `firstCongruenceProduct` keep `[Fact p.Prime]`. `isSemisimpleModule_of_finiteDimensional` keeps `p ≠ 2`, `m`, both module structures, `IsScalarTower` and `FiniteDimensional ℚ_[p] M`. `exists_surjective_algHom_end_symPower` keeps `p ≠ 2`, `m`, `k`, `K : Type` with `Field`, both algebra structures, the tower and `FiniteDimensional ℚ_[p] K`. These agree with README §3.8 and §5.2. Nothing changed, and `Suggested.lean` was not edited.
- **New library names.** The same scratch file checked 16 of the pinned names the README now cites. All exist, with the hypotheses the README states: `TauCeti.hasCentralRadical_iff_isCompl_center_derivedSeries`, `isCompl_center_derivedSeries`, `isKilling_derivedSeries`, `reductiveCommHopfAlgProperty.hasCentralRadical_lieAlgebra`, `UniversalEnvelopingAlgebra.prodEquivTensor`, `.symmetricAlgebraEquiv`, `hcProjection`, `hcProjectionLinear_mem_linearInvariants`, `harishChandraLinearIso` (with `IsAlgClosed`), `linearInvariants_eq_symmetricAlgebraInvariants`, `vermaCentralCharacter`; Mathlib `LieAlgebra.HasCentralRadical`, `LieModule.IsTriangularizable`, both `Subalgebra.centralizer_…_eq_center_tensorProduct` lemmas, and `Subalgebra.center`. `Representation.finiteType_symmetricAlgebraInvariants` has no object file on this worker; I verified it by reading its source at the pin.
- **Dependency check** (the command of the brief):

```text
depcheck: 210 roadmaps, 1913 edges, 0 problem(s)
```

  No UPWARD, CYCLE or `moved:` line. The new supplier, LieHighestWeight, is on main.
- **Citations.** `roadmaps resolve` on the README finds no cross-roadmap citation and no Lean name unresolved.
- **Overlaps.** The open revision of LieHighestWeight ("tensor strings, reductive centers and opposition") renumbers Layers 0 and 5. It carries a former-numbering table that maps them, so the existing citations stay valid. It keeps Layers 7 and 9 and the Worked examples, including `Polynomial K ≃ₐ[K] Z(U(sl₂))`, so the new citations are defined both on main and at that head.

- **Gate failure (tex=2).** README §2.5, the bullet on the radii `r_j`, had two brace subscripts outside code spans. `|·|_{r_j}` is now a code span, and `o_{E′} ⊗_{o_E} g₀` is one code span (it was a bare `o_{E′}` followed by two spans). The mathematics is unchanged and no other line was edited.

## Adversarial pass (changed and new statements)

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| §4.1: any finite generating set z_i gives ker λ = (z_i − λ(z_i)) | g = 0 (empty set); G_m, λ(x) = a; SL₂ with {Δ, Δ²}, λ = 1; GL₂, λ(I) = a, λ(Δ) = b; K = ℚ₃(√3), λ(Δ) = √3 | ker = 0 and quotient K; (x − a), quotient of dim 1; Δ² − 1 = (Δ+1)(Δ−1), so the ideal is (Δ − 1), quotient ℚ_p; (I − a, Δ − b), quotient ℚ_p; (Δ − √3) | sound | statement new; Check added |
| same, negative control: non-generating set | {Δ²}, λ = 1 | (Δ² − 1) ⊆ ℚ_p[Δ]; quotient ℚ_p × ℚ_p, dim 2 ≠ 1 | hypothesis "generating" needed | Check added |
| §4.1: g = Lie 𝔾 reductive, descended from ℚ̄_p | G_m; GL₂; non-reductive Borel b = ⟨h, e⟩ of SL₂ | z = g, [g, g] = 0, complementary; z = ℚ_p I, [g, g] = sl₂ with Killing Gram det 8·(0 − 16) = −128 ≠ 0; z(b) = 0 and [b, b] = ℚ_p e, so z ⊕ [b, b] ≠ b | sound; reductivity needed | new bullet |
| §4.1: Z(sl₂^m) = ℚ_p[Δ₁, …, Δ_m] | m = 0, 1, 2 | ℚ_p (empty tensor); ℚ̄_p ⊗ ℚ_p[Δ] = ℚ̄_p[Ω] with Ω = h² + 2h + 4fe = 2(½h² + h + 2fe) = 2Δ; ℚ_p[Δ₁] ⊗ ℚ_p[Δ₂] | sound | derivation added |
| §4.2: HC = restriction of the projection; algebra hom; = id ⊗ `hcProjection` | SL₂, n = ℚ_p e; opposite Borel; Δ²; G_m; GL₂ | HC(Δ) = ½h² + h (fe ∈ n̄U); ½h² − h; HC(Δ²) = (½h² + h)², cross terms 2f(½(h−2)² + (h−2))e ∈ n̄U and 4f(ef)e ∈ n̄U project to 0; HC = id; HC(I) = I; `hcProjection`(Ω) = t² + 2t = 2·HC(Δ) | sound | definition added |
| §4.2: −ρ translate in S(t)^W = S(z) ⊗ S(t′)^W | sl₂, ρ(h) = 1; GL₂ centre | ½(t−1)² + (t−1) = ½t² − ½ (even, W = {±1}); P_I(μ) = μ(I), W-fixed, odd | sound | attribution added |
| §4.2 Check: GL₂ induced character | c = (1, 0); c = (0, 0) | λ(I) = −1, λ(Δ) = ½ + 1 = 3/2; on Ind(χ): (d/dt) e^{−t(1+0)} at 0 = −1 (agrees); trivial: λ = 0, 0 | sound; the form without S gives +1 (wrong) | Check added |
| §4.3: ker(λ ∘ S) generated by S z_i − λ(z_i) | G_m, ν(x) = −1 | S x = −x; (ν ∘ S)(x) = 1; ker(ν ∘ S) = (x − 1) = (Sx − ν(x)) = (−x + 1); D·ker(ν∘S) ∋ x̃ − δ₁, which pairs with f(g) = g to 1 − 1 = 0 (the §4.3 witness) | sound | wording changed |
| §2.5: Fréchet–Stein along r_j = `|π_E|^{−j}` | E = ℚ₃: r = 1, 3, 9; E = ℚ₃(√3): r_j = 3^{j/2}; r = 2; g = 0; g = E·x | unit ball at r = 3: \|a_n\| ≤ 3^{−\|n\|}, i.e. the closure of ⊕ ℤ₃(3x)^n = Û(3g₀); every r_j lies in 3^ℚ; 2 ≠ 3^{j/e} since log₃ 2 is irrational; g = 0: every stage is E; g = E·x: U(g)_{r_j} = E⟨π^j x⟩, the §2.1 Tate check | sound | statement replaced; Check added |
| §2.5: flatness of U(g) → U(g)_r for r ∈ p^ℚ | g = E·x, r = 3 | E[x] → E⟨x/3⟩ is flat (completion of a noetherian ring at a norm in the value group) | sound | restricted to p^ℚ |
| §2.5 exp Check (recomputed) | p = 3 | \|1/n!\| r^n → 0 iff r < 3^{−1/2}; at equality the terms are 3^{−s(n)/2}, s(n) the digit sum, not tending to 0 | unchanged | none |
| Scope: Theorem 3.5 citation | ST02B line 547; ST02 line 598 | Theorem 3.5 on p. 15 is the duality; ST02's 3.5 is a Lemma about closed subspaces | sound after the change | changed |
| Source corrections item 13 | p = 3, r = 2 | 2 ∉ 3^ℚ; SCHM13 line 628 proves flatness for r ∈ p^ℚ | sound | added |

The reductive Harish-Chandra statements of §4.2 and the finite generation of §4.1 rest on the gap. The truth of what the gap asks was checked on G_m, GL₂ and SL₂ above, and its route on the pinned hypotheses (the `#check` outputs).

## Sources

No source was fetched, no manifest entry was added, and no `needs-references.toml` was written. Bourbaki VIII §6.4 is named only as what Fu cites for (24), not as a locator of this roadmap.

## For the maintainer

- **New supplier gap.** `gap:reductive-centre-split`, against LieHighestWeight Layer 9. It overlaps AutomorphicFormsOnReductiveGroups' `gap:reductive-enveloping-centers` (same supplier and layer) and the §9.2 planned by the open LieHighestWeight revision. Those two cover the decomposition and the isomorphisms over an algebraically closed field. This gap adds finite generation over a non-closed field and the split-field Harish-Chandra projection. When LieHighestWeight is extended, one statement can serve both roadmaps.
- **Other edits.** `cited_for` of ST03 lost a stale "Conventions". Source corrections has a new item 13.
- **No id changed.** No section, layer or `Suggested.lean` name changed, so no other roadmap's citation is affected.
- **Ownership against open work.** Checked for the reductive centre with `roadmaps grep` over main and all open heads: AutomorphicFormsOnReductiveGroups' gap and the LieHighestWeight revision are the only matches, as described above.
