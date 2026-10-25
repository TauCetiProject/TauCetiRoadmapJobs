# Roadmap: Kato's Euler systems

**Summary.** This roadmap takes the finite-level modular zeta classes of
`PadicFamilies` §4.0, with their norm relations, explicit reciprocity law and
cyclotomic Euler-system bound, and builds on them Kato's canonical rational zeta
morphism `V(f) → H¹_Iw(V(f))`, its full-level and twist-one versions, the
period-normalized scalar regulator and its comparison with the analytic p-adic
L-function, and the arithmetic applications to elliptic curves: finite
generation of `E(ℚ_∞)`, the ordinary and multiplicative cyclotomic divisibility,
the absence of finite submodules, the rank-zero upper bound for the p-primary
Tate–Shafarevich group, and Kato's finiteness theorems for Bloch–Kato Selmer groups of
newforms and for Selmer and Mordell–Weil groups of modular abelian varieties over abelian
fields. On the way it states the inputs those constructions use
and no other roadmap states: the remaining identities of Siegel units and
Beilinson elements, Kato's Eisenstein series, Beilinson's real regulator formula,
the coefficient places at which Kato's image hypothesis holds, the passage from
Kato's hypotheses to Rubin's, finite support over the full cyclotomic algebra,
the compatibility of twisting with localization, the parabolic Iwasawa
cohomology of the full-level curve, Perrin-Riou's map for de Rham
representations, the period dictionary with modular symbols, and the
formal-group and control inputs of the elliptic applications.

`README.md` is normative. [`Suggested.lean`](Suggested.lean) records the light
definitions and the milestones that can be stated against the pinned Mathlib and
Tau Ceti, with proved checks of their conventions; it is not exhaustive. The
names written inside a target are proposed library names.

## Scope and ownership

This roadmap owns:

- the rational auxiliary independence of Siegel units, their two-coordinate
  Galois action and distribution relation, their analytic product with its
  Bernoulli exponent, cusp orders and integral descent, and the one-coordinate
  degeneracy product (Layer 0);
- the K₂-level norm relations of the Beilinson elements, for level raises that
  keep each index's prime set and for auxiliary primes (Layer 1);
- the conductor Euler system of a newform in the Euler-system carrier, the
  dictionary between Kato's and Nakamura's Hecke and twist conventions, and the
  full-level Hecke-linear zeta classes (Layer 2);
- the explicit modular filtration on the de Rham realization, Kato's Eisenstein
  series `E^h_(α,β)`, `F^h_(α,β)`, the Eisenstein zeta forms with their Betti
  periods and critical values, the operator-valued zeta function and Beilinson's
  real regulator formula for the K₂ element (Layer 3);
- the admissible coefficient places, the nonvanishing of twisted critical values
  used by Kato, the conversion of Kato's Euler-system hypotheses into Rubin's,
  the module structure of lattice Iwasawa cohomology, finite support over the
  full cyclotomic algebra, the twist–localization square, the consequences of
  Serre's open-image theorem and the strict `H²` kernel (Layer 4);
- Kato's canonical rational zeta morphism, the finite index of the smoothed
  integral span, the critical interpolation of the canonical map, Nakamura's
  twist-one morphism, parabolic full-level Iwasawa cohomology and the parabolic
  characterization of the full-level classes (Layer 5);
- Perrin-Riou's map for de Rham representations in Kato's form, the scalar
  regulator of the canonical class, the period dictionary with modular symbols,
  the noncritical analytic–arithmetic equality, the conditional critical
  comparison and the elliptic local lattice with Kato's period (Layer 6);
- the non-torsion and cohomological bound for the canonical zeta module, the
  elliptic applications with their formal-group and control inputs, Kato's finiteness of
  Bloch–Kato Selmer groups over abelian fields with its consequences for modular abelian
  varieties, and his bound for the order of `H²` (Layer 7).

`PadicFamilies` §4.0 is the owner of the finite-level geometric construction
and its first consequences, and this roadmap does not construct them again:
the normalized theta unit, the smoothed Siegel units obtained by torsion
evaluation, the ordered Beilinson symbols on the two-index curves with their
products, transfers and étale Chern classes (the Chern image of `{u,v}` is the
cup product of the Kummer classes of `u` and `v`), the classes
`modularZeta c d M N k r r′` with their norm, trace, moment, coefficient, Hecke
and smoothing relations (§4.0.1), the modular dual exponential and the
three-branch explicit reciprocity law, including the comparison over the
completed modular function field whose residue field has a finite p-basis
(§4.0.2), and the rational cyclotomic bound for the geometric zeta submodule,
its integral form under the `SL₂(ℤ_p)` image condition, the CM case through
elliptic units, and the ordinary Selmer bound by the ordinary p-adic L-function
with good periods (§4.0.3). The statements kept below differ from those of §4.0
in one of three ways, which each target names: they concern the canonical zeta
module of Layer 5 rather than the geometric one, they use a weaker integral
hypothesis than the `SL₂(ℤ_p)` image, or they are finer statements (K₂-level
relations, analytic products, full-level and parabolic classes) that §4.0 does
not make.

The modular curves, their level and degeneracy maps, cusps and Tate charts, and
their étale local systems come from `ModularCurves` and `ModularCurvesPartII`.
Scheme K-theory products, transfers and the projection formula come from
`SchemeKTheoryOperations`, and the ring-level Steinberg symbol relations from
`K2SymbolsBrauer`. Eisenstein series with character and the analytically
continued newform L-function come from `ModularForms`. Galois representations of
newforms, their lattices, purity and local behaviour at p come from
`AutomorphicGaloisRepresentations`; Galois and Iwasawa cohomology, Selmer
conditions, universal norms and twisting from `SelmerIwasawaCohomology` and
`ArithmeticGaloisDuality`; the Euler-system carrier and its finite-level and
Iwasawa bounds from `EulerSystemsAndKolyvaginSystems`; completed group rings,
pseudo-null modules and characteristic ideals from
`PadicMeasuresIwasawaAlgebras`; the dual exponential, the crystalline and de
Rham regulators and the elliptic Coleman map from `PadicHodgeRegulators`;
modular-symbol periods, the Drinfeld–Manin splitting, admissible distributions
and the family comparison principle from `ModularSymbolsPadicLFunctions`; the
completed Borel–Moore moment map from
`CompletedCohomologyAndLocalGlobalCompatibility`; and elliptic curves over local
and global fields from `EllipticCurves`.

Not in this roadmap: a generic Euler-system or Kolyvagin-system machine, generic
regulators, the construction of the analytic p-adic L-function, reverse
divisibility or any main-conjecture equality, the BSD p-part equality, the Tamagawa
number conjecture itself, two-variable and family classes (owned by `PadicFamilies`),
and the CM main conjecture beyond the elliptic-unit input that `PadicFamilies` §4.0.3
uses; in particular the vanishing for almost all λ of the Selmer groups of 7.9 for CM
forms, which rests on it, is not claimed.

## Conventions

Let f be a normalized newform of weight `k ≥ 2`, level N and nebentypus ε. Put
`F = ℚ(a_n)`, choose `λ | p`, write `E = F_λ` and `O = O_λ`, and fix compatible
roots `ζ_(p^n)`, complex and p-adic embeddings, and the resulting cyclotomic
character κ. A stable lattice is an O-lattice in the cohomological realization
`V(f)`, with continuous Galois action. The dual form is `f* = ∑ conj(a_n)q^n`;
it is kept distinct from f, even when they coincide in an example. Arithmetic
Frobenius is written `Fr_ℓ`. Inverses of `σ_ℓ` refer to the action on the named
cyclotomic coefficient algebra, never to a replacement of arithmetic Frobenius
by geometric Frobenius.

For `ℓ ∤ p` the inertia invariants of `V(f)` satisfy
`det(1 − Fr_ℓ^(−1) u | V(f)^(I_ℓ)) = 1 − a_ℓ u + ε(ℓ) ℓ^(k−1) u²`, with `ε(ℓ) = 0` for `ℓ | N`
(Kato (14.10.3), p. 240), and `V(f*) ≅ Hom_E(V(f),E)(1−k)` ((14.10.1)). Hence for `ℓ ∤ Np` the
arithmetic Frobenius has
`det(1 − Fr_ℓ t | V(f)) = 1 − conj(a_ℓ) ℓ^(1−k) t + conj(ε(ℓ)) ℓ^(1−k) t²`, which after the
twist by `k − r` is the polynomial of 2.1. At `k = 2`, `ℓ = 3`, `a_3 = 2`, `ε(3) = 1` the
geometric polynomial is `1 − 2u + 3u²` and the arithmetic one `1 − (2/3)t + (1/3)t²`; reading
the first as the second would turn the evaluated factor `1 − (2/3)X + (1/3)X²` of 2.1 into
`1 − 2X + 3X²`.

Write `G_∞ = Gal(ℚ(ζ_(p^∞))/ℚ)`, `Λ = O[[G_∞]]` and `Λ_ℚ = Λ[1/p]`; `Λ_ℚ` is not
a field. On odd-prime tame character components one may use the power-series
description; at two retain the full algebra `O[{±1}][[T]]` and its finite tame
part: integral plus/minus projectors cannot be obtained by dividing by two.
Statements about height-one primes say whether primes containing p are
excluded. Torsion means annihilation elementwise by regular elements of the
indicated ring: Mathlib `Module.IsTorsion` and `Module.IsTorsionFree` both use
regular scalars, so no domain hypothesis is hidden in a semilocal statement.

For c, d ≥ 2 prime to six the auxiliary conventions are those of
`PadicFamilies` §4.0.1. At c = 5, a = 2 a nonzero point of `E[2]` has
coefficient zero in `c²[0] − E[c]` and 24 in `25E[2] − E[10]`, which fixes the
direction of the norm identity. Torsion pairs are nonzero and are row indices
for a universal ordered column basis: `[[1,1],[0,1]]` sends `(1/5,0)` to
`(1/5,1/5)`, whereas its transpose fixes that pair. Determinant d sends the
chosen level root `ζ_N` to `ζ_N^d`.

Unit groups are multiplicative; in their tensor product with ℚ write `[u]`
additively. The ordered symbol is `{u,v}`. In Kato's notation `c_(2,2)({u,v})` is
minus the cup product of the Kummer classes and `ch_(2,2) = −c_(2,2)`; this is the
sign of `MotivicEtaleKTheory` §12.1. The ring-level symbol of `K2SymbolsBrauer`
§8.1 differs from the product normalization by an inverse, and the comparison
used below is the product-normalized one. The moment uses `T_pE ≃ H_p(1)`, so
the total twist is `2 − r + (k − 2) = k − r`: weight two and `r = 1` give twist
one, weight four and `r = 1` give twist three. Literal duals of integral
symmetric powers are retained; their identification with ordinary symmetric
powers is rational, or requires `(k−2)!` invertible.

The untwisted Kato map obeys `z(ιγ) = −σ_(−1) z(γ)`. Nakamura's twist-one map
obeys the positive relation after both twists. Critical periods use the sign
`(−1)^(k−r−1) χ(−1)`: at `k = 2, r = 1` an even character chooses plus and an
odd one minus; at `k = 4, r = 2` an even character chooses minus. Gauss sums
are `G(χ,ζ) = ∑_b χ(b)ζ^b`, and the character inversion in interpolation
formulas is kept explicit.

**Admissible pairs.** Call `(f, λ)` *admissible* when f has complex
multiplication, or f has none and there is `σ ∈ G_(ℚ(μ_(p^∞)))` whose fixed space
on `V_λ(f)` is one-dimensional over E (Kato's hypothesis 13.4(v)). Target 4.1
proves admissibility at every λ above a place of `F⁰` where Momose's quaternion
algebra splits; in particular for all but finitely many λ, for every λ when f
has no nontrivial inner twist, and for every p when f comes from an elliptic
curve over ℚ. Statements below that rest on Kato's Theorem 12.4 assume
admissibility.

## Exact supplier contracts

### From Mathlib and Tau Ceti

Use Mathlib `Units` and `Units.map` for ring units, `UpperHalfPlane`,
`ModularForm`, `CuspForm`, `DirichletCharacter` and
`EisensteinSeries.eisensteinSeries_MF` for analytic carriers, `PadicInt` with
`Fact p.Prime` for `ℤ_p`, `PowerSeries`, `Polynomial`, `Matrix.vecMul`,
`LinearMap`, `Submodule`, `Submodule.span`, `Module.Dual`, `Module.Finite`,
`Module.IsTorsion`, `Module.IsTorsionFree`, `LocalizedModule`, `Ideal.height`
and `ringKrullDim` at their stated generality. Fractional analytic q-powers need
the chosen exponential branch; they are not powers of a formal variable.
`LSeries` is a total sum and supplies no meromorphic extension to critical
integers. Tau Ceti's field Kummer maps (`TauCeti.kummerMap` and its restriction
and corestriction compatibilities) are consistency checks for the symbol
normalization only; they say nothing about the open modular curve.

### From PadicFamilies §4.0

- §4.0.1: `thetaUnit c` with its divisor, isogeny norm, base change and Tate
  expansion; the smoothed Siegel units by torsion evaluation; the ordered
  Beilinson symbol of two units on the two-index curve `Y(M,N)` with
  `gcd(c,6pM) = gcd(d,6pN) = 1`, its products, finite-étale transfers,
  projection formula and transfer transitivity, and its étale Chern image (the
  ordered Kummer cup product); `modularZeta c d M N k r r′` in the degree-one
  arithmetic cohomology of the weight-`(k−2)` local system twisted by `k − r`,
  with `modularZeta_moment`, `modularZeta_norm` (factor
  `1 − ℓ^(−r)A_ℓ + ℓ^(k−1−2r)B_ℓ` for `ℓ ∤ N`, `1 − ℓ^(−r)A_ℓ` for `ℓ | N`,
  where `A_ℓ = T′(ℓ)⟨1/ℓ,1⟩*`, `B_ℓ = ⟨1/ℓ,1/ℓ⟩*`), `modularZeta_trace` (identity
  factor in the p-direction), `modularZeta_hecke` and `modularZeta_smoothing`,
  and the Hochschild–Serre comparison with the finite-ramification Galois model
  of `SelmerIwasawaCohomology` §3.15.
- §4.0.2: the modular dual exponential on the open-curve local system and
  `modularZeta_explicitReciprocity` for `1 ≤ r, r′ ≤ k−1`, one of them `k−1`,
  every prime of M dividing N and `M ≥ 2` when `(r,r′) = (k−2,k−1)`, with factor
  1 if `p | M`, `1 − p^(−r)T′(p)⟨1/p,1⟩*` if `p ∤ M, p | N`, and
  `1 − p^(−r)T′(p)⟨1/p,1⟩* + p^(k−1−2r)⟨1/p,1/p⟩*` if `p ∤ MN`, proved through the
  comparison square (10.9.5) of Kato over the completed modular function field.
- §4.0.3: for a classical eigenform, degree-one Iwasawa cohomology of a stable
  lattice has generic rank one, degree two is torsion, the geometric zeta
  submodule is non-torsion, and the height-one length inequality with the local
  degree-two term holds away from p; the CM case is included through elliptic
  units; for p odd and an integral `SL₂(ℤ_p)` image the integral inequality holds;
  `classicalOrdinarySelmer_torsion` and the rational height-one bound of the ordinary
  Selmer dual by the ordinary p-adic L-function with good periods, for every p, with the
  integral form for odd p.
  This roadmap uses the non-CM rational clauses only for admissible pairs: at a
  coefficient place over a ramified place of Momose's algebra Kato's 12.8.2,
  on which their proof rests, is not available (see 4.1).

### From ModularCurves and ModularCurvesPartII

From `ModularCurves`: relative effective Cartier divisors (§0A), multiplication
maps as finite locally free isogenies with their degree (§2A), Picard duality
(§2D), the integral Weil pairing with Cartier–Nishi duality (§2E), and the fine
full-level moduli `Y_full(N)` over `ℤ[1/N]` for `N ≥ 3` with its determinant map
(§5B). From `ModularCurvesPartII`: analytic uniformization of full and
congruence levels and its compatibility with level maps and row actions
(§§3.13–3.14, 4.5); finite locally free level maps, the normalizer action and
quotients by finite level groups (§§3.15, 5.15–5.16); compactification, cusp
ramification indices, cusp fields and the Tate cusp parameter (§§4.8, 6.1–6.3);
the full-level Tate chart `⊔ Spec ℤ[ζ_n][[q^(1/n)]]` (§§5.8(c), 5.11); arithmetic
determinant descent and the fixed-pairing model over `ℚ(ζ_N)` (§§5.12,
8.1–8.5); degeneracy correspondences and diamond operators (§§9.1–9.2) with their
étale traces (§9.12); and the open-curve étale local systems `Sym^(k−2)` with the
Artin comparison, the parabolic and boundary sequences, Hecke traces and the
graph retraction of the open curve (§§14.1–14.4, 14.8, 14.9a, 14.12); and the modular
abelian variety `A_f` of a weight-two newform as a quotient of `J₁(N)` (§16.2). Vanishing of
degree-two étale cohomology of the affine curve with these coefficients follows
from §14.4 with §14.9a.

### From SchemeKTheoryOperations and K2SymbolsBrauer

From `SchemeKTheoryOperations`: pullback (§2.2), proper pushforward including
finite locally free maps (§2.3), the projection formula
`f_*(x · f^*y) = f_*x · y` (§2.4), the unit class `λ_A` of an affine scheme
(§3.6) and the graded product with its comparison to Loday's `K₂` product
(§6.1). From `K2SymbolsBrauer`: bilinearity, `{r,1} = 1`, the Steinberg relation
and skew-symmetry of unit symbols over commutative rings (§§6.4, 6.7–6.9) and the
sign comparison of §8.1.

### From ModularForms

Layer 0: Eisenstein series with character and the level-`Γ(N)` translation to
Mathlib's `eisensteinSeries`. Layer 7: the newform L-function with its Euler
product, meromorphic extension and functional equation. Layer 9 (the inner-twist
sublayer): the twist `f ⊗ χ` by a Dirichlet character with its modularity, level,
nebentypus and primitive associate; through it the twisted values `L_S(f,χ,s)` used
below are L-values of a newform with finitely many Euler factors removed, so Layer 7
gives their continuation. Kato's
`E^h_(α,β)`, `F^h_(α,β)` and the operator-valued zeta function are not there and
are targets 3.2 and 3.4 here.

### From AutomorphicGaloisRepresentations

The parabolic realization with its duality pairing (§1.2); the rank-two
representation of a newform with the restricted Fricke pairing and the dual-form
twist, its determinant, oddness and characteristic polynomials of Frobenius
(§1.5); stable lattices (§1.6); potentially semistable comparison (§4.5);
absolute irreducibility (§4.8); the ordinary filtration and `D_cris` at
`p ∤ N` (§§5.1–5.2); purity and strict compatibility of the eigenform system
(§§7.2–7.3); and the Ribet–Momose theorem that for non-CM f the Zariski closure of
the image contains `SL₂` at every λ, with residual largeness outside a finite set
(§7.5); and the decomposition of the Tate module of the modular abelian variety `A_f` of
a weight-two newform along the places above ℓ (§6.1). The local structure of the image at a
given λ, in terms of the inner-twist
field `F⁰` and Momose's algebra, is target 4.1 here.

### From SelmerIwasawaCohomology and ArithmeticGaloisDuality

From `SelmerIwasawaCohomology`: the p-adic Kummer identifications, limits of
coefficients and cup–Shapiro compatibility (§§0.7–0.11); the unramified,
Greenberg and ordinary local conditions (§§2.7, 2.8, 2.8a), the elliptic
`p^∞`-Selmer group with its Kummer-image local conditions (§2.12),
finite against unramified classes (§2.15), Poitou–Tate for Selmer groups
(§§2.19–2.20) and Selmer complexes (§2.21); Iwasawa algebras of `ℤ_p^d × Δ`
(§3.0), Iwasawa cohomology as a corestriction limit (§3.1), Shapiro, descent and
control (§§3.2–3.3), universal norms unramified away from p (§3.5), semilocal
descent (§3.6), the twist isomorphism `φ_k` with `φ_k(σx) = κ(σ)^(−k)σφ_k(x)` and
augmentation specialization (§3.7), the rank formula (§3.13), the étale/Galois
comparison for Kato's `j_*` convention (§3.15), Greenberg's criterion for the
absence of finite submodules (§§3.18–3.21), the Bloch–Kato local condition (§4.9) with its
identification with the Kummer conditions for elliptic curves at every place (§4.26), and the
abelian Kummer and Selmer carriers (§2.12a). From `ArithmeticGaloisDuality`:
Tate's inverse-limit theorem (§R02.1.2), the Hochschild–Serre sequence and
finite-index restriction/corestriction (§§R02.2.1–R02.2.3), the local Tate
pairing with exact unramified annihilators (§R02.4.2), the nine-term Poitou–Tate
sequence (§R02.4.3), and compact Shapiro and derived local duality (§§D7.3–D7.4).

### From EulerSystemsAndKolyvaginSystems

Euler polynomials with the comparison of Kato's, Rubin's and Mazur–Rubin's
conventions (§2.1), the module of Euler systems (§2.2), conductor presentations
(§2.4) and twisting by finite-order characters (§2.5); Rubin's finite-level
hypotheses and bound (§§4.3, 4.17); the hypotheses `Hyp(K_∞,T)` and `Hyp(K_∞,V)`
over a `ℤ_p^d`-extension, with irreducibility over `G_(K_∞)` (§8.2), the module
`X_∞` of the restricted Selmer groups (§8.3), `Hyp(K_∞/K)` (§8.6), the index
`ind_Λ` (§8.7), the Iwasawa Poitou–Tate sequence (§8.16), and the divisibilities
`char(X_∞) | ind_Λ(c)` (§8.37), `char(X_∞) | p^t ind_Λ(c)` (§8.38) and the
true-Selmer version (§8.39). That
roadmap states that Kato's hypotheses (i)–(v) of his Theorem 13.4 are a different
record from Rubin's; the implication used here is target 4.3.

### From PadicMeasuresIwasawaAlgebras

Pseudo-null modules, with pseudo-null equivalent to finite over a
two-dimensional noetherian normal local domain with finite residue field (§4.1);
structure and coordinates of `O[[T]]` and of group rings of order prime to p
(§§4.2–4.5); characteristic ideals, their multiplicativity and localization
(§4.6). The full algebra `O[{±1}][[T]]` at `p = 2` is not a domain; target 4.5
supplies its finite-support statement.

### From PadicHodgeRegulators

Kato's dual exponential for de Rham representations of a finite extension of
`ℚ_p`, with its Tate-pairing adjunction and corestriction compatibility, and its
semilocal form (§§1.4, 1.7, 1.11); the crystalline regulator `L_V` over `ℚ_p` for
odd p with its ramified and unramified interpolation, singular Euler operators,
growth, reciprocity, scalar projection and Rubin's elliptic Coleman map
(§§8.8, 8.13–8.16, 8.18, 8.20–8.22); the de Rham regulator of a (φ,Γ)-module on
its high-conductor domain, allowing `p = 2`, and its extension to all of weight
space for crystalline modules (§§9.31–9.35); and the containment of the split
multiplicative Coleman image in the augmentation ideal (§9.36).

### From ModularSymbolsPadicLFunctions

The determination of a modular symbol by its values on the Farey generators
(§0.2), the period symbol and its pairing (§0.7), the rational Drinfeld–Manin
splitting (§0.8), period lines, periods and saturated integral lattices (§1.1),
the twisted Mellin formula and the interpolation dictionary (§§1.2–1.3),
admissible distributions, the analytic p-adic L-function and its uniqueness
for slope `h < k − 1` in Kato's weight (§2.5), decency (§3.0) and the family
comparison principle at a decent critical point (§§3.2–3.3).

### From CompletedCohomologyAndLocalGlobalCompatibility

§2.6: completed Borel–Moore homology with coefficients recovers classical
cohomology. With `W = Sym^(k−2)(ℤ_p²)^*` it gives the integral map
`Sym^(k−2)(ℤ_p²)^* ⊗_(ℤ_p[[K_m]]) H̃^BM_1(K^p(N₀))(1) → H¹(Y(N), V^*_k)(2)`,
compatible with Hecke operators, change of `K_p`, coefficient change and traces,
and an isomorphism after inverting p (Nakamura Lemma 2.10). Its statement (b)
has twist `(1)` with coefficients `𝒱_W`; the extra Tate twist above is that of
the literal dual.

### From EllipticCurves

The invariant differential and the formal group with its logarithm over a ring
containing ℚ (Layer 1); reduction types, the filtration `E₀ ⊃ E₁ ≅ Ê(m)`, the
local minimal discriminant and Tamagawa numbers as indices (Layer 4); and the
Mordell–Weil theorem over number fields (Layer 6).

### From HeightsRationalPointsAndObstructions

The Mordell–Weil theorem for abelian varieties over number fields: `A(K)` is finitely
generated (§1.7).

## How to read the build

Layer 0 and Layer 1 refine the units and K₂ elements of `PadicFamilies` §4.0.1.
Layer 2 places the resulting classes in the Euler-system carrier and constructs
the full-level classes. Layer 3 supplies the archimedean side: the filtration
step in which reciprocity lands, Kato's Eisenstein series, periods, critical
values and the real regulator. Layer 4 proves the image, nonvanishing and
Iwasawa-theoretic inputs that precede the canonical map. Layer 5 constructs the
canonical rational morphism and its twist-one and parabolic forms; Layer 6
compares its regulator with the analytic p-adic L-function; Layer 7 applies the
bounds and ends with Kato's finiteness theorems over abelian fields. This order separates nonvanishing of the geometric classes from
nonvanishing of the subsequently constructed canonical map.

## Layer 0: Siegel units beyond the normalized theta function

`PadicFamilies` §4.0.1 supplies the normalized theta unit and the smoothed
Siegel units `c-g_(α,β)` obtained from it by torsion evaluation. This layer
proves the further identities of these units that Kato uses: independence of
the auxiliary integer after rationalization, the two-coordinate Galois action,
the analytic product with its cusp orders, and the one-coordinate degeneracy
product.

### 0.1 Rational auxiliary independence

For `N ≥ 3` work on the fine full-level curve over `ℤ[1/N]` with universal ordered
basis `(e₁,e₂)` (`ModularCurves` §5B) and a nonzero torsion pair `(α,β)` of order
dividing N. For c ≥ 2 prime to six and to the order of `(α,β)`, the smoothed unit
`c-g_(α,β)` is the pullback of `thetaUnit c` along `αe₁ + βe₂`; it is an integral
unit on the open curve because that section avoids `E[c]` (Kato 1.4,
pp. 122–123).

Define `rationalSiegelUnit` as the element `g_(α,β)` of `O(Y)^× ⊗ ℚ` given by
`[c-g_(α,β)]/(c² − 1)` for any c as above with `c ≡ 1` modulo the order of `(α,β)`.
The denominator is nonzero since `c ≥ 2`. Prove `rationalSiegelUnit_auxiliary`:
the element does not depend on c. The proof uses the auxiliary identity of theta
units on `E ∖ E[cd]`, for c, d ≥ 2 prime to six,

```text
thetaUnit c ^ (d²) / [d]^* thetaUnit c = thetaUnit d ^ (c²) / [c]^* thetaUnit d,
```

which holds because both sides have divisor `c²d²[0] − c²E[d] − d²E[c] + E[cd]`
and the same norm normalization, so they agree by the uniqueness clause of
`PadicFamilies` §4.0.1 (Kato 1.3(2),(4), pp. 121–122; 1.10, pp. 124–125). The
identity is about the rationalized units: the integral c-units for different c
are different (24 against 48 below). Prove `rationalSiegelUnit_smoothing`:

```text
[c-g_(α,β)] = c²[g_(α,β)] − [g_(cα,cβ)]
```

for every admissible c (Kato 1.4–1.5, pp. 122–123), and
`rationalSiegelUnit_pullback`: pullback along an admitted level map
`Y(N′) → Y(N)`, `N | N′`, preserves the indexed unit. The transparent linear
operation `rationalSmoothing c g gc = c²g − gc` records the right-hand side; its
identification with the indexed unit is the geometric statement, not a
consequence of the linear formula.

**Checks.**

- When multiplication by five fixes the torsion index, `rationalSmoothing 5 g g`
  is `24g`, including for nonzero g; a convention with `c` in place of `c²` gives
  `4g`.
- When both five and seven fix the index, `48[c₅-g] = 24[c₇-g]`; this is the
  auxiliary independence itself.
- For `g = 1` in ℚ the two smoothings are 24 and 48: the integral c-units differ,
  and only the rationalized unit is independent of c.
- Pulling back along the identity level map fixes every unit, including units
  other than one, and pullback of an inverse is the inverse of the pullback;
  a constant-one torsion evaluation fails the first.

*Needs:* `PadicFamilies` §4.0.1 (theta unit, its uniqueness, smoothed Siegel
units); `ModularCurves` §§2A, 5B; `ModularCurvesPartII` §§3.14, 8.1–8.5; Mathlib
`Units.map` and ℚ-module operations.

### 0.2 Galois action and two-coordinate distribution

Prove `siegelGaloisDistribution` with the full-level convention of the
Conventions. For `σ = [[a,b],[c,d]] ∈ GL₂(ℤ/N)`, indexed pullback sends the pair
`(α,β)` to `(aα + cβ, bα + dβ)`, and constants transform by `det σ`; the basis
action, the torsion-index action and the pairing component are transported
together (Kato 1.6, p. 123; `ModularCurvesPartII` §5.12). The definition
`torsionIndexAction σ v = v ⬝ σ` (`Matrix.vecMul` over ℚ) records the row
convention; the actual action is on `(ℚ/ℤ)²` and respects admissibility.

For a nonzero integer A and a nonzero pair `(α,β)`, the multiplication
distribution multiplies over the `A²` simultaneous solutions `(α′,β′)` with
`Aα′ = α` and `Aβ′ = β`, and gives the lower indexed c-unit, provided c is prime
to six, A and the torsion orders. Rationalization gives the corresponding
additive sum (Kato Lemma 1.7(2), p. 123). Both coordinates vary; the identity is
derived from the multiplication norm on the universal elliptic curve
(`PadicFamilies` §4.0.1, isogeny norm), and does not follow from a product over
second-coordinate roots only.

**Checks.**

- The upper shear `[[1,1],[0,1]]` sends `(1/5,0)` to `(1/5,1/5)`, the lower shear
  fixes it; transposing the action changes this value.
- The identity matrix fixes `(1/5,2/5)`, and `diag(2,1)` has determinant two,
  sending `ζ_N` to `ζ_N²` when two is invertible modulo N.
- `A = 1` gives the one-element fiber; `A = 0` is excluded, its fiber not being
  the finite isogeny fiber of the theorem.

*Needs:* 0.1; `PadicFamilies` §4.0.1; `ModularCurves` §5B;
`ModularCurvesPartII` §§5.12, 5.15.

### 0.3 Analytic product, cusp order and integral descent

For τ in the upper half-plane put `q = exp(2πiτ)` and `q^x = exp(2πixτ)`. Choose
`0 ≤ a < N` and require `(a,b)` modulo N to be nonzero. The analytic expression
of the rational Siegel unit is

```text
q^(B₂(a/N)/2)
  · ∏_{n≥0}(1 − q^(n+a/N) ζ_N^b)
  · ∏_{n>0}(1 − q^(n−a/N) ζ_N^(−b)),
B₂(x) = x² − x + 1/6.
```

Prove `siegelAnalyticProduct`: convergence, nonvanishing, and agreement of the
smoothed product with the algebraic c-unit under `ModularCurvesPartII` §3.14.
The unsmoothed expression is understood with the rational-unit normalization
of 0.1; it is not an integral global unit without smoothing. The all-zero pair is
excluded: its `n = 0` factor is zero (Kato 1.3(3), p. 122; 1.9, p. 124).

Define `siegelLeadingExponent x = B₂(x)/2` and prove `siegelLeadingExponent_eq_bernoulli`, its
identification with half the second Bernoulli polynomial of Mathlib. In Kato 1.9, p. 124, the printed
last term lacks the square on a; the theta formula and the Bernoulli comparison
after 3.10, p. 141, require `a²/(2N²)`, and this corrected formula is used.
`siegelCuspOrder` computes the c-smoothed exponent difference at each cusp
after the full-level action: at a cusp of width N with parameter `q^(1/N)` the
order is N times the exponent difference. `siegelIntegralDescent` uses the
full-level Tate chart (`ModularCurvesPartII` §§5.8(c), 5.11), the two-coordinate
transformation of 0.2 and the normalization to show that the c-unit lies in the
integral unit group of the open curve once the torsion primes are inverted.
Boundary orders belong to the compactification (`ModularCurvesPartII` §6.1).

**Checks.**

- At `x = 0` the leading exponent is `1/12`; this first index is allowed only
  with a nonzero second index.
- At `x = 1/2` it is `−1/24`, and at `a = 2, N = 5` it is `−11/300`; the
  missing-square formula gives `−23/300`.
- Reflection `x ↦ 1 − x` preserves the exponent. For a cusp of width N,
  multiplying the q-exponent by N is necessary to obtain the order in `q^(1/N)`.

*Needs:* 0.1–0.2; `ModularCurvesPartII` §§3.14, 4.8, 5.8(c), 5.11, 6.1–6.2;
Mathlib `UpperHalfPlane`; `PadicFamilies` §4.0.1 (Tate expansion of the theta
unit).

### 0.4 The one-coordinate degeneracy product

Prove `siegelDegeneracyProduct` for `A ≥ 1` along the degeneracy map whose
analytic description is `τ ↦ Aτ`:

```text
c-g_(α,β)(Aτ) = ∏_(Aβ′=β) c-g_(α,β′)(τ).
```

The product runs over the A solutions β′ with α fixed; it is not the
`A²`-element fiber of 0.2, and this count must survive the descent of the analytic identity to
the finite locally free algebraic level map. Assume the two levels and torsion sections are
admitted and c is prime to six, A and the torsion orders (Kato Lemma 2.12,
p. 131, proved from the analytic product 1.3(3) and used in 2.13, p. 132). Use the Tate parameter and the
universal section to identify both sides before applying the norm on units;
labels alone do not establish compatibility of a chosen degeneracy map.

**Checks.**

- `A = 1` is the identity pullback with one factor.
- `A = 2` gives two second-coordinate roots and `A = 4` gives four, not sixteen;
  composite A is allowed.

*Needs:* 0.2–0.3; `ModularCurvesPartII` §§3.15, 4.5, 9.1 (degeneracy maps);
`PadicFamilies` §4.0.1.

### Examples

The c = 5 divisor and its multiplication-by-two pullback test the direction of
the norm. The smoothing factors 24 and 48 show why only the rationalized unit is
independent of c. The half-index and `2/5`-index Bernoulli values detect the
square in the product exponent.

### Dependencies

`PadicFamilies` §4.0.1; `ModularCurves` §§2A, 5B; `ModularCurvesPartII` §§3.14–3.15,
4.5, 4.8, 5.8(c), 5.11–5.12, 5.15, 6.1–6.2, 8.1–8.5, 9.1. Mathlib units, matrices,
ℚ-modules and the upper half-plane.

## Layer 1: K₂ relations of the Beilinson elements

Write `c,d-z_(M,N) = {c-g_(1/M,0), d-g_(0,1/N)}` for the ordered Beilinson symbol of
`PadicFamilies` §4.0.1 on the two-index curve `Y(M,N)` (`M, N ≥ 2`, `M + N ≥ 5`;
Kato 2.1, p. 125), with c prime to 6M and d prime to 6N, and `z_(M,N)` for the
rational symbol of the two unsmoothed units of 0.1. The bound `M, N ≥ 2` is part of
the definition: at `M = 1` the index `(1/M, 0)` is `(0,0)`, where no Siegel unit is
defined. `PadicFamilies` §4.0.1 states the norm relations
after the Chern moment; this layer states them in K₂, where the full-level
classes of 2.3 and the real regulator of 3.4 use them. Transfers are the
finite locally free pushforwards of `SchemeKTheoryOperations` §2.3 along the
level maps of `ModularCurvesPartII` §§3.15, 5.15–5.16. The dual Hecke operator
`T′(ℓ)` and the diamond operators act on `K₂(Y(M,N))` through the degeneracy
correspondences of `ModularCurvesPartII` §9.1, by pullback (§2.2) followed by
pushforward (§2.3); `⟨a,b⟩*` is pullback by the diamond automorphism.

### 1.1 Norms when the level prime sets agree

Prove `k2NormProjection`: for `M | M′` and `N | N′` (all at least two, as above) with `prime(M) = prime(M′)` and
`prime(N) = prime(N′)`, the transfer along the level map sends `c,d-z_(M′,N′)` to
`c,d-z_(M,N)`, with the same auxiliary units (Kato Proposition 2.3, p. 126; proof
2.11, pp. 130–131). The prime sets must agree separately for each index; equality
of their unions is insufficient: adding to M a prime that already divides N still calls for
the ramified branch of 1.2. The auxiliary coprimalities at the lower level
remain valid at the upper level because of the two equalities.

Apply the projection formula `f_*{u, f^*v} = {Norm_f(u), v}` after arranging the
two slots along the level map, then the unit norms of 0.2. The open curves are
affine and the level maps finite locally free, so the ring form suffices: prove
`k2ProjectionFormulaNorm`, that for a finite map of commutative rings `R → S` with
S finitely generated projective over R, `f_*{s, r} = {N_(S/R)(s), r}` in `K₂(R)` for
`s ∈ S^×`, `r ∈ R^×`, where `N_(S/R)` is the determinant of multiplication by s.
Its proof combines the projection formula of `SchemeKTheoryOperations` §2.4 with
the identification of the transfer of a unit class with the class of its norm
(Weibel, *The K-book*, III, Corollary 1.7.1, p. 8, and Exercise 5.6, p. 46; the
order of the slots follows `K2SymbolsBrauer` §6.9). Coefficient rationalization
does not replace the integral transfer theorem.

**Checks.**

- Raising the exponent of a prime already dividing the same index has identity
  factor: `M′ = pM` with `p | M` and `N′ = N`.
- `(M,N) = (2,3)` and `(M′,N′) = (6,9)` have equal combined prime sets, but the
  first index has acquired the prime 3; the theorem does not apply, and 1.2's
  ramified branch gives `1 − T′(3)⟨1/3,1⟩*` instead of the identity.
- The identity level map acts as the identity on K₂, including on the zero
  symbol.
- For `ℚ → ℚ(i)` and `s = 2 + i` the projection formula uses `N(s) = 5`; the trace
  4 would give a different symbol, and for `s = 1 + i` norm and trace agree, so this
  case does not distinguish them.

*Needs:* Layer 0; `PadicFamilies` §4.0.1 (symbols, transfers);
`SchemeKTheoryOperations` §§2.2–2.4; `K2SymbolsBrauer` §6.9; `ModularCurvesPartII`
§§3.15, 5.15–5.16.

### 1.2 Auxiliary-prime Euler operators

Let ℓ be a prime with `ℓ ∤ M`, and assume c prime to `6Mℓ`, d prime to `6Nℓ`.
Prove `k2AuxiliaryEulerFactor`: the transfer along the level map
`Y(Mℓ, Nℓ) → Y(M, N)`, which raises both indices by ℓ, sends `c,d-z_(Mℓ,Nℓ)` to the
following operator applied to `c,d-z_(M,N)`,

```text
ℓ ∤ N:  1 − T′(ℓ)⟨1/ℓ,1⟩* + ℓ⟨1/ℓ,1/ℓ⟩*,
ℓ | N:  1 − T′(ℓ)⟨1/ℓ,1⟩*,
```

with the dual Hecke and diamond actions on K₂ described above (Kato
Proposition 2.4, p. 126; proof 2.12–2.13, pp. 131–133). The second branch is part of the
statement: ℓ may divide N, and `ℓ ∤ MN` is not assumed. The quadratic coefficient
is ℓ and its diamond changes both indices. The proof partitions the
torsion-section fibers and applies the projection formula slot by slot, using the
one-coordinate product of 0.4 for the Hecke term; the common scalar
correspondence gives the last term, and its fiber is absent in the ramified
branch. The Chern moment of `PadicFamilies` §4.0.1 changes the powers of ℓ to
`ℓ^(−r)` and `ℓ^(k−1−2r)`; applying that twist at the K₂ stage gives the wrong
equation.

**Checks.**

- The ramified branch `ℓ | N` has no quadratic term.
- At `k = 2, r = 1` the K₂ coefficient ℓ becomes `ℓ^(−1)` after the moment, so
  the K₂ and cohomological factors are different polynomials.
- The identities concern the particular elements under actual transfers; two
  unrelated K₂ classes do not satisfy them.

*Needs:* 1.1; 0.4; `ModularCurvesPartII` §§9.1–9.2; `SchemeKTheoryOperations`
§§2.2–2.4; `PadicFamilies` §4.0.1.

### Examples

A prime-set-preserving level raise has identity transfer factor; a new prime in
one index has the operator of 1.2. The K₂ quadratic coefficient ℓ is not the
cohomological coefficient `ℓ^(k−1−2r)`.

### Dependencies

Layer 0; `PadicFamilies` §4.0.1; `SchemeKTheoryOperations` §§2.2–2.4;
`K2SymbolsBrauer` §§6.4, 6.7–6.9; `ModularCurvesPartII` §§3.15, 5.15–5.16, 9.1–9.2.

## Layer 2: the Euler system of a newform and full-level classes

### 2.1 The conductor Euler-system adapter

Fix the eigenform quotient, a stable lattice `T = V_O(f)(k−r)`, a critical slot j,
auxiliary c, d and an admitted modular-symbol label ξ (a symbol `a(A)` with
`(c,6pA) = (d,6pN) = 1`, or an element of `SL₂(ℤ)` with `(cd,6pN) = 1`). Let Σ
contain p, the primes of `cdAN` and the coefficient-ramified primes. The conductor
domain consists of the `m ≥ 1` with `prime(m) ∩ Σ = {p}`. Define
`katoEulerAdapter` as the member of the module of Euler systems of
`EulerSystemsAndKolyvaginSystems` §2.2 whose class at `ℚ(ζ_m)` is the projection
to the f-quotient of the class `modularZeta` of `PadicFamilies` §4.0.1 at the level
and label of Kato's Example 13.3, followed by the coefficient projection and the
Frobenius/Tate convention transport of `EulerSystemsAndKolyvaginSystems` §2.1
(Kato 8.9, p. 185, and Proposition 8.12, p. 186; §13.1 and Example 13.3, pp. 224–225). No second Euler-system
carrier is introduced.

The API is `katoEulerAdapter_component`, `katoEulerPolynomial`,
`katoEulerAdapter_norm` and `katoEulerAdapter_ext`. For the arithmetic Frobenius
on T,

```text
P_ℓ(t) = det(1 − Fr_ℓ t | T)
       = 1 − conj(a_ℓ) ℓ^(1−r) t + conj(ε(ℓ)) ℓ^(k+1−2r) t²,
```

and evaluation at `t = ℓ^(−1)σ_ℓ^(−1)` gives
`1 − conj(a_ℓ)ℓ^(−r)σ_ℓ^(−1) + conj(ε(ℓ))ℓ^(k−1−2r)σ_ℓ^(−2)`. The definition
`katoEulerPolynomial` names this evaluated polynomial in a variable X standing for
`σ_ℓ^(−1)`, and `katoEulerPolynomial_eval_zero` records its constant term one. New unramified primes have the evaluated factor, repeated conductor
primes the identity factor; this is `modularZeta_norm` and `modularZeta_trace`
after projection. The conversion to the supplier's polynomial convention
`det(1 − N(q)^(−1)Fr_q x | T)` of §2.1 there is by its explicit variable transport;
equality of dimensions of representations is insufficient. Extensionality of
§2.2 there identifies systems with equal conductor components.

**Checks.**

- `k = 2, r = 1` gives coefficients `−conj(a_ℓ)/ℓ` and `conj(ε(ℓ))/ℓ`; for
  `ℓ = 3, a = 2, ε = 1` the polynomial is `1 − (2/3)X + (1/3)X²`.
- A repeated conductor prime has identity factor; a rule inserting the quadratic
  factor at every conductor raise fails already for a repeated p-power.
- Evaluation at `X = 0` is one for every coefficient specialization, so the constant term is
  never a zero factor; `k = 2, r = 1, ℓ = 3, a_ℓ = 0, ε = 1` gives `1 + (1/3)X²`.

*Needs:* `PadicFamilies` §4.0.1; `EulerSystemsAndKolyvaginSystems` §§2.1–2.2,
2.4; `AutomorphicGaloisRepresentations` §§1.5–1.6 (newform quotient,
lattices); `SelmerIwasawaCohomology` §3.5 (the classes are unramified outside p
in the limit) and §3.15.

### 2.2 Literal duals and the Hecke/twist dictionary

Let `N ≥ 3`, `k ≥ 2` and `ℓ ∤ Np`. Prove `heckeDualTwistDictionary` over rational
coefficients, or a coefficient ring in which `(k−2)!` is a unit. Transport
`V_k ≃ V_k^*(2−k)` by the normalized symmetric pairing. For the full-level operators
fix

```text
T_ℓ = T(ℓ) diag(ℓ,1)* = T*(ℓ) diag(1,ℓ)*,
S_ℓ = ℓ^(k−2) diag(ℓ,ℓ)*,
T′_ℓ = ℓ^(k−2) T_ℓ S_ℓ^(−1),
S′_ℓ = ℓ^(2(k−2)) S_ℓ^(−1).
```

The `Γ₁` literal-dual quotient `V′(f)` has `T′` eigenvalue `a_ℓ` and `S′` eigenvalue
`ℓ^(k−2)ε(ℓ)`, and its rational transport is `V′(f)(1−k) ≃ V(f*)` (Nakamura
§3.1.2, pp. 205–206, and Appendix A, pp. 265–269; the restricted Fricke pairing of
`AutomorphicGaloisRepresentations` §1.5). The `Γ₁` quotient is the rank-two
realization; a full-level f-eigenquotient can retain automorphic multiplicity and
is not identified with it by notation, so Appendix A's comparison uses `Y₁(N_f)`.

Integrally use `Sym^(k−2)(ℤ_p²)^*` literally. It corresponds to a divided-power
lattice and cannot be replaced by `Sym^(k−2)(T_pE)` without the factorial
condition. At `p = 2, k = 4` an equivariant pairing on ordinary `Sym²` with basis
`x², xy, y²` has antidiagonal outer entries `−2` times its middle entry and
determinant `−4b³`; it is never perfect over `ℤ₂`.

**Checks.**

- The matrix with antidiagonal entries `−2, 1, −2` has determinant `−4`, a nonunit
  in `ℤ₂`: the integral statement keeps the literal dual.
- With the prefactor `ℓ^(2(k−2))` of `S′_ℓ` replaced by `ℓ^(k−2)`, the `S′` eigenvalue of `V′(f)`
  would be `ε(ℓ)` instead of `ℓ^(k−2)ε(ℓ)`; at `k = 2` the two agree, at `k = 4`
  they differ by `ℓ²`.
- `V′(f)(1−k) ≃ V(f*)` is between rank-two `Γ₁` realizations. For a level-one
  newform viewed on `Y(3)`, the f-isotypic part of the full-level cohomology has
  rank larger than two, because the form occurs with multiplicity; it is not
  `V′(f)`.

*Needs:* `PadicFamilies` §4.0.1 (Hecke equivariance of the moment);
`ModularCurvesPartII` §§9.1–9.2, 14.1, 14.8; `AutomorphicGaloisRepresentations`
§§1.2, 1.5.

### 2.3 Full-level Hecke-linear zeta classes

Put `Σ = prime(Np)`, let `n ≥ 1` be prime to Np and c ≥ 2 prime to 6Nnp. Define
`fullLevelZeta` as the `ℤ_p`-linear map from `Sym^(k−2)(ℤ_p²)^*` to the Iwasawa
cohomology over `ℤ[1/Σn, ζ_n]` with coefficients `H¹(Y(N), V^*_(k/ℤ_p))(2)`, whose
value at v is the moment of the Chern images of the `c,c` K₂ classes at all
p-levels, transported by the integral map of
`CompletedCohomologyAndLocalGlobalCompatibility` §2.6 (Nakamura §§3.1.3–3.1.4,
pp. 207–214; Lemma 2.10, pp. 200–202). It is Hecke linear before any f-quotient.

The API is `fullLevelZeta_moment`, `fullLevelZeta_hecke`,
`fullLevelZeta_corestriction` and `fullLevelZeta_ext`. For `ℓ ∉ Σ`, corestriction
has identity factor when ℓ already divides n, and for a new ℓ it has
`1 − T′_ℓ σ_ℓ^(−1) + ℓ S′_ℓ σ_ℓ^(−2)`. Its proof uses the K₂ relations of 1.1–1.2,
the Chern and transfer compatibilities of `PadicFamilies` §4.0.1 and the
compatibility of the moment map with traces in §2.6 there. Extensionality is
equality on every literal-dual input. The definition `fullLevelEulerOperator`
names the displayed operator `1 − T′σ + ℓ S′σ²` on a module with commuting
endomorphisms.

**Checks.**

- Zero literal-dual input gives zero, and `v + w` gives the sum of the values;
  this excludes a constant shift.
- With `T′`, `S′` and `σ` all the identity and `ℓ = 3`, the operator is
  multiplication by three; dropping the factor ℓ on `S′` gives multiplication by
  one.
- With `ℓ = 3` and `σ = 0` the operator is the identity, which tests that both
  nonconstant terms carry σ.
- Evaluating the literal dual of ℚ at one and applying the identity Chern map sends the
  identity functional to one, which rejects a constant-zero moment.

*Needs:* 1.1–1.2, 2.2; `PadicFamilies` §4.0.1;
`CompletedCohomologyAndLocalGlobalCompatibility` §2.6;
`ModularCurvesPartII` §§9.1–9.2, 14.1; `SelmerIwasawaCohomology` §§3.1, 3.5.

### Examples

At weight two the eigenform conductor factor has the same inverse power of ℓ in
both nonconstant coefficients. At full level the unspecialized quadratic factor
has the coefficient `ℓS′`. These are two forms of the same transfer after the 2.2
dictionary, not interchangeable polynomials.

### Dependencies

Layer 1; `PadicFamilies` §4.0.1; `EulerSystemsAndKolyvaginSystems` §§2.1–2.2,
2.4; `AutomorphicGaloisRepresentations` §§1.2, 1.5–1.6;
`CompletedCohomologyAndLocalGlobalCompatibility` §2.6; `ModularCurvesPartII`
§§9.1–9.2, 14.1, 14.8; `SelmerIwasawaCohomology` §§3.1, 3.5, 3.15.

## Layer 3: modular filtration, Eisenstein series, periods and the real regulator

### 3.1 The modular filtration

Let `D = D_dR(H¹(Y, Sym^(k−2)H_p))` for an admitted open modular curve Y with
smooth compactification X and cusp boundary. For `k ≥ 2` its Hodge filtration is

```text
F^iD = D                    if i ≤ 0,
F^iD = M_k(X) ⊗ ℚ_p         if 1 ≤ i ≤ k−1,
F^iD = 0                    if i ≥ k.
```

Define `modularFiltration k M i` with exactly these three branches, for a
supplied subspace `M` of a vector space D, and prove `modularFiltration_identify`:
for the de Rham realization of the open-curve local system, with M the image of
`M_k(X)` under the logarithmic comparison (including the Eisenstein part), the
Hodge filtration is `modularFiltration k M` (Kato 9.2–9.4, pp. 186–188; the
logarithmic description `M_k(X) = Γ(X, coLie^(⊗(k−2)) ⊗ Ω¹(log cusps))` is Kato
(3.1.2), pp. 134–135). In interior critical positions the step is the same nonzero
space although the associated graded quotient is zero. The condition `k ≥ 2`
prevents conflicting endpoint branches.

The modular dual exponential of `PadicFamilies` §4.0.2 takes values in `F⁰` of
the twist by i, which is `F^iD`. For `1 ≤ i ≤ k−1` define `modularDualExp` as that
map with its range restricted to `M_k(X) ⊗ ℚ_p` by `modularFiltration_identify`;
for the eigenform quotient the range is `S(f) ⊗_F E` with the cyclotomic field
factor. The API is `modularFiltration_nonpositive`, `modularFiltration_critical`,
`modularFiltration_endpoint`, `modularFiltration_antitone`, `modularFiltration_identify`,
`modularDualExp` and
`modularDualExp_coe`; the last recovers the supplied value after forgetting the
range. The proof of `modularFiltration_identify` is the comparison of Kato §11.3–11.4
for the Kuga–Sato variety (Tsuji's semistable comparison and Scholl's projector),
specialized to perfect residue field; the open-curve local systems are those of
`ModularCurvesPartII` §§14.1–14.4 and the potentially semistable comparison is
`AutomorphicGaloisRepresentations` §4.5.

**Checks.**

- At `k = 4`, `F¹ = F² = M_k(X) ⊗ ℚ_p` and `gr¹ = 0`; replacing the target by `gr¹`
  erases the modular form.
- At `k = 4, i = 4` the step is zero; a filtration continuing the modular-form step
  at `i = k` fails.
- At `k = 2, i = 1` the modular-form step remains: the critical range is not
  empty.
- Forgetting the range of `modularDualExp` returns the supplied value, also on a nonzero
  input; the range restriction does not change the map.

*Needs:* `PadicFamilies` §4.0.2; `ModularCurvesPartII` §§6.1, 14.1–14.4;
`AutomorphicGaloisRepresentations` §§1.5, 4.5; `PadicHodgeRegulators` §1.4.

### 3.2 Kato's Eisenstein series

For `N ≥ 3`, `(α,β) ∈ ((1/N)ℤ/ℤ)²` and `k ≥ 1`, define `katoEisensteinE k α β` and
`katoEisensteinF k α β` in `M_k(X(N))`: `E^(k)_(α,β)` for `k ≠ 2`, the weight-two
form `Ẽ^(2)_(α,β)` (`E^(2)_(α,β) − E^(2)_(0,0)` in analytic terms, the individual
`E^(2)` not being holomorphic), and `F^(k)_(α,β)` for `k ≥ 1`, with
`(α,β) ≠ (0,0)` when `k = 2` (Kato 3.2–3.6, pp. 135–138). Algebraically
`c-E^(k)_(α,β)` is the pullback along the torsion section of
`D^(k−1) dlog(thetaUnit c)`, `E^(k)` is obtained by the c-independent
normalization, `Ẽ^(2)` from the Weierstrass section, and
`F^(k)_(a/N,b/N) = N^(−k) ∑_(x,y ∈ ℤ/N) E^(k)_(x/N,y/N) ζ_N^(bx−ay)` for `k ≠ 2`, with
`Ẽ^(2)` and the factor `N^(−2)` for `k = 2`; inversely
`E^(k)_(a/N,b/N) = N^(k−2) ∑_(x,y ∈ ℤ/N) F^(k)_(x/N,y/N) ζ_N^(bx−ay)` for `k ≠ 2`
(3.6, p. 138). Analytically, for `k ≥ 3`,

```text
E^(k)_(α,β)(τ) = (−1)^k (k−1)! (2πi)^(−k) ∑′_(m,n) (ατ + β + mτ + n)^(−k)
```

with a lift `(α,β)` to `ℚ²`, and for `k ≤ 2` the value at `s = 0` of Hecke's
analytic extension in s (Kato 3.8, pp. 138–140).

The API is `katoEisenstein_gl2` (for `σ ∈ GL₂(ℤ/N)`, `σ^* E^(k)_(α,β) = E^(k)_((α,β)σ)`
and likewise for `F`; Kato Lemma 3.7(1), p. 138), `katoEisenstein_distribution`
(for `a ≠ 0`, `a^k E^(k)_(α,β) = ∑ E^(k)_(α′,β′)` over `aα′ = α, aβ′ = β`, and
`a^(2−k) F^(k)_(α,β) = ∑ F^(k)_(α′,β′)`; Lemma 3.7(2)), `katoEisenstein_qExpansion`
(the q-expansions by partial zeta values `ζ(a,s) = ∑_(n>0, n ≡ a) n^(−s)`; Prop. 3.10,
pp. 140–141), `katoEisenstein_smoothing`
(`c-E^(k)_(α,β) = c²E^(k)_(α,β) − c^k E^(k)_(cα,cβ)`, which in weight two holds with `Ẽ^(2)`
in place of `E^(2)`, and `c-F^(k)_(α,β) = c²F^(k)_(α,β) − c^(2−k) F^(k)_(cα,cβ)`; 3.2–3.5,
pp. 135–137, and the definitions after 4.2, p. 143),
`katoEisenstein_weightOne` (`E^(1)_(α,β) = F^(1)_(α,β)`; Prop. 3.11(1), p. 142),
`siegelUnit_dlog` (`dlog g_(α,β) = −F^(2)_(α,β)` in `Γ(X(N), Ω¹(log cusps))` for
`(α,β) ≠ (0,0)`; Prop. 3.11(2), p. 142) and `katoEisenstein_mathlib` (for `k ≥ 3`,
`E^(k)_(a/N,b/N)` is `(−1)^k (k−1)!(2πi)^(−k)` times the full lattice sum over the
class of `(a,b)` modulo N; this full sum is a finite combination of Mathlib's
coprime-class `EisensteinSeries.eisensteinSeries_MF` by Möbius inversion over the
gcd, as in the level-`Γ(N)` translation of `ModularForms` Layer 0).

**Checks.**

- `E^(4)_(0,0) = E₄/120`, with constant term `ζ(−3) = 1/120`; without the factor
  `(−1)^k (k−1)!(2πi)^(−k)` the series would have constant term `2ζ(4)`.
- `dlog g_(α,β) = −F^(2)_(α,β)`; the sign is fixed by Prop. 3.11(2), and a plus sign
  contradicts the product formula of 0.3, whose logarithmic derivative has
  constant term `B₂(a/N)/2` times `dq/q`.
- `E^(1)_(α,β) = F^(1)_(α,β)`, while for `k = 3` the two series differ: the Fourier
  transform of 3.6 is not the identity.
- The forward transform carries `N^(−k)` and the inverse `N^(k−2)`; the two powers agree
  only at `k = 1`. Composing the forward formula with the inverse must return `E^(k)`:
  with the pairing `bx − ay` the transform applied twice on `(ℤ/N)²` is multiplication
  by `N²`, so `N^(k−2) · N^(−k) · N² = 1`. With `N^(k−2)` in the forward formula the
  composite is `N^(2k−2)`, already `N⁴` at `k = 3`.
- `F^(2)_(0,0)` is excluded, and `E^(2)_(α,β)` alone is not a holomorphic form.
- At an index fixed by multiplication by c, `c-F^(2) = (c² − 1)F^(2)`: 24 at `c = 5` and 48 at
  `c = 7`, matching the smoothing of the Siegel units in 0.1 through `dlog g = −F^(2)`.

*Needs:* `PadicFamilies` §4.0.1 (theta unit); 0.1, 0.3; `ModularCurvesPartII`
§§3.14, 6.1; `ModularForms` Layer 0; Mathlib `EisensteinSeries.eisensteinSeries_MF`,
`UpperHalfPlane`.

### 3.3 Eisenstein zeta forms and Betti periods

Use the one-dimensional Hecke quotient `S(f)` of `M_k(X₁(N))` and the
two-dimensional rational quotient `V_F(f)` of `H¹(Y₁(N), Sym^(k−2)H)`; each rational
complex-conjugation eigenspace has dimension one. Define `periodMap`
`per_f : S(f) → V_ℂ(f)` by integration and Poincaré duality, with the supplied
Hecke quotient; it is not an arbitrary isomorphism between spaces of dimension one
and two (Kato 6.3–6.5, pp. 161–163). The period pairing is that of
`ModularSymbolsPadicLFunctions` §0.7.

For `M, N ≥ 1`, `M + N ≥ 5`, critical `1 ≤ r, r′ ≤ k−1` with one of them `k − 1`,
define `archimedeanEisensteinZeta` (Kato's zeta modular form `z_(M,N)(k,r,r′)`,
4.2, p. 142) by

```text
r′ = k−1:  (−1)^r (r−1)!^(−1) M^(k−r−2) N^(−r) · F^(k−r)_(1/M,0) E^(r)_(0,1/N),
r = k−1:   (−1)^(r′) (k−2)!^(−1) M^(r′−k) N^(−r′) · E^(k−r′)_(1/M,0) E^(r′)_(0,1/N),
```

with the series of 3.2. The unsmoothed definition excludes
`(r,r′) = (2,k−1), (k−1,2), (k−1,k−2)` (4.2.3). When `r = r′ = k−1` the two
formulas agree by `E^(1) = F^(1)`. The c,d-smoothed form `c,d-z_(M,N)(k,r,r′)` puts
`c-F`, `c-E`, `d-E` in the same formulas, under `(c,M) = (d,N) = 1` and the range
(4.2.1)–(4.2.2), with `M ≥ 2` if `(r,r′) = (k−2,k−1)` and without the further unsmoothed
exclusions; in weight two it uses the smoothed regularized series `c-Ẽ^(2)` of 3.2, not an
unsmoothed holomorphic `E^(2)` (Kato 4.2–4.2.4, pp. 142–143). All factorial denominators are
nonzero in characteristic zero, and negative powers of M and N are of positive integers.
Trace and pull back these forms as in Kato 5.2, pp. 153–154, to obtain
`z_m(f,r,r′,ξ,S)`.

Prove `archimedeanCriticalValues`: for `ξ ∈ SL₂(ℤ)` or `ξ = a(A)`, `m ≥ 1`,
`prime(mN) ⊂ S` and a character `χ : (ℤ/m)^× → ℂ^×`,

```text
∑_b χ(b) per_f(σ_b z_m(f,r,r′,ξ,S))^± = L_S(f*,χ,r) · (2πi)^(k−r−1) · δ(f,r′,ξ)^±,
± = (−1)^(k−r−1) χ(−1)
```

(Kato Theorem 6.6(1), p. 163), with the L-function of `ModularForms` Layers 7 and 9; the
unsmoothed formula uses the restrictions of Kato 5.2.3. For the c,d version under
(5.2.1)–(5.2.2), with `c ≡ d ≡ 1 mod N` in the `SL₂(ℤ)` case, replace `δ(f,r′,ξ)` by
`(c² − c^u conj(χ(c)))(d² − d^v conj(χ(d))) δ(f,r′,ξ)` for `ξ ∈ SL₂(ℤ)`, where
`(u,v) = (r+2−k, r)` if `r′ = k−1` and `(u,v) = (k−r′, r′)` if `r = k−1` (Kato 4.2.4,
p. 143; these are the smoothing exponents of 3.2), and for `ξ = a(A)` by the four-term
vector of Theorem 6.6(1) with the labels `a(A)`, `ac(A)`, `"a/d"(A)` and the `ε(d)`
factors; the two-factor expression of the `SL₂(ℤ)` case does not apply to `a(A)`. The
period API keeps the Hecke quotient, the complex-conjugation projection and the comparison
with the period lines of `ModularSymbolsPadicLFunctions` §1.1 (made explicit in 6.3).

**Checks.**

- For `k = 2, r = 1`, `χ(−1) = 1` selects plus and `χ(−1) = −1` minus; at
  `k = 4, r = 2` an even character selects minus. `criticalSign` encodes this, and
  forgetting the weight factor selects plus at `k = 4, r = 2`.
- A zero modular form has zero period, and the period map is additive and
  homogeneous; an affine shift of the integration map fails.
- The f-differential has a nonzero period in its Hecke realization, which rejects a zero
  period map.
- At `r = r′ = k−1` the two Eisenstein products agree, with matching powers and
  factorials; the excluded unsmoothed pairs are rejected even where the smoothed
  product is defined.
- For `r′ = k − 1` the exponents are `(u,v) = (r+2−k, r)`; at `k = 2, r = 1` they are
  `(1,1)`, and for the trivial character with `c = 5, d = 7` the factors are `25 − 5 = 20` and
  `49 − 7 = 42`; the exponents of 0.1, which would give 24 and 48, do not apply here.

*Needs:* 3.2; `PadicFamilies` §4.0.1; `ModularForms` Layers 7 and 9;
`ModularSymbolsPadicLFunctions` §§0.7, 1.1; `AutomorphicGaloisRepresentations`
§§1.2, 1.5.

### 3.4 The operator-valued zeta function and the real regulator

For `M, N ≥ 2`, `M + N ≥ 5`, define `operatorZeta M N s` on `H¹(Y(M,N)(ℂ), ℂ)` by

```text
Z_(M,N)(s) = ∑_((n,M)=1) T′(n) ⟨1/n, 1⟩* n^(−s),
```

with the dual Hecke operators of `ModularCurvesPartII` §§9.1–9.2 transposed by
Poincaré duality (Kato 2.5 and 2.9, pp. 127, 129). The API is
`operatorZeta_converges` (absolute convergence for `Re s > 2`),
`operatorZeta_eulerProduct` (Euler factor
`(1 − T′(ℓ)⟨1/ℓ,1⟩*ℓ^(−s) + ⟨1/ℓ,1/ℓ⟩*ℓ^(1−2s))^(−1)` for `ℓ ∤ MN`,
`(1 − T′(ℓ)⟨1/ℓ,1⟩*ℓ^(−s))^(−1)` for `ℓ ∤ M, ℓ | N`, and 1 for `ℓ | M`),
`operatorZeta_meromorphic` (meromorphic extension to ℂ, holomorphic away from
`s = 2`) and `operatorZeta_zero` (`Z_(M,N)(0) = 0`). Meromorphy follows by
decomposing the cohomology into Hecke eigencomponents: cuspidal components give
newform L-functions (`ModularForms` Layer 7) and Eisenstein components products of
Dirichlet L-functions (Mathlib `DirichletCharacter.LFunction`).

For a smooth complex curve Y and units f, g on an open U, put
`η_(f,g) = log|f| · dlog(g|g|^(−1)) − log|g| · dlog(f|f|^(−1))`, a closed form whose
class lies in `H¹(U(ℂ), ℝ·i)` (Kato 2.10, p. 130). Define `realRegulatorUnits f g`
as that class. On `K₂` of the function field it factors through the symbol, and the
tame symbol sequence places the regulator of `K₂(Y)` in `H¹(Y(ℂ), ℝ·i)` (2.10); for
the element `z_(M,N)`, a symbol of two units on Y, it is the class of
`η_(g_(1/M,0), g_(0,1/N))` directly. For smooth projective curves it agrees with the
Deligne regulator of `MotivicEtaleKTheory` §12.2.

Let `δ_(M,N) ∈ H¹(Y(M,N)(ℂ), ℤ)` be the image under
`H¹(Y(ℂ),ℤ) ≅ H₁(X(ℂ), {cusps}, ℤ)` of the class of the path `y ↦ ν(iy)`,
`0 < y < ∞`, from the cusp 0 to the cusp ∞ (Kato 2.7, pp. 127–128), and
`δ^± = ½(δ ± ι^*δ)` with ι complex conjugation. Prove
`beilinsonArchimedeanRegulator`: if `prime(M) ⊂ prime(N)` then

```text
reg_(M,N)(z_(M,N)) = lim_(s→0) s^(−1) · Z_(M,N)(s) · 2πi · (δ_(M,N))^−
```

(Kato Theorem 2.6, p. 127; proof §7, comparing Eisenstein and Poincaré pairings in
§§7.7 and 7.12 and descending through §§7.18–7.20). The endpoints of the relative
path are part of the data, and a closed cycle on the open curve is a different class. The
archimedean formula is distinct from the p-adic dual-exponential formula at `r = 1`. The minus
projection is rational: it has a factor
one half and gives no integral dyadic projector.

On the f-quotient in weight two with `± = −χ(−1)`,
`∑_b χ(b) reg_f(σ_b z_(1,N,m)(ξ,S)) = lim_(s→0) s^(−1) L_S(f*,χ,s) · 2πi · δ(f,1,ξ)^±`
(Kato Theorem 6.6(2), p. 163). The divided limit is essential: `Z(0)` and
`L_S(f*,χ,0)` vanish.

**Checks.**

- `Z_(M,N)(0) = 0`, so replacing the limit `s^(−1)Z(s)` by `Z(0)` gives zero and
  loses the regulator.
- `η_(f,g) = −η_(g,f)`: the regulator is alternating, and `η_(f,f) = 0`.
- On `Y = 𝔾_m` over ℂ with coordinate z, `η_(2,z) = log 2 · i dθ`, whose integral
  over the unit circle is `2πi log 2`; a regulator that drops the `log|f|` term
  gives zero here.
- The factor 2πi and the minus projection are part of the formula; only `δ^−` enters,
  and replacing it by δ or by `δ^+` changes the value.

*Needs:* Layer 1; 3.3; `PadicFamilies` §4.0.1; `ModularCurvesPartII` §§6.1,
9.1–9.2, 14.12; `ModularForms` Layer 7; Mathlib `DirichletCharacter.LFunction`;
`MotivicEtaleKTheory` §12.2 for the comparison with the Deligne regulator.

### Examples

The `k = 4` filtration has `F¹ = F²` with `gr¹ = 0`, exhibiting why reciprocity
lands in a step. `E^(4)_(0,0) = E₄/120` fixes the normalization of Kato's series.
The archimedean derivative formula and the critical p-adic formulas have different
evaluation points and normalizations although they come from the same K₂ symbol.

### Dependencies

Layers 0–1; `PadicFamilies` §§4.0.1–4.0.2; `ModularCurvesPartII` §§3.14, 6.1,
9.1–9.2, 14.1–14.4, 14.12; `ModularForms` Layers 0, 7 and 9;
`ModularSymbolsPadicLFunctions` §§0.7, 1.1; `AutomorphicGaloisRepresentations`
§§1.2, 1.5, 4.5; `PadicHodgeRegulators` §1.4; `MotivicEtaleKTheory` §12.2.

## Layer 4: image, nonvanishing and Iwasawa inputs before the canonical map

### 4.1 Admissible coefficient places and the CM boundary

Let f be a non-CM newform of weight `k ≥ 2`. Let Γ be its group of inner twists
`(γ, χ_γ)`, `F⁰ = F^Γ`, and `H = ⋂ ker χ_γ`, an open subgroup of `G_ℚ`. By
Momose and Ribet there is a central simple algebra B of degree two over `F⁰`,
split by F and unramified outside `2N·disc(F/ℚ)·∞`, with `ρ_f(H) ⊂ B(F⁰ ⊗ ℚ̂)^×`;
the image of H is open in the group of units of `B ⊗ ℚ̂` whose reduced norm lies in
`ℚ̂^×`, and for all but finitely many p it is the full group
`{x ∈ GL₂(O_(F⁰) ⊗ ℤ_p) : det x ∈ ℤ_p^(×(k−1))}` (Loeffler, Theorem 2.2.2 and
Theorem 2.3.1, arXiv:1411.1789, pp. 5–6, after Momose 1981, Ribet 1985 §§3–4 and
Ghate–González-Jiménez–Quer Corollary 4.7).

Prove `admissible_of_split`: if λ lies above a place `λ₀` of `F⁰` at which B splits,
then for a suitable stable lattice and basis the image of `G_(ℚ(μ_(p^∞)))` contains
an open subgroup of `SL₂(ℤ_p)`, hence an element `[[1,x],[0,1]]` with `x ≠ 0`, whose
fixed space is one-dimensional; so `(f,λ)` is admissible. The proof projects the
open image of `H ∩ ker(det ρ)` to the `λ₀`-factor `SL₁(B_(λ₀)) = SL₂(F⁰_(λ₀))` and
intersects with `SL₂(ℤ_p)`; elements of `H` with determinant one lie, up to finite
index, in `G_(ℚ(μ_(p^∞)))`. Prove `integralImage_almostAll`: for all but finitely many
λ the image of `G_(ℚ(μ_(p^∞)))` contains `SL₂(ℤ_p)` in some basis of every stable
lattice (Kato's condition (12.5.2); Kato 12.8.1, p. 223, from the full-group clause
above, and the remark after 12.8.1 that the stable lattices are then homothetic).
Prove `irreducible_cyclotomic`: for every λ, `V_λ(f)` is irreducible over
`G_(ℚ(μ_(p^∞)))`, because the identity component of the Zariski closure of the image
of any open subgroup contains `SL₂` (`AutomorphicGaloisRepresentations` §7.5).

At a place `λ₀` where `B_(λ₀)` is a division algebra, `ρ(H) ⊂ B_(λ₀)^×` and for
`d ∈ B_(λ₀)` with `d ≠ 1` the element `d − 1` is invertible: no element of `ρ(H)`
other than 1 fixes a nonzero vector. Kato's 12.8.2, p. 223, asserts an open
subgroup of `SL₂(ℤ_p)` in the image at every λ; at these places that subgroup would
contain nontrivial unipotents of `ρ(H)`, so the assertion is not available, and
admissibility there is a hypothesis of the statements that need it. Passing to a power in
the finite-index inner-twist kernel does not remove the obstruction, and Zariski density of
the image is not Kato's hypothesis 13.4(v). Admissibility holds at
every λ when Γ is trivial (then B is split, since `B ⊂ M₂(F)` has dimension four
over `F⁰ = F`), and for elliptic curves over ℚ.

Define `upperUnipotent x` as the action `(v₀,v₁) ↦ (v₀ + x v₁, v₁)` on column
vectors and `HasOneDimFixedSpace σ` as `finrank (ker (σ − 1)) = 1` for an
endomorphism of a two-dimensional space. Prove `upperUnipotent_hasOneDimFixedSpace_iff`: over
a field, `upperUnipotent x` has one-dimensional fixed space if and only if `x ≠ 0`;
`diag_hasOneDimFixedSpace`: `diag(1, ζ)` with `ζ ≠ 1` has one-dimensional fixed space; and
`ker_sub_one_eq_bot_of_division`: for an algebra map `ι` from a division algebra to
endomorphisms and `d ≠ 1`, `ker(ι d − 1) = 0`. For a
stable integral lattice the integral statement needs x a unit: then
`T/(τ−1)T` is free of rank one over O (Kato 13.4(3); Rubin Proposition III.5.8, p. 50 of
the draft).

Openness alone may give only parameters x divisible by p, which do not give integral
freeness; the integral hypotheses keep their own Galois group of irreducibility and their
τ-quotient (4.3). For CM forms the image is the normalizer of a torus and contains no such
unipotent (Rubin's Remark III.5.10, p. 50 of the draft; Kato after Theorem 13.4, p. 226);
their rational inputs are the elliptic-unit clauses of `PadicFamilies` §4.0.3, which follow
Kato §§15.12–15.17, pp. 263–265, including the contained-cyclotomic case of 15.14, p. 264.

**Checks.**

- `upperUnipotent 2` over ℚ sends `e₂` to `e₂ + 2e₁` and has fixed space the first
  coordinate line; over ℤ the cokernel of `τ − 1` is `ℤ/2 ⊕ ℤ`, not free, since
  `2a = 1` has no integer solution.
- `upperUnipotent 0` is the identity, with two-dimensional fixed space; `x ≠ 0` is
  needed.
- `diag(1, ζ)` with `ζ ≠ 1` also has one-dimensional fixed space: admissibility
  does not require a unipotent element.
- In a quaternion division algebra, `d − 1` is invertible for every `d ≠ 1`, so the
  fixed space of every nonidentity element is zero.

*Needs:* `AutomorphicGaloisRepresentations` §§1.5–1.6, 4.8, 7.5; Mathlib linear
algebra.

### 4.2 Nonvanishing of twisted critical values

Prove `analyticTwistNonvanishing`, the analytic inputs of Kato 13.5, pp. 226–227:
(1) `L(f,s)` has no zero on `Re(s) ≥ (k+1)/2` (Jacquet–Shalika, Invent. Math. 38
(1976)); for `Re(s) > (k+1)/2` this is absolute convergence of the Euler product,
using the purity of `AutomorphicGaloisRepresentations` §7.2, and only the line
`Re(s) = (k+1)/2` needs Jacquet–Shalika. (2) If k is even and S is a finite set of
primes, the set of characters χ of conductor supported in S with
`L_S(f,χ,k/2) = 0` is finite (Rohrlich, Math. Ann. 281 (1988)).

These give, for every sign and every character component, infinitely many finite-order
characters χ and a critical `r` with `L_({p})(f*,χ,r) ≠ 0`: for `k ≥ 3` use `r = k−1` with (1),
and for `k = 2` use (2) at `r = 1`. For `k ≥ 3` and χ ramified at p the value at `r = 1` is then
nonzero as well, by the functional equation of `ModularForms` Layer 7, which relates `L(f*,χ,1)`
to `L(f,χ^(−1),k−1)` through nonvanishing gamma factors and root numbers. This is the analytic
half of Kato's Proposition 13.7; the conclusion that the geometric zeta submodule is non-torsion
is `PadicFamilies` §4.0.3, and its canonical form is 7.1. The trivial twist at weight two is not
asserted to be nonzero, and the total `LSeries` outside its half-plane of convergence does not
give these values.

**Checks.**

- At `k = 2` an elliptic curve of positive analytic rank has `L(E,1) = 0`; ramified
  twists still give nonzero values, so the trivial character is not used.
- At `k = 4`, `r = 3` lies in the half-plane of absolute convergence, and no
  analytic input beyond the Euler product is needed; at `k = 3`, `r = 2` is on the
  edge line.
- Rohrlich's set is finite but can be nonempty; the statement excludes finitely
  many characters, not all characters of small conductor.

*Needs:* `ModularForms` Layers 7 and 9; `AutomorphicGaloisRepresentations` §7.2.

### 4.2a The strict `H²` kernel

For a stable lattice T as in 4.3 and `Σ ⊇ {p, ∞}` containing the ramified primes, prove
`strictKernel_eq_dualSelmer`: `ker(H²_Iw(ℤ[1/Σ], T) → ⊕_(v∈Σ) H²_Iw(ℚ_v, T))` is the
Pontryagin dual of the strict Selmer group of `T^∨(1)` over `ℚ(ζ_(p^∞))` (classes in
`H¹(ℤ[1/Σ], ·)` with zero restriction at every place of Σ). With Kato's convention for
`H²(T)` over `ℤ[1/p]` (the étale sheaf `j_*T`, `SelmerIwasawaCohomology` §3.15) the same
argument identifies `H²(T)₀ = ker(H²(T) → H²_loc(T))` with the dual of the Selmer group
of `T^∨(1)` that is strict at p and unramified away from p. After the universal-norm
comparison of `SelmerIwasawaCohomology` §3.5 this differs from the module `X_∞` of
`EulerSystemsAndKolyvaginSystems` §8.3, whose conditions away from p are Rubin's finite
ones, by finite modules only: at `ℓ ≠ p` the quotient of the unramified classes by the
finite ones is a quotient of the finite group `W^(I_ℓ)/(W^(I_ℓ))_div`, and only finitely
many places of `ℚ_∞` lie over ℓ. Finite modules have length zero at every height-one
prime, which is all that 4.3 uses. Proof: the nine-term
Poitou–Tate sequence of `ArithmeticGaloisDuality` §R02.4.3 at each finite level,
passage to the corestriction limit (Tate's inverse-limit theorem, §R02.1.2) and the
Iwasawa Poitou–Tate sequence of `EulerSystemsAndKolyvaginSystems` §8.16.

**Checks.**

- For `T = ℤ_p(1)` and p odd, `H²_Iw(ℤ[1/p], ℤ_p(1))` is the limit of the p-parts of the
  class groups of `ℚ(ζ_(p^n))` (Kato 12.9, p. 223). There is one place above p and
  `Br(ℤ[ζ_(p^n), 1/p]) = 0`, so the map to the local `H²` is zero and the strict kernel is the
  whole class-group limit.
- By local duality `H²_Iw(ℚ_v, T)` is the Pontryagin dual of the invariants of `T^∨(1)` under
  `G_(ℚ_v(μ_(p^∞)))`, so the kernel is all of `H²_Iw` when those invariants vanish at every
  `v ∈ Σ`. Invariants under `G_(ℚ_v)` alone do not suffice: for p odd and `T = ℤ_p(2)`,
  `T^∨(1) = (ℚ_p/ℤ_p)(−1)` has no `G_(ℚ_p)`-invariants, but κ is trivial on
  `G_(ℚ_p(μ_(p^∞)))`, so `H²_Iw(ℚ_p, ℤ_p(2)) ≅ ℤ_p` is not zero.

*Needs:* `ArithmeticGaloisDuality` §§R02.1.2, R02.4.2–R02.4.3;
`EulerSystemsAndKolyvaginSystems` §§8.3, 8.16; `SelmerIwasawaCohomology` §§3.1, 3.5, 3.15.

### 4.3 Kato's hypotheses imply Rubin's, and the modular bound

Let `(f,λ)` be admissible with f non-CM, T a stable lattice of `V = V_λ(f)(k−r)`, and
`c` the Euler system of 2.1. Kato's Theorem 13.4 has five hypotheses: (i) the geometric
classes are nonzero at every height-zero prime (4.2 with `PadicFamilies` §4.0.3); (ii)
`rank T⁺ = rank T⁻ = 1` (oddness, `AutomorphicGaloisRepresentations` §1.5); (iii) purity of
Frobenius eigenvalues (§7.2 there; purity does not imply oddness); (iv) irreducibility of V over
`G_ℚ` (§4.8 there); (v) the element σ of 4.1. Prove `katoHypotheses_to_rubin`: for every character η
of the torsion subgroup Δ of `G_∞`, the twist `V ⊗ η^(−1)` satisfies `Hyp(ℚ_∞, V)` of
`EulerSystemsAndKolyvaginSystems` §8.2 over the cyclotomic `ℤ_p`-extension, and
`ℚ_∞/ℚ` satisfies `Hyp(ℚ_∞/ℚ)` of §8.6. Clause (i) of `Hyp(ℚ_∞, V)` uses the element of 4.1: it fixes
`μ_(p^∞)`, so it acts on all twists as on V, and `dim V/(σ−1)V = dim ker(σ−1) = 1`;
over `K = ℚ` the conditions on p-power roots of units and on `K(1)` follow from σ fixing `μ_(2p^∞)`
(for `K = ℚ` the units are `±1` and `K(1) = ℚ`). Clause (ii) of `Hyp(ℚ_∞, V)` is
`irreducible_cyclotomic`. If moreover p is odd, the residual representation is
irreducible over `G_ℚ`, and some `σ ∈ G_(ℚ(μ_(p^∞)))` has `T/(σ−1)T` free of rank one
(Kato 13.4(3)), then `Hyp(ℚ_∞, T)` holds: irreducibility over `G_ℚ` passes to
`G_(ℚ_∞)` because the pro-p group `Gal(ℚ_∞/ℚ)` permutes the `G_(ℚ_∞)`-stable lines, a
set of size one, two or `q + 1`, and an orbit of size prime to p has a fixed point.

Prove `modularEulerSystemBound`: with `Λ = O[[G_∞]]`, `Z` the Λ-span of
`(c_(ℚ(ζ_(p^n))))_n`, `J` the ideal generated by `h(Z)` for `h ∈ Hom_Λ(H¹(T), Λ)` and
`H²(T)₀ = ker(H²(T) → H²_loc(T))`, for every height-one prime 𝔭 of Λ not containing
p, `length_(Λ_𝔭) (H²(T)₀)_𝔭 ≤ length_(Λ_𝔭)(Λ_𝔭/J_𝔭)`, and under the integral
hypotheses above the same at every height-one prime (Kato Theorem 13.4(2)–(3),
p. 226; Rubin draft Chapter II §3, hypotheses p. 27 and Theorem 3.3, p. 28). Proof: twisting
by the characters η of Δ (§2.5 there), with Shapiro's lemma of `SelmerIwasawaCohomology`
§3.2 identifying the η-part over `ℚ(ζ_(p^∞))` with the cohomology of `T ⊗ η^(−1)` over
`ℚ_∞`, reduces to the components (for p odd integrally; at `p = 2` after localizing at
primes not containing p, where `|Δ| = 2` is invertible);
§§8.38 and 8.37 give `char(X_∞) | p^t ind_Λ(c)` and `char(X_∞) | ind_Λ(c)`, `ind_Λ(c)`
is J by definition (§8.7), and 4.2a identifies `X_∞` with `H²(T)₀` up to finite modules. The integral
hypothesis here is weaker than the `SL₂(ℤ_p)` image used in `PadicFamilies` §4.0.3:
a free rank-one `τ`-quotient and residual irreducibility over `G_ℚ`.

**Checks.**

- `upperUnipotent 1` gives a free rank-one cokernel over ℤ_p, while
  `upperUnipotent p` gives `ℤ/p ⊕ ℤ_p`; only the first verifies the integral
  hypothesis.
- For `p = 3`, a `G_(ℚ_∞)`-stable pair of lines permuted by a pro-3 group has each line
  fixed; for `p = 2` the swap of two lines is possible, which is why the integral
  statement needs p odd.
- The zero class gives `J = 0` and an empty bound; non-torsion of Z (4.2 with
  `PadicFamilies` §4.0.3) is needed for content.

*Needs:* 2.1, 4.1, 4.2a; `EulerSystemsAndKolyvaginSystems` §§2.5, 8.2, 8.6, 8.7,
8.37–8.38; `SelmerIwasawaCohomology` §3.2; `PadicFamilies` §4.0.3.

### 4.4 All-prime rational and lattice module structure

Prove `rationalIwasawaStructure` for admissible `(f,λ)`, any p and any stable
lattice T of `V_λ(f)`: `H²(T)` is Λ-torsion and `H¹(T)` is Λ-torsion-free; after
inverting p, `H²(V)` is `Λ_ℚ`-torsion and `H¹(V)` is `Λ_ℚ`-free of rank one; if
`p ≠ 2` and `T/λT` is irreducible, `H¹(T)` is Λ-free of rank one (Kato Theorem 12.4,
p. 221; Burungale–Tian arXiv v2 Theorem 2.3, p. 4). The rational clauses are those
of `PadicFamilies` §4.0.3 for admissible pairs, including CM forms (Kato §15.15, p. 265,
with the case 15.14, p. 264, of a CM field `K ⊂ ℚ(ζ_(p^∞))`: `K = ℚ(i)` at `p = 2`, and
`K = ℚ(√−p)` for `p ≡ 3 mod 4`). Kato states the
theorem for every λ; at an inadmissible λ its proof rests on 12.8.2 (see 4.1), and the
statement there is not claimed. Torsion-freeness
of `H¹(T)` follows because its Λ-torsion submodule is the module of invariants of T
under `G_(ℚ(ζ_(p^∞)))` (Kato 13.8, p. 227, citing Perrin-Riou; `SelmerIwasawaCohomology`
§3.1), which is zero: by `irreducible_cyclotomic` for non-CM forms, and for CM forms
because the Galois character of the Hecke character, whose induction is V, has
Hodge–Tate weights 0 and `k − 1` at the two embeddings of K and therefore infinite
order on `G_(K(ζ_(p^∞)))`, as has its conjugate. Rank one uses the rank formula
of `SelmerIwasawaCohomology` §3.13 for odd p and, at `p = 2`, Tate's global
Euler-characteristic formula for the rational representation, which carries no
2-torsion error. Integral freeness for odd p comes from torsion-freeness and the
residual irreducibility by Nakayama over the local components (Kato 13.8).

This result precedes the canonical map and is not obtained from it, nor from a
main-conjecture equality containing it. The integral
freeness clause keeps its odd-prime and residual hypotheses; at two retain integral
torsion-freeness and rational rank one only.

**Checks.**

- The zero module is torsion but not of rank one: torsion of `H²` alone never forces
  rank one of `H¹`.
- At `p = 2` the full algebra `O[{±1}][[T]]` is not a domain; torsion-freeness is
  stated with regular scalars, and the free module over `ℚ × ℚ` shows that this is
  weaker than freedom from every nonzero annihilator.

*Needs:* 4.1, 4.3; `PadicFamilies` §4.0.3; `SelmerIwasawaCohomology` §§3.0–3.1,
3.13; `ArithmeticGaloisDuality` §R02.4.3; `PadicMeasuresIwasawaAlgebras` §§4.2–4.3.

### 4.5 Finite support over the full cyclotomic algebra

Prove `finite_of_pseudoNull`: let R be a noetherian ring of Krull dimension at most
two whose residue fields at maximal ideals are finite, and M a finitely generated
R-module with `M_𝔭 = 0` for every prime 𝔭 of height at most one; then M is finite.
The support of M is closed and consists of maximal ideals of height two, hence is
finite, so M has finite length and each composition factor is a finite residue
field. Prove `finite_of_regular_annihilator` (Kato's finite-support step in 13.12,
pp. 231–232): for R as above and an integer p, a finitely generated R-module killed by a
non-zero-divisor μ with `R/μR` p-torsion-free and with `M_𝔭 = 0` at every height-one prime
not containing p is finite. Kato's case is `R = Λ = O[[G_∞]]`, including `p = 2` and the
full tame part. Indeed μ lies in no minimal prime, and a height-one prime containing p
and μ would be minimal over μ, hence associated to `R/μR`, so p would be a zero divisor on
`R/μR`. This extends `PadicMeasuresIwasawaAlgebras` §4.1,
whose statement is for two-dimensional normal local domains, to the semilocal
non-domain `O[{±1}][[T]]`.

**Checks.**

- Over `ℤ_p[[T]]`, `ℤ_p[[T]]/(p,T) = 𝔽_p` is finite and pseudo-null, while
  `ℤ_p[[T]]/(p)` is not: its support contains the height-one prime `(p)`.
- With `μ = p` the quotient `Λ/μΛ` has p-torsion, and `Λ/(p)` is a counterexample to
  the conclusion: the p-torsion-freeness hypothesis is needed.
- Over `ℤ_p`, of dimension one, `ℤ/p` is not pseudo-null although it is finite: the
  statement is about dimension two.

*Needs:* `PadicMeasuresIwasawaAlgebras` §§4.1–4.2; `SelmerIwasawaCohomology` §3.0;
Mathlib `Ideal.height`, `ringKrullDim`, `LocalizedModule`.

### 4.6 Twisting commutes with specialization and localization

For the cyclotomic tower and a finite free O-module T with continuous action, let
`φ_j : H¹_Iw(T) ≅ H¹_Iw(T(j))` be the twist of `SelmerIwasawaCohomology` §3.7, defined
with the compatible roots `(ζ_(p^n))`. Prove `twist_loc_comm`: `φ_j` commutes with
localization at p, the local twist on `H¹_Iw(ℚ_p, ·)` being defined with the same
roots; and `twist_specialize`: specialization at `ℚ(ζ_(p^n))` after `φ_j` equals cup
product with `ζ_(p^n)^(⊗j)` after specialization, at every n. Both hold because `φ_j` is
induced by a coefficient isomorphism of `G_ℚ`-modules, restriction to the decomposition
group is natural in coefficients, and Rubin's diagonal limit identifies the degree-one
map with finite-level cup products (`SelmerIwasawaCohomology` §§3.1, 3.7; Rubin draft
Appendix B, Lemma 3.1, pp. 153–154). These hold at every p, including two.

**Checks.**

- `φ_0` is the identity, and `φ_(−j) φ_j` is the identity.
- With `κ(γ) = 4` over `ℚ_3`, `φ_1(γx) = (1/4)γφ_1(x)`; the global and local twists
  must use the same scalar, and using `4` on one side fails the square.

*Needs:* `SelmerIwasawaCohomology` §§3.1, 3.6–3.7.

### 4.7 Serre's open image and torsion in the cyclotomic tower

Let E/ℚ be an elliptic curve without complex multiplication. Prove
`serre_openImage`: for every p the image of `ρ_(E,p)` is open in `GL₂(ℤ_p)`, and it is
all of `GL₂(ℤ_p)` for all but finitely many p (Serre 1972, Théorèmes 2–3, as stated in
Loeffler arXiv:1411.1789, p. 1, items (A)–(B); Rubin draft Proposition III.5.8 and
Remark III.5.9, pp. 49–50). Consequences, proved here: `Hyp(ℚ_∞, V_p(E))` holds for
every p, `Hyp(ℚ_∞, T_p(E))` holds when `ρ_(E,p)` is surjective,
`H¹(ℚ(E[p^∞])/ℚ, E[p^∞])` is finite, and zero when `ρ_(E,p)` is surjective and p is odd
(Rubin Proposition III.5.8; at `p = 2` the finite group `GL₂(ℤ/4)` already has a nonzero class
with coefficients in `(ℤ/4)²`, so the vanishing is not used there); and `E(ℚ_∞)_tors` is finite for the cyclotomic `ℤ_p`-extension
(Rubin Corollary III.5.6 and its proof, p. 49).

**Checks.**

- The Weil pairing gives `G_(ℚ(μ_(p^∞))) = ρ_(E,p)^(−1)(SL₂(ℤ_p))`; an open subgroup of
  `SL₂(ℤ_p)` contains `[[1,x],[0,1]]` with `x ≠ 0`.
- For a CM curve no element of `G_(ℚ(μ_(p^∞)))` acts by a nontrivial unipotent
  (Rubin Remark III.5.10), so the theorem excludes CM.

*Needs:* 4.1; `AutomorphicGaloisRepresentations` §7.5; `ModularCurves` §2E;
`EllipticCurves` Layers 4 and 6.

### Examples

A nonzero rational unipotent parameter gives Kato's hypothesis; a nonunit integral
parameter does not give the integral one; a semisimple element with eigenvalues
`1, ζ` also gives the rational hypothesis. At a quaternion-division coefficient place no
element of `ρ(H)` other than one fixes a vector. A rational rank-one `Λ_ℚ`-module
supplies the space for the canonical map; it gives no integral rank-one statement at
two.

### Dependencies

Layer 2; `PadicFamilies` §4.0.3; `AutomorphicGaloisRepresentations` §§1.5–1.6, 4.8,
7.2, 7.5; `ModularForms` Layers 7 and 9; `EulerSystemsAndKolyvaginSystems` §§2.5, 8.2–8.3,
8.6–8.7, 8.16, 8.37–8.38; `SelmerIwasawaCohomology` §§3.0–3.2, 3.5–3.7, 3.13, 3.15;
`ArithmeticGaloisDuality` §§R02.1.2, R02.4.2–R02.4.3; `PadicMeasuresIwasawaAlgebras`
§§4.1–4.3; `ModularCurves` §2E; `EllipticCurves` Layers 4 and 6.

## Layer 5: canonical zeta morphisms

Throughout this layer `(f,λ)` is admissible.

### 5.1 The rational Kato zeta morphism

Using 4.4, construct `katoZetaMap`, the E-linear morphism

```text
z^Ka : V_E(f) → H¹_Iw(V_E(f)).
```

Its values on the modular-symbol generators `δ(f,j,ξ)` are the geometric classes
`c,d-z^(p)` of `PadicFamilies` §4.0.1 projected to f, with the smoothing factors of
3.3 and the local factors divided out in the localized module. Prove independence of
the auxiliaries, consistency with every relation among the generators, and
membership in `H¹_Iw(V)` itself, not only in its localization (Kato Theorem 12.5(1),
p. 221; construction §§13.9–13.12, pp. 228–232). There is no good-reduction,
ordinary or residual hypothesis. The generators span `V_F(f)` because the elements
`δ_L(k,j)` translated by `GL₂(ℤ/L)` generate the integral full-level cohomology
(Ash–Stevens, Kato Theorem 13.6, p. 227; the spanning vectors have both level indices equal
to L before projection to f), and a modular symbol is determined by its
values on the Farey generators (`ModularSymbolsPadicLFunctions` §0.2).

The API is `katoZetaMap_generator`, `katoZetaMap_conjugation`, `katoZetaSubmodule`,
`katoZetaSubmodule_mem`, `katoZetaMap_unique` and `katoZetaSubmodule_eq_span`.
Untwisted conjugation is `z^Ka(ιγ) = −σ_(−1) z^Ka(γ)`. Uniqueness uses the spanning
of the generators together with the proved relations. Define `Z(f)` as the
`Λ_ℚ`-submodule spanned by all values. For a stable T the integral span `Z(f,T)` lives
in `H¹(V)` and is compared with `H¹(T)` in 7.2; integral membership is not part of its
definition.

**Checks.**

- The zero Betti vector has zero image, and `γ + δ` has the sum of the images.
- On a nonzero value, the minus conjugation relation differs from a plus relation;
  over a field of characteristic two the distinction disappears, and the statement
  is over a characteristic-zero E.
- The zero map has span zero, while a nonzero value generates a nonzero span: the
  span records generation, not only membership of zero.

*Needs:* 3.3, 4.4; `PadicFamilies` §§4.0.1–4.0.3; `ModularSymbolsPadicLFunctions`
§§0.2, 0.7; `SelmerIwasawaCohomology` §3.1; `PadicMeasuresIwasawaAlgebras` §4.6.

### 5.2 The smoothed integral span has finite index

Let `T = V_O(f)`. Let `Z_sm` be the Λ-span of both geometric families of Kato 12.6:
the rational-shift labels `a(A)`, `A ≥ 1`, with `(c,6pA) = (d,6pN) = 1`, and the `SL₂(ℤ)`
labels with `(cd,6pN) = 1`, `c ≡ d ≡ 1 mod N`, at critical j. Prove
`integralZetaFiniteIndex`:

```text
Z_sm ⊂ Z(f,T),   and   Z(f,T)/Z_sm is a finite group
```

(Kato Theorem 12.6, p. 222; §§13.10–13.12, pp. 230–232). It is not an equality of
lattices, and rational equality does not give finite index over the full Λ; no residual
irreducibility is assumed. Inclusion follows from the generator expansions with their smoothing
exponents and local factors. Choose the auxiliary combination μ of the construction,
prove it is a non-zero-divisor with `Λ/μΛ` p-torsion-free, prove the localized
equality at height-one primes away from p from analytic nonvanishing (4.2) and the
auxiliary choices, and apply `finite_of_regular_annihilator` of 4.5. The argument
includes `p = 2` and the finite tame part.

**Checks.**

- The quotient can be nonzero and finite (`ℤ/2` is the model case); a characteristic
  ideal equal to one does not give equality of submodules.
- Without the p-torsion-freeness of `Λ/μΛ` (for instance `μ = p`) the finite-support
  step fails.

*Needs:* 5.1, 4.2, 4.5; 2.1; `PadicFamilies` §4.0.1; `PadicMeasuresIwasawaAlgebras`
§4.6.

### 5.3 Critical interpolation of the canonical map

For `γ ∈ V_F(f)`, `1 ≤ r ≤ k−1` and `n ≥ 0`, first twist `z^Ka(γ)` by the compatible
roots with exponent `k − r`, then specialize at `ℚ(ζ_(p^n))`, localize at p and apply the
modular dual exponential of `PadicFamilies` §4.0.2. Prove `zetaCriticalInterpolation`:
the image `ω_(γ,r,n)` lies in `S(f) ⊗ ℚ(ζ_(p^n))` and, for each character χ of
`Gal(ℚ(ζ_(p^n))/ℚ)`,

```text
∑_σ χ(σ) per_f(ω_(γ,r,n)^σ)^± = (2πi)^(k−r−1) L_({p})(f*,χ,r) γ^±,
± = (−1)^(k−r−1) χ(−1)
```

(Kato Theorem 12.5(1), p. 221). It uses the dual form `f*` and the semilinear twist
`φ_(k−r)` with `φ(σx) = κ(σ)^(−(k−r))σφ(x)`; a finite-level root multiplied into a class is
not a change of twist. The order twist–specialize–localize is justified by 4.6. Apply
the reciprocity law of `PadicFamilies` §4.0.2 to the smoothed generators, the critical
values of 3.3, and then the membership and auxiliary cancellation of 5.1–5.2. The map
is characterized by these specializations through the rank-one structure of 4.4. The
rational statement includes `p = 2`.

**Checks.**

- `criticalSign` fixes the parity, and the twists of the Conventions fix `k − r`.
- `γ = 0` gives zero on both sides; for `γ` with `γ^+ ≠ 0`, `γ^− = 0` only characters with
  `(−1)^(k−r−1) χ(−1) = +1` contribute.

*Needs:* 5.1–5.2, 3.1, 3.3, 4.4, 4.6; `PadicFamilies` §4.0.2;
`ModularSymbolsPadicLFunctions` §1.1; `SelmerIwasawaCohomology` §3.7.

### 5.4 Nakamura's twist-one zeta morphism

Let `n ≥ 1` be prime to `Σ_f`, and use the rank-two `Γ₁` literal-dual quotient `V′`
with `V′(1−k) ≃ V(f*)` (2.2). Define `twistedKatoZeta` by

```text
z_n = φ_k ∘ z^Ka_n(f*) ∘ φ_(1−k) : V′ → H¹_Iw(V′(1)).
```

The API is `twistedKatoZeta_def`, `twistedKatoZeta_ext`,
`twistedKatoZeta_conjugation` and `twistedKatoZeta_norm`. Conjugation is positive:
`z_n(ιγ) = σ_(−1) z_n(γ)`. For a repeated conductor prime transfer has identity
factor, and for a new `ℓ ∉ Σ_f` it has `P_ℓ(σ_ℓ^(−1))` with
`P_ℓ(X) = 1 − a_ℓX + ℓ^(k−1)ε(ℓ)X²` in this convention (Nakamura Theorem A.1,
pp. 265–267; Definition A.4 and Corollary A.5, pp. 268–269). To apply the dual
exponential and periods, undo the output twist with `−k`; the corresponding edge
critical value is `L_({p},n)(f,χ,k−1)` with `(2πi)^(1−k)γ` and sign `χ(−1)`. The
conductor-n smoothing has second scalar `d²`, as at conductor one; the unsquared d in
the published p. 267 display is incompatible with the construction, and the corrected
operator is used. For the integral lattice statement of Remark A.2 keep p odd and
residual absolute irreducibility.

**Checks.**

- `(1−k) + k = 1` for every integer k: both twists must be present.
- `(−id) ∘ z ∘ (−id)` evaluated at x is `z(x)`: the two minus signs cancel, which fixes
  the positive conjugation relation.
- The zero source maps to zero, and with all three maps the identity on ℚ one maps to
  one.

*Needs:* 5.1, 5.3, 2.2, 4.6; `AutomorphicGaloisRepresentations` §§1.2, 1.5;
`SelmerIwasawaCohomology` §3.7.

### 5.5 Parabolic Iwasawa cohomology of the full-level curve

For `N ≥ 3`, `k ≥ 2`, `Σ = prime(Np)`, `n ≥ 1` prime to Np and `Λ_n = ℤ_p[[Gal(ℚ(ζ_(np^∞))/ℚ)]]`,
consider `H¹_Iw(ℤ[1/Σn, ζ_n], H¹(X(N), j_*V_(k/ℤ_p))(i))` and the dual exponential

```text
exp* : H¹_Iw(ℤ[1/Σn,ζ_n], H¹(X(N), j_*V_(k/ℤ_p))(1)) → lim_m S_k(N) ⊗ ℚ(ζ_(np^m)) ⊗ ℚ_p,
```

the limit of `loc_p` followed by the dual exponential, with transitions by trace. Prove
`parabolicIwasawa_torsionFree`: for every `i ∈ ℤ` the module is Λ_n-torsion-free; and
`parabolicExpStar_injective`: the map is injective, provided every newform constituent
of `S_k(N)` at the coefficient places above p is admissible (Nakamura Lemma 3.4,
p. 221, which cites Fukaya–Kato Proposition 3.1.3(1) and Lemma 3.1.4, extended from
`X₁(N)`, `k = 2` to `X(N)` and all `k ≥ 2`). Torsion-freeness follows as in 4.4 from the
vanishing of invariants under `G_(ℚ(ζ_(np^∞)))`. Injectivity: after inverting p, the
module decomposes into newform constituents, each free of rank equal to the multiplicity of
its newform by 4.4, and on each the composite with the period map is injective at every
height-zero prime of `Λ_n` by 5.3 and 4.2, the zeta classes of the different oldform
embeddings having independent periods; a map from a torsion-free module that is injective at
every height-zero prime is injective. Both statements fail
for `Y(N)` in place of `X(N)` (Nakamura Remark 3.5): the boundary Eisenstein part is
excluded.

**Checks.**

- For `Y(N)` the Eisenstein classes give `H¹_Iw` with torsion, so the parabolic
  coefficients are needed.
- Over `Λ = ℤ_p[[T]]` the projection `Λ ⊕ Λ/(T) → Λ` is injective at every height-zero
  prime but kills the torsion summand: injectivity needs the torsion-freeness.

*Needs:* 4.1, 4.4, 4.2, 5.3; `ModularCurvesPartII` §§14.2–14.3, 14.11–14.12;
`SelmerIwasawaCohomology` §3.1; `PadicHodgeRegulators` §1.11.

### 5.6 Parabolic full-level uniqueness

For `N ≥ 3`, `k ≥ 2`, `Σ = prime(Np)`, n prime to Np and `c ≥ 2` prime to `6Nnp`, use the
rational Drinfeld–Manin splitting `s_N` from open to parabolic cohomology
(`ModularSymbolsPadicLFunctions` §0.8). Prove `parabolicFullLevelCharacterisation`:
for `v ∈ Sym^(k−2)(ℤ²)^*`, the split class `s_N(c-z^Iw_(N,n)(k,v))` of the full-level
class of 2.3 is the unique element `z_v` of the parabolic Iwasawa cohomology with
`ℚ_p(2)`-twisted coefficients such that, for every `m ≥ 0`, its twist by `1 − k`,
specialization, localization and dual exponential `ω_m(z_v)` lies in
`S_k(N)_ℚ ⊗ ℚ(ζ_(np^m))` and satisfies

```text
per(ω_m(z_v)) = (2πi)^(1−k) Z_(Σ,np^m)(k−1) · s_N(c-δ_(N,np^m)(k,v))
```

in `H¹(X(N)(ℂ), j_*V_(k/ℂ)) ⊗_(ℂ[{±1}]) ℂ[Gal(ℚ(ζ_(np^m))/ℚ)]` (Nakamura Corollary 3.6,
p. 222). Uniqueness is 5.5; the period map is injective on `S_k(N)_ℚ ⊗ ℚ(ζ_(np^m))`
into this quotient (Nakamura (19)). The splitting is rational and Hecke/Galois
equivariant, with no integral splitting asserted.

**Checks.**

- The coefficient object is `H¹(X(N), j_*V_k)`, not `H¹(Y(N), V_k)`.
- The splitting is not integral: at a prime dividing the order of the Eisenstein
  congruence module the rational projector has a denominator.

*Needs:* 2.3, 5.5, 3.4 (operator-valued zeta); `ModularSymbolsPadicLFunctions` §0.8;
`SelmerIwasawaCohomology` §3.7.

### Examples

The canonical map vanishes on zero but is not the zero map, as 7.1 shows
componentwise. Finite index between spans need not be equality. Twist-one transport
changes the conjugation sign while the two degree shifts add to one. The parabolic
injectivity is false on the open curve.

### Dependencies

Layers 2–4; `PadicFamilies` §§4.0.1–4.0.3; `ModularSymbolsPadicLFunctions` §§0.2,
0.7–0.8, 1.1; `SelmerIwasawaCohomology` §§3.1, 3.7; `PadicMeasuresIwasawaAlgebras`
§4.6; `AutomorphicGaloisRepresentations` §§1.2, 1.5; `ModularCurvesPartII` §§14.2–14.3,
14.11–14.12; `PadicHodgeRegulators` §1.11.

## Layer 6: scalar regulators and elliptic periods

### 6.1 Perrin-Riou's map for de Rham representations

Let L be a finite extension of `ℚ_p` and V a de Rham representation of `G_(ℚ_p)` over L
with

```text
D_crys(V*(1)) ⊂ D⁰_dR(V*(1))   inside D_dR(V*(1)),          (16.4.1)
```

`V* = Hom_L(V,L)`. For `η ∈ D_crys(V*(1))` prove `perrinRiouMap`: there is a unique
Λ-linear `ℒ_η : H¹_Iw(ℚ_p, V) → ℋ_(∞,L)`, L-linear in η, such that for every `r ≥ 1`:
(i) for `n ≥ 1` and χ of `G_n` not factoring through `G_(n−1)`,

```text
ℒ_η(x)(κ^r χ^(−1)) = (r−1)! · G(χ,ζ_(p^n))^(−1)
                     · ∑_(σ∈G_n) χ(σ) ⟨σ(exp*(x_(−r,n))), (p^(−r)φ)^(−n)(η)⟩,
```

where `x_(−r,n)` is the image of x in `H¹(ℚ_p(ζ_(p^n)), V(−r))` after twisting by
`(ζ_(p^j))^(⊗(−r))`; (ii) if `η = (1 − p^(−r)φ)η′` with `η′ ∈ D_crys(V*(1))`,
`ℒ_η(x)(κ^r) = (r−1)! ⟨exp*(x_(−r,0)), (1 − p^(r−1)φ^(−1))η′⟩`; and if η lies in a
φ-stable subspace of slope `< h` then `ℒ_η` has values in `ℋ_(h,L)` (Kato
Theorem 16.4, p. 270; Remark 16.5, p. 270). Kato's statement of (ii) writes
`η′ ∈ D_crys(V_(F_λ)(f))`; the space is `D_crys(V*(1))`, as η is.

Construct `ℒ_η` by pairing η with the big exponential of the dual: Kentaro Nakamura,
*Iwasawa theory of de Rham (φ,Γ)-modules over the Robba rings*, arXiv:1201.6475 v2,
Theorem 1.5 (= Theorem 3.10), constructs it for every de Rham (φ,Γ)-module over any
p-adic field and every p, with the dual exponential interpolation of its part (2);
Colmez (Ann. of Math. 148 (1998), Theorem 7) gives the same for de Rham
representations with uniqueness. For crystalline V the map is that of
`PadicHodgeRegulators` §9.35 (all p) paired with η, and for odd p it agrees with §§8.8,
8.13–8.14 there. Uniqueness: an element of `ℋ_(h,L)` is determined by its values at
the characters `κ^rχ^(−1)` with `r > h` (`ModularSymbolsPadicLFunctions` §2.5),
and every element of `ℋ_(∞,L)` lies in some `ℋ_(h,L)`.

**Checks.**

- With `V = ℚ_p(1)`, `V*(1) = ℚ_p` and `D_crys(ℚ_p) = D⁰_dR(ℚ_p)`: (16.4.1) holds.
  With `V = ℚ_p`, `V*(1) = ℚ_p(1)` has `D⁰_dR = 0` while `D_crys` is a line: (16.4.1)
  fails, and the theorem says nothing about the trivial representation.
- The Gauss sum appears inverted: for `p = 3`, `n = 1` and the quadratic character,
  `G(χ)^(−1) = −i/√3` while `G(χ) = i√3`; they differ by the factor `−3`.
- In (ii) the factor is `(1 − p^(r−1)φ^(−1))`, the inverse of `p^(−r)φ` scaled by `p^(−1)`; on the
  `φ = α` line it gives the factor `1 − p^(r−1)α^(−1)` of 6.4. At `r = 1` it is `1 − φ^(−1)`;
  the factor `1 − p^(−1)φ^(−1)` would need `r = 0` and so never occurs for `r ≥ 1`, and the
  unscaled inverse `1 − p^r φ^(−1)` differs from it by the factor p on the Frobenius term.

*Needs:* `PadicHodgeRegulators` §§1.4, 1.11, 8.8, 8.13–8.14, 9.31–9.35;
`ModularSymbolsPadicLFunctions` §2.5; `SelmerIwasawaCohomology` §§3.1, 3.7.

### 6.2 The period-normalized scalar regulator

Fix a nonzero `ω ∈ S(f*)` and `γ ∈ V_F(f*)` with `γ⁺, γ⁻` nonzero, and a root α of
`X² − a_pX + ε(p)p^(k−1)` (`ε(p) = 0` at bad level) with `v_p(α) < k − 1`. Write
`per_(f*)(ω) = Ω_+γ⁺ + Ω_−γ⁻`. Since `(V(f*)(k))*(1) ≅ V(f)` satisfies (16.4.1), there is
`η` in the `φ = α` line of `D_crys(V(f*)(k)*(1))` with `⟨ω, η⟩ = 1`: weak admissibility
and the strict slope inequality prove the pairing nonzero before the division (Kato
16.6(1) and its proof, p. 271; the eigenline is `AutomorphicGaloisRepresentations`
§5.2 when `p ∤ N`).

Define `katoScalarRegulator` as `ℒ_η(loc_p φ_k z^Ka_γ(f*))`, with `ℒ_η` of 6.1 and the
canonical map of 5.1 for `f*`. The API is `katoScalarRegulator_def`,
`katoScalarRegulator_linear`, `katoScalarRegulator_scale` and
`katoScalarRegulator_projection_add`. Replacing ω by `aω`, `a ≠ 0`, renormalizes η by
`a^(−1)`; replacing γ by `bγ` scales the output by `a^(−1)b` (Kato Remark 16.3(2),
p. 269). The scalar regulator depends on the normalized eigenvector, the period and the Betti
input, not on V alone, and singular Euler factors keep their domains. If no nonzero crystalline α-line exists (`α = 0`), there is no scalar
projection, and only the vector comparison of 6.5 applies.

**Checks.**

- The zero local class gives the zero distribution, and the map is additive in the
  class.
- Doubling the period and tripling the Betti class multiplies the scalar by `3/2`; the
  hypothesis `a ≠ 0` is needed for the period normalization.
- With the identity regulator and identity projection on ℚ, one maps to one, which
  rejects a zero construction.

*Needs:* 6.1, 5.1, 2.2, 4.6; `AutomorphicGaloisRepresentations` §§4.5, 5.2;
`ModularSymbolsPadicLFunctions` §1.1.

### 6.3 The period dictionary with modular symbols

Prove `katoPeriodDictionary`: Kato's period map `per_f`, the spaces `S(f)`, `V_F(f)^±`
and the periods `Ω_±` of 6.2 compare with the period lines, periods and twisted Mellin
formula of `ModularSymbolsPadicLFunctions` §§1.1–1.3, and the analytic p-adic L-function
`L_(p-adic,α,ω,γ)(f)` of Kato's Theorem 16.2 (p. 269) equals, on each sign component, an
explicit nonzero constant times the distribution `L_p(f,α;φ^±)` of §2.5 there, after the
change of variable that sends Kato's character `κ^rχ^(−1)` to the character of §2.5 with
the same L-value. Compute the constants from the interpolation formulas at characters of
conductor `p^n`, `n ≥ 1`: Kato's has `(r−1)! p^(nr) α^(−n) G(χ,ζ_(p^n))^(−1)
(2πi)^(k−r−1) L_({p})(f,χ,r)/Ω_±`, the dictionary of §1.3 there has `τ(χ)`, `p^(nj)`,
`(2πi)^(−(j+1))` with `j = r − 1` and the weight shifted by two, and
`G(χ,ζ)G(χ^(−1),ζ) = χ(−1)p^n` converts one Gauss-sum normalization into the other; check
the result against the unramified formula with its two Euler factors. The sign labels
agree: both are `(−1)^(k−r−1)χ(−1)`.

**Checks.**

- For the quadratic character χ modulo 3, `G(χ,ζ₃) = ζ₃ − ζ₃² = i√3` and
  `G(χ)G(χ^(−1)) = G(χ)² = −3 = χ(−1)·3`.
- At `k = 2, r = 1`: Kato's power `(2πi)^(k−r−1)` is 1, while §1.3's is `(2πi)^(−1)`; the
  ratio `(2πi)^(k−1)` is absorbed in the comparison of periods, not in the L-value.
- A dictionary that identifies the two Gauss sums without the factor `χ(−1)p^n` fails
  already for the character of the first check.

*Needs:* 3.3, 6.2; `ModularSymbolsPadicLFunctions` §§1.1–1.3, 2.5.

### 6.4 Noncritical analytic–arithmetic equality

Under 6.2's hypotheses prove `noncriticalAnalyticArithmeticComparison`: the scalar
regulator of 6.2 equals Kato's analytic p-adic L-function `L_(p-adic,α,ω,γ)(f)`, the
distribution of `ModularSymbolsPadicLFunctions` §2.5 transported by 6.3. For χ of exact
conductor `p^n`, `n ≥ 1`, and `1 ≤ r ≤ k−1`, both evaluations at `κ^rχ^(−1)` are

```text
(r−1)! p^(nr) α^(−n) G(χ,ζ_(p^n))^(−1) (2πi)^(k−r−1) L_({p})(f,χ,r) / Ω_±,
± = (−1)^(k−r−1) χ(−1),
```

and at the unramified character `κ^r`

```text
(r−1)! (2πi)^(k−r−1) (1 − p^(r−1)α^(−1))(1 − ε(p)p^(k−r−1)α^(−1)) L(f,r) / Ω_±,
± = (−1)^(k−r−1)
```

(Kato Theorem 16.2, p. 269; equality is Theorem 16.6(2), p. 271, with the uniqueness
of Remark 16.3(1), pp. 269–270). Proof: compute the regulator values by 6.1 and the
critical interpolation 5.3, then apply uniqueness in `ℋ_(v_p(α),L)` (§2.5 there; the
slope bound is essential). The class is built from `f*`, so the scalar formula contains
f. The Gauss sum of a character of exact conductor `p^n` is nonzero, and α and the periods are
nonzero by hypothesis; exchanging χ with `χ^(−1)`, or G with its inverse, changes the value. The definition `ordinaryEulerFactor` records the two unramified factors; singular
Euler factors keep their domain even when their value is zero. The equality holds for
every p, including two, since 6.1 does.

**Checks.**

- At `k = 2, r = 1`, a split multiplicative `α = 1` with `ε(p) = 0` gives factor zero;
  replacing that correction by a unit loses the trivial zero.
- At the same weight, a nonsplit `α = −1` with `ε(p) = 0` gives two, also at `p = 2`.
- At `p = 3, k = 2, r = 1, α = 2, ε = 1` the product is `1/4`.

*Needs:* 6.1–6.3, 5.3; `ModularSymbolsPadicLFunctions` §2.5; `PadicHodgeRegulators`
§§8.15–8.16.

### 6.5 Critical fibers and bad-reduction domains

Prove `criticalBadReductionComparison` as a conditional implication on the domain of the
family comparison principle of `ModularSymbolsPadicLFunctions` §3.3. Fix a decent
critical refinement (§3.0 there), its reduced affinoid neighbourhood, a Zariski-dense
noncritical locus, compatible nonvanishing period normalizations, and an arithmetic zeta
section on the same neighbourhood whose specializations are the scalar regulators of
6.2 at the noncritical points, with both the eigensymbol and the regulator specializations
commuting with their sections. An unspecified family, a dimension count or interpolation at the
critical fiber alone is weaker than these hypotheses. Then the equality of 6.4 at the noncritical points
extends to the family and to the critical fiber. The arithmetic section is a hypothesis:
Kato 16.6 does not produce it, and this roadmap does not construct one; no endpoint of
this roadmap depends on this target.

At bad reduction use 6.1 under (16.4.1) with its singular Euler factors. If `α = 0` or
the crystalline line is absent, state the vector comparison instead of a scalar
α-equality. The nonzero pairing of 6.2 comes from the strict slope inequality and is
not available at critical slope (Kato 16.4, Remark 16.5(2) and the proof of 16.6,
pp. 270–271).

**Checks.**

- At critical slope `v_p(α) = k − 1` the uniqueness of §2.5 fails (a multiple of
  `log^[k−1]` can be added), so the hypotheses cannot be dropped.
- With `α = 0` there is no scalar projection.

*Needs:* 6.1–6.4; `ModularSymbolsPadicLFunctions` §§3.0, 3.2–3.3.

### 6.6 Elliptic local lattice and Kato period

Let E/ℚ be modular of conductor N, `T = T_pE`, `ω_E` the invariant differential of a
global minimal model (`EllipticCurves` Layers 1 and 4) and `Ω_E` its real period. For p
odd prove `ellipticLocalLattice`:

```text
exp*_(ω_E)(H¹_s(ℚ_p, T)) = [E(ℚ_p) : E₁(ℚ_p) + E(ℚ_p)_tors] · p^(−1)ℤ_p,
```

with `H¹_s` the singular quotient and `E₁` the kernel of reduction. The index is local,
including at bad reduction, and is not the cardinality of the reduced curve. Use the
Tate-pairing adjoint of the formal logarithm, `x ↦ Tr(log_E(x) exp*_(ω_E)(z))`; for odd p
the logarithm image of `E₁` is `pℤ_p` (Rubin draft III.5.1, p. 48; `PadicHodgeRegulators`
§1.4).

Transport the Euler system of 2.1 through the weight-two dictionary of 2.2 and an
integral modular parametrization. Prove there is a positive integer `r_E`, independent of
p, with

```text
exp*_(ω_E)(loc^s_p c_ℚ) = r_E L_(Np)(E,1)/Ω_E,
∑_γ χ(γ) exp*_(ω_E)(loc^s_p c_(ℚ_n)^γ) = r_E L_(Np)(E,χ,1)/Ω_E,
```

for the cyclotomic `ℤ_p`-extension `ℚ_n`, the same roots and the same differential for
every χ (Rubin draft III.5.2–5.3, pp. 48–49, with 5.3 above). The removed Np factors are
retained; `r_E` is the period denominator of the parametrization.

At `p = 2` keep the actual logarithm lattice: for the good-reduction curve
`y² + xy = x³ + 1`, with `Δ = −433`, the formal logarithm on `t = 2u` begins `2u + 2u²`,
its integral tail lies in `4ℤ₂`, and the image of `E₁` is `4ℤ₂`, not `2ℤ₂`.

**Checks.**

- The zero local class has zero exponential. The singular localization `loc^s_p c_ℚ` is
  nonzero exactly when `L(E,1)` is, since the removed factors `ℓ_q(q^(−1))` are nonzero; the
  global class `c_ℚ` itself may be nonzero when `L(E,1) = 0`, with zero singular
  localization, so the formula does not detect it.
- At `p = 2` the printed odd-prime lattice `p^(−1)ℤ_p` would give `2^(−1)ℤ₂` instead of
  the dual of `4ℤ₂`.

*Needs:* 2.1–2.2, 5.3; `PadicHodgeRegulators` §§1.4, 8.22; `EllipticCurves` Layers 1 and
4; `SelmerIwasawaCohomology` §§2.12, 2.15; `ModularSymbolsPadicLFunctions` §1.1.

### Examples

Period scaling by `a ≠ 0` and Betti scaling by b give `a^(−1)b`, not `ab`. An `α = 1`
split multiplicative refinement has a trivial-character zero; an `α = −1` nonsplit
refinement does not. The dyadic logarithm example distinguishes the local lattice theorem
from the all-prime rational regulator theorem.

### Dependencies

Layers 2 and 5; `PadicHodgeRegulators` §§1.4, 1.11, 8.8, 8.13–8.16, 8.22, 9.31–9.35;
`ModularSymbolsPadicLFunctions` §§1.1–1.3, 2.5, 3.0, 3.2–3.3;
`AutomorphicGaloisRepresentations` §§4.5, 5.2; `EllipticCurves` Layers 1 and 4;
`SelmerIwasawaCohomology` §§2.12, 2.15, 3.1, 3.7.

## Layer 7: divisibility and elliptic applications

The canonical classes meet the Euler-system bounds. The height-one cohomological
inequality for the canonical module and the elliptic inequalities are kept distinct:
their hypotheses and local terms differ. The ordinary Selmer bound for modular forms
by the ordinary p-adic L-function with good periods is `PadicFamilies` §4.0.3.

### 7.1 The canonical zeta module is non-torsion

For admissible `(f,λ)` and every p, prove `katoZeta_nonTorsion`: `Z(f)` is nonzero on
each character component of `Λ_ℚ`, so `H¹(V(f))/Z(f)` is `Λ_ℚ`-torsion (Kato Theorem
12.5(2), p. 221; proof 13.7, pp. 227–228; Burungale–Tian v2 Theorem 2.4 and
Remark 2.5, p. 5). Detect a nonzero value with 5.3, a sign, and a finite-order twist with
nonzero critical value from 4.2; choose smoothing parameters nonzero at that twist and use
the spanning of 5.1. The statement concerns the canonical module, not every γ: the zero
vector has zero image. A map into a rank-one free module can be zero, so 4.4 alone does
not give 7.1. The geometric statement is `PadicFamilies` §4.0.3; this one concerns the
module of 5.1, with auxiliary factors removed.

**Checks.**

- The zero map into a rank-one module has span zero; non-torsion needs the analytic
  input.
- At weight two the trivial character may have `L(f,1) = 0`; the argument uses ramified
  twists.

*Needs:* 4.2, 4.4, 5.1–5.3; `ModularSymbolsPadicLFunctions` §0.2.

### 7.2 The cohomological upper bound

For admissible `(f,λ)` and every height-one prime 𝔭 of Λ not containing p, prove
`katoCohomologicalBound`:

```text
length_𝔭 H²(V(f)) ≤ length_𝔭(H¹(V(f))/Z(f)) + length_𝔭 H²_loc(V(f)),
```

with `H²_loc` the sum of local Iwasawa cohomology at p. The last term is nonzero only when
`k = 2`, f is not potentially of good reduction at p and 𝔭 is the kernel of `κ^(−2)χ` for a
finite-order χ, and it then has length one (Kato Theorem 12.5(3), p. 222, with the proof in
13.13, pp. 233–234). The condition is necessary, not sufficient: for an elliptic curve with
nonsplit multiplicative reduction at p, the unramified quadratic character of its Tate
parametrization is nontrivial on `G_(ℚ_p(μ_(p^∞)))`, so the invariants dual to the local term
vanish and the term is zero at every 𝔭. The proof combines 4.3 with 4.2a, which relates `H²(T)₀`
to `H²(T)` through the local term, and 5.2, which relates the smoothed span to `Z(f)` at primes
away from p.

For a stable T, assume p odd and (12.5.2): the image of `G_(ℚ(μ_(p^∞)))` contains
`SL₂(ℤ_p)` in some basis of T (4.1 gives this for almost all λ). Then `Z(f,T) ⊂ H¹(T)` and

```text
length_𝔭 H²(T) ≤ length_𝔭(H¹(T)/Z(f,T))
```

at every height-one prime of Λ, including primes over p, except at the exceptional primes
above (Kato Theorem 12.5(4), p. 222; proof 13.14, p. 234). The printed 12.5(4) displays
the rational modules; the integral modules are the ones meant, since the rational ones
lose the p-primary information. The integral proof uses the integral freeness of 4.4, not
torsion-freeness. For CM forms the rational bound is `PadicFamilies` §4.0.3 with the
elliptic-unit comparison of Kato 15.13–15.17, pp. 264–265. The direction is an upper
bound; Kato's Conjecture 12.10 is not asserted.

As a compatible twist-one specialization, Nakamura Theorem 5.2, pp. 253–254, assumes p odd,
an absolutely irreducible residual representation and a free rank-one τ-quotient, and
relates the strict Selmer kernel to `H²` by the localization sequence of 4.2a. Nakamura's proof
cites Kato's "Theorem 12.4(4)", which is 12.5(4), and his Conjecture 5.1 is Kato's Conjecture
12.10.

**Checks.**

- Lengths `(2, 1, 1)` satisfy the bound and `(2, 1, 0)` do not; the correction cannot be
  chosen after the fact.
- Lengths `(0, 0, 0)` satisfy it; this case does not prove non-torsion of `Z(f)`.

*Needs:* 4.1, 4.3–4.4, 4.2a, 5.1–5.4, 7.1; `PadicFamilies` §4.0.3;
`EulerSystemsAndKolyvaginSystems` §§8.37–8.38; `PadicMeasuresIwasawaAlgebras` §4.6.

### 7.3 Elliptic points in the cyclotomic tower

Let E/ℚ be modular and non-CM and `ℚ_∞/ℚ` its cyclotomic `ℤ_p`-extension, for any p. Prove
`ellipticCyclotomicFiniteGeneration`: `E(ℚ_∞)` is finitely generated. Apply the
finite-level bound of `EulerSystemsAndKolyvaginSystems` §4.17(b) to the Euler system of 2.1
with the twist transport of 4.6 and the interpolation of 6.6: the nonzero values show that
the χ-components of `E(ℚ_n)` and `Ш(E/ℚ_n)` are finite; Rohrlich's finite exceptional set
(4.2) makes the rank stabilize, and 4.7 makes the torsion subgroup `T₀` of `E(ℚ_∞)` finite
(Rubin draft III.5.4–5.6, p. 49, and III.5.8–5.11, pp. 50–51).

Complete the descent: choose one finite layer containing `T₀` and generators of
`E(ℚ_∞) ⊗ ℚ`. Its procyclic Galois group Γ acts trivially modulo `T₀`; for every point P,
`σ ↦ σP − P` is a continuous homomorphism `Γ → T₀`, killed on `eΓ` for an exponent e of
`T₀`, uniformly in P. So every point lies in one finite layer, whose Mordell–Weil group is
finitely generated (`EllipticCurves` Layer 6). Bounded rank and finite torsion alone would
not give finite generation of an abstract abelian group. For E over ℚ, with or without
complex multiplication, the statement is also the case `m = p` of
`modularAbelianVariety_cyclotomicFG` in 7.9, since `ℚ_∞ ⊂ ℚ(ζ_(p^∞))` and a subgroup of a
finitely generated abelian group is finitely generated.

If `L(E,1) ≠ 0`, the same argument gives finite `E(ℚ)` and finite `Ш(E/ℚ)[p^∞]` for each p;
global finiteness of Ш also uses 7.8.

**Checks.**

- `ℤ[1/p]` has rank one and no torsion but is not finitely generated: bounded rank and
  finite torsion do not give finite generation, and the uniform descent is needed.
- At `p = 2` use the lattice of 6.6.

*Needs:* 2.1, 4.2, 4.6–4.7, 6.6; `EulerSystemsAndKolyvaginSystems` §4.17;
`SelmerIwasawaCohomology` §2.12; `EllipticCurves` Layer 6.

### 7.4 Elliptic ordinary and multiplicative divisibility

Let E/ℚ be modular, non-CM, of conductor N, and p an odd prime at which E has good ordinary
or multiplicative reduction. Put `T = T_pE`, `Λ = ℤ_p[[Gal(ℚ_∞/ℚ)]]` and `Z_∞ = Sel(E/ℚ_∞)^∨`. With Rubin's
Coleman map on the singular local Iwasawa group (`PadicHodgeRegulators` §8.22) and the
system c of 2.1 with `r_E` of 6.6, prove `Col(c) = r_E L_(E,N)`. Here `L_E` is the p-adic L-function of Mazur and Swinnerton-Dyer,
normalized by `ω_E` and `Ω_E` (Rubin draft Theorem III.5.13), and `L_(E,N)` is its imprimitive
form, with the Euler factors at the primes `q | N`, `q ≠ p`, removed from the interpolated values
(Rubin draft Corollary III.5.15, p. 52). For
good ordinary or nonsplit multiplicative reduction, `Z_∞` is finitely generated torsion and

```text
char(Z_∞) divides p^t L_(E,N) Λ  for some integer t,
```

and under `ρ_(E,p)` surjective and `p ∤ r_E ∏_(q|N, q≠p) ℓ_q(q^(−1))`, `char(Z_∞)` divides
`L_E Λ` (Rubin draft III.5.14–5.16, pp. 52–53; `EulerSystemsAndKolyvaginSystems` §8.39 with
4.7). Rubin states these results without a parity condition; the hypothesis that p is odd is
that of the Coleman map of `PadicHodgeRegulators` §§8.22 and 9.36, which is constructed for odd
p, and a dyadic Coleman map is not supplied. At `p = 2` with good ordinary reduction, the
torsion of `Z_∞` and `char(Z_∞) | 2^t L_E Λ` for some integer t still hold: they are the
weight-two case of `PadicFamilies` §4.0.3, which follows Kato Theorem 17.4(1)–(2), p. 273, and
has no parity condition. Kato's lattice is `T_2E(−1)`; restriction identifies `Sel(E/ℚ_∞)` with
the Δ-invariants of his Selmer group over `ℚ(μ_(2^∞))` (17.2–17.3, pp. 272–273, at `r = 1`, with
`SelmerIwasawaCohomology` §4.26 for the local conditions) up to kernels and cokernels killed by
`|Δ| = 2`, which do not change lengths at height-one primes not containing 2; and his
`L_(p-adic,α,ω_E,γ)(f)` is `L_E` up to the nonzero constant of 6.3. At `p = 2` the
multiplicative cases and the exact divisibility have no supplier. The integer t may be negative:
this is fractional-ideal divisibility. For split multiplicative reduction, the Coleman image
lies in the augmentation ideal J (`PadicHodgeRegulators` §9.36), and the bound is
`J char(Z_∞) | p^t L_(E,N) Λ`, or `| L_E Λ` under the stronger hypotheses. With `α = 1` (split),
`α = −1` (nonsplit) or the unit root (ordinary) and `β = p/α`, the trivial-character value of
Col contains `(1 − α^(−1))/(1 − β^(−1))` and the value at χ of conductor `p^n` contains
`α^(−n)τ(χ)` and the inverse-character sum of 6.6; never invert `1 − α^(−1)`. In the nonsplit
case `1 − α^(−1) = 2`, a unit for odd p.

**Checks.**

- Split `α = 1` gives a zero trivial-character value; the augmentation ideal must be kept.
- Rational open image (4.7) gives the first divisibility only; the exact one needs
  surjectivity.

*Needs:* 2.1, 4.6–4.7, 5.3, 6.3, 6.6; `PadicFamilies` §4.0.3; `PadicHodgeRegulators`
§§8.22, 9.36; `ModularSymbolsPadicLFunctions` §2.5; `EulerSystemsAndKolyvaginSystems` §§8.16,
8.39; `SelmerIwasawaCohomology` §4.26; `PadicMeasuresIwasawaAlgebras` §4.6.

### 7.5 Universal norms of the formal group

Let E/ℚ_p have good ordinary reduction and let `ℚ_(n,p)` be the n-th layer of the cyclotomic
`ℤ_p`-extension of `ℚ_p`, totally ramified with residue field `𝔽_p`. Prove
`formalGroupUniversalNorms`: `lim_n E(ℚ_(n,p)) ⊗ ℤ_p = lim_n E₁(ℚ_(n,p)) = lim_n Ê(𝔪_n)`
under the norm maps, and this module is free of rank one over Λ (Rubin draft, proof of
Corollary III.5.17, p. 53, citing Perrin-Riou, Invent. Math. 99 (1990), Théorème 3.1, and
Schneider, Invent. Math. 79 (1985), §A.1, Lemma 6). The first equality holds because the
norm acts on `E/E₁ ≅ Ẽ(𝔽_p)` as multiplication by the degree, so the limit of these finite
groups is zero.

**Checks.**

- On `Ẽ(𝔽_p)` the norm from `ℚ_(n+1,p)` to `ℚ_(n,p)` is multiplication by p; the inverse limit
  of a finite p-group under multiplication by p is zero.
- When p divides `|Ẽ(𝔽_p)|` the groups `Ẽ(𝔽_p)[p^∞]` are nonzero at every level, but
  multiplication by p is nilpotent on them, so their norm limit is still zero.

*Needs:* `EllipticCurves` Layers 1 and 4; `SelmerIwasawaCohomology` §2.12;
`PadicMeasuresIwasawaAlgebras` §§4.2–4.5.

### 7.6 No finite submodule in the ordinary elliptic Selmer dual

For modular non-CM E with good ordinary reduction at an odd prime p, assume
`p ∤ ∏_(q|N) |E(ℚ_q)_tors|`. Then `Z_∞` of 7.4 has no nonzero finite Λ-submodule. The
exclusions concern local torsion at every bad q, not `E(ℚ)_tors`; since `N > 1` they imply
`E(ℚ)[p] = 0`, as the elliptic case of Greenberg's criterion requires. Rubin states the
corollary without a parity condition; the criterion of `SelmerIwasawaCohomology` §3.20 is
established in the cyclotomic ordinary elliptic case for odd p, whence the hypothesis.
Proof: the exact sequence
`0 → S(ℚ_∞, E_(p^∞)) → H¹(ℚ_Σ/ℚ_∞, E_(p^∞)) → ⊕ H¹_s` (Rubin Lemma I.5.3), vanishing of the
bad local terms under the torsion hypothesis, the rank-one free norm module of 7.5 at p, the
torsionness of 7.4 and Greenberg's criterion (`SelmerIwasawaCohomology` §3.20; Rubin draft
Corollary III.5.17 and its proof, p. 53).

**Checks.**

- `Λ/(p, γ−1)` is a torsion Λ-module that is itself finite: torsion alone does not exclude
  finite submodules.
- At a split multiplicative prime p the theorem does not apply: good ordinary reduction is a
  hypothesis.

*Needs:* 7.4–7.5; `SelmerIwasawaCohomology` §§2.15, 2.19, 3.18–3.20; `EllipticCurves` Layer 4.

### 7.7 Control at the trivial character

Let E/ℚ be modular, non-CM, with good ordinary reduction at an odd prime p, `ρ_(E,p)`
surjective and `p ∤ ∏_(q|N) |E(ℚ_q)_tors|`. Prove `ellipticOrdinaryControl`: restriction
`S(ℚ, E_(p^∞)) → S(ℚ_∞, E_(p^∞))^Γ` is injective, and if `S(ℚ, E_(p^∞))` is finite the order of its
cokernel is divisible by the p-part of `|Ẽ(𝔽_p)|²`, which is the p-part of `(1 − α^(−1))²` for the
unit root α
(Rubin draft, proof of Corollary III.5.18, pp. 53–54, citing Perrin-Riou 1990 §6 and Schneider
1985 §2; Greenberg, *Iwasawa theory for elliptic curves*, LNM 1716 (1999), Theorem 4.1).
Injectivity uses `E(ℚ_∞)[p] = 0` from surjectivity. The cokernel is computed with the
restriction-control sequence of `SelmerIwasawaCohomology` §3.11 (with §§3.9–3.10), which is
general machinery: the local error at p is computed here, from the ordinary filtration of
`T_pE` and the norm module of 7.5, and has order the p-part of `|Ẽ(𝔽_p)|²`. The local
errors at bad q, the p-parts of the Tamagawa numbers, vanish under the torsion hypothesis:
`c_q` divides `|E(ℚ_q)/E₁(ℚ_q)|` and `E₁(ℚ_q)` is pro-q, so `p | c_q` would give a point of
order p in `E(ℚ_q)`. Without that hypothesis they could only enlarge the cokernel.

**Checks.**

- `|Ẽ(𝔽_p)| = (1 − α)(1 − β)` with `αβ = p`, and for the unit root `1 − p/α` is a unit, so
  the p-parts of `|Ẽ(𝔽_p)|` and `1 − α^(−1)` agree.
- For `p | |Ẽ(𝔽_p)|` (anomalous p) the cokernel is nontrivial and the factor cannot be
  dropped.
- The statement is a divisibility: without the torsion hypothesis, a split multiplicative q
  with `p | c_q` makes the cokernel larger than the p-part of `(1 − α^(−1))²`; the hypothesis
  excludes this case.

*Needs:* 4.7, 7.5; `SelmerIwasawaCohomology` §§2.12, 3.9–3.11; `EllipticCurves` Layer 4.

### 7.8 Rank-zero upper bound for the elliptic p-part

Let E/ℚ be modular, non-CM, with `L(E,1) ≠ 0`. Suppose p odd, E has good reduction at p,
`ρ_(E,p)` surjective and

```text
p ∤ 2 r_E ∏_(q|N) (ℓ_q(q^(−1)) |E(ℚ_q)_tors|).
```

Then `Ш(E/ℚ)[p^∞]` is finite and `ord_p |Ш(E/ℚ)[p^∞]| ≤ ord_p (L(E,1)/Ω_E)`. In the ordinary
case specialize the bound of 7.4 using 7.6 and 7.7: `|S(ℚ_∞,E_(p^∞))^Γ|` divides the
trivial-character value `(1 − α^(−1))² ∏_(q|N) ℓ_q(q^(−1)) L(E,1)/Ω_E`, and the control cokernel
is divisible by the same `(1 − α^(−1))²`, which cancels. In the supersingular case
`p ∤ |Ẽ(𝔽_p)|` for odd p, and the lattice of 6.6 gives Rubin III.5.11(ii), p. 51 (Rubin draft
Corollary III.5.18, pp. 53–54). For all but finitely many p the hypotheses hold by 4.7 and the
right side is zero, so with 7.3 the group `Ш(E/ℚ)` is finite. The p-integrality condition
is read through the algebraic Euler factors `ℓ_q`. This is an upper bound; neither the BSD
p-part equality nor a lower bound is claimed.

**Checks.**

- Equal nonunit corrections on both sides cancel; dropping one side gives a false bound.
- `p = 2` is excluded by the factor 2 in the hypothesis.

*Needs:* 4.7, 6.6, 7.3–7.4, 7.6–7.7; `EulerSystemsAndKolyvaginSystems` §4.17;
`SelmerIwasawaCohomology` §2.12.

### 7.9 Finiteness of Selmer groups over abelian fields

Let K be a finite abelian extension of ℚ with `G = Gal(K/ℚ)`. For a stable lattice T of a p-adic
representation of `G_ℚ`, Kato's Selmer group `Sel(K,T) ⊂ H¹(K, T ⊗ ℚ/ℤ)` consists of the classes
whose restriction at every place v of K lies in the image of `H¹_f(K_v, T ⊗ ℚ)`: zero at the
archimedean places, the unramified classes at finite `v ∤ p` and the crystalline classes at
`v | p`. These are the Bloch–Kato conditions of `SelmerIwasawaCohomology` §4.9 at the finite
places (Kato 14.1, pp. 234–235). For a character `χ : G → ℂ^×` let `I_χ ⊂ ℤ[G]` be the kernel of
the ring map `ℤ[G] → ℂ` induced by χ and `M^(χ) = {x ∈ M : I_χ x = 0}`; `L(f,χ,s)` means
`L_S(f,χ,s)`, with χ read as a character of `(ℤ/m)^×` for the least m such that `K ⊂ ℚ(ζ_m)`,
and `S = prime(m)` (Kato, after Theorem 14.2, p. 235).

Call `(f,λ)` *admissible over K* when f has complex multiplication, or some element of
`G_(K(μ_(p^∞)))` has one-dimensional fixed space on `V_λ(f)`; over ℚ this is admissibility.
Every λ of `admissible_of_split` (4.1) is admissible over every abelian K: the image of
`G_(K(μ_(p^∞)))` has finite index in that of `G_(ℚ(μ_(p^∞)))`, so it still contains an open
subgroup of `SL₂(ℤ_p)`, hence a unipotent `[[1,x],[0,1]]` with `x ≠ 0`. In particular every λ is
admissible over K when f has no nontrivial inner twist, and every p when f comes from an
elliptic curve over ℚ (with or without complex multiplication). Admissibility over K passes to
every twist `f_ψ` by a character ψ of G (the newform with `L_S(f_ψ,s) = L_S(f,ψ,s)`), at the
places over λ: an element of `G_(K(μ_(p^∞)))` acts on `V_λ(f) ⊗ ψ` as on `V_λ(f)`.

Prove `blochKatoSelmer_finite` (Kato Theorem 14.2, p. 235). Let `(f,λ)` be admissible over K
and T a stable lattice of `V_λ(f)(r)`.

1. If `1 ≤ r ≤ k−1` and `r ≠ k/2`, then `Sel(K,T)` is finite.
2. If k is even, `r = k/2`, χ is a character of G and `L(f,χ,k/2) ≠ 0`, then `Sel(K,T)^(χ)` is
   finite.

If moreover f has no complex multiplication, the groups in (1) and (2) are zero for all but
finitely many λ and every stable lattice T (Kato 14.22, pp. 249–250). For CM forms that
vanishing is Kato's 15.23, p. 267, deduced from Rubin's main conjecture for imaginary
quadratic fields, which this roadmap does not plan; it is not claimed here.

The proof reduces to `K = ℚ` (Kato 14.6, p. 237). `Sel(K,T) = Sel(ℚ, T ⊗ ℤ[G])`, where σ acts on
`ℤ[G]` by multiplication by the image of `σ^(−1)`; the normalization of `O_F[G]` splits this, up
to kernels and cokernels killed by one nonzero integer c, into Selmer groups of lattices in the
twists `V(f_ψ)(r)`, and vanishing descends when λ does not divide c; in (2) only the twist `f_χ`
enters, whose central value is `L(f,χ,k/2)`. For almost all λ all stable lattices are homothetic
(Kato Lemma 14.7, p. 238, through `integralImage_almostAll` for forms without CM), so vanishing
for one lattice gives it for all. It suffices to treat the group `S(T) ⊃ Sel(T)` with Bloch–Kato
conditions only at the places above p, whose quotient by `Sel(T)` is finite (Kato 14.8, pp.
238–239). For `K = ℚ` and `r ≤ k/2` (Kato 14.13, pp. 242–243), take γ with `γ^± ≠ 0`,
`± = (−1)^(r−1)`, and let z be the image of `z^Ka_γ` (5.1) in `H¹(ℤ[1/p], V(f)(r))` after the
twist by r. By 5.3 at `n = 0` with the twist r in place of `k − r`, the period of the dual
exponential of z is `(2πi)^(r−1) L_({p})(f*,k−r) γ^±`; it is nonzero, since for `r < k/2` the
point `k − r` lies in the region `Re(s) ≥ (k+1)/2` of 4.2(1), for `r = k/2` the value is the
hypothesis, and the removed Euler factor at p is nonzero by purity (Kato (14.10.5), p. 241). Let
𝔭 be the kernel of `Λ → O`, `σ_c ↦ c^(−r)`, a height-one prime not containing p. Then `Z(f)`
generates `H¹(V(f))_𝔭`, the local term of 7.2 vanishes at 𝔭 (it can be nonzero only when
`k = 2`, and then `r = 1` and 𝔭 is the kernel of `κ^(−1)`, which is not of the form `κ^(−2)χ`),
and 7.2 gives `H²(V(f))_𝔭 = 0`. Specialization at 𝔭 gives `H²(ℤ[1/p], V(f)(r)) = 0`, so
`H²(ℤ[1/p],T)` is finite and `H¹(ℤ[1/p],T)` has rank one, its `H⁰` being zero. Locally,
`H¹(ℚ_p, V(f)(r))` has dimension two, `H¹_f` has dimension one, and `H⁰` and `H²` vanish (Kato
Proposition 14.12, pp. 241–242, from the local computation in the proof of 12.5(3)); the dual
exponential kills `H¹_f`, so z is nonzero in the one-dimensional quotient. The Poitou–Tate
sequences with Bloch–Kato conditions at p (`SelmerIwasawaCohomology` §§2.19–2.20 with §4.9; Kato
(14.9.3)–(14.9.4), pp. 239–240, exact for p odd and exact up to multiplication by 2 for `p = 2`,
which does not affect finiteness) then make `S(T*(1))` and `S(T)` finite. For `r ≥ k/2` use the
duality `V(f*) ≅ Hom_E(V(f),E)(1−k)` of Kato (14.10.1), which exchanges r with `k − r` and f
with `f*`. Vanishing for almost all λ combines the integral bound `katoTamagawaBound` below, the
strongly divisible lattices of Fontaine and Messing for `p > k` and `p ∤ N′` (`N′ ≥ 3` a
multiple of N), the vanishing of `H⁰` of `T ⊗ ℚ/ℤ` and of its dual for almost all λ (Kato
Proposition 14.11(2), p. 241), and the fact that the period-normalized critical value, a nonzero
element of F, is a λ-adic unit for almost all λ (Kato 14.16–14.22, pp. 244–250); (12.5.2) holds
for almost all λ by `integralImage_almostAll`.

Prove `abelianBlochKatoComparison`: for an abelian variety A over a number field K, a prime p and
every finite place v of K, `H¹_f(K_v, V_pA)` is the image of `A(K_v) ⊗ ℚ_p` under the Kummer map,
and it is zero when `v ∤ p`; hence the Selmer group of `T_pA` defined above is the classical
`Sel_(p^∞)(A/K)`, the direct limit of the `[p^m]`-Selmer groups `abelianSelmerGroup` of
`SelmerIwasawaCohomology` §2.12a (Bloch–Kato, Example 3.11, pp. 359–361;
Kato p. 235, after 14.1). `SelmerIwasawaCohomology` §4.26 proves this for elliptic curves. Its
proof (the Raynaud uniformization over a semistable extension, the logarithm of Bloch–Kato's
Example 3.10.1, and descent through finite Galois extensions, with the suppliers it names) uses
no property special to dimension one, and is the proof here. Away from p both conditions are
zero: `H¹_f(K_v, V_pA) = H¹_ur(K_v, V_pA)` has the dimension of `H⁰(K_v, V_pA)`, which is zero
because Frobenius has no eigenvalue one on the inertia invariants (weights one and two), and
`A(K_v) ⊗ ℚ_p/ℤ_p = 0` because `A(K_v)` has a pro-ℓ subgroup of finite index, ℓ the residue
characteristic.

Prove `modularAbelianVariety_selmer_finite` (Kato Corollary 14.3, pp. 235–236). Let A be an
abelian variety over ℚ isogenous to a product of the abelian varieties `A_f` of weight-two
newforms f (`ModularCurvesPartII` §16.2). Kato states the corollary for quotients of `J₁(N)`,
and these are of this kind: `J₁(N)` is isogenous to a product of the `A_f` of the newforms of
level dividing N (Diamond–Shurman, *A First Course in Modular Forms*, Theorem 6.6.6), each `A_f`
is simple over ℚ because its endomorphism algebra over ℚ is the field `K_f` (Ribet, Math. Ann.
253 (1980)), and by Poincaré reducibility a quotient is isogenous to a product of simple
factors. Let K and χ be as above with `L(A,χ,1) ≠ 0`, where `L(A,χ,s)` is the product of the
`L(f^σ,χ,s)` over the newform constituents and their Galois conjugates. Then `A(K)^(χ)` is
finite. For every prime p such that each constituent is admissible over K at every place above
p, `Sel_(p^∞)(A/K)^(χ)` is finite; this holds for all but finitely many p, and for every p when
A is an elliptic curve. If no constituent has complex multiplication, `Sel_(p^∞)(A/K)^(χ)` is
zero for all but finitely many p. Proof: finiteness of Selmer groups and of Mordell–Weil χ-parts
is invariant under isogeny; `V_p(A_f)` is the sum over `λ | p` of the `V_λ(f)(1)`
(`AutomorphicGaloisRepresentations` §6.1, written in Kato's normalization, in which
`T_pE = T(1)` for a lattice T of `V_λ(f)` when `A_f = E`); `abelianBlochKatoComparison`
identifies the Selmer groups; part (2) of `blochKatoSelmer_finite` at `k = 2`, `r = 1` applies
to each constituent at each place above p; and the χ-part of `A(K) ⊗ ℚ_p/ℤ_p` lies in the χ-part
of the Selmer group, so one admissible p bounds the rank of `A(K)^(χ)` by zero, while `A(K)` is
finitely generated (`HeightsRationalPointsAndObstructions` §1.7). The χ-part and the χ-quotient
`M/I_χM` differ by groups killed by a nonzero integer (Kato, p. 236), so either may be used. For
an elliptic curve E over ℚ with `L(E,1) ≠ 0` this gives finite `Sel_(p^∞)(E/ℚ)` for every p,
including CM curves and `p = 2`, and zero for all but finitely many p when E has no CM.

Prove `modularAbelianVariety_cyclotomicFG` (Kato Theorem 14.4, p. 236, a deduction Kato
attributes to Coates, following Rohrlich, Invent. Math. 75 (1984), §3). For A as in the
corollary and every `m ≥ 1`, the group `⋃_n A(ℚ(ζ_(m^n)))` is finitely generated. Proof: the
torsion of A over `ℚ(μ_∞)` is finite (Ribet's appendix to Katz–Lang, 1981). For the rank,
decompose `A(ℚ(ζ_(m^n))) ⊗ ℂ` into χ-components for the characters χ of conductor dividing
`m^n`. By Rohrlich's theorem (4.2(2) at `k = 2`, for each constituent and the finite set
`prime(m)`), `L(A,χ,1) ≠ 0` for all but finitely many such χ, and the corollary kills those
components. The finitely many remaining characters factor through one layer `ℚ(ζ_(m^(n₀)))`,
so their components lie in `A(ℚ(ζ_(m^(n₀)))) ⊗ ℂ`, which is finite-dimensional by Mordell–Weil.
The descent of 7.3 then applies: choose a layer L containing the torsion `T₀` and generators of
the rational span; for every point P some `nP` lies in `A(L)`, so `σ ↦ σP − P` is a
homomorphism from `Gal(ℚ(ζ_(m^∞))/L)` to `T₀`, killed by the exponent e of `T₀`. That group is
topologically finitely generated abelian, so its subgroup of e-th powers is open, and every
point lies in one finite layer.

Prove `katoTamagawaBound` (Kato Theorem 14.5, pp. 236–237). Let `1 ≤ r ≤ k−1`, `(f,λ)` admissible
and T a stable lattice of `V_λ(f)(r)`; if `r = k/2` assume `L(f,k/2) ≠ 0`.

1. `H²(ℤ[1/p],T)` is finite and `H¹(ℤ[1/p],T)` has O-rank one.
2. If `r > k/2` assume also `L_({p})(f,k−r) ≠ 0`. For γ with `γ^± ≠ 0`, `± = (−1)^(r−1)`, the image
   z of `z^Ka_γ` in `H¹(ℤ[1/p], V_λ(f)(r))` is a basis of this one-dimensional E-space.
3. Assume moreover p odd, `k ≥ 3` or f potentially of good reduction at p, the image condition
   (12.5.2) of 7.2, and `γ^±` an O-basis of `T(−r)^±`. Then
   `#H²(ℤ[1/p],T) ≤ [H¹(ℤ[1/p],T) : z]`.

Here, for a finitely generated O-module M of rank one and `z ∈ M ⊗ ℚ` nonzero, write
`z = c^(−1)y` with `y ∈ M` and c a nonzero integer, and put
`[M : z] = [M : O y] · [O : cO]^(−1)`, which does not depend on the choices (Kato, p. 237). The
Tamagawa number conjecture of Bloch–Kato, in the form of Fontaine–Perrin-Riou and Kato, predicts
equality in (3); equality is not claimed. Parts (1) and (2) are proved with
`blochKatoSelmer_finite` (Kato 14.13). Part (3) applies the integral bound of 7.2 at the
augmentation prime: since Λ is a finite product of regular local rings, that prime is principal,
and the descent sequence of Kato (14.14.1) compares `H¹(T)/a H¹(T)` and `H²(T)` with the
cohomology over `ℤ[1/p]` (Kato 14.14, p. 243). In the printed 14.5(3) the condition "(12.5.1) in
Thm. 12.5 (4)" is the image condition (12.5.2) of 12.5(4), on which 14.14 rests; the
exceptional case (12.5.1) is already excluded by `k ≥ 3` or potentially good reduction. In
14.13, p. 242, the period of z is written `L_({p})(f,k−r)·γ^±`; 12.5(1) gives
`(2πi)^(r−1) L_({p})(f*,k−r)·γ^±`, which has the same vanishing, since `L(f*,s)` is the complex
conjugate of `L(f,s)` at real s.

**Checks.**

- At `k = 2` the only critical twist is `r = 1 = k/2`, so part (1) is empty and part (2) needs
  the L-value: an elliptic curve with `L(E,1) = 0` and a point of infinite order has
  `Sel_(p^∞)(E/ℚ)` of positive corank, so the hypothesis cannot be dropped.
- At `k = 3` both critical twists `r = 1, 2` differ from `k/2`, and finiteness holds with no
  L-value hypothesis: `L(f,2)` is on the line `Re(s) = (k+1)/2` of 4.2(1), and `L(f*,2)` is its
  conjugate.
- The conclusion is componentwise: if `L(E,1) ≠ 0` and `L(E,χ,1) = 0` for the quadratic
  character χ of K, the trivial-character part of `Sel(K,E)` is finite while the χ-part may have
  positive corank.
- Under the hypotheses of (3) the residual representation is irreducible, so `H¹(ℤ[1/p],T)` is
  torsion-free of rank one, say `≅ O`. For `z = p^(−1)` in it, `[O : z] = [O : pO]^(−1) < 1`, so
  the bound of `katoTamagawaBound` (3) forces z into `H¹(ℤ[1/p],T)`, the integrality of 7.2; a
  normalization without the factor `[O : cO]^(−1)` would not see this.
- For `m = 1` the union in `modularAbelianVariety_cyclotomicFG` is `A(ℚ)`, and the statement is
  Mordell–Weil.

*Needs:* 4.1–4.2, 5.1, 5.3, 7.2–7.3; `PadicFamilies` §4.0.3; `SelmerIwasawaCohomology` §§2.12a,
2.19–2.20, 4.9, 4.26; `AutomorphicGaloisRepresentations` §6.1;
`ModularCurvesPartII` §16.2; `HeightsRationalPointsAndObstructions` §1.7; `ModularForms` Layers 7
and 9.

### Examples

The localized lengths `(2,1,1)` need a local correction and `(2,1,0)` violate the bound. A
zero zeta map is compatible with a rank-one ambient module, so 7.1 needs nonvanishing. A split
multiplicative refinement `α = 1` has zero trivial-character Coleman value and keeps J. In good
ordinary reduction a nonunit `(1 − α^(−1))²` cancels against the control factor. Off the
central point Kato's Selmer finiteness needs no L-value hypothesis (weight three), while at
weight two the central value is the whole hypothesis.

### Dependencies

Layers 2–6; `PadicFamilies` §4.0.3; `EulerSystemsAndKolyvaginSystems` §§4.17, 8.16,
8.37–8.39; `SelmerIwasawaCohomology` §§2.12, 2.12a, 2.15, 2.19–2.20, 3.9–3.11, 3.18–3.20, 4.9,
4.26; `AutomorphicGaloisRepresentations` §6.1;
`ModularCurvesPartII` §16.2; `HeightsRationalPointsAndObstructions` §1.7;
`PadicHodgeRegulators` §§8.22, 9.36; `ModularSymbolsPadicLFunctions` §§0.2, 2.5;
`PadicMeasuresIwasawaAlgebras` §§4.2–4.6; `ModularForms` Layers 7 and 9; `EllipticCurves`
Layers 1, 4 and 6.

## Downstream consumers

`ModularIwasawaMainConjectures` and `AutomorphicCongruences` use the dictionary of 2.2, the
canonical and twist-one morphisms of Layer 5, the regulator comparison of 6.2–6.4 and the bounds
of 4.3 and 7.2, with the integral hypotheses as stated there: 4.3 needs a free rank-one
τ-quotient and residual irreducibility, 7.2 needs the `SL₂(ℤ_p)` image, and 7.4 and 7.8 need
surjectivity. `RankZeroOneBSD` uses the reciprocity and interpolation statements through 5.3 and
7.1–7.2, the elliptic bounds of 7.4 and 7.8, and the finiteness of `Sel_(p^∞)(E/ℚ)` at every p
when `L(E,1) ≠ 0` from 7.9. `EllipticRegulators` uses the Siegel-unit identities of Layer 0 and
the K₂ relations of Layer 1.

`PadicFamilies` and `EulerSystemsAndKolyvaginSystems` are suppliers of this roadmap and import
nothing from it: the Hida-family classes of `PadicFamilies` §4.5 interpolate the geometric
classes of its own §4.0, and the general Euler-system theorems leave each application to supply
its classes. The modular Euler system of 2.1 and the passage from Kato's hypotheses to Rubin's in
4.3 are this roadmap's application of that theory.

## References

All statements here are paraphrases. Page numbers refer to the stated edition.

- Kazuya Kato, *p-adic Hodge theory and values of zeta functions of modular forms*,
  Astérisque **295** (2004), 117–290.
  [Numdam](https://www.numdam.org/item/AST_2004__295__117_0.pdf).
  Locators used: 1.3–1.10 (pp. 121–125), 2.3–2.13 (pp. 126–133), 3.1–3.11 (pp. 134–142),
  4.2 (pp. 142–143), 5.2 (pp. 153–154), 6.3–6.6 (pp. 161–163), 8.9 (p. 185), 9.2–9.4
  (pp. 186–188), 11.3–11.4 (pp. 204–207), 12.4–12.9 (pp. 221–223), 13.1–13.14 (pp. 224–234),
  14.1–14.14 (pp. 234–243), 14.16–14.22 (pp. 244–250),
  15.12–15.17 (pp. 263–265), 16.2–16.6 (pp. 269–271), 17.3–17.4 (p. 273). Corrections used
  here: the square on `a` in 1.9 (0.3), the space of `η′` in 16.4(ii) (6.1), the integral
  modules in 12.5(4) (7.2), the scope of 12.8.2 (4.1), the condition (12.5.2) printed as
  (12.5.1) in 14.5(3), and the period of z in 14.13 (7.9).
- Kentaro Nakamura, *Zeta morphisms for rank two universal deformations*, Invent. Math. **234**
  (2023), 171–290. [arXiv:2006.13647](https://arxiv.org/abs/2006.13647). §§3.1.2–3.1.4
  (pp. 205–214), Lemma 2.10 (pp. 200–202), Lemma 3.4, Remark 3.5, Corollary 3.6
  (pp. 221–222), Theorem 5.2 (pp. 253–254), Appendix A (pp. 265–269); the published
  pagination is used.
- Kentaro Nakamura, *Iwasawa theory of de Rham (φ,Γ)-modules over the Robba rings*,
  J. Inst. Math. Jussieu **13** (2014).
  [arXiv:1201.6475 v2](https://arxiv.org/abs/1201.6475), Theorem 1.5 (= Theorem 3.10).
- Pierre Colmez, *Théorie d'Iwasawa des représentations de de Rham d'un corps local*,
  Ann. of Math. **148** (1998), 485–571, Theorem 7.
- Bernadette Perrin-Riou, *Théorie d'Iwasawa des représentations p-adiques sur un corps local*,
  Invent. Math. **115** (1994), 81–149; *Théorie d'Iwasawa p-adique locale et globale*,
  Invent. Math. **99** (1990), 247–292, Théorème 3.1 and §6.
- Peter Schneider, *p-adic height pairings II*, Invent. Math. **79** (1985), 329–374, §2 and
  §A.1, Lemma 6.
- Ralph Greenberg, *Iwasawa theory for elliptic curves*, in Arithmetic Theory of Elliptic
  Curves, Lecture Notes in Math. **1716** (1999), Theorem 4.1.
- Karl Rubin, *Euler Systems*, public 1999 draft,
  [swc-math.github.io](https://swc-math.github.io/notes/files/99RubinES.pdf): Chapter III §5
  (draft pp. 48–54, printed page = PDF page − 10) and Appendix B, Lemma 3.1 (pp. 153–154).
  This is the freely available draft, not the pagination of the Annals of Mathematics Studies
  volume.
- Ashay A. Burungale and Ye Tian, *A rank zero p-converse to a theorem of Gross–Zagier,
  Kolyvagin and Rubin*, [arXiv:2506.03465 v2](https://arxiv.org/abs/2506.03465), Theorems
  2.3–2.4 and Remark 2.5, pp. 4–5.
- David Loeffler, *Images of adelic Galois representations for modular forms*, Glasgow Math. J.
  **59** (2017), 11–25. [arXiv:1411.1789](https://arxiv.org/abs/1411.1789), §1 items (A)–(C),
  Theorems 2.2.2 and 2.3.1, Corollary 2.2.3.
- Kenneth A. Ribet, *On ℓ-adic representations attached to modular forms II*, Glasgow Math. J.
  **27** (1985), 185–194; Fumiyuki Momose, *On the ℓ-adic representations attached to modular
  forms*, J. Fac. Sci. Univ. Tokyo **28** (1981), 89–109; Eknath Ghate, Enrique
  González-Jiménez and Jordi Quer, *On the Brauer class of modular endomorphism algebras*,
  IMRN 2005, no. 12, 701–723, Corollary 4.7.
- Jean-Pierre Serre, *Propriétés galoisiennes des points d'ordre fini des courbes
  elliptiques*, Invent. Math. **15** (1972), 259–331, Théorèmes 2–3.
- Hervé Jacquet and Joseph Shalika, *A non-vanishing theorem for zeta functions of `GL_n`*,
  Invent. Math. **38** (1976), 1–16; David E. Rohrlich, *L-functions and division towers*,
  Math. Ann. **281** (1988), 611–632, and *On L-functions of elliptic curves and cyclotomic
  towers*, Invent. Math. **75** (1984), 409–423, §3.
- Spencer Bloch and Kazuya Kato, *L-functions and Tamagawa numbers of motives*, in The
  Grothendieck Festschrift I, Progr. Math. **86** (1990), 333–400, §3 and Examples 3.10.1 and
  3.11 (pp. 359–361).
- Jean-Marc Fontaine and William Messing, *p-adic periods and p-adic étale cohomology*,
  Contemp. Math. **67** (1987), 179–207.
- Kenneth A. Ribet, *Torsion points of abelian varieties in cyclotomic extensions*, appendix to
  N. Katz and S. Lang, *Finiteness theorems in geometric classfield theory*, Enseign. Math.
  **27** (1981), 285–319.
- Fred Diamond and Jerry Shurman, *A First Course in Modular Forms*, Graduate Texts in Math.
  **228** (2005), Theorem 6.6.6; Kenneth A. Ribet, *Twists of modular forms and endomorphisms of
  abelian varieties*, Math. Ann. **253** (1980), 43–62.
- Charles A. Weibel, *The K-book*, Graduate Studies in Math. **145** (2013), Chapter III,
  Corollary 1.7.1 (p. 8) and Exercise 5.6 (p. 46);
  [author's site](https://sites.math.rutgers.edu/~weibel/Kbook.html).
