# Review of OcneanuRigidity (pull request #2316 at 9844900)

**Verdict:** needs changes

## R01 (P1) — The comparison scalar in 1.6 is the inverse of the one 1.7 needs

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:335–336: “setting its inverse on the last factor of the `T`-summand to `(doubleDualTrace a_T.hom)⁻¹ • F.map (ᘁa_T.hom)`”; Checks at 342–346; 1.7 at 352–362.
**Claim:** With this scalar θ is not a morphism in Z(F), and the composite of 1.7 is the number of simple classes, not `normGlobalDim C`. The 1.6 Check (factor `1/2`) refutes the 1.7 Check (contribution `4`).
**Witness:** `FDRep ℂ S₃`, `F = 𝟭`, `Z = 𝟙`: unit `coev`, θ.inv `= 1/2`, counit `ev` give `(1/2)·2 = 1` on the 2-dimensional summand; total `3 ≠ 6`. The centre isomorphism `O(G) → k[G]`, `δ_g ↦ g/6`, has θ.inv `= 2` there (Schur orthogonality).
**Repair:** Set θ.inv on the `T`-summand to `doubleDualTrace (a_T.inv)ᘁ • F.map (ᘁa_T.hom)`, the second factor of `squaredNorm a_T` (compare the trace product in [EGNO] Theorem 9.3.2, p. 279). It is choice independent (`a ↦ c·a` gives `c⁻¹·c`). Replace the Checks: for the 2-dimensional simple, `can` gives `2·1 = 2` and `3·can` gives `(2/3)·3 = 2`, whereas the inverse-trace scalar gives `1/2`; then 1.7 reads `2·2 = 4` and `1 + 1 + 4 = 6`. `Vec` (dimension `1`) gives `1` for both scalars and cannot separate them, so keep it only as the choice-independence Check.

## R02 (P2) — The module headlines do not assume the action additive in the `C`-variable

**Location:** TauCetiRoadmap/OcneanuRigidity/Suggested.lean:93–94 and 114–115: “`[∀ i Y, (MonoidalLeftAction.actionRight C (Y : M i)).Linear k]`”; README.md:1011: “the action is linear in both variables”.
**Claim:** The README's module categories are additive and `k`-linear in each variable (0.4, 6.3), and extraction in 6.3 needs `(X ⊕ X') ⊙ Y ≅ X ⊙ Y ⊕ X' ⊙ Y`. The Lean hypotheses give homogeneity only, so both theorems quantify over a class the route of 8.4 does not reach.
**Witness:** Mathlib/CategoryTheory/Linear/LinearFunctor.lean:36: `class Functor.Linear : Prop` has the single field `map_smul` and no `[F.Additive]` argument at the pin. Rigidity gives adjoints of `X ⊙ −`, not additivity of `− ⊙ Y`.
**Repair:** In `finite_module_representatives` and `finite_indecomposable_module_representatives` add `[∀ i (X : C), (MonoidalLeftAction.actionLeft (M i) X).Additive]` and `[∀ i Y, (MonoidalLeftAction.actionRight C (Y : M i)).Additive]` before the two `Linear k` binders. The file with these four lines elaborates with `sorry` as the only warning.

## R03 (P3) — 5.4 and 6.6 have no Check and 6.3 has one

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:655–661 (5.4), 805–811 (6.6), 769–773 (6.3).
**Claim:** The sign `θ = −δγ` of 6.6 and the cocycle convention of 5.4 are pinned by no computed example, and the extraction of 6.3 has one Check where a definition needs three.
**Witness:** 6.6 ends at “likewise over `k⟦t⟧`. *Needs:* 0.4, 4.2, 6.4.” and 5.4 at “*Needs:* 1.2, 3.1.”, each followed directly by the next heading.
**Repair:** 6.6: regular `C₂` module over `k[ε]/(ε²)`, `γ(g,0) = 1` and zero elsewhere: `M′^{g,g,0}_0 = (1+ε)⁻¹ = 1 − ε`, so `θ = −1`, and `δγ(g,g,0) = γ(g,0) + γ(g,1) − γ(e,0) = 1`. 5.4: `C₂`, `F = 1`, `R^{11}_0 = 1 + bε`: the hexagon gives `(1 + bε)² = 1`, so `2b = 0`; a coboundary `δ⁰f` of a scalar `f` is `f − f = 0`. 6.3: rescaling `φ^{g,0→1}` by `2` in the regular `C₂` module extracts `M^{g,g,0}_0 = 1/2`, the gauged presentation of 6.2; `Vec` on `Vec²` extracts `Nm_{um}^n = δ_{mn}` and `M = 1`. The description's sentence “Its numbered targets have local Checks” then holds for these targets.

## R04 (P3) — Missing locators in 6.5, 8.3 and the References

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:797–798 (6.5), 993–997 (8.3), 1085: “Example 7.4.10, Example 7.22.5 (p. 184)”.
**Claim:** 6.5 states the adjunction `(Xᘁ ⊙ −) ⊣ (X ⊙ −)` and 8.3 a finiteness theorem with no locator and no statement that they are deductions; Example 7.4.10 has no page.
**Witness:** EGNO line 6689: Proposition 7.1.6 (printed p. 133) is the adjunction of 6.5. EGNO line 6889: Example 7.4.10 is on printed p. 137.
**Repair:** 6.5: add “([EGNO] Proposition 7.1.6, p. 133)”. 8.3: add “a deduction from 8.1 and 8.2; compare [ENO] Theorem 2.28, p. 9, and Remark 2.33, p. 10”. References and 6.8: “Example 7.4.10 (p. 137)”, and add Proposition 7.1.6 (p. 133) to the [EGNO] entry.

## Previous findings

| Previous finding | Head passage | Status |
| --- | --- | --- |
| R01 face reversal | README:413–416 “right extra degeneracy … `SimplexCategory.rev.op`”; 436–438 `q_n = (−1)^{n(n+1)/2}`; 541 | Repaired |
| R02 tensor bilinearity | README:178–180 “assume `MonoidalPreadditive D` and `MonoidalLinear k D`”; Check at 188–190 | Repaired |
| R03 zero object | README:433–434 “with a zero object (`HasZeroObject`)”; Check at 448–450 | Repaired |
| R04 Check counts | 0.2 at 203–209, 1.6 at 342–348, 2.2 at 423–428: three bullets each | Repaired; the 1.6 value `1/2` is replaced by R01 |
| R05 locators | README:177 “[GHS] (3.4)–(3.5), p. 12”; 720; 822; 839 | Repaired |
| R06 planned names | README:263 “The forgetful functor U_F : Z(F) ⥤ D”; gate `readme-ids-missing=0` | Repaired |

## Verified sound

| Statement | Instances tried | Computed on one side | Computed on the other | Result |
| --- | --- | --- | --- | --- |
| Conventions: differential | `F = 𝟭 Vec`, scalars; `Vec(C₂)`, trivial and sign | `δ⁰ = 1−1`, `δ¹ = 1−1+1`, `δ² = 1−1+1−1`; `δ⁰(1) = 1−(−1)` | `0, 1, 0`; `2` | Agrees |
| 0.2 simple tuples | `Vec`, two-fold tensor; Frobenius twist over `𝔽̄₂` | `Nat = k`; `(a² − a)η = η = 0` | one tuple, `End = k`; `Hom(k,k) = k` | Agrees; linearity needed |
| 1.6 comparison | `FDRep ℂ S₃`, 2-dimensional simple | README θ.inv: `1/2` | centre isomorphism `δ_g ↦ g/6`: block factor `(6/2)/6 = 1/2` for θ.hom, so θ.inv `= 2` | R01 |
| 1.7 averaging | `FDRep ℂ S₃`, `Z = 𝟙` | README θ: `1 + 1 + (1/2)·2 = 3` | claimed `1 + 1 + 4 = 6`; repaired scalar `1 + 1 + 2·2 = 6` | R01 |
| 1.8 projectivity | `Vec(Q₈)`, characteristic 3; `Vec(C₂)`, characteristic 2 | `8 = 2`, `2·2 = 1`; `2 = 0` | section exists; none | Agrees (all simples of dimension 1) |
| 2.2 right extra degeneracy | `C₂` comonad, `W = k` | `G(Δ_W)(e⊗g) = e⊗g⊗e`; last face gives `e⊗g` | outermost face gives `g⊗e` | Agrees; reversal needed |
| 2.3 signs | degrees 0–3 | `q = 1, −1, −1, 1` | `(−1)^{n+1} q_n = −1, −1, 1` for `n = 0, 1, 2` | Agrees |
| 3.1 `δ² = 0` | `C₃`, `γ(1,2) = 1` | `δγ(1,1,1) = 1`, `δγ(1,2,1) = −1`, `δγ(1,1,2) = 1`, `δγ(2,1,1) = 0` | `δδγ(1,1,1,1) = 1 − 0 − 1 − 1 + 1 = 0` | Agrees |
| 3.4 comparison | forgetful `Vec(C₂) ⥤ Vec`, trivial and sign, `f = 1` | raw `f d₀ − f d₁ = −1 − 1 = −2` | DY `1 − (−1) = 2`; `q₁ = −1`; GHS (2.14) face `i` is `G^{n−i} ε G^i` | Agrees |
| 4.1 vanishing | `Vec(C₂)` over `ℂ` and `𝔽̄₂` | dimension `2`; `0` | `Hⁿ(C₂, k) = 0`; `= k` | Agrees; ENO §9.1 needs nondegeneracy of `C` only |
| 5.1 skeletal dimension | Fibonacci, Yang–Lee | `1 + φ²`; `1 + φ⁻²` | `(5+√5)/2`; `(5−√5)/2` | Agrees with supplier `s_τ` |
| 5.3 normalizing | triangle at `(a,u,b)` | `F′/F = g^{au}_a / g^{ub}_b` | equal to 1 for all `a, b` iff both families are one constant | Agrees |
| 5.4 R-dictionary | `C₂`, `F = 1`, `R = 1 + bε` | hexagon: `1 + 2bε = 1` | `2b = 0`; scalar coboundary `f − f = 0` | Agrees; R03 |
| 5.5 fusion formal rigidity | `C₂`, `k[ε]/(ε²)`, characteristics 0 and 2 | pentagon: `(1+cε)² = 1 + 2cε` | `c = 0`; `c` free and dimension `2 = 0` | Agrees |
| 5.6, 5.7 | `R = ±1 + bε`; `ℂ⟦t⟧`, `R ≡ 1` | `1 ± 2bε = 1`; `(R−1)(R+1) = 0` | `b = 0`; `R + 1 ≡ 2` a unit | Agrees |
| 6.2 model | regular `C₂`, `h^{g,0}_1 = 2` | `M′^{g,g,0}_0 = 1·1·(2·1)⁻¹ = 1/2` | forward associator `2` | Agrees |
| 6.3 reconstruction | zero ring, unit rules | rank reads `0` | prescribed `1` | Agrees; R03 |
| 6.5 action duality | regular `C₃` | `M_g`: `0→1→2→0` | `M_{g⁻¹} = M_gᵀ`: `0→2→1→0` | Agrees; R04 |
| 6.6 module dictionary | regular `C₂`, `γ(g,0) = 1` | `M′ = 1 − ε`, `θ = −1` | `δγ(g,g,0) = 1 + 0 − 0 = 1` | `θ = −δγ`; R03 |
| 6.7 bounds | Fibonacci, `K = 3`, `A = [[1,1],[1,2]]` | `A² = [[2,3],[3,5]]`; row sums of squares `2, 5` | `KA = [[3,3],[3,6]]`; `K² = 9` | Agrees |
| 7.3 finite orbits | trivial group; `𝔾_a` on `𝔸¹`; `K[ε]/(ε²)` | `𝒪_x/𝔪ⁿ` constant gives `𝔪 = 𝔪²`, `𝒪_x = K`; comorphism `x ↦ t`, kernel `0` | isolated reduced points; one orbit; lift `ε ↦ ε` not constant | Agrees |
| 7.4, 7.5 | `K × K`; `ℚ̄ ⊆ ℂ`, `x ≠ π` | two constant lifts; `0 − π ≠ 0` | `2` points; `0` in the open set | Agrees |
| 8.1 `finite_fusion_representatives` | `C₂` over `ℂ`; empty family | `F^{111}_1 = ±1`; `s = ∅` | 2 classes; 0 representatives | Agrees |
| 8.2 `finite_braidedCategory` | `C₂`, `F = ±1` | `R² = 1`; `R² = −1` | `±1`; `±i`: two each | Agrees |
| 8.3 `finite_braided_fusion_representatives` | `C₂` over `ℂ` | `(1, ±1)`, `(−1, ±i)` | 4 classes | Agrees; R04 |
| 8.4 `finite_module_representatives` | `Vec`, ranks 0, 1, 2 | `0`, `Vec`, `Vec²` | one class each | Agrees; R02 on the binders |
| 8.5 `finite_indecomposable_module_representatives` | `Vec(C₂)` | ranks `1, 2`; a path `m–p–n` gives `n` in `(b ⊗ a) ⊙ m` | bound `K² = 4`; direct connection suffices | Agrees; R02 |
| 8.6 fields of definition | semion | `F = −1`, `R = i` | `i² = −1` in `ℚ̄` | Agrees |
| 9.1 characteristic zero | `C₂` over `ℂ` | `normGlobalDim = 2` | 2 fusion classes, 2 braidings each | Agrees |

- Source locators: 41 checked against the texts (ENO 9, GHS 18, EGNO 10, Ostrik 4), all at the cited theorem and page; the 15 seeded targets were read in full.
- Library declarations opened: 31, among them Mathlib/AlgebraicTopology/ExtraDegeneracy.lean:74 and 412, Mathlib/AlgebraicTopology/SimplexCategory/Rev.lean:34–52, Mathlib/CategoryTheory/Linear/LinearFunctor.lean:36, TauCeti/CategoryTheory/Semisimple/Basic.lean:56 and 177, TauCeti/AlgebraicGeometry/GroupAction/LocallyClosed.lean:55.
- Cross-roadmap citations resolved: PivotalSpherical 3.3, 6.1, 6.2, 6.9, 11.1, 11.2 at the head of its open revision, which the description names; PresentationsOfMonoidalCategories Layers 0–6 at its open head; SchemeAndStackFoundations §4.2 and CategoricalOperatorAlgebras CA6 on main.
- PivotalSpherical 11.1 at its open head writes the same scalar, `(doubleDualTrace a_S)⁻¹ •` the mate; R01's repair has to agree with it.
- Gate at 9844900: every check passed. Dependency check: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; no UPWARD or CYCLE line. No change outside the folder.
- Elaboration: `sorry` is the only warning (5); the five elaborated types keep every binder and match the characteristic-zero statements of 8.1–8.5.
- Padding: 15 one-tactic trials (`infer_instance`, `rfl`, `simp` on each theorem) fail; nothing to delete.
- Headlines: 4.1, 5.5–5.7, 6.6, 8.1–8.6, 9.1; the five finiteness forms are stated, and the docstring names the missing carrier of each of the others.

Overlap check: read PresentationsOfMonoidalCategories (open), PivotalSpherical (main and its open revision), CategoricalOperatorAlgebras and TemperleyLieb (main). F- and R-symbols, models and gauge: PresentationsOfMonoidalCategories. Squared norms, global dimension, absolute induction: PivotalSpherical. Unitary relative centre: CategoricalOperatorAlgebras CA6. Relative centre, comonad and Davydov–Yetter cohomology, module-symbol presentations: this roadmap, with no second owner found on main or at the open heads.

Source independence: 24 passages compared with 4 sources, none shared; largest share GHS, 18 of 47 locators; contents compared with GHS: independent (GHS §2 is Layer 2, placed after the centre of GHS §3.2–3.3 in Layer 1; Layers 5–9 have no counterpart).

## Not verifiable

- [BB] §§1, 4: recorded as uncertified; the comonad statements were checked against GHS §2 and Mathlib instead.

## Source issues

- none

## For the human reviewers

- none
