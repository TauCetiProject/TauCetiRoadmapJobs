# Roadmap: modularity and Langlands extensions, part II — the proof of symmetric power functoriality

**Summary.** [ModularityAndLanglandsExtensions](../ModularityAndLanglandsExtensions/README.md)
states symmetric power functoriality for holomorphic modular forms and for Hilbert modular forms
(its §§4.12, 4.29, 4.30), the steps of Newton–Thorne's and Clozel–Thorne's proofs as theorems in
their own right (its §§4.5–4.11, 4.23) and their reductions (its §§4.15, 4.22), each with a
one-line route. This Part II starts where that roadmap stops: it builds the four methods behind
those statements and proves them. **Analytic continuation along eigenvarieties** (Layers 0–3):
the rigid spaces of conjugate self-dual pseudocharacters, the continuation of symmetric power
functoriality along irreducible components of definite unitary eigenvarieties, its transport to
the Coleman–Mazur eigencurve, and Newton–Thorne's ping-pong on Buzzard–Kilford's boundary annuli,
proving that automorphy of `Sym^{n−1}` for one level-one form gives it for all (Theorem D).
**Level raising on definite unitary groups** (Layers 4–7): the local representation theory of
unitary groups at inert and ramified places, level raising to prescribed depth-zero types by the
stabilised trace formula, level raising to Steinberg by residually reducible deformation theory
and by Thorne's `p`-adic method, the residually CM seed of Newton–Thorne, and Clozel–Thorne's
sixth and eighth symmetric powers. **Automorphy lifting for symmetric powers** (Layers 8–10):
congruences to forms with `n`-regular refinements, the automorphy lifting theorem in which
regularity of a pseudodeformation ring at an automorphic point replaces control of a dual Selmer
group, and the induction on supercuspidal primes through seasoned representations.
**Tensor-product functoriality lifting** (Layers 11–13): the untwisted tensor
`r_π ⊗ Sym^{r−1} r_σ` by comparing deformation problems with congruent special fibres, the
functoriality lifting theorem for tensor products with one factor fixed, residual witnesses for
the coefficient-Frobenius twisted tensor, and the Bertrand induction proving `SP_n` for every `n`
over every totally real field. Layer 14 assembles the endpoints over `ℚ`: Theorem E and Theorem A
in level one, Theorem B, symmetric power functoriality for every non-CM newform, and the
holomorphy of `L(s, Sym^n f)` for level-one eigenforms, the statement this roadmap's Lean file
records.

| Layer | Title | What it builds |
|---|---|---|
| 0 | Rigid spaces of pseudocharacters | analytic continuation along components, `𝒳_ps` with its irreducible locus, polarized lifts and tangent spaces |
| 1 | Continuation between unitary eigenvarieties | non-critical and ordinary continuation, non-criticality of symmetric powers, automorphy along components of `ℰ_2` |
| 2 | From the eigencurve to unitary eigenvarieties | the twin involution, trivialising character families, the base-change morphism, Theorem 2.33, the bad locus |
| 3 | Level one and ping-pong | Buzzard–Kilford annuli, boundary weights, twins, level-one refinements, local images, Theorem D |
| 4 | Local representation theory for unitary level raising | unitary groups and inner twists, character identities, stable base change, depth-zero types, fixed-type rings, ramified Iwahori–Hecke algebras, the Kazhdan–Lusztig modules and their signs |
| 5 | Level raising to prescribed types | Newton–Thorne I Theorem 4.1 and Clozel–Thorne III Theorem 4.2 |
| 6 | Level raising to Steinberg | Newton–Thorne I Theorem 6.1, Clozel–Thorne III Theorems 5.1 and 5.7, Thorne 2024 Theorem 6.11 |
| 7 | Seeds | the CM form `σ₀`, residually CM symmetric powers with a Steinberg place, Theorem E in 2-power rank, `Sym^6` and `Sym^8` |
| 8 | Killing ramification | the non-regular divisor, congruences to `n`-regular forms, Theorem B relative to a level-one seed |
| 9 | Automorphy lifting for symmetric powers | the patching argument of Newton–Thorne II and its Theorem 2.1 |
| 10 | Seasoned representations | removing supercuspidal primes, Newton–Thorne II Theorem 3.1 relative to a seed |
| 11 | The untwisted tensor | Newton–Thorne 2026 Theorem 3.2 |
| 12 | Tensor functoriality lifting | Newton–Thorne 2026 Theorem 4.1 |
| 13 | Residual twisted tensors and the induction | Theorems 5.5 and 5.9, Proposition 6.3, Thorne's induction step, `SP_n` for all `n` |
| 14 | Endpoints over `ℚ` | Theorems A, B, E for every rank, Newton–Thorne II Theorem A, holomorphy of `L(s, Sym^n f)` in level one |

## Scope and ownership

This roadmap owns the proofs of the theorems that ModularityAndLanglandsExtensions states in
§4.5 (automorphy of `Sym^{n−1}` is constant on eigencurve components), §4.6 (Buzzard–Kilford),
§4.7 (Theorem D), §4.8 (level raising to Steinberg for symmetric powers of theta series), §4.9
(Theorem E), §4.10 (congruences to `n`-regular forms), §4.11 (automorphy lifting for symmetric
powers), §4.23 (tensor-product functoriality lifting and the residual twisted-tensor witness),
and of the routes of its §§4.12, 4.20, 4.29, 4.30 and 4.31. The statements stay in that roadmap;
the targets here restate them only to the extent needed to fix hypotheses for their proofs, and
each says which section it proves. It also owns every intermediate object of those proofs that no
earlier roadmap states: the pseudocharacter spaces of Layer 0, the twin involution and the
base-change morphism of the eigencurve, the depth-zero types and the Kazhdan–Lusztig modules of
Layer 4, the deformation data of Layers 6, 9, 11 and 12, seasoned representations, the
companion forms of Newton–Thorne 2026 and the hypotheses `S5-global`, `S5-local`.

It imports, by section and never re-plans:

- from ModularityAndLanglandsExtensions: the automorphy predicate in Newton–Thorne's sense (§0.2),
  accessible and `n`-regular refinements (§1.1), the projective image condition (§1.7), the
  symmetric power lift and `SP_n` (§§1.10, 1.12), the tensor and low-rank lifts (§§1.11, 1.13–1.15),
  Moret–Bailly with Galois control (§2.13), Mok's and Kaletha–Mínguez–Shin–White's classifications
  and Arthur's local packets (§§3.12, 3.15, 3.16), characteristic-zero enormous image and adjoint
  Selmer vanishing (§4.1), ordinary lifting with several residual constituents (§4.2), the
  definite-unitary eigenvarieties with their closed realization, Emerton's Jacquet functor, family
  triangulations, trianguline deformations and classicality (§4.3), Anastassiades–Thorne's level
  raising for `GL_{2n}` (§4.4), the one-prime criterion (§4.15) and the Clozel–Thorne reductions
  with Newton–Thorne 2026 Proposition 6.1 and Thorne 2024 §8 (§4.22);
- from PotentialAutomorphyInfrastructurePartII: ι-ordinarity, soluble descent, auxiliary fields
  and characters (PL.0), connection of local lifts and potential diagonalizability (PL.1),
  definite unitary groups, algebraic modular forms, Hecke algebras, ordinary parts and Hida theory
  (PL.2), Taylor–Wiles data and ordinary `R = T` (PL.3), ordinary and potentially diagonalizable
  automorphy lifting and finiteness (PL.4, PL.5), residually reducible deformation rings, generic
  primes and the generic `R = T` theorem (PL.6, PL.7), adjoint Bloch–Kato Selmer groups and
  semistable pseudodeformation rings (PL.8);
- the deformation theory of LocalGaloisDeformationRings, GlobalGaloisDeformations and
  DeformationAndDerivedPatchingAlgebra; the eigencurve and eigenvariety machine of PadicFamilies;
  irreducible components of rigid spaces from AdicSpacesPartIIPartII RZ.1; unitary endoscopy, base
  change and the trace formula from EndoscopicTransferAndUnitaryTraceComparison; Iwahori–Hecke
  algebras, induction and cuspidal support from SmoothRepresentationsOfLocalGroups; adequacy,
  Clebsch–Gordan decompositions, Dickson's classification and enormous subgroups from
  ArithmeticGaloisRepresentations; the exponent-two ramification fields and the reciprocity of the
  two auxiliary splitting conditions from ArithmeticGaloisDuality §R02.3.5 (this is Newton–Thorne
  2026 Lemma 5.3, which is therefore not restated here); quaternionic patching for `GL_2` from
  GL2ModularityLifting; the remaining suppliers are listed with their sections below.

The Kazhdan–Lusztig classification of Iwahori-spherical representations is stated here, in
§4.9, in the form the Clozel–Thorne modules need. The level-one cuspidal cohomology of `GL_n(ℤ)`
and the local theory of `GSp_4`, which use symmetric power functoriality as an input but
different methods, are outside this roadmap; Sato–Tate and the Bianchi and CM-field results of
the parent are not touched.

Newton–Thorne I proves Theorem 7.1 for odd rank by an induction whose rank-two block is not
conjugate self-dual as printed (nt21, proof of Proposition 7.4, pp. 86–88: the block
`τ₀ ⊗ |·|^{(n−2)/2} ιω₁ω₀^{n−1}` differs from its required polarized dual by `δ_{K/ℚ}|_{G_{F₀}}`).
This roadmap therefore proves Theorem 7.1 in rank `2^r` by Anastassiades–Thorne alone (§7.5),
records the odd inductive step with the missing block as an explicit hypothesis (§7.4), and
obtains Theorem 7.1, Theorem E and every endpoint over `ℚ` in all ranks from the independent
Newton–Thorne 2026 induction of Layer 13 (Layer 14). The theorems of Layers 8 and 10 are stated
relative to a level-one seed, which is exactly the logical structure of Newton–Thorne I §8 and
Newton–Thorne II §3.

## Conventions

- Galois conventions follow ModularityAndLanglandsExtensions (its Conventions and §0.2):
  geometric Frobenius; local reciprocity sends uniformisers to geometric Frobenius;
  `rec^T(π_v) = rec(π_v ⊗ |det|^{(1−n)/2})`; the cyclotomic character `ε` has Hodge–Tate weight
  `−1`. RAESDC, RACSDC, RAECSDC and ι-ordinary are as in PotentialAutomorphyInfrastructurePartII
  PL.0. For a cuspidal `π` of `GL_2`, `r_{π,ι}` is its `p`-adic Galois representation.
  "`Sym^{n−1} r_{π,ι}` is automorphic" means it is `r_{Π,ι}` for a RAESDC (totally real base) or
  RACSDC (CM base) `Π` of `GL_n`, as in ModularityAndLanglandsExtensions §0.2; "`Sym^{n−1}π`
  exists" means the all-place lift of its §1.10. `SP_n` is its §1.12 statement: for every totally
  real `F` and every non-CM RAESDC `π` of `GL_2(𝔸_F)`, `Sym^{n−1}π` exists. `TP_r` is tensor
  functoriality `GL_2 × GL_r → GL_{2r}` for RAECSDC representations over CM fields whose tensor is
  irreducible and Hodge–Tate regular (Clozel–Thorne's conjecture, as used in th24 §7, p. 42).
- `𝒢_n = (GL_n × GL_1) ⋊ {1, j}` is the group of Clozel–Harris–Taylor with multiplier `ν`;
  polarized representations take values in `𝒢_n` (GlobalGaloisDeformations §8.1).
  Pseudocharacters are Chenevier determinants (IntegralHeckeAndGaloisDeterminants §0.2); when `n!`
  is invertible they are determined by their traces (§0.5 there).
- `φ_p ∈ G_{ℚ_p}` is a lift of arithmetic Frobenius acting on coefficients; `φ_p r̄` and
  `^{φ_p} r̄` denote the coefficient twist, never evaluation at a Frobenius element. `a₀(p) ≥ 3` is
  the adequacy threshold of ArithmeticGaloisRepresentations §7.9 (Newton–Thorne 2026 Lemma 2.3,
  Thorne 2024 Lemma 7.3).
- Symmetric powers `Sym^d` of integral representations are the quotient symmetric powers of
  ArithmeticGaloisRepresentations §7.1; the mod-`p` decompositions of §7.8 there are statements
  about semisimplifications.
- In residually reducible arguments "primitive" means weakly primitive in the sense of
  PotentialAutomorphyInfrastructurePartII PL.6, tested over an algebraic closure of the residue
  field. Before integral coefficient rings are fixed, the residue field is enlarged to a common
  finite splitting field for every subgroup of the residual image ("Weak primitivity over a
  splitting coefficient field", PL.6); primitivity over an arbitrary finite field is never used
  in place of this.
- An eigencurve or eigenvariety point is written `z = (π, χ)`, with `χ` a refinement; `s(z)` is
  its slope and `κ(z)` its weight. Slopes use the normalization of ModularityAndLanglandsExtensions
  §4.3. For `p = 2` the weight coordinate is `w = κ(5) − 1`.
- Locators are to the versions recorded in `sources.toml`: arXiv versions by PDF page for
  Newton–Thorne I (arXiv v3), Newton–Thorne II (arXiv v2), Newton–Thorne 2026 (arXiv v2), Thorne
  2024 (arXiv v2), Anastassiades–Thorne and Buzzard–Kilford; Clozel–Thorne III and Clozel–Thorne
  II by the page numbers of the authors' manuscripts; Conrad by internal pagination. Where a
  printed argument needs repair, the target says what the printed text does and what is used
  instead, at the claim.

## Exact supplier contracts

### From Mathlib

- `padicValNat.pow_two_sub_one` (`Mathlib/NumberTheory/Multiplicity.lean`): for odd `x > 1` and
  even `n ≠ 0`, `v₂(x^n − 1) + 1 = v₂(x + 1) + v₂(x − 1) + v₂(n)`; with `x = 5` this is
  `v₂(5^j − 1) = 2 + v₂(j)` for even `j > 0`, used for the boundary weights of §3.2. It says
  nothing about odd `j`, where `v₂(5^j − 1) = 2` is checked directly.
- `Polynomial.discr` (`Mathlib/RingTheory/Polynomial/Resultant/Basic.lean`): the discriminant of
  a polynomial over a commutative ring, applied in §8.1 to the characteristic polynomial of
  `Sym^{n−1}` of a Frobenius; its vanishing over a field detects a repeated root only for a
  polynomial of the expected degree, which holds for a characteristic polynomial.
- `GaussianInt` (`Mathlib/NumberTheory/Zsqrtd/GaussianInt.lean`): `ℤ[i]` with its conjugation,
  for the coefficients of the CM form `σ₀` of §7.1.
- `Nat.exists_prime_lt_and_le_two_mul` (`Mathlib/NumberTheory/Bertrand.lean`): Bertrand's
  postulate, for the choice `n/2 < p < n` in §13.10 (applied to `⌊n/2⌋`: a prime `p` with
  `⌊n/2⌋ < p ≤ 2⌊n/2⌋` satisfies `p < n` for `n ≥ 6`, since an even `n > 2` is not prime).
- `NumberField.abs_discr_gt_two` (`Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean`):
  a number field of degree `> 1` has `|d_K| > 2`, so some prime ramifies; used in §13.4 to see
  that the Galois group of a coefficient field is generated by its inertia subgroups.
- `HasProd`, `Differentiable`, `Complex.cpow`: the analytic carriers of the statement of §14.4.

### From Tau Ceti

- `HeckeRing.GL2.Newform` (`TauCeti/NumberTheory/ModularForms/Newforms/Newform.lean`): a
  normalised newform of level `Γ₁(N)` and weight `k`, with nebentypus; for `N = 1` these are the
  normalised Hecke eigenforms of level one.
- `HeckeRing.GL2.Newform.satakeParameters`,
  `HeckeRing.GL2.Newform.exists_satakeParameters_eq_pair`,
  `HeckeRing.GL2.Newform.LSeries_eulerProduct_hasProd_satakeParameters`
  (`TauCeti/NumberTheory/ModularForms/Newforms/Satake.lean`): the Satake parameters at `p` are the
  multiset of roots of `X² − a_p X + χ(p) p^{k−1}`, an unordered pair, and they factor the Euler
  product of `L(s, f)` for `Re s > k/2 + 1`. No Ramanujan–Deligne bound is supplied; §14.4 uses it
  only through its proof route.
- `CuspForm.hasEntireExtension_qExpansion_coeff`
  (`TauCeti/NumberTheory/ModularForms/LFunction/Basic.lean`): the `L`-series of a cusp form of positive
  weight has an entire extension; it is the case `n = 1` of §14.4.

### From TauCetiRoadmap.ModularityAndLanglandsExtensions

- §0.2 (automorphy predicate), §1.1 (accessible and `n`-regular refinements; accessibility of
  symmetric-power refinements after Zelevinsky and Rodier), §1.7 (projective image sandwich),
  §1.10 (symmetric power lift with its all-place predicate), §1.11 (Ramakrishnan's
  `GL_2 × GL_2`), §1.12 (`SP_n`), §1.13 (Kim–Shahidi), §1.14 (Kim), §1.15 (`SP_n` for `n ≤ 5`),
  §2.13 (Moret–Bailly with prescribed local extensions), §3.12 (Mok), §3.15 (local Arthur
  packets), §3.16 (Kaletha–Mínguez–Shin–White), §4.1 (enormous image and adjoint Selmer
  vanishing), §4.2 (ordinary lifting with several residual constituents, Allen–Newton–Thorne),
  §4.3 (definite-unitary eigenvarieties `ℰ_n(τ̄)` with weight map, Hecke pseudocharacter and closed
  realization in `𝒳_ps × 𝒯_n`; Emerton's Jacquet functor; family triangulations; trianguline
  deformations and the trianguline tangent bound of nt21 Proposition 2.11; the symmetric-power
  character and pseudocharacter maps `σ_{n,p}`, `σ_{n,g}`; classicality of non-critical
  `n`-regular points, nt21 Lemma 2.30), §4.4 (Anastassiades–Thorne, the odd-rank type data of
  Newton–Thorne I Theorem 4.1 and its Clozel–Thorne II input), §4.15 (one prime suffices),
  §4.22 (Clozel–Thorne reductions, Newton–Thorne 2026 Proposition 6.1, Thorne 2024 §8), and the
  convention "Automorphic induction and its cuspidality criterion" with the strong cyclic base
  change it imports from EndoscopicTransferAndUnitaryTraceComparison §6.24. These are used as
  stated there.

### From TauCetiRoadmap.PotentialAutomorphyInfrastructurePartII

Cited by layer and by the title of the target in that layer.

- PL.0: "Ordinary Galois representations of weight λ"; "Automorphic polarized representations
  and their levels"; "ι-ordinary automorphic representations have ordinary Galois
  representations" and its converse; "Ordinarity of a regular algebraic isobaric sum";
  "Automorphy is invariant under algebraic twists"; "Soluble base change and descent of
  automorphy"; "Automorphy of an induced representation descends"; "Soluble and cyclic CM
  extensions with prescribed local behaviour"; "Algebraic characters with prescribed
  conjugate-norm and local behaviour".
- PL.1: "Connecting and strongly connecting local lifts" and their properties; "Ordinary and
  Fontaine–Laffaille representations are potentially diagonalizable"; "Two-dimensional
  potentially Barsotti–Tate representations are potentially diagonalizable" (stated for `l > 2`).
- PL.2: the definite unitary group, algebraic modular forms, Hecke algebras, the `𝒢_n`-valued
  Hecke representation, constituents' Galois representations, base change and descent with
  `GL_n`, Iwahori ordinary parts, the big ordinary Hecke algebra, ordinary deformation data, Hida
  classicality and weight independence (which contains Clozel–Thorne II Proposition 3.10),
  exactness and group-ring freeness at `l`-torsion-free level. These are stated for odd `l`.
- PL.3: Taylor–Wiles data with a residual eigenspace; Taylor–Wiles level structures; ordinary
  `R = T` with Ihara avoidance.
- PL.4: ordinary automorphy lifting, finiteness of ordinary rings, characteristic-zero lifts.
- PL.5: automorphy lifting for potentially diagonalizable representations (BLGGT 4.2.1).
- PL.6: Schur residual representations, primitive representations, sums of characters with large
  ratios are primitive, the subring `P_𝒮`, restriction of pseudodeformations is finite,
  reducibility ideals, connectedness dimension, the reducible locus with Steinberg places,
  generic primes, large quotients contain generic primes, twisting and soluble base change for
  residually reducible rings, weak-primitive generic restriction, weak primitivity over a
  splitting field, the weak-primitive generic `R = T` theorem.
- PL.7: finiteness for sums of characters, the small reducible locus, generic primes in large
  quotients, Bellovin–Gee global lifts (Schur form), automorphic lifts of prescribed type, the ANT
  lifting and finiteness theorems with source primitivity, two adequate constituents with source
  primitivity, finiteness with an unobstructed auxiliary place.
- PL.8: generic Weil–Deligne representations, Bloch–Kato conditions at generic places,
  semistable conjugate self-dual pseudodeformation rings, vanishing of adjoint Bloch–Kato Selmer
  groups of unitary type, the pseudodeformation ring is its residue field at an automorphic point,
  ordinary tangent vectors of trivial weight lie in `H¹_g`.

What PotentialAutomorphyInfrastructurePartII must provide (gap:geometric-weak-primitive-auxiliary-finiteness): the finiteness theorem "Finiteness with an unobstructed auxiliary place" of PL.7 in the geometric weak-primitive setting of Newton–Thorne 2026 Proposition 3.9 (nt26 pp. 20–21), applied twice (with and then without an auxiliary Steinberg place), including the comparison of the non-scalar unobstructed auxiliary local ring with the Hecke algebra at auxiliary level.

What PotentialAutomorphyInfrastructurePartII must provide (gap:dyadic-definite-unitary-forms): the PL.2 constructions for `l = 2` used by Newton–Thorne II §2 and Newton–Thorne 2026 §4 at `p = 2`: algebraic modular forms on the definite unitary group, exactness and group-ring freeness at sufficiently small level, Taylor–Wiles level structures, and the Hecke-valued determinant of the localized Hecke algebra (the `𝒢_n`-valued lift is not needed), together with the potential diagonalizability of two-dimensional potentially Barsotti–Tate representations for `l = 2` in PL.1.

### From TauCetiRoadmap.AdicSpacesPartII, AdicSpacesPartIII and AdicSpacesPartIIPartII

- AdicSpacesPartII §R1.9 (dimension and the identity principle on connected normal rigid spaces).
- AdicSpacesPartIII §R2.9 (Berthelot's generic fibre of formal schemes of Conrad's type `FS_C`,
  which includes the formal spectrum of a complete Noetherian local `W(k)`-algebra).
- AdicSpacesPartIIPartII RZ.1 (the normalization of a rigid space, its irreducible components as
  images of connected components of the normalization, and the irreducibility criterion: a proper
  Zariski closed subset of an irreducible space is nowhere dense).

What AdicSpacesPartIIPartII must provide (gap:components-under-field-extension): in RZ.1, the behaviour of irreducible components of a quasi-separated rigid space over a complete field `E` under extension of the ground field to a finite extension and to `ℂ_p`: every component over `ℂ_p` lies in the base change of a component over `E`, and if there are finitely many components then after a finite extension `E′/E` all components are geometrically irreducible (Conrad, con99 Theorem 3.4.2, internal pp. 26–27).

### From TauCetiRoadmap.IntegralHeckeAndGaloisDeterminants

§0.2 (Chenevier determinants and the determinant of a matrix representation), §0.5 (a determinant
is determined by its trace when `d!` is invertible), §1.1 (Cayley–Hamilton algebras), §1.3
(Henselian lifting: a residually split absolutely irreducible Cayley–Hamilton quotient over a
Henselian local ring is a matrix algebra), §1.5 (universal algebras; base change to an absolutely
irreducible point is a matrix algebra, after chen14 §1.22 and Proposition 1.23).

### From TauCetiRoadmap.LocalGaloisDeformationRings

§F.1.5 (strict and full conjugacy agree for Schur residual representations), §F.1.9 and §F.2.11
(the determinant deformation functor and its pro-representability), §1.1 (local framed rings),
§1.4 (tangent and obstruction description), §1.10 (fixed determinant), §1.18 (completed local
rings at generic-fibre points are framed rings), Layer 2: §2.13 (unrestricted rings away from `p`
are complete intersections), §2.15 (Ihara avoidance components), §2.18 (inertial types with
monodromy), §2.24 (fixed-type rings in rank `n`), §2.26 (the Steinberg ring is a domain), §2.27
(Breuil–Mézard cycles for division algebras away from `p`); §6.10 (Clozel–Thorne partition rings
`R^m`), §8.12 (Newton–Thorne local quotients), §8.14 (torsion semistable lifts form a stable
condition).

### From TauCetiRoadmap.GlobalGaloisDeformations

Layer G7: §8.1 (polarized deformation problems), §8.3 (tangent and obstruction spaces), §8.5
(Taylor–Wiles places in rank `n` and the diamond action), §8.6 (Taylor–Wiles primes for enormous
image); §5.7 (Taylor–Wiles primes for odd `p` in rank two); §§4.6, 4.11 (free actions and the
dyadic determinant torsor in rank two).

What GlobalGaloisDeformations must provide (gap:tensor-taylor-wiles-primes): in Layer G7, the Taylor–Wiles prime selection of Newton–Thorne 2026 §4 (nt26 pp. 29–30, Propositions 4.8–4.9): from rank-two large residual image and a perfect subgroup of the rank-`2r` tensor image containing an element with `2r` distinct eigenvalues, arbitrarily deep places `q_v ≡ 1 mod p^N` at which the tensor Frobenius has `2r` distinct ordered eigenvalues and which control the rank-two dual Selmer group, for simultaneous patching; together with Newton–Thorne II Lemmas 2.7 and 2.9 (nt21b pp. 14, 18) under `p^a > max(5, 2n − 1)`, including `p = 2`.

### From TauCetiRoadmap.DeformationAndDerivedPatchingAlgebra

§5.6 (patching a ring and a based free module), §5.5 (numerical depth), §6.1 (near faithfulness on
native support), §6.7 (generic and special components), §9.2 (codimension and concentration).

What DeformationAndDerivedPatchingAlgebra must provide (gap:formal-torus-patching): in Layer 6, the formal-group contract used by Newton–Thorne II Propositions 2.8–2.9 and Newton–Thorne 2026 Proposition 4.9 (after Khare–Wintenberger, kw09 Proposition 2.5): a free action of a formal torus `Ĝ_m^γ` on `Sp R′`, an equivariant map `δ` to `Ĝ_m^γ` for the square action with fibre `Sp R = δ^{−1}(1)`, the resulting `Ĝ_m^γ[2]`-torsor `Sp R → Sp R^{inv}` on represented complete-local functors, actions on both patched modules, and transitivity of `Ĝ_m^γ[2](𝒪)` on the components containing a given point; no torsor on `Spec` is inferred from the formal statement.

### From TauCetiRoadmap.FiniteFlatGroupsAndIntegralPadicHodgeTheory

§R07.4.20 (crystalline representations with Hodge–Tate weights in `{0,1}` come from
`p`-divisible groups), §R07.1.40 (Raynaud's embedding), §R07.5.10 (residual types of potentially
Barsotti–Tate representations of tame type), §R07.5.11 (Fontaine–Laffaille residual types).

What FiniteFlatGroupsAndIntegralPadicHodgeTheory must provide (gap:artinian-crystalline-quotients): in Layer R07.4, the generic-fibre comparison of Berthelot–Breen–Messing (bbm82 Théorème 3.1.1) in the form used by Newton–Thorne II Lemma 2.2 and Newton–Thorne 2026 Lemma 4.2: every finite flat Artinian rank-two point of Hodge type `{0,1}` is a quotient of a Galois-stable lattice in a crystalline representation with Hodge–Tate weights in `{0,1}`, functorially in the coefficient quotient and compatibly with tensor products and symmetric powers with fixed lattices.

### From TauCetiRoadmap.GL2ModularityLifting

Layer 2 (§§2.5, 2.8: quaternionic Hecke modules at Taylor–Wiles levels and their freeness),
Layer 3 (§§3.1–3.7: the arithmetic patching template), Layer 6 (§§6.1, 6.6, 6.7: dyadic patching
with the free determinant torus action and the torsor structure).

What GL2ModularityLifting must provide (gap:unobstructed-auxiliary-prime-and-slope-count): in Layer 3, the two inputs of Newton–Thorne I Proposition 8.3 and Newton–Thorne II Lemma 3.4 not covered by the template: unobstructedness of the local deformation problems at the ramified primes for all but finitely many `p` (Weston, wes04) together with an auxiliary prime `q_a > p` with formally smooth local lifting ring, giving patched modules of full support (nt21 pp. 92–95); and the dimension count of the slope-`(0,1)` part of quaternionic cohomology at level `U₀(p³)` (nt21b pp. 20–22).

### From TauCetiRoadmap.OrdinaryAutomorphicFormsAndModularityLifting

§2.6 (finiteness and freeness at a permissible maximal ideal), §2.11 (Hilbert Hida weight change
with fixed residual determinant); Hida's control theorem through PadicFamilies §5.8.

### From TauCetiRoadmap.PadicFamilies

§2.8 (classicality of small-slope points), §2.10 (comparison with the Coleman–Mazur–Buzzard
eigencurve), §2a.4 (Newton polygons and fibre-degree loci), §2a.5 (strict neighbourhoods with a
fixed slope block), §2a.13 (points and finite-slope eigenpackets), §2a.14 (equidimensionality and
components of the eigenvariety), §5.8 (Hida's control theorem).

### From TauCetiRoadmap.PadicHodgeTheory and PhiGammaModulesAndIwasawaCohomology

PadicHodgeTheory §4.4 (Sen's theorem: the Lie algebra of the inertia image is the smallest
subspace whose extension to `ℂ_p` contains the Sen operator), §5.3 (potentially semistable
periods, Fontaine's recipe for the Weil–Deligne parameter). PhiGammaModulesAndIwasawaCohomology
§7.5 (saturated and strict triangulations).

### From TauCetiRoadmap.PotentialModularityAndCompatibleSystems

§9.2 (points on prescribed Newton–Thorne components, the Khare–Wintenberger lifting step of
Newton–Thorne 2026 Lemma 3.1), §10.10 (prescribed-type local-to-global lifting in weight two,
`p` odd).

### From TauCetiRoadmap.SerreWeightAndLevelOptimisation

§2.4 (Diamond's level-raising criterion), §3.2 (supersingular residual local form: `a_p = 0`
gives an irreducible local residual representation, Edixhoven Theorem 2.6), §6.9 (quaternionic
level raising), §6.11 (Khare–Wintenberger prescribed-local-type modular lifts).

What SerreWeightAndLevelOptimisation must provide (gap:level-raising-prescribed-components): in Layer 2, level raising for `GL_2(𝔸_ℚ)` with simultaneously prescribed Steinberg components and supercuspidal components of given tame inertial type at auxiliary primes satisfying the level-raising congruences (Diamond–Taylor's non-optimal levels, as used in nt21, proof of Proposition 7.4, p. 86).

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

§1.8 (Brauer–Nesbitt for groups and monoids), §§3.3, 3.6 (Weil–Deligne conductors and their
behaviour under reduction), §4.4 (Dickson's classification and its consequences for residual
images), §7.1 (continuous symmetric, exterior and tensor powers), §7.6 (Zariski closures,
monodromy groups, Goursat), §7.8 (Clebsch–Gordan and Pieri in characteristic `p`), §7.9 (adequate
subgroups and the threshold `a₀(p)`), §7.10 (enormous images, with its hypothesis that every
characteristic polynomial splits over the coefficient field).

### From TauCetiRoadmap.ArithmeticGaloisDuality

§R02.3.5: exponent-two ramification fields `F(S)`; one new ramified prime and quadratic
reciprocity (Newton–Thorne 2026 Lemma 5.3, with the symmetric splitting criterion); the antiunit
class-field rank `d₀` and Maire's lower bound.

### From TauCetiRoadmap.AutomorphicGaloisRepresentations and AutomorphicGaloisRepresentationsPartII

AutomorphicGaloisRepresentations §1.5 (rank-two newform realisation), §2.3 and §6.2 (residual
eigensystems and the residual representation of a newform), §7.4 (Dimitrov's residual large
image), §7.5 (Ribet–Momose large image). AutomorphicGaloisRepresentationsPartII AG2.3 ("The
polarization sign of the constructed system", Bellaïche–Chenevier) and AG2.6 ("Complex and local
coefficient conjugation"; "Coefficient independence of tensor automorphy", for untwisted tensors
of two RAESDC factors).

### From TauCetiRoadmap.ClassicalSerreModularity and GL2AutomorphicRepresentationsAndTransfer

ClassicalSerreModularity Layer R27.1 ("Good-dihedral primes"; "Lemma 6.3: image and
propagation"). GL2AutomorphicRepresentationsAndTransfer §R16.3.1 (principal-series parameters),
§R16.3.2 (Steinberg monodromy), §R16.3.3 (supercuspidal parameters), §R16.3.5 (conductors),
§R16.3.7 (tamely dihedral representations of prime order), §R16.3.8 (their supercuspidality).

### From TauCetiRoadmap.EndoscopicTransferAndUnitaryTraceComparison

§2.8 (twisted transfer factors), §2.10 (Euler–Poincaré functions and pseudo-coefficients), §2.11
(matching test functions), §2.14 (transfer at the real place), §2.15 (endoscopic transfer of
pseudo-coefficients), §§4.9–4.10 (stable base change: fundamental lemma and transfer), §6.4
(twisted characters), §6.9 (base-change transfer of test functions), §6.10 (archimedean
Euler–Poincaré and twisted Lefschetz functions), §6.24 (strong cyclic base change for `GL_n`),
§6.26 (cyclic automorphic induction), §6.27 (base change and descent between unitary groups and
`GL_n`), §6.29 (Labesse's cohomological weak base change and descent), §11.2 (tempered local
unitary packets), §§13.1, 13.3–13.5 (weak unitary base change, automorphic induction of a
quadratic Hecke character, local unitary base change).

What EndoscopicTransferAndUnitaryTraceComparison must provide (gap:explicit-tempered-unitary-packets): in §11.2, Mœglin's explicit description of tempered representations of `p`-adic unitary groups at an inert place: the extended cuspidal support and stable base change with finite fibres (moe07 §§5.4, 5.7), the twisted character identity for `θ`-discrete parameters (moe07 §5.5) and its extension to all tempered parameters, the reducibility points of depth-zero supercuspidals in odd residue characteristic (Lust–Stevens, ls20 §4), and the hereditary Jacquet-module and socle computations of the induced representations used by Clozel–Thorne III §3.5 (ct17 pp. 24–27), including the full socle multiplicity of the induction after ct17 (3.9).

What EndoscopicTransferAndUnitaryTraceComparison must provide (gap:deligne-lusztig-transfer): in §2.11, the endoscopic transfer of inflated Deligne–Lusztig functions for unramified groups when the residue characteristic exceeds the Coxeter number (Kazhdan–Varshavsky, kv12 Theorem 2.2.5 of the arXiv version), in the form used by Newton–Thorne I Proposition 1.16 (nt21 pp. 18–19).

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups and ReductiveGroupsPartII

SmoothRepresentationsOfLocalGroups SR.1.4–SR.1.5 (Iwahori decompositions, Iwahori–Matsumoto and
Bernstein presentations, stated for split groups), SR.2.1–SR.2.3 (smooth and compact induction,
the irreducibility criterion for compact inductions, Jacquet functors, Iwahori invariants),
SR.3.1–SR.3.4 (cuspidal support, the Bernstein decomposition, tempered representations, the
Steinberg representation and the Iwahori block), SR.4.4 (unramified unitary groups).
ReductiveGroupsPartII §RG2.1.3 (valued root data, with the ramified quasi-split unitary example),
§RG2.3.3 (parahoric group schemes), §§RG2.4.1–RG2.4.2 (the Iwahori–Weyl group and the affine
Tits system).

What SmoothRepresentationsOfLocalGroups must provide (gap:iwahori-matsumoto-quasi-split): in SR.1.5, the Iwahori–Matsumoto presentation of the Iwahori–Hecke algebra `H(G, B)` for every group with an affine Tits system supplied by ReductiveGroupsPartII §RG2.4.2, with parameters `q_s = [BsB : B]`, in particular for the ramified quasi-split unitary groups `U_{2k+1}`: quadratic relations `(T_s − q_s)(T_s + 1) = 0` and braid relations, over `ℤ` with the positive braid monoid and over `ℤ[q_s^{−1}]` with the braid group.

### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors

AL.2 ("Global Godement–Jacquet theory": for unitary cuspidal `π` of `GL_n(𝔸_K)` with `n ≥ 2` the
completed standard `L`-function is entire, with its Euler product of unramified local factors),
used in §14.4.

### From TauCetiRoadmap.CompletedCohomologyAndLocalGlobalCompatibility

§0.7 (definite unitary forms of rank `n` and their completed degree-zero cohomology).

What CompletedCohomologyAndLocalGlobalCompatibility must provide (gap:drinfeld-steinberg-detection): in §0.7, the inputs of Thorne 2024 Theorem 6.11 from its §§3–6: Steinberg detection in `p`-adic automorphic forms on definite unitary groups (th24 Theorem 3.4, p. 16), the even-multiplicity weight theorem (Theorem 4.5, p. 20), concentration in degree `n − 1` of the Hecke-localized derived tensor product `RΓ_c(Ω^{n−1}, k) ⊗^L_{k[GL_n(F_{w₀})^0]} A_𝔪` of Drinfeld-space cohomology with the automorphic module under residual genericity (Theorem 5.2, p. 24; not a concentration statement for bare `RΓ_c(Ω^{n−1}, k)`), and the comparisons of Corollary 6.3 (p. 33) and Proposition 6.5 (p. 35).

### From TauCetiRoadmap.Chebotarev, ClassFieldTheory and RepresentationTheory/CharacterTheory

Chebotarev Layer 10 (Dirichlet-density Chebotarev). ClassFieldTheory Layer 11 (global class
formation and Artin reciprocity), Layer 12 (global existence and the norm index), Layer 13 (norm
theorems and class fields), Layer 14 (Hilbert and quadratic reciprocity). CharacterTheory Layer 3
(character tables and orthogonality) and Layer 9 (the representation theory of `GL₂(𝔽_q)`).

What RepresentationTheory/CharacterTheory must provide (gap:deligne-lusztig-finite-unitary): beyond Layer 9, the finite-group inputs of Newton–Thorne I §1.8 (nt21 pp. 15–18): Deligne–Lusztig induction `R_T^G θ` for finite reductive groups with irreducibility of `±R_T^G θ` for `θ` in general position and its transitivity, Lusztig's cuspidal unipotent representation of `U_3(𝔽_q)`, the modular irreducibility of cuspidal unipotent characters in non-defining characteristic (Dudas–Malle, dm18 Theorem 1), and the decomposition of the reduction of `R_C^{U_3}θ` modulo `p` when `q` has order 6 modulo `p` (Geck's decomposition numbers for `U_3`, as used in nt21 Proposition 1.15, pp. 17–18).

## How to read the build

Layer 0 builds the rigid-analytic carriers (pseudocharacter spaces and the analytic continuation
lemma) on which Layers 1–2 propagate automorphy of symmetric powers from a point of a definite
unitary eigenvariety, or of the eigencurve, to its whole irreducible component; Layer 3 connects
all level-one forms through the 2-adic boundary of weight space. Layers 4–6 are independent of
Layers 0–3: Layer 4 is local representation theory at inert and ramified places, Layer 5 uses it
with the stabilised trace formula to raise the level to depth-zero types, and Layer 6 raises the
level to Steinberg by residually reducible deformation theory and by Thorne's `p`-adic method.
Layer 7 combines them into the residually CM seed and the Clozel–Thorne powers. Layers 8–10 kill
ramification and supercuspidal primes relative to a level-one seed, through the automorphy lifting
theorem of Layer 9. Layers 11–13 use Layers 6 and 9 only and prove `SP_n` for all `n` over every
totally real field. Layer 14 discharges the seeds of Layers 7, 8 and 10 by Layer 13 and assembles
the endpoints over `ℚ`. Each target's `*Needs:*` line lists what its statement and its route use,
so an implementer who proves it another way is not blocked behind an unrelated layer.

## Layer 0: rigid spaces of pseudocharacters and analytic continuation along components

This layer supplies the rigid-analytic carriers of Newton–Thorne I §2 (nt21 §§2.1, 2.11.1,
pp. 24, 30–31): an analytic continuation lemma for morphisms into a Zariski closed subspace, the
rigid generic fibres of conjugate self-dual and local pseudodeformation rings with their
absolutely irreducible loci, the correspondence between polarized lifts and conjugate self-dual
traces, and the tangent spaces of these spaces at absolutely irreducible points.

### 0.1 Analytic continuation along irreducible components of rigid spaces

Let `E` be a finite extension of `ℚ_p`, `α : 𝒳 → 𝒢` a closed immersion and `β : 𝒴 → 𝒢` a morphism
of rigid analytic spaces over `E`, and `y ∈ 𝒴` a point with `β(y) ∈ α(𝒳)`. Prove that if
`β^{−1}(𝒳)` contains an affinoid open neighbourhood of `y`, then `β(𝒞) ⊂ α(𝒳)` for every
irreducible component `𝒞` of `𝒴` containing `y` (nt21 Lemma 2.2, §2.1, p. 24). The neighbourhood
is an affinoid open subset of `𝒴` containing `y`. In Layers 1–2 the lemma is applied after
extending scalars, to components over finite extensions of `E` and over `ℂ_p`; the passage between
these uses the behaviour of components under extension of the ground field, which
AdicSpacesPartIIPartII RZ.1 supplies (see the supplier contracts; nt21 proof of Theorem 2.24,
p. 41, and Corollary 2.28 with its footnote, pp. 43–44).

*Proof sketch.* `β^{−1}(𝒳)` is Zariski closed in `𝒴`, as the pullback of a closed immersion.
Let `𝒞` be a component through `y` and `𝒞̃ → 𝒞` its normalization; `𝒞̃` is connected and maps onto
`𝒞`. The preimage of `β^{−1}(𝒳) ∩ 𝒞` in `𝒞̃` is Zariski closed and contains a non-empty admissible
open subset, namely the part of the preimage of the affinoid neighbourhood lying over `y`. A proper
Zariski closed subset of an irreducible space is nowhere dense, so the preimage is all of `𝒞̃`, and
`β(𝒞) ⊂ α(𝒳)`.

**Checks.**

- Take `𝒴 = 𝒢` the closed unit disc, `β` the identity and `𝒳 = {0}`. No affinoid neighbourhood of
  `0` lies in `β^{−1}(𝒳) = {0}`, and indeed the disc is not contained in `{0}`: the hypothesis
  fails and so does the conclusion.
- Take `𝒴 = 𝒢` the union of the two coordinate axes in the closed bidisc and `𝒳` one axis. At a
  point `y ≠ 0` of that axis the hypothesis holds and the lemma forces only that axis into `𝒳`;
  at `y = 0` the hypothesis fails, because every neighbourhood of `0` meets the other axis outside
  `𝒳`.
- If `𝒴` is irreducible the conclusion is `β(𝒴) ⊂ α(𝒳)`; for `𝒴` a point it is the hypothesis.

*Needs:* AdicSpacesPartIIPartII RZ.1 (normalization, irreducible components, irreducibility
criterion); AdicSpacesPartII §R1.9 (identity principle).

### 0.2 Rigid spaces of conjugate self-dual pseudocharacters and their absolutely irreducible loci

Fix a CM field `F` with maximal totally real subfield `F⁺`, a finite set `S` of places of `F⁺`
containing the `p`-adic places, a finite field `k` of characteristic `p`, a conjugate self-dual
pseudocharacter `τ̄` of `G_{F,S}` of dimension `n` over `k`, and for each `v ∈ S_p` a place `ṽ` of
`F` above `v`. Let `R_ps` be the universal deformation ring of `τ̄` as a conjugate self-dual
pseudocharacter of `G_{F,S}`, and `R_{ps,v}` the universal (unrestricted) pseudodeformation ring of
`τ̄|_{G_{F_ṽ}}`; both are complete Noetherian local `W(k)`-algebras. Define `𝒳_ps` and `𝒳_{ps,v}` as
their rigid generic fibres, with the restriction morphism
`𝒳_ps → 𝒳_{ps,p} = ∏_{v ∈ S_p} 𝒳_{ps,v}`. Define `𝒳_{ps,v}^{v-irr}` as the locus where the universal
pseudocharacter is absolutely irreducible and `𝒳_ps^{p-irr}` as the preimage of
`∏_v 𝒳_{ps,v}^{v-irr}`. Prove that `𝒳_{ps,v}^{v-irr}` is Zariski open and carries an Azumaya algebra
`𝒜` of rank `n²` with a continuous `ρ^u_v : G_{F_ṽ} → 𝒜^×` whose reduced trace is the universal
pseudocharacter; and that if `ρ_v : G_{F_ṽ} → GL_n(E)` is absolutely irreducible over `E` with
`z = tr ρ_v`, then `𝒜 ≅ M_n(𝒪_𝒰)` on some affinoid neighbourhood `𝒰` of `z` (nt21 §2.11.1,
definitions and Lemma 2.13, pp. 30–31; chen14 §4.2). The local problem carries no conjugate
self-duality condition, although the global pseudocharacter is polarized. Splitting needs `ρ_v`
defined over `E`: an `E`-point of the irreducible locus alone does not split the fibre of `𝒜`.

*Proof sketch.* Conjugate self-dual determinant deformations of `τ̄` are pro-represented by a
closed quotient of the determinant deformation ring (LocalGaloisDeformationRings §§F.1.9, F.2.11;
the polarization condition is closed). Pass to rigid generic fibres by Berthelot's construction
(AdicSpacesPartIII §R2.9). Over the absolutely irreducible locus the Cayley–Hamilton quotient of
the group algebra is Azumaya of rank `n²` and its reduced trace recovers the universal determinant
(IntegralHeckeAndGaloisDeterminants §§1.1, 1.5; chen14 §4.2). At `z` the stalk of `𝒜` is an
Azumaya algebra over a Henselian local ring whose fibre is split by `ρ_v`, hence split
(IntegralHeckeAndGaloisDeterminants §1.3), and the splitting spreads to an affinoid neighbourhood.

**API.**

- The space `𝒳_ps` with its universal pseudocharacter, functorial in `τ̄` and `S`.
- The local spaces `𝒳_{ps,v}` and the restriction morphism `𝒳_ps → ∏_{v ∈ S_p} 𝒳_{ps,v}`; at every
  `E`-point the local universal determinant is the restriction of the global one to `G_{F_ṽ}`.
- The Zariski open absolutely irreducible loci, the Azumaya algebra `𝒜` and the universal
  representation `ρ^u_v` into `𝒜^×`, whose reduced trace is the universal pseudocharacter.
- `E`-points of `𝒳_ps` are the conjugate self-dual `E`-valued Chenevier determinants of `G_{F,S}`
  reducing to `τ̄`.
- At a point given by an absolutely irreducible `ρ_v` over `E`, `𝒜` is a matrix algebra on an
  affinoid neighbourhood, so there is a universal matrix representation
  `G_{F_ṽ} → GL_n(𝒪(𝒰))` lifting `ρ_v`.

**Checks.**

- For `n = 1` and `F_ṽ = ℚ_p` with `p` odd, `𝒳_{ps,v}` is the space of continuous characters of
  `G_{ℚ_p}^{ab} ≅ ℤ_p^× × ℤ_p` (completed) lifting a fixed residual character; after fixing the
  restriction to the torsion subgroup it is an open polydisc of dimension `2`, and in general it
  is a finite union of open polydiscs of dimension `[F_ṽ : ℚ_p] + 1`.
- If `τ̄|_{G_{F_ṽ}}` is absolutely irreducible, the whole space `𝒳_{ps,v}` is absolutely
  irreducible: openness of the irreducible locus does not make it a proper subset. An ordinary
  upper-triangular lift is a reducible point even when the extension is non-split.
- If the fibre of `𝒜` at an `E`-point is a non-split quaternion algebra over `E` (the
  pseudocharacter is the reduced trace of a representation into a division algebra), local
  splitting does not hold at that point: `ρ_v` over `E` is required.
- At a point given by `ρ : G_{F,S} → GL_n(E)` the universal pseudocharacter specialises to the
  Chenevier determinant `det ∘ ρ` of IntegralHeckeAndGaloisDeterminants §0.2.

*Needs:* IntegralHeckeAndGaloisDeterminants §§0.2, 0.5, 1.1, 1.3, 1.5; LocalGaloisDeformationRings
§§F.1.9, F.2.11; AdicSpacesPartIII §R2.9.

### 0.3 Polarized lifts correspond to conjugate self-dual traces

Let `ρ : G_{F,S} → GL_n(E)` be absolutely irreducible with `ρ^c ≅ ρ^∨ ⊗ ε^{1−n}`, extended to
`ρ_1 : G_{F⁺,S} → 𝒢_n(E)` with multiplier `ν ∘ ρ_1 = ε^{1−n} δ_{F/F⁺}^a`, `a ∈ {0, 1}`. Prove that
for every complete Noetherian local `E`-algebra `A` with residue field `E`, restriction to
`G_{F,S}` is a bijection from conjugacy classes, under `1 + M_n(𝔪_A)`, of lifts
`ρ′_1 : G_{F⁺,S} → 𝒢_n(A)` of `ρ_1` with `ν ∘ ρ′_1 = ε^{1−n} δ^a` onto conjugacy classes of lifts
`ρ′ : G_{F,S} → GL_n(A)` of `ρ` satisfying `tr(ρ′ ∘ c) = tr(ρ′^∨) · ε^{1−n}` (nt21 Lemma 2.12,
§2.11.1, p. 30). The multiplier, and with it the sign `a`, is fixed as part of the problem: it is
not recovered from the trace on `G_F`. The category is that of complete Noetherian local
`E`-algebras with residue field `E`, as used on nt21 p. 43. The printed proof concludes that two
extensions with the same restriction are equal after finding a scalar discrepancy at complex
conjugation; the argument here shows they are strictly conjugate.

*Proof sketch.* Surjectivity: the trace condition and absolute irreducibility give an isomorphism
`ρ′^c ≅ ρ′^∨ ε^{1−n}` over `A` (Carayol–Serre for absolutely irreducible residual representations),
and its matrix extends `ρ′` to `𝒢_n` (GlobalGaloisDeformations §8.1). Injectivity: two extensions
of the same restriction with the prescribed multiplier differ at complex conjugation by a scalar
`λ ∈ 1 + 𝔪_A`; since `2` is invertible in `A`, Hensel's lemma gives `α ∈ 1 + 𝔪_A` with
`α² = λ^{−1}`, and conjugation by `(α, 1)` identifies the two extensions. Strict and full conjugacy
agree here by LocalGaloisDeformationRings §F.1.5.

**Checks.**

- For `n = 1`: a character `χ` of `G_F` with `χ χ^c = 1` and a lift `χ′` with `χ′ χ′^c = 1` extend
  to `𝒢_1 = (GL_1 × GL_1) ⋊ {1, j}` uniquely up to conjugacy; the scalar `λ` is then a square in
  `1 + 𝔪_A` because `2` is a unit.
- For `A = E[ε]/(ε²)` the bijection identifies the tangent space of the polarized deformation
  functor with `H¹(G_{F⁺,S}, ad ρ_1)`, as used in §0.4.
- For `A = E` both sides are single points. The sign `a` is determined by `ρ`: the pairing
  realising `ρ^c ≅ ρ^∨ ε^{1−n}` is unique up to a scalar by absolute irreducibility, hence
  symmetric or alternating, and this fixes `ν(ρ_1(c))`; a lift `ρ′_1` with the other multiplier
  sign would restrict to a lift `ρ′` whose pairing changes type, which is impossible over a local
  ring with residue field `E`.

*Needs:* GlobalGaloisDeformations §8.1; LocalGaloisDeformationRings §F.1.5;
IntegralHeckeAndGaloisDeterminants §0.5.

### 0.4 Tangent spaces of pseudocharacter spaces at absolutely irreducible points

Prove: (1) at an `E`-point `z` of `𝒳_{ps,p}^{p-irr}` given by absolutely irreducible
`ρ_v : G_{F_ṽ} → GL_n(E)` (`v ∈ S_p`), the tangent space is `⊕_{v ∈ S_p} H¹(F_ṽ, ad ρ_v)`; (2) at an
`E`-point of `𝒳_ps^{p-irr}` given by `ρ : G_{F⁺,S} → 𝒢_n(E)` with every `ρ|_{G_{F_ṽ}}` absolutely
irreducible, the tangent space is `H¹(G_{F⁺,S}, ad ρ)`, and the differential of
`𝒳_ps → 𝒳_{ps,p}` is the restriction map to `⊕_v H¹(F_ṽ, ad ρ_v)` (nt21 Lemma 2.14, §2.11.1,
p. 31). Here `ad ρ` carries the conjugation action of `𝒢_n` through the polarization.

*Proof sketch.* On the absolutely irreducible locus pseudodeformations are deformations of
representations (§0.2; chen14 §4.1). Deformations of an absolutely irreducible representation over
`E[ε]` are classified by `H¹` of the adjoint (LocalGaloisDeformationRings §§1.4, 1.18). For (2),
§0.3 identifies conjugate self-dual pseudodeformations with polarized deformations, whose tangent
space is `H¹(G_{F⁺,S}, ad ρ)` (GlobalGaloisDeformations §8.3).

**Checks.**

- For `n = 1` and `F_ṽ = ℚ_p`, `dim H¹(ℚ_p, E) = 2`, matching the dimension of the character space
  of §0.2.
- For `n = 2` and `ρ_v` absolutely irreducible with `H²(ℚ_p, ad ρ_v) = 0`, the local Euler
  characteristic gives `dim H¹ = dim H⁰ + dim H² + [ℚ_p : ℚ_p]·4 = 1 + 0 + 4 = 5`.
- At a reducible point (outside the irreducible locus) the pseudocharacter tangent space can be
  strictly smaller than `H¹(ad)` of a representation with that trace, which is why the statement is
  restricted to absolutely irreducible points.

*Needs:* §0.2; §0.3; LocalGaloisDeformationRings §§1.4, 1.18; GlobalGaloisDeformations §8.3.

### Examples

- For `n = 1` every point is absolutely irreducible, `𝒜 = 𝒪`, §0.3 is the extension of characters
  to `𝒢_1`, and the tangent space of §0.4(1) at a `ℚ_p`-point has dimension `2`.
- For `n = 2`, `F_ṽ = ℚ_p` and `τ̄` absolutely irreducible, `𝒳_{ps,v}` is smooth of dimension `5`
  at points with `H²(ℚ_p, ad ρ_v) = 0`.

### Dependencies

AdicSpacesPartII §R1.9; AdicSpacesPartIII §R2.9; AdicSpacesPartIIPartII RZ.1;
IntegralHeckeAndGaloisDeterminants Layers 0–1; LocalGaloisDeformationRings §§F.1.5, F.1.9, F.2.11,
1.4, 1.18; GlobalGaloisDeformations §§8.1, 8.3.

## Layer 1: analytic continuation of symmetric power functoriality between unitary eigenvarieties

Throughout, `ℰ_m(τ̄_m)` is the eigenvariety of the definite unitary group `G_m` with weight map,
Hecke pseudocharacter and closed realization `i_m : ℰ_m → 𝒳_{ps,m} × 𝒯_m`, and
`σ_n = σ_{n,g} × σ_{n,p} : 𝒳_{ps,2} × 𝒯_2 → 𝒳_{ps,n} × 𝒯_n` is the symmetric-power map on
pseudocharacters and refinement characters, all as in ModularityAndLanglandsExtensions §4.3. A
point `z_m = γ_m(π_m, χ_m)` of `ℰ_m` is attached to a refined automorphic representation
`(π_m, χ_m)` of `G_m`. This layer proves nt21 Theorems 2.24 and 2.27, Lemma 2.29 and Corollary 2.28
(§2.18.1, pp. 40–46).

### 1.1 Analytic continuation of symmetric power functoriality: the non-critical case

Let `n ≥ 3`, `τ̄_2` a residual conjugate self-dual pseudocharacter of dimension `2` and
`τ̄_n = Sym^{n−1} τ̄_2`. Let `(π_2, χ_2)` be a refined automorphic representation of `G_2` with
`tr r̄_{π_2,ι} = τ̄_2` and point `z_2 ∈ ℰ_2(τ̄_2)`. Suppose (1) `χ_2` is numerically non-critical
and `n`-regular; (2) there is a refined automorphic `(π_n, χ_n)` of `G_n` with
`(σ_n ∘ i_2)(z_2) = i_n(z_n)`; (3) for every `v ∈ S_p` the Zariski closure of
`r_{π_2,ι}(G_{F_ṽ})` contains `SL_2`. Prove that every irreducible component `𝒞` of
`ℰ_2(τ̄_2)_{ℂ_p}` through `z_2` satisfies `(σ_n ∘ i_2)(𝒞) ⊂ i_n(ℰ_n(τ̄_n)_{ℂ_p})` (nt21 Theorem 2.24
and proof, pp. 40–42; Remark 2.25, p. 42). Numerically non-critical means that the slopes of the
refinement are small compared with the gaps between Hodge–Tate weights, so that the attached
triangulation is non-critical.

*Proof sketch.* `r_{π_n,ι}|_{G_{F_ṽ}}` is trianguline with parameter `σ_{n,p}(δ_2)`, regular and
non-critical by (1) and (3): (3) keeps every symmetric power locally irreducible (Remark 2.25).
Choose an affinoid `U` around `z_n` inside the absolutely irreducible, regular parameter locus,
and let `𝒵` be the Zariski closure in `U` of the points whose local representations are
trianguline with the prescribed parameters. Family triangulation on the dense classical locus puts
the eigenvariety in this closure near `z_n`. The trianguline tangent bound
(ModularityAndLanglandsExtensions §4.3, nt21 Proposition 2.11), the genericity of the local
Weil–Deligne parameters and the vanishing of `H¹_f(F⁺, ad r_{π_n,ι})` give
`dim T_{z_n} 𝒵 ≤ dim 𝒲_n`; the eigenvariety is equidimensional of that dimension, so its closed
realization equals `𝒵` near `z_n` and is smooth there. Symmetric powers of the family
triangulation of `ℰ_2` at its accumulating classical points lie in the pointwise trianguline locus,
hence in `𝒵`; Zariski density and closedness give the containment of an affinoid neighbourhood of
`z_2`, and §0.1 treats every component through `z_2`.

**Checks.**

- For `n = 3` and a refinement with Frobenius ratio `α/β`, `3`-regularity says `α/β` is not a root
  of unity of order `1` or `2`, that is `α ≠ ±β`; hypothesis (1) is this together with the
  non-critical slope condition.
- If `H¹_f(F⁺, ad r_{π_n,ι}) ≠ 0` the tangent bound fails and the argument gives nothing; the
  vanishing enters through PotentialAutomorphyInfrastructurePartII PL.8.
- Taking `𝒞` to be the component itself and `z_2` any of its classical points recovers hypothesis
  (2) at that point; the content is the passage to non-classical points.

*Needs:* ModularityAndLanglandsExtensions §§1.1, 4.1, 4.3; PotentialAutomorphyInfrastructurePartII
PL.8 ("Generic Weil–Deligne representations"; "Bloch–Kato local conditions at generic places";
"Vanishing of adjoint Bloch–Kato Selmer groups of unitary type"); PadicFamilies §2a.14; §0.1; §0.4.

### 1.2 Analytic continuation of symmetric power functoriality: the ordinary case

Let `n ≥ 3` and `(π_2, χ_2)`, `z_2` be as in §1.1. Suppose (1) `χ_2` is ordinary; (2) there is a
refined automorphic `(π_n, χ_n)` of `G_n` with `(σ_n ∘ i_2)(z_2) = i_n(z_n)`; (3) the Zariski
closure of `r_{π_2,ι}(G_F)` contains `SL_2`. Prove that every irreducible component `𝒞` of
`ℰ_2(τ̄_2)_{ℂ_p}` through `z_2` satisfies `(σ_n ∘ i_2)(𝒞) ⊂ i_n(ℰ_n(τ̄_n)_{ℂ_p})` (nt21 Theorem 2.27
and proof, pp. 42–43). Ordinary means that the normalized `U_p`-eigenvalues are `p`-adic units. The
printed proof uses the chosen neighbourhood as if regularity and irreducibility held throughout
it; the argument here first shrinks `U` into `𝒳^{irr}_{ps,n} × (𝒯^{reg}_n ∩ 𝒯^{HT-reg}_n)`, which is
Zariski open and contains `δ_n`.

*Proof sketch.* Replace the trianguline locus by the closed subspace `𝒵^{ord}` of the flag variety
of `G_{F_ṽ}`-stable flags in the universal representation over `U` whose graded pieces are the
characters `δ_{z,v,i}`. After the shrinking above, `𝒵^{ord} → U` is a closed immersion; tangent
vectors of `𝒵^{ord}` at `z_n` with fixed weight lie in `H¹_g`
(PotentialAutomorphyInfrastructurePartII PL.8, "Ordinary tangent vectors of trivial weight lie in
`H¹_g`"). Vanishing of `H¹_f(F⁺, ad r_{π_n,ι})` gives `dim T_{z_n} 𝒵^{ord} ≤ dim 𝒲_n`, and one
concludes as in §1.1 with §0.1.

**Checks.**

- A CM form fails (3): the Zariski closure of its image is the normaliser of a torus, which does
  not contain `SL_2`.
- No slope condition is imposed, in contrast with §1.1: an ordinary refinement of a form of weight
  `k` has slopes `0` and `k − 1`.
- For `n = 2` the statement is empty (`σ_2` is the identity on pseudocharacters), which is why
  `n ≥ 3` is assumed.

*Needs:* ModularityAndLanglandsExtensions §4.3; PotentialAutomorphyInfrastructurePartII PL.0
("Ordinary Galois representations of weight λ"), PL.8 ("Ordinary tangent vectors of trivial
weight lie in `H¹_g`"; "Vanishing of adjoint Bloch–Kato Selmer groups of unitary type");
PadicFamilies §2a.14; §0.1; §0.2.

### 1.3 Non-criticality passes to symmetric powers

Let `ρ_v : G_{F_ṽ} → GL_2(ℚ̄_p)` be continuous, de Rham with distinct Hodge–Tate weights at every
embedding, such that `WD(ρ_v)` has distinct Jordan–Hölder characters `χ_1`, `χ_2` with
`(χ_1/χ_2)^i ≠ 1` for `1 ≤ i ≤ n − 1`, and suppose every triangulation of `ρ_v` is non-critical.
Prove that every triangulation of `Sym^{n−1} ρ_v` is non-critical (nt21 Lemma 2.29 and proof,
pp. 44–45). The ratio condition is `n`-regularity of the Weil–Deligne parameter.

*Proof sketch.* Work with the filtered `(φ, N, Gal(L/K))`-module of `ρ_v` (PadicHodgeTheory §5.3)
and the dictionary between triangulations and refinements (PhiGammaModulesAndIwasawaCohomology
§7.5). If `N ≠ 0` the triangulation is unique and non-criticality is read off directly. If `N = 0`
the refinements of `Sym^{n−1}` are orderings of the monomials `χ_1^a χ_2^b` (`a + b = n − 1`),
pairwise distinct by `n`-regularity, and the Hodge filtration of `Sym^{n−1}` at an embedding `τ` is
spanned by powers of the line `l_τ = ⟨e_1 + a_τ e_2⟩`. Non-criticality of every triangulation of
`ρ_v` means `a_τ ≠ 0, ∞`; a Vandermonde determinant in the powers of `a_τ` shows that every flag of
`φ`-stable lines of `Sym^{n−1}` is in general position with the Hodge filtration.

**Checks.**

- For `n = 2` the statement is the hypothesis itself.
- If `χ_1/χ_2` has order `2` and `n = 3`, then `χ_1² = χ_2²`, two monomials coincide, two
  refinements of `Sym²` have the same parameter and the argument fails: `n`-regularity is
  necessary.
- If `a_τ = 0` for some `τ` (a critical triangulation of `ρ_v`), the line `l_τ = ⟨e_1⟩` is
  `φ`-stable and the flag through `e_1^{n−1}` is critical for `Sym^{n−1}` as well, so the
  hypothesis cannot be weakened to one triangulation.

*Needs:* PadicHodgeTheory §5.3; PhiGammaModulesAndIwasawaCohomology §7.5;
ModularityAndLanglandsExtensions §1.1.

### 1.4 Symmetric power automorphy along an irreducible component of ℰ₂

Let `n ≥ 3` and `(π_2, χ_2)`, `(π′_2, χ′_2)` refined automorphic representations of `G_2` with
points `z_2`, `z′_2` on a common irreducible component of `ℰ_{2,ℂ_p}`, refinements accessible in the
sense of ModularityAndLanglandsExtensions §1.1. Suppose either (non-critical case) `χ_2` is
numerically non-critical and `n`-regular, every triangulation of `r_{π′_2,ι}|_{G_{F_ṽ}}`
(`v ∈ S_p`) is non-critical, `χ′_2` is `n`-regular, and the Zariski closures of
`r_{π_2,ι}(G_{F_ṽ})` and `r_{π′_2,ι}(G_{F_ṽ})` contain `SL_2`; or (ordinary case) `χ_2` is ordinary
and the Zariski closure of `r_{π_2,ι}(G_F)` contains `SL_2`. If `Sym^{n−1} r_{π_2,ι} ≅ r_{π_n,ι}` for
an automorphic `π_n` of `G_n`, prove that `Sym^{n−1} r_{π′_2,ι} ≅ r_{π′_n,ι}` for an automorphic
representation `π′_n` of `G_n(𝔸_{F⁺})` (nt21 Corollary 2.28 and proof with its footnote,
pp. 43–44).

*Proof sketch.* The refinement
`χ_n = χ_{2,v,1}^{n−1} ⊗ χ_{2,v,1}^{n−2} χ_{2,v,2} ⊗ ⋯ ⊗ χ_{2,v,2}^{n−1}` of `π_n` is accessible
(ModularityAndLanglandsExtensions §1.1), so `z_n` exists with `(σ_n ∘ i_2)(z_2) = i_n(z_n)`. §1.1 or
§1.2 puts the image of the common component into `i_n(ℰ_n)`, the passage to `ℂ_p` using the
behaviour of components under field extension (AdicSpacesPartIIPartII RZ.1). The image point `z′_n`
of `z′_2` is classical: in the ordinary case by Hida classicality
(PotentialAutomorphyInfrastructurePartII PL.2), in the non-critical case because by §1.3 every
triangulation of `Sym^{n−1} r_{π′_2,ι}` is non-critical and non-critical points with `n`-regular
refinement are classical (ModularityAndLanglandsExtensions §4.3, nt21 Lemma 2.30). A classical point
of `ℰ_n` is attached to an automorphic `π′_n` with `r_{π′_n,ι} ≅ Sym^{n−1} r_{π′_2,ι}`
(PotentialAutomorphyInfrastructurePartII PL.2, "Galois representations attached to constituents of
algebraic modular forms").

**Checks.**

- Taking `z′_2 = z_2` recovers the hypothesis.
- The ordinary case applies to two points of one Hida family; the non-critical case needs both
  refinements `n`-regular, and fails for a point whose Frobenius ratio is `−1` when `n = 3`.
- For `n = 3, 4, 5` the conclusion is also a consequence of the low-rank lifts
  (ModularityAndLanglandsExtensions §1.15) after base change to `F`, a consistency check on the
  shape of `π′_n`.

*Needs:* §1.1; §1.2; §1.3; §0.1; ModularityAndLanglandsExtensions §§1.1, 4.3;
PotentialAutomorphyInfrastructurePartII PL.2 ("Hida classicality and independence of the
characters χ_v modulo λ"; "Galois representations attached to constituents of algebraic modular
forms"); AdicSpacesPartIIPartII RZ.1 (gap:components-under-field-extension).

### Examples

- For a non-CM refined `(π_2, χ_2)` with `n`-regular non-critical refinement and automorphic
  `Sym^{n−1}`, §1.4 makes `Sym^{n−1}` automorphic at every classical point of its component whose
  refinement is `n`-regular and non-critical.
- At `n = 3` the excluded points are those with Frobenius ratio `±1`.

### Dependencies

Layer 0; ModularityAndLanglandsExtensions §§1.1, 1.15, 4.1, 4.3; PotentialAutomorphyInfrastructurePartII
PL.0, PL.2, PL.8; PadicFamilies §2a.14; PadicHodgeTheory §5.3; PhiGammaModulesAndIwasawaCohomology
§7.5; AdicSpacesPartIIPartII RZ.1.

## Layer 2: from the eigencurve to definite unitary eigenvarieties

`ℰ_0` is the Coleman–Mazur–Buzzard eigencurve of tame level `N` at `p` (PadicFamilies §2.10), with
weight map `κ` to the weight space `𝒲_0`. This layer constructs the twin involution, trivialises
families of characters over CM fields, builds the base-change morphism from `ℰ_0` to a unitary
eigenvariety, and proves nt21 Theorem 2.33, the statement of ModularityAndLanglandsExtensions §4.5,
together with the Zariski closedness of the locus where its hypotheses fail (nt21 §2.31,
pp. 49–53).

### 2.1 The twin involution on the eigencurve

Let `Z_0^{pc} ⊂ ℰ_0` be the set of classical points `z` attached to `(π_0, χ_{0,1} ⊗ χ_{0,2})` with
`π_{0,p}` not a twist of Steinberg. Let `ψ` be the finite-order Hecke character of `ℚ`, unramified
outside `p`, whose `p`-component restricts on `ℤ_p^×` to `χ_{0,2}^{−1}|_{ℤ_p^×}`, and `ψ_p` its
`p`-component, a character of `ℚ_p^×`. Define the twin `τ(z) ∈ Z_0^{pc}` as the point attached to
`π_0 ⊗ ιψ` with refinement `χ_{0,2}ψ_p ⊗ χ_{0,1}ψ_p`. Prove that `τ² = 1`, that for `π_{0,p}`
unramified the twin is the companion point of the other refinement, and (nt21 Lemma 2.32) that
`s(z) + s(τ(z)) = k − 1` and `v_p(κ(z)(1 + q) − 1) = v_p(κ(τ(z))(1 + q) − 1)`, where `k` is the
weight of `π_0` and `q = p` for odd `p`, `q = 4` for `p = 2` (nt21 §2.31, definition of the twin
and Lemma 2.32, p. 49). The printed definition inserts the global character `ψ` in the local
refinement; the local component `ψ_p` is meant, since `ψ` is not a character of `ℚ_p^×` until
restricted.

*Proof sketch.* Both refinements of the twisted principal series are accessible. The product of
the two normalized `U_p`-eigenvalues has valuation `k − 1`, which gives the slope sum. Write the
weight character on `1 + q` as `(1 + q)^{k−2} η` with `η` of `p`-power order; the twin replaces `η`
by `η^{−1}`. If `η = 1` the valuations coincide. If `η ≠ 1`, then `v_p(η(1 + q) − 1)` is strictly
smaller than `v_p((1 + q)^{k−2} − 1)` (when the latter is finite), and the same holds for `η^{−1}`,
so both weight valuations equal `v_p(η(1+q) − 1) = v_p(η^{−1}(1+q) − 1)`.

**API.**

- The twin `τ : Z_0^{pc} → Z_0^{pc}` of a classical non-Steinberg point, an involution.
- The slope identity `s(z) + s(τ(z)) = k − 1` for `z` of weight `k`.
- The weight identity `v_p(κ(z)(1 + q) − 1) = v_p(κ(τ(z))(1 + q) − 1)`.
- `r_{τ(z)} ≅ r_z ⊗ ψ`: the twin has the same Galois representation up to a finite-order twist,
  so automorphy of every symmetric power is the same at `z` and `τ(z)`.

**Checks.**

- For `π_{0,p}` unramified with `U_p`-roots `α`, `β`, `ψ` is trivial, the twin exchanges `α` and
  `β`, and `s(α) + s(β) = k − 1`. For `Δ` at `p = 2` (`k = 12`, `a_2 = −24`) the slopes are `3` and
  `8`, with sum `11`.
- A point is never its own twin when `s(z) ≠ (k − 1)/2`, since the slopes of `z` and `τ(z)` then
  differ.
- For `k = 2` the slopes of `z` and `τ(z)` sum to `1`.
- The restriction `ψ|_{ℤ_p^×}` has no value at `p`; substituting it in the refinement is not a
  character of `ℚ_p^×`, which is why the full component `ψ_p` appears.

*Needs:* PadicFamilies §§2.10, 2a.13; ModularityAndLanglandsExtensions §1.1.

### 2.2 Trivialising a family of characters over a CM field

Let `F` be a CM field in which every `p`-adic place of `F⁺` splits, `S̃_p` a set of `p`-adic places
of `F` with `S̃_p ⊔ S̃_p^c` the set of all `p`-adic places, `W` a connected rigid space over `E`, and
`χ : G_ℚ → 𝒪(W)^×` a continuous character unramified almost everywhere. Prove that there are a
finite étale morphism `η : W̃ → W` and a continuous character `ψ : G_F → 𝒪(W̃)^×`, unramified almost
everywhere and at every `ṽ ∈ S̃_p`, with `ψ ψ^c = η^*(χ)|_{G_F}` (nt21 Lemma 2.34 and proof,
pp. 51–52). The proof uses Chevalley's theorem: every finite-index subgroup of `𝒪_F^×` contains the
units congruent to `1` modulo some non-zero ideal.

*Proof sketch.* On the `p`-adic units prescribe a character `L` equal to `χ^{−1}` on the
conjugates of the chosen places and trivial on the chosen places; its restriction to global units
is trivial on a finite-index subgroup by the CM norm-one unit calculation. Chevalley's theorem gives
a compact open subgroup `U^p` of the units away from `p` such that `L` is trivial on
`𝒪_F^× ∩ (U^p × ∏_{w|p} 𝒪_{F_w}^×)`; in the idele class quotient by `U^p` the image of the `p`-adic
units has finite index by finiteness of the class group (ClassFieldTheory Layers 11–12). Restriction
between rigid character spaces for that finite-index inclusion is finite étale; pulling back
extends `L` to a character `λ`, and `χ λ λ^c` has finite order, since it is unramified at `p` and
outside finitely many places. After a constant coefficient extension write it as `φ φ^c`
(PotentialAutomorphyInfrastructurePartII PL.0, auxiliary characters) and put `ψ = φ λ^{−1}`.

**Checks.**

- For `W` a point the lemma is the existence of a character `ψ` with `ψ ψ^c = χ|_{G_F}`
  unramified at `S̃_p` (PL.0, "Algebraic characters with prescribed conjugate-norm and local
  behaviour").
- If some `p`-adic place of `F⁺` is inert in `F`, `S̃_p` cannot be chosen and the lemma is not
  claimed.
- For `χ` trivial take `W̃ = W` and `ψ = 1`.

*Needs:* ClassFieldTheory Layers 11–12; PotentialAutomorphyInfrastructurePartII PL.0 ("Algebraic
characters with prescribed conjugate-norm and local behaviour").

### 2.3 The base-change morphism from the eigencurve to a unitary eigenvariety

Let `F′` be an abelian CM field in which the primes dividing `Np` split, with `[F′⁺ : ℚ]` even and
`F′/F′⁺` everywhere unramified; `F ⊃ F′` a soluble Galois CM extension of `ℚ` in which every prime
dividing `Np` splits and `F/F⁺` is everywhere unramified, chosen so that the character `ψ` below is
unramified away from `p`; `ψ` the family of §2.2 over `W̃ → 𝒲_0`; and `𝒯̃ = 𝒯_0 ×_{𝒲_0} W̃`. With
`b_p : 𝒯̃ → 𝒯_2` the twist of the refinement parameter by `ψ^{−1}` at the places of `S̃_p`, define
`b : 𝒳_{0,ps} × 𝒯̃ → 𝒳_{2,ps} × 𝒯_2`, `(τ, μ) ↦ (τ|_{G_F} ⊗ ψ^{−1}, b_p(μ))`. Prove that `b` maps
the classical points of the lift of `ℰ_0` into `i_2(ℰ_2)`, where `G_2` is the definite unitary group
of PotentialAutomorphyInfrastructurePartII PL.2 over `F⁺` (nt21 proof of Theorem 2.33,
pp. 50–51).

*Proof sketch.* At a classical point `(π_0, χ_0)` the base change `π_{0,F} ⊗ ψ^{−1}` to `GL_2(𝔸_F)`
is conjugate self-dual, since `ψ ψ^c` is the determinant twist, and cuspidal: a non-cuspidal base
change would make `π_0` induced from an imaginary quadratic subfield of `F`, which ramifies at a
prime dividing `Np` and so cannot lie in `F`. Labesse's descent (EndoscopicTransferAndUnitaryTraceComparison
§§6.27, 6.29; PotentialAutomorphyInfrastructurePartII PL.2, base change and descent) gives an
automorphic representation of `G_2` with refinement `b_p(χ_0)`, so `b` sends the point into
`i_2(ℰ_2)`. `b` is a morphism because restriction of pseudocharacters and twisting by the family
`ψ` are.

**API.**

- The morphism `b : 𝒳_{0,ps} × 𝒯̃ → 𝒳_{2,ps} × 𝒯_2`; its pseudocharacter component is
  `τ|_{G_F} ⊗ ψ^{−1}`.
- `b` sends classical points of the lift of `ℰ_0` into `i_2(ℰ_2)` with the twisted refinement.
- `b` maps each irreducible component of the lift of `ℰ_0` into a single irreducible component of
  the Zariski closure of its classical image.

**Checks.**

- At a classical point of weight `k` the image has labelled Hodge–Tate weights `{0, k − 1}` at
  every embedding of `F`, before the `ψ^{−1}` twist.
- Where `ψ` is trivial at a point, the pseudocharacter part of `b` there is the restriction
  `τ|_{G_F}`.
- If `F` contained the imaginary quadratic field `K` from which a classical form is induced, the
  base change would decompose as a sum of two characters and give no cuspidal point; the splitting
  condition at `Np` excludes this, while a CM form whose inducing field is not in `F` is not
  excluded merely for being CM.

*Needs:* §2.2; §0.2; PotentialAutomorphyInfrastructurePartII PL.2 ("Base change and descent
between definite unitary groups and `GL_n`"); EndoscopicTransferAndUnitaryTraceComparison §§6.27,
6.29, 13.1; PadicFamilies §2.10; ModularityAndLanglandsExtensions §4.3.

### 2.4 Automorphy of symmetric powers is constant on components of the eigencurve

Let `n ≥ 2` and `(π_0, χ_0)`, `(π′_0, χ′_0)` refined cuspidal automorphic representations of
`GL_2(𝔸_ℚ)` whose points `z_0`, `z′_0` of `ℰ_0` lie on a common irreducible component of
`ℰ_{0,ℂ_p}`. Suppose either (1) `χ_0` is numerically non-critical and `n`-regular, (2) `χ′_0` is
`n`-regular, (3) the Zariski closures of `r_{π_0,ι}(G_{ℚ_p})` and `r_{π′_0,ι}(G_{ℚ_p})` contain
`SL_2`, and (4) `Sym^{n−1} r_{π_0,ι}` is automorphic; or (1ord) `χ_0` is ordinary, (2ord) `π_0` and
`π′_0` are not CM, and (3ord) `Sym^{n−1} r_{π_0,ι}` is automorphic. Prove that
`Sym^{n−1} r_{π′_0,ι}` is automorphic (nt21 Theorem 2.33 and proof, pp. 50–51). This proves
ModularityAndLanglandsExtensions §4.5.

*Proof sketch.* For `n = 2` both forms are automorphic. For `n ≥ 3` choose `F′`, `F`, `ψ` and `b` as
in §2.3. After a finite coefficient extension the selected component is geometrically irreducible
(AdicSpacesPartIIPartII RZ.1); its pullback along `W̃ → W` is finite étale and each component of
the pullback maps onto it, so lifts of both points lie on one geometrically irreducible component,
whose image lies in the unitary eigenvariety by density of classical points and closedness. Large
local image at `p` (3) makes every triangulation non-critical (nt21 Example 2.10), so the
hypotheses of §1.4 hold for the base-changed points; in the ordinary case (2ord) gives large global
image. `b` maps the common component into a component of `ℰ_2` through `b(z_0)` and `b(z′_0)`
(§0.1); `Sym^{n−1}` of the base change of `π_0` is automorphic on `G_n` by (4) and Labesse descent.
§1.4 gives automorphy of `Sym^{n−1} r_{π′_0,ι}|_{G_F}` on `G_n`, hence on `GL_n(𝔸_F)`, and soluble
descent (PotentialAutomorphyInfrastructurePartII PL.0; EndoscopicTransferAndUnitaryTraceComparison
§6.24) returns to `ℚ`.

**Checks.**

- `n = 2`: the conclusion holds for every `z′_0`, since `Sym^1 r = r` is automorphic.
- Two points of one Hida family of non-CM forms satisfy the ordinary hypotheses.
- Two points of a CM Hida family are excluded by (2ord): the Zariski closure of the image of a CM
  form is the normaliser of a torus, so the large global image used by §1.2 fails, and indeed
  `Sym^2` of a CM form is not cuspidal.

*Needs:* §2.3; §1.4; §0.1; ModularityAndLanglandsExtensions §0.2; EndoscopicTransferAndUnitaryTraceComparison
§6.24; PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble base change and descent of
automorphy"); AdicSpacesPartIIPartII RZ.1 (gap:components-under-field-extension).

### 2.5 The locus where the hypotheses of Theorem 2.33 fail is Zariski closed

Fix `n ≥ 1`. Prove that the set `Z ⊂ ℰ_0` of points `x` whose pseudocharacter `t_x` is absolutely
reducible, or is the trace of an absolutely irreducible `ρ_x` whose image has Zariski closure not
containing `SL_2`, or satisfies `t_x|_{G_{ℚ_l}} = χ_1 + χ_2` with `(χ_1/χ_2)^i = 1` for some prime
`l | N` and some `1 ≤ i ≤ n − 1`, is Zariski closed in `ℰ_0` (nt21 Lemma 2.35 and proof,
pp. 52–53).

*Proof sketch.* Absolute reducibility is a Zariski closed condition on pseudocharacters (§0.2;
IntegralHeckeAndGaloisDeterminants §1.4). For absolutely irreducible `ρ_x`, the Zariski closure of
the image contains `SL_2` exactly when `Sym^6 ρ_x` is absolutely irreducible: the identity component
of the Zariski closure is then a torus or finite, and finite subgroups of `PGL_2` and normalisers of
tori have no irreducible `Sym^6` (ArithmeticGaloisRepresentations §§4.4, 7.6, where a connected
reductive irreducible subgroup of `GL_2` is shown to be `SL_2` or `GL_2`); this is again a
reducibility condition, on `Sym^6 t_x`. At `l | N` choose finitely many local Galois elements whose
character values detect the ratio conditions; the discriminants of the characteristic polynomials
of `Sym^{n−1}` at these elements are analytic functions whose common vanishing cuts out the
finite-order-ratio locus.

**Checks.**

- The CM points of a CM family lie in `Z`: their images have Zariski closure the normaliser of a
  torus.
- For `n = 1` the ratio condition is empty and `Z` is the reducible-or-small-image locus.
- `Sym^6` cannot be replaced by `Sym^2`: the octahedral group `S_4 ⊂ PGL_2(ℂ)` acts irreducibly on
  `Sym^2` (its three-dimensional representation), while its representations have dimension at most
  `3`, so `Sym^6` (dimension `7`) is reducible; the icosahedral group `A_5` acts irreducibly on
  `Sym^2` and `Sym^4` but its largest irreducible representation has dimension `5`, so `Sym^6`
  detects it.

*Needs:* §0.2; IntegralHeckeAndGaloisDeterminants §1.4; ArithmeticGaloisRepresentations §§4.4,
7.6; PadicFamilies §2.10; Mathlib `Polynomial.discr`.

### Examples

- For `p = 2`, `N = 1` and `Δ`, the two refinements have slopes `3` and `8`; they are twins, and
  both are non-critical since `0 < 3, 8 < 11`.
- At `p = 3`, `N = 1`, `Δ` has `a_3 = 252 = 2² · 3² · 7`, so `v_3(a_3) = 2` and the refinements have
  slopes `2` and `9`, summing to `11`.

### Dependencies

Layers 0–1; PadicFamilies §§2.10, 2a.13; ClassFieldTheory Layers 11–12;
PotentialAutomorphyInfrastructurePartII PL.0, PL.2; EndoscopicTransferAndUnitaryTraceComparison
§§6.24, 6.27, 6.29, 13.1; IntegralHeckeAndGaloisDeterminants §1.4; ArithmeticGaloisRepresentations
§§4.4, 7.6; ModularityAndLanglandsExtensions §§0.2, 1.1, 4.3; AdicSpacesPartIIPartII RZ.1.

## Layer 3: level one — the 2-adic boundary of weight space and ping-pong

Throughout `p = 2`, `N = 1`, and `ℰ_0` is the cuspidal 2-adic eigencurve of tame level one. This
layer proves Buzzard–Kilford's description of `ℰ_0` over the boundary annulus (the statement of
ModularityAndLanglandsExtensions §4.6), locates classical weights and twins there, and runs
Newton–Thorne's ping-pong to prove Theorem D, the statement of ModularityAndLanglandsExtensions
§4.7 (nt21 §3, pp. 53–57).

### 3.1 Buzzard–Kilford: the 2-adic eigencurve of tame level one over the boundary annulus

Prove that `ℰ_0` lies over the component `𝒲_0⁺` of weight space where `χ(−1) = 1`, that
`w = χ(5) − 1` identifies `𝒲_0⁺` with the open unit disc `{|w| < 1}`, and that over the annulus
`𝒲_0(b) = {|8| < |w| < 1}` the preimage `ℰ_0(b) = κ^{−1}(𝒲_0(b))` is a disjoint union `⊔_{i≥1} X_i`
of admissible opens, each `κ|_{X_i} : X_i → 𝒲_0(b)` an isomorphism, with slope `i · v_2(w)` on
`X_i` (nt21 Theorem 3.2, pp. 53–54; bk05 Theorem B). Prove also the consequence that there is no
newform of level `4` and odd slope (bk05, Corollary of Theorem B; used in nt21 proof of
Theorem 7.6, p. 90). This proves ModularityAndLanglandsExtensions §4.6.

*Proof sketch.* Buzzard–Kilford compute the `U_2` operator on overconvergent forms of weight `χ`
with `|8| < |w(χ)| < 1` in the basis of powers of a 2-adic Hauptmodul and show that its Newton
polygon has slopes `v_2(w), 2v_2(w), 3v_2(w), …`, each with multiplicity one. The spectral curve
over `𝒲_0(b)` therefore splits into pieces of degree one over weight space (PadicFamilies
§§2a.4–2a.5), the `X_i`, and the comparison of PadicFamilies §2.10 transfers this to `ℰ_0`. The
Eisenstein family, which over the annulus is the only part of slope `0`, is not in the cuspidal
eigencurve.

**Checks.**

- At a weight with `v_2(w) = 1/2` (the case `m = 2` of §3.2) the slopes are `1/2, 1, 3/2, …`.
- At `κ(5) = 5` (weight `3`, `m = 0`), `w = 4`, `v_2(w) = 2` and the slopes are `2, 4, 6, …`: all
  even, consistent with the absence of odd slopes in level `4`.
- At `w = 0` (weight `2`, trivial character) the point is outside the annulus and nothing is
  asserted.

*Needs:* PadicFamilies §§2.10, 2a.4, 2a.5; ModularityAndLanglandsExtensions §4.3.

### 3.2 Classical weights in the 2-adic boundary annulus

Let `z` be a classical point of weight `k` whose weight character satisfies `κ(z)(5) = 5^{k−2}ζ`
with `ζ` a primitive `2^m`-th root of unity (`m ≥ 0`). Prove that `κ(z) ∈ 𝒲_0(b)` exactly when `k`
is odd or `m ≥ 1`; that `v_2(w(z)) = 2^{1−m}` for `m ≥ 1` and `v_2(w(z)) = 2` for `m = 0` with `k`
odd; and that in all these cases `(k − 1)/v_2(w(z))` is an integer (nt21, remark after Lemma 3.3,
p. 54).

*Proof sketch.* For odd `j = k − 2`, `5^j − 1 = 4(5^{j−1} + ⋯ + 1)` with an odd number of odd terms,
so `v_2 = 2`. For even `j > 0` lifting the exponent (Mathlib `padicValNat.pow_two_sub_one`) gives
`v_2(5^j − 1) = 2 + v_2(j) ≥ 3`. For `k = 2`, `m = 0` one has `w = 0`, outside the annulus. For
`m ≥ 1`, `v_2(ζ − 1) = 2^{1−m} ≤ 1 < 2 ≤ v_2(5^{k−2} − 1)`, so `v_2(5^{k−2}ζ − 1) = 2^{1−m}`.
Integrality: `(k − 1)/2` for `m = 0` and `k` odd, `(k − 1)2^{m−1}` for `m ≥ 1`.

**Checks.**

- `k = 3`, `m = 0`: `w = 4`, `v_2(w) = 2`, `(k − 1)/v_2(w) = 1`.
- `k = 4`, `m = 0`: `w = 24`, `v_2(w) = 3`, not in the annulus.
- `k = 2`, `m = 1`: `w = −2`, `v_2(w) = 1`, `(k − 1)/v_2(w) = 1`.
- `k = 6`, `m = 0`: `w = 5⁴ − 1 = 624 = 2⁴ · 39`, `v_2(w) = 4 = 2 + v_2(4)`, not in the annulus.

*Needs:* §3.1; Mathlib `padicValNat.pow_two_sub_one`.

### 3.3 The twin of a point on a boundary annulus

Let `z ∈ Z_0^{pc} ∩ ℰ_0(b)` be of weight `k` with `z ∈ X_i`, and `z′ = τ(z)` its twin (§2.1). Prove
that `z′ ∈ X_{i′}` with `i + i′ = (k − 1)/v_2(w(z))` (nt21 Lemma 3.3 and proof, p. 54). The printed
statement labels the twin by the original index `i`; the index of the twin is `i′`.

*Proof sketch.* By §2.1, `v_2(w(z′)) = v_2(w(z))`, so `z′` also lies over `𝒲_0(b)`, on some
`X_{i′}`. By §3.1, `s(z) = i v_2(w(z))` and `s(z′) = i′ v_2(w(z))`; §2.1 gives `s(z) + s(z′) = k − 1`,
and one divides by `v_2(w(z))`, the quotient being an integer by §3.2.

**Checks.**

- Weight `3`, `m = 0`: `v_2(w) = 2`, so `i + i′ = 1`, impossible for `i, i′ ≥ 1`; hence no classical
  non-Steinberg point of weight `3` with `m = 0` lies over the annulus.
- Weight `2`, `m = 1`: `i + i′ = 1` likewise excludes such points.
- Weight `5`, `m = 0`: `i + i′ = 2`, so `i = i′ = 1` and the point and its twin have equal slope
  `2 = (k − 1)/2`.

*Needs:* §2.1; §3.1; §3.2.

### 3.4 Refinements of level-one forms at 2 are non-critical and regular

Let `π` be an everywhere unramified cuspidal automorphic representation of `GL_2(𝔸_ℚ)` of weight
`k ≥ 2`, and `α`, `β` the roots of `X² − a_2 X + 2^{k−1}`. Prove that every accessible refinement of
`π` at `2` is numerically non-critical and `n`-regular for every `n ≥ 2` (nt21 Lemma 3.4 and proof,
pp. 54–55). The inputs are that no level-one cusp form is `2`-ordinary, and that for `l ∈ {5, 7}`
the semisimplified mod-`l` representation of a level-one eigenform is a twist of that of `E_4` or
`E_6` (`l = 5`) or of `E_4`, `E_6` or `E_8` (`l = 7`), so that the reduction of `α/β` is `2³` or `2⁵`
modulo `5` and `2³`, `2⁵` or `2⁷` modulo `7`.

*Proof sketch.* Both slopes are positive and add up to `k − 1`, so both lie in `(0, k − 1)`:
numerical non-criticality. If `α/β` were a root of unity `ζ`, the mod-`5` congruence makes the
reduction of `ζ` an element of order `4` of `𝔽_5^×` (`2` has order `4`), so the prime-to-`5` part of
the order of `ζ` is `4`; the mod-`7` congruence makes the reduction of order dividing `3` (`2` has
order `3` in `𝔽_7^×`), so the prime-to-`7` part of the order divides `3`. These are incompatible
(the factor `4` is prime to `7`). The residual representations are those of AutomorphicGaloisRepresentations
§§2.3, 6.2.

**Checks.**

- For `Δ` (`k = 12`), `a_2 = −24`, `v_2(a_2) = 3`, the slopes are `3` and `8`, both in `(0, 11)`.
  Modulo `5`, `τ(n) ≡ n σ_1(n)`, so the Frobenius eigenvalues at `2` reduce to `2` and `2² = 4`,
  ratio `2^{±1}`, and `2 ≡ 2⁵`, `2^{−1} ≡ 3 ≡ 2³` modulo `5`.
- At level `Γ_0(2)` forms can be `2`-ordinary (slope `0`), and the argument fails.
- `3`-regularity alone needs only `α ≠ ±β`, which already follows from `α/β` not being a root of
  unity.

*Needs:* AutomorphicGaloisRepresentations §§2.3, 6.2; ModularityAndLanglandsExtensions §1.1.

### 3.5 Local reducibility and local image criteria for modular forms

Let `π` be cuspidal on `GL_2(𝔸_ℚ)` of weight `k ≥ 2` and `p` a prime. Prove: (1)
`r_{π,ι}|_{G_{ℚ_p}}` is reducible exactly when `π` is ι-ordinary; (2) if either
`r_{π,ι}|_{G_{ℚ_p}}` is irreducible and `π_p` admits a `3`-regular refinement, or `k > 2` and
`r_{π,ι}|_{G_{ℚ_p}}` is not potentially crystalline, then the Zariski closure of `r_{π,ι}(G_{ℚ_p})`
in `GL_2` contains `SL_2`; (3) if `p = 2` and `π` is everywhere unramified, the Zariski closure of
`r_{π,ι}(G_{ℚ_2})` contains `SL_2` (nt21 Lemma 3.5 and proof, pp. 55–56). The input is Sen's
theorem: a Hodge–Tate representation with distinct weights has a regular torus in the Zariski
closure of its image (PadicHodgeTheory §4.4).

*Proof sketch.* (1): ordinary forms have reducible local representations, and conversely
(PotentialAutomorphyInfrastructurePartII PL.0, the two comparisons between ι-ordinarity and
ordinarity). (2): by Sen the Zariski closure `H` contains a regular torus; if `H` does not contain
`SL_2` its identity component is a torus, so `r` is induced or a sum of characters
(ArithmeticGaloisRepresentations §7.6); the `3`-regularity or non-potentially-crystalline hypothesis
excludes both. (3): an induced local representation at `2` forces `a_2 = 0`, excluded by §3.4;
reducibility is excluded by non-ordinarity.

**Checks.**

- A CM form at a prime inert in its CM field has induced local representation, Zariski closure the
  normaliser of a torus, and refinement ratio `−1`, which is not `3`-regular, consistent with (2).
- A weight-two form with good supersingular reduction at `p` is potentially crystalline; (2) then
  needs the `3`-regular hypothesis.
- An ordinary form has reducible local representation; its Zariski closure is contained in a Borel
  subgroup and does not contain `SL_2`, so the irreducibility hypothesis in (2) cannot be dropped.

*Needs:* §3.4; PotentialAutomorphyInfrastructurePartII PL.0 ("ι-ordinary automorphic
representations have ordinary Galois representations" and its converse); ArithmeticGaloisRepresentations
§7.6; PadicHodgeTheory §§4.4, 5.3.

### 3.6 Moving within one annulus

Let `z`, `z′` be classical points of one Buzzard–Kilford annulus `X_i`, attached to `(π, χ)`,
`(π′, χ′)` with `χ` and `χ′` `n`-regular. Prove that if `Sym^{n−1} r_{π,ι}` is automorphic then so is
`Sym^{n−1} r_{π′,ι}` (nt21 Lemma 3.6 and proof, p. 56).

*Proof sketch.* For `n = 2` there is nothing to prove; let `n ≥ 3`. `X_i` is geometrically
irreducible, so both points lie on one component. There are no ordinary cuspidal points over the
annulus, so each refinement has positive slope; slopes summing to `k − 1` make them numerically
non-critical, and in the Steinberg case the slope is `(k − 2)/2`. Non-ordinarity gives local
irreducibility; an `n`-regular refinement with `n ≥ 3` is `3`-regular, so §3.5 gives large local
image, and §2.4 applies.

**Checks.**

- Two classical points of `X_1` of different weights with `n`-regular refinements are linked.
- A point whose refinement is not `n`-regular is not covered: e.g. for `n = 3` a refinement with
  ratio `−1`.
- For `n = 2` the statement is the modularity of `r_{π′,ι}`.

*Needs:* §2.4; §3.1; §3.5.

### 3.7 The ping-pong move

Let `π` be everywhere unramified of weight `k ≥ 2` with an accessible refinement `χ` at `2`. Prove
that there is `m_π ≥ 1` such that for every `m ≥ m_π` there is a cuspidal `π′` of `GL_2(𝔸_ℚ)`,
unramified outside `2`, with two accessible refinements of distinct slopes, and a refinement `χ′` of
`π′`, such that `(π, χ)` and `(π′, χ′)` lie on one irreducible component of `ℰ_{0,ℂ_p}`, the point
`z′` of `(π′, χ′)` lies over `𝒲_0(b)`, its twin `z″ = τ(z′)` (attached to a twist `π″` of `π′`) lies
on `X_{2^m−1}`, and automorphy of any one of `Sym^{n−1} r_{π,ι}`, `Sym^{n−1} r_{π′,ι}`,
`Sym^{n−1} r_{π″,ι}` implies all three (nt21 Lemma 3.7 and proof, pp. 56–57).

*Proof sketch.* The component of `(π, χ)` meets `ℰ_0(b)` in some `X_i` (ModularityAndLanglandsExtensions
§4.6). Let `m_π` be the least `m ≥ 1` with `2^{m+1} > 2i + 3`. For `m ≥ m_π` put
`k′ = 2i + 2^{m+1} − 1` (odd) and let `z′ ∈ X_i` be the point with `κ(z′)(5) = 5^{k′−2}`; then
`v_2(w(z′)) = 2` and `s(z′) = 2i < (k′ − 2)/2`, so `z′` is classical by the small-slope criterion
(PadicFamilies §2.8) and not Steinberg at `2` (a Steinberg point has slope `(k′ − 2)/2`); its two
refinements have the distinct slopes `2i` and `k′ − 1 − 2i`. §3.3 places `z″` on `X_{i′}` with
`i′ = (k′ − 1)/2 − i = 2^m − 1`. Distinct slopes make the refinements of `π′` `n`-regular for every
`n` (their ratio is not a root of unity), and non-ordinarity with §3.5 gives large local image; the
original point uses §3.4. Apply §2.4 between `z` and `z′`; the finite-order twist relating `z′` and
`z″` preserves symmetric-power automorphy.

**Checks.**

- The index `2^m − 1` depends only on `m`, so two level-one forms are connected through a common
  annulus by choosing the same `m`.
- For `i = 1`: `m_π` is the least `m ≥ 1` with `2^{m+1} > 5`, so `m_π = 2`, `k′ = 9`, `s(z′) = 2`,
  `(k′ − 2)/2 = 7/2`, and the twin lies on `X_3` with slope `9 − 1 − 2 = 6 = 3 · 2`.
- The small-slope bound used is `s(z′) < k′ − 1`, implied by `2i < (k′ − 2)/2`.

*Needs:* §3.3; §3.2; §3.6; §2.4; PadicFamilies §2.8; ModularityAndLanglandsExtensions §4.6.

### 3.8 Theorem D: symmetric powers for one level-one form give them for all

Fix `n ≥ 2`. Prove that if `π_0` is an everywhere unramified cuspidal automorphic representation of
`GL_2(𝔸_ℚ)` of weight `k ≥ 2` with `Sym^{n−1} r_{π_0,ι}` automorphic for some (equivalently every)
prime `p` and `ι`, then `Sym^{n−1} r_{π,ι}` is automorphic for every everywhere unramified cuspidal
`π` of weight `≥ 2` (nt21 Theorem 3.1 and proof, pp. 53, 57; Introduction, Theorem D, p. 3). This
proves ModularityAndLanglandsExtensions §4.7.

*Proof sketch.* Work at `p = 2`. Choose refinements of `π_0` and `π`; by §3.7 with a common
`m ≥ max(m_{π_0}, m_π)` both are linked to points `z″_0`, `z″` of `X_{2^m−1}`, whose refinements have
unequal slopes and hence are `n`-regular. Apply §3.6 on `X_{2^m−1}` and chain the equivalences; pass
between primes with the one-prime criterion (ModularityAndLanglandsExtensions §4.15).

**Checks.**

- `n = 2` is modularity of every level-one form.
- For `n = 3, 4, 5` the conclusion also follows from the low-rank lifts
  (ModularityAndLanglandsExtensions §1.15), a consistency check.
- The hypothesis cannot be weakened to a CM form: there are no CM forms of level one, so the
  statement concerns non-CM forms only.

*Needs:* §3.7; §3.6; §3.4; ModularityAndLanglandsExtensions §§0.2, 1.15, 4.15.

### Examples

- `Δ` and the unique normalised eigenform of weight `16` are linked by §3.8: at `p = 2` their
  refinements have slopes `{3, 8}` and (since `a_2 = 216 = 2³ · 27`) `{3, 12}`.
- Over the annulus the classical points of weight `9` with `m = 0` and slope `2` lie on `X_1`, and
  their twins on `X_3`.

### Dependencies

Layer 2; PadicFamilies §§2.8, 2.10, 2a.4, 2a.5; AutomorphicGaloisRepresentations §§2.3, 6.2;
PotentialAutomorphyInfrastructurePartII PL.0; ArithmeticGaloisRepresentations §7.6; PadicHodgeTheory
§§4.4, 5.3; ModularityAndLanglandsExtensions §§0.2, 1.1, 1.15, 4.3, 4.6, 4.15; Mathlib
`padicValNat.pow_two_sub_one`.

## Layer 4: local representation theory for unitary level raising

At an inert place of a definite unitary group (Newton–Thorne I §1, nt21 pp. 8–23) this layer
builds the quasi-split unitary groups and the pure inner twist, the endoscopic character identities
at archimedean, unramified and split places, stable base change with its `L`-packets, the
depth-zero cuspidal representations of `U_3` and `GL_3`, the level-raising types and their
congruence, the endoscopic transfer of the test function, and the fixed-type local lifting rings.
At a ramified place (Clozel–Thorne III §§2–3, ct17 pp. 4–28) it identifies the Iwahori–Hecke
algebra of `U_{2k+1}` with that of `Sp_{2k}`, states the Kazhdan–Lusztig classification in the form
used, constructs the modules `X`, `Y`, `Z` with their integral structures, and computes their
endoscopic signs.

### 4.1 Quasi-split unitary groups and the pure inner twist of the definite group

For a quadratic extension `E/F` of local or global fields with conjugation `c`, let `Φ_n` be the
antidiagonal matrix with entries `1, −1, …, (−1)^{n−1}` and `θ_n(g) = Φ_n c(g)^{−t} Φ_n^{−1}`.
Define the quasi-split unitary group `U_n` as the fixed points of `θ_n` on `Res_{E/F} GL_n`, with its
`θ`-stable standard pinning and `L`-group `^L U_n = GL_n(ℂ) ⋊ W_F`, where `w_c` acts by
`g ↦ Φ_n g^{−t} Φ_n^{−1}`; for `2(n_1 + ⋯ + n_{k−1}) + n_k = n` its standard Levi subgroups are
`Res GL_{n_1} × ⋯ × Res GL_{n_{k−1}} × U_{n_k}`. Under the standard assumptions (`F/F⁺` CM and
everywhere unramified, `[F⁺ : ℚ]` even, `S ⊇ S_p` split), define the pure inner twist `(ξ, u)` of
`U_n` to the definite unitary group `G_n` over `F⁺` (compact at infinity, quasi-split at finite
places; PotentialAutomorphyInfrastructurePartII PL.2) by `ξ(g_1, g_2) = (g_1, Φ_n^{−1} g_2 Φ_n)`
and `u_c = (Φ_n, Φ_n)` for `n` odd (for `n` even, `(ζΦ_n, ζ^{−1}Φ_n)` with `tr ζ = 0`), and fix a
character `μ` of `F^× \ 𝔸_F^×` restricting to the quadratic character of `F/F⁺`, which fixes the
`L`-embeddings. Prove that this gives isomorphisms `ι_v : G_n(F⁺_v) ≅ U_n(F⁺_v)` at finite places and
the canonical `ι_w : G_n(F⁺_v) ≅ GL_n(F_w)` at split `v = w w^c`, compatible with base change to a
totally real `L⁺/F⁺` (nt21, Notation, pp. 8–9; §1, standard assumptions and the pure inner twist,
pp. 9–10).

*Proof sketch.* `U_n`, its pinning and the Levi description are block-diagonal computations. The
class of `u` is trivial in `H¹(F⁺_v, U_n)` at finite places (Hilbert 90 and the computation of the
local Galois cohomology of unitary groups), so `ι_v` exists; at infinity the twist realises the
compact form. The pure inner twist datum normalises the transfer factors
(EndoscopicTransferAndUnitaryTraceComparison §2.8).

**API.**

- `U_n` as the `θ_n`-fixed subgroup of `Res_{E/F} GL_n` with its standard pinning and `L`-group.
- The standard Levi subgroups and parabolic induction `π_1 × ⋯ × π_k`.
- The pure inner twist `(ξ, u)` of `U_n` to `G_n`, the character `μ` and the induced `L`-embeddings.
- The local isomorphisms `ι_v` (inert or ramified `v`) and `ι_w` (split `v = w w^c`), compatible
  with base change to totally real extensions.

**Checks.**

- `U_1` is the norm-one torus: `U_1(F) = {x ∈ E^× : x c(x) = 1}`, and `G_1 = U_1`.
- For `n = 2`, `Φ_2 = antidiag(1, −1)` satisfies `Φ_2^t = −Φ_2 = Φ_2^{−1}`; the two signs cancel in
  `θ_2²`, so `θ_2` is an involution, and its fixed group is the quasi-split `U(1, 1)`.
- At a split place `U_n(F⁺_v) ≅ GL_n(F_w)` by projection to the `w`-factor.
- At an infinite place `G_n(ℝ)` is the compact `U(n)`, not the quasi-split
  `U(⌈n/2⌉, ⌊n/2⌋)`, for `n ≥ 2`; for `n = 3` the Levi subgroups of `U_3` are `U_3` and
  `Res GL_1 × U_1`.

*Needs:* PotentialAutomorphyInfrastructurePartII PL.2 ("The definite unitary group attached to a
CM field"; "Base change and descent between definite unitary groups and `GL_n`");
EndoscopicTransferAndUnitaryTraceComparison §2.8.

### 4.2 Archimedean, unramified and split endoscopic character identities

Let `n` be odd and `ℰ = (H, s, η)` an extended endoscopic triple for `G = G_n`. Prove:
(archimedean) for `v | ∞` and a Langlands parameter `φ_H` with `η ∘ φ_H` the parameter of an
irreducible `σ_v` of `G(F⁺_v)`, `π` the tempered `θ`-invariant representation of `H(F_ṽ)` of
parameter `φ_H|_{W_{F_v}}` and `f_v` a coefficient of `σ_v`, there is a sign
`ϵ(v, ℰ, φ_H) ∈ {±1}` with `π̃(f̃_v^H) = ϵ(v, ℰ, φ_H) σ_v(f_v) = ϵ(v, ℰ, φ_H)` for the
Whittaker-normalised twisted trace, compatible with totally real base change; (unramified inert)
for `f_v` unramified and an unramified `φ_H`, `π̃(f̃_v^H) = σ_{v,H}(f_v^H) = σ_v(f_v)`, with the
twisted trace normalised to fix the spherical vector; (split) the same identities at split `v` for
bounded parameters with the Whittaker normalisation (nt21 Propositions 1.6 and 1.7, §1.5,
pp. 12–13). Transfer factors are normalised by the pure inner twist of §4.1.

*Proof sketch.* Archimedean: Shelstad's real transfer and the Lefschetz functions
(EndoscopicTransferAndUnitaryTraceComparison §§2.14, 6.10), with the sign fixed by the pure inner
twist as in nt21 p. 12. Unramified: the fundamental lemmas for stable base change and for standard
endoscopy (EndoscopicTransferAndUnitaryTraceComparison §§4.9–4.10). Split: constant terms reduce
to `GL_n` (EndoscopicTransferAndUnitaryTraceComparison §6.4).

**Checks.**

- Under a totally real base extension the archimedean sign at a lifted real place equals the sign
  at the original place.
- The unramified identity uses the spherical normalisation and the split identity the Whittaker
  normalisation; exchanging them changes the identities by the scalar by which the normalised
  intertwining operator acts on the spherical vector.
- For `H = G` (the stable case) the sign is `+1`.

*Needs:* §4.1; EndoscopicTransferAndUnitaryTraceComparison §§2.10, 2.14, 4.9–4.10, 6.4, 6.10.

### 4.3 Stable base change and L-packets of U_n at an inert place

Let `v` be a place of `F⁺` inert in `F`. Identify irreducible admissible representations of
`GL_n(F_ṽ)` with parameters `W_{F_ṽ} × SL_2(ℂ) → GL_n(ℂ)`, and let `A^θ_t(GL_n(F_ṽ))⁺` be the
tempered conjugate self-dual ones whose parameter extends to `W_{F⁺_v} × SL_2(ℂ) → ^L U_n` (the
extension is unique up to conjugacy when it exists). Writing
`φ = ⊕ ρ_i^{l_i} ⊕ σ_j^{m_j} ⊕ (τ_k ⊕ τ_k^{w_c,∨})^{n_k}` with `ρ_i` conjugate self-dual of sign
`(−1)^{n−1}` and `σ_j` of sign `(−1)^n`, the extension exists exactly when every `m_j` is even.
Define Mœglin's extended cuspidal support `esc(τ)` of a tempered `τ` of `U_n(F⁺_v)` and stable base
change `BC : τ ↦ π_τ`, where `π_τ ∈ A^θ_t(GL_n(F_ṽ))⁺` is the unique element with
`sc(π_τ) = esc(τ)`. Prove that `BC` is surjective with finite fibres, that the `L`-packets
`Π(π) = BC^{−1}(π)` partition the tempered dual, and that for an extension `π̃` of `π` to
`GL_n ⋊ θ` there are non-zero constants `c_τ` with `π̃(f) = Σ_{τ ∈ Π(π)} c_τ τ(f^{U_n})`
(nt21 §1.8, Propositions 1.9–1.11, pp. 14–15). These are the local statements at inert places of
Mok's classification (ModularityAndLanglandsExtensions §3.12) in Mœglin's explicit form.

*Proof sketch.* For `θ`-discrete `π` (all `l_i = 1` and no `τ_k`) the existence and uniqueness of
`π_τ` and the finiteness of fibres are Mœglin's (moe07 §§5.4, 5.7), extended to all tempered `π` by
parabolic induction; the twisted character identity is Mœglin's for `θ`-discrete `π` (moe07 §5.5)
and follows in general from constant terms and disjointness of Jordan–Hölder factors. These inputs
are supplied by EndoscopicTransferAndUnitaryTraceComparison §11.2 together with its local unitary
base change (§13.5).

**API.**

- The criterion for `φ ∈ A^θ_t(GL_n(F_ṽ))⁺`: every conjugate self-dual summand of the wrong sign has
  even multiplicity.
- Mœglin's extended cuspidal support `esc(τ)` of a tempered `τ` of `U_n(F⁺_v)`.
- Stable base change `BC(τ) = π_τ`, surjective with finite fibres, and the packets
  `Π(π) = BC^{−1}(π)` partitioning the tempered dual.
- The twisted character identity `π̃(f) = Σ_{τ ∈ Π(π)} c_τ τ(f^{U_n})` with non-zero constants.

**Checks.**

- For `n = 1`, `BC` sends a character `χ` of `U_1(F⁺_v)` to the character `z ↦ χ(z/c(z))` of
  `F_ṽ^×`; packets are singletons, and the trivial character goes to the trivial character.
- For `n = 2` a parameter `σ ⊕ σ′` with `σ`, `σ′` distinct conjugate self-dual characters of sign
  `(−1)^n = +1` does not extend to `^L U_2` (multiplicities `1` are odd).
- `St_2(χ) ⊞ 1` with `χ` the non-trivial unramified quadratic character lies in
  `A^θ_t(GL_3(F_ṽ))⁺` and is the base change of the depth-zero supercuspidal `τ_v` of §4.4.

*Needs:* §4.1; ModularityAndLanglandsExtensions §§3.12, 3.15; SmoothRepresentationsOfLocalGroups
SR.3; EndoscopicTransferAndUnitaryTraceComparison §§11.2, 13.5 (gap:explicit-tempered-unitary-packets).

### 4.4 Depth-zero cuspidal representations of U₃ and GL₃ and their base change

Let `v` be inert of odd residue characteristic, `k(v)` its residue field of cardinality `q` and
`k(ṽ)` the quadratic extension. Let `τ(v)` be the cuspidal unipotent representation of `U_3(k(v))`.
For `k_3/k(v)` cubic let `C = ker(N : Res_{k_3 k(ṽ)/k(v)} 𝔾_m → Res_{k_3/k(v)} 𝔾_m)`, an anisotropic
torus of `U_3` unique up to conjugacy, of order `q³ + 1`; for a prime `p` such that `q` is a primitive
sixth root of unity modulo `p` and `θ : C(k(v)) → ℂ^×` of order `p`, define
`λ(v, θ) = −R_C^{U_3} θ`. With `C̃ = Res_{k_3 k(ṽ)/k(ṽ)} 𝔾_m` and `θ̃(z) = θ(z/z^c)`, define
`λ̃(ṽ, θ̃) = R_{C̃}^{GL_3} θ̃`. Define the compact inductions
`τ_v = c-Ind_{U_3(𝒪)}^{U_3(F⁺_v)} τ(v)`, `λ_v(θ)` similarly, and
`λ̃_ṽ(θ̃) = c-Ind_{F_ṽ^× GL_3(𝒪)}^{GL_3(F_ṽ)} λ̃(ṽ, θ̃)` (the finite type extended trivially on
`F_ṽ^×`). Prove that `λ(v, θ)` and `λ̃(ṽ, θ̃)` are irreducible cuspidal, that `τ_v`, `λ_v(θ)` and
`λ̃_ṽ(θ̃)` are irreducible supercuspidal, that `BC(τ_v) = St_2(χ) ⊞ 1` (`χ` the non-trivial
unramified quadratic character) and `BC(λ_v(θ)) = λ̃_ṽ(θ̃)` (nt21 Proposition 1.12, pp. 15–16); and,
for `n = 2k + 1` and `π = St_2(χ) ⊞ 1 ⊞ (⊞_{i=1}^{2k−2} χ_i) ∈ A^θ_t(GL_n)⁺` with `χ_i|_{𝒪^×}` of
order `2`, relabelled so that `χ_i = χ_{2k−1−i}^{w_c,∨}`, that `Π(π)` contains every irreducible
subquotient of `χ_1 × ⋯ × χ_{k−1} × τ_v` (nt21 Corollary 1.13, p. 16). The hypothesis
`π ∈ A^θ_t(GL_n)⁺` (with its sign and multiplicities) is part of the statement: arbitrary characters
that are quadratic on units need not satisfy it.

*Proof sketch.* `−R_C^{U_3} θ` is irreducible cuspidal for `θ` in general position, and `θ` of order
`p` is in general position because `q` has order `6` modulo `p`; `C` lies in no proper rational
parabolic (RepresentationTheory/CharacterTheory, see the supplier contracts). Compact inductions of
irreducible cuspidal depth-zero types are irreducible supercuspidal (SmoothRepresentationsOfLocalGroups
SR.2.1, irreducibility criterion for compact induction). The reducibility points of depth-zero
supercuspidals in odd residue characteristic leave two possibilities for `BC(τ_v)`, and the sign
condition `BC(τ_v) ∈ A^θ_t⁺` selects `St_2(χ) ⊞ 1`; the same computation gives `BC(λ_v(θ))`
(EndoscopicTransferAndUnitaryTraceComparison §11.2; ls20 §4). Corollary 1.13 follows from Jacquet
modules (SmoothRepresentationsOfLocalGroups SR.2.2) and §4.3.

**API.**

- `τ(v)`, the cuspidal unipotent representation of `U_3(k(v))`, of degree `q(q − 1)`.
- `λ(v, θ) = −R_C^{U_3} θ` for `θ` of order `p` with `q` of order `6` modulo `p`, of degree
  `(q + 1)(q² − 1)`.
- `λ̃(ṽ, θ̃) = R_{C̃}^{GL_3} θ̃` with `θ̃(z) = θ(z/z^c)`: the cuspidal representation of
  `GL_3(k(ṽ))` attached to the regular character `θ̃` of `(k_3 k(ṽ))^×` by Green's parametrisation.
- The compact inductions `τ_v`, `λ_v(θ)`, `λ̃_ṽ(θ̃)`, irreducible supercuspidal, with
  `BC(τ_v) = St_2(χ) ⊞ 1` and `BC(λ_v(θ)) = λ̃_ṽ(θ̃)`.

**Checks.**

- For `k(v) = 𝔽_3`, `dim τ(v) = q(q − 1) = 6`.
- `dim λ(v, θ)` is the part of `|U_3(𝔽_q)|` prime to the characteristic of `𝔽_q`, divided by
  `|C(𝔽_q)|`: with `|U_3(𝔽_q)| = q³(q + 1)(q² − 1)(q³ + 1)` this is `(q + 1)(q² − 1)`, e.g. `32`
  for `q = 3`.
- For `θ` trivial, `−R_C^{U_3}(1) = −1 + τ(v) + St` is a virtual character of degree
  `−1 + q(q − 1) + q³ = (q + 1)(q² − 1)`, not irreducible: the order-`p` hypothesis is needed.
- If `q ≡ 1` modulo an odd `p`, then `|C(k(v))| = q³ + 1 ≡ 2` modulo `p`, so no character of order
  `p` exists.

*Needs:* §4.3; SmoothRepresentationsOfLocalGroups SR.2.1, SR.2.2, SR.3; CharacterTheory Layers 3,
9 (gap:deligne-lusztig-finite-unitary); EndoscopicTransferAndUnitaryTraceComparison §11.2
(gap:explicit-tempered-unitary-packets).

### 4.5 The types τ(v, n) and λ(v, θ, n) and their congruence

Let `v` be inert of odd residue characteristic, `n = 2k + 1`, `𝔭_v ⊂ U_n(F⁺_v)` the parahoric with
Levi quotient `(Res GL_1)^{k−1} × U_3` over `k(v)`, and `ω(ṽ)` the non-trivial quadratic character of
`k(ṽ)^×`. Define `τ(v, n)` (resp. `λ(v, θ, n)`) as the representation of `𝔭_v` inflated from
`ω(ṽ) ⊗ ⋯ ⊗ ω(ṽ) ⊗ τ(v)` (resp. `⊗ λ(v, θ)`), and the test function `φ(v, θ, n)`, supported on
`𝔭_v` and inflated from the character of `λ(v, θ, n)^∨`, so that `π(φ)` is a positive multiple of
`dim Hom_{𝔭_v}(λ(v, θ, n), π|_{𝔭_v})`. Prove that when `q` is a primitive sixth root of unity
modulo `p`: (1) the reduction `τ̄(v, n)` is irreducible; (2) the semisimplified reduction of
`λ(v, θ, n)` contains `τ̄(v, n)` with multiplicity one (nt21 §1.8 and Proposition 1.15,
pp. 17–18). `𝒪`-lattices in these finite-dimensional representations exist and their
semisimplified reductions are independent of the lattice (ArithmeticGaloisRepresentations §1.8,
Brauer–Nesbitt applied to the finite group `𝔭_v/𝔭_v^+`).

*Proof sketch.* Inflate from the Levi quotient through the pro-unipotent radical of `𝔭_v`.
(1) is the modular irreducibility of cuspidal unipotent characters (dm18 Theorem 1). (2): `θ ≡ 1`
modulo `p`, so `R_C θ ≡ R_C 1` on `p`-regular classes; decompose `R_C 1` into unipotent characters and
use the decomposition numbers of `U_3` in non-defining characteristic for `q` of order `6`
(RepresentationTheory/CharacterTheory, supplier contracts).

**API.**

- `τ(v, n)` inflated from `ω(ṽ)^{⊗(k−1)} ⊗ τ(v)`, and `λ(v, θ, n)` inflated from
  `ω(ṽ)^{⊗(k−1)} ⊗ λ(v, θ)`, with `𝒪`-lattices.
- The test function `φ(v, θ, n) ∈ C_c^∞(U_n(F⁺_v))`, with `π(φ)` a positive multiple of the
  `λ(v, θ, n)`-multiplicity.
- `τ̄(v, n)` is irreducible.
- `τ̄(v, n)` occurs in the semisimplified reduction of `λ(v, θ, n)` with multiplicity one.

**Checks.**

- For `n = 3`, `𝔭_v = U_3(𝒪)`, `τ(v, 3) = τ(v)` and `λ(v, θ, 3) = λ(v, θ)`.
- `dim λ(v, θ, n) = (q + 1)(q² − 1)` independently of `n`; `dim τ(v, n) = q(q − 1)`.
- For `q = 3` and `p = 7` (`3` has order `6` modulo `7`), `|C(𝔽_3)| = 28` is divisible by `7`, so
  characters `θ` of order `7` exist.

*Needs:* §4.4; SmoothRepresentationsOfLocalGroups SR.1.4; ArithmeticGaloisRepresentations §1.8;
CharacterTheory (gap:deligne-lusztig-finite-unitary).

### 4.6 Endoscopic transfer of the test function φ(v, θ, n)

Assume `char k(v) > n`. Let `φ = φ(v, θ, n)`, `ℰ = (H, s, η)` with `H = U_a × U_b` (`a + b = n`),
and `π_a ∈ A^θ_t(GL_a(F_ṽ))⁺`, `π_b ∈ A^θ_t(GL_b(F_ṽ))⁺` with `(π_a ⊗ π_b)~(φ̃^H) ≠ 0`. Prove that
`sc(π_a) + sc(π_b) = λ̃_ṽ(θ̃) + χ_1 + ⋯ + χ_{2k−2}` with each `χ_i|_{𝒪^×} = ω(ṽ)` (nt21
Proposition 1.16 and proof, pp. 18–19). The input is the transfer of Deligne–Lusztig functions: for
`char k(v) > n` the transfer `φ^H` can be taken to be a weighted sum of inflations to `H(𝒪)` of the
Deligne–Lusztig characters `R_{C_i}^{H_{k(v)}}(θ^{−1} ⊗ ω(ṽ)^{⊗(k−1)})`, one for each conjugacy class
of embeddings `C_i` of `C × (Res 𝔾_m)^{k−1}` into `H_{k(v)}` (kv12 Theorem 2.2.5, arXiv version).

*Proof sketch.* Compute `φ^H` as above (EndoscopicTransferAndUnitaryTraceComparison §2.11);
transitivity of Deligne–Lusztig induction and cuspidality of `λ̃(ṽ, θ̃)` identify the depth-zero
supercuspidal support of the representations on which `φ^H` has non-zero twisted trace (nt21
Proposition 1.14); combine with the twisted character identity of §4.3.

**Checks.**

- In the stable case `H = U_n` the supercuspidal support contains `λ̃_ṽ(θ̃)`, while the unipotent
  type `τ(v, n)` has support built from `St_2(χ) ⊞ 1`: the two compact types are distinguished by
  their supports, which is what level raising uses.
- The hypothesis `char k(v) > n` fails for `n = 3`, `q = 3`; such places are excluded from `T_1`
  in §5.1.
- If `(π_a ⊗ π_b)~(φ̃^H) = 0` nothing is asserted: the statement does not exclude representations
  containing both compact types.

*Needs:* §4.5; §4.3; §4.4; EndoscopicTransferAndUnitaryTraceComparison §2.11
(gap:deligne-lusztig-transfer).

### 4.7 Splitting of lifts and Frobenius on fixed-type lifting rings

Let `ṽ` be a place of `F` split over `F⁺` with `char k(ṽ)` odd, `p` an odd prime different from
`char k(ṽ)`, `1 ≤ n_1 ≤ n`, `n_2 = n − n_1`, `q_ṽ` a primitive `n_1`-th root of unity modulo `p`, and
`Θ` a character of `k_{n_1}^×` of order `p`. Let `ρ̄_ṽ = σ̄_{ṽ,1} ⊕ σ̄_{ṽ,2}` with
`σ̄_{ṽ,1} ≅ Ind_{G_{F_{ṽ,n_1}}}^{G_{F_ṽ}} ψ̄_ṽ` (`ψ̄_ṽ` unramified) and `σ̄_{ṽ,2} ⊗ ω(ṽ) ∘ Art^{−1}`
unramified on inertia. Prove (nt21 Lemma 1.21 and Proposition 1.22(3)–(4), pp. 20–21): (Lemma 1.21)
every lift of `ρ̄_ṽ` to a complete Noetherian local `𝒪`-algebra `R` is `(1 + M_n(𝔪_R))`-conjugate to
`σ_{ṽ,1} ⊕ σ_{ṽ,2}` with `σ_{ṽ,i}` lifting `σ̄_{ṽ,i}`, each unique up to conjugacy; on the fixed-type
ring `R(ṽ, Θ, ρ̄_ṽ)` (lifts of inertial type `τ_ṽ`, the type being read through the Artin map of
`F_{ṽ,n_1}` on the first summand): (3) with `α_ṽ` the reduction of
`(−1)^{n_1+1} det σ_{ṽ,1}(φ_ṽ)`, `det(X − σ_{ṽ,1}(φ_ṽ^{n_1})) ≡ (X − α_ṽ)^{n_1}` modulo `ϖ`, and
`α_ṽ` in `R(ṽ, Θ, ρ̄_ṽ)/(ϖ)` is independent of the Frobenius lift `φ_ṽ`; (4) for `L_ṽ/F_ṽ` finite with
`τ_ṽ|_{I_{L_ṽ}}` trivial, the map from the framed ring of `L_ṽ` factors through its unramified
quotient. The case `n_1 = 1` (`q_ṽ ≡ 1` modulo `p`, `λ̃ = Θ`) is included. The printed proof of (3)
uses a Hensel argument; the argument here checks the polynomial identity at characteristic-zero
points and reduces, and for `n_1 = 1` claims independence of `α_ṽ` only modulo `ϖ`.

*Proof sketch.* The hypotheses make `H⁰` and `H¹` of `Hom(σ̄_1, σ̄_2)` and `Hom(σ̄_2, σ̄_1)` vanish
(they fail for `p = char k(ṽ)` or `p = 2`), which gives the splitting and uniqueness by deformation
theory of extensions (LocalGaloisDeformationRings §§1.1, 1.4). For (3), fix a Frobenius lift: at
characteristic-zero points the induced first block has scalar `n_1`-th Frobenius power and
characteristic polynomial `(X − (−1)^{n_1+1} det σ_1(φ))^{n_1}`; the fixed-type ring is reduced and
`𝒪`-flat (LocalGaloisDeformationRings §§2.18, 2.24), so the identity spreads; reducing modulo `ϖ`,
the determinant on inertia becomes trivial because `Θ` has `p`-power order, so `α_ṽ` does not depend
on the Frobenius lift. (4): on restriction to `G_{L_ṽ}` the type becomes trivial, so lifts are
unramified.

**Checks.**

- For `n_1 = n` the second summand is zero, Lemma 1.21 is empty, and (3) says the `n`-th Frobenius
  power is scalar modulo `ϖ` on the induced summand.
- For `n_1 = 1` the determinant can involve the ramified order-`p` character `Θ`, so `α_ṽ` is
  independent of the Frobenius lift only after reduction modulo `ϖ`.
- For `p = 2` the twist by `ω(ṽ)` is trivial residually and the cross cohomology need not vanish;
  `p` is odd throughout.

*Needs:* LocalGaloisDeformationRings §§1.1, 1.4, 2.18, 2.24.

### 4.8 The Iwahori–Hecke algebra of ramified `U_{2k+1}` is that of `Sp_{2k}`

Let `E/F` be ramified quadratic of odd residue characteristic with residue cardinality `q`,
`U_{2k+1}` the ramified quasi-split unitary group, `B` an Iwahori subgroup with Iwahori–Hecke
algebra `H_B`, and `B′` an Iwahori subgroup of split `Sp_{2k}(F)` with `Λ′ ≅ ℤ^k` spanned by
`ε′_i = diag(1, …, ϖ², …, ϖ^{−2}, …, 1)`. Prove that the identifications `Λ ≅ Λ′` and `W_0 ≅ W′_0`
extend to an isomorphism of affine Weyl groups `W ≅ W′` carrying the simple affine reflections
`s_0, …, s_k` to those of `Sp_{2k}`, with the same parameter `q` at every simple reflection, and
induce an isomorphism `H_B ≅ H_{B′}` with `[Bε_iB] ↦ [B′ε′_iB′]` (ct17 Proposition 2.2, §2.1,
p. 7). The printed presentation (ct17 pp. 6–7) uses invertible braid-group generators over `ℤ` and
a quadratic relation with reversed signs; the presentation used here is
`T_s² = (q − 1)T_s + q`, equivalently `(T_s − q)(T_s + 1) = 0`, with the positive braid monoid over
`ℤ` (the braid group form needs `q` invertible).

*Proof sketch.* Compute the affine root system of ramified `U_{2k+1}` from its valued root datum
(ReductiveGroupsPartII §RG2.1.3) and check that it matches that of `Sp_{2k}` with equal parameters
at all simple reflections; the affine Tits systems (ReductiveGroupsPartII §RG2.4.2) and the
Iwahori–Matsumoto presentation of their Hecke algebras (SmoothRepresentationsOfLocalGroups SR.1.5,
for groups with an affine Tits system) give the isomorphism.

**Checks.**

- For `k = 1` both algebras are the affine Hecke algebra of type `Ã_1` with equal parameters `q`.
- The double-coset computation gives `[BsB]² = (q − 1)[BsB] + q`: for a nonunit `q` (over `ℤ`, or
  over `ℤ_l` with `l | q`) `T_s` is not invertible, so the braid-group presentation is not available
  integrally.
- The generic-parameter algebras specialise to `H_B` and `H_{B′}` at the same `q`; with unequal
  parameters (as for the unramified `U_{2k+1}`) the statement fails.

*Needs:* ReductiveGroupsPartII §§RG2.1.3, RG2.3.3, RG2.4.1–RG2.4.2; SmoothRepresentationsOfLocalGroups
SR.1.4, SR.1.5 (gap:iwahori-matsumoto-quasi-split), SR.4.4.

### 4.9 The Kazhdan–Lusztig classification of Iwahori-spherical representations

Let `G` be a split adjoint group over a non-archimedean local field with residue cardinality `q`,
`B` an Iwahori subgroup and `G^∨` the complex dual group. Prove that irreducible smooth
representations of `G` with non-zero `B`-fixed vectors are in bijection with `G^∨`-conjugacy classes
of triples `(s, u, ρ)` with `s ∈ G^∨` semisimple, `u ∈ G^∨` unipotent with `s u s^{−1} = u^q`, and `ρ`
an irreducible representation of the component group `A(s, u)` of `Z_{G^∨}(s, u)` occurring in the
homology `H_*(ℬ_u^s, ℂ)` of the variety of Borel subgroups containing `s` and `u`; that the
`H_B`-module of `B`-fixed vectors of the representation attached to `(s, u, ρ)` is the unique simple
quotient of the standard module `Hom_{A(s,u)}(ρ, H_*(ℬ_u^s, ℂ))`; and that the representation is
tempered exactly when the compact part of `s` (in a Jacobson–Morozov decomposition through `u`) is
compact, in which case the standard module is irreducible (kl87 Theorem 7.12 and §8). The
Bernstein subalgebra `ℂ[Λ]` acts on the standard module through the decomposition of `ℬ_u^s` into
fixed-point components of a maximal torus, which computes the semisimplified normalised Jacquet
module (the exponents) of the representation.

*Proof sketch.* The Iwahori block is equivalent to `H_B`-modules (SmoothRepresentationsOfLocalGroups
SR.3.4), and `H_B` has the Bernstein presentation (SR.1.5). Kazhdan–Lusztig realise `H_B` in the
equivariant `K`-theory of the Steinberg variety of `G^∨` and classify simple modules by standard
modules in the homology of fixed-point varieties; temperedness is Casselman's criterion on the
exponents of the standard module (SR.3.3).

**Checks.**

- For `PGL_2`: `(s, 1, triv)` gives the unramified principal series with Satake parameter `s`
  (irreducible when `s` has eigenvalue ratio `≠ q^{±1}`), and
  `s = diag(q^{1/2}, q^{−1/2})`, `u ≠ 1` gives the Steinberg representation, with one exponent and
  `dim St^B = 1`.
- For `s` with eigenvalue ratio `q`, the trivial representation is attached to `(s, 1, triv)`; it
  is not tempered, and `s` is not compact.
- A triple with `s = 1` and `u ≠ 1` does not satisfy `s u s^{−1} = u^q`, since `u ≠ u^q` for a
  non-trivial unipotent `u` and `q > 1`.

*Needs:* SmoothRepresentationsOfLocalGroups SR.1.5, SR.3.3, SR.3.4; ReductiveGroupsPartII
§RG2.4.2.

### 4.10 The Kazhdan–Lusztig modules X, Y, Z with parameter `St_{n−4} ⊞ St_3 ⊞ St_1`

For `n = 2k + 1 ≥ 7` let `Π_E = St_{n−4,E} ⊞ St_{3,E} ⊞ St_{1,E}`, a tempered representation of
`GL_n(E)` whose conjugate orthogonal parameter `φ_E` extends uniquely to a parameter `φ` of `U_n`,
and `Π_φ` the fibre of the local Langlands correspondence of Mœglin and Mok over `φ`. Exponents `[m_1, …, m_k]` denote characters
`|·|^{m_1} ⊗ ⋯ ⊗ |·|^{m_k} ⊗ 1` of the torus `(E^×)^k × (E^×)^{N=1}`, and `j` the semisimplified
normalised Jacquet module for the upper-triangular Borel. Through §4.8 and §4.9 for `PSp_{2k}` (the
unipotent class of the dual group with partition `(n − 4) + 3 + 1`, with component group `{±1}` for
`n = 7` and `{±1}²` for `n ≥ 9`; the fixed-point variety `ℬ_u^s` is smooth and projective, hence
paved by affine spaces), construct irreducible tempered Iwahori-spherical modules `X`, `Y` (`n = 7`)
and `X`, `Y`, `Z` (`n ≥ 9`) with: for `n = 7`, `dim X^P = dim X^B = 1`, `dim Y^B = 7`,
`jX = [1, 0, −1]`, `jY = [1, 0, −1] + 2[1, 0, 1] + 4[1, 1, 0]`; for `n = 9`, `dim X^B = 1`,
`dim Y^B = 11`, `dim Z^B = 2`, `jX = [2, 1, 0, −1]`,
`jY = [2,1,0,−1] + 2[2,1,0,1] + 4[2,1,1,0] + [1,0,2,1] + [1,2,0,1] + 2[1,2,1,0]`,
`jZ = [1,0,2,1] + [1,2,0,1]`; and for `k ≥ 4`, with `L_k` the multiset obtained by inserting `0` in
positions `2` through `k − 1` of `[1, k − 2, k − 3, …, 1]`: `jX_k = [k − 2, k − 3, …, 0, −1]`,
`jY_k = L_k + 2[1, k − 2, k − 3, …, 0] + prepend(k − 2, jY_{k−1})`,
`jZ_k = L_k + prepend(k − 2, jZ_{k−1})`, so `dim Y_k^B = dim Y_{k−1}^B + k` and
`dim Z_k^B = dim Z_{k−1}^B + k − 2`. Prove that `Π_φ` has exactly these members for `n = 7` and one
further, non-Iwahori-spherical member `W` for `n ≥ 9` (ct17 §2.2, Theorem 2.3, pp. 8–9; Theorem 2.5
and proof, pp. 10–11; §3.5, pp. 25–26). Here `P` is the maximal parahoric containing `B`, with
`[P : B] = q + 1`.

*Proof sketch.* By §4.9 the irreducible Iwahori-spherical tempered modules of `PSp_{2k}` correspond
to pairs `(u, ρ)` with `ρ` in `H_*(ℬ_u^s)`; the affine paving gives dimensions and exponents. For
`n = 7`, `ℬ_u^s = X_1 ⊔ X_2 ⊔ X_3` with `X_1` two points (exponent `[1, 0, −1]`), `X_2 ≅ ℙ¹`
(`[1, 0, 1]`) and `X_3 ≅ ℙ¹ × ℙ¹` (`[1, 1, 0]`), of total homology dimension `2 + 2 + 4 = 8 = 1 + 7`.
Membership in `Π_φ`: the stable base change of each module is semistable with `θ`-stable exponent,
forcing the parameter `⊕ sp(n_i) ⊗ χ_i` to have trivial `χ_i` and `{n_i} = {n − 4, 3, 1}` (ct17 §3.5).

**API.**

- The member `X` of `Π_φ` with `dim X^P = dim X^B = 1`.
- The member `Y` with `dim Y^B = 7` (`n = 7`), `11` (`n = 9`), and `dim Y_k^B = dim Y_{k−1}^B + k`.
- The member `Z` for `n ≥ 9`, with `dim Z^B = 2` (`n = 9`) and `dim Z_k^B = dim Z_{k−1}^B + k − 2`.
- The semisimplified normalised Jacquet modules of `X`, `Y`, `Z` as the exponent multisets above.
- `X`, `Y` (and `Z`) are the Iwahori-spherical members of `Π_φ`; for `n ≥ 9`
  the fourth member `W` has `W^B = 0` and is not semistable.

**Checks.**

- `n = 7`: `dim X^B + dim Y^B = 1 + 7 = 8 = dim H_*(ℬ_u^s)`, and the exponent multiset of `Y` has
  `1 + 2 + 4 = 7` terms.
- `n = 9`: `1 + 11 + 2 = 14`; the recursion gives `dim Y_5^B = 11 + 5 = 16` and
  `dim Z_5^B = 2 + 3 = 5` for `n = 11`.
- The recursion at `k = 4` reproduces the `n = 9` lists: `L_4 = [1,0,2,1] + [1,2,0,1]`, and
  `prepend(2, jY_3) = [2,1,0,−1] + 2[2,1,0,1] + 4[2,1,1,0]`.
- `Y` is the generic member of `Π_φ`; `X` is not generic although `dim X^B = 1`.

*Needs:* §4.8; §4.9; SmoothRepresentationsOfLocalGroups SR.2.2; ModularityAndLanglandsExtensions
§3.12.

### 4.11 Integral structures, localisations and duality for the Kazhdan–Lusztig modules

Let `l = n − 2` be prime (`n ∈ {7, 9}`), `K/ℚ_l` finite containing `√q` over which `X`, `Y` (and `Z`)
are defined, with integers `𝒪` and residue field `k`. Prove: (Proposition 2.6) if `q` is a primitive
root modulo `l`, there are `H_{B,𝒪}`-lattices `X^B_𝒪`, `Y^B_𝒪` (and `Z^B_𝒪`) whose reductions have
pairwise no common Jordan–Hölder factor, with `Y^B_𝒪 ⊗ k` absolutely irreducible; (Corollary 2.8) if
`q` is a primitive root modulo `l`, a finite flat `H_{B,𝒪}`-module `M` with
`M ⊗ K ≅ (X^B)^a ⊕ (Y^B)^b (⊕ (Z^B)^c)` is the direct sum of its intersections with the isotypic
parts. Let `ȷ` be the anti-involution `[BgB] ↦ [Bg^{−1}B]`, `𝒪[Λ]` the Bernstein subalgebra, and
`M(χ̄)`, `M(χ̄ȷ)` localisations at residual characters. (Proposition 2.9) If `q ≡ −1` modulo `l` and
`χ̄` is the reduction of the character of `𝒪[Λ]` on `X^B`: `X^B_K = X^B_K(χ̄) = X^B_K(χ̄ȷ)`,
`dim Y^P_K ∩ Y^B_K(χ̄) = dim Y^P_K ∩ Y^B_K(χ̄ȷ) = 1`, and `Z^B_K(χ̄) = 0` for `n = 9`. (Duality)
Self-duality of `Y_K` gives a perfect `K`-valued pairing on `Y^B_K` with `⟨tx, y⟩ = ⟨x, ȷ(t)y⟩`,
under which `Y^B_K(χ̄ȷ)` annihilates the other localisations and `(1 − e_P)Y^B_K` annihilates
`Y^P_K`; no integral perfect pairing is claimed (ct17 Proposition 2.6, p. 12; Remark 2.7 and
Corollary 2.8, p. 17; §2.3 and Proposition 2.9, pp. 17–18). The two congruence conditions concern
different places (`v_i` and `v_0` in §5.7), and `e_P = [P]/(q + 1)` exists over `K` but is not
integral when `q ≡ −1` modulo `l`. In the printed rank-nine matrix of `T_{s_2}` (ct17 Proposition
2.6(2), pp. 14–16) the `(10, 10)` entry must be `−1/(1 + q)`, with the matching sign in the
corresponding relation.

*Proof sketch.* Proposition 2.6: write `Y^B` by explicit matrices for the `T_{s_i}` and the
Bernstein generators, reduce, and check irreducibility and disjointness; with the corrected entry
the relevant `2 × 2` block has trace `q − 1` and determinant `−q`, hence satisfies the quadratic
relation of §4.8, and the remaining presentation relations are checked on the matrices.
Corollary 2.8: Brauer–Nesbitt for the multiplicative monoid of `H_{B,𝒪}`
(ArithmeticGaloisRepresentations §1.8) and disjointness of the reductions. Proposition 2.9: compute
the Bernstein-character exponents modulo `l` with `q ≡ −1`; duality from the self-duality of `Y_K`
(ct17 Theorem 3.3).

**Checks.**

- For `n = 7`, `Y^B` has rank `7` and its reduction is absolutely irreducible of dimension `7`.
- With `q ≡ −1` modulo `l` the `X`-isotypic part lies in both localisations, while `Y` has
  one-dimensional `P`-fixed parts in each; this asymmetry drives the count of §5.10.
- The printed block, with `(10, 10)` entry of the wrong sign, has determinant `≠ −q` and fails the
  quadratic relation, so it does not define an `H_B`-module.

*Needs:* §4.10; §4.8; SmoothRepresentationsOfLocalGroups SR.1.5; ArithmeticGaloisRepresentations §1.8.

### 4.12 Identification of the members of `Π_φ` and their endoscopic signs

Suppose `E/F` ramified of odd residue characteristic and `n = m + 4` with `m ≥ 3` odd. Prove that
the members `X`, `Y` (`m = 3`) or `X`, `Y`, `Z` (`m ≥ 5`) of `Π_φ` are semistable with the Jacquet
exponents of §4.10, that `W` is not semistable, and: for `m ≥ 5`, with the characters `ε_1`, `ε_2` of
the component group `S_φ` and `ε = ε_1 ε_2`, `ε(Y) = ε(Z) = 1`, `ε(X) = ε(W) = −1`,
`ε_1(X) = ε_1(Y) = 1`, `ε_1(Z) = ε_1(W) = −1`; for `m = 3` the component group has one non-trivial
character `ε`, with `ε(Y) = 1` and `ε(X) = −1` (ct17 Theorem 3.3 and sign table, p. 21; §3.4,
Lemma 3.6, pp. 23–24; §3.5, (3.7)–(3.8), pp. 24–27; Proposition 3.7, p. 27). Transfer factors on the
maximally split torus are normalised as in ct17 Lemma 3.6:
`Δ(t_H, t) = μ(z_1)μ(z_2)Δ_IV(t_H, t)` for `t_H = (t_0, z_1, z_2) ∈ U(m) × U(4)`. The printed theorem
gives `X` the exponent `[1, 0, 1]` for `m = 3`, inconsistent with the module computation, which
gives `[1, 0, −1]`; and it interchanges a component-character subscript in the sign comparison,
where `ε_1` is meant.

*Proof sketch.* Compute transfer factors on the maximally split torus (`Δ_I = Δ_{III,1} = 1`,
`Δ_II = 1` for trivial `χ`-data, `Δ_IV` the discriminant ratio; EndoscopicTransferAndUnitaryTraceComparison
§2.8). Express traces through Jacquet modules on the regular part of the split torus and compare the
stable identity with the endoscopic identity `Σ ε(π)⟨tr π, f⟩ = ⟨tr π_H, f^H⟩` for
`H = U(m) × U(4)`: the right side is `2 Σ_w w([k − 2, …, 1, 1, 0])` over shuffles, which equals
`jY − jX + jZ` for `m = 5`; the members of `U(4)` with parameter `St_3 ⊞ St_1` have total Jacquet module
`2μ^{−1}(z_1 z_2) ⊗ [1, 0]` (EndoscopicTransferAndUnitaryTraceComparison §6.4). The `ε_1` computation
uses Mœglin's hereditary Jacquet formula. The printed identification of `Z` asserts that a certain
induced representation has a unique irreducible submodule (ct17, after (3.9), p. 26); this fails as
written, since `Y` embeds with the same exponent, and the identification instead counts the full
socle of that induction and isolates its other constituent before assigning the sign
(EndoscopicTransferAndUnitaryTraceComparison §11.2, supplier contracts).

**Checks.**

- For `m = 5` (`n = 9`, `k = 4`): `jY − jX + jZ = 4[2,1,1,0] + 2[2,1,0,1] + 2[1,2,1,0] + 2[1,2,0,1]
  + 2[1,0,2,1]`, which is twice the sum over the six shuffles of `(2, 1)` with `(1, 0)`:
  `[2,1,1,0]` twice, `[2,1,0,1]`, `[1,2,1,0]`, `[1,2,0,1]`, `[1,0,2,1]`.
- The counts agree: `11 − 1 + 2 = 12 = 2 · 6`.
- For `m = 3` the signs give `jY − jX = 2[1, 0, 1] + 4[1, 1, 0]`, and the endoscopic side is twice
  the sum over the three shuffles of `(1)` with `(1, 0)`, namely `2([1,1,0] + [1,1,0] + [1,0,1])`:
  the two agree. With the printed exponent `[1, 0, 1]` for `X` one would get
  `[1, 0, −1] + [1, 0, 1] + 4[1, 1, 0]`, which does not.

*Needs:* §4.10; ModularityAndLanglandsExtensions §3.12; EndoscopicTransferAndUnitaryTraceComparison
§§2.8, 6.4, 11.2 (gap:explicit-tempered-unitary-packets); SmoothRepresentationsOfLocalGroups SR.2.2.

### Examples

- `q = 3`, `p = 7`: `3` has order `6` modulo `7`, `|C(𝔽_3)| = 28`, `dim τ(v) = 6`, `dim λ(v, θ) = 32`.
- `n = 7`, `l = 5`: `q` a primitive root modulo `5` (e.g. `q = 3` with `E/F` ramified) gives the
  lattices of §4.11 at the places `v_i`, and `q ≡ −1` modulo `5` (e.g. `q = 9`) gives the
  localisation statement at `v_0`.

### Dependencies

ModularityAndLanglandsExtensions §§3.12, 3.15; PotentialAutomorphyInfrastructurePartII PL.2;
EndoscopicTransferAndUnitaryTraceComparison §§2.8, 2.10, 2.11, 2.14, 4.9–4.10, 6.4, 6.10, 11.2,
13.5; SmoothRepresentationsOfLocalGroups SR.1–SR.4; ReductiveGroupsPartII §§RG2.1.3, RG2.3.3,
RG2.4.1–RG2.4.2; LocalGaloisDeformationRings §§1.1, 1.4, 2.18, 2.24; ArithmeticGaloisRepresentations
§1.8; RepresentationTheory/CharacterTheory Layers 3, 9.

## Layer 5: level raising to prescribed types on definite unitary groups

Newton–Thorne I §4 (nt21 pp. 59–65) raises the level of an isobaric sum `π_2 ⊞ π_{n−2}` to a cuspidal
representation with prescribed depth-zero types, by the stabilised trace formula and the congruence
of types of §4.5; Clozel–Thorne III §§3–4 (ct17 pp. 21–37) raises the level at a ramified place by
counting automorphic representations of a definite unitary group with given stable base change and
an isotropy argument in the Iwahori–Hecke modules of §§4.10–4.12. Sections 5.1–5.4 prove the
odd-rank level-raising statement of ModularityAndLanglandsExtensions §4.4; §§5.5–5.10 prove
Clozel–Thorne III Theorem 4.2.

### 5.1 The data of Newton–Thorne I §4 for level raising to types

Fix `n = 2k + 1 ≥ 3`, the standard assumptions of §4.1, `ι : ℚ̄_p ≅ ℂ`, and cuspidal conjugate
self-dual `π_2` on `GL_2(𝔸_F)` and `π_{n−2}` on `GL_{n−2}(𝔸_F)`. Define a level-raising datum as
these together with: (1) `π = π_2 ⊞ π_{n−2}` regular algebraic, with `ρ̄ = r̄_{π,ι} = ρ̄_2 ⊕ ρ̄_{n−2}`,
`ρ̄_2 = r̄_{π_2|·|^{(2−n)/2},ι}`, `ρ̄_{n−2} = r̄_{π_{n−2}|·|^{−1},ι}`; (2) `π` ι-ordinary; (3) pairwise
disjoint non-empty sets `T_1`, `T_2`, `T_3` of places of `F⁺` outside `S` of odd residue
cardinality, with `π` unramified outside `S ∪ T`, such that: at `v ∈ T_1`, `v` is inert, `q_v` has
order `6` modulo `p`, `char k(v) > n`, `π_{2,ṽ} ≅ St_2(χ_ṽ)` and
`π_{n−2,ṽ} ≅ ⊞_{i=0}^{2k−2} χ_{ṽ,i}` with `χ_ṽ`, `χ_{ṽ,0}` unramified and `χ_{ṽ,i}|_{𝒪^×} = ω(ṽ)`
for `i ≥ 1`; at `v ∈ T_2`, `v` splits, `q_v ≡ −1` modulo `p`, `π_{2,ṽ} ⊇ λ̃(ṽ, Θ_ṽ)` and
`π_{n−2,ṽ} ⊇ ω(ṽ) ∘ det`; at `v ∈ T_3`, `v` splits, `q_v` has order `n − 2` modulo `p`,
`π_{n−2,ṽ} ⊇ λ̃(ṽ, Θ_ṽ)` and `π_{2,ṽ} ⊇ ω(ṽ) ∘ det`; and characters `θ_v` of `C(k(v))` of order `p`
for `v ∈ T_1`. Define the level `U = ∏ U_v` with `U_v = ι_v^{−1} 𝔭_v` (`v ∈ T_1`),
`ι_ṽ^{−1} 𝔮_ṽ` (`v ∈ T_2 ∪ T_3`), the ordinary Iwahori level at `S_p` and hyperspecial elsewhere
outside `S`, the `p`-adic level being small enough that finite double-coset stabilisers have order
prime to `p`; and the global types `τ_g = ⊗_{T_1} τ(v, n) ⊗ ⊗_{T_2 ∪ T_3} λ̃(ṽ, Θ_ṽ, n)` and
`λ_g = ⊗_{T_1} λ(v, θ_v, n) ⊗ ⊗_{T_2 ∪ T_3} λ̃(ṽ, Θ_ṽ, n)` with `𝒪`-lattices (nt21 §4, data before
Theorem 4.1, pp. 59–60; the level and types, p. 62). Here `λ̃(ṽ, Θ_ṽ, n)` is the type of `GL_n(𝒪)`
inflated from the Deligne–Lusztig cuspidal of `GL_{n_1}(k(ṽ))` (`n_1 = 2` on `T_2`, `n − 2` on `T_3`)
and `ω(ṽ) ∘ det` on the complement. `π` is tempered at every place, since `π_2` and `π_{n−2}` are.

**API.**

- The level-raising datum `(π_2, π_{n−2}, T_1, T_2, T_3, (θ_v), (Θ_ṽ))` with conditions (1)–(3).
- The level `U`, with `𝔭_v` at `T_1` and `𝔮_ṽ` at `T_2 ∪ T_3`.
- The global types `τ_g` and `λ_g` with their `𝒪`-lattices.
- The residual decomposition `ρ̄ = ρ̄_2 ⊕ ρ̄_{n−2}` with the stated twists.

**Checks.**

- For `n = 3`, `π_{n−2} = π_1` is a Hecke character, `λ̃(ṽ, Θ_ṽ)` at `T_3` is an order-`p` character
  of `k(ṽ)^×`, and `q_v ≡ 1` modulo `p` there (order `n − 2 = 1`).
- For `n = 5`, `ρ̄_2 = r̄_{π_2|·|^{−3/2}}` and `ρ̄_3 = r̄_{π_3|·|^{−1}}`; the twists make
  `ρ̄ = r̄_{π,ι}` for the isobaric sum.
- `q_v ≡ 1` modulo `p` is not allowed at `T_2`: an order-`p` character `Θ` of `k_2^×` is regular
  only if `Θ^{q_v} ≠ Θ`, and `Θ^{q_v} = Θ^{−1} ≠ Θ` when `q_v ≡ −1` and `p` is odd.

*Needs:* §§4.1, 4.5; PotentialAutomorphyInfrastructurePartII PL.0 ("Automorphic polarized
representations and their levels"), PL.2 ("Iwahori levels at `l`, the `U_p`-operators and ordinary
parts"); ModularityAndLanglandsExtensions §4.4.

### 5.2 Local components at inert places and box sums with the same residual representation

In the setting of §5.1 prove: (Lemma 4.3) if `v` is inert in `F` then
`π_ṽ ∈ A^θ_t(GL_n(F_ṽ))⁺`; consequently, for `v ∈ T_1`, `χ_ṽ` is the non-trivial unramified quadratic
character and `χ_{ṽ,0}` is trivial; (Lemma 4.5) if `π′ = π′_1 ⊞ ⋯ ⊞ π′_r` is regular algebraic with
`π′_i` cuspidal conjugate self-dual, `r̄_{π′,ι} ≅ r̄_{π,ι}` and `π′_ṽ|_{𝔮_ṽ} ⊇ λ̃(ṽ, Θ_ṽ, n)` for
`v ∈ T_2 ∪ T_3`, then either `π′` is cuspidal, or `r = 2` and after reordering `π′` has blocks of sizes
`n − 2` and `2` with the `T_2`, `T_3` types distributed as for `π` and the residual blocks
`ρ̄_{n−2}`, `ρ̄_2` (nt21 Lemma 4.3 and Remark 4.4, p. 61; Lemma 4.5 and proof, p. 61).

*Proof sketch.* Lemma 4.3: the polarization sign of the Galois representation of a conjugate
self-dual cuspidal representation (AutomorphicGaloisRepresentationsPartII AG2.3, Bellaïche–Chenevier)
makes the local parameter at an inert place extend to `^L U_n`; with §4.3 and the sign condition
for `St_2(χ) ⊞ 1` this gives the conclusion. Lemma 4.5: at `T_3` the regular induced local type
forces an entire `(n − 2)`-dimensional local block into one isobaric constituent; comparing
semisimplified residual inertia (the two residual blocks have the quadratic and the trivial inertial
characters there) puts the residual `(n − 2)`-block into that constituent, whether or not it is
globally irreducible. At `T_2` the same comparison forces the residual `2`-block into a constituent
of rank at least two. Only one cuspidal constituent, or ranks `(n − 2, 2)`, remain.

**Checks.**

- A box sum with three blocks cannot carry both the `T_2` and `T_3` types and the residual
  representation `ρ̄_2 ⊕ ρ̄_{n−2}`.
- `π` itself is of shape `(n − 2, 2)`, so the second alternative occurs.
- At `v ∈ T_1` the trivial `χ_ṽ` would give `St_2 ⊞ 1`, whose parameter `sp(2) ⊕ 1` has the
  conjugate self-dual summand `1` of sign `+1 = (−1)^{n−1}` but `sp(2)` of the wrong sign with odd
  multiplicity; twisting by the unramified quadratic character corrects the sign.

*Needs:* §5.1; §4.3; AutomorphicGaloisRepresentationsPartII AG2.3; PotentialAutomorphyInfrastructurePartII
PL.2 ("Galois representations attached to constituents of algebraic modular forms").

### 5.3 A form of the definite group with prescribed types, via the trace formula

In the setting of §5.1, prove that for every `(S ∪ T)`-split totally real quadratic `L⁺/F⁺`
(`L = L⁺F`) either there is an automorphic `σ` of `G(𝔸_{F⁺})` with base change `π`,
`σ_v^{U_v} ≠ 0` for `v ∉ T` and `σ_T|_{U_T} ⊇ τ_g`, or there is such a `σ` of `G(𝔸_{L⁺})` with base
change `π_L`, `σ_v^{U_{L,v}} ≠ 0` for `v ∉ T_L` and `σ_{T_L}|_{U_{L,T_L}} ⊇ τ_{g,L}` (nt21
Proposition 4.6 and proof, pp. 62–64).

*Proof sketch.* The stabilised trace formula for `G` gives
`Σ m(σ_i) σ_i(f) = ½(π̃(f̃) + (π_{n−2} ⊗ (π_2 ⊗ μ^{−1} ∘ det))~(f̃^{U_{n−2} × U_2}))` for test
functions matching `π` (EndoscopicTransferAndUnitaryTraceComparison §6.29 and the classification of
ModularityAndLanglandsExtensions §3.16). With `f` built from `τ_g` at `T` and the identities of
§4.2 elsewhere, the multiplicity is `m(σ) = ½(∏ϵ ∏c_{τ_v} + ∏ϵ ∏d_{v,1})`, using §§4.3, 4.6. If it
vanishes over `F⁺`, quadratic base change to `L⁺` squares the local constants and gives
`m(σ) = ∏c_{τ_v}² ≠ 0`.

**Checks.**

- The multiplicity over `F⁺` is a half-sum of two signed products and can vanish; then
  `∏c_{τ_v}² = ∏d_{v,1}²` and over `L⁺` the multiplicity is `∏c_{τ_v}² ≠ 0`.
- If both products have the same sign the first alternative holds with multiplicity
  `|∏c_{τ_v}|`.
- `L⁺` must split at `S ∪ T`: otherwise the local types at `T` change under base change and
  `τ_{g,L}` is not defined.

*Needs:* §5.1; §§4.2, 4.3, 4.6; EndoscopicTransferAndUnitaryTraceComparison §6.29;
ModularityAndLanglandsExtensions §3.16.

### 5.4 Level raising to a type on a definite unitary group (Newton–Thorne I Theorem 4.1)

In the setting of §5.1, prove that for every `(S ∪ T)`-split totally real quadratic `L⁺/F⁺` with
`L = L⁺F` there is a RACSDC automorphic representation `Π` of `GL_n(𝔸_L)` with (1) `Π` ι-ordinary,
of the weight of `π`, and unramified outside `S ∪ T`; (2) `r̄_{Π,ι} ≅ r̄_{π,ι}|_{G_L}`; (3) for
`v ∈ T_{1,L}`, `Π_ṽ` restricted to `𝔯_ṽ` contains `λ̃(ṽ, θ̃_{v|_{F⁺}}, n)|_{𝔯_ṽ}`; (4) for
`v ∈ T_{2,L} ∪ T_{3,L}`, `Π_ṽ|_{𝔮_ṽ}` contains `λ̃(ṽ, Θ_ṽ|_F, n)`, with `n_1 = 2` on `T_{2,L}` and
`n_1 = n − 2` on `T_{3,L}` (nt21 Theorem 4.1, p. 60; Remark 4.2, p. 60; proof, pp. 64–65). This
proves the odd-rank level-raising statement of ModularityAndLanglandsExtensions §4.4. The printed
item (4) attaches the block sizes to the wrong sets (it prints `n_2`), and the printed statement does
not record that `Π` has the weight of `π`, which the construction gives and the applications use.

*Proof sketch.* §5.3 gives `σ` containing `τ_g`. The congruence of types (§4.5) and exactness of the
ordinary forms functor at `l`-torsion-free level (PotentialAutomorphyInfrastructurePartII PL.2) give
`Σ` with the same Hecke eigensystem modulo `p` containing `λ_g`, of the same weight. Its base change
is cuspidal: §5.2 allows only shape `(n − 2, 2)`, which §4.6 excludes at `T_1`; `T_2 ∪ T_3` force
cuspidality (Remark 4.2). Ordinarity comes from the ordinary level at `S_p`, and local–global
compatibility gives (3)–(4).

**Checks.**

- For `n = 3` the theorem produces a cuspidal RACSDC representation of `GL_3` congruent to a
  `GL_2 × GL_1` isobaric sum.
- With `T_1 = ∅` the shape `(n − 2, 2)` could not be excluded, which is why `T_1` is non-empty.
- The residual representation of `Π` is that of `π`; the characteristic-zero representation is
  not, since `Π` is cuspidal and `π` is not.

*Needs:* §§5.2, 5.3; §§4.5, 4.6; PotentialAutomorphyInfrastructurePartII PL.2 ("Exactness and
group-ring freeness at `l`-torsion-free level"; "Iwahori levels at `l`, the `U_p`-operators and
ordinary parts"; "Base change and descent between definite unitary groups and `GL_n`").

### 5.5 A conjugate-symplectic Hecke character with prescribed archimedean components

For a CM extension `E/F` of a totally real field, prove that there is a continuous character
`μ : E^× \ 𝔸_E^× → ℂ^×` with `μ|_{𝔸_F^×} = ε_{E/F}` (the quadratic character) and `μ(z) = z/|z|`
for `z ∈ E_w ≅ ℂ` at every archimedean place `w` (ct17 Lemma 3.4, p. 21). The archimedean
component is `(z/z̄)^{1/2}` with the branch `z/|z|`.

*Proof sketch.* On `E^× 𝔸_F^× E_∞^×` prescribe the quadratic character on `𝔸_F^×` and `z/|z|` at each
complex place; the prescriptions agree on intersections, and the CM unit computation gives a
compact open finite-idelic subgroup on which the prescription is trivial. The resulting character
of a subgroup of the discrete quotient extends to the whole quotient because `ℂ^×` is divisible
(ct17 proof of Lemma 3.4, pp. 21–22; ClassFieldTheory Layer 11).

**Checks.**

- For `F = ℚ` and `E` imaginary quadratic, `μ` has infinity type `(1/2, −1/2)` and restricts to the
  quadratic character of `E/ℚ`.
- Compatibility at a real place: for `x ∈ ℝ^× ⊂ ℂ^×`, `x/|x| = sign(x) = ε_{E/F,∞}(x)`; the formal
  expression `(x/x̄)^{1/2} = 1` with the principal branch would contradict the restriction condition.
- `μ^2` restricted to `𝔸_F^×` is trivial, and `μ μ^c = 1` on `𝔸_E^×` is not required.

*Needs:* ClassFieldTheory Layer 11; PotentialAutomorphyInfrastructurePartII PL.0 ("Algebraic
characters with prescribed conjugate-norm and local behaviour").

### 5.6 Counting automorphic representations of the definite unitary group with given base change

Let `G` be the unitary group in `n = l + 2` variables over `F`, split by the CM field `E`, compact at
infinity and quasi-split at finite places, `[F : ℚ]` even, `l ≥ 5` prime. Let `v_0, …, v_s` be places
ramified in `E` of odd residue characteristic, all other ramification of the representations below
split. Prove (ct17 Theorem 3.8, pp. 28–29; Remark 3.9 and the remark after the proof, pp. 29–31;
Theorem 3.10, pp. 31–32): (1) for `σ_1`, `σ_2` conjugate self-dual cuspidal on `GL_4(𝔸_E)`,
`GL_m(𝔸_E)` (`m = l − 2`) with `σ_1 ⊞ σ_2` regular algebraic of infinity type
`((l + 1)/2, …, (−1 − l)/2)`, `∏_{v|∞} det(w_v) = 1`, `σ_{1,w_i} ≅ St_3 ⊞ St_1` and
`σ_{2,w_i} ≅ St_m`, there are exactly `4^{s+1}/2` (for `l > 5`) and `2^s` (for `l = 5`) automorphic
representations of `G(𝔸_F)` with stable base change `σ_1 ⊞ σ_2`, each of multiplicity one, in
bijection with the tuples `(σ_{v_i}) ∈ ∏ Π_{φ_{v_i}}` with `∏ ε_{v_i}(σ_{v_i}) = 1`; (2) for a RACSDC
`π` with `π_{w_i} ≅ St_m ⊞ St_3 ⊞ St_1` there are exactly `4^{s+1}` (`l > 5`) and `2^{s+1}` (`l = 5`),
in bijection with `∏ Π_{φ_{v_i}}`. Stable base change holds for representations with trivial
`σ_∞`. The archimedean sign condition holds when every place above `l` splits in `E` with
`[F_v : ℚ_l]` even and the representation is ι-ordinary (Remark 3.9).

*Proof sketch.* Stabilise the trace formula for `G` with pseudo-coefficients at infinity and Iwahori
level at the `v_i` (EndoscopicTransferAndUnitaryTraceComparison §§2.10, 6.10, 6.29); insert the
stable and endoscopic local identities of §4.12 with the character `μ` of §5.5 in the
`L`-embedding; Mok's multiplicity formula (ModularityAndLanglandsExtensions §3.12) and
Kaletha–Mínguez–Shin–White for the inner form (§3.16 there) give multiplicity one and the sign
condition.

**Checks.**

- For `s = 0` and `l > 5`: packets have four members, giving `4/2 = 2` endoscopic and `4` cuspidal
  contributions; for `l = 5` the packets have two members, giving `1` and `2`.
- The endoscopic count is half the cuspidal count for every `s`, because the sign condition
  `∏ ε_{v_i} = 1` cuts out half of `∏ Π_{φ_{v_i}}`.
- For `l = 5` the set `Π_φ` has the two members `X`, `Y` of §4.10 (`n = 7`); for `l = 7`
  (`n = 9`) four.

*Needs:* §4.12; §5.5; ModularityAndLanglandsExtensions §§3.12, 3.16;
EndoscopicTransferAndUnitaryTraceComparison §§2.10, 6.10, 6.29.

### 5.7 The set-up of Clozel–Thorne III §4: places, levels and algebraic modular forms

Let `l ≥ 5` be prime, `ι : ℚ̄_l ≅ ℂ`, `E` a CM field with totally real `F` such that every place
`v | l` of `F` splits in `E` with `[F_v : ℚ_l]` even, and `v_0, …, v_s` (`s ≥ 1`) places of `F`
ramified in `E` of odd residue characteristic with `q_{v_0} ≡ −1` modulo `l` and each `q_{v_i}`
(`i ≥ 1`) a primitive root modulo `l`, all other places unramified in `E`. Let `n = l + 2`,
`m = l − 2`, `G` as in §5.6, and `π_1`, `π_2` cuspidal conjugate self-dual on `GL_m(𝔸_E)`,
`GL_4(𝔸_E)` with `π_{1,w_i} ≅ St_m`, `π_{2,w_i} ≅ St_3 ⊞ St_1`, `π = π_1 ⊞ π_2` regular algebraic and
ι-ordinary of infinity type `((n − 1)/2, …, (1 − n)/2)`, `r̄_ι(π) = ρ̄_1 ⊕ ρ̄_2` with `ρ̄_i` absolutely
irreducible and the tame inertia generator acting at `w_i` as a regular unipotent on `ρ̄_1` and with
Jordan type `3 + 1` on `ρ̄_2`. Define the levels `U_0` (with `P_{v_0}` at `v_0` and `B_{v_i}` at
`v_i`, `i ≥ 1`) and `U_1` (equal to `U_0` except `B_{v_0}` at `v_0`), so `[U_0 : U_1] = q_{v_0} + 1`;
the module `S(U, A)` of `A`-valued functions on `G(F) \ G(𝔸_F^∞)/U`, with Hecke algebra `T(U, 𝒪)`
generated by the spherical operators at split places and the `U_v^j` at `v | l`; and the maximal
ideals `𝔪`, `𝔪^∨` of a fixed ordinary automorphic `σ` with base change `π_1 ⊞ π_2` (supplied by
§5.6) and of `σ^∨` (ct17 §4.1, pp. 33–34). Away from `v_0` the level is chosen small enough for
`l`-integral exactness and for the unweighted double-coset pairing; the weight is zero, with ordinary
parts at the places above `l` as in PotentialAutomorphyInfrastructurePartII PL.2.

**API.**

- The levels `U_0 ⊃ U_1` with `[U_0 : U_1] = q_{v_0} + 1`.
- The modules `S(U, A)` and Hecke algebras `T(U, 𝒪)` with the maximal ideals `𝔪`, `𝔪^∨`.
- A representation `Σ` with trivial `Σ_∞` contributes to `N ⊂ S(U, 𝒪)` exactly when
  `N ∩ ι^{−1}Σ^{∞,U,ord} ≠ 0`.
- For sufficiently small level, changing an `𝒪`-lattice in the coefficient types commutes with the
  ordinary forms functor and localisation, and the dual pairing passes to the contragredient
  lattice.

**Checks.**

- `[U_0 : U_1] = [P_{v_0} : B_{v_0}] = q_{v_0} + 1`, divisible by `l` since `q_{v_0} ≡ −1` modulo `l`.
- For `l = 5`: `n = 7`, `m = 3`, and `q_{v_0} ≡ −1` modulo `5`, e.g. `q_{v_0} ∈ {9, 19, 29}`.
- `q_{v_i} ≡ 1` modulo `l` is not allowed at `v_i` (`i ≥ 1`): the lattices of §4.11 need a primitive
  root.

*Needs:* PotentialAutomorphyInfrastructurePartII PL.2 ("Algebraic modular forms on a definite unitary
group"; "Hecke algebras of definite unitary groups and their maximal ideals"; "Iwahori levels at
`l`, the `U_p`-operators and ordinary parts"); §4.11; §5.6.

### 5.8 Local types of representations contributing to S(U₁, 𝒪)_𝔪

In the set-up of §5.7, prove that if `Σ` contributes to `S(U_1, 𝒪)_𝔪` and `Π` is its stable base
change to `GL_n(𝔸_E)`, then `Π` is ι-ordinary and its components at the places above
`v_0, …, v_s` are semistable; moreover either (1) `Π_{w_i} ≅ St_m ⊞ St_3 ⊞ St_1` for every `i`, or
(2) for some `i` the monodromy of `r_ι(Π)` at `w_i` has Jordan type `(n − 2) + 1 + 1` or `n`, and `Π`
is cuspidal (ct17 Proposition 4.1 and proof, pp. 34–35).

*Proof sketch.* Semistability: from `Σ c(σ)⟨tr σ, f_v⟩ = ⟨tr π_w × I_c, f_{E_w}⟩` with `c(σ) > 0` and
the twisted Jacquet trace (EndoscopicTransferAndUnitaryTraceComparison §6.4); this replaces the
argument of Clozel–Thorne II Lemma 4.3. Residual monodromy has Jordan types `m` and `3 + 1`; the
closure order on nilpotent classes (`dim ker N^j ≤ dim ker N̄^j`), Mok's parity condition and
quadratic characters congruent to `1` modulo `λ` leave only the listed possibilities.

**Checks.**

- `π = π_1 ⊞ π_2` itself falls in case (1).
- For `n = 7` the partitions dominating `3 + 3 + 1` with the parity constraint are `3 + 3 + 1`,
  `5 + 1 + 1` and `7`; the first is case (1), the others case (2).
- A contributing `Σ` with unramified local component at some `w_i` is excluded: the residual
  monodromy is non-trivial there.

*Needs:* §5.7; §5.6; ModularityAndLanglandsExtensions §3.12; EndoscopicTransferAndUnitaryTraceComparison
§6.4; PotentialAutomorphyInfrastructurePartII PL.2 ("Galois representations attached to constituents
of algebraic modular forms").

### 5.9 The pairing on S(U₁) and the module structure at the level-raising place

Prove that the pairing `⟨f, g⟩ = Σ_{x ∈ G(F) \ G(𝔸_F^∞)/U_1} f(x) g(x)` on `S(U_1, 𝒪)` satisfies
`⟨af, g⟩ = ⟨f, ȷ(a)g⟩` for `a ∈ H_{B_{v_0},𝒪}` and induces (1) perfect pairings
`S(U_1, 𝒪)_𝔪 × S(U_1, 𝒪)_{𝔪^∨} → 𝒪` and modulo `l`; (2) a pairing vanishing on
`S(U_0, k)_𝔪 × S(U_0, k)_{𝔪^∨}`, because `q_{v_0} ≡ −1` modulo `l`; (3) a perfect pairing
`M × N → 𝒪` whose reduction vanishes on `M^{U_0} ⊗ k × N^{U_0} ⊗ k`, where `M` is the intersection of
the `R_i^{B_{v_i}}`-isotypic parts of `S(U_1, 𝒪)_𝔪` and `N` the intersection of the
`(R_i^∨)^{B_{v_i}}`-isotypic parts of `S(U_1, 𝒪)_{𝔪^∨}`; and (Lemma 4.4) if no contributing
representation falls in case (2) of §5.8, then `M ⊗ ℂ ≅ (X^B)^a ⊕ (Y^B)^b ⊕ (Z^B)^c ≅ N ⊗ ℂ` as
`H_{B_{v_0}}`-modules with `a > b = c ≥ 0` (`l = 7`), respectively `M ⊗ ℂ ≅ (X^B)^a ⊕ (Y^B)^b` with
`a > b ≥ 0` (`l = 5`) (ct17 Proposition 4.3, p. 36; Lemma 4.4, p. 36). The level `U_1` is small enough
that `l` does not divide the orders of the stabilisers. The printed proof uses `N` before specifying
its coefficient types; it is the contragredient-type module above, as the double-coset pairing pairs
dual types.

*Proof sketch.* Perfectness from the finite double-coset sum and smallness of `U_1`. Vanishing on
`U_0`-invariants: averaging over `P_{v_0}` multiplies the pairing by `[U_0 : U_1] = q_{v_0} + 1 ≡ 0`
modulo `l`. Lemma 4.4: endoscopic base changes contribute only `X` at `v_0` (§5.6), cuspidal ones
`X ⊕ Y ⊕ Z`; the endoscopic contribution is non-empty because of `π_1 ⊞ π_2`, which gives `a > b`.

**Checks.**

- If `U_1 = U_0` there is no vanishing modulo `l`: it comes from `q_{v_0} + 1 ≡ 0` modulo `l`.
- With `c` endoscopic and `d` cuspidal contributors (counted with the choices of local members) one
  gets `a = c + d`, `b = d`, so `a > b` exactly when `c > 0`.
- For `l = 5` there is no `Z`, and the conclusion concerns the `X`, `Y` multiplicities only.

*Needs:* §5.7; §5.8; §4.11; §5.6; PotentialAutomorphyInfrastructurePartII PL.2 ("Exactness and
group-ring freeness at `l`-torsion-free level").

### 5.10 Level raising for l = 5 and l = 7 (Clozel–Thorne III Theorem 4.2)

In the set-up of §5.7 with `l ∈ {5, 7}`, prove that there is an automorphic representation `Σ` of
`G(𝔸_F)` contributing to `S(U_1, 𝒪)_𝔪` whose stable base change is cuspidal with monodromy of Jordan
type `(n − 2) + 1 + 1` or `n` at some `w_i` (ct17 Theorem 4.2, p. 35; proof, pp. 35–37; Remark 4.5,
p. 37). The count below fails for `l > 7`, where `Z(χ̄) ≠ 0` (Remark 4.5).

*Proof sketch.* Suppose every contributing base change has the original monodromy. Choose local
members of the `L`-packets at the `v_i` (`i ≥ 1`) with product of signs `−1`; then §5.9 gives `a > b` (with
`b = c` for `l = 7`). Let `M`, `N` be the dual-type lattices of §5.9. The perfect pairing restricts to
`M(χ̄) × N(χ̄ȷ)`; §4.11 gives rank `a + 3b` for each, with `P`-fixed sublattices of rank `a + b` (using
the exponent `[2, 1, 0, −1]` for `l = 7` and `[1, 0, −1]` for `l = 5`; `Z` contributes nothing to these
localisations). Modulo `l` the two `P`-fixed subspaces annihilate one another by §5.9(3); in a perfect
pairing between spaces of dimension `a + 3b` this forces `2(a + b) ≤ a + 3b`, that is `a ≤ b`, a
contradiction. No self-pairing of `M` is used.

**Checks.**

- For `l = 5` the count compares the ranks `a + b` and `a + 3b` of modules over `H_{B_{v_0}}` for
  `n = 7`.
- With `a = 2`, `b = 1`: `2(a + b) = 6 > 5 = a + 3b`, so two mutually orthogonal `3`-dimensional
  subspaces cannot sit in a perfect pairing of `5`-dimensional spaces.
- If `a ≤ b` were allowed (no endoscopic contributor), the inequality `2(a + b) ≤ a + 3b` holds and
  there is no contradiction: the endoscopic seed `π_1 ⊞ π_2` is essential.

*Needs:* §5.9; §5.8; §4.11; §5.6.

### Examples

- `n = 3`, `T_3` a place with `q_v ≡ 1` modulo `p`: Theorem 4.1 raises `π_2 ⊞ χ` to a cuspidal `GL_3`.
- `l = 5`, `s = 1`: `π = π_1 ⊞ π_2` on `GL_3 × GL_4`, `q_{v_0} = 9`, `q_{v_1}` a primitive root modulo
  `5` (e.g. `3`); §5.6 counts `2^1 = 2` endoscopic and `4` cuspidal representations of the definite
  `U(7)` with the relevant local data.

### Dependencies

Layer 4; ModularityAndLanglandsExtensions §§3.12, 3.16, 4.4; PotentialAutomorphyInfrastructurePartII
PL.0, PL.2; AutomorphicGaloisRepresentationsPartII AG2.3; EndoscopicTransferAndUnitaryTraceComparison
§§2.10, 6.4, 6.10, 6.29; ClassFieldTheory Layer 11.

## Layer 6: level raising to Steinberg by residually reducible deformation theory

Three level-raising theorems produce automorphic lifts that are Steinberg at a prescribed place:
Newton–Thorne I Theorem 6.1 for residual representations that are sums of characters (nt21 §6,
pp. 75–82), Clozel–Thorne III Theorems 5.1 and 5.7 for two residual constituents and a long Jordan
block (ct17 §5, pp. 37–44), and Thorne 2024 Theorem 6.11 by `p`-adic methods (th24 §6, pp. 38–41).
The first two use the residually reducible deformation theory of
PotentialAutomorphyInfrastructurePartII PL.6–PL.7: deformation rings `R_D`, their pseudodeformation
subrings `P_D`, ordinary Hecke algebras `𝕋_D` and the surjection `P_D → 𝕋_D` with kernel `J_D`.

### 6.1 Schur and primitive residual representations after split extensions; cuspidal soluble base change

In the setting of §6.4 (`r̄ = r̄_{π,ι} = χ_1 ⊕ ⋯ ⊕ χ_n`), choose a finite set `Y_a` of places such that
every `Y_a`-split finite CM extension `L/F` is linearly disjoint from the field cut out by
`r̄|_{G_{F(ζ_p)}}`. Prove that for such `L`: (1) the polarized extension `r̄^{pol} : G_{F⁺} → 𝒢_n(k)`
restricted to `G_{L⁺(ζ_p)}` is Schur; (2) `r̄|_{G_L}` is primitive; (3) if `L/F` is soluble, the base
change of `π` to `L` is cuspidal; (4) more generally, for `L/F_0/F` with `L/F_0` soluble and `Π`
RACSDC on `GL_n(𝔸_{F_0})` with `r̄_{Π,ι} ≅ r̄|_{G_{F_0}}`, the base change of `Π` to `L` is cuspidal;
and (Lemma 6.3) there are infinitely many places `ṽ_a` of `F` prime to `S`, not split in `F(ζ_p)`,
with `r̄(Frob_{ṽ_a})` scalar (nt21 Lemma 6.2, p. 77; Lemma 6.3, p. 78).

*Proof sketch.* (1)–(2): the ratios `χ_i/χ_j` have order `> 2n` on `G_{F(ζ_p)}` and stay distinct
after disjoint extensions (PotentialAutomorphyInfrastructurePartII PL.6, "Schur `𝒢_n`-valued
residual representations"; "Sums of characters with large ratios are primitive"). (3)–(4): a
non-cuspidal cyclic base change would make the Galois representation induced (the cuspidality
criterion for automorphic induction, ModularityAndLanglandsExtensions conventions, and
EndoscopicTransferAndUnitaryTraceComparison §6.24), contradicting primitivity. Lemma 6.3:
Chebotarev (Chebotarev Layer 10) applied to `τ = τ_0 τ_0^c` with `ε(τ_0)² ≠ 1`.

**Checks.**

- If two characters `χ_i`, `χ_j` agree on `G_{L(ζ_p)}`, `r̄|_{G_L}` is not Schur; the order
  hypothesis on `χ_i/χ_j` prevents this.
- A non-disjoint `L` (containing the fixed field of `χ_1/χ_2`) makes two characters coincide on
  `G_L`, and `r̄|_{G_L}` is then not multiplicity free.
- For `n = 1` the statements are empty except Lemma 6.3, where every Frobenius is scalar.

*Needs:* PotentialAutomorphyInfrastructurePartII PL.6 ("Schur `𝒢_n`-valued residual
representations"; "Primitive representations"; "Sums of characters with large ratios are
primitive"); EndoscopicTransferAndUnitaryTraceComparison §6.24; Chebotarev Layer 10.

### 6.2 Deformation data with Steinberg and fixed-type local conditions

Define a deformation datum `D = (L, {R_v}_{v ∈ X})` as a soluble CM extension `L/F`, split at the
auxiliary sets (`Y_a ∪ S̃_a` in nt21 §6; `V_0 ∪ S_a` for a good extension in ct17 §5), a set `X` of
places of `L⁺` away from `p`, and for each `v ∈ X` a local lifting ring `R_v`: the fixed-type ring
`R(ṽ, Θ_ṽ, r̄|_{G_{L_ṽ}})` of §4.7, the unipotent ring `R^1_v`, the Steinberg ring `R^{St}_v`
(`q_v ≡ 1` modulo `p` and `r̄` trivial at `v`), a ring `R^{χ_v}_v` of fixed characters, or the
partition ring `R^m_v` cut out by `det(X − ρ(φ_v)) ∈ Pol_n(m, q_v)`: its Frobenius polynomial is a
product of `q_v`-strings of the lengths given by `m`. This is a Frobenius-polynomial condition, not
an upper bound on the Jordan type of monodromy; at pure points the monodromy partition is `m`.
Attached are the global polarized deformation problem `𝒮_D` with ordinary conditions `R^Δ_v` at `p`
over the Iwasawa algebra `Λ_L`, its universal ring `R_D`, the pseudodeformation subring
`P_D ⊂ R_D` (`R_D` finite over `P_D`), the localised ordinary Hecke algebra `𝕋_D`, the surjection
`P_D → 𝕋_D` with kernel `J_D` when every `R_v` is a fixed-type, unipotent or fixed-character ring,
and the reducible quotient `R_D^{red}`. Prove that when every `R_v` is a fixed-type, fixed-character,
unipotent or Steinberg ring (not a partition ring), every irreducible component of `R_D` has
dimension at least `1 + n[L⁺ : ℚ] = dim Λ_L` (nt21 §6 and Lemma 6.4, pp. 78–79; ct17 §5.1,
pp. 38–40). In nt21 `n ≥ 3` is odd and `p > 2n`; in ct17 `n ≥ 2`, `l > 3` and `l ∤ n_1 n_2 n`; `X` is
a set of places of `L⁺`.

*Proof sketch.* The objects `Λ_L`, `𝒮_D`, `R_D`, `P_D`, `𝕋_D`, `J_D`, `R_D^{red}` are those of
PotentialAutomorphyInfrastructurePartII PL.2 ("Ordinary deformation data and their Hecke
comparison"), PL.6 (`P_𝒮`, reducibility ideals) and PL.7; this target packages the local conditions
used for level raising. The dimension bound is the presentation of polarized deformation rings
over the local rings (GlobalGaloisDeformations §8.4) with the dimensions of the local rings
(LocalGaloisDeformationRings §§2.24, 2.26, 6.10).

**API.**

- A deformation datum: a soluble split CM extension `L/F` with local rings `R_v` at a set `X` of
  places of `L⁺`.
- The universal ring `R_D` of the polarized ordinary problem `𝒮_D` over `Λ_L`; maps `R_D → A`
  classify strict equivalence classes of lifts of the polarized residual representation satisfying
  exactly the local ordinary, type or partition conditions of `D`.
- The subring `P_D ⊂ R_D` generated by characteristic-polynomial coefficients, with `R_D` finite
  over `P_D`.
- The surjection `P_D → 𝕋_D` with kernel `J_D` when no `R_v` is a Steinberg or partition ring.
- Without partition rings, every component of `R_D` has dimension `≥ 1 + n[L⁺ : ℚ]`.
- Restriction to a further soluble split extension `L′/L` gives a finite map `R_{D_{L′}} → R_D`.

**Checks.**

- For `n = 3` and `[L⁺ : ℚ] = 2` the bound is `1 + 3 · 2 = 7 = dim Λ_L`.
- For `X = ∅` there are no type or partition conditions; the ordinary conditions at `p`, the fixed
  polarization and the unramified-outside-`S` restriction remain.
- If some `R_v` is the Steinberg ring, `P_D → 𝕋_D` is not asserted: the Hecke algebra is of level
  prime to `v`.
- The partition ring `R^{(n)}_v` is the Steinberg ring and `R^{(1,…,1)}_v` the flat reduced
  unipotent ring (LocalGaloisDeformationRings §6.10).

*Needs:* §4.7; PotentialAutomorphyInfrastructurePartII PL.2 ("Ordinary deformation data and their
Hecke comparison"; "The big ordinary Hecke algebra over `Λ`"), PL.6 ("The subring `P_𝒮` generated by
characteristic polynomials"; "Split deformation ideals and determinant reducibility ideals");
GlobalGaloisDeformations §8.4; LocalGaloisDeformationRings §§2.24, 2.26, 6.10.

### 6.3 The Hecke comparison and a generic prime unramified outside p

With `𝕋_D = 𝕋^{ord}(D)_{𝔪_D}` and `P_D ⊂ R_D` as in §6.2, prove: (Lemma 6.6) if `R_v ≠ R^{St}_v` for
all `v ∈ X` there is a natural surjection `P_D → 𝕋_D` of `Λ_L`-algebras; (Lemma 6.7) there are a
deformation datum `D_1 = (L_1, ∅)` with `𝕋_{D_1} ≠ 0` and a generic prime `𝔭_1 ⊂ R_{D_1}` of
dimension `1` and characteristic `p` with `J_{D_1} ⊂ 𝔭_1` and `r_{𝔭_1}|_{G_{L_1,v_{St}}}` trivial
(nt21 Lemma 6.6, p. 79; Lemma 6.7 and proof, pp. 80–82). The auxiliary field is `L_0 = M_d F` with
`M_d/F⁺` cyclic totally real of odd degree `d > n + n²`, split at `R`, `Y_a` and `S_a` and totally
inert at `S_p`.

*Proof sketch.* Lemma 6.6: the Hecke-valued determinant of the ordinary Hecke algebra
(PotentialAutomorphyInfrastructurePartII PL.2, "The `𝒢_n`-valued Galois representation over the
localized Hecke algebra") satisfies the local conditions of `D`. Lemma 6.7: choose `L_0` so that the
antiunit class-field rank at each `R_i` exceeds `n + n²` (ArithmeticGaloisDuality §R02.3.5, Maire's
bound), then apply the generic-prime theorem (PotentialAutomorphyInfrastructurePartII PL.7,
"Generic primes in large quotients") at `L_0`, and pass to `L_1`, where the types become unramified
(§4.7(4)). The printed proof applies a multiplicity-one argument to the whole set `R_i`; it is
applied to a single place of `R_i`, which bounds `d_{R_i}` by the antiunit rank there, since a union
of places can repeat characters.

**Checks.**

- The chosen prime lies in the characteristic-`p` special fibre by construction; finiteness of the
  Hecke algebra over `Λ` alone would not force an arbitrary prime to have characteristic `p`.
- `d` odd keeps `M_d/F⁺` disjoint from the CM quadratic extension `F/F⁺`, so `L_0` is CM with
  `L_0⁺ = M_d`.
- For `d ≤ n + n²` the reducible locus could have dimension `≥ dim Λ_L − 1`, and no generic prime
  is guaranteed.

*Needs:* §6.2; §6.1; §4.7; PotentialAutomorphyInfrastructurePartII PL.2 ("The `𝒢_n`-valued Galois
representation over the localized Hecke algebra"), PL.6 ("Generic primes of an ordinary
deformation ring"), PL.7 ("Generic primes in large quotients"); ArithmeticGaloisDuality §R02.3.5.

### 6.4 Level raising to Steinberg by Galois deformation theory (Newton–Thorne I Theorem 6.1)

Under the standard assumptions of §4.1, let `n ≥ 3` be odd, `p > 2n`, and `π` RACSDC on `GL_n(𝔸_F)`
with (1) `π` ι-ordinary; (2) `[F(ζ_p) : F] = p − 1`; (3) `r̄_{π,ι} ≅ χ_1 ⊕ ⋯ ⊕ χ_n` with
`χ_i^c = χ_i^∨ ε^{1−n}` and `χ_i/χ_j|_{G_{F(ζ_p)}}` of order `> 2n`; (4) `r̄_{π,ι}|_{G_{F_ṽ}}` trivial
and `[F_ṽ : ℚ_p] > n(n − 1)/2 + 1` for `v ∈ S_p`; (5) `R = R_1 ⊔ R_2 ⊂ S − S_p` with `R_1`, `R_2`
non-empty of odd residue characteristic, `π_ṽ|_{𝔮_ṽ} ⊇ λ̃(ṽ, Θ_ṽ, n)` (`n_1 = 3`, `q_v` of order `3`
modulo `p`, on `R_1`; `n_1 = n − 2`, `q_v` of order `n − 2`, on `R_2`), each `Θ_ṽ` of order `p`, and for
each non-trivial decomposition `r̄_{π,ι} = ρ̄_1 ⊕ ρ̄_2` there is `i ∈ {1, 2}` such that at every
`v ∈ R_i` both `ρ̄_1|_{G_{F_ṽ}}` and `ρ̄_2|_{G_{F_ṽ}}` have a non-trivial unramified subquotient. Let
`v_{St}` be a place above `S − (S_p ∪ R)` with `q_{v_{St}} ≡ 1` modulo `p` and `r̄` trivial there. Prove
that there is a RACSDC ι-ordinary `π′` on `GL_n(𝔸_F)` with `r̄_{π′,ι} ≅ r̄_{π,ι}`,
`HT_τ(r_{π′,ι}) = HT_τ(r_{π,ι})` for all `τ`, and `π′_{v_{St}}` an unramified twist of Steinberg
(nt21 Theorem 6.1, p. 76; proof, p. 82). In the applications `R_1`, `R_2` are the places above `T_1`,
`T_3` of §5.1 after the quadratic base change of §5.4. Primitivity is weak primitivity tested over
`k̄`, with the common splitting field of the Conventions.

*Proof sketch.* §6.3 gives a generic prime `𝔭_1` of `R_{D_1}` containing `J_{D_1}`, trivial at
`v_{St}`. Work in the problem with the unipotent condition at `v_{St}`, to which the weak-primitive
generic `R = T` theorem applies at the prime trivial at `v_{St}`
(PotentialAutomorphyInfrastructurePartII PL.6). The Steinberg quotient meets this prime, and the
local dimension bound of §6.2 gives a component of the expected dimension in that quotient;
finiteness for sums of characters (PL.7) and generic propagation give an automorphic
characteristic-zero point on the Steinberg component. Ordinary `R = T` (PL.3) gives an automorphic
`π″` on that component, Steinberg at `v_{St}`; §6.1 and the prescribed-type lifts of PL.7 descend to
`F`.

**Checks.**

- For `n = 3` the theorem raises the level of a residually reducible RACSDC representation of `GL_3`
  to Steinberg at a place with `q ≡ 1` modulo `p`.
- For `n = 3`: `p > 6`, so `p ≥ 7`, and (4) asks `[F_ṽ : ℚ_p] > 3 · 2/2 + 1 = 4` at every `p`-adic
  place; `n − 2 = 1`, so `q_v ≡ 1` modulo `p` on `R_2`, and `q_v` has order `3` on `R_1`.
- The conclusion fixes `r̄` and the Hodge–Tate weights; it says nothing about the characteristic-zero
  representation at the places of `R`.

*Needs:* §§6.1–6.3; PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble base change and descent
of automorphy"), PL.3 ("The ordinary `R = T` theorem with Taylor's Ihara avoidance"), PL.6
("Weak-primitive generic `R=T` theorem"; "Weak primitivity over a splitting coefficient field"),
PL.7 ("Finiteness of ordinary deformation rings of sums of characters"; "Automorphic lifts of
prescribed type from residual automorphy over a soluble extension").

### 6.5 The reducible locus with Steinberg-type conditions

Under the standing hypotheses of ct17 §5.1, fix a partition `m` with `m_1 > n_1 = dim ρ̄_1` and a
deformation datum `D = (L, {R_v}_{v ∈ R_0} ∪ {R^m_v}_{v ∈ R_1})` with `R_v ∈ {R^1_v, R^{St}_v, R^m_v}`
at every `v ∈ R_0` (`v ∤ l`, `q_v ≡ 1` modulo `l`). Let `Δ` (resp. `Δ′`) be the Galois group of the
maximal abelian `l`-extension of `L` unramified outside `l` (resp. also split at `R̃_1 ∪ R̃_1^c`) and
`d = dim_{ℚ_l} ker(Δ ⊗ ℚ_l → Δ′ ⊗ ℚ_l)^{c=−1}`. Prove: (Lemma 5.3) `dim R_D^{red} ≤ 1 + n[L⁺ : ℚ] − d`
and `R_D^{red}` is finite over `Λ_L`; (Lemma 5.4) for `D` with `R^m_v` at the places above `v_0`
(`m` the Jordan type of `N` in `rec^T(Π_{w_0})`) and `D′` with `R^1_v` there,
`dim R_D/J_{D′}R_D = dim Λ_L` (ct17 Lemma 5.3, p. 40; Lemma 5.4, p. 41). The printed Lemma 5.3 allows
arbitrary local characters at `R_0`; its monodromy argument uses unipotent inertia, so the local
conditions at `R_0` are restricted to the unipotent ones listed (the application has `R_0 = ∅`).

*Proof sketch.* For every distribution of ordinary characters between the two residual blocks the
fixed-determinant ordinary block deformation rings are finite over their weight algebras; let `A` be
their completed tensor product and adjoin universal determinant-twist characters `Ψ_1`, `Ψ_2` to
parametrise reducible deformations. Modulo the maximal ideal of `A` the blocks are `r̄_1 ⊗ Ψ_1` and
`r̄_2 ⊗ Ψ_2`; the partition condition with `m_1 > n_1` forces a common eigenvalue of the two blocks,
so `Ψ_1(Frob_ṽ) − Ψ_2(Frob_ṽ)` is nilpotent at `v ∈ R_1`, and the antiunit rank `d` gives the
dimension loss and finiteness (ArithmeticGaloisDuality §R02.3.5). Lemma 5.4: the pure automorphic
point furnished by `Π` lies on a unique component retained by the partition quotient; with the
`Λ`-finite ordinary Hecke algebra and the lower bound on component dimensions this gives the
equality (finiteness alone gives only an upper bound).

**Checks.**

- If `m = (1, …, 1)` the shared-eigenvalue argument gives nothing and the bound is not claimed.
- With `n_1 = 2`, `n_2 = 1` and `m = (3)`, a Frobenius polynomial that is a single `q`-string of
  length `3` cannot split as a `2`-block times a `1`-block without a common eigenvalue up to `q`.
- `d = 0` gives the trivial bound `dim R_D^{red} ≤ dim Λ_L`.

*Needs:* §6.2; PotentialAutomorphyInfrastructurePartII PL.6 ("The reducible locus is small in the
presence of Steinberg places"), PL.7 ("The reducible locus is small"); ArithmeticGaloisDuality
§R02.3.5.

### 6.6 Changing characters, and a characteristic-l prime giving a Steinberg lift

Prove: (Lemma 5.5) for `D_0^χ = (L_0, {R^{χ_v}_v}_{v ∈ R})` with pairwise distinct
`χ_{v,1}, …, χ_{v,n}` at each `v ∈ R`, and a good `L ⊃ L_0` over which every `χ_{v,i}` is unramified
above `R`, the datum `D = (L, ∅)` has `R_D ← P_D → 𝕋_D` compatible with
`R^{nil}_{D_0^χ} ← P^{nil}_{D_0^χ} → 𝕋_{D_0^χ}`; (Lemma 5.6) if `D = (L, ∅)` and a dimension-one
prime `𝔭 ⊂ R_D` of characteristic `l` satisfy (1) `r_𝔭 : G_L → GL_n(Frac A)` absolutely irreducible
(`A` the normalisation of `R_D/𝔭`), (2) the characters `ψ_1^v, …, ψ_n^v` of `I_{L_ṽ}`
(`v ∈ S_{l,L}`) pairwise distinct, (3) for some `v ∈ S_{l,L}` some `σ ∈ I_{L_ṽ}` with `r_𝔭(σ)` having
eigenvalues `λ_1, …, λ_n` satisfying `∏ λ_i^{a_i} = 1` only when every `a_i = 0`, (4) `J_D ⊂ 𝔭`,
(5) `r_𝔭|_{G_{L_ũ}}` trivial for some `u ∈ T_L − (S_{l,L} ∪ S_{a,L})`, then there is an ι-ordinary
RACSDC `Π_1` of `GL_n(𝔸_L)` with `r̄_ι(Π_1) ≅ r̄_ι(Π)|_{G_L}` and `Π_{1,ũ}` an unramified twist of
Steinberg (ct17 Lemma 5.5, pp. 41–42; Lemma 5.6, p. 42). Here `n_1 ≠ n_2` and `n_1 n_2` is even (for
soluble base change and descent on the definite group), and primitivity is weak primitivity over
`k̄` with the common splitting field.

*Proof sketch.* Lemma 5.5: soluble base change and descent for the definite group and for residually
reducible rings (PotentialAutomorphyInfrastructurePartII PL.2, PL.6 "Twisting and soluble base
change for residually reducible rings and Hecke algebras"). Lemma 5.6: the independent inertial
eigenvalues make `𝔭` generic; add a Steinberg condition at `u` and compare with the unipotent
problem; the weak-primitive generic `R = T` theorem and the local dimension bound give an automorphic
characteristic-zero point on a Steinberg component (independence does not assert uniqueness of
that local component).

**Checks.**

- Without (5) the lift need not be Steinberg anywhere; (5) places the Steinberg condition at `u`.
- Condition (3) fails when `r_𝔭(σ)` has two equal eigenvalues (`a = (1, −1, 0, …)` gives a
  relation), and then `𝔭` need not be generic.
- For `n = 2`, `n_1 = n_2 = 1` violates `n_1 ≠ n_2`, so the lemma does not apply to residually
  reducible `GL_2` with two characters.

*Needs:* §6.2; PotentialAutomorphyInfrastructurePartII PL.2, PL.6 ("Twisting and soluble base change
for residually reducible rings and Hecke algebras"; "Weak-primitive generic `R=T` theorem";
"Weak-primitive generic restriction"; "Weak primitivity over a splitting coefficient field").

### 6.7 Level raising to Steinberg for residually reducible representations (Clozel–Thorne III Theorem 5.1)

Let `E` be imaginary CM, `n ≥ 2`, and `Π` RACSDC on `GL_n(𝔸_E)` with `r̄_ι(Π) = ρ̄_1 ⊕ ρ̄_2`, the `ρ̄_i`
absolutely irreducible, non-isomorphic, with `ρ̄_i^c ≅ ρ̄_i^∨ ε^{1−n}`, `n_1 > n_2`, `r̄_ι(Π)`
primitive, and a place `w_0` where `Π_{w_0}` is Iwahori-spherical and the monodromy `N` of
`rec^T(Π_{w_0})` has a Jordan block of length `> n_1`. Assume (1) `Π` ι-ordinary; (2) `l > 3`,
`l ∤ n_1 n_2 n`, `n_1 n_2` even; (3) each `ρ̄_i|_{G_{E(ζ_l)}}` adequate and `E(ζ_l)` not contained in
the fixed field of `ad r̄_ι(Π)`; (4) a CM extension `E_0/E`, linearly disjoint from the extension of
`E(ζ_l)` cut out by `r̄_ι(Π)`, and ι-ordinary RAECSDC `(π_i, χ_i)` of `GL_{n_i}(𝔸_{E_0})` with
`r̄_ι(π_i) ≅ ρ̄_i|_{G_{E_0}}`. Prove that there are a soluble CM `E_1/E` linearly disjoint from that
extension and an ι-ordinary RACSDC `Π_1` on `GL_n(𝔸_{E_1})` with `r̄_ι(Π_1) ≅ r̄_ι(Π)|_{G_{E_1}}` and
`Π_{1,w_1}` an unramified twist of Steinberg at a place `w_1 | w_0` (ct17 Theorem 5.1, pp. 37–38;
proof, pp. 38–43). The printed proof uses primitivity of a generic lift without deriving it; the
argument here derives absolute irreducibility of its restriction from `n_1 ≠ n_2`.

*Proof sketch.* Reduce by soluble base change (§6.2). The reducible-locus bound (§6.5) gives an
absolutely irreducible generic representation `r_{𝔭_0}`. Over a good Galois extension the two
residual blocks remain absolutely irreducible; if `r_{𝔭_0}` became reducible after restriction,
Clifford theory would give a transitive set of conjugate constituents of equal dimension whose
residual semisimplifications distribute the two residual blocks, forcing `n_1 = n_2`, a
contradiction. §6.6 then gives the Steinberg lift.

**Checks.**

- `n_1 > n_2` together with a Jordan block longer than `n_1` excludes `Π_{w_0}` unramified.
- For `n = 7`, `(n_1, n_2) = (4, 3)` has `n_1 n_2 = 12` even, and a block of length `≥ 5` is needed
  at `w_0`; the Clozel–Thorne application has blocks `5 + 1 + 1` or `7`.
- `(n_1, n_2) = (3, 3)` is excluded, and then the Clifford argument would indeed allow a reducible
  restriction with two conjugate `3`-dimensional constituents.

*Needs:* §6.5; §6.6; §6.2; PotentialAutomorphyInfrastructurePartII PL.6 ("Weak primitivity over a
splitting coefficient field"), PL.7 ("Two adequate constituents with source primitivity"; "The ANT
finiteness theorem with source primitivity").

### 6.8 Automorphy lifting from a lift with a long Jordan block (Clozel–Thorne III Theorem 5.7)

Let `E` be CM and `ρ : G_E → GL_n(ℚ̄_l)` continuous with (1) `ρ^c ≅ ρ^∨ ε^{1−n}`; (2) finitely many
ramified places; (3) `ρ` ordinary of weight `λ`; (4) `l > 3` and `E(ζ_l)` not contained in the field
cut out by `ad ρ̄`; (5) `ρ̄ ≅ ρ̄_1 ⊕ ρ̄_2` with `ρ̄_i|_{G_{E(ζ_l)}}` adequate, `n_1 ≠ n_2`, `n_1 n_2`
even, `l ∤ n_1 n_2 (n_1 + n_2)`, `ρ̄` primitive; (6) a place `w_0 ∤ l` with
`ρ|^{ss}_{G_{E_{w_0}}} ≅ ⊕_{i=1}^n ψ ε^{n−i}`, `ψ` unramified; (7) an ι-ordinary RACSDC `Π` with
`r̄_ι(Π) ≅ ρ̄` whose monodromy at `w_0` has a Jordan block of length `> max(n_1, n_2)`; (8) hypothesis
(4) of §6.7. Prove that `ρ ≅ r_ι(π)` for a RACSDC `π` on `GL_n(𝔸_E)` (ct17 Theorem 5.7, p. 44).

*Proof sketch.* §6.7 gives `Π_1` Steinberg at `w_1 | w_0` over a soluble `E_1`. Residually reducible
automorphy lifting with a Steinberg place (PotentialAutomorphyInfrastructurePartII PL.7, "Two
adequate constituents with source primitivity") shows `ρ|_{G_{E_1}}` automorphic; soluble descent
(PL.0) returns to `E`.

**Checks.**

- The unramified sum `⊕ ψ ε^{n−i}` satisfies (6) with `N = 0`; so (6) does not force Steinberg
  monodromy, and the automorphic long-block witness (7) is essential.
- With `n_1 = n_2` hypothesis (5) fails; this is the case excluded in §6.7.
- `l = 3` is excluded by (4), where adequacy can fail for small images.

*Needs:* §6.7; PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble base change and descent of
automorphy"), PL.6 ("Weak primitivity over a splitting coefficient field"), PL.7 ("Two adequate
constituents with source primitivity").

### 6.9 Level raising to an ordinary Steinberg lift by p-adic methods (Thorne 2024 Theorem 6.11)

Let `F = F⁺F_0` be CM with `F_0` imaginary quadratic and `F/F⁺` everywhere unramified, `p` and `q`
primes split in `F_0`, `v_0` a `q`-adic place of `F⁺`, `ṽ_0` the place of `F` above `v_0` lying above a
fixed `q`-adic place `u_0` of `F_0`, and `ι : ℚ̄_p ≅ ℂ`. Let `n = n_1 + n_2` and `π_1`, `π_2` cuspidal
conjugate self-dual on `GL_{n_1}(𝔸_F)`, `GL_{n_2}(𝔸_F)` with `π = π_1 ⊞ π_2` regular algebraic and
ι-ordinary, and `S` a finite set of places of `F⁺` containing `S_p`, `v_0` and the places below the
ramification of `π`, with no other `q`-adic places, such that (1) `π` is ramified only at places split
over `F⁺`; (2) writing `λ_{i,τ}` for the dominant weight of `π_i|·|^{(n_i−n)/2}`, for each embedding
`τ_0 : F_0 → ℂ` and each pair of dominant weights `(μ_1, μ_2)` the number of `τ : F → ℂ` restricting
to `τ_0` with `(λ_{1,τ}, λ_{2,τ}) = (μ_1, μ_2)` is even; (3) at some finite place `w ∉ S` split over
`F⁺`, `r̄_ι(π)|^{ss}_{G_{F_w}} ≅ ⊕ χ̄_i` with unramified `χ̄_i` and `χ̄_i/χ̄_j ≠ ε̄` for `i ≠ j`; (4)
`π_{1,ṽ_0} ≅ St_{n_1}(ψ_1)`, `π_{2,ṽ_0} ≅ St_{n_2}(ψ_2)` with `ψ_1`, `ψ_2` unramified and
`ι^{−1}(ψ_1 ψ_2^{−1} |·|^{−n/2})` valued in `1 + 𝔪_{ℤ̄_p}`; (5) `π` is unramified at the `q`-adic places
not above `v_0`. Prove that there is an ι-ordinary RACSDC `Π` on `GL_n(𝔸_F)` with
`r̄_ι(Π) ≅ r̄_ι(π)`, `Π_{ṽ_0}` an unramified twist of `St_n`, unramified at the other `q`-adic places
and ramified only at places split over `F⁺` (th24 Theorem 6.11 and its assumptions, pp. 39–40;
proof, pp. 40–41; Lemma 6.10, p. 39).

*Proof sketch.* Suppose not; th24 Proposition 6.5 gives a maximal ideal `𝔪` in the support of the
`p`-adic forms `S(K^p, k)` with the residual eigensystem of `π` (PotentialAutomorphyInfrastructurePartII
PL.2; CompletedCohomologyAndLocalGlobalCompatibility §0.7). The concentration of the Hecke-localized
derived tensor product of Drinfeld-space cohomology with the automorphic module (th24 Theorem 5.2,
using the genericity place `w`) and Steinberg detection (Theorem 3.4) show that a non-zero
middle-degree part would detect a Steinberg constituent, contrary to assumption; hence the tensor
vanishes, and Corollary 6.3 gives the vanishing of twisted `Hom`-spaces at every weight. Choose an
anticyclotomic `ψ ≡ 1` with the Frobenius value of Lemma 6.10 and twist the first block only:
`(r_{π_1|·|^{(n_1−n)/2}} ⊗ ψ) ⊕ r_{π_2|·|^{(n_2−n)/2}}`; Propositions 6.7 and 6.9 reduce its local
constituents at `ṽ_0` to Steinberg or the specified two-block constituent, either of which gives
non-zero derived `Hom` in a degree forbidden by that vanishing. The inputs from th24 §§3–6 are
supplied by CompletedCohomologyAndLocalGlobalCompatibility (supplier contracts).

**Checks.**

- For `n_1 = n_2 = 1`, (4) says `ψ_1 ψ_2^{−1} |·|^{−1} ≡ 1` modulo `𝔪` at `ṽ_0`: the classical
  level-raising congruence for `GL_2` in conjugate self-dual form.
- If `ψ_1 ψ_2^{−1}|·|^{−n/2}` were not congruent to `1`, the residual representation at `ṽ_0` would
  not be a single `q`-string and no Steinberg lift could exist.
- The conclusion is residual: `Π` is cuspidal while `π` is an isobaric sum.

*Needs:* §6.2; PotentialAutomorphyInfrastructurePartII PL.0 ("Algebraic characters with prescribed
conjugate-norm and local behaviour"), PL.2 ("Algebraic modular forms on a definite unitary group";
"The big ordinary Hecke algebra over `Λ`"); SmoothRepresentationsOfLocalGroups SR.3;
CompletedCohomologyAndLocalGlobalCompatibility §0.7 (gap:drinfeld-steinberg-detection).

### Examples

- `n = 3`, `p = 7`: a RACSDC representation of `GL_3` with `r̄ = χ_1 ⊕ χ_2 ⊕ χ_3` and ratios of order
  `> 6` is raised to Steinberg at a place with `q ≡ 1` modulo `7` (§6.4).
- `n_1 = 4`, `n_2 = 3`, `l = 5`: Clozel–Thorne's application at `v_0` (§6.7) with Jordan type
  `5 + 1 + 1` or `7`.

### Dependencies

Layers 4–5; PotentialAutomorphyInfrastructurePartII PL.0, PL.2, PL.3, PL.6, PL.7; GlobalGaloisDeformations
§8.4; LocalGaloisDeformationRings §§2.24, 2.26, 6.10; ArithmeticGaloisDuality §R02.3.5;
EndoscopicTransferAndUnitaryTraceComparison §6.24; SmoothRepresentationsOfLocalGroups SR.3;
CompletedCohomologyAndLocalGlobalCompatibility §0.7; Chebotarev Layer 10.

## Layer 7: seeds — residually CM symmetric powers and one level-one form

Newton–Thorne I §7 (nt21 pp. 82–91) produces a level-one form with automorphic `Sym^{n−1}` from the
CM form `σ_0` of weight `5`: level raising for `GL_2` at a prime `q ≡ 3 mod 4`, a residually CM
ordinary representation of `GL_n` with a Steinberg place (Theorem 7.1), residually reducible
automorphy lifting, and two applications of §2.4. Theorem 7.1 is proved here in every rank of the
form `2^r m` from rank `m` (§7.5), hence unconditionally in rank `2^r`; the odd inductive step of
the source needs a conjugate self-dual rank-two block that its construction does not provide, and
is recorded with that block as a hypothesis (§7.4). Theorem 7.1 and Theorem E in every rank are
obtained in Layer 14 from Layer 13. Clozel–Thorne III §6 (ct17 pp. 44–46) proves automorphy of
`Sym^{l+1}` for `l ∈ {5, 7}` (§7.7), the input of ModularityAndLanglandsExtensions §4.31.

### 7.1 The CM newform σ₀ of weight 5 and level Γ₁(4)

Let `K = ℚ(i)`. Define `σ_0` as the cuspidal automorphic representation of `GL_2(𝔸_ℚ)` attached to
the normalised newform `f_0 = q − 4q² + 16q⁴ − 14q⁵ − 64q⁸ + ⋯` of level `Γ_1(4)` and weight `5`,
the automorphic induction from `K` of the unramified Hecke character of infinity type `(4, 0)`
given on ideals by `(α) ↦ α⁴` for `α ∈ ℤ[i]` (Mathlib `GaussianInt`; independent of the generator
because units have fourth power `1`). Prove that for `p ≡ 1 mod 4`, `σ_0` is ι-ordinary,
`r_{σ_0,ι} ≅ Ind_{G_K}^{G_ℚ} ψ` for the `p`-adic avatar `ψ`, and `det r_{σ_0,ι} = δ_{K/ℚ} ε^{−4}`
(nt21 §7, definition of `σ_0`, pp. 82–83).

*Proof sketch.* `a_ℓ(f_0) = α⁴ + ᾱ⁴` for a prime `ℓ = αᾱ ≡ 1 mod 4`, `a_ℓ = 0` for `ℓ ≡ 3 mod 4`,
`a_2 = (1 + i)⁴ = −4`. Automorphic induction of a Hecke character of an imaginary quadratic field
(EndoscopicTransferAndUnitaryTraceComparison §13.3; ModularityAndLanglandsExtensions, convention
"Automorphic induction and its cuspidality criterion") and the newform realisation
(AutomorphicGaloisRepresentations §1.5); ordinarity at split `p` because the infinity type is
`(4, 0)`.

**API.**

- The Hecke character of `ℚ(i)` of infinity type `(4, 0)`, `(α) ↦ α⁴`.
- The coefficients: `a_ℓ(f_0) = α⁴ + ᾱ⁴` for `ℓ = αᾱ ≡ 1 mod 4`, `a_ℓ = 0` for `ℓ ≡ 3 mod 4`,
  `a_2 = −4`.
- `r_{σ_0,ι} ≅ Ind_{G_K}^{G_ℚ} ψ` with determinant `δ_{K/ℚ} ε^{−4}`.
- `σ_0` is ι-ordinary for `p ≡ 1 mod 4`.

**Checks.**

- `a_5 = (2 + i)⁴ + (2 − i)⁴ = (−7 + 24i) + (−7 − 24i) = −14`, matching the `q`-expansion.
- `a_3 = 0` since `3` is inert in `ℚ(i)`; `a_4 = a_2² = 16` since `2` divides the level.
- `f_0` is not of level one: its level is `4` and its nebentypus is the character of `ℚ(i)/ℚ`, of
  value `δ_{K/ℚ}(−1) = −1 = (−1)^5`, as weight `5` requires.

*Needs:* EndoscopicTransferAndUnitaryTraceComparison §13.3; ModularityAndLanglandsExtensions
(automorphic induction convention); AutomorphicGaloisRepresentations §1.5; Mathlib `GaussianInt`.

### 7.2 Properties of the residual symmetric powers of σ₀

Let `n ≥ 3`, `p ≡ 1 mod 48 n!`, `ω : G_K → ℚ̄_p^×` de Rham with `ω ω^c = ε³`, `F/K` a finite CM
extension linearly disjoint from the extension of `K(ζ_p)` cut out by `r̄_{σ_0,ι}|_{G_{K(ζ_p)}}`, and
`χ_i = ω̄^{n−1} ψ̄^{n−i} (ψ̄^c)^{i−1}`, so that `ρ̄ = ⊕ χ_i ≅ ω̄^{n−1} ⊗ Sym^{n−1} r̄_{σ_0,ι}|_{G_K}`.
Prove (1) `[F(ζ_p) : F] = p − 1`; (2) `ψ̄/ψ̄^c|_{G_{F(ζ_p)}}` has order `> 2n(n − 1)` and each
`χ_i/χ_j|_{G_{F(ζ_p)}}` order `> 2n`; (3) `χ_i χ_i^c = ε^{1−n}`; (4) `ζ_p ∉ F^{ker ad ρ̄}` and
`F ⊄ F⁺(ζ_p)`; (5) `ρ̄|_{G_F}` is primitive (nt21 Lemma 7.2, pp. 83–84).

*Proof sketch.* The extension cut out by `ψ̄/ψ̄^c` keeps degree at least `(p − 1)/8` after adjoining
`ζ_p` (the image of `r̄_{σ_0,ι} ⊕ ε̄` contains `{(diag(a⁴, (c/a)⁴), c^{−1})}`, nt21 p. 86), and the
disjointness hypothesis preserves this over `F`; since `p ≡ 1 mod 48 n!` this exceeds `2n(n − 1)`,
and `χ_i/χ_j = (ψ̄/ψ̄^c)^{j−i}` with `|j − i| ≤ n − 1` has order `> 2n`. On `G_K`, `ψψ^c = ε^{−4}`, so
`χ_i χ_i^c = (ωω^c)^{n−1}(ψψ^c)^{n−1} = ε^{3(n−1)−4(n−1)} = ε^{1−n}`. The avoidance statements follow
from disjointness, and primitivity from the criterion for sums of characters with large ratios
(PotentialAutomorphyInfrastructurePartII PL.6), valid over every residue field extension.

**Checks.**

- For `n = 3` the congruence asks `p ≡ 1 mod 288`; `p = 577 = 2 · 288 + 1` is the smallest such
  prime (`289 = 17²` is not prime).
- (3) at `n = 1`: `χ_1 = 1`, `χ_1 χ_1^c = 1 = ε^0`.
- Without the disjointness of `F`, `F` could contain the fixed field of `ψ̄/ψ̄^c` and two `χ_i` would
  coincide on `G_F`.

*Needs:* §7.1; PotentialAutomorphyInfrastructurePartII PL.6 ("Sums of characters with large ratios
are primitive"; "Primitive representations").

### 7.3 A weight-5 form with automorphic symmetric powers (Newton–Thorne I Corollary 7.3)

Let `n ≥ 3` and suppose the statement of §7.5 (Theorem 7.1) holds in rank `n`. Prove that there is a
cuspidal automorphic representation `σ` of `GL_2(𝔸_ℚ)` of weight `5`, unramified away from `2` and a
prime `q ≡ 3 mod 4`, with `σ_2 ≅ i_{B_2}^{GL_2} χ_1 ⊗ χ_2` (`χ_1` unramified, `χ_2` of conductor `4`),
`σ_q` an unramified twist of Steinberg, and `Sym^{n−1} r_{σ,ι}` automorphic for every `p` and `ι`
(nt21 Corollary 7.3 and proof, p. 84). Primitivity is weak primitivity over `k̄` with the common
splitting field.

*Proof sketch.* Choose `q ≡ 3 mod 4` with `q ≡ −1 mod p`; Diamond's level raising
(SerreWeightAndLevelOptimisation §2.4) gives `σ ≡ σ_0` modulo `p`, Steinberg at `q`. Theorem 7.1 in
rank `n` gives `Π` over a soluble CM `F`, residually `ω̄^{n−1} ⊗ Sym^{n−1} r̄_{σ_0}`, Steinberg above
`q`. Residually reducible lifting (ModularityAndLanglandsExtensions §4.2;
PotentialAutomorphyInfrastructurePartII PL.7, "The ANT lifting theorem with source primitivity")
with §7.2 shows `ω^{n−1} ⊗ Sym^{n−1} r_{σ,ι}|_{G_F}` automorphic; soluble descent and descent from
`K` (PL.0) return to `ℚ`, and the one-prime criterion (ModularityAndLanglandsExtensions §4.15) gives
every `p` and `ι`.

**Checks.**

- `σ` is ι-ordinary at `p ≡ 1 mod 4`, being congruent to the ordinary `σ_0` in the same weight.
- Diamond's criterion at `q` asks `a_q(σ_0)² ≡ δ_{K/ℚ}(q) q³ (q + 1)²` modulo `p` (weight `5`,
  nebentypus `δ_{K/ℚ}`); `a_q(σ_0) = 0` for `q ≡ 3 mod 4`, so it holds exactly when `q ≡ −1` modulo
  `p`, whatever the sign `δ_{K/ℚ}(q) = −1`.
- `σ_2` is ramified (conductor of `χ_2` is `4`), so `σ` is not of level one; §7.6 removes the
  ramification.

*Needs:* §7.2; §7.5; SerreWeightAndLevelOptimisation §2.4; ModularityAndLanglandsExtensions §§4.2,
4.15; PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble base change and descent of
automorphy"; "Automorphy of an induced representation descends"), PL.6 ("Weak primitivity over a
splitting coefficient field"), PL.7 ("The ANT lifting theorem with source primitivity").

### 7.4 The odd inductive step of Theorem 7.1, with the rank-two block as a hypothesis

Let `n = 2k + 1 ≥ 3`, let `p`, `q`, `X_0`, `ω` be as in §7.5, and assume the statement of §7.5 in rank
`n − 2`. Let `q_1`, `q_2`, `q_3`, `M_1`, `M_2`, `M_3`, `F_0`, `ω_0` and the RACSDC `π_0` of
`GL_{n−2}(𝔸_{F_0})` be constructed as in nt21, proof of Proposition 7.4, pp. 85–88 (Chebotarev primes
split in `K` with `q_1 > n` of order `6`, `q_2 ≡ −1` and `q_3` of order `n − 2` modulo `p` with
prescribed Frobenius ratios; real quadratic `M_i`; a soluble CM `F_0` with prescribed local behaviour
and a crystalline `ω_0` with `ω_0 ω_0^c = ε³ δ_{K/ℚ}|_{G_{F_0}}`; `π_0` from the induction hypothesis
and prescribed-type lifts). Suppose in addition that there is a cuspidal conjugate self-dual `π_2` of
`GL_2(𝔸_{F_0})` with `π_2 ⊞ π_{n−2}` regular algebraic (`π_{n−2}` the twist of `π_0` by a power of `|·|` and `ιω_0²` fixed on nt21 p. 88) and ι-ordinary, whose residual
representation and local components at the places above `q_1`, `q_2`, `q_3` are those that the
printed proof assigns to `τ_0 ⊗ |·|^{(n−2)/2} ιω_1 ω_0^{n−1}` (residually
`ω̄_0^{n−1} ω̄_1 ⊗ Ind_{G_K}^{G_ℚ} ψ̄^{2k}`, an unramified Steinberg twist above `q_1`, and the
`λ̃`-type and `ω(ṽ) ∘ det` conditions of §5.1 above `q_2`, `q_3`). Prove that the statement of §7.5
holds in rank `n` (nt21 Proposition 7.4 and proof, pp. 85–89). The printed proof takes
`π_2 = τ_0 ⊗ |·|^{(n−2)/2} ιω_1 ω_0^{n−1}` with `τ_0` the base change of a form `τ` with
`det r_{τ,ι} = ε^{−8k} δ_{K/ℚ}`; since `n − 1` is even and `ω_0 ω_0^c = ε³δ_{K/ℚ}`, this block differs
from its required polarized dual by the non-trivial character `δ_{K/ℚ}|_{G_{F_0}}`, so Theorem 4.1
(§5.4) does not apply to it, in rank three as well.

*Proof sketch.* With `π_2` as hypothesised, `π_2 ⊞ π_{n−2}` is a
level-raising datum (§5.1) with `T_1`, `T_2`, `T_3` the places above `q_1`, `q_2`, `q_3`; §5.4 raises
the level to a cuspidal RACSDC representation with the types, and §6.4 to Steinberg above `q`;
descend as in nt21 pp. 88–89. The weight of the output is that of the input, as §5.4 records.

**Checks.**

- The defect, computed: put `r = r_τ|_{G_{F_0}} ⊗ ω_1 ω_0^{n−1}` (`ω_1` quadratic). Since
  `r_τ^c ≅ r_τ ≅ r_τ^∨ ⊗ det r_τ`, `det r_τ = ε^{−8k}δ_{K/ℚ}`, `ω_0^c = ε³δ_{K/ℚ}ω_0^{−1}` and
  `n − 1 = 2k`, one gets `r^c ≅ r^∨ ⊗ ε^{−2k} δ_{K/ℚ}`; after the cyclotomic twist corresponding to
  `|·|^{(n−2)/2}` this is `ε^{−1} δ_{K/ℚ}` against the `ε^{−1}` that conjugate self-duality of a
  rank-two block requires, and `δ_{K/ℚ}|_{G_{F_0}} ≠ 1` because `F_0` is linearly disjoint from `K`.
- For `n = 3` the rank-one constituent `π_0` is a character and its order-`p` local character at `q_3`
  exists (`q_3 ≡ 1` modulo `p`); the rank-two block still has the defect, so the hypothesis on `π_2`
  is not automatic in rank three.
- The hypothesis concerns a `GL_2`-form only; it does not contain the rank-`n` conclusion.

*Needs:* §5.4; §6.4; §7.2; SerreWeightAndLevelOptimisation §2.4 (gap:level-raising-prescribed-components);
PotentialAutomorphyInfrastructurePartII PL.7 ("Automorphic lifts of prescribed type from residual
automorphy over a soluble extension"); Chebotarev Layer 10.

### 7.5 Residually CM symmetric powers with a Steinberg place (Newton–Thorne I Theorem 7.1)

For `n ≥ 1`, `p ≡ 1 mod 48 n!`, `ι : ℚ̄_p ≅ ℂ`, a prime `q ≠ p`, a finite set `X_0` of places of
`K = ℚ(i)` prime to `2pq` and `ω : G_K → ℚ̄_p^×` de Rham with `ω ω^c = ε³`, unramified at `X_0`, write
`TS_n(p, q, X_0, ω)` for the assertion: there are an `X_0`-split soluble CM extension `F/K` and a
RACSDC ι-ordinary `Π` on `GL_n(𝔸_F)` with (a) `r̄_{Π,ι} ≅ ω̄^{n−1}|_{G_F} ⊗ Sym^{n−1} r̄_{σ_0,ι}|_{G_F}`;
(b) `HT_τ(r_{Π,ι}) = HT_τ(ω^{n−1}|_{G_F} ⊗ Sym^{n−1} r_{σ_0,ι}|_{G_F})` for all `τ`; (c) `Π_v` an
unramified twist of Steinberg at some `v | q`. Prove that if `TS_m` holds for all such data, then
`TS_{2^r m}` holds for all such data and every `r ≥ 0`; in particular `TS_{2^r}` holds for every
`r ≥ 0` (nt21 Theorem 7.1, p. 83; proof, p. 89; Remark 7.5, p. 90; at20 Theorem 5.1, p. 19). With
Layer 13 this gives `TS_n` for every `n ≥ 3` (§14.1), which is the statement of
ModularityAndLanglandsExtensions §4.8.

*Proof sketch.* Induction on `r`. For the step from `n` to `2n`, write
`ω̄^{2n−1} ⊗ Sym^{2n−1} r̄_{σ_0}` as the sum of two blocks of `n` characters, each realised (after
twisting `ω` and a soluble base change) by `TS_n`, giving `π_0 = π_1 ⊞ π_2` with Steinberg components
above `q` and the level-raising congruence there; Anastassiades–Thorne's level raising for `GL_{2n}`
of unitary type (ModularityAndLanglandsExtensions §4.4) gives a cuspidal RACSDC representation of
`GL_{2n}` with the same residual representation, Steinberg above `q`, ordinary when the input is.
`TS_1` holds with `Π = ω^0 = 1` over `F = K`, an unramified character being a Steinberg twist in rank
one.

**Checks.**

- `n = 4`: two steps from `n = 1`, using no odd case.
- `n = 6 = 2 · 3` needs `TS_3`, which is not supplied by this target; it comes from §7.4 under its
  hypothesis, or from §14.1.
- The residual identity (a) for `n = 2`: `ω̄ ⊗ r̄_{σ_0}|_{G_K} = ω̄ψ̄ ⊕ ω̄ψ̄^c`, the sum of the two
  characters `χ_1`, `χ_2` of §7.2.

*Needs:* §7.2; §7.4 (for odd `m > 1`); ModularityAndLanglandsExtensions §4.4;
PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble base change and descent of automorphy").

### 7.6 Theorem E in the ranks supplied by the seed

Let `n ≥ 3` and suppose `TS_n` (§7.5). Prove that there is a cuspidal, everywhere unramified
automorphic representation `π` of `GL_2(𝔸_ℚ)` of weight `k ≥ 2` such that `Sym^{n−1} r_{π,ι}` is
automorphic for every `ι` (nt21 Theorem 7.6 and proof, pp. 90–91; Introduction, Theorem E, p. 4). In
particular this holds for `n = 2^r`, `r ≥ 2`. Theorem E for every `n ≥ 3`, the statement of
ModularityAndLanglandsExtensions §4.9, is §14.1.

*Proof sketch.* Start from `σ` of §7.3: Steinberg at `q ≡ 3 mod 4` and of conductor `4` at `2`. On the
`q`-adic eigencurve of tame level `4` the Steinberg local representation at `q` is irreducible
because `σ` has weight `5`, so §3.5 gives Zariski closure containing `SL_2`; move to a point `σ′`
unramified at `q` of weight `k ≡ 3 mod 4` by the non-critical case of §2.4. At `2` there are no
ordinary cuspidal points of tame level one; if the two slopes of `σ′` coincided their common value
`(k − 1)/2` would be odd, which the absence of newforms of level `4` and odd slope (§3.1) excludes.
Unequal slopes give `n`-regularity, §3.5 gives large local image, and §2.4 at `2` reaches an
everywhere unramified point.

**Checks.**

- `n = 3, 4, 5`: `Δ` works, since `Sym²`, `Sym³`, `Sym⁴` of every non-CM form are automorphic
  (ModularityAndLanglandsExtensions §1.15), independently of this route.
- For `k ≡ 3 mod 4` the value `(k − 1)/2` is odd, which is what the level-`4` odd-slope exclusion
  needs.
- `n = 8` is covered by this target (`TS_8` from `TS_1` in three steps).

*Needs:* §7.3; §7.5; §2.4; §3.1; §3.5; ModularityAndLanglandsExtensions §1.15.

### 7.7 Automorphy of `Sym^{l+1}` for l ∈ {5, 7} (Clozel–Thorne III Theorem 6.2)

Let `l ∈ {5, 7}`, `F` totally real, `ι : ℚ̄_l ≅ ℂ`, and `(π, χ)` RAESDC on `GL_2(𝔸_F)` with (1) `π`
ι-ordinary of weight zero; (2) `ρ̄ = r̄_ι(π)` irreducible with image containing a conjugate of
`SL_2(𝔽_{l^a})` for some `a > 1`, and `(φρ̄ ⊗ ρ̄)|_{G_{F(ζ_l)}}` and `Sym^{l−3}ρ̄|_{G_{F(ζ_l)}}` adequate;
(3) a place `u_0 ∤ 2` with `π_{u_0}` an unramified twist of Steinberg, `q_{u_0}` a primitive root
modulo `l` and `ρ̄` ramified at `u_0`. Prove that `Sym^{l+1} ρ` is automorphic (ct17 Theorem 6.2,
p. 45; proof, pp. 45–46). Hypothesis (3) gives `u_0 ∤ l` and `[F(ζ_l) : F] = l − 1`, so the
cyclotomic avoidance needed in §6.8 holds. In the printed proof the compositum named `E_2` is totally
real while it is used as a CM field; the field is `E_2 = F_2 E_1 = F_2 E`, with places above `u_0`.

*Proof sketch.* `(Sym^{l+1} ρ̄)^{ss} ≅ (φρ̄ ⊗ ρ̄) ⊕ χ̄² Sym^{l−3} ρ̄` (ArithmeticGaloisRepresentations
§7.8, with `r = 2`). Pass to the CM field `E_2`; build `π′_2` from Hida theory on the definite `U_2`
(PotentialAutomorphyInfrastructurePartII PL.2, which contains Clozel–Thorne II Proposition 3.10) with
base change, Steinberg above `u_0`, and an isobaric `Π_1 ⊞ Π_2` of type `(4, l − 2)` with the local
components of §5.7. §5.10 gives a cuspidal congruent `Σ` with a long Jordan block; §6.8 shows
`Sym^{l+1} ρ|_{G_{E_2}}` automorphic; soluble descent.

**Checks.**

- For `l = 5` the conclusion is automorphy of `Sym^6`, and for `l = 7` of `Sym^8`, the inputs of
  ModularityAndLanglandsExtensions §4.31.
- Ranks: `l + 2 = 4 + (l − 2)`, `7 = 4 + 3` and `9 = 4 + 5`, matching `dim(φρ̄ ⊗ ρ̄) = 4` and
  `dim Sym^{l−3} ρ̄ = l − 2`.
- `a = 1` is excluded: with image only `SL_2(𝔽_l)`, `φρ̄ ⊗ ρ̄ ≅ ρ̄ ⊗ ρ̄` is reducible and the two blocks
  are not distinct absolutely irreducible constituents.

*Needs:* §5.10; §6.8; ArithmeticGaloisRepresentations §§7.8, 7.9; PotentialAutomorphyInfrastructurePartII
PL.0 ("Soluble base change and descent of automorphy"), PL.2 ("Hida classicality and independence of
the characters χ_v modulo λ"); ModularityAndLanglandsExtensions §1.7.

### Examples

- `n = 3`, `p = 577`: `TS_3` is the first case not covered by §7.5 alone.
- `n = 4`, `p ≡ 1 mod 1152`: `TS_4` and hence Theorem E in rank `4` from §§7.5–7.6.

### Dependencies

Layers 2–6; ModularityAndLanglandsExtensions §§1.7, 1.15, 4.2, 4.4, 4.15; PotentialAutomorphyInfrastructurePartII
PL.0, PL.2, PL.6, PL.7; SerreWeightAndLevelOptimisation §2.4; ArithmeticGaloisRepresentations §§7.8,
7.9; EndoscopicTransferAndUnitaryTraceComparison §13.3; AutomorphicGaloisRepresentations §1.5;
Chebotarev Layer 10; Mathlib `GaussianInt`.

## Layer 8: killing ramification with n-regular refinements

Newton–Thorne I §8 (nt21 pp. 91–96) removes ramification relative to a level-one seed: a
discriminant cuts out the non-regular locus of a local lifting ring (Lemma 8.4), patching produces
congruences to forms with `n`-regular refinements (Proposition 8.3, the statement of
ModularityAndLanglandsExtensions §4.10), and an induction on the conductor along eigencurves gives
Theorem B relative to a seed (Proposition 8.2).

### 8.1 The non-regular locus of a local lifting ring is a principal divisor

Let `l ≠ p` be primes, `π_l` a representation with non-trivial Jacquet module, `R_l` the
fixed-determinant lifting ring of `r̄|_{G_{ℚ_l}}` on the component of `π_l`, formally smooth of
relative dimension `3`, and `φ_l` a Frobenius lift. Let `I_l ⊂ R_l` be the principal ideal generated
by the discriminant of the characteristic polynomial of `Sym^{n−1} r_l^{univ}(φ_l)` (Mathlib
`Polynomial.discr`). Prove that a `ℚ̄_p`-point `f` of `R_l` has eigenvalues `α_l`, `β_l` of
`ρ_f(φ_l)` with `(α_l/β_l)^i = 1` for some `1 ≤ i ≤ n − 1` exactly when `f(I_l) = 0`, and that
`dim R_l/I_l < dim R_l` (nt21 Lemma 8.4 and proof, p. 95).

*Proof sketch.* The discriminant of the characteristic polynomial of `Sym^{n−1}` vanishes exactly
when two monomials `α^a β^b` (`a + b = n − 1`) coincide, that is when `(α/β)^i = 1` for some
`1 ≤ i ≤ n − 1`. The formally smooth ring is a domain (LocalGaloisDeformationRings §§1.1, 1.10,
2.13). If `π_l` is a Steinberg twist its Frobenius ratio is `l^{±1}`, so the discriminant is non-zero
at the given point; in the principal-series case with characters `χ_1`, `χ_2`, deform them to
`χ_1 ψ_T`, `χ_2 ψ_T^{−1}` with `ψ_T` unramified of Frobenius value `1 + T`, which preserves the
determinant and varies the ratio, so the discriminant is non-zero in the domain. A non-zero principal
ideal of a Noetherian local domain has quotient of strictly smaller dimension.

**Checks.**

- For `n = 2` the generator is `(α − β)²`, the discriminant of the Frobenius characteristic
  polynomial.
- For `n = 3` the eigenvalues of `Sym²` are `α², αβ, β²`, and the discriminant vanishes exactly when
  `α = β` or `α = −β`.
- At a Steinberg point the ratio is `l^{±1}`, never a root of unity, so the point lies off the
  divisor for every `n`.

*Needs:* LocalGaloisDeformationRings §§1.1, 1.10, 2.13; Mathlib `Polynomial.discr`.

### 8.2 A congruence to a form with n-regular refinements (Newton–Thorne I Proposition 8.3)

Let `n ≥ 2` and `π` be cuspidal on `GL_2(𝔸_ℚ)` of weight `k ≥ 2`, non-CM, with `π_l` of non-trivial
Jacquet module at every prime `l`. Prove that there are `p`, `ι` and `π′` cuspidal of weight `k` with
(1) `p > max(2(n + 1), (n − 1)k)`; (2) `r̄_{π,ι}(G_ℚ)` containing a conjugate of `SL_2(𝔽_p)`; (3)
`π_p` and `π′_p` unramified; (4) `r̄_{π,ι} ≅ r̄_{π′,ι}`; (5) every `π′_l` of non-trivial Jacquet module
and every accessible refinement of `π′_l` `n`-regular where `π′_l` is ramified (nt21 Proposition 8.3
and proof, pp. 92–95). This proves ModularityAndLanglandsExtensions §4.10. The printed proof leaves
two points implicit, which are part of the argument here: the number of patching variables is
`g = q_0 + |T| − 1`, and the auxiliary prime `q_a` is treated separately from the discriminant
argument, which runs over `T = S − {p, q_a}`.

*Proof sketch.* Choose `p` large: in the Fontaine–Laffaille range, with large image (Ribet–Momose,
AutomorphicGaloisRepresentations §7.5), and with unobstructed local problems at the ramified primes;
choose an auxiliary prime `q_a > p` with `π_{q_a}` unramified and formally smooth local lifting ring
(GL2ModularityLifting Layer 3, supplier contracts). Patch with `g = q_0 + |T| − 1` variables
(GL2ModularityLifting Layer 3; DeformationAndDerivedPatchingAlgebra §§5.6, 6.1): the patched module
`H_∞` has full support, of dimension `4|T| + q_0`, over the patched local rings. If every congruent
form failed `n`-regularity, `H_∞` would be supported on the quotient by `I = ∏_{l ∈ T} I_l`, of
smaller dimension by §8.1, a contradiction. At `q_a`, smoothness forces `q_a ≢ 1` modulo `p` and
excludes the ratio `q_a^{±1}`, so `π′_{q_a}` is unramified; the Jacquet-module condition at the other
primes holds because the inertial type is locally constant on the component and `p ∤ l(l² − 1)`.

**Checks.**

- The bound `p > (n − 1)k` puts every residual `Sym^{n−1}` lift in the Fontaine–Laffaille range:
  its Hodge–Tate weights lie in an interval of length `(n − 1)(k − 1) ≤ (n − 1)k − 1 ≤ p − 2`.
- For `n = 3`, `k = 2`: `p > max(8, 4)`, so `p ≥ 11`.
- A form with a supercuspidal component is excluded by hypothesis: its Jacquet module is zero.

*Needs:* §8.1; AutomorphicGaloisRepresentations §7.5; GL2ModularityLifting Layer 3
(gap:unobstructed-auxiliary-prime-and-slope-count); DeformationAndDerivedPatchingAlgebra §§5.6, 6.1;
LocalGaloisDeformationRings Layer 2; ModularityAndLanglandsExtensions §1.1.

### 8.3 Theorem B relative to a level-one seed (Newton–Thorne I Proposition 8.2)

Let `n ≥ 2` and suppose that `Sym^{n−1} r_{π_0,ι}` is automorphic for one everywhere unramified
cuspidal `π_0` of `GL_2(𝔸_ℚ)` of weight `≥ 2`. Prove that for every cuspidal `π` on `GL_2(𝔸_ℚ)` of
weight `k ≥ 2`, not CM, with an `n`-regular accessible refinement at every prime where it is ramified,
`Sym^{n−1} r_{π,ι}` is automorphic for every `ι` (nt21 Proposition 8.2 and proof, pp. 91–92). The
seed hypothesis is discharged for `n = 2^r` by §7.6 and for every `n` by §14.1, which proves the
route of ModularityAndLanglandsExtensions §4.20. The printed proof leaves implicit why the
intermediate forms are not supercuspidal at the remaining ramified primes; this follows from local
constancy of the inertial type along the component.

*Proof sketch.* By §3.8 the seed gives automorphy for every level-one form. Induct on the number of
primes dividing the conductor. At a ramified prime `p`, move along the tame-level `M` `p`-adic
eigencurve, avoiding the Zariski closed set of §2.5, to a classical `π′` of level prime to `p`; §2.4
(ordinary or non-critical case) transfers automorphy. `π′_l` is not supercuspidal at the remaining
ramified primes: the restriction to `I_l` is locally constant along the component, and supercuspidal
inertial types differ from those of representations with non-trivial Jacquet module.

**Checks.**

- A semistable elliptic curve over `ℚ` has Steinberg components at its bad primes, with accessible
  refinement ratio `l^{±1}`, which is `n`-regular for every `n`; so the theorem applies to it.
- A CM form is excluded: §2.5 puts all its points in the bad locus.
- For `n = 2` the conclusion is the modularity of `r_{π,ι}` and the seed hypothesis is automatic.

*Needs:* §2.4; §2.5; §3.8; PadicFamilies §2.10; ModularityAndLanglandsExtensions §0.2.

### Examples

- `n = 3` and an elliptic curve with multiplicative reduction at `2` and `3`: its refinements at `2`,
  `3` have ratios `2^{±1}`, `3^{±1}`, so §8.3 applies directly.
- A form with a principal series `π_l = i(χ_1, χ_2)` and `χ_1/χ_2` of order `2` is not `3`-regular at
  `l`; §8.2 replaces it by a congruent form that is.

### Dependencies

Layers 2–3; LocalGaloisDeformationRings §§1.1, 1.10, 2.13 and Layer 2; AutomorphicGaloisRepresentations
§7.5; GL2ModularityLifting Layer 3; DeformationAndDerivedPatchingAlgebra §§5.6, 6.1; PadicFamilies
§2.10; ModularityAndLanglandsExtensions §§0.2, 1.1; Mathlib `Polynomial.discr`.

## Layer 9: automorphy lifting for symmetric powers

Newton–Thorne II §2 (nt21b pp. 5–19) proves an automorphy lifting theorem for `Sym^{n−1}` of
non-ordinary weight-two Hilbert modular forms with large projective image, valid for every `p`
including `p = 2` and `p ≤ n`, without any vanishing of the dual Selmer group of the residual
symmetric power: the rank-two deformation ring and the conjugate self-dual pseudodeformation ring of
`Sym^{n−1}` are patched simultaneously, and regularity of the latter at an automorphic point
transfers automorphy. This proves ModularityAndLanglandsExtensions §4.11 and is the template of
Layer 12.

### 9.1 The setting of Newton–Thorne II §2

Fix a prime `p`, a totally real field `F`, `ι : ℚ̄_p ≅ ℂ` and `n ≥ 1`. Define the setting as pairs
`(π, π′)` of regular algebraic cuspidal automorphic representations of `GL_2(𝔸_F)` of weight two,
non-CM, with `r_{π,ι}|_{G_{F_v}}` and `r_{π′,ι}|_{G_{F_v}}` not ordinary (hence potentially
Barsotti–Tate) at every `v | p`, `r̄_{π,ι} ≅ r̄_{π′,ι}`, `π_v` a twist of Steinberg exactly when `π′_v`
is for every `v ∤ p`, and for some `a ≥ 1` with `p^a > max(5, 2n − 1)`,
`PSL_2(𝔽_{p^a}) ⊂ Proj r̄_{π,ι}(G_F) ⊂ PGL_2(𝔽_{p^a})` up to conjugacy (ModularityAndLanglandsExtensions
§1.7). Prove that after a soluble totally real base change, which preserves the hypotheses and from
which the conclusion of §9.8 descends, one may assume: (6) `[F : ℚ]` even; (7)
`det r_{π,ι} = det r_{π′,ι} = ε^{−1}`; (8) `π`, `π′` unramified at `p`; (9) Iwahori-spherical away
from `p` with an even number of ramified places; (10) `r̄` trivial on `S = S_p ∪ Σ`, with
`q_v ≡ 1` modulo `p` and `π_v`, `π′_v` Steinberg on `Σ`; (11) an everywhere unramified CM quadratic
`K/F` in which `S` splits (nt21b §2, setting and Theorem 2.1, p. 5; reductions (6)–(11), pp. 5–6).
One then works with `Π = π_K` and the pseudodeformation ring `P` of `Sym^{n−1} r̄|_{G_K}`.

*Proof sketch.* Soluble base change and descent (PotentialAutomorphyInfrastructurePartII PL.0;
EndoscopicTransferAndUnitaryTraceComparison §6.24) preserve all hypotheses and the conclusion; the
sandwich hypothesis is stable under base change disjoint from the residual field.

**API.**

- The data `(p, F, ι, n, π, π′)` with the hypotheses above.
- The integer `a` with `PSL_2(𝔽_{p^a}) ⊂ Proj r̄(G_F) ⊂ PGL_2(𝔽_{p^a})` and `p^a > max(5, 2n − 1)`.
- A soluble totally real `E/F` after which (6)–(11) hold, with the conclusion descending.
- The everywhere unramified CM quadratic `K/F` in which `S` splits, and `Π = π_K`.

**Checks.**

- For `n = 2` the bound is `p^a > 5`, so `𝔽_7` qualifies and `𝔽_5` does not; for `n = 10` it is
  `p^a > 19`, so `𝔽_{23}` and `𝔽_{25}` qualify and `𝔽_{19}` does not.
- A pair with `r_{π,ι}|_{G_{F_v}}` ordinary at some `v | p` is not in the setting.
- For `n = 1`, `Sym^0 r` is the trivial character and the conclusion of §9.8 is tautological; for
  `n = 2` the setting is a rank-two modularity lifting problem in weight two.

*Needs:* ModularityAndLanglandsExtensions §§0.2, 1.7; PotentialAutomorphyInfrastructurePartII PL.0
("Soluble base change and descent of automorphy"), PL.1 ("Two-dimensional potentially
Barsotti–Tate representations are potentially diagonalizable"); EndoscopicTransferAndUnitaryTraceComparison
§6.24.

### 9.2 Symmetric powers of Barsotti–Tate lifts and the morphism P → R

In the setting of §9.1 after the reductions, let `A` be an Artinian object of `𝒞_𝒪`, `v ∈ S_p`, and
`r̃ : G_{F_v} → GL_2(A)` a lift of `r̄` of determinant `ε^{−1}` through `R_v`, the ring of non-ordinary
crystalline lifts with Hodge–Tate weights `{0, 1}`. Prove that `A^n`, with `G_{F_v}` acting through
`Sym^{n−1} r̃`, is isomorphic to a subquotient of a lattice in a crystalline representation with
Hodge–Tate weights in `[0, n − 1]`; consequently `Sym^{n−1}` of the universal deformation restricted
to `G_K` defines a morphism `P → R` from the conjugate self-dual pseudodeformation ring, with
torsion-semistable conditions at `p`, to the rank-two deformation ring (nt21b Lemma 2.2 and proof,
p. 7).

*Proof sketch.* The dual of `A²` is the generic fibre of a finite flat group scheme, hence a quotient
of a Galois-stable lattice in a crystalline representation with weights in `{0, 1}`
(FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.4, supplier contracts). Symmetric powers of
subquotients of such lattices are subquotients of lattices in crystalline representations with
weights in `[0, n − 1]` (ArithmeticGaloisRepresentations §7.1). The pseudodeformation ring `P` is
defined by exactly this torsion-semistable condition (PotentialAutomorphyInfrastructurePartII PL.8;
LocalGaloisDeformationRings §8.14), so its universal property gives `P → R`.

**Checks.**

- For `n = 1`, `Sym^0 r̃` is trivial and `P → R` classifies the constant trivial pseudocharacter.
- For `n = 2` the weights of `Sym^1` are `[0, 1]`: the Barsotti–Tate condition itself.
- For `n = 3` the weights of `Sym²` lie in `{0, 1, 2}`, an interval of length `2 ≤ p − 2` only for
  `p ≥ 5`; the torsion-semistable formalism is what allows `p ≤ n`.

*Needs:* §9.1; PotentialAutomorphyInfrastructurePartII PL.8 ("Semistable conjugate self-dual
pseudodeformation rings"); FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.4.20
(gap:artinian-crystalline-quotients); LocalGaloisDeformationRings §8.14; ArithmeticGaloisRepresentations
§7.1.

### 9.3 Taylor–Wiles data for symmetric powers and the rings P_Q

Let `n ≥ 2` and `N ≥ 1`. Define a Taylor–Wiles datum of level `N` as `(Q, Q̃, (α_v, β_v)_{v ∈ Q})`
with `Q` a finite set of places of `F` split in `K` and not in `S`, `q_v ≡ 1` modulo `p^N`, a chosen
factorisation `v = ṽṽ^c`, and `α_v`, `β_v` the eigenvalues of `r̄(Frob_v)` such that
`α_v^{n−1}, α_v^{n−2}β_v, …, β_v^{n−1}` are pairwise distinct. With `Δ_Q = ∏_{v ∈ Q} k(v)^×(p)`, the
deformation ring `R_Q` is an `𝒪[Δ_Q]`-algebra with `R_Q ⊗_{𝒪[Δ_Q]} 𝒪 ≅ R`. Define `P_Q` as the
quotient of the pseudodeformation ring of `G_{K,S∪Q}` parametrising pseudodeformations whose
restriction to each `G_{K_ṽ}` is the determinant of characters `χ_{v,1} ⊕ ⋯ ⊕ χ_{v,n}` lifting the
unramified characters with Frobenius `α^{n−i}β^{i−1}` (unique by the uniqueness of decompositions of
residually multiplicity-free pseudocharacters), with `χ_{v,i}|_I = χ_{v,m}^{n+1−2i}|_I` for `n = 2m`
and `χ_{v,i}|_I = χ_{v,m}^{(n+1−2i)/2}|_I` for `n = 2m + 1`; this makes `P_Q` an `𝒪[Δ_Q]`-algebra with
a map `P_Q → R_Q`, `𝒪[Δ_Q]`-linear for even `n` (nt21b §2, Taylor–Wiles data and the rings `P_Q`,
pp. 8–9).

*Proof sketch.* The decomposition into characters uses uniqueness for residually multiplicity-free
pseudocharacters (IntegralHeckeAndGaloisDeterminants §1.4). The inertial relations are those
obtained by applying `Sym^{n−1}` to the rank-two local characters (GlobalGaloisDeformations §5.5).

**API.**

- A level-`N` datum `(Q, Q̃, (α_v, β_v))` with the distinctness condition.
- `Δ_Q = ∏_{v ∈ Q} k(v)^×(p)` and the `𝒪[Δ_Q]`-structures on `R_Q` and `P_Q`, with
  `R_Q ⊗_{𝒪[Δ_Q]} 𝒪 ≅ R` and `P_Q ⊗_{𝒪[Δ_Q]} 𝒪 ≅ P`.
- The map `P_Q → R_Q` induced by `Sym^{n−1}`: at each auxiliary place it sends the two ordered
  rank-two characters to the ordered monomials, and it is `𝒪[Δ_Q]`-linear for `n` even.

**Checks.**

- For `n = 3` the condition is that `α², αβ, β²` are distinct, i.e. `α ≠ ±β`.
- For `n = 2` the monomials are `α`, `β`, the inertial characters satisfy
  `χ_{v,1}|_I = χ_{v,2}^{−1}|_I`, and this is the rank-two Taylor–Wiles condition with fixed
  determinant.
- If `α_v/β_v` is a primitive cube root of unity and `n = 4`, then `α³ = β³`, distinctness fails, and
  `v` is not a Taylor–Wiles place for `n = 4`; for `n = 1` the formula for `χ_{v,m}` would involve
  `m = 0`, which is why `n ≥ 2`.

*Needs:* §9.2; GlobalGaloisDeformations §§5.5, 8.5; PotentialAutomorphyInfrastructurePartII PL.3
("Taylor–Wiles data with a residual eigenspace"), PL.8 ("Semistable conjugate self-dual
pseudodeformation rings"); IntegralHeckeAndGaloisDeterminants §1.4.

### 9.4 Definite unitary Hecke modules with twisted Taylor–Wiles level

Let `G` be the definite unitary group over `F` split by `K` (PotentialAutomorphyInfrastructurePartII
PL.2), `H_G(V)` the `𝒪`-valued functions on `G(F) \ G(𝔸_F^∞)/V`, `V_0` Iwahori at `Σ`, `n ≥ 2`,
`N ≥ 1`, and assume `Sym^{n−1} r_{π′,ι}` automorphic (this supplies the non-zero localised unitary
module). A Taylor–Wiles datum gives `V_0(Q)` (Iwahori at `Q`) and `V_1(Q; N) ⊂ V_0(Q)`, cut out at
`v ∈ Q` by requiring `∏_i a_{ii}^{n+1−2i}` (`n` even) or `∏_i a_{ii}^{(n+1−2i)/2}` (`n` odd) to map to
`1` in `k(ṽ)^×(p)/(p^N)`, so `V_0(Q)/V_1(Q; N) ≅ Δ_Q/(p^N)`; with Hecke operators `T_w^{(i)}`,
`U_{ϖ_ṽ}^{(i)}`, maximal ideals `𝔪_G` (Hecke eigenvalues of `Sym^{n−1} r̄`) and `𝔪_{G,Q}`, and twisting
by characters `θ` of `U_1` through `det`. Prove: (Lemma 2.4) for `n` even and `p = 2`, each quadratic
`χ` of `F^× \ (𝔸_F^∞)^×/det U_1(Q; N)` has a unique `θ_χ` with `θ_χ(z/z^c) = χ(z z^c)`;
(Proposition 2.5) for a datum of level `N + c_G`, where `p^{c_G}` kills the `p`-primary parts of the
finitely many base-level stabilisers, `𝔪_G` and `𝔪_{G,Q}` are in the supports,
`H_G(V_1(Q; N))_{𝔪_{G,Q}}` is free over `𝒪[Δ_Q/(p^N)]` with coinvariants `H_G(V_0)_{𝔪_G}`, and it is a
`P_Q`-module on which the universal characteristic-polynomial coefficients at `Frob_w` act by
`q_w^{i(i−1)/2} T_w^{(i)}`, compatibly with the `Δ_Q`-actions (nt21b §2, unitary Hecke modules,
pp. 9–11; Lemma 2.4, p. 11; Proposition 2.5, p. 11).

*Proof sketch.* At level `N + c_G` the congruence conditions put the `p`-primary stabiliser images in
`V_1(Q; N)`, so the deck group `Δ_Q/(p^N)` acts freely on the localised double quotient; exactness and
freeness (PotentialAutomorphyInfrastructurePartII PL.2) give a free module whose coinvariants are
`H_G(V_0)_{𝔪_G}` by the trace. Support of `𝔪_G`: Labesse's descent of `Sym^{n−1}` of the automorphic
`π′_K` to `G` (EndoscopicTransferAndUnitaryTraceComparison §6.29). The `P_Q`-module structure: the
Hecke-valued determinant restricted at `ṽ ∈ Q` decomposes into characters by uniqueness, matching
the definition of `P_Q`. Lemma 2.4: Hilbert 90 for `0 → 𝔾_m → Res_{K/F} 𝔾_m → U_1 → 0`. For `p = 2`
the constructions of PL.2 are used in the dyadic case (supplier contracts).

**API.**

- The level `V_1(Q; N)` with `V_0(Q)/V_1(Q; N) ≅ Δ_Q/(p^N)`.
- The maximal ideals `𝔪_G` and `𝔪_{G,Q}`.
- Freeness of `H_G(V_1(Q; N))_{𝔪_{G,Q}}` over `𝒪[Δ_Q/(p^N)]` with coinvariants `H_G(V_0)_{𝔪_G}`.
- The `P_Q`-module structure, with `Λ_i^{univ}(Frob_w)` acting as `q_w^{i(i−1)/2} T_w^{(i)}`.
- For `p = 2` and `n` even, the unique quadratic `θ_χ` with `θ_χ(z/z^c) = χ(z z^c)`.

**Checks.**

- For `n = 2` the exponents `n + 1 − 2i` are `1, −1`: `V_1` is the kernel of
  `a_{11}/a_{22} ↦ k(ṽ)^×(p)/(p^N)`.
- For `n = 3` the exponents `(n + 1 − 2i)/2` are `1, 0, −1`: the character `a_{11}/a_{33}`.
- If the congruence level is only `N` and a `p`-primary stabiliser has non-trivial image in the deck
  group, its action on the double quotient has a fixed orbit and freeness fails; the offset `c_G`
  removes this.
- At `N = 1`, tensoring with `𝒪` along the augmentation of `𝒪[Δ_Q/(p)]` gives `H_G(V_0)_{𝔪_G}` with its
  Hecke action.

*Needs:* §9.3; PotentialAutomorphyInfrastructurePartII PL.2 ("Algebraic modular forms on a definite
unitary group"; "Exactness and group-ring freeness at `l`-torsion-free level"; "The `𝒢_n`-valued
Galois representation over the localized Hecke algebra"; "Base change and descent between definite
unitary groups and `GL_n`"), PL.3 ("Taylor–Wiles level structures and the parahoric projection");
PotentialAutomorphyInfrastructurePartII (gap:dyadic-definite-unitary-forms);
EndoscopicTransferAndUnitaryTraceComparison §6.29.

### 9.5 Patching for symmetric powers, p > 2

In the setting of §9.1 with `p > 2`, `n ≥ 2` and `Sym^{n−1} r_{π′,ι}` automorphic, let
`q = dim_k H¹(F_S/F, ad⁰ r̄(1))` and `g = q + |S ∪ S_∞| − 1`. Prove: (Lemma 2.7) for every `N` there is
a Taylor–Wiles datum of level `N` with a surjection `R^{loc}[[X_1, …, X_g]] → R^□_Q`; (Proposition
2.6) there are `W_∞ = 𝒪[[Y_1, …, Y_q, Z_1, …, Z_{4|S∪S_∞|−1}]]`, complete Noetherian local
`W_∞`-algebras `P_∞`, `R_∞` with `P_∞ ⊗ 𝒪 ≅ P` and `R_∞ ⊗ 𝒪 ≅ R`, a surjection
`R^{loc}[[X_1, …, X_g]] → R_∞`, a `P_∞`-module `H_{G,∞}` and an `R_∞`-module `H_{D,∞}`, both finite free
over `W_∞`, specialising to `H_G = H_G(V_0)_{𝔪_G}` and to `H_D` (quaternionic forms of level `U_0`
localised at `𝔪_D`), and a morphism `P_∞ → R_∞` compatible with `P → R` (nt21b Proposition 2.6,
p. 13; Lemma 2.7, p. 14; proof, pp. 14–17).

*Proof sketch.* Lemma 2.7: Chebotarev and the vanishing of `H¹(PSL_2(𝔽_{p^a}), ad⁰)` give
Taylor–Wiles primes with `Frob_v` regular for `Sym^{n−1}` (`(α/β)^i ≠ 1` for `i < n`), as in
GlobalGaloisDeformations §5.7 with the stronger distinctness condition (GlobalGaloisDeformations
Layer G7, supplier contracts). Patch the modules of §9.4 and the quaternionic modules
(GL2ModularityLifting Layers 2–3) simultaneously over the framed rings
(DeformationAndDerivedPatchingAlgebra §5.6), with a uniform bound on the generators of `P_N`.

**Checks.**

- `dim W_∞ = 1 + q + 4|S ∪ S_∞| − 1`, which equals `dim R^{loc}[[X_1, …, X_g]]` when the local rings
  have the expected dimensions.
- For `n = 2`, `P_∞ → R_∞` is the inclusion of the trace subring and the statement is the rank-two
  patching of GL2ModularityLifting Layer 3.
- For `p = 3`, `p^a > max(5, 2n − 1)` forces `a ≥ 2`: projective image `PSL_2(𝔽_3) ≅ A_4` is never in
  the setting.

*Needs:* §§9.3, 9.4; GL2ModularityLifting Layers 2–3; DeformationAndDerivedPatchingAlgebra §5.6;
GlobalGaloisDeformations §5.7 (gap:tensor-taylor-wiles-primes); Chebotarev Layer 10.

### 9.6 Patching for symmetric powers, p = 2

In the setting of §9.1 with `p = 2`, `n ≥ 2` and `Sym^{n−1} r_{π′,ι}` automorphic, let
`q = dim_k H¹(F_S/F, ad r̄) − 2`, `g = 2q + 1` and `γ = 2 − |S ∪ S_∞| + q`. Prove: (Lemma 2.9)
`q ≥ |S ∪ S_∞| − 2`, and for every `N` there is a Taylor–Wiles datum of level `N` with `|Q| = q`, a
surjection `R^{loc}[[X_1, …, X_g]] → R′^□_Q`, and `Θ_Q/(2^N) ≅ (ℤ/2^N)^γ` for `Θ_Q` the Galois group of
the maximal abelian pro-`2` extension of `F` unramified outside `Q` and `(S ∪ S_∞)`-split;
(Proposition 2.8) there are data as in §9.5 but with surjections
`R^{loc}[[X_1, …, X_g]] → R′_∞ → R_∞`, a free action of `Ĝ_m^γ` on `Sp R′_∞` with an equivariant
`δ : Sp R′_∞ → Ĝ_m^γ` (`Ĝ_m^γ` acting on itself by the square), `δ^{−1}(1) = Sp R_∞`, the action of
`Ĝ_m^γ[2](𝒪)` on `R_∞` lifting to `H_{D,∞}`, and an action of `Ĝ_m^γ[2]` on `Sp P_∞` making
`Sp R_∞ → Sp P_∞` equivariant and lifting to `H_{G,∞}` (nt21b Proposition 2.8, p. 17; Lemma 2.9, p. 18;
proof, pp. 17–19).

*Proof sketch.* Lemma 2.9: the dyadic Taylor–Wiles sets (GlobalGaloisDeformations §§5.3–5.4) with the
stronger distinctness condition (GlobalGaloisDeformations Layer G7, supplier contracts). Patch as in
GL2ModularityLifting Layer 6, recording the action of quadratic twists by characters of `Θ_Q`
(`Ĝ_m^γ`), with the twisting characters of §9.4 on the unitary side and the formal-torus contract of
DeformationAndDerivedPatchingAlgebra (supplier contracts).

**Checks.**

- For `γ = 0` there is no twisting action and `R′_∞ = R_∞`.
- `Sp R_∞ = δ^{−1}(1)` is a fibre of a map to the `γ`-dimensional `Ĝ_m^γ`, so
  `dim R_∞ ≥ dim R′_∞ − γ`, with equality because the action is free and `δ` is equivariant for the
  square map, which is finite flat.
- The quadratic `θ_χ` of §9.4 is what lets `Ĝ_m^γ[2]` act on `H_{G,∞}`; for odd `n` no such twisting
  is needed on the unitary side.

*Needs:* §§9.3, 9.4; GL2ModularityLifting Layer 6; GlobalGaloisDeformations §§5.3–5.4
(gap:tensor-taylor-wiles-primes); DeformationAndDerivedPatchingAlgebra (gap:formal-torus-patching);
ArithmeticGaloisDuality §R02.3.5.

### 9.7 Regularity of P at an automorphic point transfers automorphy

Let `p_∞`, `p′_∞` be the points of `Spec P_∞` defined by the pseudocharacters
`t = Sym^{n−1} r|_{G_K}` and `t′ = Sym^{n−1} r′|_{G_K}`, with `t′` automorphic. Prove: (`p > 2`)
`H_{G,∞}` and `H_{D,∞}` are Cohen–Macaulay with all components of their supports of dimension
`q + 4|S ∪ S_∞|`, so `R^{loc}[[X]] → R_∞` is an isomorphism, `R_∞` is a domain and `H_{D,∞}` is
faithful; since the localisation `P_{(p′)}` is its residue field `E`, `P_∞` is regular of dimension
`q + 4|S ∪ S_∞| − 1` at `p′_∞`, a unique component of `Spec P_∞` through `p′_∞` lies in
`Supp H_{G,∞}`, `Spec R_∞` maps into it, and `p ∈ Supp_P H_G`; (`p = 2`) the dimension argument gives
`R^{loc}[[X]] ≅ R′_∞`; `Spec R′_∞` and the invariant ring `R_∞^{inv}` are irreducible,
`Sp R_∞ → Sp R_∞^{inv}` is a `Ĝ_m^γ[2]`-torsor on represented complete-local functors whose
`𝒪`-points act transitively on components; a translate of the automorphic point on a component
containing the target point lies in the support by equivariance, regularity transfers to it, and the
unique-component argument puts `p_∞` in the support (nt21b proof of Theorem 2.1 for `p > 2`,
pp. 12–13; for `p = 2`, pp. 17–19). No assertion that `R_∞` is a domain is made for `p = 2`.

*Proof sketch.* `P_{(p′)} = E` because the adjoint Bloch–Kato Selmer group of `Π′_n` vanishes
(PotentialAutomorphyInfrastructurePartII PL.8); counting dimensions lifts this to regularity of
`P_∞` at `p′_∞`. Cohen–Macaulay modules finite free over `W_∞` have full-dimensional support
components (DeformationAndDerivedPatchingAlgebra §§5.5, 6.1, 6.7). The dyadic case uses the torsor and
transitivity of the formal-torus contract.

**Checks.**

- If `P` were not regular at `p′_∞` (non-zero adjoint Selmer group), several components of
  `Spec P_∞` could pass through `p′_∞` and the argument would give nothing.
- For `n = 2`, `P_∞ ⊂ R_∞` and the statement is the rank-two `R = T` support argument.
- For `p > 2` the dimension `q + 4|S ∪ S_∞|` of the support components equals
  `dim W_∞ = 1 + q + 4|S ∪ S_∞| − 1`, as it must for a Cohen–Macaulay module finite free over `W_∞`.

*Needs:* §§9.5, 9.6; PotentialAutomorphyInfrastructurePartII PL.8 ("The pseudodeformation ring is its
residue field at an automorphic point"; "Vanishing of adjoint Bloch–Kato Selmer groups of unitary
type"); DeformationAndDerivedPatchingAlgebra §§5.5, 5.6, 6.1, 6.7 (gap:formal-torus-patching).

### 9.8 Automorphy lifting for symmetric powers (Newton–Thorne II Theorem 2.1)

In the setting of §9.1, prove that if `Sym^{n−1} r_{π′,ι}` is automorphic then `Sym^{n−1} r_{π,ι}` is
automorphic (nt21b Theorem 2.1, p. 5; proof, pp. 12–19). This proves ModularityAndLanglandsExtensions
§4.11; no vanishing of the dual Selmer group of the residual symmetric power is assumed, and `p = 2`
and `p ≤ n` are allowed.

*Proof sketch.* `n = 1` is tautological. For `n ≥ 2` reduce by soluble base change (§9.1). §9.7 puts
`Sym^{n−1} r|_{G_K}` in the support of `H_G`, which gives a RACSDC `Π_n` on `GL_n(𝔸_K)` with
`r_{Π_n,ι} ≅ Sym^{n−1} r|_{G_K}` (EndoscopicTransferAndUnitaryTraceComparison §6.29). Descend from
`K` to `F` and along the soluble base change of §9.1 (PotentialAutomorphyInfrastructurePartII PL.0,
"Soluble base change and descent of automorphy"; `Sym^{n−1} r|_{G_K}` is irreducible by the large
image hypothesis).

**Checks.**

- For `n = 1` the conclusion is the automorphy of the trivial character; for `n = 2` it is
  weight-two modularity lifting.
- At `p = 2`, `n = 3` the bound `2^a > 5` needs `a ≥ 3`, i.e. projective image `PSL_2(𝔽_8)` or larger.
- The hypothesis on Steinberg places is needed: it makes the local conditions at `Σ` the same for
  `π` and `π′`.

*Needs:* §9.7; §9.1; PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble base change and
descent of automorphy"), PL.2 ("Base change and
descent between definite unitary groups and `GL_n`"); EndoscopicTransferAndUnitaryTraceComparison
§6.29.

### Examples

- `F = ℚ`, `p = 7`, `n = 3`: two non-ordinary weight-two newforms with the same residual
  representation of projective image `PGL_2(𝔽_7)` and the same Steinberg primes; automorphy of
  `Sym²` passes from one to the other.
- `p = 2`, `n = 4`: `2^a > 7` needs `a ≥ 3`; the twisting characters of Lemma 2.4 enter since `n` is
  even.

### Dependencies

ModularityAndLanglandsExtensions §§0.2, 1.7; PotentialAutomorphyInfrastructurePartII PL.0, PL.1,
PL.2, PL.3, PL.8; GlobalGaloisDeformations §§5.3–5.5, 5.7, 8.5; FiniteFlatGroupsAndIntegralPadicHodgeTheory
Layer R07.4; LocalGaloisDeformationRings §8.14; IntegralHeckeAndGaloisDeterminants §1.4;
GL2ModularityLifting Layers 2, 3, 6; DeformationAndDerivedPatchingAlgebra §§5.5, 5.6, 6.1, 6.7;
EndoscopicTransferAndUnitaryTraceComparison §§6.24, 6.29; ArithmeticGaloisRepresentations §7.1;
ArithmeticGaloisDuality §R02.3.5; Chebotarev Layer 10.

## Layer 10: seasoned representations and the removal of supercuspidal primes

Newton–Thorne II §3 (nt21b pp. 20–27) extends Theorem B to every non-CM modular form by an induction
on the number of supercuspidal primes: seasoned representations have large residual image at every
supercuspidal prime, a non-ordinary weight-two congruence removes one supercuspidal prime, and §9.8
transfers automorphy. As in Layer 8, the theorems are stated relative to a level-one seed, discharged
in Layer 14; the endpoint is the statement of ModularityAndLanglandsExtensions §4.29.

### 10.1 The semisimple conductor and the supercuspidal primes of a modular form

For `π` regular algebraic cuspidal on `GL_2(𝔸_ℚ)`, define `sc(π)` as the set of primes `p` with `π_p`
supercuspidal and the semisimple conductor `M_π = ∏_l N((rec_{ℚ_l} π_l)^{ss})`, the product of the
Artin conductors of the semisimplified Weil–Deligne representations (GL2AutomorphicRepresentationsAndTransfer
§§R16.3.1–R16.3.3, R16.3.5). Prove that `M_π` divides the conductor `N(π)`, and (Lemma 3.3) that if
`p` is odd and `r̄_{π,ι}` is reducible or dihedral, the prime-to-`p` part of the conductor of
`r̄_{π,ι}` divides `M_π` (nt21b Introduction, p. 2; Definition 3.2 and Lemma 3.3, p. 20).

*Proof sketch.* Semisimplification forgets monodromy, so a Steinberg component contributes only its
unramified part. For odd `p` a reducible or dihedral residual representation has semisimplified
image of order prime to `p`, so its local monodromy vanishes after semisimplification; reduction of
the characteristic-zero semisimplified Weil representation then bounds the prime-to-`p` conductor by
`M_π` (ArithmeticGaloisRepresentations §§3.3, 3.6, where only the bound by the full conductor
including monodromy is supplied; the sharper bound is this target).

**API.**

- `sc(π)`, the primes where `π_p` is supercuspidal.
- `M_π = ∏_l N((rec π_l)^{ss})`, dividing `N(π)`.
- Lemma 3.3: for `p` odd and `r̄` reducible or dihedral, the prime-to-`p` conductor of `r̄` divides
  `M_π`.

**Checks.**

- For `π_l = St ⊗ χ` with `χ` unramified, `N((rec π_l)^{ss}) = 1` although `N(π_l) = l`.
- If no `π_l` is supercuspidal, `sc(π) = ∅`, the case of §8.3; for a semistable elliptic curve also
  `M_π = 1`.
- For a depth-zero supercuspidal `π_l`, induced from a tamely ramified character of the unramified
  quadratic extension, `N((rec π_l)^{ss}) = l²`.

*Needs:* GL2AutomorphicRepresentationsAndTransfer §§R16.3.1–R16.3.3, R16.3.5;
ArithmeticGaloisRepresentations §§3.3, 3.6.

### 10.2 Non-ordinary weight-two congruences with controlled type at p

Let `π` be regular algebraic cuspidal on `GL_2(𝔸_ℚ)` with `Proj r̄_{π,ι}(G_ℚ)` containing a conjugate
of `PSL_2(𝔽_{p^a})`, `p^a > 5`. Prove: (Lemma 3.4) there is `π′` with `r̄_{π′,ι} ≅ r̄_{π,ι}`, `π′` of
weight `2` and not ι-ordinary, `rec π′_p ≅ ω_1 ⊕ ω_2` with `ω_i` of conductor dividing `p³`, and for
`l ≠ p`, `π_l` Steinberg (resp. supercuspidal) exactly when `π′_l` is; (Lemma 3.5) if moreover
`p ≥ 3`, `π′` can be chosen with in addition `r_{π,ι}|_{G_{ℚ_l}} ∼ r_{π′,ι}|_{G_{ℚ_l}}` (strongly
connected) for every `l ≠ p`, in particular `N(π_l) = N(π′_l)` (nt21b Lemma 3.4 and proof,
pp. 20–22; Lemma 3.5, pp. 22–23).

*Proof sketch.* Lemma 3.4: Breuil–Mézard types at the supercuspidal primes, a quaternion algebra
ramified at the Steinberg primes, a neat level, and a dimension count on the slope-`(0, 1)` part of
cohomology of level `U_0(p³)` via Hida theory (OrdinaryAutomorphicFormsAndModularityLifting §2.6;
GL2ModularityLifting Layer 3, supplier contracts; SerreWeightAndLevelOptimisation §6.9 for
quaternionic level raising); non-ordinarity follows. Lemma 3.5: prescribed-type lifts
(PotentialModularityAndCompatibleSystems §10.10) with strong connection
(PotentialAutomorphyInfrastructurePartII PL.1).

**Checks.**

- If `π` already has weight `2`, is not ordinary and has the required type at `p`, `π′ = π` works.
- `p^a = 5` is excluded: `PSL_2(𝔽_5) ≅ A_5` is the exceptional case of the large-image arguments.
- Lemma 3.5 needs `p ≥ 3` because the prescribed-type lifting theorem used is for odd `p`.

*Needs:* §10.1; PotentialModularityAndCompatibleSystems §10.10; PotentialAutomorphyInfrastructurePartII
PL.1 ("Connecting and strongly connecting local lifts"; "Properties of connection and strong
connection"); OrdinaryAutomorphicFormsAndModularityLifting §2.6; SerreWeightAndLevelOptimisation
§6.9; GL2ModularityLifting Layer 3 (gap:unobstructed-auxiliary-prime-and-slope-count).

### 10.3 Seasoned automorphic representations

Fix `n ≥ 3`. Let `π` be regular algebraic cuspidal on `GL_2(𝔸_ℚ)` of weight `2` with `2 ∉ sc(π)`, and
`q`, `t`, `r` primes. Define `π` to be seasoned with respect to `(q, t, r)` if (1) `t | q + 1`,
`t ∉ sc(π)`, `t > max(10, 8n(n − 1))` and `(q + 1)/t > 2`; (2) `rec π_q ≅ Ind_{W_{ℚ_{q²}}}^{W_{ℚ_q}} χ`
with `χ|_{I_{ℚ_q}}` of order `t` (so `q ∈ sc(π)` and `N(π_q) = q²`); (3) `r` is a primitive root
modulo `q` and `r ≡ 1` modulo `M`, the lcm of the prime-to-`q` part of `M_π` and
`∏_{p ∈ sc(π) − {q}} p⁶`; (4) `π_r` is an unramified twist of Steinberg; (5) for each `p ∈ sc(π)`
and each irreducible dihedral `ρ : G_ℚ → GL_2(𝔽̄_p)` of prime-to-`p` conductor dividing `Mq²` there is
a prime `s` with `π_s` an unramified Steinberg twist, `ρ(Frob_s)` scalar and `s ≢ 1` modulo `p`
(nt21b Definition 3.6, p. 23). This is a variant of Khare–Wintenberger's good-dihedral condition
(ClassicalSerreModularity Layer R27.1) with an extra Steinberg prime, and it depends on `n` through
the bound on `t`.

**API.**

- The predicate "`π` is seasoned with respect to `(q, t, r)`", conditions (1)–(5).
- If `π` is seasoned with respect to `(q, t, r)` then `q ∈ sc(π)` and `N(π_q) = q²`.
- The bounds `t > max(10, 8n(n − 1))`, `t | q + 1` and `(q + 1)/t > 2`.
- Removing a supercuspidal prime `p ≠ q` as in §10.6 preserves seasoning with respect to `(q, t, r)`.

**Checks.**

- For `n = 3`, `t > max(10, 48) = 48`, so the smallest admissible `t` is `53` (`49 = 7²` and
  `51 = 3 · 17` are not prime).
- With `t = 53` one needs `q ≡ −1` modulo `53` and `(q + 1)/53 > 2`: `q = 158` (`q + 1 = 3 · 53`) is not
  prime, and `q = 211` (`q + 1 = 4 · 53`) is the least choice.
- A representation with `2 ∈ sc(π)` is never seasoned.

*Needs:* §10.1; ClassicalSerreModularity Layer R27.1; GL2AutomorphicRepresentationsAndTransfer
§R16.3.7.

### 10.4 Seasoned representations have large residual image at supercuspidal primes

Prove that if `π` is seasoned with respect to `(q, t, r)`, then for each `p ∈ sc(π)` there is
`ι : ℚ̄_p ≅ ℂ` with `PSL_2(𝔽_{p^a}) ⊂ Proj r̄_{π,ι}(G_ℚ) ⊂ PGL_2(𝔽_{p^a})` after conjugation, for some
`p^a > max(5, 2n − 1)`, and with linear image containing `SL_2(𝔽_{p^a})` (nt21b Proposition 3.7 and
proof, pp. 23–24).

*Proof sketch.* For `p = q`: irreducibility from the Steinberg prime `r` and the niveau-two
description of potentially Barsotti–Tate residual types (FiniteFlatGroupsAndIntegralPadicHodgeTheory
§R07.5.10); non-dihedrality from condition (5) and Lemma 3.3 (§10.1); a choice of `ι` gives
projective elements of order `≥ t/2 > 4n(n − 1)`. For `p ≠ q`: inertia at `q` has projective image of
order `t`. Dickson's classification (ArithmeticGaloisRepresentations §4.4) then gives the conclusion,
including the linear statement.

**Checks.**

- The bound `p^a > 2n − 1` is the input §9.1 needs at `p`.
- A projective element of order `t > 5` excludes the exceptional images `A_4`, `S_4`, `A_5`, whose
  element orders are at most `5`.
- Without (5), a dihedral residual representation of small conductor could occur at some
  `p ∈ sc(π)`.

*Needs:* §§10.1, 10.3; ArithmeticGaloisRepresentations §4.4; FiniteFlatGroupsAndIntegralPadicHodgeTheory
§R07.5.10.

### 10.5 Making a representation seasoned

Fix `n ≥ 3`. Let `π` be regular algebraic cuspidal on `GL_2(𝔸_ℚ)` of weight `2`, non-CM, with
`2, 3 ∉ sc(π)`. Prove that there is `π′` regular algebraic cuspidal with (1) primes `(q, t, r)` such
that `π′` is seasoned with respect to `(q, t, r)` and `sc(π′) = sc(π) ∪ {q}`; (2) `Sym^{n−1} π′` exists
exactly when `Sym^{n−1} π` does (nt21b Proposition 3.9 and proof, pp. 24–25).

*Proof sketch.* Choose `t > max(10, 8n(n − 1), N(π))`, `t ≡ 1 mod 4`, with large `t`-adic image;
`q ≡ −1` modulo `t` with `Frob_q` conjugate to complex conjugation; `r` and the primes `s` by
Chebotarev (Chebotarev Layer 10), using the description of `Gal(L_1 L_2/K)` for two finite Galois
extensions as pairs of automorphisms agreeing on `L_1 ∩ L_2`. Prescribed-type lifts
(PotentialModularityAndCompatibleSystems §10.10) give `π′` congruent to `π` at `t` with the new local
components. Potentially diagonalizable automorphy lifting (PotentialAutomorphyInfrastructurePartII
PL.5) shows `Sym^{n−1} π′` automorphic exactly when `Sym^{n−1} π` is: both are Fontaine–Laffaille at `t`
(PL.1), and `Sym^{n−1}` of `SL_2(𝔽_t)` is irreducible and adequate for `t > n − 1`
(ArithmeticGaloisRepresentations §7.9).

**Checks.**

- The new supercuspidal prime is `q`; `sc` grows by exactly one.
- `t > N(π)` makes `t` prime to the conductor, so `π` and `π′` are both crystalline at `t`.
- `t ≡ 1 mod 4` and `Frob_q` conjugate to complex conjugation give `q ≡ −1` modulo `t` compatibly with
  the dihedral type at `q`.

*Needs:* §10.3; PotentialModularityAndCompatibleSystems §10.10; PotentialAutomorphyInfrastructurePartII
PL.1 ("Ordinary and Fontaine–Laffaille representations are potentially diagonalizable"), PL.5
("Automorphy lifting for potentially diagonalizable representations"); ArithmeticGaloisRepresentations
§7.9; Chebotarev Layer 10.

### 10.6 Removing one supercuspidal prime

Fix `n ≥ 3`. Let `π` be regular algebraic cuspidal on `GL_2(𝔸_ℚ)` of weight `2`, seasoned with respect
to `(q, t, r)`, and `p ∈ sc(π)` with `p ≥ 5`. Prove that there is `π′` of weight `2`, non-CM, with
`sc(π′) = sc(π) − {p}`, still seasoned with respect to `(q, t, r)` if `p ≠ q`, such that if
`Sym^{n−1} π′` exists then `Sym^{n−1} π` exists (nt21b Proposition 3.10 and proof, pp. 25–26).

*Proof sketch.* §10.4 chooses `ι` at `p` with large residual image. §10.2 (Lemma 3.5) produces `π′`
non-ordinary at `p` with principal-series type at `p` (so `p ∉ sc(π′)`) and strongly connected to `π`
away from `p`; when `p ≠ q` impose conductor dividing `p⁶` at `p`, which with strong connection
preserves the integer `M` and conditions (3), (5), as well as the types at `q` and `r`. §9.8 transfers
automorphy of `Sym^{n−1}` from `π′` to `π` (the pair `(π, π′)` is in the setting of §9.1 at `p`).

**Checks.**

- For `p ≠ q`, strong connection preserves the local Weil–Deligne data away from `p`, and
  `N(π′_p) | p⁶`; these preserve `M` and the dihedral-killing conditions.
- `p = 3` is excluded here; it is treated in §10.8 by a separate congruence.
- For `p = q` the result is no longer seasoned (it has lost the dihedral type at `q`), and the
  statement does not claim it.

*Needs:* §§10.2, 10.4; §9.8.

### 10.7 Symmetric powers in weight two relative to a seed when 2, 3 are not supercuspidal primes

Let `n ≥ 3` and suppose `Sym^{n−1} r_{π_0,ι}` is automorphic for one everywhere unramified cuspidal
`π_0` of `GL_2(𝔸_ℚ)` of weight `≥ 2`. Prove that for every regular algebraic cuspidal `π` on
`GL_2(𝔸_ℚ)` of weight `2`, non-CM, with `2, 3 ∉ sc(π)`, `Sym^{n−1} π` exists (nt21b Proposition 3.11
and proof, p. 26).

*Proof sketch.* Let `H_k` assert the result for all such `π` with `|sc(π)| ≤ k`, and `H′_k` for the
seasoned ones. `H_0` (Theorem B relative to the seed): for `sc(π) = ∅` every component has
non-trivial Jacquet module, so §8.2 gives `π′` with the same residual representation, `n`-regular
refinements at its ramified primes and residual image containing `SL_2(𝔽_p)` for a prime `p` in the
Fontaine–Laffaille range; §8.3 with the seed makes `Sym^{n−1} r_{π′,ι}` automorphic, and
potentially diagonalizable automorphy lifting (PotentialAutomorphyInfrastructurePartII PL.1, PL.5)
transfers this to `π`.
`H_k ⇒ H′_{k+1}`: remove any supercuspidal prime by §10.6 (including `q` if needed); the result has at
most `k` such primes. `H′_k ⇒ H_k` for `k ≥ 1`: for `|sc(π)| = k` add a new prime `q` by §10.5,
remove an old prime `p ∈ sc(π)` (so `p ≠ q`) by §10.6; the result is seasoned with `k` supercuspidal
primes. Compose the automorphy implications.

**Checks.**

- `k = 0` is §8.3 with the seed.
- The induction alternates between seasoned and arbitrary representations; at no step is a
  supercuspidal prime `≤ 3` eliminated by §10.6, consistently with `p ≥ 5` there.
- For `n = 3, 4, 5` the conclusion is also given by the low-rank lifts, without the seed.

*Needs:* §§10.5, 10.6; §§8.2, 8.3; PotentialAutomorphyInfrastructurePartII PL.1 ("Ordinary and
Fontaine–Laffaille representations are potentially diagonalizable"), PL.5 ("Automorphy lifting for
potentially diagonalizable representations"); ArithmeticGaloisRepresentations §7.9.

### 10.8 Symmetric power functoriality for non-CM modular forms relative to a seed (Newton–Thorne II Theorem 3.1)

Let `n ≥ 1` and, if `n ≥ 3`, suppose `Sym^{n−1} r_{π_0,ι}` automorphic for one everywhere unramified
cuspidal `π_0` of weight `≥ 2`. Prove that `Sym^{n−1} π` exists for every non-CM regular algebraic
cuspidal `π` of `GL_2(𝔸_ℚ)` (nt21b Theorem 3.1, p. 20; proof, pp. 26–27). With §14.1 this proves
ModularityAndLanglandsExtensions §4.29 (Newton–Thorne II Theorem A); CM and weight-one forms are its
§4.13. The printed proof applies the large-image step to `π` where the newly constructed
good-dihedral form `π′` is meant, and in the case `2 ∈ sc(π)` concludes by Proposition 3.11 although
the new form may have `3 ∈ sc`; the argument here concludes by the case of `2 ∉ sc` treated first.

*Proof sketch.* `n = 1, 2` are trivial. For weight `2` with `2 ∉ sc(π)` and `3 ∈ sc(π)`: choose
`t > max(5, 4n(n − 1), N(π))`, `t ≡ 1 mod 4`, with large `t`-adic projective image
(AutomorphicGaloisRepresentations §7.5), and `q ≡ −1` modulo `t`, `q ≡ 1` modulo `8` and modulo every
prime `l < t`, `Frob_q` conjugate to complex conjugation; a good-dihedral `π′` at `q`
(ClassicalSerreModularity Layer R27.1) with `Sym^{n−1} π′` existing exactly when `Sym^{n−1} π` does
(PotentialModularityAndCompatibleSystems §10.10, PotentialAutomorphyInfrastructurePartII PL.5); the
`3`-adic projective image of `r̄_{π′,ι}` is `PSL_2` or `PGL_2` of `𝔽_{3^a}` with `3^a > 2n − 1`; §10.2
gives a weight-two `π″` with `2, 3 ∉ sc(π″)`, non-ordinary at `3`; then §10.7 and §9.8 conclude. If
`2 ∈ sc(π)`, run the same argument with `2` and `3` exchanged and conclude by the case just treated.
Weight `k > 2` reduces to weight `2` by a `t`-adic congruence with a potentially crystalline
weight-two form and potentially diagonalizable lifting (PL.1, PL.5).

**Checks.**

- A non-CM elliptic curve over `ℚ` with additive potentially good reduction at `3` (for example one
  acquiring good reduction over a ramified extension of `ℚ_3`) passes through the `3`-adic step.
- `n = 1`: `Sym^0 π` is the trivial character; `n = 2`: `π` itself.
- If the large-image step were applied to `r̄_{π,ι}` rather than `r̄_{π′,ι}`, the image bound could fail
  (`π` need not have large `3`-adic image); `π′` has the auxiliary type that supplies it.

*Needs:* §§10.2, 10.7; §9.8; AutomorphicGaloisRepresentations §7.5; ClassicalSerreModularity Layer
R27.1; PotentialAutomorphyInfrastructurePartII PL.1 ("Two-dimensional potentially Barsotti–Tate
representations are potentially diagonalizable"), PL.5 ("Automorphy lifting for potentially
diagonalizable representations"); PotentialModularityAndCompatibleSystems §10.10.

### Examples

- `n = 3`: seasoning uses `t = 53` and, for instance, `q = 211`.
- An elliptic curve with supercuspidal reduction at `5` and `7` (and semistable elsewhere) is handled
  by two applications of §10.6 after one of §10.5.

### Dependencies

Layers 8–9; GL2AutomorphicRepresentationsAndTransfer §§R16.3.1–R16.3.3, R16.3.5, R16.3.7;
ArithmeticGaloisRepresentations §§3.3, 3.6, 4.4, 7.9; FiniteFlatGroupsAndIntegralPadicHodgeTheory
§R07.5.10; ClassicalSerreModularity Layer R27.1; AutomorphicGaloisRepresentations §7.5;
PotentialModularityAndCompatibleSystems §10.10; PotentialAutomorphyInfrastructurePartII PL.1, PL.5;
OrdinaryAutomorphicFormsAndModularityLifting §2.6; SerreWeightAndLevelOptimisation §6.9;
GL2ModularityLifting Layer 3; Chebotarev Layer 10.

## Layer 11: the untwisted tensor product of Newton–Thorne 2026

Newton–Thorne 2026 §3 (nt26 pp. 13–25) proves automorphy of `r_π ⊗ Sym^{r−1} r_σ` for a weight-zero
`π` and a congruent ordinary companion `σ` of weights `{0, 2}`, assuming `SP_{r−1}` and `SP_{r+1}`.
The tensor is residually reducible (its residual representation is that of an isobaric sum of rank
`r + 1` and `r − 1`); the proof compares deformation problems whose local conditions above an
auxiliary place `v_0` have congruent reduced special fibres, uses Thorne's level raising (§6.9) for a
Steinberg seed, and propagates automorphy over all components by generic primes. Fixed types include
monodromy throughout.

### 11.1 The standing hypotheses and auxiliary data of Newton–Thorne 2026 §3

Let `F` be totally real, `p ≥ 5`, `1 < r < p`, `n = 2r`, `ι : ℚ̄_p ≅ ℂ`. Define the standing
hypotheses on a regular algebraic cuspidal `π` of `GL_2(𝔸_F)`: (1) `det r_{π,ι} = ε^{−1}`; (2) weight
`0` and `π_v` an unramified twist of Steinberg at each `v | p`; (3) a place `v_0` with
`q_{v_0} ≡ −1` modulo `p` where `π_{v_0}` is tamely dihedral of order `p`
(GL2AutomorphicRepresentationsAndTransfer §R16.3.7); (4) `r̄_{π,ι}(G_F)` containing a conjugate of
`SL_2(𝔽_{p^a})` with `a > a₀(p)`; (5) `π_v` potentially unramified at every `v ∤ p`. Define the
auxiliary data: a place `v_a ∤ p` where `π` is unramified and the eigenvalue ratio of `r̄(Frob_{v_a})`
satisfies `(α/β)^i ≢ q_{v_a}^{±1}` modulo `p` for `i = 0, …, r`, so that
`H²(F_{v_a}, ad(r̄ ⊗ Sym^{r−1} r̄)^{ss}) = 0` (Lemma 3.3); `M` the extension of `F(ζ_p)` cut out by `r̄`;
a finite set `X_0 ∋ v_a` of prime-to-`p` places such that every Galois subextension `M/M′/F` of degree
`> 1` has a non-split place in `X_0` (so `X_0`-split extensions are linearly disjoint from `M`); an
imaginary quadratic `K_0` in which `p` and the residue characteristics of `X_0 ∪ {v_0}` split, with a
place `u_0 | p`; and soluble totally real `F_2/F_1/F` as in Lemma 3.4: `X_0`-split, `K_1 = K_0F_1`
unramified over `F_1`, `[F_1 : F]` even, trivial residual representation and
`[F_{1,v} : ℚ_p] > n(n + 1)/2 + 1` at every `v | p`, the base change of `π` unramified away from
`p v_0` over `F_1`, `v_0` split in `F_1/F`; over `F_2`, the places above `v_0` with `q ≡ 1` modulo
`p^N` for an `N` with `p^N > n` and trivial residual representation there, the `p`-adic places of
`F_1` split in `F_2`, `d_{0,F_2} > 1`; and everywhere unramified characters `X`, `Y` of `K_1` of type
`A_0` with `X X^c = ε`, `Y Y^c = ω`, `X̄ = Ȳ` and Hodge–Tate weight `0` at `u_0` (nt26 §3, standing
hypotheses, pp. 13–14; Lemma 3.3, p. 15; auxiliary data, p. 16; Lemma 3.4, p. 16). The printed
Lemma 3.4 names the characters as characters "of `K_1`" in one clause and an undefined field `K` in
another; `K_1` is meant. For `r = 1` the theorem of §11.10 is trivial and none of this is needed.

*Proof sketch.* Lemma 3.3 by Chebotarev in the image of `r̄`, which contains `SL_2(𝔽_{p^a})`. Lemma 3.4
by successive soluble base changes with prescribed local behaviour (PotentialAutomorphyInfrastructurePartII
PL.0; ModularityAndLanglandsExtensions §2.13) and the lower bound on the antiunit class-field rank
`d_0` (ArithmeticGaloisDuality §R02.3.5) for `d_{0,F_2} > 1`.

**API.**

- The data `(F, p, r, ι, π)` with conditions (1)–(5).
- The place `v_a` with `H²(F_{v_a}, ad(r̄ ⊗ Sym^{r−1} r̄)^{ss}) = 0`.
- The set `X_0` and the notion of an `X_0`-split extension, linearly disjoint from `M`.
- The fields `K_0`, `F_1`, `F_2`, `K_1 = K_0F_1`, `K_2 = K_0F_2` and the characters `X`, `Y`.

**Checks.**

- For `r = 1`, `r_π ⊗ Sym^0 r_σ = r_π` is automorphic.
- `q_{v_0} ≡ −1` modulo `p` makes `p | q_{v_0} + 1`, so the tamely dihedral type of order `p` exists at
  `v_0`; e.g. `q_{v_0} = 19` for `p = 5`.
- A place with `α/β ≡ q_v^{±1}` modulo `p` is not allowed as `v_a`: then `H²` of the adjoint can be
  non-zero and ramified deformations exist there. For `p = 5`, `r ∈ {2, 3, 4}` and `a > a₀(5) ≥ 3`
  gives `a ≥ 4`.

*Needs:* GL2AutomorphicRepresentationsAndTransfer §R16.3.7; ArithmeticGaloisRepresentations §7.9;
PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble and cyclic CM extensions with prescribed local
behaviour"; "Algebraic characters with prescribed conjugate-norm and local behaviour");
ArithmeticGaloisDuality §R02.3.5; ModularityAndLanglandsExtensions §2.13; Chebotarev Layer 10.

### 11.2 A congruent ordinary companion of weights {0, 2}

Under §11.1, prove that there is a RAESDC `σ` on `GL_2(𝔸_F)` which is ι-ordinary, has
`HT_τ(r_{σ,ι}) = {0, 2}` for every `τ`, determinant `ε^{−2} ω_p` (`ω_p` the Teichmüller lift of `ε`
modulo `p`), residual representation `r̄_{σ,ι} ≅ r̄_{π,ι}`, an unramified Steinberg twist at `v_0`, and
`r_{σ,ι}|_{G_{F_v}} ∼ r_{π,ι}|_{G_{F_v}} ⊗ χ_v` at every finite `v ∤ p v_0`, where `χ_v` is the
unramified character with `χ_v ≡ 1` modulo `ϖ` and `χ_v² = ε^{−1} ω_p` (nt26 Lemma 3.1 and proof,
pp. 13–14). All properties hold for the same `σ`. The printed proof uses the local representation of
`π` itself as a point of a ring with the new determinant; the determinants `ε^{−1}` and `ε^{−2}ω_p`
differ, and the correcting twist `χ_v` (which exists since `p` is odd and the ratio is residually
trivial and unramified) is used here.

*Proof sketch.* Local lifts at `p`: Hida families of Hilbert modular forms
(OrdinaryAutomorphicFormsAndModularityLifting §2.11) specialise `π` to weights `{0, 2}` with
determinant `ε^{−2}ω_p`. Global lifts with prescribed components (PotentialModularityAndCompatibleSystems
§9.2; PotentialAutomorphyInfrastructurePartII PL.7, "Global lifts with prescribed local components
(Bellovin–Gee, Schur form)"): at `v ∤ p v_0` the component through `r_{π,ι}|_{G_{F_v}} ⊗ χ_v`, at
`v | p` the ordinary potentially crystalline component through the local lift, at `v_0` a unipotent
component with generically non-zero monodromy, which exists because the tamely dihedral type of order
`p` reduces to an unramified induced representation with Frobenius ratio `−1 ≡ q_{v_0}` modulo `p`.
The Khare–Wintenberger method: finiteness over `𝒪` (PL.4) gives a characteristic-zero point, and
ordinary automorphy lifting after soluble base change (PL.4) makes it `r_{σ,ι}`.

**API.**

- The companion `σ` with the properties above.
- `HT_τ(r_{σ,ι}) = {0, 2}`; `r̄_{σ,ι} ≅ r̄_{π,ι}`; `det r_{σ,ι} = ε^{−2} ω_p`.
- `σ_{v_0}` is an unramified twist of Steinberg.
- At `v ∤ p v_0`, `r_{σ,ι}|_{G_{F_v}}` is strongly connected to the determinant-corrected local lift
  of `π`; in particular their inertial Weil–Deligne data and monodromy agree, so `σ` is unramified
  wherever `π` is (away from `p v_0`).

**Checks.**

- For `r = 2`, `HT(r_π ⊗ r_σ) = {0, 1} + {0, 2} = {0, 1, 2, 3}`, distinct.
- The reduction of `ε^{−2}ω_p` is `ε̄^{−2} ε̄ = ε̄^{−1} = det r̄_{π,ι}`, as the residual isomorphism
  requires.
- Taking `σ = π` (weights `{0, 1}`) makes `r_π ⊗ Sym^{r−1} r_π` irregular for `r ≥ 2`: for `r = 2`,
  `{0, 1} + {0, 1}` repeats `1`.

*Needs:* §11.1; OrdinaryAutomorphicFormsAndModularityLifting §2.11; PotentialModularityAndCompatibleSystems
§9.2; PotentialAutomorphyInfrastructurePartII PL.1 ("Connecting and strongly connecting local lifts"),
PL.4 ("Finiteness of ordinary polarized deformation rings"; "Ordinary automorphy lifting";
"Characteristic-zero lifts from finiteness and the dimension bound"), PL.7 ("Global lifts with
prescribed local components (Bellovin–Gee, Schur form)").

### 11.3 The polarized representation s and its residual decomposition

With `σ` from §11.2, define over `K_1`
`π_1 = BC(Sym^r σ) ⊗ X Y^{−r} |·|^{(r−1)/2}`, `π_2 = BC(Sym^{r−2} σ) ⊗ X^{−1} Y^{2−r} |·|^{(r−1)/2}` and
`s = (r_{π,ι} ⊗ Sym^{r−1} r_{σ,ι})|_{G_{K_1}} ⊗ y^{1−r}`, assuming `SP_{r−1}` and `SP_{r+1}` (to define
`π_2` and `π_1`). Prove (Lemma 3.5) that `s^c ≅ s^∨ ⊗ ε^{1−2r}`; that `π_1`, `π_2` are cuspidal
conjugate self-dual; that `π_1 ⊞ π_2` is regular algebraic and ι-ordinary; that
`r̄_{π_1 ⊞ π_2,ι} ≅ s̄`; that after conjugation `s` takes values in `GL_n(𝒪)` and extends to
`s : G_{F_1} → 𝒢_n(𝒪)` with multiplier `ε^{1−n} δ^n_{K_1/F_1}`; and that, with `S_{p,F_1}` the
`p`-adic places, `T_{F_1}` (resp. `T′_{F_1}`) the places above `v_0` (resp. `v_a`),
`S_{F_1} = S_{p,F_1} ∪ T_{F_1}` and `S̃_{F_1}` a choice of places of `K_1` above them, `s` is a lift of
`s̄` of type `𝒮_{F_1}` (§11.4): ordinary at `p`, of inertial type `τ_s` at `T_{F_1}`, unramified
outside `S_{F_1}` (nt26 Lemma 3.5, p. 17; the polarized `s` and the sets of §3, p. 17; final step of
the proof of Theorem 3.2, p. 25). Unramifiedness outside `S_{F_1}` uses that `σ` is unramified away
from `p v_0` (§11.2), which the printed proof uses after arranging it only for `π`.

*Proof sketch.* Conjugate self-duality from `det r_π = ε^{−1}`, `det r_σ = ε^{−2} ω_p` and
`y y^c = ω`. The residual decomposition is the mod-`p` Clebsch–Gordan formula
`r̄ ⊗ Sym^{r−1} r̄ ≅ Sym^r r̄ ⊕ (det r̄ ⊗ Sym^{r−2} r̄)` for `r < p` (ArithmeticGaloisRepresentations
§7.8) after twisting. Cuspidality of `π_1`, `π_2` from large image of `Sym^r r̄` and `Sym^{r−2} r̄`;
regularity from the weights `{0, 2}`; ordinarity from that of `σ` (PotentialAutomorphyInfrastructurePartII
PL.0, "Ordinarity of a regular algebraic isobaric sum"). The multiplier of tensor products is
computed from the multipliers of the factors (GlobalGaloisDeformations §8.1).

**API.**

- `s = (r_π ⊗ Sym^{r−1} r_σ)|_{G_{K_1}} ⊗ y^{1−r}` with its `𝒢_n`-extension of multiplier
  `ε^{1−n} δ^n`.
- `s^c ≅ s^∨ ⊗ ε^{1−2r}`.
- `s̄ ≅ r̄_{π_1 ⊞ π_2,ι}`, a sum of constituents of dimensions `r + 1` and `r − 1`.
- `s` is a lift of `s̄` of type `𝒮_{F_1}`.

**Checks.**

- `dim s = 2r = (r + 1) + (r − 1)`; for `r = 2` the constituents have dimensions `3` and `1`
  (`Sym² r̄` and `det r̄`, twisted).
- `s̄` is reducible although `s` is irreducible: the residual decomposition is what the residually
  reducible theory of PotentialAutomorphyInfrastructurePartII PL.6–PL.7 uses.
- For `r = 1` there is no `π_2` (rank `0`), which is why `r > 1` here.

*Needs:* §§11.1, 11.2; ArithmeticGaloisRepresentations §7.8; ModularityAndLanglandsExtensions §1.12;
GlobalGaloisDeformations §8.1; PotentialAutomorphyInfrastructurePartII PL.0 ("Ordinarity of a regular
algebraic isobaric sum").

### 11.4 The deformation problems `𝒮_{F₁}`, `𝒮′_{F₁}`, `𝒮′_{F₂}`, `𝒮_{F₃}`

For `F′ ∈ {F_1, F_2, F_3}` (`F_3` from §11.8) with `K′ = K_0 F′`, define the polarized deformation
problem `𝒮 = (K′/F′, S_{F′}, S̃_{F′}, Λ_{F′}, s̄|_{G_{F′}}, ε^{1−n} δ^n_{K′/F′}, {R^Δ_v}_{v ∈ S_{p,F′}} ∪ {R^?_v}_{v ∈ T_{F′}})` with `S_{F′} = S_{p,F′} ∪ T_{F′}` (the places above `v_a`
are not in `S`), `Λ_{F′} = ⊗̂_{v ∈ S_{p,F′}} 𝒪[[I^{ab}_{K′_ṽ}(p)^n]]` of dimension `n[F′ : ℚ] + 1`,
`R^Δ_v` the ordinary condition at `p`, and at `T_{F′}`: the fixed Weil–Deligne type `τ_s` of `s`,
including its monodromy partition (`𝒮_{F_1}`), the type of the special representation `Sp_n`,
including its regular nilpotent monodromy (`𝒮′_{F_1}`), the Steinberg ring `R^{St}_v` (`𝒮′_{F_2}`), or
the unipotently ramified ring `R^1_v` (`𝒮_{F_3}`). Prove (Lemma 3.7) that for `X_0`-split totally real
`F′ ⊇ F_1`: `K′ ⊄ F′(ζ_p)`; `s̄|_{G_{K′}} ≅ ρ̄_1 ⊕ ρ̄_2` with `ρ̄_i^c ≅ ρ̄_i^∨ ε^{1−n}`, of dimensions
`r + 1` and `r − 1`, non-isomorphic over `K′(ζ_p)`; `s̄|_{G_{K′}}` is primitive; and `s̄(G_{K′})` has
no quotient of order `p` (nt26 §3 after Lemma 3.7, deformation problems, pp. 19–20; Lemma 3.7,
p. 19). The printed proof of Lemma 3.7 asserts an equality of images that includes the twist `ȳ`;
`X_0` controls only the image of `r̄_π`, and that equality is what is used, for `F′ ⊇ F_1` (where `s̄`
is defined).

*Proof sketch.* Polarized deformation problems with `Λ`-structure (GlobalGaloisDeformations §8.1;
PotentialAutomorphyInfrastructurePartII PL.2, "Ordinary deformation data and their Hecke
comparison"); local rings from LocalGaloisDeformationRings §§2.18, 2.24, 2.26. Lemma 3.7 from
`X_0`-splitness (linear disjointness from `M`), large image and `r + 1 ≠ r − 1`.

**API.**

- The four problems `𝒮_{F_1}` (type `τ_s` at `T_{F_1}`), `𝒮′_{F_1}` (special type), `𝒮′_{F_2}`
  (Steinberg rings at `T_{F_2}`), `𝒮_{F_3}` (unipotently ramified rings at `T_{F_3}`).
- Restriction maps `R_{𝒮_{F_3}} → R_{𝒮′_{F_2}}` and `R_{𝒮_{F_3}} → R_{𝒮_{F_1}}` of
  `Λ_{F_3}`-algebras.
- Maps from each universal ring classify lifts of the fixed polarized residual extension over the
  named field with ordinary characters and the precise local quotient, monodromy included; pullback
  along a restriction map agrees with Galois restriction.

**Checks.**

- `dim Λ_{F′} = n[F′ : ℚ] + 1`; for `n = 4`, `[F′ : ℚ] = 2` this is `9`.
- The places above `v_a` are not in `S_{F′}`: lifts are unramified there automatically by Lemma 3.3,
  so no local condition is imposed.
- For `r = 3`, `s̄|_{G_{K′}} = ρ̄_1 ⊕ ρ̄_2` with `dim ρ̄_1 = 4` and `dim ρ̄_2 = 2`.

*Needs:* §11.3; GlobalGaloisDeformations §8.1; PotentialAutomorphyInfrastructurePartII PL.2
("Ordinary deformation data and their Hecke comparison"), PL.6 ("Primitive representations");
LocalGaloisDeformationRings §§2.18, 2.24, 2.26.

### 11.5 Two inertial types with the same reduced special fibre, and the comparison of deformation rings

For `v ∈ T_{F_1}`, let `R^□_v` be the unrestricted lifting ring of `s̄|_{G_{K_{1,ṽ}}}`, `R_v` its
quotient for the inertial type `τ_s` of `s` and `R′_v` its quotient for the type of `Sp_n`. Prove
(Lemma 3.6) that `R_v` and `R′_v` are non-zero and `(R_v/(ϖ))^{red} ≅ (R′_v/(ϖ))^{red}` as
`R^□_v`-algebras, and (Lemma 3.8) that consequently
`(R_{𝒮_{F_1}}/(ϖ))_{red} ≅ (R_{𝒮′_{F_1}}/(ϖ))_{red}` and restriction gives a finite morphism
`R_{𝒮′_{F_2}} → R_{𝒮′_{F_1}}` (nt26 Lemma 3.6, p. 18; Lemma 3.8, p. 20).

*Proof sketch.* Under Jacquet–Langlands for the division algebra the two types correspond to
characters of order `p` and order `1`, which have the same reduction modulo `p`; Breuil–Mézard cycles
for division algebras away from `p` (LocalGaloisDeformationRings §2.27) are then equal for these
types (not for arbitrary congruent inertial restrictions). Both rings are `𝒪`-flat, reduced and
equidimensional of dimension `1 + n²` with special fibres pure of dimension `n²`
(LocalGaloisDeformationRings §§2.13, 2.24), so equal cycles give the same generic points and equal
reduced special fibres in the common unrestricted special fibre; non-emptiness from the exhibited
characteristic-zero types. Present the global problems with the same auxiliary global relations over
the local rings to transfer the equality; finiteness of restriction is PotentialAutomorphyInfrastructurePartII
PL.6 ("Restriction of pseudodeformations to a finite-index subgroup is finite").

**Checks.**

- Equality of mod-`p` inertial restrictions alone is insufficient: the cycle equality and purity of
  dimension `n²` are what give equality of reduced special fibres.
- Both `R_v` and `R′_v` have dimension `1 + n²`; for `r = 2` (`n = 4`) their reduced special fibres
  are pure of dimension `16`.
- The characteristic-zero fibres differ: `R_v[1/p]` and `R′_v[1/p]` have no common points, since
  their inertial types differ.

*Needs:* §11.4; LocalGaloisDeformationRings §§2.13, 2.24, 2.27; PotentialAutomorphyInfrastructurePartII
PL.6 ("Restriction of pseudodeformations to a finite-index subgroup is finite").

### 11.6 Finiteness of `R_{𝒮′_{F₂}}` and a Steinberg automorphic lift

Assume `SP_{r−1}` and `SP_{r+1}` (ModularityAndLanglandsExtensions §1.12). Prove that `R_{𝒮′_{F_2}}` is
finite over `Λ_{F_2}`, and that there is an ι-ordinary RACSDC `Π` of `GL_n(𝔸_{K_2})`, unramified outside
`S_{F_2}`, with `r̄_{Π,ι} ≅ s̄|_{G_{K_2}}` and `Π_ṽ` an unramified twist of Steinberg for each
`v ∈ T_{F_2}` (nt26 Proposition 3.9 and proof, pp. 20–21). Primitivity is geometric weak primitivity
with the common splitting field.

*Proof sketch.* Choose `v_2 ∉ S ∪ X_0` with `q_{v_2} ≡ 1` modulo `p` and trivial residual
representation, all other places of its residue characteristic unramified in the construction; raise
the `GL_2`-level of `σ` at `v_2` (SerreWeightAndLevelOptimisation §2.4) and apply `SP_{r−1}`,
`SP_{r+1}` to obtain ordinary automorphic lifts of both residual constituents (twists of `Sym^r r̄_σ`
and `Sym^{r−2} r̄_σ`), Steinberg at the place above `v_2`. Apply residually reducible finiteness with
the auxiliary Steinberg condition at `v_2` (PotentialAutomorphyInfrastructurePartII PL.7, "Finiteness
with an unobstructed auxiliary place", in the geometric weak-primitive form of the supplier
contracts); the Khare–Wintenberger lifting argument and Thorne's level raising (§6.9) produce an ordinary
automorphic lift `Π′` with the prescribed types, Steinberg at `T` and at `v_2`. Then remove the extra
Steinberg condition: apply finiteness a second time with `Π′` as automorphic input to obtain
finiteness of `R_{𝒮′_{F_2}}`, and extract `Π`. A single finiteness application does not justify this
relaxation.

**Checks.**

- For `r = 2` the constituents are twists of `Sym² r̄_σ` and of a character; `SP_1` and `SP_3` hold
  unconditionally (ModularityAndLanglandsExtensions §1.15).
- The Steinberg condition at `T_{F_2}` is possible because `q ≡ 1` modulo `p^N` and `r̄` is trivial
  at the places above `v_0` over `F_2` (§11.1).
- Without the auxiliary place `v_2` the residual constituents would need automorphic lifts Steinberg
  at `T` directly, which `SP_{r±1}` does not supply.

*Needs:* §11.4; §6.9; SerreWeightAndLevelOptimisation §2.4; ModularityAndLanglandsExtensions §§1.12,
1.15; PotentialAutomorphyInfrastructurePartII PL.6 ("Weak primitivity over a splitting coefficient
field"), PL.7 ("The ANT finiteness theorem with source primitivity"; "Finiteness with an unobstructed
auxiliary place") (gap:geometric-weak-primitive-auxiliary-finiteness).

### 11.7 Generic primes on every component

Prove (Proposition 3.10) that the graph whose vertices are the minimal primes of `R_{𝒮′_{F_2}}/(ϖ)`,
with `Q`, `Q′` joined when `Q + Q′` lies in a generic prime of dimension `1`, is connected; and
(Proposition 3.11) that `R_{𝒮_{F_1}}` is finite over `Λ_{F_1}`, each of its minimal primes has dimension
`dim Λ_{F_1}` and characteristic `0` and lies in a generic prime of dimension `1` and characteristic
`p`. Consequently there is a finite set `𝒫` of generic primes of `R_{𝒮′_{F_2}}` of dimension `1` and
characteristic `p` witnessing every edge of the graph, such that every minimal prime of `R_{𝒮_{F_1}}`
lies in a generic `𝔭` with `𝔭_{F_2} ∈ 𝒫` (nt26 Proposition 3.10, p. 21; Proposition 3.11, p. 22; the
set `𝒫`, pp. 22–23). The bound `d_{0,F_2} > 1` of §11.1 controls the reducible locus.

*Proof sketch.* Proposition 3.10: the connectedness dimension of `R_{𝒮′_{F_2}}/(ϖ)`
(PotentialAutomorphyInfrastructurePartII PL.6, "Connectedness dimension and arithmetic rank") with
the bound on the reducible locus by `d_{0,F_2}` (PL.6, "The reducible locus is small in the presence of
Steinberg places"). Proposition 3.11: §11.5 transfers finiteness and components from `𝒮′_{F_1}` to
`𝒮_{F_1}`; large quotients contain generic primes (PL.6). `𝒫`: the splitting of the `p`-adic places of
`F_1` in `F_2` lets generic primes over `F_2` restrict to generic primes over `F_1`.

**Checks.**

- If `R_{𝒮′_{F_2}}/(ϖ)` had two components meeting only in the reducible locus, the graph would be
  disconnected; `d_{0,F_2} > 1` excludes this.
- A single component gives a graph with one vertex and no edges, and `𝒫` may be taken to contain one
  generic prime on it.
- Minimal primes of characteristic `0` and dimension `dim Λ_{F_1}` are what make the characteristic-`p`
  generic primes of dimension `1` exist inside them.

*Needs:* §§11.5, 11.6; PotentialAutomorphyInfrastructurePartII PL.6 ("Connectedness dimension and
arithmetic rank"; "The reducible locus is small in the presence of Steinberg places"; "Large quotients
contain generic primes"; "Generic primes of an ordinary deformation ring").

### 11.8 An extension making generic points scalar, and the generic R = T theorem

Prove (Proposition 3.12) that there is a totally real `F_3/F_2`, soluble and `X_0`-split over `F`, in
which each `p`-adic place of `F_2` splits, such that for every `𝔭 ∈ 𝒫` and `v ∈ T_{F_3}`,
`r_𝔭|_{G_{K_3,ṽ}}` is unramified with scalar Frobenius; and (Proposition 3.13) that if
`𝔭 ⊂ R_{𝒮_{F_3}}` is a generic prime of dimension `1` and characteristic `p` with `J_{𝒮_{F_3}} ⊂ 𝔭` and
`r_𝔭|_{G_{K_3,ṽ}}` scalar for each `v ∈ T_{F_3}`, then every prime `Q ⊂ 𝔭` contains `J_{𝒮_{F_3}}` (nt26
Proposition 3.12, p. 23; Proposition 3.13, p. 24). The residual coefficient field is chosen at the
start to split every subgroup of the residual image, and geometric weak primitivity is verified
before this choice.

*Proof sketch.* Proposition 3.12: adjoin an `X_0`-split soluble extension of `F` sufficiently tamely
ramified at `v_0`, so that the finitely many local representations `r_𝔭|_{G_{K_ṽ}}` become unramified
with scalar Frobenius. Proposition 3.13: for trivial restriction this is the weak-primitive generic
`R = T` theorem (PotentialAutomorphyInfrastructurePartII PL.6); the scalar case reduces to it by
twisting (PL.6, "Twisting and soluble base change for residually reducible rings and Hecke algebras").

**Checks.**

- Trivial restriction at `T_{F_3}` is the scalar case with scalar `1`.
- `𝒫` is finite, which is what allows a single `F_3` to work for all its members.
- If the restriction at some `v ∈ T_{F_3}` were non-scalar unipotent, the generic `R = T` theorem
  would not apply directly.

*Needs:* §11.7; PotentialAutomorphyInfrastructurePartII PL.6 ("Weak-primitive generic `R=T` theorem";
"Twisting and soluble base change for residually reducible rings and Hecke algebras"; "Weak-primitive
generic restriction"; "Weak primitivity over a splitting coefficient field").

### 11.9 Every component of the Steinberg problem is automorphic after restriction

Prove that there are `Λ_{F_3}`-algebra maps `R_{𝒮_{F_3}} → R_{𝒮′_{F_2}}` and
`R_{𝒮_{F_3}} → R_{𝒮_{F_1}}` by restriction (`τ_s` becomes unipotent over `F_3` because the base change
of `π` to `F_2` is unramified above `v_0`), compatible maps of the pseudodeformation subrings, and
`𝕋_{F_3} → 𝕋_{F_2}` by soluble base change, so that `J_{𝒮_{F_3}} P_{𝒮′_{F_2}} ⊂ J_{𝒮′_{F_2}}`; and
(Proposition 3.14) that for every prime `Q ⊂ R_{𝒮′_{F_2}}/(ϖ)` its pullback `Q_{F_3}` to `R_{𝒮_{F_3}}`
contains `J_{𝒮_{F_3}}` (nt26 the comparison diagram, p. 24; Proposition 3.14 and proof, p. 24).

*Proof sketch.* The restriction and ordinary Hecke base-change diagram, with the same
pseudodeformation subrings (PotentialAutomorphyInfrastructurePartII PL.6; §6.3). The ordinary Hecke
algebra of the Steinberg seed of §11.6 is faithful over `Λ`; with finiteness and equidimensionality
this gives a minimal characteristic-`p` component containing the Hecke kernel. Propagate along the
connected graph of §11.7: at each edge, pull its witness in `𝒫` back to `F_3`, where it is locally
scalar by Proposition 3.12; Proposition 3.13 puts the Hecke kernel into both adjacent component
primes. Every vertex, and hence every prime above a vertex, contains the pulled-back kernel.

**Checks.**

- One automorphic component plus connectivity gives all components.
- If the graph had two connected components, only the one containing the seed would be reached.
- The inclusion `J_{𝒮_{F_3}} P_{𝒮′_{F_2}} ⊂ J_{𝒮′_{F_2}}` is the compatibility of Hecke kernels with
  base change; without it the propagation would not return to `F_2`.

*Needs:* §§11.6–11.8; §6.3; PotentialAutomorphyInfrastructurePartII PL.6 ("Twisting and soluble base
change for residually reducible rings and Hecke algebras").

### 11.10 Automorphy of the untwisted tensor `r_π ⊗ Sym^{r−1} r_σ` (Newton–Thorne 2026 Theorem 3.2)

Under §11.1, assume `SP_{r−1}` and `SP_{r+1}`. Prove that for any `σ` with the properties of §11.2,
`r_{π,ι} ⊗ Sym^{r−1} r_{σ,ι} ≅ r_{Π,ι}` for an ι-ordinary RAESDC `Π` on `GL_{2r}(𝔸_F)` (nt26 Theorem 3.2,
p. 13; completion of the proof, p. 25). For `r = 1` the statement is trivial. This is the tensor
theorem for the prescribed `π` and `σ`, not general `GL_2 × GL_r` functoriality.

*Proof sketch.* `s` gives `f : R_{𝒮_{F_1}} → 𝒪` (§11.3). Choose a minimal prime `Q ⊂ ker(f)`;
Proposition 3.11 puts `Q` in a characteristic-`p` dimension-one generic prime `𝔭` with `𝔭_{F_2} ∈ 𝒫`.
Proposition 3.14 gives `J_{𝒮_{F_3}} ⊂ 𝔭_{F_3}`; Proposition 3.12 makes the local restrictions of this
generic representation scalar; Proposition 3.13, applied to `Q_{F_3} ⊂ 𝔭_{F_3}`, gives
`J_{𝒮_{F_3}} ⊂ Q_{F_3} ⊂ ker(f)_{F_3}` (membership in the larger generic prime alone does not give
automorphy of `f`). The Hecke support criterion gives automorphy of `s|_{G_{K_3}}`; undo `X`, `Y` and
descend from `K_3` to `K_1` and then to `F` (PotentialAutomorphyInfrastructurePartII PL.0).

**Checks.**

- For `r = 2` the tensor `r_π ⊗ r_σ` is automorphic by Ramakrishnan (ModularityAndLanglandsExtensions
  §1.11), a consistency check.
- For `r = 1` the conclusion is the automorphy of `r_π`, and `SP_0` is never invoked.
- Hodge–Tate weights of `r_π ⊗ Sym^{r−1} r_σ` are `{0, 1, …, 2r − 1}`, so `Π` is regular algebraic.

*Needs:* §§11.3, 11.5, 11.8, 11.9; PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble base change
and descent of automorphy"; "Automorphy of an induced representation descends"; "Automorphy is
invariant under algebraic twists"); ModularityAndLanglandsExtensions §1.11.

### Examples

- `p = 5`, `r = 2`: `n = 4`, `s̄` splits as `3 + 1`, and the theorem uses `SP_1`, `SP_3`.
- `p = 7`, `r = 3`: `n = 6`, `s̄` splits as `4 + 2`, and the theorem uses `SP_2`, `SP_4`.

### Dependencies

Layer 6; GL2AutomorphicRepresentationsAndTransfer §R16.3.7; ArithmeticGaloisRepresentations §§7.8,
7.9; ArithmeticGaloisDuality §R02.3.5; ModularityAndLanglandsExtensions §§1.11, 1.12, 1.15, 2.13;
PotentialAutomorphyInfrastructurePartII PL.0, PL.1, PL.2, PL.4, PL.6, PL.7; GlobalGaloisDeformations
§8.1; LocalGaloisDeformationRings §§2.13, 2.18, 2.24, 2.26, 2.27; OrdinaryAutomorphicFormsAndModularityLifting
§2.11; PotentialModularityAndCompatibleSystems §9.2; SerreWeightAndLevelOptimisation §2.4; Chebotarev
Layer 10.

## Layer 12: functoriality lifting for tensor products

Newton–Thorne 2026 §4 (nt26 pp. 25–37) proves that automorphy of `r_π ⊗ r_σ` passes to
`r_{π′} ⊗ r_σ` for congruent `π`, `π′` with `σ` fixed, by the template of Layer 9: the rank-two
deformation ring of `r̄_π` and the rank-`2r` conjugate self-dual pseudodeformation ring of the tensor
are patched simultaneously, and regularity at the automorphic point (from characteristic-zero
enormous image and adjoint Selmer vanishing) transfers automorphy. This proves the first paragraph
of ModularityAndLanglandsExtensions §4.23. Throughout `Σ_π` is the ramification set of `π` (and `π′`)
and `Σ = Σ_π ∪ Σ_σ`; the quaternion algebra is ramified only at `Σ_π` away from `p`, while `S` and the
unitary level use all of `Σ`. The printed proof takes `S = S_p ∪ Σ_π` only, which does not cover the
application in §13.4, where `σ = Sym^{r−1} σ′` is ramified where `π` is not; the places of `Σ_σ − Σ_π`
are added to `S` and to the unitary Iwahori level with unramified rank-two local conditions and split
quaternion algebra.

### 12.1 Preliminary reductions and the CM set-up for tensor functoriality lifting

In the situation of §12.7, prove that after a soluble totally real base change (from which the
conclusion descends) one may assume in addition: (10) `det r_π = det r_{π′} = ε^{−1}`; (11) `[F : ℚ]`
even; (12) `π_v`, `π′_v` and `σ_v` Iwahori-spherical at every finite `v`, with an even number of places
where `π`, `π′` are ramified; (13) with `S = S_p ∪ Σ`, `r̄_{π,ι}|_{G_{F_v}}` trivial for `v ∈ S`, and
for `v ∈ Σ` away from `p`, `q_v ≡ 1` modulo `p` with `π_v`, `π′_v` Steinberg or unramified as the case
may be (if `Σ ∩ S_p ≠ ∅` then `p > 2`); (14) an `S`-split everywhere unramified quadratic CM `K/F` with
CM type `Φ` and places `S̃`; (15) everywhere unramified type-`A_0` characters `X`, `Y` of `K` with
`X ∘ N = χ ∘ N` (where `σ ≅ σ^∨ ⊗ χ`), `Y ∘ N = |·|` and prescribed infinity types; (16)
`(r_π ⊗ r_σ)|_{G_{K(ζ_{p^∞})}}` and `(r_{π′} ⊗ r_σ)|_{G_K}` irreducible. Define `π_K = BC(π)`,
`π′_K = BC(π′)`, `σ_K = BC(σ) ⊗ X^{−1}`, the RACSDC representation `T` of `GL_n(𝔸_K)` of weight `0`
with `r_T ≅ r_{π_K} ⊗ r_{σ_K} ⊗ r_Y^{1−r}`, integral models `r`, `r′`, `s` (`r̄ = r̄′`), and the group
determinants `t`, `t′` of `(r ⊗ s)|_{G_K} ⊗ r_{X^{−1}Y^{1−r}}` and its `π′`-analogue, with common
reduction `t̄` (nt26 proof of Theorem 4.1, reductions (10)–(16), pp. 26–27; the CM set-up,
pp. 27–28).

*Proof sketch.* Soluble base change preserves (1)–(9) of §12.7 and the conclusion descends
(PotentialAutomorphyInfrastructurePartII PL.0). `X X^c = χ ∘ N` and `Y Y^c = |·|_K` give
`r_T^c ≅ r_T^∨ ⊗ ε^{1−2r}`, and `X^{−1} Y^{1−r}` has trivial infinity type (PL.0, auxiliary
characters).

**Checks.**

- For `r = 1`, `σ` is a character, `T = π_K ⊗ σ_K`, and the argument is rank-two modularity lifting.
- At a place of `Σ_σ − Σ_π` the quaternion algebra is split and the rank-two condition is
  unramified; putting the place into the quaternionic ramification instead would change the rank-two
  automorphic input.
- `n = 2r` and `T` has weight `0`, so its Hodge–Tate weights are the `2r` distinct integers
  `{0, …, 2r − 1}` up to a common shift, by (7) of §12.7.

*Needs:* PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble base change and descent of
automorphy"; "Soluble and cyclic CM extensions with prescribed local behaviour"; "Algebraic characters
with prescribed conjugate-norm and local behaviour"); GL2ModularityLifting Layer 2.

### 12.2 Artinian points are torsion semistable, and the tensor map P → R

In the setting of §12.1, prove (Lemma 4.2) that for Artinian `A ∈ 𝒞_𝒪`, `v ∈ S_p` and a lift `r̃_A` of
`r̄|_{G_{F_v}}` of determinant `ε^{−1}` of the given type at `v`, the module `A^{2r}` with the action
`r̃_A ⊗ s|_{G_{K_ṽ}} ⊗ r_{X^{−1}Y^{1−r},ι}` is a subquotient of a lattice in a semistable
representation with Hodge–Tate weights in a fixed interval `[a, b]`; and (Corollary 4.3) that
`r̃ ↦ (r̃ ⊗ s)|_{G_K} ⊗ r_{X^{−1}Y^{1−r},ι}` defines a morphism `P → R` in `𝒞_𝒪` from the conjugate
self-dual pseudodeformation ring of rank `2r` (semistable in the torsion sense at `p`) to the
rank-two deformation ring `R`, and `t`, `t′` give homomorphisms `P → 𝒪` (nt26 Lemma 4.2,
pp. 28–29; Corollary 4.3, p. 29).

*Proof sketch.* At a potentially crystalline place of weights `{0, 1}`, each Artinian rank-two point
is a quotient of a lattice in a crystalline representation with weights `{0, 1}`
(FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.4, supplier contracts); tensor with the fixed
semistable lattice and character, which gives a uniform interval. At a non-crystalline ordinary place
use the closed stable torsion-semistable quotient `R′` of the local ring (LocalGaloisDeformationRings
§§8.12, 8.14): the reduced local ring has dense characteristic-zero semistable points, all of which
factor through `R′`, so the whole map does, and every Artinian specialisation is torsion semistable
(an ordinary filtration alone does not give this). The universal property of the semistable
pseudodeformation ring (PotentialAutomorphyInfrastructurePartII PL.8) gives `P → R` and the two
`𝒪`-points.

**Checks.**

- At the automorphic point the map `P → 𝒪` given by `t` is the composite of `R → 𝒪` (from `r`) with
  `P → R`.
- For `r = 1` the map `P → R` is the twist of the rank-two trace by the character `s ⊗ r_{X^{−1}}`.
- The interval `[a, b]` depends only on `s` and the fixed character, not on `A`, which is what the
  torsion-semistable condition needs.

*Needs:* §12.1; §9.2; LocalGaloisDeformationRings §§8.12, 8.14; PotentialAutomorphyInfrastructurePartII
PL.8 ("Semistable conjugate self-dual pseudodeformation rings"); FiniteFlatGroupsAndIntegralPadicHodgeTheory
§R07.4.20 (gap:artinian-crystalline-quotients).

### 12.3 Taylor–Wiles data and rings for the tensor product

Let `N ≥ 1`. Define a Taylor–Wiles datum of level `N` for the tensor as
`(Q, Q̃, (α_v, β_v), (γ_{v,1}, …, γ_{v,r}))` with `Q` disjoint from `S` and split in `K`,
`q_v ≡ 1` modulo `p^N`, a factorisation `v = ṽṽ^c`, `(r̄ ⊗ s̄)(Frob_ṽ)` having `2r` distinct eigenvalues,
`α_v`, `β_v` the eigenvalues of `r̄(Frob_ṽ)` and `γ_{v,i}` those of `(s̄ ⊗ r_{X^{−1}Y^{1−r}})(Frob_ṽ)`.
Attach `Δ_Q`, with `R_Q` an `𝒪[Δ_Q]`-algebra such that `R_Q ⊗_{𝒪[Δ_Q]} 𝒪 ≅ R`; `P_Q`, the quotient of
the pseudodeformation ring of `G_{K,S∪Q}` by the Taylor–Wiles conditions (at `ṽ ∈ Q̃` the residual
characters are `α_v γ_{v,i}` for `i ≤ r` and `β_v γ_{v,i−r}` for `i > r`), with its `𝒪[Δ′_Q]`-structure,
`Δ′_Q = Δ_Q^{2r}`; and the map `P_Q → R_Q` extending §12.2 (nt26 §4 after Corollary 4.3, Taylor–Wiles
data and the rings, pp. 29–30). At the auxiliary places the decomposition is into ordered lifts of the
residual eigencharacters, which may be ramified and encode the diamond action.

*Proof sketch.* As §9.3, with the tensor eigenvalue pattern in place of the symmetric-power monomials,
using uniqueness of decompositions of multiplicity-free pseudocharacters (IntegralHeckeAndGaloisDeterminants
§1.4). The existence of enough data uses the perfect residual subgroup containing an element with
`2r` distinct eigenvalues (hypothesis (6) of §12.7) and rank-two large residual image
(GlobalGaloisDeformations Layer G7, supplier contracts); characteristic-zero enormous image is a
different hypothesis and does not give this.

**API.**

- A level-`N` datum with `2r` distinct eigenvalues of `(r̄ ⊗ s̄)(Frob_ṽ)`.
- `Δ_Q`, `Δ′_Q`, `R_Q` and `P_Q` with their group-ring structures, and `P_Q → R_Q` extending `P → R`.
- At `ṽ ∈ Q̃` the residual characters of `P_Q` are `α_v γ_{v,i}` (`i ≤ r`) and `β_v γ_{v,i−r}`
  (`i > r`).
- Specialising all rank-two diamond characters to the identity gives `R_Q ⊗_{𝒪[Δ_Q]} 𝒪 ≅ R`; the map
  on rank-`2r` local characters is the ordered tensor product with the fixed factor.

**Checks.**

- There are `2r` residual characters at each `ṽ`: `r` of the form `α_v γ_{v,i}` and `r` of the form
  `β_v γ_{v,i}`.
- For `r = 1` the condition is `α_v ≠ β_v`, a rank-two Taylor–Wiles datum with `γ_{v,1}` a fixed
  scalar.
- If `α_v γ_{v,1} = β_v γ_{v,2}`, the `2r` eigenvalues are not distinct and `v` is not a Taylor–Wiles
  place.

*Needs:* §12.2; §9.3; GlobalGaloisDeformations §8.5 (gap:tensor-taylor-wiles-primes);
IntegralHeckeAndGaloisDeterminants §1.4.

### 12.4 Unitary automorphic forms at Taylor–Wiles level for the tensor

Let `G` be the definite unitary group over `F` with
`G(R) = {g ∈ M_n(𝒪_K ⊗ R) : g = (1 ⊗ c)(g)^{−t}}`, `H_G(V)` the `𝒪`-valued forms of level `V`, `V_0`
Iwahori at `Σ` (including `Σ_σ`) and hyperspecial elsewhere, `V_0(Q) ⊃ V_1(Q; N)` with quotient
`Δ′_Q/(p^N)`, and maximal ideals `𝔪_G`, `𝔪_{G,Q}`, where, ordering the eigenvalues
`η = (αγ_1, …, αγ_r, βγ_1, …, βγ_r)`, `𝔪_{G,Q}` contains `U^{(i)} − q^{i(1−i)/2} ∏_{j=1}^{i} η_j` at each
auxiliary place; for `i > r` this product is
`α^r β^{i−r} (∏_{j=1}^{r} γ_j)(∏_{j=1}^{i−r} γ_j)`. Prove (Lemma 4.5) that for `p = 2` each quadratic
`χ` of `F^× \ (𝔸_F^∞)^×/det U_1(Q; N)` has a unique quadratic `θ_χ` with
`θ_χ(z/z^c) = χ ∘ N_{K/F}(z)`; and (Proposition 4.6) that for a datum of level `N + c_G`, where
`p^{c_G}` kills the `p`-primary base-level stabilisers, `𝔪_G` and `𝔪_{G,Q}` are in the supports,
`H_G(V_1(Q; N))_{𝔪_{G,Q}}` is free over `𝒪[Δ′_Q/(p^N)]` with coinvariants `H_G(V_0)_{𝔪_G}`, and it
carries a compatible `P_Q`-module structure (nt26 §4, unitary forms, pp. 31–32; Lemma 4.5, p. 32;
Proposition 4.6, p. 33). The printed generator of `𝔪_{G,Q}` for `i > r` omits the factor
`∏_{j=1}^{r} γ_j`; the product of the first `i` entries of `η` is meant.

*Proof sketch.* As §9.4: at level `N + c_G` the deck group acts freely, exactness gives freeness and
the trace identifies the coinvariants (PotentialAutomorphyInfrastructurePartII PL.2). Support from
Labesse's descent of the automorphic `T` (EndoscopicTransferAndUnitaryTraceComparison §6.29). The
ordered cumulative products `η_1 ⋯ η_i` define `𝔪_{G,Q}`, and the multiplicity-free decomposition of the
Hecke determinant gives the `P_Q`-action. Lemma 4.5 by Hilbert 90. For `p = 2` the dyadic forms of
PL.2 are used (supplier contracts).

**Checks.**

- For `N = 1`, augmentation from `𝒪[Δ′_Q/(p)]` recovers `H_G(V_0)_{𝔪_G}` with its Hecke action.
- For `r = 1`, `i = 2`: `η_1 η_2 = αγ_1 · βγ_1 = αβγ_1²`, which the corrected formula gives; the
  printed formula, without `∏_{j ≤ r} γ_j`, gives `αβγ_1`.
- With `σ`-only places omitted from the Iwahori level, the form `T` (ramified there) would not
  contribute to `H_G(V_0)`, and `𝔪_G` would not be in the support.

*Needs:* §§9.4, 12.3; PotentialAutomorphyInfrastructurePartII PL.2 ("Algebraic modular forms on a
definite unitary group"; "Exactness and group-ring freeness at `l`-torsion-free level"; "Base change
and descent between definite unitary groups and `GL_n`") (gap:dyadic-definite-unitary-forms);
EndoscopicTransferAndUnitaryTraceComparison §6.29.

### 12.5 The tensor image is enormous

Prove that the image of `(r ⊗ s)|_{G_K} ⊗ r_{X^{−1}Y^{1−r},ι}` restricted to `G_{K(ζ_{p^∞})}` is enormous
in the sense of ArithmeticGaloisRepresentations §7.10 (as used in ModularityAndLanglandsExtensions
§4.1), after enlarging the coefficient field so that every characteristic polynomial splits (nt26
Lemma 4.7 and proof, pp. 33–34). The inputs are hypothesis (8) of §12.7 (strong irreducibility of
`r_π ⊗ r_σ`) and Hodge–Tate regularity of the tensor (weights `{0, 1, …, 2r − 1}` by (7)).

*Proof sketch.* By the criterion of ArithmeticGaloisRepresentations §7.10 it suffices that the
derived subgroup `G^1` of the identity component `G^0` of the Zariski closure of the image contains
regular semisimple elements and acts absolutely irreducibly; `G^1` lies in the Zariski closure of the
image of `G_{K(ζ_{p^∞})}` (§7.6 there). `G^0` acts irreducibly because the representation is strongly
irreducible, so its centre is scalar and `G^0 = G^1` or `G^1 𝔾_m`, hence `G^1` acts irreducibly. At
`v ∈ S_p` the Sen operator lies in `Lie G^0` (PadicHodgeTheory §4.4) and has `n` distinct eigenvalues
by Hodge–Tate regularity; a maximal-torus argument gives regular semisimple elements in `G^0`, hence in
`G^1`. Enormousness is the input to adjoint Selmer vanishing (ModularityAndLanglandsExtensions §4.1;
PotentialAutomorphyInfrastructurePartII PL.8) at the automorphic point.

**Checks.**

- A tensor that is not Hodge–Tate regular (`σ` of weights `{0, 1, …, r − 1}` instead of
  `{0, 2, …, 2r − 2}`) need not have a Sen operator with distinct eigenvalues: for `r = 2`,
  `{0, 1} + {0, 1}` repeats `1`, and the criterion fails.
- `SO(Q)`-valued images show why the coefficient field must split the characteristic polynomials
  (the hypothesis of ArithmeticGaloisRepresentations §7.10).
- For `r = 1` the tensor is a twist of `r_π`, and enormousness of an image containing `SL_2` up to
  scalars is the classical rank-two statement.

*Needs:* §12.1; ArithmeticGaloisRepresentations §§7.6, 7.10; PadicHodgeTheory §4.4;
ModularityAndLanglandsExtensions §4.1; PotentialAutomorphyInfrastructurePartII PL.8 ("Vanishing of
adjoint Bloch–Kato Selmer groups of unitary type").

### 12.6 Patching for tensor functoriality lifting

Prove (`p > 2`, Proposition 4.8) that there are `W_∞ = 𝒪[[Y_1, …, Y_q, Z_1, …, Z_{4|S∪S_∞|−1}]]` and
`W′_∞` (with `n` copies of the `Y`-variables), a `W′_∞`-algebra `P_∞` and a `W_∞`-algebra `R_∞` with
`P_∞ ⊗ 𝒪 ≅ P` and `R_∞ ⊗ 𝒪 ≅ R`, a surjection `R^{loc}[[X_1, …, X_g]] → R_∞` with
`g = q + |S ∪ S_∞| − 1`, patched modules `H_{G,∞}`, `H_{D,∞}` finite free over `W′_∞`, `W_∞`
specialising to `H_G`, `H_D`, and `P_∞ → R_∞` compatible with `P → R`; and (`p = 2`, Proposition 4.9)
with `q ≥ |S ∪ S_∞|` and `γ = 2 − |S ∪ S_∞| + q`, the same with `R^{loc}[[X_1, …, X_g]] → R′_∞ → R_∞`
(`g = 2q + 1`), a free action of `Ĝ_m^γ` on `Sp R′_∞` with an equivariant `δ : Sp R′_∞ → Ĝ_m^γ` for the
square action and `δ^{−1}(1) = Sp R_∞`, and compatible actions of `Ĝ_m^γ[2]` lifting to `H_{D,∞}` and
`H_{G,∞}` (nt26 Proposition 4.8, p. 34; Proposition 4.9, p. 35). For odd `p`, `q ≥ 0` with
`2q ≥ |S ∪ S_∞|`.

*Proof sketch.* As §§9.5–9.6, patching the quaternionic modules for `r̄` (GL2ModularityLifting Layers
2–3, 6) and the unitary modules of §12.4 simultaneously, with the Taylor–Wiles data of §12.3
(DeformationAndDerivedPatchingAlgebra §5.6 and the formal-torus contract for `p = 2`); the rank `2r` of
the pseudocharacter side enters only through `P`, the data and the unitary module. This step does not
follow from §12.5.

**Checks.**

- `dim W′_∞ − dim W_∞ = (n − 1)q`, the extra `Y`-variables of the rank-`n` unitary side.
- For `r = 1` (`n = 2`), `W′_∞ = W_∞ ⊗̂ 𝒪[[Y′_1, …, Y′_q]]` and the construction is rank-two patching
  with a redundant copy of the diamond variables.
- For `γ = 0` there is no twisting action and `R′_∞ = R_∞`.

*Needs:* §§9.5, 9.6, 12.3, 12.4; GL2ModularityLifting Layers 2, 3, 6; DeformationAndDerivedPatchingAlgebra
§5.6 (gap:formal-torus-patching).

### 12.7 Functoriality lifting for a tensor with one factor fixed (Newton–Thorne 2026 Theorem 4.1)

Let `F` be totally real, `r ≥ 1`, `p` any prime, `ι : ℚ̄_p ≅ ℂ`, `π`, `π′` RAESDC on `GL_2(𝔸_F)` and `σ`
RAESDC on `GL_r(𝔸_F)` with (1) `π`, `π′` of weight `0` and non-CM; (2) `r̄_{π,ι} ≅ r̄_{π′,ι}`; (3)
`r̄_{π,ι}(G_F)` containing a conjugate of `SL_2(𝔽_{p^a})`, `p^a > 5`; (4) at each `v | p`,
`r_{π,ι}|_{G_{F_v}}` ordinary (resp. potentially crystalline) exactly when `r_{π′,ι}|_{G_{F_v}}` is, both
potentially crystalline if `p = 2`; (5) at each `v ∤ p`, `π_v` a twist of Steinberg exactly when `π′_v`
is; (6) a perfect subgroup of `(r̄_{π,ι} ⊗ r̄_{σ,ι})^{ss}(G_F)` containing an element with `2r` distinct
eigenvalues; (7) `HT_τ(r_{σ,ι}) = {0, 2, …, 2r − 2}` for every `τ`; (8) `r_{π,ι} ⊗ r_{σ,ι}` automorphic
and strongly irreducible; (9) `r_{π′,ι} ⊗ r_{σ,ι}` irreducible. Prove that `r_{π′,ι} ⊗ r_{σ,ι}` is
automorphic (nt26 Theorem 4.1, p. 25; proof and component argument, pp. 34–37). This proves the first
paragraph of ModularityAndLanglandsExtensions §4.23, including the case where `σ` is ramified at
places where `π` is not.

*Proof sketch.* Reduce by §12.1. Characteristic-zero enormousness (§12.5) and adjoint Selmer vanishing
give `P_{(𝔭)} = E` at the automorphic characteristic-zero prime (PotentialAutomorphyInfrastructurePartII
PL.8), and the patched specialisation gives regularity of `(P_∞)_{𝔭_∞}`, so `𝔭_∞` lies on a unique
component of `Supp H_{G,∞}`. For odd `p` the rank-two patched support is irreducible and `H_{D,∞}` is
faithful, so its image contains the target point on the same unitary component; for `p = 2` the torus
action of rank `n + 4|S ∪ S_∞|` and the formal `Ĝ_m^γ[2]`-torsor act transitively on components and lift
to both patched modules, giving the same conclusion (§9.7). Hence `t′` is automorphic:
`r_{π′_K} ⊗ r_{σ_K} ⊗ r_Y^{1−r}` comes from a RACSDC representation of `GL_n(𝔸_K)`; descend to `F`
(PotentialAutomorphyInfrastructurePartII PL.0).

**Checks.**

- `r = 1`: modularity lifting for weight-zero non-CM Hilbert forms twisted by a character.
- (7) with `π` of weights `{0, 1}` gives the tensor weights `{0, 1, …, 2r − 1}`, all distinct; with `σ`
  of weights `{0, 1, …, r − 1}` the weight `1` would repeat for `r ≥ 2`.
- (9) cannot be dropped: if `r_{π′} ⊗ r_σ` were reducible, it would not be the Galois representation of
  a cuspidal `Π`, and the conclusion would be false in the sense of ModularityAndLanglandsExtensions
  §0.2.

*Needs:* §§12.1, 12.5, 12.6; §9.7; PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble base change
and descent of automorphy"; "Automorphy of an induced representation descends"), PL.8 ("The
pseudodeformation ring is its residue field at an automorphic point"); ModularityAndLanglandsExtensions
§§0.2, 4.1.

### Examples

- `r = 2`, `p = 5`: `σ` a weight-`{0, 2}` companion; `r_π ⊗ r_σ` of weights `{0, 1, 2, 3}`.
- In §13.4 the theorem is applied with `σ = Sym^{r−1} σ′` (rank `r`, weights `{0, 2, …, 2r − 2}`),
  Steinberg at a place where `π` is unramified.

### Dependencies

Layer 9; PotentialAutomorphyInfrastructurePartII PL.0, PL.2, PL.8; GlobalGaloisDeformations §8.5;
LocalGaloisDeformationRings §§8.12, 8.14; FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.4;
IntegralHeckeAndGaloisDeterminants §1.4; GL2ModularityLifting Layers 2, 3, 6;
DeformationAndDerivedPatchingAlgebra §5.6; EndoscopicTransferAndUnitaryTraceComparison §6.29;
ArithmeticGaloisRepresentations §§7.6, 7.10; PadicHodgeTheory §4.4; ModularityAndLanglandsExtensions
§§0.2, 4.1.

## Layer 13: residual twisted tensors and the induction on n

Newton–Thorne 2026 §§5–6 (nt26 pp. 38–50) with Thorne 2024 §7 (th24 pp. 42–47) prove `SP_n` for every
`n` over every totally real field. Write `n = p + r` with `n/2 < p < n` prime. Modulo `p`,
`(Sym^{p+r−1} r̄)^{ss} ≅ (φ_p r̄ ⊗ Sym^{r−1} r̄) ⊕ (det r̄)^r ⊗ Sym^{p−r−1} r̄`
(ArithmeticGaloisRepresentations §7.8); Thorne's level raising (§6.9) and residually reducible lifting
turn ordinary automorphic witnesses for the two blocks into automorphy of `Sym^{p+r−1}` (§13.8). The
second block comes from `SP_{p−r}`; the first, the coefficient-Frobenius twisted tensor, comes from §11
and §12 by propagation over the Galois group of the coefficient field (§§13.3–13.6). The reciprocity
of the two auxiliary splitting conditions (nt26 Lemma 5.3) is ArithmeticGaloisDuality §R02.3.5. For
`r = 1` the twisted tensor is a coefficient conjugate of `π` and no `SP_0` occurs. The modular
two-block decomposition is an identity of semisimplifications, not a splitting of `Sym^{p+r−1} r̄`.

### 13.1 Large image at every prime from two tamely dihedral places

Fix `M > 5`. Let `π` be RAESDC on `GL_2(𝔸_F)` of weight `0` with (1) primes `t_1, t_2 > M` and places
`v_1`, `v_2` of residue characteristics `p_1, p_2 > 3`, unramified in `F`, with `π_{v_i}` tamely dihedral
of order `t_i` and `p_1, p_2, t_1, t_2` distinct; (2) with `S` the finite places `v ≠ v_1, v_2` where `π`
is ramified or `v` is ramified over `ℚ`, together with the places above `2` and `3`, `v_1` splits in
`F(S ∪ {v_2})` and `v_2` splits in `F(S ∪ {v_1})`. Prove that for every prime `p` and `ι : ℚ̄_p ≅ ℂ`,
`r̄_{π,ι}(G_F)` contains a conjugate of `SL_2(𝔽_{p^a})` for some `p^a > M` (nt26 Proposition 5.4 and
proof, pp. 39–40). The printed proof infers the strict bound `q > t − 1` on the projective field size
from one projective element of order `t`; for odd residual characteristic parity excludes `q = t − 1`,
and in characteristic two both places are used.

*Proof sketch.* Away from `{p_1, t_1}` the local representation at `v_1` is irreducible with a projective
element of order `t_1 > 5` (GL2AutomorphicRepresentationsAndTransfer §R16.3.8). Dickson's
classification (ArithmeticGaloisRepresentations §4.4) leaves `PSL_2(𝔽_q)`, `PGL_2(𝔽_q)` or a dihedral
image; in the former cases `t_1 | q ± 1`. In odd residual characteristic `q` is odd, so `q = t_1 − 1` is
impossible and `q > M`. In residual characteristic `2`, if `q ≤ M` then the distinct odd primes
`t_1, t_2 > M` can divide `q ± 1` only by both equalling `q + 1`, a contradiction. For `p ∈ {p_1, t_1}`
use `v_2` (these `p` are odd). If the residual representation is induced from `K/F`, Fontaine–Laffaille
(FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.5.11) and the tame local conditions bound the
ramification of `K` by `S ∪ {v_2}` (dyadic places are in `S`), and the splitting of `v_1` in this
exponent-two extension (ArithmeticGaloisDuality §R02.3.5) contradicts local irreducibility at `v_1`;
exchange the places in the other case.

**Checks.**

- Without the splitting hypothesis, a quadratic inducing field can be non-split at `v_1` (for
  example unramified quadratic locally); odd-order tame inertia does not force ramification of that
  field at `v_1`.
- Characteristic `2` with `M = 6`: if `q ≤ 6` then `q ∈ {2, 4}` and `q ± 1 ∈ {1, 3, 5}`, divisible by no
  prime `t_i > 6`; in general `t_1, t_2 > M ≥ q` could divide `q ± 1` only by both equalling `q + 1`.
- In odd characteristic, `q = t_1 − 1` is even, hence not a power of an odd prime.

*Needs:* GL2AutomorphicRepresentationsAndTransfer §R16.3.8; ArithmeticGaloisRepresentations §4.4;
FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.5.11; ArithmeticGaloisDuality §R02.3.5.

### 13.2 The hypotheses S5-global and S5-local of Newton–Thorne 2026 §5

Define `S5-global` on `(F, p, r, ι, π)`: `F` totally real, `p ≥ 5`, `0 < r < p`, `SP_r`, `SP_{r+1}` and,
when `r > 1`, `SP_{r−1}`, and `π` RAESDC on `GL_2(𝔸_F)` with (1) `det r_{π,ι} = ε^{−1}`; (2) weight `0` and
`π_v` an unramified twist of Steinberg for every `v | p`; (3) a place `v_0` with `q_{v_0} ≡ −1` modulo `p`
and `π_{v_0}` tamely dihedral of order `p`; (4) for every prime `l` and every `ι_l`, `r̄_{π,ι_l}(G_F)`
containing a conjugate of `SL_2(𝔽_{l^a})` with `l^a > max(4r, 5)`, and `r̄_{π,ι}(G_F)` containing a
conjugate of `SL_2(𝔽_{p^a})` with `a > a₀(p)`; (5) `π_v` potentially unramified at every finite `v ∤ p`.
Define `S5-local` on `(F, p, r, M, ι, π, v_1, w_1, w_2, t_1, t_2)`: as before with `M > p^{a₀(p)}`, `π`
satisfying (1)–(3); (4) a place `v_1` with `q_{v_1} ≡ 1` modulo `p` and `π_{v_1}` an unramified twist of
Steinberg; (5) `π_v` potentially unramified at every `v ∤ p v_1`; (6) primes `t_1, t_2 > M` and places
`w_1`, `w_2` of residue characteristics `p_1, p_2 > 3` unramified in `F`, with `π_{w_i}` tamely dihedral
of order `t_i` and `p_1, p_2, t_1, t_2` distinct; (7) with `H` the ray class field of modulus `(8)∞` and
`S` the places `v ≠ w_1, w_2` where `π` is ramified, `v` is ramified over `ℚ` or has residue
characteristic `2` or `3`: `w_1` splits in `H · F(S)` and `w_2` splits in `H · F(S ∪ {w_1})` (nt26
Theorem 5.5, hypotheses, p. 40; Theorem 5.9, hypotheses, p. 44). Prove that `S5-local` implies the
large-image condition (4) of `S5-global` with `M` in place of `max(4r, 5)`.

*Proof sketch.* By ArithmeticGaloisDuality §R02.3.5 (one new ramified prime and reciprocity), (7)
implies the symmetric splitting condition of §13.1, which gives large image at every prime.

**API.**

- The hypotheses `S5-global` on `(F, p, r, ι, π)`, with `SP_m` the statement of
  ModularityAndLanglandsExtensions §1.12.
- The hypotheses `S5-local`, with the dihedral places and the splitting conditions.
- `S5-local` implies large residual image at every prime with bound `M` (§13.1).
- The coefficient Frobenius `φ_p` and the twisted residual representation `φ_p r̄ ⊗ Sym^{r−1} r̄`.

**Checks.**

- For `r = 3` the global image bound is `l^a > max(12, 5) = 12`.
- `q_{v_1} ≡ 1` modulo `p`: for `p = 5`, `q_{v_1} ∈ {11, 16, 31, 41, …}`.
- `S5-local` without (7) does not give large image at every prime: a dihedral residual representation
  can occur. For `r = 1` the tensor is a coefficient conjugate of `π`, `SP_1` is the trivial character
  and `SP_2` the given form.

*Needs:* §13.1; ArithmeticGaloisDuality §R02.3.5; ModularityAndLanglandsExtensions §1.12;
ArithmeticGaloisRepresentations §7.9; ClassFieldTheory Layers 12, 14.

### 13.3 The companions σ, σ′ and the auxiliary prime t

Prove: (Lemma 5.6) under `S5-global` there is a RAESDC `σ` on `GL_2(𝔸_F)` with the properties of §11.2
and `r_{π,ι} ⊗ Sym^{r−1} r_{σ,ι}` automorphic; (Lemma 5.7) with `K_π` the coefficient field of `π`,
`K̃_π` its Galois closure, `Γ_π = Gal(K̃_π/ℚ)`, `B ≥ 1` such that `K_π` is ramified only at primes
`< B`, and `φ = ιφ_pι^{−1}`, there are a prime `t`, `ι_t` and a RAESDC `σ′` with: `t > max(5, 4r + 2, B)`,
`t` unramified in `F` and all three forms unramified above `t`; the residual tensors of `π` and of `φπ`
with `Sym^{r−1} σ` at `t` absolutely irreducible over `F(ζ_t)`; `r̄_{σ,ι_t} ≅ r̄_{σ′,ι_t}` and `σ′_{v_0}`
an unramified Steinberg twist; `r_π ⊗ Sym^{r−1} r_{σ′}` automorphic, and `r_{φπ} ⊗ Sym^{r−1} r_σ`
automorphic exactly when `r_{φπ} ⊗ Sym^{r−1} r_{σ′}` is; for every `l < B` and `ι_l`, `r̄_{σ′,ι_l}` has
image containing `SL_2(𝔽_{l^a})` with `l^a > max(4r, 5)` and projective fixed field meeting that of `γπ`
in degree at most `2` over `F` for every `γ ∈ Γ_π`; the new auxiliary place `v_1` of the construction
lies away from `p`, `t` and all prescribed bad places, so that `π` and `σ` are unramified there (nt26
Lemma 5.6, p. 40; Lemma 5.7 and proof, pp. 40–42). The printed proof verifies tensor irreducibility over
`F` but not over `F(ζ_t)`, which potentially diagonalizable lifting needs, and does not exclude `v_1 | p`;
both are supplied below.

*Proof sketch.* For `r > 1`, `σ` comes from §11.2 and §11.10 (with `SP_{r±1}`); for `r = 1` the tensor is
`r_π`. Choose `t` outside the exceptional-image sets of `π`, `φπ`, `σ` and unramified in the coefficient
fields and in `F`. If two residual projective fields coincided, Dickson's classification
(ArithmeticGaloisRepresentations §4.4) would identify the adjoint representations up to coefficient
Frobenius; their Fontaine–Laffaille weights `{−1, 0, 1}` and `{−2, 0, 2}` at an unramified `t > 5`
exclude this (FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.5.11). The projective fields therefore
meet in at most a quadratic extension; Goursat (ArithmeticGaloisRepresentations §7.6) gives
`PSL_2(q_π) × PSL_2(q_σ)` in the joint projective image, and commutators lift it to
`SL_2(q_π) × SL_2(q_σ)` in the joint linear image (a subgroup of `SL_2 × SL_2` surjecting onto the
projective product, times the centre, is the whole perfect product, hence equals it). `G_{F(ζ_t)}` is
normal with abelian quotient, so its joint image contains this perfect product, on which
`Std ⊗ Sym^{r−1}` is absolutely irreducible since `r < t ≤ q_σ`. Choose `v_1` by Chebotarev outside the
finite set over `p`, `t` and the ramification of `π`, `σ` and the coefficient conjugates; construct `σ′`
with an order-`t` dihedral type at `v_1` and the original local connections elsewhere
(PotentialModularityAndCompatibleSystems §10.10); at small `l` its projective field differs from each
`γπ` field by ramification at `v_1`, and Dickson gives field size `q ≥ t − 1 > 4r`. Potentially
diagonalizable automorphy lifting over `F(ζ_t)` (PotentialAutomorphyInfrastructurePartII PL.5) gives the
two comparisons, with coefficient conjugation (AutomorphicGaloisRepresentationsPartII AG2.6).

**Checks.**

- For `K_π = ℚ`, `Γ_π` is trivial and `B = 1`, so the conditions at small primes are empty.
- The weights distinguishing the adjoints: `ad⁰` of a weight-`{0, 1}` form has weights `{−1, 0, 1}`,
  of a weight-`{0, 2}` form `{−2, 0, 2}`; an isomorphism up to coefficient Frobenius would preserve
  Fontaine–Laffaille weights at unramified `t > 5`.
- For `r = 2`, `Std ⊗ Std` is irreducible of dimension `4` on `SL_2(q_π) × SL_2(q_σ)`, but on a
  diagonal `SL_2(q)` (as would occur if the two projective fields coincided) it splits as `Sym² ⊕ 1`:
  this is why the fields must be shown to be almost disjoint.

*Needs:* §§11.2, 11.10; PotentialModularityAndCompatibleSystems §10.10; AutomorphicGaloisRepresentations
§7.4; PotentialAutomorphyInfrastructurePartII PL.5 ("Automorphy lifting for potentially diagonalizable
representations"); AutomorphicGaloisRepresentationsPartII AG2.6 ("Complex and local coefficient
conjugation"); ArithmeticGaloisRepresentations §§4.4, 7.6, 7.8; FiniteFlatGroupsAndIntegralPadicHodgeTheory
§R07.5.11; Chebotarev Layer 10.

### 13.4 Propagation over the Galois group of the coefficient field

Under `S5-global` with `σ`, `σ′`, `B`, `K̃_π`, `Γ_π` from §13.3, prove (Lemma 5.8) that for `γ ∈ Γ_π`, a
finite place `w | l` of `K̃_π` and `δ` in the inertia group `I_{w/l}`, if
`r_{γπ,ι} ⊗ Sym^{r−1} r_{σ′,ι}` is automorphic then so is `r_{δγπ,ι} ⊗ Sym^{r−1} r_{σ′,ι}` (for `δ ≠ 1`
only `l < B` occurs; the second factor is fixed); hence `r_{γπ,ι} ⊗ Sym^{r−1} r_{σ′,ι}` is automorphic for
every `γ ∈ Γ_π`; and, taking `γ = φ`, with the equivalence of §13.3 and coefficient conjugation, there is
an ι-ordinary RAESDC `Π` on `GL_{2r}(𝔸_F)` with `r_{Π,ι} ≅ φ_p(r_{π,ι}) ⊗ Sym^{r−1} r_{σ,ι}` (nt26
Lemma 5.8 and proof, pp. 42–43; completion of Theorem 5.5, pp. 42–44). The checks in the printed proof
are at the original embedding `ι` where the comparison embedding `ι_l` at `l` is meant.

*Proof sketch.* Change the comparison embedding to one inducing `w`; `δ` acts trivially on the residue
field, so `r̄_{δγπ} ≅ r̄_{γπ}` at the prime above `l`. Apply §12.7 with `σ = Sym^{r−1} σ′` (RAESDC by `SP_r`,
Steinberg at `v_0` where `γπ` is unramified after base change, the case covered by the repaired set `S`
of Layer 12), checking its nine hypotheses at `l`: the coefficient inertia gives the residual congruence;
the different weights give regularity; the two projective fields give a perfect product, and a regular
semisimple element is found by choosing `x` of order `> 2r − 2` and `y` avoiding the at most `2r − 1`
forbidden ratios `±x^i`, which `q > 4r` permits; ordinarity and Steinberg status are preserved by
coefficient conjugation. Return to `ι` by AutomorphicGaloisRepresentationsPartII AG2.6 (coefficient
independence of untwisted tensor automorphy, both factors RAESDC). `Γ_π` is generated by its inertia
subgroups because `ℚ` has no non-trivial everywhere unramified extension (Mathlib
`NumberField.abs_discr_gt_two`).

**Checks.**

- If `K_π = ℚ`, `Γ_π` is trivial, the propagation is empty, `φ` acts trivially and the conclusion is the
  untwisted tensor of §11.10.
- If `K̃_π/ℚ` were unramified at every prime (impossible for `K̃_π ≠ ℚ`), inertia would generate only the
  trivial group; Hermite–Minkowski excludes this.
- The hypothesis (6) of §12.7 at `l`: with projective images containing `PSL_2(q_{γπ}) × PSL_2(q_{σ′})`,
  `q > 4r`, an element `(diag(x, x^{−1}), diag(y, y^{−1}))` with the stated choices has `2r` distinct
  eigenvalues `x^{±1} y^{r−1−2j}`.

*Needs:* §§13.3, 12.7; AutomorphicGaloisRepresentationsPartII AG2.6 ("Complex and local coefficient
conjugation"; "Coefficient independence of tensor automorphy"); Mathlib `NumberField.abs_discr_gt_two`;
ClassFieldTheory Layer 13.

### 13.5 A residual witness for `φ_p r̄ ⊗ Sym^{r−1} r̄` under global image hypotheses (Newton–Thorne 2026 Theorem 5.5)

Under `S5-global` (with `SP_r`, `SP_{r+1}` and `SP_{r−1}` when `r > 1`), prove that there is an
ι-ordinary RAESDC `Π` on `GL_{2r}(𝔸_F)` with `r̄_{Π,ι} ≅ φ_p(r̄_{π,ι}) ⊗ Sym^{r−1} r̄_{π,ι}` (nt26
Theorem 5.5, p. 40; proof, pp. 40–44). The statement is residual: it does not identify `r_{Π,ι}` with a
Frobenius twist of a characteristic-zero tensor of `π` with itself.

*Proof sketch.* §13.4 gives `Π` with `r_Π ≅ φ_p(r_π) ⊗ Sym^{r−1} r_σ`; reducing, `r̄_σ^{ss} ≅ r̄_π^{ss}` (§11.2),
so `r̄_Π ≅ φ_p(r̄_π) ⊗ Sym^{r−1} r̄_π`; ordinarity from that of `π` and `σ`.

**Checks.**

- For `r = 1` the witness is for `φ_p r̄`, given by the coefficient conjugate of `π`.
- Residual irreducibility: for `a > a₀(p)` the representation `φ_p r̄ ⊗ Sym^{r−1} r̄` of a group
  containing `SL_2(𝔽_{p^a})` is irreducible and adequate (ArithmeticGaloisRepresentations §7.9), so `Π`
  is cuspidal.
- `dim = 2 · r = 2r`, and the Hodge–Tate weights `{0, 1} + {0, 2, …, 2r − 2}` are distinct.

*Needs:* §§13.4, 11.2, 13.2; ArithmeticGaloisRepresentations §7.9.

### 13.6 A residual witness retaining a Steinberg place (Newton–Thorne 2026 Theorem 5.9)

Under `S5-local` (with `SP_r`, `SP_{r+1}` and `SP_{r−1}` when `r > 1`), prove that `r̄_{π,ι}(G_F)` contains
`SL_2(𝔽_{p^a})` with `p^a > M`, and that there is an ι-ordinary RAESDC `Π` on `GL_{2r}(𝔸_F)` with
`r̄_{Π,ι} ≅ φ_p(r̄_{π,ι}) ⊗ Sym^{r−1} r̄_{π,ι}`; `π` remains Steinberg at `v_1` for the later level raising,
while no Steinberg condition at `v_1` is asserted for `Π` (nt26 Theorem 5.9, p. 44; proof, pp. 44–45).
This proves the second paragraph of ModularityAndLanglandsExtensions §4.23.

*Proof sketch.* Large image at every prime by §13.2. Remove the extra Steinberg place: a congruent
ι-ordinary RAESDC `π′` of weight `0`, determinant `ε^{−1}`, Steinberg at all `p`-adic places, with
`r_{π,ι}|_{G_{F_v}} ∼ r_{π′,ι}|_{G_{F_v}}` for `v ∤ p v_1`, `π′_{v_1}` a principal series `i(χ_1 ⊗ χ_2)`
with `(χ_1/χ_2)|_{𝒪^×}` of order `p` (residually the same inertial semisimplification as Steinberg since
`q_{v_1} ≡ 1` modulo `p`), and the dihedral types at `w_1`, `w_2` preserved (LocalGaloisDeformationRings
§2.15; PotentialModularityAndCompatibleSystems §10.10; PotentialAutomorphyInfrastructurePartII PL.1).
`π′` satisfies `S5-global`, and §13.5 gives the witness for `π′`, hence for `π`.

**Checks.**

- The witness is residual only, as in §13.5.
- `q_{v_1} ≡ 1` modulo `p` is what makes an order-`p` character of `𝒪^×` at `v_1` exist and the principal
  series congruent to Steinberg.
- The output `Π` need not be Steinberg at `v_1`; §13.7 keeps the Steinberg place on `π′` for §13.8.

*Needs:* §§13.5, 13.2; LocalGaloisDeformationRings §2.15; PotentialModularityAndCompatibleSystems
§10.10; PotentialAutomorphyInfrastructurePartII PL.1 ("Connecting and strongly connecting local lifts").

### 13.7 Ordinary replacement with a Frobenius-tensor residual witness (Newton–Thorne 2026 Corollary 6.2)

For `F` totally real, `π` non-CM RAESDC on `GL_2(𝔸_F)`, `p ≥ 5`, `0 < r < p`, and `SP_r`, `SP_{r+1}` and
`SP_{r−1}` when `r > 1`, prove that there are a soluble totally real `E/F`, `ι` and RAESDC `π′` over `E`
with: `Sym^{p+r−1} r_{π,ι}` automorphic exactly when `Sym^{p+r−1} r_{π′,ι}` is; `π′` of weight zero and an
unramified Steinberg twist at every `p`-adic place of `E`; `r̄_{π′,ι}` with image containing
`SL_2(𝔽_{p^a})`, `a > a₀(p)`; an unramified Steinberg twist at some `v_1 ∤ p`; and an ι-ordinary RAESDC
representation of `GL_{2r}(𝔸_E)` with residual representation `φ_p(r̄_{π′,ι}) ⊗ Sym^{r−1} r̄_{π′,ι}`
(nt26 Corollary 6.2, p. 49). Prove also the intermediate step of the proof of Proposition 6.1: there are
`ι`, a soluble totally real `E/F` and RAESDC `π_0` over `E` of weight `0`, Steinberg at all `v | p`,
`det r_{π_0} = ε^{−1}`, residual image containing `SL_2(𝔽_{p^a})` with `a > a₀(p)`, Steinberg at some
`v_1 ∤ p` with `q_{v_1} ≡ 1` modulo `p`, potentially unramified away from `p v_1`, and
`Sym^{p+r−1} r_π` automorphic exactly when `Sym^{p+r−1} r_{π_0}` is (nt26 proof of Proposition 6.1,
intermediate claim, pp. 46–48). The printed corollary labels the final `p`-adic places as places of
`F`; they are places of `E`. The printed choice of the auxiliary prime `t` avoids the conductor of `π`;
it must avoid that of `π_a` below.

*Proof sketch.* Intermediate step: a prime `q` from Dimitrov's large-image theorem
(AutomorphicGaloisRepresentations §7.4); an everywhere unramified finite-order character `χ` of `G_E` with
`χ² det r_{π,ι_q} = ε^{−1}` (the obstruction to a square root of the totally even character
`ε det r_{π,ι_q}` is a `2`-torsion class in `Br(F)`, killed by local conditions on `E`); an ordinary
congruent `π_a` with the required local conditions (PotentialModularityAndCompatibleSystems §9.2;
SerreWeightAndLevelOptimisation §6.11); a prime `t` prime to the conductor of `π_a` with tamely dihedral
level raising. Proposition 6.1 (ModularityAndLanglandsExtensions §4.22) then gives `π′` with its eight
conditions, hence `S5-local`, and §13.6 gives the witness.

**Checks.**

- For `r = 1` the witness is `φ_p r̄_{π′}`, a coefficient conjugate.
- `E/F` soluble and totally real keeps `Sym^{p+r−1}` automorphy equivalent over `F` and `E` by soluble
  descent (the representation is irreducible by non-CM large image).
- A prime `t` dividing the conductor of `π_a` would not allow an unramified starting point for the
  dihedral level raising at `t`.

*Needs:* §13.6; ModularityAndLanglandsExtensions §4.22; AutomorphicGaloisRepresentations §7.4;
PotentialModularityAndCompatibleSystems §9.2; SerreWeightAndLevelOptimisation §6.11;
PotentialAutomorphyInfrastructurePartII PL.0 ("Soluble base change and descent of automorphy"), PL.1
("Ordinary and Fontaine–Laffaille representations are potentially diagonalizable").

### 13.8 Symmetric-power lifting from two ordinary residual blocks (Newton–Thorne 2026 Proposition 6.3; Thorne 2024 Proposition 7.4)

Let `F` be totally real, `p ≥ 5`, `0 < r < p`, and `π` RAESDC on `GL_2(𝔸_F)`, ι-ordinary for some `ι`, of
weight zero, with residual image containing `SL_2(𝔽_{p^a})`, `a > a₀(p)`, and an unramified Steinberg
twist at a place `v_1 ∤ p`. Suppose there are ι-ordinary RAESDC `π_1` on `GL_{p−r}(𝔸_F)` and `π_2` on
`GL_{2r}(𝔸_F)` with residual representations `Sym^{p−r−1} r̄_{π,ι}` and
`φ_p(r̄_{π,ι}) ⊗ Sym^{r−1} r̄_{π,ι}`. Prove that there is an ι-ordinary RAESDC `Π` on `GL_{p+r}(𝔸_F)` with
`r_{Π,ι} ≅ Sym^{p+r−1} r_{π,ι}` (nt26 Proposition 6.3 and proof, p. 49; th24 Proposition 7.4 and proof,
pp. 43–44; Theorem 7.5, p. 44). These residual witnesses replace the hypotheses of th24 Proposition 7.4
that `Sym^{r−1} r_π` and `Sym^{p−r−1} r_π` are automorphic and that `TP_r` holds. Primitivity is weak
primitivity over `k̄` with the common splitting field.

*Proof sketch.* Pass to a CM quadratic extension with the conditions of th24 Proposition 7.4 (soluble base
change). Twist the witnesses into conjugate self-dual cuspidal `σ_1`, `σ_2` with `σ_2` Steinberg at the
place above `v_1` (Khare–Wintenberger method with PotentialAutomorphyInfrastructurePartII PL.4), so that
`Σ = σ_1 ⊞ σ_2` is regular algebraic, ι-ordinary of weight `0` and `r̄_Σ ≅ (Sym^{p+r−1} r̄)^{ss}`
(ArithmeticGaloisRepresentations §7.8). §6.9 gives a cuspidal ι-ordinary `Π_0` Steinberg at the place
above `v_1` with the same residual representation (its hypothesis (3) from an element `diag(t, t^{−1})`
with `1, t², …, t^{2(p+r−1)}` distinct, which exists since `a ≥ 3`). Residually reducible ordinary
lifting with a Steinberg place (PotentialAutomorphyInfrastructurePartII PL.7, "The ANT lifting theorem
with source primitivity", which contains th24 Theorem 7.5) shows `Sym^{p+r−1} r_π` automorphic; descend.

**Checks.**

- `p = 5`, `r = 1`: blocks `Sym³ r̄` (rank `4`) and `φ_5 r̄` (rank `2`), giving `Sym⁵` (rank `6`).
- Ranks: `(p − r) + 2r = p + r`.
- The decomposition is of semisimplifications only: `Sym^{p+r−1} r̄` is a non-split extension in general
  (ArithmeticGaloisRepresentations §7.8 gives an exact sequence), so `Σ` is congruent to
  `Sym^{p+r−1} r_π` only after semisimplification.

*Needs:* §6.9; PotentialAutomorphyInfrastructurePartII PL.0, PL.4, PL.6 ("Weak primitivity over a
splitting coefficient field"), PL.7 ("The ANT lifting theorem with source primitivity"; "The ANT
finiteness theorem with source primitivity"); ArithmeticGaloisRepresentations §§7.8, 7.9.

### 13.9 Thorne's induction step and the small cases (Thorne 2024 Theorems 7.1, 7.6, Corollary 7.2)

Let `p ≥ 5` and `0 < r < p`. Prove: (Theorem 7.6) assuming `SP_{p−r}`, `SP_r` and `TP_r`, if `(π, χ)` is
RAESDC on `GL_2(𝔸_{F⁺})`, ι-ordinary with residual image containing `SL_2(𝔽_{p^a})` for some
`a > a₀(p)`, of weight `0`, with an unramified Steinberg twist at some `v_0 ∤ p`, then `Sym^{p+r−1} π`
exists as an ι-ordinary cuspidal RAESDC `Π`; (Theorem 7.1) hence `SP_{p−r} + SP_r + TP_r ⇒ SP_{p+r}`;
(Corollary 7.2) `SP_n` holds for `n = 1, …, 10` and for even `n = 12, …, 26`, and `TP_r` for all `r`
implies `SP_n` for all `n` (th24 Theorem 7.1, Corollary 7.2 and Lemma 7.3, p. 42; Theorem 7.6, p. 45;
proofs, pp. 42–47). `TP_r` is known for `r = 1, 2, 3` (ModularityAndLanglandsExtensions §§1.11, 1.13) and
`SP_n` for `n ≤ 5` (§1.15 there).

*Proof sketch.* Theorem 7.6 from the `TP_r` version of §13.8 after soluble base change. Theorem 7.1 from
Theorem 7.6 by the Clozel–Thorne reductions and th24 §8 (ModularityAndLanglandsExtensions §4.22).
Corollary 7.2: `TP_1`, `TP_2`, `TP_3` give `SP_{p−1} ⇒ SP_{p+1}`, `SP_{p−2} ⇒ SP_{p+2}`,
`SP_{p−3} ⇒ SP_{p+3}` for `p = 5, …, 23`; the general case by Bertrand's postulate as in §13.10.

**Checks.**

- `p = 7`, `r = 1`: `SP_6 + SP_1 + TP_1 ⇒ SP_8`; `p = 7`, `r = 3`: `SP_4 + SP_3 + TP_3 ⇒ SP_{10}`.
- `n = 11` is not covered: `11 = p + r` with `p ∈ {7}` needs `r = 4` and `TP_4`, which is not known; this
  is why the corollary stops short of all `n` and §13.10 replaces `TP_r` by residual witnesses.
- `n = 6 = 5 + 1`: `SP_4 + SP_1 + TP_1 ⇒ SP_6`.

*Needs:* §13.8; ModularityAndLanglandsExtensions §§1.11–1.15, 4.22.

### 13.10 The induction proving SP_n for all n (Newton–Thorne 2026 Theorem 6.4)

Prove that `SP_n` holds for every `n ≥ 1`: for every totally real `F` and every non-CM RAESDC `π` on
`GL_2(𝔸_F)` there is a RAESDC `Π` on `GL_n(𝔸_F)` with `r_{Π,ι} ≅ Sym^{n−1} r_{π,ι}` for every `ι` (nt26
Theorem 6.4 and proof, p. 50). This proves ModularityAndLanglandsExtensions §4.30 and, through its
§§4.35–4.36, Newton–Thorne 2026 Theorem A. The printed list of induction hypotheses contains `SP_0` when
`r = 1`, which is not a statement; the case `r = 1` uses the coefficient-conjugate branch directly. The
ordinarity of the smaller witness is supplied by the Steinberg-at-`p` condition.

*Proof sketch.* Induction on `n`, with base cases `n ≤ 5` (ModularityAndLanglandsExtensions §1.15). For
`n ≥ 6` choose a prime `p` with `n/2 < p < n` (Mathlib `Nat.exists_prime_lt_and_le_two_mul` applied to
`⌊n/2⌋`) and write `n = p + r` with `0 < r < p`; the indices `r`, `r + 1`, `p − r` (and `r − 1` when `r > 1`)
are positive and smaller than `n`. By the one-prime criterion (ModularityAndLanglandsExtensions §4.15)
it suffices to prove automorphy of `Sym^{p+r−1} r_{π,ι}` for one `ι`. §13.7 gives `π′` over a soluble `E`
with the residual witness for `φ_p r̄ ⊗ Sym^{r−1} r̄`; `SP_{p−r}` gives a witness for `Sym^{p−r−1} r̄`,
ordinary since `π′` is Steinberg at `p`. §13.8 gives `Sym^{p+r−1} r_{π′}` automorphic, hence
`Sym^{p+r−1} r_π` by §13.7.

**Checks.**

- `n = 6`: `p = 5`, `r = 1`; the induction uses `SP_1`, `SP_2` and `SP_4`, with no `SP_0`.
- `n = 7`: `p = 5`, `r = 2`; it uses `SP_1`, `SP_2`, `SP_3` and `SP_{p−r} = SP_3`.
- `n = 12`: `p ∈ {7, 11}`; with `p = 7`, `r = 5` it uses `SP_4`, `SP_5`, `SP_6` and `SP_2`; with `p = 11`,
  `r = 1` it uses `SP_1`, `SP_2`, `SP_{10}`.

*Needs:* §§13.7, 13.8; ModularityAndLanglandsExtensions §§1.12, 1.15, 4.15; Mathlib
`Nat.exists_prime_lt_and_le_two_mul`.

### Examples

- `SP_6` over `ℚ`: `p = 5`, `r = 1`; witnesses for `Sym³ r̄` (from `SP_4`) and for `φ_5 r̄` (a coefficient
  conjugate), combined by §13.8.
- `SP_{11}`: `p = 7`, `r = 4` is the only choice with `n/2 < p < n`; it uses `SP_3`, `SP_4`, `SP_5` and
  `SP_3`, and needs no `TP_4`.

### Dependencies

Layers 6, 11, 12; ArithmeticGaloisRepresentations §§4.4, 7.6, 7.8, 7.9; ArithmeticGaloisDuality
§R02.3.5; GL2AutomorphicRepresentationsAndTransfer §R16.3.8; FiniteFlatGroupsAndIntegralPadicHodgeTheory
§R07.5.11; AutomorphicGaloisRepresentations §7.4; AutomorphicGaloisRepresentationsPartII AG2.6;
PotentialModularityAndCompatibleSystems §§9.2, 10.10; SerreWeightAndLevelOptimisation §6.11;
PotentialAutomorphyInfrastructurePartII PL.0, PL.1, PL.4–PL.7; LocalGaloisDeformationRings §2.15;
ModularityAndLanglandsExtensions §§1.11–1.15, 4.15, 4.22; ClassFieldTheory Layers 12–14; Chebotarev
Layer 10; Mathlib `NumberField.abs_discr_gt_two`, `Nat.exists_prime_lt_and_le_two_mul`.

## Layer 14: endpoints over ℚ

This layer discharges the seed hypotheses of Layers 7, 8 and 10 by §13.10 and assembles the
endpoints over `ℚ` that ModularityAndLanglandsExtensions states in §§4.8, 4.9, 4.12, 4.20 and 4.29,
together with the holomorphy of symmetric power `L`-functions of level-one eigenforms, which is the
statement of this roadmap's Lean file. Each endpoint has two routes: the Newton–Thorne I/II route
through Layers 2–10 with the seed, and the specialisation of §13.10 to `F = ℚ`.

### 14.1 Theorem 7.1 and Theorem E in every rank

Prove: (1) `TS_n(p, q, X_0, ω)` of §7.5 holds for every `n ≥ 3` and all admissible data, which is the
statement of ModularityAndLanglandsExtensions §4.8; (2) for every `n ≥ 3` there is a cuspidal,
everywhere unramified `π` of `GL_2(𝔸_ℚ)` of weight `k ≥ 2` with `Sym^{n−1} r_{π,ι}` automorphic for
every `ι` (Theorem E, the statement of ModularityAndLanglandsExtensions §4.9); indeed every such `π`
has this property (nt21 Theorems 7.1, 7.6, pp. 83, 90; nt26 Theorem 6.4, p. 50).

*Proof sketch.* (2): level-one eigenforms are non-CM and regular algebraic, so §13.10 over `F = ℚ`
gives `SP_n` for them. (1): choose an `X_0`-split soluble totally real `F⁺_1` with `F_1 = F⁺_1 K`
(PotentialAutomorphyInfrastructurePartII PL.0) such that at some place `v | q` of `F⁺_1` the residual
representation `r̄_{σ_0,ι}` is trivial and `q_v ≡ 1` modulo `p`; raise the level of the base change of
`σ_0` to `F⁺_1` at `v` to an unramified Steinberg twist, congruent modulo `p` and of the same weight
(SerreWeightAndLevelOptimisation §6.9; the level-raising condition holds since `r̄` is trivial and
`q_v ≡ 1` there), obtaining a non-CM ordinary `σ`; §13.10 over `F⁺_1` makes `Sym^{n−1} σ` automorphic;
base change to `F_1` and twist by `ω^{n−1}`. The result is RACSDC, ι-ordinary, Steinberg at the place
above `v` (`Sym^{n−1}` of a Steinberg twist is a Steinberg twist), with residual representation
`ω̄^{n−1} ⊗ Sym^{n−1} r̄_{σ_0,ι}` and the Hodge–Tate weights of (b). For `n = 2^r` the seed route of
§§7.5–7.6 gives (1) and (2) as well.

**Checks.**

- `n = 3, 4, 5`: (2) also follows from ModularityAndLanglandsExtensions §1.15.
- `Sym^{n−1}(St ⊗ χ) = St_n ⊗ χ^{n−1}`: the Weil–Deligne parameter `sp(2) ⊗ χ` has `Sym^{n−1}` equal to
  `sp(n) ⊗ χ^{n−1}`, so the Steinberg place survives.
- The level-raising condition at `v`: with `r̄|_{G_{F_v}}` trivial, `T_v ≡ 2` and `(q_v + 1)² ≡ 4`
  modulo `𝔪`, so `T_v² − (q_v + 1)² ψ(ϖ_v) ∈ 𝔪` when the residual central character is trivial at `v`.

*Needs:* §13.10; §§7.1, 7.5, 7.6; SerreWeightAndLevelOptimisation §6.9; PotentialAutomorphyInfrastructurePartII
PL.0 ("Soluble and cyclic CM extensions with prescribed local behaviour"; "Soluble base change and
descent of automorphy"); ModularityAndLanglandsExtensions §1.15.

### 14.2 Theorem A in level one and Theorem B

Prove: (1) for every `n ≥ 2` and every RAC automorphic `π` of `GL_2(𝔸_ℚ)` of level one,
`Sym^{n−1} π` exists as a cuspidal automorphic representation of `GL_n(𝔸_ℚ)` (Theorem A, the statement
of ModularityAndLanglandsExtensions §4.12); (2) for every `n ≥ 2` and every non-CM cuspidal `π` of
`GL_2(𝔸_ℚ)` of weight `≥ 2` with no supercuspidal local component, `Sym^{n−1} π` exists (Theorem B, the
statement of ModularityAndLanglandsExtensions §4.20) (nt21 Theorem A, p. 2, Theorem 7.7, p. 91,
Theorem 8.1; nt26 Theorem 6.4, p. 50).

*Proof sketch.* Both are specialisations of §13.10 to `F = ℚ`. Along the seed route: (1) by §3.8 with
the seed of §14.1(2) and the one-prime criterion (ModularityAndLanglandsExtensions §4.15); (2) by the
argument of §10.7 for `H_0` (§§8.2, 8.3 with the seed, and potentially diagonalizable lifting).
Cuspidality: for a non-CM `π` the image of `r_{π,ι}` is Zariski dense in `GL_2`
(AutomorphicGaloisRepresentations §7.5), so `Sym^{n−1} r_{π,ι}` is irreducible and `Sym^{n−1} π` is not
an isobaric sum of smaller blocks.

**Checks.**

- Every level-one form is non-CM, so (1) is the case of (2) with no ramification at all.
- A CM form has `Sym² π` non-cuspidal; it is excluded from (2) and treated by
  ModularityAndLanglandsExtensions §4.13.
- A semistable elliptic curve over `ℚ` has no supercuspidal component, so (2) applies to it.

*Needs:* §13.10; §§3.8, 8.2, 8.3, 10.7; AutomorphicGaloisRepresentations §7.5;
ModularityAndLanglandsExtensions §§4.13, 4.15.

### 14.3 Symmetric power functoriality for every non-CM newform (Newton–Thorne II Theorem A)

Prove that for every `n ≥ 1` and every non-CM regular algebraic cuspidal `π` of `GL_2(𝔸_ℚ)`, `Sym^{n−1} π`
exists (nt21b Theorem A, p. 1; Theorem 3.1, p. 20; nt26 Theorem 6.4, p. 50). This proves
ModularityAndLanglandsExtensions §4.29.

*Proof sketch.* §10.8 with the seed of §14.1(2); alternatively §13.10 over `F = ℚ`.

**Checks.**

- `n = 1, 2` are trivial.
- A non-CM elliptic curve over `ℚ` with supercuspidal reduction at `2` or `3` is covered (by the `2`, `3`
  steps of §10.8 or directly by §13.10).
- The statement is about existence at every place (ModularityAndLanglandsExtensions §1.10); at the
  ramified primes the local components are `Sym^{n−1}` of `rec(π_l)`, which need not be determined by
  the Fourier coefficients alone.

*Needs:* §10.8; §14.1; §13.10; ModularityAndLanglandsExtensions §1.10.

### 14.4 Holomorphy of symmetric power L-functions of level-one eigenforms

Let `f` be a normalised Hecke eigenform of level one and weight `k` (Tau Ceti `HeckeRing.GL2.Newform`
with `N = 1`), `{α_p, β_p}` its Satake parameters at the prime `p`
(`HeckeRing.GL2.Newform.satakeParameters`, the roots of `X² − a_p X + p^{k−1}`), and `n ≥ 1`. Define
the Euler factor `symPowerEulerFactor n α β x = ∏_{j=0}^{n} (1 − α^j β^{n−j} x)`. Prove that the Euler
product `∏_p symPowerEulerFactor n α_p β_p (p^{−s})^{−1}` converges for `Re s > n(k − 1)/2 + 1` to a
function which extends to an entire function on `ℂ` (`symPowerEulerProduct_levelOne_entire`; nt21
Theorem A and its consequence for `Δ`, p. 2). The factor is symmetric in `α` and `β`, so the statement
does not depend on the ordering of the Satake parameters.

*Proof sketch.* By §14.2(1) applied with `n + 1`, `Π = Sym^n π_f` is a cuspidal automorphic
representation of `GL_{n+1}(𝔸_ℚ)`, unramified at every prime, with Satake parameters
`α_p^j β_p^{n−j} p^{−n(k−1)/2}` at `p`. Its finite standard `L`-function is entire, because the
completed function is entire for cuspidal `Π` of `GL_m`, `m ≥ 2`, and the archimedean factor has no
zeros (AutomorphicLFunctionsAndLocalFactors AL.2, "Global Godement–Jacquet theory"), and its Euler
product converges absolutely for `Re s > 1`. The Euler product of the statement at `s` is
`L(s − n(k − 1)/2, Π)`.

**Checks.**

- `n = 0` is excluded: the product is then `∏_p (1 − p^{−s})^{−1} = ζ(s)`, which has a pole at `s = 1`.
- `n = 1`: the statement is the entirety of `L(s, f)`, which Tau Ceti already records
  (`hasEntireExtension_qExpansion_coeff` in `TauCeti/NumberTheory/ModularForms/LFunction/Basic.lean`); the
  region `Re s > (k + 1)/2` is that of absolute convergence given Deligne's bound
  `|α_p| = p^{(k−1)/2}`.
- For `Δ` (`k = 12`) and `n = 2`, the factor at `p = 2` is
  `(1 − α²x)(1 − αβx)(1 − β²x)` with `α + β = −24`, `αβ = 2^{11}`, that is
  `1 − (α² + αβ + β²)x + αβ(α² + αβ + β²)x² − (αβ)³x³` with `α² + αβ + β² = 576 − 2048 = −1472`.

*Needs:* §14.2; AutomorphicLFunctionsAndLocalFactors AL.2; Tau Ceti `HeckeRing.GL2.Newform`,
`HeckeRing.GL2.Newform.satakeParameters`, `HeckeRing.GL2.Newform.exists_satakeParameters_eq_pair`;
Mathlib `HasProd`, `Differentiable`.

### Examples

- `Δ`, `n = 2`: `L(s, Sym² Δ)` is entire; its Euler factor at `2` is computed in §14.4.
- `E: y² + y = x³ − x² − 10x − 20` (conductor `11`, semistable): §14.2(2) gives every `Sym^{n−1}`.

### Dependencies

Layers 3, 7, 8, 10, 13; SerreWeightAndLevelOptimisation §6.9; PotentialAutomorphyInfrastructurePartII
PL.0; AutomorphicGaloisRepresentations §7.5; AutomorphicLFunctionsAndLocalFactors AL.2;
ModularityAndLanglandsExtensions §§1.10, 1.15, 4.13, 4.15; Tau Ceti `HeckeRing.GL2.Newform`.

## Downstream consumers

- ModularityAndLanglandsExtensions: its statements in §§4.5–4.12, 4.20, 4.23, 4.29–4.31 are proved
  here (§§2.4, 3.1, 3.8, 14.1, 8.2, 9.8, 14.2, 12.7, 13.6, 14.3, 13.10, 7.7), and its consequences
  (Sato–Tate in §4.34, the Hilbert statements of §§4.35–4.36, the holomorphy statements of §§4.32,
  4.37) use them.
- Roadmaps on the cuspidal cohomology of `GL_n(ℤ)` and level-one change of weight consume §§13.10 and
  14.2.
- The technique of Layer 9 and Layer 12 (patching a pseudodeformation ring against a rank-two
  deformation ring) is reused wherever functoriality lifting is proved without residual adequacy of the
  target.

## Worked examples

- **The seed in rank `3` over `p = 577`.** `48 · 3! = 288` and `577 = 2 · 288 + 1`; `σ_0` is ordinary at
  `577 ≡ 1 mod 4`; the residual characters `χ_i = ω̄² ψ̄^{3−i}(ψ̄^c)^{i−1}` have ratios
  `(ψ̄/ψ̄^c)^{±1, ±2}` of order `> 2 · 3 = 6` on `G_{F(ζ_{577})}` (§7.2). Theorem 7.1 in rank `3` is
  supplied by §14.1, not by the seed route.
- **Ping-pong for `Δ` at `p = 2`.** The refinements of `Δ` have slopes `3` and `8`; the component of the
  slope-`3` refinement meets the boundary in some `X_i`; with `m ≥ m_Δ` the ping-pong point has weight
  `k′ = 2i + 2^{m+1} − 1` and slope `2i`, and its twin lies on `X_{2^m − 1}` (§3.7).
- **Clozel–Thorne signs at `n = 9`.** `jY − jX + jZ` equals twice the shuffle sum of `(2, 1)` with
  `(1, 0)`, term by term (§4.12).
- **Bertrand at `n = 11`.** The only prime with `11/2 < p < 11` is `7`, so `r = 4`; Thorne 2024's route
  would need `TP_4`, while §13.10 uses `SP_3`, `SP_4`, `SP_5` and `SP_3`.

## References

- [nt21] James Newton and Jack A. Thorne, *Symmetric power functoriality for holomorphic modular
  forms*, Publ. Math. IHÉS 134 (2021), 1–116; arXiv:1912.11261v3, cited by PDF page.
- [nt21b] James Newton and Jack A. Thorne, *Symmetric power functoriality for holomorphic modular
  forms, II*, Publ. Math. IHÉS 134 (2021), 117–152; arXiv:2009.07180v2, cited by PDF page.
- [nt26] James Newton and Jack A. Thorne, *Symmetric power functoriality for Hilbert modular forms*,
  Ann. of Math. 203 (2026); arXiv:2212.03595v2, cited by PDF page.
- [ct17] Laurent Clozel and Jack A. Thorne, *Level-raising and symmetric power functoriality, III*,
  Duke Math. J. 166 (2017), 325–402; authors' accepted manuscript, cited by its pages.
- [ct15] Laurent Clozel and Jack A. Thorne, *Level raising and symmetric power functoriality, II*,
  Ann. of Math. 181 (2015); authors' manuscript.
- [th24] Jack A. Thorne, *A p-adic approach to the existence of level-raising congruences*, Proc. Lond.
  Math. Soc. 128 (2024), e12584; arXiv:2212.03591v2, cited by PDF page.
- [at20] Konstantinos Anastassiades and Jack A. Thorne, *Raising the level of automorphic
  representations of `GL_{2n}` of unitary type*, J. Inst. Math. Jussieu (2021); arXiv:1912.11267.
- [bk05] Kevin Buzzard and L. J. P. Kilford, *The 2-adic eigencurve at the boundary of weight space*,
  Compositio Math. 141 (2005), 605–619; author's copy.
- [con99] Brian Conrad, *Irreducible components of rigid spaces*, Ann. Inst. Fourier 49 (1999); author's
  copy, internal pagination.
- [chen14] Gaëtan Chenevier, *The p-adic analytic space of pseudocharacters of a profinite group and
  pseudorepresentations over arbitrary rings*, in Automorphic forms and Galois representations, LMS
  Lecture Note Ser. 414 (2014); arXiv:0809.0415v2.
- [kl87] David Kazhdan and George Lusztig, *Proof of the Deligne–Langlands conjecture for Hecke
  algebras*, Invent. Math. 87 (1987), 153–215; cited by its locators.
- [moe07] Colette Mœglin, *Classification et changement de base pour les séries discrètes des groupes
  unitaires p-adiques*, Pacific J. Math. 233 (2007); arXiv:math/0610960v1.
- [kv12] David Kazhdan and Yakov Varshavsky, *On endoscopic transfer of Deligne–Lusztig functions*, Duke
  Math. J. 161 (2012), 675–732; arXiv:0902.3426v1 (its Theorem 2.2.5 is Theorem 2.2.6 of the published
  version).
- [dm18] Olivier Dudas and Gunter Malle, *Modular irreducibility of cuspidal unipotent characters*,
  Invent. Math. (2018); arXiv:1611.07373v2.
- [ls20] Peter Lust and Shaun Stevens, *On depth zero L-packets for classical groups*, Proc. Lond. Math.
  Soc. (2020); arXiv:1611.08421v1.
- [wes04] Tom Weston, *Unobstructed modular deformation problems*, Amer. J. Math. 126 (2004);
  arXiv:math/0212091v2.
- [bbm82] Pierre Berthelot, Lawrence Breen and William Messing, *Théorie de Dieudonné cristalline II*,
  Lecture Notes in Math. 930 (1982); cited by its locator.
- [kw09] Chandrashekhar Khare and Jean-Pierre Wintenberger, *Serre's modularity conjecture (II)*,
  Invent. Math. 178 (2009); cited by its locator.
