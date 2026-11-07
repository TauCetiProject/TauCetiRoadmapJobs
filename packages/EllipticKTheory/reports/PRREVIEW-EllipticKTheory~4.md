# Review of EllipticKTheory (pull request #1489 at fbe4d25)

**Verdict:** needs changes

:robot: AI review, full re-review of `TauCetiRoadmap/EllipticKTheory/` at `fbe4d255a6fbdd16c486f25b61fff8efe720b857`. Two P3 findings, neither blocking. Gate, dependency check, targeted build and direct elaboration all pass.

## Previous findings

The previous review (at `356badf`) had no findings. That review's repair of the earlier R01 still holds, because §1.2 is unchanged: README lines 538–546 make geometric integrality of an arbitrary Weierstrass cubic a target, using `WeierstrassCurve.isIntegral_projModel`.

The 161 changed lines repair a human review comment (H01) and a gate warning (P3 `[Fintype k]`). Both repairs are correct.

- **H01, repaired.** Under `gap:function-field-steinberg-homology`, the README used to ask ArithmeticKTheory §3.2 for finitely generated Steinberg homology on every smooth affine curve over a finite field. It now cites curveSteinbergHomology_fg (README lines 162–166 and 419–429) for the case of one closed point at infinity.
  - That target exists at the ArithmeticKTheory head: `TauCetiRoadmap/ArithmeticKTheory/README.md` lines 1193–1236, with the scope statement at lines 77–84.
  - The several-point case is now reached in §5.5 (lines 1494–1501) by the open-complement sequence `⊕_j K_n(k(x_j)) → K_n(R₀) → K_n(R) → ⊕_j K_{n−1}(k(x_j))`. That sequence is supplied by SchemeKTheoryOperations §3.5 with Cartan §2.6.
  - The narrowing is necessary. The primary source, the Quillen Oberwolfach report (p. 7, lines 226–233 of the fetched text), states the theorem only for a complete curve minus one point.
- **Gate warning, repaired.** `twistedFrobeniusKernel` and `card_twistedFrobeniusKernel` now take `[Finite k]` and use `Nat.card k` (Suggested.lean lines 47–75). Inside the definition, `letI : Fintype k := Fintype.ofFinite k` feeds Mathlib's `FiniteField.frobeniusAlgHom`, which needs `[Fintype K]` (`Mathlib/FieldTheory/Finite/Basic.lean`, lines 249 and 333). This mirrors Tau Ceti's `frobeniusTrace` (`TauCeti/AlgebraicGeometry/EllipticCurve/PointCount.lean`, lines 101–105). The carrier is unchanged because `Fintype.card k = Nat.card k`.

## R01 (P3) — The Suggested.lean docstring gives the wrong missing carrier for the K₀ headline

**Location.** `TauCetiRoadmap/EllipticKTheory/Suggested.lean`, lines 20–23: "The K₀ ring computation, localisation and coniveau sequences, … cannot be stated: the pins have no higher K-groups of schemes or fields, motivic K-theory tower or étale-cohomology carriers."

**Claim.** K₀ is not a higher K-group, so the reason given does not apply to the first headline listed. The acceptance-test rule asks the docstring to name, for each headline it cannot state, the carrier that is missing.

**Witness.** The pinned Tau Ceti has `FiniteLocallyFreeSheaf X` (`TauCeti/AlgebraicGeometry/VectorBundle/FiniteLocallyFree.lean`, line 103), `ExactStructure.fullSubcategory` (`TauCeti/CategoryTheory/Exact/ExtensionClosed.lean`, line 276, which needs `IsExtensionClosed`, line 90) and `ExactK0`. What is absent is closure of finite locally free sheaves under extensions, plus a product on K₀. The split exact structure gives a different group: Atiyah's non-split self-extension `F₂` of `O_E` satisfies `[F₂] = 2[O]` in K₀, but not in split K₀.

**Repair.** Name K₀ separately in the docstring, for example: "K₀ of a scheme is not available: Tau Ceti's `FiniteLocallyFreeSheaf` carries no exact structure at the pin (its closure under extensions in `X.Modules` is absent), so neither `ExactK0` of vector bundles nor its product exists; the split K₀ is a different group." Keep "no higher K-groups of schemes or fields, …" for the remaining headlines. README line 492 ("Scheme K-groups … lack carriers") is already accurate and needs no change.

## R02 (P3) — §5.5's argument that `Pic⁰` is finite misnames where the finiteness comes from and skips a step

**Location.** `TauCetiRoadmap/EllipticKTheory/README.md`, lines 1490–1493: "every class of degree at least the genus contains an effective divisor, a finite field admits only finitely many effective divisors of each degree, and translation by a class of degree `d` identifies `Pic⁰` with the degree-`d` classes."

**Claim.** Effective divisors live on `X_R`, not on the field. Their finiteness comes from `X_R` having finitely many closed points of each degree over a finite field. The argument also needs some class of a degree `d ≥ g` to exist, which the text uses without stating.

**Witness.** Take `X_R = ℙ¹_{𝔽₂}`, with `∞` the degree-two point `V(t²+t+1)` and `d = 2`. There are three rational points, so 6 effective divisors of degree 2 come from pairs of rational points (with repetition), plus 1 from the degree-two point. That gives 7 = `#ℙ²(𝔽₂)` effective divisors of degree 2, which fall into one class, so `Pic⁰ = 0`. The count is a count of points on the curve.

**Repair.** Replace the parenthetical with: "`Pic⁰(X_R)` is finite: by Riemann–Roch over the exact constant field, every class of degree `d ≥ g` contains an effective divisor; `X_R` has finitely many closed points of each degree over the finite field, hence finitely many effective divisors of degree `d`; and taking `d` a positive multiple of `deg ∞` with `d ≥ g`, translation by a multiple of `[O(∞)]` identifies `Pic⁰` with the degree-`d` classes." On the instance above (`g = 0`, `d = 2`), this repaired text gives the computed 7 divisors, 1 class and `Pic⁰ = 0`.

## Verified sound

**Gate and direction.** I reran the gate:

```text
gate EllipticKTheory: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The dependency check (`--movable`, against the merge order and main) printed:

```text
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. In the merge order, ArithmeticKTheory is line 127, SchemeKTheoryOperations line 34, KTheoryLowDegrees line 36 and EllipticKTheory line 368. The diff outside the folder is empty, and the worktree is clean.

**Build, signatures and padding.**
- I built the six imported `TauCeti.*` modules first (3320 jobs).
- `lake env lean` on Suggested.lean exits 0 in 15 s. `lake build TauCetiRoadmap.EllipticKTheory.Suggested` succeeds (9059 jobs). Both print exactly six `declaration uses sorry` warnings, at lines 71, 138, 146, 156, 201 and 213.
- A scratch copy with `#check @` for all 14 declarations elaborated. Every needed binder is in the declaration's own signature:
  - `twistedFrobeniusKernel`: `[Field k] [Finite k]`, `[Field L] [DecidableEq L] [Algebra k L]`, `i : ℕ`. No ellipticity, matching README §5.10.
  - `card_twistedFrobeniusKernel`: `[W.IsElliptic]`, `1 ≤ i`.
  - The three model theorems: `[NumberField F]`, `S.Finite`, `[W.IsElliptic]` and the `projModelOver` marking.
  - `tame_last_point`: `IsFunctionField k K`, `P₀.degree = 1`.
  - `blochCorrection`: a finite `T` forced by `hS`, the exact divisors `C(P) − C(O)` and the residue identifications.
  - Note, not a finding: `[DecidableEq k]` in `card_twistedFrobeniusKernel` is unused but harmless.
- One-tactic probe: each of the six theorems was tried with `simp`, `rfl`, `infer_instance`, `exact?` and `trivial` on scratch copies. All 30 attempts fail, so none of the six is padding.

**Headline theorems.** The README headlines are:
- the elliptic K₀ comparison;
- curve localisation and coniveau;
- the integral motivic tower with its Adams comparison;
- Harder finiteness, positive descent and the finite-field classification (order headline `finiteFieldK_orders`);
- minimal marked regular models, their terminality and uniqueness;
- the model-independent integral part and the vertical criterion;
- last-place reciprocity;
- Bloch's correction and quotient descent.

Six are stated in Lean: `card_twistedFrobeniusKernel`, `exists_minimalRegularProperModel`, `locallyMinimal_terminal`, `minimal_unique`, `tame_last_point` and `blochCorrection`. The rest need scheme K-groups, a motivic tower or étale cohomology, none of which is at the pins (the docstring wording for K₀ is R01). No stand-in, sorry'd data or `set_option` is present.

**Sources: the seeded sample.** Every target below was read at its locator. Weibel's printed page is the cache page minus 8, as the README says.

| Target | Locator, source line, finding |
|---|---|
| 1.1 | poonen lines 6048–6058, §5.7.6 (5.7.29), PDF p. 158: the same homogeneous cubic as `G` |
| 1.2 | stacks lines 211644 and 211655, Lemmas 53.9.2 (tag 0BYC) and 53.9.3 (tag 0BYD), p. 4448: irreducible ⇔ curve; `H⁰ = k`; genus `(d−1)(d−2)/2` |
| 2.2 | weibel line 8185, II.8.2.3, p. 147 (Y regular, so `Spec F` qualifies); stacks line 211350, Lemma 53.5.2 (tag 0BS6), Gorenstein: gives `χ(L) = deg L + χ(O)` |
| 2.7 | weibel line 30690, VI.6.4, p. 503, case n = 0: `ℤ⊕ℤ⊕J(X̄)` |
| 3.1 | weibel line 25026, V.6.12, p. 416 |
| 3.2 | weibel line 24544, V.6.6, p. 409; line 13461, III.6.3, p. 234: `∂{r,s} = (−1)^{v(r)v(s)} s^{v(r)}/r^{v(s)}`, the inverse of the README's convention as claimed |
| 4.1 | weibel line 25068, V.6.12.1 proof, p. 417; line 24726, V.6.8, p. 412; line 25130, V.6.13.2, p. 417 |
| 4.3 | weibel line 26555, V.9.5 and (9.5.1), p. 438; line 24664, V.6.7.1, p. 411 |
| 5.5 | Quillen report p. 7, lines 230–233: "finite for i > 0, finitely generated for i = 0" for one point; weibel line 19064, IV.6.9, p. 325; line 10938, III.2.5.1, p. 195; line 24624, V.6.6.4, p. 410; lines 30736–30778, VI.6.5–6.7, pp. 504–505; line 30606, VI.6 opening, p. 502; harder line 1589, Korollar (3.2.3), p. 175 ("Nach Quillen sind sie endlich erzeugt", line 1592) |
| 5.8 | weibel line 30748, VI.6.6(1)–(5), p. 504, i ≥ 2; line 30733, the paragraph before VI.6.5 (error recorded below) |
| 6.6 | stacks line 219788, 55.10.2 (tag 0C9Z), with the reversed arrow in its proof; line 216220, 54.16.1 (tag 0C5J); line 219798, Example 55.10.3; conrad lines 342–366, Definition 3.8, Example 3.9, Theorem 3.10, Remark 3.11, p. 8 |
| 6.9 | scholl line 317, Proposition 1.3.6 and its proof, p. 9: localisation diagram over `v ∉ S`; weibel VI.6 opening, p. 502 |
| 7.1 | ddz line 173, (3.1), p. 4: the same sign and orientation as `tameValue` |
| 7.3 | ddz lines 247–263, (3.5)–(3.6) and Remark 3.8, p. 6 |
| 7.8 | weibel lines 24609–24624, V.6.6.3–6.6.4, p. 410; line 13484, III.6.3.1, p. 234 |

**Library declarations opened at the pins** (Mathlib `6b7abb3`, Tau Ceti `a91d3aa`):
- Mathlib:
  - `FieldTheory/Finite/Basic.lean`, lines 249 and 333: `frobeniusAlgHom`;
  - `AlgebraicGeometry/Morphisms/Separated.lean`, line 288: `ext_of_isDominant_of_isSeparated`;
  - `RingTheory/Flat/TorsionFree.lean`, line 137: `IsDedekindDomain.flat_iff_torsion_eq_bot`;
  - `AlgebraicGeometry/Geometrically/Integral.lean`, line 40: `GeometricallyIntegral`;
  - `AlgebraicGeometry/Noetherian.lean`, line 271: `LocallyOfFinitePresentation.iff_locallyOfFiniteType`;
  - `AlgebraicGeometry/Modules/Sheaf.lean`, line 47: `Abelian X.Modules`.
- Tau Ceti:
  - `EllipticCurve/PointCount.lean`, line 101: `frobeniusTrace`;
  - `EllipticCurve/Scheme/Integral.lean`, line 60: `isIntegral_projModel`;
  - `EllipticCurve/Projective/Chart/BaseChange.lean`, line 97: `chartRingBaseChangeEquiv`;
  - `EllipticCurve/Affine/FunctionField/PointPlace.lean`, lines 196 and 334: `degree_infinity`, `pointEquivDegreeOnePlace`;
  - `FieldTheory/FunctionField/Place/Residue.lean`, lines 113 and 140: `residueUnit`, `normResidue`;
  - `WeilDivisor/Scheme/Picard.lean`, line 253: `classGroupAddEquivLineBundleClass`;
  - `Cohomology/EulerCharacteristic.lean`, line 320: `eulerCharBelow_eq_add`;
  - `CategoryTheory/GrothendieckGroup/Abelian.lean`, line 242: `AbelianK0.lift`;
  - `AlgebraicGeometry/Fibers.lean`, line 345: `genericFiberTowerIso`;
  - `EllipticCurve/HasseBound.lean`, line 65: `hasse_bound`;
  - `VectorBundle/FiniteLocallyFree.lean`, line 103, and `CategoryTheory/Exact/ExtensionClosed.lean`, lines 90 and 276 (for R01).

That is 20 declarations in 18 files. The citation resolver, rerun, reports no missing citation or name.

**Cross-roadmap citations resolved.**
- ArithmeticKTheory, at its open head `e18368e`:
  - §1.1 (line 566);
  - §2.1, the `O_{F,S}` sequence indexed by `v ∉ S` (lines 704–720);
  - §2.4, `K_2(O_{F,S}) → K_2(F)` injective (lines 898–910);
  - §3.2: the criterion (lines 1147–1159) and curveSteinbergHomology_fg with its non-circularity clause (lines 1193–1236);
  - §3.3 (lines 1268–1272);
  - §3.4, positive even groups finite (lines 1428–1435);
  - its consumer note on EllipticKTheory's reduction (lines 5043–5047).
- SchemeKTheoryOperations, at #1229:
  - §2.6, regular Cartan (line 714);
  - §3.5, dévissage, the fibre sequence `G(Z)→G(X)→G(U)` and the supported regular Cartan map (lines 966–1016);
  - §3.7 (lines 1117–1145).
- KTheoryLowDegrees, at #1248: §12.2 (line 1468), §12.3, `(r,d) = (a+b,−b)` (line 1494), and §12.4, the pointed elliptic K₀ (line 1526).

These are 13 citations across three roadmaps.

**Ownership and duplication.**
- `roadmaps grep` finds curveSteinbergHomology_fg and curve finite generation only in ArithmeticKTheory and here.
- ArithmeticKTheory's scope leaves the several-point reduction to its consumers, so there is one owner of each piece.
- FunctionFieldArithmetic's "Harder finiteness" is the automorphic-forms theorem, a different object.
- No other Lean file declares the names `twistedFrobeniusKernel`, `RegularProperModel`, `SymbolCandidate`, `tameValue`, `blochCorrection` or `tame_last_point`. K2SymbolsBrauer's `tameUnit` is a different carrier (a valuation, returning `Fˣ`).
- `overlaps.md` lists no dropped or conflicting ids.
- Ownership was checked against the open-request checkouts the brief lists and the `roadmaps` index.

**Declared gaps.**
- Three remain declared under the same slug in `design/plan.json` and in the README: field-motivic-comparisons (README line 434), motivic-k-comparisons (line 350) and general-scheme-adams-pullback (line 345). Each is a single, hypothesis-bearing request to an earlier supplier.
- `gap:function-field-steinberg-homology` is no longer used by the README. It is superseded by the supplied curveSteinbergHomology_fg together with §5.5's localisation step.
  - Worker note, not a finding about the folder: the plan still carries that slug, with a "needs" sentence for every smooth affine curve. That form is broader than what Quillen states, so it should not be announced again.

**Adversarial table** (values computed for this review; `E₋` is `y²+y=x³−x` and `E₊` is `y²+y=x³+x+1`, both over `𝔽₂`).

| Statement | Instance | Values computed | Result | Change |
|---|---|---|---|---|
| `card_twistedFrobeniusKernel` | `E₋`, i = 1, 2 | `#E = 5`, `a = −2`; `1+4+8 = 13`, `1+8+32 = 41` | matches README §5.11 | none |
| same | `E₊`, i = 1, 2 | no affine points, `a = 2`; `1−4+8 = 5`, `1−8+32 = 25` | matches | none |
| same | `y²=x³−x/𝔽₃`, i = 1 | points (0,0), (1,0), (2,0), O; `a = 0`; `1+27 = 28 ≡ 1 mod 3` | prime to p | none |
| same, i = 0 control | `y²+xy=x³+1/𝔽₂` | `#E = 4`, `a = −1`, `1−a+q = 4`; `B₀` = odd part, order 1 | `1 ≤ i` needed | none |
| same, separability | `1 − q^iπ` | pullback of ω is `1 − q^i·0 = 1`; `D_i ≡ 1 mod p` | `B_i` is the whole kernel | none |
| `[Finite k]` change | `k = 𝔽₄` | `Fintype.card = Nat.card = 4`; Frobenius is `x ↦ x⁴` | same carrier | none |
| Steinberg contract | `𝔽₂[t,t⁻¹]`, rank 1 | `Aut = {t^k} ≅ ℤ`, `H₁ = ℤ` | one point needed for finiteness | none |
| same, one point | `𝔽₃[t]`, rank 1 | `Aut = C₂`: `H₀ = ℤ`, `H₁ = C₂`, `H₂ = 0` | finite for i > 0 | none |
| curveFiniteGeneration, several points | `R₀ = 𝔽₂[t]`, `x₁ = (t)` | `1 → K₁(R) → ℤ → ℤ`, last map `[𝔽₂] ↦ 1−1 = 0` | `K₁(R) ≅ ℤ`, generated by t | none |
| criterion: Pic hypothesis | `ℙ¹_{𝔽₂}` minus the quadratic point | `Pic = ℤ`, `deg ∞ = 2`, so `Pic(R) = ℤ/2` | finite, nonzero | none |
| `Pic⁰` finiteness | `ℙ¹_{𝔽₂}`, d = 2 | 6 + 1 = 7 effective divisors; 1 class; `Pic⁰ = 0` | count is on the curve | R02 |
| reciprocity sequence | `ℙ¹_{𝔽₂}` | `𝔽₂^× = 1`; `SK₁ ⊆ (i_{x₀})_*𝔽₂^× = 1` | exact | none |
| degree-one zero-cycle | degrees 2, 3 | `3 − 2 = 1`; one quadratic point gives ×2 | Bézout needed | none |
| §1.1 cover | `Y = Z = 0` | `G = −X³ ⇒ X = 0` | two charts suffice | none |
| §1.2 genus | cubic, d = 3 | `(3−1)(3−2)/2 = 1`; `χ = 0` | arithmetic genus | none |
| §1.2 cusp | `y² = x³` over 𝔽₂, 𝔽₃, 𝔽₅ | partials `(x²,0)`, `(0,−y)`, `(−3x²,2y)` vanish at 0; ring `K[t²,t³]` | integral, singular | none |
| §2.2 constants | `ℙ¹_{𝔽₄}` over `𝔽₂` | `h⁰ = 2`, `g = 0`, `χ = 2`; `deg+1−g = 1`; O(pt): `h⁰ = 4 = 2+2` | `χ = deg + χ(O)` | none |
| §2.2 | `ℙ¹`, O(n), n = −1, 0, 1 | `χ = 0, 1, 2` | `χ` is not the degree | none |
| §2.7 | `y²=x³−x/𝔽₅` | 7 affine points + O; for P = (2,1): λ = 3, 2P = (0,0), −P = (2,4) | `ℤ²⊕ℤ/4⊕ℤ/2`; `[O_P]−[O_O] = (0,0,P)` | none |
| §3.1 | `div(t²+1)` on `ℙ¹_ℚ` | `[x] − 2[∞]`, degree 0 | none | none |
| §3.1–3.2 tame | `{t,t²+1}` | at 0: 1; at `V(t²+1)`: i; at ∞: `(t²+1)/t² → 1`; `N(i) = 1`; swapped: −i | convention fixed | none |
| §3.2 vs Weibel | `{π,u}` | DDZ convention gives `ū⁻¹`; Weibel III.6.3 gives `ū` | inverse, as stated | none |
| §4.1 | `ℙ¹_{𝔽₃}`, `𝔸¹_{𝔽₃}` | `K₁ = C₂²`, image `C₂`, `SK₁ = C₂`; `SK₁(𝔽₃[t]) = 0` | non-affine `SK₁` ≠ 0 | none |
| §4.3 | `ℙ¹_ℚ`, n = 3 | `F¹ = ℤ/48`, `ker ∂₃ = ℤ/48`, `K₃ = (ℤ/48)²`; on 𝔸¹, `F¹ = 0` | two columns | none |
| §5.8 | `y²=x³−x/𝔽₃` | `αβ = 3`; untwisted det `1/3`; j = 2: `3⁴/3 = 27` | contragredient twist | none |
| §5.8 range | q = 2, j = 2 | eigenvalue sizes 4, `2√2`, 2; none is 1. At j = 0: `H¹(Ẑ,ℚ_ℓ) = ℚ_ℓ` | `j ≥ 2` essential | none |
| §6.1–6.2 regularity | 37a1 at (5,18) | `F = 222 = 6·37`; `F_x = −74`, `F_y = 37` | `F ∉ m²`: regular | none |
| same | 11a1 at (5,5) | `F = 30 − 30 = 0`; `F_x = −55`, `F_y = 11` | `F ∈ m²`: not regular | none |
| `exists_minimalRegularProperModel` | 37a1, S = ∅ | regular Weierstrass model, `I₁` at 37 irreducible, no (−1)-curve | minimal | none |
| `locallyMinimal_terminal` | X = M; `Bl_P M`; genus 0 | `Hom(M,M) = {id}`; `Hom(Bl,M) = {blow-down}`; `diag(π,1)` has odd determinant valuation | genus > 0 needed (from W.IsElliptic) | none |
| `minimal_unique` | involution `(x,−y−1)` | generic (0,0) ↦ (0,−1) ≠ (0,0) | only id is marked | none |
| §6.6 source | Stacks 55.10.2 | statement `Y → X`; proof writes `X → Y` | misprint (below) | none |
| §6.9 | good fibres over 𝔽₂, 𝔽₃ | `K₁` orders `(2−1)² = 1`, `(3−1)² = 4`; ⊗ℚ gives 0 | no condition | none |
| §7.1 | `{−1,f}` with ord f = 1, 2 | `(−1)¹ = −1`, `(−1)² = 1`; both 1 in characteristic 2 | sign needed | none |
| §7.1 | `tameValue P f f` | `(−1)^{a²} = (−1)^a` | holds | none |
| `tame_last_point` | 36a1, `{x−1,−1}` | `F_y = 2y ≠ 0` at (1, ±√2); value −1, norm 1; value 1 at O | degree one needed | none |
| same | 11a3, `{x,y}+{−1,x}` | `{x,y}` gives −1, −1, 1 and `{−1,x}` gives −1, −1, 1 at (0,0), (0,−1), (1,0); value at O is `y²/x³ → 1` | O forced to 1 | none |
| `blochCorrection` | 11a3, C = 5, f = x, g = y | `c_P = −1, −1, 1, 1`; `c^5 c^{−5} = 1`; at O, `t_O Πc_P = 1`, so `t_O⁵ Πc_P⁵ = 1` | holds | none |
| same, sign | c = 2, C = 3 | `2³·2⁻³ = 1`; reversed order gives `2⁶ = 64` | orientation fixed | none |
| same, C = 0 | `f_P` constant | every tame value of two constants is 1 | true | none |
| §7.3 | u = 1/3 at 3 | `4vw = −3(v²−1)(w²−1)`; `ord_η v = 1`, `ord_η w = 0`; value `1/w̄` | infinite order, not integral | none |
| §7.3 | `{c,d}` with `c, d ∈ O_k^×` | all vertical orders 0, so every value is 1 | integral | none |
| §7.8 | `y²=x³−2x`, `β = {x−√2,y}` | at (√2,0): 1/4; at (−√2,0): −2√2 ↦ 2x₀; at `Q₂`: `1/x₀ = (1/4)(2x₀)` | norm-residue formula holds | none |
| docstring K₀ | Atiyah `F₂` on E | `[F₂] = 2[O]` in K₀, not in split K₀ | wrong missing carrier named | R01 |

## Not verifiable

- **bloch** (p. 514) and **young** (Lemma 3.1, Theorem 3.3) are settled as waived. **geisser-levine** and **grayson** are settled as uncertified. Their locators are cited as recorded; no new request was made.
- The Quillen Oberwolfach report, cited in README §5.5 and References, is not in `packages/EllipticKTheory/sources.toml`. I fetched it through the sources service (institutional, from the Oberwolfach Digital Archive) into a scratch copy; this review edits no manifest. Worker action: record it under one key (`quillen-owr-1974` or `quillen-oberwolfach`), with locator "p. 7, second theorem", cited for §5.5.
- That a published correction of Weibel V.3.11 exists, which §5.1 cites, was not verified.

## Source issues

- **Error** in weibel at the paragraph before Example VI.6.5, printed p. 504: the source says the étale cohomology of X with `ℚ_ℓ(i)` coefficients equals the Galois invariants of that over `X̄` for every i; it should be restricted to `i ≠ 0`, since at i = 0 the group `H¹(G, ℚ_ℓ) = ℚ_ℓ` survives; affects a stated result.
- **Error** in weibel at Example VI.6.5, printed p. 504: the source says `H¹(X, ℚ_ℓ(i)) = 0` for all i; it should say this for `i ≠ 0`, because `H¹(X, ℚ_ℓ)` contains `H¹(𝔽_q, ℚ_ℓ) = ℚ_ℓ`; affects a stated result.
- **Gap** in weibel at Chapter VI §6 opening, printed p. 502: the source says Weil reciprocity alone gives `coker ∂ = 𝔽_q^×`; it should add the bound on SK₁ from Bass–Milnor–Serre and coprime-degree closed points, since reciprocity only gives a surjection; affects the proof.
- **Misprint** in weibel at the proof of Theorem VI.6.4, printed p. 504: the source writes the source of the edge map as `K_{2i}(X; ℤ/ℓ^∞)`; it should be `K_{2i}(X̄; ℤ/ℓ^∞)`, the geometric curve; affects nothing.
- **Gap** in weibel at the paragraph before Theorem IV.6.9, printed p. 325: the source says Quillen's Steinberg-homology hypothesis was verified for affine curves; the primary report verifies it only for a complete curve minus one point, the rest following by localisation; affects nothing.
- **Misprint** in stacks at the proof of Lemma 55.10.2 (tag 0C9Z), p. 4596: the source's first sentence names a morphism from the minimal model to the arbitrary model; it should go from the arbitrary regular model to the minimal one; affects nothing.
- **Misprint** in dgjk at the proof of Proposition 2.2(1), p. 8: the source gives the discriminant of `y² = x(x+1)(x+u²)` as `16u⁴(u²−1)⁴`; it should be `16u⁴(u²−1)²`, from the root differences 1, u² and u²−1; affects nothing.
