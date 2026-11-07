# Roadmap: modular characters and blocks, part ii — the glauberman correspondence and heights of characters

**Summary.** This roadmap continues ModularCharactersAndBlocks, which builds `p`-modular systems,
Brauer characters, blocks, defect groups, Brauer's three main theorems and the behaviour of blocks
under normal `p`- and `p'`-subgroups, and stops before the arithmetic of character degrees inside
a block and before any character correspondence attached to a group action. Part II develops two
strands on that base. The first is the character theory of coprime actions: for finite groups `S`
and `Γ` of coprime orders with `S` acting on `Γ` by automorphisms, the action of `S` on `Irr(Γ)`,
Gallagher's normalised extension of an invariant representation to `Γ ⋊ S`, the canonical
extension and Gallagher's correspondence, Brauer's permutation lemma, the cyclic, `p`-group and
solvable cases of Glauberman's construction, the uniqueness of the resulting family of bijections
and its compatibility with normal subgroups of `S`, and the degree relations, ending in the
**Glauberman correspondence** `θ ↦ θ*` between `Irr_S(Γ)` and `Irr(C_Γ(S))` and the divisibility
`θ(1) ∣ |Γ : C_Γ(S)| θ*(1)`. The second strand is the theory of heights: defect classes,
**Brauer's theorem on heights**, heights and height zero characters, the Min–Max theorem, block
covering through central characters, the **Fong–Reynolds correspondence** with its preservation of
heights, Fong's theorem, the extended first main theorem, the structure of blocks of `P C_G(P)`
with defect group `P`, and **Reynolds' theorem**: a block with a normal defect group `D` has all
its characters of height zero exactly when `D` is abelian. Brauer's height zero conjecture and the
Alperin–McKay conjecture are stated as predicates on blocks, with their proved instances.

Suggested homes: `TauCeti/RepresentationTheory/CharacterTable/Glauberman/` and
`TauCeti/RepresentationTheory/Block/Height.lean`, beside the base's
`TauCeti/RepresentationTheory/Block/`.

## Scope and ownership

ModularCharactersAndBlocks (the base) owns its Layers 0–8 and is consumed by section below. This
Part II starts where the base stops and owns:

- the action of a group acting by automorphisms on the irreducible characters of a finite group,
  the invariant characters, the fixed-class lemma for coprime actions, and Brauer's permutation
  lemma for automorphisms (Layer 1);
- Gallagher's determinant-normalised extension theorem, the canonical extension of an invariant
  character to `Γ ⋊ S` with its field of values and integral values on `S`, and Gallagher's
  correspondence in character form for any normal subgroup and any extendible irreducible
  character (Layer 2);
- the cyclic case of the Glauberman correspondence with its sign, and Glauberman's restriction
  formulas (Layer 3);
- the composition-series construction for solvable `S`, the `p`-group characterisation, the
  independence of the series, equivariance, bijectivity, the counting theorem, the uniqueness of
  the family of bijections and its compatibility law, and the action of field automorphisms
  (Layer 4);
- the degree relation `θ(1) ∣ |Γ : C| θ*(1)` and Glauberman degree-divisibility as a named
  predicate with its proved instances (Layer 5);
- defect classes, Brauer's theorem on heights, heights, defects and height zero characters
  (Layer 6);
- the Min–Max theorem, covering through central characters, defect groups under domination, the
  Fong–Reynolds correspondence, regular blocks, Fong's theorem and the extended first main theorem
  (Layer 7);
- vanishing off defect groups, the blocks of `P C_G(P)` with defect group `P`, heights of blocks
  with a normal defect group, and Reynolds' theorem (Layer 8);
- Brauer's height zero conjecture and the Alperin–McKay conjecture as predicates, with their
  proved instances (Layer 9).

Already in the libraries, and consumed rather than rebuilt:

- **Characters, the pairing and the table.** `TauCeti.irreducibleCharacters` (a `Set (G → k)`),
  `TauCeti.mem_irreducibleCharacters_iff`, `TauCeti.card_irreducibleCharacters`,
  `TauCeti.ClassFunction.characterPairing`, `TauCeti.characterTable`,
  `TauCeti.sum_characterTable_mul_conj`, `TauCeti.virtualCharacters`,
  `Representation.nonempty_equiv_of_character_eq`; Mathlib's `Representation.isIntegral_character`.
- **Conjugation, inertia and Clifford theory.** `TauCeti.conjNormalFDRep`,
  `TauCeti.conjNormalFDRep_ρ`, `TauCeti.char_conjFDRep`, `TauCeti.inertia`, `TauCeti.le_inertia`,
  `TauCeti.mem_inertia_iff`, `FDRep.cliffordCorrespondence`, `FDRep.clifford_restrict_dvd_finrank`,
  `FDRep.clifford_restrict_inertia_eq_top_of_coprime`, `TauCeti.clifford_restrict_character`,
  `TauCeti.Representation.isSemisimpleRepresentation_comp_subtype`; Mathlib's
  `Rep.indResAdjunction`.
- **Tensor factorisation over an extension.** `TauCeti.IsProjectiveInertiaExtension`,
  `TauCeti.IsProjectiveInertiaExtension.tensorRep`,
  `TauCeti.IsProjectiveInertiaExtension.tensorRepEquiv`,
  `TauCeti.IsProjectiveInertiaExtension.isIrreducible_tensorRep_iff`,
  `TauCeti.IsProjectiveInertiaExtension.tmulIntertwining_bijective`,
  `TauCeti.exists_isProjectiveInertiaExtension`.
- **Galois action, fields of values, central characters and degrees.**
  `IsPrimitiveRoot.cyclotomicIrreducibleCharacterAction`,
  `IsPrimitiveRoot.cyclotomicIrreducibleCharacterAction_apply`, `FDRep.characterField`,
  `TauCeti.Representation.centralCharacter`,
  `TauCeti.Representation.centralCharacter_classSumCenter_mul_character_one`,
  `TauCeti.Representation.isIntegral_centralCharacter_classSumCenter`,
  `TauCeti.Representation.finrank_dvd_card`, `TauCeti.Representation.primitiveCentralIdempotent`,
  `TauCeti.classSum`, `TauCeti.classSumCenter`.
- **Group theory.** Mathlib's `SemidirectProduct` with `SemidirectProduct.inl`,
  `SemidirectProduct.inr`, `SemidirectProduct.inl_aut`, `SemidirectProduct.rightHom`;
  `MulDistribMulAction`, `MulDistribMulAction.toMulAut`, `arrowAction` (the action of a group on
  functions out of a set it acts on), `FixedPoints.subgroup`,
  `FixedPoints.mem_subgroup`, the quotient action
  `MulDistribMulAction (G ⧸ H) (FixedPoints.subgroup H α)` of
  `Mathlib/GroupTheory/GroupAction/OfQuotient.lean`, the conjugation action of a normaliser
  (`Subgroup.normalizerMonoidHom`), `Subgroup.exists_right_complement'_of_coprime`, `Sylow`,
  `IsPGroup`, `IsSolvable`, `padicValNat`; Tau Ceti's `SemidirectProduct.range_monoidHomSubgroup`.

Planned by other roadmaps, and imported by name and section:

- ModularCharactersAndBlocks §§0.2, 1.1–1.3, 2.1–2.4, 3.1, 4.1–4.3, 5.1, 6.1–6.3, 7.1–7.2,
  8.1–8.2: the splitting `p`-modular system, the lifting of block idempotents, Brauer characters,
  decomposition numbers, projective characters, the ordinary and modular block partitions,
  generalized decomposition numbers, relative traces and the Brauer
  homomorphism, defect groups and their characterisations, Brauer pairs, block induction, the
  first and second main theorems, domination and covering.
- LocalFiniteGroupTheory L1 (the conjugacy half of Schur–Zassenhaus) and L3 (Glauberman's lemma
  and fixed points modulo an invariant normal subgroup).
- RepresentationTheory/CharacterTheory §2.1 (the sum of the squares of the degrees), §3.5
  (column orthogonality and primitive central idempotents), §3.6 (irreducible characters of a
  direct product), §4.3 (central characters and their integrality), §4.4 (the Galois action and
  the field of values).
- RepresentationTheory/InductionRestriction Layer 1 (conjugate representations), Layer 2
  (induced characters and Frobenius reciprocity), Layer 5 (Clifford theory) and Layer 7 (the
  scalar extension obstruction and the tensor factorisation over a compatible projective
  extension).

One supplier gap, which this roadmap consumes and does not plan (see *Exact supplier contracts*):
the Clifford divisibility `χ(1)/θ(1) ∣ |G : N|` for `N ⊴ G` and `θ` under `χ`, a statement about
projective representations that InductionRestriction Layer 7 is to provide
(gap:clifford-multiplicity-dvd-index).

Cited and not planned: Kessar and Malle's proof that abelian defect groups force height zero
(kessar-malle line 25, Theorem 1.1); Malle, Navarro, Schaeffer Fry and Tiep's proof of the converse
for odd `p` (mnst line 70, Theorem A); Ruhstorfer's proof of the Alperin–McKay conjecture and of the
height zero conjecture for `p = 2` (ruhstorfer line 20, Theorem A, and line 33, Corollary B); and
Glauberman degree-divisibility in general (geck line 29, completing hartley-turull line 84,
Theorem A). These rest on the classification of finite simple groups and on Lusztig's theory;
Layers 5 and 9 state the predicates they concern. Not owned: Brauer's permutation lemma for the
Galois action on characters and classes, which FiniteGroupInvariants §6.2 states (§1.3 here is the
version for a group automorphism, which Glauberman's argument needs); the Isaacs correspondence
for `Γ` of odd order and arbitrary `S` (isaacs-1973), its agreement with Glauberman's, Turull's
theory above the correspondence, inductive conditions and reduction theorems, blocks with cyclic
defect groups, and Dade's conjectures.

## Conventions

- **Groups and actions.** `Γ` and `S` are finite groups, `S` acts on `Γ` by automorphisms through
  Mathlib's `MulDistribMulAction S Γ`, and *coprime* means `Nat.Coprime (Nat.card S) (Nat.card Γ)`.
  `C = C_Γ(S)` is `FixedPoints.subgroup S Γ`. Statements are universe-polymorphic in `Γ` and `S`
  and carry `Finite` instances. A subgroup `S ≤ N_G(Γ)` of an ambient group acting by conjugation
  is the special case obtained from Mathlib's `MulDistribMulAction (normalizer Γ) Γ` along the
  inclusion; each theorem is stated for the external action and transported to the internal case
  through the multiplication map `Γ ⋊ S → Γ S`, which is an isomorphism when `Γ ∩ S = 1`, in
  particular for coprime orders.
- **The semidirect product.** `Γ ⋊ S` is `Γ ⋊[MulDistribMulAction.toMulAut S Γ] S`. Mathlib's
  `SemidirectProduct.inl_aut` gives `inr s · inl g · inr s⁻¹ = inl (s • g)`. Elements of `Γ` and
  `S` are identified with their images under `inl` and `inr`.
- **Conjugate characters.** For `χ : Γ → ℂ`, `s · χ` is given by Mathlib's `arrowAction` for the
  action of `S` on `Γ`, so `(s · χ)(g) = χ(s⁻¹ • g)`; this is a left action, and it is the
  character of the conjugate representation by `inr s` in the sense of
  `TauCeti.char_conjFDRep` (`({}^x χ)(y) = χ(x⁻¹ y x)`). Witness: `Γ = C₇ = ⟨r⟩`, `S = C₃` acting by
  `r ↦ r²`, `χ(r) = ζ₇`; then `s⁻¹ • r = r⁴` and `(s · χ)(r) = ζ₇⁴`, whereas `χ(s • r) = ζ₇²`.
  `Irr_S(Γ)` is the set of `S`-invariant members of `TauCeti.irreducibleCharacters ℂ Γ`.
- **Characters and multiplicities.** Characters are complex-valued functions on the group. The
  pairing is Tau Ceti's `[f₁, f₂] = |G|⁻¹ Σ_g f₁(g) f₂(g⁻¹)`; on characters it equals the
  Hermitian inner product, and `[χ|_C, λ]` is the natural-number multiplicity of `λ ∈ Irr(C)` in
  the restriction `χ|_C = χ ∘ C.subtype`. A character `β` of `S` is inflated to `Γ ⋊ S` as
  `β ∘ rightHom`. `Irr(G | θ)`, for `θ ∈ Irr(N)` and `N ⊴ G`, is the set of `χ ∈ Irr(G)` with
  `[χ|_N, θ] ≠ 0`.
- **Determinantal character.** For a character `η` afforded by `ρ`, `det η (g) = det ρ(g)`; it does
  not depend on `ρ`. Witness: the two-dimensional character of `S₃` has `det = sgn`, value `−1` at
  a transposition.
- **Galois conjugates.** For `j` coprime to `|Γ|`, `χ^{(j)}(g) = χ(g^j)`; by
  `IsPrimitiveRoot.cyclotomicIrreducibleCharacterAction_apply` it is the image of `χ` under the
  automorphism `ζ ↦ ζ^j` of `ℚ(ζ_{|Γ|})`, and it is irreducible when `χ` is. Witness: on `C₅` with
  `χ(r) = ζ₅`, `χ^{(2)}(r) = ζ₅²` and `χ^{(3)}(r) = ζ₅³`.
- **Composition series.** For solvable `S`, a composition series is a chain
  `S = S₀ ⊵ S₁ ⊵ ⋯ ⊵ S_m = 1` with each `S_i ⊴ S_{i−1}` and `S_{i−1}/S_i` of prime order. For
  `T ⊴ S`, `S/T` acts on `C_Γ(T)` by Mathlib's quotient action, and `C_{C_Γ(T)}(S/T) = C_Γ(S)`.
- **Signs.** `ε ∈ {1, −1} ⊆ ℤ`. In the cyclic case the sign is the one with `χ̂(a t) = ε χ*(t)`;
  witness: for `SL(2,3) = Q₈ ⋊ C₃` and the two-dimensional character of `Q₈`, `ε = −1`.
- **Blocks.** `(K, O, k)` is a splitting `p`-modular system for `G` in the sense of the base §1.1:
  `O` is a complete discrete valuation ring with maximal ideal `m`, fraction field `K` of
  characteristic zero containing a primitive `exp(G)`-th root of unity, and residue field `k` of
  characteristic `p`. `Irr(G)` means the `K`-valued irreducible characters, which the base §1.1
  identifies with the complex ones through `ℚ(ζ_e) ⊆ ℂ` and `ℚ(ζ_e) → K`. A block `B` is a block of
  `k[G]` with its unique central lift `e_B ∈ Z(O[G])` (base `existsUnique_blockIdempotent_map_residue`);
  `χ ∈ Irr(B)` exactly when `e_B e_χ = e_χ` in `K[G]`, where
  `e_χ = χ(1) |G|⁻¹ Σ_g χ(g⁻¹) g` (base §4.2). Defect groups are those of base §6.2.
- **Valuations and heights.** `ν = padicValNat p`; `|G|_p = p^a` with `a = ν(|G|)`; for a block
  with defect group `D`, `|D| = p^d`. For `q ∈ ℚ ⊆ K`, `q ∈ O` exactly when `ν_p(q) ≥ 0` and
  `q ∈ m` exactly when `ν_p(q) > 0`. Witness: `p = 2`, `q = 3/2` is not in `O` while `2/3 ∈ m`.
- **Central characters.** `ω_χ : Z(K[G]) → K` is `TauCeti.Representation.centralCharacter`, with
  `ω_χ(𝒞⁺) = |𝒞| χ(x)/χ(1)` for `x` in the class `𝒞` and class sum `𝒞⁺`; `λ_B : Z(k[G]) → k` is the
  central character of a block (base §7.1). `a_B(𝒞)` is the coefficient of `𝒞⁺` in `e_B ∈ Z(k[G])`.
  Witness: `S₃`, `p = 2`, the class of the transpositions: `ω = 3, −3, 0` for the trivial, sign
  and two-dimensional characters, and `λ_{B₀} = 1` there.

## Exact supplier contracts

### From Mathlib

`SemidirectProduct`, `SemidirectProduct.inl`, `SemidirectProduct.inr`, `SemidirectProduct.inl_aut`
(`inl (φ g n) = inr g * inl n * inr g⁻¹`), `SemidirectProduct.rightHom`,
`SemidirectProduct.range_inl_eq_ker_rightHom`; `MulDistribMulAction`,
`MulDistribMulAction.toMulAut`, `arrowAction` (`Mathlib/Algebra/Group/Action/Basic.lean`: for
`[DivisionMonoid G] [MulAction G A]`, the action `(g • F)(a) = F(g⁻¹ • a)` on `A → B`, with its
action laws; a definition, not an instance), `FixedPoints.subgroup` (the elements fixed by
every `m`, with `FixedPoints.mem_subgroup`), the instance `MulDistribMulAction (G ⧸ H) (FixedPoints.subgroup H α)`
for normal `H` (`Mathlib/GroupTheory/GroupAction/OfQuotient.lean`), the conjugation action
`MulDistribMulAction (normalizer H) H` and `Subgroup.normalizerMonoidHom`
(`Mathlib/GroupTheory/Subgroup/Centralizer.lean`); `Subgroup.exists_right_complement'_of_coprime`
(existence only: the file `Mathlib/GroupTheory/SchurZassenhaus.lean` proves no conjugacy of
complements beyond the abelian case); `Sylow`, `IsPGroup`, `IsSolvable`, `IsCyclic`, `ConjClasses`,
`MulAut.conj`, `Subgroup.index`, `QuotientGroup`; `Representation`, `Representation.character`,
`Representation.IsIrreducible`, `Representation.isIntegral_character`
(`Mathlib/RepresentationTheory/Character.lean`: for a finite group and a finite-dimensional
representation over a field, the character values are integral over `ℤ`), `LinearMap.det`,
`FDRep`, `Rep.indResAdjunction` (`Mathlib/RepresentationTheory/Induced.lean`: for a commutative
ring `k` and a group homomorphism `φ : G →* H`, induction `Rep k G ⥤ Rep k H` along `φ` is left
adjoint to restriction along `φ`, with no hypothesis on `k`; used with `φ` the inclusion of a
normal subgroup and `k` the residue field); `IsCyclotomicExtension`,
`IsPrimitiveRoot.autToPow`, `ZMod.chineseRemainder`, `IsGalois`, `IntermediateField.adjoin`,
`IntermediateField.fixedField`, `IsIntegral`; `padicValNat`, `padicValRat`;
`IsDiscreteValuationRing`, `IsAdicComplete`, `IsLocalRing.ResidueField`, `MonoidAlgebra`,
`Subalgebra.center`. Assumed: their statements, nothing more.

### From Tau Ceti

The declarations listed under *Already in the libraries*, read at their files:
`TauCeti/RepresentationTheory/CharacterTable/Table.lean` (`TauCeti.irreducibleCharacters`,
`TauCeti.card_irreducibleCharacters`, the latter over an algebraically closed field in which
`|G|` is invertible), `CharacterTable/Pairing.lean`, `CharacterTable/Degree.lean`
(`TauCeti.Representation.finrank_dvd_card`, algebraically closed of characteristic zero),
`CharacterTable/CentralCharacter.lean`, `CharacterTable/CentralIdempotent.lean`,
`CharacterTable/FieldOfValues.lean` (`FDRep.characterField`, the intermediate field generated by
the values), `CharacterTable/Cyclotomic/Action.lean`
(`IsPrimitiveRoot.cyclotomicIrreducibleCharacterAction`, with `K`, `L`, `G` in one universe and
the value formula `χ(g^j)`), `Induction/Conjugate.lean`, `Induction/Inertia.lean`,
`Induction/Clifford/Basic.lean` (`TauCeti.Representation.isSemisimpleRepresentation_comp_subtype`:
over any field, the restriction of a finite-dimensional irreducible representation to a normal
subgroup is semisimple, with no hypothesis on the characteristic or on algebraic closure),
`Induction/Clifford/Decomposition.lean` (`TauCeti.clifford_restrict_character`: for finite `G`
over an algebraically closed field in which `|G|` is a unit, the character of the restriction of
a simple representation to `N` is a positive multiple of the sum of the distinct conjugates of a
simple constituent; used over `ℂ` only),
`Induction/Clifford/Classes.lean` (`FDRep.cliffordCorrespondence`, algebraically closed of
characteristic zero, on classes of simple representations lying over a simple `V`),
`Induction/Clifford/Dimension.lean` (`FDRep.clifford_restrict_dvd_finrank`: for simple `W`, a
constituent `V` of `Res_N W` with `dim V ∣ dim W` and `[G : inertia V] ∣ dim W`),
`Induction/Clifford/Obstruction.lean`, `Induction/Clifford/TensorFactorization.lean`
(`tensorRepEquiv`: an irreducible representation of the inertia group lying over a simple `A`
over an algebraically closed field is `A ⊗ Hom_N(A, W)`),
`Induction/Clifford/ProjectiveCorrespondence.lean` (`isIrreducible_tensorRep_iff`,
`tmulIntertwining_bijective`), and
`TauCeti/GroupTheory/SemidirectProduct.lean`. Assumed of them: what their statements say. In
particular the tensor factorisation is stated for a projective extension with factor set `β` and
a projective multiplicity representation with factor set `β⁻¹`; this roadmap uses it with `β = 1`.

### From TauCetiRoadmap.RepresentationTheory.ModularCharactersAndBlocks

- §0.2: block idempotents of `R[G]` as primitive idempotents of the centre, the decomposition
  `k[G] ≅ ∏_B e_B k[G]`, and the blocks of modules.
- §1.1: the splitting `p`-modular system and its root bijection, for `G` and all subgroups.
- §1.2: stable lattices, and the compatibility of reduction with restriction and induction.
- §1.3: `existsUnique_blockIdempotent_map_residue` and surjectivity of `Z(O[G]) → Z(k[G])`.
- §2.1–2.2: Brauer characters, their induction formula and linear independence of `IBr(G)`.
- §2.3: the residue field of a splitting system splits `G` and its subgroups, so central
  characters of simple modules take values in `k`.
- §2.4: decomposition numbers `χ|_{p-reg} = Σ_φ d_{χφ} φ` and surjectivity of the decomposition
  map, so every Brauer character is a `ℤ`-combination of restricted ordinary characters.
- §3.1: projective characters `Φ_φ = Σ_χ d_{χφ} χ`, vanishing on `p`-singular elements, and
  `|G|_p ∣ Φ_φ(1)`.
- §4.1–4.3: the idempotents `e_χ`; `e_B = Σ_{χ ∈ Irr(B)} e_χ`; the partitions of `Irr(G)` and
  `IBr(G)`; the central-character criterion; block-diagonality of the decomposition matrix; the
  principal block.
- §5.1: generalized decomposition numbers `χ(u v) = Σ_φ d^u_{χφ} φ(v)` for a `p`-element `u` and
  `p`-regular `v ∈ C_G(u)`.
- §6.1: relative traces, `k[G]^P_Q = Tr_Q^P(k[G]^Q)` an ideal of `k[G]^P`, the Brauer projection
  and its factorisation for `Q ≤ P`.
- §6.2: `IsDefectGroup`, `isDefectGroup_conj`, `isDefectGroup_iff_sylow_of_augmentation_ne_zero`,
  the agreement with the minimality of `P` with `e ∈ Tr_P^G(k[G]^P)` and with defect classes
  (the defect groups of `B` are the Sylow `p`-subgroups of `C_G(x)` for `x` in a defect class),
  `O_p(G)` in every defect group, `⟨x⟩` in every defect group of every block of `C_G(x)` for a
  `p`-element `x`, and the characterisation of defect zero (`Irr(B) = {χ}`, `IBr(B) = {χ⁰}`,
  `|G|_p ∣ χ(1)`). With §3.1 and the block-diagonality of §4.2 this gives `Φ_{χ⁰} = χ`, so a
  character of defect zero vanishes on `p`-singular elements.
- §6.3: Brauer pairs, the order relation, and the maximal `B`-Brauer pairs, whose first components
  are the defect groups.
- §7.1: block induction `b^G`, defined when `C_G(D_b) ≤ H`, its transitivity, the central
  character `λ_B`, `Br_P(e_B) = Σ_{b^G = B} e_b` for `P C_G(P) ≤ H ≤ N_G(P)`, and
  `brauer_first_main`.
- §7.2: the second main theorem: `d^u_{χφ} ≠ 0` for `φ ∈ IBr(b)` implies that `(⟨u⟩, b)` is a
  Brauer pair of the block of `χ`.
- §8.1: a normal `p`-subgroup acts trivially on simple modules, and domination: every block of
  `G/N` is dominated by exactly one block of `G`.
- §8.2: normal `p'`-subgroups, and block covering (Martínez, Definition 7.3 and Theorem 7.7): for
  `N ⊴ G`, `B` covers `b` exactly when some, equivalently every, `χ ∈ Irr(B)` has its
  constituents on `N` in `G`-conjugates of `b`.

### From TauCetiRoadmap.LocalFiniteGroupTheory

- L1: `exists_conj_eq_of_isComplement'`: for `N ⊴ G` with `gcd(|N|, |G : N|) = 1` and `N` or
  `G/N` solvable, any two complements of `N` are conjugate.
- L3: Glauberman's lemma: if a group `A` of order coprime to `|G|`, with `A` or `G` solvable, and
  `G` act compatibly on a set `Ω` with `G` transitive, then `A` fixes a point of `Ω` and the
  `A`-fixed points form one `C_G(A)`-orbit; and `exists_mem_fixedPoints_mul_of_forall_mem`. §1.2,
  the only consumer, carries the same hypothesis, `S` or `Γ` solvable (a subgroup of `Γ` being
  solvable when `Γ` is); its own consumers in Layers 3–4 have `S` cyclic or solvable.

### From TauCetiRoadmap.RepresentationTheory.CharacterTheory

§2.1 (the sum of the squares of the degrees), §3.5 (column orthogonality, primitive central
idempotents), §3.6 (the irreducible characters of `G × H` are the products `ψ × ξ`), §4.3
(central characters, `ω_χ(𝒞⁺) = |𝒞| χ(x)/χ(1)`, integrality), §4.4 (the Galois action and
`fieldOfValues_eq_map_fixedField_stabilizer`).

### From TauCetiRoadmap.RepresentationTheory.InductionRestriction

Layer 1 (`conjRep` and the conjugate character), Layer 2 (the induced character and Frobenius
reciprocity), Layer 5 (Clifford's theorem and the Clifford correspondence), Layer 7 (the scalar
obstruction `cliffordObstruction` and the tensor factorisation over a compatible projective
extension). Layers 2 and 5 state reciprocity and Clifford theory with `IsUnit (Nat.card G : k)`,
so this roadmap consumes them for ordinary characters only, over `ℂ`; the characteristic-`p`
step of §7.2 uses instead the field-general Mathlib `Rep.indResAdjunction` and Tau Ceti
`TauCeti.Representation.isSemisimpleRepresentation_comp_subtype`.

What InductionRestriction must provide (gap:clifford-multiplicity-dvd-index): for a finite group
`G`, `N ⊴ G`, `χ ∈ Irr(G)` and an irreducible constituent `θ` of `χ|_N`, the quotient `χ(1)/θ(1)`
is a natural number dividing `|G : N|` (isaacs Corollary 11.29; the step used in the proof of
reynolds line 531, Theorem 8, at line 538). The supplying section is Layer 7, "projective
representations, factor sets, and the Schur multiplier": it owns the tensor factorisation of an
irreducible representation of the inertia group of `θ` as a compatible projective extension of `θ`
tensored with a projective representation of the inertia quotient, and the lifting of projective
representations to a central extension, but states no degree divisibility. The divisibility
reduces, through the Clifford correspondence of Layer 5 and that factorisation, to Schur's theorem
that the degree of an irreducible projective representation of a finite group divides the order
of the group, which follows from the lifting to a finite central extension and the divisibility of
the degree of an irreducible representation by the index of a central subgroup (isaacs
Theorem 3.12). §8.3 uses it for Reynolds' height formula.

## How to read the build

Layers 1–5 are the coprime-action strand and use no block theory. Layer 1 fixes the action on
characters and proves the fixed-class lemma and Brauer's permutation lemma; Layer 2 constructs the
canonical extension and Gallagher's correspondence; Layer 3 treats a cyclic acting group; Layer 4
builds the correspondence for solvable `S`, proves its characterisations, and defines the
Glauberman correspondence as the unique compatible family; Layer 5 proves the degree relation and
states degree-divisibility. Layers 6–9 are the block strand, on the base. Layer 6 proves Brauer's
theorem on heights and defines heights; Layer 7 develops blocks and normal subgroups up to the
Fong–Reynolds correspondence and the extended first main theorem; Layer 8 proves the structure of
blocks with a normal defect group and Reynolds' theorem; Layer 9 states the two conjectures as
predicates. The headline statements of `Suggested.lean` are the canonical extension and
Gallagher's correspondence (§§2.2, 2.4), the `p`-group characterisation (§4.2), the existence of
the Glauberman bijection with its constituent, field-of-values and degree properties (§§4.5–5.1),
the counting theorem (§4.4), Brauer's theorem on heights (§6.2), the Fong–Reynolds preservation
of heights (§7.4), Reynolds' theorem (§8.4), and the two predicates (Layer 9), with the
simple definitions they need: invariant characters, block membership through `e_B e_χ = e_χ`,
defect groups and heights.

## Layer 1: coprime actions on characters

### 1.1 Conjugate characters and invariant characters

Take the action of `S` on functions `Γ → ℂ` to be Mathlib's `arrowAction` for the action of `S`
on `Γ`, so `(s · χ)(g) = χ(s⁻¹ • g)`; its action laws are Mathlib's. Define the set `Irr_S(Γ)` of
`S`-invariant irreducible characters, and take the fixed-point subgroup `C = C_Γ(S)` to be
Mathlib's `FixedPoints.subgroup S Γ` (glauberman line 94, the conjugate `η^a`; hartley-turull
line 302). No coprimality is assumed in this subsection. *Needs:* Mathlib `MulDistribMulAction`,
`arrowAction`, `FixedPoints.subgroup`, `SemidirectProduct.inl_aut`; Tau Ceti
`TauCeti.irreducibleCharacters`, `TauCeti.conjNormalFDRep`, `TauCeti.char_conjFDRep`,
`TauCeti.inertia`; InductionRestriction Layer 1.

- The action `s · χ` preserves class functions, characters, irreducibility, degrees
  `(s · χ)(1) = χ(1)` and the pairing `[s · χ, s · ψ] = [χ, ψ]`; so `S` permutes `Irr(Γ)` and `Irr_S(Γ)` is the fixed set.
- `s · χ` is the character of the conjugate of a representation affording `χ` by `inr s` in
  `Γ ⋊ S`; hence `χ ∈ Irr_S(Γ)` exactly when the inertia group `TauCeti.inertia` of a
  representation affording `χ` in `Γ ⋊ S` is everything.
- If `K` is the kernel of `S → MulAut Γ`, then `Irr_S(Γ) = Irr_{S/K}(Γ)` and
  `C_Γ(S) = C_Γ(S/K)`, for the induced action of `S/K`.
- In the internal case `S ≤ N_G(Γ)`, `(s · χ)(g) = χ(s⁻¹ g s)`.

**Checks.**
- `Γ = C₇ = ⟨r⟩`, `S = C₃` acting by `r ↦ r²`: `(s · χ)(r) = χ(r⁴)`; the only invariant
  irreducible character is the trivial one, `C = 1`, and the convention `χ(s • g)` would send `ζ₇`
  to `ζ₇²` instead of `ζ₇⁴`.
- `Γ = Q₈`, `S = C₃` acting as in `SL(2,3)`: `S` permutes the three nontrivial linear characters
  cyclically and fixes the trivial and the two-dimensional character, so `Irr_S(Q₈)` has two
  elements, and `C = Z(Q₈) = {±1}`.
- Trivial action, or `S = 1`: `Irr_S(Γ) = Irr(Γ)` and `C = Γ`.

### 1.2 Fixed classes under a coprime action

Let `S` be coprime to `Γ`, with `S` or `Γ` solvable. Prove: two elements of `C` that are conjugate
in `Γ` are conjugate in `C`; an `S`-invariant conjugacy class of `Γ` meets `C`; and if `H ≤ Γ` is
`S`-invariant and `s • (g H) = g H` for all `s`, the coset `g H` meets `C`. Hence `t ↦` (the
`Γ`-class of `t`) is a bijection from the conjugacy classes of `C` to the `S`-invariant conjugacy
classes of `Γ` (glauberman line 287, Lemma 3 (a)–(c), stated there for every relatively prime
operator group; the solvability hypothesis here is the one under which LocalFiniteGroupTheory L3
supplies Glauberman's lemma). Route: apply Glauberman's lemma to `Γ` acting by
conjugation on a class (for the first two statements) and to `H` acting on `g H` by `x ↦ x h⁻¹`
(for the third, `H` being solvable when `Γ` is); the actions are compatible with that of `S`.
*Needs:* LocalFiniteGroupTheory L3 (Glauberman's lemma); Mathlib `ConjClasses`,
`FixedPoints.subgroup`.

**Checks.**
- `Q₈` with `C₃`: the invariant classes are `{1}` and `{−1}`, two, the number of classes of
  `C = {±1}`.
- Without coprimality the count fails: `S = ⟨t⟩` of order `2` acting on `S₃` by conjugation by a
  transposition `t` fixes all three classes, while `C = ⟨t⟩` has two classes.
- Without coprimality the coset statement fails: `C₂` swapping the factors of `Γ = C₂ × C₂` has
  `C` the diagonal, and the invariant coset `(1, 0) + C = {(1,0), (0,1)}` contains no fixed point.
- A nonsolvable `S` over a solvable `Γ`: `S = A₅` (order `60`) permuting the coordinates of
  `Γ = 𝔽₇⁵` (order `7⁵`). As `A₅` is transitive on five points, `C` is the line of constant
  vectors; the classes of the abelian `Γ` are its elements, so the `S`-invariant classes are the
  `7` elements of `C`, and `C` has `7` classes. The `S`-invariant subgroup `H = {Σ_i v_i = 0}` has
  the `S`-invariant cosets `{Σ_i v_i = c}`, each containing the constant vector with entries
  `3c = c/5`. A version requiring `S` solvable does not apply here. Over `𝔽₅⁵`, where `5 ∣ |A₅|`,
  the invariant coset `{Σ_i v_i = 1}` contains no constant vector, since `5 c = 0`.

### 1.3 Brauer's permutation lemma for automorphisms

For a finite group `Γ` and `σ ∈ MulAut Γ`, prove that the number of `χ ∈ Irr(Γ)` with `χ ∘ σ = χ`
equals the number of conjugacy classes `K` with `σ(K) = K`. Consequently, for a cyclic group `A`
acting on `Γ`, `|Irr_A(Γ)|` equals the number of `A`-invariant classes, and for any finite `A` the
numbers of `A`-orbits on `Irr(Γ)` and on the classes agree (glauberman line 355, citing Brauer;
isaacs Theorem 6.32). Route: `σ` permutes the rows and the columns of the character
table `X`, giving permutation matrices with `P X = X Q`; `X` is invertible by column
orthogonality, so `tr P = tr Q`; Burnside's lemma gives the orbit count. *Needs:* Tau Ceti
`TauCeti.characterTable`, `TauCeti.sum_characterTable_mul_conj`; CharacterTheory §3.5; §1.1.

**Checks.**
- `C₃` with inversion: one fixed character, one fixed class; `Q₈` with an element of order `3`:
  two and two; an inner automorphism of `S₃`: three and three.
- For a noncyclic group the fixed-point counts of the whole group can differ:
  `A = ⟨a, b⟩ ≅ C₂ × C₂` acting on `𝔽₂³` by `a = 1 + E₁₂`, `b = 1 + E₁₃` fixes the two vectors of
  `𝔽₂ e₁` but the four characters `v ↦ (−1)^{w·v}` with `w₁ = 0`; each single element fixes four
  of each, as the lemma requires.
- `Γ = 1`: one character, one class.

### Examples

`SL(2,3) = Q₈ ⋊ C₃`: `Irr_S(Q₈) = {1, χ₂}`, `C = {±1}`, two invariant classes, and the counts of
§§1.2–1.3 are `2 = 2 = 2`.

### Dependencies

Mathlib actions, fixed points and semidirect products; Tau Ceti characters, conjugation, inertia
and the character table; LocalFiniteGroupTheory L3; CharacterTheory §3.5; InductionRestriction
Layer 1.

## Layer 2: the canonical extension and Gallagher's correspondence

### 2.1 Gallagher's normalised extension

Let `Γ` be a group, `A` a finite group acting on `Γ` by automorphisms, `F` a field, `V` a nonzero
finite-dimensional `F`-vector space and `ρ` a representation of `Γ` on `V` all of whose
`F[Γ]`-endomorphisms are scalars. Assume `Nat.Coprime (Nat.card A) (finrank F V)` and that for
every `a ∈ A` the twisted representation `g ↦ ρ(a • g)` is isomorphic to `ρ`. Prove that there is
a unique representation `ρ*` of `Γ ⋊ A` on `V` with `ρ*(inl g) = ρ(g)` for all `g` and
`det ρ*(inr a) = 1` for all `a` (glauberman line 100, Theorem 1). Route: choose `S(a)`
implementing the twist, so that `S(a) S(b) = c(a, b) S(a b)` with scalar `c` by the scalar
hypothesis; with `d(a) = det S(a)`, `e(b) = Π_a c(a, b)`, `r = dim V`, `n = |A|` and `i n + j r = 1`,
the rescaling by `f(a) = d(a)^j e(a)^i` trivialises `c`, and a final rescaling makes the
determinants `1`; two such extensions differ by scalars `h(a)` with `h(a)^r = h(a)^n = 1`. No
finiteness of `Γ` and no coprimality with `|Γ|` is used. For `inl(Γ) ⊴ Γ ⋊ A`, where the twist
hypothesis makes the inertia group of `ρ` everything, the existence part says that the scalar
extension obstruction of InductionRestriction Layer 7 vanishes (Tau Ceti defines this obstruction
for simple representations over an algebraically closed field only); the theorem adds the
normalisation and uniqueness, over every field. *Needs:* Mathlib `SemidirectProduct`,
`LinearMap.det`; InductionRestriction Layer 7.

- For `B ≤ A`, the restriction of `ρ*` to `Γ ⋊ B` is the normalised extension for `B`.
- `ρ*` is natural for isomorphisms of `ρ` and commutes with scalar extension of `F`.

**Checks.**
- `Γ = 1`, `V = F = ℚ`, `A = C₂`: `ρ*` is trivial on `A`; the extension by the sign of `A` also
  extends `ρ` but has determinant `−1`.
- The coprimality is needed: `Γ = Q₈` with `A = C₂` acting by conjugation by `i` and `ρ` the
  two-dimensional representation over `ℂ`; the implementing operators of order dividing `2` are
  `±√−1 · ρ(i)`, both of determinant `−1`, so no extension has determinant `1`.
- `Γ = Q₈`, `A = C₃` as in `SL(2,3)`: `ρ*` is the natural embedding of `SL(2,3)` in `SL₂(ℂ)`;
  an element of order `3` has eigenvalues `ω, ω²`, trace `−1` and determinant `1`.
- `A = 1`: `ρ* = ρ`.

### 2.2 The canonical extension

For `Γ`, `S` finite and coprime and `χ ∈ Irr_S(Γ)`, prove that there is a unique
`χ̂ ∈ Irr(Γ ⋊ S)` with `χ̂ ∘ inl = χ` and `det χ̂` trivial on `inr(S)`, equivalently with `det χ̂`
of order coprime to `|S|`; call it the canonical extension of `χ` (glauberman line 234,
Theorem 2 (a), and line 263; hartley-turull line 304, Definition 3.1). No solvability of `S` is
assumed. Route: `χ(1) ∣ |Γ|` is coprime to `|S|`; invariance gives the twisted isomorphisms by
character recognition; §2.1 over `ℂ`. The two normalisations agree because `det χ̂` restricted to
`Γ` is `det χ`, of order dividing `|Γ|`, and a linear character of `Γ ⋊ S` has order coprime to
`|S|` exactly when it is trivial on `S`. *Needs:* §2.1; Tau Ceti
`TauCeti.Representation.finrank_dvd_card`, `Representation.nonempty_equiv_of_character_eq`;
§1.1.

- For `T ≤ S`, the canonical extension for `T` is the restriction of `χ̂` to `Γ ⋊ T`.
- For an automorphism `α` of `Γ ⋊ S` mapping `inl(Γ)` and `inr(S)` to themselves, the canonical
  extension of `χ ∘ α⁻¹` is `χ̂ ∘ α⁻¹`.
- For `j` coprime to `|Γ ⋊ S|`, the canonical extension of `χ^{(j)}` is `χ̂^{(j)}`.
- The canonical extension of the trivial character is trivial.

**Checks.**
- `SL(2,3)`: the canonical extension of the two-dimensional `χ₂` of `Q₈` is the character of the
  natural representation, value `−1` at an element of order `3`; the other extensions
  `χ̂ λ`, `λ` a nontrivial linear character of `C₃`, have `det = λ² ≠ 1` on `S`.
- Trivial action: `Γ ⋊ S = Γ × S` and `χ̂ = χ × 1_S`.
- `S₃ = C₃ ⋊ C₂`: the canonical extension of `1_{C₃}` is `1`, not `sgn`, whose determinant is `−1`
  on `C₂`.

### 2.3 Values of the canonical extension

Prove that for coprime positive integers `m`, `n`, `ℚ(ζ_m) ∩ ℚ(ζ_n) = ℚ` in `ℂ` and that
automorphisms of `ℚ(ζ_m)` and `ℚ(ζ_n)` extend to a common automorphism of `ℚ(ζ_{mn})`
(glauberman line 173, Lemma 1). Prove that `ℚ(χ̂) = ℚ(χ)` and that `χ̂(s) ∈ ℤ` for every `s ∈ S`
(glauberman line 238, Theorem 2 (b)). Route: an automorphism fixing `ℚ(χ)` sends `χ̂` to an
extension with the same determinant normalisation, hence to `χ̂`; `χ̂(s)` is an algebraic integer
in `ℚ(χ) ∩ ℚ(ζ_{|S|}) ⊆ ℚ(ζ_{|Γ|}) ∩ ℚ(ζ_{|S|}) = ℚ`. *Needs:* §2.2; Mathlib
`IsCyclotomicExtension`, `IsPrimitiveRoot.autToPow`, `ZMod.chineseRemainder`, `IsGalois`,
`IntermediateField.fixedField`, `IsIntegral`, `Representation.isIntegral_character`; Tau Ceti
`IsPrimitiveRoot.cyclotomicIrreducibleCharacterAction_apply`, `FDRep.characterField`;
CharacterTheory §4.4.

**Checks.**
- `SL(2,3)`: all values of the canonical `χ̂` are rational (`2, −2, 0, −1, 1`), while `χ̂ ω` takes
  the value `−ω ∉ ℤ` at an element of order `3`.
- Trivial action of `C₂` on `C₃` with `χ(r) = ζ₃`: `χ̂(s) = 1` and `ℚ(χ̂) = ℚ(ζ₃) = ℚ(χ)`.
- `ℚ(ζ₄) ∩ ℚ(ζ₃) = ℚ`, while for the non-coprime pair `4, 8` the intersection is `ℚ(i)`.

### 2.4 Gallagher's correspondence

Let `N ⊴ G` be finite, `θ ∈ Irr(N)` and `χ̂ ∈ Irr(G)` with `χ̂|_N = θ`. Prove that
`β ↦ χ̂ · (β ∘ π)`, `π : G → G/N`, is a bijection from `Irr(G/N)` onto `Irr(G | θ)` (glauberman
line 240, Theorem 2 (c), citing Gallagher; isaacs Corollary 6.17). Route: `θ` is
`G`-invariant, so its inertia group is `G`; a representation affording `χ̂` is a compatible
extension with trivial factor set, and `tensorRepEquiv`, `isIrreducible_tensorRep_iff` and
`tmulIntertwining_bijective` identify the irreducible representations of `G` over `θ` with the
tensor products by irreducible representations of `G/N`, the multiplicity space being recovered;
the character of the tensor product is the product of characters. This is the character form of
the tensor factorisation of InductionRestriction Layer 7 in the case of an ordinary extension.
*Needs:* Tau Ceti `TauCeti.IsProjectiveInertiaExtension`,
`TauCeti.IsProjectiveInertiaExtension.tensorRepEquiv`,
`TauCeti.IsProjectiveInertiaExtension.isIrreducible_tensorRep_iff`,
`TauCeti.IsProjectiveInertiaExtension.tmulIntertwining_bijective`, `TauCeti.inertia`;
InductionRestriction Layer 7. Applied with `N = Γ`, `G = Γ ⋊ S`, `χ̂` canonical, it describes
`Irr(Γ ⋊ S | χ)` as `{χ̂ β : β ∈ Irr(S)}`.

**Checks.**
- `SL(2,3)` over `χ₂`: `Irr(C₃)` has three members and `Irr(SL(2,3) | χ₂)` consists of the three
  two-dimensional characters `χ̂, χ̂ ω, χ̂ ω²`.
- Degenerate cases: `N = G` gives `{θ}`; `N = 1` gives the identity of `Irr(G)`.
- The extension hypothesis is needed: `N = Z(Q₈)`, `θ` the faithful linear character, has no
  extension to `Q₈`, and `Irr(Q₈ | θ)` has one member against `|Irr(Q₈/N)| = 4`.

### Examples

For `SL(2,3)` the canonical extension of `χ₂` is the natural two-dimensional character; its value
at an element `a` of order `3` is `−1`, at `−a` it is `1`, and its products with the three linear
characters of `C₃` are the three two-dimensional irreducible characters.

### Dependencies

Layer 1; Tau Ceti degree divisibility, character recognition, Galois action, field of values and
tensor factorisation; Mathlib cyclotomic fields and Galois theory; CharacterTheory §4.4;
InductionRestriction Layer 7.

## Layer 3: the cyclic case

### 3.1 Cosets of a cyclic acting group

Let `A = ⟨a⟩` be cyclic and coprime to `Γ`. Prove: every element `inr a · inl g` of `Γ ⋊ A` is
conjugate to some `inr a · inl t` with `t ∈ C`; for `t₁, t₂ ∈ C`, `inr a · inl t₁` and
`inr a · inl t₂` are conjugate in `Γ ⋊ A` exactly when `t₁` and `t₂` are conjugate in `C`; and the
centraliser of `inr a · inl t` is `inr(A) · inl(C_C(t))` (glauberman line 266, Lemma 2). Route:
for `π` the set of primes dividing `|A|`, the `π`-part of `a g` (the power of `a g` whose order is
the largest divisor of the order of `a g` built from primes in `π`) has order `|A|`, because
`(a g)^{|A|}` lies in `Γ` and so has order prime to `|A|`; it generates a complement of `Γ`,
conjugate to `inr(A)` by the conjugacy half of Schur–Zassenhaus (the quotient `A` is cyclic,
hence solvable); the conjugacy and centraliser
statements use `k |Γ| ≡ 1 (mod |A|)` to recover `a` as a power of `a t`. *Needs:*
LocalFiniteGroupTheory L1 (`exists_conj_eq_of_isComplement'`); Mathlib `SemidirectProduct`,
`IsCyclic`.

**Checks.**
- `S₃ = C₃ ⋊ C₂`: the coset of `a` consists of the three transpositions, all conjugate to `a`;
  `C = 1` and the centraliser of `a` is `⟨a⟩`.
- `SL(2,3)`: the coset `a Q₈` splits into the classes of `a` and of `a · (−1)`, of sizes
  `24/6 = 4` each, matching the two classes of `C = {±1}`. Here `π = {3}`: `a · (−1)` has order
  `6` and `3`-part `(a · (−1))⁴ = a`, of order `|A| = 3`; its `2`-part `(a · (−1))³ = −1` lies in
  `Q₈` and generates no complement.
- Coprimality is needed: in `D₈ = C₄ ⋊ C₂` the reflection `a x` is not conjugate to `a` or to
  `a x²`, the only elements `a t` with `t ∈ C = {1, x²}`.

### 3.2 The cyclic correspondence and its sign

Let `A` be cyclic and coprime to `Γ`, `χ ∈ Irr_A(Γ)` and `χ̂` its canonical extension. Prove that
there are a unique sign `ε(χ)` and a unique `χ*_cyc ∈ Irr(C)` with `χ̂(a t) = ε(χ) χ*_cyc(t)` for
all `t ∈ C` and every generator `a` of `A`, and that `χ ↦ χ*_cyc` is a bijection
`Irr_A(Γ) → Irr(C)` (glauberman line 299, Theorem 3; hartley-turull line 306, Proposition 3.2,
for the sign as a function of cyclic subgroups). Route: independence of the generator from the
power-map value law and `ℚ(χ̂) ⊆ ℚ(ζ_{|Γ|})`; the class function `Σ_β β(a⁻¹) χ̂ β` and Gallagher
give `Σ_{g ∈ Γ} |χ̂(a g)|² = |Γ|`; writing `χ̂|_{A × C}` through the products of irreducible
characters of `A` and `C` gives `χ̂(a t) = Σ_λ c(λ) λ(t)` with rational integers `c(λ)`, and
Lemma 2 turns the norm identity into `Σ_λ c(λ)² = 1`; injectivity uses Gallagher again and
surjectivity the counts of §§1.2–1.3. *Needs:* §§1.2, 1.3, 2.2–2.4, 3.1; CharacterTheory §§3.6,
4.4; Tau Ceti `IsPrimitiveRoot.cyclotomicIrreducibleCharacterAction_apply`.

- The pair `(ε(χ), χ*_cyc)` is determined by the function `t ↦ χ̂(a t)` on `C`.
- `ε(χ) χ*_cyc(1) = χ̂(a) ∈ ℤ`.

**Checks.**
- `SL(2,3)`: `χ̂(a) = −1` and `χ̂(−a) = 1` give `ε = −1` and `χ₂*_cyc = sgn` on `C = {±1}`; the
  same values arise for the generator `a²`. A rule without the sign cannot produce an irreducible
  character from `t ↦ χ̂(a t)` here.
- Trivial action of `C₂` on `C₃`: `χ̂(a t) = χ(t)`, so `ε = 1` and `χ*_cyc = χ`.
- `C₂` inverting `C₅`: `Irr_A(Γ) = {1}`, `C = 1`, and `χ̂(a) = 1` gives `ε = 1`.
- `A = 1`: the generator is `1`, `χ̂ = χ`, `ε = 1` and `χ*_cyc = χ`.

### 3.3 One element of the acting group

For `A` coprime to `Γ` (not necessarily cyclic), `χ ∈ Irr_A(Γ)`, `a ∈ A` and `C_a = C_Γ(a)`,
prove that there are a sign `ε` and `λ ∈ Irr(C_a)` with `χ̂(a t) = ε λ(t)` for all `t ∈ C_a`
(glauberman line 364, Corollary 4). Route: the restriction of `χ̂` to `Γ ⋊ ⟨a⟩` is the canonical
extension there (§2.2); apply §3.2. *Needs:* §§2.2, 3.2.

**Checks.**
- `SL(2,3)`, `a` of order `3`: `C_a = {±1}`, `ε = −1`, `λ = sgn`.
- `a = 1`: `C_a = Γ`, `ε = 1`, `λ = χ`.
- A noncyclic `A = C₃ × C₃` acting on `Q₈` through its first factor as in `SL(2,3)`: the
  canonical extension of `χ₂` is `η × 1` on `SL(2,3) × C₃`; for `a` in the kernel of the action,
  `C_a = Q₈`, `ε = 1` and `λ = χ₂`, while for `a` acting nontrivially `C_a = {±1}`, `ε = −1` and
  `λ = sgn`.

### 3.4 Glauberman's restriction formulas

Let `A` be cyclic and coprime to `Γ`, `B < A` such that `C_Γ(a) = C` for every `a ∈ A ∖ B`,
`χ ∈ Irr_A(Γ)` and `λ = χ*_cyc`. Prove that there are a sign `ε'` and a linear character `θ₀` of
`A` with `θ₀² = 1` such that: (a) `χ̂(a t) = ε' θ₀(a) λ(t)` for `a ∈ A ∖ B`, `t ∈ C`; (b) if
`χ|_C = ε' λ` then `ε' = 1` and `Γ = C · ker χ`, and otherwise `|A : B|⁻¹ (χ|_C − ε' λ)` is a
character of `C` (glauberman line 375, Corollary 5 (a)–(b), and line 454, Corollary 6 (c) for
`B = 1`). For a generator `a`, `ε' θ₀(a) = ε(χ)`; when `|A|` is odd, `θ₀ = 1` and `ε' = ε(χ)`, while
for `|A| = 2` the sign `ε'` may differ from `ε(χ)` by `θ₀(a) = −1`. Route: as
in the source, from Lemma 2 and the orthogonality relations for `A × C`, with Lemma 3 (c) for the
kernel statement. *Needs:* §§1.2, 3.1, 3.2; CharacterTheory §3.6.

**Checks.**
- `SL(2,3)`, `B = 1`: `ε' = ε = −1`, `χ₂|_C = 2 sgn ≠ −sgn` and `(2 sgn + sgn)/3 = sgn` is a
  character.
- `χ = 1`: `χ|_C = 1 = ε' λ` with `ε' = 1`, and `Γ = C · Γ`.
- The extraspecial group `3^{1+2}_+` with the involution of §4.2, `B = 1`: `χ|_C = 3 ω`, and
  `(3 ω − ω)/2 = ω` is a character.
- `C₂` inverting the `C₅` factor of `Γ = C₃ × C₅`, `B = 1`, `χ = ψ × 1`: `χ|_C = ψ = λ`, and
  `Γ = C · ker χ = C₃ · C₅`.

### Examples

For `A` of prime order `p`, §3.4 (b) says that `χ|_C − ε' χ*_cyc` is zero or `p` times a
character for a suitable sign `ε'`; for `SL(2,3)` it is `3 sgn`.

### Dependencies

Layers 1–2; LocalFiniteGroupTheory L1; CharacterTheory §§3.6, 4.4.

## Layer 4: the solvable case

### 4.1 Induced actions and the composition-series correspondence

Let `S` be solvable and coprime to `Γ`. For `T ⊴ S`, `S/T` acts on `C_Γ(T)` by Mathlib's quotient
action, coprimely, with fixed subgroup `C_Γ(S)`. Prove that for a group `B` acting on `Γ` by
automorphisms (no coprimality required of `B`) and a cyclic normal subgroup `A ⊴ B` coprime to
`Γ`, acting by restriction, the cyclic correspondence of §3.2 commutes with every `β ∈ B`: `β` preserves `C_Γ(A)` and `(β · χ)*_cyc = β · χ*_cyc`
(glauberman line 481, Lemma 4; the canonical extension of `β · χ` is the transport of `χ̂` along
the automorphism of `Γ ⋊ A` induced by `β`, §2.2). For a composition series
`S = S₀ ⊵ ⋯ ⊵ S_m = 1`, define `Λ_C : Irr(C_Γ(S)) → Irr(Γ)` by `λ₀ = λ` and
`λ_i = Λ^{cyc}_i(λ_{i−1})`, where `Λ^{cyc}_i : Irr(C_Γ(S_{i−1})) → Irr(C_Γ(S_i))` is the inverse of
the cyclic correspondence for `S_{i−1}/S_i` acting on `C_Γ(S_i)`, and `Λ_C(λ) = λ_m`
(glauberman line 503, Definition (a)). When every `S_i` is normal in `S`, prove that each `λ_i` is
`S`-invariant and that the inverse construction is defined on `Irr_S(Γ)` and inverts `Λ_C`
(glauberman line 524, Lemma 5). *Needs:* §§2.2, 3.2; Mathlib
`MulDistribMulAction (G ⧸ H) (FixedPoints.subgroup H α)`, `IsSolvable`.

- The identification `C_{C_Γ(T)}(S/T) = C_Γ(S)` is an equality of subgroups of `Γ`.
- `Λ_C` for a series of length one is the inverse of the cyclic correspondence.
- `Λ_C(λ)` lies in `Irr(Γ)` for every `λ ∈ Irr(C_Γ(S))`.

**Checks.**
- `S = C₃` on `Q₈`: the series `C₃ ⊵ 1` gives `Λ_C(sgn) = χ₂` and `Λ_C(1) = 1`.
- `S = C₆ = C₂ × C₃` acting on `Q₈ × C₅`, the `C₃` factor as in `SL(2,3)` and the `C₂` factor
  inverting `C₅`: `C = {±1} × 1`; along `C₆ ⊵ C₃ ⊵ 1` the first step sends `sgn` to `sgn × 1` on
  `C_Γ(C₃) = {±1} × C₅` and the second to `χ₂ × 1`; along `C₆ ⊵ C₂ ⊵ 1` the first step sends `sgn`
  to `χ₂` on `C_Γ(C₂) = Q₈` and the second to `χ₂ × 1`.
- `S = 1`: the empty series and `Λ_C = id`.

### 4.2 The `p`-group case

Let `S` be a `p`-group coprime to `Γ` and `C` a composition series. Prove that for every
`λ ∈ Irr(C_Γ(S))` there is a sign `ε` such that `(Λ_C(λ)|_C − ε λ)/p` is zero or a character of
`C` (glauberman line 540, Theorem 4 (a)). Route: induction on `|S|`, the last step being §3.4 (b)
for the prime-order group `S_{m−1}`, with the transitivity of the congruence through
`C ≤ C_Γ(S_{m−1})`. *Needs:* §§3.4, 4.1.

**Checks.**
- `SL(2,3)`: `Λ(sgn)|_C = χ₂|_C = 2 sgn`, `ε = −1`, `(2 sgn + sgn)/3 = sgn`.
- The extraspecial group `Γ = 3^{1+2}_+` with `S = C₂` acting by `(x, y, z) ↦ (−x, −y, z)`:
  `C = Z(Γ)`, a faithful three-dimensional `χ` restricts to `3 ω` for a linear `ω` of `Z(Γ)`, and
  `(3 ω − ω)/2 = ω`.
- `S = 1`: `Λ(λ) = λ`, `ε = 1` and the quotient is zero.

### 4.3 Agreement with the cyclic case and independence of the series

Prove that for cyclic `S`, `Λ_C` is the inverse of the cyclic correspondence of §3.2 for every
composition series `C`, and that for solvable `S`, `Λ_C = Λ_D` for any two composition series
(glauberman line 543, Theorem 4 (b), (c)). Consequently, for any chain
`1 = T₀ ⊴ T₁ ⊴ ⋯ ⊴ T_r = S` with each `T_{i+1}/T_i` a `p_i`-group, `Λ` is the composite of the
`p_i`-group correspondences of `T_{i+1}/T_i` on `C_Γ(T_i)`, by refining the chain to a composition
series. Route: as in the source, by induction on `|S|`, with §4.2 for prime-power order, §3.4 (b)
for the cyclic `p`-group case, for cyclic `S` not of prime-power order the decomposition
`S = P × E` into its Sylow `p`-subgroup `P` and its Hall `p'`-subgroup `E`, where `p = |S : S₁|` is
the order of the top factor of the series (glauberman line 562), with §§2.2, 3.2, and for two
series with different first terms the quotient by their intersection. *Needs:* §§3.2, 3.4, 4.1,
4.2.

**Checks.**
- The two series of `C₆` in §4.1 give the same `Λ(sgn) = χ₂ × 1`.
- `S = C₉` acting on `Γ = C₁₉` through `C₉ ≤ Aut(C₁₉) ≅ C₁₈`: `C = 1`, `Irr_S(Γ) = {1}`, and the
  unique series agrees with §3.2.
- `S` acting trivially: every series gives the identity of `Irr(Γ)`.

### 4.4 Equivariance, bijectivity and the count

Write `Λ = Λ_C` (§4.3). Prove: if `S ⊴ B` for a group `B` acting on `Γ`, then
`Λ(β · λ) = β · Λ(λ)` for `β ∈ B` (glauberman line 601, Corollary 7); `Λ(λ) ∈ Irr_S(Γ)` and
`Λ : Irr(C_Γ(S)) → Irr_S(Γ)` is a bijection (glauberman line 607, Corollary 8); and
`|Irr_S(Γ)| = |Irr(C_Γ(S))|`, which is the number of `S`-invariant conjugacy classes of `Γ`, so
`S` fixes a nontrivial irreducible character whenever `C_Γ(S) ≠ 1` (glauberman line 623,
Corollary 9). The last statement is Brauer's permutation lemma for a coprime solvable acting group.
*Needs:* §§1.2, 4.1, 4.3; Tau Ceti `TauCeti.card_irreducibleCharacters`.

**Checks.**
- `SL(2,3)`: `2 = 2 = 2`; the extraspecial example of §4.2: `3 = 3 = 3`.
- `C₇ ⋊ C₃` with the automorphism inverting `C₇` and fixing `C₃`: `C = C₃`, the two
  three-dimensional characters are swapped, and `3 = 3 = 3`.
- `C₃` acting on `C₇` by `r ↦ r²`: `1 = 1 = 1`.

### 4.5 The Glauberman correspondence

Prove that there is exactly one assignment, to every finite group `Γ` (in a fixed universe) and
every finite solvable `S` acting on it coprimely, of a bijection
`π(Γ, S) : Irr_S(Γ) → Irr(C_Γ(S))`, such that: when `S` is a `p`-group, `π(Γ, S)(χ)` is an
irreducible constituent of `χ|_C` of multiplicity prime to `p`; and
`π(Γ, S)(χ) = π(C_Γ(T), S/T)(π(Γ, T)(χ))` for every `T ⊴ S`, where `π(Γ, T)(χ)` is
`S/T`-invariant by §4.4 (glauberman line 543, Theorem 4, line 601, Corollaries 7–8; spath-vallejo
line 118 and line 129 for the compatibility law; navarro-2018, Chapter 2, for the
uniqueness formulation). For a `p`-group `S` prove further that for every `χ ∈ Irr_S(Γ)` there is
exactly one `λ ∈ Irr(C)` with `p ∤ [χ|_C, λ]`, that `[χ|_C, λ] ≡ ±1 (mod p)` and that
`[χ|_C, μ] ≡ 0 (mod p)` for all other `μ ∈ Irr(C)` (glauberman line 540, Theorem 4 (a); isaacs,
Chapter 13). Define the **Glauberman correspondence** by `θ* = π(Γ, S)(θ)`. Route:
existence with `π(Γ, S) = Λ⁻¹` (§§4.3–4.4), the compatibility law by choosing a composition
series through `T`, the `p`-group property from §4.2; uniqueness by induction on `|S|` through a
normal subgroup `T` of prime index, which exists for solvable `S ≠ 1`, the factor `π(C_Γ(T), S/T)`
being fixed by the `p`-group property. *Needs:* §§4.2–4.4.

- For the trivial action, or `S = 1`, `θ* = θ`.
- `π(Γ, S)` is computed by every chain of subnormal subgroups with prime-power factors (§4.3).
- For cyclic `S`, `θ* = θ*_cyc` (§3.2).
- If `K` is the kernel of the action, `π(Γ, S) = π(Γ, S/K)`.

**Checks.**
- `SL(2,3)`: `χ₂* = sgn` and `1* = 1`; the multiplicity `[χ₂|_C, sgn] = 2 ≡ −1 (mod 3)`.
- `S = C₂` swapping the factors of `Γ = C₃ × C₃`: `C` is the diagonal, `Irr_S(Γ) = {ψ_a × ψ_a}`,
  and `(ψ_a × ψ_a)* = ψ_{2a}` on the diagonal (`ψ_a(r) = ζ₃^a`), not `ψ_a`.
- Coprimality is needed: `C₂` swapping the factors of `C₂ × C₂` fixes the characters `(1,1)` and
  `(−1,−1)`, both restricting to the trivial character of the diagonal with multiplicity `1`, so
  no injective assignment with the `p`-group property exists.

### 4.6 Equivariance under automorphisms and fields

Let `S` be solvable and coprime to `Γ` and `θ ∈ Irr_S(Γ)`. Prove: (a) if `α ∈ MulAut Γ` and
`φ ∈ MulAut S` satisfy `α(s • g) = φ(s) • α(g)`, equivalently `α` and `φ` come from an automorphism
of `Γ ⋊ S` preserving `inl(Γ)` and `inr(S)`, then `α(C) = C` and `(θ ∘ α⁻¹)* = θ* ∘ α⁻¹`; (b) for
`j` coprime to `|Γ|`, `(θ^{(j)})* = (θ*)^{(j)}`; (c) `ℚ(θ*) = ℚ(θ)` as subfields of `ℂ`;
(d) `[θ|_C, θ*] ≠ 0` (glauberman line 636, Theorem 5 (a)–(d)). Route: (a) from §4.4 after
reducing to a faithful action and taking `B` generated by `S` and `α` in `MulAut Γ`; (b) for prime
order from §3.2 with `j' ≡ j (mod |Γ|)`, `j' ≡ 1 (mod |S|)`, then by the compatibility law;
(c) from (b) and the Galois correspondence in `ℚ(ζ_{|Γ|})`; (d) from §4.5 for prime order and the
compatibility law. *Needs:* §§2.3, 3.2, 4.4, 4.5; Tau Ceti
`IsPrimitiveRoot.cyclotomicIrreducibleCharacterAction_apply`, `FDRep.characterField`;
CharacterTheory §4.4.

**Checks.**
- (a) for `C₂` swapping `C₃ × C₃` and `α` the inversion of `Γ`, which commutes with the swap:
  `α|_C` is the inversion and `(ψ_{−a} × ψ_{−a})* = ψ_{−2a} = ψ_{2a} ∘ α⁻¹`.
- (b) on the same example with `j = 2`: `(ψ_{2a} × ψ_{2a})* = ψ_{4a} = ψ_a = (ψ_{2a})^{(2)}`.
- (c) and (d) for `SL(2,3)`: `ℚ(χ₂) = ℚ = ℚ(sgn)` and `[χ₂|_C, sgn] = 2 ≠ 0`.

### Examples

For `SL(2,3)` the correspondence is `1 ↦ 1`, `χ₂ ↦ sgn`; for the swap action on `C₃ × C₃` it is
`ψ_a × ψ_a ↦ ψ_{2a}`; for the extraspecial group `3^{1+2}_+` with the involution of §4.2 it sends
the two faithful three-dimensional characters to the two nontrivial linear characters of
`Z(Γ)` with the same central character.

### Dependencies

Layers 1–3; Mathlib quotient actions on fixed points; Tau Ceti Galois action and fields of values;
CharacterTheory §4.4.

## Layer 5: degree relations

### 5.1 The degree bound

For `S` solvable and coprime to `Γ` and `θ ∈ Irr_S(Γ)`, prove `θ(1) ∣ |Γ : C| θ*(1)`
(glauberman line 644, Theorem 5 (e)). Route: by the compatibility law and multiplicativity of
indices it suffices to treat `S = A` of prime order; there
`[Γ ⋊ A : C_{Γ ⋊ A}(a)] χ̂(a)/χ̂(1)` is an algebraic integer (central-character integrality),
`C_{Γ ⋊ A}(a) = A × C` (§3.1), `χ̂(1) = θ(1)` and `χ̂(a) = ±θ*(1)` (§3.2), so
`|Γ : C| θ*(1)/θ(1)` is a rational algebraic integer. *Needs:* §§3.1, 3.2, 4.5; Tau Ceti
`TauCeti.Representation.isIntegral_centralCharacter_classSumCenter`,
`TauCeti.Representation.centralCharacter_classSumCenter_mul_character_one`; CharacterTheory §4.3.

**Checks.**
- `SL(2,3)`: `2 ∣ 4 · 1`.
- The extraspecial example: `3 ∣ 9 · 1`; trivial action: `θ(1) ∣ 1 · θ(1)`.
- The reverse divisibility fails: for `θ = 1` and `C ≠ Γ`, `|Γ : C| · 1 ∤ 1`.

### 5.2 Glauberman degree-divisibility

Define **Glauberman degree-divisibility** (for a universe of groups) as the proposition: for every
finite `Γ`, every finite solvable `S` acting coprimely and every `θ ∈ Irr_S(Γ)`,
`θ*(1) ∣ θ(1)` (geck line 29; hartley-turull line 84, Theorem A). Prove that it is equivalent to
its case of `S` of prime order, where `θ*` is the constituent of `θ|_C` of multiplicity prime to
`|S|` (hartley-turull line 91 for the reduction), by the compatibility law and transitivity of
divisibility. Prove that `θ* = θ|_C` whenever `θ|_C` is irreducible, by §4.6 (d); in particular
for abelian `Γ` and for the trivial action, so the divisibility holds in these cases. The proposition holds for all finite groups by Hartley and Turull's reduction completed by
Geck (geck line 34): this is cited and not planned, since it rests on the classification and on
Lusztig's theory. *Needs:* §§4.5, 4.6.

- If the proposition holds, `θ*(1) ∣ θ(1) ∣ |Γ : C| θ*(1)` for every `θ ∈ Irr_S(Γ)` (§5.1).

**Checks.**
- `SL(2,3)`: `χ₂*(1) = 1 ∣ 2`; the extraspecial example: `1 ∣ 3`.
- Abelian `Γ`: every `θ` is linear and `θ* = θ|_C`, `1 ∣ 1`.
- The variant `θ(1) ∣ θ*(1)` is false: `2 ∤ 1` for `SL(2,3)`.

### Examples

For `S` of prime order `p` and `θ|_C = ε θ* + p Δ` (§4.5), `θ(1) ≡ ε θ*(1) (mod p)`; for `SL(2,3)`,
`2 ≡ −1 (mod 3)`.

### Dependencies

Layers 3–4; Tau Ceti central characters; CharacterTheory §4.3.

## Layer 6: heights

### 6.1 Central characters of blocks, Osima's formula and defect classes

Let `(K, O, k)` be a splitting `p`-modular system for `G` and `B` a block. Prove:

- for `χ ∈ Irr(B)` and every class `𝒞`, `ω_χ(𝒞⁺) ∈ O` and `λ_B(𝒞⁺) = ω_χ(𝒞⁺) mod m`, `λ_B` being the
  unique `k`-algebra homomorphism `Z(k[G]) → k` with `λ_B(e_B) = 1` (martinez line 351 and
  line 373; sambale Chapter 1);
- Osima's formula: for a union `A` of connected components of the Brauer graph (`χ` linked to
  `ψ` when `d_{χφ} ≠ 0 ≠ d_{ψφ}` for some `φ`), `g` `p`-regular and `x ∈ G`,
  `Σ_{χ ∈ A} χ(g) χ(x) = Σ_{φ ∈ IBr(A)} φ(g) Φ_φ(x)` (martinez line 414, Proposition 2.3);
  hence the coefficients `|G|⁻¹ Σ_{χ ∈ A} χ(1) χ(x⁻¹)` of `f_A = Σ_{χ ∈ A} e_χ` lie in `O` and
  vanish for `p`-singular `x` (martinez line 512, Proposition 2.5), and `Irr(B)` is a single
  connected component (martinez line 566, Corollary 2.7);
- a **defect class** of `B` is a class `𝒞` with `a_B(𝒞) λ_B(𝒞⁺) ≠ 0`; a defect class exists, since
  `λ_B(e_B) = 1`, and its elements are `p`-regular (martinez line 699 and line 760).

The base §6.2 identifies the defect groups of `B` with the Sylow `p`-subgroups of `C_G(x)`, `x` in
a defect class. *Needs:* base §§1.1, 1.3, 2.3, 2.4, 3.1, 4.1, 4.2, 6.2, 7.1; CharacterTheory §4.3;
Tau Ceti `TauCeti.Representation.isIntegral_centralCharacter_classSumCenter`.

**Checks.**
- `S₃`, `p = 2`, `B₀` with `e_{B₀} = 1 + r + r²`: the coefficient of `{1}` is
  `(1 + 1)/6 = 1/3 ≡ 1`, of the `3`-cycles `(1 + 1)/6 ≡ 1`, of the transpositions
  `(1 − 1)/6 = 0`; `{1}` is a defect class (`λ = 1`) with Sylow `2`-subgroup of `C_G(1)` of order
  `2`, while the `3`-cycles have `λ_{B₀} = 2 ≡ 0`.
- The defect-zero block `r + r²`: coefficients `2 · 2/6 ≡ 0` at `1` and `2 · (−1)/6 ≡ 1` at the
  `3`-cycles; the class of `r` is a defect class (`λ = 2 · (−1)/2 = −1 ≠ 0`) with `C_G(r) = C₃`,
  Sylow `2`-subgroup trivial.
- Osima at `x = r` for `B₀`: `IBr(B₀) = {1}`, `Φ₁ = 1 + sgn`, and `2/6 · 1 = 1/3` agrees with the
  coefficient. The set `{1}` is not a union of components (`1` and `sgn` share the Brauer
  character `1`), and `f_{{1}} = (1/6) Σ_g g` has the coefficient `1/6 ∉ ℤ₂`.

### 6.2 Brauer's theorem on heights

Let `B` be a block of `G` with defect group `D`, `|G|_p = p^a`, `|D| = p^d`. Prove that
`p^{a−d} ∣ χ(1)` for every `χ ∈ Irr(B)` and that some `χ ∈ Irr(B)` has `ν(χ(1)) = a − d`
(martinez line 728, Theorem 3.4, proof lines 783–831; mnst line 51; navarro-1998, Chapter 3;
feit, Chapter IV). Route: for a defect class `𝒞 = Cl(x)`,
`ν(|𝒞|) = a − d`; `λ_B(𝒞⁺) ≠ 0` makes `ω_χ(𝒞⁺) = |𝒞| χ(x)/χ(1)` a unit, so `|𝒞|/χ(1) ∉ m` and
`ν(|𝒞|) ≤ ν(χ(1))`; `a_B(𝒞) ≠ 0` and Osima's formula with `Φ_φ(1)/|G| ∈ O` give `φ(x⁻¹)` a unit for
some `φ ∈ IBr(B)`, hence `χ(x⁻¹)` a unit for some `χ ∈ Irr(B)` (every Brauer character of `B` is
a `ℤ`-combination of the `χ⁰`, `χ ∈ Irr(B)`, by base §2.4 and block-diagonality), and integrality
of `ω_χ(𝒞⁺_{x⁻¹})` gives `ν(χ(1)) ≤ ν(|𝒞|)`. *Needs:* §6.1; base §§2.2, 2.4, 3.1, 4.2, 6.2.

**Checks.**
- `S₃`, `p = 2`: `B₀` has `a = d = 1` and degrees `1, 1`; the defect-zero block has `d = 0` and
  `2 ∣ 2`.
- `SL(2,3)`, `p = 3`: the block `{χ₂, χ₂ ω, χ₂ ω²}` has `a = d = 1` and `ν₃(2) = 0`; the
  defect-zero block `{χ₃}` has `3 ∣ 3`.
- `A₅`, `p = 2`: `B₀` has `D = V₄`, `a = d = 2`, degrees `1, 3, 3, 5`; the block `{χ₄}` has
  defect zero and `4 ∣ 4`. The model `p^a ∣ χ(1)` fails on `B₀`.

### 6.3 Heights, defects and height zero characters

Define, for `χ ∈ Irr(B)`, the height `h(χ) = ν(χ(1)) − (a − d)` and the defect
`d(χ) = a − ν(χ(1))`, both natural numbers (by §6.2 and `χ(1) ∣ |G|`), and the set
`Irr₀(B) = {χ ∈ Irr(B) : h(χ) = 0}` (martinez line 718, §3.2; reynolds line 60). Prove: `h` and
`Irr₀(B)` do not depend on the choice of the defect group; `Irr₀(B) ≠ ∅`;
`h(χ) = 0 ⟺ d(χ) = d ⟺ ν(χ(1)) = a − d`; `d = max_{χ ∈ Irr(B)} d(χ)` (the numerical defect of
martinez line 719). *Needs:* §6.2; base `isDefectGroup_conj`; Mathlib `padicValNat`;
Tau Ceti `TauCeti.Representation.finrank_dvd_card`.

- `h(χ) + d(χ) = d`.
- Heights are invariant under group isomorphisms and under conjugation of characters.
- Heights do not depend on the splitting `p`-modular system (base §2.4).

**Checks.**
- `SL(2,3)`, `p = 2`, a single block with `D = Q₈`: degrees `1, 1, 1, 2, 2, 2, 3` have heights
  `0, 0, 0, 1, 1, 1, 0`, and `|Irr₀(B)| = 4`.
- `D₈`, `p = 2`: heights `0, 0, 0, 0, 1`; the trivial group: one block, height `0`.
- The natural-number subtractions never truncate: `ν(χ(1)) ≥ a − d` by §6.2 and `ν(χ(1)) ≤ a`
  by `χ(1) ∣ |G|`; for `S₃`, `p = 2`, `std` has `ν = 1 = a`, `d(std) = 0`.

### 6.4 Heights in special blocks

Prove: `Irr₀(B₀(G))` is the set of characters of the principal block of degree prime to `p`,
since its defect groups are the Sylow `p`-subgroups (base
`isDefectGroup_iff_sylow_of_augmentation_ne_zero`); a block of defect zero has
`Irr(B) = {χ} = Irr₀(B)` with `χ(1)_p = |G|_p`, and a block containing a character `χ` with
`χ(1)_p = |G|_p` has defect zero (base §6.2); for the Brauer correspondent `b'` of `B` in
`N_G(D)` (base `brauer_first_main`), `D` is a defect group of `b'` and
`Irr₀(b') = {ψ ∈ Irr(b') : ψ(1)_p = |N_G(D) : D|_p}` (martinez line 718, §3.2; martinez line 583,
Theorem 2.8, for defect zero). *Needs:* §6.3; base §§4.3, 6.2, 7.1.

**Checks.**
- `S₃`, `p = 2`: `Irr₀(B₀) = {1, sgn}`, both of odd degree.
- `A₅`, `p = 2`: `Irr₀(B₀)` has four members (degrees `1, 3, 3, 5`); in `N_G(V₄) = A₄`, whose
  single `2`-block is the Brauer correspondent, all four characters (degrees `1, 1, 1, 3`) have
  height zero.
- `SL(2,3)`, `p = 3`: the non-principal block of defect `1` has Brauer correspondent a block of
  `N_G(C₃) = C₆` with three height zero characters.

### Examples

`SL(2,3)` at `p = 2`: one block, defect group `Q₈`, `Irr₀` the four characters of odd degree.
At `p = 3`: blocks `{1, ω, ω²}` (principal), `{χ₂, χ₂ ω, χ₂ ω²}` (defect group `C₃`) and `{χ₃}`
(defect zero).

### Dependencies

Base §§1.3, 2.2, 2.4, 3.1, 4.2–4.3, 6.2, 7.1; CharacterTheory §4.3; Tau Ceti central characters
and degrees.

## Layer 7: blocks and normal subgroups

### 7.1 The Min–Max theorem and defect groups of induced blocks

Let `B` be a block of `G` with defect group `D_B`, `x ∈ G` and `D_x` a Sylow `p`-subgroup of
`C_G(x)`. Prove: if `λ_B(𝒞⁺_x) ≠ 0` then `D_B` is contained in a conjugate of `D_x`; if
`a_B(Cl(x)) ≠ 0` then `D_x` is contained in a conjugate of `D_B` (martinez line 710, Theorem 3.3).
For `H ≤ G` and a block `b` of `H` with `b^G` defined, prove that every defect group of `b` is
contained in a defect group of `b^G` (martinez line 984, Lemma 4.4). Route: the second statement
because `Br_{D_x}(e_B)` contains the contribution of `𝒞⁺_x`, nonzero on `x ∈ C_G(D_x)` with
supports of distinct classes disjoint; the first because
`𝒞⁺_x = |C_G(x) : D_x|⁻¹ Tr_{D_x}^G(x)` lies in the ideal `Tr_{D_x}^G(k[G]^{D_x}) ∩ Z(k[G])`, and in
the local algebra `Z(k[G]) e_B` the element `𝒞⁺_x e_B` is a unit, so `e_B` lies in that ideal and
the minimality characterisation of base §6.2 applies; the induced statement from the first
applied in `H` to a class `ℒ ⊆ 𝒞 ∩ H` with `λ_b(ℒ⁺) ≠ 0`, `𝒞` a defect class of `b^G`. *Needs:*
§6.1; base §§6.1, 6.2, 7.1.

**Checks.**
- `S₃`, `p = 2`, `B₀`: at a transposition `λ_{B₀} = 3 ≡ 1` and `D_t = ⟨t⟩` contains a conjugate of
  `D_{B₀}`; at a `3`-cycle `a_{B₀} = 1` and `D_r = 1 ≤ D_{B₀}`.
- `S₃`, `p = 3`, the single block: at a transposition `λ = 3 ≡ 0` (else `C₃` would lie in
  `D_t = 1`); at a `3`-cycle `λ = 2 ≢ 0` and `D_r = C₃ = D_B`.
- `G = 1`: one class, `D_B = D_1 = 1`.

### 7.2 Covering through central characters

Let `N ⊴ G`. Prove: `χ ∈ Irr(G)` lies over `θ ∈ Irr(N)` exactly when `ω_χ(𝒞⁺) = ω_θ(𝒞⁺)` for every
`G`-class `𝒞 ⊆ N` (martinez line 1652, Proposition 7.6); a block `B` of `G` covers a block `b` of
`N` exactly when `λ_B(𝒞⁺) = λ_b(𝒞⁺)` for every `G`-class `𝒞 ⊆ N` (martinez line 1790,
Proposition 7.11); `Σ_{B covers b} e_B = Σ_{b'} e_{b'}`, `b'` running over the `G`-conjugates of
`b` (martinez line 1642); the blocks of `N` covered by `B` form one `G`-orbit (martinez line 1760,
Corollary 7.8); if `B` covers `b`, every `θ ∈ Irr(b)` lies under some `χ ∈ Irr(B)` and every
`φ ∈ IBr(b)` under some member of `IBr(B)` (martinez line 1763, Proposition 7.9); and if `b^G` is
defined it covers `b` (martinez line 1976, Lemma 8.6). Route: for the first, Clifford's theorem
in character form over `ℂ`, where `Irr(G)` is read (Conventions), so that the unit and
algebraic-closure hypotheses of Tau Ceti `TauCeti.clifford_restrict_character` hold; it gives
`ω_χ = ω_ξ` on the `G`-class sums in `N` for every `ξ` under `χ`, and
`ω_ψ(e_η) = δ_{ψη}` on the orbit idempotent `Σ_i e_{θ_i}` (`θ_i` the `G`-conjugates of `θ`), a
combination of `G`-class sums in `N`, so that `ω_ξ = ω_θ` there only for `ξ` conjugate to `θ`;
for the third, the sum of the `e_{b'}` over the `G`-orbit of `b` is a `G`-invariant idempotent of
`Z(O[N])`, hence central in `O[G]` and the sum of the block idempotents of `G` below it (base
§0.2), which are those of the blocks covering `b` (base §8.2); for the second, in one direction
the first applied to some `χ ∈ Irr(B)` over some `θ ∈ Irr(b)` (base §8.2) with
`λ_B(𝒞⁺) = ω_χ(𝒞⁺) mod m` (§6.1), and in the other the third: `Σ_{B' covers b} e_{B'}` is a
combination of `G`-class sums in `N`, on which `λ_B` agrees with `λ_b`, and `λ_b` is `1` on it, so
`B` is one of the `B'`; for the fourth, the third and the orthogonality of the idempotent sums of
two distinct orbits, which therefore share no `e_B`; for the fifth, connectivity of `Irr(b)` in
the Brauer graph (§6.1), the decomposition of `χ⁰` (base §2.4), Frobenius reciprocity for ordinary
characters (InductionRestriction Layer 2), and, for the modular step that a simple `k[G]`-module
`W` with a simple `k[N]`-module `V` among the composition factors of `Res_N W` is a quotient of
`Ind_N^G V`, two statements that hold over every field, in particular over the residue field `k`,
which need not be algebraically closed (it is `𝔽₄` for `S₃` at `p = 2`, base §1.1): the restriction of a simple module to a normal subgroup is semisimple (Tau Ceti
`TauCeti.Representation.isSemisimpleRepresentation_comp_subtype`), so `V` is a submodule of
`Res_N W`, and induction is left adjoint to restriction (Mathlib `Rep.indResAdjunction`), so
`Hom_G(Ind_N^G V, W) ≅ Hom_N(V, Res_N W) ≠ 0`; base §2.1 identifies the Brauer character of
`Ind_N^G V` with `φ^G`; for the sixth, the second and `λ_{b^G}(𝒞⁺) = λ_b((𝒞 ∩ N)⁺) = λ_b(𝒞⁺)` for a
`G`-class `𝒞 ⊆ N`, which is the definition of `b^G` (base §7.1). *Needs:* §6.1; base §§0.2, 2.1,
2.4, 3.1, 4.2, 7.1, 8.2; InductionRestriction Layers 2 and 5; Tau Ceti
`TauCeti.clifford_restrict_character`, `TauCeti.Representation.isSemisimpleRepresentation_comp_subtype`;
Mathlib `Rep.indResAdjunction`.

**Checks.**
- `S₃`, `N = C₃`, `p = 2`: `B₀` covers `{1_N}` and the defect-zero block covers both `{λ}` and
  `{λ̄}`, one orbit; on the class `{r, r²}`, `ω_std = 2 · (−1)/2 = −1 = λ(r) + λ(r²) = ω_λ`.
- `S₃`, `N = C₃`, `p = 3`: one block on each side, and it covers.
- `N = 1`: every block covers the unique block of `1`; `N = G`: `B` covers `b` exactly when
  `B = b`.
- The modular step needs no invertibility of `|N|`: `S₄`, `N = A₄`, `p = 2`, `k ⊇ 𝔽₄`. The
  two-dimensional simple `k[S₄]`-module `W`, inflated from `S₃`, restricts to `λ ⊕ λ̄` with `λ`
  inflated from `A₄/V₄ ≅ C₃`, a semisimple restriction although `2` divides `|A₄|`; the adjunction
  gives a nonzero map `Ind_{A₄}^{S₄} λ → W`, onto as `W` is simple, hence an isomorphism (both of
  dimension `2`), with Brauer character `2, −1` on the classes of `1` and of a `3`-cycle. So
  `λ, λ̄ ∈ IBr(A₄)` lie under `W`, as the fifth statement requires for the single `2`-blocks of
  `A₄` and `S₄`, while a supplier assuming `|G|` invertible in `k` (`24 = 0` in `k`) does not
  apply.

### 7.3 Defect groups under domination

For `N ⊴ G`, a block `B̄` of `G/N` dominated by a block `B` of `G` (base §8.1), and a defect group
`D` of `B`, prove that some defect group of `B̄` is contained in `D N/N` (martinez line 1928,
Theorem 8.5 (i)). Route: `e_B ∈ Tr_D^G(k[G]^D)` (base §6.2), and the quotient map sends
`Tr_D^G(a)` to `|N : N ∩ D| · Tr_{DN/N}^{G/N}(ā)`, `ā` being `DN/N`-invariant; the image of `e_B`
contains `e_{B̄}` (base §8.1), so it is nonzero, the factor `|N : N ∩ D|` is a unit, and
`e_{B̄} = e_{B̄} · ē_B` lies in the ideal `Tr_{DN/N}^{G/N}(k[G/N]^{DN/N})`; the minimality
characterisation of base §6.2 in `G/N` applies. *Needs:* base §§6.1, 6.2, 8.1.

**Checks.**
- `S₃`, `N = C₃`, `p = 2`: `B₀` dominates the block of `C₂`, with `D N/N = C₂`.
- `S₃`, `N = C₃`, `p = 3`: the block with `D = C₃` dominates both blocks of `C₂`, of defect zero,
  inside `C₃ N/N = 1`.
- `N = 1`: `B̄ = B`.

### 7.4 The Fong–Reynolds correspondence

Let `N ⊴ G`, `b` a block of `N` and `T` its stabiliser in `G`. Prove: `B ↦ B^G` is a bijection
from the blocks of `T` covering `b` to the blocks of `G` covering `b`; `ψ ↦ ψ^G` is a bijection
`Irr(B) → Irr(B^G)` and `IBr(B) → IBr(B^G)`, preserving decomposition numbers; every defect group
of `B` is a defect group of `B^G`; and `h(ψ^G) = h(ψ)` for `ψ ∈ Irr(B)` (martinez line 1823,
Theorem 7.12; reynolds line 133, Theorem 1; sambale Chapter 1, Theorem 1.19). Route: with
`f = Σ_{g ∈ G/T} e_b^g`, the idempotents `e_b^g` are orthogonal and `e_b k[G] e_b = k[T] e_b`, so
`k[G] f` is a matrix algebra over `k[T] e_b` and the centres correspond; the corresponding blocks
are `B` and `B^G` because `ψ^G` is irreducible for `ψ` over `θ ∈ Irr(b)` (`G_θ ≤ T`, Clifford) and
`ω_{ψ^G}(𝒞⁺) = Σ ω_ψ(ℒ⁺)` over the `T`-classes `ℒ ⊆ 𝒞` (reynolds line 149, Theorem 2); induction
from `T` to `G` gives the correspondence of simple modules and of lattices; the defect groups by
§7.1 and the degree count `min ν(ψ^G(1)) = ν(|G : T|) + min ν(ψ(1))` with §6.2; heights by the same
count. *Needs:* §§6.2, 6.3, 7.1, 7.2; base §§0.2, 1.2, 2.1, 7.1, 8.2; Tau Ceti
`FDRep.cliffordCorrespondence`.

- `B^G` is defined for `B` covering `b`, and covers `b`.
- The correspondence is natural for conjugation by `G`.

**Checks.**
- `S₃`, `N = C₃`, `p = 2`, `b = {λ}`: `T = C₃`, the block `{λ}` of `T` induces to `{std}`, and
  `h(λ) = 0 − (0 − 0) = 0 = 1 − (1 − 0) = h(std)`.
- `T = G` (b invariant): the correspondence is the identity.
- `S₄`, `N = V₄`, `p = 3`, `b = {λ}` with `ker λ = ⟨(13)(24)⟩`: `T` is the dihedral group of
  order `8` containing `V₄`, `λ` has two linear extensions to `T`, each a block of defect zero,
  and they induce to the two irreducible characters of degree `3` of `S₄`, each of defect zero;
  the heights are `0` on both sides.

### 7.5 Regular blocks and Fong's theorem

Call a block `B` of `G` regular with respect to `N ⊴ G` when `λ_B(𝒞⁺) = 0` for every class
`𝒞 ⊄ N` (martinez line 2264). Prove: for `B` covering `b`, `B` is regular exactly when `b^G` is
defined and equals `B` (martinez line 2267, Proposition 9.3); a block with defect group `D` and
`C_G(D) ≤ N` is regular (martinez line 2279, Proposition 9.4); for a normal `p`-subgroup `Q` and a
block `b` of `Q C_G(Q)`, `b^G` is the unique block covering `b` (martinez line 2288,
Corollary 9.5); and Fong's theorem: for a `G`-invariant block `b` of `N` and a block `B` covering
`b` of maximal defect among those covering `b`, with defect group `P`, `p ∤ |G : P N|` and
`P ∩ N` is a defect group of `b` (martinez line 2161, Proposition 9.1, and line 2222,
Theorem 9.2). *Needs:* §§7.1, 7.2; base §§6.2, 7.1.

- Regularity depends only on `λ_B`, not on blocks of `N`.

**Checks.**
- `S₃`, `N = C₃`, `p = 2`: `B₀` has `λ_{B₀}(𝒞⁺_t) = 3 ≡ 1 ≠ 0` at the transpositions, so it is not
  regular with respect to `C₃`; the defect-zero block has `λ = 0` there and is regular, equal to
  `{λ}^G`.
- `Q = O_p(G)` with `Q C_G(Q) = G`: `b^G = b`.
- `S₃`, `p = 3`, `N = C₃`, `b` the block of `N`: the covering block has defect group `P = C₃`,
  `|G : P N| = 2` is prime to `3`, and `P ∩ N = C₃` is the defect group of `b`.

### 7.6 The extended first main theorem

Let `P` be a `p`-subgroup of `G`. Prove: for a block `B` with defect group `P`, the blocks `b` of
`P C_G(P)` with `b^G = B` form one `N_G(P)`-orbit, all have defect group `P`, and `b^{N_G(P)}` is
the Brauer correspondent of `B` (martinez line 1985, Theorem 8.8); and for a block `b` of
`P C_G(P)` with defect group `P` and stabiliser `N_G(P, b)` in `N_G(P)`, `b^G` has defect group `P`
exactly when `p ∤ |N_G(P, b) : P C_G(P)|` (martinez line 2295, Theorem 9.6; sambale Chapter 1,
Theorem 1.18). *Needs:* §§7.1, 7.2, 7.4, 7.5; base §§6.2, 7.1.

- The blocks of `G` with defect group `P` correspond to the `N_G(P)`-orbits of blocks of `P C_G(P)`
  with defect group `P` and inertial index prime to `p`.

**Checks.**
- `S₃`, `p = 2`, `P = ⟨t⟩`: `P C_G(P) = P`, inertial index `1`, and `b^G = B₀`.
- `S₃`, `p = 3`, `P = C₃`: `N_G(P) = S₃` stabilises the block of `C₃`, inertial index `2`, prime
  to `3`.
- The index condition is needed: `S₄`, `p = 2`, `P = V₄`: `P C_G(P) = V₄`, the block of `V₄` has
  stabiliser `S₄` and index `6`, divisible by `2`, and indeed the unique `2`-block of `S₄` has
  defect group `D₈`, not `V₄`.

### Examples

`S₃` at `p = 2` with `N = C₃`: the Fong–Reynolds correspondence for `b = {λ}` sends the block
`{λ}` of `C₃` to the defect-zero block `{std}` of `S₃`; for `b = {1}`, `T = S₃` and the
correspondence is the identity on `B₀`.

### Dependencies

Layer 6; base §§0.2, 1.2, 2.1, 2.4, 3.1, 4.2, 6.1–6.2, 7.1, 8.1–8.2; InductionRestriction
Layers 2 and 5; Tau Ceti Clifford theory; Mathlib `Rep.indResAdjunction`.

## Layer 8: blocks with a normal defect group

### 8.1 Vanishing off the defect groups

For `χ ∈ Irr(B)` and `g ∈ G` whose `p`-part lies in no defect group of `B`, prove `χ(g) = 0`
(martinez line 2011, Theorem 8.10; navarro-1998, Theorem 5.9). Route: write
`χ(u v) = Σ_φ d^u_{χφ} φ(v)` with `u` the `p`-part; a nonzero `d^u_{χφ}`, `φ ∈ IBr(b)`, makes
`(⟨u⟩, b)` a `B`-Brauer pair by the second main theorem, contained in a maximal one whose first
component is a defect group. *Needs:* base §§5.1, 6.3, 7.2.

**Checks.**
- `S₃`, `p = 2`, the defect-zero block: `std(t) = 0` at a transposition.
- `SL(2,3)`, `p = 3`, the defect-zero `χ₃`: `χ₃` vanishes at the elements of order `3` and `6`.
- `B₀` of a group with Sylow subgroup `D`: every `p`-part lies in a conjugate of `D`, and no
  vanishing is forced.

### 8.2 Blocks of `P C_G(P)` with defect group `P`

Let `P` be a `p`-subgroup with `G = P C_G(P)` and `B` a block with defect group `P`. Prove: there is
a unique `θ ∈ Irr(B)` with `P ≤ ker θ`, and `ν(θ(1)) = ν(|G : P|)`; `IBr(B) = {θ⁰}`; for
`ξ ∈ Irr(P)` the function `θ_ξ`, equal to `θ(g_{p'}) ξ(g_p)` when the `p`-part `g_p` lies in `P`
and to `0` otherwise, is in `Irr(B)`, and `ξ ↦ θ_ξ` is a bijection `Irr(P) → Irr(B)` with
`θ_ξ(1) = θ(1) ξ(1)`; hence `h(θ_ξ) = ν(ξ(1))` and the set of heights of `B` is
`{ν(ξ(1)) : ξ ∈ Irr(P)}` (martinez line 2018, Theorem 8.11, and line 2131, Corollary 8.12;
reynolds line 509, Theorem 7). Route: every block of `G/P` dominated by `B` has defect zero
(§7.3); two such blocks coincide, since their central characters vanish on `p`-singular classes
(a character of defect zero is the projective character `Φ_{χ⁰}` of base §3.1, which vanishes on
`p`-singular elements) and agree on `p`-regular ones, a `p`-regular class of `G` meeting `x P`
only in `x` because `p`-regular elements centralise `P`; so `θ` is unique and `IBr(B) = {θ⁰}` by domination. For
`χ ∈ Irr(B)`, `χ|_P = e ξ` (`G` acts on `Irr(P)` through inner automorphisms of `P`),
`χ(g) = d_{χθ⁰} ξ(1)⁻¹ θ(g_{p'}) ξ(g_p)` by §8.1 and the direct product `⟨g_{p'}⟩ × P`, and
`[χ, χ] = 1` gives `d_{χθ⁰} = ξ(1)`; surjectivity because `Φ_{θ⁰} = Σ_{χ ∈ Irr(B)} ξ_χ(1) χ`
vanishes on `P ∖ 1`, so `Σ_χ ξ_χ(1) ξ_χ` is a multiple of the regular character of `P`
(reynolds line 201). *Needs:* §§6.3, 7.3, 8.1; base §§3.1, 4.2, 6.2, 8.1.

- The canonical character `θ` is determined by `B`.
- `θ` regarded as a character of `G/P` has defect zero.

**Checks.**
- `G = P = D₈`, `p = 2`: `θ = 1`, `Irr(B) = Irr(D₈)`, heights `{0, 1}`.
- `G = C₂ × C₃`, `p = 2`, `P = C₂`: three blocks `B_ψ`, `ψ ∈ Irr(C₃)`, with `θ = 1 × ψ` and
  `Irr(B_ψ) = {ξ × ψ}`, heights `0`.
- `P = 1`: `G = C_G(1)`, `B` has defect zero, and `θ_1 = θ` is its only character.
- `SL(2,3)` at `p = 2` is not of this form: `C_G(Q₈) = Z(Q₈) ≤ Q₈ ≠ G`.

### 8.3 Heights of blocks with a normal defect group

Let `D ⊴ G` be a defect group of `B`, `N = D C_G(D)`, `b` a block of `N` with `b^G = B` (§7.6) and
`T` its stabiliser, so that `p ∤ |T : N|` (§7.6) and `N = D C_N(D)` (§8.2 applies to `b`). Prove:
for `χ ∈ Irr(B)` lying over `θ_ξ ∈ Irr(b)`, `ξ ∈ Irr(D)`, `h(χ) ≥ ν(ξ(1))`, and every `θ_ξ` lies under
some `χ ∈ Irr(B)` (§7.2). Route: `χ = ψ^G` with `ψ ∈ Irr(T | θ_ξ)` (Clifford, `G_{θ_ξ} ≤ T`),
`θ_ξ(1) ∣ ψ(1)`, `ν(|G : D|) = ν(|G : T|) + ν(|N : D|)`. Prove further Reynolds' height formula:
`h(χ) = ν(ξ(1))` for every irreducible constituent `ξ` of `χ|_D`, so the set of heights of `B` is
`{ν(ξ(1)) : ξ ∈ Irr(D)}` (reynolds line 531, Theorem 8; martinez line 2131), using
gap:clifford-multiplicity-dvd-index (applied to `N ⊴ T`) to make `ψ(1)/θ_ξ(1)` prime to `p`.
*Needs:* §§6.3, 7.2, 7.6, 8.2; Tau Ceti `FDRep.cliffordCorrespondence`,
`FDRep.clifford_restrict_dvd_finrank`; gap:clifford-multiplicity-dvd-index (InductionRestriction
Layer 7) for the height formula.

**Checks.**
- `SL(2,3)`, `p = 2`, `D = Q₈`: heights `{0, 1} = {ν(1), ν(2)}`; the three-dimensional character
  restricts to the three nontrivial linear characters of `Q₈` (height `0`), the two-dimensional
  ones to `χ₂` (height `1`).
- `A₄`, `p = 2`, `D = V₄` abelian: heights `{0}`.
- `G = D × H` with `H` a `p'`-group: `B = Irr(D) × {ψ}` and `h(ξ × ψ) = ν(ξ(1))`.

### 8.4 Reynolds' theorem

Let `B` be a block of `G` with a normal defect group `D`. Prove that `Irr(B) = Irr₀(B)` exactly when
`D` is abelian (reynolds line 542, Theorem 9, a corollary of Theorem 8; martinez line 2328,
Theorem 9.8). Route: both directions come from §8.3. If all heights vanish, the bound
`h(χ) ≥ ν(ξ(1))` and the fact that every `θ_ξ` lies under some `χ ∈ Irr(B)` give `ν(ξ(1)) = 0` for
every `ξ ∈ Irr(D)`; since `ξ(1)` divides the `p`-power `|D|`, every `ξ` is linear, so `D` has
`|D|` irreducible characters, hence `|D|` conjugacy classes, and is abelian. If `D` is abelian, it
has `|D|` classes, so `|D|` irreducible characters whose squared degrees sum to `|D|`; every
`ξ ∈ Irr(D)` is linear and the height formula of §8.3 gives `h(χ) = ν(ξ(1)) = 0` for every
`χ ∈ Irr(B)`. *Needs:* §§6.3, 8.3; Tau Ceti `TauCeti.card_irreducibleCharacters`,
`TauCeti.Representation.finrank_dvd_card`; CharacterTheory §2.1 (the sum of the squares of the
degrees is `|D|`).

**Checks.**
- Blocks of defect zero (`D = 1`): `Irr(B) = {χ} = Irr₀(B)`.
- `G` a `p`-group: one block, `D = G`, and `Irr(G) = Irr₀(G)` exactly when every character is
  linear, exactly when `G` is abelian; for `D₈` the character of degree `2` has height `1`.
- `G` abelian: every block has the normal abelian Sylow subgroup as defect group and all heights
  `0`; `G = D × H` with `H` a `p'`-group: all heights `0` exactly when `D` is abelian;
  `SL(2,3)` at `p = 2`: `Q₈` is nonabelian and heights `1` occur; `A₄` at `p = 2`: `V₄` is abelian
  and all heights are `0`.

### Examples

`SL(2,3)` at `p = 2`: `N = Q₈ C_G(Q₈) = Q₈`, `b` the block of `Q₈`, `T = SL(2,3)` with
`|T : N| = 3`, and the heights of the single block are `{0, 1}`.

### Dependencies

Layers 6–7; base §§3.1, 4.2, 5.1, 6.2–6.3, 7.2, 8.1; Tau Ceti Clifford theory, character counts
and degrees; CharacterTheory §2.1; gap:clifford-multiplicity-dvd-index (InductionRestriction
Layer 7).

## Layer 9: the height zero and Alperin–McKay conjectures

### 9.1 The height zero predicate

Define, for a prime `p`, **Brauer's height zero property** at `p` as the proposition: for every
finite group `G` (in a fixed universe), every splitting `p`-modular system for `G` and every block
`B` with defect group `D`, `Irr(B) = Irr₀(B)` exactly when `D` is abelian (martinez line 2321,
Conjecture 9.7; mnst line 48). Prove its instances: blocks of defect zero, blocks with a normal
defect group (§8.4), hence `p`-groups, abelian groups and groups `D × H` with `H` a `p'`-group.
Cited and not planned: the implication from abelian defect groups for every `p`
(kessar-malle line 25, Theorem 1.1), the converse for odd `p` (mnst line 70, Theorem A) and both
directions for `p = 2` (ruhstorfer line 33, Corollary B); together they give the property at every
prime (mnst line 73). *Needs:* §§6.3, 6.4, 8.4.

- The property does not depend on the splitting system chosen for each `G` (§6.3).

**Checks.**
- `S₃` at `p = 2` and `p = 3`: all defect groups are cyclic and all heights are `0`.
- `S₄` at `p = 2` (not covered by §8.4, `D₈` not normal): the character of degree `2` has height
  `1` and `D₈` is nonabelian, as the cited theorems require.
- `G = 1`: one block of defect zero.

### 9.2 The Alperin–McKay predicate

Define, for a block `B` with defect group `D` and Brauer correspondent `b'` in `N_G(D)`, the
Alperin–McKay property `|Irr₀(B)| = |Irr₀(b')|`, and the Alperin–McKay property at `p` as its
validity for every block of every finite group (ruhstorfer line 16; martinez line 2360,
Conjecture 9.9). Prove its instances: blocks of defect zero and blocks with a normal defect
group, where `N_G(D) = G` and `b' = B`. Cited and not planned: the property at `p = 2`
(ruhstorfer line 20, Theorem A). *Needs:* §§6.3, 6.4; base `brauer_first_main`.

**Checks.**
- `S₃`, `p = 2`, `B₀`: `N_G(C₂) = C₂`, and `|Irr₀(B₀)| = 2 = |Irr₀(b')|`.
- `A₅`, `p = 2`, `B₀`: `4 = 4` with `N_G(V₄) = A₄`.
- `SL(2,3)`, `p = 3`: `3 = 3` for the principal block and for the block of `χ₂`, the
  correspondents being the two blocks of `N_G(C₃) = C₆`.

### Examples

At `p = 2` the cited theorems give both properties for every finite group; at odd `p` they give
the height zero property.

### Dependencies

Layers 6 and 8; base §7.1.

## Downstream consumers

The intended consumers are roadmaps on the local–global conjectures for finite groups
(the McKay and Alperin–McKay conjectures and their inductive conditions, Dade's conjectures, the
Isaacs–Navarro refinements), stated in the vocabulary of Layers 6 and 9 and using Layer 4 as a
tool; a roadmap on blocks with cyclic defect groups; the character-theoretic local theory that
LocalFiniteGroupTheory names as motivation for a future roadmap; and a further part on the Isaacs
correspondence for groups of odd order and Turull's theory above the Glauberman correspondence.
GlaubermanZStar consumes the base only.

## References

- G. Glauberman, *Correspondences of characters for relatively prime operator groups*, Canad. J.
  Math. 20 (1968), 1465–1488: Theorem 1 (line 100), Theorem 2 (line 234), Lemmas 1–3 (lines 173,
  266, 287), Theorem 3 (line 299), Corollaries 4–6 (lines 364, 375, 454), Lemmas 4–5 (lines 481,
  524), the definition (line 503), Theorem 4 (line 537, the proof of (b) at line 562),
  Corollaries 7–9 (lines 601, 607, 623), Theorem 5 (line 636).
- B. Hartley, A. Turull, *On characters of coprime operator groups and the Glauberman character
  correspondence*, J. reine angew. Math. 451 (1994), 175–219: Theorem A (line 84), the reduction
  to prime order (line 91), Definition 3.1 (line 304), Proposition 3.2 (line 306).
- M. Geck, *Green functions and Glauberman degree-divisibility*, Ann. of Math. 192 (2020),
  229–249, arXiv 1904.04586: the statement and its completion (lines 29–36).
- B. Späth, C. Vallejo Rodríguez, *Brauer characters and coprime action*, J. Algebra 457 (2016):
  the compatibility law (lines 118–130).
- W. F. Reynolds, *Blocks and normal subgroups of finite groups*, Nagoya Math. J. 22 (1963),
  15–32: height (line 60), Theorems 1–2 (lines 133, 149), Theorem 7 (line 509), Theorems 8–9
  (lines 531, 542), and the projective-degree step in the proof of Theorem 8 (line 538).
- J. M. Martínez, *Modular representation theory of finite groups*, course notes, Firenze 2024:
  §2.1 (lines 351–566), §3.1–3.2 (lines 696–831), Lemma 4.4 (line 984), Lecture 7 (lines
  1582–1870), Theorems 8.5, 8.8, 8.10, 8.11 and Corollary 8.12 (lines 1928–2131), Lecture 9
  (lines 2161–2360).
- B. Sambale, *Blocks of Finite Groups and Their Invariants*, LNM 2127: Chapter 1 (Theorems 1.18,
  1.19 and the covering and domination conventions).
- R. Kessar, G. Malle, *Quasi-isolated blocks and Brauer's height zero conjecture*, Ann. of Math.
  178 (2013): Theorem 1.1 (line 25).
- G. Malle, G. Navarro, A. A. Schaeffer Fry, P. H. Tiep, *Brauer's height zero conjecture*,
  Ann. of Math. 200 (2024): Theorem A (line 70).
- L. Ruhstorfer, *The Alperin–McKay and Brauer's height zero conjecture for the prime 2*,
  Ann. of Math. 201 (2025): Theorem A (line 20), Corollary B (line 33).
- I. M. Isaacs, *Character Theory of Finite Groups*, 1976 (cited by locator: Theorems 3.12,
  6.32, Corollaries 6.17, 11.29, Chapter 13).
- G. Navarro, *Characters and Blocks of Finite Groups*, 1998 (cited by locator: Chapter 3,
  Theorem 5.9); *Character Theory and the McKay Conjecture*, 2018 (cited by locator: Chapter 2).
- W. Feit, *The Representation Theory of Finite Groups*, 1982 (cited by locator: Chapter IV).
- I. M. Isaacs, *Characters of solvable and symplectic groups*, Amer. J. Math. 95 (1973), named
  for the odd-order correspondence, which is outside the scope.
