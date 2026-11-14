# Repair of BallQuotientsAndComplexHyperbolicLattices (design, round 5)

This round settles the three findings F01–F03 of `packages/BallQuotientsAndComplexHyperbolicLattices/reports/REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices~4.md`. F03 has five items. I checked each finding against the sources, the supplier heads and the pins, and all three are correct.

Files edited:
- `packages/BallQuotientsAndComplexHyperbolicLattices/design/README.md`
- `packages/BallQuotientsAndComplexHyperbolicLattices/design/plan.json`
- `packages/BallQuotientsAndComplexHyperbolicLattices/sources.toml`

No other file was touched. No layer, section number or target id changed. Nothing in the review, the supplier READMEs or the sources read as an instruction to me. The review's "For the human reviewers" item (placement after RealSemisimpleLieGroups) lists no finding, so I changed nothing for it.

## F01 (P2) — applied

**Change.** §1.4: its own proof of G = K·{g_t}·K → `kakDecomposition` (LieGroups Layer 9) on RealSemisimpleLieGroups §3.1's datum; only K, 𝔞 = ℝ·Y_v, lieExp(tY_v), g_t = lieExp(tY_{−ie₁}), the Weyl group and tanh|t| = |g·0| are proved here. §1.5: its own "P_∞ = M·A·N" → §3.1's P = MAN for 𝔞 = ℝ·Y_{eₙ}, identified in Siegel coordinates.

**Evidence.** On main, `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md` Layer 9 (line 1362) owns `kakDecomposition`, stated at line 605 of the Suggested.lean on main for any `D : IwasawaData I G`. RealSemisimpleLieGroups §3.1, at its head, owns P = MAN, the diffeomorphism M × A × N → P and G = KP for every connected G with semisimple Lie algebra and finite centre. It also packages the "minimal parabolic datum", an `IwasawaData` with N = N₊, for that class. PU(1,n) is in that class.

The two sections use conjugate choices of 𝔞, as the reviewer asked: §1.4 works for every unit v and reads g_t at v = −i·e₁, and §1.5 fixes v = eₙ. One new Check was added in §1.4 (the convention for the middle factor) and two in §1.5 (the positive system, and the dimension count for n = 2).

**Same pattern elsewhere.** I updated each of these places:
- the scope paragraph (line 9) and a new scope bullet for LieGroups Layer 9;
- §3.1 added to the RealSemisimpleLieGroups contract;
- a new `### From TauCetiRoadmap.LieGroups (RepresentationTheory/LieGroups)` contract (`IwasawaData`, `kakDecomposition`, `iwasawaDecomposition`);
- the "How to read the build" paragraph;
- §1.2's sentence that sent the Cartan decomposition to §1.4;
- both *Needs:* lines and the Layer 1 Dependencies;
- §2.4, which proved the same exponential formula a second time and now cites §1.4;
- plan 1.4, 1.5 and 2.4, and the plan `suppliers` (§3.1 added, a new `LieGroups` entry). The plan API name `langlands_decomposition` became `minimal_parabolic_comparison`. This name exists only in the plan; there is no Lean declaration.

## F02 (P2) — applied

**Change.** §11.1 gains (c): φ(𝐆(ℤ)) is commensurable with 𝐆′(ℤ) for every isogeny φ of connected semisimple ℚ-groups. §5.1 gains: a discrete subgroup containing a lattice is a lattice, of finite index. §11.3 gains p = ι ∘ pr_H ∘ π_ℝ and the chain Γ_a ~ 𝐆^ad(ℤ) ∩ 𝐆^ad(ℝ)⁺ ~ π(𝐆(ℤ) ∩ 𝐆(ℝ)⁰) ~ Γ.

**Evidence.** The route of (c) is model independence, the supplier's image theorem and §5.1; p and pr_H ∘ π_ℝ have equal kernels. Γ is commensurable with p(𝐆(ℤ) ∩ 𝐆(ℝ)⁰), while Γ_a is arithmetic in 𝐆^ad. No step of §11.3 and no supplier compared π(𝐆(ℤ)) with 𝐆^ad(ℤ):
- AdelicAlgebraicGroups §3.4, at its head, compares arithmetic subgroups of one group only;
- `roadmaps grep` finds no owner of either needed statement.

The fact itself is WitteMorris2015 Proposition 9.4.5, line 8668 to line 8669. The finite-index step is WitteMorris2015 Exercise 4.1#10, line 2000 to line 2001. VonNeumannAlgebras Layer 9 on main does not state it.

**Checks added.**
- §11.1: SL₂ → PGL₂ has index 2; φ = id with a conjugate model gives Γ⁰(2), of index 3; a real isomorphism not defined over ℚ (SL₁(D) against SL₂) is a negative control.
- §11.3: the n = 1 component group Γ_a = PSL₂(ℤ).
- §5.1: ⟨T_1⟩ has infinite index in PSL(2,ℤ).

**Same pattern elsewhere.** §11.1 (b) used the same lattice-in-lattice step without a reference; it now cites §5.1. §11.2 and §11.4 reach the component groups only through §11.3. Plan 5.1, 11.1 and 11.3 changed with the README.

**Generality.** (c) is stated for isogenies, the class the route covers; the source's surjective-homomorphism form is cited at the statement. The finite-index fact is stated for any unimodular second-countable locally compact group, because (c) needs it in 𝐆′(ℝ)⁰, which is not G.

## F03 (P3) — applied

**Change.**
1. §2.1, plan 2.1: "BaldiUllmo2023 line 35 to line 36" deleted; Mok2012 cited at §2.4.
2. §11.4: cites ShimuraVarieties §§2.1–2.2; boundary components shown to be points.
3. Layer 12: subvariety W → Z (§§12.1–12.3), → Q (§12.4).
4. `:223` → `:224`.
5. §6.1 (2): key GarlandRaghunathan1970; References line.

**Evidence and places.**
1. In the cached text, BaldiUllmo2023 lines 35–36 introduce S_Γ = Γ\X only. Plan 2.1's `where` is now "Ch. 3". Mok2012 line 320 is cited at §2.4 and in plan 2.4, as the reviewer allowed, and `sources.toml` lists §2.4 under Mok2012's `cited_for`.
2. At its head, ShimuraVarieties §2.1 (`TauCeti.Shimura.rational_boundary`) and §2.2 (`TauCeti.Shimura.satake_compactness`) carry the rational boundary components and the compact Satake quotient with finitely many boundary strata.
   - The proof that boundary components are points uses the maximum principle and Cauchy–Schwarz. Mok2012 lines 123–128 are kept as a secondary citation.
   - §§2.1–2.2 are added to the *Needs:* line, the Layer 11 Dependencies, the scope, the ShimuraVarieties contract, plan 11.4 and the plan suppliers.
   - New Check: the bidisc against the ball.
3. W stays the subspace. In §12.3 the component is written X_H = 𝔹(W), so that r_W has its subspace. The Layer 12 Examples and plan 12.1–12.4 changed the same way. Layer 12 used no Q before.
4. I confirmed at the pin that `def finSumFinEquiv` is on line 224 of `Mathlib/Logic/Equiv/Fin/Basic.lean`. Plan 1.1 carries no line number (only `mathlib:finSumFinEquiv`), so nothing changed there.
5. The manifest entry, which is waived, gained `cited_for = ["6.1"]`.

## Checks run

Dependency check, exact output:

```text
candidate: BallQuotientsAndComplexHyperbolicLattices is not in the merge order yet; checked as if placed after ShimuraData (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2179 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. The new edge to LieGroups is to a roadmap on main.

Citation resolver (`roadmaps resolve` on the edited README, index of 2026-11-13T16:20:12Z): no cross-roadmap citation and no Lean name was found nowhere. The resolver did not check Lean names outside TauCetiRoadmap on this host. I checked the new supplier names by hand:
- `IwasawaData`, `iwasawaDecomposition` and `kakDecomposition` are in LieGroups' Suggested.lean on main (lines 509, 598, 605).
- `TauCeti.Shimura.rational_boundary` and `TauCeti.Shimura.satake_compactness` are in ShimuraVarieties' README at its head (lines 540, 554). They are absent from its Suggested.lean, like the eleven `TauCeti.Shimura.*` names already cited.

Plan: valid JSON, 57 targets, every `target:` prerequisite earlier than its target, at least three tests each. Manifest: parses as TOML, 17 entries, and every key the README cites is recorded.

Lean: this is a design, so there is no `Suggested.lean`. I did not run the `#check` binder pass and elaborated nothing.

There were no gate failures to repair.

## Adversarial pass (changed or added statements)

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §1.4: the Cartan fixed group is K | g = h_t, diag(e^{iθ}, 1), the case λ ≠ 1 | (h_t)ᴴ⁻¹ = Jh_tJ = h_{−t}, which is not λh_t for t ≠ 0; diag(e^{iθ},1) is fixed with λ = 1; λ ≠ 1 gives a = 0, against \|a\|² − \|c\|² = 1 | Pass | My first wording covered only λ = −1; changed to λ ≠ 1 |
| §1.4: 𝔞 is a line | (e₁, i·e₁); (e₁, 2e₁) | [Y,Y′] = diag(2i, −2i·e₁e₁ᴴ) ≠ 0; diag(2 − 2, 2e₁e₁ᴴ − 2e₁e₁ᴴ) = 0 | Pass | Check added |
| §1.4: lieExp(tY_v) matrix | n = 1, v = 1 and v = −i | Y_v² = diag(1, vvᴴ), Y_v³ = Y_v; the boost (0 ↦ tanh t) and h_t (0 ↦ −i·tanh t); v = i gives h_{−t} | Pass | Check added |
| §1.4: Weyl group of order 2 | v = e₁, n = 2 | [diag(1, 1 − 2e₁e₁ᴴ)] = [diag(1, −1, 1)] sends Y_{e₁} to −Y_{e₁}; K-elements fixing Y_v satisfy Dv = av | Pass | — |
| §1.4: tanh\|t\| = \|g·0\| | g_w, w = (1/2, 0) | t = ½·log 3 ≈ 0.5493, tanh = 0.5; the wrong value t = 1/2 gives 0.4621 | Pass | Existing Check unchanged |
| §1.5: A | n = 1, n general | C(lieExp(τY_{eₙ})·w) = e^{2τ}·C(w); u ↦ e^τ·u; so a_s with s = e^τ | Pass | — |
| §1.5: M = Z_K(𝔞) | n = 1, 2 | Deₙ = a·eₙ gives [diag(a, D′, a)], acting by u ↦ a⁻¹D′u; dimension 0 for n = 1 and 1 for n = 2 | Pass | — |
| §1.5: N is the Heisenberg group | conjugation by a_s; dimensions | a_s·n_{(a,t)}·a_s⁻¹ = n_{(sa, s²t)}; dim N = n² + 2n − n² − 1 = 2n − 1, which is 1 and 3 for n = 1, 2 | Pass | — |
| §1.5: P = P_∞ | n = 2 | K ∩ P_∞ = stabiliser of eₙ = M, of dimension (n − 1)² = 1; 5 = 8 − 4 + 1 | Pass | Check added |
| §1.5: positive system | τ = ½·log 3 | lieExp(τY)·0 = eₙ/2 and C = (0, 3i) = (0, i·e^{2τ}), matching §1.3's C(0, 1/2); −eₙ goes to (0, 0) | Pass | Check added |
| §5.1: discrete subgroup containing a lattice | Γ(2)/±1 ⊂ PSL(2,ℤ); ⟨T_1⟩ ⊂ PSL(2,ℤ); compact L | index 6, covolume π = 6·π/6; ⟨T_1⟩ is not a lattice and has infinite index; in compact L, Λ is finite | Pass | Bullet and Check added |
| §11.1 (c) | SL₂ → PGL₂; φ = id with the diag(2,1) model; SL₁(D) against SL₂; trivial 𝐆 | index 2 (determinant sign); intersection Γ⁰(2) of index 3 in each; cocompact against non-cocompact; 1 ~ 1 | Pass | Three Checks added |
| §11.1 (c), real surjectivity | SL₂(ℝ) → PGL₂(ℝ)⁰ | image PSL₂(ℝ) = PGL₂(ℝ)⁰ with kernel ±1; the component diag(−1, 1) is not hit, so the statement uses identity components | Pass | — |
| §11.3: same kernels | 𝐆 = SL₂; 𝐆 with 𝐆(ℝ) = SU(1,n) × SU(n+1) | ker p = ±1 = ker(pr_H ∘ π_ℝ); μ_{n+1} × SU(n+1) on both sides | Pass | — |
| §11.3: commensurability chain | n = 1, K_f = PGL₂(Ẑ), a = 1 | PGL₂(ℚ) ∩ PGL₂(Ẑ) = GL₂(ℤ)/±1 (scaling by ℚ^×, class number 1); Γ_a = PSL₂(ℤ) = Γ_a^eff; π(SL₂(ℤ)) has index 2 in 𝐆^ad(ℤ) | Pass | Check added |
| §11.4: ball boundary components are points | f = (1, 0) constant; f(ζ) = (1, ζ); the bidisc | ⟨(1,0), f⟩ ≡ 1 forces f₂ ≡ 0; \|(1, ζ)\|² = 1 + \|ζ\|² > 1, so it leaves the ball; the bidisc contains {1} × Δ | Pass | Check added |
| §§12.1–12.4 renaming | Checks recomputed | (dim Q, dim U) = (n, 0), (2n, n), (n, 0); Z = S_Γ for m = n | Pass | Notation only |
| §2.4 citing §1.4 | t, e₁ | d(0, tanh t·e₁) = √2·\|t\| and the unit-speed geodesic is s ↦ tanh(s/√2)·v; unchanged | Pass | — |

## Ownership and maintainer notes

**Ownership.**
- The Cartan (KAK) and Iwasawa decompositions now come from LieGroups Layer 9 on main. P = MAN and G = KP come from RealSemisimpleLieGroups §3.1. That roadmap is an open pull request adding a new folder and was already this roadmap's supplier (§§5.2–5.7).
- §11.1 (c) and §5.1's finite-index fact have no other owner. I searched by object with `roadmaps grep` on main and at the open heads (index of 2026-11-13T16:20:12Z):
  - AdelicAlgebraicGroups §3.4 has model independence and the image theorem, and its "open subgroups of finite covolume have finite index" is a different statement;
  - VonNeumannAlgebras Layer 9 has neither statement.

  This roadmap therefore states both and owns them.
- Ownership against open pull requests was checked only through the roadmaps tool at that index.

**Notes for the maintainer.**
- Supplier sections added: LieGroups Layer 9 (on main), RealSemisimpleLieGroups §3.1, ShimuraVarieties §§2.1–2.2. All three roadmaps were already suppliers or are on main, so the merge-order placement is unchanged: still after ShimuraData, and in fact after RealSemisimpleLieGroups, which the dependency check cannot see.
- No roadmap cites this one, so no consumer is affected.
- The renamings (W → Z and Q in Layer 12; plan API `langlands_decomposition` → `minimal_parabolic_comparison`) touch no Lean name.
- I fetched no source and wrote no needs-references file. WitteMorris2015's locator gained Exercise 4.1#10 and Proposition 9.4.5, read in the cached arXiv v6 text, whose numbering the manifest already records. BaldiUllmo2023's `cited_for` gained "1.4", which §1.4 already cited.
