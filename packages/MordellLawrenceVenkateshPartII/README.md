# Roadmap: the Mordell conjecture after Lawrence and Venkatesh, part II

**Summary.** This roadmap builds the higher-dimensional form of the Lawrence–Venkatesh period-map
method and applies it twice. A Hodge–Deligne system on a smooth arithmetic base packages a rational
local system, an étale local system, a filtered flat bundle and a filtered F-isocrystal with their
comparison isomorphisms; a rational integral point of the base then gives a global Galois
representation whose restriction to a decomposition group is read off, on a p-adic residue disk,
from the value of a p-adic period map. Coefficient algebras, their semilinear normalizer groups and
tensor filtrations on these groups make Frobenius and arithmetic descent part of one algebraic group.
Faltings's finiteness lemma leaves finitely many global semisimplifications; a fixed
semisimplification gives finitely many local graded types once the auxiliary flag indices are
forgotten, and global purity over ℚ forces the induced Hodge filtrations to be balanced. A
root-pairing estimate bounds the semibalanced filtrations with a prescribed associated graded, and
strongly balanced monodromy distributes the estimate over independent factors in one Frobenius
cycle. The pure Ax–Schanuel theorem for period maps, transferred to p-adic coefficients through
analytic radicals and Krull intersection, turns the resulting codimension bounds into non-density.
The end theorems are the coefficient non-density theorem (Lawrence–Sawin, Theorem 8.17), the
higher-dimensional Lawrence–Venkatesh theorem (Theorem 10.1) with its finiteness clause, the
non-density of integral parameters of smooth hypersurfaces of large dimension and degree in `ℙⁿ`
(Proposition 10.2), and Shafarevich finiteness up to `A(K)`-translation for smooth ample
hypersurfaces in abelian varieties of dimension at least 4, of dimension 3 away from an explicit
exceptional set of degrees, and of dimension 2 (Lawrence–Sawin, Theorem 9.2, Corollary 9.3,
Theorems 9.4–9.6).

## Scope and ownership

This roadmap owns:

1. **Hodge–Deligne systems** (Layer 0): the category of compatible Betti, étale, de Rham and
   crystalline realizations on a smooth model, its integral, polarized and integral-Frobenius
   subcollections, its neutral Tannakian structure, constant systems, geometric cohomology systems
   cut out by finite-group projectors, differential monodromy from a tensor generator, and the
   constant Frobenius module on a residue disk.
2. **Arithmetic coefficient systems** (Layer 1): H⁰-algebras and their finite étale operations,
   coefficient modules, equidimensional modules, GL, GSp and GO structures over a coefficient
   algebra, finite-order character systems, Galois-orbit cohomology systems of hypersurfaces in
   abelian varieties with their inversion pairing, and rationality of their Frobenius polynomials.
3. **Semilinear groups and tensor filtrations** (Layer 2): the semilinear coefficient normalizer
   and its Frobenius centralizer bound, semisimplification in disconnected groups with reductive
   identity component, tensor G-structures and G-filtrations, crystalline inner forms, adjoint
   Hodge profiles and their top-weight sums, uniform filtrations, finiteness of global
   coefficient-group types, finiteness of semisimplification geometries and finiteness of local
   nonabelian Galois cohomology.
4. **Period orbits and transcendence transfer** (Layer 3): period maps in one monodromy orbit,
   parabolic stabilizers, the analytic-radical step, the codimension consequence of Ax–Schanuel and
   its transfer to p-adic non-density.
5. **Balanced monodromy and balanced filtrations** (Layers 4–5): index classes of subdirect
   products, strong balance, torsion-orbit balance, semisimple orbit codimension, central weights,
   induced Levi filtrations, balance and semibalance, global purity over ℚ, bifiltered Frobenius
   types, unipotent cocycles, Frobenius-stable Levi factors, local type finiteness, the root pairing,
   and the fixed-graded and fixed-type codimension estimates.
6. **The end theorems** (Layers 6–10): the coefficient non-density theorem, the higher-dimensional
   Lawrence–Venkatesh theorem with its bounded-prime argument and finiteness clause, the corrected
   point-count bound for Frobenius centralizers, the Eulerian numerical criteria, the projective
   hypersurface application and hypersurface Shafarevich finiteness.

It uses, and does not redevelop:

- **MordellLawrenceVenkatesh.** Its Layer LV.0 supplies the centralizer of a semilinear
  automorphism and its dimension (§§0.3–0.4) and Goursat's lemma for simple Lie algebras (§0.24);
  Layer LV.1 supplies Faltings's finiteness lemma (§1.2) and the Hodge weight of a pure
  representation (§§1.10, 1.12–1.13); Layer LV.2 supplies residue disks (§2.5), formal horizontal
  sections (§2.6), their complex convergence (§2.8) and the crystalline Frobenius on fibres with its
  Gauss–Manin compatibility for abelian-by-finite families (§2.11). That roadmap stops at the
  one-dimensional S-unit and Mordell arguments of Lawrence–Venkatesh §§2–8 and leaves the
  hypersurface sections and the Ax–Schanuel input to this one. Its period variety (§3.8) is the
  Lagrangian case of the monodromy orbits of §3.1 here.
- **SheafConvolutionOnAbelianVarieties.** It owns character sheaves, sheaf convolution and
  convolution monodromy groups. This roadmap imports its origin-normalized rank-one character
  sheaves (§0.2), the geometric extension comparison (§2.4), the Euler characteristics of a smooth
  ample divisor (§3.1) and the Hodge–Tate row of a generic torsion twist (§3.3), inversion symmetry
  and the classical form (§4.7), the exceptional Pell sequence and the exceptional threefold degrees
  (§§5.2–5.3), classical convolution monodromy (§6.7), and the character generic in every
  Galois conjugate with uniform big monodromy on its orbit (§§8.2–8.3). The exceptional degrees are
  used exactly as that roadmap defines them: the pairs start at (1,5), (5,20), (20,76), and
  `D_j = binomial(a_j + b_j, a_j)/6` for `j ≥ 1`, so `D_1 = 8855`.
- **ClassicalArithmeticCompletion** §§2.18, 2.39 and 2.56 own Eulerian numbers, their basic
  identities and unimodality; `eulerian` in `Suggested.lean` restates §2.18's definition only so
  that the Layer 8 headline can be stated.
- **ReductiveGroups** owns algebraic groups, their tori (Layer 4), unipotent radicals (Layer 5),
  characteristic-zero Levi complements (Layer 6A), root, Weyl, parabolic and Bruhat theory
  (Layer 7) and algebraic parabolics with Levi intersections (Layer 7b). The coefficient-normalizer
  specializations and the disconnected-group statements of Layer 2 are owned here.
- **ShimuraData** owns variations of Hodge structure (§3.1), polarized rational and integral
  variations (§§3.3–3.4), the flat-bundle local comparison (§3.5), the transversality criterion
  (§3.6), the parabolic of a Hodge filtration (§3.7) and Mumford–Tate groups (§1.2).
- **MotivesAndAlgebraicCycles** §§6.1–6.3 and 6.8 own neutral Tannakian reconstruction and the
  affine faithfully flat torsor of tensor isomorphisms between two fibre functors; PadicHodgeTheory
  §5.5 specializes that torsor to finite-type groups.
- **PadicHodgeTheory** owns period rings, Fontaine's functors and their tensor exactness
  (§§3.3–3.6), the Sen operator (§4.4), the rational Fontaine–Laffaille comparison (§6.1) and the
  rational comparison for proper smooth varieties with its functoriality (§§8.1–8.2);
  CrystallineCohomology §CR.7.3 owns relative crystalline cohomology with its Gauss–Manin
  connection.
- **DeligneWeightsAndPurity** owns Weil numbers, weights and their linear algebra (§§0.1–0.2,
  0.7, 0.9–0.10, 0.16) and purity for smooth projective varieties (§§4.3–4.4);
  PadicDifferentialEquationsAndRigidCohomology §RD.7.7 owns the Katz–Messing agreement of
  crystalline and ℓ-adic Weil factors; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T4 owns the
  constant-sheaf point-count trace formula; WeilConjectures Layer WC.5 and
  EtaleDualityAndPerverseSheaves §4.3 own the cohomology and point counts of complete
  intersections.
- **LefschetzPencilsAndVanishingCycles** owns the Picard–Lefschetz formula (§2.8), existence of
  Lefschetz pencils (§3.4), the vanishing quotient and its pairing (§4.4), the Kazhdan–Margulis
  open-image theorem (§5.8) and the orthogonal open-or-finite alternative with the ADE description
  of finite monodromy (§5.10).
- **ComplexKahlerGeometry** K3 owns Rückert's Nullstellensatz for convergent power series;
  **RestrictedPowerSeries** owns evaluation of restricted series (§2.1) and Noetherianity of Tate
  algebras (§5.2); **ComplexComparisonPartII** owns the Gauss–Manin connection (§C5.2), geometric
  Hodge theory (§C5.3), regular singular connections with Deligne's Riemann–Hilbert theory (§C5.6)
  and the Artin comparison (§C6.6).
- **SchemeAndStackFoundations** owns spreading out (§§0.8–0.9) and Hilbert and Quot schemes
  (§4.14); **AlgebraicModuliForArithmeticGeometry** owns Hilbert families (§2.1) and the
  characteristic-zero resolution preserving the regular locus (§9.4).
- **AbelianSchemesAndArithmeticModuli** owns abelian schemes (§A0.1), rigidity (§A1.2), extension
  of sections over Dedekind bases (§A1.8), ample cohomology and degrees (§A2.4), the Néron–Severi
  group (§A2.10), quotients by finite subgroups (§A3.3), theta groups and polarized descent
  (§A3.6), finite rank of Hom (§A6.7), Rosati positivity (§A6.14) and Weil restriction
  (§§A6.30–A6.32). Tau Ceti supplies abelian varieties over a field as
  `TauCeti.AlgebraicGeometry.AbelianVariety`.
- **Chebotarev** Layer 10 owns the Chebotarev density theorem; **ArithmeticGaloisDuality** §R02.3.1 owns
  Hermite's finiteness of extensions of bounded degree unramified outside a finite set.
- **HeightsRationalPointsAndObstructions** §§1.6–1.7 own weak Mordell–Weil and Mordell–Weil;
  **FaltingsFinitenessAndIsogenyTheorems** §R28.5.15 owns Shafarevich finiteness for curves of
  genus at least two.
- **AbelianSchemesAndArithmeticModuliPartII** Layer B3 owns the o-minimal Ax–Schanuel machinery for
  Kuga mixed Shimura varieties; the pure Ax–Schanuel theorem for period maps is asked of it in the
  supplier contracts.

It leaves to other roadmaps: the general theory of variations of mixed Hodge structure and limiting
Hodge structures; general relative p-adic Hodge theory beyond the good-reduction proper smooth
families used here; any effective bound on integral points (the method is ineffective) and any
finiteness for the quotient of the hypersurface parameter space by `PGL_(n+1)`.

## Conventions

- **Arithmetic models.** A number field `K` comes with a fixed embedding `K → ℂ` and a finite set
  `S` of places; models are over `O_K[S⁻¹]`. Rational-base non-density theorems use a smooth
  geometrically connected `X/ℚ` of positive dimension with a model over `ℤ[S⁻¹]`. Enlarging `S` by
  a stated finite set is a harmless reduction of the arithmetic problem (it enlarges the set of
  integral points); it is kept distinct from changing the base field. A p-adic residue disk is
  taken at a smooth point of good reduction. An abstract field isomorphism `ℚ̄_p ≅ ℂ` is used on
  formal coefficients only, never as a continuous map.
- **Filtrations.** Hodge filtrations `F` are decreasing with `gr^a_F = F^a/F^(a+1)`. Auxiliary
  flags `f` are increasing with `gr_k^f = f_k/f_(k−1)`. A cocharacter μ with weight spaces `V_j`
  gives `F^a = ⊕_(j≥a) V_j`.
- **Adjoint profiles.** For a filtration on a group `H`, `h^a = dim gr^a Lie(H)`, `D = Σ_a h^a`,
  `A = Σ_(a>0) h^a` and `B = Σ_(a>0) a·h^a`. The top-weight function `T` sums the largest weights
  **with multiplicity** and interpolates linearly on `[0, D]`. In the coefficient theorem `h` and
  `T` belong to one classical factor `H`; restriction of scalars of degree `d` scales them by
  `h_Res = d·h` and `T_Res(d·x) = d·T(x)`.
- **Hodge–Tate signs.** The arithmetic convention is `HT(χ_cyc) = +1`; the de Rham filtration of
  `ℚ_p(1)` jumps at `−1`. Geometric Frobenius on `ℚ_p(−1)` is `q` and its de Rham jump is `+1`.
  The torsion-twist multiplicities `d·A(n, q)` of SheafConvolutionOnAbelianVarieties §3.3 occur at
  Hodge–Tate weight `−q` in the arithmetic convention and at descending de Rham degree `q`. Global
  pure Weil weight `w` gives average de Rham weight `w/2` over ℚ; this is not embeddingwise valid
  over an arbitrary CM field.
- **Modular character.** `δ_P⁻¹ = det(Ad | Lie P)⁻¹`. For the upper triangular Borel of `GL₂` it is
  `diag(a, b) ↦ a⁻¹b`; semibalance means that its pairing with the induced cocharacter is `≤ 0`.
- **Dimensions.** For a hypersurface in an `n`-dimensional abelian variety the middle degree is
  `n − 1`: the inversion pairing is alternating when `n` is even and symmetric when `n` is odd.
  `N = n!·d` with normalized degree `d = φ^n/n!`. In the projective application `n` is the ambient
  dimension, again with middle degree `n − 1`, and the parameter space has dimension
  `binomial(n + d, d) − 1`.
- **Groups.** Algebraic groups are affine of finite type over a field of characteristic zero unless
  stated; "reductive identity component" allows finite component groups, and the orthogonal
  similitude group `GO_(2r)` is kept with its two components.
- **Source versions.** Lawrence–Sawin locators refer to arXiv:2004.09046v5 (pages of that
  preprint); Lawrence–Venkatesh locators refer to printed pages 893–999 of the Inventiones article,
  with its non-strict published inequalities `A ≥ h⁰ + dim Y` and `A ≥ z + e`.

## Exact supplier contracts

### From Mathlib

- `Finsupp` (`Mathlib/Data/Finsupp/Defs.lean`): finitely supported functions, used for
  integer-indexed natural multiplicities `h^a`; `Finsupp.degree` (`Mathlib/Data/Finsupp/Weight.lean`)
  for the total degree of a monomial exponent.
- `Ideal.iInf_pow_eq_bot_of_isLocalRing` (`Mathlib/RingTheory/Filtration.lean`, line 431): in a
  Noetherian local ring the intersection of the powers of a proper ideal is zero (Krull). It is
  applied to localizations of quotients of Tate algebras in §3.5.
- `MvPolynomial.IsHomogeneous`, `MvPolynomial.pderiv`, `MvPolynomial.aeval` and `AlgebraicClosure`:
  the carriers of `IsSmoothHypersurface` and `integralHypersurfaces_not_zariskiDense`.
- `RingTheory.Sequence.IsRegular` (`Mathlib/RingTheory/Regular/RegularSequence.lean`): regular
  sequences, used for the Jacobian ring in §8.6.
- `Equiv.Perm`, `Finset.filter` and `Nat.factorial`: the carriers of `eulerian` and
  `eulerian_central_mass_le_half`.

### From Tau Ceti

- `TauCeti.Cocharacter.parabolic` (`TauCeti/Algebra/AlgebraicGroup/Dynamic/Parabolic.lean`,
  line 293): the dynamic parabolic subgroup functor of a cocharacter, defined by the existence of
  the conjugation limit on Hopf-algebra points. Every Richardson parabolic `P_λ` of Layers 2 and 5
  is this functor; the Levi decompositions under `TauCeti/Algebra/AlgebraicGroup/Dynamic/LeviDecomposition`
  are used with it.
- `TauCeti.Tannaka.fgPointTensorIsoEquiv`
  (`TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/Equivalence.lean`, line 188): for a
  commutative Hopf algebra over a field, its points with values in an algebra are the tensor
  automorphisms of the scalar-extended forgetful functor on finitely generated comodules. This is
  reconstruction for a known group, not the torsor theorem for two arbitrary fibre functors.
- `TauCeti.AlgebraicGeometry.AbelianVariety` (`TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean`):
  an abelian variety over a field, bundled as a proper geometrically integral group scheme, with
  derived smoothness, geometric connectedness and commutativity. It has no ample line bundles and
  no models over Dedekind rings at the pin.

### From TauCetiRoadmap.MordellLawrenceVenkatesh

- §§0.3–0.4: the centralizer of a σ-semilinear automorphism of a module over a finite étale algebra
  and its dimension bound (Lawrence–Venkatesh Lemma 2.1); consumed in §2.2.
- §0.24: Goursat's lemma for products of simple Lie algebras; consumed in §4.1.
- §1.2: Faltings's finiteness lemma: for fixed `K`, `S`, rank and weight, finitely many semisimple
  pure Galois representations with integral Frobenius polynomials up to isomorphism; consumed in
  §§2.9, 7.3 and 7.6. Its hypotheses are integer characteristic polynomials of Frobenius, which
  §1.9 supplies for the orbit systems.
- §§1.10, 1.12–1.13: global purity forces the conjugation relation on Hodge–Tate exponents, the
  weight of a filtration, and the Hodge weight `w/2` of a pure representation; consumed in §5.4.
- §§2.5, 2.6, 2.8: residue disks with coordinates, formal horizontal sections with integral
  coefficients, and their complex convergence; consumed in §§0.7 and 3.5.
- §2.11: crystalline Frobenius on de Rham cohomology of fibres and its compatibility with
  Gauss–Manin transport, for abelian-by-finite families; §0.7 extends it to the geometric systems
  of §0.5 through CrystallineCohomology §CR.7.3.

### From TauCetiRoadmap.SheafConvolutionOnAbelianVarieties

- §0.2: the origin-normalized rank-one character sheaf `L_χ` of a finite-order character; consumed
  in §1.6.
- §2.4: comparison of convolution groups under extension of algebraically closed fields; consumed
  in §4.3.
- §3.1: for a smooth ample divisor `H` in a complex abelian variety of dimension `n ≥ 2` with
  `d = [H]^n/n!`, `χ(H, Ω^q_H) = (−1)^(n−1−q)·d·A(n, q)` for `0 ≤ q < n` and
  `e_top(H) = (−1)^(n−1)·n!·d`; so a rank-one twist whose cohomology is concentrated in degree
  `n − 1` has rank `N = n!·d` there. §3.3: for such a twist over a p-adic field the Hodge–Tate
  weight `−q` occurs with multiplicity `d·A(n, q)`, `0 ≤ q < n`. Consumed in §§1.7 and 8.1.
- §4.7: inversion symmetry and the classical form on the twisted cohomology; consumed in §1.8.
- §§5.2–5.3: the exceptional Pell pairs and exceptional degrees `D_j`; consumed in §§10.5, 10.6
  and 10.9.
- §6.7: classical convolution monodromy (`SL`, `Sp` or `SO`) for hypersurfaces outside the
  exceptional degrees; consumed in §10.5.
- §§8.2–8.3: a torsion character of order prime to `p`, generic in every Galois conjugate, with
  big monodromy uniformly on its orbit; consumed in §§1.7 and 4.3.

### From TauCetiRoadmap.ClassicalArithmeticCompletion

- §2.18 (Eulerian numbers, `A(n, q)` counting permutations of `Fin n` with `q` descents), §2.39
  (the factorial sum, symmetry, recurrence and Worpitzky's identity) and §2.56 (unimodality of the
  rows); consumed in Layer 8.
- What ClassicalArithmeticCompletion must provide (gap:eulerian-log-concavity-and-variance): log-concavity of every row `q ↦ A(n, q)` on its contiguous support `0 ≤ q < n`, preservation of log-concavity on contiguous support under convolution and reflection of finite sequences, and the variance `(n + 1)/12` of the descent number of a uniformly random permutation of `Fin n` for `n ≥ 2`.
- What ClassicalArithmeticCompletion must provide (gap:eulerian-central-limit): the central limit theorem for descents: for a uniformly random permutation of `Fin n`, `(des − (n − 1)/2)/√n` converges in law to the centred normal law of variance `1/12` as `n → ∞`, together with the uniform bound on its second moments that gives convergence of first absolute moments.

### From TauCetiRoadmap.ReductiveGroups

- Layer 4 (Jordan decomposition, diagonalizable groups and tori), Layer 5 (unipotent groups and the
  unipotent radical), Layer 6A (characteristic-zero Levi complements for general affine groups),
  Layer 7 (Borel and parabolic subgroups, roots, Weyl group and Bruhat decomposition) and Layer 7b
  (algebraic parabolics and Levi intersections), all over a field of characteristic zero. Consumed
  in Layers 2, 4 and 5. Connected root theory is used only on identity components; the statements
  for disconnected groups are targets here.

### From TauCetiRoadmap.RestrictedPowerSeries and TauCetiRoadmap.ComplexKahlerGeometry

- RestrictedPowerSeries §2.1 (evaluation and substitution of restricted series) and §5.2
  (Noetherianity, factoriality and dimension of `K⟨T₁, …, T_m⟩` over a complete nonarchimedean
  field); quotients and localizations of Tate algebras are then Noetherian. Consumed in §3.5.
- ComplexKahlerGeometry K3 (analytic germs and subvarieties): Noetherianity of the convergent
  power-series ring and Rückert's Nullstellensatz `I(V(𝔞)) = √𝔞` for every ideal of `ℂ{z₁, …, z_m}`.
  Consumed in §3.3.

### From TauCetiRoadmap.ComplexComparisonPartII

- §C5.2 (families, Ehresmann and the Gauss–Manin connection), §C5.3 (geometric Hodge theory:
  Hodge decomposition and Hodge numbers of smooth projective varieties), §C5.6 (regular singular
  connections and Deligne's Riemann–Hilbert equivalence) and §C6.6 (integral and rational Artin
  comparison between étale and Betti cohomology). Consumed in Layer 0, §8.6 and §9.2.

### From TauCetiRoadmap.ShimuraData

- §3.1 (variations of Hodge structure), §3.3 (polarized rational variations), §3.4 (polarized
  integral variations), §3.5 (flat-bundle local comparison: local flat frames turn a variation into
  a holomorphic flag map), §3.6 (Griffiths transversality as a tangent condition on that flag map),
  §3.7 (the parabolic of a Hodge filtration) and §1.2 (Mumford–Tate groups). Consumed in Layers 0
  and 3.
- What ShimuraData must provide (gap:andre-monodromy-normality): for a polarized integral variation of Hodge structure on a connected smooth complex algebraic variety, the identity component of the Zariski closure of its monodromy group is a normal subgroup of the derived group of its generic Mumford–Tate group (Deligne–André).

### From TauCetiRoadmap.AbelianSchemesAndArithmeticModuliPartII

- Layer B2 §B2.6 (semirational Pila–Wilkie block counting) and Layer B3 (definable uniformization
  and the Ax–Schanuel theorem for Kuga mixed Shimura varieties) are the o-minimal machinery on
  which the following request rests.
- What AbelianSchemesAndArithmeticModuliPartII must provide (gap:period-map-ax-schanuel): the Ax–Schanuel theorem for pure polarized integral variations of Hodge structure (Bakker–Tsimerman): for such a variation on a smooth irreducible complex algebraic variety `X` with monodromy period orbit `D_mon ⊂ Ď`, every irreducible analytic component `U` of the intersection of an algebraic subvariety `W ⊂ X × Ď` with the graph of a local lift of the period map satisfies `codim_(X×Ď) U ≥ codim W + codim_(X×Ď)(graph)` unless the projection of `U` to `X` lies in a weakly special subvariety, in the monodromy-orbit form used in §3.4.

### From TauCetiRoadmap.MotivesAndAlgebraicCycles

- §§6.1–6.3: neutral fibre data over a field, reconstruction of the neutral group `G_ω = Aut^⊗(ω)`
  with `C ≃ Rep_fd(G_ω)`, and finite type exactly when one object tensor-generates.
- §6.8: for any neutral category and exact faithful tensor fibre `η` with values in finite
  projective `R`-modules, `Isom^⊗(ω_R, η)` is an affine faithfully flat right `G_ω,R`-torsor,
  finitely presented when `G_ω` is of finite type, and `Aut^⊗(η)` is its inner twist. Consumed in
  §§0.3, 0.6, 2.4, 2.6, 3.1 and 7.1. A finitely presented faithfully flat torsor over a field is a
  nonempty scheme of finite type and so has a point over an algebraic closure.

### From TauCetiRoadmap.PadicHodgeTheory

- §§3.3–3.6: Fontaine's functors, admissibility, the crystalline and semistable classification and
  group-valued filtered data; `D_cris` and `D_dR` are exact faithful tensor functors on crystalline
  representations. Consumed in §§0.3, 1.2, 2.6 and 7.1.
- §5.5: the finite-type specialization of the tensor-isomorphism torsor. Consumed in §7.1.
- §6.1: the rational Fontaine–Laffaille comparison with its signs. Consumed in §7.3.
- §§8.1–8.2: for proper smooth `X` with good reduction at `p`, `D_cris(H^i_et(X_C, ℚ_p))` is
  crystalline cohomology of the special fibre with its Frobenius and, over `K`, de Rham cohomology
  with its Hodge filtration; the comparisons commute with pullback, cup product and Tate twists,
  and a cohomological projector restricts them when it is given geometrically on both sides.
  Consumed in §§0.5, 0.7 and 1.2.
- What PadicHodgeTheory must provide (gap:relative-crystalline-comparison): for a smooth projective morphism `f : 𝒴 → 𝒳` of smooth `W(k)`-schemes with `k` finite and `p` unramified, the fibrewise crystalline comparisons of §8.1 at the points of a residue disk of `𝒳` are horizontal for the Gauss–Manin connection on `R^i f_* Ω^•` and compatible with the Frobenius of the convergent F-isocrystal `R^i f_crys,*` of CrystallineCohomology §CR.7.3, so that `R^i f_*ℚ_p` and that filtered F-isocrystal are associated in the sense of Faltings.
- What PadicHodgeTheory must provide (gap:hodge-tate-image-cocharacter): for a crystalline representation `ρ : G_K → GL(V)` of a finite unramified `K/ℚ_p` preserving a family of tensors, the Zariski closure of `ρ(G_K)` contains a torus that is conjugate over `ℚ̄_p`, inside the group fixing those tensors, to the image of the Hodge cocharacter of `D_dR(V)` (Sen; Wintenberger's tensor-compatible splitting).

### From TauCetiRoadmap.CrystallineCohomology

- §CR.7.3: relative crystalline cohomology of a proper smooth morphism, its base change and its
  Gauss–Manin connection. Consumed in §0.7.

### From TauCetiRoadmap.DeligneWeightsAndPurity, WeilConjectures and PadicDifferentialEquationsAndRigidCohomology

- DeligneWeightsAndPurity §0.1 (Weil `q`-numbers of integer weight), §0.2 (products, inverses and
  integrality of Weil numbers), §0.7 (eigenvalue weights of an endomorphism), §0.9 (purity under
  subobjects, quotients and extensions), §0.10 (`det(1 − tF)` and traces of powers), §0.16
  (eigenvalues under a Frobenius-equivariant perfect pairing), §4.3 (the Weil theorem for smooth
  projective varieties), §4.4 (integral degree factors from distinct weights) and §9.12 (invariant
  and vanishing cohomology of a hyperplane section are orthogonal complements). Consumed in Layers
  0, 1 and 7.
- WeilConjectures Layer WC.3 (separating integral factors by weight) and Layer WC.5, "Complete
  intersections" (`|#X(k_r) − #ℙ^m(k_r)| ≤ b·q^(m·r/2)` with the primitive middle part the only
  error term). Consumed in §§0.5, 1.9 and 7.8.
- PadicDifferentialEquationsAndRigidCohomology §RD.7.7 (Katz–Messing): for smooth projective `X`
  over `𝔽_q` and `ℓ ≠ p`, `det(1 − tφ^f | H^i_crys ⊗ K₀) = det(1 − t·Frob_q | H^i(X_F̄_q, ℚ_ℓ))` in
  `1 + tℤ[t]`. Consumed in §7.3.

### From TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups and EtaleDualityAndPerverseSheaves

- InverseGaloisAndArithmeticFundamentalGroups §IG.0.T4: the constant-sheaf point count
  `#X(𝔽_(q^m)) = Σ_i (−1)^i tr(Frob^m | H^i_c)` for every finite extension. Consumed in §1.9.
- EtaleDualityAndPerverseSheaves §4.3: the cohomology of smooth complete intersections (powers of
  the hyperplane class outside the middle degree, the primitive decomposition in the middle degree,
  Frobenius `q^j` on `H^(2j)`, and families). Consumed in §§7.8 and 9.1.

### From TauCetiRoadmap.LefschetzPencilsAndVanishingCycles

- §2.8 (the Picard–Lefschetz formula for a proper family), §3.4 (existence of Lefschetz pencils),
  §4.4 (the radical quotient of the vanishing subspace and its pairing), §4.5 (cohomology of the
  total space), §5.8 (the Kazhdan–Margulis open-image theorem in the symplectic case) and §5.10
  (in even dimension, with nondegenerate vanishing space, the compact monodromy is open in `O(E)` or
  finite, and finite monodromy is the Weyl group of a positive definite ADE root lattice).
  Consumed in §9.2.

### From TauCetiRoadmap.SchemeAndStackFoundations and AlgebraicModuliForArithmeticGeometry

- SchemeAndStackFoundations §§0.8–0.9 (spreading out over Dedekind bases and Noetherian
  approximation) and §4.14 (`hilbert_quot_schemes`: Hilbert and Quot schemes of a projective
  morphism with a relatively very ample bundle). Consumed in Layers 9 and 10.
- AlgebraicModuliForArithmeticGeometry §2.1 (Hilbert families as Quot functors, fixed Hilbert
  polynomial subfunctors) and §9.4 (the characteristic-zero projective birational resolution with
  smooth source preserving the entire regular locus, imported there from
  ResolutionOfSingularitiesCharacteristicZero). Consumed in §§10.2 and 10.4.

### From TauCetiRoadmap.AbelianSchemesAndArithmeticModuli

- §A0.1 (abelian schemes), §A1.2 (rigidity over arbitrary bases: a morphism of abelian schemes is a
  translation followed by a homomorphism), §A1.8 (Weil extension over a connected Dedekind base),
  §A2.4 (ample cohomology, Riemann–Roch and `deg φ_L`), §A2.10 (the Néron–Severi group), §A3.3
  (quotients by finite locally free subgroups), §A3.6 (theta groups and polarized descent), §A6.7
  (Hom is free of finite rank), §A6.14 (positivity of the Rosati involution) and §§A6.30–A6.32
  (Weil restriction, its geometric splitting along separable extensions and Weil restriction of
  abelian schemes along finite étale maps). Consumed in Layers 2 and 10.

### From TauCetiRoadmap.Chebotarev and TauCetiRoadmap.ArithmeticGaloisDuality

- Chebotarev Layer 10 (Dirichlet-density Chebotarev): every conjugacy class of a finite Galois group is the
  Frobenius class of a set of primes of positive density. Consumed in §7.3.
- ArithmeticGaloisDuality §R02.3.1: Hermite's theorem that a number field has finitely many extensions of
  bounded degree unramified outside a finite set. Consumed in §2.9.

### From TauCetiRoadmap.HeightsRationalPointsAndObstructions and FaltingsFinitenessAndIsogenyTheorems

- HeightsRationalPointsAndObstructions §1.6 (`A(K)/mA(K)` finite for `m ≥ 1`) and §1.7 (Mordell–Weil).
  Consumed in §10.8.
- FaltingsFinitenessAndIsogenyTheorems §R28.5.15 (`finite_curves_goodReduction`: finitely many
  isomorphism classes of smooth projective geometrically connected curves of genus `g ≥ 2` over `K`
  with good reduction outside `S`). Consumed in §10.10.

## How to read the build

Layers 0–2 assemble the realizations and coefficients and identify the groups whose filtrations
matter. Layer 3 proves the shared transfer from period codimension to p-adic non-density. Layer 4
treats integral points with semisimple Galois representations and isolates strong balance; Layer 5
handles the associated graded of nonsplit representations, which gives the all-points coefficient
theorem of Layer 6. Layer 7 proves the higher-dimensional Lawrence–Venkatesh theorem through its own
small-centralizer prime argument. Layer 8 is pure combinatorics and Hodge-number asymptotics and can
be built alongside Layers 0–7; Layers 9 and 10 finish the projective and abelian applications.

## Layer 0: Compatible Hodge–Deligne realizations

This layer assembles the four compatible realizations, their tensor category, geometric systems cut
out by projectors, differential monodromy and the fixed Frobenius module on a residue disk.

### 0.1 Hodge–Deligne systems

Fix a number field `K`, an embedding `K → ℂ`, a smooth geometrically connected `K`-variety `X` with
smooth model `𝒳/O_K[S⁻¹]`, and a rational prime `p` below no place of `S`, unramified in `K`, with a
place `v | p`. Define a **Hodge–Deligne system** on `𝒳` as a tuple consisting of a finite-rank
ℚ-local system `V_B` on `X(ℂ)`, a continuous ℚ_p-local system `V_et` on `𝒳[1/p]`, a finite locally
free bundle `V_dR` on `X` with an integrable connection `∇` and a finite decreasing filtration `F`,
and a filtered convergent F-isocrystal `V_cris` on the `v`-adic tube, together with Betti–étale,
Betti–de Rham and crystalline–de Rham comparison isomorphisms and an associated-sheaf comparison
between `V_et` and `V_cris`. The comparisons preserve tensor products, the connection, the
filtrations and a finite increasing weight filtration `W`. Require `∇` to have regular singularities
at infinity, Griffiths transversality `∇F^a ⊆ F^(a−1) ⊗ Ω¹`, and on each `gr^W_w` fibrewise purity of
Hodge structures of weight `w` and of Frobenius eigenvalues of Weil weight `w`. The Frobenius
eigenvalues are Weil numbers in ℚ̄ but need not be algebraic integers; a polarization and a ℤ-lattice
are further structure (§0.2) (LS, Definition 5.2, pp. 40–42; LS line 1832).

The construction uses the supplied local systems, Deligne's regular singular connections and filtered
F-isocrystals; morphisms and tensor products are componentwise and every comparison diagram is
required to commute, including the associated-sheaf comparison.

API:

- A Hodge–Deligne system is built from its four realizations and compatible comparison data, and each
  realization is recovered with its connection, Frobenius structure and finite filtrations.
- Every comparison isomorphism commutes with pullback along a morphism of smooth models and with the
  tensor product and dual of the supplied realization categories.
- All four realizations have the same rank, and the weight filtrations correspond under every
  comparison.

**Checks.**

- The rational constant unit has rank one, Hodge type `(0,0)` and weight `0` in every realization.
- The dual Tate system ℚ(1) is a system: its crystalline Frobenius eigenvalue `p⁻¹` is not an
  algebraic integer, which the definition permits.
- A filtered connection with `∇F^a ⊄ F^(a−1) ⊗ Ω¹` is rejected, even when its fibre dimensions match a
  variation of Hodge structure.
- A tuple whose Betti realization has rank two and étale realization rank one is rejected: the
  comparison cannot be an isomorphism.

*Needs:* ShimuraData §§3.1, 3.3; ComplexComparisonPartII §C5.6; PadicHodgeTheory §§8.1–8.2 with
gap:relative-crystalline-comparison; DeligneWeightsAndPurity §§0.1, 0.7.

### 0.2 Integral, polarized and integral-Frobenius systems

For a Hodge–Deligne system define three separate predicates. It is **integral** when its Betti
realization contains a locally constant finite free ℤ-lattice spanning it over ℚ. It is **polarized**
when it is pure of a specified weight `w` and carries a flat rational bilinear form polarizing the
variation of Hodge structure. It has **integral Frobenius** when at every closed point of `𝒳` away from
`S` and `p`, and in the crystalline realization, the Frobenius eigenvalues are algebraic integers
(LS, Definitions 5.3–5.5, p. 42).

The lattice and the pairing are transported through the comparisons; a rational polarization is not
required to be integral on the lattice. Integral Frobenius is stated with the Weil-number predicate of
DeligneWeightsAndPurity §0.1.

API:

- The chosen lattice of an integral system, with its rational comparison, is part of the data.
- A polarized system carries its weight and flat form satisfying the Hodge–Riemann relations on every
  fibre.
- Integral Frobenius passes to invariant subobjects and quotients, because the characteristic
  polynomial factors along an invariant subspace and a monic factor of a polynomial with
  algebraic-integer roots has algebraic-integer roots.

**Checks.**

- The unit is integral, polarized of weight zero and has integral Frobenius.
- The Tate object ℚ(−1) with geometric Frobenius `q` has integral Frobenius, its dual ℚ(1) with
  eigenvalue `q⁻¹` does not: integral Frobenius is not closed under duals, though the category of all
  systems is.
- A rank-one rational local system on `𝔾_m` whose monodromy is multiplication by 2 has no
  monodromy-stable ℤ-lattice, so it is not integral.

*Needs:* §0.1; ShimuraData §3.4; DeligneWeightsAndPurity §§0.2, 0.9.

### 0.3 The tensor category of systems

Over the fixed base of §0.1, define morphisms of Hodge–Deligne systems as compatible maps of all four
realizations preserving `W`, `F`, the connection, Frobenius and all comparisons. Prove that with
componentwise tensor products, duals, direct sums and the unit, Hodge–Deligne systems form a ℚ-linear
neutral Tannakian category, with fibre functor the Betti realization at a chosen complex point. The
proof shows that morphisms are strict for `F` and `W` and that componentwise kernels and cokernels
again satisfy the axioms (LS, Definition 5.11, p. 43, and Lemma 5.12, p. 44).

Strictness of morphisms of mixed Hodge structures and exactness of Fontaine's functors on crystalline
representations give the kernels and cokernels with their comparisons. Faithfulness of the fibre
functor uses connectedness of `X(ℂ)`; rigidity and `End(1) = ℚ` are checked before the reconstruction
of MotivesAndAlgebraicCycles §6.2 is applied.

API:

- Two morphisms of systems with equal Betti maps are equal.
- The Betti fibre functor at a complex point is exact, faithful, ℚ-linear and symmetric monoidal.
- Each realization of a tensor product or dual is naturally the tensor product or dual of the
  realizations.

**Checks.**

- A scalar `c ∈ ℚ` acts on the unit as `c` under every comparison.
- On a disconnected base, a map that is zero on one component and nonzero on the other shows that the
  fibre at a point of one component is not faithful; connectedness is necessary.
- The kernel of a morphism of pure Hodge systems carries the induced strict Hodge filtration, not an
  arbitrary filtration of the same dimensions.

*Needs:* §0.1; MotivesAndAlgebraicCycles §§6.1–6.2; PadicHodgeTheory §§3.3–3.5; ShimuraData §3.2.

### 0.4 Constant arithmetic systems

A Hodge–Deligne system on `𝒳` is **constant** when it is the pullback of a system on
`Spec O_K[S⁻¹]`. For a finite-dimensional ℚ-algebra `E` the **trivial coefficient system** `O_E` has
constant Betti realization `E`, trivial Galois action on `E ⊗ ℚ_p`, trivial connection, Hodge
filtration concentrated in degree zero and Frobenius `1_E ⊗ σ_v`. A constant system may have
nontrivial arithmetic Galois action; constancy means trivial geometric variation (LS, Examples 5.8–5.9,
p. 43; Definition 5.13, p. 44).

API:

- Pullback along `𝒳 → Spec O_K[S⁻¹]` sends systems over the arithmetic point to constant systems.
- `O_E` has trivial coefficient Galois action, and `O_ℚ` is the tensor unit.
- Every constant system has trivial geometric monodromy, while its arithmetic representation need not
  be trivial.

**Checks.**

- `O_ℚ` is the tensor unit of §0.3.
- The `H⁰` system of a nonsplit finite étale `K`-algebra is constant on `X` but has a nontrivial
  permutation action of `Gal(K̄/K)`.
- A nonisotrivial polarized variation has nontrivial geometric monodromy and so is not constant.

*Needs:* §0.3.

### 0.5 Geometric cohomology systems and projectors

For a smooth projective morphism `f : Y → X` extending to a smooth projective morphism of models,
construct the Hodge–Deligne system `R^k f_* ℚ` from Betti, étale, algebraic de Rham and crystalline
cohomology with their comparison maps. For a finite group `Γ` acting on `Y` over `X` and an idempotent
`e ∈ ℚ[Γ]`, the image of `e` is a direct-summand system; the intersection of its Betti image with an
integral cohomology lattice modulo torsion is a spanning lattice. Pure geometric systems are polarized
and have integral Frobenius (LS, Example 5.10, p. 43; proof of Lemma 5.29, pp. 49–51).

The four cohomology objects are compared with the supplied proper comparisons, including the
connection and the filtration. The algebraic action of `Γ` gives the same projector in every
realization; purity and integral Frobenius pass to the summand and a positive polarization restricts
to it. Coefficient pushforward with arbitrary coefficients (LS Example 5.10 in general) is not used:
only constant coefficients on finite covers occur.

API:

- Degree-`k` cohomology of a smooth projective family is a Hodge–Deligne system with its four
  comparisons, pure of weight `k`, polarized by a relatively ample class, integral and with integral
  Frobenius.
- The image of a rational idempotent of `ℚ[Γ]` is a subsystem in every realization.
- Images of projectors commute with every realization and with scalar extension.

**Checks.**

- For `f = id` and `k = 0` the construction returns the constant unit.
- For a double cover with involution `τ`, the projector `(1 − τ)/2` gives the anti-invariant rational
  summand, although division by 2 does not preserve the original ℤ-lattice; the new lattice is an
  intersection, not the image of the old one.
- The zero projector gives the rank-zero system and the identity projector the original system.

*Needs:* §§0.2–0.3; ComplexComparisonPartII §§C5.2–C5.3; PadicHodgeTheory §§8.1–8.2 with
gap:relative-crystalline-comparison; CrystallineCohomology §CR.7.3; DeligneWeightsAndPurity §§4.3–4.4;
WeilConjectures Layer WC.3.

### 0.6 Differential monodromy from a tensor generator

Let `V` be a system on a smooth geometrically connected `X/K` with a `K`-rational point, or after a
stated finite extension of `K` supplying one. Define the **differential monodromy group** `G_mon` as
the group of tensor automorphisms of the fibre functor at that point on the rigid abelian tensor
category generated by `(V_dR, ∇)`. Prove that its base change to ℂ is the Zariski closure of the
geometric monodromy of `V_B`. A change of fibre point transports `G_mon` through the torsor of tensor
isomorphisms between the two fibre functors, so the group is defined up to inner twist (LS,
Definition 5.6 and the following discussion, pp. 42–43).

Neutral reconstruction applies to the tensor category generated by the regular connection; Deligne's
regular singular Riemann–Hilbert equivalence identifies it after base change to ℂ with the category
generated by `V_B`, whose Tannaka group is the Zariski closure of monodromy.

API:

- `G_mon` is an affine group of finite type with a faithful representation on the chosen fibre.
- A tensor isomorphism between fibre functors transports `G_mon` by an inner twist.
- Over ℂ the faithful representation of `G_mon` has image the Zariski closure of the geometric Betti
  monodromy.

**Checks.**

- A constant system has trivial `G_mon`, even when its arithmetic Galois action is nontrivial.
- A rank-two system with Zariski-dense `SL₂` monodromy has `G_mon = SL₂`, not `GL₂`.
- A system with finite nontrivial monodromy keeps the whole finite group, not only its identity
  component.
- If `X(K)` is empty the finite extension supplying the base point is part of the data; no rational
  point is chosen silently.

*Needs:* §0.3; MotivesAndAlgebraicCycles §§6.2–6.3, 6.8; ComplexComparisonPartII §C5.6.

### 0.7 Constant Frobenius data on a residue disk

For a geometric system of §0.5 and a residue disk `Ω` of a smooth point of good reduction, parallel
transport of the convergent F-isocrystal identifies the crystalline fibres at all points of `Ω` with
one finite-dimensional `(V, φ)`, `φ` semilinear for the residue Frobenius; the Hodge filtrations
`F_x`, transported by the Berthelot–Ogus identification and Gauss–Manin transport, vary analytically
and define the **p-adic period map** `Φ_p : Ω → Flag(V)` (LS, Remark 5.7, p. 43; proof of Theorem
8.17, pp. 83–84). This is a statement on one residue tube, not a global trivialization.

API:

- The crystalline fibres over `Ω` are identified, compatibly with Frobenius, with one `(V, φ)`.
- `Φ_p` is given by convergent power series on `Ω`, and at each `x ∈ Ω` the filtered φ-module
  `(V, φ, Φ_p(x))` is `D_cris` of the local Galois representation at `x`.
- Transport between two points of `Ω` commutes with Frobenius and with the coefficient and pairing
  structures of Layer 1.

**Checks.**

- For a constant family `Y = Y₀ × X` the period map is constant.
- For a nonisotrivial family of elliptic curves the pair `(V, φ)` is fixed on `Ω` while the Hodge line
  varies.
- For the Legendre family and `H¹`, the construction restricts to the abelian-by-finite transport of
  MordellLawrenceVenkatesh §2.11.

*Needs:* §§0.1, 0.5; MordellLawrenceVenkatesh §§2.5–2.6, 2.11; CrystallineCohomology §CR.7.3;
PadicHodgeTheory §8.1 with gap:relative-crystalline-comparison.

### Examples

A constant `H⁰` system of a nonsplit étale algebra has nontrivial Galois permutation action and trivial
geometric monodromy. The anti-invariant projector `(1 − τ)/2` on a double cover shows that the
integral lattice of a summand is an intersection with the rational image, not the image of the old
lattice.

### Dependencies

ShimuraData §§3.1–3.4; ComplexComparisonPartII §§C5.2–C5.3, C5.6; PadicHodgeTheory §§3.3–3.5,
8.1–8.2; CrystallineCohomology §CR.7.3; MotivesAndAlgebraicCycles §§6.1–6.3, 6.8;
DeligneWeightsAndPurity §§0.1–0.2, 0.7, 0.9, 4.3–4.4; WeilConjectures Layer WC.3;
MordellLawrenceVenkatesh §§2.5–2.6, 2.11.

## Layer 1: Arithmetic coefficient systems

This layer builds H⁰-algebras, coefficient modules with classical structures, torsion-character orbit
cohomology with its polarization, and the rational Frobenius polynomials of the orbit systems.

### 1.1 Étale H⁰-algebras

Define an **H⁰-algebra** as a commutative unital algebra object `E` in the category of §0.3, pure of
weight zero, with `F⁰E_dR = E_dR` and `F¹E_dR = 0`. It is **étale** when its Betti ℚ-algebra is finite
étale. In the arithmetic argument `E` is required to be constant in the sense of §0.4; its étale
realization may carry a nontrivial finite Galois permutation action (LS, Definitions 5.14 and 5.16,
p. 45).

API:

- The realization functors preserve the unit and multiplication of an H⁰-algebra.
- Every field-valued realization of an étale H⁰-algebra is finite étale.
- Pullback preserves the algebra structure, the Hodge type and étaleness.

**Checks.**

- `ℚ × ℚ` with its two idempotents is étale.
- `ℚ[ε]/(ε²)` is an H⁰-algebra but not étale.
- The rank-two permutation algebra of a quadratic field is constant on `X` but is not `O_(ℚ×ℚ)`: its
  Galois action swaps the factors.

*Needs:* §§0.3–0.4.

### 1.2 Finite étale coefficient operations

Construct H⁰-algebras from the trivial algebra `O_E`, the group algebra `ℚ[B]` of a finite abelian
group `B`, the convolution dual `O(B)^∨` of a finite étale commutative group scheme `B` (multiplication
dual to the comultiplication of the group law), `R⁰f_*` of a proper smooth family, and pushforward
along a finite étale map of bases. In the finite-monodromy case the crystalline realization is
`D_cris` of the Galois representation. If `K_v/ℚ_p` is unramified of degree `f`, the semilinear
Frobenius `φ` satisfies that `φ^f` equals, under the unramified comparison, the action of geometric
Frobenius in the representation (LS, Examples 5.15 and 5.17–5.21, pp. 45–47).

API:

- Finite étale pushforward carries a coefficient algebra with its descent action.
- On the crystalline fibre over an unramified place of degree `f`, `φ^f` is the action of the residue
  Frobenius.
- The Betti realization of the group-algebra construction is `ℚ[B]` with its basis and multiplication.
- For finite étale commutative `B` the coefficient algebra is `O(B)^∨` with convolution, and for
  constant `B` its rational realization is `ℚ[B]`.

**Checks.**

- For `B` cyclic of order two, `ℚ[B] ≅ ℚ × ℚ`.
- Over an unramified quadratic p-adic field, a rank-two unramified representation whose residue
  Frobenius swaps two factors keeps the swap in `φ²`; a formula forcing `φ² = id` is wrong.
- The pushforward of the unit along a split two-sheeted étale cover has rank two.
- For constant cyclic `B` of order three, `O(B)^∨ ≅ ℚ[C₃] ≅ ℚ × ℚ(ζ₃)`, whereas the pointwise function
  algebra `ℚ³` is a different ℚ-algebra.

*Needs:* §§0.5, 1.1; PadicHodgeTheory §§3.3–3.5, 8.2.

### 1.3 Modules over coefficient algebras

For an H⁰-algebra `E`, define an **E-module system** as a system `V` with a unital associative action
`E ⊗ V → V` compatible with the four realizations; define `E`-linear maps, and the relative tensor
product `V ⊗_E W` as the coequalizer of the two actions on `V ⊗ E ⊗ W`. For finite étale `E` it is
exact in each argument. A pairing valued in an invertible rank-one `E`-module `L` is **E-balanced**
when `B(e·v, w) = B(v, e·w)` (LS, Definition 5.22 and Remark 5.23, p. 47).

API:

- The action of `E` is unital and associative in every realization.
- An `E`-balanced morphism `V ⊗ W → Z` factors uniquely through `V ⊗_E W`.
- The realization of `V ⊗_E W` is the relative tensor product of the realized `E`-modules.

**Checks.**

- For `E = ℚ` the relative tensor product is the ordinary one.
- For `E = ℚ × ℚ`, `(V₁, V₂) ⊗_E (W₁, W₂) = (V₁ ⊗ W₁, V₂ ⊗ W₂)`, with no cross terms.
- For a nontrivial involution `ι` of `E`, the pairing `B(v, w) = v·ι(w)` is not `E`-balanced:
  balanced pairings are distinct from sesquilinear ones.

*Needs:* §§0.3, 1.1.

### 1.4 Equidimensional coefficient modules

For finite étale `E` over a field `E₀`, an `E`-module `V` is **equidimensional of rank `N`** when
`V ⊗_(E,τ) Ē₀` has dimension `N` for every embedding `τ : E → Ē₀`. A system is equidimensional when
each realization is (LS, Definitions 5.24–5.25 and Lemma 5.26, pp. 47–48).

API:

- Each geometric coefficient idempotent cuts out a piece of rank `N`.
- For finite étale `E`, equidimensionality of rank `N` is equivalent to freeness of rank `N` over `E`.
- Finite scalar extension preserves the common rank, and the total `E₀`-dimension is `N·[E : E₀]`.

**Checks.**

- For `E = ℚ × ℚ`, ranks `(2, 2)` give `N = 2`.
- Ranks `(1, 3)` have total dimension four but are not equidimensional; the total dimension alone does
  not decide.
- The zero module is equidimensional of rank zero; positivity of `N` is a separate hypothesis.

*Needs:* §1.3.

### 1.5 General linear, symplectic and orthogonal structures

For an equidimensional `E`-module `V` of rank `N > 0`, a **`GL_N`-structure** is its `E`-linear
structure. A **`GSp_N`-structure** is a perfect alternating `E`-bilinear pairing `V ⊗_E V → L` with `L`
invertible of `E`-rank one, so `N` is even. A **`GO_N`-structure** is a perfect symmetric pairing into
such an `L`. Isomorphisms include a compatible similitude of `L`. The orthogonal similitude group is
kept whole, with its two components when `N` is even (LS, Definition 5.27, p. 48).

API:

- A paired structure carries its perfect `E`-bilinear pairing and its value line of `E`-rank one.
- Isomorphisms are `E`-linear isometries up to an isomorphism of value lines.
- After trivializing `V` and `L` the automorphism group is the standard `GL_N`, `GSp_N` or `GO_N` over
  each factor of `E`.

**Checks.**

- A symplectic rank-two module gives `GSp₂ = GL₂` with multiplier the determinant.
- No perfect alternating form exists in odd rank in characteristic zero.
- For `E = ℚ × ℚ` the value line of a perfect `E`-valued symmetric form has ℚ-dimension two; a line of
  ℚ-dimension one is the wrong carrier.
- Split `GO_(2r)` has two components; no connectedness follows from its reductive identity component.

*Needs:* §§1.3–1.4.

### 1.6 Finite-order character systems

Let `A` be an abelian scheme over `O_K[S⁻¹]`, `r` invertible on the base, and `χ` a character of
`A[r]` of finite order, defined after a finite étale splitting extension, with values in `ℚ(μ_r)`.
Pulling back the `χ`-summand of `[r]_*ℚ` gives a rank-one `ℚ(μ_r)`-module system `L_χ`. Descent uses
both Galois transport of the character and cyclotomic transport of its values; a primitive character
does not define a rank-one ℚ-system (LS, Lemma 5.28, p. 49).

API:

- The summand attached to `χ` is a module system over `ℚ(μ_r)`.
- Galois transport sends `L_χ` to `L_(gχ)` with the corresponding coefficient automorphism.
- The étale realization of `L_χ` is the origin-normalized rank-one character sheaf of
  SheafConvolutionOnAbelianVarieties §0.2.

**Checks.**

- The trivial character gives the constant rank-one system.
- A character of order three has coefficient field `ℚ(μ₃)` and ℚ-rank two.
- If `r` is not invertible, `[r]` is not finite étale in residue characteristic dividing `r`, and the
  construction fails.
- The order prime `r` is invertible on the model and may differ from the cohomological prime `p`.

*Needs:* §§0.5, 1.2–1.3; SheafConvolutionOnAbelianVarieties §0.2; AbelianSchemesAndArithmeticModuli
§A3.2.

### 1.7 Galois-orbit cohomology systems

Let `Y ⊂ X_K × A` be a smooth projective family of hypersurfaces in an abelian variety `A` of dimension
`n`, with `X` smooth over ℚ and with an integral model, and `O_K[S⁻¹]` finite étale over `ℤ[S′⁻¹]`.
Let `I` be a finite orbit of pairs `(ι, χ)` under `Gal(ℚ̄/ℚ) × Gal(ℚ^cyc/ℚ)`, with `χ` of order prime to
`p`, such that the twisted cohomology vanishes outside degree `n − 1`. Construct a constant finite
étale H⁰-algebra `E_I` on `X` with geometric idempotents indexed by `I`, and an `E_I`-module system
`V_I` whose geometric coefficient fibres are `R^(n−1) f_(ι)* g_(ι)^* L_χ`. Prove that `V_I` has `E_I`-rank
`N = n!·d`, `d = [H]^n/n!`, and ℚ-rank `|I|·N`, and that it is integral, polarized pure of weight
`n − 1` and has integral Frobenius (LS, Lemma 5.29 and proof, pp. 49–51; LS line 2261).

Both the algebra and the cohomology are compatible rational idempotent summands of finite étale
multiplication-cover pushforwards; the orbit of idempotents descends together with the cyclotomic
action, the ranks are computed on the splitting cover from SheafConvolutionOnAbelianVarieties §3.1,
and the lattice, polarization and integral Frobenius come from §0.5.

API:

- After a splitting extension `E_I` is the product indexed by `I` and `V_I` splits into the stated
  twisted cohomology fibres.
- `V_I` has `E_I`-rank `N` and ℚ-rank `|I|·N`.
- The same Galois-equivariant idempotent produces every realization and comparison.

**Checks.**

- A singleton orbit of a rational order-two character satisfying the concentration hypothesis gives
  `E_I = ℚ` and total rank `N`.
- Two idempotents with fibre rank `N = 6` give total rank 12.
- An orbit not stable under cyclotomic transport cannot be descended with the arithmetic permutation
  action alone.
- Pushing forward the cyclotomic field along `K/ℚ` can give the wrong rank; the algebra has rank
  `|I|`.

*Needs:* §§0.2, 0.5, 1.4, 1.6; SheafConvolutionOnAbelianVarieties §§3.1, 8.3.

### 1.8 Inversion and the coefficient-linear pairing

For an orbit system whose generic hypersurface is invariant under inversion up to translation,
construct the induced involution `i` and the pairing `(v, w) ↦ ⟨v, i·w⟩`. Prove that it is
`E_I`-balanced, perfect and valued in an invertible `E_I`-module; for `n` even it is alternating and
gives a `GSp_N`-structure, and for `n` odd it is symmetric and gives a `GO_N`-structure. All
translation and coefficient descent data are carried along (LS, Lemma 5.30 and proof, pp. 51–52; LS
line 2366).

Inversion exchanges a character with its inverse, and cup product identifies the `χ` and `χ⁻¹`
fibres; the translated inversion squares to the identity, and the balancing identity, the parity and
Galois descent are checked on the splitting cover. The original cup-product pairing, which couples `χ`
with `χ⁻¹`, is not itself `E_I`-bilinear.

API:

- The twisted cup-product form is the `E_I`-balanced form `B(v, w) = ⟨v, i·w⟩`.
- `B` identifies `V_I` with its `E_I`-linear dual tensored with the value line.
- `B` has symmetry `(−1)^(n−1)`.

**Checks.**

- For `n = 4` the pairing is alternating.
- For `n = 3` it is symmetric.
- For `χ ≠ χ⁻¹` the unmodified cup product joins different character factors and is not of the
  `E_I`-balanced diagonal form.

*Needs:* §§1.5, 1.7; SheafConvolutionOnAbelianVarieties §4.7.

### 1.9 Rational Frobenius polynomials for geometric orbit systems

For the orbit system `V_I` of §1.7, constructed as the image of a rational idempotent `e ∈ ℚ[Γ]` of the
deck group `Γ` of a finite multiplication cover, prove that at every closed point of good reduction the
characteristic polynomial of geometric Frobenius on the étale realization has rational coefficients and
algebraic-integer roots, hence lies in `ℤ[t]`. This geometric assertion is not part of the definition
of a Hodge–Deligne system; it supplies the integrality hypothesis of Faltings's lemma in §2.9 (LS,
construction in Lemma 5.29, pp. 49–51, used in Lemma 5.49, pp. 61–62).

A route: `e` commutes with the descended Frobenius. For an element `γ ∈ Γ` of finite order commuting
with Frobenius `F`, the composite `F∘γ` is the Frobenius of a twisted form of the fibre over the same
finite field, so its trace on cohomology is a rational integer by the point-count trace formula. Hence
`tr(F^m e) = Σ_γ c_γ tr(F^m γ) ∈ ℚ` for every `m ≥ 1`; Newton's identities give rational coefficients,
and integrality of the eigenvalues gives integer coefficients.

**Checks.**

- A single character summand of order three has Frobenius traces in `ℚ(μ₃)` that need not be rational;
  the full cyclotomic orbit is required.
- For the trivial character the polynomial is the characteristic polynomial of Frobenius on
  `H^(n−1)` of the hypersurface, in `ℤ[t]` by DeligneWeightsAndPurity §4.4.
- The eigenvalues of `V_I` are algebraic integers but the coefficients of an arbitrary summand are only
  algebraic integers; rationality is the content.

*Needs:* §§0.5, 1.7; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T4; DeligneWeightsAndPurity
§§0.2, 0.10, 4.4.

### Examples

An orbit of cardinality `m` with `E_I`-rank `N` has ℚ-rank `m·N`. Keeping only one character loses
the arithmetic and cyclotomic orbit and can lose rationality of the Frobenius coefficients, which is
why the full orbit, its idempotent and its descent are retained.

### Dependencies

Layer 0; PadicHodgeTheory §§3.3–3.5, 8.2; SheafConvolutionOnAbelianVarieties §§0.2, 3.1, 4.7, 8.3;
AbelianSchemesAndArithmeticModuli §A3.2; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T4;
DeligneWeightsAndPurity §§0.2, 0.10, 4.4.

## Layer 2: Semilinear groups and filtered tensor objects

This layer specializes algebraic-group theory to coefficient normalizers, semisimplification and
crystalline inner forms, defines adjoint profiles, top-weight sums and uniformity, and proves the
finiteness statements for global types, semisimplification geometries and local torsors.

### 2.1 Semilinear coefficient normalizers

Let `E/E₀` be finite étale in characteristic zero, `V` free over `E` of rank `N > 0`, and `H = GL_N`,
`GSp_N` or `GO_N` in its standard representation (with a perfect `E`-valued form after trivializing the
value line in the paired cases). Put `B = Res_(E/E₀) H` and define the **semilinear coefficient
normalizer** `G = N_(GL_(E₀)(V))(B)`. Prove that `G` is the group of invertible `E`-semilinear maps,
preserving the form up to a semilinear similitude in the paired cases, and that
`1 → B → G → Aut_(E₀)(E) → 1` is exact as a sequence of group schemes, with fppf-local lifts of
coefficient automorphisms. `B` is not the identity component when `H = GO_(2r)` (LS, Definition 5.31 and
Lemma 5.32, pp. 53–54).

After splitting `E`, the scalar algebra is the centralizer of the standard action of `B`, so a
normalizing map permutes the coefficient factors; the normalizer of the classical form on each factor
is the similitude group.

API:

- An element of `G` induces a unique coefficient automorphism `σ`.
- Membership in `G` is equivalent to invertible σ-semilinearity together with the similitude identity
  for the form in the paired cases.
- The kernel of `G → Aut_(E₀)(E)` is the coefficient-linear group `B`.

**Checks.**

- For `E = E₀`, `G = H`.
- For `E = E₀ × E₀` the factor swap lies in `G` but not in `B`.
- For split `GO₄`, `B` is disconnected, so `G°` is not `B`.
- Exactness is a statement about group functors; the sequence of rational points need not be
  surjective on the right.

*Needs:* §1.5; AbelianSchemesAndArithmeticModuli §§A6.30–A6.31; ReductiveGroups Layer 3.

### 2.2 Semilinear Frobenius centralizer bound

In the setting of §2.1, if `σ ∈ Aut_(E₀)(E)` has fixed algebra `E^σ = E₀` and `φ ∈ G` is σ-semilinear,
prove `dim Z_G(φ) ≤ dim H`. More generally, on each σ-cycle of geometric coefficient factors the
projection of `Z_B(φ)` to any one factor is injective, so the bound is one factor dimension per cycle
(LS, Lemma 5.33 and proof, pp. 53–54).

After splitting `E`, fixed algebra `E₀` means one permutation cycle; the commuting equations propagate
each component around the cycle from one component, and the remaining equation constrains that
component. `Z_G(φ)` and `Z_B(φ)` differ by a finite component quotient.

**Checks.**

- For `σ = id` on a split algebra with `d` factors the fixed-algebra hypothesis fails, and
  `dim Z_G(id) = d·dim H`, so no bound independent of `d` holds.
- For `E = E₀` and `φ` regular semisimple in `GL_N`, `dim Z = N ≤ N² = dim H`.
- For `E = E₀ × E₀`, `φ = (a, b)∘swap`, the centralizer projects isomorphically to the centralizer of
  `ab` in one factor.

*Needs:* §2.1; MordellLawrenceVenkatesh §§0.3–0.4.

### 2.3 Semisimplification in groups with reductive identity component

Let `G` be an algebraic group over a field of characteristic zero with reductive identity component,
and `Γ ⊂ G` a subgroup. For a cocharacter `λ` of `G` the **Richardson parabolic** is the dynamic
parabolic `P_λ = {g : lim_(t→0) λ(t) g λ(t)⁻¹ exists}`, with Levi `L_λ = Z_G(λ)` and unipotent radical.
Call `Γ` **G-completely reducible** when every `P_λ` containing `Γ` has a Levi containing `Γ`. Prove
that projecting `Γ` from a minimal Richardson parabolic containing it to its Levi gives a
G-completely reducible subgroup, unique up to `G(k̄)`-conjugacy, and, for the coefficient normalizers of
§2.1 over the fields used here (finite extensions of ℚ_p and ℚ), unique up to rational conjugacy after
the finite extensions stated in the source, depending continuously on a continuous representation.
For `Γ` the image of a representation this is its **G-semisimplification** (LS, Definitions 5.34–5.36
and Lemma 5.37, pp. 55–56; LV, Lemmas 2.4–2.5, pp. 905–906).

The dynamic parabolic is `TauCeti.Cocharacter.parabolic`; Levi decompositions and closed-orbit
uniqueness are the connected theory of ReductiveGroups Layers 6A and 7b, applied to the identity
component with the finite component action tracked separately. An element and its Levi image have
conjugate semisimple parts, and tori in `P` are unipotently conjugate into a Levi.

API:

- A minimal Richardson parabolic containing a given image exists.
- Its completely reducible Levi images form one geometric `G`-conjugacy class.
- Levi projection preserves the `G`-conjugacy class of the semisimple part of every element.

**Checks.**

- A split extension of two distinct characters of `GL₂` has the same semisimplification as their
  direct sum.
- A nontrivial upper-unipotent representation is not equal to its trivial semisimplification.
- For `(GL₂)² ⋊ C₂`, two cocharacters with the same parabolic in the identity component give different
  full parabolics according to whether the swap preserves their weights.
- For `G = GL(V)` the construction is the ordinary semisimplification of a representation.

*Needs:* §2.1; `TauCeti.Cocharacter.parabolic`; ReductiveGroups Layers 6A, 7, 7b.

### 2.4 Tensor G-structures

For an affine algebraic group `G/k` and a `k`-linear tensor category `C` with fibre functor `ω`, define a
**G-object** of `C` as an exact faithful `k`-linear symmetric monoidal functor `Rep_fd(G) → C` together
with a tensor isomorphism between its composite with `ω` and the forgetful functor. A change of
trivialization conjugates the induced homomorphism of Tannaka groups (LS, Definition 5.38 and Remark
5.39, p. 56).

API:

- A G-object evaluates on a chosen faithful representation of `G`.
- A tensor automorphism changes the induced map of fibre groups by conjugation.
- For representations of a Hopf algebra the induced map on points is
  `TauCeti.Tannaka.fgPointTensorIsoEquiv`, not a second group of points.

**Checks.**

- For `G = GL₁` a G-object is an invertible object with a chosen trivialization of its fibre.
- A functor sending the unit to a two-dimensional space is not monoidal and is rejected.
- A map preserving the standard vector space of `GSp` but not its alternating tensor is not a
  `GSp`-structure.

*Needs:* §0.3; MotivesAndAlgebraicCycles §§6.2, 6.8; `TauCeti.Tannaka.fgPointTensorIsoEquiv`.

### 2.5 Tensor filtrations and cocharacters

For `G` in characteristic zero with reductive identity component, define a **G-filtration** as an exact
tensor-compatible filtration of the forgetful functor `Rep_fd(G) → Vect`, with its associated graded
tensor structure. A splitting cocharacter `μ` gives `F^aV = ⊕_(j≥a) V_j`. Prove that two cocharacters
define the same filtration exactly when their dynamic parabolics agree and they are conjugate in that
parabolic, and that restriction to `G°` identifies G-filtrations with `G°`-filtrations; a parabolic
alone determines a filtration only up to reindexing (LS, Definitions 5.40–5.41 and Lemma 5.42,
pp. 56–58).

API:

- A cocharacter induces a decreasing weight filtration on every representation.
- Two cocharacters give equal filtrations exactly when they have the same parabolic and are conjugate
  in it.
- The associated graded is `F^a/F^(a+1)` as a tensor functor, and restriction to `G°` preserves it.

**Checks.**

- In `GL₂`, weights `(1, 0)` and `(2, 0)` have the same upper triangular parabolic but different indexed
  filtrations.
- The trivial cocharacter gives the filtration concentrated in degree zero.
- In `GL₂² ⋊ C₂` a cocharacter with unequal component weights is not stabilized by the swap.
- Filtered vector spaces form an exact category, not an abelian one.

*Needs:* §§2.3–2.4; `TauCeti.Cocharacter.parabolic`.

### 2.6 Crystalline tensor structures and inner forms

For a crystalline local Galois representation with values in `G` (as in §2.5), applying `D_cris` as an
exact tensor functor gives filtered φ-data with an inner form `G′` of `G` and a `G′`-filtration. A
homomorphism `G₁ → G₂` induces a homomorphism `G₁′ → G₂′` compatible with tensors. In the
coefficient-normalizer case `G′` is identified with the de Rham coefficient normalizer through the
comparison isomorphism; for an arbitrary G-object there is no canonical equality `G′ = G` (LS, Lemma
5.43 and proof, pp. 58–59).

The two fibre functors (forgetful and underlying `D_cris`) are compared through their torsor of tensor
isomorphisms; `G′` is the twist of `G` by this torsor. In the standard coefficient representation the
coefficient action and the pairing recognize the de Rham group.

API:

- The inner form `G′` is the group of tensor automorphisms of the `D_cris` fibre functor.
- Functoriality lands in `G₂′`, not in `G₂` without a chosen trivialization.
- In the coefficient case `G′` is the semilinear normalizer of the de Rham coefficient module.

**Checks.**

- For an unramified character with values in `GL₁`, `G′ = GL₁` canonically.
- For `GL_N` the inner form is `GL(D_cris(V))`, isomorphic to `GL_N` after choosing a basis.
- A crystalline representation with values in `PGL₂` whose tensor-isomorphism torsor is nontrivial has
  `G′` a nonsplit inner form; identifying `G′` with `G` rationally is wrong.

*Needs:* §§2.1, 2.4–2.5; PadicHodgeTheory §§3.3–3.6, 5.5; MotivesAndAlgebraicCycles §6.8.

### 2.7 Adjoint Hodge profiles and top-weight sums

Given a G-filtration on a characteristic-zero group, define the **adjoint Hodge profile**
`h^a = dim gr^a Lie(G)`, a finitely supported function `ℤ → ℕ` (a `Finsupp`); in the polarized weight-zero
adjoint case `h^a = h^(−a)`. Put `D = Σ_a h^a`, `A = Σ_(a>0) h^a` and `B = Σ_(a>0) a·h^a`. List the `D`
weights with multiplicity in nonincreasing order `w₁ ≥ … ≥ w_D`, and define the **top-weight sum**
`T(x) = Σ_(j≤⌊x⌋) w_j + (x − ⌊x⌋)·w_(⌊x⌋+1)` for real `x ∈ [0, D]`, with `T(D) = Σ_j w_j`. `T` is
continuous and piecewise linear, each weight `a` contributing `h^a` times (LS, Definitions 5.44–5.45,
p. 60; LV, (10.2)–(10.3), pp. 968–969, Lawrence–Venkatesh's `T` on printed p. 969).

API:

- `A` counts the positive weights with multiplicity.
- `B` is the sum of each positive weight times its multiplicity.
- For an integer `0 ≤ m ≤ D`, `T(m)` is the sum of the `m` largest weights.
- Repeating the profile `d` times gives `T_rep(d·x) = d·T(x)`.
- For a symmetric profile `D = h⁰ + 2A`.
- `T` is nondecreasing on `[0, A + h⁰]`, strictly increasing on `[0, A]`, and `T(A) = T(A + h⁰) = B`.

**Checks.**

- For weights `2, 0, −2` (each once), `T(1/2) = 1`, `T(1) = 2` and `T(2) = 2`.
- For the zero profile `D = A = B = 0` and only `T(0)` is defined.
- Summing multiplicities instead of weights would give `T(1) = 1` for weights `2, 0, −2`, which is
  wrong.
- Every argument of `T` in a numerical criterion must lie in `[0, D]`.

*Needs:* §2.5; Mathlib `Finsupp`.

### 2.8 Uniform coefficient filtrations

A filtration of a coefficient-normalizer object is **uniform** when the adjoint Hodge profile on `H` is
the same at every geometric embedding of the coefficient algebra. Prove that if `[E : E₀] = d` the
restriction-of-scalars profile is `d` times the single-factor profile, so `T_Res(d·x) = d·T_H(x)`. The
numerical inequalities of the non-density theorems use `h_H` and `T_H`, never the scaled profile (LS,
Definition 5.46 and Lemma 5.48, pp. 60–61).

API:

- Every coefficient embedding carries the same profile `h_H`.
- `h_Res^a = d·h_H^a` and `T_Res(d·x) = d·T_H(x)`.
- Scalar extension preserves the common single-factor profile.

**Checks.**

- For `E = E₀ × E₀` with two identical `SL₂` adjoint profiles the restriction profile doubles each
  multiplicity.
- Two rank-two coefficient factors with Hodge types `(1, 0)` and `(2, 0)` are equidimensional but not
  uniform.
- For `E = E₀` the scaling factor is one.

*Needs:* §§1.4, 2.1, 2.7.

### 2.9 Finiteness of global coefficient-group types

Fix `p`, a finite set `T` of primes containing `p`, the coefficient normalizer `G/ℚ_p` of §2.1 with its
standard representation and coefficient permutation action, a rank and an integer weight `w ≥ 0`.
Prove that the continuous G-completely reducible representations `G_ℚ → G(ℚ_p)` unramified outside `T`
whose Frobenius characteristic polynomials outside `T` lie in `ℤ[t]` with roots of Weil weight `w` form
finitely many `G(ℚ_p)`-conjugacy classes (LS, Lemma 5.49 and proof, pp. 61–62; LS line 2810).

A route: the component action has bounded degree, so Hermite–Minkowski leaves finitely many extensions
killing it; on each, the connected refinement of Faltings's lemma leaves finitely many
`GL`-classes of the standard representation; conjugacy rigidity of a finite component group follows
from vanishing of its characteristic-zero `H¹` on the Lie algebra; and a geometric conjugacy class
splits into finitely many rational classes by §2.11 applied to the centralizer. The finiteness of
`GL`-classes alone does not give finiteness of `G`-classes, and the coefficient-linear subgroup of a
`GO` factor is not connected.

**Checks.**

- For `G = GL_N` the statement is Faltings's lemma, MordellLawrenceVenkatesh §1.2.
- For `G = GO₂` two representations conjugate in `GL₂` need not be `G(ℚ_p)`-conjugate; finiteness
  still holds by §2.11.
- Dropping integrality of the Frobenius polynomials (keeping only algebraic-integer eigenvalues) leaves
  the hypothesis of Faltings's lemma unverified; §1.9 supplies integrality for orbit systems.

*Needs:* §§2.3, 2.11; MordellLawrenceVenkatesh §1.2; ArithmeticGaloisDuality §R02.3.1.

### 2.10 Finitely many semisimplification geometries

Let `G` be an algebraic group over a characteristic-zero field `E` with reductive identity component and
`H ⊂ G` an `E`-defined G-completely reducible subgroup. Prove that up to the action of `Z_G(H)(E)` only
finitely many `E`-defined pairs `(P, M)` occur with `P` a Richardson parabolic, `M` a Levi of `P` and
`H ⊂ M` (LS, Lemmas 5.50 and 5.52, p. 62).

A route: choose a maximal `E`-split torus of `Z_G(H)`; maximal split tori are conjugate under
`Z_G(H)(E)`, so allowable Levi factors are described by its `E`-cocharacters; the finitely many
root-weight hyperplanes cut the cocharacter space into finitely many faces, each recording one parabolic
and Levi. The finite component action is tracked without identifying the parabolic of `G` with that of
`G°`.

**Checks.**

- For `H = 1` and `G = GL₂` there are infinitely many Borels but one class of pairs up to `GL₂`.
- For `H` the diagonal torus of `GL_n`, `Z_G(H) = H` acts trivially on the pairs, which correspond to
  ordered set partitions of `{1, …, n}` (block-diagonal Levi and an order of the blocks): 13 pairs for
  `n = 3`.
- The statement is finiteness up to centralizer conjugacy, not finiteness of parabolics.

*Needs:* §2.3; ReductiveGroups Layers 4, 7.

### 2.11 Finiteness of local nonabelian Galois cohomology

For a finite extension `F/ℚ_p` and a linear algebraic group `H` over `F`, prove that the pointed set
`H¹(F, H)` of `H`-torsors is finite; consequently, for a closed subgroup `M ⊂ G` over `F`, each geometric
`G`-conjugacy class of `F`-rational subgroups or homomorphisms with values in `G` that meets `F`-points
splits into finitely many `G(F)`-conjugacy classes, indexed by the kernel of
`H¹(F, Z) → H¹(F, G)` for the relevant centralizer `Z` (Borel–Serre; Serre, *Galois cohomology*, III
§4.3, Theorem 4, and I §5.4, Corollary 1 to Proposition 36).

A route: for a finite group `H` this is finiteness of extensions of bounded degree of a p-adic field;
for connected reductive `H` it is the Kottwitz description of PadicHodgeTheory §5.5; the unipotent
radical has trivial `H¹` in characteristic zero; and the general case follows from the exact sequences
of nonabelian cohomology with twisting.

**Checks.**

- `H¹(ℚ_p, GL_n)` is trivial (Hilbert 90).
- `H¹(ℚ_p, μ₂) = ℚ_p^×/ℚ_p^(×2)` has four elements for `p` odd and eight for `p = 2`.
- `H¹(ℚ_p, O_n)` classifies nondegenerate quadratic forms of dimension `n`; it is finite but not a
  single point.

*Needs:* PadicHodgeTheory §5.5; ReductiveGroups Layers 5, 6A.

### Examples

For the weight list `(2, 0, −2)`, `T(1/2) = 1`, `T(1) = 2` and `T(2) = 2`. In `GL₂`, cocharacters
`(1, 0)` and `(2, 0)` define the same triangular parabolic and different indexed filtrations, so a
filtration is not determined by its parabolic.

### Dependencies

Layers 0–1; ReductiveGroups Layers 3–7b; `TauCeti.Cocharacter.parabolic`;
`TauCeti.Tannaka.fgPointTensorIsoEquiv`; MotivesAndAlgebraicCycles §§6.2, 6.8; PadicHodgeTheory
§§3.3–3.6, 5.5; AbelianSchemesAndArithmeticModuli §§A6.30–A6.31; MordellLawrenceVenkatesh §§0.3–0.4,
1.2; ArithmeticGaloisDuality §R02.3.1.

## Layer 3: Period orbits and transcendence transfer

This layer places period maps in one orbit of the monodromy group, identifies its parabolic
stabilizer, takes the codimension consequence of Ax–Schanuel and transfers it to p-adic non-density
through analytic radicals and Krull intersection.

### 3.1 Periods in a single monodromy orbit

For a Hodge–Deligne system on `X` with differential monodromy group `G_mon` (§0.6), prove that the local
complex period maps and the p-adic period map `Φ_p` of §0.7, after the fibre identifications of §0.6,
take values in one orbit `D_mon` of `G_mon` on the flag variety of the reference fibre: the orbit is cut
out by the horizontal tensors of the tensor category generated by the connection, which every Hodge
filtration respects. Over a field that is not algebraically closed the identifications use the torsor of
tensor isomorphisms, and no rational trivialization is chosen without an existence argument (LS,
Lemma 6.1, pp. 63–64).

**Checks.**

- For a constant system the period map is constant and `D_mon` is a point.
- A flag of the right dimensions that does not respect a horizontal tensor (for instance a Hodge line
  not isotropic for a flat symplectic form) is not in `D_mon`.
- For the Legendre family `D_mon` is the full `ℙ¹` of lines in `H¹`, the Lagrangian period variety of
  MordellLawrenceVenkatesh §3.8 in rank two.

*Needs:* §§0.6–0.7, 2.5; MotivesAndAlgebraicCycles §6.8; ShimuraData §§3.5–3.6.

### 3.2 Parabolic stabilizers of period orbits

For a polarized pure variation, prove that the stabilizer in the identity component of `G_mon` of a
Hodge filtration is a parabolic subgroup, so the orbit `D_mon` is projective. The route uses normality
of the connected monodromy group in the derived generic Mumford–Tate group and the Hodge cocharacter:
after a positive power the inner action of the Hodge cocharacter on connected monodromy lifts to a
cocharacter of it, whose dynamic parabolic is the stabilizer; finite components do not change the
connected orbit (LS, Lemma 6.2, p. 64).

**Checks.**

- For `SL₂` acting on `ℙ¹` through a weight-one variation the stabilizer of a Hodge line is a Borel.
- Without normality a reductive group acting on a flag variety can have nonclosed orbits (the diagonal
  torus of `SL₂` on `ℙ¹` has the open orbit `𝔾_m`), so the hypothesis is needed.
- The statement is for the connected monodromy orbit, not for every orbit of a reductive group on a flag
  space.

*Needs:* §3.1; ShimuraData §§1.2, 3.4, 3.7 with gap:andre-monodromy-normality;
`TauCeti.Cocharacter.parabolic`.

### 3.3 Analytic radicals for period ideals

Let `Φ` be a local holomorphic period map in smooth coordinates at a point `x`, and `I` the ideal of
convergent germs at `x` defining `Φ⁻¹(Z)` for an algebraic `Z`. Prove that if an algebraic function `g`
on the base vanishes on the zero germ of `I`, then `g^m ∈ I` for some `m ≥ 1`, with convergent
coefficient germs (LV, proof of Lemma 9.3, pp. 966–968; LS, proof of Theorem 6.4, pp. 65–67).

This is Rückert's Nullstellensatz `I(V(𝔞)) = √𝔞` applied to the finitely generated ideal of the
period equations in `ℂ{z₁, …, z_m}`.

**Checks.**

- For `I = (z²)`, `z` vanishes on `V(I)` but `z ∉ I`; `z² ∈ I`, so the radical is essential.
- For `I = (1)` the zero germ is empty and every `g` satisfies `g ∈ I`.
- For `I = 0` only `g = 0` vanishes on the zero germ (the whole neighbourhood).

*Needs:* ComplexKahlerGeometry K3.

### 3.4 Algebraic degeneracy from period codimension

Let `X` be smooth irreducible over ℂ of dimension `d ≥ 1`, carrying a pure polarized integral variation
with connected monodromy period orbit `D_mon`. Prove that if an algebraic subset `Z ⊂ D_mon` has
codimension at least `d`, then every positive-dimensional irreducible analytic component of the inverse
image of `Z` under a local lift of the period map is contained in a proper algebraic subvariety of `X`;
zero-dimensional components are points and are also proper. The statement is componentwise: it does not
say that infinitely many components share one proper algebraic closure (LS, Lemma 6.3, pp. 64–65; LV,
Corollary 9.2, pp. 963–965).

A route: apply the pure Ax–Schanuel theorem to `W = X × Z` and the graph of the period map. If `U` is a
component of `W ∩ graph` with Zariski-dense projection to `X`, then
`dim U ≤ dim W + dim graph − dim(X × D_mon) = (d + dim Z) + d − (d + dim D_mon) = d − codim Z ≤ 0`, so
a positive-dimensional component has degenerate projection.

**Checks.**

- For `d = 0` every point is dense in `X`, so positive dimension of `X` is necessary.
- For a constant variation `D_mon` is a point, `Z` has codimension `0 < d`, and the hypothesis fails;
  indeed the inverse image is all of `X`.
- For `X` a curve and `Z` a point of codimension `≥ 1` in `D_mon`, the inverse image is discrete, as the
  theorem predicts.
- Only integral polarized pure variations are covered; no mixed or nonintegral extension is claimed.

*Needs:* §3.2; AbelianSchemesAndArithmeticModuliPartII Layer B3 with gap:period-map-ax-schanuel.

### 3.5 Transfer to p-adic non-density

Let `X/ℚ` be smooth geometrically connected of dimension `d ≥ 1` with a pure polarized integral
Hodge–Deligne system, a smooth p-adic residue disk `Ω` and its monodromy period orbit `D_mon`. Prove that
for an algebraic `Z ⊂ D_mon` of codimension at least `d`, the set `Φ_p⁻¹(Z) ∩ Ω` is contained in a proper
Zariski-closed subset of `X`. After shrinking to finitely many affinoid subdisks the statement involves
finitely many minimal primes; finitely many residue disks combine by multiplying nonzero algebraic
equations (LS, Theorem 6.4, pp. 65–67, LS line 2979; LV, Lemma 9.3, pp. 965–968).

A route: the complex and p-adic period maps are given by one tuple of power series with coefficients in
a number field, so formal Taylor expansions transfer through an abstract isomorphism `ℚ̄_p ≅ ℂ`, whose
continuity is never used. For each local analytic component the complex statement §3.4 gives a nonzero
algebraic equation `g`, and §3.3 places `g^m` in the period ideal; a norm descends `g` from a finite
coefficient extension, and finite linear systems descend to the coefficient field. In the Tate algebra
of an affinoid subdisk, Krull intersection in the localization at each prime turns membership modulo
every power of the maximal ideal into membership in the ideal; the Tate algebra has finitely many
minimal primes over the period ideal, and the product of their equations vanishes on `Φ_p⁻¹(Z) ∩ Ω`,
nonzero because the germ map of an irreducible `X` is injective.

**Checks.**

- Formal vanishing at a point is not ideal membership in the Tate algebra; Krull intersection is the
  step that closes this, and it needs a Noetherian local ring.
- An infinite union of nondense subsets can be dense (the rational points of `𝔸¹` are a countable union
  of points); only finite unions over components and disks are taken.
- For `Z = D_mon` (codimension zero) and `d ≥ 1` the hypothesis fails, and indeed `Φ_p⁻¹(Z) = Ω` is
  Zariski dense.

*Needs:* §§0.7, 3.3–3.4; MordellLawrenceVenkatesh §§2.5–2.6, 2.8; RestrictedPowerSeries §§2.1, 5.2;
Mathlib `Ideal.iInf_pow_eq_bot_of_isLocalRing`.

### Examples

For the germ ideal `(z²)`, `z` vanishes on its zero set but lies only in the radical; the power `z²`
supplied by Rückert's theorem is what survives the transfer to p-adic coefficients. In dimension zero a
point is dense in itself, so positive base dimension is essential.

### Dependencies

Layers 0 and 2; ShimuraData §§1.2, 3.4–3.7; MotivesAndAlgebraicCycles §6.8;
AbelianSchemesAndArithmeticModuliPartII Layer B3; ComplexKahlerGeometry K3; RestrictedPowerSeries
§§2.1, 5.2; MordellLawrenceVenkatesh §§2.5–2.6, 2.8.

## Layer 4: Balanced monodromy and semisimple fibres

This layer describes the index partition of a subdirect product, strong balance relative to a
Frobenius permutation and its verification for torsion orbits, bounds fixed semisimple filtration loci
and proves non-density for semisimple integral fibres.

### 4.1 Index classes of subdirect monodromy

Let `H` be a connected semisimple group in characteristic zero with simple adjoint quotient and
`L ⊂ H^I` a closed subgroup surjecting onto each factor, `I` finite and nonempty. For `i, j ∈ I` put
`i ∼ j` when the projection of `L` to `H × H` (factors `i`, `j`) is not the full product, equivalently
is the graph of an isogeny after central quotients. Prove that `∼` is an equivalence relation, and that
projection onto one representative of each class is surjective with finite kernel. This applies to
`SL_N` (`N ≥ 2`), `Sp_(2r)` (`r ≥ 1`) and `SO_N` (`N = 3` or `N ≥ 5`); `SO₂` and `SO₄` are excluded
(LS, Lemma 6.5, pp. 67–68; LS line 3082).

A route: Goursat's lemma for simple Lie algebras applies to each two-factor projection; a three-factor
projection gives transitivity, and induction on the number of classes gives the last assertion.

API:

- The relation `∼` records dependence of two factor projections through the adjoint simple quotient.
- `∼` is reflexive, symmetric and transitive.
- Projection to a set of class representatives is a central isogeny onto the full product.

**Checks.**

- The diagonal `H ⊂ H²` has one class and projects with finite kernel onto either factor.
- The product `H²` has two singleton classes.
- `SO₄` has two simple adjoint factors and fails the hypothesis; Goursat's single-factor conclusion
  would be wrong for it.

*Needs:* §0.6; MordellLawrenceVenkatesh §0.24; ReductiveGroups Layer 7.

### 4.2 Strongly balanced monodromy

For the index partition of §4.1 and an integer `c ≥ 1`, the subgroup is **c-balanced** when all classes
have the same cardinality and there are at least `c` classes. Given a permutation `σ` of `I`, it is
**strongly c-balanced** when moreover `σ` preserves the partition and every σ-orbit meets at least `c`
distinct classes. For a subgroup of a coefficient normalizer the condition is imposed on its
intersection with the product of the derived classical factors after algebraic closure; scalar centres
and similitude characters supply no independent directions (LS, Definition 6.6 and Example 6.7, p. 68).

API:

- c-balance is equal class sizes with at least `c` classes.
- Strong c-balance adds σ-invariance of the partition and the orbitwise lower bound on classes met.
- Strong c-balance implies strong c′-balance for `1 ≤ c′ ≤ c`, and is invariant under equivariant
  relabelling of `I`.

**Checks.**

- Four classes `{1,2}, {3,4}, {5,6}, {7,8}` with `σ = (13)(24)(57)(68)` are 4-balanced but only strongly
  2-balanced: each σ-orbit meets two classes.
- A diagonal subgroup on `d` indices is strongly 1-balanced for every σ and never strongly 2-balanced.
- The full product has singleton classes; if σ fixes an index it is not strongly 2-balanced, however
  many factors there are.

*Needs:* §§2.1, 4.1.

### 4.3 Torsion-orbit monodromy is strongly balanced

For a family of primitive smooth ample hypersurfaces in an abelian variety of dimension `n > 2`, not
constant up to translation, with classical convolution monodromy as in SheafConvolutionOnAbelianVarieties
§6.7, prove that for every `c ≥ 1` the torsion character of SheafConvolutionOnAbelianVarieties §8.3 can
be chosen so that the coefficient system `V_I` of §1.7 has strongly c-balanced differential monodromy
relative to the residue Frobenius permutation of the index set (LS, Lemma 6.8, pp. 68–69).

A route: the c independent conjugate-character factors of SheafConvolutionOnAbelianVarieties §8.3,
present for every Galois conjugate after the stated Frobenius powers, become independent index classes;
Galois acts transitively on the orbit, giving equal class sizes, and Frobenius preserves the relation.
SheafConvolutionOnAbelianVarieties §2.4 returns from the algebraically closed field of the convolution
groups to the de Rham group.

**Checks.**

- Big monodromy for one selected character is not enough: the conjugate-uniform form is needed so that
  every Frobenius cycle meets `c` classes.
- For `c = 1` the statement is that the partition is σ-stable with equal class sizes.
- A family constant up to translation has finite monodromy on the twisted cohomology and is excluded.

*Needs:* §§0.6, 1.7, 4.2; SheafConvolutionOnAbelianVarieties §§2.4, 6.7, 8.3.

### 4.4 Codimension of semisimple isomorphism orbits

Let a uniform coefficient filtration have single-factor profile `h` on `H` and strongly c-balanced
monodromy relative to σ, with `E^σ = E₀` on the chosen Frobenius cycle. For an integer `e > 0` assume
`A ≥ (e + dim H)/c`. Prove that in the monodromy flag orbit the locus whose filtered Frobenius module is
isomorphic to a prescribed one has codimension at least `e` (LS, Lemma 7.2, pp. 70–71; LS line 3205).

A route: project the period orbit to `c` independent factor flags in one Frobenius cycle; the product
flag variety has dimension `c·A`, while an orbit of the semilinear centralizer has dimension at most
`dim H` by §2.2; the projection from the full monodromy orbit is smooth and homogeneous.

**Checks.**

- With `c = 1` and `e = 1` the hypothesis is `A ≥ 1 + dim H`.
- The estimate is for fixed isomorphism data; the moduli of all filtered φ-modules is not claimed to be
  finite.
- For `H = GL₂` with weights `(1, 0)`, `A = 1` and `dim H = 4`, so `A ≥ (1 + 4)/c` needs `c ≥ 5`
  independent factors; a single factor gives nothing.

*Needs:* §§2.2, 2.8, 3.2, 4.2.

### 4.5 Non-density for semisimple integral fibres

Let `𝒳` be of finite type over `ℤ[S⁻¹]` with smooth geometrically connected generic fibre `X` of
dimension `d ≥ 1`. Let `V` be an integral polarized pure Hodge–Deligne system with integral Frobenius
and Frobenius characteristic polynomials in `ℤ[t]` outside `S`, with uniform coefficient filtration and
strongly c-balanced monodromy, and assume `A ≥ (d + dim H)/c`. Prove that the integral points whose
global coefficient-group representations are G-completely reducible are not Zariski dense in `X`. The
coefficient permutation representation is fixed, and `S` is enlarged only by finitely many primes (LS,
Theorem 7.3, pp. 71–72; LS line 3259).

A route: §2.9 leaves finitely many semisimple G-representations; on each of finitely many residue disks a
fixed representation gives one centralizer orbit of filtrations, of codimension at least `d` by §4.4
with `e = d`; §3.5 and a finite union conclude.

**Checks.**

- The statement covers only semisimple fibres; the all-points theorem is §6.1.
- For `d = 0` the conclusion is false (a point is dense in itself), and the hypothesis `d ≥ 1` excludes
  it.
- Enlarging `S` enlarges the set of integral points, so non-density for a larger `S` implies it for a
  smaller one.

*Needs:* §§0.2, 1.9, 2.9, 3.5, 4.4.

### Examples

On eight indices with classes `{1,2}, {3,4}, {5,6}, {7,8}`, the permutation `(13)(24)(57)(68)` preserves
the partition and each orbit meets two classes: the subgroup is 4-balanced, strongly 2-balanced and not
strongly 4-balanced.

### Dependencies

Layers 0–3; SheafConvolutionOnAbelianVarieties §§2.4, 6.7, 8.3; MordellLawrenceVenkatesh §0.24;
ReductiveGroups Layer 7.

## Layer 5: Balanced associated gradeds and codimension

This layer defines central weights, induced Levi filtrations, balance and bifiltered Frobenius types,
derives balance from global purity over ℚ, proves finiteness of local graded types and the root-pairing
estimates, and ends with the fixed-type codimension theorem.

### 5.1 Central weights of filtrations

For an algebraic group `S` in characteristic zero with reductive identity component, define
`a_S = X_*(Z(S°)°) ⊗ ℚ`, identified with the ℚ-dual of `X^*(S°) ⊗ ℚ` through the central pairing; these
geometric spaces are computed over an algebraic closure and keep their Galois action, rational
cocharacters giving invariant classes. The **central weight** `w_S(μ)` of a rational cocharacter `μ` is
its projection to `a_S`. For a Levi `M ⊂ G`, restriction of characters gives a canonical inclusion
`ι_(GM) : a_G → a_M` splitting the opposite projection. The **modular character** of a parabolic `P` is
`γ_P = det(Ad | Lie P)⁻¹`, paired additively with cocharacters (LS, Definition 8.4, pp. 74–75; LV,
§§11.1–11.2, pp. 985–986).

API:

- `a_S` is the space of rational central cocharacters, paired with rational characters.
- A cocharacter has a well-defined central weight in `a_S`.
- `ι_(GM)` splits the projection `a_M → a_G` and is compatible with restriction of characters.

**Checks.**

- For `GL_r` the central weight of the diagonal cocharacter with exponents `a_i` is their average
  `(Σ a_i)/r` times the scalar cocharacter.
- For semisimple `S`, `a_S = 0`.
- For the upper triangular Borel of `GL₂`, `γ_P(diag(a, b)) = a⁻¹b`; for `μ(t) = diag(t, 1)`,
  `⟨γ_P, μ⟩ = −1`.

*Needs:* §2.5; ReductiveGroups Layers 4, 7.

### 5.2 Filtrations induced on a Levi quotient

Let `G` be as in §2.3, `P` a Richardson parabolic with Levi quotient `M` and `F` a G-filtration. Choose a
splitting cocharacter of `F` with values in `P`; its projection defines the **induced Levi filtration**
`F_M`. Prove that `F_M` does not depend on the choice: with `Q = P_μ` the stabilizer of `F`, the
μ-fixed points of the single `Q`-orbit `Q·P` in `G/P` are conjugate under `Z_Q(μ)`. For `GL(V)`, `F_M` is
the filtration induced by `F` on the graded pieces of the `P`-flag (LS, Lemma 8.2 and Definition 8.3,
pp. 73–74; LV, Lemmas 11.1–11.2, pp. 986–989; LV printed p. 988 with the corrected graded piece, see
Source corrections).

API:

- The construction returns the `M`-filtration `F_M` from `F` and `P`.
- Changing the `P`-valued splitting leaves `F_M` unchanged.
- For `GL(V)` it is the filtration `F^j ∩ f_k` modulo `f_(k−1)` on `gr_k^f`.

**Checks.**

- For `P = G`, `F_M = F`.
- For `GL₂` and a line `L` (the flag `0 ⊂ L ⊂ V`), the two induced one-dimensional filtrations record
  whether `L` is the Hodge line.
- Two splittings conjugate by an upper unipotent element give the same `F_M`.
- For diagonal `μ` in `SL₂` the two fixed points of `ℙ¹` lie in distinct orbits of the upper Borel and
  are not conjugate under its torus; the fixed-point step needs one `Q`-orbit.

*Needs:* §§2.5, 5.1.

### 5.3 Balanced, weakly balanced and semibalanced filtrations

For `F` and `P → M` as in §5.2, `F` is **balanced** when `w_M(F_M) = ι_(GM)(w_G(F))`, **weakly balanced**
when `⟨γ_P, F_M⟩ = 0` and **semibalanced** when `⟨γ_P, F_M⟩ ≤ 0`. Prove that balanced implies weakly
balanced implies semibalanced, and that restriction to `G°` preserves all three; the last two test one
character and are in general weaker than balance (LS, Definition 8.4 and Example 8.6, pp. 74–76; LV,
§11.4, pp. 989–990).

API:

- Balance compares central weights in `a_M`.
- Balance implies weak balance, since `γ_P` vanishes on the centre of `G`; weak balance implies
  semibalance.
- For `GL(V)`, `F` is balanced exactly when every nonzero graded block has the same average `F`-weight
  as `V`.

**Checks.**

- In `GL₆` with an increasing `2 + 2 + 2` flag `f₀ ⊂ f₁ ⊂ V` and a two-step filtration with
  `dim F¹ = 3`, write `a₀ = dim F¹ − dim(F¹ ∩ f₁)`, `a₁ = dim(F¹ ∩ f₁) − dim(F¹ ∩ f₀)` and
  `a₂ = dim(F¹ ∩ f₀)` for the contributions of `F¹` to the top, middle and bottom blocks;
  `⟨γ_P, F_M⟩ = 4(a₀ − a₂)` and balance is `(1, 1, 1)`.
- In the same example weak balance is `a₀ = a₂` and semibalance is `a₀ ≤ a₂`.
- A generic `F¹` meets `f₀` trivially and `f₁` in a line, giving `(2, 1, 0)`, which is not
  semibalanced; semibalance is not automatic on the flag variety.
- With the inverse-determinant convention the sign is `≤ 0`; with `det(Ad)` it would be `≥ 0`.

*Needs:* §§5.1–5.2.

### 5.4 Global purity forces balance over ℚ

Let `ρ : G_ℚ → G(ℚ_p)` be crystalline at `p`, pure of integer Weil weight `w` on the faithful
representation, with image in a Richardson parabolic `P`. Prove that the de Rham Hodge filtration induced
on the corresponding inner Levi quotient is balanced relative to `P`. For `GL` this says that every global
graded subquotient has Hodge–Tate average `w/2`, with the convention that the Tate object with geometric
Frobenius `q` has de Rham weight 1. The statement is over ℚ; it is false in this form over number fields
with several embeddings (LS, Lemmas 8.1 and 8.7, pp. 73 and 76–77).

A route: MordellLawrenceVenkatesh §1.13 applies to every rational character of the Levi that is trivial
on `Z(G)`; the resulting identities are the central-weight equality, transported through the inner form
of §2.6.

**Checks.**

- For `ρ` the `p`-adic Tate module of an elliptic curve over ℚ (weight 1) any one-dimensional global
  subquotient would need Hodge–Tate weight `1/2`; there is none, consistent with irreducibility.
- A CM Hecke character over an imaginary quadratic field has unequal embedding weights; the ℚ statement
  does not extend by notation.
- For `w = 0` and `ρ` unramified with finite image every subquotient has weight 0.

*Needs:* §§2.6, 5.3; MordellLawrenceVenkatesh §§1.10, 1.13.

### 5.5 Bifiltered Frobenius objects and graded types

A **bifiltered coefficient Frobenius object** is `(V, φ, F, f)` with Hodge G-filtration `F`, φ-stable
auxiliary G-filtration `f` and the given semilinear coefficient structure. Its **graded type** is the
`G`-conjugacy class of `(P_f, φ_M, F_M)`, where the numerical indexing of `f` is forgotten and the full
indexing of `F_M` is kept (LS, Definition 8.8 and Remark 8.9, pp. 77–78).

API:

- A bifiltered object packages two compatible filtrations with φ-stability of the auxiliary one.
- The graded type is the parabolic with the filtered Frobenius Levi data up to `G`-conjugacy.
- Strictly order-preserving reindexing of `f` leaves the graded type unchanged.

**Checks.**

- Reindexing a two-step `f` from weights `(1, 0)` to `(5, 0)` leaves the type unchanged.
- Changing `F` from weights `(1, 0)` to `(5, 0)` changes the type.
- Two φ-stable flags with the same quotient dimensions and different Frobenius eigenvalues on the graded
  pieces have different types; types are not characteristic polynomials of the ungraded `φ`.

*Needs:* §§2.3, 2.6, 5.2.

### 5.6 Finite cyclic cocycles in unipotent groups

Let `U` be a unipotent algebraic group in characteristic zero and `ψ` an automorphism of order dividing
`r ≥ 1`. Prove that if `u·ψ(u)⋯ψ^(r−1)(u) = 1` then `u = v⁻¹ψ(v)` for some `v ∈ U`, so `H¹(C_r, U) = 1` for
this action (LS, Lemma 8.13, p. 80; LS line 3661).

A route: induct along a ψ-stable central series with vector-group quotients; on a vector quotient the
averaging homotopy (division by `r`) solves the equation, and the correction lifts into the central
kernel.

**Checks.**

- For `U = 𝔾_a` and `ψ = −1`, `r = 2`, the cocycle condition is `u − u = 0`, always true, and
  `u = −v − v` gives `v = −u/2`.
- In characteristic `p` with `U = 𝔾_a`, `ψ = id` and `r = p`, the norm relation `p·u = 0` holds for every
  `u` but `ψ(v) − v = 0`; characteristic zero is needed.
- The finite-order condition on `ψ` is essential (see §5.7).

*Needs:* ReductiveGroups Layer 5.

### 5.7 Levi factors stable under semisimple Frobenius

If a semisimple element `φ` of an algebraic group with reductive identity component in characteristic
zero normalizes a connected parabolic `P`, prove that some `U`-conjugate of a chosen Levi of `P` is
φ-stable, where `U` is the unipotent radical. The cocycle of the argument lies in `Z_U(φ^r)` for `r`
killing the induced finite component action, and conjugation by `φ` has order dividing `r` there; it is
not assumed to have finite order on all of `U` (LS, Lemma 8.14, pp. 80–81, with the correction listed
in Source corrections; LS line 3668).

**Checks.**

- Conjugation by `diag(2, 1)` acts on the upper root group of `GL₂` by multiplication by 2, of infinite
  order; §5.6 does not apply on all of `U`.
- For `φ` central the chosen Levi is already φ-stable.
- For `φ` regular semisimple in a Borel `P` of `GL₂`, the φ-stable Levi is the maximal torus containing
  `φ`, a unipotent conjugate of the diagonal torus.

*Needs:* §§2.3, 5.6; ReductiveGroups Layers 4, 6A.

### 5.8 Finitely many local types from global semisimplification

Prove that for a fixed global coefficient-group semisimplification `ρ^ss` and fixed residue Frobenius
data, the local bifiltered objects obtained from global semisimplification flags have finitely many
graded types, and their induced Hodge filtrations are balanced. The finiteness concerns types with the
auxiliary indices forgotten, not flags or extensions (LS, Lemma 8.10, pp. 78–79).

A route: §2.10 gives finitely many allowable parabolic and Levi pairs up to centralizer conjugacy; the
crystalline comparison for the fixed global quotient representation and §5.4 give balance; unipotent
conjugacy and §5.7 compare different splittings without changing the type.

**Checks.**

- Infinitely many auxiliary indexings of one flag give one type.
- For irreducible `ρ^ss` the only global flag is trivial and there is one type.
- A fixed semisimplification can have infinitely many nonisomorphic extensions; they share finitely many
  types.

*Needs:* §§2.10, 5.4–5.5, 5.7.

### 5.9 Root pairing for opposite flag directions

Fix positive roots `Σ⁺` and standard parabolics `P, Q` containing the positive Borel; let `Σ_P, Σ_Q` be
their full root sets and `Δ_P, Δ_Q` the simple roots of their Levis. For `w` in the Weyl group with
`w⁻¹Δ_P ⊂ Σ⁺` and `wΔ_Q ⊂ Σ⁺`, prove that `β ↦ −wβ` is a bijection from `{β ∈ Σ ∖ Σ_Q : wβ > 0}` onto
`{α ∈ Σ ∖ Σ_P : w⁻¹α > 0}` with inverse `α ↦ −w⁻¹α`, that each set has `ℓ(w)` elements, and that for
`β ∈ Σ ∖ Σ_Q`, `wβ > 0` holds exactly when `−wβ ∉ Σ_P`, and symmetrically with `P, Q, w⁻¹` (LV, Lemma 11.4
and (11.14), pp. 991–993; LS, proof of Lemma 8.12, pp. 79–80; the inverse map carries the minus sign, see
Source corrections).

A route: `Σ ∖ Σ_Q` consists of negative roots outside the Levi of `Q`. If `β` is in the first set and
`wβ` were a positive root of the Levi of `P`, then `β = w⁻¹(wβ) > 0` because `w⁻¹Δ_P ⊂ Σ⁺`, a
contradiction; so `−wβ ∉ Σ_P` and `w⁻¹(−wβ) = −β > 0`. The first set is `−` the set of inversions of
`w`, all of which lie outside the Levi of `Q` since `wΔ_Q ⊂ Σ⁺`; hence its size is `ℓ(w)`.

**Checks.**

- In `SL₂` with `P = Q = B` and `w = s`: `Σ ∖ Σ_B = {−α}`, `s(−α) = α > 0`, so both sets are `{−α}`
  and `−s(−α) = −α`; dropping the minus sign would send `−α` to `α ∈ Σ_B`, outside the target.
- In `SL₃` with `P = Q = B` and `w` a 3-cycle, both sets have two elements and `w ≠ w⁻¹`, so the forward
  map `−w` and the inverse `−w⁻¹` cannot be interchanged.
- For `w = 1` both sets are empty, matching `ℓ(1) = 0`.

*Needs:* §§2.5, 5.1–5.2; ReductiveGroups Layer 7.

### 5.10 Semibalanced fixed-graded fibre bound

Let `G = H^c` over an algebraically closed field of characteristic zero, with `H` connected reductive of
rank `t`, and let `F₀` have uniform single-factor adjoint profile `h`, with `A` and `B` as in §2.7. For an
integer `e > 0` assume `A ≥ e/c` and `B > T(e/c) + T((h⁰ − t)/2 + e/c)`, both arguments of `T` lying in
`[0, dim H]`. Prove that for every parabolic `P` and every prescribed induced Levi filtration, the
semibalanced filtrations in the orbit `G·F₀` with that induced filtration form a locus of codimension at
least `e`. In the single connected group case (`c = 1`) the stronger hypotheses `A ≥ e` and
`B > T(e) + T(h⁰/2 + e)` give codimension strictly greater than `e` for balanced filtrations (LS, Lemma
8.12 and proof, pp. 79–80, LS line 3605; LV, Proposition 11.3, pp. 990–993).

A route: stratify by the finitely many `P–Q` double cosets and compute the dimension of each fibre;
semibalance is a nonpositive modular sum, whose root contributions are paired by §5.9; the largest `e/c`
root weights and the central zero-weight correction cost at most the two displayed top sums, and a
stratum of codimension below `e` would violate the strict inequality.

**Checks.**

- The zero-weight correction is `(h⁰ − t)/2` in LS and `h⁰/2` in the weaker LV bound.
- The dimension conclusion is `≥ e`, while the numerical hypothesis is strict; the two are tracked
  separately.
- For `H = GL₂`, weights `(1, 0)`: `h = (h^(−1), h⁰, h¹) = (1, 2, 1)`, `t = 2`, `A = B = 1`; with `c = 1`
  and `e = 1` the right side is `T(1) + T(0 + 1) = 2`, and `B = 1` is not larger, so the hypothesis
  fails, as it must on a one-dimensional flag variety.

*Needs:* §§2.7–2.8, 5.2–5.3, 5.9.

### 5.11 Dimension of Frobenius-stable graded pairs

Fix a semisimple `φ` in the coefficient normalizer. Prove that the pairs `(P, F_M)` with `φ ∈ P` and a
prescribed conjugacy class of quotient filtered Frobenius data form finitely many orbits of `Z_G(φ)`, so
their dimension is at most `dim Z_G(φ)`; for arbitrary `φ`, replacing `φ` by its semisimple part `φ^ss`
and using §5.7 gives the bound `dim Z_G(φ^ss)`, and cyclewise §2.2 bounds the cost by `dim H` (LS, Lemma
8.15, pp. 81–82; LV, §11.6, pp. 993–995).

**Checks.**

- Replacing `φ` by `φ^ss` can enlarge the centralizer, so the bound remains valid.
- For `φ` regular semisimple in `GL_n` the pairs with `P` a Borel containing `φ` are the `n!` Borels
  through its torus, a finite set of dimension `0 ≤ n = dim Z(φ)`.
- The bound is in terms of the dimension of the acting centralizer, not the number of its points.

*Needs:* §§2.2, 2.10, 5.5, 5.7.

### 5.12 Fixed-type codimension under balanced monodromy

Let the coefficient system have uniform single-factor profile `h`, rank `t` for `H`, strongly c-balanced
monodromy and a balanced reference graded type. For an integer `e > 0` assume
`A ≥ (e + dim H)/c` and `B > T((e + dim H)/c) + T((h⁰ − t)/2 + (e + dim H)/c)`, with arguments in
`[0, dim H]`. Prove that in the monodromy period orbit the locus admitting a φ-stable auxiliary
filtration of that graded type has codimension at least `e` (LS, Lemma 8.16, pp. 81–83; LS line 3722).

A route: balance makes the total modular weight zero, so some Frobenius cycle has nonpositive average
modular weight; choose `c` independent class representatives in it and project smoothly to their flag
product; apply §5.10 with parameter `e + dim H`, and let the graded pairs vary at cost at most `dim H` by
§5.11.

**Checks.**

- Both inequalities use the single-factor `T_H`, not a `T` for the restriction-of-scalars group.
- Letting `c → ∞` with the profile fixed, the hypotheses tend to `A > 0` and
  `B > T((h⁰ − t)/2)`, which is §8.5's starting point.
- For `c = 1` the hypothesis contains the parameter `e + dim H`, larger than LV's `e + z`, because the
  centralizer bound is the cruder `dim H`.

*Needs:* §§2.8, 4.2, 5.5, 5.10–5.11.

### Examples

For a `2 + 2 + 2` auxiliary flag in `GL₆` and a three-dimensional `F¹` contributing `(a₀, a₁, a₂)` to the
top, middle and bottom blocks, with `Σ a_i = 3`, balance is `(1, 1, 1)`, weak balance `a₀ = a₂` and semibalance `a₀ ≤ a₂`; the generic pattern
`(2, 1, 0)` fails semibalance. Conjugation by `diag(2, 1)` multiplies an upper root group by 2, which is
why the cyclic argument of §5.7 is restricted to `Z_U(φ^r)`.

### Dependencies

Layers 2 and 4; MordellLawrenceVenkatesh §§1.10, 1.13; ReductiveGroups Layers 4–7.

## Layer 6: The coefficient non-density theorem

This layer combines global-type finiteness, balanced local types, strongly balanced monodromy and the
p-adic transfer into non-density of all integral points under the two single-factor inequalities.

### 6.1 The coefficient non-density theorem

Let `𝒳` be of finite type over `ℤ[S⁻¹]` with smooth geometrically connected generic fibre `X` of
dimension `d ≥ 1`. Let `V` be a pure polarized integral Hodge–Deligne system on `𝒳` with integral
Frobenius and Frobenius characteristic polynomials in `ℤ[t]` outside `S`, an equidimensional module of
classical rank `N` over a constant étale H⁰-algebra with the required coefficient pairing (§1.5). Assume
a uniform single-factor profile `h` on `H`, strongly c-balanced differential monodromy relative to
residue Frobenius, and, with `t = rank H`,

    A ≥ (d + dim H)/c   and   B > T((d + dim H)/c) + T((h⁰ − t)/2 + (d + dim H)/c),

all arguments of `T` lying in `[0, dim H]`. Prove that `𝒳(ℤ[S⁻¹])` is not Zariski dense in `X`. No
semisimplicity hypothesis is imposed on the Galois representations of the fibres (LS, Theorem 8.17,
pp. 83–84; LS line 3812).

A route: §2.9 gives finitely many global G-semisimplifications; for each residue disk and each global
type, §5.8 gives finitely many balanced local graded types; §5.12 with `e = d` bounds the codimension of
each incidence locus, and §3.5 turns it into a proper Zariski-closed subset; the integral points lie in
the finite union.

**Checks.**

- A fixed semisimplification can have infinitely many nonsplit extension classes; the finite objects
  are the global semisimplifications and their local graded types, not the representations.
- With `c` fixed and `dim H` large relative to `A`, the first inequality fails; the theorem says
  nothing, consistently with the cost `dim H` of a semilinear centralizer.
- For `d = 0` the conclusion is false and the hypothesis `d ≥ 1` excludes it.

*Needs:* §§1.9, 2.9, 3.5, 5.8, 5.12.

### Examples

For a nonsplit integral Galois representation with fixed semisimplification there can be infinitely
many extension classes; after the auxiliary indices are forgotten they have finitely many local graded
types, which is what the codimension estimate consumes.

### Dependencies

Layers 1–5.

## Layer 7: Higher-dimensional Lawrence–Venkatesh non-density

This layer compares crystalline and forgetful fibre functors, places the Hodge torus in the Galois
image, chooses a uniformly bounded prime with small Frobenius centralizer and applies the self-dual
bad-filtration estimate. It proves Lawrence–Venkatesh Theorem 10.1 with its finiteness clause and the
corrected point-count bound.

### 7.1 Comparing crystalline and forgetful fibre functors

For the neutral tensor category generated by a crystalline p-adic representation `V` with its
intersection and similitude tensors, prove that the forgetful fibre functor and the fibre functor
`D_cris` become tensor-isomorphic over `ℚ̄_p`; such an isomorphism identifies their Tannaka groups by
conjugation and preserves every pairing tensor. This is existence over an algebraic closure, not a
canonical rational comparison (LV, footnote 10, printed pp. 977–978; LS, Lemma 5.43, pp. 58–59).

A route: MotivesAndAlgebraicCycles §6.8 makes the tensor isomorphisms a faithfully flat torsor, finitely
presented because the category has a tensor generator (§6.3 there); a nonempty scheme of finite type over
`ℚ_p` has a `ℚ̄_p`-point, which transports all intersection and multiplier tensors.

**Checks.**

- An arbitrary linear isomorphism of the two underlying spaces need not respect the forms.
- For `V = ℚ_p(1)` the two fibre functors are already isomorphic over `ℚ_p`.
- For a torsor without rational point (a nonsplit inner form of `PGL₂`), no `ℚ_p`-rational comparison
  exists, but a `ℚ̄_p`-point does.

*Needs:* §2.6; MotivesAndAlgebraicCycles §§6.3, 6.8; PadicHodgeTheory §§3.5, 5.5.

### 7.2 The Hodge torus in the Galois image

For primitive middle cohomology of a smooth projective variety over a finite unramified extension of
`ℚ_p` with good reduction, prove that the Zariski closure of the image of the local Galois representation
contains a torus conjugate over `ℚ̄_p`, inside the similitude group of the intersection pairing, to the
image of the Hodge cocharacter transported by §7.1 (LV, proof of Lemma 10.4 and footnote 10, printed
pp. 976–978).

A route: the tensor-compatible Hodge–Tate splitting places the Hodge cocharacter in the algebraic Galois
group, compatibly with the form tensors, which upgrades the `GL` assertion to the similitude group; §2.3
shows that Levi projection preserves its conjugacy class.

**Checks.**

- The similitude-group assertion does not follow from equality of `GL` weight multiplicities alone.
- For an elliptic curve with good ordinary reduction the Hodge cocharacter `diag(1, 0)` lies in the
  image (the local representation is reducible with characters of Hodge–Tate weights 1 and 0).
- For a Tate twist `ℚ_p(−1)` the Hodge cocharacter is the identity of `𝔾_m` and the image is open in
  `ℤ_p^×`.

*Needs:* §§2.3, 7.1; PadicHodgeTheory §4.4 with gap:hodge-tate-image-cocharacter.

### 7.3 A bounded prime with small Frobenius centralizer

For a fixed smooth projective family over `ℤ[S⁻¹]` with fixed Hodge type on primitive middle cohomology of
degree `r` and similitude group `GAut` of the intersection pairing, prove that there is `L` such that every
integral point admits a prime `ℓ ≤ L` outside `S` with `dim Z_GAut((φ_crys,ℓ)^ss) ≤ h⁰`. An auxiliary
prime `p` outside `S`, large enough for the Fontaine–Laffaille range, is fixed first. The bound is uniform
in the integral point and is not an effective formula for `L` (LV, Lemma 10.4 and proof, printed
pp. 976–978).

A route: by MordellLawrenceVenkatesh §1.2 the auxiliary `p`-adic representations have finitely many
semisimplifications. In each reductive image choose a very regular open subset avoiding the finitely many
nontrivial root-weight equalities; Chebotarev supplies one prime per class. The Hodge torus of §7.2 in the
image bounds the centralizer dimension by `h⁰`. Katz–Messing equality of characteristic polynomials, with
similitude multiplier `ℓ^r` (eigenvalues pair as `λ ↔ ℓ^r/λ`), transfers the bound to crystalline
cohomology at `ℓ`.

**Checks.**

- For middle degree `r = 2` an eigenvalue `λ` pairs with `ℓ²/λ`; using `ℓ/λ` gives the wrong form-group
  centralizer.
- Equal characteristic polynomials determine the geometric centralizer dimension in the classical form
  group; no rational conjugacy is asserted.
- For a regular semisimple Frobenius in `GSp_(2g)` the centralizer is a maximal torus of dimension
  `g + 1`.

*Needs:* §7.2; MordellLawrenceVenkatesh §1.2; PadicHodgeTheory §6.1; PadicDifferentialEquationsAndRigidCohomology
§RD.7.7; DeligneWeightsAndPurity §§0.7, 0.16, 4.3; Chebotarev Layer 10.

### 7.4 Bad self-dual filtrations have large codimension

For a classical similitude space `V` of middle degree `r`, a Frobenius `φ` and prescribed filtered
Frobenius graded objects of a φ-stable self-dual auxiliary flag, put `z = dim Z_GAut(φ^ss)`, require every
nonzero graded object to have Hodge-weight average `r/2`, and let `e > 0`. Prove that if `A ≥ z + e` and
`B > T(z + e) + T(h⁰/2 + z + e)`, with arguments in `[0, dim GAut]`, then the self-dual Hodge filtrations
admitting such a flag have codimension at least `e` in their flag variety. Self-dual middle pieces keep
their pairing tensor (LV, Proposition 10.6, printed pp. 981–982, with the conclusion in §11.6, printed
pp. 993–995).

A route: reduce to semisimple `φ`, which only enlarges the incidence locus; stratify by the finitely many
conjugacy types of self-dual flags; graded pairs vary at cost at most `z` (§5.11); apply the connected
balanced estimate of §5.10 with parameter `z + e` and project to the Hodge flag variety.

**Checks.**

- The published first inequality is `A ≥ z + e` (non-strict); the arXiv v3 text has a stricter form
  that is not needed.
- For `z + e > A` the hypothesis fails and nothing is claimed.
- A graded object with average weight different from `r/2` is excluded; §7.5 supplies the average by
  global purity.

*Needs:* §§5.4–5.5, 5.10–5.11.

### 7.5 Classical semisimplification fibres are nondense

Under the numerical inequalities of §7.6, fix `ℓ ∉ S` and a residue point whose crystalline semisimple
Frobenius centralizer has dimension at most `h⁰`. Prove that the integral points in its residue disk whose
global ℓ-adic representations have a prescribed semisimplification form a subset that is not Zariski dense
in the base. Global semisimplification flags are self-dual after pairing dual constituents, and every
graded Hodge average is `r/2` by §5.4 (LV, Lemma 10.5, printed pp. 979–981).

A route: construct paired self-dual semisimplification flags, transport their graded data through
`D_cris`, use the small centralizer and §7.4 with `e = dim Y`, and apply §3.5 on the disk.

**Checks.**

- The representations of the points may be nonsplit; only their semisimplifications are fixed.
- The self-duality of the flag comes from the polarization, not from semisimplicity.
- For an irreducible semisimplification the flag is trivial and §7.4 reduces to §4.4.

*Needs:* §§3.5, 5.4, 7.4; PadicHodgeTheory §§3.5, 8.1.

### 7.6 Higher-dimensional integral-point non-density

Let `𝒴` be smooth of finite type over `ℤ[S⁻¹]` with smooth geometrically connected generic fibre `Y/ℚ` of
dimension `d ≥ 1`, and let `π : 𝒵 → 𝒴` be smooth projective with geometrically connected fibres of
relative dimension `r` and a relatively ample class. Let `V` be primitive degree-`r` cohomology with its
intersection pairing, and assume that the Zariski closure of geometric monodromy contains
`Aut(V, ⟨ , ⟩)°`. Compute the adjoint profile in the similitude group `GAut(V, ⟨ , ⟩)` and assume

    A ≥ h⁰ + d   and   B > T(h⁰ + d) + T(3h⁰/2 + d),

with arguments in the domain of `T`. Prove that `𝒴(ℤ[S⁻¹])` is not Zariski dense in `Y` (LV, Theorem 10.1,
printed pp. 969–970, monodromy hypothesis (10.1), printed p. 968; proofs §§10.3–10.5, printed
pp. 975–982).

A route: §7.3 gives finitely many possible small-centralizer primes; for each, MordellLawrenceVenkatesh
§1.2 leaves finitely many semisimplifications, and there are finitely many residue disks; §7.5 applies to
each and a finite union concludes.

**Checks.**

- For an elliptic family the geometric monodromy may be `Sp₂ = SL₂` while the similitude group is
  `GSp₂ = GL₂`; the hypothesis must not ask for the scalar direction.
- `A ≥ h⁰ + d` and `T` is nondecreasing on `[0, A + h⁰]`, so both arguments of `T` lie where `T` is
  nondecreasing (`3h⁰/2 + d ≤ A + h⁰`).
- The non-density conclusion does not need monodromy on subvarieties; §7.7 does.

*Needs:* §§2.7, 7.3, 7.5; MordellLawrenceVenkatesh §1.2.

### 7.7 Finiteness under monodromy on every subvariety

In the setting of §7.6, assume in addition that for every positive-dimensional closed geometrically
irreducible subvariety `Z ⊂ Y` the restriction of `V` to the smooth locus of `Z` has geometric monodromy
whose Zariski closure contains `Aut(V, ⟨ , ⟩)°`. Prove that `𝒴(ℤ[S⁻¹])` is finite (LV, Theorem 10.1, final
assertion, printed p. 970).

A route: let `C` be an irreducible component of positive dimension of the Zariski closure of the integral
points. It contains a Zariski-dense set of ℚ-points, so it is geometrically irreducible (the Galois
conjugates of a geometric component through a dense set of rational points coincide). A resolution
`C̃ → C` that is an isomorphism over the smooth locus `U` (AlgebraicModuliForArithmeticGeometry §9.4),
spread out over `ℤ[S′⁻¹]` (SchemeAndStackFoundations §0.9), gives a smooth geometrically connected base;
integral points of `𝒴` lying in `U` lift to integral points of the model of `C̃` by the valuative criterion,
and they are dense in `C̃`. The pulled-back family has the monodromy of `U`, since `π₁(U) → π₁(C̃)` is
surjective. The inequalities of §7.6 for `d` imply those for `dim C ≤ d`, because both arguments of `T`
stay in `[0, A + h⁰]`, where `T` is nondecreasing. §7.6 on `C̃` contradicts density; so every component is
a point.

**Checks.**

- A family with a positive-dimensional isotrivial subvariety violates the hypothesis.
- A component containing a dense set of rational points is defined over ℚ; components defined only over
  a larger number field cannot occur in the closure of rational points as dense components.
- For `Y` a curve the hypothesis on subvarieties is the hypothesis of §7.6 and the conclusion upgrades
  non-density to finiteness directly.

*Needs:* §7.6; AlgebraicModuliForArithmeticGeometry §9.4; SchemeAndStackFoundations §0.9.

### 7.8 A point-count bound for Frobenius centralizers

For a smooth hypersurface `Y` of dimension `m ≥ 2` over `𝔽_q`, let `b > 0` be the dimension of primitive
middle cohomology. Prove that for every integer `M ≥ 1` with `q^((m/2+1)·2M) < b/3`, the centralizer in
`GL_b` of the semisimplified Frobenius on `H^m_prim` has dimension at most `3b²/M`; the largest such `M`,
when one exists, gives the strongest bound. The statement is independent of §7.3 (LV, Lemma 12.1 and
proof, printed pp. 995–996, with the corrected cutoff of Source corrections).

A route: normalize the Frobenius eigenvalues to `q^(m/2)·e(θ_s)` by DeligneWeightsAndPurity §4.3; the
centralizer dimension is `Σ m_i²` over eigenvalue multiplicities. With
`g_M(t) = |Σ_(|j|≤M) e(jt)|² = Σ_(|j|≤2M) (2M + 1 − |j|) e(jt)`, the inequality
`∫|∫ g_M(t − θ) dμ(θ)|² dt ≥ dim Z·‖g_M‖²` bounds `dim Z` by weighted power sums. The point count
`#Y(𝔽_(q^j)) = Σ_(i≤m) q^(ij) + (−1)^m q^(mj/2) Σ_s e(jθ_s)` (WeilConjectures Layer WC.5,
EtaleDualityAndPerverseSheaves §4.3) and `0 ≤ #Y(𝔽_(q^j)) ≤ #ℙ^(m+1)(𝔽_(q^j))` give
`|Σ_s e(jθ_s)| ≤ q^((m/2+1)j)`. Since the kernel has frequencies up to `2M`, the bound is needed through
`j = 2M`; with `q^(m/2+1) ≥ 4` the geometric series gives the constant 3, and
`(2M + 1)²/‖g_M‖² ≤ 3/(4M)`.

**Checks.**

- `M = 0` is excluded.
- For `M = 1` the kernel has frequencies `−2, …, 2` with coefficients `1, 2, 3, 2, 1`; a cutoff at
  frequency 1 does not control the frequency-2 term.
- `‖g_1‖² = 3² + 2(1² + 2²) = 19`, and `9/19 ≤ 3/4`.

*Needs:* §2.7; DeligneWeightsAndPurity §§0.10, 4.3; WeilConjectures Layer WC.5;
EtaleDualityAndPerverseSheaves §4.3.

### Examples

For middle degree `r = 2` a Frobenius eigenvalue `λ` pairs with `ℓ²/λ`; pairing with `ℓ/λ` gives the
wrong centralizer. In the point-count bound, `M = 1` already produces frequencies `−2, …, 2`, so a cutoff
at frequency 1 cannot prove the stated estimate.

### Dependencies

Layers 2–5; MotivesAndAlgebraicCycles §§6.3, 6.8; PadicHodgeTheory §§3.5, 4.4, 5.5, 6.1, 8.1;
PadicDifferentialEquationsAndRigidCohomology §RD.7.7; DeligneWeightsAndPurity §§0.7, 0.10, 0.16, 4.3;
WeilConjectures Layer WC.5; EtaleDualityAndPerverseSheaves §4.3; AlgebraicModuliForArithmeticGeometry
§9.4; SchemeAndStackFoundations §0.9; MordellLawrenceVenkatesh §1.2; Chebotarev Layer 10.

## Layer 8: Eulerian profiles and numerical criteria

This layer computes the classical adjoint profiles of twisted abelian hypersurfaces and shows that
enough independent factors satisfy the coefficient inequalities; it derives the primitive Hodge numbers
of projective hypersurfaces, their Eulerian asymptotics and the large-dimension, large-degree
Lawrence–Venkatesh inequalities. Throughout, `A(n, q)` is the Eulerian number of
ClassicalArithmeticCompletion §2.18, extended by zero outside `0 ≤ q < n`; `Suggested.lean` restates it
as `eulerian`.

### 8.1 Classical adjoint profiles from Eulerian multiplicities

For smooth ample hypersurfaces in an abelian variety of dimension `n ≥ 2` with normalized degree `d > 0`,
take the Hodge–Tate multiplicities `m_q = d·A(n, q)`, `0 ≤ q < n`, and `N = n!·d` of
SheafConvolutionOnAbelianVarieties §3.3. The adjoint weights of `GL_N`, `GSp_N` and `GO_N` come from
`End(V)`, `Sym²(V)` and `Λ²(V)`, with the similitude direction in degree zero. Prove that for the
geometric choices — `GL` in either parity, `GSp` for `n` even, `GO` for `n` odd — `2h⁰ < dim H + rank H`;
equivalently `(h⁰ − rank H)/2 < A` (LS, Lemma A.1, pp. 89–90, LS line 4076, with the parity restriction of
Source corrections).

A route: `h⁰ = Σ m_q²` for `GL`, `(Σ m_q² + m_mid)/2 + 1` for `GSp` and `(Σ m_q² − m_mid)/2 + 1` for `GO`,
with `m_mid = 0` when there is no central index; with `dim GSp_N = N(N+1)/2 + 1`, `dim GO_N = N(N−1)/2 + 1`
and ranks `N`, `N/2 + 1`, `N/2 + 1`, the inequality reduces to `2Σ_q A(n, q)² ≤ (n!)²` (§8.4) and, for
`GO`, `m_mid > 0`.

**Checks.**

- For `n = 2`, `d = 1`: `m = (1, 1)`, `N = 2`; `GL₂` gives `2·2 = 4 < 6` and `GSp₂` gives `4 < 6`.
- The nongeometric choice `GO₂` with weights `0, 1` has `h⁰ = 2 = dim GO₂ = rank GO₂`, so `4 < 4` fails:
  the parity restriction is necessary.
- For `n = 3`, `d = 1`, `GO₆`: `m = (1, 4, 1)`, `h⁰ = (18 − 4)/2 + 1 = 8`, `dim GO₆ + rank = 16 + 4 = 20`,
  and `16 < 20`.

*Needs:* §§2.7, 8.4; SheafConvolutionOnAbelianVarieties §§3.1, 3.3.

### 8.2 The Eulerian difference law

For `n ≥ 2` put `α_q = A(n, q)/n!`, extended by zero outside `0 ≤ q < n`, and define the **Eulerian
difference law** `β_j = Σ_q α_q α_(q−j)` for `j ∈ ℤ`: the law of the difference of two independent
descent counts (LS, Lemma A.2, p. 90; LV, §10.2, printed pp. 972–974). It is the normalized `GL` adjoint
multiplicity profile of §8.1.

API:

- `β_j` is a finite sum, zero for `|j| ≥ n`.
- `β` is nonnegative and sums to one.
- `β_(−j) = β_j`, and `β_j·N²` is the multiplicity of weight `j` in `End(V)` for the profile of §8.1.

**Checks.**

- For `n = 2`: `β₀ = 1/2`, `β_(±1) = 1/4`.
- For `n = 3` with Eulerian row `(1, 4, 1)`: `β₀ = 1/2`, `β_(±1) = 2/9`, `β_(±2) = 1/36`, summing to 1.
- `β_j = 0` for `|j| ≥ n`; an infinitely supported approximation is not the definition.
- Replacing `q − j` by `j − q` is harmless only because each row is symmetric
  (ClassicalArithmeticCompletion §2.39).

*Needs:* ClassicalArithmeticCompletion §§2.18, 2.39.

### 8.3 Second moment and log-concavity

Prove that for `n ≥ 2` the Eulerian difference law has mean zero, second moment `Σ_j j² β_j = (n + 1)/6`
and log-concave masses on its contiguous support `−(n − 1) ≤ j ≤ n − 1` (LS, Lemmas A.2–A.3, pp. 90–91,
LS line 4245; LV, (10.9)–(10.10), printed pp. 972–973).

A route: the descent count has variance `(n + 1)/12`, and the difference of two independent copies has
twice that; log-concavity of each row and its preservation under reflection and convolution give
log-concavity of `β`.

**Checks.**

- At `n = 2` the second moment is `2·(1/4) = 1/2 = 3/6`, not `√(1/2)`.
- At `n = 3`: `2·(2/9) + 2·4·(1/36) = 2/3 = 4/6`.
- The descent count of a random permutation of `Fin 2` is Bernoulli `1/2`, of variance `1/4 = 3/12`.

*Needs:* §8.2; ClassicalArithmeticCompletion §§2.18, 2.39 with gap:eulerian-log-concavity-and-variance.

### 8.4 The central Eulerian convolution mass is at most one half

Prove that for every `n ≥ 2`, `β₀ = Σ_q (A(n, q)/n!)² ≤ 1/2`; equivalently `2·Σ_(q<n) A(n, q)² ≤ (n!)²`.
This is `eulerian_central_mass_le_half` (LS, Lemmas A.4–A.6, pp. 91–92, LS lines 4255–4321, with the
corrected tail comparison and denominators of Source corrections).

A route: if `β₀ > 1/2`, symmetry gives `Σ_(j≥1) β_j < 1/4 = Σ_(j≥1) 1/(2·3^j)`; log-concavity and
`β₀ > 1/2` then force every tail `Σ_(j≥k) β_j` below `Σ_(j≥k) 1/(2·3^j)`, since a first crossing below the
reference stays below. Summation by tails, `Σ_j j²β_j = 2Σ_(k≥1)(2k − 1)Σ_(j≥k) β_j`, then gives a second
moment `< 3/2`, contradicting `(n + 1)/6 ≥ 3/2` for `n ≥ 8`. The cases `2 ≤ n ≤ 7` are exact integer
computations.

**Checks.**

- Equality holds at `n = 2` (`2·2 = 4 = 2!²`) and at `n = 3` (`2·18 = 36 = 3!²`).
- At `n = 4`: `2·(1 + 121 + 121 + 1) = 488 ≤ 576`.
- At `n = 1` the inequality `2·1 ≤ 1` fails, so `n ≥ 2` is necessary.
- The tail comparison is strict `<`; reversing it gives no contradiction.

*Needs:* §8.3.

### 8.5 Enough independent factors satisfy the coefficient inequalities

For the geometric Eulerian profile of §8.1 and every integer `e > 0`, prove that there is `c₀ ≥ 1` such
that every `c ≥ c₀` satisfies `A ≥ (e + dim H)/c` and
`B > T((e + dim H)/c) + T((h⁰ − rank H)/2 + (e + dim H)/c)`, with arguments in the domain; the same `c`
satisfies the semisimple inequality of §4.4. No bound uniform over all Hodge profiles is claimed (LS,
proof of Theorem 9.2, pp. 85–87, and Lemma A.1, pp. 89–90).

A route: `(h⁰ − rank H)/2 < A` gives `T((h⁰ − rank H)/2) < T(A) = B`, since `T` is strictly increasing on
`[0, A]`; continuity of `T` and `(e + dim H)/c → 0` preserve the strict gap for large `c`.

**Checks.**

- The strict inequality of §8.1 is needed before taking the limit; with equality the gap could close.
- For the `n = 2`, `d = 1`, `GL₂` profile (`h = (1, 2, 1)`, `A = B = 1`, `rank = 2`): `(h⁰ − 2)/2 = 0`,
  `T(0) = 0 < 1`, and `c ≥ 5(e + 4)` works.
- `c₀` depends on `e` and the profile.

*Needs:* §§2.7, 8.1, 8.4.

### 8.6 Primitive Hodge numbers of projective hypersurfaces

For a smooth hypersurface of degree `d ≥ 2` in `ℙⁿ_ℂ`, `n ≥ 2`, prove that the primitive middle Hodge
number `h^(p, n−1−p)_prim` is the coefficient of `t^((p+1)d−n−1)` in `(1 + t + … + t^(d−2))^(n+1)`, for
`0 ≤ p < n` (Batyrev–Cox, Theorems 10.6 and 10.13 and Remark 10.14, PDF pp. 30–34, specialized to
projective space; this justifies LV (10.6), printed pp. 971–972).

A route: Griffiths's residue description identifies `H^(p, n−1−p)_prim` with the graded piece of degree
`(p+1)d − n − 1` of the Jacobian ring `ℂ[x₀, …, x_n]/(∂F/∂x_i)`; smoothness makes the partial derivatives a
homogeneous regular sequence of degree `d − 1` (Mathlib `RingTheory.Sequence.IsRegular`), so the Hilbert
series is `(1 − t^(d−1))^(n+1)/(1 − t)^(n+1)`. Hodge numbers are those of ComplexComparisonPartII §C5.3.

**Checks.**

- A smooth plane cubic (`n = 2`, `d = 3`): `(1 + t)³` gives `(1, 1)`.
- A quartic surface (`n = 3`, `d = 4`): `(1 + t + t²)⁴ = 1 + 4t + 10t² + 16t³ + 19t⁴ + …` gives primitive
  `(1, 19, 1)`, not the full `(1, 20, 1)`.
- A quadric (`d = 2`): `(1)^(n+1) = 1`, so only `p` with `2(p+1) = n + 1` contributes; for even `n`
  (odd-dimensional quadric) there is no primitive middle cohomology.

*Needs:* ComplexComparisonPartII §C5.3; Mathlib `RingTheory.Sequence.IsRegular`.

### 8.7 Eulerian asymptotics of projective hypersurface cohomology

Fix `n ≥ 2`. Prove that as `d → ∞`, `h^(p, n−1−p)_prim(d) ∼ d^n·A(n, p)/n!` for `0 ≤ p < n`; that after
adjoint formation `h^a/(d^(2n)/2) → β_a` for the orthogonal or symplectic similitude group; and that the
parameter space of degree-`d` hypersurfaces has dimension `binomial(n + d, d) − 1 = O(d^n)`, so
`dim Y/h⁰ → 0`. Here `n` is the ambient dimension (LV, (10.6)–(10.8), printed pp. 971–972, with the
parameter dimension corrected in Source corrections).

A route: expand the coefficient of §8.6 by inclusion–exclusion; its leading `d^n` coefficient is the
Eulerian finite-difference formula (Worpitzky's identity, ClassicalArithmeticCompletion §2.39). Adjoint
multiplicities come from symmetric or exterior squares; diagonal terms and the scalar direction are of
lower order.

**Checks.**

- Plane quartics: `binomial(6, 4) − 1 = 14`, whereas the printed `binomial(n + d, d − 1) − 1` gives 19;
  plane cubics give 9 under both, so they do not separate the formulas.
- For `n = 2` the leading coefficients are `d²/2·(1, 1)`, and the genus of a plane curve,
  `(d − 1)(d − 2)/2 ∼ d²/2`, agrees.
- `dim Y` grows like `d^n/n!` while `h⁰` grows like `d^(2n)`.

*Needs:* §§8.2, 8.6; ClassicalArithmeticCompletion §2.39.

### 8.8 Normal-limit estimates for adjoint Eulerian weights

Prove that as `n → ∞` the centred descent count divided by `√n` converges in law to `N(0, 1/12)` and the
independent difference to `N(0, 1/6)`; that consequently `Σ_(a>0) a·β_a ≥ C√n` for some `C > 0` and all
large `n`; that `β₀ < 40/√n` for all large `n`; and that for each fixed `c > 0` the sum of the largest
`c/√n` fraction of difference weights is `o(√n)` (LV, Lemma 10.3 and (10.9)–(10.12), printed pp. 972–974;
LV line 3004).

A route: the central limit theorem for descents with uniform second moments gives convergence of first
absolute moments (uniform integrability); log-concavity and the variance bound give the central-mass
estimate; Cauchy–Schwarz controls the upper-tail partial sums.

**Checks.**

- Convergence in law alone does not give convergence of unbounded first moments; the uniform second
  moment bound is the extra input.
- `Σ_(a>0) a·β_a = E|D|/2` for the difference `D` of two independent descent counts; the normal limit
  gives `E|D| ∼ √(n/6)·√(2/π)`, so the sum is of order `√n`, not `n`.
- `40/√n < 1/2` only for `n > 6400`, so §8.4 is not a consequence of this asymptotic bound.

*Needs:* §8.3; ClassicalArithmeticCompletion §2.18 with gap:eulerian-central-limit.

### 8.9 Large ambient dimension and degree satisfy the Lawrence–Venkatesh inequalities

Prove that there is `n₀` such that for every `n ≥ n₀` there is `D₀(n)` with
`A ≥ h⁰ + dim Y` and `B > T(h⁰ + dim Y) + T(3h⁰/2 + dim Y)` for every `d ≥ D₀(n)`, for the primitive
universal degree-`d` hypersurface profile in `ℙⁿ` in the similitude group, all arguments of `T` lying in
their domains. The limits are taken first in `d` for fixed `n`, then in `n` (LV, Proposition 10.2 and
proof, printed pp. 970–975).

A route: normalize the adjoint profiles by `d^(2n)/2` and pass to `β` at fixed `n` (§8.7); the positive
first moment has size `√n`, while each discarded top fraction of order `1/√n` has sum `o(√n)` (§8.8);
choose `n` large for a strict margin, then `d` large so that the asymptotic errors and `dim Y/h⁰` keep
it.

**Checks.**

- The threshold `D₀(n)` depends on `n`; exchanging the order of limits would need a further estimate.
- With the uncorrected parameter dimension `O(d^(n+1))` one would still have `dim Y/h⁰ → 0` for
  `n ≥ 2`, so the correction does not change the conclusion.
- Numerical evidence quoted by Lawrence–Venkatesh suggests `n₀ ≈ 60`; the theorem asserts only
  existence.

*Needs:* §§2.7, 8.7–8.8.

### Examples

For `n = 2` the Eulerian row is `(1, 1)`, its difference law `(1/4, 1/2, 1/4)` with second moment `1/2`.
For `n = 3` it is `(1, 4, 1)` with `β₀ = 1/2`. A quartic surface has primitive Hodge vector `(1, 19, 1)`
while its full middle cohomology has `(1, 20, 1)`. These pin the convolution normalization and the
primitive projector.

### Dependencies

Layer 2; ClassicalArithmeticCompletion §§2.18, 2.39, 2.56; SheafConvolutionOnAbelianVarieties §§3.1, 3.3;
ComplexComparisonPartII §C5.3; Mathlib `RingTheory.Sequence.IsRegular`.

## Layer 9: Projective hypersurface application

This layer constructs the universal smooth degree-`d` family with its parameter space of the correct
dimension, proves large connected monodromy in a safe range, and proves non-density of integral
parameters for large ambient dimension and degree.

### 9.1 Universal smooth projective hypersurfaces

For `n ≥ 2` and `d ≥ 2` let `Y_(n,d)` be the open subscheme of `ℙ(H⁰(ℙⁿ, O(d)))` over `ℤ` where the
hypersurface is smooth, the complement of the discriminant. Its coordinates are indexed by the degree-`d`
monomials in `n + 1` variables, `HypersurfaceMonomial n d`, so it has dimension `binomial(n + d, d) − 1`;
it carries the universal smooth projective degree-`d` hypersurface with relative `O(1)`. A form `F` over a
field defines a point of `Y_(n,d)` exactly when `IsSmoothHypersurface F` holds (Jacobian criterion), and an
integral form represents a `ℤ[S⁻¹]`-point exactly when `HasGoodReductionOutside S F` holds. Primitive
middle cohomology is the orthogonal complement of the ambient class, with its nondegenerate intersection
form. The parameter space keeps equations up to scalars; it is not the quotient by `PGL_(n+1)` (LV,
Proposition 10.2, printed pp. 970–971).

A route: in even hypersurface dimension the ambient middle class has self-intersection `d ≠ 0`, so its
orthogonal complement is a rational primitive summand with nondegenerate pairing
(EtaleDualityAndPerverseSheaves §4.3; DeligneWeightsAndPurity §9.12); its integral lattice is the
intersection of the rational summand with integral cohomology.

API:

- `Y_(n,d)` is the discriminant complement in the projective space of coefficients, of dimension
  `binomial(n + d, d) − 1`.
- It carries the universal smooth projective family with relative `O(1)`.
- The primitive projectors agree under the Betti, de Rham, étale and crystalline comparisons, and the
  primitive realizations form a polarized integral Hodge–Deligne system of weight `n − 1` on `Y_(n,d)[1/N]`
  for suitable `N`.
- A form with integer coefficients has good reduction outside `S` exactly when it represents a
  `ℤ[S⁻¹]`-point; its reduction modulo `p ∉ S` is then nonzero, and its generic fibre is smooth.

**Checks.**

- For plane cubics the parameter space has dimension 9, while the moduli of elliptic curves has
  dimension 1.
- The double line `x₀² = 0` (or any nonreduced form) lies on the discriminant and is excluded; the zero
  form fails `IsSmoothHypersurface`.
- For quartic surfaces the primitive degree-two rank is 21, the full rank 22.
- In characteristic `p | d` the Euler relation gives no information, and the Jacobian criterion still
  decides smoothness: `x₀^p + x₁^p + x₂^p` over `𝔽_p` has all partial derivatives zero and is singular.

*Needs:* SchemeAndStackFoundations §4.14; AlgebraicModuliForArithmeticGeometry §2.1;
EtaleDualityAndPerverseSheaves §4.3; DeligneWeightsAndPurity §9.12; Layer 0; Mathlib
`MvPolynomial.pderiv`, `AlgebraicClosure`.

### 9.2 Large connected monodromy for universal hypersurfaces

For the universal smooth degree-`d` hypersurfaces in `ℙⁿ_ℂ` with `n ≥ 4` and `d ≥ 4`, prove that the
Zariski closure of the monodromy on primitive middle cohomology contains the identity component of the
group of the intersection form: `Sp` when the middle dimension `n − 1` is odd and `SO` when it is even.
The similitude scalars are arithmetic and need not occur in geometric monodromy (Beauville, Théorèmes 2
and 4, printed pp. 10–12, and §1, printed pp. 8–9; LV, §10.2, printed p. 971).

A route: a Lefschetz pencil (LefschetzPencilsAndVanishingCycles §3.4) is a line in the parameter space, so
the universal monodromy contains the pencil monodromy, and the vanishing space of the pencil is the
nondegenerate primitive cohomology (§9.1, LefschetzPencilsAndVanishingCycles §4.4). For `n − 1` odd the
Kazhdan–Margulis theorem (§5.8 there) makes the ℓ-adic monodromy open in `Sp(E)(ℚ_ℓ)`, and an open subgroup
is Zariski dense (DeligneWeightsAndPurity §2.2). For `n − 1` even, §5.10 there gives open or finite; finite
monodromy would make the intersection form, after the sign `(−1)^((n−1)/2)`, positive definite, but by the
Hodge–Riemann relations its sign alternates with `p` on `H^(p, n−1−p)_prim`, and §8.6 gives nonzero primitive
Hodge numbers at `p = (n−1)/2` and `p = (n−3)/2` once `d ≥ 2 + 4/(n − 1)`, which holds for `d ≥ 3`, `n ≥ 5`;
so the monodromy is open and its Zariski closure contains `SO(E)`. The Artin comparison
(ComplexComparisonPartII §C6.6) passes between the ℓ-adic and Betti monodromy.

**Checks.**

- Cubic surfaces (`n = 3`, `d = 3`) have primitive Hodge numbers `(0, 6, 0)`, a definite form and finite
  monodromy `W(E₆)`; they lie outside the stated range.
- Quadrics (`d = 2`) have finite monodromy; they lie outside the range.
- For `n = 5`, `d = 4` the coefficients of `(1 + t + t²)⁶` at `t²`, `t⁶`, `t^10` are `21, 141, 21`, so
  `h_prim = (0, 21, 141, 21, 0)`, and the form is indefinite.

*Needs:* §§8.6, 9.1; LefschetzPencilsAndVanishingCycles §§2.8, 3.4, 4.4–4.5, 5.8, 5.10;
DeligneWeightsAndPurity §2.2; ComplexComparisonPartII §C6.6.

### 9.3 Non-density of integral hypersurface parameters

Prove that there are `n₀ ≥ 4` and, for each `n ≥ n₀`, a bound `D₀(n) ≥ 4` such that for every `d ≥ D₀(n)`
and every finite set `S` of primes, `Y_(n,d)(ℤ[S⁻¹])` is contained in a proper Zariski-closed subset of
`Y_(n,d),ℚ`. In coordinates this is `integralHypersurfaces_not_zariskiDense`: the integral degree-`d` forms
in `n + 1` variables with good reduction outside `S` all satisfy one nonzero homogeneous polynomial
equation `G = 0` in their coefficients. The statement concerns non-density in the parameter space and
makes no claim about its `PGL` quotient (LV, Theorem 10.1 with Proposition 10.2, printed pp. 969–975).

A route: §9.1 gives the family and its parameter dimension, §9.2 the monodromy hypothesis, §8.9 the
numerical inequalities, and §7.6 applies after enlarging `S` by the primes where the model of §9.1 is not
smooth; non-density for the larger `S` implies it for the smaller.

**Checks.**

- The good-reduction condition is that of a fixed integral model of the parameter space; good reduction
  after an arbitrary rational change of coordinates is a different question.
- Enlarging `S` enlarges the set of forms; a single `G` for a larger `S` serves for a smaller one.
- Because `Y_(n,d),ℚ` is dense open in projective space, any nonzero homogeneous `G` cuts out a proper
  subset of it.

*Needs:* §§7.6, 8.9, 9.1–9.2.

### Examples

Plane cubics give a nine-dimensional parameter space, while elliptic moduli is one-dimensional; a
double line lies on the discriminant. The theorem concerns integral parameters of the fixed model and does
not identify coordinate changes over ℚ with coordinate changes over `ℤ[S⁻¹]`.

### Dependencies

Layers 7 and 8; SchemeAndStackFoundations §4.14; AlgebraicModuliForArithmeticGeometry §2.1;
EtaleDualityAndPerverseSheaves §4.3; DeligneWeightsAndPurity §§2.2, 9.12; LefschetzPencilsAndVanishingCycles
§§2.8, 3.4, 4.4–4.5, 5.8, 5.10; ComplexComparisonPartII §C6.6.

## Layer 10: Hypersurface Shafarevich finiteness

This layer parametrizes smooth ample divisors of a fixed class, transfers integral points through Weil
restriction, resolves dense closures over a smooth open, applies the coefficient theorem to families that
are not translation-constant, and descends from geometric translations to `A(K)`-translations; the
abelian-surface case goes through curves.

### 10.1 Good reduction and primitive hypersurfaces

Fix a number field `K`, a finite set `S`, an abelian variety `A/K` with abelian scheme model `𝒜` over
`O_K[S⁻¹]`, and a smooth ample effective divisor `H ⊂ A`. `H` has **good reduction outside `S`** when its
schematic closure in `𝒜` is smooth over `O_K[S⁻¹]`. The **translation stabilizer** `Stab(H)` is the group
scheme of `a` with `H + a = H`; `H` is **primitive** when `Stab(H)(K̄) = {0}` (LS, Definition 9.1, p. 85,
with the zero translation treated as in Source corrections).

API:

- Good reduction is smoothness of the closure in the chosen abelian scheme model.
- `Stab(H)` is a finite subgroup scheme of `A` (ampleness), reduced in characteristic zero.
- `H` is primitive exactly when every geometric stabilizing translation is zero.
- Translation by a `K`-point preserves good reduction, since the point extends to a section of `𝒜`.

**Checks.**

- Translation by zero fixes every `H` and does not make `H` nonprimitive.
- The pullback of a divisor under a nontrivial étale isogeny is stabilized by the nonzero points of its
  kernel, so it is not primitive.
- For `a ∈ A(K)` properness extends `a` to `𝒜`, and `H + a` again has smooth closure.

*Needs:* AbelianSchemesAndArithmeticModuli §§A0.1, A1.2, A1.8, A2.4, A2.10; SchemeAndStackFoundations
§4.14; `TauCeti.AlgebraicGeometry.AbelianVariety`.

### 10.2 A parameter space for smooth ample divisors

For `A/K` and a fixed ample numerical class `φ`, construct a quasi-projective `K`-scheme `𝒫_φ` of finite
type parametrizing smooth effective divisors of class `φ`, with its universal divisor in `A × 𝒫_φ`: take
the Hilbert polynomial of class `φ` with respect to a fixed auxiliary ample bundle (Riemann–Roch,
AbelianSchemesAndArithmeticModuli §A2.4), the open subscheme of smooth effective Cartier divisors and the
union of the components of numerical class `φ`. Over an enlarged `S`, divisors with good reduction give
integral points of a model of `𝒫_φ`, and translation by `A` acts algebraically and preserves `φ` (LS,
proof of Theorem 9.2, pp. 85–86).

API:

- `𝒫_φ` is of finite type and parametrizes smooth divisors of class `φ`.
- It carries a universal smooth divisor in `A × 𝒫_φ`.
- A divisor with smooth closure over the model ring gives an integral point of the model of `𝒫_φ`.
- `A` acts on `𝒫_φ` by translation.

**Checks.**

- Translates of `H` give points of the same parameter space.
- A divisor of a different intersection degree with the auxiliary polarization is excluded.
- A singular flat divisor lies in the Hilbert scheme but outside the smooth open.
- `𝒫_φ` is not claimed to be a fine quotient by translations.

*Needs:* §10.1; SchemeAndStackFoundations §§0.9, 4.14; AlgebraicModuliForArithmeticGeometry §2.1;
AbelianSchemesAndArithmeticModuli §§A2.4, A2.10.

### 10.3 Weil restriction and integral parameters

After enlarging a finite set `S′` of rational primes so that `O_K[S⁻¹]` is finite étale over `ℤ[S′⁻¹]`,
prove that the quasi-projective parameter scheme admits a Weil restriction `X = Res_(K/ℚ) 𝒫_φ`, a
quasi-projective ℚ-scheme with an integral model over `ℤ[S′⁻¹]` whose integral points are the
`O_K[S⁻¹]`-points of the model of `𝒫_φ`; the Weil restriction of the abelian scheme is again an abelian
scheme (LS, proof of Theorem 9.2, pp. 85–86).

A route: AbelianSchemesAndArithmeticModuli §§A6.30–A6.32 give representability for quasi-projective schemes
and abelian schemes along finite étale maps and the functor-of-points adjunction. The original family over
`K` is kept for twisted cohomology, while `X/ℚ` is the arithmetic base.

**Checks.**

- Properness of Weil restriction along a ramified integral extension is not claimed (it fails: the Weil
  restriction along `K[ε]/(ε²)` of an elliptic curve is not proper).
- For `K = ℚ` the construction is the identity.
- For `K` quadratic, `X_ℚ̄ ≅ 𝒫_φ × 𝒫_φ^σ`, with conjugation swapping the factors.

*Needs:* §10.2; AbelianSchemesAndArithmeticModuli §§A6.30–A6.32.

### 10.4 Reducing a dense arithmetic closure to a smooth base

Let a set of integral points of a finite-type scheme over `ℤ[S⁻¹]` with generic fibre of characteristic
zero be Zariski dense in an irreducible component `C` of its closure. Prove that there is a proper
birational `C̃ → C` with `C̃` smooth, an isomorphism over a dense smooth open `U`, spread out over a finite
localization, such that the integral points lying in `U` lift uniquely to integral points of the model of
`C̃` and are dense there. Points outside `U` lie in finitely many lower-dimensional closures (LS, proof of
Theorem 9.2, pp. 85–86).

A route: AlgebraicModuliForArithmeticGeometry §9.4 gives the resolution preserving the regular locus;
SchemeAndStackFoundations §0.9 spreads it out; the valuative criterion of properness extends rational lifts
over every prime outside the enlarged set.

**Checks.**

- A rational point over a singular exceptional fibre need not lift rationally; restricting to `U`
  avoids this.
- If `C` is already smooth, `C̃ = C` and nothing changes.
- A dense set minus a proper closed subset of an irreducible `C` is still dense.

*Needs:* §10.3; AlgebraicModuliForArithmeticGeometry §9.4; SchemeAndStackFoundations §0.9.

### 10.5 Families that are not translation-constant are arithmetically nondense

For a smooth positive-dimensional arithmetic base `X/ℚ` from §10.4, suppose its universal family of
primitive smooth ample divisors in `A` is not constant up to geometric translation, and that
`n = dim A ≥ 4`, or `n = 3` and the normalized degree `d = φ³/6` is not an exceptional degree `D_j`,
`j ≥ 1`, of SheafConvolutionOnAbelianVarieties §5.3. Prove that its integral parameters are not Zariski
dense (LS, proof of Theorem 9.2, pp. 86–87).

A route: choose `c` by §8.5 with `e = dim X`; choose a good prime `p` and, by SheafConvolutionOnAbelianVarieties
§8.3 with the classical monodromy of §6.7 there, a torsion character of order prime to `p` with the
conjugate-uniform monodromy; build the orbit system of §1.7 with its lattice, polarization, inversion
pairing (§1.8), uniform Eulerian profile (§8.1), rational Frobenius polynomials (§1.9) and strong
c-balance (§4.3); apply §6.1.

**Checks.**

- A family constant up to translation is excluded: its twisted cohomology has finite monodromy.
- For `n = 3` and `d = D₁ = 8855` the classical monodromy input fails and the theorem says nothing.
- The base is positive-dimensional; a single divisor is handled by §10.6 directly.

*Needs:* §§1.7–1.9, 4.3, 6.1, 8.1, 8.5, 10.4; SheafConvolutionOnAbelianVarieties §§5.3, 6.7, 8.3.

### 10.6 Primitive hypersurface Shafarevich finiteness

For `A/K` with good reduction outside `S` and a fixed ample class `φ`, prove that the primitive smooth
hypersurfaces of class `φ` with good reduction outside `S` form finitely many geometric translation
classes when `n ≥ 4`, or when `n = 3` and `d = φ³/6` is not an exceptional `D_j`, `j ≥ 1` (LS, Theorem 9.2,
pp. 85–87; LS line 3881).

A route: translation orbits in `𝒫_φ` are closed since `A` is proper. Take the irreducible components of
the closure of the arithmetic set and apply §10.4; if the generic family on a component is not
translation-constant, §10.5 contradicts density; if it is, the closed translation orbit contains the whole
component, boundary included. There are finitely many components.

**Checks.**

- Closedness of the proper orbit handles boundary points without assuming that a dense open exhausts the
  component.
- A component of dimension zero is a single divisor, one translation class.
- For `n = 3`, `d = 8855` is excluded; `d = 2·8855` is allowed here (only equality with `D_j` is excluded
  for primitive divisors).

*Needs:* §§10.2, 10.4–10.5.

### 10.7 Finite stabilizers and primitive isogeny quotients

Prove that every smooth ample hypersurface `H ⊂ A` is the inverse image of a primitive smooth ample divisor
`H′ ⊂ A/T`, where `T = Stab(H)` is finite and the quotient isogeny has degree `|T|`; that
`d(H) = |T|·d(H′)`; and that for a fixed numerical class only finitely many kernels `T` occur, since their
orders divide `d(H)` and all lie in `A[m]` for a common `m`. The quotient and `H′` descend to `K` (LS,
Corollary 9.3 and proof, p. 87; LS line 4013).

A route: AbelianSchemesAndArithmeticModuli §A3.3 gives the quotient by a finite subgroup and §A3.6 descent
of a `T`-invariant divisor along the étale isogeny; the projection formula compares top self-intersections.

**Checks.**

- For `T = 0` the statement is the identity.
- For `A = E₁ × E₂` and `H` the pullback of a primitive divisor along `[2] × id`, `|T| = 4` and
  `d(H) = 4·d(H′)`.
- A fixed order allows finitely many subgroup schemes of the finite group `A[m]`, not finitely many
  arbitrary finite group schemes.

*Needs:* §10.1; AbelianSchemesAndArithmeticModuli §§A2.4, A3.3, A3.6.

### 10.8 From geometric translations to `A(K)`-translations

For a `K`-defined smooth ample divisor `H` with finite stabilizer `T`, prove that the `K`-defined divisors
in its geometric translation orbit are parametrized by `(A/T)(K)`, and that their `A(K)`-translation classes
inject into `(A/T)(K)/π(A(K))`, which is finite. For primitive `H`, `T = 0` and the translating point between
two `K`-defined divisors is unique and `K`-rational. Hence finitely many geometric classes give finitely many
`A(K)`-classes (LS, arithmetic descent in Theorem 9.2 and Corollary 9.3, pp. 85–87).

A route: identify the proper orbit with `A/T`; `(A/T)(K)` is finitely generated
(HeightsRationalPointsAndObstructions §1.7), and `[m]` on `A/T` factors through `π` for `m = |T|`, so the
quotient is a quotient of `(A/T)(K)/m(A/T)(K)`, finite by §1.6 there. For primitive `H`, uniqueness of the
translating point gives Galois invariance.

**Checks.**

- For nonprimitive `H` a rational orbit point need not lift to `A(K)`; the finite cokernel, not
  surjectivity, is the statement.
- For `T = 0` the map `A(K) → (A/T)(K)` is the identity and the quotient is trivial.
- For `A = E` an elliptic curve and `T = ⟨P⟩` with `P ∈ E(K)` of order 2, the quotient is the cokernel of
  the 2-isogeny on `K`-points, which is finite and can be nontrivial; for `T = E[2]`, `E/T ≅ E` through
  `[2]` and the quotient is `E(K)/2E(K)`.

*Needs:* §10.7; HeightsRationalPointsAndObstructions §§1.6–1.7.

### 10.9 Shafarevich finiteness for all smooth ample hypersurfaces

For `A/K` of dimension `n ≥ 4` and a fixed ample class `φ`, prove that the smooth hypersurfaces of class
`φ` with good reduction outside `S` form finitely many `A(K)`-translation classes; for `n = 3` the same holds
if `d = φ³/6` is not divisible by any exceptional `D_j`, `j ≥ 1` — equivalently `φ³` is not divisible by
`6D_j` (LS, Corollary 9.3 and Theorems 9.4–9.5, pp. 87–88; LS lines 4013–4035). The primitive theorem
excludes equality `d = D_j`; the all-hypersurface theorem must exclude divisibility.

A route: enlarge `S` by the primes dividing `d`, so that all possible kernels are étale and the quotient
divisors have smooth reduction; apply §10.6 on the finitely many quotients of §10.7 (an exceptional quotient
degree `D_j` would divide `d`); pull back and descend with §10.8.

**Checks.**

- Normalized `d` and unnormalized `φ³ = 6d` are kept separate; the first excluded normalized degree is
  `8855`.
- `d = 2·8855` is excluded here though allowed in §10.6, since a degree-2 isogeny quotient can have
  degree `8855`.
- For `n ≥ 4` there is no numerical exception.

*Needs:* §§10.6–10.8; SheafConvolutionOnAbelianVarieties §5.3.

### 10.10 The abelian-surface case through curves

For an abelian surface `A/K`, a fixed ample class `φ` and finite `S`, prove that the smooth hypersurfaces
(curves) of class `φ` with good reduction outside `S` form finitely many `A(K)`-translation classes (LS,
Theorem 9.6 and proof, p. 88; LS line 4041).

A route: adjunction gives genus `g = 1 + φ²/2 ≥ 2`; FaltingsFinitenessAndIsogenyTheorems §R28.5.15 gives
finitely many curves up to isomorphism. For each curve `C`, after a finite extension supplying a point, an
embedding `C → A` is a translation plus a homomorphism from the Jacobian (AbelianSchemesAndArithmeticModuli
§A1.2); the fixed class bounds the positive definite Rosati quadratic form `q(f) = f_*[C]·φ` (with
pushforward multiplicity) on the finitely generated Hom group (§§A6.7, A6.14 there), leaving finitely many
homomorphisms; §10.8 descends to `A(K)`-translations.

**Checks.**

- `q(m·f) = m²·q(f)` because the pushforward cycle carries multiplicity; the reduced image cycle would not
  scale quadratically.
- For `φ` principal (`φ² = 2`) the genus is 2 and `C` is a theta divisor.
- The classical hypersurface monodromy theorem (which needs `n > 2`) is not used.

*Needs:* §10.8; FaltingsFinitenessAndIsogenyTheorems §R28.5.15; AbelianSchemesAndArithmeticModuli §§A1.2,
A6.7, A6.14.

### Examples

The exceptional pair `(5, 20)` gives `D₁ = binomial(25, 5)/6 = 53130/6 = 8855`. Primitive degree `2D₁` avoids
equality with `D₁` but can have an exceptional isogeny quotient, so the all-hypersurface theorem excludes
divisibility. For an abelian surface, adjunction gives genus `1 + φ²/2 ≥ 2`.

### Dependencies

Layers 1, 4, 6 and 8; AbelianSchemesAndArithmeticModuli §§A0.1, A1.2, A1.8, A2.4, A2.10, A3.3, A3.6, A6.7,
A6.14, A6.30–A6.32; SchemeAndStackFoundations §§0.9, 4.14; AlgebraicModuliForArithmeticGeometry §§2.1,
9.4; HeightsRationalPointsAndObstructions §§1.6–1.7; FaltingsFinitenessAndIsogenyTheorems §R28.5.15;
SheafConvolutionOnAbelianVarieties §§5.3, 6.7, 8.3; `TauCeti.AlgebraicGeometry.AbelianVariety`.

## Downstream consumers

The two applications consume the same period and balanced-filtration mechanism: the projective
application needs §9.2's monodromy and the large-`n`, large-`d` estimate of §8.9, while the abelian
application needs SheafConvolutionOnAbelianVarieties' arbitrarily many independent character factors and
the all-points theorem of §6.1. Any later roadmap on integral points of higher-dimensional moduli (for
instance through iterating §7.6 on the Zariski closure of integral points, or through monodromy along
subvarieties as in §7.7) consumes Layers 3–7 as stated here.

## Worked examples

- **Top-weight sums.** For adjoint weights `2, 0, −2`: `D = 3`, `A = 1`, `B = 2`, `T(1/2) = 1`,
  `T(1) = 2 = B`, `T(2) = 2`, `T(3) = 0`.
- **Semibalance in `GL₆`.** For a `2 + 2 + 2` flag and `dim F¹ = 3`, `⟨γ_P, F_M⟩ = 4(a₀ − a₂)` with `a₀` the top
  and `a₂` the bottom contribution: `(1, 1, 1)` is balanced, `(1, 1, 1)` and `(0, 3, 0)` are weakly
  balanced, `(0, 1, 2)` is semibalanced and the generic `(2, 1, 0)` is not.
- **Eulerian central mass.** Rows `(1, 1)`, `(1, 4, 1)`, `(1, 11, 11, 1)`, `(1, 26, 66, 26, 1)` give
  `β₀ = 1/2, 1/2, 244/576, 5710/14400`, all `≤ 1/2`.
- **Projective Hodge numbers.** The quartic surface has primitive `(1, 19, 1)`; the quintic threefold
  (`n = 4`, `d = 5`) has primitive `(1, 101, 101, 1)`, the coefficients of `t⁰, t⁵, t^10, t^15` in
  `(1 + t + t² + t³)⁵`.
- **Parameter dimension.** Plane quartics: `binomial(6, 4) − 1 = 14`.

## Source corrections

The following corrections to the sources are used throughout; each is fixed by an explicit instance.

- **LV, printed p. 971, parameter dimension before (10.8).** The printed dimension
  `binomial(n + d, d − 1) − 1` grows like `d^(n+1)`; the correct dimension is `binomial(n + d, d) − 1 ∼ d^n/n!`,
  the number of degree-`d` monomials in `n + 1` variables minus one. Plane quartics give 14, not 19.
- **LV, Lemma 12.1 and proof, printed pp. 995–996.** The kernel `g_N` has frequencies up to `2N`, so the
  point-count bound is needed through `j = 2N`: the cutoff is `q^((m/2+1)·2N) < b/3` (with `m` the dimension
  of the hypersurface), and the conclusion `dim Z ≤ 3b²/N` is unchanged.
- **LV, proof of Lemma 10.4, printed p. 978.** The similitude multiplier of Frobenius on primitive middle
  cohomology of degree `r` is `ℓ^r`, not `ℓ`; eigenvalues pair as `λ ↔ ℓ^r/λ`.
- **LV, Example 4 after Lemma 11.2, printed p. 988.** For an increasing flag the induced filtration on
  `gr_k = f_k/f_(k−1)` is the image of `F^j ∩ f_k`; a quotient by `f_(k+1)` cannot be the graded piece.
- **LV, end of the proof of Lemma 11.4, printed p. 993.** The forward map is `β ↦ −wβ` and the inverse is
  `α ↦ −w⁻¹α`; the minus signs are needed because the root sets consist of negative roots.
- **LS, Definition 5.44, p. 60.** The associated graded of a decreasing filtration is `F^a/F^(a+1)`.
- **LS, Definition 9.1, p. 85.** Primitivity excludes nonzero stabilizing translations: translation by zero
  fixes every divisor.
- **LS, proof of Lemma 8.14, p. 80.** The cyclic cocycle lemma is applied on `Z_U(φ^r)`, where conjugation by
  `φ` has order dividing `r`; on all of `U` it can have infinite order (`diag(2, 1)` on an upper root group).
- **LS, proof of Lemma 5.49, pp. 61–62.** The coefficient-linear subgroup need not be connected (for even `N`,
  `GO_N` is disconnected); its identity component and finite quotient are treated separately, with the
  rational-orbit finiteness of §2.11.
- **LS, proof of Lemma 5.49, p. 61, use of LV Lemma 2.3.** Faltings's lemma needs Frobenius characteristic
  polynomials in `ℤ[t]`; integral Frobenius eigenvalues only give algebraic-integer coefficients. §1.9
  supplies rationality for the orbit systems, and this roadmap uses that stronger hypothesis.
- **LS, proof of Lemma A.5, p. 92.** The tail comparison is `<`, giving the upper bound `3/2`.
- **LS, proof of Lemma A.4, pp. 91–92.** The propagated geometric bound at index `i` has denominator `3^i`.
- **LS, paragraph after the GO computation in Lemma A.1, p. 90.** The descent count has variance
  `(n + 1)/12`, standard deviation `∼ √(n/12)`, not variance `√n/12`.
- **LS, Lemma A.1, pp. 89–90.** The strict inequality holds for the geometric parity choices (`GL` always,
  `GSp` for `n` even, `GO` for `n` odd); for `n = 2`, `d = 1` the nongeometric `GO₂` fails it.

## References

- **LS.** Brian Lawrence and Will Sawin, *The Shafarevich conjecture for hypersurfaces in abelian varieties*,
  arXiv:2004.09046v5 (2025); published in Annals of Mathematics 202 (2025). Locators use the preprint's
  pages and numbering. <https://arxiv.org/abs/2004.09046>
- **LV.** Brian Lawrence and Akshay Venkatesh, *Diophantine problems and p-adic period mappings*,
  Inventiones mathematicae 221 (2020), 893–999; locators use printed pages, cross-checked against
  arXiv:1807.02721v3. <https://arxiv.org/abs/1807.02721>
- **Beauville.** Arnaud Beauville, *Le groupe de monodromie des familles universelles d'hypersurfaces et
  d'intersections complètes*, Complex analysis and algebraic geometry, Lecture Notes in Mathematics 1194
  (1986), 8–18; author's copy, printed page locators.
- **BC.** Victor Batyrev and David Cox, *On the Hodge structure of projective hypersurfaces in toric
  varieties*, arXiv:alg-geom/9306011v1 (1993); PDF page locators.
- **Serre.** Jean-Pierre Serre, *Galois cohomology*, Springer (1997), I §5.4 and III §4.3.
