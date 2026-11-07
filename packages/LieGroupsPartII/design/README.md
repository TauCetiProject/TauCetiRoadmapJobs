# Roadmap: parabolic subgroups, Langlands decompositions and the Bruhat decomposition of real reductive groups

**Summary.** This is the second part of [LieGroups](../RepresentationTheory/LieGroups/README.md). Its Layer 9 stops after the Cartan, Iwasawa and KAK decompositions and the restricted root system of a real reductive group. This part continues the structure theory on that carrier. It strengthens the base Cartan datum to a reductive Cartan datum, which carries the invariant form and the global Cartan decomposition that the restricted-root theory uses. It then proves that Cartan data with a common split centre are conjugate, and likewise Iwasawa triples, and builds the minimal parabolic subgroup `P = MAN` with its Langlands decomposition. Further results: the Bruhat decomposition `G = ⨆_{w ∈ W_G} P n_w P` with its cell coordinates, indexed by `W_G = N_K(𝔞)/Z_K(𝔞)` for every Iwasawa triple and by the Weyl group of `Σ` under the component condition, and the Tits system `(G, P, N_G(𝔞), S)`; the classification of standard parabolic subalgebras and subgroups; the Langlands decomposition `Q = M_Q A_Q N_Q` of every standard parabolic subgroup; and the description of parabolic subgroups by type, by Lie algebra and by bounded one-parameter conjugation. Two further results close the roadmap. The self-adjoint matrix groups carry all of this structure; that matrix model is the statement form pinned in Lean. For real points of a connected reductive group over `ℝ`, the Lie-theoretic parabolics are compared with the `ℝ`-parabolic subgroups of Borel–Tits. The abstract Tits-system theory (standard parabolics, the classification of overgroups of `B`, double cosets) is Tau Ceti's and is consumed.

## Scope and ownership

This roadmap owns the following material on a real reductive group:

- the reductive Cartan datum: a refinement of LieGroups' `CartanInvolution` by an invariant form and the global Cartan decomposition;
- conjugacy of reductive Cartan data, of maximal abelian subspaces of `𝔭` and of Iwasawa triples;
- positive systems and simple roots of a possibly non-reduced restricted root system, through its indivisible subsystem;
- the component condition and the comparison of `N_K(𝔞)/Z_K(𝔞)` with the Weyl group of `Σ`;
- the minimal parabolic subgroup and its Langlands decomposition, and the Bruhat decomposition with its cell coordinates;
- the Tits system of a real reductive group;
- standard parabolic subalgebras and subgroups and their Langlands decompositions;
- the group `⁰L` and the split component;
- general parabolic subgroups and subalgebras, and the dynamical description;
- the self-adjoint matrix model;
- the comparison with `ℝ`-parabolic subgroups of real algebraic groups.

It also owns one abstract statement about Tits systems that Tau Ceti lacks: an element conjugating `B` into a standard parabolic `P_J` lies in `P_J`, so conjugate standard parabolics are equal.

The following are already in the library or stated by other roadmaps, and are imported:

- **Already in the library.** Tau Ceti has the abstract Bruhat decomposition of a Tits system, its standard parabolic subgroups `P_J`, the classification of subgroups containing `B`, self-normalization of `P_J` and the double cosets `P_J \ G / P_K`. These are consumed in Layers 4 and 6. The finite root-system facts used for the indivisible subsystem (simple transitivity on bases, stabilizers of chamber points) are in Tau Ceti for reduced systems.
- **Stated by LieGroups.** Layers 0–3 supply the exponential map, `Ad`, the closed-subgroup theorem and the Lie functor; Layer 4 integrates Lie-algebra homomorphisms; Layer 7 supplies complexification. Layer 9 supplies the Cartan decomposition `𝔤 = 𝔨 ⊕ 𝔭`, the Iwasawa decomposition `iwasawaDecomposition`, the KAK decomposition `kakDecomposition` and the restricted root system with its root spaces. They are not restated here.
- **Recorded by RootSystems.** Its section "Exact supplier contracts" records the Mathlib and Tau Ceti declarations on root systems, bases, positive roots, chambers and Weyl groups that §2.1 consumes. None of its own targets (geometric roots, faithfulness, the Weyl presentation) is used.
- **Stated by ReductiveGroups.** Layer 7 supplies parabolic `k`-subgroups, the dynamic description `P_𝐇(λ)`, `U_𝐇(λ)`, `Z_𝐇(λ)`, maximal split tori, relative root systems and the algebraic Bruhat decomposition over a field. Layer 9 compares with it but does not re-prove it.
- **Stated by ArithmeticLocallySymmetricSpaces.** ALS.F.1 and ALS.0.1–ALS.0.3 supply real points of linear algebraic groups, algebraic Cartan involutions and transpose-stable realizations.
- **Stated by MordellLawrenceVenkatesh.** §3.10 supplies connectedness, in the analytic topology, of the complex points of a connected scheme of finite type over `ℂ`; it is used once, in §9.1, for `𝐇(ℂ)`.

The roadmap does not own:

- harmonic analysis or representation theory on `G` (principal series, normalized induction, the Casselman embedding);
- `θ`-stable parabolic subalgebras of `𝔤_ℂ` and cohomological induction;
- Cartan subgroups;
- the algebraic and rational parabolics over arbitrary fields, horospherical decompositions and the Borel–Serre compactification;
- the nonarchimedean Iwasawa, Cartan and Iwahori–Bruhat decompositions;
- the complex Bruhat decomposition and Schubert cells of `G_ℂ/B`, which belong to LieGroups Layer 8 and ReductiveGroups Layer 7.

AutomorphicFormsOnReductiveGroups §2.3a states the minimal parabolic subgroup, its Langlands decomposition, the conjugacy of minimal parabolics and the Borel–Tits comparison for real points of connected reductive groups. Its §§2.3–2.4 induce from, and classify by, general parabolic subgroups `P = MAN` and standard Levi subgroups. Those objects are built here, so the supply runs from this roadmap to that one. The statements of §2.3a are the restriction of Layers 2, 3 and 9 to its class of groups, and this roadmap owns them at the generality of a reductive Cartan datum.

## Conventions

**The group.** `G` is a real, finite-dimensional, `C^∞` Lie group in the sense of LieGroups Layer 0: `LieGroup I ∞ G` on a model `I : ModelWithCorners ℝ E H` with `[FiniteDimensional ℝ E]`. Its Lie algebra is `𝔤 = LeftInvariantDerivation I G`. The base's `lieExp`, `Ad`, `lieMap` and `lieSubalgebraOfSubgroup` are used throughout; for a subgroup `H ≤ G` write `Lie(H)` for `lieSubalgebraOfSubgroup H`. `G⁰` is the identity component. For a subset `S ⊆ 𝔤`, `Z_G(S)` and `N_G(S)` are the pointwise and setwise stabilizers of `S` under `Ad`. For subsets of `G` use Mathlib's `Subgroup.centralizer` and `Subgroup.normalizer`. `G` is not assumed connected, semisimple, linear or of finite centre.

**The datum.** A reductive Cartan datum `D = (θ, B)` (§1.1) has fixed group `K = G^θ`, with `𝔨` and `𝔭` the `+1` and `−1` eigenspaces of `dθ = lieMap θ`. The inner product is `B_θ(X, Y) = −B(X, dθ Y)`. The centre is `𝔷 = 𝔷(𝔤)`, and its split central part is `𝔷_𝔭 = 𝔷 ∩ 𝔭`.

**Iwasawa triples.** An Iwasawa triple `(D, 𝔞, Σ⁺)` consists of a maximal abelian subspace `𝔞 ⊆ 𝔭` and a positive system `Σ⁺` of the restricted roots `Σ = Σ(𝔤, 𝔞)`. The root space of `β ∈ 𝔞*` is `𝔤^β = {X ∈ 𝔤 : ⁅H, X⁆ = β(H) X for all H ∈ 𝔞}`. Further notation:

- `𝔪 = Z_𝔨(𝔞)` and `M = Z_K(𝔞)`;
- `𝔫 = ⨁_{β ∈ Σ⁺} 𝔤^β`, `𝔫̄ = dθ 𝔫`, `A = lieExp 𝔞`, `N = lieExp 𝔫`, `N̄ = θ(N)`;
- `P = MAN`;
- `Π` is the set of simple roots of `Σ⁺`, and `W = W(Σ)` is the Weyl group of `Σ` acting on `𝔞`;
- `W_G = N_K(𝔞)/Z_K(𝔞)` acts on `𝔞` by `Ad`, and `n_w ∈ N_K(𝔞)` denotes a representative of `w`;
- for `Π' ⊆ Π`: `Σ_{Π'} = Σ ∩ span(Π')` and `W_{Π'} = ⟨s_α : α ∈ Π'⟩`.

**Sign conventions, with witnesses.**

- *Root spaces.* For `G = GL_2(ℝ)`, `H = diag(h₁, h₂)` and `E₁₂` the matrix unit, `⁅H, E₁₂⁆ = (h₁ − h₂) E₁₂`. So `E₁₂ ∈ 𝔤^{e₁−e₂}`. The positive system containing `e₁ − e₂` makes `𝔫 = ℝE₁₂`, and `P` is the upper triangular group.
- *Langlands decomposition.* The order is `(m, a, n) ↦ m a n`. In `SL_2(ℝ)`, `((a, b), (0, a⁻¹)) = (sgn a)·diag(|a|, |a|⁻¹)·((1, b/a), (0, 1))`.
- *Dynamical description.* For `X ∈ 𝔞` and `Y ∈ 𝔤^β`, `lieExp(−tX)·lieExp(Y)·lieExp(tX) = lieExp(e^{−tβ(X)} Y)`. This stays bounded as `t → +∞` iff `β(X) ≥ 0`, and tends to `1` iff `β(X) > 0`. For `GL_2(ℝ)` and `X = diag(1, 0)`, `exp(−tX)((a, b), (c, d))exp(tX) = ((a, e^{−t}b), (e^{t}c, d))`, which is bounded iff `c = 0`: the upper triangular group again.
- *Comparison with Tau Ceti's dynamic parabolic.* `TauCeti.Cocharacter.parabolic` is the set of `g` for which `t ↦ λ(t) g λ(t)⁻¹` extends over `t = 0`. For `λ(t) = diag(t, 1)` in `GL_2`, `λ(t)((a, b), (c, d))λ(t)⁻¹ = ((a, tb), (t⁻¹c, d))`, which extends iff `c = 0`. With `X_λ = dλ(1)` one has `λ(e^{−s}) = lieExp(−s X_λ)`, so `s → +∞` corresponds to `t → 0`. The two conventions agree.
- *Standard parabolic subalgebras* use `Σ⁺ ∪ Σ_{Π'}` (Brown–Rodriguez Hertz–Wang 2022, equation (1), §1.2). This is the same set as `Σ⁺ ∪ span(−Π')` of Brown–Fisher–Hurtado 2022, §3.1, since `span(−Π') = span(Π')`.
- *Bruhat cells* are two-sided `P`-cosets `P n_w P`. `W` acts on `𝔞` on the left, with `s_α(H) = H − α(H)H_α` where `α(H_α) = 2`.

## Exact supplier contracts

The baseline is Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e` and Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`. A contract labelled `gap:` is required mathematics, not a declaration available for use; it is listed under the supplier that must provide it.

### From Mathlib

- `LieGroup` (`Mathlib/Geometry/Manifold/Algebra/LieGroup.lean`) and `LeftInvariantDerivation` (`Mathlib/Geometry/Manifold/Algebra/LeftInvariantDerivation.lean`) are the group and its Lie algebra.
- `LieAlgebra.center`, `LieAlgebra.derivedSeries` and `LieAlgebra.IsSemisimple` are the reductivity fields of LieGroups' `CartanInvolution`. `LieAlgebra.IsSolvable` (`Mathlib/Algebra/Lie/Solvable.lean`) is used for Borel subalgebras. `LinearMap.BilinForm` carries the invariant form.
- `Subgroup.normalizer`, `Subgroup.centralizer`, `DoubleCoset.doubleCoset` and `DoubleCoset.Quotient` (`Mathlib/GroupTheory/DoubleCoset.lean`) are used for normalizers, centralizers and Bruhat cells. `DoubleCoset.Quotient` is the quotient `H \ G / K` of a group by two subsets; it carries no topology.
- `RootPairing`, `RootPairing.IsReduced`, `RootPairing.Base`, `RootPairing.weylGroup` (`Mathlib/LinearAlgebra/RootSystem/`) are the root-system carrier. `RootPairing.Base` requires the coroots to lie in the coroot monoid of the support. So the non-reduced system `BC₁ = {±λ, ±2λ}` has no `RootPairing.Base`: the coroot of `2λ` is half that of `λ`. Section 2.1 therefore works with the indivisible subsystem.
- `NormedSpace.exp` (`Mathlib/Analysis/Normed/Algebra/Exponential.lean`), with `Matrix.exp_transpose` and `Matrix.exp_conj` (`Mathlib/Analysis/Normed/Algebra/MatrixExponential.lean`), is the exponential of the matrix model.
- `Matrix.GeneralLinearGroup`, `unitarySubgroup` (`Mathlib/Algebra/Star/Unitary.lean`; for real matrices this is `O(n)`), `Matrix.SpecialLinearGroup`, `Matrix.orthogonalGroup` and `Matrix.symplecticGroup` give the matrix groups.
- `ConnectedComponents`, `connectedComponentIn`, `Bornology.IsBounded` and `Filter.Tendsto` are used in the matrix-model definitions.

### From Tau Ceti

- `TauCeti.TitsSystem` (`TauCeti/GroupTheory/TitsSystem/Basic.lean`) is a Tits system with its simple reflections in `N/(B ∩ N)`. Its axioms are generation, normality of `B ∩ N` in `N`, generation and involutivity of the simple reflections, the multiplication inclusion `BsB·BwB ⊆ BswB ∪ BwB`, and `sBs ≠ B`.
- `TauCeti.TitsSystem.bruhatCell`, `TauCeti.TitsSystem.existsUnique_mem_bruhatCell`, `TauCeti.TitsSystem.bruhatCell_injective` and `TauCeti.TitsSystem.disjoint_bruhatCell_iff` (`Bruhat/Basic.lean`, `Bruhat/Uniqueness.lean`) give the abstract Bruhat decomposition and its uniqueness.
- `TauCeti.TitsSystem.standardParabolic`, `mem_standardParabolic_iff`, `coe_standardParabolic`, `standardParabolic_eq_of_subgroupB_le`, `standardParabolicOrderIso`, `normalizer_standardParabolic`, `normalizer_eq_of_subgroupB_le`, `parabolicDoubleCosetEquiv` and `parabolicTitsSystem` (`Parabolic/Basic.lean`, `Classification.lean`, `Normalizer.lean`, `DoubleCoset.lean`, `TitsSystem.lean`) cover the standard parabolics, the classification of overgroups of `B` as an order isomorphism, self-normalization, `P_J \ G / P_K ≃ W_J \ W / W_K` and the induced Tits system on `P_J`. No finiteness, field or topology is assumed. Nothing there says that conjugate standard parabolics are equal; that is §7.1 here.
- `TauCeti.TitsSystem.ofRankOne` (`RankOne.lean`) builds a Tits system from a two-cell decomposition, and `TauCeti.TitsSystem.coxeterSystem` (`Coxeter.lean`) is the Coxeter system of the Weyl group.
- `RootPairing.Base.existsUnique_map_eq` (`TauCeti/LinearAlgebra/RootSystem/Weyl/Bases.lean`) says the Weyl group acts simply transitively on bases. It assumes finite, crystallographic and reduced.
- `TauCeti.stabilizer_eq_closure_wallReflections` (`FundamentalDomain.lean`) says the stabilizer of a closed-chamber point is generated by the wall reflections through it. It assumes a strict ordered ring, finite, crystallographic, and reducedness of the pairing and its flip.
- `TauCeti.glTitsSystem` and `TauCeti.glTitsSystemWeylGroupMulEquivPerm` (`TauCeti/LinearAlgebra/Matrix/GeneralLinearGroup/Diagonal/TitsSystem.lean`) are the upper-triangular Tits system of `GL_{n+1}(k)` and its Weyl group `S_{n+1}`.
- `TauCeti.iwasawaHomeomorph` and `Matrix.GeneralLinearGroup.existsUnique_iwasawa` (`…/GeneralLinearGroup/Iwasawa.lean`) give the `O(n)·(positive diagonal)·(upper unitriangular)` decomposition of `GL_n(ℝ)`. `TauCeti.upperTriangularGroup`, `TauCeti.upperUnitriangularGroup` and `TauCeti.posDiagonalSubgroup` are its factor groups.
- `TauCeti.unitaryNormalizerPosDiagonalQuotientMulEquivPerm` (`…/RestrictedWeylGroup.lean`) identifies the restricted Weyl group `N_K(A)/Z_K(A)` of `GL_n(ℝ)` with `S_n`.
- `TauCeti.GL2Borel.mem_doubleCoset_weyl_iff` (`…/GeneralLinearGroup/Bruhat.lean`) says membership in the big cell of `GL_2` is invertibility of the lower-left entry.
- `Matrix.GeneralLinearGroup.existsUnique_pos_antitone_and_eq_unitary_mul_diagonal_mul_unitary` (`…/Cartan.lean`) is the KAK decomposition of `GL_n`, and `Matrix.GeneralLinearGroup.maximal_isCompact_iff` (`…/MaximalCompact.lean`) characterizes the maximal compact subgroups of `GL_n`.
- `Matrix.GeneralLinearGroup.existsUnique_posDef_mul_unitary` (`TauCeti/Analysis/Matrix/Polar.lean`) is the uniqueness of the matrix polar decomposition: every invertible matrix is uniquely a positive definite matrix times a unitary one, in that order. It is used in §8.1.
- `TauCeti.Cocharacter.parabolic`, `TauCeti.Cocharacter.levi`, `TauCeti.Cocharacter.unipotent` and `TauCeti.Cocharacter.limit` (`TauCeti/Algebra/AlgebraicGroup/Dynamic/Parabolic.lean`) are the dynamic subgroups of a cocharacter on points, with the Levi retraction.
- `TauCeti.borelSubalgebra` (`TauCeti/Algebra/Lie/Weights/Borel.lean`) is the Borel subalgebra `𝔥 ⊕ 𝔫⁺` of a positive system, for a Killing Lie algebra with a splitting Cartan subalgebra.

### From TauCetiRoadmap.LieGroups

- Layers 0–3: `lieExp`, `oneParameterSubgroup`, `Ad`, the identity `Ad(lieExp X) = exp(ad X)` (`conj_lieExp` and the Layer 1 conjugation formulas), `lieSubalgebraOfSubgroup`, `isEmbeddedLieSubgroup_of_isClosed`, `lieMap` and `lieMap_lieExp`. Layer 4: `exists_monoidHom_of_lieHom`, used to integrate `𝔰𝔩(2, ℝ)`-triples. Layer 7: the complexification `𝔤 ⊗_ℝ ℂ`.
- Layer 9: the structures `CartanInvolution`, `IsRealReductive` and `IwasawaData`, and the theorems `iwasawaDecomposition` and `kakDecomposition`. The README also plans the restricted root system `restrictedRootSystem`: the eigenvalues of `ad 𝔞` are real, `𝔤 = 𝔤_0 ⊕ ⨁_{β ∈ Σ} 𝔤^β` with `𝔤_0 = 𝔪 ⊕ 𝔞`, `dθ 𝔤^β = 𝔤^{−β}`, `⁅𝔤^β, 𝔤^γ⁆ ⊆ 𝔤^{β+γ}`, and `Σ` is a possibly non-reduced finite crystallographic root system in the span of `Σ` inside `𝔞*`.
- What is assumed of Layer 9: its README states these facts for a Cartan involution in the usual sense. Its pinned `CartanInvolution` structure records only compactness of the fixed set and reductivity of `𝔤`. That is strictly weaker: for `SU(2)` with `θ = Ad(diag(i, −i))`, `ad 𝔞` has eigenvalues `0, ±2i` and the polar map is not injective (§1.1, Checks). This roadmap consumes the Layer 9 statements only for a reductive Cartan datum (§1.1), which supplies the positivity they use.

### From TauCetiRoadmap.RootSystems

Only its section "Exact supplier contracts" is consumed, as the record of the root-system declarations of Mathlib (`RootPairing`, `RootPairing.Base`, `RootPairing.IsReduced`, `RootPairing.weylGroup`) and Tau Ceti (`RootPairing.Base.existsUnique_map_eq`, `TauCeti.stabilizer_eq_closure_wallReflections`) listed above, all for finite reduced crystallographic pairings. No target of RootSystems is an input: §2.1 cites those declarations directly. Non-reduced systems are handled in §2.1 by passing to the indivisible subsystem.

### From TauCetiRoadmap.ReductiveGroups

- Layer 7 supplies parabolic `k`-subgroups of a connected reductive group over a field, their unipotent radicals and Levi decompositions, and the cocharacter description `P = P_𝐇(λ)`, `U = U_𝐇(λ)`, `L = Z_𝐇(λ)`. It also supplies maximal split tori, the relative root system `Φ(𝐇, 𝐒)` with its relative Weyl group, and the Bruhat decomposition and Tits system of `𝐇(k)`. Layer 7b supplies the parabolic double-coset theorem.
- What ReductiveGroups must provide (`gap:minimal-parabolic-orderings`): for a maximal `k`-split torus `𝐒`, the minimal parabolic `k`-subgroups containing `𝐒` are the `P_𝐇(λ)` for cocharacters `λ` of `𝐒` that are regular for `Φ(𝐇, 𝐒)`. Two such `λ` give the same subgroup iff they lie in the same open chamber, and the relative Weyl group permutes these subgroups simply transitively (Borel–Tits 1965, Théorème 4.15 and Corollaire 5.9, pp. 90–91 and 98).
- What ReductiveGroups must provide (`gap:real-compactness-criterion`): over `k = ℝ`, a closed `ℝ`-subgroup `𝐋` of a connected `𝐇` with `𝐇(ℝ)/𝐋(ℝ)` compact contains a maximal connected `ℝ`-trigonalizable subgroup of `𝐇` (Borel–Tits 1965, Proposition 9.3, p. 126).

### From TauCetiRoadmap.ArithmeticLocallySymmetricSpaces

- ALS.F.1 (`LocallySymmetric.realPoints_lieGroup` and its `maximalCompact` API): `𝐇(ℝ)` is a closed subgroup of `GL_N(ℝ)` with finitely many components whose Lie algebra is `Lie(𝐇)`. For reductive `𝐇` with a transpose-stable embedding, `K = 𝐇(ℝ) ∩ O(N)` is maximal compact and the polar decomposition holds.
- ALS.0.1 (`IsCartanInvolution`, `IsCartanInvolution.conj`, `LocallySymmetric.IsCartanInvolution.transposeInverse`): algebraic Cartan involutions and their conjugacy.
- ALS.0.2–ALS.0.3: the Lie-theoretic Cartan datum of real points, stated for `𝐆 = Res_{F/ℚ} G` with `G` connected reductive over a number field `F`.

These are consumed in Layer 9 only.

### From TauCetiRoadmap.MordellLawrenceVenkatesh

- §3.10: a scheme locally of finite type over `ℂ` is connected iff its complex points are connected in the analytic topology. Applied to the base change of a connected linear algebraic group `𝐇` over `ℝ`, it says that `𝐇(ℂ)` is connected. Consumed in §9.1 only.

## How to read the build

Layer 1 strengthens the base Cartan datum and proves that Cartan data with the same split centre are conjugate. Layer 2 handles restricted roots: positive systems of a possibly non-reduced `Σ`, conjugacy of maximal abelian subspaces, the two Weyl groups and the component condition that equates them, conjugacy of Iwasawa triples, and the bridge to the base's `IwasawaData`. Layer 3 builds `M`, `N` and `P = MAN`, proves that centralizers of subspaces of `𝔞` inherit the datum, and proves the Langlands decomposition of `P`. Layer 4 proves the Bruhat decomposition with cell coordinates by the dynamics of a regular one-parameter subgroup of `A`, and builds the Tits system. Layer 5 classifies standard parabolic subalgebras. Layer 6 identifies `N_G(𝔮_{Π'})` with Tau Ceti's `P_J` and proves the Langlands decompositions. Layer 7 treats general parabolics and the dynamical description. Layer 8 is the self-adjoint matrix model and its pinned statements. Layer 9 is the algebraic comparison and the complexification criterion. Layers 1–7 depend only on the base roadmap, Mathlib and Tau Ceti (RootSystems is cited only as the record of the root-system declarations). Layer 8 depends on Layers 1–7, and Layer 9 adds the algebraic suppliers.

## Layer 1: Reductive Cartan data and their conjugacy

### 1.1 Reductive Cartan data

Define a **reductive Cartan datum** on `G` as a LieGroups `CartanInvolution I G` (a smooth involutive automorphism `θ` with compact fixed set and reductive `𝔤`) together with a bilinear form `B` on `𝔤`. The form must be symmetric, nondegenerate, invariant under `Ad(g)` for every `g ∈ G` and under `dθ`. Under `B`, `𝔨` is orthogonal to `𝔭`, `B` is negative definite on `𝔨` and positive definite on `𝔭`. The polar map `K × 𝔭 → G`, `(k, X) ↦ k·lieExp X`, must be a homeomorphism, where `K = G^θ` carries its structure as a closed embedded Lie subgroup. These are the axioms (i)–(iv) of Knapp's reductive groups, without his axiom (v) that `Ad(G) ⊆ Int(𝔤_ℂ)` (Knapp 2002, Ch. VII §2; LieGroups Layer 9). The positivity and polar fields are not implied by the base structure (Checks below).

API:

- Forgetting `B` and the polar field gives the base `CartanInvolution`, and every base Layer 9 statement about it applies.
- `θ(k·lieExp X) = k·lieExp(−X)` for `k ∈ K` and `X ∈ 𝔭`. So `θ` is determined by `K` and `𝔭`.
- The polar map is a diffeomorphism. It is a homeomorphism by hypothesis; its differential is invertible because `ad X` has real eigenvalues for `X ∈ 𝔭`, through the LieGroups Layer 1 formula for the differential of `lieExp`.
- `B_θ(X, Y) = −B(X, dθ Y)` is an inner product on `𝔤`. For `X ∈ 𝔭`, `ad X` is `B_θ`-symmetric, hence diagonalizable with real eigenvalues. For `X ∈ 𝔨`, `ad X` is `B_θ`-skew.
- `dθ` restricted to `[𝔤, 𝔤]` is a Cartan involution of that semisimple Lie algebra: `−K_{[𝔤,𝔤]}(X, dθ Y)` is positive definite, where `K_{[𝔤,𝔤]}` is the Killing form.
- `K` meets every connected component of `G`; `K/K⁰ → G/G⁰` is a bijection; `K ∩ G⁰ = K⁰`; and `G` has finitely many components.
- `K` is a maximal compact subgroup of `G`. If `K ⊊ C` with `C` compact and `c = k·lieExp X ∈ C ∖ K`, then `lieExp(nX) ∈ C` for every `n`, and this is unbounded by the polar homeomorphism.
- `𝔷 = (𝔷 ∩ 𝔨) ⊕ 𝔷_𝔭`. `lieExp` restricted to `𝔷_𝔭` is an injective homomorphism onto a closed central vector subgroup `A_G` of `G⁰`. `𝔷 ∩ 𝔨` is the Lie algebra of the maximal compact subgroup of `Z(G⁰)⁰`.
- Transport: for `g ∈ G`, `gDg⁻¹ = (c_g θ c_g⁻¹, B ∘ (Ad g⁻¹ × Ad g⁻¹))` is a reductive Cartan datum with fixed group `gKg⁻¹` and `−1`-eigenspace `Ad(g)𝔭`.

**Checks.**

- For `GL_n(ℝ)` with `θ(g) = (gᵀ)⁻¹` and `B(X, Y) = tr(XY)`: `𝔭` is the symmetric matrices and `𝔨` the skew ones. At `n = 2`, `B(diag(1, −1), diag(1, −1)) = 2 > 0` and `B(Y, Y) = tr(Y²) = −2 < 0` for `Y = ((0, 1), (−1, 0))`. The polar map is the polar decomposition, and `K = O(2)` meets both components. A form with the opposite sign fails the definiteness fields.
- For `SU(2)` with `θ = Ad(diag(i, −i))`: the fixed set `U(1)` is compact and `𝔰𝔲(2)` is semisimple, so the base `CartanInvolution` fields hold. But `Y = ((0, 1), (−1, 0)) ∈ 𝔭` has `lieExp(πY) = −1 ∈ K`, so `(1, πY)` and `(−1, 0)` have the same image and the polar map is not injective. The Killing form is negative definite on `𝔰𝔲(2)`, so no `B` is positive on `𝔭 ≠ 0`. This is not a reductive Cartan datum.
- For `S¹ = ℝ/ℤ` with `θ(x) = −x`: the fixed set `{0, 1/2}` is compact and `𝔭 = ℝ`, but `lieExp(1) = 0`, so the polar map is not injective. Not a datum.
- For `ℝ^×` with `θ(x) = x⁻¹`: `K = {±1}`, `𝔭 = 𝔤 = ℝ`, `B(X, Y) = XY`, and `(±1, t) ↦ ±e^t` is a homeomorphism. `𝔷_𝔭 = ℝ`, `A_G = ℝ_{>0}`.
- For compact `G` with `θ = id`: `𝔭 = 0` and `B` is any negative definite invariant form, obtained by averaging over `G`. The polar map is the identity of `G`.
- Non-example: the Euclidean motion group `ℝ^n ⋊ O(n)` with `θ(v, k) = (−v, k)` has compact fixed group `O(n)`, but its Lie algebra has the noncentral radical `ℝ^n`. It already fails the base reductivity fields.

### 1.2 Conjugacy of Cartan involutions of a real semisimple Lie algebra

Let `𝔰` be a finite-dimensional real semisimple Lie algebra with Killing form `κ`. An involutive automorphism `σ` of `𝔰` is a Cartan involution if `−κ(X, σY)` is positive definite. Prove: if `σ` and `σ'` are Cartan involutions of `𝔰`, there is a unique `X` in the `−1`-eigenspace of `σ` with `σ' = e^{ad X} σ e^{−ad X}`. Moreover `σ'σ = e^{2 ad X}` (Knapp 2002, Ch. VI §2). Proof sketch:

1. `ω = σ'σ` is self-adjoint for `−κ(·, σ·)`, so `P = ω²` is positive definite.
2. Its logarithm is a derivation, hence equal to `ad Z` for a unique `Z`. Since `σPσ = P⁻¹`, `Z` lies in the `−1`-eigenspace of `σ`.
3. `σ₁ = e^{ad Z/4} σ e^{−ad Z/4}` is a Cartan involution commuting with `σ'`.
4. Two commuting Cartan involutions are equal: the fixed algebra of one would otherwise meet the `−1`-eigenspace of the other, where `κ` is positive. So `X = Z/4`.
5. Uniqueness: `e^{2 ad X}` is positive definite and `ad` is injective.

*Needs:* Mathlib `LieAlgebra.IsSemisimple`, `LieAlgebra.ad`, `NormedSpace.exp`, `LieDerivation.IsKilling.exists_eq_ad` (every derivation of a finite-dimensional Killing Lie algebra is inner).

**Checks.**

- For `𝔰 = 𝔰𝔩_2(ℝ)`, `σ(Y) = −Yᵀ` and `σ' = Ad(g) σ Ad(g)⁻¹` with `g = diag(2, 1/2)`: `σ'σ = Ad(g gᵀ) = Ad(diag(4, 1/4)) = e^{2 ad X}` for `X = diag(log 2, −log 2)`. This `X` is symmetric, so it lies in the `−1`-eigenspace of `σ`, and `e^{ad X} = Ad(g)` reproduces `σ'`. The exponent `X/2` would give `Ad(diag(√2, 1/√2))`, which does not.
- For `𝔰 = 𝔰𝔲(2)` the only Cartan involution is the identity. `σ = Ad(diag(i, −i))` gives `−κ(X, σX) < 0` on the off-diagonal part, so it is not a Cartan involution.

### 1.3 Conjugacy of reductive Cartan data

Let `D = (θ, B)` and `D' = (θ', B')` be reductive Cartan data on `G`.

- If `𝔷 ∩ 𝔭 = 𝔷 ∩ 𝔭'`, then there are `X ∈ 𝔭` and `Z ∈ 𝔷_𝔭` such that, with `g = lieExp(X)·lieExp(Z) ∈ G⁰`, `θ' = c_g ∘ θ ∘ c_g⁻¹`, `K' = gKg⁻¹` and `𝔭' = Ad(g)𝔭`.
- Conversely, data conjugate under `G⁰` have the same split central part.
- In particular, when `𝔤` is semisimple any two reductive Cartan data are conjugate under `G⁰`.

(Knapp 2002, Ch. VI §2 for the Lie algebra; Ch. VII §2 for reductive groups. ALS.0.1 `IsCartanInvolution.conj` is the algebraic analogue.)

Proof sketch:

1. Apply §1.2 to `[𝔤, 𝔤]`. Replacing `D` by `lieExp(X)·D·lieExp(−X)` gives `dθ' = dθ` on `[𝔤, 𝔤]`. Both preserve `𝔷`, and `𝔷 ∩ 𝔨 = 𝔷 ∩ 𝔨'` (both are the Lie algebra of the maximal compact subgroup of `Z(G⁰)⁰`), so `dθ' = dθ`. Then `θ' = θ` on `G⁰`, and `K'⁰ = K⁰`. Also `τ = θ'θ` is trivial on `G⁰`, so `x⁻¹τ(x) ∈ Z_G(G⁰)` for every `x`.
2. Write `k' ∈ K'` as `k·lieExp(Y)` with `k ∈ K` and `Y ∈ 𝔭` (polar decomposition for `D`). Then `θ'(k') = k'` gives `τ(k) = k·lieExp(2Y)`, so `lieExp(2Y) ∈ Z_G(G⁰)` and `e^{2 ad Y} = 1`. Hence `ad Y = 0` and `Y ∈ 𝔷_𝔭`. `Y` depends only on the class of `k` in `K/K⁰`, and it satisfies `Y(k₁k₂) = Ad(k₂⁻¹)Y(k₁) + Y(k₂)`.
3. Averaging over the finite group `K/K⁰` gives `Z ∈ 𝔷_𝔭` with `Y(k) = Ad(k⁻¹)Z − Z`. Conjugation by `lieExp(Z)` fixes `dθ` and carries `K` onto `K'`.
4. Both global involutions satisfy `θ(k exp X) = k exp(−X)`, so they agree.

*Needs:* this roadmap §§1.1–1.2; LieGroups Layer 1 (`Ad(lieExp X) = exp(ad X)`); LieGroups Layer 3 (`lieMap_lieExp`, `monoidHom_eq_of_lieMap_eq` for agreement on `G⁰`).

**Checks.**

- For `G = ℝ × S¹` and `c ∈ ℝ`, `θ_c(t, s) = (−t, s − 2ct)` is a smooth involutive automorphism. Its fixed set is `{0} × S¹`, and `𝔭_c = {(x, cx)}`. The form with `B((0,1),(0,1)) = −1`, `B((1,c),(1,c)) = 1` and these two vectors orthogonal is admissible. The polar map `(s, (x, cx)) ↦ (x, s + cx)` is a homeomorphism. So each `θ_c` is a reductive Cartan datum. `G` is abelian, so conjugation is trivial, and `θ_c ≠ θ_{c'}` for `c ≠ c'`: data with different split central parts `𝔭_c ≠ 𝔭_{c'}` need not be conjugate. The unconditional statement "any two Cartan involution data are conjugate" is false.
- For `G = ℝ ⋊ ℤ/2` (the generator acting by `−1`), `θ_a(t, ε) = (−t + aε, ε)` is a reductive Cartan datum for every `a`, with `K_a = {(0, 0), (a/2, 1)}`. All have `𝔷_𝔭 = ℝ`. Conjugation by `lieExp(a/4)` carries `θ_0` to `θ_a`, an element of `exp(𝔷_𝔭)`; it is the cocycle step of the proof. An element of `exp(𝔭 ∩ [𝔤,𝔤]) = {1}` alone cannot do it.
- For `GL_n(ℝ)`: `θ` and `c_g θ c_g⁻¹` for `g` positive definite symmetric have the same split central part `ℝ·1`, and they are conjugate by `g = lieExp(½ log(gᵀg))`.

### Examples

`GL_n(ℝ)`, `SL_2(ℂ)` viewed as a real group, `ℝ^×` and compact groups are reductive Cartan data. `SU(2)` with a non-trivial involution and `S¹` with inversion are base Cartan involutions that are not reductive Cartan data. `ℝ × S¹` exhibits non-conjugate data.

### Dependencies

LieGroups Layer 0 (`lieExp`), Layer 1 (`Ad`), Layer 2 (`isEmbeddedLieSubgroup_of_isClosed`), Layer 3 (`lieMap`), Layer 9 (`CartanInvolution`); Mathlib `LinearMap.BilinForm`, `LieAlgebra.IsSemisimple`, `NormedSpace.exp`.

## Layer 2: Restricted roots, positive systems and the two Weyl groups

### 2.1 Positive systems of a possibly non-reduced root system

Let `Φ` be a finite crystallographic root system in a real vector space `V`, possibly non-reduced, in the sense of LieGroups' restricted root system. A **positive system** is a subset `Φ⁺ = {β ∈ Φ : β(v) > 0}` for some `v ∈ V*` with `β(v) ≠ 0` for all `β ∈ Φ`. Its **simple roots** are the elements of `Φ⁺` that are not sums of two elements of `Φ⁺`. The **indivisible subsystem** is `Φ_ind = {β ∈ Φ : β/2 ∉ Φ}`. Prove (Bourbaki, Ch. VI §1):

- `Φ_ind` is a reduced root system with the same reflections and the same Weyl group, and with the same chambers.
- `Φ⁺ ↦ Φ⁺ ∩ Φ_ind` is a bijection from positive systems of `Φ` onto positive systems of `Φ_ind`. The simple roots of `Φ⁺` are indivisible and form a base of `Φ_ind` in the sense of `RootPairing.Base`.
- Every root of `Φ⁺` is a non-negative integer combination of simple roots, and `Φ ∩ span(Π')` is closed under negation for every set `Π'` of simple roots.
- `W(Φ)` acts simply transitively on positive systems, by `RootPairing.Base.existsUnique_map_eq` applied to `Φ_ind`.
- The stabilizer in `W(Φ)` of a point of the closed chamber, or of a subspace pointwise, is generated by the reflections it contains, by `TauCeti.stabilizer_eq_closure_wallReflections` applied to `Φ_ind` in its span.

API:

- Positive systems exist and are exactly the sets `{β : β(v) > 0}` for `v` in an open chamber. `Φ⁺ ⊔ (−Φ⁺) = Φ`.
- `β ∈ Φ⁺` and `2β ∈ Φ` imply `2β ∈ Φ⁺`. A divisible root is never simple.
- For `Π' ⊆ Π`, `Φ_{Π'} = Φ ∩ span(Π')` is a root system with positive system `Φ⁺ ∩ Φ_{Π'}`, simple roots `Π'` and Weyl group `W_{Π'}`.

**Checks.**

- `BC₁ = {±λ, ±2λ}`: `Φ_ind = {±λ}`, the positive systems are `{λ, 2λ}` and `{−λ, −2λ}`, and `Π = {λ}`. The full `BC₁` has no `RootPairing.Base`. Declaring `2λ` simple fails: `λ ∈ Φ⁺` is not a combination of it with integer coefficients.
- `A₂`: six positive systems, permuted simply transitively by `S₃`. The stabilizer of `v` with `α₁(v) = 0`, `α₂(v) > 0` is `{1, s_{α₁}}`.
- `BC₂`: `Φ_ind = B₂`, with `|W| = 8` and 8 positive systems. `Π = {e₁ − e₂, e₂}`, and `Φ ∩ span({e₂}) = {±e₂, ±2e₂}`. A definition of `Φ_{Π'}` using only coefficient-one combinations of `Π'` would miss `±2e₂`.

### 2.2 Conjugacy of maximal abelian subspaces of 𝔭

For a reductive Cartan datum, any two maximal abelian subspaces `𝔞, 𝔞' ⊆ 𝔭` are conjugate under `Ad(K⁰)`, and `𝔭 = ⋃_{k ∈ K⁰} Ad(k)𝔞`. Every `𝔞` contains `𝔷_𝔭` (Knapp 2002, Ch. VI §5). Proof sketch:

1. Choose regular `H ∈ 𝔞` and `H' ∈ 𝔞'`, so `Z_𝔭(H) = 𝔞` and `Z_𝔭(H') = 𝔞'`, using the root decomposition of base Layer 9.
2. Maximize `k ↦ B(Ad(k)H', H)` on the compact `K⁰`.
3. At a maximum, `B(Z, ⁅Ad(k)H', H⁆) = 0` for all `Z ∈ 𝔨`, so `⁅Ad(k)H', H⁆ = 0`. Then `Ad(k)H' ∈ 𝔞` and `Ad(k)𝔞' = Z_𝔭(Ad(k)H') ⊇ 𝔞`.

*Needs:* §1.1; LieGroups Layer 9 (restricted root decomposition).

**Checks.**

- In `GL_n(ℝ)`, a maximal abelian subspace of the symmetric matrices is conjugate under `SO(n)` to the diagonal one (spectral theorem). For `n = 2`, `ℝ·((0, 1), (1, 0))` is moved to `ℝ·diag(1, −1)` by rotation through `π/4`.
- For `ℝ^×`, `𝔞 = 𝔭 = ℝ` is the only choice. For compact `G`, `𝔞 = 0`.

### 2.3 The two Weyl groups

For an Iwasawa triple, define `W_G = N_K(𝔞)/Z_K(𝔞)` with its action on `𝔞` by `Ad`. Prove the following (Knapp 2002, Ch. VI §5):

- `W_G` acts faithfully on `𝔞` and preserves `Σ`, and the multiplicities `dim 𝔤^β`.
- For each `β ∈ Σ` and non-zero `X ∈ 𝔤^β`, a suitable `k = lieExp(c(X + dθX)) ∈ K⁰` normalizes `𝔞` and acts as `s_β`.
- `N_{K⁰}(𝔞)/Z_{K⁰}(𝔞) = W(Σ)`, and `W(Σ)` is a normal subgroup of `W_G`.
- `N_G(𝔞) = N_K(𝔞)·A` and `Z_G(𝔞) = M·A` with `M ∩ A = 1`, so `N_G(𝔞)/Z_G(𝔞) ≅ W_G`.

Proof sketch:

- The reflections come from the `𝔰𝔩(2, ℝ)`-triple through `X`, integrated by LieGroups Layer 4.
- For `N_{K⁰}(𝔞) ⊆ W(Σ)·Z_{K⁰}(𝔞)`: correct `k` by `W(Σ)` so that it fixes the positive chamber. Then `Ad(k)` is an inner automorphism of `𝔤_ℂ` fixing a Cartan subalgebra containing `𝔞` and a compatible Borel subalgebra, so it acts trivially on `𝔞`.
- For `N_G(𝔞)`: write `g = k·lieExp X`. Then `θ(g)` also normalizes `𝔞`, so `e^{−2 ad X}` preserves `𝔞`. Hence `ad X` preserves `𝔞`, `⁅X, 𝔞⁆ ⊆ 𝔞 ∩ 𝔨 = 0` and `X ∈ 𝔞`.

*Needs:* §§1.1, 2.1–2.2; LieGroups Layer 4 (`exists_monoidHom_of_lieHom`), Layer 7 (complexification), Layer 9.

**Checks.**

- For `GL_n(ℝ)`, `W_G ≅ S_n`, agreeing with `TauCeti.unitaryNormalizerPosDiagonalQuotientMulEquivPerm`. Here `N_G(𝔞)` is the monomial matrices and `Z_G(𝔞)` the invertible diagonal ones.
- For `SL_2(ℝ)`, `W_G` has order two, generated by the class of `((0, −1), (1, 0))`. That element acts on `𝔞 = ℝ·diag(1, −1)` by `−1`.
- For `O(1,1) = {g ∈ GL_2(ℝ) : gᵀ J g = J}`, `J = diag(1, −1)`: `𝔤 = 𝔞 = ℝ·((0, 1), (1, 0))`, `Σ = ∅` and `W(Σ) = 1`. But `diag(1, −1) ∈ K` acts on `𝔞` by `−1`, so `W_G ≅ ℤ/2 ≠ W(Σ)`. Without a hypothesis the base README's identification of `N_K(𝔞)/Z_K(𝔞)` with the restricted Weyl group fails.

### 2.4 The component condition

Say that an Iwasawa datum `(D, 𝔞)` satisfies the **component condition** if every connected component of `G` meets `M = Z_K(𝔞)`, that is, `G = M·G⁰`. Prove (Knapp 2002, Ch. VII §5):

- The following are equivalent: the component condition; `W_G = W(Σ)`; `N_K(𝔞) = M·N_{K⁰}(𝔞)`; the stabilizer of one (equivalently every) positive system in `N_K(𝔞)` is `M`.
- The condition does not depend on the choice of `𝔞`, because any two choices are `K⁰`-conjugate (§2.2) and `M` moves with them.
- It holds whenever Knapp's axiom (v) holds: `Ad(g)` lies, for every `g ∈ G`, in the subgroup of `Aut(𝔤_ℂ)` generated by the `e^{ad Z}`, `Z ∈ 𝔤_ℂ`.
- It holds when `G` is connected, and when `G` is compact.

Proof sketch for the equivalences: for `k ∈ K`, `Ad(k)𝔞` is `K⁰`-conjugate to `𝔞` (§2.2), so `K = N_K(𝔞)·K⁰`. With the polar decomposition `G = K·lieExp 𝔭`, `G = N_K(𝔞)·G⁰`, and `N_{K⁰}(𝔞)/Z_{K⁰}(𝔞) = W(Σ)` (§2.3) finishes. *Needs:* §§2.2–2.3.

**Checks.**

- `GL_n(ℝ)`: `M` is the `2^n` diagonal sign matrices and contains `diag(−1, 1, …, 1)`, which meets the determinant-negative component. The condition holds.
- `O(1,1)` (§2.3): `M = {±1}` meets two of the four components, so the condition fails, matching `W_G ≠ W(Σ)`.
- `Aut(𝔰𝔩_3(ℝ))`, a transpose-stable closed subgroup of `GL(𝔰𝔩_3(ℝ))` with two components, contains `σ(X) = −Xᵀ`. The element `σ·Ad(w₀)`, with `w₀` the antidiagonal permutation, lies in `K` and acts on `𝔞` by `diag(h₁, h₂, h₃) ↦ −diag(h₃, h₂, h₁)`. It interchanges `e₁ − e₂` and `e₂ − e₃`, preserves `Σ⁺`, and is not in `W(A₂)`. So `|W_G| = 12` and the condition fails.
- Compact `O(4)`: `𝔞 = 0` and `M = O(4)`, so the condition holds. A determinant-negative element acts on `𝔰𝔬(4, ℂ)` by an outer automorphism, so axiom (v) fails. The component condition is strictly weaker than (v).

### 2.5 Conjugacy of Iwasawa triples

Let `(D, 𝔞, Σ⁺)` and `(D', 𝔞', Σ'⁺)` be Iwasawa triples on `G` with `𝔷 ∩ 𝔭 = 𝔷 ∩ 𝔭'`. There is `g ∈ G⁰` with `gDg⁻¹ = D'`, `Ad(g)𝔞 = 𝔞'` and `Ad(g)` carrying `Σ⁺` onto `Σ'⁺`. For `D = D'` and `𝔞 = 𝔞'`, the elements of `K` doing this for fixed `Σ⁺, Σ'⁺` form one coset of the stabilizer of `Σ⁺` in `N_K(𝔞)`, which is `M` under the component condition (Knapp 2002, Ch. VI §§2, 5). *Needs:* §§1.3, 2.1–2.4.

**Checks.**

- `SL_3(ℝ)`: the six positive systems of `A₂` for diagonal `𝔞` are permuted by the permutation matrices with signs fixed to determinant one. These realize `S₃`.
- `ℝ × S¹` (§1.3): all `θ_c` have `Σ = ∅`, so the triples are `(θ_c, 𝔭_c, ∅)`. They are conjugate only for equal `c`.

### 2.6 The base Iwasawa datum of an Iwasawa triple

For an Iwasawa triple construct the base structure `IwasawaData I G` with:

- `cartan` the underlying `CartanInvolution`, `K = G^θ`, `𝔞`, `A = lieExp 𝔞`;
- `N = lieExp 𝔫` for `𝔫 = ⨁_{β ∈ Σ⁺} 𝔤^β`;
- `chamber` the closed positive chamber `{H ∈ 𝔞 : β(H) ≥ 0 for all β ∈ Σ⁺}`.

Prove every field:

- `N` is closed and connected with `N = lieExp(Lie(N))` and `Lie(N) = 𝔫`;
- `lieExp` is injective on `𝔞`, by the polar homeomorphism;
- `⁅𝔞, 𝔫⁆ ⊆ 𝔫`;
- `𝔤 = (𝔨 ⊕ 𝔞) ⊕ 𝔫`;
- the chamber is a convex cone spanning `𝔞`.

Consequently `iwasawaDecomposition` and `kakDecomposition` of the base apply to `(K, A, N)` and to this chamber (Knapp 2002, Ch. VI §4). *Needs:* §§1.1, 2.1; LieGroups Layer 9 (`IwasawaData`, `iwasawaDecomposition`, `kakDecomposition`, the Lie-algebra Iwasawa decomposition and the closedness of `N`).

**Checks.**

- For `GL_n(ℝ)` the datum is `(O(n), positive diagonal, upper unitriangular)`. The base decomposition agrees with `Matrix.GeneralLinearGroup.existsUnique_iwasawa`: Gram–Schmidt, the `QR` decomposition with positive diagonal.
- For `SL_2(ℝ)` the chamber is `{diag(t, −t) : t ≥ 0}`, which spans `𝔞`. The empty cone would fail `chamber_span`.
- For `SL_2(ℝ)`, building `𝔫` from all of `Σ` instead of `Σ⁺` gives `𝔤^β ⊕ 𝔤^{−β} = ℝE₊ ⊕ ℝE₋`. This space contains `𝔨 = ℝ(E₋ − E₊)`, and the dimensions add to `1 + 1 + 2 = 4 > 3`, so the complement field fails. The open chamber `{H : β(H) > 0}` does not contain `0`, so it fails closure under scaling by `c = 0`.
- For compact `G`, `𝔭 = 0`, so `𝔞 = 0`, `Σ⁺ = ∅`, `𝔫 = 0` and `A = N = {1}`. The chamber is `{0}`, which spans `𝔞 = 0`, and the base Iwasawa decomposition reduces to `G = K`.

### Examples

`GL_n(ℝ)` (`W = S_n`, component condition holds); `SO₀(n, 1)` (`Σ = {±λ}`, multiplicity `n − 1`); `SU(n, 1)` for `n ≥ 2` (`Σ = BC₁`, multiplicities `2(n − 1)` and `1`); `Sp_4(ℝ)` (`Σ = C₂`); `O(1,1)` and `Aut(𝔰𝔩_3(ℝ))` (component condition fails).

### Dependencies

Layer 1; LieGroups Layers 4, 7, 9; Tau Ceti `RootPairing.Base.existsUnique_map_eq`, `TauCeti.stabilizer_eq_closure_wallReflections`; Mathlib `RootPairing`, `RootPairing.Base`, `RootPairing.IsReduced`, `RootPairing.weylGroup` (recorded in RootSystems, "Exact supplier contracts").

## Layer 3: The minimal parabolic subgroup

### 3.1 Centralizers of subspaces of 𝔞

Let `(D, 𝔞)` be an Iwasawa datum and `𝔰 ⊆ 𝔞` a subspace. Prove the following (Knapp 2002, Ch. VII §2):

- `L = Z_G(𝔰)` is a closed `θ`-stable subgroup with Lie algebra `𝔩 = Z_𝔤(𝔰) = 𝔪 ⊕ 𝔞 ⊕ ⨁_{β|_𝔰 = 0} 𝔤^β`.
- `(θ|_L, B|_𝔩)` is a reductive Cartan datum on `L` with fixed group `K ∩ L` and polar decomposition `L = (K ∩ L)·lieExp(𝔩 ∩ 𝔭)`.
- `𝔞` is maximal abelian in `𝔩 ∩ 𝔭`, the restricted roots are `{β ∈ Σ : β|_𝔰 = 0}`, and `Z_{K∩L}(𝔞) = M`.
- If `G` satisfies the component condition, so does `L`.

Proof sketch:

1. For `l = k·lieExp X ∈ L`, `θ(l)⁻¹ l = lieExp(2X) ∈ L`. So `e^{2 ad X}` fixes `𝔰`, which forces `⁅X, 𝔰⁆ = 0`.
2. For the component condition: an element of `K⁰ ∩ L` can be moved into `N_{K⁰}(𝔞)` by `(K ∩ L)⁰` (§2.2 for `L`). It then acts on `𝔞` by an element of `W(Σ)` fixing `𝔰` pointwise. That element is generated by reflections `s_β` with `β|_𝔰 = 0` (§2.1), which are realized in `(K ∩ L)⁰` (§2.3).

*Needs:* §§1.1, 2.1–2.4.

**Checks.**

- `G = GL_3(ℝ)`, `𝔰 = ℝ·diag(1, 1, −2)`: `L = GL_2(ℝ) × GL_1(ℝ)` block diagonal, with roots `±(e₁ − e₂)`.
- `𝔰 = 0` gives `L = G`. `𝔰 = 𝔞` gives `L = MA`, with no roots.
- `G = SL_2(ℂ)` as a real group, `𝔰 = 𝔞`: `L = MA` with `M = {diag(e^{iφ}, e^{−iφ})} ≅ U(1)`. A positive-dimensional `M` is allowed.

### 3.2 The groups M, N and P

For an Iwasawa triple define:

- `M = Z_K(𝔞) = {k ∈ K : Ad(k)H = H for all H ∈ 𝔞}`;
- `N = lieExp 𝔫`, the subgroup of §2.6;
- the **minimal parabolic subgroup** `P = M·A·N`.

API:

- `M` is a compact subgroup, possibly disconnected, with `Lie(M) = 𝔪`. `M = Z_K(A)`, because `A = lieExp 𝔞` is connected with Lie algebra `𝔞`. `M` preserves every `𝔤^β`.
- `A` is a closed subgroup, and `lieExp : 𝔞 → A` is an isomorphism of Lie groups from the vector group `𝔞`.
- `N` is closed, simply connected and nilpotent, and `lieExp : 𝔫 → N` is a diffeomorphism.
- `M` and `A` commute, `M ∩ A = 1`, and `MA = Z_G(𝔞) ≅ M × A`. `M` and `A` normalize `N`.
- `P` is a subgroup and `Z(G) ⊆ MA ⊆ P`.

**Checks.**

- `SL_2(ℝ)`, `𝔞 = ℝ·diag(1, −1)`, `Σ⁺ = {α}` with `α(diag(1, −1)) = 2`: `M = {±1}`, `A` positive diagonal, `N` upper unitriangular, `P` upper triangular. The `M`-factor of `((−2, 3), (0, −1/2))` is `−1` (sign convention above). Taking the identity component `M⁰ = {1}` in place of `M` would miss `−1` and make `P` connected, which fails `P ⊇ Z(G) = {±1}`.
- `GL_n(ℝ)`: `M` has order `2^n` and `P = TauCeti.upperTriangularGroup`.
- `SL_2(ℂ)`: `M ≅ U(1)`, `N = {((1, z), (0, 1)) : z ∈ ℂ}` with `dim N = 2 = m_α`.
- Compact `G` and `ℝ^×`: `P = G`.

### 3.3 The Langlands decomposition of P

For an Iwasawa triple prove (Knapp 2002, Ch. VII §§2, 7; Warner 1972, Ch. 1 §1.2):

- (a) `P` is closed and `N` is normal in `P`.
- (b) The multiplication `M × A × N → P` is a diffeomorphism, and `Lie(P) = 𝔪 ⊕ 𝔞 ⊕ 𝔫`.
- (c) `P ∩ θ(P) = MA`, with `θ(P) = M A N̄`.
- (d) `G = KAN = KP`, `K ∩ P = M`, and `kM ↦ kP` is a `K`-equivariant homeomorphism `K/M → G/P`; in particular `G/P` is compact.
- (e) `P` and `D` determine the rest: `𝔫` is the `B`-orthogonal of `Lie(P)`, `MA = P ∩ θ(P)`, `𝔞 = Lie(P ∩ θ(P)) ∩ 𝔭`, `M = Z_K(𝔞)`, and `Σ⁺ = {β ∈ Σ : 𝔤^β ⊆ Lie(P)}`.
- (f) Under the component condition, `P = N_G(𝔫) = N_G(P)`. Hence `P` is normal in `G` only if `P = G`, and `P = G` iff `Σ = ∅`.

Proof sketch:

- For (c): an element of `N̄` has unbounded `lieExp(−tH₀)`-conjugates for regular `H₀` in the positive chamber, while elements of `P` have bounded ones. So `P ∩ N̄ = 1`.
- For (d): `G = KAN` is §2.6 with base `iwasawaDecomposition`. `K ∩ MAN = M` follows from its uniqueness.
- For (f): if `k ∈ K` normalizes `𝔫`, it normalizes `dθ𝔫` and `(𝔫 ⊕ dθ𝔫)^⊥ = 𝔪 ⊕ 𝔞`. Since `𝔭 ∩ (𝔪 ⊕ 𝔞) = 𝔞`, `k ∈ N_K(𝔞)` fixes `Σ⁺`, so `k ∈ M` (§2.4). For `N_G(P)`: it normalizes `Lie(P)` and hence its `B`-orthogonal `𝔫`.

*Needs:* §§2.3–2.6, 3.1–3.2; LieGroups Layer 2 (`isEmbeddedLieSubgroup_of_isClosed`), Layer 9 (`iwasawaDecomposition`).

**Checks.**

- `SL_2(ℝ)`: `θ(P)` is lower triangular, `P ∩ θ(P)` is the diagonal subgroup `MA`, and `G/P ≅ SO(2)/{±1} ≅ ℙ¹(ℝ)`. For `a = diag(t, t⁻¹)`, `det(Ad(a)|_𝔫) = t²`.
- `SO₀(n, 1)` with `𝔞 = ℝ(E_{n,n+1} + E_{n+1,n})`: `M ≅ SO(n − 1)`, `N ≅ ℝ^{n−1}` abelian, `P` is the stabilizer of the isotropic line `ℝ(e_n + e_{n+1})`, and `G/P ≅ S^{n−1}`.
- `O(1,1)`: `P = MA = {±exp(tY)}` has index two in `G`, so `P` is normal and `N_G(P) = G ≠ P` while `Σ = ∅`. This is the negative control for the component condition in (f).
- `GL_2(ℝ)`: the nilradical of `Lie(P)` is `ℝE₁₂ ⊕ ℝ·1`, two-dimensional, while `𝔫 = ℝE₁₂`. So "`𝔫` is the nilradical of `Lie(P)`" is false when `𝔷 ≠ 0`. The `B`-orthogonal of `Lie(P)` is `ℝE₁₂`, as in (e).

### 3.4 Minimal parabolic subgroups form one conjugacy class

Call a subgroup a **minimal parabolic subgroup** of `(G, D)` if it is `P(D', 𝔞, Σ⁺)` for some Iwasawa triple whose datum `D'` has the same split central part as `D`. Prove that these form a single `G⁰`-conjugacy class. For a fixed `D`, prove that they form a single `K⁰`-conjugacy class. *Needs:* §§2.5, 3.2.

**Checks.**

- `SL_2(ℝ)`: the minimal parabolics are the stabilizers of the points of `ℙ¹(ℝ)`, all conjugate to the upper triangular group.
- Real rank one: `Σ ⊆ {±λ, ±2λ}` with `Σ⁺ = Σ ∩ {λ, 2λ}`, and the minimal parabolics containing `MA` are exactly `P` and `θ(P) = MAN̄`. Here `𝔞` is one-dimensional, so the two positive systems give the two subgroups.

### Examples

`SL_2(ℝ)`, `GL_n(ℝ)` (`P` upper triangular, `M` the sign matrices), `SO₀(n, 1)`, `SU(n, 1)` (`𝔫 = 𝔤^λ ⊕ 𝔤^{2λ}` Heisenberg of dimension `2n − 1`), `SL_2(ℂ)` (`M = U(1)`), compact `G` and `ℝ^×` (`P = G`).

### Dependencies

Layers 1–2; LieGroups Layers 2, 9; Mathlib `Subgroup.normalizer`, `Subgroup.centralizer`.

## Layer 4: The Bruhat decomposition and the Tits system

### 4.1 Fixed points of A on G/P

For an Iwasawa triple, prove the following:

- `𝔭 ∩ (𝔪 ⊕ 𝔞 ⊕ 𝔫) = 𝔞`. If `X = m + a + n` lies in `𝔭`, then `2m + n + dθ n = 0`, which forces `m = n = 0`.
- Consequently, for `g = kp` (§3.3(d)), `Ad(g)(𝔪 ⊕ 𝔞 ⊕ 𝔫) ⊇ 𝔞` iff `k ∈ N_K(𝔞)`. So the minimal parabolic subalgebras containing `𝔞` are `𝔪 ⊕ 𝔞 ⊕ ⨁_{β ∈ Σ'⁺} 𝔤^β` for the positive systems `Σ'⁺`, permuted simply transitively by `W(Σ)`.
- For `H₀` regular, the fixed points of `t ↦ lieExp(tH₀)` on `G/P` are the `kP` with `k ∈ N_K(𝔞)`. These are the `|W_G|` distinct points `n_w P`, `w ∈ W_G`, because `n_w P = n_{w'} P` iff `n_w⁻¹n_{w'} ∈ K ∩ P = M` (§3.3(d)). Under the component condition they are the `|W|` points indexed by `W(Σ)`.

(Knapp 2002, Ch. VII §4.) *Needs:* §§2.3–2.4, 3.3.

**Checks.**

- `SL_2(ℝ)` on `ℙ¹(ℝ)`: `diag(e^t, e^{−t})` fixes exactly the lines `[e₁]` and `[e₂]`, which are `eP` and `n_s P`.
- `SL_3(ℝ)`: six fixed flags, the coordinate flags, matching `|S₃| = 6`.

### 4.2 The Bruhat decomposition

For every Iwasawa triple prove (Knapp 2002, Ch. VII §4; Warner 1972, Ch. 1 §1.2):

- `G = ⨆_{w ∈ W_G} P n_w P`, a disjoint union indexed by `W_G = N_K(𝔞)/M` (§2.3), independent of the representatives `n_w`.
- With `N_w = N ∩ n_w N̄ n_w⁻¹ = lieExp(⨁_{β ∈ Σ⁺, w⁻¹β ∈ −Σ⁺} 𝔤^β)`, the map `N_w × P → P n_w P`, `(u, p) ↦ u n_w p`, is a homeomorphism onto `P n_w P`. This cell is a locally closed embedded submanifold of dimension `dim P + Σ_{β ∈ Σ⁺, w⁻¹β < 0} dim 𝔤^β`.
- The open cells are the `P n_w P` with `w⁻¹Σ⁺ = −Σ⁺`, one for each element of the stabilizer of `Σ⁺` in `W_G`; when there are several, none is dense.

Under the component condition, moreover:

- `W_G = W(Σ)` (§2.4), so the union is indexed by `W = W(Σ)`, and for the longest element `w₀` the cell `P n_{w₀} P` is the unique open cell and is dense. Equivalently `N̄ × M × A × N → G` is a diffeomorphism onto the open dense subset `N̄MAN = n_{w₀}⁻¹ P n_{w₀} P`.

Proof sketch (the dynamics of a regular one-parameter subgroup):

1. `G = KP` (§3.3(d)), `K = N_K(𝔞)·K⁰` (proof of §2.4) and `K⁰P = M·G⁰`, so `G = N_K(𝔞)·G⁰`. The datum restricts to the connected group `G⁰`, which satisfies the component condition (§2.4), with `K ∩ G⁰ = K⁰` (§1.1) and minimal parabolic `P ∩ G⁰ = Z_{K⁰}(𝔞)·A·N`.
2. For `G⁰`: since `P ∩ G⁰ = N_{G⁰}(𝔫)` (§3.3(f)), `gP ↦ Ad(g)𝔫` embeds the compact `G⁰/(P ∩ G⁰)` as a closed orbit in the Grassmannian of `dim 𝔫`-planes of `𝔤`.
3. On the Grassmannian, `a_t = lieExp(tH₀)` acts by the real diagonalizable `e^{t ad H₀}`. So every orbit converges as `t → −∞`, and its limit is an `a_t`-fixed point `n_w (P ∩ G⁰)`, `w ∈ W(Σ)` (§4.1 for `G⁰`).
4. Still in `G⁰`, in the open chart `n_w N̄ (P ∩ G⁰)/(P ∩ G⁰)` the flow is linear in exponential coordinates on the graded nilpotent `N̄`. So the points converging to `n_w (P ∩ G⁰)` form the orbit `N_w n_w (P ∩ G⁰)/(P ∩ G⁰)`, and `G⁰ = ⨆_{w ∈ W(Σ)} (P ∩ G⁰) n_w (P ∩ G⁰)`.
5. Back in `G`: `G = N_K(𝔞)·G⁰ ⊆ ⋃_{n ∈ N_K(𝔞)} P n P`, and `P n P = N_n n P` for `n ∈ N_K(𝔞)`, because `n` normalizes `MA` and `N = N_n·(N ∩ nNn⁻¹)`. Every point of `N_n n P/P` converges to `nP` as `t → −∞`, since `a_t u a_{−t} → 1` for `u ∈ N` and `n` normalizes `A`; so two cells `P n P`, `P n' P` meet only if `nP = n'P`, that is, `n⁻¹n' ∈ M` (§3.3(d)). The `N_n`-coordinate is unique because `N̄ ∩ P = 1` (§3.3(c)), and the `N̄MAN` chart is open because `𝔤 = 𝔫̄ ⊕ 𝔪 ⊕ 𝔞 ⊕ 𝔫`.

*Needs:* §§2.3–2.4, 3.3, 4.1; LieGroups Layer 1 (`Ad(lieExp X) = exp(ad X)`).

**Checks.**

- `SL_2(ℝ)`: `G = P ⊔ P n_s P`, with `P n_s P = {g : g₂₁ ≠ 0}` open dense of dimension `3 = 2 + 1`. For `GL_2` this is `TauCeti.GL2Borel.mem_doubleCoset_weyl_iff`.
- `SL_3(ℝ)`: six cells of dimensions `5, 6, 6, 7, 7, 8`, with `dim P = 5` and `ℓ(w)` added.
- `SU(2, 1)`: two cells. The big cell has dimension `dim P + 3 = 8 = dim G`, with `m_λ + m_{2λ} = 2 + 1`. Counting only `m_λ` would give 7.
- `O(1,1)`: `W_G = ℤ/2` (§2.3) and `G = P ⊔ dP` for `d = diag(1, −1)`, two cells, both open of dimension `1 = dim P` since `Σ⁺ = ∅`, and neither dense. The union over `W(Σ) = 1` is `P ≠ G`: the `W(Σ)`-indexed form and the density of a big cell need the component condition; the decomposition over `W_G` does not.
- `Aut(𝔰𝔩_3(ℝ))`: twelve cells, indexed by `W_G` of order 12 (§2.4), two of them open, for `w₀` and for `w₀` composed with the class of `σ·Ad(w₀)`.
- Compact `G`: `𝔞 = 0`, `N_K(𝔞) = K = M`, `W_G = 1` and the single cell is `G = P`.

### 4.3 The Tits system of a real reductive group

Assume the component condition. Construct a `TauCeti.TitsSystem G` with:

- `subgroupB = P` and `subgroupN = N_G(𝔞)`, so that `P ∩ N_G(𝔞) = MA`;
- Weyl group `N_G(𝔞)/Z_G(𝔞) ≅ W_G = W(Σ)`;
- simple reflections the classes of `n_{s_α}` for `α ∈ Π`.

Its `TauCeti.TitsSystem.bruhatCell` of `w` is `P n_w P`, and `TauCeti.TitsSystem.existsUnique_mem_bruhatCell` recovers §4.2 (Knapp 2002, Ch. VII §4; Bourbaki, Ch. IV §2). Proof sketch, axiom by axiom:

- *Generation:* `⟨P, N_G(𝔞)⟩ ⊇ n_{w₀} N n_{w₀}⁻¹ = N̄`, so it contains `G⁰`, whose Lie algebra is `𝔫̄ ⊕ 𝔪 ⊕ 𝔞 ⊕ 𝔫`. It also contains `M`, which meets every component.
- *Normality:* `P ∩ N_G(𝔞) = MA` is normal in `N_G(𝔞)`.
- *Simple reflections:* they generate `W(Σ)` and are involutions.
- *Non-normalization:* `n_s N_α n_s⁻¹ = N_{−α} ⊄ P`, with `N_α = lieExp(𝔤^α ⊕ 𝔤^{2α})`.
- *Multiplication axiom:* write `N = N_α·N^{(α)}` with `N^{(α)} = lieExp(⨁_{β ∈ Σ⁺ ∖ {α, 2α}} 𝔤^β)` normalized by `n_s`. Then `P n_s P n_w P = P n_s N_α n_w P`. This equals `P n_s n_w P` if `w⁻¹α > 0`. Otherwise it is contained in `P N_{−α} n_{s w} P`, and the rank-one decomposition `N_{−α} ⊆ (P ∩ L_α) ∪ (P ∩ L_α) n_s (P ∩ L_α)` gives `P n_s n_w P ∪ P n_w P`. That decomposition is §4.2 for the Levi `L_α = Z_G(ker α)` of §3.1, which has `W(Σ_α) = {1, s_α}` (Knapp 2002, Ch. VII §6).

*Needs:* §§3.1, 3.3, 4.2; Tau Ceti `TauCeti.TitsSystem`, `TauCeti.TitsSystem.existsUnique_mem_bruhatCell`, `TauCeti.TitsSystem.disjoint_bruhatCell_iff`.

**Checks.**

- `GL_n(ℝ)`: `P` is the upper triangular group and `N_G(𝔞)` the monomial matrices. These are the subgroups of `TauCeti.glTitsSystem ℝ (n − 1)`, whose Weyl group is identified with `S_n` by `TauCeti.glTitsSystemWeylGroupMulEquivPerm`.
- `SL_2(ℝ)` is a rank-one system, and `TauCeti.TitsSystem.ofRankOne` applies with `n = ((0, −1), (1, 0))`.
- Compact `G`: `P = G` and `S = ∅`, consistent with Tau Ceti's `subgroupB_eq_top_iff`.
- `Aut(𝔰𝔩_3(ℝ))`: `N_G(𝔞)/Z_G(𝔞)` has order 12 and is not generated by the two simple reflections, so the generation axiom for `W` fails.

### Examples

`SL_2(ℝ)`, `SL_3(ℝ)` (six cells), `SO₀(n, 1)` and `SU(n, 1)` (two cells each), `GL_n(ℝ)` (agreement with `TauCeti.glTitsSystem`), compact `G` (one cell).

### Dependencies

Layers 2–3; LieGroups Layers 1, 9; Tau Ceti `TauCeti.TitsSystem`, `TauCeti.TitsSystem.bruhatCell`, `TauCeti.TitsSystem.existsUnique_mem_bruhatCell`, `TauCeti.TitsSystem.disjoint_bruhatCell_iff`, `TauCeti.TitsSystem.ofRankOne`; Mathlib `DoubleCoset.doubleCoset`.

## Layer 5: Standard parabolic subalgebras

### 5.1 The subalgebras attached to a set of simple roots

For an Iwasawa triple and `Π' ⊆ Π` define:

- `𝔮_{Π'} = 𝔪 ⊕ 𝔞 ⊕ ⨁_{β ∈ Σ⁺ ∪ Σ_{Π'}} 𝔤^β`;
- `𝔞_{Π'} = ⋂_{α ∈ Π'} ker α ⊆ 𝔞`;
- `𝔩_{Π'} = 𝔪 ⊕ 𝔞 ⊕ ⨁_{β ∈ Σ_{Π'}} 𝔤^β`;
- `𝔫_{Π'} = ⨁_{β ∈ Σ⁺ ∖ Σ_{Π'}} 𝔤^β`.

API:

- `𝔮_∅ = 𝔪 ⊕ 𝔞 ⊕ 𝔫` and `𝔮_Π = 𝔤`.
- `𝔮_{Π'} = 𝔩_{Π'} ⊕ 𝔫_{Π'}`, and `𝔩_{Π'} = Z_𝔤(𝔞_{Π'}) = 𝔮_{Π'} ∩ dθ𝔮_{Π'}`.
- `𝔫_{Π'}` is an ideal of `𝔮_{Π'}` and equals the `B`-orthogonal of `𝔮_{Π'}`.
- `𝔞_{Π'} = 𝔷(𝔩_{Π'}) ∩ 𝔭`. It contains `𝔷_𝔭`, and `𝔞 = 𝔞_{Π'} ⊕ (𝔞 ∩ [𝔩_{Π'}, 𝔩_{Π'}])`.

**Checks.**

- `SL_3(ℝ)` with `Π = {α₁, α₂}`: `𝔮_∅` is the upper triangular matrices, `𝔮_{α₁}` the block upper triangular ones with blocks `(2, 1)`, `𝔮_{α₂}` those with blocks `(1, 2)`, and `𝔮_Π = 𝔤`. Four subalgebras.
- `SU(n, 1)` for `n ≥ 2`, `Π = {λ}`: `𝔮_Π` contains `𝔤^{−2λ}` because `−2λ ∈ Σ ∩ span(Π)`. Using only `±Π'` would give a proper subspace that is not a subalgebra.
- `GL_n(ℝ)`: subsets of `Π` correspond to compositions of `n`; there are `2^{n−1}` of them. `𝔞_{Π'}` is the block-scalar diagonal matrices.

### 5.2 Classification of the subalgebras containing 𝔮_∅

For an Iwasawa triple:

- each `𝔮_{Π'}` is a Lie subalgebra;
- `Π' ↦ 𝔮_{Π'}` is an order isomorphism from the subsets of `Π` onto the Lie subalgebras of `𝔤` containing `𝔪 ⊕ 𝔞 ⊕ 𝔫`;
- the inverse sends `𝔮` to `{α ∈ Π : 𝔤^{−α} ⊆ 𝔮}`.

(Knapp 2002, Ch. VII §7, Proposition 7.76 with Lemma 7.73, as cited by Brown–Fisher–Hurtado 2022, §3.1, and Brown–Rodriguez Hertz–Wang 2022, §1.2.) Proof sketch:

1. A subalgebra `𝔮 ⊇ 𝔮_∅` is `ad 𝔞`-stable, hence graded.
2. If `𝔮 ∩ 𝔤^{−β} ≠ 0` for some `β ∈ Σ⁺`, the `𝔰𝔩(2, ℝ)`-triples through a non-zero element and the `M`-action give `𝔤^{−β} ⊆ 𝔮`, and `𝔤^{−α} ⊆ 𝔮` for every simple `α` in the support of `β`.
3. Closure under brackets then gives `𝔮 = 𝔮_{Π'}`.

*Needs:* §§2.1, 2.3, 5.1; LieGroups Layer 9 (root spaces).

**Checks.**

- `SL_3(ℝ)`: exactly the four subalgebras of §5.1. The subspace `𝔮_∅ ⊕ ℝE₃₁` is not a subalgebra: its bracket with `E₁₂` gives `E₃₂`.
- `SL_2(ℂ)` as a real algebra: `𝔪 = iℝ·diag(1, −1)` acts on `𝔤^{−α} = ℂE₂₁` by rotation. So no subalgebra contains `𝔮_∅ ⊕ ℝE₂₁` without also containing `iE₂₁`, and the order isomorphism has two elements.
- Compact `G`: `Π = ∅`, and the only subalgebra containing `𝔮_∅ = 𝔤` is `𝔤`.

### 5.3 The eigenspace description

Let `X ∈ 𝔞` lie in the closed positive chamber (`β(X) ≥ 0` for `β ∈ Σ⁺`), and let `Π' = {α ∈ Π : α(X) = 0}`. Then:

- `𝔮_{Π'}` is the sum of the eigenspaces of `ad X` with non-negative eigenvalue;
- `𝔩_{Π'} = ker ad X = Z_𝔤(X)`;
- `𝔫_{Π'}` is the sum of those with positive eigenvalue.

(Brown–Rodriguez Hertz–Wang 2022, §1.2; Knapp 2002, Ch. VII §7.) The proof uses that for `β = −Σ c_α α` with `c_α ≥ 0`, `β(X) = 0` iff `c_α = 0` whenever `α(X) > 0`. *Needs:* §§2.1, 5.1.

**Checks.**

- `X = diag(1, 1, −2)` in `𝔰𝔩_3(ℝ)`: `α₁(X) = 0` and `α₂(X) = 3`, so the non-negative eigenspaces form the `(2, 1)`-block upper triangular algebra `𝔮_{α₁}`.
- `X = 0` gives `Π' = Π` and `𝔮 = 𝔤`. A regular `X` gives `𝔮_∅`.

### Examples

`SL_3(ℝ)` (four), `GL_n(ℝ)` (compositions), `Sp_4(ℝ)` with `Π = {e₁ − e₂, 2e₂}` (four: `𝔮_∅`, Siegel, Klingen, `𝔤`), `SU(n, 1)` (two).

### Dependencies

Layer 2; LieGroups Layer 9.

## Layer 6: Standard parabolic subgroups and their Langlands decompositions

### 6.1 Standard parabolic subgroups

For an Iwasawa triple define `Q_{Π'} = N_G(𝔮_{Π'}) = {g ∈ G : Ad(g)𝔮_{Π'} = 𝔮_{Π'}}`, a closed subgroup. Under the component condition, with `T` the Tits system of §4.3 and `J = {s_α : α ∈ Π'}`, prove the following (Knapp 2002, Ch. VII §7; Bourbaki, Ch. IV §2 nos. 5–6; Borel–Tits 1965, 5.17–5.20, pp. 101–102, for the algebraic analogue):

- `Q_{Π'} = T.standardParabolic J = ⨆_{w ∈ W_{Π'}} P n_w P`, and `Lie(Q_{Π'}) = 𝔮_{Π'}`.
- Every subgroup of `G` containing `P` equals `Q_{Π'}` for exactly one `Π'`, so every such subgroup is closed. `Π' ↦ Q_{Π'}` is an order isomorphism onto the subgroups containing `P`, by `TauCeti.TitsSystem.standardParabolic_eq_of_subgroupB_le` and `TauCeti.TitsSystem.standardParabolicOrderIso`.
- `N_G(Q_{Π'}) = Q_{Π'}`, by `TauCeti.TitsSystem.normalizer_standardParabolic`.
- `Q_{Π'} \ G / Q_{Π''} ≃ W_{Π'} \ W / W_{Π''}`, by `TauCeti.TitsSystem.parabolicDoubleCosetEquiv`.
- `Q_{Π'} ∩ N_G(𝔞)` maps onto `W_{Π'}`.

Proof sketch:

- `Ad(P)` preserves `𝔮_{Π'}`, so `Q_{Π'} ⊇ P` is a standard parabolic `P_J'`. A simple reflection `s_α` normalizes `𝔮_{Π'}` iff `α ∈ Π'`, because `Ad(n_{s_α})𝔤^α = 𝔤^{−α}`; so `J' = J`.
- The Lie algebra of the normalizer is `N_𝔤(𝔮_{Π'}) = 𝔮_{Π'}`, because `𝔞 ⊆ 𝔮_{Π'}`.

*Needs:* §§4.3, 5.1–5.2; Tau Ceti `TauCeti.TitsSystem.standardParabolic`, `TauCeti.TitsSystem.standardParabolicOrderIso`, `TauCeti.TitsSystem.normalizer_standardParabolic`, `TauCeti.TitsSystem.parabolicDoubleCosetEquiv`.

**Checks.**

- `GL_n(ℝ)`: the `Q_{Π'}` are the block upper triangular groups for the compositions of `n`. For `n = 3` there are four, with `|W_{Π'}| = 1, 2, 2, 6`.
- `SL_2(ℝ)`: the subgroups containing `P` are `P` and `G`.
- `Sp_4(ℝ)` with `J = ((0, I), (−I, 0))` and `𝔞 = diag(a₁, a₂, −a₁, −a₂)`: the Siegel parabolic is `{((A, B), (0, (Aᵀ)⁻¹))}` with Levi `GL_2(ℝ)`. The Klingen parabolic has Levi `ℝ^× × SL_2(ℝ)`.
- `O(1,1)`: `𝔮_∅ = 𝔪 ⊕ 𝔞 = 𝔤`, so `N_G(𝔮_∅) = G`, while `P = MA` has index two. Without the component condition `N_G(𝔮_∅) ≠ P`, which is the negative control.

### 6.2 The group ⁰L and the split component

For a group `L` with a reductive Cartan datum `(θ_L, B_L)`, define `⁰L = {l ∈ L : χ(l) = 1 for every continuous homomorphism χ : L → (ℝ_{>0}, ·)}`. Define the split component `A_L = lieExp(𝔷(𝔩) ∩ 𝔭_L)`. Prove (Knapp 2002, Ch. VII §2; Wallach 1988, Ch. 2 §2.2):

- `⁰L` is a closed normal subgroup.
- `⁰L = (K_L)·lieExp(𝔭_L ∩ ⁰𝔩)` with `⁰𝔩 = [𝔩, 𝔩] ⊕ (𝔷(𝔩) ∩ 𝔨_L)`, and `Lie(⁰L) = ⁰𝔩` is the joint kernel of the differentials `dχ`.
- `(θ_L, B_L)` restricts to a reductive Cartan datum on `⁰L` with fixed group `K_L`.
- Multiplication `⁰L × A_L → L` is an isomorphism of Lie groups.
- `⁰L` does not depend on the datum. `A_L` does.

*Needs:* §1.1; LieGroups Layer 3 (`lieMap`).

**Checks.**

- `L = ℝ^×`: the continuous homomorphisms to `ℝ_{>0}` are `x ↦ |x|^s`, so `⁰L = {±1}` and `A_L = ℝ_{>0}`.
- `L = GL_n(ℝ)`: `⁰L = {g : |det g| = 1}` and `A_L = ℝ_{>0}·1`.
- `L` compact: `⁰L = L` and `A_L = 1`.
- `L = ℝ × S¹` with the tilted data `θ_c` of §1.3: `⁰L = {0} × S¹` for every `c`, while `A_L = {(t, ct)}` depends on `c`. In every case `L = ⁰L × A_L`. So `⁰L` is intrinsic and `A_L` is not.
- Defining `⁰L` as `K_L` alone fails for `GL_2(ℝ)`: `O(2) ≠ {|det| = 1}`, since `diag(2, 1/2)` has `|det| = 1` and is not orthogonal.

### 6.3 The Langlands decomposition of a standard parabolic subgroup

Assume the component condition. For `Π' ⊆ Π` put:

- `A_{Π'} = lieExp 𝔞_{Π'}` and `N_{Π'} = lieExp 𝔫_{Π'}`;
- `L_{Π'} = Z_G(𝔞_{Π'})`, a reductive Cartan group by §3.1;
- `M_{Π'} = ⁰L_{Π'}`.

Prove (Knapp 2002, Ch. VII §7; Wallach 1988, Ch. 2 §2.2; Warner 1972, Ch. 1 §1.2):

- (a) `L_{Π'} = Q_{Π'} ∩ θ(Q_{Π'})`, and `A_{Π'}` is the split component of `L_{Π'}`.
- (b) `L_{Π'} = M_{Π'} × A_{Π'}` (§6.2).
- (c) `M_{Π'}` with `θ|_{M_{Π'}}` and `B|` is a reductive Cartan datum satisfying the component condition, with fixed group `K ∩ M_{Π'} = K ∩ L_{Π'}`. Its Iwasawa triple is `(𝔞 ∩ 𝔪_{Π'}, Σ_{Π'} ∩ Σ⁺)`, where the roots of `Σ_{Π'}` are restricted to `𝔞 ∩ 𝔪_{Π'}` and the simple roots are those of `Π'`. Its minimal parabolic is `P ∩ M_{Π'} = M·(A ∩ M_{Π'})·(N ∩ M_{Π'})`.
- (d) `N_{Π'}` is closed, simply connected and nilpotent, with `lieExp : 𝔫_{Π'} → N_{Π'}` a diffeomorphism. It is normal in `Q_{Π'}` and normalized by `L_{Π'}`.
- (e) `M_{Π'} × A_{Π'} × N_{Π'} → Q_{Π'}` is a diffeomorphism, and `Q_{Π'} = L_{Π'} ⋉ N_{Π'}`.
- (f) `G = K Q_{Π'}` and `G/Q_{Π'} ≅ K/(K ∩ L_{Π'})`.

Proof sketch:

- (d), (e): `L_{Π'} ⊆ Q_{Π'}`, since an element centralizing a generic `X ∈ 𝔞_{Π'}` preserves every eigenspace of `ad X`, hence `𝔮_{Π'}` (§5.3). `Q_{Π'} = ⋃_{w ∈ W_{Π'}} P n_w P` with `n_w ∈ L_{Π'}`, and `P = (M A N_{M_{Π'}})·N_{Π'}` has its first factor in `L_{Π'}`, while `N_{Π'}` is `Ad(L_{Π'})`-stable, being the positive `ad X`-eigenspaces (§5.3). So `Q_{Π'} = L_{Π'}N_{Π'}`. `L_{Π'} ∩ N_{Π'} = 1` because `Ad(lieExp Y)X − X ∈ 𝔫_{Π'}` has leading term `−⁅X, Y⁆ ≠ 0` for `Y ≠ 0`.
- (a): `L_{Π'}` is `θ`-stable (§3.1) and contained in `Q_{Π'}`, so `L_{Π'} ⊆ Q_{Π'} ∩ θ(Q_{Π'})`. Conversely, `θ(Q_{Π'}) = N_G(dθ 𝔮_{Π'})`; write `q ∈ Q_{Π'} ∩ θ(Q_{Π'})` as `q = l n` by (e). Then `n = l⁻¹q ∈ θ(Q_{Π'})`, so `Ad(n)X − X ∈ 𝔫_{Π'} ∩ dθ 𝔮_{Π'} = 0` for generic `X ∈ 𝔞_{Π'}`, and the leading-term argument of (e) gives `n = 1`. The split component of `L_{Π'}` is `lieExp(𝔷(𝔩_{Π'}) ∩ 𝔭) = A_{Π'}` by §5.1. No input from Layer 7 is used.
- (c) combines §3.1 with `L_{Π'} = M·L_{Π'}⁰`.

*Needs:* §§3.1, 5.1–5.3, 6.1–6.2.

**Checks.**

- `GL_3(ℝ)`, `Π' = {α₁}`: `L = GL_2(ℝ) × GL_1(ℝ)`, `A_{Π'} = {diag(a, a, b) : a, b > 0}` and `M_{Π'} = {(g, c) : |det g| = 1, c = ±1}`. `N_{Π'}` is the upper right `2 × 1` block. The decomposition of a block upper triangular matrix follows the sign convention.
- `Π' = ∅` recovers §3.3: `M_∅ = M`, `A_∅ = A`, `N_∅ = N`. `Π' = Π` gives `Q = G`, `N_Π = 1`, `A_Π = A_G` and `M_Π = ⁰G`.
- `SU(2, 1)`, `Π' = ∅`: `N_∅` is the three-dimensional Heisenberg group and `M_∅ ≅ U(1)`, so `dim Q = dim M + dim A + dim N = 1 + 1 + 3 = 5`.

### Examples

`GL_n(ℝ)` (block upper triangular `Q`, block diagonal `L`), `Sp_4(ℝ)` (Siegel and Klingen), `SL_3(ℝ)`, `SU(n, 1)`, compact `G` (`Q = M_Q = G`), `ℝ^×` (`Q = G`, `M_Q = {±1}`, `A_Q = ℝ_{>0}`).

### Dependencies

Layers 3–5; Tau Ceti `TauCeti.TitsSystem.standardParabolic` and the classification, normalizer and double-coset declarations; LieGroups Layers 3, 9.

## Layer 7: Parabolic subgroups and subalgebras in general

### 7.1 Conjugate standard parabolics of a Tits system

For an arbitrary `TauCeti.TitsSystem` with subgroup `B` and `J, J' ⊆ S`:

- if `g B g⁻¹ ⊆ P_J`, then `g ∈ P_J`;
- if `g P_J g⁻¹ = P_{J'}`, then `J = J'` and `g ∈ P_J`;
- if `g P_J g⁻¹ ⊆ P_{J'}`, then `J ⊆ J'` and `g ∈ P_{J'}`.

(Bourbaki, Ch. IV §2 nos. 5–6; Borel–Tits 1965, Corollaire 5.18 (ii), p. 101.) Proof sketch: write `g ∈ BwB`. Then `w B w⁻¹ ⊆ P_J`, and the multiplication axiom applied along a reduced word for `w` shows `w ∈ W_J`. *Needs:* Tau Ceti `TauCeti.TitsSystem.standardParabolic`, `TauCeti.TitsSystem.mem_standardParabolic_iff`, `TauCeti.TitsSystem.coxeterSystem`.

**Checks.**

- In `TauCeti.glTitsSystem` for `GL_3(k)`: the two maximal standard parabolics, with blocks `(2, 1)` and `(1, 2)`, are not conjugate; they stabilize a plane and a line respectively. A permutation matrix outside `W_J` conjugates `B` out of `P_J`.
- With `S = ∅` (`B = G`) the statements are trivial.

### 7.2 Parabolic subgroups and subalgebras

Under the component condition:

- A **parabolic subgroup** of `G` is a subgroup containing a minimal parabolic subgroup (§3.4).
- A **parabolic subalgebra** is an `Ad(G)`-conjugate of some `𝔮_{Π'}`.

Prove (Knapp 2002, Ch. VII §7):

- Every parabolic subgroup `Q` is `G⁰`-conjugate to `Q_{Π'}` for exactly one `Π' ⊆ Π`, its **type** (§§6.1, 7.1).
- `Q` is closed and self-normalizing, and `Q = N_G(Lie(Q))`.
- `Q ↦ Lie(Q)` and `𝔮 ↦ N_G(𝔮)` are mutually inverse bijections between parabolic subgroups and parabolic subalgebras, equivariant for conjugation and order-preserving.
- Two parabolic subgroups of the same type containing a common minimal parabolic subgroup are equal.

*Needs:* §§3.4, 6.1, 7.1.

**Checks.**

- `SL_2(ℝ)`: the parabolic subgroups are `G` and the conjugates of `P`, the point stabilizers on `ℙ¹(ℝ)`.
- `SL_3(ℝ)`: four types. Parabolics of type `{α₂}` are the stabilizers of lines, those of type `{α₁}` the stabilizers of planes, those of type `∅` the stabilizers of flags.
- Compact `G`: the only parabolic subgroup is `G`, and the only parabolic subalgebra is `𝔤`.
- `O(1,1)`: `Lie(P) = 𝔤` and `N_G(Lie(P)) = G ≠ P`, so `Q = N_G(Lie(Q))` fails without the component condition.

### 7.3 The dynamical description

Let `X ∈ 𝔞` lie in the closed positive chamber, with `Π' = {α ∈ Π : α(X) = 0}`. Define:

- `Q(X) = {g ∈ G : {lieExp(−tX)·g·lieExp(tX) : t ≥ 0} is relatively compact}`;
- `N(X) = {g ∈ G : lieExp(−tX)·g·lieExp(tX) → 1 as t → +∞}`.

Prove:

- (i) Without further hypotheses, `Q(X)` and `N(X)` are subgroups, and `Q(X) ⊆ N_G(𝔮_{Π'})`. For regular `X` (`Π' = ∅`), moreover, `N(X) = N` and `Q(X) = ⨆ P n_w P` over the `w ∈ W_G` with `wX = X`.
- (ii) Under the component condition: `Q(X) = Q_{Π'}`, `N(X) = N_{Π'}`, `Q(X) ∩ Q(−X) = Z_G(X) = L_{Π'}`, and `θ(Q(X)) = Q(−X)`.

The boundedness description is the Lie-group form of Borel–Tits 1965, Théorème 4.15 (pp. 90–91), and of `TauCeti.Cocharacter.parabolic` (Knapp 2002, Ch. VII §7; Brown–Rodriguez Hertz–Wang 2022, §1.2). Proof sketch:

- For (i), decompose `Ad(g)` into blocks `E_μ → E_λ` between eigenspaces of `ad X`. Conjugation by `lieExp(−tX)` multiplies the block by `e^{t(μ − λ)}`. Boundedness forces the blocks with `μ > λ` to vanish, so `Ad(g)` preserves the filtration `⨁_{λ ≥ c} E_λ`, in particular `𝔮_{Π'}`.
- For the regular case of (i), write `g = u n_w p` by §4.2 (over `W_G`). Conjugation by `lieExp(−tX)` sends `u ∈ N` to `1` as `t → +∞`, sends `p = man` to a family converging to `ma`, and sends `n_w` to `n_w·lieExp(t(X − w⁻¹X))`, which is bounded iff `wX = X` and converges iff `wX = X` (`lieExp` is injective on `𝔞` with closed image). So `Q(X)` is the union of the cells with `wX = X`; and `g ∈ N(X)` forces `wX = X`, then `n_w ∈ K ∩ P = M`, so `w = 1`, `u = 1` and `ma = 1`, that is, `g ∈ N`.
- For (ii), `Q_{Π'} = L_{Π'}N_{Π'} ⊆ Q(X)` by §6.3. For `g ∈ Q(X) ∩ Q(−X)` every off-diagonal block vanishes; write `g = l n` and use `L_{Π'} ∩ N_{Π'} = 1`.

*Needs:* §§3.3, 4.2, 5.3, 6.1, 6.3; LieGroups Layer 1.

**Checks.**

- `GL_2(ℝ)`, `X = diag(1, 0)`: `Q(X)` is the upper triangular group, `N(X)` the upper unitriangular group and `Z_G(X)` the diagonal group, as in the sign witness. `X = diag(0, 1)` gives the lower triangular group; it is not in the positive chamber of `e₁ − e₂`.
- `X = 0`: `Q(0) = G` and `N(0) = 1`.
- `Aut(𝔰𝔩_3(ℝ))` with `X₀ = diag(1, 0, −1)` regular: `σ·Ad(w₀)` commutes with `lieExp(tX₀)`, so it lies in `Q(X₀) ∩ Q(−X₀)` and in `Z_G(X₀)`, but not in `MA`. The stabilizer of `X₀` in `W_G` is `{1, σ·Ad(w₀)}`, so `Q(X₀) = P ⊔ σ·Ad(w₀)·P ⊋ P`, while `N(X₀) = N`. Without the component condition `Q(X)` and `Z_G(X)` can exceed `Q_{Π'}` and `L_{Π'}`; `N(X)` does not.

### Examples

`SL_2(ℝ)`, `SL_3(ℝ)` (flags, lines, planes), `GL_n(ℝ)` (flags of given dimension type), `SO₀(n, 1)` (stabilizers of isotropic lines).

### Dependencies

Layers 3–6; Tau Ceti `TauCeti.TitsSystem` and the parabolic declarations.

## Layer 8: The self-adjoint linear model

All statements of this layer are about a subgroup `G` of `GL (Fin n) ℝ`, with `θ(g) = (gᵀ)⁻¹`, `K = G ∩ unitarySubgroup` and the exponential `NormedSpace.exp` on `Matrix (Fin n) (Fin n) ℝ`. They are the pinned statement forms of Layers 1–7.

### 8.1 Self-adjoint linear groups

Define `IsSelfAdjointLinearGroup G`: `G` is closed in `GL (Fin n) ℝ`, `G` is stable under transposition, and `G` has finitely many connected components. Define `linearLieAlgebra G = {X : ∀ t : ℝ, NormedSpace.exp (t • X) is the matrix of an element of G}`. Prove the following (Wallach 1988, Ch. 2 §2.1; Knapp 2002, Ch. VII §2; ALS.F.1 for real algebraic groups):

- `G` is an embedded Lie subgroup (LieGroups `isEmbeddedLieSubgroup_of_isClosed`) with Lie algebra `linearLieAlgebra G`.
- `linearLieAlgebra G` is a Lie subalgebra stable under transposition.
- `θ` together with `B(X, Y) = tr(XY)` is a reductive Cartan datum, with `𝔨` the skew and `𝔭` the symmetric elements.

Proof sketch for the polar decomposition: for `g ∈ G`, `p = gᵀg ∈ G` is positive definite. Some `p^r ∈ G⁰`, and the polar decomposition of the connected closed transpose-stable `G⁰` writes `p^r = exp(X)·k⁻¹` with `X ∈ 𝔭` and `k ∈ K⁰`; the uniqueness of the matrix polar decomposition (`Matrix.GeneralLinearGroup.existsUnique_posDef_mul_unitary`, applied to the positive definite `p^r`) forces `k = 1` and `r·log p = X ∈ 𝔭`. So `g = (g p^{−1/2})·exp(½ log p)`. *Needs:* §1.1; LieGroups Layer 2; Tau Ceti `Matrix.GeneralLinearGroup.existsUnique_posDef_mul_unitary`; Mathlib `Matrix.exp_transpose`.

API:

- `linearLieAlgebra G` contains every `X` with `exp(tX) ∈ G` for all `t`. It is closed under sums, scalars, commutators and transposition.
- `K = G ∩ unitarySubgroup` is the fixed group of `θ`.
- For `X` symmetric in `linearLieAlgebra G`, `ad X` is diagonalizable over `ℝ` on all of `Matrix (Fin n) (Fin n) ℝ`.

**Checks.**

- `GL_n(ℝ)`, `SL_n(ℝ)`, `O(p, q)` (as `{g : gᵀ J g = J}`), `Sp_{2n}(ℝ)` (`Matrix.symplecticGroup`) and the real points of `SU(p, q)` embedded in `GL_{2(p+q)}(ℝ)` are self-adjoint linear groups.
- The closed discrete subgroup `{diag(2^k, 2^{−k}) : k ∈ ℤ}` is transpose-stable with infinitely many components. Its `linearLieAlgebra` is `0`, so the polar map `K × 𝔭 → G` is not surjective. The finiteness field is necessary.
- `linearLieAlgebra GL_n(ℝ)` is all of `Matrix (Fin n) (Fin n) ℝ`.
- `linearLieAlgebra SL_n(ℝ)` is the trace-zero matrices. `E₁₁` is excluded, since `det exp(tE₁₁) = e^t`.
- `G = {((1, t), (0, 1)) : t ∈ ℝ}` is closed with one component but not transpose-stable. Here `K = G ∩ O(2) = {1}` and the symmetric part of `ℝE₁₂` is `0`, so the polar map is not surjective. The transpose field is necessary.

### 8.2 The dynamic subgroups of a symmetric element

For `G` and a matrix `X`, define:

- `dynamicParabolic G X`: the elements `g ∈ G` for which `{NormedSpace.exp (−t • X) * g * NormedSpace.exp (t • X) : t ≥ 0}` is bounded;
- `dynamicUnipotent G X`: those for which this tends to `1` as `t → +∞`;
- `dynamicLevi G X`: those commuting with `X`.

Prove `dynamicLevi_decomposition`. Let `G` be closed in `GL (Fin n) ℝ` and transpose-stable, and let `X` be a symmetric matrix, `Xᵀ = X`; neither `X ∈ linearLieAlgebra G` nor finitely many components is needed. Then:

- the three sets are closed subgroups;
- `dynamicUnipotent G X` is normal in `dynamicParabolic G X`;
- every element of `dynamicParabolic G X` factors uniquely as `l·u` with `l ∈ dynamicLevi G X` and `u ∈ dynamicUnipotent G X`;
- `dynamicParabolic G X ∩ θ(dynamicParabolic G X) = dynamicLevi G X`.

Proof sketch: in an orthonormal eigenbasis of `X`, an element of `dynamicParabolic G X` is block upper triangular, an element of `dynamicUnipotent G X` block unipotent and an element of `dynamicLevi G X` block diagonal, so the three sets are `G` intersected with closed subgroups of `GL (Fin n) ℝ`. The block-diagonal part `l = lim_{t→+∞} exp(−tX) g exp(tX)` of `g ∈ dynamicParabolic G X` is invertible and lies in `G`, because `G` is closed; `θ` interchanges block upper and block lower triangular. No step uses `exp(tX) ∈ G`; §8.3 applies the theorem to `X ∈ 𝔞 ⊆ linearLieAlgebra G` only. This is the matrix form of §§6.3 and 7.3, and the analogue of Tau Ceti's `TauCeti.Cocharacter.limit`. *Needs:* §8.1; Mathlib `NormedSpace.exp`, `Matrix.exp_conj`, `Bornology.IsBounded`, `Filter.Tendsto`.

**Checks.**

- `G = GL_2(ℝ)`, `X = diag(1, 0)`: the three groups are upper triangular, upper unitriangular and diagonal. `((2, 3), (0, 5)) = diag(2, 5)·((1, 3/2), (0, 1))`. Factoring as `u·l` instead would give `((1, 3/5), (0, 1))·diag(2, 5)`, a different unipotent factor; the stated order is `l·u`.
- `X = 0`: `dynamicParabolic = dynamicLevi = G` and `dynamicUnipotent = 1`. A scalar `X` gives the same three groups.
- `X = diag(0, 1)` in `GL_2(ℝ)` gives the lower triangular, lower unitriangular and diagonal groups. Reversing the direction of `t` in the definitions would interchange the upper and lower groups.
- `G = GL_2(ℝ)` with the skew `X = ((0, 1), (−1, 0))`: the conjugates `exp(−tX) g exp(tX)` are rotations of `g`, bounded for every `g`, so the bounded set is all of `G`. But `dynamicUnipotent = {1}` and the centralizer of `X` is `{aI + bX}`, so `l·u` covers only that centralizer. The symmetry hypothesis is necessary.
- `G = SL_2(ℝ)` with `X = diag(1, 0)`, which is symmetric but not in `𝔰𝔩_2(ℝ)`: the three groups are the upper triangular, upper unitriangular and diagonal subgroups of `SL_2(ℝ)`, `((a, b), (0, a⁻¹)) = diag(a, a⁻¹)·((1, b/a), (0, 1))`, and all four conclusions hold. The hypothesis `X ∈ linearLieAlgebra G` would exclude this instance for no reason.

### 8.3 The component condition and the minimal parabolic

Define `LinearComponentCondition G 𝔞`, for a subspace `𝔞` of symmetric matrices: every `g ∈ G` lies in the connected component, in `G`, of some orthogonal `m ∈ G` commuting with every element of `𝔞`. This is §2.4 for the datum of §8.1. Let `G` be a self-adjoint linear group, `𝔞` a maximal abelian subspace of the symmetric part of `linearLieAlgebra G`, and `H₀ ∈ 𝔞` regular: every element of `linearLieAlgebra G` commuting with `H₀` commutes with `𝔞`. Write `M = {m ∈ K : m commutes with 𝔞}`, `N = dynamicUnipotent G H₀` and `P = M·exp(𝔞)·N`. By §§3.2 and 7.3, `P` is the minimal parabolic subgroup of the Iwasawa triple `(𝔞, {β : β(H₀) > 0})` of the datum of §8.1, and `N = lieExp 𝔫` is its unipotent factor, for every self-adjoint linear group. The following two statements assume no component condition.

- `bruhat_decomposition_linear`: for every `g ∈ G` there is `k ∈ K` normalizing `𝔞` with `g ∈ P k P`. If `k, k' ∈ K` normalize `𝔞` and `P k P` meets `P k' P`, then `k⁻¹k'` commutes with `𝔞` (§4.2, the decomposition over `W_G`).
- `exists_eq_nonnegEigenspaces_of_le`: let `𝔮₀` be the sum of the eigenspaces of `ad H₀` on `linearLieAlgebra G` with non-negative eigenvalue. Every Lie subalgebra of `linearLieAlgebra G` containing `𝔮₀` is the sum of the eigenspaces of `ad Y` with non-negative eigenvalue for some `Y ∈ 𝔞`. For `X, Y ∈ 𝔞` whose non-negative eigenspace sums both contain `𝔮₀`, the two sums are equal iff `X` and `Y` have the same centralizer in `linearLieAlgebra G` (§§5.2–5.3).

Assume now `LinearComponentCondition G 𝔞`.

- `minimalParabolic_langlands`: `dynamicParabolic G H₀ = P`, and every element of `P` factors uniquely as `m·exp(H)·u` with `m ∈ M`, `H ∈ 𝔞` and `u ∈ N`. Moreover `P` is self-normalizing in `G` and `G = K·P` (§§3.3, 7.3).
- `eq_dynamicParabolic_of_le`: every subgroup `Q` with `P ≤ Q ≤ G` equals `dynamicParabolic G X` for some `X ∈ 𝔞`. For `X, Y ∈ 𝔞` with `P` contained in both dynamic parabolics, the two parabolics are equal iff `X` and `Y` have the same centralizer in `linearLieAlgebra G` (§§6.1, 7.3).
- `exists_titsSystem_linear`: there is a `TauCeti.TitsSystem G` whose `subgroupB` is `P` and whose `subgroupN` is `N_G(𝔞) = {g ∈ G : g𝔞g⁻¹ = 𝔞}` (§4.3).

Let `G` be a self-adjoint linear group.

- `exists_conj_maximalAbelian`: for maximal abelian subspaces `𝔞, 𝔞'` of the symmetric part of `linearLieAlgebra G`, there is `k ∈ K` in the identity component of `G` with `k 𝔞 k⁻¹ = 𝔞'` (§2.2).

*Needs:* §§2.2, 2.4, 3.2–3.3, 4.2–4.3, 5.2–5.3, 6.1, 7.3, 8.1–8.2; Tau Ceti `TauCeti.TitsSystem`; Mathlib `connectedComponentIn`, `DoubleCoset.doubleCoset`, `Module.End.eigenspace`.

**Checks.**

- `GL_n(ℝ)`, `𝔞` diagonal, `H₀ = diag(n, n − 1, …, 1)`: `P` is `TauCeti.upperTriangularGroup` and the condition holds. The Bruhat representatives are the signed permutation matrices, identified with `S_n` modulo diagonal signs. The Tits system is `TauCeti.glTitsSystem ℝ (n − 1)`, and the subalgebras containing `𝔮₀`, the upper triangular matrices, are the `2^{n−1}` block upper triangular algebras, each the non-negative eigenspace sum of a block-scalar diagonal `Y`.
- `O(1,1)` with `𝔞 = ℝY`, `Y = ((0, 1), (1, 0))`, and `H₀ = Y`: `M = {±1}`, `N = {1}`, `P = {±exp(tY)}`, and `K = {±1, ±d}` with `d = diag(1, −1)`, all of whose elements normalize `𝔞`. `G = P ⊔ dP`, so `bruhat_decomposition_linear` holds: `P k P` meets `P k' P` only if `k⁻¹k' ∈ P ∩ K = {±1}`, which commutes with `𝔞`. But `d·exp(tY)·d = exp(−tY)`, so `exp(−tY)·d·exp(tY) = exp(−2tY)·d` is unbounded, `dynamicParabolic G Y = P` has index two, and `dynamicParabolic G 0 = G`. `LinearComponentCondition` fails, `P` is normal and not self-normalizing, and `0` and `Y` have the same centralizer `𝔤` but different dynamic parabolics. This is the negative control for `minimalParabolic_langlands`, for the "iff" of `eq_dynamicParabolic_of_le` and for `exists_titsSystem_linear` (`P` is normal in `G`, so `s P s⁻¹ ≠ P` fails for every candidate reflection), not for `bruhat_decomposition_linear`.
- `Aut(𝔰𝔩_3(ℝ))` in `GL_8(ℝ)` with `𝔞 = ad(diagonal)` and `H₀ = ad(diag(1, 0, −1))`: `σ·Ad(w₀) ∈ K` fixes `H₀` (§7.3, Checks), so it lies in `dynamicParabolic G H₀` but not in `P`, since `P ∩ K = M` and it acts on `𝔞` by `−w₀`. With `dynamicParabolic G H₀` in place of `P`, the uniqueness clause of `bruhat_decomposition_linear` fails: `k = 1` and `k' = σ·Ad(w₀)` give the same double coset, and `k⁻¹k'` does not commute with `𝔞`. The hypothesis-free statement needs `P = M·exp(𝔞)·N`.
- `O(p, q)` with `p > q ≥ 1` and `𝔞` spanned by the `E_{i, p+i} + E_{p+i, i}`, `i ≤ q`: `M` contains `diag(ε, k', ε)` with `ε ∈ {±1}^q` and `k' ∈ O(p − q)`. Its block determinants `(Πε·det k', Πε)` take all four values, so `M` meets all four components and `LinearComponentCondition` holds. For `p = q` there is no `k'`, only two of the four values occur, and the condition fails.
- `SL_3(ℝ)` with `X = diag(1, 1, −2)` and `Y = diag(2, 2, −4)`: these have the same centralizer, the same dynamic parabolic and the same non-negative eigenspace sum, the `(2, 1)`-block upper triangular algebra. `X` and `diag(1, 0, −1)` have different centralizers and different parabolics. In `GL_2(ℝ)`, `Y = 0` and the scalar `Y = 1` have the same centralizer and the same eigenspace sum `𝔤`.

### Examples

`GL_n(ℝ)`, `SL_n(ℝ)`, `Sp_{2n}(ℝ)`, `O(p, q)` for `p ≠ q` (component condition holds) and `O(p, p)` (fails), `O(1,1)` (fails), `Aut(𝔰𝔩_3(ℝ))` in `GL_8(ℝ)` (fails).

### Dependencies

Layers 1–7; LieGroups Layer 2 (`isEmbeddedLieSubgroup_of_isClosed`); Mathlib `Matrix.GeneralLinearGroup`, `unitarySubgroup`, `NormedSpace.exp`, `Matrix.exp_transpose`, `Matrix.exp_conj`, `ConnectedComponents`, `connectedComponentIn`, `Bornology.IsBounded`, `Filter.Tendsto`, `DoubleCoset.doubleCoset`.

## Layer 9: Comparison with ℝ-parabolic subgroups

Throughout this layer:

- `𝐇` is a connected reductive linear algebraic group over `ℝ`, embedded in `GL_n` with transpose-stable image;
- `G = 𝐇(ℝ)` or `G = 𝐇(ℝ)⁰`, with `θ(g) = (gᵀ)⁻¹`.

ALS.F.1 makes `G` a closed subgroup of `GL_n(ℝ)` with finitely many components and Lie algebra `Lie(𝐇)(ℝ)`.

### 9.1 Real points of a connected reductive group

Prove that `G` is a self-adjoint linear group (§8.1), so it carries the reductive Cartan datum of §8.1, and that it satisfies the component condition. For `G = 𝐇(ℝ)⁰` the condition holds because `G` is connected (§2.4). For `G = 𝐇(ℝ)`, prove Knapp's axiom (v): `𝐇(ℂ)` is a closed subgroup of `GL_n(ℂ)` with finitely many components and Lie algebra `𝔤_ℂ = Lie(𝐇)(ℝ) ⊗ ℂ` (ALS.F.1 applied to `Res_{ℂ/ℝ} 𝐇_ℂ`, whose real points are `𝐇(ℂ)`), and it is connected (MordellLawrenceVenkatesh §3.10), so it is generated by `lieExp 𝔤_ℂ` (LieGroups Layer 3) and `Ad(𝐇(ℂ)) = Int(𝔤_ℂ)` by `Ad(lieExp Z) = e^{ad Z}` (LieGroups Layer 1). Hence `Ad(𝐇(ℝ)) ⊆ Int(𝔤_ℂ)`, which is axiom (v), and §2.4 gives the component condition (Knapp 2002, Ch. VII §2). Borel–Tits Théorème 14.4, `𝐇(ℝ) = 𝐇(ℝ)⁰·𝐒(ℝ)` for a maximal `ℝ`-split torus `𝐒` (Borel–Tits 1965, p. 146, after Matsumoto), gives the same conclusion once §9.2(a) identifies the Zariski closure of `A` with such an `𝐒`; it is not used. ALS.0.1 (`LocallySymmetric.IsCartanInvolution.transposeInverse`) says that `θ` is an algebraic Cartan involution of `𝐇`. For `𝐇 = (Res_{F/ℚ} G)_ℝ` with `G` connected reductive over a number field `F`, the datum agrees with ALS.0.2's Lie-theoretic Cartan datum of `G(F_∞)`. *Needs:* ALS.F.1; ALS.0.1; ALS.0.2; MordellLawrenceVenkatesh §3.10; LieGroups Layers 1, 3; §§2.4, 8.1.

**Checks.**

- `𝐇 = GL_n`: `M` is the sign matrices, which meet both components of `GL_n(ℝ)`.
- `𝐇 = PGL_2` realized as `SO(2, 1)` for `x₁² + x₂² − x₃²`, with `𝔞 = ℝ(E₂₃ + E₃₂)`: `𝐇(ℝ) = SO(2, 1)` has two components, and `M = {1, diag(1, −1, −1)}`. `diag(1, −1, −1)` reverses the time orientation, so `M` meets both components.
- `𝐇 = O(1,1)` is not connected, and §2.4 shows the conclusion fails for it. The connectedness hypothesis is necessary.

### 9.2 The comparison theorem

Let `(𝔞, Σ⁺)` complete the datum of §9.1 to an Iwasawa triple. Prove (Borel–Tits 1965, §14.7, pp. 147–148, with Théorème 4.15, Corollaire 5.9, Théorème 5.15 and Corollaires 5.18–5.20, pp. 90–102):

- (a) The Zariski closure `𝐒` of `A` in `𝐇` is a maximal `ℝ`-split torus of `𝐇`, with `Lie(𝐒)(ℝ) = 𝔞` and `A = 𝐒(ℝ)⁰`.
- (b) Differentials of the relative roots identify `Φ(𝐇, 𝐒)` with `Σ`, root subspaces with the `𝔤^β`, and the relative Weyl group `N_𝐇(𝐒)(ℝ)/Z_𝐇(𝐒)(ℝ)` with `W(Σ) = N_K(𝔞)/Z_K(𝔞)`.
- (c) For a cocharacter `λ` of `𝐒` with `⟨β, λ⟩ > 0` for every `β ∈ Σ⁺`, `𝐏 = 𝐏_𝐇(λ)` is a minimal `ℝ`-parabolic subgroup, and `P = G ∩ 𝐏(ℝ)`, `N = 𝐔_𝐇(λ)(ℝ)`, `MA = G ∩ 𝐙_𝐇(𝐒)(ℝ)`.
- (d) For a cocharacter `λ` of `𝐒` whose differential `X_λ = dλ(1) ∈ 𝔞` lies in the closed positive chamber, with `Π' = {α ∈ Π : α(X_λ) = 0}`: `Q_{Π'} = G ∩ 𝐏_𝐇(λ)(ℝ)`, `L_{Π'} = G ∩ 𝐙_𝐇(λ)(ℝ)` and `N_{Π'} = 𝐔_𝐇(λ)(ℝ)`.

Proof sketch:

- For (a), `G/AN ≅ K` is compact, so the Zariski closure of `AN` contains a maximal connected `ℝ`-trigonalizable subgroup (`gap:real-compactness-criterion`), and `𝐒` is maximal split. For reductive `𝐇`, `𝔞 ⊇ 𝔷_𝔭`, and the Zariski closure of `A` is a split torus of symmetric matrices whose real Lie algebra is an abelian subspace of `𝔭` containing `𝔞`, hence equal to `𝔞`.
- For (c) and (d), `G ∩ 𝐏_𝐇(λ)(ℝ)` contains `P`: `M` centralizes `𝐒`, `A ⊆ 𝐒(ℝ)`, and `N = exp 𝔫 ⊆ 𝐔(ℝ)`. So it is some `Q_{Π''}` (§6.1). Its Lie algebra `⨁_{⟨β, λ⟩ ≥ 0}` is `𝔮_{Π'}` (§5.3), so `Π'' = Π'`.
- The Levi statement is `Z_G(X_λ) = L_{Π'}` (§7.3), because `λ(ℝ_{>0}) = lieExp(ℝX_λ)` is Zariski dense in the image of `λ`. The unipotent statement is §7.3 against the dynamic description of `𝐔_𝐇(λ)`, with the sign witness of the conventions.

*Needs:* §§3.3, 5.3, 6.1, 6.3, 7.3, 9.1; ReductiveGroups Layer 7 (parabolic `k`-subgroups, `P_𝐇(λ)`, `U_𝐇(λ)`, `Z_𝐇(λ)`, relative root system and Weyl group); Tau Ceti `TauCeti.Cocharacter.parabolic`, `TauCeti.Cocharacter.levi`, `TauCeti.Cocharacter.unipotent`; `gap:minimal-parabolic-orderings`; `gap:real-compactness-criterion`.

**Checks.**

- `𝐇 = GL_n` with `λ(t) = diag(t^{k₁}, …, t^{kₙ})`, `k₁ ≥ … ≥ kₙ`: `𝐏_𝐇(λ)(ℝ)` is the block upper triangular group for the blocks of equal `kᵢ`, matching `Q_{Π'}` of §6.1. For `λ(t) = diag(t, 1)`, the group is the upper triangular `GL_2(ℝ)`.
- `𝐇 = SO(2, 1)`: `𝐒 = {((1,0,0),(0,a,b),(0,b,a)) : a² − b² = 1} ≅ 𝔾_m`. Its real points include `diag(1, −1, −1)` (`a = −1`, `b = 0`), so `𝐒(ℝ) = A × {1, diag(1, −1, −1)}` and `A = 𝐒(ℝ)⁰` has index two. The extra element is the non-trivial element of `M` in §9.1.
- `𝐇 = 𝔾_m × SO(2)`, which has real points `ℝ^× × S¹`: the only algebraic Cartan involution is `(x, s) ↦ (x⁻¹, s)`. It is the `c = 0` datum of §1.3; the tilted `θ_c` are not algebraic.

### 9.3 Parabolic subalgebras through the complexification

Let `G` carry a reductive Cartan datum satisfying the component condition, and let `𝔮 ⊆ 𝔤` be a real Lie subalgebra. Then `𝔮` is a parabolic subalgebra (§7.2) iff `𝔮` contains the centre `𝔷` and `𝔮 ⊗ ℂ ∩ [𝔤, 𝔤]_ℂ` contains `TauCeti.borelSubalgebra 𝔥 b` for some splitting Cartan subalgebra `𝔥` of the semisimple `[𝔤, 𝔤]_ℂ` and some base `b` of its root system (Knapp 2002, Ch. VII §7). Every parabolic subalgebra contains `𝔷`: `𝔷 = (𝔷 ∩ 𝔨) ⊕ 𝔷_𝔭 ⊆ 𝔪 ⊕ 𝔞 ⊆ 𝔮_{Π'}` (§§1.1, 2.2) and `𝔷` is `Ad(G)`-stable. The Borel condition alone does not see the centre (Checks). Proof sketch:

- Forward: `𝔥 = (𝔱 ⊕ 𝔞)_ℂ ∩ [𝔤, 𝔤]_ℂ`, with `𝔱` maximal abelian in `𝔪`, and a positive system compatible with `Σ⁺` give a Borel subalgebra inside `(𝔮_∅)_ℂ`.
- Converse: `𝔮 ⊗ ℂ ∩ [𝔤, 𝔤]_ℂ = (𝔮 ∩ [𝔤, 𝔤]) ⊗ ℂ`, and the normalizer of this subalgebra in the adjoint group of `[𝔤, 𝔤]_ℂ` is a parabolic subgroup defined over `ℝ`. It contains a minimal `ℝ`-parabolic, whose Lie algebra is a conjugate `Ad(g)(𝔮_∅ ∩ [𝔤, 𝔤])` by §9.2 applied to the adjoint group in its `B_θ`-orthonormal transpose-stable realization. Then `𝔮 ⊇ Ad(g)(𝔮_∅ ∩ [𝔤, 𝔤])`, and since `𝔮_∅ = 𝔷 ⊕ (𝔮_∅ ∩ [𝔤, 𝔤])` and `𝔷 ⊆ 𝔮`, `𝔮 ⊇ Ad(g)𝔮_∅`; §5.2 for the transported triple gives `𝔮 = Ad(g)𝔮_{Π'}`.

*Needs:* §§7.2, 9.2; LieGroups Layer 7 (complexification); Tau Ceti `TauCeti.borelSubalgebra`; ReductiveGroups Layer 7.

**Checks.**

- `SL_2(ℝ)`: `𝔮_∅ ⊗ ℂ` is the upper triangular `𝔟 ⊆ 𝔰𝔩_2(ℂ)`. The real subalgebra `𝔰𝔬(2)` has complexification `ℂ·((0, 1), (−1, 0))`, a Cartan subalgebra that contains no Borel, and it is not parabolic.
- `SU(2)` (compact): the only parabolic subalgebra is `𝔤`, and `𝔰𝔲(2) ⊗ ℂ = 𝔰𝔩_2(ℂ)` contains a Borel. The diagonal `𝔱 ⊆ 𝔰𝔲(2)` complexifies to a Cartan subalgebra that contains none.
- `SL_2(ℂ)` as a real group: identify `𝔰𝔩_2(ℂ) ⊗_ℝ ℂ` with `𝔰𝔩_2(ℂ) ⊕ 𝔰𝔩_2(ℂ)` by `X ⊗ z ↦ (zX, zX̄)`. The upper triangular `𝔮_∅` becomes the sum of the two upper triangular Borel subalgebras, a Borel subalgebra of the sum.
- `GL_2(ℝ)` with `𝔮 = {((a, b), (0, −a))}`, the trace-zero upper triangular matrices: `𝔮 ⊗ ℂ ∩ 𝔰𝔩_2(ℂ) = 𝔮 ⊗ ℂ` is the upper triangular Borel subalgebra, so the Borel condition holds, but `1 ∉ 𝔮`, and `dim 𝔮 = 2` while `dim 𝔮_∅ = 3` and `dim 𝔮_Π = 4`: `𝔮` is not parabolic, and the centre condition is necessary. `𝔮 ⊕ ℝ·1 = 𝔮_∅` satisfies both conditions. `𝔮 = ℝ·1` contains the centre but no Borel after complexification, and is not parabolic.

### Examples

`GL_n(ℝ)` (block upper triangular groups as `𝐏(λ)(ℝ)`), `SO(2, 1)`, `Sp_4(ℝ)` (Siegel parabolic `= 𝐏(λ)(ℝ)` for `λ(t) = diag(t, t, t⁻¹, t⁻¹)`), `𝔾_m × SO(2)`.

### Dependencies

Layers 2, 5–8; LieGroups Layers 1, 3, 7; ALS.F.1, ALS.0.1–ALS.0.2; MordellLawrenceVenkatesh §3.10; ReductiveGroups Layer 7; Tau Ceti `TauCeti.Cocharacter.parabolic`, `TauCeti.Cocharacter.levi`, `TauCeti.Cocharacter.unipotent`, `TauCeti.borelSubalgebra`; gaps `minimal-parabolic-orderings`, `real-compactness-criterion`.

## Downstream consumers

- **AutomorphicFormsOnReductiveGroups.** §2.3a (minimal parabolic, Langlands decomposition, conjugacy, rank one, Borel–Tits comparison) consists of the statements of §§2.5, 3.3–3.4 and 9.2 restricted to real points of connected reductive groups. Its Checks for `SL_2(ℝ)`, `GL_n(ℝ)`, `SO₀(n, 1)`, compact groups and `ℝ^×` are recorded here. Its §2.3 induces from parabolic subgroups `P = MAN` (§6.3), and its §2.4 uses standard parabolics and Levi subgroups (§§6.1–6.3).
- **AutomorphicSpectralTheoryPartII.** It uses the archimedean minimal parabolic `P = MAN` and standard Levi subgroups at infinity (§§3.3, 6.3).
- **NoncompactQuantumSymmetry.** It uses amenability of the minimal parabolic. That follows from §3.3: `MA ≅ M × A` with `M` compact, and `N` normal and nilpotent.
- **QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups.** It uses the standard parabolics of the real place (§6).
- **SmoothBanachRepresentations**, through AutomorphicFormsOnReductiveGroups.
- **Rank-one geometry.** KleinianGroups and FuchsianOrbifoldsPartII use the minimal parabolic of `SO₀(n, 1)`, `SL_2(ℝ)` and `PU(1, n)`.
- **Future roadmaps.** Higgs bundles for real groups (the parabolics `P_Θ` of real forms in Bradlow–Collier–García-Prada–Gothen–Oliveira 2024, Introduction), homogeneous dynamics and Zimmer's programme (Brown–Fisher–Hurtado 2022, Brown–Rodriguez Hertz–Wang 2022), harmonic analysis on `G`, and Cartan subgroups.

## Worked examples

- **`SL_2(ℝ)`.**
  - Data: `θ(g) = (gᵀ)⁻¹`, `K = SO(2)`, `𝔞 = ℝ·diag(1, −1)`, `Σ = {±α}`, `M = {±1}`.
  - Parabolics: `P` is upper triangular; the parabolic subgroups are `G` and the point stabilizers on `ℙ¹(ℝ)`.
  - Bruhat and Tits system: `G = P ⊔ P n_s P`, a rank-one Tits system.
  - Dynamics: for `X = diag(1, −1)`, `Q(X) = P`.
- **`GL_n(ℝ)`.**
  - `M` is the `2^n` sign matrices; `P = TauCeti.upperTriangularGroup`; `W = S_n`.
  - Standard parabolics are the block upper triangular groups for compositions of `n`, with block diagonal Levi `L`, `A_Q` the block-scalar positive diagonals and `M_Q` the blocks with `|det| = 1`.
  - `G = KP` is `Matrix.GeneralLinearGroup.existsUnique_iwasawa`, and the Tits system is `TauCeti.glTitsSystem`.
- **`SL_3(ℝ)`.** Four standard parabolics, `W = S₃`, six Bruhat cells of dimensions `5, 6, 6, 7, 7, 8`.
- **`SO₀(n, 1)`.** Rank one, `Σ = {±λ}` with multiplicity `n − 1`, `N ≅ ℝ^{n−1}`, `G/P ≅ S^{n−1}`.
- **`Sp_4(ℝ)`.** `Σ = C₂`, `Π = {e₁ − e₂, 2e₂}`, Siegel parabolic with Levi `GL_2(ℝ)` and Klingen parabolic with Levi `ℝ^× × SL_2(ℝ)`.
- **`SU(n, 1)`, `n ≥ 2`.** `Σ = BC₁`, `𝔫 = 𝔤^λ ⊕ 𝔤^{2λ}` Heisenberg, and `𝔮_Π` contains `𝔤^{−2λ}`.
- **`SL_2(ℂ)` as a real group.** `M = U(1)`, `m_α = 2`, `G/P ≅ ℂℙ¹`.
- **Compact `G`, `ℝ^×`.** `P = G`, `Σ = ∅`, with `𝔭 = 0` and `𝔭 ≠ 0` respectively.
- **Negative controls.**
  - The Euclidean motion group: not reductive.
  - `SU(2)` with `Ad(diag(i, −i))`: a base Cartan involution that is not a reductive Cartan datum.
  - `ℝ × S¹`: non-conjugate Cartan data.
  - `O(1,1)` and `Aut(𝔰𝔩_3(ℝ))`: the component condition fails, and with it `P = N_G(P)`, the Tits system, the overgroup classification and the identification of `dynamicParabolic G H₀` with `P`; the Bruhat decomposition over `W_G` survives, with two and twelve cells.

## References

- **knapp2002**: A. W. Knapp, *Lie Groups Beyond an Introduction*, 2nd ed., Progress in Mathematics 140, Birkhäuser, 2002. Ch. VI §§2, 4–5 (Cartan involutions, Iwasawa decomposition, uniqueness); Ch. VII §2 (reductive groups and their axioms), §4 (Bruhat decomposition), §5 (structure of `M`), §6 (real-rank-one subgroups), §7 (parabolic subgroups, Lemma 7.73, Proposition 7.76, Langlands decompositions). Cited by section.
- **warner1972**: G. Warner, *Harmonic Analysis on Semi-Simple Lie Groups I*, Springer, 1972. Ch. 1, §§1.1–1.2. Cited by section.
- **wallach1988**: N. R. Wallach, *Real Reductive Groups I*, Academic Press, 1988. Ch. 2, §§2.1–2.2 (real reductive groups, parabolic subgroups, `⁰L`). Cited by section.
- **bourbaki-lie4-6**: N. Bourbaki, *Lie Groups and Lie Algebras, Chapters 4–6*, Springer, 2002. Ch. IV §2 nos. 1–7 (Tits systems and parabolic subgroups); Ch. VI §1 (root systems, non-reduced systems, positive systems). Cited by section.
- **borel-tits1965**: A. Borel, J. Tits, *Groupes réductifs*, Publ. Math. IHÉS 27 (1965), 55–150. Théorème 4.15 (pp. 90–91), Corollaire 5.9 (p. 98), Théorème 5.15 (pp. 100–101), Proposition 5.17 and Corollaires 5.18–5.20 (pp. 101–102), Proposition 9.3 (p. 126), Théorème 14.4 (p. 146), §14.7 (pp. 147–148).
- **brown-fisher-hurtado2022**: A. Brown, D. Fisher, S. Hurtado, *Zimmer's conjecture: subexponential growth, measure rigidity, and strong property (T)*, Ann. of Math. 196 (2022), 891–940; arXiv 1608.04995v4, §3.1 (standard parabolic subalgebras and subgroups).
- **brown-rodriguezhertz-wang2022**: A. Brown, F. Rodriguez Hertz, Z. Wang, *Invariant measures and measurable projective factors for actions of higher-rank lattices on manifolds*, Ann. of Math. 196 (2022), 941–981; arXiv 1609.05565v2, §1.2, equation (1).
- **bradlow-collier-garciaprada-gothen-oliveira2024**: S. Bradlow, B. Collier, O. García-Prada, P. Gothen, A. Oliveira, *A general Cayley correspondence and higher rank Teichmüller spaces*, Ann. of Math. 200 (2024), 803–892; arXiv 2101.09377v2, Introduction (the Θ-positive parabolic subgroups `P_Θ ⊂ G_ℝ`; a consumer-side reference).
