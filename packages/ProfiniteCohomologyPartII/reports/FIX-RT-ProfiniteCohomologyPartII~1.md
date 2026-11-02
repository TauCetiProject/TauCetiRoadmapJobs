# FIX-RT-ProfiniteCohomologyPartII~1

Two reviews: pass a (findings F01 to F14, the first fourteen sections below) and pass b (findings F01 to F07, the last seven sections). Section headings use the reviews' own finding ids; in the text, a-Fnn and b-Fnn mean finding Fnn of pass a and of pass b. Where findings overlap, each is settled once and the duplicate points to that settlement: b-F01 = a-F04, b-F03 = a-F13, b-F05 = a-F02, and b-F07 is superseded by the a-F01 repair.

## F01 (P1) — applied

`DefiningSystem` gains the field `entry_eq_zero`: entries with `j ≤ i` are zero, and so is the corner `(0, n)` when `2 ≤ n`. For `n = 1` the corner is the adjacent entry, so it is left alone. The docstring and README 0.3 (field list and API bullet) are updated, and so is 1.5 (the bijection now says the other entries are zero). A new Check in 0.3 records the reviewer's witness (`Γ = 1`, `𝔽₂`, `n = 2`). None of the headline theorems changes truth value.

## F02 (P3) — applied

In the first Check of 0.4, `−d(u₀ ∪ a₁₂ + a₀₁ ∪ u₁ + u₀ ∪ du₁)` becomes `−d(u₀ ∪ a₁₂ − a₀₁ ∪ u₁ + u₀ ∪ du₁)`. The Check also records `d(a₀₁ ∪ u₁) = −a₀₁ ∪ du₁` and the 𝔽₉ witness: both sides equal 2, against 1 for the wrong sign. I derived `d(a∪u) = −a∪du` directly from `d¹`.

## F03 (P2) — applied

Confirmed at the pin: `TauCeti.IsDGAlgebra` (Algebra/Homology/DG/Algebra/Defs.lean:182), `TauCeti.DGCategoryData` (CategoryTheory/DG/HomComplexData.lean:74) and `TauCeti.DGCategory` (CategoryTheory/DG/Basic.lean:71) all exist. The module docstring now says these generic carriers exist and that the missing pieces are this roadmap's constructions. They are added to the Tau Ceti supplier contracts, to the DGAInfinity Layer 1 contract, and to the 0.1 and 9.1 text and *Needs* lines. On reassessment, none of the omitted items is a headline.

## F04 (P3) — applied

The 3.2 Check now reads "for `2 ≤ n ≤ 2p − 1` exactly `p`; for `n ≤ 1` the exponent is `1`". The 3.3 Check now covers only nontrivial elementary abelian groups and adds the trivial group, whose outer exponent is 1. b-F01 is the same finding.

## F05 (P3) — applied

The 5.2 Check "the allowed `h̄` are the σ-fixed vectors" becomes an inclusion: every allowed `h̄` is fixed, but not conversely. The counterexample is `e₂₅` in the setting of 6.1, which is the README's own exhaustive count (span of dimension 5, `B^a` of dimension 6, coordinate (2,5) zero).

## F06 (P2) — applied

New headline `isConj_pow_superdiagonalSubgroup_two`: for every prime `p`, `n ≤ 6`, `Q ∈ U¹` and `a ≡ 1 (mod p)`, `IsConj Q (Q ^ a)` holds in `U¹`. It is stated for `n ≤ 6` rather than `2 ≤ n ≤ 6`, because it holds trivially for `n ≤ 1`. README 3.4, the Summary and the docstring list are updated. It is equivalent to factorization through `(ℤ/p)ˣ`: write `Q^b = (Q^a)^c` with `c ≡ 1 (mod p)`.

## F07 (P2) — applied

`[DiscreteTopology R]` is added to `DefiningSystem`, `DefiningSystem.value`, `MasseyDefined` and `MasseyContainsZero`, carried explicitly in each signature. The docstring now says "discrete commutative ring". Mathlib's `ZMod N` has this instance (Topology/Instances/ZMod.lean:26), so `localMasseyVanishing` and the ℤ/8 headline still elaborate.

## F08 (P3) — applied

The 7.2 Check now uses ArithmeticGaloisDuality §R02.1.4's actual example, read at its head: trivial action on `A` and `C`, and the sheared middle `g·(a,c) = (a + Σgᵢcᵢ, c)`. It also records that with trivial action on `B` the cocycle is zero.

## F09 (P3) — applied

The 7.1 Check now requires `R` nontrivial, puts the `n = 4` example over `𝔽₂`, and adds that over the zero ring `U` and `P_(r,s)` are trivial.

## F10 (P3) — applied

The Checks of 9.3, 9.4 and 9.6 are now qualified by "every `N_i` free of rank one over `R` with a chosen basis". Witnesses were added to 9.3 and 9.4 (`R = ℤ/4`, `N_i = ℤ/2`: order `2⁶ = 64` against `4⁶ = 4096`). The targets themselves are unchanged.

## F11 (P3) — applied

Three repeated Checks were replaced; I verified each new one by hand.
- §4.1: D₈ and Q₁₆. `[a², b] = a⁴ ↦ 1/2`, and the Schur multiplier of D₈ is ℤ/2.
- §4.2: S₃. `κ̃(s⋏r) = r`; the other convention gives `r²`; the kernel is 0 because M(S₃) = 0.
- §6.3: `V^Q = ⟨d,e⟩`, the kernel is `⟨t²,r⟩` of order 4, and the dual checks.

## F12 (P3) — applied

Confirmed: HW lines 21–37 define DG rings and Massey products, and lines 41–77 are motivation; neither constructs the comparison. In 0.2, the HW parenthesis is replaced by the locators into the pinned libraries: Mathlib `TopRep.resolutionX` and `TopRep.homogeneousCochains`, and the Tau Ceti comparisons in CohomologyComparison.lean. The text states that the all-degree chain maps are proved here, and `TopRep.resolutionX` is added to *Needs*.

## F13 (P2) — applied

Confirmed at the IG head: §IG.4.2 *Twisting* assumes a global field and a surjective `π`, while §IG.4.1 allows any profinite source and a non-surjective map. 11.9 now cites §IG.4.1 and gives the explicit crossed homomorphism `z(g) = β(g)s(π(g))⁻¹`, with the converse. I checked `z(gh) = z(g)·g·z(h)` by expanding. The 11.9 *Needs* line now cites §IG.4.1; Layer 11 Dependencies cite §§IG.4.1 and IG.4.2. b-F03 is the same finding.

## F14 (P3) — applied

The 3.4 Check now uses the blocks of sizes 4 and `n − 3` only for `n = 4, 5, 6`. For `n = 2, 3`, the exponent of `U¹` divides 2 (3.2), so `Q⁻¹ = Q`. Example: `Q = 1 + E₀₂` in `U₃(𝔽₂)` has `Q² = 1`.

## F01 (P3) — applied

Same finding as a-F04; see there.

## F02 (P3) — applied

Confirmed: HW Remark 3.4 (HW line 379–384) is about the differential δ for homogeneous spaces over `ℂ((x))((y))((z))`. In 6.3 the HW Remark 3.4 citation is replaced by HW Definition 4.3 (p. 13) and Example 6.3 (p. 24), marked as the roadmap's own example. 6.4 gets the locator HW Definition 4.3. 6.5 had no consumer and is deleted; its content (γ with `γ(t²) = d + e`, and why the order-four factor is needed) is now a Check of 6.3, verified by hand.

## F03 (P3) — applied

Same finding as a-F13; see there.

## F04 (P3) — applied

The docstring sentence "Every headline theorem of the roadmap is stated" becomes "Every end theorem named in the README's summary is stated". It now names 5.6 (vanishing of `H¹_cyc(G, B_bdry^D)`) and 5.7 (fixed-class generation for `n = 4, 5`) as not stated, and lists the roadmap-defined carriers they need: `B` with its action of `U/U¹`, `B_bdry`, the twisted dual, and `H¹_cyc`. The statable small-rank result 3.4 is now stated (a-F06).

## F05 (P3) — applied

Same finding as a-F02; see there.

## F06 (P3) — applied

Confirmed: `IsUpperUnitriangular` does not occur in the pinned Mathlib and is `Matrix.IsUpperUnitriangular` at TauCeti/LinearAlgebra/Matrix/Triangular.lean:85. It moves from the Mathlib contract to the Tau Ceti contract, and the 1.1 *Needs* line now cites it as Tau Ceti.

## F07 (P3) — applied differently

The sentence it flags ("not constrained by any field") is gone. Under the a-F01 repair those entries are now zero by `entry_eq_zero`. This is stronger than the suggested wording "constrained only by continuity", and the docstring states it.

## Checks run

- `lake env lean packages/ProfiniteCohomologyPartII/Suggested.lean`: no errors, 8 `declaration uses sorry` warnings (the 8 theorems).
- I put `#check @name` for all 17 declarations, plus `DefiningSystem.mk`, in one scratch file and elaborated it once. The elaborated types match the README. `DefiningSystem.mk`, `value`, `MasseyDefined` and `MasseyContainsZero` now carry `[DiscreteTopology R]`. The new field appears as `∀ i j, j ≤ i ∨ i = 0 ∧ j = Fin.last n ∧ 2 ≤ n → entry i j = 0`. The new theorem's type is `∀ p [Fact p.Prime] {n}, n ≤ 6 → ∀ Q {a}, a ≡ 1 [MOD p] → IsConj Q (Q ^ a)`. No binders were lost.
- Dependency check:

```text
depcheck: 149 roadmaps, 1012 edges, 0 problem(s)
```

  It shows no UPWARD and no CYCLE line.
- `roadmaps resolve` on the README finds no cross-roadmap citation and no Lean name that is missing.

## Adversarial pass on changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| `entry_eq_zero` | n=0; n=1; n=2, Γ=1, 𝔽₂, χ=0 | n=0: only (0,0), j≤i, zero. n=1: (0,1) is neither j≤i nor (2≤1), so it stays χ 0; no clash with `entry_castSucc_succ`. n=2: every entry forced, so one structure | consistent; headlines unaffected (the value uses only permitted entries (0,m), (m,n) with 0<m<n) |
| Dwyer criteria under normalization | n=2, lift β | entries from β plus zeros give a system; the corner entry f of a `U`-lift gives value = df | both directions hold |
| `isConj_pow_superdiagonalSubgroup_two` | p=2, n≤3; p=2, n=6; p=3, n=5; p=3, n=6; p≥5; n=0 | exponent 2: `Q^a = Q`. p=2, n=6: exponent divides 4, so a≡3 (mod 4) gives `Q⁻¹ ~ Q`. p=3, n=5: exponent 3. p=3, n=6: `Q⁴ = Q + Q₀₂Q₂₄Q₄₆E₀₆ ~ Q` via `e₂₆(t)`, and a ∈ {1,4,7} mod 9 with `Q⁷ = (Q⁴)⁴`. p≥5: 2p > 6. n=0: trivial group | true; conjugators `e₂₆(t)` and `D` lie in `U¹` |
| 0.4 sign | 𝔽₉, σ | LHS −1 = 2; corrected RHS 2; old RHS 1 | corrected |
| 4.1 D₈ Check | Q₁₆ | `[a²,b] = a²·a² = a⁴`, of order 2 | nonzero on C₂², so the class is outside B_Bog |
| 4.2 S₃ Check | s=(12), r=(123) | `srs⁻¹r⁻¹ = r⁻² = r`; `s⁻¹r⁻¹sr = r²` | distinguishes the conventions |
| 6.3 Checks | v = (α,β,γ,δ,ε) | `N_s v = βd + (β+γ)e`, `N_t v = (α+β)d + βe`, so V^Q = ⟨d,e⟩; `s^i t^j = 1 + iN_s + jN_t` gives kernel {t^{2k}r^l}, order 4; γ(t²) = b+c+(b+d+e+c) = d+e; γ(st) = γ(ts) = a+b+c+d | verified |
| 9.4 rank-one Check | R=ℤ/4, N_i=ℤ/2, n=3 | 2⁶ = 64 against 4⁶ = 4096 | qualifier needed |
| 11.9 crossed homomorphism | split `U₈ = P₈ ⋊ C` | `z(gh) = β(g)β(h)s(π h)⁻¹s(π g)⁻¹ = z(g)·ˢ⁽π ᵍ⁾z(h)` | holds; no surjectivity used |
| 3.2 / 3.3 Checks | p=3, n=0,1,2 | exponent 1, 1, 3 | repaired range correct |

## Maintainer notes

- New Lean name: `TauCetiRoadmap.ProfiniteCohomologyPartII.isConj_pow_superdiagonalSubgroup_two`. New field: `DefiningSystem.entry_eq_zero`. `DefiningSystem`, `DefiningSystem.value`, `MasseyDefined` and `MasseyContainsZero` now require `[DiscreteTopology R]`. A consumer outside this package that uses them with a non-discrete coefficient topology would break; I found none.
- README target 6.5 is deleted and its content is now a Check of 6.3. No other section cited 6.5.
- Ownership: I grepped main and the open heads for outer exponents and `IsConj` powering. The one hit (NoncommutativeIntegration) is about a different object, so this roadmap owns the new headline. No source was added, and `sources.toml`, `metadata.toml` and `plan.json` are unchanged.
- Review b's F06 and F07 say they "confirm" findings of an earlier review. I checked them independently above.
