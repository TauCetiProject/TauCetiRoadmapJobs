# Roadmap: local fields and ramification, part ii: general valued fields

**Summary.** This roadmap extends [Local fields and ramification](../LocalFieldsRamification/README.md)
from nonarchimedean local fields to fields with an arbitrary Krull valuation: valuations of any
height, with any ordered value group, on fields that need not be complete or henselian and whose
residue fields need not be perfect. Starting from Mathlib's valuation subrings, decomposition and
inertia subgroups and Krasner property, from the henselization of pairs of Scheme and stack
foundations and from Tau Ceti's profinite Sylow theory and cohomological dimension, it builds the
ramification tower `Kʰ ⊆ Kᵘ ⊆ Kᵗ ⊆ Kˢ` of a valued field, the six classes of algebraic extensions
(strictly unramified, unramified, tame, henselian, totally ramified, purely wild) with their tower
laws, maximal complements, decompletion in height one, composition of valuations and the algebraic
Abhyankar inequality. Its end theorems are Temkin's tameness theorem — a valued field with
residue characteristic exponent `p` and no nontrivial finite extension of `p`-power degree is tame,
that is, every algebraic extension is tame at every prolongation — and its separable form: a field
without nontrivial finite separable extension of `P`-number degree is separably tame at every
valuation whose residue characteristic lies in `P`. On the way it proves the Kuhlmann–Pank–Roquette
splitting `Kᵗ ⊗_K K_w ≅ Kᵃ` over henselian fields and in height one, and the two profinite inputs
of that splitting: `cd_p(G_F) ≤ 1` in characteristic `p`, and sections of profinite surjections with
pro-`p` kernel onto groups of `p`-cohomological dimension at most one.

## Scope and ownership

The base roadmap, Local fields and ramification, stops at finite extensions of nonarchimedean local
fields: discrete valuations, finite residue fields and the formula `[L : K] = e·f`. This Part II
owns the general theory below; its comparison with the base roadmap is §2.10.

**Owned here.** Prime-supported degrees, `P`-extensions, `P`-closed and separably `P`-closed
fields and split towers (Layer 0); normalization and prolongations of a valuation in a finite
extension, the behaviour of valuation rings under étale maps and (strict) henselization, the
henselization of a valued field, the tensor decomposition `L ⊗_K Kʰ ≅ ∏ L_wʰ`, and finite
presentation of flat finite-type algebras over valuation rings and Prüfer domains (Layer 1); the
étale criterion for unramified extensions, the structure of the absolute Galois group of a henselian
valued field with separably closed residue field, the ramification tower, the six extension classes,
tame and separably tame fields, their tower laws and the comparison with perfection (Layer 2); the
characteristic-`p` bound `cd_p(G_F) ≤ 1`, the section theorem for pro-`p` kernels, maximal
extensions with prescribed ramification, the elementary complements, the splitting equivalences and
the Kuhlmann–Pank–Roquette theorem (Layer 3); the rank-one Krasner and root-continuity bridge,
decompletion and the height-one splitting and tameness theorems (Layer 4); composed valuations,
finite-height coarsening chains, the Abhyankar inequality and the height bound, and the composition
criteria (Layer 5); and the general tameness theorem with its separable export (Layer 6).

**Left to other roadmaps and the libraries.**
- The henselization of a pair, its universal property, filtered colimits, integral base change,
  products over coprime ideals and the henselization at a prime are Scheme and stack foundations,
  §§0.12–0.13 (`Henselization.algebra`, `existsUnique_lift`, `local_henselization`,
  `henselization_filtered_colimit`, `henselization_integral_base_change`, `henselization_at_prime`).
  This roadmap proves that the henselization of a valuation ring is a valuation ring and builds the
  valued field on it (§§1.2–1.3); it defines no second henselization functor.
- The strict henselization of a local ring with respect to a separable closure of its residue field
  is ModularCurves 4D (`StrictHenselization.algebra`, `existsUnique_lift`, `map`). §1.2 proves that
  for a valuation ring it is again a valuation ring with the same value group.
- Finite extensions of nonarchimedean local fields, their unramified, totally ramified, tame and wild
  classes, wild inertia `P_K`, the tame character and arithmetic Frobenius are Local fields and
  ramification, Layers 2–4. §2.10 compares them with the general classes and proves nothing about
  local fields that the base roadmap states.
- Decomposition and inertia subgroups of a valuation subring are Mathlib's
  `ValuationSubring.decompositionSubgroup` and `ValuationSubring.inertiaSubgroup`; coarsenings and
  their inverse laws are Mathlib's `ValuationSubring.ofPrime` and `ValuationSubring.idealOfLE`;
  convex subgroups and coarsening of a valuation by a convex subgroup are Tau Ceti's
  `TauCeti.ConvexSubgroup` and `Valuation.coarsenByUnits`; the Krasner property is Mathlib's
  `IsKrasner`.
- Profinite Sylow theory (Profinite and pro-`p` groups, Layer 2) and the equality of `cd_p` of a
  profinite group with that of its Sylow pro-`p` subgroups (Layer 6 of the same roadmap) are at the
  pinned Tau Ceti: `TauCeti.IsProPSylow`, `TauCeti.exists_isProPSylow`,
  `TauCeti.IsProPSylow.exists_map_conj_eq`, `TauCeti.IsProPSylow.eq_of_normal`,
  `TauCeti.IsProPSylow.map_of_surjective` and `TauCeti.IsProPSylow.cohomologicalDimensionAt_eq`.
  The invariant `cd_p` itself, its reduction to finite coefficients and its monotonicity on closed
  subgroups are Continuous cohomology of profinite groups, Layer 11, implemented as Tau Ceti's
  `TauCeti.cohomologicalDimensionAt`.
- Descent of finite presentation and of étaleness from the source of a faithfully flat morphism
  (EGA IV, 17.7.5(iv) and 17.7.7) belongs to Scheme and stack foundations, Layer 1; §2.1 uses it
  through the supplier contract below.

## Conventions

- **Valued fields.** A valued field is a field `K` with a Mathlib `ValuationSubring K`, written `V`
  or `K°`. Two valuations are equivalent exactly when their valuation subrings are equal; no choice
  of value group is part of any definition. The value group `Γ_K` is the group of units of Mathlib's
  `ValuationSubring.ValueGroup`, written multiplicatively (`|x| ≤ 1` on `V`); where rational ranks
  and tensor products occur it is written additively, with the sign reversed. An extension of valued
  fields `(L, W)/(K, V)` is a field extension with `W.comap (algebraMap K L) = V`; `W` is then a
  *prolongation* of `V`. For valuations given as maps, `Valuation.HasExtension` is the same
  condition.
- **Residue characteristic exponent.** `κ_K` is the residue field of `V`, and `p = ringExpChar κ_K`
  is its characteristic exponent: `p` is the residue characteristic when it is positive and `p = 1`
  in residue characteristic zero. For `p = 1`, a `p`-number is `1`, the set of primes dividing `p`
  is empty, "prime to `p`" means every integer, and no Sylow statement is instantiated.
- **Fixed closures.** `Kᵃ` is Mathlib's `AlgebraicClosure K` and `Kˢ ⊆ Kᵃ` the separable closure
  in it. Where a construction needs a prolongation of `V` to `Kᵃ`, it is fixed once and restricted to
  every intermediate field; all henselizations and ramification fields are taken inside `Kᵃ` with
  respect to it. Changing the prolongation conjugates every field of the tower (§2.3).
- **Henselian.** `K` is henselian when `HenselianLocalRing V`. The relative notion "henselian
  extension" (§2.6) means uniqueness of the prolongation to the extension field and does not say that
  the extension field is henselian.
- **Height.** The height of `V` is Mathlib's `ringKrullDim V`; height `d < ∞` means that `Spec V`
  is a chain of exactly `d + 1` prime ideals, height `0` is the trivial valuation and height one is
  a nontrivial valuation with archimedean value group. Height is not completeness and does not bound
  the rational rank.
- **Splittings and maximal extensions.** A split tower is an actual multiplication isomorphism of
  a tensor product with both factor maps, not a trivial intersection. A maximal extension with a
  property is a Zorn-maximal intermediate field of `Kᵃ/K`; it is neither canonical nor normal.
- **Tame and totally ramified.** Tame fields follow Temkin: `K` is tame when `Kᵃ = Kᵗ`, with no
  henselian hypothesis, and separably tame when `Kˢ = Kᵗ`. Totally ramified permits a purely
  inseparable residue extension; the condition `f = 1` is the local-field specialization (§2.10).
  The degree formula `[L : K] = e·f` is asserted only for finite tame extensions of henselian fields.
- **Galois groups.** `G_K` is Mathlib's `Field.absoluteGaloisGroup K` with the Krull topology,
  identified with `Gal(Kˢ/K)` through Tau Ceti's `TauCeti.absoluteGaloisGroupRestrictEquiv`.
  Fixed fields of subgroups of `G_K` are taken in `Kˢ`.

## Exact supplier contracts

### From Mathlib

- `ValuationSubring`, `ValuationSubring.comap`, `ValuationSubring.ofPrime`,
  `ValuationSubring.idealOfLE`, `ValuationSubring.ofPrime_idealOfLE`,
  `ValuationSubring.idealOfLE_ofPrime`, `Mathlib/RingTheory/Valuation/ValuationSubring.lean`: the
  carrier, restriction along a field map and the order-reversing correspondence between overrings
  and primes. Used in Layers 1, 5 and 6 as stated; nothing is assumed beyond these inverse laws.
- `ValuationSubring.decompositionSubgroup` (the stabilizer of `A` in `L ≃ₐ[K] L`) and
  `ValuationSubring.inertiaSubgroup` (the kernel of the action of the decomposition group on the
  residue field of `A`), `Mathlib/RingTheory/Valuation/RamificationGroup.lean`. For infinite `L/K`
  these are subgroups of the full automorphism group; neither the wild subgroup nor any fixed field
  is provided.
- `Valuation.HasExtension`, the instances `Valuation.HasExtension.instAlgebraInteger`,
  `Valuation.HasExtension.instAlgebra_valuationSubring` and
  `Valuation.HasExtension.instIsLocalHomValuationInteger`, and `Valuation.HasExtension.mapValueGroup₀`,
  `Mathlib/RingTheory/Valuation/Extension.lean`: extension of valuations, the induced local map of
  valuation rings, hence of residue fields, and the induced order embedding of value groups.
- `Valuation.RankOne`, `Mathlib/RingTheory/Valuation/RankOne.lean`: an order embedding of the value
  group into `ℝ≥0` for a nontrivial valuation; used in §4.1.
- `IsKrasner`, `IsKrasner.krasner`, `IsKrasner.of_completeSpace_of_normal`,
  `Mathlib/Analysis/Normed/Field/Krasner.lean`: the Krasner property, proved there for a complete
  ultrametric base and a normal extension. §4.1 proves it without completeness of the base.
- `IntermediateField.LinearDisjoint`, `IntermediateField.LinearDisjoint.isField_of_isAlgebraic`,
  `Algebra.TensorProduct.isField_of_isAlgebraic`, `Mathlib/FieldTheory/LinearDisjoint.lean`, and
  `IntermediateField.linearDisjoint_of_isPurelyInseparable_of_isSeparable`,
  `Mathlib/FieldTheory/PurelyInseparable/Tower.lean`: linear disjointness, the tensor product of two
  algebraic extensions being a field under linear disjointness, and disjointness of separable and
  purely inseparable extensions.
- `IsPurelyInseparable.finrank_eq_pow`, `Mathlib/FieldTheory/PurelyInseparable/Basic.lean`: finite
  purely inseparable extensions have degree a power of the characteristic exponent.
- `HenselianLocalRing`, `Mathlib/RingTheory/Henselian.lean`; `ringKrullDim`,
  `Mathlib/RingTheory/KrullDimension/Basic.lean`; `IsDiscreteValuationRing.ringKrullDim_eq_one`,
  `Mathlib/RingTheory/DiscreteValuationRing/TFAE.lean`; `Algebra.trdeg` and `AlgebraicIndependent`,
  `Mathlib/RingTheory/AlgebraicIndependent/Basic.lean`; `ringExpChar`,
  `Mathlib/Algebra/CharP/Defs.lean`; `PerfectField`; `Field.absoluteGaloisGroup`,
  `Mathlib/FieldTheory/AbsoluteGaloisGroup.lean` (with its derived `IsTopologicalGroup` instance).
- `Algebra.Etale.of_etale_tensorProduct_of_faithfullyFlat`, `Mathlib/RingTheory/Etale/Descent.lean`,
  and `Algebra.FinitePresentation.of_finitePresentation_tensorProduct_of_faithfullyFlat`,
  `Mathlib/RingTheory/Finiteness/Descent.lean`: descent of étaleness and finite presentation along a
  faithfully flat base change. They are descent along the base, not from the source of a faithfully
  flat morphism, which is the separate contract with Scheme and stack foundations below.

### From Tau Ceti

- `TauCeti.AbsoluteGaloisGroup` and `TauCeti.absoluteGaloisGroupRestrictEquiv`,
  `TauCeti/FieldTheory/Galois/AbsoluteGaloisGroup/Basic.lean`: `Gal(Kˢ/K)` and its identification
  with `G_K`.
- `TauCeti.IsProP`, `TauCeti/Topology/Algebra/Group/Profinite/ProP/Basic.lean`: every quotient by an
  open normal subgroup is a `p`-group.
- `TauCeti.IsProPSylow` (`.../Profinite/Sylow/Basic.lean`), `TauCeti.exists_isProPSylow`
  (`.../Sylow/Existence.lean`), `TauCeti.IsProPSylow.exists_map_conj_eq` and
  `TauCeti.IsProPSylow.eq_of_normal` (`.../Sylow/Conjugacy.lean`),
  `TauCeti.IsProPSylow.map_of_surjective` (`.../Sylow/Functoriality.lean`: the image of a Sylow
  pro-`p` subgroup under a continuous surjection from a compact group to a Hausdorff group is Sylow
  pro-`p`) and `TauCeti.IsProPSylow.cohomologicalDimensionAt_eq`
  (`.../Sylow/CohomologicalDimension.lean`: `cd_p G = cd_p P` for a Sylow pro-`p` subgroup `P` of a
  profinite group `G`). No finite generation is assumed in any of them.
- `TauCeti.cohomologicalDimensionAt` and `TauCeti.CohomologicalDimensionLE`,
  `TauCeti/RepresentationTheory/Homological/ContCohomology/CohomologicalDimension/Basic.lean`: the
  `ℕ∞`-valued `cd_p`, defined by vanishing of continuous cohomology of discrete `p`-primary torsion
  modules in all degrees above the bound.
- `TauCeti.ConvexSubgroup` (`TauCeti/Algebra/Order/Group/ConvexSubgroup.lean`: convex subgroups of
  a linearly ordered group, totally ordered by inclusion, with ordered quotients) and
  `Valuation.coarsenByUnits` (`TauCeti/RingTheory/Valuation/Coarsen.lean`: the coarsening of a
  valuation by a convex subgroup of its value group).

### From TauCetiRoadmap.SchemeAndStackFoundations

- §0.12: `Henselization.algebra I` with `Henselization.extended I`, `Henselization.henselian`,
  `Henselization.existsUnique_lift`, `Henselization.fixed_of_henselian`, `local_henselization` and
  `Henselization.map`. Assumed: the universal property for henselian pairs, and that for a local ring
  it is the henselization of the local ring.
- §0.13: `IndEtale.henselization`, `henselization_flat`, `henselization_filtered_colimit`,
  `henselization_integral_base_change` (with Stacks Lemma 15.12.6 for radical-equivalent ideals and
  Lemma 15.12.8 for pairwise coprime ideals, as stated there) and `henselization_at_prime`. Assumed:
  for an integral ring map `R → R'`, the henselization of `R'` along `IR'` is `R' ⊗_R Rʰ`, and the
  henselization along `I_1 ∩ ⋯ ∩ I_n` with `I_i` pairwise coprime is the product of the
  henselizations along the `I_i`.
- What SchemeAndStackFoundations must provide (gap:source-side-fpqc-descent): Descent from the source of a faithfully flat morphism: for `f : X → Y` faithfully flat and locally of finite presentation and `g : Y → Z` with `g ∘ f` of finite presentation, g is of finite presentation when f is quasi-compact or g quasi-separated (EGA IV, Lemma 17.7.5(iv)), and for S-morphisms `g : X → Y` of schemes locally of finite presentation over S that are flat at x, étaleness of `X → S` at x implies étaleness of `Y → S` at `g(x)` (EGA IV, Proposition 17.7.7).

### From TauCetiRoadmap.ModularCurves

- 4D, *Strict henselisation*: `StrictHenselization.algebra R Ω` for a local ring `R` and a separable
  closure `Ω` of its residue field, with `henselianLocalRing`, `isSepClosed_residueField`,
  `isLocalHom_algebraMap`, `existsUnique_lift`, `map`, the local map from the henselization, and the
  colimit description over pointed étale neighbourhoods. Assumed exactly as stated there.

### From TauCetiRoadmap.LocalFieldsRamification

- Layer 2 (*unramified extensions and Frobenius*): the predicate `IsUnramified K L`, the maximal
  unramified extension and arithmetic Frobenius.
- Layer 3 (*ramification, the tame and wild cases, and the filtration*): `ramificationIndex`,
  `inertiaDegree`, `[L : K] = e·f`, total ramification and the tame and wild predicates
  `IsTamelyRamified`, `IsWildlyRamified` (Tau Ceti's `TauCeti.IsTamelyRamified`).
- Layer 4 (*the tame quotient of the absolute Galois group*): inertia `TauCeti.inertiaSubgroup K`,
  wild inertia `wildInertia`, the tame character and its arithmetic-Frobenius convention.
  These are used only in the comparison §2.10.

### From TauCetiRoadmap.ProfiniteCohomology

- Layer 11: the invariant `cd_p`, `cd_p_le_iff_finite_pPrimary` (it suffices to test degree
  `n + 1` on finite `p`-primary modules) and `cd_p_le_of_isClosed`. Used in §§3.1–3.2 and §3.6.

## How to read the build

Layer 0 is field theory without valuations: prime-supported degrees, `P`-closed fields and split
towers. Layer 1 studies valuation rings in algebraic extensions and builds the henselization of a
valued field on the henselization of pairs, with the tensor decomposition of a finite extension.
Layer 2 builds the ramification tower `Kʰ ⊆ Kᵘ ⊆ Kᵗ ⊆ Kˢ`, defines the six extension classes and
tame fields, and proves their tower laws; its §2.2 is the structure theorem for henselian fields
with separably closed residue field on which the tame tower rests. Layer 3 proves the two profinite
inputs and, with them, the splitting of `Kᵃ/Kᵗ/K` over henselian fields. Layer 4 uses rank-one
approximation to descend from `Kʰ` to `K` and so extends the splitting and the tameness of
`p`-closed fields to height one. Layer 5 composes valuations, controls finite height and proves the
Abhyankar inequality. Layer 6 proves tameness of `p`-closed fields by induction on finite height and
descent to subfields of finite transcendence degree, and exports the separable statement. Each
target's *Needs:* line lists what its statement and its proof route use; a different route may need
less.

## Layer 0: prime-supported extensions and split towers

Field theory needed to state the end theorems: degrees supported on a set of primes, positivity
included, and the distinction between all finite extensions and separable ones.

### 0.1 Prime-supported degrees

Define `IsPNumber P n`, for a set `P` of natural numbers and `n : ℕ`, to mean that `n > 0` and every
prime divisor of `n` lies in `P` (Temkin 2017, §2.1.1, p. 103). *Needs:* Mathlib `Nat.Prime`.

- One is a `P`-number for every `P`.
- For positive `a` and `b`, the product `ab` is a `P`-number exactly when `a` and `b` are.
- If `P ⊆ Q`, every `P`-number is a `Q`-number.
- For a prime `p`, `n` is a `{p}`-number exactly when `n = p^r` for some `r`.
- Only primes in `P` matter: `n` is a `P`-number exactly when it is a `(P ∩ primes)`-number.

**Checks.**
- For `P = ∅` the only `P`-number is `1`; a definition without the positivity clause would also
  admit `0`.
- `0` is not a `P`-number even when `P` contains every prime: every prime divides `0`, but the
  positivity clause fails first.
- `6` is a `{2, 3}`-number and not a `{3}`-number; `9` is a `{3}`-number. A definition testing only
  the largest prime factor would accept `6` for `{3}`.

### 0.2 Prime-supported algebraic extensions

Define an algebraic extension `L/K` to be a `P`-extension when every finite subextension `E/K` has
`P`-number degree; neither `L/K` nor its normal closure is required to be Galois (Temkin 2017,
§2.1.1, p. 103). Prove: for finite `L/K` this means that `[L : K]` is a `P`-number; for algebraic
`M/L/K`, `M/K` is a `P`-extension exactly when `M/L` and `L/K` are; a directed union of
`P`-subextensions is a `P`-extension; subextensions of `P`-extensions are `P`-extensions; and the
property is invariant under `K`-algebra isomorphism (Temkin 2017, §2.1.1, p. 103, by the tower law
for degrees). *Needs:* §0.1; Mathlib `Module.finrank_mul_finrank`, `IntermediateField`.

**Checks.**
- `K/K` is a `P`-extension for every `P`, including `P = ∅`.
- `ℚ(2^{1/3})/ℚ` is a `{3}`-extension although its normal closure has degree `6`; a definition
  through the normal closure would reject it.
- The three cubic subfields of the splitting field of `X³ − 2` over `ℚ` are `{3}`-extensions while
  the compositum of two of them has degree `6`: the class is not closed under composita.

### 0.3 Prime-supported closed fields

Define `IsPClosed P K` to mean that every finite subextension `E` of `AlgebraicClosure K` over `K`
whose degree is a `P`-number is `K` itself; purely inseparable extensions are included (Temkin 2017,
§2.1.1, p. 103). Define `IsSeparablyPClosed P K` in the same way, testing only finite separable
subextensions; no perfection is imposed.

- `IsPClosed P K` holds exactly when `K` has no nontrivial algebraic `P`-extension at all, and the
  condition does not depend on the algebraic closure used (embed any finite extension in it).
- If `P ⊆ Q`, then `IsPClosed Q K` implies `IsPClosed P K`, and likewise for the separable
  predicate.
- `IsPClosed P K` implies `IsSeparablyPClosed P K`.
- In characteristic zero the two predicates agree.
- For `K` of characteristic `q > 0`: `IsSeparablyPClosed P K` holds exactly when the perfection
  `K^{1/q^∞}` satisfies `IsPClosed P` (finite separable extensions of the perfection descend to `K`
  with the same degree after a Frobenius twist of the defining polynomial, and the perfection has no
  nontrivial purely inseparable extensions; Temkin 2017, Remark 2.4.7, p. 108, with
  `IntermediateField.linearDisjoint_of_isPurelyInseparable_of_isSeparable`).

*Needs:* §0.2; Mathlib `AlgebraicClosure`, `Algebra.IsSeparable`,
`IntermediateField.linearDisjoint_of_isPurelyInseparable_of_isSeparable`.

**Checks.**
- Every field is `∅`-closed and separably `∅`-closed: only degree `1` is a `∅`-number.
- An algebraically closed field is `P`-closed for every `P`.
- `𝔽_q` is not `{ℓ}`-closed for any prime `ℓ`, since `𝔽_{q^ℓ}` has degree `ℓ`; it is not even
  separably `{ℓ}`-closed.
- The separable closure of `𝔽_p(t)` is separably `{p}`-closed and not `{p}`-closed, since
  `t^{1/p}` has degree `p`: the two predicates differ for imperfect fields.

### 0.4 Maximal prime-supported extensions

Prove that inside `Kᵃ` every `P`-extension of `K` is contained in a maximal one `K_P`, and that
`K_P` satisfies `IsPClosed P` (Zorn's lemma with §0.2, Temkin 2017, §2.1.1, p. 103). Prove that if
`K` has characteristic exponent `q`, `q` is prime and `q ∈ P`, then a `P`-closed `K` is perfect: a
missing `q`-th root gives a purely inseparable extension of degree `q` (Temkin 2017, proof of
Theorem 2.6.6, p. 112). The analogous separable statements hold inside `Kˢ`. *Needs:* §0.3; Mathlib
`zorn_le_nonempty`, `IsPurelyInseparable.finrank_eq_pow`, `PerfectField`.

**Checks.**
- For `P = ∅` the maximal extension is `K`; for `P` the set of all primes it is `Kᵃ`.
- For `P = {3}` a maximal `{3}`-extension of `ℚ` containing `ℚ(2^{1/3})` does not contain the
  normal closure `ℚ(2^{1/3}, ζ_3)`, which has degree `6`.
- `𝔽_p(t)` is not `{p}`-closed (`t^{1/p}`), consistent with perfection being forced.

### 0.5 Split towers

For algebraic extensions `L/M/K` inside a fixed `L`, define a splitting to be an intermediate field
`E` of `L/K` that is linearly disjoint from `M` over `K` with `E·M = L`; the tower splits when a
splitting exists (Temkin 2017, §2.1.2, p. 103). Prove that multiplication `E ⊗_K M → L` is then an
isomorphism of `M`-algebras compatible with both factor maps, and conversely that such an
isomorphism with the prescribed factor maps gives a splitting.

- A splitting is the data of `E`, its linear disjointness from `M` and the equality `E·M = L`.
- Multiplication `E ⊗_K M → L` is an `M`-algebra isomorphism restricting to the two inclusions; it
  is injective by linear disjointness and surjective because the tensor product of two algebraic
  extensions that are linearly disjoint is a field.
- An `M`-algebra isomorphism `E ⊗_K M ≅ L` restricting to the inclusions of `E` and `M` yields a
  splitting.
- Compatible isomorphisms of towers transport splittings.

*Needs:* Mathlib `IntermediateField.LinearDisjoint`,
`IntermediateField.LinearDisjoint.isField_of_isAlgebraic`.

**Checks.**
- The tower `M/M/K` splits with `E = K`.
- `ℚ(√2, √3)/ℚ(√2)/ℚ` splits with `E = ℚ(√3)`.
- Two distinct cubic subfields `E, M` of the `S₃`-extension `ℚ(2^{1/3}, ζ_3)/ℚ` meet in `ℚ` but are
  not linearly disjoint: `E ⊗_ℚ M` has dimension `9` and the compositum has degree `6`. Trivial
  intersection is not a splitting.

### Examples

`ℚ(2^{1/3})/ℚ` is a `{3}`-extension that is not normal (§0.2); `𝔽_q` is neither `P`-closed nor
separably `P`-closed for any nonempty `P` (§0.3); the separable closure of `𝔽_p(t)` separates the two
closedness predicates (§0.3); `ℚ(√2, √3)/ℚ(√2)/ℚ` splits (§0.5).

### Dependencies

Mathlib field theory only. No valuation enters Layer 0.

## Layer 1: valuation rings in algebraic extensions and henselization

The normalization of a valuation ring in a finite extension is semilocal but need not be a finite
module; everything below is arranged so that no module finiteness is used.

### 1.1 Normalization and prolongations

Let `V` be a valuation subring of `K` and `L/K` a finite extension. Prove that the integral closure
`B` of `V` in `L` is semilocal, that its maximal ideals are in bijection with the prolongations of
`V` to `L`, the prolongation at `𝔪` being `B_𝔪`, and that every localization of an integrally closed
`V`-subalgebra `A ⊆ L` is a valuation ring of `Frac A` (Aïd 2025, Propositions 3.3 and 3.6 and
Theorem 3.7, pp. 5–9, and Proposition 4.1 and Theorem 4.4, pp. 10–13; Temkin 2017, Lemma 2.3.4,
p. 105). Route: a polynomial relation normalized at a coefficient of least value shows that `x` or
`x⁻¹` lies in `B_𝔪`; `dim_κ B/J(B) ≤ [L : K]` makes `B/J(B)` a finite product of fields; for `A`
integrally closed, each localization contains a localization of the normalization and is therefore a
valuation ring. *Needs:* Mathlib `ValuationSubring`, `integralClosure`, `ValuationSubring.ofLE`.

**Checks.**
- For `V` a field (trivial valuation) `B = L` has one maximal ideal `0` and one prolongation.
- For `ℚ(√2)/ℚ` and `V = ℤ_(7)`, `B = ℤ[√2]_(7)` has two maximal ideals, over `3 ± √2`, and there
  are two prolongations; for `V = ℤ_(3)` there is one (`2` is not a square modulo `3`).
- For a nondiscrete valuation ring and a finite extension the normalization need not be a finite
  `V`-module; the statement assumes nothing about finiteness.

### 1.2 Étale maps, henselization and strict henselization of valuation rings

Prove: for a valuation ring `A`, an étale `A`-algebra `B` and a prime `𝔪 ⊆ B` over the maximal ideal
of `A`, the local ring `B_𝔪` is a valuation ring with the same value group as `A` (Stacks, Lemma
15.125.5, tag 0ASJ). Consequently the henselization `Aʰ` (Scheme and stack foundations §0.12) and the
strict henselization `Aˢʰ` (ModularCurves 4D) are valuation rings, `A ⊆ Aʰ ⊆ Aˢʰ` are extensions of
valuation rings inducing bijections on value groups, `Aʰ` has the residue field of `A` and `Aˢʰ` the
chosen separable closure of it (Stacks, Lemma 15.125.6, tag 0ASK). *Needs:* Scheme and stack
foundations §§0.12–0.13 (`Henselization.algebra`, `henselization_at_prime`); ModularCurves 4D
(`StrictHenselization.algebra`, `isSepClosed_residueField`); Mathlib `ValuationRing`,
`Algebra.Etale`.

**Checks.**
- For a field `A` both henselizations are `A` and the chosen separable closure; the value group is
  trivial throughout.
- For `A = ℤ_(p)`, `Aʰ` is the ring of `p`-adic integers algebraic over `ℚ`, a discrete valuation
  ring with value group `ℤ`, and not `ℤ_p`.
- `ℤ_(p) → ℤ_(p)[√p]_(√p)` is a localization of a finite, not étale, algebra and its value group is
  `½ℤ`: the étale hypothesis cannot be dropped.

### 1.3 The henselization of a valued field

For `V ⊆ K` define the henselization `Kʰ = Frac(Vʰ)` with `Vʰ` the henselization of the local ring
`V` (Scheme and stack foundations §0.12, `local_henselization`), embedded in `Kˢ` through the fixed
prolongation. Prove: `Vʰ` is a valuation ring of `Kʰ` lying over `V` (§1.2); `Kʰ/K` is separable
algebraic and immediate (residue field and value group unchanged); every extension of valued fields
from `K` into a henselian valued field extends uniquely to `Kʰ`; `K` is henselian exactly when
`K → Kʰ` is an isomorphism, exactly when every finite extension admits a unique prolongation
(Temkin 2017, §§2.2.2 and 2.3.1, p. 104; Stacks, Lemma 15.125.6, tag 0ASK). Route: `Vʰ` is the
filtered colimit of localizations of étale `V`-algebras at points over the closed point with trivial
residue extension (`henselization_at_prime`); apply §1.2 to each and pass to fraction fields; the
universal property of `Vʰ` among henselian local rings gives that of `Kʰ`.

- The ring of integers of `Kʰ` is the supplied `Vʰ`, not a new construction.
- Extensions of valued fields from `K` into henselian valued fields extend uniquely to `Kʰ`.
- The residue field and value group maps of `Kʰ/K` are isomorphisms.
- A morphism of valued fields induces a morphism of henselizations, compatibly with identities and
  composition.
- `K` is henselian exactly when `K → Kʰ` is an isomorphism, exactly when every finite extension has
  a unique prolongation.

*Needs:* §1.2; Scheme and stack foundations §0.12 (`Henselization.algebra`,
`Henselization.existsUnique_lift`, `local_henselization`, `Henselization.map`), §0.13
(`henselization_at_prime`); Mathlib `HenselianLocalRing`, `FractionRing`.

**Checks.**
- For the trivial valuation `Kʰ = K`.
- For a complete field of height one, `Kʰ = K`: completeness gives Hensel's lemma.
- The `p`-adic henselization of `ℚ` is algebraic and immediate over `ℚ` and dense in `ℚ_p` but is
  not `ℚ_p`, which is transcendental over `ℚ`; the completion is not the henselization.

### 1.4 Tensor decomposition by prolongations

Let `L/K` be finite, `V ⊆ K` a valuation ring and `w_1, …, w_r` the distinct prolongations of `V`
to `L`, counted as valuation subrings of the fixed field `L` (not up to isomorphism of valued
extensions). Prove that `L ⊗_K Kʰ ≅ ∏_i L_{w_i}ʰ` as `Kʰ`-algebras, each projection induced by the
corresponding prolongation; inseparable `L/K` is included (Temkin 2017, Lemma 2.3.2, pp. 104–105;
EGA IV, Proposition 18.6.8, p. 139). Route: the normalization `B` of `V` in `L` is integral and
semilocal with localizations the `w_i` (§1.1); `henselization_integral_base_change` identifies
`B ⊗_V Vʰ` with the henselization of `B` along `𝔪_V B`, whose radical is the Jacobson radical
`𝔪_1 ∩ ⋯ ∩ 𝔪_r`; the product formula for pairwise coprime ideals splits it into the henselizations of
the pairs `(B, 𝔪_i)`, and the universal property identifies each with the henselization of the local
ring `B_{𝔪_i}`; invert the nonzero elements of `V`. *Needs:* §§1.1–1.3; Scheme and stack
foundations §0.13 (`henselization_integral_base_change`, with Stacks Lemmas 15.12.6 and 15.12.8).

**Checks.**
- For henselian `K` there is one factor and the tensor product is the field `L`.
- For `ℚ(√2)/ℚ` at `7` there are two factors, both `ℚ_7ʰ`; the tensor product is not a field. Counting
  prolongations up to isomorphism would give one factor, because the two prolongations are
  conjugate.
- For `L = K(t^{1/p})` over `K = 𝔽_p(t)` with the `t`-adic valuation the prolongation is unique and
  the tensor product is the field `Lʰ`; inseparability does not create factors.

### 1.5 Flat finite-type algebras over valuation rings and Prüfer domains

Prove: for a valuation ring `A`, a flat finite-type `A`-algebra is finitely presented, and a finite
module over a finite-type `A`-algebra that is flat over `A` is finitely presented (Stacks, Lemma
15.26.6, tag 053E). Prove the same for a Prüfer domain (every localization at a maximal ideal a
valuation ring), by finite presentation being local on the base. Over a valuation ring flat means
torsion free. *Needs:* Mathlib `ValuationRing`, `Module.Flat`, `Algebra.FinitePresentation`,
`Algebra.FinitePresentation.of_finitePresentation_tensorProduct_of_faithfullyFlat`.

**Checks.**
- Over a field every finite-type algebra is flat and finitely presented, by Hilbert's basis theorem.
- `A/𝔪` for a nondiscrete valuation ring `A` with non-finitely-generated maximal ideal `𝔪` is of
  finite type and not finitely presented; it is not flat (it is torsion), so flatness cannot be
  dropped.
- `A[x]/(ax)` with `a ≠ 0` a nonunit is finitely presented and not flat: the converse fails.

### Examples

`ℚ(√2)/ℚ` at `7` has two prolongations and `L ⊗ Kʰ` two factors (§§1.1, 1.4); the `p`-adic
henselization of `ℚ` is immediate and not complete (§1.3); `A/𝔪` over a nondiscrete valuation ring
is a non-flat finite-type algebra that is not finitely presented (§1.5).

### Dependencies

Layer 0 is not used. Scheme and stack foundations §§0.12–0.13; ModularCurves 4D (strict
henselisation); Mathlib valuation rings, integral closure, étale algebras and flatness.

## Layer 2: the ramification tower and the six extension classes

### 2.1 The étale criterion for unramified extensions

For a finite extension of valued fields `(L, W)/(K, V)`, prove that `Lʰ/Kʰ` is unramified (§2.4)
exactly when `W` is essentially étale over `V` (a localization of an étale `V`-algebra), that the
strict version adds equality of residue fields, that étale implies essentially étale, and that the
two are equivalent when `V` has finite height (Temkin 2017, Lemma 2.3.8, pp. 105–106). No noetherian
or rank-one hypothesis is made. Route: essentially étale identifies the strict henselizations; for
the converse, descend from a pointed étale neighbourhood `A′` of `V` in `Vˢʰ`, put `A = A′ ∩ L`, a
Prüfer domain by §1.1, over which `A′` is flat and of finite type, hence finitely presented by §1.5;
descent from the source along `Spec A′ → Spec A` (EGA IV, 17.7.5(iv) and 17.7.7, pp. 73–75) makes
`A` étale over `V` at the point under consideration, and `W` is a localization of `A`. At finite
height `Spec V` is finite, so the localization is obtained by inverting one element. *Needs:*
§§1.1–1.3 and §1.5; §2.4 for the definition; ModularCurves 4D (strict henselisation); Scheme and
stack foundations (gap:source-side-fpqc-descent).

**Checks.**
- `K/K` is unramified and `V` is étale over itself.
- For `ℚ_p(√p)/ℚ_p` the ring `ℤ_p[√p]` is not essentially étale over `ℤ_p` (its maximal ideal is
  not generated by `p`), matching ramification.
- "Strictly essentially étale" means equality of residue fields, not separably closed residue field:
  `𝔽_p((t))` over itself is strictly unramified with residue field `𝔽_p`.

### 2.2 Henselian valued fields with separably closed residue field

Let `K` be henselian with separably closed residue field `κ` of characteristic exponent `p` and
value group `Γ` (for example `Kᵘ` for any valued `K`, or the fraction field of a strictly
henselian valuation ring), and let `Kᵗ ⊆ Kˢ` be the union of the finite Galois subextensions of
degree prime to `p`. Prove: (i) `Gal(Kᵗ/K)` is canonically isomorphic, as a profinite group, to
`Hom(Γ ⊗ ℤ_(p′)/Γ, μ′(κ))`, where `ℤ_(p′)` is the ring of rationals with denominators prime to `p`
(`ℚ` for `p = 1`) and `μ′(κ)` the roots of unity of order prime to `p` in `κ`; in particular it is
abelian of supernatural order prime to `p`; (ii) for every finite Galois `E/K` in `Kˢ`, the map
`Gal(E/K) → Hom(Γ_E/Γ, μ(κ))`, `σ ↦ (|x| ↦ σ(x)/x mod 𝔪_E)`, is surjective with kernel a `p`-group,
and `E ∩ Kᵗ` is the fixed field of that kernel; (iii) `W_K = Gal(Kˢ/Kᵗ)` is a closed normal pro-`p`
subgroup of `G_K` of index prime to `p`, hence its unique Sylow pro-`p` subgroup, and `W_K = 1` for
`p = 1` (Temkin 2017, §2.2.6, p. 104; Kuhlmann, Pank and Roquette 1986, Proposition 2.4, p. 43).
Route: Kummer theory over `K`, which contains `μ′(κ)` by Hensel's lemma, applied to radicals of
prime-to-`p` order; a finite Galois extension of degree a power of a prime `ℓ ≠ p` with separably
closed residue field is a Kummer extension by a radical of the value group (fundamental equality for
henselian fields in degree prime to `p`, where there is no defect); the `p`-part is handled by the
uniqueness of the Sylow pro-`p` subgroup once (ii) is known. *Needs:* §1.2; Tau Ceti
`TauCeti.IsProPSylow`, `TauCeti.exists_isProPSylow`, `TauCeti.IsProPSylow.eq_of_normal`; Mathlib
`IsCyclotomicExtension`, `HenselianLocalRing`.

**Checks.**
- For `p = 1` (for example `ℂ((t))`, `Γ = ℤ`), `Gal(Kᵗ/K) = Hom(ℚ/ℤ, μ_∞) ≅ Ẑ(1)` and `W_K = 1`.
- For `K = 𝔽_p^{sep}((t))`, `Gal(Kᵗ/K) ≅ ∏_{ℓ ≠ p} ℤ_ℓ(1)` and `W_K` is the nontrivial pro-`p` group
  of Artin–Schreier extensions; `K(t^{1/ℓ})` lies in `Kᵗ` and the Artin–Schreier extension
  `a^p − a = t⁻¹` does not.
- For `Γ` divisible (for example `K` the henselization of `𝔽_p^{sep}(t^{ℚ})` with the `t`-adic
  valuation), `Γ ⊗ ℤ_(p′)/Γ = 0` and `Kᵗ = K`: the tame quotient vanishes although `K` is not
  separably closed.

### 2.3 The ramification tower

Fix the prolongation of `V` to `Kᵃ`, with valuation subring `Vˢ` of `Kˢ`. Define `Kᵘ` as the
fraction field of the strict henselization of `Vʰ` inside `Kˢ` (the maximal unramified extension
of `Kʰ`) and `Kᵗ` as the maximal tame extension of `Kᵘ` given by §2.2, so that
`K ⊆ Kʰ ⊆ Kᵘ ⊆ Kᵗ ⊆ Kˢ` (Temkin 2017, §2.3.5 and Remark 2.3.6, p. 105). Let
`D = ValuationSubring.decompositionSubgroup K Vˢ`, viewed in `Gal(Kˢ/K)`, `I` the image of
`ValuationSubring.inertiaSubgroup K Vˢ`, and `W` the Sylow pro-`p` subgroup of `I` (`W = 1` for
`p = 1`). Prove that the fixed fields in `Kˢ` of `D`, `I` and `W` are `Kʰ`, `Kᵘ` and `Kᵗ`, that `I`
and `W` are normal in `D`, that `D/I ≅ Gal(κˢ/κ)` as topological groups, that `Gal(Kᵗ/Kᵘ)` is the
group of §2.2 (i) for `Γ_K`, and that changing the prolongation by `σ ∈ G_K` conjugates `D`, `I`,
`W` and transports the tower by `σ`. `Kʰ/K` need not be normal, so no quotient by `D` is formed.
Route: the decomposition–inertia correspondence through the strict henselization, §2.2 over `Kᵘ`,
infinite Galois theory, and Sylow conjugacy for the change of prolongation. *Needs:* §§1.2–1.3, §2.2;
ModularCurves 4D; Mathlib `ValuationSubring.decompositionSubgroup`,
`ValuationSubring.inertiaSubgroup`; Tau Ceti `TauCeti.AbsoluteGaloisGroup`,
`TauCeti.IsProPSylow.exists_map_conj_eq`, `TauCeti.IsProPSylow.eq_of_normal`.

- The ring of integers of `Kᵘ` is the strict henselization of `V`.
- The fixed fields in `Kˢ` of `D`, `I` and `W` are `Kʰ`, `Kᵘ` and `Kᵗ`. Fixed fields in `Kᵃ`
  would contain purely inseparable elements and are not used.
- `D/I` is topologically isomorphic to the absolute Galois group of `κ_K`.
- `Gal(Kᵗ/Kᵘ)` is the continuous character group of `Γ_K ⊗ ℤ_(p′)/Γ_K` with values in the
  prime-to-`p` roots of unity.
- A different prolongation conjugates `D`, `I`, `W` and the tower.

**Checks.**
- For henselian `K`, `Kʰ = K` and `D` is all of `G_K`.
- For the trivial valuation `Kᵘ = Kᵗ = Kˢ` and `I = W = 1`.
- If `p = 1` then `Kᵗ = Kˢ` and `W = 1`.
- The `p`-adic henselization of `ℚ` is not normal over `ℚ`: `D` is a non-normal subgroup of `G_ℚ`.
- For `K = 𝔽_p(t)` with the trivial valuation, `W = 1` and its fixed field in `Kˢ` is `Kˢ`, while
  its fixed field in `Kᵃ` is `Kᵃ ≠ Kˢ`: the fixed-field statement must name `Kˢ`.

### 2.4 Unramified and strictly unramified extensions

Define an algebraic extension `L/K` of valued fields to be unramified when `Lʰ/Kʰ` lies in `Kᵘ`,
that is, `L ⊆ Kᵘ` inside `Kᵃ`, and strictly unramified when moreover the residue fields agree
(Temkin 2017, §§2.2.3 and 2.3.7, pp. 104–105).

- `L/K` is unramified exactly when `Lʰ/Kʰ` is.
- An unramified extension is separable, its residue extension is separable algebraic and its value
  group equals that of `K`.
- Over a henselian `K`, finite unramified extensions correspond to finite separable extensions of
  `κ_K`, compatibly with embeddings.
- `L/K` is strictly unramified exactly when `L ⊆ Kʰ` inside `Kᵃ`; over a henselian base a strictly
  unramified algebraic extension is trivial.

*Needs:* §1.3, §2.3; ModularCurves 4D.

**Checks.**
- `K/K` is unramified and strictly unramified; `Kʰ/K` is strictly unramified.
- `𝔽_{p^r}((t))/𝔽_p((t))` is unramified of degree `r`, and not strictly unramified for `r > 1`.
- `ℚ_p(p^{1/ℓ})/ℚ_p` is ramified for every prime `ℓ`: its value group grows.
- `𝔽_p((t))/𝔽_p((t))` is strictly unramified although `𝔽_p` is not separably closed.

### 2.5 Tame extensions and tame Galois extensions

Define an algebraic extension `L/K` of valued fields to be tame when `L ⊆ Kᵗ` inside `Kᵃ`, that is,
when `Lʰ/Kʰ` is tame (Temkin 2017, §§2.2.5–2.2.6, p. 104 and §2.3.7, p. 105).

- Tameness is invariant under passing to the henselizations.
- For a finite extension of a henselian `K` with maximal unramified subextension `M`, `L/K` is tame
  exactly when `[L : M]` is prime to `p`, exactly when `κ_L/κ_K` is separable, `[Γ_L : Γ_K]` is
  prime to `p` and `[L : K] = [κ_L : κ_K]·[Γ_L : Γ_K]` (no defect).
- Tame extensions are separable.
- Every prolongation to a compositum of a tame `L/K` with an arbitrary valued extension `K′/K` is
  tame over `K′`.
- The degree formula is not asserted for non-henselian `K`, where several prolongations change
  `[L : K]`.

Define `IsTameGaloisExtension V L`, for an intermediate field `L` of `AlgebraicClosure K` over `K`,
to mean that `L/K` is finite Galois and that for every valuation subring `A` of `L` lying over `V`
the group `ValuationSubring.inertiaSubgroup K A` has order prime to `ringExpChar` of the residue
field of `V`. Define `galoisTamePart V` as the compositum of all `L` with `IsTameGaloisExtension V L`.

- A finite Galois `L/K` satisfies `IsTameGaloisExtension V L` exactly when `L/K` is tame at every
  prolongation of `V`, exactly when `L ⊆ σ(Kᵗ)` for every `σ ∈ G_K` (the image of `I` in `Gal(L/K)`
  is the inertia group of `L/K` at the restricted prolongation, and the image of `W` its Sylow
  `p`-subgroup).
- `galoisTamePart V` is the largest subextension of `Kᵗ` that is Galois over `K`; when `V` is
  henselian it equals `Kᵗ`.
- For `p = 1`, every finite Galois extension satisfies `IsTameGaloisExtension V L` and
  `galoisTamePart V = Kˢ`.

*Needs:* §§2.2–2.4; Mathlib `ValuationSubring.inertiaSubgroup`, `IsGalois`, `ringExpChar`.

**Checks.**
- For a prime `ℓ ≠ p`, `ℚ_p(p^{1/ℓ})/ℚ_p` is tame of degree `ℓ`; `ℚ_p(p^{1/p})/ℚ_p` is not tame.
- With the trivial valuation, finite separable extensions are tame and nontrivial purely
  inseparable ones are not.
- A nontrivial immediate Artin–Schreier extension of a henselian field of characteristic `p` (a
  defect extension, `e = f = 1`, degree `p`) is not tame: a definition testing only residue
  separability and the value-group index would accept it.
- For odd `p`, `ℚ_p(ζ_p)/ℚ_p` satisfies `IsTameGaloisExtension`, its inertia group having order
  `p − 1`; `ℚ_2(i)/ℚ_2` and `ℚ_p(ζ_{p²})/ℚ_p` do not (inertia of order `2` and `p(p − 1)`). The
  unramified extension of `ℚ_p` of degree `p` does satisfy it although its decomposition group has
  order `p`: the definition must use inertia, not decomposition.
- For `ℚ` with the `7`-adic valuation, `ℚ(√2)` satisfies `IsTameGaloisExtension` at both
  prolongations, while the splitting field `N` of `X³ − X − 2` over `ℚ` with the `2`-adic valuation
  does not (inertia of order `2` at `p = 2`); its cubic subfield fixed by a decomposition group lies
  in `Kʰ ⊆ Kᵗ` but not in `galoisTamePart V`. So `galoisTamePart V ≠ Kᵗ` for this non-henselian `V`.

### 2.6 Henselian extensions and disjointness from the henselization

Define an algebraic extension `L/K` of valued fields to be a henselian extension when `V` has exactly
one prolongation to `L` (Temkin 2017, §2.3.10, p. 106). Prove that `L/K` is henselian exactly when
`L` and `Kʰ` are linearly disjoint over `K`, and that then multiplication `L ⊗_K Kʰ → Lʰ` is an
isomorphism (Temkin 2017, Lemma 2.3.11, p. 106). Route: for finite `L` the tensor decomposition §1.4
has one factor exactly when there is one prolongation, and an algebraic tensor product is a field
exactly when the multiplication map is injective; pass to finite subextensions with
`henselization_filtered_colimit` (EGA IV, Proposition 18.6.14(ii), p. 141).

- Every prolongation to `L` is the chosen one.
- The identity extension is henselian for every `K`; every algebraic extension of a henselian field is
  henselian.
- Purely inseparable extensions are henselian.

*Needs:* §1.1, §1.4; Scheme and stack foundations §0.13 (`henselization_filtered_colimit`); Mathlib
`IntermediateField.LinearDisjoint`.

**Checks.**
- `ℚ/ℚ` with the `p`-adic valuation is a henselian extension, although `ℚ` is not henselian.
- `ℚ(√2)/ℚ` at `7` has two prolongations: it is not henselian, and `ℚ(√2) ⊗ ℚʰ` has two factors.
- A purely inseparable extension is linearly disjoint from the separable `Kʰ`, so its tensor product
  with `Kʰ` is a field.

### 2.7 Totally ramified and purely wild extensions

Define an algebraic extension `L/K` to be totally ramified when `L` and `Kᵘ` are linearly disjoint
over `K`, and purely wild when `L` and `Kᵗ` are linearly disjoint over `K` (Temkin 2017, §§2.2.4 and
2.2.7, p. 104 and §2.3.12, p. 106). Prove: `L/K` is totally ramified exactly when it is henselian
and `κ_L/κ_K` is purely inseparable; purely wild exactly when it is a totally ramified `{p}`-extension;
over a henselian `K`, purely wild exactly when `κ_L/κ_K` is purely inseparable and `Γ_L/Γ_K` is a
`p`-primary torsion group, defect allowed; and every purely inseparable extension is purely wild
(Temkin 2017, §2.2.7, p. 104 and §2.3.12, p. 106). For infinite extensions "`p`-primary" means that
every element has `p`-power order. *Needs:* §§2.2–2.6, §0.2; Mathlib
`IntermediateField.LinearDisjoint`, `IntermediateField.linearDisjoint_of_isPurelyInseparable_of_isSeparable`.

- Total ramification is disjointness from `Kᵘ` with the given embeddings; pure wildness is
  disjointness from `Kᵗ`.
- For finite extensions of local fields total ramification is the condition `f = 1` of the base
  roadmap (§2.10).

**Checks.**
- `K/K` is totally ramified and purely wild.
- `𝔽_p(u^{1/p})((t))/𝔽_p(u)((t))` is totally ramified in this convention, with `e = 1` and residue
  degree `p`; the convention `f = 1` would reject it.
- A root `a` of `a^p − a = t⁻¹` gives a purely wild extension of `𝔽_p((t))` of degree `p` and
  ramification index `p`; `𝔽_p((t^{1/p}))/𝔽_p((t))` is purely wild.
- For `ℓ ≠ p`, `ℚ_p(p^{1/ℓ})/ℚ_p` is not purely wild; a nontrivial unramified extension of a
  henselian field is not totally ramified.
- With residue characteristic zero every purely wild algebraic extension is trivial.

### 2.8 Tame and separably tame fields

Define `IsSeparablyTameField V` to mean that every finite Galois subextension `L` of
`AlgebraicClosure K` over `K` satisfies `IsTameGaloisExtension V L`, and `IsTameField V` to mean
that `K` is perfect and `IsSeparablyTameField V`. Prove that `IsSeparablyTameField V` holds exactly
when `Kˢ = Kᵗ`, and `IsTameField V` exactly when `Kᵃ = Kᵗ`, that is, when every algebraic extension of
`K` is tame at every prolongation (Temkin 2017, §2.3.9, p. 106: purely inseparable extensions are
purely wild, so a tame field is perfect). No henselian hypothesis is part of either definition.

- `IsTameField V` holds exactly when every algebraic extension with every prolongation is tame.
- A tame field is perfect, and full tameness is perfection together with separable tameness.
- `IsTameField V` implies `IsSeparablyTameField V`.
- Every algebraic extension of a tame valued field is a tame valued field for every prolongation.
- If the residue characteristic exponent is `1`, `IsTameField V` holds.

*Needs:* §2.5, §2.7; Mathlib `PerfectField`.

**Checks.**
- A trivially valued field is tame exactly when it is perfect, and is always separably tame
  (inertia groups of the trivial valuation are trivial).
- Every valuation on an algebraically closed field is tame.
- The trivially valued `𝔽_p(t)` is separably tame and not tame.
- `ℚ_p` is henselian and not separably tame: `ℚ_p(ζ_{p²})/ℚ_p` is Galois with inertia group of
  order `p(p − 1)`.

### 2.9 Tower and filtered-union laws

For each of the six properties strictly unramified, unramified, tame, henselian, totally ramified and
purely wild, prove that an algebraic tower `M/L/K` has the property exactly when both `M/L` and `L/K`
have it, that a directed union of subextensions with the property has it, and that `Lʰ = L·Kʰ`,
`Lᵘ = L·Kᵘ` and `Lᵗ = L·Kᵗ` inside `Kᵃ` for the chosen prolongation (Temkin 2017, Lemma 2.4.2(i)–(ii),
p. 107). Prove that unramified and tame extensions remain so under every valued base change and every
prolongation to the compositum. Route: the first three properties are membership in `Kʰ`, `Kᵘ`,
`Kᵗ`; the last three are disjointness from them, handled by the compositum identities and tensor
associativity; unions by finiteness of linear relations and `henselization_filtered_colimit`; base
change through the strict henselizations and the radical description of §2.2. *Needs:* §§2.4–2.7;
Scheme and stack foundations §0.13 (`henselization_filtered_colimit`).

**Checks.**
- Each of the six properties holds for the identity tower `K/K/K`.
- The compositum identities depend on the chosen prolongation: for `ℚ(√2)/ℚ` at `7`, `Lʰ = L·Kʰ` holds
  for each of the two prolongations, through the two embeddings `√2 ↦ ±s` of `L` into `ℚ_7ʰ`, where
  `s` is a `7`-adic square root of `2`.
- Degrees are not preserved by arbitrary base change: `ℚ(√2) ⊗ ℚ_7` is not a field.

### 2.10 Comparison with local fields

For finite extensions of nonarchimedean local fields, prove that the classes of this layer agree with
those of Local fields and ramification: unramified exactly when `e = 1` (`IsUnramified K L`), totally
ramified exactly when `f = 1`, tame exactly when `p ∤ e` (`IsTamelyRamified K L`), and that `W` of
§2.3 is the wild inertia `wildInertia` of Layer 4 there, with the character pairing of §2.2 restricting
to its tame character and arithmetic Frobenius acting by `x ↦ x^q`. Route: a local field is
henselian with perfect residue field and its finite extensions satisfy `[L : K] = e·f`; substitute
in §§2.4–2.7. *Needs:* §§2.2–2.9; Local fields and ramification, Layers 2–4.

**Checks.**
- `ℚ_p(p^{1/ℓ})/ℚ_p` with `ℓ ≠ p` prime is tame in both senses, with `e = ℓ`.
- The convention of arithmetic Frobenius is the supplier's: on the unramified extension `ℚ_p(ζ_ℓ)`,
  `ℓ ≠ p`, the arithmetic Frobenius sends `ζ_ℓ` to `ζ_ℓ^p`, not to `ζ_ℓ^{p⁻¹}`.
- "Tame exactly when `p ∤ e`" is not a definition for general valued fields: the defect extension of
  §2.5 has `e = 1` and is not tame.

### 2.11 The tame tower under perfection

Let `K` have characteristic `q > 0` and `K^{perf}` its perfection with the unique prolongation of
`V`. Prove that `L ↦ L·K^{perf}` is an equivalence from finite separable extensions of `K` to those of
`K^{perf}` preserving degrees, unramifiedness and tameness after henselization, that
`(K^{perf})ᵗ = Kᵗ·K^{perf}` in `Kᵃ`, that residue fields and value groups change by perfection and by
`q`-divisible hull, and that `IsSeparablyTameField V` holds exactly when the perfection is a tame
valued field (Temkin 2017, §2.4.6 and proof of Theorem 2.5.5, pp. 108–110). In characteristic zero the
comparison is the identity. *Needs:* §0.3, §§2.5–2.8; Mathlib
`IntermediateField.linearDisjoint_of_isPurelyInseparable_of_isSeparable`,
`IsPurelyInseparable.finrank_eq_pow`; Tau Ceti `TauCeti.absoluteGaloisGroupRestrictEquiv`.

**Checks.**
- For `𝔽_p(t)` with the `t`-adic valuation the value group changes from `ℤ` to `ℤ[1/p]`.
- A radical `t^{1/ℓ}` with `ℓ ≠ p` stays tame of degree `ℓ` over the perfection.
- The Artin–Schreier extension `a^p − a = t⁻¹` stays wild over the perfection: perfection does not
  make the separable theory tame.

### Examples

The trivial valuation: `Kʰ = K`, `Kᵘ = Kᵗ = Kˢ`, every finite separable extension is unramified and
tame and every purely inseparable one purely wild, so the field is tame exactly when perfect and
always separably tame (§§2.3, 2.8). `ℚ` with the `7`-adic valuation and `ℚ(√2)`: two prolongations, a
tame Galois extension that is not henselian (§§2.5–2.6). `𝔽_p((t))` with `a^p − a = t⁻¹`: purely
wild of degree `p` (§2.7).

### Dependencies

Layer 1; Layer 0 for `{p}`-extensions (§2.7) and `P`-closedness under perfection (§2.11); ModularCurves
4D; Scheme and stack foundations §0.13 and the descent gap; Local fields and ramification Layers 2–4
(§2.10 only); Tau Ceti Sylow theory; Mathlib decomposition and inertia subgroups.

## Layer 3: profinite inputs and the splitting theorem over henselian fields

### 3.1 The cohomological dimension of `G_F` in characteristic `p`

Prove `cohomologicalDimensionAt_absoluteGaloisGroup_le_one`: for a prime `p` and every field `F` of
characteristic `p`, `TauCeti.cohomologicalDimensionAt p (Field.absoluteGaloisGroup F) ≤ 1`, for all
discrete `p`-primary torsion coefficients (Serre, *Galois Cohomology*, II §2.2, Proposition 3
and its Corollary 1; cited for this purpose in Kuhlmann–Pank–Roquette 1986, p. 44). Route: the
Artin–Schreier sequence `0 → 𝔽_p → Fˢ → Fˢ → 0`, `x ↦ x^p − x`, is exact; `Hⁱ(G_F, Fˢ) = 0` for
`i ≥ 1` by the additive normal basis theorem and passage to the limit over finite Galois
subextensions; hence `Hⁱ(G_F, 𝔽_p) = 0` for `i ≥ 2`, and the same for every closed subgroup, which
gives `cd_p ≤ 1` by reduction to `𝔽_p` coefficients. *Needs:* Tau Ceti
`TauCeti.cohomologicalDimensionAt`; Continuous cohomology of profinite groups, Layer 11
(`cd_p_le_iff_finite_pPrimary`, `cd_p_le_of_isClosed`); Mathlib `Field.absoluteGaloisGroup`,
`CharP`.

**Checks.**
- For `F = 𝔽_p`, `G_F = Ẑ` and `cd_p Ẑ = 1`: the bound is attained.
- For `F` separably closed of characteristic `p`, `G_F = 1` and `cd_p = 0`.
- For `F = ℚ_p` (characteristic `0`) the statement does not apply, and indeed `cd_p G_{ℚ_p} = 2`.

### 3.2 Sections through pro-`p` kernels

Prove `exists_continuous_section_of_isProP_ker`: for a prime `p` and a continuous surjective
homomorphism `f : E → G` of profinite groups whose kernel is pro-`p` (`TauCeti.IsProP`), if
`TauCeti.cohomologicalDimensionAt p G ≤ 1` then `f` has a continuous homomorphic section (Serre,
*Galois Cohomology*, I §3.4, Proposition 16; cited in Kuhlmann–Pank–Roquette 1986, p. 44). The
relative form follows by applying it to a closed subgroup `E′ ⊆ E` with `f(E′) = G`. Route: for a
finite elementary abelian kernel the obstruction lies in `H²(G, −) = 0`; by a characteristic central
series, extensions with finite `p`-group kernel split; Zorn's lemma on pairs (closed normal subgroup
`N ⊆ ker f`, section of `E/N → G`) with compatible sections, and an inverse-limit argument over open
normal subgroups of the kernel, gives a section for the pro-`p` kernel. *Needs:* Tau Ceti
`TauCeti.IsProP`, `TauCeti.cohomologicalDimensionAt`; Continuous cohomology of profinite groups,
Layer 11 (`cd_p_le_iff_finite_pPrimary`).

**Checks.**
- For `G = ℤ_p` (`cd_p = 1`, free pro-`p`) every extension by a pro-`p` group splits.
- For `G = ℤ/p` (`cd_p = ∞`) the extension `ℤ/p² → ℤ/p` does not split: the hypothesis is needed.
- If the kernel is trivial, `f` is an isomorphism of profinite groups and the section is `f⁻¹`.

### 3.3 Maximal extensions with prescribed ramification

For any set `S` of the six properties of Layer 2, prove that every subextension of `Kᵃ/K` with all
properties in `S` is contained in a maximal one, and likewise inside `Kˢ` (Temkin 2017, Lemma
2.4.2(iii), p. 107, by Zorn's lemma and §2.9).

- Every admissible intermediate field has a maximal admissible enlargement.
- A maximal admissible field has no nontrivial further extension with all properties in `S`.
- The construction inside `Kˢ` gives maximal separable `S`-extensions.
- Valued isomorphisms transport maximality; the choice is not canonical.

*Needs:* §2.9.

**Checks.**
- For `S = ∅` the maximal object is `Kᵃ`; for `S = {tame}` it is `Kᵗ`.
- For `ℚ_p` a maximal purely wild extension contains no tame radical `p^{1/ℓ}`, `ℓ ≠ p`.
- Maximal purely wild extensions of `ℚ_p` are not unique: a maximal one is not normal over `ℚ_p`
  (otherwise `G_{ℚ_p}` would be the direct product of `W` and `Gal(Kᵗ/ℚ_p)`), so some conjugate of it
  is a different maximal one.

### 3.4 Unramified and tame complements

Prove: if `K_hu/K` is maximal among henselian unramified extensions, then multiplication gives
`Kʰ ⊗_K K_hu ≅ Kᵘ`; if `K_rt/K` is maximal among tame totally ramified extensions, then
`Kᵘ ⊗_K K_rt ≅ Kᵗ` (Temkin 2017, Lemma 2.4.4, pp. 107–108). Route: disjointness holds by definition;
maximality forces the residue field of `K_hu` to be separably closed and the value group of `K_rt` to
be the prime-to-`p` divisible hull of `Γ_K`. *Needs:* §0.5, §§2.3–2.7, §3.3.

**Checks.**
- With the trivial valuation the first complement is `Kˢ` and the second is `K`.
- For `ℚ_p`, `K_hu` is the maximal unramified extension and one choice of `K_rt` is generated by a
  compatible system of roots `p^{1/n}`, `p ∤ n`.
- Each identity requires injectivity of the tensor map, not only the compositum equality.

### 3.5 Splitting equivalences

Let `𝒱` be a class of valued fields closed under algebraic extensions. Prove that the following are
equivalent: (0) for each `K ∈ 𝒱` some maximal purely wild `K_w` satisfies `Kᵗ ⊗_K K_w ≅ Kᵃ`; (1) every
maximal purely wild `K_w` does; (2) every maximal purely wild `K_w` is a tame field; (3) `K ∈ 𝒱` is
tame exactly when it has no nontrivial purely wild extension; and the same with `Kᵃ` replaced by
`Kˢ`, purely wild by separable purely wild and tame by separably tame (Temkin 2017, §2.4.6 and
Remark 2.4.7, p. 108). For henselian `K` these are also equivalent to the existence of a continuous
section `Gal(Kᵗ/K) → G_K` of the quotient map, `G_K` then being the semidirect product of `W` and
`Gal(Kᵗ/K)`. For non-henselian `K` the group-theoretic form is a closed subgroup `H ⊆ G_K` with
`W·H = G_K` and `W ∩ H = 1`, where `W` is the wild subgroup of §2.3 for the chosen prolongation and
need not be normal in `G_K`. Route: (1) ⇒ (0) is trivial; (0) for the perfection gives (1) through
§2.11; a maximal purely wild extension of a field without purely wild extensions is the field itself;
if `K_w` is tame, `Kᵃ/(Kᵗ·K_w)` is both tame and purely wild, hence trivial. *Needs:* §0.5, §§2.8–2.9,
§2.11, §3.3; Mathlib `IntermediateField.linearDisjoint_of_isPurelyInseparable_of_isSeparable`; Tau
Ceti `TauCeti.absoluteGaloisGroupRestrictEquiv`.

**Checks.**
- For `ℚ` with the `2`-adic valuation and `N` the splitting field of `X³ − X − 2`, `Gal(N/ℚ) = S₃`
  (no rational root among `±1, ±2`; discriminant `−104` not a square), the root `0` modulo `2` lifts
  to `ℚ_2`, and the quadratic factor over `ℚ_2` has discriminant in the class of `−104`, of
  `2`-adic valuation `3`, hence is ramified. Decomposition and wild inertia at the corresponding
  prolongation are the same subgroup of order `2`, which is not normal in `S₃`; so `W` is not normal
  in `G_ℚ` and `Kᵗ/ℚ` is not Galois: the quotient formulation needs the henselian hypothesis.
- For `K` tame, the maximal purely wild extension is `K` and (1) reads `Kᵗ = Kᵃ`.
- For `p = 1`, `K_w` is the perfection of `K`, which is `K` itself.

### 3.6 The Kuhlmann–Pank–Roquette theorem

Prove `sup_galoisTamePart_eq_top_of_henselian`: let `(K, V)` be henselian and `E` an intermediate
field of `AlgebraicClosure K` over `K` that is linearly disjoint from `galoisTamePart V` and maximal
with this property; then `E ⊔ galoisTamePart V = ⊤`. Since `galoisTamePart V = Kᵗ` for henselian
`V` (§2.5), this is the splitting `Kᵗ ⊗_K K_w ≅ Kᵃ` for every maximal purely wild `K_w`; the
separable form `Kᵗ ⊗_K K_sw ≅ Kˢ` for every maximal separable purely wild `K_sw` follows (Kuhlmann,
Pank and Roquette 1986, Theorems 2.1–2.2, p. 42, Corollary 2.5 and proof of Theorem 2.2, p. 44;
Temkin 2017, Theorem 2.4.9, p. 109). For `p = 1` it reduces to `Kᵗ = Kˢ` and `K_w = K^{perf}`.
Route for prime `p`: the Sylow pro-`p` subgroups of `G_K/W` map isomorphically onto those of
`G_κ` (the kernel `I/W` has order prime to `p`, and `TauCeti.IsProPSylow.map_of_surjective`), so
`cd_p(G_K/W) = cd_p(G_κ) ≤ 1` by `TauCeti.IsProPSylow.cohomologicalDimensionAt_eq` and §3.1 applied
to `κ`; §3.2 gives a section of `G_K → G_K/W` through any closed subgroup surjecting onto `G_K/W`,
which is the group form (ii) of Kuhlmann–Pank–Roquette; Galois theory over the perfection and §3.5
translate it to the field statement for every maximal choice. No finite generation and no
Schur–Zassenhaus argument is used. *Needs:* §§2.3, 2.5, 2.11, §§3.1–3.2, §3.5; Tau Ceti
`TauCeti.IsProPSylow`, `TauCeti.exists_isProPSylow`, `TauCeti.IsProPSylow.map_of_surjective`,
`TauCeti.IsProPSylow.cohomologicalDimensionAt_eq`.

**Checks.**
- For `ℚ_p`, `Kᵗ` is generated over the maximal unramified extension by the roots `p^{1/n}`,
  `p ∤ n`; `ℚ_p(p^{1/p^∞})` is purely wild, is contained in some maximal purely wild extension, and
  no maximal purely wild extension contains `p^{1/ℓ}` for a prime `ℓ ≠ p`.
- For `K` separably closed, henselian and imperfect of characteristic `p`, `galoisTamePart V = K`,
  the only maximal `E` is `Kᵃ`, and the conclusion holds trivially.
- For `p = 1`, `galoisTamePart V = Kᵃ`, the only admissible `E` is `K`, and `K ⊔ Kᵃ = Kᵃ`.
- A Schur–Zassenhaus argument alone does not suffice when `G_κ` has nontrivial pro-`p` quotients,
  as for `κ = 𝔽_p`; the cohomological input §3.1 is what covers that case.

### Examples

`ℚ_p`: the complements of §3.4 are explicit and some maximal purely wild extension contains
`p^{1/p^∞}` (§3.6). `ℚ` at `2` with `X³ − X − 2`: wild inertia is not normal (§3.5). `𝔽_p`:
`cd_p = 1` is attained (§3.1).

### Dependencies

Layers 0 and 2; Tau Ceti Sylow theory and `TauCeti.cohomologicalDimensionAt`; Continuous cohomology of
profinite groups, Layer 11.

## Layer 4: height one

Rank one is used exactly where approximation is needed: the completion supplies density and root
control, while the object descended is an extension of the henselization.

### 4.1 The rank-one norm, Krasner's lemma and continuity of roots

Let `K` have height one. Choose an order embedding of `Γ_K` into the positive reals
(`Valuation.RankOne`) and the associated ultrametric norm. Prove: the completion `K̂` is henselian and
contains `Kʰ`, so `K` is dense in `Kʰ`; every normal algebraic extension of a henselian rank-one
normed field, with the unique extended norm, satisfies `IsKrasner` without completeness of the base;
and roots of monic polynomials depend continuously on the coefficients: for `f, g` monic of the same
degree `n` with `ε := v(f − g)/n + min(0, min_i v(α_i)) > 0` (additive notation, `α_i` the roots of
`f`), every root of `f` is at distance value at least `ε` from a root of `g` and conversely, and if
`f` is separable and `ε` exceeds every value `v(α_i − α_j)`, `i ≠ j`, the pairing is unique and `g` is
separable (Temkin 2017, §2.5.1 and proof of Lemma 2.5.2, pp. 109–110; Ćmiel, Kuhlmann and Szewczyk
2023, Theorems 14 and 16 with proofs, pp. 12–15). *Needs:* §1.3; Mathlib `Valuation.RankOne`,
`IsKrasner`, `IsKrasner.krasner`, `IsKrasner.of_completeSpace_of_normal`, `UniformSpace.Completion`.

**Checks.**
- The uniqueness clause needs a strict inequality: for `f = g = (X − 1)(X + 1)` over `ℚ` with the
  `2`-adic valuation and `ε` equal to the largest conjugate distance value `1`, both roots of `g` are
  within `ε` of the root `1` of `f` (Ćmiel–Kuhlmann–Szewczyk 2023, Example 15, p. 12).
- For `f = X`, `g = X − 2` over `ℚ_2`, `ε = 1` and the roots are at distance value exactly `1`: the
  conclusion is the non-strict bound.
- For `K = ℚ` with the `p`-adic valuation, `Kʰ` is the algebraic closure of `ℚ` in `ℚ_p` and `ℚ` is
  dense in it.

### 4.2 Decompletion

Let `K` have height one and `L/Kʰ` be separable algebraic. Prove that there is a henselian algebraic
extension `E/K` with a valued isomorphism `Eʰ ≅ L` and `E ⊗_K Kʰ ≅ L`; for finite `L` one can take
`[E : K] = [L : Kʰ]` (Temkin 2017, Lemma 2.5.2, pp. 109–110). Nothing is claimed for inseparable `L`
or for higher height. Route: at finite degree approximate the minimal polynomial of a primitive
element by a polynomial over `K` and apply §4.1; for infinite `L` use Zorn's lemma on compatible pairs
`(E, Eʰ ↪ L)`, extending a maximal pair by the finite case over `E`; unrelated finite descents cannot
simply be combined. *Needs:* §0.5, §2.6, §4.1; Scheme and stack foundations §0.13
(`henselization_filtered_colimit`).

**Checks.**
- For `L = Kʰ` take `E = K`.
- At finite degree `[E : K] = [L : Kʰ]`; for `ℚ` at `p` and `L = ℚ_pʰ(√p)`, `E = ℚ(√p)` works.
- For `K` henselian of height one, `Kʰ = K` and the statement holds with `E = L`.

### 4.3 Maximal separable wildness under henselization

For `K` of height one, prove that `E/K` is a maximal separable purely wild extension exactly when
`E/K` is henselian and `Eʰ/Kʰ` is a maximal separable purely wild extension (Temkin 2017, Corollary
2.5.3, p. 110). *Needs:* §2.6, §2.7, §4.2.

**Checks.**
- The reverse implication requires `E/K` to be henselian: `ℚ(√2)/ℚ` at `7` has `ℚ(√2)ʰ = ℚ_7ʰ` but is
  not henselian.
- For `p = 1` both sides say `E = K` in characteristic zero.
- Henselization does not turn a non-purely-wild `E/K` (for example a tame radical) into a purely wild
  one.

### 4.4 The splitting theorem in height one

For `K` of height one, without henselian hypothesis, prove that every maximal purely wild `K_w`
satisfies `Kᵗ ⊗_K K_w ≅ Kᵃ` and every maximal separable purely wild `K_sw` satisfies
`Kᵗ ⊗_K K_sw ≅ Kˢ` (Temkin 2017, Theorem 2.5.5, p. 110). Route: for perfect `K`, `K_w·Kʰ` is maximal
purely wild over `Kʰ` by §4.3, and §3.6 with tensor associativity gives the splitting; for imperfect
`K` pass to the perfection (§2.11) to obtain one splitting, then §3.5 promotes it to every choice.
*Needs:* §2.11, §§3.5–3.6, §4.3.

**Checks.**
- At residue exponent `1`, `Kᵗ = Kˢ` and `K_w = K`.
- For imperfect `K` of characteristic `p`, `K_w` contains `K^{1/p^∞}`.
- For `ℚ` with the `p`-adic valuation, `K_w ⊗ ℚʰ` is a maximal purely wild extension of `ℚʰ`.

### 4.5 Tameness in height one

Prove that a valued field of height one with residue characteristic exponent `p` that is `P`-closed
for `P` the set of primes dividing `p` is tame (Temkin 2017, Corollary 2.5.6, p. 110). Route: a
maximal purely wild extension is a `{p}`-extension (§2.7), hence trivial; §4.4 gives `Kᵗ = Kᵃ`.
*Needs:* §0.3, §2.7, §4.4.

**Checks.**
- Every height-one field of residue characteristic zero satisfies the hypothesis and is tame.
- `ℚ_p` fails the hypothesis: `X^p − p` gives an extension of degree `p`.
- `ℂ_p`, the completion of an algebraic closure of `ℚ_p`, is algebraically closed of height one: it
  satisfies the hypothesis and is tame.

### Examples

`ℚ` with the `p`-adic valuation: `ℚ` is dense in `ℚ_pʰ` and every finite separable extension of
`ℚ_pʰ` descends to a henselian extension of `ℚ` of the same degree (§4.2). `f = (X − 1)(X + 1)` over
`ℚ` at `2` shows why the root-pairing threshold must be strict (§4.1).

### Dependencies

Layers 0–3; Mathlib `Valuation.RankOne`, `IsKrasner`; Scheme and stack foundations §0.13.

## Layer 5: composition and finite height

### 5.1 Composed valuations

Let `V` be a valuation subring of `K` and `R` a valuation subring of `κ_V`. Define the composite
`V ∘ R` as the inverse image of `R` under `V → κ_V`, a subring of `K` (Temkin 2017, §2.6.1, p. 110).
Prove that it is a valuation subring of `K`; that conversely, for valuation subrings `U ⊆ V` of `K`,
`U` is the composite of `V` with the image of `U` in `κ_V`, and `V = U.ofPrime P` for
`P = U.idealOfLE V`; that `Γ_R` is the convex kernel of `Γ_{V∘R} → Γ_V`; and that the residue field
of `V ∘ R` is `κ_R`.

- `x ∈ V ∘ R` exactly when `x ∈ V` and its residue lies in `R`.
- The residue field of `V ∘ R` identifies with that of `R`.
- `0 → Γ_R → Γ_{V∘R} → Γ_V → 0` is exact with convex kernel (a `TauCeti.ConvexSubgroup`).
- For `U ≤ V` the composite recovers `U`, with associated prime `U.idealOfLE V`.
- Three successive composites associate under the canonical residue identifications.

*Needs:* Mathlib `ValuationSubring.ofPrime`, `ValuationSubring.idealOfLE`,
`ValuationSubring.ofPrime_idealOfLE`, `ValuationSubring.idealOfLE_ofPrime`; Tau Ceti
`TauCeti.ConvexSubgroup`, `Valuation.coarsenByUnits`.

**Checks.**
- Composing with the trivial valuation of `κ_V` recovers `V`.
- On `ℚ_p((t))`, composing the `t`-adic valuation with the `p`-adic valuation of `ℚ_p` gives the
  value group `ℤ × ℤ` ordered lexicographically, with `v(t) = (1, 0)` and `v(p) = (0, 1)`.
- In that example `p⁻¹` lies in `ℚ_p[[t]]` and not in the composite: the composite is not the coarse
  ring.

### 5.2 Height and the coarsening chain

If `ringKrullDim V = d` with `d` a natural number, construct the chain of the `d + 1` prime ideals of
`V`, the unique coarsening `V_i` of height `i` for each `0 ≤ i ≤ d`, and the induced valuation on its
residue field `κ_i`, of height `d − i`; identify height with the number of proper convex subgroups of
`Γ_K` (Temkin 2017, §2.6.1, p. 110 and §2.6.2, p. 111). Prove that if `p_i` is the residue
characteristic exponent of `V_i`, then there is `n` with `p_i = 1` for `i < n` and `p_i = p` for
`i ≥ n` (Temkin 2017, §2.6.2, p. 111).

- Height `d` holds exactly when `Spec V` consists of exactly `d + 1` primes, which are totally
  ordered.
- For `i ≤ d` the coarsening of height `i` exists and is unique.
- The induced valuation on its residue field has height `d − i`.
- A nontrivial valuation has height one exactly when its value group admits an order embedding into
  `ℝ` (`Valuation.RankOne`).

*Needs:* §5.1; Mathlib `ringKrullDim`, `ValuationSubring.ofPrime`; Tau Ceti `TauCeti.ConvexSubgroup`.

**Checks.**
- The trivial valuation has height `0`.
- A nontrivial discrete valuation has height `1` (`IsDiscreteValuationRing.ringKrullDim_eq_one`),
  with exactly two primes; exhibiting the two primes alone does not exclude larger height.
- The composite valuation on `ℚ_p((t))` of §5.1 has height `2`, while its coarse `t`-adic valuation
  has height `1`; its coarse residue characteristic is `0` and its final one is `p`.

### 5.3 The Abhyankar inequality and the height bound

Prove `algebraicIndependent_of_valuation_independent`: let `vL` be a valuation of `L` extending the
valuation `vK` of `K` (`Valuation.HasExtension`); if `x : ι → L` has values independent modulo the
value group of `K` (no monomial `∏ x_i^{n_i}` with `n ≠ 0` has the value of an element of `K`) and
`y : κ → 𝒪_{vL}` has residues algebraically independent over the residue field of `vK`, then the
family `(x, y)` is algebraically independent over `K` (Kuhlmann, Kuhlmann and Vişan 2016, Lemma 2.1,
p. 6). Consequently `rr(Γ_L/Γ_K) + trdeg(κ_L/κ_K) ≤ trdeg(L/K)`, where `rr(A) = dim_ℚ(A ⊗ ℚ)`
(Kuhlmann–Kuhlmann–Vişan 2016, inequality (12), p. 8). Route: in a polynomial relation, group
monomials by value; independence of values separates the groups, and independence of residues
prevents cancellation in the group of least value. *Needs:* Mathlib `Valuation.HasExtension` and its
residue-field instances, `AlgebraicIndependent`.

Prove `ringKrullDim_le_ringKrullDim_comap_add`: if `Algebra.trdeg K L = n` and `W` is a valuation
subring of `L`, then `ringKrullDim W ≤ ringKrullDim (W.comap (algebraMap K L)) + n`. Route: in a chain
of convex subgroups of `Γ_L`, the steps where the intersection with `Γ_K` does not grow contribute
elements independent modulo `Γ_K`, so their number is at most `rr(Γ_L/Γ_K) ≤ n`, and the other steps
are at most the height of `W ∩ K`. Consequently a valuation on a field of finite transcendence degree
over its prime field, and on every algebraic extension of it, has finite height, since valuations
on prime fields have height at most one (Temkin 2017, proof of Theorem 2.6.6, p. 112). *Needs:*
§5.2; Mathlib `ringKrullDim`, `Algebra.trdeg`, `ValuationSubring.comap`; Tau Ceti
`TauCeti.ConvexSubgroup`.

**Checks.**
- For `𝔽_p(t)` with the `t`-adic valuation over `𝔽_p`: rational rank `1`, residue transcendence
  degree `0`, transcendence degree `1`; for the Gauss valuation with `v(t) = 0` the contributions are
  `0` and `1`.
- For an algebraic `L/K` (`n = 0`) the height of `W` equals that of `W ∩ K`: the bound is an equality.
- For `ℚ(t)` with the composite of the `t`-adic and `p`-adic valuations, the height is `2 = 1 + 1`;
  a valuation of height `2` on `ℚ(t)` cannot restrict trivially to `ℚ`.
- An `x` whose value lies in the value group of `K` cannot appear in `x`: the hypothesis on `x`
  applied to `n = (1)` excludes it, and in particular excludes `x_i = 0`.

### 5.4 Unramified extensions and composition

Let `L/K` be algebraic, `V` of finite height `d` and `0 ≤ i ≤ d`. Prove that `L/K` is unramified
exactly when `L_i/K_i` and the residual extension `κ_{L_i}/κ_{K_i}` with its induced valuations are
unramified (Temkin 2017, Lemma 2.6.3(i), p. 111; Temkin 2010, Proposition 2.2.2, pp. 11–12). Route:
reduce to finite extensions; from an essentially étale map, localize for the coarse extension and
pass to the quotient for the residual one, the quotient being reduced; conversely, the composite ring
map is torsion free hence flat, the coarse and residual maximal-ideal equalities give the composite
one, scaling coarse generators into the fine ring and adding residue generators gives finite type,
§1.5 gives finite presentation, and the separable residual fibre gives étaleness by §2.1. *Needs:*
§1.5, §2.1, §2.4, §§5.1–5.2.

**Checks.**
- For the composite valuation on `ℚ_p((t))`, the constant extension by an unramified extension of
  `ℚ_p` is unramified at both steps.
- The extension `s^ℓ = t`, `ℓ > 1`, is ramified already at the coarse step.
- For `i = 0` or `i = d` one of the two steps is the identity and the statement is tautological.

### 5.5 Tame extensions and composition

Under the hypotheses of §5.4, let `p` be the final residue characteristic exponent and `p_i` that of
`V_i`. Prove that `L/K` is tame exactly when `L_i/K_i` and the residual extension are tame and
`Γ_{L_i}/Γ_{K_i}` has no nontrivial `p`-torsion; the torsion condition is automatic when `p_i = p` and
empty when `p = 1` (Temkin 2017, Lemma 2.6.3(ii), pp. 111–112, with the final residue characteristic
exponent in the last step of the proof). Route: reduce to finite extensions and replace `K` by `Kᵘ`
using §5.4; over a field with separably closed residue field tame extensions are generated by
radicals of order prime to `p` (§2.2); if the extension is not tame, `p` divides the degree, and then
either the coarse ramification index or the residual degree is divisible by `p`. *Needs:* §2.2, §2.5,
§5.4.

**Checks.**
- For `K = ℚ_p((t))` with the composite valuation and `L = ℚ_p((s))`, `s^p = t`: the coarse extension
  is tame (residue characteristic `0`), the residual extension is the identity of `ℚ_p`, the coarse
  value quotient is `ℤ/p`, and `L/K` is not tame. Using the coarse residue characteristic `0` in place
  of the final `p` would wrongly declare it tame.
- For `p_i = p` (for example `𝔽_p((t))((u))` with the composite valuation) the torsion condition
  follows from coarse tameness.
- For `p = 1` every algebraic extension is tame and all three conditions hold.

### 5.6 Tame fields and composition

Under the hypotheses of §5.4 prove that `K` is a tame field exactly when `K_i` and `κ_i` with its
induced valuation are tame fields and `Γ_{K_i}` is `p`-divisible, `p` the final residue characteristic
exponent; when `p_i = p` the divisibility follows from tameness of `K_i` (Temkin 2017, Corollary
2.6.4, p. 112). Route: apply §5.5 to `Kᵃ/K`, whose coarse field is an algebraic closure of `K_i` and
whose residue field is an algebraic closure of `κ_i`. *Needs:* §2.8, §5.5.

**Checks.**
- `ℚ_p((t))` with the coarse `t`-adic valuation is tame (residue characteristic `0`), but the composite
  is not: `ℤ` is not `p`-divisible and `ℚ_p` is not tame.
- For `K` algebraically closed every condition holds.
- For `K = 𝔽_p((t))((u))` with the composite valuation of height `2` and `i = 1`, `p_1 = p`: the coarse
  field (the `u`-adic valuation, residue field `𝔽_p((t))`) is not tame, so `K` is not tame, and the
  divisibility of `Γ_{K_1} = ℤ` need not be examined.

### Examples

`ℚ_p((t))` with the composite of the `t`-adic and `p`-adic valuations: value group `ℤ × ℤ`
lexicographic, height `2`, coarse residue characteristic `0`, final residue characteristic `p`; the
extension `s^p = t` is coarse-tame, residually trivial and wild (§§5.1–5.5). `𝔽_p(t)`: equality in the
Abhyankar inequality for the `t`-adic and Gauss valuations (§5.3).

### Dependencies

Layers 1–2 (§1.5, §§2.1–2.8); Mathlib valuation subrings, `ringKrullDim`, `Algebra.trdeg`,
`AlgebraicIndependent`; Tau Ceti `TauCeti.ConvexSubgroup`, `Valuation.coarsenByUnits`.

## Layer 6: the tameness theorem and the separable export

### 6.1 Residue fields and value groups of `p`-closed fields

Let `p` be prime and `K` be `{p}`-closed with final residue characteristic exponent `p`. Prove that
every element of `K` has a `p`-th root (an irreducible `X^p − a` would give an extension of degree
`p`), so every value group `Γ_{K_i}` of a coarsening is `p`-divisible; that each residue field `κ_i`
is `{p}`-closed (a finite `{p}`-extension of `κ_i` is separable, because `κ_i` has characteristic
zero or is perfect of characteristic `p`, and a lift of its primitive monic irreducible polynomial to
`V_i` is irreducible and of `p`-power degree); and that `K_i` with residue characteristic exponent `1`
is tame without induction (Temkin 2017, proof of Theorem 2.6.6, p. 112). *Needs:* §0.3, §0.4, §5.1.

**Checks.**
- The trivial coarsening has residue field `K` itself, which is `{p}`-closed by hypothesis.
- For a nontrivial coarsening of mixed characteristic the final residue prime differs from the
  characteristic `0` of the intermediate residue field, and the argument uses the former.
- `ℚ_p` is not `{p}`-closed: `p` has no `p`-th root.

### 6.2 Tameness at finite height

Prove that every valued field of finite height with residue characteristic exponent `p` that is
`P`-closed for `P` the set of primes dividing `p` is tame (Temkin 2017, proof of Theorem 2.6.6,
p. 112). Route: at height `0` the field is perfect (§0.4) and the trivial valuation of a perfect field
is tame (§2.8); height one is §4.5; at height `d > 1` choose `0 < i < d`, apply induction to `K_i`
(or the residue-characteristic-zero case) and to `κ_i`, and conclude with §6.1 and §5.6. *Needs:*
§0.4, §2.8, §4.5, §5.6, §6.1.

**Checks.**
- Height `0`: a `{p}`-closed field is perfect, hence tame for the trivial valuation.
- Height `1` is exactly §4.5.
- Height `2` in mixed characteristic uses the `p`-divisibility of the coarse value group from §6.1.

### 6.3 Descent to finite height

Let `K` be `{p}`-closed with final residue characteristic exponent `p` and `L/K` finite. Prove that
there are a subfield `K_0 ⊆ K`, relatively algebraically closed in `K` and of finite transcendence
degree over the prime field, and a finite `L_0/K_0` with `L_0 ⊗_{K_0} K ≅ L` by multiplication,
compatibly with the given valuations; `K_0` is `{p}`-closed and has finite height (Temkin 2017,
proof of Theorem 2.6.6, last paragraph, p. 112). `K_0` need not be finitely generated. Route: `K` is
perfect (§0.4); adjoin the coefficients of a primitive polynomial of `L/K` to the prime field and take
the relative algebraic closure in `K`, which is perfect, so `K/K_0` is regular and linearly disjoint
from finite extensions of `K_0`; a finite `{p}`-extension of `K_0` would give one of `K` of the same
degree; §5.3 gives finite height. *Needs:* §0.4, §0.5, §5.3; Mathlib
`IntermediateField.linearDisjoint_of_isPurelyInseparable_of_isSeparable`, `Algebra.trdeg`.

**Checks.**
- Every coefficient of the primitive polynomial is adjoined before taking the relative algebraic
  closure; omitting one would lose the descent of `L`.
- For `K` algebraic over the prime field, `K_0 = K` already has height at most one.
- The relative algebraic closure of `ℚ(t)` in a `{p}`-closed field is in general not finitely
  generated over `ℚ`, and only its transcendence degree is used.

### 6.4 Tameness of `p`-closed valued fields

Prove `isTameField_of_isPClosed`: let `(K, V)` be a valued field with residue characteristic exponent
`p = ringExpChar` of the residue field of `V`, with a valuation of any height; if `IsPClosed P K` for
`P` the set of primes equal to `p`, then `IsTameField V`, that is, every algebraic extension of `K` is
tame at every prolongation (Temkin 2017, Theorem 2.6.6, p. 112). For `p = 1` the hypothesis is empty
and the conclusion holds for every valued field of residue characteristic zero. No completeness,
perfect residue field, discreteness or henselian hypothesis is used. Route: for finite `L/K` descend
to `L_0/K_0` by §6.3; `K_0` is tame by §6.2, so `L_0/K_0` is tame and so is its base change `L/K`
(§2.5); every finite subextension of `Kᵃ/K` being tame, `Kᵃ/K` is tame by §2.9. *Needs:* §2.5, §2.9,
§6.2, §6.3.

Prove the `P`-form: for a set `P` of primes, a `P`-closed field is tame at every valuation whose
residue characteristic lies in `P` (Temkin 2017, Lemma 3.2.5, p. 116), as `IsPClosed P K` implies
`IsPClosed {p} K` for `p ∈ P`.

**Checks.**
- With the trivial valuation the conclusion says that a `{p}`-closed field is perfect, which §0.4
  proves directly.
- At residue characteristic exponent `1` the hypothesis holds vacuously and `ℚ` with the trivial
  valuation, or `ℂ((t))`, is tame.
- `ℚ_p` and `𝔽_p((t))` fail the hypothesis (`X^p − p`, `X^p − X − t⁻¹`) rather than contradicting
  the conclusion.
- An algebraically closed field satisfies the hypothesis for every `p`.

### 6.5 The separable export

Prove `isSeparablyTameField_of_isSeparablyPClosed`: for a set `P` of natural numbers, if
`IsSeparablyPClosed P K` and the residue characteristic exponent of `V` lies in `P`, then
`IsSeparablyTameField V`: every finite separable extension of `K` is tame at every prolongation. `K`
need not be perfect and nothing is claimed at valuations whose residue characteristic is outside `P`
(Temkin 2017, Lemma 3.2.5, p. 116 and Remark 2.4.7, p. 108, through perfection). Route: for `p = 1`
the conclusion holds outright; for prime `p ∈ P`, `K` is separably `{p}`-closed, so its perfection is
`{p}`-closed (§0.3), hence tame by §6.4 with the same residue characteristic, and §2.11 descends
separable tameness to `K`. *Needs:* §0.3, §2.11, §6.4.

**Checks.**
- For the separable closure of `𝔽_p(t)` with any valuation the hypothesis holds for every `P` and
  `t^{1/p}` gives a non-tame algebraic extension: only the separable conclusion survives, so the word
  separable cannot be dropped.
- For `P = ∅` the closedness hypothesis holds for every field and the hypothesis on the residue
  characteristic never does, so nothing is claimed; this is necessary, since `ℚ_p` is separably
  `∅`-closed and not separably tame.
- `𝔽_q((t))` is not separably `{p}`-closed (Artin–Schreier extensions), consistently with it not being
  separably tame.

### Examples

A `{p}`-closed field of height two in mixed characteristic: its coarse value group is `p`-divisible and
its residue field `{p}`-closed (§6.1), so the induction of §6.2 applies. The separable closure of
`𝔽_p(t)`: separably tame for every valuation, not tame (§6.5).

### Dependencies

Layers 0–5.

## Downstream consumers

- Prime-to-`p` alteration and tame distillation arguments in the style of Temkin 2017, §§3–4, consume
  the six extension classes of Layer 2, the `P`-tame theorem §6.4 and the separable export §6.5; the
  separable form is the one valid for imperfect fields.
- ClassicalAdicEtaleCohomology, Layer 5 (nearby cycles over valuation rings), uses the valuation-ring
  property of strict henselizations (§1.2) and the structure of the absolute Galois group of a
  henselian valued field with separably closed residue field (§2.2).
- Arguments that need finite height of valuations on fields of finite transcendence degree, or the
  Abhyankar inequality, consume §5.3.
- Continuous cohomology of profinite groups in characteristic-`p` Galois settings consumes §§3.1–3.2.

## Worked examples

`K = ℚ_p((t))` with the composite of the `t`-adic valuation and the `p`-adic valuation of its residue
field `ℚ_p`: the value group is `ℤ × ℤ` with the lexicographic order, `v(t) = (1, 0)`, `v(p) = (0, 1)`,
and the height is `2`. For `L = ℚ_p((s))`, `s^p = t`, the coarse extension has residue characteristic
zero and is tame, the residual extension of `ℚ_p` is the identity, and the coarse value quotient is
`ℤ/p`; so `L/K` is not tame (§5.5), and `K` is not a tame field (§5.6).

`K = 𝔽_p((t))`: a root `a` of `a^p − a = t⁻¹` has value `−1/p` in additive notation; the extension has
degree `p` and ramification index `p` and is purely wild (§2.7). A radical `t^{1/ℓ}`, `ℓ ≠ p`, gives a
tame extension (§2.5). An immediate Artin–Schreier defect extension of a henselian field has
`e = f = 1` and is not tame: the missing degree factor is invisible to residue fields and value
groups.

The trivial valuation: `Kʰ = K`, `Kᵘ = Kᵗ = Kˢ`; every finite separable extension is unramified and
tame, every nontrivial purely inseparable one purely wild. A trivially valued field is tame exactly
when perfect and is always separably tame (§2.8).

`K = ℚ` with the `7`-adic valuation and `L = ℚ(√2)`: since `2 ≡ 3² mod 7`, there are two prolongations,
`L ⊗ Kʰ` has two field factors (§1.4), `L/K` is not a henselian extension (§2.6), and `L` satisfies
`IsTameGaloisExtension` (§2.5).

## Notes on the sources

- Temkin 2017, §2.4.6, assertion (4), p. 108, states the splitting of `G_K → Gal(Kᵗ/K)` for an
  arbitrary class of valued fields. For non-henselian `K` the wild subgroup need not be normal and
  `Kᵗ/K` need not be Galois (the `2`-adic example of §3.5); §3.5 states the quotient form for
  henselian fields and a subgroup factorization in general. The field-theoretic equivalences and all
  results of Layers 4 and 6 use only the field form.
- Temkin 2017, Lemma 2.3.2, p. 104, lists the valued extensions with underlying field `l` up to
  isomorphism; the decomposition counts distinct prolongations on the fixed field (§1.4).
- Temkin 2017, proof of Lemma 2.6.3(ii), pp. 111–112: in the last step `p` is the final residue
  characteristic exponent, not the characteristic of the coarse residue field (§5.5).
- Temkin 2017, proof of Theorem 2.6.6, p. 112, refers to "Corollary 2.5.6(ii)"; Corollary 2.5.6,
  p. 110, has a single assertion.
- Ćmiel–Kuhlmann–Szewczyk 2023, proof of Theorem 16(c), p. 14: the argument proves the non-strict
  bound of the statement on p. 13, which is attained for `f = X`, `g = X − 2` over `ℚ_2` (§4.1).
- Kuhlmann–Pank–Roquette 1986, p. 43, refer for Proposition 2.4 to Endler's book; §2.2 states and
  proves the structure theorem here.

## References

- **temkin17**: M. Temkin, *Tame distillation and desingularization by p-alterations*, Annals of
  Mathematics 186 (2017), 97–126: §§2.1–2.6, pp. 103–112; §3.2, pp. 115–116.
- **kpr86**: F.-V. Kuhlmann, M. Pank, P. Roquette, *Immediate and purely wild extensions of valued
  fields*, Manuscripta Mathematica 55 (1986), 39–67: Theorems 2.1–2.2, Lemma 2.3, Proposition 2.4,
  Corollary 2.5, pp. 42–44.
- **temkin10**: M. Temkin, *Stable modification of relative curves*, Journal of Algebraic Geometry 19
  (2010), 603–677 (author's preprint pagination): Proposition 2.2.2, pp. 11–12.
- **kkv16**: F.-V. Kuhlmann, K. Kuhlmann, C. Vişan, *Valuations on rational function fields that are
  invariant under permutation of the variables*, Journal of Algebra 464 (2016), 279–296 (author's
  preprint pagination): Lemma 2.1, p. 6; inequality (12), p. 8.
- **cks23**: H. Ćmiel, F.-V. Kuhlmann, P. Szewczyk, *Continuity of roots for polynomials over valued
  fields*, Communications in Algebra 51 (2023), 1383–1412 (author's preprint pagination): Theorems 14
  and 16, Example 15, pp. 12–15.
- **aid25**: C. Aïd, *A choice-free look at algebraic extensions of valuations*, arXiv:2511.07177v1
  (2025): Propositions 3.3, 3.6, Theorem 3.7, Proposition 4.1, Theorem 4.4, pp. 5–13.
- **stacks-more-algebra**: The Stacks Project Authors, *More on Algebra*: Lemmas 15.12.5–15.12.8
  (tags 0A04, 0F0L, 0DYE, 0H7Q), Lemma 15.26.6 (tag 053E), Lemmas 15.125.5–15.125.6 (tags 0ASJ, 0ASK).
- **ega4**: A. Grothendieck, J. Dieudonné, *Éléments de géométrie algébrique IV, quatrième partie*,
  Publications Mathématiques de l'IHÉS 32 (1967): Lemma 17.7.5, pp. 73–74; Proposition 17.7.7,
  pp. 74–75; Proposition 18.6.8, p. 139; Proposition 18.6.14, p. 141.
- **serre-cg**: J.-P. Serre, *Galois Cohomology*: I §3.4, Proposition 16; II §2.2,
  Proposition 3 and Corollary 1.
