# Roadmap: dynamical degrees of rational maps

**Summary.** This roadmap builds the degree theory of dominant rational maps between projective varieties over an arbitrary field. Starting from Mathlib's rational maps and scheme-theoretic images, it constructs the graph `Γ_f ⊆ X ×_K Y` of a dominant rational map with its two projections, the pullback of function fields and the topological degree `e(f) = [K(X) : f^*K(Y)]`, which counts inseparable degree. Intersection numbers are the Euler-characteristic numbers of proper schemes over a field. Over an arbitrary field the roadmap proves the positivity package the degrees need: nonnegativity of products of nef line bundles (Kleiman), the Hodge inequality on surfaces, the Khovanskii–Teissier inequalities, and Siu's inequality for products of nef line bundles. With these it defines the degrees `deg_k(f; L, M) = (π_1^*L^{d−k} · π_2^*M^k)_{Γ_f}`. It proves they do not depend on the birational model of the graph, that they are positive, that `deg_0` and `deg_d` are `(L^d)` and `e(f)·(M^d)`, and that they are invariant under normalization and under extension of the ground field. Its main estimate is sub-multiplicativity along chains `X_1 ⤏ X_2 ⤏ X_3` of dominant maps between varieties of the same dimension, with constant `(d−k+1)^k/(L_2^d)`. From this follow the comparison of polarizations and birational conjugacy. The end theorems are existence of the dynamical degrees `λ_k(f) = lim deg_{k,ω}(f^n)^{1/n}`, equal to `inf_n (C·deg_{k,ω}(f^n))^{1/n}`. They lie in `[1, ∞)` and do not depend on the big and nef polarization ω. They satisfy `λ_k(f^n) = λ_k(f)^n`, `λ_0 = 1`, `λ_d = e(f)` and log-concavity, and are invariant under birational conjugacy and extension of the field. The algebraic entropy is `h_alg(f) = log max_k λ_k(f)`. The examples on projective space are degrees of maps given by forms, morphisms, Silverman's first dynamical degree, the standard Cremona involution (where `deg(σ²) = 1 < d²`), the Fibonacci map with `λ_1` the golden ratio, Frobenius, and polynomial self-maps of affine space.

## Scope and ownership

This roadmap owns the following.

- The pullback of function fields along a dominant rational map, the topological degree and its multiplicativity (§1.1). Mathlib has the bijection between rational maps and morphisms from the spectrum of the function field, not the field homomorphism or its degree. Tau Ceti's `TauCeti.Isogeny.fieldPullback` (TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/FunctionField.lean:167) covers only isogenies of Weierstrass elliptic curves, on their algebraic function fields.
- The graph of a rational map between projective varieties, its projections as a modification and an alteration, the correspondence attached to a composite, and the normalization and field-extension behaviour of graphs (§§1.2–1.4).
- The component formula for Euler-characteristic intersection numbers, their comparison with Chow-theoretic degrees, their real multilinear extension, and the reduction of homogeneous inequalities to integral varieties over algebraically closed fields (Layer 2).
- Over an arbitrary field: the API of nef line bundles the degrees need, Kleiman's nonnegativity theorem with nef-plus-ample over algebraically closed fields, Siu's inequality in intersection form, the Hodge inequality on projective surfaces, the Khovanskii–Teissier inequalities and Siu's inequality for products (Layer 3). No roadmap states these over an arbitrary field.
- Degrees of dominant rational maps, their basic values and invariances, sub-multiplicativity, comparison of polarizations and birational conjugacy (Layer 4); dynamical degrees and algebraic entropy (Layer 5); the projective-space and affine-space theory of Layer 6.

The following are imported, not planned again.

- Euler-characteristic intersection numbers on proper schemes over a field, with Snapper polynomiality, symmetry, additivity, the projection formula with the function-field degree, the Cartier-divisor restriction formula, positivity for ample line bundles and compatibility with extension of the field: CyclotomicClassGroupsAndStickelberger §4.3.
- Nefness of a line bundle on a projective variety over a field (nonnegative degree on every integral curve): ArakelovGeometryAndAbelianHeightsPartII §0.1. Volume, bigness, the Hilbert–Samuel formula `vol(L) = (L^d)` for nef `L`, and Siu's inequality `vol(L − M) ≥ (L^d) − d(L^{d−1}·M)` for nef `L, M`: ArakelovGeometryAndAbelianHeightsPartII §0.3.
- Bertini irreducibility for the generic linear section: LefschetzPencilsAndVanishingCycles §5.1.
- Chow groups, proper pushforward, first Chern classes, the projection formula, modifications, alterations, de Jong's alteration theorem, regularity and smoothness over perfect fields, projective space and its twisting sheaves, normal schemes and finiteness of normalization, descent along field extensions, coherent cohomology on proper schemes, Chow's lemma, Nakai–Moishezon over algebraically closed fields, the Hodge index theorem and Riemann–Roch on smooth projective surfaces: SchemeAndStackFoundations §§0.3, 0.7, 0.11, 0.20, 0.30, 2.6, 3.3, 4.11, 4.12, 4.13, 4.15, 4.16, 4.19, 5.1–5.3 and 5.10.
- Ampleness ("some positive power is very ample"), projective morphisms, tensor powers and global generation of line bundles: StableReduction Layer 2.
- Rational self-maps of `ℙ¹` as classes of pairs of binary forms with multiplicative degree, and their identification with endomorphisms of the scheme `ℙ¹`: ArithmeticDynamics §§0.18 and 0.26, used in a Check of §6.2.

AbundanceStatement Layer 4D states Kleiman's nonnegativity and nef-plus-ample over algebraically closed fields of characteristic zero; §3.2 here states them over every field and contains that case.

What is left out, as motivation for later roadmaps:

- Numerical cycle spaces `N^k(X)_ℝ` in every codimension, their finite-dimensionality, the pullback operators `f^* = π_{1*}π_2^*` on them and the spectral description `λ_k(f) = lim ‖(f^n)^*‖^{1/n}` (dang2020 Theorem 2; truong2020 Theorem 1.1(5)). The same Part treats relative dynamical degrees and the product formula (dang2020 Theorem 4; truong2020 Theorem 1.1(4)). This is DynamicalDegreesOfRationalMaps, Part II. Real polarizations here are positive combinations of nef line bundles (§2.3), so no numerical space is needed.
- The topological-entropy bound of Dinh and Sibony over `ℂ` (dinhsibony2005 Théorème 1), which uses positive currents.
- Dang and Favre's b-classes, Picard–Manin spaces and spectral gap, with their Theorems 1–2 (dangfavre2021 lines 148–180). They consume the degrees and dynamical degrees built here.
- Arithmetic degrees and canonical heights of rational self-maps of `ℙ^N` (silverman2014 §§4–5).
- Correspondences and resolution of singularities. No statement here uses either.

## Conventions

- `K` is a field. A *variety over K* is an integral scheme separated and of finite type over `Spec K`. A *projective variety* is a variety projective over `K` in the sense of StableReduction Layer 2, equivalently proper over `K` with an ample line bundle. `d = dim X`. Dynamical statements assume `d ≥ 1`; intersection-theoretic ones allow `d = 0`.
- Line bundles are Tau Ceti's `TauCeti.AlgebraicGeometry.InvertibleSheaf`, written additively: `L + M` is the tensor product, `mL` the `m`-th tensor power, `−L` the dual. `Pic(X)` is `TauCeti.AlgebraicGeometry.LineBundleClass X`. Pullback along `p` is written `p^*L`.
- *Intersection numbers.* For a proper `K`-scheme `X`, a closed subscheme `Z ⊆ X` of dimension `≤ r` and line bundles `L_1, …, L_r` on `X`, `(L_1 ⋯ L_r · Z)` is the numerical intersection of CyclotomicClassGroupsAndStickelberger §4.3: the coefficient of `n_1⋯n_r` in `χ_K(Z, n_1L_1 + ⋯ + n_rL_r)`. Write `(L_1 ⋯ L_r)_X` when `Z = X`, and `(L^r)` for equal entries. The number depends on `K`. *Witness:* on `ℙ¹_K`, `(O(a))_{ℙ¹} = a` for every integer `a`, because `χ(O(an)) = an + 1`. For a closed point `P` with `[κ(P) : K] = 2`, the empty intersection `( · P)` is `χ_K(O_P) = 2`; computed over `κ(P)` it is `1`.
- *Composition.* Mathlib's `Scheme.RationalMap.comp f g`, for `f : X ⤏ Y` dominant and `g : Y ⤏ Z`, applies `f` first. In prose it is `g ∘ f`. *Witness:* on `ℙ¹` with `f(z) = z²` and `g(z) = z + 1`, `f.comp g` is `z ↦ z² + 1`. Its value at `z = 1` is `2`, while `f ∘ g` takes the value `4` there. Iterates are `f^0 = id` and `f^{n+1} = f^n ∘ f`. By Mathlib's `Scheme.RationalMap.comp_assoc` this agrees with `f ∘ f^n`.
- *Birational maps.* A rational map `f : X ⤏ Y` is *birational* if it is `φ.toRationalMap` for a partial isomorphism `φ` (Mathlib's `Scheme.PartialIso`, an isomorphism between dense opens of `X` and `Y`) that is over `K` in the sense of `Scheme.PartialIso.IsOver`. A birational map is dominant. Its *inverse* `f^{−1}` is `φ.symm.toRationalMap`; it does not depend on `φ`, because its pullback is `(f^*)^{−1}` and §1.1 determines a dominant rational map by its pullback. A morphism is birational if its rational map is. Mathlib's `Scheme.Birational X Y` is the existence of some partial isomorphism between the schemes: a property of the pair, not of a map. *Witness:* `z ↦ z²` on `ℙ¹` is not birational (its pullback `K(z²) ⊆ K(z)` is not surjective), although `Scheme.Birational ℙ¹ ℙ¹` holds through the identity.
- *Degrees.* For `f : X ⤏ Y` dominant between projective varieties of the same dimension `d`, `0 ≤ k ≤ d`, and line bundles `L` on `X` and `M` on `Y`, `deg_k(f; L, M) = (π_1^*L^{d−k} · π_2^*M^k)_{Γ_f}`. The index `k` counts the copies pulled back from the *target*. For a self-map and `ω` on `X`, `deg_{k,ω}(f) = deg_k(f; ω, ω)`. *Witness:* for `f(z) = z²` on `ℙ¹` and `H = O(1)`, `deg_{0,H}(f) = 1` and `deg_{1,H}(f) = 2 = e(f)`. The opposite convention would give `deg_1 = 1`.
- *Topological degree.* `e(f) = dim_{f^*K(Y)} K(X)`, Mathlib's `Module.finrank`. It counts inseparable degree and takes the junk value `0` when `K(X)` is infinite-dimensional over `f^*K(Y)`. *Witness:* the Frobenius `[x_i] ↦ [x_i^p]` of `ℙ^d` over a field of characteristic `p` has `e = p^d`; the separable degree would be `1`.
- *Polarizations.* A *big and nef* line bundle is a nef `L` with `(L^d) > 0`. Nefness is that of ArakelovGeometryAndAbelianHeightsPartII §0.1, extended to projective `K`-schemes in §3.1. A *real polarization* is `ω = Σ a_i L_i` in `Pic(X) ⊗ ℝ` with real `a_i > 0`, every `L_i` nef, and `(ω^d) > 0`. Every ample line bundle and every big and nef line bundle is a real polarization.
- *Dynamical degrees and entropy.* `λ_k(f) = lim_{n→∞} deg_{k,ω}(f^n)^{1/n}` and `h_alg(f) = log max_{0≤k≤d} λ_k(f)`, natural logarithm.
- *Fibonacci numbers* are Mathlib's `Nat.fib`, with `fib 0 = 0`, `fib 1 = fib 2 = 1` and `fib 3 = 2`. *Witness:* the Fibonacci map of §6.3 has `deg_{1,H}(f^n) = fib(n + 2)`. This is `1` for `n = 0` (the identity) and `2` for `n = 1`. The golden ratio is Mathlib's `Real.goldenRatio = (1 + √5)/2`.
- *Projective space* `ℙ^d_K` is Mathlib's `AlgebraicGeometry.Proj` of `K[x_0, …, x_d]` graded by `MvPolynomial.homogeneousSubmodule`; `H = O(1)`.

## Exact supplier contracts

### From Mathlib

- `AlgebraicGeometry.Scheme.PartialMap` and `AlgebraicGeometry.Scheme.RationalMap` (Mathlib/AlgebraicGeometry/Birational/RationalMap.lean:47, 374). A partial map is a morphism on a dense open. A rational map is its class under agreement on a dense open. `Scheme.RationalMap.domain` (line 570) is the union of the domains of the representatives. It is dense by `Scheme.RationalMap.dense_domain` (line 581). `Scheme.RationalMap.toPartialMap` (line 602) represents a rational map on its domain when the source is reduced and the target separated. `Scheme.RationalMap.IsOver` (line 392) says some representative is an `S`-map.
- `Scheme.RationalMap.fromFunctionField` (line 497) is the morphism `Spec K(X) → Y` of a rational map from an irreducible scheme. `Scheme.RationalMap.equivFunctionFieldOver` (line 558) identifies `S`-morphisms `Spec K(X) → Y` with `S`-rational maps, for `X` integral and `Y` locally of finite type over `S`. These say nothing about dominance or field homomorphisms; §1.1 adds both.
- `AlgebraicGeometry.Scheme.RationalMap.IsDominant` (Mathlib/AlgebraicGeometry/Birational/Dominant.lean:73): some, equivalently every, representative is dominant.
- `Scheme.RationalMap.comp` (Mathlib/AlgebraicGeometry/Birational/Composition.lean:156). It requires the first map dominant, the source preirreducible and the middle scheme nonempty. Also used: `Scheme.RationalMap.comp_assoc` (line 183), which assumes the middle schemes irreducible, `Scheme.RationalMap.comp_id` (line 171), `Scheme.RationalMap.id_comp` (line 218), the dominance instance for composites (line 174) and `Scheme.RationalMap.isOver_comp` (line 194).
- `AlgebraicGeometry.Scheme.PartialIso` (Mathlib/AlgebraicGeometry/Birational/Birational.lean:39) is an isomorphism between dense open subschemes, with `Scheme.PartialIso.IsOver` (line 55), its inverse `Scheme.PartialIso.symm` (line 88) and its rational map `Scheme.PartialIso.toRationalMap` (line 166). `AlgebraicGeometry.Scheme.Birational X Y` (line 181) is the existence of a partial isomorphism between the two schemes; it is a relation between schemes, not a property of a rational map, which is why the Conventions define birational maps through partial isomorphisms.
- `AlgebraicGeometry.Scheme.Hom.image`, `Scheme.Hom.imageι` and `Scheme.Hom.toImage` (Mathlib/AlgebraicGeometry/IdealSheaf/Subscheme.lean:659, 662, 707). The scheme-theoretic image is the closed subscheme cut out by `Scheme.Hom.ker` (Mathlib/AlgebraicGeometry/IdealSheaf/Basic.lean:691). `Scheme.Hom.toImage` is dominant for quasi-compact morphisms (line 717). Mathlib does not state that the image of a reduced scheme is reduced; §1.2 uses stacks-morphisms Lemma 6.7.
- `AlgebraicGeometry.Scheme.functionField` (Mathlib/AlgebraicGeometry/FunctionField.lean:37) is the stalk at the generic point; it is a field for integral schemes.
- `AlgebraicGeometry.IsFinite.iff_isProper_and_isAffineHom` (Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:97), with `AlgebraicGeometry.IsProper`, `AlgebraicGeometry.IsAffineHom`, `AlgebraicGeometry.IsDominant` and `AlgebraicGeometry.IsIntegral`.
- `AlgebraicGeometry.Proj` (Mathlib/AlgebraicGeometry/ProjectiveSpectrum/Scheme.lean:854), `MvPolynomial.homogeneousSubmodule` and `MvPolynomial.gradedAlgebra` (Mathlib/RingTheory/MvPolynomial/Homogeneous.lean:87, 613). Mathlib has `𝔸(n; S)` but no named projective space; `ℙ^d_K` is this `Proj`. `MvPolynomial.uniqueFactorizationMonoid` (Mathlib/RingTheory/Polynomial/UniqueFactorization.lean:128), the unique-factorization instance for polynomials over a unique factorization domain, gives greatest common divisors of forms.
- `Subadditive`, `Subadditive.lim`, `Subadditive.lim_le_div` and `Subadditive.tendsto_lim` (Mathlib/Analysis/Subadditive.lean:34, 44, 47, 87) are Fekete's lemma. `Subadditive.lim` is the infimum of `u_n/n` over `n ≥ 1`. Convergence needs `u_n/n` bounded below.
- `Module.finrank` and `Module.finrank_mul_finrank` (Mathlib/LinearAlgebra/Dimension/Free.lean:68), the tower law.
- `Nat.fib` (Mathlib/Data/Nat/Fib/Basic.lean:56) and `Real.goldenRatio` (Mathlib/NumberTheory/Real/GoldenRatio.lean:35).

Mathlib has no graph of a rational map, no field homomorphism attached to a dominant rational map, no intersection numbers and no positivity of line bundles.

### From Tau Ceti

- `TauCeti.AlgebraicGeometry.InvertibleSheaf` (TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:112), with `TauCeti.AlgebraicGeometry.InvertibleSheaf.pullback` (LineBundle/Pullback.lean:72), `TauCeti.AlgebraicGeometry.InvertibleSheaf.tensorProduct` (LineBundle/TensorProduct.lean:63) and `TauCeti.AlgebraicGeometry.InvertibleSheaf.dual` (LineBundle/Dual.lean:44). `TauCeti.AlgebraicGeometry.LineBundleClass` (LineBundle/Class.lean:50) is the Picard group.
- `TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology` (Cohomology/Basic.lean:61) and the truncated Euler characteristic `AlgebraicGeometry.Scheme.Modules.eulerCharBelow` (Cohomology/EulerCharacteristic.lean:105). It sums `(−1)^i dim_K H^i` for `i < n`, with junk value `0` for infinite-dimensional terms. It equals `χ` once `n > dim` on a proper scheme.
- `TauCeti.AlgebraicGeometry.LineBundleClass.eulerDegree` (LineBundle/Degree.lean:126), the degree `χ(L) − χ(O)` on curves.
- `AlgebraicGeometry.Scheme.IdealSheafData.IsEffectiveCartier` (TauCeti/AlgebraicGeometry/EffectiveCartierDivisor/Basic.lean:89), effective Cartier divisors as ideal sheaves locally generated by a regular element.
- `TauCeti.AlgebraicGeometry.topologicalKrullDim_eq_toNat_trdeg_functionField` (TauCeti/AlgebraicGeometry/Scheme/FunctionField.lean:101): an integral scheme locally of finite type over `K` has dimension `trdeg_K K(X)`.

### From TauCetiRoadmap.CyclotomicClassGroupsAndStickelberger

- §4.3, numerical intersection. For `X` proper over `K`, `Z ⊆ X` closed of dimension `≤ d` and line bundles `L_1, …, L_d`, `(L_1 ⋯ L_d · Z)` is the coefficient of `n_1⋯n_d` in `χ(Z, (L_1|_Z)^{n_1} ⊗ ⋯ ⊗ (L_d|_Z)^{n_d})`. This roadmap consumes the following from it:
  - polynomiality of `χ(F ⊗ L_1^{n_1} ⊗ ⋯)` of total degree `≤ dim Supp F` for every coherent `F`;
  - symmetry and additivity in each `L_i`;
  - the projection formula: for `p : Y → X` a morphism of proper `K`-schemes and `Z ⊆ Y` integral of dimension `d`, `(p^*L_1 ⋯ p^*L_d · Z) = deg(Z → p(Z)) (L_1 ⋯ L_d · p(Z))`, and `0` if `dim p(Z) < d`;
  - the Cartier-divisor restriction formula `(L_1 ⋯ L_d · Z) = (L_2 ⋯ L_d · D)` when `L_1|_Z ≅ O_Z(D)` for an effective Cartier divisor `D ⊆ Z`;
  - positivity for ample `L_i`;
  - field-extension compatibility: for `K'/K`, `(L_{1,K'} ⋯ L_{d,K'} · Z_{K'})` over `K'` equals `(L_1 ⋯ L_d · Z)` over `K`.

### From TauCetiRoadmap.ArakelovGeometryAndAbelianHeightsPartII

- §0.1, the geometric case: a line bundle on a projective variety over a field is nef if its degree on every integral curve is nonnegative.
- §0.3, the geometric case. For a projective `K`-variety `X` of dimension `d` and a line bundle `L`, `vol(L) = lim d!·h⁰(mL)/m^d`, and `L` is big if `vol(L) > 0`. It supplies (1′): `vol(L) = (L^d)` for nef `L`. It supplies (2′): for `d ≥ 1` and nef `L, M`, `vol(L − M) ≥ (L^d) − d(L^{d−1}·M)`. Its intersection numbers are degrees of products of first Chern classes in the sense of SchemeAndStackFoundations §§5.2–5.3. §2.2 here identifies them with numerical intersections.

### From TauCetiRoadmap.LefschetzPencilsAndVanishingCycles

- §5.1, Bertini's irreducibility theorem (Jouanolou). Let `X` be geometrically irreducible of finite type over a field and `g : X → ℙ^r` a morphism with `dim g(X) > s`. Then `g^{−1}(L)` is geometrically irreducible for the generic linear subspace `L` of codimension `s`, defined over the function field of the Grassmannian. It is used with `s = 1` and `g` a closed immersion given by a very ample line bundle.

### From TauCetiRoadmap.SchemeAndStackFoundations

- §0.3: Mathlib's `Proj` and its base change, the relative Proj and the twisting sheaves `O(n)`, with `ℙ^n_S` as the relative Proj of the polynomial algebra. §0.7: dimension theory of schemes of finite type over a field. §0.11: descent along field extensions. §0.20: Nagata rings; the normalization of a variety is finite. §0.30: normal schemes.
- §2.6: Serre vanishing for ample line bundles on proper schemes over a Noetherian ring; finite-dimensionality of coherent cohomology on proper schemes over a field, as supplied there by JacobianChallenge.
- §3.3: degrees of line bundles on proper curves.
- §4.11: modifications with a witness open. §4.12: Chow's lemma (a proper scheme over a Noetherian base has a projective modification). §4.16: alterations with their generic degree. §4.19: de Jong's alteration theorem over a field. It gives an alteration from an integral `X_1` that is open in a regular scheme projective over a finite extension of the base field.
- §4.13: a scheme of finite type over a perfect field is regular exactly where it is smooth.
- §4.15, Nakai–Moishezon over an algebraically closed field: on a proper algebraic space, a line bundle is ample if and only if its top self-intersection on every positive-dimensional integral closed subspace is positive.
- §§5.1–5.3: Chow groups, proper pushforward with residue-degree weights, the degree of zero-cycles on proper schemes, the first Chern class operation with commutativity and the projection formula.
- §5.10, on smooth projective surfaces over an algebraically closed field: the Hodge index theorem (for `H` ample, `D·H = 0` implies `D² ≤ 0`), the Hodge inequality `(D·H)² ≥ D²·H²` for ample `H` that it implies, and Riemann–Roch `χ(O(D)) = ½ D·(D − K) + χ(O_S)`.

### From TauCetiRoadmap.StableReduction

- Layer 2: ampleness of a line bundle as "some positive power is very ample", projective morphisms, tensor powers, pullback and global generation of line bundles.

### From TauCetiRoadmap.ArithmeticDynamics

- §0.18: the monoid of rational self-maps of `ℙ¹_K` as classes of pairs of binary forms of a common degree without common zero, with `deg(f ∘ g) = deg f · deg g`. §0.26: its injective monoid map onto the `K`-endomorphisms of the scheme `ℙ¹_K`.

### What SchemeAndStackFoundations must provide

- **gap:numerical-nef-big-transfer** (SchemeAndStackFoundations §5.3, the field-extension part of the contract StableReductionPartII records under the same name). For a projective integral `K`-scheme `X`, a line bundle `L` on `X` and a field extension `K'/K`, if `(L · C) ≥ 0` for every integral closed curve `C ⊆ X`, then `(L_{K'} · C') ≥ 0` for every integral closed curve `C' ⊆ X_{K'}`. The field-extension item of §3.1 consumes exactly this and derives from it the converse and the statement for every projective `K`-scheme; the reduction item of §3.1, and through it Kleiman's theorem (§3.2) and every later positivity statement for nef classes that are not ample, use it on an integral scheme.

## How to read the build

Layer 1 is closest to Mathlib. It attaches to a dominant rational map its pullback of function fields, its topological degree and its graph, and records how graphs behave under composition, normalization and extension of the field. Layer 2 fixes the intersection numbers. It proves the component formula and the comparison with Chow degrees, extends the numbers to real coefficients, and reduces homogeneous inequalities to an integral variety over an algebraically closed field. Layer 3 proves positivity over an arbitrary field, in the order the proofs need: nef API, Kleiman, Siu, the Hodge inequality on surfaces, Khovanskii–Teissier, and Siu for products. Layer 4 defines the degrees on the graph and proves their values, invariances, sub-multiplicativity and the comparison theorems. Layer 5 defines the dynamical degrees and the algebraic entropy and proves their properties. Layer 6 computes on projective and affine space. A *Needs:* line lists what a statement and its suggested route use, so a different proof may omit route-only inputs.

The headline statements are the following:

- integrality, projectivity and the projection properties of the graph (§1.2);
- Khovanskii–Teissier and Siu for products over an arbitrary field (§§3.5–3.6);
- positivity and the boundary values of the degrees (§4.2), and their invariance under extension of the field (§4.3);
- sub-multiplicativity (§4.4) and the comparison theorems (§4.5);
- existence and properties of `λ_k` and of `h_alg` (§§5.1–5.4);
- the degree formulas on projective space and the Cremona and Fibonacci computations (§§6.2–6.4).

## Layer 1: Function fields and the graph of a dominant rational map

Throughout, `X`, `Y`, `Z` are varieties over `K` and rational maps are `K`-rational maps in the sense of Mathlib's `Scheme.RationalMap.IsOver` over `Spec K`.

### 1.1 Pullback of function fields and topological degree

Define the *pullback* `f^* : K(Y) → K(X)` of a dominant rational map `f : X ⤏ Y`. Mathlib's `Scheme.RationalMap.fromFunctionField f : Spec K(X) → Y` sends the point of `Spec K(X)` to the generic point of `Y`, because `f` is dominant, and so induces a local homomorphism `O_{Y,η_Y} = K(Y) → K(X)`. This is a homomorphism of `K`-algebras because `f` is a `K`-map. Define the *topological degree* `e(f) = dim_{f^*K(Y)} K(X)` with Mathlib's `Module.finrank` (stacks-morphisms Definition 52.8, line 6046, for the degree of a dominant generically finite morphism; dinhsibony2005 lines 69–70 for the topological degree as the number of preimages of a generic point over `ℂ`).

- For a dominant morphism `g : X → Y`, the pullback of its rational map is the stalk map at the generic points. When `g` is an alteration it is the `functionFieldMap` of SchemeAndStackFoundations §4.16, and `e(g)` is the generic degree there.
- *Functoriality.* For `f : X ⤏ Y` and `g : Y ⤏ Z` dominant, `(g ∘ f)^* = f^* ∘ g^*`, and the identity rational map has pullback the identity.
- *Determination.* `f ↦ f^*` is a bijection between dominant `K`-rational maps `X ⤏ Y` and `K`-algebra homomorphisms `K(Y) → K(X)`. The proof composes `Scheme.RationalMap.equivFunctionFieldOver` with the correspondence between `K`-morphisms `Spec K(X) → Y` hitting the generic point and `K`-embeddings of function fields, using that `Y` is of finite type.
- *Finiteness.* `e(f)` is a positive integer if and only if `dim X = dim Y`. If `dim X > dim Y`, then `K(X)` has positive transcendence degree over `f^*K(Y)` and `e(f) = 0` is a junk value. The proof uses Tau Ceti's `TauCeti.AlgebraicGeometry.topologicalKrullDim_eq_toNat_trdeg_functionField`, and finite generation of `K(X)` over `K`.
- *Multiplicativity.* If `dim X = dim Y = dim Z`, then `e(g ∘ f) = e(f)·e(g)`, by Mathlib's `Module.finrank_mul_finrank` applied to `f^*g^*K(Z) ⊆ f^*K(Y) ⊆ K(X)`. The pullback `f^*` is injective, being a homomorphism of fields, and carries `g^*K(Z) ⊆ K(Y)` onto `f^*g^*K(Z) ⊆ f^*K(Y)`.
- *Birationality.* If `dim X = dim Y`, then `e(f) = 1` if and only if `f^*` is an isomorphism, if and only if `f` is birational in the sense of the Conventions. For the last step: when `f^*` is an isomorphism, determination gives a dominant `g : Y ⤏ X` with `g^* = (f^*)^{−1}`; then `(g ∘ f)^* = id` and `(f ∘ g)^* = id`, so `g ∘ f = id_X` and `f ∘ g = id_Y` by determination. Representatives `f_U` and `g_V` therefore compose to the identity on dense opens `U' ⊆ U` and `V' ⊆ V`, and they restrict to inverse isomorphisms between `U_0 = U' ∩ f_U^{−1}(V')` and `V_0 = V' ∩ g_V^{−1}(U')`, a partial isomorphism over `K` whose rational map is `f`. In that case `X` and `Y` are birational in Mathlib's sense `Scheme.Birational X Y`, and `f^{−1}` has pullback `(f^*)^{−1}`.

*Needs:* Mathlib `Scheme.RationalMap.fromFunctionField`, `Scheme.RationalMap.equivFunctionFieldOver`, `Scheme.RationalMap.IsDominant`, `Scheme.functionField`, `Module.finrank`, `Module.finrank_mul_finrank`, `Scheme.PartialIso`, `Scheme.PartialIso.IsOver`, `Scheme.PartialIso.symm`, `Scheme.PartialIso.toRationalMap`; Tau Ceti `TauCeti.AlgebraicGeometry.topologicalKrullDim_eq_toNat_trdeg_functionField`; SchemeAndStackFoundations §4.16.

**Checks.**

- For `f(z) = z²` on `ℙ¹`, `f^*(z) = z²` and `e(f) = [K(z) : K(z²)] = 2` in every characteristic. In characteristic `2` the extension is purely inseparable. A convention counting separable degree would give `1` there.
- For the Frobenius `[x_i] ↦ [x_i^p]` of `ℙ^d` over a field of characteristic `p`, `f^*` is `x_i ↦ x_i^p` on affine coordinates and `e(f) = p^d`.
- The standard Cremona involution of `ℙ²` has `e = 1` and is birational, although its forms have degree `2`. Multiplicativity gives `e(σ ∘ σ) = 1`.
- Non-example: `f(z) = z²` on `ℙ¹` has `e(f) = 2`, `f^*` is not surjective, and `f` is the rational map of no partial isomorphism, so the three conditions of the birationality item fail together. Yet `Scheme.Birational ℙ¹ ℙ¹` holds, through the identity. A definition of "birational `f`" through Mathlib's relation on the pair would make the item false.
- The linear projection `ℙ² ⤏ ℙ¹` from `[0 : 0 : 1]` is dominant with `K(x, y)` of transcendence degree one over `K(x)`, so `e = 0` is the junk value. The finiteness item excludes it.
- Non-example: a constant map `ℙ¹ → ℙ¹` is not dominant and has no pullback of function fields; Mathlib's composition with it as the first map is not defined.

### 1.2 The graph

Let `X`, `Y` be projective varieties and `f : X ⤏ Y` a rational map. Let `U` be its domain (Mathlib's `Scheme.RationalMap.domain`) and `f_U : U → Y` the representative of `Scheme.RationalMap.toPartialMap`. Define the *graph* `Γ_f ⊆ X ×_K Y` as the scheme-theoretic image (Mathlib's `Scheme.Hom.image`) of the `K`-morphism `γ_f = (ι_U, f_U) : U → X ×_K Y`. Its *projections* `π_1 : Γ_f → X` and `π_2 : Γ_f → Y` are the compositions of `Scheme.Hom.imageι` with the projections of the product (dinhsibony2005 lines 45–51; dang2020 lines 21–25; guedj2010 lines 1099–1110).

Prove the following.

- `Γ_f` is integral, closed in `X ×_K Y`, projective over `K`, and of dimension `dim X`. The morphism `γ_f` is quasi-compact because `X` is Noetherian, so its image is the closure of the image of the integral scheme `U`, with reduced structure (stacks-morphisms Lemma 6.7, line 488).
- *Independence of the representative.* For every partial map `(V, g)` representing `f`, the scheme-theoretic image of `(ι_V, g)` is `Γ_f`.
- `π_1` is proper and birational, and `π_1^{−1}(U) → U` is an isomorphism with inverse `γ_f`. Hence `π_1` is a modification in the sense of SchemeAndStackFoundations §4.11 with witness `U`. The graph of `f_U` is closed in `U ×_K Y` because `Y` is separated.
- `π_2 ∘ γ_f = f_U`. If `f` is dominant, `π_2` is dominant and, being proper, surjective. If moreover `dim X = dim Y`, `π_2` is an alteration (SchemeAndStackFoundations §4.16) with generic degree `e(f)`, computed through the isomorphism `π_1^* : K(X) → K(Γ_f)`.
- *Morphisms.* If `f` is the rational map of a morphism `g : X → Y`, then `U = X`, `π_1` is an isomorphism and `π_2 ∘ π_1^{−1} = g`. For `g = id_X` the graph is the diagonal.
- *Inverses.* If `f` is birational, the exchange of factors `X ×_K Y ≅ Y ×_K X` maps `Γ_f` onto `Γ_{f^{−1}}`.

*Needs:* Mathlib `Scheme.RationalMap.domain`, `Scheme.RationalMap.toPartialMap`, `Scheme.Hom.image`, `Scheme.Hom.imageι`, `Scheme.Hom.toImage`, `AlgebraicGeometry.IsProper`, `AlgebraicGeometry.IsDominant`, `Scheme.PartialIso.symm`; §1.1; SchemeAndStackFoundations §§0.7, 4.11, 4.16; StableReduction Layer 2.

**Checks.**

- For `f = id_X`, `Γ_f` is the diagonal and both projections are isomorphisms.
- For `f(z) = z²` on `ℙ¹`, `Γ_f ≅ ℙ¹` through `π_1`, and `π_2` has generic degree `2 = e(f)`.
- For the Cremona involution `σ[x : y : z] = [yz : xz : xy]` of `ℙ²`, the domain is the complement of the three coordinate points. The fibre of `π_1` over each of them is a line. Both projections are birational, and `Γ_σ` is the blow-up of `ℙ²` at the three points.
- For the projection `ℙ² ⤏ ℙ¹` from `[0 : 0 : 1]`, `Γ` is the blow-up at that point and `π_2` is surjective with fibres `ℙ¹`. It is not an alteration, so the equal-dimension hypothesis is needed.
- Non-example: for the constant map `ℙ¹ → ℙ¹` with value `[0 : 1]`, `Γ = ℙ¹ × {[0 : 1]}` and `π_2` is not surjective. Dominance is needed for surjectivity.

### 1.3 Graphs of composites

Let `X`, `Y`, `Z` be projective varieties of the same dimension `d` and let `f : X ⤏ Y` and `g : Y ⤏ Z` be dominant. For rational maps `a : X ⤏ Y` and `b : X ⤏ Z` define `(a, b) : X ⤏ Y ×_K Z` by the morphism into the fibre product on the intersection of their domains, a dense open. Define the *correspondence of the composite* `W_{f,g} = Γ_{(f, g∘f)} ⊆ X ×_K Y ×_K Z` with projections `q_X`, `q_Y`, `q_Z`. Prove:

- `W_{f,g}` is an integral projective variety of dimension `d`;
- `(q_X, q_Y) : W_{f,g} → Γ_f` and `(q_X, q_Z) : W_{f,g} → Γ_{g∘f}` are proper and birational;
- `(q_Y, q_Z) : W_{f,g} → Γ_g` is proper and surjective, and generically finite of generic degree `e(f)`. Its function-field extension is `K(Γ_g) ≅ K(Y) → K(X) ≅ K(W_{f,g})`, which is `f^*`.

The construction applies to iterates. For `f : X ⤏ X` and `m, n ≥ 1`, `W_{f^m, f^n}` relates `Γ_{f^m}`, `Γ_{f^n}` and `Γ_{f^{m+n}}` (dang2020 lines 1285–1334, the graph of `π_3^{−1} ∘ f_1 ∘ π_1` and diagram (5.1)).

*Needs:* Mathlib `Scheme.RationalMap.comp`, `Scheme.RationalMap.comp_assoc`, `Scheme.Hom.image`; §§1.1–1.2; SchemeAndStackFoundations §4.16.

**Checks.**

- For `f = g = σ` the Cremona involution of `ℙ²`, `σ ∘ σ = id`. Then `W_{σ,σ} → Γ_{id}` (the diagonal) is birational and `(q_Y, q_Z)` has degree `e(σ) = 1`.
- For `f = g = (z ↦ z²)` on `ℙ¹`, `W_{f,g} ≅ ℙ¹` through `q_X`, and `(q_Y, q_Z)` maps onto `Γ_g ≅ ℙ¹` with degree `2 = e(f)`, not `e(g ∘ f) = 4`.
- If `f` is replaced by a non-dominant map, `g ∘ f` is not defined by Mathlib's composition and the construction does not apply.

### 1.4 Normalization and extension of the field

*Normalization.* Let `ν : X̃ → X` be the normalization of a projective variety. It is finite and birational (SchemeAndStackFoundations §§0.20, 0.30), so `X̃` is a projective variety. For `f : X ⤏ X` dominant put `f̃ = ν^{−1} ∘ f ∘ ν : X̃ ⤏ X̃`, with `ν^{−1}` the inverse (Conventions) of the birational morphism `ν`, which is an isomorphism over the dense open normal locus of `X`. Prove that `ν × ν` maps `Γ_{f̃}` onto `Γ_f`, properly and birationally, and that `(f^n)~ = f̃^n`.

*Extension of the field.* Let `K'/K` be a field extension. Prove that `(Γ_f)_{K'} ⊆ (X ×_K Y)_{K'}` is the scheme-theoretic image of `γ_f ×_K K'` (flat base change of scheme-theoretic images, stacks-morphisms Lemma 26.16, line 2198). If `X` and `Y` are geometrically integral, `X_{K'}` and `Y_{K'}` are projective varieties over `K'`. Let `f_{K'}` be the rational map of `(f_U)_{K'}`. It is dominant when `f` is; `e(f_{K'}) = e(f)`; `(g ∘ f)_{K'} = g_{K'} ∘ f_{K'}`; and `Γ_{f_{K'}} = (Γ_f)_{K'}` (truong2020 §6.3, line 1529).

For `e(f_{K'}) = e(f)`: `K(X) ⊗_K K'` is free of rank `e(f)` over `f^*K(Y) ⊗_K K'`, a domain whose fraction field is `K(Y_{K'})`. Localizing gives `[K(X_{K'}) : K(Y_{K'})] = e(f)`.

*Needs:* Mathlib `Scheme.PartialIso`, `Scheme.PartialIso.symm`, `Scheme.Hom.image`; §§1.1–1.2; SchemeAndStackFoundations §§0.11, 0.20, 0.30.

**Checks.**

- `X = ℙ¹_ℂ` regarded as an `ℝ`-scheme is integral but not geometrically integral: `X_ℂ = ℙ¹_ℂ ⊔ ℙ¹_ℂ`. The base change of the graph of `id_X` is the union of the two diagonals, a reducible scheme that is not the graph of a rational map of an integral scheme. The geometric-integrality hypothesis is needed for `Γ_{f_{K'}}`.
- For the Cremona involution over `ℚ`, the base change to `ℂ` is the Cremona involution over `ℂ` and `e = 1` on both sides.
- For the cuspidal cubic `X = V(y²z − x³) ⊆ ℙ²` with normalization `ℙ¹ → X`, `t ↦ [t² : t³ : 1]`, the lift of `id_X` is `id_{ℙ¹}`.

### Examples

The identity and its diagonal, `z ↦ z²` on `ℙ¹` with `e = 2`, the Cremona involution of `ℙ²` with its graph the blow-up at three points, the linear projection `ℙ² ⤏ ℙ¹` (dominant, not generically finite), Frobenius with `e = p^d`, and `ℙ¹_ℂ` over `ℝ` for base change.

### Dependencies

Mathlib's rational maps, composition, partial isomorphisms, scheme-theoretic images and function fields; Tau Ceti's dimension theorem; SchemeAndStackFoundations §§0.7, 0.11, 0.20, 0.30, 4.11, 4.16; StableReduction Layer 2. No other layer of this roadmap.

## Layer 2: Intersection numbers over a field

### 2.1 The component formula

Let `X` be proper over `K`, `Z ⊆ X` a closed subscheme of dimension `r`, and `L_1, …, L_r` line bundles on `X`. Let `Z_1, …, Z_s` be the irreducible components of `Z` of dimension `r`, with reduced structure, and `m_i` the length of `O_{Z,ξ_i}` at their generic points. Prove `(L_1 ⋯ L_r · Z) = Σ_i m_i (L_1 ⋯ L_r · Z_i)` (stacks-varieties Lemmas 45.2 and 45.6, lines 4716 and 4784; kleiman2005 Lemma B.12, line 3624). The proof filters a coherent module by subquotients `(V → X)_*I` with `V` integral and `I` a nonzero ideal sheaf, and uses additivity of `χ` and of lengths.

*Needs:* CyclotomicClassGroupsAndStickelberger §4.3 (polynomiality, definition); SchemeAndStackFoundations §2.6 (finite-dimensional cohomology).

**Checks.**

- The double point `Z = Spec K[ε]/(ε²) ⊆ ℙ¹` has `( · Z) = χ(O_Z) = 2 = 2·( · Z_red)`. A formula ignoring multiplicities gives `1`.
- For `Z = L ∪ P ⊆ ℙ²`, a line and a point off it, and `r = 1`, `(O(1) · Z) = 1`. The zero-dimensional component does not count, though the total degree of `Z` is `2`.
- For a conic `Z = V(xy) ⊆ ℙ²`, `(O(1) · Z) = 2 = 1 + 1` over the two lines.

### 2.2 Comparison with Chow degrees

Let `X` be proper over `K` and `Z ⊆ X` closed of dimension `r`. Prove `(L_1 ⋯ L_r · Z) = deg(c_1(L_1) ∩ ⋯ ∩ c_1(L_r) ∩ [Z]_r)`, with `[Z]_r` the fundamental cycle and the degree of zero-cycles of SchemeAndStackFoundations §5.2 (stacks-chow Lemma 41.4, tag 0BFI, line 3995). The proof inducts on `r`. It reduces to `Z` integral by §2.1, then to `Z` projective by Chow's lemma (SchemeAndStackFoundations §4.12) and the projection formula on both sides. It writes `L_1` as a difference of effective Cartier divisors, and finishes with the Cartier restriction formula and SchemeAndStackFoundations §5.3's `c_1(O(D)) ∩ [Z] = [D]`. For `r ≤ 1` it is SchemeAndStackFoundations §3.3's degree.

This identifies the numbers of ArakelovGeometryAndAbelianHeightsPartII §0.3 and of SchemeAndStackFoundations §5.10 with numerical intersections.

*Needs:* §2.1; CyclotomicClassGroupsAndStickelberger §4.3; SchemeAndStackFoundations §§3.3, 4.12, 5.1–5.3; StableReduction Layer 2.

**Checks.**

- On `ℙ²`, `(O(1)²) = 1 = deg(h² ∩ [ℙ²])`.
- On `ℙ¹ × ℙ¹`, `(O(1,0) · O(0,1)) = 1` and `(O(1,0)²) = 0`, matching `χ(O(n_1, n_2)) = (n_1 + 1)(n_2 + 1)` on the numerical side.
- On a smooth projective surface, Riemann–Roch (SchemeAndStackFoundations §5.10) shows that the coefficient of `n_1n_2` in `χ(O(n_1D_1 + n_2D_2))` is the Chow intersection `D_1·D_2`.

### 2.3 Real coefficients

For a proper `K`-scheme `X` of dimension `≤ r`, extend `(L_1, …, L_r) ↦ (L_1 ⋯ L_r)_X` to a symmetric `ℝ`-multilinear form on `Pic(X) ⊗ ℝ`, using additivity (CyclotomicClassGroupsAndStickelberger §4.3). Extend pullback along a morphism `p` linearly.

- The form is well defined on classes, symmetric and multilinear, and agrees with the integral numbers on `Pic(X)`.
- *Projection formula.* For `p : Y → X` a morphism of proper `K`-schemes with `Y` integral of dimension `r`, `(p^*ω_1 ⋯ p^*ω_r)_Y = deg(Y → p(Y))·(ω_1 ⋯ ω_r · p(Y))` for real classes `ω_i`, and `0` if `dim p(Y) < r`.
- *Field extension.* Base change along `K'/K` preserves the form.

A real class `ω = Σ a_i L_i` with all `a_i > 0` and all `L_i` nef is *nef*. If moreover `(ω^d) > 0` it is a *real polarization*.

*Needs:* CyclotomicClassGroupsAndStickelberger §4.3; Tau Ceti `TauCeti.AlgebraicGeometry.LineBundleClass`.

**Checks.**

- On `ℙ¹ × ℙ¹`, `ω = √2·O(1,0) + O(0,1)` has `(ω²) = 2√2`.
- Scaling: `((tω)^r) = t^r (ω^r)` for real `t`. At `t = −1` and `r = 1`, `(−O(1))_{ℙ¹} = −1`, so negative coefficients leave the nef cone.
- On `ℙ¹ × ℙ¹`, `ω = O(1,0) + O(0,1)` is a real polarization with `(ω²) = 2`, though neither summand is big.

### 2.4 Reduction to an integral variety over an algebraically closed field

Let `V` be an integral projective `K`-scheme of dimension `r`. Let `ν : Ṽ → V` be its normalization and `K' = H⁰(Ṽ, O_Ṽ)`. Let `Ω` be an algebraic closure of `K'` and `W = (Ṽ ×_{K'} Ω)_red`. Prove the following.

- (a) `K'` is a finite field extension of `K`, algebraically closed in `K(Ṽ)`. Hence `Ṽ` is geometrically irreducible over `K'` (stacks-varieties Lemma 8.6, tag 054Q, line 691), and `W` is an integral projective variety over `Ω` with `[Ṽ_Ω] = m[W]` for an integer `m ≥ 1`.
- (b) There is a positive integer `c_V = [K' : K]·m` such that `(L_1 ⋯ L_r)_{V/K} = c_V·(L_1|_W ⋯ L_r|_W)_{W/Ω}` for all line bundles `L_1, …, L_r` on `V`. Here `L|_W` is the pullback along `W → Ṽ_Ω → Ṽ → V`, and the equality extends to real classes.
- (c) The pullback to `W` of an ample line bundle on `V` is ample. The morphism `W → V` is affine, being the composite of a closed immersion, the base change of `Spec Ω → Spec K'` and the finite `ν`; it is not finite when `Ω/K'` is infinite. Being affine it is quasi-affine, and stacks-morphisms Lemma 38.7 (2), line 3862, applied once to it, gives the claim.

For (b): the projection formula along `ν`, of degree one, gives the numbers on `Ṽ`. An Euler characteristic over `K` is `[K' : K]` times the one over `K'`. Extending the field to `Ω` changes nothing, and §2.1 gives `m`. Every inequality between products of two intersection numbers, homogeneous of degree one in each factor, therefore holds on `V` once it holds on `W`. The behaviour of nef line bundles under this reduction is §3.1.

*Needs:* §§2.1, 2.3; CyclotomicClassGroupsAndStickelberger §4.3 (projection formula, field extension); SchemeAndStackFoundations §§0.20, 0.30; StableReduction Layer 2.

**Checks.**

- `V = ℙ¹_ℂ` as an `ℝ`-scheme: `K' = ℂ`, `W = ℙ¹_ℂ`, `m = 1`, `c_V = 2`, and `(O(1))_{V/ℝ} = 2 = 2·1`.
- `V = Proj ℝ[x, y, z]/(x² + y² + z²)`, the conic without real points: `K' = ℝ` and `W` is a smooth conic over `ℂ`. Then `c_V = 1` and `(O(1))_{V} = 2 = (O(1))_{W}`.
- Over `K = 𝔽_2(t)`, `V = Proj K[x, y, z]/(x² + t y²)` is integral but not normal: at the `K`-point `[0 : 0 : 1]` the cotangent space has dimension `2`, because `x² + t y²` lies in the square of the maximal ideal, so the one-dimensional local ring there is not regular. Its normalization is `ℙ¹_{K'}` with `K' = K(√t)`: the chart `y ≠ 0` is `Spec K[x, z]/(x² + t) = 𝔸¹_{K'}`, and the `K'`-point at infinity is pinched to `[0 : 0 : 1]`. So `H⁰(V, O_V) = K` (a plane conic) while `K' = H⁰(Ṽ, O_Ṽ) = K(√t)`; `Ṽ` is geometrically integral over `K'`, `m = 1` and `c_V = 2`. Since `χ_K(O_V(n)) = 2n + 1` and `ν^*O(1) = O_{ℙ¹_{K'}}(1)`, `(O(1))_{V/K} = 2 = 2·(O(1)|_Ṽ)_{Ṽ/K'}`: the value passes through the normalization, as (a) requires. Base change to `K'` instead gives the double line `(x + √t·y)²` with fundamental cycle `2·[line]` and the same value `2·1`.
- Non-example: let `V` be `ℙ¹_ℂ` over `ℝ` with the conjugate points `i, −i` pinched to one real point. Then `V` is integral with `H⁰(V, O_V) = ℝ`, but `ℂ ⊆ K(V) = ℂ(t)`. So `V` is not geometrically irreducible over `H⁰(V, O_V)` (stacks-varieties Lemma 8.6), and the normalization (`ℙ¹_ℂ`, with `K' = ℂ`) is needed in (a).

### Examples

`ℙ¹ × ℙ¹` with `(O(a,b)·O(c,d)) = ad + bc`; double points and conics for the component formula; `ℙ¹_ℂ` over `ℝ` and the real pointless conic for the reduction lemma.

### Dependencies

CyclotomicClassGroupsAndStickelberger §4.3; SchemeAndStackFoundations §§0.20, 0.30, 2.6, 3.3, 4.12, 5.1–5.3; StableReduction Layer 2; Tau Ceti `TauCeti.AlgebraicGeometry.LineBundleClass`. Layer 2 does not use Layer 1.

## Layer 3: Positivity over an arbitrary field

### 3.1 Nef line bundles

On a projective `K`-scheme `X`, call a line bundle `L` *nef* if `(L · C) ≥ 0` for every integral closed curve `C ⊆ X`. On a projective variety this is the nefness of ArakelovGeometryAndAbelianHeightsPartII §0.1, since `(L · C)` is the degree of `L|_C` by SchemeAndStackFoundations §3.3 and §2.2. A real class is nef if it is a positive combination of nef line bundles (§2.3). Prove the following.

- Ample line bundles are nef, by positivity for ample line bundles (CyclotomicClassGroupsAndStickelberger §4.3). The trivial bundle is nef. Sums and positive multiples of nef line bundles are nef.
- *Restriction and pullback.* If `L` is nef on `X`, then `L|_Z` is nef on every closed subscheme `Z`. For every morphism `p : Y → X` of projective `K`-schemes, `p^*L` is nef: by the projection formula, `(p^*L · C) = deg(C → p(C))·(L · p(C))` when `p(C)` is a curve, and `0` when it is a point.
- *Big and nef pullback.* If `p : Y → X` is a generically finite surjective morphism of projective varieties of the same dimension `d` and `L` is big and nef, then `p^*L` is big and nef, with `((p^*L)^d) = deg(p)·(L^d)`.
- *Field extension.* Let `K'/K` be a field extension. For `X` integral and `L` nef, `L_{K'}` is nef on `X_{K'}` (gap:numerical-nef-big-transfer). Prove from this that for every projective `K`-scheme `X`, `L` is nef on `X` if and only if `L_{K'}` is nef on `X_{K'}`. Forward direction: an integral curve `C' ⊆ X_{K'}` is reduced, so it lies in `(X_i)_{K'}` for an irreducible component `X_i` of `X` with its reduced structure; `L|_{X_i}` is nef on the integral `X_i`, and the supplied statement for `X_i` gives `(L_{K'} · C') ≥ 0`. Converse: for an integral curve `C ⊆ X`, `(L · C) = (L_{K'} · C_{K'})` by field-extension compatibility (CyclotomicClassGroupsAndStickelberger §4.3), `C_{K'}` has pure dimension one, and §2.1 writes `(L_{K'} · C_{K'})` as `Σ m_i (L_{K'} · C_i)` over its components, each term nonnegative.
- *Reduction.* For `V`, `Ṽ` and `W` as in §2.4, the pullback to `W` of a nef line bundle on `V` is nef. It is nef on `Ṽ` by pullback, on `Ṽ_Ω` by the field-extension item, and on `W` by restriction.

*Needs:* ArakelovGeometryAndAbelianHeightsPartII §0.1; CyclotomicClassGroupsAndStickelberger §4.3; §§2.1–2.4; SchemeAndStackFoundations §3.3; gap:numerical-nef-big-transfer.

**Checks.**

- `X = ℙ¹_ℂ` as an `ℝ`-scheme with `L = O(1)`: `X_ℂ = ℙ¹_ℂ ⊔ ℙ¹_ℂ` and `L_ℂ` has degree `1` on each component, so it is nef; the converse computes `(L · X) = 2 = 1 + 1` over the two components. In `𝔸²_{K(t)}` the line `y = tx` is an integral curve whose image in `𝔸²_K` is dense, so an integral curve of `X_{K'}` need not lie over a curve of `X`: the supplied statement is used on integral `X` of every dimension, not only on curves.
- On `ℙ¹`, `O(a)` is nef if and only if `a ≥ 0`. On `ℙ¹ × ℙ¹`, `O(a,b)` is nef if and only if `a, b ≥ 0`, since `O(a,b)` has degree `b` on `{p} × ℙ¹` and `a` on `ℙ¹ × {q}`.
- `O(1,0)` on `ℙ¹ × ℙ¹` is nef and not ample: its degree on `{p} × ℙ¹` is `0`. It is the pullback of `O(1)` along the first projection.
- On the blow-up `π : X → ℙ²` of a point, `π^*O(1)` is big and nef with `((π^*O(1))²) = 1 · 1 = 1`. It has degree `0` on the exceptional curve, so it is not ample.
- Non-example: `O(1,−1)` on `ℙ¹ × ℙ¹` has degree `−1` on `{p} × ℙ¹` and is not nef.

### 3.2 Kleiman's theorem

Let `X` be projective over `K`, `Z ⊆ X` a closed subscheme of dimension `r`, and `D_1, …, D_r` nef line bundles on `X`, or nef real classes. Prove `(D_1 ⋯ D_r · Z) ≥ 0`. Over an algebraically closed field prove also: if `D` is nef and `H` ample on `X`, then `D + H` is ample (lazarsfeld2004 Theorem 1.4.9 and Corollary 1.4.10; cutkosky2015 §2.2, lines 274–287, for the extension of the nef and ample cones to an arbitrary field).

*Route.* By §2.1 reduce to `Z` integral and replace `X` by `Z`. By §2.4 and §3.1 reduce to an integral projective variety `W` over an algebraically closed field `Ω`, the nef bundles staying nef. Over `Ω` argue by induction on `r`. Fix a very ample `H`, put `P(t) = ((D + tH)^r)`, and use that `(D^{r−j} H^j · W) ≥ 0` for `j ≥ 1` by induction, applied to effective cycles representing `H^j ∩ [W]`. If `P(0) < 0`, let `t_0 > 0` be the largest real root of `P`. For rational `t > t_0`, Nakai–Moishezon (SchemeAndStackFoundations §4.15), with the induction hypothesis on proper closed subvarieties, makes `D + tH` ample. Then `P(t) = ((D + tH)^{r−1} · D) + t((D + tH)^{r−1} · H) ≥ t^r (H^r) > 0`, because the first term is the degree of the nef `D` on an effective curve. Letting `t → t_0` contradicts `P(t_0) = 0`. The mixed inequality follows by perturbing each `D_i` to `D_i + εH`, which is ample. Products of ample bundles are positive, and the numbers are continuous in `ε`. Nef-plus-ample: `((D + H)^s · Z')` is a sum of nonnegative terms and `(H^s · Z') > 0` for every integral `Z'` of dimension `s ≥ 1`, and Nakai–Moishezon applies. Real classes follow by multilinear expansion.

*Needs:* §§2.1, 2.3, 2.4, 3.1; SchemeAndStackFoundations §4.15; CyclotomicClassGroupsAndStickelberger §4.3 (positivity, Cartier restriction); StableReduction Layer 2 (very ample powers and their sections).

**Checks.**

- On `ℙ¹ × ℙ¹`: `(O(1,0)²) = 0 ≥ 0` and `(O(1,0) · O(0,1)) = 1`.
- Non-example: `(O(1,−1)²) = 2·1·(−1) = −2 < 0`, and `O(1,−1)` is not nef (§3.1).
- `O(1,0) + O(1,1) = O(2,1)` is ample on `ℙ¹ × ℙ¹`: `(O(2,1)²) = 4` and its degrees on the rulings are `1` and `2`. Without the ample summand, `O(1,0)` is nef and not ample.
- On the blow-up of `ℙ²` at a point with exceptional curve `E`, `π^*O(1)` is nef and `(π^*O(1) · E) = 0 ≥ 0`. Adding the ample `π^*O(2) − E` gives the ample `π^*O(3) − E`.

### 3.3 Siu's inequality in intersection form

Let `V` be an integral projective variety of dimension `r ≥ 1`, `A` and `B` nef line bundles with `(A^r) > 0`, and `C_1, …, C_{r−1}` nef line bundles. Prove

```text
(A^r)·(B · C_1 ⋯ C_{r−1}) ≤ r·(A^{r−1} · B)·(A · C_1 ⋯ C_{r−1}).
```

Prove also that a nef line bundle `A` with `(A^r) > 0` is big. The inequality extends to nef real classes by rational approximation of the coefficients (dang2020 Proposition 3.4.1 and Remark 3.4.3, lines 840–869; lazarsfeld2004 Theorem 2.2.15; dangfavre2021 Theorem 1.2, line 434, for `k = 1` with constant `d`).

*Route.* Bigness is ArakelovGeometryAndAbelianHeightsPartII §0.3 (1′), read through §2.2. For integers `p, q > 0` with `p(A^r) > r q (A^{r−1}·B)`, §0.3 (2′) gives `vol(pA − qB) ≥ p^{r−1}(p(A^r) − rq(A^{r−1}·B)) > 0`. So some `m(pA − qB)` has a nonzero section. On the integral `V` it is a regular section, and its zero scheme is an effective Cartier divisor `D` (Tau Ceti's `AlgebraicGeometry.Scheme.IdealSheafData.IsEffectiveCartier`) with `O(D) ≅ m(pA − qB)`. The Cartier restriction formula and §3.2 on `D` give `m(p(A · C) − q(B · C)) = (C_1 ⋯ C_{r−1} · D) ≥ 0`. Let `p/q` decrease to `r(A^{r−1}·B)/(A^r)`.

*Needs:* §§2.2, 2.3, 3.2; ArakelovGeometryAndAbelianHeightsPartII §0.3; CyclotomicClassGroupsAndStickelberger §4.3 (Cartier restriction); Tau Ceti `AlgebraicGeometry.Scheme.IdealSheafData.IsEffectiveCartier`.

**Checks.**

- On `ℙ¹ × ℙ¹`, write `(a,b)·(c,d) = ad + bc`. With `A = O(1,1)`, `B = O(1,0)` and `C = O(0,1)`: `(A²)(B·C) = 2·1 = 2` and `2(A·B)(A·C) = 2·1·1 = 2`, so equality holds. With `C = O(1,0)` instead: `0 ≤ 2`.
- `r = 1`: both sides are `(A)·(B)`.
- Non-example: `B = O(1,−1)` is not nef. With `A = O(1,1)` and `C = O(0,1)`, the left side is `2·1 = 2` but the right side is `2·0·1 = 0`. Nefness of `B` is needed.

### 3.4 The Hodge inequality on surfaces

Let `S` be an integral projective surface over `K`, `H` a line bundle with `(H²) > 0`, and `D` any line bundle. Prove `(D · H)² ≥ (D²)·(H²)`. No positivity of `H` is assumed (kleiman2005 Theorem B.27, line 3803, the Hodge index theorem on a geometrically irreducible complete surface over a field for every `H` with `(H²) > 0`, proved there by another route; cutkosky2015 lines 994–1003).

*Route.* By §2.4 reduce to `S` integral over an algebraically closed `Ω`: both sides scale by `c_S²`, and `((H|_W)²) = (H²)/c_S > 0`. de Jong's theorem (SchemeAndStackFoundations §4.19) gives an alteration `φ : S' → S` from a regular projective surface. Since `φ` is proper, `S'` is the component of the regular compactification containing it. `S'` is smooth over `Ω` (SchemeAndStackFoundations §4.13, `Ω` perfect). Let `δ` be the generic degree and `H' = φ^*H`, so `(H'²) = δ(H²) > 0` by the projection formula (§2.3). First prove the index theorem for `H'` on `S'`: if `(D' · H') = 0` and `(D'²) > 0` for a line bundle `D'`, fix an ample `A'` (StableReduction Layer 2) and put `x = (D' · A')`, `y = −(H' · A')`. Here `y ≠ 0`, since `(H' · A') = 0` with `(H'²) > 0` contradicts the Hodge index theorem for the ample `A'` (SchemeAndStackFoundations §5.10, read through §2.2). Then `E = xH' + yD'` has `(E · A') = 0` and `(E²) = x²(H'²) + y²(D'²) > 0`, contradicting the same theorem. Next apply the index theorem for `H'` to `D'' = (H'²)·φ^*D − (φ^*D · H')·H'`, which has `(D'' · H') = 0`: `(D''²) = (H'²)·((H'²)·((φ^*D)²) − (φ^*D · H')²) ≤ 0`, so `(φ^*D · H')² ≥ ((φ^*D)²)·(H'²)`. Divide by `δ²`, using the projection formula (§2.3).

*Needs:* §§2.2, 2.3, 2.4; SchemeAndStackFoundations §§4.13, 4.19, 5.10; StableReduction Layer 2.

**Checks.**

- On `ℙ¹ × ℙ¹` with `H = O(1,1)`: `D = O(1,−1)` gives `0 ≥ (−2)·2 = −4`; `D = H` gives equality `4 = 4`.
- On the quadric cone `Q ⊆ ℙ³`, a singular normal surface, `H = D = O(1)` gives `(D·H)² = 4 = 2·2`.
- On the blow-up of `ℙ²` at a point with `L = π^*O(1)` and exceptional curve `E`, `H = 2L + E` has `(H²) = 4 − 1 = 3 > 0` and `(H · E) = −1`, so `H` is not nef. `D = E` gives `(D·H)² = 1 ≥ (−1)·3 = −3`, and `D = L` gives `4 ≥ 1·3`. A statement restricted to nef `H` would not cover this instance, and the perturbation of `H` to an ample class, which needs `H` nef, is not a route to it.
- Non-example: on the blow-up of `ℙ²` at two points with exceptional curves `E_1`, `E_2`, take `H = E_1` with `(H²) = −1` and `D = E_2`. Then `(D·H)² = 0 < 1 = (D²)(H²)`. The hypothesis `(H²) > 0` is needed.

### 3.5 The Khovanskii–Teissier inequalities

Let `V` be an integral projective variety of dimension `d ≥ 2` and `A, B, C_1, …, C_{d−2}` nef line bundles or nef real classes. Prove the inequality of Hodge type

```text
(A · B · C_1 ⋯ C_{d−2})² ≥ (A² · C_1 ⋯ C_{d−2})·(B² · C_1 ⋯ C_{d−2}).
```

As a consequence, for nef `A, B` and `s_k = (A^k · B^{d−k})`, prove `s_k² ≥ s_{k−1}·s_{k+1}` for `1 ≤ k ≤ d − 1` (lazarsfeld2004 Theorem 1.6.1 and Corollary 1.6.3; cutkosky2015 Theorem 6.1 and Corollary 6.3, lines 983–1033, over an arbitrary field; guedj2010 Théorème 2.4 (a), line 1180, and dangfavre2021 lines 464–467 for the use on dynamical degrees). The consequence is the main inequality with `C_1 ⋯ C_{d−2} = A^{k−1}B^{d−k−1}`.

*Route.* By §2.4 and §3.1 reduce to an integral `V` over an algebraically closed `Ω`; both sides scale by `c_V²`. Perturb every class by `tH` with `H` ample, making all of them ample (§3.2), and pass to very ample multiples (StableReduction Layer 2). Over the purely transcendental extension `Ω(u)`, `V_{Ω(u)}` is integral and geometrically irreducible. Cut it successively by the generic members of the linear systems of the multiples of `C_1, …, C_{d−2}`. By Bertini irreducibility (LefschetzPencilsAndVanishingCycles §5.1, with `s = 1`, applied while the dimension is at least `3`) each cut has geometrically irreducible support. The last one is a surface `S` with `[cut] = μ[S_red]`. The Cartier restriction formula and field-extension compatibility (CyclotomicClassGroupsAndStickelberger §4.3), with §2.1, turn the three numbers into `μ` times numbers on `S_red`. Apply §3.4 on `S_red` with `H = A|_S`, which is ample with `(A² · S_red) > 0`. Let `t → 0`. For `d = 2` the statement is §3.4 with `H = A` or `H = B`, whichever has positive square; if both squares vanish the right side is `0`.

*Needs:* §§2.1, 2.3, 2.4, 3.1, 3.2, 3.4; LefschetzPencilsAndVanishingCycles §5.1; CyclotomicClassGroupsAndStickelberger §4.3; StableReduction Layer 2; Tau Ceti `AlgebraicGeometry.Scheme.IdealSheafData.IsEffectiveCartier`.

**Checks.**

- On `ℙ¹ × ℙ¹`: `A = O(1,0)`, `B = O(0,1)` gives `1 ≥ 0·0`; `A = O(2,1)`, `B = O(1,1)` gives `9 ≥ 4·2 = 8`.
- On `ℙ^d` with `A = aH` and `B = bH`, `s_k = a^k b^{d−k}` and log-concavity is an equality.
- Non-example (cutkosky2015 Remark 6.2, lines 1014–1020): on `ℙ² ⊔ ℙ²`, `α_1 = (O(2), O(1))` and `α_2 = (O(1), O(2))` are ample. They have `(α_1 · α_2)² = 16 < 25 = (α_1²)(α_2²)`, so integrality of `V` is needed.

### 3.6 Siu's inequality for products

Let `V` be an integral projective variety of dimension `r ≥ 1` and `1 ≤ i ≤ r`. Let `A_1, …, A_i`, `B`, `C_1, …, C_{r−i}` be nef line bundles or nef real classes with `(B^r) > 0`. Prove

```text
(B^r)·(A_1 ⋯ A_i · C_1 ⋯ C_{r−i}) ≤ (r − i + 1)^i·(A_1 ⋯ A_i · B^{r−i})·(B^i · C_1 ⋯ C_{r−i}).
```

As a consequence, if `A` and `B` are nef with `(A^r) > 0` and `(B^r) > 0`, then `(A^k · B^{r−k}) > 0` for every `0 ≤ k ≤ r`. To see this, take `A_j = A` and `C_j = A`: the left side is `(B^r)(A^r) > 0` (dang2020 Theorem 3, line 141, and Theorem 3.4.4 with its proof, lines 871–883; dangfavre2021 Theorem 1.2, lines 427–433).

*Route.* By §2.4 and §3.1 reduce to `V` integral over an algebraically closed `Ω`; both sides scale by `c_V²`. Perturb `A_j` and `B` by `tH` with `H` ample, so that they become ample (§3.2). Keep the `C_j` nef. For `j = 1, …, i`, let `Z_j` be the reduced support of the generic complete intersection representing `B^{j−1} · A_{j+1} ⋯ A_i ∩ [V]`, over a purely transcendental extension of `Ω`. It has dimension `r − i + 1`, irreducible support by LefschetzPencilsAndVanishingCycles §5.1, and some multiplicity. Apply §3.3 on `Z_j` with `A := B`, `B := A_j` and the `C`'s:

```text
x_j ≤ (r − i + 1)·(y_j / y_{j+1})·x_{j+1},
```

where `x_j = (B^{j−1} A_j ⋯ A_i · C)`, `y_j = (B^{r−i+j−1} A_j ⋯ A_i)` and `y_{i+1} = (B^r)`. The denominators are positive by positivity for ample line bundles. The ratios telescope to `y_1/(B^r)`. Let `t → 0`. Reducible supports are excluded because the inequality fails on them (Checks).

*Needs:* §§2.1, 2.3, 2.4, 3.1, 3.2, 3.3; LefschetzPencilsAndVanishingCycles §5.1; CyclotomicClassGroupsAndStickelberger §4.3; StableReduction Layer 2.

**Checks.**

- On `(ℙ¹)³` with fibre classes `h_1, h_2, h_3` and `B = h_1 + h_2 + h_3`, so `(B³) = 6`, take `A_1 = h_1`, `A_2 = h_2`, `C = h_3`. The left side is `6·1 = 6` and the right side is `(3 − 2 + 1)²·(h_1 h_2 B)·(B² h_3) = 4·1·2 = 8`. With the constant `binom(3,2) = 3` the two sides are equal. A constant `1` would give `2 < 6`.
- `i = r`: both sides equal `(B^r)(A_1 ⋯ A_r)`. `i = 1` is §3.3.
- Non-example: on `V = ℙ² ⊔ ℙ²`, take `B = (O(1), O(2))` with `(B²) = 5`, and `A_1 = C = (O(1), O)`. The left side is `5·1 = 5` and the right side `2·1·1 = 2`. The inequality fails on reducible schemes, so the slices `Z_j` must be irreducible.

### Examples

`ℙ¹ × ℙ¹` with `(a,b)·(c,d) = ad + bc`: nefness, Kleiman, the Siu equality case, the Hodge inequality and Khovanskii–Teissier. `(ℙ¹)³` for Siu with products. The blow-ups of `ℙ²` at one and two points for big-and-nef-not-ample classes and for the Hodge hypothesis. Disjoint unions of planes for the integrality hypotheses.

### Dependencies

Layer 2; ArakelovGeometryAndAbelianHeightsPartII §§0.1, 0.3; CyclotomicClassGroupsAndStickelberger §4.3; LefschetzPencilsAndVanishingCycles §5.1; SchemeAndStackFoundations §§3.3, 4.13, 4.15, 4.19, 5.10; StableReduction Layer 2; Tau Ceti `AlgebraicGeometry.Scheme.IdealSheafData.IsEffectiveCartier`; gap:numerical-nef-big-transfer. Layer 3 does not use Layer 1.

## Layer 4: Degrees of dominant rational maps

Throughout, `X`, `Y` (and `X_1, X_2, X_3`) are projective varieties of the same dimension `d ≥ 1` and the rational maps are dominant.

### 4.1 Mixed degrees and their models

For `f : X ⤏ Y`, line bundles or real classes `L_1, …, L_{d−k}` on `X` and `M_1, …, M_k` on `Y`, define the *mixed degree*

```text
deg(f; L_1, …, L_{d−k} | M_1, …, M_k) = (π_1^*L_1 ⋯ π_1^*L_{d−k} · π_2^*M_1 ⋯ π_2^*M_k)_{Γ_f},
```

and `deg_k(f; L, M)` with all `L_i = L` and all `M_j = M`. For a self-map put `deg_{k,ω}(f) = deg_k(f; ω, ω)` (dang2020 lines 21–25; dangfavre2021 §1.3, lines 436–443; dinhsibony2005 lines 61–63; russakovskiishiffman1997 lines 499–505). Prove:

- *Model independence.* Let `Γ'` be an integral projective `K`-scheme of dimension `d` with morphisms `q_1 : Γ' → X` and `q_2 : Γ' → Y`. Suppose `q_1` is generically finite and surjective of generic degree `e`, and the rational map of `q_2` is `f ∘ q_1`. Then `(q_1^*L_1 ⋯ q_2^*M_k)_{Γ'} = e·deg(f; L | M)`. The proof factors `(q_1, q_2)` through `Γ_f` and applies the projection formula. In particular, the normalization of `Γ_f` and every proper birational model of `Γ_f` compute the same numbers (dangfavre2021 lines 442–443).
- *Product formula.* `deg(f; L | M) = (pr_1^*L_1 ⋯ pr_2^*M_k · Γ_f)` on `X ×_K Y`.
- *Pullback of cycles.* Put `f^*(M_1 ⋯ M_k) = π_{1*}(c_1(π_2^*M_1) ∩ ⋯ ∩ c_1(π_2^*M_k) ∩ [Γ_f]) ∈ CH_{d−k}(X)`. Then `deg(f; L | M) = deg(c_1(L_1) ∩ ⋯ ∩ c_1(L_{d−k}) ∩ f^*(M_1 ⋯ M_k))`, by the projection formula of SchemeAndStackFoundations §5.3 and §2.2 (dangfavre2021 footnote 4, lines 452–453; fulton1998 Theorem 1.4 and Proposition 2.5 for proper pushforward of cycles and the first Chern class operation with its projection formula, cited by locator).
- The mixed degree is multilinear in the `L_i` and the `M_j`, and symmetric within each group.

*Needs:* §§1.2, 2.2, 2.3; CyclotomicClassGroupsAndStickelberger §4.3; SchemeAndStackFoundations §§5.2–5.3.

**Checks.**

- `deg_k(id_X; L, M) = (L^{d−k} · M^k)_X`, since `Γ_{id}` is the diagonal.
- For `f(z) = z²` on `ℙ¹` and `H = O(1)`: `deg_{0,H} = 1` and `deg_{1,H} = 2`. The model `Γ' = ℙ¹` with `q_1 = id` and `q_2 = f` gives the same values with `e = 1`. The model `q_1 = f`, `q_2 = f ∘ f` gives `(f^*H) = 2 = 2·1` for `k = 0`, so `e = 2` multiplies.
- For the Cremona involution of `ℙ²`, the product formula computes `deg_{1,H}(σ)` as `(pr_1^*H · pr_2^*H · Γ_σ) = 2`, where `Γ_σ` is the blow-up at three points.

### 4.2 Values, integrality and positivity

Let `f : X ⤏ Y` and `L`, `M` be line bundles or real classes. Prove:

- `deg_0(f; L, M) = (L^d)_X` and `deg_d(f; L, M) = e(f)·(M^d)_Y`.
- If `f` is a morphism, `deg_k(f; L, M) = (L^{d−k} · (f^*M)^k)_X`. If `X = Y`, `ω` is a line bundle with `(ω^d) ≠ 0`, and `f^*ω ≅ qω` for an integer `q ≥ 1`, then `deg_{k,ω}(f) = q^k(ω^d)` and `e(f) = q^d`.
- `deg_k(f; L, M)` is an integer when `L` and `M` are line bundles.
- If `L` and `M` are nef, then `deg_k(f; L, M) ≥ 0`. It is monotone: if `L' − L` and `M' − M` are nonnegative combinations of nef line bundles, then `deg_k(f; L, M) ≤ deg_k(f; L', M')`.
- *Positivity.* If `L` and `M` are big and nef, or real polarizations, then `deg_k(f; L, M) > 0` for every `0 ≤ k ≤ d`.

`deg_0` uses that `π_1` is birational; `deg_d` that `π_2` is an alteration of generic degree `e(f)`; the polarized case compares `deg_d` with `e(f)(ω^d)`. Positivity applies §3.6 on `Γ_f` to the nef classes `π_1^*L` and `π_2^*M`, whose top powers are `(L^d) > 0` and `e(f)(M^d) > 0` (§3.1). Nonnegativity and monotonicity are §3.2 (dangfavre2021 footnote 5, line 454, for integrality; russakovskiishiffman1997 lines 506–511 for `δ_n` as the topological degree and `δ_ℓ = (deg P)^ℓ` for morphisms).

*Needs:* §§1.1, 1.2, 2.3, 3.1, 3.2, 3.6, 4.1.

**Checks.**

- The Cremona involution of `ℙ²` has `(deg_{0,H}, deg_{1,H}, deg_{2,H}) = (1, 2, 1)`.
- The Frobenius `F` of `ℙ^d` in characteristic `p` has `F^*H ≅ pH`, so `deg_{k,H}(F) = p^k` and `e(F) = p^d`.
- Non-example: on `ℙ¹ × ℙ¹` with `f = id` and the nef, not big `ω = O(1,0)`, `deg_{1,ω}(id) = (ω²) = 0`. Bigness is needed for positivity.
- The real polarization `ω = O(1,0) + O(0,1)` on `ℙ¹ × ℙ¹`, neither summand big, has `deg_{1,ω}(id) = (ω²) = 2 > 0`.

### 4.3 Invariance under normalization and extension of the field

- *Normalization.* For `ν : X̃ → X` the normalization and `f̃ = ν^{−1} ∘ f ∘ ν` (§1.4), `deg_k(f̃; ν^*L, ν^*M) = deg_k(f; L, M)`. This is model independence through the birational `Γ_{f̃} → Γ_f`. If `L` is ample, big and nef, or a real polarization, so is `ν^*L`.
- *Extension of the field.* For every field extension `K'/K`, `deg_k(f; L, M)` equals `(pr_1^*L_{K'}^{d−k} · pr_2^*M_{K'}^k · (Γ_f)_{K'})` computed over `K'` on the base-changed graph with its fundamental cycle. If `X` and `Y` are geometrically integral, it equals `deg_k(f_{K'}; L_{K'}, M_{K'})` (dang2020 lines 18–20; truong2020 §6.3, lines 1529–1533).

*Needs:* §§1.4, 2.1, 2.3, 3.1, 4.1; CyclotomicClassGroupsAndStickelberger §4.3 (field extension).

**Checks.**

- `X = ℙ¹_ℂ` over `ℝ`, `f = id`, `ω = O(1)`: `deg_{1,ω} = 2` over `ℝ`. The base change of `Γ_{id}` is two diagonals over `ℂ`, each contributing `1`.
- The cuspidal cubic `X = V(y²z − x³)` with `ω = O(1)|_X` has `ν^*ω = O(3)` on `ℙ¹`. For `f = id`, `deg_0 = 3` on both sides.
- The Cremona involution over `ℚ` and over `ℂ` both have degrees `(1, 2, 1)`.

### 4.4 Sub-multiplicativity

Let `f_1 : X_1 ⤏ X_2` and `f_2 : X_2 ⤏ X_3` be dominant, `0 ≤ k ≤ d`, and `L_j` nef line bundles or nef real classes on `X_j`, with `L_2` big and nef or a real polarization. Prove

```text
deg_k(f_2 ∘ f_1; L_1, L_3) ≤ ((d − k + 1)^k / (L_2^d))·deg_k(f_1; L_1, L_2)·deg_k(f_2; L_2, L_3).
```

For a self-map and a polarization `ω` this gives `deg_{k,ω}(g ∘ f) ≤ C_k(ω)·deg_{k,ω}(f)·deg_{k,ω}(g)` with `C_k(ω) = (d − k + 1)^k/(ω^d)`. No normality is assumed (dang2020 Theorem 1 (i), lines 27–30, and Theorem 5.2.1 with its proof, lines 1271–1358, for normal varieties over an algebraically closed field; dangfavre2021 Theorem 1.3, lines 448–451; truong2020 Theorem 1.1 (1), lines 143–158; dinhsibony2005 Proposition 6, lines 245–247, over `ℂ`; silverman2014 (3), line 387, for `k = 1` on `ℙ^N`).

*Route.* Let `W = W_{f_1,f_2}` (§1.3). Apply §3.6 on `W` with `i = k`, `B = q_2^*L_2`, `A_j = q_3^*L_3` and `C_j = q_1^*L_1`; here `(B^d) = e(f_1)(L_2^d) > 0`. By model independence:

- `(A^k C^{d−k}) = deg_k(f_2 ∘ f_1; L_1, L_3)`;
- `(A^k B^{d−k}) = e(f_1)·deg_k(f_2; L_2, L_3)`;
- `(B^k C^{d−k}) = deg_k(f_1; L_1, L_2)`.

Divide by `e(f_1)(L_2^d)`. For `k = 0` and `k = d` the inequality is an equality, by §4.2 and multiplicativity of `e`.

*Needs:* §§1.1, 1.3, 3.1, 3.6, 4.1, 4.2.

**Checks.**

- `f_1 = f_2 = (z ↦ z²)` on `ℙ¹`, `d = k = 1`: `4 ≤ (1/1)·2·2 = 4`, equality.
- Cremona on `ℙ²`, `k = 1`: `deg_{1,H}(σ ∘ σ) = 1 ≤ (2/1)·2·2 = 8`.
- Morphisms of degrees `a, b` on `ℙ^d`: `(ab)^k ≤ (d − k + 1)^k a^k b^k`.
- `k = d` with `f_1 = Frobenius` and `f_2 = (z ↦ z²)` on `ℙ¹` in characteristic `p`: `2p = (1/1)·p·2`, equality.

### 4.5 Comparison of polarizations and birational conjugacy

- *Comparison.* Let `ω, ω'` be real polarizations on `X` and `0 ≤ k ≤ d`. There is `C ≥ 1` with `C^{−1}·deg_{k,ω}(f) ≤ deg_{k,ω'}(f) ≤ C·deg_{k,ω}(f)` for every dominant `f : X ⤏ X`. For big and nef line bundles one may take `C = (d − k + 1)^{2k}·max(c(ω, ω'), c(ω', ω))` with `c(ω, ω') = (ω'^{d−k}ω^k)·(ω^{d−k}ω'^k)/(ω^d)²`. For `ω = Σ a_i L_i` put `H = Σ L_i`. Then `(H^d) > 0` and `a_min^d·deg_{k,H} ≤ deg_{k,ω} ≤ a_max^d·deg_{k,H}` by monotonicity.
- *Birational conjugacy.* Let `φ : X ⤏ Y` be birational and `ω_X`, `ω_Y` real polarizations. There is `C ≥ 1` with `C^{−1}·deg_{k,ω_X}(f) ≤ deg_{k,ω_Y}(φ ∘ f ∘ φ^{−1}) ≤ C·deg_{k,ω_X}(f)` for all dominant `f : X ⤏ X`. Moreover `(φ ∘ f ∘ φ^{−1})^n = φ ∘ f^n ∘ φ^{−1}`, using §1.1 to show `φ^{−1} ∘ φ = id`.

*Route.* §4.4 applied twice, once on each side, with the identity or `φ^{±1}` as the outer maps. The positive constants `deg_k(id; ω', ω) = (ω'^{d−k}ω^k)` are positive by §4.2 (dang2020 Theorem 1 (ii), lines 31–41; dangfavre2021 Theorem 1.3, second item, lines 457–460; dinhsibony2005 Corollaire 7, lines 256–263).

*Needs:* §§1.1, 2.3, 3.2, 4.2, 4.4; Mathlib `Scheme.PartialIso.symm`, `Scheme.RationalMap.comp_assoc`.

**Checks.**

- On `ℙ¹ × ℙ¹` with the swap `τ(x, y) = (y, x)`: `deg_{1,O(1,1)}(τ) = (O(1,1)·O(1,1)) = 2` and `deg_{1,O(2,1)}(τ) = (O(2,1)·O(1,2)) = 5`. With `ω = O(1,1)` and `ω' = O(2,1)`: `(ω·ω') = 3`, `(ω²) = 2`, `(ω'²) = 4`. So `c(ω, ω') = 9/4` and `c(ω', ω) = 9/16`, and `C = 2²·9/4 = 9`. The ratio `5/2` lies in `[1/9, 9]`.
- For `d = 1`, `deg_{1,ω}(f) = e(f)·(ω)` exactly, and conjugacy by an automorphism of `ℙ¹` preserves `e`.
- Conjugating the Cremona involution of `ℙ²` by a linear automorphism leaves `deg_{1,H} = 2`.

### Examples

`z ↦ z²` and Frobenius on `ℙ¹`; the Cremona involution of `ℙ²` with degrees `(1, 2, 1)`; the swap of `ℙ¹ × ℙ¹` for the comparison of polarizations; base change of `ℙ¹_ℂ` over `ℝ`; the cuspidal cubic for normalization.

### Dependencies

Layers 1–3; CyclotomicClassGroupsAndStickelberger §4.3; SchemeAndStackFoundations §§5.2–5.3; Mathlib `Scheme.PartialIso.symm`, `Scheme.RationalMap.comp_assoc`.

## Layer 5: Dynamical degrees and algebraic entropy

Throughout, `X` is a projective variety of dimension `d ≥ 1`, `f : X ⤏ X` is dominant, and `ω` is a real polarization.

### 5.1 Existence

For `0 ≤ k ≤ d`, prove that `deg_{k,ω}(f^n)^{1/n}` converges as `n → ∞`. Call the limit `λ_k(f)`. Prove that it equals `inf_{n ≥ 1} (C_k(ω)·deg_{k,ω}(f^n))^{1/n}` with `C_k(ω) = (d − k + 1)^k/(ω^d)` (dangfavre2021 lines 461–465; dang2020 lines 42–46; dinhsibony2005 Corollaire 7, lines 256–259; silverman2014 Proposition 7, lines 383–413).

*Route.* By §4.4, `u_n = log(C_k(ω)·deg_{k,ω}(f^n))` satisfies `u_{m+n} ≤ u_m + u_n`, using `f^{m+n} = f^m ∘ f^n` (Mathlib's `Scheme.RationalMap.comp_assoc`). The logarithm is defined by §4.2. With `H = Σ L_i` as in §4.5, `deg_{k,ω}(f^n) ≥ a_min^d·deg_{k,H}(f^n) ≥ a_min^d`, since the latter is a positive integer. So `u_n/n ≥ min(0, log(C_k(ω)·a_min^d))` is bounded below. Mathlib's `Subadditive.tendsto_lim` and `Subadditive.lim` (the infimum of `u_n/n` over `n ≥ 1`) give convergence to the infimum. Since `C_k(ω)^{1/n} → 1`, the limit is also `lim deg_{k,ω}(f^n)^{1/n}`.

*Needs:* §§4.2, 4.4, 4.5; Mathlib `Subadditive`, `Subadditive.tendsto_lim`, `Subadditive.lim`, `Subadditive.lim_le_div`, `Scheme.RationalMap.comp`, `Scheme.RationalMap.comp_assoc`.

**Checks.**

- A morphism `f` of `ℙ^d` of degree `a` has `deg_{k,H}(f^n) = a^{nk}`, so `λ_k = a^k`. For `1 ≤ k ≤ d − 1` the infimum `inf_n ((d − k + 1)^k a^{nk})^{1/n} = a^k` is approached as `n → ∞` and not attained at `n = 1`, where the value is `(d − k + 1)^k a^k > a^k`. For `k = 0` and `k = d` the constant `(d − k + 1)^k` is `1`, the sequence is constantly `1` or `a^d`, and the infimum is attained at `n = 1`.
- For the Cremona involution of `ℙ²`, `deg_{1,H}(σ^n)` is `2` for odd `n` and `1` for even `n`, so `λ_1(σ) = 1`.
- For the Fibonacci map of §6.3, `fib(n + 2)^{1/n} → Real.goldenRatio`.

### 5.2 Properties

Prove:

- `λ_k(f) ∈ [1, ∞)`.
- `λ_k(f)` does not depend on the real polarization `ω`, by §4.5.
- `λ_k(f^m) = λ_k(f)^m` for `m ≥ 1`, along the subsequence `n·m`.
- `λ_0(f) = 1` and `λ_d(f) = e(f)`, by §4.2 and multiplicativity of `e`: `deg_{d,ω}(f^n) = e(f)^n·(ω^d)`.
- *Log-concavity.* `λ_k(f)² ≥ λ_{k−1}(f)·λ_{k+1}(f)` for `1 ≤ k ≤ d − 1`. This is §3.5 on `Γ_{f^n}` with `A = π_2^*ω` and `B = π_1^*ω`, followed by `n`-th roots.
- As a consequence of log-concavity and `λ_0 = 1`, `λ_k(f) ≤ λ_1(f)^k`.

(dang2020 lines 42–46; dangfavre2021 lines 464–467; guedj2010 lines 1136–1140 and Théorème 2.4 (a), line 1180; dinhsibony2005 lines 69–70.)

*Needs:* §§1.1, 3.5, 4.2, 4.5, 5.1.

**Checks.**

- The Fibonacci map has `(λ_0, λ_1, λ_2) = (1, Real.goldenRatio, 1)` with `Real.goldenRatio² = Real.goldenRatio + 1 ≈ 2.618 ≥ 1`.
- The Frobenius of `ℙ^d` has `λ_k = p^k`, so log-concavity is an equality and `λ_d = p^d = e`. A separable-degree convention for `λ_d` would give `1`, contradicting `deg_{d,H}(F^n) = p^{nd}`.
- The Cremona involution has `λ_k = 1` for all `k`. The squaring map of `ℙ¹` has `(λ_0, λ_1) = (1, 2)`.

### 5.3 Invariance

Prove:

- *Birational conjugacy.* `λ_k(φ ∘ f ∘ φ^{−1}) = λ_k(f)` for every birational `φ : X ⤏ Y` to a projective variety `Y`, by §4.5.
- *Normalization.* `λ_k(f̃) = λ_k(f)` for the normalization lift `f̃` of §1.4.
- *Extension of the field.* If `X` is geometrically integral, `λ_k(f_{K'}) = λ_k(f)` for every field extension `K'/K`. In general `λ_k(f)` is computed by the numbers of §4.3 on the base-changed graphs `(Γ_{f^n})_{K'}`.

(dang2020 lines 35–46; truong2020 Theorem 1.1 (2), lines 159–164, and §6.3, line 1529; dinhsibony2005 Corollaire 7, lines 256–263; dangfavre2021 lines 464–465.)

*Needs:* §§1.4, 4.3, 4.5, 5.1.

**Checks.**

- Conjugating the Cremona involution by a linear automorphism of `ℙ²` gives `λ_1 = 1`.
- For the cuspidal cubic and `f = id`, `λ_k = 1` on `X` and on `ℙ¹`.
- For `ℙ¹_ℂ` over `ℝ` and the identity, `λ_1 = 1` over `ℝ` and over `ℂ`.

### 5.4 Algebraic entropy

Define `h_alg(f) = log max_{0 ≤ k ≤ d} λ_k(f)`. Prove:

- `h_alg(f) ≥ 0`.
- `h_alg` is invariant under birational conjugacy and normalization, and under extension of the field when `X` is geometrically integral.
- `h_alg(f^n) = n·h_alg(f)`.
- `log e(f) ≤ h_alg(f) ≤ d·log λ_1(f)`.
- By log-concavity, the indices `k` where the maximum is attained form an interval.

(dinhsibony2005 Théorème 1, lines 33–37, where `lov(f) = max log λ_l` bounds the topological entropy over `ℂ`; guedj2010 Théorème 2.4, lines 1178–1181.)

*Needs:* §§5.2, 5.3.

**Checks.**

- A morphism of `ℙ^d` of degree `a ≥ 1` has `h_alg = d·log a`, attained at `k = d`.
- The Cremona involution has `h_alg = 0`.
- The Fibonacci map has `h_alg = log Real.goldenRatio ≈ 0.4812`, attained at `k = 1` only.
- The Frobenius of `ℙ^d` has `h_alg = d·log p`.

### Examples

Morphisms of projective space, the Cremona involution, the Fibonacci map, Frobenius, and the squaring map of `ℙ¹`, with their dynamical degrees and entropies as in the Checks.

### Dependencies

Layers 1, 3 and 4; Mathlib `Subadditive` and its lemmas, `Scheme.RationalMap.comp_assoc`.

## Layer 6: Projective space and affine space

### 6.1 Rational self-maps of projective space given by forms

Prove:

- *Forms define rational maps.* For forms `F_0, …, F_d ∈ K[x_0, …, x_d]` of a common degree `a ≥ 0`, not all zero, there is a unique `K`-rational map `[F_0 : ⋯ : F_d] : ℙ^d ⤏ ℙ^d` whose restriction to the complement of `V(F_0, …, F_d)` is the morphism given by the line bundle `O(a)` and its generating sections (stacks-constructions Lemma 13.1, tag 01NE, line 1267).
- *Every rational map is given by reduced forms.* Every `K`-rational map `f : ℙ^d ⤏ ℙ^d` is `[F_0 : ⋯ : F_d]` for forms without common factor, unique up to a common nonzero scalar. Their common degree is the *degree* `deg f`. The domain of `f` is exactly the complement of `V(F_0, …, F_d)`, which has codimension `≥ 2`.
- *Composition.* For `f = [F]` and `g = [G]` reduced, `g ∘ f = [G(F)/h]` with `h = gcd_i G_i(F)`. So `deg(g ∘ f) ≤ deg f·deg g`, with equality if `f` or `g` is a morphism. If `f` is a morphism, so is `f^n`, of degree `(deg f)^n`.

*Route.* Mathlib's `Scheme.RationalMap.equivFunctionFieldOver` identifies rational maps with `K(ℙ^d)`-points of `ℙ^d_K`. Over a field these are `(K(ℙ^d)^{d+1} ∖ 0)/K(ℙ^d)^×` by stacks-constructions Lemma 13.1. Clearing denominators and dividing by the greatest common divisor (`MvPolynomial` is a unique factorization domain) gives reduced forms. A codimension-one component of `V(F)` would give a common factor (silverman2014 lines 350–357; guedj2010 Exemple 2.2, lines 1145–1147; russakovskiishiffman1997 line 510).

*Needs:* Mathlib `AlgebraicGeometry.Proj`, `MvPolynomial.homogeneousSubmodule`, `MvPolynomial.gradedAlgebra`, `MvPolynomial.uniqueFactorizationMonoid`, `Scheme.RationalMap.equivFunctionFieldOver`, `Scheme.RationalMap.comp`; SchemeAndStackFoundations §0.3; StableReduction Layer 2.

**Checks.**

- For `d = 1` the reduced forms are the coprime binary forms of ArithmeticDynamics §0.18, and the scheme maps agree with §0.26 there.
- The Cremona forms `(x_1x_2, x_0x_2, x_0x_1)` have no common factor. Their composite with themselves is `(x_0x_1x_2)·(x_0, x_1, x_2)`, so `σ ∘ σ = id` after dividing by `h = x_0x_1x_2`.
- Non-example: the forms `(x_0², x_0x_1, x_0x_2)` have common factor `x_0` and define the identity, of degree `1`, not `2`.

### 6.2 Degrees on projective space

Let `f = [F_0 : ⋯ : F_d]` be dominant, with forms of degree `a ≥ 1` without common factor. Prove:

- `deg_{1,H}(f) = a`;
- `deg_{k+1,H}(f) ≤ a·deg_{k,H}(f)`, hence `deg_{k,H}(f) ≤ a^k`;
- `deg_{k,H}(f) = a^k` for all `k` when `f` is a morphism;
- for a morphism, `deg_{k,H}(f^n) = a^{nk}`, `λ_k(f) = a^k` and `e(f) = a^d`;
- `λ_1(f) = lim_n (deg f^n)^{1/n}`, Silverman's first dynamical degree;
- `deg_{1,H}(g ∘ f) ≤ deg_{1,H}(f)·deg_{1,H}(g)`, the constant being `1`.

*Route.* On `Γ_f ⊆ ℙ^d × ℙ^d` put `A = π_1^*H` and `B = π_2^*H`. The relations `F_i(x)y_j = F_j(x)y_i` hold on `Γ_f`. They glue the maps `y_j ↦ F_j(x)` into a nonzero section of `aA − B`, whose zero scheme is an effective Cartier divisor `E` supported in `π_1^{−1}(V(F))`. By the Cartier restriction formula and §3.2 on `E`, `(A^{d−k−1}B^k · (aA − B)) = (A^{d−k−1}B^k · E) ≥ 0`, which gives the recursion. For `k = 0`, every component of `E` maps into `V(F)`, of dimension `≤ d − 2`. The projection formula gives `(A^{d−1} · E) = 0`, so `deg_{1,H} = a·deg_{0,H} = a`. For a morphism `E` is empty and `B = aA`. The last items follow from §6.1 (russakovskiishiffman1997 Lemma 4.4, lines 516–541, with equality if and only if `codim I_P > ℓ`, and lines 506–514; Lemma 4.6, lines 582–583, over `ℂ`; guedj2010 Exemple 2.2, lines 1141–1147; silverman2014 lines 350–357 and (3), line 387).

*Needs:* §§3.2, 4.1, 4.2, 5.1, 5.2, 6.1; CyclotomicClassGroupsAndStickelberger §4.3; Tau Ceti `AlgebraicGeometry.Scheme.IdealSheafData.IsEffectiveCartier`.

**Checks.**

- For `d = 1`, `deg_{1,H}(f)` is the degree of ArithmeticDynamics §0.18, and `λ_1(f) = deg f = e(f)`.
- The Cremona involution of `ℙ²` has `deg_{2,H} = 1 < a² = 4`. Its base locus is three points, of dimension `d − 2 = 0`; Russakovskii–Shiffman's `δ_2 = a² − 3 = 1` agrees.
- The Frobenius of `ℙ^d` is a morphism of degree `p` with `deg_{k,H} = p^k`.
- Non-example: the non-reduced forms `(x_0², x_0x_1, x_0x_2)` define the identity, with `deg_{1,H} = 1 ≠ 2`. The no-common-factor hypothesis is needed.

### 6.3 Standard examples

- *The standard Cremona involution.* For `d ≥ 2` let `σ = [Π_{j≠0} x_j : ⋯ : Π_{j≠d} x_j]`, forms of degree `d` without common factor. Then `σ ∘ σ = id`, `deg_{1,H}(σ) = d`, `deg_{1,H}(σ²) = 1 < d²`, `e(σ) = 1`, `λ_k(σ) = 1` for all `k` and `h_alg(σ) = 0`. For `d = 2` the degrees are `(1, 2, 1)` (guedj2010 Exemple 2.5, lines 1272–1282, for `d = 3`; russakovskiishiffman1997 lines 542–552 for `d = 2`; truong2020 §6.4, lines 1542–1544).
- *The Fibonacci map.* `f[x : y : z] = [yz : xy : z²]` on `ℙ²`. For `n ≥ 1`, `f^n = [x^{fib(n−1)} y^{fib(n)} z^{fib(n)} : x^{fib(n)} y^{fib(n+1)} : z^{fib(n+2)}]`, by induction on `n` through the exponent matrix `[[0, 1], [1, 1]]`. These forms have no common factor, so `deg_{1,H}(f^n) = fib(n + 2)`. Further, `λ_1(f) = Real.goldenRatio`, `e(f) = 1` (on `z = 1` the inverse of `(x, y) ↦ (y, xy)` is `(u, v) ↦ (v/u, u)`), `λ_2(f) = 1` and `h_alg(f) = log Real.goldenRatio` (silverman2014 Example 5, lines 358–372).
- *Frobenius.* Over a field of characteristic `p`, `F = [x_0^p : ⋯ : x_d^p]` is a morphism of degree `p` with `λ_k(F) = p^k` and `λ_d(F) = e(F) = p^d`, a purely inseparable degree.

*Needs:* §§1.1, 4.2, 5.1–5.4, 6.1, 6.2; Mathlib `Nat.fib`, `Real.goldenRatio`.

**Checks.**

- Fibonacci map, `n = 2`: `[xyz : xy² : z³]`, degree `3 = fib 4`. For `n = 3`: `[xy²z² : x²y³ : z⁵]`, degree `5 = fib 5`. The exponent of `x` in the first coordinate at `n = 1` is `fib 0 = 0`.
- The Cremona involution of `ℙ³` has `deg_{1,H}(σ) = 3` and `deg_{1,H}(σ²) = 1`, as in Guedj's example.
- Frobenius with `p = 2`, `d = 1`: `deg_{1,H} = 2 = e`, a purely inseparable degree.

### 6.4 Polynomial self-maps of affine space

Let `F = (F_1, …, F_d)` with `F_i ∈ K[x_1, …, x_d]`, `F : 𝔸^d → 𝔸^d` dominant (the `F_i` algebraically independent over `K`), and `a = max_i deg F_i`. Prove:

- `a ≥ 1`, and the rational map `f = [x_0^a : x_0^a F_1(x/x_0) : ⋯ : x_0^a F_d(x/x_0)]` of `ℙ^d` has forms of degree `a` without common factor. Its domain contains `𝔸^d = {x_0 ≠ 0}`, and it restricts to `F` there.
- `deg_{1,H}(f) = a` and `λ_d(f) = e(f) = [K(x_1, …, x_d) : K(F_1, …, F_d)]`.
- The extension of `F ∘ G` is the composite of the extensions, so `λ_1(f) = lim_n (max_i deg (F^{∘n})_i)^{1/n}`.
- If `F` is proper, it is finite (Mathlib's `AlgebraicGeometry.IsFinite.iff_isProper_and_isAffineHom`, a morphism of affine schemes being affine) and surjective.

(dangfavre2021 lines 177–180 for the setting of Theorem 2; silverman2014 Example 6, lines 373–380.)

*Needs:* §§1.1, 5.2, 6.1, 6.2; Mathlib `AlgebraicGeometry.IsFinite.iff_isProper_and_isAffineHom`, `AlgebraicGeometry.IsAffineHom`.

**Checks.**

- `F = (x², y)` on `𝔸²`: `a = 2`, `e = 2`, and `F^{∘n}` has degree `2^n`, so `λ_1 = 2` and `λ_1² = 4 ≥ λ_2 = 2`. `F` is finite. Its extension has base point `[0 : 0 : 1]`, so it is not a morphism, yet `deg_{1,H}(f^n) = 2^n`.
- The Hénon map `F = (y, x + y²)` is an automorphism with `F^{∘n}` of degree `2^n`. So `λ_1 = 2`, `λ_2 = 1` and `λ_1² > λ_2`, the hypothesis of Dang–Favre's Theorem 2.
- Silverman's `F = (y, z, x + yz)` on `𝔸³` has iterates of degrees `2, 3, 5 = fib(n + 2)`, so `λ_1 = Real.goldenRatio` and, as an automorphism, `λ_3 = 1`.
- Non-example: `F = (x, xy)` is dominant and birational but not proper (the fibre over `(0, 1)` is empty), so the finiteness item does not apply.

### Examples

The Cremona involutions of `ℙ²` and `ℙ³`, the Fibonacci map, Frobenius, `(x², y)`, the Hénon map and Silverman's affine automorphism of `𝔸³`.

### Dependencies

Layers 1, 3, 4 and 5; CyclotomicClassGroupsAndStickelberger §4.3; SchemeAndStackFoundations §0.3; StableReduction Layer 2; ArithmeticDynamics §§0.18, 0.26 (Checks); Mathlib `Proj`, `MvPolynomial` and its unique factorization, `IsFinite.iff_isProper_and_isAffineHom`, `Nat.fib`, `Real.goldenRatio`.

## Downstream consumers

- DynamicalDegreesOfRationalMaps, Part II: numerical cycle spaces `N^k(X)_ℝ` over an arbitrary field, the operators `f^*` on them and the spectral description of `λ_k` (dang2020 Theorem 2; truong2020 Theorem 1.1 (5)), relative dynamical degrees and the product formula (dang2020 Theorem 4; truong2020 Theorem 1.1 (4)). It starts from §§4.1–4.5 and §3.6.
- A roadmap on arithmetic degrees and canonical heights of dominant rational self-maps of `ℙ^N` (silverman2014 §§4–5), continuing ArithmeticDynamics. It needs `λ_1`, §6.2 and the sub-multiplicativity of §4.4.
- A roadmap on spectral interpretations of dynamical degrees (Dang–Favre b-classes and Theorems 1–2 of dangfavre2021). It needs `deg_{k,ω}`, §4.5 and `λ_1, λ_2` on normal projective varieties and on `ℙ^d`.
- Roadmaps on complex dynamics: the Dinh–Sibony entropy bound and Guedj's invariant measures need `h_alg` and log-concavity.

## Worked examples

| map | `d` | `deg_{k,H}(f)` | `λ_k(f)` | `e(f)` | `h_alg(f)` |
| --- | --- | --- | --- | --- | --- |
| `z ↦ z²` on `ℙ¹` | 1 | `(1, 2)` | `(1, 2)` | 2 | `log 2` |
| Cremona `σ` on `ℙ²` | 2 | `(1, 2, 1)` | `(1, 1, 1)` | 1 | 0 |
| Fibonacci `[yz : xy : z²]` | 2 | `(1, 2, 1)`; `deg_{1,H}(f^n) = fib(n + 2)` | `(1, Real.goldenRatio, 1)` | 1 | `log Real.goldenRatio` |
| Frobenius on `ℙ^d`, char `p` | `d` | `(p^k)_k` | `(p^k)_k` | `p^d` | `d·log p` |
| extension of `(x², y)` | 2 | `(1, 2, 2)` | `(1, 2, 2)` | 2 | `log 2` |

The Fibonacci map has `deg_{2,H}(f) = e(f) = 1`. The extension of `(x², y)` has `deg_{2,H} = e = 2` and `deg_{1,H}(f^n) = 2^n`.

## References

- `dang2020`: N.-B. Dang, *Degrees of iterates of rational maps on normal projective varieties*, Proc. London Math. Soc. 121 (2020); arXiv:1701.07760v2. Theorems 1–3, Theorem 3.4.4, Theorem 5.2.1.
- `truong2020`: T. T. Truong, *Relative dynamical degrees of correspondences over a field of arbitrary characteristic*, J. reine angew. Math. 758 (2020); arXiv:1605.05049v2. Theorem 1.1, §§6.3–6.4.
- `dangfavre2021`: N.-B. Dang, C. Favre, *Spectral interpretations of dynamical degrees and applications*, Ann. of Math. 194 (2021); arXiv:2006.10262v2. §1.3, Theorems 1.2–1.3, Theorems 1–2.
- `dinhsibony2005`: T.-C. Dinh, N. Sibony, *Une borne supérieure pour l'entropie topologique d'une application rationnelle*, Ann. of Math. 161 (2005); arXiv:math/0303271v2. Théorème 1, Proposition 6, Corollaire 7.
- `guedj2010`: V. Guedj, *Propriétés ergodiques des applications rationnelles*, Panoramas et Synthèses 30 (2010); arXiv:math/0611302v1. §2.1, Exemples 2.2 and 2.5, Théorème 2.4.
- `russakovskiishiffman1997`: A. Russakovskii, B. Shiffman, *Value distribution for sequences of rational mappings and complex dynamics*, Indiana Univ. Math. J. 46 (1997); arXiv:math/9604204v1. §4, Lemmas 4.4 and 4.6.
- `silverman2014`: J. H. Silverman, *Dynamical degrees, arithmetic degrees, and canonical heights for dominant rational self-maps of projective space*, Ergodic Theory Dynam. Systems 34 (2014); arXiv:1111.5664v2. §3, Examples 5–6, Proposition 7.
- `cutkosky2015`: S. D. Cutkosky, *Teissier's problem on inequalities of nef divisors over an arbitrary field*, arXiv:1304.1218v1. §2, Theorem 6.1, Corollary 6.3, Remark 6.2.
- `kleiman2005`: S. L. Kleiman, *The Picard scheme*, arXiv:math/0504020v1. Appendix B, Lemma B.12, Theorem B.27.
- `stacks-varieties`, `stacks-chow`, `stacks-morphisms`, `stacks-constructions`: The Stacks Project, chapters *Varieties* (Lemma 8.6, tag 054Q; §45, tags 0BEL–0BEX), *Chow Homology* (Lemma 41.4, tag 0BFI), *Morphisms* (Lemmas 6.7, 26.16, 38.7; Definition 52.8; tags 056B, 081I, 0892, 02NY) and *Constructions* (Lemma 13.1, tag 01NE).
- `lazarsfeld2004`: R. Lazarsfeld, *Positivity in Algebraic Geometry I*, Springer (2004). Theorem 1.4.9, Corollary 1.4.10, Theorem 1.6.1, Corollary 1.6.3, Theorem 2.2.15. Cited by locator.
- `fulton1998`: W. Fulton, *Intersection Theory*, 2nd ed., Springer (1998). Theorem 1.4, Proposition 2.5. Cited by locator.
