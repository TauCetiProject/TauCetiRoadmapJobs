# Roadmap: quiver representations, path algebras, and Gabriel’s theorem, part II: multisegment duality

**Summary.** Build the duality of finite integral multisegments from generic opposite-degree commuting operators on complex graded spaces. Identify adjacent generic ranks with a weighted inclusion-chain deficit, realize ramified truncation on an actual operator image, and prove its additivity for the canonical maximal split. The final comparison identifies this geometric dual with the Zelevinsky involution on every real translate of an integral cuspidal line, of arbitrary positive cuspidal rank; the resulting combinatorics supplies the general-linear newform arguments of Atobe–Kondo–Yasuda.

## Scope and ownership

This is the integer-grading and commuting-operator continuation of [QuiverRepresentations](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/RepresentationTheory/QuiverRepresentations). It owns occurrence-sensitive interval operations, the finite-window graded adapter, opposite-degree centralizers, generic duality, admissible images, the adjacent Knight–Zelevinsky formula, and the canonical ramified split. The parent owns path algebras and their representation equivalence (Layer 1), Krull–Schmidt (Layer 2), and finite type-A interval classification as part of Gabriel’s theorem (Layer 5). Those results are suppliers, with the exact uses specified below.

SmoothRepresentationsOfLocalGroups, SR.5.2–SR.5.3, owns smooth GLₙ representations, normalized induction, segment and multisegment representations, highest derivatives, and the general representation involution. The integral-segment adapter on any unitary supercuspidal line with a common real translation, its unramified-character application, and the identification of the representation labels with this geometric dual belong here. EndoscopicTransferAndUnitaryTraceComparison can consume that identification; it supplies no geometric input to this build.

General Aubert duality, local Langlands, conductor tuples, and the unipotent newform induction remain with their existing owners. The rank theorem here concerns adjacent degrees only. The full Knight–Zelevinsky formula for higher powers, Fourier transforms, canonical bases, and variants over finite fields are outside the scope.

General homogeneity belongs to Tau Ceti’s `TauCeti.LinearMap.IsHomogeneous` and `TauCeti.LinearMap.homogeneousSubmodule`, in `TauCeti/LinearAlgebra/Graded/LinearMap`. The coordinate abbreviation `Homogeneous` specializes that predicate to `Space.grade`; no general degree calculus is built here. Tau Ceti’s `Module.End.exists_pow_apply_eq_zero_of_forall_mem_support_lt`, in `TauCeti/LinearAlgebra/End/LocallyNilpotent`, supplies pointwise local nilpotence for a map strictly lowering a well-founded basis weight. The finite-support pair target here requires a single exponent killing the whole map, in both directions, rather than another local nilpotence theorem.

For geometric foundations, reuse the algebraic-group and scheme APIs rather than introduce a second general theory. In particular, Tau Ceti’s `TauCeti.isLocallyClosed_orbit_of_isConstructible`, in `TauCeti/Topology/Algebra/MulAction/Orbit`, supplies local closedness for a constructible orbit in a Noetherian space acted on by homeomorphisms. Its hypothesis still requires a constructibility proof for the graded conjugation action. The Hopf-ideal conormal API concerns closed subgroups at the identity; it is distinct from the orbit conormal bundle needed here. The scoped orbit, incidence, dimension, and fibre comparisons in §2.7 specify the additional geometric interface.

[AlgebraicVectorBundles](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/AlgebraicVectorBundles), L0B and L2B, owns finite locally free sheaves, their rank, geometric total spaces, and the equivalence between the sheaf and geometric bundle presentations. The conormal target here identifies the tangent-annihilator family of this specific orbit action with such a bundle; it does not construct a second general bundle category. The orbit smoothness, dimension and projection comparisons remain scoped targets here, since the bundle equivalence does not assert them.

For finite posets, use Mathlib’s `IsChain` and `IsAntichain`. Establish weak duality for arbitrary chain covers and a disjoint chain partition attaining the antichain bound, then specialize these results to occurrence labels. Compare chain partitions with split-graph matchings and weighted interval chains.

## Conventions

An interval `[b,e]` has integer endpoints with `b ≤ e`, includes both endpoints, and has length `e-b+1`. Empty intervals are represented by absence, never by a reversed pair of endpoints. A multisegment is a finite **multiset** of intervals. Its cardinality counts interval occurrences; its total length counts basis vectors. All block and poset indices distinguish repeated occurrences.

All operator geometry is over ℂ. Spaces are finite dimensional, with a finite-support ℤ-grading. A VN operator `N` raises degree by one; a WL operator `L` lowers it by one. A graded isomorphism preserves every degree and intertwines the operators. For shifts use

```text
V(c)ₐ = Vₐ₋c.
```

Consequently the VN image of `[b,e]` has unshifted type `[b+1,e]`, while its shift by −1 has type `[b,e-1]`. The WL image has unshifted type `[b,e-1]`. In each case a singleton has zero image. On `[0,1]`, `N(v₀)=v₁` and `L(v₁)=v₀`; this fixes the direction independently of any diagram conventions. The corresponding two-coordinate matrix is E₂₁.

Genericity always uses the polynomial Zariski topology on complex points: polynomial nonvanishing sets generate the topology. This topology is transported through finite complex bases, and must be distinguished from the usual topology on ℂ. A zero-dimensional vector space is a one-point affine space, with a nonempty dense open whole space.

The commuting equation is `NL = LN`. The trace pairing identifies degree −1 maps with the linear dual of degree +1 maps. For `N=E₂₁` and `L=E₁₂` in the degrees 0 and 1, `NL-LN=diag(-1,1)`; pairing with the degree-zero matrix `diag(1,0)` gives −1. Thus these two arrows do not commute, and the tangent-annihilator condition detects the commutator with the stated sign.

In the representation comparison only, F is a non-archimedean local field, q is its residue cardinality, and `|ϖ|=q⁻¹`. Fix a unitary irreducible supercuspidal representation ρ of GL_d(F), d≥1, and a real translation c; the arbitrary unramified character `χ:F×→ℂ×` is a rank-one application. Induction is normalized by the positive complex square root of the parabolic modulus. `Z` uses the irreducible-subrepresentation convention, while `L` uses the Langlands quotient convention. The empty multisegment corresponds to the one-dimensional trivial representation of GL₀. On a singleton the two conventions agree. For the line of the trivial character, `Z([0,1])` is the determinant character `|det|¹ᐟ²`, while `L([0,1])` is its Steinberg counterpart; `L([0,0]+[1,1]) = Z([0,1])`. These two-term cases fix the convention for the comparison.

The acceptance signatures in `Suggested.lean` lie in `TauCetiRoadmap.QuiverRepresentationsPartII`. This README also specifies the geometric and representation targets whose constructions need mathematical carriers beyond the simple definitions of that file.

## Exact supplier contracts

### From Mathlib

The baseline is Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`. The following contracts are used in their linear specializations over ℂ.

- `DirectSum.IsInternal` (`Mathlib/Algebra/DirectSum/Basic`): the canonical map from the external direct sum of an additive family of submodules is bijective. Use it to express the grading, not merely pairwise disjointness of the grades.
- `LinearMap.range` (`Mathlib/Algebra/Module/Submodule/Range`): the range submodule has exactly the set-theoretic image of the linear map. An image pair must use this carrier, or a linear model with an injective embedding onto it.
- `Submodule.map` (`Mathlib/Algebra/Module/Submodule/Map`): push a submodule through a linear map by its actual image. This supplies grade intersections and transport of restricted operators.
- `Module.finBasis` (`Mathlib/LinearAlgebra/Dimension/Free`): a finite free module has a basis indexed by `Fin (Module.finrank ℂ V)`. Complex finite-dimensional spaces satisfy the free-module hypothesis.
- `Module.Basis.ofVectorSpace` (`Mathlib/LinearAlgebra/Basis/VectorSpace`): choose a basis of a vector space over a division ring. Combine this with finite-dimensionality when coordinates must be finite.
- `Matrix.rank` (`Mathlib/LinearAlgebra/Matrix/Rank`): rank is the finrank of the range of `mulVecLin`. All matrices here have finite row and column sets and complex coefficients; minor computations must agree with this rank.
- `MvPolynomial.eval` (`Mathlib/Algebra/MvPolynomial/Eval`): evaluation is a ring homomorphism. It defines polynomial zero and nonvanishing loci and turns products of minors into simultaneous conditions.
- `TopologicalSpace.generateFrom` (`Mathlib/Topology/Order`): form the topology generated by the prescribed polynomial nonvanishing sets. No ambient Euclidean instance is substituted.
- `IsChain` (`Mathlib/Order/Preorder/Chain`, definition at line 51) and `IsAntichain` (`Mathlib/Order/Antichain`, definition at line 42): these use `Set.Pairwise`, so only distinct members are tested. Inclusion reflexivity and endpoint-order irreflexivity give the all-pairs descriptions used below.
- `IsIrreducible` (`Mathlib/Topology/Irreducible`): the set is nonempty and preirreducible. This is sufficient for intersections of nonempty open sets after the topology has been supplied; it supplies neither algebraic dimension nor an orbit conormal construction.

### From Tau Ceti

At Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, `TauCeti.QuiverRep`, in `TauCeti/RepresentationTheory/Quiver/Representation/Basic`, is the functor category `CategoryTheory.Paths Q ⥤ ModuleCat k`. Restrict an integer-graded operator to a finite support window and assign its degree-a space to vertex a. Arrows act in the increasing direction for VN and the decreasing direction for WL.

At the same pin, `TauCeti.LinearMap.IsHomogeneous` supplies the degree condition, and `isHomogeneous_def` identifies it with the explicit condition on all homogeneous vectors. Its zero, addition, scalar, and composition API supplies the corresponding closure facts. `homogeneousSubmodule` gives the fixed-degree submodule; the opposite centralizer additionally imposes commutation. This declaration is used directly in the acceptance signatures.

Tau Ceti also supplies these interfaces directly. `TauCeti.quiverRepEquivalence`, in `TauCeti/RepresentationTheory/Quiver/Representation/AsModule`, applies to a finite vertex quiver over a field. In `TauCeti/RepresentationTheory/Quiver/Representation/KrullSchmidt`, `TauCeti.QuiverRep.exists_indecomposable_iso_biproduct` decomposes a pointwise finite-dimensional representation of a finite quiver into a finite family indexed by `Fin n`; `exists_equiv_iso_of_iso_biproduct` matches two such indecomposable families by an index equivalence; `card_iso_eq_card_iso_of_iso_biproduct` preserves each isomorphism-class multiplicity. A finite support window satisfies the finite-vertex and pointwise finite-dimensional hypotheses. Use these declarations when consuming the parent contracts.

The Tau Ceti orbit declaration specified under Scope and ownership is a pinned implementation supplier. Apply it only after establishing its Noetherian-space, translation-continuity, and constructibility hypotheses; do not treat its presence as the dimension and projection theorem of §2.7.

### From TauCetiRoadmap.QuiverRepresentations

The parent roadmap’s Layer 1, `quiverRepEquivalence`, identifies these representations with **left** path-algebra modules, with later arrows multiplying on the left. The adapter must extend by zero outside a finite window, compare different windows by restriction and extension, and preserve graded morphisms and their intertwining equations. No window choice may change an interval label.

From Layer 2 consume `exists_indecomposable_decomposition` and `krullSchmidt_unique`: finite-length modules split into finitely many indecomposable summands, and two such decompositions are matched by isomorphisms. Distinct isomorphic submodules may occur, so multiplicities survive the passage to the multiset of isomorphism classes.

From Layer 5 consume the type-A specialization of the indecomposable/positive-root bijection: on an equioriented finite path, the indecomposables are exactly the one-dimensional interval blocks, with identity arrows inside their support. Reversing orientation gives the same interval supports. The graded adapter in Layer 1 below combines these supplier results; it does not prove a second Gabriel theorem.

### From TauCetiRoadmap.AlgebraicVectorBundles

From AlgebraicVectorBundles L0B and L2B consume `FiniteLocallyFreeSheaf`, `rank`, `totalSpaceScheme`, `totalSpaceEquiv`, and `totalSpaceHomEquiv`: the last identifies a total-space point over a test scheme with a section of the pulled-back sheaf. Finite local freeness and bundle rank are preserved under pullback; the total-space comparisons are natural in the test scheme and in the bundle.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

Consume SmoothRepresentationsOfLocalGroups SR.0–SR.3 for the actual smooth admissible representation category, GLₙ(F), normalized parabolic induction, and its equivariant morphisms. Consume SR.5.2, target *segment-representations*, for arbitrary positive-rank unitary supercuspidal labels, real-endpoint segment and multisegment carriers, and the normalized Z subrepresentations and L quotients. Consume SR.5.3, target *highest-derivative-adapter*, for the involution sending `Z(m)` to `L(m)` and the GL₀ unit. These are roadmap contracts; no baseline-ready representation-valued function is presumed.

More explicitly, a supplier segment records a positive-rank unitary supercuspidal representation and real endpoints differing by a nonnegative integer. Its support is the sequence of real norm twists. Ordered normalized products characterize the `Z` and `L` irreducibles; isomorphism classes depend on the unordered multisegment. Common real translation tensors with `|det|ᶜ`, and normalized induction respects that tensoring. The involution has square the identity, fixes cuspidal singletons, and commutes with a common unramified character twist. Its general construction and classification stay with that supplier. The local adapter and the geometric-label comparison are §5.4 targets, with their proof inputs stated there.

## How to read the build

Layer 0 fixes finite interval combinatorics and one-copy maximal peeling. Layer 1 turns it into finite-support graded operators, with actual images and a reconstruction theorem. Layer 2 supplies commuting coordinates, genericity, and the conormal symmetry establishing duality. Layer 3 makes genericity compatible with images and defines ramified truncation. Layer 4 independently computes adjacent generic ranks by matching and weighted chains. Layer 5 combines reconstruction with those ranks to prove the canonical split, then supplies the representation adapter and the newform example. Layers 3 and 4 meet in the split proof; the representation comparison is unnecessary for the elementary interval identity.

## Layer 0: integer multisegments and maximal peeling

### 0.1 Integral intervals

Define `Interval` by two integers `left` and `right` and a proof `left ≤ right`. Define `Interval.contains [b,e] a` by `b ≤ a ≤ e`, `Interval.included [b,e] [c,d]` by `c ≤ b` and `e ≤ d`, and *Interval.length* by the natural number associated to `e-b+1`. `intSeg b k` denotes `[b,b+k]` for `k:ℕ`. Translation `Interval.shift s c` adds c to both endpoints. `Interval.shorten` returns `[b,e-1]` when `b<e` and `none` for a singleton (AKY §2.1, p.7; §2.3, p.8; §3.1, pp.14–15).

The API identifies intervals with equal endpoints, proves `(s.shift c).contains (a+c) ↔ s.contains a`, makes shortening a singleton return none, and proves every interval has positive length. Inclusion is reflexive and transitive, with antisymmetry supplied by endpoint extensionality. All shortening calls retain their endpoint-order proof.

**Checks.**

- The right endpoint 2 belongs to `[0,2]`; 3 does not. A half-open carrier fails this check.
- `[3,3]` shortens to `none`, while `[3,4]` shortens to `[3,3]`. This distinguishes deletion from keeping an empty interval.
- Translating `[2,4]` by −1 gives `[1,3]`, and preserves its length 3. The opposite shift sign fails.
- Inclusion holds from `[1,1]` to `[0,2]` and fails in the reverse direction; `[3,3]` is not included in `[0,2]`. The interval `[0,2]` has length 3 and shortens to `[0,1]`. A singleton has length 1, and a reversed endpoint pair is not an interval.

*Needs:* integer arithmetic and finite interval supports; the supplier’s interval blocks give the interpretation used in Layer 1.

### 0.2 Multisegments and right truncation

Define `Multisegment := Multiset Interval`. For m, `degreeDimension m a` counts its occurrences containing a, and `totalLength m` sums their positive lengths. Define `rightTruncate` by binding each occurrence to its optional shortening; *shiftMultisegment* maps translation over all occurrences. Choose `occurrenceInterval m : Fin m.card → Interval` with the multiset of values equal to m. Subsequent coordinates use this single occurrence model; changing its order gives a permutation, not fewer copies (AKY §2.3, p.8; §3.1, p.15).

Prove that truncation preserves multiset addition and commutes with translation, and that grade dimensions add under multiset addition. The number of occurrence labels with value s is `m.count s`. Also prove that total length is the sum of all degree dimensions, and that right truncation strictly decreases total length for nonempty m: its decrease is exactly `m.card`. These facts supply the induction measure and the matrix dimensions used later.

**Checks.**

- Truncating `2[1,2]` gives `2[1,1]`. Converting to a set loses one copy.
- Truncating `[0,0]+[1,3]` gives `[1,2]`, with no contribution from the singleton.
- `[0,2]+[1,1]` has degree-1 dimension 2, total length 4, and two occurrence labels. Cardinality and total length are different.
- For `[0,0]+[2,2]`, the multiset of occurrence values is exactly those two distinct intervals, each with count 1. A constant selector fails. Translating `2[2,4]` by −1 gives `2[1,3]`, retaining both copies. The label multiset of `2[0,1]` has count 2 at `[0,1]`; the empty multisegment has no labels. Truncation and translation keep the empty multisegment empty, with length and every degree dimension zero.

*Needs:* §0.1, `Multiset` map, filter, bind, count, and finite sums.

### 0.3 Canonical maximal decomposition

Define `maximalPart m` to contain **one** copy of each distinct interval in m that is maximal for inclusion. Define `remainder m` by multiset subtraction. Thus repeated maximal intervals contribute one copy to the maximal part and leave their other copies in the remainder. This differs from retaining every maximal occurrence (AKY §2.4, p.10, definition immediately before Proposition 2.7).

Prove that the maximal-part count at s is 1 exactly when s occurs in m and every interval of m containing s equals s; otherwise it is 0. Prove that the maximal part plus the remainder is m, and that two members of the maximal part comparable by inclusion are equal. Finite support guarantees that every interval of m is contained in an inclusion-maximal one.

**Checks.**

- `maximalPart (2[0,2]) = [0,2]`, leaving one copy in the remainder.
- The remainder of `[0,2]+[1,1]` is `[1,1]`; containment is decisive even though its endpoints differ.
- Both `[0,0]` and `[2,2]` belong to the maximal part of their sum. The empty multisegment has empty maximal part and remainder.

*Needs:* §0.2, distinct finite support, inclusion from §0.1, and multiset subtraction.

### Examples

For `m=[0,0]+2[1,2]+[2,2]`, the maximal part is `[0,0]+[1,2]` and the remainder is `[1,2]+[2,2]`. After truncation m becomes `[1,1]+[1,1]`, whose maximal part is one `[1,1]`; the other copy remains. This example fixes both multiplicity and the deletion convention before the split theorem (AKY §2.4, p.10; Lemma 3.6, p.19).

### Dependencies

Finite multisets and integer arithmetic from Mathlib. The interpretation by finite type-A blocks uses the parent contracts under Exact supplier contracts.

## Layer 1: graded operators, shifts, and actual images

### 1.1 Finite graded complex spaces

Define a finite-support graded `Space` as `V=⊕ₐ Vₐ` with finite total complex dimension. A coordinate presentation consists of `n:ℕ` and `degree:Fin n→ℤ`, with carrier `Space.Carrier S := Fin n→ℂ`; `Space.grade a` is the submodule of coordinate vectors vanishing outside the basis indices of degree a. `Space.dimension a` is its complex finrank. Every abstract finite-dimensional grading has such a presentation by choosing a basis in each nonzero grade (AKY §3.1, p.14).

Prove `Space.internal` for the grade submodules, that only finitely many grades are nonzero, and that each grade’s finrank is the number of coordinates of that degree. `constantSpace n a` puts all n coordinates in grade a. The coordinate model permits arbitrary grade multiplicities; it does not assume one-dimensional grades. Its API identifies the carrier with the stated coordinate function space and grade membership with vanishing of every coordinate of different degree.

**Checks.**

- `constantSpace 2 3` has degree-3 dimension 2.
- The same space has degree-4 dimension 0; its grade-4 submodule is bottom.
- For `constantSpace 0 0`, even the grade-0 submodule is bottom, and the internal direct sum is the zero space.

*Needs:* `DirectSum.IsInternal`, `Module.finBasis`, and finite-dimensional submodules.

### 1.2 VN and WL pairs

Define `Direction` with just `up` and `down`, with `Direction.step` equal to +1 and −1 respectively; reversal interchanges these two directions. A `Pair S d` bundles an endomorphism with `Homogeneous S T d.step`, meaning `T(Vₐ) ⊆ Vₐ₊ε`. Write `VN S` and `WL S` for the two cases. A `PairIso P Q` is a complex linear equivalence preserving grades in both directions and satisfying `e(Tv)=T'(ev)`; *Pair.Isomorphic* means such an equivalence exists. *zeroPair* has the zero operator in either direction (AKY §3.1, pp.14–15).

Prove `Pair.nilpotent` with the uniform conclusion `∃ k:ℕ, T^k=0`, since repeated applications leave the finite support window; this strengthens a pointwise exponent to one exponent for the entire finite-dimensional map. Prove that graded intertwining isomorphism is reflexive and transitive. The graded condition is part of isomorphism even when both operators vanish. Reflection of degrees by `a↦-a` interchanges VN and WL and sends `[b,e]` to `[-e,-b]`.

**Checks.**

- The standard VN arrow on `[0,1]` sends `(1,0)` to `(0,1)` and `(0,1)` to zero; its square is zero while the arrow is nonzero. The WL arrow has the reversed action, also square zero.
- Zero VN singletons supported at 0 and 1 are not graded-isomorphic, although their ungraded vector spaces agree.
- The nonzero VN arrow on `[0,1]` is not homogeneous of degree −1. The zero operator is homogeneous in both directions, so it cannot serve as this negative control.
- On the same grades 0 and 1, the zero operator and E₂₁ are not pair-isomorphic: an invertible intertwiner would send a nonzero arrow to zero. Grade preservation alone would admit the identity map.
- Zero maps are homogeneous with steps +1 and −1 and are nilpotent with exponent 1. On a nonzero single grade, the identity has degree 0 and fails the degree +1 condition. The two allowed steps have values +1 and −1; a direction of step 0 is excluded.

*Needs:* §1.1 and Tau Ceti’s homogeneous-map API; nilpotence follows directly from the finite grading support.

Construct the *finite-window equivalence*: for integers u≤v, the category of finite-dimensional graded pairs in either fixed direction, vanishing outside [u,v], is equivalent to the category of pointwise finite-dimensional representations of the correspondingly oriented finite type-A path with vertices u,…,v. Restriction and extension by zero are compatible with enlargement of the window, preserve graded morphisms, and retain their intertwining equations. This construction uses pairs and homogeneous maps, independently of interval classification (AKY §3.1, p.15; QuiverRepresentations Layer 1).

**Checks.**

- A one-vertex window [0,0] gives a vector space with zero arrow; extending it to [−1,1] adds two zero spaces.
- E₂₁ on grades 0 and 1 gives the increasing path arrow with value 1; the decreasing orientation instead uses E₁₂.
- Enlarging [0,1] to [−1,2] and restricting back recovers both arrow and morphism, with zero boundary maps. A wraparound arrow fails.

*Needs:* §1.2’s pair definition and QuiverRepresentations Layer 1; this equivalence precedes the interval type in §1.3.

### 1.3 Standard interval pairs

Construct `standardSpace m` with basis indexed by valid pairs `(occ,a)`, where occ is an occurrence label and a belongs to its interval. Define `standardVector m occ a` to be that basis vector when valid and zero otherwise. `standardPair m up` advances within each block and kills its last vector; `standardPair m down` retreats within each block and kills its first vector. Define `pairType P` through the unique interval multiset of the supplier decomposition (AKY §3.1, p.15).

Require the standard-space grade-dimension formula and the standard-space total-dimension formula, respectively identifying its degree dimensions and total dimension with §0.2. The standard-pair type formula recovers m in either direction. The increasing-arrow formula and the decreasing-arrow formula give the stated arrow formulas on every standard vector. The nonvanishing criterion for standard vectors detects membership in the occurrence interval, the standard-vector basis identity identifies a valid vector with *standardBasis*, and the standard-vector grade-membership assertion also covers invalid labels whose vectors are zero. These equations fix the basis used for every subsequent centralizer block.

**Checks.**

- The block `[0,2]` has total dimension 3.
- `2[0,1]` has degree-0 dimension 2, with two different occurrence basis vectors.
- The WL singleton `[2,2]` has zero operator and type `[2,2]`; reversing arrows does not translate the support.

*Needs:* §§0.2, 1.2, including its finite-window equivalence, and the parent’s Krull–Schmidt and type-A interval contracts.

### 1.4 Finite-window interval comparison

For two pairs in the **same direction**, prove that they are graded-isomorphic if and only if their *pairType* multisets agree. Prove the grade-dimension formula for interval types: the count of intervals containing a equals the dimension of the grade-a subspace. Transport the parent classification along §1.2’s finite-window equivalence, using its extension-by-zero and window-enlargement compatibility for independence of the chosen window and reversed orientation (AKY §3.1, p.15).

For increasing operators let `R(i,j)` be the rank of `N^(j-i):Vᵢ→Vⱼ` for `i≤j`, with `R(i,i)=dim Vᵢ` and zero outside a support window. In the standard decomposition it counts all intervals containing `[i,j]`; hence the multiplicity of `[i,j]` is

```text
R(i,j) - R(i-1,j) - R(i,j+1) + R(i-1,j+1).
```

Use integer differences before identifying the nonnegative multiplicity. The analogous WL ranks run from `Vⱼ` to `Vᵢ`. This rank description also proves that a finite path-rank table determines the type.

*Needs:* §1.3 and the three parent supplier contracts. The rank table uses Mathlib `Matrix.rank` after homogeneous bases are chosen.

### 1.5 Shifts and image pairs

Construct `shiftSpace S c` and `shiftPair P c` using the standing shift convention. Construct `imagePair P` on the **actual** range of T, with grades `range T ∩ Vₐ` and operator the restriction of T. A coordinate `ImageModel P` carries a space, its pair, and an injective linear `embed` whose range is `LinearMap.range T`; its image of each grade is exactly `range T ∩ Vₐ`, and it intertwines the operators. Iterating this construction gives `iteratedImage P k`, embedded onto `range (T^k)`. A multisegment label alone is insufficient to supply an image model (AKY §3.1, pp.15–16; Lemma 3.3, p.16).

Prove the translation formula for interval types: both endpoints translate by c. For VN prove the VN image-type formula, with type of `imagePair P` shifted by −1 equal to `rightTruncate (pairType P)`. For WL prove the WL image-type formula, with the same truncation equality **without** shifting. Images of singletons are zero, and these statements include the empty pair.

**Checks.**

- The unshifted VN image of `[0,2]` is `[1,2]`, with zero degree-0 dimension.
- Shifting that image by −1 gives `[0,1]`, with degree-0 dimension 1.
- The unshifted WL image of `[0,2]` is `[0,1]`. Its degree-2 subspace is zero, and the singleton image in either direction is zero.

*Needs:* §1.4, `LinearMap.range`, and `Submodule.map`.

### 1.6 Reconstruction from a VN image

Prove reconstruction from a VN image: if two VN pairs have equal dimensions in every grade and their **unshifted** image pairs are graded-isomorphic, then the original pairs are graded-isomorphic (AKY Lemma 3.1, pp.14–15).

The image ranks determine `R(i,j)` for `i<j`: the grade-`i+1` component of the image is `N(Vᵢ)`, and the relevant restricted power is `N^(j-i-1)` from that component to grade j. The given dimensions determine the diagonal ranks. Apply the multiplicity differences of §1.4 and classification. This formulation avoids choosing incompatible preimage lifts. Equality of ungraded total dimensions alone would not recover singleton positions.

*Needs:* §§1.4–1.5.

### Examples

The pair for `[0,2]+[1,1]` has dimensions `(1,2,1)` in degrees `(0,1,2)`. Its unshifted VN image has type `[1,2]`. The diagonal dimensions distinguish it from `[0,2]`, whose image is the same. Conversely the rank table is `R(0,1)=R(1,2)=R(0,2)=1`, and its finite differences recover exactly one `[0,2]` and one `[1,1]` (AKY Lemma 3.1, pp.14–15).

### Dependencies

Layer 0, finite-dimensional linear algebra, actual ranges, and the parent representation, Krull–Schmidt, and type-A classification contracts.

## Layer 2: centralizers and generic multisegment duality

### 2.1 Opposite-degree centralizers

For a pair `P=(V,T)` of direction ε, define `centralizer P` as the complex submodule of endomorphisms S that have degree −ε and satisfy `ST=TS`. Define `oppositePair P S` using that same S on the same grading. Commutativity preserves the actual range of T, so define the linear map `restrictCentralizer P` by restriction, transported through the chosen image embedding (AKY §3.1, pp.15–16).

Require the opposite-pair operator formula, identifying its operator with S; the centralizer commutation law, giving the equation in the endomorphism algebra; and the restriction-embedding compatibility, saying `embed (S_restricted v)=S(embed v)`. Conjugation by a graded intertwining isomorphism gives a linear equivalence of these submodules. Thus image restriction and centralizer coordinates cannot depend on an arbitrary basis choice.

**Checks.**

- The zero map is in the opposite centralizer of every zero VN pair, including the zero space.
- The opposite-degree centralizer of the single VN chain `[0,2]` is zero: a descending nonzero arrow would violate commutativity at a boundary.
- The VN pair `[0,0]+[1,1]` has a one-dimensional opposite centralizer, consisting of the arbitrary scalar map from degree 1 to degree 0. Ordinary full endomorphism centralizers give the wrong dimension.

*Needs:* §1.5 and linear submodules of the endomorphism space.

### 2.2 Commuting block coordinates

Prove the centralizer coordinate theorem for the standard VN pair of any m. For a source interval `[t,u]` and target interval `[s,v]`, a degree −1 commuting block has one free complex scalar exactly when

```text
s < t ≤ v+1 ≤ u.
```

Write `Precedes target source` for these inequalities. In an allowed block that scalar multiplies the target vector of degree `a-1` whenever it exists; vectors outside the target interval are zero. Every allowed **ordered occurrence pair** has its own independent scalar, even if its endpoints agree with another pair. The resulting coefficient map is a linear equivalence between the centralizer and the complex function space on all allowed occurrence pairs (MW II.1, p.148; Lemma II.4 and proof, pp.160–161).

Extend coefficients by zero outside both blocks. The equation `NL=LN` equates adjacent coefficients where both compositions are defined. At the two ends it forces the strict endpoint inequalities and the overlap inequality. Conversely constant coefficients on an allowed overlap satisfy the equation, giving both directions of the parameterization. At a cut `a+1→a`, an allowed occurrence pair contributes precisely one matrix entry if both corresponding basis vectors exist.

A self-block is forbidden. Adjacent singletons `[a,a]` and `[a+1,a+1]` admit exactly one block in the descending direction. With two copies in degree a and three in degree a+1 there are six independent coordinates. Dropping occurrence labels, reversing source and target, or allowing equality of the left endpoints fails these controls.

**Checks.**

- `Precedes [0,0] [1,1]` holds, and the corresponding block sends the degree-1 basis vector to the degree-0 basis vector.
- `Precedes [0,2] [0,2]` fails: equal left endpoints forbid a self-block.
- `Precedes [0,0] [2,2]` fails despite both endpoints increasing: the overlap inequality is necessary.

*Needs:* §§1.3, 2.1.

### 2.3 Surjective restriction to a VN image

Prove surjectivity of centralizer restriction in the increasing direction: for every VN pair, restriction to its unshifted VN image is a surjective complex linear map of opposite-degree centralizers (AKY Lemma 3.2(1), p.16; MW Lemma II.4, pp.160–161).

In the standard decomposition, the nonzero images of target `[s,v]` and source `[t,u]` are `[s+1,v]` and `[t+1,u]`. An allowed image coefficient satisfies `s+1<t+1≤v+1≤u`, which implies the original coefficient criterion `s<t≤v+1≤u`. Lift its scalar on that original block and set unused coordinates to zero. The restriction formula in §2.1 verifies the lift. Deleted singleton blocks create no extra coefficients, and a zero image has the unique zero centralizer element. No genericity hypothesis is required.

*Needs:* §2.2 and the actual image dictionary of §1.5.

### 2.4 Surjective restriction to a WL image

Prove surjectivity of centralizer restriction in the decreasing direction with the same statement for a WL pair (AKY Lemma 3.2(2), p.16).

Reflect all grades by `a↦-a`. Both operator degrees change sign, the interval `[b,e]` becomes `[-e,-b]`, and actual range embeddings remain the same underlying linear maps. Apply §2.3 to the reflected pair and transport back. This proves the descending assertion without applying the VN block inequalities to unreversed endpoints.

*Needs:* §§1.2, 1.5, 2.3.

### 2.5 Polynomial Zariski topology

Define `polynomialTopology n` on `Fin n→ℂ` by generating from sets `D(p)={x | eval x p≠0}` for multivariate complex polynomials p. Transport it to a finite-dimensional vector space through a basis. On centralizers call the result *centralizerTopology*; `ZariskiOpenDense P U` means that U is both open and dense for that topology (AKY §3.1, p.16; Lemma 3.4, p.17; MW Remark II.6.1, p.163).

Prove openness of polynomial nonvanishing loci and basis independence of the centralizer topology. Invertible linear coordinate changes pull polynomial functions back to polynomial functions. Over the infinite field ℂ, a nonzero polynomial has a nonzero evaluation, by induction in the variables. A finite product of nonzero polynomials is still nonzero. Prove `polynomial_irreducible`, the irreducibility of the whole coordinate affine space. Its transport gives irreducibility of centralizers and the finite-intersection theorem, including an empty family of opens.

Prove preservation of open dense sets under surjective linear inverse image: a surjective complex linear map between finite-dimensional centralizers pulls back an open dense set to an open dense set. A linear section and kernel complement identify the domain with a product, so the pulled-back nonvanishing conditions are nonzero polynomial conditions. For an affine subspace, intersection with a dense open is dense there **provided the intersection is nonempty**; a dense open may avoid a particular subspace entirely.

**Checks.**

- `{z:ℂ | z≠0}` is polynomial Zariski open, as the nonvanishing locus of the coordinate polynomial.
- It is dense, though it omits the origin. This tests genericity against equality with the whole space.
- The usual complex unit disk `{z | ‖z‖<1}` is not polynomial Zariski open. In one variable every proper algebraic closed set is finite, whereas its complement is infinite.
- In dimension zero the whole one-point space is open, dense, and irreducible; a nonzero constant polynomial has that whole nonvanishing locus.

*Needs:* `MvPolynomial.eval`, `TopologicalSpace.generateFrom`, `IsIrreducible`, and the two basis contracts; §2.1 for the centralizer specialization.

### 2.6 Generic commuting type

Construct `genericType P` by maximizing all graded path ranks of an opposite operator in `centralizer P`. Within a finite support window only finitely many paths are relevant, with zero paths included as grade dimensions. Each rank has an attained maximum; an attained maximal minor gives a nonzero polynomial. Their rank-maximal loci have nonempty dense open intersection. The rank differences of §1.4 assign one interval multiset to that intersection (Z98 §2, p.410; AKY §3.1, p.16).

Define `genericLocus P` to contain exactly the opposite operators of that type. Prove openness and density of the full generic-type locus: this whole type locus is open dense, because its ranks are exactly the attained maxima. Prove invariance of generic type under graded conjugation, and uniqueness of an open dense type: a type with open dense locus must equal the selected type. The intersection argument supplies uniqueness even for a zero-dimensional centralizer.

Prove translation compatibility of generic type: for either direction and every integer c, `genericType (shiftPair P c) = shiftMultisegment (genericType P) c`. Prove translation compatibility of the generic locus under the identity on underlying endomorphisms: the same opposite map is generic before and after shifting. Reindexing all grades preserves the commuting submodule, its polynomial topology, and every path rank. These targets make genericity available on the shifted image pairs used in §3.5 (AKY §3.1, p.15, shift convention; Proposition 3.5, pp.18–19).

**Checks.**

- The VN chain `[0,2]` has generic opposite type `[0,0]+[1,1]+[2,2]`; its centralizer is zero.
- VN `[0,0]+[1,1]` has generic opposite type `[0,1]`. The generic locus is the nonzero scalar locus, so the zero opposite map is excluded.
- For VN `[0,0]+[2,2]`, the generic opposite type is unchanged: the missing middle grade forces all opposite maps to vanish.

*Needs:* §§1.4, 2.1, 2.5 and `Matrix.rank`.

### 2.7 Finite-orbit conormal symmetry

Prove generic conormal symmetry: if P is a VN pair and `L∈genericLocus P`, then the generic VN type commuting with `(V,L)` equals `pairType P` (Z81 §4.3 and Proposition 4.4, original pp.20–21; MW Corollary II.7, p.169).

The geometric construction and its necessary comparisons are explicit. For a fixed finite graded dimension vector put `G=∏ₐ GL(Vₐ)`, `E₊=⊕ₐ Hom(Vₐ,Vₐ₊₁)`, and `E₋=⊕ₐ Hom(Vₐ₊₁,Vₐ)`. Realize these as complex affine spaces and the determinant-open algebraic group acting by conjugation. Define `commutingIncidence={(N,L) | NL=LN}` as the zero locus of its matrix polynomial equations. The pairing `tr(NL)` is nondegenerate block by block. Differentiating conjugation gives `X↦[X,N]`; the equality `tr([X,N]L)=tr(X[N,L])` identifies its annihilator with the centralizer fibre.

The target includes the following scoped geometric statements, all for this particular finite-dimensional action, with the usual algebraic dimension rather than a purely topological surrogate:

- graded-orbit geometry: each orbit is smooth, locally closed, and irreducible, and its tangent space at N is the image of `X↦[X,N]`. Establish constructibility before using the orbit supplier; identify the stabilizer and the differential over characteristic zero.
- the conormal-incidence bundle comparison: over an orbit O, the incidence fibre is its tangent annihilator, forming a conormal vector bundle of rank `dim E₊-dim O`. The trace identification must agree with the polynomial point model.
- the conormal-closure dimension theorem: the closure `C_O` of that bundle is irreducible of dimension `dim E₊`. This uses the dimension of a vector bundle over the orbit and the invariance of dimension under dense closure.
- the incidence-component theorem: the finitely many `C_O` are exactly the incidence components. The interval classification gives finitely many orbits; their conormal bundles cover the incidence, and the equal dimensions prevent proper containment of distinct closures.
- the opposite conormal-closure comparison: projecting a component to `E₋` has image closure with one dense orbit O′. The projection is constructible and G-invariant; a finite orbit stratification of an irreducible closure yields the unique dense orbit. Its inverse image is dense open in the component. On that inverse image the commuting equation places it in the opposite conormal bundle. Closure containment, irreducibility, and equal dimension then identify `C_O` with the opposite conormal closure `C_O′`.
- the generic-fibre comparison: the intersection of O′ with the fixed centralizer fibre over any N in O is nonempty open dense. Use the homogeneous associated-bundle presentation `G×_{G_N}centralizer(N)` to pass from the dense open over O to its fibre; transitivity ensures that every fibre is met. Compare this orbit locus with the rank-defined *genericLocus*.

Swapping `E₊` and `E₋` now gives the required symmetry. Z81 applies Pyasetskii’s finite-orbit theorem; the scoped orbit, bundle, dimension, component, projection, and fibre statements above are the mathematical ingredients to establish for that application. Polynomial irreducibility by itself cannot replace them. They require their algebraic carriers and compatibility maps before this proof is available as a Lean theorem.

**Checks.**

- For the zero graded space, G is the trivial group, both operator spaces are points, the incidence has one component of dimension zero, and the fibre is the whole point.
- With one coordinate in each of degrees 0 and 1, write the up and down arrows as scalars n and l. The incidence is `nl=0`, with the two coordinate-axis components. The nonzero up orbit corresponds to the zero down orbit and conversely.
- On a single VN chain `[0,2]`, the opposite fibre is a point. Its generic type is the three singleton type, whose generic VN commuting type returns the original chain. The commutator witness in Conventions excludes anticommuting equations.

*Needs:* §§1.4, 2.1, 2.5–2.6; the actual algebraic-action and conormal interface specified in this subsection. The constructible-orbit supplier is identified under Scope and ownership.

### 2.8 Multisegment duality

Define `dual m := genericType (standardPair m up)`. Prove the VN generic-dual identification for any VN pair P and the WL generic-dual identification for any WL pair P, both asserting `genericType P = dual (pairType P)`. Prove grade-dimension preservation under duality, and hence total-length preservation (AKY §3.1, p.16; Z98 §2, p.410).

Prove translation compatibility of duality: `dual (shiftMultisegment m c) = shiftMultisegment (dual m) c` for every m and integer c, using translation compatibility of generic type and the shifted standard-pair isomorphism. For example, translating `[0,0]+[1,1]` by −2 translates its dual `[0,1]` to `[-2,-1]`.

For the VN statement use conjugacy to the standard pair. For the WL statement transpose operators to the graded vector-space dual, keeping the dual of `Vₐ` in grade a. Transposition switches operator directions, preserves interval labels and the commuting equation, and is an algebraic linear isomorphism of the centralizer coordinate spaces. This establishes the WL assertion independently of involutivity. Grade reflection, in contrast, negates the endpoints and is used only with its explicit interval transformation.

**Checks.**

- `dual [0,2] = [0,0]+[1,1]+[2,2]`.
- `dual ([0,0]+[1,1]) = [0,1]`, so duality is not additive on arbitrary sums.
- `dual ([0,0]+[2,2]) = [0,0]+[2,2]`. The empty multisegment is fixed, and a singleton stays at its original degree.

*Needs:* §§1.3, 2.6.

### 2.9 Duality is involutive

Prove involutivity of duality: for every finite integral multisegment m, `dual (dual m)=m` (Z81 §4.3, original p.20; MW Corollary II.7, p.169). Choose L in the nonempty generic locus of its standard VN pair, apply §2.7, and then identify the opposite generic type using §2.8. The empty case uses the one-point centralizer and requires no positive dimension hypothesis.

*Needs:* §§2.7–2.8.

### Examples

For `m=2[0,0]+3[1,1]`, the centralizer is the full `2×3` matrix space. Generic rank is 2, so the dual is `2[0,1]+[1,1]`. Its opposite generic type is again the original five singleton occurrences. This simultaneously tests multiplicity, rectangular rank, and the fixed dimension vector (MW Lemma II.4, pp.160–161; Z98 §2, p.410).

### Dependencies

Layer 1; finite complex linear algebra; polynomial evaluation, finite bases, generated topology, and matrix rank. Conormal symmetry additionally requires the scoped algebraic geometry of §2.7. The adjacent rank argument in Layer 4 does not depend on that symmetry.

## Layer 3: admissible images and ramified truncation

### 3.1 Admissible commuting images

For a VN pair `P=(V,N)` and `L∈centralizer P`, define `Admissible P L` by `pairType(V,L)=dual(pairType P)`. Define `onOppositeImage P L` as the VN pair on the **unshifted actual image** of L; commutativity makes this image N-stable. Define `imageAdmissibleLocus P` to require admissibility on V and also

```text
pairType(Im L, L|Im L) = dual(pairType(Im L, N|Im L)).
```

The second equality is a separate condition on the restricted triple (AKY §3.1, unnumbered paragraph before Lemma 3.3, p.16; Lemma 3.4, p.17).

Prove equivalence of admissibility and genericity, the opposite-image embedding equation, and the implication from image-admissibility to admissibility. The embedding equation is `embed(N_restricted v)=N(embed v)`. Neither the image condition nor this equation is supplied by selecting an interval label alone.

**Checks.**

- The zero commuting triple on the zero space is admissible, and its image is admissible.
- For VN `[0,0]+[1,1]`, zero L is not admissible: its WL type has two singletons instead of the dual chain.
- For the VN chain `[0,2]`, zero L is admissible and image-admissible; its centralizer has no nonzero map and its opposite image is zero.

*Needs:* §§1.5, 2.1, 2.8–2.9.

### 3.2 Generic admissibility on the opposite image

Prove openness and density of image-admissibility for every VN pair over ℂ: the subset `imageAdmissibleLocus P` is Zariski open dense in its centralizer (AKY Lemma 3.4, p.17).

For nonemptiness, choose generic L commuting with N. By the downward restriction surjection, pull the generic VN locus on `Im L` back to the centralizer of L. Intersect with its generic VN locus on V, obtaining N′ for which both triples are admissible. Involutivity identifies N′ and N as graded-isomorphic. Conjugating L by that isomorphism produces an image-admissible operator for the original N.

For openness, restrict first to the generic WL-type locus on V. There the WL image type is the fixed `rightTruncate (dual (pairType P))`. Image admissibility requires the finitely many VN path ranks on that WL image to attain their generic maxima. On a nonzero-minor chart for L, select independent image columns as a homogeneous basis. The restricted matrices have rational entries whose denominator is the chosen nonzero minor. Clear these denominators within the chart to give polynomial open conditions. Their union is open in the generic locus; nonemptiness and irreducibility imply density. No division occurs on a chart where the selected minor is zero.

*Needs:* §§3.1, 2.4–2.5, 2.9.

### 3.3 Simultaneous genericity on iterated VN images

Prove simultaneous genericity on iterated images: for every VN pair there is an open dense set of L in its centralizer that is image-admissible on V and whose restrictions to **every** unshifted `Im N^k` are image-admissible, hence generic. The same original L induces all those restrictions (AKY §3.2, p.18, simultaneous choice preceding Proposition 3.5).

The predicate `simultaneousRestrictions P L` records an injective graded embedding of each restricted pair onto `range (N^k)`, an intertwining equation for N, and the equation identifying its opposite map with the restriction of L. Iterating §2.3 gives a surjective restriction map to each image centralizer. Pull back the image-admissible dense opens from §3.2 and take their finite intersection. Nilpotence bounds the number of nonzero images; later zero images impose an automatic condition. The stronger image-admissibility condition is needed for the second image in §3.5, not merely opposite genericity on the ambient space.

*Needs:* §§1.2, 1.5, 2.3, 2.5, 3.2.

### 3.4 Ramified multisegments

Define

```text
ram(m) = dual(rightTruncate(dual(m))).
```

Prove the dual of ramification formula, giving `dual(ram m)=rightTruncate(dual m)`, and the VN-image realization of ramification: for an image-admissible L commuting with a VN pair of type m, the unshifted VN pair `(Im L,N|Im L)` has type `ram m`. Prove the total-length bound for ramification, since its total length is the dimension of an actual subspace of V (AKY §2.3, p.8; §3.2, p.18).

Prove translation compatibility of ramification, commuting ramification with every integer translation, from translation compatibility of duality and right truncation. The same opposite map is image-admissible on a pair and on its shift: the range carrier stays fixed while all its grades are reindexed. This follows from translation compatibility of the generic locus, the translation formula for interval types, and translation compatibility of duality, and applies in particular to the shift by −1 in §3.5.

The WL image type is `rightTruncate(dual m)` by §1.5. The second admissibility equality and dual involutivity give precisely the claimed VN type. The operation is defined on integral intervals independently of representations or a local field.

**Checks.**

- `ram [0,2]` is empty: the dual consists of three singletons and truncation deletes all three.
- `ram ([0,0]+[1,1])=[0,0]`. Its length is 1, not 2, and its degree is 0, not 1.
- `ram ([0,0]+[2,2])` is empty. The empty multisegment also has empty ramification.

*Needs:* §§1.5, 2.9, 3.1–3.2.

### 3.5 Ram and right truncation commute

Prove commutation of ramification with right truncation for every finite integral m:

```text
ram(rightTruncate m) = rightTruncate(ram m).
```

Choose one L satisfying §3.3. For the left side take the VN image, shift it by −1, and then take the image of restricted L. For the right side take the WL image first, then its VN image and shift by −1. Both are actual copies of `Im(LN)(-1)=Im(NL)(-1)`, with restricted N. Image admissibility on V and `Im N` identifies their ramified types. The common shift is necessary; equality of unshifted ranges alone would give the wrong endpoints (AKY Proposition 3.5 and proof, pp.18–19).

*Needs:* §§1.5, 2.6, 2.8, 3.3–3.4, including their shift compatibilities.

### Examples

For `[0,0]+[1,1]`, right truncation is empty; its ramified type `[0,0]` also truncates to empty. For the VN chain `[0,2]`, ramification vanishes before and after truncation. For `[0,1]+[1,2]`, the generic opposite image has VN type `[0,1]`: truncating it gives `[0,0]`, the same result as ramifying the truncated singleton sum `[0,0]+[1,1]`. These cases detect the VN shift (AKY Proposition 3.5, pp.18–19).

### Dependencies

Layers 1–2, with both centralizer restriction surjections and conormal involutivity; finite intersections of dense opens. All image statements use the actual range embeddings of Layer 1.

## Layer 4: weighted chains and adjacent generic ranks

### 4.1 Cut multisegments and weighted inclusion chains

For `a:ℤ` define `cutPart m a` to retain every occurrence containing a **or** a+1. Write this full submultisegment as `mₐ`. Define `IsInclusionChain A` as Mathlib’s `IsChain Interval.included (A : Set Interval)`, equivalently pairwise inclusion comparability. Weight A by `∑_{s∈A} mₐ.count s`, and define `chainWeight m a`, written `Eₐ(m)`, as the maximum of that weight over chains in the distinct support of mₐ. The empty chain is allowed. Define `adjacentDualCount m a` as the number of occurrences of `dual m` containing **both** a and a+1 (AKY §3.3, Proposition 3.7, pp.19–20).

Prove that a retained interval has its full occurrence count and an omitted interval has count zero. Prove that chain weight is at most the cut cardinality, with `Eₐ(m)=0` exactly when mₐ is empty. The maximum is finite: filter the powerset of the support by the chain predicate, sum full occurrence counts, and take the natural-number maximum. Counting the support size gives a different invariant. The chain API gives the empty and singleton chains and excludes any set containing inclusion-incomparable intervals.

**Checks.**

- `[0,0]+[1,1]` has cut cardinality 2 at a=0, although neither interval contains both endpoints.
- For `2[0,1]+[1,1]`, `E₀=3`: both distinct intervals form an inclusion chain and all copies contribute.
- For `[0,0]+[1,1]`, `E₀=1`; the two intervals are not comparable by inclusion.
- Outside the support, for example a=3 for this last multisegment, the cut and its maximum are both zero. The empty interval set is an inclusion chain, as is `{[0,2],[1,1]}`, whereas `{[0,0],[1,1]}` is not.

*Needs:* §§0.1–0.2 and §2.8 only for *adjacentDualCount*.

### 4.2 The occurrence endpoint poset

For any multisegment q, use its occurrence labels `Fin q.card`. Define `endpointBefore q x y` by strict increase of both endpoints. This is a strict partial order. Equal intervals at different labels are incomparable; equality of just one endpoint also prevents strict comparison (MW II.1, p.148; Lemma II.4, pp.160–161; DIL Theorem 3, pp.6-1–6-2).

Define `IsEndpointAntichain q A` as Mathlib’s `IsAntichain (endpointBefore q) (A : Set (Fin q.card))`, equivalently absence of any endpoint-order edge in A, and `antichainWidth q` as its largest feasible cardinality. Define `IsEndpointMatching q E` for a finite set of ordered pairs by requiring each pair to be an edge and both coordinate projections to be injective on E. `matchingNumber q` is the largest feasible edge count in this split bipartite graph. A vertex can be used once on the left and once on the right, since those are different roles (DIL split-poset construction, p.6-3).

Prove that the endpoint relation is irreflexive and transitive and that matching size is at most the occurrence cardinality. Identify a bound on either maximum with that bound on every feasible matching or antichain. Prove that permutation of occurrence labels preserves both maxima. Empty feasible sets give value zero for the empty multisegment.

**Checks.**

- For `2[0,1]`, width is 2 and matching number is 0. Making equal copies comparable destroys this value.
- For `[0,0]+[1,1]`, width is 1 and matching number is 1, with the edge from the degree-0 singleton’s left copy to the degree-1 singleton’s right copy.
- For `[0,2]+[1,1]`, width is 2 and matching number is 0; increasing only the left endpoint does not make an edge.
- For `[0,0]+[1,1]+[2,2]`, the two successive edges form a matching of size 2. The middle label appears in opposite roles, which is allowed.
- In the same three-singleton poset, the edges `0→1` and `0→2` fail the matching predicate because they reuse a left vertex. The edges `0→2` and `1→2` fail because they reuse a right vertex. Checking just that the pairs are edges would admit both forbidden sets.
- The empty matching on the empty multisegment is valid and both maxima are zero. Duplicate intervals form an endpoint antichain; adjacent singleton labels do not. Equal left endpoints `[0,0],[0,1]` likewise give no strict endpoint edge.

*Needs:* §0.2, finite powersets, occurrence labels, and integer endpoint comparisons.

### 4.3 Finite chain decomposition

Prove `weighted_dilworth` for every q:

```text
matchingNumber q + antichainWidth q = q.card.
```

Prove `cut_antichain_width`, identifying `antichainWidth (cutPart m a)` with `Eₐ(m)` (DIL Theorem 3 and its first inductive proof, pp.6-1–6-2; split-graph argument, p.6-3; weighted occurrence discussion, p.6-4).

For finite Dilworth, induct on the poset cardinality. A maximum antichain separating proper lower and upper subposets lets their chain partitions be glued along its vertices. If no such maximum antichain exists, a chain joining a minimal and maximal element can be removed while reducing the width by one. This proves a partition into width-many chains. Successive vertices in each chain give a split-graph matching with `card-width` edges. Conversely matching edges produce an acyclic graph with at most one incoming and one outgoing edge at each vertex; its paths form `card-size` poset chains. These two constructions establish the displayed identity without requiring a flow or polyhedral theorem.

Use the partial order `x ≤ y ↔ x=y ∨ endpointBefore q x y`, so different equal-interval labels remain incomparable. State the finite-poset input as weak duality for arbitrary chain covers and existence of an equal-size antichain and disjoint chain partition, using Mathlib’s chain and antichain vocabulary specified under Scope and ownership. The numerical maxima in §4.2 then summarize these witnesses for the rank formula.

For intervals, two labels are incomparable for the strict endpoint order precisely when their underlying intervals are comparable for inclusion. This also holds when an endpoint agrees or the intervals are equal. Thus endpoint antichains correspond to inclusion chains with selected copies. A maximum antichain can include all copies of each selected interval, giving the weighted value Eₐ. Distinct copies are essential in this correspondence.

*Needs:* §§4.1–4.2.

### 4.4 Adjacent generic rank from matchings

Prove the adjacent generic-rank theorem: for every m and integer a, the generic rank of `L:Vₐ₊₁→Vₐ` in the opposite centralizer of the standard VN pair equals `matchingNumber mₐ`. Consequently it equals `adjacentDualCount m a` (MW Lemma II.4, pp.160–161; Z98 §3, Theorem 1, pp.410–411, for the surrounding Knight–Zelevinsky rank formula).

At this cut, pad the rows and columns with isolated zero entries for cut occurrences missing the respective grade. An endpoint-order edge automatically has a target containing a and a source containing a+1: otherwise its strict endpoint inequalities contradict membership in the cut. The overlap inequality in §2.2 is then automatic. Each allowed matrix entry is one **different** centralizer coordinate. A nonzero determinant monomial in a minor gives a matching, so rank is bounded by the maximum matching size. Set exactly the coordinates of a maximum matching to 1 and all other coordinates to 0; the selected submatrix is a permutation matrix. This attains the bound, and §2.6 supplies the dense open rank-maximal locus. A WL interval crosses this arrow exactly when it contains `[a,a+1]`.

Only one-arrow ranks enter this proof. The same coordinate can recur in longer powers, so this argument is not asserted for arbitrary powers of L. The two-by-three singleton example in Layer 2 attains rank 2; a single VN chain has no allowed opposite coordinate and rank zero.

*Needs:* §§2.2, 2.6, 4.2 and `Matrix.rank`.

### 4.5 Monotone grid paths

For arbitrary `r,a:ℕ`, define `GridPath r a` to consist of `r+1` integer-coordinate vertices indexed by `Fin (r+1)`, beginning at `(a+1,a)` and ending at `(1,r)`. Each step is `(−1,0)` or `(0,1)`. Define `InWindow m r` by `1≤b≤e≤r` for every interval of m. Define `intervalWeight m i j` to be `m.count [i,j]` when `i≤j` and zero otherwise, and `GridPath.weight p m` as the sum over its vertices (AKY proof of Proposition 3.7, pp.20–21, Figures 1–2).

When a path exists, a≤r; there are exactly a steps decreasing the first coordinate and r−a increasing the second. The path stays in `[1,a+1]×[a,r]`; its only reversed-endpoint vertex is the initial `(a+1,a)`. Prove coordinate monotonicity along any such path and zero weight of its invalid initial vertex. Prove `GridPath.weight_bound`, giving `p.weight m≤Eₐ(m)` for every m, r and a; a window hypothesis is needed only for the attaining path of §4.6. The valid vertices are distinct nested intervals meeting {a,a+1}, even if m has support outside [1,r]. These weights count multiplicities, not the number of visited vertices.

**Checks.**

- For r=3 and a=1 the endpoint is `(1,3)`, not `(1,1)`. The path `(2,1),(1,1),(1,2),(1,3)` has step differences `(−1,0),(0,1),(0,1)`. Replacing its start by `(1,1)` violates the initial condition; replacing a step by `(0,2)` violates the unit-step condition.
- For m=`[1,3]`, the invalid initial vertex `(2,1)` has weight zero.
- For m=`2[1,3]`, the vertex `(1,3)` has weight 2, and the displayed path has vertex weights `(0,0,0,2)` and total weight 2. For the empty multisegment all four weights are zero.
- When r=1 there is no integer a satisfying `1≤a<r`; no interior-cut attainment theorem is applied to that case. The boundary path for r=0,a=0 is the single invalid vertex `(1,0)`, of weight 0. An absent valid vertex, such as `[1,2]` in m=`[1,3]`, also has weight zero.
- For r=3,a=1 and m=`[0,1]`, every path has weight 0 while E₁=1. This shows why attainment needs the window hypothesis, although the upper bound does not.

*Needs:* §§0.1–0.2, 4.1 and finite sequences. The endpoint used here is the path definition on AKY p.20; the later converse-path sentence on that page has an inconsistent terminal coordinate.

### 4.6 Paths compute the chain maximum

Prove `grid_path_chain_max`: for `InWindow m r` and `1≤a<r`, every grid path has weight at most Eₐ(m), and some path attains Eₐ(m) (AKY proof of Proposition 3.7, pp.20–21).

The valid vertices on a path are nested intervals. Taking all occurrences of their intervals gives a full inclusion-chain submultisegment with weight equal to the path weight. Conversely order any inclusion chain by containment, interpolate its endpoint pairs with permitted unit steps, and extend from `(a+1,a)` to `(1,r)`. Added vertices have nonnegative weights, so an extension has at least the original chain’s weight. Apply this to a maximum chain and combine with the upper bound. This is an equality of maxima, not a bijection between all paths and chains: zero-weight vertices can change the path without changing the selected support.

For the adjacent specialization of the Knight–Zelevinsky monotone minimum, a map `ν:[1,a]×[a+1,r]→{a,a+1}` is increasing for the product order. Its two level regions have a staircase boundary of this form. Moving the two regions by one coordinate reindexes the rank sum as the total cut weight minus boundary weight. Every such staircase arises. This locates the independently proved adjacent formula in the source’s conventions without importing its full higher-power proof (Z98 §3, Theorem 1 and formula (1), pp.410–411; AKY pp.19–21).

*Needs:* §§4.1, 4.5.

### 4.7 The adjacent Knight–Zelevinsky formula

Prove the adjacent chain formula for **every** finite integral m and `a:ℤ`:

```text
adjacentDualCount m a + Eₐ(m) = (cutPart m a).card.
```

Equivalently the dual count is `card(mₐ)-Eₐ(m)`; §4.1 supplies the bound making natural subtraction legitimate. Combine §4.4 with the matching-width identity and §4.3’s weighted inclusion interpretation (AKY Proposition 3.7, pp.19–21).

Translation puts any nonempty support in a finite window. Interior cuts also have the path description of §4.6. A cut outside the support is empty or lies at a boundary where all retained intervals have the same extreme endpoint and are nested; then Eₐ equals the cut cardinality and the adjacent rank is zero. This treats single-grade support and empty m without imposing an artificial `r≥2` hypothesis on the all-integer formula.

*Needs:* §§4.1, 4.3–4.4; §4.6 for the source’s grid description.

### Examples

For `[0,0]+[1,1]` at a=0, cut cardinality is 2, E₀ is 1, and the dual `[0,1]` crosses the cut once. For `2[0,1]+[1,1]`, cut cardinality and E₀ are both 3, so no dual interval crosses the cut. For `[0,2]+[1,1]` the two inclusion-comparable intervals likewise give E₀=2 and zero opposite rank. These are distinct checks for meeting versus containing, repeated weights, and nesting (AKY Proposition 3.7, pp.19–21; MW Lemma II.4, pp.160–161).

### Dependencies

Layer 0 and the coordinate and generic-rank parts of Layer 2. Finite poset induction, determinant minors, and finite maxima suffice for the adjacent formula. Conormal involutivity and the representation comparison are not prerequisites of this layer.

## Layer 5: the canonical ramified split and representation interfaces

### 5.1 Truncation respects maximal peeling

Prove `truncate_maximalPart` and `truncate_remainder` for every m:

```text
maximalPart(rightTruncate m) = rightTruncate(maximalPart m),
remainder(rightTruncate m) = rightTruncate(remainder m).
```

Right truncation is injective on nonsingleton intervals and preserves and reflects their inclusion, since both right endpoints decrease by one. Any original interval containing a surviving nonsingleton also survives. A maximal singleton disappears and cannot contain a nonsingleton. Thus the surviving distinct maxima and their one-copy contributions agree. Truncation additivity and cancellation then identify the remainders (AKY Lemma 3.6, p.19, whose proof is omitted in the source).

*Needs:* §§0.2–0.3.

### 5.2 Weighted chain decrement under peeling

Prove `chainWeight_peeling`: if `cutPart m a≠0`, then

```text
Eₐ(m) = Eₐ(remainder m)+1,     Eₐ(maximalPart m)=1.
```

Also prove that if the cut is empty, all three chain weights are zero (AKY proof of Proposition 2.7, pp.21–22).

A chain contains at most one distinct global maximal interval, so removing one copy of every such interval lowers its weight by at most one. This gives `Eₐ(m)≤Eₐ(remainder m)+1`. For the reverse inequality, extend a maximum remainder chain by a global maximal interval containing its largest interval. This interval still meets the cut. If it already occurs in the chain, restore its removed copy; otherwise append it. When the remainder cut is empty, take any maximal interval containing an original cut member. This produces weight at least one. The maximal part’s nonempty cut is an inclusion antichain of distinct intervals with weight one each, so its chain maximum is exactly one.

The nonempty-cut hypothesis cannot be dropped: with empty m, the formula `0=0+1` would be false. The empty companion supplies the required branch of the split proof.

*Needs:* §§0.3, 4.1.

### 5.3 Ramified additivity for the canonical maximal split

Prove ramified additivity for the maximal split for every finite integral m:

```text
ram m = ram(maximalPart m) + ram(remainder m).
```

This identity concerns the canonical one-copy split (AKY Proposition 2.7, p.10; proof, pp.21–22).

Induct on `totalLength m`, using its strict drop under truncation when m is nonempty. By §5.1 and the induction hypothesis, the split identity holds for the truncated multisegment. Ram/truncation commutation identifies the corresponding VN image types, with their common shift removed using §1.5. Thus the two VN pairs representing the asserted sides have isomorphic **unshifted** VN images.

For degree a, `ram m` is realized as `(Im L,N|Im L)` on an image-admissible locus. Its dimension there is the adjacent rank `rank(L:Vₐ₊₁→Vₐ)`. The adjacent formula computes it as `card(mₐ)-Eₐ(m)`. Cut cardinality is additive for the maximal part and remainder, and §5.2 makes their chain weights sum to Eₐ(m), including the empty-cut case. Hence the graded dimensions of the two sides agree. Apply §1.6 reconstruction and §1.4 classification.

As a negative control, ramification is not additive on arbitrary sums: `ram([0,0]+[1,1])=[0,0]`, whereas each singleton has empty ramification. Repeated maxima are retained correctly: for `m=[0,0]+2[1,2]+[2,2]`, the canonical split from Layer 0 gives `ram m=[0,0]`.

*Needs:* §§1.4–1.6, 3.4–3.5, 4.7, 5.1–5.2.

### 5.4 Comparison with the representation involution

For a non-archimedean local field F, a unitary irreducible supercuspidal representation ρ of GL_d(F), d≥1, and a real c, define the *integral-segment adapter* by sending `[b,e]` to `[b+c,e+c]_ρ`, with its full occurrence multiplicity. Prove the *representation-duality comparison*: for every integral multisegment m, on GLₙ(F), where n=d·totalLength m,

```text
L(integralSegmentAdapter ρ c m) ≅ Z(integralSegmentAdapter ρ c (dual m)).
```

Both ranks agree because duality preserves every grade dimension and hence total length. The empty label uses the GL₀ unit. The comparison concerns actual irreducible smooth representations and their equivariant isomorphisms (MW II.1, pp.147–148; Proposition II.6, pp.162–169; Proposition II.12, pp.175–176; Theorem II.13, pp.176–177).

The adapter's API identifies its support with the twists `ρ|det|^(b+c),…,ρ|det|^(e+c)`, transports integer translation by determinant twist, and preserves the empty multisegment and its rank-zero unit. Common real twists commute with normalized induction, Z, L, and the supplier's involution. These are applications of SmoothRepresentationsOfLocalGroups SR.5.2, *segment-representations*, and SR.5.3, *highest-derivative-adapter*.

For the unramified rank-one application, write an arbitrary unramified complex character χ as `χ=χ₀|·|ᶜ`, where

```text
c = -log |χ(ϖ)| / log q,       χ₀ = χ |·|⁻ᶜ.
```

Here `|χ(ϖ)|>0` because χ is unit-valued, and `q>1` because F is a non-archimedean local field; thus the logarithmic denominator is nonzero. The character χ₀ is unitary, and the adapter with ρ=χ₀ sends `[b,e]` to `[b+c,e+c]`. Both χ and the norm are trivial on units, so this is independent of the uniformizer (AKY §2.1, p.7).

Prove the following mathematical recurrence for the geometric dual, without defining a second label function. For nonempty m let k be its least left endpoint. Let p≥1 and `j₁<⋯<jₚ` satisfy: j₁ is the least right endpoint at left endpoint k; for 1≤t<p, jₜ₊₁ is the least right endpoint greater than jₜ at left endpoint k+t; and no interval beginning at k+p has right endpoint greater than jₚ. Let m′ replace one occurrence of every `[k+t-1,j_t]` by `[k+t,j_t]`, deleting a singleton. Prove

```text
dual m = dual m′ + [k,k+p-1],       totalLength m′ = totalLength m - p.
```

The empty value is empty. The hypotheses specify occurrence multiplicities and minimum endpoint conditions as a finite mathematical relation. The identity is the recurrence of Z98 §5, p.412, equations (3)–(4). MW II.2, pp.149–150 and Proposition II.6, pp.162–169 identify the corresponding endpoint recurrence with the generic centralizer type. Its proof uses affine slices meeting the generic locus; nonempty intersection is established before applying Remark II.6.1, p.163.

The comparison uses these scoped inputs. In these inputs Z(q) abbreviates Z of the integral-segment adapter with the fixed ρ and c. The MW order on intervals is decreasing lexicographic order of `(left,right)`, with the empty interval smaller than every nonempty one; extend it lexicographically to ordered multisegment lists of fixed support (MW II.1, p.148).

- *Singleton extraction:* for nonempty m in decreasing MW order let k be its greatest left endpoint and choose the last interval beginning there. Delete that interval's left endpoint, dropping a singleton, to obtain m′. With `α=ρ|det|^(k+c)`, there is an embedding `Z(integralSegmentAdapter ρ c m) ↪ α × Z(integralSegmentAdapter ρ c m′)`, and the second factor is the unique irreducible isomorphism class allowing this embedding. Its group rank is smaller by d (MW Lemma II.11, pp.174–175).
- *Involution on embeddings for the rank-one proof:* on the integral twist line of the trivial GL₁ character (ρ=1,c=0), if irreducibles π,π′ satisfy `π ↪ α × π′`, then `τπ ↪ τπ′ × α`; α is fixed by τ and the normalized product order reverses (MW Corollary I.7.2 and Proposition I.7.3, p.147).
- *Right-singleton candidates and matching exclusion:* every irreducible subrepresentation of `Z(q) × α`, where α is the singleton at k on this line, has label q plus `[k,k]` or q with one occurrence ending at k−1 extended to k. For any occurrence A of q ending at k−1, let B be all occurrences of q ending at k−1 strictly smaller than A. If there is an injection from B to occurrences C of q ending at k, with each C at most A extended to k in MW order and `Precedes B C`, then none of the labels obtained by extending a member of B occurs as such a subrepresentation. This quantifies over occurrence matchings and keeps duplicate labels distinct; it asserts no exclusion from membership in an arbitrary matching (MW Lemma II.10.2, pp.172–173; Remark II.10.3, p.174).
- *Dual reinsertion:* for m,m′ in singleton extraction, `dual m` is obtained from `dual m′` by extending some interval A ending at k−1, or adding `[k,k]` if A is absent. All occurrences B of `dual m′` ending at k−1 strictly smaller than A admit an injection to distinct occurrences C ending at k at most the extended A in MW order, with `Precedes B C`. If A is absent, use the singleton as its extension and the domain of smaller occurrences is empty (MW Lemma II.3, statement pp.150–151, proof pp.151–160).
- *Cuspidal-line independence:* for any irreducible supercuspidals ρ and σ of GL_d(F) and GL_e(F), d,e≥1, let τ_ρ and τ_σ be the label maps induced by the supplier's representation involution on their integral twist lines. For every finite integral m, `τ_ρ(m)=τ_σ(m)`; the groups have ranks d·totalLength m and e·totalLength m respectively. This is a comparison of label maps, not an isomorphism of representations on different groups (MW Proposition II.12, pp.175–176). Common real translation follows from the supplier's twist compatibility.

Prove the comparison first with ρ trivial on GL₁ and c=0. Singleton extraction, the involution-on-embeddings input, dual reinsertion, and the quantified matching exclusion give the MW label inequality by induction in total length. A second induction in the finite MW order at fixed support, using geometric and representation involutivity, gives equality. Cuspidal-line independence and common twisting give the stated comparison for all ρ and c (MW Theorem II.13 and proof, pp.176–177). The extraction and exclusion statements above are scoped comparison targets here; the general representation classification and involution remain supplier results.

**Checks.**

- For χ unitary, c=0. For χ=`|·|²`, c=2 and χ₀ is trivial, giving `[b+2,e+2]`. At a uniformizer with q=2, `|χ(ϖ)|=1/4` gives `−log(1/4)/log 2=2`, fixing the sign.
- The empty multisegment has rank zero for every d. The singleton `[b,b]` gives `ρ|det|^(b+c)` on GL_d; rank zero and a zero cuspidal representation are excluded as segment labels.
- For ρ trivial and c=0, `L([0,0]+[1,1]) ≅ Z([0,1])`; the determinant-character and Steinberg witness in Conventions distinguishes the two normalizations.
- For a GL₂ supercuspidal ρ, `[0,1]_ρ` is on GL₄. The comparison identifies its L representation with Z of `[0,0]_ρ+[1,1]_ρ`; its Z representation is not a determinant character.
- Over F=𝔽₂((t)) with ρ trivial, the same adjacent-singleton comparison is on GL₂ and q=2. No mixed-characteristic hypothesis is used.
- The recurrence gives `dual [0,2]=[0,0]+[1,1]+[2,2]` and `dual ([0,0]+[1,1])=[0,1]`; applying duality twice returns the original input.
- For `2[0,1]`, the dual is `2[0,0]+2[1,1]`; empty input stays empty. Deduplicating occurrences changes both grade dimensions from 2 to 1.
- In reinsertion, m=`[0,0]+[1,1]` has k=1 and m′=`[0,0]`, so A=`[0,0]` extends to `[0,1]`. For m=`2[0,0]`, A is absent and one singleton is added. For matching exclusion, q=`[0,2]+[1,3]+[2,2]`, k=3, A=`[2,2]`: its sole smaller occurrence `[0,2]` matches `[1,3]`, which is strictly below `[2,3]`. Extending `[0,2]` is therefore excluded.
- For m=`2[0,1]+[1,2]+[2,2]`, singleton extraction at k=2 gives m′=`2[0,1]+[1,2]` and `dual m′=[0,0]+[0,1]+[1,1]+[1,2]`. Reinsertion extends A=`[1,1]`; its smaller occurrence B=`[0,1]` matches C=`[1,2]`, equal to the extended A. The dual of m is `[0,0]+[0,1]+2[1,2]`. Requiring C to be strictly smaller would make this valid reinsertion impossible.

*Needs:* §§0.2, 2.2, 2.6–2.9; SmoothRepresentationsOfLocalGroups SR.0–SR.3, SR.5.2 *segment-representations* and SR.5.3 *highest-derivative-adapter*; the scoped MW comparison inputs above. No local-field hypothesis enters Layers 0–4 or §5.3.

### 5.5 Newform and unipotent-induction interface

Export *ram*, the VN-image realization of ramification, commutation of ramification with right truncation, and ramified additivity for the maximal split to the general-linear newform consumers. Define *newformExample* to be the following multisegment m, and prove the displayed newform ramification identity:

```text
m = [5,6]+[3,7]+[3,4]+[2,5]+[3,3]+[1,2]+[0,0],
ram m = [4,4]+[2,5]+[1,2]+[0,0].
```

Its total length decreases from 17 to 8. The output interval lengths and the canonical split equality supply the tuple comparison and the unipotent induction. The consumer defines the tuple and proves the representation-conductor and induction statements (AKY §2.5, pp.11–13; Proposition 2.4, p.9; Corollary 2.8, pp.10–11).

Compute the maximal part `[3,7]+[2,5]+[1,2]+[0,0]`. Its dual is `[7,7]+[5,6]+[4,5]+[2,4]+[0,3]`; right truncation deletes the first singleton and leaves `[5,5]+[4,4]+[2,3]+[0,2]`. Their dual is `[2,5]+[1,2]+[0,0]`. The remainder is `[5,6]+[3,4]+[3,3]`. Its maximal part, the first two intervals, has ramification `[4,4]`, and the remaining singleton has empty ramification. Apply §5.3 twice.

Keep the four surviving shortened intervals with their original labels, or introduce four new labels without another shortening. The prose and diagrams around AKY p.12 use differing labels; the displayed endpoint values above implement exactly one shortening.

**Checks.**

- `newformExample.card=7` and `totalLength newformExample=17`; treating the seven intervals as seven basis vectors fails.
- Its degree-3 dimension is 4: `[3,7]`, `[3,4]`, `[2,5]`, and `[3,3]` each contribute once. Omitting singleton support changes this dimension.
- The ramified output has four occurrences, total length 8, and degree-3 dimension 1. These values distinguish the displayed output from a second shortening or loss of multiplicity.

*Needs:* §5.3 for the interval computation and §5.4 for its representation interpretation.

### Examples

For `m=2[0,2]`, the canonical split leaves one chain in each part and both ramified parts are empty. For `[0,0]+2[1,2]+[2,2]`, the maximal part `[0,0]+[1,2]` has ramification `[0,0]`, and the remainder `[1,2]+[2,2]` has empty ramification. The rank-17 computation of §5.5 then exercises successive peeling beyond these small cases (AKY Proposition 2.7, p.10; §§2.4–2.5, pp.10–13).

### Dependencies

Layers 0–4 for canonical ramified additivity. The final representation comparison alone imports the smooth-representation contracts and its MW comparison interfaces. The newform consumer receives the interval results without owning another copy of multisegment duality.

## Downstream consumers

The general-linear newform work extracted from AKY Proposition 2.4 uses the VN realization of ramification and simultaneous genericity to read conductor differences from ranks on iterated images. Its Corollary 2.8 uses the canonical maximal split to separate the contributions in the unipotent induction. Both consumers receive actual equality of interval multisets, hence equality of their full multiplicities and length data. Arbitrary additivity is unavailable, as the adjacent-singleton control in §5.3 shows.

Representation comparisons consume the representation-duality comparison only after adopting the supplier’s normalized Z/L conventions. Combinatorial uses of adjacent ranks, grid maxima, and maximal peeling depend on no local field, local Langlands parameter, or conductor normalization.

## References

All AKY locators refer to the printed pages of arXiv v4; MW and Z98 locators use printed journal pages, and DIL uses its lecture labels.

- **AKY:** Hiraku Atobe, Satoshi Kondo, Seidai Yasuda, *Local newforms for the general linear groups over a non-archimedean local field*, [arXiv:2110.09070v4](https://arxiv.org/pdf/2110.09070v4), 28 September 2022. Published in *Forum of Mathematics, Pi* 10 (2022), e24, [DOI 10.1017/fmp.2022.17](https://doi.org/10.1017/fmp.2022.17). Segment conventions: §2.1, p.7 and §2.3, p.8; maximal split and consumers: §§2.4–2.5, pp.10–13; graded operators and proofs: §§3.1–3.3, pp.14–22.
- **MW:** Colette Mœglin, Jean-Loup Waldspurger, *Sur l’involution de Zelevinski*, *Journal für die reine und angewandte Mathematik* 372 (1986), 136–177, [GDZ scan](https://gdz.sub.uni-goettingen.de/dms/resolveppn/?PPN=GDZPPN002204061), [DOI 10.1515/crll.1986.372.136](https://doi.org/10.1515/crll.1986.372.136). Endpoint order and recurrence: II.1–II.2, pp.148–150; commuting coordinates: Lemma II.4, pp.160–161; geometric identification: Proposition II.6, pp.162–169; involutivity: Corollary II.7, p.169; cuspidal-label independence: Proposition II.12, pp.175–176; representation identification: Theorem II.13, pp.176–177.
- **Z81:** Andrei V. Zelevinskii, *p-adic analog of the Kazhdan–Lusztig hypothesis*, *Funktsional’nyi Analiz i ego Prilozheniya* 15:2 (1981), 9–21, [original article](https://www.mathnet.ru/eng/faa1707). English translation in *Functional Analysis and Its Applications* 15 (1981), 83–92, [DOI 10.1007/BF01082279](https://doi.org/10.1007/BF01082279). §4.3 and Proposition 4.4, original pp.20–21, give the conormal correspondence and commuting trace description; §4.5 states the representation comparison as a conjecture, subsequently proved by MW.
- **Z98:** Andrei Zelevinsky, *Multisegment duality, canonical bases and total positivity*, *Documenta Mathematica*, Extra Volume ICM 1998, III, 409–417, [article](https://ems.press/content/book-chapter-files/27254?nt=1). §2, p.410 gives the generic operator description; §3, Theorem 1, pp.410–411 gives the Knight–Zelevinsky formula; §5, p.412 gives the recursive rule.
- **DIL:** Michel X. Goemans, scribe Joungkeun Lim, *18.997 Topics in Combinatorial Optimization, Lecture 6*, MIT, 26 February 2004, [lecture notes](https://ocw.mit.edu/courses/18-997-topics-in-combinatorial-optimization-spring-2004/72c5d7935dea64f0e2773ad376f83d5d_co_lec6.pdf). Theorem 3 and its inductive proof, pp.6-1–6-2; matching/chain correspondence, p.6-3; weighted occurrence constructions, p.6-4.

The adjacent formula is attributed to Knight–Zelevinsky through Z98 Theorem 1 and AKY Proposition 3.7. The proof specified here uses independent block coordinates and finite matching; it requires no assertion about the complete higher-power argument of Knight–Zelevinsky’s 1996 article.
