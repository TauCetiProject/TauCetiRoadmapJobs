# Roadmap: Siegel and PEL moduli problems, part II: unitary integral and formal moduli

**Summary.** This roadmap builds the integral and formal moduli of unitary type that the arithmetic of
unitary Shimura varieties uses: strict formal O-modules and their O-displays; the unitary
Rapoport–Zink spaces of principal, almost self-dual, exotic and Krämer type, with their special
homomorphism spaces; the integral CM moduli at every prime; the integral models of
Rapoport–Smithling–Zhang, Li–Liu, He–Li–Shi–Yang and Liu–Tian–Xiao–Zhang–Zhu built from pairs of a
CM abelian scheme and a unitary abelian scheme; and the formal uniformization of their basic loci.
It starts from the generic PEL data, determinant condition, levels, canonical models, displays and CM
moduli of PELModuli, where that roadmap stops at good primes, at the principal unramified case and at
primes unramified in the CM field. Its end theorems are the formal smoothness or regular semistable
reduction of the four families of local spaces (§§1.2, 2.2, 3.4, 5.7) and the two connected
components of the exotic space over every p-adic field (§3.7); the finite étaleness of the CM moduli
at every prime (§6.6); the smoothness, regular semistable reduction and quasi-projectivity of the
global integral models (§§7.2, 7.7, 7.8, 7.9, 8.3, 8.7); and the uniformization of their basic loci by
the local spaces (§§9.5–9.10). A polarization kernel, a signature convention, an integral Lie
annihilation equation and a coefficient field are part of every statement: none of them can be
recovered from the generic Shimura variety.

## Scope and ownership

This roadmap owns: strict formal O-modules, O-displays, relative duality and the Lubin–Tate frame
comparison (§0.1); representability of polarized PEL framed functors for an arbitrary self-dual
periodic multichain, and of the unitary framed functors of Layers 1–5 (§0.2); principal hermitian
modules, Mihatsch's relative comparison and the conjugation of signature conventions (§§0.3–0.7);
the unitary Rapoport–Zink spaces of principal, almost self-dual, exotic and Krämer type, their
special homomorphism spaces, the rank-raising embedding and the diagonal graph (Layers 1–5), with
the two connected components of the exotic space over every finite K/ℚ_p (§3.7); the
absolute-to-relative exotic comparison (Layer 4); the global CM and lattice data of the
Rapoport–Smithling–Zhang (RSZ) setting, including the integral CM moduli at every prime, which extends
PELModuli §M4.7 beyond primes unramified in the CM field (Layer 6); the RSZ, Li–Liu, He–Li–Shi–Yang and
Liu–Tian–Xiao–Zhang–Zhu integral models, in particular the models of LTXZZ22 §§4.2 and 5.2 (Layers 7
and 8); and the Tate–Dieudonné comparison for basic CM pairs, quotients of formal schemes by discrete
groups and the basic-locus uniformizations (Layer 9).

It leaves to other roadmaps, by section:

- Zink displays and the functor BT to formal p-divisible groups are PELModuli §M2.15; the
  equivalence over every ring in which p is nilpotent is the contract gap:zink-display-equivalence.
- The PEL Rapoport–Zink space of an unramified local PEL datum with a single self-dual lattice, and
  the unstructured framed deformation functor of a p-divisible group, are IgusaVarietiesAndTorsionConcentration
  §IG.0.27. §0.2 differs in one clause: it treats an arbitrary self-dual periodic multichain over a
  ramified or unramified datum, which the almost self-dual, exotic and Krämer spaces need.
- Strict dimension-one Dieudonné classification and strict O-module deformations with Drinfeld
  levels are EndoscopicTransferAndUnitaryTraceComparison §§7.6 and 10.2; Tate full faithfulness over
  finite fields, Honda theory and the B-linear isogeny classification are its §§8.3 and 8.10.
- The split Drinfeld-level integral models at a split distinguished place are
  IgusaVarietiesAndTorsionConcentration §IG.0.31.
- Locally noetherian formal schemes and the Berthelot generic fibre are AdicSpacesPartIII Layer F0
  and §R2.9; descent, algebraic spaces and stacks are SchemeAndStackFoundations Layer 1, formal
  deformation theory its Layer 4; Grassmannians and their tangent spaces are
  AlgebraicModuliForArithmeticGeometry §1.3.
- p-divisible groups and their Dieudonné theory are FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer
  R07.1 and §§R07.2.10, R07.2.17, R07.2.20, R07.2.26; Grothendieck–Messing, effectivity of polarized
  formal lifts and Serre–Tate with structures are AbelianSchemesAndArithmeticModuli §§A4.7–A4.9.
- Hermitian lattices and local hermitian forms are GeometryOfNumbersAndQuadraticArithmetic §§2.7 and
  2.9, the forms of a unitary datum and the Hasse principle are PELModuli §§M3.1–M3.2; the existence of
  a global hermitian space with prescribed local invariants is the contract gap:hermitian-local-global.
- Smoothness of the automorphism group scheme of a polarized unitary lattice multichain is the
  contract gap:unitary-multichain-stabilizer.
- Quasi-projectivity and properness of PEL moduli at good primes are ShimuraCompactifications §§C5.5
  and C5.18; at the remaining primes and parahoric levels they are the contract
  gap:bad-prime-projectivity.

The special-fibre geometry built on the models of Layers 7 and 8 — the basic isogeny correspondence
of LTXZZ22 Theorem 4.3.5, the balloon, ground and link strata, link cohomology, the semistable
product resolution and the first geometric reciprocity law — is SelmerIwasawaCohomologyPartII Layer 2
and §5.2, a consumer of this roadmap (see Downstream consumers). Zhang21 Lemmas 7.10(b) and 7.11 on
F-linear characteristic polynomials are not used here.

## Conventions

*Local notation.* K is a finite extension of ℚ_p, L/K is quadratic, p>2, and a↦ā is the nontrivial
automorphism of L/K. ϖ is a uniformizer of K and q the cardinality of its residue field. When L/K is
ramified, u is a uniformizer of L with ū=−u, so u²=ϖ·(unit). A breve accent (K̆, L̆, Ĕ) denotes the
completion of a maximal unramified extension.

*Bases.* For a complete local ring O with residue characteristic p, Nilp_O is the category of locally
noetherian schemes over Spf O on which p is locally nilpotent, with the Zariski topology. Formal moduli
are functors on Nilp of the appropriate coefficient ring. A framing is defined over the subscheme cut
out by the uniformizer, which need not be reduced. A formal space is locally formally of finite type;
quasi-compactness and the p-adic topology are not presumed.

*Strict modules and heights.* Strict O_K-modules have the structural O_K-action on Lie. Relative height
2n means absolute p-height 2n[K:ℚ_p], and the strict object then has dimension n. The relative dual of
§0.1 depends on the chosen uniformizer and is not the Cartier dual. For a hermitian Hom pairing
h(x,y) the first argument is L-linear and the second conjugate-linear. Exact preservation of a
polarization, preservation up to an O_K-unit, and a common rational scalar on a pair are three
separately specified arrow conventions.

*Signature conventions.* The unramified local Layers 1–2 use signature (1,n−1), with rank-one source
ℰ̄ of signature (0,1). The global convention of Zhang21 is (n−1,1); switching conventions conjugates
the target action, the source action and the framing together (§0.7). Layers 3–4 use the even-rank
exotic convention (n−1,1) with a separate principal CM source of signature (1,0), and the local form
h^exo(x,y)=u⁻²λ₀⁻¹y^∨λx. Layer 5 uses the Krämer convention (1,n−1), with conjugate rank-(n−1)
subbundle and structural rank-one quotient; its comparison with the global Krämer model of §7.5
conjugates these actions.

*Global notation.* F/F⁺ is a CM extension, Φ a CM type, r the unitary signature, v₀ the distinguished
finite place and E the reflex field indicated. For a fixed p-adic embedding, F_u is the closure of F,
the completion at the place above u induced by the embedding, and the Li–Liu coefficient field is
K=F_uE_Φ, used only under the admissibility and unramifiedness hypotheses of §§6.2 and 6.4. In the
exotic global setting the hermitian form is h′=ϖ⁻¹λ₀⁻¹y^∨λx with `ϖ∈O_{F⁺}` totally positive and
val_u(ϖ)=1, so that h′=(u²/ϖ)·h^exo with u²/ϖ a unit at u (§9.6). Nonempty CM components and their
polarization ideals are input data. Neatness is imposed on both factors whenever a scheme rather than
a stack is asserted. A claimed regular or semistable model is always over the named coefficient
discrete valuation ring.

*Conventions fixed by a computed witness.*

1. At n=3 and [K:ℚ_p]=2 a strict local object has relative height 6, absolute height 12 and dimension
   3; absolute height 6 would specify a different carrier.
2. In the unramified mixed construction at n=2 signatures add as (1,1)+(0,1)=(1,2); adding the
   unconjugated source gives (2,1). At q=3 the source product polarization has degree 9·9 and the
   principal target forces the isogeny degree 9, not q^(n+1)=27; the first generic projection has
   degree 4. A global representative also carries away-p degree factors.
3. Over 𝔽₃ the nonzero matrix with rows (0,1) and (0,0) has characteristic polynomial T² and square
   zero, so the characteristic polynomial T² does not force the action to vanish: the Eisenstein
   equations of §§0.4 and 6.5 are imposed as equations on the action.
4. A crossing over a discrete valuation ring is uv=ϖ. After a ramified coefficient extension ϖ=tᵉ with
   e>1, uv=tᵉ has embedding dimension 3 and dimension 2 at (u,v,t), so it is not regular there.
   Smoothness is stable under arbitrary base change; this regularity is not.
5. In the rank-two Krämer chart y(1+x²)=2u every geometric root of 1+x² is simple because p is odd;
   with z=(1+x²)/2 the chart is étale locally yz=u. It lives over `O_L̆=O_{F̆_{v₀}}`, where u stays a
   uniformizer after an unramified extension `E_ν/F_{v₀}`, so it gives a regular global rank-two
   Krämer model (§7.8). The ramified base change of RSZ21 Remark 6.8 concerns the wedge model, whose
   rank-two chart uv=ϖ lives over `O_{F⁺_{v₀}}` and fails by item 4.
6. For the graph of §1.6 at n=4 the relative dimensions are 2 and 5 and the arithmetic dimensions 3
   and 6; "half-dimensional" refers to the latter.
7. For a complex point of the smooth model of rank N=3 the source Hodge subspace at τ∞ is zero, so
   requiring maps to carry it into the target Hodge subspace imposes nothing and leaves dimension 3;
   the period line `Hom_ℂ(H₁^dR(A₀)_{τ∞},ω_{A∨,τ∞})` has dimension 1.
8. In the exotic global setting at n=2 the global and local forms on the same Hom space differ by
   u²/ϖ: with val_u(ϖ)=1 this is a unit and lattice duality agrees; with val_u(ϖ)=0 the dual of a
   self-dual lattice moves by one valuation.

## Exact supplier contracts

Each supplier is consumed at the sections named. What a supplier must add is stated as a gap contract
in that supplier's subsection, and every target that needs it lists it in its *Needs:* line.

### From Mathlib

The pinned Mathlib has no formal schemes, no p-divisible groups or strict modules over a base and no
abelian schemes with PEL structure; these are the carriers the targets below construct or import.
The declarations consumed, with what is assumed of them:

- `LinearMap.charpoly` (`Mathlib/LinearAlgebra/Charpoly/Basic.lean`): the characteristic polynomial of
  an endomorphism of a finite free module over a commutative ring, with `LinearMap.charpoly_monic` and
  `LinearMap.charpoly_natDegree` (the latter under `StrongRankCondition`). It carries the Lie
  characteristic polynomials of §§0.3, 0.4 and 6.5; it does not express the annihilation equations,
  which are separate.
- `Matrix.charpoly` (`Mathlib/LinearAlgebra/Matrix/Charpoly/Basic.lean`): the characteristic polynomial
  of a square matrix, used in item 3 of the Conventions.
- `Module.Grassmannian` (`Mathlib/RingTheory/Grassmannian.lean`): submodules of a module whose
  quotient is finite projective of constant rank k. It is the set of R-points of the Grassmannians of
  quotients used in §§0.6, 1.2, 5.1 and 7.6; their representability and smoothness are imported from
  AlgebraicModuliForArithmeticGeometry §1.3.
- `WittVector` (`Mathlib/RingTheory/WittVector/Defs.lean`) and `WittVector.Isocrystal`
  (`Mathlib/RingTheory/WittVector/Isocrystal.lean`): p-typical Witt vectors and isocrystals over the
  fraction field of W(k) for a perfect field k. The relative O-Witt vectors of §0.1 and the relative
  isocrystals of §§1.5 and 5.4 are new.
- `IsRegularLocalRing` (`Mathlib/RingTheory/RegularLocalRing/Defs.lean`): regularity of a noetherian
  local ring, the notion meant by "regular" in §§2.2, 5.6, 5.7, 7.8, 7.9 and 8.3.
- `AlgebraicGeometry.Scheme`, `AlgebraicGeometry.Flat`, `AlgebraicGeometry.Smooth` and
  `AlgebraicGeometry.SmoothOfRelativeDimension` (`Mathlib/AlgebraicGeometry/Scheme.lean`,
  `Mathlib/AlgebraicGeometry/Morphisms/Flat.lean`, `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean`):
  schemes and flat and smooth morphisms; formal smoothness of a formal moduli space is a different
  notion, built over AdicSpacesPartIII Layer F0.

### From Tau Ceti

- `TauCeti.AlgebraicGeometry.AbelianVariety` (`TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean`):
  abelian varieties over a field, with smooth structure morphism. It is the carrier of the abelian
  varieties over F̄_p in §9.1; abelian schemes over a discrete valuation ring or a nilpotent thickening
  are not supplied and are imported from AbelianSchemesAndArithmeticModuli.

### From TauCetiRoadmap.PELModuli

§§M0.4, M0.6, M0.7, M0.10, M0.16–M0.18, M0.22–M0.25 (symplectic lattices, PEL data, the similitude group, bad primes and the good-prime base,
reflex fields, the Kottwitz determinant condition, hermitian and skew-hermitian spaces, generalized CM
types); §§M1.1, M1.6, M1.7, M1.9, M1.13 (quasi-isogenies, level structures, the moduli problem M_H
over a base of good primes, the adelic problem, level change and Hecke action); §§M2.8, M2.11, M2.12,
M2.14, M2.15 (representability and smoothness at good primes, properness when End_B(V) is a division
algebra, deformations of unitary abelian schemes, kernel ranks of isogenies, displays); §§M3.1–M3.2,
M3.8 (forms of the skew-hermitian module, the Hasse principle, the hermitian space of homomorphisms
from a CM object); §§M4.3, M4.5–M4.8 (canonical models, normalized models at higher p-level, CM moduli
at primes unramified in F); §M5.5 (unitary PEL data with prescribed signatures). These are assumed
as stated there, in particular only over a base of good primes where PELModuli says so.

What PELModuli must provide (gap:zink-display-equivalence): For every ring R in which p is nilpotent, prove that BT is an equivalence from nilpotent displays over R to formal p-divisible groups over R, compatible with base change and with duality of biformal objects.

### From TauCetiRoadmap.AbelianSchemesAndArithmeticModuli

§§A4.1, A4.3, A4.7, A4.8, A4.9 (integral Tate modules, first de Rham cohomology, Grothendieck–Messing,
effectivity of polarized formal lifts, Serre–Tate with structures); §§A6.10, A6.11, A6.13
(characteristic polynomials, their Tate-module form, degrees of polarized isogenies).

### From TauCetiRoadmap.FiniteFlatGroupsAndIntegralPadicHodgeTheory

Layer R07.1 (finite flat group schemes and p-divisible groups); §§R07.2.10, R07.2.17, R07.2.20,
R07.2.26 (Dieudonné classification over perfect fields, isogeny classification, the covariant
Dieudonné module and the comparison of conventions, rigidity along nilpotent thickenings).

### From TauCetiRoadmap.EndoscopicTransferAndUnitaryTraceComparison

§7.6 (PEL Dieudonné comparison and quasi-isogeny groups, used for strict O-linear modules of dimension
one); §10.2 (strict O-module deformations with Drinfeld levels, used at height one for the canonical
rank-one lifts); §§8.3, 8.10 (Tate full faithfulness over finite fields and Honda classification; the
B-linear isogeny classification).

### From TauCetiRoadmap.IgusaVarietiesAndTorsionConcentration

§IG.0.27 (PEL Rapoport–Zink spaces of an unramified local PEL datum, and the unstructured framed
deformation functor, whose formal representability is the first step of §0.2); §IG.0.31 (Drinfeld-level
integral models at a split distinguished place for the signature-(1,n−1) datum, with the CM-type
matching of RSZ20 §4.3).

### From TauCetiRoadmap.AdicSpacesPartIII

Layer F0 (locally noetherian formal schemes, adic and finite-type morphisms, completions); §R2.9 (the
Berthelot generic fibre on Conrad's category FS_C and étaleness of generic fibres).

### From TauCetiRoadmap.SchemeAndStackFoundations

Layer 1 (descent, algebraic spaces and stacks) for the algebraic integral models; Layer 4
(deformations, formal schemes and models) for the local-model charts.

### From TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry

§1.3 (coherent quotients, Plücker embeddings and the tangent Hom formula of Grassmannians).

### From TauCetiRoadmap.GeometryOfNumbersAndQuadraticArithmetic

§§2.7, 2.9 (hermitian lattices, duals and invariant factors; signed hermitian forms over local fields of
odd residue characteristic).

### From TauCetiRoadmap.PadicHodgeTheory

§§3.3–3.5 (Fontaine's functors, filtered Frobenius modules, crystalline classification); §8.3 (abelian
varieties and good reduction).

### From TauCetiRoadmap.ShimuraVarieties

§1.7 (compact-open level category); §§2.5–2.7 (Baily–Borel quotients and their algebraization); §4.5
(torus canonical models); §5.10 (main theorem of complex multiplication); §6.7 (canonical models of
abelian type).

### From TauCetiRoadmap.AdelicAlgebraicGroups

§4.1 (weak approximation and torsors) is the section that receives the following contract.

What AdelicAlgebraicGroups must provide (gap:hermitian-local-global): For a CM extension F/F⁺, prove that a global F/F⁺-hermitian space with prescribed real signatures and finite local invariants exists exactly when the invariants satisfy the product formula, and is unique up to isometry.

### From TauCetiRoadmap.ReductiveGroupsPartII

§RG2.3.5 (integral models of stabilizers for classical and Hodge-type groups), which treats lattice
chains for GL and GSp.

What ReductiveGroupsPartII must provide (gap:unitary-multichain-stabilizer): For p>2, a quadratic extension of p-adic fields and a polarized periodic lattice multichain, prove its automorphism group scheme smooth, including the Weil-restricted factors when the ground field is ramified over ℚ_p, and identify it with the corresponding stabilizer group scheme.

### From TauCetiRoadmap.ShimuraCompactifications

§C5.5 (properness of the integral toroidal model for a complete cone system, hence of the moduli
itself when the PEL datum has no cusp label) and §C5.18 (quasi-projectivity of the neat PEL moduli of
PELModuli §M2.8), both over a base of good primes in the sense of PELModuli §M0.10. §8.7, and §7.2 on a base all of whose
primes are good for the product datum, consume them through finite comparison morphisms from CM-pair
moduli to the PEL moduli of the product A₀×A; §7.2 on a base with a bad prime, §7.7 and §8.3 consume
gap:bad-prime-projectivity through the same kind of finite comparison morphism, into the multichain
moduli that contract names.

What ShimuraCompactifications must provide (gap:bad-prime-projectivity): Pose the PEL moduli problem of PELModuli §M1.7 over an integral base, a localization of the ring of integers of the reflex field or the ring of integers of one of its completions, that contains primes at which ShimuraCompactifications Layer C5 does not apply (primes dividing the discriminant of the PEL order, or primes whose local level is not the stabilizer of a single self-dual lattice), replacing the abelian scheme at each such prime by a multichain of abelian schemes indexed by a polarized lattice multichain of the PEL order and taking the level there to be the stabilizer of that multichain, as in RZ96 Definition 6.9, p. 279; prove that this moduli problem is represented by a separated Deligne–Mumford stack of finite type over the base, at neat level by a quasi-projective scheme through an ample Hodge line, and that it is proper over the base when its generic fibre is proper.

## How to read the build

Layer 0 sets up the local objects every later layer uses: strict formal O-modules, their displays and
duals, representability of framed functors, principal hermitian modules, Mihatsch's relative
comparison and the conjugation of signature conventions. Layers 1–5 are the four local families, each
independent of the others except through Layer 0: the unramified principal space and its special
homomorphisms (Layer 1), the almost self-dual and mixed spaces (Layer 2, which uses the rank-one source
and special-Hom space of Layer 1), the relative exotic space (Layer 3), its comparison with the
absolute exotic space over an unramified K (Layer 4), and the Krämer space (Layer 5). Layer 6 fixes the
global data: the RSZ group, admissible CM types and their coefficient fields, the integral Eisenstein
and sign conditions, the integral CM moduli at every prime and the lattice levels. Layer 7 builds the
RSZ, exotic and Krämer integral models and transfers the local geometry of Layers 1–5 to them through
the local-model diagram; Layer 8 builds the neat models of LTXZZ22 and the mixed isogeny model. Layer 9
uniformizes the basic loci of the models of Layers 7–8 by the local spaces of Layers 1–5. Each target's
*Needs:* line lists what its statement and its route use, item by item.

## Layer 0: Strict modules, representability and relative unitary conventions

Strict formal O-modules, their O-displays and relative duality; representability of the polarized unitary framed functors of Layers 1–5 as formal schemes locally formally of finite type; principal hermitian modules and simultaneous conjugation of signature, source and framing. For unramified L/K and ℚ_p⊂K₀⊂K construct Mihatsch’s relative comparison of hermitian modules with a signature, using the full P(r,s) determinant and structural-action clause, and restrict it to supersingular framings; compare framed deformations and the rank-r Grassmannian local model of relative dimension rs.

### 0.1 Strict formal modules, O-displays and relative duality

Let O be the ring of integers of a finite extension of ℚ_p, with uniformizer π. Over an O-algebra R in which π is nilpotent, a strict O-module is a p-divisible group X with an action ι:O→End(X) through which O acts on Lie X by the structure map O→R; it is formal when X is a formal group. An O-display over R is a window over the Witt O-frame (W_O(R),I_O(R),F,V) of relative O-Witt vectors with respect to π, and strict formal O-modules over R are equivalent to nilpotent O-displays, compatibly with base change; the relative height of X is the rank of its O-display P and its dimension is the rank of P/Q. A strict formal O-module is biformal when its dual O-display is again nilpotent; its relative dual X^∨ is the strict O-module of that dual display, and it depends on π. A polarization (resp. principal polarization) is an isogeny (resp. isomorphism) λ:X→X^∨ with λ^∨=−λ. The relative crystal D_X on O-divided-power thickenings carries the Hodge filtration; deformations along such thickenings correspond to lifts of the filtration, and for principally polarized biformal X to Lagrangian lifts for the perfect alternating pairing on D_X. For a finite totally ramified extension O⊂O′, strict formal O′-modules are equivalent to nilpotent windows over the Lubin–Tate O′-frame, compatibly with duality after rescaling the pairing by a unit of the frame. (Mih19, Part III: §10, p. 40; Lemma 11.2 and Definition 11.6, pp. 41–42; Definitions 11.7–11.9, Remark 11.11 and the crystal paragraph, p. 43; Proposition 12.11, pp. 47–48.)

Hypotheses for this target: O, π as stated; R an O-algebra in which π is nilpotent; duality and polarizations only for biformal objects.

*Route.* Define relative O-Witt vectors with respect to π, the Witt O-frame and its windows (Mih19 Definition 11.7). Deduce the equivalence of strict formal O-modules with nilpotent O-displays from the equivalence between nilpotent displays and formal p-divisible groups (gap:zink-display-equivalence) by the Ahsendorf–Cheng–Zink construction recalled in Mih19 §11.2. Define duals of biformal objects through the dual window, polarizations by λ^∨=−λ, and the relative crystal and Hodge filtration (Mih19 Definitions 11.6, 11.9 and §11.2); prove the Lubin–Tate frame equivalence and its duality compatibility (Mih19 Proposition 12.11 and Lemma 11.2).

**API.**

- The O-display of a strict formal O-module and its quasi-inverse, natural in the base.
- The relative height is the rank of P; it is the p-height divided by [O:ℤ_p].
- For biformal X the relative dual X^∨, depending on the chosen uniformizer, with biduality.
- Deformations along an O-divided-power thickening correspond to lifts of the Hodge filtration of D_X, Lagrangian lifts in the principally polarized case.
- For O⊂O′ totally ramified, strict formal O′-modules are equivalent to nilpotent Lubin–Tate O′-windows.

**Checks.**

- For O=ℤ_p the strictness condition is automatic and an O-display is a display: `μ_{p^∞}` over a perfect field has P of rank 1 with P/Q of rank 1, while the étale ℚ_p/ℤ_p has P/Q=0 and is not a nilpotent display.
- For K=ℚ_p(√p) the Lubin–Tate group is a strict O_K-module of relative height 1; precomposing its action with the nontrivial automorphism of K makes √p act on Lie by −√p, so over R=O_K/(p), where √p≠−√p because p is odd, the twisted module is not strict.
- A strict O-module of relative height 1 and dimension 1 has dual of dimension 0, hence étale, so it is not biformal and has no polarization in this sense; the rank-one sources of Layer 1, Layer 3 and Layer 5 have relative height 2 and dimension 1 and are biformal.

*Needs:* PELModuli §M2.15; gap:zink-display-equivalence; FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.1; EndoscopicTransferAndUnitaryTraceComparison §7.6.

### 0.2 Representability of the unitary framed functors

For local PEL data in the sense of RZ96 Definition 3.21 (a semisimple ℚ_p-algebra B with involution, a maximal order O_B, a self-dual periodic multichain 𝓛 of O_B-lattices, a cocharacter with local reflex field E and a framing object over F̄_p), the functor 𝓜 on schemes over Spf O_Ĕ on which p is locally nilpotent, of 𝓛-sets of p-divisible groups with O_B-action satisfying the Kottwitz condition, with the polarizations prescribed by 𝓛 and a framing quasi-isogeny over the special fibre, is represented by a formal scheme locally formally of finite type over Spf O_Ĕ. Consequently the functors N_n of Layer 1, N¹_n of Layer 2, N^exo of Layer 3 and N_n^Kra of Layer 5 are represented by separated formal schemes locally formally of finite type over Spf O_L̆ in every case (O_L̆=O_K̆ when L/K is unramified): each is, for suitable data, the closed formal subscheme of such an 𝓜 cut out by the strictness of Layer 0, the Eisenstein conditions, the relative polarization and kernel conditions, the wedge condition, and the open and closed conditions of height zero and exact multiplier; N^exo is moreover intersected with the open spin locus, and N_n^Kra is the closed subscheme of the relative Grassmannian of rank-(n−1) summands of Lie X cut out by the Krämer conditions. The space Ñ_n of Layer 2 is closed in `N¹_n×N_{n+1}`. None of these formal schemes is asserted to be quasi-compact or to carry the p-adic topology. (RZ96, Theorem 2.16, p. 54; Definition 3.21, pp. 81–82; Theorem 3.25 and its proof, p. 88.)

Hypotheses for this target: p>2 for the unitary consequences; the data of RZ96 Definition 3.21 for the general statement.

*Route.* Represent the unstructured functor of framed p-divisible groups (RZ96 Theorem 2.16; it is the unstructured functor of IgusaVarietiesAndTorsionConcentration §IG.0.27) and cut out the O_B-stable locus and the 𝓛-set conditions as closed subfunctors; the Kottwitz condition is closed (RZ96 proof of Theorem 3.25). Translate the relative conditions of Layer 0 (strict action, relative polarization of §0.1) into closed conditions on the absolute p-divisible group, and the height and multiplier conditions into open and closed ones. Add the Krämer filtration as a closed subscheme of a Grassmannian bundle and the spin condition as an open condition; separatedness follows from rigidity of quasi-isogenies.

**Checks.**

- At n=1 with L/K unramified, N_1=Spf O_L̆ (LZ22 §2.2): the strict O_L-action leaves no deformation parameter, whereas the unstructured deformation space of the underlying p-divisible group, of height 2[K:ℚ_p] and dimension [K:ℚ_p], has [K:ℚ_p]² parameters.
- The spin condition is open, not closed: imposing only the closed conditions on the exotic functor adds the locus where i(u) acts by zero on Lie at some geometric point.
- At n=2 the completed local ring of N_2 at a point is O_L̆[[t]], whose ideal of definition contains t; the topology is not the p-adic one.
- IgusaVarietiesAndTorsionConcentration §IG.0.27 is the case of an unramified datum with a single self-dual lattice; the almost self-dual chain Λ⊂Λ^♯ of Layer 2, with Λ^♯/Λ of length one, and the ramified data of Layer 3 and Layer 5 lie outside it.

*Needs:* §0.1; IgusaVarietiesAndTorsionConcentration §IG.0.27 (unstructured framed functor); AdicSpacesPartIII Layer F0; SchemeAndStackFoundations Layer 4; AbelianSchemesAndArithmeticModuli §A4.7; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.26.

### 0.3 Strict polarized unitary modules

For a quadratic extension L/K of p-adic fields with p odd, fix an embedding L into the completed maximal unramified extension L̆. A principal hermitian O_L-module of signature (r,s), r+s=n>0, is a strict formal O_K-module X of relative K-height 2n and dimension n, with O_L-action i and principal relative polarization λ satisfying λ i(a)=i(ā)^∨ λ and det(T−i(a)|Lie X)=(T−a)^r(T−ā)^s for every a∈O_L. Strictness refers to the O_K-action on the Lie algebra. The absolute p-height is 2n[K:ℚ_p]. The relative dual and polarization are those of §0.1; they depend on the chosen uniformizer of K and are not the absolute Cartier dual. (Mih19, Definitions 2.2 and 2.8, pp. 7, 9 (unramified quadratic case); Appendix §11, pp. 41–43 (strict modules and duality); LL22 Definition 2.1, pp. 9–10 (ramified conventions).)

Hypotheses for this target: p>2; L/K quadratic; r,s nonnegative; n=r+s>0. All local moduli are evaluated on locally noetherian schemes over the completed maximal unramified coefficient ring on which the residue characteristic is locally nilpotent; reduction means the scheme cut out by the uniformizer, not the reduced scheme.

*Route.* Specialize §0.1 to O=O_K, keeping the structural O_K-action on Lie X. Impose the two-embedding determinant equation and the relative adjoint equation; inherit base change and isomorphisms from §0.1. Record the absolute-height conversion and its distinction from absolute dimension.

**API.**

- A strict formal O_K-module with an O_L-action, a principal relative polarization and the two displayed equations is a principal hermitian module; isomorphisms are O_L-linear isomorphisms preserving λ.
- For relative height 2n, the underlying p-divisible group has p-height 2n[K:ℚ_p].
- Base change preserves strictness, signature and relative polarization; identity and iterated base changes have canonical compatible isomorphisms.
- For every a∈O_L the existing finite-free characteristic polynomial on Lie X is the stated two-factor polynomial.

**Checks.**

- For [K:ℚ_p]=2 and n=3 the relative height is 6 and absolute height 12; the dimension is 3.
- For n=1, signature (1,0) gives Lie action a, while signature (0,1) gives ā.
- An action whose adjoint fixes a with a≠ā fails the polarization condition.
- An unramified quadratic extension with K ramified over ℚ_p still has relative height 2n.
- The polarization adjoint is conjugation on O_L.

*Needs:* FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.1; §0.1; PELModuli §M0.18; Mathlib `LinearMap.charpoly`.

### 0.4 Mihatsch relative comparison

Suppose L/K is unramified quadratic and ℚ_p⊂K₀⊂K. On locally noetherian schemes over Spf O_L̆ on which p is locally nilpotent, construct Mihatsch’s equivalence C from hermitian O_L–O_K₀-modules that have a signature (Zariski locally on the base they satisfy the condition P(r,s) below, with its structural-action Eisenstein clause, for some (r,s)) to strict O_K hermitian O_L-modules, sending signature (r,s) to signature (r,s). No supersingularity is assumed: supersingular framings enter only in §0.5. For K/K₀ unramified, contract the embedding-graded display by a full Frobenius round trip. For K/K₀ totally ramified, lift the pairing through the inverse-different trace, pass through the Lubin–Tate frame and rescale by the frame-change unit. Compose along the unramified/totally ramified factorization. C is compatible with Rosati adjoints and polarized quasi-isogenies. Write Ψ for the K₀-embeddings of the maximal subfield Lᵘ⊂L unramified over K₀, split into conjugate halves Ψ₀,Ψ₁ with distinguished ψ₀∈Ψ₀. Put `P₀₁(a;T)=∏_{ψ∈Ψ₁}ψ(charpoly_{L/Lᵘ}(a;T))`, P₁₀=P₀₁(T−a)/(T−ā), and P(r,s)=P₁₀^r P₀₁^s; the indicated quotient is polynomial. Require this characteristic polynomial on Lie and `(i(a)−a)|Lie_{ψ₀}=0` for every a∈O_L. This last zero-endomorphism equation is part of the input. On the O_K₀ side the relative height and dimension are 2n[K:K₀] and n[K:K₀]; the strict O_K side has height 2n and dimension n. (Mih19, Definitions 2.7–2.8, pp. 8–9; Definition 3.2 and Theorem 3.3, p. 12; Propositions 3.4 and 3.6, Lemma 3.9 and Corollary 3.10, pp. 11–18.)

*Route.* Use the O-display and Lubin–Tate window equivalences of §0.1 and normal decompositions. In the totally ramified case keep the inverse-different generator and the unit correcting the change of frame. Identify contracted Hodge crystals and homomorphism lifting across square-zero thickenings, then induct along the nilpotent nilradical of a noetherian base.

**API.**

- C(X) carries an O_L-action and a relative principal polarization transported from those of X, and has signature (r,s) when X has signature P(r,s).
- The display reconstruction is a quasi-inverse, with unit and counit natural on the nilpotent base category.
- C(f†)=C(f)† for polarized quasi-homomorphisms.
- The equivalence commutes with coefficient/base changes allowed by its chosen embeddings and frame data.

**Checks.**

- For K₀=K choose the identity frame data; C is naturally the identity.
- For [K:K₀]=e f, contraction divides the K₀-relative height 2n e f to K-relative height 2n.
- An absolute Lie action satisfying only multiplicity ranks but violating the structural-action clause is not an input to C.
- The comparison applies when K/ℚ_p is ramified; this is distinct from the exotic comparison in Layer 4.
- On the relative side the height is 2n, not the absolute height.
- On a μ-ordinary hermitian module of signature (1,n−1) over F̄_p with K₀=K, C is the identity: the comparison is defined on objects that are not supersingular, and a version restricted to supersingular objects could not be applied at the ordinary points of the global models of Layer 7, where §6.5 imposes the same Lie condition.

*Needs:* §0.3; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; AbelianSchemesAndArithmeticModuli §A4.7.

### 0.5 Equivariance and deformation comparison

With the data of §0.4 and a fixed polarized supersingular framing, C induces an isomorphism of the height-zero framed moduli functors and their formally locally finite type representing spaces, equivariant for the quasi-isogeny group identified through C. C identifies the relevant Hodge filtrations and the condition that an O_L-linear homomorphism lifts across a square-zero thickening. (Mih19, Theorem 3.1 and its proof, pp. 11–12, 18; Lemma 3.9 and Corollary 3.10, pp. 17–18.)

*Route.* Choose an identification of C of the absolute framing with the relative framing. Transport every framing quasi-isogeny using the unit/counit and identify quasi-isogeny actions by conjugation. Use the Hodge-crystal comparison for infinitesimal compatibility and Yoneda for the representing isomorphism.

**Checks.**

- The result is an isomorphism of formal spaces, not just of geometric point sets.
- The isomorphism depends on the chosen identification of C(𝕏) with the relative framing: changing it by a polarized self-quasi-isogeny g of the relative framing composes the isomorphism with the action of g, and conjugates the identification of the two quasi-isogeny groups by g; a version independent of the identification would be false whenever g is not central.

*Needs:* §0.4; §0.2.

### 0.6 Relative unitary Grassmannian chart

For unramified quadratic L/K, intermediate K₀⊂K and the signature P(r,s) with structural-action clause on the distinguished maximal-unramified L-embedding summand, the polarized local-model functor is the Grassmannian of rank-r quotients of a free rank-n module on that summand. The remaining Hodge submodules are fixed on banal summands and determined by orthogonal complement on the conjugate summand. It is smooth of relative dimension rs, including when K/K₀ is ramified. (Mih19, Definition 2.11 and Proposition 2.12, pp. 9–10.)

*Route.* Use the embedding decomposition and actual structural-action equation, not just multiplicities. Keep the distinguished quotient, fix the banal summands, and reconstruct the conjugate summand by the perfect pairing. Identify the two functors and apply the imported Grassmannian graph charts and tangent formula.

**Checks.**

- At (r,s)=(1,n−1) the dimension is n−1.
- At r=0 or s=0 the local model is the base.

*Needs:* §0.4; AlgebraicModuliForArithmeticGeometry §1.3; AbelianSchemesAndArithmeticModuli §A4.7.

### 0.7 Comparison of signature conventions

Precomposing i with the nontrivial automorphism of L/K gives an involutive equivalence between principal hermitian modules of signatures (r,s) and (s,r), carrying λ and every polarized framing along the same relabelling. Thus Zhang21 signature (n−1,1) and LZ22 signature (1,n−1) define corresponding spaces only after conjugating both the O_L-action and the rank-one source; the underlying p-divisible group is unchanged. (Zhang21, §3.1, equations (3.1)–(3.6), pp. 879–881; compare LZ22 §2.1, p. 10.)

*Route.* Substitute ā in the determinant and Rosati equations. Conjugate source and framing actions as well; verify equivariance of quasi-isogenies. Apply conjugation twice to obtain the identity equivalence.

**Checks.**

- For n=1 the two rank-one Lie characters are interchanged.
- Conjugating the target from signature (1,n−1) to (n−1,1) while keeping the rank-one source 𝔈̄ of signature (0,1) pairs the target with a source of the wrong signature: in the conjugated convention the source is 𝔈 of signature (1,0), as in §1.4, and the special-Hom space is formed from it.

*Needs:* §0.3.

### Examples

- Heights. Take K=ℚ_p(√p), so [K:ℚ_p]=2, L/K unramified quadratic and n=3. A principal hermitian O_L-module of signature (1,2) has relative height 6 and dimension 3 as a strict O_K-module, and its underlying p-divisible group has height 12 and dimension 6. The absolute height 6 is the height of a different carrier.
- Deformation parameters. For the same K and n=1, the unstructured deformation space of the underlying p-divisible group (height 4, dimension 2) has 2·2=4 parameters, whereas N_1=Spf O_L̆ has none: the strict O_L-action removes all four.
- Relative comparison. For K₀=ℚ_p and K/ℚ_p unramified of degree f=2, an O_L–ℤ_p-hermitian module of signature (1,1) in the sense of §0.4 has height 2n[K:K₀]=8 and dimension 4; the comparison C sends it to a strict O_K-module of relative height 4 and dimension 2.
- Local model. At (r,s)=(1,2) the local model of §0.6 is the Grassmannian of rank-one quotients of a free module of rank 3, the projective plane, of relative dimension rs=2.

### Dependencies

Within this roadmap: none; this is the first layer.

Suppliers: PELModuli §M2.15, §M0.18; FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.1, §R07.2.26, §R07.2.10; EndoscopicTransferAndUnitaryTraceComparison §7.6; IgusaVarietiesAndTorsionConcentration §IG.0.27 (unstructured framed functor); AdicSpacesPartIII Layer F0; SchemeAndStackFoundations Layer 4; AbelianSchemesAndArithmeticModuli §A4.7; AlgebraicModuliForArithmeticGeometry §1.3; Mathlib `LinearMap.charpoly`.

Supplier contracts: gap:zink-display-equivalence (see Exact supplier contracts).

## Layer 1: Unramified unitary formal moduli

Construct the exact-polarization height-zero unitary framed functor for unramified quadratic L/K, p>2, signature (1,n−1); prove formal smoothness of dimension n−1. Construct its canonical principal rank-one source, nonsplit Hermitian special-Hom space, rank-raising closed immersion and equivariant diagonal graph, keeping relative and arithmetic dimensions distinct.

### 1.1 Unramified unitary framed functor

Fix a supersingular principally polarized strict hermitian O_L-module 𝕏 of signature (1,n−1). N_n(S) consists of (X,i,λ,ρ), with X of the same type and ρ:X over the uniformizer-zero subscheme →𝕏 a height-zero O_L-linear quasi-isogeny such that ρ*λ_𝕏=λ. Arrows are O_L-linear isomorphisms preserving λ and commuting with ρ. The exact polarization normalization selects this component; a moduli problem allowing arbitrary similitude factors is a different functor. (LZ22, §2.1, p. 10; compare Zhang21 §3.1, pp. 879–881.)

Hypotheses for this target: L/K unramified quadratic; p>2; n≥1; bases in Nilp (see Conventions); fix a supersingular framing of the indicated signature and polarization.

*Route.* Form the structured p-divisible-group groupoid and reduce only the framing map. Use quasi-isogeny rigidity for descent and to kill automorphisms fixing ρ. Transport along §0.7 when the opposite convention is required.

**API.**

- A point of N_n over S is the same as (X,i,λ) of signature (1,n−1) over S with a height-zero polarized framing over the subscheme cut out by the uniformizer.
- Forgetting the framing gives the underlying principal hermitian module (X,i,λ).
- Pullback gives a nilpotent-base functor, with canonical identity and composition isomorphisms.
- A polarized O_L-linear isomorphism commuting with ρ determines the arrow; an automorphism inducing identity under ρ is identity.

**Checks.**

- For n=1 the deformation has no relative parameters; its representing space is Spf O_L̆.
- An O_L-linear quasi-isogeny of nonzero height does not define a point of N_n.
- Replacing λ by cλ with c≠1 while fixing ρ fails the exact polarization equation.

*Needs:* §0.3; §0.2.

### 1.2 Representability and smoothness

The functor N_n is represented by a separated formal scheme locally formally of finite type over Spf O_L̆, formally smooth of relative dimension n−1. The topology is the representing Rapoport–Zink topology, not an assertion that the whole space is quasi-compact or p-adic. (LZ22, §2.1, p. 10; RZ96 Theorem 3.25, p. 88.)

Hypotheses for this target: L/K unramified quadratic; p>2; n≥1; bases in Nilp (see Conventions); fix a supersingular framing of the indicated signature and polarization.

*Route.* Apply §0.2 to the polarized height-zero component. Use strict-module Grothendieck–Messing theory: the unramified two-character Hodge filtration is determined by a line in a rank-n summand. The local Grassmannian is smooth of dimension n−1; descend formal charts.

**Checks.**

- For n=1 obtain Spf O_L̆.
- For n=2 completed local charts at geometric points have one formally smooth parameter.

*Needs:* §1.1; AbelianSchemesAndArithmeticModuli §A4.7; §0.2; PELModuli §M2.12; §0.6.

### 1.3 Canonical rank-one source

For a fixed supersingular signature-(1,0) principal module 𝔈, construct its unique deformation ℰ over O_L̆ with framing. Conjugating the O_L-action gives ℰ̄ of signature (0,1), and its special fibre 𝔈̄. Uniqueness is in the framed groupoid; changing the framing is retained as an automorphism-group action. (LZ22, §2.2, p. 11.)

*Route.* Apply the dimension-zero deformation calculation to n=1. Glue the unique compatible Artin-level lifts using formal representability. Conjugate the integral action and framing.

**API.**

- The framed signature-(1,0) module 𝔈 has a framed lift ℰ over O_L̆, unique up to unique isomorphism.
- Conjugation yields signature (0,1) and preserves the principal polarization.
- Every framed deformation is uniquely isomorphic to the base change of ℰ.

**Checks.**

- Both ℰ and ℰ̄ have relative height 2 and dimension 1.
- Conjugating twice recovers the framed lift.
- The Lie action on ℰ̄ is conjugate to the structural embedding.

*Needs:* §1.2; §0.7; EndoscopicTransferAndUnitaryTraceComparison §§7.6, 10.2.

### 1.4 Rank-raising framed embedding

After fixing `𝕏_{n+1}=𝕏_n×𝔈̄` and product principal polarization, define `δ:N_n→N_{n+1}` by X↦X×ℰ̄, with product action, polarization and framing. Its signature is (1,n), and δ is a closed immersion. Under conjugate Zhang conventions the added source is ℰ of signature (1,0). (LZ22, §2.11, equation (2.11.0.1), p. 15; Zhang21 §3.1, equation (3.2), p. 880.)

*Route.* Form products of strict modules and check that signatures add. Recover the fixed factor by its integral projection; its liftability cuts out a closed subfunctor. Use rigidity of quasi-isogenies and §0.2 to identify the closed immersion.

**API.**

- δ is defined once the identification `𝕏_{n+1}=𝕏_n×𝔈̄` of framings is fixed, and changing that identification changes δ by the corresponding framing isometry.
- The product construction commutes with base change.
- The pullback object carries λ_X×λ_ℰ̄, not a rescaled second factor.

**Checks.**

- At n=1 the product has signature (1,1) and relative height 4.
- Adding ℰ instead of ℰ̄ in the (1,n−1) convention gives signature (2,n−1)≠(1,n) for every n≥1; already at n=1 it gives (2,0) instead of (1,1).
- For a deformation on the target, membership is equivalent to lifting the specified fixed direct factor and its orthogonal projection.

*Needs:* §1.3; §1.1; §1.2; AbelianSchemesAndArithmeticModuli §A4.7.

### 1.5 Unramified Hermitian special Hom space

Set `V_n=Hom^0_{O_L}(𝔈̄,𝕏)`, with h(x,y)=λ_𝔈̄^−1 y^∨ λ_𝕏 x, viewed as an element of L through `End^0_{O_L}(𝔈̄)=L`. Use the convention linear in x and conjugate-linear in y. This is an n-dimensional nonsplit nondegenerate L/K-Hermitian space; composition identifies U(V_n) with the O_L-linear polarized self-quasi-isogenies of 𝕏. (LZ22, §2.2, p. 11.)

*Route.* Use the rational Dieudonné classification of FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10 to identify Hom^0 and rank. Apply the Rosati equation to prove sesquilinearity and Hermitian symmetry. Calculate the determinant invariant of the supersingular framing; faithful action on Hom identifies the isometry group.

**API.**

- On V_n, h(x,y)=λ_𝔈̄⁻¹y^∨λ_𝕏x is an L-valued pairing on rational homomorphisms.
- h(ax,by)=a h(x,y) b̄ and h(y,x) is the L/K-conjugate of h(x,y).
- Composition induces an isomorphism from framing isometries to U(V_n).
- An isometry g acts on N_n by ρ↦g∘ρ, with (gh) acting as g after h.

**Checks.**

- For n=2 the L-dimension is 2, while the framing has relative height 4.
- Replacing 𝔈̄ by 𝔈 without conjugating the framing is not the declared special-Hom convention.
- For a∈L with a ā=1, scalar composition is an isometry and acts through the same quasi-isogeny on ρ.

*Needs:* §1.3; PELModuli §M0.22; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9.

### 1.6 Unitary diagonal graph

For n≥2 and the chosen recursive framings, let `δ:N_{n−1}→N_n` be §1.4 and set `Δ=(id,δ):N_{n−1}→N_{n−1}×N_n`. It is a closed immersion, equivariant for the diagonal copy of `U(V_{n−1})` through the fixed unit-vector inclusion `V_{n−1}→V_n`. Its image has relative dimension n−2 in an ambient product of relative dimension 2n−3. In the arithmetic dimension convention including the coefficient DVR, its dimension n−1 is half the ambient dimension 2n−2; this distinction is retained for consumers. (Zhang21, §3.1, equations (3.3)–(3.6), pp. 880–881.)

*Route.* Take the graph of the closed product-embedding map. Use the chosen unit-vector summand to verify diagonal equivariance of its two components. Compute relative and absolute dimensions separately.

**API.**

- Δ=(id,δ) is a closed immersion, being the graph of δ into a separated target.
- The first projection restricted to Δ is the identity on `N_{n−1}`.
- The second projection restricted to Δ is δ.
- The graph action is compatible with the diagonal subgroup inclusion determined by the unit vector.

**Checks.**

- For n=2 the graph has relative dimension zero in relative dimension one.
- For n=3 absolute dimensions are 2 and 4, while relative dimensions are 1 and 3.
- The graph uses the canonical conjugate rank-one factor in the (1,n−1) convention.

*Needs:* §1.4; §1.5; §1.2; §0.2.

### Examples

- Dimensions of the graph. For n=4, Δ:N_3→N_3×N_4 has image of relative dimension 2 in an ambient space of relative dimension 2+3=5; counting the coefficient DVR, the dimensions are 3 and 6, and only the second count gives "half the ambient dimension".
- Rank raising. δ:N_2→N_3 sends a point of signature (1,1) to one of signature (1,1)+(0,1)=(1,2), and relative dimension 1 to relative dimension 2; adding ℰ instead of ℰ̄ would give (2,1).
- Rank one. For n=1, V_1 is a hermitian line, U(V_1) is the group of a∈L^× with aā=1, and it acts on the one-point formal scheme N_1=Spf O_L̆ through framing automorphisms.

### Dependencies

Within this roadmap: Layer 0 (§0.1, §0.2, §0.3, §0.6, §0.7).

Suppliers: AbelianSchemesAndArithmeticModuli §A4.7; PELModuli §M2.12, §M0.22; EndoscopicTransferAndUnitaryTraceComparison §§7.6, 10.2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9.

## Layer 2: Almost self-dual and mixed moduli

For n≥2 define the signature-(1,n−1) framed functor with polarization kernel killed by ϖ of order q², and prove flat regular semistable geometry over its natural coefficient ring. Construct its split Hermitian special-Hom space and the mixed isogeny functor using the conjugate source ℰ̄, fixed rational framing, unique lift and pullback λ_Y×ϖλ_ℰ̄. Prove the first projection generically finite étale of degree q+1 and the second generically an isomorphism onto its image; the local isogeny degree is q².

### 2.1 Almost self-dual framed functor

N_n^1(S) classifies signature-(1,n−1) strict hermitian O_L-modules Y with relative polarization λ whose kernel is contained in Y[ϖ] and is finite locally free of order q², and a height-zero framing ρ to 𝕐 with ρ*λ_𝕐=λ. Here ϖ is a uniformizer of K and q=#k_K. Keep the kernel containment and its order as independent clauses; this is not the principal-polarization functor. (LZ22, §10.1, pp. 63–64; Cho18 Theorem 1.2, p. 4.)

Hypotheses for this target: the local field conditions of Layer 1 and n≥2; a fixed supersingular signature-(1,n−1) framing 𝕐 with the polarization kernel specified in §2.1.

*Route.* Replace the principal condition in the Layer 1 framed construction by the prescribed finite flat kernel type. Check duality and Rosati on the isogeny rather than assuming an everywhere perfect Hodge pairing. Descend the kernel and framing conditions along the base site.

**API.**

- A point of N¹_n is (Y,i,λ,ρ) with ker λ⊂Y[ϖ] finite locally free of order q², and these two kernel conditions are independent.
- The polarization kernel of a point is a finite locally free subgroup scheme of Y[ϖ] of order q².
- Kernel type, signature and framed polarization commute with base change.
- The framing carries λ exactly to the fixed almost self-dual polarization.

**Checks.**

- For q=3 the required kernel order is 9, independent of n≥2.
- A principal polarization has kernel order 1 and is rejected.
- A kernel of order q² not killed by ϖ is rejected.

*Needs:* §0.3; FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.1; §0.2.

### 2.2 Almost self-dual deformation theorem

N_n^1 is a separated locally formally finite type formal scheme, regular and flat of relative dimension n−1 with semistable reduction over O_L̆. This assertion is over its natural unramified local coefficient ring. A ramified extension of the coefficient ring need not preserve regularity or semistability. (Cho18, Theorem 1.2, p. 4; §3.9; compare LZ22 §10.1, p. 64.)

Hypotheses for this target: the local field conditions of Layer 1 and n≥2; a fixed supersingular signature-(1,n−1) framing 𝕐 with the polarization kernel specified in §2.1.

*Route.* Use formal representability with fixed kernel type. Apply the almost self-dual unitary local model (Cho18 §3.9) and its smooth deformation comparison. Read the semistable local equations over the natural coefficient ring; use them for flatness and regularity.

**Checks.**

- At a crossing a completed local chart is an étale/formally smooth extension of uv−ϖ.
- Under ramified base change uv−t^e for e>1 is not a regular crossing chart.

*Needs:* §2.1; AbelianSchemesAndArithmeticModuli §A4.7; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; §0.2.

### 2.3 Almost self-dual special Hom space

Put `W_n=Hom^0_{O_L}(𝔈̄,𝕐)` with h(x,y)=λ_𝔈̄^−1 y^∨λ_𝕐 x. It is the split n-dimensional Hermitian space. Choose the rank-one vector x_0 of norm ϖ in a nonsplit `V_{n+1}` and a framing identification `V_{n+1}=W_n⊥Lx_0`. Use the same conjugate rank-one source 𝔈̄ as in Layer 1; the changed target polarization type and norm scaling are part of this identification. (LZ22, §10.2, equations (10.2.1)–(10.2.2), pp. 64–65.)

*Route.* Compute rational Hom from the same isocrystal with the new polarization lattice. Use Hermitian discriminant classification to identify the split invariant. Choose an isometry of the orthogonal sum with `V_{n+1}`; retain the chosen identification.

**API.**

- h on W_n is formed with the conjugate source 𝔈̄ of signature (0,1), as in Layer 1.
- The chosen framing identification gives an isometry `W_n⊥⟨ϖ⟩≅V_{n+1}`.
- An isometry of W_n extends by identity on x_0 and gives a homomorphism `U(W_n)→U(V_{n+1})`.

**Checks.**

- The distinguished vector in the extension has norm ϖ, not 1.
- The split invariant of W_n differs from the nonsplit invariant of the principal-framing V_n.
- The extended isometry fixes x_0 and preserves its orthogonal complement.

*Needs:* §1.3; §2.1; §1.5; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10.

### 2.4 Auxiliary isogeny space

Construct Ñ_n with points (Y,X,α), where Y∈N_n^1, `X∈N_{n+1}`, and α:Y×ℰ̄→X is an O_L-linear isogeny with kernel contained in (Y×ℰ̄)[ϖ], compatible with the fixed rational framings, and satisfying α*λ_X=λ_Y×ϖλ_ℰ̄. Write π_1 and π_2 for the two forgetful maps. In the induced rational special-Hom description the distinguished rank-one direction has norm ϖ. For a fixed pair (Y,X) and the chosen rational framing isogeny, the integral lift α is unique if it exists; Ñ is a closed subfunctor of `N_n^1×N_{n+1}`. The source has signature (1,n), since ℰ̄ has signature (0,1), and deg α=q². (LZ22, §10.2, p. 65.)

*Route.* Choose once the framing isogeny matching W_n⊥Lx_0. Impose the prescribed finite flat kernel and pullback-polarization conditions as closed conditions on `N¹_n×N_{n+1}` (§0.2). Construct the two projections and verify their base changes.

**API.**

- A point of Ñ_n is (Y,X,α) with ker α⊂(Y×ℰ̄)[ϖ] and α*λ_X=λ_Y×ϖλ_ℰ̄.
- π₁ forgets X and α and lands in N¹_n.
- π₂ forgets Y and α and lands in `N_{n+1}`.
- Both projections commute with nilpotent-base pullback.
- For the same pair (Y,X) and fixed rational framing isogeny, two integral lifts agree by rigidity; this is not uniqueness of the target given Y alone.

**Checks.**

- The polarization degree equation forces deg α=q²: deg λ_Y=q² and deg(ϖλ_ℰ̄)=q², while the target is principal, so (deg α)²=q⁴. At n=2, q=3 the degree is 9; the value q^(n+1)=27 is rejected, since 27²=729≠81=9·9.
- Replacing ϖλ_ℰ̄ by λ_ℰ̄ changes the polarization equation and does not define the same auxiliary functor.
- Two objects with the same Y can have distinct isogeny choices; π_1 does not discard a uniqueness datum.
- At n=2, Y×ℰ̄ has signature (1,2). Substituting ℰ gives (2,1) and cannot be isogenous in characteristic zero to the specified N₃ target.

*Needs:* §2.1; §2.3; §1.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.1; §0.2.

### 2.5 Generic projection comparison

On rigid/adic generic fibres of the representing spaces, π_1:Ñ_n→N_n^1 is finite étale of degree q+1 and π_2 is an isomorphism onto its image. These generic assertions do not supply an integral isomorphism or integral closed immersion for π_2. (LZ22, §10.2, Remark 10.2.1, p. 65; Conjecture 10.4.1, p. 67.)

*Route.* Invert the coefficient uniformizer and describe the isogeny choices by the residual two-dimensional Hermitian quotient. There are q+1 admissible isotropic directions; in characteristic zero the finite torsion is étale. Recover the isogeny from its target and the fixed distinguished direction to identify the second map with its generic image.

**Checks.**

- For q=3 the first generic projection has degree 4.
- The generic assertions follow without an integral resolution theorem; LRZ26 Theorem 14.6.2 proves integral finite flatness of π₁ and a proper resolution by π₂, not an integral isomorphism of Ñ with its lifting divisor.

*Needs:* §2.4; AdicSpacesPartIII Layer F0; AdicSpacesPartIII §R2.9; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9.

### Examples

- Degrees at q=3. For K=ℚ_3 and n=2 the polarization kernel of a point of N¹_2 has order 9; in Ñ_2 the isogeny α:Y×ℰ̄→X has deg λ_Y·deg(3λ_ℰ̄)=9·9=(deg α)², so deg α=9, while π₁ is generically finite étale of degree q+1=4.
- Hermitian invariants. For L/K unramified every unit is a norm, so a hermitian space is classified by its dimension and the parity of the valuation of its determinant. W_2 is split (even valuation); adjoining x₀ of norm ϖ makes the valuation odd, so W_2⊥Lx₀ is the nonsplit V_3, as §2.3 requires.
- Regularity and base change. A crossing chart of N¹_n is uv=ϖ over O_L̆; after a ramified extension with ϖ=t² it becomes uv=t², whose maximal ideal at u=v=t=0 needs three generators in dimension 2.

### Dependencies

Within this roadmap: Layer 0 (§0.1, §0.2, §0.3); Layer 1 (§1.1, §1.3, §1.5).

Suppliers: FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.1, §R07.2.10; AbelianSchemesAndArithmeticModuli §A4.7; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; AdicSpacesPartIII Layer F0, §R2.9.

## Layer 3: Relative exotic ramified moduli

For ramified quadratic L/K, p>2 and even n≥2 impose the exact exotic polarization kernel X[i(u)], signature, wedge and nonzero-spin conditions; distinguish the symmetric principal factor. Construct the relative framed space, smooth of relative dimension n−1, its principal rank-one CM source and u^−2-normalized nonsplit special-Hom form, and prove that the space has exactly two connected components for every finite K/ℚ_p.

### 3.1 Relative exotic unitary modules

Define Exo(n−1,1) over the nilpotent base category by strict formal O_K-modules of relative height 2n and dimension n with O_L-action, determinant (T−u)^(n−1)(T+u) on Lie, wedge equation Λ²(i(u)−u)=0, and spin condition that i(u) is nonzero on Lie at every geometric point. The O_L-compatible relative polarization λ satisfies ker λ=X[i(u)] and Rosati conjugation. Morphisms pull λ back exactly. Define Exo(n,0) by structural O_L-action on Lie and the same height, dimension and polarization-kernel condition. Restrict to supersingular objects for the framed basic functor. (LL22, §2.1, Definition 2.1 and Remark 2.2, pp. 9–10.)

Hypotheses for this target: L/K ramified quadratic, p>2, u a uniformizer of L with ū=−u, n even and n≥2; strict relative O_K-module conventions as in Layer 0.

*Route.* Use the strict-module carrier, keeping the nonprincipal polarization instead of inheriting the principal condition. Impose determinant, wedge, spin and exact finite-kernel conditions separately. Verify that each condition is preserved under the permitted base changes.

**API.**

- An exotic module of type Exo(n−1,1) is a strict module with the determinant, wedge, spin and kernel conditions, each imposed separately.
- For an exotic module, ker λ=X[i(u)] as finite flat subgroup schemes.
- Base change preserves the defining conditions and exact-polarization arrows.
- At each geometric point i(u) on Lie is nonzero, in addition to the wedge equation.

**Checks.**

- At n=2 the relative height is 4 and dimension 2.
- A geometric Lie action i(u)=0 satisfying determinant and wedge equations is excluded by spin.
- Since X[i(u)] has nontrivial order, a principal polarization is not the required exotic polarization.

*Needs:* §0.3; FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.1; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; PELModuli §M0.18.

### 3.2 Symmetric principal form comparison

For an exotic module λ there is a unique O_L-compatible symmetric principal isomorphism σ:X→X^∨ with λ=σ∘i(u). Thus σ^∨=σ, whereas λ is the relative alternating polarization. This comparison does not turn λ into a principal polarization. (LL22, §2.1, Remark 2.2, p. 10.)

*Route.* Factor λ through i(u) using equality of their kernels. The quotient factor is principal; use Rosati conjugation and ū=−u to compute its transpose. Use surjectivity of i(u) to obtain uniqueness.

**Checks.**

- The factor σ is symmetric, not alternating.
- σ∘i(u) recovers λ, with kernel X[i(u)] of order q^n; σ∘i(u²) has kernel X[ϖ] of order `q^{2n}`, so the factorization fixes the single power of i(u).

*Needs:* §3.1; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10.

### 3.3 Relative exotic framed space

Fix a supersingular framing 𝕏∈Exo(n−1,1). N^exo classifies X∈Exo(n−1,1) with a height-zero O_L-linear framing ρ to 𝕏 on the uniformizer-zero subscheme and ρ*λ_𝕏=λ_X. Arrows preserve the action, exact polarization and framing. This functor is represented by a separated formal scheme locally formally of finite type over O_L̆. (LL22, §2.1, Definition 2.3 and Lemma 2.4, p. 10.)

*Route.* Apply polarized formal PEL representability on the fixed-height component. Impose wedge and spin and the fixed kernel condition in the local-model chart. Use rigidity to identify the representing groupoid with the framed set-valued functor.

**API.**

- A point of N^exo is an exotic module with a height-zero framing over the subscheme cut out by the uniformizer, carrying λ_𝕏 to λ exactly.
- Forgetting the framing gives the underlying relative exotic module.
- Pullback transports both the integral module and its reduced framing.
- A polarized framing self-quasi-isogeny acts by postcomposition on ρ.

**Checks.**

- A framing with multiplier c≠1 is rejected in this normalization.
- The framing is required only over the uniformizer-zero subscheme, while X is defined over S.
- An O_L-linear quasi-isogeny with nonzero height is not an allowed framing.

*Needs:* §3.1; §3.2; §0.2.

### 3.4 Exotic good reduction theorem

For every finite extension K/ℚ_p with p>2, L/K ramified quadratic and n even with n≥2, N^exo is formally smooth of relative dimension n−1 over Spf O_L̆. Its connected components are described in §3.7. (LL22, §2.1, Lemma 2.4 and its proof, p. 10.)

Hypotheses for this target: L/K ramified quadratic, p>2, u a uniformizer of L with ū=−u, n even and n≥2; strict relative O_K-module conventions as in Layer 0.

*Route.* Represent N^exo by §0.2; the spin condition cuts out an open formal subscheme. Use the even-rank exotic local-model smoothness calculation (the local-model smoothness invoked in the proof of LL22 Lemma 2.4). Read the relative dimension off the local model; no comparison with an absolute space over an unramified K is used.

**Checks.**

- At n=2 the relative dimension is 1.
- The coefficient ring is O_L̆, not O_K̆: at n=2 the completed local ring at a point is O_L̆[[t]], whose fibre over the closed point of Spf O_K̆ is k[u]/(u²)[[t]], nonreduced, so N^exo is not formally smooth over Spf O_K̆, while over O_L̆ the special fibre k[[t]] is smooth of dimension 1.
- For K/ℚ_p ramified, where the absolute comparison of Layer 4 is unavailable, smoothness still follows from the relative local model.

*Needs:* §3.3; §0.2; AbelianSchemesAndArithmeticModuli §A4.7.

### 3.5 Principal ramified CM source

Fix a supersingular strict O_K-module X₀ of relative height 2 and dimension 1, with O_L-action of signature (1,0) and principal relative polarization λ₀ with conjugate Rosati involution. Its chosen exact-polarization, height-zero framed deformation has a unique canonical lift over O_L̆. This is a principal CM source; it is not an object of the even-rank exotic category and does not have polarization kernel X₀[i(u)]. Its rational O_L-linear endomorphism algebra is L. (LL22, §2.1, the rank-one triple fixed before (2.1), pp. 10–11; §2.8, paragraph preceding (2.25), p. 43.)

*Route.* Use the strict CM deformation theorem with the structural O_L Lie character. Choose the framing component and transport the principal polarization through the unique CM lift. Compute rational endomorphisms from the rank-one CM display.

**API.**

- The chosen framed CM source has a canonical principal lift over O_L̆, unique up to unique isomorphism.
- `End⁰_{O_L}(X₀)=L`.
- The source polarization is principal, even though the target exotic polarization is not.
- The framed CM lift commutes with nilpotent base change.

**Checks.**

- The relative height is 2 and dimension is 1.
- The principal source has trivial polarization kernel, so the target exotic kernel equation is rejected.
- The source Lie character is structural; replacing it by the conjugate character changes the chosen source.

*Needs:* §0.3; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; §0.2; EndoscopicTransferAndUnitaryTraceComparison §§7.6, 10.2.

### 3.6 Exotic normalized special Hom space

On `V^exo=Hom^0_{O_L}(X_0,𝕏)`, use h(x,y)=u^−2 λ_0^−1 y^∨λ_𝕏 x. It is a nondegenerate nonsplit L/K-Hermitian space of dimension n. The u^−2 normalization, the principal rank-one CM source and the target’s symmetric principal factor are retained when identifying its unitary group with the framing isometries. (LL22, §2.1, the pairing (2.1) and footnote 9, p. 11.)

*Route.* Compute Hom and adjoints in the rational relative Dieudonné category. Use the principal source polarization and target adjoint relation to prove Hermitian symmetry; retain the declared u^−2 scalar and the target symmetric factor. Compute the Hermitian invariant and identify the group action by composition.

**API.**

- V^exo carries the u⁻²-normalized form h(x,y)=u⁻²λ₀⁻¹y^∨λ_𝕏x.
- Composition identifies framing isometries with the unitary group of h.
- Isomorphisms of both polarized framings induce isometries of the resulting Hom space.

**Checks.**

- Omitting u^−2 multiplies h by u²; it is not equality of the declared forms.
- The L-dimension is n, not 2n.
- The normalized pairing obeys h(y,x) is the L/K-conjugate of h(x,y) despite the alternating λ factors.

*Needs:* §3.2; §3.3; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; §3.5.

### 3.7 Exotic connected components

Let K/ℚ_p be finite with p>2, L/K ramified quadratic, n even with n≥2, and N^exo the relative exotic framed space of §3.3. Then N^exo has exactly two connected components: the loci where the parity invariant κ₂(ρ)=ht(ρ₁) mod 2 of the minimal cover (X̃,ρ₁,ρ₂) of the height-zero framing ρ is 0, respectively 1. The reduced locus of each component is connected and is the union of closed Bruhat–Tits strata V_Λ indexed by the vertex lattices Λ of V^exo; each V_Λ meets each component in a nonempty connected smooth projective variety of dimension t(Λ)/2−1, V_Λ∩V_Λ′ is `V_{Λ+Λ′}` or empty according as Λ+Λ′ is a vertex lattice or not, and the irreducible components are the V_Λ of maximal type t(Λ)=n. In particular each component of N^exo_red has pure dimension n/2−1. (LL22, Lemma 2.4 and footnote 8, p. 10; Proposition 2.28 and Remark 2.29, pp. 22–23; Wu16, §3.4, equations (3.21)–(3.26), pp. 12–13; Theorems 5.17–5.18 and proof, pp. 30–31.)

Hypotheses for this target: L/K ramified quadratic, p>2, u a uniformizer of L with ū=−u, n even and n≥2; strict relative O_K-module conventions as in Layer 0; K/ℚ_p an arbitrary finite extension.

*Route.* Define κ₂ by the minimal cover of the framing; it is locally constant, so the two loci are open and closed (Wu16 §3.4). Construct the Bruhat–Tits stratification over K by the special-Hom lattices of §3.6 and identify each closed stratum with the generalized Deligne–Lusztig variety of the orthogonal group of Λ^∨/Λ over the residue field (LL22 Proposition 2.28). Every vertex lattice lies in one of maximal type and the simplicial complex of vertex lattices is connected; hence each κ₂-locus has connected reduced locus (the argument of Wu16 Theorem 5.18(2), which uses only the hermitian lattice combinatorics of L/K and so applies over every K, as LL22 footnote 8 records). Both loci are nonempty, since every stratum V_Λ meets each of them (LL22 Proposition 2.28(2)); a framing self-quasi-isogeny g with κ₂(g)=1 maps one isomorphically onto the other (Wu16 (3.24)).

**Checks.**

- At K=ℚ_p and n=2 there are two components, each formally smooth of relative dimension 1, with reduced locus of dimension n/2−1=0; reading the dimension of the reduced locus as the relative dimension would give 1.
- At n=2 the space V^exo is two-dimensional and nonsplit, hence anisotropic; every vertex lattice has type 2, no two distinct vertex lattices span a vertex lattice, and connectedness forces the reduced locus of each component to be a single point.
- The labels depend on the framing, not on the geometry of one component: a framing self-quasi-isogeny g exchanges the two components when κ₂(g)=1 and preserves each when κ₂(g)=0 (Wu16 (3.24)).

*Needs:* §3.3; §3.4; §3.6; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10.

### Examples

- Rank two. For K=ℚ_p and n=2, N^exo has two connected components, each of relative dimension 1 over Spf O_L̆ with reduced locus a single point; each component is Spf O_L̆[[t]].
- Polarization kernel. For n=2 the exotic polarization has kernel X[i(u)] of order q²; a principal polarization (kernel of order 1) is not an exotic polarization.
- Rank four. For n=4 the reduced locus of each component is a union of curves V_Λ with t(Λ)=4, of dimension t(Λ)/2−1=1; two of them meet, if at all, in `V_{Λ+Λ′}`, which is a point when t(Λ+Λ′)=2.

### Dependencies

Within this roadmap: Layer 0 (§0.1, §0.2, §0.3).

Suppliers: FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.1, §R07.2.10; PELModuli §M0.18; AbelianSchemesAndArithmeticModuli §A4.7; EndoscopicTransferAndUnitaryTraceComparison §§7.6, 10.2; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9.

## Layer 4: Absolute and relative exotic comparison

With K/ℚ_p unramified, construct the absolute embedding-graded exotic category and banal Frobenius contraction with all pairing units. Prove the supersingular display equivalence and identify framed formal moduli. Contract the principal CM source separately and prove the normalized Hermitian rational-Hom isometry, retaining integral Hom lifting and chosen framing identifications.

### 4.1 Absolute exotic module category

Assume K/ℚ_p is unramified of degree f and L/K is ramified quadratic as in Layer 3. For an admissible local CM type Φ, define Exo_Φ(n−1,1) using absolute p-divisible groups of height 2nf and dimension nf with O_L-action and the exotic polarization kernel. Decompose the display by the f embeddings of O_K. The distinguished summand has the signature, wedge and spin clauses of Layer 3; every other summand has the prescribed banal O_L Lie character. Exact-polarization arrows and the supersingular subcategory are retained. (LL22, §2.8, Definition 2.59, p. 38.)

Hypotheses for this target: L/K ramified quadratic, p>2, u a uniformizer of L with ū=−u, n even and n≥2; strict relative O_K-module conventions as in Layer 0. K/ℚ_p unramified; Φ satisfies the local admissibility convention of LL22 §2.8.

*Route.* Use the unramified idempotent decomposition of the polarized display of §0.1. Impose the distinguished and banal conditions on the appropriate summands. Verify that the absolute height and dimension sum over f embeddings.

**API.**

- An object of Exo_Φ(n−1,1) is determined by its embedding-indexed Lie and polarization data satisfying the distinguished and banal conditions.
- Each object decomposes into embedding components, exactly one of which is distinguished and the others banal.
- Base change preserves the labeled decomposition and all conditions.
- The absolute height and dimension are 2nf and nf.

**Checks.**

- For f=2 and n=2 the absolute height is 8 and dimension 4.
- An object with a nonbanal Lie action at a nondistinguished embedding is rejected.
- For f=1 the absolute data have the single relative signature and kernel condition.

*Needs:* §3.1; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; PELModuli §M0.25.

### 4.2 Banal display contraction

For a nondistinguished component i of an Exo_Φ object, Q_i=(u⊗1−1⊗[φ_i(u)])P_i+I(R)P_i and the normalized Frobenius F_i′ used by LL22 is a Frobenius-linear isomorphism. Its pairing correction is the unit ε_i defined by Vε_i=[ψ_i(u²)]−ψ̂_i(u²). These identities permit contraction without losing the integral display lattice. (LL22, §2.8, Lemma 2.60, pp. 38–39.)

*Route.* Use the banal Lie condition to identify Q_i modulo I(R). Apply the display relations and the ε_i unit to normalize F_i. Check integrality in a normal decomposition, not solely after inverting p.

**Checks.**

- For f=1 there are no nondistinguished components to contract.
- A rational Frobenius isomorphism alone does not prove this integral statement.

*Needs:* §4.1; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10.

### 4.3 Exotic relative functor

Choose μ in the coefficient Witt units satisfying `F^f(μ)/μ=∏_{i=1}^{f−1}F^{f−1−i}(ε_i)`. Define rel by retaining (P_0,Q_0), contracting F_0 through the normalized banal Frobenius maps `F′_1,…,F′_{f−1}`, and multiplying the retained pairing by μ. This gives a functor `rel:Exo_{Φ,b}(n−1,1)→Exo_b(n−1,1)` over noetherian nilpotent bases, preserving polarized morphisms and rational homomorphisms. (LL22, §2.8, equations (2.20)–(2.22) and the pairing correction, pp. 38–40.)

*Route.* Solve the Frobenius difference equation for a unit μ in the chosen unramified coefficient ring. Compose the normalized maps around the embedding cycle to obtain the relative display. Check its display relations and pairing identities, using μ to cancel the ε-product.

**API.**

- rel(X) is the contracted display with the μ-scaled pairing.
- Restrict a compatible display morphism to P_0 and preserve identities and composition.
- The μ correction gives the required relative polarization and kernel.
- Contraction commutes with inversion of p and sends rational homomorphisms to rational homomorphisms.

**Checks.**

- For f=1 choose μ=1; contraction and pairing correction are identities.
- For f=2 relative height is 2n, while absolute height is 4n.
- A ramified K/ℚ_p has no input to this unramified-idempotent construction.

*Needs:* §4.2; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; §3.2.

### 4.4 Exotic display equivalence

The functor rel is an equivalence of the supersingular exotic module categories on noetherian nilpotent bases. A quasi-inverse reconstructs the banal components, and the equivalence identifies endomorphisms, adjoints and polarized rational Hom spaces. The hypotheses K/ℚ_p unramified and the noetherian nilpotent base are retained. (LL22, §2.8, Proposition 2.62 and Lemma 2.63, pp. 40–42; Remark 2.68, p. 43.)

*Route.* Use a normal decomposition of the retained display to reconstruct each omitted component. Check the unit and counit are integral display isomorphisms. Descend endomorphisms through the component equations and check compatibility of the pairing.

**Checks.**

- The equivalence has a quasi-inverse on morphisms, not just a map of isomorphism classes.
- The source does not establish the ramified-K/ℚ_p version.

*Needs:* §4.3; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10.

### 4.5 Absolute principal CM source comparison

With unramified K/ℚ_p of degree f, let X₀,Φ be the principal CM source of absolute height 2f and dimension f: each ψ_i Lie summand has rank one and O_L acts through φ_i∈Φ. The principal polarized display contraction constructed as in LL22 (2.21) sends it to §3.5 and gives `End_{O_L}(X₀,Φ)≅O_L` and the matching rational Hom map into an exotic target. It is a separate principal-source comparison, not an application of the even-rank exotic category to rank one. Contracting source and target compatibly gives the isometry of the u^−2-normalized forms in (2.25). (LL22, §2.8, paragraph preceding equation (2.25) and Corollary 2.66, p. 43.)

*Route.* Contract the principal CM display around its embedding cycle, keeping its principal pairing. Identify its retained rank-one relative source and O_L endomorphisms. Restrict a Hom display morphism to the distinguished component and compare the source and target pairing corrections to obtain (2.25).

**API.**

- The contraction of X₀,Φ is the relative principal source of §3.5, with a framed identification.
- Absolute height 2f and dimension f become relative height 2 and dimension 1.
- The induced Hom map agrees with restriction to the distinguished display component and preserves the normalized form.
- The source comparison and its Hom map commute with allowed base changes.

**Checks.**

- For f=1 and compatible choices the source comparison is the identity.
- A source with kernel X₀[i(u)] is excluded from this principal comparison.
- For f=2 the absolute source has height 4 and dimension 2, while its relative source has height 2 and dimension 1.

*Needs:* §3.5; §4.3; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10.

### 4.6 Absolute and relative exotic spaces

After choosing an identification rel(𝕏_Φ)≅𝕏 and the principal-source contraction of `X_{0,Φ}≅X_0`, rel induces an equivariant isomorphism N_Φ≅N^exo of framed formal schemes and an isometry V_Φ≅V^exo for the normalized u^−2 special-Hom forms. It transports the condition that a rational homomorphism is integral on a deformation; changing the chosen framing identifications conjugates the comparison. (LL22, §2.8, Corollaries 2.65–2.66, pp. 42–43.)

*Route.* Transport framed objects and the two framings under the categorical equivalence. Use Lemma 2.63 for quasi-homomorphism descent and the polarization calculation for its isometry. Apply formal Yoneda and compare the postcomposition actions.

**Checks.**

- For f=1 and identity framing choices the comparison is identity.
- Integrality of a rational homomorphism is preserved; no intersection-number theorem is needed.

*Needs:* §4.4; §3.3; §3.6; §0.2; §4.5.

### Examples

- Contraction for f=2. For K/ℚ_p unramified of degree 2 and n=2 an object of Exo_Φ(1,1) has height 8 and dimension 4, with one banal component; the unit μ solves F²(μ)/μ=ε₁, and rel produces a relative exotic module of height 4 and dimension 2.
- f=1. With one embedding there is no banal component, the product defining μ is empty, μ=1, and rel is the identity.
- Principal source for f=2. X₀,Φ has height 4 and dimension 2 with a rank-one Lie summand at each embedding; its contraction is the principal source of §3.5, of relative height 2 and dimension 1.

### Dependencies

Within this roadmap: Layer 0 (§0.1, §0.2); Layer 3 (§3.1, §3.2, §3.3, §3.5, §3.6).

Suppliers: FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; PELModuli §M0.25.

## Layer 5: Krämer formal moduli

At a ramified quadratic odd prime construct the principal-polarization Krämer framed functor with its rank-(n−1) conjugate Lie filtration and unit-compatible framing. Prove flat regular semistable geometry via the actual Krämer charts, treating rank two directly. Construct the canonical ramified rank-one source, Hermitian isocrystal fixed space, its trace recovery and scaled evaluation comparison; retain odd/even framing signs.

### 5.1 Krämer filtration

For a principal hermitian module X of signature (1,n−1), a Krämer filtration is an O_L-stable locally direct summand F_X⊂Lie X of rank n−1 on which O_L acts by the conjugate structural embedding, with structural O_L-action on the rank-one quotient. The structural/conjugate assignment is exactly that of HLSY23 Definition 2.2; comparing another signature convention requires conjugating both actions. The filtration is integral extra data, not just the determinant condition. (HLSY23, Definition 2.2, p. 10.)

Hypotheses for this target: L/K ramified quadratic, p>2, ū=−u, n≥2; fixed supersingular principal hermitian framing of signature (1,n−1).

*Route.* Form the relative Grassmannian of rank-(n−1) locally direct summands of Lie X. Impose stability and the two scalar-action equations on subbundle and quotient. Check local freeness and descent under the base site.

**API.**

- A Krämer filtration is an O_L-stable rank-(n−1) locally direct summand of Lie X with conjugate action, whose quotient has the structural action.
- The quotient Lie X/F_X is locally free of rank one with the structural O_L-action.
- Pullback preserves the subbundle and quotient conditions.
- On the characteristic-zero fibre the two distinct eigencharacters determine the filtration uniquely.

**Checks.**

- At n=3 the filtration has rank 2 and quotient rank 1.
- A rank-one subbundle at n=3 fails the Krämer condition even when it is stable.
- After inverting u the filtration is the prescribed conjugate eigenspace, not the structural one.

*Needs:* §0.3; §0.7.

### 5.2 Ramified rank-one source

Fix a supersingular strict principal hermitian O_L-module Y of relative height 2 and dimension 1, of signature (0,1). Its chosen height-zero exact-polarization deformation component has a canonical lift G over O_L̆ with conjugate structural Lie action. Distinguish this chosen component from Howard19’s full rank-one space, which permits arbitrary quasi-isogeny height and is a countable disjoint union of Spf O_L̆. Fix a generator e of the associated Hermitian fixed line; its norm is an O_K-unit and rescale λ_Y by that unit to normalize (e,e)_Y=1 when an isometry is required. (HLSY23, §§2.2–2.3, pp. 11–12; Howard19 Proposition 2.1, p. 6.)

*Route.* Use the height-one strict deformation theory of EndoscopicTransferAndUnitaryTraceComparison §10.2 for the rank-one signature and chosen framing component. Compute its Hermitian fixed line using relative Dieudonné theory. Retain the polarization normalization and its effect on the source-line norm.

**API.**

- The chosen framed rank-one source has a canonical lift G over O_L̆ with conjugate structural Lie action.
- Its special fibre with framed polarization is the chosen Y.
- Rescaling the source polarization by the O_K-unit (e,e)_Y⁻¹ gives (e,e)=1.
- Pullback of the canonical lift is compatible with its framing and source action.

**Checks.**

- The Lie action of a∈O_L is ā, not a.
- The relative height is 2 and the absolute height is 2[K:ℚ_p].
- The chosen height-zero component does not equal the countable union allowing arbitrary height.

*Needs:* §0.3; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; §0.2; EndoscopicTransferAndUnitaryTraceComparison §§7.6, 10.2.

### 5.3 Krämer framed formal space

Construct N_n^Kra from quintuples (X,i,λ,ρ,F_X), with X principal hermitian of the indicated signature, a Krämer filtration, and height-zero O_L-linear framing to 𝕏 carrying λ to the fixed framing polarization locally up to a unit in O_K×. Morphisms commute with the framing and carry polarization to a unit multiple, as in HLSY23. The polarization compatibility of ρ is required explicitly even though it is omitted in the printed definition. (HLSY23, Definition 2.2, pp. 10–11; Howard19 §2 and Proposition 2.2, pp. 5–6.)

Hypotheses for this target: L/K ramified quadratic, p>2, ū=−u, n≥2; fixed supersingular principal hermitian framing of signature (1,n−1).

*Route.* Construct the principal polarized framed groupoid with the unit-similitude normalization. Adjoin the Krämer Grassmannian filtration and its scalar equations. Use formal PEL representability and rigidification of the framing.

**API.**

- A point of N_n^Kra is (X,i,λ,ρ,F) with F a Krämer filtration and ρ carrying the framing polarization to an O_K-unit multiple of λ.
- Forgetting F maps N_n^Kra to the principal ramified framed functor with the wedge condition.
- The full quintuple and its unit-similitude arrow relation commute with base change.
- Replacing λ by an O_K-unit multiple leaves the declared polarized class; arbitrary nonunits do not.

**Checks.**

- An O_L-linear height-zero framing failing unit-polarization compatibility is rejected.
- For c∈O_K×, λ and cλ represent the same polarization class with corresponding data.
- A polarization with kernel X[i(u)] is not a principal Krämer object.

*Needs:* §5.1; §0.2.

### 5.4 Krämer Hermitian isocrystal

Let N be the relative covariant rational Dieudonné module of the framing, Π=i(u), and τ=ΠV^−1 with the covariant convention of FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.20. Set `C=N^{τ=1}`. Choose δ in O_K̆× with σ(δ)=−δ. The formula (x,y)=δ(⟨Πx,y⟩+u⟨x,y⟩) on C is a nondegenerate L/K-Hermitian form, and ⟨x,y⟩=(2δ)^−1 `Tr_{L/K}(u^−1(x,y))` recovers the alternating form. C has dimension n over L. (HLSY23, §2.2, equations (2.1)–(2.2), pp. 11–12.)

*Route.* Use the relative covariant isocrystal and compute τ as a slope-zero descent operator. Apply descent for the fixed vectors, retaining Π and V conventions. Verify Hermitian symmetry and the inverse trace identity, including the factor 2δ.

**API.**

- `C=N^{τ=1}` is an L-vector space of dimension n.
- (x,y)=δ(⟨Πx,y⟩+u⟨x,y⟩) is a nondegenerate hermitian form on C.
- `⟨x,y⟩=(2δ)⁻¹Tr_{L/K}(u⁻¹(x,y))` recovers the alternating form.
- Polarized framing isomorphisms induce Hermitian isometries of C.

**Checks.**

- For n=3 the L-dimension of C is 3 and the relative K-isocrystal dimension is 6.
- With A=⟨Πx,y⟩ and B=⟨x,y⟩, `Tr_{L/K}(u^−1·δ(A+uB))=δ(Tr_{L/K}(u^−1)A+2B)=2δB`, because `Tr_{L/K}(u^−1)=u^−1+ū^−1=0` and δ∈K̆. So (2δ)^−1Tr recovers B, whereas δ^−1Tr returns 2B, which differs from B whenever B≠0; since 2 is a unit for odd p, no integrality test detects the wrong factor.
- Replacing V^−1 by F^−1 without changing conventions is not the stated τ.
- Omitting the factor 2 changes recovery of the alternating form when p is odd.

*Needs:* §5.3; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.20.

### 5.5 Krämer framing parity

The two determinant signs `χ((−1)^{n(n−1)/2} det C)` give the two framing polarization classes. Their resulting ramified unitary formal moduli spaces are isomorphic for n odd; for n even they are not isomorphic. Keep a specified sign when comparing them to a global basic locus; a self-dual lattice alone does not select the sign at a ramified place. (HLSY23, §2.1–2.2, pp. 11–12; RSZ21 Remark 6.9, p. 33.)

*Route.* Apply ramified Hermitian determinant classification. Check the effect of unit rescaling on the determinant sign in odd and even rank. Compare the framing categories, retaining the selected sign in the global input.

**Checks.**

- For n=3 unit rescaling relates the two formal spaces.
- For n=2 the sign choice cannot be discarded.

*Needs:* §5.4; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9.

### 5.6 Krämer normal-crossing charts

Over the natural ramified coefficient DVR with p odd, the principal Krämer local-model charts meeting the exceptional locus have equation `y(Σ_{i=1}^n x_i²)=2u` with x_k=1, for some k. At an intersection point the residue quadric Σx_i²=0 is smooth, so this is étale locally yz=u times n−2 smooth parameters. For n≥3 this is the chart in Krämer03 (4.11). For n=2 the same equations give y(1+x²)=2u; at either geometric root of 1+x² the derivative 2x is invertible, giving the same crossing chart. This rank-two extension asserts local normal crossings and does not assert the global irreducibility of the n≥3 quadric. (Kraemer03, Definition 4.1, p. 7; proof of Theorem 4.5, equations (4.3)–(4.11), pp. 11–13; the rank-two case is the computation given here.)

*Route.* Choose the invertible Hodge minor and normalize the kth coordinate of the extra line. Eliminate the symmetric matrix A and γ using A+uI=λγᵗ and λ_k=1 to obtain yΣx_i²=2u. At quadric points use its nonzero gradient for an étale coordinate z=Σx_i²/2; away the quadric or y=0 use the smooth equation. For n=2 check the two geometric roots explicitly, without importing the n≥3 geometric irreducibility assertion.

**Checks.**

- The n=2 crossing is étale locally yz=u over O_L̆.
- The n=2 residue quadric consists of two geometric points, so it is not claimed irreducible.
- The chart after u=t^e with e>1 need not be regular.

*Needs:* §5.3; AlgebraicModuliForArithmeticGeometry §1.3; SchemeAndStackFoundations Layer 4.

### 5.7 Krämer regularity theorem

N_n^Kra is flat, regular and locally formally of finite type over O_L̆, of relative dimension n−1, and has semistable reduction over this natural coefficient ring. Its forgetful map to the wedge-model framed functor is proper and an isomorphism on the generic fibre. Global models after a ramified coefficient extension require a separate regularity check; the global n=2 case is not obtained from RSZ21 Theorem 6.7(ii). (HLSY23, §2.1, p. 11; Howard19 Proposition 2.2, p. 6; RSZ21 Theorem 6.7 and Remark 6.8, pp. 32–33.)

Hypotheses for this target: L/K ramified quadratic, p>2, ū=−u, n≥2; fixed supersingular principal hermitian framing of signature (1,n−1).

*Route.* Use the Krämer local-model filtration calculation for the representing formal chart. The filtration resolves the isolated wedge-model singularity; check the normal-crossing local equation over O_L̆. Transfer flatness and regularity through the smooth local-model chart; record coefficient base change separately.

**Checks.**

- The absolute dimension over the DVR is n, and relative dimension is n−1.
- For n=2 the global local-model reflex field and ramified base change in RSZ21 Remark 6.8 must be distinguished from the formal Krämer model.

*Needs:* §5.3; AbelianSchemesAndArithmeticModuli §A4.7; §0.2; §5.6.

### 5.8 Krämer special Hom space

For the ramified principal framing 𝕏 and the rank-one source Y of Layer 5, define `V=Hom^0_{O_L}(Y,𝕏)` with h(x,y)=λ_Y^−1 y∨λ_𝕏x in `End^0_{O_L}(Y)=L`. This is a nondegenerate dimension-n Hermitian space. The group of exact-polarization framing quasi-isogenies acts by postcomposition and identifies with U(V)(K). The fixed-space comparison includes the source-line norm and becomes an isometry only in Layer 5’s normalized choice. (HLSY23, §2.2, equations (2.3)–(2.6), p. 11.)

*Route.* Use relative Dieudonné full faithfulness to form the rational O_L-linear Hom space. Compute the adjoint formula for h and prove its nondegeneracy. Identify the postcomposition isometries, retaining the precise source polarization normalization.

**API.**

- V carries the λ_Y-normalized pairing h(x,y)=λ_Y⁻¹y^∨λ_𝕏x with values in `End⁰_{O_L}(Y)=L`.
- The L-dimension is n and the endomorphism field of the source is L.
- The exact-polarization framing self-quasi-isogenies of 𝕏 form the group U(V)(K), acting by postcomposition.
- Isomorphisms of both polarized source and target induce the corresponding Hom-space isometry.

**Checks.**

- h(y,x) is the L/K-conjugate of h(x,y).
- For n=2 this space has L-dimension 2, not relative-isocrystal dimension 4.
- Rescaling λ_Y by c multiplies h by c^−1, which is tracked in the comparison.

*Needs:* §5.2; §5.3; §5.4; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9.

### 5.9 Special Hom and fixed-space comparison

Fix a principal rank-one source Y and a basis e of its Hermitian fixed-space line. Evaluation b:x↦x(e) identifies `Hom^0_{O_L}(Y,𝕏)` with C as L-vector spaces, and (b(x),b(y))_C=h(x,y)(e,e)_Y. It is an isometry only after normalizing (e,e)_Y=1, which may require rescaling the chosen source polarization. Do not silently replace a similarity by an isometry. (HLSY23, §2.2, pp. 11–12.)

*Route.* Identify O_L-linear rational homomorphisms by Dieudonné full faithfulness. Evaluate at the chosen basis of the source line. Compute adjoints and keep its Hermitian norm factor.

**Checks.**

- The norm factor is 1 exactly in the chosen normalization.
- Changing e to ae multiplies the factor by a ā.

*Needs:* §5.4; §5.8; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10.

### Examples

- The rank-two chart. For n=2 the Krämer chart is y(1+x²)=2u over O_L̆. Since p is odd the roots x=±i of 1+x² are simple, z=(1+x²)/2 is an étale coordinate there, and the chart becomes yz=u: regular, with special fibre the two smooth branches y=0 and z=0 crossing transversally.
- Ranks of the filtration. For n=3 the Krämer filtration is a rank-2 summand of Lie X with conjugate action and a rank-1 structural quotient; for n=2 both have rank 1, and only the actions distinguish them.
- Parity. For n=3 the two framing classes of §5.5 give isomorphic formal spaces (a unit rescaling changes the determinant sign in odd rank); for n=2 they do not, so the sign is part of the datum.

### Dependencies

Within this roadmap: Layer 0 (§0.1, §0.2, §0.3, §0.7).

Suppliers: FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10, §R07.2.20; EndoscopicTransferAndUnitaryTraceComparison §§7.6, 10.2; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; AlgebraicModuliForArithmeticGeometry §1.3; SchemeAndStackFoundations Layer 4; AbelianSchemesAndArithmeticModuli §A4.7.

## Layer 6: Global CM and unitary comparison data

Specialize the imported PEL and torus data to the RSZ fibre-product group, integral lattice/polarization levels and CM component. Prove that the integral CM moduli are finite étale at every prime. Define local admissibility at every p-place, justify the unramified coefficient compositum under its actual hypotheses, and impose the crystalline/Tate sign and actual Eisenstein annihilation conditions. Compare the auxiliary CM product conventions with RSZ arrows without discarding the common scalar quotient.

### 6.1 Strict fake Drinfeld datum

From the existing rank-one CM datum W₀ and unitary PEL datum V, specialize the positive norm torus `Z^ℚ={z∈Res_{F/ℚ}𝔾_m:Nm_{F/F⁺}(z)∈𝔾_m}` and rational-similitude group `G^ℚ={g∈Res_{F⁺/ℚ}GU(V):c(g)∈𝔾_m}`. Construct `G̃=Z^ℚ×_{𝔾_m}G^ℚ` and the isomorphism (z,g)↦(z,z^−1g) with `Z^ℚ×Res_{F⁺/ℚ}U(V)`. Transport the existing Shimura cocharacter, whose φ-component has z and z̄ eigenspaces of dimensions r_φ and r_φ̄. Its reflex field is E=E_Φ E_r, containing φ₀(F). Generic torus canonical models and generic PEL data are imported, not reconstructed. (Zhang21, §6.1, equations (6.1)–(6.6), pp. 901–902; LZ22 §11.1, p. 73.)

Hypotheses for this target: F/F⁺ CM, Φ a CM type with distinguished φ₀, n≥2; signature (n−1,1) at φ₀ and (n,0) at the other members of Φ. Use the PELModuli carriers, rational similitude convention and positive CM norm torus.

*Route.* Restrict the existing similitude character to rational multipliers and form the fibre product with the norm torus. Verify the product isomorphism and its inverse (z,u)↦(z,zu). Compute the stabilizer of the labeled signature and CM type to identify the compositum reflex field.

**API.**

- G̃ has two projections, to Z^ℚ and to G^ℚ, on which the multiplier characters agree.
- (z,g)↦(z,z⁻¹g) is an isomorphism of algebraic groups `G̃≅Z^ℚ×Res_{F⁺/ℚ}U(V)`, with inverse (z,u)↦(z,zu).
- The reflex field of the transported cocharacter is E_ΦE_r, with the specified embedding of F.
- Product compact open levels correspond under the product isomorphism.

**Checks.**

- For (z,g) the equation c(g)=Nm(z) is necessary; arbitrary independent factors in Z^ℚ×G^ℚ are rejected.
- The inverse of (z,u) is (z,zu), rather than (z,u).
- Exactly one real place has signature (n−1,1); the others have (n,0).

*Needs:* PELModuli §M0.6; PELModuli §M0.7; PELModuli §M0.23; PELModuli §M0.16; ShimuraVarieties §4.5; ShimuraVarieties §6.7; PELModuli §M5.5.

### 6.2 Admissible CM coefficient data

For a chosen p-adic embedding and distinguished place u, retain an admissible CM type Φ in the sense used by Li–Liu: at a split v|p all embeddings inducing the selected F-place lie on the same side of Φ; at an inert v the local type is pulled back from the maximal unramified subfield. In the exotic extension, each ramified v additionally has compositum of F_u with the local CM-type reflex field unramified over F_u. Set K=F_uE_Φ, the subfield of ℚ̄_p generated by the closure F_u of F under the fixed p-adic embedding (which induces the place above u) and by the reflex field E_Φ. The exotic condition is imposed at every ramified v above p, not only at u. (LL21, Notation 5.6, p. 28; LL22 Definition 1.1, p. 3, and Notation 4.19, p. 57.)

*Route.* Use the existing generalized CM type and its embeddings at p. Impose the three place-type clauses and compute the local reflex field by its stabilizer. Form the compositum in the chosen algebraic closure of ℚ_p.

**API.**

- An admissible CM datum consists of Φ, the selected p-adic embedding, and the split, inert and ramified admissibility clauses at every v|p.
- Its coefficient field is K=F_uE_Φ inside ℚ̄_p, with the fixed embeddings.
- At each ramified v|p the compositum of F_u with the local CM-type reflex field is unramified over F_u.
- Admissibility is preserved by simultaneous relabelling of the embeddings and places.

**Checks.**

- A split local CM type choosing embeddings on both sides is rejected.
- Admissibility can fail because of a ramified place v≠u above the same p.
- Let F⁺_v=ℚ_p(√p) and F_v=F⁺_v(√ε) unramified quadratic over F⁺_v, so the maximal subfield of F_v unramified over ℚ_p is `ℚ_{p²}` and the four embeddings of F_v are the pairs (σ,±) of an embedding σ of `ℚ_{p²}` and a sign of √p, with conjugation acting by σ↦σ̄. The type {(σ,+),(σ,−)} is pulled back from `ℚ_{p²}` and is admissible at the inert v; the CM type {(σ,+),(σ̄,−)} is not pulled back and is rejected. When F_v/ℚ_p is unramified every local type is pulled back and the clause is vacuous.

*Needs:* PELModuli §M0.25; PELModuli §M0.16; §6.1.

### 6.3 Auxiliary CM product comparison

For the Li–Liu even-rank unitary canonical model X_L and auxiliary positive-CM canonical model Y at neat rational-norm torus level, identify the generic moduli of sextuples with (X_L×_E Y) over E′=EE_Φ. Retain the Li–Liu equivalence by paired quasi-isogenies (A₀,A) pulling both polarizations back by one common rational scalar. It is compared to the RSZ groupoid through its torus fibre product and rigidifications; it is not identified objectwise with the groupoid whose A₀ arrows are exact isomorphisms. Change-of-complex-embedding maps are compatible with the transported level and CM actions. (LL21, §5, Lemmas 5.2 and 5.5, pp. 26–28.)

*Route.* Apply the generic PEL/CM equivalence with the common multiplier on both factors. Use the product group isomorphism and CM reciprocity to descend the complex identification to E′. Track the torus rigidification and the embedding change, rather than discarding the scalar equivalence relation.

**Checks.**

- The same scalar is used for both λ₀ and λ in the Li–Liu arrows.
- The CM factor Y remains in the generic-fibre identification.

*Needs:* §6.1; PELModuli §M1.9; PELModuli §M4.3; ShimuraVarieties §5.10; §6.2.

### 6.4 Unramified CM coefficient extension

Let Φ satisfy §6.2 at every v|p. Then K=F_uE_Φ is unramified over F_u: split factors contribute only unramified embedding data, inert factors come from unramified subfields, and each ramified factor has `F_uE_{Φ_v}/F_u` unramified by the actual admissibility clause. The local reflex field E_Φ lies in the compositum of these fields. In the split/inert distinguished range the Galois-closure condition of LL22 Definition 1.1 is a sufficient existence criterion for such a Φ. At a ramified exotic distinguished u retain existence of an admissible Φ as an explicit datum; no membership of u in the split/inert set is asserted. Smoothness and semistability transfers use the resulting unramified K/F_u. (LL21, Notation 5.6, p. 28; LL22 Definition 1.1 and Remark 1.2, p. 3, Notation 4.19, p. 57.)

*Route.* Express the stabilizer of the global CM type as the intersection of its local stabilizers and embed its reflex field in their compositum. Use the single-side split and unramified-pullback inert conditions. Use `F_uE_{Φ_v}/F_u` unramified at every ramified v; finite composita and subextensions of unramified local extensions remain unramified.

**Checks.**

- The conclusion includes all ramified factors above p, not just the distinguished one.
- A ramified coefficient extension is not declared semistability-preserving.

*Needs:* §6.2; PELModuli §M0.17.

### 6.5 Integral Eisenstein conditions

After the maximal-unramified embedding decomposition Lie `A=⊕_{w,ψ}Lie_{w,ψ}A`, at a banal factor form `Q_{A_ψ}(T)=∏_{φ∈A_ψ}(T−φ(π_w))`, where A_ψ is the set of embeddings extending ψ with r_φ=n, and require `Q_{A_ψ}(i(π_w))=0` as an endomorphism of that Lie summand. At the unique fake-Drinfeld factor for an unramified quadratic extension, impose Mihatsch’s P(r,s) structural-action condition, equivalently the relative-comparison Lie condition of Layer 0. These are actual annihilation/subquotient conditions, independent of the uniformizer and descended to `O_{E,ν}`; a determinant polynomial or the ranks alone is insufficient in ramified absolute extensions. (RSZ21, §5.2, cases (1)–(2), p. 25 and footnote 11; Mih19 §2, pp. 7–10; RSZ20 equation (4.10), pp. 16–17; RZ17, equation (8.2), p. 28, the condition RSZ21 case (2) imports; Zhang21, footnote 3, p. 908, its agreement with the Eisenstein condition of Mih19 in signature (n−1,1).)

*Route.* Construct the embedding summands over a common unramified splitting coefficient ring. Impose the actual polynomial zero-endomorphism condition on banal factors and the P(r,s) condition on the distinguished factor. Use the uniformizer-independence argument and faithfully flat descent to the reflex coefficient ring.

**API.**

- At a banal factor the condition is the zero-endomorphism equation `Q_{A_ψ}(i(π_w))=0` on the Lie summand.
- At the fake-Drinfeld factor the condition is the P(r,s) structural-action condition of §0.4.
- The resulting condition is unchanged by replacing π_w by another uniformizer.
- Pullback preserves the annihilation equations and their descended formulation.

**Checks.**

- If A_ψ is empty, Q=1 forces the banal Lie summand to vanish.
- When the local absolute field is unramified, the Kottwitz condition already implies this clause.
- A nonzero nilpotent Jordan block with the correct characteristic polynomial can fail the required zero-endomorphism equation.

*Needs:* §0.4; §6.2; PELModuli §M0.18; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10.

### 6.6 Integral CM moduli at every prime

Let F/F⁺ be a CM field, Φ a CM type with reflex field E_Φ, and a a fractional ideal of F⁺. The moduli problem M₀^a over `O_{E_Φ}` of triples (A₀,ι₀,λ₀), with A₀ an abelian scheme, ι₀:O_F→End(A₀) satisfying the Kottwitz condition char(ι₀(a)|Lie `A₀)=∏_{φ∈Φ}(T−φ(a)`) for all a∈O_F, and λ₀ a polarization of type a whose Rosati involution induces conjugation on O_F, is a Deligne–Mumford stack finite and étale over Spec `O_{E_Φ}`, at every prime, including the primes ramified in F. It is the disjoint union of open and closed substacks `M₀^{a,ξ}` indexed by the classes ξ of rank-one hermitian lattices of type Φ and polarization type a. A given `M₀^{a,ξ}` may be empty; M₀^a is nonempty when F/F⁺ is ramified at some finite place. This extends the CM moduli of PELModuli §M4.7, which assumes p unramified in F, to every prime. (RSZ21, §3.3, (3.15)–(3.16) and Remark 3.7, pp. 11–12; §4.1, (4.2), p. 17; LL22, Notation 4.19, pp. 57–58.)

Hypotheses for this target: F/F⁺ CM, Φ a CM type, a a fractional ideal of F⁺; no condition on the residue characteristic.

*Route.* On a local Artinian thickening, after an étale extension of the base, decompose O_F⊗O_S by places and unramified embeddings; each piece is O_S[x]/(E(x)) for an Eisenstein-type polynomial, and a quotient that is locally free with characteristic polynomial `∏_{φ∈Φ}(T−φ(π))` is R[x]/(H) with H that polynomial, so the Kottwitz condition determines the Hodge filtration. By Grothendieck–Messing and Serre–Tate, (A₀,ι₀) and its polarization therefore deform uniquely: M₀^a is formally étale. Properness from potentially good reduction of CM abelian varieties and finiteness of the polarized objects of fixed type; an étale proper quasi-finite Deligne–Mumford stack is finite étale. The ξ-decomposition is by the Betti lattices on complex points and descends to E_Φ.

**Checks.**

- For F imaginary quadratic, Φ={φ} and p ramified in F, the p-divisible group of A₀ is a strict `O_{F_p}-module` of relative height 1, whose deformation is unique; so M₀^a is étale at p, a case excluded by the hypothesis that p is unramified in PELModuli §M4.7.
- Over R=k[ε] with k of characteristic p, the x-stable submodules of R[x]/(x²) with free rank-one quotient are exactly the ideals (x+εc), c∈k, since (x+α) contains x² only when α²=0. The Kottwitz condition prescribes the characteristic polynomial T+εc of x on the quotient and so fixes c, whereas the condition rank Lie=|Φ| alone allows every c: rank conditions do not give étaleness.
- Emptiness is allowed: a pair moduli problem built on `M₀^{a,ξ}` is empty when `M₀^{a,ξ}` is, and nonemptiness is a separate hypothesis wherever it is used.

*Needs:* PELModuli §§M0.23–M0.25; PELModuli §§M4.7–M4.8; PELModuli §M2.11; AbelianSchemesAndArithmeticModuli §A4.7; AbelianSchemesAndArithmeticModuli §A4.9; §0.1.

### 6.7 Integral unitary level data

Fix O_F-lattices Λ_v and their Hermitian duals Λ_v^♯, a CM polarization ideal a prime to p when working semi-globally, and a selected nonempty CM component ξ. Record for every v|p whether F_v/F⁺_v is split, unramified quadratic or ramified quadratic, and its self-dual, almost self-dual or π-modular lattice type. K_v is the lattice stabilizer, except at explicitly named split Drinfeld congruence levels. Record separately the alternating trace-dual lattice used by the global polarization; its relation to the Hermitian dual involves the different and the chosen trace scalar. (RSZ21, §§3.3, 4.1, pp. 14–19; Remark 6.5, pp. 30–31; LZ22 §11.2, pp. 74–75.)

Hypotheses for this target: F/F⁺ CM, Φ a CM type with distinguished φ₀, n≥2; signature (n−1,1) at φ₀ and (n,0) at the other members of Φ. Use the PELModuli carriers, rational similitude convention and positive CM norm torus.

*Route.* Import generic lattice, dual and stabilizer operations from GeometryOfNumbersAndQuadraticArithmetic §2.7. Specify the local dual quotient and the trace-duality conversion for each chosen polarization. Store the local coefficient extension and CM component as part of the level datum.

**API.**

- A level datum consists of the local lattice types, their stabilizers, the trace scalar and the CM component.
- At each v|p the polarization kernel has order #Λ_v^♯/Λ_v and is contained in the ϖ_v-torsion.
- Compare the alternating dual with the Hermitian dual using the specified inverse different and scalar.
- Changing compact open level away p keeps the local p-type and coefficient data fixed.

**Checks.**

- For an unramified quadratic extension with length-one Λ_v^♯/Λ_v over `k_{F_v}`, the kernel order is q_v².
- At an unramified inert place, a nonsplit Hermitian space is not assigned a good self-dual hyperspecial lattice.
- If the local different is nontrivial, omitting its factor does not give the stated alternating-dual comparison.

*Needs:* §6.1; PELModuli §M0.22; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; PELModuli §M0.4; §6.6.

### 6.8 Adjusted unitary sign condition

For a polarized CM pair (A₀,A) and nonsplit finite place v, define inv_v using `(−1)^{n(n−1)/2}` times the determinant of the Hermitian Tate-Hom space when reschar(v) is invertible. In characteristic reschar(v), use the Frobenius-fixed determinant line Λⁿ `Hom_{F_v}(D(A₀),D(A))` with its induced Hermitian form; multiply its raw invariant by `(−1)^{Σ_{φ∈Φ_{ν,v}}r_φ}` in RSZ20’s opposite-CM convention. For the positive CM convention transport both r₀ and Φ as in RSZ20 Remark A.2. Impose inv_v^r(A₀,A)=inv_v(V) at every geometric point. The split-place condition is vacuous. Explicitly, the convention-independent parity exponent is `Σ_{φ∈Φ_v}(n` r₀,φ−r_φ), where r₀,φ is the CM source multiplicity. It becomes Σr_φ in the opposite-CM convention r₀|Φ=0, and `Σ(n−r_φ)=Σ_{Φ̄_v}r_φ` in the positive-CM convention r₀|Φ=1. (RSZ20, Appendix A, equations (A.1)–(A.8), Remarks A.2–A.3 and Proposition A.1, pp. 54–58.)

*Route.* Apply the Tate-Hom pairing away from the residue characteristic. Construct the determinant isocrystal and its slope-zero fixed line in residue characteristic. Include the CM/signature adjustment and prove base-change invariance and local constancy by the integral comparison in Proposition A.1.

**API.**

- When the residue characteristic of v is invertible on the base, the invariant is the norm class of `(−1)^{n(n−1)/2}` times the determinant of the hermitian Tate-Hom space.
- In residue characteristic p the invariant is the adjusted invariant of the Frobenius-fixed determinant line.
- The adjusted sign is locally constant in a connected family, including specialization between the two realization regimes.
- A polarized CM-pair isomorphism preserves the sign; exact comparison includes the chosen CM convention.

**Checks.**

- For a split quadratic algebra the norm quotient is trivial and the sign condition imposes nothing.
- In the opposite-CM convention an odd Σr_φ changes the raw crystalline sign.
- For even n at a ramified place, self-duality of a lattice alone does not force the required sign.

*Needs:* PELModuli §M3.8; §6.1; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; AbelianSchemesAndArithmeticModuli §A4.1; PadicHodgeTheory §8.3; PadicHodgeTheory §§3.3–3.5.

### Examples

- Characteristic polynomials do not see the action. Over 𝔽₃ the matrix with rows (0,1) and (0,0) has characteristic polynomial T² and is nonzero; so a Lie action with the right characteristic polynomial need not satisfy the annihilation equation Q(i(π))=0 of §6.5.
- CM moduli at a ramified prime. For F=ℚ(√−p) with p odd and Φ={φ}, the p-divisible group of a point of M₀^a is a strict `O_{F_p}-module` of relative height 1 and dimension 1, so it has a unique deformation and M₀^a is étale at p, a prime that PELModuli §M4.7 excludes.
- Parity exponent of the sign. For n=3, one embedding φ∈Φ_v and r_φ=2, the exponent `Σ_{φ∈Φ_v}(n` r₀,φ−r_φ) of §6.8 is 3·1−2=1 in the positive-CM convention and −2, of even parity, in the opposite-CM convention: the two conventions differ, so the convention is part of the datum.

### Dependencies

Within this roadmap: Layer 0 (§0.1, §0.4).

Suppliers: PELModuli §M0.6, §M0.7, §M0.23, §M0.16, §M5.5, §M0.25, §M1.9, §M4.3, §M0.17, §M0.18, §§M0.23–M0.25, §§M4.7–M4.8, §M2.11, §M0.22, §M0.4, §M3.8; ShimuraVarieties §4.5, §6.7, §5.10; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10; AbelianSchemesAndArithmeticModuli §A4.7, §A4.9, §A4.1; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; PadicHodgeTheory §8.3, §§3.3–3.5.

## Layer 7: RSZ integral models and local geometry

Construct localized and semi-global CM-pair models, the polarized multichain local-model diagram and their self-dual, split and almost self-dual geometry with exact coefficient restrictions. Construct ramified wedge/Krämer and exotic even-rank models, their geometry and global level gluing, importing the split Drinfeld levels. In rank two the regular global Krämer model comes from the Krämer local charts, not from the blowup description of RSZ21 Theorem 6.7(ii); normalizations alone imply no regularity.

### 7.1 Localized RSZ moduli

Let D contain all places of residual characteristic 2, all ramified quadratic places, and all inert places where V_v is nonsplit; enlarge it to the pullback of a finite rational-prime set, with product d. Away d choose self-dual lattices and hyperspecial levels; at d choose compact open levels. Over O_E[1/d], define the groupoid of CM pairs (A₀,i₀,λ₀;A,i,λ;η_d) in Zhang21 Definition 6.1: A₀ lies on a chosen nonempty principal CM component, A has the fake-Drinfeld Kottwitz signature and Rosati conjugation, λ is principal in the category localized at d, η_d is the prescribed Hermitian Hom-Tate level, and the Eisenstein clauses hold at every remaining place. Arrows have A₀ an exact polarized isomorphism and A an O_F-linear d-isogeny pulling back λ and the level exactly. (Zhang21, Definition 6.1, pp. 904–905, with §6.2.2, pp. 903–904.)

Hypotheses for this target: F/F⁺ CM, Φ a CM type with distinguished φ₀, n≥2; signature (n−1,1) at φ₀ and (n,0) at the other members of Φ. Use the PELModuli carriers, rational similitude convention and positive CM norm torus.

*Route.* Use the localized abelian-scheme PEL carrier and select the CM component. Impose the exact Hom-Tate level and Eisenstein conditions at the places not inverted. Specify the arrow relation in the localized category and verify descent.

**API.**

- An integral point is a polarized CM pair (A₀,i₀,λ₀;A,i,λ;η_d) over O_E[1/d] with the conditions listed.
- Forgetting A and η_d maps to the selected CM component.
- Over E the groupoid identifies with the canonical RSZ Shimura model at the chosen level.
- Pullback preserves the localized polarization and d-isogeny arrows.

**Checks.**

- An inert nonsplit Hermitian place belongs to D and is not assigned good self-dual reduction.
- If the selected principal CM moduli component is empty, so is the pair moduli; nonemptiness is not automatic.
- An arrow scaling λ by c≠1 without the corresponding exact localized polarization equality is rejected.

*Needs:* §6.1; §6.7; §6.5; §6.6; PELModuli §M1.7; PELModuli §M1.1.

### 7.2 Localized smoothness and representability

The localized RSZ functor is a smooth separated finite-type Deligne–Mumford stack over O_E[1/d] of relative dimension n−1. For sufficiently small levels on both the CM and unitary factors it is represented by a quasi-projective scheme, and sending a point to the product A₀×A with the action of O_F×O_F, the product polarization and the level structure induced by η₀ and η (through V(A)≅V(A₀,A)⊗V(A₀), V(A₀) being free of rank one) is a finite morphism to the PEL moduli of the product datum: the moduli of PELModuli §M2.8 when every residue characteristic of O_E[1/d] is unramified in F⁺ (then every prime of the base is good for the product datum in the sense of PELModuli §M0.10), and otherwise the multichain moduli of gap:bad-prime-projectivity, whose multichain at every prime of the base is generated by the single self-dual lattice Λ₀⊕Λ. The theorem uses the prescribed good local types and Eisenstein condition, not just the generic Kottwitz signature. (Zhang21, Theorem 6.2, p. 905; Stacks, Tags 0B3G, 0B3H, 0C4M (quasi-projectivity along finite morphisms and under base change); RZ96, Definition 6.9, p. 279 (the multichain moduli problem of the bad case).)

*Route.* Apply PELModuli §M2.8 and §6.6 and impose the local conditions. Compute formal deformations through the relative comparison and the line-Grassmannian chart. Kill stabilizers by sufficiently small levels on both factors. For quasi-projectivity prove the comparison with the product PEL moduli finite (the pair is recovered from its image: A₀ and A as the images of the two idempotents of O_F×O_F, η from the product level structure and η₀; the conditions defining the source are closed, so the comparison is proper and quasi-finite) and pull back quasi-projectivity of that PEL moduli, base-changed to O_E[1/d] (a finite morphism is quasi-affine of finite type, hence quasi-projective; quasi-projective morphisms compose over a quasi-compact base and are stable under base change: Stacks Tags 0B3H, 0C4M, 0B3G): it is ShimuraCompactifications §C5.18 when every residue characteristic of O_E[1/d] is unramified in F⁺, so good in the sense of PELModuli §M0.10, and gap:bad-prime-projectivity for the multichain generated by Λ₀⊕Λ when O_E[1/d] keeps a prime ramified in F⁺; quasi-projectivity is not local on the base, so the second case is not reduced to the first prime by prime.

**Checks.**

- For n=2 relative dimension is 1.
- Small unitary level alone does not remove a nontrivial CM automorphism.
- For F⁺=ℚ(√3), F=F⁺(i) and p=3: 3 is ramified in F⁺ and the place of F⁺ above 3 is inert in F (−1 is not a square modulo 3), so 3 need not divide d; it divides the discriminant of O_F×O_F, 3 is a bad prime in the sense of PELModuli §M0.10, and the comparison lands in the multichain moduli of gap:bad-prime-projectivity, not in that of PELModuli §M2.8. On a base all of whose residue characteristics are unramified in F⁺ the target is the PELModuli §M2.8 moduli and ShimuraCompactifications §C5.18 applies unchanged.

*Needs:* §7.1; §0.5; PELModuli §M0.10; PELModuli §M2.8; SchemeAndStackFoundations Layer 1; AbelianSchemesAndArithmeticModuli §A4.7; ShimuraCompactifications §C5.18; gap:bad-prime-projectivity.

### 7.3 Semi-global RSZ moduli

Fix ν|p of E and distinguished v₀ of F⁺. Over `O_{E,(ν)}`, the semi-global functor has a CM abelian scheme (A₀,i₀,λ₀) in `M₀^{a,ξ}`, a unitary abelian scheme A with `O_{F,(p)}-action`, Kottwitz signature and Rosati quasi-polarization λ, a prime-to-p Hermitian Hom-Tate K^p-level, and at split v≠v₀ above p the specified étale Hom-level at the CM-selected factor. Require ker λ_v⊂A[ϖ_v] of order #Λ_v^♯/Λ_v at every v|p; impose Eisenstein at the distinguished fake-Drinfeld factor and sign plus Eisenstein at all other p-factors. At v₀ impose the matching sign when needed. Arrows are polarized CM isomorphisms on A₀ and prime-to-p O_F-linear quasi-isogenies on A pulling λ and all levels back exactly. (LZ22, §11.2, conditions (M1)–(M9), pp. 74–75; §11.3, p. 75; RSZ21 Definition 4.1, pp. 18–19.)

Hypotheses for this target: F/F⁺ CM, Φ a CM type with distinguished φ₀, n≥2; signature (n−1,1) at φ₀ and (n,0) at the other members of Φ. Use the PELModuli carriers, rational similitude convention and positive CM norm torus. All v|2 are unramified in F; at v₀ use one of the stated local cases below; K^p sufficiently small when a scheme rather than a stack is asserted.

*Route.* Assemble the generic PEL/CM pair with prime-to-p quasi-isogeny arrows. Use the local kernel types and the split étale Hom-levels; retain their chosen CM-side orientation. Impose the descended sign and Eisenstein clauses and the selected CM component.

**API.**

- A point is a CM pair with all local p-types, prime-to-p levels and split Hom-levels.
- Its CM factor is a point of `M₀^{a,ξ}`, with a prime to p.
- The generic functor recovers the chosen RSZ canonical model.
- Changing K^p gives the forgetful/Hecke maps of the generic PEL level system while retaining p-data.

**Checks.**

- Since a is prime to p, λ₀ induces a principal polarization on the local CM p-divisible factor.
- An almost self-dual length-one Hermitian quotient has polarization-kernel order q_v².
- An object satisfying the distinguished-place condition but violating the sign at another nonsplit p-place is rejected.
- At a split v₀ with self-dual lattice, signature (1,n−1) and the CM-type matching of RSZ20 (4.19), this functor is the level-zero model Y₀ to which IgusaVarietiesAndTorsionConcentration §IG.0.31 adds Drinfeld level: its strict height-n module is `Hom_{O_{F,w₀}}(A₀[w₀^∞],A[w₀^∞])`, not A[w₀^∞] itself.

*Needs:* §6.1; §6.7; §6.5; §6.8; §6.6; PELModuli §M1.6; PELModuli §M1.1.

### 7.4 Exotic integral model

For n even, a ramified quadratic distinguished place u with F⁺_u/ℚ_p unramified, an admissible Φ and K/F_u unramified as in Layer 6, construct the unitary integral model over O_K with π-modular exotic local polarization. Require (A[u^∞],i,λ)∈Exo_Φ(n−1,1) and (A[v^∞],i,λ)∈Exo_Φ(n,0) at other ramified v|p, while A₀ remains the rank-one CM factor. Impose the split/banal/inert conditions at the other p-places and retain the chosen CM component or auxiliary CM product according to its arrow convention. LL22 prints A₀ in place of A in this condition; only A has the height and dimension of Exo_Φ(n−1,1) (see References, LL22). (LL22, §4.5, pp. 65–66; RSZ21 Theorem 5.4(e) and Theorem 5.7, pp. 26–27.)

*Route.* Apply the unitary local-model diagram with the π-modular wedge and spin conditions. Identify the absolute distinguished and banal ramified factors with Exo_Φ, respecting their different ranks. Use the generic CM-product comparison to identify the chosen canonical model.

**API.**

- A point is a CM pair (A₀,A) with the exotic conditions imposed on the rank-n factors of A.
- At u, A[u^∞] is an absolute exotic object of height 2nf and dimension nf.
- The generic fibre is the auxiliary-CM unitary canonical model.
- At fixed p-type the permitted prime-to-p split-level changes give the integral Hecke/forgetful system.

**Checks.**

- For n≥2 the rank-one A₀[u^∞] cannot satisfy the height and dimension of Exo_Φ(n−1,1).
- The distinguished kernel is A[i(u)] and is not principal.
- Omitting the banal Exo_Φ(n,0) condition at another ramified v|p changes the functor.

*Needs:* §4.1; §7.3; §6.4; §6.3.

### 7.5 Global Krämer modification

Assume p odd, `F_{v₀}/F⁺_{v₀}` ramified quadratic, `F⁺_{v₀}/ℚ_p` unramified and `Λ_{v₀}` self-dual. Impose the wedge equations for signature (n−1,1) on the distinguished Lie factor and Eisenstein on banal factors. Construct the global Krämer enhancement by a stable locally direct summand P⊂Lie A whose embedding-summand ranks are `r^Φ_{w,ψ}=Σ_{φ∈Hom_{w,ψ}∩Φ}r_φ` and which is annihilated on P and Lie A/P by the respective products ∏(T−φ(π_w)) for the two CM halves with nonzero r_φ. This is the Krämer–Eisenstein condition of RSZ21 (6.10), independent of π_w. At the distinguished rank-n factor P has structural rank n−1 and quotient conjugate rank 1; compare Layer 5 by conjugating the local actions. (RSZ21, Definition 6.10, equations (6.6)–(6.10) and Lemma 6.11, pp. 33–34; LZ22 §11.6, p. 77.)

*Route.* Construct the global relative Grassmannian of the prescribed embedding ranks. Impose the two annihilator equations on the subbundle and quotient, with faithfully flat descent. Identify its local distinguished factor with the Layer 5 filtration after the stated conjugation.

**API.**

- A point of the Krämer enhancement is a point of the wedge model with an embedding-indexed P satisfying the Krämer–Eisenstein equations.
- Forgetting P maps to the wedge RSZ model.
- After the local convention adapter, the distinguished formal factor is Layer 5’s Krämer functor.
- The filtration and uniformizer-independent annihilator equations commute with base change.

**Checks.**

- On the distinguished global rank-n factor, P has rank n−1 with structural action.
- The Layer 5 comparison swaps the local structural/conjugate labels, rather than imposing both contradictory rank conditions.
- On a banal factor the equation reduces to the corresponding Eisenstein annihilator clause.

*Needs:* §7.3; §5.1; §6.5; SchemeAndStackFoundations Layer 4; AlgebraicModuliForArithmeticGeometry §1.3.

### 7.6 Unitary local-model comparison

For the semi-global functor, construct its torsor of trivializations of the polarized de Rham lattice multichain generated by Λ_p and its dual, and its Hodge-filtration map to the corresponding unitary Grassmannian local model times the CM base. The torsor group is the automorphism group scheme of the polarized multichain, smooth by gap:unitary-multichain-stabilizer. The torsor map and Hodge map are smooth of equal relative dimension, with the imposed Eisenstein, wedge/spin or Krämer equations on the local model. This is the particular unitary local-model diagram, built from Grothendieck–Messing and the Grassmannians of AlgebraicModuliForArithmeticGeometry §1.3. (RSZ21, §5.1, diagram (5.5) and decompositions (5.6)–(5.7), pp. 23–24; Theorem 5.4, pp. 26–27.)

*Route.* Associate to the polarization isogeny the self-dual periodic chain of de Rham modules and Hodge quotients. Represent its trivialization torsor under the automorphism group scheme of the polarized multichain (gap:unitary-multichain-stabilizer). Apply Grothendieck–Messing to lifting of a trivialization and Hodge filtration; compare their relative dimensions.

**API.**

- The torsor of trivializations of the polarized de Rham multichain maps to the integral moduli and is a torsor under the automorphism group scheme of the multichain.
- The Hodge-filtration map from the torsor to the local model times the CM base is equivariant.
- The diagram and the two smooth maps commute with coefficient base change.
- Étale/formally smooth charts transfer the local-model flatness and geometric singularity type to the moduli, with the CM factor retained.

**Checks.**

- For a self-dual unramified type the local model is the rank-one Grassmannian chart of dimension n−1.
- An almost self-dual polarization gives a lattice multichain, not the perfect-pairing single-lattice chart.
- After ramified base change the diagram still exists, but a chart uv−ϖ becomes uv−t^e and cannot certify regularity.

*Needs:* §7.3; AbelianSchemesAndArithmeticModuli §A4.7; AbelianSchemesAndArithmeticModuli §A4.3; SchemeAndStackFoundations Layer 4; §6.7; AlgebraicModuliForArithmeticGeometry §1.3; gap:unitary-multichain-stabilizer.

### 7.7 Exotic integral smoothness

Under §7.4’s hypotheses and sufficiently small/neat levels, the model is smooth over O_K of relative dimension n−1. Sending a point to the product A₀×A with the action of O_F×O_F, the product polarization and the induced level structure is a finite morphism to the multichain moduli of gap:bad-prime-projectivity for the product datum, base-changed to O_K, whose multichain at u is generated by Λ₀⊕Λ_u with Λ_u π-modular (Λ_u^♯=π⁻¹Λ_u for a uniformizer π of F_u, matching ker λ[u^∞]=A[π]) and at the other places above p by the lattices of §7.4; hence the model is quasi-projective over O_K. It is projective in the compact Li–Liu setting F⁺≠ℚ: V is then definite at a real place, hence anisotropic, so the product datum has no cusp label and its generic fibre is proper. Changes of split prime-to-p level are finite étale. The absolute-to-relative identification used for its formal basic factor requires F⁺_u/ℚ_p unramified and is Layer 4’s comparison. (LL22, §4.5, p. 66, where projectivity is attributed to RSZ20 Theorem 4.7, which does not prove it (see References, LL22), and Assumption 1.3, p. 4; RSZ21 Theorem 5.7, p. 27; RZ96, Definition 6.9, p. 279 (the multichain moduli problem); Stacks, Tags 0B3G, 0B3H, 0C4M, 01WN, 0BCL (quasi-projectivity and properness along finite morphisms).)

*Route.* Use the even-rank π-modular local-model smoothness theorem at the distinguished place. Use the banal smooth factors and the étale CM base at the other p-places. Prove the comparison with the product PEL moduli finite as in §7.2 (the pair is recovered from the two idempotents of O_F×O_F; the exotic Lie and polarization conditions are closed, so the comparison is proper and quasi-finite) and pull back the quasi-projectivity of gap:bad-prime-projectivity (Stacks Tags 0B3G, 0B3H, 0C4M). For F⁺≠ℚ the generic fibre of the product datum is proper (ShimuraCompactifications §C5.5 over the reflex field, no cusp label), so the gap’s properness clause makes its moduli proper, the model is proper as it is finite over it (Stacks Tag 01WN), and proper quasi-projective is projective (Stacks Tag 0BCL). Use the prime-to-p level torsor for finite étaleness.

**Checks.**

- Smooth relative dimension is n−1, not the absolute p-divisible-group dimension nf.
- The projectivity assertion retains the compact global hypotheses.
- The multichain of the comparison at u is Λ₀⊕Λ_u⊂Λ₀⊕π⁻¹Λ_u up to the periodicity by π on the second factor, so its multichain of abelian schemes is determined by A₀×A and λ; the comparison separates λ from cλ for c≠1, since λ₀×cλ is not a rational multiple of λ₀×λ.
- For F⁺=ℚ and even n≥4, V of signature (n−1,1) has a trace form that is an indefinite rational quadratic form in 2n≥8 variables, isotropic by Meyer’s theorem, so V is isotropic, the product datum has a cusp label and the projectivity clause would fail; this is why it keeps F⁺≠ℚ.

*Needs:* §7.4; §7.6; §3.4; §4.6; §6.3; SchemeAndStackFoundations Layer 1; gap:bad-prime-projectivity; §7.2; ShimuraCompactifications §C5.5.

### 7.8 Ramified wedge and Krämer geometry

The self-dual ramified wedge model is flat, with isolated singularities; the global model is smooth away from ramified quadratic places (subject to its other local types). For every n≥2 the Krämer enhancement is regular with semistable reduction at ν when `E_ν/F_{v₀}` is unramified; for n≥3 it is moreover the blowup of those isolated singularities. For n=2 the wedge model itself is not regular over `O_{E,ν}`: its local model has reflex field `F⁺_{v₀}` and is semistable over `O_{F⁺_{v₀}}`, but E_ν contains `F_{v₀}`, which is ramified over `F⁺_{v₀}`; the Krämer local model is defined over `O_{F_{v₀}}` and keeps its crossing chart after an unramified extension. (RSZ21, Theorem 6.7(ii), its proof and Remark 6.8, pp. 32–33; HLSY23, §10.2, p. 78, where regular semistable reduction is asserted for every n≥2 without the unramifiedness hypothesis on E_ν kept here (see References, HLSY23); LZ22 §11.6, p. 77.)

*Route.* Identify the distinguished wedge local-model factor and the trivial banal factors. Use the explicit Krämer local-model resolution and the equal-dimension smooth chart. Transfer the Krämer charts of §5.6 (étale locally yz=u times n−2 smooth parameters over `O_{F̆_{v₀}}`) through the local-model diagram; u stays a uniformizer over `O_{Ĕ_ν}` because `E_ν/F_{v₀}` is unramified, so the charts remain regular crossings for every n≥2. For n≥3 identify the enhancement with the blowup through the local reflex field `F_{v₀}`; for n=2 record that the wedge model loses semistability.

**Checks.**

- For n≥3 the resolved relative dimension is n−1.
- At n=2 the wedge local model has a chart uv=ϖ over `O_{F⁺_{v₀}}`; after the ramified extension with ϖ=t²·(unit) it becomes uv=t²·(unit), whose maximal ideal at u=v=t=0 needs three generators in a ring of dimension 2, so it is not regular: semistability is lost, as RSZ21 Remark 6.8 states.
- At n=2 the Krämer chart yz=u lives over `O_{F̆_{v₀}}`; after an unramified extension `E_ν/F_{v₀}` the element u is still a uniformizer, so at y=z=0 the maximal ideal is generated by y and z in a ring of dimension 2: the Krämer model is regular and strictly semistable there, unlike the wedge chart of the previous Check.

*Needs:* §7.5; §7.6; §5.7; §5.6; SchemeAndStackFoundations Layer 4.

### 7.9 Self-dual and almost self-dual geometry

If v₀ is split in F, with self-dual `Λ_{v₀}` and the Eisenstein condition of Layer 6 at the CM-selected factor w₀ (the Lubin–Tate condition of RZ17 §8, automatic when v₀ is unramified over p), the semi-global model is smooth of relative dimension n−1. If v₀ is inert, `V_{v₀}` is split and `Λ_{v₀}` self-dual, the semi-global model is smooth of relative dimension n−1; `F⁺_{v₀}/ℚ_p` may be ramified when the structural-action Eisenstein clause is retained. If v₀ is inert, `V_{v₀}` nonsplit, `Λ_{v₀}` almost self-dual and `F⁺_{v₀}/ℚ_p` unramified, the model is flat of relative dimension n−1; it is regular and semistable when E_ν/ℚ_p is unramified. At the other p-places assume the banal or permitted local types of LZ22 §11.2. For sufficiently small K^p it is representable over the CM stack by a scheme; after neat CM level it is a scheme. (LZ22, §11.2, p. 75; §11.3, pp. 75–76 (semistability when ν is unramified over p, p. 76); §11.4, p. 76; RZ17, §8, equations (8.1)–(8.2), p. 28.)

*Route.* Apply the local-model diagram, using the Eisenstein comparison on any ramified absolute base field. Use the self-dual smooth chart or the almost self-dual semistable chart. Check unramifiedness of the coefficient extension before transferring the latter regularity assertion.

**Checks.**

- The split self-dual inert case and nonsplit almost self-dual inert case have different polarization kernels.
- Flatness survives coefficient extension; regularity is asserted only with the stated unramified base hypothesis.
- At a split v₀ with self-dual lattice the model is smooth; principal congruence levels at v₀ are the Drinfeld levels of IgusaVarietiesAndTorsionConcentration §IG.0.31, not a target here.

*Needs:* §7.6; §1.2; §2.2; §0.5; SchemeAndStackFoundations Layer 1.

### 7.10 Global integral gluing and levels

Under LZ22’s global lattice conditions: at 2 the CM extension is unramified; inert split V has self-dual lattice; inert nonsplit V is unramified over ℚ_p with almost self-dual lattice; split places have self-dual lattice; ramified quadratic places are unramified over ℚ_p with self-dual lattice, construct the O_E-model by integral CM pairs and all corresponding local clauses. At ramified quadratic places use the Krämer enhancement with its rank/base restrictions when a regular model is required. Introduce principal congruence levels only at split places satisfying CM matching and `E_ν/E_{r,v}` unramified, by normalization in the generic cover. Keep the ramified coefficient exceptions for both almost self-dual and Krämer regularity. (LZ22, §14.1–14.2, pp. 84–85; HLSY23 §10.2, pp. 77–79; RSZ21 Theorems 6.2 and 6.7, pp. 30, 32.)

*Route.* Specify the global integral abelian-scheme groupoid with all local conditions and sign components. Identify each localization with its semi-global moduli via the canonical lattice-defined level orbit. Use finite normalization for the selected generic level covers and the Drinfeld-level models of IgusaVarietiesAndTorsionConcentration §IG.0.31 to prove finite flatness and the stated regular loci.

**API.**

- A point is a global integral CM pair satisfying each local clause.
- Localization at ν is the corresponding semi-global functor with its lattice-defined levels.
- For permitted split congruence levels the model is the finite normalization in the generic cover.
- Level restrictions compose and agree with both generic and semi-global forgetful maps.

**Checks.**

- At a self-dual unramified inert place localization is the smooth Layer 7 model.
- At an almost self-dual place a ramified E_ν/ℚ_p is not certified regular by the semistable local theorem.
- A split congruence level failing CM matching or the unramified reflex extension is not covered by the regular-level theorem.

*Needs:* §7.5; §7.8; §7.9; PELModuli §§M4.5–M4.6; §6.6; SchemeAndStackFoundations Layer 1; IgusaVarietiesAndTorsionConcentration §IG.0.31; EndoscopicTransferAndUnitaryTraceComparison §10.2.

### Examples

- Good and bad bases. For F⁺=ℚ and F=ℚ(i) with V split at 3, the prime 3 is inert in F and unramified in F⁺, so it need not divide d and the comparison of §7.2 at 3 lands in the PELModuli §M2.8 moduli. For F⁺=ℚ(√3) and F=F⁺(i)=ℚ(ζ₁₂), the place of F⁺ above 3 is inert in F but 3 is ramified in F⁺, and the comparison lands in the multichain moduli of gap:bad-prime-projectivity.
- Wedge versus Krämer at n=2. The wedge chart uv=ϖ over `O_{F⁺_{v₀}}` becomes uv=t²·(unit) over `O_{F_{v₀}}`, not regular at the origin; the Krämer chart yz=u lives over `O_{F̆_{v₀}}` and stays regular after an unramified extension `E_ν/F_{v₀}`.
- Isotropy for F⁺=ℚ. For n=4 the trace form of a hermitian space of signature (3,1) is a rational quadratic form of signature (6,2) in 8 variables, isotropic by Meyer's theorem; the exotic model is then not proper, which is why §7.7 asserts projectivity only for F⁺≠ℚ.

### Dependencies

Within this roadmap: Layer 0 (§0.5); Layer 1 (§1.2); Layer 2 (§2.2); Layer 3 (§3.4); Layer 4 (§4.1, §4.6); Layer 5 (§5.1, §5.6, §5.7); Layer 6 (§6.1, §6.3, §6.4, §6.5, §6.6, §6.7, §6.8).

Suppliers: PELModuli §M0.10, §M1.7, §M1.1, §M2.8, §M1.6, §§M4.5–M4.6; SchemeAndStackFoundations Layer 1, Layer 4; AbelianSchemesAndArithmeticModuli §A4.7, §A4.3; ShimuraCompactifications §C5.18, §C5.5; AlgebraicModuliForArithmeticGeometry §1.3; IgusaVarietiesAndTorsionConcentration §IG.0.31; EndoscopicTransferAndUnitaryTraceComparison §10.2.

Supplier contracts: gap:bad-prime-projectivity, gap:unitary-multichain-stabilizer (see Exact supplier contracts).

## Layer 8: Integral isogenies and neat model adapters

Construct the mixed global isogeny model using an actual totally positive F⁺ scalar and prove its required local degree q². In the special inert LTXZZ setting construct neat principal and almost self-dual pair models with the common-scalar arrow relation and retained CM factor. Prove the rank-one tangent formula and explicit smooth/crossing local equations, identify the correctly chosen generic Hermitian datum and integral tame Hecke system.

### 8.1 Neat smooth unitary moduli

Use the special inert setting of LTXZZ22 Definition 3.3.4: p is odd, inert and unramified in F, and F⁺_𝔭=ℚ_p; take the unramified coefficient ring `ℤ_{p,Φ}`, N≥1, a Hermitian space V of signature (N−1,1) at the distinguished embedding and definite at the others, self-dual p-lattice and neat tame unitary/CM levels. Over the fixed finite étale CM level scheme T_p, define pairs (A₀,i₀,λ₀,η₀;A,i,λ,η^p) with A of Kottwitz type NΦ−τ∞+τ∞^c, λ p-principal, and Hermitian Hom-Tate level η^p. Arrows are prime-to-p quasi-isogenies φ₀,φ on both factors with the SAME c∈ℤ_(p)^× multiplying λ₀ and λ, and with transported CM and Hom levels. This arrow relation differs from RSZ’s exact CM-isomorphism convention and must be related through the explicit Layer 6 quotient adapter. Sending a pair to (A₀×A, i₀×i, λ₀×λ, η₀^p⊕(η^p⊗η₀^p)), where V^p(A)≅Hom_F(V^p(A₀),V^p(A))⊗V^p(A₀) because V^p(A₀) is free of rank one, is a finite morphism to the PEL moduli of PELModuli §M2.8 for the product datum (the algebra F×F with its involution, the sum of the two Hermitian spaces, the self-dual lattice at p and a common similitude factor); p is a good prime in the sense of PELModuli §M0.10 for this datum. (LTXZZ22, Definition 3.3.4, p. 147; Lemma 4.2.1 and Definition 4.2.2, pp. 159–161.)

*Route.* Use the existing CM/PEL carriers with the two prescribed neat levels and special inert coefficient field. Impose the p-principal polarization and Hom-level while using the common-scalar quasi-isogeny arrow relation on both factors. Compare the resulting quotient to the RSZ or auxiliary-CM generic functor through the actual quotient maps. Prove the comparison with the product PEL moduli finite: the pair is recovered from its image (A₀ and A as the images of the two idempotents of O_F×O_F, η^p from the product level structure and η₀^p), the arrow relations agree because a prime-to-p F×F-linear quasi-isogeny of A₀×A is a pair (φ₀,φ) and the PEL similitude factor is the common scalar c, and the conditions defining the source (the CM component T_p, the Kottwitz type of A, p-principality of λ) are closed; so the comparison is proper and quasi-finite, hence finite.

**API.**

- A point is a CM pair with p-principal λ, with arrows the prime-to-p quasi-isogenies scaling λ₀ and λ by the same p-unit.
- Each point has a CM level point in T_p.
- The generic fibre is Sh(V,K^pK_p)×(T_p)_η with the chosen embedding conventions.
- Neat prime-to-p level changes act on both CM and Hom-Tate factors as specified in §8.5.
- At a complex point identify the negative period line with `Hom_ℂ(H₁^dR(A₀)_{τ∞},ω_{A∨,τ∞})`; the source has rank one and the displayed target has rank one.

**Checks.**

- For N=1 its relative deformation dimension is zero.
- Scaling λ₀ and λ by different rational p-units is not the stated arrow relation.
- The comparison with the product PEL moduli does not identify (A₀,λ₀;A,λ) with (A₀,λ₀;A,cλ) for a p-unit c≠1: λ₀×cλ is not a rational multiple of λ₀×λ, since a common multiple would have to be 1 on the first factor and c on the second.
- An inert place with [F⁺_𝔭:ℚ_p]>1 is excluded from this source-specific adapter, even when another RSZ theorem applies.
- For N=3, the condition that a map carry `ω_{A₀∨,τ∞}=0` into `ω_{A∨,τ∞}` is vacuous and gives dimension 3, whereas the required period line has dimension 1.

*Needs:* §6.3; §7.3; PELModuli §M0.10; PELModuli §M0.18; PELModuli §M1.6; §6.6; PELModuli §M2.8.

### 8.2 Neat almost self-dual moduli

Under the same special inert and neat coefficient hypotheses, fix the standard definite Hermitian space V° of rank N≥1 and a self-dual p-lattice; its away-p Hom-Tate data index the moduli. Define the LTXZZ22 almost self-dual CM pair with Kottwitz type NΦ−τ∞+τ∞^c and ker λ[p^∞]⊂A[p] of rank p², keeping the common p-unit scalar on both polarization arrows. At p this polarization has defect one, rather than the principal type of the fixed tame reference space. For N=1 retain the zero-dimensional smooth boundary case. The generic unitary space is a separately chosen indefinite uniformization datum, not V° itself. (LTXZZ22, §5.1 and Definition 5.2.1, pp. 188–189; Remark 5.2.4, p. 190.)

*Route.* Keep the same CM factor and arrows as in the smooth adapter. Replace the principal local polarization condition by the rank-p² kernel bound, with the prescribed tame Hermitian reference datum. Treat N=1 separately from the n≥2 mixed local functor.

**API.**

- A point is a CM pair with the defect-one polarization and fixed tame level.
- Each point has a CM level point in T_p.
- The p-primary polarization kernel is killed by p and has rank p².
- Permitted tame Hecke changes preserve the local defect-one kernel type.

**Checks.**

- A p-principal polarization fails this kernel-rank condition.
- For N=1 the moduli has zero relative dimension; no crossing stratum is introduced.
- The definite tame V° is not used as the archimedean datum of its generic Shimura variety.

*Needs:* §8.1; §2.1; PELModuli §M1.1.

### 8.3 Almost self-dual local equations

Over a perfect residue field k of a point of T_p, the completed local ring of the almost self-dual model is either `W(k)[[t₁,…,t_{N−1}]]`, or, for N≥2, W(k)[[x₁,…,x_N]]/(x₁x_N−p). Thus the model is regular and strictly semistable of relative dimension N−1 over the unramified coefficient ring. The N=1 model has only the first type. Quasi-projectivity does not follow from the local rings. For the uniformization datum (V′,j,Λ′_p) of §8.4, sending a pair to (A₀×A, i₀×i, λ₀×λ) with the induced away-p level structure is a finite morphism to the multichain moduli of gap:bad-prime-projectivity for the product datum (the algebra F×F with its involution, V₀⊕V′, a common similitude factor), base-changed to the coefficient ring, whose multichain at p is generated by Λ₀⊕Λ′_p⊂Λ₀⊕Λ′_p^♯; hence the model is quasi-projective over T_p, and it is projective over T_p exactly when its generic fibre is proper, that is, when V′ is anisotropic. The balloon, ground and link geometry and the tangent exact sequences of Theorem 5.2.5(2)–(5) are planned by SelmerIwasawaCohomologyPartII §2.3; this target gives only the ambient local equations. (LTXZZ22, Theorem 5.2.5(1) and its local-model proof, pp. 190–193; RZ96, Definition 6.9, p. 279 (the multichain moduli problem); Stacks, Tags 0B3G, 0B3H, 0C4M, 0C4N, 01WN, 0BCL (quasi-projectivity and properness along finite morphisms, and over T_p).)

*Route.* Normalize the local polarization pairing to diag(p,1,…,1). Describe simultaneous Hodge line/hyperplane lifts and their orthogonality relation by Grothendieck–Messing. In the crossing chart eliminate the remaining variables to obtain x₁x_N=p; in the other admissible charts solve for one variable to obtain a smooth power-series ring. Check the impossible fourth rank case and the N=1 boundary before concluding semistability. Prove the comparison with the product PEL moduli finite as in §8.1 (the pair is recovered from the two idempotents of O_F×O_F and λ; the kernel condition on λ is closed). Pull back the gap’s quasi-projectivity to obtain quasi-projectivity over the coefficient ring (Stacks Tags 0B3G, 0B3H, 0C4M), hence over T_p, since the model is quasi-compact over T_p (Stacks Tag 0C4N). If the generic fibre is proper then V′ is anisotropic, the product datum has no cusp label, its generic fibre is proper (ShimuraCompactifications §C5.5 over the reflex field), the gap makes its moduli proper, the model is proper as it is finite over it (Stacks Tag 01WN), and proper quasi-projective is projective (Stacks Tag 0BCL); the converse is base change to the generic fibre.

**Checks.**

- For N=2 the crossing ring is W(k)[[x₁,x₂]]/(x₁x₂−p).
- The ambient local rings are reduced and regular although the special fibre can cross.
- After a ramified coefficient extension p=t^e with e>1, this argument supplies flatness but not regularity.
- For N=1, V′ has rank one and is anisotropic, so the product datum has no cusp label and the model is finite over T_p, hence projective, in agreement with its zero-dimensional boundary case.
- For F⁺=ℚ and N=2, V′ has signature (1,1) and is isotropic exactly when −det V′ is a norm from F; then the product datum has a cusp label, the generic fibre is a non-proper Shimura curve and the model is quasi-projective but not projective.
- The multichain of the comparison at p is Λ₀⊕Λ′_p⊂Λ₀⊕Λ′_p^♯⊂p⁻¹(Λ₀⊕Λ′_p), with Λ′_p^♯/Λ′_p of order p², so its multichain of abelian schemes is A₀×A followed by A₀×A^∨ through λ; a p-principal λ would give the single self-dual lattice of §8.1 instead.

*Needs:* §8.2; §7.6; AbelianSchemesAndArithmeticModuli §A4.7; SchemeAndStackFoundations Layer 4; gap:bad-prime-projectivity; §8.4; §8.1; ShimuraCompactifications §C5.5.

### 8.4 Almost self-dual generic comparison

Choose an indefinite Hermitian V′ with the distinguished signature, an away-p isometry j:V°⊗𝔸_f^p≅V′⊗𝔸_f^p and an almost self-dual p-lattice Λ′_p of length-one defect, with its stabilizer K′_p. The generic fibre of the almost self-dual model is Sh(V′,jK^pK′_p)×(T_p)_η. This comparison depends on the uniformization datum (V′,j,Λ′_p); changing it gives the corresponding transported comparison. Its existence uses gap:hermitian-local-global and the two-place invariant change. (LTXZZ22, Definition 5.2.6 and formula (5.2), pp. 192–193.)

*Route.* Use gap:hermitian-local-global to obtain V′ with the prescribed archimedean and p-adic invariants. Compare the rational Hom-Tate and polarization datum with its stabilizer lattices. Apply the canonical PEL comparison, retaining the independent CM level point.

**API.**

- A uniformization datum (V′,j,Λ′_p) has the prescribed signatures and local isometries.
- The generic fibre of the almost self-dual model is Sh(V′,jK^pK′_p)×(T_p)_η.
- The transported tame compact open is jK^p and the p-level is Stab(Λ′_p).
- An isomorphism of uniformization data transports the generic comparison and Hecke maps.

**Checks.**

- A wholly definite V′ is invalid when N>1 and the chosen signature is (N−1,1).
- Replacing Λ′_p by a self-dual lattice changes the generic level comparison.
- For two different CM level points the product comparison retains two separate components.

*Needs:* §8.2; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; PELModuli §M3.8; ShimuraVarieties §6.7; PELModuli §§M3.1–M3.2; gap:hermitian-local-global.

### 8.5 Integral level and Hecke system

For fixed allowable integral p-type, form the system over sufficiently small prime-to-p unitary and CM compact opens. The Hecke map indexed by g in `U(V)(𝔸_{F⁺,f}^p)` and a in the CM torus transports η^p to η^p∘g and η₀ to η₀∘a, with the source/target compact opens satisfying the usual inclusion; correspondences are indexed by `K^p∖U(V)(𝔸_{F⁺,f}^p)/K′^p`. The permitted level-forgetful maps are finite étale and compose compatibly. For the LTXZZ almost self-dual case use V° for the tame system and transport it through j in the generic comparison. At p only the split Drinfeld tower of IgusaVarietiesAndTorsionConcentration §IG.0.31 is included. (LTXZZ22, §4.2, pp. 161–162; §5.2, p. 189; compare LL22 §4.5, p. 66.)

*Route.* Restrict the existing adelic level category to prime-to-p compact opens preserving the chosen integral local type. Transport the two level structures on the same polarized abelian pair and verify the common-scalar arrow equivalence. Use the prime-to-p étale Tate torsors to prove finite étaleness, and compare the generic Hecke composition with the imported level category.

**API.**

- For an inclusion of compact opens there is a change-of-level map.
- Each unitary double coset and element of the CM torus defines a Hecke correspondence.
- On generic fibres these maps are the canonical adelic Hecke maps.
- Transport by g and then h agrees with the composite of the associated level maps, in the ordering convention of ShimuraVarieties §1.7.

**Checks.**

- At g=1,a=1 and identical levels the transport is the identity.
- The unitary finite adeles are those of F⁺, not of the CM field F.
- A nonsplit change of parahoric p-type is not declared finite étale by this theorem.

*Needs:* §8.1; §8.2; §8.4; IgusaVarietiesAndTorsionConcentration §IG.0.31; PELModuli §M1.13; ShimuraVarieties §1.7.

### 8.6 Mixed integral isogeny moduli

At the inert almost self-dual distinguished place v₀, choose the totally positive global scalar u₀=(x₀,x₀)∈F⁺ with valuation one at v₀ and zero at the other v|p, and the rank-(n+1) Hermitian extension V♯=V⊥⟨u₀⟩ with the lattices and compact opens of LZ22 §13.4. Enhance the semi-global CM pair by a principal-at-v₀ target A♯ and an `O_{F,(p)}-linear` isogeny α:A×A₀→A♯ in the prime-to-p isogeny category, with ker α⊂(A×A₀)[u₀], α*λ♯=λ×u₀λ₀, and transported tame and other-p levels. Fix the selected CM component and framing isogeny. The v₀-primary degree is q²: the two source polarization factors each have degree q² there, and the target is principal there. Any degree statement for an actual global representative must also retain its away-p factors. The printed global degree q is incompatible with this necessary local equation. Conjugating the global signature (n−1,1) to Layer 1’s (1,n−1) sends the local CM source to ℰ̄ of Layer 2. (LZ22, §13.4, pp. 82–83, with §10.2, pp. 64–65.)

*Route.* Choose V♯, u₀, the local self-dual overlattice and the other levels exactly as in §13.4; impose the isogeny relation in the localized abelian-scheme category. Impose the displayed polarization pullback and transported levels; derive its degree rather than the incompatible printed degree. Fix the basic framing component so that its distinguished deformation problem is the mixed local functor.

**API.**

- A point is the almost self-dual pair together with (A♯,α), where α has kernel in (A×A₀)[u₀], α*λ♯=λ×u₀λ₀, and transported levels.
- Forgetting A♯ and α gives the almost self-dual pair.
- (A♯,λ♯) with its induced level is a principal rank-(n+1) pair.
- The two generic projections identify with the prescribed unitary isogeny correspondence after the CM/generic adapters.

**Checks.**

- For q=3, deg λ=9 and deg(u₀λ₀)=9 at v₀, the target is principal there, and the v₀-primary degree of α is 9 rather than 3; no assertion about its away-p degree is inferred.
- An α with correct polarization but wrong transported tame level is not a point.
- The formal distinguished isogeny has the same fixed reduction as Layer 2; merely specifying its degree is insufficient.

*Needs:* §2.4; §7.3; PELModuli §M2.14; AbelianSchemesAndArithmeticModuli §A6.13.

### 8.7 Smooth integral geometry and tangent space

The neat smooth unitary model is a smooth quasi-projective scheme over T_p of relative dimension N−1. At a geometric point its relative tangent space is `Hom(ω_{A∨,τ∞},H₁^dR(A)_{τ∞}/ω_{A∨,τ∞})`, with source rank 1 and target rank N−1. Its generic fibre is the canonical unitary Shimura variety times the CM factor. It is projective over T_p exactly when its generic fibre is proper. Both quasi-projectivity and this criterion come from the PEL moduli of the product A₀×A through the finite comparison morphism of §8.1: that PEL moduli is quasi-projective (ShimuraCompactifications §C5.18); the product datum has a cusp label exactly when the product Hermitian space has a nonzero totally isotropic F×F-stable subspace, that is, the CM line being anisotropic, exactly when V is isotropic, which is exactly when the generic fibre is not proper; with no cusp label the PEL moduli is proper (ShimuraCompactifications §C5.5). Projectivity does not follow from smoothness and quasi-projectivity alone. Here H₁^dR is the dual of the imported H¹_dR. On complex points the negative period line is `Hom_ℂ(H₁^dR(A₀)_{τ∞},ω_{A∨,τ∞})`; the condition on the zero subspace `ω_{A₀∨,τ∞}` cannot define that line. (LTXZZ22, Theorem 4.2.3 and formula (4.2), pp. 161–163; Remark 4.2.5, p. 163 (corrected period line); Stacks, Tags 0B3G, 0B3H, 0C4M, 0C4N, 01WN, 0BCL (quasi-projectivity and properness along finite morphisms, and over T_p).)

*Route.* Compute the polarized Hodge deformation using the rank-one distinguished quotient; the other factors are banal. Use neat levels for scheme representability; for quasi-projectivity pull back the quasi-projectivity of ShimuraCompactifications §C5.18 along the finite comparison of §8.1 (a finite morphism is quasi-affine of finite type, hence quasi-projective, and quasi-projective morphisms compose over a quasi-compact base and are stable under base change: Stacks Tags 0B3H, 0C4M, 0B3G); this gives quasi-projectivity over the coefficient ring, and over T_p because the model is quasi-compact over T_p (Stacks Tag 0C4N). Identify the generic canonical model. For the projectivity clause: if the generic fibre is proper then V is anisotropic, the product datum has no cusp label, its PEL moduli is proper by ShimuraCompactifications §C5.5, the model is proper as it is finite over that moduli (Stacks Tag 01WN), and a proper quasi-projective morphism is projective (Stacks Tag 0BCL); the converse is base change to the generic fibre.

**Checks.**

- For N=2 the tangent dimension is one.
- The CM tangent contribution is zero because T_p is étale over the coefficient ring.
- For F⁺=ℚ and N=2, V has signature (1,1) and is isotropic exactly when −det V is a norm from F; then the product datum has a cusp label, the generic fibre is a non-proper Shimura curve and the model is not projective, while for anisotropic V the model is projective.

*Needs:* §8.1; §7.2; AbelianSchemesAndArithmeticModuli §A4.7; AbelianSchemesAndArithmeticModuli §A4.3; ShimuraVarieties §§2.5–2.7; SchemeAndStackFoundations Layer 4; ShimuraCompactifications §§C5.5, C5.18.

### Examples

- The period line for N=3. At τ∞ the Hodge subspace of H₁^dR(A₀) is zero, so asking a map to send it into the Hodge subspace of A imposes nothing and leaves the 3-dimensional Hom space; the period line `Hom_ℂ(H₁^dR(A₀)_{τ∞},ω_{A∨,τ∞})` has dimension 1.
- Almost self-dual rank two. For N=2 the crossing ring is W(k)[[x₁,x₂]]/(x₁x₂−p), of Krull dimension 2 and relative dimension 1, regular because x₁x₂−p is not in the square of the maximal ideal.
- Tangent space for N=2. The tangent space of §8.7 is Hom from a line to a line, of dimension N−1=1; the CM factor T_p contributes nothing because it is étale.

### Dependencies

Within this roadmap: Layer 2 (§2.1, §2.4); Layer 6 (§6.3, §6.6); Layer 7 (§7.2, §7.3, §7.6).

Suppliers: PELModuli §M0.10, §M0.18, §M1.6, §M2.8, §M1.1, §M3.8, §§M3.1–M3.2, §M1.13, §M2.14; AbelianSchemesAndArithmeticModuli §A4.7, §A6.13, §A4.3; SchemeAndStackFoundations Layer 4; ShimuraCompactifications §C5.5, §§C5.5, C5.18; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; ShimuraVarieties §6.7, §1.7, §§2.5–2.7; IgusaVarietiesAndTorsionConcentration §IG.0.31.

Supplier contracts: gap:bad-prime-projectivity, gap:hermitian-local-global (see Exact supplier contracts).

## Layer 9: Basic-locus formal uniformization

Prove the Tate–Dieudonné comparison for basic CM pairs and construct quotients of formal schemes by discrete groups. Construct the nearby Hermitian framing datum, all CM/banal local factors and the arithmetic quotient morphism Θ to the selected basic completion. Prove the inert principal/ASD, mixed-isogeny and exotic comparisons; compare Krämer completions in the rank range of Layer 7. Prove the framing-class partition and Hasse condition needed for the full basic locus; compare the auxiliary CM product and its level changes without deleting discrete factors.

### 9.1 Tate–Dieudonné comparison for basic CM pairs

Let A and A′ be polarized abelian varieties over F̄_p and K a commutative semisimple ℚ-algebra acting on both through embeddings into the rational endomorphism algebras that are stable under the Rosati involutions, such that for every place 𝔭 of K above p the 𝔭-parts N_𝔭 and N′_𝔭 of the two rational Dieudonné modules are isoclinic of the same slope; equivalently, A×A′ with the diagonal K-action and the product polarization has isoclinic 𝔭-part at every 𝔭. Then Hom_K(A,A′)⊗ℚ_ℓ→Hom_K(V_ℓA,V_ℓA′) is an isomorphism for every prime ℓ≠p, and Hom_K(A,A′)⊗ℚ_p is isomorphic to the K-linear maps of rational Dieudonné modules commuting with Frobenius. A unitary CM pair (A₀,A) of this roadmap (K=F) is basic when A₀×A satisfies this hypothesis: at a place w of F above p other than the distinguished one, A[w^∞] is isogenous to the n-th power of a rank-one `O_{F_w}-module` and both A₀[w^∞] and A[w^∞] have slope |Φ_w|/[F_w:ℚ_p], where Φ_w is the set of embeddings in Φ inducing w; at the distinguished place, inert or ramified over F⁺ in the uniformizations of this layer, basicness means that A[w^∞] is isoclinic, hence of slope 1/2 like A₀[w^∞]. For a basic pair this identifies `Hom_{O_F}(A₀,A)⊗ℚ_v` with the local Hom spaces at every finite place v of F⁺, compatibly with the hermitian forms, and the group of polarized self-quasi-isogenies of the pair with an inner form of the RSZ group. (RZ96, Lemma 6.28, applied to A×A′, and Corollary 6.29 in the corrected form given under References, RZ96, pp. 292–293; proof of Theorem 6.30, pp. 293–294.)

Hypotheses for this target: K, A, A′ as stated; at every place 𝔭 of K above p, N_𝔭 and N′_𝔭 are isoclinic of the same slope (each factor being isoclinic separately does not suffice).

*Route.* Apply RZ96 Lemma 6.28 to A×A′ with the diagonal K-action and the product polarization, whose hypothesis is the common-slope condition: over a large enough finite field, over which A, A′ and all K-linear homomorphisms are defined, a power of the Frobenius of A×A′ is the image of one element u∈K acting diagonally. Away from p apply Tate’s theorem over finite fields (EndoscopicTransferAndUnitaryTraceComparison §8.3) to A×A′ and take the K-linear corner Hom_K(A,A′); since the same u gives the Frobenius power of both factors, every K-linear map V_ℓA→V_ℓA′ intertwines the two Frobenius powers. At p use the Dieudonné-module form of Tate’s theorem over the finite field for A×A′, proved by the same commutant and dimension count and restricted to the same corner, with the isogeny classification of FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.17 and the B-linear classification of EndoscopicTransferAndUnitaryTraceComparison §8.10.

**Checks.**

- For a supersingular elliptic curve A=A′ and K=ℚ both sides at ℓ≠p have dimension 4 (End⁰A⊗ℚ_ℓ=M₂(ℚ_ℓ)), and at p both are the quaternion division algebra over ℚ_p of invariant 1/2, the endomorphisms of the isoclinic slope-1/2 isocrystal of height 2.
- The isoclinic hypothesis is necessary: for an ordinary elliptic curve over F̄_p and K=ℚ, End⁰ is an imaginary quadratic field of dimension 2 while End(V_ℓ) has dimension 4.
- Each factor being isoclinic at every place does not suffice: for K imaginary quadratic with p split, A an ordinary elliptic curve over F̄_p with CM by O_K and A′=A with the K-action precomposed by conjugation, every 𝔭-part is one-dimensional, hence isoclinic, but at 𝔭 the slopes are 0 and 1. Hom_K(A,A′)=0, since End⁰A=K is commutative and fι(a)=ι(ā)f forces (a−ā)f=0, while the conjugate-semilinear maps of the free rank-one K⊗ℚ_ℓ-module V_ℓA form a ℚ_ℓ-space of dimension 2; at p both sides vanish.
- For a basic pair with V_ℓA₀ free of rank one and V_ℓA free of rank n over F⊗ℚ_ℓ, Hom_F has rank n over F⊗ℚ_ℓ, matching dim_F `Hom_{O_F}(A₀,A)⊗ℚ=n`.

*Needs:* EndoscopicTransferAndUnitaryTraceComparison §§8.3, 8.10; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.17; AbelianSchemesAndArithmeticModuli §§A4.1, A6.10–A6.11.

### 9.2 Quotients of formal schemes by discrete groups

Let 𝔐 be a formal scheme locally formally of finite type over Spf O_Ĕ and Γ a group acting on 𝔐 over Spf O_Ĕ such that (i) every quasi-compact open subset of 𝔐_red meets only finitely many of its Γ-translates and (ii) every point of 𝔐 has an open neighbourhood U with γU∩U=∅ for every γ≠1 in Γ; in particular Γ acts freely on all points of 𝔐_red, generic points of components included. Construct the quotient Γ\𝔐: the fpqc quotient sheaf is represented by a formal scheme locally formally of finite type over Spf O_Ĕ and 𝔐→Γ\𝔐 is a Γ-torsor and a local isomorphism. Hypothesis (ii) is what makes the quotient a formal scheme rather than the formal algebraic space of RZ96 Proposition 2.37: Γ\𝔐 is then locally isomorphic to 𝔐. For the unitary uniformization data of Layer 9 — the group I(ℚ) of polarized self-quasi-isogenies of a basic pair, acting on 𝔐×G(𝔸_f^p)/K^p — conditions (i) and (ii) hold when K^p is small enough that every intersection of I(ℚ) with a conjugate of J(ℚ_p)×K^p is torsion free, as in RZ96 Theorem 6.30; for general K^p the quotient is a formal Deligne–Mumford stack with finite stabilizers. The quotient is used as a sheaf on `Nilp_{O_Ĕ}`, not only through its geometric points. (RZ96, Propositions 2.34–2.37, pp. 64–67; Theorem 6.23 and its proof, p. 289; Theorem 6.30, p. 293.)

Hypotheses for this target: 𝔐, Γ as stated; for the unitary application K^p sufficiently small as stated.

*Route.* Choose a covering of 𝔐 by opens U with U∩γU=∅ for γ≠1, as (ii) allows. Glue the images of these opens along the Γ-action to obtain Γ\𝔐, and check that it represents the quotient sheaf. For the unitary application, use that I(ℚ) is discrete in J(ℚ_p)×G(𝔸_f^p) (proof of RZ96 Theorem 6.23) and that the stabilizers in J(ℚ_p) of points and of irreducible components of 𝔐_red are compact, so stabilizers in I(ℚ) are finite and trivial when the stated intersections are torsion free; local finiteness follows from discreteness in the same way (RZ96 Proposition 2.34).

**API.**

- For a free, locally finite action the quotient Γ\𝔐 is a formal scheme locally formally of finite type.
- 𝔐→Γ\𝔐 is a Γ-torsor and a local isomorphism.
- A Γ-invariant morphism from 𝔐 to a formal scheme factors uniquely through Γ\𝔐.
- For K′^p⊂K^p the level-forgetful map of quotients is finite étale.

**Checks.**

- For Γ trivial the quotient is 𝔐.
- For Γ=ℤ acting on `𝔐=⊔_{h∈ℤ}𝔑` by translating the index, the action is free and locally finite and Γ\𝔐≅𝔑.
- The scalar −1∈U(V)(K) fixes every point of N_n, since −1 is an automorphism of every (X,ι,λ) carrying ρ to −ρ; the quotient sheaf by {±1} is N_n itself and N_n→N_n is not a {±1}-torsor, so freeness must be checked for the group modulo the elements acting trivially.

*Needs:* §0.2; AdicSpacesPartIII Layer F0; SchemeAndStackFoundations Layer 1.

### 9.3 Nearby unitary framing datum

For the global unitary V and distinguished nonsplit finite place v₀, use the hermitian local–global existence of gap:hermitian-local-global to choose V′, definite at all real places, with the invariant at v₀ switched and all other finite local spaces unchanged. Fix the away-v₀ isometry and a basic CM pair realizing these local data. Identify its exact-polarization quasi-isogeny group with U(V′) and the rational-similitude pair group with `G̃′=Z^ℚ×_{𝔾_m}G′^ℚ`. A framing choice selects an isogeny component; the full basic locus requires the Hasse/principal-homogeneous-space partition, rather than assuming every basic point is in that component. (Zhang21, §7.3, equations (7.3)–(7.4) and footnote 3, pp. 908–909; RZ96 Theorems 6.27 and 6.30, pp. 292–293.)

*Route.* Obtain V′ from gap:hermitian-local-global with the invariants at v₀ and at the distinguished real place switched, not merely from the classification of a generic PEL datum. Use §9.1 to identify the self-quasi-isogenies with the Hermitian isometry group. Check the signatures, all finite signs and the CM component; retain the partition if the group Hasse kernel is nontrivial.

**API.**

- V′ and its global group are determined by a chosen basic pair and the two-place change of invariants.
- The v₀ realization is the Hermitian special-Hom space of the selected local framing.
- The chosen away-v₀ identification matches the original adelic group and compact-open levels.
- A polarized quasi-isogeny between framing pairs conjugates the group identification and induced quotient presentation.

**Checks.**

- Flipping only the finite v₀ invariant violates the product formula; the distinguished real signature must change as well.
- At an inert principal place V′_v₀ is nonsplit; at an inert almost self-dual place it is split.
- Choosing a different admissible global framing class must retain its component label until the Hasse comparison is proved.

*Needs:* GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; PELModuli §M3.8; §6.1; §6.8; §1.5; §2.3; §3.6; §5.9; §9.1; PELModuli §§M3.1–M3.2; gap:hermitian-local-global.

### 9.4 Banal and CM local factors

In the RSZ uniformization hypotheses, the full absolute p-local framed space N′ is the product `(Z^ℚ(ℚ_p)/K_{Z,p})×N_{O_{Ĕ_ν}}×∏_{v|p,v≠v₀}U(V_v)/K_v`, where the other p-factors are banal and satisfy sign and Eisenstein and N is the matching principal or almost self-dual relative framed space. The two coset factors are formal discrete étale spaces. For an exotic model replace N by its absolute exotic factor and then use Layer 4. This decomposition is equivariant for the identified local framing group; none of the discrete factors is discarded before quotienting. (LZ22, §13.1, pp. 80–81; RSZ20 Lemma 8.16 and Remark 8.18, p. 53, Appendix B, pp. 59–60.)

*Route.* Split the absolute p-divisible group by the p-adic places and the CM torus component. Use the strict Eisenstein condition and banal deformation rigidity to identify each nondistinguished factor with its discrete lattice-coset functor. Apply the relative comparison only to the distinguished factor and verify the actions on every factor.

**API.**

- The full local framed functor is the product of the distinguished factor and the discrete factors displayed.
- After the chosen absolute-to-relative framing identification the distinguished factor is N.
- The product decomposition intertwines the framing-group actions on all factors.
- Changing a compact-open level in a discrete factor gives its coset-forgetful map.

**Checks.**

- A nontrivial `Z^ℚ(ℚ_p)/K_{Z,p}` factor is retained even when N is connected.
- If v₀ is the only place above p, the other-unitary-place product is a one-point factor.
- A nonbanal de Rham deformation cannot be identified with a discrete coset merely because its generic signature matches.

*Needs:* §9.3; §6.5; §6.8; §0.5; §4.6; §0.2; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.10.

### 9.5 Unitary uniformization morphism

For a chosen basic global CM pair and sufficiently small integral level, construct Θ from the arithmetic quotient G̃′(ℚ)∖(N′×G̃(𝔸_f^p)/K^p) to the completion of the integral model along the basic isogeny component. Starting from the framed p-divisible deformation and the away-p lattice/level data, use Serre–Tate effectivity and the quasi-isogeny pushout construction to recover the polarized abelian pair. Descent through quasi-isogenies makes the map independent of representatives. RZ96 Theorem 6.30 identifies the image with an open-and-closed basic sublocus Z′; equality with the full basic locus Z requires its Hasse hypothesis or a disjoint union over framing classes. (RZ96, §§6.13–6.16, pp. 282–284; Theorems 6.24, 6.27 and 6.30, pp. 291–295.)

*Route.* Construct the polarized abelian quasi-isogeny pushout for every finite locally closed framed chart; retain the exact CM factor. Use Serre–Tate (AbelianSchemesAndArithmeticModuli §A4.9) and effectivity of polarized formal lifts (§A4.8) to identify its infinitesimal functor with the local p-divisible deformation functor. Show fully faithful descent modulo the global quasi-isogeny group and compatibility with the tame level torsor. Use the basic rational comparison and Hasse partition for essential surjectivity; apply §9.2 to obtain an isomorphism onto the indicated completion.

**API.**

- Θ is defined on a framed deformation together with its discrete and tame level data.
- Changing by G̃′(ℚ) yields canonically isomorphic polarized abelian data.
- On formal deformation rings Θ is the Serre–Tate/local-model comparison.
- Θ commutes with permitted tame Hecke maps and the associated changes of level.

**Checks.**

- The RZ96 framing convention points from the fixed object to the deformation; use inversion to compare with the local ρ:X→𝕏 convention.
- Without the Hasse hypothesis the theorem concludes Z′⊂Z open and closed, rather than equality with all Z.
- Forgetting the CM torus coset before descent changes the source of Θ.

*Needs:* §9.3; §9.4; AbelianSchemesAndArithmeticModuli §A4.9; AbelianSchemesAndArithmeticModuli §A4.8; §0.2; §9.2; §9.1.

### 9.6 Exotic basic-locus uniformization

In the compact even-rank LL22 setting and at a ramified distinguished u with F⁺_u/ℚ_p unramified, fix P₀∈Y(O_K̆), a basic point P in the P₀ fibre and the induced totally definite Hermitian `V′=Hom_{O_F}(A₀,A)⊗ℚ` with h′(x,y)=ϖ^−1 λ₀^−1 y^∨λ_A x, where `ϖ∈O_{F⁺}` is totally positive, has the LL22 valuations at the places of U and in addition val_u(ϖ)=1. The completion of that fibre is `U(V′)(F⁺)∖(N^exo×U(V)(𝔸_f^{u})/∏_{v∈U}L_v)` over O_K̆, with the precise other-local/tame cosets of LL22 (4.8). The quotient is initially built with N_Φ and identified with N^exo by Layer 4. Under the framing identification of `V′⊗_{F⁺}F⁺_u` with V^exo of Layer 3, h′=(u²/ϖ)·h^exo; the factor u²/ϖ is a unit of F⁺_u, so the identification preserves the unitary group, duals of lattices and the integrality of norms, and it is an isometry exactly when ϖ=u² in F⁺_u. This is the first assertion of Proposition 4.30; its special-divisor identity belongs to the cycle consumers. (LL22, §4.5, the pairing on V and the morphism (4.8), Remark 4.29 and Proposition 4.30, pp. 67–68.)

*Route.* Fix the CM point and basic pair before defining the global Hom space, its normalization and the framing. Choose a polarized height-zero quasi-isogeny by the basic rational comparison; use it to construct the absolute framed point and every away-u coset. Show independence under the global unitary group and apply the RZ96 basic uniformization argument. Compose with the full absolute/relative exotic equivalence and check level equivariance.

**Checks.**

- The source’s base-point dependence is retained, as in Remark 4.29.
- A proof of the divisor formula is not used to establish this moduli isomorphism.
- The CM fibre is fixed before writing the unitary quotient.
- At n=2 the two forms on the same Hom space differ by u²/ϖ, which has valuation 1−val_u(ϖ) in F⁺_u: with val_u(ϖ)=1 it is a unit and a lattice self-dual for h^exo is self-dual for h′; with val_u(ϖ)=0 the h′-dual of a self-dual Λ is (u²/ϖ)^−1Λ≠Λ, and the integrality test `(x,x)∈O_{F⁺_u}` shifts by one valuation.

*Needs:* §7.4; §9.5; §4.6; §3.6; §6.4; §6.3.

### 9.7 Inert basic-locus uniformization

For the localized or semi-global RSZ model with p>2 at the distinguished inert place and the other p-types as in Layer 7, after base change to `O_{Ĕ_ν}` the basic completion is `G̃′(ℚ)∖(N_{O_{Ĕ_ν}}×G̃(𝔸_f^{v₀})/K^{v₀})`, with the notation `G̃(𝔸_f^{v₀})/K^{v₀}` including the CM p-coset and all other p-local cosets from §9.4. N is Layer 1 in the principal self-dual case and Layer 2 in the almost self-dual case. In the principal case ramified `F⁺_{v₀}/ℚ_p` is allowed by the actual Eisenstein/Mihatsch comparison. In the almost self-dual case keep the source’s unramified `F⁺_{v₀}/ℚ_p` hypotheses. Include the framing-class partition from Θ until the stated unitary Hasse argument identifies the full basic locus. (LZ22, §13.1, equation (13.1.0.1) and footnote 5, pp. 80–81; Zhang21 equations (7.3)–(7.6), pp. 908–909; Cho18 Theorem 4.3, pp. 42–43.)

*Route.* Apply Θ with the exact good/almost self-dual integral conditions. Identify the principal absolute factor by Mihatsch and the almost self-dual factor by Cho’s specified comparison. Absorb the discrete product factors in the away-v₀ notation and prove its equivariance. Use the imported Hermitian Hasse theorem and the selected CM/sign components to account for all framing classes.

**Checks.**

- For n=1 the principal distinguished factor has no relative formal parameter.
- A ramified principal base-field comparison does not imply the same extension of the almost self-dual theorem.
- The displayed quotient and level maps agree on formal functors, not only geometric points.

*Needs:* §9.5; §7.9; §7.1; §1.1; §2.1; §0.5; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; PELModuli §M3.2.

### 9.8 CM partition and Li–Liu product

For the RSZ completion the CM projection is the discrete quotient Z^ℚ(ℚ)∖Z^ℚ(𝔸_f)/K_Z; each fibre has the corresponding nearby-unitary quotient presentation with chosen transported level. For the unramified compact Li–Liu auxiliary model, the comparison of Layer 6 gives a level-compatible isomorphism `X̂_L≅(U(V′)(F⁺)∖(N×U(V)(𝔸_f^u)/L^u))×_{Spf O_K}Ŷ` after base change to O_K̆, as in LL21 (8.2). For the exotic case use the fibrewise §9.6 and the CM tower descent to reassemble the auxiliary CM factor. This states the product only in the specified auxiliary-model conventions; a single chosen fibre does not by itself identify the entire RSZ completion. (Zhang21, Equations (7.5)–(7.6), p. 909; LL21 equation (8.2), p. 37; LL22 equation (4.8), pp. 67–68.)

*Route.* Project the full quotient to its CM torus factor and compute the stabilizer of each chosen component. Use the auxiliary CM product comparison to identify the corresponding fibre family. Prove naturality over the CM tower and tame level changes, then descend the fibrewise identifications.

**Checks.**

- When the CM class set has two elements the RSZ completion retains two labelled fibres.
- The Ŷ factor in the Li–Liu formula is preserved by all level-forgetful maps.

*Needs:* §9.7; §9.6; §6.3; §8.5; §6.6; §9.2.

### 9.9 Krämer completion compatibility

For every n≥2, in the ramified setting of §7.5 with `E_ν/F_{v₀}` unramified, the global Krämer enhancement completed along a selected basic component is the corresponding principal ramified framed completion with the Layer 5 Krämer filtration, times its CM and other discrete local factors and modulo the global framing group. The comparison conjugates the local Lie labels as specified in Layer 7 and preserves the forgetful map to the wedge model. It uses the moduli functor and Θ, not the regularity of either side. (HLSY23, §10.2, pp. 77–79 (the global Krämer model and its condition (H4)); RSZ21 Definition 6.10 and Lemma 6.11, pp. 33–34 (the Krämer–Eisenstein condition); RZ96, Theorem 6.30, p. 293, through §9.5 (the completion of the underlying model). No cited text states the comparison with the Krämer filtration; the transport of the filtration to the completion is new here.)

*Route.* Apply the formal deformation comparison to the underlying polarized ramified pair. Transport the Hodge filtration to the precisely labeled Krämer subbundle through the local-model diagram. Check descent of the enhancement and compatibility with the wedge forgetful maps.

**Checks.**

- The completed subbundle has rank n−1 with the declared local conjugate action.
- At n=2 the comparison is asserted as for n≥3: both sides are étale locally yz=u over `O_{Ĕ_ν}` (§5.6), and nothing in the comparison uses the blowup description of RSZ21 Theorem 6.7(ii), which needs n≥3.

*Needs:* §7.5; §5.3; §9.5; §0.7.

### 9.10 Mixed basic-locus comparison

The completion of the corrected mixed integral isogeny model at its chosen basic framing component is the arithmetic quotient of the mixed local framed space Ñ¹_n with the same CM, other-p and tame factors as in Layer 9. The two forgetful maps to the almost self-dual and principal rank-(n+1) completions correspond to π₁ and π₂ of Layer 2, equivariantly for the embedded nearby group. On generic fibres they recover the stated isogeny correspondence. Its proof uses the moduli functor and generic projections. For context, LRZ26 Theorem 14.6.2 proves that π₁ is integrally finite flat of degree q+1 and π₂ is proper and an isomorphism away from a zero-dimensional center, with exceptional projective spaces. There is no integral identification Ñ¹_n≅Z(x₀). That divisor-resolution and its intersection consequences belong to the cycle consumer, rather than being a hypothesis of this moduli uniformization. (LZ22, §13.4, pp. 82–83; §10.2 and Remark 10.2.1, pp. 64–65; distinguish Conjecture 10.4.1, p. 67.)

*Route.* Use Serre–Tate full faithfulness for the finite-kernel isogeny α as well as its source and target. Identify the local framing isogeny and the two transported level structures. Apply Θ to the enhanced functor and verify that forgetting α commutes with both quotient maps.

**Checks.**

- The local isogeny has degree q² consistent with the polarization identity.
- The first generic projection has degree q+1; this is not the degree of α.

*Needs:* §8.6; §9.5; §2.4; §2.5; §9.7.

### Examples

- Discrete quotients. For Γ=ℤ acting on `𝔐=⊔_{h∈ℤ}𝔑` by shifting the index, the action is free and locally finite and Γ\𝔐≅𝔑; for Γ={±1} acting on N_n through U(V)(K), the element −1 fixes every point, so the quotient must be taken by the image of Γ in the automorphisms of N_n.
- Tate–Dieudonné for a supersingular curve. For A=A′ a supersingular elliptic curve over F̄_p and K=ℚ, End⁰A⊗ℚ_ℓ=M₂(ℚ_ℓ) has dimension 4 for ℓ≠p, and at p both sides are the quaternion division algebra over ℚ_p of invariant 1/2.
- Exotic normalization at n=2. On the same Hom space h′=(u²/ϖ)·h^exo; with val_u(ϖ)=1 the factor is a unit and a lattice self-dual for h^exo is self-dual for h′, while with val_u(ϖ)=0 the h′-dual of a self-dual lattice Λ is (u²/ϖ)⁻¹Λ≠Λ.

### Dependencies

Within this roadmap: Layer 0 (§0.1, §0.2, §0.5, §0.7); Layer 1 (§1.1, §1.5); Layer 2 (§2.1, §2.3, §2.4, §2.5); Layer 3 (§3.6); Layer 4 (§4.6); Layer 5 (§5.3, §5.9); Layer 6 (§6.1, §6.3, §6.4, §6.5, §6.6, §6.8); Layer 7 (§7.1, §7.4, §7.5, §7.9); Layer 8 (§8.5, §8.6).

Suppliers: EndoscopicTransferAndUnitaryTraceComparison §§8.3, 8.10; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.17, §R07.2.10; AbelianSchemesAndArithmeticModuli §§A4.1, A6.10–A6.11, §A4.9, §A4.8; AdicSpacesPartIII Layer F0; SchemeAndStackFoundations Layer 1; GeometryOfNumbersAndQuadraticArithmetic §§2.7, 2.9; PELModuli §M3.8, §§M3.1–M3.2, §M3.2.

Supplier contracts: gap:hermitian-local-global (see Exact supplier contracts).


## Downstream consumers

SelmerIwasawaCohomologyPartII uses the models of Layers 7 and 8 in its Layers 2 and 5. The native
strictly semistable models of LTXZZ22 §5.2, their local equations and generic-fibre comparison, and
the smooth models of LTXZZ22 §4.2, which that roadmap requests in its supplier contracts as native Shimura models, are
§§8.1–8.4 and 8.7 here. The special-fibre items of the source papers belong to that roadmap:

| Source items | Owner |
| --- | --- |
| LTXZZ22 Theorem 4.3.5 and the basic correspondence (Definitions 4.3.1–4.3.4) | SelmerIwasawaCohomologyPartII §2.2 |
| LTXZZ22 Propositions 4.4.4, 4.4.6 and Constructions 5.3.6, 5.4.6, 5.5.5, 5.6.1 (definite uniformization of sources) | SelmerIwasawaCohomologyPartII §§2.2–2.3 |
| LTXZZ22 Theorems 5.2.5(2)–(5), 5.3.4, 5.4.4, 5.5.3 (balloon, ground and link strata) | SelmerIwasawaCohomologyPartII §2.3 |
| LTXZZ22 Lemma 5.6.2 and Theorems 5.7.7–5.7.8 (link cohomology, excess intersections) | SelmerIwasawaCohomologyPartII §2.4 |
| LTXZZ22 §5.11 (product resolution, Theorem 5.11.5, the potential map) | SelmerIwasawaCohomologyPartII §§2.6, 5.2, 5.4 |
| LTXZZ22 Propositions 4.5.5–4.5.9 and 5.10.6–5.10.14 (rank-increase Cartesian diagrams) | SelmerIwasawaCohomologyPartII §§2.6, 5.2 |
| LTXZZ22 Appendix A (hermitian Frobenius incidence varieties) | SelmerIwasawaCohomologyPartII §§2.2–2.4 |

The local spaces of Layers 1–5, their special homomorphism spaces and the uniformizations of Layer 9
are the inputs of arithmetic intersection problems on unitary Shimura varieties (the Kudla–Rapoport
conjecture in the principal, almost self-dual and Krämer cases, and the arithmetic fundamental lemma);
the special cycles and intersection numbers themselves are not constructed here.

## References

Locators throughout refer to the editions below. Where a source states something that is false or
unsupported as printed, the note says what is used instead; the targets use the corrected form.

- **Zhang21.** Wei Zhang, *Weil representation and Arithmetic Fundamental Lemma*, Annals of
  Mathematics 193 (2021), 863–978; read as [arXiv:1909.02697v3](https://arxiv.org/abs/1909.02697v3),
  whose section, equation, footnote and lemma numbers are cited, with the page numbers of the
  published version.
- **LZ22.** Chao Li and Wei Zhang, *Kudla–Rapoport cycles and derivatives of local densities*,
  [arXiv:1908.01701v3](https://arxiv.org/pdf/1908.01701v3), with its printed pagination. Note: §13.4,
  p. 82, assigns the auxiliary global isogeny degree q; the polarization identity of the same
  paragraph forces v₀-primary degree q² (both source factors have degree q² at v₀ and the target is
  principal there), which §8.6 uses.
- **LL21.** Chao Li and Yifeng Liu, *Chow groups and L-derivatives of automorphic motives for unitary
  groups*, Annals of Mathematics 194 (2021); author final copy of 20 October 2021
  ([author page](https://www.math.columbia.edu/~chaoli/AIPF.pdf)), with its pagination.
- **LL22.** Chao Li and Yifeng Liu, *Chow groups and L-derivatives of automorphic motives for unitary
  groups, II*, Forum of Mathematics, Pi 10 (2022), e5; author copy of 16 January 2022
  ([author page](https://www.math.columbia.edu/~chaoli/AIPF2.pdf)), with its pagination and equation
  numbering. Notes: in §4.3, p. 58, and §4.5, p. 66, the exotic conditions at the ramified places
  above p are printed for the CM source A₀[v^∞]; only A[v^∞], of height 2nf, can satisfy them, and
  §7.4 imposes them on A. In §4.5, p. 66, the integral models are called smooth projective with a
  reference to RSZ20 Theorem 4.7, which proves flatness, the generic fibre and smoothness but no
  projectivity; §7.7 proves projectivity by gap:bad-prime-projectivity and ShimuraCompactifications
  §C5.5.
- **HLSY23.** Qiao He, Chao Li, Yousheng Shi and Tonghai Yang, *A proof of the Kudla–Rapoport
  conjecture for Krämer models*, [arXiv:2208.07988v2](https://arxiv.org/pdf/2208.07988v2); locators
  are for this version. Notes: Definition 2.2(2), p. 10, gives the framing as a height-zero O_L-linear
  quasi-isogeny without relating the polarizations; §5.3 requires the framing polarization to pull
  back to an O_K-unit multiple of the object polarization, as Howard19 §2 does. The introduction, §1.2,
  p. 2, gives the Krämer filtration rank one; Definition 2.2(3) has rank n−1, which §5.1 uses. In
  §10.2, p. 78, the Krämer model is called regular and semistable at every place above the ramified
  and almost self-dual places; the cited RSZ21 Theorem 6.7(ii) and RSZ20 Theorem 4.7(ii) need ν
  unramified over `F_{v₀}` at ramified places and E_ν unramified over ℚ_p at almost self-dual places, and
  §§7.8–7.10 keep both hypotheses.
- **LTXZZ22.** Yifeng Liu, Yichao Tian, Liang Xiao, Wei Zhang and Xinwen Zhu, *On the
  Beilinson–Bloch–Kato conjecture for Rankin–Selberg motives*, Inventiones Mathematicae 228 (2022),
  107–375; read as [arXiv:1912.11942v3](https://arxiv.org/abs/1912.11942v3), whose numbering agrees
  with the published version for the items cited, with published page numbers. Notes: Definition
  4.2.2, p. 160, writes the unitary Hecke parameter with adeles of F; U(V) is a group over F⁺ and §8.5
  uses `U(V)(𝔸_{F⁺,f}^p)`. The last assertion of Theorem 4.2.3, p. 161, equates projectivity of the
  integral model with properness of its generic fibre without an integral properness argument; §8.7
  supplies one through ShimuraCompactifications §§C5.5 and C5.18. Remark 4.2.5, p. 163, defines the
  negative period line by a condition on the source Hodge subspace, which is zero at τ∞; §8.1 uses
  `Hom_ℂ(H₁^dR(A₀)_{τ∞},ω_{A∨,τ∞})`. §5.2, p. 188, states the definite space V° in rank N>1 while
  Remark 5.2.4 and Theorem 5.2.5 treat N=1; §8.2 takes N≥1.
- **RSZ20.** Michael Rapoport, Brian Smithling and Wei Zhang, *Arithmetic diagonal cycles on unitary
  Shimura varieties*, [arXiv:1710.06962](https://arxiv.org/pdf/1710.06962), with its printed pages.
- **RSZ21.** Michael Rapoport, Brian Smithling and Wei Zhang, *On Shimura varieties for unitary
  groups*, Pure and Applied Mathematics Quarterly 17 (2021); author copy of 16 April 2020
  ([author page](https://www.math.uni-bonn.de/people/rapoport/myalggeom/preprints/unitshim.pdf)).
- **Mih19.** Andreas Mihatsch, *Relative unitary RZ-spaces and the Arithmetic Fundamental Lemma*,
  [arXiv:1611.06520v2](https://arxiv.org/pdf/1611.06520v2); Theorems 3.1 and 3.3 are numbered as in
  this version.
- **Cho18.** Sungyoon Cho, *The basic locus of the unitary Shimura variety with parahoric level
  structure, and special cycles*, [arXiv:1807.09997](https://arxiv.org/pdf/1807.09997).
- **Howard19.** Benjamin Howard, *Linear invariance of intersections on unitary Rapoport–Zink spaces*,
  Forum Mathematicum 31 (2019), 1265–1281; [arXiv:1811.01482](https://arxiv.org/pdf/1811.01482).
- **RZ96.** Michael Rapoport and Thomas Zink, *Period Spaces for p-divisible Groups*, Annals of
  Mathematics Studies 141, Princeton University Press, 1996
  ([author-hosted scan](https://www.math.uni-bonn.de/people/rapoport/myalggeom/preprints/Rapoport_Period%20spaces.pdf)),
  with the printed page numbers. Note: Corollary 6.29, p. 293, asserts the ℓ-adic and p-adic K-linear
  Hom comparisons for two polarized K-objects each satisfying the isoclinic hypothesis of Lemma 6.28
  separately; for K imaginary quadratic with p split, an ordinary CM elliptic curve A and A′=A with
  conjugated K-action, Hom_K(A,A′)⊗ℚ_ℓ=0 while Hom_K(V_ℓA,V_ℓA′) has dimension 2. §9.1 requires the
  two 𝔭-parts to be isoclinic of the same slope at every 𝔭 above p.
- **Wu16.** Haifeng Wu, *The supersingular locus of unitary Shimura varieties with exotic good
  reduction*, [arXiv:1609.08775](https://arxiv.org/pdf/1609.08775); ground field ℚ_p.
- **Kraemer03.** Nicole Krämer, *Local models for ramified unitary groups*,
  [arXiv:math/0302025v1](https://arxiv.org/pdf/math/0302025v1), with its printed page numbers; its
  Theorem 4.5 assumes n≥3.
- **LRZ26.** Chao Li, Michael Rapoport and Wei Zhang, *Quasi-canonical AFL and Arithmetic Transfer
  conjectures at parahoric levels*, [arXiv:2404.02214v2](https://arxiv.org/pdf/2404.02214v2).
- **RZ17.** Michael Rapoport and Thomas Zink, *On the Drinfeld moduli problem of p-divisible groups*,
  Cambridge Journal of Mathematics 5 (2017); [arXiv:1408.4071v2](https://arxiv.org/pdf/1408.4071v2),
  with the arXiv pagination.
- **Stacks.** The Stacks project authors, *The Stacks project*, chapter Morphisms of Schemes,
  [Tags 0B3G, 0B3H, 0C4M, 0C4N, 01WN, 0BCL](https://stacks.math.columbia.edu/download/morphisms.pdf).
