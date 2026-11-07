# FIX-PKG-MappingClassGroupsAndCanonicalRepresentations~2

Repair round for the review `REV-PKG-MappingClassGroupsAndCanonicalRepresentations` (13 findings:
three P2, ten P3). Every finding was verified against the cited supplier at its open head or on
main, the pinned libraries, or the cached source text; all thirteen are right and all are
applied. Files changed: `packages/MappingClassGroupsAndCanonicalRepresentations/README.md`,
`packages/MappingClassGroupsAndCanonicalRepresentations/Suggested.lean` (docstrings only),
`packages/MappingClassGroupsAndCanonicalRepresentations/sources.toml` (the `Mor93` entry).
`design/plan.json` and `metadata.toml` are unchanged (no new supplier gap was needed).

## F01 (P2) — applied

Verified: SurfaceTopology at its open head, Layer 9 "Twist, intersection and matrix conventions",
fixes the positive twist `([θ], t) ↦ ([θ + t], t)` with orientation `dθ ∧ dt` and tabulates
`T_a : [b] ↦ [b] + [a]`, `T_b : [a] ↦ [a] − [b]` for `a · b = +1`; the `dehnTwist` docstring repeats
"sends b to b+a". The README's formula gave `T_a[b] = [b] − [a]`.

Changed: §0.3 now states `T_β^k(x) = x + k · î(β, x) · [β]` (equivalently `x − k · î(x, β)[β]`)
for the positive twist, with the collar coordinates and the intersection sign spelled out; the
multitwist formula carries the same sign; the torus Check gives `T_a = [[1, 1], [0, 1]]`,
`T_b = [[1, 0], [−1, 1]]`, names the supplier's table, and keeps the opposite convention (the
inverse matrices, the old formula) as the negative control. §0.5: `Push(α) = T_a⁻¹ T_b` for the
positive twist (Farb–Margalit's `T_a T_b⁻¹` is for the left twist), with a new sign-witness Check:
the push map in collar coordinates is `([θ], t) ↦ ([θ + ψ(t)], t)` with `ψ(0) = 1`, which is the
positive twist about the right push-off times the inverse positive twist about the left push-off;
`T_a T_b⁻¹` is the push along `α⁻¹`. §3.3 rewritten with `î(a, x) = 1` and the computed
`χ(T_a^k x) = χ(x) χ(a)^k`. Sign-independent uses (§0.3 unipotence, §0.5 genus-two Check, §7.1,
§7.2, §12.4) were recomputed and left unchanged; the genus-two Check now says that it does not fix
the sign.

## F02 (P2) — applied

Verified on main: FreeGroupsAndLimitGroups §6.1 defines `OrientableSurfaceGroup g m` as the
presented group with relator `[a₁,b₁] ⋯ [a_g,b_g] p₁ ⋯ p_m`, commutator `x⁻¹y⁻¹xy`, with
`SurfaceGroup.peripheral`, `SurfaceGroup.lift`, `SurfaceGroup.abelianization` and the disc, pants
and torus Checks; §6.2 proves freeness for `m ≥ 1` with the explicit basis (`isFreeGroup_orientable`
at its `Suggested.lean` line 1054); §6.1a compares with polygonal models. The generator inversion
`aᵢ ↦ aᵢ⁻¹, bᵢ ↦ bᵢ⁻¹, pⱼ ↦ cⱼ` carries that relator word for word to `surfaceRelator g n`
(computed: `a⁻¹b⁻¹ab p₁ ↦ aba⁻¹b⁻¹c₁` for `(1, 1)`), so the presented groups are isomorphic with
matching peripheral tuples.

Changed: Scope lists the presented group, its peripheral tuple, abelianization and freeness as
left to FreeGroupsAndLimitGroups §§6.1–6.2 (and §6.1a) and records that `surfaceGroup g n` is
`OrientableSurfaceGroup g n` transported along the inversion, kept in `Suggested.lean` only as the
statability carrier; Conventions say the same; a new supplier contract "From
TauCetiRoadmap.FreeGroupsAndLimitGroups"; §0.1 keeps only the identification of
`surfaceGroup g (b + p)` with `π₁(Σ_{g,b,p}, x)`, the meaning of `cⱼ`, and the deduction of freeness
of `π₁` through the isomorphism; the three restated API bullets and the five restated Checks are
deleted and replaced by two bullets and three Checks about the identification and the transport
(the `(1, 1)` relator computation, the three `(0, b, p)` pants with distinct peripheral classes, the
closed torus with `î(a, b)` unchanged by the inversion); Layer 0 Dependencies and the `*Needs:*`
line cite FreeGroupsAndLimitGroups §§6.1–6.2. The Lean docstrings of `surfaceGroup` and the module
record the transport; no signature changed.

## F03 (P2) — applied

Verified at the open head of FiniteGroupInvariants: §10.5 defines `jordanBound n` and states
`jordan_exists_abelian_normal_index_le` over every field of characteristic zero, with
`jordanBound 1 = 1` as a Check (consistent with §1.5's `J(1) = 1`). FiniteGroupInvariants is an
open pull request adding a new roadmap folder and is among the sibling checkouts of the brief, so
it is citable like SurfaceTopology and TeichmullerGeometry; the depcheck below accepts it.

Changed: §1.5 is retitled "The Jordan identity and two-generation of finite general linear
groups"; Jordan's theorem is cited from FiniteGroupInvariants §10.5 (`jordanBound`,
`jordan_exists_abelian_normal_index_le`, Curtis–Reiner Theorem 36.13 as the classical reference)
and §1.5 keeps `m(r) = J(r)!`, the identity `[x^{m(r)}, y^{m(r)}] = 1` with its two-line proof, and
two-generation of `GL_r(𝔽_p)`; its `*Needs:*` line drops CharacterTheory Layer 2. Scope moves
Jordan's theorem to the deferrals and keeps the identity; a new supplier contract "From
TauCetiRoadmap.FiniteGroupInvariants"; the layer summaries (lines "and Jordan's theorem") say
"the Jordan identity"; §§11.2 and 11.5 `*Needs:*` and the Layer 1 and Layer 11 Dependencies cite
FiniteGroupInvariants §10.5.

## F04 (P3) — applied

Verified: TeichmullerGeometry at its open head has no `T2`, `T3`, `T6` labels; its §2.4 is
"Dimension `3g − 3`", §§3.1–3.3 the mapping class groups, their action and proper discontinuity
with the moduli groupoid, §5.1 asphericity, §5.2 Dehn–Nielsen–Baer, §5.6 stabilizers.

Changed: every `T2`, `T3`, `T6` (Scope, the supplier contract, §0.4, §2.3, Layer 0 and Layer 2
Dependencies) now reads Layer 2 (§2.4), Layer 3 (§§3.1–3.3), Layer 5 (§§5.1, 5.2, 5.6) or the
specific section.

## F05 (P3) — applied

Verified: ComplexComparisonPartII §C5.6 at its open head defines `CanonicalLogExtension` with
residue eigenvalues in a chosen section `τ` of `ℂ → ℂ/ℤ`, local monodromy conjugate to
`exp(−2πi Res)`, uniqueness as prose API, and the scalar normalizations
`localMonodromy a = exp(−2πia)` and `residueStripRep a = a − floor(Re a)`; no dotted names.

Changed: the contract cites `RegularSingular`, `CanonicalLogExtension` (described in prose),
`localMonodromy`, `residueStripRep` and `deligneRiemannHilbert`; §5.2's `*Needs:*` cites
`CanonicalLogExtension`, `residueStripRep`. The three invented dotted names are gone.

## F06 (P3) — applied

Verified: at the supplier's open head §IG.1.4 "Outer actions and arithmetic representations" says
"Call `ρ` arithmetic if …" with no Lean name; §IG.3.1 "Artin neighbourhoods are `K(π, 1)`" defines
the data in prose and uses `TauCeti.IsAspherical`; §IG.5.4 "Versal families with specified
topological monodromy" describes chart, cover, monodromy and section in prose. None of the nine
names occurs in its README or `Suggested.lean`.

Changed: the contract, §6.4 and Layer 10's preamble cite the subsections by title with their
content in prose; the nine names are removed.

## F07 (P3) — applied

Verified on main: AlgebraicTopology Stage 8 owns based pairs, relative homotopy groups and the
sequence of a pair; its lines 108–113 assign the fibration homotopy LES to DGFloer Layer 1 item 2,
which consumes `TauCeti.TopCat.serreFibrations` listed at Stage 5 item 5; DGFloer's README (open
head) says the same at its lines 132–133 and 193–194. At the pinned Tau Ceti no declaration named
`serreFibrations` or `mem_serreFibrations_of_exists_trivialization` exists (`grep` over the pinned
tree returns nothing), so AlgebraicTopology's "native" refers to a newer library; the README
therefore cites Stage 5 item 5 by section and does not claim the names as pinned.

Changed: the contract heading and text now cite AlgebraicTopology Stage 5 item 5 (Serre
fibrations; locally trivial maps are Serre fibrations) and DGFloer Layer 1 item 2 (the homotopy
exact sequence of a Serre fibration), with the two applications named (the evaluation fibration of
§0.4 and `C° → M` of §2.6); §§0.4, 0.5, 2.6 `*Needs:*` and the Layer 0 and Layer 2 Dependencies
replace Stage 8 by Stage 5 item 5 and DGFloer Layer 1 item 2; Stage 8 is no longer cited. DGFloer
was preferred to a new Layer 0 target because the sequence is planned there and AlgebraicTopology
on main already routes to it; DGFloer's suppliers are all on main (HeegaardFloer, MorseNovikov,
AlgebraicTopology, …), so the depcheck places it early and reports no problem.

## F08 (P3) — applied

Verified at the pin: `TauCeti/RepresentationTheory/Continuous/InvariantComplement.lean` line 81
opens `namespace ContRepresentation` with no enclosing `TauCeti`; the theorem is at line 194.

Changed: all seven occurrences now read `ContRepresentation.IsUnitary.isSemisimpleRepresentation`
(contract, §§4.4, 4.5, 7.7, Layer 4 and Layer 7 Dependencies).

## F09 (P3) — applied

Verified on main: CharacterTheory Layer 2 is "Wedderburn, the irreducible index, and the count";
its line 107 routes the Schur collapse to SemisimpleAlgebras Layer 1 and its Mathlib table (line
175) lists `LinearMap.bijective_or_eq_zero`. At the pin `LinearMap.bijective_or_eq_zero` is
`Mathlib/RingTheory/SimpleModule/Basic.lean` line 499 and
`Representation.IsIrreducible.bijective_or_eq_zero` is `Mathlib/RepresentationTheory/Irreducible.lean`
line 60 (an intertwiner between irreducible representations is bijective or zero).

Changed: Scope and the RepresentationTheory contract keep CharacterTheory Layer 2 for Wedderburn
and the irreducible index only; the Mathlib contract lists Schur's lemma as
`Representation.IsIrreducible.bijective_or_eq_zero` with the module form
`LinearMap.bijective_or_eq_zero`; §§3.4, 4.4, 4.5 and 5.9 `*Needs:*` cite it. §§6.6 and 9.2 keep
CharacterTheory Layer 2, which they use for the isotypic decomposition of finite groups.

## F10 (P3) — applied

Verified: Crossref records `10.1007/BF01231286` as S. Morita, *The extension of Johnson's
homomorphism from the Torelli group to the mapping class group*, Invent. Math. 111 (1993),
197–224; the previous DOI `…285` is Heath-Brown's article in the same volume.

Changed: on the existing key `Mor93`, `authors`, `title`, `venue`, `doi` and `url` now record
Morita's paper; `status = "uncertified"`, the locator and `cited_for` are unchanged. No new key.

## F11 (P3) — applied

Verified: CH19 line 177, inside the statement of Theorem A, reads "Assume that `2g − 2 + n > 0`
and that `∇₀` is mild", so the hyperbolic range is a stated hypothesis. The LL22 Lemma 7.5.1 half
is right (torsion characters are dense on the torus and the annulus).

Changed: the last bullet of "Corrections to the sources" now concerns LL22 Lemma 7.5.1 only, with
the reason; the Cousin–Heu clause is deleted (§9.5's Check already records the source's
hypothesis).

## F12 (P3) — applied

Verified: MordellLawrenceVenkatesh (merge order 176) cites this roadmap nowhere and plans the same
objects in its Layer LV.5 (§5.9, §5.12, §5.20, §5.21).

Changed: the Downstream-consumers bullet says that MordellLawrenceVenkatesh, later in the order,
states the same objects in Layer LV.5 and is a consumer of this layer, and notes that its twist
formula `x ↦ x + î(x, b)[b]` is the formula of the inverse of SurfaceTopology's positive twist.
The duplication is that roadmap's defect; see the maintainer note.

## F13 (P3) — applied

Verified: ResolutionOfSingularitiesCharacteristicZero §6.2 "SNC compactification" (open head, line
894) names no Lean declaration and says compactification is a README target (line 956);
`sncCompactification` is AlgebraicModuliForArithmeticGeometry §9.5's label (its line 10387).

Changed: the contract reads "ResolutionOfSingularitiesCharacteristicZero §6.2 (SNC
compactification)" without the backtick; AlgebraicModuliForArithmeticGeometry §9.5's three names
stay.

## Checks

**Elaboration.** `lake env lean` on `packages/MappingClassGroupsAndCanonicalRepresentations/Suggested.lean`
from the content checkout: exit 0; output exactly the three `declaration uses sorry` warnings at
lines 160, 175, 184 (`putmanWieland_of_card_lt`, `mcgFinite_finite_image`,
`freeGroup_finite_image`); no error, no other warning. Only docstrings changed in the file.

**Signatures.** A scratch copy with `#check @name` for all ten declarations was elaborated; every
elaborated type is identical to the worker's signatures file (the file uses no section variables,
so no binder can be lost). `HasFiniteConjugacyOrbitUnder : {G} → [Group G] → {r} →
Subgroup (MulAut G) → (G →* GL (Fin r) ℂ) → Prop`; `putmanWieland_of_card_lt` carries
`[Fintype H]`, `Fintype.card H < g ^ 2`, surjectivity, `Γ' ≤ prymStabilizer ϕ`,
`Γ'.relIndex (prymStabilizer ϕ) ≠ 0` and the fixed-vector hypothesis; `mcgFinite_finite_image`
and `freeGroup_finite_image` carry `r ^ 2 < g + 1`. Each agrees with its README statement
(§§6.7, 9.3, 9.7).

**Dependency direction.**

```
depcheck: 241 roadmaps, 2436 edges, 0 problem(s)
```

No UPWARD, no CYCLE, no `moved:` line (with the new citations of FreeGroupsAndLimitGroups,
FiniteGroupInvariants and DGFloer).

**Citations.** `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name
found nowhere (the four leads of the worker's run, `residueSpectrum`, `withSection`, `actH₁`,
`Mbar`, are resolved: the first two were invented and are removed, the last two exist at the
supplier heads).

## Adversarial pass on the changed statements

| Statement | Instances tried | Values on each side | Result | Change |
|---|---|---|---|---|
| §0.3 `T_β(x) = x + î(β, x)[β]` | torus, `î(a, b) = 1`, `x = [b]`, `β = a`; `x = [a]`, `β = b`; `x = [a]`, `β = a` | `[b] + [a]`; `[a] − [b]`; `[a]` (since `î(a, a) = 0`) | matches SurfaceTopology's table `A = [[1,1],[0,1]]`, `B = [[1,0],[−1,1]]`; old formula gave `[b] − [a]` | formula and Check rewritten |
| §0.3 matrices generate `SL₂(ℤ)` (Layer 0 Example) | `A`, `B` as above | `ABA = BAB = [[0,1],[−1,0]]`, both determinant one | sound | none |
| §0.3 multitwist | `T_a^m T_b^k` with disjoint `a, b` | `x ↦ x + m î(a,x)a + k î(b,x)b`; nilpotent part squares to zero since `î(a,b) = 0` | sound with either sign | sign rewritten |
| §0.5 `Push(α) = T_a⁻¹ T_b` | collar `(ℝ/ℤ) × [−1,1]`, `α = {t = 0}`, orientation `dθ ∧ dt`; `a = {t = ½}` (left), `b = {t = −½}` (right) | push: `θ ↦ θ + ψ(t)`, `ψ(0) = 1`; `T_b`: `θ ↦ θ + u_b(t)` rising `0 → 1` on `[−1, −ε]`; `T_a⁻¹`: `θ ↦ θ − u_a(t)`, i.e. `1 → 0` mod `1` on `[ε, 1]`; product is a `ψ` | `T_a⁻¹ T_b`; `T_a T_b⁻¹` is the push along `α⁻¹` | formula and witness Check added |
| §0.5 genus-two Check | `[a] = [b]` | `x + î(a,x)a − î(b,x)b = x` for both signs | sound; does not fix the sign (said) | Check annotated |
| §3.3 `χ(a)^k = 1` | `î(a, x) = 1`, `T_a^k` stabilizing `χ` | `χ(T_a^k x) = χ(x + k a) = χ(x)χ(a)^k = χ(x)` | sound with either sign | rewritten with the value |
| §0.1 generator inversion | `(1, 1)`: `a⁻¹b⁻¹ab p₁`; `(2, 0)`; `(0, 3)` | `↦ aba⁻¹b⁻¹c₁ = surfaceRelator 1 1`; `↦ a₁b₁a₁⁻¹b₁⁻¹a₂b₂a₂⁻¹b₂⁻¹`; `p₁p₂p₃ ↦ c₁c₂c₃` | an automorphism of the free group carrying relator to relator: isomorphism of presented groups, `pⱼ ↦ cⱼ` | stated in §0.1, Conventions, Scope |
| §0.1 `(1, 1)` Check, identity transport | relator `a⁻¹b⁻¹abc₁` vs `aba⁻¹b⁻¹c₁` | `(ab)(a⁻¹b⁻¹ab)(ab)⁻¹ = aba⁻¹b⁻¹`, so the two relators are conjugate for one handle; the peripheral classes agree, the words differ | Check discriminates word-for-word transport | Check added |
| §0.1 pants Check | `(0,1,2)`, `(0,0,3)`, `(0,3,0)` | all `F₂` on `c₁, c₂`, `c₃ = (c₁c₂)⁻¹`; abelianization `ℤ²` with basis `c₁, c₂`, so `c₁` is not conjugate to `c₂^{±1}` | sound | Check added |
| §0.1 closed torus Check | `(1, 0)` | `ℤ²`; `î(a⁻¹, b⁻¹) = î(a, b) = 1` | sound | Check added |
| §1.5 identity from Jordan | `A ⊴ F` abelian of index `k ≤ J(r)` | exponent of `F/A` divides `k!`, `k! ∣ J(r)!`; `x^{m}, y^{m} ∈ A` commute | sound | proof sentence added |
| §1.5 `GL₂(𝔽_p)` violation | `u, l` | `u^m l^m = [[1+m², m],[m, 1]]`, `l^m u^m = [[1, m],[m, 1+m²]]`, equal iff `p ∣ m` | sound | none |
| §1.5 `r = 1` | finite subgroups of `K^×` cyclic | `J(1) = 1`, FiniteGroupInvariants `jordanBound 1 = 1` | consistent | Check cites the supplier |
| §0.4 asphericity citation | closed genus `≥ 2`; disc; sphere | TeichmullerGeometry §5.1; retraction to a graph; `π₂(S²) = ℤ` excluded | sound | label replaced |
| §0.5 / §2.6 fibration sequence | evaluation bundle `Homeo⁺(Σ,∂Σ) → int Σ`; `C° → M` | locally trivial ⇒ Serre fibration (AT Stage 5 item 5); LES (DGFloer Layer 1 item 2) | sound | citations replaced |
| Corrections, CH19 item | CH19 Theorem A | hypothesis `2g − 2 + n > 0` at its line 177 | the old correction was wrong | clause deleted |

## Notes for the maintainer

- **MordellLawrenceVenkatesh** (merge order 176) plans in Layer LV.5 the objects of Layer 0 here
  and does not cite this roadmap; its stated positive-twist formula `x ↦ x + î(x, b)·b` (its line
  143 and §5.12) is the inverse-twist convention relative to SurfaceTopology's positive twist,
  the same sign error this round repaired. Both are defects of that roadmap, for its own review.
- **`TauCeti.TopCat.serreFibrations`** is absent at the pinned Tau Ceti although AlgebraicTopology
  on main (Stage 5 item 5) calls it native; this README cites the section, not the name.
- **DGFloer Layer 1 item 2** is now a supplier (the fibration homotopy sequence), as AlgebraicTopology
  on main and MordellLawrenceVenkatesh already have it; DGFloer is an open pull request not in the
  merge order, and the depcheck with `--movable` reports no problem.
- **FiniteGroupInvariants** (open pull request, not in the merge order) is now a supplier for
  Jordan's theorem; if the project rejects draft suppliers, §1.5 must take the statement back.
- Names other roadmaps might cite from here: none changed (`surfaceGroup`, `peripheralLoop`,
  `pureMappingClassAut`, `HasFiniteConjugacyOrbitUnder`, `prymStabilizer`,
  `compactPrymCohomology`, the three theorems; all signatures unchanged).
- Ownership against open pull requests whose files the brief does not provide was not checked.
- No source needed fetching; `needs-references.toml` was not created. FM12 remains uncertified,
  so the claim that Farb–Margalit's Proposition 6.3 and Fact 4.7 are stated for the left twist
  rests on the sign computation recorded in §0.5's Check, not on the text.
