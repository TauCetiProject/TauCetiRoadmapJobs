# FIX-DESIGN-FinitenessAndDualityOfGroups~2

Repair of the findings of REV-DESIGN-FinitenessAndDualityOfGroups (round 2). Files changed:
`packages/FinitenessAndDualityOfGroups/design/README.md`, `packages/FinitenessAndDualityOfGroups/design/plan.json`,
`packages/FinitenessAndDualityOfGroups/sources.toml`. This is a design-stage package: there is no
`Suggested.lean`, so no `#check @name` comparison or elaboration was run.

## F01 (P2) — applied

Old 8.8: proper cocompact actions only, with the general case in Non-goals. New 8.9: Brown1974 §6
Corollary 1 for every group of finite homological type. Two new inputs: 5.4, Serre's construction
(Brown1974 Lemma, lines 637–651), and 8.8, Smith theory (Floyd1952; Brown1974 Theorems 1′, 2′).
The cocompact formula is kept as an API bullet. Non-goals were narrowed.

## F02 (P1) — applied

7.2 now uses Tau Ceti `LinearMap.projectiveTrace` (route via `projectiveTrace_cyclic` and
`projectiveTrace_eq_trace`) over arbitrary commutative `R`, with a supplier contract. Two Checks:
`ℚ×ℚ`, `P=R(1,0)` gives `(1,0)` on both sides; a `ℤ/3` character pins `r_P([g⁻¹])`. The 7.1 API
bullet and the plan were updated.

## F03 (P1) — applied

The 6.2 map `a ↦ (a(s_i−1))_i` became `a ↦ ((s_i−1)a)_i`, the right-linear dual of the boundary
`Σ a_i(s_i−1)`. A Check was added: the reversed map's image is not closed under right translation
(`ts ≠ st`). The plan was updated; no other occurrence exists.

## F04 (P2) — applied

6.6 now assumes `T2Space M`. Second countability is derived from compactness
(`ChartedSpace.secondCountable_of_sigmaCompact`, ChartedSpace.lean line 236). The doubled-point
circle is a negative-control Check: weakly `S¹ ∨ S¹`, `π₁ = F₂`, `H¹ = ℤ²`. The AlgebraicTopology
§6.4/§8.7 contracts and the Scope line now say "Hausdorff". The plan hypotheses and test were
updated.

## F05 (P1) — applied

Old: "the split exact sequence … of permutation modules". New: an exact sequence of permutation
representations, split over `k` only. The `ℤ`-line witness was added: the section `1 ↦ [0]` is moved
to `[1]` by `t`. A search for other uses of "split" found none that assume an equivariant splitting.
The plan supplier text was updated.

## F06 (P3) — applied

The 1.4 Check now has terms `RG`, `(RG)²`, `0` in degrees 0, 1, 2 over the augmentation in degree −1,
with boundary `(a, b) ↦ a(s − 1) + b(t − 1)`. It notes that over `ℤ` the degree-0 term has infinite
rank, against rank 1 for the wrong model. The plan test was updated.

## F07 (P1) — applied

8.3 Check: `χ̃` is undefined for nontrivial finite groups (`ℤ/2`: `χ_ℚ = 1`, `χ = 1/2`), and
`χ̃(1) = χ_ℚ(1) = χ(1) = 1`. The Layer 1 Examples now say "nontrivial finite groups", add that the
trivial group is of type `FL`, and add "over any nonzero `R`" to the `FP_1` claim. The plan test was
updated.

## F08 (P3) — applied

3.1 Check: for the sign-free swap, `d s′ − s′ d = 2(y⊗x − x⊗y)`, nonzero when `2 ≠ 0` (over `ℤ`); the
two models coincide over `𝔽₂`. The Layer 2 and Layer 6 Examples now say "nontrivial" / "positive
rank" free groups, with rank 0 the trivial group of dimension 0. The plan test was updated.

## F09 (P3) — applied

All seven Bieri1981 citations (1.7, 1.8, 2.5, 6.1, 6.3, 6.4, 6.5) were replaced by readable
locators, for example BieriEckmann1973 Prop. 5.1 (lines 646–650), plus statements that the
general-`R` or finite-`n` case is proved by the given route. With no citation left, the Bieri1981
manifest entry and the reference were removed. No locator was guessed.

## F10 (P3) — applied

The `TauCeti.Module.IsFPD` contract now reads: a possibly unbounded finitely-generated-free
resolution with projective `m`-th syzygy, equivalently a finite projective resolution. The
`ℚ[ℤ/2]` witness was added. The 1.7(b) route now uses finite free resolutions for FL, finite
projective resolutions for FP, and free resolutions finitely generated in degrees `≤ n` for FP_n.

## F11 (P3) — applied

The downstream bullet's "sit earlier … in revisions placed after this roadmap" was replaced by "these
arithmetic and mapping-class-group instances provide comparisons with the general invariants of
Layers 4, 6 and 8". The owners and sections are unchanged, and no edge was added.

## Adversarial pass on new or changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| 8.9 `mχ(G) ∈ ℤ` | `ℤ/4∗_{ℤ/2}ℤ/6`; `ℤ/2∗ℤ/3`; finite `G`; `ℤ/2×ℤ`; torsion-free | `12·(−1/12)=−1`, max-order model `6·(−1/12)=−1/2`; `6·(−1/6)=−1`, `3·(−1/6)=−1/2`; `|G|·1/|G|=1`; `2·0=0`; `m=1` | holds; lcm, not max, is needed (Check) |
| 8.9 equivalence | denominator `12=4·3` | subgroups of orders 4 and 3 exist | holds both directions |
| 8.9 route: `Q`-stabilizers | `q=gΓ'` fixing `[z]` | `γ⁻¹g∈G_z`, so `Q_[z]≅G_z` since `G_z∩Γ'=1`; `m ∣ |Q|` | holds |
| 5.4(b) stabilizers | `G` finite, `Γ=1`; `ℤ/2×ℤ`, `Γ=ℤ` | stabilizer `G` of order `[G:1]`; diagonal stabilizer `⟨s⟩`, off-diagonal trivial (`t^{2k}σ=σ⇒k=0`) | bound attained; Checks |
| 5.4(b) `γ∈Γ∩G_f` | general | `γf(1)=f(γ)=(γ·f)(1)=f(1)` ⇒ `γ=1` | holds |
| 5.4 negative control | `ℤ^(ℕ)` | `cd_ℤ=⊤` (contains every `ℤⁿ`); finite free resolution impossible | `vcd<⊤` is used |
| 8.8(a) Floyd | reflection of 4-vertex circle; free rotation; trivial `ℤ/p` action | `0+1·2=2·1`; `0+0=2·0`; `χ+(p−1)χ=pχ` | holds; without fixed term `0=2` |
| 8.8(a) Smith inequality | `S⁰` swapped; point | `0≤2`; `1≤1` | holds |
| 8.8 API (mod-p point) | `p=2`, single class in degree 1 | excluded: `χ≢0` forces `X^G≠∅`, so the class is `H₀` | holds |
| 8.8(d) | subdivided interval flip; `E(ℤ/2)` | orbit of `c` is 1 so only `d=1`; `χ=1`, `2∤1` | finite dimension used (Check) |
| 8.8(c) | `C=𝔽_p[P]` in degree 0 | `|P| = |P|·1` | holds |
| 7.2 projective trace | `ℚ×ℚ`, `P=R(1,0)`; `ℤ/3`, `ζ(g)=ω`; `P=RG` | `(1,0)=(1,0)` (Mathlib trace 0); `3·ω/3=ω` vs `ω⁻¹`; `|G|[g=1]` | holds; Checks added |
| 6.2 cokernel | `F=⟨s,t⟩`; `F=ℤ` | right translate of `(s−1,t−1)` is `δ(t)`; reversed map needs `ts=st`; both give `R` | corrected |
| 6.6 T2 | doubled-point circle; torus; Klein bottle | `H¹(F₂,ℤ)=ℤ²` vs `H₀(F₂,ℤ_w)∈{ℤ,ℤ/2}`; orientable; `w(t)=−1` | hypothesis added |
| 3.1 sign Check | `R=ℤ`; `R=𝔽₂` | difference `2(y⊗x−x⊗y)≠0`; `=0` | qualified |
| 1.4 Check | `F₂` over `ℤ` | `C₀=ℤF₂` of infinite rank vs `ℤ` of rank 1 | corrected |
| 8.3 Check | `G=1`; `ℤ/2` | `χ̃=1`; `cd=⊤`, no `χ̃`, `χ=1/2`, `χ_ℚ=1` | corrected |
| IsFPD contract / 1.7(b) | `ℚ` over `ℚ[ℤ/2]` | projective; free resolution would need odd = even dimension | corrected |
| Layer 2/6 Examples | `F₀=1`, `F₁=ℤ`, `F₂` | dimensions 0, 1, 1 | qualified |

## Checks run

Dependency gate (after the last edit):

```text
candidate: FinitenessAndDualityOfGroups is not in the merge order yet; checked as if placed after CohomologyOfGroups (the intake inserts it when its design is accepted)
depcheck: 244 roadmaps, 2200 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. `roadmaps resolve` lists the same three leads as before:
CohomologyOfGroups §4.6, which is an accepted board design in the merge order, and the source keys
BieriEckmann1974 and BrownGTM87, which are not roadmaps. No Lean names were reported unresolved.
The tool does not check names outside TauCetiRoadmap, so I checked the new library names by hand at
the pins:
- `LinearMap.projectiveTrace` (Projective.lean line 72), `_cyclic` (line 96), `_eq_trace` (line 118)
- `SSet.chainComplex` and `SSet.homology` (Homology/Basic.lean lines 67 and 124)
- `IsCoveringMap.existsUnique_continuousMap_lifts` (Lifting.lean line 489)
- `ChartedSpace.secondCountable_of_sigmaCompact` (line 236)
- `SSet.eilenbergZilberHomotopyEquiv` (EilenbergZilber.lean line 761)
- `TauCeti.UniversalCover` (line 70) and `.isCoveringMap` (Covering.lean line 58)

No gate failures were listed in the brief.

## For the maintainer

- **Evidence for F01's new inputs.** Brown's proof with the empty family (lines 652–673) needs two
  things: an acyclic finite-dimensional semi-simplicial complex with finite stabilizers, and the
  Corollary of Theorems 2 and 2′, which rests on Smith theory (lines 327–333). Brown1974 Remark 2
  (lines 337–342) says the chain-complex analogue is false, so both inputs are stated on simplicial
  sets. An object search (`Smith theory`, `Floyd`, `multiplicative induction`, `proper action`,
  `2C.5`) found no owner, and SheafTheoreticSmithTheory treats étale sheaves. The other edits for
  F01: the Scope ownership line, the summary and end-theorem list, "How to read", the Layer 5 title,
  and the Examples and Dependencies of Layers 5 and 8.
- **Renumbering:** the denominator theorem moved from 8.8 to 8.9; 8.8 is now Smith theory, and 5.4
  is new. Searches of main, the open heads and the board found no roadmap citing this roadmap's
  numbered sections.
- **New supplier gap:** `gap:simplicial-replacement-dimension` asks AlgebraicTopology §8.11a for
  the dimension clause of its simplicial replacement.
- **Ownership:** classical Smith theory and Serre's construction are claimed here. No other owner
  was found on main, at the 471 open heads or on the board.
- **Manifest:** Floyd1952 is new (certified, publisher-open). Bieri1981 was removed because nothing
  cites it any more; its waiver is unaffected.
- **Plan/README mismatch not touched:** the plan's 2.5 test "S₃ as a union of cyclic subgroups"
  differs from the README Check (`ℤ²`). No finding covered it, so it is unchanged.
- No suspicious instructions were found in the review text.
