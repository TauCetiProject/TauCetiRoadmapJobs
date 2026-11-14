# FIX-PKG-VStackSheavesAndLisseCategoriesPartII~7

Review settled: `REV-PKG-VStackSheavesAndLisseCategoriesPartII~6` (eight findings: one P2, seven P3). Every finding was verified against the cited texts and supplier roadmaps before it was repaired. Only `packages/VStackSheavesAndLisseCategoriesPartII/README.md` and the HKW22 `cited_for` field of `sources.toml` changed.

## F01 (P2) — applied

Verified. `VStackSheavesAndLisseCategories` (open head) §VS0.2, *Exceptional pullback for smooth stacky maps*: descent supplies "the stacky left adjoint on this smooth class", with the API bullet Map(f_!B, A) = Map(B, f^!A). By VS10.9, `[S/G_S] → S` is smooth for every G of VS10.6, so the old example was in the base's class.

Change: summary (line 5): "constructs no exceptional pushforward … [S/G_S] → S" → base supplies f^! with left adjoint f_! on the smooth class; new non-example [T_S/G_S] → S (T = Z_p, trivial C₂-action, Λ = F_ℓ), fine but not smooth. §VS0.2 contract (line 63) lists f_!. VS7.8: "Rf_! is the base's f_!", sketch clause, B(C₃) Check.

Same pattern: the Scope import bullet (line 13) now names the left adjoint and says in one clause how Layer VS7 differs (all fine maps) and where it agrees (VS7.8). No other passage claimed that the base lacks a smooth-class pushforward.

## F02 (P3) — applied

Verified. The VS7.9 subsection takes S to be any decent v-stack. Counterexamples: for S = ∅, K = 0 is invertible; for S = Spd C ⊔ Spd C, H⁰ = Dist(Z_p, Λ)².

Change: the VS7.9 Check (line 747) now begins "For S a geometric point (Spd C or Spd k)". It cites VS10.4 for H⁰ = Dist(Z_p, Λ) and the VS7.4 germ computation for non-invertibility. Two controls are added: S = ∅ (K = 0, invertible) and S = Spd C ⊔ Spd C (Dist²).

Same pattern: every other Check about T_S was checked again: lines 828, 1084, 1151 and 1225. Each holds for all S, or VS9.3's standing S = Spd C governs it. Unchanged.

## F03 (P3) — applied

Verified. HKW22 line 1082 (Definition 4.1.3, p. 22, page marker at line 1047) defines a nice map as compactifiable, representable in locally spatial diamonds and locally of finite dim.trg. These are the three conditions of *eligible* in `DiamondSixOperations` §S0.4 (open head).

Change: new Conventions bullet (line 34) defines "nice" and "nice diamond over S", identifies nice maps with DiamondSixOperations §S0.4 eligible maps, and notes they are fine between decent v-stacks. Proper bullet: "equivalently a proper nice map is proper and nice". VS9.3 (line 1217): "proper nice and representable in nice diamonds" → "proper nice (hence nice, Conventions)".

Same pattern: the other uses were recomputed against the new definition and hold: lines 308, 332, 462, 625, 648 and 741, and VS9.6, VS10.4, VS10.6, VS10.10 and VS11.10.

## F04 (P3) — applied differently

Verified. HKW22 lines 2301–2309 (p. 47) draw the Cartesian square with c′ : Fix(c) → X and Δ′ : Fix(c) → C. HKW22 line 2387 (p. 49) states the hypothesis "c₁ and f ∘ c′ perfectly proper".

The suggested repair defines c′ globally in Conventions, which would clash: c′ already names a second correspondence (VS9.1, VS9.2), a leg (VS8.7, VS11.7) or a morphism (VS8.3), and VS11.5 uses Δ′ for another base change.

Change: Conventions (line 37) defines Δ′ : Fix(c) → C and c′ : Fix(c) → X, scoped to VS8.10 and VS9.8; VS8.10 (line 1068) defines them at use; VS9.1 names c′ : C′ → X′ ×_S X′. VS9.8: "c₁ and f ∘ c′" → "c₁ : C → X and f ∘ c′ : Fix(c) → Spec k"; independence Check added.

## F05 (P3) — applied

Verified. HKW22 lines 3581–3583 (p. 73): multiplication by 1_U is a unital ring map C(S, Λ) → C(U, Λ), through which C(U, Λ)-modules become C(S, Λ)-modules. Over Λ the old formula fails: for T = {a, b}, U = T and M = Λ², rank 2 ≠ 4.

Change: VS10.1 (line 1408): "1_U·M ≅ C(U, Λ)⊗M is a C(T, Λ)-module" → "multiplication by 1_U is a unital ring map C(T, Λ) → C(U, Λ), and 1_U·M ≅ C(U, Λ) ⊗_(C(T,Λ)) M is a C(U, Λ)-module and, through that map, a C(T, Λ)-module".

Same pattern: every other unsubscripted ⊗ in Layer VS10 is over Λ and correct (VS10.4, VS10.7, VS10.10).

## F06 (P3) — applied

Verified. `SmoothRepresentationsOfLocalGroups` §SR.2.2 (*modulus-character*, open head) defines δ_P := mod_N for a parabolic pair P = M ⋉ N of a reductive group. It says that this equals the modular character only for unimodular M, and its own Check reads "For P = G (N = 1), δ_P = 1". It does not supply a modular character for a general locally profinite G.

Change: Conventions (line 39): "§SR.2.2 uses δ_SR(g) = μ(Eg⁻¹)/μ(E)" → the roadmap's own δ_G (index ratio, unit of Λ), χ_G = δ_G⁻¹, equal to §SR.2.2's δ_P only for G = P with M unimodular. VS10.5: δ_SR → δ_G; step 2 cites §SR.1.1 uniqueness, §SR.2.2 only for the parabolic comparison. §SR.2.2 contract line (126) split and scoped.

The name was changed from δ_SR to δ_G because the object is no longer attributed to that roadmap. All four occurrences were replaced, and none remains.

## F07 (P3) — applied

Verified. GHW22 lines 735–740 (Lemma 3.8, p. 15) use Scheiderer's bound for the spectral space |X|. `DiamondEtaleCohomology` §C8.44, *Spectral-space cohomological dimension* (open head, merge-order line 76, earlier than this roadmap at line 129), states: for spectral X with topologicalKrullDim X ≤ d and any abelian sheaf F, Hⁱ(X, F) = 0 for i > d.

Change: VS7.2 step 3 (line 536) now cites §C8.44 for the spectral bound. It keeps the comparison RΓ(|X₀|^h, F) ≅ RΓ(|X₀|, q^*F) as GHW22 Lemma 3.8, proved here. §C8.44 is added to the VS7.2 *Needs:*, the Layer VS7 Dependencies, a new `From TauCetiRoadmap.DiamondEtaleCohomology` contract (line 83) and the Scope import list (line 16).

## F08 (P3) — applied

Verified against the HKW22 page markers: p. 38 begins at line 1823, p. 39 at 1871, p. 40 at 1934 and p. 41 at 1985. Equation (4.5.2) is at line 1837 and Theorem 4.5.3 at line 1840, both on p. 38. The proof runs from line 1961 to line 1998, on pp. 40–41.

Change: VS11.9 (line 1901): "Theorem 4.5.3, equation (4.5.2) and proof, pp. 36–41" → "Theorem 4.5.3 and equation (4.5.2), p. 38, and proof, pp. 40–41".

Same pattern: the other §4.5 locators were recomputed against the page markers and are correct: VS11.5 (pp. 36–37), VS11.6 (pp. 37–38), VS11.7 (pp. 38–40) and the proof locator pp. 40–41.

## Checks run

- **`Suggested.lean` elaboration.** `lake env lean packages/VStackSheavesAndLisseCategoriesPartII/Suggested.lean`, run from the content checkout: exit 0, no output, no warning. The file is unchanged: its docstring names VS7.5, VS8.9, VS9.1–9.3, VS9.6, VS9.8, VS11.4, VS11.9 and VS11.12, and none of their statements changed in a way the docstring records. It has no `TauCeti.*` import, so no module build was needed.
- **`#check @name` audit.** `Suggested.lean` declares nothing (no headline is statable at the pins), so the audit has no inputs and no binder changed.
- **Dependency gate** (`gate --depcheck … --movable`), complete output, exit 0, with no UPWARD, CYCLE or moved line:

  ```text
  depcheck: 208 roadmaps, 1903 edges, 0 problem(s)
  ```

- **Citation resolver** (`roadmaps resolve` on the README): no cross-roadmap citation and no backticked Lean name was found missing. The new `DiamondEtaleCohomology` §C8.44 citation resolves.
- **Style scan of the changed lines:** no LaTeX delimiters, no process vocabulary and no machine paths.

## Adversarial pass on every changed statement

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Summary: the base's boundary | S = Spd C, G = C₂, T = point | `[S/C₂] → S` is smooth (VS10.9), so the base §VS0.2 class contains it; the old example was refuted. | Replaced. |
| Summary: the new non-example | S = Spd C, T = Z_p, trivial C₂-action, Λ = F_ℓ | `[T_S/C₂]` = T_S × `[S/C₂]` has stabiliser order 2 ≠ 1, so it is not representable. The chart T_S → `[T_S/C₂]` is a C₂-torsor, finite étale, so pullback of K = pullback^! of K = K_(T_S/S). Its germ at 0 has rank ≥ 2 ≠ 1, so K is not invertible and f is not smooth (VS7.8 (2)). Fine by VS10.10. | Holds. |
| VS7.8, agreement of Rf_! with the base's f_! | S = Spd C, G = C₂, Λ = F₃; trivial and sign M | Rf^!A = A (Haar ≅ Λ, χ = 1). Coinvariants: F₃ for trivial M; F₃/(σ−1)F₃ = F₃/(−2)F₃ = 0 for sign M. Hom_G(sign, A) = 0 = Hom(0, A) for trivial A. | The two adjoints agree. |
| VS7.8, new Check | S = Spd C, p = 2, Λ = F₃, `B(C₃)` | Both f_! are derived coinvariants, H^(-1) = H₁(C₃, F₃) = F₃. The wrong model Rf_* gives H^(-1) = 0 and H¹ = F₃ (matching VS6.11 and VS7.7). | Discriminates. |
| VS7.9 Check | S = Spd C with Λ = F_ℓ; S = ∅; S = Spd C ⊔ Spd C; Λ = 0 | Germ at 0: δ₀ = (1, 0) on U_n and ν = (0, 1) on W_n, so rank ≥ 2. S = ∅: K = 0 is invertible. Two points: Dist². Λ = 0: K = 0. | Scoped; controls added. |
| Conventions: nice | Infinite-dimensional ball over Spa C; T_S → S; (P¹)^♢ → Spd C; `B(C₃)` → S | The ball has dim.trg ∞, so it is not nice. T_S → S is locally proper of dim.trg 0, so nice. P¹ is proper of dim.trg 1, so nice. `B(C₃)` → S is not representable, so not nice, though fine. | Discriminates nice from fine. |
| Conventions: proper nice ⇔ proper + nice | q : S → `B(C₂)`; P¹ → Spd C; `B(C₃)` → S | q: base change C₂ × S → S, proper, dim.trg 0, representable, so both sides hold. P¹: both hold. `B(C₃)`: neither holds (it is not proper). | Equivalence holds. |
| VS9.3 standing hypothesis | X = P¹_C | Proper nice implies nice, so the deleted clause was redundant. | No loss. |
| Conventions and VS8.10: Fix(c) projections | S = X a point, C = S ⊔ S with fold legs, Λ = F₅ | Fix(c) = C, Δ′ = id_C, c′ = fold. c^!Δ_∗ = fold^! = Δ′_∗c′^!, the (BC2) square. Class (1, 2), integral 3, as in the VS8.10 Check. | Directions correct. |
| VS9.8 hypotheses | X = Spec k, c = id; X = perfection of A¹, c = id; X = perfection of A¹, c = graph of x ↦ x + 1 | Spec k: f ∘ c′ = id, proper. A¹ with c = id: c₁ = id is proper, but Fix(c) = X is not proper. x ↦ x + 1: Fix(c) = ∅, proper, so the local terms are 0. | The hypotheses are independent; new Check added. |
| VS10.1 tensor | T = {a, b}, M = Λ², U = T or {a}; T = ∅ | Over C(T, Λ): ranks 2 and 1, against rank 4 over Λ. T = ∅: 0 = 0. | Corrected formula holds. |
| Conventions: δ_G, χ_G | Affine group over ℚ_p, g = diag(p, 1); K = (1 + pZ_p) ⋉ Z_p | μ(Eg) = |p|·|p|⁻²μ(E) = pμ(E), so χ = p and δ = p⁻¹. gKg⁻¹ = (1 + pZ_p) ⋉ pZ_p, of index p, so δ = 1/p. Conjugation scales N = ℚ_p by p⁻¹ = δ; for N = 1 the conjugation modulus is 1 ≠ p⁻¹. | Consistent; the attribution is scoped. |
| Conventions: second witness (unchanged) | ℚ₂, Λ = F₅, g = diag(2, 1) | μ(gKg⁻¹) = δ_G(g) = χ_G(g)⁻¹ = 2⁻¹ = 3; 2·3 = 1 = μ(K); other direction 2·2 = 4. | Still holds with δ_G. |
| VS10.5 step 2 and API | G = C₂; G = Z_p; affine group with Λ = F₅, p = 2 | Finite and abelian groups give χ = 1. Affine group: χ = 2 ≠ 1, matching the VS10.5 Check and the VS11.3 Check (2·3 = 1). | Holds. |
| VS7.2 step 3 | Proper prespatial curve over Spd C; X = point; X = ∅ | 2·1 (fibres) + 1 (Krull dimension of the spectral space) = 3 = 3·dim.trg. Point: Krull dimension 0, cohomological dimension 0. ∅: all cohomology is 0. | Holds; §C8.44 has the needed hypotheses (spectral, finite Krull dimension, any abelian sheaf). |
| VS11.9 locator | HKW22 page markers | Lines 1837 and 1840 are on p. 38; lines 1961–1998 are on pp. 40–41. | Corrected. |

## Ownership, suppliers and sources

- **The smooth-class f_! (F01).** It is owned by `VStackSheavesAndLisseCategories` §VS0.2, which is earlier in the merge order (line 128) than this roadmap (line 129). This roadmap owns Rf_! for all fine maps of decent v-stacks, a strictly larger class, and states its agreement with the base pair in VS7.8. Supply runs in one direction only.
- **The spectral cohomological-dimension bound (F07).** It is owned by `DiamondEtaleCohomology` §C8.44 and is cited, not restated. GHW22's comparison with the maximal Hausdorff quotient remains part of VS7.2. No roadmap read (main, the board packages, the open heads through `roadmaps show` and `roadmaps grep`) states that comparison.
- **Nice maps (F03).** These are the `DiamondSixOperations` §S0.4 eligible maps. The Conventions bullet introduces a name and creates no second owner.
- **Supplier gaps.** No new gap. `design/plan.json` is unchanged, and its six gaps still match the six README contract lines.
- **Sources.** No new source. The HKW22 entry's `cited_for` now also names the Conventions (Definition 4.1.3). Its locator already covers §4, pp. 21–44. Cached texts read: HKW22 lines 1047–1096, 1751–1998, 2290–2420 and 3570–3590; GHW22 lines 725–745. No missing-reference request.

## Notes for the maintainer

- The README now names `DiamondEtaleCohomology` as a supplier (§C8.44). The dependency check accepts the edge: line 76 precedes line 129.
- `δ_SR` no longer appears; the Haar modular character of a general group is now the roadmap's own `δ_G`. No other roadmap cites the old symbol.
- No section id, target number or Lean name changed. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged.
- The review text contained no instructions, and nothing in it was suspicious.
