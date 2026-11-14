# Repair of ZagierConjecturePolylogarithms (package, round 3)

This repairs the 13 findings of `REV-PKG-ZagierConjecturePolylogarithms~2`. I checked every finding against the cached sources, the supplier roadmaps at their heads and the pinned libraries. All 13 are correct. Twelve are applied as asked; R03 is applied differently, because the identity the source actually supports is stronger than the repair the review proposed and differs from it. Files changed: `packages/ZagierConjecturePolylogarithms/README.md`, `packages/ZagierConjecturePolylogarithms/sources.toml` (locators only) and `packages/ZagierConjecturePolylogarithms/design/plan.json` (one new `gaps` entry). `Suggested.lean` and `metadata.toml` are unchanged.

## R01 (P1) — applied

§5.1 `[x]₃⊗y`: `−(1/6)log|x| d^C L₃*(y)` → `−(1/6)log|y| d^C L₃*(x)`. The new form is fixed by G08's equation on the diagonal (G08 line 4628) and by additivity in the unit; a note says GR (192) (GR line 3600) swaps the arguments. Added a bilinearity API bullet and two Checks: an inverse pair (old `≈ −0.0555i`, new `0`) and a constant unit.

## R02 (P1) — applied

§2.3 square value `[…]₂∧[…]₂` → `2·[…]₂∧[…]₂`, oriented as `2·B∧A` for edge symbols `A,B`; a note says GR (99) omits the factor (GR line 2244). Recomputed the §2.3 and §2.5 square Checks: edge sum `2(B⊗δA−A⊗δB)`; on the hexagon `(0,1,3,−3/11,2,12/11)` the pairing gives `±1` versus `±2`. Added a hexagon `Λ²B₂` Check.

## R03 (P1) — applied differently

Not stated as vanishing in `L₄(F)`, which I could not verify. The §2.4 raw equality → an exact `Raw₄` identity: facet sum `= −2Q₄ + Σc(D₃₁(y,z)+D₃₁(z,y)) + Σ_k(3(S₄(Z_k)+S₄(Z_k⁻¹))−(S₄(w_k)+S₄(w_k⁻¹)))`, checked exactly on four tuples. The raw cobracket kills both corrections. The example is kept as a negative control (supports 70 versus 35).

## R04 (P1) — applied

§3.9: GR's unscaled definition → M20's normalized tree sum ((3), p. 3); "the result is the canonical real period" → the target `Cor^H = (2πi)^{−m}p∘Cor^Hod` (M20 line 627). Added API and Checks: weight one `(2πi)^{−1}log|z₀−z₁|`; at `z=i`, `p ≈ 0.457983` versus `Cor^H ≈ −0.011601`. Also fixed the §3.8 and §3.10 Checks, Conventions and the Layer 3 example.

## R05 (P2) — applied

Polylogarithms §3.4 (#1424) owns decorated flags, the acyclic resolution and stabilizedConfigurationComparison. Scope "decorated flags of every length … acyclicity" → the flag-to-configuration map and the group-homology maps. Added `gap:decorated-flag-lengths` (README contract and `design/plan.json`). §4.2 → the weight-four length `k=N−3`; §4.4 → the composite with `t` and duality.

## R06 (P2) — applied

MotivesAndAlgebraicCycles Layer 3 (numerical motives) → §3.6 (Tannakian terminology) and §§6.1–6.3 (neutral reconstruction, `G_ω`, functoriality) at the #1313 head. Changed in Scope, the supplier contract (each section listed; Layer 3 semisimplicity not used), the §3.8 Needs and the Layer 3 Dependencies. The Layer 4 citation is unchanged.

## R07 (P3) — applied

"Hodge structure" removed from the list of objects absent at the pins. "Nothing from Tau Ceti" → `TauCeti.Hodge.MixedHodgeStructure`, `…MixedHodgeStructureCat` and `…abelian`, `…Hom.range_inf_F_eq_map_F` and `TauCeti.Hodge.tate`, checked at the pinned files, with their fields and what they lack. Also updated the HodgeStructures deferral and contract, the §§3.6–3.7 Needs and the Layer 3 Dependencies. No Lean import added.

## R08 (P2) — applied

§5.5 now defines `A₁` with `a₁⟨l₀,l₁;m₀,m₁⟩ = u(r(…))` (G00 line 178), `A⁰ₙ`, and `ν_{1,1}`, `ν_{2,1}`, `ν_{1,2}` (G00 lines 179–196, with the Prop. 2.3 forms). It states coassociativity, the antiautomorphism, the `a₂` square on `A⁰₂` and `(a₂∧a₁)`. API and Checks added: `a₁(∞,0;1,2)=u(2)` (lift-invariant), the explicit square, additivity, coassociativity, antisymmetry.

## R09 (P3) — applied

§4.5: "omitting the dual relation leaves the cobracket undefined" → `δ̃(π₈px) = R₇³(p²x)`: the two projection orders cancel, 72 terms in 36 pairs, and no independence is claimed. §5.5: "ν of a dual-additivity relation is nonzero" → an additivity-in-`M` test whose four nonzero terms (`2∧3` coefficients `1,−9,−8,2`) sum to zero.

## R10 (P3) — applied

§4.8 Check: "`(3/7)X`" → "`(3/28)X + (9/84)X = (3/14)X ≠ 0`; at `X = 14` it is `3`". No other occurrence.

## R11 (P3) — applied

§6.4: deleted "would make the every-family statement false…". It is replaced by comparing obstruction with period: `[2]` has `L₄(2)=0` but obstruction `7ζ(3)/8 ≠ 0`, while the cycle `[i]` over `ℚ(i)` has `L₄(i)=β(4)≈0.988945≠0`. The zero-column Check (`q=0`) is kept.

## R12 (P3) — applied

§1.3 Check: now requires `x ≠ y` (`D₂₁(2,3)−D₂₁(3,2)` has coefficients `+1,−1`; `D₂₁(2,2)` is one vector). §4.1: "one-based signs reverse one" → an explicit pair: delete `v₀` then project `v₁` gives `+1`; project then delete gives `−1`. Added that zero-based `(−1)^i` equals one-based `(−1)^{s−1}` and that a global sign is no test.

## R13 (P3) — applied

Added API lists for §3.9, §4.7, §5.3 and §5.5. Rewrote the §6.4 Checks with at least three per definition, each naming it: `polylog 0 1 = 0` (junk value), `polylog 1 3 = −log 2 − πi`, `1/kⁿ`; `L₄(2)=0` (with `B₁=+1/2`: `−1.0462`); `trilogCyclic` on a constant (`2v`), `3b(1)+4b(−1)=0`, numerics; over `ℚ(i)`, `q=45`. Nothing added to `Suggested.lean`.

## Checks run

- `lake env lean` on `packages/ZagierConjecturePolylogarithms/Suggested.lean`, run from the content checkout: exit 0, with exactly two warnings, both `declaration uses sorry`, at lines 123 and 132. No `TauCeti.*` import, so nothing needed building.
- **`#check` scratch.** A scratch copy with `#check @name` for all ten declarations elaborated with exit 0. The elaborated types are unchanged and match the README:
  - `unitVector`, `trilogCyclic`, `TrilogRelationFunction` and `IsCycle4` keep `[Field F]`, plus `[AddCommGroup V]` / `[Module ℚ V]` where used;
  - `periodMatrixFour` and `zagierDeterminantFour` keep `[NumberField F]`;
  - `zagier_four_everyFamily` keeps `hc : ∀ j, IsCycle4 (c j)`;
  - no binder was lost and nothing changed.
- `roadmaps resolve` on the README: no cross-roadmap citation or Lean name found nowhere. It did not check non-roadmap Lean names, so I checked the five Tau Ceti names above by hand at the pinned sources, namespaces included.
- The dependency check:

```text
depcheck: 236 roadmaps, 2140 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line.

No gate failures were listed for this round. No source was missing and no `needs-references.toml` was written: all six cited works are cached legal copies, and the new locators (M20 (3) p. 3, §1.2.2 p. 4, Theorem 6(a) p. 13; G08 Theorem 1.12 p. 19, §11.1 p. 105; G00 §2 and Propositions 2.1–2.3, PDF pp. 5–8) were read in those files. The G00 locator's pagination note was corrected from "printed" to "PDF", matching the cached page markers the README cites.

## Adversarial pass on new and changed statements

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| §1.3 raw symmetry | `(2,3)`; `(2,2)` | raw coefficients `+1,−1`, quotient `0`; on the diagonal one vector | `x ≠ y` added |
| §2.3 square value | generic square with `W, W+δA, W+δA+δB, W+δB` | edge sum `2(B⊗δA − A⊗δB)`; `δ(B∧A) = B⊗δA − A⊗δB` | factor 2 forced |
| §2.5 square Check | hexagon `(0,1,3,−3/11,2,12/11)`, `A=[−6]₂`, `B=[−10]₂` | pairing `(ord₇∧ord₂)δ₂⊗(ord₁₁∧ord₅)`: `δ(A∧B) ↦ 1`, edge sum `↦ −2` | doubled square agrees |
| §2.5 hexagon `Λ²B₂` | `Cyc⁻₆` terms `k`, `k+3` | equal `δ₂₂` (exchange of the two cross-ratios times `(−1)^3`) | `2×` the three wedges |
| §2.4 facet identity | `(0,1,3,7,11,17,23)`, `(0,1,2,5,−3,1/2,9)`, `(−2,1/3,1,4,6,−7,5/2)`, `(2,3,5,7,11,13,19)` | exact equality of raw vectors; supports 70 vs 35; GR's `Σ(−1)^iL¹(x̂ᵢ)` = −cyclic sum | raw `= Q₄` false; new identity exact |
| δ kills corrections | `D₃₁(y,z)+D₃₁(z,y)`, also `y = z`; `S₄(x)+S₄(x⁻¹)` | `Λ²B₂` terms cancel; `(D₂₁(y,z)−D₂₁(z,y))⊗(y/z) + (S₃(y/z)−S₃(z/y))⊗(…) = 0`; at `y=z` all terms carry `u(1)=0`; `(S₃(x)−S₃(x⁻¹))⊗u(x)=0` | holds without circularity |
| §3.9 normalization | weight one; `z = i` in weight two | `(2πi)^{−1}log|z₀−z₁|`; `p = 0.457983`, `Cor^H = −0.011601`, ratio `−4π² = −39.478` | definition and comparison separated |
| §3.9 M20 internal check | `(1,0,z)` in M20 (4) vs p. 18 | `(2πi)^{−2}L₂(z)` vs `−(1/2)(2πi)^{−2}L₂(z)` | p. 18 used; (4) noted |
| §3.9 reversal sign | `m = 1, 2` | `(−1)^{m+1} = +1, −1`; `L₂(1/w) = −L₂(w)` | agrees |
| §4.1 mixed faces | `v₀` deleted, `v₁` projected | `p∂`: `(+1)(+1)`; `∂p`: `(−1)(+1)`; same configuration | cancels |
| §4.2 instance | `N = 4, 5` | lengths `1, 2`; same first line: `F_{1,1}+F_{2,1}` not direct | agrees |
| §4.4 composite | `N = 4`; `𝔽₂`, `N = 2` | `t = id`; 3 lines only | infinite field needed |
| gap decorated-flag-lengths | `N = 1, k = 1`; `k = N` | cone by any nonzero vector; full flags, conditions `Σaᵢ ≤ N` finite | statable; Zariski-open genericity over infinite `F` |
| §4.5 `δ̃` on dual relation | positions `a < b` in nine vectors of `F⁵` | signs `(−1)^{a+b−1}`, `(−1)^{a+b}`; 72 terms, 36 pairs | kills it; no independence claim |
| §4.8 wrong sign | coefficients | `3/28 + 9/84 = 3/14`; at `X = 14`: `3` | R10 |
| §5.1 `B₃⊗U` period | inverse pair `y, y⁻¹` at `y = 1/2`, `x = 2`; diagonal `y = x`; constant `y = 2` | old `−i log³2/6 ≈ −0.05550i`, new `0`; diagonal reproduces G08 `dL₄*`; old `0`, new `−(1/6)log 2 d^C L₃*(x)` | bilinear |
| §5.5 `a₁` | `(∞,0;1,2)`, lift `(2,1)→(6,3)` | `r = 2` both; `Δ(0,2)`: `−2 → −6` | lift-invariant |
| §5.5 `a₂` square | coordinate triangle, `M=((1,1,1),(1,2,3),(1,3,2))`; 4 random pairs | both sides `2·2∧3 + 2·2∧5 − 2·3∧5`; equal in all 4 | sign of Prop 2.3 confirmed |
| §5.5 additivity | `M=((1,1,1),(1,2,3),(1,3,2),(1,4,9))` | `2∧3` coefficients `1,−9,−8,2`, alternating sum `0` (all coefficients) | ν respects it |
| §5.5 coassociativity | 3 random tetrahedron pairs over ℚ | supports 1317, 632, 1209: equal; with `ν_{1,2}` negated: unequal | holds |
| §5.5 `a₂` swap | triangle pair above | `δ₂(a₂⟨L;M⟩ + a₂⟨M;L⟩) = 0`, `δ₂` injective on `B₂(ℚ)` | Check kept |
| `polylog` | `(0,1)`, `(1,3)`, `n = 2,3` | `0`; `−log 2 − πi`; `∫t^{k−1}(−log t)^{n−2} = (n−2)!/k^{n−1}` | junk value, lower cut, `1/kⁿ` |
| `singleValued` | `(4,2)`, `(2,i)`, `(3,1)` | Im parts `−1/6, +1/2, −1/3` of `π log³2` sum `0` (`B₁=+1/2`: `−1.0462`); `0.915966`; `ζ(3)` | agrees |
| `unitVector` | `−1`, `6`, `1/2`, `0` | `0`; `u2+u3`; `−u2`; `0` | agrees |
| `trilogCyclic` | constant `v`; `(1,1,1)`; `(2,3,5)`, `(−2,1/2,3)`, `(0.3,−0.7,0.6)` with `L₃` | `2v`, sum `7v`; `3b(1)+4b(−1)`, `3−3=0` in units of `ζ(3)`; sums `<10⁻⁹`; wrong `A↔B`: `−0.5210`; sign flip: `5.9611` | definition correct |
| `TrilogRelationFunction` | `L₃` at `x = 2` | `7/8 − 3/4 + 7/8 = 1` times `ζ(3)` | endpoint needed |
| `IsCycle4` | `[2]`, `[i]` over `ℚ(i)` | `(7ζ(3)/8)⊗u2 ≠ 0`; `u(i) = 0`, `L₄(i) = β(4) = 0.988945` | agrees |
| `zagierDeterminantFour` | `ℚ`, `ℚ(i)` with `[i]` | `π⁴ = 90ζ(4)`; `π⁴β(4)/2 = 48.1661 = 45ζ(4)β(4)` | `q = 90`, `45` |
| R11 | zero column | `det = 0`, `q = 0` | allowed; old claim deleted |
| Conventions on `p` | weight one, two | `log|f|`, `L₂/2` | consistent with §§3.7, 5.1 |

## Ownership and overlap

- **Decorated flags (R05).** Searched by object in the Polylogarithms head (#1424) and the board package. Polylogarithms §3.4 owns them. However, Polylogarithms' own Scope line (line 20 at the head) still lists "decorated flags" among what ZagierConjecturePolylogarithms owns. That sentence contradicts its §3.4 and §3.7 and should be corrected in Polylogarithms; this package cannot edit it.
- **Tannakian reconstruction (R06).** Owned by MotivesAndAlgebraicCycles §§6.1–6.3 (#1313 head).
- **Linear mixed Hodge theory (R07).** At the pinned Tau Ceti; HodgeStructures (main, completed) is the plan.
- **Scissors-congruence groups.** No other owner was found in a `roadmaps grep` for scissors/`Aₙ(F)`; they stay here.
- The overlap ledger lists no conflicting pull request and no dropped or revision-only id. No section numbers changed: §4.2 and §4.4 keep their numbers with new titles, so no citing roadmap is affected.

## For the maintainer

- **New supplier gap** `gap:decorated-flag-lengths` → Polylogarithms §3.4: acyclicity and the comparison map for every flag length `1 ≤ k ≤ N` over infinite fields. It is recorded in the README contract line and in `design/plan.json` `gaps`.
- **No Lean names changed;** `Suggested.lean` is untouched.
- **Source issues** found this round:
  - **M20 internal inconsistency.** (4) on p. 4 gives `Cor^H(1,0,z) = (2πi)^{−2}L₂(z)`, while the example after (16) on p. 18 gives `−(1/2)(2πi)^{−2}L₂(z)`. These differ by a factor `−2`; only the p. 18 value agrees with `L₂* = L₂/2`.
  - **GR (36) and Proposition 5.5.** The facet sum is `−2Q₄` modulo antisymmetrizers and inversion elements, not `Q₄` as a vector. This adds a scalar, `−2`, to the review's source-issue list.
