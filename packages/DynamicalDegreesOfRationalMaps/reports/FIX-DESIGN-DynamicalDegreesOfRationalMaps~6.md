# Repair of DynamicalDegreesOfRationalMaps (design, round 6)

The review has one finding, F01 (P3). I verified it and applied it. The review calls it R01 in its closing summary. The pattern search found one use of flat base change of scheme-theoretic images: §1.4 and its plan target. No other section of the roadmap base-changes a scheme-theoretic image. §§4.3 and 5.3 consume `Γ_{f_{K'}} = (Γ_f)_{K'}` through §1.4 and need no change. No source was fetched, `sources.toml` is unchanged, and no roadmap edge was added: AlgebraicModuliForArithmeticGeometry was already a supplier (§1.4).

## F01 (P3) — applied

**Change.** Old: §1.4 cited flat base change of images only to stacks-morphisms Lemma 26.16. New: AlgebraicModuliForArithmeticGeometry §5.4 (scheme case) is cited in Scope, the supplier contract, §1.4 and its *Needs*, Layer 1 *Dependencies*, and the plan. The route also names the pinned declarations, and a non-flat negative-control Check was added.

**Verification.**
- AlgebraicModuliForArithmeticGeometry, at the head of its open pull request, is earlier in the merge order (`merge-order/ORDER.txt` line 35) and already a supplier here. Its §5.4 defines the schematic image of a quasi-compact morphism of locally Noetherian DM stacks. Two of its API bullets are what §1.4 needs: the image commutes with flat base change, and for a scheme morphism the construction is exactly Mathlib's `Scheme.Hom.image`. Its Checks include the review's control, `Spec ℤ[1/p] → Spec ℤ` reduced mod p.
- The hypotheses hold in §1.4. `U` is open in a projective variety, hence Noetherian, so `γ_f` is quasi-compact. `Spec K' → Spec K` is flat. `X ×_K Y` and its base change are of finite type over a field, hence Noetherian, for every extension `K'/K`, including one of infinite transcendence degree.
- The locator is correct. stacks-morphisms line 2198 (Lemma 26.16, tag 081I) needs only that the base change is flat and the morphism quasi-compact.
- **Pinned route (an addition to the asked repair).** The theorem itself is not at the pins, but every step of a short proof is. I checked each step there:
  - `γ_f` factors as `toImage` followed by `imageι` (Mathlib `Scheme.Hom.toImage_imageι`, Subscheme.lean).
  - `toImage` is scheme-theoretically dominant: Tau Ceti `AlgebraicGeometry.Scheme.Hom.isSchemeTheoreticallyDominant_toImage` (SchemeTheoreticImage/Basic.lean:65, under `[QuasiCompact f]`).
  - It stays so after flat base change: Mathlib `IsSchemeTheoreticallyDominant.of_isPullback` (Morphisms/SchemeTheoreticallyDominant.lean:112, hypotheses quasi-compact and `Flat`). The class (line 37) is `f.ker = ⊥`.
  - The kernel of the composite is the kernel of the base-changed immersion: `Scheme.Hom.ker_comp` (IdealSheaf/Functorial.lean:163, `(f ≫ g).ker = f.ker.map g`) and `Scheme.IdealSheafData.map_bot` (line 139, `map ⊥ f = f.ker`).
  - That kernel is the pulled-back ideal: `Scheme.IdealSheafData.ker_fst_of_isClosedImmersion` (line 79, `(pullback.fst f i).ker = i.ker.comap f`), with `ker_subschemeι` (Subscheme.lean:574).

  Naming this route in *Needs* (as an alternative to the supplier) means an implementer is not blocked behind an open roadmap. Mathlib does not state flat base change of `Scheme.Hom.image` itself. I searched IdealSheaf/ and Morphisms/ at the pin, and Tau Ceti's SchemeTheoreticImage/ and Morphisms/Flat/. Tau Ceti's Uniqueness.lean covers locally closed images through factorizations, not this statement.

**Repair, by place.**
1. Scope and ownership, imports: a new bullet stating the scheme case, citing AlgebraicModuliForArithmeticGeometry §5.4.
2. Exact supplier contracts:
   - From Mathlib: a new bullet for `IsSchemeTheoreticallyDominant`, `IsSchemeTheoreticallyDominant.of_isPullback`, `Scheme.Hom.ker_comp`, `Scheme.IdealSheafData.map_bot`, `Scheme.IdealSheafData.ker_fst_of_isClosedImmersion` and `Scheme.IdealSheafData.comap`, with files and lines.
   - From Tau Ceti: the `isReduced_image` bullet now also names `isSchemeTheoreticallyDominant_toImage` (line 65).
   - From AlgebraicModuliForArithmeticGeometry: a new §5.4 bullet, consumed for schemes only. Flat base change is assumed; nothing is assumed for non-flat base change.
3. §1.4: the route states the supplier and its hypotheses as instantiated, then the pinned route. *Needs* adds the supplier and, as an alternative, the pinned names.
4. §1.4 Checks: a new negative control, `𝔾_m → 𝔸¹` base-changed along the origin (computed below).
5. Layer 1 Dependencies: adds the flat base change of scheme-theoretic dominance (Mathlib), scheme-theoretic dominance of images (Tau Ceti), and AlgebraicModuliForArithmeticGeometry §5.4.
6. plan.json:
   - The supplier entry for AlgebraicModuliForArithmeticGeometry: sections `§1.4`, `§5.4`, and its `what`.
   - Target 1.4: one hypothesis (flatness and quasi-compactness), six prerequisites (five pinned names and `roadmap:AlgebraicModuliForArithmeticGeometry §5.4`), and the test `nonflat_image_control`.

## Adversarial pass on every new or changed statement

| Statement | Instances tried | Values computed on the two sides | Result | Change |
| --- | --- | --- | --- | --- |
| §1.4 `(Γ_f)_{K'}` = image of `γ_f ×_K K'` | `X = ℙ¹_ℂ` over `ℝ`, `f = id`, `K' = ℂ` | `ℂ⊗_ℝℂ = ℂ×ℂ`, so `X_ℂ` has 2 components and `(X×_ℝX)_ℂ` has 4 (`ℂ⊗ℂ⊗ℂ = ℂ⁴`). The image of the base-changed diagonal is `X_ℂ`, with 2 components. The pullback of `Δ` is `Δ_ℂ`: 2 diagonals. 2 = 2 | Holds; agrees with the existing first Check | — |
| same | `z ↦ z²` on `ℙ¹_ℚ`, `K' = ℂ` | `Γ = V(x_0²y_1 − x_1²y_0)` of bidegree (2,1). The form stays irreducible over ℂ, so the image of `γ_ℂ` and `Γ_ℂ` are both this curve. Bidegree (2,1) = (2,1) | Holds | — |
| same, dimension 0 | `K = ℝ`, `X = Y = Spec ℂ`, `f = id`, `K' = ℂ` | `Γ` is 1 of the 2 points of `Spec(ℂ⊗_ℝℂ)`. After base change, the image of `Spec(ℂ⊗ℂ)` (2 points) in `Spec(ℂ⊗ℂ⊗ℂ)` (4 points) is 2 points. The pullback of `Γ` is `Spec(ℂ⊗_ℝℂ)`, 2 points. 2 = 2 | Holds | — |
| same, inseparable (nonreduced base change) | `K = 𝔽_p(t)`, `X = Y = Spec L` with `L = K(t^{1/p})`, `f = id`, `K' = L` | `L⊗_K L = L[y]/(y−x)^p`, of length p. `γ_{K'}` is the base change of the closed immersion `Δ`, so its image is `X_{K'}`, of length p. The pullback of `Γ = Δ` is `Δ_{K'} ≅ X_{K'}`, of length p. p = p, nilpotents included | Holds; shows why `Γ_{f_{K'}} = (Γ_f)_{K'}` keeps geometric integrality as a hypothesis | — |
| same, trivial extension | `K' = K` | Base change is the identity; both sides are `Γ_f` | Holds | — |
| Flatness is needed (new Check) | `h : 𝔾_m → 𝔸¹_K`, base change along the origin `Spec K → 𝔸¹_K` | `ker(K[t] → K[t,t^{−1}]) = 0`, so the image is `𝔸¹`. Base-changed source `Spec(K[t,t^{−1}]/(t)) = ∅`, whose image has ideal `ker(K → 0) = K` and is `∅`. The pullback of the image is `Spec K`, with ideal 0. `K ≠ 0` | Fails without flatness; `Spec K → 𝔸¹` is not flat (`K[t]/(t)` is torsion) | Check added |
| Pinned route, step `of_isPullback` | Same non-flat data | The base change of `toImage` is `∅ → Spec K`, with kernel `⊤ = K`, not `⊥`. The `Flat` hypothesis of `of_isPullback` is exactly what fails | Hypothesis necessary | — |
| Pinned route, kernel of composite | `p` scheme-theoretically dominant, `i` closed immersion | `ker(p ≫ i) = (ker p).map i = ⊥.map i = ker i`, by `ker_comp` and `map_bot` as stated at the pin | Holds in general, with no Noetherian hypothesis | — |
| Supplier contract §5.4 (scheme case) | Generality versus use | §5.4 assumes locally Noetherian and quasi-compact; §1.4 has Noetherian `U`, `X ×_K Y` and base change (finite type over a field), with `K'/K` arbitrary, including `ℂ/ℚ` | Covered | — |
| Tau Ceti `isReduced_image` is deduced from `isSchemeTheoreticallyDominant_toImage` | Pin | Basic.lean:78–79 is `IsSchemeTheoreticallyDominant.isReduced f.toImage` | Correct description | — |

## Checks

**Dependency check** (run after the edits):

```text
candidate: DynamicalDegreesOfRationalMaps is not in the merge order yet; checked as if placed after ArakelovGeometryAndAbelianHeightsPartII (the intake inserts it when its design is accepted)
depcheck: 231 roadmaps, 2079 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line.

**Citation resolver** (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean name found nowhere. It did not check Lean names outside TauCetiRoadmap ("no pinned Lake packages on this host"). I checked every newly added Mathlib and Tau Ceti name, file and line at the pinned Mathlib and Tau Ceti myself; they are listed above.

**plan.json**: parses. The 15 prerequisites of target 1.4 include no unknown target id, and the top-level `gaps` list stays empty.

**Lean**: this design package has no `Suggested.lean`, and this brief gives no Lean command, so nothing was elaborated and no `#check` probe was run.

## Ownership

Searched by object (flat base change of scheme-theoretic or schematic images) on main and at the open heads with `roadmaps grep`, and read the hits.
- **Main.** SchemeAndStackFoundations §0.27 covers flat base change of annihilators and cokernels, and §0.28 covers ideal-sheaf comparisons; neither states base change of images. EtaleCohomologyFoundations uses Mathlib's `IsSchemeTheoreticallyDominant.of_isPullback` as an input for dense replacements and does not own image base change.
- **AlgebraicModuliForArithmeticGeometry §5.4** (ORDER.txt line 35) owns the general statement.
- **AbelianSchemesAndArithmeticModuli** (line 42) cites Stacks 081I inside a proof and does not own it.
- **LocalGaloisDeformationRings** (line 87) constructs the image of one proper map of stacks inside its own §4.14.1 target, with flat coefficient change. This roadmap cites the earliest owner.

## Notes for the maintainer

- No name changed, and no id that other roadmaps cite was dropped or renumbered.
- LocalGaloisDeformationRings §4.14.1 constructs a scheme-theoretic image of stacks, with flat coefficient change, inside its own target. That overlaps the general construction of AlgebraicModuliForArithmeticGeometry §5.4, which is earlier in the merge order. This is a possible duplication between those two roadmaps, not this one's.
- Suspicious text: none. The review contains no instructions beyond its claims.
