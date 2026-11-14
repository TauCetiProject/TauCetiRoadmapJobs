# Repair of PadicHodgeTheoryPartII (package, round 3)

Findings of the round-2 package review: three findings, labelled R01–R03 in that report. All three are correct and all three are applied. No finding is disputed and none is marked not actionable.

## R01 (P2) — applied

`packages/PadicHodgeTheoryPartII/Suggested.lean`, module docstring. The single Layer 4 bullet became two bullets:

- **Old:** “their images in an equivariant target have stabilizers with open derived part”, said for an arbitrary continuous ξ.
- **New, first bullet (§4.1):** the component formula with no extra hypothesis: π₀ is G(ℚ_p)/C and the stabilizer of gC is gCg⁻¹.
- **New, second bullet (§4.2):** the same conclusion, now stated only when ξ comes from a period point whose image meets G_der(ℚ_p) in an open subgroup. It covers components reached from T_ξ, and every component of Y when G(ℚ_p) acts transitively on them. The bullet also names the GL₂, trivial-ξ counterexample.

The review's suggested repair has the hypothesis on an arbitrary ξ, but the wording follows README §4.2's scope instead (a period point, as in GLX26 Lemma 6.12 lines 2142–2176). This keeps the docstring and the README at the same generality.

The same instance is now also a README §4.2 Check: G = GL₂, ξ = 1, Y = T_ξ, j the identity. There every stabilizer is {1}, and {1} is not open in SL₂(ℚ_p), because [[1,pⁿ],[0,1]] ≠ 1 tends to 1. No other place in the roadmap stated §4.2 without its hypothesis: README lines 7 and 509 and the §4.2 target itself were already correct.

## R02 (P3) — applied

- **Build guide, old:** “Layers 0 and 1 are independent of each other; Layers 2–4 use their predecessors.”
- **Build guide, new:** “Layer 1 uses Layer 0's jump predicate in §1.1, its full-period degree sum in §1.5 and its tested-vector sets in §1.6; Layer 0 does not depend on Layer 1. Layers 2–4 combine these inputs and use their predecessors.”
- **§1.1 *Needs*:** now starts with §0.1.
- **Layer 1 Dependencies, old:** “Layer 0 for §§0.2–0.3 used in §§1.5–1.6”.
- **Layer 1 Dependencies, new:** “Layer 0: §0.1 in §1.1, §0.2 in §1.5 and §0.3 in §1.6”.

Checked the direction: Layer 0 cites no `§1.x` of this roadmap. Its only `§1.` reference is BunGAndNewtonStrata §1.9.

## R03 (P3) — applied

**Pinned topology.**
- `Suggested.lean` no longer lists the p-adic topology on G(ℚ_p) as missing. It names `TauCeti.PointTopology.isTopologicalGroup`.
- The Tau Ceti contract gains a paragraph on the point topology:
  - `TauCeti.PointTopology.topology` (Basic.lean:83) and `instTopologicalSpaceWithConv` (Basic.lean:110);
  - `isTopologicalGroup` (Group.lean:102);
  - `isClosedEmbedding_comap_of_surjective` (Functoriality.lean:110);
  - `isOpenEmbedding_mapValue_integer` and `isCompact_range_mapValue_integer` (IntegralPoints.lean:102, 116).
- The ReductiveGroupsPartII contract no longer supplies *points-topological-group*. It now says that item is the pinned Tau Ceti declaration.

**Derived image (§3.4).**
- `TauCeti.CommHopfAlgCat.mapPointsFunctor_derivedMap_app_surjective` (Image.lean:97) and `faithfullyFlat_derivedMap` (Image.lean:113) are added to the Tau Ceti contract.
- The old sentence “None of these gives the equality… which §3.4 takes from Milne iAG” is removed.
- §3.4's proof route now derives f(D(J°)) = D(f(J°)) from these declarations:
  1. The coordinate map O(f(J°)) → O(J°) is injective, because f(J°) is the scheme-theoretic image.
  2. So D(J°) → D(f(J°)) is surjective on k̄-points.
  3. f(D(J°)) ⊆ D(f(J°)) by `derivedDefiningIdeal_map_le`.
  4. The two are equal because D(f(J°)) is reduced in characteristic zero.
- Milne iAG Proposition 8.20 / Corollary 8.21 stays as the locator. The central-lifting theorem is unchanged.

**The same fix applied elsewhere in the roadmap:**
- Scope and ownership line 19.
- §3.2: the subspace topology on G_der(ℚ_p), and ρ as a homeomorphism of H(ℚ_p) onto its image, now cite `isClosedEmbedding_comap_of_surjective` instead of RG2.0.2.
- *Needs* lines of §3.2, §3.3, §3.4 and §4.1.
- Layer 3 and Layer 4 Dependencies.
- §3.4's first Check now gives the derived-image values.

**Other stale locators found by the same check and corrected:**

| Declaration | Old line | New line |
|---|---|---|
| `derivedDefiningIdeal` | 72 | 69 |
| `derivedDefiningIdeal_map_le` | 66 | 68 |
| `connectedSpace_derived` | 151 | 153 |
| `IsCentralIsogeny` | 77 | 78 |
| `WittVector.isocrystal_classification` | 180 | 179 |
| `AlgebraicIndependent` | 54 | 53 |

**Stale inventory in the docstring's first headline.** “Missing: reductive groups over ℚ_p with their representation categories” was also out of date. Tau Ceti has `TauCeti.reductiveCommHopfAlgProperty` and `TauCeti.PointRepresentationCat`, and has parabolic subgroups only as a predicate (`TauCeti.HopfIdeal.IsParabolicOverAlgClosed`, with no represented G/P). The bullet now says so. It lists as missing B(G) with its Newton and Kottwitz invariants and the subsets B(G, μ), the flag-variety scheme Fl_μ, and filtered isocrystals. README line 7 lists B(G) the same way.

The review is right that none of this makes a headline statable: the B_dR-Grassmannian, the admissible locus, crystalline fibres, isocrystals and diamonds are still missing at the pins.

## Checks

### Elaboration

`lake env lean packages/PadicHodgeTheoryPartII/Suggested.lean`, run from the content checkout: **exit 0, no output**. The file still declares nothing, so there are no `variable` binders to lose.

As a mechanical check of the names, a scratch file with `#check @name` for all 21 library declarations the README cites elaborated with **exit 0 and no errors**. These are:
- the 6 Mathlib names of the Mathlib contract;
- `TauCeti.HopfIdeal.exists_finite_subcomodule_exteriorPower_line_stabilizer`, `TauCeti.Tannaka.fgPointTensorIsoEquiv` and `TauCeti.Tannaka.pointsFunctorIsoTensorAutFunctor`;
- the 5 derived-group and isogeny declarations;
- the 6 point-topology declarations;
- `TauCeti.reductiveCommHopfAlgProperty`.

`TauCeti.Algebra.AlgebraicGroup.Derived.Image`, `TauCeti.Topology.Algebra.PointTopology.IntegralPoints` and `TauCeti.Algebra.AlgebraicGroup.Representation.Tannaka.GroupFunctor` had no object files, so they were built first with `lake build <module>`; the build succeeded. The elaborated type of `mapPointsFunctor_derivedMap_app_surjective` matches the README contract: finite type on both sides, an injective coordinate map, and an algebraically closed value field `L`. No Lean process is left running.

### Dependency check

```text
depcheck: 236 roadmaps, 2147 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line.

`roadmaps resolve` on the README finds no cross-roadmap citation and no Lean name that resolves nowhere. The earlier lead about `FilteredPhiNModule.IsWeaklyAdmissible` no longer appears; the review had already settled it as supplier notation.

The README contains no machine path and no LaTeX delimiters.

## Adversarial pass on changed text

| Statement | Instances tried | Values computed | Result; change |
|---|---|---|---|
| Docstring §4.1 bullet (no extra hypothesis) | ξ = 1 in GL₂; C = {1, diag(1,−1)} with g = [[1,1],[0,1]] | ξ = 1: C = 1, components G(ℚ_p)/1, stabilizers {1}. Second case: gCg⁻¹ ∋ [[1,−2],[0,−1]] ∉ C. Both agree with README §4.1. | Holds without the open-image hypothesis; kept unconditional. |
| Docstring §4.2 bullet (conditional) | GL₂ with ξ = 1, Y = T_ξ; torus; Y a point; free extra summand without transitivity | GL₂: {1} ∩ SL₂(ℚ_p) = {1}; u_n = [[1,pⁿ],[0,1]] → I with det u_n = 1, so {1} is not open. The hypothesis fails and the conclusion fails, so the instance is excluded. Torus: G_der = 1, {1} is open in {1}. Point Y: stabilizer G(ℚ_p), whose derived part G_der(ℚ_p) is open. Free summand: stabilizer 1, not open in SL₂, which is why the clause is restricted to reached components or needs transitivity. | Hypothesis restored; GL₂ instance added as a README §4.2 Check. |
| Build guide; §1.1 *Needs*; Layer 1 Dependencies | Count edges from Layer 1 to Layer 0 and back | 1.1→0.1, 1.5→0.2 and 1.6→0.3: 3 edges. Layer 0 to Layer 1: 0 edges (the only `§1.` in Layer 0 is BunGAndNewtonStrata §1.9). §1.1 on GL₂ standard, μ = (1,0): Fil⁰_gen = V and Fil¹_gen = 0, exhaustive and separated, so every v ≠ 0 has jump 0 by §0.1. | Guide and dependency lists corrected. |
| Derived image, f(D(J)) = D(f(J)) | J = GL₂ → PGL₂; J = T → T/𝔾_m; T ↪ GL₂ as a non-injective-coordinate control; k-points instead of k̄-points | GL₂: O(PGL₂) → O(GL₂) is injective. D = SL₂ (dim 3) → PGL₂ (dim 3) is onto on k̄-points: scale g by 1/√det g. Kernel μ₂. Torus: D = 1 → 1, dim 0 = 0. T ↪ GL₂: O(GL₂) → O(T) is surjective, not injective, and D(T) = 1 does not map onto D(GL₂) = SL₂, so the injectivity hypothesis is what excludes it. Over ℚ_p: diag(p,1) ∈ PGL₂(ℚ_p) is not in the image of SL₂(ℚ_p), since det = p is not a square; this is why the pinned statement is for algebraically closed `L`, matching §3.5's index-4/8 Check. | Holds; §3.4 cites the pinned theorem; Check 1 extended. |
| §3.4, faithful-flatness variant | k̄ base, reduced target O(f(J°)) ⊗ k̄ | Characteristic 0 (Cartier): O(PGL₂)_k̄ is reduced, and SL₂ → PGL₂ is faithfully flat with kernel μ₂ of order 2. | Holds; the hypotheses `IsAlgClosed k` and `IsReduced` are stated in the contract. |
| Point topology on G(ℚ_p); closed subgroups get the subspace topology | GL₂(ℚ_p) ⊃ SL₂(ℚ_p); H ↪ GL(V) via a faithful ρ | SL₂ is cut out by det − 1 = 0. Since ℚ_p is T1, `isClosedEmbedding_comap_of_surjective` makes SL₂(ℚ_p) closed with the induced topology, and u_n → I inside it. ρ is a closed immersion, so O(GL(V)) → O(H) is surjective and H(ℚ_p) is homeomorphic onto ρ(H)(ℚ_p). | Holds; §3.2 and §3.3 re-cited. |
| Compact open integral points (§4.1 *Needs*) | GL₂ over ℤ_p; first congruence subgroup | GL₂(ℤ_p): the entries and det⁻¹ (finitely many generators) lie in ℤ_p, so the set is open, and it is compact. 1 + pM₂(ℤ_p) has index (p²−1)(p²−p) in GL₂(ℤ_p): 6 for p = 2, 48 for p = 3. Both are compact open subgroups. | Holds, including p = 2. |
| Docstring inventory, first headline | Pinned grep of Tau Ceti and Mathlib | Present: `reductiveCommHopfAlgProperty`, `PointRepresentationCat`, the parabolic predicate. Absent: “Kottwitz”, “Isocrystal”, a flag-variety scheme or represented G/P, “Crystalline”, B_cris. Mathlib has only `Module.Grassmannian` (RingTheory). | Inventory corrected; still not statable. |

## Ownership and suppliers

No new construction is introduced. Two existing inputs move to a supplier earlier in the order:
- The topological group G(ℚ_p) moves from ReductiveGroupsPartII §RG2.0.2 *points-topological-group* to the pinned Tau Ceti `TauCeti.PointTopology.isTopologicalGroup`. That RG2.0.2 item is README-only on main and itself names this pinned declaration.
- The derived-image equality moves from a source citation to pinned Tau Ceti.

ReductiveGroupsPartII (on main) stays a supplier for *smooth-morphism-open-map*, *smooth-group-analytic-charts*, §RG2.0.4 and §RG2.1.5. Nothing moved down from a later roadmap. The supplier gaps `quasisplit-highest-weights` and `serre-sen-openness` are unchanged, so `design/plan.json` was not edited.

Ownership against open pull requests was re-checked only for the changed objects: point topology and derived images are pinned library declarations, so no open roadmap can own them.

## For the maintainer

- `Suggested.lean` still declares nothing, so no Lean name changed and no other roadmap's citation is affected.
- README section numbers are unchanged.
- `metadata.toml`, `sources.toml` and `design/plan.json` are untouched. No source text was missing and no `needs-references.toml` was written.
- No suspicious instruction was found in the review or the files read.
