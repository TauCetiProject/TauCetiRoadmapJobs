# FIX-PKG-VStackSheavesAndLisseCategoriesPartII~6

Review settled: `REV-PKG-VStackSheavesAndLisseCategoriesPartII~5` (one finding).

## F01 (P3) — applied

Verified. The VS6.1 Check claimed non-representability and fineness of `[S/G_S] → S` for any nontrivial locally profinite G and an unspecified S. For S = ∅ the structure map is `id_∅`, which is representable. Fineness is supplied only under the hypotheses of HKW22 §4.2: S a geometric point (HKW22 line 1209–1214, p. 25) and G locally pro-p with a free action on a separated locally spatial diamond that is strictly surjective and cohomologically smooth over S (HKW22 lines 1229–1233, Example 4.2.2; line 1294, Example 4.2.4).

Change (`packages/VStackSheavesAndLisseCategoriesPartII/README.md`, VS6.1 Checks): "For a nontrivial locally profinite group G … not representable …, although it is fine (VS6.6)" → S = Spd C, G = C₂. The base change along id_S is `[S/G_S]`, whose trivial torsor has automorphism group C₂, so it is not 0-truncated. The stack is decent and the map is fine via the chart q : S → `[S/G_S]` (finite étale C₂-torsor) and the square with top map id_S (VS6.6; the case G = C₂ of VS10.6 and VS10.9). The S = ∅ case, where `[∅/G_∅] = ∅` and f = id_∅ is representable, is kept as the contrasting control.

The fineness argument is given directly from the VS6.2 and VS6.6 definitions. VS10.6 and VS10.9 are cited only as the general case, so the Check does not depend on a later layer.

**The same pattern elsewhere.** These are Checks about `[S/G_S]`, `B(C₃)` or `[S/(Z/2)]` that left S, or G, unspecified, although their truth or meaning needs S to be a nonempty geometric point and G to be as in VS10.6. Each now states those hypotheses:

- Summary paragraph (base-roadmap stopping point): "non-representable maps such as [S/G] → S" → "[S/G_S] → S for a geometric point S and a nontrivial locally pro-p group G".
- Conventions (Λ, C(T, Λ), Haar paragraph): "S denotes a geometric point … when Layer VS10 or VS11 says so". The convention now also defines C and k, and covers "a Check about [S/G_S] or [T_S/G_S]".
- VS6.2 Check (point of `[S/Z_p]` is not a chart). For S = ∅ the point is id_∅, which *is* a chart, so the Check was false there. Now "S a geometric point".
- VS6.3 Check (Artin): "S a geometric point and G as in VS10.6".
- VS6.6 Check and the VS6 Examples (GL_n(Z_p), fine): "S a geometric point".
- VS6.8 Checks and the VS6 Examples:
  - GL_n(Z_p) smooth: "S a geometric point".
  - The Z_p point is fine but not smooth: this was false at S = ∅. It is now scoped, with the ∅ case (id_∅ is smooth) as the control.
- VS6.10 Check (α_g action): "S a geometric point, G as in VS10.6".
- VS6.11 Check (`[S/Z_p] → S` not proper). This was false at S = ∅, since id_∅ is proper. It is now scoped and gives the fibre Isom(q, q) = Z_p × S of the relative diagonal.
- VS7.5, VS7.6, VS7.8 (first Check), VS7.10 and VS7.11 Checks: "S a geometric point, G as in VS10.6". VS7.11's subscripts now read `[S/G_S]`.
- VS7.7 Check (`B(C₃) → S` fine, not proper, with H^(-1) values). This was false at S = ∅, where all values are 0. Now "S a geometric point".
- VS7.8 second Check (Z_p point, regular representation): "S a geometric point".
- VS8.6 Check and the VS8 Examples (tr(id_X) = [G_S//G_S]): "G as in VS10.6" is added. Without it, X need not be an object of Corr_S.
- VS8.11 Check (`In_S([S/(Z/2)]) ≠ X`). This was false at S = ∅, where both are empty. Now "S a geometric point", with the ∅ control.

No theorem statement, target, API bullet, Needs line or layer changed.

## Checks run

- **`Suggested.lean` elaboration.** `lake env lean packages/VStackSheavesAndLisseCategoriesPartII/Suggested.lean`, run from the content checkout: exit 0, no output, no warnings. The file is unchanged this round. It has no `TauCeti.*` import, so no module build was needed.
- **`#check @name` audit.** `Suggested.lean` has zero named declarations, because no headline is statable at the pins and the module docstring says why for each. The audit therefore has no inputs, and no binder changed.
- **Dependency gate** (`gate --depcheck … --movable`), complete output, exit 0. No UPWARD, CYCLE or moved line:

  ```text
  depcheck: 206 roadmaps, 1902 edges, 0 problem(s)
  ```

- **Citation resolver** (`roadmaps resolve` on the README): no cross-roadmap citation and no backticked Lean name found nowhere.
- **Style scan of the README:** no LaTeX delimiters and no process vocabulary.

## Adversarial pass on every changed statement

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| VS6.1 Check, `[S/C₂] → S` not representable | S = Spd C, G = C₂, test object T = S | `[S/C₂] ×_S S = [S/C₂]`; Aut(trivial torsor) = C₂, of order 2, against order 1 for a v-sheaf. | Not 0-truncated, so not representable: holds. |
| Same | S = ∅, G = C₂ | G_∅ = ∅, `[∅/∅]` = ∅, f = id_∅; the only test object over ∅ is ∅, whose fibre is ∅, a diamond. | Representable: the control is kept in the Check. |
| VS6.1 Check, decency and fineness | S = Spd C, G = C₂, X = C₂ × S = S ⊔ S | The chart (C₂ × S)/C₂ = S → `[S/C₂]` is q. Base change of q along T → `[S/C₂]` is a C₂-torsor P → T: 2 sheets, finite étale, surjective. f∘q = id_S, top map id_S of dim.trg 0. Diagonal fibres are C₂-torsors over the equaliser T ×_(S×S) S, a closed subdiamond since Spd C is separated. | Decent and fine: holds. C₂ is locally pro-p for every p, since {1} is open and pro-p. |
| VS6.2 Check, Z_p point not a chart | S = Spd C; S = ∅ | Spd C: base change is Z_p × S → S, whose dualizing sheaf Dist(Z_p, F_ℓ) is not invertible (the germs of δ₀ and of the Haar measure at 0 are independent: 2 ≠ 1). ∅: id_∅ is a chart. | Needed a nonempty S: scoped. |
| VS6.3 Check, Artin | S = Spd C, G = GL_n(Z_p) ⊂ GL_n(Q_p) closed | Chart GL_n(Q_p)^♢ × S / G_S → `[S/G_S]` is smooth and surjective (HKW22 footnote 3, line 1241). | Holds under the VS10.6 hypotheses. |
| VS6.6 and VS6.8 Checks, GL_n(Z_p) | S = Spd C; S = ∅ | Spd C: fine and smooth (HKW22 Example 4.2.4, line 1294); GL_n(Z_p) is locally pro-p via 1 + pM_n(Z_p). ∅: id_∅ is fine and smooth. | True in both cases; scoped to match the source. |
| VS6.8 Check, Z_p point fine but not smooth | S = Spd C; S = ∅ | Spd C: the fibre Z_p × T is proper of dim.trg 0, so fine, and not smooth (as above). ∅: id_∅ is smooth. | False at ∅: scoped, ∅ added as control. |
| VS6.10 Check, α_g action | S = Spd C, G = C₂, M = sign over F₃ | α_σ acts on q^*M = F₃ by −1, and α_σ∘α_σ = α_1 = id gives (−1)² = 1. | Holds; scoped. |
| VS6.11 Check, `[S/Z_p] → S` not proper | S = Spd C; S = ∅ | Spd C: the fibre of Δ over (q, q) is Isom(q, q) = Z_p × S, with infinitely many points over the geometric point, so Δ is not injective. ∅: id_∅ is proper. | False at ∅: scoped. |
| VS7.5 and VS7.6 Checks, Rf_! and (P4) | S = Spd C, G = C₃, p = 2, Λ = F₃ | H^(-1)(Rf_!Λ) = H₁(C₃, F₃) = F₃. (P4): the dual of H₁ is F₃, equal to H¹(C₃, F₃ ⊗ Haar^∗) = F₃. | Holds; scoped. |
| VS7.7 Check, `B(C₃)` | S = Spd C; S = ∅ | Spd C: H^(-1)(Rf_!) = F₃ while H^(-1)(Rf_*) = 0. ∅: both 0. | False at ∅: scoped. |
| VS7.8 Checks | S = Spd C, G = Z_p, Λ = F_ℓ; Λ = 0 | Haar(Z_p, F_ℓ) is free of rank 1, so invertible. Rq^!Λ ⊗ C(Z_p, Λ) ≅ C(Z_p, F_ℓ), of countable dimension. Rq^!C(Z_p, Λ) = Hom_(Z_p)(C(Z_p, Λ), C(Z_p, Λ)) ≅ Dist(Z_p, F_ℓ) by evaluation at 0, of uncountable dimension. So the map is not an isomorphism. Λ = 0: 0 → 0. | Holds; scoped. |
| VS7.10 and VS7.11 Checks | S = Spd C, G = Z_p | K_(X/S) = Haar^∗ of rank 1. K_Δ = (Haar^∗)^(-1) = Haar. Haar^∗ ⊗ Haar = Λ, matching Λ_Y in VS7.11. | Holds; scoped. |
| VS8.6 Check and VS8 Examples, tr(id) | S = Spd C, G = C₂ | In_S(X) = `[C₂/C₂]` (trivial conjugation) = 2 copies of `[S/C₂]`. X decent and fine over S (VS10.6, VS10.9). | Holds; G hypothesis added. |
| VS8.11 Check, `In_S([S/(Z/2)])` | S = Spd C; S = ∅ | Spd C: 2 components. ∅: In_S(X) = ∅ = X. | False at ∅: scoped, with ∅ control. |
| Conventions, geometric point | Spd C, Spd k | Both are decent (VS6.5(iii)). The convention now names C and k and the Checks it governs. | Consistent with VS6.5, VS10 and VS11. |
| Summary sentence | S = Spd C, G = C₂; S = ∅ | As in the VS6.1 row. | Scoped to a geometric point. |

The Checks and examples of VS10.6 and VS10.9 that use the same objects were recomputed and are unchanged:

- C₂ and GL_n(Z_p) satisfy the VS10.6 hypotheses.
- K_(`[S/Z_p]`/S) = Haar(Z_p, Λ)^∗ is free of rank one.
- For finite G of invertible order, Rf_* = Rf_! = (−)^G.

## Ownership, suppliers and sources

- This round adds no object, target or supplier. Every edit restricts an existing Check to hypotheses already stated in VS10.6 and VS10.9, so no new ownership question arises. The supplier contracts and the six declared gaps (`design/plan.json`) are unchanged.
- No source was added. HKW22 was read at lines 1206–1300 of its cached text. `sources.toml`, `metadata.toml`, `design/plan.json` and `Suggested.lean` are unchanged.
- No citation, section id or Lean name that other roadmaps cite was changed.

## Notes for the maintainer

- The review's verified-sound tables and its "Source issues" list contain no instructions. Nothing in the review text was suspicious.
- The repair touches Checks only, so it has no consequence for consumers of this roadmap.
