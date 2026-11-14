# FIX-PKG-VStackSheavesAndLisseCategoriesPartII~8

Repair of the three findings of `REV-PKG-VStackSheavesAndLisseCategoriesPartII~7`. All three were verified against the cached legal sources and the supplier README, and all three are applied. Only `packages/VStackSheavesAndLisseCategoriesPartII/README.md` changed. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged.

## F01 (P2) — applied

**Verification.** HKW22 line 1122 (p. 23) says an object is invertible iff it is étale locally L[n]. Lemma 4.1.10 (HKW22 lines 1187–1191, p. 24) is stated for invertible I, and its proof uses only I⁻¹. The supplier DiamondSixOperations §S4.2 defines invertible objects as étale locally Λ[n] and says that "the converse is not part of the definition". Scholze's definition (Sch17 line 6041) is the local-shift notion over F_ℓ.

I recomputed the witness. Take Λ = F₃ × F₃ and p = 2 over a geometric point. Then I = e₁Λ ⊕ e₂Λ[1] and J = e₁Λ ⊕ e₂Λ[−1] give I ⊗ J = e₁Λ ⊕ 0 ⊕ 0 ⊕ e₂Λ = Λ. But H⁰(I) ≅ F₃ and H⁻¹(I) ≅ F₃, and every étale cover of a geometric point splits. So I is invertible but not étale locally a single shift.

**Change.**
- VS7.10: "I is invertible (étale locally L[n] …)" → "I is ⊗-invertible: there is J with I ⊗ J ≅ Λ_X". The proof sketch now uses J and the tensor compatibility of w. Two Checks added: the product-ring witness, with Rf^!Λ ⊗ f^*I = Rf^!I = e₁Λ(1)[2] ⊕ e₂Λ(1)[3] on P¹; and the regular representation C(Z_p, Λ) on [S/Z_p], where the map fails.
- Conventions: new bullet defining invertible as ⊗-invertible, contrasted with §S4.2.
- VS7.8 (2)/(3): invertibility of Rf^!F_ℓ is qualified as the §S4.2 notion.
- Corrections to the sources: new entry for HKW22 p. 23.

**Pattern.** The single-shift characterisation occurred only at VS7.10. All other uses of "invertible" were checked against the new convention:
- VS6.2 Check, VS7.4 step 4 and Check, VS7.8 statement and Checks, VS7.9 API and Checks, VS7.11, VS11.7 (object B): all are correct for ⊗-invertible objects, since the §S4.2 objects are ⊗-invertible.
- Over F_ℓ, the "not invertible" Checks (stalk rank ≥ 2) hold in both senses, because ⊗-invertible objects of D(F_ℓ) are F_ℓ[n].
- VS7.8 (2)/(3), which follow GHW22 Proposition 4.14 (GHW22 line 1597) and Scholze's definition, now say explicitly that they use the §S4.2 notion.

## F02 (P2) — applied

**Verification.** In HKW22 Definition 4.5.4 (line 1880, p. 39), a morphism of BCoCorr_S needs a cohomologically smooth right base leg u′. The coevaluation's base is S ← T → T ×_S T, so u′ = Δ_(T/S). HKW22 assumes smooth π and Δ before asserting dualizability (lines 1961–1966, p. 40).

I recomputed the witness: X = T = P¹ over Spd C, Λ = F₃, p = 2. Then K_Δ = Λ(−1)[−2] has H⁰ = 0. The self base change of Δ is id_T, with K = Λ and H⁰ = F₃. So Δ is not smooth (VS7.8 (3)).

**Change.**
- VS11.7 API: "If 𝔖(𝔛), 𝔅(𝔛) are dualizable, so is 𝔛" → "If Δ_(T/S) is cohomologically smooth and 𝔖(𝔛), 𝔅(𝔛) are dualizable …". The bullet also names the base legs of coevaluation and evaluation and gives the HKW22 p. 40 locator.
- Proof step 4 added, computing β: for coev, Δ^!(B ⊠ K⊗B⁻¹) ≅ K_Δ ⊗ K ≅ Λ (VS7.11); for ev, K = π^!Λ.
- Checks added: T = S (positive) and the P¹ diagonal (negative).

**Pattern.**
- VS11.9 step 1 now invokes VS11.7 with the smooth diagonal.
- VS11.12 step 1 now proves Δ_([S/G]/S) smooth: its fibre over the smooth chart S → [S/G]² is G → S. It uses this for the dualizability of 𝔜 and for coev_G, which lies over coev_𝔗.
- *Needs:* of VS11.7 gains VS8.8, VS7.8 and VS7.11.

## F03 (P1) — applied

**Verification.**
- HKW22 uses left torsors: i(y) = f(y)·y with f(gy) = g f(y) g⁻¹ (lines 1705–1707, p. 35). Its α₀, (x, g, h) ↦ (x, gx, h) (line 2081, p. 43), is right multiplication, which is equivariant for left actions only.
- The roadmap uses right torsors with left-multiplication automorphisms (VS6.9).
- Recomputed in S₃, right to left, with x = (12), a = (123): ax = (13) and xa = (23). The old formula is therefore not a torsor automorphism.

**Change.**
- VS11.12 step 1 now names the trivial right G ×_S G-torsor G×G×G over G, with action (x, g, h)·(a, b) = (x, ga, hb). The automorphism is now (x, g, h) ↦ (x, xg, h), with inverse (x, x⁻¹g, h). Over x its first component is α_x of VS6.9, and the step records the conversion from HKW's left convention.
- Step 2 derives that the middle map sends x to its class: φ(y) = y⁻¹xy (VS11.2) equals x at the unit.
- Added an S₃ orientation Check.
- *Needs:* gains VS11.2, VS8.9 and VS6.9.

## Checks run

- **Elaboration.** `lake env lean` on `packages/VStackSheavesAndLisseCategoriesPartII/Suggested.lean`, run from the content checkout: exit 0, no output, no warnings. The file has no `TauCeti.*` import, so no module build was needed. The file is unchanged this round: no headline statement changed, and VS7.10 and VS11.7 are not headlines.
- **`#check @name` pass.** `Suggested.lean` declares no named declarations, because no headline is statable at the pins (see its docstring). The binder comparison therefore has zero inputs, and nothing changed.
- **Depcheck**, with the prescribed command and `--movable`; complete output:

```text
depcheck: 223 roadmaps, 1980 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or `moved:` line.
- **Citation resolver** (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean name found nowhere.
- **Sources.** No new source was fetched. Every locator added comes from the cached texts: HKW22 lines 1122, 1187, 1706, 1880, 1963 and 2081; Sch17 line 6041; GHW22 line 1597. No `needs-references.toml` was written.
- **Ownership.** No new construction or target was introduced. The repairs restate existing statements inside sections this roadmap already owns. "Invertible object" stays owned by DiamondSixOperations §S4.2 in its stronger form. This roadmap only fixes its own usage as the monoidal notion and cites the supplier for the comparison.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result; change |
|---|---|---|---|
| Conventions: invertible = ⊗-invertible | Λ = F₃×F₃ at a point; Λ = F_ℓ at a point; §S4.2 objects | I = e₁Λ⊕e₂Λ[1]: I⊗J = Λ, H⁰ = H⁻¹ = F₃. Over F_ℓ the ⊗-invertible objects of D(F_ℓ) are F_ℓ[n], one degree. §S4.2: D ⊗ RHom(D,Λ) ≅ Λ (DiamondSixOperations §S4.2). | The new notion is strictly larger only for disconnected Spec Λ; the smoothness criteria keep §S4.2. |
| VS7.10 twist theorem | f : P¹ → Spd C with the I above; I = Λ; q : S → [S/Z_p] with I = C(Z_p,Λ) | Both sides e₁Λ(1)[2] ⊕ e₂Λ(1)[3] (degrees −2, −3). I = Λ: identity. Regular representation: w is not an isomorphism (VS7.8 Check), and q^*M is free of infinite rank, so not perfect. | Holds for ⊗-invertible I; fails without the hypothesis; Checks added. |
| VS7.10 proof, inverse map | J inverse of I | w_(A⊗I,J) ⊗ f^*I : Rf^!(A⊗I) ⊗ f^*J ⊗ f^*I → Rf^!A ⊗ f^*I, using f^*J⊗f^*I ≅ Λ_Y; composites are identities by w_(A,I⊗J) = w_(A⊗I,J)∘(w_(A,I)⊗id) and w_(A,Λ) = id. | Typed and consistent; proof steps rewritten. |
| VS7.8 (2)/(3) | Δ : P¹ → P¹×P¹; q : S → [S/Z_p] | Δ: K = F₃(−1)[−2] is §S4.2-invertible but not stable under self base change (H⁰ = 0 vs F₃), so not smooth. q: Rq^!F_ℓ = F_ℓ is invertible, but the twist fails. | The qualification matches GHW22 Proposition 4.14 and Scholze, Definition 23.8. |
| VS11.7 dualizability | T = S; T = P¹ over Spd C, Λ = F₃, p = 2; T = [S/G] with G finite étale | T = S: Δ = id, K = Λ, dual base B⁻¹. P¹: K_Δ = Λ(−1)[−2] with H⁰ = 0, self base change K = Λ with H⁰ = F₃, so Δ is not smooth and the coev base is not a BCoCorr morphism. BG: Δ has fibre G, which is étale. | Hypothesis added; the counterexample is excluded by exactly that hypothesis. |
| VS11.7 step 4, β maps | Smooth T with B invertible | coev: Δ^!(B ⊠ K⊗B⁻¹) = K_Δ ⊗ B ⊗ K ⊗ B⁻¹ = K_Δ ⊗ K ≅ Λ_T (VS7.11). ev: Δ^*((K⊗B⁻¹) ⊠ B) = K = π^!Λ. For T = S both are Λ. | Both are isomorphisms; consistent with HKW22 line 1965 (B = Λ_T, dual base K_(T/S)). |
| VS11.9 step 1 | T = S; T = [S/G] with G smooth | Δ_(S/S) = id; Δ_([S/G]) has fibre G, which is smooth. | The hypotheses of VS11.9 already include smooth Δ; step 1 now cites them. |
| VS11.12, Δ_([S/G]/S) smooth | G = S₃ constant (étale); G = Z_p (excluded: not smooth) | Fibre over S → [S/G]²: (G×G)/G ≅ G. S₃: étale, so smooth. Z_p: G → S has distributions as its dualizing complex, so not smooth, and VS11.10's hypothesis "G cohomologically smooth" excludes it. | Holds under VS11.10's hypotheses. |
| VS11.12, α₀ formula | G = S₃, x = (12), a = (123), t = (x,1,1) | New formula: F(t·(a,1)) = (x, xa, 1) = F(t)·(a,1), with xa = (23). Old formula: (x, ax, 1) with ax = (13), vs (x, (23), 1). Inverse: x⁻¹(xg) = g. | The old formula is not equivariant; the new one is. |
| VS11.12, middle map of tr_G | Same S₃ data; G abelian (C₂) | Left multiplication by x: φ(y) = y⁻¹xy, so φ(1) = x = (12), the class of transpositions. Without α₀: the class of 1. For C₂, φ(y) = x for all y, and the two conventions agree. | The middle map sends x to its own class; the nonabelian Check discriminates. |

## Notes for the maintainer

- No identifier was renamed, added or dropped. All VS section numbers are unchanged, and no other roadmap's citation of this package is affected.
- The Conventions now define "invertible" as ⊗-invertible. This is strictly weaker than DiamondSixOperations §S4.2 when Spec Λ is disconnected. The smoothness criteria (VS6.8, VS7.8) explicitly keep the §S4.2 notion, so nothing is asked of DiamondSixOperations.
- The HKW22 source issues listed in the review's *Source issues* section were already recorded under *Corrections to the sources*. The only new entry is the p. 23 invertibility error (F01). The review's F03 is a convention conversion, not a source error: HKW22's formula is correct for its left torsors, so no correction entry was added.
- No text in the review was treated as an instruction beyond the claims it makes.
