# FIX-DESIGN-DynamicalDegreesOfRationalMaps~2

Repair round for the review `REV-DESIGN-DynamicalDegreesOfRationalMaps` of the design (round 2). Files edited: `packages/DynamicalDegreesOfRationalMaps/design/README.md`, `packages/DynamicalDegreesOfRationalMaps/design/plan.json`, `packages/DynamicalDegreesOfRationalMaps/sources.toml`. Every finding was verified against the pinned Mathlib, the cached sources or the sibling package before any edit; all seven are right and all seven are applied.

## REV-DESIGN-DynamicalDegreesOfRationalMaps/F01 (P2) — applied

Verified: `Mathlib/AlgebraicGeometry/Birational/Birational.lean:181` at the pin defines `Birational (X Y : Scheme) : Prop := Nonempty (PartialIso X Y)`, a relation on the pair; `PartialIso.IsOver` is at line 55. Changed: Conventions gain a *Birational maps* bullet (a birational map is `φ.toRationalMap` for a `K`-partial isomorphism `φ`, its inverse `φ.symm.toRationalMap`, independent of `φ` by determination; witness `z ↦ z²`). §1.1 *Birationality* now reads "`e(f) = 1` iff `f^*` is an isomorphism iff `f` is birational (Conventions)", with the proof of the last step (`g` with `g^* = (f^*)^{−1}`, `g ∘ f = id`, `f ∘ g = id`, restriction to inverse isomorphisms on `U_0`, `V_0`) and the consequence `Scheme.Birational X Y`. The From Mathlib contract describes `Scheme.Birational` as the relation on the pair. `Scheme.Birational` leaves the *Needs* lines of §1.1 and §1.4 (replaced by `Scheme.PartialIso.IsOver`, `.symm`, `.toRationalMap`), the Layer 1 Dependencies say "partial isomorphisms", §1.4 says what `ν^{−1}` is. New §1.1 Check: `z ↦ z²` fails all three conditions while `Scheme.Birational ℙ¹ ℙ¹` holds. plan.json: 1.1 statement, api `topologicalDegree_eq_one_iff`, prerequisites of 1.1 and 1.4, new test `square_not_birational`. The uses of "birational `φ`" in §§1.2, 4.5, 5.3 now refer to the Convention.

## REV-DESIGN-DynamicalDegreesOfRationalMaps/F02 (P2) — applied

Verified: `packages/StableReductionPartII/README.md` line 67 records the same slug for a projective *integral* scheme; every use here (§3.1 *Reduction* on the normal `Ṽ`, §3.2 after reduction to integral `Z`) is the forward direction on an integral scheme. Changed: plan.json `gaps[0].needs` is now the one-sentence statement with hypotheses (projective integral `K`-scheme, line bundle, extension `K'/K`, "`(L · C) ≥ 0` for every integral curve `C ⊆ X` implies `(L_{K'} · C') ≥ 0` for every integral curve `C' ⊆ X_{K'}`"), `detail` keeps the StableReductionPartII attribution; the README contract line says the same. §3.1 *Field extension* consumes exactly that and proves the rest: the forward direction for a non-integral projective `X` by placing an integral curve `C' ⊆ X_{K'}` inside `(X_i)_{K'}` for an irreducible component `X_i` (not by reducing to curves: the README Check records that the line `y = tx` in `𝔸²_{K(t)}` dominates `𝔸²_K`, so the supplied statement is needed on integral `X` of every dimension), and the converse by field-extension compatibility and §2.1. §2.1 joins the §3.1 *Needs*. New §3.1 Check with `ℙ¹_ℂ` over `ℝ` (`2 = 1 + 1`). plan.json: api `isNef_baseChange_iff`, new test `complex_line_base_change`.

## REV-DESIGN-DynamicalDegreesOfRationalMaps/F03 (P3) — applied

Verified by computation: at `[0 : 0 : 1]` the local ring `K[x, y]_{(x,y)}/(x² + t y²)` has cotangent space of dimension 2, so `V` is not normal; the chart `y ≠ 0` is `K[x, z]/(x² + t) = K'[z]`; `χ(O_V(n)) = (n+1)(n+2)/2 − (n−1)n/2 = 2n + 1`. Old: "`V` is normal … `V ≅ ℙ¹_{K'}` … `χ_K(O_V(n)) = 2(n + 1)`". New: `V` integral, not normal at `[0:0:1]`; normalization `ℙ¹_{K'}` with the `K'`-point at infinity pinched; `H⁰(V, O_V) = K`, `K' = H⁰(Ṽ, O_Ṽ) = K(√t)`, `m = 1`, `c_V = 2`, `χ = 2n + 1`, `ν^*O(1) = O(1)`, `(O(1))_{V/K} = 2 = 2·1`; base change gives the double line `(x + √t·y)²`, value `2·1`. plan.json test `imperfect_line` updated.

## REV-DESIGN-DynamicalDegreesOfRationalMaps/F04 (P3) — applied

Verified: stacks-morphisms line 3865, Lemma 38.7 (2), needs `f` quasi-affine; `Ṽ_Ω → Ṽ` is not of finite type for infinite `Ω/K'`. Old: "for the finite morphism `W → V`, with base change of ample line bundles along `Ω/K'`". New: `W → V` is affine (closed immersion, base change of `Spec Ω → Spec K'`, finite `ν`), not finite in general, hence quasi-affine, and the lemma applied once to the composite gives (c). plan.json 2.4 statement already said only "ample pulls back to ample"; its locator is unchanged.

## REV-DESIGN-DynamicalDegreesOfRationalMaps/F05 (P3) — applied

Verified: kleiman2005 line 3803, Theorem B.27, assumes only `∫ c_1(H)² > 0`; SchemeAndStackFoundations §5.10 on main (line 7223) proves `hodge_index` for `H` ample. The first option of the repair is taken, with a route that proves the general case rather than leaving "nef" route-only. Old: "`H` a nef line bundle with `(H²) > 0`", route by perturbing `φ^*H` to the ample `φ^*H + tA'` (needs nef). New: "`H` a line bundle with `(H²) > 0`", no positivity; route: reduce by §2.4 (both sides scale by `c_S²`), alter to a smooth `S'`, prove the index theorem for `H' = φ^*H` from the ample one by the integer combination `E = (D'·A')H' − (H'·A')D'`, which has `(E·A') = 0` and `(E²) = x²(H'²) + y²(D'²) > 0` if `(D'²) > 0`; then apply it to `D'' = (H'²)φ^*D − (φ^*D·H')H'`, giving `(D''²) = (H'²)((H'²)((φ^*D)²) − (φ^*D·H')²) ≤ 0`; divide by `δ²`. *Needs* drops §§3.1, 3.2 and adds StableReduction Layer 2 (an ample class on `S'`). New Check: `Bl_p ℙ²`, `H = 2L + E`, `(H²) = 3`, `(H·E) = −1`; `D = E` gives `1 ≥ −3`, `D = L` gives `4 ≥ 3`. plan.json 3.4 statement, hypotheses, prerequisites, new test `nonnef_H`. §3.5 still applies §3.4 with the ample `A|_S`, a special case.

## REV-DESIGN-DynamicalDegreesOfRationalMaps/F06 (P3) — applied

Verified: for `k = 0` the sequence is constantly `1`, for `k = d` constantly `a^d`. Old: "not attained at `n = 1`". New: "For `1 ≤ k ≤ d − 1` … not attained at `n = 1`, where the value is `(d − k + 1)^k a^k > a^k`. For `k = 0` and `k = d` the constant is `1`, the sequence is constant, and the infimum is attained at `n = 1`." plan.json test `morphism` updated.

## REV-DESIGN-DynamicalDegreesOfRationalMaps/F07 (P3) — applied

Verified: "fulton" occurred only in the References. Changed: §4.1 *Pullback of cycles* cites "fulton1998 Theorem 1.4 and Proposition 2.5 for proper pushforward of cycles and the first Chern class operation with its projection formula, cited by locator"; the References entry and the manifest locator drop "§8.1", which no statement uses; `cited_for = ["§4.1"]` in `sources.toml` and the 4.1 locator in plan.json name it. The entry stays `uncertified`; no text was requested. The sub-item letter of the review's suggestion ("2.5 (c)") is not written because the text is not readable here.

## Checks

**Dependency gate** (design README, `--only DynamicalDegreesOfRationalMaps`):

```text
candidate: DynamicalDegreesOfRationalMaps is not in the merge order yet; checked as if placed after ArakelovGeometryAndAbelianHeightsPartII (the intake inserts it when its design is accepted)
depcheck: 226 roadmaps, 2131 edges, 0 problem(s)
```

No UPWARD or CYCLE line. No supplier-table row, *Needs* line or citation of a later roadmap was added; the only new cross-section inputs are §2.1 in §3.1 and StableReduction Layer 2 in §3.4, both earlier.

**Citations.** `roadmaps resolve` still lists one lead, "ArakelovGeometryAndAbelianHeightsPartII §0.1: no roadmap on main or in an open pull request". False positive: the package is at `packages/ArakelovGeometryAndAbelianHeightsPartII/README.md` on the board (§0.1 at its line 150, §0.3 at line 207) and at line 323 of the merge order; the resolver looks only at main and the open pull requests. Every cross-roadmap citation touched this round was re-read at its source: StableReductionPartII line 67 (board package), SchemeAndStackFoundations §5.10 on main (line 7223, `hodge_index` for ample `H`), §5.3 on main (line 6701).

**Pinned declarations opened.** `PartialIso` (Birational.lean:39), `PartialIso.IsOver` (55), `PartialIso.symm` (88), `PartialIso.toRationalMap` (166), `Birational` (181), all at the Mathlib pin of `lake-manifest.json`.

**Sources.** stacks-morphisms line 3862–3865 (Lemma 38.7, part (2) needs `f` quasi-affine); kleiman2005 line 3803–3808 (Theorem B.27, hypotheses: geometrically irreducible complete surface, `∫ c_1(H)² > 0`, no positivity). No new source; `needs-references.toml` not created.

**`#check` pass.** Not applicable: a design has no `Suggested.lean`.

**Ownership against open work.** The new text adds no construction: the derivations added to §3.1 and §3.4 are proved from the declared suppliers (the gap, CyclotomicClassGroupsAndStickelberger §4.3, §2.1, SchemeAndStackFoundations §5.10). The ownership grep of the previous rounds was not re-run; ownership against open pull requests was not re-checked this round.

## Adversarial pass on the changed statements

| statement | instances tried | values computed | result | change |
| --- | --- | --- | --- | --- |
| Conventions, birational map and its inverse | `z ↦ z²`; `id`; two partial isos `φ, φ'` with the same map | `K(z²) ⊊ K(z)`, no partial iso, `Scheme.Birational ℙ¹ ℙ¹` true; `id` satisfies all; `(φ.symm)^* = (f^*)^{−1} = (φ'.symm)^*` so equal by determination | sound | added |
| §1.1 birationality, three conditions | `z ↦ z²`; Cremona `σ`; `f^*` iso ⇒ `g` with `g^* = (f^*)^{−1}` | `e = 2`, not surjective, not birational; `e(σ) = 1`, `σ^* = σ^*{}^{−1}`; `(g∘f)^* = id ⇒ g∘f = id_X`, `U_0 = U' ∩ f_U^{−1}(V')` maps into `V_0` and back | sound | rewritten |
| §3.1 field extension, forward on non-integral `X` | `ℙ¹_ℂ ⊔ ℙ¹_ℂ` over `ℂ` from `ℙ¹_ℂ/ℝ`; `y = tx` in `𝔸²_{K(t)}` | each component degree `1 ≥ 0`; the line dominates `𝔸²_K` (`x`, `tx` algebraically independent), so curves of `X_{K'}` need the full-dimensional integral statement | sound | rewritten |
| §3.1 field extension, converse | `C = ℙ¹_ℂ` over `ℝ`, `L = O(1)`; a curve with a non-reduced base change | `(L·C)_ℝ = 2 = 1·1 + 1·1`; `Σ m_i (L_{K'}·C_i)` with `m_i ≥ 1` and each term `≥ 0` | sound | added |
| gap `needs` | `X` a point (`d = 0`); `X` integral curve | no curves on either side, vacuous and true; the statement is the one used on components | sound | reworded |
| §2.4 (c) affine, quasi-affine | `V = ℙ¹_ℚ`, `Ω = ℚ̄`; `V = ℙ¹_ℂ/ℝ` | `ℙ¹_{ℚ̄} → ℙ¹_ℚ` affine, not of finite type; `W → V` the identity scheme map, `O(1) ↦ O(1)` ample | sound | reworded |
| §2.4 Check 3 | `[0:0:1]`; chart `y ≠ 0`; `χ(O_V(n))`; degree of `ν^*O(1)` | `dim 𝔪/𝔪² = 2`; `K[x,z]/(x²+t) = K'[z]`; `(n+1)(n+2)/2 − (n−1)n/2 = 2n+1`; `2 = [K':K]·deg_{K'}` so `deg_{K'} = 1`; base change `2·1` | sound | rewritten |
| §3.4 statement without nef | `ℙ¹×ℙ¹`, `H = (1,1)`, `D = (1,−1)`; `Bl_p ℙ²`, `H = 2L+E`, `D = E, L`; `H = E_1` on `Bl_2` | `0 ≥ −4`; `(H²) = 3`, `(H·E) = −1`, `1 ≥ −3`, `4 ≥ 3`; `(H²) = −1 < 0` excluded, `0 < 1` | sound | hypothesis dropped |
| §3.4 route, index theorem for `H'` | `x = (D'·A')`, `y = −(H'·A')`; `x = 0`; `D' = 3E + H` on `Bl_1` | `(E·A') = (D'·A')(H'·A') − (H'·A')(D'·A') = 0`, `(E²) = x²(H'²) + y²(D'²) > 0` if `y ≠ 0`; `y = 0` contradicts §5.10 for `H'`; `(D'·H) = −3 + 3 = 0`, `(D'²) = −9 − 6 + 3 = −12 ≤ 0` | sound | added |
| §3.4 route, inequality from the index theorem | `D'' = (H'²)φ^*D − (φ^*D·H')H'`; `D = H` | `(D''·H') = 0`, `(D''²) = (H'²)[(H'²)(D²) − (D·H)²]`; `D = H` gives `D'' = 0`, equality | sound | added |
| §3.4 reduction scaling | `ℙ¹_ℂ/ℝ` with `c_S = 2` | both sides `(D·H)²` and `(D²)(H²)` scale by `4`; `((H|_W)²) = (H²)/2` | sound | added |
| §5.1 Check qualifier | `d = 2`, `a = 2`, `k = 0, 1, 2` | `k = 0`: constant `1`; `k = 1`: `4` at `n = 1`, limit `2`; `k = 2`: constant `4` | sound | qualified |
| §4.1 citation | — | by locator only, `uncertified` | — | citation added |

## For the maintainer

- The gap `numerical-nef-big-transfer` now carries a precise `needs` sentence (forward direction, projective integral `K`-scheme, curve-wise). It is the forward half of the StableReductionPartII contract under the same slug, so SchemeAndStackFoundations builds it once.
- §3.4 (Hodge inequality) is now stated for every `H` with `(H²) > 0`, as kleiman2005 Theorem B.27 has it; no consumer of this roadmap cited the nef form.
- No name another roadmap cites changed; this roadmap is still at the design stage.
