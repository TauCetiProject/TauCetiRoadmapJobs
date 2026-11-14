# Repair of SurfaceGroupCharacterVarieties (design, round 5)

Review settled: `reports/REV-DESIGN-SurfaceGroupCharacterVarieties~4.md` (ten findings, R01–R10;
verdict in `design/review.json`). Each finding was checked against the supplier texts at the heads
that the roadmap tool serves now (MordellLawrenceVenkatesh, TeichmullerGeometry and
GroupActionsOnRiemannSurfaces at their open heads; GeometricTopology, AlgebraicTopology and
ClassifyingSpaces on main) and against the pinned Mathlib and Tau Ceti. All ten hold. Eight are
applied as asked. Two are applied differently: R01 changes one step of the route, and R06 makes the
suggested sentence precise.

Files edited:
- `packages/SurfaceGroupCharacterVarieties/design/README.md`
- `packages/SurfaceGroupCharacterVarieties/design/plan.json`
- `packages/SurfaceGroupCharacterVarieties/sources.toml`: one `cited_for` string for
  FarbMargalit2012.

## R01 (P2) — applied differently

New §2.4 target (plan 2.4a): `Σ_g ≅ StandardSurface.model (orientable g 0)`, so
`Surface.IsOrientable Σ_g` and `Surface.genus Σ_g = g`, for all `g ≥ 0`. §3.4 takes the
`dehn_nielsen_baer` hypotheses and the CW structure from it, uses "`î` perfect on `ℤ^{2g}`" and
`r : z ↦ e^{2πi/g} z̄`. The route uses `H₂`, `H₁` (MordellLawrenceVenkatesh §§5.5–5.6), not `χ`:
see Details.

## R02 (P2) — applied

§3.5 old: "the action … of MordellLawrenceVenkatesh §5.9 … is `Ψ_x` followed by §1.3's action … and
use this formula to extend it". New: "define the action of `Mod^±_{g,n}` as `Ψ_x` followed by §1.3",
then prove that for `H = Sym(d)` on transitive classes it is §5.9's `[p] ↦ [f ∘ p]`
(`TauCeti.ConnectedCoveringSpace.monodromyEquivalence`); Scope, contract, §3.3, How to read follow.

## R03 (P2) — applied

New §2.1 API bullet: on a boundaryless manifold charted on a finite-dimensional real normed space,
every homotopy through homeomorphisms from the identity is an ambient isotopy, by invariance of
domain (`Continuous.isOpenEmbedding_of_injective`) on `ℝ × X`. The contract's "Assumed: … is
ambient isotopy" becomes a "Used:" clause derived from §2.1; the Conventions and §2.2 say the same.

## R04 (P3) — applied

Contract: §5.22 added ("for `g ≥ 1` … `Sp(2g, ℤ)` is surjective"), and §5.23 now reads "for a closed
surface of genus `g ≥ 1`". Layer 2 Examples: "`Mod_{1,0} ≅ SL₂(ℤ)` (MordellLawrenceVenkatesh §5.22)"
→ "(TeichmullerGeometry §5.4a, `mcg_torus_full` restricted to the orientation-preserving subgroup,
read through §2.1)". §2.4: "§5.23 is the case `g ≥ 1`, `n = 1`".

## R05 (P3) — applied

New Conventions bullet "Notation shared with suppliers": `Ψ_x` is the outer action here, while
MordellLawrenceVenkatesh's `Ψ` is the symplectic representation (the action on `H₁`). `Mod^±(X)` is
topological; TeichmullerGeometry §3.1's `Mod±(Σ) = π₀ Diff(Σ)` is identified with it through §0.0h
there and §2.1 here. Torus witness: the shear goes to `[[1,0],[1,1]]` under both.

## R06 (P3) — applied differently

The consumer bullet and `plan.json` entry are deleted; a Scope sentence is added. The suggested
"the case `H` finite, restricted to surjections" is imprecise: that roadmap's epimorphisms start
from a Fuchsian group, its mapping classes preserve colours. It says "the restriction of §3.5's action to the classes of epimorphisms of the prescribed peripheral
orders and to the colour-preserving subgroup".

## R07 (P3) — applied

§2.1's comparison bullet is extended: "composed with TeichmullerGeometry §0.0h's forgetful
isomorphism, it identifies `Mod^±(Σ_g)` with GeometricTopology Layer 1.7.2's `Mod(F)` … the owner of
the mapping class groups of compact surfaces". Also added: a Scope deferral, a contract section
`From TauCetiRoadmap.GeometricTopology`, a *Needs:* entry, and the `plan.json` supplier and 2.1
prerequisite.

## R08 (P3) — applied

§3.4 gains: "This subgroup, transported along TeichmullerGeometry §4.2's `ι : Π ≃* π₁`, is the group
that TeichmullerGeometry §5.4 writes `Out⁺(Π)`, the image of the orientation-preserving classes; its
description by the action on `H₂` is stated here." `plan.json` 3.4 is updated to match.

## R09 (P3) — applied

§3.3 old: "lifts `Ψ_x` and sends `Push(α)` to `MulAut.conj [α]`". New: "lifts `Ψ_x`; by
MordellLawrenceVenkatesh §5.19, `Push(α)` acts by `MulAut.conj [α]`, which is `f_{const}` for its end
map by §3.2". Same pattern: §3.5's non-descent sketch now cites §5.19 instead of §3.3. `plan.json`
3.3 and 3.5 are updated.

## R10 (P3) — applied

§7.1 sketch: "the closed cone `M ∩ Hom`" → "the closed set `M ∩ Hom`". The other uses of "cone"
(§5.4 (i), §7.2) concern `M ⊆ V`, which is a cone, and are left unchanged.

## Details of the repairs

**R01.** Verified:
- MordellLawrenceVenkatesh §5.4 states the connected-sum form and the `(g, b, n)` criterion.
- TeichmullerGeometry §0.0f's "Both are invariant" refers to the boundary count and orientability.
- TeichmullerGeometry §4.3 works on the smooth `S_g` under `g ≥ 2` and has no reflection.

How the route differs from the suggested one:
- The comparison uses `H₂(Σ_g) = ℤ[Σ_g]` (§5.5) and `H₁(Σ_g) ≅ ℤ^{2g}` (§5.6) instead of `χ`. The
  review itself notes that the Euler characteristic shared by the two suppliers is not displayed.
- On the model side, the cellular boundary map gives `H₂ = 0` for every crosscap and every hole word,
  so hole blocks are excluded too.
- `Surface.eulerChar_eq_two_sub_two_mul_genus` is not listed in the contract, because no route uses
  it.

Other places repaired:
- §2.4's presentation sketch: the model, moving points with §5.17, §4.3 kept for the attaching word;
- §2.6, which now uses MordellLawrenceVenkatesh §5.4 through its `(g, 0, n)` criterion and the
  extension argument of §2.2;
- the MordellLawrenceVenkatesh contract (§5.4 statement, §5.6 added);
- the TeichmullerGeometry contract (§0.0f names, §4.3 narrowed to the attaching word);
- the Scope, the Conventions "Surfaces" bullet, and the Layer 2 and 3 Dependencies;
- the §3.4 *Needs:* line (§2.4 and MordellLawrenceVenkatesh §5.6 added; TeichmullerGeometry §4.3 and
  MordellLawrenceVenkatesh §5.4 dropped);
- `plan.json` 2.4a (new), 2.4, 2.6, 3.4 and the supplier entries.

**R02.** Verified: MordellLawrenceVenkatesh §5.9 attaches `Out` and `(f⁻¹)_*` only to coverings;
homomorphisms into an unquantified `G` occur only in its Construction.

The new coverings sketch: the monodromy of `f ∘ p` is `ρ_p` at `f⁻¹(x)` composed with
`FundamentalGroup.map f⁻¹`. Transport along `δ'` conjugates it into `ρ_p ∘ (f⁻¹)_{δ'}`, whose class is
`[ρ_p ∘ Ψ_x[f]⁻¹]`. The existing torus Check now fixes the direction.

Also changed:
- the Tau Ceti contract (`TauCeti.ConnectedCoveringSpace.monodromyEquivalence`,
  `TauCeti.FundamentalGroupoidAction.basepointMulAction`);
- the §3.5 *Needs:* line (§3.1, these names, Mathlib `FundamentalGroup.map`);
- the Layer 3 Dependencies;
- `plan.json` 3.3, 3.5 and the MordellLawrenceVenkatesh supplier entry.

**R03.** Verified: §5.9 says "isotopy classes" without a definition, and §§5.17–5.19 use paths in
`Homeo⁺(S, ∂S)` with the compact-open topology.

Pin: `Continuous.isOpenEmbedding_of_injective`, Tau Ceti
`AlgebraicTopology/Singular/InvarianceOfDomain.lean:201`. The new "Used:" clause says that the
isotopies of §5.9 on `S = Σ_g ∖ P` (paths in `Homeo⁺(S, ∂S)`) are homotopies through homeomorphisms
(exponential law), hence ambient isotopies (§2.1). So `Mod(S)` is the same group under either
reading.

Also changed: §2.2's *Needs:* (MordellLawrenceVenkatesh §5.17) and the 2.1 and 2.2 entries in
`plan.json`, including a new API entry.

**R06.** Verified: GroupActionsOnRiemannSurfaces at its head (§3.4) takes the action from
MordellLawrenceVenkatesh §5.9 and never names this roadmap. The new Scope sentence did not create a
gate edge.

**R07.** GeometricTopology's Scope on main says: "Layer 1.7.2 is the single owner of the mapping
class groups of compact surfaces". The comparison values are `S²` → `2` and `T²` → `GL₂(ℤ)` in all
three groups.

**R08.** Torus value: the subgroup acting trivially on `H₂` is `SL₂(ℤ) = ker det`, which is the
orientation-preserving image in `mcg_torus_full`. `ι = −id` induces the identity on `GL₂(ℤ)`.

## Checks

Dependency gate, final run:

```text
candidate: SurfaceGroupCharacterVarieties is not in the merge order yet; checked as if placed after TeichmullerGeometry (the intake inserts it when its design is accepted)
depcheck: 223 roadmaps, 1974 edges, 0 problem(s)
```

There is no UPWARD and no CYCLE line. The roadmap and edge counts differ from the review's because the
content repository moved during the job; the first run of this round gave 227/2059 with 0 problems.

Other results:
- `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found nowhere.
- `plan.json` parses as JSON.
- No machine paths, LaTeX delimiters or process words were added.
- Lines over the house width: two remain, both pre-existing and untouched; the two the review noted
  are now wrapped.

No gate failures were listed for this round.

## Suggested.lean

There is no `Suggested.lean` at the design stage, and it is not among the files this job may edit. So
no `#check` comparison was run and no Lean name changed. The README's backticked names that are new
this round are all supplier names, each opened at its source:

| Name | Source |
|---|---|
| `schemaRealization`, `StandardSurface.model`, `StandardSurface.orientable`, `StandardSurface.isSurface_model`, `StandardSurface.homeomorph_unique`, `classification_of_surfaces`, `Surface.genus`, `StandardSurface.eulerChar_model` | TeichmullerGeometry `Suggested.lean` at its head |
| `Continuous.isOpenEmbedding_of_injective` | Tau Ceti pin, `InvarianceOfDomain.lean:201` |
| `TauCeti.ConnectedCoveringSpace.monodromyEquivalence` | Tau Ceti pin, `UniversalCover/Classification/MonodromyEquivalence.lean:158` |
| `TauCeti.FundamentalGroupoidAction.basepointMulAction` | same file, line 93 |
| `FundamentalGroup.map` | Mathlib pin, `FundamentalGroupoid/FundamentalGroup.lean:79` |

## Ownership

Searches (`roadmaps grep`) over main and the open heads:

| Searched for | Result | Owner |
|---|---|---|
| `Surface.genus` and `StandardSurface.orientable` | TeichmullerGeometry, and SurfaceTopology (never-cite list); neither compares MordellLawrenceVenkatesh's genus with `Surface.genus` | the new §2.4 target is owned here, as the first roadmap that uses both suppliers |
| a homotopy through homeomorphisms being an ambient isotopy | no match; at the pin only the compact case exists (`TauCeti.isotopic_iff_ambientIsotopic`) | the boundaryless bullet of §2.1 is owned here |

Ownership against the open pull requests was checked through the roadmap tool's index, which covers
the 214 listed in the brief.

## Adversarial pass

The table covers every statement added or changed in this round.

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| §2.4 comparison (new) | `g = 0, 1, 2`; Klein bottle; `N₅`; `RP²`; disc `c h c⁻¹` | `a a⁻¹`: `d₁ ≠ 0`, `d₂ = 0`, `H₁ = 0`, `H₂ = ℤ`; `aba⁻¹b⁻¹`: `H₁ = ℤ²`, `H₂ = ℤ`; `aabb`: `d₂ = (2,2)`, `H₁ = ℤ ⊕ ℤ/2`, `H₂ = 0`; `N₅`: `H₁ = ℤ⁴ ⊕ ℤ/2`; `RP²`: `d₂ = 2`; disc: `d₂ = h ≠ 0`, `H₂ = 0` | only `orientable g 0` matches `H₂ = ℤ`, `H₁ = ℤ^{2g}` | added as Checks |
| `Surface.genus` value | `Σ_g ≅ orientable g 0` | `sInf {S.genus : S.model ≅ Σ_g} = sInf {g} = g`, by `homeomorph_unique` | correct | none |
| §2.4 presentation route | `(0,0)`, `(0,1)`, `(1,1)`, `(0,3)` | trivial, trivial, `F₂` (§5.23 for `g ≥ 1`), `F₂` | correct | citation narrowed |
| §2.1 manifold bullet (new) | `ℝ`, `x + t`; `S¹ × ℝ` twist; a point; `∅` | inverses `y − t` and `(θ − 2πtσ(s), s)` continuous; `ℝ × pt` charted on `ℝ`; vacuous | correct | none |
| §2.1 pasting step | cover `(−∞,0]`, `[0,1]`, `[1,∞)` of `ℝ × X` | the pieces agree at `t = 0` (identity) and at `t = 1` (`H₁`); `finrank(ℝ × E) = 1 + finrank E` on both sides | correct | none |
| §2.1 Layer 1.7.2 comparison | `S²`, `T²` | `2, 2, 2`; `GL₂(ℤ)` three times | correct | none |
| Conventions and §2.2: §5.9's isotopy | `(0,2)` twist | path in `Homeo` gives a homotopy (exponential law) and then an ambient isotopy | correct | none |
| §2.6 via §5.4 `(g, 0, n)` | `(0,0)`, `(1,1)`, `(0,3)` | same type, so homeomorphic preserving orientation; extension as in §2.2 | correct | none |
| §3.3 `(f⁻¹)_* = Ψ_x[f]⁻¹` | `f = id`; torus shear | `1 = 1`; `M⁻¹ = [[1,0],[−1,1]]` | correct | none |
| §3.3 Push formula (§5.19) | constant `α`; torus | `conj 1 = id`; `conj` trivial on `ℤ²`, `Push` trivial | correct | citation |
| §3.4 hypotheses | `g = 1, 2` | `IsOrientable`, `genus = g ≥ 1`, `∂ = ∅` | statable | none |
| §3.4 reflection `r` | `g = 1`; `g = 2` | `j ↦ 3 − j`, `(0,t)∼(2,1−t)` ↦ `(3,1−t)∼(1,t)`; mod 8: `4 ↦ 7`, `6 ↦ 5`, `(4,t)∼(6,1−t)` ↦ `(7,1−t)∼(5,t)` | descends | none |
| §3.4 sign of `r` | `g = 1` | `r` swaps `a, b`, `det [[0,1],[1,0]] = −1`, which equals the torus Check's `det A` on `H₂` | consistent | none |
| §3.4 perfect form | `g = 1`; `g = 0` | `î(e₁, e₂) = ±1`; `H₁ = 0`, `î = 0` (excluded by `g ≥ 1`) | correct | none |
| §3.4 `Out⁺` clause | torus | `{det = 1} = SL₂(ℤ)`; `ι = −id` acts trivially on `Out` | correct | none |
| §3.5 definition vs coverings | torus, `d = 3` and `d = 2`; `d = 1` | `M(ker ρ) = {b ≡ a} = ker(ρ ∘ M⁻¹)` (mod 3 and mod 2); right action gives `{b ≡ −a}`; `d = 1` trivial on both sides | correct | none |
| §3.5 transport step | general `δ'` | `map f⁻¹ = conj_{δ'} ∘ (f⁻¹)_{δ'}`, so `ρ_{f∘p} = T (ρ_p ∘ (f⁻¹)_{δ'}) T⁻¹` | correct | none |
| §7.1 `M ∩ Hom` | `ℤ`, `SO(2)` | `‖(g, g⁻¹)‖ = 2`; `(2g)(2g⁻¹) = 4 ≠ 1`, so not a cone; closed and compact | "set", not "cone" | R10 |
| Scope sentence on GroupActions | `(0; 2, 5, 10)`, `C₁₀` | orders distinct, so only the identity preserves colours and both actions are trivial | consistent | none |
| Conventions notation witness | torus shear | `[[1,0],[1,1]]` under `Ψ_x` and on `H₁` | correct | none |
| Examples `Mod_{1,0}` | torus | orientation-preserving part of `GL₂(ℤ)` is `SL₂(ℤ)` (TeichmullerGeometry §5.4a) | correct | none |

## Sources

No source was fetched and no `needs-references.toml` was written. The new §2.4 target cites
FarbMargalit2012 Ch. 1, §1.1, Theorem 1.1. That work is waived and was already in the manifest's
locator; only its `cited_for` string changed.

## For the maintainer

- **New supplier edge.** This roadmap now consumes GeometricTopology Layer 1.7.2, which is on main.
- **Consumer entries in `plan.json`.**
  - The consumer `GeometricTopology` is renamed `GeometricTopologyPartII`, as the README already says
    ("GeometricTopology, Part II"), so that the same roadmap is not both supplier and consumer.
  - GroupActionsOnRiemannSurfaces is no longer listed.
- **Renamed heading.** §2.4 is now titled "The standard model and presentations of punctured surface
  groups", so its anchor changes. No roadmap cites this design yet.
- **Ids.** No id that another roadmap cites was dropped. The new `plan.json` target id 2.4a sits
  inside §2.4.
- **Untrusted text.** None of the texts read contained instructions.
