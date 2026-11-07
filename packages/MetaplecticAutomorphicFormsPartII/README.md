# Roadmap: metaplectic automorphic forms, part II: finite Weil–Heisenberg representations

**Summary.** This roadmap develops the representation theory of finite Heisenberg groups and finite symplectic groups in odd characteristic that the construction of tame and classical-group types uses. It starts from the bilinear Heisenberg extension, its commutator and centre, its isometry action and the Lagrangian linear algebra of MetaplecticAutomorphicForms Layer 0 and MordellLawrenceVenkatesh Layer LV.3, specialized to a nondegenerate alternating space over a finite field; from Tau Ceti's factor-set extensions, finite-index induction and projective representations; and from Mathlib's characters of finite groups, Maschke and Schur theory and quadratic characters. It builds the Schrödinger model and its character, intertwiners between polarized models, the projective Weil action of `Sp(V)`, its linearization normalized by the parity determinant, the Weil–Heisenberg representation of `H(V) ⋊ Sp(V)` and its transport through equivariant special isomorphisms, partial-polarization (mixed) models, and the restriction of the Weil–Heisenberg representation to a parabolic subgroup. Its end theorems are the finite Stone–von Neumann theorem and its fully ramified generalization to cyclic centres of any order (Layer 1), existence and uniqueness of the normalized finite Weil representation, including for `Sp₂(𝔽₃)` (Layer 2), the corrected Gérardin parabolic induction formula with its quadratic determinant twist and the isotropic-invariants theorem for fully ramified characters (Layer 3), and the determinant character on Lagrangian fixed lines together with tensor compatibility along orthogonal sums (Layer 4).

## Scope and ownership

This roadmap owns the finite-field theory: the adapted coordinates of a finite symplectic space relative to an isotropic subspace; the finite Schrödinger representation, its character, the finite Stone–von Neumann theorem and the fully ramified theorem for a finite group with a nondegenerate commutator pairing; intertwiners between polarized finite models; the projective Weil action of a finite symplectic group, its normalization by the parity determinant, the explicit generator formulas, the Weil–Heisenberg representation and its pullback along equivariant special isomorphisms; mixed models, parabolic fixed spaces, the corrected Gérardin induction formula and isotropic induction for fully ramified characters; Lagrangian fixed lines and tensor compatibility.

It leaves to MetaplecticAutomorphicForms, Layer 0, the arbitrary bilinear Heisenberg extension over a commutative ring (§0.1), its inverse and commutator formulas (§§0.2–0.5), the centre of the half-form extension (§0.6), the extension isomorphism and isometry action (§§0.7–0.8), the quadratic change between the half-form and polarized cocycles (§§0.9–0.10) and Lagrangian complements, adapted bases and transitivity on Lagrangians over every field (§0.9a). These are stated there over a commutative ring with 2 invertible, so they apply verbatim to a finite field of odd characteristic; this roadmap only specializes them. The local and adelic theory of that roadmap (smooth and unitary Stone–von Neumann, the oscillator normalizer, the metaplectic double cover, theta correspondences) is not used here. Its §4.7 finite Weil representation is the representation of `Mp₂(ℤ)` on the group algebra of the discriminant module of an even lattice; it is a different object from the representation of `Sp(V)` for a symplectic space over a finite field built here, and stays with its owner.

Prescribed-basis extension of a Lagrangian and the dimension criterion for Lagrangians are MordellLawrenceVenkatesh, Layer LV.3, §§3.1–3.2. General symplectic bases and the even dimension of a nondegenerate alternating space are Tau Ceti's `LinearMap.BilinForm.IsAlt.exists_basis_toMatrix_eq_J` and `LinearMap.BilinForm.IsAlt.even_finrank`. The rank-one Heisenberg group over a ring with its group law, cardinality and commutator is Tau Ceti's `TauCeti.HeisenbergGroup` with `TauCeti.HeisenbergGroup.card_eq` and `TauCeti.HeisenbergGroup.commutatorElement_eq`; §1.1 records the coordinate change to it. Finite-index induction, Frobenius reciprocity, Mackey and Clifford theory and projective representations of finite groups are RepresentationTheory/InductionRestriction, Layers 0–7, and characters, Maschke, Schur and orthogonality of characters are RepresentationTheory/CharacterTheory; both are used here through the Mathlib and Tau Ceti declarations listed in the supplier contracts, together with the isometry groups of bilinear forms. No replacement carrier is introduced.

The p-adic groups, their Moy–Prasad filtration quotients, the existence of special isomorphisms equivariant for the relevant compact groups, the lifts of isotropic subspaces to subgroups and the identification of the resulting characters belong to the roadmaps that construct types; they consume the finite statements of Layers 1–4 once they have verified the hypotheses stated there.

## Conventions

- `k` is a finite field of odd characteristic `p` with `q` elements. All representations are finite-dimensional over `ℂ`. Every sum is finite.
- `ψ : k → ℂˣ` is a nontrivial additive character (`AddChar k ℂ` with `ψ ≠ 1`). It need not be injective when `k` is not a prime field; every nonzero linear functional `λ` on a `k`-space is still detected, because `z ↦ ψ(cλ(z))` is nontrivial for a suitable `c ∈ k` (Mathlib `AddChar.IsPrimitive.of_ne_one`).
- `V` is a finite-dimensional `k`-space with an alternating nondegenerate form `ω`; `dim V = 2n`. `Sp(V)` is Tau Ceti's `TauCeti.BilinForm.isometryGroup ω`, a subgroup of `V ≃ₗ[k] V` whose multiplication is composition, `(gh)v = g(hv)`.
- The Heisenberg group `H(V)` has coefficient-first coordinates `(t, v)` and law `(t, v)(s, w) = (t + s + ω(v, w)/2, v + w)`; its commutator `ghg⁻¹h⁻¹` is `(ω(v, w), 0)`. This is MetaplecticAutomorphicForms §0.1 for the form `ω/2`, the convention of Fintzen (F21 line 1320) and of Fintzen–Schwein (FS25 line 395). `Sp(V)` acts by `g·(t, v) = (t, gv)`.
- A full polarization is `V = X × X*` with `X* = Module.Dual k X` and the form `((x, y), (x′, y′)) ↦ y′(x) − y(x′)`, written `polarizationForm k X`. In coordinates `X = kⁿ`, `y(z)` is the dot product. In block form `J = (0, I; −I, 0)` sends `(x, y)` to `(y, −x)`; it is the negative of Mathlib's `Matrix.J`, so the two are never identified by name.
- The Schrödinger operator is `(π(t, x, y) f)(z) = ψ(t + y(z) + y(x)/2) f(z + x)` on `X → ℂ`. Translation by `x` is `π(0, x, 0)`, modulation by `y` is `π(0, 0, y)`.
- Parity is `(Rf)(z) = f(−z)`; `S⁺` and `S⁻` are the even and odd functions, of dimensions `(qⁿ + 1)/2` and `(qⁿ − 1)/2`.
- `χ = χ_k` is Mathlib's `quadraticChar k`, cast to `ℂ` (its values on `kˣ` are `±1`).
- Semidirect products put the normal subgroup first, as in Mathlib's `SemidirectProduct`: `H(V) ⋊ Sp(V)` with `(h, g)(h′, g′) = (h (g·h′), g g′)`. The papers' `Sp(V) ⋉ H(V)` is the same group with the factors listed in the other order.
- Lagrangian means `L^⊥ = L` for Mathlib's `LinearMap.BilinForm.orthogonal`; for isotropic `I`, `V̄ = I^⊥/I` carries the induced nondegenerate form.

## Exact supplier contracts

### From Mathlib

- Bilinear forms: `LinearMap.BilinForm.IsAlt`, `LinearMap.BilinForm.Nondegenerate`, `LinearMap.BilinForm.orthogonal`, `LinearMap.BilinForm.finrank_orthogonal` (for nondegenerate `B` on a finite-dimensional space, `dim W^⊥ = dim V − dim W`), `LinearMap.mk₂`, `Module.Dual`.
- Characters of finite fields: `AddChar`, `AddChar.IsPrimitive.of_ne_one` (a nontrivial additive character of a field is primitive), `AddChar.sum_mulShift` (the sum of a primitive character over a scaled finite ring is the cardinality at scale zero and zero otherwise), `quadraticChar`, `quadraticChar_neg_one`, `quadraticChar_two`.
- Representations: `Representation`, `Representation.IsIrreducible`, `Representation.Equiv`, `Representation.character`, `Representation.char_orthonormal` and `FDRep.char_orthonormal` (orthonormality of irreducible characters over an algebraically closed field of characteristic not dividing the group order), `FDRep.simple_iff_char_is_norm_one`, `FDRep.simple_iff_end_is_rank_one` (Schur), `MonoidAlgebra.Submodule.exists_isCompl` (Maschke), `Representation.invariants`, `Rep.indResHomEquiv` (Frobenius reciprocity). Over `ℂ` every finite group order is invertible and the algebraic-closure hypotheses hold.
- Linear algebra and groups: `LinearMap.det`, `LinearEquiv.det`, `LinearMap.trace`, `LinearMap.restrict`, `SemidirectProduct`, `Subgroup.index`, `Subgroup.Normal.conj_mem`.

### From Tau Ceti

- `TauCeti.FactorSet`, `TauCeti.FactorSet.Extension` (the twisted product `M × G` with `⟨a, g⟩⟨b, h⟩ = ⟨a · g•b · α(g, h), gh⟩`), `TauCeti.FactorSet.inl`, `TauCeti.trivialMulDistribMulAction`: the carrier of `H(V)`.
- `TauCeti.BilinForm.isometryGroup` and `TauCeti.BilinForm.mem_isometryGroup_iff` (membership is `B(gx, gy) = B(x, y)` for all `x, y`): the carrier of `Sp(V)`.
- `LinearMap.BilinForm.IsAlt.exists_basis_toMatrix_eq_J` and `LinearMap.BilinForm.IsAlt.even_finrank` (`TauCeti.LinearAlgebra.BilinearForm.SymplecticBasis`): symplectic bases with matrix `Matrix.J` and even dimension, for a nondegenerate alternating form over a field.
- `TauCeti.HeisenbergGroup`, `TauCeti.HeisenbergGroup.card_eq`, `TauCeti.HeisenbergGroup.commutatorElement_eq`: the rank-one polarized Heisenberg group `(x, y, z)(x′, y′, z′) = (x + x′, y + y′, z + z′ + x y′)`.
- `FDRep.ofLinearCharacter` (the one-dimensional representation of a homomorphism to units), `TauCeti.indFDRep`, `TauCeti.finrank_indFDRep` (dimension of finite-index induction is index times dimension), `TauCeti.Rep.indSubtypeEquivPi_ρ_apply` (the right-coset function model of induction), `TauCeti.indFDRepForgetEquiv` (comparison of `TauCeti.indFDRep` with Mathlib's induction).
- `TauCeti.IsProjectiveRep` and `TauCeti.IsProjectiveRep.rescale`: normalized projective representations with their factor sets, and the coboundary change under rescaling.

### From TauCetiRoadmap.RepresentationTheory.InductionRestriction and TauCetiRoadmap.RepresentationTheory.CharacterTheory

InductionRestriction Layer 0 (transitivity of induction), Layer 2 (induced characters and Frobenius reciprocity), Layer 4 (intertwining numbers), Layer 5 (Clifford theory over a normal subgroup) and Layer 7 (projective representations and factor sets), and CharacterTheory's orthogonality of irreducible characters, all over `ℂ` for finite groups, in the declarations named above (`TauCeti.indFDRep`, `Rep.indResHomEquiv`, `TauCeti.IsProjectiveRep`, `Representation.char_orthonormal`).

### From TauCetiRoadmap.MetaplecticAutomorphicForms

Layer 0, over a commutative ring `R` with 2 invertible, applied with `R = k`:

- §0.1 `bilinearFactorSet`: the extension `E_B` of `W` by `C` with law `(t, x)(s, y) = (t + s + B(x, y), x + y)`. Here `B = ω/2`; `heisenbergFactorSet ω` below is this factor set.
- §§0.3, 0.5 `halfForm_commutator`: for alternating `ω`, the commutator `pqp⁻¹q⁻¹` in `E_{ω/2}` is `inl(ω(x, y))`.
- §0.6 `halfForm_center`: for alternating nondegenerate `ω`, the centre of `E_{ω/2}` is the image of `inl`.
- §§0.7–0.8 `extensionIsometry`, `extensionIsometryAction`: an isometry `e` acts by `(t, x) ↦ (t, e x)`, fixing the centre, as a homomorphism from `TauCeti.BilinForm.isometryGroup` to the automorphisms of the extension.
- §§0.9–0.10 `polarization_cocycle`, `polarizationEquiv`: the isomorphism `E_{(B − Bᵀ)/2} ≃ E_B`, `(t, x) ↦ (t + B(x, x)/2, x)`.
- §0.9a `exists_lagrangianComplement`: over every field, a Lagrangian `X` has a Lagrangian complement `Y` with `Y ≅ X^∨` through `ω`, and `Sp(W)` is transitive on Lagrangians.

### From TauCetiRoadmap.MordellLawrenceVenkatesh

Layer LV.3: §3.1 (an isotropic subspace of a `2d`-dimensional symplectic space has dimension at most `d`, with equality exactly for Lagrangians) and §3.2 (a prescribed basis `(eᵢ)` of a Lagrangian extends to a symplectic basis `(eᵢ, fᵢ)`), over every field.

## How to read the build

`Suggested.lean` states the finite Stone–von Neumann theorem (§1.3), the fully ramified theorem (§1.4), the existence and uniqueness of the normalized Weil representation (§2.2), the isotropic-invariants theorem (§3.4) and the Lagrangian fixed-line theorem (§4.1), with the definitions `heisenbergFactorSet`, `Heisenberg`, `polarizationForm`, `schrodingerOp`, `evenPart` and `IsNormalizedWeil`; its docstring names the corrected Gérardin formula (§3.3) and tensor compatibility (§4.2) as not statable at the pins. Layer 0 fixes coordinates adapted to an isotropic subspace. Layer 1 builds the Heisenberg group of a finite symplectic space, the Schrödinger model, its character and the uniqueness theorems, and the intertwiners between polarized models. Layer 2 builds the projective Weil action, normalizes it by the parity determinant, computes it on generators and assembles the Weil–Heisenberg representation and its transport along special isomorphisms. Layer 3 builds mixed models, computes the parabolic fixed space with its determinant twist, deduces the corrected induction formula and proves isotropic induction for fully ramified characters. Layer 4 proves the Lagrangian fixed-line formula and tensor compatibility, the finite inputs consumed by type constructions. Each target names what its statement and its route need, so a different proof is not blocked behind an unrelated layer.

## Layer 0: Finite symplectic coordinates

### 0.1 Adapted coordinates for an isotropic subspace

Let `V` be a finite-dimensional space over a field `k` of characteristic not 2 with an alternating nondegenerate form `ω`, and let `I ≤ V` be isotropic. Construct subspaces `V₀` and `J` with `V = I ⊕ V₀ ⊕ J`, `I^⊥ = I ⊕ V₀`, `V₀ ⊥ (I ⊕ J)`, `ω|_{V₀}` nondegenerate, and `J → I*`, `j ↦ ω(·, j)|_I` an isomorphism; equivalently a linear isometry `I ⊕ V₀ ⊕ I* ≃ V` carrying the form `ω|_{V₀}` orthogonally summed with `((x, y), (x′, y′)) ↦ y′(x) − y(x′)` on `I ⊕ I*`. Then `dim V = 2 dim I + dim V₀`, and `I^⊥ → V₀` (projection along `I`) induces an isometry `I^⊥/I ≅ V₀` (FS25, Lemma 3.3.4 and the paragraph before it, p. 15; N02, §2, p. 16).

A proof route: extend `I` to a maximal isotropic subspace `L`; a vector of `L^⊥` outside `L` would enlarge it isotropically (the form is alternating), so `L = L^⊥` and `dim L = n` by `LinearMap.BilinForm.finrank_orthogonal`. Extend a basis of `I` to a basis of `L`, extend that basis to a symplectic basis `(eᵢ, fᵢ)` by MordellLawrenceVenkatesh §3.2, let `J` be spanned by the `fᵢ` paired with the basis of `I` and `V₀` by the remaining `eᵢ, fᵢ`. The symplectic-basis equations give every claim.

Its API, on these carriers and hypotheses:

- The coordinate equivalence `I ⊕ V₀ ⊕ I* ≃ V` is a linear isometry for the displayed forms.
- Under it, `I^⊥` corresponds to `I ⊕ V₀ ⊕ 0`, and `I^⊥/I` is isometric to `V₀` with its restricted form.
- `dim V = 2 dim I + dim V₀`; for `I` Lagrangian, `V₀ = 0` and `J` is a Lagrangian complement.
- An isometry `h` of `V` with `hI = I′` carries an adapted decomposition for `I` to one for `I′` and induces the isometry `I^⊥/I ≅ I′^⊥/I′`. A chosen complement `V₀` is in general not preserved by the stabilizer of `I`; only the quotient `I^⊥/I` is intrinsic.

**Checks.**

- For `I = 0` the decomposition is `V₀ = V`, `J = 0`; the theorem does not force `V = 0`.
- In the plane `k²` with `ω((x, y), (x′, y′)) = xy′ − yx′` and `I = k(1, 0)`, `J = k(0, 1)` and `V₀ = 0`; `dim V = 2 = 2·1 + 0`.
- In the orthogonal sum of two planes with `I` the first `x`-axis, `V₀` is the second plane, of dimension 2, and `4 = 2·1 + 2`; a formula `dim V₀ = dim V − dim I` would give 3.
- The whole nonzero plane is not isotropic (`ω((1, 0), (0, 1)) = 1`), so it is not an admissible `I`.

*Needs:* Mathlib `LinearMap.BilinForm.IsAlt`, `LinearMap.BilinForm.Nondegenerate`, `LinearMap.BilinForm.orthogonal`, `LinearMap.BilinForm.finrank_orthogonal`; MordellLawrenceVenkatesh §§3.1–3.2.

### 0.2 The standard polarized space

Define `polarizationForm k X` on `X × X*` by `((x, y), (x′, y′)) ↦ y′(x) − y(x′)`. For a finite-dimensional `X` it is alternating and nondegenerate, `{0} × X*` and `X × {0}` are complementary Lagrangians, and every nondegenerate alternating space of dimension `2 dim X` is isometric to it (Tau Ceti `LinearMap.BilinForm.IsAlt.exists_basis_toMatrix_eq_J` after reordering the basis, or §0.1 with `I` Lagrangian).

Its API:

- `polarizationForm k X` is alternating: its value on `(v, v)` is `y(x) − y(x) = 0`.
- It is nondegenerate when `X` is finite-dimensional: pairing with `(x′, 0)` detects `y`, pairing with `(0, y′)` detects `x`.
- `X × {0}` and `{0} × X*` are Lagrangian, and `(x, 0)` pairs with `(0, y)` to `y(x)`.
- The block matrix `J = (0, I; −I, 0)`, `(x, y) ↦ (y, −x)`, lies in `Sp(X × X*)`, and so do `m(A) = (A, 0; 0, A^{−T})` for invertible `A` and the lower shears `u(C) = (I, 0; C, I)`, `(x, y) ↦ (x, Cx + y)`, for symmetric `C`.

**Checks.**

- On `X = k`, the value at `((1, 0), (0, 1))` is `1`, and at `((0, 1), (1, 0))` it is `−1`; the convention `y(x′) − y′(x)` gives the opposite signs.
- `J(1, 0) = (0, −1)`, and `polarizationForm` takes the value `1` on `((1, 0), (0, 1))` and on their images `((0, −1), (1, 0))`, so `J` is an isometry; Mathlib's `Matrix.J` acts by the negative and is a different element.
- On `X = 0` the form is the zero form on the zero space, which is nondegenerate; `Sp` is trivial.

*Needs:* Mathlib `LinearMap.mk₂`, `Module.Dual`; Tau Ceti `TauCeti.BilinForm.isometryGroup`, `LinearMap.BilinForm.IsAlt.exists_basis_toMatrix_eq_J`.

### Examples

In the plane over `𝔽₃` with `I = 𝔽₃(1, 0)`, §0.1 gives `J = 𝔽₃(0, 1)`, `V₀ = 0` and `I^⊥ = I`. In `𝔽₃⁴`, the sum of two standard planes, with `I` spanned by the first basis vector, `I^⊥` is three-dimensional and `I^⊥/I` is the second plane.

### Dependencies

Within this roadmap: none. From other roadmaps: MordellLawrenceVenkatesh §§3.1–3.2. Mathlib and Tau Ceti as in the supplier contracts.

## Layer 1: Finite Heisenberg representations

### 1.1 The Heisenberg group of a finite symplectic space

Define `heisenbergFactorSet ω` as the factor set `(v, w) ↦ ω(v, w)/2` of `Multiplicative V` with values in `Multiplicative k` for the trivial action, and `Heisenberg ω` as its Tau Ceti extension. This is MetaplecticAutomorphicForms §0.1 for the bilinear form `ω/2`; the theorems of §§0.2–0.8 there are used for it without change.

Its API (from MetaplecticAutomorphicForms §§0.3–0.8 when 2 is invertible):

- The product of `(t, v)` and `(s, w)` is `(t + s + ω(v, w)/2, v + w)`, and the inverse of `(t, v)` is `(−t, −v)` because `ω(v, v) = 0`.
- For alternating `ω` the commutator of `(t, v)` and `(s, w)` is `(ω(v, w), 0)`.
- For nondegenerate alternating `ω` the centre is `{(t, 0)}`, isomorphic to `k`; `H(V)` has order `q^{2n+1}`.
- `Sp(V)` acts by automorphisms `(t, v) ↦ (t, gv)` fixing the centre.
- For `V = k²` with the standard form, `(t, x, y) ↦ (x, y, t + xy/2)` is an isomorphism onto `TauCeti.HeisenbergGroup k`.

**Checks.**

- In `𝔽₃²`, `(0, (1, 0))(0, (0, 1)) = (2, (1, 1))` since `1/2 = 2` in `𝔽₃`, while the reverse product is `(1, (1, 1))`; their quotient is the commutator `(1, 0) = (ω(e₁, e₂), 0)`.
- For `V = 0` the group is `k` itself, abelian of order `q`.
- In characteristic 2 the division by 2 is not available; with the junk value `1/2 = 0` the extension is the abelian group `k × V`, so the odd-characteristic hypothesis of the theorems below cannot be dropped.
- Under `(t, x, y) ↦ (x, y, t + xy/2)`, the product `(0, 1, 0)(0, 0, 1) = (1/2, 1, 1)` maps to `(1, 1, 1)`, which is `(1, 0, 0)(0, 1, 0)` in `TauCeti.HeisenbergGroup`; without the correction `xy/2` the map is not multiplicative.

*Needs:* MetaplecticAutomorphicForms §§0.1–0.8; Tau Ceti `TauCeti.FactorSet.Extension`, `TauCeti.trivialMulDistribMulAction`, `TauCeti.HeisenbergGroup`.

### 1.2 The Schrödinger representation

For a full polarization `V = X × X*` define `schrodingerOp ψ t (x, y)` on `X → ℂ` by `f ↦ (z ↦ ψ(t + y(z) + y(x)/2) f(z + x))`, and construct the finite-dimensional representation `S_ψ` of `H(V)` on `X → ℂ` by `(t, (x, y)) ↦ schrodingerOp ψ t (x, y)`. Construct a linear equivalence of `S_ψ` with `TauCeti.indFDRep` of the character `(t, 0, y) ↦ ψ(t)` of the subgroup `A = {(t, 0, y)}`, realized as functions `F` on `H(V)` with `F(ah) = ψ(t_a)F(h)` under right translation, by `F ↦ (z ↦ F(0, z, 0))` (N02, §2, pp. 16–17; FS25, Example 3.1.6, p. 11, and Lemma 3.3.4, p. 15).

A proof route: expanding `π(t, x, y) π(s, x′, y′)` gives the exponent `t + s + y(z) + y′(z) + y′(x) + y(x)/2 + y′(x′)/2`, which equals the exponent of `π` at the product `(t + s + (y′(x) − y(x′))/2, x + x′, y + y′)`. Right translation of an induced function by `(t, x, y)` has coset factor `(t + y(z) + y(x)/2, 0, y)` at the representative `(0, z, 0)`, which gives the displayed formula; `TauCeti.Rep.indSubtypeEquivPi_ρ_apply` and `TauCeti.indFDRepForgetEquiv` identify it with native induction.

Its API:

- `schrodingerOp ψ t (x, y)` evaluated at `f` and `z` is `ψ(t + y(z) + y(x)/2) f(z + x)`.
- `schrodingerOp ψ t (0, 0)` is multiplication by `ψ(t)`; `dim S_ψ = qⁿ`.
- The operators compose according to the Heisenberg law of §1.1, so `S_ψ` is a representation with central character `ψ`; translations and modulations satisfy `π(x)π(y) = ψ(y(x)) π(y)π(x)`.
- `S_ψ` is isomorphic to `TauCeti.indFDRep` of `FDRep.ofLinearCharacter` of the character `(t, 0, y) ↦ ψ(t)` of `A`, with the restriction map `F ↦ F(0, ·, 0)` and its inverse; the isomorphism is checked on central, translation and modulation elements, not only on dimensions.
- For an isometry carrying one polarization to another, pulling back gives a Schrödinger representation for the new polarization, intertwined with the old one by an operator unique up to a scalar (after §1.3).

**Checks.**

- Over `𝔽₃` with `ψ(1) = ζ = exp(2πi/3)`, let `T = π(0, 1, 0)` and `M = π(0, 0, 1)`. Then `(TMf)(z) = ζ^{z+1} f(z + 1)` and `(MTf)(z) = ζ^z f(z + 1)`, so `T ∘ M = ζ · M ∘ T`, matching the commutator `(ω((1, 0), (0, 1)), 0) = (1, 0)`; the relation `M ∘ T = ζ · T ∘ M` is false.
- In the same plane, `M δ₁ = ζ δ₁` and `T δ₁ = δ₀`, where `δ_a` is the indicator of `a`.
- For `X = 0`, `S_ψ` is the line on which `H(0) = k` acts by `ψ`; it is not the zero representation.
- With `ψ` trivial on a nonzero plane the operators still form a representation, but the constant functions are a proper invariant line: the formula gives an irreducible model only for nontrivial `ψ`.

*Needs:* §1.1; Tau Ceti `FDRep.ofLinearCharacter`, `TauCeti.indFDRep`, `TauCeti.finrank_indFDRep`, `TauCeti.Rep.indSubtypeEquivPi_ρ_apply`, `TauCeti.indFDRepForgetEquiv`; MetaplecticAutomorphicForms §§0.9–0.10 (the half-form and polarized cocycles).

### 1.3 The character and the finite Stone–von Neumann theorem

Prove that the character of `S_ψ` at `(t, v)` is `qⁿψ(t)` for `v = 0` and `0` otherwise, for every nontrivial `ψ`, injective or not (N02, Lemma 2.1 and its proof, p. 16).

Prove `finite_stoneVonNeumann_exists` and `finite_stoneVonNeumann`: for `k` finite of characteristic not 2, `ω` alternating and nondegenerate on `V` and `ψ` nontrivial, there is an irreducible complex representation of `Heisenberg ω` on which `(t, 0)` acts by `ψ(t)`; every such representation has dimension `d` with `d² = |V| = q^{2n}`, its character vanishes off the centre, and any two are equivalent. In an arbitrary finite-dimensional representation on which `(t, 0)` acts by `ψ(t)`, every irreducible constituent is `S_ψ`, so the representation is `S_ψ`-isotypic, and the endomorphisms of `S_ψ` are scalars (N02, Lemma 2.1 and the remark after it, pp. 16–17; FS25, Lemma 3.3.1, p. 14).

A proof route: for `x ≠ 0` translation fixes no basis function, so the trace vanishes; for `x = 0, y ≠ 0` the trace is `ψ(t)Σ_z ψ(y(z))`, which is zero by `AddChar.IsPrimitive.of_ne_one` and `AddChar.sum_mulShift`. The character norm is `q^{−(2n+1)} · q · q^{2n} = 1`, so `S_ψ` is irreducible (`FDRep.simple_iff_char_is_norm_one`). Pairing with another irreducible representation with central character `ψ` only sees the centre and gives `dim/qⁿ > 0`, so orthonormality (`Representation.char_orthonormal`) forces an isomorphism; Maschke and Schur give the rest. The Lean statement does not mention `S_ψ`: existence plus uniqueness is the same content.

Statement API:

- The character of `S_ψ` is supported on the centre, where it equals `qⁿψ(t)`; its normalized norm is 1.
- Every irreducible representation with central character `ψ` has dimension `qⁿ` and is isomorphic to `S_ψ`; the isomorphism is unique up to a scalar, not a distinguished one.
- A finite-dimensional representation with central character `ψ` is a direct sum of copies of `S_ψ`.

**Checks.**

- Over `𝔽₉` with `ψ = ψ₃ ∘ Tr`, the functional `y(z) = z` has `ψ(y(z₀)) = 1` for the nonzero `z₀` with trace zero, yet `Σ_z ψ(z) = 0`; a proof that assumes `ψ` injective does not apply here.
- For `n = 0`, `d² = |V| = 1`: the only irreducible representation with central character `ψ` is `ψ` itself.
- With `ψ` trivial on a nonzero plane, the trivial representation and the nontrivial one-dimensional characters of `H(V)/Z ≅ V` are irreducible with trivial central character and pairwise inequivalent, so uniqueness fails; the hypothesis `ψ ≠ 1` is needed.
- For `q = 3`, `n = 1`: `|H(V)| = 27`, and the `9` one-dimensional characters together with the two Schrödinger representations of dimension 3 (for `ψ` and `ψ̄`) give `9 · 1 + 2 · 9 = 27`.

*Needs:* §1.2; Mathlib `AddChar.IsPrimitive.of_ne_one`, `AddChar.sum_mulShift`, `FDRep.simple_iff_char_is_norm_one`, `Representation.char_orthonormal`, `FDRep.simple_iff_end_is_rank_one`, `MonoidAlgebra.Submodule.exists_isCompl`; MetaplecticAutomorphicForms §0.6.

### 1.4 Fully ramified characters (Stone–von Neumann with a cyclic centre)

Prove `fullyRamified_exists` and `fullyRamified_unique`. Let `J` be a finite group, `H` a normal subgroup containing every commutator, `θ : H → ℂˣ` a character with `θ(ghg⁻¹) = θ(h)` for `g ∈ J`, `h ∈ H`, and assume that every `g ∉ H` has some `x ∈ J` with `θ(gxg⁻¹x⁻¹) ≠ 1`. Then there is an irreducible representation `η` of `J` with `η(h) = θ(h) · id` for `h ∈ H`; every such representation has dimension `d` with `d² = [J : H]`, its character is `dθ` on `H` and zero off `H`, and any two are equivalent. Every finite-dimensional representation of `J` is `η`-isotypic on its `θ`-isotypic part. No exponent-`p` hypothesis and no special isomorphism with a standard Heisenberg group is assumed: `H/ker θ` is cyclic of any order (S08, Proposition 3.5, p. 14; F21, Lemmas 7.7–7.8, pp. 30–31).

A proof route: induce the character `θ` (`FDRep.ofLinearCharacter`, `TauCeti.indFDRep`); `J`-invariance makes `H` act by `θ` on it, and Maschke gives an irreducible constituent `η`. For `g ∉ H` choose `x` as in the hypothesis; `η(xgx⁻¹) = θ(xgx⁻¹g⁻¹) η(g)`, and invariance of the trace under conjugation forces `tr η(g) = 0`. The character norm is `|H| d²/|J| = 1`, and the same computation for two such representations gives inner product 1, hence an isomorphism by `Representation.char_orthonormal`.

Statement API:

- The pairing `(gH, xH) ↦ θ(gxg⁻¹x⁻¹)` on `J/H` is bimultiplicative and alternating, by the invariance of `θ`; the hypothesis says that it is nondegenerate, hence perfect since `J/H` is finite.
- `d² = [J : H]`; the character of `η` is `dθ` on `H` and vanishes off `H`.
- The representation `η` is unique up to equivalence, and the `θ`-isotypic part of any representation is a sum of copies of `η`.

**Checks.**

- For the central product of the Heisenberg group of order `p³` with the cyclic group of order `p²` along their subgroups of order `p` (order `p⁴`), `H` the cyclic centre of order `p²` and `θ` faithful, `[J : H] = p²` and the unique `η` has dimension `p`.
- The nonabelian group of order `p³` and exponent `p²` with `H` its centre and `θ` nontrivial satisfies the hypotheses and has a unique `η` of dimension `p`, although it is not isomorphic to the Heisenberg group of exponent `p`.
- For an abelian `J` with `H ≠ J` the hypothesis fails (`θ` of every commutator is 1) and `θ` has `[J : H]` distinct one-dimensional extensions, so uniqueness fails.
- For `H = J` the hypothesis is vacuous and `η = θ` with `d² = 1 = [J : J]`.
- For `J = H(V)`, `H` its centre and `θ = ψ`, the theorem is §1.3, with `[J : H] = q^{2n}`.

*Needs:* Tau Ceti `FDRep.ofLinearCharacter`, `TauCeti.indFDRep`, `TauCeti.finrank_indFDRep`; Mathlib `MonoidAlgebra.Submodule.exists_isCompl`, `Representation.char_orthonormal`, `Representation.character`.

### 1.5 Intertwiners between polarized models

For a Lagrangian `A ≤ V` let `S_A` be the space of functions `F : H(V) → ℂ` with `F((t, a)h) = ψ(t)F(h)` for `a ∈ A`, with `H(V)` acting by right translation; it is a model of `S_ψ` by §§1.2–1.3. For Lagrangians `A, B` define `T_{BA} : S_A → S_B` by `(T_{BA}F)(h) = Σ_{b ∈ B} F((0, b)h)`. Prove that `T_{BA}` is a nonzero intertwiner, hence an isomorphism, that `T_{AA} = |A| · id` and that `T_{AB} ∘ T_{BA} = |A| · |A ∩ B| · id` (FS25, Lemma 3.3.4 and its proof, pp. 15–16; N02, Theorem 4.1, pp. 19–20, for the transverse case as a finite Fourier transform; the averaging normalization here is chosen independently).

A proof route: isotropy of `B` gives `(0, b)(0, b′) = (0, b + b′)`, so reindexing proves left covariance, and left averaging commutes with right translation. Since `(0, b)(0, a) = (ω(b, a), 0)(0, a)(0, b)`, the composite at `h` is `Σ_{b ∈ B} (Σ_{a ∈ A} ψ(ω(b, a))) F((0, b)h)`; the inner sum is `|A|` for `b ∈ A^⊥ = A` and `0` otherwise by primitivity of `ψ`.

Its API:

- `T_{BA}` is the displayed left average and commutes with every right translation.
- `T_{BA}` is a nonzero isomorphism between the two induced models.
- `T_{AA} = |A| · id` and `T_{AB}T_{BA} = |A| · |A ∩ B| · id`; these normalizations are not asserted to compose to the identity around a triangle of Lagrangians.
- An isometry `g` transports `T_{BA}` to `T_{gB, gA}` without extra factor.

**Checks.**

- In the `𝔽₃` plane with `A = B` a line, `T_{AA} = 3 · id` and `T_{AA}T_{AA} = 9 · id`.
- For distinct Lagrangian lines in the `𝔽₃` plane, `T_{AB}T_{BA} = 3 · 1 · id = 3 · id`; a normalization claiming the identity fails, and the formula `|A|² · id` would give 9.
- For `V = 0` every sum has one term and every `T_{BA}` is the identity, matching `|A| · |A ∩ B| = 1`.

*Needs:* §1.3; MetaplecticAutomorphicForms §0.5; Mathlib `AddChar.sum_mulShift`; Tau Ceti `TauCeti.indFDRep`.

### Examples

Over `𝔽₃` with `ψ(1) = ζ`, `S_ψ` is three-dimensional with basis `δ₀, δ₁, δ₂`; `T = π(0, 1, 0)` is the cyclic shift `δ_a ↦ δ_{a−1}` and `M = π(0, 0, 1) = diag(1, ζ, ζ²)`, with `TM = ζMT`. Its character is `3ψ(t)` on the centre and 0 elsewhere, so its norm is `27⁻¹ · 3 · 9 = 1`.

### Dependencies

Within this roadmap: Layer 0 (§0.2, for polarized coordinates). From other roadmaps: MetaplecticAutomorphicForms §§0.1–0.10. Mathlib and Tau Ceti as in the supplier contracts.

## Layer 2: Genuine finite Weil representations

Throughout this layer `V = X × X*` with `polarizationForm k X`, `k` finite of odd characteristic and `ψ` nontrivial; every result transports to an arbitrary nondegenerate alternating space through an isometry with `X × X*` (§0.2), with the Weil representation conjugated by the corresponding intertwiner of §1.2.

### 2.1 The projective Weil action

For `g ∈ Sp(V)` choose `μ(g) ∈ GL(X → ℂ)` with `μ(1) = 1` and `μ(g) π(t, v) μ(g)⁻¹ = π(t, gv)` (Egorov covariance). There is a unique `c(g, g′) ∈ ℂˣ` with `μ(g)μ(g′) = c(g, g′)μ(gg′)`; `(μ, c)` satisfies `TauCeti.IsProjectiveRep`, and replacing `μ(g)` by `a(g)μ(g)` with `a(1) = 1` changes `c` by the coboundary `a(g)a(g′)/a(gg′)` (N02, §4, p. 19; FS25, Construction 3.4.2, p. 17).

A proof route: `π ∘ g` is irreducible with central character `ψ`, so §1.3 gives an intertwiner, unique up to a scalar by Schur; associativity gives the factor-set identity, and `TauCeti.IsProjectiveRep.rescale` gives the coboundary change.

Its API:

- `μ(g)π(t, v)μ(g)⁻¹ = π(t, gv)` for all `t, v`.
- `(μ, c)` is a normalized projective representation with `c(1, g) = c(g, 1) = 1`.
- A normalized rescaling by `a` multiplies `c` by `a(g)a(g′)/a(gg′)`.
- Every `μ(g)` commutes with parity `R`: `μ(g)Rμ(g)⁻¹` intertwines `π` with `π ∘ (−1)` and has trace `tr R = 1`, so it equals `R`.

**Checks.**

- `μ(1) = id`, so `c(1, g) = c(g, 1) = 1`.
- In the `𝔽₃` plane let `g = u(1)`, of order 3. Rescaling only `μ(g)` by `ζ` multiplies `c(g, g)` by `ζ² ≠ 1` and preserves Egorov covariance: the factor set is not determined by covariance.
- For `V = 0` the intertwiners are the nonzero scalars; §2.2 removes the choice.

*Needs:* §§1.2–1.3; MetaplecticAutomorphicForms §0.8; Tau Ceti `TauCeti.BilinForm.isometryGroup`, `TauCeti.IsProjectiveRep`, `TauCeti.IsProjectiveRep.rescale`.

### 2.2 Normalization by the parity determinant

Define `evenPart X` as the projector `f ↦ (f + f ∘ (−1))/2` onto `S⁺`, and `IsNormalizedWeil ψ W`, for a homomorphism `W : Sp(X × X*) → GL(X → ℂ)`, as the conjunction of Egorov covariance `W(g) ∘ π(t, v) = π(t, gv) ∘ W(g)` and the identity `det W(g) = (det(W(g) ∘ e + (1 − e)))²` with `e = evenPart X`; since `W(g)` commutes with parity, `det(W(g) ∘ e + (1 − e)) = det(W(g)|_{S⁺})`.

Prove `existsUnique_isNormalizedWeil`: there is exactly one `W` with `IsNormalizedWeil ψ W`. Explicitly, for any choice `μ` as in §2.1, `W(g) = κ(g)μ(g)` with `κ(g) = det μ(g)/(det μ(g)|_{S⁺})²`; this is independent of the choice of `μ`, and the statement includes `Sp₂(𝔽₃)`, where the projective Weil representation has three linearizations (N02, Theorems 4.2–4.3, pp. 20–22; FS25, Construction 3.4.2, p. 17).

A proof route: `dim S − 2 dim S⁺ = qⁿ − (qⁿ + 1) = −1`. Taking determinants in `μ(g)μ(g′) = cμ(gg′)` on `S` and on `S⁺` gives `κ(g)κ(g′) = c(g, g′)⁻¹κ(gg′)`, so `κμ` is multiplicative. Rescaling `μ` by `a` multiplies `κ` by `a⁻¹`, so `κμ` is independent of the choice; and a scalar function `a` with `aW` normalized satisfies `a(g)^{qⁿ − (qⁿ + 1)} = 1`, so `a = 1`. The argument never uses perfectness of `Sp(V)`, which fails for `Sp₂(𝔽₃)`.

Its API:

- `IsNormalizedWeil ψ W` holds for `W(g) = (det μ(g)/(det μ(g)|_{S⁺})²) μ(g)`.
- The normalized `W` is a homomorphism with Egorov covariance, independent of the choice of `μ`.
- Among all scalar corrections of `μ`, the determinant identity holds for exactly one, for every `g` and every `q, n`, including `q = 3, n = 1`.
- `W(g)` commutes with parity; `W(−1) = χ(−1)ⁿ R` (from §2.3, with `−1 = m(−1)`).

**Checks.**

- For `n = 0`, `S = S⁺ = ℂ` and `μ(g) = a(g)`; then `κ(g) = a/a² = a⁻¹` and `W(g) = id`.
- For the `𝔽₃` plane, twisting the normalized `W` by a character `λ` of `Sp₂(𝔽₃)` of order 3 keeps Egorov covariance and multiplicativity, but `det(λW) = λ³ det W = det W` while `(det(λW)|_{S⁺})² = λ⁴(det W|_{S⁺})² = λ(det W|_{S⁺})²`, so the twist violates the identity wherever `λ ≠ 1`.
- For the `𝔽₅` plane, `dim S⁺ = 3` and `dim S⁻ = 2`, so `5 − 2 · 3 = −1`; with the ratio inverted, `κ′ = (det μ|_{S⁺})²/det μ`, rescaling `μ` by `a` would multiply `κ′μ` by `a²` instead of leaving it fixed.
- For `q = 3, n = 1`, `W(−1) = χ₃(−1) R = −R`, whose `+1`-eigenspace is `S⁻`: the even subspace in the identity must be defined through parity `R`, not through `W(−1)`.

*Needs:* §2.1; Mathlib `LinearMap.det`, `LinearEquiv.det`, `LinearMap.trace`, `FDRep.simple_iff_end_is_rank_one`.

### 2.3 Generator formulas

In coordinates `X = kⁿ`, for symmetric `C` and invertible `A`, prove that the normalized `W` of §2.2 satisfies `W(u(C))f(z) = ψ(−zᵀCz/2) f(z)`, `W(m(A))f(z) = χ(det A) f(A⁻¹z)` and `W(J) = κ_J F_ψ`, where `(F_ψ f)(z) = q^{−n/2} Σ_w ψ(z · w) f(w)` with the positive square root and `κ_J = det F_ψ/(det F_ψ|_{S⁺})² = det F_ψ` (N02, Theorem 3.3, p. 18, for generation of `Sp`; Theorem 4.1, pp. 19–20, for the unnormalized operators; the determinant computations after Theorem 4.3, pp. 22–23; Example 4.4, pp. 23–24).

A proof route: check Egorov covariance for each unnormalized operator on translations and modulations, keeping the sign of `J`. For `u(C)` the values at `z` and `−z` coincide, so `det` on `S` is `det` on `S⁺` times `det` on `S⁻` with equal factors on paired points and `κ = 1`. For `m(A)` the operator is the permutation `z ↦ A⁻¹z`; its restriction to `S⁺` is a permutation matrix with determinant `±1`, so `κ` is the sign of the permutation of `X`, which is `χ(det A)`: a diagonal scaling by a generator of `kˣ` permutes `kˣ` in one cycle of even length `q − 1`, hence is odd, and transvections act by permutations of odd order. For `J`, `F_ψ² = R`, so `(det F_ψ|_{S⁺})² = 1`. These are formulas for the homomorphism of §2.2, so every relation among generators holds automatically.

Its API:

- `W(u(C))` is multiplication by `ψ(−zᵀCz/2)`.
- `W(m(A))` is `χ(det A)` times the permutation `f ↦ f ∘ A⁻¹`.
- `W(J) = κ_J F_ψ`, `F_ψ² = R`, and `κ_J = det F_ψ` is a fourth root of unity determined as a determinant; no Gauss-sum evaluation or Weil index is used.

**Checks.**

- For `q = 3, n = 1`, `ψ(1) = ζ`: `W(u(1)) = diag(1, ζ, ζ)` on `δ₀, δ₁, δ₂` (since `−z²/2 = z²` in `𝔽₃`), `W(m(−1)) = −R`, and `det F_ψ = −i` (the Vandermonde determinant of `1, ζ, ζ²` is `−3√3 i`, divided by `(√3)³`), so `κ_J = −i`.
- For `q = 5, n = 1`, `ψ(1) = exp(2πi/5)`: `κ_J = −1`, and `W(m(2))δ₀ = χ₅(2)δ₀ = −δ₀` because 2 is not a square mod 5.
- The `J` of this roadmap sends `(1, 0)` to `(0, −1)`; using `Matrix.J`, which sends `(1, 0)` to `(0, 1)`, replaces `F_ψ` by its inverse and fails Egorov covariance for the formula above.

*Needs:* §2.2; §0.2; Mathlib `quadraticChar`, `AddChar.sum_mulShift`, `AddChar.IsPrimitive.of_ne_one`; Tau Ceti `TauCeti.BilinForm.isometryGroup`.

### 2.4 The Weil–Heisenberg representation

On `H(V) ⋊ Sp(V)`, built with Mathlib's `SemidirectProduct` from the action of MetaplecticAutomorphicForms §0.8, define `Ω(h, g) = π(h) W(g)`. Prove that `Ω` is a representation, that its restrictions to `H(V)` and `Sp(V)` are `S_ψ` and `W`, that the centre acts by `ψ`, and that conjugating by an isometry of polarized models and a Schrödinger intertwiner carries `Ω` to the Weil–Heisenberg representation of the image (FS25, Construction 3.4.2, p. 17; F21, proof of Lemma 7.10, pp. 32–33).

A proof route: `π(h)W(g)π(h′)W(g′) = π(h)π(g·h′)W(g)W(g′) = π(h(g·h′))W(gg′)` by Egorov covariance. Conjugation by a nonzero intertwiner preserves Egorov covariance and the determinant identity, so the conjugated Weil representation is the normalized one by uniqueness (§2.2).

Its API:

- `Ω(h, g) = π(h)W(g)` in normal-first coordinates, and `Ω` respects `(h, g)(h′, g′) = (h(g·h′), gg′)`.
- The restriction of `Ω` to `H(V)` is `S_ψ`, to `Sp(V)` is `W`, and `(t, 0)` acts by `ψ(t)`.
- An isometry of symplectic spaces and a chosen Schrödinger intertwiner conjugate `Ω` to the transported Weil–Heisenberg representation, exactly, with no residual scalar on the `Sp` factor.

**Checks.**

- In the `𝔽₃` plane, `W(J) T W(J)⁻¹ = π(0, 0, −1)`, modulation by `−1`, because `J(1, 0) = (0, −1)`.
- For `V = 0`, `Sp(V)` is trivial and `Ω` is `ψ` on the centre.
- The reversed formula `Ω′(h, g) = W(g)π(h)` fails multiplicativity for `g = J`, `h = (0, (1, 0))`: `Ω′((h, 1)(1, J)) = Ω′(h, J) = W(J)π(h)`, while `Ω′(h, 1)Ω′(1, J) = π(h)W(J) = W(J)π(J⁻¹h)` with `J⁻¹h = (0, (0, 1)) ≠ h`.

*Needs:* §1.2; §2.2; MetaplecticAutomorphicForms §0.8; Mathlib `SemidirectProduct`.

### 2.5 Transport through equivariant special isomorphisms

Let `P` be a finite group with an isomorphism `j : P ≃ H(V)` inducing the identity of `V` on `P/Z(P)` (a special isomorphism), let a group `K` act on `P` by automorphisms and let `s : K → Sp(V)` be a homomorphism with `j(k·a) = s(k)·j(a)` for all `k ∈ K`, `a ∈ P`. Prove that `(a, k) ↦ (j(a), s(k))` is a homomorphism `P ⋊ K → H(V) ⋊ Sp(V)`, and that the pullback of `Ω` restricts on `P` to `S_ψ ∘ j` and on `K` to `W ∘ s`. A compatible change of `(j, s)` gives an isomorphic pullback (FS25, Definitions 3.4.4–3.4.5, pp. 17–18; Remark 3.4.3, p. 17).

A proof route: the semidirect multiplication is respected exactly when the equivariance holds; restrict `Ω` along the homomorphism.

Its API:

- The equivariance hypothesis gives the homomorphism `(a, k) ↦ (j(a), s(k))` of semidirect products.
- Restriction of the pullback to `P` is `S_ψ ∘ j`; `K` acts through `W ∘ s`.
- An isomorphism of data `(j, s)` intertwines the pullbacks.

**Checks.**

- For `P = H(V)`, `j = id`, `K = Sp(V)` and `s = id`, the pullback is `Ω`.
- For `V` a nonzero `𝔽₃` plane, conjugation by `(0, w)` with `w ≠ 0` is the identity on `V` but sends `(t, v)` to `(t + ω(w, v), v)`; with `s = 1` the equivariance fails, so the inner automorphism group is not covered with `j = id` (the obstruction of FS25, Remark 3.4.3).
- The group of order `p³` and exponent `p²` admits no special isomorphism to `H(V)`, which has exponent `p`; it is handled by §1.4 instead.

*Needs:* §2.4; Mathlib `SemidirectProduct`.

### Examples

For the `𝔽₃` plane, with `ψ(1) = ζ` and basis `δ₀, δ₁, δ₂`, the normalized Weil representation of `SL₂(𝔽₃)` sends `u(1)` to `diag(1, ζ, ζ)`, `m(−1)` to `−R` and `J` to `−i F_ψ`. For the `𝔽₅` plane, `W(m(2))` is `−1` times the permutation `δ_a ↦ δ_{2a}`, and `W(J) = −F_ψ`.

### Dependencies

Within this roadmap: Layers 0 and 1. From other roadmaps: MetaplecticAutomorphicForms §0.8. Mathlib and Tau Ceti as in the supplier contracts.

## Layer 3: Parabolic restriction and isotropic induction

### 3.1 Mixed models

For an adapted decomposition `V = I ⊕ V₀ ⊕ J` (§0.1), let `K = H(I ⊕ V₀) = H(I^⊥)`. The projection `K → H(V₀)`, `(t, i + v₀) ↦ (t, v₀)`, is a homomorphism with kernel `{(0, i)}`, because `I` pairs trivially with `I^⊥`. Prove that `S_{ψ, V} ≅ Ind_K^{H(V)} (S_{ψ, V₀} inflated to K)`, realized on functions `J → S_{ψ, V₀}`; with representatives `(0, j)`, the element `(0, i)` multiplies the value at `j` by `ψ(ω(j, i))`; the `I`-invariant vectors are exactly the functions supported at `0`; and evaluation at `0` is an `H(V₀)`-equivariant isomorphism `S_{ψ,V}^I ≅ S_{ψ, V₀}`, of dimension `q^{dim V₀/2}` (FS25, Lemma 3.3.4 and its proof, p. 15; F21, proof of Lemma 7.10, pp. 32–33).

A proof route: the induced representation has central character `ψ` and dimension `|J| q^{dim V₀/2} = qⁿ`, so it is `S_{ψ,V}` by §1.3. From `(0, j)(0, i) = (ω(j, i), 0)(0, i)(0, j)` the value at `j` is multiplied by `ψ(ω(j, i))`; for `j ≠ 0` the functional `ω(j, ·)` is nonzero on `I` by the perfect pairing, so primitivity of `ψ` leaves only `j = 0`.

Its API:

- `S_{ψ,V}` is isomorphic to `TauCeti.indFDRep` of the inflation of `S_{ψ,V₀}` to `K`.
- With representatives `(0, j)`, `(π(0, i)F)(j) = ψ(ω(j, i))F(j) = ψ(−ω(i, j))F(j)`.
- A mixed-model function is `I`-invariant exactly when it is supported at `0`.
- Evaluation at `0` and extension by zero are inverse `H(V₀)`-equivariant isomorphisms between `Representation.invariants` of the restriction to `I` and `S_{ψ,V₀}`.

**Checks.**

- For `I = 0`, `K = H(V)`, the induction has index 1 and the invariant space is all of `S_{ψ,V}`.
- For `I` Lagrangian, `V₀ = 0` and the invariant space is the line spanned by `δ₀`.
- For a line `I` in `𝔽₃⁴`, `dim S_ψ = 9` and the `I`-invariants have dimension `3 = 3^{2/2}`, neither 1 nor 9.

*Needs:* §0.1; §1.3; MetaplecticAutomorphicForms §0.5; Tau Ceti `TauCeti.indFDRep`, `TauCeti.finrank_indFDRep`, `TauCeti.Rep.indSubtypeEquivPi_ρ_apply`, `TauCeti.indFDRepForgetEquiv`; Mathlib `Representation.invariants`, `AddChar.IsPrimitive.of_ne_one`.

### 3.2 The parabolic fixed space

Let `I` be isotropic and `P ≤ Sp(V)` a subgroup stabilizing `I`, with `p₁ : P → GL(I)` and `p₂ : P → Sp(V̄)`, `V̄ = I^⊥/I`. Prove that `S_{ψ,V}^I` is stable under `P ⋉ H(I^⊥)` and that there is an isomorphism of representations of `P ⋉ H(I^⊥)`
`S_{ψ,V}^I ≅ (χ ∘ det ∘ p₁) ⊗ (Ω_{ψ,V̄} pulled back along p₂ × (H(I^⊥) → H(V̄)))`,
where `H(I^⊥) → H(V̄)` is the quotient by `{(0, i)}` and `χ` is the quadratic character (F21, proof of Lemma 7.10, p. 33, and footnote 3; Gerardin77, Theorem 2.4(b), as corrected there).

A proof route: §3.1 identifies the Heisenberg action. For the Levi subgroup `GL(I) × Sp(V₀)` the generator formulas of §2.3 give `χ(det|_I)` times the smaller normalized Weil action. The unipotent radical has `p₂ = 1`, and its quadratic and mixed phases evaluate to 1 at the zero `I*`-coordinate, so it acts trivially; checking the symmetric shears and off-diagonal generators of the radical suffices. Expressing the result through `p₁, p₂` shows independence of the adapted complement, which is in general not `P`-stable.

Statement API:

- `P` stabilizes `S_{ψ,V}^I` and acts there by `χ(det p₁)` times the Weil representation of `V̄` through `p₂`.
- The formula is intrinsic: it does not depend on the adapted complement `V₀ ≅ V̄`.

**Checks.**

- In the `𝔽₅` plane with `I` the `y`-axis, `m(2)` acts on `I` by `2⁻¹ = 3` and on the invariant line `ℂδ₀` by `χ₅(3) = −1`; with `I` the `x`-axis the invariant line is the constants and the eigenvalue is `χ₅(2) = −1`. A formula without the twist predicts `+1`.
- For `I = 0` the character is trivial and the statement is `Ω_{ψ,V}` itself.
- For `I` Lagrangian the fixed space is a line on which `P` acts by `χ(det p₁)`.

*Needs:* §3.1; §2.3; §2.4; Mathlib `quadraticChar`.

### 3.3 The corrected Gérardin induction formula

With `P, I, V̄` as in §3.2, let `Q = P ⋉ H(I^⊥) ≤ P ⋉ H(V)` and inflate `(χ ∘ det p₁) ⊗ Ω_{ψ,V̄}` to `Q` through `H(I^⊥) → H(V̄)`. Prove that the restriction of `Ω_{ψ,V}` to `P ⋉ H(V)` is isomorphic to `Ind_Q^{P ⋉ H(V)}` of this inflation; the index is `q^{dim I}` and both sides have dimension `qⁿ`. The quadratic character is part of the inducing representation (F21, proof of Lemma 7.10 and footnote 3, p. 33, reporting the correction of Gerardin77, Theorem 2.4(b)).

A proof route: §3.2 makes the invariant space a `Q`-subrepresentation of the stated type; Frobenius reciprocity (`Rep.indResHomEquiv`) gives a nonzero map from the induced representation to `Ω_{ψ,V}`; its image is `H(V)`-stable, hence everything by irreducibility of `S_{ψ,V}`; and the dimensions `q^{dim I} · q^{dim V̄/2} = qⁿ` agree.

Statement API:

- `Ω_{ψ,V}|_{P ⋉ H(V)} ≅ Ind_Q^{P ⋉ H(V)} ((χ ∘ det p₁) ⊗ Ω_{ψ,V̄})`.
- The isomorphism restricts on `H(V)` to the mixed model of §3.1.

**Checks.**

- Dimensions: for `n = 2` and `dim I = 1` over `𝔽₃`, the index is 3 and the inducing representation has dimension 3, giving 9.
- Omitting `χ(det p₁)` fails the `𝔽₅` Lagrangian test of §3.2: the induced representation would contain a vector fixed by `m(2)` in the `δ₀`-line, where `W(m(2))δ₀ = −δ₀`.
- For `I = 0`, `Q = P ⋉ H(V)` and the formula is the identity.

*Needs:* §3.2; §1.3; Tau Ceti `TauCeti.indFDRep`, `TauCeti.finrank_indFDRep`, `TauCeti.indFDRepForgetEquiv`; Mathlib `Rep.indResHomEquiv`.

### 3.4 Isotropic induction for fully ramified characters

In the situation of §1.4, let `U ≤ J` be a subgroup with `θ` trivial on `U ∩ H`, let `Q = {q ∈ J : θ(quq⁻¹u⁻¹) = 1 for all u ∈ U}` (the inverse image of the orthogonal of the image `Ū` of `U` in `J/H`), and let `η` be the representation of §1.4 on `E`. Prove `fullyRamified_isotropicInvariants`: the `U`-invariants `E^U` are stable under `Q`, irreducible under `Q`, and `(dim E^U)² · |HU| = |Q|`. Moreover `θ_U(hu) = θ(h)` is a well-defined `Q`-invariant character of `HU`, the pair `(Q, HU, θ_U)` satisfies the hypotheses of §1.4, `E^U` is its fully ramified representation `η_U`, and `Ind_Q^J η_U ≅ η` (S08, Lemma 5.6, p. 29, Corollary 5.7, p. 30, and Lemma 5.12, p. 33; FS25, Lemma 3.3.4(b), p. 15, for the Heisenberg case).

A proof route: well-definedness of `θ_U` is triviality of `θ` on `U ∩ H`, multiplicativity is invariance of `θ`, and `Q`-invariance is the definition of `Q`. The image `Ū` is isotropic for the commutator pairing because commutators of `U` lie in `U ∩ H`. The pairing is perfect on the finite group `J/H`, so `Q/H = Ū^⊥`, `Ū^{⊥⊥} = Ū`, and `Q/HU = Ū^⊥/Ū` carries a nondegenerate pairing. By §1.4 applied to `(Q, HU, θ_U)`, induction of `η_U` has central character `θ` and dimension `[J : Q] · [Q : HU]^{1/2} = [J : H]^{1/2}`, hence is `η`. In the coset model indexed by `J/Q`, `U` acts on the summand at a coset `gQ ≠ Q` through the nontrivial character `u ↦ θ([g⁻¹, u])`, so only the identity coset contributes `U`-invariants. `Q` is normal in `J` because it contains `H` and `J/H` is abelian, and `HU ≤ Q`; `Q` stabilizes `E^U` because `ρ(u)ρ(q) = ρ(q)ρ(u)θ([u⁻¹, q⁻¹])` and `θ([u⁻¹, q⁻¹]) = 1` for `q ∈ Q`, `u ∈ U`.

Statement API:

- `θ_U` is a well-defined character of `HU`, invariant under `Q`.
- `E^U` is a `Q`-stable, `Q`-irreducible subspace on which `HU` acts by `θ_U`, of dimension `[Q : HU]^{1/2}`.
- `Ind_Q^J (E^U) ≅ η`, and `dim η = [J : Q] · dim E^U`.

**Checks.**

- For `U = 1`, `Q = J`, `E^U = E` and `d² · |H| = |J|`, which is §1.4.
- For `U ≤ H` with `θ(U) = 1`, again `Q = J` and `E^U = E`, since `θ([q, u]) = θ(u)θ(u)⁻¹ = 1` for `u ∈ H`.
- For `J = H(V)` of order `p³` (the `𝔽_p` plane), `H` the centre and `U = {(0, (x, 0))}`, `Q = HU` has order `p²` and `E^U` is a line: `1 · p² = p²`.
- Without the hypothesis `θ(U ∩ H) = 1`, take `U = H` with `θ ≠ 1`: then `E^U = 0`, `HU = H` and `Q = J`, and `0 · |H| ≠ |J|`.
- In the Heisenberg case `θ_U` is the inflation along `H(I^⊥) → H(V̄)` of §3.1, and the theorem recovers `S_{ψ,V}^I ≅ S_{ψ,V̄}`.

*Needs:* §1.4; Tau Ceti `TauCeti.indFDRep`, `TauCeti.finrank_indFDRep`, `TauCeti.Rep.indSubtypeEquivPi_ρ_apply`; Mathlib `Representation.invariants`.

### Examples

In `𝔽₃⁴` with `I` a line: `S_ψ` has dimension 9, the `I`-invariants have dimension 3 and form the Schrödinger representation of the plane `I^⊥/I`, the Levi factor `GL(I) = 𝔽₃ˣ` acts on them through `χ₃(det)` (so `−1 ∈ 𝔽₃ˣ` acts by `−1` times the Weil operator of the plane), and inducing from the index-3 subgroup `P ⋉ H(I^⊥)` returns the 9-dimensional representation.

### Dependencies

Within this roadmap: §0.1, Layer 1, Layer 2. From other roadmaps: MetaplecticAutomorphicForms §0.5. Mathlib and Tau Ceti as in the supplier contracts.

## Layer 4: Fixed vectors and tensor products

### 4.1 The Lagrangian fixed line

Prove `isNormalizedWeil_lagrangian_fixed`: let `W` satisfy `IsNormalizedWeil ψ W`, let `L ≤ X × X*` be Lagrangian, and let `g ∈ Sp(X × X*)` satisfy `gL ⊆ L`. If `f : X → ℂ` is fixed by `schrodingerOp ψ 0 l` for every `l ∈ L`, then `W(g)f = χ(det(g|_L)) f`. The `L`-fixed functions form a line, so `g` acts on it by the scalar `χ(det(g|_L))`.

In the form used by type constructions: if `U ≤ Sp(V)` stabilizes an isotropic `I` and its image in `Sp(I^⊥/I)` stabilizes a Lagrangian `L₀`, the inverse image `L` of `L₀` in `I^⊥` is Lagrangian, `U` stabilizes the line `S_ψ^L`, and acts there by `χ(det(u|_I)) χ(det(u|_{L₀}))`, since `det(u|_L) = det(u|_I) det(u|_{L₀})` along `0 ⊂ I ⊂ L`. If both determinants are squares for every `u ∈ U`, in particular if `U` acts unipotently on `I` and on `L₀`, then `S_ψ^L` consists of `U`-fixed vectors and is nonzero (F21, proof of Lemma 7.10, pp. 33–34; N02, the computation after Theorem 4.3, pp. 22–23).

A proof route: §0.1 and transitivity of `Sp` on Lagrangians (MetaplecticAutomorphicForms §0.9a) reduce to `L = {0} × X*`, whose fixed line is `ℂδ₀`, by Egorov covariance; its stabilizer is generated by the `m(A)` and `u(C)`, which act on `δ₀` by `χ(det A) = χ(det A^{−T})` and `1` (§2.3). Alternatively apply §3.2 to `I` and then to `L₀`. A unipotent endomorphism has determinant 1 and `χ(1) = 1`; no claim about commutator subgroups of general linear groups over small fields is used.

Statement API:

- For `W` normalized, `L` Lagrangian and `g` stabilizing `L`, `W(g)` acts on the `L`-fixed line by `χ(det(g|_L))`.
- The twist is multiplicative along isotropic flags: `χ(det(u|_L)) = χ(det(u|_I))χ(det(u|_{L₀}))`.
- When the two determinants are squares, the line is pointwise fixed and nonzero.

**Checks.**

- With `V₀ = 0` (so `L = I`), the second determinant is that of the zero space, which is 1.
- In the `𝔽₅` plane, the scalar `2` on `I = X × {0}`, that is `g = m(2)`, stabilizes `I`, but its fixed line (the constants) has eigenvalue `χ₅(2) = −1`: invariance requires the square hypothesis.
- For `q = 3`, `g = −1` stabilizes every Lagrangian line and acts on each fixed line by `χ₃(−1) = −1`, matching `W(−1) = −R` on the constants and on `δ₀`.
- For `X = 0`, `L = 0`, `det` on the zero space is 1 and `W(g) = id`.

*Needs:* §2.2; §2.3; §0.1; MetaplecticAutomorphicForms §0.9a; Mathlib `quadraticChar`, `LinearMap.det`, `LinearMap.restrict`; for the flag form, §3.2.

### 4.2 Tensor compatibility along orthogonal sums

For a finite orthogonal sum `V = ⊥ᵢ Vᵢ` of nondegenerate alternating spaces over the same `k`, with a common `ψ`, pull `S_{ψ,V}` back along `∏ᵢ H(Vᵢ) → H(V)`, `(tᵢ, vᵢ) ↦ (Σ tᵢ, Σ vᵢ)`. Prove that it is isomorphic to `⊗ᵢ S_{ψ,Vᵢ}` (central tuples with `Σ tᵢ = 0` act trivially), that this isomorphism intertwines the normalized Weil representations along `∏ᵢ Sp(Vᵢ) → Sp(V)` and hence the Weil–Heisenberg representations, that dimensions multiply to `q^{Σ dim Vᵢ/2}`, and that for a group acting through the factors, a pure tensor of nonzero fixed vectors `vᵢ` is a nonzero fixed vector. The empty family gives the trivial one-dimensional representation (F21, the tensor description before Lemma 7.6, p. 30, and Lemmas 7.8, 7.10, pp. 31–34; S08, Proposition 3.5, p. 14, Corollary 5.7, p. 30, Lemma 5.12, p. 33).

A proof route: in product Schrödinger coordinates `X = ∏ Xᵢ`, functions on `X` are the tensor product of functions on the `Xᵢ`, pure tensors evaluate to products, and the Heisenberg actions match. For two factors, `S⁺ = S₁⁺ ⊗ S₂⁺ ⊕ S₁⁻ ⊗ S₂⁻`; writing `αᵢ = det(Wᵢ|_{Sᵢ⁺})` and `nᵢ = dim Sᵢ`, normalization of each factor gives `det(Wᵢ|_{Sᵢ⁻}) = αᵢ`, so `det(W₁ ⊗ W₂) = α₁^{2n₂} α₂^{2n₁}` and `det((W₁ ⊗ W₂)|_{S⁺}) = α₁^{n₂} α₂^{n₁}`; uniqueness (§2.2) then gives compatibility, also for `𝔽₃`-planes. Induct on the family. Linear functionals `ℓᵢ` with `ℓᵢ(vᵢ) = 1` evaluate the pure tensor to 1.

Statement API:

- The pullback of `S_{ψ,V}` along the sum map is `⊗ᵢ S_{ψ,Vᵢ}`.
- On `∏ Sp(Vᵢ)`, the normalized `W_V` restricts to `⊗ᵢ W_{Vᵢ}`, and likewise for `Ω`.
- A pure tensor of nonzero invariant vectors is a nonzero invariant vector; the empty tensor product is the unit.

**Checks.**

- Two `𝔽₃` planes give a 9-dimensional model, and the product of their standard unipotent subgroups `{u(c)}` fixes the line `ℂ(δ₀ ⊗ δ₀)`.
- For a sum of two `𝔽₃` planes, the twist of §2.2 by an order-3 character on one factor would violate the determinant identity of the sum, so compatibility singles out the normalized factors.
- With different characters `ψ₁ ≠ ψ₂` on the two factors, the central tuple `(t, −t)` acts by `ψ₁(t)ψ₂(−t) ≠ 1` for some `t`, so the product does not factor through the sum map; the common `ψ` is needed.
- The empty family gives `ℂ` with trivial action, of dimension `q⁰ = 1`.

*Needs:* §1.3; §2.2; §2.4; §2.5 (for pullbacks through special isomorphisms); §4.1.

### Examples

For `V = V₁ ⊥ V₂` two `𝔽₃` planes and `U` the product of the upper unipotent subgroups stabilizing the `x`-axes, §4.1 applied factorwise gives the fixed vectors `1` (constants) in each factor, and §4.2 gives the fixed vector `1 ⊗ 1`, the constant function on `𝔽₃²`.

### Dependencies

Within this roadmap: Layers 0–3. From other roadmaps: MetaplecticAutomorphicForms §0.9a. Mathlib and Tau Ceti as in the supplier contracts.

## Downstream consumers

Constructions of supercuspidal types use these statements as their finite inputs: Fintzen's construction of types for tame `p`-adic groups (F21, §7) consumes §1.4, §2.4, §2.5, §3.2–§3.3, §4.1 and §4.2, applied to the Heisenberg quotients of Moy–Prasad filtration subgroups; Fintzen–Schwein's construction of tame supercuspidal representations in odd residue characteristic (FS25, §3.4) consumes §2.2, §2.4 and §2.5; and Stevens's construction for classical groups (S08, §§3, 5) consumes §1.4 and §3.4. Each consumer verifies, for its own groups, the hypotheses stated here: the commutator identifications and nondegeneracy, the equivariance of its special isomorphisms, the lifts `U` with `θ(U ∩ H) = 1`, and the determinant conditions.

## Worked examples

- **The `𝔽₃` plane.** `S_ψ = ℂ³` with basis `δ₀, δ₁, δ₂`; `T` is the shift, `M = diag(1, ζ, ζ²)`, `TM = ζMT`. The normalized Weil representation of `SL₂(𝔽₃)` has `W(u(1)) = diag(1, ζ, ζ)`, `W(m(−1)) = −R` and `W(J) = −iF_ψ`; its even part `S⁺ = span(δ₀, δ₁ + δ₂)` has dimension 2. Twisting by an order-3 character of `SL₂(𝔽₃)` gives another linearization that fails `det W = (det W|_{S⁺})²`.
- **The `𝔽₅` plane.** `κ_J = −1`; `W(m(2))` is `−1` times `δ_a ↦ δ_{2a}`; on the fixed line `ℂδ₀` of the Lagrangian `{0} × 𝔽₅` the element `m(2)` acts by `−1 = χ₅(3)`, which is the quadratic twist that the corrected Gérardin formula records.
- **A cyclic centre of order `p²`.** For the central product of the order-`p³` Heisenberg group with `ℤ/p²`, the faithful character of the centre has a unique irreducible extension of dimension `p`, although the group admits no special isomorphism to a standard Heisenberg group.

## References

- **F21.** Jessica Fintzen, *Types for tame p-adic groups*, Annals of Mathematics 193 (2021), 303–346; cited from arXiv:1810.04198v2, whose page numbers are used. Lemma 7.6 (F21 line 1187), Lemma 7.7 (F21 line 1197), Lemma 7.8 (F21 line 1234), Lemma 7.10 and its proof (F21 lines 1262–1345), footnote 3 on p. 33 (F21 line 1346).
- **S08.** Shaun Stevens, *The supercuspidal representations of p-adic classical groups*, Inventiones mathematicae 172 (2008), 289–352; cited from arXiv:math/0607622v2, whose page numbers are used. Proposition 3.5 (S08 line 572), Lemma 5.6 (S08 line 1247), Corollary 5.7 (S08 line 1272), Lemma 5.12 (S08 line 1392).
- **N02.** Markus Neuhauser, *An explicit construction of the metaplectic representation over a finite field*, Journal of Lie Theory 12 (2002), 15–30; journal page numbers. Lemma 2.1 (N02 line 81), Theorem 3.3 (N02 line 131), Theorem 4.1 (N02 line 185), Theorem 4.2 (N02 line 230), Theorem 4.3 (N02 line 298), Example 4.4 (N02 line 351).
- **FS25.** Jessica Fintzen and David Schwein, *Construction of tame supercuspidal representations in arbitrary residue characteristic*, author manuscript (2025), also arXiv:2501.18553; only the odd-characteristic parts are used. Example 3.1.6 (FS25 line 391), Lemma 3.3.1 (FS25 line 509), Lemma 3.3.4 (FS25 line 544), Construction 3.4.2 (FS25 line 626), Remark 3.4.3 (FS25 line 633), Definitions 3.4.4–3.4.5 (FS25 lines 649–651).
- **Gerardin77.** Paul Gérardin, *Weil representations associated to finite fields*, Journal of Algebra 46 (1977), 54–101; Theorem 2.4. Cited by its locator, through the correction reported in F21, footnote 3.

Notes on the sources. In N02, p. 23, the permutation of `kˣ` induced by a generator is described as even while its sign is computed as `−1`; it is a single cycle of even length `q − 1`, hence odd, and the sign `−1` and the formula `κ(s(a)) = det(a)^{(q−1)/2}` stand (N02 lines 343–346). In FS25, equation (3.3.3), the commutator defining the pairing on `V_P` should read `[x, y]` for the representatives `x, y` of the two cosets (FS25 line 522). Gerardin77, Theorem 2.4(b), omits the twist by the quadratic character of the determinant on the isotropic subspace, as F21, footnote 3, reports; §§3.2–3.3 state the corrected formula. For `Sp₂(𝔽₃)`, FS25 (line 630) notes that Gérardin singles out one of the three linearizations; this roadmap's normalization is the parity-determinant one of N02, Theorem 4.3, defined by the identity of §2.2.
