# Roadmap: hecke stacks and local shtukas, part II — affine Deligne–Lusztig dimensions

**Summary.** Build the classical and perfect affine Deligne–Lusztig loci, their spherical dimension theorem,
and the flag-variety nonemptiness and dimension theorem in shrunken Weyl chambers. The inputs are
reductive-group and Iwahori–Weyl geometry, integral Newton invariants, and bounded flag and Grassmannian
moduli. The proof develops lattice charts for superbasic general linear groups, Levi and convolution
comparisons, generic Newton strata, and two geometric correspondences to a cordial translation family. It
treats arbitrary residue characteristic and retains the geometric transfers needed for ramified and
mixed-characteristic flag data.

## Scope and ownership

HeckeStacksAndLocalShtukas, HS0–HS4, ends with generic Hecke correspondences, local-shtuka diamonds and
towers, Hecke functors and representation-valued cohomology. This Part II develops the classical and perfect
relative-Frobenius loci and their geometric dimensions. These constructions do not require a comparison to
local-shtuka diamonds. The latter comparison belongs to the integral continuation.

The following objects have other owners, and are not additional constructions here.

- Mathlib supplies subgroup double cosets, nonnormal left-coset quotients and finite sets; Tau Ceti supplies the left double-coset invariance lemma identified below.
- ReductiveGroupsPartII RG2.1, RG2.3 and RG2.4 supplies apartments, root groups, connected parahorics, Lang theory, Iwahori–Weyl groups, normal forms, lengths, Bruhat order and integral Kottwitz homomorphisms. The finite factor η and geometric cordiality are defined and proved in §§0.2 and 4.7 here, using that normal form and length formula.
- RootSystems Layers 3, 4 and 6 owns generic Coxeter, chamber and integral root-data theory. RootSystemsPartII RS2.1 owns integral dominance on the retained lattice; its supplier extensions below own Demazure products, twisted Red-Min and dominant subtraction. The minimal-reduction input is the full extended-affine theorem in that supplier contract.
- BunGAndNewtonStrata §§0.5–0.6 and 1.7–1.45 owns B(G), σ-centralizers, split-rank defect, integral κ, Newton invariants and their order, Levi comparison, straight classes, Galois averages, ordered norms and central lifts. The generic norm and centralizer comparison are used only to construct the geometric isomorphism in §3.6. The superbasic classification and Newton-cell inputs are supplier extensions of that direction.
- GeometricSatakeAndFusion GS0, “Witt bounds, determinant lines and projective models”, owns flag and Grassmannian carriers, flag incidence and its two fibre bounds; GS1 owns semi-infinite geometry; GS2, rational-special-fibre-convolution, owns spherical geometric semismallness. The variants here are their bσ-graph pullbacks and top-stratum attainment, with explicit bounded-model compatibility.
- SchemeAndStackFoundations §§0.7, 0.9, 0.23–0.26 and Layer 1 owns general dimension, limits, perfection and descent. TraceFormula Layer 11 owns the finite-type Grothendieck–Lefschetz theorem in the CohomologicalPointCounting family. Its application to the perfect models in §3.1 is part of the local Lang comparison, not a second generic trace theorem.
- SmoothRepresentationsOfLocalGroups SR.1.5 owns the affine-Hecke algebra direction and its twisted cocenter extension. The geometric dimension-equals-degree comparison belongs to §1.3 here.

HeckeStacksAndLocalShtukasComponentsPartII owns rational strata, centralizer actions on component sets,
parahoric and very-special reductions, Hodge–Newton irreducible component theorems and comparison with
integral specialization. HeckeStacksAndLocalShtukasIntegralPartII owns bounded integral parahoric shtuka
functors, crystalline deformation and quasi-isogeny diagrams, canonical parahoric models, formal-completion
and local-model comparisons, and generic/special-fibre specialization.
HeckeStacksAndLocalShtukasKottwitzPartII owns fixed-point and elliptic correspondences, local-shtuka
Lefschetz–Verdier applications, finite-length preservation and the Kottwitz character formula. These are
downstream directions; none supplies a dimension-theorem input here. The three directions retain the
distinction between connected components, irreducible components and framing-group orbits, and between
integral models and their classical or perfect special fibres.

## Conventions

Let F be a nonarchimedean local field with finite residue field 𝔽_q, q = p^f with p prime and f ≥ 1. Let L be
its completed maximal unramified extension, k the algebraic residue closure, ϖ a uniformizer of F, and σ
arithmetic q-Frobenius. Thus q = 1 is outside the hypotheses, while p = 2 and 3 are included. The group G is
connected reductive over F; I is a connected σ-stable Iwahori. Special-vertex choices and the based σ-action
are explicit. All moduli live in a fixed universe of test algebras, with quotient types and the ambient sheaf
category in its successor universe; no finiteness of all geometric points or components is imposed.

Use two geometric settings. The classical initial flag setting is F = 𝔽_q((t)), L = k((t)), with tame
splitting and the good-characteristic adjoint comparison of He14. The spherical setting uses a connected
reductive O_F-model and K = G(O_L); in mixed characteristic its test algebras are perfect k-algebras. Each
setting has its own proof. The targets for arbitrary local-field flags include the ramified and
mixed-characteristic comparison in the supplier contract and the bounded ADLV comparisons in §0.5. No theorem
is restricted to a set of good primes: a source's characteristic restriction determines the initial proof case
and the transfer that must subsequently be proved.

For the simple quasi-split flag statements the dominant chamber is opposite the base alcove, translations act
by −λ, and w = x t^λ y is the supplied normal form with t^λy minimal in its left W₀-coset. The associated
reduced affine root system fixes strip widths, including when the relative root system has multipliable roots.
Define η_σ(w) = σ⁻¹(y)x in §0.2. Write supp_σ for the σ-orbit union of finite simple support, λ^♦ for based
σ-average, ≥_ℤ for a nonnegative integral simple-coroot difference, and ≥ for rational Newton dominance.
Newton order is used inside one integral κ-component. The weight ρ satisfies 〈α∨,ρ〉 = 1; ρ∨ is a coweight.
Defect is rank_F G − rank_F J_b. Pairings ignore central directions of ρ. All halves and differences are
rational arithmetic, never subtraction in natural numbers.

Dimensions of ADLVs are finite rational values or −∞, with dim ∅ = −∞, max ∅ = −∞, −∞ + c = −∞ for finite c, and positive finite scaling of −∞ equal to −∞.
Differences of actual dimensions are formed only when both loci are nonempty. The normalizations on general
loop spaces in §3.1 are relative dimensions on compatible admissible truncations, not absolute dimensions of
an infinite-dimensional ind-space. The full coweight lattice P∨ used in Layer 5 is distinguished from the
original cocharacter lattice Y. A conclusion for the original group includes the component and integral-κ
comparison in §3.2.

**Checks.**

- In split adjoint A₁ the base alcove has α-values (−1,0). The element s t^(nα∨), n ≥ 1, sends it to (2n,2n+1), has length 2n+1 and η = s; for b = 1 the virtual dimension is (2n+1+1)/2 = n+1.
- In GL₂, ρ = (1/2,−1/2). For μ = (1,0) and basic slopes (1/2,1/2), ranks 2 and 1 give defect 1 and the spherical value 1/2 − 1/2 = 0. Reversing the Newton sign or using absolute ranks fails this witness.
- On H²_c of the affine line the geometric Frobenius trace is q, and H¹_c is zero. Arithmetic Frobenius acts by q⁻¹ on that one-dimensional ℚ_ℓ-space. The trace convention in §3.1 is geometric; σ in every point condition is arithmetic. This witness is also required of the TraceFormula convention bridge.
- With h = 2, the lattice having leading indices ℕ has residue basis {0,1} and determinant component 0; shifting every leading index by 1 gives basis {1,2}, sum 3 and component 1. Reversing the volume sign fails this witness.
- For an unramified degree-three extension, τ_i = σ^(−i)τ₀ gives (σb)_τ₀ = σ(b_τ₁), and ordered norm b₀σ(b₁)σ²(b₂). A positive embedding cycle changes the second factor. Degree two alone cannot detect that mistake.

## Exact supplier contracts

### From Mathlib

Use `DoubleCoset.doubleCoset` and `DoubleCoset.mem_doubleCoset` in `Mathlib/GroupTheory/DoubleCoset.lean`: the
carrier is a product of two arbitrary sets with a singleton, and its membership criterion supplies two
factors. It imposes no subgroup or normality hypotheses. Use `QuotientGroup.leftRel` and
`QuotientGroup.leftRel_apply` in `Mathlib/GroupTheory/Coset/Defs.lean`: for a subgroup, the relation is x⁻¹y ∈
I and the quotient represents left cosets. Normality is required only for a quotient group structure. Use
`Finset` in `Mathlib/Data/Finset/Defs.lean` as a finite duplicate-free carrier; semi-modules themselves are
subsets of ℤ.

### From Tau Ceti

Use `DoubleCoset.mul_mem_doubleCoset_iff` in `TauCeti/GroupTheory/DoubleCoset/Basic.lean`, for H,K subgroups
and b ∈ H: bz ∈ HaK iff z ∈ HaK. The hypothesis is subgroup membership of b, with no normality assumption.
Right invariance in §0.1 follows by the analogous subgroup factor calculation.

### From TauCetiRoadmap.ReductiveGroupsPartII

Consume RG2.0.4 for L and σ; RG2.1 for apartments, the associated reduced affine roots, root groups,
fundamental groups and representative integral κ; RG2.3, parahoric-subgroup, associated-parahorics,
lang-theorem and lang-for-pro-algebraic-groups; RG2.4, affine-tits-system, iwahori-weyl-group,
length-and-bruhat-order, dominant-coinvariant-cocharacters, dominant-normal-form, translation-length-formula,
kottwitz-quotient, iwahori-bruhat-decomposition and simple-cell-multiplication. The normal form is unique and
its length is ℓx + ℓt^λ − ℓy. The chamber and translation orientation is transported to the convention above
before using any formula. The supplier's SL₂ witness has translation length 2 and left-reflection translation
length 3; reversing both the apartment coordinate and chamber gives the same lengths here.

What ReductiveGroupsPartII must provide (gap:unipotent-linearization): The M-equivariant F-scheme comparison
of a parabolic unipotent radical with its Lie algebra at its exact characteristic hypotheses, together with a
characteristic-independent replacement sufficient for the twisted Lang dimension calculation.

### From TauCetiRoadmap.RootSystems and TauCetiRoadmap.RootSystemsPartII

Consume RootSystems Layers 3, 4 and 6 for Coxeter theory, chamber fundamental domains, longest elements and
integral root data. Consume RootSystemsPartII RS2.1, integral-order, for the order determined by the pinned
positive root cone on the retained lattice and its flipped coroot version. For adjoint A₁ with positive coroot
2 in ℤ, 0 ≤_ℤ 2 and 0 ≰_ℤ 1. No saturation of that integral cone is allowed. The Red-Min input says that each
extended-affine w reaches a minimal element of its σ-class by length-nonincreasing simple twisted
conjugations, and minimal elements of one class satisfy strong twisted conjugacy; a merely terminal word is
insufficient (hn14, Theorem 2.9 and Corollary 2.10, PDF pp. 10–11; Proposition 2.7, PDF pp. 9–10).

What RootSystemsPartII must provide (gap:twisted-redmin-demazure): The associative extended-affine Demazure
product with support union, parabolic minimum comparisons, twisted Red-Min and strong conjugacy, and
straight–finite-parabolic decomposition, including the finite-Coxeter basic-class input.

What RootSystemsPartII must provide (gap:dominant-subtraction): Least dominant subtraction in the specified
integral coroot coset of the full coweight lattice, with existence, monotonicity, associativity,
fundamental-coweight comparisons and the original-lattice map.

The precise combinatorial locators are hn14 line 398 (finite-parabolic comparison), hn14 line 434 and hn14 line 470 (minimal reduction and conjugacy).

### From TauCetiRoadmap.BunGAndNewtonStrata

Consume §§0.5–0.6, G-isocrystals and B(G); §§1.7–1.8, galois-average and newton-and-kottwitz-maps;
§§1.10–1.11, straight-weyl-classification and classification-by-two-invariants; §§1.13–1.15,
sigma-centralizer-J-b and defect; §1.21, partial-order-on-B-of-G; §1.27, ordinary-straight-translation; §1.30,
product-and-unramified-norm; §1.45, general-levi-newton-comparison; and §1.43, z-extension-bounded-lifting, at
its p-adic scope. Keep the basic class of a given κ, the Newton rational representative and the original
integral κ distinct. The norm comparison uses τ_i = σ^(−i)τ₀, preserves the ρ-pairing and preserves split-rank
defect without a degree multiplier: Res_(E/F) GL₂ and a basic slope-1/2 H-class both have defect 2−1 = 1.

What BunGAndNewtonStrata must provide (gap:superbasic-classification): Superbasic classes as those meeting no
proper F-Levi, the criterion that J_b/Z(G) is F-anisotropic and the unramified F-simple adjoint classification as
restrictions of PGL_h, with a GL_h lift preserving the specified integral component.

What BunGAndNewtonStrata must provide (gap:newton-cell-purity): The Newton-poset length formula, strong
topological purity on equal-characteristic Iwahori cells and their bounded completions, greatestness on cell
closures, and the cell-to-ADLV dimension comparison without relying on cordial saturation.

### From TauCetiRoadmap.GeometricSatakeAndFusion

Consume GS0, “Witt bounds, determinant lines and projective models”, perfect-model-and-etale-comparison,
equal-characteristic-schubert-models, parahoric-ind-projectivity, flag-incidence-correspondences and
flag-convolution-fibres. Consume GS1, semi-infinite-affineness, and GS2, convolution-diagram and
rational-special-fibre-convolution. The spherical fibre bound is ≤ 〈ρ,Σμ−λ〉 over the exact endpoint Gr_λ. The
flag ordinary-product lower bound is (ℓu+ℓv−ℓuv)/2 and the Demazure bound is ℓu+ℓv−ℓ(u*v). For u=v=s these
give 1 and 1; their fibres are A¹ and G_m respectively. All these comparisons must commute with bounded base
change before their ADLV application.

What GeometricSatakeAndFusion must provide (gap:levi-intersection-dimension): The general-Levi bound d(μ,μ_M)
≤ 〈ρ,μ+μ_M〉 − 〈2ρ_M,μ_M〉 and equality at M-maximal positions on compatible perfect models.

What GeometricSatakeAndFusion must provide (gap:general-flag-geometry): The σ-twisted ramified and
mixed-characteristic flag moduli and incidence comparisons, with compatible bounded perfect models and the
ordinary and Demazure fibre bounds for every local-field datum used here.

### From TauCetiRoadmap.SchemeAndStackFoundations

Consume §0.7, fibre_dimension_formula and local dimension; §0.9, limits and approximation; §§0.23–0.26,
universal homeomorphisms, étale topological invariance, perfection and perfectly finitely presented models;
and Layer 1, algebraic spaces, torsors, descent and fibre products. Finite-type dimension inequalities are
applied to compatible bounded models, then passed to the supremum in §0.5. The generic-point lower-bound
argument for the particular ADLV chain diagrams belongs to §§0.5 and 6.3 here.

### From TauCetiRoadmap.TraceFormula

Consume Layer 11, Grothendieck–Lefschetz for constructible coefficients, from the CohomologicalPointCounting
family. Use separated finite-type finite-field models, bounded constructible complexes of finite Tor
dimension, compact supports, and ℓ ≠ p; the ℚ_ℓ form uses the family's EllAdicRealization comparison. Section
3.1 constructs and compares the particular separated pfp perfect-space models before applying this input.
Arithmetic and geometric Frobenius are inverse in the supplier's convention as in the affine-line witness
above. No restriction ℓ ≠ 2 is imposed when p ≠ 2.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

Consume SR.1.5, presentations of the Iwahori–Hecke algebra, over the integral Laurent coefficient ring. The
required twisted cocenter extension is specified below; specializing a numerical Hecke parameter before
constructing integral class polynomials would lose the degree information used by §1.3.

What SmoothRepresentationsOfLocalGroups must provide (gap:twisted-affine-cocenter): The integral twisted
affine-Hecke cocenter basis, positive class polynomials with their degree recursion, and the nonzero
twisted-Coxeter coefficient with corrected twisted support.

The integral class-polynomial and cocenter locators are hn14, Theorems 5.3 and 6.7, PDF pp. 25–26 and 29 (hn14 line 1068; hn14 line 1242), together with he14 §§2 and 11.

## How to read the build

Layer 0 fixes the carriers and dimension conventions. Layer 1 relates geometric reduction to integral
class-polynomial degrees. Layer 2 constructs the superbasic lattice strata and their dimensions. Layer 3
assembles spherical dimensions and the independent flag upper bound. Layer 4 develops generic Newton classes
and cordial saturation. Layers 5 and 6 build the double-flat factorization and its two correspondences. Layer
7 proves the proper-support obstruction and a basic seed without shrunkenness. Layer 8 combines necessity,
cordial reduction and the independent upper bound. Each target lists statement inputs and one proof route
separately through its Needs paragraph; the general local-field targets include their transfer constructions,
rather than assuming unexplained comparison axioms.

The headline results are the minimal-class and reduction theorems, dimension equals class-polynomial degree,
superbasic charts, Lang and Levi dimension comparisons, norm and iterated spherical dimension theorems,
spherical nonemptiness, the virtual upper bound, generic Newton dimension and cordial saturation,
translation-family cordiality, the two-correspondence reduction, Levi obstruction and the basic seed, and the
final shrunken criterion with its basic and large-translation specializations. Their actual moduli carriers
are substantial constructions. Suggested.lean explains why none of these geometric headlines is statable on
the pinned APIs; it introduces no surrogate geometric predicates.

## Layer 0: affine Deligne–Lusztig loci and conventions

### 0.1 Affine Deligne–Lusztig points

H is an arbitrary group, σ∈Aut(H), I≤H and σ(I)=I. For a group H, an automorphism σ, a subgroup I with σ(I)=I
and b,w∈H, set r_b(g)=g⁻¹bσ(g) and X_I(w,b)={gI : r_b(g)∈IwI}⊂H/I. This is a set of left cosets, without a
normality assumption. For H=G(L) and w a chosen lift of an Iwahori–Weyl element this is X_w(b)(k). (he21,
§2.2, p. 5; he14, Definition 1.1, p. 372). Source extraction: he21 line 186.

A proof route is as follows. Compute r_b(gi)=i⁻¹r_b(g)σ(i); subgroup double-coset invariance proves descent to
H/I. Replacing w by i₁wi₂ leaves the set unchanged; use the existing double-coset carrier.

No quotient group structure is assumed on H/I. Prove the representative criterion in both directions under σ(I)=I.

The construction has the following API.

- r_b(g)=g⁻¹bσ(g).
- A subset of H/I defined by a representative satisfying the double-coset condition.
- gI∈X_I(w,b) iff r_b(g)∈IwI.
- r_b(gi)=i⁻¹r_b(g)σ(i).
- Equal double cosets IwI give equal point loci.

**Checks.**

- For commutative H and σ=id, X_I(w,b) is all of H/I iff b∈IwI, and otherwise empty.
- For I={1}, σ=id and b=1, the locus is all of H exactly when w=1; for w≠1 it is empty.
- For I=H the unique left coset belongs to the locus for every b,w.
- In S₃ with I={1}, σ=id, b=(12), the class of g=(123) belongs to the locus labelled g⁻¹bg=(13), and not to the locus labelled b.
- For the trivial group both quotient and locus have one point. In S₃ with I=〈(12)〉, I is not normal; replacing g by g(12) changes r_b by left multiplication by (12) and right multiplication by σ((12)), so membership is invariant without a quotient-group law.

*Needs:* `DoubleCoset.doubleCoset`; `DoubleCoset.mem_doubleCoset`; `QuotientGroup.leftRel_apply`;
`DoubleCoset.mul_mem_doubleCoset_iff`.

### 0.2 Virtual dimension

Use any connected reductive based normal-form datum with the apartment orientation of the Conventions. Define
the finite factor η_σ(w) = σ⁻¹(y)x using the supplied unique normal form w = x t^λ y, with t^λy minimal in its
left W₀-coset. Define the virtual dimension by d_w(b) = (ℓw + ℓη_σ(w) − def_G(b))/2 − 〈ν_b,ρ〉 in ℚ. Here ρ is
the weight with 〈α∨,ρ〉 = 1 for every simple coroot, and def_G(b) uses F-split ranks. This scalar expression
also applies to reductive product data with a compatible normal form, including the GL₂ Checks below. (he21,
§2.2, (2.1)–(2.2), p. 5). Source extraction: he21 line 198.

A proof route is as follows. Use the supplied normal form and split-rank defect, and the finite factor η
defined here. Define the scalar expression over ℚ and its coercion to extended dimension.

No rounding or natural-number subtraction occurs. The defect uses split ranks over F, not absolute ranks or
ranks over L.

The construction has the following API.

- The virtual dimension is the stated rational expression for the specified normal-form datum.
- It depends only on [b].
- d_w(b)−d_v(b)=(ℓw+ℓηw−ℓv−ℓηv)/2.
- For basic b the Newton pairing vanishes in the semisimple directions.
- For product data the expression is the sum of the factor expressions; this alone is not geometric transport.

**Checks.**

- For split adjoint A₁, b=1 and w=s, ℓw=ℓη=1 and d_w(1)=1.
- For split GL₂, λ=(1,0), w=t^λ and b=t^λ, the length 1 and pairing 1/2 give d=0.
- For GL₂ with slope-1/2 basic b, def=1. At w=s t^(1,0), lengths 2 and 1 give d=1.
- For type A₂ with σ swapping s₁,s₂ and x=s₁,y=s₂, η=σ⁻¹(s₂)s₁=1; replacing σ⁻¹(y) by y gives length 2 and changes d by 1.

*Needs:* ReductiveGroupsPartII RG2.4, dominant-normal-form; BunGAndNewtonStrata §1.15, defect;
BunGAndNewtonStrata Layer 1, newton-and-kottwitz-maps.

### 0.3 Shrunken Weyl chambers

Use the simple quasi-split flag datum and apartment orientation of the Conventions. For the reduced root
system associated with the affine Weyl group and He’s apartment convention, remove the open critical strips
{v:−1<〈α,v〉<0} for all positive roots α. A shrunken chamber is a connected component of the subset. Say w is
shrunken when its base-alcove image lies in such a component. This geometric hypothesis is retained
independently of all lower bounds on λ_w^♦. (he21, §2.2, p. 5; Theorem 6.1 and Corollary 6.4, pp. 13–14; he15,
§2.9.4, PDF pp. 36–37). Source extraction: he15 line 1464.

A proof route is as follows. Use the existing affine apartment and root pairings; define the removed subset
and alcove containment. Translate root inequalities to the Iwahori–Weyl chamber convention only through an
explicit orientation comparison.

Neither a large dominant cocharacter nor full finite support is accepted as a replacement for shrunkenness.

The construction has the following API.

- For each positive root of the associated reduced affine root system, the removed strip is exactly the open set −1 < 〈α,v〉 < 0.
- The shrunken chambers are precisely the connected components after deleting the union of the critical strips.
- The shrunken condition holds exactly when the whole alcove w·a lies in one such component.
- The based σ-action preserves the condition.
- Transport requires the specified apartment and base-alcove orientation.

**Checks.**

- In A₁ a test alcove whose α-values lie in (−1,0) is rejected.
- Alcoves with α-values wholly in (0,1) or in (−2,−1) lie outside the A₁ critical strip.
- The boundary hyperplanes with α=0 or α=−1 are not removed; replacing the open strip by a closed one is a wrong definition.
- In split adjoint A₂ take ν=0 and λ=6ω₁∨=4α₁∨+2α₂∨. Then λ≥_ℤ2ρ∨, but 〈α₂,λ〉=0, so t^λ preserves the base alcove’s α₂-critical strip and is not shrunken.

*Needs:* ReductiveGroupsPartII RG2.1, apartment; ReductiveGroupsPartII RG2.4, affine-tits-system;
ReductiveGroupsPartII RG2.4, length-and-bruhat-order.

### 0.4 Exact and bounded spherical loci

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. For the
hyperspecial affine Grassmannian Gr_G, evaluated over O_L with b fixed over L, and dominant μ, construct the
functor X_≤μ(b)(R) of modifications (E,β) with Inv_x(β⁻¹bσ(β))≤_ℤμ at every geometric point x of Spec R. The
exact equality condition defines X_μ(b). In the equal-characteristic scheme setting take the reduced loci; in
mixed characteristic take perfect spaces. On k-points these are the closed K-double-coset union and the exact
Kt^μK condition, respectively. (zhu17, §3.1.1, (3.1.1)–(3.1.2), p. 455; Lemma 1.22, p. 428). Source extraction: zhu17 line 2111.

For a connected σ-stable parahoric level P, use the supplied partial affine flag space Fl_P and define the parahoric relative-Frobenius locus at a double-coset position z by the bσ-graph pullback of its exact position stratum; its geometric points satisfy g⁻¹bσ(g)∈P ż P. A closed bound is the pullback of the corresponding finite Schubert union. At a special maximal parahoric, the dominant coinvariant λ labels this exact position. This is the parahoric variant used by §4.1; its hyperspecial specialization is the spherical functor above. (he21, Theorem 4.4, p. 7; he14, §7.1, pp. 389–390.)

A proof route is as follows. Pull back the relative-position strata along the bσ graph in the supplied
Grassmannian. Use closedness of ≤μ and openness of equality inside it; the admissible union is not a single
double coset.

The symbol X_μ always means the exact stratum here. The component continuation must give an explicit
dictionary to the component continuation’s closed-union notation.

The construction has the following API.

- The functor of relative-position bounds at every geometric point.
- The open equality locus in the bound.
- k-points are ⋃_(λ≤_ℤμ) X_λ(b)(k).
- A canonical locally closed immersion X_μ(b)→Gr_G factoring through X_≤μ(b).
- μ≤_ℤμ′ gives the inclusion of bounded loci.

- At P=I the parahoric graph pullback has the flag point condition of §0.1 and the realization of §0.5.
- At a hyperspecial P=K the parahoric exact locus is the spherical exact locus with the same μ and b.
- For I⊂P, forgetting the I-level gives a morphism from the flag exact locus at w to the parahoric exact locus at the image of w in the parahoric double-coset set; the same forgetting map respects closed Schubert bounds.

**Checks.**

- For G=G_m, μ=0 and b=ϖ, both loci are empty since valuation is 1, although the numerical dimension expression is 0.
- For GL₂, b=1 and μ=(1,−1), the identity point lies in X_0(1)⊂X_≤μ(1) but not in X_μ(1).
- For a torus, the dominance interval has one element, so the exact and bounded loci coincide.
- For k of characteristic p, the k-algebra k[ε]/(ε²) is not perfect, because its nonzero ε has ε^p=0; it is outside the mixed-characteristic perfect functor’s domain.
- For the zero test algebra Spec(0)=∅, a sheaf has its required singleton value. A geometrically empty ADLV still has no geometric field points and has dimension −∞; “empty” does not mean an everywhere empty presheaf.
- For G_m the connected parahoric and Iwahori are both O_L×; the two point conditions coincide, and a valuation-1 b at the zero bound is empty in both.
- For GL₂, the finite reflection s maps to the zero position under I⊂K=GL₂(O_L). Over the standard σ-stable lattice, X_s(1) has fibre P¹ minus P¹(𝔽_q) of dimension 1, while X_1(1) has q+1 fixed flags; forgetting the flag is not an isomorphism on these fibres.

*Needs:* §0.1; GeometricSatakeAndFusion GS0, Witt bounds and projective models; ReductiveGroupsPartII RG2.4,
dominant-coinvariant-cocharacters.

### 0.5 Geometric realization and dimension of ADLVs

The initial classical proof uses the equal-characteristic tame adjoint setting of the Conventions; the general
flag theorem includes the specified transfer. For the second branch use a connected reductive O_F-model with
K=G(O_L), evaluating on perfect k-algebras in mixed characteristic; this replaces the equal-characteristic
branch. Construct X_w(b) as a reduced locally closed locus of the affine flag ind-scheme in the He14
equal-characteristic setting, locally of finite type and of finite dimension. For the unramified
mixed-characteristic spherical loci construct locally perfectly finite type spaces. Dimension is the supremum
on bounded finite-type models, valued in ℚ∪{−∞}, with dim ∅=−∞. Show independence of a finite-type
deperfection, invariance under universal homeomorphisms and the bounded fibre estimates actually used below. A
perfect space of positive dimension is not asserted finite type. (he14, Definition 1.1 and §1.3, pp. 371–372;
zhu17, §3.1.1, p. 455; Definition A.13 and Proposition A.15–Corollary A.16, pp. 471–472). Source extraction: he14 line 203.

A proof route is as follows. Use the supplied flag/Grassmannian geometry; identify the reduced pullback with
the point condition. Descend bounded perfect diagrams to compatible finite-type models and use the topological
invariance of Krull dimension. For a surjective morphism on bounded models with every geometric fibre of
dimension ≥n, prove dim(source)≥dim(target)+n at generic points; pass to the supremum. Construct the
compatible bounded source diagram over each target generic point; global component finiteness is not a
hypothesis.

Bounded exhaustion and independence proofs must precede the inequalities in HSD6. General ramified perfect
flag geometry is a separate scope transfer the general flag-geometry transfer; the unramified spherical
construction does not supply it.

The construction has the following API.

- Geometric points agree with the point locus and the spherical torsor conditions.
- Closed bounded pieces exhaust the locally finite type locus.
- The empty locus has dimension −∞.
- For each bounded finite-type model, its perfection has the same dimension as that model.
- A universal homeomorphism preserves dimension.
- Surjectivity and a uniform geometric fibre lower bound give the stated dimension lower bound, with finite-type hypotheses explicit.

**Checks.**

- The perfection of A¹ has dimension 1 even though it is not finite type.
- For a split torus with b=1, μ=0, the spherical locus is an infinite discrete set of dimension 0; no global finite-component axiom is allowed.
- An empty torus mismatch has dimension −∞, not 0.
- A product Y×Aⁿ→Y on finite-type models has dimension dim Y+n, including after perfection.

*Needs:* §0.1; §0.4; GeometricSatakeAndFusion GS0, Witt bounds and projective models;
SchemeAndStackFoundations §§0.7, 0.9, 0.23–0.26; SchemeAndStackFoundations Layer 1; SchemeAndStackFoundations
§0.7, fibre_dimension_formula.

The general flag realization extends the reduced construction to σ-twisted ramified and mixed-characteristic
local-field data through gap:general-flag-geometry. Identify the geometric relative-Frobenius pullback on each
bounded flag model, compare classical and perfect realizations wherever both are defined, and prove invariance
of nonemptiness and dimension under the stated comparison morphisms. The initial tame classical proof retains
p ∤ |π₁(G_der)|; the general target includes the replacement argument at the excluded characteristics. The
comparison morphisms have those bounded ADLV models as source and target, commute with endpoint and framing
maps, and identify the point condition of §0.1. (he21, §§1.5 and 2.2, pp. 3–5; he14, §1.1, p. 371; zhu17,
Appendix A, pp. 471–472.)

### 0.6 Change of framing, centralizers and Kottwitz obstruction

 For b′=h b σ(h)⁻¹, left multiplication gI↦hgI identifies X_w(b) with X_w(b′); for j∈J_b(F) it acts on X_w(b).
These maps extend to the geometric realizations and respect spherical bounds. Nonemptiness implies
κ_G(b)=κ_G(w) (or κ_G(b)=μ^natural in the spherical case). (he14, §1.3, p. 372 and proof of Theorem 4.8, pp.
382–383; he21, §6.2, p. 13). Source extraction: he14 line 213.

A proof route is as follows. Compute (hg)⁻¹b′σ(hg)=g⁻¹bσ(g). Apply the integral Kottwitz homomorphism to
g⁻¹bσ(g) and take σ-coinvariants; I lies in its kernel.

Retain torsion in κ; equality only after tensoring with ℚ does not suffice. For the diagonal torus in GL₂ the
two permutations of diag(ϖ,1) illustrate why a G-class can meet several Levi classes.

**Checks.**

- For σ = id and b′ = hbh⁻¹, the identity (hg)⁻¹b′(hg) = g⁻¹bg fixes the direction of transport. In S₃, b=(12), h=(123) gives b′=(23); using h⁻¹ as the transport map fails.
- For the diagonal torus of GL₂, diag(ϖ,1) and diag(1,ϖ) have torus invariants (1,0) and (0,1), but the same group κ=1. Rationalizing κ cannot detect its torsion components in other groups.

*Needs:* §0.5; BunGAndNewtonStrata §1.13, sigma-centralizer-J-b; BunGAndNewtonStrata Layer 1,
newton-and-kottwitz-maps; ReductiveGroupsPartII RG2.4, kottwitz-quotient.

### Examples

For S₃ with I={1}, σ=id, b=(12), g=(123), one obtains g⁻¹bg=(13). For a split torus, b=ϖ and μ=0 instead gives
the empty locus of dimension −∞. For GL₂ with b=1 and μ=(1,−1), the identity lattice belongs to the bounded
union through the exact zero stratum, but not to the exact μ-stratum.

### Dependencies

BunGAndNewtonStrata Layer 1, newton-and-kottwitz-maps; BunGAndNewtonStrata §1.13, sigma-centralizer-J-b;
BunGAndNewtonStrata §1.15, defect; GeometricSatakeAndFusion GS0, Witt bounds and projective models;
ReductiveGroupsPartII RG2.1, apartment; ReductiveGroupsPartII RG2.4, affine-tits-system; ReductiveGroupsPartII
RG2.4, dominant-coinvariant-cocharacters; ReductiveGroupsPartII RG2.4, dominant-normal-form;
ReductiveGroupsPartII RG2.4, kottwitz-quotient; ReductiveGroupsPartII RG2.4, length-and-bruhat-order;
SchemeAndStackFoundations Layer 1; SchemeAndStackFoundations §0.7, fibre_dimension_formula;
SchemeAndStackFoundations §§0.7, 0.9, 0.23–0.26; `DoubleCoset.doubleCoset`; `DoubleCoset.mem_doubleCoset`;
`DoubleCoset.mul_mem_doubleCoset_iff`; `QuotientGroup.leftRel_apply`. The individual Needs paragraphs specify
the additional comparison constructions used by each route.

## Layer 1: reduction and class-polynomial dimensions

Use the extended-affine twisted Red-Min supplier theorem in the exact contract above before the terminal
geometry. It is a statement about arbitrary twisted affine classes, independent of a choice of b.

### 1.1 Minimal-length affine Deligne–Lusztig loci

The initial classical proof uses the equal-characteristic tame adjoint setting of the Conventions; the general
flag theorem includes the specified transfer. If w is minimal in its σ-conjugacy class in the extended affine
Weyl group, then X_w(b) is nonempty iff [b]=[ẇ], and in that case dim X_w(b)=ℓw−〈ν_b,2ρ〉. Representatives of
the same Weyl-group class are compared in B(G), not identified as group elements. (he21, Theorem 3.2, p. 6;
he14, Theorem 4.8, pp. 382–383). Source extraction: he14 line 610.

A proof route is as follows. Use the straight–finite-parabolic decomposition, whose missing generic
root-theoretic contract is in the root-combinatorics supplier extensions. The finite parabolic Lang
calculation supplies nonemptiness and the length contribution; transport the lift through B(G).

The theorem is geometric in the He14 setting; a mixed-characteristic generalization requires the general
flag-geometry transfer.

**Checks.**

- For a dominant straight GL₂ translation t^(1,0), length 1 and 〈ν,2ρ〉=1 give dimension 0. At a class with κ=0 the locus is empty and has dimension −∞.
- For the finite A₁ reflection s and b=1, length 1 and Newton pairing 0 give dimension 1.

*Needs:* the RootSystemsPartII Red-Min supplier contract; §0.5; BunGAndNewtonStrata Layer 1,
straight-weyl-classification; ReductiveGroupsPartII RG2.3, lang-for-pro-algebraic-groups.

### 1.2 Deligne–Lusztig reduction and dimension recurrence

The initial classical proof uses the equal-characteristic tame adjoint setting of the Conventions; the general
flag theorem includes the specified transfer. Length-preserving simple σ-conjugations induce universal
homeomorphisms between the corresponding reduced ADLVs. If ℓ(s w σ(s))=ℓw−2, decompose X_w(b) into a closed
piece universally homeomorphic to an A¹-fibration over X_(s w σ(s))(b) and an open piece universally
homeomorphic to a G_m-fibration over X_(s w)(b). Thus dim X_w(b)=1+max(dim X_(s w)(b),dim X_(s w σ(s))(b)),
with −∞ conventions. (gh10, Proposition 2.5.2 and Corollary 2.5.3, PDF pp. 7–9; he21, Proposition 3.3, p. 6).
Source extraction: gh10 line 300.

A proof route is as follows. Apply simple-cell multiplication to the endpoint correspondence; keep the open
and closed cases separate. Descend the universal-homeomorphism diagrams to bounded models before applying
dimension. Prove the σ-twisted and general local-field versions through the general flag-geometry transfer of
§0.5.

Empty terms remain −∞. A length-preserving move changes neither nonemptiness nor dimension; it does not
automatically preserve η.

**Checks.**

- For w=s₀s₁s₀ in split affine A₁ and b=1, the two reduced endpoints are s₁s₀ and s₁. The first is a straight nonbasic translation and gives −∞; the second has dimension 1. The recurrence gives 1+max(−∞,1)=2.
- If both branches are empty, 1+max(−∞,−∞)=−∞. An empty branch must not be assigned dimension 0.

*Needs:* §0.5; the RootSystemsPartII Red-Min supplier contract; ReductiveGroupsPartII RG2.4,
simple-cell-multiplication.

### 1.3 Class polynomials detect dimension and nonemptiness

The initial classical proof uses the equal-characteristic tame adjoint setting of the Conventions; the general
flag theorem includes the specified transfer. Given the σ-twisted affine-Hecke cocenter basis T_O and
expansion T_w=Σ_O f_(w,O)(v−v⁻¹)T_O with nonnegative integral class polynomials, define deg 0=−∞. Then dim
X_w(b)=max_(O mapping to [b]) ((ℓw+ℓO+deg f_(w,O))/2−〈ν_b,2ρ〉). In particular X_w(b) is nonempty iff at least
one such polynomial is nonzero. The generic cocenter and its recursion are supplier obligations, not newly
owned objects here. (he14, §2.2–§2.5, pp. 374–376; Theorem 6.1 and Corollary 6.2, pp. 387–388). Source extraction: he14 line 777.

A proof route is as follows. Use the genuine cocenter basis, integral positivity and degree recursion of the
twisted-cocenter supplier contract. Induct along Red-Min and compare the polynomial and geometric max
recurrences, with the same σ-conjugacy-to-B(G) map.

The index includes every Weyl-group class mapping to [b]; it is not a sum over B(G) alone. No polynomial
degree is assigned a finite value for zero.

**Checks.**

- At a minimal w in its own twisted class O, f_(w,O)=1 has degree 0, so the formula is ℓw−〈ν,2ρ〉; all other coefficients vanish and contribute −∞.
- For split affine A₁, w=s₀s₁s₀ and b=1, reduction gives the basic minimal class of s₁, of length 1, with degree 0: (3+1+0)/2=2. The other branch is the nonbasic straight translation. A spurious degree 1 gives 5/2 and violates parity.

*Needs:* §1.1; §1.2; BunGAndNewtonStrata Layer 1, straight-weyl-classification;
SmoothRepresentationsOfLocalGroups SR.1.

### 1.4 Universal dimension advantage

Use the simple quasi-split flag datum and apartment orientation of the Conventions. Define w⇒_σv when for
every [b] with X_v(b) nonempty, X_w(b) is nonempty and dim X_w(b)−dim X_v(b)≥(ℓw+ℓηw−ℓv−ℓηv)/2. This
implication formulation avoids subtracting −∞. It is equivalent to comparing dim X−d in the extended order.
The relation is reflexive and transitive; length-preserving reduction equivalence together with ℓηw≤ℓηv
implies w⇒_σv. (he21, §3.3, p. 6). Source extraction: he21 line 242.

A proof route is as follows. Define the relation using the implication and rational inequality. Cancel virtual
dimensions for the equivalent form; prove composition by addition when the right-hand locus is nonempty.

Never cancel two occurrences of −∞. Check the inequality direction on length-preserving moves.

The construction has the following API.

- The displayed condition for every [b].
- Comparison of dim−d with explicit empty-locus convention.
- A preorder, not an asserted antisymmetric order.
- Reduction equivalence plus the stated η inequality supplies advantage.

**Checks.**

- Every w has advantage over itself, including when all tested loci are empty.
- A class with X_v empty imposes no condition; it must not force X_w empty.
- If ℓw=ℓv and dimensions agree, ℓηw≤ℓηv is the direction that permits w⇒v.
- If w⇒v⇒u and X_u(b) is nonempty, add the two rational length differences to obtain w⇒u.

*Needs:* §0.2; §1.2.

### Examples

In split affine A₁ the word s₀s₁s₀ reduces to the finite reflection s₁ and the straight translation s₁s₀. For
b=1 these branches have dimensions 1 and −∞, giving 2. The minimal-class polynomial contribution is
(3+1+0)/2=2.

### Dependencies

Layers 0; BunGAndNewtonStrata Layer 1, straight-weyl-classification; ReductiveGroupsPartII RG2.3,
lang-for-pro-algebraic-groups; ReductiveGroupsPartII RG2.4, simple-cell-multiplication;
SmoothRepresentationsOfLocalGroups SR.1. The individual Needs paragraphs specify the additional comparison
constructions used by each route.

## Layer 2: superbasic lattice charts

### 2.1 Normalized semi-modules and their types

Fix h ≥ 1 and m ≥ 1 with gcd(m,h)=1. A central shift makes the lattice application’s Hodge entries nonnegative and m positive. A semi-module is a nonempty subset A⊂ℤ, bounded below and stable under adding m and h.
Its residue basis B=A∖(h+A) has one element in every residue class modulo h. It is normalized when
ΣB=h(h−1)/2. For b₀=min B, enumerate b_i=b_(i−1)+m−μ′_i h through B, with b_h=b₀ and each μ′_i maximal subject
to membership in A. This defines the type μ′ with the specified starting convention. (vie06, Definition 3.1
and Lemma 3.3, PDF p. 3 (with Remark 3.2)). Source extraction: vie06 line 106.

A proof route is as follows. Prove existence and uniqueness of the residue basis, then the unique integral
translation normalizing its sum. Use coprimality for the cycle enumeration and recover A from B+hℕ.

Keep μ increasing as in Viehmann until the explicit conversion to the dominant descending convention.

The construction has the following API.

- The nonempty subset with boundedness and both stability conditions.
- The h-element set B.
- The unique translated normalized semi-module.
- The cyclic enumeration determines an integer tuple μ′ of sum m and recovers the same residue basis after h steps.
- A=B+hℕ with the specified normalization and cycle.

**Checks.**

- For h=1,m≥1 the normalized semi-module is ℕ.
- For h=2,m=1, A=ℕ has B={0,1}, normalized sum 1, and type (0,1).
- The even nonnegative integers fail stability under m=1 and are not a semi-module for (m,h)=(1,2).
- A=1+ℕ has basis sum 3 for h=2; its normalization is ℕ, not A itself.
- The empty subset is bounded below and stable under both additions, but is not a semi-module and has no h-element residue basis.

*Needs:* `Finset`.

### 2.2 Extended semi-modules

The hypotheses of §2.1 hold; μ is increasing, nonnegative, and Σμ=m. For a normalized semi-module A and a
nonnegative increasing h-tuple μ of sum m, an extended semi-module is φ:ℤ→ℕ∪{−∞} with φ(a)=−∞ iff a∉A;
φ(a+h)≥φ(a)+1; φ(a)≤max{n:a+m−nh∈A}, with equality whenever every integer ≥a belongs to A; and a decomposition
of A into h increasing infinite sequences along which φ increases by 1. A successor is a+h when φ(a+h)=φ(a)+1
and is >a+h otherwise. The multiset of initial values is μ. It is cyclic when the displayed upper bound is an
equality for every a∈A. (vie06, Definition 3.4 and Lemmas 3.6–3.8, PDF pp. 3–5). Source extraction: vie06 line 133.

A proof route is as follows. Package the finite-type data and the required decomposition, without choosing
arbitrary ordered labels on equal initial values. Prove only finitely many extended semi-modules occur at
fixed μ, using the cited boundedness arguments.

The maximum is over integers n≥0 only when a∈A; outside A the value is −∞.

The construction has the following API.

- A, φ, the inequalities and sequence-decomposition property.
- Equality in the upper bound everywhere on A.
- Finitely many extended types for a fixed μ.
- The leading-index and Frobenius-divisibility construction of §2.3.
- V(A,φ)={(a,b)∈A²:b>a, φ(a)>φ(b)>φ(a−h)}.

**Checks.**

- For A=ℕ,h=2,m=1, φ(a)=⌊(a+1)/2⌋ on A and −∞ elsewhere gives type (0,1).
- The constant function 0 on A fails φ(a+h)≥φ(a)+1.
- Giving a finite value at −1 for A=ℕ violates the support condition.
- For the cyclic small example the set V is empty, so its chart dimension is 0.

*Needs:* §2.1.

### 2.3 Superbasic GLₕ lattice stratification

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. Here G=GL_h, b
is the displayed superbasic shift, and a central shift makes μ nonnegative. For b(e_i)=e_(i+m), e_(i+h)=ϖe_i
and gcd(m,h)=1 with m>0, for a lattice M in the exact nonnegative Hodge locus assign its set A(M) of leading indices. Set φ_M(a)=−∞ off A(M); on
A(M) set φ_M(a)=max{n≥0: some v∈M of leading index a has ϖ^(−n)bσ(v)∈M}. On the determinant-zero component
A(M) is normalized, and the exact Hodge locus of increasing type μ is the finite disjoint union of its locally
closed extended-semi-module strata S_(A,φ). The shift e_i↦e_(i+1), commuting with bσ, transports determinant
components. Finiteness is asserted on each fixed determinant component, not on the entire locus. (vie06, §2,
PDF p. 2; §4, PDF pp. 5–8; zhu17, End of the proof of Proposition 3.3, p. 460). Source extraction: vie06 line 206.

A proof route is as follows. Prove the lattice conditions give every clause of the extended semi-module
definition. Construct bounded locally closed strata using coefficient conditions, then prove finite exhaustion
and determinant transport. The mixed-characteristic chart morphisms require the perfect chart, Lang and
pullback comparisons of §§2.3–3.7, not merely a bijection of residue-field points.

A(M) uses a fixed leading-index convention. No assertion that every arbitrary pair (A,φ) has a stratum of the
expected dimension is made without the chart theorem.

The construction has the following API.

- The valuation support A(M).
- The function φ_M with the displayed maximum.
- The reduced/perfect locally closed locus with fixed (A,φ).
- The lattice assignment has that exact fibre.
- Finite disjoint stratification of the fixed determinant component.
- The centralizer shift identifies successive determinant components.

**Checks.**

- For h=2,m=1, the standard lattice has A=ℕ and φ(a)=⌊(a+1)/2⌋.
- Shifting leading indices by 1 changes ΣB by h and the determinant component by one.
- Replacing b by ϖb and μ by μ+(1,…,1) preserves A and adds 1 to φ on A.
- The shift with h=2,m=2 is not covered by the superbasic chart theorem.

*Needs:* §0.4; §2.2; BunGAndNewtonStrata §1.13, sigma-centralizer-J-b.

### 2.4 Dimensions of superbasic lattice charts

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. Use the
superbasic GL_h datum of §2.3. For every occurring extended semi-module (A,φ), V(A,φ) is finite and there is a
nonempty open U⊂A^V mapping to S_(A,φ), with the coefficient construction inducing a bijection on
algebraically closed points. Prove from this construction, finite-type models and the requisite
radicial/universal-homeomorphism argument that dim S_(A,φ)=|V|. For a cyclic extended semi-module U is all of
A^V. Consequently dim X_μ(b) on each determinant component is max |V|. (vie06, Theorem 4.3, PDF pp. 5–8;
zhu17, End of the proof of Proposition 3.3, p. 460). Source extraction: vie06 line 266.

A proof route is as follows. Read the triangular coefficient recursion as a morphism, not merely a
parametrization of points. Establish the geometric comparison in the perfect chart, Lang and pullback
comparisons of §§2.3–3.7 before concluding equality of dimensions in mixed characteristic.

Use the constructed morphism and its bounded finite-type models to prove the dimension assertion. Take the
maximum only after proving the finite stratification.

**Checks.**

- For h=2,m=1 and increasing μ=(0,1), V is empty: the chart A⁰ is a point and has dimension 0.
- The natural universal homeomorphism (A¹)^perf→A¹ preserves dimension 1; a bijection of unstructured sets alone imposes no dimension equation.

*Needs:* §2.3; §0.5.

### 2.5 The superbasic GLₕ dimension formula

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. Use the
superbasic GL_h datum of §2.3 and the actual chart morphisms and finite-type-model comparison of §2.4. For the
superbasic shift of slope m/h, and a dominant μ in the matching determinant component with X_μ(b) nonempty,
dim X_μ(b)=〈ρ,μ−ν_b〉−(h−1)/2. In Viehmann’s increasing convention ρ=((1−h)/2,(3−h)/2,…,(h−1)/2). Every
extended semi-module has |V| at most this value, and the cyclic type μ attains it. A central shift removes the
nonnegativity restriction on μ. (vie06, Proposition 5.2 and Theorem 5.3, PDF pp. 8–9, with proof through p.
12; zhu17, End of the proof of Proposition 3.3, p. 460). Source extraction: vie06 line 382.

A proof route is as follows. Prove the finite combinatorial bound by the inversion count and compare to the
cyclic case. Convert the increasing convention to the chosen descending dominance convention and use
def(b)=h−1.

For h=2,m=1, μ=(0,1) in increasing order gives dimension 0; μ=(−1,2) gives dimension 1. For h=3,m=4, μ=(0,0,4)
gives dimension 3. Central shift (m,μ)↦(m+h,μ+(1,…,1)) preserves the result.

*Needs:* §2.4; BunGAndNewtonStrata §1.15, defect.

### Examples

For h=2,m=1, the standard lattice gives A=ℕ, B={0,1}, type (0,1) and φ(a)=floor((a+1)/2) on A; V is empty. The
μ=(−1,2) case has dimension 1. For h=3,m=4, the increasing tuple (0,0,4) gives pairing 4 and defect
contribution 1, hence dimension 3.

### Dependencies

Layers 0; BunGAndNewtonStrata §1.13, sigma-centralizer-J-b; BunGAndNewtonStrata §1.15, defect; `Finset`. The
individual Needs paragraphs specify the additional comparison constructions used by each route.

## Layer 3: spherical dimensions and the virtual upper bound

### 3.1 Unipotent loop geometry in the Levi reduction

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. For the Newton
Levi M and its parabolic unipotent radical N, establish the equal- and mixed-characteristic loop-space
comparison needed for the twisted Lang-map fibre calculation. Where an M-equivariant F-scheme identification
N≃Lie N is used, obtain it with its exact hypotheses from the reductive-group owner; in mixed characteristic
it is not an identification of k-ind-schemes. Prove the required admissibility and dimension statements for
the resulting p-adic loop spaces, and the finite fixed-point calculation used in GHKR Lemma 5.4.3 by the
perfect-space trace argument. More precisely, for m∈M(L) with M-dominant Newton point ν_M, the map
f_m(n)=n⁻¹mσ(n)m⁻¹ on N(L) is surjective, inverse images of all admissible subsets are ind-admissible, and for every nonempty admissible Y, dim
f_m⁻¹(Y)−dim Y=Σ_(α∈R_N) min(〈α,ν_M〉,0)=〈ρ,ν_M−ν_G〉. Prove the same normalized formula on the perfect models
used in the Levi reduction; ν_G is the G-dominant representative. (zhu17, Proof of Theorem 3.1, §3.1.2, pp.
456–457; ghkr06, Proposition 5.3.1, PDF pp. 19–21; Lemma 5.4.3, PDF pp. 27–28). Source extraction: ghkr06 line 835.

A proof route is as follows. Separate the generic equivariant-linearization supplier from the new loop-space
construction. Check that coefficient truncations define admissible perfect morphisms and that the dimension
correction is the root-slope sum. Construct compatible perfect and finite-type models, then apply the
TraceFormula supplier at ℓ ≠ p with bounded constructible compactly supported coefficients.

This is a geometric proof obligation, not a consequence of an abstract bijection N(F)≃Lie N(F). The
replacement at excluded characteristics is part of gap:unipotent-linearization. For the cohomological
application take ℓ ≠ p and the constant ℚ_ℓ-complex on the separated finite-type model over a common finite residue extension; geometric
Frobenius on H²_c(A¹) has trace q and on H¹_c(A¹) trace 0. Transfer this trace through the étale comparison of
perfection before the fixed-point argument (zhu17, Appendix A.3.4, pp. 480–481).

**Checks.**

- For G=GL₂ and upper-triangular N, ν_M=(a,b) has one N-root slope a−b. Values a−b=2 and −2 give corrections min(2,0)=0 and min(−2,0)=−2; their dominant-reordering pairings 〈ρ,ν_M−ν_G〉 are 0 and −2.
- For N=1 the sum is empty, the Lang map is the identity of a point, and the correction is 0. Over 𝔽₂ the additive Lang polynomial u²−u has two roots and derivative −1=1; residue characteristic 2 does not remove this case.

*Needs:* ReductiveGroupsPartII RG2.3, parahoric-subgroup; SchemeAndStackFoundations §§0.7, 0.9, 0.23–0.26;
TraceFormula Layer 11 and its coefficient and compact-support suppliers; GeometricSatakeAndFusion GS0, Witt
bounds and projective models; ReductiveGroupsPartII RG2.3; gap:unipotent-linearization.

### 3.2 Componentwise adjoint reduction

Use either the specified good-characteristic equal-characteristic flag branch or the unramified spherical
branch, with their separate proofs. Compare corresponding connected components of X^G_μ(b) and
X^(G_ad)_(μ_ad)(b_ad), after fixing their integral Kottwitz invariants. For a fixed original κ-component with
nonempty source, construct the map to the corresponding adjoint κ-component and prove it is an isomorphism in
the reduced classical setting and the specified perfect-model comparison in the spherical setting. These are
the component maps used for dimension reduction; no global surjectivity over unmatched components is asserted.
In the ramified equal-characteristic flag argument retain p∤|π₁(G_ad)| when using GHN’s corrected statement;
the resulting map of the entire flag varieties need not be an immersion. For unramified spherical perfect loci
prove the relevant model-level component comparison separately. (ham15, arXiv v2, reduction after Proposition
2.10, PDF pp. 6–7; ghnerr, Proposition 0.0.1, p. 1; zhu17, §3.1.2, pp. 456–457). Source extraction: ghnerr line 16.

A proof route is as follows. Compare parahoric quotients and the Kottwitz component labels; prove the induced
component maps are the stated isomorphisms or universal homeomorphisms. Check compatibility of bσ and bounds
before base change to ADLVs. Preserve the original G-class when auxiliary coweights lie only in P∨. Prove the
original-lattice comparison on these same components before using the auxiliary factorization for the original
group.

Do not infer a global flag immersion from componentwise isomorphisms. Do not regard an auxiliary γ∈P∨ as an
original cocharacter without a lift. The BunGAndNewtonStrata §1.43 z-extension bounded-lifting supplier has
p-adic scope; it supplies no equal-characteristic comparison by itself. Use Hamacher’s separate component
argument in that branch.

**Checks.**

- For GL₂→PGL₂ the component map is ℤ→ℤ/2, so 0 and 2 have the same image; componentwise isomorphisms cannot make the whole flag map injective.
- For a group of adjoint type the component comparison is the identity, with no choice of a lift.

*Needs:* §0.6; ReductiveGroupsPartII RG2.3, associated-parahorics; BunGAndNewtonStrata Layer 1,
z-extension-bounded-lifting; ReductiveGroupsPartII RG2.3.

### 3.3 Reduction of superbasic adjoint factors

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. Apply the
superbasic classification supplied by BunGAndNewtonStrata to an F-simple adjoint unramified factor: it is
Res_(E/F) PGL_h for E/F finite unramified. Using the specified integral component, construct the geometric
comparison to a Res_(E/F) GL_h lift with a superbasic representative. Track the central cocharacter and
determinant. Combined with products and Levi retraction, this is the geometric reduction to the lattice charts
of Layer 2 and the norm isomorphism of §3.6; the abstract classification itself is not a second target here.
(ckv15, Lemma 3.1.1, PDF pp. 20–21; zhu17, §3.1.2, pp. 456–457). Source extraction: ckv15 line 931.

A proof route is as follows. Use the superbasic definition, classification and lift of the BunGAndNewtonStrata
supplier contract. Use the integral component comparison to lift and then apply the ordered norm construction.

The superbasic-classification supplier extension includes the anisotropic-classification input to CKV Lemma
3.1.1, with h ≥ 2 for an adjoint simple factor.

**Checks.**

- For GL₂ with shift m=1, the slope 1/2 is simple and defect is 1; the projection to PGL₂ retains the component 1 mod 2. The shift m=2 is not superbasic.
- For h=1 the GL₁ chart has defect 0; an F-simple adjoint factor is required to have positive semisimple rank, so PGL₁ is not a new simple factor.
- For GL₂ with ordinary slopes (1,0), J_b=G_m² has J_b/Z(G)=G_m of split rank 1; it fails the anisotropy criterion. The basic slope-1/2 division-algebra group has quotient split rank 0. Using the center of J_b instead of Z(G) would wrongly accept the ordinary class.

*Needs:* §3.2; BunGAndNewtonStrata Layer 1, general-levi-newton-comparison; BunGAndNewtonStrata Layer 1.

### 3.4 Spherical Levi fibres and dimension reduction

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. The
representative b lies in M(L) and is basic in M; retain κ_M(b) when indexing the retraction strata. Let M be a
standard Levi, P=MN, and b∈M(L) basic in M, with M-dominant Newton point ν_M and G-dominant representative
ν_G. Let S_M(μ,κ_M(b)) be the finite set of M-dominant relative positions occurring under the Iwasawa
retraction of Gr_μ and having κ_M=κ_M(b). Put d(μ,μ_M)=dim(N(L)t^(μ_M)K/K∩Gr_μ). The retraction is a morphism
on suitable locally closed pieces; over x∈X^M_(μ_M)(b) its fibre has dimension
d(μ,μ_M)+〈ρ,ν_M−ν_G〉−〈2ρ_N,ν_M〉. Thus dim X^G_μ(b) is the maximum of dim X^M_(μ_M)(b)+this correction over
nonempty terms indexed by S_M(μ,κ_M(b)). Use d≤〈ρ,μ+μ_M〉−〈2ρ_M,μ_M〉, with equality for an M-maximal μ_M. For
M=Cent_G(ν_b), choose the representative basic in M and ν_M=ν_G. (ham15, arXiv v2, Definitions 2.5 and 2.7,
Lemma 2.8 and Proposition 2.9, PDF pp. 4–6; ghkr06, Proposition 5.6.1 and Theorem 5.8.1, PDF pp. 29–32; zhu17,
§3.1.2, pp. 456–457). Source extraction: ham15 line 193.

A proof route is as follows. Use the supplied semi-infinite intersection geometry and its exact relative
positions. Apply the twisted Lang map on N and calculate its dimension shift using root slopes. Stratify the
image and apply fibre dimension on finite-type models; the theorem needs the perfect analogue in the perfect
chart, Lang and pullback comparisons of §§2.3–3.7.

All correction terms are retained before specializing to the Newton Levi. Empty Levi strata do not contribute
to the maximum.

**Checks.**

- For M=G, N=1 and μ_M=μ, the intersection dimension and both Newton corrections are 0, so the retraction is the identity.
- For GL₂, M=T, b=1, μ=(1,−1) and μ_M=0, the semi-infinite dimension is 〈ρ,(1,−1)〉=1 and both Newton terms vanish: the value is the torus dimension 0 plus 1. Dropping the intersection term gives the wrong value 0.

*Needs:* §0.5; BunGAndNewtonStrata Layer 1, general-levi-newton-comparison; GeometricSatakeAndFusion GS1;
§3.1; GeometricSatakeAndFusion GS1, semi-infinite-affineness; gap:levi-intersection-dimension.

### 3.5 Iterated spherical affine Deligne–Lusztig loci

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. Fix a local
field E, d≥1, dominant bounds μ₁,…,μ_d and b∈G(L_E). Construct the perfect locus of O_(L_E)-torsors E₀,…,E_d,
with E_d=σ_E^*E₀, modifications Φ_i:E_i[1/ϖ]≃E_(i−1)[1/ϖ] bounded by μ_i, and a generic-fibre framing
β:E₀[1/ϖ]≃E_triv[1/ϖ] satisfying βΦ₁⋯Φ_d=bσ_E(β). For GL_h these torsors are lattices. Equivalently take the
fibre product of the convolution Grassmannian’s endpoint map with the bσ_E graph. Keep exact endpoint strata
X_λ(b) separate from X_≤Σμ(b). (zhu17, §3.1.3, Proposition 3.3 and diagrams (3.1.4)–(3.1.5), pp. 457–458).
Source extraction: zhu17 line 2195.

A proof route is as follows. Form the supplied convolution diagram and its endpoint pullback. Use the torsor
description to compare the two functors and retain the order of all modifications.

The graph square uses the specified Frobenius power. A bound on a convolution fibre is applied over an exact
endpoint stratum.

The construction has the following API.

- The chain and Frobenius framing functor.
- The cartesian endpoint square.
- The proper map to X_≤Σμ(b).
- For d=1 recover the bounded spherical locus.
- The λ-endpoint fibre is the pullback over X_λ(b).

**Checks.**

- d=1 gives the original bound, with no extra intermediate parameter.
- For a torus the only possible endpoint is Σμ and the convolution fibre is a point.
- Interchanging noncommuting modification matrices changes the chain product; no commutative product convention is allowed.
- For GL₂ a smaller endpoint λ<Σμ is not assigned the top-endpoint fibre dimension 0.
- For a degree-3 unramified restriction, (σb)_τ₀=σ(b_(σ⁻¹τ₀)); use τ₁=σ⁻¹τ₀. The opposite cycle fails even though degrees 1 and 2 cannot detect it.

*Needs:* §0.4; GeometricSatakeAndFusion GS2, convolution-diagram.

### 3.6 Unramified norm and iterated-locus comparison

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. Let E/F be
unramified of degree d and G=Res_(E/F)H. Order embeddings τ_i=σ^(−i)τ₀, write b=(b₀,…,b_(d−1)), and use the
ordered norm Nm(b)=b₀σ(b₁)⋯σ^(d−1)(b_(d−1)), with σ_E=σ^d. Construct an isomorphism from X^G_≤μ(b) to the
iterated H-locus with these framed modifications and bounds (μ_τ₀,σμ_τ₁,…,σ^(d−1)μ_τ_(d−1)). Import the B(G)
norm, centralizer and defect comparison rather than redefining them; verify the ρ-pairing identity needed for
dimension. (zhu17, Lemma 3.5 and Lemma 3.7, p. 459). Source extraction: zhu17 line 2254.

A proof route is as follows. Write the d transition equations and eliminate successively, preserving
multiplication order. Construct the inverse on torsors and descent data, not only on algebraically closed
points. Use the imported centralizer isomorphism to compare F-split defects.

At d=1 both functor and norm comparisons are identities. At d=2 the norm is b₀σ(b₁), not σ(b₁)b₀. Absolute
ranks cannot replace split ranks in the defect. In degree 3 the component formula is (σb)_τ₀=σ(b_(σ⁻¹τ₀));
this fixes τ_i=σ^(−i)τ₀ and detects the printed opposite cycle.

**Checks.**

- In degree one the norm and geometric comparison are identities. In degree two with σ fixing coefficients, upper and lower unipotent matrices U=[[1,1],[0,1]] and V=[[1,0],[1,1]] give UV=[[2,1],[1,1]] and VU=[[1,1],[1,2]], so norm order is detectable.
- In degree three, τ₁=σ⁻¹τ₀ gives the second factor σ(b₁), rather than σ(b₂); the defect of a restricted basic GL₂ factor remains 1.
- More explicitly, take degree three with b₀=1, b₁=U and b₂=V, where U=[[1,1],[0,1]] and V=[[1,0],[1,1]] have Frobenius-fixed coefficients. The inverse embedding cycle gives norm UV=[[2,1],[1,1]], whereas the opposite cycle gives VU=[[1,1],[1,2]]. This also distinguishes the cycles over 𝔽₂.

*Needs:* §3.5; BunGAndNewtonStrata Layer 1, product-and-unramified-norm.

### 3.7 Convolution bounds on exact endpoint strata

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. For dominant μ•
and λ≤_ℤΣμ_i, the supplied convolution map has fibres over Gr_λ of dimension at most 〈ρ,Σμ_i−λ〉. Pulling back
over the exact X_λ(b), this bounds the iterated ADLV piece by dim X_λ(b)+〈ρ,Σμ_i−λ〉. Prove separately that the
top endpoint λ=Σμ_i is nonempty when its ADLV is nonempty and that its convolution fibre has dimension 0,
giving the lower bound required for the iterated dimension formula. (zhu17, Proposition 2.3, p. 432; proof of
Proposition 3.3, pp. 459–460). Source extraction: zhu17 line 2283.

A proof route is as follows. Import the geometric stratified semismallness bound from
GS2:correspondences/rational-special-fibre-convolution; its statement concerns actual fibres, not only sheaf
pushforward. Stratify by finitely many exact endpoints and apply the uniform fibre upper bound. Use the top
endpoint and its nonempty zero-dimensional fibre for the opposite inequality.

No closed-union fibre is treated as a single exact stratum. No cohomological decomposition theorem is used to
assume the missing geometry.

**Checks.**

- For GL₂ and two bounds (1,0), the top endpoint (2,0) has fibre dimension 0, while endpoint (1,1) has fibre P¹ of dimension 1 = 〈ρ,(1,−1)〉. The top bound cannot be applied to the whole closed endpoint union.

*Needs:* §3.5; §0.5; GeometricSatakeAndFusion GS2, rational-special-fibre-convolution.

### 3.8 Dimension of spherical and iterated loci

Use the reductive O_F-model spherical datum, with perfect k-algebras in mixed characteristic. If X_μ(b) is
nonempty for an unramified reductive O_F-model, then dim X_μ(b)=dim X_≤μ(b)=〈ρ,μ−ν_b〉−def_G(b)/2. If X_≤μ(b)
is empty, its dimension is −∞ and the numerical expression is not asserted equal to it. More generally a
nonempty iterated locus has dimension 〈ρ,Σμ_i−ν_b〉−def_G(b)/2. Prove nonemptiness/top-stratum attainment
before equating the exact and closed dimensions. (zhu17, Theorem 0.5, p. 410; Theorem 3.1, p. 456; Proposition
3.3, pp. 457–460; ham15, arXiv v2, Theorem 1.1, PDF p. 2; setup p. 1). Source extraction: zhu17 line 2137.

A proof route is as follows. Reduce to the Newton Levi and then superbasic adjoint factors. Apply norm
geometry and the GL chart calculation. Apply the exact endpoint bounds and prove lower endpoints cannot exceed
the top value; show the top nonempty stratum supplies equality. Proof order: first the superbasic GL_h chart
formula for every bound; then its bounded unions and the Res GL_h convolution step using only those GL_h
endpoint formulas; then adjoint products and Newton-Levi reduction. Only after the single-step theorem for
general H is established deduce the general iterated formula. This avoids using the theorem for G to prove its
own top-stratum attainment.

G_m, μ=0, b=ϖ is empty although the displayed rational number is 0. For GL₂ with μ=(1,0) and basic slope 1/2,
the value is 0. For GL₂ with μ=(1,−1), b=1, the value is 1. This theorem does not assert equidimensionality of
every stratum.

**Checks.**

- For GL₂, μ=(1,0), basic ν=(1/2,1/2) and defect 1 give 0; for μ=(1,−1), b=1 and defect 0 give 1.
- For GL₂, b=1 and μ=(1,0), the determinant mismatch 0≠1 makes the locus empty, although the rational expression is 1/2.

*Needs:* §2.5; §3.4; §3.3; §3.6; §3.7.

### 3.9 The virtual dimension upper bound

Use the simple quasi-split flag datum and apartment orientation of the Conventions. For every w and [b] in the
supported flag setting, dim X_w(b)≤d_w(b). Derive the σ-twisted form using the reduction and spherical
estimates; track the η convention in the survey’s normalized Newton-stratum formula. That stratum dimension
equals the ADLV dimension plus 〈ν_b,2ρ〉, so its plus-Newton term must not be copied into the ADLV formula.
(he21, Theorem 2.1, p. 5; he14, Theorem 10.3 and Corollary 10.4, pp. 396–397; he15, Theorem 2.30, PDF p. 38).
Source extraction: he21 line 210.

A proof route is as follows. Reduce to the spherical bound and control the extra flag fibres by finite Weyl
lengths. Prove the Frobenius-convention comparison between yσ(x) and σ⁻¹(y)x. Prove the general-σ and
general-datum extension using the flag comparison in §0.5.

The sign is −〈ν,ρ〉 in d_w. The δ=id result alone does not prove the general σ statement.

**Checks.**

- For split GL₂, w=t^(1,0) and b=t^(1,0), the dimension 0 and virtual expression (1+0−0)/2−1/2=0 agree. Replacing the final minus by plus yields 1.
- In split adjoint A₁, w=s and b=1 have actual and virtual dimension 1.

*Needs:* §0.2; §1.2; §1.3; §3.8.

### Examples

For GL₂ with b=1 and μ=(1,−1), the diagonal-torus Levi term at μ_M=0 has semi-infinite dimension 1 and no
Newton correction, giving dimension 1. For two minuscule bounds (1,0), endpoint (2,0) has zero-dimensional
convolution fibre and endpoint (1,1) has P¹ fibre. For basic slopes 1/2, the single-step minuscule dimension
is 0.

### Dependencies

Layers 0, 1, 2; BunGAndNewtonStrata Layer 1; BunGAndNewtonStrata Layer 1, general-levi-newton-comparison;
BunGAndNewtonStrata Layer 1, product-and-unramified-norm; BunGAndNewtonStrata Layer 1,
z-extension-bounded-lifting; GeometricSatakeAndFusion GS0, Witt bounds and projective models;
GeometricSatakeAndFusion GS1; GeometricSatakeAndFusion GS1, semi-infinite-affineness; GeometricSatakeAndFusion
GS2, convolution-diagram; GeometricSatakeAndFusion GS2, rational-special-fibre-convolution;
ReductiveGroupsPartII RG2.3; ReductiveGroupsPartII RG2.3, associated-parahorics; ReductiveGroupsPartII RG2.3,
parahoric-subgroup; SchemeAndStackFoundations §§0.7, 0.9, 0.23–0.26; TraceFormula Layer 11 and its coefficient
and compact-support suppliers. The individual Needs paragraphs specify the additional comparison constructions
used by each route.

## Layer 4: generic Newton classes and cordiality

### 4.1 Spherical nonemptiness and Newton upper bounds

Use the simple quasi-split flag datum and apartment orientation of the Conventions. For dominant λ and the
indicated special maximal parahoric K, the exact locus X^K_λ(b) is nonempty exactly when κ_G(b)=λ^natural and
ν_b≤λ^♦. The bounded union X^K_≤λ(b) has the same criterion: necessity follows on every lower stratum and
sufficiency already holds on the exact top stratum. In particular any class occurring in Kt^λK has ν_b≤λ^♦,
and [t^λ] realizes the greatest class with ν=λ^♦ and defect 0 in the ordinary translation situation used here.
Distinguish rational Newton dominance from the integral relative-position bound. (he21, Theorem 4.4, p. 7;
he14, Theorem 7.1, pp. 389–390). Source extraction: he21 line 283.

A proof route is as follows. Apply the integral κ obstruction and Newton semicontinuity for necessity. Use the
straight representative and Levi reduction for sufficiency. Check special-parahoric and root-datum generality
before passing from unramified spherical geometry to the He21 setting; this is part of the general
flag-geometry transfer.

A torus with different valuation is empty even though rational dominance in semisimple directions is vacuous.

**Checks.**

- For G_m, λ=0 and valuation(b)=1, κ differs and both exact and bounded loci are empty. Equal semisimple Newton components alone would incorrectly predict nonemptiness.
- For GL₂, λ=(1,0) and basic slopes (1/2,1/2), κ=1 on both sides and ν≤λ, so the exact top stratum is nonempty; slopes (2,−1) have κ=1 but violate ν≤λ.

*Needs:* §0.4; BunGAndNewtonStrata Layer 1, ordinary-straight-translation; BunGAndNewtonStrata Layer 1,
galois-average; BunGAndNewtonStrata Layer 1, partial-order-on-B-of-G.

### 4.2 Generic Newton class of an Iwahori cell

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. For w define B(G)_w={[b]:X_w(b)≠∅}. In the equal-characteristic setting construct its
unique greatest element [b_w], realized on a dense open Newton stratum of IẇI. Show that the same greatest
element occurs in the Bruhat closure ⋃_(v≤w)IṽI. The order is the Kottwitz-compatible Newton order imported
from B(G); this is not a total ordering of all classes. (he21, §4.1, p. 7; vie14, Proposition 5.5 and
Corollary 5.6, pp. 1027–1028; mv20, §3.1, arXiv v3, PDF pp. 5–7). Source extraction: vie14 line 768.

A proof route is as follows. Work on admissible bounded models of the loop-group cell, prove generic constancy
and greatestness, then compare its closure. Record the topology and purity inputs in the Newton-cell purity
supplier extension; construct the generic stratum on admissible bounded models before passing to the loop
cell.

Unique maximal and greatest must be distinguished until finiteness/comparability is proved. No assertion that
every class below [b_w] occurs is made here.

The construction has the following API.

- B(G)_w defined by nonemptiness.
- The unique greatest class with dense open Newton stratum.
- Every occurring class is ≤[b_w].
- Passing to the Bruhat closure does not change the greatest class.
- The generic stratum meets the cell, so X_w(b_w) is nonempty.

**Checks.**

- For a length-zero element τ, the cell has generic class [τ].
- For dominant λ the cell t^λ has generic class [t^λ].
- A class with different κ cannot enter B(G)_w even if its Newton vector is smaller.
- Greatestness alone must not produce all lower classes; saturation is a separate cordial theorem.

*Needs:* §0.5; BunGAndNewtonStrata Layer 1, partial-order-on-B-of-G; ReductiveGroupsPartII RG2.4,
iwahori-bruhat-decomposition; BunGAndNewtonStrata Layer 1; gap:newton-cell-purity.

### 4.3 Dimension at the generic class

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. At [b_w], dim X_w(b_w)=ℓw−〈ν_(b_w),2ρ〉. Relate the codimension of the generic Newton
stratum in IẇI to ADLV dimension using the established bounded loop-group/flag comparison. (he21, §4.1, p. 7;
he15, Theorem 2.23, PDF p. 34). Source extraction: mv20 line 266.

A proof route is as follows. Use the dense open Newton stratum to get codimension zero. Apply the dimension
comparison, retaining the 〈ν,2ρ〉 correction.

Do not replace the generic class by an arbitrary greatest rational cocharacter.

**Checks.**

- For GL₂, t^(1,0) has generic ν=(1,0), and dimension 1−1=0. For the finite A₁ simple cell, generic ν=0 and dimension 1−0=1.

*Needs:* §4.2; §1.3; BunGAndNewtonStrata Layer 1; gap:newton-cell-purity.

### 4.4 Cordial elements

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. A Weyl-group element w is cordial when ℓw−ℓη_σ(w)=〈ν_(b_w),2ρ〉−def_G(b_w).
Equivalently dim X_w(b_w)=d_w(b_w). The definition is a property of the given based Frobenius datum and
generic class, not a condition imposed on all b by definition. (he21, §4.1, p. 7; mv20, Definition 3.14, arXiv
v3, PDF p. 8). Source extraction: mv20 line 404.

A proof route is as follows. Define the scalar equality and use the generic-dimension theorem for the
equivalent form.

Keep the factor 2 in the generic dimension and the single ρ in d_w.

The construction has the following API.

- The displayed generic length equality.
- Equivalent equality of actual and virtual dimension at b_w.
- Transport along reduction equivalences only when the relevant η lengths and generic classes have been compared.
- The translation family of §4.7 satisfies the cordiality equality using the supplied length identities and the geometric generic-class calculation.

**Checks.**

- For w=1 and b_w=1 both sides are 0.
- For a dominant translation in split GL₂, ℓ(t^(1,0))=1, η=1, ν=(1,0), def=0, so it is cordial.
- For w=s in split adjoint A₁ the generic class is basic and ℓs−ℓη=0, so it is cordial.
- Equality at one nongeneric b does not establish cordiality without the generic-class theorem.

*Needs:* §0.2; §4.3.

### 4.5 Cordiality under mutual dimension advantage

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. If w⇒_σv and v⇒_σw, then B(G)_w=B(G)_v and their greatest classes agree. At every
occurring class dim X_w−d_w=dim X_v−d_v. Consequently w is cordial iff v is cordial. (he21, §4.1, p. 7).
Source extraction: he21 line 265.

A proof route is as follows. Use the nonemptiness implications in each direction to identify the sets.
Antisymmetry of the rational inequalities gives equality of dimension defects; evaluate at the common generic
class.

Only mutual advantage, not a single inequality, gives the equivalence.

**Checks.**

- For w=v the two normalized differences are equal even at an empty locus, where both are −∞. For finite nonempty dimensions D_w=3,D_v=2 and virtual values d_w=4,d_v=3, both differences are −1; a single inequality does not force equality.

*Needs:* §1.4; §4.4.

### 4.6 Cordial saturation and dimensions

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. If w is cordial, [b]∈B(G)_w, and [b]≤[b′]≤[b_w], then [b′]∈B(G)_w. Every nonempty
X_w(b) is equidimensional of dimension d_w(b) in the equal-characteristic setting with the purity inputs. In
the cell, the closure of each occurring Newton stratum is the union of the occurring strata below it. The
interval starts at a known occurring [b], not at an arbitrary lower bound; the general local-field transfer is
the general flag-geometry transfer. (mv20, Theorem 3.16 and Corollary 3.17, arXiv v3, PDF pp. 8–9; he21,
Theorem 4.1, p. 7). Source extraction: mv20 line 418.

A proof route is as follows. Use the Newton-poset length formula and strong topological purity named in the
Newton-cell purity supplier extension. Propagate codimension equality from the generic stratum down an
occurring interval. Translate normalized cell dimensions to ADLV dimensions; keep equidimensionality within
the established source setting.

A basic seed must be supplied before applying saturation. Prove the general mixed-characteristic flag transfer
on the specified bounded models.

**Checks.**

- For split GL₂, w=s t^(1,0) has generic ordinary slopes (1,0) and basic slopes (1/2,1/2) below them; its dimensions are 1 and 1 from d=(2+1−def)/2−〈ν,ρ〉.
- For a split torus, fixed κ gives one Newton class; the interval and its closure reduce to equality and the nonempty dimension is 0.

*Needs:* §4.4; BunGAndNewtonStrata Layer 1, partial-order-on-B-of-G; §3.9; BunGAndNewtonStrata Layer 1;
gap:newton-cell-purity.

### 4.7 Generic class of x t^λ and the dominant family

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. For dominant λ and x ∈ W₀, prove [b_(x t^λ)] = [t^λ]. Establish I t^λ I ⊂ overline(I x
t^λ I) ⊂ overline(K t^λ K) in the source’s closure sense, and use spherical Newton nonemptiness to identify
the greatest class. Then prove x t^λ cordial: the supplied length formula gives ℓ(x t^λ) − ℓη_σ(x t^λ) = ℓt^λ
= 〈λ^♦,2ρ〉, while [t^λ] has defect zero. For w = w_S t^λ y in the dominant chamber, prove the
length-preserving σ-rotation to σ⁻¹(y)w_S t^λ with equal η length; derive its generic class and cordiality.
This rotation is asserted only for this chamber family. (he21, Theorem 4.2, p. 7, and §4.4, p. 8). Source extraction: he21 line 273.

A proof route is as follows. Use Bruhat closures, spherical nonemptiness, generic-cell dimension
and the supplied translation lengths; the finite η-factor is σ⁻¹(y)x throughout.

Derive geometric cordiality here from the supplier’s length target and the local generic-class calculation.
For λ=0 retain the actual finite cell and its closure, rather than claiming it contains the identity cell as
an open-cell subset.

**Checks.**

- For GL₂, x=s, λ=(1,0), the generic class is ordinary, ℓw=2, ℓη=1 and 〈ν,2ρ〉−def=1, so 2−1=1.
- For λ=0 and x=s in A₁, I and IsI are disjoint cells; I is contained in the closure of IsI. Cordiality reads 1−1=0−0.

*Needs:* §4.2; §4.1; ReductiveGroupsPartII RG2.4, translation-length-formula; §1.2; §4.5; §4.3, generic Newton
dimension.

### Examples

The GL₂ element s t^(1,0) has greatest ordinary Newton class and also the basic κ=1 class. Cordiality at the
generic class reads 2−1=1; the actual dimensions at the ordinary and basic classes are both 1. A Newton vector
in another integral component is never inserted into this interval.

### Dependencies

Layers 0, 1, 3; BunGAndNewtonStrata Layer 1; BunGAndNewtonStrata Layer 1, galois-average; BunGAndNewtonStrata
Layer 1, ordinary-straight-translation; BunGAndNewtonStrata Layer 1, partial-order-on-B-of-G;
ReductiveGroupsPartII RG2.4, iwahori-bruhat-decomposition; ReductiveGroupsPartII RG2.4,
translation-length-formula. The individual Needs paragraphs specify the additional comparison constructions
used by each route.

## Layer 5: double-flat bounds and factorization

### 5.1 Double-flat coweight

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The reduced root datum is
realized in its adjoint/full coweight lattice P∨ with its based σ-action. Conclusions about the original
cocharacter lattice require §3.2. Write w=x t^λ y in the imported normal form. Let J={s∈S:s y<y},
ρ_J∨=Σ_(s∈J)ω_s∨, and η_J∨ the dominant representative of −σ⁻¹(ρ_J∨). In the full coweight lattice define
λ_w^♭♭=(λ−ρ_J∨)−_domη_J∨=λ−_dom(ρ_J∨+η_J∨). Prove it is dominant and ≤_ℤλ. This is generally an auxiliary
adjoint-lattice cocharacter, not an element of the original Y. (he21, §5.2, p. 9). Source extraction: he21 line 347.

A proof route is as follows. Use the generic fundamental coweights, dominant representative and normalized
subtraction contract. Track the original cocharacter sublattice separately.

Do not replace η_J∨ by −ρ_J∨ or drop σ⁻¹. Do not assert an integral lift to G when only a P∨ construction has
been given.

The construction has the following API.

- J is the specified descent set of y.
- The sum of fundamental coweights in P∨.
- The dominant representative of −σ⁻¹ρ_J∨.
- Both normalized subtraction expressions define the same dominant auxiliary coweight in P∨.
- Dominant and bounded by λ in the stated integral coroot coset.
- Records P∨ membership and any separately proved lift to Y.

**Checks.**

- For y=1, J=∅, both correction coweights vanish and λ^♭♭=λ.
- In adjoint A₁ with y=s and λ=2ω∨, ρ_J∨=η_J∨=ω∨, so λ^♭♭=0.
- For simply connected A₁, ω∨=α∨/2 is not an original cocharacter; the intermediate subtraction is not silently evaluated in Y=ℤα∨.
- For A₂ with σ swapping the simple nodes and J={s₁}, the input −σ⁻¹ω₁∨ is −ω₂∨, not −ω₁∨.
- For y=s₁s₂ in A₂, the left descent set is {s₁}, while the right descent set is {s₂}. The input ρ_J∨ must use ω₁∨.
- In adjoint A₁, λ=ω∨ and y=s give λ−ρ_J∨=0. Least dominant subtraction of ω∨ from 0 in the required coroot coset is ω∨, so λ^♭♭=λ. Clipping the ordinary difference to zero loses the odd coroot coset.
- For A₂ with σ interchanging nodes and J={s₁}, the input −σ⁻¹ω₁∨ is −ω₂∨ and its dominant representative is ω₁∨. Omitting σ⁻¹ instead gives dominant representative ω₂∨.

*Needs:* RootSystems Layers 3–4 and 6; RootSystemsPartII RS2.1 and its two supplier extensions;
ReductiveGroupsPartII RG2.4, dominant-normal-form.

### 5.2 Parabolic factorization data and invariant ledger

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The reduced root datum is
realized in its adjoint/full coweight lattice P∨ with its based σ-action. Conclusions about the original
cocharacter lattice require §3.2. For shrunken w=x t^λy, set J as above, J′=Stab_S(λ−ρ_J∨), and factor
η_σ(w)=x′z with x′ minimal in W₀/W_(J′), z∈W_(J′). Set β=λ−ρ_J∨+(x′)⁻¹σ⁻¹ρ_J∨; let γ be its dominant
representative and choose y′ minimal modulo Stab_S γ with β=y′γ. Define w₁=x z⁻¹t^(λ−ρ_J∨)y′, w₂=(y′)⁻¹z
t^(ρ_J∨)y. Then w=w₁w₂, ℓw=ℓw₁+ℓw₂, γ≥_ℤλ_w^♭♭, and a=σ⁻¹((y′)⁻¹z)*(x′y′) has supp_σ(a)⊇supp_σ(η_σ(w)). Retain
κ in the auxiliary adjoint coinvariants; transferring it to G requires the basic-seed and original-lattice
comparisons of §§7.4 and 3.2. (he21, §5.4, pp. 10–12). Source extraction: he21 line 375.

A proof route is as follows. Use the Demazure product and parabolic normal forms of the root-combinatorics
supplier contract. Check the displayed product by the semidirect multiplication law. Use the shrunken root
inequalities for the length identities and the normalized-subtraction bound for γ. Compute κ(β)−κ(λ) as coroot
terms plus (σ⁻¹−1)ρ_J∨ in the auxiliary lattice.

Each minimal-coset direction is specified. The star product is the Demazure product, not ordinary multiplication.

The construction has the following API.

- The tuple (J,J′,x′,z,β,γ,y′,w₁,w₂,a) with its specifications.
- w=w₁w₂ and length additivity.
- γ≥_ℤλ^♭♭.
- The σ-support inclusion for a.
- Equality in the specified adjoint σ-coinvariants, with original-group descent separate.

**Checks.**

- For y=1 the correction ρ_J∨ is zero, β=λ and γ=λ.
- In split adjoint A₁ take x=y=s and λ=2ω∨. Then J={s}, J′=∅, x′=z=y′=1, β=γ=2ω∨, w₁=s t^ω∨ and w₂=t^ω∨s. Their product is s t^(2ω∨)s=t^(−2ω∨), and the lengths are 2+0=2.
- For a simple reflection s, s*s=s, whereas s·s=1; support must be computed from the former.
- Equality after mapping to P∨ coinvariants cannot be used as equality of original integral κ when the map has a kernel.

*Needs:* §5.1; §0.3; ReductiveGroupsPartII RG2.4, length-and-bruhat-order; RootSystems Layers 3–4 and 6;
RootSystemsPartII RS2.1 and its two supplier extensions.

### Examples

In split adjoint A₁, x=y=s and λ=2ω∨ give J={s}, J′=∅, β=γ=2ω∨, w₁=s t^ω∨ and w₂=t^ω∨s. Their product is
t^(−2ω∨), with lengths 2+0=2. The intermediate translation t^ω∨ does not exist for the simply connected
cocharacter lattice ℤα∨.

### Dependencies

Layers 0; ReductiveGroupsPartII RG2.4, dominant-normal-form; ReductiveGroupsPartII RG2.4,
length-and-bruhat-order; RootSystems Layers 3–4 and 6; RootSystemsPartII RS2.1 and its two supplier
extensions. The individual Needs paragraphs specify the additional comparison constructions used by each
route.

## Layer 6: the two geometric correspondences

### 6.1 Frobenius endpoint correspondences

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. The reduced root datum is realized in its adjoint/full coweight lattice P∨ with its
based σ-action. Conclusions about the original cocharacter lattice require §3.2. Import C_(u,v)|_(O_z), its
endpoint projection and bounded models from GeometricSatakeAndFusion GS0, flag-incidence-correspondences. This
target constructs its ADLV application: pull back along gI↦(gI,bσ(g)I), so points are triples with inv(g,h)=u,
inv(h,bσ(g))=v and inv(g,bσ(g))=z. The intermediate flag remains part of the moduli problem. Import the
ordinary and Demazure fibre bounds from GeometricSatakeAndFusion GS0, flag-convolution-fibres. The rotation
map is F_b(gI)=bσ(g)I, with r_b(F_b(g))=σ(r_b(g)); compare these rotations by universal homeomorphisms on the
stated geometric models; no new generic flag-incidence definition or fibre theorem is owned here. (he21,
Proposition 5.6 and §5.4, pp. 10–12; gh10, Proposition 2.5.2, PDF pp. 6–8). Source extraction: he21 line 368.

A proof route is as follows. Pull back the supplied endpoint projection along the bσ graph on compatible
bounded pieces. Check the relative-Frobenius identity on points and identify the pullbacks used by the five
chain spaces. Use the supplier’s bounds after base change; the general flag-geometry transfer retains any
comparison between the classical and perfect carriers.

Every chain equation is checked against the point-level product r_b.

The construction has the following API.

- The bσ-graph pullback of the imported triple-flag correspondence.
- Forget the intermediate flag to the endpoint ADLV X_z(b).
- Geometric points are exactly the three relative positions with final flag bσ(g).
- Pullback imposing g′=bσ(g).
- Cyclic rotation with Frobenius gives the stated universal-homeomorphism comparison.

**Checks.**

- When u=1, h=g and z=v, forgetting h identifies the Frobenius pullback with X_v(b).
- For u=v=s, a fixed ordinary endpoint of position 1 has intermediate-flag fibre A¹, while a fixed Demazure endpoint of position s has fibre G_m. Both have dimension 1. The same fibres occur over existing endpoints after the bσ pullback.
- For u=s₁,v=s₂ in A₂ the product endpoint s₁s₂ cannot be replaced by s₂s₁.
- Rotating u,v changes the final label from uv to vσ(u), not vu in a twisted datum.

*Needs:* §0.5; GeometricSatakeAndFusion GS0, Witt bounds and projective models,
flag-incidence-correspondences; GeometricSatakeAndFusion GS0, Witt bounds and projective models,
flag-convolution-fibres.

### 6.2 The two chain-space comparisons

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. The reduced root datum is realized in its adjoint/full coweight lattice P∨ with its
based σ-action. Conclusions about the original cocharacter lattice require §3.2. Use §5.2 and put A=(y′)⁻¹z,
B=t^(ρ_J∨)y. Rotate the chain w₁,w₂ into X₁ with steps w₂,σ(w₁). Refine w₂=AB and restrict the relative
position from g₃ to bσ(g₁) to σ(x′y′t^γ), obtaining X₂. Forget the B-intermediate flag and split the latter
endpoint into σ(x′y′),σ(t^γ), obtaining X₃. Restrict the position g₁→g₄ to σ(a), obtaining X₄, and forget g₃
to obtain X₅, whose steps are σ(a),σ(t^γ). Supply every map and cartesian square; X₅ compares by the indicated
Frobenius universal homeomorphism with X_(a t^γ)(b). (he21, §5.4, pp. 11–12). Source extraction: he21 line 401.

A proof route is as follows. Write the complete flag tuples and relative positions for X₁,…,X₅. Use the
product identities for the first restriction and Demazure endpoint for the second. Verify each rotation and
each refinement on torsors, retaining σ on the final step.

The tuple equations below specify the five moduli spaces and every map. No map from the whole X₁ onto X₃ is
assumed: use the restricted X₂.

The construction has the following API.

- The five chain functors with the displayed restrictions.
- X₂→X₁ is a locally closed restriction, not a surjection onto X₁.
- X₂→X₃ forgets the B-step intermediate flag.
- X₄→X₃ imposes endpoint σ(a).
- X₄→X₅ forgets g₃.
- X₅ compares to X_(a t^γ)(b) through the specified σ-rotation universal homeomorphism.

**Checks.**

- With y=1 the unnecessary zero-length steps collapse to identity correspondences.
- The first fibre uses the ordinary product B·σ(w₁), conjugated to the stated endpoint, so its bound carries 1/2.
- The second fibre uses σ⁻¹(A)*(x′y′)=a, so its bound has no factor 1/2.
- The terminal chain has σ(a),σ(t^γ); removing these σ symbols before the Frobenius comparison gives the wrong locus.

*Needs:* §5.2; §6.1.

All flags below belong to the same bounded flag diagram. Put A=(y′)⁻¹z and B=t^(ρ_J∨)y; inv denotes relative
position. The intermediate flags are moduli data.

| Space | Tuple equations | Map and target |
|---|---|---|
| X_w | g →_(w₁) g₁ →_(w₂) bσ(g) | Rotate to (g₁,bσ(g)); compare to X₁ by the specified universal homeomorphism. |
| X₁ | g₁ →_A g₃ →_B g₂ →_(σw₁) bσ(g₁) | Restrict the endpoint from g₃ to bσ(g₁). |
| X₂ | X₁ with inv(g₃,bσ(g₁))=σ(x′y′t^γ) | Forget g₂, giving a surjection to X₃ with fibre lower bound N₁. |
| X₃ | g₁ →_A g₃ →_(σ(x′y′)) g₄ →_(σt^γ) bσ(g₁) | Restrict inv(g₁,g₄)=σ(a). |
| X₄ | X₃ with inv(g₁,g₄)=σ(a) | Forget g₃, giving a surjection to X₅ with fibre lower bound N₂. |
| X₅ | g₁ →_(σa) g₄ →_(σt^γ) bσ(g₁) | Identify with X_(σ(a t^γ))(b), then use the Frobenius universal homeomorphism to X_(a t^γ)(b). |

Here N₁=(ℓB+ℓw₁−ℓ(x′y′t^γ))/2 and N₂=ℓA+ℓ(x′y′)−ℓa. The first endpoint is the ordinary product, the second the
Demazure product. The restrictions X₂→X₁ and X₄→X₃ are locally closed inclusions, and are not asserted
surjective. (he21, §5.4, pp. 11–12.)

### 6.3 Dimension inequality for the chain spaces

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. The reduced root datum is realized in its adjoint/full coweight lattice P∨ with its
based σ-action. Conclusions about the original cocharacter lattice require §3.2. The maps X₂→X₃ and X₄→X₅ are
surjective, with geometric fibre dimensions at least N₁=(ℓB+ℓw₁−ℓ(x′y′t^γ))/2 and N₂=ℓA+ℓ(x′y′)−ℓa=ℓη_σ(w)−ℓa,
respectively. On compatible bounded models deduce dim X_w(b)≥dim X_(a t^γ)(b)+N₁+N₂. The factorization length
identities give N₁+N₂=d_w(b)−d_(a t^γ)(b). (he21, §5.4, pp. 11–12). Source extraction: he21 line 427.

A proof route is as follows. Restrict to a bounded model containing a generic point of a maximal-dimensional
target component. Use fibre lower bounds on a compatible finite-type source model and the locally closed
inclusions to bound dim X_w from below. Cancel b-dependent terms in virtual dimensions and check every finite
Weyl length.

Do not argue that finitely many proper closed subsets cover an entire non-quasi-compact ADLV. The dimension
proof uses the bounded-model comparison of §0.5 in addition to the pointwise correspondence.

**Checks.**

- In the A₁ factorization x=y=s, λ=2ω∨, the lengths are ℓB=0, ℓw₁=2, ℓ(x′y′t^γ)=2, ℓA=0 and ℓa=0. Thus N₁=N₂=0 and both virtual dimensions agree.
- For u=v=s the ordinary and Demazure lower bounds are (1+1−0)/2=1 and 1+1−1=1; putting a half in the second bound gives the incorrect 1/2.

*Needs:* §6.2; GeometricSatakeAndFusion GS0, Witt bounds and projective models, flag-convolution-fibres; §0.5;
SchemeAndStackFoundations §0.7, fibre_dimension_formula.

### 6.4 Reduction from a shrunken alcove to a cordial family

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. The reduced root datum is realized in its adjoint/full coweight lattice P∨ with its
based σ-action. Conclusions about the original cocharacter lattice require §3.2. For shrunken w = x t^λ y in
the auxiliary full-coweight datum, construct dominant γ ≥_ℤ λ_w^♭♭ and a ∈ W₀ with supp_σ(a) ⊇ supp_σ(η_σ(w)),
κ(a t^γ) = κ(w) in that datum, and w ⇒_σ a t^γ. Section 4.7 supplies the target family’s cordiality. No
shrunkenness of a t^γ is imposed. Transfer this comparison to the original group through §3.2, retaining its
original integral κ. (he21, Theorem 5.5, p. 9, proved in §5.4, pp. 10–12). Source extraction: he21 line 352.

A proof route is as follows. Assemble γ, a, support and κ from factor data. Use the chain dimension inequality
for every b with the target nonempty. Use §4.7 only after matching geometric and Frobenius conventions.

Auxiliary-lattice descent is the basic-seed and original-lattice comparisons of §§7.4 and 3.2. No basic-seed
theorem requiring shrunkenness can be applied to the target without another argument.

**Checks.**

- With x=y=s, λ=2ω∨ in split adjoint A₁, the construction gives γ=2ω∨, a=1, N₁=N₂=0 and w=t^(−2ω∨). Its support implication is ∅⊇∅, and its target need not furnish a full-support basic seed.

*Needs:* §5.2; §6.3; §1.4; ReductiveGroupsPartII RG2.4, translation-length-formula; §4.7, translation-family
cordiality.

### Examples

The same A₁ factorization has A=1, B=t^ω∨s of length zero, a=1 and γ=2ω∨, so the two correction dimensions are
0 and 0. The independent simple-square example has ordinary fibre A¹ and Demazure fibre G_m, each dimension
one; these are different correspondences.

### Dependencies

Layers 0, 1, 5; GeometricSatakeAndFusion GS0, Witt bounds and projective models, flag-convolution-fibres;
GeometricSatakeAndFusion GS0, Witt bounds and projective models, flag-incidence-correspondences;
ReductiveGroupsPartII RG2.4, translation-length-formula; SchemeAndStackFoundations §0.7,
fibre_dimension_formula. The individual Needs paragraphs specify the additional comparison constructions used
by each route.

## Layer 7: Levi obstructions and basic seeds

### 7.1 Levi-compatible P-alcove elements

Use the simple quasi-split flag datum and apartment orientation of the Conventions. For σ-stable J⊂S, standard
P_J=M_JN_J and x∈W₀, call w a (J,x,σ)-alcove element when x⁻¹wσ(x)∈W̃_J and (xN_Jx⁻¹)∩(wIw⁻¹)⊂(xN_Jx⁻¹)∩I. All
superscripts on subgroups in the source mean conjugation. This definition uses the conjugator x, not
automatically σ⁻¹(y) from the normal form. (ghn15, Definition 3.3, PDF p. 10; he21, §6.1, p. 12). Source extraction: ghn15 line 383.

A proof route is as follows. Use the generic root-group and parabolic data to express both conditions. Relate
the subgroup containment to root inequalities with the fixed apartment orientation.

Retain σ(x) on the right side of the Weyl-group condition.

The construction has the following API.

- The Levi Weyl condition and unipotent subgroup inclusion.
- The equivalent inequalities for the corresponding root groups.
- For J=S the unipotent condition is vacuous.
- Conjugation changes the Iwahori and Levi data explicitly.

**Checks.**

- J=S gives the full group and no unipotent obstruction.
- For J= supp_σ(η_σ(w)) in the shrunken setting, x⁻¹wσ(x)=t^λσ(η_σ(w)) lies in W̃_J.
- Replacing x by σ⁻¹(y) does not give that identity in general; a noncommuting A₂ normal form must fail this substitution.
- For a diagram automorphism, x⁻¹w x and x⁻¹wσ(x) differ and only the latter defines the condition.
- In split A₂ choose x=s₁, y=s₂ and λ=2α₁∨+2α₂∨. Conjugating w=x t^λ y by x gives t^λ s₂s₁. Using y instead gives t^(−2α₂∨) s₂s₁; the translation coordinates (2,2) and (0,−2) differ.

*Needs:* ReductiveGroupsPartII RG2.3, parahoric-subgroup; ReductiveGroupsPartII RG2.4, iwahori-weyl-group.

### 7.2 The Levi Kottwitz obstruction

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. If w is a (J,x,σ)-alcove element and κ_(M_J)(x⁻¹wσ(x)) is not in
{κ_(M_J)(b_M):[b_M]∈B(M_J), [b_M] maps to [b]∈B(G)}, then X_w(b)=∅. The obstruction quantifies over every Levi
class in the fibre. Only for basic [b], under the corrected theorem’s hypotheses, may that fibre be replaced
by at most one Levi class. (he21, Theorem 6.3, p. 13; ghn15, Theorem 3.3.1, PDF p. 11; ghnerr, Proposition
0.0.2, p. 2). Source extraction: he21 line 496.

A proof route is as follows. Apply the P-alcove Hodge–Newton reduction with the correct component statement.
If a point exists, extract a Levi σ-class of the stated κ; take the contrapositive.

For GL₂ and M the diagonal torus, diag(ϖ,1) and diag(1,ϖ) are distinct M-classes in one nonbasic G-class.
Retain the characteristic condition from the corrected geometric comparison.

**Checks.**

- In GL₂ the two diagonal representatives with valuations (1,0) and (0,1) give two distinct torus classes over the same nonbasic group class. The obstruction compares against the two-element set, rather than either singleton.
- For J=S the Levi is G and the obstruction is only κ(w)≠κ(b), as required.

*Needs:* §7.1; BunGAndNewtonStrata Layer 1, general-levi-newton-comparison; §0.6.

### 7.3 Proper finite support forces emptiness

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. For shrunken w=x t^λy with λ^♦−ν_b a positive rational combination of every simple
coroot, supp_σ(η_σ(w))≠S implies X_w(b)=∅. Put J=supp_σ(η_σ(w)); then w is a (J,x,σ)-alcove element and
x⁻¹wσ(x)=t^λσ(η_σ(w)). Show its Levi κ cannot equal that of any Levi class mapping to [b]. (he21, §6.2, p. 13;
ghn15, Lemma 3.6.3 and §3.6, PDF pp. 14–15). Source extraction: he21 line 499.

A proof route is as follows. Verify the P-alcove condition using x and the specified root inequalities.
Project the strict Newton difference to the center of the proper Levi; show every candidate Levi class has
incompatible κ. Apply the all-classes obstruction rather than the false nonbasic uniqueness assertion.

Strict positivity is required in every simple direction. Full σ-support is an orbit union, not ordinary support.

**Checks.**

- In split adjoint A₁, w=t^(nα∨), n≥1, has η=1 and proper support; for b=1 the gap is strictly positive and the locus is empty. With b=t^(nα∨) the gap is 0 and the same exact translation locus has dimension 0, so strictness is necessary.

*Needs:* §7.2; §0.3; BunGAndNewtonStrata Layer 1, galois-average.

### 7.4 Basic nonemptiness seed without shrunkenness

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. The reduced root datum is realized in its adjoint/full coweight lattice P∨ with its
based σ-action. Conclusions about the original cocharacter lattice require §3.2. For dominant γ in the
auxiliary adjoint lattice and a∈W₀ with supp_σ(a)=S, let [τ] be the basic class of the same integral κ as a
t^γ. Establish X_(a t^γ)(τ)≠∅ without assuming a t^γ shrunken. For γ=0 use finite reductive quotient Lang
theory. For γ≠0 use the positive cocenter comparison to a suitable twisted Coxeter translation and a nonzero
class-polynomial coefficient, with its corrected twisted induction. Prove the characteristic and datum
transfers through §0.5, and preserve the original lattice through §3.2. (he21, §6.3, pp. 13–14; he14,
Propositions 11.6–11.7, pp. 399–401, and Corollary 6.2, p. 388; he15, Theorem 2.27, PDF p. 37). Source extraction: he14 line 1244.

A proof route is as follows. Treat γ=0 independently by the finite quotient. For γ≠0 specialize Proposition
11.6 to J=S and its finite factor y=1, preserving full twisted support. Repair the printed variable and
σ-index errors and prove the twisted induction rather than substituting ordinary support. Use Proposition 11.7
and dimension=degree to get nonemptiness. The characteristic transfer is the construction of §0.5 and the
original-lattice transfer is §3.2.

A citation to the shrunken basic theorem is insufficient. The proof constructs the twisted induction with
σ-saturated support and the shifted reflection index throughout.

**Checks.**

- For γ=0 and a=s in split A₁, the finite-quotient locus is P¹ minus P¹(𝔽_q), which is nonempty of dimension 1, including q=2. The base reflection is not shrunken.
- For a=1 and a positive straight translation, the basic class need not occur: full σ-support cannot be discarded.

*Needs:* §1.3; ReductiveGroupsPartII RG2.3, lang-theorem; BunGAndNewtonStrata Layer 1,
classification-by-two-invariants; SmoothRepresentationsOfLocalGroups SR.1.

### 7.5 Scope of the proper-Levi continuation

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. Let J be σ-stable, let x ∈ W₀, and suppose w is a (J,x,σ)-alcove element in the
classical flag setting. Put M′ = xM_Jx⁻¹ and I_M = I ∩ M′. Construct the map from the twisted product I
×^(I_M) (I_M ẇ σ(I_M)) to IẇI, sending [i,m] to i m σ(i)⁻¹. The quotient identifies (i,m) with (ij,j⁻¹mσ(j))
for j∈I_M. Prove the map surjective; if the defining root inclusions are strict for every relevant positive
root group, prove it injective. Two source points in any one fibre have I_M-σ-conjugate second coordinates.
For each [b_M] in B(M_J) mapping to [b] with κ_M(b_M) = κ_M(x⁻¹wσ(x)), compare the corresponding Levi ADLV to
its image after framing transport and J_b(F)-translation. The union of these images covers X_w(b) on geometric
points. Keep every such Levi class, its M_J-Newton point and its M_J-defect as the invariants of that source. The image-cover statement asserts surjectivity on geometric points; dimensions are compared only after the bounded morphism and its fibre dimensions have been identified as in §0.5. (he21, §6.5, p. 14; ghn15, Theorem 3.3.1,
PDF p. 11). Source extraction: ghn15 line 409.

A proof route is as follows. List the Levi classes in the B(M) fibre and compare their Kottwitz invariants.
State the Hodge–Newton comparison with its actual hypotheses and account for fibre dimensions. Keep the image
comparison on the stated P-alcove pieces and use the all-classes index set.

The all-classes warning from GHN’s erratum remains in force.

The comparison has the following API.

- The source is the quotient of I × (I_M ẇ σ(I_M)) by (i,m) ↦ (ij,j⁻¹mσ(j)) for j∈I_M, and its target is IẇI.
- The map sends [i,m] to i m σ(i)⁻¹ and is unchanged by the specified quotient relation.
- Every element of IẇI is the image of at least one quotient class.
- For strict root inclusions, every fibre consists of exactly one quotient class.
- In every fibre the second coordinates of two representatives are σ-conjugate by I_M; the induced ADLV images are indexed by all matching Levi classes.

**Checks.**

- For J=S, I_M=I and the twisted-product map reduces to the identity on IẇI. For a proper torus Levi in GL₂ the two classes above remain distinct in the B(M)→B(G) fibre before imposing the required Levi κ. A surjection from two points to one point is not an isomorphism; injectivity is used only under strict root inclusions.
- In G_m with q=2, choose a constant unit ζ of order 3 in 𝔽₄ and σ(ζ)=ζ². For w=1, the equivalent pairs (1,1) and (ζ,ζ) both map to 1, since ζ·ζ·σ(ζ)⁻¹=1. The untwisted relation would identify (1,1) with (ζ,1), whose image is ζ²≠1.
- In the GL₂ torus example, the B(M)→B(G) fibre has the two classes (1,0) and (0,1); the additional requirement κ_M=(1,0) selects the first and excludes the second. Counting a second matching class here would be a wrong application of the all-classes condition.

*Needs:* §7.2; §1.2; BunGAndNewtonStrata Layer 1, general-levi-newton-comparison.

### 7.6 From a basic seed to the required Newton class

Use the simple quasi-split flag datum and apartment orientation of the Conventions. The initial classical
proof uses the equal-characteristic tame adjoint setting of the Conventions; the general flag theorem includes
the specified transfer. The reduced root datum is realized in its adjoint/full coweight lattice P∨ with its
based σ-action. Conclusions about the original cocharacter lattice require §3.2. For the reduced target a t^γ,
if κ(b)=κ(a t^γ), ν_b≤γ^♦ and the basic seed exists, then X_(a t^γ)(b) is nonempty and has virtual dimension.
Indeed the basic class [τ] is ≤[b]≤[t^γ]=[b_(a t^γ)]; use the family cordiality of §4.7 and the saturation
theorem of §4.6. (he21, §6.3, pp. 13–14). Source extraction: he21 line 508.

A proof route is as follows. Compare κ in the same integral lattice and Newton order. Use the basic seed for
the lower endpoint and the identified generic translation class for the upper endpoint. Apply saturation and
virtual-dimension equality.

Do not infer the existence of the basic seed from generic greatestness. The γ produced in P∨ is not used for
an original G-class until the comparison of §3.2 has been applied to that original component.

**Checks.**

- For split GL₂, a=s and γ=(1,0), the basic κ=1 class of slopes (1/2,1/2) and the ordinary class of slopes (1,0) bound the interval. Both ADLVs have dimension 1. A class of κ=0 is excluded despite any rational Newton comparison.

*Needs:* §7.4; §4.7; §4.6; BunGAndNewtonStrata Layer 1, partial-order-on-B-of-G.

### Examples

For the GL₂ diagonal torus, the two integral pairs (1,0) and (0,1) are different Levi classes over the same
nonbasic group class. For γ=0 and a=s in A₁, the basic seed is the finite Deligne–Lusztig locus P¹ minus
P¹(𝔽_q), nonempty even when q=2.

### Dependencies

Layers 0, 1, 4; BunGAndNewtonStrata Layer 1, classification-by-two-invariants; BunGAndNewtonStrata Layer 1,
galois-average; BunGAndNewtonStrata Layer 1, general-levi-newton-comparison; BunGAndNewtonStrata Layer 1,
partial-order-on-B-of-G; ReductiveGroupsPartII RG2.3, lang-theorem; ReductiveGroupsPartII RG2.3,
parahoric-subgroup; ReductiveGroupsPartII RG2.4, iwahori-weyl-group; SmoothRepresentationsOfLocalGroups SR.1.
The individual Needs paragraphs specify the additional comparison constructions used by each route.

## Layer 8: the shrunken nonemptiness and dimension theorem

### 8.1 Nonemptiness for shrunken affine Deligne–Lusztig varieties

Use the simple quasi-split flag datum and apartment orientation of the Conventions. Let w = x t^λ y be shrunken. Assume λ^♦ − ν_b has strictly positive rational coefficients on every simple coroot and (λ_w^♭♭)^♦ ≥
ν_b. Prove X_w(b) ≠ ∅ if and only if κ_G(w) = κ_G(b) and supp_σ(η_σ(w)) = S. This is the theorem for the
original local-field datum, including its general flag-geometry and original-lattice comparisons; the
constructions and supplier contracts in the preceding layers are its proof inputs. (he21, Theorem 6.1, p. 13).
Source extraction: he21 line 480.

A proof route is as follows. Necessity is the integral κ obstruction and the proper-support Levi obstruction.
For sufficiency reduce to a t^γ with γ≥λ^♭♭ and full support, compare γ^♦≥ν_b, establish the basic seed, and
use cordial saturation. Dimension advantage forces nonemptiness of the original locus.

Neither strict λ-gap nor shrunkenness is omitted. All invariants are for the original G on the component
compared in §3.2.

**Checks.**

- For PGL₂, b=1, w=s t^(nα∨), n≥1, κ agrees, η=s has full support, and the alcove (2n,2n+1) is shrunken; the locus is nonempty. For w=t^(nα∨) with the same λ and b, support is empty and the locus is empty.

*Needs:* §7.3; §6.4; §7.6; §0.6; ReductiveGroupsPartII RG2.3.

### 8.2 Virtual dimension in the shrunken range

Use the simple quasi-split flag datum and apartment orientation of the Conventions. Under the hypotheses of
§8.1, if the equivalent nonemptiness conditions hold, dim X_w(b)=d_w(b)=(ℓw+ℓη_σ(w)−def_G(b))/2−〈ν_b,ρ〉. Use
the reduced target’s virtual dimension and universal dimension advantage for the lower bound, then the
independent virtual upper bound for equality. (he21, Theorem 6.1 and §6.3, pp. 13–14). Source extraction: he21 line 520.

A proof route is as follows. For the nonempty reduced target, apply w⇒a t^γ to dim−d. Its actual dimension
equals its virtual dimension, giving dim X_w≥d_w. Combine with the virtual upper bound; no equidimensionality
claim for general w follows from the numerical equality.

For an empty locus the rational formula is not asserted. Rank-one examples must use the same opposite-chamber
convention as η. For split PGL₂, b=1 and w=s t^(nα∨) with n≥1, λ^♭♭=nα∨, η=s, ℓw=2n+1, def=0, so the formula
gives dimension n+1. The base alcove has α-values (−1,0); its image has values (2n,2n+1) and is shrunken.

**Checks.**

- For PGL₂, b=1 and w=s t^(nα∨), n≥1, λ^♭♭=nα∨, ℓw=2n+1, ℓη=1 and defect 0 give n+1. Values n=1 and n=2 give dimensions 2 and 3.

*Needs:* §8.1; §7.6; §6.4; §3.9.

### 8.3 The basic specialization

Use the simple quasi-split flag datum and apartment orientation of the Conventions. For basic b, shrunken w
and the same strict λ-gap, the double-flat Newton inequality required in the main theorem follows from the
matching κ and the dominant auxiliary construction in the supported adjoint setting. Hence nonemptiness is
equivalent to integral κ equality and full σ-support, with dimension (ℓw+ℓη−def_G(b))/2−〈ν_b,ρ〉. This
corollary does not remove shrunkenness or the characteristic and descent constructions of §§0.5 and 3.2.
(he21, §1.4, pp. 3–4; §6.3, pp. 13–14; ghn15, Theorem B, PDF p. 3, with the official erratum). Source extraction: he21 line 526.

A proof route is as follows. Compare the basic central Newton vector to the dominant auxiliary bound after
matching κ. Apply the main criterion and formula, with the same descent restrictions.

A minuscule λ may have λ^♭♭=λ; the strict-gap hypothesis of the main theorem cannot be silently replaced by a
non-strict one.

**Checks.**

- For the basic class b=1 in split adjoint A₁, ν=0, λ=nα∨ and η=s give (2n+1+1)/2=n+1. A minuscule λ can satisfy λ^♭♭=λ, so equality of the two bounds does not imply a strict λ-gap.

*Needs:* §8.2; §5.1; BunGAndNewtonStrata Layer 1, classification-by-two-invariants.

### 8.4 A usable large-translation range

Use the simple quasi-split flag datum and apartment orientation of the Conventions. Let w be shrunken and
assume λ_w^♦≥ν_b+2ρ∨. Then the strict λ-gap and double-flat inequality of the main theorem hold. Therefore
X_w(b) is nonempty iff κ_G(w)=κ_G(b) and supp_σ(η_σ(w))=S, and its nonempty dimension is d_w(b). The bound is
a sufficient explicit range, while shrunkenness remains a separate hypothesis. (he21, Corollary 6.4, p. 14).
Source extraction: he21 line 535.

A proof route is as follows. Bound the two fundamental-coweight corrections by 2ρ∨ and use monotonicity of
normalized subtraction. Check strict positivity in every simple coroot after averaging. Apply the main theorem
with the geometric and original-lattice comparisons of §§0.5 and 3.2.

The coweight is 2ρ∨, not 2ρ. An arbitrary large λ statement cannot drop the shrunken condition.

**Checks.**

- In adjoint A₂, ν=0 and λ=6ω₁∨=4α₁∨+2α₂∨ satisfy λ−2ρ∨=2α₁∨, but 〈α₂,λ〉=0: translation preserves the α₂-critical strip and fails shrunkenness. The numerical bound alone does not apply the theorem.
- For adjoint A₁, λ=α∨=2ρ∨ and w=s t^λ satisfy the range; the dimension is 2.

*Needs:* §8.2; RootSystems Layers 3–4 and 6; RootSystemsPartII RS2.1 and its two supplier extensions; §5.1.

### Examples

For split PGL₂, b=1 and w=s t^(nα∨), n≥1, the base alcove (−1,0) maps to (2n,2n+1). Thus the shrunken and
strict-gap conditions hold, the double-flat bound is nα∨, κ agrees and η=s has full support. The dimension is
n+1: 2 for n=1 and 3 for n=2. The pure translation with the same λ has empty η-support and an empty basic
locus.

### Dependencies

Layers 0, 3, 5, 6, 7; BunGAndNewtonStrata Layer 1, classification-by-two-invariants; ReductiveGroupsPartII
RG2.3; RootSystems Layers 3–4 and 6; RootSystemsPartII RS2.1 and its two supplier extensions. The individual
Needs paragraphs specify the additional comparison constructions used by each route.

## Downstream consumers

The component continuation consumes §0.1, exact and bounded spherical loci in §0.4, geometric realization in
§0.5 and framing transport in §0.6. Its notation dictionary distinguishes exact strata from closed unions. The
integral continuation consumes the same classical and perfect special-fibre objects and the spherical
dimension theorem of §3.8 before constructing specialization maps. The Kottwitz continuation consumes the
generic Hecke and local-shtuka cohomology of the base roadmap and the applicable geometric comparisons; its
trace theorem is independent of the shrunken dimension argument. No conclusion about components or
local-shtuka cohomology follows just from equality of the dimensions in Layer 8.

## References

All statements are formulated here in their own mathematical terms. Page numbers for published sources are
printed pages; PDF pages are explicitly marked. The source manifest fixes the exact legally read versions and
extraction locators.

- **he21.** Xuhua He, *Cordial elements and dimensions of affine Deligne–Lusztig varieties*. Forum of Mathematics, Pi 9 (2021), e9; published 15-page article. [Legal text](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/5A27DBF48CAEF6DA56A313061848574C/S205050862100010Xa.pdf/cordial-elements-and-dimensions-of-affine-deligne-lusztig-varieties.pdf).

- **zhu17.** Xinwen Zhu, *Affine Grassmannians and the geometric Satake in mixed characteristic*. Annals of Mathematics 185 (2017), 403–492; published version. [Legal text](https://annals.math.princeton.edu/wp-content/uploads/annals-v185-n2-p02-p.pdf).

- **he14.** Xuhua He, *Geometric and homological properties of affine Deligne–Lusztig varieties*. Annals of Mathematics 179 (2014), 367–404; published version. [Legal text](https://annals.math.princeton.edu/wp-content/uploads/annals-v179-n1-p06-p.pdf).

- **he15.** Xuhua He, *Hecke algebras and p-adic groups*. arXiv:1511.01386v3, 21 November 2016; survey corresponding to Current Developments in Mathematics 2015. [Legal text](https://arxiv.org/pdf/1511.01386).

- **gh10.** Ulrich Görtz and Xuhua He, *Dimensions of affine Deligne–Lusztig varieties in affine flag varieties*. arXiv:1006.2291v1; Documenta Mathematica 15 (2010), 1009–1028. [Legal text](https://arxiv.org/pdf/1006.2291).

- **mv20.** Elizabeth Milićević and Eva Viehmann, *Generic Newton points and the Newton poset in Iwahori-double cosets*. Forum of Mathematics, Sigma 8 (2020), e50, DOI 10.1017/fms.2020.46; locators here use arXiv:1902.02415v3. [Legal text](https://arxiv.org/pdf/1902.02415v3).

- **ghn15.** Ulrich Görtz, Xuhua He and Sian Nie, *P-alcoves and nonemptiness of affine Deligne–Lusztig varieties*. arXiv:1211.3784; published Annales scientifiques de l’ÉNS 48 (2015), 647–665; corrected by the separate erratum. [Legal text](https://arxiv.org/pdf/1211.3784).

- **ghnerr.** Ulrich Görtz, Xuhua He and Sian Nie, *Erratum to P-alcoves and nonemptiness of affine Deligne–Lusztig varieties*. Official author-hosted 3-page erratum. [Legal text](https://www.esaga.uni-due.de/f/ulrich.goertz/pdf/Erratum-GHN.pdf).

- **ghkr06.** Ulrich Görtz, Thomas J. Haines, Robert E. Kottwitz and Daniel C. Reuman, *Dimensions of some affine Deligne–Lusztig varieties*. arXiv:math/0504443; Annales scientifiques de l’ÉNS 39 (2006), 467–511. [Legal text](https://arxiv.org/pdf/math/0504443).

- **vie06.** Eva Viehmann, *The dimension of some affine Deligne–Lusztig varieties*. arXiv:math/0510385v2, 21 July 2006; Annales scientifiques de l’ÉNS 39 (2006), 513–526. [Legal text](https://arxiv.org/pdf/math/0510385).

- **ham15.** Paul Hamacher, *The dimension of affine Deligne–Lusztig varieties in the affine Grassmannian*. International Mathematics Research Notices 2015, 12804–12839, DOI 10.1093/imrn/rnv081; the legally read text is arXiv:1312.0486v2, titled The dimension of affine Deligne–Lusztig varieties in the affine Grassmannian of unramified groups. [Legal text](https://arxiv.org/pdf/1312.0486v2).

- **ckv15.** Miaofen Chen, Mark Kisin and Eva Viehmann, *Connected components of affine Deligne–Lusztig varieties in mixed characteristic*. arXiv:1307.3845; Compositio Mathematica 151 (2015), 1697–1762; numbering here is that of the downloaded arXiv version. [Legal text](https://arxiv.org/pdf/1307.3845).

- **vie14.** Eva Viehmann, *Truncations of level 1 of elements in the loop group of a reductive group*. Annals of Mathematics 179 (2014), 1009–1040; published version. [Legal text](https://annals.math.princeton.edu/wp-content/uploads/annals-v179-n3-p03-p.pdf).

- **hn14.** Xuhua He and Sian Nie, *Minimal length elements of extended affine Weyl groups*. Author copy; Compositio Mathematica 150 (2014), 1903–1927. [Legal text](https://archive.ymsc.tsinghua.edu.cn/pacm_download/315/8989-affmin-2.pdf).
